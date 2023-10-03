prompt --application/shared_components/navigation/search_config/product_search_configuration_with_image
begin
--   Manifest
--     SEARCH CONFIG: Product Search Configuration With Image
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
 p_id=>wwv_flow_imp.id(3292401846029936166)
,p_label=>'Product Search Configuration With Image'
,p_static_id=>'product_image'
,p_search_type=>'SIMPLE'
,p_location=>'LOCAL'
,p_query_type=>'SQL'
,p_query_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.product_id, ',
'       p.product_name, ',
'       ''$'' || p.unit_price unit_price,',
'       p.product_image,',
'       p.image_mime_type,',
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
,p_searchable_columns=>'PRODUCT_NAME:DESCRIPTION:GENDER:COLOUR:BRAND'
,p_pk_column_name=>'PRODUCT_ID'
,p_title_column_name=>'PRODUCT_NAME'
,p_subtitle_column_name=>'BRAND'
,p_description_column_name=>'DESCRIPTION'
,p_badge_column_name=>'UNIT_PRICE'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:205:&APP_SESSION.::&DEBUG.:205:P205_PRODUCT_ID:&PRODUCT_ID.'
,p_icon_source_type=>'BLOB'
,p_icon_class_column_name=>'PRODUCT_IMAGE'
,p_icon_blob_column_name=>'PRODUCT_IMAGE'
,p_icon_mimetype_column_name=>'IMAGE_MIME_TYPE'
);
wwv_flow_imp.component_end;
end;
/
