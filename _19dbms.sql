create database colleges;

use colleges;

create table student(
	rollno int primary key,
    name varchar(10),
    marks int not null,
    grade varchar(5),
    city varchar(10)
);

create table dept(
	id int primary key,
    name varchar(20)
);


create table teacher(
	id int primary key,
    name varchar(20),
    dept_id int,
    foreign key (dept_id) references dept (id)
    on update cascade
    on delete cascade
);

drop table teacher;

insert into student
(rollno,full_name,marks,grade,city)
values
(101,'Anil',78,'c','Pune'),
(102,'bhumika',93,'A','Mumbai'),
(103,'chetan',85,'B','Mumbai'),
(104,'dhruv',96,'A','Delhi'),
(105,'emanuel',12,'F','Delhi'),
(106,'farah',82,'B','Delhi');

insert  into dept
(id,name)
values
(101,'English'),
(102,'IT');

update dept
set id = 103
where id = 102;

insert into teacher
(id,name,dept_id)
values
(101,'Adam',101),
(102,'Eve',102);

select * from student;

select distinct city from student;

select name,grade from student;

select * from student where marks > 80;

select * from student where city = 'Delhi';

select * from student where city = 'Mumbai' and marks > 90;

select * from student where city = 'Mumbai' or marks > 90;

select name from student where marks + 10 > 100;

select * from student where marks between 80 and 90;

select * from student where city in('Mumbai','delhi');

select * from student where city not in ('Mumbai','Delhi');

select * from student where marks > 80 limit 2;

select * from student order by marks desc limit 3;

select avg(marks) from student;

select max(marks) from student;

select city,name,count(rollno) from student group by city,name;

select city,count(name) from student group by city having max(marks) > 90;

select city 
from student 
where grade = 'A' 
group by city 
having max(marks) > 90 
order by city asc;

update student
set grade = 'O'
where grade = 'A';

update student
set marks = 82
where name = 'emanuel';

select * from student;

update student
set grade = 'B'
where marks between 80 and 90;

update student 
set marks = marks + 1;

update student
set marks = 12
where name = 'emanuel';

delete from student
where marks < 30;

truncate table student;

select * from student;

alter table student
add column age int;

select * from student;

alter table student
modify column age varchar(2);	

alter table student
drop column age;

alter table student 
add column age int not null default 19;

alter table student
change age stu_age int;

alter table student
drop column stu_age;

alter table student
change name full_name varchar(20);

select * from student;

delete from student 
where marks < 80;

alter table student
drop column grade;

select rollno from student where (rollno % 2 = 0);

select full_name,rollno from student where rollno in (select rollno from student where (rollno % 2 = 0));

select max(marks) from student where city = 'delhi';

