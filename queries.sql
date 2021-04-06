--Data Analysis
--1.List the following details of each employee: employee number, last name, first name, sex, and salary.

select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
from employees
left join salaries
on employees.emp_no = salaries.emp_no
order by salary desc;


--2.List first name, last name, and hire date for employees who were hired in 1986.

select * from employees
where date_part ('year', hire_date) = 1986


--3.List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name.

select dept_manager.dept_no, dept_manager.emp_no, employees.last_name, employees.first_name,
from dept_manager
left join departments
on 