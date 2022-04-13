-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 13, 2022 at 07:47 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, NULL, 'admin@gmail.com', '$2y$10$zLrSnQb/z07KPcOHCywRjOQRs02RMgYMO.h7zLkRHjUw.9nIxmOfu', '2021-01-15 21:27:18', '2021-01-16 16:36:21'),
(6, 'Divya Test', 'divya.rane@karvyinfotech.com', 'eyJpdiI6ImgwN1prUTJPaDRlL3Q3aGhNTjUwOEE9PSIsInZhbHVlIjoiS1lKQmVwUFpxQXRyazNQRnBMWTBhbFBlemx0QmovQmhHdFpZWThjVWRDQT0iLCJtYWMiOiJiYTI1Y2VhOWFhYjUwN2QxNDhiYzc5NTc5NjYzYmNkYzc5YmRmOWZkYTgxYTQzMGU3MzI4MTVhYzVkYmE2NzYwIn0=', '2022-04-12 01:37:06', '2022-04-12 01:37:06');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `is_home` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_category_id` int(11) NOT NULL,
  `category_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_home` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_slug`, `parent_category_id`, `category_image`, `is_home`, `status`, `created_at`, `updated_at`) VALUES
(1, '16 Inches', '16-inches', 0, '1613552454.jpg', 1, 1, '2021-02-16 22:00:54', '2021-09-05 07:06:44'),
(2, '18 Inches', '18-inches', 0, '1613553509.jpg', 1, 1, '2021-02-16 22:01:24', '2021-09-05 07:07:01'),
(3, '20 Inches', '20-inches', 0, '1613552512.jpg', 1, 1, '2021-02-16 22:01:52', '2021-09-05 07:07:20'),
(4, '21 Inches', '21-inches', 0, '1613553407.jpg', 1, 1, '2021-02-16 22:16:07', '2021-09-19 02:54:00'),
(5, '24 Inches', '23-inches', 0, NULL, 0, 1, '2021-02-16 22:54:40', '2021-09-19 02:53:42');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gstin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `is_verify` int(11) NOT NULL,
  `is_forgot_password` int(11) DEFAULT NULL,
  `rand_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `mobile`, `password`, `address`, `city`, `state`, `zip`, `company`, `gstin`, `status`, `is_verify`, `is_forgot_password`, `rand_id`, `created_at`, `updated_at`) VALUES
(8, 'Customer', 'customer@gmail.com', '9999999999', '$2y$10$zLrSnQb/z07KPcOHCywRjOQRs02RMgYMO.h7zLkRHjUw.9nIxmOfu', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, '302653259', '2021-03-12 03:09:52', '2021-03-12 03:09:52'),
(47, 'Test Customer', 'testcustomer@gmail.com', '7373737373', 'eyJpdiI6IjVYbEN4RFpEcnkyN2RnUVJvR3JoM2c9PSIsInZhbHVlIjoiMUpJbGl5eDg4emtabDJGbkJ5aGNFZz09IiwibWFjIjoiOTIzYjgwYTUzZjA1NTdkMTYxYTI4ZGRmYzFhNmRjMWZkYzNiOTE2ZTAwZjZlNWU2MDdiYjgzNDJhM2YzYzEyYyJ9', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, '699970572', '2022-04-12 07:00:18', '2022-04-12 07:00:18'),
(48, 'Test Customer', 'testcustomer1@gmail.com', '7373737373', 'eyJpdiI6IkJSQnVwd2lOZUovUEk0Z0NjZDFWbFE9PSIsInZhbHVlIjoiaTV6cUo0Z01NMWNYQk00RHRRV1lndz09IiwibWFjIjoiZjM3NDA3Yjc2N2E3MmRkYTdkODU3MGNjNWI4NjlmNGZmYTZmNTgyMWE5ZGU4NTljZmE1OWEzMjBmMzg2Zjk1NyJ9', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, '180242732', '2022-04-12 07:00:34', '2022-04-12 07:00:34'),
(49, 'Test Customer', 'testcustomer12@gmail.com', '7373737373', 'eyJpdiI6Ik1PWkdzLzlTNWN4TjlQTXkxY2liV1E9PSIsInZhbHVlIjoicHZsYVhMczE2TUdIWHNJc1dIT2ovdz09IiwibWFjIjoiNTRiNDI3NDMyYWQyMTFhOGQzZGUzMjdlMzhhMmQxYjNiMzkwNDQzNTg1YmZjMDZkNzA3ODYyMjA4ZTEyNDNlNSJ9', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, '438767229', '2022-04-12 07:01:37', '2022-04-12 07:01:37');

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
(1, '2021_01_15_211334_create_admins_table', 1),
(4, '2021_01_15_215552_create_categories_table', 2),
(5, '2021_01_20_095632_create_coupons_table', 3),
(10, '2021_01_21_115714_create_ajaxes_table', 4),
(12, '2021_01_26_021550_create_sizes_table', 5),
(13, '2021_01_26_023140_create_colors_table', 6),
(14, '2021_01_28_104722_create_products_table', 7),
(15, '2021_02_03_114909_create_brands_table', 8),
(16, '2021_02_05_082218_create_taxes_table', 9),
(17, '2021_02_08_081113_create_customers_table', 10),
(18, '2021_02_17_200040_create_home_banners_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `technical_specification` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warranty` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `image`, `slug`, `status`, `technical_specification`, `warranty`, `created_at`, `updated_at`) VALUES
(10, NULL, 'Test Product', '1649761437.png', '1000', 1, '<p>test</p>', 'test', '2022-04-12 05:33:57', '2022-04-12 07:23:26'),
(11, NULL, 'Product 2', '1649761618.jpg', '2000', 1, '<p>test 2</p>', 'test 23', '2022-04-12 05:36:58', '2022-04-12 07:23:44'),
(12, NULL, 'Product 3', '1649761666.jpg', '3400', 1, '<p>test 34</p>', 'test 74', '2022-04-12 05:37:46', '2022-04-12 07:23:46'),
(13, NULL, 'Product 4', '1649761703.jpg', '8300', 1, '<p>test 273t</p>', 'test 23784y', '2022-04-12 05:38:23', '2022-04-12 07:23:48'),
(14, NULL, 'Product 5', '1649761738.jpg', '8787', 1, '<p>tes spec</p>', 'test warrenty', '2022-04-12 05:38:58', '2022-04-12 07:23:50'),
(15, NULL, 'Product 6', '1649761798.jpg', '9000', 1, '<p>tes test</p>', 'gest', '2022-04-12 05:39:58', '2022-04-12 07:23:52');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `images` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `products_id`, `images`) VALUES
(1, 1, '879740052.png'),
(6, 1, '382472298.png'),
(8, 1, '313273592.png'),
(9, 2, '437933269.jpg'),
(10, 2, '756429791.jpg'),
(11, 2, '237782346.jpg'),
(12, 3, '881575209.jpg'),
(13, 3, '231768561.jpg'),
(14, 3, '390989357.jpg'),
(15, 4, '639305595.jpg'),
(16, 4, '168359964.jpg'),
(17, 4, '540313962.jpg'),
(18, 5, '876514555.jpg'),
(19, 5, '792042909.jpg'),
(20, 5, '208236277.jpg'),
(21, 7, '645394478.jpg'),
(22, 7, '625713002.jpg'),
(23, 7, '812196406.jpg'),
(24, 8, '136958272.jpg'),
(25, 8, '631742278.jpg'),
(26, 8, '608122795.jpg'),
(27, 9, '405072381.jpg'),
(28, 9, '909923368.jpg'),
(29, 9, '398645251.jpg'),
(30, 1, '999998716.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
