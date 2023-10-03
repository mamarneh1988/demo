prompt --application/shared_components/navigation/search_config/product_search_configuration_oracle_text
begin
--   Manifest
--     SEARCH CONFIG: Product Search Configuration Oracle Text
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
 p_id=>wwv_flow_imp.id(2481268078274021875)
,p_label=>'Product Search Configuration Oracle Text'
,p_static_id=>'product_search_configuration_oracle_text'
,p_search_type=>'TEXT_MANUAL'
,p_location=>'LOCAL'
,p_query_type=>'SQL'
,p_query_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.product_id, ',
'       p.product_name, ',
'       ''$'' || p.unit_price unit_price,',
'       p.text_index_column,',
'       j.description,',
'       j.gender, ',
'       j.colour,',
'       j.brand',
'  from eba_demo_search_products p,',
'       json_table (',
'           p.product_details, ',
'           ''$'' ',
'           columns ( ',
'               description varchar2(4000) path ''$.description'',',
'               colour      varchar2(4000) path ''$.colour'',',
'               gender      varchar2(4000) path ''$.gender'',',
'               brand       varchar2(4000) path ''$.brand'')) j'))
,p_oratext_index_column_name=>'TEXT_INDEX_COLUMN'
,p_pk_column_name=>'PRODUCT_ID'
,p_title_column_name=>'PRODUCT_NAME'
,p_subtitle_column_name=>'BRAND'
,p_description_column_name=>'DESCRIPTION'
,p_badge_column_name=>'UNIT_PRICE'
,p_icon_source_type=>'STATIC_CLASS'
,p_icon_css_classes=>'fa-package u-color-1-text'
);
wwv_flow_imp.component_end;
end;
/
