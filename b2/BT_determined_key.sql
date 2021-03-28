create database if not exists customer_manager;

use customer_manager;
create table customers(
customer_number int primary key,
fullname varchar (50) not null,
address varchar(50)not null,
email varchar(50),
phone int(9) unique
);
insert into customers(customer_number,fullname,address,email,phone)
value
(1,'thangdinh','Đà nẵng','abc@gmail.com','0914123456'),
(2,'gau gau','Đà nẵng','abc1@gmail.com','0914123457');


create table accounts(
id_account int primary key,
type_account varchar(50) not null,
openday date,
extra_money double not null,
id_customer int,
foreign key(id_customer)references customers(customer_number)
);

insert into accounts(id_account,type_account,openday,extra_money,id_customer)
value
(3,'vip','2021-12-12',121.121,1),
(4,'normal','2021-12-03',121.444,2);

create table transactions(
id_transaction int primary key,
money double not null,
time_of_transaction datetime,
`description` varchar(100),
id_account int ,
foreign key (id_account) references accounts(id_account)
);
insert into transactions(id_transaction,money,time_of_transaction,`description`,id_account)
value
(5,5.555,'2020-11-22 11:11:11','đóng học phí ',3),
(6,5.777,'2020-11-22 12:12:12','đóng học phí ',4);
