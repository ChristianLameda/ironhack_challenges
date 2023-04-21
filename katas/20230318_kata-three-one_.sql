-- SQL Basics: Group By Day

SELECT DATE(created_at) AS "day", description, COUNT(*) AS "count"
FROM events
WHERE name = 'trained'
GROUP BY "day", description;

-- Countries Capitals for Trivia Night (SQL for Beginners #6)

SELECT capital
FROM countries
WHERE country LIKE 'E%'
AND continent IN ('Africa','Afrika')
ORDER BY capital ASC
LIMIT 3;

-- SQL Bug Fixing: Fix the QUERY - Totaling

SELECT
DATE (s.transaction_date) AS day,
d.name AS department,
COUNT (s.id) AS sale_count
FROM department d
INNER JOIN sale s
ON d.id = s.department_id
GROUP BY day, d.name
ORDER BY day ASC;