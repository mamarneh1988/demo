prompt --application/pages/page_00106
begin
--   Manifest
--     PAGE: 00106
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
 p_id=>106
,p_name=>'Store Details'
,p_alias=>'STORE-DETAILS'
,p_page_mode=>'MODAL'
,p_step_title=>'Store Details'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'23'
,p_last_updated_by=>'YASSINE'
,p_last_upd_yyyymmddhh24miss=>'20230616140256'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2483726336026972973)
,p_plug_name=>'Details'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--styleB'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3292229738676710823)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select store_id,',
'       store_name,',
'       web_address,',
'       physical_address',
'  from eba_demo_search_stores ',
'where store_id=:P106_STORE_ID;'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_ajax_items_to_submit=>'P106_STORE_ID'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(2483726395205972974)
,p_region_id=>wwv_flow_imp.id(2483726336026972973)
,p_layout_type=>'ROW'
,p_title_adv_formatting=>false
,p_title_column_name=>'STORE_NAME'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>true
,p_body_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{if PHYSICAL_ADDRESS/}<p><span class="fa fa-map-marker-o"></span> &PHYSICAL_ADDRESS.</p>{endif/}',
'{if WEB_ADDRESS/}<p><span class="fa fa-globe"></span> &WEB_ADDRESS.</p>{endif/}',
''))
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'INITIALS'
,p_icon_class_column_name=>'STORE_NAME'
,p_icon_position=>'START'
,p_media_adv_formatting=>false
,p_pk1_column_name=>'STORE_ID'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2483727372123972983)
,p_plug_name=>'Store Details'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3292222606380710820)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select store_id,',
'       store_name,',
'       web_address,',
'       physical_address,',
'       latitude,',
'       longitude',
'  from eba_demo_search_stores ',
'where store_id = :P106_STORE_ID;'))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2484268643583863754)
,p_plug_name=>'Location'
,p_region_name=>'store-map-region'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3292288565517710863)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select store_id,',
'       store_name,',
'       web_address,',
'       physical_address,',
'       latitude,',
'       longitude',
'  from eba_demo_search_stores',
'where store_id = :P106_STORE_ID',
''))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_MAP_REGION'
,p_ajax_items_to_submit=>'P106_STORE_ID'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P106_LONGITUDE'
);
wwv_flow_imp_page.create_map_region(
 p_id=>wwv_flow_imp.id(2484268755146863755)
,p_region_id=>wwv_flow_imp.id(2484268643583863754)
,p_height=>240
,p_navigation_bar_type=>'FULL'
,p_navigation_bar_position=>'END'
,p_init_position_zoom_type=>'SQL'
,p_init_position_zoom_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select longitude,',
'       latitude, ',
'       11 zoom ',
'  from eba_demo_search_stores ',
'where store_id = :P106_STORE_ID'))
,p_init_position_geometry_type=>'LONLAT_COLUMNS'
,p_init_position_lon_column=>'LONGITUDE'
,p_init_position_lat_column=>'LATITUDE'
,p_init_zoomlevel_column=>'ZOOM'
,p_layer_messages_position=>'BELOW'
,p_legend_position=>'END'
);
wwv_flow_imp_page.create_map_region_layer(
 p_id=>wwv_flow_imp.id(2484268791502863756)
,p_map_region_id=>wwv_flow_imp.id(2484268755146863755)
,p_name=>'Map'
,p_layer_type=>'POINT'
,p_display_sequence=>10
,p_location=>'REGION_SOURCE'
,p_has_spatial_index=>false
,p_pk_column=>'STORE_ID'
,p_geometry_column_data_type=>'LONLAT_COLUMNS'
,p_longitude_column=>'LONGITUDE'
,p_latitude_column=>'LATITUDE'
,p_fill_color=>'#008000'
,p_point_display_type=>'SVG'
,p_point_svg_shape=>'Default'
,p_feature_clustering=>false
,p_tooltip_adv_formatting=>false
,p_info_window_adv_formatting=>false
,p_allow_hide=>true
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2483727536934972985)
,p_name=>'P106_STORE_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2483727372123972983)
,p_item_source_plug_id=>wwv_flow_imp.id(2483727372123972983)
,p_source=>'STORE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2483727680467972986)
,p_name=>'P106_STORE_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2483727372123972983)
,p_item_source_plug_id=>wwv_flow_imp.id(2483727372123972983)
,p_source=>'STORE_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'I'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2483727728874972987)
,p_name=>'P106_WEB_ADDRESS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2483727372123972983)
,p_item_source_plug_id=>wwv_flow_imp.id(2483727372123972983)
,p_source=>'WEB_ADDRESS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'I'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2483727833429972988)
,p_name=>'P106_PHYSICAL_ADDRESS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2483727372123972983)
,p_item_source_plug_id=>wwv_flow_imp.id(2483727372123972983)
,p_source=>'PHYSICAL_ADDRESS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'I'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2483727894640972989)
,p_name=>'P106_LATITUDE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2483727372123972983)
,p_item_source_plug_id=>wwv_flow_imp.id(2483727372123972983)
,p_source=>'LATITUDE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'I'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2483728071106972990)
,p_name=>'P106_LONGITUDE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(2483727372123972983)
,p_item_source_plug_id=>wwv_flow_imp.id(2483727372123972983)
,p_source=>'LONGITUDE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'I'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2483727411660972984)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(2483727372123972983)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Store Details'
);
wwv_flow_imp.component_end;
end;
/
