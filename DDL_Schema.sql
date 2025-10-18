-- Creación de la tabla Ciudad
CREATE TABLE Ciudad (
    ciudad_id SERIAL PRIMARY KEY,
    nombre_ciudad VARCHAR(100) NOT NULL,
    codigo_postal VARCHAR(10)
);

-- Creación de la tabla Usuario
CREATE TABLE Usuario (
    usuario_id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    tipo_usuario VARCHAR(50),
    condicion_especial VARCHAR(255),
    ciudad_id INT,
    telefono VARCHAR(20),
    email VARCHAR(100),
    sms VARCHAR(20),
    FOREIGN KEY (ciudad_id) REFERENCES Ciudad(ciudad_id)
);

-- Creación de la tabla Empleado
CREATE TABLE Empleado (
    empleado_id SERIAL PRIMARY KEY,
    usuario_id INT UNIQUE NOT NULL,
    cargo VARCHAR(100),
    departamento VARCHAR(100),
    FOREIGN KEY (usuario_id) REFERENCES Usuario(usuario_id)
);

-- Creación de la tabla Servicio
CREATE TABLE Servicio (
    servicio_id SERIAL PRIMARY KEY,
    nombre_servicio VARCHAR(100) NOT NULL,
    descripcion TEXT,
    estado VARCHAR(50) DEFAULT 'activo'
);

-- Creación de la tabla Turno
CREATE TABLE Turno (
    turno_id SERIAL PRIMARY KEY,
    usuario_id INT NOT NULL,
    servicio_id INT NOT NULL,
    empleado_id INT NOT NULL,
    fecha DATE NOT NULL,
    hora_inicio TIME NOT NULL,
    hora_fin TIME,
    estado VARCHAR(50) DEFAULT 'pendiente',
    FOREIGN KEY (usuario_id) REFERENCES Usuario(usuario_id),
    FOREIGN KEY (servicio_id) REFERENCES Servicio(servicio_id),
    FOREIGN KEY (empleado_id) REFERENCES Empleado(empleado_id)
);

-- Creación de la tabla MedioContacto
CREATE TABLE MedioContacto (
    medio_id SERIAL PRIMARY KEY,
    nombre_medio VARCHAR(50) UNIQUE NOT NULL -- Ej: 'email', 'sms', 'telefono'
);

-- Creación de la tabla Notificacion
CREATE TABLE Notificacion (
    notificacion_id SERIAL PRIMARY KEY,
    usuario_id INT NOT NULL,
    medio_id INT NOT NULL,
    mensaje TEXT,
    fecha_envio TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    estado VARCHAR(50),
    FOREIGN KEY (usuario_id) REFERENCES Usuario(usuario_id),
    FOREIGN KEY (medio_id) REFERENCES MedioContacto(medio_id)
);