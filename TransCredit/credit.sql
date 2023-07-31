-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2019 at 10:39 AM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `credit`
--

-- --------------------------------------------------------

--
-- Table structure for table `transfer_table`
--

CREATE TABLE `transfer_table` (
  `Id` int(11) NOT NULL,
  `Transfer_from` varchar(100) NOT NULL,
  `Transfer_to` varchar(100) NOT NULL,
  `Transfer_amount` int(50) NOT NULL,
  `Transfer_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transfer_table`
--

INSERT INTO `transfer_table` (`Id`, `Transfer_from`, `Transfer_to`, `Transfer_amount`, `Transfer_time`) VALUES
(1, 'Priyanka Sharma', 'Sayan Chandra', 50, '2019-06-26 02:08:35'),
(2, 'Sayan Chandra', 'Priyanka Sharma', 40, '2019-06-29 00:06:48'),
(3, 'Priyanka Sharma', 'Sayan Chandra', 70, '2019-06-29 00:26:47'),
(4, 'Priyanka Sharma', 'Sayan Chandra', 30, '2019-06-29 00:27:49'),
(5, 'Sayan Chandra', 'Priyanka Sharma', 65, '2019-06-29 00:44:35'),
(6, 'Priyanka Sharma', 'Sayan Chandra', 10, '2019-06-29 01:04:45'),
(7, 'Sayan Chandra', 'Priyanka Sharma', 40, '2019-06-29 12:52:07'),
(8, 'Sayan Chandra', 'Priyanka Sharma', 50, '2019-06-29 13:12:53'),
(9, 'Priyanka Sharma', 'Sayan Chandra', 45, '2019-06-29 13:15:23'),
(10, 'Priyanka Sharma', 'Sayan Chandra', 45, '2019-06-29 13:21:11'),
(11, 'Sayan Chandra', 'Priyanka Sharma', 50, '2019-06-29 13:21:50'),
(12, 'Priyanka Sharma', 'Sayan Chandra', 45, '2019-06-29 13:22:35'),
(13, 'Priyanka Sharma', 'Sayan Chandra', 45, '2019-06-29 13:22:48'),
(14, 'Priyanka Sharma', 'Sayan Chandra', 45, '2019-06-29 13:25:26'),
(15, 'Priyanka Sharma', 'Gopinath Mishra', 47, '2019-06-29 13:25:36'),
(16, 'Priyanka Sharma', 'Gopinath Mishra', 47, '2019-06-29 13:25:52'),
(17, 'Sayan Chandra', 'Gopinath Mishra', 70, '2019-06-29 13:27:45'),
(18, 'Gopinath Mishra', 'Priyanka Sharma', 78, '2019-06-29 13:31:37'),
(19, 'Gopinath Mishra', 'Priyanka Sharma', 78, '2019-06-29 13:32:48'),
(20, 'Sayan Chandra', 'Gopinath Mishra', 40, '2019-06-29 13:57:59'),
(21, 'Priyanka Sharma', 'Gopinath Mishra', 60, '2019-06-29 13:59:10'),
(22, 'Gopinath Mishra', 'Sayan Chandra', 50, '2019-06-29 14:38:20'),
(23, 'Priyanka Sharma', 'Gopinath Mishra', 70, '2019-07-02 12:55:20'),
(24, 'Priyanka Sharma', 'Sayan Chandra', 780, '2019-07-02 13:31:00'),
(25, 'Priyanka Sharma', 'Gopinath Mishra', 50, '2019-07-02 13:32:53'),
(26, 'Priyanka Sharma', 'Gopinath Mishra', 50, '2019-07-02 13:33:17'),
(27, 'Volanath Pandya', 'Priyanka Sharma', 50, '2019-07-02 16:26:45'),
(28, 'Rajesh Sharma', 'Sudip Chandra', 90, '2019-07-03 12:04:03'),
(29, 'Priyanka Sharma', 'Volanath Pandya', 100, '2019-07-03 14:58:55'),
(30, 'Sayan Chandra', 'Rajesh Sharma', 70, '2019-07-03 14:59:05'),
(31, 'Priyanka Sharma', 'Volanath Pandya', 95, '2019-07-03 15:00:04'),
(32, 'Priyanka Sharma', 'Rajesh Sharma', 900, '2019-07-03 15:10:52'),
(33, 'Gopinath Mishra', 'Rahul Mallick', 90, '2019-07-04 05:23:18'),
(34, 'Sayan Chandra', 'Volanath Pandya', 1200, '2019-07-04 05:24:13'),
(35, 'Sayan Chandra', 'Priyanka Sharma', 1, '2019-07-04 05:35:48'),
(36, 'Sayan Chandra', 'Priyanka Sharma', 1, '2019-07-04 05:39:42'),
(37, '6', '1', 12, '2019-07-04 05:56:07'),
(38, '1', '3', 1000, '2019-07-04 05:57:11'),
(39, '1', '4', 0, '2019-07-04 05:57:27'),
(40, '', '', 1, '2019-07-04 06:05:31'),
(41, 'Sudip Chandra', 'Rahul Mallick', 500, '2019-07-04 06:07:34'),
(42, 'Sanu Kumar', 'Sarthak Harh', 700, '2019-07-04 06:29:24');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Id` int(4) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Phoneno` varchar(255) NOT NULL,
  `Current_Credit` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Id`, `Name`, `Email`, `Phoneno`, `Current_Credit`) VALUES
(1, 'Priyanka Sharma', 'priyanka@gmail.com', '9532550272', 469),
(2, 'Sayan Chandra', 'sayan@gmail.com', '9055647889', -242),
(3, 'Gopinath Mishra', 'gopinath.gopi@ggmail.com', '9566324578', 1289),
(4, 'Volanath Pandya', 'Volanath.vola@gmail.com', '9088562486', 1845),
(5, 'Rajesh Sharma', 'Rajesh212@gmail.com', '9855223545', 1582),
(6, 'Manish Kumar', 'Manish@gmail.com', '9854585632', 588),
(7, 'Sudip Chandra', 'Sudip@gmail.com', '9756245863', 90),
(8, 'Rahul Mallick', 'MAllick2@gmail.com', '9845465554', 1090),
(9, 'Sarthak Harh', 'Sarthak@gmail.com', '9031563259', 1401),
(10, 'Akash Pandya', 'Akash1993@gmail.com', '9844556321', 700),
(11, 'Sanu Kumar', 'Sanu.kumar@gmail.com', '9854596287', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transfer_table`
--
ALTER TABLE `transfer_table`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transfer_table`
--
ALTER TABLE `transfer_table`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
