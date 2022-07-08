/*
Autor: Roberto Jaime Rico Sandoval.
Fille: Proyecto final.
Date: 07/ 0/ 2022
*/

CREATE DATABASE Proyecto_final;
USE Proyecto_final;

CREATE TABLE Proveedores (
	id_proveedor INT (12) NOT NULL Primary KEY,
    nombre_proveedor VARCHAR (50),
    provincia VARCHAR (50),
    direccion VARCHAR (100),
    ciudad VARCHAR (50),
    fecha_de_entrega DATE
);

CREATE TABLE Categorias (
	id_categoria INT (12) NOT NULL PRIMARY KEY,
    nombre_categoria VARCHAR (50),
    Departamento VARCHAR (50)
);

CREATE TABLE Piezas (
	id_pieza INT (12) NOT NULL PRIMARY KEY,
    nombre_pieza VARCHAR (80),
    color VARCHAR (50),
    precio DOUBLE,
    descripcion_categoria VARCHAR (50),
    id_categoria INT (12) NOT NULL,
    
    FOREIGN KEY (id_categoria) REFERENCES Categorias (id_categoria)
);

CREATE TABLE Historico (
	id_historico INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Cantidad INT,
    fechas_de_entrega DATE,
    id_pieza INT (12) NOT NULL,
    Nombres_de_las_piezas VARCHAR (80),
    
    FOREIGN KEY (id_pieza) REFERENCES Piezas (id_pieza)
);

INSERT INTO Proveedores (id_proveedor, nombre_proveedor, provincia, direccion, ciudad, fecha_de_entrega)
VALUES (1578, "Don Omar", "México", "adsasdas", "CDMX", '2022-8-2-'),
(1538, "Uriel Parra Lerma", "México", "adsasdas", "CDMX", '2022-5-2-'),
(78954, "El de los lentes", "México", "adsasdas", "CDMX", '2020-12-24');

INSERT INTO Categorias (id_categoria, nombre_categoria, Departamento)
VALUES (459, "Destornilladores", "Herramientas generales"),
(850, "Palas", "Herramientas de uso pesado"),
(894, "Eléctromartillo", "Herramientas especiales");

INSERT INTO Piezas (id_pieza, nombre_pieza, color, precio, descripcion_categoria, id_categoria)
VALUES (7456, "Juego de Destornilladores PHILLIP", "Azul y blanco", 258.0, "Juego de Destornilladores con 6 Pz", 459),
(4631, "Pala Pretul", "Gris métalico", 170.0, "Pala de acero inoxidable", 850),
(2555, "Eléctromartillo NIKITA B5", "Azul agua", 3400.0, "Eléctromartillo moderno con 6 cabezales distintos", 894);

INSERT INTO Historico (id_historico, Cantidad, fechas_de_entrega, id_pieza, Nombres_de_las_piezas)
VALUES (5147, 30,'2022-8-2-', 7456, "Juego de Destornilladores PHILLIP"),
(51634, 50, '2022-5-2-', 4631, "Pala Pretul"),
(31547, 10, '2020-12-24', 2555, "Eléctromartillo NIKITA B5");

