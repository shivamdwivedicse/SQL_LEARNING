create table products(
Product_ID serial primary key,
Name varchar(100) not null,
sku_code char(8) unique not null,
Price numeric(10,2) check(Price>=0),
Stock_quantity int default 0 check (Stock_quantity >= 0),
Is_available boolean default TRUE ,
Category text not null,
Added_on_date DATE default current_date,
last_update Timestamp default now()
);

insert into products (Name , sku_code , Price,Stock_quantity , Is_available ,Category)
values
('Wireless Mouse', 'WM123456', 699.99, 50, TRUE, 'Electronics'),
('Bluetooth Speaker', 'BS234567', 1499.00, 30, TRUE, 'Electronics'),
('Laptop Stand', 'LS345678', 799.50, 20, TRUE, 'Accessories'),
('USB-C Hub', 'UC456789', 1299.99, 15, TRUE, 'Accessories'),
('Notebook', 'NB567890', 99.99, 100, TRUE, 'Stationery'),
('Pen Set', 'PS678901', 199.00, 200, FALSE, 'Stationery'),
('Coffee Mug', 'CM789012', 299.00, 75, TRUE, 'Home & Kitchen'),
('LED Desk Lamp', 'DL890123', 899.00, 40, TRUE, 'Home & Kitchen'),
('Yoga Mat', 'YM901234', 499.00, 25, TRUE, 'Fitness'),
('Water Bottle', 'WB012345', 349.00, 60, TRUE, 'Fitness');

SELECT * from products;


select name , price from products;

select * from products where category = 'Electronics';

select category from products Group by category;

select category , count(*) from products
Group by category
having count(*)>1;


SELECT * from products where category != 'Electronics';

SELECT * from products where price>1000;

SELECT * from products where price<1000;

SELECT * from products where price<1000 and category = 'Stationery';


SELECT * from products where price<1000 and price>400;
-- OR
SELECT * from products where price between 400 and 1000;

SELECT * from products where category = 'Electronics' or category='Home & Kitchen';

SELECT * from products where category in ('Electronics' , 'Fitness');
-- LIKE OPERATOR
Select * from products where sku_code like 'W%';

Select * from products where sku_code like '%123%';


select * from products where sku_code like '_B%';

 