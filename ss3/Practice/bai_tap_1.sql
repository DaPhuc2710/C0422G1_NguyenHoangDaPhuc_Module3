 drop database if exists quan_li_hoc_sinh;
 create database quan_li_hoc_sinh;
 use quan_li_hoc_sinh;
 
CREATE TABLE class (
    class_ID INT PRIMARY KEY AUTO_INCREMENT,
    class_name VARCHAR(20),
    start_date DATE,
    `status` INT
);
 
 insert into class(class_name,start_date,`status`) 
 values
 ("A1","2008-12-20",1),
 ("A2","2008-12-22",1),
 ("B3",current_date,0);
 
CREATE TABLE student (
    student_ID INT PRIMARY KEY AUTO_INCREMENT,
    student_name VARCHAR(20),
    address VARCHAR(50),
    phone VARCHAR(10),
    `status` INT,
    class_ID INT NOT NULL,
    FOREIGN KEY (class_ID)
        REFERENCES class (class_ID)
);
 
 insert into student (student_name,address,phone,`status`,class_ID) 
 values
 ("Hùng","Hà Nội","0912113113",1,1),
 ("Hoa","Hải Phòng",null,1,1),
 ("mạnh","HCM","0123123123",0,2);
 
 create table `subject`(
 sub_ID int auto_increment primary key,
 sub_name varchar(20),
 credit int,
 `status` INT
 );
 
 insert into `subject` (sub_name,credit,`status`) 
 values("Cf",5,1),
 ("c",6,1),
 ("hdj",5,1),
 ("rdbms",10,1);
 
 creaTE TAble mark(
 mark_Id int primary key auto_increment,
 sub_id int NOT Null ,
 student_ID int NOT Null ,
 mark int ,
 examtimes int,
 foreign key (sub_id) references `subject`(sub_ID),
 foreign key (student_iD) references student(student_iD)
 );
 
 insert into mark (sub_ID,student_iD,mark,examtimes) 
 values(1,1,8,1),
 (1,2,10,2),
 (2,1,12,1);
 
-- Phần thực hành
 -- hiển thị danh sách tất cả học viên
 select * from student;
 
 -- Hiển thị danh sách học viên đang theo học
 select * from student where status = true; 
 
 -- Hiển hị danh sách các môn học có thời gian học nhỏ hơn 10
 select * from `subject` where credit <10;
 
 -- Hiển thị danh sách học viên lớp A1
 select s.student_ID,s. student_name ,c.class_name 
 from student s join class c
 on s.class_ID= c.class_ID
 where c.class_name like "a1";
 
 -- Hiển thị điểm môn CF của các học viên 
 select s.student_ID, s.student_name, sub.sub_name, m.mark
 from student s join mark m on s.student_ID=m.student_Id 
 join `subject` sub on m.sub_ID=sub.sub_ID
 where sub.sub_name="CF";
 
 -- Phần bài tập 1
 -- hiển thị tất cả các sinh viên có tên bắt đầu bảng ký tự ‘h’
 select  * 
 from student s 
 where s.student_name like "H%";
 
 -- Hiển thị các thông tin lớp học có thời gian bắt đầu vào tháng 12.
 select *
 from class c 
 where month(c.start_date)=12;
 
 -- Hiển thị tất cả các thông tin môn học có credit trong khoảng từ 3-5.
 select *
 from `subject` sub 
 where sub.credit between 3 and 5;
 
 -- Thay đổi mã lớp(ClassID) của sinh viên có tên ‘Hung’ là 2.
set sql_safe_updates = 0;
update student s 
set s.class_id =2
where s.student_name= "Hung";
set sql_safe_updates = 1;
select *
from student;
-- Hiển thị các thông tin: StudentName, SubName, Mark. Dữ liệu sắp xếp theo điểm thi (mark) giảm dần. nếu trùng sắp theo tên tăng dần.
select
s.student_name,
sub.sub_name,
m.mark
from student s
inner join 
mark m on s.student_ID = m.student_ID
inner join 
`subject` sub on m.sub_ID = sub.sub_ID
order by m.mark desc,
 s.student_name asc;