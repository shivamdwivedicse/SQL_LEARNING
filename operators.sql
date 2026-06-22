select * from products;

select * from products where category = 'Electronics'
select * from products where category != 'Electronics'

select * from products where price > 500;

select * from products where price < 1000 and 
category = 'Electronics';


select * from products where price < 1000 
and price > 400;
--or
SELECT * from products where price  between 
400 and 1000;

select * from products where category 
in ('Electronics','Home & Kitchen','Fitness');

select * from products where sku_code 
like'W%';

select * from products where sku_code 
like'%123%';

select * from products where sku_code 
like'_B%';


SELECT * from products where not category = 'Electronics';

