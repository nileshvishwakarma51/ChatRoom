-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2020 at 07:14 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chatroom`
--

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE `friends` (
  `senderUserName` varchar(50) NOT NULL,
  `recieverUserName` varchar(50) NOT NULL,
  `senderStatus` varchar(50) NOT NULL,
  `recieverStatus` varchar(50) DEFAULT 'wait'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`senderUserName`, `recieverUserName`, `senderStatus`, `recieverStatus`) VALUES
('prajwal123', 'lucky123', 'sent', 'wait'),
('prajwal123', 'nilesh123', 'sent', 'wait'),
('prajwal123', 'nilesh123', 'sent', 'wait'),
('prajwal123', 'nayan123', 'sent', 'wait'),
('prajwal123', 'lucky123', 'sent', 'wait'),
('prajwal123', 'nayan123', 'sent', 'wait'),
('nayan123', 'prajwal123', 'sent', 'wait'),
('nilesh123', 'nayan123', 'sent', 'wait'),
('nilesh123', 'nilesh123', 'sent', 'wait');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `sender` varchar(50) NOT NULL,
  `receiver` varchar(50) NOT NULL,
  `msg` longtext NOT NULL,
  `time` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `userName` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `userName`, `email`, `password`) VALUES
(1, 'prajwal', 'patil', 'prajwal123', 'patilprajwal982@gmail.com', '123'),
(2, 'nayan', 'sontiya', 'nayan123', 'nayan@gmail.com', '123'),
(3, 'nilesh', 'vishwa', 'nilesh123', 'nilesh@gmail.com', '123'),
(4, 'lucky', 'rathore', 'lucky123', 'lucky@gmail.com', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `userName` (`userName`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
