CREATE Trigger tr_Employees ON Employees
AFTER INSERT,UPDATE ,delete
AS
BEGIN
INSERT INTO employee_tr
SELECT * FROM INSERTED;

INSERT INTO employee_tr
SELECT * FROM DELETED;


DECLARE @Comm INT;
SELECT @Comm=commission FROM INSERTED
IF @Comm = 100
BEGIN
UPDATE Employees SET commission=commission + 10 WHERE emp_id=
(SELECT emp_id FROM inserted)
END

END


SELECT dbo.initCap('HELLO WORLD')

DECLARE CURSOR
DECLARE   @empID INT;
DECLARE @salary INT
DECLARE Cur_emp CURSOR FOR
SELECT Emp_id,salary FROM Employees AS e;
OPEN Cur_emp 
FETCH NEXT FROM Cur_emp INTO @empID, @salary
WHILE @@FETCH_STATUS = 0
BEGIN
UPDATE Employees SET PassportNumber = @salary + 100 WHERE emp_id=@empID;
FETCH NEXT FROM Cur_emp INTO @empID,@salary
END
CLOSE Cur_emp;
DEALLOCATE cur_emp;

DECLARE CURSOR
DECLARE @empID INT;
DECLARE @salary INT;
DECLARE Cur_emp CURSOR FOR
SELECT emp_id,salary FROM Employees AS e;
--OPEN CURSOR
OPEN Cur_emp
--FETCH CURSOR
   FETCH NEXT FROM Cur_emp INTO @empID,@salary
        WHILE @@FETCH_STATUS = 0
        BEGIN
            UPDATE Employees SET salary = salary + 100 WHERE emp_id = @empID;
            FETCH NEXT FROM Cur_emp INTO @empID,@salary
        END
CLOSE Cur_emp;
DEALLOCATE Cur_emp;

DECLARE @xyz VARCHAR
SET @xyz='darshana'

SELECT @xyz

SELECT LEN(CONVERT(VARCHAR,'darshanadarshanadarshana'))

SELECT LEN('darshanadarshana')
SELECT CONVERT(VARCHAR,'darshana')

SELECT * FROM Employees

SELECT * FROM
(

    SELECT job_name,COUNT(emp_ID) cnt FROM Employees AS e GROUP BY e.job_nmae

) T 
CTE 
-- Common table expression
WITH xyz AS
(
    SELECT job_name,COUNT(emp_ID) cnt FROM EMployees AS e GROUP BY e.job_name
) SELECT * FROM xyz


