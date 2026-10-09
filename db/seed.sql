INSERT INTO categorias (id, nombre) VALUES 
(1, 'Electrónica'), (2, 'Ropa'), (3, 'Hogar');

INSERT INTO productos (id, nombre, categoria_id, precio, stock) VALUES
(1, 'Smartphone', 1, 599.99, 10), (2, 'Laptop', 1, 899.99, 4),
(3, 'Auriculares', 1, 49.99, 25), (4, 'Cargador Rápido', 1, 19.99, 3),
(5, 'Camiseta Algodón', 2, 15.50, 40), (6, 'Jeans Azul', 2, 35.00, 15),
(7, 'Chaqueta Abrigo', 2, 75.00, 2), (8, 'Zapatillas', 2, 60.00, 8),
(9, 'Sartén Antiadherente', 3, 24.99, 12), (10, 'Juego de Sábanas', 3, 45.00, 6),
(11, 'Lámpara de Escritorio', 3, 29.99, 1), (12, 'Cafetera Electrónica', 3, 89.99, 5);

INSERT INTO clientes (id, nombre, telefono, email) VALUES
(1, 'Carlos Mendoza', '71234567', 'carlos@mail.com'),
(2, 'Ana Rodriguez', '72345678', 'ana@mail.com'),
(3, 'Luis Torrez', '73456789', 'luis@mail.com'),
(4, 'Sofia Flores', '74567890', 'sofia@mail.com'),
(5, 'Diego Peralta', '75678901', 'diego@mail.com'),
(6, 'Valeria Gomez', '76789012', 'valeria_sin_pedidos@mail.com');

INSERT INTO pedidos (id, cliente_id, fecha, estado) VALUES
(1, 1, '2026-10-01', 'Entregado'), (2, 1, '2026-10-05', 'Pendiente'),
(3, 2, '2026-10-02', 'Entregado'), (4, 3, '2026-10-02', 'Enviado'),
(5, 3, '2026-10-06', 'Pendiente'), (6, 4, '2026-10-03', 'Entregado'),
(7, 4, '2026-10-07', 'Enviado'), (8, 5, '2026-10-04', 'Entregado'),
(9, 5, '2026-10-05', 'Cancelado'), (10, 5, '2026-10-08', 'Pendiente');

INSERT INTO detalle_pedido (pedido_id, producto_id, cantidad, precio_unitario) VALUES
(1, 1, 1, 599.99), (1, 3, 2, 49.99), (1, 4, 1, 19.99),
(2, 2, 1, 899.99),
(3, 5, 3, 15.50), (3, 6, 1, 35.00),
(4, 7, 1, 75.00), (4, 8, 1, 60.00), (4, 3, 1, 49.99),
(5, 9, 2, 24.99), (5, 11, 1, 29.99),
(6, 12, 1, 89.99), (6, 10, 1, 45.00),
(7, 5, 2, 15.50), (7, 6, 2, 35.00), (7, 8, 1, 60.00),
(8, 1, 1, 599.99), (8, 4, 2, 19.99),
(9, 2, 1, 899.99),
(10, 3, 1, 49.99), (10, 5, 1, 15.50), (10, 6, 1, 35.00), (10, 9, 1, 24.99), (10, 10, 1, 45.00), (10, 12, 1, 89.99);