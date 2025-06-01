-- Query: Count total number of students enrolled in each school
-- Description: Counts the total number of students per school, including schools with zero students.
-- Use Case: Helps administration track student population size by school.

SELECT 
    sc.schoolId AS schoolId,
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
