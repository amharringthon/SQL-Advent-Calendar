-- Day 12: Top Snow Globes by Figurine Count
-- This query retrieves the top 3 snow globes with the highest number of figurines.
select globe_name, 
count(figurine_type) as number_of_figurines,
material
from (select *
from snow_globes s
left join figurines f
on s.globe_id = f.globe_id)
group by globe_name, material
order by count(figurine_type) desc
limit 3

