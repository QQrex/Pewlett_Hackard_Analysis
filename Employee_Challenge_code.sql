-- Retirement Title table from 01-01-1952 to 12-31-1955
SELECT e.emp_no,
		e.first_name,
		e.last_name,
		t.title,
		t.from_date,
		t.to_date
INTO retirement_titles
FROM employees as e
LEFT JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

-- EXPORT retirement titles
COPY retirement_titles TO 'C:\Users\Public\Postgres_Exports\retirement_titles.csv' DELIMITER ',' CSV HEADER;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
					first_name,
					last_name,
					title,
					from_date,
					to_date
INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no, from_date DESC;

SELECT * FROM retirement_titles

--EXPORT unique titles
COPY unique_titles TO 'C:\Users\Public\Postgres_Exports\unique_titles.csv' DELIMITER ',' CSV HEADER;

--Retiriement Title table count
SELECT COUNT(emp_no),
	title
INTO retiring_titles_count
FROM unique_titles
GROUP BY title

-- EXPORT Retirement Title table count
COPY retiring_titles_count TO 'C:\Users\Public\Postgres_Exports\retiring_titles.csv' DELIMITER ',' CSV HEADER;


-- Mentor table
SELECT DISTINCT ON (e.emp_no) e.emp_no,
			e.first_name,
			e.last_name,
			e.birth_date,
			de.from_date,
			de.to_date,
			t.title
INTO mentor_table
FROM employees as e
LEFT JOIN dept_employees as de
	ON (e.emp_no = de.emp_no)
LEFT JOIN titles as t
	ON (e.emp_no = t.emp_no)
WHERE (de.to_date = '9999-01-01') 
	AND(e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;

-- EXPORT Mentor table
COPY mentor_table TO 'C:\Users\Public\Postgres_Exports\mentor_eligibilty.csv' DELIMITER ',' CSV HEADER;


