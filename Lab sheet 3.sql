CREATE DATABASE IF NOT EXISTS CollegeDB;
USE CollegeDB;

DROP TABLE IF EXISTS Student;
DROP TABLE IF EXISTS Employee;

CREATE TABLE Student (
    Student_ID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT,
    Course VARCHAR(50),
    City VARCHAR(50)
);

CREATE TABLE Employee (
    Emp_ID INT PRIMARY KEY,
    Emp_Name VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10,2),
    Joining_Date DATE
);

INSERT INTO Student VALUES
(1, 'Aman', 'Sharma', 19, 'BTech', 'Meerut'),
(2, 'Priya', 'Verma', 20, 'BTech', 'Delhi'),
(3, 'Rahul', 'Gupta', 21, 'MCA', 'Meerut');

INSERT INTO Employee VALUES
(101, 'Suresh Kumar', 'IT', 55432.75, '2021-03-15'),
(102, 'Anita Rao', 'HR', 41890.40, '2020-07-01'),
(103, 'Vikram Singh', 'IT', 60250.10, '2022-01-20');

-- ============== A. NUMBER FUNCTIONS ==============

SELECT ABS(-45) AS Absolute_Value;

SELECT ROUND(55432.756, 2) AS Rounded_Value;

SELECT CEIL(55432.10) AS Ceiling_Value, FLOOR(55432.90) AS Floor_Value;

SELECT MOD(17, 5) AS Remainder;

SELECT Emp_Name, ROUND(Salary) AS Rounded_Salary FROM Employee;

-- ============== B. AGGREGATE FUNCTIONS ==============

SELECT COUNT(*) AS Total_Students FROM Student;

SELECT SUM(Salary) AS Total_Salary FROM Employee;

SELECT AVG(Salary) AS Average_Salary FROM Employee;

SELECT MAX(Salary) AS Highest_Salary FROM Employee;

SELECT MIN(Salary) AS Lowest_Salary FROM Employee;

-- ============== C. CHARACTER FUNCTIONS ==============

SELECT UPPER(FirstName) AS Upper_Name FROM Student;

SELECT LOWER(FirstName) AS Lower_Name FROM Student;

SELECT FirstName, LENGTH(FirstName) AS Name_Length FROM Student;

SELECT CONCAT(FirstName, ' ', LastName) AS Full_Name FROM Student;

SELECT FirstName, SUBSTRING(FirstName, 1, 3) AS First_Three_Chars FROM Student;

-- ============== D. CONVERSION FUNCTIONS ==============

SELECT CAST(12345 AS CHAR) AS Number_To_String;

SELECT CAST('12345' AS UNSIGNED) AS String_To_Number;

SELECT DATE_FORMAT(Joining_Date, '%d-%m-%Y') AS Formatted_Date FROM Employee;

SELECT CAST(Salary AS SIGNED) AS Salary_As_Integer FROM Employee;

SELECT CONVERT(Salary, SIGNED) AS Salary_Converted FROM Employee;

-- ============== E. DATE FUNCTIONS ==============

SELECT CURDATE() AS Current_Date;

SELECT Joining_Date,
       YEAR(Joining_Date)  AS Join_Year,
       MONTH(Joining_Date) AS Join_Month,
       DAY(Joining_Date)   AS Join_Day
FROM Employee;

SELECT DATEDIFF(CURDATE(), Joining_Date) AS Days_Since_Joining FROM Employee;

SELECT Joining_Date, DATE_ADD(Joining_Date, INTERVAL 30 DAY) AS Plus_30_Days FROM Employee;

SELECT Emp_Name, DATE_FORMAT(Joining_Date, '%W, %d %M %Y') AS Joining_Date_Formatted
FROM Employee;