--Cohort With Longest Assistances
--Get the cohort with the longest average duration of assistance requests.

SELECT cohorts.name, AVG(completed_at - started_at) AS average_assistance_time
FROM assistance_requests x
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
ORDER BY average_assistance_time desc
LIMIT 1;