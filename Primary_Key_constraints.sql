CREATE TABLE Employee (
    EmployeeID INT not null unique ,
    FirstName NVARCHAR(50) not null,
    LastName NVARCHAR(50) not null,
    Position NVARCHAR(50),
    HireDate DATE,
    Salary DECIMAL(10, 2)
);



INSERT INTO Employee (EmployeeID,FirstName, LastName, Position, HireDate, Salary)
VALUES
(1,'John', 'Doe', 'Manager', '2022-01-15', 75000.00),
(2,'Jane', 'Smith', 'Developer', '2021-07-30', 68000.00),
(3,'Emily', 'Jones', 'Designer', '2023-03-22', 62000.00),
(4,'Michael', 'Brown', 'Developer', '2020-11-05', 70000.00),
(5,'Jessica', 'Davis', 'QA Engineer', '2019-05-14', 55000.00);


INSERT INTO Employee (EmployeeID,FirstName, LastName, Position, HireDate, Salary)
VALUES
(1,'John', 'Doe', 'Manager', '2022-01-15', 75000.00);

---Violation of UNIQUE KEY constraint 'UQ__Employee__7AD04FF0EADE90E2'.
---Cannot insert duplicate key in object 'dbo.Employee'. 
---The duplicate key value is (1).


---PRIMARY KEY CONSTRAINTS

CREATE TABLE voter_list (
    VoterID INT  PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    Gender CHAR(1),
    Address VARCHAR(255),
    City VARCHAR(50),
    State VARCHAR(50),
    ZipCode VARCHAR(10)
);

INSERT INTO voter_list (VoterID,FirstName, LastName, DateOfBirth, Gender, Address, City, State, ZipCode)
VALUES 
(1,'John', 'Doe', '1980-05-15', 'M', '123 Elm St', 'Springfield', 'IL', '62701'),
(2,'Jane', 'Smith', '1992-07-22', 'F', '456 Oak St', 'Springfield', 'IL', '62701'),
(3,'Emily', 'Jones', '1985-12-30', 'F', '789 Pine St', 'Naperville', 'IL', '60540'),
(4,'Michael', 'Brown', '1978-03-02', 'M', '101 Maple Ave', 'Chicago', 'IL', '60605'),
(5,'Sarah', 'Davis', '1990-11-11', 'F', '202 Birch Rd', 'Peoria', 'IL', '61614');


Select * from voter_list; --- Display the Table


INSERT INTO voter_list (VoterID,FirstName, LastName, DateOfBirth, Gender, Address, City, State, ZipCode)
VALUES 
(1,'John', 'Doe', '1980-05-15', 'M', '123 Elm St', 'Springfield', 'IL', '62701');

---Violation of PRIMARY KEY constraint 'PK__voter_li__12D25BD8DC3B2107'

INSERT INTO voter_list (FirstName, LastName, DateOfBirth, Gender, Address, City, State, ZipCode)
VALUES 
('John', 'Doe', '1980-05-15', 'M', '123 Elm St', 'Springfield', 'IL', '62701');

---Cannot insert the value NULL into column 'VoterID',
---table 'Practice.dbo.voter_list'; column does not allow nulls. INSERT fails.
INSERT INTO voter_list (VoterID,FirstName, LastName, DateOfBirth, Gender, Address, City, State, ZipCode)
VALUES 
(6,'Julia', 'Doe', '1988-08-15', 'F', '198 Elm St', 'Queens', 'IL', '98531');

Select * from voter_list; --- Display the Table


---Drop Query 

drop table voter_list;

Select * from voter_list; --- Invalid object name 'voter_list'.