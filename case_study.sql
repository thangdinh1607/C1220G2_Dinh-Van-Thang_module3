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
(1,'??inh V??n Th??ng','2000-01-01','123456781','0901123451','thangdinh1607@gmail.com','???? N???ng',1,1,1),
(2,'M?? V??n M??o','2000-02-02','023456782','0901123452','gaugau@gmail.com','H?? N???i',2,3,4),
(3,'G??u G??u','2000-03-03','123456783','0901123453','meomeo@gmail.com','S??i G??n',3,4,1),
(4,'Meo Meo','2000-04-04','123456784','0901123454','abc@gmail.com','H???i Ph??ng',1,2,4),
(5,'M?? V??n T??i','2000-05-05','123456785','0901123455','123456@gmail.com','Qu???ng Nam',2,2,2),
(6,'M?? V??n Leo','2000-05-05','12nhanvien3456785','0901123455','123456@gmail.com','Qu???ng Nam',2,2,2);

INSERT INTO ViTri(idViTri,tenViTri)
VALUE
(1,'L??? t??n'),
(2,'ph???c v???'),
(3,'chuy??n vi??n'),
(4,'gi??m s??t'),
(5,'qu???n l??'),
(6,'gi??m ?????c');

INSERT INTO Trinhdo(idTrinhDo,trinhDo)
VALUE
(1,'Trung c???p'),
(2,'Cao ?????ng'),
(3,'?????i h???c'),
(4,'Sau ?????i h???c');


INSERT INTO BoPhan(idBoPhan,tenBoPhan)
VALUE
(1,'Sale ??? Marketing'),
(2,'H??nh Ch??nh'),
(3,'Ph???c v???'),
(4,'Qu???n l??');

INSERT INTO KhachHang(idKhachHang,hoVaTen,ngaySinh,soCMND,sdt,emai,diaChi,idLoaiKhach)
VALUE
(1,'Kh??ch V??n H??ng','2001-01-10','123456789','0902123456','khachvanhang@gmail.com','???? N???ng',5),
(2,'Kh??ch V??n','2001-01-11','223456789','0902123456','khachvan@gmail.com','H?? N???i',2),
(3,'Kh??ch','2001-01-12','323456789','0902123456','khach@gmail.com','H???i Ph??ng',3),
(4,'Kh??ch V??n G??u','2001-01-13','423456789','0902123456','khachvangau@gmail.com','Qu???ng Tr???',3),
(5,'Kh??ch V??n Meo','2001-01-14','523456789','0902123456','khachvanmeo@gmail.com','Qu???ng Nam',1),
(6,'Kh??ch  Meo1','2001-01-14','523456789','0902123456','khachvanmeo@gmail.com','Qu???ng Nam',1),
(7,'Kh??ch V??n G??u','2001-01-13','423456789','0902123456','khachvangau@gmail.com','Qu???ng Tr???',2),
(8,'Kh??ch V??n H??ngggg','2001-01-10','123456789','0902123456','khachvanhang@gmail.com','???? N???ng',4),
(9,'Kh??ch V??n H??ngggg','2001-01-10','123456789','0902123456','khachvanhang@gmail.com','???? N???ng',1),
(10,'H??ng V??n Kh??ch','2001-01-10','123456789','0902123456','khachvanhang@gmail.com','???? N???ng',2),
(11,'Kh??ch  Meoooo','2001-01-14','523456789','0902123456','khachvanmeo@gmail.com','Qu???ng Ng??i',1),
(12,'Kh??ch  Meo2','2001-01-14','523456789','0902123456','khachvanmeo@gmail.com','Vinh',2),
(13,'Kh??ch  Meoooo11','2001-01-14','523456789','0902123456','khachvanmeo@gmail.com','Qu???ng Ng??i',1),
(14,'Kh??ch  Meo444oo','2001-01-14','523456789','0902123456','khachvanmeo@gmail.com','Qu???ng Ng??i',1),
(15,'Kh??ch  Meoo12oo','2001-01-14','523456789','0902123456','khachvanmeo@gmail.com','Qu???ng Ng??i',1);
INSERT INTO LoaiKhach(idLoaiKhach,tenLoaiKhach)
VALUE
(1,'Diamond'),
(2,'Platinium'),
(3,'Gold'),
(4,'Silver'),
(5,'Member');

INSERT INTO HopDong(idHopDong,ngayLamHopDong,ngayKetThuc,tienDatCoc,tongTien,idNhanVien,idKhachHang,idDichVu)
VALUE
(1,'2018-12-30','2001-12-30',50,100,1,11,7),
(2,'2018-9-30','2001-12-30',50,100,2,3,6),
(3,'2019-03-30','2001-12-30',50,100,5,6,5),
(4,'2018-11-30','2001-12-30',50,100,1,12,1),
(5,'2019-01-30','2001-12-30',50,100,2,2,2),
(6,'2000-7-30','2001-12-30',50,100,3,7,3),
(7,'2018-8-30','2001-12-30',50,100,4,4,3),
(8,'2000-8-30','2001-01-30',50,100,5,6,1),
(9,'2000-8-30','2001-01-30',50,100,1,5,3),
(10,'2000-8-30','2001-01-30',50,100,2,1,2),
(11,'2019-1-30','2001-12-30',50,100,3,11,4),
(12,'2019-03-30','2001-01-30',50,100,4,8,4),
(13,'2019-06-30','2001-01-30',50,100,5,2,2),
(14,'2019-03-30','2001-12-30',50,100,1,1,null),
(15,'2019-08-30','2001-12-30',50,100,2,2,2),
(16,'2019-12-30','2001-12-30',50,100,3,13,2),
(17,'2019-03-30','2001-12-30',50,100,4,13,2),
(18,'2019-01-30','2001-12-30',50,100,5,14,3);
INSERT INTO HopDongChiTiet(idHopDongChiTiet,soLuong,idHopDong,idDichVuDiKem)
VALUEs
(1,1,1,1),
(2,1,2,2),
(3,1,3,3),
(4,2,4,4),
(5,1,5,5),
(6,1,6,4),
(7,1,7,5),
(8,1,8,5),
(9,1,9,5),
(10,2,8,5),
(11,2,8,5),
(12,3,8,5),
(13,1,8,5),
(14,3,8,5);
INSERT INTO DichVuDiKem(idDichVuDiKem,tenDichVuDiKem,gia,donVi,trangThaiKhaDung)
VALUE
(1,'massage',10,1,'OK'),
(2,'karaoke',10,1,'OK'),
(3,'th???c ??n',10,1,'OK'),
(4,'n?????c u???ng',10,1,'OK'),
(5,'thu?? xe di chuy???n tham quan resort',10,1,'OK');

INSERT INTO DichVu(idDichVu,tenDichVu,dienTich,soTang,soNguoiToiDa,chiPhiThue,trangThai,idKieuThue,idLoaiDichVu)
VALUE
(1,'Pool',100,2,2,50,'OK',1,1),
(2,'Bar',100,2,2,50,'OK',2,2),
(3,'Spa',100,2,2,50,'OK',4,3),
(4,'Fitness',100,2,2,50,'OK',3,1),
(5,'Laundry ',100,2,2,50,'OK',2,2),
(6,'Bell ',100,2,2,50,'OK',3,3),
(7,'Catering ',100,2,2,50,'OK',4,2);

INSERT INTO KieuThue(idKieuThue,tenKieuThue,gia)
VALUE
(1,'n??m',100),
(2,'th??ng',80),
(3,'ng??y',60),
(4,'gi???',40);

INSERT INTO LoaiDichVu(idLoaiDichVu,tenLoaiDichVu)
VALUE
(1,'Villa'),
(2,'House'),
(3,'Room');

-- -1-- 
select *
from NhanVien
where (hoVaTen like 'M%' or hoVaTen like 'H%') and length(nhanvien.hoVaTen)<=15 ;
-- --2
select *
from KhachHang
where (diaChi = '???? N???ng' or diaChi = 'Qu???ng Tr???') and DATEDIFF(now(),ngaySinh)/365 > 18 and  DATEDIFF(now(),ngaySinh)/365 < 50;
-- 3
select hoVaTen T??n,count(hoVaTen) as 'S??? l???n' 
from KhachHang
where idLoaiKhach = 1
group by hoVaTen
order by idLoaiKhach;
-- 4-- 
select KhachHang.idKhachHang ,KhachHang.hoVaTen,LoaiKhach.tenLoaiKhach,
HopDong.idHopDong,DichVu.tenDichVu,HopDong.ngayLamHopDong,HopDong.ngayKetThuc,(DichVu.chiPhiThue+ DichVuDiKem.gia*DichVuDiKem.donVI) as  TongTien
from KhachHang
  left join HopDong on KhachHang.idKhachHang = HopDong.idHopDong
  left join DichVu on  KhachHang.idKhachHang =  DichVu.idDichVu
  left join LoaiKhach on  KhachHang.idKhachHang = LoaiKhach.idLoaiKhach
left join DichVuDiKem on KhachHang.idKhachHang = DichVuDiKem.idDichVuDiKem;

-- 5
select DichVu.idDichVu,DichVu.tenDichVu,DichVu.dienTich,
DichVu.chiPhiThue,LoaiDichVu.tenLoaiDichVu
from LoaiDichVu
inner join DichVu on DichVu.idLoaiDichVu = LoaiDichVu.idLoaiDichVu
inner join HopDong on HopDong.idDichVu = DichVu.idDichVu
where  month(HopDong.ngayLamHopDong) <> 1 and year(HopDong.ngayLamHopDong) <> 2019;

-- 6
select DichVu.idDichVu , DichVu.tenDichVu,DichVu.dienTich,DichVU.soNguoiToiDa,DichVu.chiPhiTHue,LoaiDichVu.tenLoaiDichVu
from LoaiDichVu
inner join DichVu on DichVu.idLoaiDichVu = LoaiDichVu.idLoaiDichVu
inner join HopDong on HopDong.idDichVu = DichVu.idDichVu
where year(HopDong.ngayLamHopDong) = 2018 and year(HopDong.ngayLamHopDong) <> 2019;

-- 7
select KhachHang.hoVaTen
from KhachHang
group by KhachHang.hoVaTen;
-- 8
select KhachHang.diaChi , count(KhachHang.diaChi) DiaChi
from KhachHang
group by KhachHang.diaChi;
-- 9
select month(HopDong.ngayLamHopDong)  `month`,count(month(HopDong.ngayLamHopDong)) `count`
from HopDong
where year(HopDong.ngayLamHopDong) = 2019;
-- 10
select  HopDong.idHopDong , HopDong.ngayLamHopDong , HopDong.ngayLamHopDong,HopDong.tienDatCoc, count(HopDongChiTiet.idHopDongChiTiet)
from HopDong
 right join HopDongChiTiet on HopDong.idHopdong = HopDongChiTiet.idHopDong
 group by HopDongChiTiet.idHopDong;
-- 11
select KhachHang.idKhachHang, KhachHang.hoVaTen, LoaiKhach.tenLoaiKhach,KhachHang.diaChi
from KhachHang
 inner join LoaiKhach on KhachHang.idLoaiKhach = LoaiKhach.idLoaiKhach
where LoaiKhach.tenLoaiKhach = 'Diamond' and KhachHang.diachi= 'Qu???ng Nam';
-- 12
select HopDong.idHopDong , NhanVien.hoVaTen,KhachHang.hoVaten,KHachHang.sdt,DIchVu.tenDichVu,hopdongchitiet.soLuong,hopdong.tiendatcoc
from HopDong 
left join NhanVien on HopDong.idNHanVien = NhanVien.idNhanVien
left join KhachHang on HopDong.idKhachHang = KhachHang.idKhachHang
left join DichVu on HopDong.idDichVu = DIchVu.idDichVu
left join HopDongChiTiet on HopDong.idHopDong= HopDongChiTiet.idHopDong
where HopDong.idHopDong in		(select idHopDong
								from hopdong
								where (month(ngayLamHopDOng) >9) and year(ngayLamHopDOng) =2019)
and HopDong.idHopDong not in 	(select idHopDong
								from hopdong
								where (month(ngayLamHopDOng) <7) and year(ngayLamHopDOng) =2019) ;

-- 13
select DichVuDikem.tenDichVuDiKem,count(HopDongChiTiet.soluong) 
from DichVuDiKem
right join HopDongChiTiet on DichVuDiKem.idDichVuDiKem = HopDongChiTiet.idDichVuDIKem
group by  DichVuDikem.tenDichVuDiKem
order by HopDongChiTiet.soluong desc limit 1;
-- 14
select HopDong.idHopDong ,LoaiDichVu.tenLoaiDichVu,DichVuDiKem.tenDichVuDiKem,HopDongChiTiet.soluong,count(soluong)
from hopdong
left join HopDongChiTiet on HopDong.idHopDong = HopDongChiTiet.idHopDong
right join DichVuDiKem on DichVuDiKem.idDichVuDiKem = HopDongChiTiet.idDichVuDiKem
left join DichVu on HopDong.idDichVu = DichVu.idDichVu
left join LoaiDichVu on LoaiDichVu.idLoaiDichVu = DichVu.idLoaiDichVu
group by DichVuDiKem.tenDIchVuDiKem
having count(soluong) =1;
-- 15
select nhanvien.idNhanVien,nhanvien.hoVaTen,trinhdo.trinhDo
,bophan.tenBoPhan,nhanvien.sdt,nhanvien.diaChi,hopdongchitiet.soLuong,sum(hopdongchitiet.soluong)
from nhanvien
left join trinhdo on nhanvien.idTrinhDo = trinhdo.idTrinhDo
left join bophan on nhanvien.idBoPhan = bophan.idBoPhan
left join hopdong on hopdong.idNhanVien =nhanvien.idNhanVien 
left join hopdongchitiet on hopdongchitiet.idHopDong = hopdong.idHopDong
group by nhanvien.idnhanvien
having sum(hopdongchitiet.soluong) < 4;

-- 16
delete from nhanvien
where not exists (select nhanvien.idnhanvien
			from hopdong 
            where hopdong.ngayLamHopDong
            between '2017-01-01' and '2019-12-31' and hopdong.idNhanVien = nhanvien.idNhanVien);
					

-- 17

-- dat 1 view
update khachhang
set idLoaiKhach = 2
where idLoaiKhach = 1 and idKhachHang in
 (select khachhang.idKhachHang
		from hopdong
		inner join khachhang on khachhang.idKhachHang = hopdong.idKhachHang
		inner join loaikhach on loaikhach.idLoaiKhach = khachhang.idLoaiKhach
		where year( hopdong.ngayLamHopDong) = 2019
		group by khachhang.idKhachHang
		having sum(hopdong.tongtien) > 100);

-- 18
SET FOREIGN_KEY_CHECKS=0;
delete khachhang,hopdong,hopdongchitiet
from khachhang
inner join hopdong on hopdong.idKhachHang = khachhang.idKhachHang
inner join hopdongchitiet on hopdong.idHopDong=hopdongchitiet.idHopDong
where year( hopdong.ngayLamHopDong) < 2016;
SET FOREIGN_KEY_CHECKS=1;

select * 
		from hopdong 
		left join khachhang on khachhang.idKhachHang = hopdong.idKhachHang
		left join loaikhach on loaikhach.idLoaiKhach = khachhang.idLoaiKhach
		where year( hopdong.ngayLamHopDong) = 2019




