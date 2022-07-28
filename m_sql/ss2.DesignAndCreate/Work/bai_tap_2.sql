drop database quan_ly_ban_hang;
create database quan_ly_ban_hang;
use quan_ly_ban_hang;

CREATE TABLE customer (
    c_ID INT AUTO_INCREMENT PRIMARY KEY,
    c_Age VARCHAR(10),
    c_Name VARCHAR(20)
);

CREATE TABLE `order` (
    o_ID INT AUTO_INCREMENT PRIMARY KEY,
    o_date DATETIME,
    o_totalprice INT,
    c_ID INT,
    FOREIGN KEY (c_ID)
        REFERENCES customer (c_ID)
);

CREATE TABLE product (
    p_ID INT PRIMARY KEY AUTO_INCREMENT,
    p_Name VARCHAR(45),
    p_Price INT
);

CREATE TABLE order_detail (
    o_ID INT,
    p_ID INT,
    od_QTY INT PRIMARY KEY,
    FOREIGN KEY (o_ID)
        REFERENCES `order` (o_ID),
    FOREIGN KEY (p_ID)
        REFERENCES product (p_ID)
);
