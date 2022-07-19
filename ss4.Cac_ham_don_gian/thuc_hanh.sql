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
 
CREATE TABLE `subject` (
    sub_ID INT AUTO_INCREMENT PRIMARY KEY,
    sub_name VARCHAR(20),
    credit INT,
    `status` INT
);
 
 insert into `subject` (sub_name,credit,`status`) 
 values("Cf",5,1),
 ("c",6,1),
 ("hdj",5,1),
 ("rdbms",10,1);
 
CREATE TABLE mark (
    mark_Id INT PRIMARY KEY AUTO_INCREMENT,
    sub_id INT NOT NULL,
    student_ID INT NOT NULL,
    mark_point INT,
    examtimes INT,
    FOREIGN KEY (sub_id)
        REFERENCES `subject` (sub_ID),
    FOREIGN KEY (student_iD)
        REFERENCES student (student_iD)
);
 
 insert into mark (sub_ID,student_iD,mark_point,examtimes) 
 values(1,1,8,1),
 (1,2,10,2),
 (2,1,12,1);
 -- Phần thực hành
  -- Hiển thị số lượng sinh viên ở từng nơi
  SELECT 
    address, COUNT(student_ID) AS so_luong_hoc_vien
FROM
    student
GROUP BY address;
  -- Tính điểm trung bình các môn học của mỗi học viên
 SELECT 
    s.student_ID,
    s.student_name,
    IFNULL(AVG(mark_point), 0) AS diem_trung_binh
FROM
    student s
        LEFT JOIN
    mark m ON s.student_ID = m.student_ID
GROUP BY s.student_name;
  -- Hiển thị những bạn học viên co điểm trung bình các môn học lớn hơn 15
  SELECT 
    s.student_ID, s.student_name, AVG(mark_point)
FROM
    student s
        INNER JOIN
    mark m ON s.student_ID = m.student_ID
GROUP BY s.student_ID
HAVING AVG(mark_point) > 15;
  -- Hiển thị thông tin các học viên có điểm trung bình lớn nhất.
  SELECT 
    s.student_ID, s.student_name, AVG(mark_point)
FROM
    student s
        INNER JOIN
    mark m ON s.student_ID = m.student_ID
GROUP BY s.student_ID , s.student_name
HAVING AVG(mark_point) >= ALL (SELECT 
        AVG(mark_point)
    FROM
        mark
    GROUP BY student_ID);
  
  -- Phần bài tập
  -- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.
 SELECT 
    *
FROM
    `subject` sub
WHERE
    sub.credit = (SELECT 
            MAX(sub.credit)
        FROM
            `subject` sub);
  
  -- Hiển thị các thông tin môn học có điểm thi lớn nhất.
 SELECT 
    sub.sub_ID,
    sub.sub_name,
    sub.credit,
    sub.`status`,
    m.mark_point AS diem_thi_lon_nhat
FROM
    `subject` sub
        INNER JOIN
    mark m ON sub.sub_ID = m.sub_ID
WHERE
    m.mark_point = (SELECT 
            MAX(mark_point)
        FROM
            mark);
  
  -- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần
  SELECT 
    s.student_ID,
    s.student_name,
    s.address,
    s.phone,
    s.`status`,
    s.class_ID,
    AVG(m.mark_point) AS diem_thi_trung_binh
FROM
    student s
        INNER JOIN
    mark m ON s.student_ID = m.student_ID
GROUP BY s.student_ID
ORDER BY AVG(m.mark_point) DESC;

 
  
  
 
  
  
 