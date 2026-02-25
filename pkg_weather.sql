create or replace package "PKG_WEATHER" as

PROCEDURE download_date_from_api(         
    p_city_id IN NUMBER,         
    p_api_key IN VARCHAR2 DEFAULT 'API_KEY'    
    );          
    
 -- Przetwórz surowy JSON na strukturę relacyjną     
 PROCEDURE json_process(p_city_id IN NUMBER);  


end "PKG_WEATHER";
/