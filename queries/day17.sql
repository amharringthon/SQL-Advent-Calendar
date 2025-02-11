-- Day 17: Advanced and Expert Grinch Pranks
SELECT prank_name, location
FROM grinch_pranks
WHERE difficulty = 'Expert' OR difficulty = 'Advanced'
ORDER BY prank_name DESC, location DESC;