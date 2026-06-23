select * from products;

select name , price
from products order by price ASC
limit 1;

SELECT AVG(price)
FROM products
WHERE category IN ('Home & Kitchen', 'Fitness');

SELECT avg(price) from products 
where category = 'Home & Kitchen';

SELECT avg(price) from products 
where category = 'Fitness';


select name , stock_quantity from products
where is_available = TRUE
and stock_quantity >50 
and price!=299.00;
 

select category, name , price
from products p1
where price = (
Select max(price) from products p2
WHERE p1.category = p2.category
);


SELECT DISTINCT UPPER(category)
FROM products
order by UPPER(category) DESC;