-- Query: Retrieve all past principals with their school name and tenure in days
-- Description: Lists principals who have ended their tenure, showing their first and last names, associated school, start and end dates, and calculates the tenure duration in days.
-- Use Case: Useful for historical reporting on school leadership and analyzing principal tenure lengths.


SELECT
    p.firstName AS firstName,
    p.lastName AS lastName,
    s.name AS schoolName,
    p.startDate AS startDate,
    p.endDate AS endDate,
    (p.endDate - p.startDate) AS tenureInDays
FROM
    Principal p
INNER JOIN
    School s ON p.schoolId = s.schoolId
WHERE
    p.endDate IS NOT NULL;
