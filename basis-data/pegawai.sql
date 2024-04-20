-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Apr 2024 pada 15.45
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbpegawai`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `id` int(11) NOT NULL,
  `nip` char(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `tmp_lahir` varchar(30) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `iddivisi` int(11) NOT NULL,
  `idjabatan` int(11) NOT NULL,
  `alamat` text DEFAULT NULL,
  `berat_badan` float NOT NULL,
  `umur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`id`, `nip`, `nama`, `jenis_kelamin`, `tmp_lahir`, `tgl_lahir`, `iddivisi`, `idjabatan`, `alamat`, `berat_badan`, `umur`) VALUES
(1, '11111', 'Yusup Doli Islami', 'Laki-laki', 'Depok', '1999-09-25', 1, 1, 'Depok', 71.6, 53),
(2, '11112', 'Muhammad Amin', 'Laki-laki', 'Jakarta', '1990-03-12', 1, 2, 'Jakarta', 54.72, 27),
(3, '11113', 'Asep Suparman', 'Laki-laki', 'Bogor', '1992-06-20', 1, 3, 'Bogor', 78.8, 24),
(4, '11114', 'Santoso Wijaya', 'Laki-laki', 'Tangerang', '1995-11-05', 1, 4, 'Tangerang', 49.85, 21),
(5, '11115', 'Rini Novianti', 'Perempuan', 'Bekasi', '1991-04-18', 1, 1, 'Bekasi', 32.83, 48),
(6, '22221', 'Andi Saputra', 'Laki-laki', 'Bandung', '1993-08-01', 2, 1, 'Bandung', 34.62, 52),
(7, '22222', 'Siti Aisyah', 'Perempuan', 'Cimahi', '1994-12-24', 2, 2, 'Cimahi', 44.59, 25),
(8, '22223', 'Dian Pratiwi', 'Perempuan', 'Sumedang', '1996-05-09', 2, 3, 'Sumedang', 39.09, 20),
(9, '22224', 'Edi Suryadi', 'Laki-laki', 'Garut', '1998-02-16', 2, 4, 'Garut', 31.67, 40),
(10, '22225', 'Lina Amelia', 'Perempuan', 'Cianjur', '1990-07-28', 2, 1, 'Cianjur', 61.1, 51),
(11, '33331', 'Budi Santoso', 'Laki-laki', 'Depok', '1991-11-03', 3, 1, 'Depok', 30.49, 43),
(12, '33332', 'Rina Kurniawati', 'Perempuan', 'Bogor', '1993-04-22', 3, 2, 'Bogor', 39.16, 42),
(13, '33333', 'Adi Kurniawan', 'Laki-laki', 'Tangerang', '1995-09-15', 3, 3, 'Tangerang', 74.32, 26),
(14, '33334', 'Sari Handayani', 'Perempuan', 'Bekasi', '1997-02-08', 3, 4, 'Bekasi', 74.1, 55),
(15, '33335', 'Dian Rahayu', 'Perempuan', 'Jakarta', '1992-06-30', 3, 1, 'Jakarta', 67.57, 36),
(16, '44441', 'Dian Setiawan', 'Laki-laki', 'Tangerang', '1994-02-14', 4, 1, 'Tangerang', 35.54, 31),
(17, '44442', 'Sinta Permata', 'Perempuan', 'Depok', '1996-07-03', 4, 2, 'Depok', 45, 27),
(18, '44443', 'Arif Santoso', 'Laki-laki', 'Bogor', '1998-11-20', 4, 3, 'Bogor', 38.38, 20);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nip` (`nip`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
