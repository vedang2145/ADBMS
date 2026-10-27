CREATE DATABASE CompanyDB;

SHOW DATABASES;

USE CompanyDB;

CREATE TABLE Employees (EmpID INT Primary Key, EmpName varchar(10), Salary INT, JoinDate INT);

SELECT * FROM Employees;

CREATE TABLE Departments(DeptID INT PRIMARY KEY, DeptName varchar(20)); 

SELECT * FROM Departments;

ALTER TABLE Employees ADD COLUMN Email varchar(100);

ALTER TABLE Departments ADD COLUMN dept_location varchar(100);

ALTER TABLE Employees ADD COLUMN Phone INT NOT NULL;

ALTER TABLE Employees modify EmpName varchar(100);

ALTER TABLE Departments DROP primary key;

DESC Employees;

DESC Departments;

ALTER TABLE Employees
ADD COLUMN DeptID INT;

ALTER TABLE Employees
ADD CONSTRAINT fk_dept
FOREIGN KEY (DeptID)
REFERENCES Departments(DeptID);

ALTER TABLE Departments
ADD PRIMARY KEY (DeptID);

ALTER TABLE Employees
ADD CONSTRAINT fk_dept
FOREIGN KEY (DeptID)
REFERENCES Departments(DeptID);

SHOW CREATE TABLE Employees;

ALTER TABLE Employees
RENAME COLUMN EmpName to EmployeeName;

SELECT * FROM Employees;

ALTER TABLE Employees ADD COLUMN Age INT;

ALTER TABLE Employees
ADD CONSTRAINT chk_age CHECK (Age >= 15),
ADD CONSTRAINT chk_salary CHECK (Salary > 25000);

SHOW CREATE TABLE Employees;

ALTER TABLE Employees
DROP COLUMN Phone;

RENAME TABLE Employees TO EmployeeDetails;

DESC EmployeeDetails;

SHOW CREATE TABLE EmployeeDetails;

ALTER TABLE EmployeeDetails
DROP CHECK chk_salary;

DROP TABLE Departments;

ALTER TABLE EmployeeDetails
DROP FOREIGN KEY fk_dept;

DROP TABLE Departments;

DESC Departments;

SHOW CREATE TABLE Departments;

SHOW TABLES;

DROP DATABASE CompanyDB;

SHOW DATABASES;