create database [Sample]
create table Customer(
Id int ,
FirstName nvarchar(40) not null,
LastName nvarchar(40),
City nvarchar(40),
Country nvarchar(40),
Phone nvarchar(20),
Primary key(Id)
);
create index idx_Name on Customer(FirstName,LastName);
create table [Order](
Id int,
OrderDate datetime not null,
OrderNumber nvarchar(40),
CustomerId int,
TotalAmount decimal(12,2),
Primary key(Id),
Foreign key(CustomerId) references Customer(Id)
);
create index idx_CustomerId on [Order](CustomerId);
create index idx_OrderDate on [Order](OrderDate);
create table Product(
Id int,
ProductName nvarchar(40),
UnitPrice decimal(12,2),
Package nvarchar(30),
IsDiscontinued bit,
primary key (Id)
);
create index idx_SupplierId on Product(Id);
create index idx_ProductName on Product(ProductName);
create table OrderItem(
Id int,
OrderId int,
ProductId int,
UnitPrice decimal(12,2),
Quantity int,
primary key (Id),
Foreign key (OrderId) references [Order](Id),
foreign key (ProductId) references Product(Id),
);
create index idx_OrderId on OrderItem (OrderId);
create index idx_ProductId on OrderItem(ProductId);
insert into Customer(Id,FirstName,LastName,City,Country,Phone)
values('1','Alfreds','Futterkiste','Berlin','Germany','020-1234567'),
('2','Berglunds','snabbköp','Luleå','Sweden','010-2345678'),
('3','Bon','app','Marseille','	France','030-1234567'),
('4','Drachenblut','Delikatessend','Aachen','Germany','040-3456789'),
('5','Eastern ','Connection','London','UK','050-4567891'),
('6','Franchi','S.p.A.','Torino','Italy','060-5678912'),
('7','Rancho ','grande','Buenos Aires','Argentina','070-6789123');
insert into [Order] (Id,OrderDate,OrderNumber,CustomerId,TotalAmount)
values('101','2022-01-20','1234','1','800'),
('102','2022-02-14','2345','2','900'),
('103','2022-02-17','3456','3','1000'),
('104','2022-03-03','4567','4','1100'),
('105','2022-04-26','5678','5','1200'),
('106','2021-12-20','6789','6','1300'),
('107','2020-04-26','7891','7','1400');
insert into Product(Id,ProductName,UnitPrice,Package,IsDiscontinued)
values('1','Chai','10','Chais','0'),
('2','Chang','75','Foil sealed bags','1'),
('3','Tofu','25','Rigid boxes','1'),
('4','Mishi Kobe Niku','110','Plastic boxes','0'),
('5','Carnarvon Tigers','60','Plastic boxes','1'),
('6','Pavlova','100','Poly bags','0'),
('7','Ipoh Coffee','8','Rigid boxes','1');
insert into OrderItem (Id,OrderId,ProductId,UnitPrice,Quantity)
values('1001','101','1','10','80'),
('1002','102','2','75','12'),
('1003','103','3','25','40'),
('1004','104','4','110','10'),
('1005','105','5','60','20'),
('1006','106','6','100','13'),
('1007','107','7','8','175');
select * from Customer;
select * from Customer where Country like '[A_I]%';
CharIndex
Substring
left
select * from Customer where CHARINDEX('i',Lastname)=3;
select * from Customer where CHARINDEX('i',FirstName)=3;


