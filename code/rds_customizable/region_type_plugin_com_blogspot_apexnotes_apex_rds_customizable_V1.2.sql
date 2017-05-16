set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2016.08.24'
,p_release=>'5.1.1.00.08'
,p_default_workspace_id=>11910739974752839674
,p_default_application_id=>20459
,p_default_owner=>'T4'
);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/shared_components/plugins/region_type/com_blogspot_apexnotes_apex_rds_customizable
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(11970926940241413112)
,p_plugin_type=>'REGION TYPE'
,p_name=>'COM.BLOGSPOT.APEXNOTES.APEX.RDS_CUSTOMIZABLE'
,p_display_name=>'RDS Customizable'
,p_supported_ui_types=>'DESKTOP'
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- ------------------------------------------------------------------------------------',
'-- Function       : render_RDS',
'-- Author         : Tereska Jagiello',
'-- Description    : render function for Region Display Selector plugin',
'-- ------------------------------------------------------------------------------------',
'-- Created On     : 2011.11.21',
'-- Curent version : 1.1',
'-- ------------------------------------------------------------------------------------',
'-- Credits        :',
'-- Martin Giffy D''Souza for help with the authorization function',
'-- Jose Murillo for thoroughly testing version 1.1 of the plugin',
'-- ------------------------------------------------------------------------------------',
'-- Changed On     : 2012.01.10',
'-- Version        : 1.1',
'--',
'-- exchanged "cursor for loop" (causing ORA-06502 in XE 10g edition) for "bulk collect"',
'-- rewritten query for better readability',
'-- ------------------------------------------------------------------------------------',
'-- Changed On     : 2017.04.21 by iminglei.blogspot.com',
'-- Version        : 1.2',
'--',
'-- 1. normalize RDS id to regionID || ''_RDS'' or staticID || ''_RDS''',
'-- 2. add order of "regions_and_label" in the main sql statement to fix display order bug',
'-- 3. set showing all tabs when ShowAll tab is displayed, otherwise show the first tab',
'-- 4. upgrade to use 5.1 released apex.widget.regionDisplaySelector',
'-- ------------------------------------------------------------------------------------',
'function render_RDS (',
'    p_region              in apex_plugin.t_region,',
'    p_plugin              in apex_plugin.t_plugin,',
'    p_is_printer_friendly in boolean )',
'  return apex_plugin.t_region_render_result',
'as',
'  /* plugin parameters */',
'  l_group_class     p_region.attribute_01%type;  ',
'  l_display_ALL     number(1);',
'  l_ALL_label       p_region.attribute_03%type;',
'  l_ALL_css         p_region.attribute_05%type;',
'  l_ALL_position    number(1);',
'  -- id of the plugin region',
'  l_id p_region.static_id%TYPE;',
'  ',
'  l_attr_list   sys.odcivarchar2list;',
'  l_name_list   sys.odcivarchar2list;',
'  l_id_list   sys.odcivarchar2list;',
'  l_seq_list   sys.odcinumberlist;',
'  ',
'begin',
'  -- ::debug: metadata',
'  if apex_application.g_debug',
'  then',
'    apex_plugin_util.debug_region(p_plugin               => p_plugin,',
'                                  p_region               => p_region,',
'                                  p_is_printer_friendly  => p_is_printer_friendly);',
'  end if;',
'',
'  l_group_class := case when p_region.attribute_01 is not null then '' ''||p_region.attribute_01||'' '' end;',
'  l_display_ALL := case p_region.attribute_02 when ''Y'' then 1 else 0 end;',
'  l_ALL_label := apex_plugin_util.escape(p_region.attribute_03, case p_region.attribute_04 when ''Y'' then true else false end);   ',
'  l_ALL_css   := p_region.attribute_05;',
'  l_ALL_position := case p_region.attribute_06 when ''f'' then 0 else null end;',
'    ',
'  -- get the id of the region into local variable',
'  l_id := case upper(apex_plugin_util.escape(p_region.static_id,true)) when ''R''||to_char(p_region.id) then to_char(p_region.id) else apex_plugin_util.escape(p_region.static_id,true) end;',
'  ',
'  -- ::debug: variables ',
'  if apex_application.g_debug then',
'     apex_application.debug(''RDS Variables: l_group_class: ''  || l_group_class ||',
'                                 '', l_display_ALL: ''  || l_display_ALL ||',
'                                 '', l_ALL_label: ''    || l_ALL_label ||',
'                                 '', l_ALL_css: ''      || l_ALL_css ||',
'                                 '', l_ALL_position: '' || l_ALL_position );',
'  end if;',
'  ',
'  -- get the values',
'  with regions as ( ',
'     select  aapr.REGION_NAME  reg_name',
'     -- if no id (STATIC_ID) is given, then the one from apex (REGION_ID)',
'            ,decode (aapr.STATIC_ID',
'                         ,null, ''#R'' || to_char(aapr.REGION_ID)',
'                              , ''#''  || aapr.STATIC_ID)                   reg_id                    ',
'       from  APEX_APPLICATION_PAGE_REGIONS aapr                       ',
'      where  aapr.APPLICATION_ID = wwv_flow.g_flow_id ',
'        and  aapr.PAGE_ID = wwv_flow.g_flow_step_id',
'        and  aapr.DISPLAY_REGION_SELECTOR = ''Yes''',
'        -- filter the region with the given class name if available',
'        and  decode(l_group_class, null, 1, instr(replace(aapr.REGION_ATTRIBUTES_SUBSTITUTION, ''"'', '' ''), l_group_class)) > 0 ',
'        -- check if the region is displayed e.g. through authorization, conditions...',
'        and  1 = apex_plugin_util.get_plsql_function_result(',
'                                     ''begin '' ||',
'                                        ''if ''||',
'                                           ''apex_plugin_util.is_component_used(''||',
'                                               ''p_build_option_id => '' || decode(aapr.BUILD_OPTION_ID, null,''null'',aapr.BUILD_OPTION_ID) ||',
'                                              '',p_authorization_scheme_id =>'''''' || aapr.AUTHORIZATION_SCHEME_ID ||',
'                                            '''''',p_condition_type          =>'''''' || (select d from apex_standard_conditions where r = aapr.CONDITION_TYPE) ||',
'                                            '''''',p_condition_expression1   =>'''''' || aapr.CONDITION_EXPRESSION1 ||',
'                                            '''''',p_condition_expression2   =>'''''' || aapr.CONDITION_EXPRESSION2 ||',
'                                            '''''',p_component => ''''region'''') '' ||',
'                                        ''then '' ||',
'                                            ''return 1;'' ||',
'                                        ''else '' ||',
'                                            ''return 0;''||',
'                                        ''end if; '' ||',
'                                      ''end;'')',
'      order by aapr.DISPLAY_SEQUENCE',
'   ) ',
'   , custom_label as (',
'        select  l_ALL_label, ''#SHOW_ALL'', l_ALL_position',
'          from  dual',
'         where  1=l_display_ALL                             ',
'   )',
'   , regions_and_label as (',
'        select  regions.* ',
'               ,rownum     seq ',
'          from  regions',
'         union all',
'        select  * ',
'          from  custom_label ',
'         order by seq nulls last',
'   )',
'   , count_all as (',
'        select count(*) reg_count from regions_and_label',
'   )',
'   select  decode(rownum, 1, '' class="apex-rds-item apex-rds-first"'', reg_count, '' class="apex-rds-item apex-rds-last"'', '' class="apex-rds-item"'') attr',
'          ,regions_and_label.*',
'     BULK collect into   l_attr_list, l_name_list , l_id_list, l_seq_list',
'     from  regions_and_label',
'          ,count_all;',
'          ',
'  -- open <div> and <ul>',
'  htp.p(''<div class="apex-rds-container">'');  ',
'  htp.p(''<ul class="apex-rds rds-customizable" id="''|| l_id ||''_RDS">'');  ',
'  -- print the list',
'  for i in 1 .. l_attr_list.count loop',
'    htp.p(''<li'' || l_attr_list(i) || ''>''); ',
'    htp.p(''<a href="'' || l_id_list(i) || ''"><span'' || case when l_seq_list(i) is null or l_seq_list(i) = 0 then '' '' || l_ALL_css end || ''>'' || l_name_list(i) ||''</span></a></li>'');',
'  end loop;',
'  -- close the tags',
'  htp.p(''</ul>'');',
'  htp.p(''</div>'');',
'',
'  -- add the click event for the RDS region and trigger click on the ''Show All'' "tab"',
'  apex_javascript.add_onload_code(',
'    ''apex.widget.regionDisplaySelector("''|| l_id ||''",{"useSlider":true,"mode":"standard"});'' ||',
'         ''apex.jQuery("#''|| l_id ||''_RDS > li:'' || case when l_display_ALL = 1 then ',
'                                                                       ( case l_ALL_position when 0 then ''first'' else ''last'' end )',
'                                                                     else ''first'' end || '' > a:first").trigger("click");'');',
'',
'  return null;  ',
'  exception when others then',
'    apex_application.debug(sqlerrm);',
'    apex_application.debug(dbms_utility.format_error_stack);',
'    raise;',
'end render_RDS;'))
,p_api_version=>1
,p_render_function=>'render_RDS'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This plugin is intended to be a replacement for displaying RDS (Region Display Selector).</p>',
'<p>With this plugin it is possible to select regions going into RDS as well as to control the "<em><strong>Show All</strong></em>"-tab behavior (Show/Hide, Position, Label, Css-Attributs).</p>',
'<p>The customizations are listed below:</p>',
'<ol>',
'	<li>',
'		<em><strong>Region Grouping Class Name</strong></em> - choice of regions going into RDS.',
'		Regions going into the RDS selector can be restricted by class name - put in the <strong><em>Region Attributes</em></strong>, e.g. class="rds-example"</li>',
'	<li>',
'		<em><strong>Display "Show All"</strong></em> - option if the <strong><em>"Show All"</em></strong>-tab should be displayed or not</li>',
'	<li>',
'		<em><strong>Label of "Show All"</strong></em> - label of the <strong><em>"Show All"</em></strong> tab can be changed</li>',
'	<li>',
'		<em><strong>Escape label of "Show All" </strong></em>- needed in case your label contains html tags (e.g. <img>)</li>',
'	<li>',
'		<em><strong>Css Attribute of "Show All"</strong></em> - you can set css attributes like title="your title" or class="class-name"</li>',
'	<li>',
'		<em><strong>Position of "Show All"</strong></em> - first or last, default is last</li>',
'</ol>',
'<p></p>',
'<p>',
'	<strong>Example:</strong></p>',
'<p>',
'	In the regions going into the RDS, set <strong><em>Region Display Selector</em></strong> to "Yes" - as you would with the standard RDS.<br />',
'	Additionally, in the <strong><em>Region Attributes</em></strong>, set a class of your choice (e.g. class="rds-example").<br />',
'	Repeat this for all regions you want to group in this particular RDS - <strong>important</strong>: the class name must be the same.<br />',
'	In the RDS plugin attributes, set the first parameter <em><strong>Region Grouping Class Name</strong></em> to the name of the class you previously put in the regions'' attribute (e.g. rds-example).</p>',
'<p>',
'	You will find more detailed instructions on the demo page (link above).</p>'))
,p_version_identifier=>'1.1'
,p_about_url=>'http://apex.oracle.com/pls/apex/f?p=TER:RDS_CUSTOMIZABLE'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(11970934218208416166)
,p_plugin_id=>wwv_flow_api.id(11970926940241413112)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Region Grouping Class Name'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_display_length=>30
,p_max_length=>30
,p_is_translatable=>false
,p_help_text=>'The region can be grouped by class. Once a class is chosen, only those regions with the class go into the RDS. If left empty, all regions will be in the RDS.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(11970934614953416167)
,p_plugin_id=>wwv_flow_api.id(11970926940241413112)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Display "Show All"'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_is_translatable=>false
,p_help_text=>'Display or hide the tab "Show All".'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(11970935015356416171)
,p_plugin_id=>wwv_flow_api.id(11970926940241413112)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Label of "Show All"'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_default_value=>'Show All'
,p_display_length=>65
,p_max_length=>200
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(11970934614953416167)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_help_text=>'Custom label for "Show All" tab. This can also be an html tag. If so, you need to set the next attribute <em><strong>Escape label of "Show All"</strong></em> to "No".'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(11970935412147416172)
,p_plugin_id=>wwv_flow_api.id(11970926940241413112)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'Escape label of "Show All"'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(11970934614953416167)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_help_text=>'In case you want to set an html tag instead of simple text (e.g. <img ...>), set this attribute to "No"; otherwise leave the default value.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(11970935816698416173)
,p_plugin_id=>wwv_flow_api.id(11970926940241413112)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_prompt=>'Css Attribute of "Show All"'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_display_length=>65
,p_max_length=>200
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(11970934614953416167)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This can be any css attribute, e.g:',
'<em><pre>class="your-class-name"</pre></em>',
'or ',
'<em><pre>style="color:red;"</pre></em>',
'or',
'<em><pre>title="your title"</pre></em>',
''))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(11970936235133416175)
,p_plugin_id=>wwv_flow_api.id(11970926940241413112)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_prompt=>'Position of "Show All"'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_default_value=>'f'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(11970934614953416167)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_help_text=>'The position of the "Show All" tab. Unlike in the standard RDS, the default position here is the first one.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(11970936610485416176)
,p_plugin_attribute_id=>wwv_flow_api.id(11970936235133416175)
,p_display_sequence=>10
,p_display_value=>'First'
,p_return_value=>'f'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(11970937121353416177)
,p_plugin_attribute_id=>wwv_flow_api.id(11970936235133416175)
,p_display_sequence=>20
,p_display_value=>'Last'
,p_return_value=>'l'
);
end;
/
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false), p_is_component_import => true);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
