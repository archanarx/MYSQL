-- Create the database
CREATE DATABASE LibraryDB;

-- Use the database
USE LibraryDB;

-- Create the books table
CREATE TABLE books (
    book_id INT PRIMARY KEY,
    title VARCHAR(200)
);

-- Create the borrowers table
CREATE TABLE borrowers (
    borrower_id INT PRIMARY KEY,
    name VARCHAR(100),
    book_id INT,          -- this can be NULL if not borrowed
    FOREIGN KEY (book_id) REFERENCES books(book_id)
);


-- Insert the sample data
-- Books table data
INSERT INTO books (book_id, title) VALUES
(1, 'The Alchemist'),
(2, 'The Power of Now'),
(3, 'Think and Grow Rich'),
(4, 'Clean Code');

-- Borrowers table data
INSERT INTO borrowers (borrower_id, name, book_id) VALUES
(101, 'Alice', 1),
(102, 'Bob', 2),
(103, 'Charlie', NULL);


-- Queries requested earlier

-- All books with borrower names
SELECT 
    books.book_id,
    books.title,
    borrowers.name AS borrowed_by
FROM books
LEFT JOIN borrowers
ON books.book_id = borrowers.book_id;

-- All borrowers with book details
SELECT
    borrowers.borrower_id,
    borrowers.name,
    books.title AS borrowed_book
FROM borrowers
LEFT JOIN books
ON borrowers.book_id = books.book_id;

-- Books that have NOT been borrowed
SELECT 
    books.book_id,
    books.title
FROM books
LEFT JOIN borrowers
ON books.book_id = borrowers.book_id
WHERE borrowers.book_id IS NULL;

-- All borrowers (even those who borrowed nothing)
SELECT
    borrowers.borrower_id,
    borrowers.name,
    books.title AS borrowed_book
FROM borrowers
LEFT JOIN books
ON borrowers.book_id = books.book_id;
