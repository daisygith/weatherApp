# Weather App — Oracle APEX
A weather application built in Oracle APEX that fetches weather data from an external API and presents it in a clean, readable dashboard. 

## Application tasks
 - Search for current weather conditions for any city
 - Displays live data: temperature, pressure, wind speed & direction, cloud coverage, and weather description
 - Stores measurement history with paginated table view
 - Automatically fetches data for predefined cities every hour via a scheduled job
 
## Tech Stack
| Layer | Technology |
|---|---|
|Frontend / UI | Oracle APEX |
| Backend | PL/SQL (Oracle Database) |
| Data source | [OpenWeatherMap API](https://openweathermap.org/api) |
| HTTP calls | APEX_WEB_SERVICE.MAKE_REST_REQUEST |
| JSON parsing | Oracle JSON_VALUE |
| Scheduling | Oracle DBMS_SCHEDULER (hourly job) |

## Database Structure
| Table | Description |
|---|---|
| CITY | List of cities with their geographic coordinates |
| WEATHER_RAW | Raw JSON responses from the API |
| WEATHER_PROCESSED | Parsed weather data in structured columns |
| LOG_DOWNLOAD | Download logs — status (SUCCESS/ERROR) and execution time |



