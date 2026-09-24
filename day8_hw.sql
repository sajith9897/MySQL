-- Imagine you are helping a small bookstore manage their online inventory system. Your job is to set up the database structure for their books and authors. Follow these steps:
-- Create a new database called BookStoreDB.
CREATE DATABASE BookStoreDB;


-- Select this database to work on.
USE BookStoreDB;


-- Create a table named authors with the following columns:
-- author_id (number, primary key)
-- name (text)
-- country (text)

CREATE TABLE authors (
    author_id INT PRIMARY KEY,
    name VARCHAR(50),
    country VARCHAR(50)
);


-- Create another table named books with the following columns:
-- book_id (number, primary key)
-- title (text)
-- price (number)
-- author_id (foreign key referencing authors)

CREATE TABLE books (
    book_id INT PRIMARY KEY,
    title VARCHAR(100),
    price INT,
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
);


-- Add a new column called published_year (number) to the books table.
ALTER TABLE books
ADD COLUMN published_year INT;


-- Add a new column called published_year (number) to the books table.
TRUNCATE TABLE books;


-- Remove the BookStoreDB completely from the system.
DROP DATABASE BookStoreDB;