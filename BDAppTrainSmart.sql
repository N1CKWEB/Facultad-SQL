
CREATE TABLE clientes (
    id_cliente SERIAL PRIMARY KEY,           -- El campo id_cliente es la clave primaria y se incrementa automáticamente
    nombre VARCHAR(50) NOT NULL,             -- Aumenté el tamaño del campo para permitir nombres más largos
    usuario VARCHAR(50) UNIQUE NOT NULL,     -- El campo usuario debe ser único para cada cliente
    contraseña VARCHAR(255) NOT NULL          -- La contraseña debe ser almacenada de forma segura, preferiblemente hasheada
);

SELECT * FROM Clientes;


CREATE TABLE Registrar_Entrenamiento_Realizado(
    id_registrar_entrenamiento_realizado SERIAL PRIMARY KEY,
    tipo_de_ejercicio VARCHAR(50),
    grupo_muscular_trabajado VARCHAR(50),
    duracion_del_entrenamiento VARCHAR(50) 
);


CREATE TABLE Registrar_Entrenamiento_Futuro(
    id_registrar_entrenamiento_futuro SERIAL PRIMARY KEY,
    tipo_de_ejercicio VARCHAR(50),
    duracion_estimada_del_entrenamiento VARCHAR(50), 
    objetivo_del_entrenamiento VARCHAR(50)
);


SELECT * FROM Registrar_Entrenamiento_Realizado;



SELECT * FROM Registrar_Entrenamiento_Futuro;


