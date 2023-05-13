CREATE DATABASE threelion_management;
USE threelion_management;
CREATE TABLE soccer_field (
    soccer_field_id INT PRIMARY KEY AUTO_INCREMENT,
    soccer_field_name VARCHAR(20) NOT NULL UNIQUE,
    soccer_field_type VARCHAR(20) NOT NULL,
    price DOUBLE NOT NULL,
     created_at DATETIME DEFAULT NOW(),
     update_at DATETIME DEFAULT NOW()
);
CREATE TABLE customer (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(20) NOT NULL,
    phone_number VARCHAR(11) NOT NULL UNIQUE,
    address VARCHAR(50),
    email VARCHAR(50) NOT NULL UNIQUE,
    created_at DATETIME DEFAULT NOW(),
    update_at DATETIME DEFAULT NOW()
);
CREATE TABLE employee (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_name VARCHAR(50) NOT NULL,
    day_birth DATE NOT NULL,
    phone VARCHAR(20) NOT NULL UNIQUE,
    email VARCHAR(50) NOT NULL UNIQUE,
     created_at DATETIME DEFAULT NOW(),
     update_at DATETIME DEFAULT NOW()
);
CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    FOREIGN KEY (customer_id)
        REFERENCES customer (customer_id),
    employee_id INT,
    FOREIGN KEY (employee_id)
        REFERENCES employee (employee_id),
    soccer_field_id INT,
    FOREIGN KEY (soccer_field_id)
        REFERENCES soccer_field (soccer_field_id),
    begin_time VARCHAR(50) NOT NULL,
    rental_time INT,
    total_price DOUBLE,
    created_at DATETIME DEFAULT NOW()
);
SELECT * FROM orders;

CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_login VARCHAR(50) NOT NULL UNIQUE,
    password_login VARCHAR(60) NOT NULL,
    is_cus INT NOT NULL,
    is_admin INT NOT NULL
);
INSERT INTO soccer_field (soccer_field_name,soccer_field_type,price) VALUES ("Sân số 1","sân 5",50),
("Sân số 2","sân 5",50),
("Sân số 3","sân 5",50),
("Sân số 4","sân 5",50),
("Sân số 5","sân 7",80),
("Sân số 6","sân 7",80),
("Sân số 7","sân futlsan",100),
("Sân số 8","sân futlsan",100);
INSERT INTO customer (`name`,phone_number,address,email) VALUES
( 'Nguyễn  Thắng', '0788391953', 'Hòa Xuân,Cẩm Lệ,Đà Nẵng', 'nguyenthangfa2001@gmail.com'),
( 'Jemr', '078232345', 'Hòa Xuân,Cẩm Lệ,Đà Nẵng', 'ducthanh@gmail.com'),
( 'Riias', '033987789', 'Khuê Trung,Cẩm Lệ,Đà Nẵng', 'ducthong@gmail.com'),
( 'Maoir', '0905378291', 'Hòa Thọ Đông,Cẩm Lệ,Đà Nẵng', 'ducthinh@gmail.com'),
( 'Nguyễn Đức Thanh', '0914090627', 'Hòa Thọ Tây,Cẩm Lệ,Đà Nẵng', 'khsts@gmail.com'),
( 'Nguyễn Đức Thạnh', '0782391999', 'Hòa Khánh Bắc,Liên Chiểu,Đà Nẵng', 'thanhboi12@gmail.com'),
( 'Nguyễn Đức Nhân', '0782391443', 'Hòa Phát,Cẩm Lệ,Đà Nẵng', 'nhanduc@gmail.com'),
( 'Kjzi', '0905339911', 'Hòa Xuân,Cẩm Lệ,Đà Nẵng', 'hoangkhdz@gmail.com'),
('Nguyễn Hoàng Tú', '0914000627', 'Hòa Nhơn,Hòa Vang,Đà Nẵng', 'tu621@gmail.com'),
( 'Ocon', '0905111923', 'Hòa An,Cẩm Lệ,Đà Nẵng', 'nhantu3489@gmail.com'),
('Nguyễn Huy Đức', '033999761', 'Hòa Tiến,Hòa Vang,Đà Nẵng', 'duclahoa@gmail.com'),
( 'Nguyễn Huỳnh Huy', '0914543891', 'Hòa Xuân,Cẩm Lệ,Đà Nẵng', 'huynhhuy123@gmail.com'),
( 'Rmoos', '0932979939', 'Hòa Thọ Tây,Cẩm Lệ,Đà Nẵng', 'thinhkhdz97@gmail.com'),
('Nguyễn Văn Hùng', '0782990012', 'Hòa Thọ Tây,Cẩm Lệ,Đà Nẵng', 'hungvan123@gmail.com'),
( 'Nguyễn Thanh Long', '0782143391', 'Hòa Phát,Cẩm Lệ,Đà Nẵng', 'thanhlongzz@gmail.com')
;

INSERT INTO employee (employee_name , day_birth,phone,email) VALUES('Duc Thang','2001-09-12','0010101001','thang@gmail.com'),
('Ho Vien','2001-01-22','0867561009','vien@gmail.com'),
('Truong An','1999-07-19','0121215543','truongan@gmail.com'),
('An Khang','1999-12-19','2324334242','ankhang@gmail.com'),
('Quoc Thien','1991-01-12','0123456789','trungthien@gmail.com'),
('Quoc Hoa','1999-11-19','0124353689','quochoa@gmail.com'),
('Thanh Nhan','1992-11-01','0325879945','thanhnhan@gmail.com'),
('Anh Tuan','1989-06-19','0986754222','anhtuan@gmail.com'),
('Nam Say','2007-05-21','0258887531','namsay@gmail.com'),
('Bac Tao','2005-03-30','0987784526','bactao@gmail.com'),
('Con Ga','2001-09-19','0012548884','conga@gmail.com');
INSERT INTO orders (customer_id,employee_id,soccer_field_id,begin_time,rental_time,total_price) VALUES(2,1,3,'18h',2,100),
(2,2,3,'16h',1,50),
(1,3,3,'18h',1,50),
(3,1,4,'18h',2,100),
(4,4,6,'18h',2,200),
(5,3,6,'18h',1,100),
(4,5,7,'18h',2,160),
(2,3,3,'18h',1,50),
(1,1,3,'18h',2,50),
(1,2,3,'18h',1,80),
(2,1,3,'18h',2,100);
SELECT * FROM customer;
