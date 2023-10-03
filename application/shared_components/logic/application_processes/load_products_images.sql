prompt --application/shared_components/logic/application_processes/load_products_images
begin
--   Manifest
--     APPLICATION PROCESS: Load Products Images
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.0'
,p_default_workspace_id=>20
,p_default_application_id=>7190
,p_default_id_offset=>852320622354339934
,p_default_owner=>'ORACLE'
);
wwv_flow_imp_shared.create_flow_process(
 p_id=>wwv_flow_imp.id(833598216202084578)
,p_process_sequence=>1
,p_process_point=>'ON_NEW_INSTANCE'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load Products Images'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    eba_demo_search_data_pkg.load_product_images(:APP_ID,''product_images.zip'');',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'select * from eba_demo_search_products where product_image is not null'
,p_process_when_type=>'NOT_EXISTS'
);
wwv_flow_imp.component_end;
end;
/
