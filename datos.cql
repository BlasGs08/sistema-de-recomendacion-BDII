-- Usar el keyspace
USE base_de_datos;

-- Insertar usuarios (solo primeros 5 como ejemplo)
INSERT INTO usuarios (usuario_id, nombre, ciudad) VALUES (101, 'Ana Perez', 'Caracas');
INSERT INTO usuarios (usuario_id, nombre, ciudad) VALUES (102, 'Carlos Gomez', 'Bogotá');
INSERT INTO usuarios (usuario_id, nombre, ciudad) VALUES (103, 'Laura Torres', 'México DF');
INSERT INTO usuarios (usuario_id, nombre, ciudad) VALUES (104, 'Javier Ruiz', 'Caracas');
INSERT INTO usuarios (usuario_id, nombre, ciudad) VALUES (105, 'Sofía Martínez', 'Bogotá');

-- Insertar canciones (5 populares de ejemplo)
INSERT INTO canciones (cancion_id, titulo, artista, genero) VALUES (1, 'Bohemian Rhapsody', 'Queen', 'Rock');
INSERT INTO canciones (cancion_id, titulo, artista, genero) VALUES (2, 'Blinding Lights', 'The Weeknd', 'Pop');
INSERT INTO canciones (cancion_id, titulo, artista, genero) VALUES (3, 'Shape of You', 'Ed Sheeran', 'Pop');
INSERT INTO canciones (cancion_id, titulo, artista, genero) VALUES (4, 'Smells Like Teen Spirit', 'Nirvana', 'Grunge');
INSERT INTO canciones (cancion_id, titulo, artista, genero) VALUES (5, 'Hey Jude', 'The Beatles', 'Rock');

-- Insertar escuchas (de ejemplo)
INSERT INTO escuchas (usuario_id, cancion_id, fecha_escucha) VALUES (101, 1, '2024-01-05');
INSERT INTO escuchas (usuario_id, cancion_id, fecha_escucha) VALUES (102, 2, '2024-01-06');
INSERT INTO escuchas (usuario_id, cancion_id, fecha_escucha) VALUES (103, 3, '2024-01-07');
INSERT INTO escuchas (usuario_id, cancion_id, fecha_escucha) VALUES (104, 4, '2024-01-08');
INSERT INTO escuchas (usuario_id, cancion_id, fecha_escucha) VALUES (105, 5, '2024-01-09');
