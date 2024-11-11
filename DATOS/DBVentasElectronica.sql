USE master
GO
CREATE DATABASE DBVentasElectronica
GO
use DBVentasElectronica
GO

CREATE TABLE Categorias (
    CategoriaID INT PRIMARY KEY IDENTITY(1,1),
    Nombre VARCHAR(100) NOT NULL,
    Descripcion TEXT
);
GO
CREATE TABLE Proveedores (
    ProveedorID INT PRIMARY KEY IDENTITY(1,1),
    Nombre VARCHAR(100) NOT NULL,
    ContactoNombre VARCHAR(100),
    Telefono VARCHAR(20),
    CorreoElectronico VARCHAR(100),
    Direccion VARCHAR(255)
);
GO
CREATE TABLE Productos (
    ProductoID INT PRIMARY KEY IDENTITY(1,1),
    Nombre VARCHAR(100) NOT NULL,
    Descripcion TEXT,
    Precio DECIMAL(18,2) NOT NULL,
    Stock INT NOT NULL,
    CategoriaID INT FOREIGN KEY REFERENCES Categorias(CategoriaID),
    ProveedorID INT FOREIGN KEY REFERENCES Proveedores(ProveedorID)
);
GO
CREATE TABLE Clientes (
    ClienteID INT PRIMARY KEY IDENTITY(1,1),
    Nombre VARCHAR(100) NOT NULL,
    Apellido VARCHAR(100),
    CorreoElectronico VARCHAR(100) NOT NULL,
    Telefono VARCHAR(20),
    Direccion VARCHAR(255),
    FechaRegistro DATETIME DEFAULT GETDATE()
);
GO
CREATE TABLE Ventas (
    VentaID INT PRIMARY KEY IDENTITY(1,1),
    ClienteID INT FOREIGN KEY REFERENCES Clientes(ClienteID),
    FechaVenta DATETIME DEFAULT GETDATE(),
    Total DECIMAL(18,2) NOT NULL
);
GO
CREATE TABLE DetalleVentas (
    DetalleVentaID INT PRIMARY KEY IDENTITY(1,1),
    VentaID INT FOREIGN KEY REFERENCES Ventas(VentaID),
    ProductoID INT FOREIGN KEY REFERENCES Productos(ProductoID),
    Cantidad INT NOT NULL,
    Precio DECIMAL(18,2) NOT NULL,  -- Precio del producto al momento de la venta
    Subtotal AS (Cantidad * Precio)  -- Calculado autom�ticamente
);
GO
CREATE TABLE Usuarios (
    UsuarioID INT PRIMARY KEY IDENTITY(1,1),
    NombreUsuario VARCHAR(50) NOT NULL,
    Contrasena VARCHAR(100) NOT NULL,
    Rol VARCHAR(50) NOT NULL,  -- Ejemplo: Administrador, Vendedor
    FechaCreacion DATETIME DEFAULT GETDATE()
);
GO
CREATE TABLE Inventario (
    InventarioID INT PRIMARY KEY IDENTITY(1,1),
    ProductoID INT FOREIGN KEY REFERENCES Productos(ProductoID),
    Cantidad INT NOT NULL,
    TipoMovimiento VARCHAR(50),  -- Ejemplo: Entrada, Salida
    FechaMovimiento DATETIME DEFAULT GETDATE(),
    Descripcion TEXT
);