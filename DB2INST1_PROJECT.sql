INSERT INTO DB2INST1.PROJECT (PROJNO, PROJNAME, DEPTNO, RESPEMP, PRSTAFF, PRSTDATE, PRENDATE, MAJPROJ) VALUES ('AD3100', 'ADMIN SERVICES', 'D01', '000010', 6.50, '2002-01-01', '2003-02-01', null);
INSERT INTO DB2INST1.PROJECT (PROJNO, PROJNAME, DEPTNO, RESPEMP, PRSTAFF, PRSTDATE, PRENDATE, MAJPROJ) VALUES ('AD3110', 'GENERAL ADMIN SYSTEMS', 'D21', '000070', 6.00, '2002-01-01', '2003-02-01', 'AD3100');
INSERT INTO DB2INST1.PROJECT (PROJNO, PROJNAME, DEPTNO, RESPEMP, PRSTAFF, PRSTDATE, PRENDATE, MAJPROJ) VALUES ('AD3111', 'PAYROLL PROGRAMMING', 'D21', '000230', 2.00, '2002-01-01', '2003-02-01', 'AD3110');
INSERT INTO DB2INST1.PROJECT (PROJNO, PROJNAME, DEPTNO, RESPEMP, PRSTAFF, PRSTDATE, PRENDATE, MAJPROJ) VALUES ('AD3112', 'PERSONNEL PROGRAMMING', 'D21', '000250', 1.00, '2002-01-01', '2003-02-01', 'AD3110');
INSERT INTO DB2INST1.PROJECT (PROJNO, PROJNAME, DEPTNO, RESPEMP, PRSTAFF, PRSTDATE, PRENDATE, MAJPROJ) VALUES ('AD3113', 'ACCOUNT PROGRAMMING', 'D21', '000270', 2.00, '2002-01-01', '2003-02-01', 'AD3110');
INSERT INTO DB2INST1.PROJECT (PROJNO, PROJNAME, DEPTNO, RESPEMP, PRSTAFF, PRSTDATE, PRENDATE, MAJPROJ) VALUES ('IF1000', 'QUERY SERVICES', 'C01', '000030', 2.00, '2002-01-01', '2003-02-01', null);
INSERT INTO DB2INST1.PROJECT (PROJNO, PROJNAME, DEPTNO, RESPEMP, PRSTAFF, PRSTDATE, PRENDATE, MAJPROJ) VALUES ('IF2000', 'USER EDUCATION', 'C01', '000030', 1.00, '2002-01-01', '2003-02-01', null);
INSERT INTO DB2INST1.PROJECT (PROJNO, PROJNAME, DEPTNO, RESPEMP, PRSTAFF, PRSTDATE, PRENDATE, MAJPROJ) VALUES ('MA2100', 'WELD LINE AUTOMATION', 'D01', '000010', 12.00, '2002-01-01', '2003-02-01', null);
INSERT INTO DB2INST1.PROJECT (PROJNO, PROJNAME, DEPTNO, RESPEMP, PRSTAFF, PRSTDATE, PRENDATE, MAJPROJ) VALUES ('MA2110', 'W L PROGRAMMING', 'D11', '000060', 9.00, '2002-01-01', '2003-02-01', 'MA2100');
INSERT INTO DB2INST1.PROJECT (PROJNO, PROJNAME, DEPTNO, RESPEMP, PRSTAFF, PRSTDATE, PRENDATE, MAJPROJ) VALUES ('MA2111', 'W L PROGRAM DESIGN', 'D11', '000220', 2.00, '2002-01-01', '1982-12-01', 'MA2110');
INSERT INTO DB2INST1.PROJECT (PROJNO, PROJNAME, DEPTNO, RESPEMP, PRSTAFF, PRSTDATE, PRENDATE, MAJPROJ) VALUES ('MA2112', 'W L ROBOT DESIGN', 'D11', '000150', 3.00, '2002-01-01', '1982-12-01', 'MA2110');
INSERT INTO DB2INST1.PROJECT (PROJNO, PROJNAME, DEPTNO, RESPEMP, PRSTAFF, PRSTDATE, PRENDATE, MAJPROJ) VALUES ('MA2113', 'W L PROD CONT PROGS', 'D11', '000160', 3.00, '2002-02-15', '1982-12-01', 'MA2110');
INSERT INTO DB2INST1.PROJECT (PROJNO, PROJNAME, DEPTNO, RESPEMP, PRSTAFF, PRSTDATE, PRENDATE, MAJPROJ) VALUES ('OP1000', 'OPERATION SUPPORT', 'E01', '000050', 6.00, '2002-01-01', '2003-02-01', null);
INSERT INTO DB2INST1.PROJECT (PROJNO, PROJNAME, DEPTNO, RESPEMP, PRSTAFF, PRSTDATE, PRENDATE, MAJPROJ) VALUES ('OP1010', 'OPERATION', 'E11', '000090', 5.00, '2002-01-01', '2003-02-01', 'OP1000');
INSERT INTO DB2INST1.PROJECT (PROJNO, PROJNAME, DEPTNO, RESPEMP, PRSTAFF, PRSTDATE, PRENDATE, MAJPROJ) VALUES ('OP2000', 'GEN SYSTEMS SERVICES', 'E01', '000050', 5.00, '2002-01-01', '2003-02-01', null);
INSERT INTO DB2INST1.PROJECT (PROJNO, PROJNAME, DEPTNO, RESPEMP, PRSTAFF, PRSTDATE, PRENDATE, MAJPROJ) VALUES ('OP2010', 'SYSTEMS SUPPORT', 'E21', '000100', 4.00, '2002-01-01', '2003-02-01', 'OP2000');
INSERT INTO DB2INST1.PROJECT (PROJNO, PROJNAME, DEPTNO, RESPEMP, PRSTAFF, PRSTDATE, PRENDATE, MAJPROJ) VALUES ('OP2011', 'SCP SYSTEMS SUPPORT', 'E21', '000320', 1.00, '2002-01-01', '2003-02-01', 'OP2010');
INSERT INTO DB2INST1.PROJECT (PROJNO, PROJNAME, DEPTNO, RESPEMP, PRSTAFF, PRSTDATE, PRENDATE, MAJPROJ) VALUES ('OP2012', 'APPLICATIONS SUPPORT', 'E21', '000330', 1.00, '2002-01-01', '2003-02-01', 'OP2010');
INSERT INTO DB2INST1.PROJECT (PROJNO, PROJNAME, DEPTNO, RESPEMP, PRSTAFF, PRSTDATE, PRENDATE, MAJPROJ) VALUES ('OP2013', 'DB/DC SUPPORT', 'E21', '000340', 1.00, '2002-01-01', '2003-02-01', 'OP2010');
INSERT INTO DB2INST1.PROJECT (PROJNO, PROJNAME, DEPTNO, RESPEMP, PRSTAFF, PRSTDATE, PRENDATE, MAJPROJ) VALUES ('PL2100', 'WELD LINE PLANNING', 'B01', '000020', 1.00, '2002-01-01', '2002-09-15', 'MA2100');