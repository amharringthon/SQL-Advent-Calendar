-- Day 15: Top Parents by Number of Children
-- This query retrieves the top 3 family members with the most children.
SELECT name,
COUNT(child_id) AS total_children
FROM parent_child_relationships
LEFT JOIN family_members
ON parent_id = member_id
GROUP BY name
ORDER BY COUNT(child_id) DESC
LIMIT 3;