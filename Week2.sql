SELECT count(e.birth_date) AS "Birth Dates Per Dept", de.dept_name FROM employees e INNER JOIN dept_emp d ON e.emp_no = d.emp_no INNER JOIN departments de ON de.dept_no = d.dept_no WHERE e.birth_date > "1965-01-01" GROUP BY de.dept_name;
Select AVG(s.salary) AS "Avg Salaries", t.title FROM salaries s INNER JOIN titles t ON  s.emp_no = t.emp_no GROUP BY t.title;
SELECT d.dept_name, SUM(s.salary) AS "Sum Department Salary" FROM departments d INNER JOIN dept_emp de ON d.dept_no = de.dept_no INNER JOIN salaries s ON s.emp_no = de.emp_no WHERE d.dept_name = "Marketing" AND s.from_date >= "1990-01-01" AND s.to_date <= "1992-01-01" GROUP BY d.dept_name;