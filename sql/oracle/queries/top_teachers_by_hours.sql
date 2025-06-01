-- Query: Retrieve the top 5 teachers who have taught the most hours in each academic year.
-- Description: Calculates the total teaching hours of each teacher per year and lists the top 5 teachers by hours taught in descending order.
-- Use Case: Useful for identifying highly engaged teachers or allocating teaching resources effectively.



WITH RankedTeachers AS (
    SELECT
        t.teacherId,
        t.firstName,
        t.lastName,
        ttr.year,
        SUM(ttr.hoursTaught) AS totalHours,
        ROW_NUMBER() OVER (PARTITION BY ttr.year ORDER BY SUM(ttr.hoursTaught) DESC) AS rn
    FROM
        Teacher t
    JOIN
        TeacherTeachingRecord ttr ON t.teacherId = ttr.teacherId
    GROUP BY
        t.teacherId, t.firstName, t.lastName, ttr.year
)
SELECT
    teacherId,
    firstName,
    lastName,
    year,
    totalHours
FROM
    RankedTeachers
WHERE
    rn <= 5
ORDER BY
    year, totalHours DESC;
