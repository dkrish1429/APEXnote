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
,p_release=>'5.1.0.00.45'
,p_default_workspace_id=>2121342154610807
,p_default_application_id=>14550
,p_default_owner=>'OOS_USER'
);
end;
/
prompt --application/themes/3
begin
    wwv_flow.g_flow_theme_id := 3;
null;
end;
/
 
--
prompt  ...theme : 3
--
prompt  ...remove existing theme ...
begin
 wwv_flow_api.delete_theme(p_flow_id=> wwv_flow.g_flow_id , p_theme_id=>wwv_flow.g_flow_theme_id ,p_import=>'Y');
null;
end;
/
prompt --application/shared_components/user_interface/templates/page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(30507450334806309)
, p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'APEX 4.2 - Login'
,p_internal_name=>'APEX_4.2_LOGIN'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="no-js lt-ie9 lt-ie8 lt-ie7 aLogin" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="no-js lt-ie9 lt-ie8 ie7 aLogin" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="no-js lt-ie9 ie8 aLogin" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="no-js ie9 aLogin" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js aLogin" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'',
'  <meta charset="UTF-8" />',
'  <title>#TITLE#</title>',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon.ico">',
'<link rel="icon" sizes="16x16" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon-16x16.png">',
'<link rel="icon" sizes="32x32" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon-32x32.png">',
'<link rel="apple-touch-icon" sizes="180x180" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon-180x180.png">',
'  ',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'#HTTP_USER_AGENT#',
'</head>',
'<body #ONLOAD# class="aLogin">',
'<noscript>&MSG_JSCRIPT.</noscript>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="aHeader">',
'  <a href="#HOME_LINK#">#LOGO#</a>',
'</div>',
'<div class="aLoginOuter">',
'  <div class="aLoginInner">',
'    <div class="aLoginContainer">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="aLogin aRegion">',
'        <div class="aLoginHeader">',
'          <h1>#TITLE#</h1>',
'        </div>',
'        <div class="aLoginBody">',
'          <div class="aLoginIcon">',
'          #REGION_POSITION_02#',
'          </div>',
'          <div class="aLoginForm">',
'          #REGION_POSITION_03#',
'          </div>',
'        </div>',
'        #BODY#',
'        #REGION_POSITION_04#',
'        #REGION_POSITION_05#',
'        #REGION_POSITION_06#',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body></html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="aLoginMessage successMessage" id="login_success" role="alert">',
'  <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>',
'  <a href="#" onclick="$x_Remove(''login_success'')" class="closeLink"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'  #SUCCESS_MESSAGE#',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="aLoginMessage errorMessage" id="login_error" role="alert">',
'  <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>',
'  <a href="#" onclick="$x_Remove(''login_error'')" class="closeLink"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'  #MESSAGE#',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="2" width="100%"'
,p_theme_class_id=>6
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<br />',
'<br />',
'<pre>#MESSAGE#</pre>',
'<a href="#BACK_LINK#">#RETURN_TO_APPLICATION#</a>'))
,p_grid_type=>'TABLE'
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>5670419456547088
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(53940137945710713)
, p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'APEX 4.0 - Centered'
,p_internal_name=>'APEX_4.0_CENTERED'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="no-js lt-ie9 lt-ie8 ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="no-js lt-ie9 ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="no-js ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon.ico">',
'<link rel="icon" sizes="16x16" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon-16x16.png">',
'<link rel="icon" sizes="32x32" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon-32x32.png">',
'<link rel="apple-touch-icon" sizes="180x180" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon-180x180.png">',
'  ',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'</head>',
'<body #ONLOAD#>',
'<noscript>&MSG_JSCRIPT.</noscript>',
'#FORM_OPEN#',
'<a name="PAGETOP"></a>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="htmldbBodyMargin">',
'  <div>#REGION_POSITION_01#</div>',
'  <div style="width:798px; padding:20px 0 0 0; margin-left:auto; margin-right:auto;">',
'    <div class="rounded-corner-region" style="float:left;  width:798px;">',
'      <div class="rc-darkblue-top">',
'        <div class="rc-darkblue-top-r">',
'          <div style="float:left;"><h1>#LOGO#</h1></div>',
'          <div style="float:right; display: inline; margin: 2px 20px 0 0;">#REGION_POSITION_04#</div>',
'        </div>',
'      </div>',
'      <div class="rc-body">',
'        <div class="rc-body-r">',
'          <div class="rc-content-login">',
'            <div id="htmldbMessageHolder"><a name="SkipRepNav"></a>#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'            <div class="progress-indicator">#REGION_POSITION_02#</div>',
'            #BODY#',
'          </div>',
'        </div>',
'      </div>',
'      <div class="rc-bottom">',
'        <div class="rc-bottom-r"></div>',
'      </div>',
'    </div>',
'  </div>',
'</div>',
''))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE# <a name="END"><br />',
'</a>',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body></html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="aNotification success" id="MESSAGE" role="alert">',
'  <div class="aNotificationText">',
'    <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" class="iconMedium success"/>',
'    <p>#SUCCESS_MESSAGE#</p>',
'    <a href="#" class="closeMessage" onclick="$x_Remove(''MESSAGE'');return false;"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="#CLOSE_NOTIFICATION#" class="iconSmall close"/></a>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="aNotification warning" id="MESSAGE" role="alert">',
'  <div class="aNotificationText">',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" class="iconMedium warning"/>',
'    <div class="warningMessage">',
'      <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>',
'      #MESSAGE#',
'    </div>',
'    <a href="#" class="closeMessage" onclick="$x_Remove(''MESSAGE'');return false;"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="#CLOSE_NOTIFICATION#" class="iconSmall close"/></a>',
'  </div>',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="2" width="100%"'
,p_theme_class_id=>6
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<br />',
'<br />',
'<pre>#MESSAGE#</pre>',
'<a href="#BACK_LINK#">#RETURN_TO_APPLICATION#</a>'))
,p_grid_type=>'TABLE'
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>29091918876244613
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(443295432505786185)
, p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'APEX 4.2 - Error Page'
,p_internal_name=>'APEX_4.2_ERROR_PAGE'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="no-js lt-ie9 lt-ie8 ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="no-js lt-ie9 ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="no-js ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon.ico">',
'<link rel="icon" sizes="16x16" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon-16x16.png">',
'<link rel="icon" sizes="32x32" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon-32x32.png">',
'<link rel="apple-touch-icon" sizes="180x180" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon-180x180.png">',
'  ',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 8]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'<noscript>&MSG_JSCRIPT.</noscript>',
'#FORM_OPEN#',
'<a name="PAGETOP"></a>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="page-header">',
'  <div>',
'      <a id="apex-logo" href="#HOME_LINK#"><h1>#LOGO#</h1></a>',
'      <div class="nav-bar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="apex-top-bar-end">',
'    <div class="apex-top-bar">',
'    </div>',
'  </div>',
'  <div id="apex-breadcrumb-region-end">',
'    <div id="apex-breadcrumb-region">',
'      <div id="apex-breadcrumbs"></div>',
'      <div id="apex-help"><a href="&SYSTEM_HELP_URL." target="_blank"><img src="#IMAGE_PREFIX#f_spacer.gif" class="iconSmall help" alt="" /><span>&HELP.</span></a></div>',
'      <div id="apex-controls"></div>',
'    </div>',
'  </div>',
'</div>',
'',
'<div id="htmldbMessageHolder"><a name="SkipRepNav"></a>#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'<div class="htmldbBodyMargin">',
'  <div>#REGION_POSITION_01#</div>',
'  <div id="ContentBody">',
'    <table id="apex-page-body" cellspacing="0" cellpadding="0" border="0" summary="">',
'      <tbody>',
'        <tr>',
'          <td class="apex-page-content" width="100%">',
'            #REGION_POSITION_02#',
'            <div id="apex-splash">#REGION_POSITION_04#<div id="BB">#BODY#</div></div>	    ',
'	      </td>',
'          <td class="apex-page-sidebar">#REGION_POSITION_03##REGION_POSITION_05#</td>     ',
'        </tr>',
'      </tbody>',
'    </table>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="apex-footer-info">',
'  <div style="float:right;">#FLOW_VERSION#</div>',
'  <div style="float:right;">#CUSTOMIZE#</div>',
'</div>',
'<div id="apex-footer">',
'   <div class="content">',
'     <div style="float:left;">&MSG_COMPANY.&nbsp;&MSG_USER.:&nbsp;&USER.</div>',
'     <div style="float:right;">&MSG_LANGUAGE.:&nbsp;&BROWSER_LANGUAGE.&nbsp;|&nbsp;&MSG_COPYRIGHT.</div>',
'   </div>',
'</div>',
'#FORM_CLOSE# <a name="END"><br />',
'</a>',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body></html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="aNotification success" id="MESSAGE" role="alert">',
'  <div class="aNotificationText">',
'    <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" class="iconMedium success"/>',
'    <p>#SUCCESS_MESSAGE#</p>',
'    <a href="#" class="closeMessage" onclick="$x_Remove(''MESSAGE'');return false;"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="#CLOSE_NOTIFICATION#" class="iconSmall close"/></a>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="aNotification warning" id="MESSAGE" role="alert">',
'  <div class="aNotificationText">',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" class="iconMedium warning"/>',
'    <div class="warningMessage">',
'      <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>',
'      #MESSAGE#',
'    </div>',
'    <a href="#" class="closeMessage" onclick="$x_Remove(''MESSAGE'');return false;"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="#CLOSE_NOTIFICATION#" class="iconSmall close"/></a>',
'  </div>',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#" class="htmldbNavLink">#TEXT#</a>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="2" width="100%"'
,p_theme_class_id=>15
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<br />',
'<br />',
'<pre>#MESSAGE#</pre>',
'<a href="#BACK_LINK#">#RETURN_TO_APPLICATION#</a>'))
,p_grid_type=>'TABLE'
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>269976808683160781
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(806470986187515583)
, p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'APEX 5.0 - Workspace Login'
,p_internal_name=>'APEX_5.0_WORKSPACE_LOGIN'
,p_is_popup=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(function() {',
'  $(''a[href*="#"]:not([href="#"])'').click(function() {',
'    if (location.pathname.replace(/^\//,'''') == this.pathname.replace(/^\//,'''') && location.hostname == this.hostname) {',
'      var target = $(this.hash);',
'      target = target.length ? target : $(''[name='' + this.hash.slice(1) +'']'');',
'      if (target.length) {',
'        $(''html,body'').animate({',
'          scrollTop: target.offset().top',
'        }, 500);',
'        return false;',
'      }',
'    }',
'  });',
'});'))
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="no-js lt-ie9 lt-ie8 ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="no-js lt-ie9 ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="no-js ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  ',
'  <meta charset="UTF-8" />',
'  <title>#TITLE#</title>',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon.ico">',
'<link rel="icon" sizes="16x16" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon-16x16.png">',
'<link rel="icon" sizes="32x32" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon-32x32.png">',
'<link rel="apple-touch-icon" sizes="180x180" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon-180x180.png">',
'  ',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT# ',
'<!--[if lt IE 9]><script src="#IMAGE_PREFIX#libraries/apex/html5_ie.js"></script><![endif]-->',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#HEAD#',
'</head>',
'<body class="a-Page--login #PAGE_CSS_CLASSES#" #ONLOAD#>',
'<noscript>&MSG_JSCRIPT.</noscript>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#REGION_POSITION_07#',
'#REGION_POSITION_08#',
'#REGION_POSITION_01#',
'<div class="u-Layout u-Layout--centerVertically a-Login-slide" id="top">',
'  #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  <div class="a-Login-container">',
'  #BODY#',
'  </div>',
'  <div class="a-Login-slideNav a-Login-slideNav--down">',
'    <a href="#info" class="a-Login-slideNavLink"><span class="a-Icon icon-shuttle-down"></span></a>',
'  </div>',
'</div>',
'<div class="u-Layout u-Layout--centerVertically a-Login-slide a-Login-slide--secondary" id="info">',
'  <div class="a-Login-secondaryContent">',
'  #REGION_POSITION_03#',
'  </div>',
'  <div class="a-Login-slideNav  a-Login-slideNav--up">',
'    <a href="#top" class="a-Login-slideNavLink"><span class="a-Icon icon-shuttle-up"></span></a>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#GENERATED_JAVASCRIPT#',
'</body></html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-AlertMessages a-AlertMessages--page" role="alert" id="sucessMsg">',
' <div class="a-AlertMessages-item">',
'  <div class="a-MediaBlock a-AlertMessages-message is-success">',
'    <div class="a-MediaBlock-graphic">',
'      <span class="a-Icon a-Icon--medium icon-check"></span> ',
'    </div>',
'    <div class="a-MediaBlock-content">',
'      <h5 class="a-AlertMessages-messageTitle" id="sucessMsg-Message">#SUCCESS_MESSAGE#</h5>',
'      <button id="sucessMsg-Close" class="a-Button a-Button--small a-Button--noUI a-Button--noLabel a-Button--withIcon a-Button--alertMessages" type="button" title="#CLOSE_NOTIFICATION#" onclick="$x_Remove(''sucessMsg'');return false;"><span class="a-I'
||'con icon-remove"></span></button>',
'    </div>',
'  </div>',
' </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-AlertMessages a-AlertMessages--page" role="alert" id="errorMsg">',
' <div class="a-AlertMessages-item">',
'  <div class="a-MediaBlock a-AlertMessages-message is-error">',
'    <div class="a-MediaBlock-graphic">',
'      <span class="a-Icon a-Icon--medium icon-remove"></span> ',
'    </div>',
'    <div class="a-MediaBlock-content">',
'      <h5 class="a-AlertMessages-messageTitle" id="errorMsg-Message">#MESSAGE#</h5>',
'      <button id="errorMsg-Close" class="a-Button a-Button--small a-Button--noUI a-Button--noLabel a-Button--withIcon a-Button--alertMessages" type="button" title="#CLOSE_NOTIFICATION#" onclick="$x_Remove(''errorMsg'');return false;"><span class="a-Ico'
||'n icon-remove"></span></button>',
'    </div>',
'  </div>',
' </div>',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#" class="htmldbNavLink">#TEXT#</a>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="2" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_08'
,p_theme_class_id=>1
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex-grid-container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex-row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex-col apex-col-#COLUMN_SPAN_NUMBER# #ATTRIBUTES#">',
'#CONTENT#',
'</div>'))
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>781632627194221102
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(812617965273224819)
, p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'APEX 5.0 - Workspace Login Secondary Page'
,p_internal_name=>'APEX_5.0_WORKSPACE_LOGIN_SECONDARY_PAGE'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="no-js lt-ie9 lt-ie8 ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="no-js lt-ie9 ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="no-js ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'',
'  <meta charset="UTF-8" />',
'  <title>#TITLE#</title>',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon.ico">',
'<link rel="icon" sizes="16x16" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon-16x16.png">',
'<link rel="icon" sizes="32x32" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon-32x32.png">',
'<link rel="apple-touch-icon" sizes="180x180" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon-180x180.png">',
'  ',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT# ',
'<!--[if lt IE 9]><script src="#IMAGE_PREFIX#libraries/apex/html5_ie.js"></script><![endif]-->',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#HEAD#',
'</head>',
'<body class="a-Page--login #PAGE_CSS_CLASSES#" #ONLOAD#>',
'<noscript>&MSG_JSCRIPT.</noscript>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#REGION_POSITION_07#',
'#REGION_POSITION_08#',
'#REGION_POSITION_01#',
'<div class="u-Layout u-Layout--centerVertically a-Login-slide" id="top">',
'  #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  <div class="a-Login-container">',
'  #BODY#',
'  </div>',
'</div>',
'#REGION_POSITION_03#'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#GENERATED_JAVASCRIPT#',
'</body></html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-AlertMessages a-AlertMessages--page" role="alert" id="sucessMsg">',
' <div class="a-AlertMessages-item">',
'  <div class="a-MediaBlock a-AlertMessages-message is-success">',
'    <div class="a-MediaBlock-graphic">',
'      <span class="a-Icon a-Icon--medium icon-check"></span> ',
'    </div>',
'    <div class="a-MediaBlock-content">',
'      <h5 class="a-AlertMessages-messageTitle" id="sucessMsg-Message">#SUCCESS_MESSAGE#</h5>',
'      <button id="sucessMsg-Close" class="a-Button a-Button--small a-Button--noUI a-Button--noLabel a-Button--withIcon a-Button--alertMessages" type="button" title="#CLOSE_NOTIFICATION#" onclick="$x_Remove(''sucessMsg'');return false;"><span class="a-I'
||'con icon-remove"></span></button>',
'    </div>',
'  </div>',
' </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-AlertMessages a-AlertMessages--page" role="alert" id="errorMsg">',
' <div class="a-AlertMessages-item">',
'  <div class="a-MediaBlock a-AlertMessages-message is-error">',
'    <div class="a-MediaBlock-graphic">',
'      <span class="a-Icon a-Icon--medium icon-remove"></span> ',
'    </div>',
'    <div class="a-MediaBlock-content">',
'      <h5 class="a-AlertMessages-messageTitle" id="errorMsg-Message">#MESSAGE#</h5>',
'      <button id="errorMsg-Close" class="a-Button a-Button--small a-Button--noUI a-Button--noLabel a-Button--withIcon a-Button--alertMessages" type="button" title="#CLOSE_NOTIFICATION#" onclick="$x_Remove(''errorMsg'');return false;"><span class="a-Ico'
||'n icon-remove"></span></button>',
'    </div>',
'  </div>',
' </div>',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#" class="htmldbNavLink">#TEXT#</a>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="2" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_08'
,p_theme_class_id=>1
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex-grid-container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex-row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex-col apex-col-#COLUMN_SPAN_NUMBER# #ATTRIBUTES#">',
'#CONTENT#',
'</div>'))
,p_dialog_browser_frame=>'MODAL'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(812988384708780020)
, p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'APEX 5.0 - Wizard Page'
,p_internal_name=>'APEX_5.0_WIZARD_PAGE'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.builder.initWizardProgressBar();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="no-js lt-ie9 lt-ie8 ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="no-js lt-ie9 ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="no-js ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'',
'  <meta charset="UTF-8" />',
'  <title>#TITLE#</title>',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon.ico">',
'<link rel="icon" sizes="16x16" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon-16x16.png">',
'<link rel="icon" sizes="32x32" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon-32x32.png">',
'<link rel="apple-touch-icon" sizes="180x180" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon-180x180.png">',
'  ',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT# ',
'<!--[if lt IE 9]><script src="#IMAGE_PREFIX#libraries/apex/html5_ie.js"></script><![endif]-->',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#HEAD#',
'</head>',
'<body class="a-Page--wizard #PAGE_CSS_CLASSES#" #ONLOAD#>',
'<noscript>&MSG_JSCRIPT.</noscript>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#REGION_POSITION_07#',
'#REGION_POSITION_08#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div class="u-Layout u-Layout--centerVertically">',
'  <div class="a-Wizard a-Wizard--default">',
'    #REGION_POSITION_02#',
'    <div class="a-Wizard-controls">#REGION_POSITION_01#</div>',
'    <div class="a-Wizard-body">#BODY#</div>',
'    <div class="a-Wizard-buttons">#REGION_POSITION_03#</div>',
'  </div>',
'</div>',
'#REGION_POSITION_04#'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<footer class="a-Footer">',
'  <div class="a-Footer-info">',
'    <span class="a-Footer-attribute">',
'      <span class="a-Icon icon-user" title="&MSG_USER."></span>',
'      <span class="u-VisuallyHidden">&MSG_USER.</span>',
'      &USER.',
'    </span>',
'    <span class="a-Footer-attribute">',
'      <span class="a-Icon icon-workspace" title="&MSG_WORKSPACE."></span>',
'      <span class="u-VisuallyHidden">&MSG_WORKSPACE.</span>',
'      &COMPANY.',
'    </span>',
'    <span class="a-Footer-attribute">',
'      <span class="a-Icon icon-language" title="&MSG_LANGUAGE."></span>',
'      &BROWSER_LANGUAGE.',
'    </span>',
'  </div>',
'  <div class="a-Footer-copyright">&MSG_COPYRIGHT.</div>',
'  <div class="a-Footer-version">#FLOW_VERSION#</div>',
'</footer>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#GENERATED_JAVASCRIPT#',
'</body></html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-AlertMessages a-AlertMessages--page" role="alert" id="sucessMsg">',
' <div class="a-AlertMessages-item">',
'  <div class="a-MediaBlock a-AlertMessages-message is-success">',
'    <div class="a-MediaBlock-graphic">',
'      <span class="a-Icon a-Icon--medium icon-check"></span> ',
'    </div>',
'    <div class="a-MediaBlock-content">',
'      <h5 class="a-AlertMessages-messageTitle" id="sucessMsg-Message">#SUCCESS_MESSAGE#</h5>',
'      <button id="sucessMsg-Close" class="a-Button a-Button--small a-Button--noUI a-Button--noLabel a-Button--withIcon a-Button--alertMessages" type="button" title="#CLOSE_NOTIFICATION#" onclick="$x_Remove(''sucessMsg'');return false;"><span class="a-I'
||'con icon-remove"></span></button>',
'    </div>',
'  </div>',
' </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-AlertMessages a-AlertMessages--page" role="alert" id="errorMsg">',
' <div class="a-AlertMessages-item">',
'  <div class="a-MediaBlock a-AlertMessages-message is-error">',
'    <div class="a-MediaBlock-graphic">',
'      <span class="a-Icon a-Icon--medium icon-remove"></span> ',
'    </div>',
'    <div class="a-MediaBlock-content">',
'      <h5 class="a-AlertMessages-messageTitle" id="errorMsg-Message">#MESSAGE#</h5>',
'      <button id="errorMsg-Close" class="a-Button a-Button--small a-Button--noUI a-Button--noLabel a-Button--withIcon a-Button--alertMessages" type="button" title="#CLOSE_NOTIFICATION#" onclick="$x_Remove(''errorMsg'');return false;"><span class="a-Ico'
||'n icon-remove"></span></button>',
'    </div>',
'  </div>',
' </div>',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#" class="htmldbNavLink">#TEXT#</a>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="2" width="100%"'
,p_sidebar_def_reg_pos=>'BODY_3'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_08'
,p_theme_class_id=>1
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-Alert a-Alert--danger a-Alert--wizard a-Alert--defaultIcons">',
'  <div class="a-Alert-wrap">',
'    <div class="a-Alert-icon">',
'      <span class="a-Icon #ICON_CSS_CLASSES#"></span>',
'    </div>',
'    <div class="a-Alert-content">',
'      <div class="a-Alert-header">',
'      </div>',
'      <div class="a-Alert-body">',
'        <h2 class="a-Alert-subTitle">#MESSAGE#</h2>',
'        #ADDITIONAL_INFO#',
'        #TECHNICAL_INFO#',
'      </div>',
'    </div>',
'    <div class="a-Alert-buttons">',
'      <button class="a-Button a-Button--large a-Button--hot" onclick="#BACK_LINK#" type="button">#RETURN_TO_APPLICATION#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex-grid-container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex-row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex-col apex-col-#COLUMN_SPAN_NUMBER# #ATTRIBUTES#">',
'#CONTENT#',
'</div>'))
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>702684260095026477
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(45135927641704329)
,p_template_name=>'<a> button login page only'
,p_internal_name=>'<A>_BUTTON_LOGIN_PAGE_ONLY'
,p_template=>'<a href="#LINK#" title="#LABEL!ATTR#" style="text-align:center;font-size:10px;display:block;margin:2px;">#LABEL!HTML#</a>'
,p_translate_this_template=>'N'
,p_theme_class_id=>0
,p_template_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="xpbutton" cellspacing="0" cellpadding="0" border="0"  summary="">',
'<tbody class="FFFFFF">',
'<tr>',
'<td class="L" width="4"><img src="#IMAGE_PREFIX#1px_trans.gif" alt="" height="1" width="4"/></td>',
'<td class="C"><a href="#LINK#">#LABEL#</a></td>',
'<td class="R" width="4"><img src="#IMAGE_PREFIX#1px_trans.gif" alt="" height="1" width="4"/></td>',
'</tr>',
'</tbody>',
'</table>'))
,p_theme_id => wwv_flow.g_flow_theme_id
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(325566542426776587)
,p_template_name=>'APEX 4.1 - Button'
,p_internal_name=>'APEX_4.1_BUTTON'
,p_template=>'<button class="aButton" onclick="#LINK#" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#" type="button"><span>#LABEL!HTML#</span></button> '
,p_hot_template=>'<button class="aButton hotButton" onclick="#LINK#" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#" type="button"><span>#LABEL!HTML#</span></button> '
,p_reference_id=>275775519061831382
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_template_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="button-gray" role="button" title="#LABEL#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES#><span>#LABEL#</span></a> ',
'',
'',
'<a href="#LINK#" class="button-orange" role="button" title="#LABEL#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES#><span>#LABEL#</span></a> '))
,p_theme_id => wwv_flow.g_flow_theme_id
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(654044119827210264)
,p_template_name=>'HTML button (legacy - APEX 5 migration)'
,p_internal_name=>'HTML_BUTTON_LEGACY_APEX_5_MIGRATION'
,p_template=>'<input type="button" value="#LABEL!ATTR#" onclick="#JAVASCRIPT#" id="#BUTTON_ID#" class="#BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#/>'
,p_hot_template=>'<input type="button" value="#LABEL!ATTR#" onclick="#JAVASCRIPT#" id="#BUTTON_ID#" class="#BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#/>'
,p_translate_this_template=>'N'
,p_theme_class_id=>13
,p_template_comment=>'5.0 upgrade'
,p_theme_id => wwv_flow.g_flow_theme_id
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(806484071189566601)
,p_template_name=>'APEX 5.0 - Text Link'
,p_internal_name=>'APEX_5.0_TEXT_LINK'
,p_template=>'<a href="#LINK#" class="#BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">#LABEL!HTML#</a>'
,p_hot_template=>'<a href="#LINK#" class="#BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">#LABEL!HTML#</a>'
,p_reference_id=>781637176150282829
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id => wwv_flow.g_flow_theme_id
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(806488250730609663)
,p_template_name=>'APEX 5.0 - Button'
,p_internal_name=>'APEX_5.0_BUTTON'
,p_template=>'<button onclick="#JAVASCRIPT#" class="a-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">#LABEL!HTML#</button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="a-Button a-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">#LABEL!HTML#</button>'
,p_reference_id=>174750904387485475
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id => wwv_flow.g_flow_theme_id
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(806488426482609663)
,p_template_name=>'APEX 5.0 - Button with Icon'
,p_internal_name=>'APEX_5.0_BUTTON_WITH_ICON'
,p_template=>'<button class="a-Button a-Button--iconTextButton #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES#>#LABEL!HTML#<span class="a-Icon #ICON_CSS_CLASSES#"></span></button>'
,p_hot_template=>'<button class="a-Button a-Button--hot a-Button--iconTextButton #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES#>#LABEL!HTML#<span class="a-Icon #ICON_CSS_CLASSES#"></span></button>'
,p_reference_id=>404889142313786233
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id => wwv_flow.g_flow_theme_id
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(806489230849609666)
,p_template_name=>'APEX 5.0 - Icon Menu Button'
,p_internal_name=>'APEX_5.0_ICON_MENU_BUTTON'
,p_template=>'<button class="a-Button a-Button--noLabel a-Button--iconTextButton js-menuButton #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" type="button" title="#LABEL!ATTR#" aria-label="#LABEL!ATTR#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES#><span class="a-Icon #ICON_'
||'CSS_CLASSES#" aria-hidden="true"></span><span class="a-Icon icon-menu-drop-down" aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="a-Button a-Button--hot a-Button--noLabel a-Button--iconTextButton js-menuButton #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" type="button" title="#LABEL!ATTR#" aria-label="#LABEL!ATTR#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES#><span class='
||'"a-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="a-Icon  icon-menu-drop-down" aria-hidden="true"></span></button>'
,p_reference_id=>3705338883615
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id => wwv_flow.g_flow_theme_id
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(806489602013609667)
,p_template_name=>'APEX 5.0 - Icon Only Button'
,p_internal_name=>'APEX_5.0_ICON_ONLY_BUTTON'
,p_template=>'<button class="a-Button a-Button--noLabel a-Button--withIcon #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" aria-label="#LABEL!ATTR#" type="button" id="#BUTTON_ID#" title="#LABEL!ATTR#" #BUTTON_ATTRIBUTES#><span class="a-Icon #ICON_CSS_CLASSES#" aria-h'
||'idden="true"></span></button>'
,p_hot_template=>'<button class="a-Button a-Button--hot a-Button--noLabel a-Button--withIcon #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" aria-label="#LABEL!ATTR#" type="button" id="#BUTTON_ID#" title="#LABEL!ATTR#" #BUTTON_ATTRIBUTES#><span class="a-Icon #ICON_CSS_CL'
||'ASSES#" aria-hidden="true"></span></button>'
,p_reference_id=>353820721334283301
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id => wwv_flow.g_flow_theme_id
);
end;
/
prompt --application/shared_components/user_interface/templates/region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(30551950407793327)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<div style="float:left;width:98%;padding:4px;border-bottom: 1px solid #cccccc;">',
'<div style="float:left;font-size:16px;color:#808080;"><h2>#TITLE#</h2></div>',
'<div style="float:left">#CLOSE#&nbsp;&nbsp;#EDIT##DELETE##CREATE##CREATE2#<img src="#IMAGE_PREFIX#htmldb/builder/1px_trans.gif" alt="" height="1" width="5" />#PREVIOUS##NEXT#</div></div>',
'<div style="float:left;padding:4px;">#BODY#</div>',
'</div>'))
,p_page_plug_template_name=>'simple region heading'
,p_internal_name=>'SIMPLE_REGION_HEADING'
,p_plug_table_bgcolor=>'#FFFFFF'
,p_theme_id => wwv_flow.g_flow_theme_id
,p_theme_class_id=>0
,p_plug_heading_bgcolor=>'#FFFFFF'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_form_table_attr=>'class="instructiontext"'
,p_reference_id=>354965805166572999
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(256835848912187393)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#BODY#',
'<div class="aLoginButtonContainer">',
'  #CLOSE##EDIT##DELETE##CREATE##CREATE2##PREVIOUS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'APEX 4.2 - Login Form Region'
,p_internal_name=>'APEX_4.2_LOGIN_FORM_REGION'
,p_plug_table_bgcolor=>'#FFFFFF'
,p_theme_id => wwv_flow.g_flow_theme_id
,p_theme_class_id=>0
,p_plug_heading_bgcolor=>'#FFFFFF'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>231996531355924985
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(256852050348237108)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="aLoginSubBody #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# id="#REGION_ID#">',
'#BODY#',
'</div>'))
,p_page_plug_template_name=>'APEX 4.2 - Login Body Region'
,p_internal_name=>'APEX_4.2_LOGIN_BODY_REGION'
,p_plug_table_bgcolor=>'#FFFFFF'
,p_theme_id => wwv_flow.g_flow_theme_id
,p_theme_class_id=>0
,p_plug_heading_bgcolor=>'#FFFFFF'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>232012105475974354
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(256885043352321310)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="aRegion borderlessRegion #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# id="#REGION_ID#">',
'<h2>#TITLE#</h2>',
'#BODY#',
'</section>'))
,p_page_plug_template_name=>'APEX 4.2 - Borderless Region'
,p_internal_name=>'APEX_4.2_BORDERLESS_REGION'
,p_theme_id => wwv_flow.g_flow_theme_id
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>232045826042061939
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(380120743743114309)
,p_layout=>'TABLE'
,p_template=>'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>#BODY#</div>'
,p_page_plug_template_name=>'APEX 4.1 - Button Region'
,p_internal_name=>'APEX_4.1_BUTTON_REGION'
,p_plug_table_bgcolor=>'#FFFFFF'
,p_theme_id => wwv_flow.g_flow_theme_id
,p_theme_class_id=>0
,p_plug_heading_bgcolor=>'#FFFFFF'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_form_table_attr=>'class="htmldbInstruct"'
,p_reference_id=>245224629509817478
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(806480836762565054)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-Login-region a-Form--stretchInputs #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_ATTRIBUTES#>',
'  <div class="a-Login-header">',
'    <span class="a-Login-logo gi-icon-apex-logo-icon"></span>',
'    <h1 class="a-Login-title">#TITLE#</h1>',
'  </div>',
'  <div class="a-Login-body">',
'    #BODY#',
'  </div>',
'  <div class="a-Login-buttons">',
'    #NEXT#',
'  </div>',
'  <div class="a-Login-links">',
'    #EDIT##CREATE#',
'  </div>',
'  #SUB_REGIONS#',
'</div><div style="display:none">test</div>'))
,p_page_plug_template_name=>'APEX 5.0 - Workspace Login Region'
,p_internal_name=>'APEX_5.0_WORKSPACE_LOGIN_REGION'
,p_theme_id => wwv_flow.g_flow_theme_id
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>781637364422290692
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(806540412296660977)
,p_layout=>'TABLE'
,p_template=>'<div id="#REGION_STATIC_ID#" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>#PREVIOUS##BODY##NEXT#</div>'
,p_page_plug_template_name=>'APEX 5.0 - Div with ID, Class, and Region Attributes'
,p_internal_name=>'APEX_5.0_DIV_WITH_ID,_CLASS,_AND_REGION_ATTRIBUTES'
,p_plug_table_bgcolor=>'#FFFFFF'
,p_theme_id => wwv_flow.g_flow_theme_id
,p_theme_class_id=>0
,p_plug_heading_bgcolor=>'#FFFFFF'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_form_table_attr=>'class="htmldbInstruct"'
,p_reference_id=>716895227337398760
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(806555253498771310)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-Login-infoRegion #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_ATTRIBUTES#>',
'  <div class="a-Login-infoRegion-header">',
'    <h2 class="a-Login-infoRegion-title">#TITLE#</h2>',
'  </div>',
'  <div class="a-Login-infoRegion-body">',
'  #BODY#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'APEX 5.0 - Workspace Login Content Region'
,p_internal_name=>'APEX_5.0_WORKSPACE_LOGIN_CONTENT_REGION'
,p_theme_id => wwv_flow.g_flow_theme_id
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>781713093380502210
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(812931118624351680)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-Login-region a-Form--stretchInputs #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_ATTRIBUTES#>',
'  <div class="a-Login-header">',
'    <span class="a-Login-logo gi-icon-apex-logo-icon"></span>',
'    <h1 class="a-Login-title">#TITLE#</h1>',
'  </div>',
'  <div class="a-Login-body">',
'    #BODY#',
'    #SUB_REGIONS#',
'  </div>',
'  <div class="a-Login-buttons">',
'    #NEXT#',
'  </div>',
'  <div class="a-Login-links">',
'    #EDIT##CREATE#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'APEX 5.0 - Workspace Selection Region'
,p_internal_name=>'APEX_5.0_WORKSPACE_SELECTION_REGION'
,p_theme_id => wwv_flow.g_flow_theme_id
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(30558746349852810)
,p_list_template_current=>'<li><a href="#LINK#" title="#TEXT#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#" title="#TEXT#">#TEXT#</a></li>'
,p_list_template_name=>'Simple Image List'
,p_internal_name=>'SIMPLE_IMAGE_LIST'
,p_theme_id=>wwv_flow.g_flow_theme_id
,p_theme_class_id=>0
,p_list_template_before_rows=>'<ul class="listwithicon">'
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>32421627622986728
,p_list_template_comment=>'<img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# />'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(110805451843384600)
,p_list_template_current=>'<li class="a-LinksList-item is-current #A03#"><a href="#LINK#" class="a-LinksList-link" #A02#><span class="a-LinksList-icon"><span class="t-Icon #IMAGE#"></span></span><span class="a-LinksList-label">#TEXT#</span><span class="a-LinksList-badge">#A01#'
||'</span></a></li>'
,p_list_template_noncurrent=>'<li class="a-LinksList-item #A03#"><a href="#LINK#" class="a-LinksList-link" #A02#><span class="a-LinksList-icon"><span class="t-Icon #IMAGE#"></span></span><span class="a-LinksList-label">#TEXT#</span><span class="a-LinksList-badge">#A01#</span></a>'
||'</li>'
,p_list_template_name=>'unordered list'
,p_internal_name=>'UNORDERED_LIST'
,p_theme_id=>wwv_flow.g_flow_theme_id
,p_theme_class_id=>1
,p_default_template_options=>'a-LinksList--showArrow'
,p_list_template_before_rows=>'<ul class="a-LinksList #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="a-LinksList-item is-current #A03#"><a href="#LINK#" class="a-LinksList-link" #A02#><span class="a-LinksList-icon"><span class="t-Icon #IMAGE#"></span></span><span class="a-LinksList-label">#TEXT#</span><span class="a-LinksList-badge">#A01#'
||'</span></a></li>'
,p_sub_list_item_noncurrent=>'<li class="a-LinksList-item#A03#"><a href="#LINK#" class="a-LinksList-link" #A02#><span class="a-LinksList-icon"><span class="a-Icon #IMAGE#"></span></span><span class="a-LinksList-label">#TEXT#</span><span class="a-LinksList-badge">#A01#</span></a><'
||'/li>'
,p_item_templ_curr_w_child=>'<li class="a-LinksList-item is-current is-expanded #A03#"><a href="#LINK#" class="a-LinksList-link" #A02#><span class="a-LinksList-icon"><span class="t-Icon #IMAGE#"></span></span><span class="a-LinksList-label">#TEXT#</span><span class="a-LinksList-'
||'badge">#A01#</span></a>#SUB_LISTS#</li>'
,p_item_templ_noncurr_w_child=>'<li class="a-LinksList-item #A03#"><a href="#LINK#" class="a-LinksLisa-link" #A02#><span class="a-LinksList-icon"><span class="t-Icon #IMAGE#"></span></span><span class="a-LinksLisa-label">#TEXT#</span><span class="a-LinksList-badge">#A01#</span></a>'
||'</li>'
,p_reference_id=>60219508156141083
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(806560799986789905)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="a-MediaList-item is-active">',
'    <a href="#LINK#" class="a-MediaList-link" #A03#>',
'        <div class="a-MediaList-iconWrap">',
'            <span class="a-MediaList-icon"><span class="a-Icon #IMAGE#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="a-MediaList-body">',
'            <h3 class="a-MediaList-title">#TEXT#</h3>',
'            <p class="a-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="a-MediaList-badgeWrap">',
'            <span class="a-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="a-MediaList-item">',
'    <a href="#LINK#" class="a-MediaList-link" #A03#>',
'        <div class="a-MediaList-iconWrap">',
'            <span class="a-MediaList-icon"><span class="a-Icon #IMAGE#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="a-MediaList-body">',
'            <h3 class="a-MediaList-title">#TEXT#</h3>',
'            <p class="a-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="a-MediaList-badgeWrap">',
'            <span class="a-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_name=>'APEX 5.0 - Media List'
,p_internal_name=>'APEX_5.0_MEDIA_LIST'
,p_theme_id=>wwv_flow.g_flow_theme_id
,p_theme_class_id=>9
,p_default_template_options=>'a-MediaList--noBadge'
,p_list_template_before_rows=>'<ul class="a-MediaList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>692720897220784060
);
end;
/
prompt --application/shared_components/user_interface/templates/report
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(24838119506196253)
,p_row_template_name=>'Workspace Selection (4550:20)'
,p_internal_name=>'WORKSPACE_SELECTION_4550:20'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li>',
'  <a id="WORKSPACE-#ROWNUM#" href="javascript:apex.submit(''GO_WORKSPACE #WORKSPACE_SHORT_NAME#'');" class="workspaceInfo" style="padding: 10px 10px; width: 100%;">',
'    <h2>#WORKSPACE_DISPLAY_NAME#</h2>',
'    <h3>',
'      <strong style="font-size:11px;">#DEVELOPER_ROLE#</strong><br/>',
'      #LAST_LOGIN_MSG#: #LAST_LOGIN#',
'    </h3>',
'  </a>',
'  <div class="clear"></div>',
'</li>'))
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li>',
'  <a href="javascript:apex.submit(''GO_WORKSPACE #WORKSPACE_SHORT_NAME#'');" class="workspaceImage">',
'    <img src="#WORKSPACE_IMAGE_URL#" alt="" />',
'  </a>',
'  <a href="javascript:apex.submit(''GO_WORKSPACE #WORKSPACE_SHORT_NAME#'');" class="workspaceInfo" style="width: 75%;">',
'    <h2>#WORKSPACE_DISPLAY_NAME#</h2>',
'    <h3>',
'      <strong style="font-size:11px;">#DEVELOPER_ROLE#</strong><br/>',
'      <span class="workspaceDescription">#WORKSPACE_DESCRIPTION#</span>',
'    </h3>',
'  </a>',
'  <div class="clear"></div>',
'</li>'))
,p_row_template_before_rows=>' <ul class="workspacesList">'
,p_row_template_after_rows=>' </ul>'
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>wwv_flow.g_flow_theme_id
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(256898621458347974)
,p_row_template_name=>'APEX 4.2 - Unordered List'
,p_internal_name=>'APEX_4.2_UNORDERED_LIST'
,p_row_template1=>'<li>#COLUMN_VALUE#</li>'
,p_row_template_before_rows=>'<ul #REPORT_ATTRIBUTES#>'
,p_row_template_after_rows=>'</ul>'
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_column_heading_template=>'OMIT'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_theme_id=>wwv_flow.g_flow_theme_id
,p_theme_class_id=>0
,p_reference_id=>232059713281090127
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(256898621458347974)
,p_row_template_before_first=>'OMIT'
,p_row_template_after_last=>'OMIT'
);
exception when others then null;
end;
end;
/
prompt --application/shared_components/user_interface/templates/label
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(39716638685001452)
,p_template_name=>'FormField_Required'
,p_internal_name=>'FORMFIELD_REQUIRED'
,p_template_body1=>'<em>*</em><label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="aLabel aRequired"><a href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'',''&CLOSE.'')" tabindex="999">'
,p_template_body2=>' <span class="hideMeButHearMe">(#VALUE_REQUIRED#)</span></a></label>'
,p_on_error_after_label=>'<small class="aError">#ERROR_MESSAGE#</small>'
,p_theme_id=>wwv_flow.g_flow_theme_id
,p_theme_class_id=>2
,p_reference_id=>17388508175892042
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(69060338765835446)
,p_template_name=>'FormField_Optional'
,p_internal_name=>'FORMFIELD_OPTIONAL'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="aLabel aOptional"><a href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'',''&CLOSE.'')" tabindex="999">'
,p_template_body2=>'</a></label>'
,p_on_error_after_label=>'<small class="aError">#ERROR_MESSAGE#</small>'
,p_theme_id=>wwv_flow.g_flow_theme_id
,p_theme_class_id=>1
,p_reference_id=>17388415351892041
,p_translate_this_template=>'N'
,p_template_comment=>'<label for="#CURRENT_ITEM_NAME#"><a class="htmldbLabelOptional" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'',''&CLOSE.'')" tabindex="999">'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(806473579959562330)
,p_template_name=>'APEX 5.0 - Workspace Login Label'
,p_internal_name=>'APEX_5.0_WORKSPACE_LOGIN_LABEL'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="a-Icon a-Login-iconLabel">'
,p_template_body2=>'</label>'
,p_before_item=>'<div class="a-Form-fieldContainer #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#"><div class="a-Form-inputContainer">'
,p_after_item=>'</div></div>'
,p_after_element=>'<span class="a-Login-iconValidation a-Icon icon-check"></span>#ERROR_TEMPLATE#'
,p_help_link=>'<button class="a-Button a-Button--noUI a-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help"></span><span class="u-VisuallyHidden">#CURRENT_ITE'
||'M_HELP_LABEL#</span></button>'
,p_error_template=>'<span class="a-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>wwv_flow.g_flow_theme_id
,p_theme_class_id=>4
,p_reference_id=>781637020106265852
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb
begin
null;
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(39411036726624239)
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#APEX_JAVASCRIPT#',
'<meta name="viewport" content="width=device-width,initial-scale=1.0" />',
'<link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'<link rel="stylesheet" href="#IMAGE_PREFIX#apex_ui/css/Core#MIN#.css?v=#APEX_VERSION#" type="text/css"/>',
'<link rel="stylesheet" href="#IMAGE_PREFIX#apex_ui/css/Theme-Standard#MIN#.css?v=#APEX_VERSION#" type="text/css"/>',
'</head>'))
,p_page_body_attr=>'onload="first_field()" class="a-Page a-Page--popupLOV"'
,p_before_field_text=>'<div class="a-PopupLOV-actions a-Form--large">'
,p_filter_width=>'15'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="a-Form-field a-Form-searchField"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="a-Button a-Button--hot a-Button--padLeft"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="a-Button u-pullRight"'
,p_next_button_text=>'Next &gt;'
,p_next_button_attr=>'class="a-Button a-PopupLOV-button"'
,p_prev_button_text=>'&lt; Previous'
,p_prev_button_attr=>'class="a-Button a-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_height=>'480'
,p_result_row_x_of_y=>'<div class="a-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>200
,p_before_result_set=>'<div class="a-PopupLOV-links">'
,p_theme_id=>wwv_flow.g_flow_theme_id
,p_theme_class_id=>1
,p_reference_id=>17343114994581872
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar
begin
null;
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(99963834781300215)
,p_theme_id=>wwv_flow.g_flow_theme_id
,p_theme_name=>'APEX 5.0'
,p_theme_internal_name=>'APEX_5.0'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'T'
,p_nav_bar_type=>'NAVBAR'
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(53940137945710713)
,p_error_template=>wwv_flow_api.id(812988384708780020)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(228858452154021028)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'Standard'
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#apex_ui/css/Core#MIN#.css',
'#IMAGE_PREFIX#apex_ui/css/Theme-Standard#MIN#.css'))
,p_is_current=>true
,p_is_public=>false
,p_is_accessible=>false
,p_theme_roller_read_only=>false
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(722067163002962024)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default - No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(771262715997667789)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'HEIGHT'
,p_display_name=>'Height'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Behavior'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(771263974539667790)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'FORM_LABEL_ALIGNMENT'
,p_display_name=>'Form Label Alignment'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Set Form Alignment for Grid Based forms'
,p_null_text=>'Right'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(771264296552667790)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'FORM_LABEL_WIDTH'
,p_display_name=>'Form Label Width'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(771264578538667790)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Not Part of Button Set'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(771265671302667790)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>1
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(771266010206667790)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'FORM_LABEL_POSITION'
,p_display_name=>'Form Label Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Position'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(771266313160667791)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BUTTON_SIZE'
,p_display_name=>'Button Size'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Button Size'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(771266568044667791)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing left'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Left Spacing'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(771266823115667791)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Right Spacing'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(771267409091667791)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Icon on Right'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(771267620999667792)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BUTTON_TYPE'
,p_display_name=>'Button Type'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(806561155559789909)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(771262759132667789)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'180PX'
,p_display_name=>'180px'
,p_display_sequence=>10
,p_css_classes=>'h180'
,p_group_id=>wwv_flow_api.id(771262715997667789)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(771262979625667789)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>20
,p_css_classes=>'h240'
,p_group_id=>wwv_flow_api.id(771262715997667789)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(771263194259667789)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>30
,p_css_classes=>'h320'
,p_group_id=>wwv_flow_api.id(771262715997667789)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(771263336640667790)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>50
,p_css_classes=>'h480'
,p_group_id=>wwv_flow_api.id(771262715997667789)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(771263584561667790)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'540PX'
,p_display_name=>'540px'
,p_display_sequence=>60
,p_css_classes=>'h540'
,p_group_id=>wwv_flow_api.id(771262715997667789)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(771263787454667790)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>70
,p_css_classes=>'h640'
,p_group_id=>wwv_flow_api.id(771262715997667789)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(771264073956667790)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'ALIGNLABELSLEFT'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_css_classes=>'a-Form--leftLabels'
,p_group_id=>wwv_flow_api.id(771263974539667790)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(771264379766667790)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'AUTOWIDTH'
,p_display_name=>'Auto Width'
,p_display_sequence=>1
,p_css_classes=>'a-Form--autoWidthLabels'
,p_group_id=>wwv_flow_api.id(771264296552667790)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(771264641535667790)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'FIRSTBUTTON'
,p_display_name=>'First Button'
,p_display_sequence=>1
,p_css_classes=>'a-Button--pillStart'
,p_group_id=>wwv_flow_api.id(771264578538667790)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(771264903309667790)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'FIXEDLARGE'
,p_display_name=>'Fixed (Large Width)'
,p_display_sequence=>30
,p_css_classes=>'a-Form-fixedLabelsLarge'
,p_group_id=>wwv_flow_api.id(771264296552667790)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(771265078716667790)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'FIXEDMEDIUM'
,p_display_name=>'Fixed (Medium Width)'
,p_display_sequence=>20
,p_css_classes=>'a-Form-fixedLabelsMed'
,p_group_id=>wwv_flow_api.id(771264296552667790)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(771265268070667790)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'FIXEDWIDTH'
,p_display_name=>'Fixed'
,p_display_sequence=>10
,p_css_classes=>'a-Form--fixedLabels'
,p_group_id=>wwv_flow_api.id(771264296552667790)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(771265463656667790)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'INNERBUTTON'
,p_display_name=>'Inner Button'
,p_display_sequence=>2
,p_css_classes=>'a-Button--pill'
,p_group_id=>wwv_flow_api.id(771264578538667790)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(771265805628667790)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'LABELAUTOWIDTH'
,p_display_name=>'Auto Width'
,p_display_sequence=>1
,p_css_classes=>'a-Form-fieldContainer--autoLabelWidth'
,p_group_id=>wwv_flow_api.id(771265671302667790)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(771266021322667790)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'LABELSABOVE'
,p_display_name=>'Labels Above'
,p_display_sequence=>1
,p_css_classes=>'a-Form--labelsAbove'
,p_group_id=>wwv_flow_api.id(771266010206667790)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(771266368345667791)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>3
,p_css_classes=>'a-Button--large'
,p_group_id=>wwv_flow_api.id(771266313160667791)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(771266703776667791)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'LARGELEFT'
,p_display_name=>'Large'
,p_display_sequence=>1
,p_css_classes=>'a-Button--gapLeft'
,p_group_id=>wwv_flow_api.id(771266568044667791)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(771266922692667791)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'LARGERIGHT'
,p_display_name=>'Large'
,p_display_sequence=>1
,p_css_classes=>'a-Button--gapRight'
,p_group_id=>wwv_flow_api.id(771266823115667791)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(771267126430667791)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'LASTBUTTON'
,p_display_name=>'Last Button'
,p_display_sequence=>3
,p_css_classes=>'a-Button--pillEnd'
,p_group_id=>wwv_flow_api.id(771264578538667790)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(771267500531667791)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_css_classes=>'a-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(771267409091667791)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(771267750078667792)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>1
,p_css_classes=>'a-Button--primary'
,p_group_id=>wwv_flow_api.id(771267620999667792)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(771267917601667792)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'REGIONHEADERBUTTON'
,p_display_name=>'Button in Region Header'
,p_display_sequence=>1
,p_css_classes=>'a-Button--regionHeader'
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(771268064556667792)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_css_classes=>'a-Button--small'
,p_group_id=>wwv_flow_api.id(771266313160667791)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(771268298071667792)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'SMALLLEFT'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_css_classes=>'a-Button--padLeft'
,p_group_id=>wwv_flow_api.id(771266568044667791)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(771268451064667792)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'SMALLRIGHT'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_css_classes=>'a-Button--padRight'
,p_group_id=>wwv_flow_api.id(771266823115667791)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(771268542192667792)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'STRETCHFORMFIELD'
,p_display_name=>'Stretch Form Field'
,p_display_sequence=>1
,p_css_classes=>'a-Form-fieldContainer--stretch'
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(771268647529667792)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'STRONGBUTTONLABEL'
,p_display_name=>'Strong Button Label'
,p_display_sequence=>1
,p_css_classes=>'a-Button--strongLabel'
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(806562667891789915)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(806560799986789905)
,p_css_classes=>'a-MediaList--cols a-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(806561155559789909)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(806562850988789915)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(806560799986789905)
,p_css_classes=>'a-MediaList--cols a-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(806561155559789909)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(806563067819789916)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(806560799986789905)
,p_css_classes=>'a-MediaList--cols a-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(806561155559789909)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(806563320394789916)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(806560799986789905)
,p_css_classes=>'a-MediaList--cols a-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(806561155559789909)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(806563423252789916)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'SPANHORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(806560799986789905)
,p_css_classes=>'a-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(806561155559789909)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(806563585218789916)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'HIDEBADGE'
,p_display_name=>'Hide Badge'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(806560799986789905)
,p_css_classes=>'a-MediaList--noBadge'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(806563639792789916)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'HIDEDESCRIPTION'
,p_display_name=>'Hide Description'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(806560799986789905)
,p_css_classes=>'a-MediaList--noDesc'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(806563804420789916)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'HIDETITLE'
,p_display_name=>'Hide Title'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(806560799986789905)
,p_css_classes=>'a-MediaList--noTitle'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(806563847768789916)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'HIDEICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(806560799986789905)
,p_css_classes=>'a-MediaList--noIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(806563933971789916)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'SLIMLIST'
,p_display_name=>'Slim List'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(806560799986789905)
,p_css_classes=>'a-MediaList--slim'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1224397396499285615)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'LEFT'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_button_template_id=>wwv_flow_api.id(806488426482609663)
,p_css_classes=>'a-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(771267409091667791)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1550486674776435237)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'DONOTWRAPTEXT'
,p_display_name=>'Do not wrap text'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(110805451843384600)
,p_css_classes=>'a-LinksList--nowrap'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1550486763339435237)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(110805451843384600)
,p_css_classes=>'a-LinksList--showBadge'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1550486856460435237)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'SHOWRIGHTARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(110805451843384600)
,p_css_classes=>'a-LinksList--showArrow'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1550486960501435237)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'USEBRIGHTHOVERS'
,p_display_name=>'Use Bright Hovers'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(110805451843384600)
,p_css_classes=>'a-LinksList--brightHover'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1550487142970435238)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'FORTOPLEVELONLY'
,p_display_name=>'For top level only'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(110805451843384600)
,p_css_classes=>'a-LinksList--showTopIcons'
,p_group_id=>wwv_flow_api.id(722067163002962024)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1550487338986435238)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'FORALLITEMS'
,p_display_name=>'For all items'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(110805451843384600)
,p_css_classes=>'a-LinksList--showIcons'
,p_group_id=>wwv_flow_api.id(722067163002962024)
,p_template_types=>'LIST'
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
