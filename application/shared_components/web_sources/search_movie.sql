prompt --application/shared_components/web_sources/search_movie
begin
--   Manifest
--     WEB SOURCE: Search Movie
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
 p_id=>wwv_flow_imp.id(3292421760424576665)
,p_name=>'Search Movie'
,p_static_id=>'MovieDB'
,p_web_source_type=>'NATIVE_HTTP'
,p_data_profile_id=>wwv_flow_imp.id(3292417733431576657)
,p_remote_server_id=>wwv_flow_imp.id(809313303198541777)
,p_url_path_prefix=>'/search/movie'
,p_credential_id=>wwv_flow_imp.id(832934514656382544)
,p_attribute_01=>'PAGE_NUMBER_FIXED_SIZE'
,p_attribute_04=>'page'
,p_attribute_05=>'1'
,p_attribute_06=>'20'
,p_attribute_08=>'OFFSET'
,p_attribute_10=>'EQUALS'
,p_attribute_11=>'true'
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(3292422430224576669)
,p_web_src_module_id=>wwv_flow_imp.id(3292421760424576665)
,p_name=>'query'
,p_param_type=>'QUERY_STRING'
,p_is_required=>false
,p_value=>'Jack+Reacher'
,p_is_query_param=>true
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(3292421977297576667)
,p_web_src_module_id=>wwv_flow_imp.id(3292421760424576665)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_legacy_ords_fixed_page_size=>20
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp.component_end;
end;
/
