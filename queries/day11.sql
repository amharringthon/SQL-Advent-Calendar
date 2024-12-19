-- Day 11: December Birthdays
-- This query retrieves family members with birthdays in December 2024, sorted by date.
SELECT NAME, BIRTHDAY
FROM FAMILY_MEMBERS
WHERE BIRTHDAY BETWEEN '2024-12-01' AND '2024-12-31'
ORDER BY BIRTHDAY