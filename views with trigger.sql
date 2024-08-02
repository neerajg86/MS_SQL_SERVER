Create table employee_vw(e_id int,
e_name varchar(50),e_address varchar(50));


Insert into employee_vw values(1,'Neeraj','Mumbai'),(2,'Pankaj','Bhopal'),
(3,'Ashutosh','Pune'),(4,'Sachin','Lucknow')

Create Table Salary_Details(e_id int,
Salary_Position Varchar(50),
Salary int);

insert into Salary_Details values(1,'accountant',45000),(2,'HR',6500),(3,'Manager',690000)

Create view vw_employeesdetailscheck
as
Select A.e_id,A.e_name,B.Salary_Position,B.Salary from employee_vw as A
inner join Salary_Details as B
on A.e_id=B.e_id;

Select * from vw_employeesdetailscheck;

Alter trigger tr_insteadofemployee
on vw_employeesdetailscheck
instead of delete
as
begin
	delete from employee_vw  where e_id in (select e_id from deleted)
	delete from Salary_Details where e_id in (select e_id from  deleted)
end

delete from vw_employeesDetailscheck where  e_id = 3;