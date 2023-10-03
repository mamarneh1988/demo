prompt --application/deployment/definition
begin
--   Manifest
--     INSTALL: 100
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.0'
,p_default_workspace_id=>20
,p_default_application_id=>7190
,p_default_id_offset=>852320622354339934
,p_default_owner=>'ORACLE'
);
wwv_flow_imp_shared.create_install(
 p_id=>wwv_flow_imp.id(3292750852790344872)
,p_deinstall_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'----------------------------------------------------------------',
'-- Remove Oracle Text objects',
'----------------------------------------------------------------',
'begin',
'    eba_demo_search_text_pkg.drop_text_preferences;',
'    eba_demo_search_text_pkg.drop_text_index;',
'end;',
'/',
'',
'drop package eba_demo_search_text_pkg;',
'----------------------------------------------------------------',
'-- Remove packages',
'----------------------------------------------------------------',
'drop package eba_demo_search_data_pkg;',
'----------------------------------------------------------------',
'-- Remove functions',
'----------------------------------------------------------------',
'drop function eba_demo_search_error_handling;',
'----------------------------------------------------------------',
'-- Remove views',
'----------------------------------------------------------------',
'drop view eba_demo_search_cust_ord_prd;',
'drop view eba_demo_search_prd_orders;',
'drop view eba_demo_search_prd_reviews;',
'drop view eba_demo_search_str_orders;',
'drop view eba_demo_search_str_ord_stat;',
'----------------------------------------------------------------',
'-- Remove Tables',
'---------------------------------------------------------------',
'drop table eba_demo_search_customers    cascade constraints purge;',
'drop table eba_demo_search_stores    cascade constraints purge;',
'drop table eba_demo_search_orders    cascade constraints purge;',
'drop table eba_demo_search_order_items    cascade constraints purge;',
'drop table eba_demo_search_products    cascade constraints purge;',
'',
'drop table eba_demo_search_web_creds cascade constraints purge;',
'',
''))
);
wwv_flow_imp.component_end;
end;
/
