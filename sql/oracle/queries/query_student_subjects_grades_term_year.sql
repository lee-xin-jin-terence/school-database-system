-- Query: List students with their subjects and grades for a specific term and year
-- Description: Retrieves all students along with their subject titles, marks, and grades for a given term and academic year.
-- Use Case: Useful for generating term report cards or academic performance reviews.

SELECT
    s.studentId AS studentId,
    s.firstName AS firstName,
    s.lastName AS lastName,
    sub.subjectTitle AS subjectTitle,
    sr.marks AS marks,
    sr.grade AS grade,
    sr.term AS term,
    sr.year AS year
FROM
    Student s
JOIN
    SubjectResult sr ON s.studentId = sr.studentId
JOIN
    Subject sub ON sr.subjectId = sub.subjectId
WHERE
    sr.term = 'Term 1' AND sr.year = 2024
ORDER BY
    s.lastName, s.firstName, sub.subjectTitle;
