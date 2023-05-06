CREATE DATABASE threelion_management;
USE threelion_management;
CREATE TABLE dich_vu(
ma_dich_vu INT PRIMARY KEY AUTO_INCREMENT,
ten_dich_vu VARCHAR(20) NOT NULL,
gia DOUBLE NOT NULL);
CREATE TABLE loai_dich_vu(
ma_loai_dich_vu INT PRIMARY KEY AUTO_INCREMENT,
ma_dich_vu INT, FOREIGN KEY(ma_dich_vu) REFERENCES dich_vu(ma_dich_vu),
ten_loai_dich_vu VARCHAR(20) NOT NULL UNIQUE
 );
 CREATE TABLE customer(
 customer_id INT PRIMARY KEY,
 name VARCHAR(20) NOT NULL,
 phone_number  VARCHAR(11) NOT NULL UNIQUE,
 address VARCHAR(50),
 email VARCHAR(50) NOT NULL UNIQUE
 );
 CREATE TABLE hoa_don(
 ma_hoa_don INT PRIMARY KEY,
 ma_khach_hang INT, FOREIGN KEY(ma_khach_hang) REFERENCES khach_hang(ma_khach_hang),
 ma_loai_dich_vu INT, FOREIGN KEY(ma_loai_dich_vu) REFERENCES loai_dich_vu(ma_loai_dich_vu),
 gio_bat_dau DATETIME NOT NULL,
 so_gio_dat INT
 );
 CREATE TABLE hoa_don_chi_tiet (
 ma_hoa_don_chi_tiet INT PRIMARY KEY,
 ma_hoa_don INT, FOREIGN KEY(ma_hoa_don) REFERENCES hoa_don(ma_hoa_don),
 tong_tien INT
 );
khach_hangINSERT INTO dich_vu (ten_dich_vu,gia) VALUES("Sân 5",400000),
("Sân 7",590000),
("Sân futsal",600000);
INSERT INTO loai_dich_vu (ma_dich_vu,ten_loai_dich_vu) VALUES (1,"Sân số 1"),
(1,"Sân số 2"),
(1,"Sân số 4"),
(2,"Sân số 5"),
(2,"Sân số 6"),
(3,"Sân số 7"),
(3,"Sân số 8");
SELECT * FROM dich_vu dv
JOIN loai_dich_vu ldv ON ldv.ma_dich_vu = dv.ma_dich_vu;
-- DROP DATABASE threelion_management

SELECT * FROM customer;
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
