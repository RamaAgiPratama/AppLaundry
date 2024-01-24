-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2021 at 02:33 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ujikom_laundry`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `id_detail` int(11) NOT NULL,
  `transaksi_id` int(11) DEFAULT NULL,
  `paket_id` int(11) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `total_harga` double DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `total_bayar` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_transaksi`
--

INSERT INTO `detail_transaksi` (`id_detail`, `transaksi_id`, `paket_id`, `qty`, `total_harga`, `keterangan`, `total_bayar`) VALUES
(3, 40, 9, 5, 105000, NULL, 110000),
(5, 42, 6, 1, 6000, NULL, 10000),
(6, 43, 4, 1, 7000, NULL, 10000),
(8, 45, 20, 1, 8000, NULL, 10000),
(9, 46, 4, 0, 0, NULL, 0),
(11, 48, 24, 1, 20000, NULL, 50000),
(12, 49, 26, 1, 25000, NULL, 25000),
(13, 50, 14, 1, 10000, NULL, 12000),
(14, 51, 27, 1, 10000, NULL, 20000),
(15, 52, 18, 2, 30000, NULL, 40000),
(16, 53, 20, 1, 8000, NULL, 10000),
(17, 54, 26, 2, 50000, NULL, 100000),
(18, 55, 25, 1, 12500, NULL, 20000),
(19, 56, 16, 5, 75000, NULL, 100000),
(20, 57, 24, 1, 20000, NULL, 30000),
(22, 59, 15, 1, 15000, NULL, 20000),
(23, 60, 25, 1, 12500, NULL, 15000),
(24, 61, 25, 1, 12500, NULL, 15000),
(25, 62, 4, 1, 7000, NULL, 10000),
(26, 63, 17, 1, 20000, NULL, 50000);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id_member` int(11) NOT NULL,
  `nama_member` varchar(100) DEFAULT NULL,
  `alamat_member` text DEFAULT NULL,
  `jenis_kelamin` enum('L','P') DEFAULT NULL,
  `telp_member` varchar(15) DEFAULT NULL,
  `no_ktp` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id_member`, `nama_member`, `alamat_member`, `jenis_kelamin`, `telp_member`, `no_ktp`) VALUES
(5, 'Pelanggan Pertama', 'Padang', 'L', '00000000001', '00000000001'),
(6, 'Pelanggan Kedua', 'Padang', 'L', '00000000002', '00000000002'),
(7, 'Pelanggan Ketiga', 'Padang', 'L', '00000000003', '00000000003'),
(8, 'Edo', 'randegan', 'L', '089765452342', '12345678'),
(9, 'ramdan', 'banjarkolot', 'L', '08798765456', '1234567'),
(12, 'sadam', 'cikabu', 'L', '932780974042', '64645545434'),
(14, 'Entis', 'randegan', 'L', '9383773893939', '89785656878'),
(16, 'endy', 'amerika', 'L', '0987897678', '181910109'),
(17, 'elin', 'cibaduyut', 'P', '085767545', '098908765'),
(18, 'yogi', 'randegan', 'L', '65433636', '7568766798'),
(19, 'eri', 'citanduy', 'L', '0989876798', '1635372'),
(20, 'eri', 'citanduy', 'L', '089786756', '647454'),
(21, 'ujang', 'lebak', 'L', '0987556754', '93028958275982'),
(22, 'yuyun', 'ciamis', 'P', '09876544678', '9089862e78236'),
(23, 'eto', 'ciroas', 'L', '098789678', '009897986'),
(24, 'Eri', 'los angels', 'L', '09897678', '933829283838'),
(25, 'frank', 'cihampelas', 'L', '0909787876876', '8796785'),
(26, 'ero', 'sumedang', 'L', '08979868978', '908090899'),
(27, 'tito', 'cipinang', 'L', '098787776', '09383822'),
(29, 'pribadi', 'ciamis', 'L', '087554654', '74363525'),
(30, 'pribadi', 'cihampelas', 'L', '097657654', '0847433'),
(31, 'tata', 'cihaleang', 'L', '0986546775', '89786876'),
(32, 'ukon', 'tansu', 'L', '09867657', '213124124'),
(34, 'sadam', 'cikabu', 'L', '09875674654565', '21252353');

-- --------------------------------------------------------

--
-- Table structure for table `outlet`
--

CREATE TABLE `outlet` (
  `id_outlet` int(11) NOT NULL,
  `nama_outlet` varchar(100) DEFAULT NULL,
  `alamat_outlet` text DEFAULT NULL,
  `telp_outlet` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `outlet`
--

INSERT INTO `outlet` (`id_outlet`, `nama_outlet`, `alamat_outlet`, `telp_outlet`) VALUES
(26, 'Outlet Kuning', 'Padang', '00000000002'),
(28, 'Outlet Merah', 'Padang', '00000000001'),
(29, 'Outlet Hijau', 'Padang', '00000000003');

-- --------------------------------------------------------

--
-- Table structure for table `paket`
--

CREATE TABLE `paket` (
  `id_paket` int(11) NOT NULL,
  `jenis_paket` enum('kiloan','selimut','bedcover','kaos','lain','satuan','meter') DEFAULT NULL,
  `nama_paket` varchar(100) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `paket`
--

INSERT INTO `paket` (`id_paket`, `jenis_paket`, `nama_paket`, `harga`, `outlet_id`) VALUES
(4, 'kiloan', 'Paket Cuci Kering', 7000, 26),
(5, 'kiloan', 'Paket Cuci Setrika', 9000, 26),
(6, 'kiloan', 'Paket Setrika', 6000, 26),
(8, 'kiloan', 'Paket One Day Service (ODS)', 14000, 26),
(9, 'kiloan', 'Paket Express Service (6 hours)', 21000, 26),
(13, 'satuan', 'Jaket Kulit', 50000, 26),
(14, 'satuan', 'Jaket Tipis', 10000, 26),
(15, 'satuan', 'Jaket Tebal', 15000, 26),
(16, 'satuan', 'Bed Cover M', 15000, 26),
(17, 'satuan', 'Bed Cover King', 20000, 26),
(18, 'satuan', 'Selimut', 15000, 26),
(20, 'satuan', 'Boneka', 8000, 26),
(21, 'satuan', 'Jas Setelan', 30000, 26),
(22, 'satuan', 'Atasan Jas', 20000, 26),
(23, 'satuan', 'Gaun', 35000, 26),
(24, 'satuan', 'Helm', 20000, 26),
(25, 'meter', 'Karpet', 12500, 26),
(26, 'satuan', 'Kasur Palembang', 25000, 26),
(27, 'satuan', 'Tas', 10000, 26),
(28, 'satuan', 'Sepatu', 10000, 26),
(29, 'kiloan', 'super kilat', 20000, 26);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `kode_invoice` varchar(100) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `tgl` datetime DEFAULT NULL,
  `batas_waktu` datetime DEFAULT NULL,
  `tgl_pembayaran` datetime DEFAULT NULL,
  `biaya_tambahan` int(11) DEFAULT NULL,
  `diskon` double DEFAULT NULL,
  `ongkir_kurir` int(11) DEFAULT NULL,
  `status` enum('baru','proses','selesai','diambil') DEFAULT NULL,
  `status_bayar` enum('dibayar','belum') DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `outlet_id`, `kode_invoice`, `member_id`, `tgl`, `batas_waktu`, `tgl_pembayaran`, `biaya_tambahan`, `diskon`, `ongkir_kurir`, `status`, `status_bayar`, `user_id`) VALUES
(39, 26, 'DRY202010191226', 7, '2020-10-19 02:26:20', '2020-10-26 12:00:00', '2021-02-22 04:28:45', 0, 0, 0, 'baru', 'dibayar', 16),
(40, 26, 'DRY202010194326', 6, '2020-10-19 02:26:53', '2020-10-26 12:00:00', '2021-03-02 08:00:07', 0, 0, 0, 'baru', 'dibayar', 16),
(42, 26, 'DRY202102225334', 8, '2021-02-22 04:35:26', '2021-03-01 12:00:00', '2021-02-22 04:36:48', 5000, 0, 2000, 'baru', 'dibayar', 16),
(43, 26, 'DRY202103023037', 9, '2021-03-02 05:37:57', '2021-03-09 12:00:00', '2021-03-02 05:38:19', 5005, 0, 0, 'baru', 'dibayar', 16),
(45, 26, 'DRY202103105146', 12, '2021-03-10 03:47:16', '2021-03-17 12:00:00', '2021-03-10 03:47:53', 0, 0, 5000, 'baru', 'dibayar', 16),
(46, 26, 'DRY202103182508', 14, '2021-03-18 12:08:31', '2021-03-25 12:00:00', '2021-03-18 12:10:33', 0, 0, 0, 'baru', 'dibayar', 16),
(48, 26, 'DRY202103185914', 16, '2021-03-18 12:15:19', '2021-03-25 12:00:00', '2021-03-18 12:17:01', 0, 0, 2000, 'selesai', 'dibayar', 16),
(49, 26, 'DRY202103193556', 17, '2021-03-19 07:56:43', '2021-03-26 12:00:00', '2021-03-19 07:56:56', 0, 0, 0, 'baru', 'dibayar', 16),
(50, 26, 'DRY202103193405', 18, '2021-03-19 08:05:55', '2021-03-26 12:00:00', '2021-03-19 08:06:20', 0, 0, 0, 'baru', 'dibayar', 16),
(51, 26, 'DRY202103190849', 21, '2021-03-19 01:49:16', '2021-03-26 12:00:00', '2021-03-19 01:49:43', 0, 0, 0, 'baru', 'dibayar', 16),
(52, 26, 'DRY202103191228', 22, '2021-03-19 02:28:21', '2021-03-26 12:00:00', '2021-03-19 02:31:15', 0, 0, 0, 'diambil', 'dibayar', 16),
(53, 26, 'DRY202103295522', 23, '2021-03-29 09:23:06', '2021-04-05 12:00:00', '2021-03-29 09:23:46', 0, 0, 0, 'baru', 'dibayar', 16),
(54, 26, 'DRY202103301727', 24, '2021-03-30 06:27:28', '2021-04-06 12:00:00', '2021-03-30 06:28:08', 0, 0, 0, 'selesai', 'dibayar', 16),
(55, 26, 'DRY202104043357', 25, '2021-04-04 07:57:42', '2021-04-11 12:00:00', '2021-04-04 07:57:55', 0, 0, 0, 'baru', 'dibayar', 16),
(56, 26, 'DRY202104045621', 26, '2021-04-04 02:22:06', '2021-04-11 12:00:00', '2021-04-04 02:22:24', 0, 0, 0, 'baru', 'dibayar', 16),
(57, 26, 'DRY202104043711', 27, '2021-04-04 03:11:43', '2021-04-11 12:00:00', '2021-04-04 03:12:05', 0, 0, 0, 'baru', 'dibayar', 16),
(59, 26, 'DRY202104055004', 29, '2021-04-05 03:05:03', '2021-04-12 12:00:00', '2021-04-05 03:06:15', 0, 0, 0, 'baru', 'dibayar', 16),
(60, 26, 'DRY202104051513', 29, '2021-04-05 03:13:22', '2021-04-12 12:00:00', '2021-04-05 03:14:10', 0, 0, 0, 'baru', 'dibayar', 16),
(61, 26, 'DRY202104093924', 31, '2021-04-09 03:24:55', '2021-04-16 12:00:00', '2021-04-09 03:25:23', 0, 0, 2000, 'baru', 'dibayar', 16),
(62, 26, 'DRY202104101225', 32, '2021-04-10 02:25:18', '2021-04-17 12:00:00', '2021-04-10 02:25:34', 0, 0, 0, 'baru', 'dibayar', 16),
(63, 26, 'DRY202104103718', 12, '2021-04-10 03:18:51', '2021-04-17 12:00:00', '2021-04-10 03:19:31', 0, 0, 0, 'baru', 'dibayar', 16);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(100) DEFAULT NULL,
  `username` varchar(32) DEFAULT NULL,
  `password` varchar(150) DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `role` enum('admin','kasir','owner') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama_user`, `username`, `password`, `outlet_id`, `role`) VALUES
(1, 'Admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', NULL, 'admin'),
(15, 'Kasir Outlet Merah', 'kasirmerah', 'cdd9b843e296b9ff6745d122f19809d4', 28, 'kasir'),
(16, 'Kasir Outlet Kuning', 'kasirkuning', 'd474d18f48a3e50936e128456dc7a55d', 26, 'kasir'),
(18, 'Owner Outlet Kuning', 'ownerkuning', 'd295dcbdb82a726ce5bb11f1202f58f5', NULL, 'owner'),
(19, 'edo', 'edo', '202cb962ac59075b964b07152d234b70', NULL, 'admin'),
(24, 'eri', 'eri', '1f5198faff59782cd71dba9588e45697', NULL, ''),
(25, 'pribadi', 'pribadi', '202cb962ac59075b964b07152d234b70', NULL, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD PRIMARY KEY (`id_detail`),
  ADD KEY `transaksi_id` (`transaksi_id`),
  ADD KEY `paket_id` (`paket_id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indexes for table `outlet`
--
ALTER TABLE `outlet`
  ADD PRIMARY KEY (`id_outlet`);

--
-- Indexes for table `paket`
--
ALTER TABLE `paket`
  ADD PRIMARY KEY (`id_paket`),
  ADD KEY `outlet_id` (`outlet_id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `outlet_id` (`outlet_id`),
  ADD KEY `member_id` (`member_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `outlet_id` (`outlet_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `outlet`
--
ALTER TABLE `outlet`
  MODIFY `id_outlet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `paket`
--
ALTER TABLE `paket`
  MODIFY `id_paket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD CONSTRAINT `detail_transaksi_ibfk_1` FOREIGN KEY (`transaksi_id`) REFERENCES `transaksi` (`id_transaksi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_transaksi_ibfk_2` FOREIGN KEY (`paket_id`) REFERENCES `paket` (`id_paket`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `paket`
--
ALTER TABLE `paket`
  ADD CONSTRAINT `paket_ibfk_1` FOREIGN KEY (`outlet_id`) REFERENCES `outlet` (`id_outlet`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`outlet_id`) REFERENCES `outlet` (`id_outlet`),
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`member_id`) REFERENCES `member` (`id_member`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`outlet_id`) REFERENCES `outlet` (`id_outlet`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
