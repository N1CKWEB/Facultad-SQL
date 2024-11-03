-- Creamos las tablas

CREATE TABLE Empleados(
 id_empleado SERIAL PRIMARY KEY NOT NULL,
 nombre VARCHAR(20) NOT NULL,
 posicion VARCHAR(20) NOT NULL
);

CREATE TABLE Proyectos(
 id_proyectos SERIAL PRIMARY KEY NOT NULL,
 nombre VARCHAR(20) NOT NULL,
 fecha_inicio DATE NOT NULL
);

CREATE TABLE Empleado_Proyecto(
 id_empleado_proyecto SERIAL PRIMARY KEY NOT NULL,
 id_empleado INTEGER NOT NULL,
 id_proyectos INTEGER NOT NULL,
 CONSTRAINT fk_id_empleado FOREIGN KEY (id_empleado) REFERENCES Empleados (id_empleado),
 CONSTRAINT fk_id_proyectos FOREIGN KEY (id_proyectos) REFERENCES Proyectos (id_proyectos)
);

-- Insertamos los valores

INSERT INTO Empleados(nombre,posicion) VALUES 
	('Juan Perez','Desarrollador'),
    ('María Lopez','Analista'),
    ('Carlos Martínez','Gerente de Proyecto');

INSERT INTO Proyectos(nombre,fecha_inicio) VALUES
    ('Proyecto Alpha','2024-11-01'),
    ('Proyecto Beta','2024-12-01');

INSERT INTO Empleado_Proyecto(id_empleado,id_proyectos) VALUES
    (1,1),
    (2,1),
    (3,2),
    (1,2);


-- 1

SELECT nombre,posicion,nombre_proyecto
FROM Empleado_Proyecto
INNER JOIN Empleados ON Empleados.id_empleado = Empleado_Proyecto.id_empleado
INNER JOIN Proyectos ON Proyectos.id_proyectos = Empleado_Proyecto.id_proyectos
ORDER BY nombre_proyecto;

-- 2

SELECT nombre,posicion
FROM Empleado_Proyecto
INNER JOIN Empleados ON Empleados.id_empleado = Empleado_Proyecto.id_empleado
INNER JOIN Proyectos ON Proyectos.id_proyectos = Empleado_Proyecto.id_proyectos
WHERE nombre_proyecto = 'Proyecto Alpha';

-- 3

SELECT nombre,posicion
FROM Empleado_Proyecto
INNER JOIN Empleados ON Empleados.id_empleado = Empleado_Proyecto.id_empleado
INNER JOIN Proyectos ON Proyectos.id_proyectos = Empleado_Proyecto.id_proyectos
WHERE fecha_inicio = '2024-12-01';

-- 4

SELECT proyectos.nombre_proyecto, COUNT(Empleado_Proyecto.id_empleado) AS "total_empleados"
FROM Empleado_Proyecto
INNER JOIN Empleados ON Empleados.id_empleado = Empleado_Proyecto.id_empleado
INNER JOIN Proyectos ON Proyectos.id_proyectos = Empleado_Proyecto.id_proyectos
GROUP BY proyectos.nombre_proyecto;


-- 5

SELECT proyectos.nombre_proyecto, COUNT(Empleado_Proyecto.id_empleado)
FROM Empleado_Proyecto
INNER JOIN Proyectos ON Proyectos.id_proyectos = Empleado_Proyecto.id_proyectos
GROUP BY proyectos.nombre_proyecto 
HAVING COUNT(Empleado_Proyecto.id_empleado) > 5;

-- La cláusula HAVING se usa para aplicar condiciones a los resultados de funciones agregadas como COUNT 


-- 6

SELECT nombre, posicion
FROM Empleado_Proyecto
INNER JOIN Empleados ON Empleados.id_empleado = Empleado_Proyecto.id_empleado
GROUP BY Empleados.id_empleado,Empleados.nombre,Empleados.posicion
HAVING COUNT(Empleado_Proyecto.id_proyectos) > 1;