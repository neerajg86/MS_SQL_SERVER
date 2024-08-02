create Table student (Student_Id int,
Student_Name Varchar(50),
S_location varchar(50));

----FOR INSERT----
create trigger tr_student_insert
on student 
after insert 
as 
begin
		print 'something happen to table';
end


insert into student values(1,'Neeraj','Mumbai');

alter trigger tr_student_insert
on student
after insert
as
begin
		select * from inserted
end

insert into  student values(2,'Ashutosh','Bhopal');


--------------For DELETE------------

Create trigger tr_student_delete
on student
after delete
as
begin
		select * from deleted
end

delete from student where Student_Id =1;

Select * from student

Create table Audit_Student(Audit_ID int primary Key identity,
Audit_Info varchar(max));

Create trigger tr_student_audit
on student
after insert 
as 
begin
		Declare @id int
		Select @id = Student_Id from inserted

		insert into Audit_Student values('Student with id' + Cast(@id as Varchar(50))+ ' is added at'+Cast(GetDate() as Varchar(50)));

end

Insert into Student values(1,'Neeraj','Mumbai')

Select * from Audit_Student

create trigger tr_student_audit_delete
on student
after delete 
as
begin
		declare @id int
		select @id=Student_ID from deleted
		insert into  Audit_Student Values
		('Student with id' + Cast(@id as Varchar(50))+ ' is deleted  at '+cast(getDate() as varchar(50)));

end

delete from student where student_id = 1;


create trigger trstudent_update
on student
after update
as
begin
		Select * from inserted
		select * from deleted
end

Select * from student

Update  Student Set  Student_Name ='Neeraj' where Student_id =2;