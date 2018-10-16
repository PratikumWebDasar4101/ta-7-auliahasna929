-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2018 at 05:42 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webdas`
--

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` int(11) NOT NULL,
  `nama` text NOT NULL,
  `prodi` text NOT NULL,
  `fakultas` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `prodi`, `fakultas`) VALUES
(1, '672564843', '', ''),
(2, '1342562', '', ''),
(3, '1342562', '', ''),
(4, '56729', '', ''),
(5, '2446363735', '', ''),
(6, '257272', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `pendataan`
--

CREATE TABLE `pendataan` (
  `nim` int(11) NOT NULL,
  `nama` text NOT NULL,
  `jk` text NOT NULL,
  `prodi` text NOT NULL,
  `fakultas` text NOT NULL,
  `asal` text NOT NULL,
  `motohidup` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pendataan`
--

INSERT INTO `pendataan` (`nim`, `nama`, `jk`, `prodi`, `fakultas`, `asal`, `motohidup`) VALUES
(65837254, 'rrr', 'perempuan', 'D3 Teknik Telekomunikasi', '', 'bandung', 'dgdhgfhghfh'),
(886785654, 'tiul', 'laki-laki', 'D3 Teknik Telekomunikasi', '', 'hagia', 'sepertiairmengalirfg'),
(896348733, 'Nur', 'perempuan', 'D3 Sistem Informasi', '', 'hagia', 'sepertiairmengalir'),
(2147483647, 'mert', 'laki-laki', 'D3 Teknik Telekomunikasi', '', 'dago', 'yaudahyaa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `pendataan`
--
ALTER TABLE `pendataan`
  ADD PRIMARY KEY (`nim`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `nim` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
