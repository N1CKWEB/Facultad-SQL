
-- Creamos la tabla

CREATE TABLE Empleados(
 dni SERIAL PRIMARY KEY,
 apellido VARCHAR(20) NOT NULL,
 nombre VARCHAR(20) NOT NULL,
 fecha_Nac DATE NOT NULL,
 sexo VARCHAR(20) NOT NULL,
 cargo VARCHAR(20) NOT NULL,
 salario INTEGER NOT NULL
);


-- Insertar los valores

INSERT INTO Empleados (dni, apellido, nombre, fecha_Nac, sexo, cargo, salario) VALUES
(32458745, 'GONZALEZ', 'NATALIA', '1987-04-25', 'F', 'ADMINISTRATIVO', 15000),
(35689421, 'GOMEZ', 'LARA', '1990-01-12', 'F', 'JEFE_AREA', 30000),
(29548722, 'ARAUJO', 'MATIAS', '1984-07-17', 'M', 'OFICIAL', 24500),
(28555487, 'MARTINEZ', 'MARCOS', '1982-01-04', 'M', 'GERENTE', 35000),
(35552237, 'RODRIGUEZ', 'MONICA', '1989-08-30', 'F', 'ADMINISTRATIVO', 18000),
(36989147, 'GOMEZ', 'RICARDO', '1991-12-25', 'M', 'ADMINISTRATIVO', 18000),
(24232436, 'VALLES', 'RAQUEL', '1975-04-10', 'F', 'CELADOR', 12000),
(28556921, 'VAZQUEZ', 'NORMA', '1982-08-21', 'F', 'OFICIAL', 22000);


-- Sentencias SQL

-- 1
SELECT cargo, COUNT(*) AS "total_cargos"
FROM Empleados
GROUP BY cargo;

-- 2

SELECT sexo, COUNT(*) AS "total_cargos_administrativos"
FROM Empleados
WHERE cargo = 'ADMINISTRATIVO'	
GROUP BY sexo;

-- 3

SELECT sexo, COUNT(*) AS "total_empleados_M_F"
FROM Empleados
GROUP BY sexo;


-- 4

SELECT sexo, COUNT(*) 
FROM Empleados
WHERE salario > 18000
GROUP BY sexo;


-- 5

SELECT sexo, AVG(salario)
FROM Empleados
GROUP BY sexo;

-- 6

SELECT sexo,COUNT(*)
FROM Empleados
WHERE fecha_Nac > '1982-01-04'
GROUP BY sexo;
