DROP DATABASE Ass_Java4
go
CREATE DATABASE Ass_Java4
go
USE Ass_Java4

go

DROP TABLE Users
go
CREATE TABLE Users(
UserName nvarchar(50) not null,
Password nvarchar(50) null,
Ten nvarchar(50) null,
SDT nvarchar(50) null,
Permission nvarchar(50) null,

CONSTRAINT PK_KhachHang PRIMARY KEY (UserName)
)

DELETE FROM Users
INSERT INTO Users(UserName,Password,Ten,SDT,Permission) VALUES('Admin','123',N'Quản Lý','012345679','admin')
INSERT INTO Users(UserName,Password,Ten,SDT,Permission) VALUES('HuynhManhThang','123',N'Khách Hàng','012345678','nv')
/*
INSERT INTO Users(UserName,Password,Ten,SDT,Permission) VALUES('xyz','123',N'XYX','012345678','nv')
INSERT INTO Users(UserName,Password,Ten,SDT,Permission) VALUES('uic','123',N'UI IA CE','012345678','nv')
INSERT INTO Users(UserName,Password,Ten,SDT,Permission) VALUES('HuynhManhThang','123',N'Huỳnh Mạnh Thắng','012345679','admin')
INSERT INTO Users(UserName,Password,Ten,SDT,Permission) VALUES('NguyenAnhDuc','123',N'Nguyễn Anh Đức','012345678','admin')
INSERT INTO Users(UserName,Password,Ten,SDT,Permission) VALUES('NguyenCuongThinh','123',N'Nguyễn Cường Thịnh','012345678','admin')
INSERT INTO Users(UserName,Password,Ten,SDT,Permission) VALUES('admin','123',N'admin','012345678','admin')
*/

IF OBJECT_ID('SANPHAM') IS NOT NULL
	DROP TABLE SANPHAM
GO
CREATE TABLE SANPHAM
(
	MASP	NVARCHAR (20) NOT NULL,
	TENSP	NVARCHAR(30) NULL,	
	GIA NVARCHAR (50) NULL,
	

CONSTRAINT PK_SANPHAM PRIMARY KEY(MASP)
)
delete from SANPHAM
insert into SANPHAM values('SP01',N'Mercedes maybach s class 2018','1000000')
insert into SANPHAM values('SP02',N'Mercedes maybach s class 2019','20000')
insert into SANPHAM values('SP03',N'Mercedes maybach s class 2020','400000')
insert into SANPHAM values('SP04',N'Mercedes maybach s class 2021','1000000')
insert into SANPHAM values('SP05',N'Mercedes maybach s class 2022','20000')
insert into SANPHAM values('SP06',N'Mercedes maybach s class 2023','400000')
insert into SANPHAM values('SP07',N'Mercedes maybach s class 2024','1000000')
insert into SANPHAM values('SP08',N'Mercedes maybach s class 2025','20000')
insert into SANPHAM values('SP09',N'Mercedes maybach s class 2026','400000')
insert into SANPHAM values('SP010',N'Mercedes maybach s class 2027','1000000')
insert into SANPHAM values('SP011',N'Mercedes maybach s class 2028','20000')
insert into SANPHAM values('SP012',N'Mercedes maybach s class 2029','400000')

SELECT * FROM Users
SELECT * FROM SANPHAM