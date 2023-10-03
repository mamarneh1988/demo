prompt --application/pages/page_00503
begin
--   Manifest
--     PAGE: 00503
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
 p_id=>503
,p_name=>'Web Credentials Settings'
,p_alias=>'WEB-CREDENTIALS-SETTINGS'
,p_step_title=>'Web Credentials Settings'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_last_updated_by=>'YASSINE'
,p_last_upd_yyyymmddhh24miss=>'20230616141039'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(823663374095293448)
,p_plug_name=>'Credentials Form'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(3292288565517710863)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(836208601859704397)
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
 p_id=>wwv_flow_imp.id(836214173853838801)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(3292288565517710863)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>'<p>Search Configurations can be based on REST Data Sources. The <strong>REST Data Source</strong> page in the <strong>Basics</strong> section rely on REST Data Sources. To run this page without error, please use the links and instructions below. You '
||'will need to get your own API key from <a title="Movie Database API" href="https://www.themoviedb.org/documentation/api" target="_blank">The Movie Database (TMDb) API Key</a> that you will then submit in the form below to successfully configure the n'
||'ecessary <strong>credentials.</strong></p>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(823663071483293445)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(836208601859704397)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(3292361476404710910)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(836209342942712261)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(836208601859704397)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(3292361476404710910)
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:administration:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(836214466654838804)
,p_branch_name=>'Go To Page 103'
,p_branch_action=>'f?p=&APP_ID.:103:&SESSION.::&DEBUG.:103::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(823663071483293445)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(823663491792293449)
,p_name=>'P503_API_KEY'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(823663374095293448)
,p_prompt=>'API Key'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(3292359063821710908)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(836214265907838802)
,p_name=>'P503_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(823663374095293448)
,p_item_default=>'TMDb API Key'
,p_prompt=>'Credentials Name'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(3292358781909710908)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'I'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(836214366877838803)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Web Credentials'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    apex_credential.set_persistent_credentials (',
'    p_credential_static_id => ''tmdb_api_key'',',
'    p_username             => ''api_key'',',
'    p_password             => :P503_API_KEY );',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(823663071483293445)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(836214661657838806)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Mark Web Credentials'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_count number;',
'begin',
'  select count(*) into v_count',
'  from eba_demo_search_web_creds',
'  where credential_static_id = ''tmdb_api_key'';',
'  ',
'  if v_count = 0 then',
'    insert into eba_demo_search_web_creds(credential_static_id)',
'    values(''tmdb_api_key'');',
'  end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(823663071483293445)
,p_process_success_message=>'Credentials have been set.'
);
wwv_flow_imp.component_end;
end;
/
