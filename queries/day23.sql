-- Day 23: Grinch's Daily Weight Changes
SELECT day_of_month,
       weight,
       weight - LAG(weight) OVER (ORDER BY day_of_month) AS diff
FROM grinch_weight_log;