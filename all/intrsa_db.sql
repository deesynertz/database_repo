-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2021 at 03:08 PM
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
-- Database: `intrsa_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `department_id` int(11) NOT NULL,
  `department_name` varchar(40) NOT NULL,
  `department_desc` varchar(40) NOT NULL,
  `faculty_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `department_name`, `department_desc`, `faculty_id`) VALUES
(1, 'CSS', 'Computer Science Studies', 1),
(2, 'MMS', 'Mathematics', 1),
(3, 'EMS', 'Engeneering Mnagement Studies', 1);

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `faculty_id` int(11) NOT NULL,
  `faculty_name` varchar(40) NOT NULL,
  `faculty_desc` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`faculty_id`, `faculty_name`, `faculty_desc`) VALUES
(1, 'FST', 'Technology e.t.c'),
(2, 'FSS', 'Social Science'),
(3, 'LLB', 'faculty of law');

-- --------------------------------------------------------

--
-- Table structure for table `field_details`
--

CREATE TABLE `field_details` (
  `id` int(11) NOT NULL,
  `student_id` varchar(14) NOT NULL,
  `organization_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `email` varchar(40) NOT NULL,
  `address` varchar(40) NOT NULL,
  `field_status` enum('allocated','not allocated') NOT NULL DEFAULT 'not allocated'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `field_details`
--

INSERT INTO `field_details` (`id`, `student_id`, `organization_id`, `location_id`, `email`, `address`, `field_status`) VALUES
(1, '13212674/t.18', 2, 3, 'aneth.mulokozi20@mustudent.ac.tz', 'P.O.Box 23', 'allocated'),
(2, '1321266/t.18', 6, 4, 'anethmulokozi@gmail.com', 'P.o.Box 03 any', 'allocated'),
(3, '13301234/t.18', 5, 5, 'anethmulokozi@gmail.com', 'P.o.Box 35, Kimara', 'allocated'),
(5, '13300228/t.18', 5, 2, 'deoalison18@mustudent.ac.tz', 'P.O.Box 23 Kigamboni', 'not allocated');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `file_id` int(10) NOT NULL,
  `file_name` varchar(100) NOT NULL,
  `field_id` int(11) NOT NULL,
  `createdOn` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `lecturers`
--

CREATE TABLE `lecturers` (
  `lecturer_id` varchar(14) NOT NULL,
  `department_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lecturers`
--

INSERT INTO `lecturers` (`lecturer_id`, `department_id`, `location_id`) VALUES
('133112/MU/FST', 2, 3),
('133212/MU/FST', 1, 1),
('134345/MU/FST', 1, 4),
('136345/MU/FSS', 2, 6);

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `location_id` int(11) NOT NULL,
  `location_name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`location_id`, `location_name`) VALUES
(1, 'Morogoro'),
(2, 'Dodoma'),
(3, 'Arusha'),
(4, 'Mbeya'),
(5, 'Dar es Salaam'),
(6, 'Mwanza'),
(7, 'Moshi'),
(8, 'Kagera'),
(9, 'Shinyanga'),
(10, 'Geita'),
(11, 'Kilimanjaro'),
(12, 'Kigoma'),
(13, 'Lindi'),
(14, 'Mtwara'),
(15, 'Tanga'),
(16, 'Tabora');

-- --------------------------------------------------------

--
-- Table structure for table `organizations`
--

CREATE TABLE `organizations` (
  `organization_id` int(11) NOT NULL,
  `organization_name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `organizations`
--

INSERT INTO `organizations` (`organization_id`, `organization_name`) VALUES
(1, 'Vodacome'),
(2, 'Tigo'),
(3, 'TANESCO'),
(4, 'TPB'),
(5, 'CRDB'),
(6, 'NMB'),
(7, 'NSSF'),
(8, 'NIMRI'),
(9, 'JEMA AFRICA'),
(10, 'Infosys'),
(11, 'TTCL'),
(12, 'TPA'),
(13, 'ADHINA'),
(14, 'TRA');

-- --------------------------------------------------------

--
-- Table structure for table `programs`
--

CREATE TABLE `programs` (
  `program_id` int(11) NOT NULL,
  `program_name` varchar(40) NOT NULL,
  `program_desc` varchar(40) NOT NULL,
  `department_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `programs`
--

INSERT INTO `programs` (`program_id`, `program_name`, `program_desc`, `department_id`) VALUES
(1, 'BSc.ITS', 'Information Technology & system ', 1),
(2, 'BSc.ICT-M', 'Management', 1),
(3, 'MICT-EDU', 'Education', 2),
(4, 'BSc.ICT-B', 'Information and Communication Technology', 1);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `role_name`) VALUES
(1, 'Admin'),
(2, 'Lecturer'),
(3, 'Student'),
(4, 'Supervisor');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` varchar(14) NOT NULL,
  `program` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `program`, `firstname`, `middlename`, `lastname`) VALUES
('1321266/t.18', 4, 'DENIS', 'MWAVAMBA', 'TEMBA'),
('13212674/t.18', 1, 'DeogratiasA', 'Alison', 'R'),
('13300228/t.18', 4, 'Maige', NULL, 'any'),
('13301234/t.18', 1, 'Aneth', 'Mulokozi', 'M');

-- --------------------------------------------------------

--
-- Table structure for table `supervisions`
--

CREATE TABLE `supervisions` (
  `supervision_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `lecturer_id` varchar(14) NOT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supervisions`
--

INSERT INTO `supervisions` (`supervision_id`, `field_id`, `lecturer_id`, `status`) VALUES
(1, 1, '133112/MU/FST', NULL),
(2, 2, '134345/MU/FST', NULL),
(3, 3, '133112/MU/FST', NULL),
(4, 5, '133212/MU/FST', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` varchar(60) NOT NULL,
  `phonenumber` varchar(25) DEFAULT NULL,
  `user_email` varchar(40) NOT NULL,
  `password` varchar(60) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `phonenumber`, `user_email`, `password`, `role_id`) VALUES
('12222/MU/admin', '0742123456', 'admin@gmail.com', '1234', 1),
('12333/MU/admin', '0789987642', 'kiasanjara@gmail.com', '123456', 1),
('13202234/t.18', '0657761601', 'james@gmail.com', 'jam1234', 3),
('1321253/t.18', '0715289497', 'ahmadsuleman@gmail.com', 'sule889', 3),
('1321266/t.18', '0715234567', 'denis@gmail.com', 'denis889', 3),
('13212674/t.18', '0715206521', 'deoalison18@gmail.com', '1234', 3),
('13300228/t.18', '0747398465', 'maige@gmail.com', 'maige1234', 3),
('13301234/t.18', '0621576302', 'wendelin@gmail.com', '1111', 3),
('13301244/t.18', '0621597302', 'anethmulokozi@gmail.com', 'anitha0000', 3),
('13301284/T.18', '0744004897', 'deogratias.alison20@mustudent.ac.tz', '12345', 3),
('13303151/t.18', '0742211097', 'nasoro@gmail.com', 'nasso123', 3),
('133112/MU/FST', '0742245097', 'tupokigwe@gmail.com', 'tupo22', 2),
('133212/MU/FST', '064567797', 'kivaria@gmail.com', '12345', 2),
('134345/MU/FST', '0756767678', 'almasi.maguya@mzumbe.ac.tz', '123456', 2),
('136345/MU/FSS', '342543535', 'dfd@g,c', '123456', 2),
('anethmulokozi@gmail.com', NULL, 'anethmulokozi@gmail.com', '123456', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_id`),
  ADD KEY `faculty_id` (`faculty_id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`faculty_id`);

--
-- Indexes for table `field_details`
--
ALTER TABLE `field_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `organization_id` (`organization_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `studentID` (`student_id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`file_id`),
  ADD KEY `field_id` (`field_id`);

--
-- Indexes for table `lecturers`
--
ALTER TABLE `lecturers`
  ADD PRIMARY KEY (`lecturer_id`),
  ADD KEY `department_id` (`department_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `organizations`
--
ALTER TABLE `organizations`
  ADD PRIMARY KEY (`organization_id`);

--
-- Indexes for table `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`program_id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`),
  ADD KEY `program` (`program`);

--
-- Indexes for table `supervisions`
--
ALTER TABLE `supervisions`
  ADD PRIMARY KEY (`supervision_id`,`lecturer_id`,`field_id`),
  ADD KEY `lecturer_id` (`lecturer_id`),
  ADD KEY `field_id` (`field_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `faculty_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `field_details`
--
ALTER TABLE `field_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `file_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `organizations`
--
ALTER TABLE `organizations`
  MODIFY `organization_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `programs`
--
ALTER TABLE `programs`
  MODIFY `program_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `supervisions`
--
ALTER TABLE `supervisions`
  MODIFY `supervision_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `department_ibfk_1` FOREIGN KEY (`faculty_id`) REFERENCES `faculty` (`faculty_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `field_details`
--
ALTER TABLE `field_details`
  ADD CONSTRAINT `field_details_ibfk_2` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`organization_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `field_details_ibfk_3` FOREIGN KEY (`location_id`) REFERENCES `locations` (`location_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `field_details_ibfk_4` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`);

--
-- Constraints for table `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_ibfk_1` FOREIGN KEY (`field_id`) REFERENCES `field_details` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lecturers`
--
ALTER TABLE `lecturers`
  ADD CONSTRAINT `lecturers_ibfk_1` FOREIGN KEY (`lecturer_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lecturers_ibfk_2` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lecturers_ibfk_3` FOREIGN KEY (`location_id`) REFERENCES `locations` (`location_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `programs`
--
ALTER TABLE `programs`
  ADD CONSTRAINT `programs_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `students_ibfk_2` FOREIGN KEY (`program`) REFERENCES `programs` (`program_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `supervisions`
--
ALTER TABLE `supervisions`
  ADD CONSTRAINT `supervisions_ibfk_2` FOREIGN KEY (`lecturer_id`) REFERENCES `lecturers` (`lecturer_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `supervisions_ibfk_3` FOREIGN KEY (`field_id`) REFERENCES `field_details` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
