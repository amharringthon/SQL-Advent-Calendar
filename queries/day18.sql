-- Day 18: Top Activities for a "Summer Christmas" Party
SELECT activity_name, avg_rating
FROM 
activities a
left join (select activity_id, avg(rating) as avg_rating from
activity_ratings group by activity_id ) r
on a.activity_id = r.activity_id
order by avg_rating desc
limit 2