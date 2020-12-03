create table employee
(
    empno     varchar not null
        constraint employee_pk
            primary key,
    firstnme  varchar,
    midinit   varchar,
    lastname  varchar,
    workdept  varchar
        constraint employee_department_deptno_fk
            references department,
    phoneno   varchar,
    hiredate  date,
    job       varchar,
    edlevel   integer,
    sex       varchar,
    birthdate date,
    salary    numeric,
    bonus     numeric,
    comm      numeric
);

alter table employee
    owner to postgres;

INSERT INTO public.employee (empno, firstnme, midinit, lastname, workdept, phoneno, hiredate, job, edlevel, sex, birthdate, salary, bonus, comm) VALUES ('000010', 'CHRISTINE', 'I', 'HAAS', 'A00', '3978', '1995-01-01', 'PRES    ', 18, 'F', '1963-08-24', 176000, 1000, 4220);
INSERT INTO public.employee (empno, firstnme, midinit, lastname, workdept, phoneno, hiredate, job, edlevel, sex, birthdate, salary, bonus, comm) VALUES ('000030', 'SALLY', 'A', 'KWAN', 'C01', '4738', '2005-04-05', 'MANAGER ', 20, 'F', '1971-05-11', 99000, 800, 3060);
INSERT INTO public.employee (empno, firstnme, midinit, lastname, workdept, phoneno, hiredate, job, edlevel, sex, birthdate, salary, bonus, comm) VALUES ('000050', 'JOHN', 'B', 'GEYER', 'E01', '6789', '1979-08-17', 'MANAGER ', 16, 'M', '1940-01-20', 80175, 800, 3214);
INSERT INTO public.employee (empno, firstnme, midinit, lastname, workdept, phoneno, hiredate, job, edlevel, sex, birthdate, salary, bonus, comm) VALUES ('000060', 'IRVING', 'F', 'STERN', 'D11', '6423', '2003-09-14', 'MANAGER ', 16, 'M', '1975-07-07', 72250, 500, 2580);
INSERT INTO public.employee (empno, firstnme, midinit, lastname, workdept, phoneno, hiredate, job, edlevel, sex, birthdate, salary, bonus, comm) VALUES ('000070', 'EVA', 'D', 'PULASKI', 'D21', '7831', '2005-09-30', 'MANAGER ', 16, 'F', '2003-05-26', 96170, 700, 2893);
INSERT INTO public.employee (empno, firstnme, midinit, lastname, workdept, phoneno, hiredate, job, edlevel, sex, birthdate, salary, bonus, comm) VALUES ('000090', 'EILEEN', 'W', 'HENDERSON', 'E11', '5498', '2000-08-15', 'MANAGER ', 16, 'F', '1971-05-15', 89750, 600, 2380);
INSERT INTO public.employee (empno, firstnme, midinit, lastname, workdept, phoneno, hiredate, job, edlevel, sex, birthdate, salary, bonus, comm) VALUES ('000100', 'THEODORE', 'Q', 'SPENSER', 'E21', '0972', '2000-06-19', 'MANAGER ', 14, 'M', '1980-12-18', 86150, 500, 2092);
INSERT INTO public.employee (empno, firstnme, midinit, lastname, workdept, phoneno, hiredate, job, edlevel, sex, birthdate, salary, bonus, comm) VALUES ('000110', 'VINCENZO', 'G', 'LUCCHESSI', 'A00', '3490', '1988-05-16', 'SALESREP', 19, 'M', '1959-11-05', 66500, 900, 3720);
INSERT INTO public.employee (empno, firstnme, midinit, lastname, workdept, phoneno, hiredate, job, edlevel, sex, birthdate, salary, bonus, comm) VALUES ('000120', 'SEAN', ' ', 'O''CONNELL', 'A00', '2167', '1993-12-05', 'CLERK   ', 14, 'M', '1972-10-18', 49250, 600, 2340);
INSERT INTO public.employee (empno, firstnme, midinit, lastname, workdept, phoneno, hiredate, job, edlevel, sex, birthdate, salary, bonus, comm) VALUES ('000130', 'DELORES', 'M', 'QUINTANA', 'C01', '4578', '2001-07-28', 'ANALYST ', 16, 'F', '1955-09-15', 73800, 500, 1904);
INSERT INTO public.employee (empno, firstnme, midinit, lastname, workdept, phoneno, hiredate, job, edlevel, sex, birthdate, salary, bonus, comm) VALUES ('000140', 'HEATHER', 'A', 'NICHOLLS', 'C01', '1793', '2006-12-15', 'ANALYST ', 18, 'F', '1976-01-19', 68420, 600, 2274);
INSERT INTO public.employee (empno, firstnme, midinit, lastname, workdept, phoneno, hiredate, job, edlevel, sex, birthdate, salary, bonus, comm) VALUES ('000150', 'BRUCE', ' ', 'ADAMSON', 'D11', '4510', '2002-02-12', 'DESIGNER', 16, 'M', '1977-05-17', 55280, 500, 2022);
INSERT INTO public.employee (empno, firstnme, midinit, lastname, workdept, phoneno, hiredate, job, edlevel, sex, birthdate, salary, bonus, comm) VALUES ('000160', 'ELIZABETH', 'R', 'PIANKA', 'D11', '3782', '2006-10-11', 'DESIGNER', 17, 'F', '1980-04-12', 62250, 400, 1780);
INSERT INTO public.employee (empno, firstnme, midinit, lastname, workdept, phoneno, hiredate, job, edlevel, sex, birthdate, salary, bonus, comm) VALUES ('000170', 'MASATOSHI', 'J', 'YOSHIMURA', 'D11', '2890', '1999-09-15', 'DESIGNER', 16, 'M', '1981-01-05', 44680, 500, 1974);
INSERT INTO public.employee (empno, firstnme, midinit, lastname, workdept, phoneno, hiredate, job, edlevel, sex, birthdate, salary, bonus, comm) VALUES ('000180', 'MARILYN', 'S', 'SCOUTTEN', 'D11', '1682', '2003-07-07', 'DESIGNER', 17, 'F', '1979-02-21', 51340, 500, 1707);
INSERT INTO public.employee (empno, firstnme, midinit, lastname, workdept, phoneno, hiredate, job, edlevel, sex, birthdate, salary, bonus, comm) VALUES ('000190', 'JAMES', 'H', 'WALKER', 'D11', '2986', '2004-07-26', 'DESIGNER', 16, 'M', '1982-06-25', 50450, 400, 1636);
INSERT INTO public.employee (empno, firstnme, midinit, lastname, workdept, phoneno, hiredate, job, edlevel, sex, birthdate, salary, bonus, comm) VALUES ('000200', 'DAVID', ' ', 'BROWN', 'D11', '4501', '2002-03-03', 'DESIGNER', 16, 'M', '1971-05-29', 57740, 600, 2217);
INSERT INTO public.employee (empno, firstnme, midinit, lastname, workdept, phoneno, hiredate, job, edlevel, sex, birthdate, salary, bonus, comm) VALUES ('000210', 'WILLIAM', 'T', 'JONES', 'D11', '0942', '1998-04-11', 'DESIGNER', 17, 'M', '2003-02-23', 68270, 400, 1462);
INSERT INTO public.employee (empno, firstnme, midinit, lastname, workdept, phoneno, hiredate, job, edlevel, sex, birthdate, salary, bonus, comm) VALUES ('000220', 'JENNIFER', 'K', 'LUTZ', 'D11', '0672', '1998-08-29', 'DESIGNER', 18, 'F', '1978-03-19', 49840, 600, 2387);
INSERT INTO public.employee (empno, firstnme, midinit, lastname, workdept, phoneno, hiredate, job, edlevel, sex, birthdate, salary, bonus, comm) VALUES ('000230', 'JAMES', 'J', 'JEFFERSON', 'D21', '2094', '1996-11-21', 'CLERK   ', 14, 'M', '1980-05-30', 80175, 400, 1774);
INSERT INTO public.employee (empno, firstnme, midinit, lastname, workdept, phoneno, hiredate, job, edlevel, sex, birthdate, salary, bonus, comm) VALUES ('000240', 'SALVATORE', 'M', 'MARINO', 'D21', '3780', '2004-12-05', 'CLERK   ', 17, 'M', '2002-03-31', 48760, 600, 2301);
INSERT INTO public.employee (empno, firstnme, midinit, lastname, workdept, phoneno, hiredate, job, edlevel, sex, birthdate, salary, bonus, comm) VALUES ('000250', 'DANIEL', 'S', 'SMITH', 'D21', '0961', '1999-10-30', 'CLERK   ', 15, 'M', '1969-11-12', 49180, 400, 1534);
INSERT INTO public.employee (empno, firstnme, midinit, lastname, workdept, phoneno, hiredate, job, edlevel, sex, birthdate, salary, bonus, comm) VALUES ('000260', 'SYBIL', 'P', 'JOHNSON', 'D21', '8953', '2005-09-11', 'CLERK   ', 16, 'F', '1976-10-05', 47250, 300, 1380);
INSERT INTO public.employee (empno, firstnme, midinit, lastname, workdept, phoneno, hiredate, job, edlevel, sex, birthdate, salary, bonus, comm) VALUES ('000270', 'MARIA', 'L', 'PEREZ', 'D21', '9001', '2006-09-30', 'CLERK   ', 15, 'F', '2003-05-26', 37380, 500, 2190);
INSERT INTO public.employee (empno, firstnme, midinit, lastname, workdept, phoneno, hiredate, job, edlevel, sex, birthdate, salary, bonus, comm) VALUES ('000280', 'ETHEL', 'R', 'SCHNEIDER', 'E11', '8997', '1997-03-24', 'OPERATOR', 17, 'F', '1976-03-28', 36250, 500, 2100);
INSERT INTO public.employee (empno, firstnme, midinit, lastname, workdept, phoneno, hiredate, job, edlevel, sex, birthdate, salary, bonus, comm) VALUES ('000290', 'JOHN', 'R', 'PARKER', 'E11', '4502', '2006-05-30', 'OPERATOR', 12, 'M', '1985-07-09', 35340, 300, 1227);
INSERT INTO public.employee (empno, firstnme, midinit, lastname, workdept, phoneno, hiredate, job, edlevel, sex, birthdate, salary, bonus, comm) VALUES ('000300', 'PHILIP', 'X', 'SMITH', 'E11', '2095', '2002-06-19', 'OPERATOR', 14, 'M', '1976-10-27', 37750, 400, 1420);
INSERT INTO public.employee (empno, firstnme, midinit, lastname, workdept, phoneno, hiredate, job, edlevel, sex, birthdate, salary, bonus, comm) VALUES ('000310', 'MAUDE', 'F', 'SETRIGHT', 'E11', '3332', '1994-09-12', 'OPERATOR', 12, 'F', '1961-04-21', 35900, 300, 1272);
INSERT INTO public.employee (empno, firstnme, midinit, lastname, workdept, phoneno, hiredate, job, edlevel, sex, birthdate, salary, bonus, comm) VALUES ('000320', 'RAMLAL', 'V', 'MEHTA', 'E21', '9990', '1995-07-07', 'FIELDREP', 16, 'M', '1962-08-11', 39950, 400, 1596);
INSERT INTO public.employee (empno, firstnme, midinit, lastname, workdept, phoneno, hiredate, job, edlevel, sex, birthdate, salary, bonus, comm) VALUES ('000330', 'WING', ' ', 'LEE', 'E21', '2103', '2006-02-23', 'FIELDREP', 14, 'M', '1971-07-18', 45370, 500, 2030);
INSERT INTO public.employee (empno, firstnme, midinit, lastname, workdept, phoneno, hiredate, job, edlevel, sex, birthdate, salary, bonus, comm) VALUES ('000340', 'JASON', 'R', 'GOUNOT', 'E21', '5698', '1977-05-05', 'FIELDREP', 16, 'M', '1956-05-17', 43840, 500, 1907);
INSERT INTO public.employee (empno, firstnme, midinit, lastname, workdept, phoneno, hiredate, job, edlevel, sex, birthdate, salary, bonus, comm) VALUES ('200010', 'DIAN', 'J', 'HEMMINGER', 'A00', '3978', '1995-01-01', 'SALESREP', 18, 'F', '1973-08-14', 46500, 1000, 4220);
INSERT INTO public.employee (empno, firstnme, midinit, lastname, workdept, phoneno, hiredate, job, edlevel, sex, birthdate, salary, bonus, comm) VALUES ('200120', 'GREG', ' ', 'ORLANDO', 'A00', '2167', '2002-05-05', 'CLERK   ', 14, 'M', '1972-10-18', 39250, 600, 2340);
INSERT INTO public.employee (empno, firstnme, midinit, lastname, workdept, phoneno, hiredate, job, edlevel, sex, birthdate, salary, bonus, comm) VALUES ('200140', 'KIM', 'N', 'NATZ', 'C01', '1793', '2006-12-15', 'ANALYST ', 18, 'F', '1976-01-19', 68420, 600, 2274);
INSERT INTO public.employee (empno, firstnme, midinit, lastname, workdept, phoneno, hiredate, job, edlevel, sex, birthdate, salary, bonus, comm) VALUES ('200170', 'KIYOSHI', ' ', 'YAMAMOTO', 'D11', '2890', '2005-09-15', 'DESIGNER', 16, 'M', '1981-01-05', 64680, 500, 1974);
INSERT INTO public.employee (empno, firstnme, midinit, lastname, workdept, phoneno, hiredate, job, edlevel, sex, birthdate, salary, bonus, comm) VALUES ('200220', 'REBA', 'K', 'JOHN', 'D11', '0672', '2005-08-29', 'DESIGNER', 18, 'F', '1978-03-19', 69840, 600, 2387);
INSERT INTO public.employee (empno, firstnme, midinit, lastname, workdept, phoneno, hiredate, job, edlevel, sex, birthdate, salary, bonus, comm) VALUES ('200240', 'ROBERT', 'M', 'MONTEVERDE', 'D21', '3780', '2004-12-05', 'CLERK   ', 17, 'M', '1984-03-31', 37760, 600, 2301);
INSERT INTO public.employee (empno, firstnme, midinit, lastname, workdept, phoneno, hiredate, job, edlevel, sex, birthdate, salary, bonus, comm) VALUES ('200280', 'EILEEN', 'R', 'SCHWARTZ', 'E11', '8997', '1997-03-24', 'OPERATOR', 17, 'F', '1966-03-28', 46250, 500, 2100);
INSERT INTO public.employee (empno, firstnme, midinit, lastname, workdept, phoneno, hiredate, job, edlevel, sex, birthdate, salary, bonus, comm) VALUES ('200310', 'MICHELLE', 'F', 'SPRINGER', 'E11', '3332', '1994-09-12', 'OPERATOR', 12, 'F', '1961-04-21', 35900, 300, 1272);
INSERT INTO public.employee (empno, firstnme, midinit, lastname, workdept, phoneno, hiredate, job, edlevel, sex, birthdate, salary, bonus, comm) VALUES ('200330', 'HELENA', ' ', 'WONG', 'E21', '2103', '2006-02-23', 'FIELDREP', 14, 'F', '1971-07-18', 35370, 500, 2030);
INSERT INTO public.employee (empno, firstnme, midinit, lastname, workdept, phoneno, hiredate, job, edlevel, sex, birthdate, salary, bonus, comm) VALUES ('200340', 'ROY', 'R', 'ALONZO', 'E21', '5698', '1997-07-05', 'FIELDREP', 16, 'M', '1956-05-17', 31840, 500, 1907);
INSERT INTO public.employee (empno, firstnme, midinit, lastname, workdept, phoneno, hiredate, job, edlevel, sex, birthdate, salary, bonus, comm) VALUES ('000801', 'Jack', ' ', 'Jim', 'A00', '1111', '2019-02-01', 'SA      ', 15, 'M', '1990-01-25', 10000, 0, 0);
INSERT INTO public.employee (empno, firstnme, midinit, lastname, workdept, phoneno, hiredate, job, edlevel, sex, birthdate, salary, bonus, comm) VALUES ('60001 ', 'Ann', 'A', 'Sally', 'A01', '1111', '2019-02-15', 'Manager ', 15, 'F', '1990-01-01', 50000, 0, 0);
INSERT INTO public.employee (empno, firstnme, midinit, lastname, workdept, phoneno, hiredate, job, edlevel, sex, birthdate, salary, bonus, comm) VALUES ('000804', 'Jack', ' ', 'Jim', 'A00', '1111', '2019-02-01', 'SA      ', 15, 'M', '1980-01-25', 10000, 0, 0);
INSERT INTO public.employee (empno, firstnme, midinit, lastname, workdept, phoneno, hiredate, job, edlevel, sex, birthdate, salary, bonus, comm) VALUES ('60002 ', 'Jessica', 'A', 'Sally', 'A01', '1111', '2019-02-15', 'Manager ', 15, 'F', '1990-01-01', 50000, 0, 0);
INSERT INTO public.employee (empno, firstnme, midinit, lastname, workdept, phoneno, hiredate, job, edlevel, sex, birthdate, salary, bonus, comm) VALUES ('60003 ', 'Tony', 'A', 'Sally', 'A01', '1111', '2019-02-15', 'Manager ', 15, 'M', '1990-01-01', 50000, 0, 0);
INSERT INTO public.employee (empno, firstnme, midinit, lastname, workdept, phoneno, hiredate, job, edlevel, sex, birthdate, salary, bonus, comm) VALUES ('60004 ', 'Jack', 'A', 'Sally', 'A01', '1111', '2019-02-15', 'Manager ', 15, 'M', '1990-01-01', 50000, 0, 0);
INSERT INTO public.employee (empno, firstnme, midinit, lastname, workdept, phoneno, hiredate, job, edlevel, sex, birthdate, salary, bonus, comm) VALUES ('000020', 'MICHAEL', 'L', 'THOMPSON', 'B01', '3476', '2003-10-10', 'MANAGER ', 18, 'M', '1978-02-02', 200000, 800, 3300);