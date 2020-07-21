select curso.id_curso AS ID, curso.nombre As Nombre, COUNT(curso_id_curso) AS Evaluaciones
    from curso
    join curso_test on curso.id_curso = curso_test.curso_id_curso
    GROUP BY curso.id_curso,curso.nombre ORDER BY ID;


select curso.id_curso AS ID,
