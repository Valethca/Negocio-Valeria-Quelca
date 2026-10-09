-- 1. Productos con el nombre de su categoría, ordenados por nombre (JOIN, ORDER BY)
SELECT p.nombre AS producto, c.nombre AS categoria, p.precio, p.stock
FROM productos p
INNER JOIN categorias c ON p.categoria_id = c.id
ORDER BY p.nombre ASC;

-- 2. Productos con menos de 5 unidades en stock (WHERE)
SELECT nombre, stock, precio
FROM productos
WHERE stock < 5;

-- 3. Precio promedio por categoría (GROUP BY, AVG)
SELECT c.nombre AS categoria, AVG(p.precio) AS precio_promedio
FROM productos p
INNER JOIN categorias c ON p.categoria_id = c.id
GROUP BY c.nombre;

-- 4. Pedidos de un cliente con su fecha y estado (JOIN, WHERE)
SELECT cl.nombre AS cliente, p.id AS nro_pedido, p.fecha, p.estado
FROM pedidos p
INNER JOIN clientes cl ON p.cliente_id = cl.id
WHERE cl.id = 1;

-- 5. Total en dinero de cada pedido (SUM, GROUP BY)
SELECT pedido_id, SUM(cantidad * precio_unitario) AS total_dinero
FROM detalle_pedido
GROUP BY pedido_id;

-- 6. Clientes con más de 2 pedidos (GROUP BY, HAVING)
SELECT cl.nombre AS cliente, COUNT(p.id) AS total_pedidos
FROM pedidos p
INNER JOIN clientes cl ON p.cliente_id = cl.id
GROUP BY cl.nombre
HAVING COUNT(p.id) > 2;

-- 7. Eliminar un cliente sin pedidos (DELETE)
DELETE FROM clientes
WHERE id = 6;