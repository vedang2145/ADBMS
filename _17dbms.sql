drop database organization;

create database organization;

use organization;

/* Filtering data from tables*/

create table employee(Empid int not null primary key,
First_name varchar(15),Last_name varchar(15),
Gender char,Role varchar(15),Dept varchar(15),Manager_id varchar(10));

insert into employee values(1,'John','allen','M','Team Leader','Retail','M11');

insert into employee values(2,'Kim','Hen','F','Team Leader','Finance','M12');

insert into employee values(3,'Ravi','Kumar','M','Manager','Retail','M13');

insert into employee values(4,'Aruna','Patel','F','Manager','Finance','M14');

insert into employee values(5,'Ayush','Joshi','M','President','HR','M15');

select * from employee;

/*Distinct Keyword*/

select distinct Dept from employee order by Dept;

select distinct Role from employee order by Role;

/* AND Oprator to filter data with WHERE clause */

select * from employee where role='president' and dept='HR';

select * from employee where role='president' and dept='Retail';

/* OR Operator */

select * from employee where role='Manager' or role='Team Leader';

select * from employee where role='Manager' or role='HR';

/* IN Operator */

select * from employee where role in('President','Manager');

select * from employee where role in('TM','CEO');

/* Not In Operator */

select * from employee where role not in('President','Manager');

/* BETWEEN Operator */

alter table employee add column Experience int;

select * from employee;

update Employee set Experience=8 where Empid=1;

update Employee set Experience=5 where Empid=2;

update Employee set Experience=10 where Empid=3;

update Employee set Experience=6 where Empid=4;

update Employee set Experience=15 where Empid=5;

select * from employee where Experience between 6 and 10;

select * from employee where Experience= 5 or Experience = 10;

/* Like Operator */

select * from employee where last_name like 'P%';

select * from employee where first_name like 'K%';

/* Limit Operator */

select * from employee order by experience limit 3;

select * from employee where experience limit 2;

/* Is Null */

insert into employee values(7,'Asha','Joshi','F','President','HR',' ',null);

insert into employee values(8,'Yash','Sharma','M','Team Leader','Retail',' ',null);

insert into employee values(9,'Ram','Shaw','M','Manager','Finance',' ',null);

select * from employee where manager_id is null;

select * from employee where experience is null;

/* Aggregate Function */

select count(*) from employee;

select count(empid) from employee where dept='Finance';

select min(experience) from employee;

select max(experience) from employee;

select sum(experience) from employee;

select Avg(experience) as emp_exr from employee;

/* Group By Clause */

select DEPT,COUNT(*) as employee_count
FROM employee GROUP BY DEPT;

select role,count(*) as employee_count
from employee group by role;

-- Find the Gender wise employee count

select Gender,count(*) as employee_count
from employee group by Gender;

/* Having Clause */

select dept,sum(experience) as total_experience
from employee group by dept
having total_experience >= 10 and total_experience <= 20;

select role,sum(experience) as total_experience
from employee group by role
having total_experience >= 10 and total_experience <= 20;

/* Fetch department wise employee count using 
	having clause and sort the data */
    
select dept,count(empid)
from employee
group by dept
having count(empid) >= 2
order by count(empid);

select dept,sum(experience) as total_experience from employee group by dept
having total_experience >= 10 or total_experience <= 30;





