-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2023 at 09:47 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokojamzijah`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(5) NOT NULL,
  `kategori_id` int(5) NOT NULL,
  `barcode` int(20) NOT NULL,
  `nm_barang` varchar(200) NOT NULL,
  `stok` char(20) NOT NULL,
  `harga_jual` int(20) NOT NULL,
  `harga_beli` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `kategori_id`, `barcode`, `nm_barang`, `stok`, `harga_jual`, `harga_beli`) VALUES
(1, 1, 112, 'Casio', '10', 200000, 150000),
(3, 2, 212, 'G-shock', '20', 500000, 200000),
(4, 3, 324, 'Alexander christine', '21', 1000000, 820000),
(5, 4, 324, 'cardif', '12', 150000, 100000),
(7, 5, 425, 'iwatch', '2', 3000000, 2800000);

-- --------------------------------------------------------

--
-- Table structure for table `beli`
--

CREATE TABLE `beli` (
  `id` int(5) NOT NULL,
  `suplier_id` int(5) NOT NULL,
  `bulan_beli` varchar(15) NOT NULL,
  `tgl_beli` date NOT NULL,
  `total` int(20) NOT NULL,
  `bayar` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `beli`
--

INSERT INTO `beli` (`id`, `suplier_id`, `bulan_beli`, `tgl_beli`, `total`, `bayar`) VALUES
(2, 4, 'Agustus', '2023-08-12', 5000000, 5000000),
(4, 6, 'Juli', '2023-07-12', 500000, 500000);

-- --------------------------------------------------------

--
-- Table structure for table `costumer`
--

CREATE TABLE `costumer` (
  `id` int(5) NOT NULL,
  `nm_costumer` varchar(20) NOT NULL,
  `jk` enum('Laki-laki','Perempuan') NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `telp` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `costumer`
--

INSERT INTO `costumer` (`id`, `nm_costumer`, `jk`, `alamat`, `telp`) VALUES
(1, 'Sukma', 'Laki-laki', '0', 2147483621),
(3, 'Gema', 'Perempuan', '0', 223);

-- --------------------------------------------------------

--
-- Table structure for table `detail_beli`
--

CREATE TABLE `detail_beli` (
  `id` int(5) NOT NULL,
  `beli_id` int(5) NOT NULL,
  `barang_id` int(5) NOT NULL,
  `jumlah` int(20) NOT NULL,
  `harga_beli` int(20) NOT NULL,
  `total_beli` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail_beli`
--

INSERT INTO `detail_beli` (`id`, `beli_id`, `barang_id`, `jumlah`, `harga_beli`, `total_beli`) VALUES
(1, 2, 7, 2, 2000000, 2000000),
(2, 4, 3, 5, 20000000, 20000000);

-- --------------------------------------------------------

--
-- Table structure for table `detail_jual`
--

CREATE TABLE `detail_jual` (
  `id` int(5) NOT NULL,
  `jual_id` int(5) NOT NULL,
  `barang_id` int(5) NOT NULL,
  `jumlah` int(20) NOT NULL,
  `harga_jual` int(20) NOT NULL,
  `total_jual` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail_jual`
--

INSERT INTO `detail_jual` (`id`, `jual_id`, `barang_id`, `jumlah`, `harga_jual`, `total_jual`) VALUES
(1, 1, 4, 3, 200000, 600000),
(2, 5, 5, 2, 3000000, 6000000);

-- --------------------------------------------------------

--
-- Table structure for table `jual`
--

CREATE TABLE `jual` (
  `id` int(5) NOT NULL,
  `cost_id` int(5) NOT NULL,
  `tgl_jual` date NOT NULL,
  `bulan_jual` varchar(20) NOT NULL,
  `total` int(20) NOT NULL,
  `bayar` int(20) NOT NULL,
  `kembali` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jual`
--

INSERT INTO `jual` (`id`, `cost_id`, `tgl_jual`, `bulan_jual`, `total`, `bayar`, `kembali`) VALUES
(1, 1, '2023-10-16', 'Oktober', 200000, 200000, 0),
(5, 3, '2023-06-12', 'Juni', 223000, 250000, 27000);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(5) NOT NULL,
  `nm_kategori` varchar(200) NOT NULL,
  `dekripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `nm_kategori`, `dekripsi`) VALUES
(1, 'Jam Tangan', 'Jam yang diletakkan di tangan'),
(2, '2324', 'Noor'),
(3, 'Jam Gusi', 'Jam untuk gusi'),
(4, 'Jam Hias', 'Hisan tangan'),
(5, 'Jam travel', 'Untuk travel'),
(6, 'Jam Rumahan', 'Jam untuk dirumah');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(5) NOT NULL,
  `nm_supplier` varchar(20) NOT NULL,
  `nm_perusahaan` varchar(20) NOT NULL,
  `alamat` varchar(20) NOT NULL,
  `telp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `nm_supplier`, `nm_perusahaan`, `alamat`, `telp`) VALUES
(4, 'Noor Azijah', 'PT.PAMA JAYA', 'JL.Simanjuntak', '0942314243    '),
(6, 'Rianor', 'PT.Anugrah', 'Jl.Sejahtera', '0843424352 ');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(20) NOT NULL,
  `nik` varchar(20) NOT NULL,
  `nm_lengkap` varchar(100) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(8) NOT NULL,
  `jk` enum('Laki-laki','Perempuan') NOT NULL,
  `telp` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nik`, `nm_lengkap`, `username`, `password`, `jk`, `telp`, `email`, `alamat`) VALUES
(1, '265332851413', 'Azijah', 'Azijah', '12345678', 'Perempuan', '081649334151', 'noorazijah444@gmail.com', 'Jl.Keramat Rt.11 RW.04'),
(3, '2142', 'Malida', 'Mamauimut', '12345678', 'Perempuan', '0424243525', 'mau@gmailcom', 'Jl.Soekarno'),
(6, '232342', 'Rahman', '321', '321', 'Laki-laki', '08435452535', 'aman@gmail.com', 'Jl.Sejahtera'),
(7, '32324', 'Amanah', '123', '123', 'Perempuan', '32321', 'manah@gmail.com', 'Jl.Kosmetik'),
(8, '143445', 'Noor Azijah', 'zijah', '061002', 'Perempuan', '081649334151', 'zija', 'Jl.keramat'),
(9, '3232', 'Noor', 'kunzah', '123', 'Perempuan', '09321832', 'zah@gmail.com', 'jl.sukses'),
(10, '2124', 'Rian', '123', '123', 'Laki-laki', '03243', '0832423424', 'Jl.Aman');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kategori_id` (`kategori_id`);

--
-- Indexes for table `beli`
--
ALTER TABLE `beli`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `suplier_id` (`suplier_id`);

--
-- Indexes for table `costumer`
--
ALTER TABLE `costumer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detail_beli`
--
ALTER TABLE `detail_beli`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `beli_id` (`beli_id`),
  ADD UNIQUE KEY `barang_id` (`barang_id`);

--
-- Indexes for table `detail_jual`
--
ALTER TABLE `detail_jual`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `jual_id` (`jual_id`),
  ADD UNIQUE KEY `barang_id` (`barang_id`);

--
-- Indexes for table `jual`
--
ALTER TABLE `jual`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cost_id` (`cost_id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `beli`
--
ALTER TABLE `beli`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `costumer`
--
ALTER TABLE `costumer`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `detail_beli`
--
ALTER TABLE `detail_beli`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `detail_jual`
--
ALTER TABLE `detail_jual`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jual`
--
ALTER TABLE `jual`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_ibfk_1` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id`);

--
-- Constraints for table `beli`
--
ALTER TABLE `beli`
  ADD CONSTRAINT `beli_ibfk_1` FOREIGN KEY (`suplier_id`) REFERENCES `supplier` (`id`);

--
-- Constraints for table `detail_beli`
--
ALTER TABLE `detail_beli`
  ADD CONSTRAINT `detail_beli_ibfk_1` FOREIGN KEY (`beli_id`) REFERENCES `beli` (`id`),
  ADD CONSTRAINT `detail_beli_ibfk_2` FOREIGN KEY (`barang_id`) REFERENCES `barang` (`id`);

--
-- Constraints for table `detail_jual`
--
ALTER TABLE `detail_jual`
  ADD CONSTRAINT `detail_jual_ibfk_1` FOREIGN KEY (`jual_id`) REFERENCES `jual` (`id`),
  ADD CONSTRAINT `detail_jual_ibfk_2` FOREIGN KEY (`barang_id`) REFERENCES `barang` (`id`);

--
-- Constraints for table `jual`
--
ALTER TABLE `jual`
  ADD CONSTRAINT `jual_ibfk_1` FOREIGN KEY (`cost_id`) REFERENCES `costumer` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
