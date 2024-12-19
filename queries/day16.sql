-- Day 16: Total Revenue by Candy Category
-- This query calculates the total revenue for each candy category.
SELECT category, 
SUM(quantity_sold * price_per_unit) AS total_revenue
FROM candy_sales
GROUP BY category
ORDER BY total_revenue DESC;