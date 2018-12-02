-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 02, 2018 lúc 04:46 AM
-- Phiên bản máy phục vụ: 10.1.36-MariaDB
-- Phiên bản PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shopdt`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `TAIKHOAN` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MATKHAU` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`TAIKHOAN`, `MATKHAU`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdondathang`
--

CREATE TABLE `chitietdondathang` (
  `MACHITIETDONDATHANG` int(11) NOT NULL,
  `MASANPHAM` int(11) DEFAULT NULL,
  `MADONDATHANG` int(11) DEFAULT NULL,
  `SOLUONG` int(11) DEFAULT NULL,
  `GIABAN` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietdondathang`
--

INSERT INTO `chitietdondathang` (`MACHITIETDONDATHANG`, `MASANPHAM`, `MADONDATHANG`, `SOLUONG`, `GIABAN`) VALUES
(45, 76, 26, 1, 1800000),
(46, 76, 27, 1, 1800000),
(53, 32, 32, 1, 12990000),
(56, 48, 35, 1, 7490000),
(57, 48, 35, 1, 7490000),
(58, 48, 35, 1, 7490000),
(59, 48, 35, 1, 7490000),
(60, 48, 36, 1, 7490000),
(61, 61, 36, 1, 930000),
(62, 61, 36, 1, 930000),
(63, 61, 36, 1, 930000),
(64, 61, 37, 1, 930000),
(65, 48, 37, 1, 7490000),
(66, 61, 38, 1, 930000),
(67, 48, 38, 1, 7490000),
(68, 61, 39, 1, 930000),
(69, 48, 40, 1, 7490000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dondathang`
--

CREATE TABLE `dondathang` (
  `MADONDATHANG` int(11) NOT NULL,
  `MATAIKHOAN` int(11) DEFAULT NULL,
  `MATINHTRANG` int(11) DEFAULT NULL,
  `NGAYLAP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `TONGTHANHTIEN` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dondathang`
--

INSERT INTO `dondathang` (`MADONDATHANG`, `MATAIKHOAN`, `MATINHTRANG`, `NGAYLAP`, `TONGTHANHTIEN`) VALUES
(26, 4, 3, '2018-11-23 11:00:56', 1800000),
(27, 4, 2, '2018-11-23 11:02:48', 1800000),
(32, 1, 1, '2018-11-23 19:01:21', 12990000),
(35, 1, 1, '2018-11-24 14:01:56', 7490000),
(36, 4, 1, '2018-11-25 19:57:33', 7490000),
(37, 1, 1, '2018-11-27 14:18:00', 8420000),
(38, 1, 1, '2018-11-27 14:20:40', 8420000),
(39, 1, 1, '2018-11-28 13:58:09', 930000),
(40, 1, 1, '2018-12-01 14:27:26', 7490000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hangsanxuat`
--

CREATE TABLE `hangsanxuat` (
  `MAHANGSANXUAT` int(11) NOT NULL,
  `TENHANGSANXUAT` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hangsanxuat`
--

INSERT INTO `hangsanxuat` (`MAHANGSANXUAT`, `TENHANGSANXUAT`) VALUES
(1, 'TOSHIBA'),
(2, 'DAKIN'),
(3, 'SAMSUNG'),
(4, 'SHARP'),
(5, 'HITACHI'),
(6, 'LQ'),
(7, 'BRICI'),
(8, 'NANOMAX'),
(9, 'ACNOS'),
(10, 'PHILIPS'),
(11, 'PANASONIC'),
(12, 'SUNHHOUSE'),
(13, 'ELECTROLUX'),
(14, 'MIDEA'),
(15, 'KANGAROO'),
(16, 'TEFAL'),
(17, 'PCM'),
(18, 'DELITES');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `MALOAISANPHAM` int(11) NOT NULL,
  `TENLOAISANPHAM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`MALOAISANPHAM`, `TENLOAISANPHAM`) VALUES
(1, 'Máy Điều Hòa'),
(2, 'Tủ Lạnh'),
(3, 'Máy Giặt'),
(4, 'TiVi'),
(5, 'Loa'),
(6, 'Bàn Ủi'),
(7, 'Lò Vi Sống'),
(8, 'Máy Lọc Nước'),
(9, 'Nồi Cơm Điện');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `MASANPHAM` int(11) NOT NULL,
  `MAHANGSANXUAT` int(11) DEFAULT NULL,
  `MALOAISANPHAM` int(11) DEFAULT NULL,
  `TENSANPHAM` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HINHURL` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GIASANPHAM` int(11) DEFAULT NULL,
  `NGAYNHAP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `SOLUONGTON` int(11) DEFAULT NULL,
  `SOLUONGBAN` int(11) DEFAULT NULL,
  `SOLUONGXEM` int(11) DEFAULT NULL,
  `MOTA` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`MASANPHAM`, `MAHANGSANXUAT`, `MALOAISANPHAM`, `TENSANPHAM`, `HINHURL`, `GIASANPHAM`, `NGAYNHAP`, `SOLUONGTON`, `SOLUONGBAN`, `SOLUONGXEM`, `MOTA`) VALUES
(2, 1, 1, 'RAS-H18U2KSG-V', 'picture01.png', 15990000, '2018-11-20 15:56:43', 100, 50, 85, '<p>M&aacute;y lạnh RAS-H18U2KSG-V</p>\r\n<p>C&aacute;c t&iacute;nh năng ch&iacute;nh C&ocirc;ng suất 18.000 BTU/h</p>\r\n<p>Chế độ ECO MODE tiết kiệm 25% điện năng</p>\r\n<p>C&ocirc;ng nghệ chống b&aacute;m bản Magic Coil</p>\r\n<p>C&ocirc;ng nghệ tinh lọc kh&ocirc;ng kh&iacute; IAQ</p>'),
(3, 1, 1, 'RAS-H10KKCVG-V', 'picture02.jpg', 8690000, '2018-11-20 15:56:43', 100, 50, 63, '<p>M&aacute;y lạnh RAS-H10KKCVG-V</p>\r\n<p>C&aacute;c t&iacute;nh năng ch&iacute;nh:</p>\r\n<p>C&ocirc;ng suất 8500BTU/h</p>\r\n<p>C&ocirc;ng nghệ Hybird Inveter tiết kiệm 35% điện năng</p>\r\n<p>C&ocirc;ng nghệ chống b&aacute;m bẩn Magic Coil</p>\r\n<p>C&ocirc;ng nghệ tinh lọc kh&ocirc;ng kh&iacute; IAQ</p>'),
(4, 1, 1, 'RAS-H10U2KSG-V', 'picture03.jpg', 7590000, '2018-11-20 15:56:43', 100, 50, 47, '<p>M&aacute;y lạnh RAS-H10U2KSG-V</p>\r\n<p>C&aacute;c t&iacute;nh năng ch&iacute;nh:</p>\r\n<p>C&ocirc;ng suất 9000BTU/h</p>\r\n<p>Chế độ ECO MODE tiết kiệm 25% điện năng</p>\r\n<p>C&ocirc;ng nghệ chống b&aacute;m bản Magic Coil</p>\r\n<p>C&ocirc;ng nghệ tinh lọc kh&ocirc;ng kh&iacute; IAQ</p>'),
(5, 2, 1, 'FTKQ35SVMV/RKQ35SVMV', 'picture04.jpg', 12790000, '2018-11-20 15:56:43', 100, 50, 88, '<p>M&aacute;y lạnhFTKQ35SVMV/RKQ35SVMV</p>\r\n<p>C&aacute;c t&iacute;nh năng ch&iacute;nh:</p>\r\n<p>C&ocirc;ng suất 11.900BTU/h</p>\r\n<p>Đảo gi&oacute; 2 c&aacute;nh mạnh mẽ</p>\r\n<p>Inverter tiết kiệm điện Vận h&agrave;nh &ecirc;m &aacute;i</p>'),
(6, 2, 1, 'FTKQ25SVMV/RKQ25SVMV', 'picture05.png', 10490000, '2018-11-20 15:56:43', 100, 50, 78, '<p>M&aacute;y lạnh FTKQ25SVMV/RKQ25SVMV</p>\r\n<p>C&aacute;c t&iacute;nh năng ch&iacute;nh :</p>\r\n<p>C&ocirc;ng suất 9000BTU/h</p>\r\n<p>Đảo gi&oacute; 2 c&aacute;nh mạnh mẽ Inverter tiết kiệm điện Vận h&agrave;nh &ecirc;m &aacute;i</p>'),
(7, 2, 1, 'ATKC25TVMV', 'picture06.png', 11590000, '2018-11-20 15:56:43', 100, 50, 79, '<p>M&aacute;y lạnh ATKC25TVMV</p>\r\n<p>C&aacute;c t&iacute;nh năng ch&iacute;nh</p>\r\n<p>C&ocirc;ng suất 8500BTU/h Mắt thần th&ocirc;ng minh</p>\r\n<p>Đảo gi&oacute; 2 c&aacute;nh mạnh mẽ</p>\r\n<p>Inverter tiết kiệm điện</p>'),
(8, 3, 1, 'AR10NVFSCURNSV', 'picture07.png', 7990000, '2018-11-20 15:56:43', 96, 54, 80, '<p>M&aacute;y lạnh AR10NVFSCURNSV</p>\r\n<p>C&aacute;c t&iacute;nh năng ch&iacute;nh :</p>\r\n<p>C&ocirc;ng suất 9000BTU/h L&agrave;m lạnh nhanh &ndash; vận h&agrave;nh &ecirc;m &aacute;i</p>\r\n<p>Thiết kế tam diện độc đ&aacute;o</p>\r\n<p>Inverter tiết kiệm điện</p>'),
(9, 3, 1, 'AR18NVFXAWKNSV', 'picture08.png', 21790000, '2018-11-20 15:56:43', 100, 65, 78, '<p>M&aacute;y lạnh AR18NVFXAWKNSV</p>\r\n<p>C&aacute;c t&iacute;nh năng ch&iacute;nh</p>\r\n<p>C&ocirc;ng suất 18.300BTU/h L&agrave;m lạnh nhanh - vận h&agrave;nh &ecirc;m &aacute;i</p>\r\n<p>Digital Inverter với m&aacute;y n&eacute;n 8 cực Bộ lọc Filter/3 care-Filter lọc bụi</p>'),
(10, 3, 1, 'AR13NVFXAWKNSV/XSV', 'picture09.png', 14490000, '2018-11-20 15:56:43', 100, 65, 87, '<p>M&aacute;y lạnh AR13NVFXAWKNSV/XSV</p>\r\n<p>C&aacute;c t&iacute;nh năng ch&iacute;nh:</p>\r\n<p>C&ocirc;ng suất 12.000BTU/h</p>\r\n<p>L&agrave;m lạnh nhanh - vận h&agrave;nh &ecirc;m &aacute;i</p>\r\n<p>Digital Inverter với m&aacute;y n&eacute;n 8 cực</p>\r\n<p>Bộc lọc Filter/3 care filter lọc bụi</p>'),
(11, 4, 1, 'AH/AU-X9UEW', 'picture10.png', 7490000, '2018-11-20 15:56:43', 100, 65, 87, '<p>M&aacute;y lạnh AH/AU-X9UEW</p>\r\n<p>C&aacute;c t&iacute;nh năng ch&iacute;nh:</p>\r\n<p>C&ocirc;ng suất 9000BTU/h</p>\r\n<p>Xuất xứ Th&aacute;i Lan</p>\r\n<p>M&ocirc;i chất l&agrave;m lạnh R32</p>\r\n<p>C&ocirc;ng nghệ J-Tech Inverter</p>'),
(12, 4, 1, 'AH/AU-X12VEW', 'picture11.png', 9790000, '2018-11-20 15:56:43', 100, 65, 89, '<p>M&aacute;y lạnh AH/AU-X12VEW</p>\r\n<p>C&aacute;c t&iacute;nh năng ch&iacute;nh:</p>\r\n<p>C&ocirc;ng suất 12.000BTU/h</p>\r\n<p>Xuất xứ Th&aacute;i Lan</p>\r\n<p>M&ocirc;i chất l&agrave;m lạnh R32</p>\r\n<p>C&ocirc;ng nghệ J-Tech Inverter</p>'),
(13, 4, 1, 'AH/AU-A25UEW', 'picture12.png', 5990000, '2018-11-20 15:56:43', 100, 65, 87, '<p>M&aacute;y lạnh AH/AU-A25UEW</p>\r\n<p>C&aacute;c t&iacute;nh năng ch&iacute;nh:</p>\r\n<p>C&ocirc;ng suất 9000BTU/h</p>\r\n<p>M&ocirc;i chất l&agrave;m lạnh R410A</p>\r\n<p>L&agrave;m lạnh cực nhanh</p>'),
(14, 5, 2, 'R-M700GPGV2(GBK)', 'picture13.png', 57490000, '2018-11-20 15:56:43', 100, 65, 94, '<p>Tủ lạnh R-M700GPGV2(GBK)</p>\r\n<p>C&aacute;c t&iacute;nh năng ch&iacute;nh:</p>\r\n<p>Tổng dung t&iacute;ch 584 l&iacute;t</p>\r\n<p>Inverter Ti&ecirc;u thụ 1.8kW/ng&agrave;y</p>\r\n<p>C&oacute; lấy đ&aacute; &ndash; nước ngo&agrave;i</p>\r\n<p>Kh&aacute;ng khuẩn khử m&ugrave;i nano titanium</p>\r\n<p>Cảm ứng nhiệt ECO</p>'),
(15, 5, 2, 'R-VG400PGV3(GBK)', 'picture14.png', 10990000, '2018-11-20 15:56:43', 100, 65, 88, '<p>Tủ lạnh R-VG400PGV3(GBK)&nbsp;</p>\r\n<p>C&aacute;c t&iacute;nh năng ch&iacute;nh :</p>\r\n<p>Tổng dung t&iacute;ch 335 l&iacute;t</p>\r\n<p>Inverter Ti&ecirc;u thụ 1.15 kW/ng&agrave;y</p>\r\n<p>Dual fan cooling 2 quạt độc lập</p>'),
(16, 5, 2, 'R-M700GPGV2(GS)', 'picture15.jpg', 57490000, '2018-11-20 15:56:43', 100, 65, 87, '<p>Tủ lạnh R-M700GPGV2(GS)</p>\r\n<p>C&aacute;c t&iacute;nh năng ch&iacute;nh:</p>\r\n<p>Tổng dung t&iacute;ch 584 l&iacute;t</p>\r\n<p>Inverter Ti&ecirc;u thụ 1.8kW/ng&agrave;y</p>\r\n<p>C&oacute; lấy đ&aacute; &ndash; nước ngo&agrave;i</p>\r\n<p>Kh&aacute;ng khuẩn khử m&ugrave;i nano titanium</p>\r\n<p>Cảm ứng nhi&ecirc;u ECO</p>'),
(17, 1, 2, 'GR-AG36VUBZ(XK1)', 'picture16.jpg', 9990000, '2018-11-20 15:56:43', 100, 65, 95, '<p>Tủ lạnh GR-AG36VUBZ(XK1)</p>\r\n<p>C&aacute;c t&iacute;nh năng ch&iacute;nh :</p>\r\n<p>Tổng dung t&iacute;ch 305 l&iacute;t</p>\r\n<p>Inverter Khử m&ugrave;i v&agrave; diệt khuẩn</p>\r\n<p>Hybrid Bio LED chiếu s&aacute;ng</p>'),
(18, 1, 2, 'GR-AG46VPDZ(XG)', 'picture17.jpg', 13840000, '2018-11-20 15:56:43', 100, 65, 79, '<p>Tủ lạnh GR-AG46VPDZ(XG)</p>\r\n<p>C&aacute;c t&iacute;nh năng ch&iacute;nh:</p>\r\n<p>Tổng dung t&iacute;ch 409 l&iacute;t</p>\r\n<p>Inverter Khử m&ugrave;i diệt khuẩn</p>\r\n<p>LED Hybird Cảm biến ECO</p>'),
(19, 1, 2, 'GR-AG41VPDZ(XG)', 'picture18.jpg', 12440000, '2018-11-20 15:56:43', 100, 40, 80, '<p>Tủ lạnh GR-AG41VPDZ(XG)</p>\r\n<p>C&aacute;c t&iacute;nh năng ch&iacute;nh:</p>\r\n<p>Tổng dung t&iacute;ch 359 l&iacute;t</p>\r\n<p>Inverter Kh&ocirc;ng đ&ocirc;ng tuyết</p>\r\n<p>Cảm biến ECO</p>'),
(20, 4, 2, 'SJ-FX631V-SL', 'picture19.jpg', 18990000, '2018-11-20 15:56:43', 100, 40, 79, '<p>Tủ lạnh SJ-FX631V-SL</p>\r\n<p>C&aacute;c t&iacute;nh năng ch&iacute;nh :</p>\r\n<p>Tổng dung t&iacute;ch 626 l&iacute;t, 4 cửa J-Tech</p>\r\n<p>Inverter</p>\r\n<p>Khử m&ugrave;i nano bạc</p>\r\n<p>Khay k&iacute;nh chịu lực</p>\r\n<p>Đ&egrave;n LED cực s&aacute;ng</p>'),
(21, 4, 2, 'SJ-XP590PG-BK', 'picture20.jpg', 13190000, '2018-11-20 15:56:43', 100, 40, 79, '<p>Tủ lạnh SJ-XP590PG-BK</p>\r\n<p>C&aacute;c t&iacute;nh năng ch&iacute;nh</p>\r\n<p>Tổng dung t&iacute;ch 585/541 l&iacute;t J-Tech</p>\r\n<p>Inverter</p>\r\n<p>Ti&ecirc;u thụ điện 1.6kW/ng&agrave;y</p>\r\n<p>Bảo h&agrave;nh m&aacute;y n&eacute;n 10 năm</p>\r\n<p>Plasmacluster ions khử m&ugrave;i</p>'),
(22, 4, 2, 'SJ-X196E-DSS', 'picture21.jpg', 5190000, '2018-11-20 15:56:43', 100, 40, 46, '<p>Tủ lạnh SJ-X196E-DSS</p>\r\n<p>C&aacute;c t&iacute;nh năng ch&iacute;nh:</p>\r\n<p>Tổng dung t&iacute;ch 180 l&iacute;t</p>\r\n<p>Ngăn đ&aacute; tr&ecirc;n J-Tech</p>\r\n<p>Inverter</p>\r\n<p>Tiết ki&ecirc;̣m 30% đi&ecirc;̣n năng</p>\r\n<p>Nano Ag+ tăng cường khả năng khử m&ugrave;i</p>\r\n<p>C&acirc;́p hi&ecirc;̣u su&acirc;́t năng lượng cấp 5</p>\r\n<p>Bảo h&agrave;nh 10 năm m&aacute;y nén</p>'),
(23, 3, 2, 'RT35K5982DX/SV', 'picture22.jpg', 14790000, '2018-11-20 15:56:43', 100, 40, 47, '<p>Tủ lạnh RT35K5982DX/SV</p>\r\n<p>C&aacute;c t&iacute;nh năng ch&iacute;nh :</p>\r\n<p>Tổng dung t&iacute;ch 360 l&iacute;t</p>\r\n<p>Digital Inverter</p>\r\n<p>Lấy nước ngo&agrave;i</p>\r\n<p>Twin cooling : 2 quạt độc lập</p>\r\n<p>L&agrave;m đ&aacute; tự động</p>'),
(24, 3, 2, 'RB27N4170S8', 'picture23.jpg', 10590000, '2018-11-20 15:56:43', 100, 35, 46, 'Tủ lạnh RB27N4170S8\nCác tính năng chính\nTổng dung tích 276 lít\nLoại tủ: ngăn đá dưới \nInverter tiết kiệm điện \nCấp đông mềm: có'),
(25, 3, 2, 'RS52N3303SL', 'picture24.jpg', 19890000, '2018-11-20 15:56:43', 100, 35, 46, 'Tủ lạnh RS52N3303SL\nCác tính năng chính\nTổng dung tích 538 lít\nTiết kiệm điện tối đa với chức năng Inverter. \nTiện lợi với thiết kế lấy nước bên ngoài. \nRau củ tươi ngon hơn với ngăn rau quả '),
(26, 1, 3, 'AW-H1000GV (SB)', 'picture25.jpg', 6690000, '2018-11-20 15:56:43', 100, 35, 46, 'Máy giặt AW-H1000GV (SB) 9kg\nCác tính năng chính\nLồng giặt ngôi sao pha lê \nMâm giặt Hybrid powerful \nHiệu ứng thác nước đôi \nGiặt cô đặc bằng bọt khí \nTiết kiệm điện ngay cả chế độ chờ \nHệ thống cân chỉnh mực nước tự động'),
(27, 1, 3, 'TW-BH95M4V', 'picture26.jpg', 1090000, '2018-11-20 15:56:43', 100, 35, 80, 'Máy giặt TW-BH95M4V 8.5kg\nCác tính năng chính\nChế độ giặt nhanh 12 phút thuận tiện \nTính năng thêm đồ trong khi giặt tiện dụng \nTính năng ghi nhớ thông minh \nRon cửa kháng khuẩn \nChế độ vệ sinh lồng giặt tiện lợi \nTốc độ vắt tối đa 1400 vòng/phút'),
(28, 1, 3, 'TW-BH105M4V', 'picture27.jpg', 11290000, '2018-11-20 15:56:43', 100, 35, 80, 'Máy giặt TW-BH105M4V 9.5kg\nCác tính năng chính\nTính năng phun nước 360 độ \nLồng giặt ngôi sao pha lê bảo vệ áo quần \nCông nghệ Greatwave hiệu quả sạch vượt trội \nCông nghệ CycloneMix giúp đánh tan bột giặt'),
(29, 4, 3, 'ES-U78GV-H', 'picture28.jpg', 3990000, '2018-11-20 15:56:43', 100, 35, 78, 'Máy giặt ES-U78GV-H 7.8kg\nCác tính năng chính\nĐộng cơ: Dây curoa \nMàn hình đèn LED \nLồng giặt Pump-up không lỗ \nMâm giặt phủ bạc Ag+'),
(30, 4, 3, 'ES-U80GV-H', 'picture29.jpg', 4290000, '2018-11-20 15:56:43', 100, 35, 78, 'Máy giặt ES-U80GV-H 8kg\nCác tính năng chính\nĐộng cơ: Dây curoa \nMàn hình đèn LED: Có \nLồng giặt Eco Drum không lỗ: Có \nMâm giặt phủ bạc Ag+: Có \nSố người sử dụng: 4-5 người'),
(31, 4, 3, 'ES-U80GV-G', 'picture30.jpg', 4290000, '2018-11-20 15:56:43', 100, 35, 78, 'Máy giặt ES-U80GV-GES-U80GV-G 8kg\nCác tính năng chính\nĐộng cơ: Dây curoa \nMàn hình đèn LED: Có \nLồng giặt Eco Drum không lỗ: Có \nMâm giặt phủ bạc Ag+: Có'),
(32, 3, 3, 'WW90K54E0UW/SV', 'picture31.jpg', 12990000, '2018-11-20 15:56:43', 99, 76, 79, 'Máy giặt WW90K54E0UW/SV 9kg\nCác tính năng chính\nGiặt nước nóng diệt khuẩn hiệu quả \nCông nghệ Inverter tiết kiệm điện năng hiệu quả \nLồng giặt kim cương bảo vệ sợi vải khỏi hư tổn\nGiặt sạch và tiết kiệm với công nghệ \nEco Bubble \nThêm đồ khi máy đang giặt với cửa phụ '),
(33, 3, 3, 'WA90M5120SG/SV', 'picture32.jpg', 4990000, '2018-11-20 15:56:43', 100, 75, 78, 'Máy giặt WA90M5120SG/SV 9kg\nCác tính năng chính\nLoại máy giặt: Lồng đứng \nLồng giặt: Kim Cương \nĐộng cơ: Curoa \nCông nghệ: Wobble \nBộ lọc sinh học: Magic Filter'),
(34, 3, 3, 'WA10J5750SG/SV', 'picture33.jpg', 8390000, '2018-11-20 15:56:43', 100, 75, 78, 'Máy giặt WA10J5750SG/SV 10kg\nCác tín năng chính\nCông nghệ inverter tiết kiệm điện \nĐộng cơ dẫn động trực tiếp êm và bền bĩ \nHộp đánh tan bột giặt Magic Dispenser \nMâm giặt Wobble bảo vệ các loại vải \nTự động vệ sinh lồng giặt Eco Tub Clean'),
(35, 6, 3, 'T2108VSPM', 'picture34.jpg', 5390000, '2018-11-20 15:56:43', 100, 75, 81, 'Máy giặt T2108VSPM 8kg\nCác tính năng chính\nCông nghệ Smart Inverter tiết kiệm điện năng \nChương trình giặt sơ tự động tiện lợi \nThác nước vòng cung hòa tan bột giặt nhanh chóng \nChức năng chẩn đoán lỗi thông minh Smart Diagnosis \nLồng giặt TurboDrum và đấm nước Punch+3'),
(36, 6, 3, 'T2351VSAM', 'picture35.jpg', 7490000, '2018-11-20 15:56:43', 100, 75, 79, 'Máy giặt T2351VSAM 11.5kg\nCác tính năng chính\nĐộng cơ truyền động dây curoa\n Lồng giặt và mâm giặt làm từ thép không gỉ \nCông nghệ Inverter, giặt 6 chuyển động \nCông nghệ Turbo drum, Punch+3 giặt sạch v'),
(37, 6, 3, 'FC1409D4E', 'picture36.jpg', 18290000, '2018-11-20 15:56:44', 100, 75, 78, 'Máy giặt FC1409D4E 9kg/5kg\nCác tính năng chính\nCông nghệ Inverter tiết kiệm điện năng \nNhiều chương trình giặt tiện lợi \nĐộng cơ dẫn động trực tiếp êm ái và bền bỉ \nCông nghệ giặt 6 chuyển, Spa steam, NFC'),
(38, 6, 4, '65UK7500PTA', 'picture37.jpg', 32898000, '2018-11-20 15:56:44', 99, 76, 84, 'Tivi 65UK7500PTA 65inch\nCác tính năng chính\nMàu sắc tuyệt đẹp của Màn hình Nano Cell™ \nHình ảnh ổn định ở tất cả các góc xem \nChất lượng hình ảnh chân thực \nĐộ sáng cực đại tăng cường 4K \nActive HDR mang đến hình ảnh thật như cuộc sống \nDTS Virtual: X với nhiều chiều hơn cho âm thanh '),
(39, 6, 4, '55UK7500PTA', 'picture38.jpg', 18590000, '2018-11-20 15:56:44', 100, 75, 101, 'Tivi 55UK7500PTA 55inch\nCác tính năng chính\nMàu sắc tuyệt đẹp của Màn hình Nano Cell™ H\nình ảnh ổn định ở tất cả các góc xem \nChất lượng hình ảnh chân thực \nĐộ sáng cực đại tăng cường 4K \nActive HDR mang đến hình ảnh thật như cuộc sống D\nTS Virtual: X với nhiều chiều hơn cho âm'),
(40, 6, 4, '43LK5700PTA', 'picture39.jpg', 8490000, '2018-11-20 15:56:44', 96, 79, 105, 'Tivi 43LK5700PTA 43inch\nCác tính năng chính\nMàn hình Full HD 1080P \nDynamic Color Điều cốt lõi của hình ảnh xác thực \nActive HDR mang đến hình ảnh thật như cuộc sống \nÂm thanh vòm ảo \nHệ thống giải trí tại gia ngập tràn'),
(41, 3, 4, 'UA55NU7400KXXV', 'picture40.jpg', 22890000, '2018-11-20 15:56:44', 100, 75, 463, 'Tivi UA55NU7400KXXV 55inch\nCác tính năng chính \nĐộ phân giải UHD 4K \nSố lượng điểm ảnh gấp 4 lần TV FHD \nMàn hình tràn viền, mỏng tinh tế \nCông nghệ HDR đỉnh cao cho sắc màu hoàn hảo'),
(42, 3, 4, 'UA75NU7100KXXV', 'picture41.jpg', 64890000, '2018-11-20 15:56:44', 100, 69, 463, 'Tivi UA75NU7100KXXV 75inch\nCác tính năng chính\nĐộ phân giải UHD 4K có số điểm ảnh gấp 4 lần TV FHD \nThiết kế viền cực mỏng hòa hợp với mọi không gian \nKết nối với thiết bị di động linh hoạt, dễ dàng'),
(43, 3, 4, 'QA65Q9FNAKXXV', 'picture42.jpg', 99890000, '2018-11-20 15:56:44', 100, 69, 462, 'Tivi QA65Q9FNAKXXV 65inch\nCác tính năng chính\nMàn hình tràn viền siêu lớn \nĐộ tương phản Q Contrast Elite chuẩn HDR 10+ vượt trội \nChế độ hình nền Ambient Mode độc đáo'),
(44, 4, 4, 'LC-50LE580X-BK', 'picture43.jpg', 12690000, '2018-11-20 15:56:44', 100, 69, 462, 'Tivi LC-50LE580X-BK 50inch\nCác tính năng chính\nFull HD (1,920 x 1,080) \nGoogle Cast TM tích hợp \n7 tính năng bảo vệ \nĐầu KTS DVB-T2 Kết nối HDMI , USB\n Ứng dụng Android \nThời gian bảo hành 2 năm'),
(45, 4, 4, 'LC-32SA4200X', 'picture44.jpg', 4490000, '2018-11-20 15:56:44', 100, 69, 106, 'Tivi LC-32SA4200X 32inch\nCác tính năng chính\nHD (1,336 x 768) \nBộ xử lý 2K Master Engine \nCông suất âm thanh 7.5Wx2 \nBộ thu kỹ thuật số DVB-T2 \nNgõ kết nối: HDMIx2, USB \n7 tính năng bảo vệ'),
(46, 4, 4, 'LC-40SA5500X', 'picture45.jpg', 6490000, '2018-11-20 15:56:44', 100, 69, 108, 'Tivi LC-40SA5500X 40inch\nCác tính năng chính\nĐộ phân giải Full HD \nCông nghệ âm thanh Bass Enhancer, Dolby Audio \nHệ điều hành Easy Smart \nHỗ trợ chiếu màn hình Screen Mirroring'),
(47, 1, 4, '50U7880VN ', 'picture46.jpg', 13990000, '2018-11-20 15:56:44', 100, 69, 105, 'Tivi 50U7880VN 50inch\nCác tính năng chính\nMàn hình UHD 4K 50 inch \nHệ điều hành Android \nHỗ trợ tìm kiếm giọng nói \nXử lý hình ảnh CEVO 4K ENGINE'),
(48, 1, 4, '43L3750VN', 'picture47.jpg', 7490000, '2018-11-20 15:56:44', 86, 83, 72, 'Tivi 43L3750VN 43inch\nCác chức năng chính\nHình ảnh tốt nhất trong phân khúc non-smart TV \nÂm thanh không có đối thủ nhờ loa trước công suất lớn \nKết nối MHL biến TV thường thành Smart TV \nGhi hình kỹ thuật số giúp xem lại chương trình yêu thích \nBảo vệ mắt khi ánh sáng phòng thay đổi'),
(49, 1, 4, '58U7880VN', 'picture48.jpg', 18890000, '2018-11-20 15:56:44', 100, 69, 58, 'Tivi 58U7880VN 58inch\nCác chức năng chính\nMàn hình UHD 4K 58 inch \nHệ điều hành Android \nHỗ trợ tìm kiếm giọng nói \nXử lý hình ảnh CEVO 4K ENGINE'),
(50, 6, 5, 'Loa Bluetooth LG PK3', 'loa11.jpg', 990000, '2018-11-20 15:56:44', 100, 69, 62, 'Thông số kỹ thuật chi tiết Loa Bluetooth LG PK3\nThông tin chung\nLoại loa:Loa di động\nSố lượng kênh:2.0 kênh\nTổng công suất:16 W\nThời gian sử dụng:Dùng khoảng 10 - 12 tiếng, Sạc khoảng 3 - 4 tiếng\nCông nghệ âm thanh:Enhanced Bass, Meridian Technology, Dolby Digital\nTiện ích:Kháng nước\nKết nối\nKết nối không dây:Bluetooth\nKết nối khác:Jack 3.5 mm\nĐiều khiển bằng điện thoại:Chọn bài bằng giọng nói\nTổng quan\nLoa chính:Dài 18.2 cm - Rộng 8.2 cm - Cao 8 cm - Nặng 0.8 KG'),
(51, 6, 5, 'Loa thanh soundbar LG 4.1 SK5R', 'loa23.jpg', 2990000, '2018-11-20 15:56:44', 100, 69, 47, '<p>Th&ocirc;ng số kỹ thuật chi tiết Loa thanh soundbar LG 4.1 SK5R 480W Th&ocirc;ng tin chung Loại loa:Loa thanh Số lượng k&ecirc;nh:4.1 k&ecirc;nh Tổng c&ocirc;ng suất:480W Thời gian sử dụng:Cắm điện d&ugrave;ng, kh&ocirc;ng c&oacute; pin C&ocirc;ng nghệ &acirc;m thanh:Dolby Digital, DTS Digital Surround, High Resolution Audio, Hi-Fi DAC &Acirc;m thanh đọc được:mp3, wma, wav, avi, mp4, mkv, wmv, vob, mp3, mp3, wma, wmv, mp4 Tiện &iacute;ch:C&oacute; k&egrave;m remote Kết nối Kết nối kh&ocirc;ng d&acirc;y:Bluetooth Kết nối kh&aacute;c:HDMI, Optical Điều khiển bằng điện thoại:Bằng ứng dụng LG AV Remote Tổng quan Loa ch&iacute;nh:Rộng 89.7 cm - Cao 5.8 cm - S&acirc;u 9 cm - Nặng 2.4 kg Loa sub (loa Bass):Rộng 17.2 cm - Cao 39.3 cm - S&acirc;u 24.9 cm - Nặng 5.4 kg</p>'),
(52, 2, 5, 'Loa thanh soundbar Sony 2.0 HT-S100F 120W', 'loa31.jpg', 3490000, '2018-11-20 15:56:44', 100, 69, 45, 'Thông số kỹ thuật chi tiết Loa thanh soundbar Sony 2.0 HT-S100F 120W\nThông tin chung\nLoại loa:Loa thanh\nSố lượng kênh:2.0 kênh\nTổng công suất:120 W\nThời gian sử dụng:Cắm điện dùng, không có pin\nCông nghệ âm thanh:S-Master Digital Amplifier, Dolby Digital, S-Force Front Surround\nÂm thanh đọc được:mp3, wma, wav, avi, mp4, mkv, wmv, vob\nTiện ích:Có kèm remote\nKết nối\nKết nối không dây:Bluetooth 4.2\nKết nối khác:HDMI ARC (cắm tivi), Optical, USB\nTổng quan\nLoa chính:Dài 90 cm - Cao 6,4 cm - Chiều sâu 8,8 cm, nặng 2.4 Kg'),
(53, 6, 5, 'Dàn âm thanh LG OM4560 220W', 'loa41.jpg', 3990000, '2018-11-20 15:56:44', 100, 69, 78, 'Thông số kỹ thuật chi tiết Dàn âm thanh LG OM4560 220W\nThông tin chung\nLoại loa:Dàn âm thanh\nTổng công suất:220 W\nThời gian sử dụng:Cắm điện dùng, không có pin\nCông nghệ âm thanh:Bluetooth HI-FI Codec\nÂm thanh đọc được:MPEG 1/2 L2, MP3, MP3 ID3, FLAC, WMA, AAC\nTiện ích:Nghe được FM Radio, Có kèm remote\nGiao diện:Home Menu LG\nLoại đĩa dàn âm thanh đọc được:CD\nKết nối\nKết nối không dây:Bluetooth\nKết nối khác:Jack 6.5 Micro, Jack bông sen trắng đỏ, USB, Khe đọc đĩa\nTổng quan\nLoa chính:Rộng 44.3 cm, Cao 31.1 cm, Sâu 30.25 cm'),
(54, 3, 5, 'Loa thanh soundbar Samsung 7.1.4 HW-N950', 'loa53.jpg', 29890000, '2018-11-20 15:56:44', 100, 69, 78, 'Thông số kỹ thuật chi tiết Loa thanh soundbar Samsung 7.1.4 HW-N950\nThông tin chung\nLoại loa:Loa thanh\nSố lượng kênh:7.1.4 kênh\nTổng công suất:512W\nThời gian sử dụng:Cắm điện dùng, không có pin\nCông nghệ âm thanh:Công nghệ âm thanh Harman Kardon, Dolby Digital, DTS Digital Surround\nÂm thanh đọc được:mp3, flac (lossless), aac, ogg\nTiện ích:Có kèm remote\nKết nối\nKết nối không dây:Bluetooth 4.0, Loa sub kết nối không dây với loa thanh\nKết nối khác:HDMI ARC (cắm tivi), HDMI, Optical, Jack 3.5 mm\nĐiều khiển bằng điện thoại:Bằng ứng dụng Samsung Audio Remote\nTổng quan\nLoa chính:Ngang 122.5 cm - Cao 8.5 cm - Dày 13.6 cm - Nặng 3.6 kg'),
(55, 7, 5, 'Loa điện Karaoke Birici MX-400 300W', 'loa61.jpg', 11590000, '2018-11-20 15:56:44', 100, 70, 80, 'Thông số kỹ thuật chi tiết Loa điện Karaoke Birici MX-400 300W\nThông tin chung\nLoại loa:Loa kéo\nTổng công suất:300 W\nThời gian sử dụng:Cắm điện dùng, không có pin\nTiện ích:Bánh xe dễ di chuyển, Có tay kéo, Nghe được FM Radio, Có kèm remote\nKết nối\nKết nối không dây:Bluetooth 2.0\nKết nối khác:Jack bông sen trắng đỏ, Thẻ nhớ, USB\nTổng quan\nLoa chính:Cao 78 cm - Ngang 47 cm - Sâu 44 cm - Nặng 35 kg\nChất liệu loa:Thùng gỗ'),
(56, 3, 5, 'Loa thanh soundbar Samsung 5.1', 'loa71.jpg', 9990000, '2018-11-20 15:56:44', 100, 70, 47, '<p>Th&ocirc;ng số kỹ thuật chi tiết Loa thanh soundbar Samsung 5.1 HW-N650/XV 360W Th&ocirc;ng tin chung Loại loa:Loa thanh Số lượng k&ecirc;nh:5.1 k&ecirc;nh Tổng c&ocirc;ng suất:360 W Thời gian sử dụng:Cắm điện d&ugrave;ng, kh&ocirc;ng c&oacute; pin C&ocirc;ng nghệ &acirc;m thanh:Dolby Digital, DTS Digital Surround &Acirc;m thanh đọc được:flac (lossless), mp3, aac, ogg Tiện &iacute;ch:C&oacute; k&egrave;m remote Kết nối Kết nối kh&ocirc;ng d&acirc;y:Bluetooth 2.1, Loa sub kết nối kh&ocirc;ng d&acirc;y với loa thanh Kết nối kh&aacute;c:HDMI ARC (cắm tivi), HDMI, Optical, Jack 3.5 mm Điều khiển bằng điện thoại:Bằng ứng dụng Samsung Audio Remote Tổng quan Loa ch&iacute;nh:Ngang 110 cm - Cao 5.9 cm - D&agrave;y 10 cm - Nặng 3.6 kg</p>'),
(57, 8, 5, 'Loa kéo Karaoke Nanomax SK-15A10 600W', 'loa81.jpg', 8990000, '2018-11-20 15:56:44', 100, 70, 55, 'Thông tin chung Loa kéo Karaoke Nanomax SK-15A10 600W\nLoại loa:Loa kéo\nTổng công suất:600 W\nThời gian sử dụng:Sạc khoảng 8 - 10 tiếng, dùng 4 - 6 tiếng, Có thể vừa sạc vừa dùng\nTiện ích:Bánh xe dễ di chuyển, Có tay kéo, Có kèm remote\nKết nối\nKết nối không dây:Bluetooth 2.0\nKết nối khác:Jack bông sen trắng đỏ, Thẻ nhớ, USB\nTổng quan\nLoa chính:Cao 78 cm - Ngang 47 cm - Sâu 44 cm - Nặng 35 kg\nChất liệu loa:Thùng gỗ'),
(58, 2, 5, 'Dàn âm thanh Sony 5.1 BDV-E6100 1000W', 'loa91.jpg', 8990000, '2018-11-20 15:56:44', 100, 70, 24, 'Thông số kỹ thuật chi tiết Dàn âm thanh Sony 5.1 BDV-E6100 1000W\nThông tin chung\nLoại loa:Dàn âm thanh\nSố lượng kênh:5.1 kênh\nTổng công suất:1000 W\nThời gian sử dụng:Cắm điện dùng, không có pin\nCông nghệ âm thanh:S-Master Digital Amplifier, Dolby Digital, Dolby True HD, Dolby Digital Plus, Dolby Pro Logic, DTS, DTS HD, DTS-ES Matrix6.1, DTS-ES Discrete6.1\nÂm thanh đọc được:mp3, wma, wmv, divx, mp4, aac, mp1, mp2, jpeg, gif, jpg, png\nTiện ích:Nghe được FM Radio, Có kèm remote, Màn hình hiển thị\nGiao diện:Sony Entertainment Network\nLoại đĩa dàn âm thanh đọc được:CD, VCD, DVD, Bluray\nKết nối\nKết nối không dây:Wifi, NFC, Bluetooth 2.0, DLNA\nKết nối khác:HDMI ARC (cắm tivi), Optical, Jack bông sen trắng đỏ, USB, LAN, Khe đọc đĩa\nĐiều khiển bằng điện thoại:Bằng ứng dụng TV Side View Remote\nTổng quan'),
(59, 9, 5, 'Loa kéo karaoke Acnos KBZ15W 150W', 'loa101.jpg', 8900000, '2018-11-20 15:56:44', 100, 70, 54, 'Thông số kỹ thuật chi tiết Loa kéo karaoke Acnos KBZ15W 150W\nThông tin chung\nLoại loa:Loa kéo\nTổng công suất:150W\nThời gian sử dụng:Sạc khoảng 5 - 7 tiếng\nTiện ích:Có thể hát Karaoke, Bánh xe dễ di chuyển, Có kèm remote\nKết nối\nKết nối không dây:Bluetooth 2.0\nKết nối khác:HDMI, Thẻ nhớ, USB\nTổng quan\nLoa chính:Rộng 52cm - Cao 78.6cm - Sâu 51.5cm\nThương hiệu của:Việt Nam\nChất liệu loa:Thùng gỗ'),
(60, 10, 6, 'Bàn ủi hơi nước Philips GC1028', 'b11.jpg', 450000, '2018-11-20 15:56:44', 97, 73, 754, 'Thông số kỹ thuật chi tiết Bàn ủi hơi nước Philips GC1028\nĐặc điểm sản phẩm\nLoại bàn ủi:Bàn ủi hơi nước\nCông suất:2000 W\nMặt đế:Ceramic chống dính\nDung tích bình nước:200 ml\nChức năng:Ủi khô, Ủi hơi nước, Phun tia, Phun hơi tăng cường, Phun hơi thẳng đứng\nTiện ích:Mặt đế chống dính, Tự làm sạch - chống đóng cặn, Chống nhỏ giọt\nTiện ích khác:Có rãnh cúc tiện lợi, Không xoắn dây (dây nguồn xoay 360 độ)\nChế độ an toàn:Tự ngắt khi đến nhiệt độ đã chọn\nTrọng lượng:0.8 kg\nKích thước:Dài 27 cm - Rộng 14 cm - Cao 11 cm'),
(61, 10, 6, ' Bàn ủi hơi nước Philips GC1440', 'b21.jpg', 930000, '2018-11-20 15:56:44', 87, 83, 97, 'Thông số kỹ thuật chi tiết Bàn ủi hơi nước Philips GC1440\nĐặc điểm sản phẩm\nLoại bàn ủi:Bàn ủi hơi nước\nCông suất:2000 W\nMặt đế:Ceramic chống dính\nDung tích bình nước:220 ml\nChức năng:Ủi hơi nước, Phun tia, Phun hơi tăng cường\nTiện ích:Mặt đế chống dính, Chống nhỏ giọt\nTiện ích khác:Không xoắn dây (dây nguồn xoay 180 độ), Nút trượt xả cặn\nChế độ an toàn:Tự ngắt khi đến nhiệt độ đã chọn\nTrọng lượng:1.3 kg\nKích thước:Dài 30.5 cm - Rộng 13 cm - Cao 12.5 cm'),
(62, 11, 6, 'Bàn ủi hơi nước Panasonic NI-W410TSRRA', 'b31.jpg', 980000, '2018-11-20 15:56:44', 100, 70, 356, 'Thông số kỹ thuật chi tiết Bàn ủi hơi nước Panasonic NI-W410TSRRA\nĐặc điểm sản phẩm\nLoại bàn ủi:Bàn ủi hơi nước\nCông suất:2150 W\nMặt đế:Titanium chống dính\nDung tích bình nước:200 ml\nChức năng:Ủi hơi nước, Phun tia, Phun hơi tăng cường, Phun hơi thẳng đứng\nTiện ích:Mặt đế chống dính, Tự làm sạch - chống đóng cặn, Chống nhỏ giọt\nTiện ích khác:Có rãnh cúc tiện lợi, Không xoắn dây (dây nguồn xoay 360 độ), Chống vôi hoá\nChế độ an toàn:Tự ngắt khi bàn ủi không di chuyển\nTrọng lượng:1.4 kg\nKích thước:Dài 27cm - Rộng 12 cm - Cao 15 cm'),
(63, 11, 6, 'Bàn ủi hơi nước Panasonic PABU-NI-E510TDRA', 'b41.jpg', 820000, '2018-11-20 15:56:44', 100, 70, 48, 'Thông số kỹ thuật chi tiết Bàn ủi hơi nước Panasonic PABU-NI-E510TDRA\nĐặc điểm sản phẩm\nLoại bàn ủi:Bàn ủi hơi nước\nCông suất:2320 W\nMặt đế:Titanium chống dính\nDung tích bình nước:200 ml\nChức năng:Ủi khô, Ủi hơi nước, Phun tia, Phun hơi thẳng đứng\nTiện ích:Mặt đế chống dính, Tự làm sạch - chống đóng cặn, Ủi quần áo treo, Chống vôi hóa\nTiện ích khác:Có rãnh cúc tiện lợi, Không xoắn dây (dây nguồn xoay 360 độ)\nChế độ an toàn:Tự ngắt khi đến nhiệt độ đã chọn\nTrọng lượng:1.0 kg\nKích thước:Dài 25.6 cm - Rộng 11.3 cm - Cao 13.6 cm'),
(64, 13, 6, 'Bàn ủi hơi nước Electrolux ESI5126', 'b51.jpg', 790000, '2018-11-20 15:56:44', 100, 70, 54, 'Thông số kỹ thuật chi tiết Bàn ủi hơi nước Electrolux ESI5126\nĐặc điểm sản phẩm\nLoại bàn ủi:Bàn ủi hơi nước\nCông suất:1800 W\nMặt đế:Nhôm chống dính Teflon\nDung tích bình nước:300 ml\nChức năng:Ủi hơi nước, Phun tia, Phun hơi thẳng đứng\nTiện ích:Mặt đế chống dính\nTiện ích khác:Không xoắn dây (dây nguồn xoay 180 độ)\nChế độ an toàn:Tự ngắt khi đến nhiệt độ đã chọn\nKích thước:Cao 16 cm - Dài 29 cm - Rộng 13 cm\nTrọng lượng:1.7 kg'),
(65, 10, 6, 'Bàn ủi hơi nước Philips GC1430', 'b61.jpg', 690000, '2018-11-20 15:56:44', 100, 70, 25, 'Thông số kỹ thuật chi tiết Bàn ủi hơi nước Philips GC1430\nĐặc điểm sản phẩm\nLoại bàn ủi:Bàn ủi hơi nước\nCông suất:1700 W\nMặt đế:Silicon\nDung tích bình nước:200 ml\nChức năng:Ủi hơi nước, Phun tia, Phun hơi tăng cường\nTiện ích:Mặt đế chống dính\nTiện ích khác:Không xoắn dây (dây nguồn xoay 180 độ), Nút trượt xả cặn\nChế độ an toàn:Tự ngắt khi đến nhiệt độ đã chọn\nTrọng lượng:1.3 kg\nKích thước:Dài 30.5 cm - Rộng 13 cm - Cao 12.5 cm'),
(66, 17, 6, 'Bàn ủi hơi nước Tefal FV1520L0', 'b71.jpg', 70000, '2018-11-20 15:56:44', 100, 70, 24, 'Thông số kỹ thuật chi tiết Bàn ủi hơi nước Tefal FV1520L0\nĐặc điểm sản phẩm\nLoại bàn ủi:Bàn ủi hơi nước\nCông suất:2000 W\nMặt đế:Nhôm chống dính\nDung tích bình nước:250 ml\nChức năng:Phun tia, Phun hơi tăng cường, Phun hơi thẳng đứng\nTiện ích:Mặt đế chống dính\nTiện ích khác:Chống vôi hoá\nChế độ an toàn:Tự ngắt khi đến nhiệt độ đã chọn\nKích thước:Dài 28 cm - Rộng 11 cm - Cao 12 cm\nTrọng lượng:1.3 kg'),
(67, 11, 6, 'Bàn ủi hơi nước Panasonic PABU-NI-E410TMRA', 'b81.jpg', 780000, '2018-11-20 15:56:44', 100, 70, 24, 'Thông số kỹ thuật chi tiết Bàn ủi hơi nước Panasonic PABU-NI-E410TMRA\nĐặc điểm sản phẩm\nLoại bàn ủi:Bàn ủi hơi nước\nCông suất:2150 W\nMặt đế:Titanium chống dính\nDung tích bình nước:200 ml\nChức năng:Ủi khô, Ủi hơi nước, Phun tia\nTiện ích:Mặt đế chống dính, Tự làm sạch - chống đóng cặn\nTiện ích khác:Có rãnh cúc tiện lợi, Không xoắn dây (dây nguồn xoay 360 độ)\nChế độ an toàn:Tự ngắt khi đến nhiệt độ đã chọn\nTrọng lượng:1.0 kg\nKích thước:Dài 25.6 cm - Rộng 11.3 cm - Cao 13.6 cm'),
(68, 11, 6, 'Bàn ủi hơi nước Panasonic NI-M300TARA', 'b91.jpg', 645000, '2018-11-20 15:56:44', 100, 70, 54, 'Thông số kỹ thuật chi tiết Bàn ủi hơi nước Panasonic NI-M300TARA\nĐặc điểm sản phẩm\nLoại bàn ủi:Bàn ủi hơi nước\nCông suất:1800 W\nMặt đế:Titanium chống dính\nDung tích bình nước:210 ml\nChức năng:Ủi khô, Ủi hơi nước, Phun tia\nTiện ích:Mặt đế chống dính, Tự làm sạch - chống đóng cặn\nTiện ích khác:Không xoắn dây (dây nguồn xoay 360 độ)\nChế độ an toàn:Tự ngắt khi đến nhiệt độ đã chọn\nTrọng lượng:1 kg\nKích thước:Dài 27.51 cm - Rộng 12.5 cm - Cao 15 cm'),
(69, 13, 6, 'Bàn ủi hơi nước Electrolux ESI5116', 'b101.jpg', 590000, '2018-11-20 15:56:44', 100, 64, 64, 'Thông số kỹ thuật chi tiết Bàn ủi hơi nước Electrolux ESI5116\nĐặc điểm sản phẩm\nLoại bàn ủi:Bàn ủi hơi nước\nCông suất:1800 W\nMặt đế:Nhôm chống dính Teflon\nDung tích bình nước:300 ml\nChức năng:Ủi hơi nước, Phun tia, Phun hơi thẳng đứng\nTiện ích:Mặt đế chống dính, Tự làm sạch - chống đóng cặn, Chống nhỏ giọt\nTiện ích khác:Có rãnh cúc tiện lợi, Không xoắn dây (dây nguồn xoay 360 độ)\nChế độ an toàn:Tự ngắt khi đến nhiệt độ đã chọn\nKích thước:Cao 16 cm - Dài 29 cm - Rộng 13 cm\nTrọng lượng:1.7 kg'),
(70, 14, 7, 'Lò vi sóng Midea MMO-20KE1 20 lít', 'lvs11.jpg', 990000, '2018-11-20 15:56:44', 88, 76, 67, 'Thông số kỹ thuật chi tiết Lò vi sóng Midea MMO-20KE1 20 lít\nThông tin chung\nLoại lò:Lò vi sóng không nướng\nDung tích:20 lít\nCông suất:700 W\nChức năng chính:Rã đông, hâm, nấu\nTiện ích:Chuông báo khi nấu xong\nBảng điều khiển:Nút vặn có tiếng Việt\nChức năng khác:Rã đông theo trọng lượng, Rã đông theo thời gian\nChất liệu khoang lò:Thép tráng men\nKích thước lò:Rộng 44 cm - cao 25.9 cm - sâu 33 cm\nKích thước khoang lò:Rộng 31 cm - Sâu 29 cm - Cao 20.3 cm\nTrọng lượng:11.6 kg'),
(71, 1, 7, 'Lò vi sóng Toshiba ER-SM20(W)VN 20 lít', 'lvs21.jpg', 1290000, '2018-11-20 15:56:44', 100, 64, 23, 'Thông số kỹ thuật chi tiết Lò vi sóng Toshiba ER-SM20(W)VN 20 lít\nThông tin chung\nLoại lò:Lò vi sóng không nướng\nDung tích:20 lít\nCông suất:800 W\nTiện ích:Hẹn giờ nấu, Chuông báo khi nấu xong, Khoang lò có đèn\nChức năng chính:Rã đông, hâm, nấu\nChức năng khác:Rã đông theo thời gian, Tự động điều chỉnh thời gian nấu\nChất liệu khoang lò:Thép tráng men\nKích thước lò:Ngang 44 cm - Cao 25.8 cm - Sâu 32.5 cm\nKích thước khoang lò:Rộng 27.5 cm - Sâu 29 cm - Cao 17.5 cm\nTrọng lượng:11.2 kg'),
(72, 13, 7, 'Lò vi sóng Electrolux EMM2022MW 20 lít', 'lvs31.jpg', 1390000, '2018-11-20 15:56:44', 100, 64, 16, 'Thông số kỹ thuật chi tiết Lò vi sóng Electrolux EMM2022MW 20 lít\nThông tin chung\nLoại lò:Lò vi sóng không nướng\nDung tích:20 lít\nCông suất:700 W\nChức năng chính:Rã đông, hâm, nấu\nTiện ích:Chuông báo khi nấu xong, Khoang lò có đèn\nBảng điều khiển:Nút vặn\nChức năng khác:Rã đông theo thời gian\nChất liệu khoang lò:Thép tráng men\nKích thước lò:Cao 25.82 cm - Rộng 43.95 cm - Sâu 33 cm\nKích thước khoang lò:Rộng 27.5 cm - Sâu 25 cm - Cao 17 cm\nTrọng lượng:10.5 kg'),
(73, 6, 7, 'Lò vi sóng Sharp R-205VN(S) 20 lít', 'lvs41.jpg', 1400000, '2018-11-20 15:56:44', 100, 64, 36, 'Thông số kỹ thuật chi tiết Lò vi sóng Sharp R-205VN(S) 20 lít\nThông tin chung\nLoại lò:Lò vi sóng không nướng\nDung tích:20 lít\nCông suất:800 W\nTiện ích:Hẹn giờ nấu, Chuông báo khi nấu xong, Khoang lò có đèn\nChức năng chính:Rã đông, hâm, nấu\nBảng điều khiển:Nút vặn có tiếng Việt\nChức năng khác:Không có, Rã đông theo thời gian\nChất liệu khoang lò:Thép tráng men\nKích thước lò:Dài 43 cm - Rộng 37.8 cm - Cao 28.9 cm\nKích thước khoang lò:Dài 30.6 cm - Rộng 20.8 cm - Cao 20.7 cm\nTrọng lượng:11.9 kg'),
(74, 14, 7, 'Lò vi sóng Midea MMO-20CY73 20 lít', 'lvs51.jpg', 1600000, '2018-11-20 15:56:45', 99, 65, 82, 'Thông số kỹ thuật chi tiết Lò vi sóng Midea MMO-20CY73 20 lít\nThông tin chung\nLoại lò:Lò vi sóng có nướng\nDung tích:20 lít\nCông suất:800 - 1000 W\nTiện ích:Hẹn giờ nấu, Chuông báo khi nấu xong, Khoang lò có đèn\nChức năng chính:Rã đông, hâm, nấu, nướng\nBảng điều khiển:Nút nhấn điện tử, nút vặn, màn hình hiển thị\nChức năng khác:Rã đông nhanh, Thực đơn nấu tự động\nChất liệu khoang lò:Thép tráng men\nKích thước lò:Ngang 43 cm - Sâu 35 cm - Cao 26 cm\nKích thước khoang lò:Ngang 27.5 cm - Sâu 26 cm - Cao 17.5 cm\nTrọng lượng:10 kg'),
(75, 1, 7, 'Lò vi sóng Toshiba ER-SGM20(S)VN 20 lít', 'lvs61.jpg', 1690000, '2018-11-20 15:56:45', 100, 64, 72, 'Thông số kỹ thuật chi tiết Lò vi sóng Toshiba ER-SGM20(S)VN 20 lít\nThông tin chung\nLoại lò:Lò vi sóng có nướng\nDung tích:20 lít\nCông suất:800 - 1000 W\nTiện ích:Hẹn giờ nấu, Chuông báo khi nấu xong, Khoang lò có đèn\nChức năng chính:Rã đông, hâm, nấu, nướng\nChức năng khác:Rã đông theo thời gian, Thực đơn nấu tự động, Có nướng\nChất liệu khoang lò:Thép tráng men\nKích thước lò:Ngang 44 cm - Sâu 34 cm - Cao 25.8 cm\nKích thước khoang lò:Ngang 27.5 cm - Sâu 29 cm - Cao 17.5 cm'),
(76, 6, 7, 'Lò vi sóng SHARP R-G222VN-S 20 lít', 'lvs71.jpg', 1800000, '2018-11-20 15:56:45', 79, 85, 66, 'Thông số kỹ thuật chi tiết Lò vi sóng SHARP R-G222VN-S 20 lít\nThông tin chung\nLoại lò:Lò vi sóng có nướng\nDung tích:20 lít\nCông suất:800 - 1000 W\nTiện ích:Hẹn giờ nấu, Chuông báo khi nấu xong, Khoang lò có đèn\nChức năng chính:Rã đông, hâm, nấu, nướng\nChất liệu khoang lò:Thép tráng men\nKích thước lò:Ngang 44 cm - Sâu 36 cm - Cao 26 cm\nKích thước khoang lò:Ngang 30.6 cm - Sâu 30.7 cm - Cao 20.8 cm\nTrọng lượng:11.7 kg'),
(77, 13, 7, 'Lò vi sóng Electrolux EMM2322MW 23 lít', 'lvs81.jpg', 1850000, '2018-11-20 15:56:45', 100, 64, 16, 'Thông số kỹ thuật chi tiết Lò vi sóng Electrolux EMM2322MW 23 lít\nThông tin chung\nLoại lò:Lò vi sóng không nướng\nDung tích:23 lít\nCông suất:800 W\nTiện ích:Hẹn giờ nấu\nChức năng chính:Rã đông, hâm, nấu\nBảng điều khiển:Nút vặn\nChức năng khác:Rã đông theo thời gian\nChất liệu khoang lò:Thép tráng men\nKích thước lò:Dài 48.5 cm - Rộng 41 cm - Cao 29.3 cm\nKích thước khoang lò:Dài 38 cm - Rộng 30 cm - Cao 22 cm\nTrọng lượng:12 kg'),
(78, 13, 7, 'Lò vi sóng Electrolux EMM2026MX 20 lít', 'lvs91.jpg', 1890000, '2018-11-20 15:56:45', 100, 64, 9, 'Thông số kỹ thuật chi tiết Lò vi sóng Electrolux EMM2026MX 20 lít\nThông tin chung\nLoại lò:Lò vi sóng không nướng\nDung tích:20 lít\nCông suất:700 W\nTiện ích:Hẹn giờ nấu\nChức năng chính:Rã đông, hâm, nấu\nBảng điều khiển:Nút vặn\nChức năng khác:Rã đông theo trọng lượng, Rã đông theo thời gian\nChất liệu khoang lò:Thép tráng men\nKích thước lò:Cao 25.82 cm - Rộng 43.95 cm - Sâu 33 cm\nKích thước khoang lò:Cao 17.5 cm - Rộng 27.5 cm - Sâu 29 cm\nTrọng lượng:10.2 kg'),
(79, 6, 7, 'Lò vi sóng Sharp R-20A1(S)VN 22 lít', 'lvs101.jpg', 1900000, '2018-11-20 15:56:45', 100, 46, 5, 'Thông số kỹ thuật chi tiết Lò vi sóng Sharp R-20A1(S)VN 22 lít\nThông tin chung\nLoại lò:Lò vi sóng không nướng\nDung tích:22 lít\nCông suất:800 W\nTiện ích:Hẹn giờ nấu, Chuông báo khi nấu xong, Khoang lò có đèn\nChức năng chính:Rã đông, hâm, nấu\nBảng điều khiển:Nút vặn có tiếng Việt\nChất liệu khoang lò:Thép tráng men\nKích thước lò:Dài 46 cm - Rộng 33 cm - Cao 25 cm\nKích thước khoang lò:Dài 30 cm - Rộng 29 cm - Cao 18.5 cm\nTrọng lượng:12 kg'),
(80, 12, 8, 'Máy lọc nước RO nóng lạnh Sunhouse SHR76210CK', 'mln1.jpg', 7500000, '2018-11-20 15:56:45', 100, 46, 6, 'Thông số kỹ thuật chi tiết Máy lọc nước RO nóng lạnh Sunhouse SHR76210CK 10 lõi\nĐặc điểm sản phẩm\nLoại máy:Máy lọc nước R.O tích hợp nóng lạnh\nSố lõi lọc:Lõi số 4 - Màng RO Filmtec nhập khẩu từ Mỹ, 10 lõi, Bộ 6 lõi (5-10) Tạo khoáng chất cần thiết. Khử chất hữu cơ, các vi khuẩn trong để tạo nước sạch\nCông nghệ lọc:Công nghệ lọc RO\nDung tích:10 lít\nCông suất lọc nước:10 - 15 lít/giờ\nKháng khuẩn:Màng lọc Nano Bạc\nHệ thống bơm và van điều tiết:Bơm - hút 2 chiều, van điện từ\nTiện ích:Tạo nước kiềm (Alkaline) trung hòa axit cho cơ thể, Có 2 vòi lấy nước nóng lạnh\nKích thước:Ngang 43 cm - Sâu 33 cm - Cao 90 cm'),
(81, 16, 8, 'Máy lọc nước RO Korihome WPK-606-MN 6 lõi', 'mln6.jpg', 7500000, '2018-11-20 15:56:45', 100, 46, 57, 'Thông số kỹ thuật Máy lọc nước RO Korihome WPK-606-MN 6 lõi\nĐặc điểm sản phẩm\nLoại máy:Máy lọc nước R.O\nSố lõi lọc:6 lõi\nCông nghệ lọc:Công nghệ lọc RO\nDung tích:4.5 lít\nCông suất lọc nước:15 lít/giờ\nKháng khuẩn:Lõi lọc Nano Bạc\nHệ thống bơm và van điều tiết:Bơm - hút 2 chiều, van điện từ\nTiện ích:Tự động báo thay lõi, Tự động sục rửa màng lọc RO, Hiển thị mức độ sạch của nước\nKích thước:Cao 43 cm - Sâu 41 cm - Rộng 24 cm'),
(82, 15, 8, 'Máy lọc nước RO Kangaroo KG10A3 10 lõi', 'mln9.jpg', 7990000, '2018-11-20 15:56:45', 100, 46, 6, 'Thông số kỹ thuật Máy lọc nước RO Kangaroo KG10A3 10 lõi\nĐặc điểm sản phẩm\nLoại máy:Máy lọc nước R.O tích hợp nóng lạnh\nSố lõi lọc:10 lõi\nCông nghệ lọc:Công nghệ lọc RO\nDung tích:Bình nước nóng 0.8 lít, nước thường 9.2 lít\nCông suất lọc nước:10 - 15 lít/giờ\nHệ thống bơm và van điều tiết:Bơm - hút 2 chiều, van điện từ\nTiện ích:Có 2 vòi lấy nước nóng lạnh\nKích thước:Cao 112.5 cm - Ngang 43.2 - Rộng 35 cm'),
(83, 18, 8, 'Máy lọc nước RO Karofi K9IQ 2.0 9 lõi', 'mln13.jpg', 8240000, '2018-11-20 15:56:45', 100, 46, 47, 'Thông số kỹ thuật chi tiết Máy lọc nước RO Karofi K9IQ 2.0 9 lõi\nĐặc điểm sản phẩm\nLoại máy:Máy lọc nước R.O\nSố lõi lọc:9 lõi, Lõi số 4 - Màng RO Filmtec nhập khẩu từ Mỹ\nCông nghệ lọc:Công nghệ lọc RO\nDung tích:10 lít\nCông suất lọc nước:10 lít/giờ\nKháng khuẩn:Màn lọc Nano Bạc, Đèn UV\nHệ thống bơm và van điều tiết:Bơm - hút 2 chiều, van điện từ\nTiện ích:Tự động báo thay lõi, Tự động sục rửa màng lọc RO, Màn hình cảm ứng, Hiển thị mức độ sạch của nước, Đèn UV diệt khuẩn, Tạo nước kiềm (Alkaline) trung hòa axit cho cơ thể\nKích thước:Cao 90 cm - Ngang 43 cm - Sâu 33.7 cm - Nặng 32 kg'),
(84, 15, 8, 'Máy lọc nước RO Kangaroo VTU KG100HA 9 lõi', 'mln17.jpg', 8000000, '2018-11-20 15:56:45', 100, 46, 6, 'Thông số kỹ thuật chi tiết Máy lọc nước RO Kangaroo VTU KG100HA 9 lõi\nĐặc điểm sản phẩm\nLoại máy:Máy lọc nước Hydrogen\nSố lõi lọc:9 lõi, Màng Lọc RO Vortex( Lõi số 4), Bộ 5 lõi (5-9) tạo Hydrogen và tái khoáng\nCông nghệ lọc:Công nghệ lọc RO\nDung tích:10 lít\nCông suất lọc nước:20 lít/ giờ\nKháng khuẩn:Nano Carbon+\nHệ thống bơm và van điều tiết:Bơm - hút 2 chiều, van điện từ\nTiện ích:Tự động sục rửa màng lọc RO, Tạo nước kiềm (Alkaline) trung hòa axit cho cơ thể, Giàu hydrogen chống ôxy hóa\nKích thước:Ngang 43.5 cm - Cao 90 cm - Sâu 34 cm'),
(86, 15, 8, 'Máy lọc nước RO nóng lạnh Kangaroo KG61A3 5 l', 'mln26.jpg', 5890000, '2018-11-20 15:56:45', 100, 46, 6, 'Thông số kỹ thuật chi tiết Máy lọc nước RO nóng lạnh Kangaroo KG61A3 5 lõi\nĐặc điểm sản phẩm\nLoại máy:Máy lọc nước R.O tích hợp nóng lạnh\nSố lõi lọc:5 lõi\nCông nghệ lọc:Công nghệ lọc RO\nDung tích:Bình nước nóng 1.8 lít, nước lạnh 3 lít\nCông suất lọc nước:10 lít/giờ\nKháng khuẩn:Lọc RO loại bỏ tạp chất và vi khuẩn\nHệ thống bơm và van điều tiết:Bơm - hút 2 chiều, van điện từ\nTiện ích:Khóa an toàn, Có 2 vòi lấy nước nóng lạnh\nKích thước:Rộng 30 cm - Sâu 39.5 cm - Cao 111 cm'),
(87, 18, 8, 'Máy lọc nước RO Karofi KSI80-A 8 lõi', 'mln29.jpg', 5870000, '2018-11-20 15:56:45', 100, 46, 49, '<p>Th&ocirc;ng số kỹ thuật chi tiết</p>\r\n<p>M&aacute;y lọc nước RO Karofi KSI80-A 8 l&otilde;i</p>\r\n<p>Đặc điểm sản phẩm Loại m&aacute;y:</p>\r\n<p>M&aacute;y lọc nước R.O Số l&otilde;i lọc:8 l&otilde;i,</p>\r\n<p>L&otilde;i số 4 - M&agrave;ng RO Filmtec nhập khẩu từ Mỹ</p>\r\n<p>C&ocirc;ng nghệ lọc:C&ocirc;ng nghệ lọc RO Dung t&iacute;ch:10 l&iacute;t</p>\r\n<p>C&ocirc;ng suất lọc nước:10 l&iacute;t/giờ Kh&aacute;ng khuẩn:Nano Bạc</p>\r\n<p>Hệ thống bơm v&agrave; van điều tiết:Bơm - h&uacute;t 2 chiều, van điện từ</p>\r\n<p>Tiện &iacute;ch:Tạo nước kiềm (Alkaline) trung h&ograve;a axit cho cơ thể</p>\r\n<p>K&iacute;ch thước:Cao 90 cm - Ngang 43 cm - S&acirc;u 34 cm</p>'),
(88, 12, 8, 'Máy lọc nước RO Sunhouse SHR88210K 10 lõi', 'mln33.jpg', 5790000, '2018-11-20 15:56:45', 100, 46, 6, 'Thông số kỹ thuật chi tiết Máy lọc nước RO Sunhouse SHR88210K 10 lõi\nĐặc điểm sản phẩm\nLoại máy:Máy lọc nước R.O\nSố lõi lọc:10 lõi, Lõi số 4 - Màng RO Filmtec nhập khẩu từ Mỹ\nCông nghệ lọc:Công nghệ lọc RO\nDung tích:10 lít\nCông suất lọc nước:10 - 15 lít/giờ\nKháng khuẩn:Lõi Nano Silver\nHệ thống bơm và van điều tiết:Bơm - hút 2 chiều, van điện từ\nTiện ích:Tạo nước kiềm (Alkaline) trung hòa axit cho cơ thể\nKích thước:Ngang 42.2 cm - Sâu 34 cm - Cao 100 cm'),
(89, 15, 8, 'Máy lọc nước RO Kangaroo VTU KG109A 9 lõi', 'mln37.jpg', 5700000, '2018-11-20 15:56:45', 100, 46, 46, 'Thông số kỹ thuật chi tiết Máy lọc nước RO Kangaroo VTU KG109A 9 lõi\nĐặc điểm sản phẩm\nLoại máy:Máy lọc nước R.O\nSố lõi lọc:9 lõi\nCông nghệ lọc:Công nghệ lọc RO\nDung tích:10 lít\nCông suất lọc nước:10 - 15 lít/giờ\nKháng khuẩn:Lõi Nano Silver\nHệ thống bơm và van điều tiết:Bơm - hút 2 chiều, van điện từ\nTiện ích:Tạo nước kiềm (Alkaline) trung hòa axit cho cơ thể\nKích thước:Ngang 43 cm - Sâu 34 cm - Cao 115.5 cm, 21 kg'),
(92, 11, 9, 'Nồi cơm điện Panasonic PSR-1001R Đỏ', 'n31.jpg', 450000, '2018-11-20 15:56:45', 100, 46, 1, 'Thông số kỹ thuật chi tiết Nồi cơm điện Pensonic PSR-1001R Đỏ\nĐặc điểm sản phẩm\nLoại nồi:Nồi cơm nắp gài\nDung tích nồi:1 lít\nSố người ăn:2 - 4 người\nChất liệu lòng nồi:Hợp kim nhôm tráng men chống dính\nSố mâm nhiệt:1 mâm nhiệt\nChức năng nấu:Nấu cơm\nTiện ích:Nồi chống dính\nĐiều khiển:Nút gạt\nDây điện:Có thể tháo rời khỏi nồi\nCông suất:400 W\nKích thước:Ngang 27 cm - Cao 28 cm - Sâu 26 cm\nKhối lượng:2.6 kg'),
(93, 14, 9, 'Nồi cơm điện Midea 0.6 lít MR-CM06SD', 'n41.jpg', 480000, '2018-11-20 15:56:45', 100, 46, 46, 'Thông số kỹ thuật chi tiết Nồi cơm điện Midea 0.6 lít MR-CM06SD\nĐặc điểm sản phẩm\nLoại nồi:Nồi cơm nắp gài\nDung tích nồi:0.6 lít\nSố người ăn:1 - 2 người\nChất liệu lòng nồi:Hợp kim nhôm tráng men chống dính\nSố mâm nhiệt:1 mâm nhiệt\nChức năng nấu:Nấu cơm\nĐiều khiển:Nút gạt\nDây điện:Cố định với thân nồi\nCông suất:330 W\nKích thước:Ngang 22 cm - Cao 18 cm - Sâu 25 cm\nKhối lượng:1.5 kg'),
(94, 13, 9, 'Nồi cơm điện Electrolux 1.8 lít ERC1800', 'n51.jpg', 490000, '2018-11-20 15:56:45', 100, 78, 67, 'Thông số kỹ thuật chi tiết Nồi cơm điện Electrolux 1.8 lít ERC1800\nĐặc điểm sản phẩm\nLoại nồi:Nồi cơm nắp rời\nDung tích nồi:1.8 lít\nSố người ăn:4 - 6 người\nChất liệu lòng nồi:Hợp kim nhôm tráng men chống dính\nSố mâm nhiệt:1 mâm nhiệt\nChức năng nấu:Nấu cơm\nTiện ích:Có xửng hấp, Nồi chống dính\nĐiều khiển:Nút gạt\nDây điện:Cố định với thân nồi\nCông suất:650 - 770 W\nKích thước:Ngang 34 cm - Cao 27 cm - Sâu 24 cm\nKhối lượng:2.5 kg'),
(95, 6, 9, 'Nồi cơm điện Sharp 1.8 lít KS-18TJV', 'n61.jpg', 775000, '2018-11-20 15:56:45', 100, 78, 61, 'Thông số kỹ thuật chi tiết Nồi cơm điện Sharp 1.8 lít KS-18TJV\nĐặc điểm sản phẩm\nLoại nồi:Nồi cơm nắp gài\nDung tích nồi:1.8 lít\nSố người ăn:4 - 6 người\nChất liệu lòng nồi:Hợp kim nhôm tráng men chống dính\nSố mâm nhiệt:2 mâm nhiệt\nChức năng nấu:Nấu cơm, Hâm nóng\nTiện ích:Có xửng hấp, Van thoát hơi thông minh giữ lại vitamin, Nồi chống dính\nĐiều khiển:Nút gạt\nDây điện:Có thể tháo rời khỏi nồi\nCông suất:700 W\nKích thước:Ngang 27 cm - Cao 29 cm - Sâu 27 cm\nKhối lượng:2.9 kg'),
(97, 12, 9, 'Nồi cơm điện Sunhouse 2.8 lít SH 830', 'n81.jpg', 790000, '2018-11-20 15:56:45', 100, 78, 73, 'Thông số kỹ thuật chi tiết Nồi cơm điện Sunhouse 2.8 lít SH 830\nĐặc điểm sản phẩm\nLoại nồi:Nồi cơm nắp gài\nDung tích nồi:2.8 lít\nSố người ăn:Trên 6 người\nChất liệu lòng nồi:Hợp kim nhôm tráng men chống dính\nSố mâm nhiệt:1 mâm nhiệt\nChức năng nấu:Nấu cơm, Hâm nóng\nTiện ích:Có xửng hấp, Van thoát hơi thông minh giữ lại vitamin, Nồi chống dính\nĐiều khiển:Nút gạt\nDây điện:Dây rút vào thân nồi\nCông suất:1000 W\nKích thước:Ngang 30 cm - Cao 32 cm - Sâu 31 cm\nKhối lượng:3.5 kg'),
(98, 6, 9, 'Nồi cơm điện Sharp 2.2 lít KSH-D22V', 'n91.jpg', 810000, '2018-11-20 15:56:45', 100, 78, 68, 'Thông số kỹ thuật chi tiết Nồi cơm điện Sharp 2.2 lít KSH-D22V\nĐặc điểm sản phẩm\nLoại nồi:Nồi cơm nắp rời\nDung tích nồi:2.2 lít\nSố người ăn:4 - 6 người\nChất liệu lòng nồi:Hợp kim nhôm không chống dính\nSố mâm nhiệt:1 mâm nhiệt\nChức năng nấu:Nấu cơm\nĐiều khiển:Nút gạt\nDây điện:Cố định với thân nồi\nCông suất:700 W\nKích thước:Ngang 26.8 cm - Cao 35.1 cm - Sâu 28.9 cm\nKhối lượng:2.9 kg'),
(99, 12, 9, 'Nồi cơm điện Sunhouse 1.8 lít SHD 18S', 'n101.jpg', 840000, '2018-11-20 15:56:45', 100, 78, 66, 'Thông số kỹ thuật chi tiết Nồi cơm điện Sunhouse 1.8 lít SHD 18S\nĐặc điểm sản phẩm\nLoại nồi:Nồi cơm nắp gài\nDung tích nồi:1.8 lít\nSố người ăn:4 - 6 người\nChất liệu lòng nồi:Hợp kim nhôm tráng men chống dính\nSố mâm nhiệt:3 mâm nhiệt\nChức năng nấu:Nấu cơm, Hâm nóng\nTiện ích:Có xửng hấp, Van thoát hơi thông minh giữ lại vitamin, Nồi chống dính\nĐiều khiển:Nút gạt\nDây điện:Dây rút vào thân nồi\nCông suất:700 W\nKích thước:Ngang 27 cm - Cao 29 cm - Sâu 17.5 cm\nKhối lượng:3.3 kg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `MATAIKHOAN` int(11) NOT NULL,
  `TENDANGNHAP` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MATKHAU` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TENHIENTHI` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DIACHI` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DIENTHOAI` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMAIL` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`MATAIKHOAN`, `TENDANGNHAP`, `MATKHAU`, `TENHIENTHI`, `DIACHI`, `DIENTHOAI`, `EMAIL`) VALUES
(1, 'datvu', '13031998', 'Đạt', 'hóc môn tp HCM', '0961458425', 'datvu1303@gamil.com'),
(3, 'datvu133', '13031998', 'Đạt Vũ', 'HCM', '0961458425', 'diunmm@gmail.com'),
(4, '1660097', '13031998', 'Đạt Vũ', 'HCM', '0961458425', 'diunmm@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tinhtrang`
--

CREATE TABLE `tinhtrang` (
  `MATINHTRANG` int(11) NOT NULL,
  `TENTINHTRANG` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tinhtrang`
--

INSERT INTO `tinhtrang` (`MATINHTRANG`, `TENTINHTRANG`) VALUES
(1, 'Chưa Giao'),
(2, 'Đang Giao'),
(3, 'Đã Giao');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`TAIKHOAN`);

--
-- Chỉ mục cho bảng `chitietdondathang`
--
ALTER TABLE `chitietdondathang`
  ADD PRIMARY KEY (`MACHITIETDONDATHANG`),
  ADD KEY `FK_RELATIONSHIP_3` (`MADONDATHANG`),
  ADD KEY `FK_RELATIONSHIP_4` (`MASANPHAM`);

--
-- Chỉ mục cho bảng `dondathang`
--
ALTER TABLE `dondathang`
  ADD PRIMARY KEY (`MADONDATHANG`),
  ADD KEY `FK_RELATIONSHIP_2` (`MATAIKHOAN`),
  ADD KEY `FK_RELATIONSHIP_5` (`MATINHTRANG`);

--
-- Chỉ mục cho bảng `hangsanxuat`
--
ALTER TABLE `hangsanxuat`
  ADD PRIMARY KEY (`MAHANGSANXUAT`);

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`MALOAISANPHAM`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MASANPHAM`),
  ADD KEY `FK_RELATIONSHIP_6` (`MALOAISANPHAM`),
  ADD KEY `FK_RELATIONSHIP_7` (`MAHANGSANXUAT`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`MATAIKHOAN`);

--
-- Chỉ mục cho bảng `tinhtrang`
--
ALTER TABLE `tinhtrang`
  ADD PRIMARY KEY (`MATINHTRANG`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitietdondathang`
--
ALTER TABLE `chitietdondathang`
  MODIFY `MACHITIETDONDATHANG` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT cho bảng `dondathang`
--
ALTER TABLE `dondathang`
  MODIFY `MADONDATHANG` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `hangsanxuat`
--
ALTER TABLE `hangsanxuat`
  MODIFY `MAHANGSANXUAT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `MALOAISANPHAM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MASANPHAM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `MATAIKHOAN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tinhtrang`
--
ALTER TABLE `tinhtrang`
  MODIFY `MATINHTRANG` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitietdondathang`
--
ALTER TABLE `chitietdondathang`
  ADD CONSTRAINT `FK_RELATIONSHIP_3` FOREIGN KEY (`MADONDATHANG`) REFERENCES `dondathang` (`MADONDATHANG`),
  ADD CONSTRAINT `FK_RELATIONSHIP_4` FOREIGN KEY (`MASANPHAM`) REFERENCES `sanpham` (`MASANPHAM`);

--
-- Các ràng buộc cho bảng `dondathang`
--
ALTER TABLE `dondathang`
  ADD CONSTRAINT `FK_RELATIONSHIP_2` FOREIGN KEY (`MATAIKHOAN`) REFERENCES `taikhoan` (`MATAIKHOAN`),
  ADD CONSTRAINT `FK_RELATIONSHIP_5` FOREIGN KEY (`MATINHTRANG`) REFERENCES `tinhtrang` (`MATINHTRANG`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `FK_RELATIONSHIP_6` FOREIGN KEY (`MALOAISANPHAM`) REFERENCES `loaisanpham` (`MALOAISANPHAM`),
  ADD CONSTRAINT `FK_RELATIONSHIP_7` FOREIGN KEY (`MAHANGSANXUAT`) REFERENCES `hangsanxuat` (`MAHANGSANXUAT`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
