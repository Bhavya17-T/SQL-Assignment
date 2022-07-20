select * from Customer where Country='Germany';
select FirstName,LastName from Customer;
 alter table Customer
 add FaxNumber int;
 select FirstName,LastName from Customer where FaxNumber is not null;
 select * from Product where UnitPrice BETWEEN 10 AND 20;
 alter table [Order]
 add ShippingDate datetime;
 select ShippingDate from [Order] order by OrderDate;
 alter table [Order] 
 add ShipName nvarchar(50);
select Id,OrderDate from [Order] where (ShipName='La corne dabondance' AND ShippingDate between '2022-02-28' and '2022-05-05');
alter table Product
add SuppliedBy nvarchar(50);
select ProductName from Product where SuppliedBy ='Exotic Liquid';
select AVG(Quantity) AS "Average Quantity",ProductId from OrderItem GROUP BY ProductId;
alter table Product 
add Shippers nvarchar(50);
select ShipName from [Order]
UNION
select Shippers from Product;
create table Employee(Id int,
EmpName nvarchar(50),
ManagerName nvarchar(50));
insert into Employee (Id,EmpName,ManagerName)
values ('1','Nancy','Andrew'),
('2','Janet','Margaret'),
('3','Steven','Michael'),
('4','Robert','Laura'),
('5','Anne','Adam');
select EmpName,ManagerName from Employee;
alter table Product 
add Category nvarchar(50);
alter table Product 
add Priceafterdisc int;
select Id,ProductName,Priceafterdisc from Product;
alter table [Order]
add SuppliedBy nvarchar(50);
select TotalAmount,ShipName from [Order] where SuppliedBy like 'Exitic Liquids';

CharIndex  
Substring
left
select * from Customer where CHARINDEX('u',FirstName)=2
select * from Customer where CHARINDEX('u',LastName)=2