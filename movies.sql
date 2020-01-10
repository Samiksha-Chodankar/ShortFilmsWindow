-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 06, 2020 at 07:01 AM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movies`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(11) NOT NULL,
  `Ad_password` varchar(255) NOT NULL,
  PRIMARY KEY (`Ad_password`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `Ad_password`) VALUES
(1, 'abc');

-- --------------------------------------------------------

--
-- Table structure for table `director`
--

DROP TABLE IF EXISTS `director`;
CREATE TABLE IF NOT EXISTS `director` (
  `Director_Name` varchar(255) DEFAULT NULL,
  `Director_Id` int(11) NOT NULL,
  PRIMARY KEY (`Director_Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `director`
--

INSERT INTO `director` (`Director_Name`, `Director_Id`) VALUES
('Karan Johar', 1),
('Yash Chopra', 2),
('Rohit Shetty', 3),
('Ram Gopal Verma', 4),
('Christopher Nolan', 5),
('Prakash Kunte', 6);

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
CREATE TABLE IF NOT EXISTS `genre` (
  `Genre_Name` varchar(255) DEFAULT NULL,
  `Genre_Id` int(11) NOT NULL,
  PRIMARY KEY (`Genre_Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`Genre_Name`, `Genre_Id`) VALUES
('Romance', 1),
('Comedy', 2),
('Action', 3),
('Horror', 4),
('Thriller', 5);

-- --------------------------------------------------------

--
-- Table structure for table `lang`
--

DROP TABLE IF EXISTS `lang`;
CREATE TABLE IF NOT EXISTS `lang` (
  `Language_Name` varchar(255) DEFAULT NULL,
  `Language_Id` int(11) NOT NULL,
  PRIMARY KEY (`Language_Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lang`
--

INSERT INTO `lang` (`Language_Name`, `Language_Id`) VALUES
('English', 1),
('Hindi', 2),
('Marathi', 3);

-- --------------------------------------------------------

--
-- Table structure for table `shortfilm`
--

DROP TABLE IF EXISTS `shortfilm`;
CREATE TABLE IF NOT EXISTS `shortfilm` (
  `Movie_Name` varchar(255) DEFAULT NULL,
  `Likes` int(255) DEFAULT NULL,
  `Views` int(255) DEFAULT NULL,
  `Movie_Id` int(11) NOT NULL,
  `Director_Id` int(11) DEFAULT NULL,
  `Genre_Id` int(11) DEFAULT NULL,
  `Duration` varchar(255) DEFAULT NULL,
  `Language_Id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Movie_Id`),
  KEY `dir_id` (`Director_Id`),
  KEY `genre_id` (`Genre_Id`),
  KEY `lang_id` (`Language_Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shortfilm`
--

INSERT INTO `shortfilm` (`Movie_Name`, `Likes`, `Views`, `Movie_Id`, `Director_Id`, `Genre_Id`, `Duration`, `Language_Id`) VALUES
('Student of the year', 150, 2000, 1001, 1, 1, '2hr 40min', 2),
('Singham', 150, 2000, 1002, 3, 3, '2hr 15min', 2),
('Golmaal', 1980, 2090, 1003, 3, 2, '2hr 25min', 2),
('Phoonk', 200, 2900, 1004, 4, 4, '1hr 30min ', 2),
('Kuch kuch hota hai', 350, 2700, 1005, 1, 1, '3hr', 2),
('Jab tak hai jaan', 150, 2000, 1006, 2, 1, '2hr 35min', 2),
('The Dark Knight', 190, 780, 1007, 5, 5, '1hr 30min', 1),
('Coffee Aani Barach Kahi', 980, 2300, 1008, 6, 1, '2hr 25min', 3);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
