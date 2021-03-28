create database if not exists car_store;

use car_store;

create table customers(
id int primary key,
company_of_customer varchar (50) not null ,
last_name varchar(50) not null,
firt_name varchar(50) not null,
phone_number int(9) not null ,
address varchar (50) not null,
id_employee int,
foreign key (id_employee) references employees(id)
);
insert into customers(id,company_of_customer,last_name,firt_name,phone_number,address)
value
(1,'aaa','last_name','aaaa',123456789,'aaaaa');

create table productsline(
id int primary key,
describle varchar(100),
image varchar(100)
);
insert into productsline(id,describle,image)
value
(1,'aa','bb');

create table products(
id int auto_increment primary key,
product_name varchar(70) not null,
product_scale varchar(10) not null,
supplier varchar(50) not null,
quantity_in_stock int not null,
import_price double not null,
price double not null,
id_orders int,
foreign key(id_orders) references orders(ordernumber),
id_productline int ,
foreign key (id_productline) references productsline(id)
);
insert into products(id,product_name,product_scale,supplier,quantity_in_stock,import_price,price)
value
(1,'aaa','bbbb','cccc',1,2.0,3.0);

create table orders(
ordernumber int primary key,
day_of_purchase date not null,
day_of_request date not null,
day_of_delivery date not null,
quatity int not null,
`status` varchar(15) not null,
comments text,
unit_price double,
id_customer int,
foreign key(id_customer)references customers(id),
id_product int,
foreign key(id_product)references products(id)
); 
insert into orders(ordernumber,day_of_purchase,day_of_request,day_of_delivery,quatity,`status`,comments,unit_price)
value
(1,'2000-12-12','2000-12-12','2000-12-12',1,'aaa','asdasd',2.0);

create table payments(
id int primary key not null,
day_of_payment date not null,
money double not null,
id_customer int,
foreign key(id_customer) references customers (id)
);
insert into payments(id,day_of_payment,money)
value
(1,'2000-12-12',22.1);

create table manager(
id int primary key,
`name` varchar(30),
phone_number int(9),
email varchar(100)
);
insert into manager(id,`name`,phone_number,email)
value
(1,'thang',123123123,"email");

create table offices(
id int primary key not null,
address varchar(100) not null,
phone_number int (9) not null,
country varchar(30) not null
);
insert into offices(id,address,phone_number,country)
value
(1,'1111',123123123,'vietnam');

create table employees(
id int primary key,
`name` varchar(30),
email varchar(100),
`work` varchar(100),
id_manager int,
foreign key(id_manager)references manager(id),
id_offices int ,
foreign key (id_offices) references offices(id)
);
insert into employees(id,`name`,email,`work`)
value
(1,'name','abc@123.com','super man')


