-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2023 at 04:45 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `railway`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `uid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `trn_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `uid`, `phone`, `password`, `trn_date`) VALUES
(1, 'admin', '534396851', '21232f297a57a5a743894a0e4a801fc3', '2021-04-03 10:59:48');

-- --------------------------------------------------------

--
-- Table structure for table `passbooking`
--

CREATE TABLE `passbooking` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `source` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `destination` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `via` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `class` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  `valid_from` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `valid_to` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fare` int(11) NOT NULL,
  `booking_time` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `passgeneration`
--

CREATE TABLE `passgeneration` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ticket_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `source` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `destination` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `via` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `class` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  `valid_from` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `valid_to` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fare` int(11) NOT NULL,
  `booking_time` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `barcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticketbooking`
--

CREATE TABLE `ticketbooking` (
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `source` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `destination` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `via` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `class` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `no_of_ticket` int(11) NOT NULL,
  `fare` int(11) NOT NULL,
  `boarding_time` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `booking_time` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `barcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ticketbooking`
--

INSERT INTO `ticketbooking` (`uid`, `source`, `destination`, `via`, `class`, `type`, `no_of_ticket`, `fare`, `boarding_time`, `booking_time`, `barcode`) VALUES
('test', 'Madinah', 'Makkah', 'none', 2, '1', 2, 0, '2023-11-22T05:44', '2023-11-21 03:45:48', 'RM20231121034548test'),
('test', 'Madinah', 'Makkah', 'none', 1, '1', 1, 0, '2023-12-08T06:04', '2023-11-21 04:05:04', 'RM20231121040504test'),
('test', 'Madinah', 'Makkah', 'none', 1, '1', 1, 0, '2023-12-08T06:04', '2023-11-21 04:05:45', 'RM20231121040545test');

-- --------------------------------------------------------

--
-- Table structure for table `ticketgeneration`
--

CREATE TABLE `ticketgeneration` (
  `ticket_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `source` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `destination` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `class` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `no_of_ticket` int(11) NOT NULL,
  `fare` int(11) NOT NULL,
  `boarding_time` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `booking_time` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `barcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `uid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `trn_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `uid`, `phone`, `password`, `trn_date`) VALUES
(1, 'test', '1234567890', 'da866cabf093419a02d56b080e03072f', '2021-04-07 17:20:36'),
(2, 'testing', '056', 'e10adc3949ba59abbe56e057f20f883e', '2023-11-21 03:50:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passgeneration`
--
ALTER TABLE `passgeneration`
  ADD PRIMARY KEY (`barcode`);

--
-- Indexes for table `ticketgeneration`
--
ALTER TABLE `ticketgeneration`
  ADD PRIMARY KEY (`barcode`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
