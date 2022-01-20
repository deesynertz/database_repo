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
-- Database: `bloodbank`
--

-- --------------------------------------------------------

--
-- Table structure for table `bloodgroup`
--

CREATE TABLE `bloodgroup` (
  `bg_id` int(100) NOT NULL,
  `bg_name` varchar(7878) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `camp`
--

CREATE TABLE `camp` (
  `camp_id` int(100) NOT NULL,
  `camp_title` varchar(500) NOT NULL,
  `organised_by` varchar(500) NOT NULL,
  `district_id` int(100) NOT NULL,
  `pic` varchar(900) NOT NULL,
  `detail` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `camp`
--

INSERT INTO `camp` (`camp_id`, `camp_title`, `organised_by`, `district_id`, `pic`, `detail`) VALUES
(1, 'Eastern Zone', 'National Blood Zonal Offices', 1, 'slider1.png', 'The Eastern Zone Office Msimbazi Center\n\n,Email: info@nbts.go.tz,Blood Donation Center.'),
(2, ' Lake zone Mwanza', 'The Lake Zone Office', 4, '1.png', 'Blood Donation Center Bugando Hopsital\n\n,from 7.30AM  to 3.30 24/7'),
(13, 'Mzumbe University', 'TBNS Zone', 1, 'slider9.png', 'welcome'),
(14, 'Northern Zone Center', 'Institute of Public Health', 14, 'slider7.png', ' P.O. Box 823, Moshi, Tanzania'),
(15, 'Mzinga center', 'The National Blood Transfusion', 7, 'slider3.png', 'P.box.4375, Tanga ');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(100) NOT NULL,
  `city_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `city_name`) VALUES
(1, 'Dar es salaam'),
(4, 'Kilimanjaro'),
(5, 'Lindi'),
(6, 'Mbeya'),
(7, 'Mwanza'),
(8, 'Moshi'),
(9, 'Tanga'),
(10, 'Kagera'),
(11, 'Shinyanga'),
(12, 'Mara'),
(13, 'Simiyu'),
(14, 'Arusha'),
(15, 'Katavi'),
(16, 'Njombe'),
(17, 'Ruvuma'),
(18, 'Pwani'),
(19, 'Singida'),
(20, 'Dodoma'),
(21, 'Kigoma'),
(22, 'Rukwa'),
(23, 'Iringa'),
(24, 'Geita'),
(25, 'Tabora'),
(26, 'Kilimanjaro'),
(27, 'Manyara'),
(28, 'Morogoro'),
(29, 'Mtwara');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `row_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `subj` varchar(700) NOT NULL,
  `mdate` date NOT NULL,
  `approval` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`row_id`, `name`, `email`, `mobile`, `subj`, `mdate`, `approval`) VALUES
(1, ' kmkkm', 'bhgkjjjljlj', 'bknbjkbjkbjj', 'I need to Know how can i change my user Email from the system', '2018-06-13', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `district_id` int(100) NOT NULL,
  `citnbnjbhj` int(100) NOT NULL,
  `district_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `donarregistration`
--

CREATE TABLE `donarregistration` (
  `donar_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `age` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `b_id` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pwd` varchar(100) NOT NULL,
  `pic` varchar(1000) NOT NULL,
  `ddate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donarregistration`
--

INSERT INTO `donarregistration` (`donar_id`, `name`, `gender`, `age`, `mobile`, `b_id`, `email`, `pwd`, `pic`, `ddate`) VALUES
(43, 'Deogratias Alison', 'male', '22', '0744004897', 2, 'dealison16@mustudent.ac.tz', 'da6d386a161ecc095f74d4da19ba9f4c', 'nwe1.jpg', '2018-06-03'),
(44, 'zahara Magari', 'jhuii', '20', '0745555785', 1, 'zaharam@gmail.com', '8c47a3ff4362938a07bb34024dcaa6e5', 'photo.jpg', '2018-06-05'),
(45, 'franco Libudyah', 'male', '22', '0756846783', 4, 'franco@gmail.com', '78aa2e1b7f74d4381cedddd8443b5950', 'frank.jpg', '2018-06-07'),
(46, 'anselm B Dundee', 'male', '21', '0759307459', 3, 'amanse@mustudent.ac.tz', '92c7ac24ae3ac5857359499b9c057d76', 'Nyabaturi.jpg', '2018-06-13'),
(47, 'Kelvin Alison', 'male', '19', '0782799090', 2, 'kelvin@gmail.com', '1adb69747ee6e22aefe6c342cab60b87', '123.png', '2018-06-11');

-- --------------------------------------------------------

--
-- Table structure for table `donation`
--

CREATE TABLE `donation` (
  `donation_id` int(100) NOT NULL,
  `camp_id` int(100) NOT NULL,
  `ddate` date NOT NULL,
  `units` int(100) NOT NULL,
  `detail` varchar(800) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donation`
--

INSERT INTO `donation` (`donation_id`, `camp_id`, `ddate`, `units`, `detail`, `email`) VALUES
(42, 1, '2018-05-15', 2, 'safe', 'anna@gmail.com'),
(46, 1, '2018-05-25', 4, 'new', 'anna@gmail.com'),
(47, 13, '2018-06-11', 2, 'safe', 'dealison16@mustudent.ac.tz'),
(48, 2, '2018-06-11', 2, '', 'zaharam@gmail.com'),
(49, 2, '2018-06-11', 2, '', 'franco@gmail.com'),
(50, 2, '2018-06-11', 3, '', 'amanse@mustudent.ac.tz');

-- --------------------------------------------------------

--
-- Table structure for table `requestes`
--

CREATE TABLE `requestes` (
  `req_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `age` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `bgroup` int(100) NOT NULL,
  `units` int(100) NOT NULL,
  `reqdate` date NOT NULL,
  `status` varchar(12) NOT NULL,
  `detail` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `requestes`
--

INSERT INTO `requestes` (`req_id`, `name`, `gender`, `age`, `mobile`, `email`, `bgroup`, `units`, `reqdate`, `status`, `detail`) VALUES
(1, 'deogratias', 'male', '22', '0744004897', 'dealison16@mustudent.ac.tz', 4, 2, '2018-05-11', 'approved', 'dsbijhdsvzilizdzblijvbvj'),
(2, 'Anna chacha', 'female', '32', '0744004897', 'anna@gmail.com', 3, 3, '2018-05-14', 'received', 'bdsugshcckghbj bhxbcjbjxcbj'),
(4, 'Anna chacha', 'female', '34', '0987654321', 'anna@gmail.com', 2, 1, '2018-05-14', 'received', 'cucKHAK VHUVKAH KvHZXVh'),
(5, 'franco', 'male', '34', '0989876789', 'frer@ftggyy.com', 1, 3, '2018-05-15', 'request', 'bjidsigiugdsibv jgxckjzbj xc'),
(6, 'Anna chacha', 'female', '32', '947834086348', 'anna@gmail.com', 3, 2, '2018-05-20', 'request', 'kjdsbugjd zubjdb zhdbjb'),
(7, 'Anna chacha', 'female', '32', '947834086348', 'anna@gmail.com', 3, 3, '2018-05-29', 'approved', 'bjidfjg vusbdhkvxuzhvjdxbc jhxb'),
(11, 'Ester Franco ', 'female', '22', '0759890897', 'ester@gmail.com', 2, 2, '2018-05-28', 'request', 'This is my doughter please help me');

-- --------------------------------------------------------

--
-- Table structure for table `total_visitor`
--

CREATE TABLE `total_visitor` (
  `MIMI` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `session` varchar(100) NOT NULL,
  `ip` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `total_visitor`
--

INSERT INTO `total_visitor` (`MIMI`, `id`, `session`, `ip`, `status`, `time`) VALUES
(0, 0, 'dealison16@mustudent.ac.tz', '::1', 1, 1525957206),
(0, 0, 'deogbad995@gmail.com', '::1', 1, 1525957574),
(0, 0, '', '192.168.43.1', 1, 1525965439),
(0, 0, 'cyper@gmail.com', '::1', 1, 1525967191),
(0, 0, 'guest', '::1', 1, 1525998717),
(0, 0, 'guest', '::1', 1, 1526026311),
(0, 0, 'anna@gmail.com', '::1', 1, 1526079443),
(0, 0, 'franco@gmail.com', '::1', 1, 1526176969),
(0, 0, 'guest', '::1', 1, 1526194901);

-- --------------------------------------------------------

--
-- Table structure for table `typeofuser`
--

CREATE TABLE `typeofuser` (
  `tou_id` int(1) NOT NULL,
  `tou_hjhjhj` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `row_id` int(200) NOT NULL,
  `username` varchar(100) NOT NULL,
  `pwd` varchar(100) NOT NULL,
  `tou_id` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`row_id`, `username`, `pwd`, `tou_id`) VALUES
(14, 'dealison16', 'f2b3a5d48d7f3f4d5360425c752e53f8', 0),
(24, 'dealison18', '52eab4fdc9fe58575bba1326d6dcc8b9', 1),
(25, 'dealison19', '38ffc428af259532d6529d95960dd79b', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bloodgroup`
--
ALTER TABLE `bloodgroup`
  ADD PRIMARY KEY (`bg_id`);

--
-- Indexes for table `camp`
--
ALTER TABLE `camp`
  ADD PRIMARY KEY (`camp_id`),
  ADD KEY `district_id` (`district_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`row_id`);

--
-- Indexes for table `donation`
--
ALTER TABLE `donation`
  ADD PRIMARY KEY (`donation_id`),
  ADD KEY `camp_id` (`camp_id`);

--
-- Indexes for table `requestes`
--
ALTER TABLE `requestes`
  ADD PRIMARY KEY (`req_id`),
  ADD KEY `bgroup` (`bgroup`);

--
-- Indexes for table `typeofuser`
--
ALTER TABLE `typeofuser`
  ADD PRIMARY KEY (`tou_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`row_id`),
  ADD KEY `tou_id` (`tou_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bloodgroup`
--
ALTER TABLE `bloodgroup`
  MODIFY `bg_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `camp`
--
ALTER TABLE `camp`
  MODIFY `camp_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `donation`
--
ALTER TABLE `donation`
  MODIFY `donation_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `requestes`
--
ALTER TABLE `requestes`
  MODIFY `req_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `row_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
