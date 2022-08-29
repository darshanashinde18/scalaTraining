SELECT * FROM Employees AS e 

SELECT * FROM department AS e 

SELECT * FROM SLAB  AS s 

-- emp_id ,emp_name, dep_name

SELECT e.emp_id, e.emp_name, D.dep_name FROM Employees AS e INNER JOIN department As d ON e.dep_id=d.dep_id 

SELECT e.emp_id, e.emp_name, D.dep_name FROM Employees AS e LEFT JOIN department As d ON e.dep_id=d.dep_id 

SELECT e.emp_id, e.emp_name, D.dep_name FROM Employees AS e RIGHT JOIN department As d ON e.dep_id=d.dep_id 

-- INNER JOIN
-- LEFT JOIN
-- RIGHT JOIN
-- FULL OUTER JOIN
-- CROSS JOIN
-- Self JOIN 




SELECT * FROM Employees AS e

SELECT * FROM department AS d

SELECT * FROM slab AS s

-- emp_ID, Empname DeptName

SelecT E.emp_id,e.emp_name,D.dep_name FROM Employees AS e 
INNER JOIN department AS d ON e.dep_id = d.dep_id

-- 
-- 
 


SelecT E.emp_id,e.emp_name,D.dep_name FROM Employees AS e 
LEFT JOIN department AS d ON e.dep_id = d.dep_ID


-----





SelecT E.emp_id,e.emp_name,D.dep_name FROM Department AS e 
RIGHT JOIN Employees A 

UPDATE Employees set dept_ID = Null where emp_ID in (68319,
66928,
67832)

EMPID, Empname DeptName

SelecT E.emp_id,e.emp_name,D.dep_name FROM Employees AS e 
INNER JOIN department AS d ON e.dep_id = d.ID

UPDATE Employees SET Dep_ID = NULL WHERE emp_id IN (68319,
66928,
67832)

SelecT E.emp_id,e.emp_name,D.dep_name FROM Employees AS e 
LEFT JOIN department AS d ON e.dep_id = d.dep_id

-- Add Department here

SELECT * FROM #MAN  AS e 

SELECT E.emp_id,e.emp_name,D.dep_name FROM Employees AS e
RIGHT JOIN department AS d ON e.dep_id = d.dep_id

SELECT E.emp_id,e.emp_name,D.dep_name FROM Employees AS e
full OUTER JOIN department AS d ON e.dep_id = d.dep_id

select man.emp_name ManName, emp.emp_name EmpName from Employees as emp
inner join Employees as man on man.emp_id=emp.manager_id

CREATE TABLE students
(
    ID INT,
    Student_NAme varchar(10)
)

CREATE TABLE SUBJECTS 
(
    ID INT,
    Subject_Name varchar(100)

)

INSERT INTO SUBJECTS
(
    ID,
    Subject_Name
)
VALUES
(
    2,
    'Science'

)

INSERT INTO SUBJECTS
(
    ID,
    Subject_Name
)
VALUES
(
    2,
    'English'

)

SELECT * FROM Students AS s 
SELECT * FROM SUBJECTS AS s 

SELECT * FROM Students AS s 
CROSS JOIN SUBJECTS AS s2 

-- Functions

SELECT * FROM Employee AS e 

SELECT dep_id, SUM(salary) From Employees AS e 
GROUP BY e.dep_id

SELECT COUNT(emp_id), dep_id FROM Employees AS e 
INNER JOIN department AS d ON e.dep_id=d.dep_id GROUP BY de.dep_name

SELECT MIN(hire_date),dep_id, e.emp_id FROM Employees As e 
GROUP BY e.dep_id,e.emp_id


SELECT ROUND(AVG(salary),0) FROM Employees

SELECT CONVERT(INT,ROUND(AVG(SALARY),0)) FROM EMployees
