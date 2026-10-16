CREATE DATABASE college;

USE college;

CREATE TABLE student(
	rollno INT PRIMARY KEY,
    name VARCHAR(50)
  
);

SELECT * FROM student;

INSERT INTO student
(rollno, name)
VALUES
(101, "Raju"),
(102, "Shiyam"),
(103, "Radha");




