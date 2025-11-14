-- Insert 5 different books into the books table using the INSERT INTO command. 

INSERT INTO books (id, title, author, price, genre) VALUES
(1, 'The Great Gatsby', 'F. Scott Fitzgerald', 450, 'Fiction'),
(2, 'A Brief History of Time', 'Stephen Hawking', 600, 'Science'),
(3, 'Sapiens', 'Yuval Noah Harari', 550, 'History'),
(4, 'Angels and Demons', 'Dan Brown', 380, 'Thriller'),
(5, 'The Alchemist', 'Paulo Coelho', 300, 'Fiction');

-- Select all books that have a price greater than 400.

SELECT * FROM books
WHERE price > 400;

-- Select all books where the genre is either 'History', 'Science', or 'Fiction'.

SELECT * FROM books
WHERE genre IN ('History', 'Science', 'Fiction');

-- Select the book where the title is exactly 'The Great Gatsby'.

SELECT * FROM books
WHERE title = 'The Great Gatsby';

-- Select all books that are not written by 'Dan Brown'.

SELECT * FROM books
WHERE author <> 'Dan Brown';

-- (we can also use !=)