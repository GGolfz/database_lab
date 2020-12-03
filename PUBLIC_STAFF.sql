create table STAFF
(
    EMPNO     VARCHAR(255),
    NAME      VARCHAR(255),
    GENDER    VARCHAR(255),
    CITY      VARCHAR(255),
    DISTRICT  VARCHAR(255),
    SALARY    INTEGER,
    STARTTIME DATE,
    ENDTIME   DATE
);

INSERT INTO PUBLIC.STAFF (EMPNO, NAME, GENDER, CITY, DISTRICT, SALARY, STARTTIME, ENDTIME) VALUES ('0001', 'Mr.O', 'M', 'Bangkok', 'Phayathai', 100000, null, null);
INSERT INTO PUBLIC.STAFF (EMPNO, NAME, GENDER, CITY, DISTRICT, SALARY, STARTTIME, ENDTIME) VALUES ('0002', 'Mr.P', 'M', 'Bangkok', 'Phayathai', 100000, null, null);
INSERT INTO PUBLIC.STAFF (EMPNO, NAME, GENDER, CITY, DISTRICT, SALARY, STARTTIME, ENDTIME) VALUES ('0003', 'Mr.A', 'M', 'Bangkok', 'Phayathai', 100000, null, null);
INSERT INTO PUBLIC.STAFF (EMPNO, NAME, GENDER, CITY, DISTRICT, SALARY, STARTTIME, ENDTIME) VALUES ('0004', 'Mr.L', 'M', 'Japan', 'Osaka', 100000, null, null);
INSERT INTO PUBLIC.STAFF (EMPNO, NAME, GENDER, CITY, DISTRICT, SALARY, STARTTIME, ENDTIME) VALUES ('0005', 'Ms.S', 'F', 'Bangkok', 'Ram', 100000, null, null);