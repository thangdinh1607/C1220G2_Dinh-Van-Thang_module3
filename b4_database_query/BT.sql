create database if not exists student_management;

use student_management;
create table student(
id int primary key,
`name` varchar(50),
age int,
khoaHoc varchar(50),
soTien int
);

select *
from student
where `name` = Huong;

select `name `,sum(soTien) as 'tong'
from student
where `name`= Huong
group by `name`;

select `name`
from student
group by `name`;