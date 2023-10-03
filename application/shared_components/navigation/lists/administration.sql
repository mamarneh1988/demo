prompt --application/shared_components/navigation/lists/administration
begin
--   Manifest
--     LIST: Administration
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
 p_id=>wwv_flow_imp.id(835455883724739219)
,p_name=>'Administration'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(835456020794739220)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Manage Sample Data'
,p_list_item_link_target=>'f?p=&APP_ID.:501:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-database'
,p_list_text_01=>'This application ships with sample data. You can reset the sample data using this administrative page.'
,p_translate_list_text_y_n=>'Y'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(835456447911739221)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Theme Style'
,p_list_item_link_target=>'f?p=&APP_ID.:502:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-design'
,p_list_text_01=>'Set application user interface theme style for all users.'
,p_translate_list_text_y_n=>'Y'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(835456821068739221)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Manage Web Credentials'
,p_list_item_link_target=>'f?p=&APP_ID.:503:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-key'
,p_list_text_01=>'The REST Data Source page in the Basics section rely on REST Data Sources. Use this page to provide your own TMDb API key.'
,p_translate_list_text_y_n=>'Y'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
