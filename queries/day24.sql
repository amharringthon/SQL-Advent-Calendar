-- Day 24: Cumulative Gifts Delivered
SELECT delivery_date,
       SUM(gifts_delivered) OVER (ORDER BY delivery_date) AS cumulative_sum
FROM deliveries;