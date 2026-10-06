-- 1. Crear la base de datos
CREATE DATABASE IF NOT EXISTS mundo_cobayas;
USE mundo_cobayas;

-- 2. Crear la tabla de cobayas
CREATE TABLE IF NOT EXISTS cobayas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    raza VARCHAR(50) NOT NULL,
    edad_meses INT NOT NULL,
    nombre_dueno VARCHAR(50) NOT NULL,
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 3. Ejemplo de consulta INSERT (lo que ejecutará tu backend al registrar una cobaya)
INSERT INTO cobayas (nombre, raza, edad_meses, nombre_dueno) 
VALUES ('Pipo', 'Abisinia', 12, 'María');

-- 4. Consulta SELECT para obtener todas las cobayas registradas
SELECT id, nombre, raza, edad_meses, nombre_dueno, fecha_registro 
FROM cobayas 
ORDER BY fecha_registro DESC;