# Pewlett_Hackard_Analysis

## Purpose

We have been task to identify all employees retiring from Pewlett Hackard and get a count per title. We are also tasked to find all employees eligible to participate in Pewlett Hackard's mentorship program.

## Project Overview

- Find number of retiring Employees by Title.

- Find Employees Eligible for the Mentorship Program

## Analysis

[Count of retiring Employees by Titles]

First, we need to create a table of all retiring employees. We have determined that employee's from January 1, 1952 to December 31, 1955 would be eligble for retirment. We also need to consider employees that may have already retired or left the the company when creating our new table.

![rtable](https://github.com/QQrex/Pewlett_Hackard_Analysis/blob/main/Resources/retirment%20table.PNG)
>Line 2 to 7 - Use SELECT to list all the columns we want to view for our new table.
>Line 8 - Use INTO to name our output table.
>Line 9 - Use FROM to call employees table for our SELECT list of column emp_no, first_name and last_name. We are also abbreviating employees table as 'e'.
>Line 10 - Use LEFT JOIN to join
