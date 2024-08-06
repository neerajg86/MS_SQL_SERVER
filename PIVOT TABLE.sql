Create Table Pivottbl(
student Varchar(50),
Sub Varchar(50),
Marks int);


Insert into Pivottbl values('Neeraj','Hindi',89),
('Dev','English',81),
('Prem','Marathi',80),
('Neeraj','English',60),
('Dev','Hindi',59),
('Prem','English',79),
('Neeraj','Marathi',68),
('Dev','Marathi',69),
('Prem','Hindi',49);

Select * from Pivottbl;

Select  * from Pivottbl
PIVOT(
Sum(Marks)
For Sub
IN(Hindi,
English,
Marathi)
)AS PIVOTTAble


CREATE TABLE SalesData (
    Product VARCHAR(50),
    Region VARCHAR(50),
    SalesAmount DECIMAL(10, 2),
    SaleDate DATE
);


INSERT INTO SalesData (Product, Region, SalesAmount, SaleDate) VALUES
('Product A', 'North', 100.00, '2024-01-01'),
('Product A', 'South', 150.00, '2024-01-01'),
('Product A', 'East', 200.00, '2024-01-01'),
('Product B', 'North', 300.00, '2024-01-01'),
('Product B', 'South', 250.00, '2024-01-01'),
('Product B', 'East', 100.00, '2024-01-01'),
('Product C', 'North', 400.00, '2024-01-01'),
('Product C', 'South', 350.00, '2024-01-01'),
('Product C', 'East', 300.00, '2024-01-01');


Select * from SalesData

Select * from SalesData
PIVOT(Sum(SalesAmount)
For Region
IN(North,
South,
East)
) AS PIVOTTABLE

CREATE TABLE SalesData2 (
	ID int Identity(1,1),
    Product VARCHAR(50),
    Region VARCHAR(50),
    SalesAmount DECIMAL(10, 2),
    SaleDate DATE
);


INSERT INTO SalesData2 (Product, Region, SalesAmount, SaleDate) VALUES
('Product A', 'North', 100.00, '2024-01-01'),
('Product A', 'South', 150.00, '2024-01-01'),
('Product A', 'East', 200.00, '2024-01-01'),
('Product B', 'North', 300.00, '2024-01-01'),
('Product B', 'South', 250.00, '2024-01-01'),
('Product B', 'East', 100.00, '2024-01-01'),
('Product C', 'North', 400.00, '2024-01-01'),
('Product C', 'South', 350.00, '2024-01-01'),
('Product C', 'East', 300.00, '2024-01-01');

Select * from SalesData2

Select * from(SELECT Product,SaleDate,Region,SalesAmount FROM SalesData2 ) ResultSet
PIVOT (
Sum(SalesAmount)
For Region
IN(North,
South,East)
)As PIVOTTABLE