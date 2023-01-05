-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 05, 2023 at 05:35 AM
-- Server version: 5.7.39
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mannerings`
--

-- --------------------------------------------------------

--
-- Table structure for table `houses`
--

CREATE TABLE `houses` (
  `REFNO` int(11) NOT NULL,
  `TOWN` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `TYPE` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `REDROOMS` int(11) NOT NULL,
  `PRICE` float NOT NULL,
  `HEATING` varchar(10) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `GARAGE` varchar(10) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `houses`
--

INSERT INTO `houses` (`REFNO`, `TOWN`, `TYPE`, `REDROOMS`, `PRICE`, `HEATING`, `GARAGE`) VALUES
(13678, 'Croydon', 'Detached', 4, 250000, 'Yes', 'Double'),
(13679, 'Croydon', 'Semi-Detached', 3, 165000, 'No', 'Single'),
(13700, 'Redhill', 'Flat', 2, 110000, 'Yes', 'None'),
(13702, 'Crawley', 'Detached', 4, 220000, 'Yes', 'Double'),
(13703, 'Crawley', 'Semi-Detached', 4, 145000, 'Yes', 'Single'),
(13705, 'Croydon', 'Terrace', 3, 95000, 'No', 'None'),
(13708, 'Brighton', 'Terrace', 3, 150000, 'Yes', 'None'),
(13709, 'Redhill', 'Detached', 3, 165000, 'Yes', 'Single'),
(13711, 'Crawley', 'Detached', 3, 175000, 'Yes', 'Double'),
(13712, 'Brighton', 'Flat', 2, 75000, 'Yes', 'None');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`REFNO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
