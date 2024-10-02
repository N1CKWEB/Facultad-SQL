
INSERT INTO ALUMNOS_CURSOS VALUES ('RAMIREZ','OSCAR','PERU 155','CIUDAD','LINUX','1500','2024-06-01','2024-11-15','2024-04-30');
INSERT INTO ALUMNOS_CURSOS VALUES ('SANCHEZ','NATALIA','SAN MARTIN 456','CIUDAD','JAVA','1850','2024-06-22','2024-11-29','2024-05-15');
INSERT INTO ALUMNOS_CURSOS VALUES ('TELLO','NICOLAS','LAVALLE 25','GODOY CRUZ','REDES','1750','2024-06-07','2024-11-22','2024-05-17');
INSERT INTO ALUMNOS_CURSOS VALUES ('GOMEZ','SILVIA','SAN MIGUEL 353','LAS HERAS','LINUX','1500','2024-06-01','2024-11-15','2024-05-18');
INSERT INTO ALUMNOS_CURSOS VALUES ('RAMIREZ','OSCAR','PERU 155','CIUDAD','REPARACION PC','3000','2024-06-15','2024-11-30','2024-04-30');
INSERT INTO ALUMNOS_CURSOS VALUES ('SANCHEZ','NATALIA','SAN MARTIN 456','CIUDAD','REPARACION PC','3000','2024-06-15','2024-11-30','2024-05-15');
INSERT INTO ALUMNOS_CURSOS VALUES ('PEREZ','CARLOS','ROCA 257','LAS HERAS','REDES','1750','2024-06-07','2024-11-22','2024-05-23');
INSERT INTO ALUMNOS_CURSOS VALUES ('TELLO','LAURA','COLON 38','GODOY CRUZ','PHP','1950','2024-06-29','2024-12-05','2024-05-05');
-- UPDATE alumnos_cursos
-- SET curso = 'Linux' AND costo = '1500' AND Fecha_INI = '2024/6/1' AND Fecha_FIN = '2024/11/15'
-- WHERE apellido =  'Gomez' AND nombre = 'Silvia';

-- Ejercicio 5
SELECT apellido,nombre FROM alumnos_cursos
WHERE curso = 'Redes' OR curso = 'Linux';

-- Ejercicio 6
SELECT apellido,nombre,direccion FROM alumnos_cursos
WHERE Fecha_INS BETWEEN '2024-5-4' AND '2024-5-17';

-- Ejercicio 7
SELECT curso FROM alumnos_cursos
WHERE costo BETWEEN '1700' AND '2000';

-- Ejercicio 8
SELECT curso,fecha_INI,fecha_FIN,costo FROM alumnos_cursos
WHERE apellido = 'SANCHEZ';

-- Ejercicio 9
SELECT apellido,nombre FROM alumnos_cursos
WHERE Fecha_INI = '2024/6/7';

-- Ejercicio 10
SELECT apellido,nombre FROM alumnos_cursos
WHERE apellido = 'Tello';

-- Ejercicio 11
SELECT fecha_INI FROM alumnos_cursos
WHERE curso = 'PHP';

-- Ejercicio 12
SELECT fecha_INI,fecha_FIN FROM alumnos_cursos
WHERE curso = 'JAVA';

-- Ejercicio 13
SELECT curso FROM alumnos_cursos
WHERE Fecha_INI = '2024/06/15';

-- Ejercicio 14
SELECT curso FROM alumnos_cursos
WHERE Fecha_FIN < '2024-12-01';


-- Ejercicio 15
SELECT curso FROM alumnos_cursos
WHERE costo = '3000';

