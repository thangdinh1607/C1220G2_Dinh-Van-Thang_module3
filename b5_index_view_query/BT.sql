create database products_management;
use products_management;
create table Products(
id int primary key auto_increment,
productCode varchar (45),
productName varchar(45),
productPrice double,
productAmount int,
productDescription varchar(100),
productStatus varchar(30)
);

insert into Products(productCode,productName,productPrice,productAmount,productDescription,productStatus)
value
('A123','Computer',100.555,1,'Arock','Stocking'),
('A124','Computer',100.555,1,'Arock','Stocking'),
('A125','Computer',100.555,1,'Arock','Stocking'),
('A126','Computer',100.555,1,'Arock','Stocking'),
('A127','Computer',100.555,1,'Arock','Stocking');

create index idx_idProduct on Products(id);
select *
from Products
where id = 4;

 create index idx_productname_and_productPrice on Products(productName,productPrice);
explain select id,productName,productPrice
from Products
where productName = 'Computer';

create view showProduct as
select productCode,productName,productPrice,productStatus
from Products;


select *
from showProduct;

drop view showProduct;


delimiter //
create procedure showProducts()
begin
select *
from Products;
end;
//delimiter ;

call showProducts();

delimiter // 
create procedure addNewProduct(aproductCode varchar (45),aproductName varchar(45),aproductPrice double,aproductAmount int,aproductDescription varchar(100),aproductStatus varchar(30))
begin
insert into Products(productCode,productName,productPrice,productAmount,productDescription,productStatus)
value
(aproductCode,aproductName,aproductPrice,aproductAmount,aproductDescription,aproductStatus),
end;
delimiter // ;
call addNewProduct('A127','Computer',100.555,1,'Arock','Stocking');
