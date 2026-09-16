
-- Insert 5 different books into the books table using the INSERT INTO command. Use different 
-- values for title, author, price, and genre.
INSERT INTO books VALUES ('1','The Great Gatsby', 'F. Scott Fitzgerald', '800', 'History'), 
('2','Inferno', 'Dan Brown', '300', 'Fiction'), 
('3','The lost symbol', 'Dan Brown', '500', 'History'), 
('4','Project Hail Mary', 'Andy Weir', '400', 'Science'), 
('5','Ill Be Gone in the Dark', 'Michelle McNamara', '350', 'Memoir');

-- Select all books that have a price greater than 400.
SELECT * FROM `books` WHERE Price > 400

-- Select all books where the genre is either 'History', 'Science', or 'Fiction'.
SELECT * FROM `books` WHERE Genre IN ('History','Physics','Science')

-- Select the book where the title is exactly 'The Great Gatsby'.
SELECT * FROM `books` WHERE Title = 'The Great Gatsby'

-- Select all books that are not written by 'Dan Brown'.
SELECT * FROM `books` WHERE Author <> 'Dan Brown'