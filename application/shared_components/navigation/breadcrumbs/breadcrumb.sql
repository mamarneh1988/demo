prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
--   Manifest
--     MENU: Breadcrumb
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.0'
,p_default_workspace_id=>20
,p_default_application_id=>7190
,p_default_id_offset=>852320622354339934
,p_default_owner=>'ORACLE'
);
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(3292185949438710792)
,p_name=>'Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(847519486335857538)
,p_short_name=>'test'
,p_link=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>2
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(845919208178566670)
,p_short_name=>'test'
,p_link=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>3
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(835454057734726726)
,p_short_name=>'Administration'
,p_link=>'f?p=&APP_ID.:500:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>500
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(835460126253761177)
,p_parent_id=>wwv_flow_imp.id(835454057734726726)
,p_short_name=>'Manage Sample Data'
,p_link=>'f?p=&APP_ID.:501:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>501
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(835466257471773358)
,p_parent_id=>wwv_flow_imp.id(835454057734726726)
,p_short_name=>'Application Theme Style'
,p_link=>'f?p=&APP_ID.:502:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>502
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(836209076121704399)
,p_parent_id=>wwv_flow_imp.id(835454057734726726)
,p_short_name=>'Web Credentials Settings'
,p_link=>'f?p=&APP_ID.:503:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>503
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2480331951688236312)
,p_short_name=>'Basics'
,p_link=>'f?p=&APP_ID.:100:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>100
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2480334905680242689)
,p_short_name=>'Use Cases'
,p_link=>'f?p=&APP_ID.:200:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>200
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2480338385855250995)
,p_short_name=>'Advanced'
,p_link=>'f?p=&APP_ID.:300:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>300
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2480341508612255585)
,p_short_name=>'Oracle Text'
,p_link=>'f?p=&APP_ID.:400:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>400
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2480344892790264142)
,p_parent_id=>wwv_flow_imp.id(2480331951688236312)
,p_short_name=>'Single Search Configuration'
,p_link=>'f?p=&APP_ID.:101:&SESSION.::&DEBUG.:::'
,p_page_id=>101
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2480349418713270730)
,p_parent_id=>wwv_flow_imp.id(2480331951688236312)
,p_short_name=>'Multiple Search Configurations'
,p_link=>'f?p=&APP_ID.:102:&SESSION.::&DEBUG.:::'
,p_page_id=>102
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2480358481004280945)
,p_parent_id=>wwv_flow_imp.id(2480334905680242689)
,p_short_name=>'Search Query Prefix'
,p_link=>'f?p=&APP_ID.:201:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>201
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2480362013367286170)
,p_parent_id=>wwv_flow_imp.id(2480334905680242689)
,p_short_name=>'Link Search Result to Form'
,p_link=>'f?p=&APP_ID.:202:&SESSION.::&DEBUG.:::'
,p_page_id=>202
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2480375412831311162)
,p_parent_id=>wwv_flow_imp.id(2480334905680242689)
,p_short_name=>'Custom Result Row Template'
,p_link=>'f?p=&APP_ID.:204:&SESSION.::&DEBUG.:::'
,p_page_id=>204
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2480397052011328399)
,p_parent_id=>wwv_flow_imp.id(2480334905680242689)
,p_short_name=>'Filter Search Configurations'
,p_link=>'f?p=&APP_ID.:206:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>206
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2480403924950333852)
,p_parent_id=>wwv_flow_imp.id(2480334905680242689)
,p_short_name=>'Multiple Search Regions'
,p_link=>'f?p=&APP_ID.:207:&SESSION.::&DEBUG.:::'
,p_page_id=>207
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2480409183861340971)
,p_parent_id=>wwv_flow_imp.id(2480338385855250995)
,p_short_name=>'Cards Region'
,p_link=>'f?p=&APP_ID.:301:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>301
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2480415788719346240)
,p_parent_id=>wwv_flow_imp.id(2480338385855250995)
,p_short_name=>'Map Region'
,p_link=>'f?p=&APP_ID.:302:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>302
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2480422944651351053)
,p_parent_id=>wwv_flow_imp.id(2480338385855250995)
,p_short_name=>'Highlight Results'
,p_link=>'f?p=&APP_ID.:303:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>303
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2481269439346033635)
,p_parent_id=>wwv_flow_imp.id(2480341508612255585)
,p_short_name=>'Standard'
,p_link=>'f?p=&APP_ID.:401:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>401
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2481272591956064938)
,p_parent_id=>wwv_flow_imp.id(2480341508612255585)
,p_short_name=>'Text Index Function'
,p_link=>'f?p=&APP_ID.:402:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>402
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2482046379175567043)
,p_parent_id=>wwv_flow_imp.id(2480331951688236312)
,p_short_name=>'REST Data Source'
,p_link=>'f?p=&APP_ID.:103:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>103
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3292186149750710792)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp.component_end;
end;
/
