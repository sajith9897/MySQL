INSERT INTO products (id, name, category, price, in_stock) 
VALUES ('1', 'Smartphone', 'Electronics', '10000', 'YES'), 
('2', 'Chain', 'Wearables', '200', 'YES'), ('3', 'Charger', 'Accessories', '700', 'NO'), 
('4', 'Laptop', 'Electronics', '50000', 'YES'), ('5', 'Headphones', 'Electronics', '2000', 'NO'), 
('6', 'Ring', 'Wearables', '100', 'YES'), ('7', 'Powerbank', 'Accessories', '850', 'NO')

-- Show all the unique product categories available in the table.
SELECT DISTINCT category FROM `products`

-- Select all products that are in stock and have a price less than 500.
SELECT * FROM `products` WHERE in_stock = 'YES' AND price <500

-- Select all products that are not in stock or have a price greater than 1000.
SELECT * FROM `products` WHERE in_stock = 'NO' OR price > 1000

-- Show the names and prices of all products, and sort the results by price from highest to lowest.
SELECT name, price FROM `products` 
ORDER BY price DESC

-- Display the name and an expression showing the price with 18% tax added (label it as price_with_tax).
SELECT name, price * 1.18 AS price_with_tax
FROM products;