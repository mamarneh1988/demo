prompt --application/shared_components/security/authorizations/oracle_text_is_available
begin
--   Manifest
--     SECURITY SCHEME: Oracle Text is available
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.0'
,p_default_workspace_id=>20
,p_default_application_id=>7190
,p_default_id_offset=>852320622354339934
,p_default_owner=>'ORACLE'
);
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(830324093378509760)
,p_name=>'Oracle Text is available'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>'return eba_demo_search_text_pkg.text_is_available;'
,p_error_message=>'Oracle Text is not available in this workspace.'
,p_caching=>'BY_USER_BY_SESSION'
);
wwv_flow_imp.component_end;
end;
/
