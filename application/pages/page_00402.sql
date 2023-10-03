prompt --application/pages/page_00402
begin
--   Manifest
--     PAGE: 00402
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
 p_id=>402
,p_name=>'Text Index Function'
,p_alias=>'TEXT-INDEX-FUNCTION'
,p_step_title=>'Text Index Function'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'26'
,p_last_updated_by=>'YASSINE'
,p_last_upd_yyyymmddhh24miss=>'20230808082701'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(844611589167391154)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI:js-headingLevel-2:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(3292288565517710863)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_required_role=>wwv_flow_imp.id(830324093378509760)
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from user_indexes',
'where index_name=''EBA_DEMO_SEARCH_PRODUCTS_CTX'''))
,p_landmark_type=>'search'
,p_landmark_label=>'Products'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2481272221415064937)
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
 p_id=>wwv_flow_imp.id(2481272841601064938)
,p_plug_name=>'Search Results'
,p_region_template_options=>'t-ResultsRegion--iconMd'
,p_plug_template=>wwv_flow_imp.id(3292285873630710861)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_source_type=>'NATIVE_SEARCH_REGION'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_required_role=>wwv_flow_imp.id(830324093378509760)
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from user_indexes',
'where index_name=''EBA_DEMO_SEARCH_PRODUCTS_CTX'''))
,p_landmark_type=>'exclude_landmark'
,p_attribute_02=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'P402_SEARCH'
,p_attribute_06=>'N'
,p_attribute_11=>'Y'
,p_attribute_12=>'0'
,p_attribute_13=>'Enter a query to search for products.'
,p_attribute_14=>'15'
,p_attribute_15=>'Y'
,p_attribute_16=>'No products found.'
);
wwv_flow_imp_page.create_search_region_source(
 p_id=>wwv_flow_imp.id(2481273316802064938)
,p_region_id=>wwv_flow_imp.id(2481272841601064938)
,p_search_config_id=>wwv_flow_imp.id(2481271228236056849)
,p_use_as_initial_result=>false
,p_display_sequence=>10
,p_name=>'Product Search Configuration Oracle Text  Function'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4476758612154505267)
,p_plug_name=>'Oracle Text is not available'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_template=>wwv_flow_imp.id(3292217361411710815)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Oracle Text is not available in your workspace. Contact your database administrator to get the <strong>CTXAPP</strong> role granted using the following SQL statement.</p>',
'<pre>grant CTXAPP to #OWNER#;</pre>',
'<p>Then log out and back into the application and revisit this page. </p>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_required_role=>'!'||wwv_flow_imp.id(830324093378509760)
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4476759580765509068)
,p_plug_name=>'Oracle Text Index does not exist'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--info'
,p_plug_template=>wwv_flow_imp.id(3292217361411710815)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>'<p>Oracle Text is available in your workspace, but the Full Text index does not exist yet.</p>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_required_role=>wwv_flow_imp.id(830324093378509760)
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from user_indexes',
'where index_name=''EBA_DEMO_SEARCH_PRODUCTS_CTX'''))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4968163634980215121)
,p_plug_name=>'Overview'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(3292288565517710863)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page demonstrates how to use the <em>Text Index Function</em>, which takes the end user input and returns the Oracle Text query as a result.</p>',
'<p>To configure Oracle Text in <em>Page Designer</em>, navigate to the <em>Shared Components</em> section, select the Search Configuration referenced by the Search region, and click on "<em>Edit Component</em>" to access the configuration settings. I'
||'n the "<em>Text Index Function</em>" attribute, select the function that will convert the end user''s query to Oracle Text query syntax.</p>',
'<p>To perform a search, simply type your query (or use one of the examples below). Your query is automatically translated to Oracle Text query syntax by the <em>EBA_DEMO_SEARCH_TEXT_PKG.CONVERT_TEXT_QUERY</em> function. This function executes <em>exa'
||'ct</em> queries first and adds <em>fuzzy</em> or <em>wildcard</em> features later on when the exact query does not return enough rows.</p>',
'<p>Query Examples:</p>',
'<ul>',
'<li><em>trousers</em></li>',
'<li><em>trosers</em></li>',
'<li><em>sweater</em></li>',
'<li><em>sweter</em></li>',
'</ul>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_required_role=>wwv_flow_imp.id(830324093378509760)
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from user_indexes',
'where index_name=''EBA_DEMO_SEARCH_PRODUCTS_CTX'''))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(830347816487658846)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4476759580765509068)
,p_button_name=>'CREATE_TEXT_INDEX'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(3292361476404710910)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Oracle Text index'
,p_button_position=>'NEXT'
,p_security_scheme=>wwv_flow_imp.id(830324093378509760)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(834340910299720188)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2481272221415064937)
,p_button_name=>'PREV'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(3292360794092710909)
,p_button_image_alt=>'Previous'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:401:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(834341221031721949)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(2481272221415064937)
,p_button_name=>'NEXT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(3292360794092710909)
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:402:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'disabled'
,p_icon_css_classes=>'fa-angle-right'
,p_button_cattributes=>'disabled'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2481273836859064939)
,p_name=>'P402_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(844611589167391154)
,p_prompt=>'Search'
,p_placeholder=>'Enter your search term, e.g. ''trosers'''
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
 p_id=>wwv_flow_imp.id(840855040200152349)
,p_name=>'Enter key'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P402_SEARCH'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'this.browserEvent.keyCode === 13',
''))
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(840855418379152349)
,p_event_id=>wwv_flow_imp.id(840855040200152349)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CANCEL_EVENT'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(830348305043661551)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Oracle Text Index'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    eba_demo_search_text_pkg.drop_text_preferences;',
'    eba_demo_search_text_pkg.create_text_preferences;',
'    eba_demo_search_text_pkg.create_text_index;',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_security_scheme=>wwv_flow_imp.id(830324093378509760)
);
wwv_flow_imp.component_end;
end;
/
