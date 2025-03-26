CREATE TABLE centro(
codigo INT PRIMARY KEY,
  nombre VARCHAR(30),
  direccion VARCHAR(50),
  calle VARCHAR(50),
  ciudad VARCHAR(20),
  telefono VARCHAR(9),
  email VARCHAR(30),
  numero VARCHAR(2)
  
)
;

CREATE TABLE socio (
dni VARCHAR(9) PRIMARY KEY,
  apellido VARCHAR(15),
  apellido_2 VARCHAR (15),
	telefono VARCHAR(9),
 	email VARCHAR(30),
  cuenta_corriente VARCHAR(15),
	fecha_nacimineto DATE
)
;


CREATE TABLE sala(
nombre VARCHAR(40) PRIMARY KEY,
centro_id INT,
metros_cuadrados VARCHAR(4),
caracteristicas VARCHAR(255),
FOREIGN KEY (centro_id) REFERENCES centro(codigo)
);

CREATE TABLE socios_centros(
id INT AUTO_INCREMENT PRIMARY KEY,
  socio_dni VARCHAR(9),
  centro_codigo INT,
  numero_socios VARCHAR(4),
  fecha DATE,
  FOREIGN KEY (socio_dni) REFERENCES socio(dni),
  FOREIGN KEY (centro_codigo) REFERENCES centro(codigo)
)
;

CREATE TABLE reserva (
id INT AUTO_INCREMENT PRIMARY KEY,
  socio_dni VARCHAR(9),
  sala_id VARCHAR(40),
  fecha DATE,
  hora_comienzo TIME,
 	hora_fin TIME,
  FOREIGN KEY (socio_dni)REFERENCES socio(dni),
  FOREIGN KEY (sala_id)REFERENCES sala(nombre)
);

CREATE TABLE actividad (
codigo INT PRIMARY KEY,
  fecha DATE,
  nombre VARCHAR(20),
  explicacion VARCHAR(255)
  
);

CREATE TABLE matricula(
id INT AUTO_INCREMENT PRIMARY KEY,
  socio_dni VARCHAR(9),
  centro_codigo INT,
  actividad_id INT,
  FOREIGN KEY (socio_dni)REFERENCES socio(dni),
  FOREIGN KEY (centro_codigo)REFERENCES centro(codigo),
  FOREIGN KEY (actividad_id)REFERENCES actividad(codigo)
)
;
