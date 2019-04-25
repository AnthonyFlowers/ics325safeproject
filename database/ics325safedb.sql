-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2019 at 03:34 AM
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
(6, 'ART-400', 'Agile Team 700', 'PI-1902', 50, 32, 71, 60, 54, 29, 296),
(7, 'ART-400', 'Agile Team 700', 'PI-1902', 43, 29, 42, 21, 55, 49, 239),
(8, 'ART-400', 'Agile Team 700', 'PI-1902', 80, 71, 24, 53, 9, 21, 258),
(9, 'ART-400', 'Agile Team 700', 'PI-1902', 60, 65, 67, 70, 72, 72, 406),
(10, 'ART-400', 'Agile Team 700', 'PI-1902', 50, 52, 54, 56, 58, 60, 330),
(11, 'ART-400', 'Agile Team 700', 'PI-1902', 52, 56, 58, 60, 62, 64, 352),
(12, 'ART-400', 'Agile Team 701', 'PI-1902', 13, 29, 30, 35, 34, 49, 190),
(13, 'ART-400', 'Agile Team 701', 'PI-1902', 61, 25, 35, 41, 66, 71, 299),
(14, 'ART-400', 'Agile Team 701', 'PI-1902', 30, 32, 33, 63, 18, 79, 255),
(15, 'ART-400', 'Agile Team 701', 'PI-1902', 8, 38, 79, 16, 20, 75, 236),
(16, 'ART-400', 'Agile Team 701', 'PI-1902', 10, 19, 40, 34, 53, 68, 224),
(17, 'ART-400', 'Agile Team 701', 'PI-1902', 21, 27, 12, 60, 19, 15, 154),
(18, 'ART-401', 'Agile Team 702', 'PI-1905', 90, 16, 36, 58, 20, 20, 240),
(19, 'ART-401', 'Agile Team 702', 'PI-1905', 26, 40, 17, 13, 30, 67, 193),
(20, 'ART-401', 'Agile Team 702', 'PI-1905', 63, 46, 71, 65, 73, 60, 378),
(21, 'ART-401', 'Agile Team 702', 'PI-1905', 20, 11, 75, 14, 71, 44, 235),
(22, 'ART-401', 'Agile Team 702', 'PI-1905', 48, 29, 13, 49, 50, 64, 253),
(23, 'ART-401', 'Agile Team 702', 'PI-1905', 32, 45, 31, 77, 75, 70, 330),
(24, 'ART-401', 'Agile Team 703', 'PI-1905', 59, 65, 61, 36, 57, 66, 344),
(25, 'ART-401', 'Agile Team 703', 'PI-1905', 17, 10, 54, 36, 55, 11, 183),
(26, 'ART-401', 'Agile Team 703', 'PI-1905', 79, 42, 19, 23, 12, 14, 189),
(27, 'ART-401', 'Agile Team 703', 'PI-1905', 58, 76, 34, 12, 54, 77, 311),
(28, 'ART-401', 'Agile Team 703', 'PI-1905', 63, 40, 28, 43, 28, 62, 264),
(29, 'ART-401', 'Agile Team 703', 'PI-1905', 3, 64, 12, 26, 70, 65, 240),
(30, 'ART-402', 'Agile Team 704', 'PI-1905', 38, 37, 16, 25, 23, 57, 196),
(31, 'ART-402', 'Agile Team 704', 'PI-1905', 39, 24, 11, 47, 60, 51, 232),
(32, 'ART-402', 'Agile Team 704', 'PI-1905', 48, 55, 25, 15, 76, 48, 267),
(33, 'ART-402', 'Agile Team 704', 'PI-1905', 15, 21, 36, 38, 58, 34, 202),
(34, 'ART-402', 'Agile Team 704', 'PI-1905', 19, 10, 50, 64, 79, 52, 274),
(35, 'ART-402', 'Agile Team 704', 'PI-1905', 30, 53, 36, 20, 12, 51, 202),
(36, 'ART-403', 'Agile Team 705', 'PI-1908', 58, 27, 58, 74, 73, 77, 367),
(37, 'ART-403', 'Agile Team 705', 'PI-1908', 25, 17, 32, 23, 10, 51, 158),
(38, 'ART-403', 'Agile Team 705', 'PI-1908', 10, 66, 56, 45, 27, 32, 236),
(39, 'ART-403', 'Agile Team 705', 'PI-1908', 59, 29, 35, 16, 14, 53, 206),
(40, 'ART-403', 'Agile Team 705', 'PI-1908', 18, 39, 66, 16, 12, 58, 209),
(41, 'ART-403', 'Agile Team 705', 'PI-1908', 29, 56, 65, 32, 67, 16, 265),
(42, 'ART-403', 'Agile Team 706', 'PI-1911', 30, 57, 18, 48, 69, 68, 290),
(43, 'ART-403', 'Agile Team 706', 'PI-1911', 16, 71, 27, 28, 34, 79, 255),
(44, 'ART-403', 'Agile Team 706', 'PI-1911', 17, 56, 46, 20, 69, 37, 245),
(45, 'ART-403', 'Agile Team 706', 'PI-1911', 47, 32, 54, 20, 73, 63, 289),
(46, 'ART-403', 'Agile Team 706', 'PI-1911', 34, 70, 46, 72, 43, 63, 328),
(47, 'ART-403', 'Agile Team 706', 'PI-1911', 18, 52, 38, 70, 68, 57, 303),
(48, 'ART-403', 'Agile Team 707', 'PI-1911', 54, 67, 52, 29, 77, 79, 358),
(49, 'ART-403', 'Agile Team 707', 'PI-1911', 21, 12, 39, 66, 58, 32, 228),
(50, 'ART-403', 'Agile Team 707', 'PI-1911', 16, 62, 55, 38, 64, 42, 277),
(51, 'ART-403', 'Agile Team 707', 'PI-1911', 58, 63, 20, 30, 23, 65, 259),
(52, 'ART-403', 'Agile Team 707', 'PI-1911', 47, 65, 16, 47, 16, 50, 241),
(53, 'ART-403', 'Agile Team 707', 'PI-1911', 20, 27, 25, 19, 37, 28, 156),
(54, 'ART-403', 'Agile Team 708', 'PI-2002', 44, 41, 49, 65, 47, 51, 297),
(55, 'ART-403', 'Agile Team 708', 'PI-2002', 13, 17, 17, 33, 53, 17, 150),
(56, 'ART-403', 'Agile Team 708', 'PI-2002', 38, 26, 32, 34, 79, 40, 249),
(57, 'ART-403', 'Agile Team 708', 'PI-2002', 15, 10, 43, 62, 12, 58, 200),
(58, 'ART-403', 'Agile Team 708', 'PI-2002', 54, 33, 37, 23, 37, 25, 209),
(59, 'ART-403', 'Agile Team 708', 'PI-2002', 60, 17, 44, 54, 36, 21, 232),
(60, 'ART-404', 'Agile Team 709', 'PI-2002', 55, 11, 27, 44, 43, 21, 201),
(61, 'ART-404', 'Agile Team 709', 'PI-2002', 42, 54, 12, 77, 23, 60, 268),
(62, 'ART-404', 'Agile Team 709', 'PI-2002', 14, 65, 17, 78, 33, 43, 250),
(63, 'ART-404', 'Agile Team 709', 'PI-2002', 47, 32, 46, 10, 76, 16, 227),
(64, 'ART-404', 'Agile Team 709', 'PI-2002', 15, 69, 15, 75, 14, 22, 210),
(65, 'ART-404', 'Agile Team 709', 'PI-2002', 52, 74, 51, 45, 48, 48, 318),
(66, 'ART-405', 'Agile Team 710', 'PI-2005', 51, 73, 29, 28, 28, 41, 250),
(67, 'ART-405', 'Agile Team 710', 'PI-2005', 32, 72, 38, 54, 69, 24, 289),
(68, 'ART-405', 'Agile Team 710', 'PI-2005', 24, 18, 17, 15, 29, 11, 114),
(69, 'ART-405', 'Agile Team 710', 'PI-2005', 19, 10, 23, 52, 26, 35, 165),
(70, 'ART-405', 'Agile Team 710', 'PI-2005', 28, 56, 56, 62, 11, 23, 236),
(71, 'ART-405', 'Agile Team 710', 'PI-2005', 31, 23, 39, 39, 63, 15, 210),
(72, 'ST-100', 'Agile Release Train  400 (ST100)', 'PI-2005', 36, 42, 60, 78, 15, 35, 266),
(73, 'ST-100', 'Agile Release Train  400 (ST100)', 'PI-2005', 27, 36, 51, 14, 57, 41, 226),
(74, 'ST-100', 'Agile Release Train  400 (ST100)', 'PI-2005', 46, 40, 43, 15, 73, 53, 270),
(75, 'ST-100', 'Agile Release Train  400 (ST100)', 'PI-2005', 21, 38, 32, 39, 49, 36, 215),
(76, 'ST-100', 'Agile Release Train  400 (ST100)', 'PI-2005', 14, 69, 66, 48, 47, 38, 282),
(77, 'ST-100', 'Agile Release Train  400 (ST100)', 'PI-2005', 25, 50, 45, 52, 69, 50, 291),
(78, 'ST-100', 'Agile Release Train  401 (ST100)', 'PI-2005', 49, 70, 49, 19, 79, 13, 279),
(79, 'ST-100', 'Agile Release Train  401 (ST100)', 'PI-2005', 33, 58, 39, 67, 44, 56, 297),
(80, 'ST-100', 'Agile Release Train  401 (ST100)', 'PI-2005', 69, 61, 41, 41, 57, 47, 316),
(81, 'ST-100', 'Agile Release Train  401 (ST100)', 'PI-2005', 26, 59, 57, 78, 46, 46, 312),
(82, 'ST-100', 'Agile Release Train  401 (ST100)', 'PI-2005', 52, 34, 40, 69, 58, 24, 277),
(83, 'ST-100', 'Agile Release Train  401 (ST100)', 'PI-2005', 10, 76, 31, 52, 27, 21, 217),
(84, 'ST-100', 'Agile Release Train  402 (ST100)', 'PI-2008', 61, 63, 27, 78, 64, 37, 330),
(85, 'ST-100', 'Agile Release Train  402 (ST100)', 'PI-2008', 11, 76, 21, 35, 71, 41, 255),
(86, 'ST-100', 'Agile Release Train  402 (ST100)', 'PI-2008', 61, 17, 27, 18, 76, 36, 235),
(87, 'ST-100', 'Agile Release Train  402 (ST100)', 'PI-2008', 32, 62, 55, 24, 51, 58, 282),
(88, 'ST-100', 'Agile Release Train  402 (ST100)', 'PI-2008', 65, 16, 66, 37, 43, 54, 281),
(89, 'ST-100', 'Agile Release Train  402 (ST100)', 'PI-2008', 31, 73, 78, 30, 58, 29, 299),
(90, 'ST-100', 'Agile Release Train  403 (ST100)', 'PI-2011', 16, 44, 29, 17, 74, 74, 254),
(91, 'ST-100', 'Agile Release Train  403 (ST100)', 'PI-2011', 64, 21, 53, 51, 76, 69, 334),
(92, 'ST-100', 'Agile Release Train  403 (ST100)', 'PI-2011', 50, 71, 75, 10, 22, 24, 252),
(93, 'ST-100', 'Agile Release Train  403 (ST100)', 'PI-2011', 56, 16, 39, 34, 16, 34, 195),
(94, 'ST-100', 'Agile Release Train  403 (ST100)', 'PI-2011', 60, 26, 36, 36, 14, 54, 226),
(95, 'ST-100', 'Agile Release Train  403 (ST100)', 'PI-2011', 35, 37, 64, 62, 64, 78, 340),
(96, 'ST-100', 'Agile Release Train  404 (ST100)', 'PI-2012', 63, 57, 65, 46, 62, 31, 324),
(97, 'ST-100', 'Agile Release Train  404 (ST100)', 'PI-2012', 50, 49, 28, 33, 42, 43, 245),
(98, 'ST-100', 'Agile Release Train  404 (ST100)', 'PI-2012', 38, 14, 40, 50, 30, 49, 221),
(99, 'ST-100', 'Agile Release Train  404 (ST100)', 'PI-2012', 42, 72, 49, 68, 71, 67, 369),
(100, 'ST-100', 'Agile Release Train  404 (ST100)', 'PI-2012', 40, 22, 35, 60, 73, 24, 254),
(101, 'ST-100', 'Agile Release Train  404 (ST100)', 'PI-2012', 14, 15, 36, 73, 65, 45, 248),
(102, 'ST-100', 'Agile Release Train  405 (ST100) XYZ', 'PI-2102', 54, 79, 57, 48, 22, 41, 301),
(103, 'ST-100', 'Agile Release Train  405 (ST100) XYZ', 'PI-2102', 39, 12, 66, 32, 69, 46, 264),
(104, 'ST-100', 'Agile Release Train  405 (ST100) XYZ', 'PI-2102', 51, 27, 15, 10, 20, 19, 142),
(105, 'ST-100', 'Agile Release Train  405 (ST100) XYZ', 'PI-2102', 11, 59, 10, 27, 48, 31, 186),
(106, 'ST-100', 'Agile Release Train  405 (ST100) XYZ', 'PI-2102', 55, 61, 75, 50, 40, 17, 298),
(107, 'ST-100', 'Agile Release Train  405 (ST100) XYZ', 'PI-2102', 46, 11, 72, 41, 45, 67, 282),
(108, 'ST-200', 'Agile Release Train  500 (ST200)', 'PI-1902', 54, 72, 44, 72, 44, 29, 315),
(109, 'ST-200', 'Agile Release Train  500 (ST200)', 'PI-1902', 61, 25, 59, 14, 24, 44, 227),
(110, 'ST-200', 'Agile Release Train  500 (ST200)', 'PI-1902', 40, 51, 60, 44, 11, 60, 266),
(111, 'ST-200', 'Agile Release Train  500 (ST200)', 'PI-1902', 45, 65, 50, 12, 17, 11, 200),
(112, 'ST-200', 'Agile Release Train  500 (ST200)', 'PI-1902', 37, 66, 42, 38, 26, 48, 257),
(113, 'ST-200', 'Agile Release Train  500 (ST200)', 'PI-1902', 58, 45, 63, 39, 35, 44, 284),
(114, 'ST-200', 'Agile Release Train  501 (ST200)', 'PI-1902', 11, 72, 53, 14, 70, 57, 277),
(115, 'ST-200', 'Agile Release Train  501 (ST200)', 'PI-1902', 45, 42, 53, 19, 57, 56, 272),
(116, 'ST-200', 'Agile Release Train  501 (ST200)', 'PI-1902', 69, 21, 11, 40, 16, 37, 194),
(117, 'ST-200', 'Agile Release Train  501 (ST200)', 'PI-1902', 47, 63, 68, 38, 50, 39, 305),
(118, 'ST-200', 'Agile Release Train  501 (ST200)', 'PI-1902', 37, 22, 23, 31, 68, 28, 209),
(119, 'ST-200', 'Agile Release Train  501 (ST200)', 'PI-1902', 21, 30, 79, 46, 11, 28, 215),
(120, 'ST-200', 'Agile Release Train  502 (ST200)', 'PI-1905', 28, 27, 68, 12, 79, 39, 253),
(121, 'ST-200', 'Agile Release Train  502 (ST200)', 'PI-1905', 29, 77, 64, 44, 17, 60, 291),
(122, 'ST-200', 'Agile Release Train  502 (ST200)', 'PI-1905', 34, 77, 26, 19, 32, 31, 219),
(123, 'ST-200', 'Agile Release Train  502 (ST200)', 'PI-1905', 21, 29, 41, 10, 38, 21, 160),
(124, 'ST-200', 'Agile Release Train  502 (ST200)', 'PI-1905', 41, 54, 15, 33, 16, 24, 183),
(125, 'ST-200', 'Agile Release Train  502 (ST200)', 'PI-1905', 53, 43, 68, 36, 59, 30, 289),
(126, 'ST-200', 'Agile Release Train  503 (ST200)', 'PI-1905', 63, 34, 26, 77, 66, 35, 301),
(127, 'ST-200', 'Agile Release Train  503 (ST200)', 'PI-1905', 33, 18, 20, 45, 55, 75, 246),
(128, 'ST-200', 'Agile Release Train  503 (ST200)', 'PI-1905', 24, 37, 72, 75, 21, 38, 267),
(129, 'ST-200', 'Agile Release Train  503 (ST200)', 'PI-1905', 48, 34, 71, 42, 59, 34, 288),
(130, 'ST-200', 'Agile Release Train  503 (ST200)', 'PI-1905', 61, 76, 76, 39, 19, 31, 302),
(131, 'ST-200', 'Agile Release Train  503 (ST200)', 'PI-1905', 60, 15, 46, 16, 21, 30, 188),
(132, 'ST-200', 'Agile Release Train  504 (ST200)', 'PI-1905', 18, 54, 25, 72, 57, 63, 289),
(133, 'ST-200', 'Agile Release Train  504 (ST200)', 'PI-1905', 46, 70, 15, 62, 41, 77, 311),
(134, 'ST-200', 'Agile Release Train  504 (ST200)', 'PI-1905', 56, 21, 58, 30, 64, 12, 241),
(135, 'ST-200', 'Agile Release Train  504 (ST200)', 'PI-1905', 67, 54, 27, 39, 28, 21, 236),
(136, 'ST-200', 'Agile Release Train  504 (ST200)', 'PI-1905', 18, 66, 41, 15, 74, 51, 265),
(137, 'ST-200', 'Agile Release Train  504 (ST200)', 'PI-1905', 28, 73, 34, 25, 70, 37, 267),
(138, 'ST-300', 'Agile Release Train  600 (ST300)', 'PI-1908', 51, 74, 20, 74, 20, 29, 268),
(139, 'ST-300', 'Agile Release Train  600 (ST300)', 'PI-1908', 20, 24, 58, 68, 15, 43, 228),
(140, 'ST-300', 'Agile Release Train  600 (ST300)', 'PI-1908', 34, 25, 16, 33, 15, 17, 140),
(141, 'ST-300', 'Agile Release Train  600 (ST300)', 'PI-1908', 39, 12, 64, 72, 28, 41, 256),
(142, 'ST-300', 'Agile Release Train  600 (ST300)', 'PI-1908', 66, 26, 65, 57, 27, 23, 264),
(143, 'ST-300', 'Agile Release Train  600 (ST300)', 'PI-1908', 50, 72, 49, 37, 61, 51, 320),
(144, 'ST-300', 'Agile Release Train  601 (ST300)', 'PI-1911', 16, 25, 13, 60, 11, 67, 192),
(145, 'ST-300', 'Agile Release Train  601 (ST300)', 'PI-1911', 7, 41, 62, 38, 30, 79, 257),
(146, 'ST-300', 'Agile Release Train  601 (ST300)', 'PI-1911', 39, 13, 59, 41, 74, 16, 242),
(147, 'ST-300', 'Agile Release Train  601 (ST300)', 'PI-1911', 23, 41, 61, 29, 12, 26, 192),
(148, 'ST-300', 'Agile Release Train  601 (ST300)', 'PI-1911', 58, 39, 40, 77, 64, 20, 298),
(149, 'ST-300', 'Agile Release Train  601 (ST300)', 'PI-1911', 29, 21, 28, 69, 75, 55, 277),
(150, 'ST-300', 'Agile Release Train  602 (ST300)', 'PI-1911', 68, 34, 21, 34, 18, 61, 236),
(151, 'ST-300', 'Agile Release Train  602 (ST300)', 'PI-1911', 52, 28, 24, 16, 15, 52, 187),
(152, 'ST-300', 'Agile Release Train  602 (ST300)', 'PI-1911', 64, 31, 65, 48, 13, 73, 294),
(153, 'ST-300', 'Agile Release Train  602 (ST300)', 'PI-1911', 47, 14, 77, 54, 52, 51, 295),
(154, 'ST-300', 'Agile Release Train  602 (ST300)', 'PI-1911', 24, 54, 56, 70, 41, 63, 308),
(155, 'ST-300', 'Agile Release Train  602 (ST300)', 'PI-1911', 19, 47, 40, 67, 20, 35, 228),
(156, 'ART-600', '800 Agile Team', 'PI-2002', 42, 78, 49, 14, 11, 24, 218),
(157, 'ART-600', '800 Agile Team', 'PI-2002', 31, 34, 52, 58, 76, 17, 268),
(158, 'ART-600', '800 Agile Team', 'PI-2002', 24, 66, 55, 23, 62, 51, 281),
(159, 'ART-600', '800 Agile Team', 'PI-2002', 38, 72, 57, 50, 67, 38, 322),
(160, 'ART-600', '800 Agile Team', 'PI-2002', 66, 34, 57, 67, 10, 37, 271),
(161, 'ART-600', '800 Agile Team', 'PI-2002', 52, 78, 21, 27, 11, 43, 232),
(162, 'ART-601', '801 Agile Team', 'PI-2002', 62, 66, 16, 36, 53, 31, 264),
(163, 'ART-601', '801 Agile Team', 'PI-2002', 24, 58, 79, 24, 58, 67, 310),
(164, 'ART-601', '801 Agile Team', 'PI-2002', 37, 22, 33, 14, 25, 28, 159),
(165, 'ART-601', '801 Agile Team', 'PI-2002', 27, 16, 26, 27, 21, 57, 174),
(166, 'ART-601', '801 Agile Team', 'PI-2002', 21, 66, 47, 23, 71, 72, 300),
(167, 'ART-601', '801 Agile Team', 'PI-2002', 23, 63, 67, 38, 54, 14, 259),
(168, 'ART-601', '802 Agile Team', 'PI-2005', 14, 19, 17, 69, 73, 65, 257),
(169, 'ART-601', '802 Agile Team', 'PI-2005', 26, 15, 16, 13, 45, 25, 140),
(170, 'ART-601', '802 Agile Team', 'PI-2005', 44, 65, 37, 54, 56, 64, 320),
(171, 'ART-601', '802 Agile Team', 'PI-2005', 50, 14, 16, 22, 54, 78, 234),
(172, 'ART-601', '802 Agile Team', 'PI-2005', 25, 61, 29, 57, 24, 54, 250),
(173, 'ART-601', '802 Agile Team', 'PI-2005', 20, 71, 36, 52, 79, 38, 296),
(174, 'ART-600', '803 Agile Team', 'PI-2005', 35, 19, 65, 23, 29, 65, 236),
(175, 'ART-600', '803 Agile Team', 'PI-2005', 36, 65, 60, 49, 55, 73, 338),
(176, 'ART-600', '803 Agile Team', 'PI-2005', 17, 22, 33, 12, 10, 59, 153),
(177, 'ART-600', '803 Agile Team', 'PI-2005', 20, 42, 36, 76, 15, 32, 221),
(178, 'ART-600', '803 Agile Team', 'PI-2005', 56, 26, 53, 41, 72, 67, 315),
(179, 'ART-600', '803 Agile Team', 'PI-2005', 32, 26, 30, 67, 73, 55, 283),
(180, 'ART-601', '804 Agile Team', 'PI-2005', 39, 67, 54, 70, 49, 74, 353),
(181, 'ART-601', '804 Agile Team', 'PI-2005', 11, 22, 51, 43, 71, 14, 212),
(182, 'ART-601', '804 Agile Team', 'PI-2005', 30, 19, 64, 59, 20, 43, 235),
(183, 'ART-601', '804 Agile Team', 'PI-2005', 47, 66, 72, 16, 49, 51, 301),
(184, 'ART-601', '804 Agile Team', 'PI-2005', 45, 62, 35, 50, 12, 47, 251),
(185, 'ART-601', '804 Agile Team', 'PI-2005', 31, 60, 68, 12, 39, 14, 224),
(186, 'ART-602', '805 Agile Team', 'PI-2008', 69, 77, 16, 28, 11, 28, 229),
(187, 'ART-602', '805 Agile Team', 'PI-2008', 21, 79, 76, 72, 63, 43, 354),
(188, 'ART-602', '805 Agile Team', 'PI-2008', 52, 30, 11, 28, 73, 69, 263),
(189, 'ART-602', '805 Agile Team', 'PI-2008', 54, 44, 51, 41, 34, 21, 245),
(190, 'ART-602', '805 Agile Team', 'PI-2008', 50, 27, 42, 21, 10, 21, 171),
(191, 'ART-602', '805 Agile Team', 'PI-2008', 27, 62, 70, 41, 51, 33, 284),
(192, 'ART-600', '806 Agile Team', 'PI-2011', 67, 71, 43, 24, 47, 75, 327),
(193, 'ART-600', '806 Agile Team', 'PI-2011', 10, 47, 48, 78, 58, 21, 262),
(194, 'ART-600', '806 Agile Team', 'PI-2011', 67, 54, 75, 62, 25, 62, 345),
(195, 'ART-600', '806 Agile Team', 'PI-2011', 51, 41, 49, 79, 78, 36, 334),
(196, 'ART-600', '806 Agile Team', 'PI-2011', 65, 22, 29, 46, 66, 77, 305),
(197, 'ART-600', '806 Agile Team', 'PI-2011', 52, 35, 48, 14, 46, 33, 228),
(198, 'ART-602', '807 Agile Team', 'PI-2012', 17, 16, 77, 50, 77, 13, 250),
(199, 'ART-602', '807 Agile Team', 'PI-2012', 64, 70, 48, 17, 35, 49, 283),
(200, 'ART-602', '807 Agile Team', 'PI-2012', 31, 69, 36, 34, 39, 40, 249),
(201, 'ART-602', '807 Agile Team', 'PI-2012', 51, 55, 66, 38, 39, 38, 287),
(202, 'ART-602', '807 Agile Team', 'PI-2012', 47, 25, 77, 69, 32, 76, 326),
(203, 'ART-602', '807 Agile Team', 'PI-2012', 41, 60, 55, 66, 44, 54, 320),
(204, 'ART-602', '808 Agile Team', 'PI-2102', 55, 60, 39, 39, 38, 72, 303),
(205, 'ART-602', '808 Agile Team', 'PI-2102', 32, 59, 58, 68, 26, 10, 253),
(206, 'ART-602', '808 Agile Team', 'PI-2102', 58, 43, 15, 37, 34, 32, 219),
(207, 'ART-602', '808 Agile Team', 'PI-2102', 55, 44, 58, 33, 56, 32, 278),
(208, 'ART-602', '808 Agile Team', 'PI-2102', 19, 39, 40, 32, 17, 38, 185),
(209, 'ART-602', '808 Agile Team', 'PI-2102', 14, 14, 57, 40, 66, 18, 209),
(210, 'ART-600', '809 Agile Team', 'PI-1902', 27, 26, 57, 60, 32, 10, 212),
(211, 'ART-600', '809 Agile Team', 'PI-1902', 53, 17, 72, 55, 17, 49, 263),
(212, 'ART-600', '809 Agile Team', 'PI-1902', 36, 37, 21, 46, 49, 46, 235),
(213, 'ART-600', '809 Agile Team', 'PI-1902', 25, 41, 43, 15, 40, 47, 211),
(214, 'ART-600', '809 Agile Team', 'PI-1902', 66, 61, 74, 36, 50, 17, 304),
(215, 'ART-600', '809 Agile Team', 'PI-1902', 52, 33, 23, 65, 48, 79, 300),
(216, 'ART-602', '810 Agile Team', 'PI-1902', 43, 51, 77, 21, 16, 18, 226),
(217, 'ART-602', '810 Agile Team', 'PI-1902', 13, 79, 77, 59, 36, 28, 292),
(218, 'ART-602', '810 Agile Team', 'PI-1902', 16, 11, 64, 22, 37, 73, 223),
(219, 'ART-602', '810 Agile Team', 'PI-1902', 39, 56, 70, 42, 67, 39, 313),
(220, 'ART-602', '810 Agile Team', 'PI-1902', 28, 75, 32, 45, 32, 36, 248),
(221, 'ART-602', '810 Agile Team', 'PI-1902', 25, 66, 74, 61, 53, 49, 328),
(222, 'ART-500', 'Agile Team 1000 1', 'PI-1905', 33, 30, 75, 52, 54, 17, 261),
(223, 'ART-500', 'Agile Team 1000 1', 'PI-1905', 41, 41, 21, 53, 76, 37, 269),
(224, 'ART-500', 'Agile Team 1000 1', 'PI-1905', 50, 73, 47, 25, 12, 26, 233),
(225, 'ART-500', 'Agile Team 1000 1', 'PI-1905', 13, 73, 71, 34, 34, 50, 275),
(226, 'ART-500', 'Agile Team 1000 1', 'PI-1905', 59, 11, 69, 33, 34, 24, 230),
(227, 'ART-500', 'Agile Team 1000 1', 'PI-1905', 26, 54, 16, 69, 11, 14, 190),
(228, 'ART-504', 'Agile Team 1000 10', 'PI-1905', 42, 74, 72, 68, 67, 44, 367),
(229, 'ART-504', 'Agile Team 1000 10', 'PI-1905', 15, 56, 30, 20, 39, 10, 170),
(230, 'ART-504', 'Agile Team 1000 10', 'PI-1905', 65, 18, 64, 31, 72, 26, 276),
(231, 'ART-504', 'Agile Team 1000 10', 'PI-1905', 15, 55, 70, 25, 68, 79, 312),
(232, 'ART-504', 'Agile Team 1000 10', 'PI-1905', 63, 37, 64, 26, 51, 21, 262),
(233, 'ART-504', 'Agile Team 1000 10', 'PI-1905', 26, 66, 18, 53, 41, 60, 264),
(234, 'ART-501', 'Agile Team 1000 2', 'PI-1905', 49, 69, 32, 63, 33, 59, 305),
(235, 'ART-501', 'Agile Team 1000 2', 'PI-1905', 51, 40, 74, 15, 55, 30, 265),
(236, 'ART-501', 'Agile Team 1000 2', 'PI-1905', 62, 78, 14, 10, 26, 67, 257),
(237, 'ART-501', 'Agile Team 1000 2', 'PI-1905', 27, 76, 51, 30, 24, 36, 244),
(238, 'ART-501', 'Agile Team 1000 2', 'PI-1905', 68, 46, 25, 67, 15, 48, 269),
(239, 'ART-501', 'Agile Team 1000 2', 'PI-1905', 15, 45, 37, 11, 21, 23, 152),
(240, 'ART-502', 'Agile Team 1000 3', 'PI-1908', 32, 32, 60, 65, 55, 78, 322),
(241, 'ART-502', 'Agile Team 1000 3', 'PI-1908', 38, 12, 70, 59, 12, 35, 226),
(242, 'ART-502', 'Agile Team 1000 3', 'PI-1908', 15, 50, 32, 59, 29, 34, 219),
(243, 'ART-502', 'Agile Team 1000 3', 'PI-1908', 34, 21, 42, 67, 61, 78, 303),
(244, 'ART-502', 'Agile Team 1000 3', 'PI-1908', 62, 26, 66, 26, 21, 66, 267),
(245, 'ART-502', 'Agile Team 1000 3', 'PI-1908', 17, 28, 43, 51, 14, 31, 184),
(246, 'ART-503', 'Agile Team 1000 4', 'PI-1911', 51, 17, 74, 58, 18, 79, 297),
(247, 'ART-503', 'Agile Team 1000 4', 'PI-1911', 18, 79, 26, 44, 79, 13, 259),
(248, 'ART-503', 'Agile Team 1000 4', 'PI-1911', 21, 51, 72, 35, 25, 49, 253),
(249, 'ART-503', 'Agile Team 1000 4', 'PI-1911', 32, 18, 61, 30, 73, 24, 238),
(250, 'ART-503', 'Agile Team 1000 4', 'PI-1911', 67, 37, 51, 31, 67, 33, 286),
(251, 'ART-503', 'Agile Team 1000 4', 'PI-1911', 40, 23, 30, 39, 61, 50, 243),
(252, 'ART-504', 'Agile Team 1000 5', 'PI-1911', 69, 20, 26, 36, 55, 57, 263),
(253, 'ART-504', 'Agile Team 1000 5', 'PI-1911', 68, 21, 21, 35, 55, 62, 262),
(254, 'ART-504', 'Agile Team 1000 5', 'PI-1911', 13, 60, 48, 77, 69, 72, 339),
(255, 'ART-504', 'Agile Team 1000 5', 'PI-1911', 59, 55, 19, 79, 74, 20, 306),
(256, 'ART-504', 'Agile Team 1000 5', 'PI-1911', 61, 60, 45, 35, 44, 59, 304),
(257, 'ART-504', 'Agile Team 1000 5', 'PI-1911', 49, 51, 25, 33, 28, 45, 231),
(258, 'ART-500', 'Agile Team 1000 6', 'PI-2002', 13, 50, 39, 66, 65, 54, 287),
(259, 'ART-500', 'Agile Team 1000 6', 'PI-2002', 31, 57, 24, 42, 72, 63, 289),
(260, 'ART-500', 'Agile Team 1000 6', 'PI-2002', 15, 33, 39, 19, 22, 78, 206),
(261, 'ART-500', 'Agile Team 1000 6', 'PI-2002', 10, 43, 57, 73, 27, 55, 265),
(262, 'ART-500', 'Agile Team 1000 6', 'PI-2002', 69, 69, 37, 12, 33, 15, 235),
(263, 'ART-500', 'Agile Team 1000 6', 'PI-2002', 62, 47, 62, 53, 16, 27, 267),
(264, 'ART-501', 'Agile Team 1000 7', 'PI-2002', 39, 43, 74, 22, 66, 20, 264),
(265, 'ART-501', 'Agile Team 1000 7', 'PI-2002', 53, 42, 71, 25, 25, 10, 226),
(266, 'ART-501', 'Agile Team 1000 7', 'PI-2002', 10, 45, 79, 65, 19, 76, 294),
(267, 'ART-501', 'Agile Team 1000 7', 'PI-2002', 66, 29, 44, 25, 73, 74, 311),
(268, 'ART-501', 'Agile Team 1000 7', 'PI-2002', 11, 62, 78, 31, 53, 41, 276),
(269, 'ART-501', 'Agile Team 1000 7', 'PI-2002', 15, 44, 16, 13, 59, 74, 221),
(270, 'ART-502', 'Agile Team 1000 8', 'PI-2005', 14, 32, 42, 31, 69, 60, 248),
(271, 'ART-502', 'Agile Team 1000 8', 'PI-2005', 22, 17, 10, 39, 25, 48, 161),
(272, 'ART-502', 'Agile Team 1000 8', 'PI-2005', 48, 37, 41, 57, 25, 43, 251),
(273, 'ART-502', 'Agile Team 1000 8', 'PI-2005', 13, 74, 72, 11, 16, 46, 232),
(274, 'ART-502', 'Agile Team 1000 8', 'PI-2005', 47, 26, 28, 28, 16, 16, 161),
(275, 'ART-502', 'Agile Team 1000 8', 'PI-2005', 17, 32, 62, 73, 49, 32, 265),
(276, 'ART-503', 'Agile Team 1000 9', 'PI-2005', 64, 16, 47, 64, 74, 42, 307),
(277, 'ART-503', 'Agile Team 1000 9', 'PI-2005', 19, 60, 36, 63, 18, 50, 246),
(278, 'ART-503', 'Agile Team 1000 9', 'PI-2005', 45, 78, 60, 24, 42, 76, 325),
(279, 'ART-503', 'Agile Team 1000 9', 'PI-2005', 53, 69, 39, 27, 74, 31, 293),
(280, 'ART-503', 'Agile Team 1000 9', 'PI-2005', 37, 11, 38, 48, 52, 75, 261),
(281, 'ART-503', 'Agile Team 1000 9', 'PI-2005', 52, 27, 50, 35, 29, 18, 211),
(282, 'NA', 'Solution Train 100', 'PI-2005', 55, 23, 35, 20, 33, 78, 244),
(283, 'NA', 'Solution Train 100', 'PI-2005', 20, 40, 64, 73, 25, 62, 284),
(284, 'NA', 'Solution Train 100', 'PI-2005', 27, 10, 33, 63, 55, 23, 211),
(285, 'NA', 'Solution Train 100', 'PI-2005', 68, 19, 35, 51, 55, 72, 300),
(286, 'NA', 'Solution Train 100', 'PI-2005', 39, 38, 73, 16, 37, 39, 242),
(287, 'NA', 'Solution Train 100', 'PI-2005', 56, 39, 11, 57, 22, 12, 197),
(288, 'NA', 'Solution Train 200', 'PI-2008', 26, 37, 79, 16, 41, 72, 271),
(289, 'NA', 'Solution Train 200', 'PI-2008', 15, 31, 39, 66, 17, 40, 208),
(290, 'NA', 'Solution Train 200', 'PI-2008', 10, 41, 15, 53, 41, 38, 198),
(291, 'NA', 'Solution Train 200', 'PI-2008', 69, 16, 55, 71, 17, 10, 238),
(292, 'NA', 'Solution Train 200', 'PI-2008', 43, 58, 61, 32, 14, 55, 263),
(293, 'NA', 'Solution Train 200', 'PI-2008', 54, 62, 66, 29, 38, 59, 308),
(294, 'NA', 'Solution Train 300', 'PI-2011', 52, 19, 56, 39, 13, 34, 213),
(295, 'NA', 'Solution Train 300', 'PI-2011', 17, 14, 19, 74, 66, 70, 260),
(296, 'NA', 'Solution Train 300', 'PI-2011', 36, 73, 42, 30, 61, 51, 293),
(297, 'NA', 'Solution Train 300', 'PI-2011', 67, 53, 48, 41, 23, 58, 290),
(298, 'NA', 'Solution Train 300', 'PI-2011', 33, 49, 14, 28, 75, 78, 277),
(299, 'NA', 'Solution Train 300', 'PI-2011', 18, 69, 17, 79, 27, 52, 262);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=300;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
