-- Practice script for Phase 0. Test data only, no credentials.

-- This practice is on PostgreSQL

-- Tables creation

CREATE TABLE conductores (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nombre VARCHAR(250) NOT NULL,
    telefono INT NOT NULL
);

CREATE TABLE paquetes (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    destinatario VARCHAR(250) NOT NULL,
    direccion VARCHAR(120) NOT NULL
    complemento_direccion VARCHAR(150),
    referencias_entrega VARCHAR(255),
    peso_kg INT NOT NULL
);

CREATE TABLE asignaciones (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    paquete_id INT NOT NULL REFERENCES paquetes(id)
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
    ('Kenji Takahashi', '1-23-4 Jinnan, Shibuya-ku, Tokyo 150-0041, Japón', NULL, NULL, 75),
    ('Haruka Sato', '456-7 Gionmachi Minamigawa, Higashiyama-ku, Kyoto-shi, Kyoto 605-0074, Japón', NULL, NULL, 1234),
    ('Ren Suzuki', '2-8-15 Namba, Chuo-ku, Osaka-shi, Osaka 542-0076, Japón', NULL, NULL, 190);

INSERT INTO asignaciones (paquete_id, conductor_id)
VALUES
    (1, 1)
    (2, 2)
    (3, 3)
    (4, 2)
    (5, 1)