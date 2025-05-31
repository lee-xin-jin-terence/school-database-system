-- Query: Retrieve the top 5 teachers who have taught the most hours in each academic year.
-- Description: Calculates the total teaching hours of each teacher per year and lists the top 5 teachers by hours taught in descending order.
-- Use Case: Useful for identifying highly engaged teachers or allocating teaching resources effectively.


SELECT TOP 5
    t.teacherId,
    t.firstName,
    t.lastName,
    SUM(ttr.hoursTaught) AS totalHours,
    ttr.year
FROM
    Teacher t
JOIN
    TeacherTeachingRecord ttr ON t.teacherId = ttr.teacherId
GROUP BY
    t.teacherId, t.firstName, t.lastName, ttr.year
ORDER BY
    totalHours DESC;
