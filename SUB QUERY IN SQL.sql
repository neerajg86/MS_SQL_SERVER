

---------------------------------------SUB QUERY IN SQL SERVER -------------------------------------

SELECT * FROM Employee;

INSERT INTO [Practice].[dbo].[Employee] 
    ([EmployeeID], [FirstName], [LastName], [Position], [HireDate], [Salary])
VALUES(110, 'Ivy', 'Anderson', 'Manager', '2013-10-12', 76000),
    (111, 'Jack', 'Thomas', 'Developer', '2020-11-05', 69000),
    (112, 'Karen', 'Jackson', 'Analyst', '2019-12-18', 64000),
    (113, 'Leo', 'White', 'Support', '2018-01-22', 51000),
    (114, 'Mia', 'Harris', 'Manager', '2017-02-28', 79000),
    (115, 'Nick', 'Martin', 'Developer', '2016-03-11', 68000),
    (116, 'Olivia', 'Garcia', 'Analyst', '2015-04-24', 66000),
    (117, 'Pete', 'Martinez', 'Support', '2014-05-13', 52000),
    (118, 'Quinn', 'Robinson', 'Manager', '2013-06-30', 77000),
    (119, 'Rose', 'Clark', 'Developer', '2012-07-21', 70000),
    (120, 'Sam', 'Rodriguez', 'Analyst', '2011-08-15', 64000);

INSERT INTO [Practice].[dbo].[Employee] 
    ([EmployeeID], [FirstName], [LastName], [Position], [HireDate], [Salary])
VALUES
    (101, 'John', 'Doe', 'Manager', '2020-01-15', 75000),
    (102, 'Jane', 'Smith', 'Developer', '2019-02-20', 68000),
    (103, 'Bob', 'Johnson', 'Analyst', '2018-03-30', 65000),
    (104, 'Alice', 'Brown', 'Developer', '2021-04-25', 72000),
    (105, 'Charlie', 'Davis', 'Support', '2017-05-14', 50000),
    (106, 'Eve', 'Miller', 'Manager', '2016-06-10', 80000),
    (107, 'Frank', 'Wilson', 'Developer', '2022-07-19', 71000),
    (108, 'Grace', 'Moore', 'Analyst', '2015-08-23', 67000),
    (109, 'Hank', 'Taylor', 'Support', '2014-09-16', 53000);


SELECT * FROM Employee
WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE Salary >= 70000);  ----SUBQUERIES


SELECT * FROM Employee
WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE Position='MANAGER');

UPDATE Employee
SET FirstName='MAHENRA' WHERE EmployeeID=10 ;


UPDATE  Employee
SET Salary= SALARY+12000
WHERE EmployeeID IN (SELECT EmployeeID FROM EMPLOYEE WHERE SALARY <= 60000);



DELETE FROM Employee WHERE EmployeeID IN
(SELECT EmployeeID FROM Employee WHERE LastName='GUPTA' OR LastName='SINGH' OR LastName='MODI');



SELECT * FROM Employee;


SELECT * FROM Employee
WHERE EmployeeID IN (SELECT C_ID FROM Customer_tbl WHERE c_address='KALYAN'); --- WE CAN USE SUBQUERY WITH TWO TABLES ALSO. 


SELECT * FROM Employee
WHERE EmployeeID IN 
(SELECT EmployeeID FROM Employee WHERE SALARY > 50000)ORDER BY EmployeeID ASC;



SELECT * FROM Employee
WHERE EmployeeID IN 
(SELECT EmployeeID FROM Employee WHERE SALARY > 50000)ORDER BY EmployeeID DESC;



-----------------------SCALAR SUBQUERY--------------------------------------
----OPERATIORS = , > , >= , < , <= ,!=

SELECT * FROM Employee
WHERE EmployeeID = (SELECT EmployeeID FROM Employee WHERE FirstName='LEO');

SELECT * FROM Employee
WHERE EmployeeID < (SELECT EmployeeID FROM Employee WHERE FirstName='BOB');

SELECT * FROM Employee
WHERE EmployeeID > (SELECT EmployeeID FROM Employee WHERE FirstName='BOB');

SELECT * FROM Employee
WHERE EmployeeID != (SELECT EmployeeID FROM Employee WHERE FirstName='BOB');


-----------------------------------MULTIVALUED SUBQUERY-----------------------------------
----OPERATIORS IN , ANY , ALL


SELECT * FROM Employee
WHERE EmployeeID IN 
(SELECT EmployeeID FROM Employee WHERE Position='SUPPORT');

SELECT * FROM Employee
WHERE EmployeeID IN
(SELECT EmployeeID FROM Employee WHERE Position='SUPPORT' OR Position='ENGINEER');


SELECT * FROM Employee
WHERE Salary < ANY
(SELECT Salary FROM Employee WHERE Position='SUPPORT' OR Position='ENGINEER');



SELECT * FROM Employee
WHERE Salary < ALL
(SELECT Salary FROM Employee WHERE Position='SUPPORT');



-------------------SELF CONTAINED SUBQUERY ---------------------------------

SELECT * FROM Employee
WHERE EmployeeID IN
(SELECT C_ID FROM Customer_tbl WHERE c_address='KALYAN');

-------------------CO - CONTAINED SUBQUERY ---------------------------------

SELECT * FROM Employee AS E
WHERE E.EmployeeID IN
(SELECT C.C_ID FROM Customer_tbl AS C WHERE C.c_address='KALYAN' OR  C.c_address='KANPUR');

SELECT * FROM Customer_tbl;


SELECT * FROM EMPLOYEE WHERE SALARY IN 
(SELECT MIN(SALARY) FROM EMPLOYEE);


