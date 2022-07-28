drop database if exists demo;
create database demo;
use demo;
CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_code INT,
    product_name VARCHAR(45),
    product_price INT NOT NULL,
    product_amount INT,
    product_description TEXT,
    product_status VARCHAR(45)
);
 insert into products (product_code,product_name,product_price,
 product_amount,product_description,product_status) 
 values 
 (1,"áo",10000,10,"màu đỏ","tốt"),
 (2,"áo sơ mi",15000,15,"màu xanh","tốt"),
 (3,"quần rin",20000,1,"màu vàng","hết hàng"),
 (4,"áo",10000,10,"màu đỏ","tốt"),
 (5,"áo",11000,10,"màu đỏ","tốt");
 
 -- Tạo Unique Index trên bảng Products (sử dụng cột productCode để tạo chỉ mục)--
 create index i_product_code on products(product_code);
 explain select * from products where product_code = 5;
 drop index i_product_code on products; 
 
 -- Tạo Composite Index trên bảng Products (sử dụng 2 cột productName và productPrice) -- 
 -- Sử dụng câu lệnh EXPLAIN để biết được câu lệnh SQL của bạn thực thi như nào --
 -- So sánh câu truy vấn trước và sau khi tạo index --
 create index i_product_id on products(product_name,product_price);
 explain select * from products where product_name= "áo" and product_price=10000;
 drop index i_product_id on products;
 
 -- Tạo view lấy về các thông tin: productCode, productName, productPrice, productStatus từ bảng products --
CREATE VIEW view_product AS
    SELECT 
        product_code, product_name, product_price, product_status
    FROM
        products;
SELECT 
    *
FROM
    view_product;
 
 -- Tiến hành sửa đổi view -- 
CREATE OR REPLACE VIEW view_product AS
    SELECT 
        product_code,
        product_name,
        product_price,
        product_status,
        product_description
    FROM
        products;
SELECT 
    *
FROM
    view_product;
 
 -- Tiến hành xoá view --
 drop view view_product; 
 
-- Tạo store procedure lấy tất cả thông tin của tất cả các sản phẩm trong bảng product --
delimiter $$
create procedure procedure_products()
begin
select * from products;
end $$
delimiter ;
call procedure_products();
 
-- Tạo store procedure thêm một sản phẩm mới --
delimiter $$
create procedure add_products()
begin
insert into products(product_id, product_code, product_name, product_price, product_amount, product_description, product_status)
values(6,6,"quần đùi",50000,20,"màu xanh lá", " thoáng mát");
end $$
delimiter ;
call add_products();
select * from products;

-- Tạo store procedure sửa thông tin sản phẩm theo id --
delimiter $$
create procedure update_product (in id int, `code` int, `name` varchar(40), price int, amount int,`description` text,`status` varchar(40))
begin
	set sql_safe_updates =0;
	update products 
		set product_code = `code`, 
			product_name = `name`,
			product_price = price,
            product_amount = amount,
            product_description = `description`, 
            product_status = `status`
	where product_id = id;
    set sql_safe_updates =1;
end $$
delimiter ;
call update_product(1,1,"Ao da",20000,11,"mang vào mùa đông","tốt");
select * from products;

 -- Tạo store procedure xoá sản phẩm theo id --
delimiter $$
create procedure delete_product (in id int)
begin
	delete from products where product_id = id;
end $$
delimiter ;
call delete_product(5);
select * from products;


 

