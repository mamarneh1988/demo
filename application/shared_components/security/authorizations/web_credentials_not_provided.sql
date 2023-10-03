prompt --application/shared_components/security/authorizations/web_credentials_not_provided
begin
--   Manifest
--     SECURITY SCHEME: Web Credentials not provided
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
 p_id=>wwv_flow_imp.id(836232509777705872)
,p_name=>'Web Credentials not provided'
,p_scheme_type=>'NATIVE_NOT_EXISTS'
,p_attribute_01=>'select * from eba_demo_search_web_creds where credential_static_id = ''tmdb_api_key'''
,p_error_message=>'Required web credentials are not provided.'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
wwv_flow_imp.component_end;
end;
/
