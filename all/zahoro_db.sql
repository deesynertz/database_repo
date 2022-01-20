-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2021 at 03:10 PM
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
-- Database: `zahoro_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `coordinators`
--

CREATE TABLE `coordinators` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `evaluations`
--

CREATE TABLE `evaluations` (
  `id` int(11) NOT NULL,
  `backend` int(11) NOT NULL,
  `frontend_design` int(11) NOT NULL,
  `database_design` int(11) NOT NULL,
  `confidence` int(11) NOT NULL,
  `appearance` int(11) NOT NULL,
  `student_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `abstract` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `start_date` datetime DEFAULT current_timestamp(),
  `end_date` datetime DEFAULT NULL,
  `status` enum('approved') DEFAULT NULL,
  `supervisor_id` int(11) DEFAULT NULL,
  `language` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title`, `abstract`, `created_by`, `created_at`, `updated_at`, `start_date`, `end_date`, `status`, `supervisor_id`, `language`) VALUES
(8, 'CAR TRACKING MANAGEMENT SYSTEM', 'Vehicle Tracking & Management System', 1, '2021-08-01 18:11:39', NULL, '2021-08-01 18:11:39', NULL, 'approved', 6, 'JAVASCRIPT'),
(9, 'Ecommerce Management Information System ', 'The buying and selling of goods and services over the internet', 5, '2021-08-01 18:13:33', NULL, '2021-08-01 18:13:33', NULL, 'approved', 6, 'PYTHON'),
(10, 'Vehicle Tracking & Management System', 'Accurate Location Tracking. 24/7 Fleet Management For Low-Cost, Real-Time Tracking.', 6, '2021-08-01 18:18:13', NULL, '2021-08-01 18:18:13', NULL, 'approved', 4, 'C#');

-- --------------------------------------------------------

--
-- Table structure for table `projects_attachments`
--

CREATE TABLE `projects_attachments` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `project_id` int(11) NOT NULL,
  `phase` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `projects_attachments`
--

INSERT INTO `projects_attachments` (`id`, `name`, `project_id`, `phase`, `created_at`, `updated_at`) VALUES
(13, 'api.txt', 10, 1, '2021-08-01 15:21:53', NULL),
(14, 'NJOMBE WOOD AND FORESTRY CLUSTER.docx', 10, 2, '2021-08-01 15:23:09', NULL),
(15, 'NJOMBE WOOD AND FORESTRY CLUSTER.docx', 10, 2, '2021-08-01 15:33:57', NULL),
(16, 'over_page.docx', 9, 1, '2021-08-01 15:55:08', NULL),
(17, 'over_page.docx', 9, 1, '2021-08-01 16:55:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `reg_number` varchar(255) NOT NULL,
  `academic_year` varchar(255) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `reg_number`, `academic_year`, `course_name`, `user_id`) VALUES
(1, '13301223/T.18', '3', 'Bsc-ITS', 1),
(2, '13302278/T.18', '3\r\n', 'BSc.ICT-M', 5),
(3, '13301245/T.18', '3', 'BSc-ITS', 6),
(4, '13301345/T.18', '3', 'BSc-ICT-M', 7),
(5, '13301256/T.18', '3', 'BSc-ITS', 8),
(6, '12451124/T.18', '3', 'Bsc.ICT-B', 9),
(7, '13201456/T.18', '3', 'Bsc-ICT-B', 10),
(8, '13461346/T.18', '3', 'Bsc-Mist-Edu', 11),
(9, '12225640/T.18', '3', 'Bsc-MIST-EDU', 12),
(10, '12346789/T.18', '3', 'Bsc-ITS', 13);

-- --------------------------------------------------------

--
-- Table structure for table `supervisors`
--

CREATE TABLE `supervisors` (
  `id` int(11) NOT NULL,
  `no_projects_supervised` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supervisors`
--

INSERT INTO `supervisors` (`id`, `no_projects_supervised`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 8, '2021-07-15 10:11:50', NULL, 3),
(2, 8, '2021-07-15 10:11:50', NULL, 4),
(3, 8, '2021-08-01 12:45:59', '2021-07-31 21:00:00', 14),
(4, 8, '2021-08-01 12:45:59', '2021-07-31 21:00:00', 15),
(5, 8, '2021-08-01 12:52:48', '2021-07-31 21:00:00', 16),
(6, 8, '2021-08-01 12:52:48', '2021-07-31 21:00:00', 16);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `user_password` varchar(200) DEFAULT NULL,
  `user_created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `role` enum('admin','supervisor','student') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_password`, `user_created_at`, `role`) VALUES
(1, 'Leonard Zahoro', 'leonardgibson76@gmail.com', '$2y$10$gwy6u/gE14mmDBuiWDYef.mPTfyFIXTOIqzLRtmy1.4CTpCqHWHv6', '2021-07-01 15:29:14', 'student'),
(2, 'fatuma masudi', 'fatumaabdallah644@gmail.com', '$2y$10$gwy6u/gE14mmDBuiWDYef.mPTfyFIXTOIqzLRtmy1.4CTpCqHWHv6', '2021-07-30 07:25:21', 'admin'),
(3, 'Dr.Tossy', 'tossy@gmail.com', '$2y$10$gwy6u/gE14mmDBuiWDYef.mPTfyFIXTOIqzLRtmy1.4CTpCqHWHv6', '2021-07-30 07:25:21', 'supervisor'),
(4, 'Mr.Senzota Kivaria', 'kivaria@gmail.com', '$2y$10$i5i/cLcOWm8XjzlsNZvvReoOBMDb1cr8PowffdxZ1d5782LXxAkOG', '2021-07-30 07:25:21', 'supervisor'),
(5, 'Kiwigu Hery', 'kiwigu@gmail.com', '$2y$10$i5i/cLcOWm8XjzlsNZvvReoOBMDb1cr8PowffdxZ1d5782LXxAkOG', '2021-07-01 15:29:14', 'student'),
(6, 'Godfrey Kikwete', 'kikwete@gmail.com', '$2y$10$gwy6u/gE14mmDBuiWDYef.mPTfyFIXTOIqzLRtmy1.4CTpCqHWHv6', '2021-08-01 12:26:20', 'student'),
(7, 'HAPPYNESS MSAKI', 'msaki@gmail.com', '$2y$10$gwy6u/gE14mmDBuiWDYef.mPTfyFIXTOIqzLRtmy1.4CTpCqHWHv6', '2021-08-01 12:29:17', 'student'),
(8, 'Noela Lukasi', 'noela@gmail.com', '$2y$10$gwy6u/gE14mmDBuiWDYef.mPTfyFIXTOIqzLRtmy1.4CTpCqHWHv6', '2021-08-01 12:29:17', 'student'),
(9, 'Papson Poul', 'papson@gmail.com', '$2y$10$gwy6u/gE14mmDBuiWDYef.mPTfyFIXTOIqzLRtmy1.4CTpCqHWHv6', '2021-08-01 12:33:49', 'student'),
(10, 'EPHARHIMU MWAGIKE', 'epharimu@gmail.com', '$2y$10$gwy6u/gE14mmDBuiWDYef.mPTfyFIXTOIqzLRtmy1.4CTpCqHWHv6', '2021-08-01 12:33:49', 'student'),
(11, 'MAGDALENA JOSEPH', 'magdalena@gmaail.com', '$2y$10$gwy6u/gE14mmDBuiWDYef.mPTfyFIXTOIqzLRtmy1.4CTpCqHWHv6', '2021-08-01 12:37:12', 'student'),
(12, 'Poul Ntinde', 'poul@gmail.com', '$2y$10$gwy6u/gE14mmDBuiWDYef.mPTfyFIXTOIqzLRtmy1.4CTpCqHWHv6', '2021-08-01 12:37:12', 'student'),
(13, 'SALOME MWAGIKE', 'salome@gmail.com', '$2y$10$gwy6u/gE14mmDBuiWDYef.mPTfyFIXTOIqzLRtmy1.4CTpCqHWHv6', '2021-08-01 12:39:51', 'student'),
(14, 'Dr.Almasi Maguya', 'tupokigwe@gmail.com', '$2y$10$gwy6u/gE14mmDBuiWDYef.mPTfyFIXTOIqzLRtmy1.4CTpCqHWHv6', '2021-08-01 12:43:58', 'supervisor'),
(15, 'Dr.Kihoza P', 'kihoza@gmail.com', '$2y$10$gwy6u/gE14mmDBuiWDYef.mPTfyFIXTOIqzLRtmy1.4CTpCqHWHv6', '2021-08-01 12:43:58', 'supervisor'),
(16, 'Dr. Mecy', 'mecy@gmail.com', '$2y$10$gwy6u/gE14mmDBuiWDYef.mPTfyFIXTOIqzLRtmy1.4CTpCqHWHv6', '2021-08-01 12:51:59', 'supervisor'),
(17, 'Mr. Wambura James', 'wambura@gmail.com', '$2y$10$gwy6u/gE14mmDBuiWDYef.mPTfyFIXTOIqzLRtmy1.4CTpCqHWHv6', '2021-08-01 12:51:59', 'supervisor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `coordinators`
--
ALTER TABLE `coordinators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `evaluations`
--
ALTER TABLE `evaluations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `supervisor_id` (`supervisor_id`);

--
-- Indexes for table `projects_attachments`
--
ALTER TABLE `projects_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `supervisors`
--
ALTER TABLE `supervisors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `coordinators`
--
ALTER TABLE `coordinators`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `evaluations`
--
ALTER TABLE `evaluations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `projects_attachments`
--
ALTER TABLE `projects_attachments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `supervisors`
--
ALTER TABLE `supervisors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `projects_ibfk_2` FOREIGN KEY (`supervisor_id`) REFERENCES `supervisors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `projects_attachments`
--
ALTER TABLE `projects_attachments`
  ADD CONSTRAINT `projects_attachments_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `supervisors`
--
ALTER TABLE `supervisors`
  ADD CONSTRAINT `supervisors_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
