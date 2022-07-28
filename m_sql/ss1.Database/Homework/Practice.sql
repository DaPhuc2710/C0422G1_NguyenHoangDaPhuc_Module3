DROP DATABASE IF EXISTS student_management;
CREATE DATABASE student_management;
USE student_management;
CREATE TABLE class (
    id INT AUTO_INCREMENT,
    name VARCHAR(45),
    PRIMARY KEY (id)
);

INSERT INTO class(name) VALUES ("Hà Duyên"),("Đa Phúc"),("HOÀng Thái"),("Võ VInh"),("HoàNG Long");
-- hiỂn thị tất cả trong class
select * from clASS;
-- cHỈ Hiển thị id trong class
select id from class;

CREATE TABLE teacher (
-- CHạY AUTo id tự đỘng tăng
    id INT AUTO_INCREMENT,
    name VARCHAR(45),
    AGE INT,
    COUNTRY VARCHAR(45),
    PRIMARY KEY (ID)
);
INSERT INTO teacher(name,age,country) values("NguYễn VĂn A",30,"ViỆt NAM"),("Nguyễn Văn B",40,"Trung Quốc"),("James Smith",30,"AMERIca");
SELECT * FROM teacher; 

-- hiển thị KhôNG TRÙnG LẬP
select DISTINCT name FROM teacher;

