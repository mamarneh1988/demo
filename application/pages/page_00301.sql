prompt --application/pages/page_00301
begin
--   Manifest
--     PAGE: 00301
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
 p_id=>301
,p_name=>'Cards Region'
,p_alias=>'CARDS-REGION'
,p_step_title=>'Cards Region'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Setting card icon background to transparent ',
'   so that the icon color from the Search Configuration ',
'   renders correctly */',
':root {',
'    --a-cv-icon-background-color: transparent;',
'}',
'',
'/* Change card icon size */',
'.a-CardView-icon{',
'    font-size: xx-large !important;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'23'
,p_last_updated_by=>'YASSINE'
,p_last_upd_yyyymmddhh24miss=>'20230807134507'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(844610444112385501)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI:js-headingLevel-2:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(3292288565517710863)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_landmark_type=>'search'
,p_landmark_label=>'Products, Stores and Customers'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4928312659395098426)
,p_plug_name=>'Search Results'
,p_region_template_options=>'t-CardsRegion--styleA'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3292229738676710823)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select config_label,',
'       primary_key_1,',
'       title,',
'       subtitle,',
'       description,',
'       icon_type,',
'       ''fa '' || icon_value as icon_value,',
'       case config_label ',
'           when ''Store Search Configuration''    then ''Store''',
'           when ''Product Search Configuration''  then ''Product''',
'           when ''Customer Search Configuration'' then ''Customer''',
'       end tag',
'  from table(',
'           apex_search.search(',
'               p_search_static_ids => apex_t_varchar2( ''store'', ''product'', ''customer'' ),',
'               p_search_expression => :P301_SEARCH,',
'               p_apply_order_bys   => ''N'') )'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_ajax_items_to_submit=>'P301_SEARCH'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_no_data_found=>'No customers, products or stores found.'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(2480407556014340969)
,p_region_id=>wwv_flow_imp.id(4928312659395098426)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'TITLE'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'SUBTITLE'
,p_body_adv_formatting=>false
,p_body_column_name=>'DESCRIPTION'
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'DYNAMIC_CLASS'
,p_icon_class_column_name=>'ICON_VALUE'
,p_icon_position=>'START'
,p_badge_column_name=>'TAG'
,p_media_adv_formatting=>false
,p_pk1_column_name=>'PRIMARY_KEY_1'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(2477840924785316180)
,p_card_id=>wwv_flow_imp.id(2480407556014340969)
,p_action_type=>'BUTTON'
,p_position=>'PRIMARY'
,p_display_sequence=>10
,p_label=>'Edit'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:304:&SESSION.::&DEBUG.:304:P304_CONFIG,P304_STORE_ID,P304_CUSTOMER_ID,P304_PRODUCT_ID:&CONFIG_LABEL.,&PRIMARY_KEY_1.,&PRIMARY_KEY_1.,&PRIMARY_KEY_1.'
,p_button_display_type=>'TEXT_WITH_ICON'
,p_icon_css_classes=>'fa-edit'
,p_is_hot=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4928616571499144807)
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
 p_id=>wwv_flow_imp.id(4968162508103207086)
,p_plug_name=>'Overview'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(3292288565517710863)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page shows you how to use the <em>Cards region</em> to display search results.</p>',
'<p>You can use the <code>search</code> function to connect the Cards region to the Search Configuration to programmatically retrieve search results.</p>',
'<p>This example uses the following <code>search</code> function:</p>',
'<pre style="max-width: 100%; overflow: auto">apex_search.search (',
'      p_search_static_ids      in apex_t_varchar2,',
'      p_search_expression      in varchar2,',
'      p_apply_order_bys        in varchar2           default ''Y'',',
'      --',
'      p_return_total_row_count in varchar2           default ''N'' )',
'      return apex_search_result_table pipelined;',
'</pre>',
'<p>The <code>search</code> function requires the specification of search configurations to be used for the search, along with the search query. It returns relevant search results which can then be rendered on components such as the Cards region.</p>',
'<p>To test the functionality, type a search query (such as "<strong>red</strong>") and all relevant results from the <em>Customer search configuration</em>, <em>Store search configuration</em>, and <em>Product search configuration</em> will be displa'
||'yed in the Cards region.</p>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(834337772758700170)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4928616571499144807)
,p_button_name=>'PREV'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(3292360794092710909)
,p_button_image_alt=>'Previous'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:300:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(834338077731701913)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(4928616571499144807)
,p_button_name=>'NEXT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(3292360794092710909)
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:302:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2480408327536340971)
,p_name=>'P301_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(844610444112385501)
,p_prompt=>'Search'
,p_placeholder=>'Enter your search term, e.g. ''red'''
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2480409365263340972)
,p_name=>'search'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P301_SEARCH'
,p_bind_type=>'bind'
,p_execution_type=>'THROTTLE'
,p_execution_time=>500
,p_execution_immediate=>false
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2480409803795340972)
,p_event_id=>wwv_flow_imp.id(2480409365263340972)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4928312659395098426)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2477841028892316181)
,p_name=>'Dialog Closed'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(4928312659395098426)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2477841088799316182)
,p_event_id=>wwv_flow_imp.id(2477841028892316181)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4928312659395098426)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(823661671988293431)
,p_name=>'Enter key'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P301_SEARCH'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'this.browserEvent.keyCode === 13',
''))
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(823661725698293432)
,p_event_id=>wwv_flow_imp.id(823661671988293431)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CANCEL_EVENT'
);
wwv_flow_imp.component_end;
end;
/
