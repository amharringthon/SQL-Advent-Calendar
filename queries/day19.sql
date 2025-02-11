-- Day 19: Polar Bears' Largest Meals in December 2024
SELECT bear_name, biggest_meal_kg
FROM polar_bears p
LEFT JOIN (
  SELECT bear_id, MAX(food_weight_kg) AS biggest_meal_kg
  FROM meal_log
  WHERE meal_log.date BETWEEN '2024-12-01' AND '2024-12-31'
  GROUP BY bear_id
) m
ON p.bear_id = m.bear_id
ORDER BY biggest_meal_kg DESC;