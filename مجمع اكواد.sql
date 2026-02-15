
-- انشاء قاعدة بيانات جديدة --
create
database newfinance;

--الذهاب الي الداتا بيس اللي عايز اشتغل عليها --

use newfinance
go

DROP TABLE PRODUCTS
-- انشاء جدول الاصناف --

create table products(
ID INT NOT NULL,
PRODUCTNAME NVARCHAR (100) NOT NULL,
PRICE DECIMAL (10,2) NOT NULL,
DEP NVARCHAR (100)
)



-- تعبئة الجداول --

INSERT INTO products (ID,PRODUCTNAME,PRICE,DEP)
VALUES (101,N'سامكسون',120,N'الطوارئ'),
       (102,N'ديكسا ميثازون',115,N'الطوارئ'),
       (105,N'انيوفيال',350,N'الجلدية'),
       (110,N'حشو عصب',185,N'الاسنان'),
       (150,N'جوفيديرم',850,N'الجلدية'),
       (130,N'فيسوكورت',50,N'الليزر')

-- عرض جميع بيانات الجدول --

SELECT *
FROM products

drop table products

create table employee(
ID INT NOT NULL IDENTITY (1,1) PRIMARY KEY,
EMP_NAME NVARCHAR (100) ,
JOP_TITLE NVARCHAR (100) ,
SALARY DECIMAL (10,2)
)

INSERT INTO employee (EMP_NAME,JOP_TITLE,SALARY)
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

 INSERT INTO employee (EMP_NAME,JOP_TITLE,SALARY)
VALUES (N' اسيل احمد ',N'جلدية',23000)

CREATE TABLE SERVICES (
ID INT NOT NULL IDENTITY (101,1) PRIMARY KEY,
SER_NAME  NVARCHAR (100),
PRICE  DECIMAL (10,2),
CATEGORY NVARCHAR (100)
)

INSERT INTO SERVICES (SER_NAME,PRICE,CATEGORY)
VALUES  (N'كشف عام ',60,N'كشوفات'),
        (N'مضاد 1 جم',80,N'طواري'),
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

CREATE TABLE Daily_Operations(
ORDERID INT NOT NULL IDENTITY (1001,1),
EMP_ID  INT NOT NULL,
SER_ID INT NOT NULL,
DATE_TIME DATETIME DEFAULT GETDATE () ,
FOREIGN KEY (EMP_ID) REFERENCES employee (id),
FOREIGN KEY (SER_ID) REFERENCES SERVICES (ID)
)

INSERT INTO Daily_Operations(EMP_ID,SER_ID)
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
       FROM employee

       SELECT *
       FROM SERVICES;

CREATE VIEW Doctor_Revenue_Report AS
SELECT
       employee.EMP_NAME  AS 'Nاسم الدكتور',
       SUM (SERVICES.PRICE)  AS 'Nاجمالي الفلوس'
       FROM employee
       INNER JOIN Daily_Operations ON employee.ID=Daily_Operations.EMP_ID
       INNER JOIN SERVICES ON Daily_Operations.SER_ID=SERVICES.ID
       GROUP BY employee.EMP_NAME
       ORDER BY SUM (SERVICES.PRICE) DESC

SELECT 
       SERVICES.SER_NAME AS  'اسم الخدمة',
       COUNT (Daily_Operations.SER_ID) AS  'عدد المرات'
       FROM SERVICES 
       JOIN Daily_Operations ON SERVICES.ID=Daily_Operations.SER_ID
       GROUP BY SERVICES.SER_NAME
       ORDER BY COUNT (Daily_Operations.SER_ID) DESC

SELECT TOP 1
        SERVICES.SER_NAME AS  'اسم الخدمة',
        SUM (SERVICES.PRICE)  AS 'اجمالي الفلوس',
        COUNT (Daily_Operations.SER_ID) AS  'عدد المرات'
FROM SERVICES
JOIN Daily_Operations ON SERVICES.ID=Daily_Operations.SER_ID 
GROUP BY SERVICES.SER_NAME
ORDER BY SUM (SERVICES.PRICE) DESC

SELECT * FROM SERVICES
WHERE PRICE BETWEEN 150 AND 400

SELECT * FROM employee
WHERE EMP_NAME LIKE N'%ح%'

UPDATE employee
SET SALARY = 90000
WHERE ID =5

SELECT 
        SERVICES.SER_NAME AS  'اسم الخدمة',
        SUM (SERVICES.PRICE)  AS 'اجمالي الفلوس',
        COUNT (Daily_Operations.SER_ID) AS  'عدد المرات'
FROM SERVICES
JOIN Daily_Operations ON SERVICES.ID=Daily_Operations.SER_ID 
GROUP BY SERVICES.SER_NAME
HAVING SUM (SERVICES.PRICE) BETWEEN 500 AND 2000
ORDER BY SUM (SERVICES.PRICE) DESC

SELECT MAX(SALARY) AS 'أعلى مرتب', MIN(SALARY) AS 'أقل مرتب' 
FROM employee

SELECT employee.EMP_NAME, SUM(SERVICES.PRICE) AS 'إجمالي الدخل'
FROM employee
JOIN Daily_Operations ON employee.ID = Daily_Operations.EMP_ID
JOIN SERVICES ON Daily_Operations.SER_ID = SERVICES.ID
GROUP BY employee.EMP_NAME
HAVING SUM(SERVICES.PRICE) = (
    -- الاستعلام الفرعي: بيطلع رقم واحد بس وهو (أعلى دخل)
    SELECT MAX(Total) 
    FROM (SELECT SUM(S.PRICE) AS Total 
          FROM Daily_Operations D 
          JOIN SERVICES S ON D.SER_ID = S.ID 
          GROUP BY D.EMP_ID) AS TempTable
)