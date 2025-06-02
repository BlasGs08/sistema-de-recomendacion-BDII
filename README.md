# sistema-de-recomendacion-BDII
Primer proyecto BDII. Sistema de recomendacion de musica

# 🎵 Sistema de Recomendación de Música - BDII

Proyecto académico para la materia **Sistemas de Bases de Datos II**.  
Se desarrolló un sistema de recomendación de música utilizando **Apache Cassandra** como base de datos NoSQL, con soporte para análisis OLAP simplificado y carga de datos desde archivos `.csv`.

---

## 📁 Estructura del proyecto

| Archivo                      | Descripción                                                  |
|-----------------------------|--------------------------------------------------------------|
| `estructura.cql`            | Script para crear el keyspace y las tablas en Cassandra      |
| `datos.cql`                 | Insert manual de datos de ejemplo (opcional, pocos registros)|
| `usuarios.csv`              | Dataset con 100 usuarios (nombres y ciudades latinas)        |
| `canciones.csv`             | Dataset con 100 canciones populares de distintos géneros      |
| `escuchas.csv`              | Dataset con 100 escuchas de usuarios                          |
| `cargar_csv_cassandra.py`   | Script en Python para cargar los datos a Cassandra            |

---

## 🎯 Objetivos del Proyecto

- Modelar y crear una base de datos NoSQL orientada a recomendaciones de música.
- Cargar datos reales desde archivos `.csv`.
- Aplicar consultas simples de recomendación y análisis OLAP.
- Demostrar el uso de Cassandra en proyectos académicos.

---

## ⚙️ Requisitos

- Apache Cassandra (versión 3.11.x o compatible)
- Python 3.10+ con las librerías:
  ```bash
  pip install pandas cassandra-driver
