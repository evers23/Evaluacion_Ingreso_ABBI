--1. Cantidad de productos más vendidos por año
SELECT
    YEAR(v.fecha) AS año,
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

--2. Empleado con más ventas realizadas por mes
SELECT
    YEAR(v.fecha) AS año,
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

--3. Categoría de producto más comprada por clientes de sexo femenino
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

--4. Año con más ventas realizadas por hombres mayores de 18 años
SELECT
    YEAR(v.fecha) AS año,
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

--5. Ranking de Tiendas con más ventas por año
SELECT
    YEAR(v.fecha) AS año,
    t.nombre AS tienda,
    SUM(v.precio_final) AS total_ventas
FROM
    Venta v
JOIN Tienda t ON v.tienda_id = t.id
GROUP BY
    YEAR(v.fecha), t.nombre
ORDER BY
    total_ventas DESC;
