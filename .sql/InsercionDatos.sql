USE UNIVERSIDAD;

-- Insertar registros en la tabla PERSONA
INSERT INTO PERSONA (id, nif, nombre, telefono, sexo) VALUES
(1, '12345678A', 'Juan', 123456789, 'H'),
(2, '87654321B', 'María', 987654321, 'F'),
(3, '98765432C', 'Pedro', 654321987, 'H'),
(4, '23456789D', 'Ana', 456789123, 'F'),
(5, '54321678E', 'Carlos', 789123456, 'H');

-- Insertar registros en la tabla MATRICULA
INSERT INTO MATRICULA (id, fecha) VALUES
(1, '2024-01-15'),
(2, '2024-02-20'),
(3, '2024-03-25'),
(4, '2024-04-10'),
(5, '2024-05-05');

-- Insertar registros en la tabla DEPARTAMENTO
INSERT INTO DEPARTAMENTO (id, nombre) VALUES
(1, 'Informática'),
(2, 'Matemáticas'),
(3, 'Física'),
(4, 'Biología'),
(5, 'Química');

-- Insertar registros en la tabla ASIGNATURA
INSERT INTO ASIGNATURA (id, nombre, creditos, horas) VALUES
(1, 'Programación', 8, 120),
(2, 'Cálculo I', 10, 90),
(3, 'Física General', 7, 100),
(4, 'Biología Celular', 9, 150),
(5, 'Química Orgánica', 7, 110);

-- Insertar registros en la tabla ESTUDIANTE
INSERT INTO ESTUDIANTE (id_estudiante, id_matricula) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- Insertar registros en la tabla PROFESOR
INSERT INTO PROFESOR (id_profesor, id_departamento) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- Insertar registros en la tabla TIENE
INSERT INTO TIENE (id_estudiante, id_asignatura) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- Insertar registros en la tabla IMPARTE
INSERT INTO IMPARTE (id_profesor, id_asignatura) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- Insertar registros en la tabla PERTENECE
INSERT INTO PERTENECE (id_departamento, id_profesor) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);