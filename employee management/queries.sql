-- all active employees 
SELECT * 
FROM employees
WHERE is_active=true;


-- number of employees for each department 
SELECT 
	d.name, 
	COUNT(e.id)
FROM employees e
JOIN departments d ON d.id = e.department_id
GROUP BY d.name
ORDER BY COUNT(e.id) DESC; 


-- employee without manager 
SELECT * 
FROM employees
WHERE manager_id IS NULL;


-- employees name and salaries 
SELECT 
    e.full_name,
    s.amount AS current_salary,
    s.from_date AS salary_start_date
FROM employees e
JOIN salaries s ON e.id = s.employee_id
WHERE s.to_date IS NULL
ORDER BY s.amount DESC;


-- employees of a department 
SELECT 
    e.id,
    e.full_name,
    e.email,
    e.phone_number,
    e.gender,
    e.hire_date,
    d.name AS department_name,
    r.title AS role_title,
    m.full_name AS manager_name,
    e.is_active
FROM employees e
JOIN departments d ON e.department_id = d.id
JOIN roles r ON e.role_id = r.id
LEFT JOIN employees m ON e.manager_id = m.id
WHERE d.name = 'Engineering'
ORDER BY e.hire_date;


-- average salary for each department 
SELECT 
    d.name AS department_name,
    COUNT(e.id) AS employee_count,
    ROUND(AVG(s.amount), 2) AS average_salary,
    MIN(s.amount) AS min_salary,
    MAX(s.amount) AS max_salary
FROM departments d
JOIN employees e ON d.id = e.department_id
JOIN salaries s ON e.id = s.employee_id
WHERE s.to_date IS NULL
GROUP BY d.id, d.name
ORDER BY average_salary DESC;


-- employees hire in 2023
SELECT * 
FROM employees 
WHERE EXTRACT(YEAR FROM hire_date)=2023;


-- history of salary of one employee 
SELECT 
	e.full_name, 
	s.amount,
	s.from_date,
	s.to_date
FROM salaries s
JOIN employees e ON e.id=s.employee_id 
WHERE e.id=5;


-- emplyees with highest salary in each department
SELECT DISTINCT ON (e.department_id)
    e.full_name,
    d.name as department_name,
    s.amount
FROM employees e
JOIN salaries s ON e.id = s.employee_id AND s.to_date IS NULL
JOIN departments d ON e.department_id = d.id
WHERE e.is_active = true
ORDER BY e.department_id, s.amount DESC;
