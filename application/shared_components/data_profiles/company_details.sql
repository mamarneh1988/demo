prompt --application/shared_components/data_profiles/company_details
begin
--   Manifest
--     DATA PROFILE: Company Details
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
 p_id=>wwv_flow_imp.id(2484237092709018880)
,p_name=>'Company Details'
,p_format=>'JSON'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(2484237346011018881)
,p_data_profile_id=>wwv_flow_imp.id(2484237092709018880)
,p_name=>'ID'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(2484237636835018881)
,p_data_profile_id=>wwv_flow_imp.id(2484237092709018880)
,p_name=>'NAME'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'name'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(2484237896814018881)
,p_data_profile_id=>wwv_flow_imp.id(2484237092709018880)
,p_name=>'HOMEPAGE'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'homepage'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(2484238280428018881)
,p_data_profile_id=>wwv_flow_imp.id(2484237092709018880)
,p_name=>'LOGO_PATH'
,p_sequence=>4
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'logo_path'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(2484238554982018881)
,p_data_profile_id=>wwv_flow_imp.id(2484237092709018880)
,p_name=>'DESCRIPTION'
,p_sequence=>5
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'description'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(2484238815496018882)
,p_data_profile_id=>wwv_flow_imp.id(2484237092709018880)
,p_name=>'HEADQUARTERS'
,p_sequence=>6
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'headquarters'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(2484239119445018882)
,p_data_profile_id=>wwv_flow_imp.id(2484237092709018880)
,p_name=>'ORIGIN_COUNTRY'
,p_sequence=>7
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'origin_country'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(2484239403968018882)
,p_data_profile_id=>wwv_flow_imp.id(2484237092709018880)
,p_name=>'PARENT_COMPANY'
,p_sequence=>8
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'parent_company'
);
wwv_flow_imp.component_end;
end;
/
