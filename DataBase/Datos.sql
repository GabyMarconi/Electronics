use DBVentasElectronica
GO

INSERT INTO Categorias (Nombre, Descripcion)
VALUES 
('Componentes Electr�nicos', 'Componentes electr�nicos de uso general'),
('Resistencias', 'Resistencias de distintos valores y potencias'),
('Condensadores', 'Condensadores cer�micos y electrol�ticos'),
('Transistores', 'Transistores de diferentes tipos'),
('Diodos', 'Diodos para diversas aplicaciones'),
('Microcontroladores', 'Microcontroladores y chips de desarrollo'),
('Cables', 'Cables y conectores para montaje electr�nico'),
('Placas de Circuito', 'Placas de circuito impreso (PCB) de varias medidas'),
('Sensores', 'Sensores de temperatura, humedad, etc.'),
('Fuente de Alimentaci�n', 'Fuentes de alimentaci�n de corriente continua y alterna'),
('Pantallas LCD', 'Pantallas LCD de diversas resoluciones'),
('Displays LED', 'Displays de 7 segmentos y matrices LED'),
('Herramientas', 'Herramientas para soldadura y ensamblaje'),
('Placas de Prueba', 'Placas para prototipos y pruebas'),
('Rel�s', 'Rel�s para control de circuitos electr�nicos'),
('M�dulos Bluetooth', 'M�dulos para comunicaci�n Bluetooth'),
('M�dulos WiFi', 'M�dulos para comunicaci�n WiFi'),
('Placas Base', 'Placas base para montar componentes'),
('Bater�as', 'Bater�as recargables y de litio');
go

INSERT INTO Proveedores (Nombre, ContactoNombre, Telefono, CorreoElectronico, Direccion)
VALUES 
('Proveedur�a Soluciones El�ctricas', 'Juan P�rez', '987654321', 'contacto@solucioneselectricas.com', 'Av. Comercio 123, Cusco'),
('ElectroProve', 'Ana Rodr�guez', '976543210', 'ventas@electroprove.com', 'Calle Futura 456, Lima'),
('Componentes S.A.', 'Carlos G�mez', '965432109', 'carlos@componentessa.com', 'Paseo de los Proveedores 789, Arequipa'),
('Tecnolog�a Global', 'Maria L�pez', '953216478', 'maria@tecnologiaglobal.com', 'Calle Industrial 234, Lima'),
('ElectroMatic', 'Luis Fern�ndez', '944567890', 'luis@electromatic.com', 'Av. Ingenieros 456, Trujillo'),
('Comercial Digital', 'Pedro Torres', '931234567', 'pedro@comercialdigital.com', 'Jr. Comercio 890, Tacna'),
('Proveedur�a El�ctrica', 'Sofia Vargas', '928765432', 'sofia@proveeduriaelectrica.com', 'Calle El�ctrica 123, Puno'),
('Circuitos & M�s', 'Jorge Mart�nez', '933211223', 'jorge@circuitosymas.com', 'Calle Circuitos 321, Cusco'),
('ElectroMundo', 'Laura S�nchez', '955123456', 'laura@electromundo.com', 'Calle Mundo 654, Huancayo'),
('Proveedores 2020', 'Ricardo D�az', '976432100', 'ricardo@proveedores2020.com', 'Av. Proveedor 111, Piura'),
('M�dulos y Sensores', 'Mar�a Garc�a', '987651234', 'maria@modulossensores.com', 'Jr. Sensores 789, Arequipa'),
('Proveedur�a Zeta', 'Carlos Rodr�guez', '944678901', 'carlos@proveeduriazeta.com', 'Calle Zeta 567, Trujillo'),
('Electronica Moderno', 'Eva Silva', '912345678', 'eva@electronica.com', 'Av. Nueva Tecnolog�a 234, Lima'),
('Electro Store', 'Diego P�rez', '911234567', 'diego@electrostore.com', 'Jr. Electro 890, Cusco'),
('M�dulos Electr�nicos', 'Roberto Jim�nez', '923456789', 'roberto@moduloselectronicos.com', 'Calle Tecnolog�a 123, Arequipa'),
('Conexi�n Electr�nica', 'Patricia Ram�rez', '988765432', 'patricia@conexionelectro.com', 'Av. Conexi�n 432, Puno'),
('ElectroCiencia', 'Jos� S�nchez', '921234567', 'jose@electrociencia.com', 'Calle Ciencia 765, Lima'),
('Tecnolog�a y C�a', 'Olga Ruiz', '951234678', 'olga@tecnologiaycia.com', 'Av. Tecnolog�a 654, Huancayo'),
('ElectroPro', 'Fernando L�pez', '973456789', 'fernando@electropro.com', 'Calle Proveedor 234, Piura'),
('DigitalElectronics', 'Ricardo Ramos', '910876543', 'ricardo@digitalelectronics.com', 'Jr. Digital 345, Trujillo');

GO

INSERT INTO Productos (Nombre, Descripcion, Precio, Stock, CategoriaID, ProveedorID)
VALUES 
('Resistencia 100 Ohm', 'Resistencia de 100 Ohm', 0.10, 500, 2, 1),
('Condensador 10uF', 'Condensador electrol�tico de 10uF', 0.20, 300, 3, 2),
('Transistor NPN', 'Transistor tipo NPN', 0.50, 200, 4, 3),
('Diodo LED', 'Diodo LED de alta luminosidad', 0.15, 600, 5, 4),
('Microcontrolador ATmega328', 'Microcontrolador ATmega328 para Arduino', 3.50, 150, 6, 5),
('Cable USB', 'Cable USB tipo A a tipo B', 1.00, 400, 7, 6),
('Placa PCB 10x10', 'Placa de circuito impreso de 10x10 cm', 2.50, 250, 8, 7),
('Sensor de Temperatura', 'Sensor de temperatura LM35', 0.80, 450, 9, 8),
('Fuente de 12V', 'Fuente de alimentaci�n 12V 2A', 5.00, 100, 10, 9),
('Pantalla LCD 16x2', 'Pantalla LCD de 16x2 caracteres', 2.00, 500, 11, 10),
('Display LED 7 Segmentos', 'Display LED de 7 segmentos', 0.30, 600, 12, 11),
('Soldador El�ctrico', 'Soldador el�ctrico de 30W', 7.50, 120, 13, 12),
('Placa de Prueba 400 puntos', 'Placa de prueba de 400 puntos', 3.00, 350, 14, 13),
('Rel� de 5V', 'Rel� de 5V para control de cargas', 1.50, 500, 15, 14),
('M�dulo Bluetooth HC-05', 'M�dulo Bluetooth HC-05', 2.00, 250, 16, 15),
('M�dulo WiFi ESP8266', 'M�dulo WiFi ESP8266', 3.00, 400, 17, 16),
('Placa Base Arduino', 'Placa base compatible con Arduino', 4.50, 200, 18, 17),
('Bater�a LiPo 3.7V', 'Bater�a LiPo de 3.7V 1000mAh', 2.00, 600, 19, 18),
('Resistencia 220 Ohm', 'Resistencia de 220 Ohm', 0.05, 700, 2, 19),
('Condensador 100uF', 'Condensador electrol�tico de 100uF', 0.25, 300, 3, 20);
GO

INSERT INTO Inventario (ProductoID, Cantidad, TipoMovimiento, FechaMovimiento, Descripcion)
VALUES 
(1, 100, 'Entrada', GETDATE(), 'Ingreso de 100 unidades de resistencia 100 Ohm'),
(2, 50, 'Entrada', GETDATE(), 'Ingreso de 50 unidades de condensador 10uF'),
(3, 200, 'Salida', GETDATE(), 'Salida de 200 transistores NPN'),
(4, 150, 'Entrada', GETDATE(), 'Ingreso de 150 diodos LED'),
(5, 100, 'Salida', GETDATE(), 'Salida de 100 microcontroladores ATmega328'),
(6, 200, 'Entrada', GETDATE(), 'Ingreso de 200 cables USB'),
(7, 50, 'Salida', GETDATE(), 'Salida de 50 placas PCB de 10x10'),
(8, 100, 'Entrada', GETDATE(), 'Ingreso de 100 sensores de temperatura LM35'),
(9, 20, 'Salida', GETDATE(), 'Salida de 20 fuentes de 12V'),
(10, 80, 'Entrada', GETDATE(), 'Ingreso de 80 pantallas LCD 16x2'),
(11, 200, 'Salida', GETDATE(), 'Salida de 200 displays LED de 7 segmentos'),
(12, 50, 'Entrada', GETDATE(), 'Ingreso de 50 soldadores el�ctricos'),
(13, 100, 'Salida', GETDATE(), 'Salida de 100 placas de prueba de 400 puntos'),
(14, 30, 'Entrada', GETDATE(), 'Ingreso de 30 rel�s de 5V'),
(15, 150, 'Salida', GETDATE(), 'Salida de 150 m�dulos Bluetooth HC-05'),
(16, 80, 'Entrada', GETDATE(), 'Ingreso de 80 m�dulos WiFi ESP8266'),
(17, 50, 'Salida', GETDATE(), 'Salida de 50 placas base Arduino'),
(18, 120, 'Entrada', GETDATE(), 'Ingreso de 120 bater�as LiPo 3.7V'),
(19, 200, 'Salida', GETDATE(), 'Salida de 200 resistencias de 220 Ohm'),
(20, 50, 'Entrada', GETDATE(), 'Ingreso de 50 condensadores de 100uF');
GO
INSERT INTO Usuarios (NombreUsuario, Contrasena, Rol)
VALUES 
('juan.perez', '123456', 'Administrador'),
('ana.rodriguez', 'abcdef', 'Administrador'),
('carlos.lopez', 'qwerty', 'Vendedor'),
('maria.gonzalez', 'password123', 'Vendedor'),
('pedro.gomez', 'mypassword', 'Administrador'),
('silvia.romero', 'silvia2024', 'Vendedor'),
('luis.martinez', 'luis123', 'Vendedor'),
('patricia.ruiz', 'patricia321', 'Administrador'),
('javier.fernandez', 'javier654', 'Vendedor'),
('mario.sanchez', 'mario123', 'Vendedor');

GO

INSERT INTO Clientes (Nombre, Apellido, CorreoElectronico, Telefono, Direccion)
VALUES 
('Carlos', 'Rodr�guez', 'carlos.rodriguez@cliente.com', '987654321', 'Av. Sol 123, Cusco'),
('Laura', 'Herrera', 'laura.herrera@cliente.com', '963258741', 'Calle San Mart�n 45, Cusco'),
('Juan', 'Torres', 'juan.torres@cliente.com', '934567890', 'Calle Arequipa 78, Cusco'),
('Sof�a', 'D�az', 'sofia.diaz@cliente.com', '922334455', 'Jr. Puno 56, Cusco'),
('Felipe', '�lvarez', 'felipe.alvarez@cliente.com', '912345678', 'Calle Lima 10, Cusco'),
('Mar�a', 'Garc�a', 'maria.garcia@cliente.com', '945678901', 'Calle Cusco 23, Cusco'),
('Rafael', 'Jim�nez', 'rafael.jimenez@cliente.com', '973451234', 'Av. La Cultura 100, Cusco'),
('Juliana', 'L�pez', 'juliana.lopez@cliente.com', '988765432', 'Calle Santa Teresa 45, Cusco'),
('Eduardo', 'Mart�nez', 'eduardo.martinez@cliente.com', '964532198', 'Calle San Sebasti�n 10, Cusco'),
('Carmen', 'Fern�ndez', 'carmen.fernandez@cliente.com', '911223344', 'Jr. Huancavelica 30, Cusco');


SELECT * FROM Categorias;
SELECT * FROM Proveedores;
SELECT * FROM Productos;
SELECT * FROM Inventario;
SELECT * FROM Usuarios;
SELECT * FROM Clientes;