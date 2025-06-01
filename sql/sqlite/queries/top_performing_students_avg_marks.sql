-- Query: Top-performing 5 students by average marks per year
-- Description: Calculates the average marks of each student per year and lists the top 5 per year in descending order.
-- Use Case: Useful for generating academic reports or recognizing top students annually.


WITH StudentAverages AS (
    SELECT
        s.studentId,
        s.firstName,
        s.lastName,
        sr.year,
        AVG(sr.marks) AS averageMarks,
        ROW_NUMBER() OVER (PARTITION BY sr.year ORDER BY AVG(sr.marks) DESC) AS rn
    FROM
        Student s
    JOIN
        SubjectResult sr ON s.studentId = sr.studentId
    GROUP BY
        s.studentId, s.firstName, s.lastName, sr.year
)
SELECT
    studentId,
    firstName,
    lastName,
    year,
    averageMarks
FROM
    StudentAverages
WHERE
    rn <= 5
ORDER BY
    year, averageMarks DESC;
