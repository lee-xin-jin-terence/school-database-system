-- Query: Average marks per subject
-- Description: Calculates the average marks obtained by students in each subject, rounded to 2 decimal places, and lists them in descending order.
-- Use Case: Useful for identifying subjects with higher or lower student performance.


SELECT 
    sub.subjectTitle AS subjectTitle,
    ROUND(AVG(sr.marks), 2) AS averageMarks
FROM 
    SubjectResult sr
JOIN
    Subject sub ON sr.subjectId = sub.subjectId
GROUP BY 
    sub.subjectTitle
ORDER BY
    ROUND(AVG(sr.marks), 2) DESC;
