insert into Employee Values(101,'Rohit',1,30000),
(102,'Shubham',2,35000),
(103,'Virat',3,25000),
(104,'Shreyas',1,20000),
(105,'Surya',2,40000),
(106,'Rahul',3,45000),
(107,'Ravindra',4,50000),
(108,'Kuldeep',2,20000),
(109,'Jasprit',3,25000),
(110,'Siraj',1,55000),
(111,'Shami',4,35000),
(112,'Ishan',6,10000);

Insert into [dbo].[Department] values(1,'Sales'),
(2,'HR'),
(3,'Finance'),
(4,'Marketing'),
(5,'IT'),
(7,'Admin'),
(8,'Audit');

---Write a SQL query to find out how many employees are there in each department
---Expected OutPut Columns 

Select  e.DepartmentID,d.[DepartmentName],Count(e.DepartmentID)
from employee as e
inner Join Department as d
on e.DepartmentID=d.DepartmentID
Group BY e.DepartmentID,d.DepartmentName



---Write a SQL query to find out Average Salary for each department
Select  e.DepartmentID,d.[DepartmentName],AVG(e.MonthlySalary)as AvergeSalary
from employee as e
inner Join Department as d
on e.DepartmentID=d.DepartmentID
Group BY e.DepartmentID,d.DepartmentName


---Write a SQL query to find out highest salary earner from each department
WITH DepartmentSalaries AS (
    SELECT
        e.DepartmentID,
        d.DepartmentName,
        e.EmployeeID,
        e.EmployeeName,
        e.MonthlySalary,
        ROW_NUMBER() OVER (PARTITION BY e.DepartmentID ORDER BY e.MonthlySalary DESC) AS rn
    FROM
        Employee e
    JOIN
        Department d ON e.DepartmentID = d.DepartmentID
)
SELECT
    DepartmentID,
    DepartmentName,
    EmployeeID,
    EmployeeName,
    MonthlySalary AS Salary
FROM
    DepartmentSalaries
WHERE
    rn = 1;

---	Write a SQL query to find out TOP 2 salary earners from "Sales" department

	SELECT TOP 2
	d.DepartmentName,
    e.EmployeeID,
    e.EmployeeName,
    e.MonthlySalary AS Salary
FROM
    Employee e
JOIN
    Department d ON e.DepartmentID = d.DepartmentID
WHERE
    d.DepartmentName = 'Sales'
ORDER BY
    e.MonthlySalary DESC;




