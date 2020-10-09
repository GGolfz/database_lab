-- Q1
SELECT NAME,COUNT(*) AS PROG_COUNT
FROM work_on
JOIN employee ON work_on.empno = employee.empno
GROUP By employee.empno
HAVING COUNT(*) >= 4
ORDER BY PROG_COUNT DESC;
-- Q2
SELECT NAME
FROM project LEFT JOIN work_on on project.projid = work_on.projid
WHERE start_date >= '2020-01-01' AND work_on.projid IS NULL;

-- Q3
SELECT NAME,'Normal' AS LEVEL
FROM employee
JOIN department ON employee.workdept = department.deptno
WHERE deptname LIKE 'Financial%'
AND salary BETWEEN  15000 AND 40000
UNION
SELECT NAME,'High' AS LEVEL
FROM employee
JOIN department ON employee.workdept = department.deptno
WHERE deptname LIKE 'Financial%'
AND salary BETWEEN  40001 AND 80000
UNION
SELECT NAME,'Very High' AS LEVEL
FROM employee
JOIN department ON employee.workdept = department.deptno
WHERE deptname LIKE 'Financial%'
AND salary > 80000
ORDER BY NAME;

-- Q4
SELECT NAME, deptname, salary
FROM employee
JOIN department ON employee.workdept = department.deptno
WHERE salary > (
    SELECT MAX(SALARY) FROM employee
        JOIN department ON employee.workdept = department.deptno
    WHERE deptname LIKE 'Financial');

-- Q5
SELECT NAME, deptname, salary
FROM employee
JOIN department ON employee.workdept = department.deptno
WHERE salary > (
    SELECT MIN(SALARY) FROM employee
        JOIN department ON employee.workdept = department.deptno
    WHERE deptname LIKE 'Financial');
