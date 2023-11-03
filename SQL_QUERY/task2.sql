-- Active: 1699037729666@@127.0.0.1@3306@ostad_module_6

--Write a SQL query to retrieve the product name, quantity, and total amount for each order item. Display the result in ascending order of the order ID.

SELECT p.name,oi.quantity, oi.unit_price 
FROM
products p
INNER JOIN order_items oi
ON p.id = oi.product_id
ORDER BY oi.order_id ASC

