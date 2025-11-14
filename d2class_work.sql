INSERT INTO students (id, name, age, department, grade) 
VALUES ('1','Shahad','14','science','80'),
('2','Jerin','15','maths','85'),
('3','Albin','14','Physics','95'),
('4','Anna','15','Computer Science','60'),
('5','Akash','22','Physics','68');

-- Write a query to display all students whose age is greater than 20.

SELECT * FROM students
WHERE age > 20;

-- Write a query to display all students in the 'Computer Science' or 'Physics' departments.

SELECT * FROM students 
WHERE department IN ('Computer Science','Physics');

-- Write a query to show the student who has the grade exactly equal to 90.

SELECT * FROM students
WHERE grade = 90;

-- Write a query to find students whose grades are between 70 and 90.

SELECT * FROM students
WHERE grade BETWEEN 70 AND 90;