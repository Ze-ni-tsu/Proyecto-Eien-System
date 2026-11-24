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
    paquete_id INT REFERENCES paquetes(id)
    conductor_id INT REFERENCES conductores(id)
);