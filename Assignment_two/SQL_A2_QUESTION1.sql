SELECT name FROM brewies
where rating = (
select max(rating) from brewies
)