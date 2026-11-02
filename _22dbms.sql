create database db;

use db;

create table Employee(Emp_no int, E_name varchar(20), E_address varchar(20), E_ph_no varchar(10),
 Dept_no int, Dept_name varchar(20),Job_id varchar(20) , Designation varchar(20), Salary decimal(10,2));
 
 INSERT INTO EMPLOYEE
(Emp_no, E_name, E_address, E_ph_no, Dept_no, Dept_name, Job_id, Designation, Salary)
VALUES
(101, 'Amit', 'Pune', '9876543210', 10, 'IT', 'J101', 'MANAGER', 50000);

INSERT INTO EMPLOYEE
VALUES
(102, 'Priya', 'Mumbai', '9876543211', 20, 'HR', 'J102', 'CLERK', 25000);

INSERT INTO EMPLOYEE
VALUES
(103, 'Rahul', 'Nashik', '9876543212', 10, 'IT', 'J103', 'DEVELOPER', 40000);

INSERT INTO EMPLOYEE
VALUES
(104, 'Sneha', 'Nagpur', '9876543213', 30, 'SALES', 'J104', 'SALESMAN', 30000);

INSERT INTO EMPLOYEE
VALUES
(105, 'Vikas', 'Amravati', '9876543214', 20, 'HR', 'J105', 'ANALYST', 45000);

select * from Employee;

select Emp_no,E_name,salary from Employee where Designation = 'Manager';

select * from employee where salary > 10000;

alter table Employee
add column join_date date;

update Employee
set join_date = '1999-10-09'
where Emp_no = 101;

update Employee
set join_date = '1977-12-04'
where Emp_no = 102;

update Employee
set join_date = '2005-05-19'
where Emp_no = 103;

update Employee
set join_date = '1994-10-13'
where Emp_no = 104;

update Employee
set join_date = '2025-04-30'
where Emp_no = 105;

select * from Employee;

select * from Employee where join_date > '1981-01-01' order by Designation asc;

alter table Employee
add column Experience int;

update Employee
set Experience = 12
where Emp_no = 101;

update Employee
set Experience = 02
where Emp_no = 102;

update Employee
set Experience = 15
where Emp_no = 103;

update Employee
set Experience = 10
where Emp_no = 104;

update Employee
set Experience = 07
where Emp_no = 105;

select Experience,Salary/30 as Daily_Salary from Employee;

select * from employee;

select * from Employee where Designation in('Clerk','Analyst');

select * from Employee where join_date in('01-05-1981','03-12-1981','17-12-1981','19-01-1980');

select * from Employee where Dept_no in(10,20);

select E_name from Employee where E_name like 'S%';

select max(salary) as highest_salary from Employee;

select E_name,left(E_name,5) as first_five_characters from Employee where E_name like 'H%';

select * from Employee where Designation not in('President','Manager') order by salary asc;

select min(salary),max(salary),experience from employee group by experience;

select sum(salary) as total_salary from Employee;

select avg(salary) from Employee where Dept_name = 'IT';

select distinct salary from employee;

drop database db;