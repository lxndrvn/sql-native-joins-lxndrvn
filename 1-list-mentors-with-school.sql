--  Write a query that returns
--   the name of the mentors
--   plus the name and country of the school (joining with the schools table)
--   ordered by the mentors id column
--  columns: mentors.first_name, mentors.last_name, schools.name, schools.country

SELECT first_name, last_name, name, country
FROM mentors m
JOIN schools s
ON m.city = s.city
ORDER BY m.id;


