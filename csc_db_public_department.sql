create table department
(
    deptno   varchar not null
        constraint department_pk
            primary key,
    deptname varchar,
    mgrno    varchar,
    admrdept varchar,
    location varchar
);

INSERT INTO public.department (deptno, deptname, mgrno, admrdept, location) VALUES ('A00', 'SPIFFY COMPUTER SERVICE DIV.', '000010', 'A00', null);
INSERT INTO public.department (deptno, deptname, mgrno, admrdept, location) VALUES ('B01', 'PLANNING', '000020', 'A00', null);
INSERT INTO public.department (deptno, deptname, mgrno, admrdept, location) VALUES ('C01', 'INFORMATION CENTER', '000030', 'A00', null);
INSERT INTO public.department (deptno, deptname, mgrno, admrdept, location) VALUES ('D01', 'DEVELOPMENT CENTER', null, 'A00', null);
INSERT INTO public.department (deptno, deptname, mgrno, admrdept, location) VALUES ('D11', 'MANUFACTURING SYSTEMS', '000060', 'D01', null);
INSERT INTO public.department (deptno, deptname, mgrno, admrdept, location) VALUES ('D21', 'ADMINISTRATION SYSTEMS', '000070', 'D01', null);
INSERT INTO public.department (deptno, deptname, mgrno, admrdept, location) VALUES ('E01', 'OPERATIONS', '000050', 'A00', null);
INSERT INTO public.department (deptno, deptname, mgrno, admrdept, location) VALUES ('E11', 'OPERATIONS', '000090', 'E01', null);
INSERT INTO public.department (deptno, deptname, mgrno, admrdept, location) VALUES ('E21', 'SOFTWARE SUPPORT', '000100', 'E01', null);
INSERT INTO public.department (deptno, deptname, mgrno, admrdept, location) VALUES ('F22', 'BRANCH OFFICE F2', null, 'E01', null);
INSERT INTO public.department (deptno, deptname, mgrno, admrdept, location) VALUES ('G22', 'BRANCH OFFICE G2', null, 'E01', null);
INSERT INTO public.department (deptno, deptname, mgrno, admrdept, location) VALUES ('H22', 'BRANCH OFFICE H2', null, 'E01', null);
INSERT INTO public.department (deptno, deptname, mgrno, admrdept, location) VALUES ('I22', 'BRANCH OFFICE I2', null, 'E01', null);
INSERT INTO public.department (deptno, deptname, mgrno, admrdept, location) VALUES ('J22', 'BRANCH OFFICE J2', null, 'E01', null);
INSERT INTO public.department (deptno, deptname, mgrno, admrdept, location) VALUES ('A01', 'Op Branch', null, null, null);