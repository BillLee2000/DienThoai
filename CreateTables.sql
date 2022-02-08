create table Customers (
	CustomerID varchar(10) not null constraint PK_Customers primary key,
	Email varchar(50),
	PhoneNumber varchar(11) not null,
	FName nvarchar(30) not null,
	LName nvarchar(30) not null,
	Pword varchar(50) not null
)

create table Categories  (
	CategoryID varchar(10) not null primary key,
	CategoryName nvarchar(50) not null
)

create table Food (
	FoodID varchar(10) not null constraint PK_Food primary key,
	FoodName nvarchar(50) not null,
	Quantity int,
	UnitPrice float,
	CategoryID varchar(10) references Categories(CategoryID)
)

create table Orders (
	OrderID varchar(10) not null constraint PK_Orders primary key,
	OderDate datetime,
	CustomerID varchar(10) references Customers(CustomerID),
	Quantity int,
	PickupDate datetime
)

create table OrderItems (
	OrderID varchar(10) not null,
	FoodID varchar(10) not null,
	constraint PK_OrderItems primary key (OrderID, FoodID),
	Quantity int,
	UnitPrice float
)

--- Drop tables
drop table OrderItems;
drop table Food;
drop table Orders;
drop table Customers;
drop table Categories;


---Categories Data
delete from Categories;
insert into Categories values ('CKV', N'Món khai vị');
insert into Categories values ('CC', N'Món chính');
insert into Categories values ('CDU', N'Đồ uống');
insert into Categories values ('CCX', N'Món chiên xào');


--- Food Data
delete from Food;
---Mon khai vi
insert into Food values ('F1', N'Salad Cá Ngừ', 100, 75000, 'CKV', 'salad-ca-ngu.jpg');
insert into Food values ('F2', N'Gỏi Trộn', 100, 60000, 'CKV', 'goi-tron.jpg');
insert into Food values ('F3', N'Súp Cua', 100, 70000, 'CKV', 'sup-cua.jpg');
insert into Food values ('F4', N'Salad Gà', 100, 75000, 'CKV', 'salad-ga.jpg');
insert into Food values ('F5', N'Gỏi Sứa', 100, 60000, 'CKV', 'goi-sua.jpg');
insert into Food values ('F6', N'Súp Gà', 100, 70000, 'CKV', 'sup-ga.jpg');

---Mon chinh
insert into Food values ('F7', N'Mì Ý', 100, 150000, 'CC', 'mi-y.jpg');
insert into Food values ('F8', N'Pasta', 100, 14000, 'CC', 'pasta.jpg');
insert into Food values ('F9', N'Gỏi Thailan', 100, 150000, 'CC', 'goi-thai-lan.jpg');
insert into Food values ('F10', N'Cơm Dương Châu', 100, 75000, 'CC', 'com-duong-chau.jpg');
insert into Food values ('F11', N'Mì Xào', 100, 60000, 'CC', 'mi-xao.jpg');
insert into Food values ('F12', N'Gà Luộc', 100, 70000, 'CC', 'ga-luoc.jpg');

---Do uong
insert into Food values ('F13', N'Coca', 100, 10000, 'CDU', 'coca.jpg');
insert into Food values ('F14', N'Beer', 100, 10000, 'CDU', 'beer.jpg');
insert into Food values ('F15', N'Nước suối', 100, 10000, 'CDU', 'nuoc-suoi.jpg');
insert into Food values ('F16', N'Trà Sữa', 100, 20000, 'CDU', 'tra-sua.jpg');
insert into Food values ('F17', N'Cafe', 100, 20000, 'CDU', 'cafe.jpg');
insert into Food values ('F18', N'Nước Ép Táo', 100, 50000, 'CDU', 'nuoc-ep-tao.jpg');

---Mon chien xao
insert into Food values ('F19', N'Rau Cải Xào', 100, 100000, 'CCX', 'rau-cai-xao.jpg');
insert into Food values ('F20', N'Gà Chiên', 100, 120000, 'CCX', 'ga-chien.jpg');
insert into Food values ('F21', N'Cơm Chiên', 100, 110000, 'CCX', 'com-chien.jpg');
insert into Food values ('F22', N'Bò Chiên', 100, 85000, 'CCX', 'bo-chien.jpg');
insert into Food values ('F23', N'Chân Gà Chiên', 100, 60000, 'CCX', 'chan-ga-chien.jpg');
insert into Food values ('F24', N'Cá Chiên', 100, 70000, 'CCX', 'ca-chien.jpg');
select * from Food;

--- Customers
insert into Customers values ('C01', 'abc@gmail.com', '0123456789', 'Nhan', 'Dang', 'abc1234');



select * from Categories;

select * from Food;

select * from Food where FoodName = 'Gỏi Trộn';