create table numbers (
Id serial,
age smallint,
price numeric(4,2),
rating Real
);

insert into numbers (age , price , rating)
values (23 , 23.67, 12.567);

select * from numbers;

insert into numbers (age , price , rating)
values (23 , 23.67, 12.567); 