-- Write a query that returns
--   the name of the school
--   plus the name of contact person at the school (from the mentors table)
--   ordered by the name of the school
-- columns: schools.name, mentors.first_name, mentors.last_name

SELECT s.name, m.first_name, m.last_name
FROM mentors m
JOIN schools s
ON m.id = s.contact_person
ORDER BY s.name