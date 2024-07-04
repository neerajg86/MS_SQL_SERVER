-----------------------Creating a Multi-Statement Table-Valued Function------------------------------

/*A multi-statement table-valued function (MSTVF) in SQL Server
is a type of user-defined function that returns a table and
can contain multiple SQL statements. Unlike inline table-valued functions,
which consist of a single SELECT statement, MSTVFs allow for more complex logic,
including variable declarations, control-of-flow statements, and multiple 
DML operations (INSERT, UPDATE, DELETE).
*/

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    OrderDate DATE,
    CustomerID INT,
    Amount DECIMAL(10, 2)
);

INSERT INTO Orders (OrderID, OrderDate, CustomerID, Amount) VALUES
(1, '2024-01-10', 101, 150.00),
(2, '2024-02-15', 102, 200.00),
(3, '2024-03-20', 103, 250.00),
(4, '2024-04-25', 104, 300.00);

Select * from orders;


Create function GetOrderbyDate
(
	@startdate Date,
	@enddate Date
)
returns @mytable Table(
	OrderID INT ,
    OrderDate DATE,
    CustomerID INT,
    Amount DECIMAL(10, 2),
	Ordermonth Varchar(20))
As
begin
	 insert into @mytable(OrderId,OrderDate,customerID,Amount,Ordermonth)
	 Select Orderid,orderdate,CustomerId,Amount,Datename(Month,OrderDate)as Ordermonth from Orders
	 Where Orderdate Between @startdate and @enddate
	 return;
end


select *from dbo.GetOrderbyDate('2024-02-15','2024-03-20');
	
	

