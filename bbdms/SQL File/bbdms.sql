-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2024 at 05:14 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bbdms`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 9876543210, 'admin@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2025-02-27 04:36:52');

-- --------------------------------------------------------

--
-- Table structure for table `tblblooddonars`
--

CREATE TABLE `tblblooddonars` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Gender` varchar(20) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `BloodGroup` varchar(20) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(1) DEFAULT NULL,
  `Password` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblblooddonars`
--

-- --------------------------------------------------------


INSERT INTO `tblblooddonars`  (`id`,	`FullName`,	`MobileNumber`,	`EmailId`,	`Gender`	,`Age`	,`BloodGroup`	,`Address`,	`Message` ,	`PostingDate`,	`status`,	`Password`) VALUES	
(14,	'Anjali',	'9807564321' ,	'anjali12@gmail.com' ,	'Female' ,	22 ,	'O+' ,	'At-Maharastra' ,	 'Save Lives, Donate Blood' ,	'2025-02-27 16:05:31' ,	1,	'12ed51686a83dff335014f5960cf94a4'	),
(15,	'Shreyank',	'8855647690' ,	'shreyank@gmail.com' ,	'Male' ,	23 ,	'O-' ,	'At- Pune' ,	 'Be a Hero, Donate Blood' ,	'2025-02-27 16:07:20' ,	1,	'd05b1c6431d44edfc0e406abcaab4fdd'	),
(16,	'Rahi',	'9976480572' ,	'rahi72@gmail.com' ,	'Male' ,	24 ,	'A+' ,	'At- Jamshedpur' ,	 'The best gift you can give is the gift of life' ,	'2025-02-27 16:08:39' ,	1	,'51600fb1b6327d1c15d688ecab9d76de'	),
(17,	'Pushpa',	'9876543210' ,	'pushpa234@gmail.com' ,	'Female' ,	22 ,	'A-' ,	'At- Manoharpur' ,	 'Donate Blood, Be a Lifeline' ,	'2025-02-27 16:10:01' ,	1,	'4fabd1a9048486c0dd4e9ef91197e1a3'	),
(18,	'Anuj',	'9974583421' ,	'anuj123@gmail.com',	'Male' ,	27 ,	'B+' ,	'At- Kolkata'	, 'Blood Donation: A Simple Act, A Big Impact' ,	'2025-02-27 16:11:47' ,	1,	'c482e3014f9b268c6d953a0fb0df6cc6'	),
(19,	'Aarti',	'9976480572' ,	'aarti@gmail.com' ,	'Female' ,	25 ,	'B-' ,	'At- Indore'	, 'Donate Blood, Inspire Others' ,	'2025-02-27 16:13:15' ,	1,	'4542e4c233f26b4faf6b5f3fed24280c'	),
(20,	'Katha',	'9933536768' ,	'katha12@gmail.com' ,	'Female' ,	27 ,	'AB+' ,	'At- Delhi' ,	 'Love knows no bounds. Share your love by donating...' ,	'2025-02-27 16:22:23' ,	1,	'c94ed04e8d2104bce9a68bb1a0572bd7'	),
(21,	'Mohak',	'8854902578 ',	'mohak1@gmail.com' ,	'Male' ,	25 ,	'AB-' ,	'At- Punjab' ,	 'One pint of blood can save up to 3 lives. Donate ...' ,	'2025-02-27 16:24:23' ,	1,	'8e002529815cf0fa1f75242a720fde02'),	
(22,	'Neha',	'8764888726' ,	'neha@gmail.com' ,	'Female' ,	23 ,	'O+' ,	'At- Bihar' ,	 'Just donate blood and give someone a second chanc...' ,	'2025-02-27 16:26:41' ,	1	, '262f5bdd0af9098e7443ab1f8e435290'	 );




--
-- Table structure for table `tblbloodgroup`
--

CREATE TABLE `tblbloodgroup` (
  `id` int(11) NOT NULL,
  `BloodGroup` varchar(20) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbloodgroup`
--

INSERT INTO `tblbloodgroup` (`id`, `BloodGroup`, `PostingDate`) VALUES
(1, 'O+', '2025-02-27 15:57:13	'),
(2, 'o-', '2025-02-27 15:57:22'),
(3, 'A+', '2025-02-27 15:57:26	'),
(4, 'A-', '2025-02-27 15:57:30	'),
(5, 'B+', '2025-02-27 15:57:35	'),
(6, 'B-', '2025-02-27 15:57:39	');
(7, 'AB+', '2025-02-27 15:58:04');
(8, 'AB-', '2025-02-27 15:58:09');

-- --------------------------------------------------------




-- Table structure for table `tblbloodrequirer`
--

CREATE TABLE `tblbloodrequirer` (
  `ID` int(10) NOT NULL,
  `BloodDonarID` int(10) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `EmailId` varchar(250) DEFAULT NULL,
  `ContactNumber` bigint(10) DEFAULT NULL,
  `BloodRequirefor` varchar(250) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `ApplyDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbloodrequirer`
--

INSERT INTO `tblbloodrequirer` (`ID`, `BloodDonarID`, `name`, `EmailId`, `ContactNumber`, `BloodRequirefor`, `Message`, `ApplyDate`) VALUES
(6, 14, 'Soni', 'soni@gmail.com', 9863426809 , 'Sister', 'Please donate blood for my sister', '2025-02-27 19:35:07'),
(9, 15, 'Naveen', 'naveen@gmail.com',8866453206 , 'Father', 'Please donate blood for my father', '2025-02-27 19:45:34	'),
(10, 18, 'Mohan', 'mohan@gmail.com', 9966704590, 'Mother', 'Donate your blood and save my mother`s life.', '2025-02-27 19:47:46'),
(11, 18, 'Priya', 'priya@gmail.com', 8847823879, 'Brother', 'I really need blood for my brother, please donate ', '2025-02-27 19:50:08');


-- --------------------------------------------------------


--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'At- Jamshedpur', 'pushpa@gmail.com', '8585233222');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(2, 'Why Become Donor', 'donor', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Become a donor because every drop of blood counts and every donor makes a difference.</span>'),
(3, 'About Us ', 'aboutus', '<div style=\"text-align: justify;\"><span style=\"font-size: 1em; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Welcome to the blood bank donor management system. We are a dedicated Blood Bank and Donor Management System committed to saving lives by connecting donors with those in need. Our mission is to ensure that no one suffers due to a lack of blood by maintaining a reliable and efficient platform for blood donation.We provide all blood groups (A+, A-, B+, B-, O+, O-, AB+, AB-) to hospitals, patients, and emergency services. Our system manages a vast network of voluntary donors, ensuring that blood is available whenever and wherever it is needed.
</span></div>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblblooddonars`
--
ALTER TABLE `tblblooddonars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bgroup` (`BloodGroup`);

--
-- Indexes for table `tblbloodgroup`
--
ALTER TABLE `tblbloodgroup`
  ADD PRIMARY KEY (`id`),
  ADD KEY `BloodGroup` (`BloodGroup`),
  ADD KEY `BloodGroup_2` (`BloodGroup`);

--
-- Indexes for table `tblbloodrequirer`
--
ALTER TABLE `tblbloodrequirer`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `donorid` (`BloodDonarID`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblblooddonars`
--
ALTER TABLE `tblblooddonars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblbloodgroup`
--
ALTER TABLE `tblbloodgroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblbloodrequirer`
--
ALTER TABLE `tblbloodrequirer`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
