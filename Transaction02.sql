
SET CURRENT ISOLATION LEVEL UR;
COMMIT;
SELECT FIRSTNME,LASTNAME,SALARY FROM EMPLOYEE WHERE EMPNO ='000020';


UPDATE EMPLOYEE SET SALARY = 50000 WHERE EMPNO = '000020';
SELECT FIRSTNME,LASTNAME,SALARY FROM EMPLOYEE WHERE EMPNO ='000020';
UPDATE EMPLOYEE SET SALARY = 40000 WHERE EMPNO = '000020';
rollback