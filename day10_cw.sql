CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(50) UNIQUE);

CREATE TABLE courses(
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50))

CREATE TABLE enrollnments(
    student_id INT,
    course_id INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id))