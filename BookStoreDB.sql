-- Create the database
CREATE DATABASE BookStoreDB;

-- Select (use) the database
USE BookStoreDB;

-- Create the authors table
CREATE TABLE authors(
    author_id INT PRIMARY KEY,
    name VARCHAR (100),
    country VARCHAR (100)
);

-- Create the books table with a foreign key
CREATE TABLE books (
    book_id INT PRIMARY KEY,
    title VARCHAR (100),
    price DECIMAL (10,2),
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
);

-- Add a new column published_year
ALTER TABLE books
ADD published_year INT;

-- Delete all rows from the books table
TRUNCATE TABLE books;

-- Remove the entire database
DROP DATABASE BookStoreDB;