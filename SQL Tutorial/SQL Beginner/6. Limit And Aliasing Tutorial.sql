-- Limit & Aliasing

SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 3
;

SELECT *
FROM employee_demographics
LIMIT 2, 1
;

-- Aliasing

SELECT gender, AVG(age) AS avg_Age
FROM employee_demographics
GROUP BY gender
HAVING avg_Age > 40
;