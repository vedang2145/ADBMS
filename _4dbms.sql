CREATE DATABASE class;

USE college;

CREATE TABLE class(
	rollno int PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(20),
    city VARCHAR(20)
    
);

INSERT INTO class
(rollno, name, marks, grade, city)
VALUES
(101, "anil", 90, "A", "pune"),
(102, "raj", 87, "B", "nashik"),
(103, "ram", 94, "A", "mumbai");

SELECT * FROM class;

SELECT city FROM class;

SELECT * FROM class WHERE marks >= 90;