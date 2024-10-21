
CREATE TABLE clientes (
    id_cliente SERIAL PRIMARY KEY,           -- El campo id_cliente es la clave primaria y se incrementa automáticamente
    nombre VARCHAR(50) NOT NULL,             -- Aumenté el tamaño del campo para permitir nombres más largos
    usuario VARCHAR(50) UNIQUE NOT NULL,     -- El campo usuario debe ser único para cada cliente
    contraseña VARCHAR(255) NOT NULL          -- La contraseña debe ser almacenada de forma segura, preferiblemente hasheada
);

SELECT * FROM Clientes;

CREATE TABLE Entrenamiento_Realizado(
	id_entrenamiento_Realizado SERIAL PRIMARY KEY,
	tipo_de_ejercicio VARCHAR(20) NOT NULL,
    musculo_trabajado VARCHAR(20) NOT NULL,
	duracion de entrenamiento(20)  NOT NULL
)
CREATE TABLE Entrenamiento_Futuro(
	id_entrenamiento_Futuro SERIAL PRIMARY KEY,
	tipo_de_ejercicio VARCHAR(20) NOT NULL,
    musculo_trabajado VARCHAR(20) NOT NULL,
	duracion de entrenamiento(20)  NOT NULL
);
CREATE TABLE Seguimiento_Registrado_Anteriormente(
	id_seguimiento_registrado_anteriormente SERIAL PRIMARY KEY,
	tipo_de_ejercicio VARCHAR(20) NOT NULL,
    musculo_trabajado VARCHAR(20) NOT NULL,
	duracion de entrenamiento(20)  NOT NULL
);

