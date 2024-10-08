


CREATE TABLE Cursos(
	id_curso SERIAL PRIMARY KEY NOT NULL,
	nombre_curso VARCHAR(15) NOT NULL,
	costo INTEGER NOT NULL,
	fecha_INI DATE NOT NULL,
	fecha_FIN DATE NOT NULL
);

SELECT * FROM Cursos;

CREATE TABLE Personas(
	dni SERIAL PRIMARY KEY NOT NULL,
	apellido VARCHAR(15) NOT NULL,
	nombre VARCHAR(15) NOT NULL,
	telefono INTEGER NOT NULL
);

SELECT * FROM Personas;


CREATE TABLE Inscripciones(
	id_ins SERIAL PRIMARY KEY NOT NULL,
	fecha_ins DATE NOT NULL,
	dni INTEGER NOT NULL,
	id_curso INTEGER NOT NULL,
	CONSTRAINT fk_dni
	FOREIGN KEY (dni) REFERENCES Personas(dni),
	CONSTRAINT fk_id_curso
	FOREIGN KEY (id_curso) REFERENCES Cursos(id_curso)
);

SELECT * FROM Inscripciones;

-- Información de Cursos
INSERT INTO CURSOS (ID_CURSO, NOMBRE_CURSO, COSTO, FECHA_INI, FECHA_FIN)
VALUES 
(1, 'PROGRAMACION ES', 4900, '2018-03-01', '2018-11-30'),
(2, 'MY SQL', 2400, '2018-03-15', '2018-11-15'),
(3, 'DISEÑO WEBS', 6900, '2018-03-05', '2018-12-18');

-- Información de Personas
INSERT INTO PERSONAS (DNI, APELLIDO, NOMBRE, TELEFONO)
VALUES 
(20000000, 'GARCIA', 'FRANCISCO', 4303034),
(21000000, 'GONZALEZ', 'HUGO', 4259426),
(22000000, 'ZOLORZA', 'ESTEFANIA', 4449677),
(23000000, 'PEREZ', 'LAURA', 4365218),
(24000000, 'AGUINAGA', 'MARCOS', 4221994);


-- Información de Inscripciones
INSERT INTO INSCRIPCIONES (ID_INS, FECHA_INS, DNI, ID_CURSO)
VALUES 
(1, '2018-01-07', 24000000, 2),
(2, '2018-01-08', 20000000, 2),
(3, '2018-01-09', 22000000, 3),
(4, '2018-01-10', 21000000, 1),
(5, '2018-01-10', 21000000, 2),
(6, '2018-01-09', 22000000, 3),
(7, '2018-01-08', 23000000, 3),
(8, '2018-01-08', 23000000, 2),
(9, '2018-01-08', 20000000, 1);


-- 1
SELECT apellido,nombre,nombre_curso,fecha_ins FROM Inscripciones
INNER JOIN Personas ON Personas.dni = Inscripciones.dni
INNER JOIN Cursos ON Cursos.id_curso = Inscripciones.id_curso
ORDER BY nombre_curso;

-- 2
SELECT apellido, nombre, fecha_ins, nombre_curso 
FROM Inscripciones
INNER JOIN Personas ON Personas.dni = Inscripciones.dni
INNER JOIN Cursos ON Cursos.id_curso = Inscripciones.id_curso
WHERE nombre_curso = 'MY SQL';

-- 3
SELECT apellido,nombre,fecha_ins FROM Inscripciones
INNER JOIN Personas ON Personas.dni = Inscripciones.dni
INNER JOIN Cursos ON Cursos.id_curso = Inscripciones.id_curso
WHERE fecha_ins = '2018-01-08';


-- 4
SELECT Cursos.nombre_curso, COUNT(Inscripciones.dni) AS cantidad_inscriptos
FROM Inscripciones
INNER JOIN Cursos ON Cursos.id_curso = Inscripciones.id_curso
GROUP BY Cursos.nombre_curso; 

