
-- Creamos las tablas

CREATE TABLE Pacientes(
	dni SERIAL PRIMARY KEY NOT NULL,
	apellido_p VARCHAR(20) NOT NULL,
	nombre_p VARCHAR(20) NOT NULL,
	edad INTEGER NOT NULL
)

CREATE TABLE Medicos(
	matricula SERIAL PRIMARY KEY NOT NULL,
	apellido_m VARCHAR(25) NOT NULL,
	nombre_m VARCHAR(25) NOT NULL,
	especialidad VARCHAR(25) NOT NULL,
);

CREATE TABLE Consultas(
	id_consultas SERIAL PRIMARY KEY NOT NULL,
    dni INTEGER NOT NULL,
	matricula INTEGER NOT NULL,
	fecha_consulta DATE NOT NULL,
	diagnostico VARCHAR(20) NOT NULL,
    tratamiento VARCHAR(20) NOT NULL,
	CONSTRAINT fk_dni FOREIGN KEY (dni) REFERENCES Pacientes(dni),
	CONSTRAINT fk_matricula FOREIGN KEY (matricula) REFERENCES Medicos (matricula)
);

-- Insertamos los valores

INSERT INTO Pacientes (dni,apellido_p,nombre_p,edad) VALUES
	(3100000,'AGUERO','MARIA',35),
	(2700000,'ZOLORZA','MARIA',41),
	(3500000,'MARQUES','PEDRO',25),
	(3600000,'BALBUENA','YANINA',21);

INSERT INTO Medicos (matricula,apellido_m,nombre_m,especialidad) VALUES
	(100,'PALACIOS','EUGENIA','GINECOLOGIA'),
	(200,'MORALES','CLARA','CLINICA'),
	(250,'TREVISAN','CAROLINA','CLINICA'),
	(300,'TEISIDOR','JUAN','OTORRINO'),
	(400,'RUEDA','ANTONIO','TRAUMATOLOGO');

INSERT INTO Consultas (id_consulta,dni,matricula,fecha_consulta,diagnostico,tratamiento)
VALUES (1,27000000,100,'2022-10-15','CONTROL','ANALISIS CLINICO'),
(2,36000000,100,'2022-10-15','CONTROL','ANTICOPSETIVO'),
 (3,31000000,200,'2022-10-18','DOLOR ESPALDA','ANTINFLAMATORIO'),
	(4,35000000,250,'2022-10-18','NAUSEAS','ANTINAUSEOSO'),
	(5,27000000,400,'2022-10-20','DOLOR PIE','ANTINFLAMATORIO'),
	(6,27000000,250,'2022-10-20','DOLOR GASTRICO','ACIDEZ'),
	(7,31000000,400,'2022-10-21','DOLOR RODILLA','CAMINATAS'),
	(8,36000000,300,'2022-10-21','DOLOR OIDOS','ANTINFLAMATORIO');

-- 1
SELECT apellido_p,nombre_p,nombre_m,apellido_p,especialidad,diagnostico,tratamiento
FROM Consultas
INNER JOIN Pacientes ON Pacientes.dni = Consultas.dni
INNER JOIN Medicos ON Medicos.matricula = Consultas.matricula
WHERE fecha_consulta='2022-10-18';	


-- 2
SELECT especialidad, COUNT(*)
FROM Medicos
GROUP BY especialidad;
-- 3
SELECT Pacientes.nombre_p, Pacientes.apellido_p, Consultas.diagnostico, Consultas.tratamiento
FROM Consultas
INNER JOIN Pacientes ON Pacientes.dni = Consultas.dni
WHERE Consultas.tratamiento = 'ANTINFLAMATORIO'
AND Pacientes.edad = (SELECT MIN(edad) FROM Pacientes);

-- 4

UPDATE Pacientes SET apellido_p = 'PERALTA' WHERE apellido_p = 'ZOLORZA';

SELECT * FROM Pacientes;
