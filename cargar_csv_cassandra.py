import pandas as pd
from cassandra.cluster import Cluster

# Conexión a Cassandra
cluster = Cluster(['127.0.0.1'])  # IP local
session = cluster.connect('base_de_datos')

# Cargar usuarios.csv
usuarios = pd.read_csv('usuarios.csv')
for _, row in usuarios.iterrows():
    session.execute("""
        INSERT INTO usuarios (usuario_id, nombre, ciudad)
        VALUES (%s, %s, %s)
    """, (int(row['usuario_id']), row['nombre'], row['ciudad']))

# Cargar canciones.csv
canciones = pd.read_csv('canciones.csv')
for _, row in canciones.iterrows():
    session.execute("""
        INSERT INTO canciones (cancion_id, titulo, artista, genero)
        VALUES (%s, %s, %s, %s)
    """, (int(row['cancion_id']), row['titulo'], row['artista'], row['genero']))

# Cargar escuchas.csv
escuchas = pd.read_csv('escuchas.csv')
for _, row in escuchas.iterrows():
    session.execute("""
        INSERT INTO escuchas (usuario_id, cancion_id, fecha_escucha)
        VALUES (%s, %s, %s)
    """, (int(row['usuario_id']), int(row['cancion_id']), row['fecha_escucha']))
