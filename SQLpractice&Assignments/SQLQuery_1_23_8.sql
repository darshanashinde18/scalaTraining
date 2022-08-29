SELECT * FROM Employees

ALTER Procedure pr_EmployeeInsert
AS
BEGIN
SELECT * FROM department;
END

exec pr_employees

Select * FROM Employees AS e;

END



create proc pr_Calc(@FirstValue int,@SecondValue int)
as
BEGIN
select @FirstValue+@SecondValue;
END

exec pr_Calc 2,3;

sp_helptext pr_calc

EXEC pr_calc 2,3;
EXEC pr_calc 10,4;

Alter proc pr_calc (@FirstValue INT, @SecondValue INT)
AS
BEGIN
SELECT @FirstValue + @SecondValue;
END

ALTER PROCEDURE pr_EmployeeInsert
AS
BEGIN
        --Procedure body
        SELECT * FROM Department
        SELECT * FROM Employees AS e
END
EXEC pr_Calc 2,3;
EXEC pr_Calc 10,4;
ALTER PROC pr_Calc (@FirstValue INT, @SecondValue INT)
AS
BEGIN
    SELECT @FirstValue + @SecondValue
END
sp_helptext pr_Calc

SELECT * FROM Employees AS e 
EmpID, emp_name, Gender (M=Male, F=Female) YearsofExperience , Per annum salary
DepartmentID exist


Create PROCEDURE Emp_pro(@job_name VARCHAR(20))
AS
BEGIN
  SELECT emp_id, emp_name, CASE WHEN Gender = 'M' THEN 'Male' WHEN Gender ='F' THEN 'Female' END AS Gender, DATEDIFF(YEAR, hire_date, GETDATE()) AS YOF, salary * 12 AS Sal  FROM Employees
  WHERE dep_id is NOT NULL;
END
Emp_pro 'Manager'


Create Function fn__getData (@EMPID int)
Returns INT
AS 
BEGIN
DECLARe @varReturnValue INT;

SELECT @varReturnValue = DATEDIFF(YEAR,e.hire_date,GETDATE()) FROM EMployees AS e 
WHERE e.emp_id=@EMPID;

RETURN @varReturnValue;

END

CREATE FUNCTION fn_getDataFromDate(@dtHireDate Datetime)
RETURNS INT
AS
BEGIN
DECLARE @varReturnValue INT;
SELECT @varReturnValue =DATEDIFF(YEAR,@dtHireDate,GETDATE());
RETURN @varReturnValue;
END

SELECT dbo.fn__getdata(e.emp_id) AS yearsoFExp,  * FROM Employees AS e 

SELECT dbo.fn_getDataFromDate('01-Jan-2019')

SELECT dbo.fn_getDataFromDate(hire_date), * From EMployees AS e 

SELECT * FROM Employees AS e 
INNER JOIN Employees e1 ON e1.emp_id = e.emp_id
WHERE dbo.fn_get_JobName (


)

SELECT * FROM dbo.SplitString('1,2,3,4',',')

Create Function fn_getDataFromDate


CREATE FUNCTION fn_getData (@EMPID int) 
RETURNS int
AS
BEGIN
	DECLARE @varReturnValue INT;
	
	SELECT @varReturnValue = DATEDIFF(YEAR,e.hire_date,GETDATE()) FROM Employee AS e
	WHERE e.emp_id = @EMPID;
	
	RETURN @varReturnValue;
	
END

Create FUNCTION fn_getDataFromDate (@dtHireDate Datetime) 
RETURNS int
AS
BEGIN
	DECLARE @varReturnValue INT;
	
	SELECT @varReturnValue = DATEDIFF(YEAR,@dtHireDate,GETDATE());
	
	RETURN @varReturnValue;
END
 SELECT dbo.fn_getDataFromDate(e.Hire_Date) AS yearsOFEx


Create FUNCTION Initcap
( @mystring varchar(50) )
RETURNS VARCHAR(50)
AS
BEGIN
   DECLARE @val VARCHAR(50);
   SET @val = (select upper(left(@mystring,1)) +  lower(substring(@mystring,2,datalength(@mystring)-1)) )
   RETURN @val;
END;

SELECT upper(left('hello',1)) + LOWER(substring(@mystring,2,datalength(@mystring)-1))

SELECT dbo.initCap('hello world')
