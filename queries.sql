SELECT * FROM dept_employees;

--DROP TABLE titles CASCADE;

SELECT first_name, last_name, birth_date
FROM employees
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31';

SELECT first_name, last_name, birth_date
FROM employees
WHERE birth_date BETWEEN '1952-01-01' AND '1952-12-31';

SELECT first_name, last_name, birth_date
FROM employees
WHERE birth_date BETWEEN '1953-01-01' AND '1953-12-31';

SELECT first_name, last_name, birth_date
FROM employees
WHERE birth_date BETWEEN '1954-01-01' AND '1954-12-31';

SELECT first_name, last_name, birth_date
FROM employees
WHERE birth_date BETWEEN '1955-01-01' AND '1955-12-31';

-- Retirement eligibility
SELECT first_name, last_name, birth_date
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01-' AND '1988-12-31');

-- Count of employees retiring
SELECT COUNT(first_name)
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01-' AND '1988-12-31');

-- Add retirement info into retirement_info
SELECT first_name, last_name
INTO retirement_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01-' AND '1988-12-31');

SELECT * FROM retirement_info;

-- EXPORT retirement table to public folder
COPY departments TO 'C:\Users\Public\Postgres_Exports\retirement_info.csv' DELIMITER ',' CSV HEADER;

--Create new table from retiring employees
--DROP TABLE retirement_info;

--Create new table from retiring employees
SELECT emp_no, first_name, last_name
INTO retirment_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31')
-- Chect the table
SELECT * FROM retirment_info

-- Joining departments and dept_manager tables
SELECT departments.dept_name,
	dept_manager.emp_no,
	dept_manager.from_date,
	dept_manager.to_date
FROM departments
INNER JOIN dept_manager
ON departments.dept_no = dept_manager.dept_no;