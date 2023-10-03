prompt --application/shared_components/navigation/search_config/movie_search_configuration
begin
--   Manifest
--     SEARCH CONFIG: Movie Search Configuration
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
 p_id=>wwv_flow_imp.id(3292434187072642782)
,p_label=>'Movie Search Configuration'
,p_static_id=>'movie'
,p_search_type=>'SIMPLE'
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(3292421760424576665)
,p_function_body_language=>'PLSQL'
,p_pk_column_name=>'ID'
,p_title_column_name=>'TITLE'
,p_description_column_name=>'OVERVIEW'
,p_badge_column_name=>'VOTE_AVERAGE'
,p_last_modified_column_name=>'RELEASE_DATE'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:104:&APP_SESSION.::&DEBUG.::P104_ID:&ID.'
,p_icon_source_type=>'URL'
,p_icon_image_url=>'&POSTER_PATH.'
,p_icon_css_classes=>'fa-film'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(3292434486954642784)
,p_web_src_param_id=>wwv_flow_imp.id(3292422430224576669)
,p_search_config_id=>wwv_flow_imp.id(3292434187072642782)
,p_value_type=>'STATIC'
,p_value=>'Jack+Reacher'
);
wwv_flow_imp.component_end;
end;
/
