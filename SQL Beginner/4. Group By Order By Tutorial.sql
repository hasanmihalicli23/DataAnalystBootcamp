-- Group By

SELECT *
FROM employee_demographics
;

SELECT gender
FROM employee_demographics
GROUP BY gender
;

-- Bu bize hata verir çünkü iki alakası olmayan şeyi gruplamaya çalıştık.
SELECT first_name
FROM employee_demographics
GROUP BY gender
;

SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender
;

SELECT occupation, salary
FROM employee_salary
GROUP BY occupation, salary
;

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender
;

-- ORDER BY

SELECT *
FROM employee_demographics
ORDER BY first_name ASC
;

SELECT *
FROM employee_demographics
ORDER BY first_name DESC
;

SELECT *
FROM employee_demographics
ORDER BY gender, age DESC
;

-- ASC artan sıraya göre DESC azalan sıraya göre sıralar.
-- gender önce geldiği için daha uniqe davranıyor.

SELECT *
FROM employee_demographics
ORDER BY age, gender
;

-- gender, age yerine 5, 4 yaptık aynı şey ama tavsiye edilmiyor kullanmak.

SELECT *
FROM employee_demographics
ORDER BY 5, 4
;