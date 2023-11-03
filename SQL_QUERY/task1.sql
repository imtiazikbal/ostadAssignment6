-- Active: 1699037729666@@127.0.0.1@3306@ostad_module_6
SELECT c.name,oi.quantity FROM customers c
INNER JOIN orders o ON c.id = o.customer_id
INNER JOIN order_items oi ON o.id = oi.order_id
ORDER BY oi.quantity DESC

