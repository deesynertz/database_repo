-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2021 at 04:14 AM
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
-- Database: `dbe`
--

-- --------------------------------------------------------

--
-- Table structure for table `cust`
--

CREATE TABLE `cust` (
  `cusst_id` int(60) NOT NULL,
  `cust_id` int(60) NOT NULL,
  `user_id` int(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cust`
--

INSERT INTO `cust` (`cusst_id`, `cust_id`, `user_id`) VALUES
(7, 5, 86);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cust_id` int(60) NOT NULL,
  `fname` varchar(60) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `regno` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cust_id`, `fname`, `lname`, `regno`, `email`, `mobile`) VALUES
(5, 'Michel', 'Lazaro', '009', 'lazaro@gmail.com', '0762103643');

-- --------------------------------------------------------

--
-- Table structure for table `defect`
--

CREATE TABLE `defect` (
  `defect_id` int(50) NOT NULL,
  `defect_name` varchar(1000) NOT NULL,
  `depat_id` int(40) NOT NULL,
  `remark` int(5) NOT NULL,
  `comment1` varchar(300) NOT NULL,
  `comment2` varchar(300) NOT NULL,
  `cust_id` int(50) NOT NULL,
  `comment3` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `defect`
--

INSERT INTO `defect` (`defect_id`, `defect_name`, `depat_id`, `remark`, `comment1`, `comment2`, `cust_id`, `comment3`) VALUES
(16, 'dheiuduwei ieuwoeuioweu ieuwoeuoiwue ieuwoeuiowei ijeoiwueiowieo ieuoweuiowi iueowieoiwoe ijueoiwiueoiwieo', 4, 3, 'Approve', 'Approve', 5, 'dfsfds');

-- --------------------------------------------------------

--
-- Table structure for table `depat`
--

CREATE TABLE `depat` (
  `derpat_id` int(40) NOT NULL,
  `depat_id` int(40) NOT NULL,
  `user_id` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `depat`
--

INSERT INTO `depat` (`derpat_id`, `depat_id`, `user_id`) VALUES
(2, 4, 81),
(3, 4, 82);

-- --------------------------------------------------------

--
-- Table structure for table `depatment`
--

CREATE TABLE `depatment` (
  `depat_id` int(50) NOT NULL,
  `depat_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `depatment`
--

INSERT INTO `depatment` (`depat_id`, `depat_name`) VALUES
(3, 'Plumbing'),
(4, 'Electrical');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `empl_id` int(60) NOT NULL,
  `firstname` varchar(60) NOT NULL,
  `lastname` varchar(60) NOT NULL,
  `depat_id` int(60) NOT NULL,
  `phone` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`empl_id`, `firstname`, `lastname`, `depat_id`, `phone`) VALUES
(2, 'Michel', 'Lazaro', 3, '0762103643');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'active',
  `role` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `name`, `status`, `role`) VALUES
(79, 'lazaro', 'a1Bz20ydqelm8m1wql81dc9bdb52d04dc20036dbd8313ed055', 'lazaro', 'active', 'administrator'),
(81, 'michel@gmail.com', 'a1Bz20ydqelm8m1wql827ccb0eea8a706c4c34a16891f84e7b', 'Michell', 'active', 'HOD'),
(86, '009', 'a1Bz20ydqelm8m1wqldc5e819e186f11ef3f59e6c7d6830c35', 'lazaro@gmail.com', 'active', 'Customer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cust`
--
ALTER TABLE `cust`
  ADD PRIMARY KEY (`cusst_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `defect`
--
ALTER TABLE `defect`
  ADD PRIMARY KEY (`defect_id`);

--
-- Indexes for table `depat`
--
ALTER TABLE `depat`
  ADD PRIMARY KEY (`derpat_id`);

--
-- Indexes for table `depatment`
--
ALTER TABLE `depatment`
  ADD PRIMARY KEY (`depat_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`empl_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cust`
--
ALTER TABLE `cust`
  MODIFY `cusst_id` int(60) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cust_id` int(60) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `defect`
--
ALTER TABLE `defect`
  MODIFY `defect_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `depat`
--
ALTER TABLE `depat`
  MODIFY `derpat_id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `depatment`
--
ALTER TABLE `depatment`
  MODIFY `depat_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `empl_id` int(60) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
