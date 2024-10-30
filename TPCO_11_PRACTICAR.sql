
-- Creamos las tablas

CREATE TABLE IF NOT EXISTS LOCALICADES (
  cp SERIAL PRIMARY KEY,
  nombre_localidad VARCHAR(25) NOT NULL
);

-- Insertar los valores de la tabla localidades


INSERT INTO LOCALICADES (cp,nombre_localidad) VALUES 
	(5500, 'CIUDAD'),
   (5501, 'GODOY CRUZ'),
   (5521, 'GUAYMALLEN'),
   (5539, 'LAS HERAS');


CREATE TABLE Personas(
 dni SERIAL PRIMARY KEY,
 apellido VARCHAR(25) NOT NULL,
 nombre VARCHAR(25) NOT NULL,
 edad INTEGER NOT NULL,
 domicilio VARCHAR(25) NOT NULL,
 cp INTEGER NOT NULL,
 CONSTRAINT fk_cp
 FOREIGN KEY (cp)  --  Se define la clave foránea
 REFERENCES LOCALICADES (cp) -- Se referencia la columna cp de la tabla localidades 
);


-- Insertar los valores de la tabla personas


INSERT INTO PERSONAS (dni, apellido, nombre, edad, domicilio, cp)
VALUES
  (20000000, 'GUTIERREZ', 'ALBERTO', 50, 'LAVALLE 552', 5501),
  (29000000, 'PORTALES', 'AGUERO', 34, 'RIVADAVIA 549', 5539),
  (30000000, 'AGUERO', 'JAVIER', 32, 'DR MORENO 123', 5539),
  (31000000, 'BOTTA', 'LAURA', 32, 'DAMIAN HUDSON 258', 5500),
  (32000000, 'LOPEZ', 'JAVIER', 30, 'ARIZU 691', 5501),
  (33000000, 'HONORATO', 'MARTA', 28, 'ALPATACAL 3254', 5500),
  (35000000, 'CASTILLO', 'ANGELA', 25, 'ADOLFO CALLE 3526', 5521),
  (36000000, 'MANRIQUE', 'ESTELA', 25, 'JORGE A CALLE 321', 5500),
  (37000000, 'KOLMAN', 'PATRICIA', 24, 'HOUSAY 223', 5521),
  (38000000, 'JUAREZ', 'MONICA', 22, 'DR MORENO 695', 5539);

