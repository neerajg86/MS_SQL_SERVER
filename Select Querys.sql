---Select Query


CREATE TABLE voter_list3 (
    VoterID INT  PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
	Age int Check(Age>=18),
    Gender CHAR(1),
);

ALTER TABLE voter_list3
ADD CONSTRAINT df_Age
DEFAULT 18 FOR Age;


insert into voter_list3 values(1,'Neeraj','Gupta',12,'M');
---The INSERT statement conflicted with the CHECK constraint "CK__voter_list3__Age__03F0984C".


insert into voter_list3(VoterID,FirstName,LastName,Gender) values(1,'Neeraj','Gupta','M');

Select * from voter_list3;


insert into voter_list3 values(8,'Harshal','Gupta',82,'M'),
(2,'Neeraj','Gupta',22,'M'),
(3,'Ramesh','Gupta',32,'M'),
(4,'Manish','Gupta',42,'M'),
(5,'Prashant','Gupta',52,'M'),
(6,'Tarun','Gupta',62,'M'),
(7,'Yogesh','Gupta',72,'M');


Select * from voter_list3;


Select * from voter_list3 where VoterID= 4;

Select * from voter_list3 where VoterID= 3 or VoterID= 5;


Select FirstName,LastName,Age from voter_list3 where VoterID= 6 or VoterID= 8;


Select * from voter_list3 order by FirstName ASC;


Select * from voter_list3 order by FirstName DESC;

Select FirstName from voter_list3 where VoterID= 8;


Select * from voter_list3 order by FirstName ASC,LastName DESC;


insert into voter_list3 values(9,'Zeevan','Zupta',47,'M');
insert into voter_list3 values(10,'Avinash','Akrupa',47,'M');

insert into voter_list3 values(11,'Zia','Aaram',40,'M');
insert into voter_list3 values(12,'Avinash','Zkrupa',67,'M');



Select * from voter_list3 order by FirstName ASC,LastName DESC;