-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Creato il: Set 26, 2018 alle 13:35
-- Versione del server: 10.1.35-MariaDB
-- Versione PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `E-commerce`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_09_23_113340_create_products_table', 1),
(4, '2018_09_23_113359_create_orders_table', 1),
(5, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(6, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(7, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(8, '2016_06_01_000004_create_oauth_clients_table', 2),
(9, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2);

-- --------------------------------------------------------

--
-- Struttura della tabella `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `cart` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivered` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `orders`
--

INSERT INTO `orders` (`id`, `cart`, `user_id`, `address`, `payment`, `name`, `lastname`, `delivered`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 's:4:\"cart\";', 2, NULL, 'Visa', 'Nino', 'Frassi', 'yes', '2018-09-26 06:58:14', '2018-09-26 06:58:14', NULL),
(2, 's:4:\"cart\";', 2, NULL, 'Mastercard', 'Mario', 'Biondi', 'yes', '2018-09-26 07:07:03', '2018-09-26 07:07:03', NULL),
(3, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:2:{i:7;a:3:{s:3:\"qty\";i:1;s:5:\"price\";d:129.5;s:4:\"item\";O:11:\"App\\Product\":27:{s:11:\"\0*\0fillable\";a:4:{i:0;s:4:\"name\";i:1;s:5:\"units\";i:2;s:11:\"description\";i:3;s:5:\"image\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:12:{s:2:\"id\";i:7;s:4:\"name\";s:12:\"Tablet 8\" HD\";s:11:\"description\";s:10:\"Tablet hd.\";s:5:\"units\";i:0;s:5:\"price\";s:6:\"129.50\";s:14:\"discount_price\";s:4:\"0.00\";s:12:\"discount_per\";i:0;s:5:\"image\";s:0:\"\";s:10:\"categories\";s:5:\"Smart\";s:10:\"created_at\";s:19:\"2018-09-24 18:35:05\";s:10:\"updated_at\";N;s:10:\"deleted_at\";N;}s:11:\"\0*\0original\";a:12:{s:2:\"id\";i:7;s:4:\"name\";s:12:\"Tablet 8\" HD\";s:11:\"description\";s:10:\"Tablet hd.\";s:5:\"units\";i:0;s:5:\"price\";s:6:\"129.50\";s:14:\"discount_price\";s:4:\"0.00\";s:12:\"discount_per\";i:0;s:5:\"image\";s:0:\"\";s:10:\"categories\";s:5:\"Smart\";s:10:\"created_at\";s:19:\"2018-09-24 18:35:05\";s:10:\"updated_at\";N;s:10:\"deleted_at\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:16:\"\0*\0forceDeleting\";b:0;}}i:8;a:3:{s:3:\"qty\";i:1;s:5:\"price\";d:55.99;s:4:\"item\";O:11:\"App\\Product\":27:{s:11:\"\0*\0fillable\";a:4:{i:0;s:4:\"name\";i:1;s:5:\"units\";i:2;s:11:\"description\";i:3;s:5:\"image\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:12:{s:2:\"id\";i:8;s:4:\"name\";s:17:\"Videocamera 2 HD \";s:11:\"description\";s:24:\"Videocamera portatile HD\";s:5:\"units\";i:24;s:5:\"price\";s:5:\"55.99\";s:14:\"discount_price\";N;s:12:\"discount_per\";N;s:5:\"image\";s:0:\"\";s:10:\"categories\";s:5:\"Video\";s:10:\"created_at\";s:19:\"2018-09-24 18:35:05\";s:10:\"updated_at\";N;s:10:\"deleted_at\";N;}s:11:\"\0*\0original\";a:12:{s:2:\"id\";i:8;s:4:\"name\";s:17:\"Videocamera 2 HD \";s:11:\"description\";s:24:\"Videocamera portatile HD\";s:5:\"units\";i:24;s:5:\"price\";s:5:\"55.99\";s:14:\"discount_price\";N;s:12:\"discount_per\";N;s:5:\"image\";s:0:\"\";s:10:\"categories\";s:5:\"Video\";s:10:\"created_at\";s:19:\"2018-09-24 18:35:05\";s:10:\"updated_at\";N;s:10:\"deleted_at\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:16:\"\0*\0forceDeleting\";b:0;}}}s:8:\"totalQty\";i:2;s:10:\"totalPrice\";d:185.49;}', 2, NULL, 'Mastercard', 'Nino', 'Frassi', 'yes', '2018-09-26 07:20:04', '2018-09-26 07:20:04', NULL),
(4, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:9;a:3:{s:3:\"qty\";i:3;s:5:\"price\";d:388.5;s:4:\"item\";O:11:\"App\\Product\":27:{s:11:\"\0*\0fillable\";a:4:{i:0;s:4:\"name\";i:1;s:5:\"units\";i:2;s:11:\"description\";i:3;s:5:\"image\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:12:{s:2:\"id\";i:9;s:4:\"name\";s:12:\"Tablet HD 8\"\";s:11:\"description\";s:10:\"Tablet HD.\";s:5:\"units\";i:30;s:5:\"price\";s:6:\"129.50\";s:14:\"discount_price\";N;s:12:\"discount_per\";N;s:5:\"image\";s:0:\"\";s:10:\"categories\";s:5:\"Smart\";s:10:\"created_at\";s:19:\"2018-09-24 18:35:05\";s:10:\"updated_at\";N;s:10:\"deleted_at\";N;}s:11:\"\0*\0original\";a:12:{s:2:\"id\";i:9;s:4:\"name\";s:12:\"Tablet HD 8\"\";s:11:\"description\";s:10:\"Tablet HD.\";s:5:\"units\";i:30;s:5:\"price\";s:6:\"129.50\";s:14:\"discount_price\";N;s:12:\"discount_per\";N;s:5:\"image\";s:0:\"\";s:10:\"categories\";s:5:\"Smart\";s:10:\"created_at\";s:19:\"2018-09-24 18:35:05\";s:10:\"updated_at\";N;s:10:\"deleted_at\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:16:\"\0*\0forceDeleting\";b:0;}}}s:8:\"totalQty\";i:3;s:10:\"totalPrice\";d:388.5;}', 2, NULL, 'Mastercard', 'Mario', 'Vini', 'yes', '2018-09-26 07:26:56', '2018-09-26 07:26:56', NULL),
(5, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:9;a:3:{s:3:\"qty\";i:3;s:5:\"price\";d:388.5;s:4:\"item\";O:11:\"App\\Product\":27:{s:11:\"\0*\0fillable\";a:4:{i:0;s:4:\"name\";i:1;s:5:\"units\";i:2;s:11:\"description\";i:3;s:5:\"image\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:12:{s:2:\"id\";i:9;s:4:\"name\";s:12:\"Tablet HD 8\"\";s:11:\"description\";s:10:\"Tablet HD.\";s:5:\"units\";i:30;s:5:\"price\";s:6:\"129.50\";s:14:\"discount_price\";N;s:12:\"discount_per\";N;s:5:\"image\";s:0:\"\";s:10:\"categories\";s:5:\"Smart\";s:10:\"created_at\";s:19:\"2018-09-24 18:35:05\";s:10:\"updated_at\";N;s:10:\"deleted_at\";N;}s:11:\"\0*\0original\";a:12:{s:2:\"id\";i:9;s:4:\"name\";s:12:\"Tablet HD 8\"\";s:11:\"description\";s:10:\"Tablet HD.\";s:5:\"units\";i:30;s:5:\"price\";s:6:\"129.50\";s:14:\"discount_price\";N;s:12:\"discount_per\";N;s:5:\"image\";s:0:\"\";s:10:\"categories\";s:5:\"Smart\";s:10:\"created_at\";s:19:\"2018-09-24 18:35:05\";s:10:\"updated_at\";N;s:10:\"deleted_at\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:16:\"\0*\0forceDeleting\";b:0;}}}s:8:\"totalQty\";i:3;s:10:\"totalPrice\";d:388.5;}', 2, NULL, 'Mastercard', 'Mario', 'Vini', 'yes', '2018-09-26 07:27:22', '2018-09-26 07:27:22', NULL),
(6, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:9;a:3:{s:3:\"qty\";i:3;s:5:\"price\";d:388.5;s:4:\"item\";O:11:\"App\\Product\":27:{s:11:\"\0*\0fillable\";a:4:{i:0;s:4:\"name\";i:1;s:5:\"units\";i:2;s:11:\"description\";i:3;s:5:\"image\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:12:{s:2:\"id\";i:9;s:4:\"name\";s:12:\"Tablet HD 8\"\";s:11:\"description\";s:10:\"Tablet HD.\";s:5:\"units\";i:30;s:5:\"price\";s:6:\"129.50\";s:14:\"discount_price\";N;s:12:\"discount_per\";N;s:5:\"image\";s:0:\"\";s:10:\"categories\";s:5:\"Smart\";s:10:\"created_at\";s:19:\"2018-09-24 18:35:05\";s:10:\"updated_at\";N;s:10:\"deleted_at\";N;}s:11:\"\0*\0original\";a:12:{s:2:\"id\";i:9;s:4:\"name\";s:12:\"Tablet HD 8\"\";s:11:\"description\";s:10:\"Tablet HD.\";s:5:\"units\";i:30;s:5:\"price\";s:6:\"129.50\";s:14:\"discount_price\";N;s:12:\"discount_per\";N;s:5:\"image\";s:0:\"\";s:10:\"categories\";s:5:\"Smart\";s:10:\"created_at\";s:19:\"2018-09-24 18:35:05\";s:10:\"updated_at\";N;s:10:\"deleted_at\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:16:\"\0*\0forceDeleting\";b:0;}}}s:8:\"totalQty\";i:3;s:10:\"totalPrice\";d:388.5;}', 2, NULL, 'Mastercard', 'Mario', 'Vini', 'yes', '2018-09-26 07:28:26', '2018-09-26 07:28:26', NULL),
(7, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:9;a:3:{s:3:\"qty\";i:3;s:5:\"price\";d:388.5;s:4:\"item\";O:11:\"App\\Product\":27:{s:11:\"\0*\0fillable\";a:4:{i:0;s:4:\"name\";i:1;s:5:\"units\";i:2;s:11:\"description\";i:3;s:5:\"image\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:12:{s:2:\"id\";i:9;s:4:\"name\";s:12:\"Tablet HD 8\"\";s:11:\"description\";s:10:\"Tablet HD.\";s:5:\"units\";i:30;s:5:\"price\";s:6:\"129.50\";s:14:\"discount_price\";N;s:12:\"discount_per\";N;s:5:\"image\";s:0:\"\";s:10:\"categories\";s:5:\"Smart\";s:10:\"created_at\";s:19:\"2018-09-24 18:35:05\";s:10:\"updated_at\";N;s:10:\"deleted_at\";N;}s:11:\"\0*\0original\";a:12:{s:2:\"id\";i:9;s:4:\"name\";s:12:\"Tablet HD 8\"\";s:11:\"description\";s:10:\"Tablet HD.\";s:5:\"units\";i:30;s:5:\"price\";s:6:\"129.50\";s:14:\"discount_price\";N;s:12:\"discount_per\";N;s:5:\"image\";s:0:\"\";s:10:\"categories\";s:5:\"Smart\";s:10:\"created_at\";s:19:\"2018-09-24 18:35:05\";s:10:\"updated_at\";N;s:10:\"deleted_at\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:16:\"\0*\0forceDeleting\";b:0;}}}s:8:\"totalQty\";i:3;s:10:\"totalPrice\";d:388.5;}', 2, NULL, 'Mastercard', 'Mario', 'Vini', 'yes', '2018-09-26 07:31:21', '2018-09-26 07:31:21', NULL),
(8, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:2:{i:9;a:3:{s:3:\"qty\";i:3;s:5:\"price\";d:388.5;s:4:\"item\";O:11:\"App\\Product\":27:{s:11:\"\0*\0fillable\";a:4:{i:0;s:4:\"name\";i:1;s:5:\"units\";i:2;s:11:\"description\";i:3;s:5:\"image\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:12:{s:2:\"id\";i:9;s:4:\"name\";s:12:\"Tablet HD 8\"\";s:11:\"description\";s:10:\"Tablet HD.\";s:5:\"units\";i:30;s:5:\"price\";s:6:\"129.50\";s:14:\"discount_price\";N;s:12:\"discount_per\";N;s:5:\"image\";s:0:\"\";s:10:\"categories\";s:5:\"Smart\";s:10:\"created_at\";s:19:\"2018-09-24 18:35:05\";s:10:\"updated_at\";N;s:10:\"deleted_at\";N;}s:11:\"\0*\0original\";a:12:{s:2:\"id\";i:9;s:4:\"name\";s:12:\"Tablet HD 8\"\";s:11:\"description\";s:10:\"Tablet HD.\";s:5:\"units\";i:30;s:5:\"price\";s:6:\"129.50\";s:14:\"discount_price\";N;s:12:\"discount_per\";N;s:5:\"image\";s:0:\"\";s:10:\"categories\";s:5:\"Smart\";s:10:\"created_at\";s:19:\"2018-09-24 18:35:05\";s:10:\"updated_at\";N;s:10:\"deleted_at\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:16:\"\0*\0forceDeleting\";b:0;}}i:5;a:3:{s:3:\"qty\";i:1;s:5:\"price\";d:99.99;s:4:\"item\";O:11:\"App\\Product\":27:{s:11:\"\0*\0fillable\";a:4:{i:0;s:4:\"name\";i:1;s:5:\"units\";i:2;s:11:\"description\";i:3;s:5:\"image\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:12:{s:2:\"id\";i:5;s:4:\"name\";s:9:\"Portatile\";s:11:\"description\";s:18:\"Computer Portatile\";s:5:\"units\";i:25;s:5:\"price\";s:5:\"99.99\";s:14:\"discount_price\";s:4:\"0.00\";s:12:\"discount_per\";i:0;s:5:\"image\";s:18:\"/img/product06.png\";s:10:\"categories\";s:8:\"Computer\";s:10:\"created_at\";s:19:\"2018-09-23 19:28:49\";s:10:\"updated_at\";s:19:\"2018-09-23 19:28:49\";s:10:\"deleted_at\";N;}s:11:\"\0*\0original\";a:12:{s:2:\"id\";i:5;s:4:\"name\";s:9:\"Portatile\";s:11:\"description\";s:18:\"Computer Portatile\";s:5:\"units\";i:25;s:5:\"price\";s:5:\"99.99\";s:14:\"discount_price\";s:4:\"0.00\";s:12:\"discount_per\";i:0;s:5:\"image\";s:18:\"/img/product06.png\";s:10:\"categories\";s:8:\"Computer\";s:10:\"created_at\";s:19:\"2018-09-23 19:28:49\";s:10:\"updated_at\";s:19:\"2018-09-23 19:28:49\";s:10:\"deleted_at\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:16:\"\0*\0forceDeleting\";b:0;}}}s:8:\"totalQty\";i:4;s:10:\"totalPrice\";d:488.49;}', 2, NULL, 'Mastercard', 'Mario', 'Nino', 'yes', '2018-09-26 07:37:43', '2018-09-26 07:37:43', NULL),
(9, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:9;a:3:{s:3:\"qty\";i:1;s:5:\"price\";d:129.5;s:4:\"item\";O:11:\"App\\Product\":27:{s:11:\"\0*\0fillable\";a:4:{i:0;s:4:\"name\";i:1;s:5:\"units\";i:2;s:11:\"description\";i:3;s:5:\"image\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:12:{s:2:\"id\";i:9;s:4:\"name\";s:12:\"Tablet HD 8\"\";s:11:\"description\";s:10:\"Tablet HD.\";s:5:\"units\";i:27;s:5:\"price\";s:6:\"129.50\";s:14:\"discount_price\";N;s:12:\"discount_per\";N;s:5:\"image\";s:0:\"\";s:10:\"categories\";s:5:\"Smart\";s:10:\"created_at\";s:19:\"2018-09-26 11:37:43\";s:10:\"updated_at\";s:19:\"2018-09-26 09:37:43\";s:10:\"deleted_at\";N;}s:11:\"\0*\0original\";a:12:{s:2:\"id\";i:9;s:4:\"name\";s:12:\"Tablet HD 8\"\";s:11:\"description\";s:10:\"Tablet HD.\";s:5:\"units\";i:27;s:5:\"price\";s:6:\"129.50\";s:14:\"discount_price\";N;s:12:\"discount_per\";N;s:5:\"image\";s:0:\"\";s:10:\"categories\";s:5:\"Smart\";s:10:\"created_at\";s:19:\"2018-09-26 11:37:43\";s:10:\"updated_at\";s:19:\"2018-09-26 09:37:43\";s:10:\"deleted_at\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:16:\"\0*\0forceDeleting\";b:0;}}}s:8:\"totalQty\";i:1;s:10:\"totalPrice\";d:129.5;}', 2, NULL, 'Visa', 'Franco', 'Califano', 'yes', '2018-09-26 07:38:36', '2018-09-26 07:38:36', NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `units` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `price` decimal(15,2) NOT NULL,
  `discount_price` decimal(15,2) DEFAULT NULL,
  `discount_per` int(11) DEFAULT NULL,
  `image` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `units`, `price`, `discount_price`, `discount_per`, `image`, `categories`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Laptop 17xs', 'Computer portatile 17\", HDD 1TB, Grafica Intel HD & Audio HD.', 21, '399.99', '0.00', 0, '/img/product01.png', 'Computer', '2018-09-13 13:00:13', NULL, NULL),
(2, 'Cuffie Stereo', 'Cuffie stereo, padiglioni grandi e fascia per la regolazione della misura.', 120, '79.00', '0.00', 0, '/img/product02.png', 'Accessori', '2018-09-22 13:00:13', NULL, NULL),
(3, 'Smartphone HD 5', 'Smartphone 5\" con schermo HD, 2gb di ram e 16gb memoria interna.', 50, '378.90', '0.00', 0, '/img/product07.png', 'Smart', '2018-09-20 13:00:13', NULL, NULL),
(4, 'Videocamera 21Z', 'Videocamera con riprese in HD e dimensioni compatte.', 20, '90.00', '0.00', 0, '/img/product09.png', 'Video', '2018-09-24 13:00:13', NULL, NULL),
(5, 'Portatile', 'Computer Portatile', 24, '99.99', '0.00', 0, '/img/product06.png', 'Computer', '2018-09-26 09:37:43', '2018-09-26 07:37:43', NULL),
(6, 'Videocamera 2 HD portatile', 'Videocamera portatile', 0, '35.70', '0.00', 0, '', 'Video', '2018-09-19 22:00:00', NULL, NULL),
(7, 'Tablet 8\" HD', 'Tablet hd.', 0, '129.50', '0.00', 0, '', 'Smart', '2018-09-24 16:35:05', NULL, NULL),
(8, 'Videocamera 2 HD ', 'Videocamera portatile HD', 24, '55.99', NULL, NULL, '', 'Video', '2018-09-24 16:35:05', NULL, NULL),
(9, 'Tablet HD 8\"', 'Tablet HD.', 26, '129.50', NULL, NULL, '', 'Smart', '2018-09-26 09:38:36', '2018-09-26 07:38:36', NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `is_admin`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', 'admin@mail.com', 1, '$2y$10$R0CmMOIyWlivpxPApBMfOe32qJ94/BFoZ1LGPSx/gYtDsN.LWv8Va', NULL, '2018-09-23 13:00:13', '2018-09-23 13:00:13', NULL),
(2, 'Utente1', 'utente1@mail.com', 0, '$2y$10$dwNMdLpVX3frIa/3nWOxXuWpaL/y9d0ZCS7HA9xhGKpWKuiAn3EWy', NULL, '2018-09-26 06:55:41', '2018-09-26 06:55:41', NULL);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indici per le tabelle `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT per la tabella `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT per la tabella `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT per la tabella `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
