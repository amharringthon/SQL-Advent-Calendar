-- Day 8: Gifts for "Good" Recipients
-- This query retrieves gifts meant for "good" recipients, listing their name and weight.
SELECT GIFT_NAME, WEIGHT_KG
FROM GIFTS
WHERE RECIPIENT_TYPE = 'good'
