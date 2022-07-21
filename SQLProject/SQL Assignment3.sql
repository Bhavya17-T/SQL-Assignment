select ProductName from Product join OrderItem
on Product.Id=OrderItem.ProductId
join [Order] on OrderItem.OrderId=[Order].Id
join Customer on [Order].CustomerId=Customer.Id
where Phone='030-0074321';
select ProductName from Product where Category like 'seafood';
select OrderNumber from [Order] join Customer on [Order] .CustomerId=Customer.Id where City not like 'london';
select Id from Product where ProductName like 'Chai';
alter table Employee
add DeptName nvarchar(40);
alter table Employee
add Ratings int;
select EmpName,DeptName,Ratings from Employee;

