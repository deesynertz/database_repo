-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2021 at 09:55 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kwako_ni_kwako`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Dar es salaam', NULL, NULL),
(2, 'Morogoro', NULL, NULL),
(3, 'Dodoma', '2021-09-06 07:11:45', '2021-09-06 07:11:45'),
(4, 'Tabora', '2021-09-06 07:16:31', '2021-09-06 07:16:31'),
(5, 'Mwanza', '2021-09-06 08:02:59', '2021-09-06 08:02:59'),
(6, 'Arusha', '2021-09-06 08:03:09', '2021-09-06 08:03:09'),
(7, 'Kigoma', '2021-09-06 08:04:27', '2021-09-06 08:04:27'),
(8, 'Tanga', '2021-09-08 03:21:44', '2021-09-08 03:21:44');

-- --------------------------------------------------------

--
-- Table structure for table `contracts`
--

CREATE TABLE `contracts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `service_id` int(10) UNSIGNED NOT NULL,
  `district_id` int(10) UNSIGNED NOT NULL,
  `price_range_id` int(10) UNSIGNED NOT NULL,
  `square_size_id` int(10) UNSIGNED NOT NULL,
  `map_id` int(10) UNSIGNED NOT NULL,
  `status` enum('initial','full','not completed','completed') COLLATE utf8mb4_unicode_ci NOT NULL,
  `start` date DEFAULT NULL,
  `downpayment` bigint(20) DEFAULT NULL,
  `amount` bigint(20) DEFAULT NULL,
  `loan` bigint(20) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(10) UNSIGNED NOT NULL,
  `city_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `city_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Temeke', NULL, NULL),
(2, 1, 'Mbezi', NULL, NULL),
(3, 2, 'Mzumbe', NULL, NULL),
(4, 1, 'Ilala', '2021-09-06 08:00:34', '2021-09-06 08:00:34'),
(5, 2, 'Nane Nane', '2021-09-06 08:02:06', '2021-09-06 08:02:06');

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
-- Table structure for table `maps`
--

CREATE TABLE `maps` (
  `id` int(10) UNSIGNED NOT NULL,
  `property_type_id` int(10) UNSIGNED NOT NULL,
  `square_size_id` int(10) UNSIGNED NOT NULL,
  `map_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `features` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `maps`
--

INSERT INTO `maps` (`id`, `property_type_id`, `square_size_id`, `map_path`, `features`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '3-Bed-13x15meters-map.jpg', '', '2021-09-04 18:00:00', NULL),
(2, 1, 2, '3-Bed-12x11meter-map.jpg', '', '2021-09-05 18:00:00', NULL),
(3, 3, 3, '1 Bedroom-616e6481b571f-7x7meters-map.jpeg', '[\"Balcony\",\"Parking\",\"Private space\"]', '2021-10-19 03:24:01', '2021-10-19 03:24:01'),
(4, 4, 4, '4 bedroom-616e786349850-20x20meters-map.jpeg', '[\"Balcony\",\"Parking\",\"Garage\",\"Private space\"]', '2021-10-19 04:48:51', '2021-10-19 04:48:51'),
(5, 3, 2, '1 Bedroom-616e78ac97b0d-12x11meters-map.jpeg', '[\"Garage\"]', '2021-10-19 04:50:04', '2021-10-19 04:50:04');

-- --------------------------------------------------------

--
-- Table structure for table `map_views`
--

CREATE TABLE `map_views` (
  `id` int(10) UNSIGNED NOT NULL,
  `map_id` int(10) UNSIGNED NOT NULL,
  `map_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `map_views`
--

INSERT INTO `map_views` (`id`, `map_id`, `map_path`, `created_at`, `updated_at`) VALUES
(1, 2, '3-Bed-13x15meters-map.jpg', NULL, NULL),
(2, 2, '3-Bed-13x15meters-map.jpg', NULL, NULL);

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
(16, '2014_10_12_000000_create_users_table', 1),
(17, '2014_10_12_100000_create_password_resets_table', 1),
(18, '2019_08_19_000000_create_failed_jobs_table', 1),
(19, '2021_09_01_121440_create_cities_table', 1),
(20, '2021_09_03_053632_create_districts_table', 1),
(21, '2021_09_03_053640_create_services_table', 1),
(22, '2021_09_03_053646_create_property_types_table', 1),
(23, '2021_09_03_053701_create_maps_table', 1),
(24, '2021_09_03_054101_create_map_views_table', 1),
(25, '2021_09_03_054114_create_properties_table', 1),
(26, '2021_09_03_054130_create_property_images_table', 1),
(27, '2021_09_03_054230_create_contracts_table', 1),
(28, '2021_09_03_054304_create_transactions_table', 1),
(29, '2021_09_03_055633_create_otp_boxes_table', 1),
(30, '2021_09_06_053421_create_price_ranges_table', 1),
(31, '2021_10_14_050917_create_square_sizes_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `otp_boxes`
--

CREATE TABLE `otp_boxes` (
  `id` int(10) UNSIGNED NOT NULL,
  `phonenumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `price_ranges`
--

CREATE TABLE `price_ranges` (
  `id` int(10) UNSIGNED NOT NULL,
  `property_type_id` int(10) UNSIGNED NOT NULL,
  `district_id` int(10) UNSIGNED NOT NULL,
  `square_size_id` int(10) UNSIGNED NOT NULL,
  `sqrAmount` bigint(20) NOT NULL,
  `land` bigint(20) NOT NULL,
  `material` bigint(20) NOT NULL,
  `labour` bigint(20) NOT NULL,
  `supervison` bigint(20) NOT NULL,
  `reguration` bigint(20) NOT NULL,
  `profit` decimal(12,1) NOT NULL,
  `rangeFrom` bigint(20) NOT NULL,
  `rangeTo` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `price_ranges`
--

INSERT INTO `price_ranges` (`id`, `property_type_id`, `district_id`, `square_size_id`, `sqrAmount`, `land`, `material`, `labour`, `supervison`, `reguration`, `profit`, `rangeFrom`, `rangeTo`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 10000, 1750000, 20000000, 4000000, 2000000, 300000, '10.0', 37730000, 40000000, '2021-09-27 21:00:00', NULL),
(2, 1, 3, 2, 9000, 1188000, 20000000, 4000000, 2000000, 100000, '10.0', 35700000, 55000000, '2021-09-27 21:00:00', NULL),
(3, 1, 1, 1, 10000, 1750000, 20000000, 4000000, 2000000, 300000, '10.0', 37730000, 40000000, '2021-09-27 21:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `property_type_id` int(10) UNSIGNED NOT NULL,
  `square_size_id` int(10) UNSIGNED NOT NULL,
  `map_id` int(10) UNSIGNED NOT NULL,
  `service_id` int(10) UNSIGNED NOT NULL,
  `district_id` int(10) UNSIGNED NOT NULL,
  `condition` enum('New','Old','Good Condition') COLLATE utf8mb4_unicode_ci NOT NULL,
  `features` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` bigint(20) NOT NULL,
  `margin` int(10) NOT NULL,
  `status` enum('Draft','Unallocated','Allocated') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Draft',
  `year` int(10) NOT NULL,
  `document` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `house_no` int(10) NOT NULL,
  `embed_map` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `name`, `property_type_id`, `square_size_id`, `map_id`, `service_id`, `district_id`, `condition`, `features`, `amount`, `margin`, `status`, `year`, `document`, `house_no`, `embed_map`, `description`, `image_path`, `created_at`, `updated_at`) VALUES
(1, '3-Bed-13x15meters', 1, 1, 1, 2, 2, 'New', '[\"Parking\",\"Alarm\",\"Electric Range\",\"Garage\"]', 67000000, 10, 'Unallocated', 2018, '3 Beds-616bb3ecd0360.docx', 37893, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3502.333460644938!2d77.38356901504943!3d28.61976638242279!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390ceff3a1792c7d%3A0xf37278c381e08fa9!2sApex+TG+India+Pvt+Ltd+Java%2C+Android%2C+PHP+Training+Noida!5e0!3m2!1sen!2sin!4v1547536527279\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Potenti elit lectus augue eget iaculis vitae etiam, ullamcorper etiam bibendum ad feugiat magna accumsan dolor, nibh molestie cras hac ac ad massa, fusce ante convallis ante urna molestie vaccumsan adipiscing risus, libero condimentum venenatis sit nisl nisi ultricies sed, fames aliquet consectetur consequat nostra molestie neque nullam scelerisque neque commodo turpis quisque etiam egestas vulputate massa, curabitur tellus massa venenatis congue dolor enim integer luctus, nisi suscipit gravida fames quis vulputate nisi viverra luctus id leo dictum lorem, inceptos nibh orci.', '3-Bed-13x15meters-img.jpg', '2021-09-04 18:00:00', NULL),
(2, '3-Bed-13x15meters', 1, 1, 1, 1, 1, 'New', '[\"Parking\",\"Alarm\",\"Electric Range\",\"Garage\"]', 40000000, 10, 'Unallocated', 2018, '3 Beds-616bb3ecd0360.docx', 37893, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3502.333460644938!2d77.38356901504943!3d28.61976638242279!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390ceff3a1792c7d%3A0xf37278c381e08fa9!2sApex+TG+India+Pvt+Ltd+Java%2C+Android%2C+PHP+Training+Noida!5e0!3m2!1sen!2sin!4v1547536527279\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Potenti elit lectus augue eget iaculis vitae etiam, ullamcorper etiam bibendum ad feugiat magna accumsan dolor, nibh molestie cras hac ac ad massa, fusce ante convallis ante urna molestie vaccumsan adipiscing risus, libero condimentum venenatis sit nisl nisi ultricies sed, fames aliquet consectetur consequat nostra molestie neque nullam scelerisque neque commodo turpis quisque etiam egestas vulputate massa, curabitur tellus massa venenatis congue dolor enim integer luctus, nisi suscipit gravida fames quis vulputate nisi viverra luctus id leo dictum lorem, inceptos nibh orci.', 'recent-property-4.jpg', '2021-09-04 18:00:00', NULL),
(3, '3-Bed-13x15meters', 1, 1, 1, 2, 3, 'New', '[\"Parking\",\"Alarm\",\"Electric Range\",\"Garage\"]', 30000000, 10, 'Unallocated', 2018, '3 Beds-616bb3ecd0360.docx', 37893, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3502.333460644938!2d77.38356901504943!3d28.61976638242279!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390ceff3a1792c7d%3A0xf37278c381e08fa9!2sApex+TG+India+Pvt+Ltd+Java%2C+Android%2C+PHP+Training+Noida!5e0!3m2!1sen!2sin!4v1547536527279\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Potenti elit lectus augue eget iaculis vitae etiam, ullamcorper etiam bibendum ad feugiat magna accumsan dolor, nibh molestie cras hac ac ad massa, fusce ante convallis ante urna molestie vaccumsan adipiscing risus, libero condimentum venenatis sit nisl nisi ultricies sed, fames aliquet consectetur consequat nostra molestie neque nullam scelerisque neque commodo turpis quisque etiam egestas vulputate massa, curabitur tellus massa venenatis congue dolor enim integer luctus, nisi suscipit gravida fames quis vulputate nisi viverra luctus id leo dictum lorem, inceptos nibh orci.', '3-Bed-13x15meters-img.jpg', '2021-09-04 18:00:00', NULL),
(4, '3-Bed-12x11meters', 1, 2, 2, 2, 1, 'Old', '[\"Parking\",\"Alarm\",\"Electric Range\",\"Garage\"]', 15000000, 10, 'Unallocated', 2018, '3 Beds-616bb3ecd0360.docx', 37893, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3502.333460644938!2d77.38356901504943!3d28.61976638242279!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390ceff3a1792c7d%3A0xf37278c381e08fa9!2sApex+TG+India+Pvt+Ltd+Java%2C+Android%2C+PHP+Training+Noida!5e0!3m2!1sen!2sin!4v1547536527279\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Potenti elit lectus augue eget iaculis vitae etiam, ullamcorper etiam bibendum ad feugiat magna accumsan dolor, nibh molestie cras hac ac ad massa, fusce ante convallis ante urna molestie vaccumsan adipiscing risus, libero condimentum venenatis sit nisl nisi ultricies sed, fames aliquet consectetur consequat nostra molestie neque nullam scelerisque neque commodo turpis quisque etiam egestas vulputate massa, curabitur tellus massa venenatis congue dolor enim integer luctus, nisi suscipit gravida fames quis vulputate nisi viverra luctus id leo dictum lorem, inceptos nibh orci.', '3-Bed-12x11meter-img.jpg', '2021-09-04 18:00:00', NULL),
(5, '3-Bed-13x15meters', 1, 1, 1, 2, 2, 'Old', '[\"Parking\",\"Alarm\",\"Electric Range\",\"Garage\"]', 73000000, 10, 'Unallocated', 2018, '3 Beds-616bb3ecd0360.docx', 37893, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3502.333460644938!2d77.38356901504943!3d28.61976638242279!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390ceff3a1792c7d%3A0xf37278c381e08fa9!2sApex+TG+India+Pvt+Ltd+Java%2C+Android%2C+PHP+Training+Noida!5e0!3m2!1sen!2sin!4v1547536527279\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Potenti elit lectus augue eget iaculis vitae etiam, ullamcorper etiam bibendum ad feugiat magna accumsan dolor, nibh molestie cras hac ac ad massa, fusce ante convallis ante urna molestie vaccumsan adipiscing risus, libero condimentum venenatis sit nisl nisi ultricies sed, fames aliquet consectetur consequat nostra molestie neque nullam scelerisque neque commodo turpis quisque etiam egestas vulputate massa, curabitur tellus massa venenatis congue dolor enim integer luctus, nisi suscipit gravida fames quis vulputate nisi viverra luctus id leo dictum lorem, inceptos nibh orci.', '3-Bed-13x15meters-img.jpg', '2021-09-04 18:00:00', NULL),
(6, '3-Bed-13x15meters', 1, 1, 1, 1, 1, 'Old', '[\"Parking\",\"Alarm\",\"Electric Range\",\"Garage\"]', 17000000, 10, 'Unallocated', 2018, '3 Beds-616bb3ecd0360.docx', 37893, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3502.333460644938!2d77.38356901504943!3d28.61976638242279!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390ceff3a1792c7d%3A0xf37278c381e08fa9!2sApex+TG+India+Pvt+Ltd+Java%2C+Android%2C+PHP+Training+Noida!5e0!3m2!1sen!2sin!4v1547536527279\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Potenti elit lectus augue eget iaculis vitae etiam, ullamcorper etiam bibendum ad feugiat magna accumsan dolor, nibh molestie cras hac ac ad massa, fusce ante convallis ante urna molestie vaccumsan adipiscing risus, libero condimentum venenatis sit nisl nisi ultricies sed, fames aliquet consectetur consequat nostra molestie neque nullam scelerisque neque commodo turpis quisque etiam egestas vulputate massa, curabitur tellus massa venenatis congue dolor enim integer luctus, nisi suscipit gravida fames quis vulputate nisi viverra luctus id leo dictum lorem, inceptos nibh orci.', '3-Bed-13x15meters-img.jpg', '2021-09-04 18:00:00', NULL),
(7, '3-Bed-12x11meters', 1, 2, 2, 2, 1, 'Good Condition', '[\"Parking\",\"Alarm\",\"Electric Range\",\"Garage\"]', 23000000, 10, 'Unallocated', 2018, '3 Beds-616bb3ecd0360.docx', 37893, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3502.333460644938!2d77.38356901504943!3d28.61976638242279!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390ceff3a1792c7d%3A0xf37278c381e08fa9!2sApex+TG+India+Pvt+Ltd+Java%2C+Android%2C+PHP+Training+Noida!5e0!3m2!1sen!2sin!4v1547536527279\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Potenti elit lectus augue eget iaculis vitae etiam, ullamcorper etiam bibendum ad feugiat magna accumsan dolor, nibh molestie cras hac ac ad massa, fusce ante convallis ante urna molestie vaccumsan adipiscing risus, libero condimentum venenatis sit nisl nisi ultricies sed, fames aliquet consectetur consequat nostra molestie neque nullam scelerisque neque commodo turpis quisque etiam egestas vulputate massa, curabitur tellus massa venenatis congue dolor enim integer luctus, nisi suscipit gravida fames quis vulputate nisi viverra luctus id leo dictum lorem, inceptos nibh orci.', '3-Bed-12x11meter-img.jpg', '2021-09-04 18:00:00', NULL),
(8, '3 Beds', 1, 1, 2, 2, 5, 'New', '[\"Parking\",\"Alarm\",\"Electric Range\",\"Garage\"]', 70000000, 10, 'Unallocated', 2021, '3 Beds-616bb3ecd0360.docx', 6534786, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3502.333460644938!2d77.38356901504943!3d28.61976638242279!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390ceff3a1792c7d%3A0xf37278c381e08fa9!2sApex+TG+India+Pvt+Ltd+Java%2C+Android%2C+PHP+Training+Noida!5e0!3m2!1sen!2sin!4v1547536527279\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Potenti elit lectus augue eget iaculis vitae etiam, ullamcorper etiam bibendum ad feugiat magna accumsan dolor, nibh molestie cras hac ac ad massa, fusce ante convallis ante urna molestie vaccumsan adipiscing risus, libero condimentum venenatis sit nisl nisi ultricies sed, fames aliquet consectetur consequat nostra molestie neque nullam scelerisque neque commodo turpis quisque etiam egestas vulputate massa, curabitur tellus massa venenatis congue dolor enim integer luctus, nisi suscipit gravida fames quis vulputate nisi viverra luctus id leo dictum lorem, inceptos nibh orci.', '3 Beds-616bb3ecd0360.jpeg', '2021-10-17 02:26:04', '2021-10-17 02:26:04'),
(9, 'Family House-3 Beds', 1, 2, 1, 2, 4, 'Good Condition', '[\"Air conditioning\",\"Swimming Pool\",\"Balcony\"]', 50000000, 10, 'Draft', 2018, '3 Beds-616ce52c8eada.docx', 35151, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3502.333460644938!2d77.38356901504943!3d28.61976638242279!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390ceff3a1792c7d%3A0xf37278c381e08fa9!2sApex+TG+India+Pvt+Ltd+Java%2C+Android%2C+PHP+Training+Noida!5e0!3m2!1sen!2sin!4v1547536527279\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Potenti elit lectus augue eget iaculis vitae etiam, ullamcorper etiam bibendum ad feugiat magna accumsan dolor, nibh molestie cras hac ac ad massa, fusce ante convallis ante urna molestie vulputate bibendum tempus ante justo arcu', '3 Beds-616ce52c8eada.jpeg', '2021-10-18 00:08:28', '2021-10-18 00:08:28');

-- --------------------------------------------------------

--
-- Table structure for table `property_images`
--

CREATE TABLE `property_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `property_id` int(10) UNSIGNED NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `property_types`
--

CREATE TABLE `property_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `property_types`
--

INSERT INTO `property_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '3 Bedroom', NULL, NULL),
(2, '2 floor 3 bedroom', NULL, NULL),
(3, '1 Bedroom', '2021-10-19 02:36:53', '2021-10-19 02:36:53'),
(4, '4 bedroom', '2021-10-19 02:56:09', '2021-10-19 02:56:09');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Rent To Own', 'Start living within your own house as soon as you wish, Yes even in less than 6 months with this option we make it possible', '2021-08-31 21:00:00', NULL),
(2, 'Mortgage', 'With this mortgage originator option-You get the best property at the lowest interest rate in the market. Make your property search process and mortgage application much easier, swifter and seamless with us.', '2021-08-31 21:00:00', NULL),
(3, 'Construction Finance', 'Complete and enter your house now. We make it possible just let us know at which level you need us to come in your house construction and we will, It doenst matter weather you only have a plot of land or just in need of finishing we can always assist your in finishing your faster.', NULL, NULL),
(4, 'Investment', 'Well planned and managed residential properties are still the safest form of investment all the world. Ngata homes gives you an opportunity to invest in well planned and managed properties meant to meet the housing demand in the country', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `square_sizes`
--

CREATE TABLE `square_sizes` (
  `id` int(10) UNSIGNED NOT NULL,
  `height` int(11) NOT NULL,
  `width` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `square_sizes`
--

INSERT INTO `square_sizes` (`id`, `height`, `width`, `created_at`, `updated_at`) VALUES
(1, 13, 15, '2021-10-19 01:53:56', NULL),
(2, 12, 11, '2021-10-19 01:53:56', NULL),
(3, 7, 7, '2021-10-19 01:53:56', '2021-10-19 01:53:56'),
(4, 20, 20, '2021-10-19 04:46:07', '2021-10-19 04:46:07');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `contract_id` int(10) UNSIGNED NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phonenumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DOB` date DEFAULT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_type_id` enum('LID','NID','VID') COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','customer','investor') COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phonenumber`, `DOB`, `nationality`, `card_type_id`, `card_no`, `role`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Alison Deogratias', 'alison@gmail.com', '0744004898', '0000-00-00', '', '', '', 'admin', '2021-09-01 18:00:00', '$2y$10$YdFOr4h5pFh4AS7b0qaFpOy.uUWTg8l0NHkxdcBQBgxyN8OYsHOWq', NULL, '2021-09-01 18:00:00', NULL),
(2, 'Deogratias Alison', 'deesynertz@gmail.com', '0744004897', '0000-00-00', '', '', '', 'customer', NULL, '$2y$10$YdFOr4h5pFh4AS7b0qaFpOy.uUWTg8l0NHkxdcBQBgxyN8OYsHOWq', NULL, '2021-09-02 18:00:00', NULL),
(3, 'Kelvin Harry', 'deo@gmail.com', '0744004899', NULL, NULL, 'LID', '1996260710000028', 'customer', NULL, '$2y$10$y8RYdSkGClqzJmPNDaNGoOIq6kPx17.vACpO./wYxxmsexQBKwUjK', NULL, '2021-09-25 03:45:19', '2021-09-25 03:45:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contracts`
--
ALTER TABLE `contracts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contracts_user_id_foreign` (`user_id`),
  ADD KEY `contracts_service_id_foreign` (`service_id`),
  ADD KEY `contracts_property_id_foreign` (`price_range_id`),
  ADD KEY `square_size_id` (`square_size_id`),
  ADD KEY `district_id` (`district_id`),
  ADD KEY `map_id` (`map_id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `districts_city_id_foreign` (`city_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `maps`
--
ALTER TABLE `maps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `maps_property_type_id_foreign` (`property_type_id`),
  ADD KEY `maps_ibfk_1` (`square_size_id`);

--
-- Indexes for table `map_views`
--
ALTER TABLE `map_views`
  ADD PRIMARY KEY (`id`),
  ADD KEY `map_views_map_id_foreign` (`map_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otp_boxes`
--
ALTER TABLE `otp_boxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `price_ranges`
--
ALTER TABLE `price_ranges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `price_ranges_district_id_foreign` (`district_id`),
  ADD KEY `square_sizes_id` (`square_size_id`),
  ADD KEY `property_type_id` (`property_type_id`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `properties_property_type_id_foreign` (`property_type_id`),
  ADD KEY `properties_map_id_foreign` (`map_id`),
  ADD KEY `properties_district_id_foreign` (`district_id`),
  ADD KEY `service_id` (`service_id`),
  ADD KEY `square_size_id` (`square_size_id`);

--
-- Indexes for table `property_images`
--
ALTER TABLE `property_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `property_images_property_id_foreign` (`property_id`);

--
-- Indexes for table `property_types`
--
ALTER TABLE `property_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `square_sizes`
--
ALTER TABLE `square_sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_contracts_id_foreign` (`contract_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phonenumber_unique` (`phonenumber`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contracts`
--
ALTER TABLE `contracts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `maps`
--
ALTER TABLE `maps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `map_views`
--
ALTER TABLE `map_views`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `otp_boxes`
--
ALTER TABLE `otp_boxes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `price_ranges`
--
ALTER TABLE `price_ranges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `property_images`
--
ALTER TABLE `property_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `property_types`
--
ALTER TABLE `property_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `square_sizes`
--
ALTER TABLE `square_sizes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `contracts`
--
ALTER TABLE `contracts`
  ADD CONSTRAINT `contracts_ibfk_1` FOREIGN KEY (`square_size_id`) REFERENCES `square_sizes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `contracts_ibfk_2` FOREIGN KEY (`district_id`) REFERENCES `districts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `contracts_ibfk_3` FOREIGN KEY (`map_id`) REFERENCES `maps` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `contracts_property_id_foreign` FOREIGN KEY (`price_range_id`) REFERENCES `price_ranges` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `contracts_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `contracts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `districts`
--
ALTER TABLE `districts`
  ADD CONSTRAINT `districts_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `maps`
--
ALTER TABLE `maps`
  ADD CONSTRAINT `maps_ibfk_1` FOREIGN KEY (`square_size_id`) REFERENCES `square_sizes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `maps_property_type_id_foreign` FOREIGN KEY (`property_type_id`) REFERENCES `property_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `map_views`
--
ALTER TABLE `map_views`
  ADD CONSTRAINT `map_views_map_id_foreign` FOREIGN KEY (`map_id`) REFERENCES `maps` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `price_ranges`
--
ALTER TABLE `price_ranges`
  ADD CONSTRAINT `price_ranges_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `districts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `price_ranges_ibfk_1` FOREIGN KEY (`square_size_id`) REFERENCES `square_sizes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `price_ranges_ibfk_2` FOREIGN KEY (`property_type_id`) REFERENCES `property_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `properties`
--
ALTER TABLE `properties`
  ADD CONSTRAINT `properties_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `districts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `properties_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `properties_ibfk_2` FOREIGN KEY (`square_size_id`) REFERENCES `square_sizes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `properties_map_id_foreign` FOREIGN KEY (`map_id`) REFERENCES `maps` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `properties_property_type_id_foreign` FOREIGN KEY (`property_type_id`) REFERENCES `property_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `property_images`
--
ALTER TABLE `property_images`
  ADD CONSTRAINT `property_images_property_id_foreign` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_contracts_id_foreign` FOREIGN KEY (`contract_id`) REFERENCES `contracts` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
