create table department
(
    deptno   integer not null
        constraint department_pkey
            primary key,
    deptname varchar(50),
    location varchar(50)
);

create table employee
(
    empno    integer not null
        constraint employee_pkey
            primary key,
    name     varchar(50),
    salary   numeric,
    workdept integer
        constraint employee_department_deptno_fk
            references department
);

create table project
(
    projid     integer not null
        constraint project_pkey
            primary key,
    name       varchar(50),
    start_date date,
    end_date   date
);

create table work_on
(
    empno     integer
        constraint work_on_employee_empno_fk
            references employee,
    projid    integer
        constraint work_on_project_projid_fk
            references project,
    startdate date
);


INSERT INTO public.department (deptno, deptname, location) VALUES (1, 'Financial', 'Thailand');
INSERT INTO public.department (deptno, deptname, location) VALUES (2, 'HR', 'New York');
INSERT INTO public.department (deptno, deptname, location) VALUES (3, 'Accounting', 'Japan');

INSERT INTO public.employee (empno, name, salary, workdept) VALUES (1, 'EMP1', 30000, 1);
INSERT INTO public.employee (empno, name, salary, workdept) VALUES (2, 'EMP2', 60000, 1);
INSERT INTO public.employee (empno, name, salary, workdept) VALUES (3, 'EMP3', 82000, 1);
INSERT INTO public.employee (empno, name, salary, workdept) VALUES (4, 'EMP4', 50000, 3);
INSERT INTO public.employee (empno, name, salary, workdept) VALUES (5, 'EMP5', 100000, 3);

INSERT INTO public.project (projid, name, start_date, end_date) VALUES (1, 'P1', '2020-10-09', '2020-10-31');
INSERT INTO public.project (projid, name, start_date, end_date) VALUES (2, 'P2', '2019-10-10', '2020-10-09');
INSERT INTO public.project (projid, name, start_date, end_date) VALUES (3, 'P3', '2019-10-10', '2020-10-09');
INSERT INTO public.project (projid, name, start_date, end_date) VALUES (4, 'P4', '2020-10-09', '2020-10-31');
INSERT INTO public.project (projid, name, start_date, end_date) VALUES (5, 'P5', '2020-10-09', '2020-10-31');
INSERT INTO public.project (projid, name, start_date, end_date) VALUES (6, 'P6', '2020-10-09', '2020-10-31');
INSERT INTO public.project (projid, name, start_date, end_date) VALUES (7, 'P7', '2020-10-09', '2020-10-31');
INSERT INTO public.project (projid, name, start_date, end_date) VALUES (8, 'P8', '2020-10-09', '2020-10-31');

INSERT INTO public.work_on (empno, projid, startdate) VALUES (1, 1, '2020-10-22');
INSERT INTO public.work_on (empno, projid, startdate) VALUES (1, 2, '2020-10-22');
INSERT INTO public.work_on (empno, projid, startdate) VALUES (1, 3, '2020-10-22');
INSERT INTO public.work_on (empno, projid, startdate) VALUES (1, 4, '2020-10-22');
INSERT INTO public.work_on (empno, projid, startdate) VALUES (1, 5, '2020-10-22');
INSERT INTO public.work_on (empno, projid, startdate) VALUES (2, 6, '2020-10-22');
INSERT INTO public.work_on (empno, projid, startdate) VALUES (3, 2, '2020-10-22');
INSERT INTO public.work_on (empno, projid, startdate) VALUES (2, 2, '2020-10-22');
INSERT INTO public.work_on (empno, projid, startdate) VALUES (2, 1, '2020-10-22');
INSERT INTO public.work_on (empno, projid, startdate) VALUES (2, 3, '2020-10-22');
INSERT INTO public.work_on (empno, projid, startdate) VALUES (3, 4, '2020-10-22');
INSERT INTO public.work_on (empno, projid, startdate) VALUES (2, 8, '2020-10-22');
INSERT INTO public.work_on (empno, projid, startdate) VALUES (1, 6, '2020-10-22');