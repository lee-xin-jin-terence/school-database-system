-- Retrieve all past principals along with their school name and tenure in days
SELECT
    p.firstName,
    p.lastName,
    s.name AS schoolName,
    p.startDate,
    p.endDate,
    DATEDIFF(DAY, p.startDate, p.endDate) AS tenureInDays
FROM
    Principal p
INNER JOIN
    School s ON p.schoolId = s.schoolId
WHERE
    p.endDate IS NOT NULL;
