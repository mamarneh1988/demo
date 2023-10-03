prompt --application/shared_components/navigation/lists/navigation_menu
begin
--   Manifest
--     LIST: Navigation Menu
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.0'
,p_default_workspace_id=>20
,p_default_application_id=>7190
,p_default_id_offset=>852320622354339934
,p_default_owner=>'ORACLE'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(3292186413923710794)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3292396629088710940)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3292407301148026276)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Basics'
,p_list_item_link_target=>'f?p=&APP_ID.:100:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-layers'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2480342661856264138)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>'Single Search Configuration'
,p_list_item_link_target=>'f?p=&APP_ID.:101:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(3292407301148026276)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'101'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2480346643905270727)
,p_list_item_display_sequence=>150
,p_list_item_link_text=>'Multiple Search Configurations'
,p_list_item_link_target=>'f?p=&APP_ID.:102:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(3292407301148026276)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'102'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2482045474653567042)
,p_list_item_display_sequence=>260
,p_list_item_link_text=>'REST Data Source'
,p_list_item_link_target=>'f?p=&APP_ID.:103:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(3292407301148026276)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'103'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3292441401695145911)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Use Cases'
,p_list_item_link_target=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-puzzle-piece'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2480355679127280942)
,p_list_item_display_sequence=>170
,p_list_item_link_text=>'Search Query Prefix'
,p_list_item_link_target=>'f?p=&APP_ID.:201:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(3292441401695145911)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'201'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2480425608053360961)
,p_list_item_display_sequence=>175
,p_list_item_link_text=>'Link Search Result To Form'
,p_list_item_link_target=>'f?p=&APP_ID.:202:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(3292441401695145911)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2480373150580311159)
,p_list_item_display_sequence=>180
,p_list_item_link_text=>'Custom Result Row Template'
,p_list_item_link_target=>'f?p=&APP_ID.:204:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(3292441401695145911)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'204'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2480393413700328395)
,p_list_item_display_sequence=>190
,p_list_item_link_text=>'Filter Search Configurations'
,p_list_item_link_target=>'f?p=&APP_ID.:206:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(3292441401695145911)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'206'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2480400239223333848)
,p_list_item_display_sequence=>200
,p_list_item_link_text=>'Multiple Search Regions'
,p_list_item_link_target=>'f?p=&APP_ID.:207:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(3292441401695145911)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'207'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2480337040836250994)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Advanced'
,p_list_item_link_target=>'f?p=&APP_ID.:300:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-rocket'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'300'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2480406856233340968)
,p_list_item_display_sequence=>210
,p_list_item_link_text=>'Cards Region'
,p_list_item_link_target=>'f?p=&APP_ID.:301:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(2480337040836250994)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'301'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2480411758912346235)
,p_list_item_display_sequence=>220
,p_list_item_link_text=>'Map Region'
,p_list_item_link_target=>'f?p=&APP_ID.:302:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(2480337040836250994)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'302'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2480420664344351050)
,p_list_item_display_sequence=>230
,p_list_item_link_text=>'Highlight Results'
,p_list_item_link_target=>'f?p=&APP_ID.:303:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(2480337040836250994)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'303'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2480340465409255584)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'Oracle Text'
,p_list_item_link_target=>'f?p=&APP_ID.:400:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-server-search'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'400'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2481268542432033633)
,p_list_item_display_sequence=>240
,p_list_item_link_text=>'Standard'
,p_list_item_link_target=>'f?p=&APP_ID.:401:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(2480340465409255584)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'401'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2481271782532064937)
,p_list_item_display_sequence=>250
,p_list_item_link_text=>'Text Index Function'
,p_list_item_link_target=>'f?p=&APP_ID.:402:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(2480340465409255584)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'402'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(835452617171726715)
,p_list_item_display_sequence=>270
,p_list_item_link_text=>'Administration'
,p_list_item_link_target=>'f?p=&APP_ID.:500:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-gear'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'500,501,502,503'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(847520246944857593)
,p_list_item_display_sequence=>280
,p_list_item_link_text=>'test'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(845920047755566687)
,p_list_item_display_sequence=>290
,p_list_item_link_text=>'test'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'3'
);
wwv_flow_imp.component_end;
end;
/
