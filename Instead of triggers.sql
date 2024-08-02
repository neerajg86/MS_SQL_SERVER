Create table Tr_Customer(c_id int,
c_name varchar(50));


create trigger tr_customer_insert
on Tr_Customer
instead of Insert
as 
	Begin
			print 'You are Not allowed to insert data in this Table';
	end

insert into Tr_Customer values(1,'Neeraj')

create trigger tr_customer_delete
on Tr_Customer
instead of delete
as
begin
		print ' You are not allowed to delete anything in this Table'
end

Delete from Tr_Customer where c_id=1;


insert into Tr_Customer values(3,'Ram')

Create table Customer_Audit(Audit_id int Primary key identity,
Audit_info varchar(max));

Create trigger tr_Customer_Instead_Audit
on TR_Customer
Instead of insert 
as
begin
	insert into Customer_Audit Values('someone tries to insert data in customer Table at:'+Cast(getdate() as Varchar(50)));
end

Insert into Tr_Customer values(4,'Pawan')

sp_helptext  tr_Customer_Instead_Audit


