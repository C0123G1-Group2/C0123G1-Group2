CREATE DATABASE threelion_management;
USE threelion_management;
CREATE TABLE soccer_field (
    soccer_field_id INT PRIMARY KEY AUTO_INCREMENT,
    soccer_field_name VARCHAR(20) NOT NULL UNIQUE,
    soccer_field_type VARCHAR(20) NOT NULL,
    price DOUBLE NOT NULL
);

CREATE TABLE customer (
    customer_id INT PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    phone_number VARCHAR(11) NOT NULL UNIQUE,
    address VARCHAR(50),
    email VARCHAR(50) NOT NULL UNIQUE
);
CREATE TABLE employee (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_name VARCHAR(50) NOT NULL,
    day_birth DATE NOT NULL,
    phone VARCHAR(20) NOT NULL UNIQUE,
    email VARCHAR(50) NOT NULL
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
    rental_time INT
);
CREATE TABLE bill (
    bill_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_id INT,FOREIGN KEY (employee_id)
        REFERENCES employee (employee_id),
    order_id INT,
    FOREIGN KEY (order_id)
        REFERENCES orders (order_id)
);
CREATE TABLE detailed_bill (
    detailed_bill_id INT PRIMARY KEY AUTO_INCREMENT,
    bill_id INT,
    FOREIGN KEY (bill_id)
        REFERENCES bill (bill_id),
    total_price INT
);

CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_login VARCHAR(50) NOT NULL UNIQUE,
    password_login VARCHAR(50) NOT NULL,
    isSell INT NOT NULL,
    isAdmin INT NOT NULL
);
INSERT INTO users (user_login , password_login) VALUES('admin','12345');
INSERT INTO users (user_login , password_login) VALUES('thang','12345');

INSERT INTO soccer_field (soccer_field_name,soccer_field_type,price) VALUES ("Sân số 1","sân 5",300000),
("Sân số 2","sân 5",300000),
("Sân số 3","sân 5",300000),
("Sân số 4","sân 5",300000),
("Sân số 5","sân 7",300000),
("Sân số 6","sân 7",300000),
("Sân số 7","sân futlsan",300000),
("Sân số 8","sân futlsan",300000);

INSERT INTO customer VALUES
(1, 'Nguyễn Đức Thắng', '0782391943', 'Hòa Xuân,Cẩm Lệ,Đà Nẵng', 'nguyenthangfa2001@gmail.com'),
(2, 'Nguyễn Đức Thành', '078232345', 'Hòa Xuân,Cẩm Lệ,Đà Nẵng', 'ducthanh@gmail.com'),
(3, 'Nguyễn Đức Thống', '033987789', 'Khuê Trung,Cẩm Lệ,Đà Nẵng', 'ducthong@gmail.com'),
(4, 'Nguyễn Đức Thịnh', '0905378291', 'Hòa Thọ Đông,Cẩm Lệ,Đà Nẵng', 'ducthinh@gmail.com'),
(5, 'Nguyễn Đức Thanh', '0914090627', 'Hòa Thọ Tây,Cẩm Lệ,Đà Nẵng', 'khsts@gmail.com'),
(6, 'Nguyễn Đức Thạnh', '0782391999', 'Hòa Khánh Bắc,Liên Chiểu,Đà Nẵng', 'thanhboi12@gmail.com'),
(7, 'Nguyễn Đức Nhân', '0782391443', 'Hòa Phát,Cẩm Lệ,Đà Nẵng', 'nhanduc@gmail.com'),
(8, 'Nguyễn Đức Hoàng', '0905339911', 'Hòa Xuân,Cẩm Lệ,Đà Nẵng', 'hoangkhdz@gmail.com'),
(9, 'Nguyễn Hoàng Tú', '0914000627', 'Hòa Nhơn,Hòa Vang,Đà Nẵng', 'tu621@gmail.com'),
(10, 'Nguyễn Nhân Tú', '0905111923', 'Hòa An,Cẩm Lệ,Đà Nẵng', 'nhantu3489@gmail.com'),
(11, 'Nguyễn Huy Đức', '033999761', 'Hòa Tiến,Hòa Vang,Đà Nẵng', 'duclahoa@gmail.com'),
(12, 'Nguyễn Huỳnh Huy', '0914543891', 'Hòa Xuân,Cẩm Lệ,Đà Nẵng', 'huynhhuy123@gmail.com'),
(13, 'Trương Tấn Thịnh', '0932979939', 'Hòa Thọ Tây,Cẩm Lệ,Đà Nẵng', 'thinhkhdz97@gmail.com'),
(14, 'Nguyễn Văn Hùng', '0782990012', 'Hòa Thọ Tây,Cẩm Lệ,Đà Nẵng', 'hungvan123@gmail.com'),
(15, 'Nguyễn Thanh Long', '0782143391', 'Hòa Phát,Cẩm Lệ,Đà Nẵng', 'thanhlongzz@gmail.com')
;
INSERT INTO customer VALUES (16,'nga','0914000056','My','nganguyen@gmail.com');
INSERT INTO bill (customer_id,soccer_field_id,begin_time,price) VALUES (1,1,'0914000056','My','nganguyen@gmail.com');

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
 
 -- trigger create
CREATE TABLE before_soccer_field_create (
   soccer_field_id INT PRIMARY KEY AUTO_INCREMENT,
    soccer_field_name VARCHAR(20) NOT NULL UNIQUE,
    soccer_field_type VARCHAR(20) NOT NULL,
    price DOUBLE NOT NULL,
    date DATETIME
);

DELIMITER $$
 CREATE TRIGGER before_soccer_field_create
 BEFORE INSERT ON soccer_field
 FOR EACH ROW
BEGIN
 INSERT INTO before_soccer_field_create
SET
 soccer_field_name = NEW.soccer_field_name,
 soccer_field_type = NEW.soccer_field_type,
 price = NEW.price,
 date = NOW();
END$$
 DELIMITER ;
SELECT * FROM before_soccer_field_create;

-- trigger uppdate CUSTOMER
CREATE TABLE trigger_customer_update (
   customer_id INT PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
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
 name = OLD.name,
 phone_number = OLD.phone_number,
 address = OLD.address,
 email=OLD.email,
 date = NOW();
END$$
 DELIMITER ;
 
  -- trigger create
CREATE TABLE before_customer_create (
   customer_id INT PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    phone_number VARCHAR(11) NOT NULL UNIQUE,
    address VARCHAR(50),
    email VARCHAR(50) NOT NULL UNIQUE,
    date DATETIME
);
DELIMITER $$
 CREATE TRIGGER before_customer_create
 BEFORE INSERT ON customer
 FOR EACH ROW
BEGIN
 INSERT INTO before_customer_create
SET
 name = NEW.name,
 phone_number = NEW.phone_number,
 address = NEW.address,
 email= NEW.email,
 date = NOW();
END$$
 DELIMITER ;
SELECT * FROM before_customer_create;

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
 
  -- trigger create
CREATE TABLE before_employee_create (
 employee_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_name VARCHAR(50) NOT NULL,
    day_birth DATE NOT NULL,
    phone INT NOT NULL UNIQUE,
    email VARCHAR(50) NOT NULL,
    date DATETIME
);
DELIMITER $$
 CREATE TRIGGER before_employee_create
 BEFORE INSERT ON employee
 FOR EACH ROW
BEGIN
 INSERT INTO before_employee_create
SET
 employee_name = NEW.employee_name,
 day_birth = NEW.day_birth,
 phone = NEW.phone,
 email= NEW.email,
 date = NOW();
END$$
 DELIMITER ;
SELECT * FROM before_employee_create;
Drop DATABASE threelion_management;