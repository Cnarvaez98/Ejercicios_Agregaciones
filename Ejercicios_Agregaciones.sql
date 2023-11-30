-- Problema 1: Crear la tabla y insertar datos
CREATE TABLE estudiantes (
    nombre VARCHAR(50),
    edad INTEGER,
    puntuacion DECIMAL(5, 2)
);

INSERT INTO estudiantes VALUES
    ('Estudiante1', 20, 85.5),
    ('Estudiante2', 21, 75.0),
    ('Estudiante3', 19, 92.5),
    ('Estudiante4', 22, 80.2),
    ('Estudiante5', 20, 88.9),
    ('Estudiante6', 21, 76.8),
    ('Estudiante7', 19, 94.2),
    ('Estudiante8', 22, 82.1),
    ('Estudiante9', 20, 87.3),
    ('Estudiante10', 21, 77.6);

-- Problema 2: Puntuación promedio de estudiantes mayores de 20 años
SELECT AVG(puntuacion) AS promedio_puntuacion
FROM estudiantes
WHERE edad > 20;

-- Problema 3: Nombre de estudiantes con puntuación mayor a 85 y edad menor a 22
SELECT nombre
FROM estudiantes
WHERE puntuacion > 85 AND edad < 22;

-- Problema 4: Edad y cantidad de estudiantes por cada edad, ordenados por edad descendente
SELECT edad, COUNT(*) AS cantidad_estudiantes
FROM estudiantes
GROUP BY edad
ORDER BY edad DESC;

-- Problema 5: Edad promedio de estudiantes con puntuación mayor a 80
SELECT ROUND(AVG(edad), 2) AS edad_promedio
FROM estudiantes
WHERE puntuacion > 80;
