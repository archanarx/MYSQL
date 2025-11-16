INSERT INTO books (id, title, author, price, stockStatus, genre) VALUES
(1, 'The Great Gatsby', 'F. Scott Fitzgerald', 450, 'In Stock', 'Fiction'),
(2, 'A Brief History of Time', 'Stephen Hawking', 650, 'In Stock', 'Science'),
(3, 'Sapiens', 'Yuval Noah Harari', 780, 'Out of Stock', 'History'),
(4, 'The Alchemist', 'Paulo Coelho', 320, 'In Stock', 'Fiction'),
(5, 'The Power of Habit', 'Charles Duhigg', 399, 'Out of Stock', 'Self-Help'),
(6, 'Angels and Demons', 'Dan Brown', 350, 'In Stock', 'Thriller'),
(7, 'The Theory of Everything', 'Stephen Hawking', 720, 'Out of Stock', 'Science'),
(8, 'The Silent Patient', 'Alex Michaelides', 500, 'In Stock', 'Mystery');


-- Show all the different genres available in the store (no duplicates).
SELECT DISTINCT genre
FROM books;

-- List all books that are in stock and priced below 400.
SELECT *
FROM books
WHERE stockStatus = 'In Stock' AND price < 400;

-- List all books that are either out of stock or have a price above 700.
SELECT * FROM books
WHERE stockStatus = 'Out of Stock' OR price > 700;

-- Show the title and price of every book along with a new column that adds 10% GST to the price.
SELECT 
    title,
    price,
    price * 1.10 AS price_with_gst
FROM books;

-- Display the title, price, and stock_status of all books, sorted by price from highest to lowest.
SELECT title, price, stockStatus
FROM books
ORDER BY price DESC;