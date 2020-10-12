-- Sub Query Project
-- 1.1) Find Department that has no employee.
SELECT DEPTNAME
FROM DEPARTMENT
WHERE DEPTNO NOT IN (SELECT WORKDEPT FROM EMPLOYEE);

-- 1.2) Show name of employee who earns the most salary in this company.
SELECT FIRSTNME, LASTNAME, SALARY
FROM EMPLOYEE
WHERE SALARY >= all (SELECT salary FROM EMPLOYEE);

SELECT firstnme, lastname, SALARY
FROM employee
WHERE SALARY >= (SELECT MAX(SALARY) FROM EMPLOYEE);

SELECT firstnme, lastname, SALARY
FROM employee
WHERE SALARY = (SELECT MAX(SALARY) FROM EMPLOYEE);

SELECT FIRSTNME, LASTNAME, e1.SALARY AS Salary
FROM EMPLOYEE as e1,
     (SELECT max(Salary) as m from EMPLOYEE) as e2
WHERE e1.SALARY = e2.m;

-- 2) Find employee of who earn more than the manager of department whose name start with "PLA"
SELECT FIRSTNME, LASTNAME, SALARY, DEPTNAME
FROM EMPLOYEE
         JOIN DEPARTMENT ON DEPTNO = WORKDEPT
WHERE SALARY >= all (SELECT SALARY
                     FROM DEPARTMENT,
                          EMPLOYEE
                     WHERE MGRNO = EMPNO
                       AND DEPTNAME LIKE 'PLA%')
ORDER BY SALARY DESC;

-- 3) Show employee who works on every project controlled by department C01
SELECT FIRSTNME, LASTNAME, PROJNAME
FROM EMPLOYEE,
     EMPPROJACT,
     PROJECT
WHERE NOT EXISTS(
        SELECT PROJNO
        FROM PROJECT
        WHERE DEPTNO = 'C01'
            EXCEPT
        SELECT PROJNO
        FROM EMPPROJACT
        WHERE EMPPROJACT.EMPNO = EMPLOYEE.EMPNO)
  AND EMPLOYEE.EMPNO = EMPPROJACT.EMPNO
  AND EMPPROJACT.PROJNO = PROJECT.PROJNO
GROUP BY FIRSTNME, LASTNAME, PROJNAME;

-- 4) Show name of employee who acts for the most number of projects
-- part 1
SELECT MAX(C)
FROM (
         SELECT EMPNO, COUNT(DISTINCT PROJNO) AS c
         FROM EMPPROJACT
         GROUP BY EMPNO
     ) AS EC;

-- part 2
SELECT FIRSTNME, c AS count_of_project
FROM (SELECT MAX(C) AS mc
      FROM (
               SELECT e.EMPNO, COUNT(DISTINCT e.PROJNO) AS c
               FROM EMPPROJACT AS e
               GROUP BY e.EMPNO
           ) AS EC) AS ec1,
     (SELECT FIRSTNME, COUNT(DISTINCT PROJNO) AS c
      FROM EMPLOYEE,
           EMPPROJACT
      WHERE EMPLOYEE.EMPNO = EMPPROJACT.EMPNO
      GROUP BY FIRSTNME)
WHERE C = mc;

-- 5) Among employees who earns the most of each department
SELECT FIRSTNME, LASTNAME, WORKDEPT, SALARY
FROM EMPLOYEE
WHERE (WORKDEPT, SALARY) IN
      (SELECT WORKDEPT, MAX(SALARY)
       FROM EMPLOYEE
       GROUP BY WORKDEPT)
  AND SALARY = (SELECT min(SALARY)
                FROM (SELECT SALARY
                      FROM EMPLOYEE
                      WHERE (WORKDEPT, SALARY) IN
                            (SELECT WORKDEPT, MAX(SALARY)
                             FROM EMPLOYEE
                             GROUP BY WORKDEPT)));

CREATE VIEW minOfMaxSalary (departmentName, minOfMaxSalaryAmongDept, firstName, lastName)
AS
(
    SELECT FIRSTNME, LASTNAME, WORKDEPT, SALARY
    FROM EMPLOYEE
    WHERE (WORKDEPT, SALARY) IN
          (SELECT WORKDEPT, MAX(SALARY)
           FROM EMPLOYEE
           GROUP BY WORKDEPT)
      AND SALARY = (SELECT min(SALARY)
                    FROM (SELECT SALARY
                          FROM EMPLOYEE
                          WHERE (WORKDEPT, SALARY) IN
                                (SELECT WORKDEPT, MAX(SALARY)
                                 FROM EMPLOYEE
                                 GROUP BY WORKDEPT)))
);