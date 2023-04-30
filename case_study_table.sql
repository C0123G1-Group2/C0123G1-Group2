CREATE DATABASE threelion_management;
USE threelion_management;
CREATE TABLE dich_vu(
ma_dich_vu INT PRIMARY KEY,
ten_dich_vu VARCHAR(20) NOT NULL,
gia DOUBLE NOT NULL);
CREATE TABLE loai_dich_vu(
ma_loai_dich_vu INT PRIMARY KEY AUTO_INCREMENT,
ma_dich_vu INT, FOREIGN KEY(ma_dich_vu) REFERENCES dich_vu(ma_dich_vu),
ten_loai_dich_vu VARCHAR(20) NOT NULL UNIQUE
 );
INSERT INTO dich_vu VALUES(1,"Sân 5",400000),
(2,"Sân 7",590000),
(3,"Sân futsal",600000);
INSERT INTO loai_dich_vu VALUES (1,1,"Sân số 1"),
(2,1,"Sân số 2"),
(4,1,"Sân số 4"),
(5,2,"Sân số 5"),
(6,2,"Sân số 6"),
(7,3,"Sân số 7"),
(8,3,"Sân số 8");
SELECT * FROM dich_vu dv
JOIN loai_dich_vu ldv ON ldv.ma_dich_vu = dv.ma_dich_vu;
 

 