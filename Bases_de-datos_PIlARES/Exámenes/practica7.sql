/*
Autor: Roberto jaime Rico Sandoval.
Fille: Consultas básicas en SQL.
Date: 06/ 07/ 2022
*/

-- ¿Cuántos productos hay en la tabla?
SELECT nombre FROM Productos;
SELECT COUNT(nombre) FROM Productos; 

-- Productos por empresas.
SELECT COUNT(codigo) FROM Fabricante
WHERE nombre = "Xbotz";
SELECT COUNT(codigo) FROM Fabricante
WHERE nombre = "Nientiendo";
SELECT COUNT(codigo) FROM Fabricante
WHERE nombre = "Shula";
SELECT COUNT(codigo) FROM Fabricante
WHERE nombre = "Sonyzzzz";
SELECT COUNT(codigo) FROM Fabricante
WHERE nombre = "Garena";

-- Orden descendente de precios (No lo consulte en la orden de empresas, porque, no había muchos números a ordenar, je je).
SELECT precio FROM Productos
ORDER BY (precio);

-- Precio máximo.
SELECT MAX(precio) FROM Productos;

-- Precio minímo.
SELECT MIN(precio) FROM Productos;

-- Media del precio.
SELECT AVG(precio) FROM Productos;

