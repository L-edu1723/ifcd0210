-
-- Insertar Especies
INSERT INTO especie (nombre_cientifico, nombre_generico, familia, descripcion_cuidados, informacion, explicacion) VALUES
('Panthera leo', 'León', 'Felidae', 'Requiere amplio espacio y dieta rica en proteínas', 'Originario de África', 'Depredador tope en su ecosistema'),
('Panthera tigris', 'Tigre', 'Felidae', 'Necesita grandes áreas y suministro de agua', 'Principalmente en Asia', 'Excelente nadador y cazador'),
('Elephas maximus', 'Elefante asiático', 'Elephantidae', 'Requiere gran espacio y alimentación variada', 'Herbívoro de gran tamaño', 'Gran memoria y estructura social'),
('Ursus arctos', 'Oso pardo', 'Ursidae', 'Necesita hibernación y dieta mixta', 'Habita en bosques templados', 'Gran fuerza y adaptabilidad');

-- Insertar Ejemplares (ahora con más padres y madres)
INSERT INTO ejemplar (codigo, especie, padre, madre, fecha_nacimineto, fecha_muerte, nombre) VALUES
('E001', 'Panthera leo', NULL, NULL, '2015-06-10', NULL, 'Simba'),
('E002', 'Panthera leo', 'E001', NULL, '2020-03-15', NULL, 'Nala'),
('E003', 'Panthera leo', 'E001', 'E002', '2022-05-20', NULL, 'Mufasa Jr.'),
('E004', 'Panthera tigris', NULL, NULL, '2014-08-22', NULL, 'Rajah'),
('E005', 'Panthera tigris', 'E004', NULL, '2021-07-12', NULL, 'Shere Khan'),
('E006', 'Panthera tigris', 'E004', 'E005', '2023-01-10', NULL, 'Bagheera'),
('E007', 'Elephas maximus', NULL, NULL, '2012-05-05', NULL, 'Dumbo'),
('E008', 'Elephas maximus', 'E007', NULL, '2019-09-15', NULL, 'Babar'),
('E009', 'Elephas maximus', 'E007', 'E008', '2023-02-14', NULL, 'Tantor'),
('E010', 'Ursus arctos', NULL, NULL, '2018-11-30', NULL, 'Baloo'),
('E011', 'Ursus arctos', 'E010', NULL, '2021-06-22', NULL, 'Koda'),
('E012', 'Ursus arctos', 'E010', 'E011', '2024-01-05', NULL, 'Kenai');

-- Insertar Cuidadores
INSERT INTO cuidador (dni, ejemplar_asignado, nombre, primer_apellido, segundo_apellido, telefono, fecha_asignacion) VALUES
('12345678A', 'E001', 'Carlos', 'Gómez', 'Fernández', '600123456', '2019-01-15'),
('23456789B', 'E004', 'Ana', 'Rodríguez', 'López', '610987654', '2020-06-10'),
('34567890C', 'E010', 'Miguel', 'Torres', 'Martínez', '620654321', '2021-02-25');

-- Asignación de permisos de cuidadores a especies
INSERT INTO permisos (cuidador_id, especie_id) VALUES
('12345678A', 'Panthera leo'),   -- Carlos cuida leones
('12345678A', 'Panthera tigris'), -- Carlos también cuida tigres
('23456789B', 'Elephas maximus'), -- Ana cuida elefantes
('34567890C', 'Ursus arctos');    -- Miguel cuida osos

-- Insertar Voluntarios
INSERT INTO voluntario (dni, nombre, primer_apellido, segundo_apellido, telefono, fecha_nacimineto) VALUES
('45678901D', 'Laura', 'Fernández', 'Pérez', '630321456', '1995-04-12'),
('56789012E', 'Pedro', 'Ramírez', 'Sánchez', '640213789', '1998-07-19'),
('67890123F', 'Sofía', 'Méndez', 'González', '650987123', '2000-09-25');

-- Insertar Visitas
INSERT INTO visita (cuidador_id, voluntario_id, ejemplar_id, dia_hora, incidencias) VALUES
('12345678A', '45678901D', 'E001', '2025-03-10 09:30:00', 'Revisión de salud, sin incidencias'),
('23456789B', '56789012E', 'E007', '2025-03-12 14:00:00', 'Pequeña herida en la pata, se aplicó tratamiento'),
('34567890C', '67890123F', 'E010', '2025-03-15 10:15:00', 'Buen estado de salud, alimentación adecuada'),
('12345678A', '45678901D', 'E002', '2025-03-18 11:45:00', 'Revisión de garras y dientes, todo en orden'),
('23456789B', '56789012E', 'E009', '2025-03-20 13:30:00', 'Juego activo, sin anomalías observadas');

-- Insertar Preferencias
INSERT INTO preferencias (voluntario_id, ejemplar_asignado) VALUES
('45678901D', 'E001'), -- Laura tiene preferencia por el león Simba
('56789012E', 'E007'), -- Pedro tiene preferencia por el elefante Dumbo
('67890123F', 'E010'); -- Sofía tiene preferencia por el oso Baloo
