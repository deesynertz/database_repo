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
-- Database: `deesynlab_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladvatsment`
--

CREATE TABLE `tbladvatsment` (
  `adv_ID` int(11) NOT NULL,
  `cust_ID` int(11) NOT NULL,
  `big_img` varchar(40) NOT NULL,
  `small_img` varchar(40) NOT NULL,
  `pammison` int(11) NOT NULL DEFAULT 0,
  `p_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `admin_id` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblchat_message`
--

CREATE TABLE `tblchat_message` (
  `chat_ID` int(255) NOT NULL,
  `to_user_ID` varchar(13) NOT NULL,
  `from_user_ID` varchar(13) NOT NULL,
  `chat_sms` varchar(900) NOT NULL,
  `status` int(11) NOT NULL,
  `last_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblchat_message`
--

INSERT INTO `tblchat_message` (`chat_ID`, `to_user_ID`, `from_user_ID`, `chat_sms`, `status`, `last_time`) VALUES
(1, '13301284/T.18', '13301197/T.18', 'hih', 0, '2021-09-15 20:30:26'),
(2, '13301197/T.18', '13301284/T.18', 'habr za wee', 0, '2021-09-15 20:31:02'),
(3, '13301284/T.18', '13301197/T.18', 'salama kabisa', 0, '2021-09-15 20:31:14'),
(4, '13301284/T.18', '13301197/T.18', 'vyema kabisa', 0, '2021-09-15 20:31:41'),
(5, '13301284/T.18', '13301197/T.18', 'naomba msaada wa kufungua account', 0, '2021-09-15 20:32:23'),
(6, '13301197/T.18', '13301284/T.18', 'http://localhost/deesynLAB/login', 0, '2021-09-15 20:32:54'),
(7, '13301197/T.18', '13301284/T.18', 'gjhgjhgjhjh', 0, '2021-09-15 20:44:56'),
(8, '13301284/T.18', '13301197/T.18', 'ndiyo', 0, '2021-09-15 20:45:11');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontact`
--

CREATE TABLE `tblcontact` (
  `cont_ID` int(255) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `subject` varchar(20) NOT NULL,
  `sms` varchar(900) NOT NULL,
  `sent_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `reply_date` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontact`
--

INSERT INTO `tblcontact` (`cont_ID`, `name`, `email`, `subject`, `sms`, `sent_date`, `reply_date`) VALUES
(1, 'Alison', 'deo@gmail.com', 'help', 'am looking foward to set from you', '2021-09-21 15:10:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcourse`
--

CREATE TABLE `tblcourse` (
  `ID` int(255) NOT NULL,
  `course_code` varchar(20) NOT NULL,
  `coursename` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomer`
--

CREATE TABLE `tblcustomer` (
  `cust_ID` int(11) NOT NULL,
  `cust_fname` varchar(40) NOT NULL,
  `address` varchar(40) NOT NULL,
  `comp_name` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbleducation`
--

CREATE TABLE `tbleducation` (
  `ed_ID` int(255) NOT NULL,
  `regnumber` varchar(13) NOT NULL,
  `ed_description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbleducation`
--

INSERT INTO `tbleducation` (`ed_ID`, `regnumber`, `ed_description`) VALUES
(1, '13301284/T.18', 'BSc. ITS');

-- --------------------------------------------------------

--
-- Table structure for table `tblfile`
--

CREATE TABLE `tblfile` (
  `fileID` int(20) NOT NULL,
  `filename` varchar(20) NOT NULL,
  `dateUp` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `regnumber` varchar(13) NOT NULL,
  `ID` int(255) NOT NULL,
  `read_in` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblfollow`
--

CREATE TABLE `tblfollow` (
  `follow_ID` int(11) NOT NULL,
  `sender_id` varchar(13) NOT NULL,
  `receiver_id` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblfollow`
--

INSERT INTO `tblfollow` (`follow_ID`, `sender_id`, `receiver_id`) VALUES
(3, '13301284/T.18', '13301197/T.18');

-- --------------------------------------------------------

--
-- Table structure for table `tbllogin_detail`
--

CREATE TABLE `tbllogin_detail` (
  `ID` int(11) NOT NULL,
  `user_ID` varchar(13) NOT NULL,
  `last_activity` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_type` enum('no','yes') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbllogin_detail`
--

INSERT INTO `tbllogin_detail` (`ID`, `user_ID`, `last_activity`, `is_type`) VALUES
(1, '13301284/T.18', '2021-08-02 17:37:00', ''),
(2, '13301284/T.18', '2021-08-02 18:51:19', ''),
(3, '13301284/T.18', '2021-09-15 20:25:08', ''),
(4, '13301284/T.18', '2021-09-15 20:45:33', ''),
(5, '13301197/T.18', '2021-09-15 20:46:10', ''),
(6, '13301284/T.18', '2021-09-16 02:49:48', ''),
(7, '13301197/T.18', '2021-09-16 02:49:35', ''),
(8, '13301284/T.18', '2021-09-21 18:13:53', ''),
(9, '13301284/T.18', '2021-10-07 09:12:37', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `tblprofesional`
--

CREATE TABLE `tblprofesional` (
  `prof_ID` int(100) NOT NULL,
  `prof_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblprofesional`
--

INSERT INTO `tblprofesional` (`prof_ID`, `prof_name`) VALUES
(1, 'Founder & C.E.O'),
(2, 'Chief Manager'),
(3, 'Human Resource(HR)'),
(4, 'Marketing Officer');

-- --------------------------------------------------------

--
-- Table structure for table `tblpro_user`
--

CREATE TABLE `tblpro_user` (
  `ID` int(100) NOT NULL,
  `prof_ID` int(100) NOT NULL,
  `regnumber` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblskills`
--

CREATE TABLE `tblskills` (
  `skill_ID` int(100) NOT NULL,
  `skill_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblskills`
--

INSERT INTO `tblskills` (`skill_ID`, `skill_name`) VALUES
(1, 'UI Designer'),
(2, 'DB Designer'),
(3, 'Graphics  Designer'),
(4, 'Security Designer'),
(5, 'Network Designer'),
(6, 'Programing(coding)');

-- --------------------------------------------------------

--
-- Table structure for table `tblskills_user`
--

CREATE TABLE `tblskills_user` (
  `ID` int(100) NOT NULL,
  `skill_ID` int(100) NOT NULL,
  `regnumber` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `regnumber` varchar(13) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `typeID` int(1) NOT NULL,
  `parmision_status` int(1) NOT NULL DEFAULT 0,
  `location` varchar(100) NOT NULL,
  `regdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`regnumber`, `fname`, `email`, `username`, `password`, `image`, `typeID`, `parmision_status`, `location`, `regdate`) VALUES
('13301197/T.18', 'Thabiti Joshua', 'josh@gmail.com', 'josh', '12345678', 'default.jpg', 2, 1, '', '2021-09-15'),
('13301284/T.18', 'Deogratias ALISON', 'djhcj@gmail.com', 'deesynertz', '12345678', 'default.jpg', 1, 1, 'Yombo Buza', '2021-08-02');

-- --------------------------------------------------------

--
-- Table structure for table `tblusertype`
--

CREATE TABLE `tblusertype` (
  `typeID` int(1) NOT NULL,
  `typename` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusertype`
--

INSERT INTO `tblusertype` (`typeID`, `typename`) VALUES
(1, 'admin'),
(2, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser_file`
--

CREATE TABLE `tbluser_file` (
  `userfile_ID` int(11) NOT NULL,
  `fileID` int(255) NOT NULL,
  `regnumber` varchar(13) NOT NULL,
  `read_in` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladvatsment`
--
ALTER TABLE `tbladvatsment`
  ADD PRIMARY KEY (`adv_ID`,`cust_ID`),
  ADD KEY `tblcustomer_advatsment_cust_ID` (`cust_ID`),
  ADD KEY `tbluser_advatsment_admin_id` (`admin_id`);

--
-- Indexes for table `tblchat_message`
--
ALTER TABLE `tblchat_message`
  ADD PRIMARY KEY (`chat_ID`),
  ADD KEY `tbl_user_message_to` (`to_user_ID`),
  ADD KEY `tbl_user_message_from` (`from_user_ID`);

--
-- Indexes for table `tblcontact`
--
ALTER TABLE `tblcontact`
  ADD PRIMARY KEY (`cont_ID`);

--
-- Indexes for table `tblcourse`
--
ALTER TABLE `tblcourse`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcustomer`
--
ALTER TABLE `tblcustomer`
  ADD PRIMARY KEY (`cust_ID`);

--
-- Indexes for table `tbleducation`
--
ALTER TABLE `tbleducation`
  ADD PRIMARY KEY (`ed_ID`,`regnumber`,`ed_description`),
  ADD KEY `tbl_user_education_regno` (`regnumber`);

--
-- Indexes for table `tblfile`
--
ALTER TABLE `tblfile`
  ADD PRIMARY KEY (`fileID`),
  ADD KEY `tbl_course_user_regno` (`regnumber`),
  ADD KEY `tbl_course_file_id` (`ID`);

--
-- Indexes for table `tblfollow`
--
ALTER TABLE `tblfollow`
  ADD PRIMARY KEY (`follow_ID`),
  ADD KEY `tbluser_follow_sender_id` (`sender_id`),
  ADD KEY `tbluser_follow_receiver_id` (`receiver_id`);

--
-- Indexes for table `tbllogin_detail`
--
ALTER TABLE `tbllogin_detail`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `tbl_user_login_detail_regno` (`user_ID`);

--
-- Indexes for table `tblprofesional`
--
ALTER TABLE `tblprofesional`
  ADD PRIMARY KEY (`prof_ID`);

--
-- Indexes for table `tblpro_user`
--
ALTER TABLE `tblpro_user`
  ADD PRIMARY KEY (`ID`,`prof_ID`,`regnumber`),
  ADD KEY `tbl_profesional_pro_user_ID` (`prof_ID`),
  ADD KEY `tbl_user_pro_user_regno` (`regnumber`);

--
-- Indexes for table `tblskills`
--
ALTER TABLE `tblskills`
  ADD PRIMARY KEY (`skill_ID`);

--
-- Indexes for table `tblskills_user`
--
ALTER TABLE `tblskills_user`
  ADD PRIMARY KEY (`ID`,`skill_ID`,`regnumber`),
  ADD KEY `tbl_user_skills_skill_ID` (`skill_ID`),
  ADD KEY `tbl_user_skills_user_regno` (`regnumber`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`regnumber`),
  ADD KEY `tbl_user_typeid_id` (`typeID`);

--
-- Indexes for table `tblusertype`
--
ALTER TABLE `tblusertype`
  ADD PRIMARY KEY (`typeID`);

--
-- Indexes for table `tbluser_file`
--
ALTER TABLE `tbluser_file`
  ADD PRIMARY KEY (`userfile_ID`,`fileID`,`regnumber`),
  ADD KEY `tbluser_user_file_fileID` (`fileID`),
  ADD KEY `tbluser_user_file_regnumber` (`regnumber`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladvatsment`
--
ALTER TABLE `tbladvatsment`
  MODIFY `adv_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblchat_message`
--
ALTER TABLE `tblchat_message`
  MODIFY `chat_ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblcontact`
--
ALTER TABLE `tblcontact`
  MODIFY `cont_ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcourse`
--
ALTER TABLE `tblcourse`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcustomer`
--
ALTER TABLE `tblcustomer`
  MODIFY `cust_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbleducation`
--
ALTER TABLE `tbleducation`
  MODIFY `ed_ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblfile`
--
ALTER TABLE `tblfile`
  MODIFY `fileID` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblfollow`
--
ALTER TABLE `tblfollow`
  MODIFY `follow_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbllogin_detail`
--
ALTER TABLE `tbllogin_detail`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblprofesional`
--
ALTER TABLE `tblprofesional`
  MODIFY `prof_ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblpro_user`
--
ALTER TABLE `tblpro_user`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblskills`
--
ALTER TABLE `tblskills`
  MODIFY `skill_ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblskills_user`
--
ALTER TABLE `tblskills_user`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblusertype`
--
ALTER TABLE `tblusertype`
  MODIFY `typeID` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbluser_file`
--
ALTER TABLE `tbluser_file`
  MODIFY `userfile_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbladvatsment`
--
ALTER TABLE `tbladvatsment`
  ADD CONSTRAINT `tblcustomer_advatsment_cust_ID` FOREIGN KEY (`cust_ID`) REFERENCES `tblcustomer` (`cust_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbluser_advatsment_admin_id` FOREIGN KEY (`admin_id`) REFERENCES `tbluser` (`regnumber`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tblchat_message`
--
ALTER TABLE `tblchat_message`
  ADD CONSTRAINT `tbl_user_message_from` FOREIGN KEY (`from_user_ID`) REFERENCES `tbluser` (`regnumber`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_user_message_to` FOREIGN KEY (`to_user_ID`) REFERENCES `tbluser` (`regnumber`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbleducation`
--
ALTER TABLE `tbleducation`
  ADD CONSTRAINT `tbl_user_education_regno` FOREIGN KEY (`regnumber`) REFERENCES `tbluser` (`regnumber`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tblfile`
--
ALTER TABLE `tblfile`
  ADD CONSTRAINT `tbl_course_file_id` FOREIGN KEY (`ID`) REFERENCES `tblcourse` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_course_user_regno` FOREIGN KEY (`regnumber`) REFERENCES `tbluser` (`regnumber`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tblfollow`
--
ALTER TABLE `tblfollow`
  ADD CONSTRAINT `tbluser_follow_receiver_id` FOREIGN KEY (`receiver_id`) REFERENCES `tbluser` (`regnumber`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbluser_follow_sender_id` FOREIGN KEY (`sender_id`) REFERENCES `tbluser` (`regnumber`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbllogin_detail`
--
ALTER TABLE `tbllogin_detail`
  ADD CONSTRAINT `tbl_user_login_detail_regno` FOREIGN KEY (`user_ID`) REFERENCES `tbluser` (`regnumber`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tblpro_user`
--
ALTER TABLE `tblpro_user`
  ADD CONSTRAINT `tbl_profesional_pro_user_ID` FOREIGN KEY (`prof_ID`) REFERENCES `tblprofesional` (`prof_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_user_pro_user_regno` FOREIGN KEY (`regnumber`) REFERENCES `tbluser` (`regnumber`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tblskills_user`
--
ALTER TABLE `tblskills_user`
  ADD CONSTRAINT `tbl_user_skills_skill_ID` FOREIGN KEY (`skill_ID`) REFERENCES `tblskills` (`skill_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_user_skills_user_regno` FOREIGN KEY (`regnumber`) REFERENCES `tbluser` (`regnumber`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD CONSTRAINT `tbl_user_typeid_id` FOREIGN KEY (`typeID`) REFERENCES `tblusertype` (`typeID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbluser_file`
--
ALTER TABLE `tbluser_file`
  ADD CONSTRAINT `tbluser_user_file_fileID` FOREIGN KEY (`fileID`) REFERENCES `tblfile` (`fileID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbluser_user_file_regnumber` FOREIGN KEY (`regnumber`) REFERENCES `tbluser` (`regnumber`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
