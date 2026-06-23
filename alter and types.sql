create table students (
student_id SERIAL Primary key, 
name VARCHAR(100) , 
age BIGINT
);

insert into students(name,age)
values ('akarsh' , 23),
('Anjili' , 22);


select * from students;
-- ALTER commands 
-- 1.Add a new column 
alter table students 
Add column email varchar(100) default 'not provided';


alter table students 
drop column email;


alter table students 
Rename column name to full_name ;

alter table students 
alter column age type SMALLINT;


-- set a default value

alter table students 
alter column age SET DEFAULT 18;


alter table students 
alter column age Drop DEFAULT ;


alter table students 
ADD Constraint age_check check (age >= 0);


alter table students
Drop Constraint age_check;


alter table students
rename to school_students;
