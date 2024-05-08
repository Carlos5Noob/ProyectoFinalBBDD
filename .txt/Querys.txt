USE UNIVERSIDAD;

/*Query 1*/
SELECT D.nombre AS departamento, COUNT(E.id_estudiante) AS num_estudiantes
FROM DEPARTAMENTO D
JOIN PROFESOR P ON D.id = P.id_departamento
JOIN IMPARTE I ON P.id_profesor = I.id_profesor
JOIN ASIGNATURA A ON I.id_asignatura = A.id
JOIN TIENE T ON A.id = T.id_asignatura
JOIN ESTUDIANTE E ON T.id_estudiante = E.id_estudiante
JOIN MATRICULA M ON E.id_matricula = M.id
WHERE A.creditos > 6
GROUP BY D.nombre;


/*Query 2*/
SELECT P.id_profesor, PER.nombre AS nombre_profesor, COUNT(I.id_asignatura) AS num_asignaturas
FROM PROFESOR P
JOIN PERSONA PER ON P.id_profesor = PER.id
JOIN IMPARTE I ON P.id_profesor = I.id_profesor
JOIN ASIGNATURA A ON I.id_asignatura = A.id
WHERE PER.nombre NOT LIKE 'A%'
GROUP BY P.id_profesor, PER.nombre;


/*Query 3*/
SELECT nombre
FROM ASIGNATURA
WHERE horas > (
    SELECT AVG(horas) AS promedio_horas
    FROM ASIGNATURA
);