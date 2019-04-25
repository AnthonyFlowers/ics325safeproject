-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2019 at 03:18 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.0.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ics325safedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `cadence`
--

CREATE TABLE `cadence` (
  `sequence` int(11) NOT NULL,
  `PI_id` varchar(255) NOT NULL,
  `iteration_id` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `duration` int(5) DEFAULT NULL,
  `safe_comments` varchar(255) DEFAULT NULL,
  `release_overlay` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cadence`
--

INSERT INTO `cadence` (`sequence`, `PI_id`, `iteration_id`, `start_date`, `end_date`, `duration`, `safe_comments`, `release_overlay`, `comments`) VALUES
(1, 'PI-1902', 'I-1902-1', '2018-11-12', '2018-11-23', 10, 'Solution Demos', 'release_overlay', 'other_comments'),
(2, 'PI-1902', 'I-1902-2', '2018-11-26', '2018-12-07', 10, '', '', ''),
(3, 'PI-1902', 'I-1902-3', '2018-12-10', '2018-12-21', 10, '', '', ''),
(4, 'PI-1902', 'I-1902-4', '2018-12-24', '2019-01-04', 10, '', '', ''),
(5, 'PI-1902', 'I-1902-5', '2019-01-07', '2019-01-18', 10, '', '', ''),
(6, 'PI-1902', 'I-1902-6', '2019-01-21', '2019-01-25', 5, '', '', ''),
(7, 'PI-1902', 'I-1902-IP', '2019-01-28', '2019-02-08', 10, '', '', ''),
(8, 'PI-1905', 'I-1905-1', '2019-02-11', '2019-02-22', 10, '', '', ''),
(9, 'PI-1905', 'I-1905-2', '2019-02-25', '2019-03-08', 10, '', '', ''),
(10, 'PI-1905', 'I-1905-3', '2019-03-11', '2019-03-22', 10, 'safe_comments', 'release_overlay', 'other_comments'),
(11, 'PI-1905', 'I-1905-4', '2019-03-25', '2019-04-05', 10, 'Story Freeze', '', ''),
(12, 'PI-1905', 'I-1905-5', '2019-04-08', '2019-04-19', 10, '', '', ''),
(13, 'PI-1905', 'I-1905-6', '2019-04-22', '2019-04-26', 5, 'Solution Demos', '', ''),
(14, 'PI-1905', 'I-1905-IP', '2019-04-29', '2019-05-10', 10, '', '', ''),
(15, 'PI-1908', 'I-1908-1', '2019-05-13', '2019-05-24', 10, '', '', ''),
(16, 'PI-1908', 'I-1908-2', '2019-05-27', '2019-06-07', 10, '', '', ''),
(17, 'PI-1908', 'I-1908-3', '2019-06-10', '2019-06-21', 10, '', '', ''),
(18, 'PI-1908', 'I-1908-4', '2019-06-24', '2019-07-05', 10, '', '', ''),
(19, 'PI-1908', 'I-1908-5', '2019-07-08', '2019-07-19', 10, 'safe_comments', 'release_overlay', 'other_comments'),
(20, 'PI-1908', 'I-1908-6', '2019-07-22', '2019-07-26', 5, 'Story Freeze', '', ''),
(21, 'PI-1908', 'I-1908-IP', '2019-07-29', '2019-08-09', 10, '', '', ''),
(22, 'PI-1911', 'I-1911-1', '2019-08-12', '2019-08-23', 10, 'Solution Demos', '', ''),
(23, 'PI-1911', 'I-1911-2', '2019-08-26', '2019-09-06', 10, '', '', ''),
(24, 'PI-1911', 'I-1911-3', '2019-09-09', '2019-09-20', 10, '', '', ''),
(25, 'PI-1911', 'I-1911-4', '2019-09-23', '2019-10-04', 10, '', '', ''),
(26, 'PI-1911', 'I-1911-5', '2019-10-07', '2019-10-18', 10, '', '', ''),
(27, 'PI-1911', 'I-1911-6', '2019-10-21', '2019-10-25', 5, '', '', ''),
(28, 'PI-1911', 'I-1911-IP', '2019-10-28', '2019-11-08', 10, '', '', ''),
(29, 'PI-2002', 'I-2002-1', '2019-11-11', '2019-11-22', 10, '', '', ''),
(30, 'PI-2002', 'I-2002-2', '2019-11-25', '2019-12-06', 10, '', '', ''),
(31, 'PI-2002', 'I-2002-3', '2019-12-09', '2019-12-20', 10, '', '', ''),
(32, 'PI-2002', 'I-2002-4', '2019-12-23', '2020-01-03', 10, '', '', ''),
(33, 'PI-2002', 'I-2002-5', '2020-01-06', '2020-01-17', 10, '', '', ''),
(34, 'PI-2002', 'I-2002-6', '2020-01-20', '2020-01-24', 5, '', '', ''),
(35, 'PI-2002', 'I-2002-IP', '2020-01-27', '2020-02-07', 10, 'safe_comments', 'release_overlay', 'other_comments'),
(36, 'PI-2005', 'I-2005-1', '2020-02-10', '2020-02-21', 10, 'Story Freeze', '', ''),
(37, 'PI-2005', 'I-2005-2', '2020-02-24', '2020-03-06', 10, '', '', ''),
(38, 'PI-2005', 'I-2005-3', '2020-03-09', '2020-03-20', 10, 'Solution Demos', '', ''),
(39, 'PI-2005', 'I-2005-4', '2020-03-23', '2020-04-03', 10, '', '', ''),
(40, 'PI-2005', 'I-2005-5', '2020-04-06', '2020-04-17', 10, '', '', ''),
(41, 'PI-2005', 'I-2005-6', '2020-04-20', '2020-04-24', 5, '', '', ''),
(42, 'PI-2005', 'I-2005-IP', '2020-04-27', '2020-05-08', 10, '', '', ''),
(43, 'PI-2008', 'I-2008-1', '2020-05-11', '2020-05-22', 10, '', '', ''),
(44, 'PI-2008', 'I-2008-2', '2020-05-25', '2020-06-05', 10, '', '', ''),
(45, 'PI-2008', 'I-2008-3', '2020-06-08', '2020-06-19', 10, 'safe_comments', 'release_overlay', 'other_comments'),
(46, 'PI-2008', 'I-2008-4', '2020-06-22', '2020-07-03', 10, 'Story Freeze', '', ''),
(47, 'PI-2008', 'I-2008-5', '2020-07-06', '2020-07-17', 10, '', '', ''),
(48, 'PI-2008', 'I-2008-6', '2020-07-20', '2020-07-24', 5, 'Solution Demos', '', ''),
(49, 'PI-2008', 'I-2008-IP', '2020-07-27', '2020-08-07', 10, '', '', ''),
(50, 'PI-2011', 'I-2011-1', '2020-08-10', '2020-08-21', 10, '', '', ''),
(51, 'PI-2011', 'I-2011-2', '2020-08-24', '2020-09-04', 10, '', '', ''),
(52, 'PI-2011', 'I-2011-3', '2020-09-07', '2020-09-18', 10, '', '', ''),
(53, 'PI-2011', 'I-2011-4', '2020-09-21', '2020-10-02', 10, '', '', ''),
(54, 'PI-2011', 'I-2011-5', '2020-10-05', '2020-10-16', 10, '', '', ''),
(55, 'PI-2011', 'I-2011-6', '2020-10-19', '2020-10-23', 5, '', '', ''),
(56, 'PI-2011', 'I-2011-IP', '2020-10-26', '2020-11-06', 10, '', '', ''),
(57, 'PI-2102', 'I-2102-1', '2020-11-09', '2020-11-20', 10, 'safe_comments', 'release_overlay', 'other_comments'),
(58, 'PI-2102', 'I-2102-2', '2020-11-23', '2020-12-04', 10, 'Story Freeze', '', ''),
(59, 'PI-2102', 'I-2102-3', '2020-12-07', '2020-12-18', 10, '', '', ''),
(60, 'PI-2102', 'I-2102-4', '2020-12-21', '2021-01-01', 10, 'Solution Demos', '', ''),
(61, '', '', '0000-00-00', '0000-00-00', 0, '', '', ''),
(62, '', '', '0000-00-00', '0000-00-00', 0, '', '', ''),
(63, '', '', '0000-00-00', '0000-00-00', 0, '', '', ''),
(64, '', '', '0000-00-00', '0000-00-00', 0, '', '', ''),
(65, '', '', '0000-00-00', '0000-00-00', 0, '', '', ''),
(66, '', '', '0000-00-00', '0000-00-00', 0, '', '', ''),
(67, '', '', '0000-00-00', '0000-00-00', 0, '', '', ''),
(68, '', '', '0000-00-00', '0000-00-00', 0, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `capacity`
--

CREATE TABLE `capacity` (
  `id` int(11) NOT NULL,
  `team_id` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `team_name` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `program_increment` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `iteration_1` int(11) NOT NULL,
  `iteration_2` int(11) NOT NULL,
  `iteration_3` int(11) NOT NULL,
  `iteration_4` int(11) NOT NULL,
  `iteration_5` int(11) NOT NULL,
  `iteration_6` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `capacity`
--

INSERT INTO `capacity` (`id`, `team_id`, `team_name`, `program_increment`, `iteration_1`, `iteration_2`, `iteration_3`, `iteration_4`, `iteration_5`, `iteration_6`, `total`) VALUES
(72, 'ART-400', 'Agile Release Train  400 (ST100)', 'PI-2005', 36, 42, 60, 78, 15, 35, 266),
(78, 'ART-401', 'Agile Release Train  401 (ST100)', 'PI-2005', 49, 70, 49, 19, 79, 13, 279),
(84, 'ART-402', 'Agile Release Train  402 (ST100)', 'PI-2008', 61, 63, 27, 78, 64, 37, 330),
(90, 'ART-403', 'Agile Release Train  403 (ST100)', 'PI-2011', 16, 44, 29, 17, 74, 74, 254),
(96, 'ART-404', 'Agile Release Train  404 (ST100)', 'PI-2012', 63, 57, 65, 46, 62, 31, 324),
(102, 'ART-405', 'Agile Release Train  405 (ST100) XYZ', 'PI-2102', 54, 79, 57, 48, 22, 41, 301),
(108, 'ART-500', 'Agile Release Train  500 (ST200)', 'PI-1902', 54, 72, 44, 72, 44, 29, 315),
(114, 'ART-501', 'Agile Release Train  501 (ST200)', 'PI-1902', 11, 72, 53, 14, 70, 57, 277),
(120, 'ART-502', 'Agile Release Train  502 (ST200)', 'PI-1905', 28, 27, 68, 12, 79, 39, 253),
(126, 'ART-503', 'Agile Release Train  503 (ST200)', 'PI-1905', 63, 34, 26, 77, 66, 35, 301),
(132, 'ART-504', 'Agile Release Train  504 (ST200)', 'PI-1905', 18, 54, 25, 72, 57, 63, 289),
(138, 'ART-600', 'Agile Release Train  600 (ST300)', 'PI-1908', 51, 74, 20, 74, 20, 29, 268),
(144, 'ART-601', 'Agile Release Train  601 (ST300)', 'PI-1911', 16, 25, 13, 60, 11, 67, 192),
(150, 'ART-602', 'Agile Release Train  602 (ST300)', 'PI-1911', 68, 34, 21, 34, 18, 61, 236),
(156, 'AT-800', '800 Agile Team', 'PI-2002', 42, 78, 49, 14, 11, 24, 218),
(162, 'AT-801', '801 Agile Team', 'PI-2002', 62, 66, 16, 36, 53, 31, 264),
(168, 'AT-802', '802 Agile Team', 'PI-2005', 14, 19, 17, 69, 73, 65, 257),
(174, 'AT-803', '803 Agile Team', 'PI-2005', 35, 19, 65, 23, 29, 65, 236),
(180, 'AT-804', '804 Agile Team', 'PI-2005', 39, 67, 54, 70, 49, 74, 353),
(186, 'AT-805', '805 Agile Team', 'PI-2008', 69, 77, 16, 28, 11, 28, 229),
(192, 'AT-806', '806 Agile Team', 'PI-2011', 67, 71, 43, 24, 47, 75, 327),
(198, 'AT-807', '807 Agile Team', 'PI-2012', 17, 16, 77, 50, 77, 13, 250),
(204, 'AT-808', '808 Agile Team', 'PI-2102', 55, 60, 39, 39, 38, 72, 303),
(210, 'AT-809', '809 Agile Team', 'PI-1902', 27, 26, 57, 60, 32, 10, 212),
(216, 'AT-810', '810 Agile Team', 'PI-1902', 43, 51, 77, 21, 16, 18, 226),
(222, 'AT-abc1', 'Agile Team 1000 1', 'PI-1905', 33, 30, 75, 52, 54, 17, 261),
(228, 'AT-abc10', 'Agile Team 1000 10', 'PI-1905', 42, 74, 72, 68, 67, 44, 367),
(234, 'AT-abc2', 'Agile Team 1000 2', 'PI-1905', 49, 69, 32, 63, 33, 59, 305),
(240, 'AT-abc3', 'Agile Team 1000 3', 'PI-1908', 32, 32, 60, 65, 55, 78, 322),
(246, 'AT-abc4', 'Agile Team 1000 4', 'PI-1911', 51, 17, 74, 58, 18, 79, 297),
(252, 'AT-abc5', 'Agile Team 1000 5', 'PI-1911', 69, 20, 26, 36, 55, 57, 263),
(258, 'AT-abc6', 'Agile Team 1000 6', 'PI-2002', 13, 50, 39, 66, 65, 54, 287),
(264, 'AT-abc7', 'Agile Team 1000 7', 'PI-2002', 39, 43, 74, 22, 66, 20, 264),
(270, 'AT-abc8', 'Agile Team 1000 8', 'PI-2005', 14, 32, 42, 31, 69, 60, 248),
(276, 'AT-abc9', 'Agile Team 1000 9', 'PI-2005', 64, 16, 47, 64, 74, 42, 307),
(282, 'ST-100', 'Solution Train 100', 'PI-2005', 55, 23, 35, 20, 33, 78, 244),
(288, 'ST-200', 'Solution Train 200', 'PI-2008', 26, 37, 79, 16, 41, 72, 271),
(294, 'ST-300', 'Solution Train 300', 'PI-2011', 52, 19, 56, 39, 13, 34, 213);

-- --------------------------------------------------------

--
-- Table structure for table `ceremonies`
--

CREATE TABLE `ceremonies` (
  `id` int(5) NOT NULL,
  `name` varchar(64) NOT NULL,
  `category` varchar(20) NOT NULL,
  `level` varchar(30) NOT NULL,
  `description` varchar(255) NOT NULL,
  `facilitator` varchar(30) NOT NULL,
  `required` varchar(128) NOT NULL,
  `optional` varchar(128) NOT NULL,
  `cadence` varchar(50) NOT NULL,
  `time_lower` int(2) NOT NULL,
  `time_upper` int(2) NOT NULL,
  `contains_demo` tinyint(1) NOT NULL,
  `demo_lead` varchar(30) NOT NULL,
  `is_optional` tinyint(1) NOT NULL,
  `is_safe` tinyint(1) NOT NULL,
  `safe_link` varchar(128) NOT NULL,
  `status` varchar(20) NOT NULL,
  `comments` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ceremonies`
--

INSERT INTO `ceremonies` (`id`, `name`, `category`, `level`, `description`, `facilitator`, `required`, `optional`, `cadence`, `time_lower`, `time_upper`, `contains_demo`, `demo_lead`, `is_optional`, `is_safe`, `safe_link`, `status`, `comments`) VALUES
(10, 'Solution Demo_10', 'Other', 'Solution Level', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Yearly', 10, 120, 1, 'Product Architect', 0, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Approved', 'Needs review.'),
(100, 'Solution Demo_100', 'Other', 'Solution Level', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Yearly', 60, 120, 1, 'Lead Engineer', 0, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Obsoleted', 'Not required.'),
(11, 'Solution Demo_11', 'Review', 'Portfolio', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Quartely', 60, 120, 1, 'Product Designer', 1, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Approved', 'Modify the requirements.'),
(12, 'Solution Demo_12', 'Planning', 'Solution Level', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Weekly', 40, 80, 1, 'Lead Engineer', 0, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Proposed', 'Not required.'),
(13, 'Solution Demo_13', 'Status', 'Agile Level', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Once every month', 50, 80, 1, 'Product Manager', 0, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Rejected', 'Good'),
(14, 'Solution Demo_14', 'Demo', 'Agile Release Train', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Daily', 15, 35, 1, 'Product Architect', 0, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Obsoleted', 'Needs review.'),
(15, 'Solution Demo_15', 'Other', 'Solution Train', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Weekly', 30, 120, 1, 'Product Designer', 1, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Approved', 'Modify the requirements.'),
(16, 'Solution Demo_16', 'Review', 'Solution Level', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Yearly', 20, 120, 1, 'Lead Engineer', 0, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Approved', 'Not required.'),
(17, 'Solution Demo_17', 'Planning', 'Portfolio', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Quartely', 10, 120, 1, 'Product Manager', 0, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Proposed', 'Good'),
(18, 'Solution Demo_18', 'Status', 'Solution Level', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Weekly', 20, 60, 1, 'Product Architect', 0, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Rejected', 'Needs review.'),
(19, 'Solution Demo_19', 'Demo', 'Agile Level', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Once every month', 40, 40, 1, 'Product Designer', 0, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Obsoleted', 'Modify the requirements.'),
(2, 'Solution Demo_2', 'Planning', 'Agile Release Train', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Daily', 20, 40, 1, 'Product Architect', 1, 0, 'https://www.scaledagileframework.com/solution-demo/', 'Proposed', 'Needs review.'),
(20, 'Solution Demo_20', 'Other', 'Agile Release Train', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Daily', 50, 120, 1, 'Lead Engineer', 1, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Approved', 'Not required.'),
(21, 'Solution Demo_21', 'Review', 'Solution Train', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Weekly', 15, 120, 1, 'Product Manager', 0, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Approved', 'Good'),
(22, 'Solution Demo_22', 'Planning', 'Solution Level', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Yearly', 60, 80, 1, 'Product Architect', 0, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Proposed', 'Needs review.'),
(23, 'Solution Demo_23', 'Status', 'Portfolio', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Quartely', 30, 80, 1, 'Product Designer', 0, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Rejected', 'Modify the requirements.'),
(24, 'Solution Demo_24', 'Demo', 'Solution Level', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Weekly', 20, 35, 1, 'Lead Engineer', 1, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Obsoleted', 'Not required.'),
(25, 'Solution Demo_25', 'Other', 'Agile Level', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Once every month', 10, 120, 1, 'Product Manager', 0, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Approved', 'Good'),
(26, 'Solution Demo_26', 'Review', 'Agile Release Train', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Daily', 30, 120, 1, 'Product Architect', 1, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Proposed', 'Needs review.'),
(27, 'Solution Demo_27', 'Planning', 'Solution Train', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Weekly', 40, 120, 1, 'Product Designer', 0, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Rejected', 'Modify the requirements.'),
(28, 'Solution Demo_28', 'Status', 'Solution Level', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Yearly', 50, 60, 1, 'Lead Engineer', 1, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Obsoleted', 'Not required.'),
(29, 'Solution Demo_29', 'Demo', 'Portfolio', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Quartely', 15, 40, 1, 'Product Manager', 0, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Approved', 'Good'),
(3, 'Solution Demo_3', 'Status', 'Solution Train', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Weekly', 10, 120, 1, 'Product Designer', 1, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Rejected', 'Modify the requirements.'),
(30, 'Solution Demo_30', 'Other', 'Solution Level', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Weekly', 30, 120, 1, 'Product Architect', 0, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Approved', 'Needs review.'),
(31, 'Solution Demo_31', 'Review', 'Agile Level', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Once every month', 20, 120, 1, 'Product Designer', 1, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Proposed', 'Modify the requirements.'),
(32, 'Solution Demo_32', 'Planning', 'Agile Release Train', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Daily', 10, 80, 1, 'Lead Engineer', 0, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Rejected', 'Not required.'),
(33, 'Solution Demo_33', 'Status', 'Solution Train', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Weekly', 20, 80, 1, 'Product Manager', 1, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Obsoleted', 'Good'),
(34, 'Solution Demo_34', 'Demo', 'Solution Level', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Yearly', 40, 35, 1, 'Product Architect', 1, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Approved', 'Needs review.'),
(35, 'Solution Demo_35', 'Other', 'Portfolio', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Quartely', 50, 120, 1, 'Product Designer', 1, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Approved', 'Modify the requirements.'),
(36, 'Solution Demo_36', 'Review', 'Solution Level', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Weekly', 15, 120, 1, 'Lead Engineer', 0, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Proposed', 'Not required.'),
(37, 'Solution Demo_37', 'Planning', 'Agile Level', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Once every month', 60, 60, 1, 'Product Manager', 0, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Rejected', 'Good'),
(38, 'Solution Demo_38', 'Status', 'Agile Release Train', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Daily', 60, 40, 1, 'Product Architect', 1, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Obsoleted', 'Needs review.'),
(39, 'Solution Demo_39', 'Demo', 'Solution Train', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Weekly', 30, 120, 1, 'Product Designer', 0, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Approved', 'Modify the requirements.'),
(4, 'Solution Demo_4', 'Demo', 'Solution Level', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Yearly', 60, 120, 1, 'Lead Engineer', 0, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Obsoleted', 'Not required.'),
(40, 'Solution Demo_40', 'Other', 'Solution Level', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Yearly', 20, 120, 1, 'Lead Engineer', 1, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Approved', 'Not required.'),
(41, 'Solution Demo_41', 'Review', 'Portfolio', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Quartely', 10, 80, 1, 'Product Manager', 1, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Proposed', 'Good'),
(42, 'Solution Demo_42', 'Planning', 'Solution Level', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Weekly', 15, 80, 1, 'Product Architect', 0, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Rejected', 'Needs review.'),
(43, 'Solution Demo_43', 'Status', 'Agile Level', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Once every month', 40, 35, 1, 'Product Designer', 1, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Obsoleted', 'Modify the requirements.'),
(44, 'Solution Demo_44', 'Demo', 'Agile Release Train', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Daily', 50, 120, 1, 'Lead Engineer', 0, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Approved', 'Not required.'),
(45, 'Solution Demo_45', 'Other', 'Solution Train', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Weekly', 15, 120, 1, 'Product Manager', 1, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Approved', 'Good'),
(46, 'Solution Demo_46', 'Review', 'Solution Level', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Yearly', 60, 60, 1, 'Product Architect', 0, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Proposed', 'Needs review.'),
(47, 'Solution Demo_47', 'Planning', 'Portfolio', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Quartely', 60, 40, 1, 'Product Designer', 0, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Rejected', 'Modify the requirements.'),
(48, 'Solution Demo_48', 'Status', 'Solution Level', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Weekly', 60, 120, 1, 'Lead Engineer', 1, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Obsoleted', 'Not required.'),
(49, 'Solution Demo_49', 'Demo', 'Agile Level', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Once every month', 30, 120, 1, 'Product Manager', 0, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Approved', 'Good'),
(5, 'Solution Demo_5', 'Other', 'Portfolio', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Quartely', 40, 80, 1, 'Product Manager', 1, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Approved', 'Good'),
(50, 'Solution Demo_50', 'Other', 'Agile Release Train', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Daily', 20, 80, 1, 'Product Architect', 0, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Proposed', 'Needs review.'),
(51, 'Solution Demo_51', 'Review', 'Solution Train', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Weekly', 10, 80, 1, 'Product Designer', 1, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Rejected', 'Modify the requirements.'),
(52, 'Solution Demo_52', 'Planning', 'Solution Level', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Yearly', 20, 35, 1, 'Lead Engineer', 0, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Obsoleted', 'Not required.'),
(53, 'Solution Demo_53', 'Status', 'Portfolio', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Quartely', 40, 120, 1, 'Product Manager', 1, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Approved', 'Good'),
(54, 'Solution Demo_54', 'Demo', 'Solution Level', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Weekly', 50, 120, 1, 'Product Architect', 0, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Approved', 'Needs review.'),
(55, 'Solution Demo_55', 'Other', 'Agile Level', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Once every month', 15, 120, 1, 'Product Designer', 0, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Proposed', 'Modify the requirements.'),
(56, 'Solution Demo_56', 'Review', 'Agile Release Train', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Daily', 60, 120, 1, 'Lead Engineer', 0, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Rejected', 'Not required.'),
(57, 'Solution Demo_57', 'Planning', 'Solution Train', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Weekly', 60, 60, 1, 'Product Manager', 1, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Obsoleted', 'Good'),
(58, 'Solution Demo_58', 'Status', 'Solution Level', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Yearly', 60, 40, 1, 'Product Architect', 0, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Approved', 'Needs review.'),
(59, 'Solution Demo_59', 'Demo', 'Portfolio', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Quartely', 30, 120, 1, 'Product Designer', 1, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Approved', 'Modify the requirements.'),
(6, 'Solution Demo_6', 'Review', 'Solution Level', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Weekly', 50, 80, 1, 'Product Architect', 0, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Approved', 'Needs review.'),
(60, 'Solution Demo_60', 'Other', 'Solution Level', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Weekly', 20, 120, 1, 'Lead Engineer', 0, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Proposed', 'Not required.'),
(61, 'Solution Demo_61', 'Review', 'Agile Level', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Once every month', 10, 80, 1, 'Product Manager', 1, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Rejected', 'Good'),
(62, 'Solution Demo_62', 'Planning', 'Agile Release Train', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Daily', 40, 80, 1, 'Product Architect', 0, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Obsoleted', 'Needs review.'),
(63, 'Solution Demo_63', 'Status', 'Solution Train', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Weekly', 40, 35, 1, 'Product Designer', 0, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Approved', 'Modify the requirements.'),
(64, 'Solution Demo_64', 'Demo', 'Solution Level', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Yearly', 50, 120, 1, 'Lead Engineer', 1, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Approved', 'Not required.'),
(65, 'Solution Demo_65', 'Other', 'Portfolio', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Quartely', 15, 120, 1, 'Product Manager', 0, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Proposed', 'Good'),
(66, 'Solution Demo_66', 'Review', 'Solution Level', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Weekly', 60, 120, 1, 'Product Architect', 0, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Rejected', 'Needs review.'),
(67, 'Solution Demo_67', 'Planning', 'Agile Level', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Once every month', 60, 60, 1, 'Product Designer', 1, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Obsoleted', 'Modify the requirements.'),
(68, 'Solution Demo_68', 'Status', 'Agile Release Train', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Daily', 60, 40, 1, 'Lead Engineer', 0, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Approved', 'Not required.'),
(69, 'Solution Demo_69', 'Demo', 'Solution Train', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Weekly', 30, 120, 1, 'Product Manager', 1, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Approved', 'Good'),
(7, 'Solution Demo_7', 'Planning', 'Agile Level', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Once every month', 15, 35, 1, 'Product Designer', 1, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Proposed', 'Modify the requirements.'),
(70, 'Solution Demo_70', 'Other', 'Solution Level', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Yearly', 20, 120, 1, 'Product Architect', 0, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Proposed', 'Needs review.'),
(71, 'Solution Demo_71', 'Review', 'Portfolio', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Quartely', 10, 80, 1, 'Product Designer', 0, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Rejected', 'Modify the requirements.'),
(72, 'Solution Demo_72', 'Planning', 'Solution Level', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Weekly', 30, 80, 1, 'Lead Engineer', 1, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Obsoleted', 'Not required.'),
(73, 'Solution Demo_73', 'Status', 'Agile Level', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Once every month', 40, 35, 1, 'Product Manager', 0, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Approved', 'Good'),
(74, 'Solution Demo_74', 'Demo', 'Agile Release Train', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Daily', 50, 120, 1, 'Product Architect', 0, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Proposed', 'Needs review.'),
(75, 'Solution Demo_75', 'Other', 'Solution Train', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Weekly', 15, 120, 1, 'Product Designer', 0, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Rejected', 'Modify the requirements.'),
(76, 'Solution Demo_76', 'Review', 'Solution Level', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Yearly', 60, 120, 1, 'Lead Engineer', 0, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Obsoleted', 'Not required.'),
(77, 'Solution Demo_77', 'Planning', 'Portfolio', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Quartely', 60, 120, 1, 'Product Manager', 1, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Approved', 'Good'),
(78, 'Solution Demo_78', 'Status', 'Solution Level', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Weekly', 60, 60, 1, 'Product Architect', 0, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Approved', 'Needs review.'),
(79, 'Solution Demo_79', 'Demo', 'Agile Level', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Once every month', 30, 40, 1, 'Product Designer', 1, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Proposed', 'Modify the requirements.'),
(8, 'Solution Demo_8', 'Status', 'Agile Release Train', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Daily', 30, 60, 1, 'Lead Engineer', 1, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Rejected', 'Not required.'),
(80, 'Solution Demo_80', 'Other', 'Agile Release Train', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Daily', 20, 120, 1, 'Lead Engineer', 0, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Rejected', 'Not required.'),
(81, 'Solution Demo_81', 'Review', 'Solution Train', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Weekly', 10, 120, 1, 'Product Manager', 0, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Obsoleted', 'Good'),
(82, 'Solution Demo_82', 'Planning', 'Solution Level', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Yearly', 20, 80, 1, 'Product Architect', 1, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Approved', 'Needs review.'),
(83, 'Solution Demo_83', 'Status', 'Portfolio', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Quartely', 40, 80, 1, 'Product Designer', 1, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Approved', 'Modify the requirements.'),
(84, 'Solution Demo_84', 'Demo', 'Solution Level', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Weekly', 50, 35, 1, 'Lead Engineer', 0, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Proposed', 'Not required.'),
(85, 'Solution Demo_85', 'Other', 'Agile Level', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Once every month', 15, 120, 1, 'Product Manager', 1, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Rejected', 'Good'),
(86, 'Solution Demo_86', 'Review', 'Agile Release Train', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Daily', 60, 120, 1, 'Product Architect', 0, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Obsoleted', 'Needs review.'),
(87, 'Solution Demo_87', 'Planning', 'Solution Train', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Weekly', 60, 120, 1, 'Product Designer', 0, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Approved', 'Modify the requirements.'),
(88, 'Solution Demo_88', 'Status', 'Solution Level', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Yearly', 60, 120, 1, 'Lead Engineer', 1, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Approved', 'Not required.'),
(89, 'Solution Demo_89', 'Demo', 'Portfolio', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Quartely', 30, 60, 1, 'Product Manager', 1, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Proposed', 'Good'),
(9, 'Solution Demo_9', 'Demo', 'Solution Train', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Weekly', 20, 40, 1, 'Product Manager', 0, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Obsoleted', 'Good'),
(90, 'Solution Demo_90', 'Other', 'Solution Level', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Weekly', 20, 40, 1, 'Product Architect', 0, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Rejected', 'Needs review.'),
(91, 'Solution Demo_91', 'Review', 'Agile Level', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Once every month', 10, 120, 1, 'Product Designer', 0, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Obsoleted', 'Modify the requirements.'),
(92, 'Solution Demo_92', 'Planning', 'Agile Release Train', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Daily', 60, 120, 1, 'Lead Engineer', 0, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Approved', 'Not required.'),
(93, 'Solution Demo_93', 'Status', 'Solution Train', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Weekly', 40, 80, 1, 'Product Manager', 1, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Approved', 'Good'),
(94, 'Solution Demo_94', 'Demo', 'Solution Level', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Yearly', 50, 80, 1, 'Product Architect', 0, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Proposed', 'Needs review.'),
(95, 'Solution Demo_95', 'Other', 'Portfolio', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Quartely', 15, 35, 1, 'Product Designer', 0, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Rejected', 'Modify the requirements.'),
(96, 'Solution Demo_96', 'Review', 'Solution Level', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Weekly', 60, 120, 1, 'Lead Engineer', 0, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Obsoleted', 'Not required.'),
(97, 'Solution Demo_97', 'Planning', 'Agile Level', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Once every month', 60, 80, 1, 'Product Manager', 1, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Approved', 'Good'),
(98, 'Solution Demo_98', 'Status', 'Agile Release Train', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Daily', 60, 90, 1, 'Product Architect', 1, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Proposed', 'Needs review.'),
(99, 'Solution Demo_99', 'Demo', 'Solution Train', 'blah', 'Release Train engineer', 'Agile Team', 'Business Team', 'Weekly', 60, 120, 1, 'Product Designer', 0, 1, 'https://www.scaledagileframework.com/solution-demo/', 'Rejected', 'Modify the requirements.');

-- --------------------------------------------------------

--
-- Table structure for table `checklists`
--

CREATE TABLE `checklists` (
  `id` int(4) NOT NULL COMMENT 'unique_id',
  `title` varchar(100) NOT NULL,
  `description` varchar(300) DEFAULT NULL,
  `status` varchar(3) NOT NULL COMMENT 'YES, NO, WIP, NA',
  `team_id` varchar(50) NOT NULL,
  `team_name` varchar(55) NOT NULL,
  `ceremony_id` int(5) DEFAULT NULL,
  `ceremony_name` varchar(64) DEFAULT NULL,
  `PI_id` varchar(10) DEFAULT NULL,
  `iteration_id` varchar(10) DEFAULT NULL,
  `links` varchar(200) DEFAULT NULL,
  `comments` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `number` int(10) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `status` varchar(15) DEFAULT NULL,
  `exempt` varchar(10) DEFAULT NULL,
  `work_city` varchar(30) DEFAULT NULL,
  `work_ctry` char(2) DEFAULT NULL,
  `cost_center` varchar(10) DEFAULT NULL,
  `cost_center_manager` varchar(30) DEFAULT NULL,
  `managers_first_name` varchar(30) DEFAULT NULL,
  `managers_last_name` varchar(30) DEFAULT NULL,
  `admin_name` varchar(30) DEFAULT NULL,
  `email_address` varchar(50) DEFAULT NULL,
  `level_3_mgr_last_name` varchar(30) DEFAULT NULL,
  `level_3_mgr_first_name` varchar(30) DEFAULT NULL,
  `primary_project` varchar(50) DEFAULT NULL,
  `secondary_project` varchar(50) DEFAULT NULL,
  `org` varchar(3) NOT NULL,
  `managers_number` varchar(10) NOT NULL,
  `lvl_3_mgr_number` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='This table is used to store Employees';

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`number`, `last_name`, `first_name`, `status`, `exempt`, `work_city`, `work_ctry`, `cost_center`, `cost_center_manager`, `managers_first_name`, `managers_last_name`, `admin_name`, `email_address`, `level_3_mgr_last_name`, `level_3_mgr_first_name`, `primary_project`, `secondary_project`, `org`, `managers_number`, `lvl_3_mgr_number`) VALUES
(1, 'Bradley', 'Ryan', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '01', 'manager 01', 'manager 01'),
(2, 'Tejada', 'Christian', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '02', 'manager 02', 'manager 02'),
(3, 'Flowers', 'Anthony', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '03', 'manager 03', 'manager 03'),
(4, 'Read', 'Mia', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '04', 'manager 04', 'manager 04'),
(5, 'Adams', 'Kristy', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '05', 'manager 05', 'manager 05'),
(6, 'Johnson', 'Mike', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '06', 'manager 06', 'manager 06'),
(7, 'Vanjie', 'Vanessa', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '07', 'manager 07', 'manager 07'),
(8, 'Haydes', 'Brooklyn', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '08', 'manager 08', 'manager 08'),
(9, 'West', 'Nina', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '09', 'manager 09', 'manager 09'),
(10, 'Velour', 'Sasha', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '10', 'manager 10', 'manager 10'),
(11, 'Exchange', 'Monet', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '11', 'manager 11', 'manager 11'),
(12, 'Zamo', 'Katya', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '12', 'manager 12', 'manager 12'),
(13, 'Wentz', 'Pete', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '13', 'manager 13', 'manager 13'),
(14, 'Castillejo', 'Mo', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '14', 'manager 14', 'manager 14'),
(15, 'Mendoza', 'Seth', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '15', 'manager 15', 'manager 15'),
(16, 'Adams', 'Taylor', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '16', 'manager 16', 'manager 16'),
(17, 'Garay', 'Carlos', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '17', 'manager 17', 'manager 17'),
(18, 'Lomeli', 'Edgar', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '18', 'manager 18', 'manager 18'),
(19, 'Vargas', 'Albert', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '19', 'manager 19', 'manager 19'),
(20, 'Cook', 'Doug', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20', 'manager 20', 'manager 20'),
(21, 'Serrato', 'Ben', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '21', 'manager 21', 'manager 21'),
(22, 'Fiske', 'Amanda', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '22', 'manager 22', 'manager 22'),
(23, 'Kampe', 'Chad', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '23', 'manager 23', 'manager 23'),
(24, 'Christmas', 'Shawn', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '24', 'manager 24', 'manager 24'),
(25, 'Wolfe', 'Jonathan', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '25', 'manager 25', 'manager 25'),
(26, 'Stuttgen', 'Oscar', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '26', 'manager 26', 'manager 26'),
(27, 'Ann', 'Bailey', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '27', 'manager 27', 'manager 27'),
(28, 'Odell', 'Kyle', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '28', 'manager 28', 'manager 28'),
(29, 'Farr', 'Shaka', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '29', 'manager 29', 'manager 29'),
(30, 'Porgie', 'Jorgie', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '30', 'manager 30', 'manager 30'),
(31, 'Nguyen', 'Barry', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '31', 'manager 31', 'manager 31'),
(32, 'Anderson', 'Alex', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '32', 'manager 32', 'manager 32'),
(33, 'Virgen', 'Carlos', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '33', 'manager 33', 'manager 33'),
(34, 'Bradley', 'Jake', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '34', 'manager 34', 'manager 34'),
(35, 'Duncan', 'Shaya', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '35', 'manager 35', 'manager 35'),
(36, 'Benton', 'Zach', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '36', 'manager 36', 'manager 36'),
(37, 'Walker', 'Paul', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '37', 'manager 37', 'manager 37'),
(38, 'Coffman', 'Kyle', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '38', 'manager 38', 'manager 38'),
(39, 'Haslerud', 'Glen', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '39', 'manager 39', 'manager 39'),
(40, 'Carline', 'Austin', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '40', 'manager 40', 'manager 40'),
(41, 'Craig', 'Heather', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '41', 'manager 41', 'manager 41'),
(42, 'Hayes', 'Armand', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '42', 'manager 42', 'manager 42'),
(43, 'Singleton', 'Kevin', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '43', 'manager 43', 'manager 43'),
(44, 'DeSantos', 'Charlie', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '44', 'manager 44', 'manager 44'),
(45, 'Taylor', 'Justin', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '45', 'manager 45', 'manager 45'),
(46, 'Bilich', 'Blake', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '46', 'manager 46', 'manager 46'),
(47, 'Nelson', 'Caleb', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '47', 'manager 47', 'manager 47'),
(48, 'Prada', 'Maria', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '48', 'manager 48', 'manager 48'),
(49, 'Robert', 'Dan', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '49', 'manager 49', 'manager 49'),
(50, 'Dean', 'Jeff', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '50', 'manager 50', 'manager 50'),
(51, 'Martin', 'Curtis', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '51', 'manager 51', 'manager 51'),
(52, 'Black', 'Will', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '52', 'manager 52', 'manager 52'),
(53, 'Bernardez', 'Justin', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '53', 'manager 53', 'manager 53'),
(54, 'Schorr', 'Jake', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '54', 'manager 54', 'manager 54'),
(55, 'Greer', 'Brady', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '55', 'manager 55', 'manager 55'),
(56, 'Smith', 'Dionte', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '56', 'manager 56', 'manager 56'),
(57, 'Torres', 'Ricardo', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '57', 'manager 57', 'manager 57'),
(58, 'Olzenak', 'Riley', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '58', 'manager 58', 'manager 58'),
(59, 'Grey', 'Christian', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '59', 'manager 59', 'manager 59'),
(60, 'Otto', 'Alex', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '60', 'manager 60', 'manager 60'),
(61, 'Banwell', 'Chad', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '61', 'manager 61', 'manager 61'),
(62, 'Drew', 'Dan', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '62', 'manager 62', 'manager 62'),
(63, 'Elliott', 'Nick', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '63', 'manager 63', 'manager 63'),
(64, 'Martin', 'Micah', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '64', 'manager 64', 'manager 64'),
(65, 'Reyes', 'Ian', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '65', 'manager 65', 'manager 65'),
(66, 'Anderson', 'Levi', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '66', 'manager 66', 'manager 66'),
(67, 'Talbert', 'Eva', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '67', 'manager 67', 'manager 67'),
(68, 'Bueno', 'Tony', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '68', 'manager 68', 'manager 68'),
(69, 'Sebastian', 'Noah', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '69', 'manager 69', 'manager 69'),
(70, 'Sandberg', 'Alex', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '70', 'manager 70', 'manager 70'),
(71, 'Wolf', 'Jeffrey', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '71', 'manager 71', 'manager 71'),
(72, 'Wright', 'Tai', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '72', 'manager 72', 'manager 72'),
(73, 'Burns', 'Cameron', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '73', 'manager 73', 'manager 73'),
(74, 'Hull', 'Anthony', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '74', 'manager 74', 'manager 74'),
(75, 'Rupar', 'Nikki', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '75', 'manager 75', 'manager 75'),
(76, 'Yang', 'Chong', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '76', 'manager 76', 'manager 76'),
(77, 'Lathan', 'Matt', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '77', 'manager 77', 'manager 77'),
(78, 'Harrold', 'Jordan', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '78', 'manager 78', 'manager 78'),
(79, 'Aegler', 'Michael', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '79', 'manager 79', 'manager 79'),
(80, 'Counters', 'Ben', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '80', 'manager 80', 'manager 80'),
(81, 'Zena', 'Johann', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '81', 'manager 81', 'manager 81'),
(82, 'Morgan', 'Judy', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '82', 'manager 82', 'manager 82'),
(83, 'Leon', 'Ricardo', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '83', 'manager 83', 'manager 83'),
(84, 'Panesso', 'Jayden', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '84', 'manager 84', 'manager 84'),
(85, 'Perna', 'Shelby', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '85', 'manager 85', 'manager 85'),
(86, 'Lucero', 'Jesus', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '86', 'manager 86', 'manager 86'),
(87, 'Penney', 'Zachary', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '87', 'manager 87', 'manager 87'),
(88, 'Edwards', 'Haley', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '88', 'manager 88', 'manager 88'),
(89, 'Hill', 'Joe', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '89', 'manager 89', 'manager 89'),
(90, 'Marsh', 'Miles', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '90', 'manager 90', 'manager 90'),
(91, 'Lewis', 'Ryan', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '91', 'manager 91', 'manager 91'),
(92, 'Richison', 'Jamie', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '92', 'manager 92', 'manager 92'),
(93, 'Osborn', 'Ashley', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '93', 'manager 93', 'manager 93'),
(94, 'Hunter', 'Corbin', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '94', 'manager 94', 'manager 94'),
(95, 'Pham', 'Joey', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '95', 'manager 95', 'manager 95'),
(96, 'Madrigal', 'Alvy', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '96', 'manager 96', 'manager 96'),
(97, 'Brownlee', 'Megan', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '97', 'manager 97', 'manager 97'),
(98, 'Borgen', 'Makayla', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '98', 'manager 98', 'manager 98'),
(99, 'Mielock', 'Amanda', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '99', 'manager 99', 'manager 99'),
(100, 'Marie', 'Jessica', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '100', 'manager 10', 'manager 10'),
(101, 'Tesfa', 'Robbie', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '101', 'manager 10', 'manager 10'),
(102, 'Brute', 'Joe', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '102', 'manager 10', 'manager 10'),
(103, 'Xayana', 'Francis', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '103', 'manager 10', 'manager 10'),
(104, 'Enid', 'Elizabeth', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '104', 'manager 10', 'manager 10'),
(105, 'McGuire', 'Bailey', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '105', 'manager 10', 'manager 10'),
(106, 'Nessi', 'Niq', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '106', 'manager 10', 'manager 10'),
(107, 'Bell', 'Daniel', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '107', 'manager 10', 'manager 10'),
(108, 'Vang', 'Bao', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '108', 'manager 10', 'manager 10'),
(109, 'Davidson', 'Brad', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '109', 'manager 10', 'manager 10'),
(110, 'Hendrickson', 'Alicia', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '110', 'manager 11', 'manager 11'),
(111, 'Doeren', 'Sam', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '111', 'manager 11', 'manager 11'),
(112, 'Romo', 'Johnny', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '112', 'manager 11', 'manager 11'),
(113, 'Swanson', 'Aaron', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '113', 'manager 11', 'manager 11'),
(114, 'Niccum', 'Tyler', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '114', 'manager 11', 'manager 11'),
(115, 'Chayne', 'Lucas', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '115', 'manager 11', 'manager 11'),
(116, 'Tin', 'Toly', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '116', 'manager 11', 'manager 11'),
(117, 'Xiong', 'Nancy', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '117', 'manager 11', 'manager 11'),
(118, 'Nikko', 'Francis', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '118', 'manager 11', 'manager 11'),
(119, 'Farris', 'RJ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '119', 'manager 11', 'manager 11'),
(120, 'Sampson', 'Nick', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '120', 'manager 12', 'manager 12'),
(121, 'Fox', 'Leslie', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '121', 'manager 12', 'manager 12'),
(122, 'Dagen', 'Jamie', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '122', 'manager 12', 'manager 12'),
(123, 'Lo', 'Jason', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '123', 'manager 12', 'manager 12'),
(124, 'Walsh', 'Tawny', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '124', 'manager 12', 'manager 12'),
(125, 'Dunlap', 'Alexis', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '125', 'manager 12', 'manager 12'),
(126, 'Fife', 'Terry', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '126', 'manager 12', 'manager 12');

-- --------------------------------------------------------

--
-- Table structure for table `employee_identification`
--

CREATE TABLE `employee_identification` (
  `tool_id` varchar(25) NOT NULL,
  `name` varchar(255) NOT NULL,
  `division` varchar(255) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `hr_id` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `membership`
--

CREATE TABLE `membership` (
  `art_name` varchar(50) DEFAULT NULL,
  `team_name` varchar(50) NOT NULL,
  `employee_name` varchar(50) NOT NULL,
  `polarion_id` varchar(15) NOT NULL,
  `role` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `membership`
--

INSERT INTO `membership` (`art_name`, `team_name`, `employee_name`, `polarion_id`, `role`) VALUES
('ART-600', '800 Agile Team', 'Bradley Ryan', '1', 'PO'),
('ART-600', '800 Agile Team', 'Tejada Christian', '2', 'SM'),
('ART-600', '800 Agile Team', 'Flowers Anthony', '3', 'Developer'),
('ART-600', '800 Agile Team', 'Read Mia', '4', 'Developer'),
('ART-600', '800 Agile Team', 'Adams Kristy', '5', 'Developer'),
('ART-600', '800 Agile Team', 'Johnson Mike', '6', 'Developer'),
('ART-601', '801 Agile Team', 'Vanjie Vanessa', '1', 'PO'),
('ART-601', '801 Agile Team', 'Haydes Brooklyn', '2', 'SM'),
('ART-601', '801 Agile Team', 'West Nina', '3', 'Developer'),
('ART-601', '801 Agile Team', 'Velour Sasha', '4', 'Developer'),
('ART-601', '801 Agile Team', 'Exchange Monet', '5', 'Developer'),
('ART-601', '801 Agile Team', 'Zamo Katya', '6', 'Developer'),
('ART-601', '802 Agile Team', 'Wentz Pete', '1', 'PO'),
('ART-601', '802 Agile Team', 'Castillejo Mo', '2', 'SM'),
('ART-601', '802 Agile Team', 'Mendoza Seth', '3', 'Developer'),
('ART-601', '802 Agile Team', 'Adams Taylor', '4', 'Developer'),
('ART-601', '802 Agile Team', 'Garay Carlos', '5', 'Developer'),
('ART-601', '802 Agile Team', 'Lomeli Edgar', '6', 'Developer'),
('ART-600', '803 Agile Team', 'Vargas Albert', '1', 'PO'),
('ART-600', '803 Agile Team', 'Cook Doug', '2', 'SM'),
('ART-600', '803 Agile Team', 'Serrato Ben', '3', 'Developer'),
('ART-600', '803 Agile Team', 'Fiske Amanda', '4', 'Developer'),
('ART-600', '803 Agile Team', 'Kampe Chad', '5', 'Developer'),
('ART-600', '803 Agile Team', 'Christmas Shawn', '6', 'Developer'),
('ART-601', '804 Agile Team', 'Wolfe Jonathan', '1', 'PO'),
('ART-601', '804 Agile Team', 'Stuttgen Oscar', '2', 'SM'),
('ART-601', '804 Agile Team', 'Ann Bailey', '3', 'Developer'),
('ART-601', '804 Agile Team', 'Odell Kyle', '4', 'Developer'),
('ART-601', '804 Agile Team', 'Farr Shaka', '5', 'Developer'),
('ART-601', '804 Agile Team', 'Porgie Jorgie', '6', 'Developer'),
('ART-602', '805 Agile Team', 'Robert Dan', '1', 'PO'),
('ART-602', '805 Agile Team', 'Dean Jeff', '2', 'SM'),
('ART-602', '805 Agile Team', 'Martin Curtis', '3', 'Developer'),
('ART-602', '805 Agile Team', 'Black Will', '4', 'Developer'),
('ART-602', '805 Agile Team', 'Bernardez Justin', '5', 'Developer'),
('ART-602', '805 Agile Team', 'Schorr Jake', '6', 'Developer'),
('ART-600', '806 Agile Team', 'Walker Paul', '1', 'PO'),
('ART-600', '806 Agile Team', 'Coffman Kyle', '2', 'SM'),
('ART-600', '806 Agile Team', 'Haslerud Glen', '3', 'Developer'),
('ART-600', '806 Agile Team', 'Carline Austin', '4', 'Developer'),
('ART-600', '806 Agile Team', 'Craig Heather', '5', 'Developer'),
('ART-600', '806 Agile Team', 'Hayes Armand', '6', 'Developer'),
('ART-602', '807 Agile Team', 'Nguyen Barry', '1', 'PO'),
('ART-602', '807 Agile Team', 'Anderson Alex', '2', 'SM'),
('ART-602', '807 Agile Team', 'Virgen Carlos', '3', 'Developer'),
('ART-602', '807 Agile Team', 'Bradley Jake', '4', 'Developer'),
('ART-602', '807 Agile Team', 'Duncan Shaya', '5', 'Developer'),
('ART-602', '807 Agile Team', 'Benton Zach', '6', 'Developer'),
('ART-602', '808 Agile Team', 'Banwell Chad', '1', 'PO'),
('ART-602', '808 Agile Team', 'Drew Dan', '2', 'SM'),
('ART-602', '808 Agile Team', 'Elliott Nick', '3', 'Developer'),
('ART-602', '808 Agile Team', 'Martin Micah', '4', 'Developer'),
('ART-602', '808 Agile Team', 'Reyes Ian', '5', 'Developer'),
('ART-602', '808 Agile Team', 'Anderson Levi', '6', 'Developer'),
('ART-600', '809 Agile Team', 'Greer Brady', '1', 'PO'),
('ART-600', '809 Agile Team', 'Smith Dionte', '2', 'SM'),
('ART-600', '809 Agile Team', 'Torres Ricardo', '3', 'Developer'),
('ART-600', '809 Agile Team', 'Olzenak Riley', '4', 'Developer'),
('ART-600', '809 Agile Team', 'Grey Christian', '5', 'Developer'),
('ART-600', '809 Agile Team', 'Otto Alex', '6', 'Developer'),
('ART-602', '810 Agile Team', 'Singleton Kevin', '1', 'PO'),
('ART-602', '810 Agile Team', 'DeSantos Charlie', '2', 'SM'),
('ART-602', '810 Agile Team', 'Taylor Justin', '3', 'Developer'),
('ART-602', '810 Agile Team', 'Bilich Blake', '4', 'Developer'),
('ART-602', '810 Agile Team', 'Nelson Caleb', '5', 'Developer'),
('ART-602', '810 Agile Team', 'Prada Maria', '6', 'Developer'),
('ART-500', 'Agile Team 1000 1', 'Talbert Eva', '1', 'PO'),
('ART-500', 'Agile Team 1000 1', 'Bueno Tony', '2', 'SM'),
('ART-500', 'Agile Team 1000 1', 'Sebastian Noah', '3', 'Developer'),
('ART-500', 'Agile Team 1000 1', 'Sandberg Alex', '4', 'Developer'),
('ART-500', 'Agile Team 1000 1', 'Wolf Jeffrey', '5', 'Developer'),
('ART-500', 'Agile Team 1000 1', 'Wright Tai', '6', 'Developer'),
('ART-504', 'Agile Team 1000 10', 'Lewis Ryan', '1', 'PO'),
('ART-504', 'Agile Team 1000 10', 'Richison Jamie', '2', 'SM'),
('ART-504', 'Agile Team 1000 10', 'Osborn Ashley', '3', 'Developer'),
('ART-504', 'Agile Team 1000 10', 'Hunter Corbin', '4', 'Developer'),
('ART-504', 'Agile Team 1000 10', 'Pham Joey', '5', 'Developer'),
('ART-504', 'Agile Team 1000 10', 'Madrigal Alvy', '6', 'Developer'),
('ART-501', 'Agile Team 1000 2', 'Burns Cameron', '1', 'PO'),
('ART-501', 'Agile Team 1000 2', 'Hull Anthony', '2', 'SM'),
('ART-501', 'Agile Team 1000 2', 'Rupar Nikki', '3', 'Developer'),
('ART-501', 'Agile Team 1000 2', 'Yang Chong', '4', 'Developer'),
('ART-501', 'Agile Team 1000 2', 'Lathan Matt', '5', 'Developer'),
('ART-501', 'Agile Team 1000 2', 'Harrold Jordan', '6', 'Developer'),
('ART-502', 'Agile Team 1000 3', 'Davidson Brad', '1', 'PO'),
('ART-502', 'Agile Team 1000 3', 'Hendrickson Alicia', '2', 'SM'),
('ART-502', 'Agile Team 1000 3', 'Doeren Sam', '3', 'Developer'),
('ART-502', 'Agile Team 1000 3', 'Romo Johnny', '4', 'Developer'),
('ART-502', 'Agile Team 1000 3', 'Swanson Aaron', '5', 'Developer'),
('ART-502', 'Agile Team 1000 3', 'Niccum Tyler', '6', 'Developer'),
('ART-503', 'Agile Team 1000 4', 'Perna Shelby', '1', 'PO'),
('ART-503', 'Agile Team 1000 4', 'Lucero Jesus', '2', 'SM'),
('ART-503', 'Agile Team 1000 4', 'Penney Zachary', '3', 'Developer'),
('ART-503', 'Agile Team 1000 4', 'Edwards Haley', '4', 'Developer'),
('ART-503', 'Agile Team 1000 4', 'Hill Joe', '5', 'Developer'),
('ART-503', 'Agile Team 1000 4', 'Marsh Miles', '6', 'Developer'),
('ART-504', 'Agile Team 1000 5', 'Fox Leslie', '1', 'PO'),
('ART-504', 'Agile Team 1000 5', 'Dagen Jamie', '2', 'SM'),
('ART-504', 'Agile Team 1000 5', 'Lo Jason', '3', 'Developer'),
('ART-504', 'Agile Team 1000 5', 'Walsh Tawny', '4', 'Developer'),
('ART-504', 'Agile Team 1000 5', 'Dunlap Alexis', '5', 'Developer'),
('ART-504', 'Agile Team 1000 5', 'Fife Terry', '6', 'Developer'),
('ART-500', 'Agile Team 1000 6', 'Brownlee Megan', '1', 'PO'),
('ART-500', 'Agile Team 1000 6', 'Borgen Makayla', '2', 'SM'),
('ART-500', 'Agile Team 1000 6', 'Mielock Amanda', '3', 'Developer'),
('ART-500', 'Agile Team 1000 6', 'Marie Jessica', '4', 'Developer'),
('ART-500', 'Agile Team 1000 6', 'Tesfa Robbie', '5', 'Developer'),
('ART-500', 'Agile Team 1000 6', 'Brute Joe', '6', 'Developer'),
('ART-501', 'Agile Team 1000 7', 'Xayana Francis', '1', 'PO'),
('ART-501', 'Agile Team 1000 7', 'Enid Elizabeth', '2', 'SM'),
('ART-501', 'Agile Team 1000 7', 'McGuire Bailey', '3', 'Developer'),
('ART-501', 'Agile Team 1000 7', 'Nessi Niq', '4', 'Developer'),
('ART-501', 'Agile Team 1000 7', 'Bell Daniel', '5', 'Developer'),
('ART-501', 'Agile Team 1000 7', 'Vang Bao', '6', 'Developer'),
('ART-502', 'Agile Team 1000 8', 'Aegler Michael', '1', 'PO'),
('ART-502', 'Agile Team 1000 8', 'Counters Ben', '2', 'SM'),
('ART-502', 'Agile Team 1000 8', 'Zena Johann', '3', 'Developer'),
('ART-502', 'Agile Team 1000 8', 'Morgan Judy', '4', 'Developer'),
('ART-502', 'Agile Team 1000 8', 'Leon Ricardo', '5', 'Developer'),
('ART-502', 'Agile Team 1000 8', 'Panesso Jayden', '6', 'Developer'),
('ART-503', 'Agile Team 1000 9', 'Chayne Lucas', '1', 'PO'),
('ART-503', 'Agile Team 1000 9', 'Tin Toly', '2', 'SM'),
('ART-503', 'Agile Team 1000 9', 'Xiong Nancy', '3', 'Developer'),
('ART-503', 'Agile Team 1000 9', 'Nikko Francis', '4', 'Developer'),
('ART-503', 'Agile Team 1000 9', 'Farris RJ', '5', 'Developer'),
('ART-503', 'Agile Team 1000 9', 'Sampson Nick', '6', 'Developer');

-- --------------------------------------------------------

--
-- Table structure for table `preferences`
--

CREATE TABLE `preferences` (
  `id` int(2) NOT NULL,
  `name` varchar(40) NOT NULL,
  `value` varchar(50) NOT NULL,
  `comments` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='for storing model and UI preferences';

--
-- Dumping data for table `preferences`
--

INSERT INTO `preferences` (`id`, `name`, `value`, `comments`) VALUES
(1, 'OVERHEAD_PERCENTAGE', '20', ''),
(2, 'AGILE_TEAM_MEMBER_ALLOCATION', '100', ''),
(3, 'PRODUCT_OWNER_ALLOCATION', '50', ''),
(4, 'SCRUM_MASTER_ALLOCATION', '50', ''),
(5, 'UPDATE_DEFAULT_CAPACITY', '1', '(0 is false; 1 is true)'),
(6, 'ART_SIZE_TEAMS_MIN_SAFE', '5', ''),
(7, 'ART_SIZE_TEAMS_MIN_ORG', '3', ''),
(8, 'ART_SIZE_TEAMS_MAX_SAFE', '9', ''),
(9, 'ART_SIZE_TEAMS_MAX_ORG', '15', ''),
(10, 'ART_SIZE_TEAM_MEMBERS_MIN_SAFE', '50', ''),
(11, 'ART_SIZE_TEAM_MEMBERS_MIN_ORG', '20', ''),
(12, 'ART_SIZE_TEAM_MEMBERS_MAX_SAFE', '125', ''),
(13, 'ART_SIZE_TEAM_MEMBERS_MAX_SAFE', '150', ''),
(14, 'PI_DURATION_WEEKS_MIN_SAFE', '8', ''),
(15, 'PI_DURATION_WEEKS_MIN_ORG', '12', ''),
(16, 'PI_DURATION_WEEKS_MAX_SAFE', '12', ''),
(17, 'PI_DURATION_WEEKS_MAX_ORG', '12', ''),
(18, 'NUMBER_OF_ITERATIONS_MIN_SAFE', '4', ''),
(19, 'NUMBER_OF_ITERATIONS_MIN_ORG', '6', ''),
(20, 'NUMBER_OF_ITERATIONS_MAX_SAFE', '6', ''),
(21, 'NUMBER_OF_ITERATIONS_MAX_ORG', '6', ''),
(22, 'DEVELOPER_IN_MULTIPLE_TEAMS_SAFE', 'FALSE', ''),
(23, 'DEVELOPER_IN_MULTIPLE_TEAMS_ORG', 'FALSE', ''),
(24, 'SCRUM_MASTER_SUPPORTS_MULTIPLE_TEAMS_SAF', 'TRUE', ''),
(25, 'SCRUM_MASTER_SUPPORTS_MULTIPLE_TEAMS_ORG', 'TRUE', ''),
(26, 'PRODUCT_OWNER_SUPPORTS_MULTIPLE_TEAMS_SA', 'TRUE', ''),
(27, 'PRODUCT_OWNER_SUPPORTS_MULTIPLE_TEAMS_OR', 'TRUE', ''),
(28, 'BASE_URL', 'https://metro', ''),
(29, 'DEFAULT_ART', 'ART-602', '');

-- --------------------------------------------------------

--
-- Stand-in structure for view `team_with_parent`
-- (See below for the actual view)
--
CREATE TABLE `team_with_parent` (
`team_name` varchar(55)
,`parent_name` varchar(55)
,`total` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `training_calendar`
--

CREATE TABLE `training_calendar` (
  `training_id` varchar(30) NOT NULL,
  `course_name` varchar(40) NOT NULL,
  `course_code` varchar(5) NOT NULL,
  `trainer_number` varchar(10) NOT NULL,
  `trainer_last_name` varchar(30) NOT NULL,
  `trainer_first_name` varchar(30) NOT NULL,
  `location` varchar(30) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `no_of_days` int(2) NOT NULL,
  `status` varchar(10) NOT NULL,
  `cost` int(5) NOT NULL,
  `comments` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `training_enrollment`
--

CREATE TABLE `training_enrollment` (
  `enrollment_no` int(5) NOT NULL,
  `training_id` varchar(30) NOT NULL,
  `employee_email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='For storing the enrollments (to be uploaded after each training)';

-- --------------------------------------------------------

--
-- Table structure for table `trains_and_teams`
--

CREATE TABLE `trains_and_teams` (
  `team_id` varchar(50) NOT NULL,
  `team_name` varchar(55) NOT NULL,
  `parent_name` varchar(55) DEFAULT NULL,
  `type` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trains_and_teams`
--

INSERT INTO `trains_and_teams` (`team_id`, `team_name`, `parent_name`, `type`) VALUES
(' AT-700 ', ' Agile Team 700 ', 'ART-400', ' AT'),
(' AT-701 ', ' Agile Team 701 ', 'ART-400', ' AT'),
(' AT-702 ', ' Agile Team 702 ', 'ART-401', ' AT'),
(' AT-703 ', ' Agile Team 703 ', 'ART-401', ' AT'),
(' AT-704 ', ' Agile Team 704 ', 'ART-402', ' AT'),
(' AT-705 ', ' Agile Team 705 ', 'ART-403', ' AT'),
(' AT-706 ', ' Agile Team 706 ', 'ART-403', ' AT'),
(' AT-707 ', ' Agile Team 707 ', 'ART-403', ' AT'),
(' AT-708 ', ' Agile Team 708 ', 'ART-403', ' AT'),
(' AT-709 ', ' Agile Team 709 ', 'ART-404', ' AT'),
(' AT-710 ', ' Agile Team 710 ', 'ART-405', ' AT'),
('ART-400', 'Agile Release Train  400 (ST100)', 'ST-100', 'ART'),
('ART-401', 'Agile Release Train  401 (ST100)', 'ST-100', 'ART'),
('ART-402', 'Agile Release Train  402 (ST100)', 'ST-100', 'ART'),
('ART-403', 'Agile Release Train  403 (ST100)', 'ST-100', 'ART'),
('ART-404', 'Agile Release Train  404 (ST100)', 'ST-100', 'ART'),
('ART-405', 'Agile Release Train  405 (ST100) XYZ', 'ST-100', 'ART'),
('ART-500', 'Agile Release Train  500 (ST200)', 'ST-200', 'ART'),
('ART-501', 'Agile Release Train  501 (ST200)', 'ST-200', 'ART'),
('ART-502', 'Agile Release Train  502 (ST200)', 'ST-200', 'ART'),
('ART-503', 'Agile Release Train  503 (ST200)', 'ST-200', 'ART'),
('ART-504', 'Agile Release Train  504 (ST200)', 'ST-200', 'ART'),
('ART-600', 'Agile Release Train  600 (ST300)', 'ST-300', 'ART'),
('ART-601', 'Agile Release Train  601 (ST300)', 'ST-300', 'ART'),
('ART-602', 'Agile Release Train  602 (ST300)', 'ST-300', 'ART'),
('AT-800', '800 Agile Team', 'ART-600', 'AT'),
('AT-801', '801 Agile Team', 'ART-601', 'AT'),
('AT-802', '802 Agile Team', 'ART-601', 'AT'),
('AT-803', '803 Agile Team', 'ART-600', 'AT'),
('AT-804', '804 Agile Team', 'ART-601', 'AT'),
('AT-805', '805 Agile Team', 'ART-602', 'AT'),
('AT-806', '806 Agile Team', 'ART-600', 'AT'),
('AT-807', '807 Agile Team', 'ART-602', 'AT'),
('AT-808', '808 Agile Team', 'ART-602', 'AT'),
('AT-809', '809 Agile Team', 'ART-600', 'AT'),
('AT-810', '810 Agile Team', 'ART-602', 'AT'),
('AT-abc1', 'Agile Team 1000 1', 'ART-500', 'AT'),
('AT-abc10', 'Agile Team 1000 10', 'ART-504', 'AT'),
('AT-abc2', 'Agile Team 1000 2', 'ART-501', 'AT'),
('AT-abc3', 'Agile Team 1000 3', 'ART-502', 'AT'),
('AT-abc4', 'Agile Team 1000 4', 'ART-503', 'AT'),
('AT-abc5', 'Agile Team 1000 5', 'ART-504', 'AT'),
('AT-abc6', 'Agile Team 1000 6', 'ART-500', 'AT'),
('AT-abc7', 'Agile Team 1000 7', 'ART-501', 'AT'),
('AT-abc8', 'Agile Team 1000 8', 'ART-502', 'AT'),
('AT-abc9', 'Agile Team 1000 9', 'ART-503', 'AT'),
('ST-100', 'Solution Train 100', 'NA', 'ST'),
('ST-200', 'Solution Train 200', 'NA', 'ST'),
('ST-300', 'Solution Train 300', 'NA', 'ST');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `hash` varchar(32) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `role` varchar(32) NOT NULL DEFAULT 'USER',
  `ModifiedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CreatedTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `hash`, `active`, `role`, `ModifiedTime`, `CreatedTime`) VALUES
(31, 'MASTER', 'ADMIN', 'siva.jasthi@metrostate.edu', '5b4da3d47ec8dbdffbd5eea70a28d8', 1, 'SUPER-ADMIN', '2019-02-06 18:52:04', '0000-00-00 00:00:00'),
(67, 'Test', 'User', 'user@test.com', '5b4da3d47ec8dbdffbd5eea70a28d832', 1, 'SUPER-ADMIN', '2018-05-30 18:01:28', '0000-00-00 00:00:00'),
(68, 'Test', 'User', 'test_admin@google.com', 'bf6f61616471c7d836e437301252d062', 1, 'SUPER-ADMIN', '2019-02-06 18:52:41', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure for view `team_with_parent`
--
DROP TABLE IF EXISTS `team_with_parent`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `team_with_parent`  AS  select `t`.`team_name` AS `team_name`,`t`.`parent_name` AS `parent_name`,`c`.`total` AS `total` from ((`trains_and_teams` `t` join `trains_and_teams` `t2`) join `capacity` `c`) where ((`t`.`parent_name` = `t2`.`team_id`) and (`t`.`team_name` = `c`.`team_name`) and (`t`.`type` = 'AT')) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cadence`
--
ALTER TABLE `cadence`
  ADD PRIMARY KEY (`sequence`);

--
-- Indexes for table `capacity`
--
ALTER TABLE `capacity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ceremonies`
--
ALTER TABLE `ceremonies`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `checklists`
--
ALTER TABLE `checklists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`number`);

--
-- Indexes for table `employee_identification`
--
ALTER TABLE `employee_identification`
  ADD PRIMARY KEY (`email_address`);

--
-- Indexes for table `membership`
--
ALTER TABLE `membership`
  ADD PRIMARY KEY (`team_name`,`polarion_id`,`role`);

--
-- Indexes for table `preferences`
--
ALTER TABLE `preferences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `training_calendar`
--
ALTER TABLE `training_calendar`
  ADD PRIMARY KEY (`training_id`);

--
-- Indexes for table `training_enrollment`
--
ALTER TABLE `training_enrollment`
  ADD PRIMARY KEY (`enrollment_no`);

--
-- Indexes for table `trains_and_teams`
--
ALTER TABLE `trains_and_teams`
  ADD PRIMARY KEY (`team_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cadence`
--
ALTER TABLE `cadence`
  MODIFY `sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `capacity`
--
ALTER TABLE `capacity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=295;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
