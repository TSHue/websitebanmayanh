-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Aug 22, 2021 at 05:19 AM
-- Server version: 5.7.28
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mayanh`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `maadmin` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `tenadmin` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `matkhau` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`maadmin`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`maadmin`, `tenadmin`, `matkhau`, `email`) VALUES
('admin001', 'John', '$2a$08$wGlJcKYfD8uTnRWSoVsFo.ha5ad9PliZpj451ufs.iSAmHm9QGWTi', 'abc123@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `binhluan`
--

DROP TABLE IF EXISTS `binhluan`;
CREATE TABLE IF NOT EXISTS `binhluan` (
  `tentk` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `masp` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `noidung` text COLLATE utf8_unicode_ci NOT NULL,
  KEY `FK_BLmasp_SPmasp` (`masp`),
  KEY `FK_BLtentk_TKtentk` (`tentk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chitietdonhang`
--

DROP TABLE IF EXISTS `chitietdonhang`;
CREATE TABLE IF NOT EXISTS `chitietdonhang` (
  `madh` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `masp` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `soluong` int(11) NOT NULL,
  `dongia` int(11) NOT NULL,
  KEY `FK_CTDHmasp_SPmasp` (`masp`),
  KEY `FK_CTDHmadh_DHmadh` (`madh`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`madh`, `masp`, `soluong`, `dongia`) VALUES
('DH001', 'MA004', 2, 120000),
('DH001', 'MA007', 1, 250000),
('DH002', 'MA005', 2, 120000),
('DH002', 'MA004', 2, 250000),
('DH002', 'MA006', 3, 200000),
('DH003', 'MA001', 3, 2500000),
('DH003', 'MA005', 2, 3000000),
('DH003', 'MA004', 2, 2500000),
('DH1628071832194', 'MA001', 1, 18990000),
('DH1628071832194', 'MA004', 1, 11900000),
('DH1628072093630', 'MA005', 1, 26990000),
('DH1628144252713', 'MA003', 1, 12000000),
('DH1628144252713', 'MA005', 1, 26990000),
('DH1628147008331', 'MA003', 1, 12000000),
('DH1629431886924', 'MA008', 1, 13990000),
('DH1629431886924', 'MA004', 1, 11900000),
('DH1629514507619', 'MA007', 1, 2399000),
('DH1629514507619', 'MA008', 1, 13990000),
('DH1629514743536', 'MA002', 1, 12000000),
('DH1629514743536', 'MA003', 1, 12000000),
('DH1629514743536', 'MA001', 1, 18990000),
('DH1629598391264', 'MA004', 1, 11900000),
('DH1629598391264', 'MA003', 1, 12000000),
('DH1629598391264', 'MA006', 1, 113000000);

-- --------------------------------------------------------

--
-- Table structure for table `chitietmausac`
--

DROP TABLE IF EXISTS `chitietmausac`;
CREATE TABLE IF NOT EXISTS `chitietmausac` (
  `masp` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `mamau` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  KEY `FK_CTMmasp_SPmasp` (`masp`),
  KEY `FK_CTMmamau_MAUmamau` (`mamau`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chitietmausac`
--

INSERT INTO `chitietmausac` (`masp`, `mamau`) VALUES
('MA003', 'MAU01'),
('MA003', 'MAU02'),
('MA007', 'MAU02'),
('MA007', 'MAU03'),
('MA002', 'MAU01'),
('MA005', 'MAU01'),
('MA006', 'MAU01'),
('MA006', 'MAU02'),
('MA004', 'MAU01'),
('MA004', 'MAU02'),
('MA001', 'MAU01'),
('MA001', 'MAU02'),
('MA008', 'MAU01'),
('MA008', 'MAU03');

-- --------------------------------------------------------

--
-- Table structure for table `chitietphieunhap`
--

DROP TABLE IF EXISTS `chitietphieunhap`;
CREATE TABLE IF NOT EXISTS `chitietphieunhap` (
  `mapn` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `masp` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `soluong` int(11) NOT NULL,
  `dongia` int(11) NOT NULL,
  KEY `FK_CTPNmasp_SPmasp` (`masp`),
  KEY `FK_CTPNmasp_PNmapn` (`mapn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chitietphieunhap`
--

INSERT INTO `chitietphieunhap` (`mapn`, `masp`, `soluong`, `dongia`) VALUES
('1624420846880', 'MA007', 3, 0),
('1624420846880', 'MA002', 2, 0),
('1625052081222', 'MA005', 1, 0),
('1625052081222', 'MA007', 2, 0),
('1625052081222', 'MA006', 3, 0),
('1624855518898', 'MA005', 10, 0),
('1624855518898', 'MA008', 1, 0),
('PN002', 'MA004', 2, 0),
('PN002', 'MA005', 6, 0),
('PN001', 'MA004', 5, 0),
('PN001', 'MA007', 2, 0),
('1627266557381', 'MA003', 4, 11490000),
('1627266557381', 'MA007', 2, 2200000),
('1627266557381', 'MA006', 1, 110000000),
('1627106787051', 'MA007', 2, 2200000),
('1627106787051', 'MA008', 2, 12900000),
('1629171739942', 'MA007', 4, 2500000),
('1629171739942', 'MA002', 2, 11000000),
('1629603615633', 'MA003', 3, 11500000),
('1629603615633', 'MA004', 1, 10000000);

-- --------------------------------------------------------

--
-- Table structure for table `chitietthongso`
--

DROP TABLE IF EXISTS `chitietthongso`;
CREATE TABLE IF NOT EXISTS `chitietthongso` (
  `mats` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `masp` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `giatrits` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  KEY `FK_CTTSmats_TSmats` (`mats`),
  KEY `FK_CTTSmasp_SPmasp` (`masp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chitietthongso`
--

INSERT INTO `chitietthongso` (`mats`, `masp`, `giatrits`) VALUES
('ts1', 'MA001', 'CCD 20 megapixels'),
('ts3', 'MA001', '2.7 inch'),
('ts4', 'MA001', '100-800'),
('ts5', 'MA001', '15 - 1/2000 giây'),
('ts6', 'MA001', '2.5 ảnh/giây (chế độ Auto, chế độ P)'),
('ts7', 'MA001', 'NB-11LH'),
('ts1', 'MA003', 'Cảm biến Exmor™ APS HD CMOS 24.3MP có bộ xử lý BIONZ X™'),
('ts2', 'MA003', ''),
('ts3', 'MA003', ' Màn hình 3 inch'),
('ts4', 'MA003', 'ISO 100-25600'),
('ts5', 'MA003', ''),
('ts6', 'MA003', 'Tốc độ chụp 11 ảnh / giây'),
('ts7', 'MA003', 'Pin NP-FW50'),
('ts1', 'MA004', 'Cảm biến BSI CMOS 12MP'),
('ts2', 'MA004', 'Bộ xử lý hình ảnh TruePic VIII'),
('ts3', 'MA004', 'Màn hình: LCD 3.0 \"(1.040.000 pixel)'),
('ts4', 'MA004', 'Độ nhạy sáng ISO: Tự động, 100 đến 12800'),
('ts5', 'MA004', ' Màn trập: 1/2 đến 1/2000  '),
('ts6', 'MA004', ''),
('ts7', 'MA004', 'Pin tương thích Li-92B'),
('ts1', 'MA005', 'Cảm biến CCD 20 megapixel '),
('ts2', 'MA005', 'Bộ xử lí'),
('ts3', 'MA005', 'Màn hình'),
('ts4', 'MA005', 'Độ nhạy sáng (ISO)'),
('ts5', 'MA005', 'Màn chập'),
('ts6', 'MA005', 'Tốc độ chụp'),
('ts7', 'MA005', 'Pin'),
('ts1', 'MA006', 'Cảm biến nè'),
('ts2', 'MA006', 'Bộ xử lí'),
('ts3', 'MA006', 'Màn hình'),
('ts4', 'MA006', ''),
('ts5', 'MA006', 'Màn chập'),
('ts6', 'MA006', 'Tốc độ chụp'),
('ts7', 'MA006', 'Pin 1'),
('ts1', 'MA007', 'Cảm biến'),
('ts2', 'MA007', 'Bộ xử lí'),
('ts3', 'MA007', ''),
('ts4', 'MA007', 'Độ nhạy sáng (ISO)'),
('ts5', 'MA007', ''),
('ts6', 'MA007', 'Tốc độ chụp'),
('ts7', 'MA007', 'Pin'),
('ts1', 'MA002', 'Cảm biến BSI CMOS 12MP'),
('ts2', 'MA002', ''),
('ts3', 'MA002', 'Màn hình: LCD 3.0 \"(1.040.000 pixel)'),
('ts4', 'MA002', ''),
('ts5', 'MA002', 'Màn chập'),
('ts6', 'MA002', ''),
('ts7', 'MA002', 'Pin  NP-FW50'),
('ts1', 'MA008', 'Cảm biến Exmor™ APS HD CMOS 24.3MP có bộ xử lý BIONZ X™'),
('ts2', 'MA008', 'Bộ xử lí 1'),
('ts3', 'MA008', 'Màn hình 1'),
('ts4', 'MA008', 'Độ nhạy sáng (ISO)'),
('ts5', 'MA008', 'Màn chập 1'),
('ts6', 'MA008', 'Tốc độ chụp 1'),
('ts7', 'MA008', 'Pin 2');

-- --------------------------------------------------------

--
-- Table structure for table `danhgia`
--

DROP TABLE IF EXISTS `danhgia`;
CREATE TABLE IF NOT EXISTS `danhgia` (
  `tentk` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `masp` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `sosao` int(11) NOT NULL,
  KEY `FK_DGmasp_SPmasp` (`masp`),
  KEY `FK_DGtentk_TKtentk` (`tentk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `danhgia`
--

INSERT INTO `danhgia` (`tentk`, `masp`, `sosao`) VALUES
('John Doe', 'MA003', 5);

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

DROP TABLE IF EXISTS `donhang`;
CREATE TABLE IF NOT EXISTS `donhang` (
  `madh` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ngaydat` datetime NOT NULL,
  `tenkh` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sodt` int(11) NOT NULL,
  `diachi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ghichu` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `phivc` int(11) NOT NULL,
  `giamgia` int(11) NOT NULL,
  `tongtien` double NOT NULL,
  `trangthai` int(11) NOT NULL,
  `hinhthuctt` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `mavc` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `tentk` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`madh`),
  KEY `FK_DHmavc_VCmavc` (`mavc`),
  KEY `FK_DHtentk_TKtentk` (`tentk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`madh`, `ngaydat`, `tenkh`, `sodt`, `diachi`, `ghichu`, `phivc`, `giamgia`, `tongtien`, `trangthai`, `hinhthuctt`, `mavc`, `tentk`) VALUES
('DH001', '2021-05-27 06:50:53', 'Trần Văn A', 123456789, '26 Cao Lỗ, phường 4, quận 8', 'Gửi vào giờ hành chánh', 30000, 0, 12030000, 4, 'cod', 'vc001', 'Alexander'),
('DH002', '2021-07-11 08:26:19', 'Thúy Kiều', 1237894560, '80 3/2 phường 9, quận 11', NULL, 20000, 50000, 1310000, 1, 'vnpay', 'vc002', 'John Doe'),
('DH003', '2021-05-10 00:00:00', 'Nguyễn Thị Ánh', 1234567890, '86/6 Cao Lỗ, phường 6, quận 8', 'Gửi sau 5 giờ chiều', 20000, 0, 15000000, 3, 'atm', 'vc002', 'Ben'),
('DH1628071832194', '2021-08-08 17:10:32', 'Huệ', 1234567, '180 3/2, phường 8,  quận 11, thành phố Hồ Chí Minh', '', 35000, 0, 30925000, 4, 'cod', 'vc001', 'Alexander'),
('DH1628072093630', '2021-08-14 17:14:53', 'A', 1234567, '180 3/2, phường 8,  quận 11, thành phố Hồ Chí Minh', '', 25000, 0, 27015000, 4, 'cod', 'vc002', 'Alexander'),
('DH1628144252713', '2021-08-16 13:17:33', 'Thanh', 1234567, '180 3/2, phường 8,  quận 11, thành phố Hồ Chí Minh', 'Giao sau giờ hành chính', 25000, 0, 39015000, 3, 'vnpay', 'vc002', 'Alexander'),
('DH1628147008331', '2021-08-17 14:03:28', 'Tuyết', 123456789, '259 Lãnh Binh Thăng, phường 12, quận 11', 'giao sau giờ hành chính', 25000, 0, 12025000, 4, 'cod', 'vc002', 'John Doe'),
('DH1629431886924', '2021-08-20 10:08:06', 'Ahihi', 123456789, '259 Lãnh Binh Thăng, phường 12, quận 11', '', 25000, 6472500, 19442500, 1, 'vnpay', 'vc002', 'John Doe'),
('DH1629514507619', '2021-08-21 09:08:07', 'Hello', 123456789, '259 Lãnh Binh Thăng, phường 12, quận 11', '', 25000, 0, 16414000, 1, 'vnpay', 'vc002', 'John Doe'),
('DH1629514743536', '2021-08-21 09:08:03', 'Hello 1', 123456789, '259 Lãnh Binh Thăng, phường 12, quận 11', '', 25000, 0, 43015000, 3, 'vnpay', 'vc002', 'John Doe'),
('DH1629598391264', '2021-08-22 09:13:11', 'John Doe', 123456789, '259 Lãnh Binh Thăng, phường 12, quận 11', '', 25000, 0, 136925000, 1, 'cod', 'vc002', 'John Doe');

-- --------------------------------------------------------

--
-- Table structure for table `hinhanh`
--

DROP TABLE IF EXISTS `hinhanh`;
CREATE TABLE IF NOT EXISTS `hinhanh` (
  `tenhinh` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `masp` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`tenhinh`),
  KEY `FK_HAmasp_SPmasp` (`masp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hinhanh`
--

INSERT INTO `hinhanh` (`tenhinh`, `masp`) VALUES
('1626920338381.jpg', 'MA001'),
('1626920338430.jpg', 'MA001'),
('1627608392396.jpg', 'MA001'),
('1626921266299.jpg', 'MA002'),
('1626921266300.jpg', 'MA002'),
('1626921266310.jpg', 'MA002'),
('1626920497921.jpg', 'MA003'),
('1626920641996.jpg', 'MA003'),
('1626920740413.jpg', 'MA004'),
('1626920740414.jpg', 'MA004'),
('1626921925879.jpg', 'MA005'),
('1626921925882.jpg', 'MA005'),
('1626922357461.jpg', 'MA006'),
('1626922357463.jpg', 'MA006'),
('1626922357466.jpg', 'MA006'),
('1626922357468.jpg', 'MA006'),
('1626922357472.jpg', 'MA006'),
('1626922357473.jpg', 'MA006'),
('1626920895119.jpg', 'MA007'),
('1626920895136.jpg', 'MA007'),
('1626920895138.jpg', 'MA007'),
('1626921677047.jpg', 'MA008'),
('1626921677054.jpg', 'MA008'),
('1626921677055.jpg', 'MA008'),
('1626921677060.jpg', 'MA008'),
('1627446337237.jpg', 'MA008'),
('1627446337238.jpg', 'MA008');

-- --------------------------------------------------------

--
-- Table structure for table `loai`
--

DROP TABLE IF EXISTS `loai`;
CREATE TABLE IF NOT EXISTS `loai` (
  `maloai` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `tenloai` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`maloai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `loai`
--

INSERT INTO `loai` (`maloai`, `tenloai`, `deletedAt`) VALUES
('bridge', 'Máy ảnh Bridge', NULL),
('compact', 'Máy ảnh Compact (Du lịch)', NULL),
('dslr', 'Máy ảnh DSLR (phản xạ ống kính đơn kỹ thuật số)', NULL),
('film', 'Máy ảnh Film (Cơ)', NULL),
('mirrorless', 'Máy ảnh mirrorless', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `magiamgia`
--

DROP TABLE IF EXISTS `magiamgia`;
CREATE TABLE IF NOT EXISTS `magiamgia` (
  `magg` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `tenmagg` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ngayapdung` datetime NOT NULL,
  `ngayketthuc` datetime NOT NULL,
  `hinhthucgiam` tinyint(1) NOT NULL,
  `mucdo` int(11) NOT NULL,
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`magg`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `magiamgia`
--

INSERT INTO `magiamgia` (`magg`, `tenmagg`, `ngayapdung`, `ngayketthuc`, `hinhthucgiam`, `mucdo`, `deletedAt`) VALUES
('mondaygif', 'Mừng ngày quốc tế thiếu nhi', '2021-08-09 00:00:00', '2021-09-26 00:00:00', 0, 25, NULL),
('mondaygift', 'Mã quà đầu tuần ', '2021-05-31 00:00:00', '2021-06-01 00:00:00', 1, 20000, NULL),
('ngay0106', 'Mừng ngày quốc tế thiếu nhi', '2021-06-01 00:00:00', '2021-06-02 00:00:00', 0, 30, NULL),
('testthu', 'testthu', '2021-08-10 00:00:00', '2021-08-14 00:00:00', 0, 20, NULL),
('testthu1', 'Chỉ là test thử thôi 123', '2021-07-27 00:00:00', '2021-07-28 00:00:00', 1, 30000, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mausac`
--

DROP TABLE IF EXISTS `mausac`;
CREATE TABLE IF NOT EXISTS `mausac` (
  `mamau` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `tenmau` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`mamau`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mausac`
--

INSERT INTO `mausac` (`mamau`, `tenmau`) VALUES
('MAU01', 'Đen'),
('MAU02', 'Trắng'),
('MAU03', 'Đỏ');

-- --------------------------------------------------------

--
-- Table structure for table `nhacungcap`
--

DROP TABLE IF EXISTS `nhacungcap`;
CREATE TABLE IF NOT EXISTS `nhacungcap` (
  `mancc` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `tenncc` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sodt` int(11) NOT NULL,
  `diachi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`mancc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nhacungcap`
--

INSERT INTO `nhacungcap` (`mancc`, `tenncc`, `email`, `sodt`, `diachi`, `deletedAt`) VALUES
('NCC001', 'Đại lý máy ảnh', 'aloha123@gmail.com', 123456789, '103/4 Lũy Bán Bích, phường Tân thới hòa, quận Tân Phú', NULL),
('NCC002', 'Khánh Long Camera', 'khanhlong@gmail.com', 1237894560, '43 Huỳnh Thúc Kháng, P. Bến Nghé, Quận 1', NULL),
('NCC003', 'Gocamera', 'gocamera@gmail.com', 123456789, '246 Cao Thắng, Phường 12, Quận 10', NULL),
('NCC004', 'Phước Camera', 'phuoccamera@gmail.com', 1237894560, ' 8 Huỳnh Thúc Kháng, Quận 1, ', NULL),
('NCC005', 'Máy ảnh đẹp', 'nightmare@gmail.com', 123456789, '180 3/2, phường 8,  quận 11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `phieunhap`
--

DROP TABLE IF EXISTS `phieunhap`;
CREATE TABLE IF NOT EXISTS `phieunhap` (
  `mapn` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ngaynhap` datetime NOT NULL,
  `tongtien` double NOT NULL,
  `mancc` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`mapn`),
  KEY `FK_PNmancc_NCCmancc` (`mancc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `phieunhap`
--

INSERT INTO `phieunhap` (`mapn`, `ngaynhap`, `tongtien`, `mancc`) VALUES
('1624420846880', '2021-06-23 11:00:47', 40000150, 'NCC002'),
('1624855518898', '2021-06-28 11:45:19', 262000000, 'NCC002'),
('1625052081222', '2021-06-30 18:21:21', 359400000, 'NCC004'),
('1627106787051', '2021-07-24 13:06:27', 30200000, 'NCC002'),
('1627266557381', '2021-07-26 09:29:17', 160360000, 'NCC004'),
('1629171739942', '2021-08-17 10:42:20', 32000000, 'NCC002'),
('1629603615633', '2021-08-22 10:40:16', 44500000, 'NCC001'),
('PN001', '2021-06-09 09:34:30', 54400000, 'NCC001'),
('PN002', '2021-06-12 14:13:34', 170000000, 'NCC003');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

DROP TABLE IF EXISTS `sanpham`;
CREATE TABLE IF NOT EXISTS `sanpham` (
  `masp` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `tensp` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `giagoc` int(11) NOT NULL,
  `giagiam` int(11) NOT NULL,
  `giaban` int(11) NOT NULL,
  `baohanh` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `xuatxu` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mota` text COLLATE utf8_unicode_ci NOT NULL,
  `soluong` int(11) NOT NULL,
  `maloai` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `math` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `magg` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  PRIMARY KEY (`masp`),
  KEY `FK_SPmaloai_Lmaloai` (`maloai`),
  KEY `FK_SPmath_THmath` (`math`),
  KEY `FK_SPmagg_MGGmagg` (`magg`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`masp`, `tensp`, `giagoc`, `giagiam`, `giaban`, `baohanh`, `xuatxu`, `mota`, `soluong`, `maloai`, `math`, `magg`, `deletedAt`, `createdAt`) VALUES
('MA001', 'Máy Ảnh Canon EOS M50 Mark II', 19000000, 18990000, 20000000, '1 năm', 'Nhật Bản', 'Máy ảnh Canon EOS M50 Mark II là máy ảnh mirrorless đời mới của Cannon. Với thiết kế hiện đại, nhỏ gọn tích hợp nhiều tính năng thông minh hỗ trợ chụp ảnh và quay phim rỏ nét, mượt mà. Đây là chiếc máy ảnh đáng sở hữu cho những tín đồ chụp ảnh, quay vlog, làm youtube,...\r\nThiết kế nhỏ gọn, tinh tế\r\nKhối lượng chỉ 387 g rất gọn nhẹ, dễ cầm nắm và thao tác, tạo điều kiện thuận lợi để bạn mang khắp mọi nơi. Điều đáng ngac nhiên là với kích thước khiêm tốn như vậy nhưng Canon M50 Mark II sở hữu nhiều tính năng khủng như một máy ảnh và máy quay chuyên nghiệp. ', 20, 'mirrorless', 'canon', NULL, NULL, '2021-06-01 06:22:11'),
('MA002', 'Máy Ảnh Olympus OM-D E-M10 Mark III kit 14-42mm', 11000000, 12000000, 12900000, '12 tháng', 'Mỹ', 'Nhỏ gọn và nhẹ, OM-D E-M10 Mark III của Olympus là một lựa chọn rất cấp độ nhập môn chuyên nghiệp cho shooters tìm kiếm để chọn một máy ảnh SLR gương không gương lật cảm biến Four Thirds.\r\nOM-D E-M10 Mark III được trang bị cảm biến Live MOS 4 trong 16 giây và bộ xử lý hình ảnh TruePic VIII Quad-Core, một sự kết hợp được thiết kế để tối đa hóa tốc độ và chất lượng. Nó giúp người dùng tạo ra những bức ảnh và video sắc nét trong một phạm vi rộng các tình huống sử dụng độ nhậy cảm từ ISO 200-25600, và có thể mở rộng đến ISO 100-25600. ', 1, 'film', 'olympus', 'ngay0106', NULL, '2021-06-14 11:39:20'),
('MA003', 'Máy Ảnh Sony Alpha A6000 (ILCE-6000) Body', 11500000, 12000000, 13000000, '24 tháng', 'Thái Lan', 'Máy được trang bị bộ cảm biến Exmor APS HD CMOS 24.3MP APS-C và bộ xử lý hình ảnh BIONZ X có độ phân giải cao rất có lợi để chụp những ảnh khổ lớn chuyên dụng cho thiết kế hay những chi tiết dù nhỏ nhất cũng sẽ được ghi lại qua từng điểm ảnh một các rõ nét nhất. Các chip trên ống kính lấp đầy những khoảng trống giữa các điểm ảnh lân cận nhằm phù hợp với khả năng tập trung ánh sáng và độ sắc nét.', 13, 'mirrorless', 'sony', 'mondaygif', NULL, '2021-07-14 10:21:35'),
('MA004', 'MÁY ẢNH OLYMPUS STYLUS TOUGH TG-6', 10000000, 0, 11900000, '12 tháng', 'Nhật Bản', 'ough TG-6 (Đỏ) là chiếc máy mới nhất trong dòng máy ảnh compact siêu bền nổi tiếng và đang rất thành công của Olympus. Máy ảnh \"nồi đồng cối đá\" này thích hợp với những người yêu thích phiêu lưu, chụp ảnh ở những địa hình phức tạp.\r\nMặt trước của máy ảnh có ống kính góc rộng f / 2.01 nằm trên cảm biến BSI 1/2.3\" 12-megapixel. Chiếc máy ảnh được tráng lớp phủ chống phản xạ (AR) giúp giảm thiểu hiện tượng lóa và bóng ma.', 1, 'bridge', 'olympus', 'mondaygif', NULL, '2021-07-06 09:23:11'),
('MA005', 'Máy Ảnh Sony Cyber-shot RX100 VII', 25100000, 26990000, 28990000, '24 tháng', 'Nhật Bản', 'Hãng Sony vừa công bố thế hệ thứ 7 của dòng máy ảnh RX100 khá thành công của mình. Thiết bị mới được gọi là  RX100 VII, model này được làm mới hoàn toàn về tốc độ với các chế độ chụp nhanh hơn cũng như hiệu suất lấy nét tự động được cải thiện.\r\nVề cơ bản, RX100 VII vẫn sở hữu cảm biến ảnh 20.1 MP. Sony cho biết họ dùng cảm biến Stacked BSI-CMOS thế hệ mới chứa bộ nhớ DRAM kết hợp cùng vi xử lý BIONZ. RX100 VI trước đó vốn đã có khả năng chụp tối đa 24 fps thì giờ đây RX100 VII dù giảm xuống còn 20 fps nhưng việc cải tiến tính năng loại bỏ hiệu ứng blackout nên khung ngắm sẽ không bị hiện tượng chớp màn đen khi chụp.', 22, 'dslr', 'sony', 'mondaygift', NULL, '2021-06-16 15:20:25'),
('MA006', 'Máy Ảnh Leica Q Titanium Gray', 110000000, 113000000, 115000000, '1 năm', 'Đức', 'Leica chính thức giới thiệu chiếc compact cao cấp Leica Q Titanium Gray với màu xám ấn tượng. So với Leica Q bản tiêu chuẩn \"đen toàn thân\", phiên bản Titanium Gray được phủ lớp màu xám sáng hơn, tinh tế hơn ở phần đỉnh máy, đáy máy và cả ống kính. Máy có thiết kế hoàn toàn mới theo phong cách tối giản pha trộn giữa Leica T và Leica M. Phần thân máy được làm hoàn toàn từ hợp kim magie và đỉnh máy được phủ bởi miếng che bằng nhôm. Sở dĩ miếng che đỉnh máy làm từ nhôm vì Leica muốn khắc số, chữ theo ý bạn, cũng như các biểu tượng Leica lên phần này. Về bên trong, chiếc máy này không thay đổi so với phiên bản tiêu chuẩn.', 25, 'film', 'canon', 'mondaygif', NULL, '2021-06-07 00:00:00'),
('MA007', 'Máy Ảnh Canon Ixus 185', 2500000, 2399000, 2490000, '12 tháng', 'Mỹ', 'Ống kính zom quang học 8x cho ảnh chụp xa có độ nét cao\r\nĐộ phân giải 20 MP đem lại hình ảnh sắc nét, chi tiết\r\nMàn hình LCD rộng 2.7 inch dễ dàng quan sát khung hình chụp\r\nBộ xử lý DIGIC 4+ với tốc độ xử lý hình ảnh nhanh hơn\r\nQuay phim HD 720P lưu lại những khoảnh khắc thú vị\r\nChia sẻ hình ảnh dễ dàng hơn qua cổng kết nối USB', 65, 'film', 'canon', 'testthu', NULL, '2021-07-18 11:28:19'),
('MA008', 'Máy Ảnh Nikon D5600', 12900000, 13990000, 15000000, '12 tháng', 'Thái Lan', 'Máy ảnh Nikon D5600 là mẫu máy ảnh được sản xuất nhằm khắc phục những thiếu sót mà người đàn anh D5500 để lại. Với những tính năng vượt trội cùng với những khả năng kết nối và chia sẽ thông minh, chiếc máy ảnh DSLR Nikon mới này sẽ đáp ứng cho nhu cầu của người dùng một cách đầy đủ nhất, mang lại những hình ảnh sống động trong cuộc sống hàng ngày của bạn.\r\nVề ngoại hình, Nikon D5600 cơ bản cũng trông khá gọn nhẹ, tiện dụng cho người dùng mới làm quen với DSLR. Nó được thừa hưởng những đường nét tinh tế nhưng không kém phần mạnh mẽ mà người đàn anh để lại và hầu như không có thây đổi gì nhiều.\r\n ', 9, 'bridge', 'nikon', NULL, NULL, '2021-07-14 11:33:47');

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

DROP TABLE IF EXISTS `taikhoan`;
CREATE TABLE IF NOT EXISTS `taikhoan` (
  `tentk` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `matkhau` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sodt` int(11) NOT NULL,
  `diachi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `anhdd` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`tentk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`tentk`, `matkhau`, `email`, `sodt`, `diachi`, `anhdd`, `token`) VALUES
('Alexander', '$2a$08$qjaF730W86hR9R9YFJBlI.9Y/.TjRhvLEXfoMk2kcblWkU5gCxIce', 'abc123@gmail.com', 1234567, '180 3/2, phường 8,  quận 11, thành phố Hồ Chí Minh', '1627474662304.jpg', NULL),
('Ben', '$2a$08$1vIEAlKpB.yqkc0Yr.ekXu36p7VonjOR.IjEEsKk5qow.6ItzNbtq', 'aloha123@gmail.com', 123456789, '86/8 Xóm Đất, phường 8, quận 11', NULL, NULL),
('fgsss', '$2a$08$9JbwG6H7e8RcvMgf/s5s0Og1djmFVCCFJSBku.AX/wBFyKXA28Dju', 'dragon511996@gmail.com', 123456789, '180 3/2, phường 8,  quận 11, thành phố Hồ Chí Minh', NULL, NULL),
('John Doe', '$2a$08$A.b/5sjj0vIDIB9rHx6eKOX1ji1a5ai0H6lw6fW8RCTP/Z2EogiqW', 'nightmare511996@gmail.com', 123456789, '259 Lãnh Binh Thăng, phường 12, quận 11', '1627265621973.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `thongso`
--

DROP TABLE IF EXISTS `thongso`;
CREATE TABLE IF NOT EXISTS `thongso` (
  `mats` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `tents` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`mats`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `thongso`
--

INSERT INTO `thongso` (`mats`, `tents`) VALUES
('ts1', 'Cảm biến'),
('ts2', 'Bộ xử lí'),
('ts3', 'Màn hình'),
('ts4', 'Độ nhạy sáng (ISO)'),
('ts5', 'Màn chập'),
('ts6', 'Tốc độ chụp'),
('ts7', 'Pin');

-- --------------------------------------------------------

--
-- Table structure for table `thuonghieu`
--

DROP TABLE IF EXISTS `thuonghieu`;
CREATE TABLE IF NOT EXISTS `thuonghieu` (
  `math` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `tenth` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `tenhinh` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`math`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `thuonghieu`
--

INSERT INTO `thuonghieu` (`math`, `tenth`, `tenhinh`, `deletedAt`) VALUES
('canon', 'Canon', '1628149323910.jpg', NULL),
('kodak', 'Kodak', '1628150133999.jpg', NULL),
('leica', 'Leica', '1627378091809.jpg', NULL),
('nikon', 'Nikon', '1627377608867.jpg', NULL),
('olympus', 'Olympus', '1627377617534.jpg', NULL),
('panasonic', 'Panasonic', '1627378011972.jpg', NULL),
('sony', 'Sony', '1627382999277.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vanchuyen`
--

DROP TABLE IF EXISTS `vanchuyen`;
CREATE TABLE IF NOT EXISTS `vanchuyen` (
  `mavc` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `tenvc` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phivc` int(10) NOT NULL,
  PRIMARY KEY (`mavc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vanchuyen`
--

INSERT INTO `vanchuyen` (`mavc`, `tenvc`, `phivc`) VALUES
('vc001', 'Nhanh', 35000),
('vc002', 'Tiêu chuẩn', 25000);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `FK_BLmasp_SPmasp` FOREIGN KEY (`masp`) REFERENCES `sanpham` (`masp`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_BLtentk_TKtentk` FOREIGN KEY (`tentk`) REFERENCES `taikhoan` (`tentk`);

--
-- Constraints for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD CONSTRAINT `FK_CTDHmadh_DHmadh` FOREIGN KEY (`madh`) REFERENCES `donhang` (`madh`),
  ADD CONSTRAINT `FK_CTDHmasp_SPmasp` FOREIGN KEY (`masp`) REFERENCES `sanpham` (`masp`) ON UPDATE CASCADE;

--
-- Constraints for table `chitietmausac`
--
ALTER TABLE `chitietmausac`
  ADD CONSTRAINT `FK_CTMmamau_MAUmamau` FOREIGN KEY (`mamau`) REFERENCES `mausac` (`mamau`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CTMmasp_SPmasp` FOREIGN KEY (`masp`) REFERENCES `sanpham` (`masp`) ON UPDATE CASCADE;

--
-- Constraints for table `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  ADD CONSTRAINT `FK_CTPNmasp_PNmapn` FOREIGN KEY (`mapn`) REFERENCES `phieunhap` (`mapn`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CTPNmasp_SPmasp` FOREIGN KEY (`masp`) REFERENCES `sanpham` (`masp`) ON UPDATE CASCADE;

--
-- Constraints for table `chitietthongso`
--
ALTER TABLE `chitietthongso`
  ADD CONSTRAINT `FK_CTTSmasp_SPmasp` FOREIGN KEY (`masp`) REFERENCES `sanpham` (`masp`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CTTSmats_TSmats` FOREIGN KEY (`mats`) REFERENCES `thongso` (`mats`) ON UPDATE CASCADE;

--
-- Constraints for table `danhgia`
--
ALTER TABLE `danhgia`
  ADD CONSTRAINT `FK_DGmasp_SPmasp` FOREIGN KEY (`masp`) REFERENCES `sanpham` (`masp`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_DGtentk_TKtentk` FOREIGN KEY (`tentk`) REFERENCES `taikhoan` (`tentk`);

--
-- Constraints for table `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `FK_DHmavc_VCmavc` FOREIGN KEY (`mavc`) REFERENCES `vanchuyen` (`mavc`),
  ADD CONSTRAINT `FK_DHtentk_TKtentk` FOREIGN KEY (`tentk`) REFERENCES `taikhoan` (`tentk`);

--
-- Constraints for table `hinhanh`
--
ALTER TABLE `hinhanh`
  ADD CONSTRAINT `FK_HAmasp_SPmasp` FOREIGN KEY (`masp`) REFERENCES `sanpham` (`masp`) ON DELETE CASCADE;

--
-- Constraints for table `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD CONSTRAINT `FK_PNmancc_NCCmancc` FOREIGN KEY (`mancc`) REFERENCES `nhacungcap` (`mancc`) ON UPDATE CASCADE;

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `FK_SPmagg_MGGmagg` FOREIGN KEY (`magg`) REFERENCES `magiamgia` (`magg`),
  ADD CONSTRAINT `FK_SPmaloai_Lmaloai` FOREIGN KEY (`maloai`) REFERENCES `loai` (`maloai`),
  ADD CONSTRAINT `FK_SPmath_THmath` FOREIGN KEY (`math`) REFERENCES `thuonghieu` (`math`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
