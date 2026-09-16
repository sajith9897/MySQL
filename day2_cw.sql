
-- Insert 4 student records into the students table using realistic data.

INSERT INTO student information (ID, Name, Age, Department, Grade)
VALUES ('1', 'Akhil', '20', 'Biology', '90'),('2', 'Durga', '21', 'Computer science', '69'), 
('3', 'Jaison', '85', 'Physics', '9'), ('4', 'Rahul', '21', 'Computer science', '90');

-- Write a query to display all students whose age is greater than 20.
SELECT * FROM `student_information` WHERE Age > 20

-- Write a query to display all students in the 'Computer Science' or 'Physics' departments.
SELECT * FROM `student_information` WHERE Department IN ('Computer sceince','Physics')

-- Write a query to show the student who has the grade exactly equal to 90.
SELECT * FROM `student_information` WHERE Grade = 90

-- Write a query to find students whose grades are between 70 and 90.
SELECT * FROM `student_information` WHERE Grade BETWEEN '70' AND '90'