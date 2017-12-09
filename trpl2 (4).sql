-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 09 Des 2017 pada 12.30
-- Versi Server: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trpl2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `adminhargas`
--

CREATE TABLE `adminhargas` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `atasans`
--

CREATE TABLE `atasans` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `barangkeluars`
--

CREATE TABLE `barangkeluars` (
  `id` int(10) UNSIGNED NOT NULL,
  `namabarang` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlahbarang` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggalkeluar` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `barangkeluars`
--

INSERT INTO `barangkeluars` (`id`, `namabarang`, `jumlahbarang`, `tanggalkeluar`, `created_at`, `updated_at`) VALUES
(1, 'rinso', '10000', '2017-11-09', '2017-11-14 10:58:40', '2017-11-14 10:58:40'),
(2, 'rinso', '1000', '2017-12-01', '2017-12-01 04:00:18', '2017-12-01 04:00:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bawahans`
--

CREATE TABLE `bawahans` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `hargajual`
--

CREATE TABLE `hargajual` (
  `id_harga` int(11) UNSIGNED NOT NULL,
  `namabarang` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tPembelian` int(100) NOT NULL,
  `hPerbarang` int(100) NOT NULL,
  `jUnit` int(100) NOT NULL,
  `keuntungan` int(100) NOT NULL,
  `jual` int(100) NOT NULL,
  `tanggal` date NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hargajual`
--

INSERT INTO `hargajual` (`id_harga`, `namabarang`, `tPembelian`, `hPerbarang`, `jUnit`, `keuntungan`, `jual`, `tanggal`, `created_at`, `updated_at`) VALUES
(14, 'rinso', 20, 10000, 50, 5, 210, '2017-11-23', '2017-11-23 08:08:28', '2017-11-23 08:08:28'),
(15, 'rinso', 12, 100000, 32, 5, 3281, '2017-11-27', '2017-11-27 12:16:02', '2017-11-27 12:16:02'),
(16, 'rinso', 20, 50000, 30, 5, 1750, '2017-12-01', '2017-12-01 14:06:10', '2017-12-01 14:06:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hargakompetitors`
--

CREATE TABLE `hargakompetitors` (
  `id` int(10) UNSIGNED NOT NULL,
  `namabarang` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hargakompetitor` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggalsurvey` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `hargakompetitors`
--

INSERT INTO `hargakompetitors` (`id`, `namabarang`, `hargakompetitor`, `tanggalsurvey`, `created_at`, `updated_at`) VALUES
(1, 'rinso', '8000', '2017-11-03', '2017-11-14 10:36:49', '2017-11-14 10:36:49'),
(2, 'rinso', '6000', '2017-12-01', '2017-12-01 07:19:21', '2017-12-01 07:19:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `iventories`
--

CREATE TABLE `iventories` (
  `id` int(10) UNSIGNED NOT NULL,
  `namabarang` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlahbarang` int(100) NOT NULL,
  `tanggalmasuk` date NOT NULL,
  `jumlahretur` int(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `iventories`
--

INSERT INTO `iventories` (`id`, `namabarang`, `jumlahbarang`, `tanggalmasuk`, `jumlahretur`, `created_at`, `updated_at`) VALUES
(1, '', 1, '1994-01-20', 1, '2017-10-16 20:05:25', '2017-10-22 09:58:24'),
(2, '', 10000, '1994-02-01', 1, '2017-10-16 20:09:46', '2017-10-22 09:58:39'),
(3, '', 1, '1995-02-01', 0, '2017-10-16 20:22:59', '2017-10-16 20:22:59'),
(4, '', 200, '2011-01-20', 10, '2017-10-22 10:05:06', '2017-10-22 10:05:06'),
(5, '', 33, '2017-10-14', 99, '2017-10-23 07:41:27', '2017-10-23 07:41:27'),
(6, '', 1, '2017-10-12', 10, '2017-10-25 09:57:22', '2017-10-25 09:57:22'),
(7, 'rinso', 10000, '2017-12-01', 121, '2017-12-01 03:41:14', '2017-12-01 03:41:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2017_10_07_151618_create_preeorders_table', 2),
(5, '2017_10_09_145809_create_suppliers_table', 3),
(6, '2017_10_17_023747_create_iventories_table', 4),
(9, '2017_10_26_142233_create_pembelians_table', 7),
(10, '2017_10_29_154501_create_atasans_table', 7),
(11, '2017_10_29_160725_create_bawahans_table', 7),
(12, '2017_11_14_170455_create_orders_table', 8),
(13, '2017_11_14_171559_create_adminhargas_table', 9),
(14, '2017_11_14_172629_create_hargakompetitors_table', 10),
(15, '2017_11_14_174555_create_barangkeluars_table', 11),
(16, '2017_11_22_130948_create_inputhargas_table', 12),
(17, '2017_11_28_081952_create_barangs_table', 13);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('yudispoi@ymail.com', '$2y$10$7YTBUd5MQfjJaI6CwBYpwu1M3NpxgQnfqIWaKHi0E.0fhd29ArdSC', '2017-11-22 03:48:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelians`
--

CREATE TABLE `pembelians` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `preeorders`
--

CREATE TABLE `preeorders` (
  `id` int(10) UNSIGNED NOT NULL,
  `namabarang` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlahbarang` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggalpesan` date NOT NULL,
  `tanggaldatang` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `preeorders`
--

INSERT INTO `preeorders` (`id`, `namabarang`, `nama`, `jumlahbarang`, `tanggalpesan`, `tanggaldatang`, `created_at`, `updated_at`) VALUES
(1, 'nama', '', '', '0000-00-00', '0000-00-00', '2017-10-07 09:30:53', '2017-10-07 09:30:53'),
(2, 'nb', '', 'jb', '1997-01-30', '0000-00-00', '2017-10-07 10:01:18', '2017-10-07 10:01:18'),
(3, 'asd', '', '12', '1994-02-01', '1994-01-21', '2017-10-07 10:21:38', '2017-10-07 10:21:38'),
(4, 'asda', '', '21213', '2017-11-27', '2017-11-27', '2017-11-27 06:47:12', '2017-11-27 06:47:12'),
(5, 'rinso', '', '10', '2017-11-27', '2017-11-27', '2017-11-27 07:33:46', '2017-11-27 07:33:46'),
(6, 'asdad', 'asdasdasd', '2121', '2017-11-05', '2017-11-09', '2017-11-27 07:37:31', '2017-11-27 07:37:31'),
(7, 'rinso', '10', '1', '2017-11-28', '2017-11-28', '2017-11-27 21:52:42', '2017-11-27 21:52:42'),
(8, 'rinos', '10', '1', '2017-11-28', '2017-11-28', '2017-11-27 21:53:58', '2017-11-27 21:53:58'),
(9, 'asd', '10', '1', '2017-11-28', '2017-11-21', '2017-11-27 21:56:10', '2017-11-27 21:56:10'),
(10, 'asd', '10', '1', '2017-11-28', '2017-11-28', '2017-11-27 21:57:45', '2017-11-27 21:57:45'),
(11, 'asdasdasd', 'asdasd', '1', '2017-11-21', '2017-11-28', '2017-11-27 21:59:51', '2017-11-27 21:59:51'),
(12, 'asdawda', '10', '2121212', '2017-11-28', '2017-11-28', '2017-11-28 00:52:32', '2017-11-28 00:52:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kota` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nohp` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `norekening` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `suppliers`
--

INSERT INTO `suppliers` (`id`, `nama`, `alamat`, `kota`, `nohp`, `norekening`, `bank`, `created_at`, `updated_at`) VALUES
(4, '', 'a', 'k', '085258886094', '', '', '2017-10-09 08:20:44', '2017-10-09 08:20:44'),
(5, '', 'a', 'k', '085258886094', '0852588860921', '', '2017-10-09 08:28:53', '2017-10-09 08:28:53'),
(6, '', 'a', 'k', '085258886094', '0852588860921', 'mandiri', '2017-10-09 08:48:40', '2017-10-09 08:48:40'),
(7, '', 'a', 'k', '085258886094', '0852588860921', 'mandiri', '2017-10-09 19:53:23', '2017-10-09 19:53:23'),
(8, '', 'jalanraya', 'mana', '085258886094', '0852588860921', 'mandiri', '2017-11-03 00:06:12', '2017-11-03 00:06:12'),
(9, '', 'bondowoso', 'bonodowoso', '085255541', '1226654696', 'mandiri', '2017-11-27 07:32:12', '2017-11-27 07:32:12'),
(10, 'asdasd', 'asdasda', 'asdad', '156464654', '65654654', 'mandiri', '2017-11-27 07:41:03', '2017-11-27 07:41:03'),
(13, 'asdasdasd', 'asdasda', 'asdasd', '12231', '31321', 'asdasd', '2017-12-08 21:56:45', '2017-12-08 21:56:45'),
(14, 'asdasdasd', 'asdasda', 'asdasd', '23132132', '1321', 'asdasd', '2017-12-08 21:57:02', '2017-12-08 21:57:02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `jabatan` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `jabatan`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'yudis', 'admin', '', 'yudispoi@ymail.com', '$2y$10$v0i3MxIaGZWU0HT/lWLvieHIvwEeY/PBpf0bte2wYoUiGC809f8rW', '3mbramuAkvGOxGCxuTq5V9H8CanUchahbqFkWnYhDLv37bAVunb4WEe12L0j', '2017-10-05 00:25:31', '2017-10-05 00:25:31'),
(2, 'yudhis', 'tira', 'ADMIN', 'yudis367@gmail.com', '$2y$10$pbYt/CNBUQjno9hc63WFzOGuu8c99mHTv99nuQ..miX.dW0Oanybe', 'SOrGykUFRBMT0BOzdLgjfhsnsmGQ3IMDxeY4qIWgHwzKwtmUenlYA8orB92d', '2017-10-29 07:28:48', '2017-10-29 07:28:48'),
(3, 'idok', 'idok2', 'ADMINORDER', 'nuridlo@gmail.com', '$2y$10$OJcuVPzGDI.r23FOF2WdCuz3qc71Zt3y4bF/GeGbZX1zp8HASb5Vq', 'eJDUnLgkWgQjAjYPZpba7POhoK3i64Xuod37wQrgnJ366OhSTSbvSgsnEZHS', '2017-10-29 12:03:17', '2017-10-29 12:03:17'),
(4, 'agus', 'agus1', 'ADMIN', 'agus123@gmail.com', '$2y$10$YjPbImWB0zq.BcSASnzvNuAitZUAAIfdoPFd6.s7BF6tURezJ1ty.', 'PPlzhmi1YFZN5avhe1D23T5SzXEFP5heeC7S5hYpzznOlYNuEfsGgvaEkx3L', '2017-11-05 03:25:02', '2017-11-05 03:25:02'),
(5, 'abu', 'abu1', 'ADMINORDER', 'abubagus@gmail.com', '$2y$10$R2CRFyRUgtJxO/4KAG/36eJE4UXS1HCYTvaR9byB7k1w1fqW8Bqvq', 'Fsh5yscCqcfbJK858Hwfhv4mQq52qgv0LzFVPHDZNcqKOpPZ4rC1vm3wLVYk', '2017-11-06 09:14:06', '2017-11-06 09:14:06'),
(6, 'doki', 'doki1', 'MANAGER', 'dokiagus@ymail.com', '$2y$10$GacnCHu70tiNMDD2HBYwZOOKr4bBf1Wvy8GTv./dO3taCw0T5muQS', 'pIyvNZDhUdwLtWC8IL6seHZzxSr6hyjXfHg8XbKxkiPgU0ZINmbGsVMV4qWl', '2017-11-06 10:27:14', '2017-11-06 10:27:14'),
(7, 'yudis', 'yudis1', 'ADMINHARGA', 'yudispoi@yahoo.com', '$2y$10$h5s..4trvACGFJws2SG4WO8g69emV3bfBlj0dS2Nca2kFVJOxPVmq', 'U0rVQtnC4mlJhVX7istHrsWcpPWsyHgC38Lfps52hxvVcOQ6wWwnHh9245AP', '2017-11-14 10:15:19', '2017-11-14 10:15:19'),
(8, 'manager1', 'manager1', 'MANAGER', 'manager1@yahoo.com', '$2y$10$AL4wJgKTAEqFW2a.pHe.Jela99hJNZKL2naWZIMSl0H8bskRTpWEq', 'tvRJG7hWSAWEqGR7aIkf9RZylmsRzVwsuomVZRbB9EQYv8j5FLYGlgRizlY1', '2017-12-08 21:24:01', '2017-12-08 21:24:01'),
(9, 'adminharga1', 'adminharga1', 'ADMINHARGA', 'adminharga1@yahoo.com', '$2y$10$boY6IUlFhuOLIDlTQZJ4IeAOcSrcGY7pu1TgRrIWHiu8D4QBtdcbW', 'vtY0EUdm0WjqVJ7Q2nvYPLIvEr48SaA4i4F69RusvBMzcQie3IOMVIN7BM0s', '2017-12-08 21:24:38', '2017-12-08 21:24:38'),
(10, 'adminbarang1', 'adminbarang1', 'ADMIN', 'adminbarang1@yahoo.com', '$2y$10$.CgJsWWghrV2Dp9Ql3E39eGKNLfVm/AYhqhKsP5fOtEGPJka8CdJy', 'OIUXutg0aOMBxaXaM39QWrWwlmP1J4grYnzsEO3guF1lw97UY5tyD77wpBYv', '2017-12-08 21:25:21', '2017-12-08 21:25:21'),
(11, 'adminorder1', 'adminorder1', 'ADMINORDER', 'adminorder1@yahoo.com', '$2y$10$uLOo5nNVMClnAzHRkyLbjeI9KHZuikruRbYt3KWBNQznji/xidu9.', 'iHQC4eiJqhAYLeyBqqWhjO1r8Swz2DSl28CXuD0b138cQBMWWayxfLXlM3T1', '2017-12-08 21:25:47', '2017-12-08 21:25:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminhargas`
--
ALTER TABLE `adminhargas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `atasans`
--
ALTER TABLE `atasans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `barangkeluars`
--
ALTER TABLE `barangkeluars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `namabarang` (`namabarang`);

--
-- Indexes for table `bawahans`
--
ALTER TABLE `bawahans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hargajual`
--
ALTER TABLE `hargajual`
  ADD PRIMARY KEY (`id_harga`),
  ADD KEY `namabarang` (`namabarang`);

--
-- Indexes for table `hargakompetitors`
--
ALTER TABLE `hargakompetitors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `namabarang` (`namabarang`);

--
-- Indexes for table `iventories`
--
ALTER TABLE `iventories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `namabarang` (`namabarang`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `pembelians`
--
ALTER TABLE `pembelians`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `preeorders`
--
ALTER TABLE `preeorders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nama` (`nama`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nama` (`nama`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `email` (`email`),
  ADD KEY `email_2` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminhargas`
--
ALTER TABLE `adminhargas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `atasans`
--
ALTER TABLE `atasans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `barangkeluars`
--
ALTER TABLE `barangkeluars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `bawahans`
--
ALTER TABLE `bawahans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hargajual`
--
ALTER TABLE `hargajual`
  MODIFY `id_harga` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `hargakompetitors`
--
ALTER TABLE `hargakompetitors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `iventories`
--
ALTER TABLE `iventories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pembelians`
--
ALTER TABLE `pembelians`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `preeorders`
--
ALTER TABLE `preeorders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD CONSTRAINT `password_resets_ibfk_1` FOREIGN KEY (`email`) REFERENCES `users` (`email`);

--
-- Ketidakleluasaan untuk tabel `suppliers`
--
ALTER TABLE `suppliers`
  ADD CONSTRAINT `suppliers_ibfk_1` FOREIGN KEY (`nama`) REFERENCES `preeorders` (`nama`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
