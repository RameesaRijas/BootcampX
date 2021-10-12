--Average Assistance Time
--We need to be able to see the current average time it takes to complete an assistance request.

--Get the average time of an assistance request.

--Select just a single row here and name it average_assistance_request_duration

SELECT AVG(completed_at - started_at) AS average_assistance_request_duration
FROM assistance_requests;