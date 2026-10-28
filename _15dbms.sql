CREATE DATABASE practical;

USE practical;

CREATE table Employee(emp_id INT PRIMARY KEY,emp_name VARCHAR(10),
City VARCHAR(10),bdate INT);

CREATE table Investor(inv_no INT PRIMARY KEY,inv_name VARCHAR(10),
inv_date date,inv_amt INT,emp_id INT);

INSERT INTO Employee VALUES(1,'Rahul','Pune',20-02-2001);
INSERT INTO Employee VALUES(2,'Ram','Mumbai',10-12-1990);
INSERT INTO Employee VALUES(3,'Rajesh','Akola',30-09-1995);
INSERT INTO Employee VALUES(4,'Mahesh','Delhi',25-03-2003);
INSERT INTO Employee VALUES(5,'Jay','Kolhapur',02-05-2002);


INSERT INTO Investor VALUES(10,'Ajay','2025-03-10',5000,1);
INSERT INTO Investor VALUES(11,'Vijay','2025-02-20',5000,2);
INSERT INTO Investor VALUES(12,'Mohit','2025-02-11',5000,3);
INSERT INTO Investor VALUES(13,'Raju','2025-06-10',5000,4);
INSERT INTO Investor VALUES(14,'Viraj','2025-02-10',5000,5);
INSERT INTO Investor VALUES(15,'Om','2025-07-10',5000,1,20);

SELECT * FROM Employee;

DESC Employee;

DESC Investor;

ALTER TABLE Employee
ADD COLUMN Age INT;

ALTER TABLE Employee
ADD COLUMN Salary INT;

ALTER TABLE Employee
ADD CONSTRAINT chk__age CHECK (age <= 50);

ALTER TABLE Employee
ADD CONSTRAINT chk__salary CHECK (salary >= 10000);

ALTER TABLE Investor 
ADD COLUMN Age INT;

SELECT * FROM Investor;

ALTER TABLE Investor
modify inv_name text;

DESC Investor;

ALTER TABLE Employee
modify b_date date;

ALTER TABLE Investor
RENAME COLUMN emp_id TO e_id;

ALTER TABLE Employee
RENAME COLUMN bdate TO b_date;

UPDATE Employee SET City='Nagpur' WHERE emp_id=4;

SELECT * FROM Employee;

DELETE FROM Employee WHERE inv_no=5;

SELECT * FROM Investor;

INSERT INTO Investor VALUES(101,'Sam',20-01-2001,5000,9);

ALTER TABLE Investor
modify inv_date date;

ALTER TABLE Investor 
DROP COLUMN Age;

DELETE FROM Investor WHERE inv_no=15;

ALTER TABLE Employee 
DROP CONSTRAINT chk__age;

DESC Employee;

DROP TABLE Investor;

ALTER TABLE Investor 
ADD FOREIGN KEY(emp_id)
references Employee(emp_id); 

desc Investor;

SELECT inv_no,inv_name,
inv_date,inv_amt FROM Investor;

rename table Investor to INV;

desc INV;

truncate INV;

SELECT * FROM INV;


DROP table Employee,INV;

SHOW TABLES;


