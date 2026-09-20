-- 1. Find students who are studying Python, C++, or MySQL, but exclude those from Kochi and Trivandrum. Sort by course descending and name ascending.

SELECT StudentName, Course, Place
FROM Students
WHERE (Course = 'Python' OR Course = 'C++' OR Course = 'MySQL')
AND NOT (Place = 'Kochi' OR Place = 'Trivandrum')
ORDER BY Course DESC, StudentName ASC;

-- 2. Display distinct places of students whose course is not JAVA or CSS, whose names are not Rahul or Sonia, and whose place is not Pune. Sort places descending.

SELECT DISTINCT Place FROM Students
WHERE NOT (Course = 'JAVA' OR Course = 'CSS')
AND NOT (StudentName = 'Rahul' OR StudentName = 'Sonia')
AND NOT Place = 'Pune'
ORDER BY Place DESC;

-- 3. Display all students from Kerala cities except Kochi and Kottayam, studying either Python or JAVA, but exclude Deepa.

SELECT * FROM Students
WHERE (Place = 'Trivandrum' OR Place = 'Kollam' OR Place = 'Kozhikode')
AND (Course = 'Python' OR Course = 'JAVA')
AND NOT StudentName = 'Deepa'
ORDER BY StudentID ASC;

-- 4. Find distinct courses of students whose StudentID is greater than 5, who are not from Goa or Mumbai, and whose course is not C++.

SELECT DISTINCT Course FROM Students
WHERE StudentID > 5 AND NOT (Place = 'Goa' OR Place = 'Mumbai')
AND NOT Course = 'C++'
ORDER BY Course ASC;

-- 5. Update the course to SQL for students studying C++ or Python, provided they are not from Pune, Goa, or Panjab.

UPDATE Students
SET Course = 'SQL'
WHERE (Course = 'C++' OR Course = 'Python')
AND NOT (Place = 'Pune' OR Place = 'Goa' OR Place = 'Panjab');

-- 6. Delete students whose course is JAVA or CSS, but keep students named Arun and students from Trivandrum.

DELETE FROM Students
WHERE (Course = 'JAVA' OR Course = 'CSS')
AND NOT StudentName = 'Arun'
AND NOT Place = 'Trivandrum';

-- 7. Insert a new student with StudentID 14, Reg:ID 1013, name Meera, course C++, and place Kollam.

INSERT INTO Students (StudentID, `Reg:ID`, StudentName, Course, Place)
VALUES
(14, 1013, 'Meera', 'C++', 'Kollam');

-- 8. Display students who are either from Trivandrum or Kochi and are studying Python or MySQL, but exclude Sonia and Rahul.

SELECT StudentName, Course, Place FROM Students
WHERE (Place = 'Trivandrum' OR Place = 'Kochi') AND (Course = 'Python' OR Course = 'MySQL') AND NOT (StudentName = 'Sonia' OR StudentName = 'Rahul')
ORDER BY StudentName DESC;

-- 9. Update the place to Kochi for students studying C++ or JAVA, except those currently from Goa or Chennai and except Anjima.

UPDATE Students
SET Place = 'Kochi'
WHERE (Course = 'C++' OR Course = 'JAVA')
AND NOT (Place = 'Goa' OR Place = 'Chennai')
AND NOT StudentName = 'Anjima';

-- 10. Display distinct courses where StudentID is between 3 and 12, the student is not from Pune, Mumbai, or Goa, and the course is Python, C++, JAVA, or MySQL. Sort alphabetically.

SELECT DISTINCT Course FROM Students
WHERE StudentID >= 3 AND StudentID <= 12
AND NOT (Place = 'Pune' OR Place = 'Mumbai' OR Place = 'Goa')
AND (Course = 'Python' OR Course = 'C++' OR Course = 'JAVA' OR Course = 'MySQL')
ORDER BY Course ASC;