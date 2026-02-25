prompt --application/shared_components/navigation/lists/navigation_menu
begin
--   Manifest
--     LIST: Navigation Menu
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.13'
,p_default_workspace_id=>85642573465100614084
,p_default_application_id=>130065
,p_default_id_offset=>0
,p_default_owner=>'WKSP_HRPLSQL'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(130346362526011003633)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(130346361462306003632)
,p_version_scn=>15729977919457
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(130346374365991003650)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
