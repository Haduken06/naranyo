-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2026 at 04:43 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `court_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `accepted_bookings`
--

CREATE TABLE `accepted_bookings` (
  `reservation_id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phonenumber` varchar(100) DEFAULT NULL,
  `purpose` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `booking_code` varchar(100) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accepted_bookings`
--

INSERT INTO `accepted_bookings` (`reservation_id`, `fullname`, `email`, `phonenumber`, `purpose`, `date`, `start_time`, `end_time`, `booking_code`, `created_at`, `status`) VALUES
(80, 'rico ivan abadies', 'r.abadies@yahoo.com', '', 'basketball', '2026-02-05', NULL, NULL, '', '2026-02-10 06:48:51.163195', 'Accepted'),
(81, 'rico ivan abadies', 'r.abadies@yahoo.com', '', 'basketball', '2026-02-05', NULL, NULL, '', '2026-02-10 08:59:27.121738', 'Accepted'),
(86, 'rico ivan abadies', 'r.abadies@yahoo.com', '09123456789', 'basketball', '2026-02-13', '14:00:00', '16:00:00', '837001', '2026-02-10 06:41:57.023610', 'Accepted'),
(87, 'rico ivan abadies', 'r.abadies@yahoo.com', '09123456789', 'basketball', '2026-02-12', '10:00:00', '11:00:00', '520601', '2026-02-10 06:41:43.392332', 'Accepted'),
(94, 'rico ivan abadies', 'iraangelineq@gmail.com', '09123456789', 'basketball', '2026-02-19', '14:09:00', '16:09:00', '462908', '2026-02-16 06:09:55.513350', 'Accepted'),
(95, 'rico ivan abadies', 'iraangelineq@gmail.com', '09123456789', 'basketball', '2026-02-19', '13:10:00', '14:10:00', '102109', '2026-02-16 09:58:47.339063', 'Accepted'),
(96, 'rico ivan abadies', 'iraangelineq@gmail.com', '09123456789', 'basketball', '2026-02-19', '18:00:00', '21:00:00', '717827', '2026-02-16 10:05:22.842207', 'Accepted'),
(97, 'rico ivan abadies', 'iraangelineq@gmail.com', '09123456789', 'basketball', '2026-02-19', '18:23:00', '19:58:00', '266687', '2026-02-16 10:05:49.174559', 'Accepted'),
(98, 'rico ivan abadies', 'iraangelineq@gmail.com', '09123456789', 'basketball', '2026-02-04', '18:10:00', '22:07:00', '111013', '2026-02-16 10:31:49.793436', 'Accepted'),
(99, 'rico ivan abadies', 'iraangelineq@gmail.com', '09123456789', 'basketball', '2026-02-11', '18:30:00', '20:30:00', '698743', '2026-02-16 10:31:51.293710', 'Accepted'),
(100, 'rico ivan abadies', 'iraangelineq@gmail.com', '09123456789', 'basketball', '2026-02-20', '18:36:00', '20:36:00', '816981', '2026-02-16 10:37:00.771293', 'Accepted'),
(101, 'rico ivan abadies', 'iraangelineq@gmail.com', '09123456789', 'basketball', '2026-02-20', '06:36:00', '08:36:00', '957187', '2026-02-16 10:37:03.662292', 'Accepted'),
(102, 'rico ivan abadies', 'iraangelineq@gmail.com', '09123456789', 'basketball', '2026-02-20', '08:40:00', '10:36:00', '118830', '2026-02-16 10:37:53.617182', 'Accepted'),
(104, 'rico ivan abadies', 'iraangelineq@gmail.com', '09123456789', 'basketball', '2026-02-19', '21:59:00', '23:51:00', '626213', '2026-02-16 10:53:11.451572', 'Accepted'),
(105, 'rico ivan abadies', 'iraangelineq@gmail.com', '09123456789', 'basketball', '2026-02-21', '18:00:00', '19:00:00', '967338', '2026-02-16 10:53:50.194042', 'Accepted'),
(106, 'rico ivan abadies', 'iraangelineq@gmail.com', '09123456789', 'basketball', '2026-02-21', '19:01:00', '20:00:00', '325460', '2026-02-16 10:54:27.380035', 'Accepted'),
(107, 'rico ivan abadies', 'iraangelineq@gmail.com', '09123456789', 'basketball', '2026-02-21', '20:00:00', '21:00:00', '670802', '2026-02-16 10:55:39.444612', 'Accepted'),
(108, 'rico ivan abadies', 'r.abadies@yahoo.com', '09123456789', 'basketball', '2026-02-21', '13:42:00', '15:42:00', '997211', '2026-02-19 07:11:52.353449', 'Accepted'),
(110, 'rico ivan abadies', 'r.abadies@yahoo.com', '09123456789', 'basketball', '2026-03-06', '15:57:00', '19:58:00', '679503', '2026-02-22 09:52:19.790231', 'ACCEPTED'),
(111, 'rico ivan abadies', 'r.abadies@yahoo.com', '09123456789', 'basketball', '2026-02-22', '16:09:00', '18:09:00', '919777', '2026-02-22 12:36:47.579980', 'ACCEPTED'),
(116, 'rio ban', 'ban@gmail.com', '09123456789', 'basket', '2026-03-06', '19:59:00', '21:34:00', '107477', '2026-02-22 12:44:04.287931', 'ACCEPTED'),
(118, 'rico ivan abadies', 'iraangelineq@gmail.com', '09123456789', 'basketball', '2026-02-27', '00:25:00', '02:25:00', '654439', '2026-02-22 16:26:19.989579', 'ACCEPTED'),
(125, 'rico ivan abadies', 'iraangelineq@gmail.com', '09123456789', 'basketball', '2026-02-23', '17:42:00', '20:42:00', '681061', '2026-02-23 06:44:10.035679', 'ACCEPTED'),
(128, 'rico ivan abadies', 'iraangelineq@gmail.com', '09123456789', 'basketball', '2026-02-26', '19:55:00', '21:55:00', '333864', '2026-02-24 11:57:47.154323', 'ACCEPTED'),
(146, 'Rico Ivan NA Abadies', 'r.abadies@yahoo.com', '+639198154880', 'Basketball', '2026-03-10', '08:00:00', '11:00:00', '', '2026-02-28 16:20:44.183806', 'ACCEPTED'),
(147, 'ADMIN ANNOUNCEMENT', 'admin@system.local', '0000000000', 'aa - aaa', '2026-03-20', '08:00:00', '10:00:00', '', '2026-02-28 18:48:07.618578', 'ACCEPTED'),
(148, 'ADMIN ANNOUNCEMENT', 'admin@system.local', '0000000000', 'a123123 - aaaa123123123', '2026-03-20', '08:49:00', '11:49:00', '', '2026-02-28 18:49:35.909513', 'ACCEPTED'),
(149, 'ADMIN ANNOUNCEMENT', 'admin@system.local', '0000000000', 'aa123 - 123', '2026-03-20', '11:59:00', '12:01:00', '', '2026-02-28 18:52:05.469661', 'ACCEPTED'),
(194, 'Rico Ivan NA Abadies', 'r.abadies@yahoo.com', '+639198154880', 'Basketball', '2026-03-05', '13:00:00', '16:00:00', '309424', '2026-03-01 13:07:31.820202', 'ACCEPTED');

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `announcements_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`announcements_id`, `title`, `message`) VALUES
(1, 'aaa', 'aaaa');

-- --------------------------------------------------------

--
-- Table structure for table `booking_history`
--

CREATE TABLE `booking_history` (
  `id` int(11) NOT NULL,
  `reservation_id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `date` date DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `action_by` varchar(100) DEFAULT NULL,
  `action_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_history`
--

INSERT INTO `booking_history` (`id`, `reservation_id`, `booking_id`, `users_id`, `fullname`, `email`, `date`, `start_time`, `end_time`, `status`, `action_by`, `action_at`) VALUES
(1, 111, 0, 0, 'rico ivan abadies', 'r.abadies@yahoo.com', '2026-02-22', '16:09:00', '18:09:00', 'Accepted', 'rico', '2026-02-22 20:36:47'),
(2, 113, 0, 0, 'rico ivan', 'iraangeline.abadiesque.1', '2026-02-26', '15:40:00', '18:40:00', 'Denied', 'rico', '2026-02-22 20:37:05'),
(3, 117, 0, 0, 'rico ivan', '123@gmail.com', '2026-03-06', '07:35:00', '09:35:00', 'Denied', 'rico', '2026-02-22 20:43:53'),
(4, 114, 0, 0, 'rico ivan', 'iraangeline.abadiesque.1', '2026-02-27', '17:23:00', '19:23:00', 'Denied', 'rico', '2026-02-22 20:44:02'),
(5, 116, 0, 0, 'rio ban', 'ban@gmail.com', '2026-03-06', '19:59:00', '21:34:00', 'Accepted', 'rico', '2026-02-22 20:44:04'),
(6, 118, 0, 0, 'rico ivan abadies', 'iraangelineq@gmail.com', '2026-02-27', '00:25:00', '02:25:00', 'Accepted', 'rico', '2026-02-23 00:26:19'),
(7, 119, 0, 0, 'rico ivan abadies', 'iraangelineq@gmail.com', '2026-02-28', '11:37:00', '13:37:00', 'Denied', 'rico', '2026-02-23 12:04:39'),
(8, 122, 0, 0, 'rico ivan abadies', 'iraangelineq@gmail.com', '2026-02-25', '16:23:00', '17:23:00', 'Denied', 'rico', '2026-02-23 13:36:45'),
(9, 125, 0, 0, 'rico ivan abadies', 'iraangelineq@gmail.com', '2026-02-23', '17:42:00', '20:42:00', 'Accepted', 'rico', '2026-02-23 14:44:10'),
(10, 128, 0, 0, 'rico ivan abadies', 'iraangelineq@gmail.com', '2026-02-26', '19:55:00', '21:55:00', 'Accepted', 'rico', '2026-02-24 19:57:47'),
(11, 129, 0, 0, 'rico ivan abadies', 'iraangelineq@gmail.com', '2026-02-28', '19:55:00', '21:55:00', 'Denied', 'rico', '2026-02-24 19:57:58'),
(12, 132, 0, 0, 'MAM SATO', 'sato@gmail.com', '2026-03-01', '19:00:00', '20:00:00', 'Denied', 'rico', '2026-02-28 22:59:40'),
(13, 146, 0, 0, 'Rico Ivan NA Abadies', 'r.abadies@yahoo.com', '2026-03-10', '08:00:00', '11:00:00', 'Accepted', 'rico', '2026-03-01 00:20:44'),
(14, 148, 0, 0, 'Rico Ivan NA Abadies', 'r.abadies@yahoo.com', '2026-03-10', '14:00:00', '17:00:00', 'Denied', 'rico', '2026-03-01 00:21:07'),
(15, 194, 0, 0, 'Rico Ivan NA Abadies', 'r.abadies@yahoo.com', '2026-03-05', '13:00:00', '16:00:00', 'Accepted', 'rico', '2026-03-01 21:07:31');

-- --------------------------------------------------------

--
-- Table structure for table `cancelled_bookings`
--

CREATE TABLE `cancelled_bookings` (
  `reservation_id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phonenumber` varchar(100) DEFAULT NULL,
  `purpose` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `booking_code` varchar(100) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cancelled_bookings`
--

INSERT INTO `cancelled_bookings` (`reservation_id`, `fullname`, `email`, `phonenumber`, `purpose`, `date`, `start_time`, `end_time`, `booking_code`, `created_at`, `status`) VALUES
(84, 'rico ivan abadies', 'r.abadies@yahoo.com', '09123456789', 'basketball', '2026-02-06', NULL, NULL, '958937', '0000-00-00 00:00:00.000000', 'cancelled'),
(88, 'rico ivan abadies', 'r.abadies@yahoo.com', '09123456789', 'basketball', '2026-02-20', '13:30:00', '17:30:00', '902471', '2026-02-09 22:30:20.000000', 'cancelled'),
(89, 'rico ivan abadies', 'r.abadies@yahoo.com', '09123456789', 'basketball', '2026-02-12', '13:51:00', '16:51:00', '215909', '2026-02-09 22:51:31.000000', 'cancelled'),
(90, 'rico ivan abadies', 'iraangelineq@gmail.com', '09123456789', 'basketball', '2026-02-20', '16:59:00', '19:59:00', '457910', '2026-02-10 02:00:07.000000', 'cancelled'),
(91, 'rico ivan abadies', 'r.abadies@yahoo.com', '09123456789', 'basketball', '2026-02-20', '20:11:00', '23:11:00', '812486', '2026-02-11 05:11:51.000000', 'cancelled'),
(109, 'rico ivan abadies', 'r.abadies@yahoo.com', '09123456789', 'basketball', '2026-02-21', '21:12:00', '23:12:00', '207459', '2026-02-19 00:12:42.000000', 'cancelled'),
(112, 'rico ivan abadies', 'r.abadies@yahoo.com', '09123456789', 'basketball', '2026-02-25', '16:35:00', '19:35:00', '494920', '2026-02-19 01:35:38.000000', 'cancelled'),
(115, 'rico ivan', 'asjkdn@yahoo.com', '09123456789', 'basket', '2026-02-28', '17:26:00', '19:26:00', '856562', '2026-02-22 02:26:59.000000', 'cancelled'),
(120, 'rico ivan abadies', 'iraangelineq@gmail.com', '09123456789', 'basketball', '2026-03-07', '12:55:00', '14:55:00', '566541', '2026-02-22 20:55:29.000000', 'CANCELLED'),
(121, 'rico ivan abadies', 'iraangelineq@gmail.com', '09123456789', 'basketball', '2026-02-24', '15:20:00', '17:20:00', '597476', '2026-02-22 22:21:36.000000', 'CANCELLED'),
(124, 'rico ivan abadies', 'iraangelineq@gmail.com', '09123456789', 'basketball', '2026-02-25', '16:57:00', '17:57:00', '127799', '2026-02-22 22:58:10.000000', 'CANCELLED'),
(127, 'rico ivan abadies', 'iraangelineq@gmail.com', '09123456789', 'basketball', '2026-02-28', '16:31:00', '18:31:00', '314995', '2026-02-24 01:31:53.000000', 'CANCELLED'),
(130, 'rico ivan abadies', 'iraangelineq@gmail.com', '09123456789', 'basketball', '2026-02-27', '20:00:00', '21:00:00', '797439', '2026-02-24 05:00:46.000000', 'CANCELLED'),
(135, 'rico ivan abadies', 'iraangelineq@gmail.com', '09123456789', 'basketball', '2026-02-26', '22:16:00', '23:16:00', '634363', '2026-02-25 04:17:23.000000', 'CANCELLED'),
(137, 'rico ivan abadies', 'iraangelineq@gmail.com', '09123456789', 'basketball', '2026-02-28', '20:22:00', '22:16:00', '415324', '2026-02-25 04:23:13.000000', 'CANCELLED'),
(138, 'rico ivan abadies', 'iraangelineq@gmail.com', '09123456789', 'basketball', '2026-02-27', '20:06:00', '20:12:00', '628292', '2026-02-25 05:06:32.000000', 'CANCELLED'),
(139, 'rico ivan abadies', 'iraangelineq@gmail.com', '09123456789', 'basketball', '2026-02-27', '20:11:00', '20:13:00', '141363', '2026-02-25 05:13:00.000000', 'CANCELLED'),
(154, 'Rico Ivan NA Abadies', 'r.abadies@yahoo.com', '+639198154880', 'Basketball', '2026-03-14', '09:00:00', '10:00:00', '635937', '2026-02-28 17:07:54.648925', 'CANCELLED'),
(173, 'Rico Ivan NA Abadies', 'r.abadies@yahoo.com', NULL, 'Basketball', '2026-03-03', '10:00:00', '11:00:00', '035173', '2026-02-28 18:24:52.125083', 'CANCELLED'),
(179, 'Rico Ivan NA Abadies', 'r.abadies@yahoo.com', '+639198154880', 'Basketball', '2026-03-03', '08:00:00', '11:00:00', '327286', '2026-03-01 11:14:05.377548', 'CANCELLED');

-- --------------------------------------------------------

--
-- Table structure for table `denied_bookings`
--

CREATE TABLE `denied_bookings` (
  `reservation_id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phonenumber` varchar(100) DEFAULT NULL,
  `purpose` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `booking_code` varchar(100) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `status` varchar(20) NOT NULL,
  `denied_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deny_reason` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `denied_bookings`
--

INSERT INTO `denied_bookings` (`reservation_id`, `fullname`, `email`, `phonenumber`, `purpose`, `date`, `start_time`, `end_time`, `booking_code`, `created_at`, `status`, `denied_at`, `deny_reason`) VALUES
(82, 'rico ivan abadies', 'r.abadies@yahoo.com', '', 'basketball', '2026-02-05', NULL, NULL, '', '2026-02-10 06:48:47.398957', 'Denied', '2026-02-10 06:48:47', ''),
(83, 'rico ivan abadies', 'r.abadies@yahoo.com', '09123456789', 'basketball', '2026-02-06', NULL, NULL, '148251', '2026-02-10 06:48:35.079100', 'Denied', '2026-02-10 06:48:35', ''),
(92, 'rico ivan abadies', 'iraangelineq@gmail.com', '09123456789', 'basketball', '2026-02-20', '11:41:00', '13:41:00', '252596', '2026-02-16 04:13:22.353162', 'Denied', '2026-02-16 04:13:22', 'asdasd'),
(93, 'rico ivan abadies', 'iraangelineq@gmail.com', '09123456789', 'basketball', '2026-02-17', '12:18:00', '13:18:00', '414794', '2026-02-16 04:18:25.759973', 'Denied', '2026-02-16 04:18:25', 'alaw a balo'),
(113, 'rico ivan', 'iraangeline.abadiesque.1', '09123456789', 'basket', '2026-02-26', '15:40:00', '18:40:00', '457399', '2026-02-22 12:37:05.849719', 'Denied', '2026-02-22 12:37:05', 'ala wa balo'),
(114, 'rico ivan', 'iraangeline.abadiesque.1', '09123456789', 'basket', '2026-02-27', '17:23:00', '19:23:00', '', '2026-02-22 12:44:02.026386', 'Denied', '2026-02-22 12:44:02', 'asdasdasd'),
(117, 'rico ivan', '123@gmail.com', '09123456789', 'basket', '2026-03-06', '07:35:00', '09:35:00', '222718', '2026-02-22 12:43:53.214462', 'Denied', '2026-02-22 12:43:53', 'asd'),
(119, 'rico ivan abadies', 'iraangelineq@gmail.com', '09123456789', 'basketball', '2026-02-28', '11:37:00', '13:37:00', '979441', '2026-02-23 04:04:39.914450', 'Denied', '2026-02-23 04:04:39', 'yes'),
(122, 'rico ivan abadies', 'iraangelineq@gmail.com', '09123456789', 'basketball', '2026-02-25', '16:23:00', '17:23:00', '676977', '2026-02-23 05:36:45.176609', 'Denied', '2026-02-23 05:36:45', 'yes'),
(129, 'rico ivan abadies', 'iraangelineq@gmail.com', '09123456789', 'basketball', '2026-02-28', '19:55:00', '21:55:00', '903847', '2026-02-24 11:57:58.075803', 'Denied', '2026-02-24 11:57:58', '123'),
(132, 'MAM SATO', 'sato@gmail.com', '09123456789', 'basketball', '2026-03-01', '19:00:00', '20:00:00', '389948', '2026-02-28 14:59:40.395594', 'Denied', '2026-02-28 14:59:40', 'aaa'),
(148, 'Rico Ivan NA Abadies', 'r.abadies@yahoo.com', '+639198154880', 'Basketball', '2026-03-10', '14:00:00', '17:00:00', '', '2026-02-28 16:21:07.344757', 'Denied', '2026-02-28 16:21:07', 'aaaaa');

-- --------------------------------------------------------

--
-- Table structure for table `login_logs`
--

CREATE TABLE `login_logs` (
  `id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `role` varchar(20) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `user_agent` text NOT NULL,
  `login_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login_logs`
--

INSERT INTO `login_logs` (`id`, `users_id`, `username`, `role`, `ip_address`, `user_agent`, `login_time`) VALUES
(1, 15, 'admin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-01-25 14:55:40'),
(2, 12, 'rics', 'user', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-25 16:04:40'),
(3, 15, 'admin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', '2026-01-26 00:48:27'),
(4, 15, 'admin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', '2026-01-26 00:50:55'),
(5, 15, 'admin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', '2026-01-26 01:11:35'),
(6, 15, 'admin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', '2026-01-26 01:17:45'),
(7, 15, 'admin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', '2026-01-26 01:24:25'),
(8, 12, 'rics', 'user', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', '2026-01-26 02:02:17'),
(9, 15, 'admin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', '2026-01-26 02:11:06'),
(10, 18, 'ricows', 'user', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', '2026-01-26 02:11:22'),
(11, 12, 'rics', 'user', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', '2026-01-26 05:48:17'),
(12, 15, 'admin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', '2026-01-26 05:48:45'),
(13, 18, 'ricows', 'user', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', '2026-01-26 05:51:18'),
(14, 18, 'ricows', 'user', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', '2026-01-26 07:00:13'),
(15, 18, 'ricows', 'user', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', '2026-01-27 03:30:55'),
(16, 15, 'admin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', '2026-01-27 03:35:58'),
(17, 18, 'ricows', 'user', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', '2026-02-02 05:25:12'),
(18, 18, 'ricows', 'user', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', '2026-02-02 05:34:34'),
(19, 15, 'admin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', '2026-02-03 05:53:21'),
(20, 15, 'admin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', '2026-02-06 06:50:21'),
(21, 15, 'admin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', '2026-02-10 05:32:24'),
(22, 15, 'admin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', '2026-02-10 08:38:05'),
(23, 15, 'admin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', '2026-02-16 03:26:40'),
(24, 15, 'admin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36 Edg/145.0.0.0', '2026-02-19 05:37:43'),
(25, 15, 'admin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 09:52:03'),
(26, 15, 'admin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36 Edg/145.0.0.0', '2026-02-22 12:21:52'),
(27, 15, 'admin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36 Edg/145.0.0.0', '2026-02-22 12:42:49'),
(28, 15, 'admin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36 Edg/145.0.0.0', '2026-02-22 14:03:31'),
(29, 15, 'ermitaadmin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36 Edg/145.0.0.0', '2026-02-22 16:21:57'),
(30, 15, 'ermitaadmin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36 Edg/145.0.0.0', '2026-02-22 16:26:16'),
(31, 15, 'ermitaadmin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36 Edg/145.0.0.0', '2026-02-23 03:33:36'),
(32, 15, 'ermitaadmin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36 Edg/145.0.0.0', '2026-02-23 05:36:10'),
(33, 15, 'ermitaadmin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36 Edg/145.0.0.0', '2026-02-23 06:43:46'),
(34, 15, 'ermitaadmin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36 Edg/145.0.0.0', '2026-02-23 11:30:03'),
(35, 15, 'ermitaadmin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36 Edg/145.0.0.0', '2026-02-24 06:58:43'),
(36, 15, 'ermitaadmin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36 Edg/145.0.0.0', '2026-02-24 09:36:54'),
(37, 15, 'ermitaadmin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36 Edg/145.0.0.0', '2026-02-24 09:37:10'),
(38, 15, 'ermitaadmin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36 Edg/145.0.0.0', '2026-02-24 09:41:04'),
(39, 15, 'ermitaadmin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36 Edg/145.0.0.0', '2026-02-24 09:43:11'),
(40, 15, 'ermitaadmin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36 Edg/145.0.0.0', '2026-02-24 11:08:55'),
(41, 15, 'ermitaadmin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36 Edg/145.0.0.0', '2026-02-24 11:12:45'),
(42, 15, 'ermitaadmin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36 Edg/145.0.0.0', '2026-02-25 05:26:29'),
(43, 15, 'ermitaadmin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36 Edg/145.0.0.0', '2026-02-25 11:01:20'),
(44, 15, 'ermitaadmin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36 Edg/145.0.0.0', '2026-02-25 12:03:26'),
(45, 15, 'ermitaadmin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 14:57:16'),
(46, 15, 'ermitaadmin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-01 12:57:48');

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `reservation_id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phonenumber` varchar(100) DEFAULT NULL,
  `purpose` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `booking_code` varchar(100) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`reservation_id`, `fullname`, `email`, `phonenumber`, `purpose`, `date`, `start_time`, `end_time`, `booking_code`, `created_at`, `status`) VALUES
(171, 'Rico Ivan NA Abadies', 'r.abadies@yahoo.com', NULL, 'Basketball', '2026-03-03', '08:00:00', '09:00:00', '', '2026-02-28 18:20:05.826366', 'PENDING'),
(172, 'Rico Ivan NA Abadies', 'r.abadies@yahoo.com', NULL, 'Basketball', '2026-03-03', '09:00:00', '10:00:00', '', '2026-02-28 18:21:08.922848', 'PENDING'),
(174, 'Rico Ivan NA Abadies', 'r.abadies@yahoo.com', NULL, 'Basketball', '2026-03-04', '08:00:00', '11:00:00', '132852', '2026-02-28 18:25:44.204645', 'PENDING'),
(175, 'Rico Ivan NA Abadies', 'r.abadies@yahoo.com', '+639198154880', 'Basketball', '2026-03-05', '08:00:00', '11:00:00', '380693', '2026-02-28 18:29:25.604788', 'PENDING'),
(176, 'Rico Ivan NA Abadies', 'r.abadies@yahoo.com', '+639198154880', 'Basketball', '2026-03-20', '11:00:00', '13:00:00', '957435', '2026-03-01 10:29:15.672968', 'PENDING'),
(177, 'Rico Ivan NA Abadies', 'r.abadies@yahoo.com', '+639198154880', '', '2026-03-20', '11:00:00', '14:00:00', '697050', '2026-03-01 10:30:10.560274', 'PENDING'),
(178, 'Rico Ivan NA Abadies', 'r.abadies@yahoo.com', '+639198154880', 'Basketball', '2026-03-20', '11:00:00', '14:00:00', '450933', '2026-03-01 10:31:01.338028', 'PENDING'),
(180, 'Rico Ivan NA Abadies', 'r.abadies@yahoo.com', '+639198154880', 'Basketball', '2026-03-03', '10:00:00', '13:00:00', '582716', '2026-03-01 11:14:51.750593', 'PENDING'),
(181, 'Rico Ivan NA Abadies', 'r.abadies@yahoo.com', '+639198154880', 'Basketball', '2026-03-03', '13:00:00', '16:00:00', '004876', '2026-03-01 11:15:22.716209', 'PENDING'),
(182, 'Rico Ivan NA Abadies', 'r.abadies@yahoo.com', '+639198154880', 'Basketball', '2026-03-03', '16:00:00', '19:00:00', '376175', '2026-03-01 11:16:10.269124', 'PENDING'),
(183, 'Rico Ivan NA Abadies', 'r.abadies@yahoo.com', '+639198154880', 'Basketball', '2026-03-03', '19:00:00', '22:00:00', '187598', '2026-03-01 11:17:09.743480', 'PENDING'),
(184, 'Rico Ivan NA Abadies', 'r.abadies@yahoo.com', '+639198154880', 'Basketball', '2026-03-04', '08:00:00', '11:00:00', '632809', '2026-03-01 11:22:24.085819', 'PENDING'),
(185, 'Rico Ivan NA Abadies', 'r.abadies@yahoo.com', '+639198154880', 'Basketball', '2026-03-04', '08:00:00', '11:00:00', '290374', '2026-03-01 11:39:40.821432', 'PENDING'),
(186, 'Rico Ivan NA Abadies', 'r.abadies@yahoo.com', '+639198154880', 'Basketball', '2026-03-04', '08:00:00', '11:00:00', '549997', '2026-03-01 11:44:48.205098', 'PENDING'),
(187, 'Rico Ivan NA Abadies', 'r.abadies@yahoo.com', '+639198154880', 'Basketball', '2026-03-04', '08:00:00', '10:00:00', '384297', '2026-03-01 12:04:00.213795', 'PENDING'),
(188, 'Rico Ivan NA Abadies', 'r.abadies@yahoo.com', '+639198154880', 'Basketball', '2026-03-05', '08:00:00', '09:00:00', '660127', '2026-03-01 12:15:45.633992', 'PENDING'),
(189, 'Rico Ivan NA Abadies', 'r.abadies@yahoo.com', '+639198154880', 'Basketball', '2026-03-05', '08:00:00', '09:00:00', '531060', '2026-03-01 12:16:15.875260', 'PENDING'),
(190, 'Rico Ivan NA Abadies', 'r.abadies@yahoo.com', '+639198154880', 'Basketball', '2026-03-05', '08:00:00', '09:00:00', '204355', '2026-03-01 12:41:42.990877', 'PENDING'),
(191, 'Rico Ivan NA Abadies', 'r.abadies@yahoo.com', '+639198154880', 'Basketball', '2026-03-05', '08:00:00', '09:00:00', '252215', '2026-03-01 12:43:34.549335', 'PENDING'),
(192, 'Rico Ivan NA Abadies', 'r.abadies@yahoo.com', '+639198154880', 'Basketball', '2026-03-05', '08:00:00', '09:00:00', '326375', '2026-03-01 12:49:31.573649', 'PENDING'),
(193, 'Rico Ivan NA Abadies', 'r.abadies@yahoo.com', '+639198154880', 'Basketball', '2026-03-05', '08:00:00', '09:00:00', '489503', '2026-03-01 13:02:25.502118', 'PENDING'),
(195, 'Rico Ivan NA Abadies', 'r.abadies@yahoo.com', '+639198154880', 'Basketball', '2026-03-10', '08:00:00', '09:00:00', '982428', '2026-03-01 13:05:30.738467', 'PENDING'),
(196, 'Rico Ivan NA Abadies', 'r.abadies@yahoo.com', '+639198154880', 'Basketball', '2026-03-05', '13:00:00', '16:00:00', '487653', '2026-03-01 13:08:29.707378', 'PENDING'),
(197, 'Rico Ivan NA Abadies', 'r.abadies@yahoo.com', '+639198154880', 'Basketball', '2026-03-07', '08:00:00', '09:00:00', '406105', '2026-03-01 13:18:21.687650', 'PENDING'),
(198, 'Rico Ivan NA Abadies', 'r.abadies@yahoo.com', '+639198154880', 'Basketball', '2026-03-11', '08:00:00', '09:00:00', '381762', '2026-03-01 15:40:52.184552', 'PENDING');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `users_id` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phonenumber` varchar(100) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `role` enum('admin','user') NOT NULL,
  `profile_pic` varchar(255) DEFAULT 'assets/imgs/pfp.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`users_id`, `username`, `fullname`, `email`, `phonenumber`, `password`, `created_at`, `role`, `profile_pic`) VALUES
(15, 'ermitaadmin123', 'rico', 'rico@gmail.com', '09112456789', '$2y$10$84OGY5dnxXNf.hxGSn.lVOJNAhkeNSQGVl931hAwVDn2b2J8asoZO', '2026-02-22 16:24:38', 'admin', '/courtmss/uploads/profile_pic/profile_admin123_1771222332.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accepted_bookings`
--
ALTER TABLE `accepted_bookings`
  ADD PRIMARY KEY (`reservation_id`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`announcements_id`);

--
-- Indexes for table `booking_history`
--
ALTER TABLE `booking_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cancelled_bookings`
--
ALTER TABLE `cancelled_bookings`
  ADD PRIMARY KEY (`reservation_id`);

--
-- Indexes for table `denied_bookings`
--
ALTER TABLE `denied_bookings`
  ADD PRIMARY KEY (`reservation_id`);

--
-- Indexes for table `login_logs`
--
ALTER TABLE `login_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`reservation_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`users_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accepted_bookings`
--
ALTER TABLE `accepted_bookings`
  MODIFY `reservation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `announcements_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `booking_history`
--
ALTER TABLE `booking_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `cancelled_bookings`
--
ALTER TABLE `cancelled_bookings`
  MODIFY `reservation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT for table `denied_bookings`
--
ALTER TABLE `denied_bookings`
  MODIFY `reservation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `login_logs`
--
ALTER TABLE `login_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `reservation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=199;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `users_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
