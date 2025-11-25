-- Create a new database
CREATE DATABASE GroceryShop;

-- Use that database
USE GroceryShop;

-- Create the products table
CREATE TABLE products (
    product_id INT PRIMARY KEY ,
    product_name VARCHAR (100), 
    price DECIMAL(10,2)
);

-- Add a new column category
ALTER TABLE products
ADD category VARCHAR(100);

-- Remove all items from the table (but keep the table)
TRUNCATE TABLE products;

-- Delete the entire database
DROP DATABASE GroceryShop;

