create or replace package body "PKG_WEATHER" as


PROCEDURE download_date_from_api(      
    p_city_id IN NUMBER,
    p_api_key IN VARCHAR2 DEFAULT 'API_KEY'
    ) IS        
    L_RESPONSE CLOB;         
    L_START_TIME NUMBER;         
    L_END_TIME NUMBER;         
    L_CITY CITY%ROWTYPE;         
    L_URL VARCHAR2(500);     
    BEGIN         
        L_START_TIME := DBMS_UTILITY.GET_TIME;                  
        -- Pobierz dane miasta         
        SELECT * INTO L_CITY         
        FROM CITY         
        WHERE id = p_city_id;                 
         -- Stwórz tymczasowy CLOB         
         DBMS_LOB.CREATETEMPORARY(L_RESPONSE, TRUE, DBMS_LOB.SESSION);                  
         -- URL do OpenWeatherMap API         
         L_URL := 'https://api.openweathermap.org/data/2.5/weather' ||
                           '?lat=' || L_CITY.WIDTH ||                  
                           '&lon=' || L_CITY.LENGTH ||                  
                           '&appid=' || p_api_key ||                  
                           '&units=metric' ||                  
                           '&lang=pl';                  
                           
                           
        -- Wywołanie REST API         
        L_RESPONSE := APEX_WEB_SERVICE.MAKE_REST_REQUEST(             
            p_url => L_URL,            
            p_http_method => 'GET');     
			
        -- Sprawdź czy odpowiedź nie jest pusta         
        IF L_RESPONSE IS NULL OR DBMS_LOB.GETLENGTH(L_RESPONSE) = 0 THEN             
        RAISE_APPLICATION_ERROR(-20001, 'API zwróciło pustą odpowiedź');        
        END IF;                  
        
		-- Zapisz surowe dane        
        INSERT INTO WEATHER_RAW (city_id, json_response)         
        VALUES (p_city_id, L_RESPONSE);                  
        L_END_TIME := DBMS_UTILITY.GET_TIME;                 
        
		-- Loguj sukces         
        INSERT INTO LOG_DOWNLOAD (city_id, status, comm,EXECUTION_TIME) --czas_wykonania         
        VALUES (p_city_id, 'SUCCESS', 'Dane pobrane poprawnie',                  
        L_END_TIME - L_START_TIME);     

		COMMIT;                  
               
		-- Zwolnij pamięć         
        DBMS_LOB.FREETEMPORARY(L_RESPONSE);             
        EXCEPTION         
        WHEN OTHERS THEN            
                -- Loguj błąd             
                 DECLARE
                    v_error_msg VARCHAR2(4000);
                BEGIN
                    v_error_msg := SQLERRM;
                    
                    INSERT INTO LOG_DOWNLOAD (city_id, status, COMM, EXECUTION_TIME)
                    VALUES (p_city_id, 'ERROR', v_error_msg, NULL);
                EXCEPTION
                    WHEN OTHERS THEN
                        NULL; -- Ignoruj błędy logowania
                END;

                IF DBMS_LOB.ISTEMPORARY(L_RESPONSE) = 1 THEN
                    DBMS_LOB.FREETEMPORARY(L_RESPONSE);
                END IF;                    
       RAISE;    
	   
END download_date_from_api;


PROCEDURE json_process(
    p_city_id IN NUMBER
    ) IS
        L_JSON CLOB;         
        L_CITY_ID NUMBER;   
        L_DATE_MEASURMENT TIMESTAMP; 
        L_RAW_ID NUMBER; 
BEGIN           

    -- Pobierz OSTATNI surowy JSON dla danego miasta
        SELECT id, json_response, city_id, DOWNLOAD_DATE       
        INTO L_RAW_ID, L_JSON, L_CITY_ID, L_DATE_MEASURMENT        
        FROM WEATHER_RAW        
        WHERE city_id = p_city_id  -- ZMIENIONE
        ORDER BY id DESC
        FETCH FIRST 1 ROW ONLY;
            
   -- Parsuj JSON i wstaw do tabeli strukturalnej    
        INSERT INTO WEATHER_PROCESSED (    
                    CITY_ID, MEASUREMENT_DATE, TEMP, HUMIDITY,     
                    PRESSURE, WIND_SPEED, WIND_DIRECTION,
                    CLOUDY, WEATHER_DESCRIBE, ICON)         
        SELECT             
            L_CITY_ID,               
            L_DATE_MEASURMENT,
            json_value(L_JSON, '$.main.temp'), 
            json_value(L_JSON, '$.main.humidity'),
            json_value(L_JSON, '$.main.pressure'),
            json_value(L_JSON, '$.wind.speed'),
            json_value(L_JSON, '$.wind.deg'),
            json_value(L_JSON, '$.clouds.all'), 
            json_value(L_JSON, '$.weather[0].description'),
            json_value(L_JSON, '$.weather[0].icon')       
        FROM DUAL;                 
        
        COMMIT;              
        
        EXCEPTION         
             WHEN NO_DATA_FOUND THEN
            -- Brak danych do przetworzenia dla tego miasta
                NULL;
            WHEN OTHERS THEN             
                ROLLBACK;             
            RAISE;     
END json_process; 


end "PKG_WEATHER";
/