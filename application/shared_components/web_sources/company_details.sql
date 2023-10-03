prompt --application/shared_components/web_sources/company_details
begin
--   Manifest
--     WEB SOURCE: Company Details
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.0'
,p_default_workspace_id=>20
,p_default_application_id=>7190
,p_default_id_offset=>852320622354339934
,p_default_owner=>'ORACLE'
);
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(2484239687709018882)
,p_name=>'Company Details'
,p_static_id=>'Company_Details'
,p_web_source_type=>'NATIVE_HTTP'
,p_data_profile_id=>wwv_flow_imp.id(2484237092709018880)
,p_remote_server_id=>wwv_flow_imp.id(809313303198541777)
,p_url_path_prefix=>'company/{company_id}'
,p_credential_id=>wwv_flow_imp.id(832934514656382544)
,p_attribute_05=>'1'
,p_attribute_08=>'OFFSET'
,p_attribute_10=>'EQUALS'
,p_attribute_11=>'true'
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(2484240351971018883)
,p_web_src_module_id=>wwv_flow_imp.id(2484239687709018882)
,p_name=>'company_id'
,p_param_type=>'URL_PATTERN'
,p_is_required=>false
,p_value=>'1'
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(2484239926674018882)
,p_web_src_module_id=>wwv_flow_imp.id(2484239687709018882)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp.component_end;
end;
/
