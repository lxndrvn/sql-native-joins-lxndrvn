-- Write a query that returns
--   the first name and the code of the applicants
--   plus the creation_date of the application (joining with the applicants_mentors table)
--   ordered by the creation_date in descending order
--   BUT only for applications later than 2016-01-01
-- columns: applicants.first_name, applicants.application_code, applicants_mentors.creation_date


SELECT a.first_name, a.application_code, am.creation_date
FROM applicants a
JOIN applicants_mentors am 
ON a.id = am.applicant_id
WHERE am.creation_date > '2016-01-01'
ORDER BY am.creation_date DESC;


