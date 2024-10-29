

-- CREAMO LA TABLA 

CREATE TABLE ALUMNOS_CURSOS(
id_alumnos_cursos SERIAL PRIMARY KEY,
apellido VARCHAR(50) NOT NULL,
nombre VARCHAR(50) NOT NULL,
direccion VARCHAR(50) NOT NULL,
localidad VARCHAR(50) NOT NULL,
curso VARCHAR(50) NOT NULL,
costo INTEGER NOT NULL,
Fecha_Inicio DATE NOT NULL,
Fecha_Fin DATE NOT NULL,
Fecha_Inscripcion DATE NOT NULL
);

-- INSERTAMOS LOS VALORES EN LA TABLA

INSERT INTO ALUMNOS_CURSOS (apellido, nombre, direccion, localidad, curso, costo, Fecha_Inicio, Fecha_Fin, Fecha_Inscripcion)
VALUES 
('Ramirez', 'Oscar', 'Perú 155', 'ciudad', 'Linux', 1500, '2024-06-01', '2024-11-15', '2024-04-30'),

('Sánchez', 'Natalia', 'San Martín 456', 'ciudad', 'Java', 1850, '2024-06-22', '2024-11-29', '2024-05-15'),

('Tello', 'Nicolás', 'Lavalle 25', 'Godoy cruz', 'Redes', 1750, '2024-06-07', '2024-11-22', '2024-05-17'),

('Gomez', 'Silvia', 'San Miguel 353', 'Las Heras', 'Linux', 1500, '2024-06-01', '2024-11-15', '2024-05-18'),

('Ramirez', 'Oscar', 'Perú 155', 'ciudad', 'Reparación PC', 3000, '2024-06-15', '2024-11-30', '2024-04-30'),

('Sanchez', 'Natalia', 'San Martín 456', 'ciudad', 'Reparación PC', 3000, '2024-06-15', '2024-11-30', '2024-05-15'),

('Perez', 'Carlos', 'Roca 257', 'Las Heras', 'Redes', 1750, '2024-06-07', '2024-11-22', '2024-05-23'),

('Tello', 'Laura', 'Colón 38', 'Godoy Cruz', 'PHP', 1950, '2024-06-29', '2024-12-05', '2024-05-05');

-- SENTENCIA SQL

-- 1

SELECT apellido,nombre FROM ALUMNOS_CURSOS
WHERE localidad = 'Las Heras';


-- 2

SELECT apellido,nombre FROM ALUMNOS_CURSOS
WHERE costo > 1850;


-- 3

SELECT curso FROM ALUMNOS_CURSOS
WHERE Fecha_Inicio = '2024-06-01';


-- 4

SELECT * FROM ALUMNOS_CURSOS
WHERE Fecha_Inscripcion = '2024-04-30';


-- 5

SELECT apellido,nombre FROM ALUMNOS_CURSOS
WHERE curso = 'Redes' OR curso = 'Linux';

-- 6

SELECT curso FROM ALUMNOS_CURSOS
WHERE costo BETWEEN 1700 AND 2000; 


-- 7

SELECT curso,fecha_inicio,fecha_fin,costo 
FROM ALUMNOS_CURSOS
WHERE nombre = 'Natalia' AND apellido = 'Sanchez';

-- 8

SELECT apellido,nombre 
FROM ALUMNOS_CURSOS
WHERE Fecha_Inicio = '2024-06-07';

-- 9

SELECT apellido,nombre
FROM ALUMNOS_CURSOS
WHERE apellido = 'Tello';

-- 10

SELECT fecha_inicio 
FROM ALUMNOS_CURSOS
WHERE curso = 'PHP';


-- 11

SELECT fecha_inicio, fecha_fin
FROM ALUMNOS_CURSOS
WHERE curso = 'Java';

	
-- 12

SELECT curso
FROM ALUMNOS_CURSOS
WHERE Fecha_Inicio = '2024-06-15';

-- 13

SELECT curso
FROM ALUMNOS_CURSOS
WHERE costo >= 3000;

