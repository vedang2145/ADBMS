CREATE DATABASE man;

USE man;

CREATE TABLE man(
	id INT PRIMARY KEY,
    name VARCHAR(20),
    salary INT NOT NULL,
    city VARCHAR(20)
    
);

INSERT INTO man
(id, name, salary, city)
VALUE 
(1, "ram", 25000, "pune"),
(2, "raj", 40000, "mumbai"),
(3, "nikhil", 55000, "nagpur"),
(4, "neha", 35000, "akola"),
(5, "ram", 25000, "pune"),
(6, "raj", 40000, "mumbai"),
(7, "nikhil", 55000, "nagpur"),
(8, "neha", 35000, "akola");

SELECT * FROM man;

SELECT * FROM man WHERE salary >= 40000 OR city = "mumbai";

SELECT city, count(name) FROM man GROUP BY city;

SELECT city, avg(salary) FROM man GROUP BY city ORDER BY city;