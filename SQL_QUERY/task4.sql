--Write a SQL query to retrieve the top 5 customers who have made the highest total purchase amount. Display the customer name along with the total purchase amount in descending order of the purchase amount.

SELECT c.name, SUM(oi.unit_price * oi.quantity) AS total_purchase_amount
FROM customers c
INNER JOIN orders o ON c.id = o.customer_id
INNER JOIN order_items oi ON o.id = oi.order_id
GROUP BY c.name
ORDER BY total_purchase_amount DESC
LIMIT 5