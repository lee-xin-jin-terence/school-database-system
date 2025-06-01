-- Query: Average marks per subject
-- Description: Calculates the average marks obtained by students in each subject, rounded to 2 decimal places, and lists them in descending order.
-- Use Case: Useful for identifying subjects with higher or lower student performance.

SELECT 
    sub.subjecttitle AS subjecttitle,
    ROUND(AVG(sr.marks)::numeric, 2) AS averagemarks
FROM 
    subjectresult sr
JOIN
    subject sub ON sr.subjectid = sub.subjectid
GROUP BY 
    sub.subjecttitle
ORDER BY
    averagemarks DESC;
