
--Purpose: Review employees within the next retirement-ready cohort (1952-1955)
--Retrieve the emp_no, first_name, and last_name columns from the Employees table.
SELECT emp_no, first_name, last_name 
FROM employees
--Retrieve the title, from_date, and to_date columns from the Titles table.
SELECT title, from_date, to_date 
FROM titles
--Create a new table using the INTO clause
SELECT employees.emp_no,
     employees.first_name,
     employees.last_name,
     titles.title,
	 titles.from_date,
	 titles.to_date
INTO retirement_titles
FROM employees
--Join both tables on the primary key.
--Filter the data on the birth_date column to retrieve the employees who were born between 1952 and 1955. Then, order by the employee number.
--Export the Retirement Titles table from the previous step as retirement_titles.csv and save it to your Data folder in the Pewlett-Hackard-Analysis folder.

INNER JOIN titles
ON employees.emp_no = titles.emp_no
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31';

--Purpose: Review current roles only of next retirement-ready cohort (1952-1955)
-- Use Dictinct with Orderby to remove duplicate rows and create a unique_titles table
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title

INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;

-- Purpose: Identify the 'silver tsunami (1952--1955) impact to specific roles(count per role) 
--Utilizing the unique_titles table create a new table retiring_titles that identify the total count of people 
Select Count(emp_no) as totaltitle,title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY totaltitle DESC;


-- Purpose: Identify current employees a decade younger (1965) where proactive mentoring may benefit and lessen the impact of the silver tsunami 
--Retrieve the emp_no, first_name, last_name, and birth_date columns from the Employees table.
SELECT emp_no, first_name, last_name, birth_date
FROM employees
--Retrieve the from_date and to_date columns from the Department Employee table.
SELECT from_date, to_date 
FROM dept_employee

--Purpose: Determine the total count of mentoring_eligibility group from 1965 to understand if it sufficiently addresses the silver tzunami
--Retrieve the title column from the Titles table.
SELECT title
FROM titles
--Use a DISTINCT ON statement to retrieve the first occurrence of the employee number for each set of rows defined by the ON () clause.
SELECT DISTINCT ON (employees.emp_no)
employees.emp_no,
employees.first_name,
employees.last_name,
employees.birth_date,
dept_employee.from_date,
dept_employee.to_date,
titles.title
--Create a new table using the INTO INTO unique_titles
INTO mentorship_eligibility
FROM employees
--Join the Employees and the Department Employee tables on the primary key
INNER JOIN dept_employee
ON employees.emp_no = dept_employee.emp_no
--Join the Employees and the Titles tables on the primary 
INNER JOIN titles
ON employees.emp_no = titles.emp_no
--Filter the data on the to_date column to all the current employees, then filter the data on the birth_date columns to get all the employees whose birth dates are between January 1, 1965 and December 31, 1965.
WHERE dept_employee.to_date = '9999-01-01'AND (birth_date BETWEEN '1965-01-01' AND '1965-12-31')
--Order the table by the employee number.
ORDER BY employees.emp_no
--Export the Mentorship Eligibility table as mentorship_eligibilty.csv and save it to your Data folder in the Pewlett-Hackard-Analysis folder5


--Purpose: Determine total pool of mentorship eligible
SELECT COUNT (emp_no) as totalmentors
FROM mentorship_eligibility 


--Purpose run a expanded pool of replacement potentials to consider for mentorship
SELECT DISTINCT ON (employees.emp_no)
employees.emp_no,
employees.first_name,
employees.last_name,
employees.birth_date,
dept_employee.from_date,
dept_employee.to_date,
titles.title
--Create a new table using the INTO INTO unique_titles
INTO mentorship_eligibility_expansion
FROM employees
--Join the Employees and the Department Employee tables on the primary key
INNER JOIN dept_employee
ON employees.emp_no = dept_employee.emp_no
--Join the Employees and the Titles tables on the primary 
INNER JOIN titles
ON employees.emp_no = titles.emp_no 
WHERE (dept_employee.to_date = '9999-01-01') AND (employees.birth_date BETWEEN '1960-01-01' AND '1965-12-31')
--Order the table by the employee number.
ORDER BY employees.emp_no


