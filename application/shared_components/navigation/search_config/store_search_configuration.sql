prompt --application/shared_components/navigation/search_config/store_search_configuration
begin
--   Manifest
--     SEARCH CONFIG: Store Search Configuration
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.0'
,p_default_workspace_id=>20
,p_default_application_id=>7190
,p_default_id_offset=>852320622354339934
,p_default_owner=>'ORACLE'
);
wwv_flow_imp_shared.create_search_config(
 p_id=>wwv_flow_imp.id(3292409798303399300)
,p_label=>'Store Search Configuration'
,p_static_id=>'store'
,p_search_type=>'SIMPLE'
,p_location=>'LOCAL'
,p_query_type=>'SQL'
,p_query_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select store_id,',
'       store_name,',
'       web_address,',
'       physical_address',
'  from eba_demo_search_stores'))
,p_searchable_columns=>'STORE_NAME:PHYSICAL_ADDRESS'
,p_return_max_results=>5
,p_pk_column_name=>'STORE_ID'
,p_title_column_name=>'STORE_NAME'
,p_subtitle_column_name=>'WEB_ADDRESS'
,p_description_column_name=>'PHYSICAL_ADDRESS'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:106:&APP_SESSION.::&DEBUG.:RR:P106_STORE_ID:&STORE_ID.'
,p_icon_source_type=>'STATIC_CLASS'
,p_icon_css_classes=>'fa-shopping-bag u-color-4-text'
);
wwv_flow_imp.component_end;
end;
/
