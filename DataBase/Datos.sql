use DBVentasElectronica
go
INSERT INTO Categorias (Nombre, Descripcion) VALUES 
('Smartphones', 'Teléfonos móviles de última generación con tecnología avanzada'),
('Laptops', 'Laptops y ultrabooks de diversas marcas para todos los usos'),
('Audio', 'Dispositivos de audio, incluyendo auriculares y altavoces'),
('Televisores', 'Televisores LED, OLED y Smart TVs de alta resolución'),
('Accesorios', 'Accesorios electrónicos como cables, cargadores, y fundas'),
('Componentes PC', 'Componentes para computadoras como tarjetas gráficas y procesadores'),
('Drones', 'Drones de uso recreativo y profesional'),
('Cámaras', 'Cámaras digitales y de video, así como accesorios para fotografía'),
('Consolas de Videojuegos', 'Consolas de videojuegos y accesorios'),
('Smart Home', 'Dispositivos inteligentes para el hogar, como cámaras de seguridad y termostatos');
go
INSERT INTO Proveedores (Nombre, ContactoNombre, Telefono, CorreoElectronico, Direccion) VALUES 
('Distribuidora Tech', 'Juan Pérez', '123456789', 'contacto@tech.com', 'Av. Siempre Viva 123, Lima'),
('Hogar y Más', 'Ana Díaz', '987654321', 'contacto@hogarymas.com', 'Calle Principal 456, Cusco'),
('Computronix', 'Carlos Gómez', '654321987', 'ventas@computronix.com', 'Av. Informática 321, Arequipa'),
('Juguetelandia', 'Rosa Quintana', '789123456', 'contacto@juguetelandia.com', 'Calle Juguete 567, Cusco'),
('Cosmética Bella', 'Marta Sarmiento', '987321654', 'info@cosmeticabella.com', 'Av. Belleza 456, Lima'),
('Sporting', 'Luis Ramos', '321654987', 'contacto@sporting.com', 'Calle Deporte 987, Lima'),
('FashionTrendy', 'Carla López', '741258963', 'ventas@fashiontrendy.com', 'Av. Moda 123, Cusco'),
('Zapatos y Más', 'Jorge Martínez', '852963741', 'contacto@zapatosymas.com', 'Calle Calzado 456, Lima'),
('Librería Mundial', 'Patricia Torres', '963852741', 'contacto@libreriamundial.com', 'Av. Letras 789, Arequipa'),
('Mueblería Moderna', 'Raúl Contreras', '159357246', 'contacto@muebleriaderna.com', 'Av. Muebles 951, Lima');
go

INSERT INTO Productos (Nombre, Descripcion, Precio, Stock, Imagen, CategoriaID, ProveedorID) VALUES 
('Smartphone X', 'Teléfono inteligente con cámara de alta resolución', 899.99, 50, 'imagen_smartphone_x.jpg', 1,1),
('Refrigerador Frost', 'Refrigerador de última tecnología con bajo consumo', 1200.00, 15, 'imagen_refrigerador.jpg', 2, 2),
('Laptop Pro', 'Laptop de alto rendimiento para profesionales', 1500.00, 25, 'imagen_laptop_pro.jpg', 3, 3),
('Robot de Juguete', 'Robot educativo para niños', 79.99, 100, 'imagen_robot_juguete.jpg', 4, 4),
('Crema Facial', 'Crema para el cuidado facial de alta calidad', 25.50, 200, 'imagen_crema_facial.jpg', 5, 5),
('Bicicleta de Montaña', 'Bicicleta todo terreno de alta durabilidad', 350.00, 30, 'imagen_bicicleta_montaña.jpg', 6, 6),
('Chaqueta de Cuero', 'Chaqueta de cuero para hombre', 120.00, 40, 'imagen_chaqueta_cuero.jpg', 7, 7),
('Zapatillas Deportivas', 'Zapatillas para correr de alta calidad', 75.00, 80, 'imagen_zapatillas.jpg', 8, 8),
('Libro de Ciencia', 'Libro sobre teorías científicas', 19.99, 150, 'imagen_libro_ciencia.jpg', 9, 9),
('Sofá Moderno', 'Sofá moderno de tres plazas', 500.00, 10, 'imagen_sofa_moderno.jpg', 10, 10);
go
INSERT INTO Clientes (Nombre, Apellido, CorreoElectronico, Telefono, Direccion) VALUES 
('Jorge', 'Lopez', 'jorge.lopez@mail.com', '123456789', 'Av. Central 123, Lima'),
('Ana', 'Perez', 'ana.perez@mail.com', '987654321', 'Calle Nueva 456, Cusco'),
('Luis', 'Gonzalez', 'luis.gonzalez@mail.com', '654321987', 'Av. Libertad 789, Arequipa'),
('Maria', 'Diaz', 'maria.diaz@mail.com', '789123456', 'Jr. Unión 321, Cusco'),
('Carlos', 'Ramirez', 'carlos.ramirez@mail.com', '321654987', 'Av. Principal 987, Lima'),
('Lucia', 'Flores', 'lucia.flores@mail.com', '741258963', 'Calle Independencia 654, Cusco'),
('Pedro', 'Torres', 'pedro.torres@mail.com', '852963741', 'Av. Futuro 456, Lima'),
('Rosa', 'Gutierrez', 'rosa.gutierrez@mail.com', '963852741', 'Av. Cultura 789, Arequipa'),
('Jose', 'Mendoza', 'jose.mendoza@mail.com', '159357246', 'Av. Victoria 951, Lima'),
('Claudia', 'Rojas', 'claudia.rojas@mail.com', '456789123', 'Av. Comercio 753, Cusco');
go
INSERT INTO Usuarios (ClienteID, NombreUsuario, Contrasena) VALUES 
(1, 'jorge_lopez', 'pass1234'),
(2, 'ana_perez', 'pass1234'),
(3, 'luis_gonzalez', 'pass1234'),
(4, 'maria_diaz', 'pass1234'),
(5, 'carlos_ramirez', 'pass1234'),
(6, 'lucia_flores', 'pass1234'),
(7, 'pedro_torres', 'pass1234'),
(8, 'rosa_gutierrez', 'pass1234'),
(9, 'jose_mendoza', 'pass1234'),
(10, 'claudia_rojas', 'pass1234');

SELECT * FROM Categorias;
SELECT * FROM Productos;
SELECT * FROM Proveedores;
SELECT * FROM Usuarios;
SELECT * FROM Clientes;
