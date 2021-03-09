-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2020 at 11:07 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos_lounge`
--

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `kd_menu` int(255) NOT NULL,
  `nama` varchar(500) NOT NULL,
  `keterangan` text NOT NULL,
  `harga` int(255) NOT NULL,
  `pic` varchar(500) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`kd_menu`, `nama`, `keterangan`, `harga`, `pic`, `status`) VALUES
(1, 'kupat tahu', 'Makanan tradisional yang kita semua suka pastinya.', 8000, 'asset/menu-pic/Kupat_Tahu16161616-1212-2020.jpg', 1),
(2, 'Bakso', 'Bakso Khas Malang', 10000, 'asset/menu-pic/Bakso20202020-1111-1919.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id` int(255) NOT NULL,
  `checked` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `no` int(11) NOT NULL,
  `tgl_masukan` date NOT NULL,
  `keuntungan` int(255) NOT NULL,
  `modal` int(255) NOT NULL,
  `no_pesanan` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`no`, `tgl_masukan`, `keuntungan`, `modal`, `no_pesanan`) VALUES
(2, '2020-11-26', 2000, 6000, 'UKJjWHYtrlzCXpkRTwLIGFhde');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` int(255) NOT NULL,
  `nama` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `nama`) VALUES
(0, 'TIDAK AKTIF'),
(1, 'AKTIF');

-- --------------------------------------------------------

--
-- Table structure for table `tpesanan`
--

CREATE TABLE `tpesanan` (
  `id` int(255) NOT NULL,
  `no_pesanan` varchar(500) NOT NULL,
  `id_user` int(255) NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `tgl_ambil` datetime NOT NULL,
  `status_pembayaran` int(255) NOT NULL,
  `status_pesanan` int(255) NOT NULL,
  `metode_pengambilan` varchar(500) NOT NULL,
  `qty` int(255) NOT NULL,
  `harga_total` int(255) NOT NULL,
  `kd_menu` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tpesanan`
--

INSERT INTO `tpesanan` (`id`, `no_pesanan`, `id_user`, `tgl_pesan`, `tgl_ambil`, `status_pembayaran`, `status_pesanan`, `metode_pengambilan`, `qty`, `harga_total`, `kd_menu`) VALUES
(6, 'UKJjWHYtrlzCXpkRTwLIGFhde', 3, '2020-10-26 10:28:01', '2020-11-26 00:00:00', 1, 1, '1', 1, 8000, 1),
(7, 'GpIOaZKjSAksbirfXcgqlmMTR', 3, '2020-10-26 14:17:48', '2020-11-26 00:00:00', 0, 0, '1', 1, 10000, 2),
(8, 'NBrupQIWfayKRMAhFEDSzOLUJ', 3, '2020-11-14 17:15:18', '2020-12-14 00:00:00', 0, 0, '0', 1, 10000, 2),
(9, 'oZuCrMfbAinIFzSdTPWgKkHBG', 3, '2020-11-14 17:42:51', '2020-12-14 00:00:00', 0, 0, '0', 1, 10000, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `no` int(255) NOT NULL,
  `id_user` int(255) NOT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  `level` varchar(500) NOT NULL,
  `profile` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`no`, `id_user`, `email`, `password`, `level`, `profile`) VALUES
(1, 1, 'a.kilua_1@yahoo.co.id', '827ccb0eea8a706c4c34a16891f84e7b', 'admin', ''),
(3, 2, 'tjokroaprilianti@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', ''),
(4, 3, 'meja-1@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', ''),
(5, 4, 'meja-2@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', ''),
(6, 5, 'meja-3@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', ''),
(7, 6, 'meja-4@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', ''),
(8, 7, 'meja-5@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', ''),
(9, 8, 'meja-6@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', ''),
(10, 9, 'meja-7@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', ''),
(11, 10, 'meja-8@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', ''),
(12, 11, 'meja-9@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', ''),
(13, 12, 'meja-10@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', ''),
(14, 13, 'meja-11@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', ''),
(15, 14, 'meja-12@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', ''),
(16, 15, 'meja-13@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', ''),
(17, 16, 'meja-14@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', ''),
(18, 17, 'meja-15@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', ''),
(19, 18, 'meja-16@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', ''),
(20, 19, 'meja-17@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', ''),
(21, 20, 'meja-18@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', ''),
(22, 21, 'meja-19@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', ''),
(23, 22, 'meja-20@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', ''),
(24, 23, 'meja-21@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', ''),
(25, 24, 'meja-22@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', ''),
(26, 25, 'meja-23@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', ''),
(27, 26, 'meja-24@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', ''),
(28, 27, 'meja-25@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', ''),
(29, 28, 'meja-26@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', ''),
(30, 29, 'meja-27@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', ''),
(31, 30, 'meja-28@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', ''),
(32, 31, 'meja-29@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', ''),
(33, 32, 'meja-30@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', ''),
(34, 33, 'meja-31@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', ''),
(35, 34, 'meja-32@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', ''),
(36, 35, 'meja-33@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', ''),
(37, 36, 'meja-34@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', ''),
(38, 37, 'meja-35@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', ''),
(39, 38, 'meja-36@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', ''),
(40, 39, 'meja-37@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', ''),
(41, 40, 'meja-38@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', ''),
(42, 41, 'meja-39@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', ''),
(43, 42, 'meja-40@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', ''),
(44, 43, 'meja-41@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', ''),
(45, 44, 'meja-42@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', ''),
(46, 45, 'meja-43@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', ''),
(47, 46, 'meja-44@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', ''),
(48, 47, 'meja-45@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', ''),
(49, 48, 'meja-46@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', ''),
(50, 49, 'meja-47@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', ''),
(51, 50, 'meja-48@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', ''),
(52, 51, 'meja-49@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', ''),
(53, 52, 'meja-50@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', ''),
(54, 53, 'meja-51@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', ''),
(55, 54, 'meja-52@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', ''),
(56, 55, 'meja-53@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', ''),
(57, 56, 'meja-54@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', ''),
(58, 57, 'meja-55@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', ''),
(59, 58, 'meja-56@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', ''),
(60, 59, 'meja-57@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', ''),
(61, 60, 'meja-58@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', ''),
(62, 61, 'meja-59@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', ''),
(63, 62, 'meja-60@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', ''),
(64, 63, 'meja-61@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', ''),
(65, 64, 'meja-62@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', ''),
(66, 65, 'meja-63@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', ''),
(67, 66, 'meja-64@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', ''),
(68, 67, 'meja-65@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', ''),
(69, 68, 'meja-66@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_data`
--

CREATE TABLE `user_data` (
  `id` int(255) NOT NULL,
  `id_user` int(255) NOT NULL,
  `nama` varchar(500) NOT NULL,
  `alamat` text NOT NULL,
  `kd_pos` varchar(500) NOT NULL,
  `no_telp` int(15) NOT NULL,
  `profile` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_data`
--

INSERT INTO `user_data` (`id`, `id_user`, `nama`, `alamat`, `kd_pos`, `no_telp`, `profile`) VALUES
(1, 1, '', '', '', 0, ''),
(2, 2, 'lali', 'jl', '15147', 2147483647, 'asset/profile-pic/2.JPG'),
(3, 3, 'meja no.1', 'jl', '123', 0, 'asset/profile-pic/2.JPG'),
(4, 4, 'meja no.2', 'jl', '123', 2147483647, 'asset/img/profile.png'),
(5, 5, 'meja no.3', 'jl', '123', 2147483647, 'asset/img/profile.png'),
(6, 6, 'meja no.4', 'jl', '123', 2147483647, 'asset/img/profile.png'),
(7, 7, 'meja no.5', 'jl', '123', 2147483647, 'asset/img/profile.png'),
(8, 8, 'meja no.6', 'jl', '123', 2147483647, 'asset/img/profile.png'),
(9, 9, 'meja no.7', 'jl', '123', 2147483647, 'asset/img/profile.png'),
(10, 10, 'meja no.8', 'jl', '123', 2147483647, 'asset/img/profile.png'),
(11, 11, 'meja no.9', 'jl', '123', 2147483647, 'asset/img/profile.png'),
(12, 12, 'meja no.10', 'jl', '123', 2147483647, 'asset/img/profile.png'),
(13, 13, 'meja no.11', 'jl', '123', 2147483647, 'asset/img/profile.png'),
(14, 14, 'meja no.12', 'jl', '123', 2147483647, 'asset/img/profile.png'),
(15, 15, 'meja no.13', 'jl', '123', 2147483647, 'asset/img/profile.png'),
(16, 16, 'meja no.14', 'jl', '123', 2147483647, 'asset/img/profile.png'),
(17, 17, 'meja no.15', 'jl', '123', 2147483647, 'asset/img/profile.png'),
(18, 18, 'meja no.16', 'jl', '123', 2147483647, 'asset/img/profile.png'),
(19, 19, 'meja no.17', 'jl', '123', 2147483647, 'asset/img/profile.png'),
(20, 20, 'meja no.18', 'jl', '123', 2147483647, 'asset/img/profile.png'),
(21, 21, 'meja no.19', 'jl', '123', 2147483647, 'asset/img/profile.png'),
(22, 22, 'meja no.20', 'jl', '123', 2147483647, 'asset/img/profile.png'),
(23, 23, 'meja no.21', 'jl', '123', 2147483647, 'asset/img/profile.png'),
(24, 24, 'meja no.22', 'jl', '123', 2147483647, 'asset/img/profile.png'),
(25, 25, 'meja no.23', 'jl', '123', 2147483647, 'asset/img/profile.png'),
(26, 26, 'meja no.24', 'jl', '123', 2147483647, 'asset/img/profile.png'),
(27, 27, 'meja no.25', 'jl', '123', 2147483647, 'asset/img/profile.png'),
(28, 28, 'meja no.26', 'jl', '123', 2147483647, 'asset/img/profile.png'),
(29, 29, 'meja no.27', 'jl', '123', 2147483647, 'asset/img/profile.png'),
(30, 30, 'meja no.28', 'jl', '123', 2147483647, 'asset/img/profile.png'),
(31, 31, 'meja no.29', 'jl', '123', 2147483647, 'asset/img/profile.png'),
(32, 32, 'meja no.30', 'jl', '123', 2147483647, 'asset/img/profile.png'),
(33, 33, 'meja no.31', 'jl', '123', 2147483647, 'asset/img/profile.png'),
(34, 34, 'meja no.32', 'jl', '123', 2147483647, 'asset/img/profile.png'),
(35, 35, 'meja no.33', 'jl', '123', 2147483647, 'asset/img/profile.png'),
(36, 36, 'meja no.34', 'jl', '123', 2147483647, 'asset/img/profile.png'),
(37, 37, 'meja no.35', 'jl', '123', 2147483647, 'asset/img/profile.png'),
(38, 38, 'meja no.36', 'jl', '123', 2147483647, 'asset/img/profile.png'),
(39, 39, 'meja no.37', 'jl', '123', 2147483647, 'asset/img/profile.png'),
(40, 40, 'meja no.38', 'jl', '123', 2147483647, 'asset/img/profile.png'),
(41, 41, 'meja no.39', 'jl', '123', 2147483647, 'asset/img/profile.png'),
(42, 42, 'meja no.40', 'jl', '123', 2147483647, 'asset/img/profile.png'),
(43, 43, 'meja no.41', 'jl', '123', 2147483647, 'asset/img/profile.png'),
(44, 44, 'meja no.42', 'jl', '123', 2147483647, 'asset/img/profile.png'),
(45, 45, 'meja no.43', 'jl', '123', 2147483647, 'asset/img/profile.png'),
(46, 46, 'meja no.44', 'jl', '123', 2147483647, 'asset/img/profile.png'),
(47, 47, 'meja no.45', 'jl', '123', 2147483647, 'asset/img/profile.png'),
(48, 48, 'meja no.46', 'jl', '123', 2147483647, 'asset/img/profile.png'),
(49, 49, 'meja no.47', 'jl', '123', 2147483647, 'asset/img/profile.png'),
(50, 50, 'meja no.48', 'jl', '123', 2147483647, 'asset/img/profile.png'),
(51, 51, 'meja no.49', 'jl', '123', 2147483647, 'asset/img/profile.png'),
(52, 52, 'meja no.50', 'jl', '123', 2147483647, 'asset/img/profile.png'),
(53, 53, 'meja no.51', 'jl', '123', 2147483647, 'asset/img/profile.png'),
(54, 54, 'meja no.52', 'jl', '123', 2147483647, 'asset/img/profile.png'),
(55, 55, 'meja no.53', 'jl', '123', 2147483647, 'asset/img/profile.png'),
(56, 56, 'meja no.54', 'jl', '123', 2147483647, 'asset/img/profile.png'),
(57, 57, 'meja no.55', 'jl', '123', 2147483647, 'asset/img/profile.png'),
(58, 58, 'meja no.56', 'jl', '123', 2147483647, 'asset/img/profile.png'),
(59, 59, 'meja no.57', 'jl', '123', 2147483647, 'asset/img/profile.png'),
(60, 60, 'meja no.58', 'jl', '123', 2147483647, 'asset/img/profile.png'),
(61, 61, 'meja no.59', 'jl', '123', 2147483647, 'asset/img/profile.png'),
(62, 62, 'meja no.60', 'jl', '123', 2147483647, 'asset/img/profile.png'),
(63, 63, 'meja no.61', 'jl', '123', 2147483647, 'asset/img/profile.png'),
(64, 64, 'meja no.62', 'jl', '123', 2147483647, 'asset/img/profile.png'),
(65, 65, 'meja no.63', 'jl', '123', 2147483647, 'asset/img/profile.png'),
(66, 66, 'meja no.64', 'jl', '123', 2147483647, 'asset/img/profile.png'),
(67, 67, 'meja no.65', 'jl', '123', 2147483647, 'asset/img/profile.png'),
(68, 68, 'meja no.66', 'jl', '123', 2147483647, 'asset/img/profile.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`kd_menu`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tpesanan`
--
ALTER TABLE `tpesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `user_data`
--
ALTER TABLE `user_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `kd_menu` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tpesanan`
--
ALTER TABLE `tpesanan`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `no` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT for table `user_data`
--
ALTER TABLE `user_data`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
