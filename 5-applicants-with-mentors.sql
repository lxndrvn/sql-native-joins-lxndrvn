-- Write a query that returns
--   the first name and the code of the applicants
--   plus the name of the assigned mentor (joining through the applicants_mentors table)
--   ordered by the applicants id column

-- Show all the applicants, even if they have no assigned mentor in the database!
--   In this case use the string 'None' instead of the mentor name

-- columns: applicants.first_name, applicants.application_code, mentor_first_name, mentor_last_name

SELECT a.first_name, a.application_code, coalesce(m.first_name, 'None') as mentor_first_name, 
coalesce(m.last_name, 'None') as mentor_last_name
FROM applicants_mentors am
FULL OUTER JOIN applicants a ON a.id = am.applicant_id
FULL OUTER JOIN mentors m ON m.id = am.mentor_id
ORDER BY a.id

