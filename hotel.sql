-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2018 at 01:05 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(12) NOT NULL,
  `fname` text NOT NULL,
  `lname` text NOT NULL,
  `idPass` varchar(30) NOT NULL,
  `Gender` tinyint(1) NOT NULL,
  `Check_in` datetime(6) NOT NULL,
  `Check_out` datetime(6) NOT NULL,
  `no_adults` int(8) NOT NULL,
  `no_children` int(8) NOT NULL,
  `no_rooms` int(8) NOT NULL,
  `reason` tinyint(1) NOT NULL,
  `timestamp` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `fname`, `lname`, `idPass`, `Gender`, `Check_in`, `Check_out`, `no_adults`, `no_children`, `no_rooms`, `reason`, `timestamp`) VALUES
(1, '', '', '', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 0, 0, 0, '2018-07-09 10:32:10.069416');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(12) NOT NULL,
  `comment` varchar(500) NOT NULL,
  `timestamp` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `comment`, `timestamp`) VALUES
(1, '', '2018-07-04 22:41:18.157044'),
(2, '', '2018-07-04 22:42:35.379959'),
(3, '', '2018-07-04 22:43:25.176850'),
(4, '', '2018-07-04 22:44:05.475304'),
(5, '', '2018-07-05 09:42:59.932762'),
(6, '', '2018-07-05 09:44:41.348017'),
(7, '', '2018-07-05 09:45:49.924088'),
(8, '', '2018-07-09 10:04:10.288525');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `id` int(12) NOT NULL,
  `username` varchar(40) NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `email` varchar(80) NOT NULL,
  `telno` int(15) NOT NULL,
  `idPass` varchar(10) NOT NULL,
  `gender` text NOT NULL,
  `password` varchar(40) NOT NULL,
  `time` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `username`, `firstname`, `lastname`, `email`, `telno`, `idPass`, `gender`, `password`, `time`) VALUES
(1, '101191', 'Mickey', 'Mouse', 'amow5374@gmail.com', 0, '', '0', '0', '2018-06-29 18:59:36.121976'),
(2, '101191', 'Mickey', 'me', 'jerryjeruiyot@gmail.com', 714250272, '36726264', '0', '0', '2018-06-29 19:04:55.152456'),
(3, 'Amow.jerry', 'Mickey', 'Mouse', 'jerryjeruiyot@gmail.com', 714250272, '36726264', '0', '0', '2018-07-04 20:17:26.959957'),
(4, 'allan.bett@strathmore.edu', 'Mickey', 'Mouse', 'jerryjeruiyot@gmail.com', 714250272, '36726264', '0', '0', '2018-07-04 20:21:37.928509'),
(5, 'Amow.jerry', 'Mickey', 'Yoo', 'jerryjeruiyot@gmail.com', 714250272, '36726264', '0', '0', '2018-07-04 20:23:59.927451'),
(6, 'arap mesmes', 'Mickey', 'Yoo', 'jerryjeruiyot@gmail.com', 714250272, '36726264', '0', '0', '2018-07-04 20:24:28.207108'),
(7, 'Debetts', 'Debett', 'Calid', 'debets@gmail.com', 712345678, '222333444', 'on', 'e29f5dc5db8f76f75ae46d1887ae6efe', '2018-07-04 20:29:04.742512'),
(8, 'Debetts', 'Debett', 'Mouse', 'debets@gmail.com', 712345678, '36726264', 'Male', 'a0dab62f8b04cd37c6ecefff01aa84e6', '2018-07-04 20:32:38.534551'),
(9, 'alanito97', 'Alanito', 'Bett', 'alanitobett97@gmail.com', 2147483647, '9012345', 'Female', 'e29f5dc5db8f76f75ae46d1887ae6efe', '2018-07-04 20:45:59.843075'),
(10, 'Amow.jerry', 'Mickey', 'Apple', 'jerryjeruiyot@gmail.com', 714250272, '9012345', 'Female', 'fe60374e15ae5f50e67cf94fed349337', '2018-07-04 22:39:33.030378'),
(11, 'Amow.jerry', 'Mickey', 'Mouse', 'jerryjeruiyot@gmail.com', 712345678, '9012345', 'Male', 'bd462d5d7e7d5f8416515c6b0f3ed640', '2018-07-05 07:26:48.497619'),
(12, 'Debetts', 'Debetts', 'Yoo', 'amow5374@gmail.com', 714250272, '36726264', 'Male', 'e29f5dc5db8f76f75ae46d1887ae6efe', '2018-07-05 07:39:07.714882');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
