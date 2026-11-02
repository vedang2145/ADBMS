create database db;

use db;

CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(30),
    City VARCHAR(30),
    bdate DATE
);

CREATE TABLE Investor (
    inv_no INT PRIMARY KEY,
    inv_name VARCHAR(30),
    inv_date DATE,
    inv_amt DECIMAL(10,2),
    emp_id INT
);

INSERT INTO Employee VALUES
(1, 'Amit', 'Pune', '2002-05-15'),
(2, 'Priya', 'Mumbai', '2001-08-20'),
(3, 'Rahul', 'Nashik', '2003-02-10'),
(4, 'Sneha', 'Nagpur', '2002-11-25'),
(5, 'Vikas', 'Amravati', '2001-06-30');

INSERT INTO Investor VALUES
(101, 'Raj', '2025-01-10', 50000.00, 1),
(102, 'Neha', '2025-02-15', 75000.00, 2),
(103, 'Karan', '2025-03-20', 30000.00, 3),
(104, 'Pooja', '2025-04-05', 90000.00, 4),
(105, 'Sahil', '2025-05-12', 45000.00, 5);

select * from Employee;

alter table Employee
add column Age int;

alter table Employee
add column Salary decimal(20,2);

alter table Employee
add constraint chk_age
check(Age <= 50);

alter table Employee
add constraint chk_salary
check(Salary >= 10000);

alter table Investor
add column Age int;

alter table Investor
modify inv_name text;

describe Investor;

describe Employee;

alter table Employee
rename column Emp_id to E_id;

update Employee
set city = 'Nagpur'
where E_id = 4;

delete from Investor
where Inv_no = 105;

alter table Employee
drop column Age;

select inv_no,inv_name,inv_date from Investor;

rename table Investor to Inv;

truncate table Inv;

drop table Employee;

drop table Inv;

select * from Employee
inner join Investor
on Employee.emp_id = Investor.emp_id;



