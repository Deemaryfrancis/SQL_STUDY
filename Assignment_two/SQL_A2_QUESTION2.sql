SELECT brewery_type, AVG(rating) as 'Average Rating'
FROM brewies
group by brewery_type