-- Create a new database called GroceryShop.
CREATE DATABASE GroceryShop;


-- Use that database.
USE GroceryShop;


-- Create a table named products with the following details: product_id (number, should be the main identifier) product_name (text) price (number)
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    price INT
);


-- Later, you are asked to add a new column called category (text) to the same table.
ALTER TABLE products
ADD COLUMN category VARCHAR(50);


-- The shop owner wants to remove all items from the products table without deleting the table itself.
TRUNCATE TABLE products;


-- Finally, delete the entire database as it’s no longer needed.
DROP DATABASE GroceryShop;