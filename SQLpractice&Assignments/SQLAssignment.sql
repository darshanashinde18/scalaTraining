-- 1. Write a query in SQL to display all the information of the employees.
SELECT * FROM Employees;

-- 2. Write a query in SQL to find the salaries of all employees.
SELECT emp_id, emp_name, salary FROM Employees;

-- 3.Write a query in SQL to display the unique designations for the employees.
SELECT job_name FROM Employees GROUP BY job_name;

-- 4. Write a query in SQL to list the emp_name and salary is increased by 15% and expressed as no.of Dollars.
SELECT emp_name,salary,((salary+salary*0.15)/79.16) as "salary(No. of Dollars)" FROM Employees;
select emp_name, concat(salary*1.15/79.51,' $') as "salary in Dollars" FROM Employees;

-- 5. Write a query in SQL to produce the output of employees name and job name as a fromat of "Employee & Job". 
SELECT emp_name Employee , job_name Job FROM Employees;

-- 6. Write a query in SQL to produce the output of employees as follows. Employee-JONAS(manager).
SELECT concat(emp_name,'(',job_name,')') AS "Employee" FROM Employees;

-- 7. Write a query in SQL to list the employees with Hire date in the format like February 22, 1991. 
SELECT  emp_id, emp_name, DATE_FORMAT(hire_date,'%M,%e,%Y') "Hire Date" FROM Employees;

-- 8. Write a query in SQL to count the no. of characters of Emp name with out considering the spaces for each name. 
SELECT emp_name ,LEN(emp_name) "No of Characters" FROM EMployees;

-- 9. Write a query in SQL to list the emp_id,salary, and commission of all the employees. 
SELECT emp_id,salary,commission from Employees;

-- 10. Write a query in SQL to display the unique department with jobs.
SELECT DISTINCT(dep_id),job_name from Employees;

-- 11. Write a query in SQL to list the employees who does not belong to department 2001. 
SELECT * FROM Employees where dep_id != 2001;

-- 12. Write a query in SQL to list the employees who joined before 1991. 
SELECT * from Employees where hire_date < '1991';

-- 13. Write a query in SQL to display the average salaries of all the employees who works as ANALYST.
SELECT avg(salary) as "Average Salary" from Employees where job_name='Analyst';

-- 14. Write a query in SQL to display the details of the employee BLAZE. 
SELECT * FROM Employees where emp_name='BLAZE';

-- 15. Write a query in SQL to display all the details of the employees whose commission is more than their salary.
SELECT * FROM Employees WHERE commission > salary;

-- 16. Write a query in SQL to list the employees whose salary is more than 3000 after giving 25% increment.
SELECT emp_id,emp_name, salary,(salary + salary*0.25) AS "INCsal"  FROM Employees where (salary + salary*0.25) > 3000;

-- 17. Write a query in SQL to list the name of the employees, those having six characters to their name.
select emp_id,emp_name from Employees where len(emp_name)=6;

-- 18. Write a query in SQL to list the employees who joined in the month January.
SELECT emp_name,hire_date from Employees where datename(month, dateadd(month,0, hire_date))='January';

-- 19. Write a query in SQL to list the name of employees and their manager separated by the string 'works for'.  
select concat(emp_name , ' works for  ' , manager_id) "Employees relation" from Employees;

-- 20. Write a query in SQL to list all the employees whose designation is CLERK.
SELECT * FROM Employees WHERE job_name='CLERK';

-- 21. Write a query in SQL to list the employees whose experience is more than 27 years.
select emp_id,emp_name, hire_date from Employees where DATEDIFF(YEAR,hire_date,GETDATE())/365>27;
 
-- 22. Write a query in SQL to list the employees whose salaries are less than 3500.
SELECT * FROM Employees WHERE salary < 3500;

-- 23. Write a query in SQL to list the name, job_name, and salary of any employee whose designation is ANALYST. 
SELECT emp_name,job_name,salary FROM Employees WHERE job_name='ANALYST';

-- 24. Write a query in SQL to list the employees who have joined in the year 1991. 
SELECT emp_name,emp_id,hire_date FROM Employees WHERE hire_date like '1991';

-- 25. Write a query in SQL to list the name, id, hire_date, and salary of all the employees joined before 1 apr 91.  
SELECT emp_name,emp_id,hire_date, salary FROM Employees WHERE hire_date < '1991-04-01';

-- 26. Write a query in SQL to list the employee name, and job_name who are not working under a manager.
SELECT emp_name,job_name FROM Employees WHERE manager_id=0;

-- 27. Write a query in SQL to list all the employees joined on 1st may 91.
SELECT * FROM Employees WHERE hire_date='1991-05-01';

-- 28. Write a query in SQL to list the id, name, salry, and experiences of all the employees working for the manger 68319.
SELECT emp_id,emp_name, salary, floor(datediff(curdate(),hire_date)/365) "Experience(Years)" FROM Employees where manager_id=68319;

-- 29. Write a query in SQL to list the id, name, salary, and experience of all the employees who earn more than 100 as daily salary.
SELECT emp_id,emp_name,salary, salary/30 "Daily Salary" FROM Employees WHERE salary/30>100;

-- 30. Write a query in SQL to list the employees who are retiring after 31-Dec-99 after completion of 8 years of service period. 
select emp_id,emp_name,floor(datediff('1999-12-31',hire_date)/365) 'Service' from Employees where floor(datediff('1999-12-31',hire_date)/365)=8;

-- 31. Write a query in SQL to list those employees whose salary is an odd value. 
SELECT * FROM Employees WHERE salary%2!=0;

-- 32. Write a query in SQL to list those employees whose salary contain only 3 digits.
SELECT * FROM Employees WHERE salary<1000;

-- 33. Write a query in SQL to list the employees who joined in the month of APRIL.
SELECT * FROM Employees WHERE hire_date LIKE '%-04-%';

-- 34. Write a query in SQL to list the employees those who joined in company before 19th of the month. 
SELECT * FROM Employees WHERE hire_date like '%-%-19';

-- 35. List the employees who are SALESMAN and gathered an experience which month portion is more than 10.
select emp_id,emp_name,job_name,floor(DATEDIFF(YEAR,GETDATE(),hire_date)/365) ' Experience(Years) ' from Employees where floor(datediff(curdate(),hire_date)/365)>10 and job_name ='SALESMAN';

-- 36. Write a query in SQL to list the employees of department id 3001 or 1001 joined in the year 1991.
SELECT * FROM Employees WHERE dep_id in (1001,3001);

-- 37. Write a query in SQL to list the employees of department id 3001 or 1001 joined in the year 1991. 
select emp_id,emp_name,dep_id,hire_date  from Employees where dep_id in (3001,1001) and hire_date like '1991-%';

-- 38. Write a query in SQL to list all the employees of designation CLERK in department no 2001.  
SELECT * FROM Employees WHERE job_name='CLERK' and dep_id=2001;

-- 39. Write a query in SQL to list the ID, name, salary, and job_name of the employees for -
-- 	1. Annual salary is below 34000 but receiving some commission which should not be more than the salary,
SELECT emp_id,job_name, salary ,salary*12  " Annual Salary" FROM Employees WHERE salary*12<34000 and commission <= salary;

-- 	2. And designation is SALESMAN and working for department 3001.
SELECT * FROM Employees WHERE job_name='SALESMAN' and dep_id=3001;

-- 40. Write a query in SQL to list the employees who are either CLERK or MANAGER. 
SELECT * FROM Employees WHERE job_name='CLERK' or job_name='MANAGER';

-- 41. Write a query in SQL to list the employees who joined in any year except the month February. 
SELECT * FROM Employees WHERE hire_date!='%-02-%';

-- 42. Write a query in SQL to list the employees who joined in the year 91.
SELECT emp_id,emp_name,hire_date FROM Employees WHERE hire_date ='1991 %';


-- 43. Write a query in SQL to list the employees who joined in the month of June in 1991. 
select emp_id,emp_name,hire_date from Employees where hire_date like '1991-06%';

-- 44. Write a query in SQL to list the employees whose annual salary is within the range 24000 and 50000. 
SELECT * FROM Employees WHERE salary*12>=24000 and salary*12<=50000;

-- 45. Write a query in SQL to list the employees who have joined on the following dates 1st May,20th Feb, and 03rd Dec in the year 1991.
select emp_id,emp_name,hire_date from Employees where hire_date in ('1991-05-01','1991-02-20','1991-12-03');

-- 46. Write a query in SQL to list the employees working under the managers 63679,68319,66564,69000.
SELECT * FROM Employees WHERE manager_id in (63679,68319,66564,69000);

-- 47. Write a query in SQL to list the employees who joined after the month JUNE in the year 1991. 
SELECT * FROM Employees WHERE hire_date > '1991-06-30';

-- 48. Write a query in SQL to list the employees who joined in 90's.
select emp_id,emp_name,hire_date from Employees where hire_date between '1990-01-01' and '1999-12-31';

-- 49. Write a query in SQL to list the managers of department 1001 or 2001.  
SELECT * FROM Employees WHERE job_name='MANAGER' and dep_id in (1001,2001);

-- 50. Write a query in SQL to list the employees, joined in the month FEBRUARY with a salary range between 1001 to 2000. 
select emp_id,emp_name,salary,hire_date from Employees where hire_date like '%-02-%' and salary between 1001 and 2000;

-- 51. Write a query in SQL to list all the employees who joined before or after 1991. 
select emp_id,emp_name,hire_date from Employees where hire_date < '1991-01-01' or hire_date >'1991-12-31';

-- 52. Write a query in SQL to list the employees along with department name.
SELECT emp_name , dep_name FROM Employees e , department d WHERE e.dep_id=d.dep_id;

-- 53. Write a query in SQL to list the name, job name, annual salary, department id, department name and grade of the employees who earn 60000 in a year or not working as an ANALYST.
SELECT emp_name,job_name,salary*12 "Annual Salary", dep_name  FROM Employees e, department d WHERE salary*12 =60000 or job_name != 'ANALYST' and e.dep_id=d.dep_id;
select e.emp_name,e.job_name,e.salary*12 "Annual Salary",d.dep_id,d.dep_name from Employees e join department d on e.dep_id=d.dep_id  where e.salary*12=60000 or e.job_name!='ANALYST';

-- 54. Write a query in SQL to list the name, job name, manager id, salary, manager name, manager's salary for those employees whose salary is greater than the salary of their managers.
select e.emp_name,e.job_name,e.manager_id "Manager ID",e.salary "EMP SAL",m.emp_name "Manager Name",m.salary "Manager SAL"  from Employees e join Employees m on e.manager_id=m.emp_id where e.salary>m.salary;

-- 55. Write a query in SQL to list the employees name, department, salary and commission. For those whose salary is between 2000 and 5000 while location is PERTH.
select e.emp_name,d.dep_name,e.salary,e.commission,d.dep_location  from Employees e join department d on e.dep_id=d.dep_id  where e.salary between 2000 and 5000 and d.dep_location='PERTH';


-- 57. Write a query in SQL to list the employees whose manager name is JONAS.
select e.emp_name, m.emp_name "Manager Name" from Employees e join Employees m  on e.manager_id=m.emp_id where m.emp_name like 'JONAS';


-- 59. Write a query in SQL to list the employees who are working either MANAGER or ANALYST with a salary range between 2000 to 5000 without any commission.
select e.emp_name,e.job_name,e.salary  from Employees e  where job_name in ('MANAGER','ANALYST') and e.salary between 2000 and 5000;

-- 60. Write a query in SQL to list the id, name, salary, and location of the employees working at PERTH,or MELBOURNE with an experience over 10 years. 
select e.emp_id,e.emp_name,e.salary,d.dep_location,floor(datediff(curdate(),e.hire_date)/365) "Experience"  from Employees e inner join department d on e.dep_id = d.dep_id where d.dep_location in ('PERTH','MELBOURNE') and floor(datediff(curdate(),e.hire_date)/365)>=10;

-- 61. Write a query in SQL to list the employees along with their location who belongs to SYDNEY, MELBOURNE with a salary range between 2000 and 5000 and joined in 1991. 
select e.emp_name,d.dep_location,e.salary,e.hire_date from Employees e inner join department d WHERE d.dep_location in ("SYDNEY",'MELBOURNE') and e.salary between 2000 and 5000 and hire_date like ('1991-%');

-- 63. Write a query in SQL to list the employees who are senior to their own manager. 
select e.emp_name,m.emp_name "MANAGER",e.hire_date "EMP Hire date", m.hire_date "MGR Hire date"  from Employees e inner join Employees m  on e.manager_id=m.emp_id  where e.hire_date < m.hire_date;

-- 65. Write a query in SQL to list the employees in department PRODUCTION or AUDIT who joined after 1991 and they are not MARKER or ADELYN to their name.
select e.emp_name, d.dep_name,e.hire_date  from Employees e inner join department d on e.dep_id=d.dep_id WHERE d.dep_name in ('PRODUCTION','AUDIT') and e.hire_date >'1991-12-31' and e.emp_name not in ('MARKER','ADELYN');

-- 66. Write a query in SQL to list the employees in the ascending order of their salaries.
 select * from Employees order by salary;

-- 67. Write a query in SQL to list the details of the employees in ascending order to the department_id and descending order to the jobs
select  emp_name,dep_id, job_name from Employees order by dep_id,job_name desc;

-- 68. Write a query in SQL to display all the unique job in descending order.
select distinct(job_name) "Unique Job"  from Employees  order by job_name desc;

-- 69. Write a query in SQL to list the id, name, monthly salary, daily salary of all the employees in the ascending order of their annual salary. 
select emp_id,emp_name,salary,round((salary/30),2) "DAILY SAL",salary*12 "ANNUAL_SAL"  from Employees  order by ANNUAL_SAL;

-- 70. Write a query in SQL to list the employees in descending order who are either 'CLERK' or 'ANALYST'. 
select emp_name,job_name  from Employees  where job_name in ('CLERK','ANALYST') order by emp_name desc;

-- 71. Write a query in SQL to display the location of CLARE.
select e.emp_name,d.dep_location from Employees e inner join department d on e.dep_id=d.dep_id where e.emp_name='CLARE'

-- 72. Write a query in SQL to list the employees in ascending order of seniority who joined on 1-MAY-91,or 3-DEC-91, or 19-JAN-90.
select emp_name,hire_date from Employees  where hire_date in ('1991-05-01','1991-12-03','1990-01-19') order by hire_date;  

-- 73. Write a query in SQL to list the employees who are drawing the salary less than 1000 and sort the output in ascending order on salary. 
select emp_name,salary from Employees where salary<1000  order by salary;

-- 74. Write a query in SQL to list the details of the employees in ascending order on the salary.
select * from Employees  order by salary;

-- 75. Write a query in SQL to list the employees in ascending order on job name and descending order on employee id.  
select emp_id,emp_name,job_name from Employees order by job_name,emp_id desc;

-- 76. Write a query in SQL to list the unique jobs of department 2001 and 3001 in descending order. 
select distinct(job_name) "Unique Jobs",dep_id from Employees  where dep_id in (2001,3001) order by dep_id desc;

-- 77. Write a query in SQL to list all the employees except PRESIDENT and MANAGER in ascending order of salaries. 
select emp_name,job_name,salary from Employees where job_name not in ('PRESIDENT','MANAGER')  order by salary;

-- 78. Write a query in SQL to list the employees in ascending order of the salary whose annual salary is below 25000. 
select emp_name,salary,salary*12 "ANNUAL_SAL" from Employees  where salary*12<25000 order by salary;

-- 79. Write a query in SQL to list the employee id, name, annual salary, daily salary of all the employees in the ascending order of annual salary who works as a SALESMAN. 
select emp_id,emp_name,salary*12 "Annual Sal",round((salary/30),2) "Daily Sal",job_name from Employees where job_name='SALESMAN'  order by salary*12;

-- 80. Write a query in SQL to list the employee id, name, hire_date, current date and experience of the employees in ascending order on their experiences.
select emp_id,emp_name,hire_date,curdate() "Current Date", floor(datediff(curdate(),hiredate)/365) "Experience" from Employees order by 5;

-- 81. Write a query in SQL to list the employees in ascending order of designations of those, joined after the second half of 1991.
select emp_name,hire_date from Employees where hire_date>'1991-12-31' order by job_name;

-- 82. Write a query in SQL to list the total information of employees table along with department, and location of all the employees working under FINANCE and AUDIT in the ascending department no.
select * from Employees e inner join department d on e.dep_id=d.dep_id where d.dep_name in ('FINANCE','AUDIT') order by d.dep_id;

-- 87. Write a query in SQL to list the details of the employees along with the details of their departments.
select * from Employees e inner join department d on e.dep_id=d.dep_id;

-- 88. Write a query in SQL to list the employees who are senior to their own MANAGERS.
select e.emp_name,m.emp_name "MANAGER",e.hire_date "EMP Hire date", m.hire_date "MGR Hire date" from employees e inner join employees m on e.manager_id=m.emp_id where e.hire_date<m.hire_date;

-- 89. Write a query in SQL to list the employee id, name, salary, and department id of the employees in ascending order of salary who works in the department 1001.
select e.emp_id,e.emp_name,e.salary,e.dep_id from Employees e where e.dep_id=1001 order by salary;

-- 90. Write a query in SQL to find the highest salary from all the employees.
select emp_name,max(salary) "Highest Salary" from Employees;

-- 91. Write a query in SQL to find the average salary and average total remuneration(salary and commission) for each type of job.
select round((avg(Salary)),2) "AVG SAL",round(avg(salary+ ifnull(commission,0)),2) "Total Renumeration",job_name from Employees group by job_name;

-- 92. Write a query in SQL to find the total annual salary distributed against each job.
select salary*12 "ANNUAL_SAL", job_name from Employees group by job_name;

-- 93. Write a query in SQL to list the employee id, name, department id, location of all the employees.
select e.emp_id,e.emp_name,d.dep_id,d.dep_location from Employees e inner join department d on e.dep_id=d.dep_id;

-- 94. Write a query in SQL to list the employee id, name, location, department of all the departments 1001 and 2001.
select e.emp_id,e.emp_name,d.dep_location,d.dep_name,e.dep_id from Employees e inner join department d on e.dep_id=d.dep_id where e.dep_id in (1001,2001);

-- 96. Write a query in SQL to list the manager no and the number of employees working for those managers in ascending order on manager id.
select distinct ifnull(manager_id,"No Manager") "MGR ID",count(*) "No. of Employees" from Employees group by manager_id order by manager_id;

-- 97. Write a query in SQL to display the number of employee for each job in each department.
select job_name, count(*) "No. of Employees", dep_id from Employees group by dep_id;

--98. Write a query in SQL to list the department where at least two employees are working.
select dep_id ,count(*) "No. of Employees" from employees group by dep_id having count(*)>=2;

--101. Write a query in SQL to list the no. of employees in each department where the no. is less than 4.
select dep_id,count(*) from employees group by dep_id having count(*)<4;

--102. Write a query in SQL to list the name of departments where atleast 2 employees are working in that department.
select d.dep_name,count(*) from employees e, department d where e.dep_id=d.dep_id group by d.dep_name having count(*)>=2;

--103. Write a query in SQL to check whether all the employees numbers are indeed unique.
select emp_id,count(*) from employees group by emp_id;

--104. Write a query in SQL to list the no. of employees and average salary within each department for each job name.
select count(*),round((avg(salary)),2) "AVG SAL",dep_id,job_name from employees group by job_name;

--105. Write a query in SQL to list the names of those employees starting with 'A' and with six characters in length.
select emp_name from Employees where emp_name like 'A%' and len(emp_name)=6;

--106. Write a query in SQL to list the employees whose name is six characters in length and third character must be 'R'
select * from Employees where len(emp_name)=6 and emp_name like '__R%';

--107. Write a query in SQL to list the name of the employee of six characters long and starting with 'A' and ending with 'N'.
select emp_name from Employees where len(emp_name)=5 and emp_name like ('A%N');

--108. Write a query in SQL to list the employees who joined in the month of which second character is 'a'.
select emp_name, month(hire_date) as "Joined Month" from Employees where month(hire_date) like '_A%';

--109. Write a query in SQL to list the employees whose names containing the character set 'AR' together.
select emp_name from Employees where emp_name like '%AR%';

--110. Write a query in SQL to list the employees those who joined in 90's.
select emp_name, hire_date from Employees where hire_date between '1990-01-01' and '1990-12-31';

-- 111. Write a query in SQL to list the employees whose ID not starting with digit 68.
select emp_id,emp_name from Employees where emp_id like ('68%');

-- 112. Write a query in SQL to list the employees whose names containing the letter 'A'.
select emp_id,emp_name from Employees where emp_name like '%A%';

-- 113. Write a query in SQL to list the employees whose name is ending with 'S' and six characters long.
select emp_name, len(emp_name) "No. of Characters"  from Employees where emp_name like '%s' and len(emp_name)=6; 

-- 114. Write a query in SQL to list the employees who joined in the month having char 'A' at any position. 
select emp_name, month(hire_date) "Joining Month" from Employees where month(hire_date) like '%A%';

-- 115. Write a query in SQL to list the employees who joined in the month having second char is 'A'. 
select emp_id, month(hire_date) "Joining Month" from Employees where month(hire_date) like '_A%';