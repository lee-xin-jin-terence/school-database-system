-- Query: Count total number of students enrolled in each school
-- Description: Counts the total number of students per school, including schools with zero students.
-- Use Case: Helps administration track student population size by school.

SELECT 
    sc.schoolid,
    sc.name AS schoolname,
    COUNT(s.studentid) AS totalstudents
FROM 
    school sc
LEFT JOIN 
    student s ON sc.schoolid = s.schoolid
GROUP BY 
    sc.schoolid, sc.name
ORDER BY 
    totalstudents DESC;
