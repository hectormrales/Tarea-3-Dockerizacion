-- Eliminar la base de datos "tarea3" si ya existe
DROP DATABASE IF EXISTS tarea3;

-- Crear la base de datos "tarea3" con codificación UTF-8
CREATE DATABASE tarea3 CHARACTER SET utf8 COLLATE utf8_general_ci;

-- Usar la base de datos "tarea3"
USE tarea3;

-- Crear la tabla de usuarios
CREATE TABLE usuarios (
    id BIGINT PRIMARY KEY AUTO_INCREMENT, -- Identificador único del usuario
    nombre VARCHAR(64) NOT NULL, -- Nombre del usuario
    email VARCHAR(64) NOT NULL UNIQUE, -- Email único
    password VARCHAR(128) NOT NULL -- Contraseña
);

-- Crear la tabla de roles
CREATE TABLE roles (
    id BIGINT PRIMARY KEY AUTO_INCREMENT, -- Identificador único del rol
    nombre VARCHAR(64) NOT NULL UNIQUE -- Nombre único del rol
);

-- Crear la tabla intermedia para la relación muchos a muchos entre usuarios y roles
CREATE TABLE usuario_roles (
    usuario_id BIGINT, -- Clave foránea que referencia a usuarios
    rol_id BIGINT, -- Clave foránea que referencia a roles
    PRIMARY KEY (usuario_id, rol_id),
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id) ON DELETE CASCADE, -- Relación con eliminación en cascada
    FOREIGN KEY (rol_id) REFERENCES roles(id) ON DELETE CASCADE -- Relación con eliminación en cascada
);

-- Insertar roles en la tabla roles
INSERT INTO roles (nombre) VALUES ('ROLE_ADMIN'), ('ROLE_USER');

-- Eliminar el usuario 'admin' si ya existe
DROP USER IF EXISTS 'admin'@'localhost';
FLUSH PRIVILEGES;

-- Crear el usuario 'admin' con la contraseña 'admin'
CREATE USER 'admin'@'localhost' IDENTIFIED BY 'admin';

-- Otorgar todos los permisos sobre la base de datos "tarea3" al usuario 'admin'
GRANT ALL PRIVILEGES ON tarea3.* TO 'admin'@'localhost';

-- Aplicar los cambios
FLUSH PRIVILEGES;
