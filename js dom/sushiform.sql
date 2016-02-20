-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Dec 13, 2015 at 09:48 PM
-- Server version: 5.5.42
-- PHP Version: 5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sushiform`
--

-- --------------------------------------------------------

--
-- Table structure for table `sushiform`
--

CREATE TABLE `sushiform` (
  `id` int(10) NOT NULL,
  `fn` text COLLATE latin1_general_ci NOT NULL,
  `ln` text COLLATE latin1_general_ci NOT NULL,
  `pn` varchar(11) COLLATE latin1_general_ci NOT NULL,
  `e` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `comment` text COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `sushiform`
--

INSERT INTO `sushiform` (`id`, `fn`, `ln`, `pn`, `e`, `comment`) VALUES
(0, 'First Name:sdfgsdg', 'Last Name:', 'Phone Numbe', 'Email:', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
