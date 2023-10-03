prompt --application/pages/page_00206
begin
--   Manifest
--     PAGE: 00206
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
 p_id=>206
,p_name=>'Filter Search Configurations'
,p_alias=>'FILTER-SEARCH-CONFIGURATIONS'
,p_step_title=>'Filter Search Configurations'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'26'
,p_last_updated_by=>'YASSINE'
,p_last_upd_yyyymmddhh24miss=>'20230807134439'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(83821462661642513)
,p_plug_name=>'Search Results Container'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3292222606380710820)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(844609794053383276)
,p_plug_name=>'Search'
,p_parent_plug_id=>wwv_flow_imp.id(83821462661642513)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI:js-headingLevel-2:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(3292288565517710863)
,p_plug_display_sequence=>30
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_landmark_type=>'search'
,p_landmark_label=>'Products and Stores'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3292832820922572535)
,p_plug_name=>'Search Results'
,p_parent_plug_id=>wwv_flow_imp.id(83821462661642513)
,p_region_template_options=>'t-ResultsRegion--iconMd'
,p_plug_template=>wwv_flow_imp.id(3292285873630710861)
,p_plug_display_sequence=>50
,p_plug_source_type=>'NATIVE_SEARCH_REGION'
,p_ajax_items_to_submit=>'P206_CHECK_GRP'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_landmark_type=>'exclude_landmark'
,p_attribute_02=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'P206_SEARCH'
,p_attribute_06=>'N'
,p_attribute_11=>'Y'
,p_attribute_12=>'0'
,p_attribute_13=>'Enter a query to search for products or stores.'
,p_attribute_14=>'15'
,p_attribute_15=>'Y'
,p_attribute_16=>'No products or stores found.'
);
wwv_flow_imp_page.create_search_region_source(
 p_id=>wwv_flow_imp.id(2480396169617328398)
,p_region_id=>wwv_flow_imp.id(3292832820922572535)
,p_search_config_id=>wwv_flow_imp.id(3292409798303399300)
,p_use_as_initial_result=>false
,p_display_sequence=>10
,p_name=>'Store Search Configuration'
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>':P206_CHECK_GRP like ''%S%'''
,p_condition_expr2=>'PLSQL'
);
wwv_flow_imp_page.create_search_region_source(
 p_id=>wwv_flow_imp.id(2480395636569328397)
,p_region_id=>wwv_flow_imp.id(3292832820922572535)
,p_search_config_id=>wwv_flow_imp.id(3292409417919361574)
,p_use_as_initial_result=>false
,p_display_sequence=>20
,p_name=>'Product Search Configuration'
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>':P206_CHECK_GRP like ''%P%'''
,p_condition_expr2=>'PLSQL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3292832171879572534)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3292301028656710870)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(3292185949438710792)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(3292363060641710911)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4968161922776200511)
,p_plug_name=>'Overview'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(3292288565517710863)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page demonstrates how to refine search results using <em>filters</em> to narrow down the results.</p>',
'<p>In this example, you can check the <strong>Stores checkbox</strong> to show only the results from the <em>Store Search Configuration,</em> or check the <strong>Products checkbox</strong> to show only the results from the <em>Product Search Configu'
||'ration</em>.</p>',
'<p>To test this functionality, start typing your search term (or "<strong>Sea</strong>" for example) and try filtering the results.</p>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(834335944725686608)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3292832171879572534)
,p_button_name=>'PREV'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(3292360794092710909)
,p_button_image_alt=>'Previous'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:204:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(834336287485688579)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3292832171879572534)
,p_button_name=>'NEXT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(3292360794092710909)
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:207:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(823661939582293434)
,p_name=>'P206_CHECK_GRP'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(844609794053383276)
,p_item_default=>'P:S'
,p_prompt=>'Search Within'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:Search Products;P,Search Stores;S'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(3292358722170710908)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2480394151602328396)
,p_name=>'P206_SEARCH'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(844609794053383276)
,p_prompt=>'Search'
,p_placeholder=>'Enter your search term, e.g. ''Sea'''
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(3292358722170710908)
,p_item_icon_css_classes=>'fa-search'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(823662078106293435)
,p_name=>'Check'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P206_CHECK_GRP'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(823662129957293436)
,p_event_id=>wwv_flow_imp.id(823662078106293435)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3292832820922572535)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(840851960587142594)
,p_name=>'Enter key'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P206_SEARCH'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'this.browserEvent.keyCode === 13',
''))
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(840852384567142594)
,p_event_id=>wwv_flow_imp.id(840851960587142594)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CANCEL_EVENT'
);
wwv_flow_imp.component_end;
end;
/
