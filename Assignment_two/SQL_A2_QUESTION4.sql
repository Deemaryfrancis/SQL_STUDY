select deep.name from (SELECT name, min(ACOS( SIN(6.524379)*SIN(latitude) + COS(6.524379)*COS(latitude)*COS(longitude-3.379206))*6371000) as myrank  
FROM brewies
group by name
order by myrank) deep
where deep.myrank = (select min(deep.myrank) from (
SELECT name, min(ACOS( SIN(6.524379)*SIN(latitude) + COS(6.524379)*COS(latitude)*COS(longitude-3.379206))*6371000) as myrank  
FROM brewies
group by name
order by myrank) as deep)