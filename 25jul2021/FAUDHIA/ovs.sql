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
-- Database: `ovs`
--

-- --------------------------------------------------------

--
-- Table structure for table `candidate`
--

CREATE TABLE `candidate` (
  `CandidateID` int(11) NOT NULL,
  `abc` varchar(1) NOT NULL,
  `Position` varchar(200) NOT NULL,
  `Party` varchar(100) NOT NULL,
  `FirstName` varchar(200) NOT NULL,
  `LastName` varchar(200) NOT NULL,
  `MiddleName` varchar(100) NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `Year` varchar(100) NOT NULL,
  `Photo` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidate`
--

INSERT INTO `candidate` (`CandidateID`, `abc`, `Position`, `Party`, `FirstName`, `LastName`, `MiddleName`, `Gender`, `Year`, `Photo`) VALUES
(201, 'e', 'FR 3rd Year', 'pol', 'lili', 'jumn', 'huhu', 'Male', '1st year', 'upload/feature.PNG'),
(200, 'a', 'President', 'nmmm', 'nnm', 'hhjj', 'nkmm', 'Male', '1st year', 'upload/b vs c.PNG'),
(199, 'e', 'FR 3rd Year', 'hjjk', 'bnmbn', 'hjkhj', 'uhju', 'FeMale', '1st year', 'upload/juma.PNG'),
(198, 'd', 'FR 2nd Year', 'popo', 'ikuk', 'olol', '', 'Male', '2nd year', 'upload/8fea.PNG'),
(196, 'f', 'Senator', 'FST', 'Simon', 'Kapuku', 'Huru', 'Male', '1st year', 'upload/ping.PNG'),
(197, 'c', 'FR 2nd Year', 'SOPAM', 'Jeniffer', 'Lopez', 'Chungwa', 'FeMale', '1st year', 'upload/feature.PNG'),
(194, 'e', 'FR 3rd Year', 'kio', 'Elizabeth', 'Shirima', 'Respich', 'FeMale', '3rd year', 'upload/ping.PNG'),
(195, 'a', 'FR 2nd Year', 'FSS', 'Juma', 'Shabani', 'Shomo', 'Male', '2nd year', 'upload/feature.PNG'),
(193, 'a', 'President', '', 'Faudhia', 'Likasike', '', 'FeMale', '3rd year', 'upload/juma.PNG'),
(192, 'b', 'Vice-President', 'SOPAM', 'ELINA', 'NTAHOMVUKYE', 'CHRISS', 'FeMale', '3rd year', 'upload/juma.PNG');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `history_id` int(11) NOT NULL,
  `data` varchar(30) NOT NULL,
  `action` varchar(50) NOT NULL,
  `date` varchar(20) NOT NULL,
  `user` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`history_id`, `data`, `action`, `date`, `user`) VALUES
(590, 'Elizabeth Shirima', 'Edit Candidate', '2021-07-13 10:26:54', 'admin'),
(589, 'Faudhia Likasike', 'Edit Candidate', '2021-07-13 10:26:38', 'admin'),
(588, 'Jeniffer Lopez', 'Added Candidate', '2021-07-13 10:25:14', 'admin'),
(587, 'Simon Kapuku', 'Added Candidate', '2021-07-13 10:23:21', 'admin'),
(586, 'Juma Shabani', 'Edit Candidate', '2021-07-13 10:21:58', 'admin'),
(585, 'Juma Shabani', 'Edit Candidate', '2021-07-13 10:19:58', 'admin'),
(584, 'Juma Shabani', 'Added Candidate', '2021-07-13 10:16:07', 'admin'),
(583, 'Elizabeth Shirima', 'Added Candidate', '2021-07-13 09:32:51', 'admin'),
(582, 'Faudhia Likasike', 'Added Candidate', '2021-07-13 09:32:01', 'admin'),
(581, 'ELINA NTAHOMVUKYE', 'Added Candidate', '2021-07-13 09:27:33', 'admin'),
(591, 'Elizabeth Shirima', 'Edit Candidate', '2021-07-13 10:27:25', 'admin'),
(592, 'Elizabeth Shirima', 'Edit Candidate', '2021-07-13 10:28:09', 'admin'),
(593, 'ASA JUMI', 'Added Voter', '7/13/2021 10:30:8', 'admin'),
(594, 'Faudhia  Likasike', 'Login', '2021-07-13 10:54:36', 'admin'),
(595, 'glady yuyu', 'Added Voter', '7/13/2021 10:55:32', 'admin'),
(596, 'ikuk olol', 'Added Candidate', '2021-07-13 10:57:01', 'admin'),
(597, 'bnmbn hjkhj', 'Added Candidate', '2021-07-13 10:57:45', 'admin'),
(598, 'nnm hhjj', 'Added Candidate', '2021-07-13 10:58:37', 'admin'),
(599, 'Faudhia  Likasike', 'Login', '2021-07-13 11:12:25', 'admin'),
(600, 'juju mknk', 'Added Voter', '7/13/2021 11:12:37', 'admin'),
(601, 'lili jumn', 'Added Candidate', '2021-07-13 11:17:08', 'admin'),
(602, 'Elizabeth Shirima', 'Edit Candidate', '2021-07-13 11:17:48', 'admin'),
(603, 'kiki kiki', 'Added Voter', '7/13/2021 11:18:23', 'admin'),
(604, 'Faudhia  Likasike', 'Login', '2021-07-13 12:47:42', 'admin'),
(605, 'Faudhia  Likasike', 'Login', '2021-07-13 13:31:19', 'admin'),
(606, 'elina chriss', 'Added Voter', '7/13/2021 13:55:38', 'admin'),
(607, 'elina chriss', 'Deleted Voter', '7/21/2021 13:3:40', '<br />\n<b>Notice</b>'),
(608, 'glady yuyu', 'Deleted Voter', '7/21/2021 13:3:40', '<br />\n<b>Notice</b>'),
(609, 'juju mknk', 'Deleted Voter', '7/21/2021 13:3:40', '<br />\n<b>Notice</b>'),
(610, 'kiki kiki', 'Deleted Voter', '7/21/2021 13:3:40', '<br />\n<b>Notice</b>'),
(611, ' ', 'Logout', '2021-07-21 13:07:46', ''),
(612, 'Faudhia  Likasike', 'Login', '2021-07-21 13:08:55', 'admin'),
(613, 'test test', 'Added Voter', '7/21/2021 13:9:7', 'admin'),
(614, ' ', 'Logout', '2021-07-21 14:04:31', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `User_id` int(11) NOT NULL,
  `FirstName` varchar(100) NOT NULL,
  `LastName` varchar(100) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `User_Type` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`User_id`, `FirstName`, `LastName`, `UserName`, `Password`, `User_Type`) VALUES
(2, 'Faudhia ', 'Likasike', 'admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE `voters` (
  `VoterID` int(11) NOT NULL,
  `FirstName` varchar(150) NOT NULL,
  `LastName` varchar(150) NOT NULL,
  `MiddleName` varchar(100) NOT NULL,
  `Username` varchar(100) NOT NULL DEFAULT '1234',
  `Password` varchar(100) NOT NULL,
  `Year` varchar(100) NOT NULL,
  `Status` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`VoterID`, `FirstName`, `LastName`, `MiddleName`, `Username`, `Password`, `Year`, `Status`) VALUES
(56, 'test', 'test', 'test', 'test', '12345', '2nd year', 'Voted');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `ID` int(11) NOT NULL,
  `CandidateID` int(11) NOT NULL,
  `votes` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`ID`, `CandidateID`, `votes`) VALUES
(244, 192, 0),
(243, 193, 0),
(242, 0, 0),
(241, 0, 0),
(240, 197, 0),
(239, 196, 0),
(238, 192, 0),
(237, 193, 0),
(236, 199, 0),
(235, 201, 0),
(232, 192, 0),
(231, 193, 0),
(228, 197, 0),
(227, 192, 0),
(226, 193, 0),
(234, 194, 0),
(233, 196, 0),
(223, 197, 0),
(222, 192, 0),
(221, 193, 0),
(245, 197, 0),
(246, 0, 0),
(247, 0, 0),
(248, 193, 0),
(249, 192, 0),
(250, 196, 0),
(251, 198, 0),
(252, 197, 0),
(253, 195, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidate`
--
ALTER TABLE `candidate`
  ADD PRIMARY KEY (`CandidateID`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`history_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`User_id`);

--
-- Indexes for table `voters`
--
ALTER TABLE `voters`
  ADD PRIMARY KEY (`VoterID`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `candidate`
--
ALTER TABLE `candidate`
  MODIFY `CandidateID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=615;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `User_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `voters`
--
ALTER TABLE `voters`
  MODIFY `VoterID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
