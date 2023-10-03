prompt --application/shared_components/navigation/lists/oracle_text
begin
--   Manifest
--     LIST: Oracle Text
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
 p_id=>wwv_flow_imp.id(2488316896525350755)
,p_name=>'Oracle Text'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2488317179016350756)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Standard'
,p_list_item_link_target=>'f?p=&APP_ID.:401:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-server-search'
,p_list_text_01=>'Demonstrates how to create Search Configurations based on Oracle Text.'
,p_translate_list_text_y_n=>'Y'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2488317549266350756)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Text Index Function'
,p_list_item_link_target=>'f?p=&APP_ID.:402:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-function'
,p_list_text_01=>'Demonstrates how to Text Index Function to translate user queries to complex Oracle text syntax.'
,p_translate_list_text_y_n=>'Y'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
