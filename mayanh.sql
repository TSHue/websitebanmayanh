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
('ts5', 'MA001', '15 - 1/2000 gi??y'),
('ts6', 'MA001', '2.5 ???nh/gi??y (ch??? ????? Auto, ch??? ????? P)'),
('ts7', 'MA001', 'NB-11LH'),
('ts1', 'MA003', 'C???m bi???n Exmor??? APS HD CMOS 24.3MP c?? b??? x??? l?? BIONZ X???'),
('ts2', 'MA003', ''),
('ts3', 'MA003', ' M??n h??nh 3 inch'),
('ts4', 'MA003', 'ISO 100-25600'),
('ts5', 'MA003', ''),
('ts6', 'MA003', 'T???c ????? ch???p 11 ???nh / gi??y'),
('ts7', 'MA003', 'Pin NP-FW50'),
('ts1', 'MA004', 'C???m bi???n BSI CMOS 12MP'),
('ts2', 'MA004', 'B??? x??? l?? h??nh ???nh TruePic VIII'),
('ts3', 'MA004', 'M??n h??nh: LCD 3.0 \"(1.040.000 pixel)'),
('ts4', 'MA004', '????? nh???y s??ng ISO: T??? ?????ng, 100 ?????n 12800'),
('ts5', 'MA004', ' M??n tr???p: 1/2 ?????n 1/2000  '),
('ts6', 'MA004', ''),
('ts7', 'MA004', 'Pin t????ng th??ch Li-92B'),
('ts1', 'MA005', 'C???m bi???n CCD 20 megapixel '),
('ts2', 'MA005', 'B??? x??? l??'),
('ts3', 'MA005', 'M??n h??nh'),
('ts4', 'MA005', '????? nh???y s??ng (ISO)'),
('ts5', 'MA005', 'M??n ch???p'),
('ts6', 'MA005', 'T???c ????? ch???p'),
('ts7', 'MA005', 'Pin'),
('ts1', 'MA006', 'C???m bi???n n??'),
('ts2', 'MA006', 'B??? x??? l??'),
('ts3', 'MA006', 'M??n h??nh'),
('ts4', 'MA006', ''),
('ts5', 'MA006', 'M??n ch???p'),
('ts6', 'MA006', 'T???c ????? ch???p'),
('ts7', 'MA006', 'Pin 1'),
('ts1', 'MA007', 'C???m bi???n'),
('ts2', 'MA007', 'B??? x??? l??'),
('ts3', 'MA007', ''),
('ts4', 'MA007', '????? nh???y s??ng (ISO)'),
('ts5', 'MA007', ''),
('ts6', 'MA007', 'T???c ????? ch???p'),
('ts7', 'MA007', 'Pin'),
('ts1', 'MA002', 'C???m bi???n BSI CMOS 12MP'),
('ts2', 'MA002', ''),
('ts3', 'MA002', 'M??n h??nh: LCD 3.0 \"(1.040.000 pixel)'),
('ts4', 'MA002', ''),
('ts5', 'MA002', 'M??n ch???p'),
('ts6', 'MA002', ''),
('ts7', 'MA002', 'Pin  NP-FW50'),
('ts1', 'MA008', 'C???m bi???n Exmor??? APS HD CMOS 24.3MP c?? b??? x??? l?? BIONZ X???'),
('ts2', 'MA008', 'B??? x??? l?? 1'),
('ts3', 'MA008', 'M??n h??nh 1'),
('ts4', 'MA008', '????? nh???y s??ng (ISO)'),
('ts5', 'MA008', 'M??n ch???p 1'),
('ts6', 'MA008', 'T???c ????? ch???p 1'),
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
('DH001', '2021-05-27 06:50:53', 'Tr???n V??n A', 123456789, '26 Cao L???, ph?????ng 4, qu???n 8', 'G???i v??o gi??? h??nh ch??nh', 30000, 0, 12030000, 4, 'cod', 'vc001', 'Alexander'),
('DH002', '2021-07-11 08:26:19', 'Th??y Ki???u', 1237894560, '80 3/2 ph?????ng 9, qu???n 11', NULL, 20000, 50000, 1310000, 1, 'vnpay', 'vc002', 'John Doe'),
('DH003', '2021-05-10 00:00:00', 'Nguy???n Th??? ??nh', 1234567890, '86/6 Cao L???, ph?????ng 6, qu???n 8', 'G???i sau 5 gi??? chi???u', 20000, 0, 15000000, 3, 'atm', 'vc002', 'Ben'),
('DH1628071832194', '2021-08-08 17:10:32', 'Hu???', 1234567, '180 3/2, ph?????ng 8,  qu???n 11, th??nh ph??? H??? Ch?? Minh', '', 35000, 0, 30925000, 4, 'cod', 'vc001', 'Alexander'),
('DH1628072093630', '2021-08-14 17:14:53', 'A', 1234567, '180 3/2, ph?????ng 8,  qu???n 11, th??nh ph??? H??? Ch?? Minh', '', 25000, 0, 27015000, 4, 'cod', 'vc002', 'Alexander'),
('DH1628144252713', '2021-08-16 13:17:33', 'Thanh', 1234567, '180 3/2, ph?????ng 8,  qu???n 11, th??nh ph??? H??? Ch?? Minh', 'Giao sau gi??? h??nh ch??nh', 25000, 0, 39015000, 3, 'vnpay', 'vc002', 'Alexander'),
('DH1628147008331', '2021-08-17 14:03:28', 'Tuy???t', 123456789, '259 L??nh Binh Th??ng, ph?????ng 12, qu???n 11', 'giao sau gi??? h??nh ch??nh', 25000, 0, 12025000, 4, 'cod', 'vc002', 'John Doe'),
('DH1629431886924', '2021-08-20 10:08:06', 'Ahihi', 123456789, '259 L??nh Binh Th??ng, ph?????ng 12, qu???n 11', '', 25000, 6472500, 19442500, 1, 'vnpay', 'vc002', 'John Doe'),
('DH1629514507619', '2021-08-21 09:08:07', 'Hello', 123456789, '259 L??nh Binh Th??ng, ph?????ng 12, qu???n 11', '', 25000, 0, 16414000, 1, 'vnpay', 'vc002', 'John Doe'),
('DH1629514743536', '2021-08-21 09:08:03', 'Hello 1', 123456789, '259 L??nh Binh Th??ng, ph?????ng 12, qu???n 11', '', 25000, 0, 43015000, 3, 'vnpay', 'vc002', 'John Doe'),
('DH1629598391264', '2021-08-22 09:13:11', 'John Doe', 123456789, '259 L??nh Binh Th??ng, ph?????ng 12, qu???n 11', '', 25000, 0, 136925000, 1, 'cod', 'vc002', 'John Doe');

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
('bridge', 'M??y ???nh Bridge', NULL),
('compact', 'M??y ???nh Compact (Du l???ch)', NULL),
('dslr', 'M??y ???nh DSLR (ph???n x??? ???ng k??nh ????n k??? thu???t s???)', NULL),
('film', 'M??y ???nh Film (C??)', NULL),
('mirrorless', 'M??y ???nh mirrorless', NULL);

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
('mondaygif', 'M???ng ng??y qu???c t??? thi???u nhi', '2021-08-09 00:00:00', '2021-09-26 00:00:00', 0, 25, NULL),
('mondaygift', 'M?? qu?? ?????u tu???n ', '2021-05-31 00:00:00', '2021-06-01 00:00:00', 1, 20000, NULL),
('ngay0106', 'M???ng ng??y qu???c t??? thi???u nhi', '2021-06-01 00:00:00', '2021-06-02 00:00:00', 0, 30, NULL),
('testthu', 'testthu', '2021-08-10 00:00:00', '2021-08-14 00:00:00', 0, 20, NULL),
('testthu1', 'Ch??? l?? test th??? th??i 123', '2021-07-27 00:00:00', '2021-07-28 00:00:00', 1, 30000, NULL);

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
('MAU01', '??en'),
('MAU02', 'Tr???ng'),
('MAU03', '?????');

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
('NCC001', '?????i l?? m??y ???nh', 'aloha123@gmail.com', 123456789, '103/4 L??y B??n B??ch, ph?????ng T??n th???i h??a, qu???n T??n Ph??', NULL),
('NCC002', 'Kh??nh Long Camera', 'khanhlong@gmail.com', 1237894560, '43 Hu???nh Th??c Kh??ng, P. B???n Ngh??, Qu???n 1', NULL),
('NCC003', 'Gocamera', 'gocamera@gmail.com', 123456789, '246 Cao Th???ng, Ph?????ng 12, Qu???n 10', NULL),
('NCC004', 'Ph?????c Camera', 'phuoccamera@gmail.com', 1237894560, ' 8 Hu???nh Th??c Kh??ng, Qu???n 1, ', NULL),
('NCC005', 'M??y ???nh ?????p', 'nightmare@gmail.com', 123456789, '180 3/2, ph?????ng 8,  qu???n 11', NULL);

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
('MA001', 'M??y ???nh Canon EOS M50 Mark II', 19000000, 18990000, 20000000, '1 n??m', 'Nh???t B???n', 'M??y ???nh Canon EOS M50 Mark II l?? m??y ???nh mirrorless ?????i m???i c???a Cannon. V???i thi???t k??? hi???n ?????i, nh??? g???n t??ch h???p nhi???u t??nh n??ng th??ng minh h??? tr??? ch???p ???nh v?? quay phim r??? n??t, m?????t m??. ????y l?? chi???c m??y ???nh ????ng s??? h???u cho nh???ng t??n ????? ch???p ???nh, quay vlog, l??m youtube,...\r\nThi???t k??? nh??? g???n, tinh t???\r\nKh???i l?????ng ch??? 387 g r???t g???n nh???, d??? c???m n???m v?? thao t??c, t???o ??i???u ki???n thu???n l???i ????? b???n mang kh???p m???i n??i. ??i???u ????ng ngac nhi??n l?? v???i k??ch th?????c khi??m t???n nh?? v???y nh??ng Canon M50 Mark II s??? h???u nhi???u t??nh n??ng kh???ng nh?? m???t m??y ???nh v?? m??y quay chuy??n nghi???p. ', 20, 'mirrorless', 'canon', NULL, NULL, '2021-06-01 06:22:11'),
('MA002', 'M??y ???nh Olympus OM-D E-M10 Mark III kit 14-42mm', 11000000, 12000000, 12900000, '12 th??ng', 'M???', 'Nh??? g???n v?? nh???, OM-D E-M10 Mark III c???a Olympus l?? m???t l???a ch???n r???t c???p ????? nh???p m??n chuy??n nghi???p cho shooters t??m ki???m ????? ch???n m???t m??y ???nh SLR g????ng kh??ng g????ng l???t c???m bi???n Four Thirds.\r\nOM-D E-M10 Mark III ???????c trang b??? c???m bi???n Live MOS 4 trong 16 gi??y v?? b??? x??? l?? h??nh ???nh TruePic VIII Quad-Core, m???t s??? k???t h???p ???????c thi???t k??? ????? t???i ??a h??a t???c ????? v?? ch???t l?????ng. N?? gi??p ng?????i d??ng t???o ra nh???ng b???c ???nh v?? video s???c n??t trong m???t ph???m vi r???ng c??c t??nh hu???ng s??? d???ng ????? nh???y c???m t??? ISO 200-25600, v?? c?? th??? m??? r???ng ?????n ISO 100-25600. ', 1, 'film', 'olympus', 'ngay0106', NULL, '2021-06-14 11:39:20'),
('MA003', 'M??y ???nh Sony Alpha A6000 (ILCE-6000) Body', 11500000, 12000000, 13000000, '24 th??ng', 'Th??i Lan', 'M??y ???????c trang b??? b??? c???m bi???n Exmor APS HD CMOS 24.3MP APS-C v?? b??? x??? l?? h??nh ???nh BIONZ X c?? ????? ph??n gi???i cao r???t c?? l???i ????? ch???p nh???ng ???nh kh??? l???n chuy??n d???ng cho thi???t k??? hay nh???ng chi ti???t d?? nh??? nh???t c??ng s??? ???????c ghi l???i qua t???ng ??i???m ???nh m???t c??c r?? n??t nh???t. C??c chip tr??n ???ng k??nh l???p ?????y nh???ng kho???ng tr???ng gi???a c??c ??i???m ???nh l??n c???n nh???m ph?? h???p v???i kh??? n??ng t???p trung ??nh s??ng v?? ????? s???c n??t.', 13, 'mirrorless', 'sony', 'mondaygif', NULL, '2021-07-14 10:21:35'),
('MA004', 'M??Y ???NH OLYMPUS STYLUS TOUGH TG-6', 10000000, 0, 11900000, '12 th??ng', 'Nh???t B???n', 'ough TG-6 (?????) l?? chi???c m??y m???i nh???t trong d??ng m??y ???nh compact si??u b???n n???i ti???ng v?? ??ang r???t th??nh c??ng c???a Olympus. M??y ???nh \"n???i ?????ng c???i ????\" n??y th??ch h???p v???i nh???ng ng?????i y??u th??ch phi??u l??u, ch???p ???nh ??? nh???ng ?????a h??nh ph???c t???p.\r\nM???t tr?????c c???a m??y ???nh c?? ???ng k??nh g??c r???ng f / 2.01 n???m tr??n c???m bi???n BSI 1/2.3\" 12-megapixel. Chi???c m??y ???nh ???????c tr??ng l???p ph??? ch???ng ph???n x??? (AR) gi??p gi???m thi???u hi???n t?????ng l??a v?? b??ng ma.', 1, 'bridge', 'olympus', 'mondaygif', NULL, '2021-07-06 09:23:11'),
('MA005', 'M??y ???nh Sony Cyber-shot RX100 VII', 25100000, 26990000, 28990000, '24 th??ng', 'Nh???t B???n', 'H??ng Sony v???a c??ng b??? th??? h??? th??? 7 c???a d??ng m??y ???nh RX100 kh?? th??nh c??ng c???a m??nh. Thi???t b??? m???i ???????c g???i l??  RX100 VII, model n??y ???????c l??m m???i ho??n to??n v??? t???c ????? v???i c??c ch??? ????? ch???p nhanh h??n c??ng nh?? hi???u su???t l???y n??t t??? ?????ng ???????c c???i thi???n.\r\nV??? c?? b???n, RX100 VII v???n s??? h???u c???m bi???n ???nh 20.1 MP. Sony cho bi???t h??? d??ng c???m bi???n Stacked BSI-CMOS th??? h??? m???i ch???a b??? nh??? DRAM k???t h???p c??ng vi x??? l?? BIONZ. RX100 VI tr?????c ???? v???n ???? c?? kh??? n??ng ch???p t???i ??a 24 fps th?? gi??? ????y RX100 VII d?? gi???m xu???ng c??n 20 fps nh??ng vi???c c???i ti???n t??nh n??ng lo???i b??? hi???u ???ng blackout n??n khung ng???m s??? kh??ng b??? hi???n t?????ng ch???p m??n ??en khi ch???p.', 22, 'dslr', 'sony', 'mondaygift', NULL, '2021-06-16 15:20:25'),
('MA006', 'M??y ???nh Leica Q Titanium Gray', 110000000, 113000000, 115000000, '1 n??m', '?????c', 'Leica ch??nh th???c gi???i thi???u chi???c compact cao c???p Leica Q Titanium Gray v???i m??u x??m ???n t?????ng. So v???i Leica Q b???n ti??u chu???n \"??en to??n th??n\", phi??n b???n Titanium Gray ???????c ph??? l???p m??u x??m s??ng h??n, tinh t??? h??n ??? ph???n ?????nh m??y, ????y m??y v?? c??? ???ng k??nh. M??y c?? thi???t k??? ho??n to??n m???i theo phong c??ch t???i gi???n pha tr???n gi???a Leica T v?? Leica M. Ph???n th??n m??y ???????c l??m ho??n to??n t??? h???p kim magie v?? ?????nh m??y ???????c ph??? b???i mi???ng che b???ng nh??m. S??? d?? mi???ng che ?????nh m??y l??m t??? nh??m v?? Leica mu???n kh???c s???, ch??? theo ?? b???n, c??ng nh?? c??c bi???u t?????ng Leica l??n ph???n n??y. V??? b??n trong, chi???c m??y n??y kh??ng thay ?????i so v???i phi??n b???n ti??u chu???n.', 25, 'film', 'canon', 'mondaygif', NULL, '2021-06-07 00:00:00'),
('MA007', 'M??y ???nh Canon Ixus 185', 2500000, 2399000, 2490000, '12 th??ng', 'M???', '???ng k??nh zom quang h???c 8x cho ???nh ch???p xa c?? ????? n??t cao\r\n????? ph??n gi???i 20 MP ??em l???i h??nh ???nh s???c n??t, chi ti???t\r\nM??n h??nh LCD r???ng 2.7 inch d??? d??ng quan s??t khung h??nh ch???p\r\nB??? x??? l?? DIGIC 4+ v???i t???c ????? x??? l?? h??nh ???nh nhanh h??n\r\nQuay phim HD 720P l??u l???i nh???ng kho???nh kh???c th?? v???\r\nChia s??? h??nh ???nh d??? d??ng h??n qua c???ng k???t n???i USB', 65, 'film', 'canon', 'testthu', NULL, '2021-07-18 11:28:19'),
('MA008', 'M??y ???nh Nikon D5600', 12900000, 13990000, 15000000, '12 th??ng', 'Th??i Lan', 'M??y ???nh Nikon D5600 l?? m???u m??y ???nh ???????c s???n xu???t nh???m kh???c ph???c nh???ng thi???u s??t m?? ng?????i ????n anh D5500 ????? l???i. V???i nh???ng t??nh n??ng v?????t tr???i c??ng v???i nh???ng kh??? n??ng k???t n???i v?? chia s??? th??ng minh, chi???c m??y ???nh DSLR Nikon m???i n??y s??? ????p ???ng cho nhu c???u c???a ng?????i d??ng m???t c??ch ?????y ????? nh???t, mang l???i nh???ng h??nh ???nh s???ng ?????ng trong cu???c s???ng h??ng ng??y c???a b???n.\r\nV??? ngo???i h??nh, Nikon D5600 c?? b???n c??ng tr??ng kh?? g???n nh???, ti???n d???ng cho ng?????i d??ng m???i l??m quen v???i DSLR. N?? ???????c th???a h?????ng nh???ng ???????ng n??t tinh t??? nh??ng kh??ng k??m ph???n m???nh m??? m?? ng?????i ????n anh ????? l???i v?? h???u nh?? kh??ng c?? th??y ?????i g?? nhi???u.\r\n ', 9, 'bridge', 'nikon', NULL, NULL, '2021-07-14 11:33:47');

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
('Alexander', '$2a$08$qjaF730W86hR9R9YFJBlI.9Y/.TjRhvLEXfoMk2kcblWkU5gCxIce', 'abc123@gmail.com', 1234567, '180 3/2, ph?????ng 8,  qu???n 11, th??nh ph??? H??? Ch?? Minh', '1627474662304.jpg', NULL),
('Ben', '$2a$08$1vIEAlKpB.yqkc0Yr.ekXu36p7VonjOR.IjEEsKk5qow.6ItzNbtq', 'aloha123@gmail.com', 123456789, '86/8 X??m ?????t, ph?????ng 8, qu???n 11', NULL, NULL),
('fgsss', '$2a$08$9JbwG6H7e8RcvMgf/s5s0Og1djmFVCCFJSBku.AX/wBFyKXA28Dju', 'dragon511996@gmail.com', 123456789, '180 3/2, ph?????ng 8,  qu???n 11, th??nh ph??? H??? Ch?? Minh', NULL, NULL),
('John Doe', '$2a$08$A.b/5sjj0vIDIB9rHx6eKOX1ji1a5ai0H6lw6fW8RCTP/Z2EogiqW', 'nightmare511996@gmail.com', 123456789, '259 L??nh Binh Th??ng, ph?????ng 12, qu???n 11', '1627265621973.jpg', NULL);

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
('ts1', 'C???m bi???n'),
('ts2', 'B??? x??? l??'),
('ts3', 'M??n h??nh'),
('ts4', '????? nh???y s??ng (ISO)'),
('ts5', 'M??n ch???p'),
('ts6', 'T???c ????? ch???p'),
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
('vc002', 'Ti??u chu???n', 25000);

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
