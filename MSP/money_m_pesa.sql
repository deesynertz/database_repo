-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2021 at 09:23 AM
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
-- Database: `money_m_pesa`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction_log`
--

CREATE TABLE `transaction_log` (
  `ID` int(10) NOT NULL,
  `userID` int(10) NOT NULL,
  `transCode` varchar(12) NOT NULL,
  `activity` varchar(900) NOT NULL,
  `transStatus` int(1) NOT NULL,
  `createdOn` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction_log`
--

INSERT INTO `transaction_log` (`ID`, `userID`, `transCode`, `activity`, `transStatus`, `createdOn`) VALUES
(1, 744004897, 'CY2WRYH51K1', 'Deogratias Alison make transaction of Tsh 303 with code number CY2WRYH51K1 at 2021-04-02', 1, '2021-04-02 16:48:06'),
(2, 744004897, '4Y005HK8UPU', 'Deogratias Alison make transaction of Tsh 303 with code number 4Y005HK8UPU at 2021-04-02,16:55:35.071Z', 1, '2021-04-02 16:55:35'),
(3, 744004897, 'XXYMXU8MWXP', 'Deogratias Alison make transaction of Tsh 303 with code number XXYMXU8MWXP at 2021-04-02,17:06:01.346Z', 1, '2021-04-02 17:06:01'),
(4, 744004897, 'DX421K400TC', 'Deogratias Alison make transaction of Tsh 303 with code number DX421K400TC at 2021-04-05,09:52:30.832Z', 1, '2021-04-05 09:52:30'),
(5, 744004897, 'DUW1WXCTMKK', 'Deogratias Alison make transaction of Tsh 303 with code number DUW1WXCTMKK at 2021-04-05,10:10:51.688Z', 1, '2021-04-05 10:10:51'),
(6, 744004897, 'W2018DKHKD1', 'Deogratias Alison make transaction of Tsh 303 with code number W2018DKHKD1 at 2021-04-05,10:13:25.016Z', 1, '2021-04-05 10:13:25'),
(7, 744004897, 'XM4MWX58K5D', 'Deogratias Alison make transaction of Tsh 303 with code number XM4MWX58K5D at 2021-04-05,10:14:55.007Z', 1, '2021-04-05 10:14:55'),
(8, 744004897, 'EECCWEKMT4W', 'Deogratias Alison make transaction of Tsh 303 with code number EECCWEKMT4W at 2021-04-05,10:15:57.973Z', 1, '2021-04-05 10:15:57'),
(9, 744004897, 'KCUXMU8EKU0', 'Deogratias Alison make transaction of Tsh 303 with code number KCUXMU8EKU0 at 2021-04-05,10:16:11.276Z', 1, '2021-04-05 10:16:11'),
(10, 744004897, 'W481KX1PP2E', 'Deogratias Alison make transaction of Tsh 303 with code number W481KX1PP2E at 2021-04-05,10:17:12.824Z', 1, '2021-04-05 10:17:12'),
(11, 744004897, 'M841TCDKRYY', 'Deogratias Alison make transaction of Tsh 303 with code number M841TCDKRYY at 2021-04-05,10:20:05.684Z', 1, '2021-04-05 10:20:05'),
(12, 744004897, 'YD8DDPKR12X', 'Deogratias Alison make transaction of Tsh 303 with code number YD8DDPKR12X at 2021-04-05,10:22:32.484Z', 1, '2021-04-05 10:22:32'),
(13, 744004897, 'RXYC2DWC8R0', 'Deogratias Alison make transaction of Tsh 303 with code number RXYC2DWC8R0 at 2021-04-05,10:22:59.507Z', 1, '2021-04-05 10:22:59'),
(14, 744004897, '1CME10U548W', 'Deogratias Alison make transaction of Tsh 303 with code number 1CME10U548W at 2021-04-05,10:25:18.093Z', 1, '2021-04-05 10:25:18'),
(15, 744004897, 'KR4KXE024KD', 'Deogratias Alison make transaction of Tsh 303 with code number KR4KXE024KD at 2021-04-05,10:25:36.733Z', 1, '2021-04-05 10:25:36'),
(16, 744004897, '0C4PUXE5PTD', 'Deogratias Alison make transaction of Tsh 303 with code number 0C4PUXE5PTD at 2021-04-05,10:26:13.402Z', 1, '2021-04-05 10:26:13'),
(17, 744004897, 'CW2CKDU82D4', 'Deogratias Alison make transaction of Tsh 303 with code number CW2CKDU82D4 at 2021-04-05,10:26:28.271Z', 1, '2021-04-05 10:26:28'),
(18, 744004897, 'MTE288CHR5K', 'Deogratias Alison make transaction of Tsh 303 with code number MTE288CHR5K at 2021-04-05,10:27:11.943Z', 1, '2021-04-05 10:27:11'),
(19, 744004897, 'D4C1TWK5052', 'Deogratias Alison make transaction of Tsh 303 with code number D4C1TWK5052 at 2021-04-05,10:28:01.953Z', 1, '2021-04-05 10:28:01'),
(20, 744004897, 'XRXRWDUR0UP', 'Deogratias Alison make transaction of Tsh 303 with code number XRXRWDUR0UP at 2021-04-05,10:29:56.669Z', 1, '2021-04-05 10:29:56'),
(21, 744004897, 'YY8PD0EYHHY', 'Deogratias Alison make transaction of Tsh 303 with code number YY8PD0EYHHY at 2021-04-05,10:31:30.981Z', 1, '2021-04-05 10:31:30'),
(22, 744004897, 'HTK08HWUKCM', 'Deogratias Alison make transaction of Tsh 303 with code number HTK08HWUKCM at 2021-04-05,10:32:31.020Z', 1, '2021-04-05 10:32:31'),
(23, 744004897, 'KKKKH0DDUXM', 'Deogratias Alison make transaction of Tsh 303 with code number KKKKH0DDUXM at 2021-04-05,10:33:02.013Z', 1, '2021-04-05 10:33:02'),
(24, 744004897, 'W5C8WD45MDK', 'Deogratias Alison make transaction of Tsh 303 with code number W5C8WD45MDK at 2021-04-05,10:33:31.462Z', 1, '2021-04-05 10:33:31'),
(25, 744004897, 'PYR0K0PCKWH', 'Deogratias Alison make transaction of Tsh 303 with code number PYR0K0PCKWH at 2021-04-05,10:33:58.039Z', 1, '2021-04-05 10:33:58'),
(26, 744004897, 'H245P1EX8WU', 'Deogratias Alison make transaction of Tsh 303 with code number H245P1EX8WU at 2021-04-05,10:35:58.451Z', 1, '2021-04-05 10:35:58'),
(27, 744004897, '5CD2YDETCYY', 'Deogratias Alison make transaction of Tsh 303 with code number 5CD2YDETCYY at 2021-04-05,10:37:19.115Z', 1, '2021-04-05 10:37:19'),
(28, 744004897, '28Y0YTXC524', 'Deogratias Alison make transaction of Tsh 303 with code number 28Y0YTXC524 at 2021-04-05,11:34:01.316Z', 1, '2021-04-05 11:34:01'),
(29, 744004897, 'HR4D4EEXKKR', 'Deogratias Alison make transaction of Tsh 303 with code number HR4D4EEXKKR at 2021-04-05,11:35:23.195Z', 1, '2021-04-05 11:35:23'),
(30, 744004897, 'X8UMTHW0X8Y', 'Deogratias Alison make transaction of Tsh 303 with code number X8UMTHW0X8Y at 2021-04-05,11:58:47.587Z', 1, '2021-04-05 11:58:47'),
(31, 744004897, '448PE120YH4', 'Deogratias Alison make transaction of Tsh 303 with code number 448PE120YH4 at 2021-04-05,11:58:49.345Z', 1, '2021-04-05 11:58:49'),
(32, 744004897, '25EYXKY5154', 'Deogratias Alison make transaction of Tsh 303 with code number 25EYXKY5154 at 2021-04-05,11:59:38.144Z', 1, '2021-04-05 11:59:38'),
(33, 744004897, 'KRUD10TWY5D', 'Deogratias Alison make transaction of Tsh 303 with code number KRUD10TWY5D at 2021-04-05,13:14:21.570Z', 1, '2021-04-05 13:14:21'),
(34, 744004897, 'RPYWTWMX8ME', 'Deogratias Alison make transaction of Tsh 303 with code number RPYWTWMX8ME at 2021-04-05,13:15:16.104Z', 1, '2021-04-05 13:15:16'),
(35, 744004897, 'DPPC11RRMCW', 'Deogratias Alison make transaction of Tsh 303 with code number DPPC11RRMCW at 2021-04-05,13:16:04.674Z', 1, '2021-04-05 13:16:04'),
(36, 744004897, '48MRWRYM5XX', 'Deogratias Alison make transaction of Tsh 303 with code number 48MRWRYM5XX at 2021-04-05,13:19:17.245Z', 1, '2021-04-05 13:19:17'),
(37, 744004897, '2RE88CWC4H5', 'Deogratias Alison make transaction of Tsh 303 with code number 2RE88CWC4H5 at 2021-04-05,13:20:44.651Z', 1, '2021-04-05 13:20:44'),
(38, 744004897, 'TEYU0RWKWPK', 'Deogratias Alison make transaction of Tsh 303 with code number TEYU0RWKWPK at 2021-04-05,13:21:54.071Z', 1, '2021-04-05 13:21:54'),
(39, 744004897, '5K2MUUYHTRK', 'Deogratias Alison make transaction of Tsh 303 with code number 5K2MUUYHTRK at 2021-04-05,13:24:25.597Z', 1, '2021-04-05 13:24:25'),
(40, 744004897, '5CEUKT881KD', 'Deogratias Alison make transaction of Tsh 303 with code number 5CEUKT881KD at 2021-04-05,13:26:20.204Z', 1, '2021-04-05 13:26:20'),
(41, 744004897, '4EC241M2X0W', 'Deogratias Alison make transaction of Tsh 303 with code number 4EC241M2X0W at 2021-04-05,13:39:58.396Z', 1, '2021-04-05 13:39:58'),
(42, 744004897, '2UXR02Y0424', 'Deogratias Alison make transaction of Tsh 303 with code number 2UXR02Y0424 at 2021-04-05,13:56:39.935Z', 1, '2021-04-05 13:56:39'),
(43, 744004897, 'DX81RMP00HE', 'Deogratias Alison make transaction of Tsh 303 with code number DX81RMP00HE at 2021-04-05,13:57:08.540Z', 1, '2021-04-05 13:57:08'),
(44, 744004897, '2PHU1TPYH54', 'Deogratias Alison make transaction of Tsh 303 with code number 2PHU1TPYH54 at 2021-04-05,13:57:49.550Z', 1, '2021-04-05 13:57:49'),
(45, 744004897, 'P1RMTPK51E5', 'Deogratias Alison make transaction of Tsh 303 with code number P1RMTPK51E5 at 2021-04-05,13:58:30.069Z', 1, '2021-04-05 13:58:30'),
(46, 744004897, 'U5ME8YKWCX5', 'Deogratias Alison make transaction of Tsh 303 with code number U5ME8YKWCX5 at 2021-04-05,13:58:58.685Z', 1, '2021-04-05 13:58:58'),
(47, 744004897, 'XK020TP5TMC', 'Deogratias Alison make transaction of Tsh 303 with code number XK020TP5TMC at 2021-04-05,14:00:01.896Z', 1, '2021-04-05 14:00:01'),
(48, 744004897, 'X4P058KDYY0', 'Deogratias Alison make transaction of Tsh 303 with code number X4P058KDYY0 at 2021-04-05,14:00:35.675Z', 1, '2021-04-05 14:00:35'),
(49, 744004897, '8RK88PT0C1K', 'Deogratias Alison make transaction of Tsh 303 with code number 8RK88PT0C1K at 2021-04-05,14:01:17.162Z', 1, '2021-04-05 14:01:17'),
(50, 744004897, 'PUUYRY0MHYD', 'Deogratias Alison make transaction of Tsh 303 with code number PUUYRY0MHYD at 2021-04-05,14:06:58.740Z', 1, '2021-04-05 14:06:58'),
(51, 744004897, 'WPWRW05YH05', 'Deogratias Alison make transaction of Tsh 303 with code number WPWRW05YH05 at 2021-04-05,14:07:28.296Z', 1, '2021-04-05 14:07:28'),
(52, 744004897, '2R52CPTK58D', 'Deogratias Alison make transaction of Tsh 303 with code number 2R52CPTK58D at 2021-04-05,14:15:17.466Z', 1, '2021-04-05 14:15:17'),
(53, 744004897, '2K2HRYP4XY8', 'Deogratias Alison make transaction of Tsh 303 with code number 2K2HRYP4XY8 at 2021-04-05,14:17:43.277Z', 1, '2021-04-05 14:17:43'),
(54, 744004897, 'PYU5TUX5PM1', 'Deogratias Alison make transaction of Tsh 303 with code number PYU5TUX5PM1 at 2021-04-05,14:28:03.849Z', 1, '2021-04-05 14:28:03'),
(55, 744004897, '080155M2H8W', 'Deogratias Alison make transaction of Tsh 303 with code number 080155M2H8W at 2021-04-05,14:30:38.021Z', 1, '2021-04-05 14:30:38'),
(56, 744004897, 'K5EMMPYC52T', 'Deogratias Alison make transaction of Tsh 303 with code number K5EMMPYC52T at 2021-04-05,14:32:37.144Z', 1, '2021-04-05 14:32:37'),
(57, 744004897, 'KR0UM8D1C1T', 'Deogratias Alison make transaction of Tsh 303 with code number KR0UM8D1C1T at 2021-04-05,14:33:02.445Z', 1, '2021-04-05 14:33:02'),
(58, 744004897, 'P1K2C0KWDXW', 'Deogratias Alison make transaction of Tsh 303 with code number P1K2C0KWDXW at 2021-04-05,14:34:32.374Z', 1, '2021-04-05 14:34:32'),
(59, 744004897, '881RDUMK24W', 'Deogratias Alison make transaction of Tsh 303 with code number 881RDUMK24W at 2021-04-05,14:34:58.124Z', 1, '2021-04-05 14:34:58'),
(60, 744004897, 'H0UXKTD5PYT', 'Deogratias Alison make transaction of Tsh 303 with code number H0UXKTD5PYT at 2021-04-05,14:36:00.326Z', 1, '2021-04-05 14:36:00'),
(61, 744004897, '2550T5UEH0E', 'Deogratias Alison make transaction of Tsh 303 with code number 2550T5UEH0E at 2021-04-05,14:36:57.032Z', 1, '2021-04-05 14:36:57'),
(62, 744004897, '44HM4HURX4P', 'Deogratias Alison make transaction of Tsh 303 with code number 44HM4HURX4P at 2021-04-05,14:37:26.104Z', 1, '2021-04-05 14:37:26'),
(63, 744004897, 'C4RU2WE82HK', 'Deogratias Alison make transaction of Tsh 303 with code number C4RU2WE82HK at 2021-04-05,14:40:47.717Z', 1, '2021-04-05 14:40:47'),
(64, 744004897, 'U1TP510T412', 'Deogratias Alison make transaction of Tsh 303 with code number U1TP510T412 at 2021-04-05,14:41:57.571Z', 1, '2021-04-05 14:41:57'),
(65, 744004897, 'Y0XE0MDURT2', 'Deogratias Alison make transaction of Tsh 303 with code number Y0XE0MDURT2 at 2021-04-05,14:50:27.233Z', 1, '2021-04-05 14:50:27'),
(66, 744004897, '10ERXU18K58', 'Deogratias Alison make transaction of Tsh 303 with code number 10ERXU18K58 at 2021-04-05,14:50:56.667Z', 1, '2021-04-05 14:50:56'),
(67, 744004897, 'KWK2XW02UUT', 'Deogratias Alison make transaction of Tsh 303 with code number KWK2XW02UUT at 2021-04-05,14:52:04.976Z', 1, '2021-04-05 14:52:04'),
(68, 744004897, '8080E41UCDK', 'Deogratias Alison make transaction of Tsh 303 with code number 8080E41UCDK at 2021-04-05,14:52:32.389Z', 1, '2021-04-05 14:52:32'),
(69, 744004897, '0P2CCHRXXT4', 'Deogratias Alison make transaction of Tsh 303 with code number 0P2CCHRXXT4 at 2021-04-05,14:55:57.590Z', 1, '2021-04-05 14:55:57'),
(70, 744004897, 'YD0MWY5XCDK', 'Deogratias Alison make transaction of Tsh 303 with code number YD0MWY5XCDK at 2021-04-05,14:57:01.875Z', 1, '2021-04-05 14:57:01'),
(71, 744004897, 'MYR58Y5T5TD', 'Deogratias Alison make transaction of Tsh 303 with code number MYR58Y5T5TD at 2021-04-05,14:58:44.577Z', 1, '2021-04-05 14:58:44'),
(72, 744004897, 'DHM5UR5YW0U', 'Deogratias Alison make transaction of Tsh 303 with code number DHM5UR5YW0U at 2021-04-05,17:27:55.708Z', 1, '2021-04-05 17:27:55'),
(73, 744004897, '01UW1P81XY4', 'Deogratias Alison make transaction of Tsh 303 with code number 01UW1P81XY4 at 2021-04-05,17:28:42.694Z', 1, '2021-04-05 17:28:42'),
(74, 744004897, 'YCCWRXP2TCU', 'Deogratias Alison make transaction of Tsh 303 with code number YCCWRXP2TCU at 2021-04-05,17:29:48.879Z', 1, '2021-04-05 17:29:48'),
(75, 744004897, '25MH2RDEHHW', 'Deogratias Alison make transaction of Tsh 303 with code number 25MH2RDEHHW at 2021-04-05,17:34:53.817Z', 1, '2021-04-05 17:34:53'),
(76, 744004897, '2HK8M44CKP5', 'Deogratias Alison make transaction of Tsh 303 with code number 2HK8M44CKP5 at 2021-04-05,20:13:43.302Z', 1, '2021-04-05 20:13:43'),
(77, 744004897, 'P808KDXHERX', 'Deogratias Alison make transaction of Tsh 303 with code number P808KDXHERX at 2021-04-06,19:40:23.781Z', 1, '2021-04-06 19:40:23'),
(78, 744004897, 'WYUH8WTREPX', 'Deogratias Alison make transaction of Tsh 101 with code number WYUH8WTREPX at 2021-04-17,15:27:16.675Z', 1, '2021-04-17 15:27:16'),
(79, 744004897, 'YC0E210K4X1', 'Deogratias Alison make transaction of Tsh 101 with code number YC0E210K4X1 at 2021-04-17,15:30:00.954Z', 1, '2021-04-17 15:30:00'),
(80, 744004897, '8WUM2W4Y115', 'Deogratias Alison make transaction of Tsh 101 with code number 8WUM2W4Y115 at 2021-04-17,15:50:09.840Z', 1, '2021-04-17 15:50:09'),
(81, 744004897, 'HUW5W4TX5XK', 'Deogratias Alison make transaction of Tsh 101 with code number HUW5W4TX5XK at 2021-04-17,15:50:35.079Z', 1, '2021-04-17 15:50:35'),
(82, 744004897, '5YWRXTRCHXU', 'Deogratias Alison make transaction of Tsh 101 with code number 5YWRXTRCHXU at 2021-04-17,15:50:48.303Z', 1, '2021-04-17 15:50:48'),
(83, 744004897, 'EPXKE1KR50Y', 'Deogratias Alison make transaction of Tsh 101 with code number EPXKE1KR50Y at 2021-04-17,15:50:48.371Z', 1, '2021-04-17 15:50:48'),
(84, 744004897, '4H0P82WE0W5', 'Deogratias Alison make transaction of Tsh 101 with code number 4H0P82WE0W5 at 2021-04-17,16:08:18.679Z', 1, '2021-04-17 16:08:18'),
(85, 744004897, 'HTXTDMYR2D4', 'Deogratias Alison make transaction of Tsh 101 with code number HTXTDMYR2D4 at 2021-04-17,16:11:47.792Z', 1, '2021-04-17 16:11:47'),
(86, 744004897, 'NO CODE', 'Deogratias Alison with phone number 744004897 \n            of account owner Deogratias Alison try to make transaction of Tsh 101 at 2021-04-17, \n            it did not success due to inseficient balance', 0, '2021-04-17 16:23:39'),
(87, 744004897, 'NO CODE', 'Deogratias Alison with phone number 744004897 \n            of account owner Deogratias Alison try to make transaction of Tsh 101 at 2021-04-17, \n            it did not success due to inseficient balance', 0, '2021-04-17 16:27:36'),
(88, 744004897, 'NO CODE', 'Deogratias Alison with phone number 744004897 \n            of account owner Deogratias Alison try to make transaction of Tsh 101 at 2021-04-17, \n            it did not success due to inseficient balance', 0, '2021-04-17 16:28:06'),
(89, 744004897, 'NO CODE', 'Deogratias Alison with phone number 744004897 \n            of account owner Deogratias Alison try to make transaction of Tsh 101 at 2021-04-17, \n            it did not success due to inseficient balance', 0, '2021-04-17 16:28:25'),
(90, 744004897, 'NO CODE', 'Deogratias Alison with phone number 744004897 \n            of account owner Deogratias Alison try to make transaction of Tsh 101 at 2021-04-17, \n            it did not success due to inseficient balance', 0, '2021-04-17 16:28:25'),
(91, 744004897, 'NO CODE', 'Deogratias Alison with phone number 744004897 \n            of account owner Deogratias Alison try to make transaction of Tsh 101 at 2021-04-17, \n            it did not success due to inseficient balance', 0, '2021-04-17 16:28:25'),
(92, 744004897, 'NO CODE', 'Deogratias Alison with phone number 744004897 \n            of account owner Deogratias Alison try to make transaction of Tsh 101 at 2021-04-17, \n            it did not success due to inseficient balance', 0, '2021-04-17 16:28:25'),
(93, 744004897, 'NO CODE', 'Deogratias Alison with phone number 744004897 \n            of account owner Deogratias Alison try to make transaction of Tsh 101 at 2021-04-17, \n            it did not success due to inseficient balance', 0, '2021-04-17 16:28:28'),
(94, 744004897, 'NO CODE', 'Deogratias Alison with phone number 744004897 \n            of account owner Deogratias Alison try to make transaction of Tsh 101 at 2021-04-17, \n            it did not success due to inseficient balance', 0, '2021-04-17 16:28:49'),
(95, 744004897, 'NO CODE', 'Deogratias Alison with phone number 744004897 \n            of account owner Deogratias Alison try to make transaction of Tsh 101 at 2021-04-17, \n            it did not success due to inseficient balance', 0, '2021-04-17 16:28:49'),
(96, 744004897, 'NO CODE', 'Deogratias Alison with phone number 744004897 \n            of account owner Deogratias Alison try to make transaction of Tsh 101 at 2021-04-17, \n            it did not success due to inseficient balance', 0, '2021-04-17 16:28:49'),
(97, 744004897, 'NO CODE', 'Deogratias Alison with phone number 744004897 \n            of account owner Deogratias Alison try to make transaction of Tsh 101 at 2021-04-17, \n            it did not success due to inseficient balance', 0, '2021-04-17 16:28:49'),
(98, 744004897, 'NO CODE', 'Deogratias Alison with phone number 744004897 \n            of account owner Deogratias Alison try to make transaction of Tsh 101 at 2021-04-17, \n            it did not success due to inseficient balance', 0, '2021-04-17 16:28:49'),
(99, 744004897, 'NO CODE', 'Deogratias Alison with phone number 744004897 \n            of account owner Deogratias Alison try to make transaction of Tsh 101 at 2021-04-17, \n            it did not success due to inseficient balance', 0, '2021-04-17 16:29:00'),
(100, 744004897, 'NO CODE', 'Deogratias Alison with phone number 744004897 \n            of account owner Deogratias Alison try to make transaction of Tsh 101 at 2021-04-17, \n            it did not success due to inseficient balance', 0, '2021-04-17 16:30:15'),
(101, 744004897, 'U8KXTWC44MW', 'Deogratias Alison make transaction of Tsh 101 with code number U8KXTWC44MW at 2021-04-17,16:32:22.701Z', 1, '2021-04-17 16:32:22'),
(102, 744004897, 'NO CODE', 'Deogratias Alison with phone number 744004897 \n            of account owner Deogratias Alison try to make transaction of Tsh 101 at 2021-04-17, \n            it did not success due to inseficient balance', 0, '2021-04-17 16:41:56'),
(103, 744004897, 'NO CODE', 'Deogratias Alison with phone number 744004897 \n            of account owner Deogratias Alison try to make transaction of Tsh 101 at 2021-04-17, \n            it did not success due to inseficient balance', 0, '2021-04-17 16:44:49'),
(104, 744004897, 'NO CODE', 'Deogratias Alison with phone number 744004897 \n            of account owner Deogratias Alison try to make transaction of Tsh 101 at 2021-04-17, \n            it did not success due to inseficient balance', 0, '2021-04-17 16:45:18'),
(105, 744004897, 'NO CODE', 'Deogratias Alison with phone number 744004897 \n            of account owner Deogratias Alison try to make transaction of Tsh 101 at 2021-04-17, \n            it did not success due to inseficient balance', 0, '2021-04-17 16:45:19'),
(106, 744004897, 'NO CODE', 'Deogratias Alison with phone number 744004897 \n            of account owner Deogratias Alison try to make transaction of Tsh 101 at 2021-04-17, \n            it did not success due to inseficient balance', 0, '2021-04-17 16:45:20'),
(107, 744004897, 'NO CODE', 'Deogratias Alison with phone number 744004897 \n            of account owner Deogratias Alison try to make transaction of Tsh 101 at 2021-04-17, \n            it did not success due to inseficient balance', 0, '2021-04-17 16:47:20'),
(108, 744004897, 'NO CODE', 'Deogratias Alison with phone number 744004897 \n            of account owner Deogratias Alison try to make transaction of Tsh 101 at 2021-04-17, \n            it did not success due to inseficient balance', 0, '2021-04-17 16:48:21'),
(109, 744004897, 'NO CODE', 'Deogratias Alison with phone number 744004897 \n            of account owner Deogratias Alison try to make transaction of Tsh 101 at 2021-04-17, \n            it did not success due to inseficient balance', 0, '2021-04-17 16:49:45'),
(110, 744004897, 'NO CODE', 'Deogratias Alison with phone number 744004897 \n            of account owner Deogratias Alison try to make transaction of Tsh 101 at 2021-04-17, \n            it did not success due to inseficient balance', 0, '2021-04-17 16:50:34'),
(111, 744004897, 'NO CODE', 'Deogratias Alison with phone number 744004897 \n            of account owner Deogratias Alison try to make transaction of Tsh 101 at 2021-04-19, \n            it did not success due to inseficient balance', 0, '2021-04-19 09:57:59'),
(112, 756739238, '8P2XX5DP0UD', 'Edmund E Rugambwa make transaction of Tsh 101 with code number 8P2XX5DP0UD at 2021-04-20,07:28:45.654Z', 1, '2021-04-20 07:28:45'),
(113, 756739238, '554W0UDHHM2', 'Edmund E Rugambwa make transaction of Tsh 101 with code number 554W0UDHHM2 at 2021-04-20,07:28:48.345Z', 1, '2021-04-20 07:28:48'),
(114, 756739238, '2YYT4UW0C0R', 'Edmund E Rugambwa make transaction of Tsh 101 with code number 2YYT4UW0C0R at 2021-04-20,07:29:36.771Z', 1, '2021-04-20 07:29:36'),
(115, 756739238, '40W2Y55KP4R', 'Edmund E Rugambwa make transaction of Tsh 101 with code number 40W2Y55KP4R at 2021-04-20,07:32:32.633Z', 1, '2021-04-20 07:32:32'),
(116, 756739238, 'M5TMU4DXUXW', 'Edmund E Rugambwa make transaction of Tsh 101 with code number M5TMU4DXUXW at 2021-04-20,07:34:40.507Z', 1, '2021-04-20 07:34:40'),
(117, 756739238, '5XYU1R1Y4HH', 'Edmund E Rugambwa make transaction of Tsh 101 with code number 5XYU1R1Y4HH at 2021-04-20,07:37:07.852Z', 1, '2021-04-20 07:37:07'),
(118, 756739238, 'U0YR50K18Y1', 'Edmund E Rugambwa make transaction of Tsh 101 with code number U0YR50K18Y1 at 2021-04-20,07:37:07.862Z', 1, '2021-04-20 07:37:07'),
(119, 756739238, 'MEYYYM1Y04H', 'Edmund E Rugambwa make transaction of Tsh 101 with code number MEYYYM1Y04H at 2021-04-20,07:37:07.929Z', 1, '2021-04-20 07:37:07'),
(120, 756739238, '0RRHPP2DPEW', 'Edmund E Rugambwa make transaction of Tsh 101 with code number 0RRHPP2DPEW at 2021-04-20,07:37:23.410Z', 1, '2021-04-20 07:37:23'),
(121, 744004897, 'NO CODE', 'Deogratias Alison with phone number 744004897 \n            of account owner Deogratias Alison try to make transaction of Tsh 101 at 2021-04-20, \n            it did not success due to inseficient balance', 0, '2021-04-20 11:02:23'),
(122, 744004897, 'NO CODE', 'Deogratias Alison with phone number 744004897 \n            of account owner Deogratias Alison try to make transaction of Tsh 101 at 2021-04-28, \n            it did not success due to inseficient balance', 0, '2021-04-28 16:15:57'),
(123, 756739238, '4YMP24WYK8H', 'Edmund E Rugambwa make transaction of Tsh 101 with code number 4YMP24WYK8H at 2021-04-28,16:17:28.384Z', 1, '2021-04-28 16:17:28'),
(124, 756739238, '1D2PPD85KMY', 'Edmund E Rugambwa make transaction of Tsh 101 with code number 1D2PPD85KMY at 2021-04-28,16:17:31.043Z', 1, '2021-04-28 16:17:31'),
(125, 756739238, '8K1MCY8T2XY', 'Edmund E Rugambwa make transaction of Tsh 101 with code number 8K1MCY8T2XY at 2021-04-28,16:17:49.650Z', 1, '2021-04-28 16:17:49'),
(126, 756739238, 'RTEKRPPCDPW', 'Edmund E Rugambwa make transaction of Tsh 101 with code number RTEKRPPCDPW at 2021-04-28,16:17:50.439Z', 1, '2021-04-28 16:17:50'),
(127, 756739238, '1PUYXHWM2DR', 'Edmund E Rugambwa make transaction of Tsh 101 with code number 1PUYXHWM2DR at 2021-04-28,16:18:09.103Z', 1, '2021-04-28 16:18:09'),
(128, 756739238, '8DXTUKPMWPX', 'Edmund E Rugambwa make transaction of Tsh 101 with code number 8DXTUKPMWPX at 2021-04-28,16:18:09.630Z', 1, '2021-04-28 16:18:09'),
(129, 756739238, 'XHY0HP481DE', 'Edmund E Rugambwa make transaction of Tsh 101 with code number XHY0HP481DE at 2021-04-28,16:22:35.763Z', 1, '2021-04-28 16:22:35'),
(130, 756739238, '204MR2X2YYE', 'Edmund E Rugambwa make transaction of Tsh 101 with code number 204MR2X2YYE at 2021-04-28,16:22:35.764Z', 1, '2021-04-28 16:22:35'),
(131, 756739238, 'YE0HER25PUW', 'Edmund E Rugambwa make transaction of Tsh 101 with code number YE0HER25PUW at 2021-04-28,16:22:35.814Z', 1, '2021-04-28 16:22:35'),
(132, 756739238, '42Y5CP8M1M5', 'Edmund E Rugambwa make transaction of Tsh 101 with code number 42Y5CP8M1M5 at 2021-05-02,21:05:07.976Z', 1, '2021-05-02 21:05:07'),
(133, 756739238, 'TWKU1UHH108', 'Edmund E Rugambwa make transaction of Tsh 101 with code number TWKU1UHH108 at 2021-05-02,21:26:44.725Z', 1, '2021-05-02 21:26:44'),
(134, 756739238, 'KD0YE1RKTRD', 'Edmund E Rugambwa make transaction of Tsh 101 with code number KD0YE1RKTRD at 2021-05-02,21:28:09.519Z', 1, '2021-05-02 21:28:09'),
(135, 756739238, 'WP4PKEMMX28', 'Edmund E Rugambwa make transaction of Tsh 101 with code number WP4PKEMMX28 at 2021-05-02,21:29:53.641Z', 1, '2021-05-02 21:29:53'),
(136, 756739238, 'W0T80X5RMHM', 'Edmund E Rugambwa make transaction of Tsh 101 with code number W0T80X5RMHM at 2021-05-02,21:34:31.686Z', 1, '2021-05-02 21:34:31'),
(137, 756739238, 'YHYU8C41YP8', 'Edmund E Rugambwa make transaction of Tsh 28280 with code number YHYU8C41YP8 at 2021-05-02,21:36:48.394Z', 1, '2021-05-02 21:36:48'),
(138, 756739238, '8C1Y48Y0055', 'Edmund E Rugambwa make transaction of Tsh 28280 with code number 8C1Y48Y0055 at 2021-05-02,21:43:13.437Z', 1, '2021-05-02 21:43:13'),
(139, 763904641, '0CPH24EPYP2', 'Revina Twaha make transaction of Tsh 28280 with code number 0CPH24EPYP2 at 2021-05-02,21:47:46.195Z', 1, '2021-05-02 21:47:46'),
(140, 763904641, 'EE48CKYRK8E', 'Revina Twaha make transaction of Tsh 28280 with code number EE48CKYRK8E at 2021-05-05,10:30:50.877Z', 1, '2021-05-05 10:30:50'),
(141, 744004897, 'NO CODE', 'Deogratias Alison with phone number 744004897 \n            of account owner Deogratias Alison try to make transaction of Tsh 28280 at 2021-05-10, \n            it did not success due to inseficient balance', 0, '2021-05-10 04:35:16'),
(142, 744004897, 'WK2PC58515Y', 'Deogratias Alison make transaction of Tsh 28280 with code number WK2PC58515Y at 2021-05-10,04:37:15.709Z', 1, '2021-05-10 04:37:15'),
(143, 744004897, '55T1HXM01E0', 'Deogratias Alison make transaction of Tsh 28280 with code number 55T1HXM01E0 at 2021-05-10,04:41:09.216Z', 1, '2021-05-10 04:41:09');

-- --------------------------------------------------------

--
-- Table structure for table `user_account`
--

CREATE TABLE `user_account` (
  `phoneNumber` int(10) NOT NULL,
  `firstName` varchar(25) NOT NULL,
  `middleName` varchar(25) DEFAULT NULL,
  `surName` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(900) DEFAULT NULL,
  `balance` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_account`
--

INSERT INTO `user_account` (`phoneNumber`, `firstName`, `middleName`, `surName`, `email`, `password`, `balance`) VALUES
(744004897, 'Deogratias', NULL, 'Alison', 'deo@gmail.com', '2607', 1308),
(756739238, 'Edmund', 'E', 'Rugambwa', 'rugambwa@gmail.com', '1234', 9310),
(763904641, 'Revina', NULL, 'Twaha', 'revina@gmail.com', '4321', 43440);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction_log`
--
ALTER TABLE `transaction_log`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `user_account`
--
ALTER TABLE `user_account`
  ADD PRIMARY KEY (`phoneNumber`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction_log`
--
ALTER TABLE `transaction_log`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transaction_log`
--
ALTER TABLE `transaction_log`
  ADD CONSTRAINT `transaction_log_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user_account` (`phoneNumber`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
