prompt --application/shared_components/navigation/search_config/company_search_configuration
begin
--   Manifest
--     SEARCH CONFIG: Company Search Configuration
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
 p_id=>wwv_flow_imp.id(3292435022790660244)
,p_label=>'Company Search Configuration'
,p_static_id=>'company'
,p_search_type=>'SIMPLE'
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(3292432876264625593)
,p_function_body_language=>'PLSQL'
,p_pk_column_name=>'ID'
,p_title_column_name=>'NAME'
,p_subtitle_column_name=>'ORIGIN_COUNTRY'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:105:&APP_SESSION.::&DEBUG.::P105_ID:&ID.'
,p_icon_source_type=>'URL'
,p_icon_image_url=>'&LOGO_PATH.'
,p_icon_css_classes=>'fa-video-camera'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(3292435331895660244)
,p_web_src_param_id=>wwv_flow_imp.id(3292433459018625594)
,p_search_config_id=>wwv_flow_imp.id(3292435022790660244)
,p_value_type=>'STATIC'
,p_value=>'Netflix'
);
wwv_flow_imp.component_end;
end;
/
