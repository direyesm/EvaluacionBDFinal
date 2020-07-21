-- Generado por Oracle SQL Developer Data Modeler 20.2.0.167.1538
--   en:        2020-07-21 18:45:43 CLT
--   sitio:      Oracle Database 11g
--   tipo:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE alternativas (
    id_alter         VARCHAR2(10) NOT NULL,
    descripcion      VARCHAR2(100) NOT NULL,
    valorlogico      CHAR(1) NOT NULL,
    porcentaje       INTEGER NOT NULL,
    pregunta_id_pre  VARCHAR2(5)
)
LOGGING;

ALTER TABLE alternativas ADD CONSTRAINT alternativas_pk PRIMARY KEY ( id_alter );

CREATE TABLE alumno (
    id_alum         INTEGER NOT NULL,
    nombre          VARCHAR2(25) NOT NULL,
    apellido        VARCHAR2(25) NOT NULL,
    curso_id_curso  INTEGER NOT NULL
)
LOGGING;

ALTER TABLE alumno ADD CONSTRAINT alumno_pk PRIMARY KEY ( id_alum );

CREATE TABLE curso (
    id_curso  INTEGER NOT NULL,
    nombre    VARCHAR2(50) NOT NULL
)
LOGGING;

ALTER TABLE curso ADD CONSTRAINT curso_pk PRIMARY KEY ( id_curso );

CREATE TABLE curso_test (
    curso_id_curso  INTEGER NOT NULL,
    test_id_test    VARCHAR2(10) NOT NULL
)
LOGGING;

ALTER TABLE curso_test ADD CONSTRAINT curso_test_pk PRIMARY KEY ( curso_id_curso,
                                                                  test_id_test );

CREATE TABLE pregunta (
    id_pre        VARCHAR2(5) NOT NULL,
    enunciado     VARCHAR2(150) NOT NULL,
    puntaje       INTEGER NOT NULL,
    test_id_test  VARCHAR2(10) NOT NULL
)
LOGGING;

ALTER TABLE pregunta ADD CONSTRAINT pregunta_pk PRIMARY KEY ( id_pre );

CREATE TABLE respuesta (
    id_resp                VARCHAR2(5) NOT NULL,
    alumno_id_alum         INTEGER,
    pregunta_id_pre        VARCHAR2(5),
    alternativas_id_alter  VARCHAR2(10)
)
LOGGING;

ALTER TABLE respuesta ADD CONSTRAINT respuesta_pk PRIMARY KEY ( id_resp );

CREATE TABLE test (
    id_test      VARCHAR2(10) NOT NULL,
    nombre       VARCHAR2(100) NOT NULL,
    descripcion  VARCHAR2(150) NOT NULL,
    unidad       VARCHAR2(5) NOT NULL,
    autor        VARCHAR2(20) NOT NULL,
    fecha        DATE NOT NULL
)
LOGGING;

ALTER TABLE test ADD CONSTRAINT test_pk PRIMARY KEY ( id_test );

ALTER TABLE alternativas
    ADD CONSTRAINT alternativas_pregunta_fk FOREIGN KEY ( pregunta_id_pre )
        REFERENCES pregunta ( id_pre )
    NOT DEFERRABLE;

ALTER TABLE alumno
    ADD CONSTRAINT alumno_curso_fk FOREIGN KEY ( curso_id_curso )
        REFERENCES curso ( id_curso )
    NOT DEFERRABLE;

ALTER TABLE curso_test
    ADD CONSTRAINT curso_test_curso_fk FOREIGN KEY ( curso_id_curso )
        REFERENCES curso ( id_curso )
    NOT DEFERRABLE;

ALTER TABLE curso_test
    ADD CONSTRAINT curso_test_test_fk FOREIGN KEY ( test_id_test )
        REFERENCES test ( id_test )
    NOT DEFERRABLE;

ALTER TABLE pregunta
    ADD CONSTRAINT pregunta_test_fk FOREIGN KEY ( test_id_test )
        REFERENCES test ( id_test )
    NOT DEFERRABLE;

ALTER TABLE respuesta
    ADD CONSTRAINT respuesta_alternativas_fk FOREIGN KEY ( alternativas_id_alter )
        REFERENCES alternativas ( id_alter )
    NOT DEFERRABLE;

ALTER TABLE respuesta
    ADD CONSTRAINT respuesta_alumno_fk FOREIGN KEY ( alumno_id_alum )
        REFERENCES alumno ( id_alum )
    NOT DEFERRABLE;

ALTER TABLE respuesta
    ADD CONSTRAINT respuesta_pregunta_fk FOREIGN KEY ( pregunta_id_pre )
        REFERENCES pregunta ( id_pre )
    NOT DEFERRABLE;



-- Informe de Resumen de Oracle SQL Developer Data Modeler:
--
-- CREATE TABLE                             7
-- CREATE INDEX                             0
-- ALTER TABLE                             15
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
