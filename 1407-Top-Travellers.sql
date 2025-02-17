-- Write your PostgreSQL query statement below
SELECT Users.name, COALESCE(SUM(distance), 0) AS travelled_distance FROM Users
LEFT JOIN Rides ON Users.id = Rides.user_id
GROUP BY Rides.user_id, Users.name
ORDER BY travelled_distance DESC, name ASC;  
