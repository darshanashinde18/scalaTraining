CREATE DATABASE Darshana;

CREATE TABLE department
(
    dep_id 	Int	,
	dep_name	Varchar(20) ,
	dep_location	Varchar(15)
)

CREATE TABLE Employee
(emp_id	int,
	emp_name	Varchar(15),
	Gender	Char(1),
	job_name	varchar(20),
	manager_id	int,
	hire_date	Datetime,
	salary	Decimal(10,2),
	commission	Decimal(7,2),
	dep_id	int,
	PassportNumber	Varchar(20)
)

drop table Employees;
CREATE TABLE TelephoneDetails	
(
    ID	Int,
	Emp_ID	int,
	TelephoneNumber	Varchar(14)
)
create table Slab	
(
	Slab_ID	int	,
	min_sal	int	,
	max_sal	int	,
	[Desc]	Varchar(50)
)


drop TABLE department;

INSERT into department (dep_id, dep_name, dep_location) Values (1001, 'FINANCE' ,'Sydney')
INSERT into department Values (2001, 'AUDIT' ,'Melbourne'), (3001, 'MARKETING' ,'Perth'),(4001, 'PRODUCTION' ,'Brisbane')

Insert into Department Select 1001,'FINANCE','SYDNEY'
Insert into Department Select 2001,'AUDIT','MELBOURNE'
Insert into Department Select 3001,'MARKETING','PERTH'
Insert into Department Select 4001,'PRODUCTION','BRISBANE'
 
 select * from department;
 drop table department;

 SELECT 1001, 'FINANCE' ,'Sydney'

--  UPDATE Department SET dep_name = '', dep_location=''

--  UPDATE <TableName> SET <ColumnName>=<Value>


 Insert into Slab Select 1,800,1300,'Lower'
Insert into Slab Select 2,1301,1500,'middle'
Insert into Slab Select 3,1501,2100,'upperMiddle'
Insert into Slab Select 4,2101,3100,'High'
Insert into Slab Select 5,3101,9999,'UpperHigh'

select * from slab;

Insert into Employees Select 68319 ,'KAYLING','M','PRESIDENT',0,'11/18/1991',6000,NULL,1001,NULL
Insert into Employees Select 66928 ,'BLAZE','M','MANAGER',68319,'5/1/1991',2750,NULL,3001,NULL
Insert into Employees Select 67832 ,'CLARE','F','MANAGER',68319,'6/9/1991',2550,NULL,1001,NULL
Insert into Employees Select 65646 ,'JONAS','M','MANAGER',68319,'4/2/1991',2957,NULL,2001,NULL
Insert into Employees Select 64989 ,'ADELYN','M','SALESMAN',66928,'2/20/1991',1700,400,3001,NULL
Insert into Employees Select 65271 ,'WADE','M','SALESMAN',66928,'2/22/1991',1350,600,3001,NULL
Insert into Employees Select 66564 ,'MADDEN','M','SALESMAN',66928,'9/28/1991',1350,1500,3001,NULL
Insert into Employees Select 68454 ,'TUCKER','M','SALESMAN',66928,'9/8/1991',1600,NULL,3001,NULL
Insert into Employees Select 68736 ,'ADNRES','M','CLERK',67858,'5/23/1997',1200,NULL,2001,NULL
Insert into Employees Select 69000 ,'JULIUS','M','CLERK',66928,'12/3/1991',1050,NULL,3001,NULL
Insert into Employees Select 69324 ,'MARKER','M','CLERK',67832,'1/23/1992',1400,NULL,1001,NULL
Insert into Employees Select 67858 ,'SCARLET','F','ANALYST',65646,'4/19/1997',3100,NULL,2001,NULL
Insert into Employees Select 69062 ,'FRANK','M','ANALYST',65646,'12/3/1991',3100,NULL,2001,NULL
Insert into Employees Select 63679 ,'SANDRINE','F','CLERK',69062,'12/18/1990',900,NULL,2001,NULL

select * from Employee;

Insert into TelephoneDetails Select 5001,68319,1234
Insert into TelephoneDetails Select 5002,66928,4321
Insert into TelephoneDetails Select 5003,67832,1345
Insert into TelephoneDetails Select 5004,65646,8790
Insert into TelephoneDetails Select 5005,64989,4567
Insert into TelephoneDetails Select 5006,64989,4444
Insert into TelephoneDetails Select 5007,65271,8734
Insert into TelephoneDetails Select 5008,66564,2345
Insert into TelephoneDetails Select 5009,68454,6789
Insert into TelephoneDetails Select 5010,68736,8762
Insert into TelephoneDetails Select 5011,69000,3344
Insert into TelephoneDetails Select 5012,69324,3345
Insert into TelephoneDetails Select 5013,67858,8769
Insert into TelephoneDetails Select 5014,69062,5555
Insert into TelephoneDetails Select 5015,63679,9908

select * from TelephoneDetails;

select * from Employees AS e;

select emp_id , emp_name  AS EmpName from Employees;

select emp_id , emp_name from Employees As e;

Select * from Employees As e WHERE e.job_name='SALESMAN'

SELECT * from Employees As  e WHERE dep_id = 1001

SELECT job_name, SUM(salary) FROM Employees GROUP BY Job_Name

SELECT job_name,COUNT(*) From Employees AS e GRoup By job_name

SELECT job_name,COUNT(*) From Employees AS e GRoup By job_name HAVING COUNT(*)>=3


SELECT * from Employees Where Gender='M'

SELECT * FROM Employees AS e ORDER BY emp_name DESC

SELECT TOP 2 * FROM Employees AS e ORDER BY e.emp_name

SELECT TOP 3 * From slab As s Order By s.Slab_ID

SELECT * FROM department AS d Order by dep_name DESC

SELECT job_name, MIN(salary) FROM Employees GROUP BY Job_Name

SELECT dep_name,COUNT(*) From department AS d GRoup By dep_name

SELECT dep_name,COUNT(*) From department AS d GRoup By dep_name HAVING COUNT(*)>=1


CREATE TABLE [dbo].[Persons](
	[ID] [int] NULL,
	[LastName] [varchar](255) NULL,
	[FirstName] [varchar](255) NULL,
	[Age] [int] NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Orders] (
    [OrderID]     INT NOT NULL,
    [OrderNumber] INT NULL,
    [PersonID]    INT NULL,
    CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED ([OrderID] ASC)
);

Alter table Orders add abc int

Alter Table Orders Add Order1 INT

Alter table Orders Alter Column order1 varchar(10)

SELECT * from Orders As o

Alter Table orders Drop Column order1 

sp_help Orders
sp_rename 'Orders', 'xyz'

Select * from xyz


drop table Persons
xyz


CONSTRAINTS
NOT NULL
Unique KEY
primary KEY

sp_help Persons

ALTER TABLE PERSONS MODIFY AGE INT NOT NULL

Alter table Persons alter column age INT NOT NULL

DROP TABLE PERSONS

CREATE TABLE PERSONS
(
	ID INT UNIQUE,
	LastName VARCHAR(255),
	FirstName VARCHAR(255),
	Age INT,
	CONSTRAINT abc UNIQUE(ID)
);
CREATE TABLE PERSONS
(
	ID INT ,
	LastName VARCHAR(255) NOT NULL,
	FirstName VARCHAR(255) NOT NULL,
	Age INT,
	
);

ALTER TABLE PERSONS ADD CONSTRAINT UK_PERSONS_ID  UNIQUE(ID)

ALTER TABLE PERSONS ADD UNIQUE (LASTNAME)

ALTER TABLE PERSONS DROP CONSTRAINT UQ__PERSONS__7449F399A7081C5B

DROP TABLE PERSONS

CREATE TABLE PERSONS
(
	ID INT PRIMARY KEY,
	LastName VARCHAR(255) UNIQUE,
	FirstName VARCHAR(255) NOT NULL,
	Age INT,
	
); 
DROP TABLE PERSONS

CREATE TABLE PERSONS
(
	ID INT PRIMARY KEY,
	LastName VARCHAR(255) UNIQUE,
	FirstName VARCHAR(255) NOT NULL,
	Gender char(1) check (Gender IN('M','F')),
	Age INT CHECK (age <= 18)
	
); 
DROP TABLE PERSONS

CREATE TABLE PERSONS
(
	ID INT PRIMARY KEY,
	LastName VARCHAR(255) UNIQUE,
	FirstName VARCHAR(255) NOT NULL,
	Gender char(1),
	Age INT ,
	CONSTRAINT ch_age CHECK (age <=18)
	
); 

ALTER TABLE PERSONS ADD CHECK (GENDER IN ('M','F'))

ALTER TABLE PERSONS ADD CONSTRAINT 

ALTER TABLE DEPARTMENT ADD UNIQUE (DEP_NAME)

ALTER TABLE PERSONS ADD CONSTRAINT CHK_XZ  CHECK (AGE >= 18)

DROP TABLE PERSONS

CREATE TABLE PERSONS
(
	ID INT PRIMARY KEY,
	LastName VARCHAR(255) ,
	FirstName VARCHAR(255) ,
	Gender char(1),
	Age INT ,
	
); 

ALTER TABLE PERSONS ADD DEFAULT 'M' FOR FirstName

alter table persons add constraint df_age DEFAULT 12 for age

alter table persons drop constraint df_age

Select * FROM Persons AS P
INSERT INTO PERSONS
( 
	ID 

)
VALUES(
	1
)