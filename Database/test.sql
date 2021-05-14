-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2021 at 06:15 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `projectmanagementservice`
--

CREATE TABLE `projectmanagementservice` (
  `ID` int(20) NOT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `Description` varchar(30) DEFAULT NULL,
  `Language` varchar(20) DEFAULT NULL,
  `Developername` varchar(20) DEFAULT NULL,
  `Price` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projectmanagementservice`
--

INSERT INTO `projectmanagementservice` (`ID`, `Name`, `Description`, `Language`, `Developername`, `Price`) VALUES
(2, 'JAVA+Project', 'This+is+a+java+project', 'Java', 'Anojan', 2000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `projectmanagementservice`
--
ALTER TABLE `projectmanagementservice`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `projectmanagementservice`
--
ALTER TABLE `projectmanagementservice`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
