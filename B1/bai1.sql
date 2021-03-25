drop database if exists student_management;
create database student_management; 

use student_management;
create table student(
id int primary key,
`name` varchar(50),
date_of_birth date,
email varchar(40)
);
insert into student(id,`name`,date_of_birth,email)
value
(1,'dinh','1994-01-01','thangdinh1607@gmail.com'),
(5,'dinh aaa vvv','1994-01-01','thangdinh1607@gmail.com'),
(6,'dinh bbb sss ','1994-01-01','thangdinh1607@gmail.com'),
(7,'dinh','1994-01-01','thangdinh1607@gmail.com'),
(2,'thang','1995-02-02','thangdinh1608@gmail.com'),
(3,'meo','1995-03-02','thangdinh1609@gmail.com'),
(4,'gau','1995-06-02','thangdinh1610@gmail.com');

alter table student
add column age varchar(50);

-- drop table student;

-- drop database student_management;

delete from student
where `name` = 'thang';

select `name`
from student
where id = 3;

select *
from student
where `name` ='meo' ;

select *
from student
where `name ` like '%dinh%';




