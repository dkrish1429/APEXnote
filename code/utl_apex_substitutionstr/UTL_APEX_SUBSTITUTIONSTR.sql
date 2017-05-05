CREATE OR REPLACE package utl_apex_substitutionstr is

  -- Author  : TIM
  -- Created : 2017.4.9 21:47:14
  -- Purpose : create utility funtions for traversaling substituion string in APEX template clob column

  -- Public type declarations
  type t_locate_row is record(
    line_number          number,                  -- line number
    column_index         number,                  -- column number
    attribute_string     varchar2(32767));        -- HTML attribute and value

  type t_locate_tab is table of t_locate_row;

--------------------------------------------------------------------------------------
-- locate all substitution strings from template HTML source
--   input: p_clob, HTML source of template
--   output: return all substitution string in HTML source
  function locate_all_substitutionstr(p_clob in clob)
    return t_locate_tab
    pipelined;

--------------------------------------------------------------------------------------
-- locate specified substitution string or keywords in attribute peer from template HTML source
-- (e.g. id="#REGION_STATIC_ID#_heading", onclick="htmldb_ToggleWithImage(this,'#REGION_ID#Body')" class="t13RegionTitle")
--   input: p_keywords, partial or full specified string, e.g. '_ID#', '#REGION_STATIC_ID#' 't13RegionTitle'
--   input: p_clob, HTML source of template
--   output: return line index, column index and attribute peer (e.g. id="#REGION_STATIC_ID#_heading")
  function locate_string_in_attr(p_keywords in varchar2,
                                        p_clob in clob)
    return t_locate_tab
    pipelined;

--------------------------------------------------------------------------------------
-- locate specified substitution string not in any tag attribute-peer from template HTML source
-- that means substitution string is orphan.
--   input: p_keywords, specified substitution string, support full string only. e.g. '#REGION_ATTRIBUTES#', '#BODY#'
--   input: p_clob, HTML source of template
--   output: return the whole line containing p_keywords to attribute_string
  function locate_orphan_substitutionstr(p_keywords in varchar2,
                                         p_clob in clob)
    return t_locate_tab
    pipelined;

end utl_apex_substitutionstr;

/


CREATE OR REPLACE package body utl_apex_substitutionstr is

--------------------------------------------------------------------------------------
-- locate all substitution strings from template HTML source
--   input: p_clob, HTML source of template
--   output: return all substitution string in HTML source
  function locate_all_substitutionstr(p_clob in clob)
    return t_locate_tab
    pipelined as

    l_clob clob := replace((translate(p_clob, chr(13) || chr(10), '@$') ||
                           ' $//'),
                           '@$',
                           '$');        -- replace cr lf or crlf in template and set $ as end of line

    l_end  number;                      -- the end of clob
    l_line number := 1;                 -- current line number

    l_line_start number := 1;           -- identify the start of line
    l_line_end   number;                -- identify the end of line
    l_line_str   clob;                  -- string of current line

    type t_num_t is table of number;
    l_num_t                 t_num_t;
    t_locate_tab_out        t_locate_row;

    l_regexp_keywords varchar2(50) := '#[[:alnum:]|_]*+#';

  begin

    l_end := instr(l_clob, ' $//', 1);

    loop

      l_line_end := instr(l_clob, '$', 1, l_line);
      l_line_str := substr(l_clob,
                           l_line_start,
                           l_line_end - l_line_start + 1);

      select instr(l_line_str, l_regexp_keywords, 1, level)
        bulk collect
        into l_num_t
        from sys.dual
      connect by level <= regexp_count(l_line_str, l_regexp_keywords);

      for i in 1 .. l_num_t.count loop

        if l_num_t(i) > 0 then
          t_locate_tab_out.line_number      := l_line;
          t_locate_tab_out.column_index     := to_number(l_num_t(i));
          t_locate_tab_out.attribute_string := regexp_substr(l_line_str,
                                                             l_regexp_keywords,
                                                             1,
                                                             i,
                                                             'i');

          pipe row(t_locate_tab_out);
        end if;

      end loop;

      exit when l_line_end = l_end + 1;

      l_line_start := l_line_end + 1;
      l_line       := l_line + 1;

    end loop;

    return;

  end;

--------------------------------------------------------------------------------------
-- locate specified substitution string or keywords in attribute peer from template HTML source
-- (e.g. id="#REGION_STATIC_ID#_heading", onclick="htmldb_ToggleWithImage(this,'#REGION_ID#Body')" class="t13RegionTitle")
--   input: p_keywords, partial or full specified string, e.g. '_ID#', '#REGION_STATIC_ID#' 't13RegionTitle'
--   input: p_clob, HTML source of template
--   output: return line index, column index and attribute peer (e.g. id="#REGION_STATIC_ID#_heading")
  function locate_string_in_attr(p_keywords in varchar2,
                                        p_clob in clob)
    return t_locate_tab
    pipelined as

    l_clob clob := replace((translate(translate(p_clob,'$','*'), chr(13) || chr(10), '@$') ||
                           ' $//'),
                           '@$',
                           '$');        -- replace JS $ to * first and then
                                        -- replace cr lf or crlf in template and set $ as end of line

    l_end  number;                      -- the end of clob
    l_line number := 1;                 -- current line number

    l_line_start number := 1;           -- identify the start of line
    l_line_end   number;                -- identify the end of line
    l_line_str   clob;                  -- string of current line

    type t_num_t is table of number;
    l_num_t                 t_num_t;
    t_locate_tab_out        t_locate_row;

    l_regexp_keywords       varchar2(150);

  begin

    if p_keywords is null then
      raise_application_error(-20101,
                              'input parameter p_keywords is missing');
    end if;

    l_end := instr(l_clob, ' $//', 1);
    l_regexp_keywords := '([^[:blank:]]*?)="([^"]*?)' ||
                         p_keywords ||
                         '([^"]*?)"([[:blank:]]|>|/)';

    loop

      l_line_end := instr(l_clob, '$', 1, l_line);
      l_line_str := substr(l_clob,
                           l_line_start,
                           l_line_end - l_line_start + 1);

      select regexp_instr(l_line_str, l_regexp_keywords, 1, level)
        bulk collect
        into l_num_t
        from sys.dual
      connect by level <= regexp_count(l_line_str, l_regexp_keywords);

      /* -- debug code, for comparing search diferences between normal match and regexp match
      select instr(l_line_str, p_keywords, 1, level)
        bulk collect
        into l_num_t
        from sys.dual
      connect by level <= regexp_count(l_line_str, p_keywords); 
      */

      for i in 1 .. l_num_t.count loop

        if l_num_t(i) > 0 then
          t_locate_tab_out.line_number      := l_line;
          t_locate_tab_out.column_index     := to_number(l_num_t(i));
          t_locate_tab_out.attribute_string := rtrim(translate(rtrim(trim(both ' ' from
                                                                    regexp_substr(l_line_str,
                                                                                  l_regexp_keywords,
                                                                                  1,
                                                                                  i,
                                                                                  'i')),
                                                               '>'),'*','$'),'/');

          pipe row(t_locate_tab_out);
        end if;

      end loop;

      exit when l_line_end = l_end + 1;

      l_line_start := l_line_end + 1;
      l_line       := l_line + 1;

    end loop;

    return;

  end;

--------------------------------------------------------------------------------------
-- locate specified substitution string not in any tag attribute-peer from template HTML source
-- that means substitution string is orphan.
--   input: p_keywords, specified substitution string, support full string only. e.g. '#REGION_ATTRIBUTES#', '#BODY#'
--   input: p_clob, HTML source of template
--   output: return the whole line containing p_keywords to attribute_string
  function locate_orphan_substitutionstr(p_keywords in varchar2,
                                         p_clob in clob)
    return t_locate_tab
    pipelined as

    l_clob clob := replace((translate(translate(p_clob,'$','*'), chr(13) || chr(10), '@$') ||
                           ' $//'),
                           '@$',
                           '$');        -- replace JS $ to * first and then
                                        -- replace cr lf or crlf in template and set $ as end of line

    l_end  number;                      -- the end of clob
    l_line number := 1;                 -- current line number

    l_line_start number := 1;           -- identify the start of line
    l_line_end   number;                -- identify the end of line
    l_line_str   clob;                  -- string of current line

    type t_num_t is table of number;
    l_num_t                 t_num_t;
    t_locate_tab_out        t_locate_row;

    l_regexp_keywords       varchar2(100);

  begin

    if p_keywords is null then
      raise_application_error(-20101,
                              'input parameter p_keywords is missing');
    end if;

    l_end := instr(l_clob, ' $//', 1);
    l_regexp_keywords  := '[^"][[:blank:]|>]?'|| p_keywords || '[[:blank:]|<|>]?[^"|_]';

    loop

      l_line_end := instr(l_clob, '$', 1, l_line);
      l_line_str := substr(l_clob,
                           l_line_start,
                           l_line_end - l_line_start + 1);

      select regexp_instr(l_line_str, l_regexp_keywords, 1, level)
        bulk collect
        into l_num_t
        from sys.dual
      connect by level <= regexp_count(l_line_str, l_regexp_keywords);

      for i in 1 .. l_num_t.count loop

        if l_num_t(i) > 0 then
          t_locate_tab_out.line_number      := l_line;
          t_locate_tab_out.column_index     := to_number(l_num_t(i));
          t_locate_tab_out.attribute_string := translate(rtrim(substr(l_line_str,1,32767),'$'),
                                                         '*', '$'); -- return current line string

          pipe row(t_locate_tab_out);
        end if;

      end loop;

      exit when l_line_end = l_end + 1;

      l_line_start := l_line_end + 1;
      l_line       := l_line + 1;

    end loop;

    return;

  end;

end utl_apex_substitutionstr;

/
