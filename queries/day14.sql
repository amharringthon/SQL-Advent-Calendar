-- Day 14: Resorts with Significant Snowfall
-- This query retrieves resorts with snowfall greater than 50 inches.
SELECT *
FROM snowfall
WHERE snowfall_inches > 50;