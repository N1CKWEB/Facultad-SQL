

CREATE TABLE Artistas(
id_artista SERIAL PRIMARY KEY NOT NULL,
nombre_de_artista VARCHAR(20) NOT NULL
);

CREATE TABLE Albumes(
	id_album SERIAL PRIMARY KEY NOT NULL,
	titulo VARCHAR(15) NOT NULL,
	anio_lanzamiento DATE NOT NULL
);

CREATE TABLE Artista_album(
id_artista_album SERIAL PRIMARY KEY NOT NULL,
id_artista INTEGER NOT NULL,
id_album INTEGER NOT NULL,
CONSTRAINT fk_id_artista FOREIGN KEY (id_artista) REFERENCES Artistas(id_artista),
CONSTRAINT fk_id_album FOREIGN KEY (id_album) REFERENCES Albumes (id_album)
);


-- Insertamos los valores

INSERT INTO Artistas (nombre_de_artista) VALUES 
('The Beatles'),
('Michael Jackson'),
('Queen');

INSERT INTO Albumes (titulo, anio_lanzamiento) VALUES 
('Abbey Road', '1969-01-01'),
('Thriller', '1982-01-01'),
('A Night at the Opera', '1975-01-01');

INSERT INTO artista_album (id_artista,id_album) VALUES
(1,1),
(2,2),
(3,3),
(1,3);



-- Sentencias SQL

-- 1

SELECT nombre_de_artista,titulo 
FROM artista_album 
INNER JOIN Artistas ON Artistas.id_artista = artista_album.id_artista
INNER JOIN Albumes ON Albumes.id_album = artista_album.id_album
ORDER BY Albumes.titulo;
 

-- 2

SELECT nombre_de_artista
FROM artista_album
INNER JOIN Artistas ON Artistas.id_artista = artista_album.id_artista
INNER JOIN Albumes ON Albumes.id_album = artista_album.id_album
WHERE titulo = 'Thriller';

-- 3

SELECT nombre_de_artista 
FROM artista_album
INNER JOIN Artistas ON Artistas.id_artista = artista_album.id_artista
INNER JOIN Albumes ON Albumes.id_album = artista_album.id_album
WHERE anio_lanzamiento = '1982-01-01';


-- 4

SELECT Albumes.titulo, COUNT(Artistas.nombre_de_artista) AS "Cantidad_de_Artistas"
FROM artista_album
INNER JOIN Albumes ON Albumes.id_album = artista_album.id_album
INNER JOIN Artistas ON Artistas.id_artista = artista_album.id_artista
GROUP BY Albumes.titulo;


-- 5

SELECT Albumes.titulo,COUNT(artista_album.id_artista) AS "Albumes que tienen mpas de un artista"
FROM artista_album
INNER JOIN Albumes ON Albumes.id_album = artista_album.id_album
INNER JOIN Artistas ON Artistas.id_artista = artista_album.id_artista
GROUP BY Albumes.titulo
HAVING COUNT(artista_album.id_artista) > 1;


-- 6

SELECT Artistas.nombre_de_artista, COUNT(artista_album.id_album) AS "Cantidad_de_Albumes"
FROM artista_album
INNER JOIN Artistas ON Artistas.id_artista = artista_album.id_artista
GROUP BY Artistas.nombre_de_artista
HAVING COUNT(artista_album.id_album) > 2;
