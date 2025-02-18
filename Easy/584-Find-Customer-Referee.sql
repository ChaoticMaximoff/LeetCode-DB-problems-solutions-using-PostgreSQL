-- Write your PostgreSQL query statement below
SELECT name FROM Customer
WHERE referee_id IS DISTINCT FROM 2;

-- The WHERE clause could've been:
-- "WHERE referee_id != 2 OR referee_id IS NULL;"
-- to include null values as well because in SQL, the != (or <>) operator does not compare NULL values because NULL represents an unknown value. In SQL, any comparison with NULL results in NULL (which is treated as unknown or false in a WHERE clause).
-- But using "IS DISTINCT FROM" solves this issue because it treats NULL as if it was a known value, rather than a special case for unknown.
