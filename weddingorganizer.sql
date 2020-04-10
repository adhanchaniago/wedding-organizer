-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2020 at 05:03 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `weddingorganizer`
--

-- --------------------------------------------------------

--
-- Table structure for table `dekorasi`
--

CREATE TABLE `dekorasi` (
  `dekorasi_id` int(11) NOT NULL,
  `nama_dekorasi` varchar(15) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `harga_dekorasi` decimal(11,0) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dokumentasi`
--

CREATE TABLE `dokumentasi` (
  `dokumentasi_id` int(11) NOT NULL,
  `nama_dokumentasi` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `harga_dokumentasi` decimal(11,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gedung`
--

CREATE TABLE `gedung` (
  `gedung_id` int(5) UNSIGNED NOT NULL,
  `nama_gedung` varchar(35) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `harga_gedung` decimal(11,0) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `katering`
--

CREATE TABLE `katering` (
  `katering_id` int(11) NOT NULL,
  `nama_katering` varchar(25) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `jumlah` decimal(5,0) NOT NULL,
  `harga_katering` decimal(11,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `konfirmasi`
--

CREATE TABLE `konfirmasi` (
  `id` int(11) UNSIGNED NOT NULL,
  `pelanggan_id` int(11) DEFAULT NULL,
  `pemesanan_id` int(11) DEFAULT NULL,
  `no_rek` varchar(25) DEFAULT NULL,
  `nama_bank` varchar(25) DEFAULT NULL,
  `pemilik` varchar(25) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `pelanggan_id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `no_telp` varchar(12) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(11) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`pelanggan_id`, `nama`, `no_telp`, `alamat`, `email`, `password`) VALUES
(1, 'Mustapa Ahmad Kamal', '082237755772', 'banjarmasin', 'mustapakamalkml@gmail.com', '482');

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id_pemesanan` varchar(15) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `tgl_acara` varchar(10) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan_dekorasi`
--

CREATE TABLE `pemesanan_dekorasi` (
  `id` int(11) NOT NULL,
  `pemesanan_id` varchar(15) NOT NULL,
  `dekorasi_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan_dokumentasi`
--

CREATE TABLE `pemesanan_dokumentasi` (
  `id` int(11) NOT NULL,
  `pemesanan_id` varchar(15) NOT NULL,
  `dokumentasi_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan_gedung`
--

CREATE TABLE `pemesanan_gedung` (
  `id` int(11) NOT NULL,
  `pemesanan_id` varchar(15) NOT NULL,
  `gedung_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan_katering`
--

CREATE TABLE `pemesanan_katering` (
  `id` int(11) NOT NULL,
  `pemesanan_id` varchar(15) NOT NULL,
  `katering_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan_rias`
--

CREATE TABLE `pemesanan_rias` (
  `id` int(11) NOT NULL,
  `pemesanan_id` varchar(15) NOT NULL,
  `rias_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rias`
--

CREATE TABLE `rias` (
  `rias_id` int(11) NOT NULL,
  `nama_rias` varchar(50) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `harga_rias` decimal(11,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) UNSIGNED NOT NULL,
  `name` varchar(35) NOT NULL,
  `username` varchar(35) NOT NULL,
  `no_telp` varchar(12) DEFAULT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `username`, `no_telp`, `password`) VALUES
(1, 'admin', 'admin', '', '21232f297a57a5a743894a0e4a801fc3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dekorasi`
--
ALTER TABLE `dekorasi`
  ADD PRIMARY KEY (`dekorasi_id`);

--
-- Indexes for table `dokumentasi`
--
ALTER TABLE `dokumentasi`
  ADD PRIMARY KEY (`dokumentasi_id`);

--
-- Indexes for table `gedung`
--
ALTER TABLE `gedung`
  ADD KEY `gedung_id` (`gedung_id`);

--
-- Indexes for table `katering`
--
ALTER TABLE `katering`
  ADD PRIMARY KEY (`katering_id`);

--
-- Indexes for table `konfirmasi`
--
ALTER TABLE `konfirmasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`pelanggan_id`);

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id_pemesanan`);

--
-- Indexes for table `pemesanan_dekorasi`
--
ALTER TABLE `pemesanan_dekorasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pemesanan_dokumentasi`
--
ALTER TABLE `pemesanan_dokumentasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pemesanan_gedung`
--
ALTER TABLE `pemesanan_gedung`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pemesanan_katering`
--
ALTER TABLE `pemesanan_katering`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pemesanan_rias`
--
ALTER TABLE `pemesanan_rias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rias`
--
ALTER TABLE `rias`
  ADD PRIMARY KEY (`rias_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dekorasi`
--
ALTER TABLE `dekorasi`
  MODIFY `dekorasi_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dokumentasi`
--
ALTER TABLE `dokumentasi`
  MODIFY `dokumentasi_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gedung`
--
ALTER TABLE `gedung`
  MODIFY `gedung_id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `katering`
--
ALTER TABLE `katering`
  MODIFY `katering_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `konfirmasi`
--
ALTER TABLE `konfirmasi`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `pelanggan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pemesanan_dekorasi`
--
ALTER TABLE `pemesanan_dekorasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pemesanan_dokumentasi`
--
ALTER TABLE `pemesanan_dokumentasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pemesanan_gedung`
--
ALTER TABLE `pemesanan_gedung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pemesanan_katering`
--
ALTER TABLE `pemesanan_katering`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pemesanan_rias`
--
ALTER TABLE `pemesanan_rias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rias`
--
ALTER TABLE `rias`
  MODIFY `rias_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
