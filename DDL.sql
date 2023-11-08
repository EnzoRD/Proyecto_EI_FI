-- Definición de la dimensión Empresa
CREATE TABLE IF NOT EXISTS dimension_empresa (
    empresa_id SERIAL PRIMARY KEY,
    tipo_empresa VARCHAR(255)
);

-- Definición de la dimensión Publicador
CREATE TABLE IF NOT EXISTS dimension_especialidad (
    especialidad_id SERIAL PRIMARY KEY,
    nombre_espe VARCHAR(255)
);

-- Definición de la dimensión puesto
CREATE TABLE IF NOT EXISTS dimension_puesto (
    puesto_id SERIAL PRIMARY KEY,
    puesto VARCHAR(255)
);
-- definicion de la dimension tiempo
CREATE TABLE IF NOT EXISTS dimension_tiempo (
    tiempo_id SERIAL PRIMARY KEY,
    fecha VARCHAR(255),
    dia INT,
    mes INT,
    anio INT
);
-- Definición de la dimensión Region
CREATE TABLE IF NOT EXISTS dimension_region (
    region_id SERIAL PRIMARY KEY,
    provincia VARCHAR(255),
    ciudad VARCHAR(255)
);
-- Definición de la dimensión idioma
CREATE TABLE IF NOT EXISTS dimension_idioma (
    idioma_id SERIAL PRIMARY KEY,
    idioma VARCHAR(255)
);
-- Definición de la dimensión habilidad tecnica
CREATE TABLE IF NOT EXISTS dimension_habilidad_tecnica (
    habilidad_tecnica_id SERIAL PRIMARY KEY,
    habilidad_tecnica VARCHAR(255)
);
-- Definición de la dimensión habilidad blanda
CREATE TABLE IF NOT EXISTS dimension_habilidad_blanda (
    habilidad_blanda_id SERIAL PRIMARY KEY,
    habilidad_blanda VARCHAR(255)
);
-- Definición de la dimensión de hecho Rating
CREATE TABLE IF NOT EXISTS hecho_ofertas_laborales (
    id SERIAL PRIMARY KEY,
    empresa_id INT,
    especialidad_id INT,
    puesto_id INT,
    tiempo_id INT,
    region_id INT,
    idioma_id INT,
    habilidad_tecnica_id INT,
    habilidad_blanda_id INT,
    numero_de_ofertas INT,
    FOREIGN KEY (empresa_id) REFERENCES dimension_empresa(empresa_id),
    FOREIGN KEY (especialidad_id) REFERENCES dimension_especialidad(especialidad_id),
    FOREIGN KEY (puesto_id) REFERENCES dimension_puesto(puesto_id),
    FOREIGN KEY (tiempo_id) REFERENCES dimension_tiempo(tiempo_id),
    FOREIGN KEY (region_id) REFERENCES dimension_region(region_id),
    FOREIGN KEY (idioma_id) REFERENCES dimension_idioma(idioma_id),
    FOREIGN KEY (habilidad_tecnica_id) REFERENCES dimension_habilidad_tecnica(habilidad_tecnica_id),
    FOREIGN KEY (habilidad_blanda_id) REFERENCES dimension_habilidad_blanda(habilidad_blanda_id)
);