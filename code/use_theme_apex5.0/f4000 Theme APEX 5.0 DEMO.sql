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
 
prompt APPLICATION 300 - f4000 Theme APEX 5.0 DEMO
--
-- Application Export:
--   Application:     300
--   Name:            f4000 Theme APEX 5.0 DEMO
--   Date and Time:   00:40 星期六 5月 13, 2017
--   Exported By:     OOS_USER
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         5.1.0.00.45
--   Instance ID:     220102632557595
--

-- Application Statistics:
--   Pages:                      2
--     Regions:                 18
--     Buttons:                  9
--   Shared Components:
--     Logic:
--     Navigation:
--       Lists:                  5
--       Breadcrumbs:            1
--         Entries:              2
--     Security:
--       Authentication:         1
--       Authorization:          7
--     User Interface:
--       Themes:                 2
--       Templates:
--         Page:                20
--         Region:              65
--         Label:               16
--         List:                32
--         Popup LOV:            2
--         Calendar:             4
--         Breadcrumb:           3
--         Button:              12
--         Report:              25
--       Plug-ins:               1
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
,p_name=>nvl(wwv_flow_application_install.get_application_name,'f4000 Theme APEX 5.0 DEMO')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'THEME_APEX50_4000')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'N'
,p_checksum_salt_last_reset=>'20170513003751'
,p_bookmark_checksum_function=>'MD5'
,p_max_session_length_sec=>28800
,p_html_escaping_mode=>'B'
,p_flow_language=>'en-us'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_date_format=>'DD-MON-YYYY'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(518624209967732)
,p_logout_url=>'wwv_flow_custom_auth_std.logout?p_this_flow=&APP_ID.&p_next_flow_page_sess=&APP_ID.:101'
,p_application_tab_set=>0
,p_logo_image=>'TEXT:f4000 Theme APEX 5.0 DEMO'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,'')
,p_flow_version=>'&APP_TITLE. V0.0.1'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_deep_linking=>'Y'
,p_runtime_api_usage=>'T:O:W'
,p_authorize_public_pages_yn=>'Y'
,p_rejoin_existing_sessions=>'P'
,p_csv_encoding=>'N'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'MSG_COPYRIGHT'
,p_substitution_value_01=>'😻 <a target="_blank" href="https://iminglei.blogspot.com">iminglei</a>'
,p_substitution_string_02=>'COMPANY'
,p_substitution_value_02=>'Test'
,p_substitution_string_03=>'THEME4550'
,p_substitution_value_03=>'THEME_APEX50_4550'
,p_last_updated_by=>'OOS_USER'
,p_last_upd_yyyymmddhh24miss=>'20170513003751'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(75207471101699)
,p_name=>'home.page.tasks'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(75452310101700)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Delete this Application'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP,1:::'
,p_list_item_icon_alt_attribute=>'Not Real!'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(82969222101708)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Copy this Application'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(156635204296021)
,p_name=>'APEX 5 - Administration'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(156903933296021)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Administration'
,p_list_item_link_target=>'f?p=4350:1:&APP_SESSION.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(157300559296022)
,p_list_item_display_sequence=>150
,p_list_item_link_text=>'------'
,p_list_item_link_target=>'separator'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(157693182296022)
,p_list_item_display_sequence=>200
,p_list_item_link_text=>'Manage Service'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(158136442296022)
,p_list_item_display_sequence=>210
,p_list_item_link_text=>'Manage Service'
,p_list_item_link_target=>'f?p=4350:21:&SESSION.'
,p_parent_list_item_id=>wwv_flow_api.id(157693182296022)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(158524486296022)
,p_list_item_display_sequence=>215
,p_list_item_link_text=>'------'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_api.id(157693182296022)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(158872844296022)
,p_list_item_display_sequence=>220
,p_list_item_link_text=>'Make a Service Request'
,p_list_item_link_target=>'f?p=4350:96:&SESSION.::NO:49::'
,p_parent_list_item_id=>wwv_flow_api.id(157693182296022)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(159344990296023)
,p_list_item_display_sequence=>230
,p_list_item_link_text=>'Set Workspace Preferences'
,p_list_item_link_target=>'f?p=4350:17:&SESSION.::NO:RP::'
,p_parent_list_item_id=>wwv_flow_api.id(157693182296022)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(159686678296023)
,p_list_item_display_sequence=>240
,p_list_item_link_text=>'Edit Announcement'
,p_list_item_link_target=>'f?p=4350:35:&SESSION.'
,p_parent_list_item_id=>wwv_flow_api.id(157693182296022)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(160101946296023)
,p_list_item_display_sequence=>250
,p_list_item_link_text=>'Workspace Utilization'
,p_list_item_link_target=>'f?p=4350:101:&SESSION.'
,p_parent_list_item_id=>wwv_flow_api.id(157693182296022)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(160470546296023)
,p_list_item_display_sequence=>300
,p_list_item_link_text=>'Manage Users and Groups'
,p_list_item_link_target=>'f?p=4350:55:&SESSION.'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(160888750296023)
,p_list_item_display_sequence=>400
,p_list_item_link_text=>'Monitor Activity'
,p_list_item_link_target=>'f?p=4350:22:&SESSION.'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(161270454296023)
,p_list_item_display_sequence=>500
,p_list_item_link_text=>'Dashboards'
,p_list_item_link_target=>'f?p=4350:33:&SESSION.'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(161733788296023)
,p_list_item_display_sequence=>600
,p_list_item_link_text=>'Change My Password'
,p_list_item_link_target=>'f?p=4350:3:&SESSION.::&DEBUG.:3#pwd'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(164559451296025)
,p_name=>'APEX 5 - Help'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(164799191296025)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Documentation'
,p_list_item_link_target=>'&SYSTEM_HELP_URL.'
,p_list_text_01=>'helpLinkNewWindow'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(165190155296026)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Discussion Forum'
,p_list_item_link_target=>'https://apex.oracle.com/forum'
,p_list_text_01=>'helpLinkForum'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(165663644296026)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Oracle Technology Network'
,p_list_item_link_target=>'http://otn.oracle.com/apex'
,p_list_text_01=>'helpLinkOTN'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(165993885296026)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Getting Started in Page Designer'
,p_list_item_link_target=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(166410031296026)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Shortcuts'
,p_list_item_link_target=>'#'
,p_list_text_01=>'keyboardShortcuts'
,p_list_text_03=>'true'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(166812561296026)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(167217013296026)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'About'
,p_list_item_link_target=>'f?p=4350:9:&SESSION.'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(188716664418560)
,p_name=>'APEX 5 - Tabs'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(188869880418561)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'App Builder'
,p_list_item_link_target=>'f?p=4000:1500:&SESSION.::&DEBUG.::P1500_SHOW::'
,p_list_item_icon_alt_attribute=>'App Builder Drill Down'
,p_list_text_01=>'tab-app-builder'
,p_list_item_current_type=>'ALWAYS'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(189268795418561)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Database Applications'
,p_list_item_link_target=>'f?p=4000:1500:&SESSION.::&DEBUG.::P1500_SHOW:DATABASE:'
,p_parent_list_item_id=>wwv_flow_api.id(188869880418561)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(189732814418561)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Websheet Applications'
,p_list_item_link_target=>'f?p=4000:1500:&SESSION.::&DEBUG.::P1500_SHOW:WEBSHEET:'
,p_parent_list_item_id=>wwv_flow_api.id(188869880418561)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(190164869418561)
,p_list_item_display_sequence=>125
,p_list_item_link_text=>'------'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_api.id(188869880418561)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(190546550418562)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'Create'
,p_list_item_link_target=>'f?p=4000:56:&SESSION.::&DEBUG.:56,103,104,106,130,131,35,227,3020,3000,3001:FB_FLOW_ID,FB_FLOW_PAGE_ID::'
,p_parent_list_item_id=>wwv_flow_api.id(188869880418561)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(190918948418562)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>'Import'
,p_list_item_link_target=>'f?p=4000:460:&SESSION.::&DEBUG.:460:F4000_P56_CREATE_OPTION,P460_FILE_TYPE:IMP,FLOW_EXPORT:'
,p_parent_list_item_id=>wwv_flow_api.id(188869880418561)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(191318829418562)
,p_list_item_display_sequence=>150
,p_list_item_link_text=>'Export'
,p_list_item_link_target=>'f?p=4000:523:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(188869880418561)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(191743298418562)
,p_list_item_display_sequence=>155
,p_list_item_link_text=>'-----'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_api.id(188869880418561)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(192131973418562)
,p_list_item_display_sequence=>160
,p_list_item_link_text=>'Workspace Utilities'
,p_parent_list_item_id=>wwv_flow_api.id(188869880418561)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(192533223418562)
,p_list_item_display_sequence=>161
,p_list_item_link_text=>'All Workspace Utilities'
,p_list_item_link_target=>'f?p=4000:182:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(192131973418562)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(192949751418562)
,p_list_item_display_sequence=>162
,p_list_item_link_text=>'-----'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_api.id(192131973418562)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(193284269418562)
,p_list_item_display_sequence=>163
,p_list_item_link_text=>'App Builder Defaults'
,p_list_item_link_target=>'f?p=4000:800:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(192131973418562)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(193755231418563)
,p_list_item_display_sequence=>165
,p_list_item_link_text=>'Workspace Themes'
,p_list_item_link_target=>'f?p=4000:763:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(192131973418562)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(194136390418563)
,p_list_item_display_sequence=>166
,p_list_item_link_text=>'Application Groups'
,p_list_item_link_target=>'f?p=4000:722:&SESSION.::&DEBUG.:RP'
,p_parent_list_item_id=>wwv_flow_api.id(192131973418562)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(194498980418563)
,p_list_item_display_sequence=>167
,p_list_item_link_text=>'Application Express Views'
,p_list_item_link_target=>'f?p=4000:714:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(192131973418562)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(194931363418563)
,p_list_item_display_sequence=>168
,p_list_item_link_text=>'Cross Application Reports'
,p_list_item_link_target=>'f?p=4000:9009:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(192131973418562)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(195299538418563)
,p_list_item_display_sequence=>169
,p_list_item_link_text=>'-----'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_api.id(188869880418561)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(195747948418564)
,p_list_item_display_sequence=>170
,p_list_item_link_text=>'Migrations'
,p_list_item_link_target=>'f?p=4400:1:&SESSION.'
,p_parent_list_item_id=>wwv_flow_api.id(188869880418561)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(196130593418564)
,p_list_item_display_sequence=>200
,p_list_item_link_text=>'SQL Workshop'
,p_list_item_link_target=>'f?p=4500:3002:&SESSION.'
,p_list_item_icon_alt_attribute=>'SQL Workshop Drill Down'
,p_list_text_01=>'tab-sql-workshop'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(196558187418564)
,p_list_item_display_sequence=>210
,p_list_item_link_text=>'Object Browser'
,p_list_item_link_target=>'f?p=4500:1001:&SESSION.'
,p_parent_list_item_id=>wwv_flow_api.id(196130593418564)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(196889069418564)
,p_list_item_display_sequence=>220
,p_list_item_link_text=>'SQL Commands'
,p_list_item_link_target=>'f?p=4500:1003:&SESSION.'
,p_parent_list_item_id=>wwv_flow_api.id(196130593418564)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(197365473418564)
,p_list_item_display_sequence=>230
,p_list_item_link_text=>'SQL Scripts'
,p_list_item_link_target=>'f?p=4500:1004:&SESSION.'
,p_parent_list_item_id=>wwv_flow_api.id(196130593418564)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(197734417418564)
,p_list_item_display_sequence=>240
,p_list_item_link_text=>'Utilities'
,p_parent_list_item_id=>wwv_flow_api.id(196130593418564)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(198136021418565)
,p_list_item_display_sequence=>241
,p_list_item_link_text=>'All Utilities'
,p_list_item_link_target=>'f?p=4500:1005:&SESSION.'
,p_parent_list_item_id=>wwv_flow_api.id(197734417418564)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(198517288418565)
,p_list_item_display_sequence=>242
,p_list_item_link_text=>'-----'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_api.id(197734417418564)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(198948697418565)
,p_list_item_display_sequence=>243
,p_list_item_link_text=>'Data Workshop'
,p_list_item_link_target=>'f?p=4300:1:&SESSION.'
,p_parent_list_item_id=>wwv_flow_api.id(197734417418564)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(199340069418565)
,p_list_item_display_sequence=>244
,p_list_item_link_text=>'Query Builder'
,p_list_item_link_target=>'f?p=4500:1002:&SESSION.'
,p_parent_list_item_id=>wwv_flow_api.id(197734417418564)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(199728879418565)
,p_list_item_display_sequence=>245
,p_list_item_link_text=>'Generate DDL'
,p_list_item_link_target=>'f?p=4500:12:&SESSION.'
,p_parent_list_item_id=>wwv_flow_api.id(197734417418564)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(200145311418565)
,p_list_item_display_sequence=>246
,p_list_item_link_text=>'User Interface Defaults'
,p_list_item_link_target=>'f?p=4500:813:&SESSION.'
,p_parent_list_item_id=>wwv_flow_api.id(197734417418564)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(200502633418565)
,p_list_item_display_sequence=>247
,p_list_item_link_text=>'Methods on Tables'
,p_list_item_link_target=>'f?p=4500:120:&SESSION.::NO::P117_CREATE_PACKAGE:TABLE'
,p_parent_list_item_id=>wwv_flow_api.id(197734417418564)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(200932252418565)
,p_list_item_display_sequence=>248
,p_list_item_link_text=>'About Database'
,p_list_item_link_target=>'f?p=4500:36:&SESSION.'
,p_parent_list_item_id=>wwv_flow_api.id(197734417418564)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(201358834418565)
,p_list_item_display_sequence=>249
,p_list_item_link_text=>'Object Reports'
,p_list_item_link_target=>'f?p=4500:1042:&SESSION.'
,p_parent_list_item_id=>wwv_flow_api.id(197734417418564)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(201702636418566)
,p_list_item_display_sequence=>250
,p_list_item_link_text=>'Database Monitor'
,p_list_item_link_target=>'f?p=4500:11:&SESSION.'
,p_parent_list_item_id=>wwv_flow_api.id(197734417418564)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(202077238418566)
,p_list_item_display_sequence=>251
,p_list_item_link_text=>'Schema Comparison'
,p_list_item_link_target=>'f?p=4500:1350:&SESSION.'
,p_parent_list_item_id=>wwv_flow_api.id(197734417418564)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(202485625418566)
,p_list_item_display_sequence=>252
,p_list_item_link_text=>'Recycle Bin'
,p_list_item_link_target=>'f?p=4500:1070:&SESSION.'
,p_parent_list_item_id=>wwv_flow_api.id(197734417418564)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(202911110418566)
,p_list_item_display_sequence=>260
,p_list_item_link_text=>'RESTful Services'
,p_list_item_link_target=>'f?p=4850:1:&SESSION.'
,p_parent_list_item_id=>wwv_flow_api.id(196130593418564)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(203282397418566)
,p_list_item_display_sequence=>300
,p_list_item_link_text=>'Team Development'
,p_list_item_link_target=>'f?p=4800:4000:&SESSION.'
,p_list_item_icon_alt_attribute=>'Team Development Drill Down'
,p_list_text_01=>'tab-team-dev'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(203669509418566)
,p_list_item_display_sequence=>310
,p_list_item_link_text=>'Milestones'
,p_list_item_link_target=>'f?p=4800:6006:&SESSION.'
,p_parent_list_item_id=>wwv_flow_api.id(203282397418566)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(204094242418566)
,p_list_item_display_sequence=>320
,p_list_item_link_text=>'Features'
,p_list_item_link_target=>'f?p=4800:9010:&SESSION.'
,p_parent_list_item_id=>wwv_flow_api.id(203282397418566)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(204489587418566)
,p_list_item_display_sequence=>330
,p_list_item_link_text=>'To Dos'
,p_list_item_link_target=>'f?p=4800:3001:&SESSION.'
,p_parent_list_item_id=>wwv_flow_api.id(203282397418566)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(204890286418566)
,p_list_item_display_sequence=>340
,p_list_item_link_text=>'Bugs'
,p_list_item_link_target=>'f?p=4800:3501:&SESSION.'
,p_parent_list_item_id=>wwv_flow_api.id(203282397418566)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(205343096418567)
,p_list_item_display_sequence=>350
,p_list_item_link_text=>'Feedback'
,p_list_item_link_target=>'f?p=4800:8012:&SESSION.'
,p_parent_list_item_id=>wwv_flow_api.id(203282397418566)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(205730942418567)
,p_list_item_display_sequence=>355
,p_list_item_link_text=>'-----'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_api.id(203282397418566)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(206098589418567)
,p_list_item_display_sequence=>360
,p_list_item_link_text=>'Utilities'
,p_parent_list_item_id=>wwv_flow_api.id(203282397418566)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(206510919418567)
,p_list_item_display_sequence=>361
,p_list_item_link_text=>'All Utilities'
,p_list_item_link_target=>'f?p=4800:2:&SESSION.:'
,p_parent_list_item_id=>wwv_flow_api.id(206098589418567)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(206931884418567)
,p_list_item_display_sequence=>362
,p_list_item_link_text=>'-----'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_api.id(206098589418567)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(207321932418567)
,p_list_item_display_sequence=>363
,p_list_item_link_text=>'Team Development Settings'
,p_list_item_link_target=>'f?p=4800:3005:&SESSION.'
,p_parent_list_item_id=>wwv_flow_api.id(206098589418567)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(207761222418567)
,p_list_item_display_sequence=>364
,p_list_item_link_text=>'Release Summary'
,p_list_item_link_target=>'f?p=4800:4050:&SESSION.:'
,p_parent_list_item_id=>wwv_flow_api.id(206098589418567)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(208098376418567)
,p_list_item_display_sequence=>365
,p_list_item_link_text=>'Enable Files'
,p_list_item_link_target=>'f?p=4350:17:&SESSION.'
,p_parent_list_item_id=>wwv_flow_api.id(206098589418567)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(208485170418567)
,p_list_item_display_sequence=>366
,p_list_item_link_text=>'Push past due Bugs'
,p_list_item_link_target=>'f?p=4800:5:&SESSION.'
,p_parent_list_item_id=>wwv_flow_api.id(206098589418567)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(208869664418568)
,p_list_item_display_sequence=>367
,p_list_item_link_text=>'Feature Utilities'
,p_list_item_link_target=>'f?p=4800:9013:&SESSION.'
,p_parent_list_item_id=>wwv_flow_api.id(206098589418567)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(209339375418568)
,p_list_item_display_sequence=>368
,p_list_item_link_text=>'Manage Focus Areas'
,p_list_item_link_target=>'f?p=4800:9020:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(206098589418567)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(209758936418568)
,p_list_item_display_sequence=>369
,p_list_item_link_text=>'Update Assignees'
,p_list_item_link_target=>'f?p=4800:6004:&SESSION.::&DEBUG.:6004:::'
,p_parent_list_item_id=>wwv_flow_api.id(206098589418567)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(210075033418568)
,p_list_item_display_sequence=>370
,p_list_item_link_text=>'View Files'
,p_list_item_link_target=>'f?p=4800:9:&SESSION.::&DEBUG.:RP:::'
,p_parent_list_item_id=>wwv_flow_api.id(206098589418567)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(210524220418568)
,p_list_item_display_sequence=>371
,p_list_item_link_text=>'Purge Data'
,p_list_item_link_target=>'f?p=4800:6:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(206098589418567)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(210959287418568)
,p_list_item_display_sequence=>372
,p_list_item_link_text=>'Manage News'
,p_list_item_link_target=>'f?p=4800:7000:&SESSION.:'
,p_parent_list_item_id=>wwv_flow_api.id(206098589418567)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(211359289418568)
,p_list_item_display_sequence=>373
,p_list_item_link_text=>'Manage Links'
,p_list_item_link_target=>'f?p=4800:5000:&SESSION.:'
,p_parent_list_item_id=>wwv_flow_api.id(206098589418567)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(211682351418568)
,p_list_item_display_sequence=>400
,p_list_item_link_text=>'Packaged Apps'
,p_list_item_link_target=>'f?p=4750:50:&APP_SESSION.'
,p_list_text_01=>'tab-apps'
,p_list_item_current_type=>'NEVER'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(212140646418569)
,p_list_item_display_sequence=>410
,p_list_item_link_text=>'Productivity Apps'
,p_list_item_link_target=>'f?p=4750:50:&SESSION.::&DEBUG.:RP,50:P50_APP_GROUP:PACKAGE'
,p_parent_list_item_id=>wwv_flow_api.id(211682351418568)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(212487193418569)
,p_list_item_display_sequence=>415
,p_list_item_link_text=>'Sample Apps'
,p_list_item_link_target=>'f?p=4750:50:&SESSION.::&DEBUG.:RP,50:P50_APP_GROUP:SAMPLE'
,p_parent_list_item_id=>wwv_flow_api.id(211682351418568)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(212883333418569)
,p_list_item_display_sequence=>417
,p_list_item_link_text=>'-----'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_api.id(211682351418568)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(213300494418569)
,p_list_item_display_sequence=>430
,p_list_item_link_text=>'Administration'
,p_list_item_link_target=>'f?p=4750:6:&SESSION.::&DEBUG.:6:'
,p_parent_list_item_id=>wwv_flow_api.id(211682351418568)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(256288783079226)
,p_name=>'Home Page APEX 4.0 list'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(256528738079226)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Run Application'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'app-builder-run-app'
,p_list_item_icon_attributes=>'width="128" height="128" alt=""'
,p_list_item_current_type=>'ALWAYS'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(256921548079227)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Supporting Objects'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'apex-sql-script'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(257332876079227)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Shared Components'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'app-builder-shared-components'
,p_list_item_icon_attributes=>'width="128" height="128" alt=""'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(257734689079227)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Utilities'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'apex-utilities'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(258092506079227)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Export / Import'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'app-builder-export-import'
,p_list_item_icon_attributes=>'width="128" height="128" alt=""'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
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
 p_id=>wwv_flow_api.id(81393900043)
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
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(75638130101701)
,p_name=>'Flow: CREATE'
,p_scheme_type=>'PLUGIN_COM.ORACLE.APEX.DEVELOPER_AUTHORIZATION'
,p_attribute_01=>'CREATE'
,p_error_message=>'You are not allowed to create or delete applications'
,p_reference_id=>786942708067207200
,p_caching=>'BY_USER_BY_SESSION'
);
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(85260528101709)
,p_name=>'Flow: ADMIN'
,p_scheme_type=>'PLUGIN_COM.ORACLE.APEX.DEVELOPER_AUTHORIZATION'
,p_attribute_01=>'ADMIN'
,p_error_message=>'You are not authorized to administer applications'
,p_reference_id=>12511219858301010
,p_caching=>'BY_USER_BY_SESSION'
);
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(91348518240380)
,p_name=>'APEX 5.0 App Builder Enabled'
,p_scheme_type=>'PLUGIN_COM.ORACLE.APEX.DEVELOPER_AUTHORIZATION'
,p_attribute_01=>'EDIT'
,p_error_message=>'No privilege for attempted operation'
,p_reference_id=>786516029127697713
,p_caching=>'BY_USER_BY_SESSION'
);
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(99084815240383)
,p_name=>'APEX 5.0 SQL Workshop Enabled'
,p_scheme_type=>'PLUGIN_COM.ORACLE.APEX.DEVELOPER_AUTHORIZATION'
,p_attribute_01=>'SQL'
,p_error_message=>'You are not authorized to use SQL Workshop'
,p_reference_id=>786516265251697717
,p_caching=>'BY_USER_BY_SESSION'
);
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(106484324240386)
,p_name=>'APEX 5.0 RESTful Services Enabled'
,p_scheme_type=>'NATIVE_EXISTS'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 ',
'from wwv_flow_companies',
'where ALLOW_RESTFUL_SERVICES_YN = ''Y'' and ',
'      PROVISIONING_COMPANY_ID = :flow_security_group_id',
'and exists (select 1',
'                  from wwv_flow_platform_prefs',
'                 where name  = ''RESTFUL_SERVICES_ENABLED''',
'                   and value = ''Y'')'))
,p_error_message=>'No privilege for attempted operation'
,p_reference_id=>786519856057734816
,p_caching=>'BY_USER_BY_SESSION'
);
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(107181448240386)
,p_name=>'APEX 5.0 Team Development enabled'
,p_scheme_type=>'NATIVE_EXISTS'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 ',
'from wwv_flow_companies w, ',
'        wwv_flow_fnd_user u',
'where nvl(w.ALLOW_TEAM_DEVELOPMENT_YN,''Y'') = ''Y'' and ',
'      w.PROVISIONING_COMPANY_ID = :flow_security_group_id and',
'      u.security_group_id = :flow_security_group_id and',
'      u.USER_NAME = upper(:app_user) and',
'      nvl(u.ALLOW_TEAM_DEVELOPMENT_YN,''Y'') = ''Y'''))
,p_error_message=>'Team development not enabled for this workspace'
,p_reference_id=>786516861027697723
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(115924559240389)
,p_name=>'APEX 5.0 Packaged App Enabled'
,p_scheme_type=>'PLUGIN_COM.ORACLE.APEX.DEVELOPER_AUTHORIZATION'
,p_attribute_01=>'PKG_APPS'
,p_error_message=>'You are not authorized to install Packaged Apps'
,p_reference_id=>786517456817697723
,p_caching=>'BY_USER_BY_SESSION'
);
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
prompt --application/comments
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
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(252434233794259)
,p_parent_id=>wwv_flow_api.id(252613230804011)
,p_short_name=>'Application &APP_ID.'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP::'
,p_page_id=>1
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(252613230804011)
,p_parent_id=>0
,p_short_name=>'<span class="u-VisuallyHidden">App Builder</span><span class="a-Icon icon-breadcrumb-previous"></span>'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP::'
,p_page_id=>1500
);
end;
/
prompt --application/shared_components/user_interface/templates/page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(1794583009312)
,p_theme_id=>4000
,p_name=>'APEX 4.2 - Page Edit Page (4150)'
,p_internal_name=>'APEX_4.2_PAGE_EDIT_PAGE_4150'
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
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'</head>',
'<body class="#PAGE_CSS_CLASSES#" #ONLOAD#>',
'<!--[if lte IE 8]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'<noscript>&MSG_JSCRIPT.</noscript>',
'#FORM_OPEN#',
'<a name="PAGETOP"></a>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#REGION_POSITION_07#',
'#REGION_POSITION_08#',
'',
'',
'<div id="htmldbMessageHolder"><a name="SkipRepNav"></a>#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'<div class="htmldbBodyMargin">',
'  <div id="ContentBody">',
'    #REGION_POSITION_02##REGION_POSITION_01#',
'    <table border="0" cellpadding="0" cellspacing="0" summary="" width="100%" id="body4150">',
'      <tbody>',
'        <tr>',
'          <td valign="top" style="width:44%;" class="comp-view-col-cell">',
'            <div class="comp-view-col">',
'              #REGION_POSITION_03#',
'            </div>',
'          </td>',
'          <td valign="top" style="width:28%;" class="comp-view-col-cell">',
'            <div class="comp-view-col">',
'            #REGION_POSITION_04#',
'            </div>',
'          </td>',
'          <td valign="top" style="width:28%;" class="comp-view-col-cell">',
'            <div class="comp-view-col">',
'            #REGION_POSITION_05#',
'            </div>',
'          </td>',
'        </tr>',
'      </tbody>',
'    </table>',
'    #BODY#',
'  </div>',
'</div>',
'',
''))
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
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_08'
,p_theme_class_id=>1
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
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(2058234009313)
,p_theme_id=>4000
,p_name=>'APEX 5.0 - Dialog'
,p_internal_name=>'APEX_5.0_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.builder.initWizardModal();'
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
'<meta charset="UTF-8" />',
'<title>#TITLE#</title>',
'<link rel="shortcut icon" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon.ico">',
'<link rel="icon" sizes="16x16" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon-16x16.png">',
'<link rel="icon" sizes="32x32" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon-32x32.png">',
'<link rel="apple-touch-icon" sizes="180x180" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon-180x180.png">',
'',
'#APEX_CSS#',
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
'<body class="a-Dialog-page #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #ONLOAD#>',
'<noscript>&MSG_JSCRIPT.</noscript>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="a-Dialog-wrap">',
'    <div class=" a-Dialog-wizardSteps">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="a-Dialog-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'    </div>',
'    <div class="a-Dialog-footer">',
'      #REGION_POSITION_03#',
'    </div>',
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
'<div class="a-Alert a-Alert--success a-Alert--horizontal a-Alert--defaultIcons a-Alert--colorBG a-Alert--dialog" id="page_success_msg" role="alert">',
'  <div class="a-Alert-wrap">',
'    <div class="a-Alert-icon">',
'      <span class="a-Icon"></span>',
'    </div>',
'    <div class="a-Alert-content">',
'      <div class="a-Alert-header">',
'        <h2 class="a-Alert-title">#SUCCESS_MESSAGE_HEADING#</h2>',
'      </div>',
'      <div class="a-Alert-body">',
'        #SUCCESS_MESSAGE#',
'      </div>',
'    </div>',
'    <div class="a-Alert-buttons">',
'      <button class="a-Button a-Button--noLabel a-Button--withIcon a-Button--noUI" onclick="$x_Remove(''page_success_msg'');" value="#CLOSE_NOTIFICATION#" type="button" title="#CLOSE_NOTIFICATION#"><span class="a-Icon icon-remove"></span></button>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-Alert a-Alert--warning a-Alert--horizontal a-Alert--defaultIcons a-Alert--colorBG a-Alert--dialog" id="page_warning_msg" role="alert">',
'  <div class="a-Alert-wrap">',
'    <div class="a-Alert-icon">',
'      <span class="a-Icon"></span>',
'    </div>',
'    <div class="a-Alert-content">',
'      <div class="a-Alert-header">',
'        <h2 class="a-Alert-title">#ERROR_MESSAGE_HEADING#</h2>',
'      </div>',
'      <div class="a-Alert-body">',
'        #MESSAGE#',
'      </div>',
'    </div>',
'    <div class="a-Alert-buttons">',
'      <button class="a-Button a-Button--noLabel a-Button--withIcon a-Button--noUI" onclick="$x_Remove(''page_warning_msg'');" value="#CLOSE_NOTIFICATION#" type="button" title="#CLOSE_NOTIFICATION#"><span class="a-Icon icon-remove"></span></button>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%'
,p_theme_class_id=>4
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<br />',
'<br />',
'<pre>#MESSAGE#</pre>',
'<a href="#BACK_LINK#">#RETURN_TO_APPLICATION#</a>'))
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
'    <div class="apex-col apex-col-#COLUMN_SPAN_NUMBER# #ATTRIBUTES#">',
'#CONTENT#',
'</div>        '))
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'480'
,p_dialog_width=>'800'
,p_dialog_max_width=>'1200'
,p_dialog_css_classes=>'a-Dialog--uiDialog'
,p_dialog_browser_frame=>'MODAL'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(2244802009313)
,p_theme_id=>4000
,p_name=>'APEX 5.0 - Edit Screen'
,p_internal_name=>'APEX_5.0_EDIT_SCREEN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.builder.initStickyHeader(''a_EditScreen_header'');'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 8 ]> <html class="lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="lt-ie9 ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
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
'<body #ONLOAD#>',
'<!--[if lte IE 7]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'<noscript>&MSG_JSCRIPT.</noscript>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#REGION_POSITION_07#',
'#REGION_POSITION_08#',
'#REGION_POSITION_01#',
'  <div class="a-Body">',
'    <main class="a-Main">',
'      #REGION_POSITION_02#',
'      <div class="a-EditScreen">',
'        <div class="a-EditScreen-header" id="a_EditScreen_header">',
'          #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'          #REGION_POSITION_04#',
'        </div>',
'        <div class="a-EditScreen-body">',
'          #BODY#',
'        </div>',
'      </div>',
'    </main>',
'    <aside class="a-Side">',
'        #REGION_POSITION_03#',
'        #REGION_POSITION_05#',
'    </aside>',
'  </div>'))
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
'<div class="a-Alert a-Alert--success a-Alert--horizontal a-Alert--defaultIcons a-Alert--colorBG a-Alert--page" id="page_success_msg" role="alert">',
'  <div class="a-Alert-wrap">',
'    <div class="a-Alert-icon">',
'      <span class="a-Icon"></span>',
'    </div>',
'    <div class="a-Alert-content">',
'      <div class="a-Alert-header">',
'        <h2 class="a-Alert-title">#SUCCESS_MESSAGE_HEADING#</h2>',
'      </div>',
'      <div class="a-Alert-body">',
'        #SUCCESS_MESSAGE#',
'      </div>',
'    </div>',
'    <div class="a-Alert-buttons">',
'      <button class="a-Button a-Button--noLabel a-Button--withIcon a-Button--noUI" onclick="$x_Remove(''page_success_msg'');" value="#CLOSE_NOTIFICATION#" type="button" title="#CLOSE_NOTIFICATION#"><span class="a-Icon icon-remove"></span></button>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-Alert a-Alert--warning a-Alert--horizontal a-Alert--defaultIcons a-Alert--colorBG a-Alert--page" id="page_warning_msg" role="alert">',
'  <div class="a-Alert-wrap">',
'    <div class="a-Alert-icon">',
'      <span class="a-Icon"></span>',
'    </div>',
'    <div class="a-Alert-content">',
'      <div class="a-Alert-header">',
'        <h2 class="a-Alert-title">#ERROR_MESSAGE_HEADING#</h2>',
'      </div>',
'      <div class="a-Alert-body">',
'        #MESSAGE#',
'      </div>',
'    </div>',
'    <div class="a-Alert-buttons">',
'      <button class="a-Button a-Button--noLabel a-Button--withIcon a-Button--noUI" onclick="$x_Remove(''page_warning_msg'');" value="#CLOSE_NOTIFICATION#" type="button" title="#CLOSE_NOTIFICATION#"><span class="a-Icon icon-remove"></span></button>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#" class="htmldbNavLink">#TEXT#</a>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="2" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
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
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2472336009313)
,p_page_template_id=>wwv_flow_api.id(2244802009313)
,p_name=>'Right Side Bar'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(2803569009313)
,p_page_template_id=>wwv_flow_api.id(2244802009313)
,p_name=>'Edit Screen Header'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(3054409009313)
,p_theme_id=>4000
,p_name=>'APEX 5.0 - No Side Bar'
,p_internal_name=>'APEX_5.0_NO_SIDE_BAR'
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
'<body #ONLOAD#>',
'<!--[if lte IE 8]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'<noscript>&MSG_JSCRIPT.</noscript>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#REGION_POSITION_07#',
'#REGION_POSITION_08#',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'#REGION_POSITION_02#',
'#REGION_POSITION_03#',
'  <div class="a-Body">',
'    <main class="a-Main">',
'        #BODY#',
'    </main>',
'  </div>',
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
'<div class="a-Alert a-Alert--success a-Alert--horizontal a-Alert--defaultIcons a-Alert--colorBG a-Alert--page" id="page_success_msg">',
'  <div class="a-Alert-wrap">',
'    <div class="a-Alert-icon">',
'      <span class="a-Icon"></span>',
'    </div>',
'    <div class="a-Alert-content">',
'      <div class="a-Alert-header">',
'        <h2 class="a-Alert-title">#SUCCESS_MESSAGE_HEADING#</h2>',
'      </div>',
'      <div class="a-Alert-body">',
'        #SUCCESS_MESSAGE#',
'      </div>',
'    </div>',
'    <div class="a-Alert-buttons">',
'      <button class="a-Button a-Button--noLabel a-Button--withIcon a-Button--noUI" onclick="$x_Remove(''page_success_msg'');" value="#CLOSE_NOTIFICATION#" type="button" title="#CLOSE_NOTIFICATION#"><span class="a-Icon icon-remove"></span></button>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-Alert a-Alert--warning a-Alert--horizontal a-Alert--defaultIcons a-Alert--colorBG a-Alert--page" id="page_warning_msg">',
'  <div class="a-Alert-wrap">',
'    <div class="a-Alert-icon">',
'      <span class="a-Icon"></span>',
'    </div>',
'    <div class="a-Alert-content">',
'      <div class="a-Alert-header">',
'        <h2 class="a-Alert-title">#ERROR_MESSAGE_HEADING#</h2>',
'      </div>',
'      <div class="a-Alert-body">',
'        #MESSAGE#',
'      </div>',
'    </div>',
'    <div class="a-Alert-buttons">',
'      <button class="a-Button a-Button--noLabel a-Button--withIcon a-Button--noUI" onclick="$x_Remove(''page_warning_msg'');" value="#CLOSE_NOTIFICATION#" type="button" title="#CLOSE_NOTIFICATION#"><span class="a-Icon icon-remove"></span></button>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#" class="htmldbNavLink">#TEXT#</a>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="2" width="100%"'
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
'        <h2 class="a-Alert-title">#MESSAGE#</h2>',
'      </div>',
'      <div class="a-Alert-body">',
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
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(3199250009313)
,p_theme_id=>4000
,p_name=>'APEX 5.0 - Page Designer'
,p_internal_name=>'APEX_5.0_PAGE_DESIGNER'
,p_is_popup=>false
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ( apex.jQuery( "#successMessage" ).length > 0 ) {',
'    window.pageDesigner.showNotification( apex.jQuery( "#successMessage" ).text() );',
'}'))
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
'#HEAD#',
'</head>',
'<body #ONLOAD# class="#PAGE_CSS_CLASSES#">',
'<!--[if lte IE 8]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'<noscript>&MSG_JSCRIPT.</noscript>',
'#FORM_OPEN#',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#REGION_POSITION_07#',
'#REGION_POSITION_01#',
'<div class="a-AlertMessages a-AlertMessages--page" role="alert" style="display: none;" id="pdNotification">',
' <div class="a-AlertMessages-item">',
'  <div id="pdNotificationState" class="a-MediaBlock a-AlertMessages-message is-success">',
'    <div class="a-MediaBlock-graphic">',
'      <span id="pdNotificationIcon" class="a-Icon a-Icon--medium icon-check"></span> ',
'    </div>',
'    <div class="a-MediaBlock-content">',
'      <h5 class="a-AlertMessages-messageTitle" id="pdNotificationMessage">#PD_MESSAGE#</h5>',
'      <button id="pdNotificationClose" class="a-Button a-Button--small a-Button--noUI a-Button--noLabel a-Button--withIcon a-Button--alertMessages" type="button" title="#CLOSE_NOTIFICATION#"><span class="a-Icon icon-remove"></span></button>',
'    </div>',
'  </div>',
' </div>',
'</div>',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'',
'',
'<div id="a_PageDesigner" class="a-PageDesigner resize">',
'  #REGION_POSITION_02#',
'  #REGION_POSITION_03#',
'  #REGION_POSITION_04#',
'  #BODY#',
'  <div style="display:none;">',
'  #REGION_POSITION_06#',
'  </div>',
'</div>',
''))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#GENERATED_JAVASCRIPT#',
'</body></html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!--<div class="aNotification success" id="MESSAGE">',
'  <div class="aNotificationText">',
'    <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" class="iconMedium success"/>',
'    <p>#SUCCESS_MESSAGE#</p>',
'    <a href="#" class="closeMessage" onclick="$x_Remove(''MESSAGE'');return false;"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="#CLOSE_NOTIFICATION#" class="iconSmall close"/></a>',
'  </div>',
'</div>-->',
'<div style="display: none;" id="successMessage">#SUCCESS_MESSAGE#</div>',
''))
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
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_08'
,p_theme_class_id=>1
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
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3494845009314)
,p_page_template_id=>wwv_flow_api.id(3199250009313)
,p_name=>'Dialog Area'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>-1
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(3748494009314)
,p_theme_id=>4000
,p_name=>'APEX 5.0 - Right Side Bar'
,p_internal_name=>'APEX_5.0_RIGHT_SIDE_BAR'
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
'#APEX_JAVASCRIPT#',
'<!--[if lt IE 9]><script src="#IMAGE_PREFIX#libraries/apex/html5_ie.js"></script><![endif]-->',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#HEAD#',
'    ',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 8]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'<noscript>&MSG_JSCRIPT.</noscript>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#REGION_POSITION_07#',
'#REGION_POSITION_08#',
'#REGION_POSITION_01#',
'#REGION_POSITION_02#',
'  <div class="a-Body">',
'    <main class="a-Main">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        #BODY#',
'    </main>',
'    <aside class="a-Side">',
'        #REGION_POSITION_03#',
'    </aside>',
'  </div>',
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
'<div class="a-Alert a-Alert--success a-Alert--horizontal a-Alert--defaultIcons a-Alert--colorBG a-Alert--page" id="page_success_msg" role="alert">',
'  <div class="a-Alert-wrap">',
'    <div class="a-Alert-icon">',
'      <span class="a-Icon"></span>',
'    </div>',
'    <div class="a-Alert-content">',
'      <div class="a-Alert-header">',
'        <h2 class="a-Alert-title">#SUCCESS_MESSAGE_HEADING#</h2>',
'      </div>',
'      <div class="a-Alert-body">',
'        #SUCCESS_MESSAGE#',
'      </div>',
'    </div>',
'    <div class="a-Alert-buttons">',
'      <button class="a-Button a-Button--noLabel a-Button--withIcon a-Button--noUI" onclick="$x_Remove(''page_success_msg'');" value="#CLOSE_NOTIFICATION#" type="button" title="#CLOSE_NOTIFICATION#"><span class="a-Icon icon-remove"></span></button>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-Alert a-Alert--warning a-Alert--horizontal a-Alert--defaultIcons a-Alert--colorBG a-Alert--page" id="page_warning_msg" role="alert">',
'  <div class="a-Alert-wrap">',
'    <div class="a-Alert-icon">',
'      <span class="a-Icon"></span>',
'    </div>',
'    <div class="a-Alert-content">',
'      <div class="a-Alert-header">',
'        <h2 class="a-Alert-title">#ERROR_MESSAGE_HEADING#</h2>',
'      </div>',
'      <div class="a-Alert-body">',
'        #MESSAGE#',
'      </div>',
'    </div>',
'    <div class="a-Alert-buttons">',
'      <button class="a-Button a-Button--noLabel a-Button--withIcon a-Button--noUI" onclick="$x_Remove(''page_warning_msg'');" value="#CLOSE_NOTIFICATION#" type="button" title="#CLOSE_NOTIFICATION#"><span class="a-Icon icon-remove"></span></button>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#" class="htmldbNavLink">#TEXT#</a>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="2" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
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
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(3967736009314)
,p_page_template_id=>wwv_flow_api.id(3748494009314)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(4335625009314)
,p_page_template_id=>wwv_flow_api.id(3748494009314)
,p_name=>'Page Header (Position 3)'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(4625541009314)
,p_page_template_id=>wwv_flow_api.id(3748494009314)
,p_name=>'Page Header (Position 4)'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(4871170009314)
,p_page_template_id=>wwv_flow_api.id(3748494009314)
,p_name=>'Right Side Bar'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(5203935009314)
,p_page_template_id=>wwv_flow_api.id(3748494009314)
,p_name=>'After Body'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(5540029009314)
,p_page_template_id=>wwv_flow_api.id(3748494009314)
,p_name=>'Page Header (Position 1)'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(5785813009314)
,p_page_template_id=>wwv_flow_api.id(3748494009314)
,p_name=>'Page Header (Position 2)'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(5996960009314)
,p_theme_id=>4000
,p_name=>'APEX 5.0 - Wizard'
,p_internal_name=>'APEX_5.0_WIZARD'
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
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6326369009315)
,p_page_template_id=>wwv_flow_api.id(5996960009314)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6607176009315)
,p_page_template_id=>wwv_flow_api.id(5996960009314)
,p_name=>'Wizard Progress List'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6927180009315)
,p_page_template_id=>wwv_flow_api.id(5996960009314)
,p_name=>'Wizard Title'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7239174009315)
,p_page_template_id=>wwv_flow_api.id(5996960009314)
,p_name=>'Wizard Buttons'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(7447384009315)
,p_theme_id=>4000
,p_name=>'APEX 5.0 - Wizard Dialog'
,p_internal_name=>'APEX_5.0_WIZARD_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.builder.initWizardModal();',
'apex.builder.initWizardProgressBar();'))
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'',
'<head>',
'',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'#TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'#PAGE_CSS#',
'',
'    ',
'#APEX_JAVASCRIPT# ',
'<!--[if lt IE 9]><script src="#IMAGE_PREFIX#libraries/apex/html5_ie.js"></script><![endif]-->',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'    ',
'    ',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width,initial-scale=1" />',
'</head>',
'<body class="a-Dialog-page #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #ONLOAD#>',
'<noscript>&MSG_JSCRIPT.</noscript>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-Dialog a-Dialog--wizard">',
'  <div class="a-Dialog-wrap">',
'    <div class=" a-Dialog-wizardSteps">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="a-Dialog-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'    </div>',
'    <div class="a-Dialog-footer">',
'      #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-Alert a-Alert--success a-Alert--horizontal a-Alert--defaultIcons a-Alert--colorBG a-Alert--dialog" id="page_success_msg" role="alert">',
'  <div class="a-Alert-wrap">',
'    <div class="a-Alert-icon">',
'      <span class="a-Icon"></span>',
'    </div>',
'    <div class="a-Alert-content">',
'      <div class="a-Alert-header">',
'        <h2 class="a-Alert-title">#SUCCESS_MESSAGE_HEADING#</h2>',
'      </div>',
'      <div class="a-Alert-body">',
'        #SUCCESS_MESSAGE#',
'      </div>',
'    </div>',
'    <div class="a-Alert-buttons">',
'      <button class="a-Button a-Button--noLabel a-Button--withIcon a-Button--noUI" onclick="$x_Remove(''page_success_msg'');" value="#CLOSE_NOTIFICATION#" type="button" title="#CLOSE_NOTIFICATION#"><span class="a-Icon icon-remove"></span></button>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-Alert a-Alert--warning a-Alert--horizontal a-Alert--defaultIcons a-Alert--colorBG a-Alert--dialog" id="page_warning_msg" role="alert">',
'  <div class="a-Alert-wrap">',
'    <div class="a-Alert-icon">',
'      <span class="a-Icon"></span>',
'    </div>',
'    <div class="a-Alert-content">',
'      <div class="a-Alert-header">',
'        <h2 class="a-Alert-title">#ERROR_MESSAGE_HEADING#</h2>',
'      </div>',
'      <div class="a-Alert-body">',
'        #MESSAGE#',
'      </div>',
'    </div>',
'    <div class="a-Alert-buttons">',
'      <button class="a-Button a-Button--noLabel a-Button--withIcon a-Button--noUI" onclick="$x_Remove(''page_warning_msg'');" value="#CLOSE_NOTIFICATION#" type="button" title="#CLOSE_NOTIFICATION#"><span class="a-Icon icon-remove"></span></button>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%'
,p_theme_class_id=>4
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<br />',
'<br />',
'<pre>#MESSAGE#</pre>',
'<a href="#BACK_LINK#">#RETURN_TO_APPLICATION#</a>'))
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
'    <div class="apex-col apex-col-#COLUMN_SPAN_NUMBER# #ATTRIBUTES#">',
'#CONTENT#',
'</div>        '))
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'480'
,p_dialog_width=>'800'
,p_dialog_max_width=>'1200'
,p_dialog_css_classes=>'a-Dialog--wizard'
,p_dialog_browser_frame=>'MODAL'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(7574355009315)
,p_theme_id=>4000
,p_name=>'Popup Info'
,p_internal_name=>'POPUP_INFO'
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
'<title>#TITLE#</title><link rel="shortcut icon" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon.ico">',
'<link rel="icon" sizes="16x16" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon-16x16.png">',
'<link rel="icon" sizes="32x32" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon-32x32.png">',
'<link rel="apple-touch-icon" sizes="180x180" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon-180x180.png">#APEX_CSS#',
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
'</head><body #ONLOAD# style="padding:5px;min-width:380px;"><noscript>&MSG_JSCRIPT.</noscript>#FORM_OPEN#<a name="PAGETOP"></a>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="htmldbMessageHolder">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'<div>',
'  <div id="RP2">#REGION_POSITION_02#</div>',
'  <div id="RP3">#REGION_POSITION_03#</div>',
'  <div id="RP4">#REGION_POSITION_04#</div>',
'  <div id="RP5">#REGION_POSITION_05#</div>',
'  <div class="popupContent" id="ContentArea">#BODY#</div>',
'</div>',
'<div id="RP8" style="text-align:middle;">#REGION_POSITION_08#</div>',
'<br />',
'<br />',
''))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
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
,p_theme_class_id=>4
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
,p_translate_this_template=>'N'
);
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
end;
/
begin
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
 p_id=>wwv_flow_api.id(50977802009330)
,p_template_name=>'APEX 5.0 - Button'
,p_internal_name=>'APEX_5.0_BUTTON'
,p_template=>'<button onclick="#JAVASCRIPT#" class="a-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">#LABEL!HTML#</button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="a-Button a-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">#LABEL!HTML#</button>'
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>4000
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(51142698009330)
,p_template_name=>'APEX 5.0 - Button with Icon'
,p_internal_name=>'APEX_5.0_BUTTON_WITH_ICON'
,p_template=>'<button class="a-Button a-Button--iconTextButton #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES#>#LABEL!HTML#<span class="a-Icon #ICON_CSS_CLASSES#"></span></button>'
,p_hot_template=>'<button class="a-Button a-Button--hot a-Button--iconTextButton #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES#>#LABEL!HTML#<span class="a-Icon #ICON_CSS_CLASSES#"></span></button>'
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>4000
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(51628009009330)
,p_template_name=>'APEX 5.0 - Button with Icon - NOT ESCAPED'
,p_internal_name=>'APEX_5.0_BUTTON_WITH_ICON_NOT_ESCAPED'
,p_template=>'<button class="a-Button a-Button--iconTextButton #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES#>#LABEL#<span class="a-Icon #ICON_CSS_CLASSES#"></span></button>'
,p_hot_template=>'<button class="a-Button a-Button--hot a-Button--iconTextButton #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES#>#LABEL#<span class="a-Icon #ICON_CSS_CLASSES#"></span></button>'
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>4000
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(51885699009331)
,p_template_name=>'APEX 5.0 - Icon Badge Button'
,p_internal_name=>'APEX_5.0_ICON_BADGE_BUTTON'
,p_template=>'<button class="a-Button a-Button--noLabel #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL!ATTR#" aria-label="#LABEL!ATTR#" #BUTTON_ATTRIBUTES#><span class="a-Icon #ICON_CSS_CLASSES#"></span><span class="a-But'
||'ton-badge"></span></button>'
,p_hot_template=>'<button class="a-Button a-Button--hot a-Button--noLabel #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL!ATTR#" aria-label="#LABEL!ATTR#" #BUTTON_ATTRIBUTES#><span class="a-Icon #ICON_CSS_CLASSES#"></span><spa'
||'n class="a-Button-badge"></span></button>'
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>4000
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(51973415009331)
,p_template_name=>'APEX 5.0 - Icon Badge Menu Button'
,p_internal_name=>'APEX_5.0_ICON_BADGE_MENU_BUTTON'
,p_template=>'<button class="a-Button a-Button--noLabel a-Button--iconTextButton js-menuButton #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL!ATTR#" aria-label="#LABEL!ATTR#" #BUTTON_ATTRIBUTES#><span class="a-Icon #ICON_'
||'CSS_CLASSES#"></span><span class="a-Button-badge"></span><span class="a-Icon icon-menu-drop-down"></span></button>'
,p_hot_template=>'<button class="a-Button a-Button--hot a-Button--noLabel a-Button--iconTextButton js-menuButton #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" type="button" title="#LABEL!ATTR#" aria-label="#LABEL!ATTR#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES#><span class='
||'"a-Icon #ICON_CSS_CLASSES#"></span><span class="a-Button-badge"></span><span class="a-Icon icon-menu-drop-down"></span></button>'
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>4000
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(52137109009331)
,p_template_name=>'APEX 5.0 - Icon Menu Button'
,p_internal_name=>'APEX_5.0_ICON_MENU_BUTTON'
,p_template=>'<button class="a-Button a-Button--noLabel a-Button--iconTextButton js-menuButton #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" type="button" title="#LABEL!ATTR#" aria-label="#LABEL!ATTR#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES#><span class="a-Icon #ICON_'
||'CSS_CLASSES#" aria-hidden="true"></span><span class="a-Icon icon-menu-drop-down" aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="a-Button a-Button--hot a-Button--noLabel a-Button--iconTextButton js-menuButton #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" type="button" title="#LABEL!ATTR#" aria-label="#LABEL!ATTR#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES#><span class='
||'"a-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="a-Icon  icon-menu-drop-down" aria-hidden="true"></span></button>'
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>4000
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(52187365009331)
,p_template_name=>'APEX 5.0 - Icon Only Button'
,p_internal_name=>'APEX_5.0_ICON_ONLY_BUTTON'
,p_template=>'<button class="a-Button a-Button--noLabel a-Button--withIcon #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" aria-label="#LABEL!ATTR#" type="button" id="#BUTTON_ID#" title="#LABEL!ATTR#" #BUTTON_ATTRIBUTES#><span class="a-Icon #ICON_CSS_CLASSES#" aria-h'
||'idden="true"></span></button>'
,p_hot_template=>'<button class="a-Button a-Button--hot a-Button--noLabel a-Button--withIcon #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" aria-label="#LABEL!ATTR#" type="button" id="#BUTTON_ID#" title="#LABEL!ATTR#" #BUTTON_ATTRIBUTES#><span class="a-Icon #ICON_CSS_CL'
||'ASSES#" aria-hidden="true"></span></button>'
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>4000
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
 p_id=>wwv_flow_api.id(7783096009315)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="aRegion smallRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="aRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="aButtonContainer">',
'      #EDIT##CLOSE##CREATE##CREATE2##EXPAND##HELP##DELETE##COPY##PREVIOUS##NEXT#',
'    </span>',
'  </div>',
'  <div class="aRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'APEX 4.0 - Rounded Corner Small (Gray Top)'
,p_internal_name=>'APEX_4.0_ROUNDED_CORNER_SMALL_GRAY_TOP'
,p_plug_table_bgcolor=>'#FFFFFF'
,p_theme_id=>4000
,p_theme_class_id=>9
,p_plug_heading_bgcolor=>'#FFFFFF'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_form_table_attr=>'class="htmldbInstruct"'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(8040735009315)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="aRegion sideRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="aRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="aButtonContainer">',
'      #EDIT##CLOSE##CREATE##CREATE2##EXPAND##HELP##DELETE##COPY##PREVIOUS##NEXT#',
'    </span>',
'  </div>',
'  <div class="aRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'APEX 4.0 - Sidebar (Gray Header)'
,p_internal_name=>'APEX_4.0_SIDEBAR_GRAY_HEADER'
,p_plug_table_bgcolor=>'#F7F7E7'
,p_theme_id=>4000
,p_theme_class_id=>2
,p_plug_heading_bgcolor=>'#F7F7E7'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_form_table_attr=>' '
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(8223437009315)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="topbar" style="width:100%;clear:both;" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="topbar-top"><div class="topbar-top-r"></div></div>',
'  <div class="topbar-body"><div class="topbar-body-r"><div class="topbar-content">',
'     #BODY#',
'   </div></div></div>',
'  <div class="topbar-bottom"><div class="topbar-bottom-r"></div></div>',
'</div>'))
,p_page_plug_template_name=>'APEX 4.0 - Top Bar (for list buttons)'
,p_internal_name=>'APEX_4.0_TOP_BAR_FOR_LIST_BUTTONS'
,p_theme_id=>4000
,p_theme_class_id=>0
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <table class="TopBarUIFix" cellpadding="0" cellspacing="0" border="0" summary="" id="#REGION_STATIC_ID#" width="100%"><tbody class="GreenBar"><tr><td valign="middle" class="L">#BODY#</td><td width="30" class="C"><br /></td><td valign="middle" class='
||'"R" align="right"><span style="margin-right:10px;">#CLOSE#</span>#COPY##DELETE##CHANGE##EDIT##PREVIOUS##NEXT##CREATE##EXPAND#</td></tr></tbody></table>',
''))
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(8383731009316)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="aRegion aActionRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="aRegionHeading">',
'    <h1>#TITLE#</h1>',
'  </div>',
'  <div class="aRegionContent clearfix">',
'    #BODY#',
'  </div>',
'  <span class="aButtonContainer">',
'    #CLOSE##DELETE##EDIT##CHANGE##PREVIOUS##NEXT##CREATE#',
'  </span>',
'</section>'))
,p_page_plug_template_name=>'APEX 4.0 - Wizard Box'
,p_internal_name=>'APEX_4.0_WIZARD_BOX'
,p_theme_id=>4000
,p_theme_class_id=>12
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(8600690009316)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="aRegion aActionRegion confirmRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="aRegionHeading">',
'    <h1>#TITLE#</h1>',
'  </div>',
'  <div class="aRegionContent clearfix">',
'    <div class="aActionRegionIcon">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" />',
'    </div>',
'    #BODY#',
'  </div>',
'  <span class="aButtonContainer">',
'    #CLOSE##DELETE##EDIT##CHANGE##PREVIOUS##NEXT##CREATE#',
'  </span>',
'</section>'))
,p_page_plug_template_name=>'APEX 4.0 - Wizard Box (Confirm)'
,p_internal_name=>'APEX_4.0_WIZARD_BOX_CONFIRM'
,p_theme_id=>4000
,p_theme_class_id=>12
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(8841564009316)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-wiz-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# style="width:100%;">',
'  <div class="rc-blue-top"><div class="rc-blue-top-r">',
'    <div class="rc-title"><h2>#TITLE#</h2></div>',
'    <div class="rc-buttons">#CLOSE##DELETE##EDIT##CHANGE##PREVIOUS##NEXT##CREATE#</div>',
'  </div></div>',
'  <div class="rc-body"><div class="rc-body-r"><div class="rc-content">#BODY#</div></div></div>',
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>',
'</div>'))
,p_page_plug_template_name=>'APEX 4.0 - Wizard Box (wide)'
,p_internal_name=>'APEX_4.0_WIZARD_BOX_WIDE'
,p_theme_id=>4000
,p_theme_class_id=>12
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(9021407009316)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="aRegion pageEditBar #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'	<div class="gotoPage">',
'	#BODY##EXPAND#',
'	</div>',
'	<span class="lButtonContainer">',
'		#EDIT##CLOSE##CREATE##CREATE2##HELP##DELETE##COPY##PREVIOUS#',
'	</span>',
'	<div class="pageEditRight">',
'        <div class="rButtonContainer">',
'        #NEXT#',
'        </div>',
'		#SUB_REGIONS#',
'	</div>',
'</section>'))
,p_page_plug_template_name=>'APEX 4.2 - Page Edit Bar '
,p_internal_name=>'APEX_4.2_PAGE_EDIT_BAR_'
,p_theme_id=>4000
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(9213361009316)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="componentViewHeader aRegion #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_ATTRIBUTES#>',
'  <h1>#TITLE#</h1>',
'  #BODY#',
'</section>'))
,p_page_plug_template_name=>'APEX 4.2 - Page Edit Component Top Bar'
,p_internal_name=>'APEX_4.2_PAGE_EDIT_COMPONENT_TOP_BAR'
,p_theme_id=>4000
,p_theme_class_id=>0
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_form_table_attr=>' '
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(9374058009316)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="aWizardRegion dividerTop" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'<div class="wizardRegionHeading">',
'  <h1>#TITLE#</h1>',
'  <div class="buttonContainer">',
'#EDIT##CLOSE##EXPAND##HELP##DELETE##COPY##PREVIOUS##NEXT##CREATE##CREATE2#',
'  </div>',
'</div>',
'  #BODY#',
'</section>'))
,p_page_plug_template_name=>'APEX 4.2 - Wizard Body (Divider)'
,p_internal_name=>'APEX_4.2_WIZARD_BODY_DIVIDER'
,p_theme_id=>4000
,p_theme_class_id=>12
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(9618764009316)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-Accordion resize #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  #BODY#',
'  #SUB_REGIONS#',
'</div>',
''))
,p_sub_plug_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-Accordion-item">',
'#SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'APEX 5.0 - Accordion'
,p_internal_name=>'APEX_5.0_ACCORDION'
,p_theme_id=>4000
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(9841406009316)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-Alert #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="a-Alert-wrap">',
'    <div class="a-Alert-icon">',
'      <span class="a-Icon #ICON_CSS_CLASSES#"></span>',
'    </div>',
'    <div class="a-Alert-content">',
'      <div class="a-Alert-header">',
'        <h2 class="a-Alert-title">#TITLE#</h2>',
'      </div>',
'      <div class="a-Alert-body">',
'        #BODY#',
'      </div>',
'    </div>',
'    <div class="a-Alert-buttons">',
'      #PREVIOUS##CLOSE##CREATE##NEXT#',
'    </div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'APEX 5.0 - Alert'
,p_internal_name=>'APEX_5.0_ALERT'
,p_theme_id=>4000
,p_theme_class_id=>7
,p_default_template_options=>'a-Alert--defaultIcons'
,p_preset_template_options=>'a-Alert--warning:a-Alert--wizard'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(12192271009317)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-ButtonRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="a-ButtonRegion-wrap">',
'    <div class="a-ButtonRegion-col a-ButtonRegion-col--left"><div class="a-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'    <div class="a-ButtonRegion-col a-ButtonRegion-col--content">',
'      <h2 class="a-ButtonRegion-title">#TITLE#</h2>',
'      #BODY#',
'      <div class="a-ButtonRegion-buttons">#CHANGE#</div>',
'    </div>',
'    <div class="a-ButtonRegion-col a-ButtonRegion-col--right"><div class="a-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'APEX 5.0 - Button Region'
,p_internal_name=>'APEX_5.0_BUTTON_REGION'
,p_theme_id=>4000
,p_theme_class_id=>21
,p_default_template_options=>'a-ButtonRegion--wizard'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(14578610009317)
,p_layout=>'TABLE'
,p_template=>'<div id="#REGION_STATIC_ID#" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>#PREVIOUS##BODY##NEXT#</div>'
,p_page_plug_template_name=>'APEX 5.0 - Div with ID, Class, and Region Attributes'
,p_internal_name=>'APEX_5.0_DIV_WITH_ID,_CLASS,_AND_REGION_ATTRIBUTES'
,p_plug_table_bgcolor=>'#FFFFFF'
,p_theme_id=>4000
,p_theme_class_id=>0
,p_plug_heading_bgcolor=>'#FFFFFF'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_form_table_attr=>'class="htmldbInstruct"'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(14922466009318)
,p_plug_template_id=>wwv_flow_api.id(14578610009317)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(15102021009318)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-Region #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#" role="group" aria-labelledby="#REGION_STATIC_ID#_label">',
'  <div class="a-Region-header">',
'    <div class="a-Region-headerItems  a-Region-headerItems--title">',
'      <h2 class="a-Region-title" id="#REGION_STATIC_ID#_label">#TITLE#</h2>',
'    </div>',
'    <div class="a-Region-headerItems  a-Region-headerItems--buttons">',
'      #PREVIOUS##EXPAND##EDIT##CHANGE##DELETE##COPY##HELP##NEXT##CREATE##CREATE2##CLOSE#',
'    </div>',
'  </div>',
'  <div class="a-Region-body">',
'  <div class="a-Region-bodyHeader">#REGION_HEADER#</div>',
'  #BODY#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'APEX 5.0 - Grouping Region'
,p_internal_name=>'APEX_5.0_GROUPING_REGION'
,p_theme_id=>4000
,p_theme_class_id=>21
,p_preset_template_options=>'a-Region--paddedBody:a-Region--simple'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'      <button class="a-Button a-Button--noLabel a-Button--withIcon a-Button--noUI a-Button--goToTop" onclick="uF();" type="button" title="&TOP."><span class="a-Icon icon-up-chevron"></span></button>'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(17929527009319)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-Region a-Region--hideShow #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#" role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="a-Region-header">',
'    <div class="a-Region-headerItems  a-Region-headerItems--controls">',
'      <button class="a-Button a-Button--icon a-Button--hideShow" type="button"></button>',
'    </div>',
'    <div class="a-Region-headerItems  a-Region-headerItems--title">',
'      <h2 class="a-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'    </div>',
'    <div class="a-Region-headerItems  a-Region-headerItems--buttons">',
'      #PREVIOUS##EXPAND##EDIT##CHANGE##DELETE##COPY##HELP##NEXT##CREATE##CREATE2##CLOSE#',
'    </div>',
'  </div>',
'  <div class="a-Region-body">',
'  #BODY#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'APEX 5.0 - Hide + Show Region'
,p_internal_name=>'APEX_5.0_HIDE_+_SHOW_REGION'
,p_theme_id=>4000
,p_theme_class_id=>21
,p_default_template_options=>'a-Region--flush'
,p_preset_template_options=>'is-expanded'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(20085154009319)
,p_layout=>'TABLE'
,p_template=>'<div id="#REGION_STATIC_ID#" class="a-IRR-region #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading"><h2 class="u-VisuallyHidden" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>#PREVIOUS##BODY##NEXT#</div>'
,p_page_plug_template_name=>'APEX 5.0 - Interactive Report Region'
,p_internal_name=>'APEX_5.0_INTERACTIVE_REPORT_REGION'
,p_plug_table_bgcolor=>'#FFFFFF'
,p_theme_id=>4000
,p_theme_class_id=>0
,p_default_template_options=>'a-IRR-region--responsiveIconView'
,p_plug_heading_bgcolor=>'#FFFFFF'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(20957343009319)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-SystemMessage #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  #BODY#',
'</div>'))
,p_page_plug_template_name=>'APEX 5.0 - Message Region'
,p_internal_name=>'APEX_5.0_MESSAGE_REGION'
,p_plug_table_bgcolor=>'#FFFFFF'
,p_theme_id=>4000
,p_theme_class_id=>9
,p_plug_heading_bgcolor=>'#FFFFFF'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_form_table_attr=>'class="htmldbInstruct"'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(21114390009320)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="resize #REGION_CSS_CLASSES#"> ',
'#BODY#',
'<div id="#REGION_STATIC_ID#_content" class="resize">',
'#SUB_REGIONS#',
'</div>',
'</div>'))
,p_page_plug_template_name=>'APEX 5.0 - Nested Splitter'
,p_internal_name=>'APEX_5.0_NESTED_SPLITTER'
,p_plug_table_bgcolor=>'#FFFFFF'
,p_theme_id=>4000
,p_theme_class_id=>0
,p_plug_heading_bgcolor=>'#FFFFFF'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_form_table_attr=>'class="htmldbInstruct"'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(21358508009320)
,p_layout=>'TABLE'
,p_template=>'<div class="a-PageAnchors #COMPONENT_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>#BODY#</div>'
,p_page_plug_template_name=>'APEX 5.0 - Page Anchors'
,p_internal_name=>'APEX_5.0_PAGE_ANCHORS'
,p_plug_table_bgcolor=>'white'
,p_theme_id=>4000
,p_theme_class_id=>0
,p_plug_heading_bgcolor=>'white'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_form_table_attr=>' '
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(21562031009320)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-PageColumn resize #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  <div class="a-PageColumn-header">',
'    <h2 class="a-PageColumn-heading">#TITLE#</h2>',
'  </div>',
'  #BODY#',
'</div>'))
,p_page_plug_template_name=>'APEX 5.0 - Page Designer Column'
,p_internal_name=>'APEX_5.0_PAGE_DESIGNER_COLUMN'
,p_theme_id=>4000
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(21735354009320)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-PageColumn-body resize #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  #BODY#',
'</div>'))
,p_page_plug_template_name=>'APEX 5.0 - Page Designer Column (Body)'
,p_internal_name=>'APEX_5.0_PAGE_DESIGNER_COLUMN_BODY'
,p_theme_id=>4000
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(21945068009320)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-PageColumn resize #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  #BODY#',
'</div>'))
,p_page_plug_template_name=>'APEX 5.0 - Page Designer Column (No Heading)'
,p_internal_name=>'APEX_5.0_PAGE_DESIGNER_COLUMN_NO_HEADING'
,p_theme_id=>4000
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(22137661009320)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" class="a-PageDesigner-treeRegion resize #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'  <div class="a-Toolbar a-Toolbar-pageColumn a-Toolbar--treeRegion">',
'    <div class="a-Toolbar-items a-Toolbar-items--left">',
'      <h3 id="#REGION_STATIC_ID#_title" class="a-PageDesigner-treeTitle">#TITLE#</h3>',
'    </div>',
'    <div class="a-Toolbar-items a-Toolbar-items--right">#NEXT#</div>',
'  </div>',
'  <div class="a-PageDesigner-treeWrap u-ScrollingViewport resize">',
'    #BODY#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'APEX 5.0 - Page Designer Tree Region'
,p_internal_name=>'APEX_5.0_PAGE_DESIGNER_TREE_REGION'
,p_plug_table_bgcolor=>'#FFFFFF'
,p_theme_id=>4000
,p_theme_class_id=>0
,p_plug_heading_bgcolor=>'#FFFFFF'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_form_table_attr=>'class="htmldbInstruct"'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(22281488009320)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-ProcessingRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <span class="u-Processing"><span class="u-Processing-spinner"></span></span>',
'  <div class="a-ProcessingRegion-title">#TITLE#</div>',
'  <div class="a-ProcessingRegion-body">#BODY#</div>',
'</div>'))
,p_page_plug_template_name=>'APEX 5.0 - Processing Spinner Region'
,p_internal_name=>'APEX_5.0_PROCESSING_SPINNER_REGION'
,p_theme_id=>4000
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(22707589009320)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-Region #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#" role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="a-Region-header">',
'    <div class="a-Region-headerItems  a-Region-headerItems--title">',
'      <h2 class="a-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'    </div>',
'    <div class="a-Region-headerItems  a-Region-headerItems--buttons">',
'      #PREVIOUS##EXPAND##EDIT##CHANGE##DELETE##COPY##HELP##NEXT##CREATE##CREATE2##CLOSE#',
'    </div>',
'  </div>',
'  <div class="a-Region-body">',
'  <div class="a-Region-bodyHeader">#REGION_HEADER#</div>',
'  #BODY#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'APEX 5.0 - Region'
,p_internal_name=>'APEX_5.0_REGION'
,p_theme_id=>4000
,p_theme_class_id=>21
,p_preset_template_options=>'a-Region--noPadding'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'      <button class="a-Button a-Button--noLabel a-Button--withIcon a-Button--noUI a-Button--goToTop" onclick="uF();" type="button" title="&TOP."><span class="a-Icon icon-up-chevron"></span></button>'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(25164487009321)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-Region #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  <div class="a-Region-header">',
'    <div class="a-Region-headerItems  a-Region-headerItems--left">',
'      <h2 class="a-Region-title">#TITLE#</h2>',
'    </div>',
'    <div class="a-Region-headerItems  a-Region-headerItems--right">',
'      #PREVIOUS##EXPAND##EDIT##CHANGE##DELETE##COPY##HELP##NEXT##CREATE##CREATE2##CLOSE#',
'    </div>',
'  </div>',
'  <div class="a-Region-body">',
'  #BODY#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'APEX 5.0 - Region (Top Buttons)'
,p_internal_name=>'APEX_5.0_REGION_TOP_BUTTONS'
,p_theme_id=>4000
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(25357049009321)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-Region a-Region--hasIcon #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#" role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="a-Region-header">',
'    <div class="a-Region-headerItems  a-Region-headerItems--title">',
'      <h2 class="a-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'    </div>',
'    <div class="a-Region-headerItems  a-Region-headerItems--buttons">',
'      #PREVIOUS##EXPAND##EDIT##CHANGE##DELETE##COPY##HELP##NEXT##CREATE##CREATE2##CLOSE#',
'    </div>',
'  </div>',
'  <div class="a-Region-body">',
'    <div class="a-RegionMedia">',
'      <div class="a-RegionMedia-graphic">',
'        <span class="a-Icon a-Icon--regionIcon #ICON_CSS_CLASSES#"></span>',
'      </div>',
'      <div class="a-RegionMedia-content">',
'        #BODY#',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'APEX 5.0 - Region with Icon'
,p_internal_name=>'APEX_5.0_REGION_WITH_ICON'
,p_theme_id=>4000
,p_theme_class_id=>21
,p_preset_template_options=>'a-Region--noPadding'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(27523047009322)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-TabsContainer #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  <div class="a-Tabs-toolbar a-Toolbar">',
'    #SUB_REGION_HEADERS#',
'    <div class="a-Toolbar-items a-Toolbar-items--right">#NEXT#</div>',
'  </div>',
'  #SUB_REGIONS#',
'</div>',
''))
,p_sub_plug_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul>',
'#ENTRIES#',
'</ul>'))
,p_sub_plug_header_entry_templ=>'<li><a href="##SUB_REGION_ID#">#SUB_REGION_TITLE#</a></li>'
,p_sub_plug_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#SUB_REGION#',
''))
,p_page_plug_template_name=>'APEX 5.0 - Tabs'
,p_internal_name=>'APEX_5.0_TABS'
,p_theme_id=>4000
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(27723824009322)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-TabsContainer #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  <div class="a-Tabs-toolbar a-Toolbar">',
'    #SUB_REGION_HEADERS#',
'    <div class="a-Toolbar-items a-Toolbar-items--right">#NEXT#</div>',
'  </div>',
'  #SUB_REGIONS#',
'</div>'))
,p_sub_plug_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul>',
'#ENTRIES#',
'</ul>'))
,p_sub_plug_header_entry_templ=>'<li><a href="##SUB_REGION_ID#"><span title="#SUB_REGION_TITLE#" class="a-Icon #SUB_REGION_ICON_CSS_CLASSES#"></span><span class="u-VisuallyHidden">#SUB_REGION_TITLE#</span></a></li>'
,p_sub_plug_template=>'#SUB_REGION#'
,p_page_plug_template_name=>'APEX 5.0 - Tabs with Icons'
,p_internal_name=>'APEX_5.0_TABS_WITH_ICONS'
,p_theme_id=>4000
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(27905009009322)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-Toolbar #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  <div class="a-Toolbar-items a-Toolbar-items--left">#PREVIOUS#</div>',
'  <div class="a-Toolbar-items a-Toolbar-items--right">#NEXT#</div>',
'  #BODY#',
'</div>'))
,p_page_plug_template_name=>'APEX 5.0 - Toolbar'
,p_internal_name=>'APEX_5.0_TOOLBAR'
,p_theme_id=>4000
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(28144238009322)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="aWizardRegion" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  <div class="wizardRegionHeading">',
'    <h1><a href="javascript:void(0);" onclick="$(''##REGION_STATIC_ID#_content'').slideToggle();$(''##REGION_STATIC_ID#_img'').toggleClass(''expanded'');" class="hideShowLink"><img src="#IMAGE_PREFIX#f_spacer.gif" class="hideShow" alt="" id="#REGION_STATIC'
||'_ID#_img"/>#TITLE#</a></h1>',
'    <div class="buttonContainer">',
'    #EDIT##CLOSE##EXPAND##HELP##DELETE##COPY##PREVIOUS##NEXT##CREATE##CREATE2#',
'    </div>',
'  </div>',
'  <div class="hideShowRegion" id="#REGION_STATIC_ID#_content">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'APEX 5.0 - Wizard Body (Hide/Show)'
,p_internal_name=>'APEX_5.0_WIZARD_BODY_HIDE/SHOW'
,p_theme_id=>4000
,p_theme_class_id=>12
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(28288519009322)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="wizardHeader" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  #BODY#',
'</div>'))
,p_page_plug_template_name=>'APEX 5.0 - Wizard Header'
,p_internal_name=>'APEX_5.0_WIZARD_HEADER'
,p_theme_id=>4000
,p_theme_class_id=>12
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(28475366009322)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-Wizard-region a-Form #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  <h2 class="u-VisuallyHidden">#TITLE#</h2>',
'  <div class="a-Wizard-regionHeader">#REGION_HEADER#</div>',
'  <div class="a-Wizard-regionBody">#BODY#</div>',
'  <div class="a-Wizard-regionFooter">#REGION_FOOTER#</div>',
'</div>'))
,p_page_plug_template_name=>'APEX 5.0 - Wizard Region'
,p_internal_name=>'APEX_5.0_WIZARD_REGION'
,p_theme_id=>4000
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(28728155009322)
,p_layout=>'TABLE'
,p_template=>'<div class="#REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#><h1 class="a-Wizard-title">#TITLE#</h1></div>'
,p_page_plug_template_name=>'APEX 5.0 - Wizard Title Region'
,p_internal_name=>'APEX_5.0_WIZARD_TITLE_REGION'
,p_plug_table_bgcolor=>'#FFFFFF'
,p_theme_id=>4000
,p_theme_class_id=>0
,p_plug_heading_bgcolor=>'#FFFFFF'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_form_table_attr=>'class="htmldbInstruct"'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(28912109009322)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-TabsContainer #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  <div class="a-Tabs-toolbar a-Toolbar">',
'    #SUB_REGION_HEADERS#',
'    <div class="a-Toolbar-items a-Toolbar-items--right">#NEXT#</div>',
'  </div>',
'  #SUB_REGIONS#',
'</div>'))
,p_sub_plug_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul>',
'#ENTRIES#',
'</ul>'))
,p_sub_plug_header_entry_templ=>'<li><a href="##SUB_REGION_ID#"><span title="#SUB_REGION_TITLE#" class="a-Icon #SUB_REGION_ICON_CSS_CLASSES#"></span><span class="a-Tabs-label">#SUB_REGION_TITLE#</span></a></li>'
,p_sub_plug_template=>'#SUB_REGION#'
,p_page_plug_template_name=>'APEX 5.1 - Tabs with Icons + Text'
,p_internal_name=>'APEX_5.1_TABS_WITH_ICONS_+_TEXT'
,p_theme_id=>4000
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(29147076009322)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="aRegion aActionRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="aRegionHeading">',
'    <h1>#TITLE#</h1>',
'  </div>',
'  <div class="aRegionContent clearfix">',
'    #BODY#',
'  </div>',
'  <span class="aButtonContainer">',
'    #CLOSE##DELETE##EDIT##CHANGE##PREVIOUS##NEXT##CREATE#',
'  </span>',
'</section>'))
,p_page_plug_template_name=>'Finder Help'
,p_internal_name=>'FINDER_HELP'
,p_theme_id=>4000
,p_theme_class_id=>12
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(29299371009322)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="aRegion altHeading editRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="aRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="aButtonContainer">',
'      #EDIT##CLOSE##CREATE##CREATE2##EXPAND##HELP##DELETE##COPY##PREVIOUS##NEXT#',
'      <a href="#" class="aIconButton" onclick="uF();return false;"><img src="#IMAGE_PREFIX#f_spacer.gif" class="upIcon" alt="&TOP." /></a>',
'    </span>',
'  </div>',
'  <div class="aRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Gray Box (c:htmldbGrayBox)'
,p_internal_name=>'GRAY_BOX_C:HTMLDBGRAYBOX'
,p_theme_id=>4000
,p_theme_class_id=>0
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(29511708009323)
,p_layout=>'TABLE'
,p_template=>'<section class="aRegion smallHeading noPadding componentRegion #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_ATTRIBUTES#>#BODY#</section>'
,p_page_plug_template_name=>'Page Edit - Standard Content'
,p_internal_name=>'PAGE_EDIT_STANDARD_CONTENT'
,p_theme_id=>4000
,p_theme_class_id=>0
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_form_table_attr=>' '
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(29745182009323)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <script type="text/javascript">  ',
'    function toggleFind() {',
'      html_ToggleElement(''body#REGION_ID#'');  ',
'    }',
'  </script>',
'  <div id="body#REGION_ID#" style="display:none;">',
'    <table cellpadding="0" cellspacing="0" border="0" summary="" id="#REGION_ID#">',
'      <tr>',
'        <td valign="top">#BODY#</td>',
'        <td valign="top">#CLOSE##EDIT##DELETE##CREATE##CREATE2##PREVIOUS##NEXT#</td>',
'      </tr>',
'    </table>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Search and Replace Region (Editor)'
,p_internal_name=>'SEARCH_AND_REPLACE_REGION_EDITOR'
,p_theme_id=>4000
,p_theme_class_id=>0
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Gray Head, white body'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(29867752009323)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="aRegion aActionRegion confirmRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="aRegionHeading">',
'    <h1>#TITLE#</h1>',
'  </div>',
'  <div class="aRegionContent clearfix">',
'    <div class="aActionRegionIcon">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" />',
'    </div>',
'    #BODY#',
'  </div>',
'  <span class="aButtonContainer">',
'    #CLOSE##DELETE##EDIT##CHANGE##PREVIOUS##NEXT##CREATE#',
'  </span>',
'</section>'))
,p_page_plug_template_name=>'Wizard Box (Confirm)'
,p_internal_name=>'WIZARD_BOX_CONFIRM'
,p_theme_id=>4000
,p_theme_class_id=>12
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(30164393009323)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="aRegion aActionRegion failRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="aRegionHeading">',
'    <h1>#TITLE#</h1>',
'  </div>',
'  <div class="aRegionContent clearfix">',
'    <div class="aActionRegionIcon">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" />',
'    </div>',
'    #BODY#',
'  </div>',
'  <span class="aButtonContainer">',
'    #CLOSE##DELETE##EDIT##CHANGE##PREVIOUS##NEXT##CREATE#',
'  </span>',
'</section>'))
,p_page_plug_template_name=>'Wizard Box (Fail)'
,p_internal_name=>'WIZARD_BOX_FAIL'
,p_theme_id=>4000
,p_theme_class_id=>12
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(30268305009323)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="aRegion aActionRegion successRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="aRegionHeading">',
'    <h1>#TITLE#</h1>',
'  </div>',
'  <div class="aRegionContent clearfix">',
'    <div class="aActionRegionIcon">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" />',
'    </div>',
'    #BODY#',
'  </div>',
'  <span class="aButtonContainer">',
'    #CLOSE##DELETE##EDIT##CHANGE##PREVIOUS##NEXT##CREATE#',
'  </span>',
'</section>'))
,p_page_plug_template_name=>'Wizard Box (Success)'
,p_internal_name=>'WIZARD_BOX_SUCCESS'
,p_theme_id=>4000
,p_theme_class_id=>12
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(30501019009323)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="aRegion aActionRegion warningRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="aRegionHeading">',
'    <h1>#TITLE#</h1>',
'  </div>',
'  <div class="aRegionContent clearfix">',
'    <div class="aActionRegionIcon">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" />',
'    </div>',
'    #BODY#',
'  </div>',
'  <span class="aButtonContainer">',
'    #CLOSE##DELETE##EDIT##CHANGE##PREVIOUS##NEXT##CREATE#',
'  </span>',
'</section>'))
,p_page_plug_template_name=>'Wizard Box (Warning)'
,p_internal_name=>'WIZARD_BOX_WARNING'
,p_theme_id=>4000
,p_theme_class_id=>12
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
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
 p_id=>wwv_flow_api.id(41268074009327)
,p_list_template_current=>'<button onclick="javascript:redirect(''#LINK#'')" class="aButton hotButton #A01#" type="button"><span>#TEXT#</span></button> '
,p_list_template_noncurrent=>'<button onclick="javascript:redirect(''#LINK#'')" class="aButton #A01#" type="button"><span>#TEXT#</span></button> '
,p_list_template_name=>'APEX 4.0 - Pull Down Button List'
,p_internal_name=>'APEX_4.0_PULL_DOWN_BUTTON_LIST'
,p_theme_id=>4000
,p_theme_class_id=>9
,p_list_template_before_rows=>'<div class="rButtonContainer dhtmlMenuLGButton">'
,p_list_template_after_rows=>'</div>'
,p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu" style="display:none;">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="dhtmlMenuSep"><img src="#IMAGE_PREFIX#themes/theme_13/1px_trans.gif"  width="1" height="1" alt="" class="dhtmlMenuSep" /></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>'<button onclick="javascript:redirect(''#LINK#'')" class="aButton hotButton #A01#" type="button"><span>#TEXT#</span></button> '
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<button onclick="app_AppMenuMultiOpenBottom2(this,''#LIST_ITEM_ID#'',false)" class="dhtmlMenu" type="button"><span>#TEXT#<img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></span></button> ',
''))
,p_sub_templ_curr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" alt="" /></a></li>'
,p_sub_templ_noncurr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" alt="" / ></a></li>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(41495703009327)
,p_list_template_current=>'  <li><a href="#LINK#" title="#TEXT_ESC_SC#"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="#TEXT_ESC_SC#" class="iconSmall #A01#" /></a></li>'
,p_list_template_noncurrent=>'  <li><a href="#LINK#" title="#TEXT_ESC_SC#"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="#TEXT_ESC_SC#" class="iconSmall #A01#" /></a></li>'
,p_list_template_name=>'APEX 4.2 - Run / Edit Bar'
,p_internal_name=>'APEX_4.2_RUN_/_EDIT_BAR'
,p_theme_id=>4000
,p_theme_class_id=>3
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="aRunEditBar">',
'  <li><span class="currentPage">&PAGE. &FB_FLOW_PAGE_ID.</span></li>'))
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(41707569009327)
,p_list_template_current=>'<li class="a-List-item is-current"><a href="#LINK#" class="a-Links-link" #A02#>#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li class="a-List-item"><a href="#LINK#" class="a-Links-link" #A02#>#TEXT#</a></li>'
,p_list_template_name=>'APEX 5.0 - Basic List'
,p_internal_name=>'APEX_5.0_BASIC_LIST'
,p_theme_id=>4000
,p_theme_class_id=>1
,p_list_template_before_rows=>'<ul class="a-List #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(41939602009327)
,p_list_template_current=>'<li class="a-List-item is-current">#TEXT#</li>'
,p_list_template_noncurrent=>'<li class="a-List-item">#TEXT#</li>'
,p_list_template_name=>'APEX 5.0 - Basic List (no links)'
,p_internal_name=>'APEX_5.0_BASIC_LIST_NO_LINKS'
,p_theme_id=>4000
,p_theme_class_id=>1
,p_list_template_before_rows=>'<ul class="a-List a-List--basic #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(42067221009327)
,p_list_template_current=>'<li class="a-ImageNav-item"><button type="button" data-link="#LINK#" class="a-ImageNav-link launch-aut #A01#"><span class="a-ImageNav-img gi-icon-#IMAGE#"></span><span class="a-ImageNav-label">#TEXT_ESC_SC#</span></button></li>'
,p_list_template_noncurrent=>'<li class="a-ImageNav-item"><a href="#LINK#" class="a-ImageNav-link #A01#"><span class="a-ImageNav-img gi-icon-#IMAGE#"></span><span class="a-ImageNav-label">#TEXT_ESC_SC#</span></a></li>'
,p_list_template_name=>'APEX 5.0 - Image Navigation'
,p_internal_name=>'APEX_5.0_IMAGE_NAVIGATION'
,p_theme_id=>4000
,p_theme_class_id=>0
,p_list_template_before_rows=>'<ul class="a-ImageNav #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_list_template_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<td style="width: 20%">',
'	<a href="#LINK#" class="iconContainer" title="#TEXT_ESC_SC#">',
'		<span class="largeIcon"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></span>',
'		<span class="iconLabel">#TEXT#</span>',
'	</a>',
'</td>'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(42295030009327)
,p_list_template_current=>'<li class="a-LinksList-item is-current #A03#"><a href="#LINK#" class="a-LinksList-link" #A02#><span class="a-LinksList-icon"><span class="t-Icon #IMAGE#"></span></span><span class="a-LinksList-label">#TEXT#</span><span class="a-LinksList-badge">#A01#'
||'</span></a></li>'
,p_list_template_noncurrent=>'<li class="a-LinksList-item #A03#"><a href="#LINK#" class="a-LinksList-link" #A02#><span class="a-LinksList-icon"><span class="t-Icon #IMAGE#"></span></span><span class="a-LinksList-label">#TEXT#</span><span class="a-LinksList-badge">#A01#</span></a>'
||'</li>'
,p_list_template_name=>'APEX 5.0 - Links List'
,p_internal_name=>'APEX_5.0_LINKS_LIST'
,p_theme_id=>4000
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
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(43875830009328)
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
,p_theme_id=>4000
,p_theme_class_id=>9
,p_default_template_options=>'a-MediaList--noBadge'
,p_list_template_before_rows=>'<ul class="a-MediaList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(46310901009328)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_name=>'APEX 5.0 - Menu Popup'
,p_internal_name=>'APEX_5.0_MENU_POPUP'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menu", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup(e);',
'}',
'e.menu({ slide: e.hasClass("js-slide")});',
''))
,p_theme_id=>4000
,p_theme_class_id=>20
,p_list_template_before_rows=>'<div id="#PARENT_STATIC_ID#_menu" class="#COMPONENT_CSS_CLASSES#" style="display:none;"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(46868896009329)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_name=>'APEX 5.0 - Navigation List'
,p_internal_name=>'APEX_5.0_NAVIGATION_LIST'
,p_theme_id=>4000
,p_theme_class_id=>7
,p_list_template_before_rows=>'<ul>'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_sub_list_item_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>',
''))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>',
''))
,p_sub_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>',
''))
,p_sub_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>',
''))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(47135636009329)
,p_list_template_current=>'<li class="a-Tabs-item is-active"><a href="#LINK#" class="a-Tabs-link">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li class="a-Tabs-item"><a href="#LINK#" class="a-Tabs-link">#TEXT#</a></li>'
,p_list_template_name=>'APEX 5.0 - Sub Tabs'
,p_internal_name=>'APEX_5.0_SUB_TABS'
,p_theme_id=>4000
,p_theme_class_id=>0
,p_list_template_before_rows=>'<div class="a-TabsContainer a-TabsContainer--subTabs"><ul class="a-Tabs a-Tabs--subTabButtons">'
,p_list_template_after_rows=>'</ul></div>'
,p_list_template_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="aSubTabs"><ul>',
'<li class="active"><a href="#LINK#" title="#TEXT_ESC_SC#"><span>#TEXT#</span></a></li>'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(47366876009329)
,p_list_template_current=>'<li class="a-WizardSteps-step is-active"><div class="a-WizardSteps-wrap"><span class="a-WizardSteps-marker"><span class="a-Icon icon-wizard-step-complete"></span></span><span class="a-WizardSteps-label">#TEXT# <span class="a-WizardSteps-labelState"><'
||'/span></span></div></li>'
,p_list_template_noncurrent=>'<li class="a-WizardSteps-step is-inactive"><div class="a-WizardSteps-wrap"><span class="a-WizardSteps-marker"><span class="a-Icon icon-wizard-step-complete"></span></span><span class="a-WizardSteps-label">#TEXT# <span class="a-WizardSteps-labelState"'
||'></span></span></div></li>'
,p_list_template_name=>'APEX 5.0 - Wizard Progress Bar'
,p_internal_name=>'APEX_5.0_WIZARD_PROGRESS_BAR'
,p_theme_id=>4000
,p_theme_class_id=>17
,p_default_template_options=>'a-WizardSteps--slim'
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h2 class="u-VisuallyHidden">#CURRENT_PROGRESS#</h2>',
'<ul class="a-WizardSteps #COMPONENT_CSS_CLASSES#">'))
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(47678220009329)
,p_list_template_current=>'<td align="center" valign="top"><a href="#LINK#" title="#TEXT_ESC_SC#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# class="htmldbGreenIcon" /></a><a href="#LINK#" class="noVisit" title="#TEXT_ESC_SC#">#TEXT#</a></td>'
,p_list_template_noncurrent=>'<td align="center" valign="top"><a href="#LINK#" title="#TEXT_ESC_SC#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# class="htmldbGreenIcon"/></a><a href="#LINK#" class="noVisit" title="#TEXT_ESC_SC#">#TEXT#</a></td>'
,p_list_template_name=>'Horizontal List with Images Fixed Width 40000px(c:htmldbListImagesHFW)'
,p_internal_name=>'HORIZONTAL_LIST_WITH_IMAGES_FIXED_WIDTH_30PXC:HTMLDBLISTIMAGESHFW'
,p_theme_id=>4000
,p_theme_class_id=>0
,p_list_template_before_rows=>'<table cellspacing="0" cellpadding="0" border="0" class="htmldbListImages30px" summary=""><tr>'
,p_list_template_after_rows=>'</tr></table>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(47923962009329)
,p_list_template_current=>'<li><a href="#LINK#" title="#TEXT#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#" title="#TEXT#">#TEXT#</a></li>'
,p_list_template_name=>'Simple Image List'
,p_internal_name=>'SIMPLE_IMAGE_LIST'
,p_theme_id=>4000
,p_theme_class_id=>0
,p_list_template_before_rows=>'<ul class="listwithicon">'
,p_list_template_after_rows=>'</ul>'
,p_list_template_comment=>'<img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# />'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(48162590009329)
,p_list_template_current=>'<li class="a-LinksList-item is-current #A03#"><a href="#LINK#" class="a-LinksList-link" #A02#><span class="a-LinksList-icon"><span class="t-Icon #IMAGE#"></span></span><span class="a-LinksList-label">#TEXT#</span><span class="a-LinksList-badge">#A01#'
||'</span></a></li>'
,p_list_template_noncurrent=>'<li class="a-LinksList-item #A03#"><a href="#LINK#" class="a-LinksList-link" #A02#><span class="a-LinksList-icon"><span class="t-Icon #IMAGE#"></span></span><span class="a-LinksList-label">#TEXT#</span><span class="a-LinksList-badge">#A01#</span></a>'
||'</li>'
,p_list_template_name=>'Unordered List (c:htmldbUl) From 4999'
,p_internal_name=>'UNORDERED_LIST_C:HTMLDBUL_FROM_4999'
,p_theme_id=>4000
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
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(49495535009329)
,p_list_template_current=>'<li>#TEXT#</li>'
,p_list_template_noncurrent=>'<li>#TEXT#</li>'
,p_list_template_name=>'Unordered List (no links)'
,p_internal_name=>'UNORDERED_LIST_NO_LINKS'
,p_theme_id=>4000
,p_theme_class_id=>1
,p_list_template_before_rows=>'<ul class="htmldbUl">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(49697646009329)
,p_list_template_current=>'<li><span class="fielddata">#TEXT#</span></li>'
,p_list_template_noncurrent=>'<li><span class="fielddata">#TEXT#</a></li>'
,p_list_template_name=>'unordered list without links'
,p_internal_name=>'UNORDERED_LIST_WITHOUT_LINKS'
,p_theme_id=>4000
,p_theme_class_id=>1
,p_list_template_before_rows=>'<ul class="htmldbUl">'
,p_list_template_after_rows=>'</ul>'
);
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
end;
/
begin
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
 p_id=>wwv_flow_api.id(30713664009323)
,p_row_template_name=>'APEX 4.2 - Portlet Column Template'
,p_internal_name=>'APEX_4.2_PORTLET_COLUMN_TEMPLATE'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="a-AVPList-item">',
'  <span class="a-AVPList-label">#COLUMN_HEADER#</span>',
'  <span class="a-AVPList-value">#COLUMN_VALUE#</span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="a-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_ID#_report">'
,p_row_template_after_rows=>'</ul>'
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'0'
,p_theme_id=>4000
,p_theme_class_id=>0
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(30921398009323)
,p_row_template_name=>'APEX 4.2 - Portlet Row Template'
,p_internal_name=>'APEX_4.2_PORTLET_ROW_TEMPLATE'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="a-AVPList-item">',
'  <span class="a-AVPList-label">#1#</span>',
'  <span class="a-AVPList-value">#2#</span>',
'</li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="a-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_ID#_report">',
''))
,p_row_template_after_rows=>'</ul>'
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>4000
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(31075627009323)
,p_row_template_name=>'APEX 5.0 - App Cards Report'
,p_internal_name=>'APEX_5.0_APP_CARDS_REPORT'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="a-AppCards-item #ID#">',
'  <div class="a-AppCards-itemContainer">',
'    <div class="a-AppCards-iconContainer">',
'      <span class="a-AppCards-icon #ICON_CLASS#"></span>',
'    </div>',
'    <div class="a-AppCards-contentContainer" id="#ID#_name">',
'      <h2 class="a-AppCards-name">#APP_NAME#</h2>',
'      <div class="a-AppCards-info">#APP_INFO#</div>',
'    </div>',
'    <div class="a-AppCards-actionsContainer">',
'        #MODIFY_APP_BUTTON#',
'        #RUN_APP_BUTTON#',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="a-AppCards a-AppCards--slim  a-AppCards--stacked">'
,p_row_template_after_rows=>'</ul>'
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>4000
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(31359185009323)
,p_row_template_name=>'APEX 5.0 - Badge List (Named Column)'
,p_internal_name=>'APEX_5.0_BADGE_LIST_NAMED_COLUMN'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="a-BadgeList-item #A01#">',
'  <span class="a-BadgeList-label">#COLUMN_HEADER#</span>',
'  <span class="a-BadgeList-value">#COLUMN_VALUE#</span>',
'</li>',
''))
,p_row_template_before_rows=>'<ul class="a-BadgeList #COMPONENT_CSS_CLASSES#">'
,p_row_template_after_rows=>'</ul>'
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'0'
,p_theme_id=>4000
,p_theme_class_id=>0
,p_preset_template_options=>'a-BadgeList--fixed:a-BadgeList--large'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(34468499009325)
,p_row_template_name=>'APEX 5.0 - Badge List (Row)'
,p_internal_name=>'APEX_5.0_BADGE_LIST_ROW'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item">',
'  <span class="t-BadgeList-label">#1#</span>',
'  <span class="t-BadgeList-value">#2#</span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-BadgeList #COMPONENT_CSS_CLASSES#">'
,p_row_template_after_rows=>'</ul>'
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>4000
,p_theme_class_id=>6
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(34734987009325)
,p_row_template_name=>'APEX 5.0 - Links List'
,p_internal_name=>'APEX_5.0_LINKS_LIST'
,p_row_template1=>'<li class="a-LinksList-item">#COLUMN_VALUE#</li>'
,p_row_template_before_rows=>'<ul class="a-LinksList a-LinksList--report #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES#>'
,p_row_template_after_rows=>'</ul>'
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_column_heading_template=>'OMIT'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_theme_id=>4000
,p_theme_class_id=>0
,p_default_template_options=>'a-LinksList--nowrap:a-LinksList--showArrow'
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(34734987009325)
,p_row_template_before_first=>'OMIT'
,p_row_template_after_last=>'OMIT'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(35507766009325)
,p_row_template_name=>'APEX 5.0 - Portlet Column Template'
,p_internal_name=>'APEX_5.0_PORTLET_COLUMN_TEMPLATE'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="a-AVPList-item">',
'  <span class="a-AVPList-label">#COLUMN_HEADER#</span>',
'  <span class="a-AVPList-value">#COLUMN_VALUE#</span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="a-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_ID#_report">'
,p_row_template_after_rows=>'</ul>'
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'0'
,p_theme_id=>4000
,p_theme_class_id=>0
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(35684653009325)
,p_row_template_name=>'APEX 5.0 - Portlet Row Template'
,p_internal_name=>'APEX_5.0_PORTLET_ROW_TEMPLATE'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="a-AVPList-item">',
'  <span class="a-AVPList-label">#1#</span>',
'  <span class="a-AVPList-value">#2#</span>',
'</li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="a-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_ID#_report">',
''))
,p_row_template_after_rows=>'</ul>'
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>4000
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(35880763009325)
,p_row_template_name=>'APEX 5.0 - Standard Report'
,p_internal_name=>'APEX_5.0_STANDARD_REPORT'
,p_row_template1=>'<td class="a-Report-cell" #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-Report #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES#>',
'  <div class="a-Report-wrap">',
'    <table class="a-Report-pagination">#TOP_PAGINATION#</table>',
'    <div class="a-Report-tableWrap">',
'    <table class="a-Report-report" summary="#REGION_TITLE#">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      </tbody>',
'    </table>',
'    </div>',
'    <div class="a-Report-links">#EXTERNAL_LINK##CSV_LINK#</div>',
'    <table class="a-Report-pagination a-Report-pagination a-Report-pagination--bottom">#PAGINATION#</table>',
'  </div>',
'</div>'))
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th class="a-Report-colHead" #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>'</thead><tbody>'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="a-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="a-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="a-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="a-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="a-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>4000
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(35880763009325)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(38363253009326)
,p_row_template_name=>'APEX 5.0 - Vertical Report'
,p_internal_name=>'APEX_5.0_VERTICAL_REPORT'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<tr>',
'  <td class="a-Report-cell a-Report-cell--header" scope="row">#COLUMN_HEADER#</td>',
'  <td class="a-Report-cell">#COLUMN_VALUE#</td>',
'</tr>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-Report a-Report--vertical a-Report--staticRowColors #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES#>',
'  <div class="a-Report-wrap">',
'    <table class="a-Report-pagination">#TOP_PAGINATION#</table>',
'    <div class="a-Report-tableWrap">',
'    <table class="a-Report-report" summary="#REGION_TITLE#">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    </table>',
'    </div>',
'    <div class="a-Report-links">#EXTERNAL_LINK##CSV_LINK#</div>',
'    <table class="a-Report-pagination a-Report-pagination a-Report-pagination--bottom">#PAGINATION#</table>',
'  </div>',
'</div>'))
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="a-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="a-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="a-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="a-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="a-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>4000
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(38363253009326)
,p_row_template_before_first=>' '
,p_row_template_after_last=>' '
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(39683830009326)
,p_row_template_name=>'No Background'
,p_internal_name=>'NO_BACKGROUND'
,p_row_template1=>'<td#ALIGNMENT# id="td#ROWNUM#_#COLNUM#" headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" class="htmldbRptNoBackground" summary="#REGION_TITLE#">',
'<tbody>'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</tbody>',
'</table>'))
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_column_heading_template=>'<th#ALIGNMENT# id="#COLUMN_HEADER_NAME#">#COLUMN_HEADER#</th>'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>4000
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(39683830009326)
,p_row_template_before_first=>'<tr id="row#ROWNUM#">'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(39893828009326)
,p_row_template_name=>'P890_AD_MATCHING_ITEMS'
,p_internal_name=>'P890_AD_MATCHING_ITEMS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<tr><td>#CHK#</td><td>#REGION_NAME#</td><td>#I_NAME#</td><td>#I_LABEL#</td><td>#I_HELP_TEXT#</td><td>#I_FORMAT_MASK#</td><td>#I_FORMAT_MASK2#</td><td>#I_DEFAULT#</td><td>#I_WIDTH#</td><td>#I_HEIGHT#</td><td>#I_DATA_TYPE#</td></tr>',
'<tr><td>&nbsp;</td><td>#FROM_AD#</td><td>#C_COLUMN_NAME#</td><td>#C_LABEL#</td><td>#C_HELP_TEXT#</td><td>#C_FORMAT_MASK#</td><td>#C_FORM_FORMAT_MASK#</td><td>#C_DEFAULT_VALUE#</td><td>#C_FORM_DISPLAY_WIDTH#</td><td>#C_FORM_DISPLAY_HEIGHT#</td><td>#C_'
||'FORM_DATA_TYPE#</td></tr>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellpadding="0" cellspacing="0" class="htmldbStandard3"  border="0" summary="" id="#REGION_ID#">',
'<tbody>'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</tbody>',
'</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_column_heading_template=>'<th#ALIGNMENT# id="#COLUMN_HEADER_NAME#">#COLUMN_HEADER#</th>'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>4000
,p_theme_class_id=>2
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(40129382009326)
,p_row_template_name=>'P897_AD_MATCHING_RC'
,p_internal_name=>'P897_AD_MATCHING_RC'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<tr><td>#CHK#</td><td>#REGION_NAME#</td><td>#RC_NAME#</td><td>#RC_LABEL#</td><td>#RC_HELP_TEXT#</td><td>#RC_FORMAT_MASK#</td><td>#RC_FORMAT_MASK2#</td><td>#RC_REPORT_COL_ALIGN#</td></tr>',
'<tr><td>&nbsp;</td><td>#FROM_AD#</td><td>&nbsp;</td><td>#C_LABEL#</td><td>#C_HELP_TEXT#</td><td>#C_FORMAT_MASK#</td><td>#C_REPORT_FORMAT_MASK#</td><td>#C_REPORT_COL_ALIGN#</td></tr>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellpadding="0" cellspacing="0" class="htmldbStandard3"  border="0" summary="" id="#REGION_ID#">',
'<tbody>'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</tbody>',
'</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_column_heading_template=>'<th#ALIGNMENT# id="#COLUMN_HEADER_NAME#">#COLUMN_HEADER#</th>'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>4000
,p_theme_class_id=>2
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(40270444009326)
,p_row_template_name=>'P921_AD_MATCHING_ITEMS'
,p_internal_name=>'P921_AD_MATCHING_ITEMS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<tr><td>#CHK#</td><td>#REGION_NAME#</td><td>#I_NAME#</td><td>#I_LABEL#</td><td>#I_HELP_TEXT#</td><td>#I_FORMAT_MASK#</td><td>#I_DEFAULT#</td><td>#I_WIDTH#</td><td>#I_HEIGHT#</td><td>#I_DATA_TYPE#</td></tr>',
'<tr><td>&nbsp;</td><td>#FROM_AD#</td><td>#C_COLUMN_NAME#</td><td>#C_LABEL#</td><td>#C_HELP_TEXT#</td><td>#C_FORMAT_MASK#</td><td>#C_DEFAULT_VALUE#</td><td>#C_FORM_DISPLAY_WIDTH#</td><td>#C_FORM_DISPLAY_HEIGHT#</td><td>#C_FORM_DATA_TYPE#</td></tr>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellpadding="0" cellspacing="0" class="htmldbStandard3"  border="0" summary="" id="#REGION_ID#">',
'<tbody>'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</tbody>',
'</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_column_heading_template=>'<th#ALIGNMENT# id="#COLUMN_HEADER_NAME#">#COLUMN_HEADER#</th>'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>4000
,p_theme_class_id=>2
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(40521347009327)
,p_row_template_name=>'P922_AD_MATCHING_RC'
,p_internal_name=>'P922_AD_MATCHING_RC'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<tr><td>#CHK#</td><td>#REGION_NAME#</td><td>#RC_NAME#</td><td>#RC_LABEL#</td><td>#RC_HELP_TEXT#</td><td>#RC_FORMAT_MASK#</td><td>#RC_REPORT_COL_ALIGN#</td></tr>',
'<tr><td>&nbsp;</td><td>#FROM_AD#</td><td>&nbsp;</td><td>#C_LABEL#</td><td>#C_HELP_TEXT#</td><td>#C_FORMAT_MASK#</td><td>#C_REPORT_COL_ALIGN#</td></tr>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellpadding="0" cellspacing="0" class="htmldbStandard3"  border="0" summary="" id="#REGION_ID#">',
'<tbody>'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</tbody>',
'</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_column_heading_template=>'<th#ALIGNMENT# id="#COLUMN_HEADER_NAME#">#COLUMN_HEADER#</th>'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>4000
,p_theme_class_id=>2
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(40706487009327)
,p_row_template_name=>'Result'
,p_internal_name=>'RESULT'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<tr><td align="left" class="header" style="width:70px;">#COLUMN_HEADER#</th><td#ALIGNMENT#>#COLUMN_VALUE#</td></tr>',
''))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'table.htmldbStandard3 td.header { vertical-align:middle; }',
'table.htmldbStandard3 td.pagination { border: medium none; }',
'</style>',
'<table width="100%" cellpadding="0" cellspacing="0" class="htmldbStandard3" role="presentation" datatable=0 summary="">',
'<tbody>'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</tbody>',
'</table>',
''))
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#TEXT#',
''))
,p_row_style_mouse_over=>'#CCCCCC'
,p_row_style_checked=>'#CCCCCC'
,p_theme_id=>4000
,p_theme_class_id=>6
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(40706487009327)
,p_row_template_after_last=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</tbody>',
'</table>',
'<p/>',
'<table width="100%" cellpadding="0" cellspacing="0" class="htmldbStandard3" role="presentation" datatable=0 summary="">',
'<tbody>'))
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(40953521009327)
,p_row_template_name=>'Standard (MRU AJAX SORTABLE)'
,p_internal_name=>'STANDARD_MRU_AJAX_SORTABLE'
,p_row_template1=>'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellpadding="0" cellspacing="0" class="u-Report"  border="0" summary="#REGION_TITLE#" id="report_#REGION_ID#">',
'<tbody>'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</tbody>',
'<tfoot>#PAGINATION#</tfoot>',
'</table>',
'<script type="text/javascript">',
'var g_rpreview_global = ''report_#REGION_ID#'';',
'var g_#REGION_ID#;',
'function f_#REGION_ID#(){',
'		g_#REGION_ID# =  new apex.tabular.sort(''report_#REGION_ID#'');',
'		g_#REGION_ID#.row.after_move = function(){rpreview()}',
'}',
'addLoadEvent(f_#REGION_ID#)',
'</script>'))
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_column_heading_template=>'<th#ALIGNMENT# id="#COLUMN_HEADER_NAME#">#COLUMN_HEADER#</th>'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#TEXT#',
''))
,p_next_page_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" style="margin-left:5px;"><img src="#IMAGE_PREFIX#jtfunexe.gif" alt="" /></a>'
,p_previous_page_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" style="margin-right:5px;"><img src="#IMAGE_PREFIX#jtfupree.gif" alt=""/></a>'
,p_next_set_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" style="margin-left:5px;"><img src="#IMAGE_PREFIX#jtfunexe.gif" alt="" /></a>'
,p_previous_set_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" style="margin-right:5px;"><img src="#IMAGE_PREFIX#jtfupree.gif" alt=""/></a>'
,p_row_style_mouse_over=>'#CCCCCC'
,p_row_style_checked=>'#CCCCCC'
,p_theme_id=>4000
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(40953521009327)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(41101018009327)
,p_row_template_name=>'Vertical Standard'
,p_internal_name=>'VERTICAL_STANDARD'
,p_row_template1=>'<tr><td scope="row" class="label">#COLUMN_HEADER#</td><td class="data">#COLUMN_VALUE#</td></tr>'
,p_row_template_before_rows=>'#CSV_LINK#<table class="htmldbVerticalRegion2"  summary="#REGION_TITLE#" cellpadding="0" cellspacing="0" border="0">'
,p_row_template_after_rows=>'</table>'
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_theme_id=>4000
,p_theme_class_id=>0
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(41101018009327)
,p_row_template_before_first=>' '
,p_row_template_after_last=>'<tr><td class="blank"><br /></td><td class="blank"><br /></td></tr>'
);
exception when others then null;
end;
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
end;
/
begin
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
 p_id=>wwv_flow_api.id(49874593009330)
,p_template_name=>'APEX 4.0 - Top Bar Label'
,p_internal_name=>'APEX_4.0_TOP_BAR_LABEL'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#"><a class="apex-ga-label" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'',''&CLOSE.'')" tabindex="999">'
,p_template_body2=>'</a></label>'
,p_theme_id=>4000
,p_theme_class_id=>0
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(50028175009330)
,p_template_name=>'APEX 5.0 - Dynamic Attribute'
,p_internal_name=>'APEX_5.0_DYNAMIC_ATTRIBUTE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-Form-labelContainer">',
'  <span class="a-Form-required"><span class="a-Icon icon-asterisk"></span></span><label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="a-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label>',
'</div>'))
,p_before_item=>'<div class="a-Form-fieldContainer #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="a-Form-inputContainer">'
,p_after_element=>'<button class="a-Button a-Button--noUI a-Button--helpButton js-dynamicItemHelp" data-itemname="#CURRENT_ITEM_NAME#" data-appid="&FB_FLOW_ID." title="" aria-label="" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span>'
||'</button>#ERROR_TEMPLATE#</div>'
,p_error_template=>'<span class="a-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>4000
,p_theme_class_id=>1
,p_translate_this_template=>'N'
,p_template_comment=>'<label for="#CURRENT_ITEM_NAME#"><a class="htmldbLabelOptional" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'',''&CLOSE.'')" tabindex="999">'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(50151927009330)
,p_template_name=>'APEX 5.0 - Hidden Label'
,p_internal_name=>'APEX_5.0_HIDDEN_LABEL'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-Form-labelContainer a-Form-labelContainer--visuallyhidden">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="a-Form-label visuallyhidden">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="a-Form-fieldContainer #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="a-Form-inputContainer">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="a-Button a-Button--noUI a-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#"  aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidde'
||'n="true"></span></button>'
,p_theme_id=>4000
,p_theme_class_id=>4
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(50238320009330)
,p_template_name=>'APEX 5.0 - Optional Label'
,p_internal_name=>'APEX_5.0_OPTIONAL_LABEL'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="a-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="a-Form-fieldContainer #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="a-Form-inputContainer">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="a-Button a-Button--noUI a-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#"  aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidde'
||'n="true"></span></button>'
,p_error_template=>'<span class="a-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>4000
,p_theme_class_id=>4
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(50279037009330)
,p_template_name=>'APEX 5.0 - Optional Label (Above)'
,p_internal_name=>'APEX_5.0_OPTIONAL_LABEL_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="a-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>#HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="a-Form-fieldContainer a-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="a-Form-inputContainer">'
,p_after_element=>'#ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="a-Button a-Button--noUI a-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#"  aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidde'
||'n="true"></span></button>'
,p_on_error_after_label=>'<span class="a-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>4000
,p_theme_class_id=>4
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(50410217009330)
,p_template_name=>'APEX 5.0 - Required Label'
,p_internal_name=>'APEX_5.0_REQUIRED_LABEL'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-Form-labelContainer">',
'  <span class="a-Form-required"><span class="a-Icon icon-asterisk"></span></span><label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="a-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label>',
'</div>'))
,p_before_item=>'<div class="a-Form-fieldContainer #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="a-Form-inputContainer">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="a-Button a-Button--noUI a-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#"  aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidde'
||'n="true"></span></button>'
,p_error_template=>'<span class="a-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>4000
,p_theme_class_id=>4
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(50527342009330)
,p_template_name=>'APEX 5.0 - Required Label (Above)'
,p_internal_name=>'APEX_5.0_REQUIRED_LABEL_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-Form-labelContainer">',
'  <span class="a-Form-required"><span class="a-Icon icon-asterisk"></span></span><label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="a-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label>#HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="a-Form-fieldContainer a-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="a-Form-inputContainer">'
,p_after_element=>'#ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="a-Button a-Button--noUI a-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#"  aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidde'
||'n="true"></span></button>'
,p_error_template=>'<span class="a-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>4000
,p_theme_class_id=>4
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(50647728009330)
,p_template_name=>'ColumnHeader'
,p_internal_name=>'COLUMNHEADER'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="aLabel aOptional"><a href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'',''&CLOSE.'')" tabindex="999">'
,p_template_body2=>'</a></label>'
,p_on_error_after_label=>'<small class="aError">#ERROR_MESSAGE#</small>'
,p_theme_id=>4000
,p_theme_class_id=>1
,p_translate_this_template=>'N'
,p_template_comment=>'<label for="#CURRENT_ITEM_NAME#"><a class="htmldbLabelOptional" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'',''&CLOSE.'')" tabindex="999">'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(50733746009330)
,p_template_name=>'FormField_Optional'
,p_internal_name=>'FORMFIELD_OPTIONAL'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="aLabel aOptional"><a href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'',''&CLOSE.'')" tabindex="999">'
,p_template_body2=>'</a></label>'
,p_on_error_after_label=>'<small class="aError">#ERROR_MESSAGE#</small>'
,p_theme_id=>4000
,p_theme_class_id=>1
,p_translate_this_template=>'N'
,p_template_comment=>'<label for="#CURRENT_ITEM_NAME#"><a class="htmldbLabelOptional" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'',''&CLOSE.'')" tabindex="999">'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(50807582009330)
,p_template_name=>'FormField_Optional (no label-only for radiogroup)'
,p_internal_name=>'FORMFIELD_OPTIONAL_NO_LABELONLY_FOR_RADIOGROUP'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="aLabel aOptional"><a href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'',''&CLOSE.'')" tabindex="999">'
,p_template_body2=>'</a></label>'
,p_theme_id=>4000
,p_theme_class_id=>0
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(50893206009330)
,p_template_name=>'Hidden label, read by screen reader'
,p_internal_name=>'HIDDEN_LABEL,_READ_BY_SCREEN_READER'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999" class="hideMeButHearMe">'
,p_template_body2=>'</label>'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#'
,p_theme_id=>4000
,p_theme_class_id=>13
,p_translate_this_template=>'N'
);
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
 p_id=>wwv_flow_api.id(52334798009331)
,p_name=>'APEX 5.0 - Breadcrumbs'
,p_internal_name=>'APEX_5.0_BREADCRUMBS'
,p_before_first=>'<ul class="a-Breadcrumb">'
,p_current_page_option=>'<li class="a-Breadcrumb-item a-Breadcrumb-item is-active"><span class="a-Breadcrumb-label">#NAME#</span></li>'
,p_non_current_page_option=>'<li class="a-Breadcrumb-item"><a href="#LINK#" class="a-Breadcrumb-label">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>9
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>4000
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
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
 p_id=>wwv_flow_api.id(52511496009331)
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
,p_theme_id=>4000
,p_theme_class_id=>1
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
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
 p_id=>wwv_flow_api.id(52420437009331)
,p_cal_template_name=>'Default Calander'
,p_internal_name=>'DEFAULT_CALANDER'
,p_day_of_week_format=>'<th scope="col" width="14%" class="htmldbDayOfWeek">#IDAY#</th>'
,p_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="htmldbCalendarHolder" cellpadding="0" cellspacing="0" border="0" width="100%" summary="" role="presentation"><tr>',
'<td class="htmldbMonthTitle">#IMONTH# #YYYY#</td>',
'</tr>',
'<tr><td>'))
,p_month_open_format=>'<table class="htmldbCalendar" cellpadding="0" cellspacing="3" border="0" width="100%" summary="#CALENDAR_TITLE# #IMONTH# #YYYY#">'
,p_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table></td></tr></table>',
'',
''))
,p_day_title_format=>'<div class="htmldbDayTitle">#DD#</div>'
,p_day_open_format=>'<td class="htmldbDay">#TITLE_FORMAT##DATA#'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="htmldbToday">#TITLE_FORMAT##DATA#'
,p_weekend_title_format=>'<div class="htmldbWeekendDayTitle">#DD#</div>'
,p_weekend_open_format=>'<td class="htmldbWeekendDay">#TITLE_FORMAT##DATA#'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<div class="htmldbNonDayTitle">#DD#</div>'
,p_nonday_open_format=>'<td class="htmldbNonDay">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr>'
,p_daily_title_format=>'<th width="14%" class="calheader">#IDAY#</th>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'#DATA#'
,p_theme_id=>4000
,p_theme_class_id=>1
);
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
 p_id=>wwv_flow_api.id(52949258009331)
,p_theme_id=>4000
,p_theme_name=>'APEX 5.0'
,p_theme_internal_name=>'APEX_5.0'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'T'
,p_nav_bar_type=>'NAVBAR'
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(3748494009314)
,p_default_dialog_template=>wwv_flow_api.id(7447384009315)
,p_error_template=>wwv_flow_api.id(5996960009314)
,p_printer_friendly_template=>wwv_flow_api.id(3748494009314)
,p_default_button_template=>wwv_flow_api.id(50977802009330)
,p_default_region_template=>wwv_flow_api.id(22707589009320)
,p_default_chart_template=>wwv_flow_api.id(22707589009320)
,p_default_form_template=>wwv_flow_api.id(22707589009320)
,p_default_reportr_template=>wwv_flow_api.id(22707589009320)
,p_default_tabform_template=>wwv_flow_api.id(22707589009320)
,p_default_wizard_template=>wwv_flow_api.id(28475366009322)
,p_default_menur_template=>wwv_flow_api.id(14578610009317)
,p_default_listr_template=>wwv_flow_api.id(22707589009320)
,p_default_irr_template=>wwv_flow_api.id(20085154009319)
,p_default_report_template=>wwv_flow_api.id(35880763009325)
,p_default_label_template=>wwv_flow_api.id(50238320009330)
,p_default_menu_template=>wwv_flow_api.id(52334798009331)
,p_default_calendar_template=>wwv_flow_api.id(52420437009331)
,p_default_list_template=>wwv_flow_api.id(42295030009327)
,p_default_nav_list_template=>wwv_flow_api.id(46868896009329)
,p_default_top_nav_list_temp=>wwv_flow_api.id(46868896009329)
,p_default_nav_list_position=>'TOP'
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(4000),'')
,p_files_version=>2
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#apex_ui/js/#MIN_DIRECTORY#builder_all#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.interactiveReport#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyTableHeader#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.report#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#sc/sc_core.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#interactiveGrid#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/raphaeljs/2.1.2/apex.raphael#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.report#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#apex_oracle_com#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#apex_version.js?v=#APEX_VERSION#'))
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#css/apex_builder#MIN#.css?v=#APEX_VERSION#',
'#IMAGE_PREFIX#css/apex_ui#MIN#.css?v=#APEX_VERSION#'))
);
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
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(52713081009331)
,p_theme_id=>4000
,p_name=>'Standard'
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#apex_ui/css/Core#MIN#.css',
'#IMAGE_PREFIX#apex_ui/css/Theme-Standard#MIN#.css'))
,p_is_current=>true
,p_is_public=>false
,p_is_accessible=>false
,p_theme_roller_read_only=>false
,p_reference_id=>205883924445791264
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
 p_id=>wwv_flow_api.id(10069937009316)
,p_theme_id=>4000
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10478505009316)
,p_theme_id=>4000
,p_name=>'DISPLAY'
,p_display_name=>'Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12527445009317)
,p_theme_id=>4000
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12962954009317)
,p_theme_id=>4000
,p_name=>'REGION_PADDING'
,p_display_name=>'Region Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Padding'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(13489357009317)
,p_theme_id=>4000
,p_name=>'REGION_STYLE'
,p_display_name=>'Region Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Style'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(15644209009318)
,p_theme_id=>4000
,p_name=>'REGION_OVERFLOW'
,p_display_name=>'Region Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Behavior'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(17213425009318)
,p_theme_id=>4000
,p_name=>'REGION_POSITION'
,p_display_name=>'Region Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Position'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31580705009323)
,p_theme_id=>4000
,p_name=>'BADGE_LAYOUT'
,p_display_name=>'Badge Layout'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(33248405009324)
,p_theme_id=>4000
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(36245620009325)
,p_theme_id=>4000
,p_name=>'ALTERNATING_TABLE_ROWS'
,p_display_name=>'Alternating Table Rows'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Enable'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(36590212009325)
,p_theme_id=>4000
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Disable'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(36981196009326)
,p_theme_id=>4000
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Default Border'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(37818036009326)
,p_theme_id=>4000
,p_name=>'REPORT_WIDTH'
,p_display_name=>'Report Width'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(42856568009328)
,p_theme_id=>4000
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default - No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(44257292009328)
,p_theme_id=>4000
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(51346032009330)
,p_theme_id=>4000
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Icon on Right'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(53084023009332)
,p_theme_id=>4000
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing left'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Left Spacing'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(53885364009332)
,p_theme_id=>4000
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Right Spacing'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(55131123009333)
,p_theme_id=>4000
,p_name=>'BUTTON_SIZE'
,p_display_name=>'Button Size'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Button Size'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(56682804009333)
,p_theme_id=>4000
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Not Part of Button Set'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(58341290009334)
,p_theme_id=>4000
,p_name=>'BUTTON_TYPE'
,p_display_name=>'Button Type'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(60348078009335)
,p_theme_id=>4000
,p_name=>'FORM_LABEL_WIDTH'
,p_display_name=>'Form Label Width'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(61471955009336)
,p_theme_id=>4000
,p_name=>'FORM_LABEL_POSITION'
,p_display_name=>'Form Label Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Position'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(62326507009336)
,p_theme_id=>4000
,p_name=>'FORM_LABEL_ALIGNMENT'
,p_display_name=>'Form Label Alignment'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Set Form Alignment for Grid Based forms'
,p_null_text=>'Right'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(63161234009336)
,p_theme_id=>4000
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>1
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(65135588009337)
,p_theme_id=>4000
,p_name=>'HEIGHT'
,p_display_name=>'Height'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Behavior'
,p_is_advanced=>'Y'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10324019009316)
,p_theme_id=>4000
,p_name=>'ERROR'
,p_display_name=>'Error'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(9841406009316)
,p_css_classes=>'a-Alert--danger'
,p_group_id=>wwv_flow_api.id(10069937009316)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10696484009316)
,p_theme_id=>4000
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(9841406009316)
,p_css_classes=>'a-Alert--horizontal'
,p_group_id=>wwv_flow_api.id(10478505009316)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10882237009316)
,p_theme_id=>4000
,p_name=>'INFORMATIONAL'
,p_display_name=>'Informational'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(9841406009316)
,p_css_classes=>'a-Alert--info'
,p_group_id=>wwv_flow_api.id(10069937009316)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(11106499009316)
,p_theme_id=>4000
,p_name=>'REMOVE_ICON'
,p_display_name=>'Remove Icons'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(9841406009316)
,p_css_classes=>'a-Alert--noIcon'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(11331913009317)
,p_theme_id=>4000
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(9841406009316)
,p_css_classes=>'a-Alert--success'
,p_group_id=>wwv_flow_api.id(10069937009316)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(11515243009317)
,p_theme_id=>4000
,p_name=>'USE_COLORED_BACKGROUND'
,p_display_name=>'Use Colored Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(9841406009316)
,p_css_classes=>'a-Alert--colorBG'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(11696011009317)
,p_theme_id=>4000
,p_name=>'USE_DEFAULT_ICONS'
,p_display_name=>'Use Default Icons'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(9841406009316)
,p_css_classes=>'a-Alert--defaultIcons'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(11870747009317)
,p_theme_id=>4000
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(9841406009316)
,p_css_classes=>'a-Alert--warning'
,p_group_id=>wwv_flow_api.id(10069937009316)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12160986009317)
,p_theme_id=>4000
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(9841406009316)
,p_css_classes=>'a-Alert--wizard'
,p_group_id=>wwv_flow_api.id(10478505009316)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12695061009317)
,p_theme_id=>4000
,p_name=>'ACCESSIBLEHEADING'
,p_display_name=>'Hidden (Accessible)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(12192271009317)
,p_css_classes=>'a-ButtonRegion--accessibleTitle'
,p_group_id=>wwv_flow_api.id(12527445009317)
,p_template_types=>'REGION'
,p_help_text=>'Use this option to add a visually hidden heading which is accessible for screen readers, but otherwise not visible to users.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(13165710009317)
,p_theme_id=>4000
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(12192271009317)
,p_css_classes=>'a-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_api.id(12962954009317)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(13307185009317)
,p_theme_id=>4000
,p_name=>'REGIONCONTAINSITEMSTEXT'
,p_display_name=>'Region Contains Items / Text'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(12192271009317)
,p_css_classes=>'a-ButtonRegion--withItems'
,p_template_types=>'REGION'
,p_help_text=>'Check this option if this region contains items or text.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(13687666009317)
,p_theme_id=>4000
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(12192271009317)
,p_css_classes=>'a-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_api.id(13489357009317)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(13941417009317)
,p_theme_id=>4000
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(12192271009317)
,p_css_classes=>'a-ButtonRegion--noUI'
,p_group_id=>wwv_flow_api.id(13489357009317)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(14075496009317)
,p_theme_id=>4000
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(12192271009317)
,p_css_classes=>'a-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_api.id(12962954009317)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(14296454009317)
,p_theme_id=>4000
,p_name=>'VISIBLE'
,p_display_name=>'Visible'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(12192271009317)
,p_css_classes=>'a-ButtonRegion--showTitle'
,p_group_id=>wwv_flow_api.id(12527445009317)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(14521300009317)
,p_theme_id=>4000
,p_name=>'WIZARDDIALOG'
,p_display_name=>'Used for Wizard Dialog'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(12192271009317)
,p_css_classes=>'a-ButtonRegion--wizard'
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(15437091009318)
,p_theme_id=>4000
,p_name=>'ACCESSIBLEHEADING'
,p_display_name=>'Hidden (Accessible)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(15102021009318)
,p_css_classes=>'a-Region--accessibleHeader'
,p_group_id=>wwv_flow_api.id(12527445009317)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(15785899009318)
,p_theme_id=>4000
,p_name=>'AUTOSCROLL'
,p_display_name=>'Scroll'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(15102021009318)
,p_css_classes=>'a-Region--scrollAuto'
,p_group_id=>wwv_flow_api.id(15644209009318)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(15993775009318)
,p_theme_id=>4000
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(15102021009318)
,p_css_classes=>'a-Region--noBorder'
,p_group_id=>wwv_flow_api.id(13489357009317)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16200481009318)
,p_theme_id=>4000
,p_name=>'DEFAULTPADDING'
,p_display_name=>'Default Padding'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(15102021009318)
,p_css_classes=>'a-Region--paddedBody'
,p_group_id=>wwv_flow_api.id(12962954009317)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16423906009318)
,p_theme_id=>4000
,p_name=>'HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(15102021009318)
,p_css_classes=>'a-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(12527445009317)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16626156009318)
,p_theme_id=>4000
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(15102021009318)
,p_css_classes=>'a-Region--noPadding'
,p_group_id=>wwv_flow_api.id(12962954009317)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16813563009318)
,p_theme_id=>4000
,p_name=>'REMOVE_TOP_BORDER'
,p_display_name=>'Remove Top Border'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(15102021009318)
,p_css_classes=>'a-Region--noTopBorder'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(17062970009318)
,p_theme_id=>4000
,p_name=>'SCROLLWITHSHADOWS'
,p_display_name=>'Scroll (with Shadows)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(15102021009318)
,p_css_classes=>'a-Region--shadowScroll'
,p_group_id=>wwv_flow_api.id(15644209009318)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(17386153009318)
,p_theme_id=>4000
,p_name=>'SIDEBAR'
,p_display_name=>'Sidebar'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(15102021009318)
,p_css_classes=>'a-Region--sideRegion'
,p_group_id=>wwv_flow_api.id(17213425009318)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(17613330009318)
,p_theme_id=>4000
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(15102021009318)
,p_css_classes=>'a-Region--simple'
,p_group_id=>wwv_flow_api.id(13489357009317)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(17833786009319)
,p_theme_id=>4000
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(15102021009318)
,p_css_classes=>'a-Region--slimPadding'
,p_group_id=>wwv_flow_api.id(12962954009317)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18226710009319)
,p_theme_id=>4000
,p_name=>'AUTOSCROLL'
,p_display_name=>'Scroll'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(17929527009319)
,p_css_classes=>'a-Region--scrollAuto'
,p_group_id=>wwv_flow_api.id(15644209009318)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18431854009319)
,p_theme_id=>4000
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(17929527009319)
,p_css_classes=>'a-Region--noBorder'
,p_group_id=>wwv_flow_api.id(13489357009317)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18648838009319)
,p_theme_id=>4000
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(17929527009319)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_api.id(10478505009316)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18782212009319)
,p_theme_id=>4000
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>.1
,p_region_template_id=>wwv_flow_api.id(17929527009319)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_api.id(10478505009316)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19057862009319)
,p_theme_id=>4000
,p_name=>'FLUSHREGION'
,p_display_name=>'Flush Region'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(17929527009319)
,p_css_classes=>'a-Region--flush'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19244917009319)
,p_theme_id=>4000
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(17929527009319)
,p_css_classes=>'a-Region--noPadding'
,p_group_id=>wwv_flow_api.id(12962954009317)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19456420009319)
,p_theme_id=>4000
,p_name=>'SCROLLWITHSHADOWS'
,p_display_name=>'Scroll (with Shadows)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(17929527009319)
,p_css_classes=>'a-Region--shadowScroll'
,p_group_id=>wwv_flow_api.id(15644209009318)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19627372009319)
,p_theme_id=>4000
,p_name=>'SIDEBAR'
,p_display_name=>'Sidebar'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(17929527009319)
,p_css_classes=>'a-Region--sideRegion'
,p_group_id=>wwv_flow_api.id(17213425009318)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19796501009319)
,p_theme_id=>4000
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(17929527009319)
,p_css_classes=>'a-Region--slimPadding'
,p_group_id=>wwv_flow_api.id(12962954009317)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19978518009319)
,p_theme_id=>4000
,p_name=>'STACKEDREGION'
,p_display_name=>'Stacked Region'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(17929527009319)
,p_css_classes=>'a-Region--stacked'
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20424867009319)
,p_theme_id=>4000
,p_name=>'ICONLABELSRIGHT'
,p_display_name=>'Icon Labels on Right'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(20085154009319)
,p_css_classes=>'a-IRR-region--iconLabelsRight'
,p_template_types=>'REGION'
,p_help_text=>'Shows labels in Icon View to the right of the icon.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20641059009319)
,p_theme_id=>4000
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'Remove Outer Borders'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(20085154009319)
,p_css_classes=>'a-IRR-region--noOuterBorders'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20792542009319)
,p_theme_id=>4000
,p_name=>'RESPONSIVEICONCOLUMNS'
,p_display_name=>'Responsive Icon Columns'
,p_display_sequence=>2
,p_region_template_id=>wwv_flow_api.id(20085154009319)
,p_css_classes=>'a-IRR-region--responsiveIconView'
,p_template_types=>'REGION'
,p_help_text=>'Automatically increases number of icon columns to show based on screen resolution.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22626166009320)
,p_theme_id=>4000
,p_name=>'USED_IN_DIALOG'
,p_display_name=>'Used in Dialog'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(22281488009320)
,p_css_classes=>'a-ProcessingRegion--dialog'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22976758009320)
,p_theme_id=>4000
,p_name=>'ACCESSIBLEHEADING'
,p_display_name=>'Hidden (Accessible)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(22707589009320)
,p_css_classes=>'a-Region--accessibleHeader'
,p_group_id=>wwv_flow_api.id(12527445009317)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23240197009320)
,p_theme_id=>4000
,p_name=>'AUTOSCROLL'
,p_display_name=>'Scroll'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(22707589009320)
,p_css_classes=>'a-Region--scrollAuto'
,p_group_id=>wwv_flow_api.id(15644209009318)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23447930009320)
,p_theme_id=>4000
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(22707589009320)
,p_css_classes=>'a-Region--noBorder'
,p_group_id=>wwv_flow_api.id(13489357009317)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23599800009320)
,p_theme_id=>4000
,p_name=>'DEFAULTPADDING'
,p_display_name=>'Default Padding'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(22707589009320)
,p_css_classes=>'a-Region--paddedBody'
,p_group_id=>wwv_flow_api.id(12962954009317)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23767938009321)
,p_theme_id=>4000
,p_name=>'HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(22707589009320)
,p_css_classes=>'a-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(12527445009317)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24001612009321)
,p_theme_id=>4000
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22707589009320)
,p_css_classes=>'a-Region--noPadding'
,p_group_id=>wwv_flow_api.id(12962954009317)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24258459009321)
,p_theme_id=>4000
,p_name=>'REMOVE_TOP_BORDER'
,p_display_name=>'Remove Top Border'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(22707589009320)
,p_css_classes=>'a-Region--noTopBorder'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24416874009321)
,p_theme_id=>4000
,p_name=>'SCROLLWITHSHADOWS'
,p_display_name=>'Scroll (with Shadows)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(22707589009320)
,p_css_classes=>'a-Region--shadowScroll'
,p_group_id=>wwv_flow_api.id(15644209009318)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24611691009321)
,p_theme_id=>4000
,p_name=>'SIDEBAR'
,p_display_name=>'Sidebar'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(22707589009320)
,p_css_classes=>'a-Region--sideRegion'
,p_group_id=>wwv_flow_api.id(17213425009318)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24852823009321)
,p_theme_id=>4000
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(22707589009320)
,p_css_classes=>'a-Region--simple'
,p_group_id=>wwv_flow_api.id(13489357009317)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(25052781009321)
,p_theme_id=>4000
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22707589009320)
,p_css_classes=>'a-Region--slimPadding'
,p_group_id=>wwv_flow_api.id(12962954009317)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(25569955009321)
,p_theme_id=>4000
,p_name=>'ACCESSIBLEHEADING'
,p_display_name=>'Hidden (Accessible)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(25357049009321)
,p_css_classes=>'a-Region--accessibleHeader'
,p_group_id=>wwv_flow_api.id(12527445009317)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(25860048009321)
,p_theme_id=>4000
,p_name=>'AUTOSCROLL'
,p_display_name=>'Scroll'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(25357049009321)
,p_css_classes=>'a-Region--scrollAuto'
,p_group_id=>wwv_flow_api.id(15644209009318)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(25968011009321)
,p_theme_id=>4000
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(25357049009321)
,p_css_classes=>'a-Region--noBorder'
,p_group_id=>wwv_flow_api.id(13489357009317)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26254584009321)
,p_theme_id=>4000
,p_name=>'DEFAULTPADDING'
,p_display_name=>'Default Padding'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(25357049009321)
,p_css_classes=>'a-Region--paddedBody'
,p_group_id=>wwv_flow_api.id(12962954009317)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26403586009321)
,p_theme_id=>4000
,p_name=>'HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(25357049009321)
,p_css_classes=>'a-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(12527445009317)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26612512009321)
,p_theme_id=>4000
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(25357049009321)
,p_css_classes=>'a-Region--noPadding'
,p_group_id=>wwv_flow_api.id(12962954009317)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26771024009321)
,p_theme_id=>4000
,p_name=>'REMOVE_TOP_BORDER'
,p_display_name=>'Remove Top Border'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(25357049009321)
,p_css_classes=>'a-Region--noTopBorder'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26974772009321)
,p_theme_id=>4000
,p_name=>'SCROLLWITHSHADOWS'
,p_display_name=>'Scroll (with Shadows)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(25357049009321)
,p_css_classes=>'a-Region--shadowScroll'
,p_group_id=>wwv_flow_api.id(15644209009318)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27214697009321)
,p_theme_id=>4000
,p_name=>'SIDEBAR'
,p_display_name=>'Sidebar'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(25357049009321)
,p_css_classes=>'a-Region--sideRegion'
,p_group_id=>wwv_flow_api.id(17213425009318)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27379687009322)
,p_theme_id=>4000
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(25357049009321)
,p_css_classes=>'a-Region--slimPadding'
,p_group_id=>wwv_flow_api.id(12962954009317)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31824818009323)
,p_theme_id=>4000
,p_name=>'2COLUMNNGRID'
,p_display_name=>'2 Columnn Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(31359185009323)
,p_css_classes=>'a-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(31580705009323)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32028218009324)
,p_theme_id=>4000
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(31359185009323)
,p_css_classes=>'a-BadgeList--cols a-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(31580705009323)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32175349009324)
,p_theme_id=>4000
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(31359185009323)
,p_css_classes=>'a-BadgeList--cols a-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(31580705009323)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32460033009324)
,p_theme_id=>4000
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(31359185009323)
,p_css_classes=>'a-BadgeList--cols a-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(31580705009323)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32643628009324)
,p_theme_id=>4000
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(31359185009323)
,p_css_classes=>'a-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(31580705009323)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(32772166009324)
,p_theme_id=>4000
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(31359185009323)
,p_css_classes=>'a-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(31580705009323)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33000003009324)
,p_theme_id=>4000
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(31359185009323)
,p_css_classes=>'a-BadgeList--float'
,p_group_id=>wwv_flow_api.id(31580705009323)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33411640009324)
,p_theme_id=>4000
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(31359185009323)
,p_css_classes=>'a-BadgeList--large'
,p_group_id=>wwv_flow_api.id(33248405009324)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33568139009324)
,p_theme_id=>4000
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(31359185009323)
,p_css_classes=>'a-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(33248405009324)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33813605009324)
,p_theme_id=>4000
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(31359185009323)
,p_css_classes=>'a-BadgeList--small'
,p_group_id=>wwv_flow_api.id(33248405009324)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33984781009324)
,p_theme_id=>4000
,p_name=>'STACKEDVERTICALLY'
,p_display_name=>'Stacked Vertically'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(31359185009323)
,p_css_classes=>'a-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(31580705009323)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(34194229009325)
,p_theme_id=>4000
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(31359185009323)
,p_css_classes=>'a-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(33248405009324)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(34448897009325)
,p_theme_id=>4000
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(31359185009323)
,p_css_classes=>'a-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(33248405009324)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(34994800009325)
,p_theme_id=>4000
,p_name=>'DONOTWRAPTEXT'
,p_display_name=>'Do not wrap text'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(34734987009325)
,p_css_classes=>'a-LinksList--nowrap'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35174533009325)
,p_theme_id=>4000
,p_name=>'SHOWRIGHTARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(34734987009325)
,p_css_classes=>'a-LinksList--showArrow'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35375831009325)
,p_theme_id=>4000
,p_name=>'USEBRIGHTHOVERS'
,p_display_name=>'Use Bright Hovers'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(34734987009325)
,p_css_classes=>'a-LinksList--brightHover'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(36384043009325)
,p_theme_id=>4000
,p_name=>'DISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(35880763009325)
,p_css_classes=>'a-Report--staticRowColors'
,p_group_id=>wwv_flow_api.id(36245620009325)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(36853807009326)
,p_theme_id=>4000
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(35880763009325)
,p_css_classes=>'a-Report--rowHighlight'
,p_group_id=>wwv_flow_api.id(36590212009325)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(37168001009326)
,p_theme_id=>4000
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(35880763009325)
,p_css_classes=>'a-Report--horizontalBorders'
,p_group_id=>wwv_flow_api.id(36981196009326)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(37391270009326)
,p_theme_id=>4000
,p_name=>'INLINEBORDERS'
,p_display_name=>'Inline Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(35880763009325)
,p_css_classes=>'a-Report--inline'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(37576193009326)
,p_theme_id=>4000
,p_name=>'NOBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(35880763009325)
,p_css_classes=>'a-Report--noBorders'
,p_group_id=>wwv_flow_api.id(36981196009326)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(38044440009326)
,p_theme_id=>4000
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(35880763009325)
,p_css_classes=>'a-Report--stretch'
,p_group_id=>wwv_flow_api.id(37818036009326)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(38190710009326)
,p_theme_id=>4000
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(35880763009325)
,p_css_classes=>'a-Report--verticalBorders'
,p_group_id=>wwv_flow_api.id(36981196009326)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(38569537009326)
,p_theme_id=>4000
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(38363253009326)
,p_css_classes=>'a-Report--rowHighlight'
,p_group_id=>wwv_flow_api.id(36590212009325)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(38809501009326)
,p_theme_id=>4000
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(38363253009326)
,p_css_classes=>'a-Report--horizontalBorders'
,p_group_id=>wwv_flow_api.id(36981196009326)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39033091009326)
,p_theme_id=>4000
,p_name=>'INLINEBORDERS'
,p_display_name=>'Inline Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(38363253009326)
,p_css_classes=>'a-Report--inline'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39196520009326)
,p_theme_id=>4000
,p_name=>'NOBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(38363253009326)
,p_css_classes=>'a-Report--noBorders'
,p_group_id=>wwv_flow_api.id(36981196009326)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39403757009326)
,p_theme_id=>4000
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(38363253009326)
,p_css_classes=>'a-Report--stretch'
,p_group_id=>wwv_flow_api.id(37818036009326)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(39576643009326)
,p_theme_id=>4000
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(38363253009326)
,p_css_classes=>'a-Report--verticalBorders'
,p_group_id=>wwv_flow_api.id(36981196009326)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(42664449009328)
,p_theme_id=>4000
,p_name=>'DONOTWRAPTEXT'
,p_display_name=>'Do not wrap text'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(42295030009327)
,p_css_classes=>'a-LinksList--nowrap'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(43044347009328)
,p_theme_id=>4000
,p_name=>'FORALLITEMS'
,p_display_name=>'For all items'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(42295030009327)
,p_css_classes=>'a-LinksList--showIcons'
,p_group_id=>wwv_flow_api.id(42856568009328)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(43259582009328)
,p_theme_id=>4000
,p_name=>'FORTOPLEVELONLY'
,p_display_name=>'For top level only'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(42295030009327)
,p_css_classes=>'a-LinksList--showTopIcons'
,p_group_id=>wwv_flow_api.id(42856568009328)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(43373756009328)
,p_theme_id=>4000
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(42295030009327)
,p_css_classes=>'a-LinksList--showBadge'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(43656301009328)
,p_theme_id=>4000
,p_name=>'SHOWRIGHTARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(42295030009327)
,p_css_classes=>'a-LinksList--showArrow'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(43776286009328)
,p_theme_id=>4000
,p_name=>'USEBRIGHTHOVERS'
,p_display_name=>'Use Bright Hovers'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(42295030009327)
,p_css_classes=>'a-LinksList--brightHover'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(44440538009328)
,p_theme_id=>4000
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(43875830009328)
,p_css_classes=>'a-MediaList--cols a-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(44257292009328)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(44632571009328)
,p_theme_id=>4000
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(43875830009328)
,p_css_classes=>'a-MediaList--cols a-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(44257292009328)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(44851476009328)
,p_theme_id=>4000
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(43875830009328)
,p_css_classes=>'a-MediaList--cols a-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(44257292009328)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(44979893009328)
,p_theme_id=>4000
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(43875830009328)
,p_css_classes=>'a-MediaList--cols a-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(44257292009328)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(45233266009328)
,p_theme_id=>4000
,p_name=>'HIDEBADGE'
,p_display_name=>'Hide Badge'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(43875830009328)
,p_css_classes=>'a-MediaList--noBadge'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(45390184009328)
,p_theme_id=>4000
,p_name=>'HIDEDESCRIPTION'
,p_display_name=>'Hide Description'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(43875830009328)
,p_css_classes=>'a-MediaList--noDesc'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(45568036009328)
,p_theme_id=>4000
,p_name=>'HIDEICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(43875830009328)
,p_css_classes=>'a-MediaList--noIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(45804560009328)
,p_theme_id=>4000
,p_name=>'HIDETITLE'
,p_display_name=>'Hide Title'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(43875830009328)
,p_css_classes=>'a-MediaList--noTitle'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(46015932009328)
,p_theme_id=>4000
,p_name=>'SLIMLIST'
,p_display_name=>'Slim List'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(43875830009328)
,p_css_classes=>'a-MediaList--slim'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(46206601009328)
,p_theme_id=>4000
,p_name=>'SPANHORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(43875830009328)
,p_css_classes=>'a-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(44257292009328)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(46591451009329)
,p_theme_id=>4000
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(46310901009328)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(46794642009329)
,p_theme_id=>4000
,p_name=>'ADD_SLIDE_ANIMATION'
,p_display_name=>'Add Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(46310901009328)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47648691009329)
,p_theme_id=>4000
,p_name=>'SLIMPROGRESSLIST'
,p_display_name=>'Slim Progress List'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(47366876009329)
,p_css_classes=>'a-WizardSteps--slim'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48436625009329)
,p_theme_id=>4000
,p_name=>'DONOTWRAPTEXT'
,p_display_name=>'Do not wrap text'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(48162590009329)
,p_css_classes=>'a-LinksList--nowrap'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48590040009329)
,p_theme_id=>4000
,p_name=>'FORALLITEMS'
,p_display_name=>'For all items'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(48162590009329)
,p_css_classes=>'a-LinksList--showIcons'
,p_group_id=>wwv_flow_api.id(42856568009328)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48848101009329)
,p_theme_id=>4000
,p_name=>'FORTOPLEVELONLY'
,p_display_name=>'For top level only'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(48162590009329)
,p_css_classes=>'a-LinksList--showTopIcons'
,p_group_id=>wwv_flow_api.id(42856568009328)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(49011434009329)
,p_theme_id=>4000
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(48162590009329)
,p_css_classes=>'a-LinksList--showBadge'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(49265829009329)
,p_theme_id=>4000
,p_name=>'SHOWRIGHTARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(48162590009329)
,p_css_classes=>'a-LinksList--showArrow'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(49422745009329)
,p_theme_id=>4000
,p_name=>'USEBRIGHTHOVERS'
,p_display_name=>'Use Bright Hovers'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(48162590009329)
,p_css_classes=>'a-LinksList--brightHover'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(51529772009330)
,p_theme_id=>4000
,p_name=>'LEFT'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_button_template_id=>wwv_flow_api.id(51142698009330)
,p_css_classes=>'a-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(51346032009330)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(51772409009331)
,p_theme_id=>4000
,p_name=>'LEFT'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_button_template_id=>wwv_flow_api.id(51628009009330)
,p_css_classes=>'a-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(51346032009330)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(53542189009332)
,p_theme_id=>4000
,p_name=>'LARGELEFT'
,p_display_name=>'Large'
,p_display_sequence=>1
,p_css_classes=>'a-Button--gapLeft'
,p_group_id=>wwv_flow_api.id(53084023009332)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(54296165009332)
,p_theme_id=>4000
,p_name=>'LARGERIGHT'
,p_display_name=>'Large'
,p_display_sequence=>1
,p_css_classes=>'a-Button--gapRight'
,p_group_id=>wwv_flow_api.id(53885364009332)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(54686229009333)
,p_theme_id=>4000
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_css_classes=>'a-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(51346032009330)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(55559022009333)
,p_theme_id=>4000
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>3
,p_css_classes=>'a-Button--large'
,p_group_id=>wwv_flow_api.id(55131123009333)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(55901049009333)
,p_theme_id=>4000
,p_name=>'SMALLLEFT'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_css_classes=>'a-Button--padLeft'
,p_group_id=>wwv_flow_api.id(53084023009332)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(56310014009333)
,p_theme_id=>4000
,p_name=>'SMALLRIGHT'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_css_classes=>'a-Button--padRight'
,p_group_id=>wwv_flow_api.id(53885364009332)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(57080936009333)
,p_theme_id=>4000
,p_name=>'INNERBUTTON'
,p_display_name=>'Inner Button'
,p_display_sequence=>2
,p_css_classes=>'a-Button--pill'
,p_group_id=>wwv_flow_api.id(56682804009333)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(57517913009334)
,p_theme_id=>4000
,p_name=>'LASTBUTTON'
,p_display_name=>'Last Button'
,p_display_sequence=>3
,p_css_classes=>'a-Button--pillEnd'
,p_group_id=>wwv_flow_api.id(56682804009333)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(57891665009334)
,p_theme_id=>4000
,p_name=>'FIRSTBUTTON'
,p_display_name=>'First Button'
,p_display_sequence=>1
,p_css_classes=>'a-Button--pillStart'
,p_group_id=>wwv_flow_api.id(56682804009333)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(58764435009334)
,p_theme_id=>4000
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>1
,p_css_classes=>'a-Button--primary'
,p_group_id=>wwv_flow_api.id(58341290009334)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(59135766009335)
,p_theme_id=>4000
,p_name=>'REGIONHEADERBUTTON'
,p_display_name=>'Button in Region Header'
,p_display_sequence=>1
,p_css_classes=>'a-Button--regionHeader'
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(59495581009335)
,p_theme_id=>4000
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_css_classes=>'a-Button--small'
,p_group_id=>wwv_flow_api.id(55131123009333)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(59938891009335)
,p_theme_id=>4000
,p_name=>'STRONGBUTTONLABEL'
,p_display_name=>'Strong Button Label'
,p_display_sequence=>1
,p_css_classes=>'a-Button--strongLabel'
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(60723840009335)
,p_theme_id=>4000
,p_name=>'AUTOWIDTH'
,p_display_name=>'Auto Width'
,p_display_sequence=>1
,p_css_classes=>'a-Form--autoWidthLabels'
,p_group_id=>wwv_flow_api.id(60348078009335)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(61146528009336)
,p_theme_id=>4000
,p_name=>'FIXEDWIDTH'
,p_display_name=>'Fixed'
,p_display_sequence=>10
,p_css_classes=>'a-Form--fixedLabels'
,p_group_id=>wwv_flow_api.id(60348078009335)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(61894055009336)
,p_theme_id=>4000
,p_name=>'LABELSABOVE'
,p_display_name=>'Labels Above'
,p_display_sequence=>1
,p_css_classes=>'a-Form--labelsAbove'
,p_group_id=>wwv_flow_api.id(61471955009336)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(62763573009336)
,p_theme_id=>4000
,p_name=>'ALIGNLABELSLEFT'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_css_classes=>'a-Form--leftLabels'
,p_group_id=>wwv_flow_api.id(62326507009336)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63563697009337)
,p_theme_id=>4000
,p_name=>'LABELAUTOWIDTH'
,p_display_name=>'Auto Width'
,p_display_sequence=>1
,p_css_classes=>'a-Form-fieldContainer--autoLabelWidth'
,p_group_id=>wwv_flow_api.id(63161234009336)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63883088009337)
,p_theme_id=>4000
,p_name=>'STRETCHFORMFIELD'
,p_display_name=>'Stretch Form Field'
,p_display_sequence=>1
,p_css_classes=>'a-Form-fieldContainer--stretch'
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64351880009337)
,p_theme_id=>4000
,p_name=>'FIXEDLARGE'
,p_display_name=>'Fixed (Large Width)'
,p_display_sequence=>30
,p_css_classes=>'a-Form-fixedLabelsLarge'
,p_group_id=>wwv_flow_api.id(60348078009335)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(64697228009337)
,p_theme_id=>4000
,p_name=>'FIXEDMEDIUM'
,p_display_name=>'Fixed (Medium Width)'
,p_display_sequence=>20
,p_css_classes=>'a-Form-fixedLabelsMed'
,p_group_id=>wwv_flow_api.id(60348078009335)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(65503901009337)
,p_theme_id=>4000
,p_name=>'180PX'
,p_display_name=>'180px'
,p_display_sequence=>10
,p_css_classes=>'h180'
,p_group_id=>wwv_flow_api.id(65135588009337)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(65877785009338)
,p_theme_id=>4000
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>20
,p_css_classes=>'h240'
,p_group_id=>wwv_flow_api.id(65135588009337)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(66295665009338)
,p_theme_id=>4000
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>30
,p_css_classes=>'h320'
,p_group_id=>wwv_flow_api.id(65135588009337)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(66748425009338)
,p_theme_id=>4000
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>50
,p_css_classes=>'h480'
,p_group_id=>wwv_flow_api.id(65135588009337)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67156565009338)
,p_theme_id=>4000
,p_name=>'540PX'
,p_display_name=>'540px'
,p_display_sequence=>60
,p_css_classes=>'h540'
,p_group_id=>wwv_flow_api.id(65135588009337)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67552699009338)
,p_theme_id=>4000
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>70
,p_css_classes=>'h640'
,p_group_id=>wwv_flow_api.id(65135588009337)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
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
prompt --application/shared_components/globalization/translations
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
 p_id=>wwv_flow_api.id(518624209967732)
,p_name=>'DemoAuth'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attribute_03=>'auth'
,p_attribute_05=>'N'
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function auth(p_username in varchar2, ',
'              p_password in varchar2) ',
'  return boolean is',
'',
'  l_count integer;',
'  ',
'begin',
'',
'  select count(1)',
'    into l_count',
'    from dual',
'   where ''DEMO'' = upper(p_username)',
'     and ''DEMO'' = upper(p_password);',
'',
'  if l_count = 1 then',
'    return true;',
'  else',
'    return false;',
'  end if;',
'  ',
'end;'))
,p_invalid_session_type=>'URL'
,p_invalid_session_url=>'f?p=&THEME4550.:LOGIN'
,p_logout_url=>'f?p=&THEME4550.:LOGIN'
,p_cookie_name=>'THEME_COOKIE'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/shared_components/plugins/authorization_type/com_oracle_apex_developer_authorization
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(75891152101702)
,p_plugin_type=>'AUTHORIZATION TYPE'
,p_name=>'COM.ORACLE.APEX.DEVELOPER_AUTHORIZATION'
,p_display_name=>'Developer Authorization'
,p_supported_ui_types=>'DESKTOP'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('AUTHORIZATION TYPE','COM.ORACLE.APEX.DEVELOPER_AUTHORIZATION'),'')
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function is_authorized (',
'    p_authorization in apex_plugin.t_authorization,',
'    p_plugin        in apex_plugin.t_plugin )',
'    return apex_plugin.t_authorization_exec_result',
'is',
'    l_result               apex_plugin.t_authorization_exec_result;',
'begin',
'    l_result.is_authorized := wwv_flow_authorization.is_authorized_developer ( ',
'                                  p_developer_authorization => p_authorization.attribute_01 );',
'    return l_result;',
'exception',
'    when no_data_found then',
'        l_result.is_authorized := false;',
'        return l_result;',
'end;'))
,p_api_version=>1
,p_execution_function=>'is_authorized'
,p_substitute_attributes=>true
,p_reference_id=>12457518297512494
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(76171289101703)
,p_plugin_id=>wwv_flow_api.id(75891152101702)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Developer Role'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_is_translatable=>false
,p_lov_type=>'STATIC'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(76659283101703)
,p_plugin_attribute_id=>wwv_flow_api.id(76171289101703)
,p_display_sequence=>10
,p_display_value=>'ADMIN: Ability to manage flow developer privileges'
,p_return_value=>'ADMIN'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(77146884101703)
,p_plugin_attribute_id=>wwv_flow_api.id(76171289101703)
,p_display_sequence=>20
,p_display_value=>'EDIT: Ability change all attributes of specified flow(s)'
,p_return_value=>'EDIT'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(77601692101704)
,p_plugin_attribute_id=>wwv_flow_api.id(76171289101703)
,p_display_sequence=>30
,p_display_value=>'HELP: Ability edit help page for a given company'
,p_return_value=>'HELP'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(78127872101704)
,p_plugin_attribute_id=>wwv_flow_api.id(76171289101703)
,p_display_sequence=>40
,p_display_value=>'BROWSE: Access to Oracle data dictionary browser'
,p_return_value=>'BROWSE'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(78627068101704)
,p_plugin_attribute_id=>wwv_flow_api.id(76171289101703)
,p_display_sequence=>50
,p_display_value=>'CREATE: Ability to create new flows'
,p_return_value=>'CREATE'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(79120480101704)
,p_plugin_attribute_id=>wwv_flow_api.id(76171289101703)
,p_display_sequence=>60
,p_display_value=>'MONITOR: Ability to monitor flow activity'
,p_return_value=>'MONITOR'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(79589881101704)
,p_plugin_attribute_id=>wwv_flow_api.id(76171289101703)
,p_display_sequence=>70
,p_display_value=>'DB_MONITOR: Ability to monitor Oracle database attributes'
,p_return_value=>'DB_MONITOR'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(80112585101704)
,p_plugin_attribute_id=>wwv_flow_api.id(76171289101703)
,p_display_sequence=>80
,p_display_value=>'SQL: Ability to issues SQL statements'
,p_return_value=>'SQL'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(80589650101705)
,p_plugin_attribute_id=>wwv_flow_api.id(76171289101703)
,p_display_sequence=>90
,p_display_value=>'USER_MANAGER: Manage user accounts for cookie based authentication'
,p_return_value=>'USER_MANAGER'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(81087619101705)
,p_plugin_attribute_id=>wwv_flow_api.id(76171289101703)
,p_display_sequence=>100
,p_display_value=>'DATA_LOADER: Data Workshop'
,p_return_value=>'DATA_LOADER'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(81648305101705)
,p_plugin_attribute_id=>wwv_flow_api.id(76171289101703)
,p_display_sequence=>110
,p_display_value=>'RESTFUL: Ability to enable RESTful Services'
,p_return_value=>'RESTFUL'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(82103596101705)
,p_plugin_attribute_id=>wwv_flow_api.id(76171289101703)
,p_display_sequence=>120
,p_display_value=>'PKG_APPS: Ability to install packaged applications'
,p_return_value=>'PKG_APPS'
);
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
,p_theme_id=>4000
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&THEME4550.:LOGIN'
,p_theme_style_by_user_pref=>false
,p_global_page_id=>0
,p_navigation_list_template_id=>wwv_flow_api.id(46868896009329)
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
prompt --application/pages/page_00000
begin
wwv_flow_api.create_page(
 p_id=>0
,p_user_interface_id=>wwv_flow_api.id(306791000040)
,p_name=>'Global Page'
,p_page_mode=>'NORMAL'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'D'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'OOS_USER'
,p_last_upd_yyyymmddhh24miss=>'20170512224442'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69074562056823)
,p_plug_name=>'APEX 5 - Header'
,p_region_css_classes=>'a-Header apex-app-builder'
,p_plug_template=>wwv_flow_api.id(14578610009317)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_07'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69254358056824)
,p_plug_name=>'APEX 5 - Header Left'
,p_parent_plug_id=>wwv_flow_api.id(69074562056823)
,p_region_css_classes=>'a-Header-col a-Header-col--left'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14578610009317)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69364580056825)
,p_plug_name=>'APEX 5 - Logo'
,p_parent_plug_id=>wwv_flow_api.id(69254358056824)
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'sys.htp.p(''<a href="''',
'          ||apex_util.prepare_url(''f?p=''||:APP_ALIAS||'':''||:APP_PAGE_ALIAS||'':''||:APP_SESSION||''::''||:DEBUG||''::::'')',
'          ||''" class="a-Header-logo" title="''||:APP_TITLE||''">',
'    <span class="a-Header-apexLogo">',
'        <span class="u-VisuallyHidden">''||:APP_TITLE||''</span>',
'    </span>',
'</a>'');'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69406463056826)
,p_plug_name=>'APEX 5 - Tabs'
,p_region_name=>'a_Header_menu'
,p_parent_plug_id=>wwv_flow_api.id(69254358056824)
,p_region_css_classes=>'a-Header-tabsContainer'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14578610009317)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(188716664418560)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(46868896009329)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69566454056827)
,p_plug_name=>'APEX 5 - Header Right'
,p_parent_plug_id=>wwv_flow_api.id(69074562056823)
,p_region_css_classes=>'a-Header-col a-Header-col--right'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14578610009317)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69648232056828)
,p_plug_name=>'APEX 5 - Search'
,p_parent_plug_id=>wwv_flow_api.id(69566454056827)
,p_region_css_classes=>'a-Header-search'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14578610009317)
,p_plug_display_sequence=>15
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_search_label varchar2(255) := wwv_flow_lang.system_message(case when :APP_PAGE_ID = 1500 then ''WWV_FLOW_QUICK_FLOW.SEARCH.ALL_APPS'' else ''WWV_FLOW_QUICK_FLOW.SEARCH.APPS'' end);',
'begin',
'    sys.htp.p(''<div class="a-SearchBox a-SearchBox--noGoButton a-SearchBox--autoExpand a-SearchBox--fill">'');',
'    sys.htp.p(''  <div class="a-SearchBox-field">'');',
'    sys.htp.p(''    <span class="a-SearchBox-icon"><span class="a-Icon icon-search"></span></span>'');',
'    sys.htp.p(''    <label for="P0_SEARCH" class="visuallyhidden">''||l_search_label||''</label>'');',
'    sys.htp.p(''    <input type="text" class="a-SearchBox-input" id="P0_SEARCH" placeholder="''||l_search_label||''">'');',
'    sys.htp.p(''  </div>'');',
'    sys.htp.p(''</div>'');',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69763557056829)
,p_plug_name=>'APEX 5 - Header Navigation Links'
,p_parent_plug_id=>wwv_flow_api.id(69566454056827)
,p_region_css_classes=>'a-Header-navLinks'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14578610009317)
,p_plug_display_sequence=>25
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(70029364056832)
,p_plug_name=>'Administration Menu'
,p_region_name=>'adminMenu'
,p_parent_plug_id=>wwv_flow_api.id(69763557056829)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14578610009317)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(156635204296021)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(46310901009328)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(70122219056833)
,p_plug_name=>'Help Menu'
,p_region_name=>'helpMenu'
,p_parent_plug_id=>wwv_flow_api.id(69763557056829)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14578610009317)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(164559451296025)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(46310901009328)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(262660141957735)
,p_plug_name=>'APEX 5 - Account'
,p_parent_plug_id=>wwv_flow_api.id(69566454056827)
,p_region_css_classes=>'a-Header-account'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14578610009317)
,p_plug_display_sequence=>35
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'sys.htp.p(''<button class="a-Button a-Button--noLabel a-Button--iconTextButton a-Button--noUI a-Button--navLink js-menuButton a-Button--accountMenu" type="button" title="Account Menu" data-menu="accountMenu_menu" id="header-accountMenu">',
'    <span class="a-Header-userPhoto">',
'        <span class="a-Icon a-Icon--medium icon-user-round"></span>',
'    </span>',
'    <span class="a-Header-userName">''||:APP_USER||''</span>',
'    <span class="a-Icon icon-menu-drop-down"></span>',
'</button>',
'<div id="accountMenu_menu" class="a-Header-accountDialog">',
'    <div class="a-MediaBlock a-Menu-content">',
'        <div class="a-MediaBlock-graphic">',
'            <span class="a-Header-userPhoto a-Header-userPhoto--large a-Header-userPhoto--default">',
'        <span class="a-Header-noUserPhoto gi-icon-user-no-photo"></span>',
'            </span>',
'            <a href="f?p=''||:APP_ALIAS||'':''||:APP_PAGE_ALIAS||'':''||:APP_SESSION||''::NO:::" class="a-Header-accountDialog-editProfile">Edit Profile</a>',
'        </div>',
'        <div class="a-MediaBlock-content">',
'            <div class="a-Menu-label">',
'                <span class="a-Header-dialogText a-Header-dialogName">''||:APP_USER||''</span>',
'                <span class="a-Header-dialogText a-Header-dialogUsername"></span></div>',
'            <div class="a-Menu-label">',
'                <span class="a-Header-dialogLabel">',
'Workspace</span><span class="a-Header-dialogValue">''||:COMPANY||''</span></div>',
'            <div class="a-Menu-label">',
'                <span class="a-Header-dialogLabel">Role</span><span class="a-Header-dialogValue">Developer</span></div>',
'        </div>',
'    </div>',
'    <div class="a-Header-accountDialog-buttons">',
'        <div class="a-Toolbar">',
'            <div class="a-Toolbar-items a-Toolbar-items--left">',
'                <button type="button" onclick="f?p=''||:APP_ALIAS||'':''||:APP_PAGE_ALIAS||'':''||:APP_SESSION||''::NO:::" class="a-Button">Preferences</button>',
'            </div>',
'            <div class="a-Toolbar-items a-Toolbar-items--right">',
'                <button type="button" onclick="apex.navigation.redirect('''''' || ''apex_authentication.logout?p_app_id='' ||:APP_ID|| ''\u0026p_session_id='' || :APP_SESSION || '''''');" class="a-Button">Sign out</button>',
'            </div>',
'        </div>',
'    </div>',
'</div>'');'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_translate_title=>'N'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(70233518056834)
,p_plug_name=>'APEX 5 - Control Bar'
,p_region_css_classes=>'a-ControlBar apex-app-builder'
,p_plug_template=>wwv_flow_api.id(14578610009317)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_07'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'CURRENT_PAGE_NOT_IN_CONDITION'
,p_plug_display_when_condition=>'1500, 4500'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(70332882056835)
,p_plug_name=>'APEX 5 - Control Bar Left'
,p_parent_plug_id=>wwv_flow_api.id(70233518056834)
,p_region_css_classes=>'a-ControlBar-col a-ControlBar-col--noPadding'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14578610009317)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(70535473056837)
,p_plug_name=>'APEX 5 - Breadcrumb'
,p_parent_plug_id=>wwv_flow_api.id(70332882056835)
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_menu_id=>wwv_flow_api.id(260800766060667128)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(52334798009331)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(70419662056836)
,p_plug_name=>'APEX 5 - Control Bar Right'
,p_parent_plug_id=>wwv_flow_api.id(70233518056834)
,p_region_css_classes=>'a-ControlBar-col'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14578610009317)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'CURRENT_PAGE_NOT_IN_CONDITION'
,p_plug_display_when_condition=>'4500,1500,460,514,516,527,273,2100,2101,2102,2103,2104,2105,2106,2107,2108,2109,2111,2115,163,56,176,189,433,447,448,451,454,458,494,495,496,3001,3002,3005,3020,49,57,3000,2116,598,2117,73,227,20,800,2150,2151,2152,2153,2154,2155,2157,733,870,871,872'
||',873,580,585,588,589,599,226,875,876,700,705,720,725,730,735,880,882,600,605,615,620,625,630,635,884,886,196,722,523,689,4460,479,224,4900,76,441,933,559,934,78,279,50,81,82,83,209,650,680,160'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(69824574056830)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(69763557056829)
,p_button_name=>'ADMINISTRATION'
,p_button_static_id=>'header-adminMenu'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(52137109009331)
,p_button_image_alt=>'Administration'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_css_classes=>'a-Button--noUI a-Button--navLink'
,p_icon_css_classes=>'icon-gears-alt'
,p_button_cattributes=>'data-menu="adminMenu_menu"'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(69964976056831)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(69763557056829)
,p_button_name=>'Help'
,p_button_static_id=>'header-helpMenu'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(52137109009331)
,p_button_image_alt=>'Help'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_css_classes=>'a-Button--noUI a-Button--navLink'
,p_icon_css_classes=>'icon-help'
,p_button_cattributes=>'data-menu="helpMenu_menu"'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(70650215056838)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(70419662056836)
,p_button_name=>'DEVELOPER_COMMENT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(52187365009331)
,p_button_image_alt=>'Developer Comment, Bug or To Do'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP::'
,p_button_css_classes=>'a-Button a-Button--noLabel a-Button--padLeft'
,p_icon_css_classes=>'icon-add-comment'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(70683802056839)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(70419662056836)
,p_button_name=>'FIND'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(52187365009331)
,p_button_image_alt=>'Find'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'javascript:apex.navigation.popup({url:"f?p=&APP_ID.:1:&APP_SESSION.::",name:''Finder'',width:800,height:600});'
,p_icon_css_classes=>'icon-find'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(70858066056840)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(70419662056836)
,p_button_name=>'SHARED_COMPONENTS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(52187365009331)
,p_button_image_alt=>'Shared components'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP::'
,p_button_css_classes=>'a-Button a-Button--noLabel a-Button--padLeft'
,p_icon_css_classes=>'icon-shared-components'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(70920665056841)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(70419662056836)
,p_button_name=>'EDIT_PAGE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:a-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(51628009009330)
,p_button_image_alt=>'<span class="u-VisuallyHidden">Edit page</span> &APP_PAGE_ID. '
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP::'
,p_button_css_classes=>'a-Button--withIcon a-Button--gapLeft a-Button--editPageButton a-Button--iconTopAction'
,p_icon_css_classes=>'icon-edit-page'
,p_button_cattributes=>'title="Edit Page &APP_PAGE_ID. "'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(71031883056842)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_api.id(70419662056836)
,p_button_name=>'RUN_PAGE'
,p_button_static_id=>'button-run-page'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(52187365009331)
,p_button_image_alt=>'Run Page &APP_PAGE_ID.'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP::'
,p_button_css_classes=>'launch-aut a-Button a-Button--noLabel a-Button--withIcon a-Button--iconTopAction a-Button--padLeft'
,p_icon_css_classes=>'icon-run-page'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(306791000040)
,p_name=>'Home'
,p_alias=>'HOME'
,p_page_mode=>'NORMAL'
,p_step_title=>'Home'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'Home'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_step_template=>wwv_flow_api.id(3748494009314)
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'OOS_USER'
,p_last_upd_yyyymmddhh24miss=>'20170512143204'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(68807809056820)
,p_plug_name=>'About'
,p_region_template_options=>'#DEFAULT#:a-Region--slimPadding:a-Region--sideRegion'
,p_plug_template=>wwv_flow_api.id(22707589009320)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use the Application home page to run, edit, import, export, copy, or delete an application. Select a page to edit the page properties, or click <strong>Create Page</strong> to add a page to the application.</p>',
'<p><a target="_blank" href="&SYSTEM_HELP_URL./HTMDB/using-application-home-page.htm">Learn More ...</a></p>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(68945987056821)
,p_plug_name=>'Tasks'
,p_region_template_options=>'#DEFAULT#:a-Region--noPadding:a-Region--sideRegion'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(22707589009320)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'BELOW'
,p_list_id=>wwv_flow_api.id(75207471101699)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(42295030009327)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(71231129056844)
,p_plug_name=>'Application &APP_ID. - &APP_TITLE.'
,p_region_css_classes=>'a-Region--bottomBorder'
,p_region_sub_css_classes=>'app-builder'
,p_region_template_options=>'#DEFAULT#:a-Region--noTopBorder:a-Region--paddedBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(22707589009320)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(256288783079226)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(42067221009327)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_column_width=>'apex-col--bottomBorder'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(71431357056846)
,p_plug_name=>'Pages'
,p_region_name=>'apex_pages_irr'
,p_region_template_options=>'#DEFAULT#:a-IRR-region--noOuterBorders'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(20085154009319)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select /* APEX 4000P1 */',
' p.page_id id,',
' p.application_id the_flow,',
' p.page_name name,',
' tab_set,',
' p.page_id || '' - '' || p.page_name icon_text,',
' p.last_updated_on updated,',
' lower(p.last_updated_by) last_updated_by,',
' p.created_on,',
' lower(p.created_by) created_by,',
' case',
'   when upper(p.page_mode) = ''NORMAL'' and decode(p.page_function,',
'              ''Tabular Form'',''01'',',
'              ''Form'',''02'',',
'              ''Report'',''03'',',
'              ''Chart'',''04'',',
'              ''Web Service'',''05'',',
'              ''Navigation Page'',''06'',',
'              ''Tree'',''07'',',
'              ''Calendar'',''08'',',
'              ''URL'',''09'',',
'              ''Dynamic HTML'',''10'',',
'              ''Static HTML'',''11'',',
'              ''Login'',''12'',',
'              ''Home'',''13'',',
'              ''Global Page'',''14'',',
'              ''Empty Page'',''15'',',
'              ''Dynamic Form'',''16'',',
'              ''Wizard Form'',''17'',',
'              ''0'') <> 14 then',
'    ''<button type="button" data-link="f?p=&APP_ID.:RUN_PAGE:'' ||',
'    :app_session || '':BRANCH_TO_PAGE_ACCEPT:::FB_FLOW_PAGE_ID,FB_FLOW_ID:'' ||',
'    p.page_id || '','' || p.application_id || ''" title="'' ||',
'    apex_lang.message(''Run Page ID: '' || p.page_id ) || ''" aria-label="'' ||',
'    apex_lang.message(''Run Page ID: '' || p.page_id ) || ',
'    ''" class="a-Button a-Button--noLabel a-Button--withIcon launch-aut"><span class="a-Icon icon-run-page" aria-hidden="true"></span></button>''',
'   else',
'    '' ''',
' end actions,',
' decode(l.locked_by,',
'        null,',
'        ''<span class="a-Icon icon-unlock" aria-hidden="true"></span><span class="u-VisuallyHidden">'' ||',
'        apex_lang.message(''Page '' || p.page_id || '' unlocked'') || ''</span>'',',
'        ''<span class="a-Icon icon-lock" aria-hidden="true"></span><span class="u-VisuallyHidden">'' ||',
'        apex_lang.message(''Page '' || p.page_id || '' unlocked'')  || ''</span>'') Locked,',
' decode(l.locked_by,',
'        null,',
'        ''f?p=&APP_ID.:444:'' || :app_session ||',
'        '':::444:P337_ID,FB_FLOW_PAGE_ID,P444_LOCK_PAGES:,'' || p.page_id || '','' ||',
'        p.page_id || '','' || p.page_id,',
'        ''f?p=&APP_ID.:337:'' || :app_session ||',
'        '':::337:P337_ID,FB_FLOW_PAGE_ID:'' || l.page_id || '','' || p.page_id) locked_link,',
' nvl(g.page_group_name, sm.t_unassigned) group_name,',
' decode(g.page_group_name,',
'        null,',
'        ''f?p=&APP_ID.:520:'' || :app_session || '':::520:'',',
'        ''f?p=&APP_ID.:521:'' || :app_session || '':::521,RP,RIR:P521_ID:'' ||',
'        g.group_id) group_link,',
' decode(page_function,',
'        ''Tabular Form'',',
'        sm.apex_tabular_form,',
'        ''Form'',',
'        sm.apex_form,',
'        ''Report'',',
'        sm.apex_report,',
'        ''Chart'',',
'        sm.apex_chart,',
'        ''Web Service'',',
'        sm.apex_web_service,',
'        ''Navigation Page'',',
'        sm.apex_nav_page,',
'        ''Tree'',',
'        sm.apex_tree,',
'        ''Calendar'',',
'        sm.apex_calendar,',
'        ''URL'',',
'        ''URL'',',
'        ''Dynamic HTML'',',
'        sm.apex_dynamic_html,',
'        ''Static HTML'',',
'        sm.apex_static_html,',
'        ''Login'',',
'        sm.apex_login,',
'        ''Home'',',
'        sm.apex_home,',
'        ''Global Page'',',
'        sm.apex_zero,',
'        ''Empty Page'',',
'        sm.apex_empty_page,',
'        ''Dynamic Form'',',
'        sm.apex_dynamic_form,',
'        ''Wizard Form'',',
'        sm.apex_wizard_form,',
'        ''Interactive Report'',',
'        sm.apex_interactive_rpt,',
'        ''Map'',',
'        sm.apex_map,',
'        ''Tree'',',
'        sm.apex_jstree,',
'        ''Interactive Grid'',',
'        sm.apex_ig,',
'        ''unknown'') page_type,',
' p.page_mode,',
' -- icon columns',
' decode(page_function,',
'        ''Tabular Form'',',
'        ''icon-page-form-tabular'',',
'        ''Form'',',
'        ''icon-page-form'',',
'        ''Report'',',
'        ''icon-page-report'',',
'        ''Chart'',',
'        ''icon-page-chart'',',
'        ''Web Service'',',
'        ''icon-page-webservice'',',
'        ''Navigation Page'',',
'        ''icon-page-nav'',',
'        ''Tree'',',
'        ''icon-page-tree'',',
'        ''Calendar'',',
'        ''icon-page-calendar'',',
'        ''URL'',',
'        ''icon-page-url'',',
'        ''Dynamic HTML'',',
'        ''icon-page-dynamic'',',
'        ''Static HTML'',',
'        ''icon-page-static'',',
'        ''Login'',',
'        ''icon-page-login'',',
'        ''Home'',',
'        ''icon-page-home'',',
'        ''Global Page'',',
'        ''icon-page-global'',',
'        ''Empty Page'',',
'        '' '',',
'        ''Dynamic Form'',',
'        ''icon-page-dynamic-form'',',
'        ''Wizard Form'',',
'        ''icon-page-wizard'',',
'        ''Interactive Report'',',
'        ''icon-page-ir'',',
'        ''Map'',',
'        ''icon-page-map'',',
'        ''Tree'',',
'        ''icon-page-tree'',',
'        ''Interactive Grid'',',
'        ''icon-page-report'',',
'        '' '') page_type_class,',
' ''f?p=&APP_ID.:4150:'' || :app_session ||',
' ''::::FB_FLOW_ID,FB_FLOW_PAGE_ID,F4000_P4150_GOTO_PAGE:'' ||',
' p.application_id || '','' || p.page_id || '','' || p.page_id edit_page_url,',
' page_ALIAS ALIAS,',
' Page_title Page_title,',
' nvl(''Desktop'',user_interface_id) user_interface_id,',
' /* decode(first_item,',
' ''NO_FIRST_ITEM'',',
' sm.t_no,',
' ''AUTO_FIRST_ITEM'',',
' sm.auto_first_item,',
' sm.t_no) FIRST_ITEM,*/',
' decode(INCLUDE_APEX_CSS_JS_YN,',
'        ''Y'',',
'        sm.t_yes,',
'        ''N'',',
'        sm.t_no,',
'        INCLUDE_APEX_CSS_JS_YN) INCLUDE_APEX_CSS_JS,',
' HELP_TEXT,',
' FOOTER_TEXT,',
' --welcome_text header_text,',
' --HTML_PAGE_HEADER,',
' --HTML_PAGE_ONLOAD,',
' decode(ALLOW_DUPLICATE_SUBMISSIONS, ''Y'', sm.t_yes, ''N'', sm.t_no, sm.t_yes) ALLOW_DUPLICATE_SUBMISSIONS,',
' ON_DUP_SUBMISSION_GOTO_URL,',
' --decode(PAGE_IS_PUBLIC_Y_N, ''Y'', sm.t_yes, ''N'', sm.t_no, PAGE_IS_PUBLIC_Y_N) PAGE_IS_PUBLIC,',
' /* decode(protection_level,',
' ''D'',',
' sm.NO_URL_ACCESS,',
' ''N'',',
' sm.Unrestricted,',
' ''U'',',
' sm.no_arguments_allowed,',
' ''C'',',
' sm.arguments_must_have_checksum,',
' sm.Unrestricted) PROTECTION_LEVEL,*/',
' ERROR_NOTIFICATION_TEXT,',
' decode(CACHE_MODE, ''NOCACHE'', sm.t_no, sm.t_yes) CACHE_PAGE,',
' CACHE_TIMEOUT_SECONDS,',
' PAGE_COMMENT,',
' sm.edit',
'  from /*apex_050100.wwv_flow_steps */ apex_application_pages p,',
'       /*apex_050100.WWV_FLOW_LOCK_PAGE*/',
'       apex_application_locked_pages l,',
'       (select apex_lang.message(''LOCKED'') locked,',
'               apex_lang.message(''RUN'') run,',
'               apex_lang.message(''UNLOCKED'') unlocked,',
'               apex_lang.message(''EDIT'') edit,',
'               apex_lang.message(''REPORT'') apex_report,',
'               apex_lang.message(''DML_FORM'') apex_form,',
'               apex_lang.message(''WEB_SERVICE'') apex_web_service,',
'               apex_lang.message(''F4000_CHART'') apex_chart,',
'               apex_lang.message(''F4000_HELP_TEXT'') apex_help_page,',
'               apex_lang.message(''Dynamic HTML'') apex_dynamic_html,',
'               apex_lang.message(''STATIC_HTML'') apex_static_html,',
'               apex_lang.message(''HTML'') apex_html,',
'               apex_lang.message(''F4000_TREE'') apex_tree,',
'               apex_lang.message(''TABULAR_FORM'') apex_tabular_form,',
'               apex_lang.message(''LEGACY_CALENDAR'') apex_calendar,',
'               apex_lang.message(''Login'') apex_login,',
'               apex_lang.message(''Home'') apex_home,',
'               apex_lang.message(''Global Page'') apex_zero,',
'               apex_lang.message(''EMPTY_PAGE'') apex_empty_page,',
'               apex_lang.message(''NAVIGATION_PAGE'') apex_nav_page,',
'               apex_lang.message(''DYNAMIC_FORM'') apex_dynamic_form,',
'               apex_lang.message(''APEX_WIZARD_FORM'') apex_wizard_form,',
'               apex_lang.message(''LAYOUT.MAP'') apex_map,',
'               apex_lang.message(''F4000_TREE'') apex_jstree,',
'               apex_lang.message(''INTERACTIVE_REPORT'') apex_interactive_rpt,',
'               apex_lang.message(''F4000.YES'') t_yes,',
'               apex_lang.message(''F4000.NO'') t_no,',
'               apex_lang.message(''AUTO_FIRST_ITEM'') auto_first_item,',
'               apex_lang.message(''NO_URL_ACCESS'') NO_URL_ACCESS,',
'               apex_lang.message(''UNRESTRICTED'') unrestricted,',
'               apex_lang.message(''NO_ARGUMENTS_ALLOWED'') no_arguments_allowed,',
'               apex_lang.message(''ARGUMENTS_MUST_HAVE_CHECKSUM'') arguments_must_have_checksum,',
'               apex_lang.message(''Unassigned'') t_unassigned,',
'               apex_lang.message(''MUST_NOT_BE_PUBLIC_USER'') t_must_not_be_public_user,',
'               apex_lang.message(''REGION_NAME.NATIVE_IG'') apex_ig',
'          from dual) sm,',
'       /*apex_050100.WWV_FLOW_PAGE_GROUPS*/',
'       apex_application_page_groups g,',
'/*    (select apex_050100.wwv_flow_page_map.page_list(110, null) ws',
'from dual) w*/',
'apex_applications a',
' where p.application_id = :APP_ID',
'   and a.application_id = p.application_id',
'   and a.workspace_id  = :WORKSPACE_ID',
'   and l.application_id(+) = :APP_ID',
'   and p.page_id = l.page_id(+)',
'   and p.page_group_id = g.group_id(+)',
'   and (null is null or instr(upper(p.page_name), upper(null)) > 0 or',
'       null = to_char(p.page_id) /* or',
'                            (w.ws is not null and',
'                            instr('','' || w.ws || '','', '','' || to_char(p.page_id) || '','') > 0)*/',
'       )',
'   and (nvl(null, 0) = 0 or p.page_group_id = null)'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(71566073056847)
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more then 10,000 rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_highlight=>'N'
,p_show_computation=>'N'
,p_show_aggregate=>'N'
,p_show_chart=>'N'
,p_show_group_by=>'N'
,p_show_flashback=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_icon_view_enabled_yn=>'Y'
,p_icon_view_use_custom=>'Y'
,p_icon_view_custom_link=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#EDIT_PAGE_URL#" class="a-IRR-icon a-IRR-icon--page">',
'    <span class="a-Icon #PAGE_TYPE_CLASS#"></span>',
'    <span class="a-Icon a-IRR-pageIcon"></span>',
'    <span class="a-IRR-iconName">#ICON_TEXT#</span>',
'</a>'))
,p_icon_view_columns_per_row=>6
,p_owner=>'OOS_USER'
,p_internal_uid=>3524798882428828
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71624146056848)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71842034056850)
,p_db_column_name=>'NAME'
,p_display_order=>2
,p_column_identifier=>'C'
,p_column_label=>'Name'
,p_column_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP::'
,p_column_linktext=>'#NAME#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72121452056853)
,p_db_column_name=>'UPDATED'
,p_display_order=>3
,p_column_identifier=>'F'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72230221056854)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>4
,p_column_identifier=>'G'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73047179056862)
,p_db_column_name=>'PAGE_TYPE'
,p_display_order=>5
,p_column_identifier=>'O'
,p_column_label=>'Page Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72812884056860)
,p_db_column_name=>'GROUP_NAME'
,p_display_order=>6
,p_column_identifier=>'M'
,p_column_label=>'Group'
,p_column_link=>'#GROUP_LINK#'
,p_column_linktext=>'#GROUP_NAME#'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72583704056858)
,p_db_column_name=>'LOCKED'
,p_display_order=>7
,p_column_identifier=>'K'
,p_column_label=>'Lock'
,p_column_link=>'#LOCKED_LINK#'
,p_column_linktext=>'#LOCKED#'
,p_column_link_attr=>'class="a-Button a-Button--noUI a-Button--small"'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72536392056857)
,p_db_column_name=>'ACTIONS'
,p_display_order=>8
,p_column_identifier=>'J'
,p_column_label=>'Run'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71746055056849)
,p_db_column_name=>'THE_FLOW'
,p_display_order=>9
,p_column_identifier=>'B'
,p_column_label=>'The flow'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73298038056865)
,p_db_column_name=>'EDIT_PAGE_URL'
,p_display_order=>11
,p_column_identifier=>'R'
,p_column_label=>'Edit page url'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71941574056851)
,p_db_column_name=>'TAB_SET'
,p_display_order=>13
,p_column_identifier=>'D'
,p_column_label=>'Tab Set'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73385390056866)
,p_db_column_name=>'ALIAS'
,p_display_order=>14
,p_column_identifier=>'S'
,p_column_label=>'Alias'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73565090056867)
,p_db_column_name=>'PAGE_TITLE'
,p_display_order=>15
,p_column_identifier=>'T'
,p_column_label=>'Page Title'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(262687427957736)
,p_db_column_name=>'USER_INTERFACE_ID'
,p_display_order=>16
,p_column_identifier=>'AF'
,p_column_label=>'User Interface'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73753685056869)
,p_db_column_name=>'INCLUDE_APEX_CSS_JS'
,p_display_order=>18
,p_column_identifier=>'V'
,p_column_label=>'Include APEX CSS JS'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(261663361957725)
,p_db_column_name=>'CACHE_PAGE'
,p_display_order=>19
,p_column_identifier=>'AB'
,p_column_label=>'Cache Page'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(261150916957720)
,p_db_column_name=>'HELP_TEXT'
,p_display_order=>19
,p_column_identifier=>'W'
,p_column_label=>'Help Text'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_column_type=>'CLOB'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(261328133957722)
,p_db_column_name=>'ALLOW_DUPLICATE_SUBMISSIONS'
,p_display_order=>24
,p_column_identifier=>'Y'
,p_column_label=>'Allow Duplicate Submissions'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(261438736957723)
,p_db_column_name=>'ON_DUP_SUBMISSION_GOTO_URL'
,p_display_order=>25
,p_column_identifier=>'Z'
,p_column_label=>'On Duplicate Submission Go To URL'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(261556632957724)
,p_db_column_name=>'ERROR_NOTIFICATION_TEXT'
,p_display_order=>28
,p_column_identifier=>'AA'
,p_column_label=>'Error Notification Text'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(261739982957726)
,p_db_column_name=>'CACHE_TIMEOUT_SECONDS'
,p_display_order=>30
,p_column_identifier=>'AC'
,p_column_label=>'Cache Timeout Seconds'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(261861506957727)
,p_db_column_name=>'PAGE_COMMENT'
,p_display_order=>31
,p_column_identifier=>'AD'
,p_column_label=>'Page Comment'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(261193407957721)
,p_db_column_name=>'FOOTER_TEXT'
,p_display_order=>33
,p_column_identifier=>'X'
,p_column_label=>'Footer Text'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72268440056855)
,p_db_column_name=>'CREATED_ON'
,p_display_order=>43
,p_column_identifier=>'H'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72455597056856)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>44
,p_column_identifier=>'I'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72691349056859)
,p_db_column_name=>'LOCKED_LINK'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Locked link'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(261926480957728)
,p_db_column_name=>'EDIT'
,p_display_order=>130
,p_column_identifier=>'AE'
,p_column_label=>'Edit'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73236675056864)
,p_db_column_name=>'PAGE_TYPE_CLASS'
,p_display_order=>140
,p_column_identifier=>'Q'
,p_column_label=>'Page Type Class'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71996100056852)
,p_db_column_name=>'ICON_TEXT'
,p_display_order=>150
,p_column_identifier=>'E'
,p_column_label=>'Icon text'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73152115056863)
,p_db_column_name=>'PAGE_MODE'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Page mode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72952021056861)
,p_db_column_name=>'GROUP_LINK'
,p_display_order=>170
,p_column_identifier=>'N'
,p_column_label=>'Group link'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(275945120967211)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'37292'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_view_mode=>'REPORT'
,p_report_columns=>'ID:NAME:UPDATED:LAST_UPDATED_BY:PAGE_TYPE:GROUP_NAME:USER_INTERFACE_ID:LOCKED:ACTIONS:'
,p_sort_column_1=>'ID'
,p_sort_direction_1=>'ASC'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(71321582056845)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(71231129056844)
,p_button_name=>'EDIT_APPLICATION_PROPERTIES'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:a-Button--small'
,p_button_template_id=>wwv_flow_api.id(50977802009330)
,p_button_image_alt=>'Edit Application Properties'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(262034244957729)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(71431357056846)
,p_button_name=>'CREATE_PAGE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(51142698009330)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Page'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP::'
,p_icon_css_classes=>'icon-right-chevron'
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
,p_welcome_message=>'This is a demonstration application. Use this application to demo f4000 Theme APEX 5.0.'
,p_configuration_message=>'You can configure the following attributes of your application.'
,p_build_options_message=>'f4000 Theme APEX 5.0 DEMO Installation. You can choose to include the following build options.'
,p_validation_message=>'f4000 Theme APEX 5.0 DEMO Installation. The following validations will be performed to ensure your system is compatible with this application.'
,p_install_message=>'f4000 Theme APEX 5.0 DEMO Installation. Please confirm that you would like to install this application''s supporting objects.'
,p_install_success_message=>'f4000 Theme APEX 5.0 DEMO Installation. Your application''s supporting objects have been installed.'
,p_install_failure_message=>'f4000 Theme APEX 5.0 DEMO Installation. Installation of database objects and seed data has failed.'
,p_upgrade_message=>'The application installer has detected that this application''s supporting objects were previously installed.  This wizard will guide you through the process of upgrading these supporting objects.'
,p_upgrade_confirm_message=>'Please confirm that you would like to install this application''s supporting objects.'
,p_upgrade_success_message=>'Your application''s supporting objects have been installed.'
,p_upgrade_failure_message=>'Installation of database objects and seed data has failed.'
,p_deinstall_success_message=>'f4000 Theme APEX 5.0 DEMO deinstallation complete.'
,p_required_free_kb=>100
,p_deinstall_message=>'This operation will completely deinstall f4000 Theme APEX 5.0 DEMO Application.'
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
