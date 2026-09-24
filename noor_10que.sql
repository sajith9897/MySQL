-- 1. Display the student's name, registration ID, and registration ID increased by 500 for students whose course is Python.
SELECT StudentName, RegID, RegID + 500 AS NewRegID
FROM Student
WHERE Course = 'Python';

-- 2. Change Rahul's course from Python to Java.
UPDATE Student
SET Course = 'JAVA'
WHERE StudentName = 'Rahul';


-- 3. Change Deepa's course to HTML and place to Kochi.
UPDATE Student
SET Course = 'HTML', Place = 'Kochi'
WHERE StudentName = 'Deepa';


-- 4. Delete the student who has StudentID = 6 and is studying C++.
DELETE FROM Student
WHERE StudentID = 6 AND Course = 'C++';


-- 5. Change the course to Web Development for students who are currently studying HTML or CSS and are not from Goa.
UPDATE Student
SET Course = 'Web Development'
WHERE Course = 'HTML' OR Course = 'CSS' AND NOT Place = 'Goa';


-- 6. Display unique places of students who are studying either C++, Python, or JAVA.
SELECT DISTINCT Place FROM Student
WHERE Course = 'C++' OR Course = 'Python' OR Course = 'JAVA';


-- 7. Display students who are not from Mumbai or Pune and whose course is Python.
SELECT * FROM Student
WHERE Course = 'Python' AND NOT (Place = 'Mumbai' OR Place = 'Pune');


-- 8. Display students who are not studying C++, arranged by Place ascending and StudentID descending.
SELECT * FROM Student
WHERE NOT Course = 'C++'
ORDER BY Place ASC, StudentID DESC;


-- 9. Change the place to Kerala for students studying JAVA who are currently from either Trivandrum or Malappuram.
UPDATE Student
SET Place = 'Kerala'
WHERE Course = 'JAVA' AND (Place = 'Trivandrum' OR Place = 'Malappuram');


-- 10. Delete students who are studying Python or C# and are not from Pune.
DELETE FROM Student
WHERE Course = 'Python' OR Course = 'C#'
AND NOT Place = 'Pune';