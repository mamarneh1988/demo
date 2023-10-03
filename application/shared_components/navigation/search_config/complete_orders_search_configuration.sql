prompt --application/shared_components/navigation/search_config/complete_orders_search_configuration
begin
--   Manifest
--     SEARCH CONFIG: Complete Orders Search Configuration
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
 p_id=>wwv_flow_imp.id(3298534498479846002)
,p_label=>'Complete Orders Search Configuration'
,p_static_id=>'complete_orders_search_configuration'
,p_search_type=>'SIMPLE'
,p_location=>'LOCAL'
,p_query_type=>'SQL'
,p_query_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select order_id,',
'       ''ORDER#''||order_id as order_title,',
'       order_status,',
'       order_datetime,',
'       customer_id,',
'       full_name          as customer_name,',
'       items ',
' from eba_demo_search_cust_ord_prd ',
'where order_status = ''COMPLETE'''))
,p_searchable_columns=>'ORDER_TITLE:ORDER_STATUS:ITEMS:ORDER_ID:CUSTOMER_NAME'
,p_pk_column_name=>'ORDER_ID'
,p_title_column_name=>'ORDER_TITLE'
,p_subtitle_column_name=>'CUSTOMER_NAME'
,p_description_column_name=>'ITEMS'
,p_badge_column_name=>'ORDER_STATUS'
,p_last_modified_column_name=>'ORDER_DATETIME'
,p_icon_source_type=>'STATIC_CLASS'
,p_icon_css_classes=>'fa-check-circle u-success-text'
);
wwv_flow_imp.component_end;
end;
/
