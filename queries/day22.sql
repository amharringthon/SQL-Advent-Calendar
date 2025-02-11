-- Day 22: Guests Without Gifts
SELECT guest_name
FROM guests g
LEFT JOIN guest_gifts r
ON g.guest_id = r.guest_id
WHERE gift_name IS NULL;