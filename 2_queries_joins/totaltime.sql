
-- Get the total amount of time that a student has spent on all assignments.
SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE students.name = 'Ibrahim Schimmel';

-- SELECT count(assignment_submissions) as total_submissions
-- FROM assignment_submissions;

-- SELECT students.name as student, count(assignment_submissions.*) as total_submissions
-- FROM assignment_submissions
-- JOIN students ON students.id = student_id
-- WHERE students.end_date IS NULL 
-- GROUP BY students.name
-- HAVING count(assignment_submissions.*) < 100;