-- ISONLATION LEVEL
-- PROBLEM              ANSI SQL            DB2
-- Phantom Read     2 SERIALIZABLE          Repeatable Read (RR)
-- Incorrect Sum    3 REPEATABLE READ       Read stability (RS)
-- Dirty Read       2 READ COMMITTED        Cursor Stability (CS)
-- Lost Update      1 READ UNCOMMITTED      Uncommitted Read (UR)
--

-- SELECT * FROM EMPLOYEE;
-- Example 0

UPDATE EMPLOYEE SET SALARY = 20000 WHERE EMPNO = '000020';

SELECT FIRSTNME,LASTNAME,SALARY FROM EMPLOYEE WHERE EMPNO ='000020';
commit;
SELECT FIRSTNME,LASTNAME,SALARY FROM EMPLOYEE WHERE EMPNO ='000020';

-- Example 0.2

UPDATE EMPLOYEE SET SALARY = 30000 WHERE EMPNO = '000020';
SELECT FIRSTNME,LASTNAME,SALARY FROM EMPLOYEE WHERE EMPNO ='000020';
ROLLBACK;
SELECT FIRSTNME,LASTNAME,SALARY FROM EMPLOYEE WHERE EMPNO ='000020';

-- Example 0.3

UPDATE EMPLOYEE SET SALARY = 40000 WHERE EMPNO = '000020';
SELECT FIRSTNME,LASTNAME,SALARY FROM EMPLOYEE WHERE EMPNO ='000020';
commit;
SELECT FIRSTNME,LASTNAME,SALARY FROM EMPLOYEE WHERE EMPNO ='000020';
rollback;
SELECT FIRSTNME,LASTNAME,SALARY FROM EMPLOYEE WHERE EMPNO ='000020';

-- Example 1

UPDATE EMPLOYEE SET SALARY = 20000 WHERE EMPNO = '000020';
commit;

SET CURRENT ISOLATION LEVEL UR
commit;


UPDATE EMPLOYEE SET SALARY = 30000 WHERE EMPNO = '000020';
SELECT FIRSTNME,LASTNAME,SALARY FROM EMPLOYEE WHERE EMPNO ='000020';

commit;

UPDATE EMPLOYEE SET SALARY = 70000 WHERE EMPNO = '000020';
SELECT FIRSTNME,LASTNAME,SALARY FROM EMPLOYEE WHERE EMPNO ='000020';

SELECT FIRSTNME,LASTNAME,SALARY FROM EMPLOYEE WHERE EMPNO ='000020';

-- Example 1.1
UPDATE EMPLOYEE SET SALARY = 20000 WHERE EMPNO = '000020';
SET CURRENT ISOLATION LEVEL UR;

COMMIT;
UPDATE EMPLOYEE SET SALARY = 20000 WHERE EMPNO = '000030';

SELECT FIRSTNME,LASTNAME,SALARY FROM EMPLOYEE WHERE EMPNO IN('000020','000030');

-- Example 2
-- Dirty Read
SET CURRENT ISOLATION LEVEL CS;
COMMIT;

-- 70000 for '000020' AND 60000 for '000030'

UPDATE EMPLOYEE SET SALARY = 10000 WHERE EMPNO = '000020'

-- Example 3
-- Incorrect Sum
UPDATE EMPLOYEE SET SALARY = 20000 WHERE EMPNO = '000020'
UPDATE EMPLOYEE SET SALARY = 30000 WHERE EMPNO = '000030'
COMMIT;
SET CURRENT ISOLATION LEVEL RS;
COMMIT;
SELECT FIRSTNME,LASTNAME,SALARY FROM EMPLOYEE WHERE EMPNO IN ('000020','000030','000050');


-- Example 4
-- Phantom Read
SET CURRENT ISOLATION LEVEL RR;
COMMIT;
SELECT * FROM EMPLOYEE WHERE SALARY <= 30000
SELECT * FROM EMPLOYEE WHERE FIRSTNME LIKE 'S%'

-- Example 4.2
SET CURRENT  ISOLATION  LEVEL RR;
SELECT * FROM EMPLOYEE WHERE FIRSTNME LIKE 'S%'


-- Example 4.3
SET CURRENT  ISOLATION  LEVEL RR;
SELECT * FROM EMPLOYEE WHERE FIRSTNME LIKE 'S%'