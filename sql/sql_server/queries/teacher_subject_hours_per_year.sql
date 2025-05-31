-- Description: Lists each teacher's subjects along with the total hours taught per year.
-- Use Case: Useful for evaluating teacher workload and subject coverage annually.

SELECT
    t.teacherId,
    t.firstName,
    t.lastName,
    s.subjectTitle,
    ttr.year,
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
