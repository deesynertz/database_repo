-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2021 at 09:24 AM
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
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `court`
--

CREATE TABLE `court` (
  `courtID` int(11) NOT NULL,
  `courtName` varchar(255) NOT NULL,
  `courtDesc` varchar(255) DEFAULT NULL,
  `location` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `court`
--

INSERT INTO `court` (`courtID`, `courtName`, `courtDesc`, `location`) VALUES
(1, 'High Court', 'This held all criminals cases', 'Dar es Salaam');

-- --------------------------------------------------------

--
-- Table structure for table `crime`
--

CREATE TABLE `crime` (
  `crimeID` int(11) NOT NULL,
  `crimeName` varchar(255) NOT NULL,
  `crimeDesc` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crime`
--

INSERT INTO `crime` (`crimeID`, `crimeName`, `crimeDesc`) VALUES
(1, 'Criminal', 'anything');

-- --------------------------------------------------------

--
-- Table structure for table `nationality`
--

CREATE TABLE `nationality` (
  `nationalityID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nationality`
--

INSERT INTO `nationality` (`nationalityID`, `name`) VALUES
(1, 'Tanzanian'),
(2, 'American');

-- --------------------------------------------------------

--
-- Table structure for table `offencecommitted`
--

CREATE TABLE `offencecommitted` (
  `offenceID` int(11) NOT NULL,
  `crimeCode` int(11) NOT NULL,
  `sentence_ID` int(11) NOT NULL,
  `offenceName` varchar(255) NOT NULL,
  `offenceDesc` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `offencecommitted`
--

INSERT INTO `offencecommitted` (`offenceID`, `crimeCode`, `sentence_ID`, `offenceName`, `offenceDesc`) VALUES
(1, 1, 1, 'Terrorisms', 'desc');

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `personID` int(11) NOT NULL,
  `surName` varchar(255) NOT NULL,
  `otherName` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `DOB` date NOT NULL,
  `healthStatus` varchar(255) NOT NULL,
  `nationality_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`personID`, `surName`, `otherName`, `firstName`, `gender`, `DOB`, `healthStatus`, `nationality_ID`) VALUES
(1, 'Doe', NULL, 'John', 'Male', '1990-05-05', 'Good', 2);

-- --------------------------------------------------------

--
-- Table structure for table `prison`
--

CREATE TABLE `prison` (
  `prisonID` int(11) NOT NULL,
  `prisonName` varchar(255) NOT NULL,
  `prisonDesc` varchar(255) DEFAULT NULL,
  `location` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prison`
--

INSERT INTO `prison` (`prisonID`, `prisonName`, `prisonDesc`, `location`) VALUES
(1, 'Kisutu', NULL, 'Dar es Salaam, '),
(2, 'Segerea', NULL, 'Dar es salaam');

-- --------------------------------------------------------

--
-- Table structure for table `prisoner`
--

CREATE TABLE `prisoner` (
  `prisonerID` int(11) NOT NULL,
  `person_ID` int(11) NOT NULL,
  `offence_ID` int(11) NOT NULL,
  `court_ID` int(11) NOT NULL,
  `prison_ID` int(11) NOT NULL,
  `dateJudgement` date NOT NULL,
  `dateRelease` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prisoner`
--

INSERT INTO `prisoner` (`prisonerID`, `person_ID`, `offence_ID`, `court_ID`, `prison_ID`, `dateJudgement`, `dateRelease`) VALUES
(1, 1, 1, 1, 1, '2021-05-12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sentence`
--

CREATE TABLE `sentence` (
  `sentenceID` int(11) NOT NULL,
  `sentenceName` varchar(255) NOT NULL,
  `sentenceDesc` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sentence`
--

INSERT INTO `sentence` (`sentenceID`, `sentenceName`, `sentenceDesc`) VALUES
(1, 'Death Penalty', 'This include all criminal robbery {terrorisms} ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `court`
--
ALTER TABLE `court`
  ADD PRIMARY KEY (`courtID`);

--
-- Indexes for table `crime`
--
ALTER TABLE `crime`
  ADD PRIMARY KEY (`crimeID`);

--
-- Indexes for table `nationality`
--
ALTER TABLE `nationality`
  ADD PRIMARY KEY (`nationalityID`);

--
-- Indexes for table `offencecommitted`
--
ALTER TABLE `offencecommitted`
  ADD PRIMARY KEY (`offenceID`),
  ADD KEY `crimeCode` (`crimeCode`),
  ADD KEY `sentence_ID` (`sentence_ID`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`personID`),
  ADD KEY `nationality_ID` (`nationality_ID`);

--
-- Indexes for table `prison`
--
ALTER TABLE `prison`
  ADD PRIMARY KEY (`prisonID`);

--
-- Indexes for table `prisoner`
--
ALTER TABLE `prisoner`
  ADD PRIMARY KEY (`prisonerID`),
  ADD KEY `person_ID` (`person_ID`),
  ADD KEY `offence_ID` (`offence_ID`),
  ADD KEY `court_ID` (`court_ID`),
  ADD KEY `prison_ID` (`prison_ID`);

--
-- Indexes for table `sentence`
--
ALTER TABLE `sentence`
  ADD PRIMARY KEY (`sentenceID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `court`
--
ALTER TABLE `court`
  MODIFY `courtID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `crime`
--
ALTER TABLE `crime`
  MODIFY `crimeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nationality`
--
ALTER TABLE `nationality`
  MODIFY `nationalityID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `offencecommitted`
--
ALTER TABLE `offencecommitted`
  MODIFY `offenceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `personID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `prison`
--
ALTER TABLE `prison`
  MODIFY `prisonID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `prisoner`
--
ALTER TABLE `prisoner`
  MODIFY `prisonerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sentence`
--
ALTER TABLE `sentence`
  MODIFY `sentenceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `offencecommitted`
--
ALTER TABLE `offencecommitted`
  ADD CONSTRAINT `offencecommitted_ibfk_1` FOREIGN KEY (`crimeCode`) REFERENCES `crime` (`crimeID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `offencecommitted_ibfk_2` FOREIGN KEY (`sentence_ID`) REFERENCES `sentence` (`sentenceID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `person`
--
ALTER TABLE `person`
  ADD CONSTRAINT `person_ibfk_1` FOREIGN KEY (`nationality_ID`) REFERENCES `nationality` (`nationalityID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `prisoner`
--
ALTER TABLE `prisoner`
  ADD CONSTRAINT `prisoner_ibfk_1` FOREIGN KEY (`person_ID`) REFERENCES `person` (`personID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `prisoner_ibfk_2` FOREIGN KEY (`offence_ID`) REFERENCES `offencecommitted` (`offenceID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `prisoner_ibfk_3` FOREIGN KEY (`court_ID`) REFERENCES `court` (`courtID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `prisoner_ibfk_4` FOREIGN KEY (`prison_ID`) REFERENCES `prison` (`prisonID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
