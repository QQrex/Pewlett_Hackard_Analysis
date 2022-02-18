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
>
>Line 8 - Use INTO to name our output table.
>
>Line 9 - Use FROM to call employees table for our SELECT list of columns emp_no, first_name and last_name. We are also abbreviating employees table as 'e'.
>
>Line 10 - Use LEFT JOIN to merge employees table with titles table.
>
>Line 11 - Use ON to state the tables merge on emp_no.
>
>Line 12 - Use WHERE to filter birth dates for employees eligble for retirement.
>
>Line 13 - Use ORDE BY to short new table by emp_no.

Next, we will export our new table and also check some of the output.

![ert](https://github.com/QQrex/Pewlett_Hackard_Analysis/blob/main/Resources/export%20retirement%20table.PNG)

![retirmentop](https://github.com/QQrex/Pewlett_Hackard_Analysis/blob/main/Resources/retirment%20output.PNG)

After checking our new retirement titles table, we notice that there are duplicate employee numbers. Upon further investigation, we can see some employees have been promoted in the company over the years in the titles table leading to duplicate employee numbers. To clean our data, we will have to use SELECT DISTINCT ON to return our new unique retirement table.

![ut](https://github.com/QQrex/Pewlett_Hackard_Analysis/blob/main/Resources/unique%20title.PNG)
> In this block of code, we are returning a single unique row based on the employee number.

We will check our new table and then export the export it into a new csv file.

![utop](https://github.com/QQrex/Pewlett_Hackard_Analysis/blob/main/Resources/unique%20title%20output.PNG)

![eut](https://github.com/QQrex/Pewlett_Hackard_Analysis/blob/main/Resources/export%20unique%20title.PNG)

Now that our table has been cleaned, we can count how many employees are retiring based on titles.

![rtc](https://github.com/QQrex/Pewlett_Hackard_Analysis/blob/main/Resources/retirment%20title%20count.PNG)

Next we will check our table and export it as a csv file.

![rtcop](https://github.com/QQrex/Pewlett_Hackard_Analysis/blob/main/Resources/retirement%20title%20count%20output.PNG)

![ert](https://github.com/QQrex/Pewlett_Hackard_Analysis/blob/main/Resources/export%20retirement%20titles.PNG)

[Eligible for the Mentorship Program]

Our next task is to find all employees eligible for the company mentorship program. We need to sort our data for employees born between Jan 1, 1965 and Dec 31, 1965 and also exclude those who have already left the company.

![mt](https://github.com/QQrex/Pewlett_Hackard_Analysis/blob/main/Resources/Mentor%20table.PNG)
>Our mentor table needs to merge 3 tables on employee numbers.

After our tables are merge, we will check and export our new table.

![mtop](https://github.com/QQrex/Pewlett_Hackard_Analysis/blob/main/Resources/mentor%20table%20output.PNG)

![emt](https://github.com/QQrex/Pewlett_Hackard_Analysis/blob/main/Resources/export%20mentor%20table.PNG)

## Summary

In summary we found the number of employees in each depart that are retiring soon and a full list of each employee eligible for the company mentorship program. To better analysis our list of employees eligible for the mentorship program, we could also sort and count the list by department. We may also want to consider only senior staff for the mentorship program so we can sort and count our list by title as well.
