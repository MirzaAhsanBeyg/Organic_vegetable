-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 19, 2021 at 09:22 PM
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
  PRIMARY KEY (`br_id`)
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
  `customer_id` int(11) NOT NULL,
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
  `dpt_id` int(11) DEFAULT NULL,
  `br_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`emp_id`),
  KEY `dpt_id` (`dpt_id`),
  KEY `br_id` (`br_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`emp_id`, `emp_name`, `job_id`, `start_date`, `salary`, `dpt_id`, `br_id`) VALUES
(116800, 'Ali Islam', 'President', '2021-02-01', 50000, 8, NULL),
(116801, 'Ahsan Baig', 'Vice President', '2021-02-01', 45000, 8, NULL),
(116802, 'Sheikh Kamal', 'Manager', '2021-02-09', 30000, 1, NULL),
(116803, 'Mashal Nasir', 'Manager', '2021-02-17', 30000, 2, NULL),
(116804, 'Bakhtawar Awan', 'Manager', '2021-02-24', 28000, 3, NULL),
(116805, 'Muhammad Umer', 'Manager', '2021-02-14', 29000, 4, NULL),
(116806, 'Zareen Sheikh', 'Manager', '2021-02-05', 27000, 5, NULL),
(116807, 'Irshad Khan', 'Manager', '2021-02-20', 25000, 6, NULL),
(116808, 'Suleman Khan', 'Manager', '2021-02-12', 29000, 7, NULL),
(116809, 'Wajiha Hanif', 'Manager', '2021-02-23', 25000, 9, NULL),
(116810, 'Rija Ali', 'Manager', '2021-02-20', 28500, 10, NULL),
(116811, 'Mansoor Baig', 'Admin Officer', '2021-03-17', 15000, 1, 10),
(116812, 'Moiz Hashmi', 'Estate Supervisor', '2021-03-28', 20000, 7, 9),
(116813, 'Muhammad Zubair ', 'Supply Officer', '2021-02-28', 28000, 4, 3),
(116814, 'Fauzia Jalil', 'HR Executive', '2021-03-15', 26000, 2, 5),
(116815, 'Atka Ejaz', 'Security In-charge', '2021-02-07', 10000, 5, 7),
(116816, 'John Ibraham', 'Sales person', '2021-02-05', 14900, 3, 8),
(116817, 'Aamir Khan', 'Admin Officer', '2021-02-28', 8000, 1, 1),
(116818, 'Musa Ishtiaq', 'Operation Officer', '2021-03-13', 27000, 9, 2),
(116819, 'Salman Khan', 'Customer Care', '2021-03-20', 15000, 10, 4),
(116820, 'Ann Rodriguez', 'IT Officer', '2021-02-19', 17000, 6, 6);

-- --------------------------------------------------------

--
-- Table structure for table `emp_manage_vendor`
--

DROP TABLE IF EXISTS `emp_manage_vendor`;
CREATE TABLE IF NOT EXISTS `emp_manage_vendor` (
  `emp_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  PRIMARY KEY (`emp_id`,`vendor_id`),
  KEY `vendor_id` (`vendor_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_manage_vendor`
--

INSERT INTO `emp_manage_vendor` (`emp_id`, `vendor_id`) VALUES
(1, 3),
(1, 4),
(2, 7),
(2, 9),
(5, 1),
(5, 3),
(7, 5),
(8, 4),
(8, 6),
(9, 6);

-- --------------------------------------------------------

--
-- Table structure for table `goods_record`
--

DROP TABLE IF EXISTS `goods_record`;
CREATE TABLE IF NOT EXISTS `goods_record` (
  `item_entry` int(11) NOT NULL,
  `item_description_supply` varchar(50) NOT NULL,
  `good_supply_price` int(11) NOT NULL,
  `sell_price` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  PRIMARY KEY (`item_entry`),
  KEY `vendor_id` (`vendor_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `goods_record`
--

INSERT INTO `goods_record` (`item_entry`, `item_description_supply`, `good_supply_price`, `sell_price`, `discount`, `vendor_id`) VALUES
(1, 'Corn Mushroom Broccoli, Cucumber, Red pepper', 500, 600, 5, 7),
(2, 'Red bell pepper, Pineapple, Tomato', 1000, 1200, 3, 5),
(3, 'Carrot, Brussels, sprout, Pumpkin, Cabbage', 800, 1200, 10, 3),
(4, 'Potato, Eggplant, Sweet potato, Turnip', 1900, 2400, 12, 9),
(5, 'Green chilli, Onion, Lettuce, Radish', 1500, 1800, 4, 1),
(6, 'Pea, Asparagus, Celery, Green pepper', 450, 600, 2, 8),
(7, 'French beans, Spinach, Beetroot', 300, 600, 10, 4),
(8, 'Beans, Spanich', 150, 200, 2, 2),
(9, 'Tomato, Cucumber, Onion', 475, 600, 5, 6),
(10, 'Cabbage, Potato', 150, 200, 4, 10);

-- --------------------------------------------------------

--
-- Stand-in structure for view `profit`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `profit`;
CREATE TABLE IF NOT EXISTS `profit` (
`Entry` int(11)
,`Description` varchar(50)
,`Profit generated` bigint(12)
);

-- --------------------------------------------------------

--
-- Table structure for table `records`
--

DROP TABLE IF EXISTS `records`;
CREATE TABLE IF NOT EXISTS `records` (
  `br_id` int(11) NOT NULL,
  `item_entry` int(11) NOT NULL,
  PRIMARY KEY (`br_id`,`item_entry`),
  KEY `item_entry` (`item_entry`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `records`
--

INSERT INTO `records` (`br_id`, `item_entry`) VALUES
(1, 4),
(1, 6),
(2, 3),
(2, 7),
(2, 9),
(4, 6),
(5, 3),
(8, 4),
(8, 6),
(9, 5);

-- --------------------------------------------------------

--
-- Table structure for table `sell_to`
--

DROP TABLE IF EXISTS `sell_to`;
CREATE TABLE IF NOT EXISTS `sell_to` (
  `item_entry` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  PRIMARY KEY (`item_entry`,`customer_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sell_to`
--

INSERT INTO `sell_to` (`item_entry`, `customer_id`) VALUES
(1, 9),
(2, 6),
(3, 5),
(4, 4),
(5, 4),
(6, 3),
(7, 8),
(8, 2),
(9, 7),
(10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

DROP TABLE IF EXISTS `vendors`;
CREATE TABLE IF NOT EXISTS `vendors` (
  `vendor_id` int(11) NOT NULL,
  `vendor_name` varchar(25) NOT NULL,
  PRIMARY KEY (`vendor_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`vendor_id`, `vendor_name`) VALUES
(100500, 'Khan Brothers'),
(100501, 'Khan Associates'),
(100502, 'Limton Associates'),
(100503, 'Tapal'),
(100504, 'Asad Brothers'),
(100505, 'Aqua Tech'),
(100506, 'Nelson'),
(100507, 'Al-Ayub Packages'),
(100508, 'Khareedo Sabzi'),
(100509, 'Tahir Fruits');

-- --------------------------------------------------------

--
-- Table structure for table `visit_particular_branch`
--

DROP TABLE IF EXISTS `visit_particular_branch`;
CREATE TABLE IF NOT EXISTS `visit_particular_branch` (
  `customer_id` int(11) NOT NULL,
  `br_id` int(11) NOT NULL,
  PRIMARY KEY (`customer_id`,`br_id`),
  KEY `br_id` (`br_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visit_particular_branch`
--

INSERT INTO `visit_particular_branch` (`customer_id`, `br_id`) VALUES
(1, 2),
(1, 5),
(1, 10),
(2, 9),
(3, 6),
(3, 8),
(5, 4),
(7, 4),
(7, 8),
(8, 5),
(9, 5),
(9, 10);

-- --------------------------------------------------------

--
-- Structure for view `profit`
--
DROP TABLE IF EXISTS `profit`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `profit`  AS  select `goods_record`.`item_entry` AS `Entry`,`goods_record`.`item_description_supply` AS `Description`,(`goods_record`.`sell_price` - `goods_record`.`good_supply_price`) AS `Profit generated` from `goods_record` ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
