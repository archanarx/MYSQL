INSERT INTO students(id, name, course, feesPaid, status)
VALUES (1, 'Alice', 'Web Development', '5000', 'Inactive'),
(2, 'Bob', 'Data Science', '7000', 'Inactive'),
(3, 'Charlie', 'UI/UX Design', '4000', 'Active');

-- Use a query to view only those students whose fees_paid is greater than 5000.
SELECT * FROM students
WHERE feesPaid > 5000;

-- Update the status to 'Active' for students in the 'Web Development' course.
UPDATE students
SET status = 'Active'
WHERE course = 'Web Development';

-- Increase the fees_paid by 1000 for students enrolled in 'Data Science'.
UPDATE students
SET feesPaid = feesPaid + 1000
WHERE course = 'Datascience';

-- Update both status to 'Inactive' and reduce fees_paid by 500 for the student whose id is 3.
UPDATE students
SET status = 'Inactive', feesPaid = feesPaid - 500
WHERE id = 3;

-- Delete the student whose id is 2.
DELETE FROM students
WHERE id= 2;

-- Delete all students who are 'Inactive'.
DELETE FROM students
WHERE status = 'Inactive';

