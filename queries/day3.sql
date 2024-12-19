-- Day 3: Ranking Candies by Calories
-- This query ranks candies within each category based on their calorie count.
SELECT CANDY_NAME, CALORIES, CANDY_CATEGORY,
ROW_NUMBER() OVER(PARTITION BY CANDY_CATEGORY ORDER BY CALORIES DESC) AS RANK_IN_CATEGORY
FROM CANDY_NUTRITION;