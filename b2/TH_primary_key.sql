create database if not exists account_student;

use account_student;
-- create table uses(
-- user_id int auto_increment primary key,
-- user_name varchar(20) not null,
-- user_password varchar(30),
-- user_email varchar(50)
-- );
create table users(
user_id int,
user_name varchar(20) not null,
user_password varchar(30) not null,
primary key(user_id,user_name)
);

insert into users(user_id,user_name,user_password)
value
(1,'thang','123456'),
(2,'thang','123456')
