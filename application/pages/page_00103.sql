prompt --application/pages/page_00103
begin
--   Manifest
--     PAGE: 00103
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
 p_id=>103
,p_name=>'REST Data Source'
,p_alias=>'REST-DATA-SOURCE'
,p_step_title=>'REST Data Source'
,p_error_handling_function=>'eba_demo_search_error_handling'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'26'
,p_last_updated_by=>'YASSINE'
,p_last_upd_yyyymmddhh24miss=>'20230807134319'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(844608162045377887)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI:js-headingLevel-2:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(3292288565517710863)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_required_role=>'!'||wwv_flow_imp.id(836232509777705872)
,p_landmark_type=>'search'
,p_landmark_label=>'Movies and Companies'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2482045981204567043)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3292301028656710870)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(3292185949438710792)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(3292363060641710911)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2482046505981567043)
,p_plug_name=>'Search Results'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3292285873630710861)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_source_type=>'NATIVE_SEARCH_REGION'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_required_role=>'!'||wwv_flow_imp.id(836232509777705872)
,p_landmark_type=>'exclude_landmark'
,p_attribute_02=>'Y'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-ResultsItem&RESULT_CSS_CLASSES!ATTR.">',
'  {if ?ICON_VALUE/}',
'    {case ICON_TYPE/}',
'      {when INITIALS/}',
'        <div class="a-ResultsItem-initials u-color-var">&ICON_VALUE.</div>',
'      {when URL/}',
'        <div class="a-ResultsItem-image"><img src="https://image.tmdb.org/t/p/w500&ICON_VALUE!ATTR." style="max-width:70px"  alt="&TITLE!ATTR." role="presentation" loading="lazy" /></div>',
'      {when CLASS/}',
'        <div class="a-ResultsItem-icon u-color-var"><span class="fa &ICON_VALUE!ATTR." aria-hidden="true"></span></div>',
'    {endcase/}',
'    {else/}',
'        <div class="a-ResultsItem-image"><img src="#APP_FILES#image_not_found.png" style="max-width:70px"  alt="&TITLE!ATTR." role="presentation" loading="lazy" /></div>',
'  {endif/}',
'  <div class="a-ResultsItem-content">',
'    <div class="a-ResultsItem-header">',
'      {if ?LINK/}',
'        <span class="a-ResultsItem-title"><a href="&LINK!ATTR.">&TITLE.</a></span>',
'      {else/}',
'        <span class="a-ResultsItem-title">&TITLE.</span>',
'      {endif/}',
'      {if ?BADGE/}<span class="a-ResultsItem-badge" >&BADGE.</span>{endif/}',
'    </div>',
'    {if ?SUBTITLE/}<div class="a-ResultsItem-subTitle">&SUBTITLE.</div>{endif/}',
'    {if ?DESCRIPTION/}<div class="a-ResultsItem-description">&DESCRIPTION.</div>{endif/}',
'    {if ?RELEASEDATE/}<div class="a-ResultsItem-misc">Release Date: &RELEASEDATE.</div>{endif/}',
''))
,p_attribute_04=>'N'
,p_attribute_05=>'P103_SEARCH'
,p_attribute_06=>'N'
,p_attribute_08=>'TITLE'
,p_attribute_09=>'DESC'
,p_attribute_11=>'Y'
,p_attribute_13=>'Enter a query to search for movies or companies.'
,p_attribute_14=>'15'
,p_attribute_15=>'Y'
,p_attribute_16=>'No movies or companies found.'
);
wwv_flow_imp_page.create_search_region_source(
 p_id=>wwv_flow_imp.id(2482046998907567044)
,p_region_id=>wwv_flow_imp.id(2482046505981567043)
,p_search_config_id=>wwv_flow_imp.id(3292435022790660244)
,p_use_as_initial_result=>false
,p_max_results=>5
,p_display_sequence=>10
,p_name=>'Company Search Configuration'
);
wwv_flow_imp_page.create_search_region_source(
 p_id=>wwv_flow_imp.id(2482047560039567044)
,p_region_id=>wwv_flow_imp.id(2482046505981567043)
,p_search_config_id=>wwv_flow_imp.id(3292434187072642782)
,p_use_as_initial_result=>false
,p_max_results=>5
,p_display_sequence=>20
,p_name=>'Movie Search Configuration'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4140194332118122984)
,p_plug_name=>'Overview'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(3292288565517710863)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page demonstrates how to use a <strong>REST Data Source</strong> as the data source for a Search Configuration. The Search Region is configured with two Search Configurations: <strong>Company Search Configuration</strong> (which uses the Comp'
||'anies REST Data Source) and <strong>Movie Search Configuration</strong> (which uses the Movies REST Data Source).</p>',
'<p>To perform a search, simply enter your search term into the search box (e.g., "<strong>Netflix</strong>") and press <em>&crarr;Enter</em>. The search configurations will execute, and all relevant results for companies and movies will be displayed.'
||'</p>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_required_role=>'!'||wwv_flow_imp.id(836232509777705872)
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4482641889850487111)
,p_plug_name=>'Web Credentials not provided'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_template=>wwv_flow_imp.id(3292217361411710815)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>'This page relies on a REST Data Source. You need to provide your own API key for <strong>themoviedb.org</strong>.'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_required_role=>wwv_flow_imp.id(836232509777705872)
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(834332961361666857)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2482045981204567043)
,p_button_name=>'PREV'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(3292360794092710909)
,p_button_image_alt=>'Previous'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:102:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(836230161135636892)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4482641889850487111)
,p_button_name=>'PROVIDE_CREDENTIALS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(3292361476404710910)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Provide Credentials'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:503:&SESSION.::&DEBUG.:503::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(834333215435668575)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2482045981204567043)
,p_button_name=>'NEXT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(3292360794092710909)
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2482048035789567045)
,p_name=>'P103_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(844608162045377887)
,p_prompt=>'Search'
,p_placeholder=>'Enter your search term, e.g. ''Netflix'''
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(3292358722170710908)
,p_item_icon_css_classes=>'fa-search'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'SEARCH'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp.component_end;
end;
/
