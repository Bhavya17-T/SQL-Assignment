select Id from Customer where Phone like '030-0074321';
select ProductName from Product where Category like 'seafood';
select Id, FirstName,LastName from Customer where City not like 'London';
select Id from Product where ProductName like 'Chai';
alter table Employee
add DeptName nvarchar(40);
alter table Employee
add Ratings int;
select EmpName,DeptName,Ratings from Employee;

