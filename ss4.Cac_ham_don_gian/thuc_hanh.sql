drop database if exists quan_li_hoc_sinh_101;
 create database quan_li_hoc_sinh_101;
 use quan_li_hoc_sinh_101;
 
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
 mark_point int ,
 examtimes int,
 foreign key (sub_id) references `subject`(sub_ID),
 foreign key (student_iD) references student(student_iD)
 );
 
 insert into mark (sub_ID,student_iD,mark_point,examtimes) 
 values(1,1,8,1),
 (1,2,10,2),
 (2,1,12,1);
 -- Phần thực hành
  -- Hiển thị số lượng sinh viên ở từng nơi
  select address,
  count(student_ID) as so_luong_hoc_vien
  from student
  group by address;
  -- Tính điểm trung bình các môn học của mỗi học viên
  select 
  s.student_ID,
  s.student_name,
  ifnull(avg(mark_point),0) as diem_trung_binh
  from student s 
  left join mark m 
  on s.student_ID = m.student_ID
  group by s.student_name;
  -- Hiển thị những bạn học viên co điểm trung bình các môn học lớn hơn 15
  select s.student_ID,
  s.student_name,
  avg(mark_point)
  from student s 
  inner join mark m 
  on s.student_ID = m.student_ID
  group by s.student_ID
  having avg(mark_point)>15;
  -- Hiển thị thông tin các học viên có điểm trung bình lớn nhất.
  select s.student_ID,
  s.student_name,
  avg(mark_point)
  from student s 
  inner join mark m 
  on s.student_ID = m.student_ID
  group by s.student_ID,s.student_name
  having avg(mark_point) >= all(select avg(mark_point) from mark group by student_ID);
  
  -- Phần bài tập
  -- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.
  select *
  from `subject`sub
  where sub.credit = (select max(sub.credit) from `subject`sub);
  
  -- Hiển thị các thông tin môn học có điểm thi lớn nhất.
  select sub.sub_ID ,sub.sub_name,sub.credit ,sub.`status`,  m.mark_point as diem_thi_lon_nhat
  from `subject` sub
  inner join mark m 
  on sub.sub_ID = m.sub_ID
  where m.mark_point = (select max(mark_point) from mark);
  
  -- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần
  select  s.student_ID, s.student_name, s.address, s.phone, s.`status`, s.class_ID, avg(m.mark_point) as diem_thi_trung_binh
  from student s 
  inner join mark m  
  on s.student_ID = m.student_ID
  group by s.student_ID
  order by avg(m.mark_point) desc ;

 
  
  
 
  
  
 