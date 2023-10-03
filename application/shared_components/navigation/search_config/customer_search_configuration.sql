prompt --application/shared_components/navigation/search_config/customer_search_configuration
begin
--   Manifest
--     SEARCH CONFIG: Customer Search Configuration
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
 p_id=>wwv_flow_imp.id(3292447697491303239)
,p_label=>'Customer Search Configuration'
,p_static_id=>'customer'
,p_search_type=>'SIMPLE'
,p_location=>'LOCAL'
,p_query_type=>'TABLE'
,p_query_table=>'EBA_DEMO_SEARCH_CUSTOMERS'
,p_searchable_columns=>'FULL_NAME:EMAIL_ADDRESS'
,p_return_max_results=>5
,p_pk_column_name=>'CUSTOMER_ID'
,p_title_column_name=>'FULL_NAME'
,p_description_column_name=>'EMAIL_ADDRESS'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:203:&APP_SESSION.::&DEBUG.:203:P203_CUSTOMER_ID:&CUSTOMER_ID.'
,p_icon_source_type=>'STATIC_CLASS'
,p_icon_css_classes=>'fa-user u-color-10-text'
);
wwv_flow_imp.component_end;
end;
/
