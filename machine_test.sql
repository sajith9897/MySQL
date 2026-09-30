CREATE DATABASE Machine_test

USE Machine_test

-- Employee table
CREATE TABLE Employee (
    id INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50),
    Department VARCHAR(50),
    Leavee INT
);

INSERT INTO Employee (Name, Department, Leavee)
VALUES ('Raju', 'Sales', 1), ('Sangeetha', 'Sales', 3), ('Vinay', 'Operations', 8), ('Abey', 'Packing', 2),
('Thomas', 'Packing', 1), ('Muneer', 'Operations', 7), ('Aparna', 'Sales', 3), ('Abid', 'Operations', 9),
('Fathima', 'Sales', 11), ('Varghese', 'Operations', 14);


-- Exam table
CREATE TABLE Exam (
    id INT PRIMARY KEY AUTO_INCREMENT,
    Employee_id INT,
    exam_status VARCHAR(20),
    FOREIGN KEY (Employee_id) REFERENCES Employee(id)
);

INSERT INTO Exam (Employee_id, exam_status)
VALUES (2, 'Pass'), (5, 'Fail'), (1, 'Fail'), (8, 'Pass'), (3, 'Pass'), (1, 'Pass'), (6, 'Fail'),
(9, 'Pass'), (10, 'Pass');


-- Que-1
SELECT * FROM Employee
WHERE Leavee > 5
AND Department = 'Sales';

-- Que-2
SELECT COUNT(*) AS employee_count
FROM Employee
WHERE Department = 'Operations';

-- Que-3
SELECT Department, COUNT(*) AS employee_count
FROM Employee
GROUP BY Department;

-- Que-4
SELECT Department, SUM(Leavee)
FROM Employee
GROUP BY Department
HAVING SUM(Leavee) > 10;

-- Que-5
SELECT Employee.Name
FROM Employee
INNER JOIN Exam
ON Employee.id = Exam.Employee_id
WHERE Exam.exam_status = 'Pass';

-- Que-6
SELECT Name
FROM Employee
WHERE id NOT IN (
    SELECT Employee_id
    FROM Exam
);