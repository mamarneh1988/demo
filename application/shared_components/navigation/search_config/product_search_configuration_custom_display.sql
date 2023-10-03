prompt --application/shared_components/navigation/search_config/product_search_configuration_custom_display
begin
--   Manifest
--     SEARCH CONFIG: Product Search Configuration Custom Display
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
 p_id=>wwv_flow_imp.id(3292696368974484275)
,p_label=>'Product Search Configuration Custom Display'
,p_static_id=>'product_custom'
,p_search_type=>'SIMPLE'
,p_location=>'LOCAL'
,p_query_type=>'SQL'
,p_query_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.product_id, ',
'       p.product_name, ',
'       ''$'' || p.unit_price unit_price,',
'       p.product_image,',
'       p.image_mime_type,',
'       substr(j.description,1,100) as description,',
'       j.gender, ',
'       j.colour,',
'       j.brand,',
'       APEX_UTIL.PREPARE_URL(p_url => ''f?p='' || :APP_ID || '':205:''|| :APP_SESSION ||''::NO::P205_PRODUCT_ID:''||p.product_id) product_url',
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
,p_return_max_results=>5
,p_pk_column_name=>'PRODUCT_ID'
,p_title_column_name=>'PRODUCT_NAME'
,p_subtitle_column_name=>'BRAND'
,p_description_column_name=>'DESCRIPTION'
,p_badge_column_name=>'UNIT_PRICE'
,p_icon_source_type=>'BLOB'
,p_icon_blob_column_name=>'PRODUCT_IMAGE'
,p_icon_mimetype_column_name=>'IMAGE_MIME_TYPE'
,p_icon_css_classes=>'fa-package'
,p_default_row_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-ResultsItem &RESULT_CSS_CLASSES!ATTR.">',
'    {if ?ICON_VALUE/}',
'      {case ICON_TYPE/}',
'        {when INITIALS/}',
'          <div class="a-ResultItem-initials u-color-var">&ICON_VALUE.</div>',
'        {when URL/}',
'          <div class="a-ResultItem-image"><img src="&ICON_VALUE!ATTR." alt=""/></div>',
'        {when CLASS/}',
'          <div class="a-ResultItem-icon u-color-var"><span class="fa &ICON_VALUE!ATTR." aria-hidden="true"></span></div>',
'      {endcase/}',
'      {else/}',
'          <div class="a-ResultItem-image"><img src="#APP_FILES#image_not_found.png" alt="" width="150"/></div>',
'    {endif/}',
'    <div class="a-ResultsItem-content">',
'      <div class="a-ResultsItem-details">',
'        <div class="a-ResultsItem-header">',
'            <span class="a-ResultsItem-title"><a href="&PRODUCT_URL!ATTR." >&PRODUCT_NAME.</a></span>',
'        </div>',
'        <div class="a-ResultsItem-subTitle"><span>Store : </span>&BRAND.</div>',
'        <div class="a-ResultsItem-description">&DESCRIPTION. ...</div>',
'      </div>',
'      <div class="a-ResultsItem-price">&UNIT_PRICE.</div>',
'    </div>',
'  </div>'))
);
wwv_flow_imp.component_end;
end;
/
