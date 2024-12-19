-- Day 9: Most Calorie-Dense Dishes by Event
-- This query retrieves the top 3 calorie-dense dishes for each event, calculated as calories per gram.
SELECT DISH_NAME, EVENT_NAME, CALORIE_DENSITY, RN FROM (
SELECT M.DISH_NAME, E.EVENT_NAME, 
CALORIES/WEIGHT_G AS CALORIE_DENSITY,
ROW_NUMBER() OVER(PARTITION BY M.EVENT_ID 
ORDER BY CALORIES/WEIGHT_G DESC) AS RN
FROM MENU M
LEFT JOIN EVENTS E
ON M.EVENT_ID = E.EVENT_ID ) WHERE RN <= 3