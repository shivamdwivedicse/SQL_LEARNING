create table random (
ID serial primary key,
name varchar(100) not null,
email text unique not null,
created_at date default now(),
age int check(age>=18)

);

insert into random (name,email,age)
values ('Shivam' ,'abc@gmail.com', 23),
       ('Shiva' ,'abce@gmail.com', 20),
       ('Shiv' ,'abcf@gmail.com', 21),
       ('Om' ,'abcd@gmail.com', 24),
       ('Omkar' ,'abcc@gmail.com', 19),
       ('Ankit' ,'abcb@gmail.com', 22),
       ('Ankita' ,'abvc@gmail.com', 24),
       ('Taimoor' ,'abcccc@gmail.com', 25),
       ('Ram' ,'abcdfg@gmail.com', 19),
       ('Shyam' ,'abck@gmail.com', 19),
       ('Raman' ,'abcz@gmail.com', 18),
       ('Somya' ,'abc@qazgmail.com', 24),
       ('Abhi' ,'abcbbb@gmail.com', 30),
       ('Saurabh' ,'abcoo@gmail.com', 33),
       ('Lucky' ,'abcppp@gmail.com', 20);

select * from random;
