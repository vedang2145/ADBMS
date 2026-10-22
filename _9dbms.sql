CREATE DATABASE practice;
USE practice;

CREATE TABLE Students (
    Student_ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Course VARCHAR(50),
    Marks INT
);

INSERT INTO Students VALUES
(1, 'Rahul', 20, 'MCA', 85),
(2, 'Priya', 21, 'MCA', 72),
(3, 'Amit', 22, 'BCA', 65),
(4, 'Sneha', 20, 'BCA', 91),
(5, 'Rohan', 23, 'MCA', 58),
(6, 'Neha', 21, 'BCA', 78);

SELECT * FROM students;

SELECT Name, Marks FROM students;

SELECT * FROM students
WHERE marks > 70;

SELECT * FROM students
WHERE age = 21;

SELECT * FROM students
WHERE course = "MCA";

SELECT * FROM students 
WHERE marks BETWEEN 60 AND 80;

SELECT * FROM students
WHERE marks > 80 AND course = "MCA";

SELECT * FROM students
ORDER BY marks DESC;

SELECT * FROM students
ORDER BY age ASC;

SELECT * FROM students
ORDER BY marks DESC
LIMIT 1;

SELECT AVG(marks) FROM students;

SELECT MIN(marks) FROM students;

SELECT max(marks) FROM students;

SELECT COUNT(student_id) FROM students;

SELECT COUNT(*) FROM students
WHERE course = "MCA";

SELECT AVG(marks) FROM students
WHERE course = "MCA";

SELECT * FROM students
WHERE name LIKE 'P%';

SELECT * FROM students
WHERE marks > 60;

UPDATE students
SET marks = 60
WHERE marks = 58;

SET SQL_SAFE_UPDATES = 0;

SELECT * FROM students;

DELETE FROM students
WHERE student_id = 6;

SELECT AVG(marks) from students
WHERE course = "MCA";

SELECT AVG(marks) FROM students
WHERE course = "BCA";

SELECT course, avg(marks) FROM students
GROUP BY course;

SELECT max(marks), course FROM students
GROUP BY course;

SELECT course, avg(marks) FROM students
GROUP BY course
HAVING avg(marks) > 75;

SELECT DISTINCT course FROM students;	

SELECT COUNT(name), course FROM students
GROUP BY course;

SELECT name, marks FROM students
WHERE marks > 70
ORDER BY marks DESC;

CREATE TABLE Departments (
    Dept_ID INT PRIMARY KEY,
    Dept_Name VARCHAR(50)
);

DROP TABLE Departments;
INSERT INTO Departments VALUES
(1, 'Computer Science'),
(2, 'Information Technology');

SELECT * FROM students
INNER JOIN Departments
ON students.Dept_ID = Departments.Dept.ID;

SELECT *
FROM Students
INNER JOIN Departments
ON Students.Dept_ID = Departments.Dept_ID;

CREATE TABLE Departments (
    Dept_ID INT PRIMARY KEY,
    Dept_Name VARCHAR(50)
);

INSERT INTO Departments VALUES
(1, 'Computer Science'),
(2, 'Information Technology');

DESCRIBE Students;

ALTER TABLE Students
ADD Dept_ID INT;

UPDATE Students
SET Dept_ID = 1
WHERE Student_ID IN (1, 3, 5);

UPDATE Students
SET Dept_ID = 2
WHERE Student_ID IN (2, 4, 6);

SELECT *
FROM Students
INNER JOIN Departments
ON Students.Dept_ID = Departments.Dept_ID;

SELECT * FROM students
INNER JOIN Departments
ON Students.Dept_ID = Departments.Dept_ID;


