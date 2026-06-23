SELECT * from products;

select upper(name) from products;
select lower(name) from products;

select length(sku_code) from products;

-- substring 

select substring('Brother in arms' , 1 , 7);
select substring('Brother in arms' , 9, 2);
select substring('Brother in arms' , 12 , 4);

select
name , lower(substring(sku_code , 1 ,2))
from products;

--left() and right()
select left('Brother arms',7);
select right('Brother arms',4);

select name , right(sku_code , 2) from products;
select name , left(sku_code , 2) from products;
 
--concate()

select concat(name , ' ',category) as product_with_category
from products;

select concat_ws(' ',name ,category,sku_code) as product_with_category
from products;

-- trim(), replace()
select trim('      brother    ');

select * from products;
select name , replace(sku_code,left(sku_code,2), 'GG') from products;

 

