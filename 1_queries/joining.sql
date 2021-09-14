-- SELECT students.name as student_name, email, cohorts.name as cohort_name
-- FROM students JOIN cohorts ON cohort_id = cohorts.id;


-- SELECT students.name as student_name, email, cohorts.name as cohort_name
-- FROM students  FULL OUTER JOIN  cohorts ON cohorts.id = cohort_id;

SELECT students.name as student_name, students.start_date as student_start_date , cohorts.name as cohort_name, cohorts.start_date as cohort_start_date
FROM students
 JOIN cohorts ON cohort_id = cohorts.id   --- joining two tables with ids
 WHERE cohorts.start_date != students.start_date  -- when cohort start date is not equal to student start date
ORDER BY cohorts.start_date;


-- An INNER JOIN will only return results where there is a match between the two tables.
-- An OUTER JOIN will do the same as an INNER JOIN but also returns unmatched rows in one or both tables. An OUTER JOIN can be LEFT, RIGHT, or FULL.