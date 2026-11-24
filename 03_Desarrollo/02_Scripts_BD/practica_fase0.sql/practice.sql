-- Practice script for Phase 0. Test data only, no credentials.

-- This practice is on PostgreSQL

-- Tables creation

CREATE TABLE conductores (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nombre VARCHAR(250) NOT NULL,
    telefono VARCHAR(20) NOT NULL
);

CREATE TABLE paquetes (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    destinatario VARCHAR(250) NOT NULL,
    direccion VARCHAR(120) NOT NULL,
    complemento_direccion VARCHAR(150),
    referencias_entrega VARCHAR(255),
    peso_kg NUMERIC(6, 2) NOT NULL CHECK (peso_kg > 0)
);

CREATE TABLE asignaciones (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    paquete_id INT NOT NULL REFERENCES paquetes(id),
    conductor_id INT NOT NULL REFERENCES conductores(id)
);

-- Insert dummy data

INSERT INTO conductores (nombre, telefono)
VALUES
    ('Alejandro Meyer', 01234567890),
    ('Takaeshi Takashita', 12345678901),
    ('Yamada Kimono', 23456789012);

INSERT INTO paquetes (destinatario, direccion, complemento_direccion, referencias_entrega, peso_kg)
VALUES
    ('Alejandro Meyer', 'calle 1 # 2 - 3', 'Int 4 Apto 5', 'Dejar en portería', 256),
    ('Lucero Zonpin', 'calle 4 # 5 - 6', NULL, NULL, 24),
    ('Kenji Takahashi', '1-23-4 Jinnan, Shibuya-ku, Tokyo 150-0041, Japón', NULL, NULL, 3),
    ('Haruka Sato', '456-7 Gionmachi Minamigawa, Higashiyama-ku, Kyoto-shi, Kyoto 605-0074, Japón', NULL, NULL, 1234),
    ('Ren Suzuki', '2-8-15 Namba, Chuo-ku, Osaka-shi, Osaka 542-0076, Japón', NULL, NULL, 1);

INSERT INTO asignaciones (paquete_id, conductor_id)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 2),
    (5, 1);

-- Select and Order by Query

SELECT peso_kg
FROM paquetes 
WHERE peso_kg > 3
ORDER BY peso_kg DESC;

-- Join Query

SELECT 
    p.id AS paquete_id,
    p.direccion,
    c.nombre AS nombre_conductor
FROM asignaciones AS a
INNER JOIN paquetes AS p 
    ON a.paquete_id = p.id
INNER JOIN conductores AS c 
    ON a.conductor_id = c.id;


-- Group by Query

SELECT 
    c.id AS id_conductor,
    c.nombre AS nombre_conductor,
    COUNT(a.paquete_id) AS total_paquetes
FROM conductores AS c
LEFT JOIN asignaciones AS a 
    ON c.id = a.conductor_id
GROUP BY c.id, c.nombre
ORDER BY total_paquetes DESC;

-- Integrity tests 1

INSERT INTO asignaciones (paquete_id, conductor_id)
VALUES
    (1, 1); 
    
-- ERROR:  inserción o actualización en la tabla «asignaciones» viola la llave foránea «asignaciones_paquete_id_fkey»
--La llave (paquete_id)=(6) no está presente en la tabla «paquetes». 

--SQL state: 23503
-- Detail: La llave (paquete_id)=(6) no está presente en la tabla «paquetes».

-- Integrity tests 2

INSERT INTO paquetes (destinatario, direccion, complemento_direccion, referencias_entrega, peso_kg)
VALUES
    ('Angie Martinez', 'calle 9 # 8 - 7', NULL, NULL, 0);

-- ERROR:  el nuevo registro para la relación «paquetes» viola la restricción «check» «paquetes_peso_kg_check»
--La fila que falla contiene (6, Angie Martinez, calle 9 # 8 - 7, null, null, 0.00). 

-- SQL state: 23514
-- Detail: La fila que falla contiene (6, Angie Martinez, calle 9 # 8 - 7, null, null, 0.00).