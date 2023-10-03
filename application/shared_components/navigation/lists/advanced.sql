prompt --application/shared_components/navigation/lists/advanced
begin
--   Manifest
--     LIST: Advanced
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
 p_id=>wwv_flow_imp.id(3298577772396524881)
,p_name=>'Advanced'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3298578026429524881)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Cards Region'
,p_list_item_link_target=>'f?p=&APP_ID.:301:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-cards'
,p_list_text_01=>'Demonstrates how to integrate Search Configurations with native APEX Cards regions.'
,p_translate_list_text_y_n=>'Y'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3298578441037524881)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Map Regions'
,p_list_item_link_target=>'f?p=&APP_ID.:302:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-map-marker-o'
,p_list_text_01=>'Demonstrates how to integrate Search Configurations with Map regions.'
,p_translate_list_text_y_n=>'Y'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3298578806978524882)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Highlight Results'
,p_list_item_link_target=>'f?p=&APP_ID.:303:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-underline'
,p_list_text_01=>'Demonstrates how to perform search on Search configurations and highlight search terms in search results.'
,p_translate_list_text_y_n=>'Y'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
