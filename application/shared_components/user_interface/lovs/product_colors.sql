prompt --application/shared_components/user_interface/lovs/product_colors
begin
--   Manifest
--     PRODUCT COLORS
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.0'
,p_default_workspace_id=>20
,p_default_application_id=>7190
,p_default_id_offset=>852320622354339934
,p_default_owner=>'ORACLE'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3297522641053101398)
,p_lov_name=>'PRODUCT COLORS'
,p_lov_query=>'select distinct json_value(product_details,''$.colour'') product_color from eba_demo_search_products'
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'PRODUCT_COLOR'
,p_display_column_name=>'PRODUCT_COLOR'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
