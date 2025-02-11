-- Day 21: Weight Distribution of Gifts by Recipient Type
SELECT recipient_type,
       total_weight,
       ROUND((total_weight * 100.0) / SUM(total_weight) OVER (), 2) AS weight_percentage
FROM (
  SELECT recipient_type, SUM(weight_kg) AS total_weight
  FROM gifts
  GROUP BY recipient_type
) subquery;