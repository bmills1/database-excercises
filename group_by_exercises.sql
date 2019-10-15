USE employees;

SELECT DISTINCT title FROM titles;

SELECT last_name
FROM employees
WHERE last_name LIKE 'E%E'
GROUP BY last_name;

SELECT last_name, first_name AS NAME
FROM employees
WHERE last_name LIKE 'E%E'
GROUP BY last_name, first_name;

SELECT last_name
FROM employees
WHERE last_name LIKE '%Q%' and last_name NOT LIKE '%QU%'
GROUP BY last_name;

SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE '%Q%' and last_name NOT LIKE '%QU%'
GROUP BY last_name;

SELECT last_name, COUNT(*)
FROM employees
WHERE last_name LIKE '%Q%' and last_name NOT LIKE '%QU%'
GROUP BY last_name;



SELECT count(*) AS Total ,gender
from employees
where first_name = 'Irena'
   or first_name = 'Vidya'
   or first_name = 'Maya'
group by gender;

