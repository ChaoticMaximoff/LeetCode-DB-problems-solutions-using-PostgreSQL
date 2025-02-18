SELECT (
    SELECT num FROM MyNumbers
    GROUP BY num
    HAVING COUNT(num) = 1
    ORDER BY num DESC
    LIMIT 1
)
AS num;

-- Alternate solution:
-- SELECT MAX(num) AS num FROM (
--     SELECT num FROM MyNumbers
--     GROUP BY num
--     HAVING COUNT(num) = 1
--     ORDER BY num DESC
--     LIMIT 1
-- );