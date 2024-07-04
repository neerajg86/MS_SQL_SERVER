------------------BETWEEN OPERATOR IN SQL-------------

SELECT * FROM Employee
WHERE Salary BETWEEN 70000 AND 80000;


SELECT * FROM Employee
WHERE Salary BETWEEN 70000 AND 75000;

------------------TOP OPERATOR IN SQL-------------

SELECT TOP 5 *  FROM Employee;



SELECT * FROM Employee;

SELECT TOP 8 *  FROM Employee;


SELECT TOP 40 PERCENT *  FROM Employee;

SELECT TOP 60 PERCENT *  FROM Employee;

SELECT TOP 80 PERCENT *  FROM Employee;


------------------DISTINCT OPERATOR IN SQL-------------

SELECT DISTINCT FIRSTNAME FROM Employee;



------------------IN OPERATOR IN SQL-------------

SELECT * FROM Employee WHERE Position IN ('MANAGER','Developer');

------------------NOT IN OPERATOR IN SQL-------------

SELECT * FROM Employee WHERE Position  NOT IN ('MANAGER','Developer');
