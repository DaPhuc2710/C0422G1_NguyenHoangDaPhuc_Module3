USE internship;

 -- 1.	Đưa ra thông tin gồm mã số, họ tên và tên khoa của tất cả các giảng viên
SELECT 
    i.instructor_id,
    i.instructor_name,
    i.salary,
    f.faculty_name
FROM
    instructor i
        JOIN
    faculty f ON i.faculty_id = f.faculty_id;
    
 -- 2.	Đưa ra thông tin gồm mã số, họ tên và tên khoa của các giảng viên của khoa ‘DIA LY va QLTN’
SELECT 
    i.instructor_id,
    i.instructor_name,
    i.salary,
    f.faculty_name
FROM
    instructor i
        JOIN
    faculty f ON i.faculty_id = f.faculty_id
WHERE
    f.faculty_name ='Dia ly va QLTN';
    
-- 3.	Cho biết số sinh viên của khoa ‘CONG NGHE SINH HOC’
SELECT 
    COUNT(s.student_id) as so_luong_sinh_vien
FROM
    student s
        JOIN
    faculty f ON s.faculty_id = f.faculty_id
WHERE
    f.faculty_name = 'Cong nghe Sinh hoc';
    
-- 4.Đưa ra danh sách gồm mã số, họ tên và tuổi của các sinh viên khoa ‘TOAN’
SELECT 
    s.student_id ,
    s.student_name ,
    s.date_of_birth,
	f.faculty_name
FROM
    student s
        JOIN
    faculty f ON s.faculty_id = f.faculty_id
WHERE
    f.faculty_name = 'Toan';
    
 -- 5.Cho biết số giảng viên của khoa ‘CONG NGHE SINH HOC’
 SELECT 
    COUNT(i.instructor_id) AS so_luong_giang_vien
FROM
    instructor i
        JOIN
    faculty f ON i.faculty_id = f.faculty_id
WHERE
    f.faculty_name = 'CONG NGHE SINH HOC';
    
-- 6. Cho biết thông tin về sinh viên không tham gia thực tập
SELECT 
    *
FROM
    student s
WHERE
    s.student_id NOT IN (SELECT 
            i.student_id
        FROM
            instructor_student i);
-- 7.	Đưa ra mã khoa, tên khoa và số giảng viên của mỗi khoa
SELECT 
    f.faculty_id,
    f.faculty_name,
    COUNT(i.instructor_id) AS so_luong_giang_vien
FROM
    instructor i
        JOIN
    faculty f ON i.faculty_id = f.faculty_id
GROUP BY f.faculty_id;

-- 8.Cho biết số điện thoại của khoa mà sinh viên có tên ‘Le van son’ đang theo học
SELECT 
    f.phone
FROM
    faculty f
        JOIN
    student s ON f.faculty_id = s.faculty_id
WHERE
    student_name = 'Le van son';
    
-- phần 2
-- 1. Cho biết mã số và tên của các đề tài do giảng viên ‘Tran son’ hướng dẫn
SELECT 
    p.project_id, p.project_name
FROM
    project p
        JOIN
    instructor_student ist ON p.project_id = ist.project_id
        JOIN
    instructor i ON ist.instructor_id = i.instructor_id
WHERE
    instructor_name = 'Tran son';
    
-- 2. Cho biết tên đề tài không có sinh viên nào thực tập   
SELECT 
    p.project_id, 
    p.project_name
FROM
    project p
         left JOIN
    instructor_student ist ON p.project_id = ist.project_id
         left JOIN
    student s ON s.student_id = ist.student_id
WHERE
   p.project_id not in ( select ist.project_id from instructor_student ist) ;
    


