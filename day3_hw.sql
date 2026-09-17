INSERT INTO books VALUES ('1','The Great Gatsby', 'F. Scott Fitzgerald', '800','Yes', 'History'), 
('2','Inferno', 'Dan Brown', '300','No', 'Fiction'), 
('3','The lost symbol', 'Dan Brown', '500','Yes', 'History'), 
('4','Project Hail Mary', 'Andy Weir', '400','Yes', 'Science'), 
('5','Ill Be Gone in the Dark', 'Michelle McNamara', '350','No', 'Memoir');

-- Show all the different genres available in the store (no duplicates).
SELECT DISTINCT genre FROM `books` 

-- List all books that are in stock and priced below 400.
SELECT * FROM `books` WHERE stock_status = 'Yes' AND price < 400

-- List all books that are either out of stock or have a price above 700.
SELECT * FROM `books` WHERE stock_status = 'No' OR price < 700

-- Show the title and price of every book along with a new column that adds 10% GST to the price.
SELECT title, price * 1.10 AS price_with_gst
FROM books

-- Display the title, price, and stock_status of all books, sorted by price from highest to lowest.
SELECT title, price, stock_status FROM `books` ORDER BY price DESC