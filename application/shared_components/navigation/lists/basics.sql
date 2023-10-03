prompt --application/shared_components/navigation/lists/basics
begin
--   Manifest
--     LIST: Basics
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
 p_id=>wwv_flow_imp.id(3298574186206510074)
,p_name=>'Basics'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3298574372067510074)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Single Search Configuration'
,p_list_item_link_target=>'f?p=&APP_ID.:101:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-cube'
,p_list_text_01=>'Demonstrates how to create Search Configurations based on Local Data Source.'
,p_translate_list_text_y_n=>'Y'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3298574763348510075)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Multiple Search Configurations'
,p_list_item_link_target=>'f?p=&APP_ID.:102:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-cubes'
,p_list_text_01=>'Demonstrates how to use Search region to create searches on multiples Data Sources.'
,p_translate_list_text_y_n=>'Y'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3298575181242510075)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'REST Data Source'
,p_list_item_link_target=>'f?p=&APP_ID.:103:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-cloud'
,p_list_text_01=>'Demonstrates how to create Search Configurations based on REST Data Source.'
,p_translate_list_text_y_n=>'Y'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
