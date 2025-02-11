-- Day 20: Vendors with Items Priced Below $10
SELECT DISTINCT vendor_name
FROM vendors v
LEFT JOIN item_prices i
ON v.vendor_id = i.vendor_id
WHERE price_usd < 10;