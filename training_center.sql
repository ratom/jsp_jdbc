-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 17, 2016 at 11:52 AM
-- Server version: 10.1.8-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `training_center`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_courses`
--

CREATE TABLE `tbl_courses` (
  `id` int(11) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `course_description` text NOT NULL,
  `fees` decimal(12,2) NOT NULL,
  `duration` int(11) NOT NULL,
  `duration_type` varchar(100) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_courses`
--

INSERT INTO `tbl_courses` (`id`, `course_name`, `course_description`, `fees`, `duration`, `duration_type`, `added_date`, `modified_date`, `status`) VALUES
(1, 'Bachelor of Engineering in IT', 'An engineering study in It', '834000.00', 4, 'years', '2015-12-12 10:37:01', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_enquiries`
--

CREATE TABLE `tbl_enquiries` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact_no` varchar(100) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `message` text NOT NULL,
  `enquiry_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_enquiries`
--

INSERT INTO `tbl_enquiries` (`id`, `first_name`, `last_name`, `email`, `contact_no`, `course_id`, `message`, `enquiry_date`, `is_read`, `parent_id`) VALUES
(1, '', '', '', '', 1, '', '2015-12-27 05:33:12', 0, 0),
(2, 'ramaesh', 'gcc', 'ramesh@gmail.com', '9849699072', 1, 'hey this is atom', '2016-03-01 02:50:24', 0, 0),
(3, 'Rabin Atom', 'Dulal', 'dulalatom@gmail.com', '9849699072', 1, 'plz mail me', '2016-03-01 03:00:23', 0, 0),
(4, '', '', '', '', 1, '', '2016-03-13 16:54:40', 0, 0),
(5, 'rupesh', 'dulal', 'rabin.dulal.11483@ncit.edu.np', '984969525', 1, 'please provide me scholarship', '2016-03-17 10:11:19', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NULL DEFAULT NULL,
  `role` enum('Admin','User') NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_courses`
--
ALTER TABLE `tbl_courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_enquiries`
--
ALTER TABLE `tbl_enquiries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_courses`
--
ALTER TABLE `tbl_courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_enquiries`
--
ALTER TABLE `tbl_enquiries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
