prompt --application/shared_components/navigation/lists/use_cases
begin
--   Manifest
--     LIST: Use Cases
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
 p_id=>wwv_flow_imp.id(3298575633776519520)
,p_name=>'Use Cases'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3298575808395519521)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Search Query Prefix'
,p_list_item_link_target=>'f?p=&APP_ID.:201:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-tag'
,p_list_text_01=>'Demonstrates how to use Search Query Prefix to perform targeted searches when using multiple search configurations.'
,p_translate_list_text_y_n=>'Y'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3298576172590519521)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Link Search Result To Form'
,p_list_item_link_target=>'f?p=&APP_ID.:202:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-external-link'
,p_list_text_01=>'Demonstrates how to link form to search result row.'
,p_translate_list_text_y_n=>'Y'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3298576653124519521)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Custom Search Result Template'
,p_list_item_link_target=>'f?p=&APP_ID.:204:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-design'
,p_list_text_01=>'Demonstrates how to customize the default search results display template. '
,p_translate_list_text_y_n=>'Y'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2488316268093336763)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Filter Search Configurations'
,p_list_item_link_target=>'f?p=&APP_ID.:206:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-filter'
,p_list_text_01=>'Demonstrates how to add filters to search page to refine search results.'
,p_translate_list_text_y_n=>'Y'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3298577391853519522)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Multiple Search Regions'
,p_list_item_link_target=>'f?p=&APP_ID.:207:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-layout-2col'
,p_list_text_01=>'Demonstrates how to add multiple Search regions to a single page.'
,p_translate_list_text_y_n=>'Y'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
