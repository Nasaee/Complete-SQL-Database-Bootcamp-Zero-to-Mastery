
/*
*  Show me all the employees, hired after 1991, that have had more than 2 titles
*  Database: Employees
*/
SELECT e.emp_no, count(t.title) as "titleAmount" FROM employees as e 
JOIN titles as t using(emp_no)
where EXTRACT(YEAR FROM e.hire_date) > 1991
group by e.emp_no
HAVING count(t.title) > 2


/*
*  Show me all the employees that have had more than 15 salary changes that work in the department development
*  Database: Employees
*/
SELECT e.emp_no, count(s.salary) from employees as e
JOIN salaries as s using(emp_no)
join dept_emp as de using(emp_no)
where de.dept_no = 'd005'
GROUP by e.emp_no
HAVING count(s.salary) > 15


/*
*  Show me all the employees that have worked for multiple departments
*  Database: Employees
*/

