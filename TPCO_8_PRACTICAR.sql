
-- Creamos la tabla

CREATE TABLE Rugbiers(
	id_rugbiers SERIAL PRIMARY KEY,
	apellido VARCHAR(50) NOT NULL,
	nombre VARCHAR(50) NOT NULL,
	edad INTEGER NOT NULL,
	altura INTEGER NOT NULL,
	peso INTEGER NOT NULL,
	posicion VARCHAR(50) NOT NULL,
	partidos INTEGER NOT NULL,
	tackles INTEGER NOT NULL
);


-- Insertamos los valores

INSERT INTO RUGBIERS (apellido, nombre, edad, altura, peso, posicion, partidos, tackles)
VALUES 
('Ramirez', 'Oscar', 25, 1.88, 118, 'pilar', 12, 98),
('Sánchez', 'Miguel', 24, 1.83, 99, 'ala', 10, 109),
('Tello', 'Nicolás', 28, 1.91, 100, 'octavo', 11, 75),
('Gomez', 'Mariano', 28, 1.80, 85, 'segunda', 12, 101),
('Ramirez', 'Mariano', 29, 1.74, 113, 'pilar', 8, 89),
('Sanchez', 'Eugenio', 27, 1.73, 110, 'hooker', 8, 121),
('Perez', 'Carlos', 22, 1.88, 92, 'ala', 9, 96),
('Tello', 'Joaquín', 30, 1.89, 89, 'segunda', 10, 92);


SELECT * FROM Rugbiers;


-- Sentencias SQL

-- 1

SELECT SUM(tackles) 
FROM Rugbiers;

-- 2

SELECT AVG(tackles)
FROM Rugbiers
WHERE posicion = 'pilar';

-- 3

SELECT AVG(peso) AS "promedio_peso"
FROM Rugbiers;

-- 4

SELECT COUNT(posicion) AS "cantidad_de_jugadores_en_ala"
FROM Rugbiers
WHERE posicion = 'ala';

-- 5

SELECT COUNT (peso) AS ">100KGS"
FROM Rugbiers
WHERE peso > 100;

-- 6

SELECT SUM (peso) 
FROM Rugbiers;

-- 7

SELECT SUM(altura) / COUNT(altura) AS promedio_altura
FROM Rugbiers;

-- 8

SELECT apellido,nombre,edad 
FROM Rugbiers
WHERE edad=(SELECT MIN(edad) FROM Rugbiers);

-- 9

SELECT apellido,nombre,partidos
FROM Rugbiers
WHERE partidos=(SELECT MAX(partidos) FROM Rugbiers);

-- 10

SELECT apellido,nombre,posicion 
FROM Rugbiers
WHERE peso <= 100;


-- 11

SELECT AVG(partidos) AS "promedio_de_los_pilares"
FROM Rugbiers
WHERE posicion = 'pilar';