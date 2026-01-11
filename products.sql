

INSERT INTO products(id, name, category, price,inStock)
VALUES ('1','Pen','Stationary','200','Yes'),
('2','Pencil','Stationary','650','No'),
('3','Apple','Fruits','700','Yes'),
('4','Book','Stationary','150','No'),
('5','Carrot','Vegetables','1500','Yes');

-- Show all the unique product categories available in the table.
SELECT DISTINCT category FROM products;

-- Select all products that are in stock and have a price less than 500.
SELECT * FROM products
WHERE inStock = 'Yes' AND price < 500;

-- Select all products that are not in stock or have a price greater than 1000.
SELECT * FROM products
WHERE inStock = 'No' OR price > 1000;

-- Show the names and prices of all products, and sort the results by price from highest to lowest.
SELECT name, price FROM products
ORDER BY price DESC;

-- Display the name and an expression showing the price with 18% tax added (label it as price_with_tax).
SELECT name,(price*1.18) AS "price_with_tax" FROM products;