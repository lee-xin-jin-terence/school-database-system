-- Query: List students with their subjects and grades for a specific term and year
-- Description: Retrieves all students along with their subject titles, marks, and grades for a given term and academic year.
-- Use Case: Useful for generating term report cards or academic performance reviews.

SELECT
    s.studentid,
    s.firstname,
    s.lastname,
    sub.subjecttitle,
    sr.marks,
    sr.grade,
    sr.term,
    sr.year
FROM
    student s
JOIN
    subjectresult sr ON s.studentid = sr.studentid
JOIN
    subject sub ON sr.subjectid = sub.subjectid
WHERE
    sr.term = 'Term 1' AND sr.year = 2024
ORDER BY
    s.lastname, s.firstname, sub.subjecttitle;
