#Problem 0
#1
SELECT * FROM Students;

#Basic Queries

#2
SELECT * FROM Students WHERE Age > 30;
#3
SELECT Name FROM Students WHERE Gender='F' AND Age=30;
#4
SELECT Points FROM Students WHERE Name='Alex';
#5
INSERT INTO Students VALUES(7, 'Brandon', '21', 'M', 1000);
#6
UPDATE Students SET Points = 400 WHERE Name='Basma';
#7
UPDATE Students SET Points = 100 WHERE Name='Alex';

#Creating Tables
CREATE TABLE graduates(
    ID INTEGER  PRIMARY KEY AUTOINCREMENT,
    Name  TEXT NOT NULL UNIQUE,
    Age INTEGER,
	Gender TEXT,
	Points INTEGER,
	Graduation TEXT
);

#1
INSERT INTO graduates(Name, Age, Gender, Points) SELECT Name, Age, Gender, Points FROM Students WHERE Students.Name='Layal';
#2
UPDATE graduates SET Graduation='08-09-2018' WHERE Name='Layal';
#3
DELETE FROM students WHERE Name='Layal';

#Joins
#1
SELECT employees.name, employees.Company, companies.date FROM employees Inner join companies ON employees.Company=companies.name;
#2
SELECT employees.name FROM employees Inner join companies ON employees.Company=companies.name and companies.Date < 2000;
#3
SELECT companies.name FROM companies Inner join employees ON employees.Company=companies.name and employees.Role='Graphic Designer';

SELECT name from students where points=(SELECT MAX(points) from students);
SELECT AVG(points) from students;
SELECT COUNT(Name) from students where points=500;
SELECT Name from students WHERE Name GLOB '*s*';
SELECT name from students ORDER BY points DESC;