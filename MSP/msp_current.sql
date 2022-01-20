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
-- Database: `msp`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `ID` varchar(50) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `middleName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phoneNo` varchar(14) DEFAULT NULL,
  `password` varchar(900) NOT NULL,
  `roleID` int(11) NOT NULL,
  `jobTitle` int(12) NOT NULL DEFAULT 2,
  `image` varchar(900) DEFAULT 'default_avatar.jpg',
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`ID`, `firstName`, `middleName`, `lastName`, `email`, `phoneNo`, `password`, `roleID`, `jobTitle`, `image`, `created`) VALUES
('1000001000001', 'Deogratias', 'A', 'Rweyemamu', 'admin@msp.com', '255744004898', '$2b$10$sjQuDiq7O63sIDdRIH0RousUbZ6Fsb503GwbUqwLIdOYNzF6PhkH.', 1, 1, 'http://localhost:4200/assets/media/avatars/images_1623322335538.jpg', '2020-09-06 14:45:21'),
('1618630836971', 'Tahiya', 'H', 'Ramadhan', 'tee@gmail.com', '255679960353', '$2b$10$HEyCbjbbRBKTYbyD3/wXNOPAiToNOV8FWNaXMUBkxvcmF8fqnxA6q', 2, 1, 'http://localhost:4200/assets/media/avatars/tahiya_1625246994117.jpg', '2021-05-03 03:40:37'),
('1621461566052', 'Kelvin', 'H', 'Ishengoma', 'kelvin@gmail.com', '', '$2b$10$ZG15RcDZuwZLAuSZJ1VSY.ll..MNvgulcNx2DeFz9FIF33HuYXcSy', 2, 0, 'default_avatar.jpg', '2021-05-19 21:59:26'),
('1622351371840', 'Catherine', NULL, 'Alison', 'cath@gmail.com', '', '$2b$10$l5LuM1YwHJHb3UsZjUqjdusOvrL72xcHhBmefAWohn83I9/ovnc7.', 2, 2, 'default_avatar.jpg', '2021-05-30 05:09:31'),
('1625120095169', 'Zulpha', NULL, 'Hassen', 'zuh@gmail.com', '255744004897', '$2b$10$Hu2748Bt735HMM7G7dUYLezVUFI//NLzDCon1ojVPKeZc4Cm0PjkS', 2, 4, 'http://localhost:4200/assets/media/avatars/zulpha_1625425630272.jpg.JPG', '2021-07-01 06:14:55');

-- --------------------------------------------------------

--
-- Table structure for table `api_key`
--

CREATE TABLE `api_key` (
  `ID` int(11) NOT NULL,
  `enterpriseID` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `api_key`
--

INSERT INTO `api_key` (`ID`, `enterpriseID`, `status`, `created`) VALUES
(1, 'TEE0215', 1, '2021-04-17 06:02:13'),
(2, 'AXE2881', 1, '2021-05-20 23:24:53'),
(3, 'TES5583', 1, '2021-07-12 15:00:12'),
(4, 'TES4984', 0, '2021-07-12 15:03:04'),
(5, 'MET5693', 1, '2021-07-20 04:13:16'),
(6, 'PRO0621', 1, '2021-07-20 09:21:40');

-- --------------------------------------------------------

--
-- Table structure for table `api_key_details`
--

CREATE TABLE `api_key_details` (
  `ID` int(11) NOT NULL,
  `apiKeyID` int(11) NOT NULL,
  `pkey` varchar(255) NOT NULL,
  `skey` varchar(255) NOT NULL,
  `tokenUsed` int(1) NOT NULL DEFAULT 0,
  `lastUsed` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `api_key_details`
--

INSERT INTO `api_key_details` (`ID`, `apiKeyID`, `pkey`, `skey`, `tokenUsed`, `lastUsed`) VALUES
(1, 1, 'pk_a4u0h0csia5g9cyval0ef89duohol6_1', 'sk_2kthn4fi1yv7kpzv2owrjuybsx8blj_1', 1, '2021-06-07 09:09:56'),
(2, 2, 'pk_qe47h0nra6lbfzrth641ndsztmm9hh_1', 'sk_3dhl4qhxs4t7ls1eezssa67fi6dhwu_1', 1, '2021-06-02 13:49:02'),
(3, 3, 'pk_tes55839vlmbhwr1sp97cv6o101wry_1', 'pk_tes558311kqnvfns7j35jh8vqiwvmx_1', 0, '2021-07-20 04:10:58'),
(4, 4, 'pk_tes4984nt58qpprvtgypoctstnfhls_1', 'pk_tes4984tob8c346l9z9y2t6030of79_1', 0, '2021-07-20 04:11:01'),
(5, 5, 'pk_met5693krc0ka4m9pualy5o2e51w63_1', 'pk_met5693whrwne7jelukehyn8wc1ugq_1', 0, NULL),
(6, 6, 'pk_pro062170rnzzqj1ytoagvasy5m5ht_1', 'pk_pro0621dly0sghfwkrpr7i4h79cj91_1', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `enterprise_details`
--

CREATE TABLE `enterprise_details` (
  `ID` varchar(255) NOT NULL,
  `accountID` varchar(50) NOT NULL,
  `compName` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `fee` int(255) NOT NULL,
  `BankCardNo` varchar(900) DEFAULT 'NULL',
  `status` int(1) NOT NULL DEFAULT 0,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `description` varchar(255) NOT NULL,
  `legalDoc` varchar(900) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enterprise_details`
--

INSERT INTO `enterprise_details` (`ID`, `accountID`, `compName`, `email`, `fee`, `BankCardNo`, `status`, `created`, `description`, `legalDoc`) VALUES
('AXE2881', '1621461566052', 'Axetrixhub', 'axe@gmail.com', 8, NULL, 1, '2021-05-20 23:24:53', 'This deal with multiple thing like\n  A: Software developemnt', 'http://localhost:4200/assets/documents/individual_1625818922208.docx'),
('BUS8581', '1618630836971', 'Business 5', 'tesT3@gmail.com', 8, '4242 4242 4242 4242', 2, '2021-07-09 08:22:02', 'Test desc', 'http://localhost:4200/assets/documents/individual_1625818922208.docx'),
('DJV0320', '1621461566052', 'djvhjdhgjhj', 'jfhfjhj@g.c', 8, '7567465747576477', 0, '2021-07-20 09:10:17', 'sfjhjhjkfshgjhj', 'http://localhost:4200/assets/documents/over_page_1626772217472.docx'),
('MET5693', '1622351371840', 'metrobile', 'metro@info', 8, '4242 4242 4242 4242', 1, '2021-05-30 11:32:54', 'chemical distributor', ''),
('PRO0621', '1618630836971', 'Project 3', 'test3@gmail.com', 8, '4242 4242 4242 4242', 1, '2021-07-07 08:25:14', 'Test desc', 'http://localhost:4200/assets/documents/secury_group_asigniment_1625646314571.pdf'),
('SHG2882', '1621461566052', 'shgjksdhkj', 'shghsj@g.c', 8, '34769874867487', 0, '2021-07-20 09:33:01', 'kdgjksdjgkjsdkj', 'http://localhost:4200/assets/documents/over_page_1626773581207.docx'),
('SKF8564', '1621461566052', 'skfgjjsfEHG', 'EHFUYU@g.c', 8, '45634756347657', 0, '2021-07-20 09:44:40', 'dsgysuidgyuisyu', 'http://localhost:4200/assets/documents/over_page_1626774280572.docx'),
('TEE0215', '1618630836971', 'TEE-PERFUME', 'info@teeperfume.com', 8, '4242 4242 4242 4242', 2, '2021-04-17 06:02:13', 'selling perfume and other cosmetics products in morogoro Tanzania', 'http://localhost:4200/assets/documents/individual_1625818922208.docx'),
('TEE9678', '1618630836971', 'TEE OUTFITS', 'info@teeoutfits.com', 8, 'NULL', 0, '2021-07-06 13:19:34', 'Outfits Dealers', 'http://localhost:4200/assets/documents/individual_1625818922208.docx'),
('TES4984', '1618630836971', 'Test Business', 'tes4@gmail.com', 8, '4242 4242 4242 4242', 2, '2021-07-07 15:03:33', 'Test if the business update form is working perfect', 'http://localhost:4200/assets/documents/Cryptography_1625670213575.pdf'),
('TES5583', '1618630836971', 'Test', 'tes@gmail.com', 8, '4242 4242 4242 4242', 1, '2021-07-12 09:17:39', 'Test desc', 'http://localhost:4200/assets/documents/GROUP_NO_4_1626081459736.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `payment_details`
--

CREATE TABLE `payment_details` (
  `ID` int(255) NOT NULL,
  `invoiceNo` varchar(16) NOT NULL,
  `businessID` varchar(255) NOT NULL,
  `noTransaction` int(255) NOT NULL,
  `totalAmount` decimal(12,2) NOT NULL,
  `fromTo` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `seen` int(11) NOT NULL DEFAULT 0,
  `createdOn` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedOn` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_details`
--

INSERT INTO `payment_details` (`ID`, `invoiceNo`, `businessID`, `noTransaction`, `totalAmount`, `fromTo`, `status`, `seen`, `createdOn`, `updatedOn`) VALUES
(1, 'TEE-00001', 'TEE0215', 1, '2116.00', '2021-02-01 - 2021-02-28', 1, 1, '2021-05-30 05:00:24', '2021-05-30 05:05:12'),
(2, 'TEE-00002', 'TEE0215', 2, '56.12', '2021-03-01 - 2021-03-31', 0, 0, '2021-05-30 05:00:46', NULL),
(3, 'TEE-00003', 'TEE0215', 7, '315.56', '2021-04-01 - 2021-04-30', 0, 0, '2021-05-30 05:01:04', NULL),
(4, 'TEE-00004', 'TEE0215', 13, '852.84', '2021-05-01 - 2021-05-31', 1, 1, '2021-06-09 08:58:14', '2021-06-09 09:01:35'),
(5, 'AXE-00001', 'AXE2881', 3, '34.04', '2021-05-01 - 2021-05-31', 0, 0, '2021-06-10 17:44:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `platform`
--

CREATE TABLE `platform` (
  `ID` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `service` varchar(255) NOT NULL,
  `logo` varchar(900) NOT NULL DEFAULT 'platform_default_logo.png',
  `status` int(1) NOT NULL DEFAULT 0,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `platform`
--

INSERT INTO `platform` (`ID`, `name`, `service`, `logo`, `status`, `created`) VALUES
(1, 'Vodacome', 'M-Pesa', 'http://localhost:4200/assets/media/brand/vodacome.png', 1, '2021-03-14 14:45:43'),
(2, 'Tigo', 'Tigo-Pesa', 'http://localhost:4200/assets/media/brand/tigo-pesa.png', 1, '2021-03-14 14:54:00'),
(3, 'Halotel', 'Halo-Pesa', 'http://localhost:4200/assets/media/brand/halopesa.png', 1, '2021-03-14 15:09:06'),
(4, 'TTCL', 'T-Pesa', 'http://localhost:4200/assets/media/brand/ttcl.png', 0, '2021-03-23 18:09:27');

-- --------------------------------------------------------

--
-- Table structure for table `platform_details`
--

CREATE TABLE `platform_details` (
  `ID` int(11) NOT NULL,
  `platformID` int(11) NOT NULL,
  `platformCode` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `platform_details`
--

INSERT INTO `platform_details` (`ID`, `platformID`, `platformCode`) VALUES
(1, 1, 74),
(2, 2, 65),
(3, 3, 73),
(4, 4, 77),
(5, 1, 44),
(6, 1, 75),
(7, 1, 76),
(8, 3, 62);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `ID` int(11) NOT NULL,
  `roleName` varchar(25) NOT NULL,
  `roleStatus` int(1) NOT NULL DEFAULT 0,
  `roleCreated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`ID`, `roleName`, `roleStatus`, `roleCreated`) VALUES
(1, 'admin', 1, '2021-03-06 14:40:01'),
(2, 'user', 1, '2021-03-06 14:40:01');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_details`
--

CREATE TABLE `transaction_details` (
  `ID` int(11) NOT NULL,
  `customerID` varchar(14) NOT NULL,
  `customerName` varchar(900) NOT NULL,
  `platformID` int(11) NOT NULL,
  `transCode` varchar(900) NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `activity` varchar(900) NOT NULL,
  `transStatus` int(1) NOT NULL,
  `businessID` varchar(900) NOT NULL,
  `paidOn` date NOT NULL DEFAULT current_timestamp(),
  `isPaid` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction_details`
--

INSERT INTO `transaction_details` (`ID`, `customerID`, `customerName`, `platformID`, `transCode`, `amount`, `activity`, `transStatus`, `businessID`, `paidOn`, `isPaid`) VALUES
(1, '0744004897', 'Deogratias Alison', 1, 'YCCWRXP2TCU', '30.03', 'Deogratias Alison made transaction on 2021-04-05,17:29:48.879Z in M-Pesa using phone id 0744004897', 1, 'TEE0215', '2021-04-05', 2),
(2, '0744004897', 'Deogratias Alison', 1, '5YWRXTRCHXU', '10.10', 'Deogratias Alison made transaction on 2021-04-17,15:50:48.303Z in M-Pesa using phone id 0744004897', 1, 'TEE0215', '2021-04-17', 2),
(3, '0744004897', 'Deogratias Alison', 1, 'EPXKE1KR50Y', '10.91', 'Deogratias Alison made transaction on 2021-04-17,15:50:48.371Z in M-Pesa using phone id 0744004897', 1, 'TEE0215', '2021-04-17', 2),
(4, '0654004897', 'Revina Twaha', 2, '4H0P82WE0W5', '90.01', 'Revina Twaha made transaction on 2021-04-17,16:08:18.679Z in M-Pesa using phone id 0744004897', 1, 'TEE0215', '2021-04-18', 2),
(5, '0744004897', 'Deogratias', 1, 'HTXTDMYR2D4', '0.19', 'Deogratias Alison made transaction on 2021-04-17,16:11:47.792Z in M-Pesa using phone id 0744004897', 1, 'TEE0215', '2021-04-18', 2),
(6, '0744004897', 'Deogratias', 1, 'U8KXTWC44MW', '101.00', 'Deogratias Alison made transaction on 2021-04-17,16:32:22.701Z in M-Pesa using phone id 0744004897', 1, 'TEE0215', '2021-04-19', 2),
(7, '0756739238', 'Edmund E Rugambwa', 1, 'YHYU8C41YP8', '182.80', 'Edmund E Rugambwa made transaction on 2021-05-02,21:36:48.394Z in M-Pesa using phone id 0756739238', 1, 'TEE0215', '2021-05-03', 1),
(8, '0756739238', 'Edmund E Rugambwa', 1, '8C1Y48Y0055', '28.28', 'Edmund E Rugambwa made transaction on 2021-05-02,21:43:13.437Z in M-Pesa using phone id 0756739238', 1, 'TEE0215', '2021-05-03', 1),
(9, '0763904641', 'Revina Twaha', 1, '0CPH24EPYP2', '32.26', 'Revina Twaha made transaction on 2021-05-02,21:47:46.195Z in M-Pesa using phone id 0763904641', 1, 'TEE0215', '2021-05-03', 1),
(10, '0763904641', 'Revina Twaha', 1, 'EE48CKYRK8E', '78.09', 'Revina Twaha made transaction on 2021-05-05,10:30:50.877Z in M-Pesa using phone id 0763904641', 1, 'TEE0215', '2021-05-05', 1),
(11, '0744004897', 'Deogratias Alison', 1, 'WK2PC58515Y', '28.28', 'Deogratias Alison made transaction on 2021-05-10,04:37:15.709Z in M-Pesa using phone id 0744004897', 1, 'TEE0215', '2021-05-10', 1),
(12, '0744004897', 'Deogratias Alison', 1, '55T1HXM01E0', '82.80', 'Deogratias Alison made transaction on 2021-05-10,04:41:09.216Z in M-Pesa using phone id 0744004897', 1, 'TEE0215', '2021-05-10', 1),
(13, '0744004897', 'Deogratias Alison', 1, '4H0P82WE0W5', '101.00', 'Deogratias Alison made transaction on 2021-04-17,16:08:18.679Z in M-Pesa using phone id 0744004897', 1, 'TEE0215', '2021-04-18', 2),
(14, '0756739238', 'Edmund E Rugambwa', 2, '8C1Y48Y00II', '32.90', 'Edmund E Rugambwa made transaction on 2021-05-02,21:43:13.437Z in M-Pesa using phone id 0756739238', 1, 'TEE0215', '2021-03-10', 2),
(15, '0656739238', 'Edmund E Rugambwa', 2, '8C1Y48HK055', '28.29', 'Edmund E Rugambwa made transaction on 2021-05-02,21:43:13.437Z in M-Pesa using phone id 0756739238', 1, 'TEE0215', '2021-03-03', 2),
(16, '0756739238', 'Edmund E Rugambwa', 1, '8LLY48Y0055', '2300.00', 'Edmund E Rugambwa made transaction on 2021-05-02,21:43:13.437Z in M-Pesa using phone id 0756739238', 1, 'TEE0215', '2021-02-03', 1),
(17, '0744004897', 'Deogratias Alison', 1, '5XYRKXR14WC', '313.60', 'Deogratias Alison made transaction on 2021-05-15 in M-Pesa using phone id 0744004897', 1, 'TEE0215', '2021-05-15', 1),
(18, '0653904641', 'Revina Twaha', 2, 'RRUK0K21X8W', '28.00', 'Magret Mbinda uses Revina Twaha\'s account and, ', 1, 'TEE0215', '2021-05-15', 1),
(19, '0624004897', 'Ishengoma R Deogratias', 3, 'TU8MWR10PKC', '98.90', 'Ishengoma uses Ishengoma R Deogratias\'s account and, ', 1, 'TEE0215', '2021-05-15', 1),
(20, '0654004897', 'Revina Twaha', 2, '8W2H0PWDHDE', '14.09', 'Kelvin Ishengoma uses Revina Twaha\'s account and, ', 1, 'TEE0215', '2021-05-18', 1),
(21, '0744004897', 'Deogratias Alison', 1, 'RCUY8WM2CRW', '14.23', 'Abdilah Mansol uses Deogratias Alison\'s account and, ', 1, 'TEE0215', '2021-05-18', 1),
(22, '0744004897', 'Deogratias Alison', 1, 'D8KUH1TH50H', '13.63', 'Deogratias Alison made transaction of $13.63 on 2021-05-19 in M-Pesa using phone id 0744004897', 1, 'TEE0215', '2021-05-19', 1),
(23, '0744004897', 'Deogratias Alison', 1, '02W10HERMRP', '12.17', 'Deogratias Alison made transaction of $NaN on 2021-05-21 in M-Pesa using phone id 0744004897', 1, 'AXE2881', '2021-05-22', 2),
(24, '0744004897', 'Deogratias Alison', 1, 'X22PXCYCERW', '12.17', 'Deogratias Alison made transaction of $12.17 on 2021-05-21 in M-Pesa using phone id 0744004897', 1, 'AXE2881', '2021-05-22', 2),
(25, '0744004897', 'Deogratias Alison', 1, '2D8T01M00YT', '12.17', 'Deogratias Alison made transaction of $12.17 on 2021-05-27 in M-Pesa using phone id 0744004897', 1, 'TEE0215', '2021-05-27', 1),
(26, '0744004897', 'Deogratias Alison', 1, '44UE5MWUUDK', '12.17', 'Deogratias Alison made transaction of $12.17 on 2021-05-29 in M-Pesa using phone id 0744004897', 1, 'AXE2881', '2021-05-29', 2),
(27, '0744004897', 'Deogratias Alison', 1, 'CTPCEYUMRE5', '12.17', 'Deogratias Alison made transaction of $12.17 on 2021-06-02 in M-Pesa using phone id 0744004897', 1, 'AXE2881', '2021-06-02', 0),
(28, '0744004897', 'Deogratias Alison', 1, 'DR0PHMYW1R5', '12.17', 'Deogratias Alison made transaction of $12.17 on 2021-06-07 in M-Pesa using phone id 0744004897', 1, 'TEE0215', '2021-06-07', 0),
(29, '0624004897', 'Ishengoma R Deogratias', 3, 'UW005P4CTE4', '34.96', 'Ishengoma R Deogratias made transaction of $34.96 on 2021-06-09 in Halopesa using phone id 0624004897', 1, 'AXE2881', '2021-06-09', 0),
(30, '0744004897', 'Deogratias Alison', 1, 'RXWTP4U41KE', '12.17', 'Deogratias Alison made transaction of $12.17 on 2021-06-09 in M-Pesa using phone id 0744004897', 1, 'AXE2881', '2021-06-09', 0),
(31, '0744004897', 'Deogratias Alison', 1, 'UPMMTKKWP1Y', '1782.17', 'deogratias Alison uses Deogratias Alison\'s account and, ', 1, 'TEE0215', '2021-06-09', 0),
(34, '0756739238', 'Emanuel Edmmund Rugambwa', 1, '4EDRUM55XP8', '12.17', 'egfyeusyu uses Emanuel Edmmund Rugambwa\'s account and, ', 1, 'AXE2881', '2021-07-20', 0),
(40, '0756739238', 'Emanuel Edmmund Rugambwa', 1, '51UCR1W5282', '12.17', 'Deogratias Alison uses Emanuel Edmmund Rugambwa\'s account and, ', 1, 'AXE2881', '2021-07-20', 0),
(42, '0756739238', 'Emanuel Edmmund Rugambwa', 1, 'DXPDRYHMR0U', '189.17', 'Deogratias Alison uses Emanuel Edmmund Rugambwa\'s account and, ', 1, 'AXE2881', '2021-07-20', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `roleID` (`roleID`);

--
-- Indexes for table `api_key`
--
ALTER TABLE `api_key`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `enterpriseID` (`enterpriseID`);

--
-- Indexes for table `api_key_details`
--
ALTER TABLE `api_key_details`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `apiKeyID` (`apiKeyID`);

--
-- Indexes for table `enterprise_details`
--
ALTER TABLE `enterprise_details`
  ADD PRIMARY KEY (`ID`,`email`),
  ADD KEY `accountID` (`accountID`);

--
-- Indexes for table `payment_details`
--
ALTER TABLE `payment_details`
  ADD PRIMARY KEY (`ID`,`invoiceNo`) USING BTREE,
  ADD KEY `businessID` (`businessID`) USING BTREE;

--
-- Indexes for table `platform`
--
ALTER TABLE `platform`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `platform_details`
--
ALTER TABLE `platform_details`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `platformID` (`platformID`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `platformID` (`platformID`),
  ADD KEY `businessID` (`businessID`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `api_key`
--
ALTER TABLE `api_key`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `api_key_details`
--
ALTER TABLE `api_key_details`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payment_details`
--
ALTER TABLE `payment_details`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `platform`
--
ALTER TABLE `platform`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `platform_details`
--
ALTER TABLE `platform_details`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `account_ibfk_1` FOREIGN KEY (`roleID`) REFERENCES `role` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `api_key`
--
ALTER TABLE `api_key`
  ADD CONSTRAINT `api_key_ibfk_1` FOREIGN KEY (`enterpriseID`) REFERENCES `enterprise_details` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `api_key_details`
--
ALTER TABLE `api_key_details`
  ADD CONSTRAINT `api_key_details_ibfk_1` FOREIGN KEY (`apiKeyID`) REFERENCES `api_key` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `enterprise_details`
--
ALTER TABLE `enterprise_details`
  ADD CONSTRAINT `enterprise_details_ibfk_1` FOREIGN KEY (`accountID`) REFERENCES `account` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payment_details`
--
ALTER TABLE `payment_details`
  ADD CONSTRAINT `payment_details_ibfk_1` FOREIGN KEY (`businessID`) REFERENCES `enterprise_details` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `platform_details`
--
ALTER TABLE `platform_details`
  ADD CONSTRAINT `platform_details_ibfk_1` FOREIGN KEY (`platformID`) REFERENCES `platform` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD CONSTRAINT `transaction_details_ibfk_1` FOREIGN KEY (`platformID`) REFERENCES `platform` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaction_details_ibfk_2` FOREIGN KEY (`businessID`) REFERENCES `enterprise_details` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
