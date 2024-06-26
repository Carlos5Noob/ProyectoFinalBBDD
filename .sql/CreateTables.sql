CREATE DATABASE UNIVERSIDAD;

USE UNIVERSIDAD;

CREATE TABLE PERSONA (
id INT PRIMARY KEY NOT NULL,
nif VARCHAR(9),
nombre VARCHAR(20),
telefono INT,
sexo CHAR CHECK (sexo IN ('H', 'F'))
);

CREATE TABLE MATRICULA (
id INT PRIMARY KEY NOT NULL,
fecha DATE
); 		

CREATE TABLE DEPARTAMENTO (
id INT PRIMARY KEY NOT NULL,
nombre VARCHAR(20)
);

CREATE TABLE ASIGNATURA (
id INT PRIMARY KEY NOT NULL,
nombre VARCHAR(20),
creditos INT CHECK (creditos > 6),
horas INT
);

CREATE TABLE ESTUDIANTE (
id_estudiante INT,
id_matricula INT,
FOREIGN KEY(id_estudiante) REFERENCES PERSONA(id) ON DELETE CASCADE,
FOREIGN KEY(id_matricula) REFERENCES MATRICULA(id) ON DELETE CASCADE
);

CREATE TABLE PROFESOR (
id_profesor INT,
id_departamento INT,
FOREIGN KEY(id_profesor) REFERENCES PERSONA(id) ON DELETE CASCADE,
FOREIGN KEY(id_departamento) REFERENCES DEPARTAMENTO(id) ON DELETE CASCADE
);

CREATE TABLE TIENE (
id_estudiante INT,
id_asignatura INT,
FOREIGN KEY(id_estudiante) REFERENCES ESTUDIANTE(id_estudiante) ON DELETE CASCADE,
FOREIGN KEY(id_asignatura) REFERENCES ASIGNATURA(id) ON DELETE CASCADE
);

CREATE TABLE IMPARTE (
id_profesor INT,
id_asignatura INT,
FOREIGN KEY(id_profesor) REFERENCES PROFESOR(id_profesor) ON DELETE CASCADE,
FOREIGN KEY(id_asignatura) REFERENCES ASIGNATURA(id) ON DELETE CASCADE
);

CREATE TABLE PERTENECE (
id_departamento INT,
id_profesor INT,
FOREIGN KEY(id_profesor) REFERENCES PROFESOR(id_profesor) ON DELETE CASCADE,
FOREIGN KEY(id_departamento) REFERENCES DEPARTAMENTO(id) ON DELETE CASCADE
);
