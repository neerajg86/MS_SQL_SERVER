---PRIMARY KEY & FOREIGN KEY 

Create Table Customer_tbl(
c_id int primary key,
c_name varchar(50),
c_address varchar(50),
city varchar(50));


Select * from Customer_tbl;

Insert into Customer_tbl Values(1,'NEERAJ','KALYAN','MAHARASHTRA');

Insert into Customer_tbl Values(2,'RAMESH','KALYAN','HYDERABAD'),
(3,'MANISH','SATARA','HYDERABAD'),
(4,'SATYANSH','KATIPURA','KOLKATA'),
(5,'VAIBHAV','KANPUR','UTTER PRADESH'),
(6,'AMAN','BANGOLARE','HYDERABAD'),
(7,'ZIA','BARELI','BIHAR'),
(8,'PANKAJ','PATNA','BIHAR'),
(9,'HARSHAL','MAHNAPUR','ASAAM'),
(10,'TARUN','PATLIPADA','GUJRAT');


Select * from Customer_tbl;


CREATE  TABLE ORDER_TBL(
ORD_ID INT PRIMARY KEY,
ITEM VARCHAR(50),
QUANTITY INT,
PRICE_OF_1 INT,
C_ID INT FOREIGN KEY REFERENCES CUSTOMER_TBL(C_ID));

INSERT INTO  ORDER_TBL VALUES(111,'HARDISK',56,600,6);


Select * from ORDER_TBL;

INSERT INTO  ORDER_TBL VALUES(222,'KEYBOARD',6,500,3),
(333,'USB',5,200,1),
(444,'RAM',6,900,2),
(555,'MOUSE',8,300,4),
(666,'MONITOR',6,500,5),
(777,'MOUSEPAD',2,60,6),
(888,'SCREENGUARD',1,600,4),
(999,'BUTTON',56,80,5),
(101,'POWER',5,900,9);

Select * from ORDER_TBL;


DELETE FROM Customer_tbl WHERE C_ID = 4;
---The DELETE statement conflicted with the REFERENCE constraint "FK__ORDER_TBL__C_ID__09A971A2".

ALTER TABLE ORDER_TBL DROP CONSTRAINT FK__ORDER_TBL__C_ID__09A971A2; ---DROPING fOREIGN KEY


ALTER TABLE ORDER_TBL ADD FOREIGN KEY(C_ID) REFERENCES CUSTOMER_TBL(C_ID);




DELETE FROM ORDER_TBL WHERE  C_ID=3; ---FIRST WE WE TO DELETE  ORDER_TBL DATA THEN CUSTOMER_TBL DATA


DELETE FROM Customer_tbl WHERE  C_ID=3;

Select * from ORDER_TBL;

Select * from Customer_tbl;
