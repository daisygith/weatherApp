prompt --application/plugin_settings
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.13'
,p_default_workspace_id=>85642573465100614084
,p_default_application_id=>130065
,p_default_id_offset=>0
,p_default_owner=>'WKSP_HRPLSQL'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(130346357297183003628)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>15706124434219
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(130346357513052003629)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>15706124434293
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(130346357808124003630)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>15706124434314
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(130346358136010003630)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER',
  'show_coordinates', 'N')).to_clob
,p_version_scn=>15706124434329
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(130346358428090003630)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>15706124434353
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(130346358765914003630)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>15706124434368
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(130346359021872003630)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>15706124434382
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(130346359314427003631)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>15706124434395
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(130346359690360003631)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>15706124434424
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(130346359926532003631)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>15706124434446
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(130346360249391003631)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>15706124434474
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(130346360589811003631)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>15706124434489
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(130346360812043003632)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>15706124434505
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(130346361149694003632)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>15706124434519
);
wwv_flow_imp.component_end;
end;
/
