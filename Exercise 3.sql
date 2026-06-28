Create TABLE products(
product_id INT PRIMARY KEY,
product_name VARCHAR(100),
category TEXT,
price NUMERIC(10,2),
stock_quantity INT,
is_available BOOLEAN,
added_on DATE
);

SELECT * FROM products;

Create TABLE orders (
order_id INT PRIMARY KEY,
product_id INT, 
quantity INT,
order_date DATE,
customer_name VARCHAR(50),
payment_method VARCHAR(50),
CONSTRAINT fk_product 
FOREIGN KEY (product_id)
REFERENCES products(product_id)
ON DELETE CASCADE
);

SELECT * FROM orders;




select o.order_id , o.customer_name , p.product_name , p.price
from orders o inner join products p 
on o.product_id = p.product_id 


select o.order_id , p.product_name
from products p left join orders o 
on p.product_id = o.product_id 


SELECT o.order_id , p.product_name , p.category 
FROM orders o JOIN products p
ON o.product_id = p.product_id
WHERE p.category = 'Electronics';

-- List all orders sorted by product price (high to low)
SELECT  o.order_id , p.product_name , p.price
FROM orders o JOIN products p
ON o.product_id = p.product_id 
ORDER BY p.price DESC;


-- Show number of orders placed for each product
SELECT COUNT(o.order_id) , p.product_name 
FROM products p LEFT JOIN orders o 
ON p.product_id = o.product_id 
GROUP BY p.product_name ;


-- Show total revenue earned per product
SELECT p.product_name , SUM(o.quantity * p.price) AS revenue
FROM products p JOIN orders o 
ON p.product_id = o.product_id
GROUP BY p.product_name ;


 -- Show products where total order revenue > ₹2000
SELECT p.product_name , SUM(o.quantity * p.price) AS total_revenue
FROM products p JOIN orders o 
ON p.product_id = o.product_id
GROUP BY p.product_name
HAVING SUM(o.quantity * p.price)>2000;


-- Show unique customers who ordered 'Fitness' products
SELECT DISTINCT o.customer_name 
FROM orders o JOIN products p 
ON p.product_id = o.product_id
WHERE p.category = 'Fitness';