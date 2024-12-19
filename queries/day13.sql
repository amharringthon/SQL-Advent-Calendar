-- Day 13: Balancing Santa's Sleigh
-- This query calculates the total weight of gifts for each recipient.
select recipient, sum(weight_kg) as total_weight
from gifts
group by recipient