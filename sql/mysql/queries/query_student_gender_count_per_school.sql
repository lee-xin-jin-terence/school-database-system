-- Query: Count of male and female students per school in one row
-- Description: Retrieves the count of male and female students for each school, showing both counts side by side.
-- Use Case: Useful for demographic analysis and gender ratio reporting per school.

SELECT 
    sch.name AS schoolName, 
    SUM(CASE WHEN s.gender = 'M' THEN 1 ELSE 0 END) AS maleCount, 
    SUM(CASE WHEN s.gender = 'F' THEN 1 ELSE 0 END) AS femaleCount  
FROM 
    Student s 
JOIN 
    School sch ON s.schoolId = sch.schoolId 
GROUP BY 
    sch.name 
ORDER BY 
    sch.name;
