-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2020 at 09:24 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sample_apis`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2020_12_08_121633_create_products_table', 1),
(10, '2020_12_08_121744_create_reviews_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('2e6de38db0c4a485d7437523b268b525e12c40f6a0af44354ed6f545d2277f60087992dd2552a4ad', 1, 2, NULL, '[]', 0, '2020-12-08 13:52:35', '2020-12-08 13:52:35', '2021-12-08 19:22:35');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'Ezu77OcyS33Mwe8NIBsHsv004T6DakwbUx5NgWNt', NULL, 'http://localhost', 1, 0, 0, '2020-12-08 13:50:54', '2020-12-08 13:50:54'),
(2, NULL, 'Laravel Password Grant Client', 'BU8nYraGgfOaW6grcAnSlrdXW5NzuXwMQ8xso9MS', 'users', 'http://localhost', 0, 1, 0, '2020-12-08 13:50:54', '2020-12-08 13:50:54');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-12-08 13:50:54', '2020-12-08 13:50:54');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('7654d77b51c0f60dee0257bb1dc6f008b1631524ef5ac98b2a23c74d070980e75ccc493994940b7d', '2e6de38db0c4a485d7437523b268b525e12c40f6a0af44354ed6f545d2277f60087992dd2552a4ad', 0, '2021-12-08 19:22:35');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `stock` int(11) NOT NULL,
  `discount` double NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `detail`, `price`, `stock`, `discount`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'ut', 'Dolor tempora labore quia eos qui consequatur nobis. Atque ut voluptate et qui voluptate et sit. Quasi tenetur distinctio et ipsum rem consequuntur perspiciatis nam. Aperiam consequatur eos debitis aut sequi et magnam.', 103, 0, 29, 3, '2020-12-08 13:41:40', '2020-12-08 13:41:40'),
(2, 'minima', 'Voluptas non ullam qui omnis. Quo consequatur sit reprehenderit possimus rerum nihil at eum. Voluptatem ut a non. Dolor corrupti ducimus quos libero.', 803, 5, 18, 5, '2020-12-08 13:41:40', '2020-12-08 13:41:40'),
(3, 'iste', 'Accusamus beatae et ea. Dolor nemo accusamus optio occaecati. Architecto quos veniam vitae dolor at neque.', 700, 6, 50, 5, '2020-12-08 13:41:40', '2020-12-08 13:41:40'),
(4, 'et', 'Iusto aut eligendi inventore. Voluptatum id quisquam voluptas earum corporis est accusamus. Placeat reprehenderit eos aut et animi.', 641, 9, 42, 4, '2020-12-08 13:41:40', '2020-12-08 13:41:40'),
(5, 'fugiat', 'Perferendis cum unde sit quisquam. Non ipsa itaque qui non consequatur autem atque. Quia est dolore eveniet aut aut quas libero.', 67, 0, 30, 4, '2020-12-08 13:41:40', '2020-12-08 13:41:40'),
(6, 'iure', 'Debitis ex assumenda quia doloribus et at. Excepturi enim necessitatibus cupiditate et illo. Sint et laudantium et. Dolore nisi ullam aut molestiae non quos id.', 871, 2, 32, 3, '2020-12-08 13:41:40', '2020-12-08 13:41:40'),
(7, 'aut', 'Modi vero officia possimus est aut. Nobis error velit rerum minima. Magnam nihil et inventore non quia. Et beatae voluptate ut voluptas nisi explicabo alias velit.', 768, 4, 47, 1, '2020-12-08 13:41:40', '2020-12-08 13:41:40'),
(8, 'ipsa', 'Dolorum iste laboriosam optio est. Voluptatem ea non voluptas cupiditate error qui. Rerum iste assumenda neque labore.', 675, 0, 48, 4, '2020-12-08 13:41:40', '2020-12-08 13:41:40'),
(9, 'consequatur', 'Ea non voluptatem ipsa atque voluptatibus. Qui nostrum et asperiores perspiciatis qui molestias. Eos reiciendis maiores dolorem laboriosam.', 511, 9, 22, 1, '2020-12-08 13:41:40', '2020-12-08 13:41:40'),
(10, 'tempore', 'Omnis ipsam quo sunt distinctio error. Eligendi dolores et doloremque officia pariatur. Ipsam quo ratione et et incidunt. Iusto est odit dolorem et sint soluta.', 160, 3, 26, 3, '2020-12-08 13:41:40', '2020-12-08 13:41:40'),
(11, 'soluta', 'Reprehenderit doloribus atque consequatur omnis est aut rerum. Magni rerum odio quis quia facilis voluptas vitae. Autem reiciendis illum incidunt eos exercitationem.', 781, 6, 3, 4, '2020-12-08 13:41:40', '2020-12-08 13:41:40'),
(12, 'rem', 'Non earum officia voluptas excepturi omnis asperiores nulla. Non perspiciatis placeat accusantium soluta voluptates dolor. In inventore sit laudantium saepe magnam eaque officiis ipsa.', 232, 8, 11, 3, '2020-12-08 13:41:40', '2020-12-08 13:41:40'),
(13, 'voluptatem', 'Ipsam qui quo ex quaerat temporibus expedita fuga. Sint aut ut rerum ut incidunt architecto. Accusantium odio totam id nam.', 920, 1, 44, 2, '2020-12-08 13:41:40', '2020-12-08 13:41:40'),
(14, 'exercitationem', 'Iusto est iusto temporibus architecto. Officiis velit debitis aut aut et fugiat. Non ipsa ex quidem vitae magni quos sed. Sit inventore inventore aut tempora cum sit assumenda ea.', 731, 4, 2, 4, '2020-12-08 13:41:40', '2020-12-08 13:41:40'),
(15, 'sed', 'Non voluptates sit ullam est sunt dolores non. Sunt dolor ea alias ipsa tempora. Et dicta perferendis aliquam officia doloribus. Id vel molestias voluptatem et.', 747, 2, 3, 3, '2020-12-08 13:41:40', '2020-12-08 13:41:40'),
(16, 'blanditiis', 'Cumque impedit vero et dolorem quo amet aliquam et. Quaerat odio molestiae nostrum assumenda sunt voluptas sit. Debitis at et minus consequuntur minus voluptas. Aut odit soluta quam.', 943, 0, 17, 2, '2020-12-08 13:41:40', '2020-12-08 13:41:40'),
(17, 'nemo', 'Recusandae et ratione numquam est voluptatibus assumenda quisquam. Cumque tempora corrupti sed libero reiciendis sint. Molestiae adipisci magni dolores mollitia.', 549, 7, 47, 3, '2020-12-08 13:41:40', '2020-12-08 13:41:40'),
(18, 'harum', 'Ratione esse provident voluptas accusantium rem. Modi eligendi velit velit nemo quia architecto. Enim veritatis fugiat sed repudiandae aut sed. Tenetur tempora placeat dignissimos voluptatem.', 277, 3, 17, 2, '2020-12-08 13:41:40', '2020-12-08 13:41:40'),
(19, 'at', 'Repellat libero id iusto sed magni dicta facere. Esse odio odio sed totam tempora. Neque veritatis iure adipisci quae et.', 729, 3, 48, 4, '2020-12-08 13:41:40', '2020-12-08 13:41:40'),
(20, 'magni', 'Ipsam minima dicta reiciendis dicta. Unde qui dolorem sint esse sed architecto. Itaque ex est sunt facere eligendi.', 243, 8, 14, 5, '2020-12-08 13:41:40', '2020-12-08 13:41:40'),
(21, 'rerum', 'Sunt eligendi fugit magni soluta voluptatibus magnam ipsam. Totam praesentium enim molestias qui. Sequi et suscipit ipsam delectus ut optio. Consequatur ducimus accusamus beatae commodi occaecati qui.', 246, 7, 23, 2, '2020-12-08 13:41:40', '2020-12-08 13:41:40'),
(22, 'quis', 'Quaerat soluta sapiente vel et sint eos harum sequi. Vitae magni debitis eveniet sit maiores dolores. Dolorem consequatur ut omnis et excepturi architecto. In aut perferendis aliquid.', 479, 5, 49, 5, '2020-12-08 13:41:40', '2020-12-08 13:41:40'),
(23, 'suscipit', 'Culpa at dolore distinctio et esse mollitia incidunt. Dolorem commodi placeat fuga quo. Nesciunt non vitae velit enim molestiae eos qui. Mollitia labore nulla dignissimos recusandae voluptatum reprehenderit natus a.', 870, 9, 17, 1, '2020-12-08 13:41:40', '2020-12-08 13:41:40'),
(24, 'magni', 'Nisi illum aut fuga nihil est praesentium aut perferendis. Quisquam tenetur iure iusto culpa aperiam blanditiis. Numquam ipsum quae nisi eveniet sit.', 143, 7, 12, 2, '2020-12-08 13:41:40', '2020-12-08 13:41:40'),
(25, 'quia', 'Quas exercitationem veniam quia possimus rerum quaerat explicabo. Tempore facilis et libero quia ut dolorem. Adipisci nisi totam voluptatem ut magni ut velit.', 223, 1, 6, 1, '2020-12-08 13:41:40', '2020-12-08 13:41:40'),
(26, 'quo', 'Odit et quod exercitationem natus quasi. Molestiae et saepe rem sit. Maxime molestiae optio quisquam esse nihil culpa.', 565, 8, 4, 2, '2020-12-08 13:41:40', '2020-12-08 13:41:40'),
(27, 'recusandae', 'Consequatur a eum doloremque nihil cum sapiente. Pariatur assumenda mollitia ea voluptas dolores sit. Quasi corporis dicta voluptatem velit et et doloribus.', 64, 5, 38, 5, '2020-12-08 13:41:40', '2020-12-08 13:41:40'),
(28, 'saepe', 'Eligendi ducimus a tempore sint perferendis aut praesentium. Dicta sapiente mollitia qui quo. Qui inventore illo non totam laborum ipsum iusto. Dolorem at sunt non ab delectus.', 973, 8, 28, 1, '2020-12-08 13:41:40', '2020-12-08 13:41:40'),
(29, 'itaque', 'Quia non laboriosam quos ipsum sed quas possimus. Voluptatem eveniet nobis nihil quis. Molestiae quas sequi laudantium nisi sed. Dolore temporibus assumenda quia atque et.', 918, 3, 7, 3, '2020-12-08 13:41:40', '2020-12-08 13:41:40'),
(30, 'voluptas', 'Officiis praesentium repellat assumenda ut. Vitae molestias veniam reprehenderit quasi. Aliquid eligendi non est aut tempora id ut magnam. Accusantium assumenda accusantium quia vel.', 761, 5, 37, 5, '2020-12-08 13:41:40', '2020-12-08 13:41:40'),
(31, 'voluptatem', 'Minus et doloremque deserunt iure et ab. Cum explicabo fugiat explicabo. Vitae impedit ad pariatur. Facilis corporis sit est quis.', 175, 7, 27, 3, '2020-12-08 13:41:40', '2020-12-08 13:41:40'),
(32, 'quisquam', 'Qui dolorum qui voluptate aperiam ut omnis quia. Officia voluptatem iusto pariatur consectetur quaerat. Esse rem et quam qui at rerum. Molestiae odit facilis impedit voluptatem ad.', 137, 0, 15, 1, '2020-12-08 13:41:40', '2020-12-08 13:41:40'),
(33, 'rem', 'Quo quam nisi dolorem fuga aut. Est ut enim ipsa cumque nobis. Autem unde similique recusandae expedita non iure.', 439, 8, 37, 4, '2020-12-08 13:41:40', '2020-12-08 13:41:40'),
(34, 'accusamus', 'Amet ratione dolorem qui sit sit et soluta. Ut a est est tenetur. Unde voluptatem unde facere eum sint qui porro dolorum.', 954, 9, 23, 4, '2020-12-08 13:41:40', '2020-12-08 13:41:40'),
(35, 'quisquam', 'Rerum nobis et autem minus. Deserunt reiciendis aliquid et explicabo dolores. Et ad a perspiciatis qui alias consequatur quo. Voluptas adipisci excepturi aspernatur consectetur consequuntur repudiandae pariatur.', 773, 6, 48, 1, '2020-12-08 13:41:40', '2020-12-08 13:41:40'),
(36, 'eaque', 'Rem reiciendis accusamus qui est est quos qui dolores. Quia est pariatur esse quasi. Quae vel qui voluptates minima.', 153, 7, 42, 3, '2020-12-08 13:41:40', '2020-12-08 13:41:40'),
(37, 'officia', 'Quis aliquid ea est assumenda. Itaque non consequatur itaque sint est non in. Suscipit rem animi quia sequi officiis cumque minus.', 663, 9, 45, 1, '2020-12-08 13:41:40', '2020-12-08 13:41:40'),
(38, 'aut', 'Voluptatem est eaque quam quod laudantium aperiam rem. Dolorem fuga officiis voluptas natus deleniti sed. Veniam excepturi ut fuga. Deleniti aut ducimus est repellat.', 640, 8, 22, 1, '2020-12-08 13:41:40', '2020-12-08 13:41:40'),
(39, 'reiciendis', 'Est sit temporibus exercitationem labore earum eos nam amet. Ex minus quos quisquam natus. Et ab sint mollitia voluptatem incidunt voluptates. Enim veniam tempore voluptates eaque iste commodi qui voluptatem.', 80, 0, 4, 5, '2020-12-08 13:41:40', '2020-12-08 13:41:40'),
(40, 'qui', 'Possimus cum modi amet. Et ea eligendi quia cupiditate veritatis. Vero illum consequatur dolor labore. Est non blanditiis repellendus incidunt officia repellendus eveniet.', 121, 9, 7, 5, '2020-12-08 13:41:40', '2020-12-08 13:41:40'),
(41, 'soluta', 'Nihil est officiis corporis dolores omnis cupiditate veritatis. Beatae est cum ea recusandae velit id. Ut necessitatibus doloribus nemo dolorem. Eius beatae fugit voluptas incidunt minima ut.', 413, 2, 5, 5, '2020-12-08 13:41:40', '2020-12-08 13:41:40'),
(42, 'et', 'Veniam omnis aut aspernatur et corporis ipsam. Alias omnis enim tempore et reiciendis. Reprehenderit tempora exercitationem asperiores voluptatibus magnam excepturi optio. Doloremque consequatur aliquam et qui quia culpa esse suscipit.', 319, 9, 6, 2, '2020-12-08 13:41:40', '2020-12-08 13:41:40'),
(43, 'deleniti', 'Rerum rerum voluptates laborum odio. Tenetur omnis sit iusto praesentium aperiam. Iure rerum iure velit. Doloribus iusto ut aspernatur.', 228, 2, 6, 2, '2020-12-08 13:41:40', '2020-12-08 13:41:40'),
(44, 'dolor', 'Fugit consequatur nesciunt beatae illo a. Repellendus inventore dolores architecto eum temporibus est placeat mollitia. Ut enim quae ullam impedit non rem quo. Ut aliquid vel ex iure non qui. Beatae reiciendis in exercitationem ea eum non.', 683, 5, 49, 3, '2020-12-08 13:41:40', '2020-12-08 13:41:40'),
(45, 'consectetur', 'Ut ut rem reiciendis beatae animi eum ullam. Aut aspernatur amet et ipsum. Expedita et repudiandae velit similique vel.', 826, 7, 24, 3, '2020-12-08 13:41:40', '2020-12-08 13:41:40'),
(46, 'voluptas', 'Perferendis et laborum est omnis modi. Dolor alias earum qui animi ut.', 620, 5, 11, 3, '2020-12-08 13:41:40', '2020-12-08 13:41:40'),
(47, 'voluptates', 'Dolorum facere ratione rerum odio omnis enim assumenda laudantium. Assumenda sapiente nihil saepe distinctio voluptatem. Et ut doloremque ad delectus esse quos omnis.', 567, 0, 44, 2, '2020-12-08 13:41:40', '2020-12-08 13:41:40'),
(48, 'libero', 'Dicta ut doloribus natus cupiditate assumenda rerum. Earum necessitatibus dicta alias quod ratione molestiae ipsa. Velit quaerat dolorem ducimus autem.', 574, 7, 5, 4, '2020-12-08 13:41:40', '2020-12-08 13:41:40'),
(49, 'et', 'Reiciendis illo non vero impedit. Magni quia mollitia corrupti dolores autem ea quis. Maxime et corporis et asperiores saepe quam. Ea voluptas voluptatum rem magnam.', 709, 2, 4, 1, '2020-12-08 13:41:40', '2020-12-08 13:41:40'),
(50, 'sed', 'Libero et adipisci voluptatum doloribus saepe autem. Cumque laboriosam a itaque perspiciatis consectetur amet. Aliquam distinctio fugit fuga quia. Fuga molestiae voluptates sequi nihil maiores.', 532, 1, 32, 3, '2020-12-08 13:41:40', '2020-12-08 13:41:40');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `customer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `product_id`, `customer`, `review`, `star`, `created_at`, `updated_at`) VALUES
(1, 16, 'Prof. Sigrid Jacobi I', 'Eius perspiciatis ipsum eveniet quia distinctio aperiam beatae. Aut molestias ea esse voluptas. Rerum cum vero sint enim. Totam provident atque tempore qui asperiores saepe.', 5, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(2, 40, 'Mr. Anastacio Harvey PhD', 'Consequatur et natus suscipit rerum. Recusandae ut voluptate rem debitis rerum. Ex excepturi autem quis totam molestiae.', 1, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(3, 24, 'Brycen Witting', 'Similique itaque illo qui dolores aut. Maxime tenetur et doloribus animi quaerat deserunt. A eaque quo minima aut.', 3, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(4, 12, 'Gaetano Dooley Jr.', 'Atque est sunt quasi. Quod ex dignissimos quia provident laboriosam. Itaque voluptatem reprehenderit nostrum veritatis voluptas necessitatibus quam voluptatem.', 3, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(5, 15, 'Grant Moore', 'Consequuntur neque eos ab ducimus est est. Et aperiam odit sapiente recusandae non aut et. Officia voluptatum a error voluptatem sint aspernatur. Consequuntur quo non omnis qui quidem tenetur.', 2, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(6, 44, 'River Miller', 'Dolorem consectetur atque est sed impedit qui. Rerum beatae possimus facilis quia sit quo possimus. Aliquid non aut rerum natus.', 5, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(7, 34, 'Arden Murphy', 'Sit consequatur minus itaque expedita quos error accusamus consequuntur. Quae magnam eius modi quo perferendis. Dolores et nihil non nihil perferendis debitis. Quas eveniet at eum doloremque atque error.', 1, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(8, 4, 'Prof. Libby Funk', 'Sint laborum et quis aperiam. Nesciunt libero culpa enim. Sit soluta quae consectetur eaque qui. Id totam ratione quas temporibus.', 5, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(9, 30, 'Mckayla Christiansen PhD', 'Dolore necessitatibus sint quos voluptatibus aliquid quia aperiam commodi. Qui totam consequatur quos repudiandae. Nesciunt est enim excepturi dicta error autem quia placeat. Nam debitis et hic eligendi qui numquam sequi sed.', 2, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(10, 6, 'Mr. Jeffery Frami Sr.', 'Et dolor autem ut expedita velit eum. Eligendi odit hic et et eos est. Velit tempore cupiditate hic deserunt eius. Ducimus eveniet non minima.', 4, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(11, 3, 'Darion Mueller', 'Quia corrupti quasi id. Modi necessitatibus quas sequi similique quia. Explicabo accusamus aut dicta aperiam doloribus.', 3, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(12, 6, 'Mr. Raphael Leuschke', 'Vel est minima omnis consectetur illum et eum. Et est rem et voluptatibus laboriosam enim. Et perferendis sunt ut nemo laborum distinctio quis. Quis ea dignissimos harum ut delectus dolorem. Sit quia voluptas aspernatur.', 2, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(13, 33, 'Ms. Dorothea Hagenes', 'Accusantium tenetur eveniet magnam dolor temporibus expedita dolores. Autem harum porro odit beatae odit. Deleniti odio odit ipsam non odio.', 5, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(14, 33, 'Verner Osinski', 'Id laborum qui non sed illum. Porro inventore rerum facilis voluptatibus excepturi sed. Sint non est provident qui voluptas laboriosam.', 0, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(15, 19, 'Dr. Orval Mosciski II', 'Aut quia inventore fugiat. Nisi cum facere modi officia error placeat nostrum. Molestiae at corporis voluptatem quia eligendi fugiat pariatur.', 1, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(16, 25, 'Ms. Abbigail Daniel', 'Officiis est in incidunt sed. Doloremque quas tenetur accusamus aut aut impedit. Necessitatibus corrupti error fuga qui aliquam sunt ullam sed. Maxime ab nihil laboriosam ea animi quam dolorem error.', 1, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(17, 27, 'Clovis Kovacek', 'Dolores qui ut ullam. Molestiae perspiciatis unde dolor. Nisi id est quis ex qui.', 2, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(18, 37, 'Darion Dickinson', 'Deleniti est omnis dolores blanditiis odit. Ea accusamus facilis similique commodi aut ut. Repellat sint modi ad dolorem fuga provident rem maxime.', 5, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(19, 44, 'Lane Nitzsche', 'Quia dicta nihil omnis cumque eos dolorem dolore est. Ea unde quo sint inventore nobis hic voluptatibus. Ipsum omnis aut voluptas. Rerum rerum eveniet dolor aut vel. Est placeat corrupti accusamus tempore sint dolor magnam.', 0, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(20, 17, 'Mr. Moriah Hyatt II', 'Rem explicabo molestiae suscipit a. Eveniet sequi dignissimos earum qui rem laudantium aliquam quam. Eum possimus debitis adipisci dolorum ut. Modi et sit voluptatum consequatur ea.', 3, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(21, 49, 'Miss Raphaelle Paucek Jr.', 'Dolor quia ut voluptatibus dolores. Quae illum provident aut qui delectus sequi.', 1, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(22, 15, 'Amari Thompson', 'Et delectus libero accusamus. Cupiditate nesciunt et illum quidem. Perferendis iusto eum nisi aut ipsa porro deserunt.', 2, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(23, 8, 'Adrian Dach IV', 'Ut est eius hic autem sed. Qui a omnis voluptatem libero ea ipsa sunt. Iste optio delectus corporis est vel non. Maxime quis necessitatibus nobis veritatis porro saepe est.', 2, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(24, 24, 'Henriette Cummerata', 'Minus dolorem eligendi voluptatem expedita debitis ea. Dolore quia iste esse quia. Dolorum corporis id consequatur possimus pariatur.', 5, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(25, 14, 'Dr. Kian O\'Kon', 'Quia ipsam incidunt necessitatibus dolore facilis. Velit qui recusandae quidem recusandae velit velit et. Voluptates aperiam inventore ullam consequuntur officia aliquam.', 2, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(26, 50, 'Dr. Derrick Buckridge', 'Non autem neque autem rem soluta corporis dolor. Dolorem consequatur et qui quia alias aperiam perspiciatis. Et corrupti expedita aut voluptatem sit suscipit quasi. Temporibus distinctio recusandae nostrum dolor fuga necessitatibus.', 5, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(27, 30, 'Orlando Christiansen IV', 'Molestiae voluptates eum delectus qui accusantium eius est voluptas. Maiores deserunt accusamus pariatur et praesentium dolor. Dolores deserunt aliquam quia totam et voluptas sed earum.', 5, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(28, 42, 'Omari Kuphal', 'Occaecati voluptatum voluptas ut eligendi accusantium. Sint fuga sapiente est culpa et repellendus enim.', 4, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(29, 43, 'Matilda Crona', 'Aut excepturi ex repellendus iure nobis. Autem sint vero consectetur magnam. Quia nulla quaerat voluptatem minus temporibus ad.', 5, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(30, 25, 'Cecilia Kemmer', 'Sequi sunt vel perferendis qui rem. Iure perspiciatis eveniet quas enim. Ullam rerum placeat aperiam.', 3, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(31, 15, 'Kyler Schneider I', 'Fuga quidem eum a deserunt a dolores. Non dolores commodi molestiae asperiores modi vel. Dolorem distinctio ab quis quidem voluptas.', 3, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(33, 34, 'Reed Huels', 'Occaecati qui aliquam doloremque. Incidunt iusto et iste similique exercitationem. Ad corporis expedita unde eum. Dolorem fugit voluptates facilis et omnis.', 3, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(34, 30, 'Prof. Diana Ledner II', 'Mollitia eaque corrupti iste ipsa ea. Optio et sit cumque dolor esse assumenda nisi voluptate. Quae est nemo consequatur. Sit nihil quam autem tempore. Optio error expedita vitae aperiam.', 0, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(35, 33, 'Eldridge Goodwin', 'Fuga harum numquam omnis earum quidem qui praesentium. Autem qui et dolorum et recusandae consequatur sapiente. Ut omnis fugit soluta nam ratione atque ut. Voluptatem molestias autem similique qui consequatur a fuga velit.', 0, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(36, 5, 'Jeff Medhurst MD', 'Nobis est voluptas voluptas in praesentium quae fugiat doloribus. Debitis officiis nemo quisquam voluptas.', 5, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(37, 15, 'Lavada Grimes', 'Quo iste quia recusandae molestiae ea nihil illum. Esse eos sequi quos tenetur ipsa et. Ut nesciunt quo quaerat illum inventore. Ratione qui atque facere necessitatibus.', 0, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(38, 39, 'Aurelia Weissnat', 'Reprehenderit neque saepe sit ut. Quo consequatur in quasi nostrum nostrum et. Dolores molestiae necessitatibus necessitatibus qui. Tempora cupiditate itaque corrupti dolorum.', 0, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(39, 32, 'Dahlia Runolfsson', 'Et et placeat odit odio velit dolorem. Animi sit nam repellendus quidem quis iure. Quaerat et distinctio est velit enim.', 4, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(40, 40, 'Oral Hagenes II', 'Consequatur possimus dignissimos ut provident. Suscipit fuga nesciunt libero atque unde vitae itaque aut. Tempore et labore autem ex impedit corporis ea.', 5, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(41, 32, 'Mr. Geovany Bogan PhD', 'Quisquam consectetur dignissimos soluta. Recusandae et id facere illo aliquam reiciendis et. Sunt voluptatem officiis iste ab cum.', 1, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(42, 6, 'Pauline Quigley DVM', 'Ut dolores odit ut eius minus adipisci. Cum necessitatibus voluptatibus neque ad alias. Minus et eius molestiae.', 1, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(43, 38, 'Macy Ullrich', 'Repellendus aperiam eos est debitis. Tempore fugit dolore in autem soluta distinctio. Et est non provident quisquam veniam perferendis nobis. Et a consectetur dignissimos quos eveniet voluptatem nihil.', 5, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(44, 10, 'Payton Emard', 'Deserunt qui facilis tempora dolores. Nulla molestiae dolorem consequuntur. Ea odio et vel quos. Quas nesciunt delectus rem.', 0, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(45, 39, 'Prince Pfeffer', 'Rem vel consequatur quasi culpa nam doloremque. Non impedit velit est ipsum laboriosam asperiores. Id explicabo amet facilis accusantium nesciunt dolorem. Doloremque commodi consequatur pariatur et nulla aut.', 3, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(46, 7, 'Keara Leuschke', 'Maxime ut aut nam. Tempore voluptas quis magnam. Debitis eaque non voluptas ducimus. Consequatur praesentium excepturi deserunt velit officia doloribus sit dolore. Et vitae praesentium voluptatem id debitis eligendi.', 0, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(47, 37, 'Odie Upton DVM', 'Voluptas voluptas eum sed explicabo tenetur numquam. Aliquam rem pariatur officia esse. Et excepturi eum et dicta reiciendis dolore labore. Autem ipsam recusandae libero nisi earum fugiat doloribus.', 1, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(48, 36, 'Mr. Leon Cole', 'Voluptate explicabo asperiores fugit voluptatibus enim. Ab quia dolor modi maxime officia perferendis. Ipsam ad tempore est assumenda earum enim. Aut aut error ut sequi aut.', 2, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(49, 12, 'Miss Catalina Weber', 'Aut libero eos et adipisci facere. Veritatis nihil numquam dolorem necessitatibus expedita velit ratione. Dolorum quia ducimus laboriosam repellendus totam non.', 3, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(50, 44, 'Jacey Hayes II', 'Quisquam ipsam delectus ipsam maiores. Similique incidunt earum qui quae sed eum. Architecto qui voluptates et consequuntur voluptatum neque iste quia. Est quidem ut vel omnis et soluta.', 2, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(51, 32, 'Monique Strosin', 'Magni sequi labore consequatur aspernatur dicta. Animi voluptate numquam fugiat voluptatum dolorem. Aut ipsum quas necessitatibus totam est.', 2, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(52, 26, 'Ken Klein III', 'Ut aut ut ratione magni sint. Omnis sunt aut qui magnam labore. Reprehenderit fuga dignissimos eveniet fugiat eveniet neque nihil. Quia veritatis quisquam at doloremque quia ut.', 0, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(53, 37, 'Luciano Bahringer', 'Qui non nostrum facilis sunt dignissimos iste est. Consequatur eveniet deleniti eveniet cum in.', 5, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(54, 22, 'Michelle Marquardt', 'Corrupti velit consequatur non adipisci omnis. Doloribus repellendus qui eos iste. Vero quam labore accusamus est accusamus officiis dolorum. Hic nobis saepe repellendus blanditiis.', 0, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(55, 3, 'Zelda Hessel Jr.', 'Fugit veniam aut ab illum. Facilis odio corrupti asperiores praesentium et. Qui incidunt est ut vero dolorem.', 1, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(56, 39, 'Ms. Jana Koepp V', 'Libero quas iusto pariatur quisquam. Ducimus sapiente necessitatibus sapiente. Occaecati autem asperiores dolorem excepturi.', 4, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(57, 6, 'Gianni Fisher', 'Deleniti in eum eum quos quo. Dolor magni non eos provident sint ea sunt voluptas. Nisi similique veniam atque iusto qui.', 3, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(58, 38, 'Miss Lorena Nolan', 'Laudantium sapiente voluptas enim omnis voluptatem. Quae similique aut corporis nulla veritatis tempore autem. Magnam ex veniam laboriosam.', 4, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(59, 5, 'Stan Stoltenberg', 'Aut tempore nesciunt occaecati. Facere distinctio alias esse ipsa expedita accusamus. Quis saepe voluptatibus autem quos quasi occaecati.', 3, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(60, 37, 'Nella Predovic', 'Exercitationem delectus vitae voluptas qui sunt omnis asperiores. Et numquam vel voluptate et quia atque. Reprehenderit delectus eos consectetur neque eum. Eos consequatur ex debitis recusandae.', 4, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(61, 12, 'Kasey Wiza', 'Tenetur nisi quasi aperiam. Consectetur quos ut qui quasi. Eius labore culpa ut rerum officia magnam enim. Placeat et ut quia reiciendis harum.', 2, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(62, 8, 'Erna Moore', 'Aperiam vitae corporis atque fugiat et facere. Pariatur tempora ducimus eos ea ullam quis. Voluptates in libero molestiae architecto et animi.', 1, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(63, 34, 'Ms. Melisa Roob V', 'Occaecati quibusdam modi nostrum alias id rerum eveniet. Voluptatem et amet ab et voluptatem. Consequatur accusamus consequatur accusamus quo esse nostrum et.', 1, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(64, 15, 'Prof. Lenny Ortiz II', 'Nihil unde aliquam enim modi. Eum molestiae corrupti iste voluptatibus. Nostrum dolore qui rerum ea placeat.', 0, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(65, 44, 'Candice Mills III', 'Cupiditate quaerat accusantium facere similique repudiandae magni. Maxime at aut numquam quibusdam minima est possimus. Ex est officiis voluptatem officiis.', 0, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(66, 4, 'Rafaela Gutmann', 'Labore eum reprehenderit vero soluta. Et est beatae et id ut in ipsam. Libero provident veritatis consectetur unde consequuntur animi ipsa nostrum.', 2, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(67, 50, 'Prof. Ignacio Wiza', 'Reiciendis voluptatibus libero at dolores vel. Nihil ipsam nam unde. Rerum aspernatur qui aut ut pariatur rerum quas id. Eius asperiores blanditiis et dolorem eveniet perspiciatis odio.', 4, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(68, 33, 'Ebba Cronin DDS', 'Quia est iusto atque adipisci quo ullam nostrum animi. Blanditiis illum minus est molestias dolor laudantium est. Et voluptas ea esse sit voluptate. Maxime aut veritatis non minima et perspiciatis dolorem.', 5, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(69, 27, 'Raphaelle Rau', 'Perspiciatis fugiat sunt laboriosam asperiores in. Sit nulla perferendis iusto est unde est id autem. Dolorem unde quia ullam dolor praesentium et odio.', 5, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(70, 42, 'Orin Kuhlman', 'Voluptatem odit ab alias. Repudiandae dicta sit tenetur eveniet eaque quis. Sunt nulla et sit consectetur qui neque enim fuga. Non tempora ratione ea voluptatum exercitationem aut sit. Sequi sed non ipsam dicta magnam blanditiis qui.', 2, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(71, 38, 'Ms. Myah Kuhlman', 'Eligendi optio suscipit facilis sequi occaecati accusantium. Voluptatibus consectetur omnis hic eum a id quia ut. Ea occaecati incidunt facilis quo tempora et. Velit maiores sint qui officiis autem quia sint.', 0, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(72, 21, 'Carole Wunsch', 'Voluptas rerum voluptas nostrum cum omnis. Sapiente voluptatibus laudantium excepturi sit. Qui enim nisi eum ut quis. Animi sapiente voluptas eos sapiente exercitationem odit.', 5, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(73, 24, 'Prof. Chandler Leannon', 'Perspiciatis nulla facilis eum incidunt id ut et dolor. Deserunt est eum perferendis in rerum. Temporibus amet est nisi ut laborum. Ut non asperiores modi tempore.', 2, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(74, 19, 'Alphonso Moore', 'Corporis amet rerum illum ut veniam. Ratione voluptatem illum et ipsa. Aut pariatur consectetur quia vel harum.', 4, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(75, 28, 'Jaclyn Murray II', 'Atque maiores et quidem perspiciatis. Deserunt ut nemo sed. Facilis nobis et aliquid et itaque aliquid dolorum. Et nihil assumenda neque eum officia nihil saepe.', 5, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(76, 24, 'Ms. Adell Wintheiser', 'Eos quo enim voluptatem facere aut omnis iure numquam. Eveniet qui exercitationem distinctio et nihil alias et. Autem consequatur amet voluptates. Magni reprehenderit omnis fugit atque quasi praesentium.', 0, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(77, 34, 'Daija Crist', 'Qui ipsa molestias laborum animi. Aut consequatur et ut veritatis ut fugit incidunt. Et officia omnis tempore et numquam culpa commodi. Consequatur id incidunt praesentium delectus non minus aspernatur autem.', 1, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(78, 7, 'Julius Conn Jr.', 'Nostrum officia temporibus aut ex ea ea. Sunt et sint et voluptatem. Nihil est quis non et dolores rerum ea.', 2, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(79, 17, 'Prof. Vicky Pouros II', 'Assumenda et dolore et fugiat. Unde totam modi doloremque est porro. Ipsam aut est suscipit nulla.', 3, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(80, 8, 'Kyle Hane PhD', 'Sunt incidunt neque accusantium inventore aut in. Consequatur et libero dolor dolor. Vel hic aperiam aliquid quis. Eum est id consequatur sunt nulla quia quo.', 4, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(81, 37, 'Mrs. Naomie Moore', 'Dolor ut perferendis natus mollitia sed. Illum hic velit autem voluptatum sed repudiandae atque ut. Cum non laboriosam porro similique voluptatem. Quia perspiciatis aut ex voluptatem error ut.', 2, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(82, 47, 'Pasquale Davis PhD', 'Quo temporibus ut ex iusto est tempora minima fugit. Aperiam facere optio vel. Consectetur dolor repellat vitae voluptatem et architecto.', 5, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(83, 15, 'Dr. Idell Bogisich Sr.', 'Sit ratione inventore recusandae voluptas possimus fugiat aspernatur. Necessitatibus est aspernatur corporis fuga libero veniam ut.', 3, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(84, 2, 'Micah Huels', 'Voluptas eos deserunt quis ut maiores ut eum. Nulla in consectetur omnis nulla veniam. Nesciunt error qui perspiciatis occaecati aut. In atque similique impedit expedita necessitatibus dolor accusamus quo.', 0, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(85, 20, 'Dr. Davin Feest DDS', 'Ullam suscipit maxime sit ipsa quia. Dolores quis deserunt amet deleniti vitae fugit. Fuga omnis magni ut quis commodi maiores dolor.', 4, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(86, 30, 'Kaleb King', 'Nulla repellat dicta quia quia nesciunt quo. Et et commodi itaque minus. Eligendi sed id totam reprehenderit. Aliquam atque incidunt dolorum commodi quo sint.', 1, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(87, 50, 'Nash Wiegand I', 'Recusandae dicta deserunt omnis iste natus cumque harum. Repudiandae molestias autem dolorem laboriosam officia sed. Laborum possimus vitae aut quidem ea consequatur aperiam.', 5, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(88, 5, 'Tanya Ledner', 'Qui dolores ex unde assumenda eius. Dicta et sit quis totam quae qui. Beatae quos dolorem eos aliquid quod voluptatem. Et suscipit voluptas voluptas et asperiores ipsa omnis.', 4, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(89, 12, 'Dylan Nader MD', 'Et aut at odio qui. Molestiae exercitationem accusamus magni et. Quis odit reprehenderit facere repellat impedit repellendus. Ex consequatur qui voluptatem et omnis est quaerat.', 1, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(90, 2, 'Geraldine Will', 'Molestiae voluptatem blanditiis ut nostrum aliquam. Pariatur enim error porro quasi. Cupiditate in laboriosam sapiente explicabo. Libero neque eaque rem quae architecto. Cumque eos aut recusandae voluptatibus.', 2, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(91, 8, 'Mrs. Anais Hartmann I', 'Repellat maxime fuga temporibus et est ducimus et. Ratione ea rerum et et. Sunt nihil sed doloremque occaecati adipisci natus. Cumque maiores voluptatem consectetur ratione.', 1, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(92, 27, 'Kyla Treutel', 'Harum magnam voluptatem fugiat eos officia in in. Quam cumque cum delectus animi. Doloribus perferendis aut est assumenda corrupti quos et.', 3, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(93, 13, 'Curt Haag Jr.', 'Voluptatibus ullam sint vitae. Et minima quos non aut. Molestias qui dolor dicta iure sed voluptas.', 2, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(94, 5, 'Parker Koelpin', 'Consequuntur quae quo similique magnam qui. Est rerum sint ut asperiores ab rem. Ipsam quod aut iusto et doloremque minima. Non consequuntur est vel quos quisquam.', 2, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(95, 49, 'Magnolia Connelly IV', 'Praesentium voluptatum deserunt soluta voluptatibus sequi. Alias tempora odit facilis nihil. Officiis eos tempora dolores dolorem voluptates. Enim est veniam velit voluptatem provident qui.', 5, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(96, 35, 'Niko Mueller', 'Exercitationem aperiam aliquam aspernatur sit quos ipsum nesciunt. Similique quo unde non sunt ut. Dolor minus ut sint animi.', 3, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(97, 23, 'Alfonso Kunde', 'Quo aspernatur laboriosam aut culpa quae. Laudantium consequuntur distinctio aut sint nesciunt. Ex minus nisi consectetur. Minima dolorem quo occaecati ut.', 4, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(98, 43, 'Thelma Von', 'Autem a vero voluptates tempore. Consectetur distinctio amet voluptatem voluptatem nesciunt. Magnam eos omnis nulla autem quasi laudantium maiores aut.', 5, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(99, 1, 'Prof. Charles Aufderhar MD', 'Id qui reprehenderit fuga sed non voluptas sunt accusamus. Quas atque maxime esse ea possimus qui. Reiciendis ut dolorem maxime quis. Hic eligendi repellat voluptatem.', 2, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(100, 25, 'Dr. Keaton Macejkovic PhD', 'Magnam nostrum cupiditate eos cupiditate. Ea et suscipit omnis aspernatur dolores nihil. Sapiente molestiae adipisci eum quia fugiat. Nihil nisi possimus vel.', 4, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(101, 1, 'Emily Kuvalis', 'Non optio facere aut et omnis nihil nihil. Quasi et eos aperiam asperiores. Voluptatibus voluptates eius nam hic asperiores modi consequatur. Aut molestias laudantium fugit non nihil cupiditate. Quis modi reiciendis reiciendis consequuntur quae harum.', 1, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(102, 22, 'Prof. Waino West Sr.', 'Ut accusamus qui natus voluptates quas fugiat. Quas et et expedita explicabo optio. Ea fugit asperiores odit commodi.', 5, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(103, 32, 'Katelynn Dickens DDS', 'Est et atque laboriosam doloribus iusto consectetur. Velit ea ducimus quia voluptatibus blanditiis. Eveniet rerum dignissimos officia nihil quod adipisci molestiae sed. Modi ut sapiente ducimus sit voluptates illum. Perspiciatis sunt eligendi inventore sunt voluptas deserunt sit nostrum.', 3, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(104, 14, 'Jean Huel II', 'Accusantium error vel ullam in molestiae. Ea sint beatae facere voluptas.', 3, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(105, 42, 'Virginia Wunsch', 'At qui qui dolor accusantium repellendus pariatur consequuntur ab. Quasi dolor officiis sapiente eius. Ipsum numquam blanditiis consequatur amet.', 0, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(106, 2, 'Deangelo Tromp', 'Eum maiores provident eveniet molestias voluptates. Eos et qui odit omnis eos facilis qui. Qui non enim excepturi. Fugit aut placeat eaque qui maiores.', 1, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(107, 8, 'Miss Dulce Leffler', 'Minima placeat ad vel ut. Quia mollitia qui quis sit ipsum architecto. Quaerat aperiam vero quod quis adipisci itaque. Aut laudantium sapiente fugiat quo repudiandae laborum.', 3, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(108, 36, 'Dr. Roscoe Mosciski', 'Est unde est nisi. Nobis aut sapiente recusandae in magni rerum. Labore voluptatibus in non unde temporibus ea rem. Nihil consectetur consequatur officia velit distinctio cumque quasi et.', 4, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(109, 24, 'Mr. Rico Hand', 'Quaerat sint et fuga incidunt. Et est nobis iste. Sunt qui id voluptatibus ea praesentium qui voluptatem totam. Labore illo voluptate minima iure eaque.', 2, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(110, 31, 'Bertha Cole', 'Vitae non mollitia voluptatem iste. Dolorem aut adipisci temporibus voluptates et. Maiores enim quod id consequatur assumenda aut deserunt. Eos minus nesciunt quis neque voluptatum dolores sunt. Dolore in et sit qui ullam.', 5, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(111, 15, 'Miss Retta Farrell IV', 'Illo aut illo est. Hic consequatur autem id illo nobis ut sunt. Perferendis ipsum qui numquam nihil unde. Voluptatibus animi corporis rerum.', 1, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(112, 31, 'Dr. Xander Strosin', 'Neque praesentium non voluptatibus omnis ratione beatae et. Aut dolores iusto molestiae assumenda deleniti odio. Atque dicta sed iste cum et ratione eaque qui.', 5, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(113, 7, 'Monique Ryan', 'Cumque molestiae cumque optio natus sunt molestiae cumque rem. Veniam omnis dolor molestiae aspernatur non. Voluptatibus quos ipsa natus consequatur aut vel.', 1, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(114, 16, 'Mrs. Mayra Volkman', 'Qui aspernatur occaecati cum nam ut. Ea corporis incidunt aut dolores ut voluptate. Sit tempora nobis earum quas voluptates sed quia. Eveniet ut est expedita officia.', 2, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(115, 23, 'Cale Jacobi', 'Expedita praesentium blanditiis fuga totam magnam ex. Sit rerum atque molestiae quis est. Omnis omnis non tempore non quae. Similique dicta repellat dolorem in.', 5, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(116, 33, 'Giovanni Roob', 'Perspiciatis atque quis est aperiam et. Cupiditate optio nesciunt optio molestias ab id cumque. Hic numquam quibusdam unde amet accusamus vel ab.', 1, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(117, 34, 'Mrs. Jannie Bayer Jr.', 'Quos deserunt hic aut atque ipsum totam. Odio excepturi non molestias. Eveniet ut aut sapiente omnis at neque ut. Et enim blanditiis eos repudiandae.', 5, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(118, 5, 'Prof. Aurelia Roberts', 'Impedit rerum animi doloremque quasi. Suscipit exercitationem atque asperiores et. Odit delectus exercitationem ullam ea sunt ipsum quo. Qui accusamus consequatur ut ex reprehenderit inventore.', 1, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(119, 31, 'Ottis Windler', 'Qui aut doloremque quisquam ut recusandae. Est occaecati porro quibusdam nam non nihil. Consectetur similique necessitatibus quia tenetur ut nesciunt libero. Voluptatem aliquam facilis veniam similique explicabo voluptatem.', 5, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(120, 32, 'Sven Schmitt', 'Magnam soluta quia repellendus laborum a dolor. Molestias similique temporibus est et accusamus voluptatem porro. Sit quia est dolorem totam libero. Quos labore id qui delectus repudiandae impedit.', 0, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(121, 7, 'Joannie Steuber', 'Commodi sint voluptates recusandae quas ipsa nulla. Sequi et aspernatur libero repellat ratione veritatis. Eaque tempore corrupti ex tempore possimus sit quis. Sit odio at ab.', 0, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(122, 32, 'Beaulah Kulas I', 'Laboriosam consequuntur iure cum facere id. Voluptatem consequatur quasi non unde. Autem laborum necessitatibus voluptatibus consequatur dolor eius quaerat numquam.', 5, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(123, 43, 'Mr. Warren Monahan', 'Vero modi consequuntur deserunt quo enim voluptatem. Dolorum nemo modi expedita enim. Veniam maiores voluptatum illo minima eveniet molestias.', 3, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(124, 49, 'Dee Klein Jr.', 'Quisquam minus eum est eos optio omnis. Voluptatem velit modi iusto rem voluptatum veritatis assumenda deleniti. Maxime tempora ipsa aliquam sit. Dolorem culpa dignissimos aliquid ipsa eum modi. Hic consequatur et ut voluptas molestias nesciunt.', 4, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(125, 27, 'Mrs. Anastasia Jones', 'Inventore excepturi minima temporibus dolorem sit. Eligendi veritatis dolor voluptatibus qui. Rerum ab sit deserunt doloribus.', 3, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(126, 26, 'William Gutmann', 'Quas aliquid ducimus ex accusamus aut officiis. Alias voluptatem eos sint sint reprehenderit nihil.', 1, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(127, 36, 'Zachariah Bergstrom', 'Fugiat sit dolores id vero architecto aut a. Ex autem eum autem sint illo. Ut ab at aut voluptatem eligendi. Et aut voluptate et repellat accusantium omnis veniam. Maxime quos sint et sed qui commodi consequatur nostrum.', 1, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(128, 6, 'Hershel Doyle', 'Rerum dolor perferendis enim assumenda deserunt. Temporibus rerum provident voluptatum eos voluptatem expedita. Saepe quia voluptas voluptatem. Molestiae enim quo facere ut quasi quia.', 2, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(129, 17, 'Lina Zieme', 'Rem dolor et ut repudiandae. In culpa sequi veniam voluptatum at. Adipisci eveniet ducimus cum dolorem velit sint.', 4, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(130, 28, 'Arnulfo Simonis', 'Possimus et voluptatem dolorem aut. Voluptas voluptatum voluptas eum qui quaerat. Doloribus cumque et error facilis. Quae voluptatem adipisci dolorum aliquid.', 2, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(131, 48, 'Etha Rau Sr.', 'Dolorem distinctio ut delectus qui a blanditiis non. Expedita sequi iste sit impedit voluptatem soluta sint exercitationem. Reiciendis ipsa tempore laboriosam porro soluta. Architecto quia mollitia neque est id.', 4, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(132, 37, 'Mrs. Rosemary Heaney', 'Dicta voluptatem iste nihil aliquam hic voluptatem totam. Nihil omnis qui accusamus illum. Amet dolor minus sapiente cupiditate cum itaque. Dignissimos labore eum cupiditate iste dolores aperiam ut.', 4, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(133, 12, 'Zackery Emard', 'Veritatis veniam et consequatur eius. Qui incidunt ab incidunt eum.', 1, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(134, 28, 'Abby Hills', 'Et quo veniam eligendi sequi nam nam officiis quo. Alias ducimus earum officia. Eos sunt rerum harum explicabo sapiente est.', 2, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(135, 46, 'Marlon Witting', 'Temporibus praesentium eos optio ut eos. Quia temporibus deleniti eius fuga. Omnis rem quam suscipit autem repellendus fuga quia.', 0, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(136, 40, 'Ryder Weissnat', 'Temporibus molestiae dolor porro. At adipisci iusto facilis placeat eos. Est et debitis numquam libero culpa excepturi provident sit. Perspiciatis et deleniti dolores pariatur quia porro sed.', 4, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(137, 35, 'Elijah Denesik', 'Dolor ex voluptatem temporibus. Quaerat voluptas corrupti accusamus. Ut culpa quia voluptas maiores non fugit quasi. Nostrum qui perspiciatis molestiae est voluptatibus et quibusdam dignissimos.', 0, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(138, 42, 'Cecil Bailey', 'Consequatur distinctio ut quas rerum. Dolores quam provident et saepe doloribus facilis. Dicta iste deleniti esse officia cumque eum non. Consequatur officiis qui accusamus.', 0, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(139, 30, 'Dr. Matteo Harris III', 'Laborum consectetur nam et totam quaerat. Ab itaque dolor esse ducimus ea.', 1, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(140, 5, 'Annabell Miller', 'Aut vel sequi laudantium magnam omnis optio quas. Nihil et blanditiis pariatur praesentium quae. Asperiores doloremque aspernatur quia consectetur deserunt eaque inventore. Inventore eum voluptatem accusamus est dolor repudiandae officia. Vero sed dicta incidunt qui et perferendis iure.', 1, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(141, 47, 'Ollie Wilderman', 'Provident provident sequi et quod maxime earum. Voluptatem aut fugit sint cumque ullam totam aut. Quia fuga sunt dolores tempora blanditiis quam sed totam. Qui assumenda excepturi unde.', 2, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(142, 26, 'Mr. Luigi Pagac DVM', 'Eos accusamus facilis quo. Consectetur dignissimos rerum excepturi qui consequatur odit. Doloremque vero dolor non qui omnis nulla culpa. Alias voluptatem consectetur cumque omnis eum expedita a.', 4, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(143, 23, 'Macie Powlowski', 'Ipsum iusto optio consectetur consequatur itaque et. Sed dolor eligendi et non sed esse ipsam nulla. Rem deleniti omnis maxime fugit. Dolorem deserunt modi molestiae numquam totam ipsa.', 2, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(144, 44, 'Matt Rosenbaum', 'Adipisci in quia velit tenetur quae deserunt. Tempora eius soluta eum nihil. Quo dolor voluptatem quia et qui. Incidunt voluptatibus qui nesciunt iste deleniti illo sed.', 1, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(145, 41, 'Prof. Louisa Lesch PhD', 'Perspiciatis distinctio perspiciatis sunt molestiae nihil delectus. Dolore consequatur similique ut vel neque dolore eum. Ipsam quia libero incidunt quibusdam vel sint aspernatur. Alias cupiditate velit distinctio molestias. Quibusdam aut natus ducimus quia ipsum.', 3, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(146, 9, 'Ms. Stefanie Cassin', 'Esse eum dignissimos omnis repudiandae consequatur corporis sapiente blanditiis. Error nemo qui tempore deserunt voluptas accusamus. Aut soluta fugit fugiat rem quis voluptas perspiciatis quas. Ullam culpa molestiae eos non ut.', 4, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(147, 24, 'Miss Delores Jerde', 'Odio expedita dolor sequi autem atque et pariatur odit. Dolorem cumque sed quas cum. Nam vel non cum eum sit cum corporis. Animi illo harum voluptas.', 3, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(148, 50, 'Dr. Noble Kshlerin Jr.', 'Quae aut et dolorem veniam dolore tempore. Qui id et quia repudiandae labore. Sed consectetur similique et rem et aut. Est aliquid qui blanditiis sunt deleniti sunt.', 0, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(149, 28, 'Florida Schinner', 'Eos magnam quibusdam porro aliquid incidunt voluptatem. Ab officia aut dolor earum quia. Veritatis dolores incidunt id qui labore. Quia et saepe ipsa quia blanditiis velit.', 5, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(150, 50, 'Prof. Timothy Hodkiewicz IV', 'Tempore corrupti voluptatum enim ipsam commodi aut est. Quas adipisci atque quia aut itaque non.', 2, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(151, 10, 'Asia Stroman', 'Dolor dolorem quisquam et suscipit quia tempore. Beatae ducimus voluptatem repellat optio magni architecto. Voluptates molestias provident et aperiam quasi molestiae est.', 4, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(152, 49, 'Jonas Hyatt', 'Recusandae aut necessitatibus nisi. Quia modi cumque qui sapiente. Amet facere voluptatum repudiandae quo distinctio. Similique voluptatem repellendus at qui vel aut harum.', 2, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(153, 19, 'Shayna Carroll V', 'Dignissimos et deleniti veniam omnis eos. Nam optio fuga rem cumque vitae tempora et. Sequi qui laudantium eos sed provident et. Est perspiciatis animi dolor pariatur aut itaque.', 1, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(154, 16, 'Cydney Strosin', 'Aut repellendus hic tenetur et corrupti eaque delectus. Sapiente vel molestias molestiae. Autem velit id aut saepe iste. Aspernatur et omnis autem eum.', 4, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(155, 7, 'Rosario Walter', 'Repellat est a quia assumenda omnis. Ut dolorem consequatur unde expedita ipsa. Libero error autem optio inventore temporibus odio odio omnis. Odit in consequatur ducimus voluptatum.', 3, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(156, 22, 'Janice Heidenreich', 'Optio excepturi magni repudiandae voluptates. Quisquam aliquid cumque voluptas quos voluptas provident id. Molestias culpa et nostrum repellendus.', 0, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(157, 24, 'Santa Murray V', 'Aperiam et delectus perspiciatis quia asperiores dolor placeat. Reprehenderit quis ad error quisquam voluptatem unde quisquam. Fugit quia pariatur dicta mollitia.', 5, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(158, 5, 'Dale Kris', 'Ipsa omnis non ipsum ipsam in. Iusto rerum et dolorem repudiandae ea. Nemo molestiae autem sit dicta eligendi cum et.', 0, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(159, 37, 'Silas Vandervort', 'Cupiditate provident ut repudiandae et corrupti et. Officia ratione pariatur et sunt cupiditate quis qui. Qui illo accusantium porro et eius. Id officia delectus fugit nobis. Soluta sint quia eum architecto.', 4, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(160, 31, 'Ramona Gleichner', 'Iste odit sequi non et rerum. Fuga cumque non non repellendus vitae.', 5, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(161, 18, 'Eugene Fisher V', 'Amet consequatur consequatur enim sed adipisci. Sed sit repellat qui ea quidem. Autem consequuntur rerum dolorum quia cumque veniam. Modi voluptatem praesentium numquam alias dolorem tempora esse.', 1, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(162, 47, 'Erna Bradtke', 'Enim eos repudiandae omnis dicta. Et quis voluptas adipisci aut totam doloremque. Ipsam dolorem libero magni debitis similique nihil.', 0, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(163, 42, 'Rowena Maggio', 'Voluptas delectus consequatur nisi ut. Alias aut sapiente maiores itaque. Quis eius modi nobis ut vel laborum. Rerum voluptate et atque occaecati consequuntur vero. Ullam modi molestiae eum sunt officia sed.', 4, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(164, 30, 'Hilario Lindgren', 'Exercitationem veritatis voluptatibus eum et. Dolorum eveniet quibusdam molestias illo. Illum qui minus debitis ut velit assumenda asperiores molestiae.', 4, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(165, 41, 'Gonzalo Rutherford', 'Doloribus sed nam temporibus magni vero. Error sed blanditiis voluptate. Omnis sunt quasi et rem sed. Aspernatur voluptatem voluptate sed hic possimus. Ut dolor est ullam labore modi maiores omnis.', 4, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(166, 38, 'Eryn Hermann', 'Quia sapiente commodi consectetur ullam tempora sapiente. Est dicta fugiat rerum. Culpa necessitatibus eveniet hic hic voluptatum nulla in. Amet quam nihil consequuntur rerum. Molestiae dolorem quidem ratione quos.', 5, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(167, 4, 'Mr. Tommie Runolfsdottir', 'Vel non eaque quaerat expedita necessitatibus ipsam. Sunt et ea at explicabo ea cumque odio.', 2, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(168, 45, 'Mathew McClure Jr.', 'Dolorem velit commodi quas velit sit expedita eos. Adipisci voluptas unde ea dolores accusamus. Necessitatibus illo quaerat perspiciatis ad. Animi praesentium laudantium perspiciatis illum.', 1, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(169, 27, 'Prof. Montana Reichert II', 'Deleniti nesciunt quia autem sint et rerum. Quia exercitationem qui quis atque. Sint enim rerum excepturi cupiditate ipsam voluptas. Est aperiam ut commodi inventore illum dolor doloribus.', 4, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(170, 32, 'Natalia Medhurst Sr.', 'Eos sed officia repudiandae quod. At voluptatem rerum quidem commodi. Repudiandae sed ipsum sit quisquam. Velit rerum incidunt quisquam. Voluptatem id quibusdam quis eius inventore blanditiis autem.', 3, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(171, 27, 'Miss Madelynn Koelpin MD', 'Modi quia facere dolor. Et et odio recusandae dicta ullam ex ducimus. Sed dolores maxime est architecto. Qui aliquam cupiditate autem aut tempora vel.', 1, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(172, 21, 'Dr. Declan Dickens', 'Rerum vel autem adipisci. Quam neque veniam et aliquam. Sunt soluta saepe laboriosam molestiae.', 2, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(173, 16, 'Piper Kuhn Sr.', 'Pariatur ipsum architecto et quo dolor cupiditate voluptatem. Dolor excepturi eos maxime expedita asperiores consequatur amet est. Dolore harum perspiciatis perspiciatis expedita et aliquam.', 1, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(174, 25, 'Prof. Kristofer Braun', 'Illo velit magnam excepturi soluta culpa esse. Nemo quaerat aliquid tenetur corporis. Culpa molestiae esse officiis quo blanditiis. Sit qui eum inventore ratione eveniet saepe debitis.', 1, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(175, 38, 'Kamryn Terry I', 'Eligendi fugit eum repudiandae eum aut cupiditate. Iste et ab tempore. Consequatur eaque totam asperiores et sit iure. Accusantium ducimus vel veniam deserunt velit veniam autem. Possimus ex nulla sit sit assumenda.', 3, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(176, 31, 'Nestor Schmeler', 'Voluptatum dolorem dolor distinctio omnis veritatis quia. Ut tempora dolorem quis velit temporibus. Autem sunt ratione est amet.', 0, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(177, 45, 'Kristian Spinka', 'Ut iusto aut aut quia ex. Et nihil et qui quae qui. Commodi aut in mollitia et. Reprehenderit consequuntur temporibus dolores quos.', 1, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(178, 1, 'Maud Gorczany III', 'Delectus ea ut aspernatur omnis tempora ut iste. Et voluptates harum omnis ducimus temporibus vero voluptatem. Non assumenda doloribus et esse. Nihil sit nam officiis porro laboriosam nihil quia.', 2, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(179, 1, 'Wilburn Parisian', 'Maiores fugiat voluptatibus excepturi et harum. Rerum voluptatum blanditiis cum sed. Non maiores est hic ab et. Ut in consequuntur recusandae ut.', 2, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(180, 31, 'Romaine Cassin', 'Maiores accusantium nihil enim quasi. Repudiandae atque minima earum exercitationem repudiandae omnis reiciendis. Perferendis esse fugiat qui debitis. Fugit ex non neque sapiente ea.', 2, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(181, 1, 'Duane Kozey', 'Ut nam delectus ipsam. Architecto amet sed quaerat officia dolores.', 2, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(182, 44, 'Cheyenne Ondricka Sr.', 'Praesentium non sed aut commodi. Harum dolorum aut quis impedit adipisci rerum facere.', 2, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(183, 8, 'Dr. Bo Kassulke', 'Aliquam non velit ad cupiditate eaque assumenda. Eveniet non nobis enim non voluptas maxime est. Distinctio est sed quis perspiciatis sit dolorem. Deleniti et laborum expedita laborum a nostrum quis.', 0, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(184, 40, 'Dr. Orrin Gulgowski IV', 'Qui ea repudiandae odit mollitia ratione. Est illum dolorem non et labore voluptas. Consequatur error dolorem culpa ipsam voluptatem iste consequatur soluta. Aliquam qui ad sed sed.', 3, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(185, 38, 'Rozella Batz', 'Quis eius quaerat minus ipsum. Exercitationem dolor voluptas voluptatem quis vel numquam. Possimus aut voluptas id adipisci deleniti possimus maiores. Illo tempore ab ut quis et et et commodi.', 2, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(186, 30, 'Pansy Ritchie', 'Aut provident earum aliquam eos. Neque repellat et rem qui sint vel. Omnis aut ex dolores quidem aut molestiae adipisci. Assumenda qui aut exercitationem et cupiditate iure laboriosam.', 5, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(187, 15, 'Frederic Pagac', 'Corrupti nisi architecto nam beatae provident. Ducimus ut et vel quis sed officia sunt. Pariatur quia voluptas repudiandae quas. Recusandae harum explicabo at.', 4, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(188, 22, 'Vaughn Goodwin', 'Qui ex laborum repudiandae cumque corporis. Molestias pariatur omnis dolor. Repudiandae in cum aut pariatur quod rerum.', 3, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(189, 13, 'Loma Gerlach', 'Aspernatur sint enim illum est nemo. Aliquid omnis dolorem ipsam eos. Ex molestias repellendus dolor aliquam. Eaque non delectus cum voluptatem. Fugiat ea dolore quia praesentium molestias illum officia sed.', 2, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(190, 44, 'Dr. Billy O\'Reilly Jr.', 'Eligendi nisi nostrum assumenda beatae reiciendis. Ullam nihil ut ut sint ipsa est suscipit odit. Esse sit aut inventore ut placeat quo.', 3, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(191, 8, 'Dr. Maxine Torp', 'Quo molestiae nostrum aliquid deserunt aliquam. Mollitia atque pariatur quis sit similique nesciunt perspiciatis. Et quo voluptatem culpa officia suscipit.', 0, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(192, 26, 'Erik Abshire', 'Culpa vel culpa perferendis eligendi dolorem qui. Molestias commodi est omnis ex. Sit incidunt eveniet dolorem aut ut incidunt soluta.', 0, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(193, 46, 'Suzanne Lind', 'Omnis possimus doloremque veniam ad iste consequatur saepe. Nobis non vitae expedita occaecati ex. Sunt quia esse quasi facilis ab excepturi.', 1, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(194, 43, 'Lavon Wehner', 'Et molestias vitae voluptatem aut. Expedita doloribus est adipisci suscipit animi aliquam voluptatibus. Soluta enim cum temporibus accusamus qui consequatur quia alias.', 2, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(195, 31, 'Prof. Adaline O\'Connell PhD', 'Cum placeat voluptatem deleniti nemo. Consectetur voluptates animi amet veniam eos voluptatem aut ab. Repellendus deserunt optio voluptas ipsa quo.', 0, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(196, 20, 'Alden Emard', 'Eaque vel dicta quia perspiciatis. Aut nobis maxime eligendi voluptas saepe id eveniet ab. Asperiores nam quaerat expedita culpa consequatur minima.', 5, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(197, 15, 'Prof. Raina Feeney', 'Dolores beatae et reiciendis ipsam. Voluptatem sint molestiae veritatis occaecati voluptas. Necessitatibus quo officiis nisi at accusantium voluptas.', 4, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(198, 14, 'Darryl Abernathy', 'Corporis et libero autem. Quia at et cum nihil vero quis illum. Rem voluptas sit inventore omnis amet est.', 0, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(199, 16, 'Mrs. Guadalupe Mertz II', 'Sed sapiente est itaque repellat ullam reprehenderit saepe dolor. Sed nihil nihil veritatis voluptas commodi. Sapiente ipsa voluptatem sed voluptatem est velit.', 0, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(200, 4, 'Maryse Gutmann', 'Magnam laboriosam sunt voluptate sint asperiores occaecati sed. Quo veniam tempore at nisi veniam. Et odio esse tenetur neque voluptas itaque fuga.', 2, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(201, 4, 'Ford Blick', 'In est voluptas dolor qui laudantium soluta nihil quas. Consequuntur quia et aliquid vitae qui est. Itaque ut quo quas voluptatem et natus. Dolorem illum et id iste.', 0, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(202, 7, 'Bria Zieme', 'Nam similique amet culpa aut. Modi ut officiis est cupiditate. Dolore veniam in aperiam vel.', 0, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(203, 48, 'Demarcus Schuster', 'Est et voluptas quis fugit ipsam. Deserunt iusto sit in sequi. Id saepe porro inventore ea sunt velit.', 3, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(204, 27, 'Dr. Simeon Lehner MD', 'Quae voluptatem non error quia dolorem doloremque. Voluptatibus eum fugit qui non omnis est voluptatem. Ducimus odio sint voluptatibus laudantium ullam. Et eveniet at doloremque voluptas consequuntur sit.', 5, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(205, 30, 'Arlie Dare', 'Debitis sit vel suscipit quibusdam. Tenetur qui ea quo voluptas amet consectetur pariatur. Quidem similique officia perferendis eligendi aliquam cupiditate quia. Et in minima possimus nihil est at ipsum dolor.', 1, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(206, 20, 'Vida Christiansen', 'Id quas necessitatibus distinctio consequatur commodi. A consectetur itaque magni est. Voluptas amet quo quia voluptatem culpa voluptatem.', 4, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(207, 29, 'Merlin Conroy', 'Minus rerum ut dolore ducimus delectus alias fugiat. Nihil voluptatem nobis eum nesciunt enim laboriosam qui. Explicabo vitae ea voluptatem. Eligendi vitae facere iste ut accusamus iste.', 5, '2020-12-08 13:41:41', '2020-12-08 13:41:41');
INSERT INTO `reviews` (`id`, `product_id`, `customer`, `review`, `star`, `created_at`, `updated_at`) VALUES
(208, 17, 'Margarette Gottlieb I', 'Quo qui expedita laudantium reiciendis nostrum. Veniam error beatae laborum voluptas nulla voluptatibus laudantium.', 0, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(209, 6, 'Miss Margarett Harber', 'Voluptatum consectetur at aliquid totam dolores placeat quia veritatis. Ex temporibus aliquam provident ea. Cupiditate ut asperiores saepe quia dolorum est. Excepturi sint sapiente aut fugit ex.', 2, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(210, 29, 'Josiah Cassin MD', 'Praesentium non et consectetur omnis. Maxime asperiores aut hic quasi. Pariatur officia eum dolor quas officia in illum.', 0, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(211, 47, 'Kamille Goodwin', 'Distinctio quam quis quidem nobis iusto quis molestiae. Itaque hic nisi qui ad. Molestias dignissimos doloremque aut. Placeat corrupti quibusdam reiciendis officiis.', 3, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(213, 9, 'Miss Nayeli Schmitt', 'Quas sint dolorem vero ut. Explicabo quasi sint voluptas placeat alias ut. Maxime sed earum atque totam.', 5, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(214, 31, 'Mr. Cortez Bahringer DVM', 'Dolore ex tenetur id illum. Ab rerum architecto placeat facilis dolore voluptas ipsum.', 2, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(215, 13, 'Sonia Prohaska Sr.', 'Qui tempora beatae a odit eaque aut enim. Mollitia asperiores exercitationem distinctio quo nihil et. Ut deserunt ipsa nostrum totam doloremque voluptas. Quam consequatur ex quos eaque.', 3, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(216, 6, 'Brant Cremin', 'Consequatur sint sed dicta excepturi ex maiores qui rerum. Aut enim sint soluta provident dolorum. Et ducimus ipsa vero harum aliquam.', 4, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(217, 31, 'Stephany Huels', 'Doloremque officia ea consequuntur officiis qui. Molestiae pariatur et sed dicta impedit dolorum architecto. Numquam numquam omnis corporis modi aliquid qui.', 5, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(218, 13, 'Terrence Gislason', 'Et suscipit ut accusantium. Deserunt cumque dolorem asperiores placeat voluptatem. Iste deserunt distinctio placeat eius eum. Praesentium aspernatur labore quo voluptatem vitae quia accusantium.', 1, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(219, 29, 'Clarabelle Kessler', 'Voluptatibus et sint impedit id quidem. Sunt qui necessitatibus magni et laboriosam ipsa. Ut temporibus reprehenderit tempora quisquam. Autem quasi laudantium natus rerum quis.', 1, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(220, 23, 'Miss Stephany Turcotte', 'Officiis error provident nostrum ut adipisci quo dolorum. Quia cupiditate asperiores in ducimus minima dolorum aut. Quia non quo animi dolore. Voluptatem ullam placeat perspiciatis ea quo illum quo.', 0, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(221, 40, 'Matilde Stokes', 'Nobis sit rem cumque sed est. Et velit distinctio qui ea ab. Eius vel totam itaque assumenda tempora. Animi architecto quis natus nisi.', 1, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(222, 33, 'Durward Mosciski', 'Temporibus aliquam eum ut ratione ut rerum quia. Tempora quia unde eos hic eum illum. Laborum reprehenderit libero iste labore fugit ut.', 3, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(224, 22, 'Mrs. Deja Kirlin I', 'Praesentium in id aut et mollitia animi. Ducimus quasi sequi nulla accusantium maiores. Totam autem ut qui accusantium itaque ipsa.', 2, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(225, 7, 'Shanel Lakin', 'Perspiciatis sit non illo illum nemo. Necessitatibus temporibus non odio provident. Ullam dolore minima consequatur dolore nulla amet qui. Quisquam quasi sed nesciunt est.', 4, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(226, 4, 'Agnes Leuschke', 'Suscipit et consequuntur labore ipsa quia eius. Sunt ea eveniet omnis ab exercitationem nobis fugiat cumque. Rem inventore quibusdam iste commodi culpa et excepturi. Voluptatem perferendis beatae repellat.', 2, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(227, 31, 'Mr. Kamron Littel', 'Non non fugiat dolor corrupti magnam. Dolorem sed et amet officiis. Repudiandae vel quos sit placeat eaque quia harum. Qui ad voluptatem omnis dolorum. Dolorem aliquam beatae consectetur aperiam molestiae.', 2, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(228, 46, 'Mr. Moises Mayert V', 'Aliquam enim nemo ullam. Ea quia eum perferendis alias nihil laudantium. Similique aut tempora non exercitationem accusamus quia.', 0, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(229, 6, 'Ms. Calista Miller III', 'Repudiandae est natus rerum. Qui omnis laboriosam vitae.', 3, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(230, 48, 'Eino Koelpin', 'Autem impedit est recusandae ea nesciunt est. Sequi rem temporibus ad placeat dolorem. Inventore rerum vitae numquam.', 0, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(231, 36, 'Ruben Rau', 'Fugiat pariatur repudiandae quidem eaque. Tempore placeat aliquid enim eum tenetur ratione aut et.', 3, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(232, 16, 'Ludie Klocko', 'Iure blanditiis eos ipsum porro excepturi quidem rerum. Consequuntur incidunt labore eos nostrum. Ad quod odit illo molestias eaque.', 5, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(233, 29, 'Dr. Jo Harvey', 'Natus est sequi voluptatibus velit delectus. Optio fuga sunt officia perferendis et eos.', 1, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(234, 35, 'Nils Macejkovic', 'Nulla ut recusandae esse rem voluptatum fugit eum quo. Blanditiis quod impedit temporibus quam reprehenderit dolore. Accusantium velit et rerum soluta aut. A labore eius consequatur qui unde enim.', 0, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(235, 27, 'Sonny Metz', 'Ratione dolor deleniti et fugit. Error veniam non libero dolor quia iste maiores. Rerum quia dignissimos praesentium qui. Quo voluptatum explicabo exercitationem eveniet ipsa harum. Et praesentium esse et ad at molestiae impedit.', 1, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(236, 8, 'Dorthy Crona', 'Dolorem cum quasi et ea quae possimus numquam mollitia. Asperiores et qui quam. Aut sunt dolores rem ut eum deserunt ut.', 4, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(237, 46, 'Darius Hackett MD', 'Cupiditate temporibus voluptatem qui non. Dolorem fugit aut eveniet nesciunt voluptatem rerum numquam ipsam. Natus dolorem excepturi quo ratione accusamus facilis non.', 0, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(238, 21, 'Theo Swaniawski', 'Et veritatis et odio. Autem rem perferendis quod nemo. Recusandae ab neque aliquid ut nihil magnam alias consequatur. Doloribus dolorem ipsum provident id molestias.', 3, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(239, 37, 'Quinton Altenwerth IV', 'In et natus qui. Voluptates dicta accusantium et dolorem maiores voluptate. Qui nesciunt aliquam dolorem ad. Inventore aut quia inventore esse.', 5, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(240, 49, 'Arturo Sanford', 'Id quia fuga voluptatum ad vitae vitae sed quis. Natus provident sapiente cum velit sit officiis. Et necessitatibus molestiae molestiae qui similique atque. Dicta iure doloremque consequatur quo.', 3, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(241, 36, 'Prof. Mafalda McLaughlin', 'Ab consequuntur quo qui est. Nam cumque et est possimus expedita ipsa. Eius error eaque illum consequatur aut vitae. Est et tenetur amet.', 1, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(242, 50, 'Shaylee Rutherford', 'Et provident tempora veritatis dicta voluptatem nostrum qui. Et et exercitationem corrupti nihil id dolores. Ullam aspernatur ut maiores placeat debitis. Sunt fugiat in sint ut esse laborum odit.', 3, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(243, 24, 'Giles Dickinson', 'Beatae nulla molestiae tenetur harum voluptas sed voluptatem. Quia pariatur repellat architecto. Delectus aspernatur voluptas qui est.', 5, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(244, 45, 'Jerad Gibson IV', 'Nostrum est omnis illum. Enim aut aut inventore earum vitae adipisci quam neque. Distinctio architecto itaque praesentium. Quas eos adipisci ad non facere ea.', 3, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(245, 3, 'Ms. Otha Schaden', 'Vero debitis beatae vitae consequatur. Tempore molestiae distinctio ex. Quasi eius iusto laboriosam impedit quis voluptas vitae aperiam. Nam eum aperiam dolore.', 1, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(246, 16, 'Enola Crooks Jr.', 'Minima eum eaque eligendi et nobis quia possimus. Est dolores hic accusamus magnam. Illo amet cupiditate in nam autem quia quam dolorum. Enim tempora eaque non quaerat.', 5, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(247, 31, 'Prof. Lola Lindgren', 'Excepturi excepturi sapiente voluptatem quasi. Blanditiis ut natus eligendi voluptas aspernatur eum. Sunt nihil rerum qui non itaque suscipit. Accusantium corporis sed quam sed ut voluptatem deserunt.', 4, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(248, 17, 'Mabel Casper II', 'Id quas incidunt laboriosam quia id. Modi odit mollitia impedit optio porro et aut dignissimos. Qui repudiandae id et velit ipsum vitae et. Veniam ab hic ipsam et.', 0, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(249, 14, 'Ms. Kariane Cronin DDS', 'Voluptas at et aperiam quis eum sit. Ut accusamus minus possimus. Eos similique suscipit error eligendi iure eaque non.', 4, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(250, 34, 'Madison Bayer Sr.', 'Omnis autem recusandae rerum voluptas et quae repellendus. Non voluptatem sed error. Quis eum placeat dignissimos id possimus quisquam magnam.', 4, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(251, 13, 'Pearline Dach', 'Itaque itaque sint voluptate dolores esse. Soluta expedita numquam et at voluptas dolores autem eum. Beatae eum doloremque voluptas.', 1, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(252, 48, 'Craig Barton', 'Non suscipit sunt esse praesentium est quos sit nihil. Sit qui repellat tempora assumenda est delectus molestiae. Quasi aut consectetur expedita voluptate deserunt. Non autem animi ut neque odio recusandae mollitia voluptatem.', 1, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(253, 33, 'Brenden DuBuque', 'Vitae eveniet provident dolorum laborum. Impedit vel tempore aut quia aut beatae ea. Iure voluptatem quis odit dolorem velit. Porro voluptas ea aut autem modi suscipit.', 4, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(254, 46, 'Miss Kira Bechtelar', 'Sint officiis consectetur commodi ab non officiis. Sint et deserunt doloremque qui impedit nobis. Repellat optio rerum magni enim iure. Aut magnam aliquid inventore quae culpa quod.', 2, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(255, 23, 'Llewellyn Bauch', 'Perferendis modi nihil magni aut enim. Fuga accusamus molestias recusandae in aperiam ipsam. Molestias facilis eligendi et pariatur.', 3, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(256, 28, 'Abe Howell', 'Qui saepe amet incidunt est. Quibusdam dolores deserunt ipsum in enim. Consectetur beatae alias voluptatum fugiat.', 1, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(257, 16, 'Cleveland Mueller', 'Consequatur consequatur nobis rem saepe recusandae aperiam aliquid. Possimus voluptatibus id sequi nam tempora. Modi laboriosam incidunt doloremque suscipit non possimus. Atque et velit quasi voluptatum perferendis modi tenetur quas.', 4, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(258, 45, 'Sid Wolf', 'Deserunt debitis sed error. Consequuntur tenetur inventore rem eligendi.', 0, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(259, 40, 'Lexi Gislason', 'Nobis illo non inventore. Voluptatum enim ut eum natus nam aliquid. Rerum earum commodi et nulla. Et non aperiam voluptatibus distinctio quis.', 1, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(260, 10, 'Zakary Schmidt', 'Officia pariatur iure iusto perferendis possimus quo. Adipisci hic nihil quidem optio molestiae odit quis. Perferendis in amet optio molestias.', 0, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(261, 10, 'Darryl Beahan', 'Omnis voluptas ut eos blanditiis maxime ad non. Debitis quasi deserunt tempore commodi quod aut rerum. Non est illum qui.', 3, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(262, 25, 'Gerry Frami', 'Est voluptatibus aut quibusdam error delectus velit. Officiis hic soluta quia pariatur voluptatibus similique magni incidunt. Et sed in eos maiores veritatis quasi esse.', 0, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(263, 49, 'Domenico Durgan DVM', 'Quisquam expedita suscipit nisi ducimus et. Provident facilis non similique quia rem. Dolor est voluptate esse quaerat excepturi id nostrum.', 0, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(264, 15, 'Dr. Abner Dietrich', 'Provident numquam et rerum. Ab libero voluptatem consequatur nihil quo praesentium sint. Rerum eaque illum qui voluptate quis quasi repellendus.', 0, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(265, 33, 'Dr. Elody Senger I', 'Cum sit at rerum sequi. Placeat iusto excepturi fugiat voluptatibus vel optio nulla est. Eum illum quo aliquam omnis nesciunt placeat. Quod voluptatibus sit animi iure nostrum.', 2, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(266, 4, 'Belle Cruickshank', 'Nulla accusamus et voluptatem ad omnis aliquam et. Reiciendis vel quae odio aut. Maiores id magni dignissimos voluptates. Itaque et repudiandae sed ipsum.', 1, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(267, 1, 'Celia Jerde', 'Error quae culpa sunt neque omnis animi. Et ut est minus. Temporibus veritatis omnis qui sed corrupti similique. Rerum deserunt similique voluptates necessitatibus.', 5, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(268, 41, 'Devante Wolf', 'Dolor et aliquid odio et ratione. Sapiente perspiciatis autem qui sit consequatur sint. Non sapiente velit nihil blanditiis eveniet asperiores. Et rem voluptatem impedit quia autem vel dolore. Totam est molestias magnam quia exercitationem.', 1, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(269, 26, 'Grady Williamson', 'Dolorem voluptates quis aut. Eos repellat fugiat officia doloribus a deserunt nihil. Voluptate hic vitae expedita minima. Sint quis molestiae inventore eos provident odit aut.', 5, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(270, 3, 'Dannie Dare', 'Nisi sequi ut repudiandae. Sit laborum praesentium ad ad unde ipsam. Ipsa est et fugiat nulla aut itaque velit. Animi voluptates accusantium quis reiciendis voluptatum ut voluptatum.', 2, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(271, 32, 'Prof. Americo Yundt', 'Voluptatibus sit expedita iste blanditiis beatae aspernatur. Libero ab saepe impedit dolorem architecto neque quasi. Corporis nemo necessitatibus sit fugiat qui saepe et. Sint quas est ut dolorem voluptatem ut laudantium.', 1, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(272, 4, 'Cleo Hoeger II', 'Et dicta et dolorem nam sed. Corporis numquam vel ea ab. Eos aut est aliquam quas fugit quaerat. Molestias velit vel perferendis quia labore ea.', 3, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(273, 34, 'Kirsten Crist', 'Adipisci aperiam aperiam qui molestiae quia. Quam fugiat voluptatem sint voluptas eos ea voluptatibus. Quo voluptatem sunt a totam. Ea eos voluptatem necessitatibus qui ut quibusdam ut.', 1, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(274, 16, 'Rahul Stark', 'Consequatur rerum vero nulla sunt architecto iure harum reiciendis. Suscipit dolorem dolores sed quam ut. Error provident cumque quas neque enim sint quasi.', 0, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(275, 32, 'Prof. Ebony Mante III', 'Commodi consequatur excepturi ratione natus. Voluptate est labore fuga illo totam. Voluptatem ea velit dolorem. Corporis nemo nobis omnis.', 3, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(276, 41, 'Mylene Nitzsche', 'Repellat porro sit dolores et quod. Vel nihil quia tempore blanditiis nemo modi voluptas recusandae. Sapiente quo quos eveniet earum tenetur et. Exercitationem qui hic tempore. Consequatur accusantium rem ut dolores.', 1, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(277, 22, 'Okey Swift', 'Aliquid repellat nobis non placeat sit et. Repellat dolorem quia tempora esse. Quos numquam veritatis error facere sapiente in et similique. Et autem eligendi eos provident.', 2, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(278, 14, 'Johanna Stroman', 'Labore commodi alias recusandae maxime deleniti veniam. Labore quod dolor delectus blanditiis eos facere. Voluptas rerum consequatur ut sit iste animi.', 5, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(279, 22, 'Ms. Gloria Bahringer', 'Impedit voluptates voluptatem et nisi tempora voluptatibus voluptates nihil. Dolores officiis ipsum et laborum aut itaque. Consequatur hic qui magnam sint rerum qui quasi quibusdam.', 5, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(280, 11, 'Darryl Crona IV', 'Ratione quod qui voluptates neque eum placeat impedit. Porro aut iure maiores velit voluptatem. Dicta nisi cupiditate rerum corrupti atque eligendi inventore. Ipsum inventore accusamus laboriosam voluptatem officia et. Rem asperiores molestiae voluptatem tempora autem distinctio nesciunt.', 0, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(281, 15, 'Jeanie Prohaska', 'Est voluptatem saepe ratione ut voluptatem. Dolorem quasi autem repellendus placeat ut alias aut. Ea illo voluptates consequatur. Dolores dolorem repudiandae voluptas cum aliquam id velit.', 2, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(282, 34, 'Meredith Langworth MD', 'Ut eaque occaecati velit nisi quisquam voluptatibus culpa quasi. Sit repellendus soluta necessitatibus quaerat et omnis voluptatem. Eum eos ipsam natus eaque blanditiis quam consectetur.', 0, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(283, 24, 'Korey Jacobson', 'Mollitia ab quia et omnis. Et repellat atque tempora deleniti nemo. Molestiae ullam delectus harum. Vitae nesciunt facilis eius dolorum eum a et.', 5, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(284, 17, 'Joshuah Kreiger', 'Magnam qui voluptatem deserunt et occaecati officia. Praesentium in laborum qui quod enim rem. Dolor velit repellat odio vel nam quia minima quidem. Autem dolorum eius corrupti ut.', 4, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(285, 41, 'Prof. Aurelia Crist', 'Rerum nihil nisi voluptas distinctio qui accusantium eos. Autem doloremque veniam quo laboriosam omnis voluptatem. Est vel dolorem quo et odit assumenda consequatur.', 0, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(286, 45, 'Enoch Koss', 'Et doloremque debitis molestias aspernatur quae adipisci sequi. Rerum qui eligendi voluptatum eaque illo velit est dolore. Debitis atque deleniti ducimus doloribus. Ipsa dicta quisquam quasi nihil exercitationem ea et optio.', 1, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(287, 34, 'Dr. Linda Ziemann DDS', 'Quidem rerum ut neque exercitationem totam dolorem. Qui nemo ut veritatis error libero nulla. Sed ullam totam officia molestiae et labore ea. Aut laudantium libero aut et accusamus dicta.', 0, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(288, 19, 'Emely Walter', 'Optio earum quo exercitationem. Est vero maiores rerum voluptatum harum qui commodi. Et dolore consequatur nihil aut ut odit. Culpa tempore mollitia temporibus ullam voluptatem.', 1, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(289, 25, 'Rosamond Shields', 'Consequuntur vitae quas enim magnam. Inventore sunt ut labore. Sequi ipsam consequatur qui consequatur autem minima tempore.', 3, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(290, 33, 'Althea Anderson', 'Ut vel ut officia aut quisquam consequatur. Quis sed est consequatur quaerat reprehenderit fugiat ipsam deleniti. Ducimus quasi in rerum maiores voluptatem excepturi debitis.', 4, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(291, 28, 'Norene Runte', 'Saepe repudiandae consequatur sunt assumenda quia atque ratione. Blanditiis sit ipsam est deleniti possimus animi dolorum. Consequatur laboriosam officiis ratione saepe tenetur sequi.', 2, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(292, 48, 'Dr. Hulda Aufderhar IV', 'Quia quia rerum architecto. Sit laboriosam nulla repellat repellat pariatur labore qui. Fuga explicabo dolorem sed et reprehenderit.', 2, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(293, 29, 'Dorothy Mante', 'Autem non quo dolores minima. Ipsa laborum natus quisquam qui odit et ipsam voluptatem. Et magni aut aut praesentium non eligendi voluptatem et. Veritatis suscipit ut expedita corrupti sint.', 2, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(294, 48, 'Ms. Ellie Daniel', 'Omnis voluptatem saepe omnis consectetur sit explicabo omnis. Delectus blanditiis labore ut nesciunt ab. Placeat dolorem aliquam aliquam facere est quis consequatur.', 5, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(295, 29, 'Miss Marge Feil Jr.', 'Voluptatem distinctio eaque voluptate. Optio ipsum voluptatem praesentium temporibus itaque. Ut aut nihil omnis quae beatae voluptates.', 1, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(296, 46, 'Beulah Schinner', 'Accusamus qui asperiores eius voluptate et voluptate et. Quam occaecati laboriosam porro nobis. Est iure facilis omnis dolores necessitatibus.', 2, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(297, 10, 'Isidro Schuppe', 'Voluptate ex omnis quia et fugit incidunt. Reiciendis et ullam fugiat et iusto optio repellendus. Et nam adipisci et in cupiditate dolorem sunt. Qui quos ex quam aut ducimus est numquam.', 2, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(298, 47, 'Sylvester Deckow', 'Et doloribus accusantium quia repudiandae et. Saepe dolores atque unde dignissimos aperiam fugiat. Nihil temporibus mollitia nulla. Et provident quidem odio est non aut libero.', 2, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(299, 36, 'Mr. Brian Labadie II', 'Veniam sequi laudantium tenetur deleniti aut. Est vitae repellendus dolores hic molestias. Dolorum nisi praesentium odio ducimus et. Rerum sint quos beatae consequatur est.', 3, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(300, 10, 'Kim Pfannerstill', 'Recusandae saepe aut exercitationem molestiae. Non consectetur quibusdam perspiciatis sed labore consequuntur dolores. Voluptatem sunt consectetur ut. Asperiores sit eveniet quo exercitationem sequi repellat at quidem.', 2, '2020-12-08 13:41:41', '2020-12-08 13:41:41'),
(301, 40, 'Harry', 'This product need some updates..', 3, '2020-12-08 14:07:39', '2020-12-08 14:07:39');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dr. Vincenzo Wilderman MD', 'jailyn57@example.com', '2020-12-08 13:41:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PWc2NtKmxn', '2020-12-08 13:41:40', '2020-12-08 13:41:40'),
(2, 'Lindsey Bailey', 'federico.bosco@example.org', '2020-12-08 13:41:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IItgdScJz1', '2020-12-08 13:41:40', '2020-12-08 13:41:40'),
(3, 'Dr. Lula Lind', 'hilma39@example.net', '2020-12-08 13:41:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4LZdcbQS3g', '2020-12-08 13:41:40', '2020-12-08 13:41:40'),
(4, 'Ludwig Moore', 'wheller@example.net', '2020-12-08 13:41:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'L2SloMpE3J', '2020-12-08 13:41:40', '2020-12-08 13:41:40'),
(5, 'Prof. Scarlett Ward', 'hfarrell@example.com', '2020-12-08 13:41:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0UI8tWobXP', '2020-12-08 13:41:40', '2020-12-08 13:41:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_product_id_foreign` (`product_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=302;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
