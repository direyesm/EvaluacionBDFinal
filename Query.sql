--Pregunta 1: Conocer el número de evaluaciones por curso.
SELECT curso.id_curso AS ID, curso.nombre AS nombre,
COUNT(curso_id_curso) AS evaluaciones
FROM
    curso
    JOIN curso_test ON curso.id_curso = curso_test.curso_id_curso
GROUP BY
    curso.id_curso,
    curso.nombre ORDER by
id;

--Pregunta 2: Conocer los cursos sin evaluaciones.
SELECT curso.id_curso   AS id, curso.nombre     AS nombre,
    COUNT(alumno.id_alum) AS alumno,
    COUNT(curso_test.curso_id_curso) AS evaluaciones
FROM
    curso
    LEFT JOIN curso_test ON curso.id_curso = curso_test.curso_id_curso
    LEFT JOIN alumno ON curso.id_curso = alumno.id_alum
GROUP BY
    curso.id_curso,
    curso.nombre
HAVING
    COUNT(curso_test.curso_id_curso) = 0
ORDER BY
    id;
-- Pregunta 3: Determinar las evaluaciones con deficiencia. Una evaluación es deficiente:
--a. Si no tiene preguntas.
--b. Si hay preguntas con 2 ó menos alternativas
--c. Si todas las alternativas son correctas o si todas las alternativas son incorrectas.

CREATE OR REPLACE VIEW deficiencias AS
    SELECT
        test.id_test AS evaluacion ,
        pregunta.id_pre AS pregunta,
        COUNT(alternativas.id_alter) AS alternativas,
        COUNT(CASE WHEN alternativas.valorlogico = '1' THEN 1 END) AS correctas,
        COUNT(CASE WHEN alternativas.valorlogico = '0' THEN 1 END) AS incorrectas
    FROM pregunta
        INNER JOIN alternativas ON pregunta.id_pre = alternativas.pregunta_id_pre
        INNER JOIN test ON pregunta.test_id_test = test.id_test
    GROUP BY
        pregunta.id_pre,
        test.id_test
    ORDER BY evaluacion, pregunta;

SELECT * FROM deficiencias;

SELECT
    test.nombre AS nombre
FROM test
    LEFT JOIN deficiencias ON test.id_test = deficiencias.alternativas
    LEFT JOIN pregunta ON test.id_test = pregunta.test_id_test
    LEFT JOIN alternativas ON pregunta.id_pre = alternativas.pregunta_id_pre
GROUP BY
    test.nombre
HAVING
    COUNT(CASE WHEN deficiencias.evaluacion = test.id_test THEN 1 END) = 0
    OR COUNT(CASE WHEN pregunta.id_pre = deficiencias.pregunta AND deficiencias.alternativas < 3 THEN 1 END) > 0
    OR COUNT(CASE WHEN deficiencias.correctas = 0 OR deficiencias.incorrectas = 0 THEN 1 END) > 0
ORDER BY nombre;

--Pregunta 4: Determinar cuántos alumnos hay en cada curso.
SELECT
    curso.id_curso AS ID,
    curso.nombre AS Nombre,
    COUNT(alumno.id_alum) AS Alumnos
FROM curso
    LEFT JOIN alumno ON curso.id_curso = alumno.curso_id_curso
GROUP BY
    curso.id_curso,
    curso.nombre
ORDER BY ID;

--Pregunta 5: Obtener el puntaje no normalizado de cada evaluación. El puntaje no
--normalizado ha sido definido (requerimiento) como: P = buenas – malas/4. Si un alumno
--no contesta en una pregunta exactamente lo mismo que se ha definido como correcto,
--la pregunta cuenta como mala a menos que el alumno haya omitido.

CREATE OR REPLACE VIEW evaluaciones_puntajes AS
    SELECT
        test.id_test AS id,
        test.nombre AS nombre,
        test.unidad AS unidad,
        SUM(pregunta.puntaje) AS puntaje
    FROM test
        LEFT JOIN pregunta ON test.id_test = pregunta.test_id_test
    GROUP BY
        test.id_test,
        test.nombre,
        test.unidad
    ORDER BY id;

SELECT * FROM evaluaciones_puntajes;

CREATE OR REPLACE VIEW alumnos_puntajes AS
    SELECT
        respuesta.alumno_id_alum AS alumno_id,
        alumno.nombre AS alumno_nombre,
        test.id_test AS evaluacion,
        pregunta.enunciado AS pregunta,
        alternativas.descripcion AS alternativa,
        ((pregunta.puntaje * alternativas.porcentaje) / 100) AS obtenido
    FROM respuesta
        INNER JOIN alternativas ON respuesta.alternativas_id_alter = alternativas.id_alter
        INNER JOIN pregunta ON alternativas.pregunta_id_pre = pregunta.id_pre
        INNER JOIN alumno ON respuesta.alumno_id_alum = alumno.id_alum
        INNER JOIN test ON pregunta.test_id_test = test.id_test
    ORDER BY respuesta.id_resp;

SELECT * FROM alumnos_puntajes;

CREATE OR REPLACE VIEW notas AS
    SELECT
        alumno_id AS id,
        alumno_nombre AS nombre,
        evaluacion,
        COUNT(CASE WHEN obtenido != 0 THEN 1 END) AS buenas,
        COUNT(CASE WHEN obtenido = 0 THEN 1 END) AS malas,
        CASE
            WHEN ROUND(COUNT(CASE WHEN obtenido != 0 THEN 1 END) - (COUNT(CASE WHEN obtenido = 0 THEN 1 END) / 4), 1) < 1
            THEN 1
            ELSE ROUND(COUNT(CASE WHEN obtenido != 0 THEN 1 END) - (COUNT(CASE WHEN obtenido = 0 THEN 1 END) / 4), 1)
        END AS puntaje
    FROM alumnos_puntajes
        --INNER JOIN alumno USING (alumno_id)
    GROUP BY
        alumno_id,
        alumno_nombre,
        evaluacion
    ORDER BY id;

SELECT * FROM notas;

--Pregunta 6: Obtener el puntaje normalizado, o sea, de 1,0 a 7,0.

CREATE OR REPLACE VIEW notas_normalizadas AS
    SELECT
        alumno_id AS id,
        alumno_nombre AS nombre,
        evaluacion AS evaluacion,
        evaluaciones_puntajes.puntaje AS puntaje_total,
        SUM(obtenido) AS puntaje_obtenido,
        CASE
            WHEN (7 * SUM(obtenido) / evaluaciones_puntajes.puntaje) < 1
            THEN 1
            ELSE ROUND((7 * SUM(obtenido) / evaluaciones_puntajes.puntaje), 1)
        END as calificacion
    FROM alumnos_puntajes
        LEFT JOIN evaluaciones_puntajes ON alumnos_puntajes.evaluacion = evaluaciones_puntajes.id
    GROUP BY
        alumno_id, alumno_nombre, evaluacion, evaluaciones_puntajes.puntaje
    ORDER BY id;

SELECT * FROM notas_normalizadas;


--Pregunta 7: Nombre de estudiantes de un curso determinado que aprueban una
--evaluación determinada (donde la nota de aprobación mínima es un 4,0).

SELECT * FROM notas_normalizadas WHERE calificacion >= 4;

--Pregunta 8: Nota promedio de los estudiantes de un curso determinado, para una
--evaluación de terminada.

SELECT
    curso.id_curso AS id,
    curso.nombre AS curso,
    test.id_test AS evaluacion,
    ROUND(AVG(notas_normalizadas.calificacion), 1) AS promedio
FROM curso
    LEFT JOIN alumno ON curso.id_curso = alumno.curso_id_curso
    LEFT JOIN notas_normalizadas ON alumno.id_alum = notas_normalizadas.id
    LEFT JOIN test ON notas_normalizadas.evaluacion = test.id_test
GROUP BY
    curso.id_curso, curso.nombre, test.id_test
ORDER BY id;
