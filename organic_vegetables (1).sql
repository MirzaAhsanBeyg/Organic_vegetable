-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 15, 2021 at 08:33 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `organic_vegetables`
--

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

DROP TABLE IF EXISTS `branches`;
CREATE TABLE IF NOT EXISTS `branches` (
  `br_id` int(11) NOT NULL,
  `br_name` varchar(25) NOT NULL,
  `br_postal` int(11) NOT NULL,
  `br_address` varchar(50) NOT NULL,
  PRIMARY KEY (`br_id`),
  UNIQUE KEY `br_name` (`br_name`),
  UNIQUE KEY `br_address` (`br_address`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`br_id`, `br_name`, `br_postal`, `br_address`) VALUES
(1, 'AIRPORT BRANCH', 72500, 'JINNAH TERMINAL KARACHI'),
(2, 'BALDIA TOWN', 75760, 'BALDIA TOWN BRANCH'),
(3, 'BIEK BRANCH', 75150, 'BOARD OF SECONDARY EDUCATACHIION KARACHI'),
(4, 'CANTT BRANCH', 75530, 'CANTT BRANCH KARACHI'),
(5, 'CITY GPO', 7100, 'CITY GPO KARACHI'),
(6, 'CLIFTON', 75600, 'CLIFTON KARACHI'),
(7, 'COD', 75250, 'COD KARACHI'),
(8, 'DARUL-ULOOM', 75180, 'DARUL-ULOOM KARACHI'),
(9, 'DEFENCE SOCIETY', 75500, 'DEFENCE SOCIETY'),
(10, 'EXPORT PROCESSING ZONE', 75150, 'EXPORT PROCESSING ZONE');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `customer_id` int(20) NOT NULL,
  `customer_name` varchar(25) NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`) VALUES
(1, 'Mirza Ahsan Baig'),
(2, 'Abdul Moiz Hashmi'),
(3, 'Ayesha Khatoon'),
(4, 'Shafaq Padeela'),
(5, 'Rafay Khan'),
(6, 'Mushk Kauser'),
(7, 'Hamza Hammad'),
(8, 'Mukhtar Suleman'),
(9, 'Mahnoor Baqai'),
(10, 'Fauzia Akram');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
CREATE TABLE IF NOT EXISTS `departments` (
  `dpt_id` int(11) NOT NULL,
  `dpt_name` varchar(25) NOT NULL,
  PRIMARY KEY (`dpt_id`),
  UNIQUE KEY `dpt_name` (`dpt_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`dpt_id`, `dpt_name`) VALUES
(1, 'Administration'),
(2, 'Human Resource'),
(3, 'Marketing'),
(4, 'Procurement'),
(5, 'Security'),
(6, 'Information Technology'),
(7, 'Real Estate'),
(8, 'Management'),
(9, 'Finance'),
(10, 'E-com');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
CREATE TABLE IF NOT EXISTS `employees` (
  `emp_id` int(11) NOT NULL,
  `emp_name` varchar(25) NOT NULL,
  `job_id` varchar(25) NOT NULL,
  `start_date` date NOT NULL,
  `salary` int(11) NOT NULL,
  `dpt_id` int(11) NOT NULL,
  `br_id` int(11) NOT NULL,
  PRIMARY KEY (`emp_id`),
  KEY `dpt_id` (`dpt_id`),
  KEY `br_id` (`br_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `manage_by`
--

DROP TABLE IF EXISTS `manage_by`;
CREATE TABLE IF NOT EXISTS `manage_by` (
  `emp_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  PRIMARY KEY (`emp_id`,`vendor_id`),
  KEY `vendor_id` (`vendor_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `supply_to`
--

DROP TABLE IF EXISTS `supply_to`;
CREATE TABLE IF NOT EXISTS `supply_to` (
  `br_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  PRIMARY KEY (`br_id`,`vendor_id`),
  KEY `vendor_id` (`vendor_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

DROP TABLE IF EXISTS `vendors`;
CREATE TABLE IF NOT EXISTS `vendors` (
  `vendor_id` int(11) NOT NULL,
  `vendor_name` varchar(25) NOT NULL,
  `good_type_supply` varchar(25) NOT NULL,
  PRIMARY KEY (`vendor_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `visit_for_shopping`
--

DROP TABLE IF EXISTS `visit_for_shopping`;
CREATE TABLE IF NOT EXISTS `visit_for_shopping` (
  `br_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  PRIMARY KEY (`br_id`,`customer_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
