-- Query: List each teacher's subjects with total hours taught per year
-- Description: Aggregates the total teaching hours for each teacher by subject and year.
-- Use Case: Useful for evaluating teacher workload and subject coverage annually.

SELECT
    t.teacherId AS teacherId,
    t.firstName AS firstName,
    t.lastName AS lastName,
    s.subjectTitle AS subjectTitle,
    ttr.year AS year,
    SUM(ttr.hoursTaught) AS totalHours
FROM
    Teacher t
JOIN
    TeacherTeachingRecord ttr ON t.teacherId = ttr.teacherId
JOIN
    Subject s ON ttr.subjectId = s.subjectId
GROUP BY
    t.teacherId, t.firstName, t.lastName, s.subjectTitle, ttr.year
ORDER BY
    t.teacherId, ttr.year, s.subjectTitle;
