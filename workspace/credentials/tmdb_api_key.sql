prompt --workspace/credentials/tmdb_api_key
begin
--   Manifest
--     CREDENTIAL: TMDb API Key
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.0'
,p_default_workspace_id=>20
,p_default_application_id=>7190
,p_default_id_offset=>852320622354339934
,p_default_owner=>'ORACLE'
);
wwv_imp_workspace.create_credential(
 p_id=>wwv_flow_imp.id(832934514656382544)
,p_name=>'TMDb API Key'
,p_static_id=>'tmdb_api_key'
,p_authentication_type=>'HTTP_QUERY_STRING'
,p_valid_for_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'https://api.themoviedb.org/3/',
''))
,p_prompt_on_install=>false
);
wwv_flow_imp.component_end;
end;
/
