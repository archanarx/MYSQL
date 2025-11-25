-- Create database
CREATE DATABASE CompanyDB;

-- Select the database
USE CompanyDB;

--  Create tables
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE departments (
    emp_id INT,
    department_name VARCHAR(100)
);


--  Insert sample data
INSERT INTO employees (id, name) VALUES
(1, 'Anjali'),
(2, 'Rohan'),
(3, 'Meena');

INSERT INTO departments (emp_id, department_name) VALUES
(1, 'HR'),
(2, 'IT'),
(4, 'Finance');



-- Show all employees with their department (NULL if none)
SELECT 
    employees.id,
    employees.name,
    departments.department_name
FROM employees
LEFT JOIN departments
ON employees.id = departments.emp_id;

-- Show only employees who have a department assigned
SELECT 
    employees.id,
    employees.name,
    departments.department_name
FROM employees
INNER JOIN departments
ON employees.id = departments.emp_id;

-- Show all department rows, even if no matching employee
SELECT
    departments.emp_id,
    departments.department_name,
    employees.name
FROM departments
LEFT JOIN employees
ON departments.emp_id = employees.id;
