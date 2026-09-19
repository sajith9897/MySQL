-- 1. Display the distinct courses of students who are not from Trivandrum or Goa and whose course is not JAVA or CSS, sorted alphabetically in descending order.

SELECT DISTINCT Course FROM Students
WHERE NOT (Place = 'Trivandrum' OR Place = 'Goa')
AND NOT (Course = 'JAVA' OR Course = 'CSS')
ORDER BY Course DESC;


-- 2. Display the names and places of students who are studying either Python or C++, but exclude students from Pune and Panjab, and sort their names in descending order.

SELECT StudentName, Place FROM Students
WHERE (Course = 'Python' OR Course = 'C++')
AND NOT (Place = 'Pune' OR Place = 'Panjab')
ORDER BY StudentName DESC;


-- 3. Display all students except Sonia, Deepa and Rahul, but only if they are not studying JAVA or Python, and sort them by StudentID in descending order.

SELECT * FROM Students
WHERE NOT (StudentName = 'Sonia' OR StudentName = 'Deepa' OR StudentName = 'Rahul')
AND NOT (Course = 'JAVA' OR Course = 'Python')
ORDER BY StudentID DESC;


-- 4. Display the distinct places of students who are studying JAVA or C++, but exclude Sonia and Anjima from the result, sorted by Place in ascending order.

SELECT DISTINCT Place FROM Students
WHERE (Course = 'JAVA' OR Course = 'C++')
AND NOT (StudentName = 'Sonia' OR StudentName = 'Anjima')
ORDER BY Place ASC;


-- 5. Change the course of students from Kottayam or Pune who are currently studying Python to MySQL.

UPDATE Students
SET Course = 'MySQL'
WHERE Course = 'Python'
AND (Place = 'Kottayam' OR Place = 'Pune');


-- 6. Delete students who are studying C++ or JAVA, except students from Trivandrum, and whose names are not Sonia.

DELETE FROM Students
WHERE (Course = 'C++' OR Course = 'JAVA')
AND NOT Place = 'Trivandrum'
AND NOT StudentName = 'Sonia';


-- 7. Insert a new student with StudentID 13, Reg:ID 1012, name Arun, course Python and place Kochi into the Students table.

INSERT INTO Students
(StudentID, `Reg:ID`, StudentName, Course, Place)
VALUES
(13, 1012, 'Arun', 'Python', 'Kochi');


-- 8. Display the distinct courses of students who are not from Chennai, Mumbai or Goa and who are either studying C++ or Python, sorted in descending order.

SELECT DISTINCT Course FROM Students
WHERE NOT (Place = 'Chennai' OR Place = 'Mumbai' OR Place = 'Goa')
AND (Course = 'C++' OR Course = 'Python')
ORDER BY Course DESC;


-- 9. Update the place to Trivandrum for students studying JAVA or Python, except students whose current place is Pune or Malappuram.

UPDATE Students
SET Place = 'Trivandrum'
WHERE (Course = 'JAVA' OR Course = 'Python')
AND NOT (Place = 'Pune' OR Place = 'Malappuram');


-- 10. Display distinct courses of students who are not from Trivandrum, Malappuram or Panjab, are not named Sonia or Deepa, and are studying either JAVA, C++ or Python, sorted in ascending order.

SELECT DISTINCT Course FROM Students
WHERE NOT (Place = 'Trivandrum' OR Place = 'Malappuram' OR Place = 'Panjab')
AND NOT (StudentName = 'Sonia' OR StudentName = 'Deepa')
AND (Course = 'JAVA' OR Course = 'C++' OR Course = 'Python')
ORDER BY Course ASC;
