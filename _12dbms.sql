CREATE DATABASE company_db;

USE company_db;

create table Employees(EmpID int NOT NULL, FirstName varchar(10),
LastName varchar(10), EmpAge int);

SELECT * FROM Employees;

SELECT * FROM Employee1;

INSERT INTO Employees VALUES
(101, 'Ajit', 'Sharma', 30),
(102, 'Raj', 'Verma', 25),
(103, 'Ram', 'Soni', 33);

create table Employee1(EmpID int NOT NULL, FirstName varchar(10),
LastName varchar(10), Unique(EmpID));

INSERT INTO Employee1 VALUES
(101, 'Ajit', 'Sharma'),
(102, 'Raj', 'Verma'),
(103, 'Ram', 'Soni');

INSERT INTO Employee1 values(NULL, 'Ravi', 'Kumar');
INSERT INTO Emplopyee1 VALUES(1, 'Ravi', 'Kumar');
INSERT INTO Employee1 VALUES(1, 'Ravi', 'Kumar');


create table Employee3(EmpID int NOT NULL, FirstName varchar(10),
LastName varchar(10), EmpAge int, Check(EmpAge>20));

INSERT INTO Employee3 VALUES
(101, 'Ajit', 'Sharma', 29),
(102, 'Raj', 'Verma', 30),
(103, 'Ram', 'Soni', 25);

select * from Employee3; 

ALTER TABLE Employee3 add column Salary int, add check(salary>=5000);

INSERT INTO Employee3 VALUES(104,'Raju','Rane',40,7000);
INSERT INTO Employee3 VALUES(105,'om','shaw',35,10000);

show create table Employee3;

ALTER TABLE Employee3 drop check employee3_chk_2;

INSERT INTO Employee3 VALUES(106,'Ramesh','Shinde',22,1000);

CREATE TABLE Employee4 (EmpID int NOT NULL, FirstName varchar(10),
LastName varchar(10), EmpAge int, Check(EmpAge>20), primary key(EmpID));

INSERT INTO Employee4 VALUES(1,'Ravi','Kumar',22);
INSERT INTO Employee4 VALUES(1,'Ram','Kumar',21);
INSERT INTO Employee4 VALUES(2,'Ram','Kumar',21);

SELECT * FROM Employee4;

CREATE TABLE Employee5 (EmpID int primary key, FirstName varchar(10),
LastName varchar(10), EmpAge int, Salary int);

INSERT INTO Employee5 VALUES(1, 'Ram', 'Kumar', 20, 30000);

SELECT * FROM Employee5;

SHOW CREATE TABLE Employee5;

ALTER TABLE Employee5 ADD CONSTRAINT chk_EmpAge_Salary
check(EmpAge>20 AND Salary>=5000);

CREATE TABLE Employee6 (EmpID int NOT NULL, FirstName varchar(10), 
LastName varchar(10), EmpDept varchar(10) Default 'Operation');

Desc Employee6;

SELECT * FROM Employee6;

INSERT INTO Employee6 VALUE (1,'A','B','x');

INSERT INTO Employee6(EmpID, FirstName, LastName)
VALUES(2,'Ravi','Kumar');

INSERT INTO Employee6(EmpID, FirstName, LastName)
VALUES(2,'Raju','Sharma');

CREATE INDEX Demoindex on Employee6(FirstName);

SHOW INDEXES FROM Employee6;

CREATE INDEX Demoindex2 ON Employee6(FirstName, LastName);

DROP INDEX Demoindex on Employee6;
DROP INDEX Demoindex2 on Employee6;

-- Auto Increment
CREATE TABLE persons(
PersonID int NOT NULL AUTO_INCREMENT,
LastName varchar(255) NOT NULL,
FirstName varchar(255),
Age int,
PRIMARY KEY (PersonID)
);

INSERT INTO persons(LastName, FirstName, Age)
VALUES('Sharma', 'Rohit', 39);

SELECT * FROM persons;
 