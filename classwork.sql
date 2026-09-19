-- In students change course to WebDevelopment where course is html or css but not place goa
UPDATE students 
SET course = 'WebDevelopment'
WHERE course = 'HTML' OR course = 'CSS' AND NOT place  = 'Goa'


-- select all students where id greater than 5 and sort them is descending order
SELECT * FROM students 
WHERE student_id > 5 
ORDER BY age DESC


-- Change place to kerala, who studying java and place currently Trivandrum or Malappuram
UPDATE students
SET place = 'Kerala'
WHERE course = 'Java' AND place = 'Trivandrum' OR place = 'Malappuram'


-- Delete the students whose course is c++ and place punjab or course is django and place mumbai
DELETE FROM students
WHERE course = 'C++' AND place = 'Punjab' OR course = 'Django' AND place = 'Mumbai'


-- Select all students who are not studying c++ and order them by student id descending and place ascending
SELECT * FROM students 
WHERE NOT course = 'c++' 
ORDER BY student_id DESC , place ASC 


-- Display name, course, place, age who are not from Trivandrum and older than 19, studies java or python and order age in ascending order by.
SELECT name, course, place, age FROM students 
WHERE NOT place = 'Trivandrum' AND age > 19, course= 'Python' OR course = 'Java' 
ORDER BY age ASC 
