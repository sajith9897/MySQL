-- Create databse name 'mashupstack'
CREATE DATABASE mashupstack

USE mashupstack

-- create table with id, name, place, course, phone number, mark
CREATE TABLE student(
    id INT NOT NULL,
    name VARCHAR(30) NOT NULL,
    place VARCHAR(70) NOT NULL,
    course VARCHAR(50) NOT NULL,
    phone_number VARCHAR(15),
    mark INT NOT NULL
)

-- Insert 10 values
INSERT INTO student (id, name, place, course, phone_number, mark) 
VALUES (1, 'Arun', 'Trivandrum', 'Python Full Stack', '9876543210', 85),
(2, 'Rahul', 'Kollam', 'Python Full Stack', '9876543211', 72),
(3, 'Akhil', 'Kochi', 'Data Science', '9876543212', 91),
(4, 'Vishnu', 'Alappuzha', 'Web Development', '9876543213', 68),
(5, 'Amal', 'Kottayam', 'Python Full Stack', '9876543214', 79),
(6, 'Nikhil', 'Thrissur', 'Cyber Security', '9876543215', 88),
(7, 'Sreejith', 'Kannur', 'Web Development', '9876543216', 64),
(8, 'Adarsh', 'Kozhikode', 'Data Science', '9876543217', 95),
(9, 'Anand', 'Palakkad', 'Python Full Stack', '9876543218', 76),
(10, 'Rohit', 'Malappuram', 'Cyber Security', '9876543219', 82);


-- Change id column to student id
ALTER TABLE student
CHANGE COLUMN id student_id INT NOT NULL;

-- Change student table to students
ALTER TABLE student
RENAME TO students

-- Change course databse to VARCHAR (20)
ALTER TABLE students
MODIFY COLUMN course VARCHAR(20)

-- Drop mark column
ALTER TABLE students
DROP COLUMN mark


-- Create new table - teachers with id and name
CREATE TABLE teachers(
    id INT NOT NULL,
    name VARCHAR(30) NOT NULL,

-- Drop teachers table
DROP TABLE teachers