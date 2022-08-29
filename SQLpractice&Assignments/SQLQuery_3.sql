SELECT * FROM Employees

select * ,salary % 10 As salaryIncrease
from Employees as e

select * from Employees as e
where e.gender = 'M'

select * from Employees as e
where e.hire_date <= '18-Nov-1991'

select * from Employees as e
where salary >= 2750.00


select * from Employees as e
where salary != 6000

select * from Employees as e
where e.job_name = 'PRESIDENT' and e.salary = 6000


select * from Employees as e
where e.job_name = 'Salesman' and e.salary >= 1000


select distinct * from Employees as e

sp_help Employees

select * from Employees As e
where salary between 1000 and 3000

select * from Employees As e
where e.hire_date between '01-jan-1991'  and '31-may-1991'


select * from Employees As e
where e.job_name='salesman' or e.salary= 1000


select * from Employees As e
where e.salary Not in (1700,1350)

select * from Employees As e
where e.commission is not Null

select * from Employees As e
where emp_Name like '%R%'

-- If exists (Select * from Employees As e where emp_Name like '%a%') THEN 'abc'

select * from Employees
where exists (select * from dept)

create table dept
(
    id int,
    name varchar(10) ,
    [address] varchar(10)
)

select * from dept

insert into dept  select 1, 'xxx', 'yyyy'

IF Exists (SELECT * from sys.objects as o where o.name= 'Dept' )

drop table dept;


SELECT * from Employees As e
where exists (select * from department)



Select * from Employees As e


select * Into #TempEmployee from Employees AS e

Select * INTO ##temp1 FROM Employees AS e


select * from ##temp1


drop table ##temp1

select Distinct * into #T from Employees e
-- true false =FALSE
-- true false=TRUE

SELECT * INto #EMP from Employees As e


SELECT * From Employees As e
UNION
SELECT * from #EMP

SELECT emp_id, emp_name, 0 As sal From Employees As e
UNION ALL
Select emp_id, emp_name , salary from #Emp

select * from dept


select emp_id  from Employees As e
Union ALL
Select ID  from Dept

SELECT 'Employees' As Tag, * From Employees As e
UNION ALL
Select 'Doctor', * from #Emp


DECLARE @VarValue INT;
SET @VarValue =1234
-- PRINT @VarValue
BEGIN
    IF @VarValue = 1234
BEGIN
        PRINT 'Value is 1234'
    END
ELSE IF @VarValue =4321
BEGIN
        PRINT 'VALUE IS 4321'
    END
ELSE
BEGIN
        PRINT 'WRONG VALUE'
    END
END

DECLARE @Count INT;
SET @Count = 1
WHILE @Count < 10
BEGIN
    PRINT @Count
    SET @Count = @Count + 1
END

DECLARE @Count INT;
SET @Count = 1
WHILE @Count < 10
BEGIN
    PRINT @Count
    SET @Count = @Count + 1

    IF @Count > 5
    BREAK
    ELSE
    CONTINUE
END

DECLARE @Count INT
SET @Count = 1
WHILE @Count  < 10
BEGIN
    IF @COunt < 5
PRINT @Count
    GOTO FROM_Here

    SET @Count = @COunt + 1
END

SELECT * , CASE WHEN gender = 'M' THEN 'Male'
WHEN e.GEnder ='F' THEN 'Female'
ELSE 'Wrong Data'
END
FROM EMployees AS e


SELECT CASE WHEN e.Gender = 'M' THEN 'male'
		WHEN e.Gender = 'F' THEN 'Female'
		ELSE 'Wrog data'
		END AS FullFormOfGender,
    *
FROM Employee AS e

SELECT CASE WHEN e.commission IS NULL THEN (SELECT Emp_Name
    FROM Employee AS e2
    WHERE e2.emp_id = 63679)
 WHEN e.commission IS NOT NULL THEN (SELECT Emp_Name
    FROM Employee AS e2
    WHERE e2.emp_id = 64989)
 END AS Dt, 



DECLARE @count INT = 0

RUN_again:
IF @Count < 10

BEGIN
    Print @count
    SET @count =  @count +1
END

IF @count < 10
GOTO RUn_again

DECLARE @cnt1 int =0
xyz:
if @cnt < 10
BEGIN
    PRINT @cnt
    set @cnt=@cnt+1
END
if @cnt < 10
GOTO
xyz