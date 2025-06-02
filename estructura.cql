-- Crear el keyspace
CREATE KEYSPACE IF NOT EXISTS base_de_datos
WITH REPLICATION = {
    'class': 'SimpleStrategy',
    'replication_factor': '1'
};

-- Usar el keyspace
USE base_de_datos;

-- Crear tabla de usuarios
CREATE TABLE IF NOT EXISTS usuarios (
    usuario_id int PRIMARY KEY,
    nombre text,
    ciudad text
);

-- Crear tabla de canciones
CREATE TABLE IF NOT EXISTS canciones (
    cancion_id int PRIMARY KEY,
    titulo text,
    artista text,
    genero text
);

-- Crear tabla de escuchas
CREATE TABLE IF NOT EXISTS escuchas (
    usuario_id int,
    cancion_id int,
    fecha_escucha date,
    PRIMARY KEY ((usuario_id), fecha_escucha, cancion_id)
);
