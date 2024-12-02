-- Crear la base de datos llamada tienda_ropa
CREATE DATABASE Tienda_Ropa;
GO

use Tienda_Ropa;
GO
-- Crear la tabla de Tiendas
CREATE TABLE Tienda (
    id INT PRIMARY KEY IDENTITY(1,1),
    nombre VARCHAR(100),
    direccion VARCHAR(200),
    region VARCHAR(50),
    comuna VARCHAR(50),
    ciudad VARCHAR(50)
);
-- Crear la tabla de Empleados
CREATE TABLE Empleado (
    id INT PRIMARY KEY IDENTITY(1,1),
    dni VARCHAR(20) UNIQUE,
    nombre_completo VARCHAR(100),
    telefono VARCHAR(15),
    tienda_id INT,
    FOREIGN KEY (tienda_id) REFERENCES Tienda(id)
);
-- Crear la tabla de Productos
CREATE TABLE Producto (
    id INT PRIMARY KEY IDENTITY(1,1),
    nombre VARCHAR(100),
    precio DECIMAL(10, 2),
    stock INT,
    categoria VARCHAR(50)
);
-- Crear la tabla de Clientes
CREATE TABLE Cliente (
    id INT PRIMARY KEY IDENTITY(1,1),
    dni VARCHAR(20) UNIQUE,
    nombre VARCHAR(100),
    sexo CHAR(1),  -- 'M' para masculino, 'F' para femenino
    edad INT
);
-- Crear la tabla de Ventas
CREATE TABLE Venta (
    id INT PRIMARY KEY IDENTITY(1,1),
    fecha DATE,
    cliente_id INT,
    tienda_id INT,
    empleado_id INT,
    precio_final DECIMAL(10, 2),
    FOREIGN KEY (cliente_id) REFERENCES Cliente(id),
    FOREIGN KEY (tienda_id) REFERENCES Tienda(id),
    FOREIGN KEY (empleado_id) REFERENCES Empleado(id)
);
-- Crear la tabla de Detalle de Venta (Productos vendidos)
CREATE TABLE DetalleVenta (
    id INT PRIMARY KEY IDENTITY(1,1),
    venta_id INT,
    producto_id INT,
    cantidad INT,
    precio DECIMAL(10, 2),
    FOREIGN KEY (venta_id) REFERENCES Venta(id),
    FOREIGN KEY (producto_id) REFERENCES Producto(id)
);

SELECT * FROM Tienda;
SELECT * FROM Empleado;
SELECT * FROM Producto;
SELECT * FROM Cliente;
SELECT * FROM Venta;
SELECT * FROM DetalleVenta;