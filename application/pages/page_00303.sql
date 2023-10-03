prompt --application/pages/page_00303
begin
--   Manifest
--     PAGE: 00303
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
 p_id=>303
,p_name=>'Highlight Results'
,p_alias=>'HIGHLIGHT-RESULTS'
,p_step_title=>'Highlight Results'
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
'}',
'',
'/* Highlighting search term style */',
'',
'mark{',
'    border: 1px solid black;',
'    padding: 1px 0;',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'23'
,p_last_updated_by=>'YASSINE'
,p_last_upd_yyyymmddhh24miss=>'20230807134531'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(844611013365388665)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI:js-headingLevel-2:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(3292288565517710863)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_landmark_type=>'search'
,p_landmark_label=>'Products and Stores'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4110086182842219943)
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
'with escaped_output as (',
'        select config_label,',
'               primary_key_1,',
'               apex_escape.html(title)       as title,',
'               apex_escape.html(subtitle)    as subtitle,',
'               apex_escape.html(description) as description,',
'               badge,',
'               icon_type,',
'               ''fa '' || icon_value           as icon_value',
'          from table(',
'                   apex_search.search(',
'                       p_search_static_ids => apex_t_varchar2( ''store'', ''product'' ),',
'                       p_search_expression => :P303_SEARCH,',
'                       p_apply_order_bys   => ''N'' ) ) )',
'select config_label,',
'       primary_key_1,',
'       replace( lower(title),       lower(apex_escape.html(:P303_SEARCH)), ''<mark>'' || lower(apex_escape.html(:P303_SEARCH)) || ''</mark>'' ) as title,',
'       replace( lower(subtitle),    lower(apex_escape.html(:P303_SEARCH)), ''<mark>'' || lower(apex_escape.html(:P303_SEARCH)) || ''</mark>'' ) as subtitle,',
'       replace( lower(description), lower(apex_escape.html(:P303_SEARCH)), ''<mark>'' || lower(apex_escape.html(:P303_SEARCH)) || ''</mark>'' ) as description,',
'       badge,',
'       icon_type,',
'       icon_value',
'  from escaped_output'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_ajax_items_to_submit=>'P303_SEARCH'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_no_data_found=>'No customers, products or stores found.'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(2480421300292351051)
,p_region_id=>wwv_flow_imp.id(4110086182842219943)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>true
,p_title_html_expr=>'<div class="a-CardView-title">&TITLE!RAW.</div>'
,p_sub_title_adv_formatting=>true
,p_sub_title_html_expr=>'&SUBTITLE!RAW.'
,p_body_adv_formatting=>true
,p_body_html_expr=>'&DESCRIPTION!RAW.'
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'DYNAMIC_CLASS'
,p_icon_class_column_name=>'ICON_VALUE'
,p_icon_position=>'START'
,p_badge_column_name=>'BADGE'
,p_media_adv_formatting=>false
,p_pk1_column_name=>'PRIMARY_KEY_1'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4110390094946266324)
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
 p_id=>wwv_flow_imp.id(4968163063255210296)
,p_plug_name=>'Overview'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(3292288565517710863)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page demonstrates how to highlight search terms in search results using Application Search. To achieve this, you need to use the public <code>Search</code> function to perform a search with the desired search configuration(<em>Store search co'
||'nfiguration</em> and <em>Product search configuration</em>) and add the highlighting. The search results will be displayed with the search terms highlighted in the matching rows.</p>',
'<p>Simply start typing a search query(or "<strong>Red</strong>" for example), and the configured Search Configuration will be triggered to display relevant results with highlighted search terms.</p>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(834339105632708013)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4110390094946266324)
,p_button_name=>'PREV'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(3292360794092710909)
,p_button_image_alt=>'Previous'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:302:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(834339465284710075)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(4110390094946266324)
,p_button_name=>'NEXT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(3292360794092710909)
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:400:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2480422147272351052)
,p_name=>'P303_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(844611013365388665)
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
 p_id=>wwv_flow_imp.id(2480423097814351053)
,p_name=>'Search'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P303_SEARCH'
,p_bind_type=>'bind'
,p_execution_type=>'THROTTLE'
,p_execution_time=>500
,p_execution_immediate=>false
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2480423611467351053)
,p_event_id=>wwv_flow_imp.id(2480423097814351053)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4110086182842219943)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(830367845752172804)
,p_name=>'Enter key'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P303_SEARCH'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'this.browserEvent.keyCode === 13',
''))
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(830368286821172805)
,p_event_id=>wwv_flow_imp.id(830367845752172804)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CANCEL_EVENT'
);
wwv_flow_imp.component_end;
end;
/
