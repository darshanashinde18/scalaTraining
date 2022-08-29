SELECT ISDATE('2022/13/1')

CREATE SCHEMA Payroll;

CREATE SCHEMA HR;

CREATE TABLE HR.table1
(
    id INT,
    NAME VARCHAR(10)
)

SYNONYM:

SELECT *
from darshana.dbo.Employees AS e

SELECT *
FROM darshana..Employees

SELECT *
FROM darshana.hr.table1 AS t

CREATE SYNONYM SYN_EMP for darshana.dbo.Employees

SELECT *
FROM SYN_EMP

SELECT *
INTO Emp_darshana
From Employees AS e

DELETE FROM EMP_darshana WHERE emp_id IN (65271,64646)

SELECT *
FROM sys.objects AS o
WHERE TYPE='U'

-- VIEWS 
SELECT *
FROM Employees AS e
SELECT *
FROM department

CREATE VIEW vw_Employees
AS
    SELECT e.emp_name, e.Gender, d.dep_name
    FROM Employees AS e
        Inner JOIN department AS d ON e.dep_id=d.dep_id

SELECT *
FROM vw_Employees

CREATE VIEW 
def
AS
    SELECT *
    FROM department;

SELECT *
FROM def;

ALTER TAble department ADD pqr varchar(10)

SELECT *
FROM department AS d

EXEC sp_recompile def

ALTER TAble department ADD def varchar(10)

SELECT *
FROM department AS d

-- subquery

SELECT *
FROM Employees
Where dep_id In 
(SELECT dep_id
from department as d)

SELECT *
FROM Employees AS e
Where salary=(SELECT MIN(e2.salary)
FROM Employees AS e2)

SELECT *
FROM <table>
WHERE age In (SELECT age
FROM <table2
>)

co-related subquery

SELECT *
FROM Employees AS e
Where salary IN 
(
    SELECT MIN(salary)
FROM Employees e1
WHERE e.dep_id = e1.dep_id
GROUP BY e1.dep_id
)

SELECT *
FROM EMployees AS e
WHERE e.dep_id IN
(
    SELECT d.dep_id
FROM department AS d
WHERE d.dep_id = e.dep_id
)

SELECT *
FROM Employees
ORDER BY dep_id

-- Columner QUERY

-- SELECT (SELECT ColumnName FROM abc), * FROM table 

SELECT (SELECT COUNT(*)
    FROM department ) AS cntdept , *
FROM EMployees AS e

SELECT(SELECT DISTINCT emp_id
    from Employees AS e2
    WHERE e.emp_id=e2.emp_id) ,
    *
FROM Employees AS e
where e.emp_id IN
(SELECT DISTINCT emp_id
FROM Employees AS e2
WHERE e.emp_id=e2.emp_id)

SELECT (SELECT COUNT(*)
    FROM Employees AS e2)  AS cnt, *
FROM Employees AS e 