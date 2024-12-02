--1. Cantidad de productos m�s vendidos por a�o
SELECT
    YEAR(v.fecha) AS a�o,
    p.nombre AS producto,
    SUM(dv.cantidad) AS cantidad_vendida
FROM
    DetalleVenta dv
JOIN Venta v ON dv.venta_id = v.id
JOIN Producto p ON dv.producto_id = p.id
GROUP BY
    YEAR(v.fecha), p.nombre
ORDER BY
    cantidad_vendida DESC;

--2. Empleado con m�s ventas realizadas por mes
SELECT
    YEAR(v.fecha) AS a�o,
    MONTH(v.fecha) AS mes,
    e.nombre_completo AS empleado,
    COUNT(v.id) AS cantidad_ventas
FROM
    Venta v
JOIN Empleado e ON v.empleado_id = e.id
GROUP BY
    YEAR(v.fecha), MONTH(v.fecha), e.nombre_completo
ORDER BY
    cantidad_ventas DESC;

--3. Categor�a de producto m�s comprada por clientes de sexo femenino
SELECT
    p.categoria AS categoria,
    SUM(dv.cantidad) AS cantidad_comprada
FROM
    DetalleVenta dv
JOIN Venta v ON dv.venta_id = v.id
JOIN Producto p ON dv.producto_id = p.id
JOIN Cliente c ON v.cliente_id = c.id
WHERE
    c.sexo = 'F'
GROUP BY
    p.categoria
ORDER BY
    cantidad_comprada DESC;

--4. A�o con m�s ventas realizadas por hombres mayores de 18 a�os
SELECT
    YEAR(v.fecha) AS a�o,
    SUM(v.precio_final) AS total_ventas
FROM
    Venta v
JOIN Cliente c ON v.cliente_id = c.id
WHERE
    c.sexo = 'M' AND c.edad > 18
GROUP BY
    YEAR(v.fecha)
ORDER BY
    total_ventas DESC;

--5. Ranking de Tiendas con m�s ventas por a�o
SELECT
    YEAR(v.fecha) AS a�o,
    t.nombre AS tienda,
    SUM(v.precio_final) AS total_ventas
FROM
    Venta v
JOIN Tienda t ON v.tienda_id = t.id
GROUP BY
    YEAR(v.fecha), t.nombre
ORDER BY
    total_ventas DESC;
