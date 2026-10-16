CREATE TABLE Students (
    Student_ID INT,
    Name VARCHAR(50),
    Age INT,
    Course VARCHAR(50),
    Marks INT
);

SELECT * FROM Students;

SELECT Name, Course FROM Students;

INSERT INTO Students
    (Student_ID, Name, Age, Course, Marks)
VALUES
    (1, 'Vedang', 21, 'MCA', 80);
    
update Students
set Age = 21
WHERE Student_ID = 1;

delete from Students
where Student_ID = 1;

