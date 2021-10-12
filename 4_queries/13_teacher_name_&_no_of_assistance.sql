--Name of Teachers and Number of Assistances
--We need to know which teachers actually assisted students during any cohort, and how many assistances they did for that cohort.

SELECT DISTINCT teachers.name AS teacher, cohorts.name AS chort, COUNT(assistance_requests.*) AS total_assistances
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = 'JUL02'
GROUP BY teachers.name,cohorts.name
ORDER BY teacher;