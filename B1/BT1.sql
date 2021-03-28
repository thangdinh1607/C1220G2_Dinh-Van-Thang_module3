drop database if exists classicmodels;
create database classicmodels;


use classicmodels;
create table customer(
id int,
`name` varchar(50),
phone int,
city varchar(20),
primary key (id ,phone)
);
insert into customer(id ,`name`,phone,city)
value
(1,'gau gau',0901111222,'Đà Nẵng'),
(2,'meo meo',0901111333,'sài gòn'),
(3,'thang dinh',0901111444,'Hà nội'),
(4,'aa bb cc',0901111666,'Đà Nẵng'),
(5,'gau aa',0901111777,'Đà Nẵng'),
(6,'gau bbb',0901111888,'QN'),
(7,'gau 1111',0901111999,'111'),
(8,'gau thang',0901111000,'haha');

select *
from customer;

select `name`
from customer
where city = 'QN';

delete from customer
where `name` = 'gau thang';

