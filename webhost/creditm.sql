-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2019 at 04:31 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.5.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `creditm`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sender` varchar(20) NOT NULL,
  `receiver` varchar(20) NOT NULL,
  `credit` int(20) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sender`, `receiver`, `credit`, `time`) VALUES
('sp@gmail.com', 'sky@gmail.com', 5000, '2019-06-16 01:23:23'),
('sky@gmail.com', 'sp@gmail.com', 5000, '2019-06-16 01:25:58'),
('sky@gmail.com', 'anks@gmail.com', 2999, '2019-07-09 17:35:25'),
('as@gmail.com', 'rp@gmail.com', 1000, '2019-07-09 18:47:14'),
('rp@gmail.com', 'as@gmail.com', 1000, '2019-07-09 18:47:40');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `email` varchar(25) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(7) NOT NULL,
  `credit` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`firstname`, `lastname`, `email`, `dob`, `gender`, `credit`) VALUES
('Ankita', 'Patel', 'anks@gmail.com', '1998-12-21', 'Female', 5000),
('Atharva', 'Rane', 'ar@gmail.com', '1997-07-21', 'Male', 5000),
('Aishwarya', 'Singh', 'as@gmail.com', '2001-03-09', 'Female', 5000),
('Kishan', 'Pandey', 'kp@gmail.com', '2000-07-21', 'Male', 5000),
('Rohit', 'Pandey', 'rp@gmail.com', '1998-01-09', 'Male', 5000),
('Akash', 'Singh', 'sky@gmail.com', '1998-01-04', 'Male', 5000),
('Saurabh', 'Pandey', 'sp@gmail.com', '1998-02-04', 'Male', 5000),
('Saurabh', 'Singh', 'sps23@gmail.com', '2000-01-09', 'Male', 5000),
('Yashesh', 'Oza', 'yashesh@gmail.com', '2000-01-21', 'Male', 5000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`email`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
