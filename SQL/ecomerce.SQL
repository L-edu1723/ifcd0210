CREATE TABLE usuarios (
id INT AUTO_INCREMENT PRIMARY KEY,
	nombre VARCHAR(20),
  email VARCHAR(25),
  contraseña VARCHAR(18)
)
;

CREATE TABLE productos (
id INT AUTO_INCREMENT PRIMARY KEY,
	nombre VARCHAR(20),
  marca VARCHAR(20),
  referencia VARCHAR(20),
	precio FLOAT,
  categoria_id INT

)
;
CREATE TABLE categoria (
id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(30)
)

CREATE TABLE direccion(
id INT AUTO_INCREMENT PRIMARY KEY,
  calle VARCHAR(50),
  ciudad VARCHAR(30),
  cp VARCHAR(10),
  piso VARCHAR(5),
  provincia VARCHAR(20),
  usuario_id INT
)
;

ALTER TABLE direccion
ADD FOREIGN KEY (usuario_id) REFERENCES usuarios(id);
ALTER TABLE productos
ADD FOREIGN KEY (categoria_id) REFERENCES categoria(id);

