-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2020 at 07:42 PM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pixxelho_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `accountants`
--

CREATE TABLE IF NOT EXISTS `accountants` (
  `id` int(11) unsigned NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `address` text,
  `dob` date DEFAULT NULL,
  `designation` varchar(50) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accountants`
--

INSERT INTO `accountants` (`id`, `name`, `email`, `password`, `address`, `dob`, `designation`, `sex`, `phone`, `image`, `is_active`, `created_at`) VALUES
(2, 'Faizan Ali', 'faizan@smil.edu.pk', NULL, '', '1990-10-10', NULL, 'Male', '03123353864', 'uploads/student_images/no_image.png', 'no', '2020-06-27 09:15:00');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verification_code` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `role`, `email`, `password`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', 'info@smiljamshoro.com', '0c4012078ec338d03e260bb4918decb5', '', 'yes', '2019-03-07 15:33:39', '0000-00-00 00:00:00'),
(5, 'Raja Sajjad', 'admin', 'rajasajjad3@gmail.com', '4090d920e136a00a83005c34cdc2cfef', '', 'yes', '2020-07-06 16:09:07', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `attendence_type`
--

CREATE TABLE IF NOT EXISTS `attendence_type` (
  `id` int(11) NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `key_value` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `attendence_type`
--

INSERT INTO `attendence_type` (`id`, `type`, `key_value`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Present', '<b class="text text-success">P</b>', 'yes', '2016-06-23 23:41:37', '0000-00-00 00:00:00'),
(2, 'Late with excuse', '<b class="text text-warning">E</b>', 'yes', '2016-10-11 17:05:44', '0000-00-00 00:00:00'),
(3, 'Late', '<b class="text text-warning">L</b>', 'yes', '2016-06-23 23:42:28', '0000-00-00 00:00:00'),
(4, 'Absent', '<b class="text text-danger">A</b>', 'yes', '2016-10-11 17:05:40', '0000-00-00 00:00:00'),
(5, 'Holiday', 'H', 'yes', '2016-10-11 17:05:01', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `batch`
--

CREATE TABLE IF NOT EXISTS `batch` (
  `id` int(11) NOT NULL,
  `batch` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `batch`
--

INSERT INTO `batch` (`id`, `batch`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '2k18', 'no', '2020-06-15 17:33:21', '0000-00-00 00:00:00'),
(2, '2k19', 'no', '2020-06-15 18:00:11', '2020-06-15 18:00:11');

-- --------------------------------------------------------

--
-- Table structure for table `batch_class`
--

CREATE TABLE IF NOT EXISTS `batch_class` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `batch_class`
--

INSERT INTO `batch_class` (`id`, `name`, `created_at`) VALUES
(1, 'Part 1', '2020-06-18 18:01:31'),
(2, 'Part 2', '2020-06-18 18:01:42'),
(3, 'Part 3', '2020-06-18 18:01:51'),
(4, 'Part 4', '2020-06-18 18:01:58'),
(5, 'Part 5', '2020-06-18 18:02:04');

-- --------------------------------------------------------

--
-- Table structure for table `batch_parts`
--

CREATE TABLE IF NOT EXISTS `batch_parts` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `part_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `batch_parts`
--

INSERT INTO `batch_parts` (`id`, `class_id`, `part_id`, `session_id`, `created_at`, `updated_at`) VALUES
(1, 7, 1, 14, '2020-06-21 07:41:25', '2020-06-21 07:41:25'),
(2, 7, 2, 14, '2020-06-21 07:41:25', '2020-06-21 07:41:25'),
(3, 7, 3, 14, '2020-06-21 07:41:25', '2020-06-21 07:41:25'),
(4, 7, 4, 14, '2020-06-21 07:41:25', '2020-06-21 07:41:25'),
(5, 7, 5, 14, '2020-06-21 07:41:25', '2020-06-21 07:41:25'),
(6, 10, 1, 14, '2020-06-21 07:41:46', '2020-06-21 07:41:46'),
(7, 10, 2, 14, '2020-06-21 07:41:46', '2020-06-21 07:41:46'),
(8, 10, 3, 14, '2020-06-21 07:41:46', '2020-06-21 07:41:46'),
(9, 10, 4, 14, '2020-06-21 07:41:46', '2020-06-21 07:41:46'),
(10, 10, 5, 14, '2020-06-21 07:41:46', '2020-06-21 07:41:46'),
(11, 8, 1, 14, '2020-06-21 07:41:50', '2020-06-21 07:41:50'),
(12, 8, 2, 14, '2020-06-21 07:41:50', '2020-06-21 07:41:50'),
(13, 8, 3, 14, '2020-06-21 07:41:50', '2020-06-21 07:41:50'),
(14, 8, 4, 14, '2020-06-21 07:41:50', '2020-06-21 07:41:50'),
(15, 8, 5, 14, '2020-06-21 07:41:50', '2020-06-21 07:41:50'),
(16, 9, 1, 14, '2020-06-21 07:41:55', '2020-06-21 07:41:55'),
(17, 9, 2, 14, '2020-06-21 07:41:55', '2020-06-21 07:41:55'),
(18, 9, 3, 14, '2020-06-21 07:41:55', '2020-06-21 07:41:55'),
(19, 9, 4, 14, '2020-06-21 07:41:55', '2020-06-21 07:41:55'),
(20, 9, 5, 14, '2020-06-21 07:41:55', '2020-06-21 07:41:55'),
(21, 11, 0, 0, '2020-06-27 08:50:50', '2020-06-27 08:50:50'),
(22, 11, 0, 0, '2020-06-27 08:50:50', '2020-06-27 08:50:50'),
(23, 11, 0, 0, '2020-06-27 08:50:50', '2020-06-27 08:50:50'),
(24, 11, 0, 0, '2020-06-27 08:50:50', '2020-06-27 08:50:50'),
(25, 11, 0, 0, '2020-06-27 08:50:50', '2020-06-27 08:50:50'),
(26, 12, 0, 0, '2020-06-27 08:51:25', '2020-06-27 08:51:25'),
(27, 12, 0, 0, '2020-06-27 08:51:25', '2020-06-27 08:51:25'),
(28, 12, 0, 0, '2020-06-27 08:51:25', '2020-06-27 08:51:25'),
(29, 12, 0, 0, '2020-06-27 08:51:25', '2020-06-27 08:51:25'),
(30, 12, 0, 0, '2020-06-27 08:51:25', '2020-06-27 08:51:25'),
(31, 13, 0, 0, '2020-06-27 08:51:35', '2020-06-27 08:51:35'),
(32, 13, 0, 0, '2020-06-27 08:51:35', '2020-06-27 08:51:35'),
(33, 13, 0, 0, '2020-06-27 08:51:35', '2020-06-27 08:51:35'),
(34, 13, 0, 0, '2020-06-27 08:51:35', '2020-06-27 08:51:35'),
(35, 13, 0, 0, '2020-06-27 08:51:35', '2020-06-27 08:51:35');

-- --------------------------------------------------------

--
-- Table structure for table `batch_semesters`
--

CREATE TABLE IF NOT EXISTS `batch_semesters` (
  `id` int(11) NOT NULL,
  `batch_id` int(11) NOT NULL,
  `semester_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `batch_semesters`
--

INSERT INTO `batch_semesters` (`id`, `batch_id`, `semester_id`, `created_at`, `updated_at`) VALUES
(1, 1, 3, '2020-06-15 17:33:21', '2020-06-15 17:33:21'),
(2, 1, 4, '2020-06-15 17:33:21', '2020-06-15 17:33:21'),
(5, 2, 3, '2020-06-15 18:00:11', '2020-06-15 18:00:11'),
(6, 2, 4, '2020-06-15 18:00:11', '2020-06-15 18:00:11');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE IF NOT EXISTS `books` (
  `id` int(11) NOT NULL,
  `book_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `book_no` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `isbn_no` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rack_no` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `publish` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `perunitcost` float(10,2) DEFAULT NULL,
  `postdate` date DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `available` varchar(10) COLLATE utf8_unicode_ci DEFAULT 'yes',
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `book_issues`
--

CREATE TABLE IF NOT EXISTS `book_issues` (
  `id` int(11) unsigned NOT NULL,
  `book_id` int(11) DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `is_returned` int(11) DEFAULT '0',
  `member_id` int(11) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL,
  `category` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE IF NOT EXISTS `classes` (
  `id` int(11) NOT NULL,
  `class` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `class`, `is_active`, `created_at`, `updated_at`) VALUES
(11, '2K18', 'no', '2020-06-27 08:50:50', '0000-00-00 00:00:00'),
(12, '2K19', 'no', '2020-06-27 08:51:25', '0000-00-00 00:00:00'),
(13, '2K20', 'no', '2020-06-27 08:51:35', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `class_sections`
--

CREATE TABLE IF NOT EXISTS `class_sections` (
  `id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `class_sections`
--

INSERT INTO `class_sections` (`id`, `class_id`, `section_id`, `is_active`, `created_at`, `updated_at`) VALUES
(19, 11, 11, 'no', '2020-06-27 08:50:50', '0000-00-00 00:00:00'),
(20, 11, 12, 'no', '2020-06-27 08:50:50', '0000-00-00 00:00:00'),
(21, 12, 11, 'no', '2020-06-27 08:51:25', '0000-00-00 00:00:00'),
(22, 12, 12, 'no', '2020-06-27 08:51:25', '0000-00-00 00:00:00'),
(23, 13, 11, 'no', '2020-06-27 08:51:35', '0000-00-00 00:00:00'),
(24, 13, 12, 'no', '2020-06-27 08:51:35', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE IF NOT EXISTS `contents` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_public` varchar(10) COLLATE utf8_unicode_ci DEFAULT 'No',
  `class_id` int(11) DEFAULT NULL,
  `file` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_config`
--

CREATE TABLE IF NOT EXISTS `email_config` (
  `id` int(11) unsigned NOT NULL,
  `email_type` varchar(100) DEFAULT NULL,
  `smtp_server` varchar(100) DEFAULT NULL,
  `smtp_port` varchar(100) DEFAULT NULL,
  `smtp_username` varchar(100) DEFAULT NULL,
  `smtp_password` varchar(100) DEFAULT NULL,
  `ssl_tls` varchar(100) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_config`
--

INSERT INTO `email_config` (`id`, `email_type`, `smtp_server`, `smtp_port`, `smtp_username`, `smtp_password`, `ssl_tls`, `is_active`, `created_at`) VALUES
(1, 'sendmail', '', '', '', '', '', 'yes', '2020-06-13 08:25:23');

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE IF NOT EXISTS `exams` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sesion_id` int(11) NOT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`id`, `name`, `sesion_id`, `note`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'First Term', 0, 'this is firest term', 'no', '2020-06-20 12:06:22', '0000-00-00 00:00:00'),
(2, 'Mid term', 0, 'Mid term', 'no', '2020-06-20 12:06:32', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `exam_results`
--

CREATE TABLE IF NOT EXISTS `exam_results` (
  `id` int(11) NOT NULL,
  `attendence` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `exam_schedule_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `get_marks` float(10,2) DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `exam_results`
--

INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'ABS', 1, 19, 0.00, NULL, 'no', '2020-06-21 11:25:55', '0000-00-00 00:00:00'),
(2, 'ABS', 2, 19, 0.00, NULL, 'no', '2020-06-21 11:25:55', '0000-00-00 00:00:00'),
(3, 'ABS', 3, 19, 0.00, NULL, 'no', '2020-06-21 11:25:55', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `exam_schedules`
--

CREATE TABLE IF NOT EXISTS `exam_schedules` (
  `id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `part_id` int(11) NOT NULL,
  `teacher_subject_id` int(11) DEFAULT NULL,
  `date_of_exam` date DEFAULT NULL,
  `start_to` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `end_from` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `room_no` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `full_marks` int(11) DEFAULT NULL,
  `passing_marks` int(11) DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `exam_schedules`
--

INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `part_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 14, 1, 1, 4, '2020-06-01', '12:00 AM', '05:15 PM', '1', 100, 36, NULL, 'no', '2020-06-21 10:57:30', '0000-00-00 00:00:00'),
(2, 14, 1, 1, 5, '2020-06-02', '12:00 AM', '05:15 PM', '2', 100, 90, NULL, 'no', '2020-06-21 10:57:34', '0000-00-00 00:00:00'),
(3, 14, 1, 1, 6, '2020-06-03', '12:00 AM', '05:15 PM', '3', 100, 95, NULL, 'no', '2020-06-21 10:57:37', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE IF NOT EXISTS `expenses` (
  `id` int(11) NOT NULL,
  `exp_head_id` int(11) DEFAULT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `documents` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'yes',
  `is_deleted` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `exp_head_id`, `name`, `date`, `amount`, `documents`, `note`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES
(2, 3, 'Mr. Salah uddin', '2018-02-08', 80000.00, NULL, 'Building Rent Paid by Director Admin through cash', 'yes', 'no', '2019-03-08 14:21:11', '0000-00-00 00:00:00'),
(3, 1, 'Staff Wages Teacher Wages', '2019-02-04', 251444.00, NULL, 'paid by Raja sajjad Director Admin Staff Salry', 'yes', 'no', '2019-03-08 14:43:41', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `expense_head`
--

CREATE TABLE IF NOT EXISTS `expense_head` (
  `id` int(11) NOT NULL,
  `exp_category` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'yes',
  `is_deleted` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `expense_head`
--

INSERT INTO `expense_head` (`id`, `exp_category`, `description`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'Wages/Salaries', 'Employees Salaries', 'yes', 'no', '2019-03-08 13:25:21', '0000-00-00 00:00:00'),
(2, 'Office Expenses', '', 'yes', 'no', '2019-03-08 13:33:34', '0000-00-00 00:00:00'),
(3, 'Building Rent Exp', 'Rent for Bluding', 'yes', 'no', '2019-03-08 14:22:51', '0000-00-00 00:00:00'),
(4, 'Carrage Foudation', '', 'yes', 'no', '2019-03-08 13:38:29', '0000-00-00 00:00:00'),
(5, 'Carriage  & Cartage', 'Material Carrier', 'yes', 'no', '2019-03-08 14:30:24', '0000-00-00 00:00:00'),
(6, 'Computer Lab', 'Compter Lab Exp', 'yes', 'no', '2019-03-08 14:23:43', '0000-00-00 00:00:00'),
(7, 'Exam Expanse', 'question papers, Photo copies e.t.c', 'yes', 'no', '2019-03-08 14:33:49', '0000-00-00 00:00:00'),
(8, 'Equipment', 'College Equipment ', 'yes', 'no', '2019-03-08 14:32:05', '0000-00-00 00:00:00'),
(9, 'Refund Fee', 'Retan Fee', 'yes', 'no', '2019-03-08 13:54:53', '0000-00-00 00:00:00'),
(10, 'Stationary', 'Pen, Pencil, Papers etc.', 'yes', 'no', '2019-03-08 14:35:29', '0000-00-00 00:00:00'),
(11, 'Utility Expanse', 'Gas Bill Telephone Bill WAPDA Bill', 'yes', 'no', '2019-03-08 14:34:51', '0000-00-00 00:00:00'),
(12, 'Extra Curricular', 'NEW well COME Party Tours e.t.c', 'yes', 'no', '2019-03-08 14:01:07', '0000-00-00 00:00:00'),
(13, 'Electric Material', 'Electric Material Expense For Collage', 'yes', 'no', '2019-03-08 14:27:56', '0000-00-00 00:00:00'),
(14, 'Water Tanker', '', 'yes', 'no', '2020-06-30 07:52:40', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `feecategory`
--

CREATE TABLE IF NOT EXISTS `feecategory` (
  `id` int(11) NOT NULL,
  `category` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feemasters`
--

CREATE TABLE IF NOT EXISTS `feemasters` (
  `id` int(11) NOT NULL,
  `session_id` int(11) DEFAULT NULL,
  `feetype_id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fees_discounts`
--

CREATE TABLE IF NOT EXISTS `fees_discounts` (
  `id` int(11) NOT NULL,
  `session_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `description` text,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `feetype`
--

CREATE TABLE IF NOT EXISTS `feetype` (
  `id` int(11) NOT NULL,
  `feecategory_id` int(11) DEFAULT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `feetype`
--

INSERT INTO `feetype` (`id`, `feecategory_id`, `type`, `code`, `is_active`, `created_at`, `updated_at`, `description`) VALUES
(2, NULL, '1st Semester', '1st Semester', 'no', '2020-07-15 18:14:53', '0000-00-00 00:00:00', '2K18'),
(3, NULL, '2nd Semester', '2nd Semester', 'no', '2020-07-15 18:15:02', '0000-00-00 00:00:00', '2K18'),
(7, NULL, '3rd Semester', '3rd Semester', 'no', '2020-07-15 18:15:10', '0000-00-00 00:00:00', '2K18');

-- --------------------------------------------------------

--
-- Table structure for table `fee_groups`
--

CREATE TABLE IF NOT EXISTS `fee_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` text,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fee_groups`
--

INSERT INTO `fee_groups` (`id`, `name`, `description`, `is_active`, `created_at`) VALUES
(3, '2K18', 'Rs. 35000', 'no', '2020-06-27 09:04:25'),
(4, '2K19', 'Rs. 40,000/-', 'no', '2020-06-27 09:49:00'),
(5, '2K20', 'Rs. 35.000/-', 'no', '2020-06-27 09:49:13'),
(6, '2K21', 'Rs. 45,000.00', 'no', '2020-06-30 07:38:18');

-- --------------------------------------------------------

--
-- Table structure for table `fee_groups_feetype`
--

CREATE TABLE IF NOT EXISTS `fee_groups_feetype` (
  `id` int(11) NOT NULL,
  `fee_session_group_id` int(11) DEFAULT NULL,
  `fee_groups_id` int(11) DEFAULT NULL,
  `feetype_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fee_groups_feetype`
--

INSERT INTO `fee_groups_feetype` (`id`, `fee_session_group_id`, `fee_groups_id`, `feetype_id`, `session_id`, `due_date`, `amount`, `is_active`, `created_at`) VALUES
(6, 6, 3, 2, 13, '2020-01-01', '35000.00', 'no', '2020-07-02 11:46:17'),
(7, 7, 4, 2, 13, '1970-01-01', '45000.00', 'no', '2020-06-27 09:52:48'),
(8, 8, 5, 2, 13, '1970-01-01', '35000.00', 'no', '2020-06-27 09:53:04'),
(9, 9, 6, 2, 13, '1970-01-01', '45000.00', 'no', '2020-06-30 07:39:28'),
(14, 6, 3, 3, 13, '2020-01-01', '35000.00', 'no', '2020-07-02 11:48:42'),
(16, 10, 3, 7, 14, '2020-07-15', '35000.00', 'no', '2020-07-07 14:43:04'),
(18, 6, 3, 7, 13, '2020-07-22', '35000.00', 'no', '2020-07-07 14:47:22'),
(19, 10, 3, 2, 14, '2020-07-31', '250000.00', 'no', '2020-07-15 18:15:29');

-- --------------------------------------------------------

--
-- Table structure for table `fee_receipt_no`
--

CREATE TABLE IF NOT EXISTS `fee_receipt_no` (
  `id` int(11) NOT NULL,
  `payment` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fee_session_groups`
--

CREATE TABLE IF NOT EXISTS `fee_session_groups` (
  `id` int(11) NOT NULL,
  `fee_groups_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fee_session_groups`
--

INSERT INTO `fee_session_groups` (`id`, `fee_groups_id`, `session_id`, `is_active`, `created_at`) VALUES
(6, 3, 13, 'no', '2020-06-27 09:52:30'),
(7, 4, 13, 'no', '2020-06-27 09:52:48'),
(8, 5, 13, 'no', '2020-06-27 09:53:04'),
(9, 6, 13, 'no', '2020-06-30 07:38:37'),
(10, 3, 14, 'no', '2020-07-07 12:49:58');

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE IF NOT EXISTS `grades` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `point` float(10,1) DEFAULT NULL,
  `mark_from` float(10,2) DEFAULT NULL,
  `mark_upto` float(10,2) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hostel`
--

CREATE TABLE IF NOT EXISTS `hostel` (
  `id` int(11) NOT NULL,
  `hostel_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `intake` int(11) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hostel_rooms`
--

CREATE TABLE IF NOT EXISTS `hostel_rooms` (
  `id` int(11) NOT NULL,
  `hostel_id` int(11) DEFAULT NULL,
  `room_type_id` int(11) DEFAULT NULL,
  `room_no` varchar(200) DEFAULT NULL,
  `no_of_bed` int(11) DEFAULT NULL,
  `cost_per_bed` float(10,2) DEFAULT '0.00',
  `title` varchar(200) DEFAULT NULL,
  `description` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `income`
--

CREATE TABLE IF NOT EXISTS `income` (
  `id` int(11) NOT NULL,
  `inc_head_id` varchar(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `note` text,
  `is_active` varchar(255) DEFAULT 'yes',
  `is_deleted` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `documents` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `income`
--

INSERT INTO `income` (`id`, `inc_head_id`, `name`, `date`, `amount`, `note`, `is_active`, `is_deleted`, `created_at`, `updated_at`, `documents`) VALUES
(1, '1', 'Muhammad Hasnain Abbasi', '2019-03-05', 45, 'Fee Paid ', 'yes', 'no', '2019-03-08 11:44:31', '0000-00-00 00:00:00', NULL),
(4, '3', 'Jamshaid Ahmed', '2020-06-23', 1000, 'Admission form sold.', 'yes', 'no', '2020-06-30 17:04:28', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `income_head`
--

CREATE TABLE IF NOT EXISTS `income_head` (
  `id` int(255) NOT NULL,
  `income_category` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_active` varchar(255) NOT NULL DEFAULT 'yes',
  `is_deleted` varchar(255) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `income_head`
--

INSERT INTO `income_head` (`id`, `income_category`, `description`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'Semester Fees', 'Students Semester Fees', 'yes', 'no', '2019-03-07 19:19:10', '0000-00-00 00:00:00'),
(2, 'Forms Fee', '', 'yes', 'no', '2020-06-30 16:57:36', '0000-00-00 00:00:00'),
(3, 'Admission form fee', 'Rs. 1000.00', 'yes', 'no', '2020-06-30 17:02:39', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE IF NOT EXISTS `item` (
  `id` int(11) NOT NULL,
  `item_category_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `item_photo` varchar(225) DEFAULT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `item_store_id` int(11) DEFAULT NULL,
  `item_supplier_id` int(11) DEFAULT NULL,
  `quantity` int(100) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id`, `item_category_id`, `name`, `item_photo`, `description`, `created_at`, `updated_at`, `item_store_id`, `item_supplier_id`, `quantity`, `date`) VALUES
(2, 5, 'Water Dispenser small', NULL, 'steel dispenser 1 bottle 19 litter capacity', '2020-07-04 09:42:54', '0000-00-00 00:00:00', NULL, NULL, 0, '0000-00-00'),
(3, 5, 'Battery (UPS)', NULL, '260 Amp AGS', '2020-07-04 09:44:29', '0000-00-00 00:00:00', NULL, NULL, 0, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `item_category`
--

CREATE TABLE IF NOT EXISTS `item_category` (
  `id` int(255) NOT NULL,
  `item_category` varchar(255) NOT NULL,
  `is_active` varchar(255) NOT NULL DEFAULT 'yes',
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item_category`
--

INSERT INTO `item_category` (`id`, `item_category`, `is_active`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Furniture', 'yes', 'All Furniture ', '2019-03-08 13:35:58', '0000-00-00 00:00:00'),
(2, 'CCTV', 'yes', 'Cameras and DVR', '2020-07-04 08:39:35', '0000-00-00 00:00:00'),
(3, 'Computer', 'yes', 'Laptop and Desktop and All in One', '2020-07-04 08:40:30', '0000-00-00 00:00:00'),
(4, 'Curtains and Blinds', 'yes', '', '2020-07-04 08:41:54', '0000-00-00 00:00:00'),
(5, 'Electronics', 'yes', '', '2020-07-04 08:49:35', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `item_issue`
--

CREATE TABLE IF NOT EXISTS `item_issue` (
  `id` int(11) NOT NULL,
  `issue_type` varchar(15) DEFAULT NULL,
  `issue_to` varchar(100) DEFAULT NULL,
  `issue_by` varchar(100) DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `item_category_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `quantity` int(10) NOT NULL,
  `note` text NOT NULL,
  `is_returned` int(2) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_active` varchar(10) DEFAULT 'no'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item_issue`
--

INSERT INTO `item_issue` (`id`, `issue_type`, `issue_to`, `issue_by`, `issue_date`, `return_date`, `item_category_id`, `item_id`, `quantity`, `note`, `is_returned`, `created_at`, `is_active`) VALUES
(1, 'admin', 'Admin', 'Admin', '2018-01-15', '2030-02-12', 5, 2, 1, 'test', 1, '2020-07-06 15:49:13', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `item_stock`
--

CREATE TABLE IF NOT EXISTS `item_stock` (
  `id` int(11) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `symbol` varchar(10) NOT NULL DEFAULT '+',
  `store_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `attachment` varchar(250) DEFAULT NULL,
  `description` text NOT NULL,
  `is_active` varchar(10) DEFAULT 'yes',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item_stock`
--

INSERT INTO `item_stock` (`id`, `item_id`, `supplier_id`, `symbol`, `store_id`, `quantity`, `date`, `attachment`, `description`, `is_active`, `created_at`) VALUES
(3, 2, 2, '+', 2, 1, '2018-01-15', NULL, '', 'yes', '2020-07-06 15:47:40');

-- --------------------------------------------------------

--
-- Table structure for table `item_store`
--

CREATE TABLE IF NOT EXISTS `item_store` (
  `id` int(255) NOT NULL,
  `item_store` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item_store`
--

INSERT INTO `item_store` (`id`, `item_store`, `code`, `description`) VALUES
(1, 'Locker-208', '001', ''),
(2, 'College Premises', 'Ground Floor', '');

-- --------------------------------------------------------

--
-- Table structure for table `item_supplier`
--

CREATE TABLE IF NOT EXISTS `item_supplier` (
  `id` int(255) NOT NULL,
  `item_supplier` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact_person_name` varchar(255) NOT NULL,
  `contact_person_phone` varchar(255) NOT NULL,
  `contact_person_email` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item_supplier`
--

INSERT INTO `item_supplier` (`id`, `item_supplier`, `phone`, `email`, `address`, `contact_person_name`, `contact_person_phone`, `contact_person_email`, `description`) VALUES
(1, 'Carpenter', '03342001296', '', 'Jamshoro phatak', 'Imdad ', '03342001296', '', ''),
(2, 'Test', '', '', 'Test', 'test', '', '', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE IF NOT EXISTS `languages` (
  `id` int(11) NOT NULL,
  `language` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Azerbaijan', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(2, 'Albanian', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(3, 'Amharic', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(4, 'English', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(5, 'Arabic', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(7, 'Afrikaans', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(8, 'Basque', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(11, 'Bengali', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(13, 'Bosnian', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(14, 'Welsh', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(15, 'Hungarian', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(16, 'Vietnamese', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(17, 'Haitian (Creole)', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(18, 'Galician', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(19, 'Dutch', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(21, 'Greek', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(22, 'Georgian', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(23, 'Gujarati', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(24, 'Danish', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(25, 'Hebrew', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(26, 'Yiddish', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(27, 'Indonesian', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(28, 'Irish', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(29, 'Italian', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(30, 'Icelandic', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(31, 'Spanish', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(33, 'Kannada', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(34, 'Catalan', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(36, 'Chinese', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(37, 'Korean', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(38, 'Xhosa', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(39, 'Latin', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(40, 'Latvian', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(41, 'Lithuanian', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(43, 'Malagasy', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(44, 'Malay', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(45, 'Malayalam', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(46, 'Maltese', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(47, 'Macedonian', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(48, 'Maori', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(49, 'Marathi', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(51, 'Mongolian', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(52, 'German', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(53, 'Nepali', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(54, 'Norwegian', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(55, 'Punjabi', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(57, 'Persian', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(59, 'Portuguese', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(60, 'Romanian', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(61, 'Russian', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(62, 'Cebuano', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(64, 'Sinhala', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(65, 'Slovakian', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(66, 'Slovenian', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(67, 'Swahili', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(68, 'Sundanese', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(70, 'Thai', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(71, 'Tagalog', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(72, 'Tamil', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(74, 'Telugu', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(75, 'Turkish', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(77, 'Uzbek', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(79, 'Urdu', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(80, 'Finnish', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(81, 'French', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(82, 'Hindi', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(84, 'Czech', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(85, 'Swedish', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(86, 'Scottish', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(87, 'Estonian', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(88, 'Esperanto', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(89, 'Javanese', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(90, 'Japanese', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `lang_keys`
--

CREATE TABLE IF NOT EXISTS `lang_keys` (
  `id` int(11) NOT NULL,
  `key` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=784 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lang_keys`
--

INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'session', 'no', '2016-03-09 16:24:39', '0000-00-00 00:00:00'),
(2, 'school_name', 'no', '2016-03-09 16:34:28', '0000-00-00 00:00:00'),
(3, 'email', 'no', '2016-03-09 16:34:48', '0000-00-00 00:00:00'),
(6, 'roll_no', 'no', '2001-12-30 09:59:30', '0000-00-00 00:00:00'),
(7, 'first_name', 'no', '2001-12-30 09:59:30', '0000-00-00 00:00:00'),
(8, 'last_name', 'no', '2001-12-30 09:59:30', '0000-00-00 00:00:00'),
(9, 'class', 'no', '2020-06-18 17:43:52', '0000-00-00 00:00:00'),
(10, 'section', 'no', '2001-12-30 09:59:30', '0000-00-00 00:00:00'),
(11, 'admission_date', 'no', '2017-04-02 01:07:35', '0000-00-00 00:00:00'),
(12, 'mobile_no', 'no', '2001-12-30 09:59:30', '0000-00-00 00:00:00'),
(13, 'date_of_birth', 'no', '2001-12-30 09:59:30', '0000-00-00 00:00:00'),
(15, 'religion', 'no', '2001-12-30 09:59:30', '0000-00-00 00:00:00'),
(16, 'category', 'no', '2001-12-30 09:59:30', '0000-00-00 00:00:00'),
(17, 'current_address', 'no', '2001-12-30 09:59:30', '0000-00-00 00:00:00'),
(18, 'permanent_address', 'no', '2001-12-30 09:59:30', '0000-00-00 00:00:00'),
(23, 'bank_account_no', 'no', '2001-12-30 09:59:30', '0000-00-00 00:00:00'),
(24, 'bank_name', 'no', '2001-12-30 09:59:30', '0000-00-00 00:00:00'),
(25, 'ifsc_code', 'no', '2001-12-30 09:59:30', '0000-00-00 00:00:00'),
(27, 'guardian_name', 'no', '2001-12-30 09:59:30', '0000-00-00 00:00:00'),
(28, 'guardian_relation', 'no', '2016-03-12 19:13:05', '0000-00-00 00:00:00'),
(29, 'guardian_phone', 'no', '2001-12-30 09:59:30', '0000-00-00 00:00:00'),
(30, 'guardian_address', 'no', '2001-12-30 09:59:30', '0000-00-00 00:00:00'),
(31, 'select_image', 'no', '2001-12-30 09:59:30', '0000-00-00 00:00:00'),
(32, 'import_excel', 'no', '2001-12-30 10:03:11', '0000-00-00 00:00:00'),
(33, 'export_format', 'no', '2001-12-30 10:03:11', '0000-00-00 00:00:00'),
(34, 'generate_pdf', 'no', '2001-12-30 10:03:11', '0000-00-00 00:00:00'),
(35, 'add_fees', 'no', '2016-06-24 13:34:31', '0000-00-00 00:00:00'),
(37, 'search', 'no', '2016-03-12 19:17:08', '0000-00-00 00:00:00'),
(39, 'fee_category', 'no', '2016-03-12 19:29:03', '0000-00-00 00:00:00'),
(40, 'fee_type', 'no', '2016-03-12 19:29:03', '0000-00-00 00:00:00'),
(43, 'add_fees_master', 'no', '2016-03-12 19:30:10', '0000-00-00 00:00:00'),
(44, 'fees_master_list', 'no', '2016-03-12 19:30:10', '0000-00-00 00:00:00'),
(45, 'add_fees_type', 'no', '2016-03-12 19:31:38', '0000-00-00 00:00:00'),
(46, 'fees_type_list', 'no', '2016-03-12 19:31:38', '0000-00-00 00:00:00'),
(48, 'edit', 'no', '2016-03-12 19:33:10', '0000-00-00 00:00:00'),
(50, 'category_list', 'no', '2016-03-12 19:34:32', '0000-00-00 00:00:00'),
(51, 'add_category', 'no', '2016-03-12 19:34:32', '0000-00-00 00:00:00'),
(52, 'session_list', 'no', '2016-03-12 19:35:15', '0000-00-00 00:00:00'),
(53, 'add_session', 'no', '2016-03-12 19:35:15', '0000-00-00 00:00:00'),
(54, 'class_list', 'no', '2016-03-12 19:35:53', '0000-00-00 00:00:00'),
(56, 'section_list', 'no', '2016-03-12 19:36:20', '0000-00-00 00:00:00'),
(57, 'add_section', 'no', '2016-03-12 19:36:20', '0000-00-00 00:00:00'),
(61, 'student', 'no', '2016-03-12 19:38:08', '0000-00-00 00:00:00'),
(63, 'language_list', 'no', '2016-03-12 19:39:44', '0000-00-00 00:00:00'),
(64, 'add_another_language', 'no', '2016-03-12 19:39:44', '0000-00-00 00:00:00'),
(65, 'created_at', 'no', '2016-03-12 20:15:20', '0000-00-00 00:00:00'),
(66, 'save', 'no', '2001-12-30 09:51:24', '0000-00-00 00:00:00'),
(68, 'select_logo', 'no', '2001-12-30 10:17:56', '0000-00-00 00:00:00'),
(69, 'school_logo', 'no', '2001-12-30 10:19:33', '0000-00-00 00:00:00'),
(70, 'manage', 'no', '2001-12-30 10:19:33', '0000-00-00 00:00:00'),
(72, 'edit_logo', 'no', '2001-12-30 10:23:28', '0000-00-00 00:00:00'),
(73, 'phone', 'no', '2001-12-30 10:30:49', '0000-00-00 00:00:00'),
(74, 'user_name', 'no', '2001-12-30 10:38:51', '0000-00-00 00:00:00'),
(76, 'sms_configuration', 'no', '2001-12-30 10:43:00', '0000-00-00 00:00:00'),
(77, 'sms_gateway_url', 'no', '2016-10-26 21:19:35', '0000-00-00 00:00:00'),
(78, 'status', 'no', '2001-12-30 10:43:52', '0000-00-00 00:00:00'),
(79, 'action', 'no', '2001-12-30 10:44:03', '0000-00-00 00:00:00'),
(80, 'change_status', 'no', '2001-12-30 10:45:19', '0000-00-00 00:00:00'),
(82, 'report', 'no', '2001-12-30 10:56:58', '0000-00-00 00:00:00'),
(84, 'select_criteria', 'no', '2001-12-30 10:57:36', '0000-00-00 00:00:00'),
(85, 'reset', 'no', '2001-12-30 10:58:39', '0000-00-00 00:00:00'),
(86, 'invoice_no', 'no', '2001-12-30 11:00:59', '0000-00-00 00:00:00'),
(87, 'fine', 'no', '2001-12-30 11:00:59', '0000-00-00 00:00:00'),
(88, 'type', 'no', '2001-12-30 11:01:20', '0000-00-00 00:00:00'),
(89, 'amount', 'no', '2001-12-30 11:01:20', '0000-00-00 00:00:00'),
(90, 'total', 'no', '2001-12-30 11:01:26', '0000-00-00 00:00:00'),
(91, 'discount', 'no', '2001-12-30 11:01:36', '0000-00-00 00:00:00'),
(92, 'balance_description', 'no', '2001-12-30 11:02:55', '0000-00-00 00:00:00'),
(94, 'no_search_record_found', 'no', '2001-12-30 11:06:37', '0000-00-00 00:00:00'),
(101, 'description', 'no', '2001-12-30 11:13:49', '0000-00-00 00:00:00'),
(102, 'fees_subtotal', 'no', '2001-12-30 11:14:34', '0000-00-00 00:00:00'),
(104, 'receipt_no', 'no', '2001-12-30 11:17:56', '0000-00-00 00:00:00'),
(106, 'grand_total', 'no', '2001-12-30 11:19:14', '0000-00-00 00:00:00'),
(107, 'deposit', 'no', '2001-12-30 11:26:50', '0000-00-00 00:00:00'),
(108, 'balance', 'no', '2001-12-30 11:26:50', '0000-00-00 00:00:00'),
(115, 'fee_master', 'no', '2001-12-30 13:06:09', '0000-00-00 00:00:00'),
(116, 'classes', 'no', '2001-12-30 13:06:44', '0000-00-00 00:00:00'),
(117, 'collection', 'no', '2001-12-30 13:07:14', '0000-00-00 00:00:00'),
(121, 'current_password', 'no', '2001-12-31 04:59:11', '0000-00-00 00:00:00'),
(122, 'new_password', 'no', '2001-12-31 04:59:11', '0000-00-00 00:00:00'),
(123, 'confirm_password', 'no', '2016-09-15 10:29:51', '0000-00-00 00:00:00'),
(125, 'date', 'no', '2016-04-07 16:17:39', '0000-00-00 00:00:00'),
(137, 'add_new_sms_configuration', 'no', '2001-12-31 06:39:13', '0000-00-00 00:00:00'),
(141, 'cancel', 'no', '2016-03-27 02:50:39', '0000-00-00 00:00:00'),
(142, 'exam_name', 'no', '2016-03-27 04:16:34', '0000-00-00 00:00:00'),
(143, 'subject_name', 'no', '2016-03-29 19:05:15', '0000-00-00 00:00:00'),
(144, 'subject_code', 'no', '2016-03-29 19:05:15', '0000-00-00 00:00:00'),
(145, 'grade_name', 'no', '2016-03-29 23:21:20', '0000-00-00 00:00:00'),
(147, 'percent', 'no', '2016-03-29 23:21:41', '0000-00-00 00:00:00'),
(149, 'percent_to', 'no', '2016-03-29 23:22:00', '0000-00-00 00:00:00'),
(150, 'note', 'no', '2016-03-29 23:22:00', '0000-00-00 00:00:00'),
(151, 'school_code', 'no', '2016-10-25 15:12:26', '0000-00-00 00:00:00'),
(152, 'sign_in', 'no', '2016-04-07 08:27:27', '0000-00-00 00:00:00'),
(153, 'name', 'no', '2016-04-07 16:16:19', '0000-00-00 00:00:00'),
(155, 'transport_fees', 'no', '2016-04-12 16:56:04', '0000-00-00 00:00:00'),
(156, 'fees_discount', 'no', '2016-04-12 17:33:36', '0000-00-00 00:00:00'),
(157, 'father_name', 'no', '2016-04-13 01:52:14', '0000-00-00 00:00:00'),
(158, 'father_phone', 'no', '2016-04-13 01:52:14', '0000-00-00 00:00:00'),
(159, 'father_occupation', 'no', '2016-04-13 01:52:45', '0000-00-00 00:00:00'),
(160, 'mother_name', 'no', '2016-04-13 01:52:45', '0000-00-00 00:00:00'),
(161, 'mother_phone', 'no', '2016-04-13 01:56:08', '0000-00-00 00:00:00'),
(162, 'mother_occupation', 'no', '2016-04-13 01:56:08', '0000-00-00 00:00:00'),
(163, 'guardian_occupation', 'no', '2016-04-13 02:09:51', '0000-00-00 00:00:00'),
(164, 'address', 'no', '2016-04-14 11:32:42', '0000-00-00 00:00:00'),
(165, 'language', 'no', '2016-04-14 11:33:38', '0000-00-00 00:00:00'),
(166, 'teacher_name', 'no', '2016-04-19 10:55:06', '0000-00-00 00:00:00'),
(167, 'password', 'no', '2016-04-19 10:55:06', '0000-00-00 00:00:00'),
(168, 'cast', 'no', '2016-04-19 11:26:10', '0000-00-00 00:00:00'),
(169, 'id', 'no', '2016-04-19 13:04:10', '0000-00-00 00:00:00'),
(170, 'admission_no', 'no', '2016-04-22 23:02:46', '0000-00-00 00:00:00'),
(171, 'enrollment_no', 'no', '2016-04-22 23:20:48', '0000-00-00 00:00:00'),
(180, 'total_paid_fees', 'no', '2016-04-23 00:09:01', '0000-00-00 00:00:00'),
(181, 'admission_discount', 'no', '2016-04-23 00:09:41', '0000-00-00 00:00:00'),
(182, 'total_balance', 'no', '2016-04-23 00:09:41', '0000-00-00 00:00:00'),
(183, 'student_name', 'no', '2016-04-24 02:37:56', '0000-00-00 00:00:00'),
(184, 'fees', 'no', '2016-04-24 02:44:06', '0000-00-00 00:00:00'),
(185, 'rte', 'no', '2016-04-24 04:43:46', '0000-00-00 00:00:00'),
(186, 'gender', 'no', '2016-04-24 13:17:59', '0000-00-00 00:00:00'),
(187, 'teacher_photo', 'no', '2016-04-29 04:56:01', '0000-00-00 00:00:00'),
(188, 'isbn', 'no', '2016-05-02 03:07:51', '0000-00-00 00:00:00'),
(189, 'publisher', 'no', '2016-10-23 08:28:28', '0000-00-00 00:00:00'),
(190, 'author', 'no', '2016-05-02 03:08:19', '0000-00-00 00:00:00'),
(191, 'qty', 'no', '2016-05-02 03:08:19', '0000-00-00 00:00:00'),
(192, 'bookprice', 'no', '2016-10-18 05:11:54', '0000-00-00 00:00:00'),
(193, 'postdate', 'no', '2016-05-02 03:08:38', '0000-00-00 00:00:00'),
(197, 'intake', 'no', '2016-05-05 01:06:45', '0000-00-00 00:00:00'),
(199, 'book_title', 'no', '2016-05-05 04:59:27', '0000-00-00 00:00:00'),
(201, 'no_of_vehicle', 'no', '2016-05-09 23:20:40', '0000-00-00 00:00:00'),
(202, 'fare', 'no', '2016-05-09 23:20:48', '0000-00-00 00:00:00'),
(203, 'content_type', 'no', '2016-05-10 12:24:51', '0000-00-00 00:00:00'),
(205, 'upload_date', 'no', '2016-05-10 12:25:21', '0000-00-00 00:00:00'),
(206, 'expenses', 'no', '2016-05-10 22:14:03', '0000-00-00 00:00:00'),
(207, 'student_information', 'no', '2016-05-10 22:24:31', '0000-00-00 00:00:00'),
(208, 'fees_collection', 'no', '2016-05-10 22:35:29', '0000-00-00 00:00:00'),
(210, 'examinations', 'no', '2016-05-10 23:03:55', '0000-00-00 00:00:00'),
(211, 'academics', 'no', '2016-05-10 23:17:28', '0000-00-00 00:00:00'),
(212, 'download_center', 'no', '2016-05-10 23:17:28', '0000-00-00 00:00:00'),
(214, 'library', 'no', '2016-05-10 23:34:05', '0000-00-00 00:00:00'),
(215, 'system_settings', 'no', '2016-05-10 23:38:32', '0000-00-00 00:00:00'),
(216, 'reports', 'no', '2016-05-10 23:51:38', '0000-00-00 00:00:00'),
(217, 'subject', 'no', '2016-05-13 03:22:44', '0000-00-00 00:00:00'),
(218, 'rack_no', 'no', '2016-05-13 03:22:44', '0000-00-00 00:00:00'),
(220, 'hostel', 'no', '2016-05-13 06:42:27', '0000-00-00 00:00:00'),
(221, 'hostel_name', 'no', '2016-05-13 06:48:07', '0000-00-00 00:00:00'),
(222, 'transport', 'no', '2016-05-13 06:51:25', '0000-00-00 00:00:00'),
(223, 'route_title', 'no', '2016-05-13 06:57:39', '0000-00-00 00:00:00'),
(225, 'date_to', 'no', '2016-05-13 09:36:18', '0000-00-00 00:00:00'),
(227, 'basic_information', 'no', '2016-05-13 09:57:25', '0000-00-00 00:00:00'),
(228, 'add', 'no', '2016-05-13 10:00:46', '0000-00-00 00:00:00'),
(229, 'list', 'no', '2016-05-13 10:03:14', '0000-00-00 00:00:00'),
(230, 'result', 'no', '2016-05-13 10:06:46', '0000-00-00 00:00:00'),
(231, 'pass', 'no', '2016-05-13 10:07:34', '0000-00-00 00:00:00'),
(232, 'fail', 'no', '2016-05-13 10:07:34', '0000-00-00 00:00:00'),
(233, 'continue', 'no', '2016-05-17 14:42:00', '0000-00-00 00:00:00'),
(234, 'leave', 'no', '2016-05-13 10:08:28', '0000-00-00 00:00:00'),
(235, 'exam_list', 'no', '2016-05-17 12:47:56', '0000-00-00 00:00:00'),
(236, 'exam', 'no', '2016-05-17 12:50:35', '0000-00-00 00:00:00'),
(237, 'start_time', 'no', '2016-05-17 12:55:08', '0000-00-00 00:00:00'),
(238, 'end_time', 'no', '2016-05-17 12:55:08', '0000-00-00 00:00:00'),
(239, 'room', 'no', '2016-05-17 12:55:08', '0000-00-00 00:00:00'),
(240, 'full_mark', 'no', '2016-05-17 12:55:08', '0000-00-00 00:00:00'),
(241, 'passing_marks', 'no', '2016-05-17 12:55:08', '0000-00-00 00:00:00'),
(242, 'room_no', 'no', '2016-05-17 13:05:25', '0000-00-00 00:00:00'),
(245, 'promote', 'no', '2016-05-17 14:03:52', '0000-00-00 00:00:00'),
(246, 'content_title', 'no', '2016-05-18 21:50:20', '0000-00-00 00:00:00'),
(251, 'teacher_list', 'no', '2016-05-21 04:29:17', '0000-00-00 00:00:00'),
(252, 'compose_new_message', 'no', '2016-05-25 03:22:49', '0000-00-00 00:00:00'),
(253, 'notice', 'no', '2016-05-25 03:26:56', '0000-00-00 00:00:00'),
(254, 'notice_date', 'no', '2016-05-25 03:27:53', '0000-00-00 00:00:00'),
(255, 'publish_on', 'no', '2016-05-25 03:28:56', '0000-00-00 00:00:00'),
(256, 'message_to', 'no', '2016-05-25 03:30:54', '0000-00-00 00:00:00'),
(257, 'parent', 'no', '2016-05-25 03:33:55', '0000-00-00 00:00:00'),
(258, 'teacher', 'no', '2016-05-25 03:34:21', '0000-00-00 00:00:00'),
(259, 'no_record_found', 'no', '2016-05-25 03:47:21', '0000-00-00 00:00:00'),
(260, 'teacher_detail', 'no', '2016-05-25 05:22:21', '0000-00-00 00:00:00'),
(261, 'subject_list', 'no', '2016-05-25 06:03:17', '0000-00-00 00:00:00'),
(263, 'create_category', 'no', '2016-05-25 11:59:13', '0000-00-00 00:00:00'),
(264, 'title', 'no', '2016-05-26 01:01:44', '0000-00-00 00:00:00'),
(265, 'message', 'no', '2016-05-26 01:02:36', '0000-00-00 00:00:00'),
(266, 'send', 'no', '2016-05-26 01:43:32', '0000-00-00 00:00:00'),
(267, 'previous_school_details', 'no', '2016-05-26 05:53:02', '0000-00-00 00:00:00'),
(268, 'upload_documents', 'no', '2016-05-26 05:54:00', '0000-00-00 00:00:00'),
(270, 'miscellaneous_details', 'no', '2016-05-26 05:58:10', '0000-00-00 00:00:00'),
(272, 'edit_notification', 'no', '2016-05-26 07:22:03', '0000-00-00 00:00:00'),
(273, 'guardian_details', 'no', '2016-05-26 07:36:45', '0000-00-00 00:00:00'),
(274, 'payment_id', 'no', '2016-05-26 07:40:03', '0000-00-00 00:00:00'),
(275, 'change_password', 'no', '2016-05-26 07:45:33', '0000-00-00 00:00:00'),
(278, 'notifications', 'no', '2016-05-30 03:42:06', '0000-00-00 00:00:00'),
(279, 'visible_to_all', 'no', '2016-05-30 04:05:26', '0000-00-00 00:00:00'),
(280, 'visibility', 'no', '2016-05-30 04:06:16', '0000-00-00 00:00:00'),
(284, 'communicate', 'no', '2016-05-30 04:19:53', '0000-00-00 00:00:00'),
(285, 'notice_board', 'no', '2016-05-30 04:21:47', '0000-00-00 00:00:00'),
(286, 'publish_date', 'no', '2016-05-30 05:01:41', '0000-00-00 00:00:00'),
(287, 'father', 'no', '2016-06-01 03:21:38', '0000-00-00 00:00:00'),
(288, 'mother', 'no', '2016-06-01 03:21:47', '0000-00-00 00:00:00'),
(290, 'not_scheduled', 'no', '2016-06-07 13:50:48', '0000-00-00 00:00:00'),
(291, 'import_student', 'no', '2016-06-10 03:56:51', '0000-00-00 00:00:00'),
(292, 'dl_sample_import', 'no', '2016-06-10 04:03:13', '0000-00-00 00:00:00'),
(293, 'select_csv_file', 'no', '2016-06-10 04:10:49', '0000-00-00 00:00:00'),
(294, 'date_format', 'no', '2016-06-22 03:49:07', '0000-00-00 00:00:00'),
(295, 'currency', 'no', '2016-06-22 03:49:28', '0000-00-00 00:00:00'),
(296, 'currency_symbol', 'no', '2016-06-22 03:49:28', '0000-00-00 00:00:00'),
(297, 'profile', 'no', '2016-06-22 18:46:28', '0000-00-00 00:00:00'),
(298, 'save_attendance', 'no', '2016-06-22 18:56:58', '0000-00-00 00:00:00'),
(299, 'full_marks', 'no', '2016-06-24 06:10:24', '0000-00-00 00:00:00'),
(300, 'obtain_marks', 'no', '2016-06-24 06:10:24', '0000-00-00 00:00:00'),
(301, 'total_marks', 'no', '2016-06-24 06:18:37', '0000-00-00 00:00:00'),
(302, 'current', 'no', '2016-07-12 02:26:07', '0000-00-00 00:00:00'),
(303, 'admission', 'no', '2016-07-21 07:40:45', '0000-00-00 00:00:00'),
(305, 'sibling', 'no', '2016-08-07 02:32:13', '0000-00-00 00:00:00'),
(306, 'details', 'no', '2016-08-07 02:39:19', '0000-00-00 00:00:00'),
(309, 'identification', 'no', '2016-08-07 02:43:16', '0000-00-00 00:00:00'),
(310, 'no', 'no', '2016-08-07 02:45:33', '0000-00-00 00:00:00'),
(311, 'delete', 'no', '2016-08-07 03:28:55', '0000-00-00 00:00:00'),
(312, 'documents', 'no', '2016-08-07 03:33:52', '0000-00-00 00:00:00'),
(313, 'payment', 'no', '2016-08-07 03:36:56', '0000-00-00 00:00:00'),
(317, 'no_transaction_found', 'no', '2016-08-10 08:32:10', '0000-00-00 00:00:00'),
(318, 'transport_fees_details', 'no', '2016-08-10 08:35:57', '0000-00-00 00:00:00'),
(319, 'collect_fees', 'no', '2016-08-10 08:45:47', '0000-00-00 00:00:00'),
(320, 'balance_details', 'no', '2016-08-10 08:48:55', '0000-00-00 00:00:00'),
(321, 'download_pdf', 'no', '2016-08-10 09:05:40', '0000-00-00 00:00:00'),
(322, 'student_fees_report', 'no', '2016-08-10 09:23:18', '0000-00-00 00:00:00'),
(323, 'total_fees', 'no', '2016-08-10 09:26:53', '0000-00-00 00:00:00'),
(324, 'paid_fees', 'no', '2016-08-10 09:26:53', '0000-00-00 00:00:00'),
(325, 'student_detail', 'no', '2016-08-10 09:42:55', '0000-00-00 00:00:00'),
(327, 'gross_fees', 'no', '2016-08-10 09:45:26', '0000-00-00 00:00:00'),
(328, 'balance_fees', 'no', '2016-08-10 09:48:31', '0000-00-00 00:00:00'),
(329, 'print_selected', 'no', '2016-08-10 09:50:32', '0000-00-00 00:00:00'),
(330, 'collect_transport_fees', 'no', '2016-08-10 10:03:34', '0000-00-00 00:00:00'),
(331, 'no_transport_fees_found', 'no', '2016-08-10 10:05:30', '0000-00-00 00:00:00'),
(332, 'total_transport_fees', 'no', '2016-08-10 10:15:54', '0000-00-00 00:00:00'),
(333, 'class_section', 'no', '2016-08-10 10:19:24', '0000-00-00 00:00:00'),
(335, 'other_discount', 'no', '2016-08-10 10:38:43', '0000-00-00 00:00:00'),
(336, 'search_transaction', 'no', '2016-10-18 05:19:17', '0000-00-00 00:00:00'),
(337, 'fees_collection_details', 'no', '2016-08-10 10:48:09', '0000-00-00 00:00:00'),
(338, 'expense_id', 'no', '2016-08-10 10:54:24', '0000-00-00 00:00:00'),
(339, 'expense_head', 'no', '2016-08-10 10:51:43', '0000-00-00 00:00:00'),
(340, 'expense_detail', 'no', '2016-08-10 10:55:17', '0000-00-00 00:00:00'),
(341, 'add_expense', 'no', '2016-08-10 11:28:20', '0000-00-00 00:00:00'),
(342, 'edit_expense', 'no', '2016-08-10 11:33:33', '0000-00-00 00:00:00'),
(343, 'expense_list', 'no', '2016-08-10 11:37:48', '0000-00-00 00:00:00'),
(344, 'expense_head_list', 'no', '2016-08-10 11:45:58', '0000-00-00 00:00:00'),
(345, 'edit_expense_head', 'no', '2016-08-10 11:49:02', '0000-00-00 00:00:00'),
(347, 'add_expense_head', 'no', '2016-08-10 11:55:17', '0000-00-00 00:00:00'),
(348, 'attendance_already_submitted_you_can_edit_record', 'no', '2017-04-02 01:16:00', '0000-00-00 00:00:00'),
(349, 'attendance_already_submitted_as_holiday', 'no', '2017-04-02 01:16:00', '0000-00-00 00:00:00'),
(350, 'you_can_edit_record', 'no', '2016-08-10 23:11:54', '0000-00-00 00:00:00'),
(351, 'attendance_saved_successfully', 'no', '2017-04-02 01:16:00', '0000-00-00 00:00:00'),
(352, 'holiday', 'no', '2016-08-10 23:18:21', '0000-00-00 00:00:00'),
(353, 'mark_as_holiday', 'no', '2016-08-10 23:22:15', '0000-00-00 00:00:00'),
(354, 'no_attendance_prepare', 'no', '2016-08-10 23:42:18', '0000-00-00 00:00:00'),
(355, 'add_exam', 'no', '2016-08-11 00:09:04', '0000-00-00 00:00:00'),
(356, 'view_status', 'no', '2016-08-11 00:10:56', '0000-00-00 00:00:00'),
(357, 'marks_register_prepared', 'no', '2016-08-11 00:16:51', '0000-00-00 00:00:00'),
(358, 'exam_scheduled', 'no', '2016-08-11 00:16:51', '0000-00-00 00:00:00'),
(359, 'submit', 'no', '2016-08-11 00:30:47', '0000-00-00 00:00:00'),
(360, 'edit_grade', 'no', '2016-08-11 00:34:55', '0000-00-00 00:00:00'),
(361, 'add_grade', 'no', '2016-08-11 00:34:55', '0000-00-00 00:00:00'),
(362, 'percent_upto', 'no', '2016-08-11 00:36:04', '0000-00-00 00:00:00'),
(363, 'percent_from', 'no', '2016-08-11 00:36:04', '0000-00-00 00:00:00'),
(364, 'grade_list', 'no', '2016-08-11 00:39:49', '0000-00-00 00:00:00'),
(366, 'assign_subject', 'no', '2016-08-11 01:02:21', '0000-00-00 00:00:00'),
(368, 'edit_teacher', 'no', '2016-08-11 01:05:57', '0000-00-00 00:00:00'),
(369, 'add_teacher', 'no', '2016-08-11 01:22:14', '0000-00-00 00:00:00'),
(370, 'add_subject', 'no', '2016-08-11 01:30:48', '0000-00-00 00:00:00'),
(374, 'edit_subject', 'no', '2016-08-11 01:43:33', '0000-00-00 00:00:00'),
(375, 'edit_class', 'no', '2016-08-11 01:43:50', '0000-00-00 00:00:00'),
(377, 'edit_section', 'no', '2016-08-11 01:54:27', '0000-00-00 00:00:00'),
(378, 'upload_content', 'no', '2016-08-11 02:06:54', '0000-00-00 00:00:00'),
(380, 'content_list', 'no', '2016-08-11 02:30:03', '0000-00-00 00:00:00'),
(382, 'available_for_all_classes', 'no', '2016-10-23 07:26:48', '0000-00-00 00:00:00'),
(384, 'content_file', 'no', '2016-08-12 09:09:02', '0000-00-00 00:00:00'),
(385, 'available_for', 'no', '2016-08-12 09:09:02', '0000-00-00 00:00:00'),
(386, 'my_children', 'no', '2016-09-17 01:06:30', '0000-00-00 00:00:00'),
(387, 'assignment_list', 'no', '2016-08-12 09:15:21', '0000-00-00 00:00:00'),
(388, 'study_material_list', 'no', '2016-08-12 09:15:21', '0000-00-00 00:00:00'),
(389, 'syllabus_list', 'no', '2016-08-12 09:15:21', '0000-00-00 00:00:00'),
(390, 'other_download_list', 'no', '2016-08-12 09:15:21', '0000-00-00 00:00:00'),
(391, 'book_details', 'no', '2016-08-12 09:34:18', '0000-00-00 00:00:00'),
(392, 'edit_book', 'no', '2016-08-12 09:34:18', '0000-00-00 00:00:00'),
(393, 'book_list', 'no', '2016-08-12 09:36:33', '0000-00-00 00:00:00'),
(394, 'route_list', 'no', '2016-08-12 09:48:15', '0000-00-00 00:00:00'),
(395, 'create_route', 'no', '2016-08-12 09:48:15', '0000-00-00 00:00:00'),
(396, 'edit_route', 'no', '2016-08-12 09:48:15', '0000-00-00 00:00:00'),
(397, 'add_hostel', 'no', '2016-08-12 10:05:23', '0000-00-00 00:00:00'),
(398, 'edit_hostel', 'no', '2016-08-12 10:05:23', '0000-00-00 00:00:00'),
(399, 'hostel_list', 'no', '2016-08-12 10:05:23', '0000-00-00 00:00:00'),
(400, 'print', 'no', '2016-08-12 10:08:26', '0000-00-00 00:00:00'),
(401, 'room_type', 'no', '2016-08-12 10:13:23', '0000-00-00 00:00:00'),
(402, 'add_room_type', 'no', '2016-08-12 10:13:23', '0000-00-00 00:00:00'),
(403, 'room_type_list', 'no', '2016-08-12 10:13:23', '0000-00-00 00:00:00'),
(404, 'edit_room_type', 'no', '2016-08-12 10:13:23', '0000-00-00 00:00:00'),
(406, 'edit_message', 'no', '2016-08-12 10:28:45', '0000-00-00 00:00:00'),
(407, 'select', 'no', '2016-08-12 10:32:17', '0000-00-00 00:00:00'),
(408, 'general_settings', 'no', '2016-08-12 11:03:50', '0000-00-00 00:00:00'),
(410, 'session_start_month', 'no', '2016-08-12 11:04:48', '0000-00-00 00:00:00'),
(411, 'edit_session', 'no', '2016-08-12 11:17:13', '0000-00-00 00:00:00'),
(414, 'paypal_setting', 'no', '2016-08-12 11:50:26', '0000-00-00 00:00:00'),
(415, 'paypal_username', 'no', '2016-08-12 11:50:26', '0000-00-00 00:00:00'),
(416, 'paypal_password', 'no', '2016-08-12 11:50:26', '0000-00-00 00:00:00'),
(417, 'paypal_signature', 'no', '2016-08-12 11:50:26', '0000-00-00 00:00:00'),
(418, 'paypal_email', 'no', '2016-08-12 11:50:26', '0000-00-00 00:00:00'),
(419, 'off', 'no', '2016-08-12 11:50:43', '0000-00-00 00:00:00'),
(420, 'on', 'no', '2016-08-12 11:50:43', '0000-00-00 00:00:00'),
(421, 'backup_history', 'no', '2016-08-12 11:59:15', '0000-00-00 00:00:00'),
(422, 'create_backup', 'no', '2016-08-12 11:59:15', '0000-00-00 00:00:00'),
(423, 'backup_files', 'no', '2016-10-25 15:47:36', '0000-00-00 00:00:00'),
(424, 'upload_from_local_directory', 'no', '2016-08-12 12:03:51', '0000-00-00 00:00:00'),
(427, 'restore', 'no', '2016-08-12 17:04:46', '0000-00-00 00:00:00'),
(429, 'class_fees_detail', 'no', '2016-08-12 17:37:20', '0000-00-00 00:00:00'),
(430, 'no_fees_found', 'no', '2016-08-12 17:38:56', '0000-00-00 00:00:00'),
(431, 'monthly_fees_collection', 'no', '2016-08-12 17:43:22', '0000-00-00 00:00:00'),
(432, 'monthly_expenses', 'no', '2016-08-12 17:43:22', '0000-00-00 00:00:00'),
(433, 'teachers', 'no', '2016-08-12 17:43:22', '0000-00-00 00:00:00'),
(434, 'students', 'no', '2016-08-12 17:43:22', '0000-00-00 00:00:00'),
(436, 'login_details', 'no', '2016-08-12 17:57:20', '0000-00-00 00:00:00'),
(437, 'academic_fees_detail', 'no', '2016-08-12 18:33:38', '0000-00-00 00:00:00'),
(438, 'document_list', 'no', '2016-08-12 18:42:01', '0000-00-00 00:00:00'),
(439, 'exam_timetable', 'no', '2016-08-12 19:00:36', '0000-00-00 00:00:00'),
(440, 'promote_in_session', 'no', '2016-08-12 19:51:51', '0000-00-00 00:00:00'),
(441, 'promote_students_in_next_session', 'no', '2016-08-12 19:51:51', '0000-00-00 00:00:00'),
(442, 'next_session_status', 'no', '2016-08-12 19:55:11', '0000-00-00 00:00:00'),
(443, 'no_result_prepare', 'no', '2016-08-12 12:26:40', '0000-00-00 00:00:00'),
(444, 'parent_guardian_detail', 'no', '2016-08-12 12:59:14', '0000-00-00 00:00:00'),
(445, 'add_more_details', 'no', '2016-08-12 13:01:21', '0000-00-00 00:00:00'),
(446, 'if_permanent_address_is_current_address', 'no', '2016-10-05 16:58:39', '0000-00-00 00:00:00'),
(447, 'address_details', 'no', '2016-08-12 13:07:38', '0000-00-00 00:00:00'),
(449, 'add_image', 'no', '2016-08-12 13:25:27', '0000-00-00 00:00:00'),
(450, 'payment_id_detail', 'no', '2016-08-12 13:33:44', '0000-00-00 00:00:00'),
(451, 'section_name', 'no', '2016-08-12 14:03:59', '0000-00-00 00:00:00'),
(452, 'fees_type', 'no', '2016-08-12 14:32:20', '0000-00-00 00:00:00'),
(453, 'edit_hostel_room', 'no', '2016-08-16 07:07:57', '0000-00-00 00:00:00'),
(454, 'room_no_name', 'no', '2016-08-16 07:11:43', '0000-00-00 00:00:00'),
(455, 'no_of_bed', 'no', '2016-08-16 07:11:43', '0000-00-00 00:00:00'),
(456, 'cost_per_bed', 'no', '2016-08-16 07:11:43', '0000-00-00 00:00:00'),
(457, 'hostel_room_list', 'no', '2016-08-16 07:11:43', '0000-00-00 00:00:00'),
(458, 'add_hostel_room', 'no', '2016-08-16 07:16:48', '0000-00-00 00:00:00'),
(459, 'mark_register', 'no', '2016-08-16 07:21:56', '0000-00-00 00:00:00'),
(462, 'fill_mark', 'no', '2016-08-16 07:32:20', '0000-00-00 00:00:00'),
(463, 'post_new_message', 'no', '2016-08-16 07:35:16', '0000-00-00 00:00:00'),
(464, 'by_date', 'no', '2016-08-16 07:41:44', '0000-00-00 00:00:00'),
(465, 'edit_category', 'no', '2016-08-16 07:50:25', '0000-00-00 00:00:00'),
(466, 'exam_not_allotted', 'no', '2016-10-23 07:23:46', '0000-00-00 00:00:00'),
(467, 'edit_exam', 'no', '2016-08-16 08:01:50', '0000-00-00 00:00:00'),
(468, 'add_class', 'no', '2016-08-16 08:06:27', '0000-00-00 00:00:00'),
(469, 'teacher_subject', 'no', '2016-08-16 09:48:06', '0000-00-00 00:00:00'),
(470, 'dd', 'no', '2016-08-16 23:05:12', '0000-00-00 00:00:00'),
(471, 'cash', 'no', '2016-08-16 23:05:12', '0000-00-00 00:00:00'),
(472, 'cheque', 'no', '2016-08-16 23:05:12', '0000-00-00 00:00:00'),
(473, 'revert', 'no', '2016-08-16 23:40:47', '0000-00-00 00:00:00'),
(474, 'view', 'no', '2016-08-17 01:16:56', '0000-00-00 00:00:00'),
(475, 'no_exam_prepare', 'no', '2016-10-23 08:00:25', '0000-00-00 00:00:00'),
(476, 'sms_setting', 'no', '2016-08-22 08:45:46', '0000-00-00 00:00:00'),
(477, 'smart_school', 'no', '2016-08-24 23:41:16', '0000-00-00 00:00:00'),
(478, 'user_login', 'no', '2016-08-25 00:16:22', '0000-00-00 00:00:00'),
(479, 'library_book', 'no', '2016-09-06 19:10:41', '0000-00-00 00:00:00'),
(480, 'transport_routes', 'no', '2016-09-06 19:14:00', '0000-00-00 00:00:00'),
(481, 'hostel_rooms', 'no', '2016-09-06 19:17:22', '0000-00-00 00:00:00'),
(482, 'exam_schedule', 'no', '2016-09-06 19:27:03', '0000-00-00 00:00:00'),
(483, 'subjects', 'no', '2016-09-06 19:35:20', '0000-00-00 00:00:00'),
(484, 'national_identification_no', 'no', '2016-09-15 04:00:04', '0000-00-00 00:00:00'),
(485, 'local_identification_no', 'no', '2016-09-15 04:01:16', '0000-00-00 00:00:00'),
(486, 'my_profile', 'no', '2016-09-15 08:44:58', '0000-00-00 00:00:00'),
(487, 'mode', 'no', '2016-09-15 08:47:39', '0000-00-00 00:00:00'),
(488, 'url', 'no', '2016-09-15 11:24:06', '0000-00-00 00:00:00'),
(489, 'month', 'no', '2016-09-15 11:37:30', '0000-00-00 00:00:00'),
(490, 'upload', 'no', '2016-09-15 11:46:34', '0000-00-00 00:00:00'),
(491, 'day', 'no', '2016-10-24 00:02:31', '0000-00-00 00:00:00'),
(492, 'class_timetable', 'no', '2016-10-05 16:40:38', '0000-00-00 00:00:00'),
(493, 'if_guardian_address_is_current_address', 'no', '2016-10-07 17:12:51', '0000-00-00 00:00:00'),
(494, 'admin_login', 'no', '2016-10-17 21:08:26', '0000-00-00 00:00:00'),
(495, 'date_from', 'no', '2016-10-19 06:07:28', '0000-00-00 00:00:00'),
(496, 'other', 'no', '2016-10-25 15:01:08', '0000-00-00 00:00:00'),
(497, 'search_by_keyword', 'no', '2016-10-25 15:55:46', '0000-00-00 00:00:00'),
(499, 'add_book', 'no', '2016-10-31 11:52:54', '0000-00-00 00:00:00'),
(500, 'edit_vehicle_on_route', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(501, 'assign_vehicle_on_route', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(502, 'vehicle_route_list', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(503, 'route', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(504, 'vehicle_routes', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(505, 'edit_vehicle', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(506, 'vehicle', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(507, 'vehicle_list', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(508, 'add_vehicle', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(509, 'driver_contact', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(510, 'driver_license', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(511, 'driver_name', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(512, 'vehicle_no', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(513, 'vehicle_model', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(514, 'logout', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(515, 'year_made', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(516, 'attendance', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(517, 'show', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(519, 'add_timetable', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(520, 'edit_setting', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(521, 'subject_type', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(522, 'view_detail', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(523, 'exam_status', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(524, 'books', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(525, 'report_card', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(526, 'library_books', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(527, 'no_vehicle_allotted_to_this_route', 'no', '2017-04-02 01:16:00', '0000-00-00 00:00:00'),
(528, 'Add/Edit', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(529, 'language_rtl_text_mode', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(530, 'clickatell_username', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(531, 'clickatell_password', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(532, 'clickatell_api_id', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(533, 'clickatell_sms_gateway', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(534, 'twilio_sms_gateway', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(535, 'custom_sms_gateway', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(536, 'twilio_account_sid', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(537, 'authentication_token', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(538, 'registered_phone_number', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(539, 'username', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(540, 'gateway_name', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(541, 'theory', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(542, 'practical', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(543, 'present', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(544, 'paid', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(545, 'yes', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(546, 'if_guardian_is', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(547, 'current_session', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(548, 'quick_links', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(549, 'student_details', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(550, 'student_admission', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(551, 'student_categories', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(552, 'promote_students', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(554, 'fees_master', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(555, 'search_fees_payment', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(556, 'search_due_fees', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(557, 'fees_statement', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(558, 'balance_fees_report', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(559, 'search_expense', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(560, 'student_attendance', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(561, 'attendance_by_date', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(562, 'attendance_report', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(563, 'marks_register', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(564, 'marks_grade', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(565, 'assign_subjects', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(566, 'sections', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(567, 'assignments', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(568, 'study_material', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(569, 'routes', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(570, 'vehicles', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(571, 'assign_vehicle', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(572, 'send_message', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(573, 'student_report', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(574, 'transaction_report', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(575, 'exam_marks_report', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(576, 'session_setting', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(577, 'backup / restore', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(578, 'languages', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(579, 'grade', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(580, 'percentage', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(581, 'fees_collection_&_expenses_for_session', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(582, 'fees_receipt', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(583, 'fees_category', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(584, 'fees_collection_&_expenses_for', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(585, 'library_-_books', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(586, 'transport_-_routes', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(587, 'hostel_-_rooms', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(588, 'search_by_name,_roll_no,_enroll_no,_national_identification_no,_local_identification_no_etc..', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(589, 'user_type', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(590, 'login_url', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(591, 'search_student', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(592, 'student_lists', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(593, 'detailed_view', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(595, 'active', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(596, 'syllabus', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(597, 'other_downloads', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(598, 'download', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(599, 'unpaid', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(600, 'enter_room_no', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(601, 'male', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(602, 'female', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(603, 'expense_result', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(604, 'view_schedule', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(605, 'pdf', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(606, 'not', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(607, 'scheduled', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(609, 'transaction_from', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(610, 'to', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(611, 'enabled', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(612, 'disabled', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(613, 'add_language', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(614, 'no_description', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(615, 'fees_category_list', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(616, 'add_fee_category', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(617, 'edit_fee_category', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(618, 'late_with_excuse', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(619, 'late', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(620, 'absent', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(621, 'issue_book', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(622, 'member_type', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(623, 'issue', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(624, 'book', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(625, 'members', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(626, 'library_card_no', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(627, 'return_date', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(628, 'member_id', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(629, 'book_issued', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(630, 'timezone', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(631, 'accountants', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(632, 'librarians', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(633, 'add_librarian', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(634, 'librarian_photo', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(635, 'librarian_list', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(636, 'edit_librarian', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(637, 'current_username', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(638, 'new_username', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(639, 'confirm_username', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(640, 'change_username', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(641, 'add_accountant', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(642, 'accountant_list', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(643, 'accountant_photo', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(644, 'edit_accountant', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(645, 'book_no', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(646, 'users', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(647, 'isbn_no', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(648, 'issue_return', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(649, 'add_student', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(650, 'books_issue_return', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(651, 'member_list', 'no', '2017-05-29 18:11:22', '0000-00-00 00:00:00'),
(652, 'issue_date', 'no', '2017-05-29 18:11:22', '0000-00-00 00:00:00'),
(653, 'surrender_membership', 'no', '2017-05-29 18:11:22', '0000-00-00 00:00:00'),
(654, 'fees_group', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(655, 'add_fees_group', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(656, 'fees_group_list', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(657, 'due_date', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(658, 'fees_code', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(659, 'fees_discount', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(660, 'edit_fees_discount', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(661, 'discount_code', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(662, 'fees_discount_list', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(663, 'add_fees_discount', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(664, 'all', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(665, 'assign_fees_discount', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(666, 'partial', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(667, 'applied', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(668, 'student_fees', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(669, 'confirmation', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(670, 'assign / view', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(671, 'edit_fees_group', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(672, 'edit_fees_type', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(673, 'edit_fees_master', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(674, 'apply_discount', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(675, 'discount_of', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(676, 'add_member', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(677, 'email_setting', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(678, 'email_engine', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(679, 'smtp_username', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(680, 'smtp_password', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(681, 'smtp_server', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(682, 'smtp_port', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(683, 'smtp_security', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(684, 'assigned', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(685, 'admin_users', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(686, 'add_admin_user', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(687, 'admin_name', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(688, 'admin_email', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(689, 'admin_password', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(690, 'forgot_password', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(691, 'assign_fees_group', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(692, 'accountant', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(693, 'add_income', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(694, 'add_item_store', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(695, 'admin', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(696, 'attach_document', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(697, 'confirm_return', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(698, 'contact_person_email', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(699, 'contact_person_name', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(700, 'edit_income_head', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(701, 'edit_item_store', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(702, 'edit_item_category', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(703, 'group', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(704, 'guardians', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(705, 'income_head_list', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(706, 'income_head', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(707, 'income', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(708, 'individual', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(709, 'inventory', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(710, 'issue_by', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(711, 'issue_to', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(712, 'issue_item', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(713, 'item_store', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(714, 'item_category', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(715, 'item', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(716, 'item_stock_list', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(717, 'item_store_code', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(718, 'item_store_name', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(719, 'item_supplier_list', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(720, 'librarian', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(721, 'quantity', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(722, 'reset_password', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(723, 'return', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(724, 'returned', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(725, 'search_income', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(726, 'sms', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(727, 'store', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(728, 'supplier', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(729, 'add_item_category', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(730, 'add_item', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(731, 'add_item_stock', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(732, 'add_item_supplier', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(733, 'available_quantity', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(734, 'contact_person_phone', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(735, 'edit_item_supplier', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(736, 'edit_item', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(737, 'edit_income', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(738, 'expense_details', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(739, 'income_details', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(740, 'income_id', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(741, 'income_result', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(742, 'issued_by', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(743, 'item_category_list', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(744, 'item_list', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(745, 'item_store_list', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(746, 'item_supplier', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(747, 'contact_person', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(748, 'send_through', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(749, 'auth_Key', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(750, 'current_theme', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(751, 'guardian_email', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(752, 'hash_key', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(753, 'income_list', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(754, 'income_result', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(755, 'income_search', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(756, 'MSG_91', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(757, 'notification_setting', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(758, 'sender_id', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(759, 'SMS_country', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(760, 'Text_Local', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(761, 'user_log', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(762, 'send_email_/_sms', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(763, 'email_/_sms', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(764, 'email_/_sms_log', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(765, 'payment_methods', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(766, 'all_users', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(767, 'stripe_api_secret_key', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(768, 'stripe_publishable_key', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(769, 'payu_money_key', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(770, 'payu_money_salt', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(771, 'merchant_id', 'no', '2017-12-14 12:24:50', '0000-00-00 00:00:00'),
(772, 'working_key', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(773, 'select_payment_gateway', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(774, 'exam_result', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(775, 'fees_submission', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(776, 'absent_student', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(777, 'login_credential', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(778, 'role', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(779, 'ip_address', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(780, 'login_time', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(781, 'user_agent', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(782, 'click_to_return', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(783, 'part', 'no', '2020-06-18 18:12:33', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `lang_pharses`
--

CREATE TABLE IF NOT EXISTS `lang_pharses` (
  `id` int(11) NOT NULL,
  `lang_id` int(11) DEFAULT NULL,
  `key_id` int(11) DEFAULT NULL,
  `pharses` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `text` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=74121 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lang_pharses`
--

INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES
(997, 4, 620, 'Absent', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(998, 4, 437, 'Academic Fees Detail', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(999, 4, 211, 'Academics', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1000, 4, 79, 'Action', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1001, 4, 595, 'Active', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1002, 4, 228, 'Add', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1003, 4, 64, 'Add Another Language', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1004, 4, 499, 'Add Book', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1005, 4, 51, 'Add Category', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1006, 4, 468, 'Add Batch', NULL, 'no', '2020-06-18 17:50:50', '0000-00-00 00:00:00'),
(1007, 4, 355, 'Add Exam', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1008, 4, 341, 'Add Expense', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1009, 4, 347, 'Add Expense Head', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1010, 4, 616, 'Add Fee Category', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1011, 4, 35, 'Add Fees', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1012, 4, 43, 'Add Fees Master', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1013, 4, 45, 'Add Fees Type', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1014, 4, 361, 'Add Grade', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1015, 4, 397, 'Add Hostel', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1016, 4, 458, 'Add Hostel Room', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1017, 4, 449, 'Add Image', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1018, 4, 613, 'Add Language', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1019, 4, 445, 'Add More Details', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1020, 4, 137, 'Add New SMS Configuration', NULL, 'no', '2017-04-10 08:40:03', '0000-00-00 00:00:00'),
(1021, 4, 402, 'Add Room Type', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1022, 4, 57, 'Add Semester', NULL, 'no', '2020-06-18 17:52:31', '0000-00-00 00:00:00'),
(1023, 4, 53, 'Add Session', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1024, 4, 370, 'Add Subject', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1025, 4, 369, 'Add Teacher', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1026, 4, 519, 'Add Timetable', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1027, 4, 508, 'Add Vehicle', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1028, 4, 528, 'Add/Edit', NULL, 'no', '2017-04-10 08:40:22', '0000-00-00 00:00:00'),
(1029, 4, 164, 'Address', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1030, 4, 447, 'Address Details', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1031, 4, 494, 'Admin Login', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1032, 4, 303, 'Admission', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1033, 4, 11, 'Admission Date', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1034, 4, 181, 'Admission Discount', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1035, 4, 170, 'Admission Number', NULL, 'no', '2017-05-20 02:40:16', '0000-00-00 00:00:00'),
(1036, 4, 89, 'Amount', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1038, 4, 366, 'Assign Subject', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1039, 4, 565, 'Assign Subjects', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1040, 4, 571, 'Assign Vehicle', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1041, 4, 501, 'Assign Vehicle On Route', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1042, 4, 387, 'Assignment List', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1043, 4, 567, 'Assignments', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1044, 4, 516, 'Attendance', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1045, 4, 349, 'Attendance Already Submitted As Holiday', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1046, 4, 348, 'Attendance Already Submitted You Can Edit Record', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1047, 4, 561, 'Attendance By Date', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1048, 4, 562, 'Attendance Report', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1049, 4, 351, 'Attendance Saved Successfully', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1050, 4, 537, 'Authentication Token', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1051, 4, 190, 'Author', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1052, 4, 385, 'Available For', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1053, 4, 382, 'Available For All Batches', NULL, 'no', '2020-06-22 18:48:15', '0000-00-00 00:00:00'),
(1054, 4, 577, 'Backup / Restore', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1055, 4, 423, 'Backup Files', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1056, 4, 421, 'Backup History', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1057, 4, 108, 'Balance', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1058, 4, 92, 'Balance Description', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1059, 4, 320, 'Balance Details', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1060, 4, 328, 'Balance Fees', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1061, 4, 558, 'Balance Fees Report', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1062, 4, 23, 'Bank Account Number', NULL, 'no', '2017-05-20 02:40:30', '0000-00-00 00:00:00'),
(1063, 4, 24, 'Bank Name', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1064, 4, 227, 'Basic Information', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1065, 4, 391, 'Book Details', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1066, 4, 393, 'Book List', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1067, 4, 199, 'Book Title', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1068, 4, 192, 'Book Price', NULL, 'no', '2017-04-10 08:43:06', '0000-00-00 00:00:00'),
(1069, 4, 524, 'Books', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1070, 4, 464, 'By Date', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1071, 4, 141, 'Cancel', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1072, 4, 471, 'Cash', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1073, 4, 168, 'Cast', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1074, 4, 16, 'Category', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1075, 4, 50, 'Category List', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1076, 4, 275, 'Change Password', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1077, 4, 80, 'Change Status', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1078, 4, 472, 'Cheque', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1079, 4, 9, 'Batch', NULL, 'no', '2020-06-18 17:50:20', '0000-00-00 00:00:00'),
(1080, 4, 429, 'Batches Fees Detail', NULL, 'no', '2020-06-22 18:47:32', '0000-00-00 00:00:00'),
(1081, 4, 54, 'Batch List', NULL, 'no', '2020-06-18 17:51:08', '0000-00-00 00:00:00'),
(1082, 4, 333, 'Batch Semester', NULL, 'no', '2020-06-22 18:46:27', '0000-00-00 00:00:00'),
(1083, 4, 492, 'Batches Timetable', NULL, 'no', '2020-06-22 18:47:32', '0000-00-00 00:00:00'),
(1084, 4, 116, 'Batches', NULL, 'no', '2020-06-22 18:47:34', '0000-00-00 00:00:00'),
(1085, 4, 532, 'Clickatell Api Id', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1086, 4, 531, 'Clickatell Password', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1087, 4, 533, 'Clickatell SMS Gateway', NULL, 'no', '2017-04-10 08:44:20', '0000-00-00 00:00:00'),
(1088, 4, 530, 'Clickatell Username', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1089, 4, 319, 'Collect Fees', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1090, 4, 330, 'Collect Transport Fees', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1091, 4, 117, 'Collection', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1092, 4, 284, 'Communicate', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1093, 4, 252, 'Compose New Message', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1094, 4, 123, 'Confirm Password', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1095, 4, 384, 'Content File', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1096, 4, 380, 'Content List', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1097, 4, 246, 'Content Title', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1098, 4, 203, 'Content Type', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1099, 4, 233, 'Continue', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1100, 4, 456, 'Cost Per Bed', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1101, 4, 422, 'Create Backup', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1102, 4, 263, 'Create Category', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1103, 4, 395, 'Create Route', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1104, 4, 65, 'Created At', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1105, 4, 295, 'Currency', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1106, 4, 296, 'Currency Symbol', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1107, 4, 302, 'Current', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1108, 4, 17, 'Current Address', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1109, 4, 121, 'Current Password', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1110, 4, 547, 'Current Session', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1111, 4, 535, 'Custom SMS Gateway', NULL, 'no', '2017-04-10 08:45:00', '0000-00-00 00:00:00'),
(1112, 4, 125, 'Date', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1113, 4, 294, 'Date Format', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1114, 4, 495, 'Date From', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1115, 4, 13, 'Date Of Birth', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1116, 4, 225, 'Date To', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1117, 4, 491, 'Day', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1118, 4, 470, 'DD', NULL, 'no', '2017-04-10 08:45:12', '0000-00-00 00:00:00'),
(1120, 4, 311, 'Delete', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1121, 4, 107, 'Deposit', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1122, 4, 101, 'Description', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1123, 4, 593, 'Detailed View', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1124, 4, 306, 'Details', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1125, 4, 612, 'Disabled', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1126, 4, 91, 'Discount', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1127, 4, 292, 'Download Sample Import File', NULL, 'no', '2017-04-10 08:46:06', '0000-00-00 00:00:00'),
(1128, 4, 438, 'Document List', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1129, 4, 312, 'Documents', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1130, 4, 598, 'Download', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1131, 4, 212, 'Download Center', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1132, 4, 321, 'Download PDF', NULL, 'no', '2017-04-10 08:46:23', '0000-00-00 00:00:00'),
(1133, 4, 509, 'Driver Contact', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1134, 4, 510, 'Driver License', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1135, 4, 511, 'Driver Name', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1136, 4, 48, 'Edit', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1137, 4, 392, 'Edit Book', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1138, 4, 465, 'Edit Category', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1139, 4, 375, 'Edit Batch', NULL, 'no', '2020-06-18 17:54:55', '0000-00-00 00:00:00'),
(1140, 4, 467, 'Edit Exam', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1141, 4, 342, 'Edit Expense', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1142, 4, 345, 'Edit Expense Head', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1143, 4, 617, 'Edit Fee Category', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1144, 4, 360, 'Edit Grade', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1145, 4, 398, 'Edit Hostel', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1146, 4, 453, 'Edit Hostel Room', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1147, 4, 72, 'Edit Logo', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1148, 4, 406, 'Edit Message', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1149, 4, 272, 'Edit Notification', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1150, 4, 404, 'Edit Room Type', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1151, 4, 396, 'Edit Route', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1152, 4, 377, 'Edit Section', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1153, 4, 411, 'Edit Session', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1154, 4, 520, 'Edit Setting', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1155, 4, 374, 'Edit Subject', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1156, 4, 368, 'Edit Teacher', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1157, 4, 505, 'Edit Vehicle', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1158, 4, 500, 'Edit Vehicle On Route', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1159, 4, 3, 'Email', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1160, 4, 611, 'Enabled', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1161, 4, 238, 'End Time', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1162, 4, 171, 'Enrollment Number', NULL, 'no', '2017-05-20 02:40:51', '0000-00-00 00:00:00'),
(1163, 4, 600, 'Enter Room Number', NULL, 'no', '2017-05-20 02:41:06', '0000-00-00 00:00:00'),
(1164, 4, 236, 'Exam', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1165, 4, 235, 'Exam List', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1166, 4, 575, 'Exam Marks Report', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1167, 4, 142, 'Exam Name', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1168, 4, 466, 'Exam Not Allotted', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1169, 4, 482, 'Exam Schedule', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1170, 4, 358, 'Exam Scheduled', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1171, 4, 523, 'Exam Status', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1172, 4, 439, 'Exam Timetable', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1173, 4, 210, 'Examinations', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1174, 4, 340, 'Expense Detail', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1175, 4, 339, 'Expense Head', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1176, 4, 344, 'Expense Head List', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1177, 4, 338, 'Expense Id', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1178, 4, 343, 'Expense List', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1179, 4, 603, 'Expense Result', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1180, 4, 206, 'Expenses', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1181, 4, 33, 'Export Format', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1182, 4, 232, 'Fail', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1183, 4, 202, 'Fare', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1184, 4, 287, 'Father', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1185, 4, 157, 'Father Name', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1186, 4, 159, 'Father Occupation', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1187, 4, 158, 'Father Phone', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1188, 4, 39, 'Fee Category', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1189, 4, 115, 'Fees Master', NULL, 'no', '2017-04-10 08:48:52', '0000-00-00 00:00:00'),
(1190, 4, 40, 'Fees Type', NULL, 'no', '2017-04-10 08:48:56', '0000-00-00 00:00:00'),
(1191, 4, 184, 'Fees', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1192, 4, 583, 'Fees Category', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1193, 4, 615, 'Fees Category List', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1195, 4, 208, 'Fees Collection', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1196, 4, 584, 'Fees Collection & Expenses For', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1197, 4, 581, 'Fees Collection & Expenses For Session', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1198, 4, 337, 'Fees Collection Details', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1199, 4, 156, 'Fees Discount', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1200, 4, 554, 'Fees Master', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1201, 4, 44, 'Fees Master List', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1202, 4, 582, 'Fees Receipt', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1203, 4, 557, 'Fees Statement', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1204, 4, 102, 'Fees Subtotal', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1205, 4, 452, 'Fees Type', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1206, 4, 46, 'Fees Type List', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1207, 4, 602, 'Female', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1208, 4, 462, 'Fill Marks', NULL, 'no', '2017-12-09 00:47:41', '0000-00-00 00:00:00'),
(1209, 4, 87, 'Fine', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1210, 4, 7, 'First Name', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1211, 4, 240, 'Full Marks', NULL, 'no', '2017-12-09 00:48:08', '0000-00-00 00:00:00'),
(1212, 4, 299, 'Full Marks', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1213, 4, 540, 'Gateway Name', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1214, 4, 186, 'Gender', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1215, 4, 408, 'General Setting', NULL, 'no', '2017-12-14 13:46:34', '0000-00-00 00:00:00'),
(1216, 4, 34, 'Generate PDF', NULL, 'no', '2017-04-10 08:50:09', '0000-00-00 00:00:00'),
(1217, 4, 579, 'Grade', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1218, 4, 364, 'Grade List', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1219, 4, 145, 'Grade Name', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1220, 4, 106, 'Grand Total', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1221, 4, 327, 'Gross Fees', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1222, 4, 30, 'Guardian Address', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1223, 4, 273, 'Guardian Details', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1224, 4, 27, 'Guardian Name', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1225, 4, 163, 'Guardian Occupation', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1226, 4, 29, 'Guardian Phone', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1227, 4, 28, 'Guardian Relation', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1228, 4, 352, 'Holiday', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1229, 4, 220, 'Hostel', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1230, 4, 587, 'Hostel - Rooms', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1231, 4, 399, 'Hostel List', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1232, 4, 221, 'Hostel Name', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1233, 4, 457, 'Hostel Room List', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1234, 4, 481, 'Hostel Rooms', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1235, 4, 169, 'Id', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1236, 4, 309, 'Identification', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1237, 4, 493, 'If Guardian Address is Current Address', NULL, 'no', '2017-04-10 08:50:50', '0000-00-00 00:00:00'),
(1238, 4, 546, 'If Guardian Is', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1239, 4, 446, 'If Permanent Address is Current Address', NULL, 'no', '2017-04-10 08:50:57', '0000-00-00 00:00:00'),
(1240, 4, 25, 'IFSC Code', NULL, 'no', '2017-04-10 08:51:18', '0000-00-00 00:00:00'),
(1241, 4, 32, 'Import Excel', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1242, 4, 291, 'Import Student', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1243, 4, 197, 'Intake', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1244, 4, 86, 'Invoice Number', NULL, 'no', '2017-05-20 02:41:26', '0000-00-00 00:00:00'),
(1245, 4, 188, 'ISBN', NULL, 'no', '2017-04-10 08:51:32', '0000-00-00 00:00:00'),
(1246, 4, 165, 'Language', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1247, 4, 63, 'Language List', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1248, 4, 529, 'Language RTL Text Mode', NULL, 'no', '2017-04-10 08:51:53', '0000-00-00 00:00:00'),
(1249, 4, 578, 'Languages', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1250, 4, 8, 'Last Name', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1251, 4, 619, 'Late', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1252, 4, 618, 'Late With Excuse', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1253, 4, 234, 'Leave', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1254, 4, 214, 'Library', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1255, 4, 585, 'Library - Books', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1256, 4, 479, 'Library Book', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1257, 4, 526, 'Library Books', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1258, 4, 229, 'List', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1259, 4, 485, 'Local Identification Number', NULL, 'no', '2017-05-20 02:41:34', '0000-00-00 00:00:00'),
(1260, 4, 436, 'Login Details', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1261, 4, 590, 'Login Url', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1262, 4, 514, 'Logout', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1263, 4, 601, 'Male', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1264, 4, 70, 'Manage', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1265, 4, 353, 'Mark As Holiday', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1266, 4, 459, 'Marks Register', NULL, 'no', '2017-12-09 00:48:46', '0000-00-00 00:00:00'),
(1267, 4, 564, 'Marks Grade', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1268, 4, 563, 'Marks Register', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1269, 4, 357, 'Marks Register Prepared', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1270, 4, 265, 'Message', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1271, 4, 256, 'Message To', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1272, 4, 270, 'Miscellaneous Details', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1273, 4, 12, 'Mobile Number', NULL, 'no', '2017-05-20 02:41:39', '0000-00-00 00:00:00'),
(1274, 4, 487, 'Mode', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1275, 4, 489, 'Month', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1276, 4, 432, 'Expenses', NULL, 'no', '2020-06-20 06:48:13', '0000-00-00 00:00:00'),
(1277, 4, 431, 'Fees Collection', NULL, 'no', '2020-06-18 19:44:33', '0000-00-00 00:00:00'),
(1278, 4, 288, 'Mother', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1279, 4, 160, 'Mother Name', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1280, 4, 162, 'Mother Occupation', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1281, 4, 161, 'Mother Phone', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1282, 4, 386, 'My Children', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1283, 4, 486, 'My Profile', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1284, 4, 153, 'Name', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1285, 4, 484, 'National Identification Number', NULL, 'no', '2017-09-11 04:09:06', '0000-00-00 00:00:00'),
(1286, 4, 122, 'New Password', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1287, 4, 442, 'Next Session Status', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1288, 4, 310, 'No', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1289, 4, 354, 'No Attendance Prepared', NULL, 'no', '2017-04-10 08:53:26', '0000-00-00 00:00:00'),
(1290, 4, 614, 'No Description', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1291, 4, 475, 'No Exam Prepared', NULL, 'no', '2017-04-10 08:53:35', '0000-00-00 00:00:00'),
(1292, 4, 430, 'No Fees Found', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1293, 4, 455, 'Number Of Bed', NULL, 'no', '2017-05-19 22:43:42', '0000-00-00 00:00:00'),
(1294, 4, 201, 'Number Of Vehicle', NULL, 'no', '2017-05-19 22:43:54', '0000-00-00 00:00:00'),
(1295, 4, 259, 'No Record Found', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1296, 4, 443, 'No Result Prepared', NULL, 'no', '2017-04-10 08:53:47', '0000-00-00 00:00:00'),
(1297, 4, 94, 'No Search Record Found', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1298, 4, 317, 'No Transaction Found', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1299, 4, 331, 'No Transport Fees Found', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1300, 4, 527, 'No vehicle allotted to this route', NULL, 'no', '2017-04-10 08:54:28', '0000-00-00 00:00:00'),
(1301, 4, 606, 'Not', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1302, 4, 290, 'Not Scheduled', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1303, 4, 150, 'Note', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1304, 4, 253, 'Notice', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1305, 4, 285, 'Notice Board', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1306, 4, 254, 'Notice Date', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1307, 4, 278, 'Notifications', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1308, 4, 300, 'Obtain Marks', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1309, 4, 419, 'Off', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1310, 4, 420, 'On', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1311, 4, 496, 'Other', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1312, 4, 335, 'Other Discount', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1313, 4, 390, 'Other Download List', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1314, 4, 597, 'Other Downloads', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1315, 4, 544, 'Paid', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1316, 4, 324, 'Paid Fees', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1317, 4, 257, 'Parent', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1318, 4, 444, 'Parent Guardian Detail', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1319, 4, 231, 'Pass', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1320, 4, 241, 'Passing Marks', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1321, 4, 167, 'Password', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1322, 4, 313, 'Payment', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1323, 4, 274, 'Payment Id', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1324, 4, 450, 'Payment Id Detail', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1325, 4, 418, 'Paypal Email', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1326, 4, 416, 'Paypal Password', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1327, 4, 414, 'Paypal Setting', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1328, 4, 417, 'Paypal Signature', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1329, 4, 415, 'Paypal Username', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1330, 4, 605, 'PDF', NULL, 'no', '2017-04-10 08:55:16', '0000-00-00 00:00:00'),
(1331, 4, 147, 'Percent', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1332, 4, 363, 'Percent From', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1333, 4, 149, 'Percent To', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1334, 4, 362, 'Percent Upto', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1335, 4, 580, 'Percentage', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1336, 4, 18, 'Permanent Address', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1337, 4, 73, 'Phone', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1339, 4, 463, 'Post New Message', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1340, 4, 193, 'Post Date', NULL, 'no', '2017-04-10 08:55:57', '0000-00-00 00:00:00'),
(1341, 4, 542, 'Practical', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1342, 4, 543, 'Present', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1343, 4, 267, 'Previous School Details', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1344, 4, 400, 'Print', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1345, 4, 329, 'Print Selected', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1346, 4, 297, 'Profile', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1347, 4, 245, 'Promote', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1348, 4, 440, 'Promote In Session', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1349, 4, 552, 'Promote Students', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1350, 4, 441, 'Promote Students In Next Session', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1351, 4, 286, 'Publish Date', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1352, 4, 255, 'Publish On', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1353, 4, 189, 'Publisher', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1354, 4, 191, 'Qty', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1355, 4, 548, 'Quick Links', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1356, 4, 218, 'Rack Number', NULL, 'no', '2017-05-20 02:42:23', '0000-00-00 00:00:00'),
(1357, 4, 104, 'Receipt Number', NULL, 'no', '2017-05-20 02:42:19', '0000-00-00 00:00:00'),
(1358, 4, 538, 'Registered Phone Number', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1359, 4, 15, 'Religion', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1360, 4, 82, 'Report', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1361, 4, 525, 'Report Card', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1362, 4, 216, 'Reports', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1363, 4, 85, 'Reset', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1364, 4, 427, 'Restore', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1365, 4, 230, 'Result', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1366, 4, 473, 'Revert', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1367, 4, 6, 'Roll Number', NULL, 'no', '2017-05-20 02:42:27', '0000-00-00 00:00:00'),
(1368, 4, 239, 'Room', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1369, 4, 242, 'Room Number', NULL, 'no', '2017-05-20 02:42:33', '0000-00-00 00:00:00'),
(1370, 4, 454, 'Room Number / Name', NULL, 'no', '2017-05-19 22:45:35', '0000-00-00 00:00:00'),
(1371, 4, 401, 'Room Type', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1372, 4, 403, 'Room Type List', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1373, 4, 503, 'Route', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1374, 4, 394, 'Route List', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1375, 4, 223, 'Route Title', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1376, 4, 569, 'Routes', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1377, 4, 185, 'RTE', NULL, 'no', '2017-04-10 08:57:10', '0000-00-00 00:00:00'),
(1378, 4, 66, 'Save', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1379, 4, 298, 'Save Attendance', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1380, 4, 607, 'Scheduled', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1381, 4, 151, 'School Code', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1383, 4, 69, 'School Logo', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1384, 4, 2, 'School Name', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1385, 4, 37, 'Search', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1386, 4, 497, 'Search By Keyword', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1387, 4, 588, 'Search By Name, Roll Number, Enroll Number, National Id, Local Id Etc..', NULL, 'no', '2017-05-20 02:42:47', '0000-00-00 00:00:00'),
(1388, 4, 556, 'Search Due Fees', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1389, 4, 559, 'Search Expense', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1390, 4, 555, 'Search Fees Payment', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1391, 4, 591, 'Search Student', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1392, 4, 336, 'Search Transaction', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1393, 4, 10, 'Semester', NULL, 'no', '2020-06-18 17:51:51', '0000-00-00 00:00:00'),
(1394, 4, 56, 'Semester List', NULL, 'no', '2020-06-18 17:52:54', '0000-00-00 00:00:00'),
(1395, 4, 451, 'Section Name', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1396, 4, 566, 'Semesters', NULL, 'no', '2020-06-18 17:51:52', '0000-00-00 00:00:00'),
(1397, 4, 407, 'Select', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1398, 4, 84, 'Select Criteria', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1399, 4, 293, 'Select CSV File', NULL, 'no', '2017-04-10 08:58:35', '0000-00-00 00:00:00'),
(1400, 4, 31, 'Select Image', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1401, 4, 68, 'Select Logo', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1402, 4, 266, 'Send', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1403, 4, 572, 'Send Message', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1404, 4, 1, 'Session', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1405, 4, 52, 'Session List', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1406, 4, 576, 'Session Setting', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1407, 4, 410, 'Session Start Month', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1408, 4, 517, 'Show', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1409, 4, 305, 'Sibling', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1411, 4, 152, 'Sign In', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1412, 4, 477, 'Smart School', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1413, 4, 76, 'SMS Configuration', NULL, 'no', '2017-04-10 08:59:11', '0000-00-00 00:00:00'),
(1414, 4, 77, 'SMS Gateway URL', NULL, 'no', '2017-05-19 22:47:13', '0000-00-00 00:00:00'),
(1415, 4, 476, 'SMS Setting', NULL, 'no', '2017-04-10 08:59:22', '0000-00-00 00:00:00'),
(1416, 4, 237, 'Start Time', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1417, 4, 78, 'Status', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1418, 4, 61, 'Student', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1419, 4, 550, 'Student Admission', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1420, 4, 560, 'Student Attendance', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1421, 4, 551, 'Student Categories', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1422, 4, 325, 'Student Detail', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1423, 4, 549, 'Student Details', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1424, 4, 322, 'Student Fees Report', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1425, 4, 207, 'Student Information', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1426, 4, 592, 'Students List', NULL, 'no', '2017-04-10 08:59:55', '0000-00-00 00:00:00'),
(1427, 4, 183, 'Student Name', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1428, 4, 573, 'Student Report', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1429, 4, 434, 'Students', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1430, 4, 568, 'Study Material', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1431, 4, 388, 'Study Material List', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1432, 4, 217, 'Subject', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1433, 4, 144, 'Subject Code', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1434, 4, 261, 'Subject List', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1435, 4, 143, 'Subject Name', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1436, 4, 521, 'Subject Type', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1437, 4, 483, 'Subjects', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1438, 4, 359, 'Submit', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1439, 4, 596, 'Syllabus', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1440, 4, 389, 'Syllabus List', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1441, 4, 215, 'System Settings', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1442, 4, 258, 'Teacher', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1443, 4, 260, 'Teacher Detail', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1444, 4, 251, 'Teacher List', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1445, 4, 166, 'Teacher Name', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1446, 4, 187, 'Teacher Photo', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1447, 4, 469, 'Teacher Subject', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1448, 4, 433, 'Teachers', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1449, 4, 541, 'Theory', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1450, 4, 264, 'Title', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1451, 4, 610, 'To', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1452, 4, 90, 'Total', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1453, 4, 182, 'Total Balance', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1454, 4, 323, 'Total Fees', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1455, 4, 301, 'Total Marks', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1456, 4, 180, 'Total Paid Fees', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1457, 4, 332, 'Total Transport Fees', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1458, 4, 609, 'Transaction From', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1459, 4, 574, 'Transaction Report', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1460, 4, 222, 'Transport', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1461, 4, 586, 'Transport - Routes', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1462, 4, 155, 'Transport Fees', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1463, 4, 318, 'Transport Fees Details', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1464, 4, 480, 'Transport Routes', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1465, 4, 536, 'Twilio Account SID', NULL, 'no', '2017-04-10 09:01:04', '0000-00-00 00:00:00'),
(1466, 4, 534, 'Twilio SMS Gateway', NULL, 'no', '2017-04-10 09:01:10', '0000-00-00 00:00:00'),
(1467, 4, 88, 'Type', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1468, 4, 599, 'Unpaid', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1469, 4, 490, 'Upload', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1470, 4, 378, 'Upload Content', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1471, 4, 205, 'Upload Date', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1472, 4, 268, 'Upload Documents', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1473, 4, 424, 'Upload From Local Directory', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1474, 4, 488, 'URL', NULL, 'no', '2017-04-10 09:01:27', '0000-00-00 00:00:00'),
(1475, 4, 478, 'User Login', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1476, 4, 74, 'User Name', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1477, 4, 589, 'User Type', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1478, 4, 539, 'Username', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1479, 4, 506, 'Vehicle', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1480, 4, 507, 'Vehicle List', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1481, 4, 513, 'Vehicle Model', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1482, 4, 512, 'Vehicle Number', NULL, 'no', '2017-05-20 02:42:56', '0000-00-00 00:00:00'),
(1483, 4, 502, 'Vehicle Route List', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1484, 4, 504, 'Vehicle Routes', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1485, 4, 570, 'Vehicles', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1486, 4, 474, 'View', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1487, 4, 522, 'View Detail', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1488, 4, 604, 'View Schedule', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1489, 4, 356, 'View Status', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1490, 4, 280, 'Visibility', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1491, 4, 279, 'Visible To All', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1492, 4, 515, 'Year Made', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1493, 4, 545, 'Yes', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1494, 4, 350, 'You Can Edit Record', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(36671, 4, 642, 'Accountant List', NULL, 'no', '2017-05-19 22:33:47', '0000-00-00 00:00:00'),
(36672, 4, 643, 'Accountant Photo', NULL, 'no', '2017-05-19 22:33:56', '0000-00-00 00:00:00'),
(36673, 4, 631, 'Accountants', NULL, 'no', '2017-05-19 22:34:03', '0000-00-00 00:00:00'),
(36674, 4, 641, 'Add Accountant', NULL, 'no', '2017-05-19 22:34:14', '0000-00-00 00:00:00'),
(36675, 4, 633, 'Add Librarian', NULL, 'no', '2017-05-19 22:34:40', '0000-00-00 00:00:00'),
(36677, 4, 649, 'Add Student', NULL, 'no', '2017-05-19 22:35:41', '0000-00-00 00:00:00'),
(36678, 4, 624, 'Book', NULL, 'no', '2017-05-19 22:36:04', '0000-00-00 00:00:00'),
(36679, 4, 629, 'Book Issued', NULL, 'no', '2017-05-19 22:36:13', '0000-00-00 00:00:00'),
(36680, 4, 645, 'Book Number', NULL, 'no', '2017-05-19 22:36:30', '0000-00-00 00:00:00'),
(36681, 4, 650, 'Books Issue Retun', NULL, 'no', '2017-05-19 22:36:49', '0000-00-00 00:00:00'),
(36682, 4, 640, 'Change Username', NULL, 'no', '2017-05-19 22:37:05', '0000-00-00 00:00:00'),
(36683, 4, 639, 'Confirm Username', NULL, 'no', '2017-05-19 22:37:39', '0000-00-00 00:00:00'),
(36684, 4, 637, 'Current Username', NULL, 'no', '2017-05-19 22:38:06', '0000-00-00 00:00:00'),
(36685, 4, 644, 'Edit Accountant', NULL, 'no', '2017-05-19 22:38:44', '0000-00-00 00:00:00'),
(36686, 4, 636, 'Edit Librarian', NULL, 'no', '2017-05-19 22:39:30', '0000-00-00 00:00:00'),
(36687, 4, 647, 'ISBN Number', NULL, 'no', '2017-05-19 22:40:25', '0000-00-00 00:00:00'),
(36688, 4, 623, 'Issue', NULL, 'no', '2017-05-19 22:40:30', '0000-00-00 00:00:00'),
(36689, 4, 621, 'Issue Book', NULL, 'no', '2017-05-19 22:40:40', '0000-00-00 00:00:00'),
(36690, 4, 648, 'Issue Return', NULL, 'no', '2017-05-19 23:35:21', '0000-00-00 00:00:00'),
(36691, 4, 635, 'Librarian List', NULL, 'no', '2017-05-19 22:41:31', '0000-00-00 00:00:00'),
(36692, 4, 634, 'Librarian Photo', NULL, 'no', '2017-05-19 22:41:38', '0000-00-00 00:00:00'),
(36696, 4, 626, 'Library Card Number', NULL, 'no', '2017-05-19 22:42:23', '0000-00-00 00:00:00'),
(36697, 4, 628, 'Member Id', NULL, 'no', '2017-05-19 22:42:53', '0000-00-00 00:00:00'),
(36698, 4, 622, 'Member Type', NULL, 'no', '2017-05-19 22:43:01', '0000-00-00 00:00:00'),
(36699, 4, 625, 'Members', NULL, 'no', '2017-05-19 22:43:06', '0000-00-00 00:00:00'),
(36700, 4, 638, 'New Username', NULL, 'no', '2017-05-19 22:43:23', '0000-00-00 00:00:00'),
(36701, 4, 627, 'Return Date', NULL, 'no', '2017-05-19 22:45:06', '0000-00-00 00:00:00'),
(36702, 4, 630, 'Timezone', NULL, 'no', '2017-05-19 22:47:48', '0000-00-00 00:00:00'),
(36703, 4, 646, 'Users', NULL, 'no', '2017-05-19 22:48:21', '0000-00-00 00:00:00'),
(73979, 4, 653, 'Surrender Membership', NULL, 'no', '2017-05-29 12:56:46', '0000-00-00 00:00:00'),
(73980, 4, 651, 'Members List', NULL, 'no', '2017-05-29 12:57:05', '0000-00-00 00:00:00'),
(73981, 4, 651, 'Members List', NULL, 'no', '2017-05-29 12:57:18', '0000-00-00 00:00:00'),
(73982, 4, 652, 'Issue Date', NULL, 'no', '2017-05-29 12:57:35', '0000-00-00 00:00:00'),
(73983, 4, 686, 'Add Admin User', NULL, 'no', '2017-08-04 13:21:48', '0000-00-00 00:00:00'),
(73984, 4, 663, 'Add Fees Discount', NULL, 'no', '2017-08-04 13:22:03', '0000-00-00 00:00:00'),
(73985, 4, 663, 'Add Fees Discount', NULL, 'no', '2017-08-04 13:22:05', '0000-00-00 00:00:00'),
(73986, 4, 655, 'Add Fees Group', NULL, 'no', '2017-08-04 13:22:13', '0000-00-00 00:00:00'),
(73987, 4, 676, 'Add Member', NULL, 'no', '2017-08-04 13:22:26', '0000-00-00 00:00:00'),
(73988, 4, 688, 'Admin Email', NULL, 'no', '2017-08-04 13:22:39', '0000-00-00 00:00:00'),
(73989, 4, 687, 'Admin Name', NULL, 'no', '2017-08-04 13:22:47', '0000-00-00 00:00:00'),
(73990, 4, 689, 'Admin Password', NULL, 'no', '2017-08-04 13:22:57', '0000-00-00 00:00:00'),
(73991, 4, 685, 'Admin Users', NULL, 'no', '2017-08-04 13:23:04', '0000-00-00 00:00:00'),
(73992, 4, 664, 'All', NULL, 'no', '2017-08-04 13:23:10', '0000-00-00 00:00:00'),
(73993, 4, 667, 'Applied', NULL, 'no', '2017-08-04 13:23:20', '0000-00-00 00:00:00'),
(73994, 4, 674, 'Apply Discount', NULL, 'no', '2017-08-04 13:23:30', '0000-00-00 00:00:00'),
(73995, 4, 670, 'Assign / View', NULL, 'no', '2017-08-04 13:23:46', '0000-00-00 00:00:00'),
(73996, 4, 665, 'Assign Fees Discount', NULL, 'no', '2017-08-04 13:23:56', '0000-00-00 00:00:00'),
(73997, 4, 691, 'Assign Fees Group', NULL, 'no', '2017-08-04 13:24:20', '0000-00-00 00:00:00'),
(73998, 4, 684, 'Assigned', NULL, 'no', '2017-08-04 13:24:30', '0000-00-00 00:00:00'),
(73999, 4, 669, 'Confirmation', NULL, 'no', '2017-08-04 13:24:42', '0000-00-00 00:00:00'),
(74000, 4, 669, 'Confirmation', NULL, 'no', '2017-08-04 13:24:53', '0000-00-00 00:00:00'),
(74001, 4, 661, 'Discount Code', NULL, 'no', '2017-08-04 13:25:04', '0000-00-00 00:00:00'),
(74002, 4, 675, 'Discount of', NULL, 'no', '2017-08-04 13:25:19', '0000-00-00 00:00:00'),
(74003, 4, 657, 'Due Date', NULL, 'no', '2017-08-04 13:25:27', '0000-00-00 00:00:00'),
(74004, 4, 660, 'Edit Fees Discount', NULL, 'no', '2017-08-04 13:25:40', '0000-00-00 00:00:00'),
(74005, 4, 671, 'Edit Fees Group', NULL, 'no', '2017-08-04 13:25:48', '0000-00-00 00:00:00'),
(74006, 4, 673, 'Edit Fees Master', NULL, 'no', '2017-08-04 13:25:57', '0000-00-00 00:00:00'),
(74007, 4, 672, 'Edit Fees Type', NULL, 'no', '2017-08-04 13:26:09', '0000-00-00 00:00:00'),
(74008, 4, 678, 'Email Engine', NULL, 'no', '2017-08-04 13:26:20', '0000-00-00 00:00:00'),
(74009, 4, 677, 'Email Setting', NULL, 'no', '2017-08-04 13:26:32', '0000-00-00 00:00:00'),
(74010, 4, 658, 'Fees Code', NULL, 'no', '2017-08-04 13:26:42', '0000-00-00 00:00:00'),
(74011, 4, 659, 'Fees Discount', NULL, 'no', '2017-08-04 13:26:58', '0000-00-00 00:00:00'),
(74012, 4, 662, 'Fees Discount List', NULL, 'no', '2017-08-04 13:27:09', '0000-00-00 00:00:00'),
(74013, 4, 654, 'Fees Group', NULL, 'no', '2017-08-04 13:27:17', '0000-00-00 00:00:00'),
(74014, 4, 656, 'Fees Group List', NULL, 'no', '2017-08-04 13:27:25', '0000-00-00 00:00:00'),
(74015, 4, 690, 'Forgot Password', NULL, 'no', '2017-08-04 13:27:36', '0000-00-00 00:00:00'),
(74016, 4, 666, 'Partial', NULL, 'no', '2017-08-04 13:27:49', '0000-00-00 00:00:00'),
(74017, 4, 680, 'SMTP Password', NULL, 'no', '2017-08-04 13:28:04', '0000-00-00 00:00:00'),
(74018, 4, 682, 'SMTP Port', NULL, 'no', '2017-08-04 13:28:12', '0000-00-00 00:00:00'),
(74019, 4, 683, 'SMTP Security', NULL, 'no', '2017-08-04 13:28:27', '0000-00-00 00:00:00'),
(74020, 4, 681, 'SMTP Server', NULL, 'no', '2017-08-04 13:28:35', '0000-00-00 00:00:00'),
(74021, 4, 679, 'SMTP Username', NULL, 'no', '2017-08-04 13:28:43', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES
(74022, 4, 668, 'Student Fees', NULL, 'no', '2017-08-04 13:28:51', '0000-00-00 00:00:00'),
(74023, 4, 692, 'Accountant', NULL, 'no', '2017-10-31 09:10:23', '0000-00-00 00:00:00'),
(74024, 4, 693, 'Add Income', NULL, 'no', '2017-10-31 09:10:40', '0000-00-00 00:00:00'),
(74025, 4, 732, 'Add Item Supplier', NULL, 'no', '2017-12-14 11:45:30', '0000-00-00 00:00:00'),
(74026, 4, 731, 'Add Item Stock', NULL, 'no', '2017-12-14 11:45:20', '0000-00-00 00:00:00'),
(74027, 4, 733, 'Available Quantity', NULL, 'no', '2017-12-14 11:49:22', '0000-00-00 00:00:00'),
(74028, 4, 694, 'Add Item Store', NULL, 'no', '2017-10-31 09:44:42', '0000-00-00 00:00:00'),
(74029, 4, 734, 'Contact Person Phone', NULL, 'no', '2017-10-31 09:44:52', '0000-00-00 00:00:00'),
(74030, 4, 695, 'Admin', NULL, 'no', '2017-10-31 09:45:16', '0000-00-00 00:00:00'),
(74031, 4, 696, 'Attach Docement', NULL, 'no', '2017-10-31 09:45:45', '0000-00-00 00:00:00'),
(74032, 4, 696, 'Attach Document', NULL, 'no', '2017-10-31 09:45:52', '0000-00-00 00:00:00'),
(74033, 4, 696, 'Attach Document', NULL, 'no', '2017-10-31 09:46:10', '0000-00-00 00:00:00'),
(74034, 4, 750, 'Current Theme', NULL, 'no', '2017-12-14 11:52:34', '0000-00-00 00:00:00'),
(74035, 4, 735, 'Edit Item Supplier', NULL, 'no', '2017-12-14 11:53:52', '0000-00-00 00:00:00'),
(74036, 4, 748, 'Send Through', NULL, 'no', '2017-12-14 12:33:14', '0000-00-00 00:00:00'),
(74037, 4, 698, 'Contact Person Email', NULL, 'no', '2017-10-31 09:47:12', '0000-00-00 00:00:00'),
(74038, 4, 699, 'Contact Person Name', NULL, 'no', '2017-10-31 09:47:26', '0000-00-00 00:00:00'),
(74039, 4, 736, 'Edit Item', NULL, 'no', '2017-12-14 11:53:35', '0000-00-00 00:00:00'),
(74040, 4, 751, 'Guardian Emal', NULL, 'no', '2017-12-14 11:59:33', '0000-00-00 00:00:00'),
(74041, 4, 700, 'Edit Income Head', NULL, 'no', '2017-10-31 09:48:04', '0000-00-00 00:00:00'),
(74042, 4, 738, 'Expense Details', NULL, 'no', '2017-12-14 11:57:52', '0000-00-00 00:00:00'),
(74043, 4, 702, 'Edit Item Category', NULL, 'no', '2017-10-31 09:48:20', '0000-00-00 00:00:00'),
(74044, 4, 701, 'Edit Item Store', NULL, 'no', '2017-10-31 09:48:29', '0000-00-00 00:00:00'),
(74045, 4, 737, 'Edit Income', NULL, 'no', '2017-12-14 11:54:17', '0000-00-00 00:00:00'),
(74046, 4, 703, 'Group', NULL, 'no', '2017-12-14 11:59:19', '0000-00-00 00:00:00'),
(74047, 4, 704, 'Guardians', NULL, 'no', '2017-12-14 11:59:53', '0000-00-00 00:00:00'),
(74048, 4, 752, 'Hash Key', NULL, 'no', '2017-12-14 12:00:04', '0000-00-00 00:00:00'),
(74049, 4, 705, 'Income Head List', NULL, 'no', '2017-12-14 12:01:36', '0000-00-00 00:00:00'),
(74050, 4, 753, 'Income List', NULL, 'no', '2017-12-14 12:02:19', '0000-00-00 00:00:00'),
(74051, 4, 708, 'Individual', NULL, 'no', '2017-12-14 12:03:41', '0000-00-00 00:00:00'),
(74052, 4, 740, 'Income Id', NULL, 'no', '2017-12-14 12:02:05', '0000-00-00 00:00:00'),
(74053, 4, 707, 'Income', NULL, 'no', '2017-12-14 12:01:27', '0000-00-00 00:00:00'),
(74054, 4, 706, 'Income Head', NULL, 'no', '2017-12-14 12:01:21', '0000-00-00 00:00:00'),
(74055, 4, 741, 'Income Result', NULL, 'no', '2017-12-14 12:02:50', '0000-00-00 00:00:00'),
(74056, 4, 754, 'Income Result', NULL, 'no', '2017-12-14 12:03:03', '0000-00-00 00:00:00'),
(74057, 4, 742, 'Issued By', NULL, 'no', '2017-12-14 12:15:24', '0000-00-00 00:00:00'),
(74058, 4, 755, 'Income Search', NULL, 'no', '2017-12-14 12:03:30', '0000-00-00 00:00:00'),
(74059, 4, 756, 'MSG91', NULL, 'no', '2017-12-14 12:25:55', '0000-00-00 00:00:00'),
(74060, 4, 709, 'Inventory', NULL, 'no', '2017-12-14 12:49:15', '0000-00-00 00:00:00'),
(74061, 4, 710, 'Issue By', NULL, 'no', '2017-12-14 12:04:36', '0000-00-00 00:00:00'),
(74062, 4, 765, 'Payment Methods', NULL, 'no', '2017-12-14 12:28:01', '0000-00-00 00:00:00'),
(74063, 4, 711, 'Issue To', NULL, 'no', '2017-12-14 12:04:55', '0000-00-00 00:00:00'),
(74064, 4, 713, 'Item Store', NULL, 'no', '2017-12-14 12:20:06', '0000-00-00 00:00:00'),
(74065, 4, 712, 'Issue Item', NULL, 'no', '2017-12-14 12:04:47', '0000-00-00 00:00:00'),
(74066, 4, 743, 'Item Category List', NULL, 'no', '2017-12-14 12:19:16', '0000-00-00 00:00:00'),
(74067, 4, 716, 'Item Stock List', NULL, 'no', '2017-12-14 12:19:00', '0000-00-00 00:00:00'),
(74068, 4, 715, 'Item', NULL, 'no', '2017-12-14 12:15:48', '0000-00-00 00:00:00'),
(74069, 4, 744, 'Item List', NULL, 'no', '2017-12-14 12:19:49', '0000-00-00 00:00:00'),
(74070, 4, 745, 'Item Store List', NULL, 'no', '2017-12-14 12:20:24', '0000-00-00 00:00:00'),
(74071, 4, 717, 'Item Stock Code', NULL, 'no', '2017-12-14 12:20:13', '0000-00-00 00:00:00'),
(74072, 4, 714, 'Item Category', NULL, 'no', '2017-12-14 12:19:39', '0000-00-00 00:00:00'),
(74073, 4, 718, 'Item Store Name', NULL, 'no', '2017-12-14 12:20:30', '0000-00-00 00:00:00'),
(74074, 4, 746, 'Item Supplier', NULL, 'no', '2017-12-14 12:20:41', '0000-00-00 00:00:00'),
(74075, 4, 719, 'Item Supplier List', NULL, 'no', '2017-12-14 12:21:00', '0000-00-00 00:00:00'),
(74076, 4, 747, 'Contact Person', NULL, 'no', '2017-12-14 11:50:53', '0000-00-00 00:00:00'),
(74077, 4, 720, 'Librarian', NULL, 'no', '2017-12-14 12:21:17', '0000-00-00 00:00:00'),
(74078, 4, 721, 'Quantity', NULL, 'no', '2017-12-14 12:29:46', '0000-00-00 00:00:00'),
(74079, 4, 632, 'Librarians', NULL, 'no', '2017-10-31 09:55:12', '0000-00-00 00:00:00'),
(74080, 4, 757, 'Notification Setting', NULL, 'no', '2017-12-14 12:27:15', '0000-00-00 00:00:00'),
(74081, 4, 757, 'Notification Setting', NULL, 'no', '2017-12-14 12:27:29', '0000-00-00 00:00:00'),
(74082, 4, 723, 'Return', NULL, 'no', '2017-12-14 12:31:11', '0000-00-00 00:00:00'),
(74083, 4, 724, 'Returned', NULL, 'no', '2017-12-14 12:31:23', '0000-00-00 00:00:00'),
(74084, 4, 725, 'Search Income', NULL, 'no', '2017-12-14 12:32:24', '0000-00-00 00:00:00'),
(74085, 4, 764, 'Email / SMS Log', NULL, 'no', '2017-12-14 11:56:52', '0000-00-00 00:00:00'),
(74086, 4, 763, 'Email / SMS', NULL, 'no', '2017-12-14 11:56:19', '0000-00-00 00:00:00'),
(74087, 4, 727, 'Store', NULL, 'no', '2017-12-14 12:34:11', '0000-00-00 00:00:00'),
(74088, 4, 749, 'Auth Key', NULL, 'no', '2017-12-14 11:48:27', '0000-00-00 00:00:00'),
(74089, 4, 759, 'SMS Country', NULL, 'no', '2017-12-14 12:33:50', '0000-00-00 00:00:00'),
(74090, 4, 728, 'Supplier', NULL, 'no', '2017-12-14 12:35:11', '0000-00-00 00:00:00'),
(74091, 4, 760, 'Test Local', NULL, 'no', '2017-12-14 12:35:44', '0000-00-00 00:00:00'),
(74092, 4, 730, 'Add Item', NULL, 'no', '2017-12-14 11:44:19', '0000-00-00 00:00:00'),
(74093, 4, 761, 'User Log', NULL, 'no', '2017-12-14 12:36:49', '0000-00-00 00:00:00'),
(74094, 4, 761, 'User Log', NULL, 'no', '2017-12-14 12:37:02', '0000-00-00 00:00:00'),
(74095, 4, 767, 'Stripe API Secret Key', NULL, 'no', '2017-12-14 12:34:28', '0000-00-00 00:00:00'),
(74096, 4, 762, 'Send Email / SMS', NULL, 'no', '2017-12-14 12:33:03', '0000-00-00 00:00:00'),
(74097, 4, 697, 'Confirm Return', NULL, 'no', '2017-10-31 10:01:22', '0000-00-00 00:00:00'),
(74098, 4, 739, 'Income Details', NULL, 'no', '2017-12-14 12:01:47', '0000-00-00 00:00:00'),
(74099, 4, 766, 'All Users', NULL, 'no', '2017-12-14 11:47:37', '0000-00-00 00:00:00'),
(74100, 4, 758, 'Sender ID', NULL, 'no', '2017-12-14 12:33:25', '0000-00-00 00:00:00'),
(74101, 4, 722, 'Reset Password', NULL, 'no', '2017-12-14 12:30:10', '0000-00-00 00:00:00'),
(74102, 4, 726, 'SMS', NULL, 'no', '2017-12-14 12:33:41', '0000-00-00 00:00:00'),
(74103, 4, 729, 'Add Item Category', NULL, 'no', '2017-12-14 11:44:42', '0000-00-00 00:00:00'),
(74104, 4, 768, 'Stripe Publishable Key', NULL, 'no', '2017-12-14 12:34:44', '0000-00-00 00:00:00'),
(74105, 4, 769, 'PayU Money Key', NULL, 'no', '2017-12-14 12:28:39', '0000-00-00 00:00:00'),
(74106, 4, 776, 'Absent Student', NULL, 'no', '2017-12-14 11:43:20', '0000-00-00 00:00:00'),
(74107, 4, 782, 'Click To Return', NULL, 'no', '2017-12-14 11:50:36', '0000-00-00 00:00:00'),
(74108, 4, 774, 'Exam Result', NULL, 'no', '2017-12-14 11:57:34', '0000-00-00 00:00:00'),
(74109, 4, 775, 'Fees Submission', NULL, 'no', '2017-12-14 11:58:38', '0000-00-00 00:00:00'),
(74110, 4, 779, 'IP Address', NULL, 'no', '2017-12-14 12:03:51', '0000-00-00 00:00:00'),
(74111, 4, 779, 'IP Address', NULL, 'no', '2017-12-14 12:04:16', '0000-00-00 00:00:00'),
(74112, 4, 777, 'Login Credential', NULL, 'no', '2017-12-14 12:21:47', '0000-00-00 00:00:00'),
(74113, 4, 780, 'Login Time', NULL, 'no', '2017-12-14 12:21:56', '0000-00-00 00:00:00'),
(74114, 4, 771, 'CCAvenue Merchant ID', NULL, 'no', '2017-12-14 12:54:55', '0000-00-00 00:00:00'),
(74115, 4, 770, 'PayU Money Salt', NULL, 'no', '2017-12-14 12:29:10', '0000-00-00 00:00:00'),
(74116, 4, 778, 'Role', NULL, 'no', '2017-12-14 12:31:40', '0000-00-00 00:00:00'),
(74117, 4, 773, 'Select Payment Gateway', NULL, 'no', '2017-12-14 12:32:49', '0000-00-00 00:00:00'),
(74118, 4, 781, 'User Agent', NULL, 'no', '2017-12-14 12:36:42', '0000-00-00 00:00:00'),
(74119, 4, 772, 'CCAvenue Working Key', NULL, 'no', '2017-12-14 12:55:13', '0000-00-00 00:00:00'),
(74120, 4, 783, 'Part', NULL, 'no', '2020-06-18 18:14:28', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `libarary_members`
--

CREATE TABLE IF NOT EXISTS `libarary_members` (
  `id` int(11) unsigned NOT NULL,
  `library_card_no` varchar(50) DEFAULT NULL,
  `member_type` varchar(50) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `librarians`
--

CREATE TABLE IF NOT EXISTS `librarians` (
  `id` int(11) unsigned NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `address` text,
  `dob` date DEFAULT NULL,
  `designation` varchar(50) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `librarians`
--

INSERT INTO `librarians` (`id`, `name`, `email`, `password`, `address`, `dob`, `designation`, `sex`, `phone`, `image`, `is_active`, `created_at`) VALUES
(2, 'saleem', 'saleemakhtar@smil.edu.pk', NULL, '', '1993-01-01', NULL, 'Male', '03033500261', 'uploads/student_images/no_image.png', 'no', '2020-06-27 09:48:56');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(11) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `message` text,
  `send_mail` varchar(10) DEFAULT '0',
  `send_sms` varchar(10) DEFAULT '0',
  `is_group` varchar(10) DEFAULT '0',
  `is_individual` varchar(10) DEFAULT '0',
  `is_class` int(10) NOT NULL DEFAULT '0',
  `group_list` text,
  `user_list` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`version`) VALUES
(124);

-- --------------------------------------------------------

--
-- Table structure for table `notification_setting`
--

CREATE TABLE IF NOT EXISTS `notification_setting` (
  `id` int(11) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `is_mail` varchar(10) DEFAULT '0',
  `is_sms` varchar(10) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notification_setting`
--

INSERT INTO `notification_setting` (`id`, `type`, `is_mail`, `is_sms`, `created_at`) VALUES
(5, 'student_admission', '1', '1', '2019-03-07 19:40:58'),
(6, 'exam_result', '1', '1', '2019-03-07 19:40:58'),
(7, 'fee_submission', '1', '1', '2019-03-07 19:40:58'),
(8, 'absent_attendence', '1', '1', '2019-03-07 19:40:58'),
(9, 'login_credential', '1', '1', '2019-03-07 19:40:58');

-- --------------------------------------------------------

--
-- Table structure for table `payment_settings`
--

CREATE TABLE IF NOT EXISTS `payment_settings` (
  `id` int(11) NOT NULL,
  `payment_type` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `api_username` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_secret_key` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `salt` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `api_publishable_key` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `api_password` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_signature` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_email` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paypal_demo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `account_no` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `read_notification`
--

CREATE TABLE IF NOT EXISTS `read_notification` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `parent_id` int(10) NOT NULL,
  `notification_id` int(11) DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `room_types`
--

CREATE TABLE IF NOT EXISTS `room_types` (
  `id` int(11) NOT NULL,
  `room_type` varchar(200) DEFAULT NULL,
  `description` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sch_settings`
--

CREATE TABLE IF NOT EXISTS `sch_settings` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `lang_id` int(11) DEFAULT NULL,
  `dise_code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_format` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `currency` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `currency_symbol` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `is_rtl` varchar(10) COLLATE utf8_unicode_ci DEFAULT 'disabled',
  `timezone` varchar(30) COLLATE utf8_unicode_ci DEFAULT 'UTC',
  `session_id` int(11) DEFAULT NULL,
  `start_month` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `theme` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default.jpg',
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sch_settings`
--

INSERT INTO `sch_settings` (`id`, `name`, `email`, `phone`, `address`, `lang_id`, `dise_code`, `date_format`, `currency`, `currency_symbol`, `is_rtl`, `timezone`, `session_id`, `start_month`, `image`, `theme`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'SINDH MEHRAN INSTITUTE OF LAW JAMSHORO', 'smiljamshoro@gmail.com', '0222115786------03161329134', 'Bungalow # A97 Sindh University Employees Co-oprative Housing Society Jamshoro Sindh.', 4, 'Jamshoro Branch', 'd/m/Y', 'PKR', 'Rs:', 'disabled', 'Asia/Karachi', 14, '1', '1.jpeg', 'blue.jpg', 'no', '2020-07-07 12:35:56', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE IF NOT EXISTS `sections` (
  `id` int(11) NOT NULL,
  `section` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `section`, `is_active`, `created_at`, `updated_at`) VALUES
(11, '1st Semester', 'no', '2020-06-27 08:50:25', '0000-00-00 00:00:00'),
(12, '2nd Semester', 'no', '2020-06-27 08:50:32', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `semesters`
--

CREATE TABLE IF NOT EXISTS `semesters` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `semesters`
--

INSERT INTO `semesters` (`id`, `name`, `is_active`, `created_at`, `updated_at`) VALUES
(3, 'Semester one', 'no', '2020-06-15 17:10:36', '0000-00-00 00:00:00'),
(4, 'Semester Two', 'no', '2020-06-15 17:10:44', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `send_notification`
--

CREATE TABLE IF NOT EXISTS `send_notification` (
  `id` int(11) NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `date` date DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `visible_student` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `visible_teacher` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `visible_parent` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `created_by` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `send_notification`
--

INSERT INTO `send_notification` (`id`, `title`, `publish_date`, `date`, `message`, `visible_student`, `visible_teacher`, `visible_parent`, `created_by`, `created_id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'FEE DUES', '2020-06-29', '2020-06-29', '<p>PAY YOUR FEE DUES AS SOON AS POSSIBLE</p>', 'Yes', 'Yes', 'Yes', 'admin', 1, 'no', '2020-06-30 17:00:11', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE IF NOT EXISTS `sessions` (
  `id` int(11) NOT NULL,
  `session` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `session`, `is_active`, `created_at`, `updated_at`) VALUES
(11, '2017-18', 'no', '2019-03-07 19:40:28', '0000-00-00 00:00:00'),
(13, '2018-19', 'no', '2016-08-25 00:56:44', '0000-00-00 00:00:00'),
(14, '2019-20', 'no', '2016-08-25 00:56:55', '0000-00-00 00:00:00'),
(15, '2020-21', 'no', '2016-10-01 10:58:08', '0000-00-00 00:00:00'),
(16, '2021-22', 'no', '2016-10-01 10:58:20', '0000-00-00 00:00:00'),
(18, '2022-23', 'no', '2016-10-01 10:59:02', '0000-00-00 00:00:00'),
(19, '2023-24', 'no', '2016-10-01 10:59:10', '0000-00-00 00:00:00'),
(20, '2024-25', 'no', '2016-10-01 10:59:18', '0000-00-00 00:00:00'),
(21, '2025-26', 'no', '2016-10-01 11:00:10', '0000-00-00 00:00:00'),
(22, '2026-27', 'no', '2016-10-01 11:00:18', '0000-00-00 00:00:00'),
(23, '2027-28', 'no', '2016-10-01 11:00:24', '0000-00-00 00:00:00'),
(24, '2028-29', 'no', '2016-10-01 11:00:30', '0000-00-00 00:00:00'),
(25, '2029-30', 'no', '2020-07-07 19:15:39', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `sms_config`
--

CREATE TABLE IF NOT EXISTS `sms_config` (
  `id` int(11) NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `api_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `authkey` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `senderid` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `contact` text COLLATE utf8_unicode_ci,
  `username` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'disabled',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sms_config`
--

INSERT INTO `sms_config` (`id`, `type`, `name`, `api_id`, `authkey`, `senderid`, `contact`, `username`, `url`, `password`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'msg_nineone', '', '', '', '', NULL, NULL, NULL, NULL, 'disabled', '2017-12-15 16:08:36', '0000-00-00 00:00:00'),
(2, 'clickatell', '', '', '', '', NULL, '', NULL, '', 'disabled', '2017-12-15 16:08:36', '0000-00-00 00:00:00'),
(3, 'smscountry', '', '', '', '', NULL, '', NULL, '', 'disabled', '2017-12-15 16:08:36', '0000-00-00 00:00:00'),
(4, 'text_local', '', '', '', '', NULL, '', NULL, '', 'disabled', '2017-12-15 16:08:36', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `id` int(11) NOT NULL,
  `admission_no` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `roll_no` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admission_date` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rte` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No',
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobileno` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pincode` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `religion` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cast` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dob` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `current_address` text COLLATE utf8_unicode_ci,
  `permanent_address` text COLLATE utf8_unicode_ci,
  `category_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adhar_no` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `samagra_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_account_no` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ifsc_code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guardian_is` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `father_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `father_phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `father_occupation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mother_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mother_phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mother_occupation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guardian_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guardian_relation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guardian_phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guardian_occupation` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `guardian_address` text COLLATE utf8_unicode_ci,
  `guardian_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `previous_school` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES
(1, '01', '2K18/LLB/01', '2018-01-15', 'Allah', 'Dino', 'No', 'uploads/student_images/1.jpg', '03041316054', '', NULL, NULL, NULL, 'ISLAM', 'MEERANI', '1999-01-02', 'Male', 'H# 9-A Naqash villas phase II, Qasimabad Hyderabad.', '', '', '4120595538979', '', '', '', '', 'father', 'MUHAMMAD DAUD', '03013519459', '', '', '', '', 'MUHAMMAD DAUD', 'Father', '03013519459', '', 'H# 9-A Naqash villas phase II, Qasimabad Hyderabad.', '', 'no', '', '2019-03-08 10:45:59', '0000-00-00 00:00:00'),
(2, '02', '2K18/LLB/02', '2018-01-15', 'Waleed', 'Khan', 'No', 'uploads/student_images/2.jpg', '03116300900', '', NULL, NULL, NULL, 'Islam', 'Pathan', '2000-04-18', 'Male', 'B#: A356 S.U.E.C.H,S phase I Jamshoro.', '', '', '', '', '', '', '', 'father', 'Nisar Ahmed', '03342929465', 'Private Job', '', '', '', 'Nisar Ahmed', 'Father', '03342929465', 'Private Job', '', '', 'no', '', '2019-03-08 08:23:17', '0000-00-00 00:00:00'),
(3, '03', '03', '2018-01-17', 'Mohsin', 'Hussain', 'No', 'uploads/student_images/no_image.png', '03169687606', '', NULL, NULL, NULL, 'Islam', 'Leekhi', '2000-02-18', 'Male', 'village Khan Muhammad Leekhi P.O Bahawal Zaunr via Phulei Hyderabad', 'village Khan Muhammad Leekhi P.O Bahawal Zaunr via Phulei Hyderabad', '', '', '', '', '', '', 'father', 'Hussain Leekhi', '03032738121', 'Teacher ', '', '', '', 'Hussain Leekhi', 'Father', '03032738121', 'Teacher ', '', '', 'no', '', '2019-03-08 08:35:52', '0000-00-00 00:00:00'),
(4, '04', '04', '2018-01-15', 'Urooj', 'Lashari', 'No', 'uploads/student_images/4.jpg', '03163132373', 'Uroojlashari767@gmail.com', NULL, NULL, NULL, 'Islam', 'Lashari', '1999-02-10', 'Female', 'Murk Villa Phase -I S.U.E.C.H.S Jamshoro ', 'Murk Villa Phase -I S.U.E.C.H.S Jamshoro ', '', '', '', '', '', '', 'other', 'Ghulam Hussain', '', 'Deciesed', '', '', '', 'Dr. Aslam Pervez Memon', 'As Guardian', '03073089088', 'Professor ', 'Murk Villa Phase -I S.U.E.C.H.S Jamshoro ', '', 'no', '', '2019-03-08 08:49:04', '0000-00-00 00:00:00'),
(5, '05', '2K18/LLB/05', '2018-01-15', 'Talat', 'Hussain', 'No', 'uploads/student_images/5.jpg', '03063691228', '', NULL, NULL, NULL, 'Islam', 'Behrani', '2000-01-01', 'Male', 'Lal faqeer Behrani Quba stop Tando Allayar', '', '', '', '', '', '', '', 'father', 'Talib Behrani', '03002724708', 'LAB Assistance ', '', '', '', 'Talib Behrani', 'Father', '03002724708', 'LAB Assistance ', '', '', 'no', '', '2019-03-08 09:09:41', '0000-00-00 00:00:00'),
(6, '06', '2K18/LLB/06', '2018-01-18', 'Hamza', 'Ali', 'No', 'uploads/student_images/6.jpg', '0303193652', '', NULL, NULL, NULL, 'Islam', 'Sabzoi', '2000-01-01', 'Male', 'Jazz Office Opposite Honda Showroom Near Anaj Mandi Kandhkot Kashmor', 'Village Muhammad Ramzan Sabzoi Kandhkot, Kashmor', '', '', '', '', '', '', 'father', 'Muhammad Ali', '03003193181', 'Farmer ', '', '', '', 'Muhammad Ali', 'Father', '03003193181', 'Farmer ', 'Village Muhammad Ramzan Sabzoi Kandhkot, Kashmor', '', 'no', '', '2019-03-08 09:22:05', '0000-00-00 00:00:00'),
(7, '07', '2K18/LLB/07', '2018-01-18', 'Bilawal', 'Ali', 'No', 'uploads/student_images/7.jpg', '03483938823', '', NULL, NULL, NULL, 'Islam', 'Chhachhar', '1996-07-27', 'Male', 'Village Wada Chhachhar Taluka Manjhand U/C Aamri Distt: Jamshoro', 'Village Wada Chhachhar Taluka Manjhand U/C Aamri Distt: Jamshoro', '', '', '', '', '', '', 'father', 'Hussain Bux', '03456089737', 'Farmer', '', '', '', 'Hussain Bux', 'Father', '03456089737', 'Farmer', 'Village Wada Chhachhar Taluka Manjhand U/C Aamri Distt: Jamshoro', '', 'no', '', '2019-03-08 09:30:14', '0000-00-00 00:00:00'),
(8, '08', '2K18/LLB/08', '2018-01-22', 'Abul', 'Hassan', 'No', 'uploads/student_images/8.jpg', '03163699011', '', NULL, NULL, NULL, 'Islam', 'Chandio', '1998-03-26', 'Male', 'House# 1 Lakho Faqeer Sandos Road Jamshoro ', 'House# 1 Lakho Faqeer Sandos Road Jamshoro ', '', '', '', '', '', '', 'father', 'Sakhawat Ali', '03013567498', 'Police Department', '', '', '', 'Sakhawat Ali', 'Father', '03013567498', 'Police Department', 'House# 1 Lakho Faqeer Sandos Road Jamshoro ', '', 'no', '', '2019-03-08 09:37:26', '0000-00-00 00:00:00'),
(9, '09', '2K18/LLB/09', '2018-01-19', 'Muhammad', 'Hasnian', 'No', 'uploads/student_images/no_image.png', '03121334918', '', NULL, NULL, NULL, 'Islam', 'Abbasi', '1998-01-15', 'Male', 'Near Garib Nawaz Masjid House# 37 Mohlla Mir Ka Palot Mirpurkhas', 'Near Garib Nawaz Masjid House# 37 Mohlla Mir Ka Palot Mirpurkhas', '', '', '', '', '', '', 'father', 'Jawaid Iqbal', '03123390436', 'Police Constable', '', '', '', 'Jawaid Iqbal', 'Father', '03123390436', 'Police Constable', 'Near Garib Nawaz Masjid House# 37 Mohlla Mir Ka Palot Mirpurkhas', '', 'no', '', '2019-03-08 10:03:38', '0000-00-00 00:00:00'),
(10, '838343', '01', '2019-08-02', 'Imran', 'Khan', 'No', 'uploads/student_images/no_image.png', '0343454653', 'xyz@gmail.com', NULL, NULL, NULL, 'Islam', 'Pathan', '1996-01-01', 'Male', 'Peshawar', '', '1', '', '', '', '', '', 'father', 'Khanwar', '0324545456', 'Government', 'Bibi Sheri', '0343123342', 'house wife', 'Khanwar', 'Father', '0324545456', 'Government', '', 'khanwar@gmail.com', 'no', '', '2019-08-02 12:55:04', '0000-00-00 00:00:00'),
(11, '123456789', '01', '2019-08-02', 'Imran', 'Khan', 'No', 'uploads/student_images/no_image.png', '0343454653', 'xyz@gmail.com', NULL, NULL, NULL, 'Islam', 'Pathan', '1996-01-01', 'Male', 'Peshawar', '', '1', '', '', '', '', '', 'father', 'Khanwar', '0324545456', 'Government', 'Bibi Sheri', '0343123342', 'house wife', 'Khanwar', 'Father', '0324545456', 'Government', '', 'khanwar@gmail.com', 'no', '', '2019-08-02 12:56:04', '0000-00-00 00:00:00'),
(12, '12', '84', '2019-08-02', 'farzan', 'ahmed', 'No', 'uploads/student_images/no_image.png', '03327094840', 'syedfarzanahmed.syed@gmail.com', NULL, NULL, NULL, 'islam', 'syed', '1996-07-27', 'Male', '', '', '1', '', '', '', '', '', 'father', 'altaf', '4343434', 'govt', 'ibne adam', '342442424', 'at home', 'ahmed', 'Father', '090909', 'govt employe', 'house no 286 /c', 'syedfarzaabsjdkndjandjan.com', 'no', '', '2019-08-02 13:18:33', '0000-00-00 00:00:00'),
(13, '6465', '5123', '2019-11-02', 'kashif', 'shah', 'No', 'uploads/student_images/13.png', '03323591099', 'zubair.shaikh2004@gmail.com', NULL, NULL, NULL, 'islam', 'shah', '1990-02-06', 'Male', '', '', '', '', '', '', '', '', 'father', 'subway', '0223821470', 'shop', '', '', '', 'subway', 'Father', '0223821470', 'shop', '', '', 'no', '', '2019-11-02 15:43:06', '0000-00-00 00:00:00'),
(14, 'saba naz', '08', '2019-11-02', 'saba', 'naz', 'No', 'uploads/student_images/no_image.png', '03453588874', '', NULL, NULL, NULL, 'tytry', 'FGUTFU', '1996-03-25', 'Female', '', '', '1', '', '', '', '', '', 'father', 'Abdul Shakoor', '03473100796', 'S', '', '', '', 'Abdul Shakoor', 'Father', '03473100796', 'S', '', '', 'no', '', '2019-11-02 15:52:17', '0000-00-00 00:00:00'),
(15, 'asdfgh', '07', '2019-11-02', 'jggjgy', 'uiyihnffj', 'Yes', 'uploads/student_images/no_image.png', '034567654355', '', NULL, NULL, NULL, 'islam', 'shah', '2019-10-29', 'Male', '', '', '2', '', '', '', '', '', 'father', 'khkhjkhfhk', '03015436543', '', '', '', '', 'khkhjkhfhk', 'Father', '03015436543', '', '', '', 'no', '', '2019-11-02 16:05:29', '0000-00-00 00:00:00'),
(16, 'lkjhgfd', '06', '2019-11-21', 'fgtyueoo', 'njhgyfui', 'Yes', 'uploads/student_images/no_image.png', '03115436547', '', NULL, NULL, NULL, 'islam', 'jhugh', '2018-05-28', 'Female', '', '', '1', '', '', '', '', '', 'father', 'lkoijuhygt', '8765432345678', '', '', '', '', 'lkoijuhygt', 'Father', '8765432345678', '', '', '', 'no', '', '2019-11-02 16:07:52', '0000-00-00 00:00:00'),
(17, 'kashif', '05', '2019-11-02', 'gjklj;oeurru', 'nbjvjjkhkh', 'Yes', 'uploads/student_images/no_image.png', '098765487654', '', NULL, NULL, NULL, 'islam', 'shjgjk', '2019-11-27', 'Male', '', '', '1', '', '', '', '', '', 'father', 'sdhhafhkiutegy', '030456787656', '', '', '', '', 'sdhhafhkiutegy', 'Father', '030456787656', '', '', '', 'no', '', '2019-11-02 16:12:38', '0000-00-00 00:00:00'),
(18, '266', '012', '2019-12-31', 'salman', 's', 'No', 'uploads/student_images/no_image.png', '03213029640', 'Admin@cappp.com', NULL, NULL, NULL, 'islam', 'dfgdf', '2020-01-07', 'Male', '', '', '1', '', '', '', '', '', 'other', 'dgdfg', '03213069876', '', '', '', '', 'sdt t', '', '0322187456', '', '', '', 'no', '', '2020-01-30 13:11:40', '0000-00-00 00:00:00'),
(19, '2245', '25', '2020-06-15', 'Khalid', 'ali', 'No', 'uploads/student_images/no_image.png', '2153315', 'asadsubuser@yopmail.com', NULL, NULL, NULL, 'islam', 'ansari', '2020-06-23', 'Male', '', '', '3', '', '', '', '', '', 'father', 'khila', '115331', 'khila', 'mother', '234352', 'khila', 'khila', 'Father', '115331', 'khila', '', '', 'no', '', '2020-06-15 18:37:31', '0000-00-00 00:00:00'),
(20, '342', '233', '1970-01-01', 'ali', 'ghouri', 'No', 'uploads/student_images/no_image.png', '524543', 'ali@yopmail.com', NULL, NULL, NULL, 'islam', 'ghoiri', '2020-06-03', 'Male', '', '', '3', '', '', '', '', '', 'father', 'sda', 'asdasdad', 'ddsasadd', 'asdasd', '323423', 'adasd', 'sda', 'Father', 'asdasdad', 'ddsasadd', '', '', 'no', '', '2020-06-22 17:45:34', '0000-00-00 00:00:00'),
(22, '004', '2018/LLB/001', '2018-01-08', 'ALLAH', 'DINO', 'No', 'uploads/student_images/no_image.png', '03041316054', '', NULL, NULL, NULL, 'Islam', 'Meerani', '1999-01-02', 'Male', 'H.no 9A Naqash villas phase II Qasimabad,Hyderabad.', 'H.no 9A Naqash villas phase II Qasimabad,Hyderabad.', '', '41201-9553897-9', '', '', '', '', 'father', 'MUHAMMAD DAUD', '03013519459', 'Landlord', '', '', '', 'MUHAMMAD DAUD', 'Father', '03013519459', 'Landlord', '', '', 'no', '', '2020-06-27 09:46:40', '0000-00-00 00:00:00'),
(23, '085', '2018/LLB/002', '2018-01-08', 'WALEED', 'KHAN', 'No', 'uploads/student_images/no_image.png', '03116300900', '', NULL, NULL, NULL, 'Islam', 'Pathan', '2000-04-18', 'Male', 'B:No A-356 Sindh University employees co-operation housing society jamshoro.', 'B:No A-356 Sindh University employees co-operation housing society jamshoro.', '', '', '', '', '', '', 'father', 'NISAR AHMED', '03342929465', 'Private job', '', '', '', 'NISAR AHMED', 'Father', '03342929465', 'Private job', '', '', 'no', '', '2020-06-27 09:55:38', '0000-00-00 00:00:00'),
(24, '036', '2018/LLB/003', '2018-01-08', 'MOHSIN', 'MOHSIN', 'No', 'uploads/student_images/no_image.png', '03169687606', '', NULL, NULL, NULL, 'Islam', 'Leekhi', '2000-02-18', 'Male', 'village khan muhammad leekhi p.o bahawal zaunr via phuleli hyderabad.', '', '', '41303-2602888-1', '', '', '', '', 'father', 'Hussain', '03032738121', 'Teacher', '', '', '', 'Hussain', 'Father', '03032738121', 'Teacher', '', '', 'no', '', '2020-06-27 10:02:41', '0000-00-00 00:00:00'),
(25, '011', '2018/LLB/004', '2018-01-08', 'UROOJ', 'LASHARI', 'No', 'uploads/student_images/no_image.png', '03163132373', '', NULL, NULL, NULL, 'Islam', 'Lashari', '1999-02-10', 'Female', '', '', '', '', '', '', '', '', 'other', 'Ghulam Hussain', '', 'deceased', '', '', '', 'Dr Aslam parvez Memon', 'Guardian', '03073089088', 'professor', 'A-54 murk villa phase I sindh university housing society jamshoro.', '', 'no', '', '2020-06-27 10:11:56', '0000-00-00 00:00:00'),
(26, '047', '2018/LLB/005', '2018-01-09', 'TALAT', 'HUSSAIN', 'No', 'uploads/student_images/no_image.png', '03063691228', '', NULL, NULL, NULL, 'Islam', 'BERANI', '2000-01-01', 'Male', 'lal faqeer behrani quba stop tando allahyar .', 'lal faqeer behrani quba stop tando allahyar .', '', '41307-5371697-3', '', '', '', '', 'father', 'TALIB', '03002724708', 'LAB ASSISTANT', '', '', '', 'TALIB', 'Father', '03002724708', 'LAB ASSISTANT', '', '', 'no', '', '2020-06-27 10:19:15', '0000-00-00 00:00:00'),
(27, '089', '2018/LLB/006', '2018-01-09', 'HAMZA', 'ALI', 'No', 'uploads/student_images/no_image.png', '030003193652', '', NULL, NULL, NULL, 'Islam', 'SABZOI', '2000-01-01', 'Male', 'village mohammad ramzan sabzoi kandhkot ,kashmore.', 'village mohammad ramzan sabzoi kandhkot ,kashmore.', '', '43103-2737528-5', '', '', '', '', 'father', 'MOHAMMAD ALI', '03003139181', 'FARMER', '', '', '', 'MOHAMMAD ALI', 'Father', '03003139181', 'FARMER', 'village mohammad ramzan sabzoi kandhkot ,kashmore.', '', 'no', '', '2020-06-27 10:24:27', '0000-00-00 00:00:00'),
(28, '108', '2018/LLB/008', '2018-01-09', 'ABUL', 'HASSAN', 'No', 'uploads/student_images/no_image.png', '03163699011', '', NULL, NULL, NULL, 'Islam', 'CHANDIO', '1998-03-26', 'Female', 'house no :01 lakho faqir sandoz road jamshoro.', '', '', '41504-0529825-9', '', '', '', '', 'father', 'SAKHAWAT ALI', '03013567498', 'POLICE OFFICER', '', '', '', 'SAKHAWAT ALI', 'Father', '03013567498', 'POLICE OFFICER', '', '', 'no', '', '2020-06-29 05:14:32', '0000-00-00 00:00:00'),
(29, '123', '2018/LLB/009', '2018-01-09', 'MUHAMMAD', 'HASNAIN', 'No', 'uploads/student_images/no_image.png', '03121334918', '', NULL, NULL, NULL, 'Islam', 'ABBASI', '1998-01-15', 'Male', 'near garib nawaz masjid house no :37 mohala mir ka plot mirpurkhas.', 'near garib nawaz masjid house no :37 mohala mir ka plot mirpurkhas.', '', '44103-2016499-3', '', '', '', '', 'father', 'JAWAID IQBAL', '03123390436', 'POLICE CONSTABLE', '', '', '', 'JAWAID IQBAL', 'Father', '03123390436', 'POLICE CONSTABLE', '', '', 'no', '', '2020-06-29 05:20:08', '0000-00-00 00:00:00'),
(30, '112', '2018/LLB/010', '2018-01-09', 'AKHTAR', 'SARWAR', 'No', 'uploads/student_images/no_image.png', '0315632110', '', NULL, NULL, NULL, 'Islam', 'BARAN', '1998-03-01', 'Male', 'village umar baran p.o sujawal.', 'village umar baran p.o sujawal.', '', '41901-0348755-3', '', '', '', '', 'father', 'MUHAMMAD KHAN', '03012950534', 'LANDLORD', '', '', '', 'MUHAMMAD KHAN', 'Father', '03012950534', 'LANDLORD', '', '', 'no', '', '2020-06-29 05:27:50', '0000-00-00 00:00:00'),
(31, '113', '2018/LLB/011', '2018-01-09', 'SOHAIL', 'AHMED', 'No', 'uploads/student_images/no_image.png', '03131336217', '', NULL, NULL, NULL, 'Islam', 'BARAN', '1998-10-03', 'Male', 'village umar baran p.o sujawal.', 'village umar baran p.o sujawal.', '', '41901-0347725-7', '', '', '', '', 'father', 'AHMED KHAN', '03113151294', 'TEACHER', '', '', '', 'AHMED KHAN', 'Father', '03113151294', 'TEACHER', '', '', 'no', '', '2020-06-29 05:44:46', '0000-00-00 00:00:00'),
(32, '005', '2018/LLB/012', '2018-01-01', 'ALLAH', 'RAKHIO', 'No', 'uploads/student_images/no_image.png', '03473756785', '', NULL, NULL, NULL, 'Islam', 'RAHOOJA', '1997-02-03', 'Male', 'house no:40,41 miskeen colony khuda ki basti kotri jamshoro.', 'house no:40,41 miskeen colony khuda ki basti kotri jamshor', '', '41504-04042276-7', '', '', '', '', 'father', 'GHULAM NABI ', '03402464199', 'RAILWAY STATION MASTER (R)', '', '', '', 'GHULAM NABI', 'Father', '03402464199', 'RAILWAY STATION MASTER (R)', '', '', 'no', '', '2020-06-29 05:51:05', '0000-00-00 00:00:00'),
(33, '30', '2018/LLB/013', '2018-01-10', 'BAKHTIAR', 'AHMED', 'No', 'uploads/student_images/no_image.png', '03113855624', '', NULL, NULL, NULL, 'Islam', 'MEMON', '1997-03-14', 'Male', 'town memon buleri taluka bukeri shah karim, tando.m.khan.', 'town memon buleri taluka bukeri shah karim, tando.m.khan.', '', '41602-0639693-3', '', '', '', '', 'father', 'MUKHTIAR AHMED', '03008374258', 'JOB', '', '', '', 'MUKHTIAR AHMED', 'Father', '03008374258', 'JOB', '', '', 'no', '', '2020-06-29 05:56:53', '0000-00-00 00:00:00'),
(34, '046', '2018/LLB/014', '2018-03-14', 'MUHAMMAD USMAN', 'GHANI', 'No', 'uploads/student_images/no_image.png', '03151019647', '', NULL, NULL, NULL, 'Islam', 'PANHWAR', '1998-08-04', 'Male', 'H.no:2394 street 1 shah latif colony kotri jamshoro.', 'H.no:2394 street 1 shah latif colony kotri jamshoro.', '', '41504-0542932-5', '', '', '', '', 'father', 'BADDAR-UDDIN', '03012787351', 'GOVT; EMPLOYEE', '', '', '', 'BADDAR-UDDIN', 'Father', '03012787351', 'GOVT; EMPLOYEE', '', '', 'no', '', '2020-06-29 06:03:22', '0000-00-00 00:00:00'),
(35, '081', '2018/LLB/015', '2018-01-18', 'RAJA', 'SAEED', 'No', 'uploads/student_images/no_image.png', '03003922870', '', NULL, NULL, NULL, 'Islam', 'TUNIO', '1998-07-20', 'Male', 'village haji wali dino tunio nausheroferoz.', 'village haji wali dino tunio nausheroferoz.', '', '45301-3561371-1', '', '', '', '', 'father', 'MUHAMMAD ZAKRIA', '03023410056', 'ENGINEER', '', '', '', 'MUHAMMAD ZAKRIA', 'Father', '03023410056', 'ENGINEER', '', '', 'no', '', '2020-06-29 06:07:46', '0000-00-00 00:00:00'),
(36, '083', '2018/LLB/016', '2018-01-18', 'SHAN', 'ALI', 'No', 'uploads/student_images/no_image.png', '03012249855', '', NULL, NULL, NULL, 'Islam', 'PANHWAR', '1999-02-14', 'Male', 'village bachal panhwar p.o dalipoto nausheroferoz.', 'village bachal panhwar p.o dalipoto nausheroferoz.', '', '45301-9568760-7', '', '', '', '', 'father', 'GHULAM SHABEER', '03028991913', 'LANDLORD', '', '', '', 'GHULAM SHABEER', 'Father', '03028991913', 'LANDLORD', '', '', 'no', '', '2020-06-29 06:12:19', '0000-00-00 00:00:00'),
(37, '071', '2018/LLB/017', '2018-01-10', 'IRFANA', 'SOOMRO', 'No', 'uploads/student_images/no_image.png', '03353517868', '', NULL, NULL, NULL, 'Islam', 'SOOMRO', '1998-04-26', 'Female', 'H.No;B-180 mir colony tandojam hyderabadsindh pakistan.', 'H.No;B-180 mir colony tandojam hyderabadsindh pakistan.', '', '41303-9865677-8', '', '', '', '', 'father', 'ASADULLAH', '03003073638', 'JOB', '', '', '', 'ASADULLAH', 'Father', '03003073638', 'JOB', '', '', 'no', '', '2020-06-29 06:39:05', '0000-00-00 00:00:00'),
(38, '063', '2018/LLB/018', '2018-03-14', 'SYED MUSLIM', 'RAZA', 'No', 'uploads/student_images/no_image.png', '03058292793', '', NULL, NULL, NULL, 'Islam', 'SYED', '2000-07-30', 'Male', 'mohalla ali murad shah khairpur .', 'mohalla ali murad shah khairpur .', '', '', '', '', '', '', 'father', 'SYED SHAMSHEER', '03003358562', 'TEACHER', '', '', '', 'SYED SHAMSHEER', 'Father', '03003358562', 'TEACHER', '', '', 'no', '', '2020-06-29 06:44:16', '0000-00-00 00:00:00'),
(39, '059', '2018/LLB/019', '2018-01-10', 'MUHAMMAD', 'SALEEM', 'No', 'uploads/student_images/no_image.png', '03443406070', '', NULL, NULL, NULL, 'Islam', 'SOLANGI', '2000-06-03', 'Male', 'police line head quarter block 4 quater no 17,18 dadu.', 'police line head quarter block 4 quater no 17,18 dadu.', '', '41201-3254535-5', '', '', '', '', 'father', 'GHULAM SARWAR', '03438292738', 'GOVT:SERVANT', '', '', '', 'GHULAM SARWAR', 'Father', '03438292738', 'GOVT:SERVANT', '', '', 'no', '', '2020-06-29 06:49:37', '0000-00-00 00:00:00'),
(40, '105', '2018/LLB/021', '2018-01-11', 'MEHRAN', 'MALANO', 'No', 'uploads/student_images/no_image.png', '03482134541', '', NULL, NULL, NULL, 'Islam', 'MALANO', '1994-12-28', 'Male', 'H:No:159,3/2 raswah mori kotri jamshoro.', '', '', '41504-0509616-7', '', '', '', '', 'father', 'SHABIR AHMED', '03443322300', 'GOVT; EMPLOYEE', '', '', '', 'SHABIR AHMED', 'Father', '03443322300', 'GOVT; EMPLOYEE', '', '', 'no', '', '2020-06-30 06:24:09', '0000-00-00 00:00:00'),
(41, '111', '2018/LLB/022', '2018-01-11', 'AQEEL', 'AHMED', 'No', 'uploads/student_images/no_image.png', '03043476584', '', NULL, NULL, NULL, 'Islam', 'KANDHRO', '2000-01-01', 'Male', 'village bazari kandhra taluka p.o  nasirabad ,qamber.', '', '', '43403-0398132-5', '', '', '', '', 'father', 'SHABIR AHMED', '-', 'TEACHER (R)', '', '', '', 'SHABIR AHMED', 'Father', '-', 'TEACHER (R)', '', '', 'no', '', '2020-06-30 06:33:12', '0000-00-00 00:00:00'),
(42, '006', '2018/LLB/023', '2018-01-11', 'BAKHTAWAR', 'KHASKHELI', 'No', 'uploads/student_images/no_image.png', '03098069110', '', NULL, NULL, NULL, 'Islam', 'KHASKHELI', '1999-02-10', 'Female', 'H.No.837 malik mohalla kotri jamshoro.', 'H.No.837 malik mohalla kotri jamshoro.', '', '41504-0740919-6', '', '', '', '', 'mother', 'MASHOOQUE ALI', '-', 'DECEASED', 'NAHEED AKHTAR', '03113432516', '-', 'NAHEED AKHTAR', 'Mother', '03113432516', '-', '', '', 'no', '', '2020-06-30 06:41:56', '0000-00-00 00:00:00'),
(43, '028', '2018/LLB/024', '2018-03-29', 'MUHAMMAD', 'HUSSAIN', 'No', 'uploads/student_images/no_image.png', '03003098797', '', NULL, NULL, NULL, 'Islam', 'JAHEJO', '1998-10-08', 'Male', 'H.No.266 baldia colony hyderabad.', '', '', '41302-0531163-1', '', '', '', '', 'father', 'MUHAMMAD JUMAN', '-', 'BUSINESSMAN', '', '', '', 'MUHAMMAD JUMAN', 'Father', '-', 'BUSINESSMAN', '', '', 'no', '', '2020-06-30 06:46:48', '0000-00-00 00:00:00'),
(44, '072', '2018/LLB/025', '2018-01-11', 'LIAQUAT', 'ALI', 'No', 'uploads/student_images/no_image.png', '03123629554', '', NULL, NULL, NULL, 'Islam', 'KAPRI', '1999-05-07', 'Male', 'p.o and taluka bulhri shah karim tando.m.khan.', '', '', '41602-0635236-1', '', '', '', '', 'father', 'MUHAMMAD YAQOOB', '03023081026', 'GOVT; EMPLOYEE', '', '', '', 'MUHAMMAD YAQOOB', 'Father', '03023081026', 'GOVT; EMPLOYEE', '', '', 'no', '', '2020-06-30 06:51:15', '0000-00-00 00:00:00'),
(45, '013', '2018/LLB/026', '2018-01-12', 'MIAN-DUR-SULTAN', 'RAJPUT', 'No', 'uploads/student_images/no_image.png', '03030039297', '', NULL, NULL, NULL, 'Islam', 'RAJPUT', '1995-02-20', 'Male', 'H.No.2b-265,ward no. 7 rajput muhalla nausheroferoz.', '', '', '45304-3296422-7', '', '', '', '', 'father', 'BASHEER AHMED ', '03342628747', 'SHOPKEEPER', '', '', '', 'BASHEER AHMED', 'Father', '03342628747', 'SHOPKEEPER', '', '', 'no', '', '2020-06-30 06:58:25', '0000-00-00 00:00:00'),
(46, '192', '2018/LLB/027', '2018-03-14', 'ASIF', 'ALI', 'No', 'uploads/student_images/no_image.png', '03163223872', '', NULL, NULL, NULL, 'Islam', 'HINGORO', '1998-01-16', 'Male', 'H.No.151 mohalla shah latif colony nango line kotri jamshoro.', '', '', '41504-0466409-7', '', '', '', '', 'father', 'HAKIM ALI', '03009376950', 'GOVT; EMPLOYEE', '', '', '', 'HAKIM ALI', 'Father', '03009376950', 'GOVT; EMPLOYEE', '', '', 'no', '', '2020-06-30 07:04:39', '0000-00-00 00:00:00'),
(47, '185', '2018/LLB/028', '2018-03-13', 'KHAN', 'MOHAMMAD', 'No', 'uploads/student_images/no_image.png', '03023600787', '', NULL, NULL, NULL, 'Islam', 'KANDHRO', '1999-02-28', 'Male', 'village daud kandhra street dak  khana bothro tehseel mehar ,dadu.', '', '', '43201-9329737-7', '', '', '', '', 'father', 'MOHAMMAD AZAM', '03083626304', 'BUSSINESSMAN', '', '', '', 'MOHAMMAD AZAM', 'Father', '03083626304', 'BUSSINESSMAN', '', '', 'no', '', '2020-06-30 07:10:12', '0000-00-00 00:00:00'),
(48, '075', '2018/LLB/029', '2018-01-13', 'MUSKAN', 'GUL', 'No', 'uploads/student_images/no_image.png', '03147938031', '', NULL, NULL, NULL, 'Islam', 'KORAI', '2000-01-13', 'Female', 'village detha near al mustafa trust taluka qasimabad hyderabad.', '', '', '41504-0741479-2', '', '', '', '', 'father', 'AHMAD ALI', '03158966783', 'BUSINESSMAN ', '', '', '', 'AHMAD ALI', 'Father', '03158966783', 'BUSINESSMAN ', '', '', 'no', '', '2020-06-30 07:15:31', '0000-00-00 00:00:00'),
(49, '110', '2018/LLB/030', '2018-01-13', 'ADIL', 'HUSSAIN', 'No', 'uploads/student_images/no_image.png', '03138556338', '', NULL, NULL, NULL, 'Islam', 'BHUTTO', '2000-09-08', 'Male', 'lakhra colony powehouse H.NO. b-3 jamshoro.', '', '', '41204-4713706-1', '', '', '', '', 'father', 'ABID HUSSAIN', '03138556338', 'GOVT; EMPLOYEE', '', '', '', 'ABID HUSSAIN', 'Father', '03138556338', 'GOVT; EMPLOYEE', '', '', 'no', '', '2020-06-30 07:19:47', '0000-00-00 00:00:00'),
(50, '153', '2018/LLB/031', '2018-01-13', 'NAWAZ', 'ALI', 'No', 'uploads/student_images/no_image.png', '03121258273', '', NULL, NULL, NULL, 'Islam', 'DOMKI', '1998-07-28', 'Male', 'railway colony mohalla jafrabad ,jacobabad.', '', '', '43102-8369890-9', '', '', '', '', 'father', 'TARIQ ALI', '03322855309', 'TEACHER', '', '', '', 'TARIQ ALI', 'Father', '03322855309', 'TEACHER', '', '', 'no', '', '2020-06-30 09:52:49', '0000-00-00 00:00:00'),
(51, '039', '2018/LLB/032', '2018-03-15', 'QALAB-E-ZAHRA', 'QAMBRANI', 'No', 'uploads/student_images/no_image.png', '03128329368', '', NULL, NULL, NULL, 'Islam', 'QAMBRANI', '1997-09-02', 'Female', 'model town B.No. B-59 wadhu wah road hyderabad.', '', '', '-', '', '', '', '', 'father', 'SIKANDAER ALI', '03003270005', 'GOVT; EMPLOYEE', '', '', '', 'SIKANDAER ALI', 'Father', '03003270005', 'GOVT; EMPLOYEE', '', '', 'no', '', '2020-06-30 09:57:27', '0000-00-00 00:00:00'),
(52, '043', '2018/LLB/033', '2018-03-15', 'UROOJ', 'MEMON', 'No', 'uploads/student_images/no_image.png', '03069190341', '', NULL, NULL, NULL, 'Islam', 'MEMON', '1998-05-20', 'Female', 'memon muhalla shaheed road tandojam, hyderabad.', '', '', '41303-1531060-3', '', '', '', '', 'father', 'GUL MUHAMMAD ', '03063205519', '-', '', '', '', 'GUL MUHAMMAD', 'Father', '03063205519', '-', '', '', 'no', '', '2020-06-30 10:01:33', '0000-00-00 00:00:00'),
(53, '035', '2018/LLB/034', '2018-04-02', 'UMAIR', 'AHMED', 'No', 'uploads/student_images/no_image.png', '03330230479', '', NULL, NULL, NULL, 'Islam', 'KOREJO', '1998-08-26', 'Male', 'near eid gah muhalla muhammad bux colony  shahdadpur, sanghar.', '', '', '44204-7899014-1', '', '', '', '', 'father', 'MAQSOOD AHMED', '03083434399', 'GOVT; EMPLOYEE', '', '', '', 'MAQSOOD AHMED', 'Father', '03083434399', 'GOVT; EMPLOYEE', '', '', 'no', '', '2020-06-30 10:07:45', '0000-00-00 00:00:00'),
(54, '078', '2018/LLB/035', '2018-01-13', 'ABDUL', 'GHAFFAR', 'No', 'uploads/student_images/no_image.png', '03102712652', '', NULL, NULL, NULL, 'Islam', 'JANWARI', '1995-03-20', 'Male', 'village haji muhammad ali janwari tando.m.khan.', '', '', '41601-0649430-3', '', '', '', '', 'father', 'GHULAM HUSSAIN', '03113731844', 'FARMER', '', '', '', 'GHULAM HUSSAIN', 'Father', '03113731844', 'FARMER', '', '', 'no', '', '2020-06-30 10:13:01', '0000-00-00 00:00:00'),
(55, '077', '2018/LLB/036', '2018-01-13', 'MUSHTAQUE', 'ALI', 'No', 'uploads/student_images/no_image.png', '03163172086', '', NULL, NULL, NULL, 'Islam', 'JANWARI', '1999-02-10', 'Male', 'village haji muhammad ali janwari tando.m.khan.', '', '', '41602-0638130-5', '', '', '', '', 'father', 'MUHAMMAD BUX', '03332809107', 'FARMER', '', '', '', 'MUHAMMAD BUX', 'Father', '03332809107', 'FARMER', '', '', 'no', '', '2020-06-30 10:20:57', '0000-00-00 00:00:00'),
(56, '086', '2018/LLB/037', '2018-01-13', 'JAVED', 'ALI', 'No', 'uploads/student_images/no_image.png', '03003052984', '', NULL, NULL, NULL, 'Islam', 'JANWARI', '1997-07-02', 'Male', 'village haji muhammad ali janwari tando m.khan.', '', '', '41602-0634051-3', '', '', '', '', 'father', 'MUHAMMAD BUX', '03332809107', 'FARMER', '', '', '', 'MUHAMMAD BUX', 'Father', '03332809107', 'FARMER', '', '', 'no', '', '2020-06-30 10:31:42', '0000-00-00 00:00:00'),
(57, '051', '2018/LLB/038', '2018-01-13', 'SALEEM', 'AHMED', 'No', 'uploads/student_images/no_image.png', '03043189836', '', NULL, NULL, NULL, 'Islam', 'BULEDI', '1999-02-10', 'Male', 'ghulshan-e- faiz colony tando.m.khan.', '', '', '43202-7888951-3', '', '', '', '', 'father', 'GHULAM QADIR', '03043189836', 'SHOPKEEPER', '', '', '', 'GHULAM QADIR', 'Father', '03043189836', 'SHOPKEEPER', '', '', 'no', '', '2020-06-30 10:37:32', '0000-00-00 00:00:00'),
(58, '133', '2018/LLB/039', '2018-01-15', 'RIAZ', 'ALI', 'No', 'uploads/student_images/no_image.png', '03313830373', '', NULL, NULL, NULL, 'Islam', 'QUMBRANI', '1996-03-31', 'Male', 'ward no.6 khuja mohalla tando bago badin.', '', '', '41104-0326567-7', '', '', '', '', 'father', 'GUL MUHAMMAD ', '03340135508', '-', '', '', '', 'GUL MUHAMMAD', 'Father', '03340135508', '-', '', '', 'no', '', '2020-06-30 10:42:29', '0000-00-00 00:00:00'),
(59, '094', '2018/LLB/040', '2018-01-16', 'MUHAMMAD', 'SHARIF', 'No', 'uploads/student_images/no_image.png', '03454999355', '', NULL, NULL, NULL, 'Islam', 'RAJAR', '1995-05-07', 'Male', 'village haji wariyam rajar umerkot.', '', '', '44403-8214954-3', '', '', '', '', 'father', 'KHER MUHAMMAD ', '03332683020', 'GOVT; EMPLOYEE', '', '', '', 'KHER MUHAMMAD', 'Father', '03332683020', 'GOVT; EMPLOYEE', '', '', 'no', '', '2020-06-30 10:47:54', '0000-00-00 00:00:00'),
(61, '136', '2018/LLB/041', '2018-01-16', 'GHULAM', 'QADIR', 'No', 'uploads/student_images/no_image.png', '03333151586', '', NULL, NULL, NULL, 'Islam', 'MARI-BALOCH', '2000-05-10', 'Male', 'village khanwahan,kandiaro naushahro feroz.', '', '', '45302-7878241-7', '', '', '', '', 'father', 'MUHAMMAD IQBAL', '03333151586', 'MECHANICAL', '', '', '', 'MUHAMMAD IQBAL', 'Father', '03333151586', 'MECHANICAL', '', '', 'no', '', '2020-07-01 04:54:00', '0000-00-00 00:00:00'),
(62, '091', '2k18/LLB/42', '2018-01-17', 'NIAZ', 'ALI', 'No', 'uploads/student_images/no_image.png', '03030309679', '', NULL, NULL, NULL, 'Islam', 'DAYO', '2000-03-09', 'Male', 'p.o muhammad pur odho garhi khairo jacobabad.', '', '', '43101-4622758-7', '', '', '', '', 'father', 'MEHBOOB ALI', '03023395289', 'TEACHER', '', '', '', 'MEHBOOB ALI', 'Father', '03023395289', 'TEACHER', '', '', 'no', '', '2020-07-02 10:10:48', '0000-00-00 00:00:00'),
(63, '157', '2018/LLB/043', '2018-01-20', 'HASSAN', 'KHAN', 'No', 'uploads/student_images/no_image.png', '03163621963', '', NULL, NULL, NULL, 'Islam', 'DHAREJO', '1997-11-25', 'Male', 'dabbar muhalla panjhatii,khairpur mirs,khairpur.', '', '', '45203-0596503-3', '', '', '', '', 'father', 'KHADIM HUSSAIN', '03436174880', 'GOVT; EMPLOYEE', '', '', '', 'KHADIM HUSSAIN', 'Father', '03436174880', 'GOVT; EMPLOYEE', '', '', 'no', '', '2020-07-01 05:02:14', '0000-00-00 00:00:00'),
(64, '087', '2018/LLB/044', '2018-01-31', 'RAMEEZ', 'AHMED', 'No', 'uploads/student_images/no_image.png', '03473126978', '', NULL, NULL, NULL, 'Islam', 'LAKHIAR', '1999-01-02', 'Male', 'village bora lakhiar p.o khairpur nathan shah, dadu.', '', '', '41201-6132093-9', '', '', '', '', 'father', 'MUSHTAQUE AHMED', '03088220965', 'FARMER', '', '', '', 'MUSHTAQUE AHMED', 'Father', '03088220965', 'FARMER', '', '', 'no', '', '2020-07-01 05:07:37', '0000-00-00 00:00:00'),
(65, '134', '2018/LLB/045', '2018-01-18', 'BABAR', 'BEHRANI', 'No', 'uploads/student_images/no_image.png', '03003413726', '', NULL, NULL, NULL, 'Islam', 'BEHRANI', '1999-10-16', 'Male', 'kot ghulam muhammad bhurgari baladi colony near taheed masjid , mirpurkhas.', '', '', '44102-5834360-3', '', '', '', '', 'father', 'KHALID ALI', '03313805060', 'TRANSPORTER', '', '', '', 'KHALID ALI', 'Father', '03313805060', 'TRANSPORTER', '', '', 'no', '', '2020-07-01 05:12:00', '0000-00-00 00:00:00'),
(66, '155', '2018/LLB/046', '2018-01-22', 'SAJID', 'HASSAN', 'No', 'uploads/student_images/no_image.png', '03033343198', '', NULL, NULL, NULL, 'Islam', 'WASSAN', '1999-05-03', 'Male', 'H.No.23 block no. A p.o jam nawaz ali, sanghar.', '', '', '44201-1634444-3', '', '', '', '', 'father', 'ALI HASSAN', '03073353455', 'PRIVATE EMPLOYEE', '', '', '', 'ALI HASSAN', 'Father', '03073353455', 'PRIVATE EMPLOYEE', '', '', 'no', '', '2020-07-01 05:18:14', '0000-00-00 00:00:00'),
(67, '131', '2018/LLB/047', '2018-01-26', 'WASEEM', 'AHMED', 'No', 'uploads/student_images/no_image.png', '0304829829', '', NULL, NULL, NULL, 'Islam', 'SHAH', '1998-02-18', 'Male', 'p.o mohammad pur odho ,garhi khairo,jacobabad.', '', '', '43101-7615871-3', '', '', '', '', 'father', 'ZAHID HUSSAIN ', '03039712062', 'TEACHER', '', '', '', 'ZAHID HUSSAIN', 'Father', '03039712062', 'TEACHER', '', '', 'no', '', '2020-07-01 05:22:23', '0000-00-00 00:00:00'),
(68, '151', '2018/LLB/048', '2018-02-13', 'JAVED', 'ALI', 'No', 'uploads/student_images/no_image.png', '03023075599', '', NULL, NULL, NULL, 'Islam', 'JUNEJO', '1998-11-10', 'Male', 'village din muhammad junejo,sanghar.', '', '', '44206-8642751-7', '', '', '', '', 'father', 'GHULAM QADIR ', '03023457971', 'GOVT; EMPLOYEE', '', '', '', 'GHULAM QADIR', 'Father', '03023457971', 'GOVT; EMPLOYEE', '', '', 'no', '', '2020-07-01 05:40:19', '0000-00-00 00:00:00'),
(69, '064', '2018/LLB/049', '2018-05-03', 'TEHMINA', 'NAHIYOON', 'No', 'uploads/student_images/no_image.png', '03058274386', '', NULL, NULL, NULL, 'Islam', 'NAHIYOON', '2000-03-05', 'Male', 'village darya khan nahiyoon tando jam, hyderabad.', '', '', '41303-8466864-3', '', '', '', '', 'father', 'AMEER BUX ', '03003025851', 'BANK MANAGER', '', '', '', 'AMEER BUX', 'Father', '03003025851', 'BANK MANAGER', '', '', 'no', '', '2020-07-01 05:45:05', '0000-00-00 00:00:00'),
(70, '160', '2018/LLB/050', '2018-01-29', 'PAWAN', 'KUMAR', 'No', 'uploads/student_images/no_image.png', '03111173141', '', NULL, NULL, NULL, 'HINDU', 'GUJAR', '1998-04-20', 'Male', 'plot#105 gareebabad meghwar mohalla ,umerkot.', '', '', '44401-2511848-5', '', '', '', '', 'father', 'KHOUSH-HAL-DAS', '034621290227', 'TEACHER (R)', '', '', '', 'KHOUSH-HAL-DAS', 'Father', '034621290227', 'TEACHER (R)', '', '', 'no', '', '2020-07-01 05:58:06', '0000-00-00 00:00:00'),
(71, '158', '2018/LLB/051', '2018-01-29', 'MEESAQUE', 'RASOOL', 'No', 'uploads/student_images/no_image.png', '03413425669', '', NULL, NULL, NULL, 'Islam', 'MEMON', '1997-02-15', 'Male', 'akhund muhalla chuhar jamali , shah bander, sujawal.', '', '', '41904-0340272-5', '', '', '', '', 'father', 'GHULAM RASOOL', '03462216898', 'ADVOCATE', '', '', '', 'GHULAM RASOOL', 'Father', '03462216898', 'ADVOCATE', '', '', 'no', '', '2020-07-01 05:56:11', '0000-00-00 00:00:00'),
(72, '173', '2018/LLB/052', '2018-02-16', 'IBRAR', 'ALI', 'No', 'uploads/student_images/no_image.png', '03088574452', '', NULL, NULL, NULL, 'Islam', 'HALEPOTO', '1997-01-05', 'Male', 'village talti sehwan, jamshoro.', '', '', '41206-0510900-9', '', '', '', '', 'father', 'ALI AKBER', '03062249188', 'POLICE OFFICER', '', '', '', 'ALI AKBER', 'Father', '03062249188', 'POL', '', '', 'no', '', '2020-07-01 06:01:55', '0000-00-00 00:00:00'),
(73, '142', '2018/LLB/053', '2018-02-01', 'PERWAIZ', 'RODNANI', 'No', 'uploads/student_images/no_image.png', '03403480705', '', NULL, NULL, NULL, 'Islam', 'RODNANI', '1999-12-04', 'Male', 'village shahak rodnani johi, dadu.', '', '', '41202-9388226-1', '', '', '', '', 'father', 'SIKANDAR ALI', '03068585014', 'GOVT; EMPLOYEE', '', '', '', 'SIKANDAR ALI', 'Father', '03068585014', 'GOVT; EMPLOYEE', '', '', 'no', '', '2020-07-01 06:05:30', '0000-00-00 00:00:00'),
(74, '143', '2018/LLB/054', '2018-02-02', 'RAJIB', 'ALI', 'No', 'uploads/student_images/no_image.png', '03073902463', '', NULL, NULL, NULL, 'Islam', 'BHANBHRO', '2000-11-01', 'Male', 'village matto khan bhanbhro deh janoji,sale patt, sukkur.', '', '', '45503-5771343-7', '', '', '', '', 'father', 'GUL MUHAMMAD ', '03009314162', 'FARMER', '', '', '', 'GUL MUHAMMAD', 'Father', '03009314162', 'FARMER', '', '', 'no', '', '2020-07-01 06:09:37', '0000-00-00 00:00:00'),
(75, '027', '2018/LLB/055', '2018-02-02', 'RAJA AZAD', 'AKBER', 'No', 'uploads/student_images/no_image.png', '03052578420', '', NULL, NULL, NULL, 'Islam', 'KHERO', '1999-10-21', 'Male', 'H#C1 juducial complex near mehran university society ,jamshoro.', '', '', '-', '', '', '', '', 'father', 'ALI AKBER', '03003278488', 'GOVT; EMPLOYEE', '', '', '', 'ALI AKBER', 'Father', '03003278488', 'GOVT; EMPLOYEE', '', '', 'no', '', '2020-07-01 06:13:14', '0000-00-00 00:00:00'),
(76, '144', '2018/LLB/056', '2020-07-01', 'MUHAMMAD', 'SAMI', 'No', 'uploads/student_images/no_image.png', '03012009012', '', NULL, NULL, NULL, 'Islam', 'KALHORO', '2000-05-01', 'Male', 'village peer ilyas kalhoro p.o khanwahan ,nausheroferoz.', '', '', '45305-0404776-7', '', '', '', '', 'father', 'IMDAD HUSSAIN', '03012598957', 'ARMY (R)', '', '', '', 'IMDAD HUSSAIN', 'Father', '03012598957', 'ARMY (R)', '', '', 'no', '', '2020-07-01 06:17:50', '0000-00-00 00:00:00'),
(77, '141', '2018/LLB/057', '2018-02-05', 'HAMMAYOON', 'HUSSAIN', 'No', 'uploads/student_images/no_image.png', '03033034578', '', NULL, NULL, NULL, 'Islam', 'SOOMRO', '1999-02-15', 'Male', 'village qasim soomro ,mirpur bathoro,sujawal.', '', '', '41902-0346093-9', '', '', '', '', 'father', 'GHULAM HUSSAIN', '03007515026', 'GOVT; EMPLOYEE', '', '', '', 'GHULAM HUSSAIN', 'Father', '03007515026', 'GOVT; EMPLOYEE', '', '', 'no', '', '2020-07-01 06:31:31', '0000-00-00 00:00:00'),
(78, '125', '2018/LLB/058', '2018-02-06', 'AJAY', 'KUMAR', 'No', 'uploads/student_images/no_image.png', '03363380040', '', NULL, NULL, NULL, 'HINDU', 'LOHANO', '1997-08-02', 'Male', 'arbani street talib-ul-mola colony hala new,matiari.', '', '', '41301-4284613-1', '', '', '', '', 'father', 'MANOHAR LAL', '03142842529', 'BUSINEEMAN', '', '', '', 'MANOHAR LAL', 'Father', '03142842529', 'BUSINEEMAN', '', '', 'no', '', '2020-07-01 06:35:37', '0000-00-00 00:00:00'),
(79, '169', '2018/LLB/059', '2018-03-27', 'MAZHARUDDIN', 'KHOKHAR', 'No', 'uploads/student_images/no_image.png', '03452442499', '', NULL, NULL, NULL, 'Islam', 'KHOKHAR', '1995-10-06', 'Male', 'little angel`s model school khuda ki basti , kotri, jamshoro.', '', '', '43207-6993144-9', '', '', '', '', 'father', 'ROSHAN ALI ', '03088576419', 'FARMER', '', '', '', 'ROSHAN ALI', 'Father', '03088576419', 'FARMER', '', '', 'no', '', '2020-07-01 06:40:25', '0000-00-00 00:00:00'),
(80, '062', '2018/LLB/060', '2018-03-16', 'MUAZZAM', 'MEMON', 'No', 'uploads/student_images/no_image.png', '03150134098', '', NULL, NULL, NULL, 'Islam', 'MEMON', '1999-11-16', 'Male', 'H#B 156 new labour colony site area ,hyderabd .', '', '', '41302-6940237-2', '', '', '', '', 'father', 'MUHAMMAD ANEES ', '03312357204', '-', '', '', '', 'MUHAMMAD ANEES', 'Father', '03312357204', '-', '', '', 'no', '', '2020-07-01 06:44:27', '0000-00-00 00:00:00'),
(81, '115', '2018/LLB/061', '2018-02-07', 'NAZIR', 'ALI', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, '', '', '1997-01-15', 'Male', 'ward no: 311 mahar mohalla ,umerkot.', '', '', '44107-0792371-5', '', '', '', '', 'father', 'WALI MUHAMMAD ', '03113181482', 'SHOPKEEPER', '', '', '', 'WALI MUHAMMAD', 'Father', '03113181482', 'SHOPKEEPER', '', '', 'no', '', '2020-07-01 07:09:03', '0000-00-00 00:00:00'),
(82, '092', '2018/LLB/062', '2018-02-07', 'NOOR', 'AHMED', 'No', 'uploads/student_images/no_image.png', '03313413061', '', NULL, NULL, NULL, 'Islam', 'KALHORO', '1996-02-17', 'Male', 'H#A4 anwar villas waqar town qasimabad , hyderabad.', '', '', '43403-0389838-5', '', '', '', '', 'father', 'MUHAMMAD ALI', '03313413061', 'FARMER', '', '', '', 'MUHAMMAD ALI', 'Father', '03313413061', 'FARMER', '', '', 'no', '', '2020-07-01 07:14:40', '0000-00-00 00:00:00'),
(83, '147', '2018/LLB/063', '2018-02-07', 'SHAHID', 'OAD', 'No', 'uploads/student_images/no_image.png', '03161317850', '', NULL, NULL, NULL, '-', 'OAD', '1998-02-01', 'Male', 'H.no. B.45 near sameena banglows ali palace qasimabad , hyderabad .', 'block 5 quarter no. 23 behind cia police station ,sanghar.', '', '44203-5041499-7', '', '', '', '', 'father', 'RAJHAN', '03450185622', 'POLICE CONSTABLE', '', '', '', 'RAJHAN', 'Father', '03450185622', 'POLICE CONSTABLE', '', '', 'no', '', '2020-07-01 07:20:36', '0000-00-00 00:00:00'),
(84, '129', '2018/LLB/064', '2018-02-07', 'RIAZ', 'ALI', 'No', 'uploads/student_images/no_image.png', '03461701786', '', NULL, NULL, NULL, 'Islam', 'DARS', '1997-03-15', 'Male', 'H.no. B45 near sameena banglows ali palace qasimabad ,hyderabad.', 'village muhammad paryal rajar, khipro,sanghar.', '', '44202-9312864-5', '', '', '', '', 'father', 'SOHRAB', '03461701786', 'TEACHER', '', '', '', 'SOHRAB', 'Father', '03461701786', 'TEACHER', '', '', 'no', '', '2020-07-01 07:26:14', '0000-00-00 00:00:00'),
(85, '138', '2018/LLB/065', '2018-02-27', 'IRFAT', 'HUSSAIN', 'No', 'uploads/student_images/no_image.png', '03083612951', '', NULL, NULL, NULL, 'Islam', 'LAKHO', '1998-02-08', 'Male', 'p.o umeed ali lakho village saeed khan lakho ,nausheroferoz.', '', '', '45301-7693751-7', '', '', '', '', 'father', 'IKHTIAR HUSSAIN ', '03063571782', 'TUWEL OPERATOR', '', '', '', 'IKHTIAR HUSSAIN', 'Father', '03063571782', 'TUWEL OPERATOR', '', '', 'no', '', '2020-07-01 07:31:25', '0000-00-00 00:00:00'),
(86, '150', '2018/LLB/066', '2018-02-07', 'SHAHZAD', 'MEMON', 'No', 'uploads/student_images/no_image.png', '03138644513', '', NULL, NULL, NULL, 'Islam', 'MEMON', '1999-11-12', 'Male', 'near session court jamshoro,m.amin town,jamshoro.', '', '', '41201-7338238-3', '', '', '', '', 'father', 'SAIFUDDIN', '03163412213', 'TEACHER', '', '', '', 'SAIFUDDIN', 'Father', '03163412213', 'TEACHER', '', '', 'no', '', '2020-07-01 07:35:09', '0000-00-00 00:00:00'),
(87, '120', '2018/LLB/067', '2018-02-08', 'NOMAN', 'AHMED', 'No', 'uploads/student_images/no_image.png', '03483858349', '', NULL, NULL, NULL, 'Islam', 'LAGHARI', '2000-07-01', 'Male', 'ya ali colony giddi naka qasimabad,hyderabad.', 'village dittal khan laghari digri,mirpur khas.', '', '44101-1609740-1', '', '', '', '', 'father', 'NIAZ AHMED', '03461396891', 'PRIVATE JOB', '', '', '', 'NIAZ AHMED', 'Father', '03461396891', 'PRIVATE JOB', '', '', 'no', '', '2020-07-01 07:40:46', '0000-00-00 00:00:00'),
(88, '116', '2018/LLB/068', '2018-02-08', 'MUHAMMAD', 'QADEER', 'No', 'uploads/student_images/no_image.png', '03483147004', '', NULL, NULL, NULL, 'Islam', 'SHAR', '2000-01-01', 'Male', 'village faqeer muhammad ameen shar ,khairpur.', '', '', '45201-578091-5', '', '', '', '', 'father', 'MUHAMMAD KHAN', '03413120732', 'TEACHER', '', '', '', 'MUHAMMAD KHAN', 'Father', '03413120732', 'TEACHER', '', '', 'no', '', '2020-07-01 07:44:25', '0000-00-00 00:00:00'),
(89, '137', '2018/LLB/069', '2018-02-09', 'SHAZIA', 'JHATIAL', 'No', 'uploads/student_images/no_image.png', '03003076246', '', NULL, NULL, NULL, 'Islam', 'JHATIAL', '1998-07-31', 'Female', 'H.no.B16 muhammadi town near session court jamshoro.', 'eidgah muhalla radhan dadu.', '', '41205-0774623-8', '', '', '', '', 'father', 'ABDUL SATTAR', '03003076246', 'LANDLORD', '', '', '', 'ABDUL SATTAR', 'Father', '03003076246', 'LANDLORD', '', '', 'no', '', '2020-07-01 07:49:39', '0000-00-00 00:00:00'),
(90, '117', '2018/LLB/070', '2020-07-01', 'ASAD', 'ALI', 'No', 'uploads/student_images/no_image.png', '03083498210', '', NULL, NULL, NULL, 'Islam', 'BUTT', '1998-01-17', 'Male', 'village butt serai tehsil mehar dadu.', '', '', '41205-3215854-3', '', '', '', '', 'father', 'AKHTIAR ALI ', '03023250834', 'GOVT; EMPLOYEE', '', '', '', 'AKHTIAR ALI', 'Father', '03023250834', 'GOVT; EMPLOYEE', '', '', 'no', '', '2020-07-01 07:53:02', '0000-00-00 00:00:00'),
(91, '167', '2018/LLB/071', '2018-02-12', 'MUHAMMAD', 'WASEEM', 'No', 'uploads/student_images/no_image.png', '03103389660', '', NULL, NULL, NULL, 'Islam', 'RODNANI', '1999-04-01', 'Male', 'village shahak rodnani ,johi,dadu.', '', '', '41202-1893977-1', '', '', '', '', 'father', 'AZIZULLAH', '03052957977', 'LANDLORD', '', '', '', 'AZIZULLAH', 'Father', '03052957977', 'LANDLORD', '', '', 'no', '', '2020-07-01 08:07:05', '0000-00-00 00:00:00'),
(92, '180', '2018/LLB/072', '2018-02-12', 'BABAR', 'ALI', 'No', 'uploads/student_images/no_image.png', '-', '', NULL, NULL, NULL, 'Islam', 'PATHAN', '1998-08-26', 'Male', 'H.NO 275 new labour colony site area ,hyderbad.', '', '', '41304-4315066-5', '', '', '', '', 'father', 'ZAHEERUDDIN', '033326822116', 'PRIVATE JOB', '', '', '', 'ZAHEERUDDIN', 'Father', '033326822116', 'PRIVATE JOB', '', '', 'no', '', '2020-07-01 08:11:53', '0000-00-00 00:00:00'),
(93, '162', '2018/LLB/073', '2018-02-14', 'AMJAD', 'RAZA', 'No', 'uploads/student_images/no_image.png', '03013457548', '', NULL, NULL, NULL, 'Islam', 'BURIRO', '1998-09-02', 'Male', 'shahbaz colony near sindh bank sehwan shariff, jamshoro.', '', '', '41506-0447556-3', '', '', '', '', 'father', 'KARAM HUSSAIN', '-', '-', '', '', '', 'KARAM HUSSAIN', 'Father', '-', '-', '', '', 'no', '', '2020-07-01 08:15:15', '0000-00-00 00:00:00'),
(94, '152', '2018/LLB/074', '2018-02-14', 'ABDUL', 'KHALIQUE', 'No', 'uploads/student_images/no_image.png', '03483612240', '', NULL, NULL, NULL, 'Islam', 'KUNBHER', '1999-02-05', 'Male', 'al falah boys hostel near qasim nagar chowk hyderabad.', 'village kheensar dahli , tharparhker.', '', '44301-7782025-3', '', '', '', '', 'father', 'MUHAMMAD SOOMAR', '03462161116', 'TEACHER', '', '', '', 'MUHAMMAD SOOMAR', 'Father', '03462161116', 'TEACHER', '', '', 'no', '', '2020-07-01 08:20:49', '0000-00-00 00:00:00'),
(95, '172', '2018/LLB/075', '2018-02-14', 'WAQAR', 'ALI', 'No', 'uploads/student_images/no_image.png', '03083355686', '', NULL, NULL, NULL, 'Islam', 'KHASKHELI', '1998-12-28', 'Male', 'village ahmed khan khaskheli qazi ahmed , shaheed benazirabad.', '', '', '45401-9937080-5', '', '', '', '', 'father', 'GHULAM SARWAR', '03003221995', 'GOVT; EMPLOYEE', '', '', '', 'GHULAM SARWAR', 'Father', '03003221995', 'GOVT; EMPLOYEE', '', '', 'no', '', '2020-07-01 08:39:35', '0000-00-00 00:00:00'),
(96, '196', '2018/LLB/076', '2018-03-15', 'ASADULLAH', 'CHANDIO', 'No', 'uploads/student_images/no_image.png', '03421302076', '', NULL, NULL, NULL, 'Islam', 'CHANDIO', '1999-02-12', 'Male', 'chandia iron shop main road k.n shah dadu.', '', '', '41203-6787035-9', '', '', '', '', 'father', 'TALIB', '-', '-', '', '', '', 'TALIB', 'Father', '-', '-', '', '', 'no', '', '2020-07-01 08:42:59', '0000-00-00 00:00:00'),
(97, '023', '2018/LLB/077', '2018-04-03', 'VIKRAM', 'MAGHWAR', 'No', 'uploads/student_images/no_image.png', '03003046658', '', NULL, NULL, NULL, 'HINDU', 'MAGHWAR', '1999-01-08', 'Male', 'village muhab kakepoto p.o nasarpur ,tandoallahyar.', '', '', '41307-5811747-5', '', '', '', '', 'father', 'CHAMAN DAS', '03454991665', 'LANDLORD', '', '', '', 'CHAMAN DAS', 'Father', '03454991665', 'LANDLORD', '', '', 'no', '', '2020-07-01 08:46:51', '0000-00-00 00:00:00'),
(98, '034', '2018/LLB/078', '2018-02-21', 'SAMINA', 'LUND', 'No', 'uploads/student_images/no_image.png', '03003420761', '', NULL, NULL, NULL, 'Islam', 'LUND', '2000-01-05', 'Female', 'village mureed lund ,tandoallahyar.', '', '', '41702-0610710-4', '', '', '', '', 'father', 'MUSHTAQUE AHMED ', '03013523341', '-', '', '', '', 'MUSHTAQUE AHMED', 'Father', '03013523341', '-', '', '', 'no', '', '2020-07-01 08:50:49', '0000-00-00 00:00:00'),
(99, '182', '2018/LLB/079', '2018-05-21', 'KASHIF', 'KHAN', 'No', 'uploads/student_images/no_image.png', '03000219689', '', NULL, NULL, NULL, 'Islam', 'GOPANG', '1998-09-17', 'Male', 'village ali sher gopang,mirokhan,qamber.', '', '', '43404-0420571-7', '', '', '', '', 'father', 'QAMARUDDIN', '03362888211', 'LANDLORD', '', '', '', 'QAMARUDDIN', 'Father', '03362888211', 'LANDLORD', '', '', 'no', '', '2020-07-01 08:54:48', '0000-00-00 00:00:00'),
(100, '166', '2018/LLB/080', '2018-02-16', 'WARIS', 'ALI', 'No', 'uploads/student_images/no_image.png', '03480399593', '', NULL, NULL, NULL, 'Islam', 'SOLANGI', '2000-01-01', 'Male', 'B.59 samina banglows qasimabad hyderabad.', '', '', '41201-3756060-5', '', '', '', '', 'father', 'HAKIM ALI', '03333052456', '-', '', '', '', 'HAKIM ALI', 'Father', '03333052456', '-', '', '', 'no', '', '2020-07-01 08:58:35', '0000-00-00 00:00:00'),
(101, '184', '2018/LLB/081', '2018-02-23', 'YASIR', 'MAZNANI', 'No', 'uploads/student_images/no_image.png', '03403959609', '', NULL, NULL, NULL, 'Islam', 'MAZNANI', '2000-01-01', 'Male', 'mehwal street H.NO A900-151 muhalla gareebabad dadu.', '', '', '41201-1527250-9', '', '', '', '', 'father', 'IMDADULLAH', '03461108188', 'TEACHER', '', '', '', 'IMDADULLAH', 'Father', '03461108188', 'TEACHER', '', '', 'no', '', '2020-07-01 09:04:02', '0000-00-00 00:00:00'),
(102, '127', '2018/LLB/082', '2018-02-26', 'NOOR', 'SHAFI', 'No', 'uploads/student_images/no_image.png', '03070320337', '', NULL, NULL, NULL, 'Islam', 'SOOMRO', '1998-12-20', 'Male', 'flat no.10 B-block 3rd floor ,river view plaz, hyderabad .', 'soomra muhalla ranpur,khairpur.', '', '45208-8188746-7', '', '', '', '', 'father', 'SHAFI MUHAMMAD', '03322797966', 'TEACHER', '', '', '', 'SHAFI MUHAMMAD', 'Father', '03322797966', 'TEACHER', '', '', 'no', '', '2020-07-01 09:09:02', '0000-00-00 00:00:00'),
(103, '179', '2018/LLB/083', '2018-02-26', 'GHULAM', 'MUAHAMMAD', 'No', 'uploads/student_images/no_image.png', '03042972703', '', NULL, NULL, NULL, 'Islam', 'LAGHARI', '1999-12-08', 'Male', 'village jaffar khan laghari sinjhoro , sanghar.', '', '', '44205-8025171-9', '', '', '', '', 'father', 'KHADIM HUSSAIM', '03421347762', 'LANDLORD', '', '', '', 'KHADIM HUSSAIM', 'Father', '03421347762', 'LANDLORD', '', '', 'no', '', '2020-07-01 09:12:48', '0000-00-00 00:00:00'),
(104, '177', '2018/LLB/084', '2018-02-27', 'MAKHDOOM FURQAN', 'ALI', 'No', 'uploads/student_images/no_image.png', '03013472034', '', NULL, NULL, NULL, 'Islam', 'SOLANGI', '1997-10-16', 'Male', 'sonheri village tharu shah ,nausheroferoz.', '', '', '45301-0769198-1', '', '', '', '', 'father', 'MAKHDOOM QURBAN ALI', '03003030956', 'LANDLORD', '', '', '', 'MAKHDOOM QURBAN ALI', 'Father', '03003030956', 'LANDLORD', '', '', 'no', '', '2020-07-01 09:16:34', '0000-00-00 00:00:00'),
(105, '186', '2018/LLB/085', '2018-03-02', 'NASEER', 'MOHAMMAD', 'No', 'uploads/student_images/no_image.png', '03430387154', '', NULL, NULL, NULL, 'Islam', 'RAWAHI', '1996-07-07', 'Male', 'village jamsheer rawahi ratodero,larkana.', '', '', '43205-6012319-9', '', '', '', '', 'father', 'ALI AKBER', '-', 'POLICE OFFICER', '', '', '', 'ALI AKBER', 'Father', '-', 'POLICE OFFICER', '', '', 'no', '', '2020-07-07 07:31:35', '0000-00-00 00:00:00'),
(106, '190', '2018/LLB/086', '2018-03-02', 'INAYAT', 'HUSSAIN', 'No', 'uploads/student_images/no_image.png', '03058159755', '', NULL, NULL, NULL, 'Islam', 'BIJARANI', '1997-03-03', 'Male', 'gulistan-e-sajjad qasimabad, block -c -75 ,hyderabad.', '', '', '43103-3150959-9', '', '', '', '', 'father', 'NIZAKAT ALI', '03063352556', 'ADVOCATE', '', '', '', 'NIZAKAT ALI', 'Father', '03063352556', 'ADVOCATE', '', '', 'no', '', '2020-07-01 09:24:00', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES
(107, '187', '2018/LLB/087', '2018-03-05', 'BASIT', 'HUSSAIN', 'No', 'uploads/student_images/no_image.png', '03317015550', '', NULL, NULL, NULL, 'Islam', 'MEMON', '1998-09-23', 'Male', 'H.no. 2141/151  near bulhari road shaheedbenazirabad.', '', '', '45402-3537333-3', '', '', '', '', 'father', 'NIZAKAT HUSSAIN', '03033408505', 'GOVT; EMPLOYEE', '', '', '', 'NIZAKAT HUSSAIN', 'Father', '03033408505', 'GOVT; EMPLOYEE', '', '', 'no', '', '2020-07-01 09:28:01', '0000-00-00 00:00:00'),
(108, '189', '2018/LLB/088', '2018-03-03', 'SUHAIL', 'AHMED', 'No', 'uploads/student_images/no_image.png', '03003928012', '', NULL, NULL, NULL, 'Islam', 'GOPANG', '2000-06-01', 'Male', 'H.No. 81 near meer tombs herabad hyderabad.', 'village ghazi khan gopang p.o kandiaro, nausheroferoz.', '', '45302-0159722-1', '', '', '', '', 'father', 'NISAR AHMED', '03033651070', 'GOVT; EMPLOYEE', '', '', '', 'NISAR AHMED', 'Father', '03033651070', 'GOVT; EMPLOYEE', '', '', 'no', '', '2020-07-01 09:32:00', '0000-00-00 00:00:00'),
(109, '058', '2018/LLB/089', '2018-01-10', 'AZHAR', 'ALI', 'No', 'uploads/student_images/no_image.png', '03410240391', '', NULL, NULL, NULL, 'Islam', 'CHANNA', '1999-01-01', 'Male', 'daryabad colony nango line kotri,jamshoro.', '', '', '41504-0497704-7', '', '', '', '', 'father', 'ANDAL KHAN', '03003076891', 'GOVT; EMPLOYEE', '', '', '', 'ANDAL KHAN', 'Father', '03003076891', 'GOVT; EMPLOYEE', '', '', 'no', '', '2020-07-01 09:36:03', '0000-00-00 00:00:00'),
(110, '191', '2018/LLB/090', '2018-03-08', 'GUL', 'MUHAMMAD', 'No', 'uploads/student_images/no_image.png', '03133237686', '', NULL, NULL, NULL, 'Islam', 'DAHRI', '1999-04-02', 'Male', 'flat no. 10 nisar-e-niaz building hirabad hyderabad.', '', '', '41303-1328138-9', '', '', '', '', 'father', 'GHULAM ABBAS', '-', 'LANDLORD', '', '', '', 'GHULAM ABBAS', 'Father', '-', 'LANDLORD', '', '', 'no', '', '2020-07-01 09:39:48', '0000-00-00 00:00:00'),
(111, '193', '2018/LLB/091', '2018-03-07', 'ABDUL', 'SAMAD', 'No', 'uploads/student_images/no_image.png', '03063561261', '', NULL, NULL, NULL, 'Islam', 'MALLAH', '1999-01-01', 'Male', 'H.no.D-23 thandi s.r.t.c colony kfc hotel thandi sarak,hyderabad.', '', '', '41306-5973522-7', '', '', '', '', 'father', 'AIJAZ ALI', '03123355251', 'GOVT; EMPLOYEE', '', '', '', 'AIJAZ ALI', 'Father', '03123355251', 'GOVT; EMPLOYEE', '', '', 'no', '', '2020-07-01 09:43:41', '0000-00-00 00:00:00'),
(112, '171', '2018/LLB/092', '2018-03-18', 'ASHFAQUE', 'ALI', 'No', 'uploads/student_images/no_image.png', '03047158606', '', NULL, NULL, NULL, 'Islam', 'GHANGHRO', '1999-02-02', 'Male', 'village bakhar khan ghanghro ,kandiaro,nausheroferoz.', '', '', '-', '', '', '', '', 'father', 'RASOOL BUX ', '03002776439', '-', '', '', '', 'RASOOL BUX', 'Father', '03002776439', '-', '', '', 'no', '', '2020-07-01 09:47:36', '0000-00-00 00:00:00'),
(113, '057', '2018/LLB/094', '2018-03-10', 'ZAHEER', 'AHMED', 'No', 'uploads/student_images/no_image.png', '03103791511', '', NULL, NULL, NULL, 'Islam', 'SUBUHPOTO', '1998-01-26', 'Male', 'H.NO.1440 muhalla satti ward no 7-a hala new ,matiari.', '', '', '41802-0608154-1', '', '', '', '', 'father', 'MUHAMMAD ASLAM', '03151301017', 'LANDLORD', '', '', '', 'MUHAMMAD ASLAM', 'Father', '03151301017', 'LANDLORD', '', '', 'no', '', '2020-07-01 09:53:05', '0000-00-00 00:00:00'),
(114, '052', '2018/LLB/095', '2018-03-03', 'MOHAMMAD', 'KHAN', 'No', 'uploads/student_images/no_image.png', '03052434664', '', NULL, NULL, NULL, 'Islam', 'RIND', '2000-02-01', 'Male', 'near hascol petrol pump sehwan sharif ,jamshoro.', '', '', '41506-0454271-5', '', '', '', '', 'father', 'NOOR MOHAMMAD', '03068377799', 'LANDLORD', '', '', '', 'NOOR MOHAMMAD', 'Father', '03068377799', 'LANDLORD', '', '', 'no', '', '2020-07-01 09:56:43', '0000-00-00 00:00:00'),
(115, '049', '2018/LLB/096', '2018-03-12', 'ABDUL', 'HAMEED', 'No', 'uploads/student_images/no_image.png', '03083110006', '', NULL, NULL, NULL, 'Islam', 'SAND', '1996-01-25', 'Male', 'village meer hassan gadehi k.n shah, dadu.', '', '', '41203-7064933-9', '', '', '', '', 'father', 'MUHAMMAD URIS ', '-', 'FARMER', '', '', '', 'MUHAMMAD URIS', 'Father', '-', 'FARMER', '', '', 'no', '', '2020-07-01 09:59:55', '0000-00-00 00:00:00'),
(116, '066', '2018/LLB/097', '2018-03-13', 'UROOJ', 'FATIMA', 'No', 'uploads/student_images/no_image.png', '03423186722', '', NULL, NULL, NULL, 'Islam', 'BARICHO', '2000-04-08', 'Female', 'qalanderabad colony baricho chowk kotri,jamshoro.', '', '', '41504-0741662-6', '', '', '', '', 'father', 'GHULAM RAZA', '03113088877', 'GOVT; EMPLOYEE', '', '', '', 'GHULAM RAZA', 'Father', '03113088877', 'GOVT; EMPLOYEE', '', '', 'no', '', '2020-07-01 10:03:30', '0000-00-00 00:00:00'),
(117, '069', '2018/LLB/098', '2018-03-13', 'YOUNIS', 'HABIB', 'No', 'uploads/student_images/no_image.png', '03153236707', '', NULL, NULL, NULL, 'Islam', 'LASHARI', '2000-02-05', 'Male', 'housing society nawabshah ghulshan-e-dawood ,shaheebenazirabad.', '', '', '45208-6213095-3', '', '', '', '', 'father', 'HABIB-UR-REHMAN', '03412232277', 'POLICE OFFICER', '', '', '', 'HABIB-UR-REHMAN', 'Father', '03412232277', 'POLICE OFFICER', '', '', 'no', '', '2020-07-01 10:07:07', '0000-00-00 00:00:00'),
(118, '026', '2018/LLB/100', '2018-03-14', 'SHOAIB', 'KORAI', 'No', 'uploads/student_images/no_image.png', '03083000913', '', NULL, NULL, NULL, 'Islam', 'KORAI', '2000-10-10', 'Male', 'jagatabad muhalla near samejo house ,dadu.', '', '', '41201-0129010-9', '', '', '', '', 'father', 'MUHAMMAD SIDDIQUE ', '03052354288', 'GOVT; EMPLOYEE', '', '', '', 'MUHAMMAD SIDDIQUE', 'Father', '03052354288', 'GOVT; EMPLOYEE', '', '', 'no', '', '2020-07-01 10:10:53', '0000-00-00 00:00:00'),
(119, '103', '2018/LLB/020', '2018-01-11', 'PREH', 'TALPUR', 'No', 'uploads/student_images/no_image.png', '03170389906', '', NULL, NULL, NULL, 'Islam', 'TALPUR', '1991-09-11', 'Female', 'H.no. B21 sindh university employee housing society phase 1 jamshoro.', '', '', '41303-7803679-4', '', '', '', '', 'father', 'FAROOQ AHMED', '03478885888', 'LANDLORD', '', '', '', 'FAROOQ AHMED', 'Father', '03478885888', 'LANDLORD', '', '', 'no', '', '2020-07-01 10:36:11', '0000-00-00 00:00:00'),
(120, '025', '2018/LLB/093', '2020-07-01', 'MUQADUS', 'NOOR', 'No', 'uploads/student_images/no_image.png', '-', '', NULL, NULL, NULL, 'Islam', 'KAKA', '1995-12-14', 'Female', 'H.NO. A-150 phse 1 S.E.U.H. jamshoro.', '', '', '42301-0555968-0', '', '', '', '', 'father', 'NOOR MUHAMMAD ', '03212978202', 'LANDLORD', '', '', '', 'NOOR MUHAMMAD', 'Father', '03212978202', 'LANDLORD', '', '', 'no', '', '2020-07-01 10:40:06', '0000-00-00 00:00:00'),
(121, '029', '2018/LLB/007', '2018-03-30', 'BILAWAL', 'ALI', 'No', 'uploads/student_images/no_image.png', '03483938823', '', NULL, NULL, NULL, 'Islam', 'CHHACHHAR', '1996-07-27', 'Male', ' village wada chhachhar manjhand amri, jamshoro.', '', '', '41500-0349270-1', '', '', '', '', 'father', 'HUSSAIN BUX ', '03456089737', 'FARMER', '', '', '', 'HUSSAIN BUX', 'Father', '03456089737', 'FARMER', '', '', 'no', '', '2020-07-01 10:43:37', '0000-00-00 00:00:00'),
(122, '148', '2018/LLB/099', '2018-03-18', 'SAADULLAH', 'GAHOTHI', 'No', 'uploads/student_images/no_image.png', '03083512908', '', NULL, NULL, NULL, 'Islam', 'GAHOTHI', '1997-05-03', 'Male', 'arbab muhalla new hala near arbab imam bargah, matiari.', '', '', '41301-2809237-9', '', '', '', '', 'father', 'GHULAM RASOOL ', '03008373890', 'ENGINEER (R)', '', '', '', 'GHULAM RASOOL', 'Father', '03008373890', 'ENGINEER (R)', '', '', 'no', '', '2020-07-01 10:47:51', '0000-00-00 00:00:00'),
(123, '001', 'LLB/2KI9/001', '2019-05-02', 'MOHAMMAD', 'AHSAN', 'No', 'uploads/student_images/no_image.png', '03472491032', '', NULL, NULL, NULL, 'Islam', 'KALHORO', '2001-04-10', 'Male', 'B-22 MOHAMMADI TOWN ,WADHU WAH ROAD, QASIMABAD ,HYDERABAD.', 'EID GAH MUHALLA,RADHAN STATION ,MEHAR  ,DADU.', '', '41205-4094136-7', '', '', '', '', 'father', 'AZIZ-U-RAHMAN', '-', 'GOVT; EMPLOYEE', '', '', '', 'AZIZ-U-RAHMAN', 'Father', '-', 'GOVT; EMPLOYEE', '', '', 'no', '', '2020-07-07 10:22:26', '0000-00-00 00:00:00'),
(124, '002', '2019/LLB/002', '2019-06-11', 'ASFANDYAR', 'ABBASI', 'No', 'uploads/student_images/no_image.png', '03327942966', '', NULL, NULL, NULL, 'Islam', 'ABBASI', '1998-08-15', 'Male', 'H#NO; B-61 AL KHAIR HOUSING SOCIETY NEAR BYPASS, HYDERABAD.', '', '', '41306-0975792-3', '', '', '', '', 'father', 'JUNAID ABBASI', '-', 'POLICE OFFICER', '', '', '', 'JUNAID ABBASI', 'Father', '-', 'POLICE OFFICER', '', '', 'no', '', '2020-07-07 10:27:26', '0000-00-00 00:00:00'),
(125, '003', '2019/LLB/003', '2018-12-07', 'JAVED', 'ALI', 'No', 'uploads/student_images/no_image.png', '03033400735', '', NULL, NULL, NULL, 'Islam', 'HALEPOTO', '1999-01-05', 'Male', 'H#NO; A-57 MIR HASSANABAD,HUSSAINABAD,HYDERABAD.', 'VILLAGE TALTI SEHWAN,JAMSHORO.', '', '41506-0359745-7', '', '', '', '', 'father', 'MUHAMMAD MOOSA', '-', 'GOVT; EMPLOYEE', '', '', '', 'MUHAMMAD MOOSA', 'Father', '-', 'GOVT; EMPLOYEE', '', '', 'no', '', '2020-07-07 10:32:04', '0000-00-00 00:00:00'),
(126, '4', '2019/LLB/004', '2018-12-12', 'AAMIR', 'BIJARANI', 'No', 'uploads/student_images/no_image.png', '03061757907', '', NULL, NULL, NULL, 'Islam', 'BIJARANI', '2001-02-14', 'Male', 'VILLAGE GULZAR KHAN BAHALKANI,TANGWANI,KASHMORE,KANDHKOT.', '', '', '43502-0429026-7', '', '', '', '', 'father', 'ZAKIR HUSSAIN', '-', 'HEAD CONSTABLE', '', '', '', 'ZAKIR HUSSAIN', 'Father', '-', 'HEAD CONSTABLE', '', '', 'no', '', '2020-07-07 10:37:27', '0000-00-00 00:00:00'),
(127, '52', '2019/LLB/005', '2018-12-03', 'GHULAM', 'KAZIM', 'No', 'uploads/student_images/no_image.png', '03041975411', '', NULL, NULL, NULL, 'Islam', 'MAREE-BALOCH', '2001-07-14', 'Male', 'RAESS UMEED ALI MARI ,MEHRABPUR,NAUSHEROFEROZ.', '', '', '45302-8557268-7', '', '', '', '', 'father', 'GHULAM MURTAZA', '-', 'FARMER', '', '', '', 'GHULAM MURTAZA', 'Father', '-', 'FARMER', '', '', 'no', '', '2020-07-07 10:42:15', '0000-00-00 00:00:00'),
(128, '56', '2019/LLB/06', '2019-05-20', 'GHULAM', 'JAN JANAN', 'No', 'uploads/student_images/no_image.png', '03488582706', '', NULL, NULL, NULL, 'Islam', 'KALHORO', '2000-04-20', 'Male', 'B-22A MUHAMADI TOWN WADHU WAH ROAD,QASIMABAD,HYDERABAD.', 'EIDGAH MUHALLA RADHAN STATION ,MEHAR,DADU.', '', '41205-7891505-1', '', '', '', '', 'father', 'AZIZ-U-REHMAN', '-', 'GOVT; EMPLOYEE', '', '', '', 'AZIZ-U-REHMAN', 'Father', '-', 'GOVT; EMPLOYEE', '', '', 'no', '', '2020-07-07 10:47:34', '0000-00-00 00:00:00'),
(129, '080', '2019/LLB/008', '2019-08-26', 'BUSHRA', 'SHABIR', 'No', 'uploads/student_images/no_image.png', '03468900360', '', NULL, NULL, NULL, 'Islam', 'SANGHERA', '1998-12-31', 'Female', 'ALMANSORA COLONY SANGHAR NEAR BOYS DEGREE COLLEGE ,SANGHAR.', '', '', '44205-6470718-2', '', '', '', '', 'father', 'SHABIR HUSSAIN', '-', 'TEACHER', '', '', '', 'SHABIR HUSSAIN', 'Father', '-', 'TEACHER', '', '', 'no', '', '2020-07-07 10:52:28', '0000-00-00 00:00:00'),
(130, '009', '2019/LLB/009', '2019-08-28', 'UMME', 'HAFZA', 'No', 'uploads/student_images/no_image.png', '03332831991', '', NULL, NULL, NULL, 'Islam', 'QUMBRANI', '2000-08-04', 'Male', 'H#NO; 309 MUHALLA UNAR PARA TANDOALLAHYAR.', '', '', '41701-0670751-6', '', '', '', '', 'father', 'NISAR AHMED', '-', 'GOVT; EMPLOYEE', '', '', '', 'NISAR AHMED', 'Father', '-', 'GOVT; EMPLOYEE', '', '', 'no', '', '2020-07-07 10:56:15', '0000-00-00 00:00:00'),
(131, '010', '2019/LLB/010', '2019-09-26', 'ABDUL', 'GHAFFAR', 'No', 'uploads/student_images/no_image.png', '03000867892', '', NULL, NULL, NULL, 'Islam', 'BROHI', '2000-01-10', 'Male', 'VILLAGE EIDEN BROHI BANGUDARO,LARKANA.', '', '', '43205-9835449-7', '', '', '', '', 'father', 'AHMED BUX', '-', 'LANDLORD', '', '', '', 'AHMED BUX', 'Father', '-', 'LANDLORD', '', '', 'no', '', '2020-07-07 11:00:28', '0000-00-00 00:00:00'),
(132, '11', '2019/LLB/011', '2019-08-20', 'ARIF', 'ALI', 'No', 'uploads/student_images/no_image.png', '03032278877', '', NULL, NULL, NULL, 'Islam', 'SAHITO', '2001-07-13', 'Male', 'ALIABAD COLONY HALA NAKA NEAR ISRA UNIVERSITY,HYDERABAD.', '', '', '45302-9697221-5', '', '', '', '', 'father', 'GHULAM MUSTAFA', '-', 'POLICE OFFICER', '', '', '', 'GHULAM MUSTAFA', 'Father', '-', 'POLICE OFFICER', '', '', 'no', '', '2020-07-07 11:04:59', '0000-00-00 00:00:00'),
(133, '012', '2019/LLB/012', '2019-09-23', 'KHALID', 'AMEER', 'No', 'uploads/student_images/no_image.png', '03368777939', '', NULL, NULL, NULL, 'Islam', 'GOPANG', '1992-01-12', 'Male', 'H#NO: 3 A-90 PILAZA S.U.E.C.H JAMSHORO', 'STATION ROAD KAMBER ALI KHAN .', '', '43402-0435749-9', '', '', '', '', 'father', 'AMEER ALI', '-', 'GOVT; EMPLOYEE', '', '', '', 'AMEER ALI', 'Father', '-', 'GOVT; EMPLOYEE', '', '', 'no', '', '2020-07-07 11:09:21', '0000-00-00 00:00:00'),
(134, '13', '2019/LLB/013', '2019-01-01', 'GHULAM', 'QASIM', 'No', 'uploads/student_images/no_image.png', '03450609786', '', NULL, NULL, NULL, 'Islam', 'RAHIMO', '2000-05-04', 'Male', 'FLAT NO: 15 MUSFIRA TOWER PHASE-II QASIMABAD.HYDERABAD.', '', '', '41702-0627075-7', '', '', '', '', 'father', 'ANWAR ALI', '-', 'GOVT; EMPLOYEE', '', '', '', 'ANWAR ALI', 'Father', '-', 'GOVT; EMPLOYEE', '', '', 'no', '', '2020-07-07 11:14:05', '0000-00-00 00:00:00'),
(135, '014', '2019/LLB/014', '2019-08-21', 'ABDUL', 'WAHEED', 'No', 'uploads/student_images/no_image.png', '03450257625', '', NULL, NULL, NULL, 'Islam', 'KALHORO', '1973-02-07', 'Male', 'S.U.E.H.S PHASE-I  A366/2 JAMSHORO.', '', '', '41205-8058044-1', '', '', '', '', 'father', 'GHULAM ABBAS ', '-', 'LANDLORD', '', '', '', 'GHULAM ABBAS', 'Father', '-', 'LANDLORD', '', '', 'no', '', '2020-07-07 11:18:55', '0000-00-00 00:00:00'),
(136, '015', '2019/LLB/015', '2019-09-02', 'PIRAH', 'MEMON', 'No', 'uploads/student_images/no_image.png', '03143878155', '', NULL, NULL, NULL, 'Islam', 'MEMON', '1999-07-08', 'Female', 'GHOUSABAD MUHALLA NEAR CITY SCHOOL ,KOTRI.', '', '', '41504-0727614-4', '', '', '', '', 'father', 'GHULAM MUSTAFA', '-', 'GOVT; EMPLOYEE', '', '', '', 'GHULAM MUSTAFA', 'Father', '-', 'GOVT; EMPLOYEE', '', '', 'no', '', '2020-07-07 11:22:51', '0000-00-00 00:00:00'),
(137, '016', '2019/LLB/016', '2019-09-11', 'ALI', 'RAZA', 'No', 'uploads/student_images/no_image.png', '03000219689', '', NULL, NULL, NULL, 'Islam', 'MANGI', '1997-11-04', 'Male', 'SOCIETY PHASE-II JAMSHORO.', 'VILLAGE JARO MANGI GARHI YASEEN ,SHIKARPUR.', '', '43301-8983713-7', '', '', '', '', 'father', 'GHULAM SHABIR', '-', 'GOVT; EMPLOYEE', '', '', '', 'GHULAM SHABIR', 'Father', '-', 'GOVT; EMPLOYEE', '', '', 'no', '', '2020-07-07 11:28:38', '0000-00-00 00:00:00'),
(138, '017', '2019/LLB/017', '2019-09-02', 'AADIL', 'NAWAZ', 'No', 'uploads/student_images/no_image.png', '03337112345', '', NULL, NULL, NULL, 'Islam', 'KHOSO', '1998-04-30', 'Male', 'VILLAGE MURAD ALI,JHAT PAT ,JAFRABABAD.', '', '', '53403-3032588-7', '', '', '', '', 'father', 'AHMED NAWAZ', '-', '-', '', '', '', 'AHMED NAWAZ', 'Father', '-', '-', '', '', 'no', '', '2020-07-07 11:38:16', '0000-00-00 00:00:00'),
(139, '018', '2019/LLB/018', '2019-09-25', 'ALI', 'AZHAR', 'No', 'uploads/student_images/no_image.png', '03033536923', '', NULL, NULL, NULL, 'Islam', 'KUNBHAR', '2000-05-10', 'Male', 'B#507 ,PHASE-I NEAR POST OFFICE ,ALI PALACE,QASIMABAD,HYDERABAD.', '', '', '44202-0115385-5', '', '', '', '', 'father', 'ALI AKBER', '-', 'GOVT; EMPLOYEE', '', '', '', 'ALI AKBER', 'Father', '-', 'GOVT; EMPLOYEE', '', '', 'no', '', '2020-07-07 11:41:47', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `student_attendences`
--

CREATE TABLE IF NOT EXISTS `student_attendences` (
  `id` int(11) NOT NULL,
  `student_session_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `attendence_type_id` int(11) DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_doc`
--

CREATE TABLE IF NOT EXISTS `student_doc` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `doc` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `student_fees`
--

CREATE TABLE IF NOT EXISTS `student_fees` (
  `id` int(11) NOT NULL,
  `student_session_id` int(11) DEFAULT NULL,
  `feemaster_id` int(11) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `amount_discount` float(10,2) NOT NULL,
  `amount_fine` float(10,2) NOT NULL DEFAULT '0.00',
  `description` text COLLATE utf8_unicode_ci,
  `date` date DEFAULT '0000-00-00',
  `payment_mode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_fees_deposite`
--

CREATE TABLE IF NOT EXISTS `student_fees_deposite` (
  `id` int(11) NOT NULL,
  `student_fees_master_id` int(11) DEFAULT NULL,
  `fee_groups_feetype_id` int(11) DEFAULT NULL,
  `amount_detail` text,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=222 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_fees_deposite`
--

INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES
(16, 24, 6, '{"1":{"amount":"35000.00","date":"2018-01-08","amount_discount":"0","amount_fine":"0","description":"R#01 Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-06-27 09:58:09'),
(17, 25, 6, '{"1":{"amount":"6000","date":"2018-01-08","amount_discount":"0","amount_fine":"0","description":"Rs#o2 Collected By: Admin","payment_mode":"Cash","inv_no":1},"2":{"amount":"6000","date":"2018-02-08","amount_discount":"0","amount_fine":"0","description":"Rs#80 Collected By: Admin","payment_mode":"Cash","inv_no":2},"3":{"amount":"6000","date":"2018-03-07","amount_discount":"0","amount_fine":"0","description":" Collected By: Admin","payment_mode":"Cash","inv_no":3},"4":{"amount":"6000","date":"2018-04-24","amount_discount":"0","amount_fine":"0","description":"Rs#101 Collected By: Admin","payment_mode":"Cash","inv_no":4},"5":{"amount":"6000","date":"2018-06-06","amount_discount":"0","amount_fine":"0","description":"Rs#146 Collected By: Admin","payment_mode":"Cash","inv_no":5},"6":{"amount":"5000","date":"2018-07-11","amount_discount":"0","amount_fine":"0","description":"Rs#162 Collected By: Admin","payment_mode":"Cash","inv_no":6}}', 'no', '2020-06-27 10:07:10'),
(18, 26, 6, '{"1":{"amount":"35000","date":"2018-01-01","amount_discount":"0","amount_fine":"0","description":"Rs#03 Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-06-27 10:10:39'),
(19, 29, 6, '{"1":{"amount":"20000","date":"2018-01-09","amount_discount":"15000","amount_fine":"0","description":"Discount:by Raja Sajjasd Director Admin Collected By: Faizan Ali","payment_mode":"Cash","inv_no":1}}', 'no', '2020-06-29 07:22:16'),
(20, 30, 6, '{"1":{"amount":"18000","date":"2018-01-09","amount_discount":"0","amount_fine":"0","description":"R#08 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":1},"2":{"amount":"17000","date":"2019-04-05","amount_discount":"0","amount_fine":"0","description":"R#135 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":2}}', 'no', '2020-06-29 07:24:20'),
(21, 31, 6, '{"1":{"amount":"35000","date":"2018-01-09","amount_discount":"0","amount_fine":"0","description":"R#09 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":1}}', 'no', '2020-06-29 07:25:45'),
(22, 32, 6, '{"1":{"amount":"35000","date":"2018-01-01","amount_discount":"0","amount_fine":"0","description":"R#10 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":1}}', 'no', '2020-06-29 07:26:55'),
(23, 33, 6, '{"1":{"amount":"35000","date":"2018-01-01","amount_discount":"0","amount_fine":"0","description":"R#11 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":1}}', 'no', '2020-06-29 07:31:52'),
(24, 34, 6, '{"1":{"amount":"15000","date":"2018-01-01","amount_discount":"0","amount_fine":"0","description":"R#12 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":1},"2":{"amount":"20000","date":"2018-04-30","amount_discount":"0","amount_fine":"0","description":"R#147 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":2}}', 'no', '2020-06-29 07:36:18'),
(25, 35, 6, '{"1":{"amount":"35000","date":"2018-01-10","amount_discount":"0","amount_fine":"0","description":"R#13 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":1}}', 'no', '2020-06-29 07:39:47'),
(26, 36, 6, '{"1":{"amount":"35000","date":"2018-03-14","amount_discount":"0","amount_fine":"0","description":"R#15 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":1}}', 'no', '2020-06-29 07:41:05'),
(27, 37, 6, '{"1":{"amount":"35000","date":"2018-01-10","amount_discount":"0","amount_fine":"0","description":"R#15 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":1}}', 'no', '2020-06-29 07:44:15'),
(28, 38, 6, '{"1":{"amount":"35000","date":"2018-01-18","amount_discount":"0","amount_fine":"0","description":"R##16 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":1}}', 'no', '2020-06-29 07:45:54'),
(29, 39, 6, '{"1":{"amount":"20000","date":"2018-01-10","amount_discount":"0","amount_fine":"0","description":"R#17 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":1},"2":{"amount":"15000","date":"2018-03-05","amount_discount":"0","amount_fine":"0","description":"R#97 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":2}}', 'no', '2020-06-29 07:47:42'),
(30, 40, 6, '{"1":{"amount":"35000","date":"2018-03-14","amount_discount":"0","amount_fine":"0","description":"R#112 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":1}}', 'no', '2020-06-29 07:48:37'),
(31, 41, 6, '{"1":{"amount":"20000","date":"2018-01-10","amount_discount":"0","amount_fine":"0","description":"R#19 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":1},"2":{"amount":"15000","date":"2018-05-09","amount_discount":"0","amount_fine":"0","description":"R#152 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":2}}', 'no', '2020-06-29 07:50:02'),
(32, 28, 6, '{"1":{"amount":"35000","date":"2018-01-01","amount_discount":"0","amount_fine":"0","description":"R#5 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":1}}', 'no', '2020-06-29 08:57:01'),
(33, 27, 6, '{"1":{"amount":"5000","date":"2018-01-08","amount_discount":"30000","amount_fine":"0","description":"Scholarship  Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-02 09:19:28'),
(34, 43, 6, '{"1":{"amount":"35000","date":"2018-01-01","amount_discount":"0","amount_fine":"0","description":"R#22 Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-02 09:21:51'),
(36, 42, 6, '{"1":{"amount":"35000","date":"2018-01-11","amount_discount":"0","amount_fine":"0","description":"R#21 Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-02 09:23:38'),
(37, 44, 6, '{"1":{"amount":"20000","date":"2018-01-11","amount_discount":"0","amount_fine":"0","description":"R#23 Collected By: Admin","payment_mode":"Cash","inv_no":1},"2":{"amount":"15000","date":"2018-03-05","amount_discount":"0","amount_fine":"0","description":"R#96 Collected By: Admin","payment_mode":"Cash","inv_no":2}}', 'no', '2020-07-02 09:26:33'),
(38, 45, 6, '{"1":{"amount":"35000","date":"2018-03-29","amount_discount":"0","amount_fine":"0","description":"R#129 Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-02 09:27:39'),
(39, 46, 6, '{"1":{"amount":"5000","date":"2018-01-11","amount_discount":"0","amount_fine":"0","description":"R#25 Collected By: Admin","payment_mode":"Cash","inv_no":1},"2":{"amount":"10000","date":"2018-02-20","amount_discount":"0","amount_fine":"0","description":"R#85 Collected By: Admin","payment_mode":"Cash","inv_no":2},"3":{"amount":"10000","date":"2018-03-06","amount_discount":"0","amount_fine":"0","description":"R#99 Collected By: Admin","payment_mode":"Cash","inv_no":3},"4":{"amount":"10000","date":"2018-06-13","amount_discount":"0","amount_fine":"0","description":"R#166 Collected By: Admin","payment_mode":"Cash","inv_no":4}}', 'no', '2020-07-02 09:29:53'),
(40, 48, 6, '{"1":{"amount":"20000","date":"2018-03-14","amount_discount":"0","amount_fine":"0","description":"R#114 Collected By: Admin","payment_mode":"Cash","inv_no":1},"2":{"amount":"15000","date":"2018-04-24","amount_discount":"0","amount_fine":"0","description":"R#143 Collected By: Admin","payment_mode":"Cash","inv_no":2}}', 'no', '2020-07-02 09:31:22'),
(41, 47, 6, '{"1":{"amount":"17500","date":"2018-01-12","amount_discount":"0","amount_fine":"0","description":"R#26 Collected By: Admin","payment_mode":"Cash","inv_no":1},"2":{"amount":"17000","date":"2018-06-11","amount_discount":"0","amount_fine":"0","description":" Collected By: Admin","payment_mode":"Cash","inv_no":2},"3":{"amount":"000","date":"2018-01-30","amount_discount":"500","amount_fine":"0","description":" Collected By: Admin","payment_mode":"Cash","inv_no":3}}', 'no', '2020-07-02 20:04:34'),
(42, 49, 6, '{"1":{"amount":"35000","date":"2018-03-13","amount_discount":"0","amount_fine":"0","description":"R#107 Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-02 09:31:59'),
(43, 50, 6, '{"1":{"amount":"35000","date":"2018-01-13","amount_discount":"0","amount_fine":"0","description":"R#29 Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-02 09:33:28'),
(44, 51, 6, '{"1":{"amount":"6000","date":"2018-01-13","amount_discount":"0","amount_fine":"0","description":"R#30 Collected By: Admin","payment_mode":"Cash","inv_no":1},"2":{"amount":"6000","date":"2018-02-12","amount_discount":"0","amount_fine":"0","description":"R#71 Collected By: Admin","payment_mode":"Cash","inv_no":2},"3":{"amount":"12000","date":"2018-04-18","amount_discount":"0","amount_fine":"0","description":"R#140 Collected By: Admin","payment_mode":"Cash","inv_no":3},"4":{"amount":"6000","date":"2018-06-01","amount_discount":"0","amount_fine":"0","description":"R#160 Collected By: Admin","payment_mode":"Cash","inv_no":4},"5":{"amount":"5000","date":"2018-10-01","amount_discount":"0","amount_fine":"0","description":"R#233 Collected By: Admin","payment_mode":"Cash","inv_no":5}}', 'no', '2020-07-02 09:39:20'),
(45, 52, 6, '{"1":{"amount":"35000","date":"2018-01-13","amount_discount":"0","amount_fine":"0","description":"R#31 Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-02 09:40:01'),
(46, 53, 6, '{"1":{"amount":"20000","date":"2018-03-15","amount_discount":"0","amount_fine":"0","description":"R#116 Collected By: Admin","payment_mode":"Cash","inv_no":1},"2":{"amount":"15000","date":"2018-05-15","amount_discount":"0","amount_fine":"0","description":"R#159 Collected By: Admin","payment_mode":"Cash","inv_no":2}}', 'no', '2020-07-02 09:40:43'),
(47, 54, 6, '{"1":{"amount":"35000","date":"2018-03-15","amount_discount":"0","amount_fine":"0","description":"R#119 Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-02 09:41:17'),
(48, 55, 6, '{"1":{"amount":"15000","date":"2018-04-02","amount_discount":"0","amount_fine":"0","description":"R#132 Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-02 09:41:50'),
(49, 56, 6, '{"1":{"amount":"30000","date":"2018-01-13","amount_discount":"0","amount_fine":"0","description":"R#35 Collected By: Admin","payment_mode":"Cash","inv_no":1},"2":{"amount":"5000","date":"2018-06-07","amount_discount":"0","amount_fine":"0","description":"R#163 Collected By: Admin","payment_mode":"Cash","inv_no":2}}', 'no', '2020-07-02 09:48:07'),
(50, 57, 6, '{"1":{"amount":"35000","date":"2018-01-13","amount_discount":"0","amount_fine":"0","description":"R#36 Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-02 09:48:50'),
(51, 58, 6, '{"1":{"amount":"35000","date":"2018-01-13","amount_discount":"0","amount_fine":"0","description":"R#37 Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-02 09:48:58'),
(52, 59, 6, '{"1":{"amount":"35000","date":"2018-01-13","amount_discount":"0","amount_fine":"0","description":"R#38 Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-02 09:49:22'),
(53, 60, 6, '{"1":{"amount":"20000","date":"2018-01-15","amount_discount":"0","amount_fine":"0","description":"R#39 Collected By: Admin","payment_mode":"Cash","inv_no":1},"2":{"amount":"10000","date":"2018-06-22","amount_discount":"0","amount_fine":"0","description":"R#167 Collected By: Admin","payment_mode":"Cash","inv_no":2},"3":{"amount":"5000","date":"2018-10-01","amount_discount":"0","amount_fine":"0","description":"R#238 Collected By: Admin","payment_mode":"Cash","inv_no":3}}', 'no', '2020-07-02 12:29:10'),
(54, 61, 6, '{"1":{"amount":"15000","date":"2018-01-16","amount_discount":"0","amount_fine":"0","description":"R#40 Collected By: Admin","payment_mode":"Cash","inv_no":1},"2":{"amount":"20000","date":"2018-06-13","amount_discount":"0","amount_fine":"0","description":"R#165 Collected By: Admin","payment_mode":"Cash","inv_no":2}}', 'no', '2020-07-02 09:51:15'),
(55, 64, 6, '{"1":{"amount":"35000","date":"2018-01-17","amount_discount":"0","amount_fine":"0","description":"R#42 Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-02 09:52:17'),
(56, 63, 6, '{"1":{"amount":"35000","date":"2018-01-16","amount_discount":"0","amount_fine":"0","description":"R#41 Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-02 09:52:24'),
(57, 65, 6, '{"1":{"amount":"35000","date":"2018-01-20","amount_discount":"0","amount_fine":"0","description":"R#43\\n Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-02 09:52:55'),
(58, 66, 6, '{"1":{"amount":"35000","date":"2018-01-31","amount_discount":"0","amount_fine":"0","description":"44 Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-02 09:53:09'),
(60, 68, 6, '{"1":{"amount":"20000","date":"2018-01-22","amount_discount":"0","amount_fine":"0","description":"R#46 Collected By: Admin","payment_mode":"Cash","inv_no":1},"2":{"amount":"15000","date":"2018-05-12","amount_discount":"0","amount_fine":"0","description":"R#158 Collected By: Admin","payment_mode":"Cash","inv_no":2}}', 'no', '2020-07-02 10:03:16'),
(61, 69, 6, '{"1":{"amount":"21000","date":"2018-01-26","amount_discount":"0","amount_fine":"0","description":"R#47 Collected By: Admin","payment_mode":"Cash","inv_no":1},"2":{"amount":"8000","date":"2018-05-10","amount_discount":"0","amount_fine":"0","description":"R#156 Collected By: Admin","payment_mode":"Cash","inv_no":2},"3":{"amount":"6000","date":"2018-12-10","amount_discount":"0","amount_fine":"0","description":"R#317 Collected By: Admin","payment_mode":"Cash","inv_no":3}}', 'no', '2020-07-02 10:00:01'),
(62, 70, 6, '{"1":{"amount":"30000","date":"2018-02-13","amount_discount":"0","amount_fine":"0","description":"R#47 Collected By: Admin","payment_mode":"Cash","inv_no":1},"2":{"amount":"5000","date":"2018-05-01","amount_discount":"0","amount_fine":"0","description":"R#157 Collected By: Admin","payment_mode":"Cash","inv_no":2}}', 'no', '2020-07-02 10:00:50'),
(63, 71, 6, '{"2":{"amount":"5000","date":"2018-05-03","amount_discount":"0","amount_fine":"0","description":"R#151 Collected By: Admin","payment_mode":"Cash","inv_no":2},"3":{"amount":"30000","date":"2018-03-15","amount_discount":"0","amount_fine":"0","description":"R#120 Collected By: Admin","payment_mode":"Cash","inv_no":3}}', 'no', '2020-07-02 10:01:44'),
(64, 73, 6, '{"1":{"amount":"35000","date":"2018-01-29","amount_discount":"0","amount_fine":"0","description":"R#51 Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-02 10:02:22'),
(65, 74, 6, '{"1":{"amount":"20000","date":"2018-02-16","amount_discount":"0","amount_fine":"0","description":"R#82 Collected By: Admin","payment_mode":"Cash","inv_no":1},"2":{"amount":"15000","date":"2018-04-12","amount_discount":"0","amount_fine":"0","description":"R#141 Collected By: Admin","payment_mode":"Cash","inv_no":2}}', 'no', '2020-07-02 10:03:43'),
(66, 75, 6, '{"1":{"amount":"35000","date":"2018-02-01","amount_discount":"0","amount_fine":"0","description":"R#53 Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-02 10:04:18'),
(67, 72, 6, '{"1":{"amount":"18000","date":"2018-01-29","amount_discount":"0","amount_fine":"0","description":"R#50 Collected By: Admin","payment_mode":"Cash","inv_no":1},"2":{"amount":"10000","date":"2020-05-03","amount_discount":"0","amount_fine":"0","description":"R#149 Collected By: Admin","payment_mode":"Cash","inv_no":2},"3":{"amount":"7000","date":"2019-03-23","amount_discount":"0","amount_fine":"0","description":"R#435 Collected By: Admin","payment_mode":"Cash","inv_no":3}}', 'no', '2020-07-02 10:06:29'),
(68, 76, 6, '{"1":{"amount":"35000","date":"2018-02-02","amount_discount":"0","amount_fine":"0","description":"R#54 Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-02 10:04:45'),
(69, 77, 6, '{"1":{"amount":"35000","date":"2018-02-02","amount_discount":"0","amount_fine":"0","description":"R#55 Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-02 10:05:09'),
(70, 78, 6, '{"1":{"amount":"35000","date":"2018-02-05","amount_discount":"0","amount_fine":"0","description":"R#56 Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-02 10:05:45'),
(71, 79, 6, '{"1":{"amount":"35000","date":"2018-02-05","amount_discount":"0","amount_fine":"0","description":"R#57 Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-02 10:06:15'),
(72, 80, 6, '{"1":{"amount":"25000","date":"2018-02-06","amount_discount":"0","amount_fine":"0","description":"R#58 Collected By: Admin","payment_mode":"Cash","inv_no":1},"2":{"amount":"10000","date":"2020-03-21","amount_discount":"0","amount_fine":"0","description":"R#127 Collected By: Admin","payment_mode":"Cash","inv_no":2}}', 'no', '2020-07-02 10:07:50'),
(73, 81, 6, '{"1":{"amount":"9000","date":"2018-03-27","amount_discount":"0","amount_fine":"0","description":"R#128\\n Collected By: Admin","payment_mode":"Cash","inv_no":1},"2":{"amount":"11000","date":"2018-04-02","amount_discount":"0","amount_fine":"0","description":"R#131 Collected By: Admin","payment_mode":"Cash","inv_no":2},"3":{"amount":"10000","date":"2018-07-06","amount_discount":"0","amount_fine":"0","description":"R#169 Collected By: Admin","payment_mode":"Cash","inv_no":3},"4":{"amount":"5000","date":"2018-12-05","amount_discount":"0","amount_fine":"0","description":"R#309 Collected By: Admin","payment_mode":"Cash","inv_no":4}}', 'no', '2020-07-02 10:24:49'),
(74, 82, 6, '{"1":{"amount":"15000","date":"2018-03-16","amount_discount":"0","amount_fine":"0","description":"R#121\\n Collected By: Admin","payment_mode":"Cash","inv_no":1},"2":{"amount":"20000","date":"2018-03-21","amount_discount":"0","amount_fine":"0","description":"R#126 Collected By: Admin","payment_mode":"Cash","inv_no":2}}', 'no', '2020-07-02 10:14:22'),
(75, 84, 6, '{"1":{"amount":"20000","date":"2018-02-27","amount_discount":"0","amount_fine":"0","description":"R#62 Collected By: Admin","payment_mode":"Cash","inv_no":1},"2":{"amount":"15000","date":"2018-04-16","amount_discount":"0","amount_fine":"0","description":"R#139 Collected By: Admin","payment_mode":"Cash","inv_no":2}}', 'no', '2020-07-02 10:16:54'),
(76, 85, 6, '{"1":{"amount":"33000","date":"2018-02-07","amount_discount":"0","amount_fine":"0","description":"R#63 Collected By: Admin","payment_mode":"Cash","inv_no":1},"2":{"amount":"2000","date":"2020-06-11","amount_discount":"0","amount_fine":"0","description":"R#164 Collected By: Admin","payment_mode":"Cash","inv_no":2}}', 'no', '2020-07-02 10:17:38'),
(77, 86, 6, '{"1":{"amount":"33000","date":"2018-02-07","amount_discount":"2000","amount_fine":"0","description":"R#64 Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-02 10:18:09'),
(78, 87, 6, '{"1":{"amount":"10000","date":"2018-02-27","amount_discount":"0","amount_fine":"0","description":"R#92 Collected By: Admin","payment_mode":"Cash","inv_no":1},"2":{"amount":"6000","date":"2018-04-02","amount_discount":"0","amount_fine":"0","description":"R#133 Collected By: Admin","payment_mode":"Cash","inv_no":2},"3":{"amount":"8500","date":"2018-07-07","amount_discount":"0","amount_fine":"0","description":"R#170 Collected By: Admin","payment_mode":"Cash","inv_no":3},"4":{"amount":"5000","date":"2018-09-29","amount_discount":"5500","amount_fine":"0","description":"R#221 Collected By: Admin","payment_mode":"Cash","inv_no":4}}', 'no', '2020-07-02 10:24:11'),
(79, 88, 6, '{"1":{"amount":"25000","date":"2018-02-07","amount_discount":"10000","amount_fine":"0","description":"R#66 Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-02 10:27:11'),
(80, 89, 6, '{"1":{"amount":"10000","date":"2018-02-08","amount_discount":"0","amount_fine":"0","description":"R#67 Collected By: Admin","payment_mode":"Cash","inv_no":1},"2":{"amount":"20000","date":"2018-04-13","amount_discount":"0","amount_fine":"0","description":"R#142 Collected By: Admin","payment_mode":"Cash","inv_no":2},"3":{"amount":"5000","date":"2018-05-09","amount_discount":"0","amount_fine":"0","description":"R#155 Collected By: Admin","payment_mode":"Cash","inv_no":3}}', 'no', '2020-07-02 10:28:32'),
(82, 90, 6, '{"1":{"amount":"17500","date":"2020-02-08","amount_discount":"0","amount_fine":"0","description":"R#68 Collected By: Admin","payment_mode":"Cash","inv_no":1},"2":{"amount":"17500","date":"2018-04-24","amount_discount":"0","amount_fine":"0","description":"R#145 Collected By: Admin","payment_mode":"Cash","inv_no":2}}', 'no', '2020-07-02 10:32:05'),
(83, 91, 6, '{"1":{"amount":"20000","date":"2018-02-09","amount_discount":"0","amount_fine":"0","description":"R#69 Collected By: Admin","payment_mode":"Cash","inv_no":1},"2":{"amount":"15000","date":"2018-04-06","amount_discount":"0","amount_fine":"0","description":"R#138 Collected By: Admin","payment_mode":"Cash","inv_no":2}}', 'no', '2020-07-02 10:33:48'),
(84, 92, 6, '{"1":{"amount":"35000","date":"2018-02-12","amount_discount":"0","amount_fine":"0","description":"R#70 Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-02 10:34:05'),
(85, 93, 6, '{"1":{"amount":"25000","date":"2018-02-12","amount_discount":"0","amount_fine":"0","description":"R#72\\n Collected By: Admin","payment_mode":"Cash","inv_no":1},"2":{"amount":"10000","date":"2018-05-09","amount_discount":"0","amount_fine":"0","description":"R#153 Collected By: Admin","payment_mode":"Cash","inv_no":2}}', 'no', '2020-07-02 10:34:52'),
(86, 94, 6, '{"1":{"amount":"35000","date":"2018-02-12","amount_discount":"0","amount_fine":"0","description":"R#73 Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-02 10:35:10'),
(87, 95, 6, '{"1":{"amount":"35000","date":"2018-02-14","amount_discount":"0","amount_fine":"0","description":"R#75 Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-02 10:35:33'),
(88, 96, 6, '{"1":{"amount":"20000","date":"2018-02-14","amount_discount":"0","amount_fine":"0","description":"R#76 Collected By: Admin","payment_mode":"Cash","inv_no":1},"2":{"amount":"15000","date":"2018-05-04","amount_discount":"0","amount_fine":"0","description":"R#150 Collected By: Admin","payment_mode":"Cash","inv_no":2}}', 'no', '2020-07-02 10:36:17'),
(89, 97, 6, '{"1":{"amount":"20000","date":"2018-02-14","amount_discount":"0","amount_fine":"0","description":"R#77 Collected By: Admin","payment_mode":"Cash","inv_no":1},"2":{"amount":"15000","date":"2018-03-10","amount_discount":"0","amount_fine":"0","description":"R 438 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":2}}', 'no', '2020-07-07 07:44:35'),
(90, 98, 6, '{"1":{"amount":"10000","date":"2018-03-15","amount_discount":"0","amount_fine":"0","description":"R#118 Collected By: Admin","payment_mode":"Cash","inv_no":1},"2":{"amount":"8000","date":"2018-10-01","amount_discount":"0","amount_fine":"0","description":"R#236 Collected By: Admin","payment_mode":"Cash","inv_no":2},"3":{"amount":"7000","date":"2020-01-20","amount_discount":"0","amount_fine":"0","description":"C#052\\nRed Collected By: Admin","payment_mode":"Cash","inv_no":3},"4":{"amount":"10000","date":"2020-06-16","amount_discount":"0","amount_fine":"0","description":"C#281\\nRed\\nTotal 15000\\n10000 1st semester\\n5000 2nd semester Collected By: Admin","payment_mode":"Cash","inv_no":4}}', 'no', '2020-07-07 11:20:27'),
(91, 99, 6, '{"1":{"amount":"35000","date":"2018-04-03","amount_discount":"0","amount_fine":"0","description":"R#134 Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-02 10:43:44'),
(92, 100, 6, '{"1":{"amount":"6000","date":"2018-02-21","amount_discount":"0","amount_fine":"0","description":"R#86 Collected By: Admin","payment_mode":"Cash","inv_no":1},"2":{"amount":"6000","date":"2018-04-06","amount_discount":"0","amount_fine":"0","description":"R#137 Collected By: Admin","payment_mode":"Cash","inv_no":2},"3":{"amount":"23000","date":"2018-06-11","amount_discount":"0","amount_fine":"0","description":"R#161 Collected By: Admin","payment_mode":"Cash","inv_no":3}}', 'no', '2020-07-02 10:44:54'),
(93, 101, 6, '{"1":{"amount":"35000","date":"2018-05-21","amount_discount":"0","amount_fine":"0","description":"R# Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-02 10:53:57'),
(94, 102, 6, '{"1":{"amount":"9000","date":"2018-02-16","amount_discount":"0","amount_fine":"0","description":"R#83\\n Collected By: Admin","payment_mode":"Cash","inv_no":1},"2":{"amount":"26000","date":"2018-04-24","amount_discount":"0","amount_fine":"0","description":"R#144 Collected By: Admin","payment_mode":"Cash","inv_no":2}}', 'no', '2020-07-02 10:54:39'),
(95, 103, 6, '{"1":{"amount":"20000","date":"2018-02-23","amount_discount":"0","amount_fine":"0","description":"R#88\\n Collected By: Admin","payment_mode":"Cash","inv_no":1},"2":{"amount":"15000","date":"2018-02-28","amount_discount":"0","amount_fine":"0","description":"R# Collected By: Admin","payment_mode":"Cash","inv_no":2}}', 'no', '2020-07-02 10:59:08'),
(96, 104, 6, '{"1":{"amount":"35000","date":"2018-02-26","amount_discount":"0","amount_fine":"0","description":"R#89 Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-02 11:00:01'),
(97, 105, 6, '{"1":{"amount":"35000","date":"2018-02-26","amount_discount":"0","amount_fine":"0","description":"R#90 Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-02 11:00:28'),
(98, 106, 6, '{"1":{"amount":"35000","date":"2018-02-27","amount_discount":"0","amount_fine":"0","description":"R#91 Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-02 11:00:58'),
(99, 107, 6, '{"1":{"amount":"10000","date":"2018-03-02","amount_discount":"0","amount_fine":"0","description":"R#93 Collected By: Admin","payment_mode":"Cash","inv_no":1},"2":{"amount":"12000","date":"2018-04-06","amount_discount":"0","amount_fine":"0","description":"R#136 Collected By: Admin","payment_mode":"Cash","inv_no":2},"3":{"amount":"13000","date":"2018-03-13","amount_discount":"0","amount_fine":"0","description":"R#110 Collected By: Admin","payment_mode":"Cash","inv_no":3}}', 'no', '2020-07-02 11:02:21'),
(100, 108, 6, '{"1":{"amount":"35000","date":"2018-03-02","amount_discount":"0","amount_fine":"0","description":"R#94 Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-02 11:02:49'),
(101, 109, 6, '{"1":{"amount":"35000","date":"2018-03-05","amount_discount":"0","amount_fine":"0","description":"R#98 Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-02 11:17:00'),
(102, 110, 6, '{"1":{"amount":"35000","date":"2018-03-03","amount_discount":"0","amount_fine":"0","description":"R#95 Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-02 11:17:28'),
(103, 112, 6, '{"1":{"amount":"6000","date":"2018-03-08","amount_discount":"0","amount_fine":"0","description":"R#102 Collected By: Admin","payment_mode":"Cash","inv_no":1},"2":{"amount":"14000","date":"2018-03-15","amount_discount":"0","amount_fine":"0","description":"R#117 Collected By: Admin","payment_mode":"Cash","inv_no":2},"3":{"amount":"15000","date":"2018-05-09","amount_discount":"0","amount_fine":"0","description":"R#154 Collected By: Admin","payment_mode":"Cash","inv_no":3}}', 'no', '2020-07-02 11:21:05'),
(104, 113, 6, '{"1":{"amount":"35000","date":"2018-03-07","amount_discount":"0","amount_fine":"0","description":"R#100 Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-02 11:21:52'),
(105, 114, 6, '{"1":{"amount":"35000","date":"2018-03-18","amount_discount":"0","amount_fine":"0","description":"R#124 Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-02 11:22:14'),
(106, 115, 6, '{"1":{"amount":"35000","date":"2018-03-10","amount_discount":"0","amount_fine":"0","description":"R#104 Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-02 11:22:45'),
(107, 116, 6, '{"1":{"amount":"35000","date":"2018-03-10","amount_discount":"0","amount_fine":"0","description":"R#105 Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-02 11:23:06'),
(109, 118, 6, '{"1":{"amount":"35000","date":"2018-03-13","amount_discount":"0","amount_fine":"0","description":"R#111 Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-02 11:25:05'),
(110, 119, 6, '{"1":{"amount":"20000","date":"2018-03-13","amount_discount":"0","amount_fine":"0","description":"R#108 Collected By: Admin","payment_mode":"Cash","inv_no":1},"2":{"amount":"10000","date":"2018-07-17","amount_discount":"0","amount_fine":"0","description":"R#175 Collected By: Admin","payment_mode":"Cash","inv_no":2}}', 'no', '2020-07-02 11:27:27'),
(111, 120, 6, '{"1":{"amount":"35000","date":"2018-03-14","amount_discount":"0","amount_fine":"0","description":"R#113 Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-02 11:27:56'),
(112, 121, 6, '{"1":{"amount":"35000","date":"2018-01-11","amount_discount":"0","amount_fine":"0","description":"R#20 Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-02 11:29:07'),
(113, 122, 6, '{"1":{"amount":"35000","date":"2018-04-30","amount_discount":"0","amount_fine":"0","description":"R#148 Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-02 11:29:47'),
(114, 123, 6, '{"1":{"amount":"35000","date":"2018-03-30","amount_discount":"0","amount_fine":"0","description":"R#130 Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-02 11:30:22'),
(115, 124, 6, '{"1":{"amount":"35000","date":"2018-03-18","amount_discount":"0","amount_fine":"0","description":"R#123 Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-02 11:32:27'),
(116, 24, 14, '{"1":{"amount":"30000","date":"2018-10-21","amount_discount":"0","amount_fine":"0","description":"R#257 Collected By: Admin","payment_mode":"Cash","inv_no":1},"2":{"amount":"5000","date":"2019-02-18","amount_discount":"0","amount_fine":"0","description":"R#412 Collected By: Admin","payment_mode":"Cash","inv_no":2}}', 'no', '2020-07-02 19:47:24'),
(117, 25, 14, '{"1":{"amount":"4000","date":"2018-08-13","amount_discount":"0","amount_fine":"0","description":"R#181 Collected By: Admin","payment_mode":"Cash","inv_no":1},"2":{"amount":"6000","date":"2018-09-10","amount_discount":"0","amount_fine":"0","description":"R#208 Collected By: Admin","payment_mode":"Cash","inv_no":2},"3":{"amount":"6000","date":"2018-10-15","amount_discount":"0","amount_fine":"0","description":"R#247 Collected By: Admin","payment_mode":"Cash","inv_no":3},"4":{"amount":"6000","date":"2018-11-22","amount_discount":"0","amount_fine":"0","description":"R#285 Collected By: Admin","payment_mode":"Cash","inv_no":4},"5":{"amount":"6000","date":"2018-12-14","amount_discount":"0","amount_fine":"0","description":"R#322 Collected By: Admin","payment_mode":"Cash","inv_no":5},"6":{"amount":"7000","date":"2019-01-28","amount_discount":"0","amount_fine":"0","description":"R#348 Collected By: Admin","payment_mode":"Cash","inv_no":6}}', 'no', '2020-07-02 19:52:35'),
(118, 26, 14, '{"1":{"amount":"35000","date":"2018-08-17","amount_discount":"0","amount_fine":"0","description":"R#187 Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-02 19:53:10'),
(119, 27, 14, '{"1":{"amount":"0000","date":"2018-08-15","amount_discount":"35000","amount_fine":"0","description":"Scholarship Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-02 19:53:55'),
(120, 28, 14, '{"1":{"amount":"35000","date":"2018-11-06","amount_discount":"0","amount_fine":"0","description":"R#270 Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-02 19:54:27'),
(121, 29, 14, '{"1":{"amount":"25000","date":"2018-08-13","amount_discount":"10000","amount_fine":"0","description":"R#200 Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-02 19:54:58'),
(122, 30, 14, '{"1":{"amount":"30000","date":"2018-11-29","amount_discount":"0","amount_fine":"0","description":"R#291 Collected By: Admin","payment_mode":"Cash","inv_no":1},"2":{"amount":"5000","date":"2018-12-18","amount_discount":"0","amount_fine":"0","description":"R#323 Collected By: Admin","payment_mode":"Cash","inv_no":2}}', 'no', '2020-07-02 19:55:46'),
(123, 31, 14, '{"1":{"amount":"35000","date":"2018-08-28","amount_discount":"0","amount_fine":"0","description":"R#188 Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-02 19:56:09'),
(124, 32, 14, '{"1":{"amount":"35000.00","date":"2018-09-03","amount_discount":"0","amount_fine":"0","description":"R#202 Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-02 19:56:58'),
(125, 33, 14, '{"1":{"amount":"35000","date":"2018-09-03","amount_discount":"0","amount_fine":"0","description":"R#201 Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-02 19:57:17'),
(126, 34, 14, '{"1":{"amount":"15000","date":"2018-08-13","amount_discount":"0","amount_fine":"0","description":"R#178 Collected By: Admin","payment_mode":"Cash","inv_no":1},"2":{"amount":"15000","date":"2018-10-17","amount_discount":"5000","amount_fine":"0","description":"R#253 Collected By: Admin","payment_mode":"Cash","inv_no":2}}', 'no', '2020-07-02 19:57:55'),
(127, 35, 14, '{"1":{"amount":"35000","date":"2018-10-22","amount_discount":"0","amount_fine":"0","description":"R#258 Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-02 19:58:19'),
(128, 37, 14, '{"1":{"amount":"35000","date":"2018-08-13","amount_discount":"0","amount_fine":"0","description":"R#179 Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-02 19:58:38'),
(129, 36, 14, '{"1":{"amount":"30000","date":"2018-10-23","amount_discount":"0","amount_fine":"0","description":"R#262 Collected By: Admin","payment_mode":"Cash","inv_no":1},"2":{"amount":"5000","date":"2018-12-20","amount_discount":"0","amount_fine":"0","description":"R#327 Collected By: Admin","payment_mode":"Cash","inv_no":2}}', 'no', '2020-07-02 19:59:13'),
(130, 38, 14, '{"1":{"amount":"35000","date":"2018-08-13","amount_discount":"0","amount_fine":"0","description":"R#180 Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-02 20:00:01'),
(131, 39, 14, '{"1":{"amount":"15000","date":"2018-09-11","amount_discount":"0","amount_fine":"0","description":"R#212 Collected By: Admin","payment_mode":"Cash","inv_no":1},"2":{"amount":"20000","date":"2018-10-29","amount_discount":"0","amount_fine":"0","description":"R#266 Collected By: Admin","payment_mode":"Cash","inv_no":2}}', 'no', '2020-07-02 20:00:37'),
(132, 41, 14, '{"1":{"amount":"35000","date":"2018-08-08","amount_discount":"0","amount_fine":"0","description":"R#270 Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-02 20:00:56'),
(133, 42, 14, '{"1":{"amount":"25000","date":"2018-09-29","amount_discount":"0","amount_fine":"0","description":"R#216 Collected By: Admin","payment_mode":"Cash","inv_no":1},"2":{"amount":"10000","date":"2018-11-15","amount_discount":"0","amount_fine":"0","description":"R#281 Collected By: Admin","payment_mode":"Cash","inv_no":2}}', 'no', '2020-07-02 20:01:34'),
(134, 43, 14, '{"1":{"amount":"35000","date":"2018-08-15","amount_discount":"0","amount_fine":"0","description":"R#185 Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-02 20:01:50'),
(135, 40, 14, '{"1":{"amount":"20000","date":"2018-08-13","amount_discount":"0","amount_fine":"0","description":"R#176 Collected By: Admin","payment_mode":"Cash","inv_no":1},"2":{"amount":"15000","date":"2018-09-03","amount_discount":"0","amount_fine":"0","description":"R#198 Collected By: Admin","payment_mode":"Cash","inv_no":2}}', 'no', '2020-07-02 20:02:32'),
(136, 46, 14, '{"1":{"amount":"25000","date":"2018-10-12","amount_discount":"0","amount_fine":"0","description":"R#243 Collected By: Admin","payment_mode":"Cash","inv_no":1},"2":{"amount":"10000","date":"2018-11-30","amount_discount":"0","amount_fine":"0","description":"R#293 Collected By: Admin","payment_mode":"Cash","inv_no":2}}', 'no', '2020-07-02 20:03:04'),
(137, 47, 14, '{"1":{"amount":"20000","date":"2018-11-12","amount_discount":"0","amount_fine":"0","description":"R#274 Collected By: Admin","payment_mode":"Cash","inv_no":1},"2":{"amount":"15000","date":"2018-12-04","amount_discount":"0","amount_fine":"0","description":"R#299 Collected By: Admin","payment_mode":"Cash","inv_no":2}}', 'no', '2020-07-02 20:05:06'),
(138, 48, 14, '{"1":{"amount":"35000","date":"2018-10-26","amount_discount":"0","amount_fine":"0","description":"R#264 Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-02 20:05:20'),
(139, 49, 14, '{"1":{"amount":"35000","date":"2018-09-29","amount_discount":"0","amount_fine":"0","description":"R#217 Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-02 20:05:47'),
(140, 50, 14, '{"1":{"amount":"35000","date":"2018-09-07","amount_discount":"0","amount_fine":"0","description":"R#206 (B) Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-02 20:07:15'),
(141, 51, 14, '{"1":{"amount":"5000","date":"2018-10-01","amount_discount":"0","amount_fine":"0","description":"R#233  Collected By: Admin","payment_mode":"Cash","inv_no":1},"2":{"amount":"10000","date":"2018-12-03","amount_discount":"0","amount_fine":"0","description":"R#294 Collected By: Admin","payment_mode":"Cash","inv_no":2},"3":{"amount":"10000","date":"2019-01-02","amount_discount":"0","amount_fine":"0","description":"R#329 Collected By: Admin","payment_mode":"Cash","inv_no":3},"4":{"amount":"10000","date":"2019-02-07","amount_discount":"0","amount_fine":"0","description":"R#369 Collected By: Admin","payment_mode":"Cash","inv_no":4}}', 'no', '2020-07-02 20:14:55'),
(142, 52, 14, '{"1":{"amount":"35000","date":"2018-09-10","amount_discount":"0","amount_fine":"0","description":"R#210 Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-02 20:15:40'),
(143, 53, 14, '{"1":{"amount":"35000","date":"2018-08-13","amount_discount":"0","amount_fine":"0","description":"R#182 Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-02 20:16:05'),
(144, 54, 14, '{"1":{"amount":"35000","date":"2018-09-06","amount_discount":"0","amount_fine":"0","description":"R#206 (A) Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-02 20:16:46'),
(145, 56, 14, '{"1":{"amount":"33000","date":"2018-11-14","amount_discount":"0","amount_fine":"0","description":"R#279 Collected By: Admin","payment_mode":"Cash","inv_no":1},"2":{"amount":"2000","date":"2019-09-24","amount_discount":"0","amount_fine":"0","description":"R#646 Collected By: Admin","payment_mode":"Cash","inv_no":2}}', 'no', '2020-07-02 20:17:52'),
(146, 58, 14, '{"1":{"amount":"34500","date":"2018-12-07","amount_discount":"0","amount_fine":"0","description":"R#313 Collected By: Admin","payment_mode":"Cash","inv_no":1},"2":{"amount":"500","date":"2019-01-17","amount_discount":"0","amount_fine":"0","description":"R#335 Collected By: Admin","payment_mode":"Cash","inv_no":2}}', 'no', '2020-07-02 20:18:58'),
(147, 57, 14, '{"1":{"amount":"35000","date":"2018-12-05","amount_discount":"0","amount_fine":"0","description":"R#308 Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-02 20:19:24'),
(148, 59, 14, '{"1":{"amount":"35000","date":"2018-08-29","amount_discount":"0","amount_fine":"0","description":"R#191 Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-02 20:20:12'),
(149, 60, 14, '{"1":{"amount":"15000","date":"2018-12-06","amount_discount":"0","amount_fine":"0","description":"R#312 Collected By: Admin","payment_mode":"Cash","inv_no":1},"2":{"amount":"20000","date":"2019-02-15","amount_discount":"0","amount_fine":"0","description":"R#379 Collected By: Admin","payment_mode":"Cash","inv_no":2}}', 'no', '2020-07-02 20:22:11'),
(150, 61, 14, '{"1":{"amount":"15000","date":"2018-10-05","amount_discount":"0","amount_fine":"0","description":"R#240 Collected By: Admin","payment_mode":"Cash","inv_no":1},"2":{"amount":"20000","date":"2018-12-19","amount_discount":"0","amount_fine":"0","description":"R#325 Collected By: Admin","payment_mode":"Cash","inv_no":2}}', 'no', '2020-07-02 20:23:01'),
(151, 63, 14, '{"1":{"amount":"33000","date":"2018-11-17","amount_discount":"0","amount_fine":"0","description":"R#283 Collected By: Admin","payment_mode":"Cash","inv_no":1},"2":{"amount":"2000","date":"2018-12-10","amount_discount":"0","amount_fine":"0","description":"R#316 Collected By: Admin","payment_mode":"Cash","inv_no":2}}', 'no', '2020-07-02 20:23:58'),
(152, 64, 14, '{"1":{"amount":"10000","date":"2018-08-29","amount_discount":"0","amount_fine":"0","description":"R#194 Collected By: Admin","payment_mode":"Cash","inv_no":1},"2":{"amount":"10000","date":"2018-10-01","amount_discount":"0","amount_fine":"0","description":"R#232 Collected By: Admin","payment_mode":"Cash","inv_no":2},"3":{"amount":"10000","date":"2018-12-04","amount_discount":"0","amount_fine":"0","description":"R#305 Collected By: Admin","payment_mode":"Cash","inv_no":3},"4":{"amount":"5000","date":"2019-02-04","amount_discount":"0","amount_fine":"0","description":"R#357 Collected By: Admin","payment_mode":"Cash","inv_no":4}}', 'no', '2020-07-02 20:25:09'),
(154, 66, 14, '{"1":{"amount":"20000","date":"2018-10-01","amount_discount":"0","amount_fine":"0","description":"R#223 Collected By: Admin","payment_mode":"Cash","inv_no":1},"2":{"amount":"15000","date":"2018-10-18","amount_discount":"0","amount_fine":"0","description":"R#255 Collected By: Admin","payment_mode":"Cash","inv_no":2}}', 'no', '2020-07-02 20:27:34'),
(155, 68, 14, '{"1":{"amount":"35000","date":"2018-10-16","amount_discount":"0","amount_fine":"0","description":"R#352 Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-02 20:29:03'),
(156, 70, 14, '{"1":{"amount":"35000","date":"2018-08-13","amount_discount":"0","amount_fine":"0","description":"R#177 Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-02 20:31:45'),
(157, 71, 14, '{"1":{"amount":"35000","date":"2018-09-04","amount_discount":"0","amount_fine":"0","description":"R#203 Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-02 20:32:26'),
(158, 72, 14, '{"1":{"amount":"15000","date":"2018-08-28","amount_discount":"0","amount_fine":"0","description":"R#189 Collected By: Admin","payment_mode":"Cash","inv_no":1},"2":{"amount":"10000","date":"2018-12-04","amount_discount":"0","amount_fine":"0","description":"R#300 Collected By: Admin","payment_mode":"Cash","inv_no":2},"3":{"amount":"10000","date":"2019-02-06","amount_discount":"0","amount_fine":"0","description":"R#364 Collected By: Admin","payment_mode":"Cash","inv_no":3}}', 'no', '2020-07-02 20:33:30'),
(159, 117, 14, '{"1":{"amount":"35000","date":"2018-09-29","amount_discount":"0","amount_fine":"0","description":"R#219 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-07 06:04:53'),
(161, 119, 14, '{"1":{"amount":"20000","date":"2018-09-29","amount_discount":"0","amount_fine":"0","description":"R 218 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":1},"2":{"amount":"15000","date":"2019-08-21","amount_discount":"0","amount_fine":"0","description":"R 468 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":2}}', 'no', '2020-07-07 06:12:52'),
(162, 120, 14, '{"1":{"amount":"15000","date":"2028-05-11","amount_discount":"0","amount_fine":"0","description":"R 269 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":1},"2":{"amount":"15000","date":"2028-12-20","amount_discount":"0","amount_fine":"0","description":"R 328 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":2},"3":{"amount":"5000","date":"2019-02-21","amount_discount":"0","amount_fine":"0","description":"R 441 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":3}}', 'no', '2020-07-07 06:17:28'),
(163, 124, 14, '{"1":{"amount":"30000","date":"2018-09-29","amount_discount":"0","amount_fine":"0","description":"R 214 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":1},"2":{"amount":"5000","date":"2019-08-21","amount_discount":"0","amount_fine":"0","description":"R 214 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":2}}', 'no', '2020-07-07 06:24:28'),
(164, 118, 14, '{"1":{"amount":"35000","date":"2018-08-13","amount_discount":"0","amount_fine":"0","description":"R 183 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-07 06:26:59'),
(165, 116, 14, '{"1":{"amount":"35000","date":"2018-09-03","amount_discount":"0","amount_fine":"0","description":"R 199 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-07 06:28:58'),
(166, 115, 14, '{"1":{"amount":"30000","date":"2018-09-03","amount_discount":"0","amount_fine":"0","description":"R 197 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":1},"2":{"amount":"5000","date":"2018-12-10","amount_discount":"0","amount_fine":"0","description":"R 315 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":2}}', 'no', '2020-07-07 06:30:16'),
(167, 113, 14, '{"1":{"amount":"15000","date":"2018-10-01","amount_discount":"0","amount_fine":"0","description":"R 225 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":1},"2":{"amount":"10000","date":"2018-11-15","amount_discount":"0","amount_fine":"0","description":"R 280 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":2},"3":{"amount":"10000","date":"2018-12-04","amount_discount":"0","amount_fine":"0","description":"R 301 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":3}}', 'no', '2020-07-07 06:33:15'),
(168, 114, 14, '{"1":{"amount":"10000","date":"2018-10-01","amount_discount":"0","amount_fine":"0","description":"R 235 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":1},"2":{"amount":"25000","date":"2018-11-13","amount_discount":"0","amount_fine":"0","description":"R 278 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":2}}', 'no', '2020-07-07 06:34:52'),
(169, 112, 14, '{"1":{"amount":"24000","date":"2018-12-19","amount_discount":"0","amount_fine":"0","description":"R 324 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":1},"2":{"amount":"10000","date":"2019-02-06","amount_discount":"0","amount_fine":"0","description":"R 362 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":2},"3":{"amount":"1000","date":"2019-02-18","amount_discount":"0","amount_fine":"0","description":"R 400 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":3}}', 'no', '2020-07-07 06:42:09'),
(170, 110, 14, '{"1":{"amount":"20000","date":"2018-10-13","amount_discount":"0","amount_fine":"0","description":"R 246 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":1},"2":{"amount":"15000","date":"2018-12-20","amount_discount":"0","amount_fine":"0","description":"R 326 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":2}}', 'no', '2020-07-07 06:51:48'),
(173, 108, 14, '{"1":{"amount":"34000","date":"2018-12-04","amount_discount":"0","amount_fine":"0","description":"R 307 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":1},"2":{"amount":"1000","date":"2019-02-19","amount_discount":"0","amount_fine":"0","description":"R 417 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":2}}', 'no', '2020-07-07 07:08:18'),
(175, 106, 14, '{"1":{"amount":"10000","date":"2018-11-05","amount_discount":"0","amount_fine":"0","description":"R 271 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":1},"2":{"amount":"9500","date":"2019-01-22","amount_discount":"0","amount_fine":"0","description":" Collected By: Faizan Ali","payment_mode":"Cash","inv_no":2},"3":{"amount":"500","date":"2019-01-23","amount_discount":"0","amount_fine":"0","description":" Collected By: Faizan Ali","payment_mode":"Cash","inv_no":3},"4":{"amount":"15000","date":"2019-09-24","amount_discount":"0","amount_fine":"0","description":"R 653 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":4}}', 'no', '2020-07-07 07:28:05'),
(176, 107, 14, '{"1":{"amount":"35000","date":"2018-10-01","amount_discount":"0","amount_fine":"0","description":"R 226\\n Collected By: Faizan Ali","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-07 07:30:48'),
(177, 105, 14, '{"1":{"amount":"35000","date":"2018-09-04","amount_discount":"0","amount_fine":"0","description":"R 204 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-07 07:33:40'),
(178, 104, 14, '{"1":{"amount":"30000","date":"2018-09-04","amount_discount":"0","amount_fine":"0","description":"R 205 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":1},"2":{"amount":"5000","date":"2018-11-19","amount_discount":"0","amount_fine":"0","description":"R 284 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":2}}', 'no', '2020-07-07 07:35:23'),
(179, 103, 14, '{"1":{"amount":"35000","date":"2018-08-13","amount_discount":"0","amount_fine":"0","description":"R 174 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-07 07:36:10'),
(180, 102, 14, '{"1":{"amount":"30000","date":"2018-11-08","amount_discount":"0","amount_fine":"0","description":"R 273 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":1},"2":{"amount":"5000","date":"2018-11-12","amount_discount":"0","amount_fine":"0","description":"R 275 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":2}}', 'no', '2020-07-07 07:38:18'),
(181, 101, 14, '{"1":{"amount":"35000","date":"2018-12-17","amount_discount":"0","amount_fine":"0","description":"R 331 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-07 07:39:24'),
(182, 100, 14, '{"1":{"amount":"10000","date":"2018-11-29","amount_discount":"0","amount_fine":"0","description":"R 292 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":1},"2":{"amount":"25000","date":"2018-12-13","amount_discount":"0","amount_fine":"0","description":"R 321 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":2}}', 'no', '2020-07-07 07:40:37');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES
(183, 99, 14, '{"1":{"amount":"15000","date":"2018-11-05","amount_discount":"0","amount_fine":"0","description":"R 282 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":1},"2":{"amount":"20000","date":"2019-02-18","amount_discount":"0","amount_fine":"0","description":"R 441 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":2}}', 'no', '2020-07-07 07:42:05'),
(185, 97, 14, '{"1":{"amount":"20000","date":"2018-10-01","amount_discount":"0","amount_fine":"0","description":"R 229 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":1},"2":{"amount":"15000","date":"2018-10-31","amount_discount":"0","amount_fine":"0","description":"R 265 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":2}}', 'no', '2020-07-07 07:45:31'),
(186, 96, 14, '{"1":{"amount":"10000","date":"2018-10-01","amount_discount":"0","amount_fine":"0","description":"R 231 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":1},"2":{"amount":"20000","date":"2018-11-01","amount_discount":"0","amount_fine":"0","description":"R 267 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":2},"3":{"amount":"5000","date":"2018-12-04","amount_discount":"0","amount_fine":"0","description":"R 302 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":3}}', 'no', '2020-07-07 07:47:09'),
(187, 95, 14, '{"1":{"amount":"20000","date":"2018-10-18","amount_discount":"0","amount_fine":"0","description":"R  256 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":1},"2":{"amount":"15000","date":"2018-11-22","amount_discount":"0","amount_fine":"0","description":"R 290 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":2}}', 'no', '2020-07-07 07:49:30'),
(188, 94, 14, '{"1":{"amount":"35000","date":"2018-11-05","amount_discount":"0","amount_fine":"0","description":"R 268 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-07 07:50:37'),
(189, 93, 14, '{"1":{"amount":"5000","date":"2018-10-01","amount_discount":"0","amount_fine":"0","description":"R 237 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":1},"2":{"amount":"30000","date":"2018-10-12","amount_discount":"0","amount_fine":"0","description":"R 245 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":2}}', 'no', '2020-07-07 07:59:51'),
(190, 92, 14, '{"1":{"amount":"30000","date":"2018-10-11","amount_discount":"0","amount_fine":"0","description":"R 242 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":1},"2":{"amount":"5000","date":"2019-01-05","amount_discount":"0","amount_fine":"0","description":"R 342 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":2}}', 'no', '2020-07-07 08:08:07'),
(191, 91, 14, '{"1":{"amount":"25000","date":"2018-08-13","amount_discount":"0","amount_fine":"0","description":"R 173 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":1},"2":{"amount":"10000","date":"2018-08-15","amount_discount":"0","amount_fine":"0","description":"R 184 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":2}}', 'no', '2020-07-07 08:09:31'),
(192, 90, 14, '{"1":{"amount":"17000","date":"2018-08-29","amount_discount":"0","amount_fine":"0","description":"R 192 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":1},"2":{"amount":"18000","date":"2018-10-01","amount_discount":"0","amount_fine":"0","description":"R 228 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":2}}', 'no', '2020-07-07 08:11:53'),
(193, 89, 14, '{"1":{"amount":"25000","date":"2018-08-16","amount_discount":"5000","amount_fine":"0","description":" Collected By: Faizan Ali","payment_mode":"Cash","inv_no":1},"2":{"amount":"5000","date":"2018-08-10","amount_discount":"0","amount_fine":"0","description":" Collected By: Faizan Ali","payment_mode":"Cash","inv_no":2}}', 'no', '2020-07-07 08:13:36'),
(195, 88, 14, '{"1":{"amount":"15000","date":"2018-10-15","amount_discount":"10000","amount_fine":"0","description":"R 249 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":1},"2":{"amount":"10000","date":"2018-10-22","amount_discount":"0","amount_fine":"0","description":"R 261 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":2}}', 'no', '2020-07-07 08:16:02'),
(196, 87, 14, '{"1":{"amount":"15000","date":"2018-09-29","amount_discount":"0","amount_fine":"0","description":"R 222 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":1},"2":{"amount":"10000","date":"2018-12-06","amount_discount":"0","amount_fine":"0","description":"R 311 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":2},"3":{"amount":"10000","date":"2019-03-04","amount_discount":"0","amount_fine":"0","description":"R 421\\n Collected By: Faizan Ali","payment_mode":"Cash","inv_no":3}}', 'no', '2020-07-07 08:18:39'),
(197, 86, 14, '{"1":{"amount":"15000","date":"2018-08-30","amount_discount":"0","amount_fine":"0","description":"R 196 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":1},"2":{"amount":"20000","date":"2018-11-01","amount_discount":"0","amount_fine":"0","description":"R 263 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":2}}', 'no', '2020-07-07 08:20:32'),
(199, 85, 14, '{"1":{"amount":"30000","date":"2018-12-17","amount_discount":"0","amount_fine":"0","description":"R 356 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":1},"2":{"amount":"5000","date":"2019-02-16","amount_discount":"0","amount_fine":"0","description":"R 453 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":2}}', 'no', '2020-07-07 08:27:14'),
(200, 84, 14, '{"1":{"amount":"10000","date":"2018-10-01","amount_discount":"0","amount_fine":"0","description":"R 230 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":1},"2":{"amount":"25000","date":"2018-11-12","amount_discount":"0","amount_fine":"0","description":"R 276 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":2}}', 'no', '2020-07-07 08:32:19'),
(201, 83, 14, '{"1":{"amount":"15000","date":"2018-09-10","amount_discount":"0","amount_fine":"0","description":"R 209 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":1},"2":{"amount":"10000","date":"2018-11-26","amount_discount":"0","amount_fine":"0","description":"R#286 Collected By: Admin","payment_mode":"Cash","inv_no":2},"3":{"amount":"5000","date":"2018-12-04","amount_discount":"0","amount_fine":"0","description":"R#297 Collected By: Admin","payment_mode":"Cash","inv_no":3},"4":{"amount":"5000","date":"2018-12-04","amount_discount":"0","amount_fine":"0","description":"R#306 Collected By: Admin","payment_mode":"Cash","inv_no":4}}', 'no', '2020-07-07 10:25:12'),
(202, 82, 14, '{"1":{"amount":"35000","date":"2018-10-01","amount_discount":"0","amount_fine":"0","description":"R 227 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-07 08:49:07'),
(203, 81, 14, '{"1":{"amount":"15000","date":"2018-08-29","amount_discount":"0","amount_fine":"0","description":"R 193 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":1},"2":{"amount":"5000","date":"2018-12-05","amount_discount":"0","amount_fine":"0","description":"R 309 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":2},"3":{"amount":"10000","date":"2019-02-15","amount_discount":"0","amount_fine":"0","description":"R 381 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":3},"4":{"amount":"5000","date":"2019-02-17","amount_discount":"0","amount_fine":"0","description":"R 390 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":4}}', 'no', '2020-07-07 08:54:14'),
(205, 80, 14, '{"1":{"amount":"35000","date":"2018-10-15","amount_discount":"0","amount_fine":"0","description":"R 250 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-07 08:56:20'),
(206, 79, 14, '{"1":{"amount":"35000","date":"2018-10-16","amount_discount":"0","amount_fine":"0","description":"R 251 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-07 08:58:02'),
(207, 78, 14, '{"1":{"amount":"30000","date":"2018-10-01","amount_discount":"0","amount_fine":"0","description":"R 234 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":1},"2":{"amount":"5000","date":"2018-12-03","amount_discount":"0","amount_fine":"0","description":"R 296 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":2}}', 'no', '2020-07-07 09:00:00'),
(208, 77, 14, '{"1":{"amount":"35000","date":"2018-08-10","amount_discount":"0","amount_fine":"0","description":" Collected By: Faizan Ali","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-07 09:01:25'),
(209, 76, 14, '{"1":{"amount":"19000","date":"2018-10-10","amount_discount":"0","amount_fine":"0","description":"R 254 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":1},"2":{"amount":"16000","date":"2018-11-28","amount_discount":"0","amount_fine":"0","description":"R 290 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":2}}', 'no', '2020-07-07 09:02:39'),
(210, 75, 14, '{"1":{"amount":"10000","date":"2018-10-02","amount_discount":"0","amount_fine":"0","description":"R 239 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":1},"2":{"amount":"25000","date":"2018-10-12","amount_discount":"0","amount_fine":"0","description":"R 244 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":2}}', 'no', '2020-07-07 09:04:11'),
(211, 74, 14, '{"1":{"amount":"15000","date":"2018-08-28","amount_discount":"0","amount_fine":"0","description":"R 190 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":1},"2":{"amount":"15000","date":"2018-09-29","amount_discount":"0","amount_fine":"0","description":"R#220 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":2},"3":{"amount":"5000","date":"2018-12-12","amount_discount":"0","amount_fine":"0","description":"R#319 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":3}}', 'no', '2020-07-07 09:19:47'),
(212, 73, 14, '{"1":{"amount":"20000","date":"2018-10-25","amount_discount":"0","amount_fine":"0","description":"R 248 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":1},"2":{"amount":"15000","date":"2018-12-04","amount_discount":"0","amount_fine":"0","description":"R 298 Collected By: Faizan Ali","payment_mode":"Cash","inv_no":2}}', 'no', '2020-07-07 09:09:33'),
(213, 83, 6, '{"1":{"amount":"35000","date":"2018-02-07","amount_discount":"0","amount_fine":"0","description":"R#61 Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-07 10:17:32'),
(214, 67, 6, '{"1":{"amount":"30000","date":"2018-01-18","amount_discount":"0","amount_fine":"0","description":"R#45 Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-07 10:29:10'),
(215, 67, 14, '{"1":{"amount":"34000","date":"2018-09-19","amount_discount":"0","amount_fine":"0","description":"R#213 Collected By: Admin","payment_mode":"Cash","inv_no":1},"2":{"amount":"1000","date":"2019-02-17","amount_discount":"0","amount_fine":"0","description":"R#393 Collected By: Admin","payment_mode":"Cash","inv_no":2}}', 'no', '2020-07-07 10:37:15'),
(216, 69, 14, '{"1":{"amount":"13500","date":"2018-12-10","amount_discount":"0","amount_fine":"0","description":"R#317 Collected By: Admin","payment_mode":"Cash","inv_no":1},"2":{"amount":"10000","date":"2019-02-18","amount_discount":"0","amount_fine":"0","description":"R#405 Collected By: Admin","payment_mode":"Cash","inv_no":2},"3":{"amount":"11500","date":"2019-03-25","amount_discount":"0","amount_fine":"0","description":"C#66\\nblue Collected By: Admin","payment_mode":"Cash","inv_no":3}}', 'no', '2020-07-07 10:44:05'),
(217, 122, 14, '{"1":{"amount":"35000","date":"2018-11-08","amount_discount":"0","amount_fine":"0","description":"R#272 Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-07 10:49:24'),
(219, 117, 6, '{"1":{"amount":"30000","date":"2018-03-12","amount_discount":"5000","amount_fine":"0","description":"R#106 Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2020-07-07 10:55:14'),
(221, 98, 14, '{"1":{"amount":"5000","date":"2020-06-16","amount_discount":"0","amount_fine":"0","description":"C#281\\nRed\\nTotal 15000\\n10000 1st semester\\n5000 2nd semester Collected By: Admin","payment_mode":"Cash","inv_no":1},"2":{"amount":"30000","date":"2020-01-20","amount_discount":"0","amount_fine":"0","description":"C#53\\nRed\\nTotal 33000\\n30000 2nd semester\\n3000 3rd semester Collected By: Admin","payment_mode":"Cash","inv_no":2}}', 'no', '2020-07-07 11:23:49');

-- --------------------------------------------------------

--
-- Table structure for table `student_fees_discounts`
--

CREATE TABLE IF NOT EXISTS `student_fees_discounts` (
  `id` int(11) NOT NULL,
  `student_session_id` int(11) DEFAULT NULL,
  `fees_discount_id` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'assigned',
  `payment_id` varchar(50) DEFAULT NULL,
  `description` text,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `student_fees_master`
--

CREATE TABLE IF NOT EXISTS `student_fees_master` (
  `id` int(11) NOT NULL,
  `student_session_id` int(11) DEFAULT NULL,
  `fee_session_group_id` int(11) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=313 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_fees_master`
--

INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES
(24, 35, 6, 'no', '2020-06-27 09:55:46'),
(25, 36, 6, 'no', '2020-06-27 09:55:46'),
(26, 37, 6, 'no', '2020-06-27 10:08:52'),
(27, 38, 6, 'no', '2020-06-27 10:15:11'),
(28, 39, 6, 'no', '2020-06-29 07:04:13'),
(29, 40, 6, 'no', '2020-06-29 07:04:13'),
(30, 41, 6, 'no', '2020-06-29 07:04:13'),
(31, 42, 6, 'no', '2020-06-29 07:04:13'),
(32, 43, 6, 'no', '2020-06-29 07:04:13'),
(33, 44, 6, 'no', '2020-06-29 07:04:13'),
(34, 45, 6, 'no', '2020-06-29 07:04:13'),
(35, 46, 6, 'no', '2020-06-29 07:04:13'),
(36, 47, 6, 'no', '2020-06-29 07:04:13'),
(37, 48, 6, 'no', '2020-06-29 07:04:13'),
(38, 49, 6, 'no', '2020-06-29 07:04:13'),
(39, 50, 6, 'no', '2020-06-29 07:04:13'),
(40, 51, 6, 'no', '2020-06-29 07:04:13'),
(41, 52, 6, 'no', '2020-06-29 07:04:13'),
(42, 53, 6, 'no', '2020-06-30 07:37:05'),
(43, 54, 6, 'no', '2020-06-30 07:37:05'),
(44, 55, 6, 'no', '2020-06-30 07:37:05'),
(45, 56, 6, 'no', '2020-06-30 07:37:05'),
(46, 57, 6, 'no', '2020-06-30 07:37:05'),
(47, 58, 6, 'no', '2020-06-30 07:37:05'),
(48, 59, 6, 'no', '2020-06-30 07:37:05'),
(49, 60, 6, 'no', '2020-06-30 07:37:05'),
(50, 61, 6, 'no', '2020-06-30 07:37:05'),
(51, 62, 6, 'no', '2020-06-30 07:37:05'),
(52, 63, 6, 'no', '2020-07-02 09:15:42'),
(53, 64, 6, 'no', '2020-07-02 09:15:42'),
(54, 65, 6, 'no', '2020-07-02 09:15:42'),
(55, 66, 6, 'no', '2020-07-02 09:15:42'),
(56, 67, 6, 'no', '2020-07-02 09:15:42'),
(57, 68, 6, 'no', '2020-07-02 09:15:42'),
(58, 69, 6, 'no', '2020-07-02 09:15:42'),
(59, 70, 6, 'no', '2020-07-02 09:15:42'),
(60, 71, 6, 'no', '2020-07-02 09:15:42'),
(61, 72, 6, 'no', '2020-07-02 09:15:42'),
(63, 74, 6, 'no', '2020-07-02 09:15:42'),
(64, 75, 6, 'no', '2020-07-02 09:15:42'),
(65, 76, 6, 'no', '2020-07-02 09:15:42'),
(66, 77, 6, 'no', '2020-07-02 09:15:42'),
(67, 78, 6, 'no', '2020-07-02 09:15:42'),
(68, 79, 6, 'no', '2020-07-02 09:15:42'),
(69, 80, 6, 'no', '2020-07-02 09:15:42'),
(70, 81, 6, 'no', '2020-07-02 09:15:42'),
(71, 82, 6, 'no', '2020-07-02 09:15:42'),
(72, 83, 6, 'no', '2020-07-02 09:15:42'),
(73, 84, 6, 'no', '2020-07-02 09:15:42'),
(74, 85, 6, 'no', '2020-07-02 09:15:42'),
(75, 86, 6, 'no', '2020-07-02 09:15:42'),
(76, 87, 6, 'no', '2020-07-02 09:15:42'),
(77, 88, 6, 'no', '2020-07-02 09:15:42'),
(78, 89, 6, 'no', '2020-07-02 09:15:42'),
(79, 90, 6, 'no', '2020-07-02 09:15:42'),
(80, 91, 6, 'no', '2020-07-02 09:15:42'),
(81, 92, 6, 'no', '2020-07-02 09:15:42'),
(82, 93, 6, 'no', '2020-07-02 09:15:42'),
(83, 94, 6, 'no', '2020-07-02 09:15:42'),
(84, 95, 6, 'no', '2020-07-02 09:15:42'),
(85, 96, 6, 'no', '2020-07-02 09:15:42'),
(86, 97, 6, 'no', '2020-07-02 09:15:42'),
(87, 98, 6, 'no', '2020-07-02 09:15:42'),
(88, 99, 6, 'no', '2020-07-02 09:15:42'),
(89, 100, 6, 'no', '2020-07-02 09:15:42'),
(90, 101, 6, 'no', '2020-07-02 09:15:42'),
(91, 102, 6, 'no', '2020-07-02 09:15:42'),
(92, 103, 6, 'no', '2020-07-02 09:15:42'),
(93, 104, 6, 'no', '2020-07-02 09:15:42'),
(94, 105, 6, 'no', '2020-07-02 09:15:42'),
(95, 106, 6, 'no', '2020-07-02 09:15:42'),
(96, 107, 6, 'no', '2020-07-02 09:15:42'),
(97, 108, 6, 'no', '2020-07-02 09:15:42'),
(98, 109, 6, 'no', '2020-07-02 09:15:42'),
(99, 110, 6, 'no', '2020-07-02 09:15:42'),
(100, 111, 6, 'no', '2020-07-02 09:15:42'),
(101, 112, 6, 'no', '2020-07-02 09:15:42'),
(102, 113, 6, 'no', '2020-07-02 09:15:42'),
(103, 114, 6, 'no', '2020-07-02 09:15:42'),
(104, 115, 6, 'no', '2020-07-02 09:15:42'),
(105, 116, 6, 'no', '2020-07-02 09:15:42'),
(106, 117, 6, 'no', '2020-07-02 09:15:42'),
(107, 118, 6, 'no', '2020-07-02 09:15:42'),
(108, 119, 6, 'no', '2020-07-02 09:15:42'),
(109, 120, 6, 'no', '2020-07-02 09:15:42'),
(110, 121, 6, 'no', '2020-07-02 09:15:42'),
(111, 122, 6, 'no', '2020-07-02 09:15:42'),
(112, 123, 6, 'no', '2020-07-02 09:15:42'),
(113, 124, 6, 'no', '2020-07-02 09:15:42'),
(114, 125, 6, 'no', '2020-07-02 09:15:42'),
(115, 126, 6, 'no', '2020-07-02 09:15:42'),
(116, 127, 6, 'no', '2020-07-02 09:15:42'),
(117, 128, 6, 'no', '2020-07-02 09:15:42'),
(118, 129, 6, 'no', '2020-07-02 09:15:42'),
(119, 130, 6, 'no', '2020-07-02 09:15:42'),
(120, 131, 6, 'no', '2020-07-02 09:15:42'),
(121, 132, 6, 'no', '2020-07-02 09:15:42'),
(122, 133, 6, 'no', '2020-07-02 09:15:42'),
(123, 134, 6, 'no', '2020-07-02 09:15:42'),
(124, 135, 6, 'no', '2020-07-02 09:15:42'),
(219, 153, 10, 'no', '2020-07-07 12:50:24'),
(220, 154, 10, 'no', '2020-07-07 12:50:24'),
(221, 155, 10, 'no', '2020-07-07 12:50:24'),
(222, 156, 10, 'no', '2020-07-07 12:50:24'),
(223, 157, 10, 'no', '2020-07-07 12:50:24'),
(224, 158, 10, 'no', '2020-07-07 12:50:24'),
(225, 159, 10, 'no', '2020-07-07 12:50:24'),
(226, 160, 10, 'no', '2020-07-07 12:50:24'),
(227, 161, 10, 'no', '2020-07-07 12:50:24'),
(228, 162, 10, 'no', '2020-07-07 12:50:24'),
(229, 163, 10, 'no', '2020-07-07 12:50:24'),
(230, 164, 10, 'no', '2020-07-07 12:50:24'),
(231, 165, 10, 'no', '2020-07-07 12:50:24'),
(232, 166, 10, 'no', '2020-07-07 12:50:24'),
(233, 167, 10, 'no', '2020-07-07 12:50:24'),
(234, 168, 10, 'no', '2020-07-07 12:50:24'),
(235, 169, 10, 'no', '2020-07-07 12:50:24'),
(236, 170, 10, 'no', '2020-07-07 12:50:24'),
(237, 171, 10, 'no', '2020-07-07 12:50:24'),
(238, 172, 10, 'no', '2020-07-07 12:50:24'),
(239, 173, 10, 'no', '2020-07-07 12:50:24'),
(240, 174, 10, 'no', '2020-07-07 12:50:24'),
(241, 175, 10, 'no', '2020-07-07 12:50:24'),
(242, 176, 10, 'no', '2020-07-07 12:50:24'),
(243, 177, 10, 'no', '2020-07-07 12:50:24'),
(244, 178, 10, 'no', '2020-07-07 12:50:24'),
(245, 179, 10, 'no', '2020-07-07 12:50:24'),
(246, 180, 10, 'no', '2020-07-07 12:50:24'),
(247, 181, 10, 'no', '2020-07-07 12:50:24'),
(248, 182, 10, 'no', '2020-07-07 12:50:24'),
(249, 183, 10, 'no', '2020-07-07 12:50:24'),
(250, 184, 10, 'no', '2020-07-07 12:50:24'),
(251, 185, 10, 'no', '2020-07-07 12:50:24'),
(252, 186, 10, 'no', '2020-07-07 12:50:24'),
(253, 187, 10, 'no', '2020-07-07 12:50:24'),
(254, 188, 10, 'no', '2020-07-07 12:50:24'),
(255, 189, 10, 'no', '2020-07-07 12:50:24'),
(256, 190, 10, 'no', '2020-07-07 12:50:24'),
(257, 191, 10, 'no', '2020-07-07 12:50:24'),
(258, 192, 10, 'no', '2020-07-07 12:50:24'),
(259, 193, 10, 'no', '2020-07-07 12:50:24'),
(260, 194, 10, 'no', '2020-07-07 12:50:24'),
(261, 195, 10, 'no', '2020-07-07 12:50:24'),
(262, 196, 10, 'no', '2020-07-07 12:50:24'),
(263, 197, 10, 'no', '2020-07-07 12:50:24'),
(264, 198, 10, 'no', '2020-07-07 12:50:24'),
(265, 199, 10, 'no', '2020-07-07 12:50:24'),
(266, 200, 10, 'no', '2020-07-07 12:50:24'),
(267, 201, 10, 'no', '2020-07-07 12:50:24'),
(268, 202, 10, 'no', '2020-07-07 12:50:24'),
(269, 203, 10, 'no', '2020-07-07 12:50:24'),
(270, 204, 10, 'no', '2020-07-07 12:50:24'),
(271, 205, 10, 'no', '2020-07-07 12:50:24'),
(272, 206, 10, 'no', '2020-07-07 12:50:24'),
(273, 207, 10, 'no', '2020-07-07 12:50:24'),
(274, 208, 10, 'no', '2020-07-07 12:50:24'),
(275, 209, 10, 'no', '2020-07-07 12:50:24'),
(276, 210, 10, 'no', '2020-07-07 12:50:24'),
(277, 211, 10, 'no', '2020-07-07 12:50:24'),
(278, 212, 10, 'no', '2020-07-07 12:50:24'),
(279, 213, 10, 'no', '2020-07-07 12:50:24'),
(280, 214, 10, 'no', '2020-07-07 12:50:24'),
(281, 215, 10, 'no', '2020-07-07 12:50:24'),
(282, 216, 10, 'no', '2020-07-07 12:50:24'),
(283, 217, 10, 'no', '2020-07-07 12:50:24'),
(284, 218, 10, 'no', '2020-07-07 12:50:24'),
(285, 219, 10, 'no', '2020-07-07 12:50:24'),
(286, 220, 10, 'no', '2020-07-07 12:50:24'),
(287, 221, 10, 'no', '2020-07-07 12:50:24'),
(288, 222, 10, 'no', '2020-07-07 12:50:24'),
(289, 223, 10, 'no', '2020-07-07 12:50:24'),
(290, 224, 10, 'no', '2020-07-07 12:50:24'),
(291, 225, 10, 'no', '2020-07-07 12:50:24'),
(292, 226, 10, 'no', '2020-07-07 12:50:24'),
(293, 227, 10, 'no', '2020-07-07 12:50:24'),
(294, 228, 10, 'no', '2020-07-07 12:50:24'),
(295, 229, 10, 'no', '2020-07-07 12:50:24'),
(296, 230, 10, 'no', '2020-07-07 12:50:24'),
(297, 231, 10, 'no', '2020-07-07 12:50:24'),
(298, 232, 10, 'no', '2020-07-07 12:50:24'),
(299, 233, 10, 'no', '2020-07-07 12:50:24'),
(300, 234, 10, 'no', '2020-07-07 12:50:24'),
(301, 235, 10, 'no', '2020-07-07 12:50:24'),
(302, 236, 10, 'no', '2020-07-07 12:50:24'),
(303, 237, 10, 'no', '2020-07-07 12:50:24'),
(304, 238, 10, 'no', '2020-07-07 12:50:24'),
(305, 239, 10, 'no', '2020-07-07 12:50:24'),
(306, 240, 10, 'no', '2020-07-07 12:50:24'),
(307, 241, 10, 'no', '2020-07-07 12:50:24'),
(308, 242, 10, 'no', '2020-07-07 12:50:24'),
(309, 243, 10, 'no', '2020-07-07 12:50:24'),
(310, 244, 10, 'no', '2020-07-07 12:50:24'),
(311, 245, 10, 'no', '2020-07-07 12:50:24'),
(312, 246, 10, 'no', '2020-07-07 12:50:24');

-- --------------------------------------------------------

--
-- Table structure for table `student_session`
--

CREATE TABLE IF NOT EXISTS `student_session` (
  `id` int(11) NOT NULL,
  `session_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `part_id` int(11) DEFAULT NULL,
  `route_id` int(11) NOT NULL,
  `vehroute_id` int(10) DEFAULT NULL,
  `transport_fees` float(10,2) NOT NULL DEFAULT '0.00',
  `fees_discount` float(10,2) NOT NULL DEFAULT '0.00',
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=247 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student_session`
--

INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 14, 1, 1, 1, 0, 0, 0, 0.00, 0.00, 'no', '2019-03-08 07:02:11', '0000-00-00 00:00:00'),
(2, 14, 2, 1, 1, 0, 0, 0, 0.00, 0.00, 'no', '2019-03-08 08:23:17', '0000-00-00 00:00:00'),
(3, 14, 3, 1, 1, 0, 0, 0, 0.00, 0.00, 'no', '2019-03-08 08:35:52', '0000-00-00 00:00:00'),
(4, 14, 4, 1, 1, 0, 0, 0, 0.00, 0.00, 'no', '2019-03-08 08:49:04', '0000-00-00 00:00:00'),
(5, 14, 5, 1, 1, 0, 0, 0, 0.00, 0.00, 'no', '2019-03-08 09:09:41', '0000-00-00 00:00:00'),
(6, 14, 6, 1, 1, 0, 0, 0, 0.00, 0.00, 'no', '2019-03-08 09:22:05', '0000-00-00 00:00:00'),
(7, 14, 7, 1, 1, 0, 0, 0, 0.00, 0.00, 'no', '2019-03-08 09:30:14', '0000-00-00 00:00:00'),
(8, 14, 8, 1, 1, 0, 0, 0, 0.00, 0.00, 'no', '2019-03-08 09:37:26', '0000-00-00 00:00:00'),
(9, 14, 9, 1, 1, 0, 0, 0, 0.00, 0.00, 'no', '2019-03-08 10:03:38', '0000-00-00 00:00:00'),
(10, 13, 1, 1, 1, 0, 0, 0, 0.00, 0.00, 'no', '2019-03-08 10:45:59', '0000-00-00 00:00:00'),
(11, 13, 2, 1, 1, 0, 0, NULL, 0.00, 0.00, 'no', '2019-03-08 10:11:22', '0000-00-00 00:00:00'),
(12, 13, 3, 1, 1, 0, 0, NULL, 0.00, 0.00, 'no', '2019-03-08 10:11:22', '0000-00-00 00:00:00'),
(13, 13, 4, 1, 1, 0, 0, NULL, 0.00, 0.00, 'no', '2019-03-08 10:11:22', '0000-00-00 00:00:00'),
(14, 13, 5, 1, 1, 0, 0, NULL, 0.00, 0.00, 'no', '2019-03-08 10:11:22', '0000-00-00 00:00:00'),
(15, 13, 6, 1, 1, 0, 0, NULL, 0.00, 0.00, 'no', '2019-03-08 10:11:22', '0000-00-00 00:00:00'),
(16, 13, 7, 1, 1, 0, 0, NULL, 0.00, 0.00, 'no', '2019-03-08 10:11:22', '0000-00-00 00:00:00'),
(17, 13, 8, 1, 1, 0, 0, NULL, 0.00, 0.00, 'no', '2019-03-08 10:11:22', '0000-00-00 00:00:00'),
(18, 13, 9, 1, 1, 0, 0, NULL, 0.00, 0.00, 'no', '2019-03-08 10:11:22', '0000-00-00 00:00:00'),
(19, 14, 0, 6, 1, 0, 0, 0, 0.00, 0.00, 'no', '2019-07-27 10:58:40', '0000-00-00 00:00:00'),
(20, 14, 10, 6, 1, 0, 0, 0, 0.00, 0.00, 'no', '2019-08-02 12:55:04', '0000-00-00 00:00:00'),
(21, 14, 11, 6, 1, 0, 0, 0, 0.00, 0.00, 'no', '2019-08-02 12:56:04', '0000-00-00 00:00:00'),
(22, 14, 12, 6, 1, 0, 0, 0, 0.00, 0.00, 'no', '2019-08-02 13:18:33', '0000-00-00 00:00:00'),
(23, 14, 13, 6, 1, 0, 0, 0, 0.00, 0.00, 'no', '2019-11-02 15:43:06', '0000-00-00 00:00:00'),
(24, 14, 14, 6, 1, 0, 0, 0, 0.00, 0.00, 'no', '2019-11-02 15:52:17', '0000-00-00 00:00:00'),
(25, 14, 15, 6, 2, 0, 0, 0, 0.00, 0.00, 'no', '2019-11-02 16:05:29', '0000-00-00 00:00:00'),
(26, 14, 16, 6, 1, 0, 0, 0, 0.00, 0.00, 'no', '2019-11-02 16:07:52', '0000-00-00 00:00:00'),
(27, 14, 17, 6, 1, 0, 0, 0, 0.00, 0.00, 'no', '2019-11-02 16:12:38', '0000-00-00 00:00:00'),
(28, 14, 18, 8, 6, 0, 0, 0, 0.00, 0.00, 'no', '2020-06-13 08:18:09', '0000-00-00 00:00:00'),
(29, 13, 18, 7, 5, 0, 0, NULL, 0.00, 0.00, 'no', '2020-06-13 08:18:56', '0000-00-00 00:00:00'),
(30, 14, 19, 7, 5, 1, 0, 0, 0.00, 0.00, 'no', '2020-06-18 18:22:26', '0000-00-00 00:00:00'),
(31, 15, 19, 7, 5, 1, 0, NULL, 0.00, 0.00, 'no', '2020-06-22 18:09:36', '0000-00-00 00:00:00'),
(32, 14, 20, 7, 5, 1, 0, 0, 0.00, 0.00, 'no', '2020-06-22 17:45:34', '0000-00-00 00:00:00'),
(33, 15, 20, 7, 5, 1, 0, NULL, 0.00, 0.00, 'no', '2020-06-22 18:09:36', '0000-00-00 00:00:00'),
(35, 13, 22, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(36, 13, 23, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(37, 13, 24, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(38, 13, 25, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(39, 13, 26, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(40, 13, 27, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(41, 13, 28, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(42, 13, 29, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(43, 13, 30, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(44, 13, 31, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(45, 13, 32, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(46, 13, 33, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(47, 13, 34, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(48, 13, 35, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(49, 13, 36, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(50, 13, 37, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(51, 13, 38, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(52, 13, 39, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(53, 13, 40, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(54, 13, 41, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(55, 13, 42, 11, 11, 1, 0, 0, 0.00, 0.00, 'no', '2020-06-30 16:54:05', '0000-00-00 00:00:00'),
(56, 13, 43, 11, 11, 1, 0, 0, 0.00, 0.00, 'no', '2020-06-30 16:54:05', '0000-00-00 00:00:00'),
(57, 13, 44, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(58, 13, 45, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(59, 13, 46, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(60, 13, 47, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(61, 13, 48, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(62, 13, 49, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(63, 13, 50, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(64, 13, 51, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(65, 13, 52, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(66, 13, 53, 11, 11, 1, 0, 0, 0.00, 0.00, 'no', '2020-06-30 16:54:05', '0000-00-00 00:00:00'),
(67, 13, 54, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(68, 13, 55, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(69, 13, 56, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(70, 13, 57, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(71, 13, 58, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(72, 13, 59, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(74, 13, 61, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(75, 13, 62, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(76, 13, 63, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(77, 13, 64, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(78, 13, 65, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(79, 13, 66, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(80, 13, 67, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(81, 13, 68, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(82, 13, 69, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(83, 13, 70, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(84, 13, 71, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(85, 13, 72, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(86, 13, 73, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(87, 13, 74, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(88, 13, 75, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(89, 13, 76, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(90, 13, 77, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(91, 13, 78, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(92, 13, 79, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(93, 13, 80, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(94, 13, 81, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(95, 13, 82, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(96, 13, 83, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(97, 13, 84, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(98, 13, 85, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(99, 13, 86, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(100, 13, 87, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(101, 13, 88, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(102, 13, 89, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(103, 13, 90, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(104, 13, 91, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(105, 13, 92, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(106, 13, 93, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(107, 13, 94, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(108, 13, 95, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(109, 13, 96, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(110, 13, 97, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(111, 13, 98, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(112, 13, 99, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(113, 13, 100, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(114, 13, 101, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(115, 13, 102, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(116, 13, 103, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(117, 13, 104, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(118, 13, 105, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(119, 13, 106, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(120, 13, 107, 11, 11, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-01 09:28:01', '0000-00-00 00:00:00'),
(121, 13, 108, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(122, 13, 109, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(123, 13, 110, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(124, 13, 111, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(125, 13, 112, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(126, 13, 113, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(127, 13, 114, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(128, 13, 115, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(129, 13, 116, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(130, 13, 117, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(131, 13, 118, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(132, 13, 119, 11, 11, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-01 10:36:11', '0000-00-00 00:00:00'),
(133, 13, 120, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(134, 13, 121, 11, 11, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-01 10:43:37', '0000-00-00 00:00:00'),
(135, 13, 122, 11, 12, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-02 11:40:29', '0000-00-00 00:00:00'),
(136, 14, 123, 12, 11, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-07 10:22:26', '0000-00-00 00:00:00'),
(137, 14, 124, 12, 11, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-07 10:27:26', '0000-00-00 00:00:00'),
(138, 14, 125, 12, 11, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-07 10:32:04', '0000-00-00 00:00:00'),
(139, 14, 126, 12, 11, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-07 10:37:27', '0000-00-00 00:00:00'),
(140, 14, 127, 12, 11, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-07 10:42:15', '0000-00-00 00:00:00'),
(141, 14, 128, 12, 11, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-07 10:47:34', '0000-00-00 00:00:00'),
(142, 14, 129, 12, 11, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-07 10:52:28', '0000-00-00 00:00:00'),
(143, 14, 130, 12, 11, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-07 10:56:15', '0000-00-00 00:00:00'),
(144, 14, 131, 12, 11, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-07 11:00:28', '0000-00-00 00:00:00'),
(145, 14, 132, 12, 11, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-07 11:04:59', '0000-00-00 00:00:00'),
(146, 14, 133, 12, 11, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-07 11:09:21', '0000-00-00 00:00:00'),
(147, 14, 134, 12, 11, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-07 11:14:05', '0000-00-00 00:00:00'),
(148, 14, 135, 12, 11, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-07 11:18:55', '0000-00-00 00:00:00'),
(149, 14, 136, 12, 11, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-07 11:22:51', '0000-00-00 00:00:00'),
(150, 14, 137, 12, 11, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-07 11:28:38', '0000-00-00 00:00:00'),
(151, 14, 138, 12, 11, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-07 11:38:16', '0000-00-00 00:00:00'),
(152, 14, 139, 12, 11, 1, 0, 0, 0.00, 0.00, 'no', '2020-07-07 11:41:47', '0000-00-00 00:00:00'),
(153, 14, 22, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:49', '0000-00-00 00:00:00'),
(154, 14, 23, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:49', '0000-00-00 00:00:00'),
(155, 14, 24, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:49', '0000-00-00 00:00:00'),
(156, 14, 25, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:49', '0000-00-00 00:00:00'),
(157, 14, 26, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:49', '0000-00-00 00:00:00'),
(158, 14, 27, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:49', '0000-00-00 00:00:00'),
(159, 14, 28, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:49', '0000-00-00 00:00:00'),
(160, 14, 29, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:49', '0000-00-00 00:00:00'),
(161, 14, 30, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:49', '0000-00-00 00:00:00'),
(162, 14, 31, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:49', '0000-00-00 00:00:00'),
(163, 14, 32, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:49', '0000-00-00 00:00:00'),
(164, 14, 33, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:49', '0000-00-00 00:00:00'),
(165, 14, 34, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:49', '0000-00-00 00:00:00'),
(166, 14, 35, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:49', '0000-00-00 00:00:00'),
(167, 14, 36, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:49', '0000-00-00 00:00:00'),
(168, 14, 37, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:49', '0000-00-00 00:00:00'),
(169, 14, 38, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:49', '0000-00-00 00:00:00'),
(170, 14, 39, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:49', '0000-00-00 00:00:00'),
(171, 14, 40, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:49', '0000-00-00 00:00:00'),
(172, 14, 41, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:49', '0000-00-00 00:00:00'),
(173, 14, 44, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:49', '0000-00-00 00:00:00'),
(174, 14, 45, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:49', '0000-00-00 00:00:00'),
(175, 14, 46, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(176, 14, 47, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(177, 14, 48, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(178, 14, 49, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(179, 14, 50, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(180, 14, 51, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(181, 14, 52, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(182, 14, 54, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(183, 14, 55, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(184, 14, 56, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(185, 14, 57, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(186, 14, 58, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(187, 14, 59, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(188, 14, 61, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(189, 14, 62, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(190, 14, 63, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(191, 14, 64, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(192, 14, 65, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(193, 14, 66, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(194, 14, 67, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(195, 14, 68, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(196, 14, 69, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(197, 14, 70, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(198, 14, 71, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(199, 14, 72, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(200, 14, 73, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(201, 14, 74, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(202, 14, 75, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(203, 14, 76, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(204, 14, 77, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(205, 14, 78, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(206, 14, 79, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(207, 14, 80, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(208, 14, 81, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(209, 14, 82, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(210, 14, 83, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(211, 14, 84, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(212, 14, 85, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(213, 14, 86, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(214, 14, 87, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(215, 14, 88, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(216, 14, 89, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(217, 14, 90, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(218, 14, 91, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(219, 14, 92, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(220, 14, 93, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(221, 14, 94, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(222, 14, 95, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(223, 14, 96, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(224, 14, 97, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(225, 14, 98, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(226, 14, 99, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(227, 14, 100, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(228, 14, 101, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(229, 14, 102, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(230, 14, 103, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(231, 14, 104, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(232, 14, 105, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(233, 14, 106, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(234, 14, 108, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(235, 14, 109, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(236, 14, 110, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(237, 14, 111, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(238, 14, 112, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(239, 14, 113, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(240, 14, 114, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(241, 14, 115, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(242, 14, 116, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(243, 14, 117, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(244, 14, 118, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(245, 14, 120, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00'),
(246, 14, 122, 11, 11, 2, 0, NULL, 0.00, 0.00, 'no', '2020-07-07 12:28:50', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `student_sibling`
--

CREATE TABLE IF NOT EXISTS `student_sibling` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `sibling_student_id` int(11) DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_transport_fees`
--

CREATE TABLE IF NOT EXISTS `student_transport_fees` (
  `id` int(11) NOT NULL,
  `student_session_id` int(11) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `amount_discount` float(10,2) NOT NULL,
  `amount_fine` float(10,2) NOT NULL DEFAULT '0.00',
  `description` text COLLATE utf8_unicode_ci,
  `date` date DEFAULT '0000-00-00',
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `payment_mode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE IF NOT EXISTS `subjects` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `code`, `type`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'English Language', '301', 'Theory', 'no', '2019-03-08 05:09:35', '0000-00-00 00:00:00'),
(2, 'Pakistan Studies', '302', 'Theory', 'no', '2019-03-08 05:06:33', '0000-00-00 00:00:00'),
(3, 'Introduction to Jurisprudence-I', '303', 'Theory', 'no', '2019-03-08 05:07:23', '0000-00-00 00:00:00'),
(4, 'Introduction to Sociology', '304', 'Theory', 'no', '2019-03-08 05:07:53', '0000-00-00 00:00:00'),
(5, 'Legal System of Pakistan', '305', 'Theory', 'no', '2019-03-08 05:08:34', '0000-00-00 00:00:00'),
(6, 'Law of Contract-I', '306', 'Theory', 'no', '2019-03-08 05:08:57', '0000-00-00 00:00:00'),
(7, 'English Language-II', '307', 'Theory', 'no', '2019-03-08 05:09:56', '0000-00-00 00:00:00'),
(8, 'Islamic Studies/Ethics', '308', 'Theory', 'no', '2019-03-08 05:10:29', '0000-00-00 00:00:00'),
(9, 'Introduction to Jurisprudence-II', '309', 'Theory', 'no', '2019-03-08 05:11:03', '0000-00-00 00:00:00'),
(10, 'Skills Development', '310', 'Theory', 'no', '2019-03-08 05:11:42', '0000-00-00 00:00:00'),
(11, 'Constitutional Development of Pakistan', '311', 'Theory', 'no', '2019-03-08 05:12:03', '0000-00-00 00:00:00'),
(12, 'Law of Contract-II', '312', 'Theory', 'no', '2019-03-08 05:12:32', '0000-00-00 00:00:00'),
(13, 'Public International Law-I', '401', 'Theory', 'no', '2019-03-08 05:12:54', '0000-00-00 00:00:00'),
(14, 'Constitutional Law - I', '402', 'Theory', 'no', '2019-03-08 05:13:21', '0000-00-00 00:00:00'),
(15, 'Basic Mathematics', '403', 'Theory', 'no', '2019-03-08 05:13:43', '0000-00-00 00:00:00'),
(16, 'Fundamental of Economics', '404', 'Theory', 'no', '2019-03-08 05:14:45', '0000-00-00 00:00:00'),
(17, 'Principles of Political Science', '405', 'Theory', 'no', '2019-03-08 05:15:17', '0000-00-00 00:00:00'),
(18, 'Islamic Jurisprudence', '406', 'Theory', 'no', '2019-03-08 05:15:41', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE IF NOT EXISTS `teachers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `dob` date DEFAULT NULL,
  `designation` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sex` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `name`, `email`, `password`, `address`, `dob`, `designation`, `sex`, `phone`, `image`, `is_active`, `created_at`, `updated_at`) VALUES
(4, 'Faheem Ahmed', 'fa093671@gmail.com', NULL, 'house # B2/19 railway society auto bahn road unit # 03 latifabad hyd', '1996-06-06', NULL, 'Male', '03312155823', 'uploads/student_images/no_image.png', 'no', '2019-03-26 15:41:49', '0000-00-00 00:00:00'),
(5, 'Zubair Shaikh', 'zubair.shaikh2004@gmail.com', NULL, 'main road unit # 11 latifabad hyd', '1985-02-14', NULL, 'Male', '03313591099', 'uploads/teacher_images/5.jpg', 'no', '2019-03-26 15:44:56', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_subjects`
--

CREATE TABLE IF NOT EXISTS `teacher_subjects` (
  `id` int(11) NOT NULL,
  `session_id` int(11) DEFAULT NULL,
  `class_section_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `part_id` int(11) NOT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `teacher_subjects`
--

INSERT INTO `teacher_subjects` (`id`, `session_id`, `class_section_id`, `subject_id`, `teacher_id`, `part_id`, `description`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 14, 1, 6, 1, 0, NULL, 'no', '2019-03-08 07:52:15', '0000-00-00 00:00:00'),
(2, 13, 1, 6, 1, 0, NULL, 'no', '2019-03-08 10:19:18', '0000-00-00 00:00:00'),
(3, 13, 1, 5, 2, 0, NULL, 'no', '2019-03-08 10:19:48', '0000-00-00 00:00:00'),
(4, 14, 12, 8, 4, 0, NULL, 'no', '2020-06-15 17:03:21', '0000-00-00 00:00:00'),
(5, 14, 12, 13, 4, 0, NULL, 'no', '2020-06-15 17:03:21', '0000-00-00 00:00:00'),
(6, 14, 12, 13, 5, 0, NULL, 'no', '2020-06-15 17:03:21', '0000-00-00 00:00:00'),
(7, 13, 19, 1, 4, 1, NULL, 'no', '2020-06-29 18:34:06', '0000-00-00 00:00:00'),
(8, 13, 19, 5, 5, 1, NULL, 'no', '2020-06-29 18:34:06', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `timetables`
--

CREATE TABLE IF NOT EXISTS `timetables` (
  `id` int(11) NOT NULL,
  `teacher_subject_id` int(20) DEFAULT NULL,
  `day_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_time` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `end_time` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `room_no` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `timetables`
--

INSERT INTO `timetables` (`id`, `teacher_subject_id`, `day_name`, `start_time`, `end_time`, `room_no`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 'Monday', '09:00 AM', '09:50 AM', '01', 'no', '2019-03-08 07:57:23', '0000-00-00 00:00:00'),
(2, 1, 'Tuesday', '09:00 AM', '09:50 AM', '01', 'no', '2019-03-08 07:57:23', '0000-00-00 00:00:00'),
(3, 1, 'Wednesday', '09:00 AM', '09:50 AM', '01', 'no', '2019-03-08 07:57:23', '0000-00-00 00:00:00'),
(4, 1, 'Thursday', '09:00 AM', '09:50 AM', '01', 'no', '2019-03-08 07:57:23', '0000-00-00 00:00:00'),
(5, 1, 'Friday', '', '', '', 'no', '2019-03-08 07:57:23', '0000-00-00 00:00:00'),
(6, 1, 'Saturday', '', '', '', 'no', '2019-03-08 07:57:23', '0000-00-00 00:00:00'),
(7, 1, 'Sunday', '', '', '', 'no', '2019-03-08 07:57:23', '0000-00-00 00:00:00'),
(8, 7, 'Monday', '09:00 AM', '10:40 AM', '#01', 'no', '2020-06-30 08:01:24', '0000-00-00 00:00:00'),
(9, 7, 'Tuesday', '09:00 AM', '10:40 AM', '#01', 'no', '2020-06-30 08:01:24', '0000-00-00 00:00:00'),
(10, 7, 'Wednesday', '09:00 AM', '10:40 AM', '#01', 'no', '2020-06-30 08:01:24', '0000-00-00 00:00:00'),
(11, 7, 'Thursday', '09:00 AM', '10:40 AM', '#01', 'no', '2020-06-30 08:01:24', '0000-00-00 00:00:00'),
(12, 7, 'Friday', '09:00 AM', '10:40 AM', '#01', 'no', '2020-06-30 08:01:24', '0000-00-00 00:00:00'),
(13, 7, 'Saturday', '', '', '', 'no', '2020-06-30 08:01:24', '0000-00-00 00:00:00'),
(14, 7, 'Sunday', '', '', '', 'no', '2020-06-30 08:01:24', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `transport_route`
--

CREATE TABLE IF NOT EXISTS `transport_route` (
  `id` int(11) NOT NULL,
  `route_title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_of_vehicle` int(11) DEFAULT NULL,
  `fare` float(10,2) DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE IF NOT EXISTS `userlog` (
  `id` int(11) NOT NULL,
  `user` varchar(100) DEFAULT NULL,
  `role` varchar(100) DEFAULT NULL,
  `ipaddress` varchar(100) DEFAULT NULL,
  `user_agent` varchar(500) DEFAULT NULL,
  `login_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES
(1, 'info@smiljamshoro.com', 'admin', '182.182.68.177', 'Safari 604.1, iOS', '2019-03-07 15:34:36'),
(2, 'info@smiljamshoro.com', 'admin', '103.75.246.171', 'Chrome 72.0.3626.121, Windows 10', '2019-03-07 15:46:51'),
(3, 'info@smiljamshoro.com', 'admin', '103.75.246.171', 'Chrome 72.0.3626.121, Windows 10', '2019-03-07 16:23:29'),
(4, 'info@smiljamshoro.com', 'admin', '103.75.246.171', 'Chrome 72.0.3626.121, Windows 10', '2019-03-07 16:25:10'),
(5, 'info@smiljamshoro.com', 'admin', '103.75.247.114', 'Chrome 72.0.3626.121, Windows 10', '2019-03-07 17:30:04'),
(6, 'info@smiljamshoro.com', 'admin', '182.182.67.140', 'Chrome 72.0.3626.121, Windows 7', '2019-03-07 19:02:56'),
(7, 'info@smiljamshoro.com', 'admin', '182.182.67.140', 'Chrome 72.0.3626.121, Windows 7', '2019-03-07 20:00:46'),
(8, 'Info@smiljamshoro.com', 'admin', '182.182.67.140', 'Chrome 72.0.3626.121, Android', '2019-03-07 20:01:42'),
(9, 'info@smiljamshoro.com', 'admin', '182.182.67.140', 'Chrome 72.0.3626.121, Windows 7', '2019-03-07 20:08:38'),
(10, 'info@smiljamshoro.com', 'admin', '182.182.67.140', 'Chrome 72.0.3626.121, Windows 7', '2019-03-07 20:12:26'),
(11, 'noorahmed1993@live.com', 'admin', '182.182.67.140', 'Chrome 72.0.3626.121, Windows 7', '2019-03-07 20:16:21'),
(12, 'info@smiljamshoro.com', 'admin', '182.182.67.140', 'Chrome 72.0.3626.121, Windows 7', '2019-03-07 20:17:28'),
(13, 'info@smiljamshoro.com', 'admin', '182.182.67.140', 'Chrome 72.0.3626.121, Windows 7', '2019-03-07 20:21:15'),
(14, 'info@smiljamshoro.com', 'admin', '182.182.67.140', 'Chrome 72.0.3626.121, Windows 7', '2019-03-08 04:43:28'),
(15, 'info@smiljamshoro.com', 'admin', '182.182.67.140', 'Internet Explorer 11.0, Windows 7', '2019-03-08 04:49:11'),
(16, 'info@smiljamshoro.com', 'admin', '182.182.67.140', 'Chrome 72.0.3626.121, Windows 7', '2019-03-08 07:45:31'),
(17, 'info@smiljamshoro.com', 'admin', '182.182.67.140', 'Chrome 72.0.3626.121, Windows 7', '2019-03-08 08:10:19'),
(18, 'info@smiljamshoro.com', 'admin', '182.182.67.140', 'Chrome 72.0.3626.121, Windows 7', '2019-03-08 09:59:25'),
(19, 'info@smiljamshoro.com', 'admin', '182.182.67.140', 'Chrome 72.0.3626.121, Windows 7', '2019-03-08 10:00:39'),
(20, 'info@smiljamshoro.com', 'admin', '182.182.67.140', 'Chrome 72.0.3626.121, Windows 7', '2019-03-08 10:03:25'),
(21, 'info@smiljamshoro.com', 'admin', '182.182.67.140', 'Chrome 72.0.3626.121, Windows 7', '2019-03-08 11:42:49'),
(22, 'info@smiljamshoro.com', 'admin', '182.182.67.140', 'Chrome 72.0.3626.121, Windows 7', '2019-03-08 12:19:44'),
(23, 'info@smiljamshoro.com', 'admin', '182.182.67.140', 'Chrome 72.0.3626.121, Windows 7', '2019-03-08 12:19:56'),
(24, 'info@smiljamshoro.com', 'admin', '182.182.67.140', 'Chrome 72.0.3626.121, Windows 7', '2019-03-08 12:39:55'),
(25, 'info@smiljamshoro.com', 'admin', '182.182.67.140', 'Chrome 72.0.3626.121, Windows 7', '2019-03-08 13:49:19'),
(26, 'info@smiljamshoro.com', 'admin', '182.182.67.140', 'Chrome 72.0.3626.121, Windows 7', '2019-03-08 20:19:46'),
(27, 'info@smiljamshoro.com', 'admin', '182.182.67.140', 'Chrome 72.0.3626.121, Windows 7', '2019-03-09 09:18:26'),
(28, 'info@smiljamshoro.com', 'admin', '103.75.247.123', 'Chrome 72.0.3626.121, Windows 10', '2019-03-23 09:59:40'),
(29, 'info@smiljamshoro.com', 'admin', '103.75.247.202', 'Chrome 73.0.3683.86, Windows 10', '2019-03-26 15:05:56'),
(30, 'info@smiljamshoro.com', 'admin', '103.75.247.14', 'Chrome 73.0.3683.86, Windows 10', '2019-03-27 15:52:20'),
(31, 'info@smiljamshoro.com', 'admin', '103.75.247.130', 'Chrome 73.0.3683.86, Windows 10', '2019-03-28 11:10:31'),
(32, 'Info@smiljamshoro.com', 'admin', '45.116.233.60', 'Chrome 73.0.3683.90, Android', '2019-03-30 17:33:55'),
(33, 'Info@smiljamshoro.com', 'admin', '122.8.104.188', 'Chrome 73.0.3683.90, Android', '2019-03-31 20:52:46'),
(34, 'info@smiljamshoro.com', 'admin', '103.75.246.42', 'Chrome 73.0.3683.86, Windows 10', '2019-04-01 13:00:27'),
(35, 'info@smiljamshoro.com', 'admin', '182.182.79.70', 'Chrome 75.0.3770.142, Windows 10', '2019-07-27 10:31:10'),
(36, 'info@smiljamshoro.com', 'admin', '182.182.79.70', 'Chrome 75.0.3770.142, Windows 10', '2019-07-27 10:47:22'),
(37, 'info@smiljamshoro.com', 'admin', '182.182.79.70', 'Chrome 75.0.3770.142, Windows 10', '2019-07-27 10:48:48'),
(38, 'info@smiljamshoro.com', 'admin', '182.182.79.70', 'Chrome 75.0.3770.142, Windows 8.1', '2019-07-27 10:49:57'),
(39, 'info@smiljamshoro.com', 'admin', '182.182.37.131', 'Chrome 75.0.3770.142, Windows 10', '2019-08-02 12:27:00'),
(40, 'info@smiljamshoro.com', 'admin', '182.182.37.131', 'Chrome 75.0.3770.142, Windows 10', '2019-08-02 12:35:41'),
(41, 'info@smiljamshoro.com', 'admin', '182.182.37.131', 'Chrome 75.0.3770.142, Windows 10', '2019-08-02 12:35:45'),
(42, 'info@smiljamshoro.com', 'admin', '182.182.37.131', 'Chrome 75.0.3770.142, Windows 10', '2019-08-02 12:39:00'),
(43, 'std11', 'student', '182.182.37.131', 'Chrome 75.0.3770.142, Windows 10', '2019-08-02 13:16:56'),
(44, 'std12', 'student', '182.182.37.131', 'Chrome 75.0.3770.142, Windows 10', '2019-08-02 13:21:54'),
(45, 'parent12', 'parent', '182.182.91.136', 'Chrome 75.0.3770.142, Windows 10', '2019-08-02 15:29:59'),
(46, 'parent12', 'parent', '182.182.91.136', 'Chrome 75.0.3770.142, Windows 10', '2019-08-02 15:31:59'),
(47, 'std12', 'student', '182.182.91.136', 'Chrome 75.0.3770.142, Windows 10', '2019-08-02 15:33:58'),
(48, 'info@smiljamshoro.com', 'admin', '182.182.91.136', 'Chrome 75.0.3770.142, Windows 10', '2019-08-02 15:45:58'),
(49, 'info@smiljamshoro.com', 'admin', '43.242.178.105', 'Chrome 75.0.3770.143, Android', '2019-08-04 06:56:33'),
(50, 'info@smiljamshoro.com', 'admin', '42.201.146.78', 'Chrome 75.0.3770.142, Windows 10', '2019-08-04 18:14:08'),
(51, 'info@smiljamshoro.com', 'admin', '42.201.146.78', 'Chrome 75.0.3770.142, Windows 10', '2019-08-04 18:49:48'),
(52, 'info@smiljamshoro.com', 'admin', '182.182.64.77', 'Chrome 76.0.3809.100, Windows 10', '2019-08-08 15:30:38'),
(53, 'info@smiljamshoro.com', 'admin', '182.182.60.214', 'Chrome 76.0.3809.100, Windows 10', '2019-08-19 14:03:51'),
(54, 'info@smiljamshoro.com', 'admin', '182.182.95.134', 'Chrome 76.0.3809.100, Windows 10', '2019-08-19 14:28:27'),
(55, 'info@smiljamshoro.com', 'admin', '182.182.95.134', 'Chrome 76.0.3809.100, Windows 10', '2019-08-19 14:30:07'),
(56, 'info@smiljamshoro.com', 'admin', '182.182.95.134', 'Chrome 76.0.3809.100, Windows 10', '2019-08-19 14:51:34'),
(57, 'info@smiljamshoro.com', 'admin', '43.242.178.66', 'Chrome 76.0.3809.132, Windows 10', '2019-08-29 18:51:34'),
(58, 'info@smiljamshoro.com', 'admin', '182.182.65.139', 'Chrome 77.0.3865.90, Windows 10', '2019-09-25 14:57:17'),
(59, 'info@smiljamshoro.com', 'admin', '103.228.157.48', 'Chrome 77.0.3865.90, Windows 10', '2019-10-04 18:36:09'),
(60, 'info@smiljamshoro.com', 'admin', '103.140.31.9', 'Chrome 77.0.3865.120, Windows 10', '2019-10-24 05:52:22'),
(61, 'info@smiljamshoro.com', 'admin', '103.140.31.9', 'Chrome 77.0.3865.120, Windows 10', '2019-10-24 06:02:09'),
(62, 'info@smiljamshoro.com', 'admin', '103.75.246.66', 'Firefox 70.0, Windows 10', '2019-11-02 13:51:57'),
(63, 'info@smiljamshoro.com', 'admin', '103.75.246.66', 'Chrome 78.0.3904.87, Windows 7', '2019-11-02 15:38:40'),
(64, 'info@smiljamshoro.com', 'admin', '137.59.220.70', 'Chrome 79.0.3945.130, Windows 10', '2020-01-28 13:25:35'),
(65, 'info@smiljamshoro.com', 'admin', '103.75.247.214', 'Chrome 79.0.3945.130, Windows 10', '2020-01-30 11:52:34'),
(66, 'info@smiljamshoro.com', 'admin', '122.8.66.98', 'Chrome 79.0.3945.130, Windows 10', '2020-02-10 22:31:18'),
(67, 'info@smiljamshoro.com', 'admin', '103.75.246.27', 'Chrome 79.0.3945.130, Windows 10', '2020-02-11 11:51:23'),
(68, 'info@smiljamshoro.com', 'admin', '103.75.246.27', 'Chrome 79.0.3945.130, Windows 10', '2020-02-11 14:50:51'),
(69, 'info@smiljamshoro.com', 'admin', '43.242.176.31', 'Chrome 83.0.4103.61, Windows 10', '2020-06-07 06:16:43'),
(70, 'info@smiljamshoro.com', 'admin', '::1', 'Chrome 83.0.4103.61, Windows 10', '2020-06-07 07:07:56'),
(71, 'info@smiljamshoro.com', 'admin', '::1', 'Chrome 83.0.4103.61, Windows 10', '2020-06-07 08:12:35'),
(72, 'info@smiljamshoro.com', 'admin', '::1', 'Chrome 83.0.4103.97, Windows 10', '2020-06-13 07:47:55'),
(73, 'info@smiljamshoro.com', 'admin', '::1', 'Chrome 83.0.4103.97, Windows 10', '2020-06-13 07:50:47'),
(74, 'info@smiljamshoro.com', 'admin', '::1', 'Chrome 83.0.4103.97, Windows 10', '2020-06-14 06:23:10'),
(75, 'info@smiljamshoro.com', 'admin', '::1', 'Chrome 83.0.4103.97, Windows 10', '2020-06-15 16:49:28'),
(76, 'info@smiljamshoro.com', 'admin', '::1', 'Chrome 83.0.4103.97, Windows 10', '2020-06-17 07:50:11'),
(77, 'info@smiljamshoro.com', 'admin', '::1', 'Chrome 83.0.4103.106, Windows 10', '2020-06-18 17:36:10'),
(78, 'info@smiljamshoro.com', 'admin', '::1', 'Chrome 83.0.4103.106, Windows 10', '2020-06-18 18:59:08'),
(79, 'info@smiljamshoro.com', 'admin', '::1', 'Chrome 83.0.4103.106, Windows 10', '2020-06-20 06:45:38'),
(80, 'teacher5', 'teacher', '::1', 'Chrome 83.0.4103.106, Windows 10', '2020-06-20 06:50:43'),
(81, 'info@smiljamshoro.com', 'admin', '::1', 'Chrome 83.0.4103.106, Windows 10', '2020-06-20 07:46:59'),
(82, 'info@smiljamshoro.com', 'admin', '::1', 'Chrome 83.0.4103.106, Windows 10', '2020-06-20 11:46:59'),
(83, 'info@smiljamshoro.com', 'admin', '::1', 'Chrome 83.0.4103.106, Windows 10', '2020-06-20 18:38:07'),
(84, 'info@smiljamshoro.com', 'admin', '::1', 'Chrome 83.0.4103.106, Windows 10', '2020-06-21 07:02:18'),
(85, 'info@smiljamshoro.com', 'admin', '::1', 'Chrome 83.0.4103.106, Windows 10', '2020-06-21 10:41:53'),
(86, 'info@smiljamshoro.com', 'admin', '::1', 'Chrome 83.0.4103.106, Windows 10', '2020-06-22 17:33:56'),
(87, 'teacher5', 'teacher', '::1', 'Chrome 83.0.4103.106, Windows 10', '2020-06-22 19:11:24'),
(88, 'info@smiljamshoro.com', 'admin', '43.242.176.127', 'Chrome 83.0.4103.106, Windows 10', '2020-06-22 19:38:58'),
(89, 'info@smiljamshoro.com', 'admin', '43.242.176.127', 'Chrome 83.0.4103.106, Windows 10', '2020-06-22 19:40:20'),
(90, 'info@smiljamshoro.com', 'admin', '182.182.1.113', 'Safari 604.1, iOS', '2020-06-22 22:37:34'),
(91, 'info@smiljamshoro.com', 'admin', '182.182.14.110', 'Safari 604.1, iOS', '2020-06-23 21:14:11'),
(92, 'info@smiljamshoro.com', 'admin', '182.182.55.98', 'Chrome 83.0.4103.116, Windows 7', '2020-06-24 17:34:05'),
(93, 'info@smiljamshoro.com', 'admin', '43.242.176.49', 'Chrome 83.0.4103.116, Windows 10', '2020-06-25 16:38:53'),
(94, 'info@smiljamshoro.com', 'admin', '182.182.43.93', 'Safari 604.1, iOS', '2020-06-25 20:53:04'),
(95, 'info@smiljamshoro.com', 'admin', '182.182.50.246', 'Safari 604.1, iOS', '2020-06-26 09:43:55'),
(96, 'info@smiljamshoro.com', 'admin', '182.182.113.0', 'Chrome 83.0.4103.116, Windows 7', '2020-06-27 08:26:35'),
(97, 'info@smiljamshoro.com', 'admin', '182.182.113.0', 'Chrome 83.0.4103.116, Windows 7', '2020-06-27 08:41:36'),
(98, 'info@smiljamshoro.com', 'admin', '182.182.113.0', 'Chrome 83.0.4103.116, Windows 7', '2020-06-27 09:09:30'),
(99, 'accountant2', 'accountant', '182.182.113.0', 'Chrome 83.0.4103.116, Windows 7', '2020-06-27 09:18:43'),
(100, 'saleemakhtar@smil.edu.pk', 'admin', '182.182.113.0', 'Chrome 83.0.4103.116, Windows 7', '2020-06-27 09:23:59'),
(101, 'noorahmed1993@live.com', 'admin', '182.182.113.0', 'Chrome 83.0.4103.116, Windows 7', '2020-06-27 09:24:06'),
(102, 'accountant2', 'accountant', '182.182.113.0', 'Chrome 83.0.4103.116, Windows 7', '2020-06-27 09:26:09'),
(103, 'noorahmed1993@live.com', 'admin', '182.182.113.0', 'Chrome 83.0.4103.116, Windows 7', '2020-06-27 09:27:25'),
(104, 'accountant2', 'accountant', '182.182.113.0', 'Chrome 83.0.4103.116, Windows 7', '2020-06-27 09:29:06'),
(105, 'accountant2', 'accountant', '182.182.113.0', 'Chrome 83.0.4103.116, Windows 7', '2020-06-27 09:30:16'),
(106, 'accountant2', 'accountant', '182.182.113.0', 'Chrome 83.0.4103.116, Windows 7', '2020-06-27 09:34:26'),
(107, 'accountant2', 'accountant', '182.182.113.0', 'Chrome 83.0.4103.116, Windows 7', '2020-06-27 09:37:42'),
(108, 'accountant2', 'accountant', '182.182.113.0', 'Chrome 83.0.4103.116, Windows 7', '2020-06-27 09:38:42'),
(109, 'info@smiljamshoro.com', 'admin', '182.182.113.0', 'Chrome 83.0.4103.116, Windows 7', '2020-06-27 09:45:42'),
(110, 'info@smiljamshoro.com', 'admin', '182.182.113.0', 'Chrome 83.0.4103.116, Windows 7', '2020-06-27 09:50:59'),
(111, 'info@smiljamshoro.com', 'admin', '43.242.176.108', 'Chrome 83.0.4103.116, Windows 10', '2020-06-28 12:06:02'),
(112, 'accountant2', 'accountant', '43.242.176.108', 'Chrome 83.0.4103.116, Windows 10', '2020-06-28 12:07:42'),
(113, 'teacher4', 'teacher', '43.242.176.108', 'Chrome 83.0.4103.116, Windows 10', '2020-06-28 12:16:31'),
(114, 'info@smiljamshoro.com', 'admin', '182.182.22.34', 'Chrome 83.0.4103.116, Windows 7', '2020-06-28 18:26:39'),
(115, 'accountant2', 'accountant', '182.182.22.34', 'Chrome 83.0.4103.116, Windows 7', '2020-06-28 18:27:22'),
(116, 'info@smiljamshoro.com', 'admin', '182.182.22.34', 'Chrome 83.0.4103.116, Windows 7', '2020-06-28 18:31:29'),
(117, 'info@smiljamshoro.com', 'admin', '182.182.22.34', 'Chrome 83.0.4103.116, Windows 7', '2020-06-29 05:05:07'),
(118, 'accountant2', 'accountant', '182.182.22.34', 'Chrome 83.0.4103.116, Windows 7', '2020-06-29 06:54:30'),
(119, 'accountant2', 'accountant', '182.182.22.34', 'Chrome 83.0.4103.116, Windows 7', '2020-06-29 07:02:53'),
(120, 'info@smiljamshoro.com', 'admin', '43.242.176.122', 'Chrome 83.0.4103.116, Windows 10', '2020-06-29 18:33:15'),
(121, 'info@smiljamshoro.com', 'admin', '182.182.22.34', 'Chrome 83.0.4103.116, Windows 7', '2020-06-30 06:17:31'),
(122, 'info@smiljamshoro.com', 'admin', '182.182.22.34', 'Chrome 83.0.4103.116, Windows 7', '2020-06-30 07:15:29'),
(123, 'info@smiljamshoro.com', 'admin', '182.182.15.84', 'Chrome 83.0.4103.116, Windows 7', '2020-06-30 07:34:55'),
(124, 'info@smiljamshoro.com', 'admin', '182.182.15.84', 'Chrome 83.0.4103.116, Windows 7', '2020-06-30 09:47:51'),
(125, 'info@smiljamshoro.com', 'admin', '103.75.245.94', 'Chrome 83.0.4103.116, Windows 10', '2020-06-30 13:32:35'),
(126, 'info@smiljamshoro.com', 'admin', '182.182.15.84', 'Chrome 83.0.4103.116, Windows 7', '2020-06-30 16:38:17'),
(127, 'info@smiljamshoro.com', 'admin', '182.182.15.84', 'Chrome 83.0.4103.116, Windows 7', '2020-06-30 16:57:27'),
(128, 'info@smiljamshoro.com', 'admin', '43.242.176.37', 'Chrome 83.0.4103.116, Windows 10', '2020-06-30 17:20:45'),
(129, 'info@smiljamshoro.com', 'admin', '43.242.176.37', 'Chrome 83.0.4103.116, Windows 10', '2020-06-30 17:35:23'),
(130, 'info@smiljamshoro.com', 'admin', '182.182.15.84', 'Chrome 83.0.4103.116, Windows 7', '2020-07-01 04:45:07'),
(131, 'info@smiljamshoro.com', 'admin', '182.182.15.84', 'Chrome 83.0.4103.116, Windows 7', '2020-07-01 06:46:36'),
(132, 'info@smiljamshoro.com', 'admin', '182.182.15.84', 'Chrome 83.0.4103.116, Windows 7', '2020-07-02 09:07:39'),
(133, 'info@smiljamshoro.com', 'admin', '182.182.15.84', 'Chrome 83.0.4103.116, Windows 7', '2020-07-02 09:14:50'),
(134, 'info@smiljamshoro.com', 'admin', '182.182.57.78', 'Chrome 83.0.4103.116, Windows 7', '2020-07-02 19:39:02'),
(135, 'info@smiljamshoro.com', 'admin', '182.182.57.78', 'Chrome 83.0.4103.116, Windows 7', '2020-07-02 19:43:37'),
(136, 'accountant2', 'accountant', '182.182.19.37', 'Chrome 83.0.4103.116, Windows 7', '2020-07-03 09:08:01'),
(137, 'info@smiljamshoro.com', 'admin', '182.182.19.37', 'Chrome 83.0.4103.116, Windows 7', '2020-07-04 08:36:12'),
(138, 'info@smiljamshoro.com', 'admin', '182.182.19.37', 'Chrome 83.0.4103.116, Windows 7', '2020-07-04 08:39:06'),
(139, 'info@smiljamshoro.com', 'admin', '182.182.118.227', 'Chrome 83.0.4103.116, Windows 7', '2020-07-05 18:22:24'),
(140, 'accountant2', 'accountant', '182.182.118.227', 'Chrome 83.0.4103.116, Windows 7', '2020-07-05 18:27:14'),
(141, 'info@smiljamshoro.com', 'admin', '182.182.43.241', 'Safari 604.1, iOS', '2020-07-06 15:00:43'),
(142, 'info@smiljamshoro.com', 'admin', '182.182.19.37', 'Chrome 83.0.4103.116, Windows 7', '2020-07-06 15:27:37'),
(143, 'info@smiljamshoro.com', 'admin', '182.182.19.37', 'Chrome 83.0.4103.116, Windows 7', '2020-07-06 16:03:56'),
(144, 'info@smiljamshoro.com', 'admin', '182.182.43.241', 'Safari 604.1, iOS', '2020-07-06 18:07:27'),
(145, 'info@smiljamshoro.com', 'admin', '43.242.176.107', 'Chrome 83.0.4103.116, Windows 10', '2020-07-06 18:11:40'),
(146, 'accountant2', 'accountant', '182.182.19.37', 'Chrome 83.0.4103.116, Windows 7', '2020-07-07 05:21:11'),
(147, 'accountant2', 'accountant', '182.182.19.37', 'Chrome 83.0.4103.116, Windows 7', '2020-07-07 06:25:31'),
(148, 'accountant2', 'accountant', '182.182.19.37', 'Chrome 83.0.4103.116, Windows 7', '2020-07-07 06:27:32'),
(149, 'accountant2', 'accountant', '182.182.19.37', 'Chrome 83.0.4103.116, Windows 7', '2020-07-07 07:09:16'),
(150, 'info@smiljamshoro.com', 'admin', '182.182.15.213', 'Chrome 83.0.4103.116, Windows 7', '2020-07-07 07:30:31'),
(151, 'info@smiljamshoro.com', 'admin', '182.182.15.9', 'Chrome 83.0.4103.116, Windows 7', '2020-07-07 10:10:38'),
(152, 'info@smiljamshoro.com', 'admin', '182.182.15.9', 'Chrome 83.0.4103.116, Windows 7', '2020-07-07 10:13:55'),
(153, 'info@smiljamshoro.com', 'admin', '182.182.15.9', 'Chrome 83.0.4103.116, Windows 7', '2020-07-07 12:46:17'),
(154, 'info@smiljamshoro.com', 'admin', '103.75.247.48', 'Spartan 16.16299, Windows 10', '2020-07-07 14:36:19'),
(155, 'info@smiljamshoro.com', 'admin', '103.75.246.91', 'Spartan 16.16299, Windows 10', '2020-07-07 14:40:51'),
(156, 'info@smiljamshoro.com', 'admin', '182.182.15.9', 'Chrome 83.0.4103.116, Windows 7', '2020-07-07 15:30:50'),
(157, 'info@smiljamshoro.com', 'admin', '182.182.15.9', 'Chrome 83.0.4103.116, Windows 7', '2020-07-07 15:31:49'),
(158, 'info@smiljamshoro.com', 'admin', '43.242.176.107', 'Chrome 83.0.4103.116, Windows 10', '2020-07-07 17:31:08'),
(159, 'info@smiljamshoro.com', 'admin', '::1', 'Chrome 83.0.4103.116, Windows 10', '2020-07-08 09:09:17'),
(160, 'info@smiljamshoro.com', 'admin', '::1', 'Chrome 83.0.4103.116, Windows 10', '2020-07-08 17:44:07'),
(161, 'info@smiljamshoro.com', 'admin', '::1', 'Chrome 83.0.4103.116, Windows 10', '2020-07-09 14:26:16'),
(162, 'info@smiljamshoro.com', 'admin', '::1', 'Chrome 83.0.4103.116, Windows 10', '2020-07-09 17:26:40'),
(163, 'info@smiljamshoro.com', 'admin', '::1', 'Chrome 83.0.4103.116, Windows 10', '2020-07-13 17:54:16'),
(164, 'accountant2', 'accountant', '::1', 'Chrome 83.0.4103.116, Windows 10', '2020-07-13 18:05:14'),
(165, 'accountant2', 'accountant', '::1', 'Chrome 83.0.4103.116, Windows 10', '2020-07-13 18:45:16'),
(166, 'info@smiljamshoro.com', 'admin', '::1', 'Chrome 83.0.4103.116, Windows 10', '2020-07-13 19:10:41'),
(167, 'info@smiljamshoro.com', 'admin', '::1', 'Chrome 83.0.4103.116, Windows 10', '2020-07-15 17:53:30'),
(168, 'info@smiljamshoro.com', 'admin', '::1', 'Chrome 84.0.4147.89, Windows 10', '2020-07-17 17:39:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `user_id` int(10) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `childs` text COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `verification_code` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'yes',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=290 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 'teacher1', 'cxur19', '', 'teacher', '', 'yes', '2019-03-08 05:22:32', '0000-00-00 00:00:00'),
(2, 1, 'std1', 'wlurka', '', 'student', '', 'no', '2019-03-08 14:04:43', '0000-00-00 00:00:00'),
(3, 1, 'parent1', '2t8ebo', '1', 'parent', '', 'yes', '2019-03-08 07:02:11', '0000-00-00 00:00:00'),
(4, 2, 'std2', '5dxmfi', '', 'student', '', 'no', '2019-03-08 14:05:18', '0000-00-00 00:00:00'),
(5, 2, 'parent2', 'awvvjj', '2', 'parent', '', 'yes', '2019-03-08 08:23:17', '0000-00-00 00:00:00'),
(6, 3, 'std3', 'rewg8v', '', 'student', '', 'no', '2019-03-08 14:05:06', '0000-00-00 00:00:00'),
(7, 3, 'parent3', 'lt6opf', '3', 'parent', '', 'yes', '2019-03-08 08:35:52', '0000-00-00 00:00:00'),
(8, 4, 'std4', 'pmjl4w', '', 'student', '', 'no', '2019-03-08 14:05:04', '0000-00-00 00:00:00'),
(9, 4, 'parent4', 'e9u1yz', '4', 'parent', '', 'yes', '2019-03-08 08:49:04', '0000-00-00 00:00:00'),
(10, 5, 'std5', '4gp95y', '', 'student', '', 'no', '2019-03-08 14:05:01', '0000-00-00 00:00:00'),
(11, 5, 'parent5', 'qdob7v', '5', 'parent', '', 'yes', '2019-03-08 09:09:41', '0000-00-00 00:00:00'),
(12, 6, 'std6', '6ertu2', '', 'student', '', 'no', '2019-03-08 14:04:59', '0000-00-00 00:00:00'),
(13, 6, 'parent6', 'l5w38j', '6', 'parent', '', 'yes', '2019-03-08 09:22:05', '0000-00-00 00:00:00'),
(14, 7, 'std7', 'b0stdo', '', 'student', '', 'no', '2019-03-08 14:04:57', '0000-00-00 00:00:00'),
(15, 7, 'parent7', '3udvuf', '7', 'parent', '', 'yes', '2019-03-08 09:30:14', '0000-00-00 00:00:00'),
(16, 8, 'std8', 'evlsvd', '', 'student', '', 'no', '2019-03-08 14:04:56', '0000-00-00 00:00:00'),
(17, 8, 'parent8', 'nagspq', '8', 'parent', '', 'yes', '2019-03-08 09:37:26', '0000-00-00 00:00:00'),
(18, 9, 'std9', '10wykd', '', 'student', '', 'no', '2019-03-08 14:05:14', '0000-00-00 00:00:00'),
(19, 9, 'parent9', 'aa0vm4', '9', 'parent', '', 'yes', '2019-03-08 10:03:38', '0000-00-00 00:00:00'),
(20, 2, 'teacher2', '34j831', '', 'teacher', '', 'yes', '2019-03-08 10:16:19', '0000-00-00 00:00:00'),
(21, 3, 'teacher3', 'peiijp', '', 'teacher', '', 'yes', '2019-03-08 10:21:17', '0000-00-00 00:00:00'),
(22, 1, 'accountant1', 'cmx1n2', '', 'accountant', '', 'yes', '2020-06-27 09:11:14', '0000-00-00 00:00:00'),
(23, 4, 'teacher4', 'r13u43', '', 'teacher', '', 'yes', '2019-03-26 15:41:49', '0000-00-00 00:00:00'),
(24, 5, 'teacher5', '0jocld', '', 'teacher', '', 'yes', '2019-03-26 15:44:56', '0000-00-00 00:00:00'),
(25, 0, 'std0', '3yzhrn', '', 'student', '', 'yes', '2019-07-27 10:58:40', '0000-00-00 00:00:00'),
(26, 0, 'parent0', 'ey53ht', '0', 'parent', '', 'yes', '2019-07-27 10:58:40', '0000-00-00 00:00:00'),
(27, 10, 'std10', 'p5q16u', '', 'student', 'anp1aDJhSzJxcDlyS2d6Q1BENm5Sc1BPem1vcHRjaFdHL3VPdWtYMFFLST0=', 'yes', '2019-08-02 13:27:04', '0000-00-00 00:00:00'),
(28, 10, 'parent10', '9de721', '10', 'parent', '', 'yes', '2019-08-02 12:55:04', '0000-00-00 00:00:00'),
(29, 11, 'std11', 'k7avva', '', 'student', '', 'yes', '2019-08-02 12:56:04', '0000-00-00 00:00:00'),
(30, 11, 'parent11', 'nbtv3c', '11', 'parent', '', 'yes', '2019-08-02 12:56:04', '0000-00-00 00:00:00'),
(31, 12, 'std12', 'x10367', '', 'student', 'U01taWJCWHRnTXcyYU43cUc0cFdPOVl5T25HTGdMeXFhNDFLRmxoWVErUT0=', 'yes', '2019-08-02 13:46:16', '0000-00-00 00:00:00'),
(32, 12, 'parent12', 'qg5skr', '12', 'parent', '', 'yes', '2019-08-02 13:18:33', '0000-00-00 00:00:00'),
(33, 13, 'std13', '5ca5p7', '', 'student', '', 'yes', '2019-11-02 15:43:06', '0000-00-00 00:00:00'),
(34, 13, 'parent13', '5wmxh8', '13', 'parent', '', 'yes', '2019-11-02 15:43:06', '0000-00-00 00:00:00'),
(35, 14, 'std14', '7zf90e', '', 'student', '', 'yes', '2019-11-02 15:52:17', '0000-00-00 00:00:00'),
(36, 14, 'parent14', 'xgcq3l', '14', 'parent', '', 'yes', '2019-11-02 15:52:17', '0000-00-00 00:00:00'),
(37, 15, 'std15', '8jhl9a', '', 'student', '', 'yes', '2019-11-02 16:05:29', '0000-00-00 00:00:00'),
(38, 15, 'parent15', 'ga69lk', '15', 'parent', '', 'yes', '2019-11-02 16:05:29', '0000-00-00 00:00:00'),
(39, 16, 'std16', '04o672', '', 'student', '', 'yes', '2019-11-02 16:07:52', '0000-00-00 00:00:00'),
(40, 16, 'parent16', 'ua7c7m', '16', 'parent', '', 'yes', '2019-11-02 16:07:52', '0000-00-00 00:00:00'),
(41, 17, 'std17', 'q0btj0', '', 'student', '', 'yes', '2019-11-02 16:12:38', '0000-00-00 00:00:00'),
(42, 17, 'parent17', 'dhyypg', '17', 'parent', '', 'yes', '2019-11-02 16:12:38', '0000-00-00 00:00:00'),
(43, 18, 'std18', '6018nk', '', 'student', '', 'yes', '2020-01-30 13:11:40', '0000-00-00 00:00:00'),
(44, 18, 'parent18', '39mupz', '18', 'parent', '', 'yes', '2020-01-30 13:11:40', '0000-00-00 00:00:00'),
(45, 19, 'std19', '63fu6n', '', 'student', '', 'yes', '2020-06-15 18:37:31', '0000-00-00 00:00:00'),
(46, 19, 'parent19', 'gmy81m', '19', 'parent', '', 'yes', '2020-06-15 18:37:31', '0000-00-00 00:00:00'),
(47, 20, 'std20', 's8qwse', '', 'student', '', 'yes', '2020-06-22 17:45:34', '0000-00-00 00:00:00'),
(48, 20, 'parent20', 'rnkb67', '20', 'parent', '', 'yes', '2020-06-22 17:45:34', '0000-00-00 00:00:00'),
(51, 2, 'accountant2', 'accountant2', '', 'accountant', '', 'yes', '2020-06-27 09:19:09', '0000-00-00 00:00:00'),
(52, 22, 'std22', 'cvrj9u', '', 'student', '', 'yes', '2020-06-27 09:35:03', '0000-00-00 00:00:00'),
(53, 22, 'parent22', 'aw3i1o', '22', 'parent', '', 'yes', '2020-06-27 09:35:03', '0000-00-00 00:00:00'),
(54, 1, 'librarian1', 'am8z07', '', 'librarian', '', 'yes', '2020-06-27 09:48:51', '0000-00-00 00:00:00'),
(55, 2, 'librarian2', 'dexwen', '', 'librarian', '', 'yes', '2020-06-27 09:48:56', '0000-00-00 00:00:00'),
(56, 23, 'std23', 'badx2k', '', 'student', '', 'yes', '2020-06-27 09:54:18', '0000-00-00 00:00:00'),
(57, 23, 'parent23', '3f6yah', '23', 'parent', '', 'yes', '2020-06-27 09:54:18', '0000-00-00 00:00:00'),
(58, 24, 'std24', 'x4bvfy', '', 'student', '', 'yes', '2020-06-27 10:02:41', '0000-00-00 00:00:00'),
(59, 24, 'parent24', 'gfcqf3', '24', 'parent', '', 'yes', '2020-06-27 10:02:41', '0000-00-00 00:00:00'),
(60, 25, 'std25', 'hy0hz5', '', 'student', '', 'yes', '2020-06-27 10:11:56', '0000-00-00 00:00:00'),
(61, 25, 'parent25', 'ico4ax', '25', 'parent', '', 'yes', '2020-06-27 10:11:56', '0000-00-00 00:00:00'),
(62, 26, 'std26', 'n6fem6', '', 'student', '', 'yes', '2020-06-27 10:19:15', '0000-00-00 00:00:00'),
(63, 26, 'parent26', 'r9puma', '26', 'parent', '', 'yes', '2020-06-27 10:19:15', '0000-00-00 00:00:00'),
(64, 27, 'std27', 'lkj7bh', '', 'student', '', 'yes', '2020-06-27 10:24:27', '0000-00-00 00:00:00'),
(65, 27, 'parent27', 'sgyzue', '27', 'parent', '', 'yes', '2020-06-27 10:24:27', '0000-00-00 00:00:00'),
(66, 28, 'std28', 'vrm7i8', '', 'student', '', 'yes', '2020-06-29 05:14:32', '0000-00-00 00:00:00'),
(67, 28, 'parent28', '0aj79z', '28', 'parent', '', 'yes', '2020-06-29 05:14:32', '0000-00-00 00:00:00'),
(68, 29, 'std29', '4fi0nf', '', 'student', '', 'yes', '2020-06-29 05:20:08', '0000-00-00 00:00:00'),
(69, 29, 'parent29', 'lv92k9', '29', 'parent', '', 'yes', '2020-06-29 05:20:08', '0000-00-00 00:00:00'),
(70, 30, 'std30', 'f0l79z', '', 'student', '', 'yes', '2020-06-29 05:26:35', '0000-00-00 00:00:00'),
(71, 30, 'parent30', 'd12i7s', '30', 'parent', '', 'yes', '2020-06-29 05:26:35', '0000-00-00 00:00:00'),
(72, 31, 'std31', 'v00dm5', '', 'student', '', 'yes', '2020-06-29 05:44:46', '0000-00-00 00:00:00'),
(73, 31, 'parent31', 'u3b1kf', '31', 'parent', '', 'yes', '2020-06-29 05:44:46', '0000-00-00 00:00:00'),
(74, 32, 'std32', 'ues3so', '', 'student', '', 'yes', '2020-06-29 05:51:05', '0000-00-00 00:00:00'),
(75, 32, 'parent32', 'metw6r', '32', 'parent', '', 'yes', '2020-06-29 05:51:05', '0000-00-00 00:00:00'),
(76, 33, 'std33', '1ug335', '', 'student', '', 'yes', '2020-06-29 05:56:53', '0000-00-00 00:00:00'),
(77, 33, 'parent33', '2nof7n', '33', 'parent', '', 'yes', '2020-06-29 05:56:53', '0000-00-00 00:00:00'),
(78, 34, 'std34', 'yvejsx', '', 'student', '', 'yes', '2020-06-29 06:01:15', '0000-00-00 00:00:00'),
(79, 34, 'parent34', 'wmj14g', '34', 'parent', '', 'yes', '2020-06-29 06:01:15', '0000-00-00 00:00:00'),
(80, 35, 'std35', 'eq00g9', '', 'student', '', 'yes', '2020-06-29 06:07:46', '0000-00-00 00:00:00'),
(81, 35, 'parent35', 'rxdglc', '35', 'parent', '', 'yes', '2020-06-29 06:07:46', '0000-00-00 00:00:00'),
(82, 36, 'std36', '57buyg', '', 'student', '', 'yes', '2020-06-29 06:12:19', '0000-00-00 00:00:00'),
(83, 36, 'parent36', 'qm7dt5', '36', 'parent', '', 'yes', '2020-06-29 06:12:19', '0000-00-00 00:00:00'),
(84, 37, 'std37', 'tnw5xf', '', 'student', '', 'yes', '2020-06-29 06:39:05', '0000-00-00 00:00:00'),
(85, 37, 'parent37', '9zcjrm', '37', 'parent', '', 'yes', '2020-06-29 06:39:05', '0000-00-00 00:00:00'),
(86, 38, 'std38', '8ta9uw', '', 'student', '', 'yes', '2020-06-29 06:44:16', '0000-00-00 00:00:00'),
(87, 38, 'parent38', 'qgioac', '38', 'parent', '', 'yes', '2020-06-29 06:44:16', '0000-00-00 00:00:00'),
(88, 39, 'std39', '8w7hxq', '', 'student', '', 'yes', '2020-06-29 06:49:37', '0000-00-00 00:00:00'),
(89, 39, 'parent39', 'k93b69', '39', 'parent', '', 'yes', '2020-06-29 06:49:37', '0000-00-00 00:00:00'),
(90, 40, 'std40', 'kaxp3k', '', 'student', '', 'yes', '2020-06-30 06:24:09', '0000-00-00 00:00:00'),
(91, 40, 'parent40', '9nqa5x', '40', 'parent', '', 'yes', '2020-06-30 06:24:09', '0000-00-00 00:00:00'),
(92, 41, 'std41', '5o9ge5', '', 'student', '', 'yes', '2020-06-30 06:33:12', '0000-00-00 00:00:00'),
(93, 41, 'parent41', '6lv140', '41', 'parent', '', 'yes', '2020-06-30 06:33:12', '0000-00-00 00:00:00'),
(94, 42, 'std42', 'hdm0mf', '', 'student', '', 'yes', '2020-06-30 06:41:56', '0000-00-00 00:00:00'),
(95, 42, 'parent42', 'wmj37q', '42', 'parent', '', 'yes', '2020-06-30 06:41:56', '0000-00-00 00:00:00'),
(96, 43, 'std43', '9xx7vq', '', 'student', '', 'yes', '2020-06-30 06:46:48', '0000-00-00 00:00:00'),
(97, 43, 'parent43', 'gyhk3k', '43', 'parent', '', 'yes', '2020-06-30 06:46:48', '0000-00-00 00:00:00'),
(98, 44, 'std44', 'efiqny', '', 'student', '', 'yes', '2020-06-30 06:51:15', '0000-00-00 00:00:00'),
(99, 44, 'parent44', '2wh0ub', '44', 'parent', '', 'yes', '2020-06-30 06:51:15', '0000-00-00 00:00:00'),
(100, 45, 'std45', '4kkjzp', '', 'student', '', 'yes', '2020-06-30 06:58:25', '0000-00-00 00:00:00'),
(101, 45, 'parent45', 'wmom8k', '45', 'parent', '', 'yes', '2020-06-30 06:58:25', '0000-00-00 00:00:00'),
(102, 46, 'std46', 'tsbws7', '', 'student', '', 'yes', '2020-06-30 07:04:39', '0000-00-00 00:00:00'),
(103, 46, 'parent46', 'xlkpr7', '46', 'parent', '', 'yes', '2020-06-30 07:04:39', '0000-00-00 00:00:00'),
(104, 47, 'std47', 'om8ixy', '', 'student', '', 'yes', '2020-06-30 07:10:12', '0000-00-00 00:00:00'),
(105, 47, 'parent47', '39odn5', '47', 'parent', '', 'yes', '2020-06-30 07:10:12', '0000-00-00 00:00:00'),
(106, 48, 'std48', '0latb1', '', 'student', '', 'yes', '2020-06-30 07:15:31', '0000-00-00 00:00:00'),
(107, 48, 'parent48', 'l3n45y', '48', 'parent', '', 'yes', '2020-06-30 07:15:31', '0000-00-00 00:00:00'),
(108, 49, 'std49', 'e952m1', '', 'student', '', 'yes', '2020-06-30 07:19:47', '0000-00-00 00:00:00'),
(109, 49, 'parent49', 'axm0bf', '49', 'parent', '', 'yes', '2020-06-30 07:19:47', '0000-00-00 00:00:00'),
(110, 50, 'std50', 'elzn9n', '', 'student', '', 'yes', '2020-06-30 09:52:49', '0000-00-00 00:00:00'),
(111, 50, 'parent50', '77gr2s', '50', 'parent', '', 'yes', '2020-06-30 09:52:49', '0000-00-00 00:00:00'),
(112, 51, 'std51', '5qw4sb', '', 'student', '', 'yes', '2020-06-30 09:57:27', '0000-00-00 00:00:00'),
(113, 51, 'parent51', 'ghm2lr', '51', 'parent', '', 'yes', '2020-06-30 09:57:27', '0000-00-00 00:00:00'),
(114, 52, 'std52', 'mxae5n', '', 'student', '', 'yes', '2020-06-30 10:01:33', '0000-00-00 00:00:00'),
(115, 52, 'parent52', 'ny9gm3', '52', 'parent', '', 'yes', '2020-06-30 10:01:33', '0000-00-00 00:00:00'),
(116, 53, 'std53', 'zmtvjv', '', 'student', '', 'yes', '2020-06-30 10:07:45', '0000-00-00 00:00:00'),
(117, 53, 'parent53', '22cs8b', '53', 'parent', '', 'yes', '2020-06-30 10:07:45', '0000-00-00 00:00:00'),
(118, 54, 'std54', 'fmjy53', '', 'student', '', 'yes', '2020-06-30 10:13:01', '0000-00-00 00:00:00'),
(119, 54, 'parent54', 'e2i48w', '54', 'parent', '', 'yes', '2020-06-30 10:13:01', '0000-00-00 00:00:00'),
(120, 55, 'std55', 'bz9fa7', '', 'student', '', 'yes', '2020-06-30 10:20:57', '0000-00-00 00:00:00'),
(121, 55, 'parent55', '81jc3x', '55', 'parent', '', 'yes', '2020-06-30 10:20:57', '0000-00-00 00:00:00'),
(122, 56, 'std56', 'xg381b', '', 'student', '', 'yes', '2020-06-30 10:31:42', '0000-00-00 00:00:00'),
(123, 56, 'parent56', 'rkx4yc', '56', 'parent', '', 'yes', '2020-06-30 10:31:42', '0000-00-00 00:00:00'),
(124, 57, 'std57', 'e9c1zk', '', 'student', '', 'yes', '2020-06-30 10:37:32', '0000-00-00 00:00:00'),
(125, 57, 'parent57', 'swyx4i', '57', 'parent', '', 'yes', '2020-06-30 10:37:32', '0000-00-00 00:00:00'),
(126, 58, 'std58', '1y13z8', '', 'student', '', 'yes', '2020-06-30 10:42:29', '0000-00-00 00:00:00'),
(127, 58, 'parent58', '297sdv', '58', 'parent', '', 'yes', '2020-06-30 10:42:29', '0000-00-00 00:00:00'),
(128, 59, 'std59', 'rilweu', '', 'student', '', 'yes', '2020-06-30 10:47:54', '0000-00-00 00:00:00'),
(129, 59, 'parent59', 'okwo38', '59', 'parent', '', 'yes', '2020-06-30 10:47:54', '0000-00-00 00:00:00'),
(132, 61, 'std61', 'kka8a5', '', 'student', '', 'yes', '2020-07-01 04:54:00', '0000-00-00 00:00:00'),
(133, 61, 'parent61', '1gi9y5', '61', 'parent', '', 'yes', '2020-07-01 04:54:00', '0000-00-00 00:00:00'),
(134, 62, 'std62', '79wajw', '', 'student', '', 'yes', '2020-07-01 04:57:53', '0000-00-00 00:00:00'),
(135, 62, 'parent62', '3ile0o', '62', 'parent', '', 'yes', '2020-07-01 04:57:53', '0000-00-00 00:00:00'),
(136, 63, 'std63', 'uk7wwm', '', 'student', '', 'yes', '2020-07-01 05:02:14', '0000-00-00 00:00:00'),
(137, 63, 'parent63', 'htuvyr', '63', 'parent', '', 'yes', '2020-07-01 05:02:14', '0000-00-00 00:00:00'),
(138, 64, 'std64', 'rfpta5', '', 'student', '', 'yes', '2020-07-01 05:07:37', '0000-00-00 00:00:00'),
(139, 64, 'parent64', 'km08ck', '64', 'parent', '', 'yes', '2020-07-01 05:07:37', '0000-00-00 00:00:00'),
(140, 65, 'std65', 'jwbhkz', '', 'student', '', 'yes', '2020-07-01 05:12:00', '0000-00-00 00:00:00'),
(141, 65, 'parent65', 'jwaar7', '65', 'parent', '', 'yes', '2020-07-01 05:12:00', '0000-00-00 00:00:00'),
(142, 66, 'std66', 'ah72s4', '', 'student', '', 'yes', '2020-07-01 05:18:14', '0000-00-00 00:00:00'),
(143, 66, 'parent66', '71ilxh', '66', 'parent', '', 'yes', '2020-07-01 05:18:14', '0000-00-00 00:00:00'),
(144, 67, 'std67', 'fto6fx', '', 'student', '', 'yes', '2020-07-01 05:22:23', '0000-00-00 00:00:00'),
(145, 67, 'parent67', 'zcuhhu', '67', 'parent', '', 'yes', '2020-07-01 05:22:23', '0000-00-00 00:00:00'),
(146, 68, 'std68', '7ubpbz', '', 'student', '', 'yes', '2020-07-01 05:38:26', '0000-00-00 00:00:00'),
(147, 68, 'parent68', 'm79rr1', '68', 'parent', '', 'yes', '2020-07-01 05:38:26', '0000-00-00 00:00:00'),
(148, 69, 'std69', 'gfivny', '', 'student', '', 'yes', '2020-07-01 05:45:05', '0000-00-00 00:00:00'),
(149, 69, 'parent69', 'rrx7bf', '69', 'parent', '', 'yes', '2020-07-01 05:45:05', '0000-00-00 00:00:00'),
(150, 70, 'std70', 'bfc3y6', '', 'student', '', 'yes', '2020-07-01 05:50:59', '0000-00-00 00:00:00'),
(151, 70, 'parent70', 'uhiy90', '70', 'parent', '', 'yes', '2020-07-01 05:50:59', '0000-00-00 00:00:00'),
(152, 71, 'std71', '9zk0z4', '', 'student', '', 'yes', '2020-07-01 05:56:11', '0000-00-00 00:00:00'),
(153, 71, 'parent71', 't4yagb', '71', 'parent', '', 'yes', '2020-07-01 05:56:11', '0000-00-00 00:00:00'),
(154, 72, 'std72', '6u6kdk', '', 'student', '', 'yes', '2020-07-01 06:01:55', '0000-00-00 00:00:00'),
(155, 72, 'parent72', 'w3d23m', '72', 'parent', '', 'yes', '2020-07-01 06:01:55', '0000-00-00 00:00:00'),
(156, 73, 'std73', 'sl8pyo', '', 'student', '', 'yes', '2020-07-01 06:05:30', '0000-00-00 00:00:00'),
(157, 73, 'parent73', '204r8r', '73', 'parent', '', 'yes', '2020-07-01 06:05:30', '0000-00-00 00:00:00'),
(158, 74, 'std74', '7h7s0g', '', 'student', '', 'yes', '2020-07-01 06:09:37', '0000-00-00 00:00:00'),
(159, 74, 'parent74', '71r9b4', '74', 'parent', '', 'yes', '2020-07-01 06:09:37', '0000-00-00 00:00:00'),
(160, 75, 'std75', 's3064m', '', 'student', '', 'yes', '2020-07-01 06:13:14', '0000-00-00 00:00:00'),
(161, 75, 'parent75', 'r0qtk2', '75', 'parent', '', 'yes', '2020-07-01 06:13:14', '0000-00-00 00:00:00'),
(162, 76, 'std76', '1zs1xq', '', 'student', '', 'yes', '2020-07-01 06:17:50', '0000-00-00 00:00:00'),
(163, 76, 'parent76', 'sexigc', '76', 'parent', '', 'yes', '2020-07-01 06:17:50', '0000-00-00 00:00:00'),
(164, 77, 'std77', 'd8ar13', '', 'student', '', 'yes', '2020-07-01 06:31:31', '0000-00-00 00:00:00'),
(165, 77, 'parent77', 'nlg93q', '77', 'parent', '', 'yes', '2020-07-01 06:31:31', '0000-00-00 00:00:00'),
(166, 78, 'std78', 'sftqwb', '', 'student', '', 'yes', '2020-07-01 06:35:37', '0000-00-00 00:00:00'),
(167, 78, 'parent78', 'lzzgn6', '78', 'parent', '', 'yes', '2020-07-01 06:35:37', '0000-00-00 00:00:00'),
(168, 79, 'std79', 'y461pk', '', 'student', '', 'yes', '2020-07-01 06:40:25', '0000-00-00 00:00:00'),
(169, 79, 'parent79', '0xrlk8', '79', 'parent', '', 'yes', '2020-07-01 06:40:25', '0000-00-00 00:00:00'),
(170, 80, 'std80', 'majtam', '', 'student', '', 'yes', '2020-07-01 06:44:27', '0000-00-00 00:00:00'),
(171, 80, 'parent80', 'khq4x0', '80', 'parent', '', 'yes', '2020-07-01 06:44:27', '0000-00-00 00:00:00'),
(172, 81, 'std81', 'v5blhg', '', 'student', '', 'yes', '2020-07-01 07:09:03', '0000-00-00 00:00:00'),
(173, 81, 'parent81', '5q8xnj', '81', 'parent', '', 'yes', '2020-07-01 07:09:03', '0000-00-00 00:00:00'),
(174, 82, 'std82', 'byyigt', '', 'student', '', 'yes', '2020-07-01 07:14:40', '0000-00-00 00:00:00'),
(175, 82, 'parent82', 'ycgzop', '82', 'parent', '', 'yes', '2020-07-01 07:14:40', '0000-00-00 00:00:00'),
(176, 83, 'std83', '756gr3', '', 'student', '', 'yes', '2020-07-01 07:20:36', '0000-00-00 00:00:00'),
(177, 83, 'parent83', 'q81ln8', '83', 'parent', '', 'yes', '2020-07-01 07:20:36', '0000-00-00 00:00:00'),
(178, 84, 'std84', 'r6gbd7', '', 'student', '', 'yes', '2020-07-01 07:26:14', '0000-00-00 00:00:00'),
(179, 84, 'parent84', '6te4de', '84', 'parent', '', 'yes', '2020-07-01 07:26:14', '0000-00-00 00:00:00'),
(180, 85, 'std85', '9qqbd4', '', 'student', '', 'yes', '2020-07-01 07:31:25', '0000-00-00 00:00:00'),
(181, 85, 'parent85', '40di5p', '85', 'parent', '', 'yes', '2020-07-01 07:31:25', '0000-00-00 00:00:00'),
(182, 86, 'std86', 'f57eil', '', 'student', '', 'yes', '2020-07-01 07:35:09', '0000-00-00 00:00:00'),
(183, 86, 'parent86', 'sazltv', '86', 'parent', '', 'yes', '2020-07-01 07:35:09', '0000-00-00 00:00:00'),
(184, 87, 'std87', 'e8s7du', '', 'student', '', 'yes', '2020-07-01 07:40:46', '0000-00-00 00:00:00'),
(185, 87, 'parent87', 'fdiwjz', '87', 'parent', '', 'yes', '2020-07-01 07:40:46', '0000-00-00 00:00:00'),
(186, 88, 'std88', 'ahfbt2', '', 'student', '', 'yes', '2020-07-01 07:44:25', '0000-00-00 00:00:00'),
(187, 88, 'parent88', 'fauo39', '88', 'parent', '', 'yes', '2020-07-01 07:44:25', '0000-00-00 00:00:00'),
(188, 89, 'std89', 'f3j5se', '', 'student', '', 'yes', '2020-07-01 07:49:39', '0000-00-00 00:00:00'),
(189, 89, 'parent89', 'foppke', '89', 'parent', '', 'yes', '2020-07-01 07:49:39', '0000-00-00 00:00:00'),
(190, 90, 'std90', '12p65i', '', 'student', '', 'yes', '2020-07-01 07:53:02', '0000-00-00 00:00:00'),
(191, 90, 'parent90', 'mp9dhk', '90', 'parent', '', 'yes', '2020-07-01 07:53:02', '0000-00-00 00:00:00'),
(192, 91, 'std91', 'fha219', '', 'student', '', 'yes', '2020-07-01 08:07:05', '0000-00-00 00:00:00'),
(193, 91, 'parent91', 'vnq4gp', '91', 'parent', '', 'yes', '2020-07-01 08:07:05', '0000-00-00 00:00:00'),
(194, 92, 'std92', '9zd4o7', '', 'student', '', 'yes', '2020-07-01 08:11:53', '0000-00-00 00:00:00'),
(195, 92, 'parent92', 'xcd4mx', '92', 'parent', '', 'yes', '2020-07-01 08:11:53', '0000-00-00 00:00:00'),
(196, 93, 'std93', 'z70q8t', '', 'student', '', 'yes', '2020-07-01 08:15:15', '0000-00-00 00:00:00'),
(197, 93, 'parent93', '8fqwne', '93', 'parent', '', 'yes', '2020-07-01 08:15:15', '0000-00-00 00:00:00'),
(198, 94, 'std94', 'kg11gy', '', 'student', '', 'yes', '2020-07-01 08:20:49', '0000-00-00 00:00:00'),
(199, 94, 'parent94', 'an767s', '94', 'parent', '', 'yes', '2020-07-01 08:20:49', '0000-00-00 00:00:00'),
(200, 95, 'std95', 'hz5d9d', '', 'student', '', 'yes', '2020-07-01 08:39:35', '0000-00-00 00:00:00'),
(201, 95, 'parent95', 'o4ge9j', '95', 'parent', '', 'yes', '2020-07-01 08:39:35', '0000-00-00 00:00:00'),
(202, 96, 'std96', 'dyusep', '', 'student', '', 'yes', '2020-07-01 08:42:59', '0000-00-00 00:00:00'),
(203, 96, 'parent96', '57swoc', '96', 'parent', '', 'yes', '2020-07-01 08:42:59', '0000-00-00 00:00:00'),
(204, 97, 'std97', '97nq1f', '', 'student', '', 'yes', '2020-07-01 08:46:51', '0000-00-00 00:00:00'),
(205, 97, 'parent97', 'zjw4em', '97', 'parent', '', 'yes', '2020-07-01 08:46:51', '0000-00-00 00:00:00'),
(206, 98, 'std98', 's2t5px', '', 'student', '', 'yes', '2020-07-01 08:50:49', '0000-00-00 00:00:00'),
(207, 98, 'parent98', '5awlet', '98', 'parent', '', 'yes', '2020-07-01 08:50:49', '0000-00-00 00:00:00'),
(208, 99, 'std99', 'p0e2xy', '', 'student', '', 'yes', '2020-07-01 08:54:48', '0000-00-00 00:00:00'),
(209, 99, 'parent99', 'jxklla', '99', 'parent', '', 'yes', '2020-07-01 08:54:48', '0000-00-00 00:00:00'),
(210, 100, 'std100', '1ltp1k', '', 'student', '', 'yes', '2020-07-01 08:58:35', '0000-00-00 00:00:00'),
(211, 100, 'parent100', 'bbhtz1', '100', 'parent', '', 'yes', '2020-07-01 08:58:35', '0000-00-00 00:00:00'),
(212, 101, 'std101', 'ltxnhu', '', 'student', '', 'yes', '2020-07-01 09:04:02', '0000-00-00 00:00:00'),
(213, 101, 'parent101', 'iv2i07', '101', 'parent', '', 'yes', '2020-07-01 09:04:02', '0000-00-00 00:00:00'),
(214, 102, 'std102', 'sagb7s', '', 'student', '', 'yes', '2020-07-01 09:09:02', '0000-00-00 00:00:00'),
(215, 102, 'parent102', '6zp2l0', '102', 'parent', '', 'yes', '2020-07-01 09:09:02', '0000-00-00 00:00:00'),
(216, 103, 'std103', 'sx7br9', '', 'student', '', 'yes', '2020-07-01 09:12:48', '0000-00-00 00:00:00'),
(217, 103, 'parent103', 'dcosph', '103', 'parent', '', 'yes', '2020-07-01 09:12:48', '0000-00-00 00:00:00'),
(218, 104, 'std104', '6xpn0c', '', 'student', '', 'yes', '2020-07-01 09:16:34', '0000-00-00 00:00:00'),
(219, 104, 'parent104', 'nqtt38', '104', 'parent', '', 'yes', '2020-07-01 09:16:34', '0000-00-00 00:00:00'),
(220, 105, 'std105', 'r02xqj', '', 'student', '', 'yes', '2020-07-01 09:20:13', '0000-00-00 00:00:00'),
(221, 105, 'parent105', 'lptwvy', '105', 'parent', '', 'yes', '2020-07-01 09:20:13', '0000-00-00 00:00:00'),
(222, 106, 'std106', 'sx5bdv', '', 'student', '', 'yes', '2020-07-01 09:24:00', '0000-00-00 00:00:00'),
(223, 106, 'parent106', 'g74m87', '106', 'parent', '', 'yes', '2020-07-01 09:24:00', '0000-00-00 00:00:00'),
(224, 107, 'std107', 'atk281', '', 'student', '', 'yes', '2020-07-01 09:28:01', '0000-00-00 00:00:00'),
(225, 107, 'parent107', '4pvfvd', '107', 'parent', '', 'yes', '2020-07-01 09:28:01', '0000-00-00 00:00:00'),
(226, 108, 'std108', 'fkr5gl', '', 'student', '', 'yes', '2020-07-01 09:32:00', '0000-00-00 00:00:00'),
(227, 108, 'parent108', 'clxjaq', '108', 'parent', '', 'yes', '2020-07-01 09:32:00', '0000-00-00 00:00:00'),
(228, 109, 'std109', 'gvadfo', '', 'student', '', 'yes', '2020-07-01 09:36:03', '0000-00-00 00:00:00'),
(229, 109, 'parent109', 'jt4hof', '109', 'parent', '', 'yes', '2020-07-01 09:36:03', '0000-00-00 00:00:00'),
(230, 110, 'std110', 'a7npbs', '', 'student', '', 'yes', '2020-07-01 09:39:48', '0000-00-00 00:00:00'),
(231, 110, 'parent110', '3ewaj4', '110', 'parent', '', 'yes', '2020-07-01 09:39:48', '0000-00-00 00:00:00'),
(232, 111, 'std111', 'ldrokr', '', 'student', '', 'yes', '2020-07-01 09:43:41', '0000-00-00 00:00:00'),
(233, 111, 'parent111', 'flq31l', '111', 'parent', '', 'yes', '2020-07-01 09:43:41', '0000-00-00 00:00:00'),
(234, 112, 'std112', '4648oy', '', 'student', '', 'yes', '2020-07-01 09:47:36', '0000-00-00 00:00:00'),
(235, 112, 'parent112', 'e2ig2b', '112', 'parent', '', 'yes', '2020-07-01 09:47:36', '0000-00-00 00:00:00'),
(236, 113, 'std113', 'fhpf0l', '', 'student', '', 'yes', '2020-07-01 09:53:05', '0000-00-00 00:00:00'),
(237, 113, 'parent113', 'wo708f', '113', 'parent', '', 'yes', '2020-07-01 09:53:05', '0000-00-00 00:00:00'),
(238, 114, 'std114', 'duhwcb', '', 'student', '', 'yes', '2020-07-01 09:56:43', '0000-00-00 00:00:00'),
(239, 114, 'parent114', '6hyoco', '114', 'parent', '', 'yes', '2020-07-01 09:56:43', '0000-00-00 00:00:00'),
(240, 115, 'std115', '6ak9p7', '', 'student', '', 'yes', '2020-07-01 09:59:55', '0000-00-00 00:00:00'),
(241, 115, 'parent115', 'gw0d34', '115', 'parent', '', 'yes', '2020-07-01 09:59:55', '0000-00-00 00:00:00'),
(242, 116, 'std116', 'k2p90s', '', 'student', '', 'yes', '2020-07-01 10:03:30', '0000-00-00 00:00:00'),
(243, 116, 'parent116', 'b1rnwq', '116', 'parent', '', 'yes', '2020-07-01 10:03:30', '0000-00-00 00:00:00'),
(244, 117, 'std117', '3z8c3s', '', 'student', '', 'yes', '2020-07-01 10:07:07', '0000-00-00 00:00:00'),
(245, 117, 'parent117', 'qwyyrs', '117', 'parent', '', 'yes', '2020-07-01 10:07:07', '0000-00-00 00:00:00'),
(246, 118, 'std118', 'g3md5i', '', 'student', '', 'yes', '2020-07-01 10:10:53', '0000-00-00 00:00:00'),
(247, 118, 'parent118', 'xen35b', '118', 'parent', '', 'yes', '2020-07-01 10:10:53', '0000-00-00 00:00:00'),
(248, 119, 'std119', 'nee2hf', '', 'student', '', 'yes', '2020-07-01 10:36:11', '0000-00-00 00:00:00'),
(249, 119, 'parent119', 'v1pto0', '119', 'parent', '', 'yes', '2020-07-01 10:36:11', '0000-00-00 00:00:00'),
(250, 120, 'std120', 'ybgnvc', '', 'student', '', 'yes', '2020-07-01 10:40:06', '0000-00-00 00:00:00'),
(251, 120, 'parent120', 'u4ookb', '120', 'parent', '', 'yes', '2020-07-01 10:40:06', '0000-00-00 00:00:00'),
(252, 121, 'std121', 'hbgwc3', '', 'student', '', 'yes', '2020-07-01 10:43:38', '0000-00-00 00:00:00'),
(253, 121, 'parent121', '6d9xo1', '121', 'parent', '', 'yes', '2020-07-01 10:43:38', '0000-00-00 00:00:00'),
(254, 122, 'std122', 'jfkmg5', '', 'student', '', 'yes', '2020-07-01 10:47:51', '0000-00-00 00:00:00'),
(255, 122, 'parent122', 'pbouiv', '122', 'parent', '', 'yes', '2020-07-01 10:47:51', '0000-00-00 00:00:00'),
(256, 123, 'std123', 'jyclqo', '', 'student', '', 'yes', '2020-07-07 10:22:26', '0000-00-00 00:00:00'),
(257, 123, 'parent123', 'trwq8p', '123', 'parent', '', 'yes', '2020-07-07 10:22:26', '0000-00-00 00:00:00'),
(258, 124, 'std124', 'pw1985', '', 'student', '', 'yes', '2020-07-07 10:27:26', '0000-00-00 00:00:00'),
(259, 124, 'parent124', 'dsw2et', '124', 'parent', '', 'yes', '2020-07-07 10:27:26', '0000-00-00 00:00:00'),
(260, 125, 'std125', 'hazcjk', '', 'student', '', 'yes', '2020-07-07 10:32:05', '0000-00-00 00:00:00'),
(261, 125, 'parent125', 'dfm1yf', '125', 'parent', '', 'yes', '2020-07-07 10:32:05', '0000-00-00 00:00:00'),
(262, 126, 'std126', 'x53b26', '', 'student', '', 'yes', '2020-07-07 10:37:27', '0000-00-00 00:00:00'),
(263, 126, 'parent126', 'azel8n', '126', 'parent', '', 'yes', '2020-07-07 10:37:27', '0000-00-00 00:00:00'),
(264, 127, 'std127', 'p7ikau', '', 'student', '', 'yes', '2020-07-07 10:42:15', '0000-00-00 00:00:00'),
(265, 127, 'parent127', 'i5n2oi', '127', 'parent', '', 'yes', '2020-07-07 10:42:15', '0000-00-00 00:00:00'),
(266, 128, 'std128', '6kjkvv', '', 'student', '', 'yes', '2020-07-07 10:47:34', '0000-00-00 00:00:00'),
(267, 128, 'parent128', '4kou28', '128', 'parent', '', 'yes', '2020-07-07 10:47:34', '0000-00-00 00:00:00'),
(268, 129, 'std129', 'pyiwjf', '', 'student', '', 'yes', '2020-07-07 10:52:28', '0000-00-00 00:00:00'),
(269, 129, 'parent129', '7c5fw2', '129', 'parent', '', 'yes', '2020-07-07 10:52:28', '0000-00-00 00:00:00'),
(270, 130, 'std130', 'whtudz', '', 'student', '', 'yes', '2020-07-07 10:56:15', '0000-00-00 00:00:00'),
(271, 130, 'parent130', '5o6l2n', '130', 'parent', '', 'yes', '2020-07-07 10:56:15', '0000-00-00 00:00:00'),
(272, 131, 'std131', 'gcmhj7', '', 'student', '', 'yes', '2020-07-07 11:00:28', '0000-00-00 00:00:00'),
(273, 131, 'parent131', 'w6oqpj', '131', 'parent', '', 'yes', '2020-07-07 11:00:28', '0000-00-00 00:00:00'),
(274, 132, 'std132', 'syepz8', '', 'student', '', 'yes', '2020-07-07 11:04:59', '0000-00-00 00:00:00'),
(275, 132, 'parent132', '7uak2o', '132', 'parent', '', 'yes', '2020-07-07 11:04:59', '0000-00-00 00:00:00'),
(276, 133, 'std133', 'bjwtmr', '', 'student', '', 'yes', '2020-07-07 11:09:21', '0000-00-00 00:00:00'),
(277, 133, 'parent133', '74m04r', '133', 'parent', '', 'yes', '2020-07-07 11:09:21', '0000-00-00 00:00:00'),
(278, 134, 'std134', 'zuk58y', '', 'student', '', 'yes', '2020-07-07 11:14:05', '0000-00-00 00:00:00'),
(279, 134, 'parent134', '4howsd', '134', 'parent', '', 'yes', '2020-07-07 11:14:05', '0000-00-00 00:00:00'),
(280, 135, 'std135', 'y6mrlc', '', 'student', '', 'yes', '2020-07-07 11:18:55', '0000-00-00 00:00:00'),
(281, 135, 'parent135', '0ynin6', '135', 'parent', '', 'yes', '2020-07-07 11:18:55', '0000-00-00 00:00:00'),
(282, 136, 'std136', 'jmb33f', '', 'student', '', 'yes', '2020-07-07 11:22:51', '0000-00-00 00:00:00'),
(283, 136, 'parent136', '0wp6rp', '136', 'parent', '', 'yes', '2020-07-07 11:22:51', '0000-00-00 00:00:00'),
(284, 137, 'std137', 'kqy5vk', '', 'student', '', 'yes', '2020-07-07 11:28:38', '0000-00-00 00:00:00'),
(285, 137, 'parent137', '5v7u3u', '137', 'parent', '', 'yes', '2020-07-07 11:28:38', '0000-00-00 00:00:00'),
(286, 138, 'std138', 'di9ytj', '', 'student', '', 'yes', '2020-07-07 11:38:16', '0000-00-00 00:00:00'),
(287, 138, 'parent138', 'cedez7', '138', 'parent', '', 'yes', '2020-07-07 11:38:16', '0000-00-00 00:00:00'),
(288, 139, 'std139', 'u1uh37', '', 'student', '', 'yes', '2020-07-07 11:41:47', '0000-00-00 00:00:00'),
(289, 139, 'parent139', '2f29ld', '139', 'parent', '', 'yes', '2020-07-07 11:41:47', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE IF NOT EXISTS `vehicles` (
  `id` int(10) unsigned NOT NULL,
  `vehicle_no` varchar(20) DEFAULT NULL,
  `vehicle_model` varchar(100) NOT NULL DEFAULT 'None',
  `manufacture_year` varchar(4) DEFAULT NULL,
  `driver_name` varchar(50) DEFAULT NULL,
  `driver_licence` varchar(50) NOT NULL DEFAULT 'None',
  `driver_contact` varchar(20) DEFAULT NULL,
  `note` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_routes`
--

CREATE TABLE IF NOT EXISTS `vehicle_routes` (
  `id` int(11) unsigned NOT NULL,
  `route_id` int(11) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accountants`
--
ALTER TABLE `accountants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendence_type`
--
ALTER TABLE `attendence_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `batch`
--
ALTER TABLE `batch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `batch_class`
--
ALTER TABLE `batch_class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `batch_parts`
--
ALTER TABLE `batch_parts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `batch_semesters`
--
ALTER TABLE `batch_semesters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_issues`
--
ALTER TABLE `book_issues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_sections`
--
ALTER TABLE `class_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `section_id` (`section_id`);

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_config`
--
ALTER TABLE `email_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_results`
--
ALTER TABLE `exam_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_schedule_id` (`exam_schedule_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `exam_schedules`
--
ALTER TABLE `exam_schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teacher_subject_id` (`teacher_subject_id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_head`
--
ALTER TABLE `expense_head`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feecategory`
--
ALTER TABLE `feecategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feemasters`
--
ALTER TABLE `feemasters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fees_discounts`
--
ALTER TABLE `fees_discounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `feetype`
--
ALTER TABLE `feetype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fee_groups`
--
ALTER TABLE `fee_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fee_groups_feetype`
--
ALTER TABLE `fee_groups_feetype`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fee_session_group_id` (`fee_session_group_id`),
  ADD KEY `fee_groups_id` (`fee_groups_id`),
  ADD KEY `feetype_id` (`feetype_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `fee_receipt_no`
--
ALTER TABLE `fee_receipt_no`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fee_session_groups`
--
ALTER TABLE `fee_session_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fee_groups_id` (`fee_groups_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hostel`
--
ALTER TABLE `hostel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hostel_rooms`
--
ALTER TABLE `hostel_rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `income`
--
ALTER TABLE `income`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `income_head`
--
ALTER TABLE `income_head`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_category`
--
ALTER TABLE `item_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_issue`
--
ALTER TABLE `item_issue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `item_category_id` (`item_category_id`);

--
-- Indexes for table `item_stock`
--
ALTER TABLE `item_stock`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `supplier_id` (`supplier_id`),
  ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `item_store`
--
ALTER TABLE `item_store`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_supplier`
--
ALTER TABLE `item_supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lang_keys`
--
ALTER TABLE `lang_keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lang_pharses`
--
ALTER TABLE `lang_pharses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lang_id` (`lang_id`),
  ADD KEY `key_id` (`key_id`);

--
-- Indexes for table `libarary_members`
--
ALTER TABLE `libarary_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `librarians`
--
ALTER TABLE `librarians`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_setting`
--
ALTER TABLE `notification_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_settings`
--
ALTER TABLE `payment_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `read_notification`
--
ALTER TABLE `read_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_types`
--
ALTER TABLE `room_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sch_settings`
--
ALTER TABLE `sch_settings`
  ADD KEY `lang_id` (`lang_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semesters`
--
ALTER TABLE `semesters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `send_notification`
--
ALTER TABLE `send_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_config`
--
ALTER TABLE `sms_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_attendences`
--
ALTER TABLE `student_attendences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_session_id` (`student_session_id`),
  ADD KEY `attendence_type_id` (`attendence_type_id`);

--
-- Indexes for table `student_doc`
--
ALTER TABLE `student_doc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_fees`
--
ALTER TABLE `student_fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_fees_deposite`
--
ALTER TABLE `student_fees_deposite`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_fees_master_id` (`student_fees_master_id`),
  ADD KEY `fee_groups_feetype_id` (`fee_groups_feetype_id`);

--
-- Indexes for table `student_fees_discounts`
--
ALTER TABLE `student_fees_discounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_session_id` (`student_session_id`),
  ADD KEY `fees_discount_id` (`fees_discount_id`);

--
-- Indexes for table `student_fees_master`
--
ALTER TABLE `student_fees_master`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_session_id` (`student_session_id`),
  ADD KEY `fee_session_group_id` (`fee_session_group_id`);

--
-- Indexes for table `student_session`
--
ALTER TABLE `student_session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_sibling`
--
ALTER TABLE `student_sibling`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_transport_fees`
--
ALTER TABLE `student_transport_fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_subjects`
--
ALTER TABLE `teacher_subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_section_id` (`class_section_id`),
  ADD KEY `session_id` (`session_id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- Indexes for table `timetables`
--
ALTER TABLE `timetables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transport_route`
--
ALTER TABLE `transport_route`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_routes`
--
ALTER TABLE `vehicle_routes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accountants`
--
ALTER TABLE `accountants`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `attendence_type`
--
ALTER TABLE `attendence_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `batch`
--
ALTER TABLE `batch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `batch_class`
--
ALTER TABLE `batch_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `batch_parts`
--
ALTER TABLE `batch_parts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `batch_semesters`
--
ALTER TABLE `batch_semesters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `book_issues`
--
ALTER TABLE `book_issues`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `class_sections`
--
ALTER TABLE `class_sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `email_config`
--
ALTER TABLE `email_config`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `exam_results`
--
ALTER TABLE `exam_results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `exam_schedules`
--
ALTER TABLE `exam_schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `expense_head`
--
ALTER TABLE `expense_head`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `feecategory`
--
ALTER TABLE `feecategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `feemasters`
--
ALTER TABLE `feemasters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fees_discounts`
--
ALTER TABLE `fees_discounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `feetype`
--
ALTER TABLE `feetype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `fee_groups`
--
ALTER TABLE `fee_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `fee_groups_feetype`
--
ALTER TABLE `fee_groups_feetype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `fee_receipt_no`
--
ALTER TABLE `fee_receipt_no`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fee_session_groups`
--
ALTER TABLE `fee_session_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hostel`
--
ALTER TABLE `hostel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hostel_rooms`
--
ALTER TABLE `hostel_rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `income`
--
ALTER TABLE `income`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `income_head`
--
ALTER TABLE `income_head`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `item_category`
--
ALTER TABLE `item_category`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `item_issue`
--
ALTER TABLE `item_issue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `item_stock`
--
ALTER TABLE `item_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `item_store`
--
ALTER TABLE `item_store`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `item_supplier`
--
ALTER TABLE `item_supplier`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT for table `lang_keys`
--
ALTER TABLE `lang_keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=784;
--
-- AUTO_INCREMENT for table `lang_pharses`
--
ALTER TABLE `lang_pharses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=74121;
--
-- AUTO_INCREMENT for table `libarary_members`
--
ALTER TABLE `libarary_members`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `librarians`
--
ALTER TABLE `librarians`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `notification_setting`
--
ALTER TABLE `notification_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `payment_settings`
--
ALTER TABLE `payment_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `read_notification`
--
ALTER TABLE `read_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `room_types`
--
ALTER TABLE `room_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `semesters`
--
ALTER TABLE `semesters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `send_notification`
--
ALTER TABLE `send_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `sms_config`
--
ALTER TABLE `sms_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=140;
--
-- AUTO_INCREMENT for table `student_attendences`
--
ALTER TABLE `student_attendences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `student_doc`
--
ALTER TABLE `student_doc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `student_fees`
--
ALTER TABLE `student_fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `student_fees_deposite`
--
ALTER TABLE `student_fees_deposite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=222;
--
-- AUTO_INCREMENT for table `student_fees_discounts`
--
ALTER TABLE `student_fees_discounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `student_fees_master`
--
ALTER TABLE `student_fees_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=313;
--
-- AUTO_INCREMENT for table `student_session`
--
ALTER TABLE `student_session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=247;
--
-- AUTO_INCREMENT for table `student_sibling`
--
ALTER TABLE `student_sibling`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `student_transport_fees`
--
ALTER TABLE `student_transport_fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `teacher_subjects`
--
ALTER TABLE `teacher_subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `timetables`
--
ALTER TABLE `timetables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `transport_route`
--
ALTER TABLE `transport_route`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=169;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=290;
--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vehicle_routes`
--
ALTER TABLE `vehicle_routes`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `fees_discounts`
--
ALTER TABLE `fees_discounts`
  ADD CONSTRAINT `fees_discounts_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fee_groups_feetype`
--
ALTER TABLE `fee_groups_feetype`
  ADD CONSTRAINT `fee_groups_feetype_ibfk_1` FOREIGN KEY (`fee_session_group_id`) REFERENCES `fee_session_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fee_groups_feetype_ibfk_2` FOREIGN KEY (`fee_groups_id`) REFERENCES `fee_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fee_groups_feetype_ibfk_3` FOREIGN KEY (`feetype_id`) REFERENCES `feetype` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fee_groups_feetype_ibfk_4` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fee_session_groups`
--
ALTER TABLE `fee_session_groups`
  ADD CONSTRAINT `fee_session_groups_ibfk_1` FOREIGN KEY (`fee_groups_id`) REFERENCES `fee_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fee_session_groups_ibfk_2` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `item_issue`
--
ALTER TABLE `item_issue`
  ADD CONSTRAINT `item_issue_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_issue_ibfk_2` FOREIGN KEY (`item_category_id`) REFERENCES `item_category` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `item_stock`
--
ALTER TABLE `item_stock`
  ADD CONSTRAINT `item_stock_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_stock_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `item_supplier` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_stock_ibfk_3` FOREIGN KEY (`store_id`) REFERENCES `item_store` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_fees_deposite`
--
ALTER TABLE `student_fees_deposite`
  ADD CONSTRAINT `student_fees_deposite_ibfk_1` FOREIGN KEY (`student_fees_master_id`) REFERENCES `student_fees_master` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_fees_deposite_ibfk_2` FOREIGN KEY (`fee_groups_feetype_id`) REFERENCES `fee_groups_feetype` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_fees_discounts`
--
ALTER TABLE `student_fees_discounts`
  ADD CONSTRAINT `student_fees_discounts_ibfk_1` FOREIGN KEY (`student_session_id`) REFERENCES `student_session` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_fees_discounts_ibfk_2` FOREIGN KEY (`fees_discount_id`) REFERENCES `fees_discounts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_fees_master`
--
ALTER TABLE `student_fees_master`
  ADD CONSTRAINT `student_fees_master_ibfk_1` FOREIGN KEY (`student_session_id`) REFERENCES `student_session` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_fees_master_ibfk_2` FOREIGN KEY (`fee_session_group_id`) REFERENCES `fee_session_groups` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
