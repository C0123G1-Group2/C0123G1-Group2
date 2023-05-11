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
    phone INT NOT NULL UNIQUE,
    email VARCHAR(50) NOT NULL,
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
    total_price INT,
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
INSERT INTO employee (employee_name , day_birth,phone,email) VALUES('Thang','2001-09-12','010101001','thang@gmail.com'),
('Vien','2001-01-22','011232001','vien@gmail.com'),
('An','1999-07-19','555666666','an@gmail.com');

SELECT * FROM orders;