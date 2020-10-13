-- 產生者Oracle SQL Developer Data Modeler 20.2.0.167.1538
-- 於:2020-10-13 21:19:42 TST
-- 位置:Oracle Database 12cR2
-- 類型:Oracle Database 12cR2



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE allsubject (
    subject   VARCHAR2(30) NOT NULL,
    time      DATE,
    username  VARCHAR2(30),
    lasttime  DATE,
    "Column"  NUMBER(3)
)
LOGGING;

ALTER TABLE allsubject ADD CONSTRAINT allsubject_pk PRIMARY KEY ( subject );

CREATE TABLE "group" (
    subject   VARCHAR2(30) NOT NULL,
    time      DATE,
    username  VARCHAR2(30),
    lasttime  DATE,
    column_5  NUMBER(3)
)
LOGGING;

ALTER TABLE "group" ADD CONSTRAINT group_pk PRIMARY KEY ( subject );

CREATE TABLE knowledge (
    subject     VARCHAR2(30) NOT NULL,
    time        DATE,
    username    VARCHAR2(30),
    lasttime    DATE,
    column_5_1  NUMBER(3)
)
LOGGING;

ALTER TABLE knowledge ADD CONSTRAINT knowledge_pk PRIMARY KEY ( subject );

CREATE TABLE lost (
    subject     VARCHAR2(30) NOT NULL,
    time        DATE,
    username    VARCHAR2(30),
    lasttime    DATE,
    column_5_3  NUMBER(3)
)
LOGGING;

ALTER TABLE lost ADD CONSTRAINT lost_pk PRIMARY KEY ( subject );

CREATE TABLE question (
    subject     VARCHAR2(30) NOT NULL,
    time        DATE,
    username    VARCHAR2(30),
    lasttime    DATE,
    column_5_4  NUMBER(3)
)
LOGGING;

ALTER TABLE question ADD CONSTRAINT question_pk PRIMARY KEY ( subject );



-- Oracle SQL Developer Data Modeler 摘要報表:
-- 
-- CREATE TABLE                             5
-- CREATE INDEX                             0
-- ALTER TABLE                              5
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
