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
-- Database: `ctms`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `ID` int(11) NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`ID`, `category`) VALUES
(1, 'Orphan'),
(2, 'Elders');

-- --------------------------------------------------------

--
-- Table structure for table `center`
--

CREATE TABLE `center` (
  `ID` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `userID` int(11) NOT NULL,
  `categoryID` int(11) NOT NULL,
  `location` varchar(25) NOT NULL,
  `status` enum('Critical','Normal') NOT NULL,
  `createdon` date NOT NULL DEFAULT current_timestamp(),
  `capacity` int(23) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `center`
--

INSERT INTO `center` (`ID`, `name`, `userID`, `categoryID`, `location`, `status`, `createdon`, `capacity`, `description`) VALUES
(1, 'TEST CAMP', 8, 1, 'P.O.Box 01, Mzumbe', 'Critical', '2021-07-19', 200, ' Lorem ipsum represents a long-held tradition for designers,\r\n                          typographers and the like. Some people hate it and argue for\r\n                          its demise, but others ignore the hate as they create awesome\r\n                          tools to help create filler text for everyone from bacon lovers\r\n                          to Charlie Sheen fans.'),
(2, 'DOE CAMP', 9, 2, 'P.o.Box 02 ,Kihonda', 'Normal', '2021-07-19', 389, 'anthicvjd aduyhfuiadyfu');

-- --------------------------------------------------------

--
-- Table structure for table `charity`
--

CREATE TABLE `charity` (
  `ID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `center_id` int(11) NOT NULL,
  `charityTypeID` int(11) NOT NULL,
  `receipt` varchar(255) NOT NULL,
  `userID` int(11) NOT NULL,
  `createdOn` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `charity`
--

INSERT INTO `charity` (`ID`, `name`, `amount`, `center_id`, `charityTypeID`, `receipt`, `userID`, `createdOn`) VALUES
(1, 'ANY THING', '100000.00', 1, 1, 'receipt_no1.jpg', 2, '2021-07-09');

-- --------------------------------------------------------

--
-- Table structure for table `charity_type`
--

CREATE TABLE `charity_type` (
  `ID` int(11) NOT NULL,
  `name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `charity_type`
--

INSERT INTO `charity_type` (`ID`, `name`) VALUES
(1, 'individual'),
(2, 'compaign');

-- --------------------------------------------------------

--
-- Table structure for table `compaign`
--

CREATE TABLE `compaign` (
  `ID` int(11) NOT NULL,
  `charityID` int(11) NOT NULL,
  `description` int(11) NOT NULL,
  `createdon` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `compaign_details`
--

CREATE TABLE `compaign_details` (
  `ID` int(11) NOT NULL,
  `compaignID` int(11) NOT NULL,
  `participants` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `ID` int(11) NOT NULL,
  `platform` varchar(255) NOT NULL,
  `name` varchar(253) NOT NULL,
  `account` int(123) NOT NULL,
  `centerID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`ID`, `platform`, `name`, `account`, `centerID`) VALUES
(1, 'CRDB', 'testCamp', 2147483647, 1),
(3, 'Vodacom (M-Pesa)', 'TestCamp', 755443322, 1),
(4, 'Tigo (Tigopesa)', 'TestCamp', 650987654, 1);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `ID` int(11) NOT NULL,
  `roleName` varchar(23) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`ID`, `roleName`) VALUES
(1, 'admin'),
(2, 'user'),
(3, 'center');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID` int(11) NOT NULL,
  `fname` varchar(25) NOT NULL,
  `sname` varchar(25) NOT NULL,
  `image` varchar(900) NOT NULL DEFAULT 'default_img.png',
  `roleID` int(11) NOT NULL,
  `address` varchar(23) NOT NULL,
  `city` varchar(23) NOT NULL,
  `phone` int(10) NOT NULL,
  `email` text NOT NULL,
  `password` varchar(500) NOT NULL DEFAULT '123456',
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `fname`, `sname`, `image`, `roleID`, `address`, `city`, `phone`, `email`, `password`, `title`) VALUES
(1, 'admin', 'strator', 'default_img.png', 1, 'P.o.Box 03 Ilemela ', 'Mwanza', 1234567898, 'admin@g.c', '12345', 'Administrator'),
(2, 'Josh', 'Thabiti', 'default_img.png', 2, 'P.o.Box 363 Temeke', 'Dar es salaam', 1234567898, 'josh@g.c', '54321', 'Manager'),
(3, 'Deogratias', 'Alison', 'default_img.png', 3, 'p.o.box 345 Mzumbe', 'Morogoro', 1234567890, 'deo@g.c', '12345678', 'BM'),
(8, 'Deogratias', 'Alison', 'default_img.png', 3, 'P.O.Box 01, Mzumbe', 'Morogoro', 1234567890, 'deo@g.c', '123456', 'Manager'),
(9, 'John', 'Doe', 'default_img.png', 3, 'P.o.Box 02 ,Kihonda', 'Morogoro', 1234567898, 'doe@g.c', '123456', 'Manager');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `center`
--
ALTER TABLE `center`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `userID` (`userID`),
  ADD KEY `center_ibfk_2` (`categoryID`);

--
-- Indexes for table `charity`
--
ALTER TABLE `charity`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `charityTypeID` (`charityTypeID`),
  ADD KEY `userID` (`userID`),
  ADD KEY `center_id` (`center_id`);

--
-- Indexes for table `charity_type`
--
ALTER TABLE `charity_type`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `compaign`
--
ALTER TABLE `compaign`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `charityID` (`charityID`);

--
-- Indexes for table `compaign_details`
--
ALTER TABLE `compaign_details`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `compaignID` (`compaignID`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `centerID` (`centerID`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `roleID` (`roleID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `center`
--
ALTER TABLE `center`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `charity`
--
ALTER TABLE `charity`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `charity_type`
--
ALTER TABLE `charity_type`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `compaign`
--
ALTER TABLE `compaign`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `compaign_details`
--
ALTER TABLE `compaign_details`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `center`
--
ALTER TABLE `center`
  ADD CONSTRAINT `center_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `center_ibfk_2` FOREIGN KEY (`categoryID`) REFERENCES `category` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `charity`
--
ALTER TABLE `charity`
  ADD CONSTRAINT `charity_ibfk_1` FOREIGN KEY (`charityTypeID`) REFERENCES `charity_type` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `charity_ibfk_2` FOREIGN KEY (`userID`) REFERENCES `user` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `charity_ibfk_3` FOREIGN KEY (`center_id`) REFERENCES `center` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `compaign`
--
ALTER TABLE `compaign`
  ADD CONSTRAINT `compaign_ibfk_1` FOREIGN KEY (`charityID`) REFERENCES `charity` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `compaign_details`
--
ALTER TABLE `compaign_details`
  ADD CONSTRAINT `compaign_details_ibfk_1` FOREIGN KEY (`compaignID`) REFERENCES `compaign` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`centerID`) REFERENCES `center` (`ID`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`roleID`) REFERENCES `role` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
