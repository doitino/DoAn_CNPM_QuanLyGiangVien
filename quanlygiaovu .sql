-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2021 at 01:31 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quanlygiaovu`
--

-- --------------------------------------------------------

--
-- Table structure for table `giang_day`
--

CREATE TABLE `giang_day` (
  `ma_mh` int(11) NOT NULL,
  `ma_gv` int(11) NOT NULL,
  `tg_bd` varchar(255) DEFAULT NULL,
  `tg_kt` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `giang_day`
--

INSERT INTO `giang_day` (`ma_mh`, `ma_gv`, `tg_bd`, `tg_kt`) VALUES
(12, 2, '7h', '9h');

-- --------------------------------------------------------

--
-- Table structure for table `giang_vien`
--

CREATE TABLE `giang_vien` (
  `ma_gv` int(11) NOT NULL,
  `ten_gv` varchar(255) DEFAULT NULL,
  `ngay_sinh` varchar(255) DEFAULT NULL,
  `gioi_tinh` char(20) DEFAULT NULL,
  `ma_khoa` int(11) DEFAULT NULL,
  `hoc_vi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `giang_vien`
--

INSERT INTO `giang_vien` (`ma_gv`, `ten_gv`, `ngay_sinh`, `gioi_tinh`, `ma_khoa`, `hoc_vi`) VALUES
(1, 'Trần Văn Ba', '12-12-1987', 'Nam', 1811, 'Tiến sĩ'),
(2, 'Lê Quốc Thành', '10-111-1990', 'Nam', 1711, 'Thạc sĩ'),
(3, 'Nguyễn Thị An', '09-07-1981', 'Nữ', 1611, 'Thạc sĩ'),
(4, 'Nguyễn Văn A', '12-12-1987', 'Nam', 1811, 'Tiến sĩ'),
(5, 'Nguyễn Thị B', '10-111-1990', 'Nam', 1711, 'Thạc sĩ'),
(6, 'Nguyễn Thị Quỳnh', '09-07-1981', 'Nữ', 1611, 'Thạc sĩ'),
(12, 'aa', 'aa', 'aaaaaaa', 12, 'vvvv'),
(111, 'ten', 'ngaysinh', 'gioitinh', 111, 'hocvi'),
(4444, 'ccccccccccc', '2021-06-15', 'Nam', 4444, 'Thạc sĩ');

-- --------------------------------------------------------

--
-- Table structure for table `khoa`
--

CREATE TABLE `khoa` (
  `ma_khoa` int(11) NOT NULL,
  `ten_khoa` varchar(255) DEFAULT NULL,
  `nam_tl` int(11) DEFAULT NULL,
  `truong_khoa` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `khoa`
--

INSERT INTO `khoa` (`ma_khoa`, `ten_khoa`, `nam_tl`, `truong_khoa`) VALUES
(112, 'Công Nghệ Thông Tin', 1996, 'Nguyễn Văn A'),
(113, 'Công Nghệ Hóa Học', 1990, 'Nguyễn Thị B'),
(114, 'Chế Biến Nông Sản', 1887, 'Trần Văn Ba');

-- --------------------------------------------------------

--
-- Table structure for table `mon_hoc`
--

CREATE TABLE `mon_hoc` (
  `ma_mh` int(11) NOT NULL,
  `ten_mh` varchar(100) DEFAULT NULL,
  `so_tin_chi_lt` int(11) DEFAULT NULL,
  `so_tin_chi_th` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mon_hoc`
--

INSERT INTO `mon_hoc` (`ma_mh`, `ten_mh`, `so_tin_chi_lt`, `so_tin_chi_th`) VALUES
(11, 'Công Nghệ', 2, 1),
(12, 'Khoa học', 3, 1),
(13, 'Thiết  Kế', 1, 1),
(14, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `ten_tai_khoan` varchar(255) DEFAULT NULL,
  `mat_khau` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ten_tai_khoan`, `mat_khau`) VALUES
(1, 'tino', '1011'),
(2, 'doi', '1011');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `giang_vien`
--
ALTER TABLE `giang_vien`
  ADD PRIMARY KEY (`ma_gv`);

--
-- Indexes for table `khoa`
--
ALTER TABLE `khoa`
  ADD PRIMARY KEY (`ma_khoa`);

--
-- Indexes for table `mon_hoc`
--
ALTER TABLE `mon_hoc`
  ADD PRIMARY KEY (`ma_mh`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `giang_vien`
--
ALTER TABLE `giang_vien`
  MODIFY `ma_gv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4445;

--
-- AUTO_INCREMENT for table `khoa`
--
ALTER TABLE `khoa`
  MODIFY `ma_khoa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `mon_hoc`
--
ALTER TABLE `mon_hoc`
  MODIFY `ma_mh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
