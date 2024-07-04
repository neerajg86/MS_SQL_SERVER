/* User-defined functions (UDFs) in SQL are custom functions
created by users to encapsulate reusable logic in their SQL queries. 
These functions can be used to perform complex calculations or data 
manipulations that are not provided by SQL's built-in functions.

Types of User-Defined Functions
Scalar Functions
Table-Valued Functions

Scalar Functions
A scalar function returns a single value (scalar value) of a defined data type.
It takes one or more input parameters and performs operations to return a single result.
*/

/*
Example of a Scalar Function
Let's create a scalar function to calculate the age of a person based on their birth date.
We'll use SQL Server syntax for this example.
*/

-- Creating the scalar function

create function sqauare(@number as int )
returns int
as
begin
	return @number*@number
end;

select dbo.sqauare(6);


create table numbers(
value int);

select * from numbers ;

insert into numbers values(1),
(2),(3),(4),(5);


select *,dbo.sqauare(value) as squaredvalue from numbers;


/*
Example of a Scalar Function
Let's create a scalar function to calculate the age of a person based on their birth date.
We'll use SQL Server syntax for this example.
*/

alter function calculate_age ---defines a new function named CalculateAge that takes one parameter of type DATE.
(       
@birthday date)
returns int                  ---RETURNS INT specifies that the function will return an integer value.
as
begin
		declare @age int   ----24
		set @age  = datediff(year,@birthday,getdate())-  
			case 
				when month(@birthday) > month(getdate()) OR (month(@birthday) = month(getdate()) AND day(@birthday) > day(getdate()))
			                ---  05 > 6                      --- 05 = 6                             ---15 > 06
				then 1                                        
				else 0
			end
		return @age 
end


select dbo.calculate_age('2000-05-15');


create function Calculate_voter_age(
@voterage int)
returns varchar(100)
as
begin
		declare @str varchar(100)
		if @voterage >=18
		begin
			set @str='you are eligible to vote'
		end
		else
		begin
			set @str='you are not eligible to vote'
		end
	return @str
end

select dbo.calculate_voter_age(17);
