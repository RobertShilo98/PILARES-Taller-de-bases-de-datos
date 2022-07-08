/*
Autor: Roberto jaime Rico Sandoval.
Fille: Triggers.
Date: 07/ 07/ 2022
*/

CREATE DATABASE test;
USE test;

CREATE TABLE alumnos (
	id_alumno INT NOT NULL,
    nombre VARCHAR (50),
    apellido1 VARCHAR (40),
    apellido2 VARCHAR (40),
    nota FLOAT,
    
    PRIMARY KEY (id_alumno)
);

CREATE TABLE registro_alumnos (
	id_registro INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR (50),
    apellido1 VARCHAR (40),
    apellido2 VARCHAR (40),
    fecha_de_registro DATETIME,
    
    PRIMARY KEY (id_registro)
    
);

CREATE TABLE alumnos_eliminados (
	id_eliminacion INT UNSIGNED AUTO_INCREMENT,
    nombre VARCHAR (50),
    apellido1 VARCHAR (40),
    apellido2 VARCHAR (40),
    nota FLOAT,
    fecha_de_eliminación DATETIME,
    
    PRIMARY KEY (id_eliminacion)
);

CREATE TRIGGER AlumnosAI AFTER INSERT 
ON alumnos
FOR EACH ROW 
INSERT INTO registro_alumnos (fecha_de_registro) 
VALUES (fecha_de_registro,NOW());

DROP TRIGGER AlumnosAI;

CREATE TRIGGER AlumnosBD BEFORE DELETE 
ON alumnos
FOR EACH ROW
INSERT INTO alumnos_eliminados (nombre, apellido1, apellido2, nota, fecha_de_eliminación)
VALUES (OLD.nombre, OLD.apellido1, OLD.apellido2, OLD.nota,fecha_de_eliminación,USER(),NOW());

DROP TRIGGER AlumnosBD;

SELECT * FROM alumnos;
SELECT * FROM registro_alumnos;
SELECT * FROM alumnos_eliminados;


