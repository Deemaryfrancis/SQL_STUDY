SELECT state, max(rating)
FROM brewies
group by state
order by state