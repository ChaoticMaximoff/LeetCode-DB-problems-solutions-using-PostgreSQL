SELECT
    project_id,
    ROUND(AVG(experience_years), 2) AS average_years
FROM Project p LEFT JOIN Employee e USING (employee_id)
GROUP BY project_id;