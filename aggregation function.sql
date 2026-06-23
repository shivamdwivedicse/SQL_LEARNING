select count(product_id) from products;

-- SUM Function
select sum(price) from products;
select sum(price) from products where category = 'Electronics';
select sum(price) from products where category = 'Electronics' or category = 'Fitness';

-- AVERAGE
SELECT avg(price) from products;

SELECT round(avg(price),2) from products;

SELECT min(price) from products;
SELECT max(price) from products;