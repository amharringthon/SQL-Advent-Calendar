-- Day 4: Average Snowfall by Region
-- This query calculates the average snowfall for each region and sorts them in descending order.
SELECT region, AVG(snowfall_inches) AS average_snowfall
FROM (
  SELECT region, snowfall_inches
  FROM ski_resorts sr
  LEFT JOIN snowfall sn
  ON sr.resort_id = sn.resort_id
) subquery
GROUP BY region
ORDER BY AVG(snowfall_inches) DESC;