CREATE TABLE authors (
    author_id INT PRIMARY KEY,
    author_name VARCHAR (50),
    email VARCHAR(70))

CREATE TABLE book2 (
    book_id INT PRIMARY KEY,
    books_title VARCHAR (50),
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES authors(author_id))