CREATE DATABASE IF NOT EXISTS CollegeDB;
USE CollegeDB;

DROP TABLE IF EXISTS Student;
DROP TABLE IF EXISTS Employee;
DROP TABLE IF EXISTS Product;

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

CREATE TABLE Product (
    Product_ID INT PRIMARY KEY,
    Product_Name VARCHAR(50),
    Price DECIMAL(10,2),
    Quantity INT
);

INSERT INTO Student VALUES
(1, 'Aman', 19, 'BTech', 'Meerut'),
(2, 'Priya', 20, 'BTech', 'Delhi'),
(3, 'Rahul', 21, 'MCA', 'Meerut'),
(4, 'Sneha', 22, 'MBA', 'Noida'),
(5, 'Karan', NULL, 'BTech', NULL);

INSERT INTO Employee VALUES
(101, 'Suresh', 'IT', 55000),
(102, 'Anita', 'HR', 42000),
(103, 'Vikram', 'IT', 60000),
(104, 'Pooja', 'Finance', 48000);

INSERT INTO Product VALUES
(201, 'Laptop', 55000, 10),
(202, 'Mouse', 500, 40);

-- ============== ARITHMETIC OPERATORS ==============

SELECT 15 + 10 AS Addition_Result;

SELECT 15 - 10 AS Subtraction_Result;

SELECT 15 * 10 AS Multiplication_Result;

SELECT 15 / 10 AS Division_Result;

SELECT Product_Name, Price * Quantity AS Total_Amount FROM Product;

-- ============== LOGICAL OPERATORS ==============

SELECT * FROM Student WHERE Course = 'BTech' AND City = 'Meerut';

SELECT * FROM Student WHERE Course = 'MCA' OR Course = 'MBA';

SELECT * FROM Student WHERE NOT Course = 'BTech';

SELECT * FROM Student WHERE Course = 'BTech' AND City = 'Delhi';

SELECT * FROM Employee WHERE Department = 'IT' OR Department = 'HR';

-- ============== COMPARISON OPERATORS ==============

SELECT * FROM Employee WHERE Department = 'IT';

SELECT * FROM Employee WHERE Salary > 50000;

SELECT * FROM Employee WHERE Salary < 50000;

SELECT * FROM Employee WHERE Salary >= 48000 AND Salary <= 60000;

SELECT * FROM Employee WHERE Department <> 'IT';

-- ============== SPECIAL OPERATORS ==============

SELECT * FROM Employee WHERE Salary BETWEEN 45000 AND 60000;

SELECT * FROM Student WHERE City IN ('Meerut', 'Delhi');

SELECT * FROM Student WHERE City NOT IN ('Meerut', 'Delhi');

SELECT * FROM Student WHERE Name LIKE 'A%';

SELECT * FROM Student WHERE City IS NULL;
SELECT * FROM Student WHERE City IS NOT NULL;

-- ============== SET OPERATIONS ==============

SELECT Name AS Person_Name, City FROM Student
UNION
SELECT Emp_Name AS Person_Name, Department AS City FROM Employee;

SELECT Name AS Person_Name, City FROM Student
UNION ALL
SELECT Emp_Name AS Person_Name, Department AS City FROM Employee;

SELECT City FROM Student
INTERSECT
SELECT Department FROM Employee;

SELECT City FROM Student
EXCEPT
SELECT Department FROM Employee;

SELECT Product_Name, Price, Quantity, (Price * Quantity) AS Total_Value
FROM Product
WHERE Price > 400
  AND Quantity BETWEEN 5 AND 50
  AND Product_Name LIKE '%o%';