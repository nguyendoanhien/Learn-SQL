use tempdb;

if exists (select * from sysobjects where name='Sales_Order' and type='U')
drop table Sales_Order;

CREATE TABLE Sales_Order
(
	Customer varchar(20), 
	Product varchar(10), 
	Quantity int
)

insert into Sales_Order values ('Minh Thu',  	 'Laptop',  	3);
insert into Sales_Order values ('Minh Thu',  	 'iPhone',  	2);
insert into Sales_Order values ('Minh Thu',  	 'Laptop',  	5);
insert into Sales_Order values ('Tuan Anh',  	 'Laptop',  	3);
insert into Sales_Order values ('Tuan Anh',  	 'iPhone',  	3);
insert into Sales_Order values ('Tuan Anh',  	 'iPhone',  	4);

SELECT * FROM Sales_Order;

SELECT * FROM Sales_Order
PIVOT (SUM(Quantity) FOR Product IN ([Laptop],[iPhone])) AS PivotedOrder;

SELECT Customer, [Laptop] FROM 
(SELECT * FROM Sales_Order) AS OriginalOrder
PIVOT (SUM(Quantity) FOR Product IN ([Laptop],[iPhone])) AS PivotedOrder;


if exists (select * from sysobjects 
		where name='Sales_PivotedOrder' and type='U')
drop table Sales_PivotedOrder;

CREATE TABLE Sales_PivotedOrder
(
	Customer varchar(20), 
	Laptop int, 
	iPhone int
);

insert into Sales_PivotedOrder values ('Minh Thu',  	 8,  	2);
insert into Sales_PivotedOrder values ('Tuan Anh',  	 3,  	7);

select * from Sales_PivotedOrder

SELECT Customer, Product, Quantity FROM Sales_PivotedOrder
UNPIVOT (Quantity FOR Product IN ([Laptop],[iPhone])) AS UnPVT
