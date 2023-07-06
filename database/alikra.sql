-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Jul 2023 pada 10.19
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alikra`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `matkul`
--

CREATE TABLE `matkul` (
  `nama_mata_kuliah` varchar(30) NOT NULL,
  `dosen_pengampu` varchar(30) NOT NULL,
  `jumlah_sks` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `matkul`
--

INSERT INTO `matkul` (`nama_mata_kuliah`, `dosen_pengampu`, `jumlah_sks`) VALUES
('Pemrograman Web', 'Husnil Kamil.,MT', 3),
('Data Mining', 'Aina Hubby Azira.,M.Eng', 3),
('Rekayasa Perangkat Lunak', 'Dwi Welly Sukma Nirad.,MT', 2),
('Sistem Penunjang Keputusan', 'Ricky Akbar.,M.Kom', 3),
('Analisis Visualisasi Data', 'Rahmatika Pratama Santi.,MT', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai`
--

CREATE TABLE `nilai` (
  `nama_matkul` varchar(20) NOT NULL,
  `nilai` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `nilai`
--

INSERT INTO `nilai` (`nama_matkul`, `nilai`) VALUES
('Pemrograman Web', 'B'),
('Data Mining', 'A-'),
('Rekayasa Perangkat L', 'A'),
('Sistem Penunjang Kep', 'B+'),
('Analisis Visualisasi', 'B-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `user_id` int(3) NOT NULL,
  `username` varchar(30) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`user_id`, `username`, `nama`, `email`, `password`) VALUES
(1, 'ali2111522007', 'Ahmad Ali Zulfiqar Majid', 'ali1234@gmail.com', '123454321'),
(2, 'ikhlas2111523007', 'Muhammad Ikhlas', 'ikhlas1234@gmail.com', '123454321'),
(3, 'raidan2011523007', 'Raidan Malik Sandra', 'raidan1234@gmail.com', '123454321');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
