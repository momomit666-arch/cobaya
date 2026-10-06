- 1. Crear la base de datos (PostgreSQL no acepta "IF NOT EXISTS" aquí)
-- Nota: Debes ejecutar esto por separado si tu herramienta no permite crear y cambiar de BD en el mismo script.
CREATE DATABASE mundo_cobayas;

-- 2. Crear la tabla de cobayas
-- Cambiamos AUTO_INCREMENT por SERIAL o IDENTITY
CREATE TABLE IF NOT EXISTS cobayas (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    raza VARCHAR(50) NOT NULL,
    edad_meses INT NOT NULL,
    nombre_dueno VARCHAR(50) NOT NULL,
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);