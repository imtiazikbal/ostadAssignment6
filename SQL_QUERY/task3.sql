-- Write a SQL query to retrieve the total revenue generated by each product category. Display the category name along with the total revenue in descending order of the revenue.


Select c.name, sum(oi.unit_price * oi.quantity) as revenue
from categories c
inner join products p
on c.id = p.category_id
inner join order_items oi
on p.id = oi.product_id
group by c.name
order by revenue desc