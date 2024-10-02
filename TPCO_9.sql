CREATE TABLE IF NOT EXISTS CONTACTOS(
    DNI SERIAL PRIMARY KEY,
    APELLIDO VARCHAR(20),
    NOMBRE VARCHAR(20),
    DIRECCION VARCHAR(25),
    LOCALIDAD VARCHAR(20),
    TELEFONO INTEGER
);

INSERT INTO CONTACTOS (DNI, APELLIDO, NOMBRE, DIRECCION, LOCALIDAD, TELEFONO) VALUES
    (32000000, 'Agüero', 'Noelia', 'San Luis 123', 'Las Heras', 4372394),
    (33000000, 'Zalazar', 'Mónica', 'Perú 3003', 'Ciudad', 4303037),
    (29000000, 'Manrique', 'Carlos', 'Adolfo Calle 2390', 'Guaymallén', 4213430),
    (35000000, 'Castro', 'Laura', 'San Miguel 882', 'Las Heras', 4377721),
    (34000000, 'Costa', 'Miguel', 'Italia 118', 'Ciudad', 4300803),
    (31000000, 'Diaz', 'Darío', 'Hellen Keller 349', 'Guaymallén', 4263219)
	ON CONFLICT (DNI) DO NOTHING;

-- 1


ALTER TABLE CONTACTOS
ADD COLUMN E_MAIL VARCHAR(20);

UPDATE CONTACTOS
	SET E_MAIL = 'Diaz@gmail.com'
	WHERE DNI = 31000000;		

-- 2

--  De esta manera cambiamos el tipo de dato de una columna de la tabla
ALTER TABLE CONTACTOS
	ALTER COLUMN DIRECCION SET DATA TYPE VARCHAR(35) ;

-- 3

-- Eliminar una tabla
DROP TABLE CONTACTOS;

-- Vaciar la tabla de contactos
TRUNCATE TABLE CONTACTOS;

-- Eliminar la columna de la tabla indicada
ALTER TABLE CONTACTOS
	DROP COLUMN E_MAIL;

-- Renombrar el nombre de la columna de la tabla indicada
ALTER TABLE CONTACTOS
	RENAME COLUMN E_MAIL TO CORREO_ELECTRONICO

-- Renombrar el nombre de la tabla 
ALTER TABLE CONTACTOS
	RENAME TO CLIENTES;
	
SELECT * FROM CONTACTOS;


SELECT * FROM CLIENTES;