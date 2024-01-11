--1. List the employee number, last name, first name, sex, and salary of each employee.

SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM myschema.employees
JOIN myschema.salaries
ON employees.emp_no = salaries.emp_no
ORDER BY employees.last_name;

--2. List the first name, last name, and hire date for the employees who were hired in 1986.

SELECT last_name, first_name, hire_date
FROM myschema.employees
WHERE hire_date LIKE '%1986%'
ORDER BY last_name;

--3. List the manager of each department along with their department number, department name, employee number, last name, and first name.

SELECT dept_manager.emp_no, dept_manager.dept_no, employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM myschema.dept_manager
JOIN myschema.employees
ON dept_manager.emp_no = employees.emp_no
JOIN myschema.departments
ON dept_manager.dept_no = departments.dept_no
ORDER BY dept_name;

--4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

SELECT dept_emp.dept_no, employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM myschema.dept_emp
JOIN myschema.employees
ON dept_emp.emp_no = employees.emp_no
JOIN myschema.departments
ON dept_emp.dept_no = departments.dept_no
ORDER BY last_name;

--5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

SELECT employees.first_name, employees.last_name, employees.sex
FROM myschema.employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%'

--6. List each employee in the Sales department, including their employee number, last name, and first name.

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM myschema.dept_emp
JOIN myschema.employees
ON dept_emp.emp_no = employees.emp_no
JOIN myschema.departments
ON dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales'
ORDER BY last_name;

-- 7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM myschema.dept_emp
JOIN myschema.employees
ON dept_emp.emp_no = employees.emp_no
JOIN myschema.departments
ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name IN ('Sales', 'Development')
ORDER BY last_name;

--8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

SELECT employees.last_name, COUNT(last_name) AS frequency
FROM myschema.employees
GROUP BY last_name
ORDER BY last_name;






