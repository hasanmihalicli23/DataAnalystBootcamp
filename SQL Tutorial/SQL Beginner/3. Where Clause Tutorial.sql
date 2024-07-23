-- WHERE CLAUSE

SELECT *
FROM employee_salary
WHERE first_name = "Leslie"
;

SELECT *
FROM employee_salary
WHERE salary >= 50000
;

SELECT *
FROM employee_salary
WHERE salary <= 50000
;

SELECT *
FROM employee_demographics
WHERE gender = "female"
;

SELECT *
FROM employee_demographics
WHERE gender != "female"
;

SELECT *
FROM employee_demographics
WHERE birth_date > "1985-01-01"
;

-- AND OR NOT -- Logical Operaotrs

SELECT *
FROM employee_demographics
WHERE birth_date > "1985-01-01"
AND gender = "male"
;

SELECT *
FROM employee_demographics
WHERE birth_date > "1985-01-01"
OR gender = "male"
;

SELECT *
FROM employee_demographics
WHERE birth_date > "1985-01-01"
OR NOT gender = "male"
;

SELECT *
FROM employee_demographics
WHERE (first_name = "Leslie" AND age = 44) OR age > 55
;

-- LIKE STATMENT
-- % and _  > % bize devamında bir şey ya da öncesinde bir şey olduğunu gösterir. _ Bu ise bu kadarlık karakter var der sonrasında ya da öncesinde ona göre bulur.

SELECT *
FROM employee_demographics
WHERE first_name LIKE "%er%"
;

SELECT *
FROM employee_demographics
WHERE first_name LIKE "a__"
;

SELECT *
FROM employee_demographics
WHERE first_name LIKE "a___%"
;

SELECT *
FROM employee_demographics
WHERE birth_date LIKE "1989%"
;