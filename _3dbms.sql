CREATE DATABASE company;

USE company;

CREATE TABLE employee(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT
);

SELECT * FROM employee;

INSERT INTO employee
(id, name, salary)
VALUES
(1, "Adam", 25000),
(2, "Bob", 30000),
(3, "Casey", 40000);