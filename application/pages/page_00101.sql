prompt --application/pages/page_00101
begin
--   Manifest
--     PAGE: 00101
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
 p_id=>101
,p_name=>'Single Search Configuration'
,p_alias=>'SINGLE-SEARCH-CONFIGURATION'
,p_step_title=>'Single Search Configuration'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'26'
,p_last_updated_by=>'YASSINE'
,p_last_upd_yyyymmddhh24miss=>'20230807134233'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11503542229282597)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI:js-headingLevel-2:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(3292288565517710863)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_landmark_type=>'search'
,p_landmark_label=>'Products'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2484270089763863769)
,p_plug_name=>'Overview'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(3292288565517710863)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page demonstrates how to configure and use the <em>Application Search</em> functionality in your application using the <strong>Search Configuration</strong> component.</p>',
'<p>In this example, the Search Configuration is based on a <em>local data source</em> (<strong>EBA_DEMO_SEARCH_PRODUCTS</strong> table) with the following searchable columns: <strong>Product name</strong>, <strong>description</strong>, <strong>brand<'
||'/strong>, <strong>colour</strong>, and <strong>gender</strong>.</p>',
'<p>To search, start typing your query (e.g., "<strong>red</strong>"), the result will update as you type and you will receive a list of all products that contain the word "<strong>red</strong>" within the searchable columns.</p>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2488568533269889719)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3292301028656710870)
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(3292185949438710792)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(3292363060641710911)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4109961737616830371)
,p_plug_name=>'Search Results'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3292285873630710861)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_source_type=>'NATIVE_SEARCH_REGION'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_landmark_type=>'exclude_landmark'
,p_attribute_02=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'P101_SEARCH'
,p_attribute_06=>'N'
,p_attribute_11=>'Y'
,p_attribute_12=>'0'
,p_attribute_13=>'Enter a query to search for products.'
,p_attribute_14=>'15'
,p_attribute_15=>'Y'
,p_attribute_16=>'No products found.'
);
wwv_flow_imp_page.create_search_region_source(
 p_id=>wwv_flow_imp.id(2480344000831264141)
,p_region_id=>wwv_flow_imp.id(4109961737616830371)
,p_search_config_id=>wwv_flow_imp.id(3292401846029936166)
,p_use_as_initial_result=>false
,p_display_sequence=>10
,p_name=>'Product Search Configuration'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(834331773354660024)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2488568533269889719)
,p_button_name=>'PREV'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(3292360794092710909)
,p_button_image_alt=>'Previous'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:100:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(834332028964661881)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2488568533269889719)
,p_button_name=>'NEXT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(3292360794092710909)
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:102:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2480343294179264139)
,p_name=>'P101_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11503542229282597)
,p_prompt=>'Search'
,p_placeholder=>'Enter your search term, e.g. ''red'''
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(3292358722170710908)
,p_item_icon_css_classes=>'fa-search'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'SEARCH'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(840846661159130949)
,p_name=>'Enter key'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P101_SEARCH'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'this.browserEvent.keyCode === 13',
''))
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(840847016866130958)
,p_event_id=>wwv_flow_imp.id(840846661159130949)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CANCEL_EVENT'
);
wwv_flow_imp.component_end;
end;
/
