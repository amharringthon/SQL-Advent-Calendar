-- Day 4: Average Snowfall by Region
-- This query calculates the average snowfall for each region and sorts them in descending order.
SELECT REGION, AVG(SNOWFALL_INCHES)
FROM (
SELECT REGION, SNOWFALL_INCHES
FROM SKI_RESORTS SR
LEFT JOIN SNOWFALL SN
ON SR.RESORT_ID = SN.RESORT_ID)
GROUP BY REGION
ORDER BY AVG(SNOWFALL_INCHES) DES