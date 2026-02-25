prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.13'
,p_default_workspace_id=>85642573465100614084
,p_default_application_id=>130065
,p_default_id_offset=>0
,p_default_owner=>'WKSP_HRPLSQL'
);
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'WeatherApp'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'body, .t-Body-content {',
'      font-family: ''DM Sans'', sans-serif !important;',
'      background: #f0f4f8 !important;',
'    }',
'.t-Header {',
'  display: none !important;',
'}',
'',
unistr('/* ukryj domy\015Blne nag\0142\00F3wki region\00F3w */'),
'    .t-Region-header { ',
'        display: none !important; ',
'        }',
'        ',
unistr('     /* \2500\2500 SEARCH BAR \2500\2500 */'),
'    .weather-search .t-Region-body {',
'      display: flex;',
'      align-items: center;',
'      gap: 12px;',
'      padding: 0 0 24px !important;',
'      background: transparent !important;',
'      box-shadow: none !important;',
'      border: none !important;',
'    }',
'',
'    .weather-search .apex-item-select {',
'      font-family: ''DM Sans'', sans-serif !important;',
'      font-size: 0.9rem !important;',
'      padding: 10px 14px !important;',
'      border: 1.5px solid #dde4ed !important;',
'      border-radius: 10px !important;',
'      background: #fff !important;',
'      color: #1a2332 !important;',
'      outline: none !important;',
'    }',
'',
'    .weather-search .t-Button {',
'      font-family: ''DM Sans'', sans-serif !important;',
'      font-size: 0.9rem !important;',
'      font-weight: 500 !important;',
'      padding: 10px 22px !important;',
'      background: #2d6be4 !important;',
'      color: #fff !important;',
'      border: none !important;',
'      border-radius: 10px !important;',
'      box-shadow: none !important;',
'    }',
'',
'    .weather-search .container {',
'        display: flex;',
'        justify-content: flex-end;',
'        justify-items: stretch;',
'        margin-right: 0rem;',
'    }',
'',
'    .weather-search .row {',
'        display: flex;',
'        align-items: center;',
'        } ',
'',
'select#P1_CITY {',
'    width: 9rem;',
'}',
'',
unistr('       /* \2500\2500 MAIN CARD \2500\2500 */'),
'    .weather-main .t-Region-body {',
'      background: #ffffff !important;',
'      border-radius: 16px !important;',
'      box-shadow: 0 2px 16px rgba(45,107,228,0.09) !important;',
'      padding: 36px 40px 32px !important;',
'      border: none !important;',
'      margin-bottom: 16px;',
'      position: relative;',
'      overflow: hidden;',
'    }',
'',
unistr('       /* \2500\2500 DETAILS GRID \2500\2500 */'),
'    .weather-details .t-Region-body {',
'      background: transparent !important;',
'      box-shadow: none !important;',
'      border: none !important;',
'      padding: 0 !important;',
'    }',
'',
'       /* karty detali */',
'    .w-cards {',
'      display: grid;',
'      grid-template-columns: repeat(4, 1fr);',
'      gap: 12px;',
'    }',
'',
'    .w-card {',
'      background: #fff;',
'      border-radius: 16px;',
'      box-shadow: 0 2px 16px rgba(45,107,228,0.09);',
'      padding: 20px 18px;',
'      display: flex;',
'      flex-direction: column;',
'      gap: 8px;',
'    }',
'',
'    .w-card-icon { font-size: 1.3rem; }',
'    .w-card-label {',
'      font-size: 0.72rem;',
'      font-weight: 500;',
'      text-transform: uppercase;',
'      letter-spacing: 0.08em;',
'      color: #7a8ea8;',
'    }',
'    .w-card-value {',
'      font-size: 1.35rem;',
'      font-weight: 500;',
'      letter-spacing: -0.02em;',
'      color: #1a2332;',
'      line-height: 1.1;',
'    }',
'    .w-card-unit { font-size: 0.78rem; color: #7a8ea8; }',
'',
unistr('    /* g\0142\00F3wna karta \2013 elementy */'),
'    .w-city {',
'      font-size: 1.6rem;',
'      font-weight: 600;',
'      letter-spacing: -0.03em;',
'      color: #1a2332;',
'    }',
'    .w-date {',
'      font-family: ''DM Mono'', monospace;',
'      font-size: 0.78rem;',
'      color: #7a8ea8;',
'      font-weight: 300;',
'    }',
'    .w-city-row {',
'      display: flex;',
'      justify-content: space-between;',
'      align-items: baseline;',
'      margin-bottom: 8px;',
'    }',
'    .w-temp {',
'      font-size: 5rem;',
'      font-weight: 300;',
'      letter-spacing: -0.04em;',
'      line-height: 1;',
'      color: #1a2332;',
'    }',
'    .w-temp sup {',
'      font-size: 1.8rem;',
'      font-weight: 400;',
'      vertical-align: super;',
'      color: #7a8ea8;',
'    }',
'    .w-desc {',
'      font-size: 1rem;',
'      color: #7a8ea8;',
'      margin-top: 4px;',
'      text-transform: capitalize;',
'    }',
'    .w-glow {',
'      position: absolute;',
'      top: -40px; right: -40px;',
'      width: 180px; height: 180px;',
'      background: radial-gradient(circle, #dce9ff 0%, transparent 70%);',
'      pointer-events: none;',
'    }',
'',
unistr('    /* wy\015Brodkowanie ca\0142o\015Bci */'),
'    .t-Body-content .t-Main {',
'      max-width: 680px !important;',
'      margin: 40px auto !important;',
'    }',
'',
'',
'.weather-main .t-Region-body {',
'  max-width: 860px;',
'  margin: 0 auto 16px !important;',
'}',
'',
'.weather-details .t-Region-body {',
'  max-width: 860px;',
'  margin: 0 auto !important;',
'}',
'',
'.t-Body-content .t-Main {',
'  padding: 40px !important;',
'}',
'',
'',
'.container {',
'    margin-inline-end: auto;',
'    margin-inline-start: auto;',
'    width: 50%;',
'}',
'',
'.weather-history .t-Region-body {',
'  background: #fff;',
'  border-radius: 16px;',
'  box-shadow: 0 2px 16px rgba(45,107,228,.09);',
'  padding: 20px !important;',
'  border: none !important;',
'}',
'',
'.weather-history {',
'    display: flex;',
'        flex-direction: column;',
'    justify-content: center;',
'    align-items: center;',
'    background: #fff;',
'    border-radius: 16px;',
'    box-shadow: 0 2px 16px rgba(45, 107, 228, .09);',
'    padding: 20px 18px;',
'    gap: 8px;',
'}',
'',
'.weather-history .t-Report-report {',
'  border-collapse: collapse;',
'  width: 100%;',
'}',
'',
'.weather-history .t-Report-report th {',
'  font-size: 0.72rem;',
'  text-transform: uppercase;',
'  letter-spacing: 0.08em;',
'  color: #7a8ea8;',
'  font-weight: 500;',
'  padding: 8px 12px;',
'  border-bottom: 1.5px solid #dde4ed;',
'}',
'',
'.weather-history .t-Report-report td {',
'  font-size: 12px;',
'  color: #1a2332;',
'  padding: 10px 12px;',
'  border-bottom: 1px solid #f0f4f8;',
'}',
'',
'.weather-history .t-Report-report tr:hover td {',
'  background: #f0f4f8;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133128916194871251501)
,p_plug_name=>'weather-main'
,p_region_css_classes=>'weather-main'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <div style="background:#fff;border-radius:16px;box-shadow:0 2px 16px rgba(45,107,228,.09);padding:20px 18px;display:flex;flex-direction:column;gap:8px;margin-bottom:8px">',
'    <div style="display:flex;justify-content:space-between;align-items:baseline;margin-bottom:8px;">',
'    <span style="font-size:1.6rem;font-weight:600;letter-spacing:-0.03em;color:#1a2332;">',
'        &P1_CITY_NAME.',
'    </span>',
'    <span style="font-family:''DM Mono'',monospace;font-size:0.78rem;color:#7a8ea8;font-weight:300;">',
'        &P1_MEASUREMENT_DATE.',
'    </span>',
'    </div>',
'',
'    <div style="font-size:5rem;font-weight:300;letter-spacing:-0.04em;line-height:1;color:#1a2332;">',
unistr('    &P1_TEMP.<sup style="font-size:1.8rem;font-weight:400;vertical-align:super;color:#7a8ea8;">\00B0C</sup>'),
'    </div>',
'',
'    <div style="font-size:1rem;color:#7a8ea8;margin-top:8px;text-transform:capitalize;">',
'    &P1_WEATHER_DESCRIBE.',
'    </div>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133128918457348251524)
,p_plug_name=>'weather-details'
,p_region_css_classes=>'weather-details'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>1555738898046108210
,p_plug_display_sequence=>50
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="display:grid;grid-template-columns:repeat(4,1fr);gap:12px;margin-bottom:8px;">',
'',
'  <div style="background:#fff;border-radius:16px;box-shadow:0 2px 16px rgba(45,107,228,.09);padding:20px 18px;display:flex;flex-direction:column;gap:8px;">',
unistr('    <div style="font-size:1.3rem;">\D83C\DF21</div>'),
unistr('    <div style="font-size:.72rem;font-weight:500;text-transform:uppercase;letter-spacing:.08em;color:#7a8ea8;">Ci\015Bnienie</div>'),
'    <div style="font-size:1.35rem;font-weight:500;letter-spacing:-.02em;color:#1a2332;">',
'      &P1_PRESSURE. <span style="font-size:.78rem;color:#7a8ea8;">hPa</span>',
'    </div>',
'  </div>',
'',
'  <div style="background:#fff;border-radius:16px;box-shadow:0 2px 16px rgba(45,107,228,.09);padding:20px 18px;display:flex;flex-direction:column;gap:8px;">',
unistr('    <div style="font-size:1.3rem;">\D83D\DCA8</div>'),
'    <div style="font-size:.72rem;font-weight:500;text-transform:uppercase;letter-spacing:.08em;color:#7a8ea8;">Wiatr</div>',
'    <div style="font-size:1.35rem;font-weight:500;letter-spacing:-.02em;color:#1a2332;">',
'      &P1_WIND_SPEED. <span style="font-size:.78rem;color:#7a8ea8;">m/s</span>',
'    </div>',
'  </div>',
'',
'  <div style="background:#fff;border-radius:16px;box-shadow:0 2px 16px rgba(45,107,228,.09);padding:20px 18px;display:flex;flex-direction:column;gap:8px;">',
unistr('    <div style="font-size:1.3rem;">\D83E\DDED</div>'),
'    <div style="font-size:.72rem;font-weight:500;text-transform:uppercase;letter-spacing:.08em;color:#7a8ea8;">Kierunek</div>',
'    <div style="font-size:1.35rem;font-weight:500;letter-spacing:-.02em;color:#1a2332;">',
'      &P1_WIND_DIRECTION.',
'    </div>',
'  </div>',
'',
'  <div style="background:#fff;border-radius:16px;box-shadow:0 2px 16px rgba(45,107,228,.09);padding:20px 18px;display:flex;flex-direction:column;gap:8px;">',
unistr('    <div style="font-size:1.3rem;">\2601</div>'),
'    <div style="font-size:.72rem;font-weight:500;text-transform:uppercase;letter-spacing:.08em;color:#7a8ea8;">Zachmurzenie</div>',
'    <div style="font-size:1.35rem;font-weight:500;letter-spacing:-.02em;color:#1a2332;">',
'      &P1_CLOUDY. <span style="font-size:.78rem;color:#7a8ea8;">%</span>',
'    </div>',
'  </div>',
'',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(137913442946064493905)
,p_plug_name=>'Weather-search'
,p_region_css_classes=>'weather-search '
,p_region_template_options=>'#DEFAULT#:t-Region-orderBy--end'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(137913444007634493916)
,p_plug_name=>'weather-history'
,p_region_css_classes=>'weather-history'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>1555738898046108210
,p_plug_display_sequence=>60
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(137913444252365493918)
,p_name=>'weather_past_for_city_id'
,p_parent_plug_id=>wwv_flow_imp.id(137913444007634493916)
,p_display_sequence=>10
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ct.name as NAZWA,',
'       TO_CHAR(wep.MEASUREMENT_DATE, ''YYYY-MM-DD HH24:MI:SS'') AS DATA_POMIARU,',
unistr('       ROUND(wep.TEMP,0) || ''\00B0C'' as TEMP,'),
'       wep.PRESSURE || '' hPa'' as CISNIENIE,',
'       wep.WIND_SPEED || '' m/s'' as PREDKOSC_WIATRU,',
'    --    wep.WIND_DIRECTION as KIERUNEK_WIATRU,',
'        CASE ',
'          WHEN wep.WIND_DIRECTION BETWEEN 0 AND 22 THEN ''N''',
'          WHEN wep.WIND_DIRECTION BETWEEN 23 AND 67 THEN ''NE''',
'          WHEN wep.WIND_DIRECTION BETWEEN 68 AND 112 THEN ''E''',
'          WHEN wep.WIND_DIRECTION BETWEEN 113 AND 157 THEN ''SE''',
'          WHEN wep.WIND_DIRECTION BETWEEN 158 AND 202 THEN ''S''',
'          WHEN wep.WIND_DIRECTION BETWEEN 203 AND 247 THEN ''SW''',
'          WHEN wep.WIND_DIRECTION BETWEEN 248 AND 292 THEN ''W''',
'          WHEN wep.WIND_DIRECTION BETWEEN 293 AND 337 THEN ''NW''',
'          WHEN wep.WIND_DIRECTION BETWEEN 338 AND 360 THEN ''N''',
'        END AS KIERUNEK_WIATRU,',
'       wep.CLOUDY || '' %'' as ZACHMURZENIE,',
'       wep.WEATHER_DESCRIBE as OPIS',
'FROM WEATHER_PROCESSED wep, city ct',
'WHERE wep.city_id = ct.id',
'AND wep.city_id = :P1_CITY',
'ORDER BY DATA_POMIARU DESC',
'-- FETCH FIRST 5 ROWS ONLY;'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>5
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'SEARCH_ENGINE'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(137913445134305493927)
,p_query_column_id=>1
,p_column_alias=>'NAZWA'
,p_column_display_sequence=>20
,p_column_heading=>'Nazwa'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(137913445231837493928)
,p_query_column_id=>2
,p_column_alias=>'DATA_POMIARU'
,p_column_display_sequence=>10
,p_column_heading=>'Data Pomiaru'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(137913444584735493921)
,p_query_column_id=>3
,p_column_alias=>'TEMP'
,p_column_display_sequence=>40
,p_column_heading=>'Temp'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(137913445358736493929)
,p_query_column_id=>4
,p_column_alias=>'CISNIENIE'
,p_column_display_sequence=>50
,p_column_heading=>'Cisnienie'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(137913445474284493930)
,p_query_column_id=>5
,p_column_alias=>'PREDKOSC_WIATRU'
,p_column_display_sequence=>60
,p_column_heading=>'Predkosc Wiatru'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(137913445510205493931)
,p_query_column_id=>6
,p_column_alias=>'KIERUNEK_WIATRU'
,p_column_display_sequence=>70
,p_column_heading=>'Kierunek Wiatru'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(137913445627556493932)
,p_query_column_id=>7
,p_column_alias=>'ZACHMURZENIE'
,p_column_display_sequence=>80
,p_column_heading=>'Zachmurzenie'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(137913445791033493933)
,p_query_column_id=>8
,p_column_alias=>'OPIS'
,p_column_display_sequence=>90
,p_column_heading=>'Opis'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133128917853170251518)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(137913442946064493905)
,p_button_name=>'Search'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'t-Button--simple:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Szukaj'
,p_icon_css_classes=>'fa-search'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133128916221014251502)
,p_name=>'P1_CITY'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(137913442946064493905)
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT name AS display_value, id AS return_value',
'FROM city',
'ORDER BY name'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_tag_css_classes=>'P1_CITY'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(137913443115373493907)
,p_name=>'P1_TEMP'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(133128916194871251501)
,p_use_cache_before_default=>'NO'
,p_item_default=>'SELECT ROUND(TEMP,0) FROM WEATHER_PROCESSED WHERE CITY_ID = :P1_CITY ORDER BY ID DESC FETCH FIRST 1 ROW ONLY'
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(137913443253941493908)
,p_name=>'P1_PRESSURE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(133128916194871251501)
,p_use_cache_before_default=>'NO'
,p_item_default=>'SELECT PRESSURE FROM WEATHER_PROCESSED WHERE CITY_ID = :P1_CITY ORDER BY ID DESC FETCH FIRST 1 ROW ONLY'
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(137913443332548493909)
,p_name=>'P1_WIND_SPEED'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(133128916194871251501)
,p_use_cache_before_default=>'NO'
,p_item_default=>'SELECT WIND_SPEED FROM WEATHER_PROCESSED WHERE CITY_ID = :P1_CITY ORDER BY ID DESC FETCH FIRST 1 ROW ONLY'
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(137913443491923493910)
,p_name=>'P1_WIND_DIRECTION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(133128916194871251501)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    CASE ',
'      WHEN WIND_DIRECTION BETWEEN 0 AND 22 THEN ''N''',
'      WHEN WIND_DIRECTION BETWEEN 23 AND 67 THEN ''NE''',
'      WHEN WIND_DIRECTION BETWEEN 68 AND 112 THEN ''E''',
'      WHEN WIND_DIRECTION BETWEEN 113 AND 157 THEN ''SE''',
'      WHEN WIND_DIRECTION BETWEEN 158 AND 202 THEN ''S''',
'      WHEN WIND_DIRECTION BETWEEN 203 AND 247 THEN ''SW''',
'      WHEN WIND_DIRECTION BETWEEN 248 AND 292 THEN ''W''',
'      WHEN WIND_DIRECTION BETWEEN 293 AND 337 THEN ''NW''',
'      WHEN WIND_DIRECTION BETWEEN 338 AND 360 THEN ''N''',
'    END AS WIND_DIRECTION',
'FROM WEATHER_PROCESSED WHERE CITY_ID = :P1_CITY ORDER BY ID DESC FETCH FIRST 1 ROW ONLY'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(137913443514001493911)
,p_name=>'P1_CLOUDY'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(133128916194871251501)
,p_use_cache_before_default=>'NO'
,p_item_default=>'SELECT CLOUDY FROM WEATHER_PROCESSED WHERE CITY_ID = :P1_CITY ORDER BY ID DESC FETCH FIRST 1 ROW ONLY'
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(137913443696672493912)
,p_name=>'P1_WEATHER_DESCRIBE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(133128916194871251501)
,p_use_cache_before_default=>'NO'
,p_item_default=>'SELECT WEATHER_DESCRIBE FROM WEATHER_PROCESSED WHERE CITY_ID = :P1_CITY ORDER BY ID DESC FETCH FIRST 1 ROW ONLY'
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(137913443741199493913)
,p_name=>'P1_MEASUREMENT_DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(133128916194871251501)
,p_use_cache_before_default=>'NO'
,p_item_default=>'SELECT TO_CHAR(MEASUREMENT_DATE, ''YYYY-MM-DD HH24:MI:SS'') FROM WEATHER_PROCESSED WHERE CITY_ID = :P1_CITY ORDER BY ID DESC FETCH FIRST 1 ROW ONLY'
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(137913443916030493915)
,p_name=>'P1_CITY_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(133128916194871251501)
,p_use_cache_before_default=>'NO'
,p_item_default=>'SELECT NAME FROM CITY WHERE ID = :P1_CITY'
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(133128918184443251521)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SearchWeatherByCityId'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    -- Pobierz dane TYLKO dla wybranego miasta',
'    PKG_WEATHER.download_date_from_api(:P1_CITY);',
'    ',
unistr('    -- Przetw\00F3rz JSON'),
'    PKG_WEATHER.json_process(:P1_CITY);',
'    ',
'    apex_application.g_print_success_message := ''Pogoda zaktualizowana!'';',
'-- EXCEPTION',
'--     WHEN OTHERS THEN',
unistr('--         apex_application.g_print_error_message := ''B\0142\0105d: '' || SQLERRM;'),
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(133128917853170251518)
,p_internal_uid=>133128918184443251521
);
wwv_flow_imp.component_end;
end;
/
