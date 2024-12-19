-- Day 5: Beaches with Temperatures Above 30°C
-- This query retrieves beaches with expected temperatures above 30°C on Christmas Day.
SELECT * 
FROM BEACH_TEMPERATURE_PREDICTIONS
WHERE EXPECTED_TEMPERATURE_C > 30
AND DATE = '2024-12-25'