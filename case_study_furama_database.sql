drop database if exists furama_management;
create database if not exists furama_management;
use furama_management;

create table employee(
employee_id int auto_increment primary key,
employee_name varchar(45),
employee_birthday date,
employee_idcard varchar(45),
employee_salary double,
employee_phone varchar(45),
employee_email varchar(45),
employee_address varchar(45),
position_id int ,
education_degree_id int,
division_id int,
username varchar(255)
);
create table `position`(
position_id int primary key,
position_name varchar(45)
);

create table education_degree(
education_degree_id int primary key,
education_dgree_name varchar(45)
);

create table division(
divition_id int primary key ,
role_name varchar(45)
);

create table `user`(
username varchar(255) primary key ,
passwords varchar(255)
);

create table user_role (
role_id int,
username varchar(255),
primary key (role_id,username)
);

create table `role`(
role_id int primary key ,
role_name varchar(255)
);

create table customer(
customer_id int primary key,
customer_type_id int,
customer_name varchar(45),
customer_birthday date,
customer_gender bit(1),
customer_id_card varchar(45),
customer_phone varchar(45),
customer_email varchar(45),
customer_address varchar(45)
);

create table customer_type(
customer_type_id int primary key,
customer_type_name varchar(45)
);

create table contract(
contract_id int primary key ,
contract_star_date datetime,
contract_end_date datetime,
contract_deposit double,
contract_total_money double,
employee_id int,
customer_id int,
service_id int
);

create table contract_detail(
contract_detal_id int primary key,
contract_id int,
attach_service_id int,
quantity int
);

create table attach_service(
attach_service_id int primary key ,
attach_service_name varchar(45),
attach_service_cost double,
attach_service_unit int,
attach_service_status varchar(45)
);


create table service(
service_id int primary key ,
service_name varchar(45),
service_area int,
service_cost double,
service_max_people int,
standard_room varchar(45),
description_other_convenience varchar(45),
pool_area double,
number_of_florrs int,
rent_type_id int,
service_type_id int
);
create table service_type(
service_type_id int primary key,
service_type_name varchar(45)
);

create table rent_type(
rent_type_id int primary  key,
rent_type_name varchar(45),
rent_type_cost double
);


alter table employee
add foreign key(position_id) references  `position`(position_id),
add foreign key(education_degree_id) references education_degree(education_degree_id),
add foreign key(division_id) references division(divition_id),
add foreign key(username) references `user`(username);

alter table customer
add foreign key(customer_type_id) references customer_type(customer_type_id);

alter table contract
add foreign key (employee_id) references employee(employee_id),
add foreign key (customer_id) references customer(customer_id),
add foreign key (service_id) references service(service_id);

alter table contract_detail
add foreign key (contract_id) references contract(contract_id),
add foreign key (attach_service_id) references attach_service(attach_service_id);

alter table service
add foreign key(rent_type_id) references rent_type(rent_type_id),
add foreign key(service_type_id) references service_type(service_type_id);

alter table user_role
add foreign key (role_id) references `role` (role_id) on delete cascade,
add foreign key (username) references `user` (username) on delete cascade;





