-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2023 at 12:09 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kelompok_6`
--

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `mhsNpm` char(12) NOT NULL,
  `mhsNama` varchar(255) DEFAULT NULL,
  `mhsAlamat` text DEFAULT NULL,
  `mhsFakultas` varchar(255) DEFAULT NULL,
  `mhsProdi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`mhsNpm`, `mhsNama`, `mhsAlamat`, `mhsFakultas`, `mhsProdi`) VALUES
('11312136', 'Mahasiswa1', 'alamat mahasiswa 1\r\n', 'Teknik', 'Teknik Informatika'),
('11312137', 'Mahasiswa2', 'alamat mahasiswa 2\r\n', 'Teknik', 'Teknik Elektro'),
('11312138', 'Mahasiswa 3', 'alamat mahasiswa 3', 'fakultas mahasiswa 3', 'prodi mahasiswa 3');

-- --------------------------------------------------------

--
-- Table structure for table `perlombaan`
--

CREATE TABLE `perlombaan` (
  `idLomba` char(12) NOT NULL,
  `namaLomba` varchar(255) DEFAULT NULL,
  `deskripsiLomba` text DEFAULT NULL,
  `kuotaLomba` char(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `perlombaan`
--

INSERT INTO `perlombaan` (`idLomba`, `namaLomba`, `deskripsiLomba`, `kuotaLomba`) VALUES
('001', 'Pemrograman Mobile', 'Membuat Aplikasi Mobile Menggunakan Flutter', '100'),
('002', 'Jaringan Komputer dan Komunikasi Data', 'Membuat Jaringan Berbasis Wide Area Network', '100'),
('003', 'Machine Learning', 'Membuat robot tempur', '100'),
('004', 'IOT', 'Mahasiswa Membuat Teknologi IOT Terbaru', '100'),
('005', 'Extreme Programming', 'Membuat Pemrograman Extreme', '10');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `name`, `username`, `pass`, `role`) VALUES
(1, 'admin', 'tes', '28b662d883b6d76fd96e4ddc5e9ba780', 'Admin'),
(2, 'admin2', 'Admin2', '7a8a80e50f6ff558f552079cefe2715d', 'Admin'),
(6, 'Admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Admin'),
(7, 'admin5', 'admin5', 'e10adc3949ba59abbe56e057f20f883e', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`mhsNpm`);

--
-- Indexes for table `perlombaan`
--
ALTER TABLE `perlombaan`
  ADD PRIMARY KEY (`idLomba`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
