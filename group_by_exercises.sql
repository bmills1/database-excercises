USE employees;
SELECT DISTINCT title FROM titles;

SELECT last_name
FROM employees
WHERE last_name LIKE 'e%' and last_name LIKE '%e'
GROUP BY last_name;

SELECT DISTINCT CONCAT(last_name,",", first_name) AS NAME
FROM employees
WHERE last_name LIKE 'e%' and last_name LIKE '%e'
GROUP BY last_name, first_name;

SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE '%q%' and last_name NOT LIKE '%qu%'
GROUP BY last_name;

SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE '%q%' and last_name NOT LIKE '%qu%'
GROUP BY last_name;

SELECT last_name, COUNT(*)
FROM employees
WHERE last_name LIKE '%q%' and last_name NOT LIKE '%qu%'
GROUP BY last_name
ORDER BY last_name;


SELECT count(*),gender
from employees
where first_name = 'Irena' or first_name = 'Vidya' or first_name = 'Maya'
group by gender;

