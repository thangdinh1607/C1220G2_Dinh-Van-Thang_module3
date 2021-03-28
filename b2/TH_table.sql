-- drop database if exists student_management;


create database if not exists student_management;
use student_management;
create table student(
id int primary key,
`name` varchar(40)
);
alter table student
add age int;

-- alter table student
-- drop column age;

alter table student
change column age birthday date ;

insert into student()
value
(1,'gau','1995-11-03'),
(2,'meo','1990-09-04');

-- create table contacts(
-- contact_id int not null auto_increment,
-- last_name varchar(30) not null,
-- firt_name varchar(20),
-- birth_day date,
-- constraint contacts_pk primary key(contact_id)
-- );
-- insert into contacts(contact_id,last_name,firt_name,birth_day)
-- value
-- (1,'thang','dinh',2000/12/12),
-- (2,'thang','dinh',2000/12/11);


-- drop table student;





