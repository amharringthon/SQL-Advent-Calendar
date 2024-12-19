-- Day 1: Multi-Activity Rentals by Customer
-- This query retrieves customers who rented equipment for more than one type of activity.
SELECT CUSTOMER_NAME, COUNT(DISTINCT ACTIVITY)
FROM RENTALS
GROUP BY CUSTOMER_NAME
HAVING COUNT(DISTINCT ACTIVITY) > 1;