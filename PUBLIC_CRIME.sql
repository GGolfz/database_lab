create table CRIME
(
    CRIMENO             VARCHAR(255),
    INCIDENTTYPE        VARCHAR(255),
    RESPONSIBLEPOLICENO VARCHAR(255),
    DATE                DATE,
    TIME                TIME
);

INSERT INTO PUBLIC.CRIME (CRIMENO, INCIDENTTYPE, RESPONSIBLEPOLICENO, DATE, TIME) VALUES ('0001', 'DIE', '0001', '2020-12-04', null);
INSERT INTO PUBLIC.CRIME (CRIMENO, INCIDENTTYPE, RESPONSIBLEPOLICENO, DATE, TIME) VALUES ('0002', 'DIE', '0001', '2012-12-13', null);
INSERT INTO PUBLIC.CRIME (CRIMENO, INCIDENTTYPE, RESPONSIBLEPOLICENO, DATE, TIME) VALUES ('0003', 'DIE', '0001', '2012-12-20', null);
INSERT INTO PUBLIC.CRIME (CRIMENO, INCIDENTTYPE, RESPONSIBLEPOLICENO, DATE, TIME) VALUES ('0004', 'DIE', '0001', '2020-12-04', null);
INSERT INTO PUBLIC.CRIME (CRIMENO, INCIDENTTYPE, RESPONSIBLEPOLICENO, DATE, TIME) VALUES ('0005', 'DIE', '0002', '2012-12-01', null);
INSERT INTO PUBLIC.CRIME (CRIMENO, INCIDENTTYPE, RESPONSIBLEPOLICENO, DATE, TIME) VALUES ('0006', 'DIE', '0002', '2012-12-01', null);
INSERT INTO PUBLIC.CRIME (CRIMENO, INCIDENTTYPE, RESPONSIBLEPOLICENO, DATE, TIME) VALUES ('0007', 'DIE', '0003', '2012-12-01', null);
INSERT INTO PUBLIC.CRIME (CRIMENO, INCIDENTTYPE, RESPONSIBLEPOLICENO, DATE, TIME) VALUES ('0008', 'DIE', '0004', '2020-12-04', null);
INSERT INTO PUBLIC.CRIME (CRIMENO, INCIDENTTYPE, RESPONSIBLEPOLICENO, DATE, TIME) VALUES ('0009', 'DIE', '0004', '2012-12-01', null);
INSERT INTO PUBLIC.CRIME (CRIMENO, INCIDENTTYPE, RESPONSIBLEPOLICENO, DATE, TIME) VALUES ('0010', 'DIE', '0009', '2020-12-03', null);
INSERT INTO PUBLIC.CRIME (CRIMENO, INCIDENTTYPE, RESPONSIBLEPOLICENO, DATE, TIME) VALUES ('0011', 'OP DIE IN DB EXAM ROOM', '0010', '2012-12-01', null);
INSERT INTO PUBLIC.CRIME (CRIMENO, INCIDENTTYPE, RESPONSIBLEPOLICENO, DATE, TIME) VALUES ('0008', 'OP KILL Aj During Exam', '0008', '2020-12-04', null);