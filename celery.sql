-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2020 at 09:37 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `celery`
--

-- --------------------------------------------------------

--
-- Table structure for table `ctable`
--

CREATE TABLE `ctable` (
  `EmpID` int(255) NOT NULL,
  `EmpFname` varchar(255) NOT NULL,
  `EmpLname` varchar(255) NOT NULL,
  `EmpRank` int(255) NOT NULL,
  `Position` varchar(225) NOT NULL,
  `Department` varchar(225) NOT NULL,
  `Salary` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ctable`
--

INSERT INTO `ctable` (`EmpID`, `EmpFname`, `EmpLname`, `EmpRank`, `Position`, `Department`, `Salary`) VALUES
(1, 'Jeanjames', 'Canares', 1, 'Dafkunt', 'haduken', 25000);

-- --------------------------------------------------------

--
-- Table structure for table `fctable`
--

CREATE TABLE `fctable` (
  `id` int(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `rank` int(255) NOT NULL,
  `pos` varchar(225) NOT NULL,
  `dep` varchar(225) NOT NULL,
  `sal` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fctable`
--

INSERT INTO `fctable` (`id`, `fname`, `lname`, `rank`, `pos`, `dep`, `sal`) VALUES
(1, 'asd', 'dsa', 2, 'ss', 'dd', 15000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ctable`
--
ALTER TABLE `ctable`
  ADD PRIMARY KEY (`EmpID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ctable`
--
ALTER TABLE `ctable`
  MODIFY `EmpID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
