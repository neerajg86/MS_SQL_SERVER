

CREATE VIEW VW_EMPLOYEE
AS 
SELECT * FROM EMPLOYEE AS A
INNER JOIN Customer_tbl AS B
ON A.EmployeeID = B.c_id;


SELECT * FROM VW_EMPLOYEE;



CREATE VIEW VW_EMPLOYEE1
AS 
SELECT A.FirstName,A.LastName,A.Position,A.Salary,B.c_name,B.c_address,B.city FROM EMPLOYEE AS A
INNER JOIN Customer_tbl AS B
ON A.EmployeeID = B.c_id;



SELECT * FROM VW_EMPLOYEE1;


--------------------------ROW LEVEL SECURITY APPLY-------------------------------

CREATE VIEW VW_EMPLOYEE2
AS 
SELECT * FROM EMPLOYEE AS A
INNER JOIN Customer_tbl AS B
ON A.EmployeeID = B.c_id WHERE Position='DEVELOPER' OR Position='QA ENGINEER';


SELECT * FROM VW_EMPLOYEE2;



SP_HELPTEXT VW_EMPLOYEE;


SP_HELPTEXT VW_EMPLOYEE1;


SP_HELPTEXT VW_EMPLOYEE2;


ALTER VIEW VW_EMPLOYEE2
AS 
SELECT * FROM EMPLOYEE AS A
INNER JOIN Customer_tbl AS B
ON A.EmployeeID = B.c_id WHERE Position='DEVELOPER';



SELECT * FROM VW_EMPLOYEE2;


DROP VIEW VW_EMPLOYEE2;


SELECT * FROM VW_EMPLOYEE2;
---Invalid object name 'VW_EMPLOYEE2'.


CREATE VIEW VW_EMPLOYEE3
AS
SELECT * FROM Customer_tbl;


SELECT * FROM VW_EMPLOYEE3;


INSERT INTO VW_EMPLOYEE3 VALUES(11,'MANISH','BHOJPUR','KANPUR');


SELECT * FROM VW_EMPLOYEE3;

UPDATE VW_EMPLOYEE3 
SET C_NAME = 'RAVISH'
WHERE C_NAME='MANISH';



SELECT * FROM VW_EMPLOYEE3;

SELECT * FROM Customer_tbl;

DELETE FROM VW_EMPLOYEE3  WHERE C_ID = 11;


SELECT * FROM VW_EMPLOYEE3;

SELECT * FROM Customer_tbl;


