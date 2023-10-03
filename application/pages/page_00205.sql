prompt --application/pages/page_00205
begin
--   Manifest
--     PAGE: 00205
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.0'
,p_default_workspace_id=>20
,p_default_application_id=>7190
,p_default_id_offset=>852320622354339934
,p_default_owner=>'ORACLE'
);
wwv_flow_imp_page.create_page(
 p_id=>205
,p_name=>'Product Details'
,p_alias=>'PRODUCT-DETAILS'
,p_page_mode=>'MODAL'
,p_step_title=>'Product Details'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.rating{',
'    display: flex;',
'    align-items: center;',
'    justify-content: space-between;',
'    font: bold;',
'    color: #fff !important;',
'    background-color: #5B5B59!important;',
'}',
'.star{',
'    /* color: gold!important; */',
'    margin: 0!important;',
'    color: gold !important;',
'}',
''))
,p_step_template=>wwv_flow_imp.id(3292207286980710809)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'YASSINE'
,p_last_upd_yyyymmddhh24miss=>'20230711122449'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3292783656498073553)
,p_plug_name=>'Product Details'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3292222606380710820)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select product_id,',
'       product_name,',
'       unit_price,',
'       json_value(product_details, ''$.description'') as description,',
'       product_image,',
'       image_mime_type,',
'       image_filename,',
'       image_charset,',
'       image_last_updated',
'  from eba_demo_search_products'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_landmark_label=>'Product details'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2482099561587077960)
,p_plug_name=>'Left'
,p_parent_plug_id=>wwv_flow_imp.id(3292783656498073553)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3292222606380710820)
,p_plug_display_sequence=>30
,p_plug_grid_column_span=>4
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2482099623558077961)
,p_plug_name=>'Right'
,p_parent_plug_id=>wwv_flow_imp.id(3292783656498073553)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3292222606380710820)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2482099831705077963)
,p_plug_name=>'Reviews'
,p_parent_plug_id=>wwv_flow_imp.id(3292783656498073553)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:margin-top-lg'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(3292288565517710863)
,p_plug_display_sequence=>100
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select r.review, ',
'       r.rating',
'  from eba_demo_search_products p, ',
'       json_table(',
'           p.product_details, ',
'           ''$.reviews[*]'' ',
'            columns (',
'                rating number        path ''$.rating'',',
'                review varchar2(200) path ''$.review'') ) r',
'where product_id = :P205_PRODUCT_ID'))
,p_plug_source_type=>'NATIVE_JQM_LIST_VIEW'
,p_ajax_items_to_submit=>'P205_PRODUCT_ID'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_no_data_found=>'No reviews found!'
,p_attribute_01=>'ADVANCED_FORMATTING'
,p_attribute_05=>wwv_flow_string.join(wwv_flow_t_varchar2(
'&REVIEW.',
'<div class="ui-li-count rating">',
'    <span class="fa fa-star star"></span>',
'    &RATING./10',
'</div>'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2480379542955321718)
,p_name=>'P205_PRODUCT_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3292783656498073553)
,p_item_source_plug_id=>wwv_flow_imp.id(3292783656498073553)
,p_source=>'PRODUCT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2480379967637321719)
,p_name=>'P205_PRODUCT_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2482099623558077961)
,p_item_source_plug_id=>wwv_flow_imp.id(3292783656498073553)
,p_prompt=>'Product Name'
,p_source=>'PRODUCT_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(3292358998715710908)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'I'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2480380346989321719)
,p_name=>'P205_UNIT_PRICE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2482099623558077961)
,p_item_source_plug_id=>wwv_flow_imp.id(3292783656498073553)
,p_prompt=>'Unit Price'
,p_source=>'UNIT_PRICE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(3292358998715710908)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'I'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2480380729114321719)
,p_name=>'P205_DESCRIPTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2482099623558077961)
,p_item_source_plug_id=>wwv_flow_imp.id(3292783656498073553)
,p_prompt=>'Description'
,p_source=>'DESCRIPTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>5
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(3292358998715710908)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'I'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2480381503816321720)
,p_name=>'P205_PRODUCT_IMAGE'
,p_source_data_type=>'BLOB'
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2482099561587077960)
,p_item_source_plug_id=>wwv_flow_imp.id(3292783656498073553)
,p_source=>'PRODUCT_IMAGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_field_template=>wwv_flow_imp.id(3292358998715710908)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_protection_level=>'I'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_03=>'PRODUCT_NAME'
,p_attribute_04=>'IMAGE_FILENAME'
,p_attribute_05=>'IMAGE_LAST_UPDATED'
,p_attribute_07=>'IMAGE_MIME_TYPE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2480381961663321720)
,p_name=>'P205_IMAGE_MIME_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3292783656498073553)
,p_item_source_plug_id=>wwv_flow_imp.id(3292783656498073553)
,p_source=>'IMAGE_MIME_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'I'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2480382356410321721)
,p_name=>'P205_IMAGE_FILENAME'
,p_source_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3292783656498073553)
,p_item_source_plug_id=>wwv_flow_imp.id(3292783656498073553)
,p_source=>'IMAGE_FILENAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'I'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2480382740558321721)
,p_name=>'P205_IMAGE_CHARSET'
,p_source_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3292783656498073553)
,p_item_source_plug_id=>wwv_flow_imp.id(3292783656498073553)
,p_source=>'IMAGE_CHARSET'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'I'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2480383149483321721)
,p_name=>'P205_IMAGE_LAST_UPDATED'
,p_source_data_type=>'DATE'
,p_is_query_only=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3292783656498073553)
,p_item_source_plug_id=>wwv_flow_imp.id(3292783656498073553)
,p_source=>'IMAGE_LAST_UPDATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'I'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2480386962976321724)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3292783656498073553)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Product Details'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2480386533516321724)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(3292783656498073553)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Product Details'
);
wwv_flow_imp.component_end;
end;
/
