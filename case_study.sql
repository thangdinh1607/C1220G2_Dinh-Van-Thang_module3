CREATE DATABASE IF NOT EXISTS furama_management;
-- drop database furama_management;
USE furama_management;
CREATE TABLE NhanVien (
    idNhanVien INT PRIMARY KEY,
    hoVaTen VARCHAR(50),
    ngaySinh DATE,
    soCMND VARCHAR(45),
    sdt VARCHAR(45),
    email VARCHAR(45),
    diaChi VARCHAR(45),
    idViTri INT,
    idTrinhDo INT,
    idBoPhan INT
);
CREATE TABLE ViTri (
    idViTri INT PRIMARY KEY,
    tenViTri VARCHAR(45)
);
CREATE TABLE TrinhDo (
    idTrinhDo INT PRIMARY KEY,
    trinhDo VARCHAR(45)
);
CREATE TABLE BoPhan (
    idBoPhan INT PRIMARY KEY,
    tenBoPhan VARCHAR(45)
);
CREATE TABLE KhachHang(
    idKhachHang INT PRIMARY KEY,
    hoVaTen VARCHAR(45),
    ngaySinh DATE,
    soCMND VARCHAR(45),
    sdt VARCHAR(45),
    emai VARCHAR(45),
    diaChi VARCHAR(45),
    idLoaiKhach INT
);
CREATE TABLE LoaiKhach (
    idLoaiKhach INT PRIMARY KEY,
    tenLoaiKhach VARCHAR(45)
);

CREATE TABLE HopDong (
    idHopDong INT PRIMARY KEY,
    ngayLamHopDong DATE,
    ngayKetThuc DATE,
    tienDatCoc INT,
    tongTien INT,
    idNhanVien INT,
    idKhachHang INT,
    idDichVu INT
);
CREATE TABLE HopDongChiTiet (
    idHopDongChiTiet INT PRIMARY KEY,
    soLuong INT,
    idHopDong INT,
    idDichVuDiKem INT
);
CREATE TABLE DichVuDiKem (
    idDichVuDiKem INT PRIMARY KEY,
    tenDichVuDiKem VARCHAR(45),
    gia INT,
    donVi INT,
    trangThaiKhaDung VARCHAR(45)
);
CREATE TABLE DichVu (
    idDichVu INT PRIMARY KEY,
    tenDichVu VARCHAR(45),
    dienTich INT,
    soTang INT,
    soNguoiToiDa VARCHAR(45),
    chiPhiThue VARCHAR(45),
    trangThai VARCHAR(45),
    idKieuThue INT,
    idLoaiDichVu INT
);
CREATE TABLE KieuThue (
    idKieuThue INT PRIMARY KEY,
    tenKieuThue VARCHAR(45),
    gia INT
);
CREATE TABLE LoaiDichVu (
    idLoaiDichVu INT PRIMARY KEY,
    tenLoaiDichVu VARCHAR(45)
);

ALTER TABLE NhanVien
ADD FOREIGN KEY (idViTri) REFERENCES ViTri(idViTri),
ADD FOREIGN KEY (idTrinhDo) REFERENCES Trinhdo(idTrinhDo),
ADD FOREIGN KEY (idBoPhan) REFERENCES BoPhan(idBoPhan);

ALTER TABLE KhachHang
ADD FOREIGN KEY (idLoaiKhach) REFERENCES LoaiKhach(idLoaiKhach);

ALTER TABLE HopDong
ADD FOREIGN KEY (idNhanVien) REFERENCES NhanVien(idNHanVien),
ADD FOREIGN KEY (idKhachHang) REFERENCES KhachHang(idKhachHang),
ADD FOREIGN KEY (idDichVu) REFERENCES DichVu(idDichVu);

ALTER TABLE HopDongChiTiet
ADD FOREIGN KEY (idHopDong) REFERENCES HopDong(idHopDong),
ADD FOREIGN KEY (idDichVuDiKem) REFERENCES DichVuDiKem(idDichVuDiKem);

ALTER TABLE DichVu
ADD FOREIGN KEY (idKieuThue) REFERENCES KieuThue(idKieuThue),
ADD FOREIGN KEY (idLoaiDichVu) REFERENCES LoaiDichVu(idLoaiDichVu);


INSERT INTO NhanVien(idNhanVien,hoVaTen,ngaySinh,soCMND,sdt,email,diaChi,idViTri,idTrinhDo,idBoPhan)
VALUE
(1,'Đinh Văn Thăng','2000-01-01','123456781','0901123451','thangdinh1607@gmail.com','Đà Nẵng',1,1,1),
(2,'Mã Văn Mèo','2000-02-02','023456782','0901123452','gaugau@gmail.com','Hà Nội',2,3,4),
(3,'Gâu Gâu','2000-03-03','123456783','0901123453','meomeo@gmail.com','Sài Gòn',3,4,1),
(4,'Meo Meo','2000-04-04','123456784','0901123454','abc@gmail.com','Hải Phòng',1,2,4),
(5,'Mã Văn Tài','2000-05-05','123456785','0901123455','123456@gmail.com','Quảng Nam',2,2,2);

INSERT INTO ViTri(idViTri,tenViTri)
VALUE
(1,'Lễ tân'),
(2,'phục vụ'),
(3,'chuyên viên'),
(4,'giám sát'),
(5,'quản lý'),
(6,'giám đốc');

INSERT INTO Trinhdo(idTrinhDo,trinhDo)
VALUE
(1,'Trung cấp'),
(2,'Cao đẳng'),
(3,'Đại học'),
(4,'Sau đại học');


INSERT INTO BoPhan(idBoPhan,tenBoPhan)
VALUE
(1,'Sale – Marketing'),
(2,'Hành Chính'),
(3,'Phục vụ'),
(4,'Quản lý');

INSERT INTO KhachHang(idKhachHang,hoVaTen,ngaySinh,soCMND,sdt,emai,diaChi,idLoaiKhach)
VALUE
(1,'Khách Văn Hàng','2001-01-10','123456789','0902123456','khachvanhang@gmail.com','Đà Nẵng',1),
(2,'Khách Văn','2001-01-11','223456789','0902123456','khachvan@gmail.com','Hà Nội',2),
(3,'Khách','2001-01-12','323456789','0902123456','khach@gmail.com','Hải Phòng',3),
(4,'Khách Văn Gâu','2001-01-13','423456789','0902123456','khachvangau@gmail.com','Quảng Trị',2),
(5,'Khách Văn Meo','2001-01-14','523456789','0902123456','khachvanmeo@gmail.com','Quảng Nam',1),
(6,'Khách  Meo','2001-01-14','523456789','0902123456','khachvanmeo@gmail.com','Quảng Nam',1),
(7,'Khách Văn Gâu','2001-01-13','423456789','0902123456','khachvangau@gmail.com','Quảng Trị',2),
(8,'Khách Văn Hàngggg','2001-01-10','123456789','0902123456','khachvanhang@gmail.com','Đà Nẵng',1),
(9,'Khách Văn Hàngggg','2001-01-10','123456789','0902123456','khachvanhang@gmail.com','Đà Nẵng',1),
(10,'Hàng Văn Khách','2001-01-10','123456789','0902123456','khachvanhang@gmail.com','Đà Nẵng',2);

INSERT INTO LoaiKhach(idLoaiKhach,tenLoaiKhach)
VALUE
(1,'Diamond'),
(2,'Platinium'),
(3,'Gold'),
(4,'Silver'),
(5,'Member');

INSERT INTO HopDong(idHopDong,ngayLamHopDong,ngayKetThuc,tienDatCoc,tongTien,idNhanVien,idKhachHang,idDichVu)
VALUE
(1,'2000-12-30','2001-12-30',50,100,1,null,null),
(2,'2000-11-30','2001-12-30',50,100,null,2,null),
(3,'2000-10-30','2001-12-30',50,100,null,2,3),
(4,'2000-9-30','2001-12-30',50,100,2,null,null),
(5,'2000-8-30','2001-12-30',50,100,null,null,3),
(6,'2000-7-30','2001-12-30',50,100,null,2,3),
(7,'2000-8-30','2001-01-30',50,100,null,null,3),
(8,'2000-1-30','2001-12-30',50,100,null,2,3);
INSERT INTO HopDongChiTiet(idHopDongChiTiet,soLuong)
VALUE
(1,1),
(2,2),
(3,3),
(4,4),
(5,5);

INSERT INTO DichVuDiKem(idDichVuDiKem,tenDichVuDiKem,gia,donVi,trangThaiKhaDung)
VALUE
(1,'massage',10,1,'OK'),
(2,'karaoke',10,1,'OK'),
(3,'thức ăn',10,1,'OK'),
(4,'nước uống',10,1,'OK'),
(5,'thuê xe di chuyển tham quan resort',10,1,'OK');

INSERT INTO DichVu(idDichVu,tenDichVu,dienTich,soTang,soNguoiToiDa,chiPhiThue,trangThai,idKieuThue,idLoaiDichVu)
VALUE
(1,'Pool',100,2,2,50,'OK',1,1),
(2,'Bar',100,2,2,50,'OK',2,2),
(3,'Spa',100,2,2,50,'OK',4,3);
INSERT INTO KieuThue(idKieuThue,tenKieuThue,gia)
VALUE
(1,'năm',100),
(2,'tháng',80),
(3,'ngày',60),
(4,'giờ',40);

INSERT INTO LoaiDichVu(idLoaiDichVu,tenLoaiDichVu)
VALUE
(1,'Villa'),
(2,'House'),
(3,'Room');

select *
from NhanVien
where hoVaTen like 'M%';

select *
from KhachHang
where (diaChi = 'Đà Nẵng' or diaChi = 'Quảng Trị') and DATEDIFF(now(),ngaySinh)/365 > 18 and  DATEDIFF(now(),ngaySinh)/365 < 50;

select hoVaTen Tên,count(hoVaTen) as 'Số lần' 
from KhachHang
where idLoaiKhach = 1
group by hoVaTen
order by idLoaiKhach;

select KhachHang.idKhachHang ,KhachHang.hoVaTen,LoaiKhach.tenLoaiKhach,
HopDong.idHopDong,DichVu.tenDichVu,HopDong.ngayLamHopDong,HopDong.ngayKetThuc,(DichVu.chiPhiThue+ DichVuDiKem.gia*DichVuDiKem.donVI) as  TongTien
from KhachHang
  left join HopDong on KhachHang.idKhachHang = HopDong.idHopDong
  left join DichVu on  KhachHang.idKhachHang =  DichVu.idDichVu
  left join LoaiKhach on  KhachHang.idKhachHang = LoaiKhach.idLoaiKhach
left join DichVuDiKem on KhachHang.idKhachHang = DichVuDiKem.idDichVuDiKem;


select DichVu.idDichVu,DichVu.tenDichVu,DichVu.dienTich,
DichVu.chiPhiThue,LoaiDichVu.tenLoaiDichVu
from LoaiDichVu
inner join DichVu on DichVu.idLoaidDichVu = LoaiDichVu.idLoaiDichVu
inner join HopDong on HopDong.idDichVu = DichVu.idDichVu
where month(HopDong.ngayLamHopDong) <> 1 ;



