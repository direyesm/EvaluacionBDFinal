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
