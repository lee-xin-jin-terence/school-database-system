-- Query: Subjects taught by a specified teacher with total hours.
-- Description: Retrieves all subjects taught by a specified teacher (e.g., teacherId = 2), aggregating the total hours taught per subject.
-- Use Case: Useful for teacher workload reports and subject allocation reviews.


SELECT
    t.teacherId,
    t.firstName,
    t.lastName,
    sub.subjectId,
    sub.subjectTitle,
    SUM(ttr.hoursTaught) AS totalHoursTaught 
FROM 
    Teacher t 
JOIN
    TeacherTeachingRecord ttr ON t.teacherId = ttr.teacherId 
JOIN
    Subject sub ON ttr.subjectId = sub.subjectId 
WHERE
    t.teacherId = 2  
GROUP BY 
    t.teacherId, t.firstName, t.lastName, sub.subjectId, sub.subjectTitle 
ORDER BY 
    totalHoursTaught DESC; 
