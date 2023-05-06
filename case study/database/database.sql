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
 CREATE TABLE khach_hang(
 ma_khach_hang INT PRIMARY KEY,
 ten_khach_hang VARCHAR(20) NOT NULL,
 so_dien_thoai INT NOT NULL UNIQUE,
 dia_chi VARCHAR(50),
 email VARCHAR(20) NOT NULL UNIQUE
 );
  CREATE TABLE nhan_vien(
 ma_nhan_vien INT PRIMARY KEY AUTO_INCREMENT,
 ten_nhan_vien VARCHAR(50) NOT NULL,
 ngay_sinh DATE NOT NULL,
 so_dien_thoai INT NOT NULL UNIQUE,
 email VARCHAR(50) NOT NULL
);
INSERT INTO nhan_vien(ten_nhan_vien,ngay_sinh,so_dien_thoai,email) values("nhan","1995-05-05","0905130596","nhan@gmail.com"),
("An","1997-06-05","0903130596","an@gmail.com");
SELECT * FROM nhan_vien;
 CREATE TABLE hoa_don(
 ma_hoa_don INT PRIMARY KEY,
 ma_khach_hang INT, FOREIGN KEY(ma_khach_hang) REFERENCES khach_hang(ma_khach_hang),
 ma_loai_dich_vu INT, FOREIGN KEY(ma_loai_dich_vu) REFERENCES loai_dich_vu(ma_loai_dich_vu),
 ma_nhan_vien INT , FOREIGN KEY(ma_nhan_vien) REFERENCES nhan_vien(ma_nhan_vien),
 gio_bat_dau DATETIME NOT NULL,
 so_gio_dat INT
 );

 CREATE TABLE hoa_don_chi_tiet (
 ma_hoa_don_chi_tiet INT PRIMARY KEY,
 ma_hoa_don INT, FOREIGN KEY(ma_hoa_don) REFERENCES hoa_don(ma_hoa_don),
 tong_tien INT
 );
INSERT INTO dich_vu (ten_dich_vu,gia) VALUES("Sân 5",400000),
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
DROP DATABASE threelion_management;