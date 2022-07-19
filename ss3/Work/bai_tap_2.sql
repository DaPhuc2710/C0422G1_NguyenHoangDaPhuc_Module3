 drop database if exists quan_ly_ban_hang_101;
 create database quan_ly_ban_hang_101;
 use quan_ly_ban_hang_101;
 
CREATE TABLE customer (
    c_ID INT PRIMARY KEY AUTO_INCREMENT,
    c_name VARCHAR(45),
    c_age TINYINT
);
 
CREATE TABLE `order` (
    o_ID INT PRIMARY KEY AUTO_INCREMENT,
    c_ID INT,
    o_date DATETIME,
    o_total_price INT,
    FOREIGN KEY (c_ID)
        REFERENCES customer (c_ID)
);
 
CREATE TABLE product (
    p_ID INT PRIMARY KEY AUTO_INCREMENT,
    p_name VARCHAR(25),
    p_price INT
);
 
CREATE TABLE order_detail (
    o_ID INT,
    p_ID INT,
    odQTY INT,
    PRIMARY KEY (o_ID , p_ID),
    FOREIGN KEY (o_ID)
        REFERENCES `order` (o_ID),
    FOREIGN KEY (p_ID)
        REFERENCES product (p_ID)
);
 
 insert into customer (c_name,c_age) 
 values
 ("Minh Quan",10),
 ("Ngoc Oanh",20),
 ("Hong Ha",50);
 
  insert into `order` (c_ID,o_date,o_total_price) 
 values
 (1,"2006-3-21",null),
 (2,"2006-3-23",null),
 (1,"2006-3-16",null);
 insert into product (p_name,p_price) 
 values
 ("May Giat",3),
 ("Tu Lanh",5),
 ("Dieu Hoa",7),
 ("Quat",1),
 ("Bep Dien",2);
 
 insert into order_detail(o_ID,p_ID,odQTY) 
 values
 (1,1,3),
 (1,3,7),
 (1,4,2),
 (2,1,1),
 (3,1,8),
 (2,5,4),
 (2,3,3);
 
 -- Hiển thị các thông tin  gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng Order
SELECT 
    o_ID, o_date, o_total_price
FROM
    `order`;
    -- Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách
SELECT 
    c.c_name, p.p_name
FROM
    customer c
        INNER JOIN
    `order` o ON c.c_ID = o.c_ID
        INNER JOIN
    order_detail od ON o.o_ID = od.o_ID
        INNER JOIN
    product p ON p.p_ID = od.p_ID;
 
 -- Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào
 SELECT c.c_name 
 FROM customer c
 left join
 `order` o on c.c_ID= o.c_ID
 where o.o_date is null;
 
 -- Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn 
 -- (giá một hóa đơn được tính bằng tổng giá bán của từng loại mặt hàng xuất hiện trong hóa đơn. 

  SELECT 
    o.o_ID, o.o_date, SUM((odQTY * p_price)) AS o_total_price
FROM
    `order` o
        INNER JOIN
    order_detail od ON o.o_ID = od.o_ID
        INNER JOIN
    product p ON p.p_ID = od.p_ID
GROUP BY o.o_ID;
 
    
 
 
 
 
 
 
 
 
