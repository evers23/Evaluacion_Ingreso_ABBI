--1. Insertar Registros en la Tabla Tienda
INSERT INTO Tienda (nombre, direccion, region, comuna, ciudad) 
VALUES 
('Tienda Centro', 'Av. Libertador 1000', 'Metropolitana', 'Santiago', 'Santiago'),
('Tienda Norte', 'Calle 1 Norte 500', 'Valparaíso', 'Viña del Mar', 'Viña del Mar'),
('Tienda Sur', 'Calle del Sur 123', 'Los Lagos', 'Puerto Montt', 'Puerto Montt'),
('Tienda Oriente', 'Av. Oriente 200', 'Maule', 'Talca', 'Talca'),
('Tienda Poniente', 'Calle Poniente 456', 'Bío Bío', 'Concepción', 'Concepción');
--2. Insertar Registros en la Tabla Empleado
INSERT INTO Empleado (dni, nombre_completo, telefono, tienda_id) 
VALUES 
('12345678-9', 'Juan Garcia', '987654321', 1),
('23456789-1', 'Ana Lopez', '987654322', 2),
('34567890-5', 'Carlos Diaz', '987654323', 3),
('45678901-0', 'Laura Martinez', '987654324', 4),
('56789012-3', 'Pedro Gonzalez', '987654325', 5);
--3. Insertar Registros en la Tabla Producto
INSERT INTO Producto (nombre, precio, stock, categoria) 
VALUES 
('Camiseta Roja', 20.00, 100, 'Ropa de Hombre'),
('Pantalón Azul', 29.99, 50, 'Ropa de Hombre'),
('Vestido Negro', 79.99, 30, 'Ropa de Mujer'),
('Zapatos Deportivos', 70.00, 70, 'Calzado'),
('Chaqueta Abrigada', 90.00, 40, 'Ropa de Mujer');
--4. Insertar Registros en la Tabla Cliente
INSERT INTO Cliente (dni, nombre, sexo, edad) 
VALUES 
('98765432-1', 'Maria Anaya', 'F', 29),
('22345678-9', 'Jose Ramos', 'M', 35),
('11223347-5', 'Carolina Valdivia', 'F', 41),
('55667788-0', 'Luis Hidalgo', 'M', 23),
('95587766-3', 'Fernanda Guevara', 'F', 26);
--5. Insertar Registros en la Tabla Venta
INSERT INTO Venta (fecha, cliente_id, tienda_id, empleado_id, precio_final) 
VALUES 
('2024-11-01', 1, 1, 1, 120.00),
('2024-10-02', 2, 2, 2, 80.00),
('2024-10-03', 3, 3, 3, 150.00),
('2024-09-04', 4, 4, 4, 100.00),
('2024-07-05', 5, 5, 5, 90.00);
--6. Insertar Registros en la Tabla DetalleVenta
INSERT INTO DetalleVenta (venta_id, producto_id, cantidad, precio) 
VALUES
(1, 1, 2, 20.00), -- Venta 1, Camiseta Roja x2
(1, 4, 1, 70.00), -- Venta 1, Zapatos Deportivos x1
(2, 2, 2, 29.99), -- Venta 2, Pantalón Azul x2
(3, 3, 1, 79.99), -- Venta 3, Vestido Negro x1
(4, 5, 1, 90.00), -- Venta 4, Chaqueta Abrigada x1
(5, 1, 3, 20.00); -- Venta 5, Camiseta Roja x3

