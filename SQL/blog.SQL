CREATE TABLE posts(
id_post INT AUTO_INCREMENT PRIMARY KEY,
id_usuraio INT,
titulo VARCHAR(255),
cuerpo TEXT,
fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
fecah_modificacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE usuarios(
id INT AUTO_INCREMENT PRIMARY KEY,
email VARCHAR(255),
alias VARCHAR(255),
contraseña VARCHAR(255),
fecha_registro DATE DEFAULT CURRENT_DATE
);

CREATE TABLE comentario (
id INT AUTO_INCREMENT PRIMARY KEY,
texto TEXT,
fecha_publicacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
usuario_id INT ,
post_id INT
)

ALTER TABLE comentario
ADD FOREIGN KEY (usuario_id) REFERENCES usuarios(id);
ALTER TABLE comentario
ADD FOREIGN KEY (post_id) REFERENCES posts(id_post);
ALTER TABLE posts
ADD FOREIGN KEY (id_usuario) REFERENCES usuarios(id);






