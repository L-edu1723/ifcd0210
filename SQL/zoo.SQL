

CREATE TABLE especie(
    nombre_cientifico VARCHAR(50) PRIMARY KEY,
    nombre_generico VARCHAR(50),
    familia VARCHAR(30),
    descripcion_cuidados VARCHAR(255),
    informacion VARCHAR(255),
    explicacion VARCHAR(255)
);

CREATE TABLE ejemplar(
    codigo VARCHAR(5) PRIMARY KEY ,
  	especie VARCHAR(50),
    padre VARCHAR(5),
    madre VARCHAR(5),
    fecha_nacimineto DATE,
    fecha_muerte DATE,
    nombre VARCHAR(25),
  	FOREIGN KEY (especie)REFERENCES especie(nombre_cientifico),
    FOREIGN KEY (padre) REFERENCES ejemplar(codigo),
    FOREIGN KEY (madre) REFERENCES ejemplar(codigo)
);

CREATE TABLE cuidador(
    dni VARCHAR(9) PRIMARY KEY,
    ejemplar_asignado VARCHAR(5),
    nombre VARCHAR(20),
    primer_apellido VARCHAR(20),
    segundo_apellido VARCHAR(20),
    telefono VARCHAR(12),
    fecha_asignacion DATE,
    FOREIGN KEY (ejemplar_asignado)REFERENCES ejemplar(codigo)
);

CREATE TABLE voluntario(
    dni VARCHAR(9) PRIMARY KEY,
    nombre VARCHAR(20),
    primer_apellido VARCHAR(20),
    segundo_apellido VARCHAR(20),
    telefono VARCHAR(12),
    fecha_nacimineto DATE    
);

CREATE TABLE visita(
    id INT PRIMARY KEY AUTO_INCREMENT,
cuidador_id VARCHAR(9),
voluntario_id VARCHAR(9),
ejemplar_id VARCHAR(5),
dia_hora TIMESTAMP,
incidencias TEXT,
FOREIGN KEY (cuidador_id) REFERENCES cuidador(dni),
FOREIGN KEY (voluntario_id) REFERENCES voluntario(dni),
FOREIGN KEY (ejemplar_id) REFERENCES ejemplar(codigo)

);

CREATE TABLE permisos(
    cuidador_id VARCHAR(9),
    especie_id VARCHAR(50),
FOREIGN KEY (cuidador_id) REFERENCES cuidador(dni),
FOREIGN KEY (especie_id) REFERENCES especie(nombre_cientifico)

);
CREATE TABLE preferencias(
voluntario_id VARCHAR(9),
ejemplar_asignado VARCHAR(5),
FOREIGN KEY (voluntario_id)REFERENCES voluntario(dni),
FOREIGN KEY (ejemplar_asignado)REFERENCES ejemplar(codigo)
);





