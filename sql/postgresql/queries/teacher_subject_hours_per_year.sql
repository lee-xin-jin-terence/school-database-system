-- Query: List each teacher's subjects with total hours taught per year
-- Description: Aggregates the total teaching hours for each teacher by subject and year.
-- Use Case: Useful for evaluating teacher workload and subject coverage annually.

SELECT
    t.teacherid,
    t.firstname,
    t.lastname,
    s.subjecttitle,
    ttr.year,
    SUM(ttr.hourstaught) AS totalhours
FROM
    teacher t
JOIN
    teacherteachingrecord ttr ON t.teacherid = ttr.teacherid
JOIN
    subject s ON ttr.subjectid = s.subjectid
GROUP BY
    t.teacherid, t.firstname, t.lastname, s.subjecttitle, ttr.year
ORDER BY
    t.teacherid, ttr.year, s.subjecttitle;
