---------------------------------------LIKE OPERATOR IN SQL ----------------------------------------

SELECT * FROM Customer_tbl;

INSERT INTO [Practice].[dbo].[Customer_tbl] ([c_id], [c_name], [c_address], [city])
VALUES
     (11, 'Robert Harris', '808 Ash Ln', 'Oldtown'),
    (12, 'Linda Martin', '909 Cypress Ct', 'Newtown'),
    (13, 'James Thompson', '1010 Redwood Blvd', 'Uptown'),
    (14, 'Barbara Garcia', '1111 Maple St', 'Riverside'),
    (15, 'Charles Clark', '1212 Elm Ct', 'Brookside'),
    (16, 'Mary Lewis', '1313 Pine Dr', 'Lakeside'),
    (17, 'Thomas Walker', '1414 Oak St', 'Forestview'),
    (18, 'Patricia Hall', '1515 Birch Ct', 'Seaview'),
    (19, 'Christopher Allen', '1616 Cedar Ln', 'Baytown'),
    (20, 'Karen Young', '1717 Spruce St', 'Capetown');


	SELECT * FROM Customer_tbl WHERE C_NAME LIKE 'A%';    ----FINDS VALUES THAT STARTS WITH 'A'

	SELECT * FROM Customer_tbl WHERE C_NAME LIKE 'B%';    ----FINDS VALUES THAT STARTS WITH 'B'

	
	SELECT * FROM Customer_tbl WHERE C_NAME LIKE '%A';    ----FINDS VALUES THAT ENDS WITH 'A'


	
	SELECT * FROM Customer_tbl WHERE C_NAME LIKE '%SA%';  ----FINDS VALUES THAT HAVE 'SA' IN ANY POSITION


	
SELECT * FROM Customer_tbl;

SELECT * FROM Customer_tbl WHERE C_NAME LIKE 'A___';  ----FINDS VALUES THAT HAVE 'A' IN FIRST POSITION AND AFTER  THAT 3 CHAR VALUE IN STRING

SELECT * FROM Customer_tbl WHERE C_NAME LIKE '__A'; ----FINDS VALUES THAT HAVE 'A' IN THIRD POSITION


SELECT * FROM Customer_tbl WHERE C_NAME LIKE '[A,B,C]%'; -----FINDS VALUES THATS HAVE ANY 'A','B','C' IN STARTING


SELECT * FROM Customer_tbl WHERE C_NAME LIKE '%[A,B,C]';  -----FINDS VALUES THATS HAVE ANY 'A','B','C' IN ENDING.


SELECT * FROM Customer_tbl WHERE C_NAME LIKE '[A-Z]%'; 



SELECT * FROM Customer_tbl WHERE C_NAME LIKE '_A%';


SELECT * FROM Customer_tbl WHERE C_NAME LIKE 'B%A';


SELECT * FROM Customer_tbl WHERE c_address LIKE '1%T'; ---- FINDS ANY VALUES THAT STARTS WITH '1' AND END WITH 'T'.
