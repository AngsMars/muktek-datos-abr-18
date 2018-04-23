#Query 1: display the name (FIRST_NAME, LAST_NAME) and SALARY for all employees whose salary is not in the range $10,000 through $15,000
SELECT FIRST_NAME, LAST_NAME, SALARY FROM Employees
  WHERE SALARY NOT BETWEEN 10000 AND 15000;

#Query 2 display the name (FIRST_NAME, LAST_NAME) and DEPARTMENT_ID of all employees in departments 30 or 100 in ascending order
SELECT FIRST_NAME, LAST_NAME, DEPARTMENT_ID FROM Employees
  WHERE DEPARTMENT_ID = 30 OR DEPARTMENT_ID = 100
  ORDER BY DEPARTMENT_ID ASC;

#Query 3 display the name (FIRST_NAME, LAST_NAME) and SALARY for all employees whose salary is not in the range $10,000 through $15,000 and are in department 30 or 100
SELECT FIRST_NAME, LAST_NAME, SALARY FROM Employees
  WHERE SALARY NOT BETWEEN 10000 AND 15000
  AND DEPARTMENT_ID = 30 OR DEPARTMENT_ID = 100;

#Query 4 display the name (FIRST_NAME, LAST_NAME) and HIRE_DATE for all employees who were hired in 1987
SELECT FIRST_NAME, LAST_NAME, HIRE_DATE FROM Employees
  WHERE YEAR(HIRE_DATE) = 1987;

#Query 5 option 1 display the first_name of all employees who have both "b" and "c" in their first name
SELECT FIRST_NAME FROM Employees
  WHERE INSTR (FIRST_NAME, "c")
  AND INSTR (FIRST_NAME, "b");

#Query 5 option 2
SELECT FIRST_NAME FROM Employees
  WHERE FIRST_NAME LIKE "%c%"
  AND FIRST_NAME LIKE "%b%";

#Query 6 display the last name, job, and salary for all employees whose job is that of a Programmer (IT_PROG) or a Shipping Clerk (SH_CLERK), and whose salary is not equal to $4,500, $10,000 or $15,000
SELECT Employees.LAST_NAME, Employees.SALARY, Jobs.JOB_TITLE FROM Employees
  INNER JOIN Jobs ON Employees.JOB_ID = Jobs.JOB_ID
  WHERE Employees.JOB_ID = "IT_PROG"
  OR Employees.JOB_ID = "SH_CLERK"
  AND Employees.SALARY NOT LIKE 4500 OR 10000 OR 15000;

#Query 7 display the last name of employees whose first names have exactly 6 characters
SELECT Employees.LAST_NAME FROM Employees 
  WHERE Employees.LAST_NAME LIKE '______';

#Query 8 display the last name of employees having 'e' as the third car�cter
SELECT Employees.LAST_NAME FROM Employees 
 WHERE Employees.LAST_NAME LIKE '__e%';

#Query 9 display the JOBS available in the employees table
SELECT Employees.JOB_ID, Jobs.JOB_TITLE FROM Employees
  INNER JOIN Jobs ON Employees.JOB_ID = Jobs.JOB_ID
  WHERE Jobs.JOB_TITLE IS NULL;

#Query 10 display the name (FIRST_NAME, LAST_NAME), SALARY and PF (15% of salary) of all employees
SELECT Employees.FIRST_NAME, Employees.LAST_NAME, Employees.SALARY, (Employees.SALARY *.15) AS PF from Employees;

#Query 11 select all record from employees where last name in 'BLAKE', 'SCOTT', 'KING' and 'FORD'
SELECT * FROM Employees
  WHERE Employees.LAST_NAME IN ('JONES', 'BLAKE', 'SCOTT', 'KING', 'FORD');
