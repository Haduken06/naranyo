-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2026 at 11:37 AM
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
  `id` int(11) NOT NULL,
  `reservation_id` int(11) DEFAULT NULL,
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

INSERT INTO `accepted_bookings` (`id`, `reservation_id`, `fullname`, `email`, `phonenumber`, `purpose`, `date`, `start_time`, `end_time`, `booking_code`, `created_at`, `status`) VALUES
(1, 212, 'Rico Ivan NA Abadies', 'r.abadies@yahoo.com', '+639198154880', 'Basketball', '2026-03-10', '08:00:00', '11:00:00', '654669', '2026-03-08 16:00:02.462827', 'ACCEPTED'),
(2, 213, 'Rico Ivan NA Abadies', 'r.abadies@yahoo.com', '+639198154880', 'Volleyball', '2026-03-10', '11:00:00', '14:00:00', '066942', '2026-03-08 16:00:35.203256', 'ACCEPTED'),
(3, 215, 'Rico Ivan NA Abadies', 'r.abadies@yahoo.com', '+639198154880', 'Basketball', '2026-03-10', '17:00:00', '20:00:00', '871095', '2026-03-08 16:01:00.189137', 'ACCEPTED'),
(4, 214, 'Rico Ivan NA Abadies', 'r.abadies@yahoo.com', '+639198154880', 'Birthday Party', '2026-03-10', '14:00:00', '17:00:00', '042795', '2026-03-08 16:01:25.814422', 'ACCEPTED'),
(5, 216, 'Rico Ivan NA Abadies', 'r.abadies@yahoo.com', '+639198154880', 'Basketball', '2026-03-10', '20:00:00', '23:00:00', '181130', '2026-03-08 16:01:51.415587', 'ACCEPTED'),
(6, 219, 'Rico Ivan NA Abadies', 'r.abadies@yahoo.com', '+639198154880', 'Basketball', '2026-03-18', '08:00:00', '11:00:00', '848110', '2026-03-08 16:10:51.737630', 'ACCEPTED'),
(8, NULL, 'rico', 'rico@gmail.com', '09112456789', 'Announcement: sample', '2026-03-14', '13:00:00', '17:00:00', 'ANN-69ADA00501181', '2026-03-08 16:12:53.006040', 'ACCEPTED'),
(9, 221, 'Rico Ivan NA Abadies', 'r.abadies@yahoo.com', '0919815488', 'Basketball', '2026-03-19', '08:00:00', '11:00:00', '212192', '2026-03-09 01:57:30.189366', 'ACCEPTED'),
(10, 224, 'Rico Ivan NA Abadies', 'r.abadies@yahoo.com', '0919815488', 'Basketball', '2026-03-19', '11:00:00', '14:00:00', '025518', '2026-03-09 02:53:13.999392', 'ACCEPTED'),
(11, 225, 'Rico Ivan NA Abadies', 'r.abadies@yahoo.com', '0919815488', 'Basketball', '2026-03-19', '14:00:00', '17:00:00', '216201', '2026-03-09 02:53:39.471652', 'ACCEPTED'),
(12, 226, 'Rico Ivan NA Abadies', 'r.abadies@yahoo.com', '0919815488', 'Basketball', '2026-03-19', '17:00:00', '20:00:00', '320810', '2026-03-09 02:54:04.924315', 'ACCEPTED'),
(13, 227, 'Rico Ivan NA Abadies', 'r.abadies@yahoo.com', '0919815488', 'Basketball', '2026-03-19', '20:00:00', '23:00:00', '320878', '2026-03-09 02:54:30.214645', 'ACCEPTED');

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
(16, 'sample', 'sample');

-- --------------------------------------------------------

--
-- Table structure for table `booking_history`
--

CREATE TABLE `booking_history` (
  `id` int(11) NOT NULL,
  `reservation_id` int(11) DEFAULT NULL,
  `booking_id` int(11) NOT NULL,
  `users_id` int(11) DEFAULT NULL,
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
(45, 212, 0, NULL, 'Rico Ivan NA Abadies', 'r.abadies@yahoo.com', '2026-03-10', '08:00:00', '11:00:00', 'Accepted', 'rico', '2026-03-09 00:00:02'),
(46, 213, 0, NULL, 'Rico Ivan NA Abadies', 'r.abadies@yahoo.com', '2026-03-10', '11:00:00', '14:00:00', 'Accepted', 'rico', '2026-03-09 00:00:35'),
(47, 215, 0, NULL, 'Rico Ivan NA Abadies', 'r.abadies@yahoo.com', '2026-03-10', '17:00:00', '20:00:00', 'Accepted', 'rico', '2026-03-09 00:01:00'),
(48, 214, 0, NULL, 'Rico Ivan NA Abadies', 'r.abadies@yahoo.com', '2026-03-10', '14:00:00', '17:00:00', 'Accepted', 'rico', '2026-03-09 00:01:25'),
(49, 216, 0, NULL, 'Rico Ivan NA Abadies', 'r.abadies@yahoo.com', '2026-03-10', '20:00:00', '23:00:00', 'Accepted', 'rico', '2026-03-09 00:01:51'),
(50, 217, 0, NULL, 'Rico Ivan NA Abadies', 'r.abadies@yahoo.com', '2026-03-11', '08:00:00', '11:00:00', 'Denied', 'rico', '2026-03-09 00:06:44'),
(51, 219, 0, NULL, 'Rico Ivan NA Abadies', 'r.abadies@yahoo.com', '2026-03-18', '08:00:00', '11:00:00', 'Accepted', 'rico', '2026-03-09 00:10:51'),
(52, 220, 0, NULL, 'Rico Ivan NA Abadies', 'r.abadies@yahoo.com', '2026-03-20', '08:00:00', '09:00:00', 'Accepted', 'rico', '2026-03-09 00:11:16'),
(53, 221, 0, NULL, 'Rico Ivan NA Abadies', 'r.abadies@yahoo.com', '2026-03-19', '08:00:00', '11:00:00', 'Accepted', 'rico', '2026-03-09 09:57:30'),
(54, 222, 0, NULL, 'Rico Ivan NA Abadies', 'r.abadies@yahoo.com', '2026-03-19', '13:00:00', '16:00:00', 'Denied', 'rico', '2026-03-09 10:01:13'),
(55, 224, 0, NULL, 'Rico Ivan NA Abadies', 'r.abadies@yahoo.com', '2026-03-19', '11:00:00', '14:00:00', 'Accepted', 'rico', '2026-03-09 10:53:13'),
(56, 225, 0, NULL, 'Rico Ivan NA Abadies', 'r.abadies@yahoo.com', '2026-03-19', '14:00:00', '17:00:00', 'Accepted', 'rico', '2026-03-09 10:53:39'),
(57, 226, 0, NULL, 'Rico Ivan NA Abadies', 'r.abadies@yahoo.com', '2026-03-19', '17:00:00', '20:00:00', 'Accepted', 'rico', '2026-03-09 10:54:04'),
(58, 227, 0, NULL, 'Rico Ivan NA Abadies', 'r.abadies@yahoo.com', '2026-03-19', '20:00:00', '23:00:00', 'Accepted', 'rico', '2026-03-09 10:54:30');

-- --------------------------------------------------------

--
-- Table structure for table `cancelled_bookings`
--

CREATE TABLE `cancelled_bookings` (
  `id` int(11) NOT NULL,
  `reservation_id` int(11) DEFAULT NULL,
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

INSERT INTO `cancelled_bookings` (`id`, `reservation_id`, `fullname`, `email`, `phonenumber`, `purpose`, `date`, `start_time`, `end_time`, `booking_code`, `created_at`, `status`) VALUES
(1, NULL, 'Rico Ivan NA Abadies', 'r.abadies@yahoo.com', '+639198154880', 'Basketball', '2026-03-12', '08:00:00', '11:00:00', '522949', '2026-03-08 16:04:44.769925', 'CANCELLED'),
(2, NULL, 'Rico Ivan NA Abadies', 'r.abadies@yahoo.com', '0919815488', 'Basketball', '2026-03-21', '08:00:00', '11:00:00', '476728', '2026-03-09 02:07:16.985550', 'CANCELLED'),
(3, NULL, 'Rico Ivan NA Abadies', 'r.abadies@yahoo.com', '0919815488', 'Basketball', '2026-03-20', '08:00:00', '11:00:00', '197086', '2026-03-09 17:12:08.176540', 'CANCELLED');

-- --------------------------------------------------------

--
-- Table structure for table `denied_bookings`
--

CREATE TABLE `denied_bookings` (
  `id` int(11) NOT NULL,
  `reservation_id` int(11) DEFAULT NULL,
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

INSERT INTO `denied_bookings` (`id`, `reservation_id`, `fullname`, `email`, `phonenumber`, `purpose`, `date`, `start_time`, `end_time`, `booking_code`, `created_at`, `status`, `denied_at`, `deny_reason`) VALUES
(1, 217, 'Rico Ivan NA Abadies', 'r.abadies@yahoo.com', '+639198154880', 'Basketball', '2026-03-11', '08:00:00', '11:00:00', '009411', '2026-03-08 16:06:44.817862', 'Denied', '2026-03-08 16:06:44', 'asdasdasd'),
(2, 222, 'Rico Ivan NA Abadies', 'r.abadies@yahoo.com', '0919815488', 'Volleyball', '2026-03-19', '13:00:00', '16:00:00', '095105', '2026-03-09 02:01:13.865108', 'Denied', '2026-03-09 02:01:13', 'aaaaaa');

-- --------------------------------------------------------

--
-- Table structure for table `login_logs`
--

CREATE TABLE `login_logs` (
  `id` int(11) NOT NULL,
  `users_id` int(11) DEFAULT NULL,
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
(3, 15, 'admin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', '2026-01-26 00:48:27'),
(4, 15, 'admin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', '2026-01-26 00:50:55'),
(5, 15, 'admin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', '2026-01-26 01:11:35'),
(6, 15, 'admin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', '2026-01-26 01:17:45'),
(7, 15, 'admin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', '2026-01-26 01:24:25'),
(9, 15, 'admin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', '2026-01-26 02:11:06'),
(12, 15, 'admin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', '2026-01-26 05:48:45'),
(16, 15, 'admin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', '2026-01-27 03:35:58'),
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
(46, 15, 'ermitaadmin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-01 12:57:48'),
(47, 15, 'ermitaadmin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-03 07:04:22'),
(48, 15, 'ermitaadmin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-08 12:25:31'),
(49, 15, 'admin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-08 14:31:00'),
(50, 15, 'admin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-08 14:42:06'),
(51, 15, 'admin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-08 14:51:47'),
(52, 15, 'admin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-08 14:58:01'),
(53, 15, 'admin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-08 15:02:26'),
(54, 15, 'admin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-08 15:03:20'),
(55, 15, 'admin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-08 15:04:55'),
(56, 15, 'admin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-08 15:06:20'),
(57, 15, 'admin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-08 15:19:00'),
(58, 15, 'admin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-08 15:28:36'),
(59, 15, 'admin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-09 01:57:24'),
(60, 15, 'admin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-09 02:13:24'),
(61, 15, 'admin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36 Edg/145.0.0.0', '2026-03-10 05:37:25');

-- --------------------------------------------------------

--
-- Table structure for table `missed_bookings`
--

CREATE TABLE `missed_bookings` (
  `missed_id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phonenumber` varchar(100) NOT NULL,
  `purpose` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `booking_code` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `missed_bookings`
--

INSERT INTO `missed_bookings` (`missed_id`, `fullname`, `email`, `phonenumber`, `purpose`, `date`, `start_time`, `end_time`, `booking_code`, `created_at`, `status`) VALUES
(0, 'Rico Ivan NA Abadies', 'r.abadies@yahoo.com', '+639198154880', 'Basketball', '2026-03-20', '08:00:00', '09:00:00', '487134', '2026-03-08 16:11:16', 'MISSED');

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
(228, 'Rico Ivan NA Abadies', 'r.abadies@yahoo.com', '0919815488', 'Basketball', '2026-03-13', '08:00:00', '11:00:00', '177496', '2026-03-09 17:11:03.158526', 'PENDING');

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
(15, 'admin123', 'rico', 'rico@gmail.com', '09112456789', '$2y$10$9ZQhF4X8kFmjLIcviHgeZutkExK23cWxFBL7h9Cpkcf9IjWDdrc7m', '2026-03-08 16:13:41', 'admin', '/courtmss/uploads/profile_pic/profile_admin123_1771222332.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accepted_bookings`
--
ALTER TABLE `accepted_bookings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reservation_id` (`reservation_id`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`announcements_id`);

--
-- Indexes for table `booking_history`
--
ALTER TABLE `booking_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `reservation_id` (`reservation_id`);

--
-- Indexes for table `cancelled_bookings`
--
ALTER TABLE `cancelled_bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reservation_id` (`reservation_id`);

--
-- Indexes for table `denied_bookings`
--
ALTER TABLE `denied_bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reservation_id` (`reservation_id`);

--
-- Indexes for table `login_logs`
--
ALTER TABLE `login_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_id` (`users_id`);

--
-- Indexes for table `missed_bookings`
--
ALTER TABLE `missed_bookings`
  ADD PRIMARY KEY (`missed_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `announcements_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `booking_history`
--
ALTER TABLE `booking_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `cancelled_bookings`
--
ALTER TABLE `cancelled_bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `denied_bookings`
--
ALTER TABLE `denied_bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `login_logs`
--
ALTER TABLE `login_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `reservation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `users_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accepted_bookings`
--
ALTER TABLE `accepted_bookings`
  ADD CONSTRAINT `accepted_bookings_ibfk_1` FOREIGN KEY (`reservation_id`) REFERENCES `reservations` (`reservation_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `booking_history`
--
ALTER TABLE `booking_history`
  ADD CONSTRAINT `booking_history_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`users_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `booking_history_ibfk_2` FOREIGN KEY (`reservation_id`) REFERENCES `reservations` (`reservation_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `booking_history_ibfk_3` FOREIGN KEY (`users_id`) REFERENCES `users` (`users_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `booking_history_ibfk_4` FOREIGN KEY (`reservation_id`) REFERENCES `reservations` (`reservation_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `booking_history_ibfk_5` FOREIGN KEY (`users_id`) REFERENCES `users` (`users_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `booking_history_ibfk_6` FOREIGN KEY (`reservation_id`) REFERENCES `reservations` (`reservation_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `booking_history_ibfk_7` FOREIGN KEY (`users_id`) REFERENCES `users` (`users_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `booking_history_ibfk_8` FOREIGN KEY (`reservation_id`) REFERENCES `reservations` (`reservation_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `cancelled_bookings`
--
ALTER TABLE `cancelled_bookings`
  ADD CONSTRAINT `cancelled_bookings_ibfk_1` FOREIGN KEY (`reservation_id`) REFERENCES `reservations` (`reservation_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `denied_bookings`
--
ALTER TABLE `denied_bookings`
  ADD CONSTRAINT `denied_bookings_ibfk_1` FOREIGN KEY (`reservation_id`) REFERENCES `reservations` (`reservation_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `login_logs`
--
ALTER TABLE `login_logs`
  ADD CONSTRAINT `login_logs_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`users_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `login_logs_ibfk_2` FOREIGN KEY (`users_id`) REFERENCES `users` (`users_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `login_logs_ibfk_3` FOREIGN KEY (`users_id`) REFERENCES `users` (`users_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `login_logs_ibfk_4` FOREIGN KEY (`users_id`) REFERENCES `users` (`users_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `login_logs_ibfk_5` FOREIGN KEY (`users_id`) REFERENCES `users` (`users_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `login_logs_ibfk_6` FOREIGN KEY (`users_id`) REFERENCES `users` (`users_id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
