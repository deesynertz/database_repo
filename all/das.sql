-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2021 at 03:07 PM
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
-- Database: `das`
--

-- --------------------------------------------------------

--
-- Table structure for table `access_types`
--

CREATE TABLE `access_types` (
  `a_type_id` int(11) NOT NULL,
  `a_type_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `access_types`
--

INSERT INTO `access_types` (`a_type_id`, `a_type_name`) VALUES
(1, 'admin'),
(2, 'normal'),
(3, 'finance');

-- --------------------------------------------------------

--
-- Table structure for table `bid_tb`
--

CREATE TABLE `bid_tb` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `currentPrice` int(11) NOT NULL,
  `user_id` varchar(13) NOT NULL,
  `endTime` datetime NOT NULL,
  `bid_status` enum('sold','not sold','pending') DEFAULT 'not sold'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bid_tb`
--

INSERT INTO `bid_tb` (`id`, `item_id`, `currentPrice`, `user_id`, `endTime`, `bid_status`) VALUES
(9, 5, 50004, 'eessa', '2021-08-03 13:03:58', 'pending'),
(11, 9, 50004, 'eessa', '2021-08-02 13:55:35', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(25) NOT NULL,
  `item_cat` int(11) NOT NULL,
  `item_cat_stat` int(11) NOT NULL,
  `user` varchar(13) NOT NULL,
  `price` float NOT NULL,
  `countdown` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `itemStatus` enum('sold','not sold','pending') NOT NULL DEFAULT 'not sold'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`item_id`, `item_name`, `item_cat`, `item_cat_stat`, `user`, `price`, `countdown`, `start_time`, `itemStatus`) VALUES
(4, 'wallpaper', 1, 1, 'eessa', 5000, 30, '2021-07-30 19:12:21', 'not sold'),
(5, 'wallpaper', 1, 1, 'eddie', 5000, 20, '2021-07-31 18:36:00', 'pending'),
(6, 'wallpaper', 1, 3, 'eessa', 10000, 12, '2021-07-31 13:21:00', 'not sold'),
(8, 'des', 1, 2, 'eessa', 5000, 60, '2021-07-30 11:12:21', 'not sold'),
(9, 'bridge', 2, 3, 'eddie', 10000, 1, '2021-07-30 17:12:21', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `item_cats`
--

CREATE TABLE `item_cats` (
  `icat_id` int(11) NOT NULL,
  `icat_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_cats`
--

INSERT INTO `item_cats` (`icat_id`, `icat_name`) VALUES
(1, 'accessories'),
(2, 'Vehicle'),
(3, 'clothes');

-- --------------------------------------------------------

--
-- Table structure for table `item_cat_status`
--

CREATE TABLE `item_cat_status` (
  `icst_id` int(11) NOT NULL,
  `icst_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_cat_status`
--

INSERT INTO `item_cat_status` (`icst_id`, `icst_name`) VALUES
(1, 'new'),
(2, 'used'),
(3, 'Good Condition');

-- --------------------------------------------------------

--
-- Table structure for table `item_image`
--

CREATE TABLE `item_image` (
  `item_img_id` int(11) NOT NULL,
  `item_img_name` longtext NOT NULL,
  `item` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_image`
--

INSERT INTO `item_image` (`item_img_id`, `item_img_name`, `item`) VALUES
(9, '2021-05-27-10-21-37_60af72b1f3405_paper 2.jpg', 4),
(10, '2021-05-27-10-24-18_60af7352d67bf_nature_wallpaper.jpg', 5),
(11, '2021-06-27-08-06-40_60d83190e62ab_paper 3.jpg', 6),
(12, '2021-07-29-22-09-17_6103270d0e538_DES.PNG', 8),
(13, '2021-07-30-05-39-44_610390a05ccd6_50178.jpg', 9);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` varchar(13) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `middle_name` varchar(25) DEFAULT NULL,
  `last_name` varchar(25) NOT NULL,
  `phone_on` int(13) NOT NULL,
  `email` varchar(40) NOT NULL,
  `user_img` varchar(255) DEFAULT NULL,
  `user_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `middle_name`, `last_name`, `phone_on`, `email`, `user_img`, `user_address`) VALUES
('13303155', 'Erick', 'E.', 'Mrema', 753796699, 'ermrema@mustudent.ac.tz', NULL, 'Mzumbe'),
('eddie', 'eddie', 'gaucho', 'maestro', 715955971, 'eddie@gmail.com', NULL, 'morogoro'),
('eessa', 'eessa', 'ramadhan', 'saeed', 754955971, 'eessa@gmail.com', NULL, 'morogoro'),
('man', 'Eric', 'eric', 'eric', 0, 'emai@email.com', NULL, 'mzumbe');

-- --------------------------------------------------------

--
-- Table structure for table `users_login`
--

CREATE TABLE `users_login` (
  `login_id` int(11) NOT NULL,
  `user_pwd` varchar(40) NOT NULL,
  `user` varchar(13) NOT NULL,
  `access_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_login`
--

INSERT INTO `users_login` (`login_id`, `user_pwd`, `user`, `access_type`) VALUES
(2, '729f9f159feafc54b52cad3e058dd7ca70e6ced8', '13303155', 1),
(6, '8cb2237d0679ca88db6464eac60da96345513964', 'eessa', 2),
(7, '8cb2237d0679ca88db6464eac60da96345513964', 'eddie', 2),
(8, '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'man', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access_types`
--
ALTER TABLE `access_types`
  ADD PRIMARY KEY (`a_type_id`);

--
-- Indexes for table `bid_tb`
--
ALTER TABLE `bid_tb`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `item_cats_icat_id` (`item_cat`),
  ADD KEY `item_cat_status_icst_id` (`item_cat_stat`),
  ADD KEY `item_users_user_id` (`user`);

--
-- Indexes for table `item_cats`
--
ALTER TABLE `item_cats`
  ADD PRIMARY KEY (`icat_id`);

--
-- Indexes for table `item_cat_status`
--
ALTER TABLE `item_cat_status`
  ADD PRIMARY KEY (`icst_id`);

--
-- Indexes for table `item_image`
--
ALTER TABLE `item_image`
  ADD PRIMARY KEY (`item_img_id`),
  ADD KEY `item_image_item_id` (`item`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `users_login`
--
ALTER TABLE `users_login`
  ADD PRIMARY KEY (`login_id`),
  ADD KEY `users_login_id` (`user`),
  ADD KEY `users_login_access_type` (`access_type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access_types`
--
ALTER TABLE `access_types`
  MODIFY `a_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bid_tb`
--
ALTER TABLE `bid_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `item_cats`
--
ALTER TABLE `item_cats`
  MODIFY `icat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `item_cat_status`
--
ALTER TABLE `item_cat_status`
  MODIFY `icst_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `item_image`
--
ALTER TABLE `item_image`
  MODIFY `item_img_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users_login`
--
ALTER TABLE `users_login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bid_tb`
--
ALTER TABLE `bid_tb`
  ADD CONSTRAINT `bid_tb_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bid_tb_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `item_cat_status_icst_id` FOREIGN KEY (`item_cat_stat`) REFERENCES `item_cat_status` (`icst_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `item_cats_icat_id` FOREIGN KEY (`item_cat`) REFERENCES `item_cats` (`icat_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `item_users_user_id` FOREIGN KEY (`user`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `item_image`
--
ALTER TABLE `item_image`
  ADD CONSTRAINT `item_image_item_id` FOREIGN KEY (`item`) REFERENCES `items` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users_login`
--
ALTER TABLE `users_login`
  ADD CONSTRAINT `users_login_access_type` FOREIGN KEY (`access_type`) REFERENCES `access_types` (`a_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_login_id` FOREIGN KEY (`user`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
