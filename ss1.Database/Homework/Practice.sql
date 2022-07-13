use student_management;
create table class(
id int auto_increment,
name varchar(45),
primary key(id)
);
use class;
insert into class(name) values ("Hà Duyên"),("Đa Phúc"),("Hoàng Thái"),("Võ Vinh"),("Hoàng Long");
select * from class;
create table teacher(
id int auto_increment,
name varchar(45),
age int,
country varchar(45),
primary key(id)
);
insert into teacher(name,age,country) values("Nguyễn Văn A",30,"Việt Nam"),("Nguyễn Văn B",40,"Trung Quốc"),("James Smith",30,"America");
select * from teacher; 

