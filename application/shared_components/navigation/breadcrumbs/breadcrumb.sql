prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
--   Manifest
--     MENU: Breadcrumb
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.13'
,p_default_workspace_id=>85642573465100614084
,p_default_application_id=>130065
,p_default_id_offset=>0
,p_default_owner=>'WKSP_HRPLSQL'
);
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(130346362073296003633)
,p_name=>'Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(130346362281578003633)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
,p_required_patch=>wwv_flow_imp.id(130346361462306003632)
);
wwv_flow_imp.component_end;
end;
/
