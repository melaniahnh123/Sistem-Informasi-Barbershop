-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 10 Jun 2020 pada 13.23
-- Versi Server: 10.1.16-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasir`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_gaji`
--

CREATE TABLE `tabel_gaji` (
  `Id Karyawan` varchar(50) NOT NULL,
  `Absen` int(225) NOT NULL,
  `Gaji pokok` int(225) NOT NULL,
  `Bonus` int(225) NOT NULL,
  `Potongan gaji` int(225) NOT NULL,
  `Total gaji` int(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabel_gaji`
--

INSERT INTO `tabel_gaji` (`Id Karyawan`, `Absen`, `Gaji pokok`, `Bonus`, `Potongan gaji`, `Total gaji`) VALUES
('k0001', 1, 1800000, 50000, 60000, 1790000),
('K0003', 1, 1800000, 50000, 60000, 1790000),
('K0004', 1, 1800000, 50000, 60000, 1790000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_karyawan`
--

CREATE TABLE `tabel_karyawan` (
  `Id Karyawan` varchar(50) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Alamat` varchar(100) NOT NULL,
  `No.Telepon` int(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabel_karyawan`
--

INSERT INTO `tabel_karyawan` (`Id Karyawan`, `Nama`, `Alamat`, `No.Telepon`) VALUES
('k001', 'kotim', 'madiun', 85),
('k002', 'dendi', 'jember', 85178356),
('K0003', 'Brian', 'Madiun', 85613156),
('K0004', 'Gebi', 'Surabaya', 85123546);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_login`
--

CREATE TABLE `tabel_login` (
  `Username` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_transaksi`
--

CREATE TABLE `tabel_transaksi` (
  `Tgl Pembayaran` varchar(225) NOT NULL,
  `Uang harus dibayar` int(225) NOT NULL,
  `Uang yang dibayar` int(225) NOT NULL,
  `Total` int(225) NOT NULL,
  `Kembalian` int(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabel_transaksi`
--

INSERT INTO `tabel_transaksi` (`Tgl Pembayaran`, `Uang harus dibayar`, `Uang yang dibayar`, `Total`, `Kembalian`) VALUES
('4 juni 2020', 25000, 50000, 25000, 25000),
('04 Juni 2020', 55000, 60000, 55000, 5000),
('6 Juni 2020', 25000, 100000, 25000, 75000);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
