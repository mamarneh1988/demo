prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 100
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.0'
,p_default_workspace_id=>20
,p_default_application_id=>7190
,p_default_id_offset=>852320622354339934
,p_default_owner=>'ORACLE'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(3292364525019710913)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_imp.id(3292212469780710812)
,p_default_dialog_template=>wwv_flow_imp.id(3292207286980710809)
,p_error_template=>wwv_flow_imp.id(3292197293140710802)
,p_printer_friendly_template=>wwv_flow_imp.id(3292212469780710812)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(3292197293140710802)
,p_default_button_template=>wwv_flow_imp.id(3292361476404710910)
,p_default_region_template=>wwv_flow_imp.id(3292288565517710863)
,p_default_chart_template=>wwv_flow_imp.id(3292288565517710863)
,p_default_form_template=>wwv_flow_imp.id(3292288565517710863)
,p_default_reportr_template=>wwv_flow_imp.id(3292288565517710863)
,p_default_tabform_template=>wwv_flow_imp.id(3292288565517710863)
,p_default_wizard_template=>wwv_flow_imp.id(3292288565517710863)
,p_default_menur_template=>wwv_flow_imp.id(3292301028656710870)
,p_default_listr_template=>wwv_flow_imp.id(3292288565517710863)
,p_default_irr_template=>wwv_flow_imp.id(3292278852535710857)
,p_default_report_template=>wwv_flow_imp.id(3292326557230710886)
,p_default_label_template=>wwv_flow_imp.id(3292358998715710908)
,p_default_menu_template=>wwv_flow_imp.id(3292363060641710911)
,p_default_calendar_template=>wwv_flow_imp.id(3292363203099710911)
,p_default_list_template=>wwv_flow_imp.id(3292342868719710897)
,p_default_nav_list_template=>wwv_flow_imp.id(3292354682784710905)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(3292354682784710905)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(3292349289173710902)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(3292225365430710821)
,p_default_dialogr_template=>wwv_flow_imp.id(3292222606380710820)
,p_default_option_label=>wwv_flow_imp.id(3292358998715710908)
,p_default_required_label=>wwv_flow_imp.id(3292360345609710909)
,p_default_navbar_list_template=>wwv_flow_imp.id(3292348933472710901)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/22.2/')
,p_files_version=>72
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_imp.component_end;
end;
/
