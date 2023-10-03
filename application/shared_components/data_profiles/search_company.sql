prompt --application/shared_components/data_profiles/search_company
begin
--   Manifest
--     DATA PROFILE: Search Company
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.0'
,p_default_workspace_id=>20
,p_default_application_id=>7190
,p_default_id_offset=>852320622354339934
,p_default_owner=>'ORACLE'
);
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(3292431531062625592)
,p_name=>'Search Company'
,p_format=>'JSON'
,p_row_selector=>'results'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(3292431710118625592)
,p_data_profile_id=>wwv_flow_imp.id(3292431531062625592)
,p_name=>'ID'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(3292432012915625592)
,p_data_profile_id=>wwv_flow_imp.id(3292431531062625592)
,p_name=>'NAME'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'name'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(3292432335164625593)
,p_data_profile_id=>wwv_flow_imp.id(3292431531062625592)
,p_name=>'LOGO_PATH'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'logo_path'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(3292432578928625593)
,p_data_profile_id=>wwv_flow_imp.id(3292431531062625592)
,p_name=>'ORIGIN_COUNTRY'
,p_sequence=>4
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'origin_country'
);
wwv_flow_imp.component_end;
end;
/
