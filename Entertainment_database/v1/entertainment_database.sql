-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Oct 28, 2019 at 05:42 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `entertainment_database`
--
CREATE DATABASE IF NOT EXISTS `entertainment_database` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `entertainment_database`;

-- --------------------------------------------------------

--
-- Table structure for table `critic`
--

DROP TABLE IF EXISTS `critic`;
CREATE TABLE IF NOT EXISTS `critic` (
  `cname` varchar(30) NOT NULL,
  `pid` int(5) NOT NULL,
  `rating` decimal(10,2) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `critic`
--

INSERT INTO `critic` (`cname`, `pid`, `rating`) VALUES
('kane', 32, '2.57'),
('abhi', 123, '21.00'),
('abhi', 32321, '21.00');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `cid` int(5) NOT NULL,
  `name` varchar(30) NOT NULL,
  `card_no` int(5) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cid`, `name`, `card_no`) VALUES
(324, 'faffr', 32);

-- --------------------------------------------------------

--
-- Table structure for table `game`
--

DROP TABLE IF EXISTS `game`;
CREATE TABLE IF NOT EXISTS `game` (
  `gid` int(5) NOT NULL,
  `gname` varchar(30) NOT NULL,
  `genre` varchar(15) NOT NULL,
  `developer` varchar(15) NOT NULL,
  `platform` varchar(20) NOT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
CREATE TABLE IF NOT EXISTS `movie` (
  `mid` int(5) NOT NULL,
  `mname` varchar(30) NOT NULL,
  `genre` varchar(15) NOT NULL,
  `director` varchar(30) NOT NULL,
  `length` decimal(10,2) NOT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `pid` int(5) NOT NULL,
  `pname` varchar(30) NOT NULL,
  `category` varchar(15) NOT NULL,
  `rating` float NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product_owned`
--

DROP TABLE IF EXISTS `product_owned`;
CREATE TABLE IF NOT EXISTS `product_owned` (
  `cid` int(5) NOT NULL,
  `pid` int(5) NOT NULL,
  PRIMARY KEY (`cid`,`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `song`
--

DROP TABLE IF EXISTS `song`;
CREATE TABLE IF NOT EXISTS `song` (
  `sid` int(5) NOT NULL,
  `sname` varchar(30) NOT NULL,
  `genre` varchar(15) NOT NULL,
  `singer` varchar(15) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
