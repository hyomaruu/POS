-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Feb 2020 pada 05.11
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lsp1`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `image_name`, `description`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Makanan Ringan', '6446d4c4-852e-42ec-b814-bcaaa1d0c5b0.jpeg', 'Xixixixixixi', 'makanan-ringan', '2019-11-22 20:54:05', '2019-11-23 21:16:11', NULL),
(2, 'Minuman', '750x500-upnormal-hadirkan-minuman-terbaru-yang-wajib-segera-diburu-1901163.jpg', 'awkokwokwokowko', 'minuman', '2020-02-09 23:32:48', '2020-02-09 23:32:48', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('Walk-in','Eceran','Retail','Dropshipper') COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `kota` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provinsi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `image_name`, `role`, `alamat`, `kota`, `provinsi`, `created_at`, `updated_at`) VALUES
(1, 'Walk-in Customer', 'cust@gmail.com', '0813213215', 'LOGO TECHNOBRAIN FIX.png', 'Walk-in', 'Jl. SMEA 6', 'Jakarta Timur', 'Jakarta', '2019-11-22 23:56:02', '2019-11-22 23:56:02'),
(2, 'Abdurrahman', 'cust@gmail.com', '0813213215', 'WhatsApp Image 2019-02-03 at 4.33.26 PM.jpeg', 'Walk-in', 'Jl. SMEA 6', 'Jakarta Timur', 'Jakarta', '2019-11-22 23:57:12', '2019-11-22 23:57:12'),
(3, 'Abid Fakhri', 'abidfakhri007@gmail.com', '08124123', 'WhatsApp Image 2019-08-18 at 18.51.37 (1).jpeg', 'Retail', 'Jl Provinsi', 'DKI Jakarta', 'aceh', '2019-11-23 18:23:41', '2019-11-23 18:23:41'),
(4, 'Rahadya Pandu Wiryawan', 'auahgelap@gmail.com', '0812801293123', 'images.jpg', 'Retail', 'di jalan itu samping rumah tetangga dan punya atap', 'Jakarta Selatan', 'Jakarta', '2020-02-09 23:39:08', '2020-02-09 23:39:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `discounts`
--

CREATE TABLE `discounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `amount` double(8,2) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `discounts`
--

INSERT INTO `discounts` (`id`, `product_id`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(2, 1, 5.00, 1, '2019-11-22 23:23:20', '2019-11-22 23:23:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_07_16_031641_modify_users_table', 2),
(4, '2019_07_19_010107_create_table_siswa', 2),
(5, '2019_07_23_014713_create_table_customer', 2),
(6, '2019_07_23_014712_create_categories_table', 3),
(7, '2019_07_23_014715_create_products_table', 3),
(8, '2019_07_24_011943_create_table_payment_methods', 4),
(9, '2019_07_24_011944_create_orders_table', 5),
(10, '2019_07_24_011945_create_order_details_table', 6),
(11, '2019_07_24_020643_modify_categories_table2', 7),
(12, '2019_07_24_055328_add_kembalian_column', 7),
(13, '2019_11_23_031122_modify_users', 8),
(14, '2019_11_23_033207_modiy_deleted_at', 9),
(15, '2019_11_23_040025_modify_orders_table', 10),
(16, '2019_11_23_040235_modify_product_table', 11),
(17, '2019_11_23_040906_create_discount_table', 12),
(18, '2019_11_23_080333_add_ppn_column_to_order_detail', 13);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `total` double(8,2) NOT NULL,
  `total_ppn` float NOT NULL,
  `bayar` double(8,2) NOT NULL,
  `kembalian` double(8,2) NOT NULL,
  `payment_method_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `invoice`, `user_id`, `total`, `total_ppn`, `bayar`, `kembalian`, `payment_method_id`, `customer_id`, `created_at`, `updated_at`) VALUES
(1, 'f6fd4f20-1da4-4ae1-8ef6-60ec13fa2532', 1, 100000.00, 0, 150000.00, 45000.00, 1, 2, '2019-11-23 00:07:59', '2019-11-23 00:07:59'),
(2, 'a2bec555-b0a6-4a16-8619-7915c563bedb', 2, 100000.00, 0, 200000.00, 95000.00, 1, 1, '2019-11-23 00:42:10', '2019-11-23 00:42:10'),
(6, '6a383b64-e4ca-4459-b268-196a3a356634', 1, 105000.00, 0, 105000.00, 0.00, 1, 1, '2019-11-23 01:05:49', '2019-11-23 01:05:49'),
(7, 'b0291727-9239-4b19-b26b-1382c612e25d', 1, 210000.00, 0, 210000.00, 0.00, 1, 2, '2019-10-23 17:22:28', '2019-11-23 17:22:28'),
(8, '91dbcec9-24ff-4854-a3a7-bb505da87ac2', 1, 15000.00, 0, 6000.00, 0.00, 1, 2, '2019-11-23 17:27:17', '2019-11-23 17:27:17'),
(9, '1c079ebb-0185-4b80-ba72-30a8337d8382', 1, 106400.00, 5200, 200000.00, 93800.00, 1, 1, '2019-11-23 18:35:38', '2019-11-23 18:35:38'),
(10, 'e21fc837-809f-4590-9c6f-e53c646a4c93', 1, 15000.00, 1000, 6000.00, 0.00, 1, 3, '2019-11-23 19:15:34', '2019-11-23 19:15:34'),
(11, '837bffd0-54aa-4d9f-ae16-0deab199f2fa', 1, 105600.00, 5100, 150000.00, 44400.00, 1, 1, '2019-11-23 20:03:20', '2019-11-23 20:03:20'),
(12, '0253baaa-9779-4750-9f01-96d17bb0f8cf', 1, 8400.00, 700, 5000.00, 800.00, 1, 1, '2019-11-23 20:36:17', '2019-11-23 20:36:17'),
(13, '84aa5c04-c23d-49dd-98ac-3a7f29720fc5', 1, 8400.00, 700, 5000.00, 800.00, 1, 1, '2019-11-23 20:36:29', '2019-11-23 20:36:29'),
(14, '06b22488-a3ec-4d81-b41f-b697ceb92b06', 1, 1400.00, 200, 1200.00, 0.00, 1, 1, '2019-11-23 20:38:25', '2019-11-23 20:38:25'),
(15, 'd121b81e-c9ec-472b-9733-6b17346bf6a2', 2, 2400.00, 300, 2000.00, 200.00, 1, 1, '2019-11-23 20:43:59', '2019-11-23 20:43:59'),
(16, '103aa8a5-b5be-4df9-afbc-db040b4313e6', 1, 600.00, 100, 2000.00, 1400.00, 1, 2, '2019-11-23 21:31:47', '2019-11-23 21:31:47'),
(17, 'cfc69d37-2723-4a68-beaf-952c809102ba', 1, 50000.00, 2000, 12000.00, 0.00, 1, 1, '2019-11-24 02:43:13', '2019-11-24 02:43:13'),
(18, 'b3053d23-e96e-4ecc-9568-c72fb7f7c517', 3, 20400.00, 1200, 10000.00, 2800.00, 1, 3, '2020-02-08 01:01:21', '2020-02-08 01:01:21'),
(19, '533361e4-2aff-4f87-b4dd-b7f3032be3f0', 2, 15000.00, 1000, 10000.00, 4000.00, 1, 2, '2020-02-09 22:11:12', '2020-02-09 22:11:12'),
(20, 'c3c339b0-bf4d-4dba-bc63-50e5aabda6f8', 3, 150000.00, 10000, 120000.00, 10000.00, 1, 3, '2020-02-09 23:35:47', '2020-02-09 23:35:48'),
(21, 'f6667631-06fc-4110-9831-63fa4bda42e9', 3, 105000.00, 3000, 20000.00, 2000.00, 1, 4, '2020-02-09 23:41:06', '2020-02-09 23:41:06'),
(22, '63fb1f1d-4f29-438d-92d1-7b5aab3cbd8f', 3, 150000.00, 10000, 150000.00, 40000.00, 1, 4, '2020-02-09 23:42:38', '2020-02-09 23:42:38'),
(23, '76f011fb-a7d5-4e96-a6f0-7765cd6ea85c', 3, 20000.00, 0.1, 50000.00, 28000.00, 1, 3, '2020-02-10 00:14:58', '2020-02-10 00:14:58'),
(24, 'e836654c-a421-4198-97de-d12071bae4a6', 3, 150000.00, 10000, 150000.00, 40000.00, 1, 4, '2020-02-10 00:15:59', '2020-02-10 00:15:59'),
(25, 'c26f4b9c-32e7-40b6-b1b9-56403c63ebcf', 3, 10000.00, 0.1, 150000.00, 40000.00, 1, 4, '2020-02-10 00:17:49', '2020-02-10 00:17:49'),
(26, '98c713b0-d699-4e02-8923-0e37497b8ea0', 3, 112000.00, 8000, 100000.00, 12000.00, 1, 4, '2020-02-10 00:19:23', '2020-02-10 00:19:23'),
(27, '81ca471c-f889-46e0-85a5-d0263203e3c9', 3, 30000.00, 10000, 150000.00, 40000.00, 1, 4, '2020-02-10 00:20:05', '2020-02-10 00:20:05'),
(28, '8c30690e-14bb-482a-a7b3-195e96504f63', 3, 50000.00, 2000, 20000.00, 8000.00, 1, 4, '2020-02-10 00:21:51', '2020-02-10 00:21:51'),
(29, '330993ce-4ef3-410e-9120-278004cdba9a', 3, 50000.00, 2000, 15000.00, 3000.00, 1, 4, '2020-02-10 00:23:09', '2020-02-10 00:23:09'),
(30, 'b5b5fdbe-9807-4305-b01b-45ae0a86a949', 3, 26000.00, 6000, 100000.00, 34000.00, 1, 4, '2020-02-10 00:24:57', '2020-02-10 00:24:57'),
(31, 'a72bb4eb-bca0-4fe5-86d3-42c501f062a9', 3, 30000.00, 10000, 150000.00, 40000.00, 1, 1, '2020-02-10 00:29:27', '2020-02-10 00:29:28'),
(32, '3736d66e-86ae-49d5-829b-11096c4baf8e', 3, 22000.00, 2000, 25000.00, 3000.00, 1, 1, '2020-02-10 00:32:52', '2020-02-10 00:32:52'),
(33, '428b5e9b-55a2-4850-8c2f-843d6c89b4a2', 3, 110000.00, 0.1, 150000.00, 40000.00, 1, 1, '2020-02-10 00:39:59', '2020-02-10 00:39:59'),
(34, '5d54ea77-6bf2-4695-8fbd-f3c337f33880', 3, 88000.00, 0.1, 100000.00, 12000.00, 1, 1, '2020-02-10 00:42:09', '2020-02-10 00:42:09'),
(35, 'b70152df-b84d-46b2-8807-452f7c2add53', 3, 22000.00, 0.1, 25000.00, 3000.00, 1, 1, '2020-02-10 01:05:19', '2020-02-10 01:05:20'),
(36, '91c17e28-ab7a-4766-922d-9ca460106e64', 3, 110000.00, 0.1, 150000.00, 40000.00, 1, 1, '2020-02-10 01:06:16', '2020-02-10 01:06:16'),
(37, '8d49d054-b859-4b27-9f8d-56f53609653c', 3, 66000.00, 0.1, 68000.00, 2000.00, 1, 1, '2020-02-10 01:10:12', '2020-02-10 01:10:13'),
(38, '7771a616-8c3e-40bc-8cb3-6a657136f775', 3, 44000.00, 0.1, 50000.00, 6000.00, 1, 1, '2020-02-10 01:11:49', '2020-02-10 01:11:50'),
(39, 'ce9fe45d-b239-4027-a6cc-f23af22d7f05', 3, 88000.00, 0.1, 100000.00, 12000.00, 1, 1, '2020-02-10 01:15:29', '2020-02-10 01:15:29'),
(40, 'a8894933-40d7-4fd7-8198-8ba85448b698', 3, 44000.00, 0.1, 50000.00, 6000.00, 1, 4, '2020-02-10 18:41:18', '2020-02-10 18:41:18'),
(41, 'bdabc4fb-2f9c-411d-bcf2-db16a748fe5f', 3, 6000.00, 0.2, 10000.00, 4000.00, 1, 1, '2020-02-10 18:41:58', '2020-02-10 18:41:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double(8,2) NOT NULL,
  `subtotal` double(8,2) NOT NULL,
  `ppn` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `quantity`, `price`, `subtotal`, `ppn`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 100000.00, 100000.00, 0.00, '2019-11-23 00:07:59', '2019-11-23 00:07:59'),
(2, 2, 1, 1, 100000.00, 100000.00, 0.00, '2019-11-23 00:42:10', '2019-11-23 00:42:10'),
(3, 6, 1, 1, 105000.00, 105000.00, 5000.00, '2019-11-23 01:05:49', '2019-11-23 01:05:49'),
(4, 7, 1, 2, 105000.00, 210000.00, 5000.00, '2019-10-23 17:22:28', '2019-11-23 17:22:28'),
(5, 8, 2, 10, 1500.00, 15000.00, 1000.00, '2019-11-23 17:27:17', '2019-11-23 17:27:17'),
(6, 9, 1, 1, 105000.00, 105000.00, 5000.00, '2019-11-23 18:35:38', '2019-11-23 18:35:38'),
(7, 9, 2, 2, 700.00, 1400.00, 200.00, '2019-11-23 18:35:38', '2019-11-23 18:35:38'),
(8, 10, 2, 10, 1500.00, 15000.00, 1000.00, '2019-11-23 19:15:34', '2019-11-23 19:15:34'),
(9, 11, 1, 1, 105000.00, 105000.00, 5000.00, '2019-11-23 20:03:20', '2019-11-23 20:03:20'),
(10, 11, 2, 1, 600.00, 600.00, 100.00, '2019-11-23 20:03:20', '2019-11-23 20:03:20'),
(11, 12, 2, 7, 1200.00, 8400.00, 700.00, '2019-11-23 20:36:17', '2019-11-23 20:36:17'),
(12, 13, 2, 7, 1200.00, 8400.00, 700.00, '2019-11-23 20:36:29', '2019-11-23 20:36:29'),
(13, 14, 2, 2, 700.00, 1400.00, 200.00, '2019-11-23 20:38:25', '2019-11-23 20:38:25'),
(14, 15, 2, 3, 800.00, 2400.00, 300.00, '2019-11-23 20:43:59', '2019-11-23 20:43:59'),
(15, 16, 2, 1, 600.00, 600.00, 100.00, '2019-11-23 21:31:47', '2019-11-23 21:31:47'),
(16, 17, 2, 20, 2500.00, 50000.00, 2000.00, '2019-11-24 02:43:13', '2019-11-24 02:43:13'),
(17, 18, 2, 12, 1700.00, 20400.00, 1200.00, '2020-02-08 01:01:21', '2020-02-08 01:01:21'),
(18, 19, 2, 10, 1500.00, 15000.00, 1000.00, '2020-02-09 22:11:12', '2020-02-09 22:11:12'),
(19, 20, 3, 5, 30000.00, 150000.00, 10000.00, '2020-02-09 23:35:47', '2020-02-09 23:35:47'),
(20, 21, 2, 30, 3500.00, 105000.00, 3000.00, '2020-02-09 23:41:06', '2020-02-09 23:41:06'),
(21, 22, 3, 5, 30000.00, 150000.00, 10000.00, '2020-02-09 23:42:38', '2020-02-09 23:42:38'),
(22, 23, 3, 1, 20000.00, 2000.00, 0.10, '2020-02-10 00:14:58', '2020-02-10 00:14:58'),
(23, 24, 3, 5, 30000.00, 150000.00, 10000.00, '2020-02-10 00:15:59', '2020-02-10 00:15:59'),
(24, 25, 3, 5, 10000.00, 10000.00, 0.10, '2020-02-10 00:17:49', '2020-02-10 00:17:49'),
(25, 26, 3, 4, 28000.00, 112000.00, 8000.00, '2020-02-10 00:19:23', '2020-02-10 00:19:23'),
(26, 27, 3, 5, 30000.00, 30000.00, 10000.00, '2020-02-10 00:20:05', '2020-02-10 00:20:05'),
(27, 28, 2, 20, 2500.00, 50000.00, 2000.00, '2020-02-10 00:21:51', '2020-02-10 00:21:51'),
(28, 29, 2, 20, 2500.00, 50000.00, 2000.00, '2020-02-10 00:23:09', '2020-02-10 00:23:09'),
(29, 30, 3, 3, 26000.00, 26000.00, 6000.00, '2020-02-10 00:24:57', '2020-02-10 00:24:57'),
(30, 31, 3, 5, 30000.00, 30000.00, 10000.00, '2020-02-10 00:29:27', '2020-02-10 00:29:27'),
(31, 32, 3, 1, 22000.00, 22000.00, 2000.00, '2020-02-10 00:32:52', '2020-02-10 00:32:52'),
(32, 33, 3, 5, 110000.00, 110000.00, 0.10, '2020-02-10 00:39:59', '2020-02-10 00:39:59'),
(33, 34, 3, 4, 88000.00, 88000.00, 8000.00, '2020-02-10 00:42:09', '2020-02-10 00:42:09'),
(34, 35, 3, 1, 22000.00, 22000.00, 2000.00, '2020-02-10 01:05:19', '2020-02-10 01:05:19'),
(35, 36, 3, 5, 110000.00, 110000.00, 10000.00, '2020-02-10 01:06:16', '2020-02-10 01:06:16'),
(36, 37, 3, 3, 66000.00, 66000.00, 6000.00, '2020-02-10 01:10:13', '2020-02-10 01:10:13'),
(37, 38, 3, 2, 44000.00, 44000.00, 4000.00, '2020-02-10 01:11:50', '2020-02-10 01:11:50'),
(38, 39, 3, 4, 88000.00, 88000.00, 8000.00, '2020-02-10 01:15:29', '2020-02-10 01:15:29'),
(39, 40, 3, 2, 44000.00, 44000.00, 4000.00, '2020-02-10 18:41:18', '2020-02-10 18:41:18'),
(40, 41, 2, 10, 6000.00, 6000.00, 1000.00, '2020-02-10 18:41:58', '2020-02-10 18:41:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `name`, `description`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Uang Cash', 'Uang Cash', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `ppn` double(8,2) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `stock` int(11) NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `uuid`, `slug`, `name`, `description`, `code`, `price`, `ppn`, `category_id`, `stock`, `image_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '84fc52fe-28f4-4a8b-becb-d5590d3be82a', 'testppn', 'TestPPN', 'TestPPN', 'TestPPN', 100000.00, 5.00, 1, 2, 'Tabel Priodik HD.jpg', '2019-11-22 21:45:25', '2020-02-10 19:27:44', '2020-02-10 19:27:44'),
(2, '285c1ba8-6bda-4dd8-aed1-e27f5acccd72', 'chocolatos', 'Chocolatos', 'Chocolatos adalah lorem ipsum', 'CHO1', 500.00, 20.00, 1, 65, '23a5ae9957741bb83da2e4201c8b44ce.jpeg', '2019-11-23 17:26:53', '2020-02-10 18:41:58', NULL),
(3, '7bd649c7-2a5c-4571-b0ee-826aeb5af9b9', 'boba', 'boba', 'ini bukan minuman', 'boba121', 20000.00, 10.00, 2, 35, '750x500-upnormal-hadirkan-minuman-terbaru-yang-wajib-segera-diburu-1901163.jpg', '2020-02-09 23:33:48', '2020-02-10 18:41:18', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` enum('Admin','Kasir') COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `username`, `phone`, `address`, `level`, `image_name`) VALUES
(2, 'Kasir', 'kasir@gmail.com', NULL, '$2y$12$rXJ9fdHfWTSfJaB/2OhNleudU9HvQgxDC364IsA06wsfbR0FeNIRC', NULL, '2019-11-22 20:29:12', '2019-11-22 20:29:12', 'kasir', '07123123', 'Kasir12323', 'Kasir', '1__-vJQqeCmpw-kghDFX8yJw.png'),
(3, 'admin', 'admin@gmail.com', NULL, '$2y$12$MGeNO.hLqK2YGC4LMy2X8OuxUL44B0LCwySbPf9j89ewZk5F7I31e', NULL, '2020-02-03 17:00:00', NULL, 'admin', '512412', '1251254123412', 'Admin', '1__-vJQqeCmpw-kghDFX8yJw.png');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_payment_method_id_foreign` (`payment_method_id`),
  ADD KEY `orders_customer_id_foreign` (`customer_id`);

--
-- Indeks untuk tabel `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`),
  ADD KEY `order_details_product_id_foreign` (`product_id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `orders_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`);

--
-- Ketidakleluasaan untuk tabel `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Ketidakleluasaan untuk tabel `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
