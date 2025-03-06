-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 05, 2025 at 02:32 AM
-- Server version: 8.4.3
-- PHP Version: 8.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skm3`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'ciwawa', 'ciwawawa');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jawaban`
--

CREATE TABLE `jawaban` (
  `id_jawaban` int NOT NULL,
  `deskripsi` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nilai_jawaban` int DEFAULT NULL,
  `id_pertanyaan` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jawaban`
--

INSERT INTO `jawaban` (`id_jawaban`, `deskripsi`, `nilai_jawaban`, `id_pertanyaan`) VALUES
(25, 'Tidak Mudah', 1, 8),
(26, 'Kurang Mudah', 2, 8),
(27, 'Mudah', 3, 8),
(28, 'Sangat Mudah', 4, 8),
(29, 'Tidak cepat', 1, 9),
(30, 'Kurang cepat', 2, 9),
(31, 'Cepat', 3, 9),
(32, 'Sangat cepat', 4, 9),
(33, 'Sangat mahal', 1, 10),
(34, 'Cukup Mahal', 2, 10),
(35, 'Murah', 3, 10),
(36, 'Gratis', 4, 10),
(37, 'Tidak Sesuai', 1, 11),
(38, 'Kurang Sesuai', 2, 11),
(39, 'Sesuai', 3, 11),
(40, 'Sangat Sesuai', 4, 11),
(41, 'Tidak Kompeten', 1, 12),
(42, 'Kurang Kompeten', 2, 12),
(43, 'Kompeten', 3, 12),
(44, 'Sangat Kompeten', 4, 12),
(45, 'Tidak Sopan dan Ramah', 1, 13),
(46, 'Kurang Sopan dan Ramah', 2, 13),
(47, 'Sopan dan Ramah', 3, 13),
(48, 'Sangat sopan dan Ramah', 4, 13),
(49, 'Buruk', 1, 14),
(50, 'Cukup', 2, 14),
(51, 'Baik', 3, 14),
(52, 'Sangat Baik', 4, 14),
(53, 'Tidak Ada', 1, 15),
(54, 'Ada Tetapu Tidak Berfungsi', 2, 15),
(55, 'Berfungsi Kurang Maksimal', 3, 15),
(56, 'Dikelola Dengan Baik', 4, 15);

-- --------------------------------------------------------

--
-- Table structure for table `jenis_kelamin`
--

CREATE TABLE `jenis_kelamin` (
  `id_jenis_kelamin` int NOT NULL,
  `jenis_kelamin` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jenis_kelamin`
--

INSERT INTO `jenis_kelamin` (`id_jenis_kelamin`, `jenis_kelamin`) VALUES
(1, 'laki-laki'),
(2, 'Perempuan');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_03_01_161856_create_personal_access_tokens_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pekerjaan`
--

CREATE TABLE `pekerjaan` (
  `id_pekerjaan` int NOT NULL,
  `pekerjaan` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pekerjaan`
--

INSERT INTO `pekerjaan` (`id_pekerjaan`, `pekerjaan`) VALUES
(1, 'PNS/TNI/POLRI'),
(2, 'Pegawai Swasta'),
(3, 'Wiraswasta'),
(4, 'Pelajar/Mahasiswa'),
(5, 'Lainnya');

-- --------------------------------------------------------

--
-- Table structure for table `pendidikan`
--

CREATE TABLE `pendidikan` (
  `id_pendidikan` int NOT NULL,
  `pendidikan` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pendidikan`
--

INSERT INTO `pendidikan` (`id_pendidikan`, `pendidikan`) VALUES
(1, 'Sekolah Dasar/MI/Paket A'),
(2, 'Sekolah Lanjutan Tingkat Perta'),
(3, 'SMA/MA/Paket C'),
(4, 'Strata 1'),
(5, 'Strata 2 '),
(6, 'Strata 3');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'auth_token', '28b2a3e21431d629516e6fb6ed829690374cb2a929fff81ef2d42ffccdee9214', '[\"*\"]', '2025-03-01 10:05:57', NULL, '2025-03-01 10:03:58', '2025-03-01 10:05:57'),
(2, 'App\\Models\\User', 1, 'auth_token', 'ea9f9d92a00d006fd718ffdafd55f2aaf66ef4e23aaf9efee34767d482e9b448', '[\"*\"]', NULL, NULL, '2025-03-01 10:04:45', '2025-03-01 10:04:45'),
(3, 'App\\Models\\User', 1, 'auth_token', 'a596ab74a4847183e40c7e773c50d3e6c6111db6278270127012bd422970ebb2', '[\"*\"]', '2025-03-01 10:32:08', NULL, '2025-03-01 10:08:58', '2025-03-01 10:32:08'),
(4, 'App\\Models\\User', 1, 'auth_token', '61d95dc2e027e927b2633efbcbd567177dc369714a89d3e94edbe9f023767139', '[\"*\"]', NULL, NULL, '2025-03-01 10:33:01', '2025-03-01 10:33:01'),
(5, 'App\\Models\\User', 1, 'auth_token', '9f341dd7ecded4af2ed01697e7285452293ff9343743c67da6d944f2c7033fd6', '[\"*\"]', NULL, NULL, '2025-03-01 10:46:59', '2025-03-01 10:46:59'),
(6, 'App\\Models\\User', 1, 'auth_token', '9d7a26cd9e1d8be524020600cf56a580c2bf376b440e12d4b1c4d420b8740fb3', '[\"*\"]', NULL, NULL, '2025-03-02 19:00:32', '2025-03-02 19:00:32'),
(7, 'App\\Models\\User', 1, 'auth_token', '5c1356ab154ac4b26c22e33dea998de7c1da67d0ae3fc7aeef5b6d497fa4ac1d', '[\"*\"]', NULL, NULL, '2025-03-02 19:04:01', '2025-03-02 19:04:01'),
(8, 'App\\Models\\User', 1, 'auth_token', 'dab22bbbc76d47e98b8a1f797969498e9f7be46f5a8e8ff8aa90c33b7e51dca9', '[\"*\"]', NULL, NULL, '2025-03-02 19:04:02', '2025-03-02 19:04:02'),
(9, 'App\\Models\\User', 1, 'auth_token', '8f6d415dbab38ae6d24b04883a33bdea27259257f03b37b88ee6169b62cd5c3b', '[\"*\"]', NULL, NULL, '2025-03-02 19:47:20', '2025-03-02 19:47:20'),
(10, 'App\\Models\\User', 1, 'auth_token', '65720ae7c8ef4b472526a213758ebbfea007644e0346b3b2338191d1c84a8d62', '[\"*\"]', NULL, NULL, '2025-03-02 19:51:47', '2025-03-02 19:51:47'),
(11, 'App\\Models\\User', 1, 'auth_token', '6cf0b91ff6ed1e2c523f3f37eede3112201290fe7fd617705c2add9c880846cc', '[\"*\"]', NULL, NULL, '2025-03-04 09:13:39', '2025-03-04 09:13:39'),
(12, 'App\\Models\\User', 1, 'auth_token', '53c4b6102277f76b198e027495e66ed0e4a8f2a0777f07cf626590926a76509f', '[\"*\"]', NULL, NULL, '2025-03-04 09:17:08', '2025-03-04 09:17:08');

-- --------------------------------------------------------

--
-- Table structure for table `pertanyaan`
--

CREATE TABLE `pertanyaan` (
  `id_pertanyaan` int NOT NULL,
  `pertanyaan` text COLLATE utf8mb4_general_ci NOT NULL,
  `unsur_id_unsur` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pertanyaan`
--

INSERT INTO `pertanyaan` (`id_pertanyaan`, `pertanyaan`, `unsur_id_unsur`) VALUES
(8, 'Bagaimana pendapat Saudara tentang kesesuaian persyaratan pelayanan dengan jenis pelayanannya.', 1),
(9, 'Bagaimana pendapat Saudara tentang kecepatan waktu dalam memberikan pelayanan.', 3),
(10, 'Bagaimana pendapat Saudara tentang kewajaran biaya/tarif dalam pelayanan unit ini.', 9),
(11, 'Bagaimana pendapat Saudara tentang kesesuaian produk pelayanan antara yang tercantum dalam standar pelayanan dengan hasil yang diberikan.', 4),
(12, 'Bagaimana pendapat Saudara tentang kompetensi/ kemampuan petugas dalam pelayanan.', 5),
(13, 'Bagamana pendapat saudara perilaku petugas dalam pelayanan terkait kesopanan dan keramahan', 6),
(14, 'Bagaimana pendapat Saudara tentang kualitas sarana dan prasarana', 7),
(15, 'Bagaimana pendapat Saudara tentang penanganan pengaduan pengguna layanan', 8);

-- --------------------------------------------------------

--
-- Table structure for table `responden`
--

CREATE TABLE `responden` (
  `id_responden` int NOT NULL,
  `jenis_kelamin_id_jenis_kelamin` int DEFAULT NULL,
  `usia_id_usia` int DEFAULT NULL,
  `pekerjaan_id_pekerjaan` int DEFAULT NULL,
  `pendidikan_id_pendidikan` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `saran` text COLLATE utf8mb4_general_ci,
  `jawaban_id_jawaban` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `responden`
--

INSERT INTO `responden` (`id_responden`, `jenis_kelamin_id_jenis_kelamin`, `usia_id_usia`, `pekerjaan_id_pekerjaan`, `pendidikan_id_pendidikan`, `created_at`, `saran`, `jawaban_id_jawaban`) VALUES
(25, 1, 2, 5, 2, '2025-02-18 06:28:14', 'hehehe', NULL),
(30, 2, 2, 2, 2, '2025-02-19 06:22:38', NULL, NULL),
(31, 1, 2, 2, 2, '2025-02-25 03:33:19', 'asasa', NULL),
(32, 2, 2, 1, 2, '2025-03-01 13:56:59', 'gcb', NULL),
(33, 1, 1, 1, 2, '2025-03-01 14:01:53', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text,
  `payload` longtext NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('XmCPBOxUHszk7dndeOthKv9vp7h945VYsUA3Ghu0', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYUI0RjFtNkhWZ09QcXl4NGpCcHJFOHY0b3ljdVluRWtWTTdhejdmMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1740845771);

-- --------------------------------------------------------

--
-- Table structure for table `survey`
--

CREATE TABLE `survey` (
  `id_survey` int NOT NULL,
  `pertanyaan_id_pertanyaan` int DEFAULT NULL,
  `jawaban_id_jawaban` int DEFAULT NULL,
  `submitted_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `responden_id_responden` int DEFAULT NULL,
  `id_unit` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `survey`
--

INSERT INTO `survey` (`id_survey`, `pertanyaan_id_pertanyaan`, `jawaban_id_jawaban`, `submitted_at`, `responden_id_responden`, `id_unit`) VALUES
(13, 8, 27, '2025-02-18 06:28:14', 25, 1),
(16, 8, 26, '2025-02-25 03:33:19', 31, 1),
(17, 9, 31, '2025-02-25 03:33:19', 31, 1),
(18, 10, 35, '2025-02-25 03:33:19', 31, 1),
(19, 11, 39, '2025-02-25 03:33:19', 31, 1),
(20, 12, 43, '2025-02-25 03:33:19', 31, 1),
(21, 13, 47, '2025-02-25 03:33:19', 31, 1),
(22, 14, 52, '2025-02-25 03:33:19', 31, 1),
(23, 15, 56, '2025-02-25 03:33:19', 31, 1),
(24, 8, 26, '2025-03-01 13:56:59', 32, 1),
(25, 9, 31, '2025-03-01 13:56:59', 32, 1),
(26, 10, 36, '2025-03-01 13:56:59', 32, 1),
(27, 11, 40, '2025-03-01 13:56:59', 32, 1),
(28, 12, 44, '2025-03-01 13:56:59', 32, 1),
(29, 13, 46, '2025-03-01 13:56:59', 32, 1),
(30, 14, 50, '2025-03-01 13:56:59', 32, 1),
(31, 15, 54, '2025-03-01 13:56:59', 32, 1);

-- --------------------------------------------------------

--
-- Table structure for table `unit`
--

CREATE TABLE `unit` (
  `id_unit` int NOT NULL,
  `nama_unit` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `unit`
--

INSERT INTO `unit` (`id_unit`, `nama_unit`) VALUES
(1, 'DINAS PERPUSTAKAAN DAN KEARSIPAN'),
(2, 'PELAYANAN');

-- --------------------------------------------------------

--
-- Table structure for table `unsur`
--

CREATE TABLE `unsur` (
  `id_unsur` int NOT NULL,
  `unsur` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `unsur`
--

INSERT INTO `unsur` (`id_unsur`, `unsur`) VALUES
(1, 'Persyaratan'),
(2, 'Prosedur'),
(3, 'Waktu Pelayanan'),
(4, 'Produk Spesifikasi Jenis Pelayanan'),
(5, 'Kopetensi Pelaksanaan'),
(6, 'Perilaku Pelaksanaan'),
(7, 'Maklumat Pelayanan'),
(8, 'Penanganan Pengaduan, Saran dan Masukkan'),
(9, 'Kesesuaian Biaya Pelayanan');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', NULL, '$2y$12$SYZHanbxrteT..2E7ubhOOnks7N3cfZXeK7eAaVtUo9O7YNZwzFpm', NULL, '2025-03-01 10:03:58', '2025-03-01 10:03:58');

-- --------------------------------------------------------

--
-- Table structure for table `usia`
--

CREATE TABLE `usia` (
  `id_usia` int NOT NULL,
  `rentang` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `nilai` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usia`
--

INSERT INTO `usia` (`id_usia`, `rentang`, `nilai`) VALUES
(1, 'Dibawah 20 Tahun', 1),
(2, '21 s.d 30 Tahun', 2),
(3, '31 s.d 40 Tahun', 3),
(4, '41 s.d 50 tahun', 4),
(5, '50 tahun keatas', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jawaban`
--
ALTER TABLE `jawaban`
  ADD PRIMARY KEY (`id_jawaban`),
  ADD KEY `jawaban_pertanyaan_FK` (`id_pertanyaan`);

--
-- Indexes for table `jenis_kelamin`
--
ALTER TABLE `jenis_kelamin`
  ADD PRIMARY KEY (`id_jenis_kelamin`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pekerjaan`
--
ALTER TABLE `pekerjaan`
  ADD PRIMARY KEY (`id_pekerjaan`);

--
-- Indexes for table `pendidikan`
--
ALTER TABLE `pendidikan`
  ADD PRIMARY KEY (`id_pendidikan`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pertanyaan`
--
ALTER TABLE `pertanyaan`
  ADD PRIMARY KEY (`id_pertanyaan`),
  ADD KEY `pertanyaan_unsur_FK` (`unsur_id_unsur`);

--
-- Indexes for table `responden`
--
ALTER TABLE `responden`
  ADD PRIMARY KEY (`id_responden`),
  ADD KEY `responden_jenis_kelamin_FK` (`jenis_kelamin_id_jenis_kelamin`),
  ADD KEY `responden_usia_FK` (`usia_id_usia`),
  ADD KEY `responden_pekerjaan_FK` (`pekerjaan_id_pekerjaan`),
  ADD KEY `responden_pendidikan_FK` (`pendidikan_id_pendidikan`),
  ADD KEY `responden_jawaban_FK` (`jawaban_id_jawaban`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `survey`
--
ALTER TABLE `survey`
  ADD PRIMARY KEY (`id_survey`),
  ADD KEY `survey_jawaban_FK` (`jawaban_id_jawaban`),
  ADD KEY `survey_responden_FK` (`responden_id_responden`),
  ADD KEY `survey_unit_FK` (`id_unit`),
  ADD KEY `survey_pertanyaan_FK` (`pertanyaan_id_pertanyaan`);

--
-- Indexes for table `unit`
--
ALTER TABLE `unit`
  ADD PRIMARY KEY (`id_unit`);

--
-- Indexes for table `unsur`
--
ALTER TABLE `unsur`
  ADD PRIMARY KEY (`id_unsur`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `usia`
--
ALTER TABLE `usia`
  ADD PRIMARY KEY (`id_usia`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jawaban`
--
ALTER TABLE `jawaban`
  MODIFY `id_jawaban` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `jenis_kelamin`
--
ALTER TABLE `jenis_kelamin`
  MODIFY `id_jenis_kelamin` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pekerjaan`
--
ALTER TABLE `pekerjaan`
  MODIFY `id_pekerjaan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pendidikan`
--
ALTER TABLE `pendidikan`
  MODIFY `id_pendidikan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `pertanyaan`
--
ALTER TABLE `pertanyaan`
  MODIFY `id_pertanyaan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `responden`
--
ALTER TABLE `responden`
  MODIFY `id_responden` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `survey`
--
ALTER TABLE `survey`
  MODIFY `id_survey` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `unit`
--
ALTER TABLE `unit`
  MODIFY `id_unit` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `unsur`
--
ALTER TABLE `unsur`
  MODIFY `id_unsur` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `usia`
--
ALTER TABLE `usia`
  MODIFY `id_usia` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jawaban`
--
ALTER TABLE `jawaban`
  ADD CONSTRAINT `jawaban_pertanyaan_FK` FOREIGN KEY (`id_pertanyaan`) REFERENCES `pertanyaan` (`id_pertanyaan`);

--
-- Constraints for table `pertanyaan`
--
ALTER TABLE `pertanyaan`
  ADD CONSTRAINT `pertanyaan_unsur_FK` FOREIGN KEY (`unsur_id_unsur`) REFERENCES `unsur` (`id_unsur`);

--
-- Constraints for table `responden`
--
ALTER TABLE `responden`
  ADD CONSTRAINT `responden_jawaban_FK` FOREIGN KEY (`jawaban_id_jawaban`) REFERENCES `jawaban` (`id_jawaban`),
  ADD CONSTRAINT `responden_jenis_kelamin_FK` FOREIGN KEY (`jenis_kelamin_id_jenis_kelamin`) REFERENCES `jenis_kelamin` (`id_jenis_kelamin`),
  ADD CONSTRAINT `responden_pekerjaan_FK` FOREIGN KEY (`pekerjaan_id_pekerjaan`) REFERENCES `pekerjaan` (`id_pekerjaan`),
  ADD CONSTRAINT `responden_pendidikan_FK` FOREIGN KEY (`pendidikan_id_pendidikan`) REFERENCES `pendidikan` (`id_pendidikan`),
  ADD CONSTRAINT `responden_usia_FK` FOREIGN KEY (`usia_id_usia`) REFERENCES `usia` (`id_usia`);

--
-- Constraints for table `survey`
--
ALTER TABLE `survey`
  ADD CONSTRAINT `survey_pertanyaan_FK` FOREIGN KEY (`pertanyaan_id_pertanyaan`) REFERENCES `pertanyaan` (`id_pertanyaan`) ON DELETE CASCADE,
  ADD CONSTRAINT `survey_responden_FK` FOREIGN KEY (`responden_id_responden`) REFERENCES `responden` (`id_responden`),
  ADD CONSTRAINT `survey_unit_FK` FOREIGN KEY (`id_unit`) REFERENCES `unit` (`id_unit`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
