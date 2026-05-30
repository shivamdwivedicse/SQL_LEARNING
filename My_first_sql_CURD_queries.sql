INSERT INTO students (name,age,grade)
VALUES ('Shivam' , 19 , 'A'),
       ('Harshit' , 20 , 'B');

	   
SELECT * from students;
SELECT name from students;
SELECT name from students where age = 19;

update students 
SET age = 24
where name = 'Shivam';

update students
SET student_id = 2 
where name = 'Harshit';

update students
SET student_id = 1 
where name = 'Shivam';

SELECT * from students;

DELETE from students 
where name = 'Jyot'