-- TABLE - EMPLOYEE
CREATE TABLE Employee (
    id INT PRIMARY KEY,
    Name VARCHAR (50) ,
    Department VARCHAR (50),
    Leave INT 
 );

-- TABLE - EXAM
CREATE TABLE Exam (
    id INT PRIMARY KEY,
    Employee_id INT,
    exam_status VARCHAR (15),
    FOREIGN KEY (Employee_id) REFERENCES Employee (id)
);

-- EMPLOYEE DATA
 INSERT INTO employee (id, Name, Department, Leave )
 VALUES (1, 'Raju', 'Sales', 1),
        (2, 'Sangeetha', 'Sales', 3),
        (3, 'Vinay', 'Operations', 8),
        (4, 'Abey', 'Packing', 2),
        (5, 'Thomas', 'Packing', 1),
        (6, 'Muneer', 'Operations', 7),
        (7, 'Aparna', 'Sales', 3),
        (8, 'Abid', 'Operations', 9),
        (9, 'Fathima', 'Sales', 11),
        (10, 'Varghese', 'Operations', 14);

-- EXAM DATA
INSERT INTO Exam (id, Employee_id, exam_status)
VALUES  (1, 2, 'Pass'),
        (2, 5, 'Fail'),
        (3, 1, 'Fail'),
        (4, 8, 'Pass'),
        (5, 3, 'Pass'),
        (6, 1, 'Pass'),
        (7, 6, 'Fail'),
        (8, 9, 'Pass'),
        (9, 10, 'Pass');


-- 1. Query to get the list of employees who took more than 5 leaves and are in sales department.
SELECT name
FROM Employee
WHERE leave > 5 AND Department = 'Sales' ;

-- 2. Query to get the number of employees working in operations department.
SELECT COUNT(*) AS Total_employees_in_operations
FROM Employee
WHERE Department = 'Operations' ;

-- 3. A single query to get the count of employees working in each department.
SELECT department, COUNT(*) AS Total_employees
FROM Employee
GROUP BY Department;

-- 4. Query to list the department where all its employees altogether took more than 10 leaves.
SELECT Department
FROM Employee
GROUP BY Department
HAVING SUM(Leave) > 10 ;

-- 5. Query to list all the employees names who have passed the exam.
SELECT Employee.Name
FROM Employee
INNER JOIN Exam ON Employee.id = Exam.Employee_id
WHERE Exam.exam_status = 'Pass' ;

-- 6. Query to list all the employee names who have not attended the exam.
SELECT Employee.Name, Exam.exam_status
FROM Employee
LEFT JOIN Exam ON Employee.id = Exam.Employee_id
WHERE Exam.Employee_id IS NULL ;