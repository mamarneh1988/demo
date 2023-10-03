prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.0'
,p_default_workspace_id=>20
,p_default_application_id=>7190
,p_default_id_offset=>852320622354339934
,p_default_owner=>'ORACLE'
);
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Sample Application Search'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
,p_last_updated_by=>'YASSINE'
,p_last_upd_yyyymmddhh24miss=>'20230710162814'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3292397557986710941)
,p_plug_name=>'Sample Application Search'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3292255658597710844)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source=>'Demonstration of Application Search in APEX'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3297542671575907215)
,p_plug_name=>'About'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h1:js-headingLevel-2'
,p_plug_template=>wwv_flow_imp.id(3292251026065710841)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The <strong>Application Search</strong> feature, introduced in APEX 22.2, provides a seamless search experience that feels like a&nbsp;search engine&nbsp;within your application. It allows users to search for data across multiple&nbsp;data sources'
||', making it easy to find the information they need.</p>',
'<p>With Application Search, you can create multiple&nbsp;search configurations&nbsp;that search a<strong>&nbsp;local data source</strong>, <strong>REST-enabled SQL</strong>, or <strong>REST API</strong>. This allows you to provide a comprehensive&nbs'
||'p;search experience&nbsp;for your users, retrieving relevant information from a variety of sources.</p>',
'<p><strong>Search Configurations</strong> contain information about a&nbsp;searchable data source&nbsp;and provide an abstraction over concrete search implementations, allowing for flexibility and future improvements.<br />You can create and manage y'
||'our Search Configurations under :&nbsp;<em><strong>Shared Components&nbsp;&rarr; Navigation and Search &rarr; Search Configurations</strong></em></p>',
'<p>These Search Configurations give you control over which data appears in the search results and can include links to detailed result pages. This allows users to quickly and easily navigate to the relevant information within your application.</p>',
'<p>One of the key benefits of this new search feature is its ability to use&nbsp;<strong>Oracle Text</strong>, which is a powerful full-text search engine provided by Oracle Database. By leveraging Oracle Text, you can take advantage of its advanced&'
||'nbsp;search capabilities, such as&nbsp;keyword searching,&nbsp;fuzzy searching, and stemming, allowing for more accurate and relevant search results. It can handle complex queries, including&nbsp;phrase searching&nbsp;and&nbsp;proximity searching, wh'
||'ich can further refine search results.</p>',
'<p>A new region type, <strong>Search Region</strong>, has also been introduced, which can be configured to use one or more Search Configurations and display the search results.</p>',
'<p>To see a demo of this feature in action, you can refer to this video:</p>',
unistr('<p><a href="https://www.youtube.com/watch?v=ZvM9IWil4Xs&amp;ab_channel=OracleAPEX">\25B6\FE0F Add Search to your APEX Application with Oracle APEX 22.2</a></p>')))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3297542772323907216)
,p_plug_name=>'App Navigation'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-MediaList--showBadges:t-MediaList--iconsRounded'
,p_plug_template=>wwv_flow_imp.id(3292288565517710863)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_list_id=>wwv_flow_imp.id(3298566791098201450)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(3292344535789710898)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(823662591622293440)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3292397557986710941)
,p_button_name=>'PREV'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(3292360794092710909)
,p_button_image_alt=>'Previous'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-left'
,p_button_cattributes=>'disabled'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(823662696932293441)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3292397557986710941)
,p_button_name=>'NEXT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(3292360794092710909)
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:100:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp.component_end;
end;
/
