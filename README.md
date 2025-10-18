# Parcial_Practico_DB
Contenido del parcial practico de la materia de bases de datos de la Universidad del Valle
# Sistema de Turnos - ServiLimar

Este repositorio contiene los scripts de base de datos para el sistema de generación de turnos de la empresa ServiLimar, como parte del examen practico de la materia de Bases de Datos en la Universidad del Valle.

## Descripción del Proyecto

El objetivo es desplegar una base de datos PostgreSQL utilizando Docker para gestionar la asignacion de turnos a clientes, empleados y proveedores. [cite_start]El sistema permite registrar usuarios, gestionar servicios y asignar turnos con su respectivo estado y personal encargado[cite: 2, 3].

## Despliegue con Docker

Para levantar el entorno, se utilizan dos contenedores: uno para la base de datos PostgreSQL y otro para la herramienta de administración pgAdmin.

### 1. Iniciar Contenedor PostgreSQL
```bash
docker run --name postgres-servilimar -e POSTGRES_USER=ulimar -e POSTGRES_PASSWORD=ex4men_db -p 5432:5432 -d postgres:14
```
### 2. Iniciar Contenedor pgAdmin
```bash
docker run --name pgadmin-servilimar -p 80:80 -e 'PGADMIN_DEFAULT_EMAIL=usuario@servilimar.com' -e 'PGADMIN_DEFAULT_PASSWORD=limar#123' -d dpage/pgadmin4
