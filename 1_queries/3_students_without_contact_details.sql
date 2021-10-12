--Contact Details
--We need to make sure that we can contact students through a phone number or through email. If student's don't have a phone number or email associated with their account, we'll need to message them on slack to update their details.

--Get all of the students that don't have an email or phone number.

--Get their name, id, and cohort_id.

SELECT name, cohort_id
FROM students
WHERE phone IS NULL OR
email IS NULL;