CREATE DATABASE threelion_management;
USE threelion_management;
CREATE TABLE soccer_field(
soccer_field_id INT PRIMARY KEY AUTO_INCREMENT,
soccer_field_name VARCHAR(20) NOT NULL  UNIQUE,
soccer_field_type VARCHAR(20) NOT NULL  ,
price DOUBLE NOT NULL);

 CREATE TABLE customer(
 
 customer_id INT PRIMARY KEY AUTO_INCREMENT,
 `name` VARCHAR(20) NOT NULL,
 phone_number  VARCHAR(11) NOT NULL UNIQUE,
 address VARCHAR(50),
 email VARCHAR(50) NOT NULL UNIQUE
 );
  CREATE TABLE employee(
 employee_id INT PRIMARY KEY AUTO_INCREMENT,
 employee_name VARCHAR(50) NOT NULL,
 day_birth DATE NOT NULL,
 phone INT NOT NULL UNIQUE,
 email VARCHAR(50) NOT NULL
);
 CREATE TABLE bill(
 bill_id INT PRIMARY KEY,
 customer_id INT, FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
 soccer_field_id INT, FOREIGN KEY(soccer_field_id) REFERENCES soccer_field(soccer_field_id),
  employee_id INT , FOREIGN KEY(employee_id) REFERENCES employee(employee_id),
 begin_time DATETIME NOT NULL,
 rental_time INT
 );
 
 CREATE TABLE detailed_bill (
 detailed_bill_id INT PRIMARY KEY,
 bill_id INT, FOREIGN KEY(bill_id) REFERENCES bill(bill_id),
 total_price INT
 );
INSERT INTO soccer_field (soccer_field_name,soccer_field_type,price) VALUES ("Sân số 1","sân 5",300000),
("Sân số 2","sân 5",300000),
("Sân số 3","sân 5",300000),
("Sân số 4","sân 5",300000),
("Sân số 5","sân 7",300000),
("Sân số 6","sân 7",300000),
("Sân số 7","sân futlsan",300000),
("Sân số 8","sân futlsan",300000);
SELECT * FROM dich_vu dv
JOIN loai_dich_vu ldv ON ldv.ma_dich_vu = dv.ma_dich_vu;
-- DROP DATABASE threelion_management

SELECT * FROM customer;

DELETE FROM customer WHERE customer_id  = 16;
DELIMITER // 
CREATE PROCEDURE delete_by_id(IN c_id INT)
BEGIN 
DELETE FROM customer WHERE customer_id = c_id ;
END //
DELIMITER ;
Call delete_by_id(35);

DELIMITER //
CREATE PROCEDURE update_customer(IN c_id INT ,  c_name VARCHAR(20), c_phone_number VARCHAR(11) ,  c_address VARCHAR(50), c_email VARCHAR(50)) 
BEGIN 
UPDATE customer set `name` = c_name , phone_number = c_phone_number, address = c_address, email =c_email WHERE customer_id = c_id;
END // 
DELIMITER ;
CALL update_customer(2,"a","761237712","uaujdgfdmah","hagkfjgj"); -- test nhu ri truocc ne, nho dung vi tri la ok ý là chắc nảy để id ở cuí rớ nge
SELECT * FROM customer ;

INSERT INTO customer (`name`,phone_number,address,email )VALUES
( 'Nguyễn Đức Thắng', '0782391943', 'Hòa Xuân,Cẩm Lệ,Đà Nẵng', 'nguyenthangfa2001@gmail.com'),
('Nguyễn Đức Thành', '078232345', 'Hòa Xuân,Cẩm Lệ,Đà Nẵng', 'ducthanh@gmail.com'),
( 'Nguyễn Đức Thống', '033987789', 'Khuê Trung,Cẩm Lệ,Đà Nẵng', 'ducthong@gmail.com'),
( 'Nguyễn Đức Thịnh', '0905378291', 'Hòa Thọ Đông,Cẩm Lệ,Đà Nẵng', 'ducthinh@gmail.com'),
( 'Nguyễn Đức Thanh', '0914090627', 'Hòa Thọ Tây,Cẩm Lệ,Đà Nẵng', 'khsts@gmail.com'),
( 'Nguyễn Đức Thạnh', '0782391999', 'Hòa Khánh Bắc,Liên Chiểu,Đà Nẵng', 'thanhboi12@gmail.com'),
( 'Nguyễn Đức Nhân', '0782391443', 'Hòa Phát,Cẩm Lệ,Đà Nẵng', 'nhanduc@gmail.com'),
('Nguyễn Đức Hoàng', '0905339911', 'Hòa Xuân,Cẩm Lệ,Đà Nẵng', 'hoangkhdz@gmail.com'),
( 'Nguyễn Hoàng Tú', '0914000627', 'Hòa Nhơn,Hòa Vang,Đà Nẵng', 'tu621@gmail.com'),
( 'Nguyễn Nhân Tú', '0905111923', 'Hòa An,Cẩm Lệ,Đà Nẵng', 'nhantu3489@gmail.com'),
( 'Nguyễn Huy Đức', '033999761', 'Hòa Tiến,Hòa Vang,Đà Nẵng', 'duclahoa@gmail.com'),
('Nguyễn Huỳnh Huy', '0914543891', 'Hòa Xuân,Cẩm Lệ,Đà Nẵng', 'huynhhuy123@gmail.com'),
('Trương Tấn Thịnh', '0932979939', 'Hòa Thọ Tây,Cẩm Lệ,Đà Nẵng', 'thinhkhdz97@gmail.com'),
( 'Nguyễn Văn Hùng', '0782990012', 'Hòa Thọ Tây,Cẩm Lệ,Đà Nẵng', 'hungvan123@gmail.com'),
( 'Nguyễn Thanh Long', '0782143391', 'Hòa Phát,Cẩm Lệ,Đà Nẵng', 'thanhlongzz@gmail.com')
;
INSERT INTO customer VALUES (16,'nga','0914000056','My','nganguyen@gmail.com');
SELECT * FROM customer WHERE `name` Like  '%thắng%' AND phone_number Like '%0782391943%' ;

CREATE TABLE users(
id INT PRIMARY KEY AUTO_INCREMENT ,
user_login VARCHAR(50) NOT NULL UNIQUE,
password_login VARCHAR(50) NOT NULL
);
INSERT INTO users (user_login , password_login) VALUES('admin','12345');
INSERT INTO users (user_login , password_login) VALUES('thang','12345');
SELECT * FROM users ;

CREATE TABLE user_customer(
user_customer VARCHAR(50) PRIMARY KEY ,
password_customer VARCHAR(50) NOT NULL UNIQUE
);
INSERT INTO user_customer VALUES(?,?);
SELECT * FROM user_customer;
SELECT * FROM customer ;
SELECT * FROM customer ORDER BY `name` ; 
SELECT * FROM customer ORDER BY `name` ;