CREATE DATABASE CollegeDB;
USE CollegeDB;

CREATE TABLE Student (
    Student_ID INT,
    Name VARCHAR(50),
    Age INT,
    Course VARCHAR(50),
    City VARCHAR(50)
);

CREATE TABLE Employee (
    Emp_ID INT,
    Emp_Name VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10,2)
);

CREATE TABLE Department (
    Dept_ID INT,
    Dept_Name VARCHAR(50),
    Location VARCHAR(50)
);

CREATE TABLE Product (
    Product_ID INT,
    Product_Name VARCHAR(50),
    Price DECIMAL(10,2),
    Quantity INT
);

CREATE TABLE Customer (
    Customer_ID INT,
    Customer_Name VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(15)
);

CREATE TABLE Course (
    Course_ID INT,
    Course_Name VARCHAR(50),
    Duration VARCHAR(20),
    Fees DECIMAL(10,2)
);

CREATE TABLE Faculty (
    Faculty_ID INT,
    Faculty_Name VARCHAR(50),
    Subject VARCHAR(50),
    Salary DECIMAL(10,2)
);

CREATE TABLE Library (
    Book_ID INT,
    Book_Name VARCHAR(100),
    Author VARCHAR(50),
    Price DECIMAL(10,2)
);

DROP TABLE IF EXISTS Department;
CREATE TABLE Department (
    Dept_ID INT PRIMARY KEY,
    Dept_Name VARCHAR(50),
    Location VARCHAR(50)
);

DROP TABLE IF EXISTS Student;
CREATE TABLE Student (
    Student_ID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Age INT,
    Course VARCHAR(50),
    City VARCHAR(50)
);

DROP TABLE IF EXISTS Employee;
CREATE TABLE Employee (
    Emp_ID INT PRIMARY KEY,
    Emp_Name VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10,2),
    Email VARCHAR(100) UNIQUE
);

DROP TABLE IF EXISTS Product;
CREATE TABLE Product (
    Product_ID INT PRIMARY KEY,
    Product_Name VARCHAR(50),
    Price DECIMAL(10,2) CHECK (Price > 0),
    Quantity INT
);

ALTER TABLE Student ADD COLUMN Email VARCHAR(100);

ALTER TABLE Student ADD COLUMN Phone VARCHAR(15);

ALTER TABLE Student MODIFY COLUMN Name VARCHAR(100);

ALTER TABLE Student RENAME TO Student_Details;

ALTER TABLE Student_Details RENAME COLUMN City TO Address;

ALTER TABLE Employee ADD COLUMN Bonus DECIMAL(10,2);

ALTER TABLE Student_Details DROP COLUMN Phone;

ALTER TABLE Student_Details DROP COLUMN Email;

TRUNCATE TABLE Student_Details;

DROP TABLE Course;

DROP TABLE Customer;

DROP TABLE IF EXISTS Student_Details;
CREATE TABLE Student_Details (
    Student_ID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Age INT CHECK (Age > 0),
    Course VARCHAR(50),
    City VARCHAR(50),
    Email VARCHAR(100) UNIQUE
);



