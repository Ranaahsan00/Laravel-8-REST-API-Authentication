-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2023 at 01:15 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sanctum2`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_12_15_102627_create_products_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(5, 'App\\Models\\User', 2, 'Iphone', '0f9c32ecc93e43c64a973a712508557a038b884f899fa6e0d1e971902891aea9', '[\"*\"]', NULL, '2023-12-15 06:17:10', '2023-12-15 06:17:10'),
(6, 'App\\Models\\User', 3, 'Pa$$w0rd!', '1fea9af8a30107fb2a36b52d9147e493e174eec33bf83d84dcd36fe67ca42f34', '[\"*\"]', NULL, '2023-12-15 06:20:50', '2023-12-15 06:20:50'),
(7, 'App\\Models\\User', 4, 'Pa$$w0rd!', '3959857747a9f9e4a93c6653c94865826264679e81b6aa49037004ca3605705c', '[\"*\"]', NULL, '2023-12-15 06:21:03', '2023-12-15 06:21:03'),
(8, 'App\\Models\\User', 5, 'Ignacia Owens', '04cbea94002dee60f3a1a60161b82cb9424141c1e849b559fc7c3bb683d24a25', '[\"*\"]', NULL, '2023-12-15 06:21:22', '2023-12-15 06:21:22'),
(9, 'App\\Models\\User', 6, 'Ahsan123', 'c8676c8f9180f971b4a6e4e4336de144068740abff98fc0e9febfdf1bf735f9f', '[\"*\"]', NULL, '2023-12-15 06:22:20', '2023-12-15 06:22:20'),
(10, 'App\\Models\\User', 7, 'Paloma Hopkins', '15ef3cf0a5cf054b13403a3d051dd8637b63c7c0b4c81cbc88238533403a4cf0', '[\"*\"]', NULL, '2023-12-15 06:25:14', '2023-12-15 06:25:14'),
(11, 'App\\Models\\User', 8, 'Stella Powers', '06dd99a63db59fa668d263be01f80f4261429450e6c0a4009c2a558e7129dab8', '[\"*\"]', NULL, '2023-12-15 06:50:23', '2023-12-15 06:50:23'),
(12, 'App\\Models\\User', 9, 'Stella Powers', '8e0df6c8da0339ea801367e6b1380a6fecf2c82bdfa6f065b6105fbaaca987ab', '[\"*\"]', NULL, '2023-12-15 06:51:35', '2023-12-15 06:51:35'),
(13, 'App\\Models\\User', 10, 'Deborah Buchanan', '8cbffa4aaf3be2fc6dccdc30e951b6b9cc9e3c2bf6795b3b000e5b363c10bacc', '[\"*\"]', NULL, '2023-12-15 06:53:05', '2023-12-15 06:53:05'),
(14, 'App\\Models\\User', 11, 'Kimberly Barker', '97d7fb2b6ec202f8fdbe374c62677b999d66b2815273f8f358352271614045e4', '[\"*\"]', NULL, '2023-12-15 06:55:37', '2023-12-15 06:55:37'),
(15, 'App\\Models\\User', 12, 'Nomlanga Tucker', 'e8792138592ba013b139e9842421b0e0bcc9dee358c016ad64e91c773fee5da5', '[\"*\"]', NULL, '2023-12-15 06:56:24', '2023-12-15 06:56:24'),
(16, 'App\\Models\\User', 13, 'Xenos Mccormick', 'f095214ba35c959891c3c0475ba2667b013dcef9cf14d4f49d9d9e81f98d88e5', '[\"*\"]', NULL, '2023-12-15 06:57:53', '2023-12-15 06:57:53'),
(17, 'App\\Models\\User', 14, 'Laptop', 'eb32149add227027d42e98a994f796a159b5b6c40d7d974c62c9f12078038df3', '[\"*\"]', NULL, '2023-12-15 07:06:25', '2023-12-15 07:06:25'),
(18, 'App\\Models\\User', 15, 'Laptop', '647e095c07a4e253f5702938c6ec5ca153ed8e80a028490b6a896cfc53bb026f', '[\"*\"]', NULL, '2023-12-15 07:08:49', '2023-12-15 07:08:49');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(15, 'unknown', 'admin@gmail.com', NULL, '$2y$10$TSZHBp/vbEB0.OlOlaufgOX6lovJM5LiqsvvXpa/ePZJdGFBuhknW', NULL, '2023-12-15 07:08:49', '2023-12-15 07:08:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
