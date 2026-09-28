CREATE DATABASE IF NOT EXISTS CollegeDB;
USE CollegeDB;

DROP TABLE IF EXISTS Student;
DROP TABLE IF EXISTS Employee;
DROP TABLE IF EXISTS Department;
DROP TABLE IF EXISTS Product;
DROP TABLE IF EXISTS Customer;
DROP TABLE IF EXISTS Course;

CREATE TABLE Student (
    Student_ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Course VARCHAR(50),
    City VARCHAR(50)
);

CREATE TABLE Employee (
    Emp_ID INT PRIMARY KEY,
    Emp_Name VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10,2)
);

CREATE TABLE Department (
    Dept_ID INT PRIMARY KEY,
    Dept_Name VARCHAR(50),
    Location VARCHAR(50)
);

CREATE TABLE Product (
    Product_ID INT PRIMARY KEY,
    Product_Name VARCHAR(50),
    Price DECIMAL(10,2),
    Quantity INT
);

CREATE TABLE Customer (
    Customer_ID INT PRIMARY KEY,
    Customer_Name VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(15)
);

CREATE TABLE Course (
    Course_ID INT PRIMARY KEY,
    Course_Name VARCHAR(50),
    Duration VARCHAR(20),
    Fees DECIMAL(10,2)
);

INSERT INTO Student VALUES (1, 'Aman', 19, 'BTech', 'Meerut');
INSERT INTO Student VALUES (2, 'Priya', 20, 'BTech', 'Delhi');
INSERT INTO Student VALUES (3, 'Rahul', 21, 'MCA', 'Meerut');
INSERT INTO Student VALUES (4, 'Sneha', 19, 'BTech', 'Noida');
INSERT INTO Student VALUES (5, 'Karan', 22, 'MBA', 'Meerut');
INSERT INTO Student VALUES (6, 'Neha', 20, 'BTech', 'Ghaziabad');

INSERT INTO Student (Student_ID, Name, Age, Course, City) VALUES
(7, 'Ravi', 21, 'BTech', 'Meerut'),
(8, 'Simran', 20, 'MCA', 'Delhi'),
(9, 'Arjun', 22, 'BTech', 'Meerut');

INSERT INTO Employee VALUES
(101, 'Suresh', 'IT', 55000),
(102, 'Anita', 'HR', 42000),
(103, 'Vikram', 'IT', 60000),
(104, 'Pooja', 'Finance', 48000);

INSERT INTO Department VALUES
(1, 'IT', 'Block A'),
(2, 'HR', 'Block B'),
(3, 'Finance', 'Block C'),
(4, 'Marketing', 'Block D');

INSERT INTO Product VALUES
(201, 'Laptop', 55000, 10),
(202, 'Mouse', 500, 0),
(203, 'Keyboard', 1200, 25),
(204, 'Monitor', 8500, 5);

INSERT INTO Customer VALUES
(301, 'Rohit', 'rohit@mail.com', '9876500001'),
(302, 'Sana', 'sana@mail.com', '9876500002');

INSERT INTO Course VALUES
(401, 'BTech', '4 Years', 400000),
(402, 'MCA', '2 Years', 200000),
(403, 'MBA', '2 Years', 300000);

INSERT INTO Student (Student_ID, Name, Age, Course, City)
VALUES (10, 'Farhan', 20, 'BTech', 'Meerut');

INSERT INTO Student (Student_ID, Name) VALUES (11, 'Meera');

UPDATE Student SET City = 'Delhi' WHERE Student_ID = 1;

UPDATE Employee SET Salary = 65000 WHERE Emp_ID = 101;

UPDATE Employee SET Salary = Salary * 1.10;

UPDATE Product SET Price = Price * 1.05;

UPDATE Student SET Course = 'MCA' WHERE Student_ID = 2;

UPDATE Employee SET Department = 'Marketing' WHERE Emp_ID = 104;

UPDATE Student SET City = 'Delhi' WHERE City = 'Meerut';

UPDATE Course SET Fees = 210000 WHERE Course_ID = 402;

UPDATE Student SET Age = 23, City = 'Noida' WHERE Student_ID = 5;

DELETE FROM Student WHERE Student_ID = 11;

DELETE FROM Student WHERE City = 'Ghaziabad';

DELETE FROM Employee WHERE Salary < 45000;

DELETE FROM Product WHERE Quantity = 0;

DELETE FROM Student WHERE Course = 'BTech' AND City = 'Delhi';

SELECT * FROM Student;                                           

INSERT INTO Student VALUES (12, 'Yash', 20, 'BTech', 'Meerut');
SELECT * FROM Student;                                           

UPDATE Student SET Age = 21 WHERE Student_ID = 12;
SELECT * FROM Student;                                           

DELETE FROM Student WHERE Student_ID = 12;
SELECT * FROM Student;