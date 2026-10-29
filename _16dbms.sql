create database dbms;

use dbms;

CREATE TABLE customer(CustID INT,Custname VARCHAR(15),
 City VARCHAR(10), Product VARCHAR(15),Price INT);
 
 INSERT INTO customer VALUES(101,'Rahul','Pune','laptop',50000);
INSERT INTO customer VALUES(102,'Raju','Mumbai','Mobile',25000);
INSERT INTO customer VALUES(103,'Mohit','Akola','Charger',500);

 
/* Date & time function */

select now();

select now() as current_datetime;



alter table customer add column date date;

select * from customer;

update customer set date = '2024/2/20' where custID=1;

update customer set date = '2024/2/20' where custID=2;

update customer set date = '2024/2/20' where custID=3;

rollback;


