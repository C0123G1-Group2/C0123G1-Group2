CREATE DATABASE threelion_management;
USE threelion_management;
CREATE TABLE soccer_field (
    soccer_field_id INT PRIMARY KEY AUTO_INCREMENT,
    soccer_field_name VARCHAR(20) NOT NULL UNIQUE,
    soccer_field_type VARCHAR(20) NOT NULL,
    price DOUBLE NOT NULL,
     created_at DATETIME DEFAULT NOW()
);

CREATE TABLE customer (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(20) NOT NULL,
    phone_number VARCHAR(11) NOT NULL UNIQUE,
    address VARCHAR(50),
    email VARCHAR(50) NOT NULL UNIQUE,
    created_at DATETIME DEFAULT NOW()
);
CREATE TABLE employee (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_name VARCHAR(50) NOT NULL,
    day_birth DATE NOT NULL,
    phone INT NOT NULL UNIQUE,
    email VARCHAR(50) NOT NULL,
     created_at DATETIME DEFAULT NOW()
);
CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    FOREIGN KEY (customer_id)
        REFERENCES customer (customer_id),
    soccer_field_id INT,
    FOREIGN KEY (soccer_field_id)
        REFERENCES soccer_field (soccer_field_id),
    begin_time VARCHAR(50) NOT NULL,
    rental_time INT,
     created_at DATETIME DEFAULT NOW()
);
CREATE TABLE bill (
    bill_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_id INT,FOREIGN KEY (employee_id)
        REFERENCES employee (employee_id),
    order_id INT,
    FOREIGN KEY (order_id)
        REFERENCES orders (order_id) ,
         created_at DATETIME DEFAULT NOW()
);
CREATE TABLE detailed_bill (
    detailed_bill_id INT PRIMARY KEY AUTO_INCREMENT,
    bill_id INT,
    FOREIGN KEY (bill_id)
        REFERENCES bill (bill_id),
    total_price INT ,
     created_at DATETIME DEFAULT NOW()
);

CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_login VARCHAR(50) NOT NULL UNIQUE,
    password_login VARCHAR(50) NOT NULL,
    is_cus INT NOT NULL,
    is_admin INT NOT NULL
);
INSERT INTO users (user_login , password_login,is_cus,is_admin) VALUES('admin','12345',0,1);
INSERT INTO users (user_login , password_login,is_cus,is_admin) VALUES('thang','12345',1,0);

INSERT INTO soccer_field (soccer_field_name,soccer_field_type,price) VALUES ("Sân số 1","sân 5",300000),
("Sân số 2","sân 5",300000),
("Sân số 3","sân 5",300000),
("Sân số 4","sân 5",300000),
("Sân số 5","sân 7",300000),
("Sân số 6","sân 7",300000),
("Sân số 7","sân futlsan",300000),
("Sân số 8","sân futlsan",300000);


INSERT INTO customer (`name`,phone_number,address,email) VALUES
( 'Nguyễn  Thắng', '0788391953', 'Hòa Xuân,Cẩm Lệ,Đà Nẵng', 'nguyenthangfa2001@gmail.com'),
( 'Nguyễn Đức Thành', '078232345', 'Hòa Xuân,Cẩm Lệ,Đà Nẵng', 'ducthanh@gmail.com'),
( 'Nguyễn Đức Thống', '033987789', 'Khuê Trung,Cẩm Lệ,Đà Nẵng', 'ducthong@gmail.com'),
( 'Nguyễn Đức Thịnh', '0905378291', 'Hòa Thọ Đông,Cẩm Lệ,Đà Nẵng', 'ducthinh@gmail.com'),
( 'Nguyễn Đức Thanh', '0914090627', 'Hòa Thọ Tây,Cẩm Lệ,Đà Nẵng', 'khsts@gmail.com'),
( 'Nguyễn Đức Thạnh', '0782391999', 'Hòa Khánh Bắc,Liên Chiểu,Đà Nẵng', 'thanhboi12@gmail.com'),
( 'Nguyễn Đức Nhân', '0782391443', 'Hòa Phát,Cẩm Lệ,Đà Nẵng', 'nhanduc@gmail.com'),
( 'Nguyễn Đức Hoàng', '0905339911', 'Hòa Xuân,Cẩm Lệ,Đà Nẵng', 'hoangkhdz@gmail.com'),
('Nguyễn Hoàng Tú', '0914000627', 'Hòa Nhơn,Hòa Vang,Đà Nẵng', 'tu621@gmail.com'),
( 'Nguyễn Nhân Tú', '0905111923', 'Hòa An,Cẩm Lệ,Đà Nẵng', 'nhantu3489@gmail.com'),
('Nguyễn Huy Đức', '033999761', 'Hòa Tiến,Hòa Vang,Đà Nẵng', 'duclahoa@gmail.com'),
( 'Nguyễn Huỳnh Huy', '0914543891', 'Hòa Xuân,Cẩm Lệ,Đà Nẵng', 'huynhhuy123@gmail.com'),
( 'Trương Tấn Thịnh', '0932979939', 'Hòa Thọ Tây,Cẩm Lệ,Đà Nẵng', 'thinhkhdz97@gmail.com'),
('Nguyễn Văn Hùng', '0782990012', 'Hòa Thọ Tây,Cẩm Lệ,Đà Nẵng', 'hungvan123@gmail.com'),
( 'Nguyễn Thanh Long', '0782143391', 'Hòa Phát,Cẩm Lệ,Đà Nẵng', 'thanhlongzz@gmail.com')
;

INSERT INTO customer (`name`,phone_number,address,email) VALUES ('truongan','090900023','dânng','dannag');

-- trigger uppdate soccer_field
CREATE TABLE trigger_soccer_field_update (
   soccer_field_id INT PRIMARY KEY AUTO_INCREMENT,
    soccer_field_name VARCHAR(20) NOT NULL UNIQUE,
    soccer_field_type VARCHAR(20) NOT NULL,
    price DOUBLE NOT NULL,
    date DATETIME
);
DELIMITER $$
 CREATE TRIGGER before_soccer_field_update
 BEFORE UPDATE ON soccer_field
 FOR EACH ROW
BEGIN
 INSERT INTO trigger_soccer_field_update
SET
 soccer_field_name = OLD.soccer_field_name,
 soccer_field_type = OLD.soccer_field_type,
 price = OLD.price,
 date = NOW();
END$$
 DELIMITER ;
 



-- trigger uppdate CUSTOMER
CREATE TABLE trigger_customer_update (
  customer_id INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(20) NOT NULL,
    phone_number VARCHAR(11) NOT NULL UNIQUE,
    address VARCHAR(50),
    email VARCHAR(50) NOT NULL UNIQUE,
    created_at DATETIME DEFAULT NOW(),
     date DATETIME
);
DELIMITER $$
 CREATE TRIGGER before_customer_update
 BEFORE UPDATE ON customer
 FOR EACH ROW
BEGIN
 INSERT INTO trigger_customer_update
SET
 `name` = OLD.name,
 phone_number = OLD.phone_number,
 address = OLD.address,
 email=OLD.email,
 date = NOW();
END$$
 DELIMITER ;
 



-- trigger uppdate employee
CREATE TABLE trigger_employee_update (
   employee_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_name VARCHAR(50) NOT NULL,
    day_birth DATE NOT NULL,
    phone INT NOT NULL UNIQUE,
    email VARCHAR(50) NOT NULL,
    date DATETIME
);
DELIMITER $$
 CREATE TRIGGER before_employee_update
 BEFORE UPDATE ON employee
 FOR EACH ROW
BEGIN
 INSERT INTO trigger_employee_update
SET
 employee_name = OLD.employee_name,
 day_birth = OLD.day_birth,
 phone = OLD.phone,
 email=OLD.email,
 date = NOW();
END$$
 DELIMITER ;
 
 CREATE TABLE trigger_customer_update (
  customer_id INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(20) NOT NULL,
    phone_number VARCHAR(11) NOT NULL UNIQUE,
    address VARCHAR(50),
    email VARCHAR(50) NOT NULL UNIQUE,
    date DATETIME
);
DELIMITER $$
 CREATE TRIGGER before_customer_update
 BEFORE UPDATE ON customer
 FOR EACH ROW
BEGIN
 INSERT INTO trigger_customer_update
SET
 `name` = OLD.`name`,
 phone_number = OLD.phone_number,
 address = OLD.address,
 email=OLD.email,
 date = NOW();
END$$
 DELIMITER ;
  
    SELECT * FROM users;
-- thắng làm sửa xóa 
DELETE FROM customer Where customer_id = 17 ; 
SELECT * FROM customer WHERE `name` Like  '%thắng%' AND phone_number Like '%0788391953%' AND address LIKE '%Đà Nẵng%' ;


UPDATE  customer SET  `name` = 'vien' , phone_number = '0909000000',address = 'hue',email='nguyenvien@' where customer_id = 5;
