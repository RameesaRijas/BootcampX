--Name of Teachers That Assisted
--We need to know which teachers actually assisted students during any cohort.

--Get the name of all teachers that performed an assistance request during a cohort.

--Select the instructor's name and the cohort's name.
--Don't repeat the instructor's name in the results list.
--Order by the instructor's name.
--This query needs to select data for a cohort with a specific name, use 'JUL02' for the cohort's name here.

SELECT distinct teachers.name AS teacher, cohorts.name AS chort
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = 'JUL02'
ORDER BY teachers.name;
