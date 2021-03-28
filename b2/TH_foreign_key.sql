create database if not exists customer_management;

use customer_management;
create table customers(
id_customer int auto_increment primary key,
`name`  varchar (30) not null,
address varchar(100),
email varchar(100)
);

create table oders(
id int auto_increment primary key,
staff varchar(50),
id_customer int,
foreign key(id_customer)references customers(id_customer)
);

insert into customers(id_customer,`name`,address,email)
value
(1,'thang','da nang','abc@gmail.com'),
(2,'thang','da nang','abc@gmail.com'),
(3,'thang','da nang','abc@gmail.com'),
(4,'thang','da nang','abc@gmail.com');

insert into oders(id,staff,id_customer)
value
(5,'gau',1),
(6,'meo',2);

select*
from customers
left join oders
on customers.id_customer=oders.id;





