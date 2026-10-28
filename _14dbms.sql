CREATE database User;

SHOW databases;

USE User;

CREATE TABLE customer(CustID INT,Custname VARCHAR(15),
 City VARCHAR(10), Product VARCHAR(15),Price INT);
 
 DESC customer;
 
INSERT INTO customer VALUES(101,'Rahul','Pune','laptop',50000);
INSERT INTO customer VALUES(102,'Raju','Mumbai','Mobile',25000);
INSERT INTO customer VALUES(103,'Mohit','Akola','Charger',500);

SELECT * FROM customer;

ALTER TABLE customer ADD PRIMARY KEY(CustID);

SELECT CustID,Custname,City FROM customer;

SELECT * FROM customer WHERE CustID = 103;
 
SELECT * FROM customer WHERE CustID = 101 OR CustID = 103;

CREATE TABLE CloneTable AS SELECT * FROM customer;

SELECT * FROM CloneTable;

DROP TABLE CloneTable;

/* Where Clause */

SELECT Custname, City FROM customer;

SELECT Custname, City FROM customer WHERE CustID = 101;

SELECT Custname, Product, Price FROM customer WHERE Price > 15000;

SELECT * FROM customer WHERE CustID = 101;

SELECT * FROM customer WHERE City = 'Pune';

/* Sorting data using Order By Single Column */

SELECT * FROM customer ORDER BY Price;

SELECT * FROM customer ORDER BY Price DESC;

/* Sorting data Order By multiple columns */

SELECT * FROM customer ORDER BY City, Price;

SELECT * FROM customer ORDER BY City DESC, Price ASC;

/* Single-row functions */
/* Case Conversion functions */

SELECT upper(Custname), lower(Product) FROM customer
WHERE CustID < 103;

SELECT upper(Custname), lower(Product) FROM customer;

ALTER TABLE customer
ADD Lastname VARCHAR(10);

SELECT * FROM customer;

UPDATE customer SET Lastname = 'Verma' WHERE CustID = 101;

UPDATE customer SET Lastname = 'Sharma' WHERE CustID = 102;
 
/* Concat two Columns */

SELECT concat(Custname,' ',Lastname) AS FullName FROM customer;

/* Use of SUBSTR and INSERT Functions */

SELECT * FROM customer;

SELECT substr(Custname,1,1) FROM customer;

SELECT substr(Custname,0,1) FROM customer;

SELECT substr(Custname,1,5) FROM customer;

SELECT substr(Custname,1,4) FROM customer;

SELECT substr(Custname,3,6) FROM customer;

/* Substring query */

SELECT instr(Custname, 'a') as position FROM customer;

SELECT instr(Custname, 'm') as position FROM customer;

SELECT instr(Custname, 'r') as position FROM customer;

SELECT instr(City, 'a') as position FROM customer;

/* Inserting query */

SELECT substr(Custname,1,2),
instr(Custname, 'a') FROM customer;

SELECT substr(Custname,1,2) as Substring,
instr(Custname, 'a') as instring FROM customer;

SELECT substr(Custname,1,3), instr(Custname,'a')
FROM customer WHERE CustID < 103;

/* Date & Time Function */

select now();

select now() as current_datetime;
