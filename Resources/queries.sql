-- 1. Create a list of employee number, last name, first name, sex, and salary of each employee.
--    Inner join salaries and employees table
SELECT  e.emp_no, e.last_name, e.first_name, e.sex, s.salary
	FROM employees AS e
	INNER JOIN salaries AS s ON e.emp_no = s.salary;

-- 2. List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

-- 3.List the manager of each department along with their department number, department name, 
--   employee number, last name, and first name.
--   Inner join the departments table with the dept_manager table
--   Join the result from previous join with the employees table
SELECT d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
	FROM departments AS d
	INNER JOIN dept_manager AS dm ON d.dept_no = dm.dept_no
	INNER JOIN employees AS e ON dm.emp_no = e.emp_no;

-- 4. List the department number for each employee along with that employee’s employee number, 
--    last name, first name, and department name.
--    Inner join the departments table with the dept_emp table
--    Join the results from previous join with the employees table
SELECT d.dept_no, de.emp_no, e.last_name, e.first_name, d.dept_name
	FROM departments AS d
	INNER JOIN dept_emp AS de ON d.dept_no = de.dept_no
	INNER JOIN employees AS e ON de.emp_no = e.emp_no;

-- 5. List first name, last name, and sex of each employee whose first name is Hercules and whose 
--    last name begins with the letter B.
SELECT first_name, last_name, sex
	FROM employees
		WHERE first_name = 'Hercules'
		AND last_name LIKE 'B%';

-- 6. List each employee in the Sales department, including their employee number, last name, and first name.
SELECT e.emp_no, e.last_name, e.first_name
FROM employees AS e
WHERE e.emp_no IN (
    SELECT de.emp_no
    FROM dept_emp AS de
    WHERE de.dept_no = 'd007'
);

-- 7. List each employee in the Sales and Development departments, including their employee number, last name, 
--    first name, and department name.
--    Inner join the employee able with dept_emp table
--    Inner join results with departments
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
	FROM employees AS e
	INNER JOIN dept_emp AS de ON e.emp_no = de.emp_no
	INNER JOIN departments AS d ON de.dept_no = d.dept_no
	WHERE d.dept_name IN ('Sales', 'Development');

-- 8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees
--    share each last name).
--    Use Group by then order by function
SELECT last_name, COUNT(*) AS frequency
	FROM employees
	GROUP BY last_name
	ORDER BY frequency DESC;