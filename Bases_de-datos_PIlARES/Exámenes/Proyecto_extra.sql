/*
Autor: Roberto Jaime Rico SAndoval
Felli: Base de Datos.
Date: 12/ 07/ 2022
*/

CREATE DATABASE SanPatras;
USE SanPatras;

CREATE TABLE pacientes (
	ID_paciente INT NOT NULL UNIQUE PRIMARY KEY,
    Ciudad VARCHAR (50),
    Nombre VARCHAR (100),
    Apellidos VARCHAR (100),
    Direccion VARCHAR (150),
    CP INT (8),
    Fecha_de_nacimiento DATETIME,
    Telefono INT (10)
	
);

CREATE TABLE medicos (
	ID_medico INT NOT NULL UNIQUE PRIMARY KEY,
    Nombre VARCHAR (100),
    Apellidos VARCHAR (100),
    Telefono INT (10),
    Especialidad VARCHAR (75)
    
);

CREATE TABLE registros (
	ID_registro INT NOT NULL auto_increment PRIMARY KEY,
	Num_habitacion INT (3),
    Num_cama INT (2),
    fecha_de_ingreso DATETIME,
	fecha_de_salida DATETIME,
    Medico_asignado INT NOT NULL UNIQUE,
    Cedula_paciente INT NOT NULL UNIQUE,
    
    FOREIGN KEY (Medico_asignado) REFERENCES medicos (ID_medico),
    FOREIGN KEY (Cedula_paciente) REFERENCES pacientes (ID_paciente)

);

ALTER TABLE SanPatras.pacientes ALTER COLUMN Telefono DECIMAL (12);

INSERT INTO pacientes (ID_paciente, Ciudad, Nombre, Apellidos, Direccion, CP, Fecha_de_nacimiento, Telefono) VALUES
(16784, "CDMX", "Arturo", "Rámirez Sanchéz", "#653 Jacintos, Iztapalapa", 19006, '1985-12-27', 514005124);