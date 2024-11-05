-- Creamos las tablas

CREATE TABLE Estudiantes(
 id_estudiantes SERIAL PRIMARY KEY NOT NULL,
 nombre VARCHAR(20) NOT NULL,
 edad INTEGER NOT NULL
);

CREATE TABLE Cursos(
 id_curso SERIAL PRIMARY KEY NOT NULL,
 nombre VARCHAR(100) NOT NULL,
 creditos INTEGER NOT NULL
);

ALTER TABLE Cursos RENAME COLUMN nombre TO nombre_cursos;  
SELECT * FROM Cursos;


CREATE TABLE Estudiantes_Curso(
 id_estudiante_curso SERIAL PRIMARY KEY NOT NULL,
 id_estudiantes INTEGER NOT NULL,
 id_cursos INTEGER NOT NULL,
 CONSTRAINT fk_id_estudiantes FOREIGN KEY (id_estudiantes) REFERENCES Estudiantes (id_estudiantes),
 CONSTRAINT fk_id_cursos FOREIGN KEY (id_cursos) REFERENCES Cursos (id_curso)	
);


-- Insertamos los valores

INSERT INTO Estudiantes (nombre, edad) VALUES 
('Ana Gómez', 20),
('Luis Fernández', 22),
('Carlos Ramírez', 21);

INSERT INTO Cursos (nombre, creditos) VALUES 
('Matemáticas', 4),
('Programación', 5),
('Historia', 3);


INSERT INTO Estudiantes_Curso (id_estudiantes, id_cursos) VALUES 
(1, 1),
(2, 2),
(3, 3),
(1, 2),
(2, 3);


-- Sentencias SQL

-- 1

SELECT Estudiantes.edad,Estudiantes.nombre,Cursos.nombre_cursos
FROM Estudiantes_Curso
INNER JOIN Estudiantes ON Estudiantes.id_estudiantes = Estudiantes_Curso.id_estudiantes
INNER JOIN Cursos ON Cursos.id_curso = Estudiantes_Curso.id_cursos
ORDER BY Cursos.nombre_cursos;


-- 2

SELECT Estudiantes.edad,Estudiantes.nombre
FROM Estudiantes_Curso
INNER JOIN Estudiantes ON Estudiantes.id_estudiantes = Estudiantes_Curso.id_estudiantes
INNER JOIN Cursos ON Cursos.id_curso = Estudiantes_Curso.id_cursos
WHERE nombre_cursos = 'Programación';

-- 3

SELECT Estudiantes.edad, Estudiantes.nombre 
FROM Estudiantes_Curso
INNER JOIN Estudiantes ON Estudiantes.id_estudiantes = Estudiantes_Curso.id_estudiantes
INNER JOIN Cursos ON Cursos.id_curso = Estudiantes_Curso.id_cursos
WHERE creditos > 3;

-- 4

SELECT Cursos.nombre_cursos, COUNT(Estudiantes_Curso.id_estudiantes) 
FROM Estudiantes_Curso
INNER JOIN Estudiantes ON Estudiantes.id_estudiantes = Estudiantes_Curso.id_estudiantes
INNER JOIN Cursos ON Cursos.id_curso = Estudiantes_Curso.id_cursos
GROUP BY Cursos.nombre_cursos;

-- 5

SELECT Cursos.nombre_cursos, COUNT(Estudiantes_Curso.id_estudiantes) AS "Cantidad_de_Estudiantes"
FROM Estudiantes_Curso
INNER JOIN Cursos ON Cursos.id_curso = Estudiantes_Curso.id_cursos
GROUP BY Cursos.nombre_cursos
HAVING COUNT(Estudiantes_Curso.id_estudiantes) > 10;

-- 6

SELECT Estudiantes.edad,Estudiantes.nombre, COUNT(Estudiantes_Curso.id_cursos)
FROM Estudiantes_Curso
INNER JOIN Estudiantes ON Estudiantes.id_estudiantes = Estudiantes_Curso.id_estudiantes
GROUP BY Estudiantes.edad,Estudiantes.nombre
HAVING COUNT(Estudiantes_Curso.id_cursos) > 1;

