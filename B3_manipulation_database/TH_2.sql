create database if not exists customer_management3;

use customer_management3;
create table customers(
customerNumber int primary key,
customerName varchar(50),
contactLastName varchar (50),
contactFirtName varchar (50),
phoneNumber int,
addressLine1 varchar(100),
addressLine2 varchar(100),
city varchar (30),
state varchar(30),
postalCode int,
country varchar(50),
salesRepEmployeeNumber int ,
creditLimit int
);
create table orders(
orderNumber int primary key,
orderDate date,
requiredDate date,
shippedDate date,
`status` varchar(50),
comments varchar(100),
customerNumber int,
foreign key(customerNumber) references customers(customerNumber)
);
create table payments(
checkNumber int primary key,
paymentDate date,
amount int,
customerNumber int,
foreign key (customerNumber) references customers(customerNumber)
);


select *
from customers
inner join paymets 
on customers.customerNumber = payments.customerNumber
where city = 'Vegas';


select *
from customers
left join orders
on customers.customerNumber = orders.customerNumber;

select *
from customers
left join orders
on customers.customerNumber = orders.customerNumber
where orderNumber is null;
