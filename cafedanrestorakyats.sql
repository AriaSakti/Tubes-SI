-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Apr 2023 pada 20.10
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cafedanrestorakyats`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `coffe_shop`
--

CREATE TABLE `coffe_shop` (
  `id_coffeShop` varchar(10) NOT NULL,
  `nama_coffeShop` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `telepon` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `driver`
--

CREATE TABLE `driver` (
  `id_driver` varchar(10) NOT NULL,
  `nama_driver` varchar(10) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `email` varchar(20) NOT NULL,
  `status_driver` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteriacoffeshop`
--

CREATE TABLE `kriteriacoffeshop` (
  `id_kriteriaCoffeShop` varchar(10) NOT NULL,
  `Nama_kriteria` varchar(20) NOT NULL,
  `rating` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteriarestoran`
--

CREATE TABLE `kriteriarestoran` (
  `id_kriteriaRestoran` varchar(10) NOT NULL,
  `Nama_kriteria` varchar(20) NOT NULL,
  `rating` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `makanan`
--

CREATE TABLE `makanan` (
  `id_makanan` varchar(10) NOT NULL,
  `Nama_makanan` varchar(100) NOT NULL,
  `deskipsi` varchar(100) NOT NULL,
  `harga` int(100) NOT NULL,
  `id_restoran` varchar(10) NOT NULL,
  `id_coffeShop` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `metode_pembayaran`
--

CREATE TABLE `metode_pembayaran` (
  `id_metodepembayaran` varchar(10) NOT NULL,
  `nama_metodepembayaran` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `minuman`
--

CREATE TABLE `minuman` (
  `id_minuman` varchar(10) NOT NULL,
  `nama_minuman` varchar(100) NOT NULL,
  `deskipsi` varchar(100) NOT NULL,
  `harga` int(100) NOT NULL,
  `id_restoran` varchar(10) NOT NULL,
  `id_coffeShop` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id_pemesanan` varchar(10) NOT NULL,
  `id_makanan` varchar(10) NOT NULL,
  `id_minuman` varchar(10) NOT NULL,
  `tanggal_pemesanan` date NOT NULL,
  `jumlah` int(10) NOT NULL,
  `total_harga` int(100) NOT NULL,
  `id_pengguna` varchar(10) NOT NULL,
  `id_coffeShop` varchar(10) NOT NULL,
  `id_restoran` varchar(10) NOT NULL,
  `id_driver` varchar(10) NOT NULL,
  `id_metodepembayaran` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `Id_pengguna` varchar(10) NOT NULL,
  `Nama_pengguna` varchar(20) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penilaian_coffeshop`
--

CREATE TABLE `penilaian_coffeshop` (
  `id_penilaianCoffeShop` varchar(10) NOT NULL,
  `id_coffeShop` varchar(10) NOT NULL,
  `id_kriteriaCoffeShop` varchar(10) NOT NULL,
  `id_pengguna` varchar(10) NOT NULL,
  `nilai` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penilaian_restoran`
--

CREATE TABLE `penilaian_restoran` (
  `id_penilaianRestoran` varchar(10) NOT NULL,
  `id_restoran` varchar(10) NOT NULL,
  `id_kriteriaRestoran` varchar(10) NOT NULL,
  `id_pengguna` varchar(10) NOT NULL,
  `nilai` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `restoran`
--

CREATE TABLE `restoran` (
  `id_restoran` varchar(10) NOT NULL,
  `nama_restoran` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `telepon` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `coffe_shop`
--
ALTER TABLE `coffe_shop`
  ADD PRIMARY KEY (`id_coffeShop`);

--
-- Indeks untuk tabel `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`id_driver`);

--
-- Indeks untuk tabel `kriteriacoffeshop`
--
ALTER TABLE `kriteriacoffeshop`
  ADD PRIMARY KEY (`id_kriteriaCoffeShop`);

--
-- Indeks untuk tabel `kriteriarestoran`
--
ALTER TABLE `kriteriarestoran`
  ADD PRIMARY KEY (`id_kriteriaRestoran`);

--
-- Indeks untuk tabel `makanan`
--
ALTER TABLE `makanan`
  ADD PRIMARY KEY (`id_makanan`),
  ADD KEY `makanan_ibfk_1` (`id_coffeShop`),
  ADD KEY `makanan_ibfk_2` (`id_restoran`);

--
-- Indeks untuk tabel `metode_pembayaran`
--
ALTER TABLE `metode_pembayaran`
  ADD PRIMARY KEY (`id_metodepembayaran`);

--
-- Indeks untuk tabel `minuman`
--
ALTER TABLE `minuman`
  ADD PRIMARY KEY (`id_minuman`),
  ADD KEY `id_coffeShop` (`id_coffeShop`),
  ADD KEY `id_restoran` (`id_restoran`);

--
-- Indeks untuk tabel `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id_pemesanan`),
  ADD KEY `id_coffeShop` (`id_coffeShop`),
  ADD KEY `id_makanan` (`id_makanan`),
  ADD KEY `id_minuman` (`id_minuman`),
  ADD KEY `id_restoran` (`id_restoran`),
  ADD KEY `id_pengguna` (`id_pengguna`),
  ADD KEY `id_driver` (`id_driver`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`Id_pengguna`);

--
-- Indeks untuk tabel `penilaian_coffeshop`
--
ALTER TABLE `penilaian_coffeshop`
  ADD PRIMARY KEY (`id_penilaianCoffeShop`),
  ADD KEY `id_coffeShop` (`id_coffeShop`),
  ADD KEY `id_pengguna` (`id_pengguna`),
  ADD KEY `id_kriteriaCoffeShop` (`id_kriteriaCoffeShop`);

--
-- Indeks untuk tabel `penilaian_restoran`
--
ALTER TABLE `penilaian_restoran`
  ADD PRIMARY KEY (`id_penilaianRestoran`),
  ADD KEY `penilaian_restoran_ibfk_1` (`id_restoran`),
  ADD KEY `penilaian_restoran_ibfk_2` (`id_kriteriaRestoran`),
  ADD KEY `id_pengguna` (`id_pengguna`);

--
-- Indeks untuk tabel `restoran`
--
ALTER TABLE `restoran`
  ADD PRIMARY KEY (`id_restoran`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `makanan`
--
ALTER TABLE `makanan`
  ADD CONSTRAINT `makanan_ibfk_1` FOREIGN KEY (`id_coffeShop`) REFERENCES `coffe_shop` (`id_coffeShop`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `makanan_ibfk_2` FOREIGN KEY (`id_restoran`) REFERENCES `restoran` (`id_restoran`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `minuman`
--
ALTER TABLE `minuman`
  ADD CONSTRAINT `minuman_ibfk_1` FOREIGN KEY (`id_coffeShop`) REFERENCES `coffe_shop` (`id_coffeShop`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `minuman_ibfk_2` FOREIGN KEY (`id_restoran`) REFERENCES `restoran` (`id_restoran`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD CONSTRAINT `pemesanan_ibfk_1` FOREIGN KEY (`id_coffeShop`) REFERENCES `coffe_shop` (`id_coffeShop`),
  ADD CONSTRAINT `pemesanan_ibfk_2` FOREIGN KEY (`id_makanan`) REFERENCES `makanan` (`id_makanan`),
  ADD CONSTRAINT `pemesanan_ibfk_3` FOREIGN KEY (`id_minuman`) REFERENCES `minuman` (`id_minuman`),
  ADD CONSTRAINT `pemesanan_ibfk_4` FOREIGN KEY (`id_restoran`) REFERENCES `restoran` (`id_restoran`),
  ADD CONSTRAINT `pemesanan_ibfk_5` FOREIGN KEY (`id_pengguna`) REFERENCES `pengguna` (`Id_pengguna`),
  ADD CONSTRAINT `pemesanan_ibfk_6` FOREIGN KEY (`id_driver`) REFERENCES `driver` (`id_driver`);

--
-- Ketidakleluasaan untuk tabel `penilaian_coffeshop`
--
ALTER TABLE `penilaian_coffeshop`
  ADD CONSTRAINT `penilaian_coffeshop_ibfk_1` FOREIGN KEY (`id_coffeShop`) REFERENCES `coffe_shop` (`id_coffeShop`),
  ADD CONSTRAINT `penilaian_coffeshop_ibfk_2` FOREIGN KEY (`id_pengguna`) REFERENCES `pemesanan` (`id_pemesanan`),
  ADD CONSTRAINT `penilaian_coffeshop_ibfk_3` FOREIGN KEY (`id_kriteriaCoffeShop`) REFERENCES `kriteriacoffeshop` (`id_kriteriaCoffeShop`);

--
-- Ketidakleluasaan untuk tabel `penilaian_restoran`
--
ALTER TABLE `penilaian_restoran`
  ADD CONSTRAINT `penilaian_restoran_ibfk_1` FOREIGN KEY (`id_restoran`) REFERENCES `restoran` (`id_restoran`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penilaian_restoran_ibfk_2` FOREIGN KEY (`id_kriteriaRestoran`) REFERENCES `kriteriarestoran` (`id_kriteriaRestoran`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penilaian_restoran_ibfk_3` FOREIGN KEY (`id_pengguna`) REFERENCES `pengguna` (`Id_pengguna`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
