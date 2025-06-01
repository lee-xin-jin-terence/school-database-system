-- Query: Count of male and female students per school in one row
-- Description: Retrieves the count of male and female students for each school, showing both counts side by side.
-- Use Case: Useful for demographic analysis and gender ratio reporting per school.


SELECT 
    sch.name AS schoolname, 
    COUNT(CASE WHEN s.gender = 'M' THEN 1 END) AS malecount, 
    COUNT(CASE WHEN s.gender = 'F' THEN 1 END) AS femalecount  
FROM 
    student s 
JOIN 
    school sch ON s.schoolid = sch.schoolid 
GROUP BY 
    sch.name 
ORDER BY 
    sch.name;
