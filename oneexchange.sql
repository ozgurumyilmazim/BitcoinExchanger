-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2017 at 09:26 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `oneexchange`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`admin_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`) VALUES
(1, 'admin', '827ccb0eea8a706c4c34a16891f84e7b');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `salt` text NOT NULL,
  `active` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `salt`, `active`) VALUES
(1, 'promise', '89fc5cd3574cd5ec021d26752f3a2773eeb996847c2322d05a2e989a174a38f4', 'ß	¨‘öž0Zä	•¾f¶ÎÖMXCSëDØ=ÕHëºì', 1),
(2, 'promand', 'e10adc3949ba59abbe56e057f20f883e', '', 1),
(3, 'p', 'c4ca4238a0b923820dcc509a6f75849b', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

CREATE TABLE IF NOT EXISTS `user_log` (
`id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `activity` text,
  `IP` varchar(150) DEFAULT NULL,
  `browser` varchar(150) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=223 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_log`
--

INSERT INTO `user_log` (`id`, `user_id`, `username`, `activity`, `IP`, `browser`, `status`, `date`) VALUES
(5, 1, 'promise', 'you exchanged BNT to receive BAT ', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-22 07:06:13'),
(6, 1, 'promise', 'you submitted BNT for BAT exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-22 07:11:25'),
(7, 1, 'promise', 'you submitted BNT for BAT exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-22 07:14:21'),
(8, 1, 'promise', 'you submitted BNT for BAT exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-22 07:18:53'),
(9, 1, 'promise', 'you submitted ANT for DASH exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-22 07:19:43'),
(10, 1, 'promise', 'you submitted ANT for DASH exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-22 07:44:06'),
(11, 1, 'promise', 'you submitted ANT for DASH exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-22 07:48:57'),
(12, 1, 'promise', 'you submitted ETH for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-22 07:49:26'),
(13, 1, 'promise', 'you submitted ETH for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-22 07:52:25'),
(14, 1, 'promise', 'you submitted BNT for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-22 07:55:13'),
(15, 1, 'promise', 'you submitted BNT for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-22 08:07:09'),
(16, 0, 'UNKNOWN', 'Entred  invalid address  ', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-22 08:32:06'),
(17, 1, 'promise', 'you submitted BNT for 1ST exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-22 08:33:10'),
(18, 1, 'promise', 'Entred  invalid address  ', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-22 08:34:56'),
(19, 1, 'promise', 'you submitted BNT for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-22 08:42:56'),
(20, 1, 'promise', 'you submitted BAT for BNT exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-22 09:06:33'),
(21, 1, 'promise', 'you submitted ANT for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-22 09:06:53'),
(22, 1, 'promise', 'your address validaion was successful ', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-22 09:08:22'),
(23, 1, 'promise', 'you submitted BTC for DASH exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-22 10:45:46'),
(24, 1, 'promise', 'you submitted BNT for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-22 11:52:24'),
(25, 1, 'promise', 'your address validaion was successful ', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-22 11:53:11'),
(26, 1, 'promise', 'you submitted BAT for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-22 11:57:53'),
(27, 1, 'promise', 'Entred  invalid address  ', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-22 12:01:15'),
(28, 1, 'promise', 'you submitted ANT for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-22 12:04:36'),
(29, 1, 'promise', 'you submitted ANT for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-22 12:28:10'),
(30, 1, 'promise', 'you submitted 1ST for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-22 12:28:38'),
(31, 1, 'promise', 'your address validaion was successful ', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-22 12:29:08'),
(32, 1, 'promise', 'you submitted 1ST for 1ST exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-22 16:06:10'),
(33, 1, 'promise', 'Entred  invalid address  ', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-22 16:06:37'),
(34, 1, 'promise', 'you submitted Deposit for Recieve exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-22 16:18:31'),
(35, 1, 'promise', 'you submitted BAT for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-22 16:27:34'),
(36, 1, 'promise', 'you submitted 1ST for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-22 16:55:13'),
(37, 1, 'promise', 'your address validaion was successful ', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-22 16:57:24'),
(38, 1, 'promise', 'your address validaion was successful ', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-22 16:58:56'),
(39, 1, 'promise', 'your address validaion was successful ', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-22 16:58:59'),
(40, 1, 'promise', 'your address validaion was successful ', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-22 17:05:01'),
(41, 1, 'promise', 'you submitted 1ST for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-22 17:12:53'),
(42, 1, 'promise', 'your address validaion was successful ', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-22 17:13:32'),
(43, 1, 'promise', 'you submitted 1ST for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-22 17:14:27'),
(44, 1, 'promise', 'your address validaion was successful ', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-22 17:14:37'),
(45, 1, 'promise', 'you submitted 1ST for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-22 17:17:52'),
(46, 1, 'promise', 'you submitted 1ST for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-22 17:19:56'),
(47, 1, 'promise', 'you submitted 1ST for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-22 17:24:00'),
(48, 1, 'promise', 'your address validaion was successful ', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-22 17:50:29'),
(49, 1, 'promise', 'you submitted BNT for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-22 18:43:14'),
(50, 1, 'promise', 'you submitted BNT for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-22 18:44:32'),
(51, 1, 'promise', 'you submitted BNT for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-22 18:45:05'),
(52, 1, 'promise', 'you submitted ANT for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 09:28:22'),
(53, 1, 'promise', 'Entred  invalid address  ', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 09:29:28'),
(54, 1, 'promise', 'you submitted ANT for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 09:29:55'),
(55, 1, 'promise', 'Entred  invalid address  ', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 09:30:35'),
(56, 1, 'promise', 'you submitted 1ST for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 09:30:54'),
(57, 1, 'promise', 'your address validaion was successful ', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 09:32:40'),
(58, 1, 'promise', 'logged in', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 09:38:53'),
(59, 1, 'promise', 'logged in', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 09:41:55'),
(60, 1, 'promise', 'you submitted ANT for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 09:43:52'),
(61, 1, 'promise', 'you submitted ANT for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 09:50:52'),
(62, 1, 'promise', 'you submitted ANT for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 09:54:59'),
(63, 1, 'promise', 'you submitted ANT for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 10:00:44'),
(64, 1, 'promise', 'Entred  invalid address  ', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 10:04:53'),
(65, 1, 'promise', 'you submitted 1ST for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 10:06:34'),
(66, 1, 'promise', 'you submitted true for true exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 10:07:46'),
(67, 1, 'promise', 'you submitted true for true exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 10:10:24'),
(68, 1, 'promise', 'you submitted true for true exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 10:13:08'),
(69, 1, 'promise', 'you submitted true for true exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 10:15:21'),
(70, 1, 'promise', 'Entred  invalid address  ', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 10:15:57'),
(71, 1, 'promise', 'you submitted BAT for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 10:16:19'),
(72, 1, 'promise', 'you submitted BAT for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 10:24:29'),
(73, 1, 'promise', 'you submitted BNT for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 10:26:09'),
(74, 1, 'promise', 'you submitted BNT for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 10:39:37'),
(75, 1, 'promise', 'you submitted BNT for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 10:41:35'),
(76, 1, 'promise', 'you submitted BNT for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 10:43:13'),
(77, 1, 'promise', 'you submitted BNT for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 10:43:41'),
(78, 1, 'promise', 'you submitted BNT for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 10:47:10'),
(79, 1, 'promise', 'you submitted BNT for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 10:47:43'),
(80, 1, 'promise', 'you submitted BNT for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 10:54:49'),
(81, 1, 'promise', 'you submitted BNT for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 10:57:27'),
(82, 1, 'promise', 'you submitted BNT for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 11:00:25'),
(83, 1, 'promise', 'you submitted 1ST for 1ST exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 12:32:32'),
(84, 1, 'promise', 'you submitted ANT for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 12:32:57'),
(85, 1, 'promise', 'you submitted ANT for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 12:36:22'),
(86, 1, 'promise', 'you submitted ANT for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 12:37:22'),
(87, 1, 'promise', 'you submitted ANT for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 12:39:23'),
(88, 1, 'promise', 'you submitted ANT for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 12:41:00'),
(89, 1, 'promise', 'you submitted ANT for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 12:42:39'),
(90, 1, 'promise', 'you submitted ANT for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 12:44:43'),
(91, 1, 'promise', 'you submitted BNT for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 12:46:37'),
(92, 1, 'promise', 'you submitted ANT for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 12:47:13'),
(93, 1, 'promise', 'you submitted ANT for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 12:58:33'),
(94, 1, 'promise', 'you submitted ANT for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 12:59:55'),
(95, 1, 'promise', 'you submitted ANT for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 13:20:49'),
(96, 1, 'promise', 'you submitted ANT for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 13:26:44'),
(97, 1, 'promise', 'you submitted ANT for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 13:29:54'),
(98, 1, 'promise', 'you submitted ANT for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 13:43:46'),
(99, 1, 'promise', 'you submitted ANT for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 13:47:06'),
(100, 1, 'promise', 'you submitted ANT for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 13:47:43'),
(101, 1, 'promise', 'you submitted true for true exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 13:49:39'),
(102, 1, 'promise', 'Entred  invalid address  ', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 13:51:22'),
(103, 1, 'promise', 'you submitted 1ST for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 13:51:53'),
(104, 1, 'promise', 'you submitted 1ST for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 13:57:26'),
(105, 1, 'promise', 'your address validaion was successful ', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 14:00:01'),
(106, 1, 'promise', 'you submitted 1ST for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 14:31:53'),
(107, 1, 'promise', 'your address validaion was successful ', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 14:33:23'),
(108, 1, 'promise', 'you submitted 1ST for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 14:39:23'),
(109, 1, 'promise', 'your address validaion was successful ', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 14:39:55'),
(110, 1, 'promise', 'you submitted 1ST for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 15:13:48'),
(111, 1, 'promise', 'you submitted 1ST for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 16:09:52'),
(112, 1, 'promise', 'your address validaion was successful ', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 16:14:01'),
(113, 1, 'promise', 'you submitted 1ST for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 16:33:12'),
(114, 1, 'promise', 'you submitted true for true exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 16:33:39'),
(115, 1, 'promise', 'you submitted ANT for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 16:35:17'),
(116, 1, 'promise', 'you submitted 1ST for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 16:42:58'),
(117, 1, 'promise', 'you submitted 1ST for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 16:44:40'),
(118, 1, 'promise', 'your address validaion was successful ', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 16:44:58'),
(119, 1, 'promise', 'you submitted 1ST for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 17:03:50'),
(120, 1, 'promise', 'your address validaion was successful ', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 17:04:43'),
(121, 1, 'promise', 'you submitted 1ST for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 17:05:17'),
(122, 1, 'promise', 'you submitted 1ST for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 17:08:19'),
(123, 1, 'promise', 'you submitted 1ST for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 17:09:47'),
(124, 1, 'promise', 'you submitted 1ST for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 17:10:36'),
(125, 1, 'promise', 'you submitted 1ST for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 17:11:57'),
(126, 1, 'promise', 'you submitted 1ST for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 17:12:03'),
(127, 1, 'promise', 'you submitted 1ST for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 17:18:59'),
(128, 1, 'promise', 'you submitted 1ST for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 17:27:10'),
(129, 1, 'promise', 'you submitted true for true exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 17:27:24'),
(130, 1, 'promise', 'Entred  invalid address  ', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 17:28:20'),
(131, 1, 'promise', 'you submitted 1ST for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 17:28:52'),
(132, 1, 'promise', 'your address validaion was successful ', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 17:29:42'),
(133, 1, 'promise', 'you submitted ETH for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 18:47:17'),
(134, 1, 'promise', 'you submitted true for true exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 18:49:34'),
(135, 1, 'promise', 'Entred  invalid address  ', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 18:50:12'),
(136, 1, 'promise', 'you submitted BCY for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 18:50:55'),
(137, 1, 'promise', 'you submitted ANT for 1ST exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 18:51:35'),
(138, 1, 'promise', 'you submitted BAT for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 18:51:56'),
(139, 1, 'promise', 'your address validaion was successful ', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 18:52:36'),
(140, 1, 'promise', 'you submitted BAT for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 18:53:32'),
(141, 1, 'promise', 'your address validaion was successful ', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-23 18:53:42'),
(142, 1, 'promise', 'you submitted 1ST for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-24 06:41:50'),
(143, 1, 'promise', 'your address validaion was successful ', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-24 06:44:45'),
(144, 1, 'promise', 'you submitted ANT for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-24 06:46:56'),
(145, 1, 'promise', 'your address validaion was successful ', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-24 06:47:53'),
(146, 0, 'promise', 'logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-25 09:05:52'),
(147, 0, 'promise', 'you submitted 1ST for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-25 09:07:51'),
(148, 0, 'promise', 'you submitted 1ST for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-25 09:08:46'),
(149, 0, 'promise', 'you submitted 1ST for DASH exchange', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-26 12:38:35'),
(150, 0, 'promise', 'you submitted 1ST for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-26 18:18:42'),
(151, 0, 'promise', 'you submitted ANT for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-26 20:21:48'),
(152, 0, 'promise', 'you submitted BTC for BAT exchange', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-26 20:42:43'),
(153, 0, 'promise', 'you submitted BTC for DASH exchange', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-26 20:56:48'),
(154, 0, 'promise', 'you submitted BTC for DASH exchange', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-26 22:14:49'),
(155, 0, 'promise', 'you submitted BTC for DASH exchange', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-26 22:31:51'),
(156, 0, 'promise', 'you submitted true for true exchange', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-26 22:35:10'),
(157, 0, 'promise', 'you submitted BTC for DASH exchange', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-26 22:35:12'),
(158, 0, 'promise', 'you submitted true for true exchange', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-26 22:35:21'),
(159, 0, 'promise', 'Entred  invalid address  ', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-26 22:36:30'),
(160, 0, 'promise', 'Entred invalid rreturn address  ', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-26 22:36:31'),
(161, 0, 'promise', 'you submitted DASH for BTC exchange', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-26 22:37:52'),
(162, 0, 'promise', 'your address validaion was successful ', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-26 22:40:44'),
(163, 0, 'promise', 'your return address validaion was successful ', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-26 22:40:49'),
(164, 0, 'promise', 'you submitted BTC for DASH exchange', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-27 05:11:04'),
(165, 0, 'promise', 'your address validaion was successful ', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-27 05:12:00'),
(166, 0, 'promise', 'your return address validaion was successful ', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-27 05:12:01'),
(167, 0, 'promise', 'you submitted BTC for DASH exchange', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-27 16:55:33'),
(168, 0, 'promise', 'your address validaion was successful ', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-27 16:56:18'),
(169, 0, 'promise', 'Entred invalid rreturn address  ', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-27 16:56:19'),
(170, 0, 'promise', 'you submitted BTC for DASH exchange', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-27 16:57:41'),
(171, 0, 'promise', 'your address validaion was successful ', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-27 16:59:02'),
(172, 0, 'promise', 'your return address validaion was successful ', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-27 16:59:06'),
(173, 0, 'promise', 'you submitted BTC for DASH exchange', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-27 18:27:51'),
(174, 0, 'promise', 'your address validaion was successful ', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-27 18:28:42'),
(175, 0, 'promise', 'your return address validaion was successful ', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-27 18:28:43'),
(176, 0, 'promise', 'you submitted BTC for DASH exchange', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-27 18:33:55'),
(177, 0, 'promise', 'your Deposit address validaion was successful ', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-27 18:34:31'),
(178, 0, 'promise', 'your return address validaion was successful ', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-27 18:34:33'),
(179, 0, 'promise', 'you submitted BTC for DASH exchange', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-27 19:11:13'),
(180, 0, 'promise', 'your Deposit address validaion was successful ', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-27 19:12:01'),
(181, 0, 'promise', 'your return address validaion was successful ', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-27 19:12:02'),
(182, 0, 'promise', 'deposit transaction was initiated ', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-27 19:39:13'),
(183, 0, 'promise', 'you submitted BTC for DASH exchange', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-27 20:12:14'),
(184, 0, 'promise', 'your Deposit address validaion was successful ', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-27 20:13:25'),
(185, 0, 'promise', 'your return address validaion was successful ', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-27 20:13:26'),
(186, 0, 'promise', 'logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-28 16:38:55'),
(208, 0, 'promise', 'logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-28 19:26:10'),
(209, 0, 'p', 'logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-29 07:00:46'),
(210, 0, 'p', 'logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-29 08:34:25'),
(211, 0, 'p', 'you submitted BTC for DASH exchange', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-29 08:36:10'),
(212, 0, 'p', 'Entred  invalid address  ', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-29 08:38:08'),
(213, 0, 'p', 'your return address validaion was successful ', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-29 08:38:09'),
(214, 0, 'p', 'you submitted BTC for DASH exchange', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-29 08:41:41'),
(215, 0, 'p', 'Entred  invalid address  ', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-29 08:42:15'),
(216, 0, 'p', 'your return address validaion was successful ', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-29 08:42:16'),
(217, 0, 'p', 'you submitted BTC for DASH exchange', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-29 08:42:28'),
(218, 0, 'p', 'Entred  invalid address  ', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-29 08:42:59'),
(219, 0, 'p', 'your return address validaion was successful ', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-29 08:43:00'),
(220, 0, 'p', 'you submitted BTC for DASH exchange', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-29 08:43:19'),
(221, 0, 'p', 'your Deposit address validaion was successful ', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-29 08:46:16'),
(222, 0, 'p', 'your return address validaion was successful ', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2017-12-29 08:46:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_log`
--
ALTER TABLE `user_log`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user_log`
--
ALTER TABLE `user_log`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=223;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
