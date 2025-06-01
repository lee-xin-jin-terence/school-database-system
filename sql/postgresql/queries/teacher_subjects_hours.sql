-- Query: Subjects taught by a specified teacher with total hours.
-- Description: Retrieves all subjects taught by a specified teacher (e.g., teacherId = 2), aggregating the total hours taught per subject.
-- Use Case: Useful for teacher workload reports and subject allocation reviews.

SELECT
    t.teacherid,
    t.firstname,
    t.lastname,
    sub.subjectid,
    sub.subjecttitle,
    SUM(ttr.hourstaught) AS totalhourstaught 
FROM 
    teacher t 
JOIN
    teacherteachingrecord ttr ON t.teacherid = ttr.teacherid 
JOIN
    subject sub ON ttr.subjectid = sub.subjectid 
WHERE
    t.teacherid = 2  
GROUP BY 
    t.teacherid, t.firstname, t.lastname, sub.subjectid, sub.subjecttitle 
ORDER BY 
    totalhourstaught DESC;
