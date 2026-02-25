prompt --application/shared_components/security/authentications/oracle_apex_accounts
begin
--   Manifest
--     AUTHENTICATION: Oracle APEX Accounts
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.13'
,p_default_workspace_id=>85642573465100614084
,p_default_application_id=>130065
,p_default_id_offset=>0
,p_default_owner=>'WKSP_HRPLSQL'
);
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(130346361769904003632)
,p_name=>'Oracle APEX Accounts'
,p_scheme_type=>'NATIVE_DAD'
,p_attribute_01=>'nobody'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>15729977655236
);
wwv_flow_imp.component_end;
end;
/
