/*
Inline Table valued Functions-user defined functions in Sql Server

Inline Table-Valued Functions (TVFs) in SQL Server are a type of user-defined function 
that returns a table data type. They can be used to encapsulate complex queries and can
be invoked in the FROM clause of a SELECT statement.

Creating an Inline Table-Valued Function
To create an inline table-valued function, you define the function with the
RETURNS TABLE clause and specify a single RETURN statement with a SELECT query.

*/
/*
Schema: In Microsoft SQL Server, a schema is a logical container
for database objects such as tables, views, stored procedures, 
and functions. Schemas help organize and manage database objects,
allowing for better structure, security, and administration within a database. 
*/

Create Schema TVF;

CREATE TABLE TVF.Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
	Age int,
    DepartmentID INT
);


INSERT INTO TVF.Employees (EmployeeID, FirstName, LastName, Age,DepartmentID)
VALUES
(1, 'John', 'Doe',35, 1),
(2, 'Jane', 'Smith',23, 2),
(3, 'Alice', 'Johnson',19, 1),
(4, 'Bob', 'Brown',45, 3);


Select * from TVF.Employees
---inline table valued function with without parameters 
Create function GetEmployee()
returns Table
as
return(Select * from TVF.Employees)


Select * from GetEmployee();

---inline table valued function with parameters 
Create Function Fn_GetEmployee_para(@Age_id int)
returns table
as
	return (select * from TVF.Employees where age > =@age_id);


Select * from Fn_GetEmployee_para(30);