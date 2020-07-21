select curso.id_curso AS ID, curso.nombre As Nombre, COUNT(curso_id_curso) AS Evaluaciones
    from curso
    join curso_test on curso.id_curso = curso_test.curso_id_curso
    GROUP BY curso.id_curso,curso.nombre ORDER BY ID;


select curso.id_curso AS ID, 

SELECT
    cursos.curso_id AS ID,
    cursos.programa AS Programas,
    COUNT(alumnos.alumno_id) AS Alumnos,
    COUNT(curso_evaluacion.curso_id) AS Evaluaciones
FROM cursos
    LEFT JOIN curso_evaluacion ON cursos.curso_id = curso_evaluacion.curso_id
    LEFT JOIN alumnos ON cursos.curso_id = alumnos.curso_id
GROUP BY
    cursos.curso_id,
    cursos.programa
HAVING
    COUNT(curso_evaluacion.curso_id) = 0
ORDER BY ID;
