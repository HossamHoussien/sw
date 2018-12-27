-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2018 at 01:48 AM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sw`
--
CREATE DATABASE IF NOT EXISTS `sw` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `sw`;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_12_26_213750_create_posts_table', 1),
(4, '2018_12_26_213812_create_tags_table', 1),
(5, '2018_12_26_225252_create_posts_tags_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `itemSpecs` text COLLATE utf8mb4_unicode_ci,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `closed` tinyint(1) NOT NULL DEFAULT '0',
  `views` int(11) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `itemSpecs`, `location`, `closed`, `views`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'I have found a car', 'This is the post body', 'color: black,\r\nmodel: bmw,\r\nplate number: 123456', 'giza', 0, 0, NULL, NULL, NULL),
(2, 'I have found a car', 'This is the post body', 'color: black,\r\nmodel: bmw,\r\nplate number: 123456', 'giza', 0, 0, NULL, NULL, NULL),
(3, 'I have found a car', 'This is the post body', 'color: black,\r\nmodel: bmw,\r\nplate number: 123456', 'cairo', 0, 0, NULL, NULL, NULL),
(4, 'I have found a car', 'This is the post body', 'color: black,\r\nmodel: bmw,\r\nplate number: 123456', 'cairo', 0, 0, NULL, NULL, NULL),
(5, 'I have found a car', 'This is the post body', 'color: black,\r\nmodel: bmw,\r\nplate number: 123456', 'alex', 0, 0, NULL, NULL, NULL),
(6, 'I have found a car', 'This is the post body', 'color: black,\r\nmodel: bmw,\r\nplate number: 123456', 'cairo', 0, 0, NULL, NULL, NULL),
(7, 'I have found a car', 'This is the post body', 'color: black,\r\nmodel: bmw,\r\nplate number: 123456', 'giza', 0, 0, NULL, NULL, NULL),
(8, 'I have found a car', 'This is the post body', 'color: black,\r\nmodel: bmw,\r\nplate number: 123456', 'cairo', 0, 0, NULL, NULL, NULL),
(9, 'new title', 'body', NULL, 'aswan', 0, 0, NULL, '2018-12-26 22:40:01', '2018-12-26 22:40:01'),
(11, 'final title', 'final body', NULL, 'alex', 0, 0, NULL, '2018-12-26 22:42:19', '2018-12-26 22:42:19'),
(12, 'found a briefcase', 'body goes here', NULL, 'maddi', 0, 0, NULL, '2018-12-26 22:44:01', '2018-12-26 22:44:01'),
(13, 'Test 1', 'test test test', NULL, 'haram', 0, 0, NULL, '2018-12-26 22:44:36', '2018-12-26 22:44:36');

-- --------------------------------------------------------

--
-- Table structure for table `posts_tags`
--

CREATE TABLE IF NOT EXISTS `posts_tags` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts_tags`
--

INSERT INTO `posts_tags` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 3, NULL, NULL),
(3, 2, 4, NULL, NULL),
(4, 2, 2, NULL, NULL),
(5, 3, 5, NULL, NULL),
(6, 3, 1, NULL, NULL),
(7, 4, 4, NULL, NULL),
(8, 4, 2, NULL, NULL),
(9, 5, 1, NULL, NULL),
(10, 5, 3, NULL, NULL),
(11, 6, 4, NULL, NULL),
(12, 6, 2, NULL, NULL),
(13, 7, 5, NULL, NULL),
(14, 7, 1, NULL, NULL),
(15, 8, 4, NULL, NULL),
(16, 8, 3, NULL, NULL),
(17, 9, 1, NULL, NULL),
(18, 11, 1, NULL, NULL),
(19, 11, 3, NULL, NULL),
(20, 11, 4, NULL, NULL),
(21, 12, 1, NULL, NULL),
(22, 12, 2, NULL, NULL),
(23, 12, 3, NULL, NULL),
(24, 12, 4, NULL, NULL),
(25, 12, 5, NULL, NULL),
(26, 13, 1, NULL, NULL),
(27, 13, 2, NULL, NULL),
(28, 13, 3, NULL, NULL),
(29, 13, 4, NULL, NULL),
(30, 13, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Cars', NULL, NULL),
(2, 'Personal Stuff', NULL, NULL),
(3, 'Papers', NULL, NULL),
(4, 'Money', NULL, NULL),
(5, 'Misc', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` enum('user','admin') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `phone`, `address`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'hossam', 'h@h.com', '$2y$10$e6pTAt5KVZ/boLOl4PqvY.UiO/y54/C.JdH5cWcO9DiEtLfUQmTMC', NULL, NULL, 'user', 'nM5lly0jMznUXm2Zm8eb3E65WPyZnVrXhoHoeiTAop6IopmMUPtMOj5hBCPk', '2018-12-26 21:15:52', '2018-12-26 21:15:52');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
