prompt --application/pages/page_groups
begin
--   Manifest
--     PAGE GROUPS: 130065
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.13'
,p_default_workspace_id=>85642573465100614084
,p_default_application_id=>130065
,p_default_id_offset=>0
,p_default_owner=>'WKSP_HRPLSQL'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(130346367662716003643)
,p_group_name=>'Administration'
);
wwv_flow_imp.component_end;
end;
/
