
CREATE TABLE Rugbiers (
    id_rugbiers SERIAL PRIMARY KEY,  
    apellido VARCHAR(100),
    nombre VARCHAR(100),
    edad INT, -- No es necesario especificar el tamaño en los enteros, el valor por defecto de INT es suficiente
    altura DECIMAL(4,2), -- Para almacenar la altura en metros, por ejemplo, 1.85
    peso DECIMAL(5,2), -- Para almacenar el peso en kilogramos, como 90.50
    posicion VARCHAR(50), -- Agregué un tipo de dato y un tamaño razonable para la posición
    partidos INT, -- Número entero para los partidos jugados
    tackles INT -- Número entero para los tackles realizados
);



INSERT INTO Rugbiers (apellido,nombre,edad,altura,peso,posicion,partidos,tackles) VALUES ('Gomez','Mariano','28','1.80','85','segunda','12','101');
INSERT INTO Rugbiers (apellido,nombre,edad,altura,peso,posicion,partidos,tackles) VALUES ('Ramirez','Mariano','29','1.74','113','pilar','8','89');
INSERT INTO Rugbiers (apellido,nombre,edad,altura,peso,posicion,partidos,tackles) VALUES ('Sanchez','Eugenio','27','1.73','110','hooker','8','121');
INSERT INTO Rugbiers (apellido,nombre,edad,altura,peso,posicion,partidos,tackles) VALUES ('Perez','Carlos','22','1.88','92','ala','9','96');
INSERT INTO Rugbiers (apellido,nombre,edad,altura,peso,posicion,partidos,tackles) VALUES ('Tello','Joaquin','30','1.89','89','segunda','10','92');


SELECT * FROM Rugbiers;


-- 1
SELECT SUM(tackles) FROM TPCO_8_PRACTICA;


-- 2
SELECT AVG(tackles) FROM  TPCO_8_PRACTICA
WHERE posicion = 'pilar';

-- 3
SELECT AVG(peso) AS "Promedio Peso" FROM TPCO_8_PRACTICA;

-- 4
SELECT COUNT (posicion) FROM TPCO_8_PRACTICA
WHERE posicion = 'ala';

-- 5
SELECT COUNT (posicion) AS ">100kgs" FROM TPCO_8_PRACTICA
WHERE peso > 100;


-- 6
SELECT SUM (peso) FROM TPCO_8_PRACTICA;

-- 7
SELECT SUM(altura) / COUNT(altura) FROM TPCO_8_PRACTICA;

-- 8
SELECT apellido,nombre,edad  FROM TPCO_8_PRACTICA
WHERE edad=(SELECT MIN (edad) FROM TPCO_8_PRACTICA);

-- 9
SELECT nombre, apellido,partidos
FROM TPCO_8_PRACTICA
WHERE partidos = (SELECT MAX(partidos) FROM TPCO_8_PRACTICA);

-- 10
SELECT apellido,nombre,posicion FROM TPCO_8_PRACTICA
WHERE peso < 100;

-- 11
SELECT AVG(partidos) AS "Promedio de partidos de todos los pilares" FROM TPCO_8_PRACTICA
WHERE posicion = 'pilar';

