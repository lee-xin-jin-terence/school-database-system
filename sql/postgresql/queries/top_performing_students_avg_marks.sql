
-- Query: Top-performing 5 students by average marks per year
-- Description: Calculates the average marks of each student per year and lists the top 5 per year in descending order.
-- Use Case: Useful for generating academic reports or recognizing top students annually.

WITH student_averages AS (
    SELECT
        s.studentid,
        s.firstname,
        s.lastname,
        sr.year,
        AVG(sr.marks) AS averagemarks,
        ROW_NUMBER() OVER (PARTITION BY sr.year ORDER BY AVG(sr.marks) DESC) AS rn
    FROM
        student s
    JOIN
        subjectresult sr ON s.studentid = sr.studentid
    GROUP BY
        s.studentid, s.firstname, s.lastname, sr.year
)
SELECT
    studentid,
    firstname,
    lastname,
    year,
    averagemarks
FROM
    student_averages
WHERE
    rn <= 5;
