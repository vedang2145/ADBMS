CREATE DATABASE school;

USE school;

CREATE TABLE school(
	id INT PRIMARY KEY,
    name VARCHAR(20)
);

INSERT INTO school
(id, name)
VALUES
(101, "tejas"),
(102, "raju"),
(103, "ram");

SELECT * FROM school;

CREATE TABLE course(
	id INT PRIMARY KEY,
    course VARCHAR(20)
);

INSERT INTO course
(id, course)
VALUES
(102, "math"),
(105, "science"),
(103, "computer");

SELECT * FROM school;

SELECT * FROM course;

SELECT * FROM school INNER JOIN course 
ON school.id = course.id;

SELECT * FROM school LEFT JOIN course
ON school.id = course.id;

SELECT * FROM school RIGHT JOIN course
ON school.id = course.id;

SELECT * FROM school LEFT JOIN course
ON school.id = course.id
UNION 
SELECT * FROM school RIGHT JOIN course
ON school.id = course.id;

SELECT * FROM school LEFT JOIN course
ON school.id = course.id
WHERE course.id IS NULL;

SELECT * FROM school RIGHT JOIN course
ON school.id = course.id
WHERE school.id IS NULL;

SELECT * FROM school LEFT JOIN course
ON school.id = course.id
WHERE course.id IS NULL
UNION
SELECT * FROM school RIGHT JOIN course
ON school.id = course.id
WHERE school.id IS NULL;

CREATE VIEW view1 AS 
SELECT name FROM school;

SELECT * FROM VIEW1;