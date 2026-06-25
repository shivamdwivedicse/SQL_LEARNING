-- 1 to many relationship

CREATE table students  (
student_id serial primary key ,
name varchar(100) Not null
);

CREATE table marks (
mark_id SERIAL PRIMARY KEY,
student_id INT,
subject VARCHAR(50),
marks INT,
foreign key (student_id) REFERENCES students(student_id)
);

INSERT INTO students (name)
VALUES ('Akarsh Vyas'),
      ('Simran Mehta'),
      ('Rohan Gupta');

SELECT * from students;


INSERT INTO marks (student_id , subject ,marks)
VALUES 

(1, 'English', 85),
(1, 'Math', 89),
(1, 'Science', 92),

(2, 'English', 80),
(2, 'Math', 75),
(2, 'Science', 78),

(3, 'English', 72), 
(3, 'Math', 70),
(3, 'Science', 74);

SELECT * from marks ;

select * from students s join marks m 
ON s.student_id = m.student_id

select s.name , m.subject , m.marks from students s join marks m 
ON s.student_id = m.student_id

select s.name , m.subject , m.marks from students s join marks m 
ON s.student_id = m.student_id where name ='Simran Mehta'

