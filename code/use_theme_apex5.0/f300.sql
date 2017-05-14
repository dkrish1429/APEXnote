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
,p_default_workspace_id=>1826901577598318
,p_default_application_id=>300
,p_default_owner=>'OOS_USER'
);
end;
/
prompt --application/set_environment
 
prompt APPLICATION 300 - Empty App from 3
--
-- Application Export:
--   Application:     300
--   Name:            Empty App from 3
--   Date and Time:   16:56 Thursday May 11, 2017
--   Exported By:     OOS_USER
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         5.1.0.00.45
--   Instance ID:     220102632557595
--

-- Application Statistics:
--   Pages:                      1
--     Regions:                  1
--   Shared Components:
--     Logic:
--     Navigation:
--       Breadcrumbs:            1
--     Security:
--       Authentication:         1
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                11
--         Region:              22
--         Label:                5
--         List:                16
--         Popup LOV:            1
--         Calendar:             3
--         Breadcrumb:           2
--         Button:               5
--         Report:               7
--     Globalization:
--       Messages:               2
--     Reports:
--   Supporting Objects:  Included

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,300)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'OOS_USER')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Empty App from 3')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'F167123')
,p_page_view_logging=>'YES'
,p_checksum_salt_last_reset=>'20170511165520'
,p_bookmark_checksum_function=>'MD5'
,p_max_session_length_sec=>28800
,p_html_escaping_mode=>'B'
,p_flow_language=>'en-us'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_date_format=>'DD-MON-YYYY'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(374914190067829126)
,p_logout_url=>'wwv_flow_custom_auth_std.logout?p_this_flow=&APP_ID.&p_next_flow_page_sess=&APP_ID.:101'
,p_application_tab_set=>1
,p_logo_image=>'TEXT:Empty App from 3'
,p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,'')
,p_flow_version=>'release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_deep_linking=>'Y'
,p_runtime_api_usage=>'T:O:W'
,p_authorize_public_pages_yn=>'Y'
,p_rejoin_existing_sessions=>'P'
,p_csv_encoding=>'N'
,p_last_updated_by=>'OOS_USER'
,p_last_upd_yyyymmddhh24miss=>'20170511165520'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists
begin
null;
end;
/
prompt --application/shared_components/files
begin
null;
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(408791000042)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attribute_01=>'LEGACY'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(490432000043)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(579911000043)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(724734000043)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IG'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(813939000043)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
,p_attribute_05=>'SELECT_LIST'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(867822000043)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attribute_01=>'classic'
);
end;
/
prompt --application/shared_components/security/authorizations
begin
null;
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_processes
begin
null;
end;
/
prompt --application/shared_components/logic/application_items
begin
null;
end;
/
prompt --application/shared_components/logic/application_computations
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs
begin
null;
end;
/
prompt --application/shared_components/navigation/trees
begin
null;
end;
/
prompt --application/pages/page_groups
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(260800766060667128)
,p_name=>'Breadcrumb'
);
end;
/
prompt --application/shared_components/user_interface/templates/page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(236360638713886712)
,p_theme_id=>20
,p_name=>'Login'
,p_internal_name=>'LOGIN'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<title>#TITLE#</title>',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/theme_3_1.css" type="text/css" />',
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/ie.css" type="text/css" /><![endif]-->',
'#APEX_CSS#',
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
'<body #ONLOAD#>#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="t20PageHeader">',
'<table border="0" cellpadding="0" cellspacing="0" summary="">',
'<tr>',
'<td id="t20Logo" valign="top">#LOGO#<br />#REGION_POSITION_06#</td>',
'<td id="t20HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#<br /></td>',
'<td id="t20NavBar" valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>',
'</tr>',
'</table>',
'</div>',
'<div id="t20BreadCrumbsLeft">#REGION_POSITION_01#</div>',
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageBody" height="70%" align="center" width="400">',
'<td width="100%" valign="top" height="100%" id="t20ContentBody" align="center">',
'<div id="t20Messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>',
'<div id="t20ContentMiddle">#BODY##REGION_POSITION_02##REGION_POSITION_04#</div>',
'</td>',
'<td valign="top" width="200" id="t20ContentRight">#REGION_POSITION_03#<br /></td>',
'</tr>',
'</table>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageFooter" width="100%">',
'<tr>',
'<td id="t20Left" valign="top"><span id="t20UserPrompt">&APP_USER.</span><br /></td>',
'<td id="t20Center" valign="top">#REGION_POSITION_05#</td>',
'<td id="t20Right" valign="top"><span id="t20Customize">#CUSTOMIZE#</span><br /></td>',
'</tr>',
'</table>',
'<br class="t20Break"/>',
'#FORM_CLOSE# ',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">',
'<tr>',
'<td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td><td class="tM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td></tr>',
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</td><td class="R"></td></tr>',
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>',
'</table>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">',
'<tr>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>',
'<td class="tM"></td>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>',
'</tr>',
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</td><td class="R"></td></tr>',
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>',
'</table>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#" class="t20NavBar">#TEXT#</a> |'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>6
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(236360712404886714)
,p_theme_id=>20
,p_name=>'No Tabs'
,p_internal_name=>'NO_TABS'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<title>#TITLE#</title>',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/theme_3_1.css" type="text/css" />',
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/ie.css" type="text/css" /><![endif]-->',
'#APEX_CSS#',
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
'<body #ONLOAD#>#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="t20PageHeader">',
'<table border="0" cellpadding="0" cellspacing="0" summary="" width="100%">',
'<tr>',
'<td id="t20Logo" valign="top">#LOGO#<br />#REGION_POSITION_06#</td>',
'<td id="t20HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#<br /></td>',
'<td id="t20NavBar" valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>',
'</tr>',
'</table>',
'</div>',
'<div id="t20BreadCrumbsLeft">#REGION_POSITION_01#</div>',
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageBody"  width="100%" height="70%">',
'<td width="100%" valign="top" height="100%" id="t20ContentBody">',
'<div id="t20Messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>',
'<div id="t20ContentMiddle">#BODY##REGION_POSITION_02##REGION_POSITION_04#</div>',
'</td>',
'<td valign="top" width="200" id="t20ContentRight">#REGION_POSITION_03#<br /></td>',
'</tr>',
'</table>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageFooter" width="100%">',
'<tr>',
'<td id="t20Left" valign="top"><span id="t20UserPrompt">&APP_USER.</span><br /></td>',
'<td id="t20Center" valign="top">#REGION_POSITION_05#</td>',
'<td id="t20Right" valign="top"><span id="t20Customize">#CUSTOMIZE#</span><br /></td>',
'</tr>',
'</table>',
'<br class="t20Break"/>',
'#FORM_CLOSE# ',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">',
'<tr>',
'<td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td><td class="tM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td></tr>',
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</td><td class="R"></td></tr>',
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>',
'</table>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">',
'<tr>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>',
'<td class="tM"></td>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>',
'</tr>',
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</td><td class="R"></td></tr>',
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>',
'</table>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#" class="t20NavBar">#TEXT#</a> |'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" align="left"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(236360930673886715)
,p_theme_id=>20
,p_name=>'No Tabs with Sidebar'
,p_internal_name=>'NO_TABS_WITH_SIDEBAR'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<title>#TITLE#</title>',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/theme_3_1.css" type="text/css" />',
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/ie.css" type="text/css" /><![endif]-->',
'#APEX_CSS#',
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
'<body #ONLOAD#>#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="t20PageHeader">',
'<table border="0" cellpadding="0" cellspacing="0" summary="" width="100%">',
'<tr>',
'<td id="t20Logo" valign="top">#LOGO#<br />#REGION_POSITION_06#</td>',
'<td id="t20HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#<br /></td>',
'<td id="t20NavBar" valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>',
'</tr>',
'</table>',
'</div>',
'<div id="t20BreadCrumbsLeft">#REGION_POSITION_01#</div>',
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageBody"  width="100%" height="70%">',
'<td valign="top" width="200" id="t20ContentLeft">#REGION_POSITION_02#<br /></td>',
'<td width="100%" valign="top" height="100%" id="t20ContentBody">',
'<div id="t20Messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>',
'<div id="t20ContentMiddle">#BODY##REGION_POSITION_04#</div>',
'</td>',
'<td valign="top" width="200" id="t20ContentRight">#REGION_POSITION_03#<br /></td>',
'</tr>',
'</table>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageFooter" width="100%">',
'<tr>',
'<td id="t20Left" valign="top"><span id="t20UserPrompt">&APP_USER.</span><br /></td>',
'<td id="t20Center" valign="top">#REGION_POSITION_05#</td>',
'<td id="t20Right" valign="top"><span id="t20Customize">#CUSTOMIZE#</span><br /></td>',
'</tr>',
'</table>',
'<br class="t20Break"/>',
'#FORM_CLOSE# ',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">',
'<tr>',
'<td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td><td class="tM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td></tr>',
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</td><td class="R"></td></tr>',
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>',
'</table>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">',
'<tr>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>',
'<td class="tM"></td>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>',
'</tr>',
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</td><td class="R"></td></tr>',
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>',
'</table>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#" class="t20NavBar">#TEXT#</a> |'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" align="left"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(236361118706886715)
,p_theme_id=>20
,p_name=>'One Level Tabs'
,p_internal_name=>'ONE_LEVEL_TABS'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<title>#TITLE#</title>',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/theme_3_1.css" type="text/css" />',
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/ie.css" type="text/css" /><![endif]-->',
'#APEX_CSS#',
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
'<body #ONLOAD#>#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="t20PageHeader">',
'<table border="0" cellpadding="0" cellspacing="0" summary="" width="100%">',
'<tr>',
'<td id="t20Logo" valign="top">#LOGO#<br />#REGION_POSITION_06#</td>',
'<td id="t20HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#<br /></td>',
'<td id="t20NavBar" valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>',
'</tr>',
'</table>',
'<div id="t20Tabs" class="tablight">#TAB_CELLS#</div>',
'</div>',
'<div id="t20BreadCrumbsLeft">#REGION_POSITION_01#</div>',
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageBody"  width="100%" height="70%">',
'<td width="100%" valign="top" id="t20ContentBody">',
'<div id="t20Messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>',
'<div id="t20ContentMiddle">#BODY##REGION_POSITION_02##REGION_POSITION_04#</div>',
'</td>',
'<td valign="top" width="200" id="t20ContentRight">#REGION_POSITION_03#<br /></td>',
'</tr>',
'</table>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageFooter" width="100%">',
'<tr>',
'<td id="t20Left" valign="top"><span id="t20UserPrompt">&APP_USER.</span><br /></td>',
'<td id="t20Center" valign="top">#REGION_POSITION_05#</td>',
'<td id="t20Right" valign="top"><span id="t20Customize">#CUSTOMIZE#</span><br /></td>',
'</tr>',
'</table>',
'<br class="t20Break"/>',
'#FORM_CLOSE# ',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">',
'<tr>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>',
'<td class="tM"></td>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>',
'</tr>',
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</td><td class="R"></td></tr>',
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>',
'</table>'))
,p_current_tab=>'<a href="#TAB_LINK#" class="t20CurrentTab">#TAB_LABEL#</a>'
,p_non_current_tab=>'<a href="#TAB_LINK#">#TAB_LABEL#</a>'
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">',
'<tr>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>',
'<td class="tM"></td>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>',
'</tr>',
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</td><td class="R"></td></tr>',
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>',
'</table>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#" class="t20NavBar">#TEXT#</a> |'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="5" align="left"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(236361314954886716)
,p_theme_id=>20
,p_name=>'One Level Tabs (alt)'
,p_internal_name=>'ONE_LEVEL_TABS_ALT'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<title>#TITLE#</title>',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/theme_3_1.css" type="text/css" />',
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/ie.css" type="text/css" /><![endif]-->',
'#APEX_CSS#',
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
'<body #ONLOAD#>#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="t20PageHeader">',
'<table border="0" cellpadding="0" cellspacing="0" summary="" width="100%">',
'<tr>',
'<td id="t20Logo" valign="top">#LOGO#<br />#REGION_POSITION_06#</td>',
'<td id="t20HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#<br /></td>',
'<td id="t20NavBar" valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>',
'</tr>',
'</table>',
'<table id="t20Tabs" border="0" cellpadding="0" cellspacing="0" summary=""><tr>#TAB_CELLS#</tr></table>',
'</div>',
'<div id="t20BreadCrumbsLeft">#REGION_POSITION_01#</div>',
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageBody"  width="100%" height="70%">',
'<td width="100%" valign="top" id="t20ContentBody">',
'<div id="t20Messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>',
'<div id="t20ContentMiddle">#BODY##REGION_POSITION_02##REGION_POSITION_04#</div>',
'</td>',
'<td valign="top" width="200" id="t20ContentRight">#REGION_POSITION_03#<br /></td>',
'</tr>',
'</table>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageFooter" width="100%">',
'<tr>',
'<td id="t20Left" valign="top"><span id="t20UserPrompt">&APP_USER.</span><br /></td>',
'<td id="t20Center" valign="top">#REGION_POSITION_05#</td>',
'<td id="t20Right" valign="top"><span id="t20Customize">#CUSTOMIZE#</span><br /></td>',
'</tr>',
'</table>',
'<br class="t20Break"/>',
'#FORM_CLOSE# ',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">',
'<tr>',
'<td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td><td class="tM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td></tr>',
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</td><td class="R"></td></tr>',
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>',
'</table>'))
,p_current_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<td><img src="#IMAGE_PREFIX#themes/theme_20/topTabL.gif" /></td>',
'<td class="t20CurrentTab"><a href="#TAB_LINK#">#TAB_LABEL#</a></td>',
'<td><img src="#IMAGE_PREFIX#themes/theme_20/topTabR.gif" /></td>',
'<td>&nbsp;</td>'))
,p_non_current_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<td><img src="#IMAGE_PREFIX#themes/theme_20/topDimTabL.gif" /></td>',
'<td class="t20Tab"><a href="#TAB_LINK#">#TAB_LABEL#</a></td>',
'<td><img src="#IMAGE_PREFIX#themes/theme_20/topDimTabR.gif" /></td>',
'<td>&nbsp;</td>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">',
'<tr>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>',
'<td class="tM"></td>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>',
'</tr>',
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</td><td class="R"></td></tr>',
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>',
'</table>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#" class="t20NavBar">#TEXT#</a> |'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="5" align="left"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>8
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(236361530992886716)
,p_theme_id=>20
,p_name=>'One Level Tabs Sidebar'
,p_internal_name=>'ONE_LEVEL_TABS_SIDEBAR'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<title>#TITLE#</title>',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/theme_3_1.css" type="text/css" />',
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/ie.css" type="text/css" /><![endif]-->',
'#APEX_CSS#',
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
'<body #ONLOAD#>#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="t20PageHeader">',
'<table border="0" cellpadding="0" cellspacing="0" summary="" width="100%">',
'<tr>',
'<td id="t20Logo" valign="top">#LOGO#<br />#REGION_POSITION_06#</td>',
'<td id="t20HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#<br /></td>',
'<td id="t20NavBar" valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>',
'</tr>',
'</table>',
'<div id="t20Tabs" class="tablight">#TAB_CELLS#</div>',
'</div>',
'<div id="t20BreadCrumbsLeft">#REGION_POSITION_01#</div>',
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageBody"  width="100%" height="70%">',
'<td valign="top" width="200" id="t20ContentLeft">#REGION_POSITION_02#<br /></td>',
'<td width="100%" valign="top" id="t20ContentBody">',
'<div id="t20Messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>',
'<div id="t20ContentMiddle">#BODY##REGION_POSITION_04#</div>',
'</td>',
'<td valign="top" width="200" id="t20ContentRight">#REGION_POSITION_03#<br /></td>',
'</tr>',
'</table>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageFooter" width="100%">',
'<tr>',
'<td id="t20Left" valign="top"><span id="t20UserPrompt">&APP_USER.</span><br /></td>',
'<td id="t20Center" valign="top">#REGION_POSITION_05#</td>',
'<td id="t20Right" valign="top"><span id="t20Customize">#CUSTOMIZE#</span><br /></td>',
'</tr>',
'</table>',
'<br class="t20Break"/>',
'#FORM_CLOSE# ',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">',
'<tr>',
'<td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td><td class="tM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td></tr>',
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</td><td class="R"></td></tr>',
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>',
'</table>'))
,p_current_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#TAB_LINK#" class="t20CurrentTab">#TAB_LABEL#</a>',
''))
,p_non_current_tab=>'<a href="#TAB_LINK#">#TAB_LABEL#</a>'
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">',
'<tr>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>',
'<td class="tM"></td>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>',
'</tr>',
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</td><td class="R"></td></tr>',
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>',
'</table>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#" class="t20NavBar">#TEXT#</a> |'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="5" align="left"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>16
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(236361730396886716)
,p_theme_id=>20
,p_name=>'One Level Tabs Sidebar (alt)'
,p_internal_name=>'ONE_LEVEL_TABS_SIDEBAR_ALT'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<title>#TITLE#</title>',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/theme_3_1.css" type="text/css" />',
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/ie.css" type="text/css" /><![endif]-->',
'#APEX_CSS#',
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
'<body #ONLOAD#>#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="t20PageHeader">',
'<table border="0" cellpadding="0" cellspacing="0" summary="" width="100%">',
'<tr>',
'<td id="t20Logo" valign="top">#LOGO#<br />#REGION_POSITION_06#</td>',
'<td id="t20HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#<br /></td>',
'<td id="t20NavBar" valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>',
'</tr>',
'</table>',
'<table id="t20Tabs" border="0" cellpadding="0" cellspacing="0" summary=""><tr>#TAB_CELLS#</tr></table>',
'</div>',
'<div id="t20BreadCrumbsLeft">#REGION_POSITION_01#</div>',
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageBody"  width="100%" height="70%">',
'<td valign="top" width="200" id="t20ContentLeft">#REGION_POSITION_02#<br /></td>',
'<td width="100%" valign="top" id="t20ContentBody">',
'<div id="t20Messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>',
'<div id="t20ContentMiddle">#BODY##REGION_POSITION_04#</div>',
'</td>',
'<td valign="top" width="200" id="t20ContentRight">#REGION_POSITION_03#<br /></td>',
'</tr>',
'</table>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageFooter" width="100%">',
'<tr>',
'<td id="t20Left" valign="top"><span id="t20UserPrompt">&APP_USER.</span><br /></td>',
'<td id="t20Center" valign="top">#REGION_POSITION_05#</td>',
'<td id="t20Right" valign="top"><span id="t20Customize">#CUSTOMIZE#</span><br /></td>',
'</tr>',
'</table>',
'<br class="t20Break"/>',
'#FORM_CLOSE# ',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">',
'<tr>',
'<td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td><td class="tM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td></tr>',
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</td><td class="R"></td></tr>',
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>',
'</table>'))
,p_current_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<td><img src="#IMAGE_PREFIX#themes/theme_20/topTabL.gif" /></td>',
'<td class="t20CurrentTab"><a href="#TAB_LINK#">#TAB_LABEL#</a></td>',
'<td><img src="#IMAGE_PREFIX#themes/theme_20/topTabR.gif" /></td>',
'<td>&nbsp;</td>'))
,p_non_current_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<td><img src="#IMAGE_PREFIX#themes/theme_20/topDimTabL.gif" /></td>',
'<td class="t20Tab"><a href="#TAB_LINK#">#TAB_LABEL#</a></td>',
'<td><img src="#IMAGE_PREFIX#themes/theme_20/topDimTabR.gif" /></td>',
'<td>&nbsp;</td>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">',
'<tr>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>',
'<td class="tM"></td>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>',
'</tr>',
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</td><td class="R"></td></tr>',
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>',
'</table>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#" class="t20NavBar">#TEXT#</a> |'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="5" align="left"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>9
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(236361917463886716)
,p_theme_id=>20
,p_name=>'Popup'
,p_internal_name=>'POPUP'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<title>#TITLE#</title>',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/theme_3_1.css" type="text/css" />',
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/ie.css" type="text/css" /><![endif]-->',
'#APEX_CSS#',
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
'<body #ONLOAD#>#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="" cellpadding="0" width="100%" cellspacing="0" border="0">',
'<tr>',
'<td valign="top">#LOGO##REGION_POSITION_06#</td>',
'<td width="100%" valign="top">#REGION_POSITION_07#</td>',
'<td valign="top">#REGION_POSITION_08#</td>',
'</table>',
'<table summary="" cellpadding="0" width="100%" cellspacing="0" border="0">',
'<tr>',
'<td width="100%" valign="top">',
'<div style="border:1px solid black;">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>',
'#BODY##REGION_POSITION_04#</td>',
'<td valign="top">#REGION_POSITION_03#<br /></td>',
'</tr>',
'</table>',
'#REGION_POSITION_05#',
''))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE##DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">',
'<tr>',
'<td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td><td class="tM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td></tr>',
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</td><td class="R"></td></tr>',
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>',
'</table>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">',
'<tr>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>',
'<td class="tM"></td>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>',
'</tr>',
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</td><td class="R"></td></tr>',
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>',
'</table>'))
,p_navigation_bar=>'<div class="t20NavigationBar">#BAR_BODY#</div>'
,p_navbar_entry=>'<a href="#LINK#" class="t20NavigationBar">#TEXT#</a>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>4
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(236362137926886717)
,p_theme_id=>20
,p_name=>'Printer Friendly'
,p_internal_name=>'PRINTER_FRIENDLY'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<title>#TITLE#</title>',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/theme_3_1.css" type="text/css" />',
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/ie.css" type="text/css" /><![endif]-->',
'#APEX_CSS#',
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
'<body #ONLOAD#>#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table border="0" cellpadding="0" cellspacing="0" summary="" width="100%">',
'<tr>',
'<td id="t20Logo" valign="top">#LOGO#<br />#REGION_POSITION_06#</td>',
'<td id="t20HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#<br /></td>',
'<td id="t20NavBar" valign="top">#REGION_POSITION_08#</td>',
'</tr>',
'</table>',
'<table summary="" cellpadding="0" width="100%" cellspacing="0" border="0" height="70%">',
'<tr>',
'<td width="100%" valign="top"><div class="t20messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>',
'#BODY##REGION_POSITION_02##REGION_POSITION_04#</td>',
'<td valign="top">#REGION_POSITION_03#<br /></td>',
'</tr>',
'</table>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageFooter" width="100%">',
'<tr>',
'<td id="t20Left" valign="top"><span id="t20UserPrompt">&APP_USER.</span><br /></td>',
'<td id="t20Center" valign="top">#REGION_POSITION_05#</td>',
'<td id="t20Right" valign="top"><span id="t20Customize">#CUSTOMIZE#</span><br /></td>',
'</tr>',
'</table>',
'<br class="t20Break"/>',
'#FORM_CLOSE# ',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">',
'<tr>',
'<td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td><td class="tM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td></tr>',
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</td><td class="R"></td></tr>',
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>',
'</table>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">',
'<tr>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>',
'<td class="tM"></td>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>',
'</tr>',
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</td><td class="R"></td></tr>',
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>',
'</table>'))
,p_navigation_bar=>'<div class="t20NavigationBar">#BAR_BODY#</div>'
,p_navbar_entry=>'<a href="#LINK#" class="t20NavigationBar">#TEXT#</a>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>5
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
,p_template_comment=>'3'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(236362337194886717)
,p_theme_id=>20
,p_name=>'Two Level Tabs'
,p_internal_name=>'TWO_LEVEL_TABS'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<title>#TITLE#</title>',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/theme_3_1.css" type="text/css" />',
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/ie.css" type="text/css" /><![endif]-->',
'#APEX_CSS#',
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
'<body #ONLOAD#>#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="t20PageHeader">',
'<table border="0" cellpadding="0" cellspacing="0" summary="" width="100%">',
'<tr>',
'<td id="t20Logo" valign="top">#LOGO#<br />#REGION_POSITION_06#</td>',
'<td id="t20HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#<br /></td>',
'<td id="t20NavBar" valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>',
'</tr>',
'</table>',
'<table id="t20Tabs" border="0" cellpadding="0" cellspacing="0" summary=""><tr>#PARENT_TAB_CELLS#</tr></table>',
'</div>',
'<div id="t20ChildTabs">#TAB_CELLS#</div>',
'<div style="background-color:none;">#REGION_POSITION_01#</div>',
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageBody"  width="100%" height="70%">',
'<td valign="top" id="t20ContentBody">',
'<div id="t20Messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>',
'<div id="t20ContentMiddle">#BODY##REGION_POSITION_02##REGION_POSITION_04#</div>',
'</td>',
'<td valign="top" width="200" id="t20ContentRight">#REGION_POSITION_03#<br /></td>',
'</tr>',
'</table>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageFooter" width="100%">',
'<tr>',
'<td id="t20Left" valign="top"><span id="t20UserPrompt">&APP_USER.</span><br /></td>',
'<td id="t20Center" valign="top">#REGION_POSITION_05#</td>',
'<td id="t20Right" valign="top"><span id="t20Customize">#CUSTOMIZE#</span><br /></td>',
'</tr>',
'</table>',
'<br class="t20Break"/>',
'#FORM_CLOSE# ',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">',
'<tr>',
'<td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td><td class="tM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td></tr>',
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</td><td class="R"></td></tr>',
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>',
'</table>'))
,p_current_tab=>'<a href="#TAB_LINK#" class="t20CurrentTab">#TAB_LABEL#</a>'
,p_non_current_tab=>'<a href="#TAB_LINK#" class="t20Tab">#TAB_LABEL#</a>'
,p_top_current_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<td><img src="#IMAGE_PREFIX#themes/theme_20/topTabL.gif" /></td>',
'<td class="t20CurrentTab"><a href="#TAB_LINK#">#TAB_LABEL#</a></td>',
'<td><img src="#IMAGE_PREFIX#themes/theme_20/topTabR.gif" /></td>',
'<td>&nbsp;</td>'))
,p_top_non_curr_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<td><img src="#IMAGE_PREFIX#themes/theme_20/topDimTabL.gif" /></td>',
'<td class="t20Tab"><a href="#TAB_LINK#">#TAB_LABEL#</a></td>',
'<td><img src="#IMAGE_PREFIX#themes/theme_20/topDimTabR.gif" /></td>',
'<td>&nbsp;</td>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">',
'<tr>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>',
'<td class="tM"></td>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>',
'</tr>',
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</td><td class="R"></td></tr>',
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>',
'</table>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#" class="t20NavBar">#TEXT#</a> |'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="5" align="left"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>2
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(236362514009886717)
,p_theme_id=>20
,p_name=>'Two Level Tabs with Sidebar'
,p_internal_name=>'TWO_LEVEL_TABS_WITH_SIDEBAR'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<title>#TITLE#</title>',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/theme_3_1.css" type="text/css" />',
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/ie.css" type="text/css" /><![endif]-->',
'#APEX_CSS#',
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
'<body #ONLOAD#>#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="t20PageHeader">',
'<table border="0" cellpadding="0" cellspacing="0" summary="" width="100%">',
'<tr>',
'<td id="t20Logo" valign="top">#LOGO#<br />#REGION_POSITION_06#</td>',
'<td id="t20HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#<br /></td>',
'<td id="t20NavBar" valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>',
'</tr>',
'</table>',
'<table id="t20Tabs" border="0" cellpadding="0" cellspacing="0" summary=""><tr>#PARENT_TAB_CELLS#</tr></table>',
'</div>',
'<div id="t20ChildTabs">#TAB_CELLS#</div>',
'<div style="background-color:none;">#REGION_POSITION_01#</div>',
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageBody"  width="100%" height="70%">',
'<td valign="top" width="200" id="t20ContentLeft">#REGION_POSITION_02#<br /></td>',
'<td valign="top" id="t20ContentBody">',
'<div id="t20Messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>',
'<div id="t20ContentMiddle">#BODY##REGION_POSITION_04#</div>',
'</td>',
'<td valign="top" width="200" id="t20ContentRight">#REGION_POSITION_03#<br /></td>',
'</tr>',
'</table>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageFooter" width="100%">',
'<tr>',
'<td id="t20Left" valign="top"><span id="t20UserPrompt">&APP_USER.</span><br /></td>',
'<td id="t20Center" valign="top">#REGION_POSITION_05#</td>',
'<td id="t20Right" valign="top"><span id="t20Customize">#CUSTOMIZE#</span><br /></td>',
'</tr>',
'</table>',
'<br class="t20Break"/>',
'#FORM_CLOSE# ',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">',
'<tr>',
'<td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td><td class="tM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td></tr>',
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</td><td class="R"></td></tr>',
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>',
'</table>'))
,p_current_tab=>'<a href="#TAB_LINK#" class="t20CurrentTab">#TAB_LABEL#</a>'
,p_non_current_tab=>'<a href="#TAB_LINK#" class="t20Tab">#TAB_LABEL#</a>'
,p_top_current_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<td><img src="#IMAGE_PREFIX#themes/theme_20/topTabL.gif" /></td>',
'<td class="t20CurrentTab"><a href="#TAB_LINK#">#TAB_LABEL#</a></td>',
'<td><img src="#IMAGE_PREFIX#themes/theme_20/topTabR.gif" /></td>',
'<td>&nbsp;</td>'))
,p_top_non_curr_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<td><img src="#IMAGE_PREFIX#themes/theme_20/topDimTabL.gif" /></td>',
'<td class="t20Tab"><a href="#TAB_LINK#">#TAB_LABEL#</a></td>',
'<td><img src="#IMAGE_PREFIX#themes/theme_20/topDimTabR.gif" /></td>',
'<td>&nbsp;</td>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">',
'<tr>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>',
'<td class="tM"></td>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>',
'</tr>',
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</td><td class="R"></td></tr>',
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>',
'</table>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#" class="t20NavBar">#TEXT#</a> |'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="5" align="left"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>18
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(2413082000116)
,p_template_name=>'HTML button (legacy - APEX 5 migration)'
,p_internal_name=>'HTML_BUTTON_LEGACY_APEX_5_MIGRATION'
,p_template=>' <input type="button" value="#LABEL#" onclick="#JAVASCRIPT#" id="#BUTTON_ID#" class="#BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#/>'
,p_hot_template=>' <input type="button" value="#LABEL#" onclick="#JAVASCRIPT#" id="#BUTTON_ID#" class="#BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#/>'
,p_translate_this_template=>'N'
,p_theme_class_id=>13
,p_theme_id=>20
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(236362715319886717)
,p_template_name=>'Button'
,p_internal_name=>'BUTTON'
,p_template=>'<a href="#LINK#" class="t20Button">#LABEL#</a>'
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_template_comment=>'Standard Button'
,p_theme_id=>20
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(236362917826886718)
,p_template_name=>'Button, Alternative 1'
,p_internal_name=>'BUTTON,_ALTERNATIVE_1'
,p_template=>'<a href="#LINK#" class="t20Button2">#LABEL#</a>'
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_template_comment=>'XP Square FFFFFF'
,p_theme_id=>20
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(236363111741886719)
,p_template_name=>'Button, Alternative 2'
,p_internal_name=>'BUTTON,_ALTERNATIVE_2'
,p_template=>'<a href="#LINK#" class="t20Button">#LABEL#</a>'
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_template_comment=>'Standard Button'
,p_theme_id=>20
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(236363337587886719)
,p_template_name=>'Button, Alternative 3'
,p_internal_name=>'BUTTON,_ALTERNATIVE_3'
,p_template=>'<a href="#LINK#" class="t20Button">#LABEL#</a>'
,p_translate_this_template=>'N'
,p_theme_class_id=>2
,p_template_comment=>'Standard Button'
,p_theme_id=>20
);
end;
/
prompt --application/shared_components/user_interface/templates/region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(236363528965886719)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="t20Region t20Borderless" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>',
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</th></tr></thead>',
'<tbody id="#REGION_STATIC_ID#_body">',
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>',
'<tr><td class="t20RegionBody">#BODY#</td></tr>',
'</tbody>',
'</table>'))
,p_page_plug_template_name=>'Borderless Region'
,p_internal_name=>'BORDERLESS_REGION'
,p_plug_table_bgcolor=>'#f7f7e7'
,p_theme_id=>20
,p_theme_class_id=>7
,p_plug_heading_bgcolor=>'#f7f7e7'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(236363821762886720)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="t20Region t20Bracketed" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>',
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</th></tr></thead>',
'<tbody id="#REGION_STATIC_ID#_body">',
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>',
'<tr><td class="t20RegionBody">#BODY#</td></tr>',
'</tbody>',
'</table>'))
,p_page_plug_template_name=>'Bracketed Region'
,p_internal_name=>'BRACKETED_REGION'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>20
,p_theme_class_id=>18
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(236364112836886720)
,p_layout=>'TABLE'
,p_template=>'<div id="#REGION_STATIC_ID#" class="t20Breadcrumbs" #REGION_ATTRIBUTES#>#BODY#</div>'
,p_page_plug_template_name=>'Breadcrumb Region'
,p_internal_name=>'BREADCRUMB_REGION'
,p_theme_id=>20
,p_theme_class_id=>6
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(236364417493886720)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="t20Region t20ButtonRegionwithTitle" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>',
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</th></tr></thead>',
'<tbody id="#REGION_STATIC_ID#_body">',
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>',
'</tbody>',
'</table>#BODY#'))
,p_page_plug_template_name=>'Button Region with Title'
,p_internal_name=>'BUTTON_REGION_WITH_TITLE'
,p_theme_id=>20
,p_theme_class_id=>4
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(236364709917886720)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="t20Region t20ButtonRegionwithoutTitle" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>',
'<tbody id="#REGION_STATIC_ID#_body">',
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>',
'</tbody>',
'</table>#BODY#'))
,p_page_plug_template_name=>'Button Region without Title'
,p_internal_name=>'BUTTON_REGION_WITHOUT_TITLE'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>20
,p_theme_class_id=>17
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(236365036690886721)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="t20Region t20ChartRegion" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>',
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</th></tr></thead>',
'<tbody id="#REGION_STATIC_ID#_body">',
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>',
'<tr><td class="t20RegionBody">#BODY#</td></tr>',
'</tbody>',
'</table>'))
,p_page_plug_template_name=>'Chart Region'
,p_internal_name=>'CHART_REGION'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>20
,p_theme_class_id=>30
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(236365316706886721)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="t20Region t20FormRegion" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>',
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</th></tr></thead>',
'<tbody id="#REGION_STATIC_ID#_body">',
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>',
'<tr><td class="t20RegionBody">#BODY#</td></tr>',
'</tbody>',
'</table>'))
,p_page_plug_template_name=>'Form Region'
,p_internal_name=>'FORM_REGION'
,p_plug_table_bgcolor=>'#f7f7e7'
,p_theme_id=>20
,p_theme_class_id=>8
,p_plug_heading_bgcolor=>'#f7f7e7'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(236365622763886721)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="t20Region t20HideShow" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>',
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header"><img src="#IMAGE_PREFIX#themes/theme_20/collapse_plus.gif" onclick="htmldb_ToggleWithImage(this,''#REGION_STATIC_ID#_body'')" class="pb" alt="" />#TITLE#</th></tr></thead>',
'<tbody id="#REGION_STATIC_ID#_body" style="display:none;">',
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>',
'<tr><td class="t20RegionBody">#BODY#</td></tr>',
'</tbody>',
'</table>'))
,p_page_plug_template_name=>'Hide and Show Region'
,p_internal_name=>'HIDE_AND_SHOW_REGION'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>20
,p_theme_class_id=>1
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(236365907286886721)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="t20Region t20ListRegionwithIcon" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>',
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</th></tr></thead>',
'<tbody id="#REGION_STATIC_ID#_body">',
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>',
'<tr><td class="t20RegionBody">#BODY#</td></tr>',
'</tbody>',
'</table>'))
,p_page_plug_template_name=>'List Region with Icon (Chart)'
,p_internal_name=>'LIST_REGION_WITH_ICON_CHART'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>20
,p_theme_class_id=>29
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(236366220932886721)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t20Region t20NavRegion" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<div class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</div>',
'<div id="#REGION_STATIC_ID#_body" class="t20RegionBody">#BODY#</div>',
'</div>'))
,p_page_plug_template_name=>'Navigation Region'
,p_internal_name=>'NAVIGATION_REGION'
,p_theme_id=>20
,p_theme_class_id=>5
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(236366512178886722)
,p_layout=>'TABLE'
,p_template=>'<div class="t20Region t20NavRegionAlt" id="#REGION_STATIC_ID#"#REGION_ATTRIBUTES#><div class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</div><div id="#REGION_STATIC_ID#_body" class="t20RegionBody">#BODY#</div></div>'
,p_page_plug_template_name=>'Navigation Region, Alternative 1'
,p_internal_name=>'NAVIGATION_REGION,_ALTERNATIVE_1'
,p_theme_id=>20
,p_theme_class_id=>16
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(236366838397886722)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="t20Region t20RegionwithoutButtonsandTitle" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>',
'<tbody id="#REGION_STATIC_ID#_body">',
'<tr><td class="t20RegionBody">#BODY#</td></tr>',
'</tbody>',
'</table>'))
,p_page_plug_template_name=>'Region without Buttons and Title'
,p_internal_name=>'REGION_WITHOUT_BUTTONS_AND_TITLE'
,p_theme_id=>20
,p_theme_class_id=>19
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(236367110603886722)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="t20Region t20RegionwithoutTitle" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>',
'<tbody id="#REGION_STATIC_ID#_body">',
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>',
'<tr><td class="t20RegionBody">#BODY#</td></tr>',
'</tbody>',
'</table>'))
,p_page_plug_template_name=>'Region without Title'
,p_internal_name=>'REGION_WITHOUT_TITLE'
,p_theme_id=>20
,p_theme_class_id=>11
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(236367438443886722)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="apex_finderbar" cellpadding="0" cellspacing="0" border="0" summary="" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<tbody>',
'<tr>',
'<td class="apex_finderbar_left_top" valign="top"><img src="#IMAGE_PREFIX#1px_trans.gif" width="10" height="8" alt=""  class="spacer" alt="" /></td>',
'<td class="apex_finderbar_middle" rowspan="3" valign="middle"><img src="#IMAGE_PREFIX#htmldb/builder/builder_find.png" /></td>',
'<td class="apex_finderbar_middle" rowspan="3" valign="middle" style="">#BODY#</td>',
'<td class="apex_finderbar_left" rowspan="3" width="10"><br /></td>',
'<td class="apex_finderbar_buttons" rowspan="3" valign="middle" nowrap="nowrap"><span class="apex_close">#CLOSE#</span><span>#EDIT##CHANGE##DELETE##CREATE##CREATE2##COPY##PREVIOUS##NEXT##EXPAND##HELP#</span></td>',
'</tr>',
'<tr><td class="apex_finderbar_left_middle"><br /></td></tr>',
'<tr>',
'<td class="apex_finderbar_left_bottom" valign="bottom"><img src="#IMAGE_PREFIX#1px_trans.gif" width="10" height="8"  class="spacer" alt="" /></td>',
'</tr>',
'</tbody>',
'</table>'))
,p_page_plug_template_name=>'Report Filter - Single Row'
,p_internal_name=>'REPORT_FILTER_SINGLE_ROW'
,p_theme_id=>20
,p_theme_class_id=>31
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(236367724657886722)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="t20Region t20ReportList" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>',
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</th></tr></thead>',
'<tbody id="#REGION_STATIC_ID#_body">',
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>',
'<tr><td class="t20RegionBody">#BODY#</td></tr>',
'</tbody>',
'</table>'))
,p_page_plug_template_name=>'Report List'
,p_internal_name=>'REPORT_LIST'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>20
,p_theme_class_id=>29
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(236368017736886723)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="t20Region t20ReportsRegion" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>',
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</th></tr></thead>',
'<tbody id="#REGION_STATIC_ID#_body">',
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>',
'<tr><td class="t20RegionBody">#BODY#</td></tr>',
'</tbody>',
'</table>'))
,p_page_plug_template_name=>'Reports Region'
,p_internal_name=>'REPORTS_REGION'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>20
,p_theme_class_id=>9
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(236368308260886723)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="t20Region t20ReportsRegion100" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>',
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</th></tr></thead>',
'<tbody id="#REGION_STATIC_ID#_body">',
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>',
'<tr><td class="t20RegionBody">#BODY#</td></tr>',
'</tbody>',
'</table>'))
,p_page_plug_template_name=>'Reports Region 100% Width'
,p_internal_name=>'REPORTS_REGION_100%_WIDTH'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>20
,p_theme_class_id=>13
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(236368624248886723)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="t20Region t20ReportsRegionAlt" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>',
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</th></tr></thead>',
'<tbody id="#REGION_STATIC_ID#_body">',
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>',
'<tr><td class="t20RegionBody">#BODY#</td></tr>',
'</tbody>',
'</table>'))
,p_page_plug_template_name=>'Reports Region, Alternative 1'
,p_internal_name=>'REPORTS_REGION,_ALTERNATIVE_1'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>20
,p_theme_class_id=>10
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(236368923434886723)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="t20Region t20SidebarRegion" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>',
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</th></tr></thead>',
'<tbody id="#REGION_STATIC_ID#_body">',
'<tr><td class="t20RegionBody">#BODY#</td></tr>',
'</tbody>',
'</table>'))
,p_page_plug_template_name=>'Sidebar Region'
,p_internal_name=>'SIDEBAR_REGION'
,p_plug_table_bgcolor=>'#f7f7e7'
,p_theme_id=>20
,p_theme_class_id=>2
,p_plug_heading_bgcolor=>'#f7f7e7'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(236369209919886723)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="t20Region t20SidebarRegionAlt" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>',
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</th></tr></thead>',
'<tbody id="#REGION_STATIC_ID#_body">',
'<tr><td class="t20RegionBody">#BODY#</td></tr>',
'</tbody>',
'</table>'))
,p_page_plug_template_name=>'Sidebar Region, Alternative 1'
,p_internal_name=>'SIDEBAR_REGION,_ALTERNATIVE_1'
,p_plug_table_bgcolor=>'#f7f7e7'
,p_theme_id=>20
,p_theme_class_id=>3
,p_plug_heading_bgcolor=>'#f7f7e7'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(236369527082886724)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="t20Region t20WizardRegion" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>',
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</th></tr></thead>',
'<tbody id="#REGION_STATIC_ID#_body">',
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>',
'<tr><td class="t20RegionBody">#BODY#</td></tr>',
'</tbody>',
'</table>'))
,p_page_plug_template_name=>'Wizard Region'
,p_internal_name=>'WIZARD_REGION'
,p_theme_id=>20
,p_theme_class_id=>12
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(236369823797886724)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="t20Region t20WizardRegionIcon" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>',
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</th></tr></thead>',
'<tbody id="#REGION_STATIC_ID#_body">',
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>',
'<tr><td class="t20RegionBody">#BODY#</td></tr>',
'</tbody>',
'</table>'))
,p_page_plug_template_name=>'Wizard Region with Icon'
,p_internal_name=>'WIZARD_REGION_WITH_ICON'
,p_theme_id=>20
,p_theme_class_id=>20
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(236370110306886724)
,p_list_template_current=>'<a href="#LINK#" class="t20Button t20current">#TEXT#</a>'
,p_list_template_noncurrent=>'<a href="#LINK#" class="t20Button">#TEXT#</a>'
,p_list_template_name=>'Button List'
,p_internal_name=>'BUTTON_LIST'
,p_theme_id=>20
,p_theme_class_id=>6
,p_list_template_before_rows=>'<div class="t20ButtonList">'
,p_list_template_after_rows=>'</div>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(236370433697886725)
,p_list_template_current=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Hierarchical Expanded'
,p_internal_name=>'HIERARCHICAL_EXPANDED'
,p_theme_id=>20
,p_theme_class_id=>23
,p_list_template_before_rows=>'<ul class="htmlTree">'
,p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>'
,p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_item_templ_noncurr_w_child=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_sub_templ_curr_w_child=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li><a href="#LINK#">#TEXT#</a></li>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(236370733195886725)
,p_list_template_current=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle" alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle"  alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Hierarchical Expanding'
,p_internal_name=>'HIERARCHICAL_EXPANDING'
,p_theme_id=>20
,p_theme_class_id=>22
,p_list_template_before_rows=>'<ul class="dhtmlTree">'
,p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>'
,p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" style="display:none;" class="dhtmlTree">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle"  alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_sub_list_item_noncurrent=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif"  align="middle" alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" align="middle"  onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" class="pseudoButtonInactive" /><a href="#LINK#">#TEXT#</a></li>'
,p_item_templ_noncurr_w_child=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" align="middle"  onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" class="pseudoButtonInactive" /><a href="#LINK#">#TEXT#</a></li>'
,p_sub_templ_curr_w_child=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" align="middle" class="pseudoButtonInactive" /><a href="#LINK#">#TEXT#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" align="middle" class="pseudoButtonInactive" /><a href="#LINK#">#TEXT#</a></li>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(236371028671886726)
,p_list_template_current=>'<td class="t20current"><img src="#IMAGE_PREFIX##IMAGE#" border="0" #IMAGE_ATTR#/><br />#TEXT#</td>'
,p_list_template_noncurrent=>'<td><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" border="0" #IMAGE_ATTR#/></a><br /><a href="#LINK#">#TEXT#</a></td>'
,p_list_template_name=>'Horizontal Images with Label List'
,p_internal_name=>'HORIZONTAL_IMAGES_WITH_LABEL_LIST'
,p_theme_id=>20
,p_theme_class_id=>4
,p_list_template_before_rows=>'<table class="t20HorizontalImageswithLabelList" cellpadding="0" border="0" cellspacing="0" summary=""><tr>'
,p_list_template_after_rows=>'</tr></table>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(236371314053886726)
,p_list_template_current=>'<a href="#LINK#" class="t20current">#TEXT#</a>'
,p_list_template_noncurrent=>'<a href="#LINK#">#TEXT#</a>'
,p_list_template_name=>'Horizontal Links List'
,p_internal_name=>'HORIZONTAL_LINKS_LIST'
,p_theme_id=>20
,p_theme_class_id=>3
,p_list_template_before_rows=>'<div class="t20HorizontalLinksList">'
,p_list_template_after_rows=>'</div>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(236371607899886726)
,p_list_template_current=>'<li class="dhtmlMenuItem"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li class="dhtmlMenuItem"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Pull Down Menu'
,p_internal_name=>'PULL_DOWN_MENU'
,p_theme_id=>20
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="dhtmlMenuLG2">'
,p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>'
,p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu2" style="display:none;">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="dhtmlMenuSep2"><img src="#IMAGE_PREFIX#themes/theme_13/1px_trans.gif"  width="1" height="1" alt="" class="dhtmlMenuSep2" /></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>'<li class="dhtmlMenuItem1"><a href="#LINK#">#TEXT#</a><img src="#IMAGE_PREFIX#themes/theme_13/menu_small.gif" alt="Expand" onclick="app_AppMenuMultiOpenBottom2(this,''#LIST_ITEM_ID#'',false)" /></li>'
,p_item_templ_noncurr_w_child=>'<li class="dhtmlMenuItem1"><a href="#LINK#">#TEXT#</a><img src="#IMAGE_PREFIX#themes/theme_13/menu_small.gif" alt="Expand" onclick="app_AppMenuMultiOpenBottom2(this,''#LIST_ITEM_ID#'',false)" /></li>'
,p_sub_templ_curr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>'
,p_sub_templ_noncurr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(236371916778886727)
,p_list_template_current=>'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#menu/drop_down.png" width="20" height="128" alt="" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>'
,p_list_template_noncurrent=>'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#menu/drop_down.png" width="20" height="128" alt=""  /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>'
,p_list_template_name=>'Pull Down Menu with Image'
,p_internal_name=>'PULL_DOWN_MENU_WITH_IMAGE'
,p_theme_id=>20
,p_theme_class_id=>21
,p_list_template_before_rows=>'<div class="dhtmlMenuLG">'
,p_list_template_after_rows=>'</div><br style="clear:both;"/><br style="clear:both;"/>'
,p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu2" style="display:none;"><li class="dhtmlSubMenuP" onmouseover="dhtml_CloseAllSubMenusL(this)">#PARENT_TEXT#</li>'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="dhtmlMenuSep"><img src="#IMAGE_PREFIX#themes/theme_13/1px_trans.gif"  width="1" height="1" alt=""  class="dhtmlMenuSep" /></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#menu/drop_down.png" width="20" height="128" alt=""  class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom(this,''#LIST_ITEM_ID#'',fa'
||'lse)" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>'
,p_item_templ_noncurr_w_child=>'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#menu/drop_down.png" width="20" height="128" alt=""  class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom(this,''#LIST_ITEM_ID#'',fa'
||'lse)" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>'
,p_sub_templ_curr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>'
,p_sub_templ_noncurr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(236372222024886727)
,p_list_template_current=>'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/generic_list.gif" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#themes/generic_nochild.gif" width="22" height="75" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>'
,p_list_template_noncurrent=>'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/generic_list.gif" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#themes/generic_nochild.gif" width="22" height="75" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>'
,p_list_template_name=>'Pull Down Menu with Image (Custom 1)'
,p_internal_name=>'PULL_DOWN_MENU_WITH_IMAGE_CUSTOM_1'
,p_theme_id=>20
,p_theme_class_id=>9
,p_list_template_before_rows=>'<div class="dhtmlMenuLG">'
,p_list_template_after_rows=>'</div><br style="clear:both;"/><br style="clear:both;"/>'
,p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu2" style="display:none;"><li class="dhtmlSubMenuP" onmouseover="dhtml_CloseAllSubMenusL(this)">#PARENT_TEXT#</li>'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="dhtmlMenuSep"><img src="#IMAGE_PREFIX#themes/theme_13/1px_trans.gif"  width="1" height="1" alt=""  class="dhtmlMenuSep" /></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/generic_list.gif" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#themes/generic_open.gif" width="22" height="75" class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom(this,''#LIST_'
||'ITEM_ID#'',false)" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>'
,p_item_templ_noncurr_w_child=>'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/generic_list.gif" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#themes/generic_open.gif" width="22" height="75" class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom(this,''#LIST_'
||'ITEM_ID#'',false)" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>'
,p_sub_templ_curr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>'
,p_sub_templ_noncurr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(236372526608886727)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<td><img src="#IMAGE_PREFIX#themes/theme_20/topTabL.gif" /></td>',
'<td class="t20CurrentTab"><a href="#LINK#">#TEXT#</a></td>',
'<td><img src="#IMAGE_PREFIX#themes/theme_20/topTabR.gif" /></td>',
'<td>&nbsp;</td>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<td><img src="#IMAGE_PREFIX#themes/theme_20/topDimTabL.gif" /></td>',
'<td class="t20Tab"><a href="#LINK#">#TEXT#</a></td>',
'<td><img src="#IMAGE_PREFIX#themes/theme_20/topDimTabR.gif" /></td>',
'<td>&nbsp;</td>'))
,p_list_template_name=>'Tabbed Navigation List'
,p_internal_name=>'TABBED_NAVIGATION_LIST'
,p_theme_id=>20
,p_theme_class_id=>7
,p_list_template_before_rows=>'<table class="t20Tabs" border="0" cellpadding="0" cellspacing="0" summary=""><tr>'
,p_list_template_after_rows=>'</tr></table>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(236372832416886728)
,p_list_template_current=>'<tr><td class="t20current"><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# />#TEXT#</a></td></tr>'
,p_list_template_noncurrent=>'<tr><td><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# />#TEXT#</a></td></tr>'
,p_list_template_name=>'Vertical Images List'
,p_internal_name=>'VERTICAL_IMAGES_LIST'
,p_theme_id=>20
,p_theme_class_id=>5
,p_list_template_before_rows=>'<table border="0" cellpadding="0" cellspacing="0" summary="" class="t20VerticalImagesList">'
,p_list_template_after_rows=>'</table>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(236373109802886728)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<tr><td align="left"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></td><td align="left"><a href="#LINK#">#TEXT#</a></td></tr>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<tr><td align="left"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></td><td align="left"><a href="#LINK#">#TEXT#</a></td></tr>',
''))
,p_list_template_name=>'Vertical Images List (Custom 2)'
,p_internal_name=>'VERTICAL_IMAGES_LIST_CUSTOM_2'
,p_theme_id=>20
,p_theme_class_id=>10
,p_list_template_before_rows=>'<table border="0" cellpadding="5" cellspacing="10" summary="" >'
,p_list_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
''))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(236373411533886728)
,p_list_template_current=>'<li class="t20current"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Ordered List'
,p_internal_name=>'VERTICAL_ORDERED_LIST'
,p_theme_id=>20
,p_theme_class_id=>2
,p_list_template_before_rows=>'<ol class="t20VerticalOrderedList">'
,p_list_template_after_rows=>'</ol>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(236373731456886728)
,p_list_template_current=>'<a href="#LINK#" class="current">#TEXT#</a>'
,p_list_template_noncurrent=>'<a href="#LINK#">#TEXT#</a>'
,p_list_template_name=>'Vertical Sidebar List'
,p_internal_name=>'VERTICAL_SIDEBAR_LIST'
,p_theme_id=>20
,p_theme_class_id=>19
,p_list_template_before_rows=>'<div class="t20VerticalSidebarList">'
,p_list_template_after_rows=>'</div>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(236374019271886729)
,p_list_template_current=>'<li class="t20current"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Unordered Links without Bullets'
,p_internal_name=>'VERTICAL_UNORDERED_LINKS_WITHOUT_BULLETS'
,p_theme_id=>20
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="t20VerticalUnorderedLinkswithoutBullets">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(236374331644886729)
,p_list_template_current=>'<li class="t20current"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Unordered List with Bullets'
,p_internal_name=>'VERTICAL_UNORDERED_LIST_WITH_BULLETS'
,p_theme_id=>20
,p_theme_class_id=>1
,p_list_template_before_rows=>'<ul class="t20VerticalUnorderedListwithBullets">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(236374607891886729)
,p_list_template_current=>'<div class="t20current">#TEXT#</div>'
,p_list_template_noncurrent=>'<div>#TEXT#</div>'
,p_list_template_name=>'Wizard Progress List'
,p_internal_name=>'WIZARD_PROGRESS_LIST'
,p_theme_id=>20
,p_theme_class_id=>17
,p_list_template_before_rows=>'<div class="t20WizardProgressList">'
,p_list_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<center>&DONE.</center>',
'</div>'))
);
end;
/
prompt --application/shared_components/user_interface/templates/report
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(236374929019886729)
,p_row_template_name=>'Borderless'
,p_internal_name=>'BORDERLESS'
,p_row_template1=>'<td headers="#COLUMN_HEADER_NAME#" #ALIGNMENT# class="t20data">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellpadding="0" border="0" cellspacing="0" summary="" class="t20Report" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#',
'<tr><td><table class="t20Borderless t20Report" cellpadding="0" border="0" cellspacing="0" summary="">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table><div class="t20CVS">#EXTERNAL_LINK##CSV_LINK#</div></td></tr>#PAGINATION#</table>',
''))
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_column_heading_template=>'<th class="t20ReportHeader"#ALIGNMENT# id="#COLUMN_HEADER_NAME#">#COLUMN_HEADER#</th>'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="t20pagination">#PAGINATION_NEXT# &gt;</a>'
,p_previous_page_template=>'<a href="#LINK#" class="t20pagination">&lt;#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="t20pagination">#PAGINATION_NEXT_SET#&gt;&gt;</a>'
,p_previous_set_template=>'<a href="#LINK#" class="t20pagination">&lt;&lt;#PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_checked=>'#CCCCCC'
,p_theme_id=>20
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(236374929019886729)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(236375416228886732)
,p_row_template_name=>'Horizontal Border'
,p_internal_name=>'HORIZONTAL_BORDER'
,p_row_template1=>'<td headers="#COLUMN_HEADER_NAME#" #ALIGNMENT# class="t20data">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellpadding="0" border="0" cellspacing="0" summary="" class="t20Report" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#',
'<tr><td><table class="t20HorizontalBorder t20Report" border="0" cellpadding="0" cellspacing="0" summary="">'))
,p_row_template_after_rows=>'</table><div class="t20CVS">#EXTERNAL_LINK##CSV_LINK#</div></td></tr>#PAGINATION#</table>'
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_column_heading_template=>'<th class="t20ReportHeader"  id="#COLUMN_HEADER_NAME#" #ALIGNMENT#>#COLUMN_HEADER#</th>'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="t20pagination">#PAGINATION_NEXT# &gt;</a>'
,p_previous_page_template=>'<a href="#LINK#" class="t20pagination">&lt;#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="t20pagination">#PAGINATION_NEXT_SET#&gt;&gt;</a>'
,p_previous_set_template=>'<a href="#LINK#" class="t20pagination">&lt;&lt;#PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_checked=>'#CCCCCC'
,p_theme_id=>20
,p_theme_class_id=>2
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(236375416228886732)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(236375939367886732)
,p_row_template_name=>'One Column Unordered List'
,p_internal_name=>'ONE_COLUMN_UNORDERED_LIST'
,p_row_template1=>'#COLUMN_VALUE#'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table border="0" cellpadding="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">',
'#TOP_PAGINATION#<tr><td><ul class="t20OneColumnUnorderedList">'))
,p_row_template_after_rows=>'</ul><div class="t20CVS">#EXTERNAL_LINK##CSV_LINK#</div></td></tr>#PAGINATION#</table>'
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="t20pagination">#PAGINATION_NEXT# &gt;</a>'
,p_previous_page_template=>'<a href="#LINK#" class="t20pagination">&lt;#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="t20pagination">#PAGINATION_NEXT_SET#&gt;&gt;</a>'
,p_previous_set_template=>'<a href="#LINK#" class="t20pagination">&lt;&lt;#PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>20
,p_theme_class_id=>3
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(236375939367886732)
,p_row_template_before_first=>'<li>'
,p_row_template_after_last=>'</li>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(236376421544886732)
,p_row_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_row_template1=>'<td #ALIGNMENT# headers="#COLUMN_HEADER#" class="t20data">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellpadding="0" border="0" cellspacing="0" summary="" class="t20Report" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#',
'<tr><td><table cellpadding="0" border="0" cellspacing="0" summary="" class="t20Report t20Standard">'))
,p_row_template_after_rows=>'</table><div class="t20CVS">#CSV_LINK#</div></td></tr>#PAGINATION#</table>'
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_column_heading_template=>'<th class="t20ReportHeader"#ALIGNMENT# id="#COLUMN_HEADER_NAME#">#COLUMN_HEADER#</th>'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="t20pagination">#PAGINATION_NEXT# &gt;</a>'
,p_previous_page_template=>'<a href="#LINK#" class="t20pagination">&lt;#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="t20pagination">#PAGINATION_NEXT_SET#&gt;&gt;</a>'
,p_previous_set_template=>'<a href="#LINK#" class="t20pagination">&lt;&lt;#PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>20
,p_theme_class_id=>4
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(236376421544886732)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(236376912958886733)
,p_row_template_name=>'Standard (PPR)'
,p_internal_name=>'STANDARD_PPR'
,p_row_template1=>'<td #ALIGNMENT# headers="#COLUMN_HEADER#" class="t20data">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="report#REGION_ID#"><htmldb:#REGION_ID#><table cellpadding="0" border="0" cellspacing="0" summary="" class="t20Report" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#',
'<tr><td><table cellpadding="0" border="0" cellspacing="0" summary="" class="t20Standard t20Report">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table><div class="t20CVS">#EXTERNAL_LINK##CSV_LINK#</div></td></tr>#PAGINATION#</table><script language=JavaScript type=text/javascript>',
'<!--',
'init_htmlPPRReport(''#REGION_ID#'');',
'',
'//-->',
'</script>',
'</htmldb:#REGION_ID#>',
'</div>'))
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_column_heading_template=>'<th class="t20ReportHeader"#ALIGNMENT# id="#COLUMN_HEADER_NAME#">#COLUMN_HEADER#</th>'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" class="t20pagination">#PAGINATION_NEXT# &gt;</a>'
,p_previous_page_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" class="t20pagination">&lt;#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" class="t20pagination">#PAGINATION_NEXT_SET#&gt;&gt;</a>'
,p_previous_set_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" class="t20pagination">&lt;&lt;#PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_checked=>'#CCCCCC'
,p_theme_id=>20
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(236376912958886733)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(236377425898886733)
,p_row_template_name=>'Standard, Alternating Row Colors'
,p_internal_name=>'STANDARD,_ALTERNATING_ROW_COLORS'
,p_row_template1=>'<td headers="#COLUMN_HEADER_NAME#" #ALIGNMENT# class="t20data">#COLUMN_VALUE#</td>'
,p_row_template2=>'<td headers="#COLUMN_HEADER_NAME#" #ALIGNMENT# class="t20dataalt">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table border="0" cellpadding="0" cellspacing="0" summary="" class="t20Report" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#',
'<tr><td><table border="0" cellpadding="0" cellspacing="0" summary="" class="t20StandardAlternatingRowColors t20Report">'))
,p_row_template_after_rows=>'</table><div class="t20CVS">#EXTERNAL_LINK##CSV_LINK#</div></td></tr>#PAGINATION#</table>'
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_column_heading_template=>'<th class="t20ReportHeader"#ALIGNMENT# id="#COLUMN_HEADER_NAME#">#COLUMN_HEADER#</th>'
,p_row_template_display_cond1=>'ODD_ROW_NUMBERS'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'ODD_ROW_NUMBERS'
,p_next_page_template=>'<a href="#LINK#" class="t20pagination">#PAGINATION_NEXT# &gt;</a>'
,p_previous_page_template=>'<a href="#LINK#" class="t20pagination">&lt;#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="t20pagination">#PAGINATION_NEXT_SET#&gt;&gt;</a>'
,p_previous_set_template=>'<a href="#LINK#" class="t20pagination">&lt;&lt;#PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_checked=>'#CCCCCC'
,p_theme_id=>20
,p_theme_class_id=>5
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(236377425898886733)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(236377908631886734)
,p_row_template_name=>'Value Attribute Pairs'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<tr>',
'<th class="t20ReportHeader">#COLUMN_HEADER#</th>',
'<td class="t20data">#COLUMN_VALUE#</td>',
'</tr>'))
,p_row_template_before_rows=>'<table cellpadding="0" cellspacing="0" border="0" summary=""#REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#<tr><td><table cellpadding="0" cellspacing="0" border="0" summary="" class="t20ValueAttributePairs">'
,p_row_template_after_rows=>'</table><div class="t20CVS">#EXTERNAL_LINK##CSV_LINK#</div></td></tr>#PAGINATION#</table>'
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="t20pagination">#PAGINATION_NEXT# &gt;</a>'
,p_previous_page_template=>'<a href="#LINK#" class="t20pagination">&lt;#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="t20pagination">#PAGINATION_NEXT_SET#&gt;&gt;</a>'
,p_previous_set_template=>'<a href="#LINK#" class="t20pagination">&lt;&lt;#PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>20
,p_theme_class_id=>6
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(236377908631886734)
,p_row_template_after_last=>'<tr><td colspan="2" class="t20seperate"><hr /></td></tr>'
);
exception when others then null;
end;
end;
/
prompt --application/shared_components/user_interface/templates/label
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(236378435672886735)
,p_template_name=>'No Label'
,p_internal_name=>'NO_LABEL'
,p_template_body1=>'<span class="t20NoLabel">'
,p_template_body2=>'</span>'
,p_on_error_before_label=>'<div class="t20InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>20
,p_theme_class_id=>13
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(236378531527886735)
,p_template_name=>'Optional Label'
,p_internal_name=>'OPTIONAL_LABEL'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><span class="t20OptionalLabel">'
,p_template_body2=>'</span></label>'
,p_on_error_before_label=>'<div class="t20InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>20
,p_theme_class_id=>3
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(236378607425886735)
,p_template_name=>'Optional Label with Help'
,p_internal_name=>'OPTIONAL_LABEL_WITH_HELP'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><a class="t20OptionalLabelwithHelp" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999">'
,p_template_body2=>'</a></label>'
,p_on_error_before_label=>'<div class="t20InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>20
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(236378725417886735)
,p_template_name=>'Required Label'
,p_internal_name=>'REQUIRED_LABEL'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><span class="t20RequiredLabel">'
,p_template_body2=>'</span></label>'
,p_on_error_before_label=>'<div class="t20InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>20
,p_theme_class_id=>4
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(236378828141886735)
,p_template_name=>'Required Label with Help'
,p_internal_name=>'REQUIRED_LABEL_WITH_HELP'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><a class="t20RequiredLabelwithHelp" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999">'
,p_template_body2=>'</a></label>'
,p_on_error_before_label=>'<div class="t20InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>20
,p_theme_class_id=>2
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(236378925763886735)
,p_name=>'Breadcrumb Menu'
,p_internal_name=>'BREADCRUMB_MENU'
,p_current_page_option=>'<a href="#LINK#" class="t20Current">#NAME#</a>'
,p_non_current_page_option=>'<a href="#LINK#">#NAME#</a>'
,p_between_levels=>'<b>&gt;</b>'
,p_max_levels=>12
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>20
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(236379010595886736)
,p_name=>'Hierarchical Menu'
,p_internal_name=>'HIERARCHICAL_MENU'
,p_before_first=>'<ul class="t20HierarchicalMenu">'
,p_current_page_option=>'<li class="t20current"><a href="#LINK#">#NAME#</a></li>'
,p_non_current_page_option=>'<li><a href="#LINK#">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>11
,p_start_with_node=>'CHILD_MENU'
,p_theme_id=>20
,p_theme_class_id=>2
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(236379719545886738)
,p_popup_icon=>'#IMAGE_PREFIX#list_gray.gif'
,p_popup_icon_attr=>'width="13" height="13" alt="Popup Lov"'
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#APEX_JAVASCRIPT#',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/theme_V22.css" type="text/css">',
'',
'</head>'))
,p_page_body_attr=>'onload="first_field()" style="background-color:#FFFFFF;margin:0;"'
,p_before_field_text=>'<div class="t20PopupHead">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_find_button_text=>'Search'
,p_close_button_text=>'Close'
,p_next_button_text=>'Next >'
,p_prev_button_text=>'< Previous'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'400'
,p_height=>'450'
,p_result_row_x_of_y=>'<br /><div style="padding:2px; font-size:8pt;">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>500
,p_before_result_set=>'<div class="t20PopupBody">'
,p_theme_id=>20
,p_theme_class_id=>1
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(236379122998886736)
,p_cal_template_name=>'Calendar'
,p_internal_name=>'CALENDAR'
,p_translate_this_template=>'Y'
,p_day_of_week_format=>'<th class="t20DayOfWeek">#IDAY#</th>'
,p_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t20CalendarAlternative1Holder"> ',
' <tr>',
'   <td class="t20MonthTitle">#IMONTH# #YYYY#</td>',
' </tr>',
' <tr>',
' <td class="t20MonthBody">'))
,p_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="t20CalendarAlternative1">'
,p_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table></td>',
'</tr>',
'</table>',
''))
,p_day_title_format=>'<div class="t20DayTitle">#DD#</div><br />'
,p_day_open_format=>'<td class="t20Day" valign="top">#TITLE_FORMAT##DATA#'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td valign="top" class="t20Today">#TITLE_FORMAT##DATA#'
,p_weekend_title_format=>'<div class="t20WeekendDayTitle">#DD#</div><br />'
,p_weekend_open_format=>'<td valign="top" class="t20WeekendDay">#TITLE_FORMAT##DATA#'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<div class="t20NonDayTitle">#DD#</div><br />'
,p_nonday_open_format=>'<td class="t20NonDay" valign="top">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<th width="14%" class="calheader">#IDAY#</th>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'#DATA#'
,p_theme_id=>20
,p_theme_class_id=>1
);
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(236379337402886737)
,p_cal_template_name=>'Calendar, Alternative 1'
,p_internal_name=>'CALENDAR,_ALTERNATIVE_1'
,p_translate_this_template=>'Y'
,p_day_of_week_format=>'<th class="t20DayOfWeek">#IDAY#</th>'
,p_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t20CalendarHolder"> ',
' <tr>',
'   <td class="t20MonthTitle">#IMONTH# #YYYY#</td>',
' </tr>',
' <tr>',
' <td class="t20MonthBody">'))
,p_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="t20Calendar">'
,p_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table></td>',
'</tr>',
'</table>',
''))
,p_day_title_format=>'<div class="t20DayTitle">#DD#</div><br />'
,p_day_open_format=>'<td class="t20Day" valign="top">#TITLE_FORMAT##DATA#'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td valign="top" class="t20Today">#TITLE_FORMAT##DATA#'
,p_weekend_title_format=>'<div class="t20WeekendDayTitle">#DD#</div><br />'
,p_weekend_open_format=>'<td valign="top" class="t20WeekendDay">#TITLE_FORMAT##DATA#'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<div class="t20NonDayTitle">#DD#</div><br />'
,p_nonday_open_format=>'<td class="t20NonDay" valign="top">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<th width="14%" class="calheader">#IDAY#</th>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'#DATA#'
,p_theme_id=>20
,p_theme_class_id=>2
);
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(236379527390886737)
,p_cal_template_name=>'Small Calender'
,p_internal_name=>'SMALL_CALENDER'
,p_translate_this_template=>'Y'
,p_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t20SmallCalenderHolder"> ',
' <tr>',
'   <td class="t20MonthTitle">#IMONTH# #YYYY#</td>',
' </tr>',
' <tr>',
' <td class="t20MonthBody">'))
,p_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="t20SmallCalender">'
,p_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table></td>',
'</tr>',
'</table>',
''))
,p_day_title_format=>'<div class="t20DayTitle">#DD#</div>'
,p_day_open_format=>'<td class="t20Day" valign="top">#TITLE_FORMAT##DATA#'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td valign="top" class="t20Today">#TITLE_FORMAT##DATA#'
,p_weekend_title_format=>'<div class="t20WeekendDayTitle">#DD#</div>'
,p_weekend_open_format=>'<td valign="top" class="t20WeekendDay">#TITLE_FORMAT##DATA#'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<div class="t20NonDayTitle">#DD#</div>'
,p_nonday_open_format=>'<td class="t20NonDay" valign="top">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<th width="14%" class="calheader">#IDAY#</th>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'#DATA#'
,p_theme_id=>20
,p_theme_class_id=>3
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(236379916386886739)
,p_theme_id=>20
,p_theme_name=>'Modern Blue'
,p_theme_internal_name=>'MODERN_BLUE'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'T'
,p_nav_bar_type=>'NAVBAR'
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(236361118706886715)
,p_error_template=>wwv_flow_api.id(236361118706886715)
,p_printer_friendly_template=>wwv_flow_api.id(236362137926886717)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_login_template=>wwv_flow_api.id(236360638713886712)
,p_default_button_template=>wwv_flow_api.id(236362715319886717)
,p_default_region_template=>wwv_flow_api.id(236368017736886723)
,p_default_chart_template=>wwv_flow_api.id(236365036690886721)
,p_default_form_template=>wwv_flow_api.id(236365316706886721)
,p_default_reportr_template=>wwv_flow_api.id(236368017736886723)
,p_default_tabform_template=>wwv_flow_api.id(236368017736886723)
,p_default_wizard_template=>wwv_flow_api.id(236369527082886724)
,p_default_menur_template=>wwv_flow_api.id(236364112836886720)
,p_default_listr_template=>wwv_flow_api.id(236368017736886723)
,p_default_report_template=>wwv_flow_api.id(236376421544886732)
,p_default_label_template=>wwv_flow_api.id(236378607425886735)
,p_default_menu_template=>wwv_flow_api.id(236378925763886735)
,p_default_list_template=>wwv_flow_api.id(236374331644886729)
,p_default_option_label=>wwv_flow_api.id(236378607425886735)
,p_default_required_label=>wwv_flow_api.id(236378828141886735)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(20),'')
,p_css_file_urls=>'#IMAGE_PREFIX#legacy_ui/css/5.0#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
null;
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
null;
end;
/
prompt --application/shared_components/user_interface/template_options
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/messages
begin
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(235902837911018358)
,p_name=>'ACTIVE'
,p_message_language=>'en-us'
,p_message_text=>'Active'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(235903348993021603)
,p_name=>'INACTIVE'
,p_message_language=>'en-us'
,p_message_text=>'Inactive'
);
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts
begin
null;
end;
/
prompt --application/shared_components/security/authentications
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(374914190067829126)
,p_name=>'NoAuth'
,p_scheme_type=>'NATIVE_DAD'
,p_logout_url=>'f?p=&APP_ID.:1'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_comments=>'Use internal HTML DB account credentials and login page in this application.'
);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(306791000040)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>true
,p_is_default=>true
,p_theme_id=>20
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_theme_style_by_user_pref=>false
,p_nav_list_template_options=>'#DEFAULT#'
,p_include_legacy_javascript=>true
,p_include_jquery_migrate=>true
,p_nav_bar_type=>'NAVBAR'
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(306791000040)
,p_name=>'Home'
,p_page_mode=>'NORMAL'
,p_step_title=>'Home'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'Home'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'OOS_USER'
,p_last_upd_yyyymmddhh24miss=>'20170511163835'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(260803553509682418)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(236364112836886720)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'BELOW'
,p_menu_id=>wwv_flow_api.id(260800766060667128)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(236378925763886735)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(43953531294147998)
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_comment=>'Created 03-SEP-2009 10:48 by TIMLEI'
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_api.create_install(
 p_id=>wwv_flow_api.id(236990351615545008)
,p_welcome_message=>'This is an empty application from APEX3. Use this application to demo unlocking Theme APEX5.0'
,p_configuration_message=>'You can configure the following attributes of your application.'
,p_build_options_message=>'Empty App from 3 Installation. You can choose to include the following build options.'
,p_validation_message=>'Empty App from 3 Installation. The following validations will be performed to ensure your system is compatible with this application.'
,p_install_message=>'Empty App from 3 Installation. Please confirm that you would like to install this application''s supporting objects.'
,p_install_success_message=>'Empty App from 3 Installation. Your application''s supporting objects have been installed.'
,p_install_failure_message=>'Empty App from 3 Installation. Installation of database objects and seed data has failed.'
,p_upgrade_message=>'The application installer has detected that this application''s supporting objects were previously installed.  This wizard will guide you through the process of upgrading these supporting objects.'
,p_upgrade_confirm_message=>'Please confirm that you would like to install this application''s supporting objects.'
,p_upgrade_success_message=>'Your application''s supporting objects have been installed.'
,p_upgrade_failure_message=>'Installation of database objects and seed data has failed.'
,p_deinstall_success_message=>'Empty App from 3 deinstallation complete.'
,p_required_free_kb=>640
,p_required_sys_privs=>'CREATE PROCEDURE:CREATE TABLE:CREATE TRIGGER:CREATE VIEW'
,p_deinstall_message=>'This operation will completely deinstall Empty App from 3 Application.'
);
end;
/
prompt --application/deployment/install
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
