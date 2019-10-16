USE employees;
SELECT departments.dept_name AS 'Department Name', CONCAT(employees.first_name," ", employees.last_name) AS 'Department Manager'
FROM employees
JOIN dept_manager ON dept_manager.emp_no = employees.emp_no
JOIN departments ON dept_manager.dept_no = departments.dept_no
WHERE dept_manager.to_date > NOW()
ORDER BY departments.dept_name;

SELECT departments.dept_name AS 'Department Name', CONCAT(employees.first_name," ", employees.last_name) AS 'Manager Name'
FROM departments
JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
JOIN employees ON dept_manager.emp_no = employees.emp_no
WHERE employees.gender = 'F' AND dept_manager.to_date > NOW()
ORDER BY departments.dept_name;

SELECT titles.title AS Title, count(*) AS Count
FROM titles
JOIN employees ON titles.emp_no = employees.emp_no
JOIN dept_emp ON titles.emp_no = dept_emp.emp_no
JOIN departments on dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Customer Service' AND titles.to_date > NOW() and dept_emp.to_date > NOW()
GROUP BY title;

SELECT departments.dept_name  AS 'Department Name', CONCAT(employees.first_name, " ", employees.last_name) AS Name, MAX(salaries.salary) AS Salary
FROM departments
JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
JOIN employees ON dept_manager.emp_no = employees.emp_no
JOIN salaries ON employees.emp_no = salaries.emp_no
WHERE dept_manager.to_date > NOW()
GROUP BY departments.dept_name, employees.first_name, employees.last_name
;

SELECT DISTINCT CONCAT(employees.first_name, " ", employees.last_name) AS Name
FROM employees
LEFT JOIN dept_manager on employees.emp_no = dept_manager.emp_no
RIGHT JOIN dept_emp on dept_manager.dept_no = dept_emp.dept_no
WHERE dept_manager.to_date < NOW() and dept_emp.to_date > NOW()
group by dept_manager.emp_no, dept_emp.emp_no;





