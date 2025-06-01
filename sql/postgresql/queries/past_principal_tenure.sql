-- Query: Retrieve all past principals with their school name and tenure in days
-- Description: Lists principals who have ended their tenure, showing their first and last names, associated school, start and end dates, and calculates the tenure duration in days.
-- Use Case: Useful for historical reporting on school leadership and analyzing principal tenure lengths.

SELECT
    p.firstname,
    p.lastname,
    s.name AS schoolname,
    p.startdate,
    p.enddate,
    (p.enddate - p.startdate) AS tenureindays
FROM
    principal p
INNER JOIN
    school s ON p.schoolid = s.schoolid
WHERE
    p.enddate IS NOT NULL;
