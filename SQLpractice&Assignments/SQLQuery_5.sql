select left(emp_name, 2), right (job_name, 3), * from employees as e
select CHARINDEX('darshana', 'a')
select CHARINDEX('a', 'darshana')
select CHARINDEX('K', emp_name), * from Employees as e
select CHAR(65)
select len('darshana')
select len(emp_name) lengthofEmpName, * from employees as e
select lower ('darshana')
select PATINDEX('%rld%','Hello World')
select replace ('darshana',1,'ss')
select replace (job_name, 'ger', 'xyz') from employees as e
select replicate('saurabh',5)
select job_name + '' + REPLICATE(job_name, len(emp_name)), len(emp_name) from employees as e

SELECT DATEDIFF(day,'01-Jan-2020',GETDATE())

SELECT DATEDIFF(YEAR,'01-Jan-2020',GETDATE())
SELECT DATEDIFF(day,'01-Jan-2020',GETDATE())
SELECT DATEDIFF(YEAR,hire_date, GETDATE()),* FROM Employees AS e



SELECT DATEDIFF(YEAR,hire_date,GETDATE())

SELECT DATEDIFF(YEAR,hire_date,GETDATE()),* FROM Employees AS e

SELECT DATEADD(MONTH,2,GETDATE())


SELECT DATEADD(YEAR,1,GETDATE())

SELECT DATEADD(MONTH,1,Hire_date),* FROM Employees AS e

SELECT DATEADD(YEAR,1,hire_date),* FROM Employees AS e
