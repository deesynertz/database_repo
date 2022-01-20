-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2021 at 04:49 AM
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
-- Database: `lts_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cargo`
--

CREATE TABLE `cargo` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `weight` int(255) NOT NULL,
  `height` int(50) NOT NULL,
  `type` varchar(255) NOT NULL,
  `serviceStart` date NOT NULL,
  `serviceEnd` date NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `origin` varchar(255) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `supportDoc` varchar(255) DEFAULT NULL,
  `status` enum('request','panding','agreed','denied','taken','all') DEFAULT NULL,
  `posted` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cargo`
--

INSERT INTO `cargo` (`id`, `customer_id`, `weight`, `height`, `type`, `serviceStart`, `serviceEnd`, `description`, `origin`, `destination`, `supportDoc`, `status`, `posted`) VALUES
(1, 8, 300, 3, 'CNT', '2021-07-15', '2021-07-24', 'This is very heavy cargo', 'Tanzania,Morogoro,Mzumbe', 'Tanzania,Dar es Salaam,Kimara', NULL, 'taken', '2021-07-15'),
(2, 8, 4889, 4, 'IDP', '2021-07-16', '2021-08-03', 'Kinda heavy but need much care because is breakable material ', 'Tanzania,Dodoma,Manicipal', 'Kenya,Kericho,Kericho', NULL, 'taken', '2021-07-15'),
(3, 8, 59, 3, 'IDP', '2021-07-15', '2021-08-03', 'Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus', 'Rwanda,Kigali,ANY', 'Kenya,Garissa,any', NULL, 'all', '2021-07-15'),
(5, 8, 345, 23, 'IDP', '2021-07-20', '2021-07-23', 'asffadf vd fdf', 'Kenya,Embu,ANY', 'Rwanda,Southern,any', NULL, 'request', '2021-07-20');

-- --------------------------------------------------------

--
-- Table structure for table `cargo_details`
--

CREATE TABLE `cargo_details` (
  `id` int(11) NOT NULL,
  `cargoNo` varchar(25) NOT NULL,
  `cargo_id` int(11) NOT NULL,
  `provider_id` int(11) NOT NULL,
  `amount` int(12) NOT NULL,
  `status` enum('request','panding','agreed','denied','taken','all') DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cargo_details`
--

INSERT INTO `cargo_details` (`id`, `cargoNo`, `cargo_id`, `provider_id`, `amount`, `status`, `created`) VALUES
(5, '67ba4', 1, 3, 490, 'taken', '2021-07-15 04:31:50'),
(16, 'f8950', 2, 3, 1000, 'taken', '2021-07-24 12:03:28');

-- --------------------------------------------------------

--
-- Table structure for table `contract`
--

CREATE TABLE `contract` (
  `id` int(11) NOT NULL,
  `details_id` int(11) NOT NULL,
  `remarks` enum('agreed','terminated') DEFAULT NULL,
  `onDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `title` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title`) VALUES
(1, 'provider'),
(2, 'customer');

-- --------------------------------------------------------

--
-- Table structure for table `service_provider`
--

CREATE TABLE `service_provider` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `tinNo` int(50) NOT NULL,
  `brela` varchar(255) NOT NULL,
  `rating` int(255) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service_provider`
--

INSERT INTO `service_provider` (`id`, `user_id`, `name`, `tinNo`, `brela`, `rating`) VALUES
(1, 2, 'AxetrixHub', 2147483647, 'SJDGK4W57489', 0),
(2, 6, 'Deesynertz', 2147483647, '453795893FDJKJ', 3),
(3, 10, 'Test Comp', 2147483647, 'dfhjery3uyeru3', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(14) DEFAULT NULL,
  `image` varchar(600) DEFAULT 'default_avatar.png',
  `address` varchar(900) NOT NULL,
  `nationality` varchar(50) NOT NULL,
  `role_id` int(11) NOT NULL,
  `password` varchar(900) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `email`, `phone`, `image`, `address`, `nationality`, `role_id`, `password`, `regDate`) VALUES
(1, 'Alison Deo', 'deo@gmail.com', '0987654321', 'default_avatar.png', 'Moro', 'Tanzania', 2, '8cb2237d0679ca88db6464eac60da96345513964', '2021-07-12 20:45:04'),
(2, 'Alison Deo', 'htc@gmail.com', '123456781', 'default_avatar.png', 'Arusha', 'Tanzania', 1, '8cb2237d0679ca88db6464eac60da96345513964', '2021-07-12 20:46:17'),
(6, 'Alison Harry', 'deo@gmail.com', '255393887', 'default_avatar.png', 'Dar salaam', 'Tanzania', 1, '8cb2237d0679ca88db6464eac60da96345513964', '2021-07-13 04:41:51'),
(7, 'Ramadhan Iddi', 'idd@gmail.com', '0755665656', 'default_avatar.png', 'Dar es salaam', 'Kenya', 2, '8cb2237d0679ca88db6464eac60da96345513964', '2021-07-13 05:01:01'),
(8, 'Abdilah Mansool', 'abdi@gmail.com', '0987654321', 'default_avatar.png', 'Morogoro', 'United Kingdom', 2, '8cb2237d0679ca88db6464eac60da96345513964', '2021-07-13 10:52:13'),
(9, 'Aliy Mbuguni', 'ally@g.c', '0987654321', 'default_avatar.png', 'Morogoro', 'Tanzania, United Republic of', 1, '8cb2237d0679ca88db6464eac60da96345513964', '2021-07-14 05:44:32'),
(10, 'Test One', 'test@g.c', '0987654321', 'default_avatar.png', 'Morogoro', 'Tanzania, United Republic of', 1, '8cb2237d0679ca88db6464eac60da96345513964', '2021-07-15 16:14:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `cargo_details`
--
ALTER TABLE `cargo_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cargo_id` (`cargo_id`),
  ADD KEY `provider_id` (`provider_id`);

--
-- Indexes for table `contract`
--
ALTER TABLE `contract`
  ADD PRIMARY KEY (`id`),
  ADD KEY `details_id` (`details_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_provider`
--
ALTER TABLE `service_provider`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cargo`
--
ALTER TABLE `cargo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cargo_details`
--
ALTER TABLE `cargo_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `contract`
--
ALTER TABLE `contract`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `service_provider`
--
ALTER TABLE `service_provider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cargo`
--
ALTER TABLE `cargo`
  ADD CONSTRAINT `cargo_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cargo_details`
--
ALTER TABLE `cargo_details`
  ADD CONSTRAINT `cargo_details_ibfk_1` FOREIGN KEY (`cargo_id`) REFERENCES `cargo` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cargo_details_ibfk_2` FOREIGN KEY (`provider_id`) REFERENCES `service_provider` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `contract`
--
ALTER TABLE `contract`
  ADD CONSTRAINT `contract_ibfk_1` FOREIGN KEY (`details_id`) REFERENCES `cargo_details` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `service_provider`
--
ALTER TABLE `service_provider`
  ADD CONSTRAINT `service_provider_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
