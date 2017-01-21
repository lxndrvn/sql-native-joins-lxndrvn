-- Write a query that returns
--  the number of the mentors per country
--  ordered by the name of the countries
-- columns: country, count

SELECT s.country, COUNT(m.id)
FROM mentors m
JOIN schools s
ON m.city = s.city
GROUP BY s.country
ORDER BY s.country;
