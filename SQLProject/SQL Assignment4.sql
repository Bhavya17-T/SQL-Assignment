select TotalAmount,ShipName from [Order] where SuppliedBy like 'Exitic Liquids';
alter table Employee
add JoiningDate datetime;
select * from Employee order by joiningdate;
select * from Employee Order By joiningdate DESC;
select ProductName,UnitPrice from Product order by UnitPrice desc;
alter table  Product
add UnitinStock int;
alter table  Product
add UnitonOrder int;
select ProductName,UnitonOrder,UnitinStock from Product where ((UnitinStock)=0);
select ProductName,UnitonOrder,UnitinStock from Product where ((UnitinStock)<UnitonOrder);
select Category,SuppliedBy from Product;
insert into Customer(Id,FirstName,LastName)
select Id,OrderNumber,OrderDate from [Order];
select * from Customer;
select CustomerId,COUNT(DISTINCT OrderNumber),
MAX( TotalAmount )
from [Order]
group by CustomerId
order by 2 desc;
select ID from Customer where 
substring(FirstName,len(FirstName)-1,2)='RA';
alter table Employee
add CompanyName nvarchar(50);
select Substring(CompanyName,1,6) as FirstWord from employee;




