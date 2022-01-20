-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2021 at 04:50 AM
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
-- Database: `pbms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_details`
--

CREATE TABLE `tb_details` (
  `ID` int(11) NOT NULL,
  `education` varchar(255) DEFAULT NULL,
  `skill` varchar(255) DEFAULT NULL,
  `location` varchar(900) DEFAULT NULL,
  `experience` varchar(900) DEFAULT NULL,
  `userID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_details`
--

INSERT INTO `tb_details` (`ID`, `education`, `skill`, `location`, `experience`, `userID`) VALUES
(4, 'LCT', 'DB ADMIN', 'mzumbe', 'working with TCRA for 5year									', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tb_project`
--

CREATE TABLE `tb_project` (
  `ID` int(11) NOT NULL,
  `projectName` varchar(255) NOT NULL,
  `owner` int(11) NOT NULL,
  `leader` varchar(255) NOT NULL,
  `contact` varchar(14) NOT NULL,
  `duration` int(11) NOT NULL,
  `budget` decimal(12,2) NOT NULL,
  `description` varchar(900) DEFAULT NULL,
  `compName` varchar(900) DEFAULT NULL,
  `projectStatus` enum('1','2','3','4') NOT NULL DEFAULT '1',
  `budget_purpose` text NOT NULL,
  `createdOn` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_project`
--

INSERT INTO `tb_project` (`ID`, `projectName`, `owner`, `leader`, `contact`, `duration`, `budget`, `description`, `compName`, `projectStatus`, `budget_purpose`, `createdOn`) VALUES
(4, 'MBOGA MBOGA', 5, 'Alison Deogratias', '0744004897', 100, '20000.00', 'now a testing if the ad porject module is working in this systsm so that i can continue with another module																																																																																																																																																			', 'HJK', '2', 'a:2:{i:0;s:8:\"material\";i:1;s:6:\"salary\";}', '2021-06-13'),
(5, 'JIRANI SITE APP', 5, 'uuyuyuyu', '9789986869868', 366, '89797878.00', 'YYTY  TRTRty trt tyrtrtrty ytrytr																																																																													', 'ytgyutyu yutytut', '2', 'a:2:{i:0;s:8:\"material\";i:1;s:4:\"risk\";}', '2021-05-13'),
(8, 'yutyuty', 5, 'ygyytyyyty', '0980989899', 67, '67677677.00', 'guytyutyutytyy																																																																													', 'ytytytytty', '2', 'a:2:{i:0;s:6:\"salary\";i:1;s:6:\"others\";}', '2021-06-30');

-- --------------------------------------------------------

--
-- Table structure for table `tb_project_details`
--

CREATE TABLE `tb_project_details` (
  `ID` int(11) NOT NULL,
  `projectID` int(11) NOT NULL,
  `currentAmount` decimal(65,2) NOT NULL,
  `spentAmount` decimal(12,2) NOT NULL,
  `forWhat` varchar(255) DEFAULT '',
  `info` text NOT NULL,
  `spentOn` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_project_details`
--

INSERT INTO `tb_project_details` (`ID`, `projectID`, `currentAmount`, `spentAmount`, `forWhat`, `info`, `spentOn`) VALUES
(14, 4, '20000.00', '0.00', '', 'The \'ZDVJN\' created successfuly', '2021-05-13'),
(15, 4, '19000.00', '1000.00', 'material', 'buying internet bandle', '2021-05-13'),
(16, 5, '89797878.00', '0.00', '', 'The \'JJHGHGHG\' created successfuly', '2021-05-13'),
(24, 5, '0.00', '9797878.00', 'material', 'Material', '2021-06-30'),
(25, 4, '0.00', '667.00', 'material', 'dfzdgdfgd', '2021-06-30'),
(26, 4, '0.00', '7878.00', 'material', 'dsvdhgvdh sudfdgf uvaeuife \r\nhghcgdhcaedfie iuefeuiyfeuyu\r\naefaeufueadfu ayuefyuaeyfueyudyf aeufyaeuyfueyuy', '2021-06-30'),
(27, 4, '0.00', '9000.00', 'salary', 'any', '2021-07-01');

-- --------------------------------------------------------

--
-- Table structure for table `tb_project_files`
--

CREATE TABLE `tb_project_files` (
  `ID` int(11) NOT NULL,
  `projectID` int(11) NOT NULL,
  `path` varchar(900) NOT NULL,
  `docType` varchar(12) NOT NULL,
  `uploadedDate` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_project_files`
--

INSERT INTO `tb_project_files` (`ID`, `projectID`, `path`, `docType`, `uploadedDate`) VALUES
(14, 4, 'over_page.docx', '.docx', '2021-07-23');

-- --------------------------------------------------------

--
-- Table structure for table `tb_role`
--

CREATE TABLE `tb_role` (
  `ID` int(11) NOT NULL,
  `roleName` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_role`
--

INSERT INTO `tb_role` (`ID`, `roleName`) VALUES
(1, 'admin'),
(2, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `ID` int(11) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(900) NOT NULL,
  `userPic` varchar(900) DEFAULT NULL,
  `roleID` int(11) NOT NULL,
  `permission_status` enum('active','request','domant') NOT NULL DEFAULT 'request',
  `registeredOn` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`ID`, `fullName`, `email`, `password`, `userPic`, `roleID`, `permission_status`, `registeredOn`) VALUES
(1, 'Deesynertz', 'admin@g.c', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'default_avatar.jpg', 1, 'active', '2021-04-30'),
(5, 'Annah Kweka', 'annah@g.c', '8cb2237d0679ca88db6464eac60da96345513964', 'default_avatar.jpg', 2, 'active', '2021-05-13'),
(7, 'Alison Deogratias', 'deo@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', 'default_avatar.jpg', 2, 'active', '2021-07-24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_details`
--
ALTER TABLE `tb_details`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `tb_project`
--
ALTER TABLE `tb_project`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `owner` (`owner`);

--
-- Indexes for table `tb_project_details`
--
ALTER TABLE `tb_project_details`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `projectID` (`projectID`);

--
-- Indexes for table `tb_project_files`
--
ALTER TABLE `tb_project_files`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `projectID` (`projectID`);

--
-- Indexes for table `tb_role`
--
ALTER TABLE `tb_role`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `roleID` (`roleID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_details`
--
ALTER TABLE `tb_details`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_project`
--
ALTER TABLE `tb_project`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_project_details`
--
ALTER TABLE `tb_project_details`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tb_project_files`
--
ALTER TABLE `tb_project_files`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tb_role`
--
ALTER TABLE `tb_role`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_details`
--
ALTER TABLE `tb_details`
  ADD CONSTRAINT `tb_details_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `tb_user` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_project`
--
ALTER TABLE `tb_project`
  ADD CONSTRAINT `tb_project_ibfk_1` FOREIGN KEY (`owner`) REFERENCES `tb_user` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_project_details`
--
ALTER TABLE `tb_project_details`
  ADD CONSTRAINT `tb_project_details_ibfk_1` FOREIGN KEY (`projectID`) REFERENCES `tb_project` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_project_files`
--
ALTER TABLE `tb_project_files`
  ADD CONSTRAINT `tb_project_files_ibfk_1` FOREIGN KEY (`projectID`) REFERENCES `tb_project` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD CONSTRAINT `tb_user_ibfk_1` FOREIGN KEY (`roleID`) REFERENCES `tb_role` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
