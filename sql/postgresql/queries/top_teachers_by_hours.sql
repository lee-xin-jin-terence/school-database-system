-- Query: Retrieve the top 5 teachers who have taught the most hours in each academic year.
-- Description: Calculates the total teaching hours of each teacher per year and lists the top 5 teachers by hours taught in descending order.
-- Use Case: Useful for identifying highly engaged teachers or allocating teaching resources effectively.

WITH ranked_teachers AS (
    SELECT
        t.teacherid,
        t.firstname,
        t.lastname,
        ttr.year,
        SUM(ttr.hourstaught) AS totalhours,
        ROW_NUMBER() OVER (PARTITION BY ttr.year ORDER BY SUM(ttr.hourstaught) DESC) AS rn
    FROM
        teacher t
    JOIN
        teacherteachingrecord ttr ON t.teacherid = ttr.teacherid
    GROUP BY
        t.teacherid, t.firstname, t.lastname, ttr.year
)
SELECT
    teacherid,
    firstname,
    lastname,
    year,
    totalhours
FROM
    ranked_teachers
WHERE
    rn <= 5
ORDER BY
    year,
    totalhours DESC;
