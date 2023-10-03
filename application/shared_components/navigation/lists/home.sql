prompt --application/shared_components/navigation/lists/home
begin
--   Manifest
--     LIST: Home
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
 p_id=>wwv_flow_imp.id(3298566791098201450)
,p_name=>'Home'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3298566970557201451)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Basics'
,p_list_item_link_target=>'f?p=&APP_ID.:100:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-layers'
,p_list_text_01=>'Create Search Configurations based on Local data source, REST Enabled SQL Service, REST Data Source ... And integrate it with Search regions.'
,p_translate_list_text_y_n=>'Y'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3298567352521201452)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Use Cases'
,p_list_item_link_target=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-puzzle-piece'
,p_list_text_01=>'Explore different use case of the Search Configuration: prefix searching, link search result to from ...'
,p_translate_list_text_y_n=>'Y'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3298567671465201452)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Advanced'
,p_list_item_link_target=>'f?p=&APP_ID.:300:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-rocket'
,p_list_text_01=>'Explore advanced Application Search variations: Highlight search results, Integrate your Search Configurations with APEX regions like Maps, Cards ...'
,p_translate_list_text_y_n=>'Y'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2480441152047623020)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Oracle Text'
,p_list_item_link_target=>'f?p=&APP_ID.:400:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-server-search'
,p_list_text_01=>'Leverage to Oracle Text advanced searching capabilities: Keyword searching, Fuzzy search and much more.'
,p_translate_list_text_y_n=>'Y'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
