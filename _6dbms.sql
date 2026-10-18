CREATE DATABASE payment;

USE payment;

CREATE TABLE payment(
	customer_id INT PRIMARY KEY,
    customer VARCHAR(20),
    mode VARCHAR(20),
    city VARCHAR(20)
);

INSERT INTO payment
(customer_id, customer, mode, city)
VALUE
(101, "raj", "card1", "pune"),
(102, "ram", "net", "akola"),
(103, "shyam", "net", "mumbai"),
(104, "shivam", "card2", "akola"),
(105, "tejas", "card1", "amravati"),
(106, "hariom", "card1", "pune"),
(107, "pavan", "net", "mumbai"),
(108, "hari", "card2", "delhi"),
(109, "pratik", "card1", "amravati"),
(110, "om", "card1", "pune");


SELECT * FROM payment;

SELECT mode, count(customer) FROM payment GROUP BY mode;

SELECT mode, count(customer) FROM payment GROUP BY mode;

SET SQL_SAFE_UPDATES = 0;

UPDATE payment
SET mode = "netbanking"
WHERE mode = "net";

UPDATE payment
SET customer = "harish"
WHERE customer = "hari";

INSERT INTO payment
(customer_id, customer, mode, city)
value
(118, "aditya", "gpay", "patur");

SELECT * FROM payment;

DELETE FROM payment
WHERE customer_id = 118;

SELECT * FROM payment;

SELECT customer FROM payment GROUP BY customer;

CREATE TABLE dept(
	id INT PRIMARY KEY,
    name VARCHAR(20)
);

INSERT INTO dept
VALUES
(101, "gill");


SELECT * FROM dept;

CREATE TABLE teacher(
	id INT PRIMARY KEY,
    name VARCHAR(20),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES dept(id)
);

INSERT INTO teacher
VALUES	
(1, "rohit", 101),
(2, "virat", 102);
