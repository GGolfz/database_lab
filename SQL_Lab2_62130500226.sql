-- 5 Questions for aggregate functions.
-- 5 Questions for set operations.
-- 1) Show average salary of male and female employees.
SELECT SEX,DECIMAL(AVG(SALARY),8,2) AS AVERAGE_SALARY
FROM ST62226.EMPLOYEE
GROUP BY SEX;

-- another solution using union
    SELECT 'Female' AS GENDER,DECIMAL(AVG(SALARY),8,2) AS AVG_SLARY
    FROM ST62226.EMPLOYEE
    WHERE sex= 'F'
    GROUP BY  SEX
UNION
    SELECT 'Male',DECIMAL(AVG(SALARY),8,2)
    FROM ST62226.EMPLOYEE
    WHERE sex= 'M'
    GROUP BY  SEX;

-- 2) Show the highest and the lowest salary of each each department and its number of employees
SELECT WORKDEPT,max(SALARY) as max_salary ,min(SALARY) as min_salary, count(*) as the_number_of_employees
FROM ST62226.EMPLOYEE
GROUP BY WORKDEPT;
-- better answer
SELECT DEPTNAME,max(SALARY) as max_salary ,min(SALARY) as min_salary, count(*) as the_number_of_employees
FROM ST62226.EMPLOYEE, ST62226.DEPARTMENT
WHERE DEPTNO = WORKDEPT
GROUP BY DEPTNO,DEPTNAME;

-- 3) How many departments are responsible for a project(s)?
SELECT COUNT(DISTINCT DEPTNO) AS number_of_department
FROM PROJECT;

-- 4) Show the number of employees who work on each project. Show project title, and the number of employees.
-- Order the results by showing the project that has the most number of employees first.
SELECT PROJNAME,COUNT(DISTINCT EMPNO) AS count_emp,COUNT(EMPNO) AS count_repeating
FROM EMPPROJACT
JOIN PROJECT P on EMPPROJACT.PROJNO = P.PROJNO
GROUP BY P.PROJNO,PROJNAME
ORDER BY count_emp DESC;

-- 5) Show name of department that has the employee who earns the most salary
SELECT DEPTNAME,SALARY
FROM ST62226.DEPARTMENT,ST62226.EMPLOYEE
WHERE EMPLOYEE.WORKDEPT = DEPARTMENT.DEPTNO
ORDER BY SALARY DESC
LIMIT 1;

SELECT DEPTNAME,SALARY
FROM ST62226.DEPARTMENT,ST62226.EMPLOYEE
WHERE EMPLOYEE.WORKDEPT = DEPARTMENT.DEPTNO
ORDER BY SALARY DESC
fetch first 1 rows only;

SELECT DEPTNAME,SALARY
FROM ST62226.DEPARTMENT,ST62226.EMPLOYEE
WHERE EMPLOYEE.WORKDEPT = DEPARTMENT.DEPTNO AND
      EMPLOYEE.SALARY = (SELECT MAX(SALARY) FROM EMPLOYEE)

-- 6) Which department has the highest average salary?
SELECT WORKDEPT,DEPTNAME,DECIMAL(AVG(SALARY),9,2) AS SALARY
FROM EMPLOYEE,DEPARTMENT
WHERE WORKDEPT = DEPTNO
GROUP BY WORKDEPT,DEPTNAME
ORDER BY SALARY
LIMIT 1;

-- 7) There is a table named staff
SELECT * FROM DB2INST1.STAFF;

-- 8) Show name of everyone in this company IN A SINGLE COLUMN;
SELECT FIRSTNME
FROM ST62226.EMPLOYEE
UNION
SELECT NAME
FROM DB2INST1.STAFF;

-- 9) Is there anyone who are both employee and staff ? if so, show the name.
SELECT UPPER(FIRSTNME)
FROM ST62226.EMPLOYEE
INTERSECT
SELECT UPPER(NAME)
FROM DB2INST1.STAFF;
