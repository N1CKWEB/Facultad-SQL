

-- Creamos la tabla

CREATE TABLE Cursos(
id_curso SERIAL PRIMARY KEY NOT NULL,
nombre_curso VARCHAR(20) NOT NULL,
costo INTEGER NOT NULL,
fecha_INI DATE NOT NULL,
fecha_FIN DATE NOT NULL
);

-- Insertamos los valores

INSERT INTO Cursos (id_curso, nombre_curso, costo, fecha_INI, fecha_FIN) VALUES
(1, 'PROGRAMACION ES', 4900, '2018-03-01', '2018-11-30'),
(2, 'MY SQL', 2400, '2018-03-15', '2018-11-15'),
(3, 'DISEÑO WEB', 6900, '2018-03-05', '2018-12-18');

SELECT * FROM Cursos;

CREATE TABLE Personas(
dni SERIAL PRIMARY KEY NOT NULL,
apellido VARCHAR(20) NOT NULL,
nombre VARCHAR(20) NOT NULL,
telefono INTEGER NOT NULL
);

-- Insertamos los valores

INSERT INTO Personas (dni, apellido, nombre, telefono) VALUES
(20000000, 'GARCIA', 'FRANCISCO', '4303034'),
(21000000, 'GONZALEZ', 'HUGO', '4259426'),
(22000000, 'ZOLORZA', 'ESTEFANIA', '4449677'),
(23000000, 'PEREZ', 'LAURA', '4365218'),
(24000000, 'AGUINAGA', 'MARCOS', '4221994');

SELECT * FROM Personas;


CREATE TABLE Inscripciones(
id_ins SERIAL PRIMARY KEY NOT NULL,
fecha_INS DATE NOT NULL,
dni INTEGER NOT NULL,
id_curso INTEGER NOT NULL,
CONSTRAINT fk_dni FOREIGN KEY (dni) REFERENCES Personas(dni),
CONSTRAINT fk_id_curso FOREIGN KEY (id_curso) REFERENCES Cursos(id_curso)
);

-- Insertamos los valores

INSERT INTO Inscripciones (id_ins, fecha_INS, dni, id_curso) VALUES
(1, '2018-01-07', 24000000, 2),
(2, '2018-01-08', 20000000, 2),
(3, '2018-01-09', 21000000, 3),
(4, '2018-01-10', 22000000, 1),
(5, '2018-01-10', 23000000, 1),
(6, '2018-01-08', 24000000, 1),
(7, '2018-01-09', 21000000, 2),
(8, '2018-01-10', 23000000, 3),
(9, '2018-01-08', 20000000, 3),
(10, '2018-01-08', 20000000, 1);

SELECT * FROM Inscripciones;


-- 1
SELECT apellido,nombre,nombre_curso,fecha_INS
FROM Inscripciones
INNER JOIN Personas ON Personas.dni = Inscripciones.dni
INNER JOIN Cursos ON Cursos.id_curso = Inscripciones.id_curso
ORDER BY nombre_curso;


-- 2
SELECT apellido,nombre,fecha_INS,nombre_curso 
FROM Inscripciones 
INNER JOIN Personas ON Personas.dni = Inscripciones.dni
INNER JOIN Cursos ON Cursos.id_curso = Inscripciones.id_curso
WHERE nombre_curso = 'MY SQL';

-- 3
SELECT apellido,nombre,fecha_INS
FROM Inscripciones
INNER JOIN Personas ON Personas.dni = Inscripciones.dni
INNER JOIN Cursos ON Cursos.id_curso = Inscripciones.id_curso
WHERE Fecha_INS = '2018-01-08';

-- 4
SELECT Cursos.nombre_curso,COUNT(Inscripciones.dni) AS "cantidad_inscriptos"
FROM Inscripciones
INNER JOIN Cursos ON Cursos.id_curso = Inscripciones.id_curso
GROUP BY Cursos.nombre_curso;
