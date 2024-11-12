USE master
GO
CREATE DATABASE DBVentasElectronica
GO
USE DBVentasElectronica
GO

-- Tabla Categorías
CREATE TABLE Categorias (
    CategoriaID INT PRIMARY KEY IDENTITY(1,1),
    Nombre VARCHAR(100) NOT NULL,
    Descripcion TEXT
);
GO

-- Tabla Proveedores
CREATE TABLE Proveedores (
    ProveedorID INT PRIMARY KEY IDENTITY(1,1),
    Nombre VARCHAR(100) NOT NULL,
    ContactoNombre VARCHAR(100),
    Telefono VARCHAR(20),
    CorreoElectronico VARCHAR(100),
    Direccion VARCHAR(255)
);
GO

-- Tabla Productos 
CREATE TABLE Productos (
    ProductoID INT PRIMARY KEY IDENTITY(1,1),
    Nombre VARCHAR(100) NOT NULL,
    Descripcion TEXT,
    Precio DECIMAL(18,2) NOT NULL,
    Stock INT NOT NULL,
    Imagen VARCHAR(255), 
    CategoriaID INT FOREIGN KEY REFERENCES Categorias(CategoriaID),
    ProveedorID INT FOREIGN KEY REFERENCES Proveedores(ProveedorID)
);
GO

-- Tabla Clientes
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

-- Tabla Usuarios
CREATE TABLE Usuarios (
    UsuarioID INT PRIMARY KEY IDENTITY(1,1),
    ClienteID INT UNIQUE FOREIGN KEY REFERENCES Clientes(ClienteID),
    NombreUsuario VARCHAR(50) NOT NULL,
    Contrasena VARCHAR(100) NOT NULL,
    FechaCreacion DATETIME DEFAULT GETDATE()
);
GO

-- Tabla Pedidos 
CREATE TABLE Pedidos (
    PedidoID INT PRIMARY KEY IDENTITY(1,1),
    ClienteID INT FOREIGN KEY REFERENCES Clientes(ClienteID),
    FechaPedido DATETIME DEFAULT GETDATE(),
    EstadoPedido VARCHAR(50) NOT NULL DEFAULT 'Pendiente',
    Total DECIMAL(18,2) NOT NULL 
);
GO

-- Tabla DetallePedidos 
CREATE TABLE DetallePedidos (
    DetallePedidoID INT PRIMARY KEY IDENTITY(1,1),
    PedidoID INT FOREIGN KEY REFERENCES Pedidos(PedidoID),
    ProductoID INT FOREIGN KEY REFERENCES Productos(ProductoID),
    Cantidad INT NOT NULL,
    Precio DECIMAL(18,2) NOT NULL, 
    Subtotal AS (Cantidad * Precio)
);
GO

-- Tabla PasarelaPago 
CREATE TABLE MetodoPago (
    MetodoPagoID INT PRIMARY KEY IDENTITY(1,1),
    PedidoID INT FOREIGN KEY REFERENCES Pedidos(PedidoID),
    MetodoPago VARCHAR(50) NOT NULL,  
    EstadoPago VARCHAR(50) NOT NULL DEFAULT 'Pendiente',  
    FechaPago DATETIME DEFAULT GETDATE(),
    Detalles VARCHAR(255) 
);
GO

-- Tabla DireccionesEnvio
CREATE TABLE DireccionesEnvio (
    DireccionEnvioID INT PRIMARY KEY IDENTITY(1,1),
    ClienteID INT FOREIGN KEY REFERENCES Clientes(ClienteID),
    Direccion VARCHAR(255) NOT NULL,
    Ciudad VARCHAR(100),
    Provincia VARCHAR(100),
    CodigoPostal VARCHAR(10),
    Pais VARCHAR(100),
    FechaRegistro DATETIME DEFAULT GETDATE()
);
