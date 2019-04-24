-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 24, 2019 at 12:18 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.39

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
  `iteration_P` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `capacity`
--

INSERT INTO `capacity` (`id`, `team_id`, `team_name`, `program_increment`, `iteration_1`, `iteration_2`, `iteration_3`, `iteration_4`, `iteration_5`, `iteration_6`, `iteration_P`, `total`) VALUES
(1, 'AT-800', '800 Agile Team', 'PI-1902', 32, 28, 32, 24, 32, 28, 28, 176),
(2, 'AT-801', '801 Agile Team', 'PI-1902', 28, 32, 24, 32, 28, 32, 32, 176),
(3, 'AT-802', '802 Agile Team', 'PI-1902', 32, 24, 32, 28, 32, 32, 24, 180),
(4, 'AT-803', '803 Agile Team', 'PI-1902', 24, 28, 28, 32, 32, 24, 28, 168),
(5, 'AT-804', '804 Agile Team', 'PI-1902', 24, 28, 32, 32, 24, 32, 28, 172),
(6, 'AT-805', '805 Agile Team', 'PI-1902', 28, 24, 32, 24, 32, 32, 24, 172),
(7, 'AT-806', '806 Agile Team', 'PI-1902', 32, 28, 24, 32, 32, 32, 28, 180),
(8, 'AT-807', '807 Agile Team', 'PI-1902', 32, 32, 28, 32, 28, 32, 32, 184),
(9, 'AT-808', '808 Agile Team', 'PI-1902', 32, 32, 32, 28, 32, 24, 32, 180),
(10, 'AT-809', '809 Agile Team', 'PI-1902', 32, 32, 28, 24, 28, 32, 32, 176),
(11, 'AT-810', '810 Agile Team', 'PI-1902', 32, 32, 24, 32, 24, 28, 32, 172),
(12, 'AT-abc1', 'Agile Team 1000 1', 'PI-1902', 32, 32, 28, 32, 28, 32, 32, 184),
(13, 'AT-abc10', 'Agile Team 1000 10', 'PI-1902', 24, 28, 32, 28, 32, 32, 28, 176),
(14, 'AT-abc2', 'Agile Team 1000 2', 'PI-1902', 32, 32, 28, 32, 28, 28, 32, 180),
(15, 'AT-abc3', 'Agile Team 1000 3', 'PI-1902', 32, 28, 24, 32, 32, 32, 28, 180),
(16, 'AT-abc4', 'Agile Team 1000 4', 'PI-1902', 28, 32, 32, 24, 32, 32, 32, 180),
(17, 'AT-abc5', 'Agile Team 1000 5', 'PI-1902', 32, 28, 28, 28, 32, 32, 28, 180),
(18, 'AT-abc6', 'Agile Team 1000 6', 'PI-1902', 32, 32, 28, 32, 24, 32, 32, 180),
(19, 'AT-abc7', 'Agile Team 1000 7', 'PI-1902', 32, 32, 32, 28, 28, 24, 32, 176),
(20, 'AT-abc8', 'Agile Team 1000 8', 'PI-1902', 32, 32, 28, 32, 28, 24, 32, 176),
(21, 'AT-abc9', 'Agile Team 1000 9', 'PI-1902', 32, 32, 32, 28, 32, 28, 32, 184),
(22, 'AT-800', '800 Agile Team', 'PI-1902', 32, 28, 32, 24, 32, 28, 28, 176),
(23, 'AT-801', '801 Agile Team', 'PI-1902', 28, 32, 24, 32, 28, 32, 32, 176),
(24, 'AT-802', '802 Agile Team', 'PI-1902', 32, 24, 32, 28, 32, 32, 24, 180),
(25, 'AT-803', '803 Agile Team', 'PI-1902', 24, 28, 28, 32, 32, 24, 28, 168),
(26, 'AT-804', '804 Agile Team', 'PI-1902', 24, 28, 32, 32, 24, 32, 28, 172),
(27, 'AT-805', '805 Agile Team', 'PI-1902', 28, 24, 32, 24, 32, 32, 24, 172),
(28, 'AT-806', '806 Agile Team', 'PI-1902', 32, 28, 24, 32, 32, 32, 28, 180),
(29, 'AT-807', '807 Agile Team', 'PI-1902', 32, 32, 28, 32, 28, 32, 32, 184),
(30, 'AT-808', '808 Agile Team', 'PI-1902', 32, 32, 32, 28, 32, 24, 32, 180),
(31, 'AT-809', '809 Agile Team', 'PI-1902', 32, 32, 28, 24, 28, 32, 32, 176),
(32, 'AT-810', '810 Agile Team', 'PI-1902', 32, 32, 24, 32, 24, 28, 32, 172),
(33, 'AT-abc1', 'Agile Team 1000 1', 'PI-1902', 32, 32, 28, 32, 28, 32, 32, 184),
(34, 'AT-abc10', 'Agile Team 1000 10', 'PI-1902', 24, 28, 32, 28, 32, 32, 28, 176),
(35, 'AT-abc2', 'Agile Team 1000 2', 'PI-1902', 32, 32, 28, 32, 28, 28, 32, 180),
(36, 'AT-abc3', 'Agile Team 1000 3', 'PI-1902', 32, 28, 24, 32, 32, 32, 28, 180),
(37, 'AT-abc4', 'Agile Team 1000 4', 'PI-1902', 28, 32, 32, 24, 32, 32, 32, 180),
(38, 'AT-abc5', 'Agile Team 1000 5', 'PI-1902', 32, 24, 32, 28, 32, 32, 24, 180),
(39, 'AT-abc6', 'Agile Team 1000 6', 'PI-1902', 24, 28, 28, 32, 32, 24, 28, 168),
(40, 'AT-abc7', 'Agile Team 1000 7', 'PI-1902', 24, 28, 32, 32, 24, 32, 28, 172),
(41, 'AT-abc8', 'Agile Team 1000 8', 'PI-1902', 28, 24, 32, 24, 32, 32, 24, 172),
(42, 'AT-abc9', 'Agile Team 1000 9', 'PI-1902', 32, 28, 24, 32, 32, 32, 28, 180),
(43, 'AT-800', '800 Agile Team', 'PI-1902', 32, 32, 28, 32, 28, 32, 32, 184),
(44, 'AT-801', '801 Agile Team', 'PI-1902', 28, 32, 32, 24, 32, 32, 32, 180),
(45, 'AT-802', '802 Agile Team', 'PI-1902', 32, 24, 32, 28, 32, 32, 24, 180),
(46, 'AT-803', '803 Agile Team', 'PI-1902', 24, 28, 28, 32, 32, 24, 28, 168),
(47, 'AT-804', '804 Agile Team', 'PI-1902', 24, 28, 32, 32, 24, 32, 28, 172),
(48, 'AT-805', '805 Agile Team', 'PI-1902', 28, 24, 32, 24, 32, 32, 24, 172),
(49, 'AT-806', '806 Agile Team', 'PI-1902', 32, 28, 24, 32, 32, 32, 28, 180),
(50, 'AT-807', '807 Agile Team', 'PI-1902', 32, 32, 28, 32, 28, 32, 32, 184),
(51, 'AT-808', '808 Agile Team', 'PI-1902', 32, 32, 28, 24, 28, 32, 32, 176),
(52, 'AT-809', '809 Agile Team', 'PI-1902', 32, 32, 24, 32, 24, 28, 32, 172),
(53, 'AT-810', '810 Agile Team', 'PI-1902', 32, 32, 28, 32, 28, 32, 32, 184),
(54, 'AT-abc1', 'Agile Team 1000 1', 'PI-1902', 24, 28, 32, 28, 32, 32, 28, 176),
(55, 'AT-abc10', 'Agile Team 1000 10', 'PI-1902', 32, 32, 28, 32, 28, 28, 32, 180),
(56, 'AT-abc2', 'Agile Team 1000 2', 'PI-1902', 32, 28, 24, 32, 32, 32, 28, 180),
(57, 'AT-abc3', 'Agile Team 1000 3', 'PI-1902', 28, 32, 32, 24, 32, 32, 32, 180),
(58, 'AT-abc4', 'Agile Team 1000 4', 'PI-1902', 28, 32, 24, 32, 28, 32, 32, 176),
(59, 'AT-abc5', 'Agile Team 1000 5', 'PI-1902', 32, 24, 32, 28, 32, 32, 24, 180),
(60, 'AT-abc6', 'Agile Team 1000 6', 'PI-1902', 24, 28, 28, 32, 32, 24, 28, 168),
(61, 'AT-abc7', 'Agile Team 1000 7', 'PI-1902', 24, 28, 32, 32, 24, 32, 28, 172),
(62, 'AT-abc8', 'Agile Team 1000 8', 'PI-1902', 28, 24, 32, 24, 32, 32, 24, 172),
(63, 'AT-abc9', 'Agile Team 1000 9', 'PI-1902', 32, 28, 24, 32, 32, 32, 28, 180),
(64, 'AT-800', '800 Agile Team', 'PI-1902', 32, 32, 28, 32, 28, 32, 32, 184),
(65, 'AT-801', '801 Agile Team', 'PI-1902', 32, 32, 32, 28, 32, 24, 32, 180),
(66, 'AT-802', '802 Agile Team', 'PI-1902', 32, 32, 28, 24, 28, 32, 32, 176),
(67, 'AT-803', '803 Agile Team', 'PI-1902', 32, 32, 24, 32, 24, 28, 32, 172),
(68, 'AT-804', '804 Agile Team', 'PI-1902', 32, 32, 28, 32, 28, 32, 32, 184),
(69, 'AT-805', '805 Agile Team', 'PI-1902', 24, 28, 32, 28, 32, 32, 28, 176),
(70, 'AT-806', '806 Agile Team', 'PI-1902', 32, 32, 28, 32, 28, 28, 32, 180),
(71, 'AT-807', '807 Agile Team', 'PI-1902', 32, 28, 24, 32, 32, 32, 28, 180),
(72, 'AT-808', '808 Agile Team', 'PI-1902', 28, 32, 32, 24, 32, 32, 32, 180),
(73, 'AT-809', '809 Agile Team', 'PI-1902', 28, 32, 32, 24, 32, 32, 32, 180),
(74, 'AT-810', '810 Agile Team', 'PI-1902', 32, 24, 32, 28, 32, 32, 24, 180),
(75, 'AT-abc1', 'Agile Team 1000 1', 'PI-1902', 24, 28, 28, 32, 32, 24, 28, 168),
(76, 'AT-abc10', 'Agile Team 1000 10', 'PI-1902', 24, 28, 32, 32, 24, 32, 28, 172),
(77, 'AT-abc2', 'Agile Team 1000 2', 'PI-1902', 28, 24, 32, 24, 32, 32, 24, 172),
(78, 'AT-abc3', 'Agile Team 1000 3', 'PI-1902', 32, 28, 24, 32, 32, 32, 28, 180),
(79, 'AT-abc4', 'Agile Team 1000 4', 'PI-1902', 32, 32, 28, 32, 28, 32, 32, 184),
(80, 'AT-abc5', 'Agile Team 1000 5', 'PI-1902', 28, 32, 24, 32, 28, 32, 32, 176),
(81, 'AT-abc6', 'Agile Team 1000 6', 'PI-1902', 32, 24, 32, 28, 32, 32, 24, 180),
(82, 'AT-abc7', 'Agile Team 1000 7', 'PI-1902', 24, 28, 28, 32, 32, 24, 28, 168),
(83, 'AT-abc8', 'Agile Team 1000 8', 'PI-1902', 24, 28, 32, 32, 24, 32, 28, 172),
(84, 'AT-abc9', 'Agile Team 1000 9', 'PI-1902', 28, 24, 32, 24, 32, 32, 24, 172),
(85, 'AT-800', '800 Agile Team', 'PI-1902', 32, 28, 24, 32, 32, 32, 28, 180),
(86, 'AT-801', '801 Agile Team', 'PI-1902', 32, 32, 28, 32, 28, 32, 32, 184),
(87, 'AT-802', '802 Agile Team', 'PI-1902', 32, 28, 32, 24, 32, 28, 28, 176),
(88, 'AT-803', '803 Agile Team', 'PI-1902', 28, 32, 24, 32, 28, 32, 32, 176),
(89, 'AT-804', '804 Agile Team', 'PI-1902', 32, 24, 32, 28, 32, 32, 24, 180),
(90, 'AT-805', '805 Agile Team', 'PI-1902', 24, 28, 28, 32, 32, 24, 28, 168),
(91, 'AT-806', '806 Agile Team', 'PI-1902', 24, 28, 32, 32, 24, 32, 28, 172),
(92, 'AT-807', '807 Agile Team', 'PI-1902', 28, 24, 32, 24, 32, 32, 24, 172),
(93, 'AT-808', '808 Agile Team', 'PI-1902', 32, 28, 24, 32, 32, 32, 28, 180),
(94, 'AT-809', '809 Agile Team', 'PI-1902', 32, 32, 28, 32, 28, 32, 32, 184),
(95, 'AT-810', '810 Agile Team', 'PI-1902', 32, 28, 32, 24, 32, 28, 28, 176),
(96, 'AT-abc1', 'Agile Team 1000 1', 'PI-1902', 28, 32, 24, 32, 28, 32, 32, 176),
(97, 'AT-abc10', 'Agile Team 1000 10', 'PI-1902', 32, 24, 32, 28, 32, 32, 24, 180),
(98, 'AT-abc2', 'Agile Team 1000 2', 'PI-1902', 24, 28, 28, 32, 32, 24, 28, 168),
(99, 'AT-abc3', 'Agile Team 1000 3', 'PI-1902', 24, 28, 32, 32, 24, 32, 28, 172),
(100, 'AT-abc4', 'Agile Team 1000 4', 'PI-1902', 28, 24, 32, 24, 32, 32, 24, 172),
(101, 'AT-abc5', 'Agile Team 1000 5', 'PI-1902', 32, 28, 24, 32, 32, 32, 28, 180),
(102, 'AT-abc6', 'Agile Team 1000 6', 'PI-1902', 32, 32, 28, 32, 28, 32, 32, 184),
(103, 'AT-abc7', 'Agile Team 1000 7', 'PI-1902', 32, 32, 32, 28, 32, 24, 32, 180),
(104, 'AT-abc8', 'Agile Team 1000 8', 'PI-1902', 32, 32, 28, 24, 28, 32, 32, 176),
(105, 'AT-abc9', 'Agile Team 1000 9', 'PI-1902', 32, 32, 24, 32, 24, 28, 32, 172),
(106, 'AT-800', '800 Agile Team', 'PI-1902', 32, 32, 28, 32, 28, 32, 32, 184),
(107, 'AT-801', '801 Agile Team', 'PI-1902', 24, 28, 32, 28, 32, 32, 28, 176),
(108, 'AT-802', '802 Agile Team', 'PI-1902', 32, 32, 28, 32, 28, 28, 32, 180),
(109, 'AT-803', '803 Agile Team', 'PI-1902', 32, 28, 24, 32, 32, 32, 28, 180),
(110, 'AT-804', '804 Agile Team', 'PI-1902', 28, 32, 32, 24, 32, 32, 32, 180),
(111, 'AT-805', '805 Agile Team', 'PI-1902', 32, 28, 28, 28, 32, 32, 28, 180),
(112, 'AT-806', '806 Agile Team', 'PI-1902', 32, 32, 28, 32, 24, 32, 32, 180),
(113, 'AT-807', '807 Agile Team', 'PI-1902', 32, 32, 32, 28, 28, 24, 32, 176),
(114, 'AT-808', '808 Agile Team', 'PI-1902', 32, 32, 28, 32, 28, 24, 32, 176),
(115, 'AT-809', '809 Agile Team', 'PI-1902', 32, 32, 32, 28, 32, 28, 32, 184),
(116, 'AT-810', '810 Agile Team', 'PI-1902', 32, 28, 32, 24, 32, 28, 28, 176),
(117, 'AT-abc1', 'Agile Team 1000 1', 'PI-1902', 28, 32, 24, 32, 28, 32, 32, 176),
(118, 'AT-abc10', 'Agile Team 1000 10', 'PI-1902', 32, 24, 32, 28, 32, 32, 24, 180),
(119, 'AT-abc2', 'Agile Team 1000 2', 'PI-1902', 24, 28, 28, 32, 32, 24, 28, 168),
(120, 'AT-abc3', 'Agile Team 1000 3', 'PI-1902', 24, 28, 32, 32, 24, 32, 28, 172),
(121, 'AT-abc4', 'Agile Team 1000 4', 'PI-1902', 28, 24, 32, 24, 32, 32, 24, 172),
(122, 'AT-abc5', 'Agile Team 1000 5', 'PI-1902', 32, 28, 24, 32, 32, 32, 28, 180),
(123, 'AT-abc6', 'Agile Team 1000 6', 'PI-1902', 32, 32, 28, 32, 28, 32, 32, 184),
(124, 'AT-abc7', 'Agile Team 1000 7', 'PI-1902', 32, 32, 32, 28, 32, 24, 32, 180),
(125, 'AT-abc8', 'Agile Team 1000 8', 'PI-1902', 32, 32, 28, 24, 28, 32, 32, 176),
(126, 'AT-abc9', 'Agile Team 1000 9', 'PI-1902', 32, 32, 24, 32, 24, 28, 32, 172),
(127, 'AT-800', '800 Agile Team', 'PI-1902', 32, 32, 28, 32, 28, 32, 32, 184),
(128, 'AT-801', '801 Agile Team', 'PI-1902', 24, 28, 32, 28, 32, 32, 28, 176),
(129, 'AT-802', '802 Agile Team', 'PI-1902', 32, 32, 28, 32, 28, 28, 32, 180),
(130, 'AT-803', '803 Agile Team', 'PI-1902', 32, 28, 24, 32, 32, 32, 28, 180),
(131, 'AT-804', '804 Agile Team', 'PI-1902', 28, 32, 32, 24, 32, 32, 32, 180),
(132, 'AT-805', '805 Agile Team', 'PI-1902', 32, 24, 32, 28, 32, 32, 24, 180),
(133, 'AT-806', '806 Agile Team', 'PI-1902', 24, 28, 28, 32, 32, 24, 28, 168),
(134, 'AT-807', '807 Agile Team', 'PI-1902', 24, 28, 32, 32, 24, 32, 28, 172),
(135, 'AT-808', '808 Agile Team', 'PI-1902', 28, 24, 32, 24, 32, 32, 24, 172),
(136, 'AT-809', '809 Agile Team', 'PI-1902', 32, 28, 24, 32, 32, 32, 28, 180),
(137, 'AT-810', '810 Agile Team', 'PI-1902', 32, 32, 28, 32, 28, 32, 32, 184),
(138, 'AT-abc1', 'Agile Team 1000 1', 'PI-1902', 28, 32, 32, 24, 32, 32, 32, 180),
(139, 'AT-abc10', 'Agile Team 1000 10', 'PI-1902', 32, 24, 32, 28, 32, 32, 24, 180),
(140, 'AT-abc2', 'Agile Team 1000 2', 'PI-1902', 24, 28, 28, 32, 32, 24, 28, 168),
(141, 'AT-abc3', 'Agile Team 1000 3', 'PI-1902', 24, 28, 32, 32, 24, 32, 28, 172),
(142, 'AT-abc4', 'Agile Team 1000 4', 'PI-1902', 28, 24, 32, 24, 32, 32, 24, 172),
(143, 'AT-abc5', 'Agile Team 1000 5', 'PI-1902', 32, 28, 24, 32, 32, 32, 28, 180),
(144, 'AT-abc6', 'Agile Team 1000 6', 'PI-1902', 32, 32, 28, 32, 28, 32, 32, 184),
(145, 'AT-abc7', 'Agile Team 1000 7', 'PI-1902', 32, 32, 28, 24, 28, 32, 32, 176),
(146, 'AT-abc8', 'Agile Team 1000 8', 'PI-1902', 32, 32, 24, 32, 24, 28, 32, 172),
(147, 'AT-abc9', 'Agile Team 1000 9', 'PI-1902', 32, 32, 28, 32, 28, 32, 32, 184),
(148, 'AT-800', '800 Agile Team', 'PI-1905', 24, 28, 32, 28, 50, 32, 28, 194),
(149, 'AT-801', '801 Agile Team', 'PI-1905', 32, 32, 28, 32, 28, 28, 32, 180),
(150, 'AT-802', '802 Agile Team', 'PI-1905', 32, 28, 24, 32, 32, 32, 28, 180),
(151, 'AT-803', '803 Agile Team', 'PI-1905', 28, 32, 32, 24, 32, 32, 32, 180),
(152, 'AT-804', '804 Agile Team', 'PI-1905', 28, 32, 24, 32, 28, 32, 32, 176),
(153, 'AT-805', '805 Agile Team', 'PI-1905', 32, 24, 32, 28, 32, 32, 24, 180),
(154, 'AT-806', '806 Agile Team', 'PI-1905', 24, 28, 28, 32, 32, 24, 28, 168),
(155, 'AT-807', '807 Agile Team', 'PI-1905', 24, 28, 32, 32, 24, 32, 28, 172),
(156, 'AT-808', '808 Agile Team', 'PI-1905', 28, 24, 32, 24, 32, 32, 24, 172),
(157, 'AT-809', '809 Agile Team', 'PI-1905', 32, 28, 24, 32, 32, 32, 28, 180),
(158, 'AT-810', '810 Agile Team', 'PI-1905', 32, 32, 28, 32, 28, 32, 32, 184),
(160, 'AT-abc10', 'Agile Team 1000 10', 'PI-1905', 32, 32, 28, 24, 28, 32, 32, 176),
(161, 'AT-abc2', 'Agile Team 1000 2', 'PI-1905', 32, 32, 24, 32, 24, 28, 32, 172),
(162, 'AT-abc3', 'Agile Team 1000 3', 'PI-1905', 32, 32, 28, 32, 28, 32, 32, 184),
(163, 'AT-abc4', 'Agile Team 1000 4', 'PI-1905', 24, 28, 32, 28, 32, 32, 28, 176),
(164, 'AT-abc5', 'Agile Team 1000 5', 'PI-1905', 32, 32, 28, 32, 28, 28, 32, 180),
(165, 'AT-abc6', 'Agile Team 1000 6', 'PI-1905', 32, 28, 24, 32, 32, 32, 28, 180),
(166, 'AT-abc7', 'Agile Team 1000 7', 'PI-1905', 28, 32, 32, 24, 32, 32, 32, 180),
(167, 'AT-abc8', 'Agile Team 1000 8', 'PI-1905', 28, 32, 32, 24, 32, 32, 32, 180),
(168, 'AT-abc9', 'Agile Team 1000 9', 'PI-1905', 32, 24, 32, 28, 32, 32, 24, 180),
(169, 'AT-800', '800 Agile Team', 'PI-1905', 24, 28, 28, 32, 50, 24, 28, 194),
(170, 'AT-801', '801 Agile Team', 'PI-1905', 24, 28, 32, 32, 24, 32, 28, 172),
(171, 'AT-802', '802 Agile Team', 'PI-1905', 28, 24, 32, 24, 32, 32, 24, 172),
(172, 'AT-803', '803 Agile Team', 'PI-1905', 32, 28, 24, 32, 32, 32, 28, 180),
(173, 'AT-804', '804 Agile Team', 'PI-1905', 32, 32, 28, 32, 28, 32, 32, 184),
(174, 'AT-805', '805 Agile Team', 'PI-1905', 28, 32, 24, 32, 28, 32, 32, 176),
(175, 'AT-806', '806 Agile Team', 'PI-1905', 32, 24, 32, 28, 32, 32, 24, 180),
(176, 'AT-807', '807 Agile Team', 'PI-1905', 24, 28, 28, 32, 32, 24, 28, 168),
(177, 'AT-808', '808 Agile Team', 'PI-1905', 24, 28, 32, 32, 24, 32, 28, 172),
(178, 'AT-809', '809 Agile Team', 'PI-1905', 28, 24, 32, 24, 32, 32, 24, 172),
(179, 'AT-810', '810 Agile Team', 'PI-1905', 32, 28, 24, 32, 32, 32, 28, 180),
(181, 'AT-abc10', 'Agile Team 1000 10', 'PI-1905', 32, 28, 32, 24, 32, 28, 28, 176),
(182, 'AT-abc2', 'Agile Team 1000 2', 'PI-1905', 28, 32, 24, 32, 28, 32, 32, 176),
(183, 'AT-abc3', 'Agile Team 1000 3', 'PI-1905', 32, 24, 32, 28, 32, 32, 24, 180),
(184, 'AT-abc4', 'Agile Team 1000 4', 'PI-1905', 24, 28, 28, 32, 32, 24, 28, 168),
(185, 'AT-abc5', 'Agile Team 1000 5', 'PI-1905', 24, 28, 32, 32, 24, 32, 28, 172),
(186, 'AT-abc6', 'Agile Team 1000 6', 'PI-1905', 28, 24, 32, 24, 32, 32, 24, 172),
(187, 'AT-abc7', 'Agile Team 1000 7', 'PI-1905', 32, 28, 24, 32, 32, 32, 28, 180),
(188, 'AT-abc8', 'Agile Team 1000 8', 'PI-1905', 32, 32, 28, 32, 28, 32, 32, 184),
(189, 'AT-abc9', 'Agile Team 1000 9', 'PI-1905', 32, 28, 32, 24, 32, 28, 28, 176),
(190, 'AT-800', '800 Agile Team', 'PI-1905', 28, 32, 24, 32, 50, 32, 32, 194),
(191, 'AT-801', '801 Agile Team', 'PI-1905', 32, 24, 32, 28, 32, 32, 24, 180),
(192, 'AT-802', '802 Agile Team', 'PI-1905', 24, 28, 28, 32, 32, 24, 28, 168),
(193, 'AT-803', '803 Agile Team', 'PI-1905', 24, 28, 32, 32, 24, 32, 28, 172),
(194, 'AT-804', '804 Agile Team', 'PI-1905', 28, 24, 32, 24, 32, 32, 24, 172),
(195, 'AT-805', '805 Agile Team', 'PI-1905', 32, 28, 24, 32, 32, 32, 28, 180),
(196, 'AT-806', '806 Agile Team', 'PI-1905', 32, 32, 28, 32, 28, 32, 32, 184),
(197, 'AT-807', '807 Agile Team', 'PI-1905', 32, 32, 32, 28, 32, 24, 32, 180),
(198, 'AT-808', '808 Agile Team', 'PI-1905', 32, 32, 28, 24, 28, 32, 32, 176),
(199, 'AT-809', '809 Agile Team', 'PI-1905', 32, 32, 24, 32, 24, 28, 32, 172),
(200, 'AT-810', '810 Agile Team', 'PI-1905', 32, 32, 28, 32, 28, 32, 32, 184),
(202, 'AT-abc10', 'Agile Team 1000 10', 'PI-1905', 32, 32, 28, 32, 28, 28, 32, 180),
(203, 'AT-abc2', 'Agile Team 1000 2', 'PI-1905', 32, 28, 24, 32, 32, 32, 28, 180),
(204, 'AT-abc3', 'Agile Team 1000 3', 'PI-1905', 28, 32, 32, 24, 32, 32, 32, 180),
(205, 'AT-abc4', 'Agile Team 1000 4', 'PI-1905', 32, 28, 28, 28, 32, 32, 28, 180),
(206, 'AT-abc5', 'Agile Team 1000 5', 'PI-1905', 32, 32, 28, 32, 24, 32, 32, 180),
(207, 'AT-abc6', 'Agile Team 1000 6', 'PI-1905', 32, 32, 32, 28, 28, 24, 32, 176),
(208, 'AT-abc7', 'Agile Team 1000 7', 'PI-1905', 32, 32, 28, 32, 28, 24, 32, 176),
(209, 'AT-abc8', 'Agile Team 1000 8', 'PI-1905', 32, 32, 32, 28, 32, 28, 32, 184),
(210, 'AT-abc9', 'Agile Team 1000 9', 'PI-1905', 32, 28, 32, 24, 32, 28, 28, 176),
(211, 'AT-800', '800 Agile Team', 'PI-1905', 28, 32, 24, 32, 50, 32, 32, 194),
(212, 'AT-801', '801 Agile Team', 'PI-1905', 32, 24, 32, 28, 32, 32, 24, 180),
(213, 'AT-802', '802 Agile Team', 'PI-1905', 24, 28, 28, 32, 32, 24, 28, 168),
(214, 'AT-803', '803 Agile Team', 'PI-1905', 24, 28, 32, 32, 24, 32, 28, 172),
(215, 'AT-804', '804 Agile Team', 'PI-1905', 28, 24, 32, 24, 32, 32, 24, 172),
(216, 'AT-805', '805 Agile Team', 'PI-1905', 32, 28, 24, 32, 32, 32, 28, 180),
(217, 'AT-806', '806 Agile Team', 'PI-1905', 32, 32, 28, 32, 28, 32, 32, 184),
(218, 'AT-807', '807 Agile Team', 'PI-1905', 32, 32, 32, 28, 32, 24, 32, 180),
(219, 'AT-808', '808 Agile Team', 'PI-1905', 32, 32, 28, 24, 28, 32, 32, 176),
(220, 'AT-809', '809 Agile Team', 'PI-1905', 32, 32, 24, 32, 24, 28, 32, 172),
(221, 'AT-810', '810 Agile Team', 'PI-1905', 32, 32, 28, 32, 28, 32, 32, 184),
(223, 'AT-abc10', 'Agile Team 1000 10', 'PI-1905', 32, 32, 28, 32, 28, 28, 32, 180),
(224, 'AT-abc2', 'Agile Team 1000 2', 'PI-1905', 32, 28, 24, 32, 32, 32, 28, 180),
(225, 'AT-abc3', 'Agile Team 1000 3', 'PI-1905', 28, 32, 32, 24, 32, 32, 32, 180),
(226, 'AT-abc4', 'Agile Team 1000 4', 'PI-1905', 32, 24, 32, 28, 32, 32, 24, 180),
(227, 'AT-abc5', 'Agile Team 1000 5', 'PI-1905', 24, 28, 28, 32, 32, 24, 28, 168),
(228, 'AT-abc6', 'Agile Team 1000 6', 'PI-1905', 24, 28, 32, 32, 24, 32, 28, 172),
(229, 'AT-abc7', 'Agile Team 1000 7', 'PI-1905', 28, 24, 32, 24, 32, 32, 24, 172),
(230, 'AT-abc8', 'Agile Team 1000 8', 'PI-1905', 32, 28, 24, 32, 32, 32, 28, 180),
(231, 'AT-abc9', 'Agile Team 1000 9', 'PI-1905', 32, 32, 28, 32, 28, 32, 32, 184),
(232, 'AT-800', '800 Agile Team', 'PI-1905', 28, 32, 32, 24, 50, 32, 32, 194),
(233, 'AT-801', '801 Agile Team', 'PI-1905', 32, 24, 32, 28, 32, 32, 24, 180),
(234, 'AT-802', '802 Agile Team', 'PI-1905', 24, 28, 28, 32, 32, 24, 28, 168),
(235, 'AT-803', '803 Agile Team', 'PI-1905', 24, 28, 32, 32, 24, 32, 28, 172),
(236, 'AT-804', '804 Agile Team', 'PI-1905', 28, 24, 32, 24, 32, 32, 24, 172),
(237, 'AT-805', '805 Agile Team', 'PI-1905', 32, 28, 24, 32, 32, 32, 28, 180),
(238, 'AT-806', '806 Agile Team', 'PI-1905', 32, 32, 28, 32, 28, 32, 32, 184),
(239, 'AT-807', '807 Agile Team', 'PI-1905', 32, 32, 28, 24, 28, 32, 32, 176),
(240, 'AT-808', '808 Agile Team', 'PI-1905', 32, 32, 24, 32, 24, 28, 32, 172),
(241, 'AT-809', '809 Agile Team', 'PI-1905', 32, 32, 28, 32, 28, 32, 32, 184),
(242, 'AT-810', '810 Agile Team', 'PI-1905', 24, 28, 32, 28, 32, 32, 28, 176),
(244, 'AT-abc10', 'Agile Team 1000 10', 'PI-1905', 32, 28, 24, 32, 32, 32, 28, 180),
(245, 'AT-abc2', 'Agile Team 1000 2', 'PI-1905', 28, 32, 32, 24, 32, 32, 32, 180),
(246, 'AT-abc3', 'Agile Team 1000 3', 'PI-1905', 28, 32, 24, 32, 28, 32, 32, 176),
(247, 'AT-abc4', 'Agile Team 1000 4', 'PI-1905', 32, 24, 32, 28, 32, 32, 24, 180),
(248, 'AT-abc5', 'Agile Team 1000 5', 'PI-1905', 24, 28, 28, 32, 32, 24, 28, 168),
(249, 'AT-abc6', 'Agile Team 1000 6', 'PI-1905', 24, 28, 32, 32, 24, 32, 28, 172),
(250, 'AT-abc7', 'Agile Team 1000 7', 'PI-1905', 28, 24, 32, 24, 32, 32, 24, 172),
(251, 'AT-abc8', 'Agile Team 1000 8', 'PI-1905', 32, 28, 24, 32, 32, 32, 28, 180),
(252, 'AT-abc9', 'Agile Team 1000 9', 'PI-1905', 32, 32, 28, 32, 28, 32, 32, 184),
(253, 'AT-800', '800 Agile Team', 'PI-1905', 32, 32, 32, 28, 50, 24, 32, 194),
(254, 'AT-801', '801 Agile Team', 'PI-1905', 32, 32, 28, 24, 28, 32, 32, 176),
(255, 'AT-802', '802 Agile Team', 'PI-1905', 32, 32, 24, 32, 24, 28, 32, 172),
(256, 'AT-803', '803 Agile Team', 'PI-1905', 32, 32, 28, 32, 28, 32, 32, 184),
(257, 'AT-804', '804 Agile Team', 'PI-1905', 24, 28, 32, 28, 32, 32, 28, 176),
(258, 'AT-805', '805 Agile Team', 'PI-1905', 32, 32, 28, 32, 28, 28, 32, 180),
(259, 'AT-806', '806 Agile Team', 'PI-1905', 32, 28, 24, 32, 32, 32, 28, 180),
(260, 'AT-807', '807 Agile Team', 'PI-1905', 28, 32, 32, 24, 32, 32, 32, 180),
(261, 'AT-808', '808 Agile Team', 'PI-1905', 28, 32, 32, 24, 32, 32, 32, 180),
(262, 'AT-809', '809 Agile Team', 'PI-1905', 32, 24, 32, 28, 32, 32, 24, 180),
(263, 'AT-810', '810 Agile Team', 'PI-1905', 24, 28, 28, 32, 32, 24, 28, 168),
(265, 'AT-abc10', 'Agile Team 1000 10', 'PI-1905', 28, 24, 32, 24, 32, 32, 24, 172),
(266, 'AT-abc2', 'Agile Team 1000 2', 'PI-1905', 32, 28, 24, 32, 32, 32, 28, 180),
(267, 'AT-abc3', 'Agile Team 1000 3', 'PI-1905', 32, 32, 28, 32, 28, 32, 32, 184),
(268, 'AT-abc4', 'Agile Team 1000 4', 'PI-1905', 28, 32, 24, 32, 28, 32, 32, 176),
(269, 'AT-abc5', 'Agile Team 1000 5', 'PI-1905', 32, 24, 32, 28, 32, 32, 24, 180),
(270, 'AT-abc6', 'Agile Team 1000 6', 'PI-1905', 24, 28, 28, 32, 32, 24, 28, 168),
(271, 'AT-abc7', 'Agile Team 1000 7', 'PI-1905', 24, 28, 32, 32, 24, 32, 28, 172),
(272, 'AT-abc8', 'Agile Team 1000 8', 'PI-1905', 28, 24, 32, 24, 32, 32, 24, 172),
(273, 'AT-abc9', 'Agile Team 1000 9', 'PI-1905', 32, 28, 24, 32, 32, 32, 28, 180),
(274, 'AT-800', '800 Agile Team', 'PI-1905', 32, 32, 28, 32, 50, 32, 32, 194),
(275, 'AT-801', '801 Agile Team', 'PI-1905', 32, 28, 32, 24, 32, 28, 28, 176),
(276, 'AT-802', '802 Agile Team', 'PI-1905', 28, 32, 24, 32, 28, 32, 32, 176),
(277, 'AT-803', '803 Agile Team', 'PI-1905', 32, 24, 32, 28, 32, 32, 24, 180),
(278, 'AT-804', '804 Agile Team', 'PI-1905', 24, 28, 28, 32, 32, 24, 28, 168),
(279, 'AT-805', '805 Agile Team', 'PI-1905', 24, 28, 32, 32, 24, 32, 28, 172),
(280, 'AT-806', '806 Agile Team', 'PI-1905', 28, 24, 32, 24, 32, 32, 24, 172),
(281, 'AT-807', '807 Agile Team', 'PI-1905', 32, 28, 24, 32, 32, 32, 28, 180),
(282, 'AT-808', '808 Agile Team', 'PI-1905', 32, 32, 28, 32, 28, 32, 32, 184),
(283, 'AT-809', '809 Agile Team', 'PI-1905', 28, 32, 24, 32, 28, 32, 32, 176),
(284, 'AT-810', '810 Agile Team', 'PI-1905', 32, 24, 32, 28, 32, 32, 24, 180);

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
(1, 'Thielen', 'Adam', 'full_time', 'TRUE', 'Mankato', 'US', '5540112345', 'Zygi Wilf', 'Mike', 'Zimmer', NULL, NULL, 'Zimmer', 'Mike', 'SAFe', 'Capacity Calculator', 'VIK', '6515554422', '6515554422'),
(2, 'Cousins', 'Kirk', 'full_time', 'TRUE', 'Minneapolis', 'US', '5540112345', 'Zygi Wilf', 'Mike', 'Zimmer', NULL, NULL, 'Zimmer', 'Mike', 'SAFe', 'Capacity Calculator', 'VIK', '6515554422', '6515554422'),
(3, 'Barr', 'Anthony', 'full_time', 'TRUE', 'Bloominton', 'US', '5540112345', 'Zygi Wilf', 'Mike', 'Zimmer', NULL, NULL, 'Zimmer', 'Mike', 'SAFe', 'Capacity Calculator', 'VIK', '6515554422', '6515554422'),
(4, 'Smith', 'Harrison', 'full_time', 'TRUE', 'Bloominton', 'US', '5540112345', 'Zygi Wilf', 'Mike', 'Zimmer', NULL, NULL, 'Zimmer', 'Mike', 'SAFe', 'Capacity Calculator', 'VIK', '6515554422', '6515554422'),
(5, 'Beebe', 'Chad', 'part_time', 'FALSE', 'Bloominton', 'US', '5540112345', 'Zygi Wilf', 'Mike', 'Zimmer', NULL, NULL, 'Zimmer', 'Mike', 'SAFe', 'Capacity Calculator', 'VIK', '6515554422', '6515554422'),
(6, 'Cooke', 'Dalvin', 'part_time', 'FALSE', 'Mankato', 'US', '5540112345', 'Zygi Wilf', 'Mike', 'Zimmer', NULL, NULL, 'Zimmer', 'Mike', 'SAFe', 'Capacity Calculator', 'VIK', '6515554422', '6515554422'),
(7, 'Diggs', 'Stefon', 'part_time', 'FALSE', 'Minneapolis', 'US', '5540112345', 'Zygi Wilf', 'Mike', 'Zimmer', NULL, NULL, 'Zimmer', 'Mike', 'SAFe', 'Capacity Calculator', 'VIK', '6515554422', '6515554422'),
(8, 'Elflein', 'Pat', 'part_time', 'FALSE', 'Minneapolis', 'US', '5540112345', 'Zygi Wilf', 'Mike', 'Zimmer', NULL, NULL, 'Zimmer', 'Mike', 'SAFe', 'Capacity Calculator', 'VIK', '6515554422', '6515554422');

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
('T-600', '800 Agile Team', 'Adam Thielen', '1', 'PO'),
('ART-600', '800 Agile Team', 'Kirk Cousins', '2', 'SM'),
('ART-600', '800 Agile Team', 'Anthony Barr', '3', 'DEVELOPER'),
('ART-600', '800 Agile Team', 'Harrison Smith', '4', 'DEVELOPER'),
('ART-600', '800 Agile Team', 'Chad Beebe', '5', 'DEVELOPER'),
('ART-600', '800 Agile Team', 'Dalvin Cook', '6', 'DEVELOPER'),
('ART-600', '800 Agile Team', 'Stefon Diggs', '7', 'DEVELOPER'),
('ART-600', '800 Agile Team', 'Pat Elflein', '8', 'DEVELOPER'),
('ART-601', '801 Agile Team', 'Adam Thielen', '1', 'PO'),
('ART-601', '801 Agile Team', 'Kirk Cousins', '2', 'SM'),
('ART-601', '801 Agile Team', 'Anthony Barr', '3', 'DEVELOPER'),
('ART-601', '801 Agile Team', 'Harrison Smith', '4', 'DEVELOPER'),
('ART-601', '801 Agile Team', 'Chad Beebe', '5', 'DEVELOPER'),
('ART-601', '801 Agile Team', 'Dalvin Cook', '6', 'DEVELOPER'),
('ART-601', '801 Agile Team', 'Stefon Diggs', '7', 'DEVELOPER'),
('ART-601', '801 Agile Team', 'Pat Elflein', '8', 'DEVELOPER'),
('ART-601', '802 Agile Team', 'Adam Thielen', '1', 'PO'),
('ART-601', '802 Agile Team', 'Kirk Cousins', '2', 'SM'),
('ART-601', '802 Agile Team', 'Anthony Barr', '3', 'DEVELOPER'),
('ART-601', '802 Agile Team', 'Harrison Smith', '4', 'DEVELOPER'),
('ART-601', '802 Agile Team', 'Chad Beebe', '5', 'DEVELOPER'),
('ART-601', '802 Agile Team', 'Dalvin Cook', '6', 'DEVELOPER'),
('ART-601', '802 Agile Team', 'Stefon Diggs', '7', 'DEVELOPER'),
('ART-601', '802 Agile Team', 'Pat Elflein', '8', 'DEVELOPER'),
('ART-600', '803 Agile Team', 'Adam Thielen', '1', 'PO'),
('ART-600', '803 Agile Team', 'Kirk Cousins', '2', 'SM'),
('ART-600', '803 Agile Team', 'Anthony Barr', '3', 'DEVELOPER'),
('ART-600', '803 Agile Team', 'Harrison Smith', '4', 'DEVELOPER'),
('ART-600', '803 Agile Team', 'Chad Beebe', '5', 'DEVELOPER'),
('ART-600', '803 Agile Team', 'Dalvin Cook', '6', 'DEVELOPER'),
('ART-600', '803 Agile Team', 'Stefon Diggs', '7', 'DEVELOPER'),
('ART-600', '803 Agile Team', 'Pat Elflein', '8', 'DEVELOPER'),
('ART-601', '804 Agile Team', 'Adam Thielen', '1', 'PO'),
('ART-601', '804 Agile Team', 'Kirk Cousins', '2', 'SM'),
('ART-601', '804 Agile Team', 'Anthony Barr', '3', 'DEVELOPER'),
('ART-601', '804 Agile Team', 'Harrison Smith', '4', 'DEVELOPER'),
('ART-601', '804 Agile Team', 'Chad Beebe', '5', 'DEVELOPER'),
('ART-601', '804 Agile Team', 'Dalvin Cook', '6', 'DEVELOPER'),
('ART-601', '804 Agile Team', 'Stefon Diggs', '7', 'DEVELOPER'),
('ART-601', '804 Agile Team', 'Pat Elflein', '8', 'DEVELOPER'),
('ART-602', '805 Agile Team', 'Adam Thielen', '1', 'PO'),
('ART-602', '805 Agile Team', 'Kirk Cousins', '2', 'SM'),
('ART-602', '805 Agile Team', 'Anthony Barr', '3', 'DEVELOPER'),
('ART-602', '805 Agile Team', 'Harrison Smith', '4', 'DEVELOPER'),
('ART-602', '805 Agile Team', 'Chad Beebe', '5', 'DEVELOPER'),
('ART-602', '805 Agile Team', 'Dalvin Cook', '6', 'DEVELOPER'),
('ART-602', '805 Agile Team', 'Stefon Diggs', '7', 'DEVELOPER'),
('ART-602', '805 Agile Team', 'Pat Elflein', '8', 'DEVELOPER'),
('ART-600', '806 Agile Team', 'Adam Thielen', '1', 'PO'),
('ART-600', '806 Agile Team', 'Kirk Cousins', '2', 'SM'),
('ART-600', '806 Agile Team', 'Anthony Barr', '3', 'DEVELOPER'),
('ART-600', '806 Agile Team', 'Harrison Smith', '4', 'DEVELOPER'),
('ART-600', '806 Agile Team', 'Chad Beebe', '5', 'DEVELOPER'),
('ART-600', '806 Agile Team', 'Dalvin Cook', '6', 'DEVELOPER'),
('ART-600', '806 Agile Team', 'Stefon Diggs', '7', 'DEVELOPER'),
('ART-600', '806 Agile Team', 'Pat Elflein', '8', 'DEVELOPER'),
('ART-602', '807 Agile Team', 'Adam Thielen', '1', 'PO'),
('ART-602', '807 Agile Team', 'Kirk Cousins', '2', 'SM'),
('ART-602', '807 Agile Team', 'Anthony Barr', '3', 'DEVELOPER'),
('ART-602', '807 Agile Team', 'Harrison Smith', '4', 'DEVELOPER'),
('ART-602', '807 Agile Team', 'Chad Beebe', '5', 'DEVELOPER'),
('ART-602', '807 Agile Team', 'Dalvin Cook', '6', 'DEVELOPER'),
('ART-602', '807 Agile Team', 'Stefon Diggs', '7', 'DEVELOPER'),
('ART-602', '807 Agile Team', 'Pat Elflein', '8', 'DEVELOPER'),
('ART-602', '808 Agile Team', 'Adam Thielen', '1', 'PO'),
('ART-602', '808 Agile Team', 'Kirk Cousins', '2', 'SM'),
('ART-602', '808 Agile Team', 'Anthony Barr', '3', 'DEVELOPER'),
('ART-602', '808 Agile Team', 'Harrison Smith', '4', 'DEVELOPER'),
('ART-602', '808 Agile Team', 'Chad Beebe', '5', 'DEVELOPER'),
('ART-602', '808 Agile Team', 'Dalvin Cook', '6', 'DEVELOPER'),
('ART-602', '808 Agile Team', 'Stefon Diggs', '7', 'DEVELOPER'),
('ART-602', '808 Agile Team', 'Pat Elflein', '8', 'DEVELOPER'),
('ART-600', '809 Agile Team', 'Adam Thielen', '1', 'PO'),
('ART-600', '809 Agile Team', 'Kirk Cousins', '2', 'SM'),
('ART-600', '809 Agile Team', 'Anthony Barr', '3', 'DEVELOPER'),
('ART-600', '809 Agile Team', 'Harrison Smith', '4', 'DEVELOPER'),
('ART-600', '809 Agile Team', 'Chad Beebe', '5', 'DEVELOPER'),
('ART-600', '809 Agile Team', 'Dalvin Cook', '6', 'DEVELOPER'),
('ART-600', '809 Agile Team', 'Stefon Diggs', '7', 'DEVELOPER'),
('ART-600', '809 Agile Team', 'Pat Elflein', '8', 'DEVELOPER'),
('ART-602', '810 Agile Team', 'Adam Thielen', '1', 'PO'),
('ART-602', '810 Agile Team', 'Kirk Cousins', '2', 'SM'),
('ART-602', '810 Agile Team', 'Anthony Barr', '3', 'DEVELOPER'),
('ART-602', '810 Agile Team', 'Harrison Smith', '4', 'DEVELOPER'),
('ART-602', '810 Agile Team', 'Chad Beebe', '5', 'DEVELOPER'),
('ART-602', '810 Agile Team', 'Dalvin Cook', '6', 'DEVELOPER'),
('ART-602', '810 Agile Team', 'Stefon Diggs', '7', 'DEVELOPER'),
('ART-602', '810 Agile Team', 'Pat Elflein', '8', 'DEVELOPER'),
('ART-500', 'Agile Team 1000 1', 'Adam Thielen', '1', 'PO'),
('ART-500', 'Agile Team 1000 1', 'Kirk Cousins', '2', 'SM'),
('ART-500', 'Agile Team 1000 1', 'Anthony Barr', '3', 'DEVELOPER'),
('ART-500', 'Agile Team 1000 1', 'Harrison Smith', '4', 'DEVELOPER'),
('ART-500', 'Agile Team 1000 1', 'Chad Beebe', '5', 'DEVELOPER'),
('ART-500', 'Agile Team 1000 1', 'Dalvin Cook', '6', 'DEVELOPER'),
('ART-500', 'Agile Team 1000 1', 'Stefon Diggs', '7', 'DEVELOPER'),
('ART-500', 'Agile Team 1000 1', 'Pat Elflein', '8', 'DEVELOPER'),
('ART-504', 'Agile Team 1000 10', 'Adam Thielen', '1', 'PO'),
('ART-504', 'Agile Team 1000 10', 'Kirk Cousins', '2', 'SM'),
('ART-504', 'Agile Team 1000 10', 'Anthony Barr', '3', 'DEVELOPER'),
('ART-504', 'Agile Team 1000 10', 'Harrison Smith', '4', 'DEVELOPER'),
('ART-504', 'Agile Team 1000 10', 'Chad Beebe', '5', 'DEVELOPER'),
('ART-504', 'Agile Team 1000 10', 'Dalvin Cook', '6', 'DEVELOPER'),
('ART-504', 'Agile Team 1000 10', 'Stefon Diggs', '7', 'DEVELOPER'),
('ART-504', 'Agile Team 1000 10', 'Pat Elflein', '8', 'DEVELOPER'),
('ART-501', 'Agile Team 1000 2', 'Adam Thielen', '1', 'PO'),
('ART-501', 'Agile Team 1000 2', 'Kirk Cousins', '2', 'SM'),
('ART-501', 'Agile Team 1000 2', 'Anthony Barr', '3', 'DEVELOPER'),
('ART-501', 'Agile Team 1000 2', 'Harrison Smith', '4', 'DEVELOPER'),
('ART-501', 'Agile Team 1000 2', 'Chad Beebe', '5', 'DEVELOPER'),
('ART-501', 'Agile Team 1000 2', 'Dalvin Cook', '6', 'DEVELOPER'),
('ART-501', 'Agile Team 1000 2', 'Stefon Diggs', '7', 'DEVELOPER'),
('ART-501', 'Agile Team 1000 2', 'Pat Elflein', '8', 'DEVELOPER'),
('ART-502', 'Agile Team 1000 3', 'Adam Thielen', '1', 'PO'),
('ART-502', 'Agile Team 1000 3', 'Kirk Cousins', '2', 'SM'),
('ART-502', 'Agile Team 1000 3', 'Anthony Barr', '3', 'DEVELOPER'),
('ART-502', 'Agile Team 1000 3', 'Harrison Smith', '4', 'DEVELOPER'),
('ART-502', 'Agile Team 1000 3', 'Chad Beebe', '5', 'DEVELOPER'),
('ART-502', 'Agile Team 1000 3', 'Dalvin Cook', '6', 'DEVELOPER'),
('ART-502', 'Agile Team 1000 3', 'Stefon Diggs', '7', 'DEVELOPER'),
('ART-502', 'Agile Team 1000 3', 'Pat Elflein', '8', 'DEVELOPER'),
('ART-503', 'Agile Team 1000 4', 'Adam Thielen', '1', 'PO'),
('ART-503', 'Agile Team 1000 4', 'Kirk Cousins', '2', 'SM'),
('ART-503', 'Agile Team 1000 4', 'Anthony Barr', '3', 'DEVELOPER'),
('ART-503', 'Agile Team 1000 4', 'Harrison Smith', '4', 'DEVELOPER'),
('ART-503', 'Agile Team 1000 4', 'Chad Beebe', '5', 'DEVELOPER'),
('ART-503', 'Agile Team 1000 4', 'Dalvin Cook', '6', 'DEVELOPER'),
('ART-503', 'Agile Team 1000 4', 'Stefon Diggs', '7', 'DEVELOPER'),
('ART-503', 'Agile Team 1000 4', 'Pat Elflein', '8', 'DEVELOPER'),
('ART-504', 'Agile Team 1000 5', 'Adam Thielen', '1', 'PO'),
('ART-504', 'Agile Team 1000 5', 'Kirk Cousins', '2', 'SM'),
('ART-504', 'Agile Team 1000 5', 'Anthony Barr', '3', 'DEVELOPER'),
('ART-504', 'Agile Team 1000 5', 'Harrison Smith', '4', 'DEVELOPER'),
('ART-504', 'Agile Team 1000 5', 'Chad Beebe', '5', 'DEVELOPER'),
('ART-504', 'Agile Team 1000 5', 'Dalvin Cook', '6', 'DEVELOPER'),
('ART-504', 'Agile Team 1000 5', 'Stefon Diggs', '7', 'DEVELOPER'),
('ART-504', 'Agile Team 1000 5', 'Pat Elflein', '8', 'DEVELOPER'),
('ART-500', 'Agile Team 1000 6', 'Adam Thielen', '1', 'PO'),
('ART-500', 'Agile Team 1000 6', 'Kirk Cousins', '2', 'SM'),
('ART-500', 'Agile Team 1000 6', 'Anthony Barr', '3', 'DEVELOPER'),
('ART-500', 'Agile Team 1000 6', 'Harrison Smith', '4', 'DEVELOPER'),
('ART-500', 'Agile Team 1000 6', 'Chad Beebe', '5', 'DEVELOPER'),
('ART-500', 'Agile Team 1000 6', 'Dalvin Cook', '6', 'DEVELOPER'),
('ART-500', 'Agile Team 1000 6', 'Stefon Diggs', '7', 'DEVELOPER'),
('ART-500', 'Agile Team 1000 6', 'Pat Elflein', '8', 'DEVELOPER'),
('ART-501', 'Agile Team 1000 7', 'Adam Thielen', '1', 'PO'),
('ART-501', 'Agile Team 1000 7', 'Kirk Cousins', '2', 'SM'),
('ART-501', 'Agile Team 1000 7', 'Anthony Barr', '3', 'DEVELOPER'),
('ART-501', 'Agile Team 1000 7', 'Harrison Smith', '4', 'DEVELOPER'),
('ART-501', 'Agile Team 1000 7', 'Chad Beebe', '5', 'DEVELOPER'),
('ART-501', 'Agile Team 1000 7', 'Dalvin Cook', '6', 'DEVELOPER'),
('ART-501', 'Agile Team 1000 7', 'Stefon Diggs', '7', 'DEVELOPER'),
('ART-501', 'Agile Team 1000 7', 'Pat Elflein', '8', 'DEVELOPER'),
('ART-502', 'Agile Team 1000 8', 'Adam Thielen', '1', 'PO'),
('ART-502', 'Agile Team 1000 8', 'Kirk Cousins', '2', 'SM'),
('ART-502', 'Agile Team 1000 8', 'Anthony Barr', '3', 'DEVELOPER'),
('ART-502', 'Agile Team 1000 8', 'Harrison Smith', '4', 'DEVELOPER'),
('ART-502', 'Agile Team 1000 8', 'Chad Beebe', '5', 'DEVELOPER'),
('ART-502', 'Agile Team 1000 8', 'Dalvin Cook', '6', 'DEVELOPER'),
('ART-502', 'Agile Team 1000 8', 'Stefon Diggs', '7', 'DEVELOPER'),
('ART-502', 'Agile Team 1000 8', 'Pat Elflein', '8', 'DEVELOPER'),
('ART-503', 'Agile Team 1000 9', 'Adam Thielen', '1', 'PO'),
('ART-503', 'Agile Team 1000 9', 'Kirk Cousins', '2', 'SM'),
('ART-503', 'Agile Team 1000 9', 'Anthony Barr', '3', 'DEVELOPER'),
('ART-503', 'Agile Team 1000 9', 'Harrison Smith', '4', 'DEVELOPER'),
('ART-503', 'Agile Team 1000 9', 'Chad Beebe', '5', 'DEVELOPER'),
('ART-503', 'Agile Team 1000 9', 'Dalvin Cook', '6', 'DEVELOPER'),
('ART-503', 'Agile Team 1000 9', 'Stefon Diggs', '7', 'DEVELOPER'),
('ART-503', 'Agile Team 1000 9', 'Pat Elflein', '8', 'DEVELOPER');

-- --------------------------------------------------------

--
-- Table structure for table `preferences`
--

CREATE TABLE `preferences` (
  `id` int(2) NOT NULL,
  `name` varchar(40) NOT NULL,
  `value` varchar(10) NOT NULL,
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
(28, 'BASE_URL', 'localhost', NULL);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=285;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
