SELECT cuidador_id FROM permisos WHERE especie_id ="";

SELECT codigo FROM ejemplar WHERE especie = "";

SELECT ejemplar_asignado FROM preferencias WHERE voluntario_id = "";

SELECT cuidador.nombre,telefono FROM cuidador INNER JOIN ejemplar on cuidador.ejemplar_asignado=ejemplar.codigo WHERE ejemplar.nombre="";

SELECT 
    c.nombre AS Nombre_Cuidador,
    e.nombre AS Nombre_Ejemplar,
    e.fecha_nacimineto AS Fecha_Nacimiento_Ejemplar,
    v.nombre AS Nombre_Voluntario
FROM visita vi
INNER JOIN cuidador c ON vi.cuidador_id = c.dni
INNER JOIN ejemplar e ON vi.ejemplar_id = e.codigo
INNER JOIN voluntario v ON vi.voluntario_id = v.dni
WHERE vi.dia_hora BETWEEN '2025-01-01' AND '2025-03-31';