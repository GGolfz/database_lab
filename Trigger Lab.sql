-- Trigger Lab
-- No employee can age less than 15

create trigger "No_Employee_Younger_than_15"
    BEFORE INSERT
    ON EMPLOYEE
    REFERENCING NEW AS newEmployee
    for each row
    WHEN (YEAR(CURRENT_DATE - newEmployee.BIRTHDATE) <= 15)
    SET newEmployee.BIRTHDATE = CURRENT_DATE - 20 years;

-- No one have salary higher than his manager

create trigger "No_Employee_Salary_more_Manager"
    AFTER UPDATE OF SALARY
    ON EMPLOYEE
    REFERENCING NEW AS newRecord OLD AS oldRecord
    for each row
    WHEN (newRecord.salary > ALL (
        SELECT SALARY
        FROM EMPLOYEE m
                 JOIN DEPARTMENT
                      ON mgrno = m.empno
        WHERE newRecord.WORKDEPT = DEPTNO
    ))
BEGIN
    UPDATE EMPLOYEE
    SET SALARY = (SELECT max(salary)
                  FROM employee m
                           JOIN department
                                ON mgrno = m.empno
                  WHERE DEPTNO = newRecord.WORKDEPT
    )
    WHERE empno = newRecord.empno;
END;

-- Insert Department back with location is X after deletion

CREATE TRIGGER "Insert_Back_After_Deletion"
    AFTER DELETE
    ON DEPARTMENT
    REFERENCING OLD AS oldRecord
    FOR EACH ROW
    INSERT INTO DEPARTMENT(DEPTNO, DEPTNAME, MGRNO, ADMRDEPT, LOCATION)
    VALUES(oldRecord.DEPTNO,oldRecord.DEPTNAME,oldRecord.MGRNO,oldRecord.ADMRDEPT,'X');

