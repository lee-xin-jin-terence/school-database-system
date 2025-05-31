-- Query: Top-performing 5 students by average marks per year
-- Description: Calculates the average marks of each student per year and lists them in descending order of performance.
-- Use Case: Useful for generating academic reports or recognizing top students annually.


SELECT TOP 5                           -- Limit results to top 5 students
    s.studentId,                       -- Unique student identifier
    s.firstName,                      -- Student's first name
    s.lastName,                       -- Student's last name
    sr.year,                          -- Academic year
    AVG(sr.marks) AS averageMarks     -- Average marks calculated per student per year
FROM
    Student s
JOIN
    SubjectResult sr ON s.studentId = sr.studentId
GROUP BY
    s.studentId, s.firstName, s.lastName, sr.year
ORDER BY
    averageMarks DESC;                -- Rank by average marks (highest first)
