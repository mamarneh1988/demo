prompt --application/pages/page_00302
begin
--   Manifest
--     PAGE: 00302
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
 p_id=>302
,p_name=>'Map Region'
,p_alias=>'MAP-REGION'
,p_step_title=>'Map Region'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.u-Processing {',
'   display:none !important;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'23'
,p_last_updated_by=>'YASSINE'
,p_last_upd_yyyymmddhh24miss=>'20230807134518'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11503673684282598)
,p_plug_name=>'Search region'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3292222606380710820)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(844610734560386887)
,p_plug_name=>'Search'
,p_parent_plug_id=>wwv_flow_imp.id(11503673684282598)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI:js-headingLevel-2:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(3292288565517710863)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_landmark_type=>'search'
,p_landmark_label=>'Stores'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4110064612108134527)
,p_plug_name=>'Store Details'
,p_parent_plug_id=>wwv_flow_imp.id(11503673684282598)
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--styleA'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3292229738676710823)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select store_id,',
'       store_name,',
'       physical_address',
'  from eba_demo_search_stores',
'where store_id = :P302_STORE_ID'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_ajax_items_to_submit=>'P302_STORE_ID'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_no_data_found=>'Select Store To View Details.'
,p_no_data_found_icon_classes=>'fa-info-circle-o'
,p_show_total_row_count=>false
,p_plug_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_plug_read_only_when=>'P302_STORE_ID'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(2480414902301346239)
,p_region_id=>wwv_flow_imp.id(4110064612108134527)
,p_layout_type=>'ROW'
,p_title_adv_formatting=>false
,p_title_column_name=>'STORE_NAME'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'PHYSICAL_ADDRESS'
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'INITIALS'
,p_icon_class_column_name=>'STORE_NAME'
,p_icon_position=>'START'
,p_media_adv_formatting=>false
,p_pk1_column_name=>'STORE_ID'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4115074463974075144)
,p_plug_name=>'Search Results Map'
,p_region_name=>'search-results-map'
,p_parent_plug_id=>wwv_flow_imp.id(11503673684282598)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3292285873630710861)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_MAP_REGION'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_map_region(
 p_id=>wwv_flow_imp.id(2480413517494346237)
,p_region_id=>wwv_flow_imp.id(4115074463974075144)
,p_height=>360
,p_navigation_bar_type=>'FULL'
,p_navigation_bar_position=>'END'
,p_init_position_zoom_type=>'QUERY_RESULTS'
,p_layer_messages_position=>'BELOW'
,p_legend_position=>'END'
,p_features=>'MOUSEWHEEL_ZOOM:RECTANGLE_ZOOM:SCALE_BAR:INFINITE_MAP'
);
wwv_flow_imp_page.create_map_region_layer(
 p_id=>wwv_flow_imp.id(2480414009873346238)
,p_map_region_id=>wwv_flow_imp.id(2480413517494346237)
,p_name=>'Map'
,p_layer_type=>'POINT'
,p_display_sequence=>10
,p_location=>'LOCAL'
,p_query_type=>'SQL'
,p_layer_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select config_label,',
'       primary_key_1,',
'       title,',
'       subtitle,',
'       description,',
'       to_number(custom_01) longitude,',
'       to_number(custom_02) latitude,',
'       icon_type,',
'       icon_value,',
'       case primary_key_1 ',
'           when :P302_STORE_ID then ''Pin Circle''',
'           else ''Circle''',
'       end marker_shape ,',
'       case primary_key_1 ',
'           when :P302_STORE_ID then ''#ff0000''',
'           else ''#01601a''',
'       end marker_color  ',
'  from table(',
'           apex_search.search(',
'             p_search_static_ids => apex_t_varchar2( ''store_map'' ),',
'             p_search_expression => :P302_SEARCH,',
'             p_apply_order_bys => ''N'') )'))
,p_items_to_submit=>'P302_SEARCH,P302_STORE_ID'
,p_has_spatial_index=>false
,p_pk_column=>'PRIMARY_KEY_1'
,p_geometry_column_data_type=>'LONLAT_COLUMNS'
,p_longitude_column=>'LONGITUDE'
,p_latitude_column=>'LATITUDE'
,p_fill_color=>'&MARKER_COLOR.'
,p_point_display_type=>'SVG'
,p_point_svg_shape=>'&MARKER_SHAPE.'
,p_feature_clustering=>false
,p_tooltip_adv_formatting=>false
,p_info_window_adv_formatting=>false
,p_allow_hide=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4115073887720075143)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3292301028656710870)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(3292185949438710792)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(3292363060641710911)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4968162793801208403)
,p_plug_name=>'Overview'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(3292288565517710863)
,p_plug_display_sequence=>80
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page demonstrates how to integrate the <strong>Map region</strong> with Search Configuration to display search results. To achieve this, you need to use the public <code>Search</code> function to programmatically perform a search using search'
||' configurations and display the results on the Map region.</p>',
'<p>Start typing a search query (such as "<strong>madrid</strong>") and the <em>Store Search Configuration</em> will be triggered to display relevant results on the map.</p>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(834338360915703675)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4115073887720075143)
,p_button_name=>'PREV'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(3292360794092710909)
,p_button_image_alt=>'Previous'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:301:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(834338842708705876)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(4115073887720075143)
,p_button_name=>'NEXT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(3292360794092710909)
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:303:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2480412420698346236)
,p_name=>'P302_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(844610734560386887)
,p_prompt=>'Search'
,p_placeholder=>'Enter your search term, e.g. ''madrid'''
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(3292358722170710908)
,p_item_icon_css_classes=>'fa-search'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'SEARCH'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2480412846137346236)
,p_name=>'P302_STORE_ID'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2480416065227346240)
,p_name=>'Type'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P302_SEARCH'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2480416568921346241)
,p_event_id=>wwv_flow_imp.id(2480416065227346240)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4115074463974075144)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P302_SEARCH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2480416945395346241)
,p_name=>'Select Store'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(4115074463974075144)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_MAP_REGION|REGION TYPE|spatialmapobjectclick'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2480417408456346241)
,p_event_id=>wwv_flow_imp.id(2480416945395346241)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P302_STORE_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.data?.id'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2480417908407346242)
,p_event_id=>wwv_flow_imp.id(2480416945395346241)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4115074463974075144)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2480418461159346242)
,p_event_id=>wwv_flow_imp.id(2480416945395346241)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4110064612108134527)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2482099387067077959)
,p_event_id=>wwv_flow_imp.id(2480416945395346241)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const { lng, lat } = this.data;',
'',
'apex.region("search-results-map").call( "getMapObject" ).flyTo({ ',
'    center: [ lng, lat ],',
'    screenSpeed: 0.8,',
'    zoom:3',
'});',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(830367013851170171)
,p_name=>'Enter key'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P302_SEARCH'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'this.browserEvent.keyCode === 13',
''))
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(830367438691170173)
,p_event_id=>wwv_flow_imp.id(830367013851170171)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CANCEL_EVENT'
);
wwv_flow_imp.component_end;
end;
/
