-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 28, 2018 at 03:48 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id1382631_cmsnitc17`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adName` varchar(44) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `email` varchar(250) NOT NULL,
  `contact` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adName`, `pass`, `email`, `contact`) VALUES
('admin', 'admin', 'admin@gmail.com', '2222222222');

-- --------------------------------------------------------

--
-- Table structure for table `caretaker`
--

CREATE TABLE `caretaker` (
  `tid` int(9) NOT NULL,
  `name` varchar(50) NOT NULL,
  `ctype` varchar(25) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `address` varchar(250) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='caretaker';

--
-- Dumping data for table `caretaker`
--

INSERT INTO `caretaker` (`tid`, `name`, `ctype`, `contact`, `address`, `email`, `password`) VALUES
(2, 'bhalu', 'MESS', '7454948749', '22-a ramasharam colony, loco shed moradabad', 'bhalu@kiet.edu', 'bhalu'),
(1, 'Shivansh Mishra', 'HOSTEL', '7454948749', 'J-166, Patel Nagar -Ist', 'ecell@kiet.edu', 'aliabhatt');

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `cid` int(6) NOT NULL,
  `description` varchar(400) NOT NULL,
  `sid` varchar(15) NOT NULL,
  `type` varchar(25) NOT NULL,
  `SEmail` varchar(250) NOT NULL,
  `status` varchar(15) NOT NULL,
  `Cby` varchar(25) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`cid`, `description`, `sid`, `type`, `SEmail`, `status`, `Cby`, `date`) VALUES
(123506, 'mess closed 28 april please extends the date...', 'm140361ca', 'Hostel', 'ajay_m140361ca@nitc.ac.in', 'approved', 'ajay', '2017-05-09 11:50:29'),
(123507, 'food quality', 'M140361CA', 'Mess', 'shivansh.1631145@kiet.edu', 'approved', 'Shivansh Mishra', '2018-09-24 20:45:00'),
(123508, 'nhi padna aur', '1620cs113', 'Acedemic', 'ritik.1610129@kiet.edu', '', 'mayank', '2018-09-25 13:25:13');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `fid` int(25) NOT NULL,
  `sid` varchar(25) NOT NULL,
  `name` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`fid`, `sid`, `name`, `email`, `description`) VALUES
(5093, 'M140361CA', 'ajay', 'ajay_m140361ca@nitc.ac.in', 'system working propery'),
(7688, '1620cs1126', 'RITIK VERMA', 'ritik.1610129@kiet.edu', 'lovely platform');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `rollno` varchar(10) NOT NULL,
  `name` varchar(66) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `email` varchar(250) NOT NULL,
  `hostel` varchar(10) NOT NULL,
  `course` varchar(30) NOT NULL,
  `password` varchar(25) DEFAULT NULL,
  `active` char(1) NOT NULL DEFAULT 'y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`rollno`, `name`, `contact`, `email`, `hostel`, `course`, `password`, `active`) VALUES
('1620cs1126', 'RITIK VERMA', '7454948749', 'ritik.1610129@kiet.edu', 'muskan', 'btech', 'ritik', 'y'),
('1620it1171', 'testing', '7454948749', 'testing@kiet.edu', 'tagore', 'mca', 'testing', 'y');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `caretaker`
--
ALTER TABLE `caretaker`
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `tid` (`tid`);

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `Cby` (`Cby`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`rollno`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `caretaker`
--
ALTER TABLE `caretaker`
  MODIFY `tid` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `cid` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123509;
--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `fid` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7689;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
