
-- Creamos la tabla

CREATE TABLE Contactos(
 dni SERIAL PRIMARY KEY,
 apellido VARCHAR(20) NOT NULL,
 nombre VARCHAR(20) NOT NULL,
 direccion VARCHAR(20) NOT NULL,
 localidad VARCHAR(20) NOT NULL,
 telefono INTEGER NOT NULL
	);


-- Insertamos los valores

INSERT INTO CONTACTOS (dni, apellido, nombre, direccion,localidad,telefono) VALUES
(32000000, 'Agüero', 'Noelia', 'San Luis 123', 'Las Heras', 4372394),
(33000000, 'Zalazar', 'Mónica', 'Perú 3003', 'Ciudad', 4303037),
(29000000, 'Manrique', 'Carlos', 'Adolfo Calle 2390', 'Guaymallén', 4213430),
(35000000, 'Castro', 'Laura', 'San Miguel 882', 'Las Heras', 4377721),
(34000000, 'Costa', 'Miguel', 'Italia 118', 'Ciudad', 4300803),
(31000000, 'Diaz', 'Darío', 'Hellen Keller 349', 'Guaymallén', 4263219);

-- Consultas SQL

-- 1
ALTER TABLE Contactos ADD COLUMN Email VARCHAR(50);

-- Actualizamos los valores de Email usando el DNI correcto

UPDATE Contactos SET Email = 'agueronoelia@gmail.com' WHERE dni = 32000000;
UPDATE Contactos SET Email = 'zalazarmonica@gmail.com' WHERE dni = 33000000;
UPDATE Contactos SET Email = 'manriquecarlos@gmail.com' WHERE dni = 29000000;
UPDATE Contactos SET Email = 'castrolaura@gmail.com' WHERE dni = 35000000;
UPDATE Contactos SET Email = 'costamiguel@gmail.com' WHERE dni = 34000000;
UPDATE Contactos SET Email = 'diazdario@gmail.com' WHERE dni = 31000000;



-- 2

ALTER TABLE Contactos ALTER COLUMN Direccion SET DATA TYPE VARCHAR(35);


-- 3

-- Eliminar una tabla

DROP TABLE Contactos;

-- Vaciar la tabla de contactos

TRUNCATE TABLE Contactos;

-- Eliminar la columna de la tabla indicada

ALTER TABLE Contactos DROP COLUMN Email;

-- Renombrar el nombre de la tabla
ALTER TABLE Contactos RENAME TO Clientes;


ALTER TABLE Contactos RENAME TO Contactos;


SELECT * FROM Clientes;


SELECT * FROM Contactos;
