create database ADBMS;

use ADBMS;

create table Employee(emp_id int primary key,emp_name varchar(20),city varchar(20),bdate date);

insert into Employee
(emp_id,emp_name,city,bdate)
values
(1,'viraj','pune','2000-01-15'),
(2,'Raj','mumbai','1995-10-10'),
(3,'yash','amravati','2002-05-21'),
(4,'sanket','akola','2001-07-30'),
(5,'ayush','delhi','2004-09-05'); 

create table Investor(inv_no int primary key,inv_name varchar(20),inv_date date,inv_amt decimal(10,2),emp_id int);

insert into Investor values(101,'nikhil','1997-01-30',10000,1);
insert into Investor values(102,'tejas','2003-11-10',20000,2);
insert into Investor values(103,'atharv','1990-09-20',35000,3);
insert into Investor values(104,'harish','1997-12-05',15000,4);
insert into Investor values(105,'abhi','2002-06-17',45000,5);

select * from Employee;

select * from Investor;

alter table Employee
add column age int check (age <= 50);

alter table Employee
add column salary decimal(10,2) check (salary >= 10000);

alter table Investor
add column age int;

alter table Investor
modify column inv_name text;

alter table Employee
rename column emp_id to e_id;

update Employee
set city = 'nagpur'
where e_id = 4;

delete from Investor
where inv_no = 104;

alter table Investor 
drop column age;

alter table Employee
drop check employee_chk_1;

show create table Employee;

describe Employee;

SELECT CONSTRAINT_NAME
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
WHERE TABLE_SCHEMA = DATABASE()
  AND TABLE_NAME = 'Employee'
  AND CONSTRAINT_TYPE = 'CHECK';
  
alter table Investor
add constraint fk_investor_employee
foreign key (emp_id)
references Employee(e_id);  

select inv_no,inv_name,inv_date,inv_amt from Investor;

alter table Investor
rename to Inv;

truncate table Inv;

drop table Inv;

drop table Employee;


  