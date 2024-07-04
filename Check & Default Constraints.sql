---Check Constraints


CREATE TABLE voter_list1 (
    VoterID INT PRIMARY KEY,
    FirstName VARCHAR(50),
	Age int Check(Age >=18)
);

Alter TABLE voter_list1 
Alter Column Age int  Not null;

insert into voter_list1 values(2,'Ram',25);


insert into voter_list1 values(2,'Ram',17);

---The INSERT statement conflicted with the CHECK constraint "CK__voter_list1__Age__73BA3083"

Select * from voter_list1;

	Drop Table voter_list1;

---Default constraint

	Drop Table voter_list2;

CREATE TABLE voter_list2 (
    VoterID INT PRIMARY KEY,
    FirstName VARCHAR(50),
	Age int  Default 18
);


Select * from voter_list2;



insert into voter_list2 values(1,'Ramesh',25);

insert into voter_list2 values(2,'Ram',45);

insert into voter_list2 values(3,'Neeraj',25);

insert into voter_list2 values(4,'Karnika'); --Column name or number of supplied values does not match table definition.


insert into voter_list2(VoterID,FirstName) values(5,'Nisha');


Select * from voter_list2;