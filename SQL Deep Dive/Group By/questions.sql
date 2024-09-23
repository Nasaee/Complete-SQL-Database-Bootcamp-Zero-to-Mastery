/*
*  How many people were hired on any given hire date?
*  Database: Employees
*  Table: Employees
*/

SELECT hire_date, count(emp_no) as "amount" FROM employees 
GROUP BY hire_date
ORDER by "amount" DESC;

/*
*   Show me all the employees, hired after 1991 and count the amount of positions they've had
*  Database: Employees
*/

SELECT e.emp_no, count(t.title) as "amount of titles"
FROM employees as e
JOIN titles as t USING(emp_no)
WHERE EXTRACT (YEAR FROM e.hire_date) > 1991
GROUP BY e.emp_no
ORDER BY e.emp_no;


/*
*  Show me all the employees that work in the department development and the from and to date.
*  Database: Employees
*/

SELECT e.emp_no, de.from_date, de.to_date 
FROM employees as e 
join dept_emp as de using(emp_no)
where de.dept_no = 'd005'
group by emp_no, de.from_date, de.to_date
ORDER by emp_no, de.to_date;
