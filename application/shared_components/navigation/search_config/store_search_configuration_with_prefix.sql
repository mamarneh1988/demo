prompt --application/shared_components/navigation/search_config/store_search_configuration_with_prefix
begin
--   Manifest
--     SEARCH CONFIG: Store Search Configuration With Prefix
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
 p_id=>wwv_flow_imp.id(3292442809922199225)
,p_label=>'Store Search Configuration With Prefix'
,p_static_id=>'store_prefix'
,p_search_prefix=>'store'
,p_search_type=>'SIMPLE'
,p_location=>'LOCAL'
,p_query_type=>'SQL'
,p_query_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select store_id,',
'       store_name,',
'       web_address,',
'       physical_address,',
'       longitude,',
'       latitude',
'  from eba_demo_search_stores'))
,p_searchable_columns=>'STORE_NAME:PHYSICAL_ADDRESS'
,p_return_max_results=>5
,p_pk_column_name=>'STORE_ID'
,p_title_column_name=>'STORE_NAME'
,p_subtitle_column_name=>'WEB_ADDRESS'
,p_description_column_name=>'PHYSICAL_ADDRESS'
,p_icon_source_type=>'STATIC_CLASS'
,p_icon_css_classes=>'fa-shopping-bag u-color-4-text'
);
wwv_flow_imp.component_end;
end;
/
