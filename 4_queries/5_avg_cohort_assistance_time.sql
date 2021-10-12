--Average Cohort Assistance Time
--We need to be able to see the average duration of a single assistance request for each cohort.

--Get the average duration of assistance requests for each cohort.

--Select the cohort's name and the average assistance request time.
--Order the results from shortest average to longest.


SELECT cohorts.name, AVG(completed_at - started_at) AS average_assistance_time
FROM assistance_requests JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
ORDER BY average_assistance_time;