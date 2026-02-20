/* Hospital Management System Database
Developed by: Ahmed Atia
Date: Feb 2026
*/﻿
-- Create New DataBase --
create
database newfinance;

--Use New DataBase --

use newfinance
go
       
--Create Employees table to store doctor and staff details--
       
create table Employees(
ID INT NOT NULL IDENTITY (1,1) PRIMARY KEY,
EmployeeName NVARCHAR (100) ,
JobTitle NVARCHAR (100) ,
SALARY DECIMAL (10,2)
)

INSERT INTO Employees (EmployeeName,JobTitle,SALARY)
VALUES (N' احمد عطية ',N'طب عام',15000),
       (N'محمود محمد ',N'باطنة ',28000),
       (N'احمد المنسي',N'انف واذن ',19000),
       (N'عمرو السالك ',N'مسالك بولية',11000),
       (N'وليد محمود',N'طب عام',80000),
       (N'عماد ربيع',N'اطفال ',21000),
       (N'شادي شريف',N'جراحة',15000),
       (N'نيللي عبد الرحمن ',N'عظام',13500),
       (N'رامي الجزار ',N'باطنة',18500),
       (N'شريف ربيع',N'اطفال ',17250)

 INSERT INTO Employees (EmployeeName,JobTitle,SALARY)
VALUES (N' اسيل احمد ',N'جلدية',23000)

--Create Services table to catalog medical procedures and pricing--
       
CREATE TABLE Services (
ID INT NOT NULL IDENTITY (101,1) PRIMARY KEY,
ServiceName  NVARCHAR (100),
PRICE  DECIMAL (10,2),
Category NVARCHAR (100)
)

INSERT INTO Services (ServiceName,PRICE,Category)
VALUES  (N'كشف عام ',60,N'كشوفات'),
        (N'مضاد 1 جم',80,N'طوارئ'),
        (N'مضاد 1/2 جرام',65,N'طوارئ'),
        (N'ساميكسون',90,N'طوارئ'),
        (N'تنظيف اذن ',115,N'انف واذن'),
        (N'رسم قلب',180,N'خدمات مسانده'),
        (N'اشعة اكس راي ',100,N'خدمات اشعة'),
        (N'جبس معصم ',300,N'خدمات عظام'),
        (N'تنظيف جرح',50,N'جراحة'),
        (N'خياطة 5 غرزة',500,N'جراحة'),
        (N'علاج اذن ',80,N'انف واذن'),
        (N'ليزر',300,N'جلدية'),
        (N'تشقير',150,N'جلدية'),
        (N'مسالك 1',80,N'مسالك'),
        (N'مسالك 2',450,N'مسالك')

--Create DailyOperations table as a transaction log linking staff to services--
       
CREATE TABLE DailyOperations(
OrderID INT NOT NULL IDENTITY (1001,1),
EmployeeID  INT NOT NULL,
ServiceID INT NOT NULL,
TransactionDate DATETIME DEFAULT GETDATE () ,
FOREIGN KEY (EmployeeID) REFERENCES Employees (id),
FOREIGN KEY (ServiceID) REFERENCES Services (ID)
)

INSERT INTO DailyOperations(EmployeeID,ServiceID)
VALUES (1,101),
       (1,101),
       (1,101),
       (1,101),
       (1,101),
       (1,101),
       (1,101),
       (1,101),
       (1,102),
       (1,102),
       (1,102),
       (1,102),
       (1,102),
       (1,102),
       (1,102),
       (1,102),
       (1,102),
       (1,102),
       (1,103),
       (1,103),
       (1,103),
       (1,103),
       (1,103),
       (1,103),
       (1,103),
       (1,104),
       (1,104),
       (1,104),
       (1,104), 
       (1,104),
       (2,101),
       (2,101),
       (2,101),
       (2,101),
       (2,101),
       (2,101),
       (2,101),
       (2,101),
       (2,101),
       (2,101),
       (2,101),
       (2,101),
       (2,101),
       (2,101),
       (2,101),
       (2,106),
       (2,106),
       (2,106),
       (2,106),
       (2,107),
       (2,107),
       (2,102),
       (2,102),
       (2,102),
       (2,102),
       (2,103),
       (2,103),
       (2,103),
       (2,103),
       (2,104),
       (3,101),
       (3,101),
       (3,101),
       (3,101),
       (3,101),
       (3,101),
       (3,101),
       (3,101),
       (3,101),
       (3,101),
       (3,105),
       (3,105),
       (3,105),
       (3,105),
       (3,105),
       (3,111),
       (3,111),
       (3,111),
       (3,111),
       (3,111),
       (3,111),
       (3,111),
       (3,111),
       (4,101),
       (4,101),
       (4,101),
       (4,101),
       (4,101),
       (4,101),
       (4,101),
       (4,101),
       (4,101),
       (4,101),
       (4,101),
       (4,101),
       (4,101),
       (4,101),
       (4,101),
       (4,114),
       (4,114),
       (4,114),
       (4,114),
       (4,114),
       (4,114),
       (4,114),
       (4,114),
       (4,114),
       (4,114),
       (4,115),
       (4,115),
       (4,115),
       (4,115),
       (4,115),
       (5,101),
       (5,101),
       (5,101),
       (5,101),
       (5,101),
       (5,101),
       (5,101),
       (5,101),
       (5,101),
       (5,101),
       (5,102),
       (5,102),
       (5,102),
       (5,102),
       (5,102),
       (5,102),
       (5,102),
       (5,103),
       (5,103),
       (5,103),
       (5,103),
       (5,103),
       (5,104),
       (5,104),
       (5,104), 
       (5,104),
       (6,101),
       (6,101),
       (6,101),
       (6,101),
       (6,101),
       (6,101),
       (6,101),
       (6,101),
       (6,101),
       (6,101),
       (6,101),
       (6,101),
       (6,101),
       (6,101),
       (6,101),
       (6,102),
       (6,102),
       (6,102),
       (6,102),
       (6,102),
       (6,102),
       (6,102),
       (6,102),
       (6,102),
       (6,102),
       (6,102),
       (6,102),
       (6,102),
       (6,102),
       (6,102),
       (6,103),
       (6,103),
       (6,103),
       (6,103),
       (6,103),
       (6,103),
       (6,103),
       (6,103),
       (6,103),
       (6,103),
       (6,104),
       (6,104),
       (6,104),
       (6,104),
       (6,104),
       (6,105),
       (6,105),
       (6,105),
       (6,107),
       (6,107),
       (6,107),
       (6,107),
       (6,107),
       (6,107),
       (6,107),
       (8,101),
       (8,101),
       (8,101),
       (8,101),
       (8,101),
       (8,101),
       (8,101),
       (8,101),
       (8,101),
       (8,101),
       (8,101),
       (8,101),
       (8,101),
       (8,101),
       (8,101),
       (8,101),
       (8,107),
       (8,107),
       (8,107),
       (8,107),
       (8,107),
       (8,107),
       (8,107),
       (8,107),
       (8,107),
       (8,107),
       (8,108),
       (8,108),
       (8,108),
       (8,108),
       (8,108),
       (8,108),
       (7,101),
       (7,101),
       (7,101),
       (7,101),
       (7,101),
       (7,101),
       (7,101),
       (7,101),
       (7,101),
       (7,101),
       (7,107),
       (7,107),
       (7,107),
       (7,107),
       (7,107),
       (7,107),
       (7,107),
       (7,107),
       (7,107),
       (7,107),
       (7,108),
       (7,108),
       (7,108),
       (7,108),
       (7,108),
       (9,101),
       (9,101),
       (9,101),
       (9,101),
       (9,101),
       (9,101),
       (9,101),
       (9,101),
       (9,101),
       (9,101),
       (9,101),
       (9,101),
       (9,101),
       (9,101),
       (9,101),
       (9,101),
       (9,101),
       (9,101),
       (9,101),
       (9,101),
       (9,102),
       (9,102),
       (9,102),
       (9,102),
       (9,102),
       (9,102),
       (9,102),
       (9,102),
       (9,102),
       (9,102),
       (9,103),
       (9,103),
       (9,103),
       (9,103),
       (9,103),
       (9,103),
       (9,103),
       (9,103),
       (9,103),
       (9,103),
       (9,103),
       (9,103),
       (9,104),
       (9,104),
       (9,104),
       (9,104),
       (9,104),
       (9,104),
       (9,104),
       (9,104),
       (9,106),
       (9,106),
       (9,106),
       (9,106),
       (9,107),
       (9,107),
       (9,107),
       (9,107),
       (9,107),
       (9,107),
       (9,107),
       (9,107),
       (10,101),
       (10,101),
       (10,101),
       (10,101),
       (10,101),
       (10,101),
       (10,101),
       (10,101),
       (10,101),
       (10,101),
       (10,101),
       (10,101),
       (10,101),
       (10,101),
       (10,101),
       (10,101),
       (10,101),
       (10,101),
       (10,101),
       (10,101),
       (10,101),
       (10,101),
       (10,101),
       (10,101),
       (10,101),
       (10,102),
       (10,102),
       (10,102),
       (10,102),
       (10,102),
       (10,102),
       (10,102),
       (10,102),
       (10,103),
       (10,103),
       (10,103),
       (10,103),
       (10,103),
       (10,103),
       (10,103),
       (10,103),
       (10,103),
       (10,103),
       (10,103),
       (10,103),
       (10,104),
       (10,104),
       (10,104),
       (10,104),
       (10,104),
       (10,104),
       (10,104),
       (10,107),
       (10,107),
       (10,107),
       (10,107),
       (10,107),
       (10,107),
       (10,107),
       (10,107)
       
       SELECT *
       FROM Employees

       SELECT *
       FROM Services;

--View to calculate total revenue generated by each doctor--
       
CREATE VIEW Doctor_Revenue_Report AS
SELECT
       Employees.EmployeeName  AS  N'اسم الدكتور',
       SUM (Services.PRICE)  AS  N'اجمالي الفلوس'
       FROM Employees
       INNER JOIN DailyOperations ON Employees.ID=DailyOperations.EmployeeID
       INNER JOIN Services ON DailyOperations.ServiceID=Services.ID
       GROUP BY Employees.EmployeeName
 
 -- Query to find the most frequently requested services--

SELECT 
       Services.ServiceName AS  'اسم الخدمة',
       COUNT (DailyOperations.ServiceID) AS  'عدد المرات'
       FROM Services 
       JOIN DailyOperations ON Services.ID=DailyOperations.ServiceID
       GROUP BY Services.ServiceName
       ORDER BY COUNT (DailyOperations.ServiceID) DESC

-- Advanced Query: Identify the doctor with the highest total income using a Subquery--

SELECT TOP 1
        Services.ServiceName AS  'اسم الخدمة',
        SUM (Services.PRICE)  AS 'اجمالي الفلوس',
        COUNT (DailyOperations.ServiceID) AS  'عدد المرات'
FROM Services
JOIN DailyOperations ON Services.ID=DailyOperations.ServiceID 
GROUP BY Services.ServiceName
ORDER BY SUM (Services.PRICE) DESC
       
-- Filter services by price range--
       
SELECT * FROM Services
WHERE PRICE BETWEEN 150 AND 400
       
-- Search for employees by name pattern--
       
SELECT * FROM Employees
WHERE EmployeeName LIKE N'%ح%'

-- Update employee salary record--

UPDATE Employees
SET SALARY = 90000
WHERE ID =5

-- Analyze services with total revenue between 500 and 2000--

SELECT 
        Services.ServiceName AS  'اسم الخدمة',
        SUM (Services.PRICE)  AS 'اجمالي الفلوس',
        COUNT (DailyOperations.ServiceID) AS  'عدد المرات'
FROM Services
JOIN DailyOperations ON Services.ID=DailyOperations.ServiceID 
GROUP BY Services.ServiceName
HAVING SUM (Services.PRICE) BETWEEN 500 AND 2000
ORDER BY SUM (Services.PRICE) DESC

-- Calculate maximum and minimum salaries in the hospital--

SELECT MAX(SALARY) AS 'أعلى مرتب', MIN(SALARY) AS 'أقل مرتب' 
FROM Employees

-- Calculate the highest total revenue among all employees --

WITH EmployeeRevenue AS (
    SELECT 
        Employees.EmployeeName, 
        SUM(Services.PRICE) AS TotalIncome
    FROM Employees
    JOIN DailyOperations ON Employees.ID = DailyOperations.EmployeeID
    JOIN Services ON DailyOperations.ServiceID = Services.ID
    GROUP BY Employees.EmployeeName
)
SELECT EmployeeName, TotalIncome
FROM EmployeeRevenue
WHERE TotalIncome = (SELECT MAX(TotalIncome) FROM EmployeeRevenue);

-- Calculate the highest total revenue value from the staff performance list--

SELECT MAX(Total) 
    FROM (SELECT SUM(S.PRICE) AS Total 
          FROM DailyOperations D 
          JOIN Services S ON D.ServiceID = S.ID 
          GROUP BY D.EmployeeID
       ) AS TempTable

