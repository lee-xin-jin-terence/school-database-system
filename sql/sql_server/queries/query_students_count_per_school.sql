-- Description: Counts the total number of students enrolled in each school.
-- Use Case: Helps the administration track student population size by school.

SELECT 
    sc.schoolId,
    sc.name AS schoolName,
    COUNT(s.studentId) AS totalStudents
FROM 
    School sc
LEFT JOIN 
    Student s ON sc.schoolId = s.schoolId
GROUP BY 
    sc.schoolId, sc.name
ORDER BY 
    totalStudents DESC;
