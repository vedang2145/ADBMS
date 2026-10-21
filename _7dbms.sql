CREATE DATABASE india;

USE india;

CREATE TABLE india(
	no INT PRIMARY KEY,
    state VARCHAR(20),
    city VARCHAR(20)
);

INSERT INTO india
VALUES
(1, "maharashtra", "pune"),
(2, "gujrat", "surat"),
(3, "rajastan", "jaipur");

SELECT * FROM india;

UPDATE india
SET city = "udaipur"
WHERE city = "jaipur";

ALTER TABLE india
ADD COLUMN contry VARCHAR(20); 

ALTER TABLE india
DROP COLUMN contry;

ALTER TABLE india
ADD COLUMN contry VARCHAR(20);

SELECT * FROM india;

TRUNCATE TABLE india;

ALTER TABLE india
DROP COLUMN contry;

ALTER TABLE india
CHANGE no srno INT;

DELETE FROM india
WHERE state = "rajastan";

ALTER TABLE india
DROP COLUMN state;
