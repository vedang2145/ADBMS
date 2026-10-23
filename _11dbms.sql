
create database college;
show databases;
use college;
create table Employees(EmpID int, FirstName varchar(10),
LastName varchar(10), EmpAge int, Empzone varchar(10));
desc Employees;

INSERT INTO Employees VALUES
(101, 'Ajit', 'Sharma', 30, 'east'),
(102, 'Raj', 'Verma', 25, 'west' ),
(103, 'Ram', 'Soni', 33, NULL);

select * from Employees;

UPDATE Employees set Empzone = 'East' WHERE EmpID = 102;

SET SQL_SAFE_UPDATES = 0;

UPDATE Employees SET EmpAge = 25, Empzone = 'North' WHERE EmpID = 103;

DELETE FROM Employees WHERE EmpID = 102;

SELECT EmpID, FirstName FROM Employees;

TRUNCATE Employees;

SELECT * FROM Employees;





