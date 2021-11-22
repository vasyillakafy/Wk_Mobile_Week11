-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Nov 2021 pada 14.02
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myboba`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `myboba`
--

CREATE TABLE `myboba` (
  `id` int(11) NOT NULL,
  `toko` varchar(30) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `telepon` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `myboba`
--

INSERT INTO `myboba` (`id`, `toko`, `alamat`, `telepon`) VALUES
(1, 'Chatime', 'Lippo Plaza, Roxy Square', '081111111111'),
(2, 'Tea Break', 'Lippo Plaza, Roxy Square', '082222222222'),
(3, 'Boba Time', 'Jl. Kenanga, Jl.Sumatra', '083333333333'),
(4, 'Thai Tea', 'Jl.Kalimantan, Jl.Jawa', '084444444444');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `myboba`
--
ALTER TABLE `myboba`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `myboba`
--
ALTER TABLE `myboba`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
