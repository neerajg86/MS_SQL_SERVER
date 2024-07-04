Create Database Practice;

Use Practice;

Create Table Student_bio_data(
std_id int,
std_name varchar(50),
father_name varchar(50),
Roll_no bigint,
class varchar(50));

Select * from Student_bio_data; ---Display Table

insert into Student_bio_data values(1,'Neeraj','Ram',1,'5th');  ---insert data into Tables


insert into Student_bio_data(std_id,std_name,father_name,Roll_no,class) values(2,'Pankaj','Modi',2,'5th'); ---insert data into Tables


insert into Student_bio_data values(8,'Narendra','Ramayana',8,'5th'),       ---insert Multiple data into Tables
(3,'Satyansh','Pavan',3,'5th'),
(4,'Ramesh','Rao',4,'5th'),
(5,'Naresh','Rahul',5,'5th'),
(6,'Shayam','Parul',6,'5th'),
(7,'Rajnikant','Rajkumar',7,'5th');



---Update Command

Update Student_bio_data
set class = '6th' where std_id=5;


---Delete  Query

Delete from Student_bio_data where std_id=7;

Select * from Student_bio_data; ---Display Table


--- Truncate Query

Truncate Table Student_bio_data;