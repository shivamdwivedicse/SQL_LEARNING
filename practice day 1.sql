create table zepto(
Category  text,
name varchar(100) not null,
mrp numeric,
discountPercent int,
availableQuantity int, 
discountedSellingPrice int,
weightInGms int,
outOfStock boolean,
quantity int
);

SELECT * from zepto;

-- Display all products that belong to the "Fruits & Vegetables" category.
SELECT category,name from zepto where category = 'Fruits & Vegetables';

-- Show the product name, MRP and discounted selling price of products whose MRP is greater than 5000.
SELECT name , mrp , discountedSellingPrice from zepto WHERE mrp>5000;

-- Find all products that are currently out of stock.
SELECT name from zepto where outOfStock = True;  --in stock
SELECT name from zepto where outOfStock = False; ---out of stock

-- Display the top 10 most expensive products based on MRP.
SELECT name ,mrp from zepto
order by mrp DESC 
limit 10;

-- Find all products whose discount percentage is greater than or equal to 20%.
SELECT name , discountPercent
from zepto 
WHERE discountPercent >=20;

-- Display all products where the weight is greater than 1000 grams.
SELECT name ,weightInGms
from zepto where weightInGms>1000;

-- Find the number of products available in each category.
SELECT category , COUNT(name)
from zepto 
GROUP BY category;

-- Calculate the average discount percentage for each category.

SELECT category , AVG(discountPercent)
from zepto
GROUP BY category;

-- Find the maximum MRP in each category.
SELECT category , min(mrp)
from zepto
GROUP BY category;  --minimum mrp's

SELECT category , max(mrp)
from zepto
GROUP BY category; --maximum mrp's

SELECT category , AVG(mrp)
from zepto
GROUP BY category; --Average mrp's

-- Show only those categories that have more than 100 products.
SELECT category, COUNT(quantity)
from zepto 
GROUP BY category
HAVING COUNT(quantity)>100;

-- Display the top 5 categories having the highest average MRP.
SELECT category , AVG(mrp)
from zepto
GROUP BY category
ORDER BY AVG(mrp) DESC
LIMIT 5;

-- Find the category having the maximum number of out-of-stock products.
SELECT category , COUNT(category)
from zepto
WHERE outOfStock = True
Group by category
order by count(category) DESC 
limit 1;

-- Find all products where the discounted selling price is less than half of the MRP.  
SELECT name , discountedSellingPrice , mrp
from zepto
WHERE discountedSellingPrice < mrp/2;

-- Display the total inventory weight for every category.
SELECT category,SUM(weightingms * quantity) AS total_inventory_weight
from zepto 
group by category; 

-- Find the top 10 products giving the highest discount amount.
-- Discount Amount = MRP - discountedSellingPrice

select name ,mrp ,discountedSellingPrice, (mrp-discountedSellingPrice) AS Discount_Amount
from zepto
order by Discount_Amount DESC
limit 10;

