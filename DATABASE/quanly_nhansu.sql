-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2024 at 12:01 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quanly_nhansu`
--

-- --------------------------------------------------------

--
-- Table structure for table `bang_cap`
--

CREATE TABLE `bang_cap` (
  `id` int(11) NOT NULL,
  `ma_bang_cap` varchar(50) NOT NULL,
  `ten_bang_cap` varchar(255) NOT NULL,
  `ghi_chu` varchar(255) NOT NULL,
  `nguoi_tao` varchar(50) NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `nguoi_sua` varchar(50) NOT NULL,
  `ngay_sua` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bang_cap`
--

INSERT INTO `bang_cap` (`id`, `ma_bang_cap`, `ten_bang_cap`, `ghi_chu`, `nguoi_tao`, `ngay_tao`, `nguoi_sua`, `ngay_sua`) VALUES
(0, 'MBC1569664716', 'Không', '', 'Bùi Phương Huy', '2023-09-28 16:58:36', 'Bùi Phương Huy', '2023-09-28 16:58:36'),
(1, 'MBC1569651987', 'Bằng cử nhân', '', 'Bùi Phương Huy', '2023-09-28 13:26:27', 'Bùi Phương Huy', '2023-09-28 13:26:27'),
(2, 'MBC1569652012', 'Bằng thạc sĩ', '', 'Bùi Phương Huy', '2023-09-28 13:26:52', 'Bùi Phương Huy', '2023-09-28 13:26:52'),
(3, 'MBC1569652035', 'Bằng tiến sĩ', '', 'Bùi Phương Huy', '2023-09-28 13:27:15', 'Bùi Phương Huy', '2023-09-28 13:27:15'),
(4, 'MBC1569652169', 'Cử nhân khoa học xã hội', '', 'Bùi Phương Huy', '2023-09-28 13:29:29', 'Bùi Phương Huy', '2023-09-28 13:29:29'),
(5, 'MBC1569652180', 'Cử nhân khoa học tự nhiên', '', 'Bùi Phương Huy', '2023-09-28 13:29:40', 'Bùi Phương Huy', '2023-09-28 13:29:40'),
(8, 'MBC1569652431', 'Cử nhân quản trị kinh doanh', '', 'Bùi Phuong Huy', '2023-09-28 13:33:51', 'Bùi Phương Huy', '2023-09-28 13:33:51'),
(9, 'MBC1569652436', 'Cử nhân thương mại và quản trị', '', 'Bùi Phương Huy', '2023-09-28 13:33:56', 'Bùi Phương Huy', '2023-09-28 13:33:56'),
(10, 'MBC1569652441', 'Cử nhân kế toán', '', 'Bùi Phương Huy', '2023-09-28 13:34:01', 'Bùi Phương Huy', '2023-09-28 13:34:01'),
(11, 'MBC1569652448', 'Cử nhân luật', '', 'Bùi Phương Huy', '2023-09-28 13:34:08', 'Bùi Phương Huy', '2023-09-28 13:34:08'),
(12, 'MBC1569652456', 'Cử nhân ngành quản trị và chính sách công', '', 'Bùi Phương Huy', '2023-09-28 13:34:16', 'Bùi Phương Huy', '2023-09-28 13:34:16'),
(13, 'MBC1569652463', 'Thạc sĩ khoa học xã hội', '', 'Bùi Phương Huy', '2023-09-28 13:34:23', 'Bùi Phương Huy', '2023-09-28 13:34:23'),
(14, 'MBC1569652469', 'Thạc sĩ khoa học tự nhiên', '', 'Bùi Phương Huy', '2023-09-28 13:34:29', 'Bùi Phương Huy', '2023-09-28 13:34:29'),
(15, 'MBC1569652475', 'Thạc sĩ quản trị kinh doanh', '', 'Bùi Phương Huy', '2023-09-28 13:34:35', 'Bùi Phương Huy', '2023-09-28 13:34:35'),
(16, 'MBC1569652481', 'Thạc sĩ kế toán', '', 'Bùi Phương Huy', '2023-09-28 13:34:41', 'Bùi Phương Huy', '2023-09-28 13:56:55');

-- --------------------------------------------------------

--
-- Table structure for table `chinh_luong`
--

CREATE TABLE `chinh_luong` (
  `id` int(11) NOT NULL,
  `nhanvien_id` int(11) NOT NULL,
  `so_qd` varchar(50) NOT NULL,
  `ngay_ky_ket` datetime NOT NULL,
  `ngay_dieu_chinh` datetime NOT NULL,
  `heso_luong_cu` double NOT NULL,
  `heso_luong_moi` double NOT NULL,
  `nguoi_tao_id` int(11) NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `nguoi_sua_id` int(11) NOT NULL,
  `ngay_sua` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chi_tiet_nhom`
--

CREATE TABLE `chi_tiet_nhom` (
  `id` int(11) NOT NULL,
  `ma_nhom` varchar(50) NOT NULL,
  `nhan_vien_id` int(11) NOT NULL,
  `nguoi_tao` varchar(50) NOT NULL,
  `ngay_tao` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chi_tiet_nhom`
--

INSERT INTO `chi_tiet_nhom` (`id`, `ma_nhom`, `nhan_vien_id`, `nguoi_tao`, `ngay_tao`) VALUES
(1, 'GRP1571110024', 11, 'Bùi Phương Huy', '2023-10-15 11:39:22'),
(2, 'GRP1571110024', 10, 'Bùi Phương Huy', '2023-10-15 11:42:07'),
(3, 'GRP1571110024', 5, 'Bùi Phương Huy', '2023-10-15 11:56:45'),
(8, 'GRP1571110761', 5, 'Bùi Phương Huy', '2023-10-15 12:09:33'),
(9, 'Bùi Phương Huy', 4, 'Bùi Phương Huy', '2023-10-15 12:09:38'),
(17, 'GRP1571110790', 11, 'Bùi Phương Huy', '2023-10-15 14:48:47'),
(18, 'GRP1571110790', 13, 'Bùi Phương Huy', '2023-10-15 14:48:50'),
(19, 'GRP1571110790', 3, 'Bùi Phương Huy', '2023-10-15 14:48:56'),
(20, 'GRP1571110114', 10, 'Bùi Phương Huy', '2023-10-15 14:49:08'),
(21, 'GRP1571110114', 5, 'Bùi Phương Huy', '2023-10-15 14:49:12'),
(22, 'GRP1571110114', 3, 'Bùi Phương Huy', '2023-10-15 14:49:18'),
(23, 'GRP1571110114', 8, 'Bùi Phương Huy', '2023-10-15 14:49:24'),
(24, 'GRP1571110790', 8, 'Bùi Phương Huy', '2023-10-17 08:44:12'),
(25, 'GRP1721113516', 14, 'BùiPhương Huy', '2024-07-16 15:57:11'),
(26, 'GRP1721113516', 11, 'BùiPhương Huy', '2024-07-16 15:57:21'),
(27, 'GRP1721113516', 16, 'AccountAdmin', '2024-07-17 16:39:52');

-- --------------------------------------------------------

--
-- Table structure for table `chuc_vu`
--

CREATE TABLE `chuc_vu` (
  `id` int(11) NOT NULL,
  `ma_chuc_vu` varchar(50) NOT NULL,
  `ten_chuc_vu` varchar(255) NOT NULL,
  `luong_ngay` double NOT NULL,
  `ghi_chu` varchar(255) NOT NULL,
  `nguoi_tao` varchar(50) NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `nguoi_sua` varchar(50) NOT NULL,
  `ngay_sua` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chuc_vu`
--

INSERT INTO `chuc_vu` (`id`, `ma_chuc_vu`, `ten_chuc_vu`, `luong_ngay`, `ghi_chu`, `nguoi_tao`, `ngay_tao`, `nguoi_sua`, `ngay_sua`) VALUES
(16, 'MCV1569203762', 'Phó giám đốc', 560000, '', 'Bùi Phương Huy', '2023-09-23 08:56:02', 'Bùi Phương Huy', '2023-10-01 16:33:10'),
(17, 'MCV1569203773', 'Giám đốc', 600000, '', 'Bùi Phương Huy', '2023-09-23 08:56:13', 'Bùi Phương Huy', '2023-10-02 09:59:00'),
(33, 'MCV1569204007', 'Nhân viên', 230000, '', 'Bùi Phương Huy', '2023-09-23 09:00:07', 'Bùi Phương Huy', '2023-10-01 16:20:43'),
(37, 'MCV1569985216', 'Trưởng phòng', 310000, '', 'Bùi Phương Huy', '2023-10-02 10:00:16', 'Bùi Phương Huy', '2023-10-02 10:00:16'),
(38, 'MCV1569985261', 'Phó phòng', 280000, '', 'Bùi Phương Huy', '2023-10-02 10:01:01', 'Bùi Phương Huy', '2023-10-02 10:01:01'),
(39, 'MCV1571105797', 'Marketing', 285000, '<p>Quảng b&aacute;, k&ecirc;u gọi kh&aacute;ch h&agrave;ng tham gia.</p>\r\n', 'Bùi Phương Huy', '2023-10-15 09:16:37', 'Bùi Phương Huy', '2023-10-15 09:16:37');

-- --------------------------------------------------------

--
-- Table structure for table `chuyen_mon`
--

CREATE TABLE `chuyen_mon` (
  `id` int(11) NOT NULL,
  `ma_chuyen_mon` varchar(50) NOT NULL,
  `ten_chuyen_mon` varchar(255) NOT NULL,
  `ghi_chu` varchar(255) NOT NULL,
  `nguoi_tao` varchar(50) NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `nguoi_sua` varchar(50) NOT NULL,
  `ngay_sua` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chuyen_mon`
--

INSERT INTO `chuyen_mon` (`id`, `ma_chuyen_mon`, `ten_chuyen_mon`, `ghi_chu`, `nguoi_tao`, `ngay_tao`, `nguoi_sua`, `ngay_sua`) VALUES
(0, 'MCM1569664640', 'Không', '', 'Bùi Phương Huy', '2023-09-28 16:57:20', 'Bùi Phương Huy', '2023-09-28 16:57:20'),
(2, 'MCM1569208526', 'Kế toán', '', 'Bùi Phương Huy', '2023-09-23 10:15:26', 'Bùi Phương Huy', '2023-09-23 10:15:26'),
(3, 'MCM1569208539', 'Công nghệ thông tin', '', 'Bùi Phương Huy', '2023-09-23 10:15:39', 'Bùi Phương Huy', '2023-09-23 10:15:39'),
(4, 'MCM1569208553', 'Quản trị nhà hàng - khách sạn', '', 'Bùi Phương Huy', '2023-09-23 10:15:53', 'Bùi Phương Huy', '2023-09-23 10:15:53'),
(5, 'MCM1569208562', 'Tiếp tân', '', 'Bùi Phương Huy', '2023-09-23 10:16:02', 'Bùi Phương Huy', '2023-09-23 10:16:02'),
(6, 'MCM1569208577', 'Sale', '', 'Bùi Phương Huy', '2023-09-23 10:16:17', 'Bùi Phương Huy', '2023-09-23 10:16:17'),
(7, 'MCM1569208618', 'Hành chính văn phòng', '', 'Bùi Phương Huy', '2023-09-23 10:16:58', 'Bùi Phương Huy', '2023-09-23 10:16:58'),
(8, 'MCM1569208631', 'Quản lý chất lượng', '', 'Bùi Phương Huy', '2023-09-23 10:17:11', 'Bùi Phương Huy', '2023-09-23 10:17:11'),
(9, 'MCM1569208648', 'Thương mại điện tử', '', 'Bùi Phương Huy', '2023-09-23 10:17:28', 'Bùi Phương Huy', '2023-09-23 10:17:28'),
(10, 'MCM1569208673', 'Tài chính', '', 'Bùi Phương Huy', '2023-09-23 10:17:53', 'Bùi Phương Huy', '2023-09-23 10:17:53'),
(11, 'MCM1569208680', 'Quản lý', '', 'Bùi Phương Huy', '2023-09-23 10:18:00', 'Bùi Phương Huy', '2023-09-23 10:18:00'),
(12, 'MCM1569208698', 'Maketing', '', 'Bùi Phương Huy', '2023-09-23 10:18:18', 'Bùi Phương Huy', '2023-09-28 13:05:19'),
(13, 'MCM1569208705', 'Khởi nghiệp', '', 'Bùi Phương Huy', '2023-09-23 10:18:25', 'Bùi Phương Huy', '2023-09-23 10:18:25'),
(14, 'MCM1569208731', 'Quản lý nguồn nhân lực', '', 'Bùi Phương Huy', '2023-09-23 10:18:51', 'Bùi Phương Huy', '2023-09-23 10:18:51'),
(15, 'MCM1569208740', 'Kinh doanh', '', 'Bùi Phương Huy', '2023-09-23 10:19:00', 'Bùi Phương Huy', '2023-09-23 10:19:00'),
(16, 'MCM1569208758', 'Vận tải và hậu cần', '', 'Bùi Phương Huy', '2023-09-23 10:19:18', 'Bùi Phương Huy', '2023-09-23 10:19:18'),
(17, 'MCM1569208771', 'Kinh doanh', '', 'Bùi Phương Huy', '2023-09-23 10:19:31', 'Bùi Phương Huy', '2023-09-23 10:19:31'),
(18, 'MCM1569208782', 'Bán lẻ', '', 'Bùi Phương Huy', '2023-09-23 10:19:42', 'Bùi Phương Huy', '2023-09-23 10:19:42');

-- --------------------------------------------------------

--
-- Table structure for table `cong_tac`
--

CREATE TABLE `cong_tac` (
  `id` int(11) NOT NULL,
  `ma_cong_tac` varchar(255) NOT NULL,
  `nhanvien_id` int(11) NOT NULL,
  `ngay_bat_dau` date NOT NULL,
  `ngay_ket_thuc` date NOT NULL,
  `dia_diem` varchar(255) NOT NULL,
  `muc_dich` varchar(500) NOT NULL,
  `ghi_chu` varchar(500) NOT NULL,
  `nguoi_tao` varchar(255) NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `nguoi_sua` varchar(255) NOT NULL,
  `ngay_sua` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cong_tac`
--

INSERT INTO `cong_tac` (`id`, `ma_cong_tac`, `nhanvien_id`, `ngay_bat_dau`, `ngay_ket_thuc`, `dia_diem`, `muc_dich`, `ghi_chu`, `nguoi_tao`, `ngay_tao`, `nguoi_sua`, `ngay_sua`) VALUES
(8, 'MCT1721198801', 14, '2024-06-17', '2024-07-18', 'Phú Quốc', '<p>khảo s&aacute;t thị trường v&agrave; nhu cầu sử dụng thiết bị c&ocirc;ng nghệ của người d&acirc;n</p>\r\n', '', 'Bùi Phương Huy', '2024-07-17 13:46:41', '', '0000-00-00 00:00:00'),
(9, 'MCT1721209163', 16, '2024-07-17', '2024-07-20', 'TP Hồ Chí Minh', '<p>Thu thập th&ocirc;ng tin địa b&agrave;n, vị tr&iacute;, nguồn lực kinh doanh để mở th&ecirc;m chi nh&aacute;nh</p>\r\n', '', 'Account Admin', '2024-07-17 16:39:23', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `dan_toc`
--

CREATE TABLE `dan_toc` (
  `id` int(11) NOT NULL,
  `ten_dan_toc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dan_toc`
--

INSERT INTO `dan_toc` (`id`, `ten_dan_toc`) VALUES
(1, 'Kinh'),
(2, 'Khơ-me'),
(3, 'Mường'),
(4, 'Thổ'),
(5, 'H\'Mông'),
(6, 'Ê-đê'),
(7, 'Bố Y'),
(8, 'Lào'),
(9, 'Tày'),
(10, 'Thái'),
(11, 'Nùng'),
(12, 'Khơ-mú'),
(13, 'M\'Nông'),
(14, 'Xơ Đăng'),
(15, 'Chăm'),
(16, 'Gia Rai'),
(17, 'Hoa'),
(18, 'Lô Lô'),
(19, 'Phù Lá');

-- --------------------------------------------------------

--
-- Table structure for table `khen_thuong_ky_luat`
--

CREATE TABLE `khen_thuong_ky_luat` (
  `id` int(11) NOT NULL,
  `ma_kt` varchar(50) NOT NULL,
  `so_qd` varchar(50) NOT NULL,
  `ngay_qd` date NOT NULL,
  `nhanvien_id` int(11) NOT NULL,
  `ten_khen_thuong` varchar(255) NOT NULL,
  `loai_kt_id` int(11) NOT NULL,
  `hinh_thuc` tinyint(1) NOT NULL,
  `so_tien` double NOT NULL,
  `flag` tinyint(1) NOT NULL,
  `ghi_chu` varchar(500) NOT NULL,
  `nguoi_tao` varchar(50) NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `nguoi_sua` varchar(50) NOT NULL,
  `ngay_sua` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `khen_thuong_ky_luat`
--

INSERT INTO `khen_thuong_ky_luat` (`id`, `ma_kt`, `so_qd`, `ngay_qd`, `nhanvien_id`, `ten_khen_thuong`, `loai_kt_id`, `hinh_thuc`, `so_tien`, `flag`, `ghi_chu`, `nguoi_tao`, `ngay_tao`, `nguoi_sua`, `ngay_sua`) VALUES
(1, 'MKT1571286726', 'DHK/1146', '2023-10-17', 5, 'Khen thưởng nhân viên năng động', 6, 0, 240000, 1, '<p>Thưởng trong th&aacute;ng</p>\r\n', 'Đào Thanh Huy', '2023-10-17 11:32:06', 'Đào Thanh Huy', '2023-10-18 10:33:44'),
(2, 'MKT1571286771', 'DHK/1145', '2023-10-17', 4, 'Khen thưởng nhân viên chăm chỉ', 7, 0, 400000, 1, '', 'Đào Thanh Huy', '2023-10-17 11:32:51', 'Đào Thanh Huy', '2023-10-18 10:33:31'),
(3, 'MKT1571286857', 'DKT/1144', '2023-10-17', 12, 'Khen thưởng nhân viên tốt', 5, 1, 325000, 1, '', 'Đào Thanh Huy', '2023-10-17 11:34:17', 'Đào Thanh Huy', '2023-10-18 10:33:19'),
(7, 'MKT1571365640', 'DHK/1143', '2023-10-14', 5, 'Khen thưởng nhân viên hiếu động', 7, 1, 360000, 1, '<p>Thưởng cho th&agrave;nh phần hiếu động</p>\r\n', 'Đào Thanh Huy', '2023-10-18 09:27:20', 'Đào Thanh Huy', '2023-10-18 10:32:44'),
(9, 'MKL1571368523', 'DKT/5933', '2023-10-18', 12, 'Chuyên đi trễ', 15, 0, 25000, 0, '', 'Đào Thanh Huy', '2023-10-18 10:15:23', 'Đào Thanh Huy', '2023-10-18 10:15:23'),
(11, 'MKL1571369398', 'DKT/4421', '2023-10-12', 8, 'Nhân viên chậm chạp', 14, 1, 123000, 0, '<p>Cần c&acirc;n nhắc khi sử dụng nh&acirc;n vi&ecirc;n n&agrave;y.</p>\r\n', 'Đào Thanh Huy', '2023-10-18 10:29:58', 'Đào Thanh Huy', '2023-10-18 10:30:47'),
(12, 'MKT1721210272', '0125', '2024-07-17', 16, 'Nhân viên của tháng', 8, 0, 5000000, 1, '', 'Account Admin', '2024-07-17 16:57:52', 'Account Admin', '2024-07-17 16:57:52');

-- --------------------------------------------------------

--
-- Table structure for table `loai_khen_thuong_ky_luat`
--

CREATE TABLE `loai_khen_thuong_ky_luat` (
  `id` int(11) NOT NULL,
  `ma_loai` varchar(50) NOT NULL,
  `ten_loai` varchar(255) NOT NULL,
  `ghi_chu` varchar(255) NOT NULL,
  `flag` tinyint(1) NOT NULL,
  `nguoi_tao` varchar(50) NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `nguoi_sua` varchar(50) NOT NULL,
  `ngay_sua` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `loai_khen_thuong_ky_luat`
--

INSERT INTO `loai_khen_thuong_ky_luat` (`id`, `ma_loai`, `ten_loai`, `ghi_chu`, `flag`, `nguoi_tao`, `ngay_tao`, `nguoi_sua`, `ngay_sua`) VALUES
(5, 'LKT1571280354', 'Nhân viên đồng', '', 1, 'Bùi Phương Huy', '2023-10-17 09:45:54', 'Bùi Phương Huy', '2023-10-17 09:45:54'),
(6, 'LKT1571280364', 'Nhân viên bạc', '', 1, 'Bùi Phương Huy', '2023-10-17 09:46:04', 'Bùi Phương Huy', '2023-10-17 09:46:04'),
(7, 'LKT1571280370', 'Nhân viên vàng', '', 1, 'Bùi Phương Huy', '2023-10-17 09:46:10', 'Bùi Phương Huy', '2023-10-17 09:46:10'),
(8, 'LKT1571280376', 'Nhân viên kim cương', '', 1, 'Bùi Phương Huy', '2023-10-17 09:46:16', 'Bùi Phương Huy', '2023-10-17 10:38:32'),
(14, 'LKL1571366769', 'Nhân viên đi trễ', '<p>Nh&acirc;n vi&ecirc;n thường xuy&ecirc;n đi trễ</p>\r\n', 0, 'Bùi Phương Huy', '2023-10-18 09:46:09', 'Bùi Phương Huy', '2023-10-18 09:46:09'),
(15, 'LKL1571366807', 'Nhân viên nghỉ quá ngày cho phép', '<p>Nh&acirc;n vi&ecirc;n nghỉ tr&ecirc;n 20 ng&agrave;y/th&aacute;ng.</p>\r\n', 0, 'Bùi Phương Huy', '2023-10-18 09:46:47', 'Bùi Phương Huy', '2023-10-18 09:46:47'),
(19, 'LKL1571367774', 'Test', '', 0, 'Bùi Phương Huy', '2023-10-18 10:02:54', 'Bùi Phương Huy', '2023-10-18 10:03:55'),
(20, 'LKT1599471135', 'Doanh so cao', '<p>ok</p>\r\n', 1, 'Account Admin', '2023-09-07 16:32:15', 'Account Admin', '2023-09-07 16:32:15');

-- --------------------------------------------------------

--
-- Table structure for table `loai_nv`
--

CREATE TABLE `loai_nv` (
  `id` int(11) NOT NULL,
  `ma_loai_nv` varchar(50) NOT NULL,
  `ten_loai_nv` varchar(50) NOT NULL,
  `ghi_chu` varchar(255) NOT NULL,
  `nguoi_tao` varchar(50) NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `nguoi_sua` varchar(50) NOT NULL,
  `ngay_sua` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `loai_nv`
--

INSERT INTO `loai_nv` (`id`, `ma_loai_nv`, `ten_loai_nv`, `ghi_chu`, `nguoi_tao`, `ngay_tao`, `nguoi_sua`, `ngay_sua`) VALUES
(2, 'LNV1569654834', 'Nhân viên chính thức', '', 'Bùi Phương Huy', '2023-09-28 14:13:54', 'Bùi Phương Huy', '2023-09-28 14:13:54'),
(3, 'LNV1569654844', 'Nhân viên thực tập', '', 'Bùi Phương Huy', '2023-09-28 14:14:04', 'Bùi Phương Huy', '2023-09-28 14:14:04'),
(4, 'LNV1569654850', 'Nhân viên thời vụ', '', 'Bùi Phương Huy', '2023-09-28 14:14:10', 'Bùi Phương Huy', '2023-09-28 14:14:10');

-- --------------------------------------------------------

--
-- Table structure for table `luong`
--

CREATE TABLE `luong` (
  `id` int(11) NOT NULL,
  `ma_luong` varchar(50) NOT NULL,
  `nhanvien_id` int(11) NOT NULL,
  `luong_thang` double NOT NULL,
  `ngay_cong` int(11) NOT NULL,
  `phu_cap` double NOT NULL,
  `khoan_nop` double NOT NULL,
  `tam_ung` double NOT NULL,
  `thuc_lanh` double NOT NULL,
  `ngay_cham` date NOT NULL,
  `ghi_chu` varchar(255) NOT NULL,
  `nguoi_tao_id` int(11) NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `nguoi_sua_id` int(11) NOT NULL,
  `ngay_sua` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `luong`
--

INSERT INTO `luong` (`id`, `ma_luong`, `nhanvien_id`, `luong_thang`, `ngay_cong`, `phu_cap`, `khoan_nop`, `tam_ung`, `thuc_lanh`, `ngay_cham`, `ghi_chu`, `nguoi_tao_id`, `ngay_tao`, `nguoi_sua_id`, `ngay_sua`) VALUES
(3, 'ML1570075152', 10, 18600000, 28, 2260000, 1953000, 1500000, 17407000, '2023-10-03', '', 4, '2023-10-03 10:59:12', 4, '2023-10-03 10:59:12'),
(4, 'ML1570075175', 5, 5750000, 25, 0, 603750, 1500000, 3646250, '2023-10-03', '', 4, '2023-10-03 10:59:35', 4, '2023-10-03 10:59:35'),
(5, 'ML1570075372', 3, 8050000, 30, 1650000, 845250, 1500000, 7354750, '2023-10-03', '', 4, '2023-10-03 11:02:52', 4, '2023-10-03 11:02:52'),
(9, 'ML1570267241', 10, 19800000, 29, 2305000, 2079000, 0, 20026000, '2023-11-05', '', 4, '2023-10-05 16:20:41', 4, '2023-10-05 16:20:41'),
(10, 'ML1570267671', 10, 13800000, 23, 2035000, 1449000, 1200000, 13186000, '2023-12-05', '', 4, '2023-10-05 16:27:51', 4, '2023-10-05 16:27:51'),
(11, 'ML1570267847', 2, 8050000, 30, 1650000, 845250, 500000, 8354750, '2023-08-01', '', 4, '2023-10-05 16:30:47', 4, '2023-10-05 16:30:47'),
(12, 'ML1570267874', 2, 7590000, 29, 1605000, 796950, 0, 8398050, '2023-11-05', '', 4, '2023-10-05 16:31:14', 4, '2023-10-05 16:31:14'),
(13, 'ML1570355932', 8, 9240000, 29, 1805000, 970200, 1000000, 9074800, '2023-10-06', '<p>Nhận tiền mặt</p>\r\n', 12, '2023-10-06 16:58:52', 12, '2023-10-06 16:58:52'),
(14, 'ML1571365486', 12, 4600000, 20, 0, 483000, 0, 4117000, '2023-10-18', '', 12, '2023-10-18 09:24:46', 12, '2023-10-18 09:24:46'),
(15, 'ML1571390955', 8, 9800000, 30, 1850000, 1029000, 0, 10621000, '2023-11-05', '', 1, '2023-10-18 16:29:15', 1, '2023-10-18 16:29:15'),
(16, 'ML1598806041', 3, 3450000, 15, 0, 362250, 0, 3087750, '2023-08-30', '<p>aaaaaa</p>\r\n', 1, '2023-08-30 23:47:21', 1, '2023-08-30 23:47:21'),
(17, 'ML1599471056', 12, 8050000, 30, 0, 845250, 0, 7204750, '2023-09-07', '<p>ok</p>\r\n', 1, '2023-09-07 16:30:56', 1, '2023-09-07 16:30:56'),
(19, 'ML1721183309', 14, 8050000, 30, 1650000, 845250, 0, 8854750, '2024-07-17', '', 14, '2024-07-17 09:28:29', 14, '2024-07-17 09:28:29'),
(20, 'ML1721210318', 16, 10850000, 30, 1000000, 1139250, 0, 10710750, '2024-07-17', '', 1, '2024-07-17 16:58:38', 1, '2024-07-17 16:58:38'),
(21, 'ML1721292662', 2, 8050000, 30, 1000000, 845250, 0, 8204750, '2023-07-18', '<p>lương th&aacute;ng 6</p>\r\n', 1, '2024-07-18 15:51:02', 1, '2024-07-18 15:51:02'),
(22, 'ML1721360860', 3, 8050000, 30, 1500000, 845250, 0, 8704750, '2024-07-10', '', 14, '2024-07-19 10:47:40', 14, '2024-07-19 10:47:40'),
(23, 'ML1721375410', 2, 8050000, 30, 1500000, 845250, 0, 8704750, '2024-07-19', '', 14, '2024-07-19 14:50:10', 14, '2024-07-19 14:50:10');

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `id` int(11) NOT NULL,
  `ma_nv` varchar(50) NOT NULL,
  `hinh_anh` varchar(255) NOT NULL,
  `ten_nv` varchar(255) NOT NULL,
  `biet_danh` varchar(255) NOT NULL,
  `gioi_tinh` tinyint(1) NOT NULL,
  `ngay_sinh` date NOT NULL,
  `noi_sinh` varchar(255) NOT NULL,
  `hon_nhan_id` int(11) NOT NULL,
  `so_cmnd` varchar(50) NOT NULL,
  `noi_cap_cmnd` varchar(255) NOT NULL,
  `ngay_cap_cmnd` date NOT NULL,
  `nguyen_quan` varchar(255) NOT NULL,
  `quoc_tich_id` int(11) NOT NULL,
  `ton_giao_id` int(11) NOT NULL,
  `dan_toc_id` int(11) NOT NULL,
  `ho_khau` varchar(255) NOT NULL,
  `tam_tru` varchar(255) NOT NULL,
  `loai_nv_id` int(11) NOT NULL,
  `trinh_do_id` int(11) NOT NULL,
  `chuyen_mon_id` int(11) NOT NULL,
  `bang_cap_id` int(11) NOT NULL,
  `phong_ban_id` int(11) NOT NULL,
  `chuc_vu_id` int(11) NOT NULL,
  `trang_thai` tinyint(1) NOT NULL,
  `nguoi_tao_id` int(11) NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `nguoi_sua_id` int(11) NOT NULL,
  `ngay_sua` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`id`, `ma_nv`, `hinh_anh`, `ten_nv`, `biet_danh`, `gioi_tinh`, `ngay_sinh`, `noi_sinh`, `hon_nhan_id`, `so_cmnd`, `noi_cap_cmnd`, `ngay_cap_cmnd`, `nguyen_quan`, `quoc_tich_id`, `ton_giao_id`, `dan_toc_id`, `ho_khau`, `tam_tru`, `loai_nv_id`, `trinh_do_id`, `chuyen_mon_id`, `bang_cap_id`, `phong_ban_id`, `chuc_vu_id`, `trang_thai`, `nguoi_tao_id`, `ngay_tao`, `nguoi_sua_id`, `ngay_sua`) VALUES
(2, 'MNV1569830976', '1569907877.jpg', 'Nguyễn Duy Sơn', 'Sơn Núi Đá', 1, '1994-12-19', 'Long Xuyên', 2, '371807766', 'Long Xuyên', '2016-09-30', 'Long Xuyên', 24, 0, 1, 'Long Xuyên', 'Rạch Giá - Kiên Giang', 2, 18, 2, 2, 22, 33, 1, 4, '2023-09-30 15:09:36', 13, '2024-07-16 15:19:44'),
(3, 'MNV1569831824', '1569831824.jpg', 'Nguyễn Thị Mỹ Phương', 'Phương Kini', 0, '1996-09-20', 'Rạch Giá - Kiên Giang', 1, '3718087785', 'Kiên Giang', '2016-09-30', 'Rạch Giá - Kiên Giang', 24, 1, 1, 'Rạch Giá - Kiên Giang', 'Rạch Giá - Kiên Giang', 2, 17, 11, 1, 22, 33, 1, 4, '2023-08-30 15:23:44', 4, '2023-09-02 10:02:32'),
(4, 'MNV1569833913', '1569833913.jpg', 'Nguyễn Phước Thanh', '', 1, '1984-09-12', 'Phú Quốc - Kiên Giang', 3, '567423431', 'Kiên Giang', '2002-04-23', 'Phú Quốc - Kiên Giang', 24, 0, 1, 'Phú Quốc - Kiên Giang', 'Phú Quốc - Kiên Giang', 2, 18, 15, 2, 20, 16, 1, 4, '2023-08-30 15:58:33', 4, '2023-09-03 08:57:41'),
(5, 'MNV1569834099', '1569907854.png', 'Trần Thị Bích Nhi', 'Nhi Kute', 0, '1997-02-12', 'Châu Thành - Kiên Giang', 1, '378623143', 'Kiên Giang', '2004-09-12', 'Châu Thành - Kiên Giang', 24, 1, 1, 'Châu Thành - Kiên Giang', 'Châu Thành - Kiên Giang', 4, 17, 5, 1, 21, 33, 0, 4, '2023-09-30 16:01:39', 14, '2024-07-19 10:51:59'),
(8, 'MNV1569835233', '1569835233.jpg', 'Trần Mai Phương', 'Phương Kòi', 0, '2000-12-09', 'Thốt Nốt - Cần Thơ', 2, '3718087777', 'Cà Mau', '2012-09-30', 'Cà Mau', 24, 0, 1, 'Cà Mau', 'Cà Mau', 3, 17, 5, 1, 20, 38, 1, 4, '2023-09-30 16:20:33', 4, '2023-10-02 10:01:14'),
(10, 'MNV1569905940', '1569907839.jpg', 'Nguyễn Minh Thông', 'Thông bác học', 1, '1980-12-04', 'Phú Quốc - Kiên Giang', 3, '3718087744', 'Phú Quốc -  Kiên Giang', '1997-04-02', 'Phú Quốc - Kiên Giang', 24, 3, 1, 'Phú Quốc - Kiên Giang', 'Phú Quốc - Kiên Giang', 2, 17, 14, 4, 20, 17, 1, 4, '2023-10-01 11:59:00', 4, '2023-10-02 09:59:30'),
(11, 'MNV1569906116', '1721291248.jpg', 'Nguyễn Duy Tính', '', 1, '1992-09-12', 'Rạch Giá - Kiên Giang', 3, '343214564', 'Kiên Giang', '2002-10-20', 'Rạch Giá - Kiên Giang', 24, 0, 18, 'Rạch Giá - Kiên Giang', 'Rạch Giá - Kiên Giang', 3, 18, 7, 11, 23, 37, 1, 4, '2023-10-01 12:01:56', 1, '2024-07-18 15:27:28'),
(12, 'MNV1571124337', '1571124337.jpg', 'Trần Diễm My', '', 0, '1997-10-15', 'Cần Thơ', 1, '3716024774', 'Kiên Giang', '2015-10-15', 'Cần Thơ', 24, 0, 1, 'Cần Thơ', 'Châu Thành - Kiên Giang', 4, 17, 9, 1, 20, 33, 1, 12, '2023-10-15 14:25:37', 12, '2023-10-15 14:27:02'),
(13, 'MNV1571124772', '1571124834.jpg', 'Trần Văn Triệu', 'Triệu Phú', 1, '1990-12-20', 'Cà Mau', 3, '443212354', 'Cà Mau', '2000-12-20', 'Cà Mau', 24, 0, 1, 'Cà Mau', 'Rạch Giá - Kiên Giang', 2, 16, 2, 16, 21, 33, 1, 12, '2023-10-15 14:32:52', 13, '2024-07-16 15:19:55'),
(14, 'MNV1721118920', '1721291211.jpg', 'Bùi Phương Huy', '', 1, '2024-07-16', 'Vĩnh Hòa Hiệp - Châu Thành - Kiên Giang', 1, '12345678910', 'Công An Kiên Giang', '2021-12-21', 'Vĩnh Hòa Hiệp - Châu Thành - Kiên Giang', 24, 0, 1, '8/4 Bà Triệu, phường Vĩnh Lạc, thành phố Rạch Giá, tỉnh Kiên Giang', '8/4 Bà Triệu, phường Vĩnh Lạc, thành phố Rạch Giá, tỉnh Kiên Giang', 2, 17, 3, 1, 24, 33, 1, 13, '2024-07-16 15:35:20', 1, '2024-07-18 15:26:51'),
(15, 'MNV1721199007', '1721291111.jpeg', 'Nguyễn Hoàng Phương Yến', 'YnYn', 0, '1995-12-10', 'Kinh 4 Tân Hiệp Kiên Giang', 1, '0987654321', 'Công An Kiên Giang', '2020-12-12', 'Kinh 4 Tân Hiệp Kiên Giang', 24, 0, 1, 'Kinh 4 Tân Hiệp Kiên Giang', 'Kinh 4 Tân Hiệp Kiên Giang', 2, 17, 7, 11, 23, 33, 1, 14, '2024-07-17 13:50:07', 1, '2024-07-18 15:25:11'),
(16, 'MNV1721208753', '1721208753.jpg', 'Nguyễn Kim Yến Oanh', 'Ber', 0, '2006-05-07', 'Rạch Giá Kiên Giang', 2, '777555666', 'Công An Kiên Giang', '2022-02-02', 'Rạch Giá Kiên Giang', 24, 0, 1, 'Lộ Liên Hương Rạch Giá Kiên Giang', 'Lộ Liên Hương Rạch Giá Kiên Giang', 2, 17, 15, 1, 25, 37, 1, 1, '2024-07-17 16:32:33', 1, '2024-07-17 16:32:33');

-- --------------------------------------------------------

--
-- Table structure for table `nhom`
--

CREATE TABLE `nhom` (
  `id` int(11) NOT NULL,
  `ma_nhom` varchar(50) NOT NULL,
  `ten_nhom` varchar(255) NOT NULL,
  `mo_ta` varchar(255) NOT NULL,
  `nguoi_tao` varchar(255) NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `nguoi_sua` varchar(255) NOT NULL,
  `ngay_sua` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nhom`
--

INSERT INTO `nhom` (`id`, `ma_nhom`, `ten_nhom`, `mo_ta`, `nguoi_tao`, `ngay_tao`, `nguoi_sua`, `ngay_sua`) VALUES
(1, 'GRP1571110024', 'Nhóm thu thập', '<p>Nh&oacute;m chuy&ecirc;n thu thập th&ocirc;ng tin kh&aacute;ch h&agrave;ng</p>\r\n', 'Bùi Phương Huy', '2023-10-15 10:27:23', 'Bùi Phương Huy', '2023-10-15 11:37:09'),
(2, 'GRP1571110114', 'Nhóm quản lý dự án', '<p>Thu thập, quản l&yacute; những dự &aacute;n mới, dự &aacute;n đang thực hiện</p>\r\n', 'Bùi Phương Huy', '2023-10-15 10:28:48', 'Bùi Phương Huy', '2023-10-15 11:30:45'),
(4, 'GRP1571110761', 'Nhóm đang công tác', '', 'Bùi Phương Huy', '2023-10-15 10:39:38', '', '0000-00-00 00:00:00'),
(5, 'GRP1571110790', 'Nhóm tổ chức sự kiện', '', 'Bùi Phương Huy', '2023-10-15 10:40:00', '', '0000-00-00 00:00:00'),
(9, 'GRP1721113516', 'Kỹ Thuật - CNTT', '', 'AccountAdmin', '2024-07-16 14:05:21', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `phong_ban`
--

CREATE TABLE `phong_ban` (
  `id` int(11) NOT NULL,
  `ma_phong_ban` varchar(255) NOT NULL,
  `ten_phong_ban` varchar(255) NOT NULL,
  `ghi_chu` varchar(255) NOT NULL,
  `nguoi_tao` varchar(50) NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `nguoi_sua` varchar(50) DEFAULT NULL,
  `ngay_sua` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `phong_ban`
--

INSERT INTO `phong_ban` (`id`, `ma_phong_ban`, `ten_phong_ban`, `ghi_chu`, `nguoi_tao`, `ngay_tao`, `nguoi_sua`, `ngay_sua`) VALUES
(20, 'MBP1569204111', 'Phòng tổ chức - hành chính', '', 'Bùi Phương Huy', '2023-09-23 09:01:51', 'Bùi Phương Huy', '2023-09-23 09:03:00'),
(21, 'MBP1569204120', 'Phòng kinh doanh', '', 'Bùi Phương Huy', '2023-09-23 09:02:00', 'Bùi Phương Huy', '2023-09-23 09:02:00'),
(22, 'MBP1569204129', 'Phòng tài chính - kế toán', '', 'Bùi Phương Huy', '2023-09-23 09:02:09', 'Bùi Phương Huy', '2023-09-23 09:03:56'),
(23, 'MBP1569204142', 'Văn phòng đại diện', '', 'Bùi Phương Huy', '2023-09-23 09:02:22', 'Bùi Phương Huy', '2023-09-23 09:02:22'),
(24, 'MBP1569204214', 'Phòng kinh tế - kỹ thuật', '', 'Bùi Phương Huy', '2023-09-23 09:03:34', 'Bùi Phương Huy', '2023-09-23 09:03:34'),
(25, 'MBP1569204303', 'Phòng kế hoạch - kinh doanh', '', 'Bùi Phương Huy', '2023-09-23 09:05:03', 'Bùi Phương Huy', '2023-09-23 09:05:03'),
(29, 'MBP1721377080', 'Công Nghệ Thông Tin', '', 'BùiPhương Huy', '2024-07-19 15:18:00', 'BùiPhương Huy', '2024-07-19 15:18:00');

-- --------------------------------------------------------

--
-- Table structure for table `quoc_tich`
--

CREATE TABLE `quoc_tich` (
  `id` int(11) NOT NULL,
  `ten_quoc_tich` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `quoc_tich`
--

INSERT INTO `quoc_tich` (`id`, `ten_quoc_tich`) VALUES
(1, 'Danish'),
(2, 'Đan Mạch'),
(3, 'British / English'),
(4, 'Anh'),
(5, 'Estonian'),
(6, 'Estonia'),
(7, 'Finnish'),
(8, 'Phần Lan'),
(9, 'Icelandic'),
(10, 'Irish'),
(11, 'Ireland'),
(12, 'Latvian'),
(13, 'Latvia'),
(14, 'Lithuanian'),
(15, 'Norwegian'),
(16, 'Na Uy'),
(17, 'Canada'),
(18, 'Scotland'),
(19, 'Thụy Điển'),
(20, 'Tây Ban Nha'),
(21, 'Séc'),
(22, 'Ba Lan'),
(23, 'Mỹ'),
(24, 'Việt Nam'),
(25, 'Ấn Độ'),
(26, 'Trung Quốc'),
(27, 'Mông Cổ'),
(28, 'Triều Tiên'),
(29, 'Đài Loan'),
(30, 'Campuchia'),
(31, 'Indonesia'),
(32, 'Lào'),
(33, 'Philipin'),
(34, 'Thái Lan');

-- --------------------------------------------------------

--
-- Table structure for table `tai_khoan`
--

CREATE TABLE `tai_khoan` (
  `id` int(11) NOT NULL,
  `ho` varchar(50) NOT NULL,
  `ten` varchar(50) NOT NULL,
  `hinh_anh` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mat_khau` varchar(50) NOT NULL,
  `so_dt` varchar(50) NOT NULL,
  `quyen` tinyint(1) NOT NULL,
  `trang_thai` tinyint(1) NOT NULL,
  `truy_cap` int(11) NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `ngay_sua` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tai_khoan`
--

INSERT INTO `tai_khoan` (`id`, `ho`, `ten`, `hinh_anh`, `email`, `mat_khau`, `so_dt`, `quyen`, `trang_thai`, `truy_cap`, `ngay_tao`, `ngay_sua`) VALUES
(1, 'Account', 'Admin', 'admin.png', 'admin@gmail.com', '25d55ad283aa400af464c76d713c07ad', '0123456789', 1, 1, 59, '2023-09-12 00:00:00', '2024-07-18 15:18:26'),
(13, 'Nguyễn', 'Oanh', '1721115225.jpg', 'nkyoanh2006@gmail.com', '1e4df604718e299a45a9d786fcaafe7f', '0826688845', 1, 1, 2, '2024-07-16 14:33:45', '2024-07-16 14:33:45'),
(14, 'Bùi', 'Phương Huy', '1721120154.jpg', 'phuonghuybui2002@gmail.com', '1e4df604718e299a45a9d786fcaafe7f', '0854894960', 1, 1, 9, '2024-07-16 15:55:54', '2024-07-16 15:56:33');

-- --------------------------------------------------------

--
-- Table structure for table `tinh_trang_hon_nhan`
--

CREATE TABLE `tinh_trang_hon_nhan` (
  `id` int(11) NOT NULL,
  `ten_tinh_trang` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tinh_trang_hon_nhan`
--

INSERT INTO `tinh_trang_hon_nhan` (`id`, `ten_tinh_trang`) VALUES
(1, 'Độc thân'),
(2, 'Đính hôn'),
(3, 'Có gia đình'),
(4, 'Ly thân'),
(5, 'Ly hôn');

-- --------------------------------------------------------

--
-- Table structure for table `ton_giao`
--

CREATE TABLE `ton_giao` (
  `id` int(11) NOT NULL,
  `ten_ton_giao` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ton_giao`
--

INSERT INTO `ton_giao` (`id`, `ten_ton_giao`) VALUES
(0, 'Không'),
(1, 'Phật giáo'),
(2, 'Thiên chúa giáo'),
(3, 'Đạo tin lành'),
(4, 'Hồi giáo'),
(5, 'Do Thái giáo');

-- --------------------------------------------------------

--
-- Table structure for table `trinh_do`
--

CREATE TABLE `trinh_do` (
  `id` int(11) NOT NULL,
  `ma_trinh_do` varchar(50) NOT NULL,
  `ten_trinh_do` varchar(255) NOT NULL,
  `ghi_chu` varchar(255) NOT NULL,
  `nguoi_tao` varchar(50) NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `nguoi_sua` varchar(50) NOT NULL,
  `ngay_sua` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `trinh_do`
--

INSERT INTO `trinh_do` (`id`, `ma_trinh_do`, `ten_trinh_do`, `ghi_chu`, `nguoi_tao`, `ngay_tao`, `nguoi_sua`, `ngay_sua`) VALUES
(1, 'MTD1569206480', '1/12', '<p>Tr&igrave;nh độ lớp 1/12</p>\r\n', 'Bùi Phương Huy', '2023-09-23 09:41:20', 'Bùi Phương Huy', '2023-09-23 09:41:20'),
(2, 'MTD1569206546', '2/12', '<p>Tr&igrave;nh độ lớp 2/12</p>\r\n', 'Bùi Phương Huy', '2023-09-23 09:42:26', 'Bùi Phương Huy', '2023-09-23 09:42:26'),
(3, 'MTD1569206555', '3/12', '<p>Tr&igrave;nh độ lớp 3/12</p>\r\n', 'Bùi Phương Huy', '2023-09-23 09:42:35', 'Bùi Phương Huy', '2023-09-23 09:42:35'),
(4, 'MTD1569206570', '4/12', '<p>Tr&igrave;nh độ lớp 4/12</p>\r\n', 'Bùi Phương Huy', '2023-09-23 09:42:50', 'Bùi Phương Huy', '2023-09-23 09:42:50'),
(5, 'MTD1569206579', '5/12', '<p>Tr&igrave;nh độ lớp 5/12</p>\r\n', 'Bùi Phương Huy', '2023-09-23 09:42:59', 'Bùi Phương Huy', '2023-09-23 09:42:59'),
(6, 'MTD1569206590', '6/12', '<p>Tr&igrave;nh độ lớp 6/12</p>\r\n', 'Bùi Phương Huy', '2023-09-23 09:43:10', 'Bùi Phương Huy', '2023-09-23 09:43:10'),
(7, 'MTD1569206604', '7/12', '<p>Tr&igrave;nh độ lớp 7/12</p>\r\n', 'Bùi Phương Huy', '2023-09-23 09:43:24', 'Bùi Phương Huy', '2023-09-23 09:57:09'),
(8, 'MTD1569206616', '8/12', '<p>Tr&igrave;nh độ lớp 8/12</p>\r\n', 'Bùi Phương Huy', '2023-09-23 09:43:36', 'Bùi Phương Huy', '2023-09-23 09:43:36'),
(9, 'MTD1569206628', '9/12', '<p>Tr&igrave;nh độ lớp 9/12</p>\r\n', 'Bùi Phương Huy', '2023-09-23 09:43:48', 'Bùi Phương Huy', '2023-09-23 09:43:48'),
(10, 'MTD1569206638', '10/12', '<p>Tr&igrave;nh độ lớp 10/12</p>\r\n', 'Bùi Phương Huy', '2023-09-23 09:43:58', 'Bùi Phương Huy', '2023-09-23 09:43:58'),
(11, 'MTD1569206649', '11/12', '<p>Tr&igrave;nh độ lớp 11/12</p>\r\n', 'Bùi Phương Huy', '2023-09-23 09:44:09', 'Bùi Phương Huy', '2023-09-23 09:56:56'),
(12, 'MTD1569206662', '12/12', '<p>Tr&igrave;nh độ lớp 12/12</p>\r\n', 'Bùi Phương Huy', '2023-09-23 09:44:22', 'Bùi Phương Huy', '2023-09-23 10:51:16'),
(15, 'MTD1569651298', 'Trung cấp', '', 'Bùi Phương Huy', '2023-09-28 13:14:58', 'Bùi Phương Huy', '2023-09-28 13:14:58'),
(16, 'MTD1569651304', 'Cao đẳng', '', 'Bùi Phương Huy', '2023-09-28 13:15:04', 'Bùi Phương Huy', '2023-09-28 13:15:04'),
(17, 'MTD1569651310', 'Đại học', '', 'Bùi Phương Huy', '2023-09-28 13:15:10', 'Bùi Phương Huy', '2023-09-28 13:15:10'),
(18, 'MTD1569651317', 'Cao học', '', 'Bùi Phương Huy', '2023-09-28 13:15:17', 'Bùi Phương Huy', '2023-09-28 13:15:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bang_cap`
--
ALTER TABLE `bang_cap`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chinh_luong`
--
ALTER TABLE `chinh_luong`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nhanvien_id` (`nhanvien_id`);

--
-- Indexes for table `chi_tiet_nhom`
--
ALTER TABLE `chi_tiet_nhom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chuc_vu`
--
ALTER TABLE `chuc_vu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chuyen_mon`
--
ALTER TABLE `chuyen_mon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cong_tac`
--
ALTER TABLE `cong_tac`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nhanvien_id` (`nhanvien_id`);

--
-- Indexes for table `dan_toc`
--
ALTER TABLE `dan_toc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `khen_thuong_ky_luat`
--
ALTER TABLE `khen_thuong_ky_luat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loai_kt_id` (`loai_kt_id`),
  ADD KEY `nhanvien_id` (`nhanvien_id`);

--
-- Indexes for table `loai_khen_thuong_ky_luat`
--
ALTER TABLE `loai_khen_thuong_ky_luat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loai_nv`
--
ALTER TABLE `loai_nv`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `luong`
--
ALTER TABLE `luong`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nhanvien_id` (`nhanvien_id`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quoc_tich_id` (`quoc_tich_id`),
  ADD KEY `ton_giao_id` (`ton_giao_id`),
  ADD KEY `dan_toc_id` (`dan_toc_id`),
  ADD KEY `loai_nv_id` (`loai_nv_id`),
  ADD KEY `chuyen_mon_id` (`chuyen_mon_id`),
  ADD KEY `trinh_do_id` (`trinh_do_id`),
  ADD KEY `bang_cap_id` (`bang_cap_id`),
  ADD KEY `phong_ban_id` (`phong_ban_id`),
  ADD KEY `chuc_vu_id` (`chuc_vu_id`),
  ADD KEY `nguoi_tao_id` (`nguoi_tao_id`),
  ADD KEY `nguoi_sua_id` (`nguoi_sua_id`);

--
-- Indexes for table `nhom`
--
ALTER TABLE `nhom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phong_ban`
--
ALTER TABLE `phong_ban`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quoc_tich`
--
ALTER TABLE `quoc_tich`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tai_khoan`
--
ALTER TABLE `tai_khoan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tinh_trang_hon_nhan`
--
ALTER TABLE `tinh_trang_hon_nhan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ton_giao`
--
ALTER TABLE `ton_giao`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trinh_do`
--
ALTER TABLE `trinh_do`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bang_cap`
--
ALTER TABLE `bang_cap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `chinh_luong`
--
ALTER TABLE `chinh_luong`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chi_tiet_nhom`
--
ALTER TABLE `chi_tiet_nhom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `chuc_vu`
--
ALTER TABLE `chuc_vu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `chuyen_mon`
--
ALTER TABLE `chuyen_mon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `cong_tac`
--
ALTER TABLE `cong_tac`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `dan_toc`
--
ALTER TABLE `dan_toc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `khen_thuong_ky_luat`
--
ALTER TABLE `khen_thuong_ky_luat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `loai_khen_thuong_ky_luat`
--
ALTER TABLE `loai_khen_thuong_ky_luat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `loai_nv`
--
ALTER TABLE `loai_nv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `luong`
--
ALTER TABLE `luong`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `nhom`
--
ALTER TABLE `nhom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `phong_ban`
--
ALTER TABLE `phong_ban`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `quoc_tich`
--
ALTER TABLE `quoc_tich`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tai_khoan`
--
ALTER TABLE `tai_khoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tinh_trang_hon_nhan`
--
ALTER TABLE `tinh_trang_hon_nhan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ton_giao`
--
ALTER TABLE `ton_giao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `trinh_do`
--
ALTER TABLE `trinh_do`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chinh_luong`
--
ALTER TABLE `chinh_luong`
  ADD CONSTRAINT `chinh_luong_ibfk_1` FOREIGN KEY (`nhanvien_id`) REFERENCES `nhanvien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cong_tac`
--
ALTER TABLE `cong_tac`
  ADD CONSTRAINT `cong_tac_ibfk_1` FOREIGN KEY (`nhanvien_id`) REFERENCES `nhanvien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `khen_thuong_ky_luat`
--
ALTER TABLE `khen_thuong_ky_luat`
  ADD CONSTRAINT `khen_thuong_ky_luat_ibfk_1` FOREIGN KEY (`nhanvien_id`) REFERENCES `nhanvien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `khen_thuong_ky_luat_ibfk_2` FOREIGN KEY (`loai_kt_id`) REFERENCES `loai_khen_thuong_ky_luat` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `luong`
--
ALTER TABLE `luong`
  ADD CONSTRAINT `luong_ibfk_1` FOREIGN KEY (`nhanvien_id`) REFERENCES `nhanvien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD CONSTRAINT `nhanvien_ibfk_1` FOREIGN KEY (`quoc_tich_id`) REFERENCES `quoc_tich` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `nhanvien_ibfk_2` FOREIGN KEY (`ton_giao_id`) REFERENCES `ton_giao` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `nhanvien_ibfk_3` FOREIGN KEY (`dan_toc_id`) REFERENCES `dan_toc` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `nhanvien_ibfk_4` FOREIGN KEY (`loai_nv_id`) REFERENCES `loai_nv` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `nhanvien_ibfk_5` FOREIGN KEY (`trinh_do_id`) REFERENCES `trinh_do` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `nhanvien_ibfk_6` FOREIGN KEY (`chuyen_mon_id`) REFERENCES `chuyen_mon` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `nhanvien_ibfk_7` FOREIGN KEY (`bang_cap_id`) REFERENCES `bang_cap` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `nhanvien_ibfk_8` FOREIGN KEY (`phong_ban_id`) REFERENCES `phong_ban` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `nhanvien_ibfk_9` FOREIGN KEY (`chuc_vu_id`) REFERENCES `chuc_vu` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
