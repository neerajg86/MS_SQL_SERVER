CREATE SCHEMA VOTER;


CREATE TABLE VOTER.City (
    CityID INT PRIMARY KEY,
    CityName NVARCHAR(100) NOT NULL
);


CREATE TABLE VOTER.Voter (
    VoterID INT PRIMARY KEY,
    VoterName NVARCHAR(100) NOT NULL,
    Age INT NOT NULL,
    CityID INT,
    FOREIGN KEY (CityID) REFERENCES VOTER.City(CityID)
);


-- Insert data into City table
INSERT INTO VOTER.City (CityID, CityName)
VALUES (1, 'New York'),
       (2, 'Los Angeles'),
       (3, 'Chicago');

-- Insert data into Voter table
INSERT INTO VOTER.Voter (VoterID, VoterName, Age, CityID)
VALUES (1, 'John Doe', 30, 1),
       (2, 'Jane Smith', 25, 2),
       (3, 'Alice Johnson', 45, 3);


	   SELECT * FROM VOTER.City;
	   SELECT * FROM VOTER.VOTER;

	   ALTER TABLE VOTER.Voter
	   DROP CONSTRAINT FK_Voter_City;  ---DROP FOREIGN KEY


---------------------------------------Add foreign key constraint to the Voter table---------------------------------------------
	   ALTER TABLE VOTER.Voter
	   ADD CONSTRAINT FK_CITY
	   FOREIGN KEY(CityID) 
	   REFERENCES VOTER.City(CityID) ---cloumn name is same as table to references in here.
       on delete cascade
	   on update No Action;

	  DELETE FROM VOTER.City WHERE CityID= 2;


	  ALTER DATABASE SIT MODIFY NAME = STUDENT; --- RENAME DATABASE NAME 


	  EXECUTE sp_rename 'TEST' , 'TEST1'; ---RENAME TABLE NAME IN BUILT STORED PROCEDURE.


	  EXECUTE sp_renamedb 'STUDENT' , 'SIT';  ---  RENAME DATABASE WITH IN BUILT STORED PROCEDURE.


	  ALTER TABLE VOTER.CITY ADD CITY_STATE VARCHAR(50); --- ADD COLUMN IN EXISTING TABLE.


	  ALTER TABLE VOTER.CITY ALTER COLUMN CITY_STATE INT  ; ---CHANGE COULMN DATATYPE 


	  ALTER TABLE VOTER.CITY DROP COLUMN CITY_STATE; --- DROP COUMN IN EXISTING TABLE.


	-----------------------------------ALTER WITH SQL CONSTRAINTS.---------------------------------------------------------    
	-----------------------------------NOT NULL CONSTRAINTS.---------------------------------------------------------------

	SELECT * FROM DBO.TEST1;

	ALTER TABLE TEST1 ALTER COLUMN TEST_TEXT VARCHAR(50) NOT NULL;

	INSERT INTO TEST1(TEST_ID,TEST_AGE) VALUES(1,56);
	---Cannot insert the value NULL into column 'TEST_TEXT', table 'Practice.dbo.TEST1'; column does not allow nulls. INSERT fails.

	
	INSERT INTO TEST1(TEST_ID,TEST_TEXT,TEST_AGE) VALUES(1,'NEERAJ',56);

	---------------------------------------UNIQUE  CONSTRAINTS.----------------------------------------

	ALTER TABLE TEST1 ADD UNIQUE(TEST_ID);

	
	INSERT INTO TEST1(TEST_ID,TEST_TEXT,TEST_AGE) VALUES(1,'NEERAJ',56);
	----Violation of UNIQUE KEY constraint 

	ALTER TABLE TEST1 DROP CONSTRAINT UQ__TEST1__77E201E29D37C699; --- DROP UNIQUE  CONSTRAINTS

	---------------------------------------PRIMARY KEY CONSTRAINTS.----------------------------------------

	ALTER TABLE TEST1 ADD PRIMARY KEY(TEST_ID);

	ALTER TABLE TEST1 DROP CONSTRAINT PK__TEST1__77E201E3AC510F65;


	---------------------------------------FOREIGN KEY CONSTRAINTS.----------------------------------------


	SELECT * FROM DBO.TEST1;

	CREATE TABLE TEST2(
	TEST2_ID INT PRIMARY KEY,
	TEST2_TEXT VARCHAR(MAX),
	TEST2_GENDER CHAR,
	TEST_ID INT 
	);

	SELECT * FROM TEST2;

	ALTER TABLE TEST2 ADD FOREIGN KEY(TEST_ID) REFERENCES TEST1(TEST_ID);

	ALTER TABLE TEST2 DROP CONSTRAINT FK__TEST2__TEST_ID__503BEA1C;

	---------------------------------------CHECK CONSTRAINTS.----------------------------------------

	ALTER TABLE TEST1 ADD CHECK(TEST_AGE >=18);

	SELECT * FROM DBO.TEST1;

	INSERT INTO TEST1 VALUES(2,'PANKAJ',12);---The INSERT statement conflicted with the CHECK constraint "CK__TEST1__TEST_AGE__51300E55"

	INSERT INTO TEST1 VALUES(2,'PANKAJ',22);

	ALTER TABLE TEST1 DROP CONSTRAINT CK__TEST1__TEST_AGE__51300E55;

	---------------------------------------DEFAULT CONSTRAINTS.----------------------------------------

	SELECT * FROM TEST2;

	ALTER TABLE TEST2 ADD DEFAULT 'M' FOR TEST2_GENDER;

	INSERT INTO TEST2(TEST2_ID,TEST2_TEXT,TEST_ID) VALUES(1,'PANKAJ',22);

	ALTER TABLE TEST2 DROP CONSTRAINT DF__TEST2__TEST2_GEN__5224328E;


	---------------------------------------ALIAS IN SQL.----------------------------------------

	SELECT * FROM TEST1 ;

	SELECT * FROM TEST2;

	INSERT INTO TEST2(TEST2_ID,TEST2_TEXT,TEST_ID) VALUES(2,'RAHUL',32);

	SELECT TEST2_ID AS EMPLOYEE_ID FROM TEST2;

	SELECT TEST2_ID AS EMPLOYEE_ID,TEST2_TEXT AS EMPLOYEE_NAME FROM TEST2;