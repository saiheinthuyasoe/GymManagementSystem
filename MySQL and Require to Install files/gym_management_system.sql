-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2023 at 09:20 AM
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
-- Database: `gym_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`) VALUES
(1, 'admin', '123');

-- --------------------------------------------------------

--
-- Table structure for table `machine_table`
--

CREATE TABLE `machine_table` (
  `McID` int(11) NOT NULL,
  `McName` varchar(50) NOT NULL,
  `McBrand` varchar(50) NOT NULL,
  `McWeightCapacity` varchar(50) NOT NULL,
  `McModel` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `member_table`
--

CREATE TABLE `member_table` (
  `MID` int(11) NOT NULL,
  `MName` varchar(50) NOT NULL,
  `MAge` int(11) NOT NULL,
  `MGender` varchar(10) NOT NULL,
  `MTiming` varchar(20) NOT NULL,
  `MPhoneNumber` varchar(20) NOT NULL,
  `MTrainer` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_table`
--

CREATE TABLE `payment_table` (
  `PID` int(11) NOT NULL,
  `PMember` varchar(50) NOT NULL,
  `PAmount` int(11) NOT NULL,
  `PDate` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `report_table`
--

CREATE TABLE `report_table` (
  `RID` int(11) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `Feedback` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trainer_table`
--

CREATE TABLE `trainer_table` (
  `TID` int(11) NOT NULL,
  `TName` varchar(50) NOT NULL,
  `TAge` int(11) NOT NULL,
  `TGender` varchar(10) NOT NULL,
  `TAddress` varchar(500) NOT NULL,
  `TPhoneNumber` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `machine_table`
--
ALTER TABLE `machine_table`
  ADD PRIMARY KEY (`McID`);

--
-- Indexes for table `member_table`
--
ALTER TABLE `member_table`
  ADD PRIMARY KEY (`MID`);

--
-- Indexes for table `trainer_table`
--
ALTER TABLE `trainer_table`
  ADD PRIMARY KEY (`TID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
