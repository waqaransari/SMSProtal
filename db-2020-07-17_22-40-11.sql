#
# TABLE STRUCTURE FOR: accountants
#

DROP TABLE IF EXISTS `accountants`;

CREATE TABLE `accountants` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
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
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `accountants` (`id`, `name`, `email`, `password`, `address`, `dob`, `designation`, `sex`, `phone`, `image`, `is_active`, `created_at`) VALUES (2, 'Faizan Ali', 'faizan@smil.edu.pk', NULL, '', '1990-10-10', NULL, 'Male', '03123353864', 'uploads/student_images/no_image.png', 'no', '2020-06-27 14:15:00');


#
# TABLE STRUCTURE FOR: admin
#

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verification_code` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `admin` (`id`, `username`, `role`, `email`, `password`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (1, 'Admin', 'admin', 'info@smiljamshoro.com', '0c4012078ec338d03e260bb4918decb5', '', 'yes', '2019-03-07 20:33:39', '0000-00-00 00:00:00');
INSERT INTO `admin` (`id`, `username`, `role`, `email`, `password`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (5, 'Raja Sajjad', 'admin', 'rajasajjad3@gmail.com', '4090d920e136a00a83005c34cdc2cfef', '', 'yes', '2020-07-06 21:09:07', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: attendence_type
#

DROP TABLE IF EXISTS `attendence_type`;

CREATE TABLE `attendence_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `key_value` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `attendence_type` (`id`, `type`, `key_value`, `is_active`, `created_at`, `updated_at`) VALUES (1, 'Present', '<b class=\"text text-success\">P</b>', 'yes', '2016-06-24 04:41:37', '0000-00-00 00:00:00');
INSERT INTO `attendence_type` (`id`, `type`, `key_value`, `is_active`, `created_at`, `updated_at`) VALUES (2, 'Late with excuse', '<b class=\"text text-warning\">E</b>', 'yes', '2016-10-11 22:05:44', '0000-00-00 00:00:00');
INSERT INTO `attendence_type` (`id`, `type`, `key_value`, `is_active`, `created_at`, `updated_at`) VALUES (3, 'Late', '<b class=\"text text-warning\">L</b>', 'yes', '2016-06-24 04:42:28', '0000-00-00 00:00:00');
INSERT INTO `attendence_type` (`id`, `type`, `key_value`, `is_active`, `created_at`, `updated_at`) VALUES (4, 'Absent', '<b class=\"text text-danger\">A</b>', 'yes', '2016-10-11 22:05:40', '0000-00-00 00:00:00');
INSERT INTO `attendence_type` (`id`, `type`, `key_value`, `is_active`, `created_at`, `updated_at`) VALUES (5, 'Holiday', 'H', 'yes', '2016-10-11 22:05:01', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: batch
#

DROP TABLE IF EXISTS `batch`;

CREATE TABLE `batch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `batch` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `batch` (`id`, `batch`, `is_active`, `created_at`, `updated_at`) VALUES (1, '2k18', 'no', '2020-06-15 22:33:21', '0000-00-00 00:00:00');
INSERT INTO `batch` (`id`, `batch`, `is_active`, `created_at`, `updated_at`) VALUES (2, '2k19', 'no', '2020-06-15 23:00:11', '2020-06-15 23:00:11');


#
# TABLE STRUCTURE FOR: batch_class
#

DROP TABLE IF EXISTS `batch_class`;

CREATE TABLE `batch_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO `batch_class` (`id`, `name`, `created_at`) VALUES (1, 'Part 1', '2020-06-18 23:01:31');
INSERT INTO `batch_class` (`id`, `name`, `created_at`) VALUES (2, 'Part 2', '2020-06-18 23:01:42');
INSERT INTO `batch_class` (`id`, `name`, `created_at`) VALUES (3, 'Part 3', '2020-06-18 23:01:51');
INSERT INTO `batch_class` (`id`, `name`, `created_at`) VALUES (4, 'Part 4', '2020-06-18 23:01:58');
INSERT INTO `batch_class` (`id`, `name`, `created_at`) VALUES (5, 'Part 5', '2020-06-18 23:02:04');


#
# TABLE STRUCTURE FOR: batch_parts
#

DROP TABLE IF EXISTS `batch_parts`;

CREATE TABLE `batch_parts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) NOT NULL,
  `part_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

INSERT INTO `batch_parts` (`id`, `class_id`, `part_id`, `session_id`, `created_at`, `updated_at`) VALUES (1, 7, 1, 14, '2020-06-21 12:41:25', '2020-06-21 12:41:25');
INSERT INTO `batch_parts` (`id`, `class_id`, `part_id`, `session_id`, `created_at`, `updated_at`) VALUES (2, 7, 2, 14, '2020-06-21 12:41:25', '2020-06-21 12:41:25');
INSERT INTO `batch_parts` (`id`, `class_id`, `part_id`, `session_id`, `created_at`, `updated_at`) VALUES (3, 7, 3, 14, '2020-06-21 12:41:25', '2020-06-21 12:41:25');
INSERT INTO `batch_parts` (`id`, `class_id`, `part_id`, `session_id`, `created_at`, `updated_at`) VALUES (4, 7, 4, 14, '2020-06-21 12:41:25', '2020-06-21 12:41:25');
INSERT INTO `batch_parts` (`id`, `class_id`, `part_id`, `session_id`, `created_at`, `updated_at`) VALUES (5, 7, 5, 14, '2020-06-21 12:41:25', '2020-06-21 12:41:25');
INSERT INTO `batch_parts` (`id`, `class_id`, `part_id`, `session_id`, `created_at`, `updated_at`) VALUES (6, 10, 1, 14, '2020-06-21 12:41:46', '2020-06-21 12:41:46');
INSERT INTO `batch_parts` (`id`, `class_id`, `part_id`, `session_id`, `created_at`, `updated_at`) VALUES (7, 10, 2, 14, '2020-06-21 12:41:46', '2020-06-21 12:41:46');
INSERT INTO `batch_parts` (`id`, `class_id`, `part_id`, `session_id`, `created_at`, `updated_at`) VALUES (8, 10, 3, 14, '2020-06-21 12:41:46', '2020-06-21 12:41:46');
INSERT INTO `batch_parts` (`id`, `class_id`, `part_id`, `session_id`, `created_at`, `updated_at`) VALUES (9, 10, 4, 14, '2020-06-21 12:41:46', '2020-06-21 12:41:46');
INSERT INTO `batch_parts` (`id`, `class_id`, `part_id`, `session_id`, `created_at`, `updated_at`) VALUES (10, 10, 5, 14, '2020-06-21 12:41:46', '2020-06-21 12:41:46');
INSERT INTO `batch_parts` (`id`, `class_id`, `part_id`, `session_id`, `created_at`, `updated_at`) VALUES (11, 8, 1, 14, '2020-06-21 12:41:50', '2020-06-21 12:41:50');
INSERT INTO `batch_parts` (`id`, `class_id`, `part_id`, `session_id`, `created_at`, `updated_at`) VALUES (12, 8, 2, 14, '2020-06-21 12:41:50', '2020-06-21 12:41:50');
INSERT INTO `batch_parts` (`id`, `class_id`, `part_id`, `session_id`, `created_at`, `updated_at`) VALUES (13, 8, 3, 14, '2020-06-21 12:41:50', '2020-06-21 12:41:50');
INSERT INTO `batch_parts` (`id`, `class_id`, `part_id`, `session_id`, `created_at`, `updated_at`) VALUES (14, 8, 4, 14, '2020-06-21 12:41:50', '2020-06-21 12:41:50');
INSERT INTO `batch_parts` (`id`, `class_id`, `part_id`, `session_id`, `created_at`, `updated_at`) VALUES (15, 8, 5, 14, '2020-06-21 12:41:50', '2020-06-21 12:41:50');
INSERT INTO `batch_parts` (`id`, `class_id`, `part_id`, `session_id`, `created_at`, `updated_at`) VALUES (16, 9, 1, 14, '2020-06-21 12:41:55', '2020-06-21 12:41:55');
INSERT INTO `batch_parts` (`id`, `class_id`, `part_id`, `session_id`, `created_at`, `updated_at`) VALUES (17, 9, 2, 14, '2020-06-21 12:41:55', '2020-06-21 12:41:55');
INSERT INTO `batch_parts` (`id`, `class_id`, `part_id`, `session_id`, `created_at`, `updated_at`) VALUES (18, 9, 3, 14, '2020-06-21 12:41:55', '2020-06-21 12:41:55');
INSERT INTO `batch_parts` (`id`, `class_id`, `part_id`, `session_id`, `created_at`, `updated_at`) VALUES (19, 9, 4, 14, '2020-06-21 12:41:55', '2020-06-21 12:41:55');
INSERT INTO `batch_parts` (`id`, `class_id`, `part_id`, `session_id`, `created_at`, `updated_at`) VALUES (20, 9, 5, 14, '2020-06-21 12:41:55', '2020-06-21 12:41:55');
INSERT INTO `batch_parts` (`id`, `class_id`, `part_id`, `session_id`, `created_at`, `updated_at`) VALUES (21, 11, 0, 0, '2020-06-27 13:50:50', '2020-06-27 13:50:50');
INSERT INTO `batch_parts` (`id`, `class_id`, `part_id`, `session_id`, `created_at`, `updated_at`) VALUES (22, 11, 0, 0, '2020-06-27 13:50:50', '2020-06-27 13:50:50');
INSERT INTO `batch_parts` (`id`, `class_id`, `part_id`, `session_id`, `created_at`, `updated_at`) VALUES (23, 11, 0, 0, '2020-06-27 13:50:50', '2020-06-27 13:50:50');
INSERT INTO `batch_parts` (`id`, `class_id`, `part_id`, `session_id`, `created_at`, `updated_at`) VALUES (24, 11, 0, 0, '2020-06-27 13:50:50', '2020-06-27 13:50:50');
INSERT INTO `batch_parts` (`id`, `class_id`, `part_id`, `session_id`, `created_at`, `updated_at`) VALUES (25, 11, 0, 0, '2020-06-27 13:50:50', '2020-06-27 13:50:50');
INSERT INTO `batch_parts` (`id`, `class_id`, `part_id`, `session_id`, `created_at`, `updated_at`) VALUES (26, 12, 0, 0, '2020-06-27 13:51:25', '2020-06-27 13:51:25');
INSERT INTO `batch_parts` (`id`, `class_id`, `part_id`, `session_id`, `created_at`, `updated_at`) VALUES (27, 12, 0, 0, '2020-06-27 13:51:25', '2020-06-27 13:51:25');
INSERT INTO `batch_parts` (`id`, `class_id`, `part_id`, `session_id`, `created_at`, `updated_at`) VALUES (28, 12, 0, 0, '2020-06-27 13:51:25', '2020-06-27 13:51:25');
INSERT INTO `batch_parts` (`id`, `class_id`, `part_id`, `session_id`, `created_at`, `updated_at`) VALUES (29, 12, 0, 0, '2020-06-27 13:51:25', '2020-06-27 13:51:25');
INSERT INTO `batch_parts` (`id`, `class_id`, `part_id`, `session_id`, `created_at`, `updated_at`) VALUES (30, 12, 0, 0, '2020-06-27 13:51:25', '2020-06-27 13:51:25');
INSERT INTO `batch_parts` (`id`, `class_id`, `part_id`, `session_id`, `created_at`, `updated_at`) VALUES (31, 13, 0, 0, '2020-06-27 13:51:35', '2020-06-27 13:51:35');
INSERT INTO `batch_parts` (`id`, `class_id`, `part_id`, `session_id`, `created_at`, `updated_at`) VALUES (32, 13, 0, 0, '2020-06-27 13:51:35', '2020-06-27 13:51:35');
INSERT INTO `batch_parts` (`id`, `class_id`, `part_id`, `session_id`, `created_at`, `updated_at`) VALUES (33, 13, 0, 0, '2020-06-27 13:51:35', '2020-06-27 13:51:35');
INSERT INTO `batch_parts` (`id`, `class_id`, `part_id`, `session_id`, `created_at`, `updated_at`) VALUES (34, 13, 0, 0, '2020-06-27 13:51:35', '2020-06-27 13:51:35');
INSERT INTO `batch_parts` (`id`, `class_id`, `part_id`, `session_id`, `created_at`, `updated_at`) VALUES (35, 13, 0, 0, '2020-06-27 13:51:35', '2020-06-27 13:51:35');


#
# TABLE STRUCTURE FOR: batch_semesters
#

DROP TABLE IF EXISTS `batch_semesters`;

CREATE TABLE `batch_semesters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `batch_id` int(11) NOT NULL,
  `semester_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO `batch_semesters` (`id`, `batch_id`, `semester_id`, `created_at`, `updated_at`) VALUES (1, 1, 3, '2020-06-15 22:33:21', '2020-06-15 22:33:21');
INSERT INTO `batch_semesters` (`id`, `batch_id`, `semester_id`, `created_at`, `updated_at`) VALUES (2, 1, 4, '2020-06-15 22:33:21', '2020-06-15 22:33:21');
INSERT INTO `batch_semesters` (`id`, `batch_id`, `semester_id`, `created_at`, `updated_at`) VALUES (5, 2, 3, '2020-06-15 23:00:11', '2020-06-15 23:00:11');
INSERT INTO `batch_semesters` (`id`, `batch_id`, `semester_id`, `created_at`, `updated_at`) VALUES (6, 2, 4, '2020-06-15 23:00:11', '2020-06-15 23:00:11');


#
# TABLE STRUCTURE FOR: book_issues
#

DROP TABLE IF EXISTS `book_issues`;

CREATE TABLE `book_issues` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `book_id` int(11) DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `is_returned` int(11) DEFAULT '0',
  `member_id` int(11) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: books
#

DROP TABLE IF EXISTS `books`;

CREATE TABLE `books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: categories
#

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: class_sections
#

DROP TABLE IF EXISTS `class_sections`;

CREATE TABLE `class_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `class_id` (`class_id`),
  KEY `section_id` (`section_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `class_sections` (`id`, `class_id`, `section_id`, `is_active`, `created_at`, `updated_at`) VALUES (19, 11, 11, 'no', '2020-06-27 13:50:50', '0000-00-00 00:00:00');
INSERT INTO `class_sections` (`id`, `class_id`, `section_id`, `is_active`, `created_at`, `updated_at`) VALUES (20, 11, 12, 'no', '2020-06-27 13:50:50', '0000-00-00 00:00:00');
INSERT INTO `class_sections` (`id`, `class_id`, `section_id`, `is_active`, `created_at`, `updated_at`) VALUES (21, 12, 11, 'no', '2020-06-27 13:51:25', '0000-00-00 00:00:00');
INSERT INTO `class_sections` (`id`, `class_id`, `section_id`, `is_active`, `created_at`, `updated_at`) VALUES (22, 12, 12, 'no', '2020-06-27 13:51:25', '0000-00-00 00:00:00');
INSERT INTO `class_sections` (`id`, `class_id`, `section_id`, `is_active`, `created_at`, `updated_at`) VALUES (23, 13, 11, 'no', '2020-06-27 13:51:35', '0000-00-00 00:00:00');
INSERT INTO `class_sections` (`id`, `class_id`, `section_id`, `is_active`, `created_at`, `updated_at`) VALUES (24, 13, 12, 'no', '2020-06-27 13:51:35', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: classes
#

DROP TABLE IF EXISTS `classes`;

CREATE TABLE `classes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `classes` (`id`, `class`, `is_active`, `created_at`, `updated_at`) VALUES (11, '2K18', 'no', '2020-06-27 13:50:50', '0000-00-00 00:00:00');
INSERT INTO `classes` (`id`, `class`, `is_active`, `created_at`, `updated_at`) VALUES (12, '2K19', 'no', '2020-06-27 13:51:25', '0000-00-00 00:00:00');
INSERT INTO `classes` (`id`, `class`, `is_active`, `created_at`, `updated_at`) VALUES (13, '2K20', 'no', '2020-06-27 13:51:35', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: contents
#

DROP TABLE IF EXISTS `contents`;

CREATE TABLE `contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_public` varchar(10) COLLATE utf8_unicode_ci DEFAULT 'No',
  `class_id` int(11) DEFAULT NULL,
  `file` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: email_config
#

DROP TABLE IF EXISTS `email_config`;

CREATE TABLE `email_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email_type` varchar(100) DEFAULT NULL,
  `smtp_server` varchar(100) DEFAULT NULL,
  `smtp_port` varchar(100) DEFAULT NULL,
  `smtp_username` varchar(100) DEFAULT NULL,
  `smtp_password` varchar(100) DEFAULT NULL,
  `ssl_tls` varchar(100) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `email_config` (`id`, `email_type`, `smtp_server`, `smtp_port`, `smtp_username`, `smtp_password`, `ssl_tls`, `is_active`, `created_at`) VALUES (1, 'sendmail', '', '', '', '', '', 'yes', '2020-06-13 13:25:23');


#
# TABLE STRUCTURE FOR: exam_results
#

DROP TABLE IF EXISTS `exam_results`;

CREATE TABLE `exam_results` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attendence` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `exam_schedule_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `get_marks` float(10,2) DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `exam_schedule_id` (`exam_schedule_id`),
  KEY `student_id` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES (1, 'ABS', 1, 19, '0.00', NULL, 'no', '2020-06-21 16:25:55', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES (2, 'ABS', 2, 19, '0.00', NULL, 'no', '2020-06-21 16:25:55', '0000-00-00 00:00:00');
INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES (3, 'ABS', 3, 19, '0.00', NULL, 'no', '2020-06-21 16:25:55', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: exam_schedules
#

DROP TABLE IF EXISTS `exam_schedules`;

CREATE TABLE `exam_schedules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `teacher_subject_id` (`teacher_subject_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `part_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES (1, 14, 1, 1, 4, '2020-06-01', '12:00 AM', '05:15 PM', '1', 100, 36, NULL, 'no', '2020-06-21 15:57:30', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `part_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES (2, 14, 1, 1, 5, '2020-06-02', '12:00 AM', '05:15 PM', '2', 100, 90, NULL, 'no', '2020-06-21 15:57:34', '0000-00-00 00:00:00');
INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `part_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES (3, 14, 1, 1, 6, '2020-06-03', '12:00 AM', '05:15 PM', '3', 100, 95, NULL, 'no', '2020-06-21 15:57:37', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: exams
#

DROP TABLE IF EXISTS `exams`;

CREATE TABLE `exams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sesion_id` int(11) NOT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `exams` (`id`, `name`, `sesion_id`, `note`, `is_active`, `created_at`, `updated_at`) VALUES (1, 'First Term', 0, 'this is firest term', 'no', '2020-06-20 17:06:22', '0000-00-00 00:00:00');
INSERT INTO `exams` (`id`, `name`, `sesion_id`, `note`, `is_active`, `created_at`, `updated_at`) VALUES (2, 'Mid term', 0, 'Mid term', 'no', '2020-06-20 17:06:32', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: expense_head
#

DROP TABLE IF EXISTS `expense_head`;

CREATE TABLE `expense_head` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exp_category` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'yes',
  `is_deleted` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `expense_head` (`id`, `exp_category`, `description`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES (1, 'Wages/Salaries', 'Employees Salaries', 'yes', 'no', '2019-03-08 18:25:21', '0000-00-00 00:00:00');
INSERT INTO `expense_head` (`id`, `exp_category`, `description`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES (2, 'Office Expenses', '', 'yes', 'no', '2019-03-08 18:33:34', '0000-00-00 00:00:00');
INSERT INTO `expense_head` (`id`, `exp_category`, `description`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES (3, 'Building Rent Exp', 'Rent for Bluding', 'yes', 'no', '2019-03-08 19:22:51', '0000-00-00 00:00:00');
INSERT INTO `expense_head` (`id`, `exp_category`, `description`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES (4, 'Carrage Foudation', '', 'yes', 'no', '2019-03-08 18:38:29', '0000-00-00 00:00:00');
INSERT INTO `expense_head` (`id`, `exp_category`, `description`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES (5, 'Carriage  & Cartage', 'Material Carrier', 'yes', 'no', '2019-03-08 19:30:24', '0000-00-00 00:00:00');
INSERT INTO `expense_head` (`id`, `exp_category`, `description`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES (6, 'Computer Lab', 'Compter Lab Exp', 'yes', 'no', '2019-03-08 19:23:43', '0000-00-00 00:00:00');
INSERT INTO `expense_head` (`id`, `exp_category`, `description`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES (7, 'Exam Expanse', 'question papers, Photo copies e.t.c', 'yes', 'no', '2019-03-08 19:33:49', '0000-00-00 00:00:00');
INSERT INTO `expense_head` (`id`, `exp_category`, `description`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES (8, 'Equipment', 'College Equipment ', 'yes', 'no', '2019-03-08 19:32:05', '0000-00-00 00:00:00');
INSERT INTO `expense_head` (`id`, `exp_category`, `description`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES (9, 'Refund Fee', 'Retan Fee', 'yes', 'no', '2019-03-08 18:54:53', '0000-00-00 00:00:00');
INSERT INTO `expense_head` (`id`, `exp_category`, `description`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES (10, 'Stationary', 'Pen, Pencil, Papers etc.', 'yes', 'no', '2019-03-08 19:35:29', '0000-00-00 00:00:00');
INSERT INTO `expense_head` (`id`, `exp_category`, `description`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES (11, 'Utility Expanse', 'Gas Bill Telephone Bill WAPDA Bill', 'yes', 'no', '2019-03-08 19:34:51', '0000-00-00 00:00:00');
INSERT INTO `expense_head` (`id`, `exp_category`, `description`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES (12, 'Extra Curricular', 'NEW well COME Party Tours e.t.c', 'yes', 'no', '2019-03-08 19:01:07', '0000-00-00 00:00:00');
INSERT INTO `expense_head` (`id`, `exp_category`, `description`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES (13, 'Electric Material', 'Electric Material Expense For Collage', 'yes', 'no', '2019-03-08 19:27:56', '0000-00-00 00:00:00');
INSERT INTO `expense_head` (`id`, `exp_category`, `description`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES (14, 'Water Tanker', '', 'yes', 'no', '2020-06-30 12:52:40', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: expenses
#

DROP TABLE IF EXISTS `expenses`;

CREATE TABLE `expenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exp_head_id` int(11) DEFAULT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `documents` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'yes',
  `is_deleted` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `expenses` (`id`, `exp_head_id`, `name`, `date`, `amount`, `documents`, `note`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES (2, 3, 'Mr. Salah uddin', '2018-02-08', '80000.00', NULL, 'Building Rent Paid by Director Admin through cash', 'yes', 'no', '2019-03-08 19:21:11', '0000-00-00 00:00:00');
INSERT INTO `expenses` (`id`, `exp_head_id`, `name`, `date`, `amount`, `documents`, `note`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES (3, 1, 'Staff Wages Teacher Wages', '2019-02-04', '251444.00', NULL, 'paid by Raja sajjad Director Admin Staff Salry', 'yes', 'no', '2019-03-08 19:43:41', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: fee_groups
#

DROP TABLE IF EXISTS `fee_groups`;

CREATE TABLE `fee_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `description` text,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO `fee_groups` (`id`, `name`, `description`, `is_active`, `created_at`) VALUES (3, '2K18', 'Rs. 35000', 'no', '2020-06-27 14:04:25');
INSERT INTO `fee_groups` (`id`, `name`, `description`, `is_active`, `created_at`) VALUES (4, '2K19', 'Rs. 40,000/-', 'no', '2020-06-27 14:49:00');
INSERT INTO `fee_groups` (`id`, `name`, `description`, `is_active`, `created_at`) VALUES (5, '2K20', 'Rs. 35.000/-', 'no', '2020-06-27 14:49:13');
INSERT INTO `fee_groups` (`id`, `name`, `description`, `is_active`, `created_at`) VALUES (6, '2K21', 'Rs. 45,000.00', 'no', '2020-06-30 12:38:18');


#
# TABLE STRUCTURE FOR: fee_groups_feetype
#

DROP TABLE IF EXISTS `fee_groups_feetype`;

CREATE TABLE `fee_groups_feetype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fee_session_group_id` int(11) DEFAULT NULL,
  `fee_groups_id` int(11) DEFAULT NULL,
  `feetype_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fee_session_group_id` (`fee_session_group_id`),
  KEY `fee_groups_id` (`fee_groups_id`),
  KEY `feetype_id` (`feetype_id`),
  KEY `session_id` (`session_id`),
  CONSTRAINT `fee_groups_feetype_ibfk_1` FOREIGN KEY (`fee_session_group_id`) REFERENCES `fee_session_groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fee_groups_feetype_ibfk_2` FOREIGN KEY (`fee_groups_id`) REFERENCES `fee_groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fee_groups_feetype_ibfk_3` FOREIGN KEY (`feetype_id`) REFERENCES `feetype` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fee_groups_feetype_ibfk_4` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

INSERT INTO `fee_groups_feetype` (`id`, `fee_session_group_id`, `fee_groups_id`, `feetype_id`, `session_id`, `due_date`, `amount`, `is_active`, `created_at`) VALUES (6, 6, 3, 2, 13, '2020-01-01', '35000.00', 'no', '2020-07-02 16:46:17');
INSERT INTO `fee_groups_feetype` (`id`, `fee_session_group_id`, `fee_groups_id`, `feetype_id`, `session_id`, `due_date`, `amount`, `is_active`, `created_at`) VALUES (7, 7, 4, 2, 13, '1970-01-01', '45000.00', 'no', '2020-06-27 14:52:48');
INSERT INTO `fee_groups_feetype` (`id`, `fee_session_group_id`, `fee_groups_id`, `feetype_id`, `session_id`, `due_date`, `amount`, `is_active`, `created_at`) VALUES (8, 8, 5, 2, 13, '1970-01-01', '35000.00', 'no', '2020-06-27 14:53:04');
INSERT INTO `fee_groups_feetype` (`id`, `fee_session_group_id`, `fee_groups_id`, `feetype_id`, `session_id`, `due_date`, `amount`, `is_active`, `created_at`) VALUES (9, 9, 6, 2, 13, '1970-01-01', '45000.00', 'no', '2020-06-30 12:39:28');
INSERT INTO `fee_groups_feetype` (`id`, `fee_session_group_id`, `fee_groups_id`, `feetype_id`, `session_id`, `due_date`, `amount`, `is_active`, `created_at`) VALUES (14, 6, 3, 3, 13, '2020-01-01', '35000.00', 'no', '2020-07-02 16:48:42');
INSERT INTO `fee_groups_feetype` (`id`, `fee_session_group_id`, `fee_groups_id`, `feetype_id`, `session_id`, `due_date`, `amount`, `is_active`, `created_at`) VALUES (16, 10, 3, 7, 14, '2020-07-15', '35000.00', 'no', '2020-07-07 19:43:04');
INSERT INTO `fee_groups_feetype` (`id`, `fee_session_group_id`, `fee_groups_id`, `feetype_id`, `session_id`, `due_date`, `amount`, `is_active`, `created_at`) VALUES (18, 6, 3, 7, 13, '2020-07-22', '35000.00', 'no', '2020-07-07 19:47:22');
INSERT INTO `fee_groups_feetype` (`id`, `fee_session_group_id`, `fee_groups_id`, `feetype_id`, `session_id`, `due_date`, `amount`, `is_active`, `created_at`) VALUES (19, 10, 3, 2, 14, '2020-07-31', '250000.00', 'no', '2020-07-15 23:15:29');


#
# TABLE STRUCTURE FOR: fee_receipt_no
#

DROP TABLE IF EXISTS `fee_receipt_no`;

CREATE TABLE `fee_receipt_no` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payment` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: fee_session_groups
#

DROP TABLE IF EXISTS `fee_session_groups`;

CREATE TABLE `fee_session_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fee_groups_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fee_groups_id` (`fee_groups_id`),
  KEY `session_id` (`session_id`),
  CONSTRAINT `fee_session_groups_ibfk_1` FOREIGN KEY (`fee_groups_id`) REFERENCES `fee_groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fee_session_groups_ibfk_2` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

INSERT INTO `fee_session_groups` (`id`, `fee_groups_id`, `session_id`, `is_active`, `created_at`) VALUES (6, 3, 13, 'no', '2020-06-27 14:52:30');
INSERT INTO `fee_session_groups` (`id`, `fee_groups_id`, `session_id`, `is_active`, `created_at`) VALUES (7, 4, 13, 'no', '2020-06-27 14:52:48');
INSERT INTO `fee_session_groups` (`id`, `fee_groups_id`, `session_id`, `is_active`, `created_at`) VALUES (8, 5, 13, 'no', '2020-06-27 14:53:04');
INSERT INTO `fee_session_groups` (`id`, `fee_groups_id`, `session_id`, `is_active`, `created_at`) VALUES (9, 6, 13, 'no', '2020-06-30 12:38:37');
INSERT INTO `fee_session_groups` (`id`, `fee_groups_id`, `session_id`, `is_active`, `created_at`) VALUES (10, 3, 14, 'no', '2020-07-07 17:49:58');


#
# TABLE STRUCTURE FOR: feecategory
#

DROP TABLE IF EXISTS `feecategory`;

CREATE TABLE `feecategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: feemasters
#

DROP TABLE IF EXISTS `feemasters`;

CREATE TABLE `feemasters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` int(11) DEFAULT NULL,
  `feetype_id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: fees_discounts
#

DROP TABLE IF EXISTS `fees_discounts`;

CREATE TABLE `fees_discounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `description` text,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `session_id` (`session_id`),
  CONSTRAINT `fees_discounts_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: feetype
#

DROP TABLE IF EXISTS `feetype`;

CREATE TABLE `feetype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `feecategory_id` int(11) DEFAULT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `feetype` (`id`, `feecategory_id`, `type`, `code`, `is_active`, `created_at`, `updated_at`, `description`) VALUES (2, NULL, '1st Semester', '1st Semester', 'no', '2020-07-15 23:14:53', '0000-00-00 00:00:00', '2K18');
INSERT INTO `feetype` (`id`, `feecategory_id`, `type`, `code`, `is_active`, `created_at`, `updated_at`, `description`) VALUES (3, NULL, '2nd Semester', '2nd Semester', 'no', '2020-07-15 23:15:02', '0000-00-00 00:00:00', '2K18');
INSERT INTO `feetype` (`id`, `feecategory_id`, `type`, `code`, `is_active`, `created_at`, `updated_at`, `description`) VALUES (7, NULL, '3rd Semester', '3rd Semester', 'no', '2020-07-15 23:15:10', '0000-00-00 00:00:00', '2K18');


#
# TABLE STRUCTURE FOR: grades
#

DROP TABLE IF EXISTS `grades`;

CREATE TABLE `grades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `point` float(10,1) DEFAULT NULL,
  `mark_from` float(10,2) DEFAULT NULL,
  `mark_upto` float(10,2) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: hostel
#

DROP TABLE IF EXISTS `hostel`;

CREATE TABLE `hostel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostel_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `intake` int(11) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: hostel_rooms
#

DROP TABLE IF EXISTS `hostel_rooms`;

CREATE TABLE `hostel_rooms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostel_id` int(11) DEFAULT NULL,
  `room_type_id` int(11) DEFAULT NULL,
  `room_no` varchar(200) DEFAULT NULL,
  `no_of_bed` int(11) DEFAULT NULL,
  `cost_per_bed` float(10,2) DEFAULT '0.00',
  `title` varchar(200) DEFAULT NULL,
  `description` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: income
#

DROP TABLE IF EXISTS `income`;

CREATE TABLE `income` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inc_head_id` varchar(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `note` text,
  `is_active` varchar(255) DEFAULT 'yes',
  `is_deleted` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `documents` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO `income` (`id`, `inc_head_id`, `name`, `date`, `amount`, `note`, `is_active`, `is_deleted`, `created_at`, `updated_at`, `documents`) VALUES (1, '1', 'Muhammad Hasnain Abbasi', '2019-03-05', '45', 'Fee Paid ', 'yes', 'no', '2019-03-08 16:44:31', '0000-00-00 00:00:00', NULL);
INSERT INTO `income` (`id`, `inc_head_id`, `name`, `date`, `amount`, `note`, `is_active`, `is_deleted`, `created_at`, `updated_at`, `documents`) VALUES (4, '3', 'Jamshaid Ahmed', '2020-06-23', '1000', 'Admission form sold.', 'yes', 'no', '2020-06-30 22:04:28', '0000-00-00 00:00:00', NULL);


#
# TABLE STRUCTURE FOR: income_head
#

DROP TABLE IF EXISTS `income_head`;

CREATE TABLE `income_head` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `income_category` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_active` varchar(255) NOT NULL DEFAULT 'yes',
  `is_deleted` varchar(255) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO `income_head` (`id`, `income_category`, `description`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES (1, 'Semester Fees', 'Students Semester Fees', 'yes', 'no', '2019-03-08 00:19:10', '0000-00-00 00:00:00');
INSERT INTO `income_head` (`id`, `income_category`, `description`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES (2, 'Forms Fee', '', 'yes', 'no', '2020-06-30 21:57:36', '0000-00-00 00:00:00');
INSERT INTO `income_head` (`id`, `income_category`, `description`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES (3, 'Admission form fee', 'Rs. 1000.00', 'yes', 'no', '2020-06-30 22:02:39', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: item
#

DROP TABLE IF EXISTS `item`;

CREATE TABLE `item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_category_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `item_photo` varchar(225) DEFAULT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `item_store_id` int(11) DEFAULT NULL,
  `item_supplier_id` int(11) DEFAULT NULL,
  `quantity` int(100) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO `item` (`id`, `item_category_id`, `name`, `item_photo`, `description`, `created_at`, `updated_at`, `item_store_id`, `item_supplier_id`, `quantity`, `date`) VALUES (2, 5, 'Water Dispenser small', NULL, 'steel dispenser 1 bottle 19 litter capacity', '2020-07-04 14:42:54', '0000-00-00 00:00:00', NULL, NULL, 0, '0000-00-00');
INSERT INTO `item` (`id`, `item_category_id`, `name`, `item_photo`, `description`, `created_at`, `updated_at`, `item_store_id`, `item_supplier_id`, `quantity`, `date`) VALUES (3, 5, 'Battery (UPS)', NULL, '260 Amp AGS', '2020-07-04 14:44:29', '0000-00-00 00:00:00', NULL, NULL, 0, '0000-00-00');


#
# TABLE STRUCTURE FOR: item_category
#

DROP TABLE IF EXISTS `item_category`;

CREATE TABLE `item_category` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `item_category` varchar(255) NOT NULL,
  `is_active` varchar(255) NOT NULL DEFAULT 'yes',
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO `item_category` (`id`, `item_category`, `is_active`, `description`, `created_at`, `updated_at`) VALUES (1, 'Furniture', 'yes', 'All Furniture ', '2019-03-08 18:35:58', '0000-00-00 00:00:00');
INSERT INTO `item_category` (`id`, `item_category`, `is_active`, `description`, `created_at`, `updated_at`) VALUES (2, 'CCTV', 'yes', 'Cameras and DVR', '2020-07-04 13:39:35', '0000-00-00 00:00:00');
INSERT INTO `item_category` (`id`, `item_category`, `is_active`, `description`, `created_at`, `updated_at`) VALUES (3, 'Computer', 'yes', 'Laptop and Desktop and All in One', '2020-07-04 13:40:30', '0000-00-00 00:00:00');
INSERT INTO `item_category` (`id`, `item_category`, `is_active`, `description`, `created_at`, `updated_at`) VALUES (4, 'Curtains and Blinds', 'yes', '', '2020-07-04 13:41:54', '0000-00-00 00:00:00');
INSERT INTO `item_category` (`id`, `item_category`, `is_active`, `description`, `created_at`, `updated_at`) VALUES (5, 'Electronics', 'yes', '', '2020-07-04 13:49:35', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: item_issue
#

DROP TABLE IF EXISTS `item_issue`;

CREATE TABLE `item_issue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `is_active` varchar(10) DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  KEY `item_category_id` (`item_category_id`),
  CONSTRAINT `item_issue_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE,
  CONSTRAINT `item_issue_ibfk_2` FOREIGN KEY (`item_category_id`) REFERENCES `item_category` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `item_issue` (`id`, `issue_type`, `issue_to`, `issue_by`, `issue_date`, `return_date`, `item_category_id`, `item_id`, `quantity`, `note`, `is_returned`, `created_at`, `is_active`) VALUES (1, 'admin', 'Admin', 'Admin', '2018-01-15', '2030-02-12', 5, 2, 1, 'test', 1, '2020-07-06 20:49:13', 'no');


#
# TABLE STRUCTURE FOR: item_stock
#

DROP TABLE IF EXISTS `item_stock`;

CREATE TABLE `item_stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `symbol` varchar(10) NOT NULL DEFAULT '+',
  `store_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `attachment` varchar(250) DEFAULT NULL,
  `description` text NOT NULL,
  `is_active` varchar(10) DEFAULT 'yes',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  KEY `supplier_id` (`supplier_id`),
  KEY `store_id` (`store_id`),
  CONSTRAINT `item_stock_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE,
  CONSTRAINT `item_stock_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `item_supplier` (`id`) ON DELETE CASCADE,
  CONSTRAINT `item_stock_ibfk_3` FOREIGN KEY (`store_id`) REFERENCES `item_store` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO `item_stock` (`id`, `item_id`, `supplier_id`, `symbol`, `store_id`, `quantity`, `date`, `attachment`, `description`, `is_active`, `created_at`) VALUES (3, 2, 2, '+', 2, 1, '2018-01-15', NULL, '', 'yes', '2020-07-06 20:47:40');


#
# TABLE STRUCTURE FOR: item_store
#

DROP TABLE IF EXISTS `item_store`;

CREATE TABLE `item_store` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `item_store` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `item_store` (`id`, `item_store`, `code`, `description`) VALUES (1, 'Locker-208', '001', '');
INSERT INTO `item_store` (`id`, `item_store`, `code`, `description`) VALUES (2, 'College Premises', 'Ground Floor', '');


#
# TABLE STRUCTURE FOR: item_supplier
#

DROP TABLE IF EXISTS `item_supplier`;

CREATE TABLE `item_supplier` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `item_supplier` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact_person_name` varchar(255) NOT NULL,
  `contact_person_phone` varchar(255) NOT NULL,
  `contact_person_email` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `item_supplier` (`id`, `item_supplier`, `phone`, `email`, `address`, `contact_person_name`, `contact_person_phone`, `contact_person_email`, `description`) VALUES (1, 'Carpenter', '03342001296', '', 'Jamshoro phatak', 'Imdad ', '03342001296', '', '');
INSERT INTO `item_supplier` (`id`, `item_supplier`, `phone`, `email`, `address`, `contact_person_name`, `contact_person_phone`, `contact_person_email`, `description`) VALUES (2, 'Test', '', '', 'Test', 'test', '', '', 'test');


#
# TABLE STRUCTURE FOR: lang_keys
#

DROP TABLE IF EXISTS `lang_keys`;

CREATE TABLE `lang_keys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=784 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (1, 'session', 'no', '2016-03-09 21:24:39', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (2, 'school_name', 'no', '2016-03-09 21:34:28', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (3, 'email', 'no', '2016-03-09 21:34:48', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (6, 'roll_no', 'no', '2001-12-30 14:59:30', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (7, 'first_name', 'no', '2001-12-30 14:59:30', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (8, 'last_name', 'no', '2001-12-30 14:59:30', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (9, 'class', 'no', '2020-06-18 22:43:52', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (10, 'section', 'no', '2001-12-30 14:59:30', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (11, 'admission_date', 'no', '2017-04-02 06:07:35', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (12, 'mobile_no', 'no', '2001-12-30 14:59:30', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (13, 'date_of_birth', 'no', '2001-12-30 14:59:30', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (15, 'religion', 'no', '2001-12-30 14:59:30', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (16, 'category', 'no', '2001-12-30 14:59:30', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (17, 'current_address', 'no', '2001-12-30 14:59:30', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (18, 'permanent_address', 'no', '2001-12-30 14:59:30', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (23, 'bank_account_no', 'no', '2001-12-30 14:59:30', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (24, 'bank_name', 'no', '2001-12-30 14:59:30', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (25, 'ifsc_code', 'no', '2001-12-30 14:59:30', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (27, 'guardian_name', 'no', '2001-12-30 14:59:30', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (28, 'guardian_relation', 'no', '2016-03-13 00:13:05', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (29, 'guardian_phone', 'no', '2001-12-30 14:59:30', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (30, 'guardian_address', 'no', '2001-12-30 14:59:30', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (31, 'select_image', 'no', '2001-12-30 14:59:30', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (32, 'import_excel', 'no', '2001-12-30 15:03:11', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (33, 'export_format', 'no', '2001-12-30 15:03:11', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (34, 'generate_pdf', 'no', '2001-12-30 15:03:11', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (35, 'add_fees', 'no', '2016-06-24 18:34:31', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (37, 'search', 'no', '2016-03-13 00:17:08', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (39, 'fee_category', 'no', '2016-03-13 00:29:03', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (40, 'fee_type', 'no', '2016-03-13 00:29:03', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (43, 'add_fees_master', 'no', '2016-03-13 00:30:10', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (44, 'fees_master_list', 'no', '2016-03-13 00:30:10', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (45, 'add_fees_type', 'no', '2016-03-13 00:31:38', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (46, 'fees_type_list', 'no', '2016-03-13 00:31:38', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (48, 'edit', 'no', '2016-03-13 00:33:10', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (50, 'category_list', 'no', '2016-03-13 00:34:32', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (51, 'add_category', 'no', '2016-03-13 00:34:32', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (52, 'session_list', 'no', '2016-03-13 00:35:15', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (53, 'add_session', 'no', '2016-03-13 00:35:15', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (54, 'class_list', 'no', '2016-03-13 00:35:53', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (56, 'section_list', 'no', '2016-03-13 00:36:20', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (57, 'add_section', 'no', '2016-03-13 00:36:20', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (61, 'student', 'no', '2016-03-13 00:38:08', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (63, 'language_list', 'no', '2016-03-13 00:39:44', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (64, 'add_another_language', 'no', '2016-03-13 00:39:44', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (65, 'created_at', 'no', '2016-03-13 01:15:20', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (66, 'save', 'no', '2001-12-30 14:51:24', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (68, 'select_logo', 'no', '2001-12-30 15:17:56', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (69, 'school_logo', 'no', '2001-12-30 15:19:33', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (70, 'manage', 'no', '2001-12-30 15:19:33', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (72, 'edit_logo', 'no', '2001-12-30 15:23:28', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (73, 'phone', 'no', '2001-12-30 15:30:49', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (74, 'user_name', 'no', '2001-12-30 15:38:51', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (76, 'sms_configuration', 'no', '2001-12-30 15:43:00', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (77, 'sms_gateway_url', 'no', '2016-10-27 02:19:35', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (78, 'status', 'no', '2001-12-30 15:43:52', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (79, 'action', 'no', '2001-12-30 15:44:03', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (80, 'change_status', 'no', '2001-12-30 15:45:19', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (82, 'report', 'no', '2001-12-30 15:56:58', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (84, 'select_criteria', 'no', '2001-12-30 15:57:36', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (85, 'reset', 'no', '2001-12-30 15:58:39', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (86, 'invoice_no', 'no', '2001-12-30 16:00:59', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (87, 'fine', 'no', '2001-12-30 16:00:59', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (88, 'type', 'no', '2001-12-30 16:01:20', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (89, 'amount', 'no', '2001-12-30 16:01:20', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (90, 'total', 'no', '2001-12-30 16:01:26', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (91, 'discount', 'no', '2001-12-30 16:01:36', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (92, 'balance_description', 'no', '2001-12-30 16:02:55', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (94, 'no_search_record_found', 'no', '2001-12-30 16:06:37', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (101, 'description', 'no', '2001-12-30 16:13:49', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (102, 'fees_subtotal', 'no', '2001-12-30 16:14:34', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (104, 'receipt_no', 'no', '2001-12-30 16:17:56', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (106, 'grand_total', 'no', '2001-12-30 16:19:14', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (107, 'deposit', 'no', '2001-12-30 16:26:50', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (108, 'balance', 'no', '2001-12-30 16:26:50', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (115, 'fee_master', 'no', '2001-12-30 18:06:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (116, 'classes', 'no', '2001-12-30 18:06:44', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (117, 'collection', 'no', '2001-12-30 18:07:14', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (121, 'current_password', 'no', '2001-12-31 09:59:11', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (122, 'new_password', 'no', '2001-12-31 09:59:11', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (123, 'confirm_password', 'no', '2016-09-15 15:29:51', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (125, 'date', 'no', '2016-04-07 21:17:39', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (137, 'add_new_sms_configuration', 'no', '2001-12-31 11:39:13', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (141, 'cancel', 'no', '2016-03-27 07:50:39', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (142, 'exam_name', 'no', '2016-03-27 09:16:34', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (143, 'subject_name', 'no', '2016-03-30 00:05:15', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (144, 'subject_code', 'no', '2016-03-30 00:05:15', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (145, 'grade_name', 'no', '2016-03-30 04:21:20', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (147, 'percent', 'no', '2016-03-30 04:21:41', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (149, 'percent_to', 'no', '2016-03-30 04:22:00', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (150, 'note', 'no', '2016-03-30 04:22:00', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (151, 'school_code', 'no', '2016-10-25 20:12:26', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (152, 'sign_in', 'no', '2016-04-07 13:27:27', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (153, 'name', 'no', '2016-04-07 21:16:19', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (155, 'transport_fees', 'no', '2016-04-12 21:56:04', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (156, 'fees_discount', 'no', '2016-04-12 22:33:36', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (157, 'father_name', 'no', '2016-04-13 06:52:14', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (158, 'father_phone', 'no', '2016-04-13 06:52:14', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (159, 'father_occupation', 'no', '2016-04-13 06:52:45', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (160, 'mother_name', 'no', '2016-04-13 06:52:45', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (161, 'mother_phone', 'no', '2016-04-13 06:56:08', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (162, 'mother_occupation', 'no', '2016-04-13 06:56:08', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (163, 'guardian_occupation', 'no', '2016-04-13 07:09:51', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (164, 'address', 'no', '2016-04-14 16:32:42', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (165, 'language', 'no', '2016-04-14 16:33:38', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (166, 'teacher_name', 'no', '2016-04-19 15:55:06', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (167, 'password', 'no', '2016-04-19 15:55:06', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (168, 'cast', 'no', '2016-04-19 16:26:10', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (169, 'id', 'no', '2016-04-19 18:04:10', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (170, 'admission_no', 'no', '2016-04-23 04:02:46', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (171, 'enrollment_no', 'no', '2016-04-23 04:20:48', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (180, 'total_paid_fees', 'no', '2016-04-23 05:09:01', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (181, 'admission_discount', 'no', '2016-04-23 05:09:41', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (182, 'total_balance', 'no', '2016-04-23 05:09:41', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (183, 'student_name', 'no', '2016-04-24 07:37:56', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (184, 'fees', 'no', '2016-04-24 07:44:06', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (185, 'rte', 'no', '2016-04-24 09:43:46', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (186, 'gender', 'no', '2016-04-24 18:17:59', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (187, 'teacher_photo', 'no', '2016-04-29 09:56:01', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (188, 'isbn', 'no', '2016-05-02 08:07:51', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (189, 'publisher', 'no', '2016-10-23 13:28:28', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (190, 'author', 'no', '2016-05-02 08:08:19', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (191, 'qty', 'no', '2016-05-02 08:08:19', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (192, 'bookprice', 'no', '2016-10-18 10:11:54', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (193, 'postdate', 'no', '2016-05-02 08:08:38', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (197, 'intake', 'no', '2016-05-05 06:06:45', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (199, 'book_title', 'no', '2016-05-05 09:59:27', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (201, 'no_of_vehicle', 'no', '2016-05-10 04:20:40', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (202, 'fare', 'no', '2016-05-10 04:20:48', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (203, 'content_type', 'no', '2016-05-10 17:24:51', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (205, 'upload_date', 'no', '2016-05-10 17:25:21', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (206, 'expenses', 'no', '2016-05-11 03:14:03', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (207, 'student_information', 'no', '2016-05-11 03:24:31', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (208, 'fees_collection', 'no', '2016-05-11 03:35:29', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (210, 'examinations', 'no', '2016-05-11 04:03:55', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (211, 'academics', 'no', '2016-05-11 04:17:28', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (212, 'download_center', 'no', '2016-05-11 04:17:28', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (214, 'library', 'no', '2016-05-11 04:34:05', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (215, 'system_settings', 'no', '2016-05-11 04:38:32', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (216, 'reports', 'no', '2016-05-11 04:51:38', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (217, 'subject', 'no', '2016-05-13 08:22:44', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (218, 'rack_no', 'no', '2016-05-13 08:22:44', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (220, 'hostel', 'no', '2016-05-13 11:42:27', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (221, 'hostel_name', 'no', '2016-05-13 11:48:07', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (222, 'transport', 'no', '2016-05-13 11:51:25', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (223, 'route_title', 'no', '2016-05-13 11:57:39', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (225, 'date_to', 'no', '2016-05-13 14:36:18', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (227, 'basic_information', 'no', '2016-05-13 14:57:25', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (228, 'add', 'no', '2016-05-13 15:00:46', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (229, 'list', 'no', '2016-05-13 15:03:14', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (230, 'result', 'no', '2016-05-13 15:06:46', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (231, 'pass', 'no', '2016-05-13 15:07:34', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (232, 'fail', 'no', '2016-05-13 15:07:34', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (233, 'continue', 'no', '2016-05-17 19:42:00', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (234, 'leave', 'no', '2016-05-13 15:08:28', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (235, 'exam_list', 'no', '2016-05-17 17:47:56', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (236, 'exam', 'no', '2016-05-17 17:50:35', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (237, 'start_time', 'no', '2016-05-17 17:55:08', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (238, 'end_time', 'no', '2016-05-17 17:55:08', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (239, 'room', 'no', '2016-05-17 17:55:08', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (240, 'full_mark', 'no', '2016-05-17 17:55:08', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (241, 'passing_marks', 'no', '2016-05-17 17:55:08', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (242, 'room_no', 'no', '2016-05-17 18:05:25', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (245, 'promote', 'no', '2016-05-17 19:03:52', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (246, 'content_title', 'no', '2016-05-19 02:50:20', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (251, 'teacher_list', 'no', '2016-05-21 09:29:17', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (252, 'compose_new_message', 'no', '2016-05-25 08:22:49', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (253, 'notice', 'no', '2016-05-25 08:26:56', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (254, 'notice_date', 'no', '2016-05-25 08:27:53', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (255, 'publish_on', 'no', '2016-05-25 08:28:56', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (256, 'message_to', 'no', '2016-05-25 08:30:54', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (257, 'parent', 'no', '2016-05-25 08:33:55', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (258, 'teacher', 'no', '2016-05-25 08:34:21', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (259, 'no_record_found', 'no', '2016-05-25 08:47:21', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (260, 'teacher_detail', 'no', '2016-05-25 10:22:21', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (261, 'subject_list', 'no', '2016-05-25 11:03:17', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (263, 'create_category', 'no', '2016-05-25 16:59:13', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (264, 'title', 'no', '2016-05-26 06:01:44', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (265, 'message', 'no', '2016-05-26 06:02:36', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (266, 'send', 'no', '2016-05-26 06:43:32', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (267, 'previous_school_details', 'no', '2016-05-26 10:53:02', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (268, 'upload_documents', 'no', '2016-05-26 10:54:00', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (270, 'miscellaneous_details', 'no', '2016-05-26 10:58:10', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (272, 'edit_notification', 'no', '2016-05-26 12:22:03', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (273, 'guardian_details', 'no', '2016-05-26 12:36:45', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (274, 'payment_id', 'no', '2016-05-26 12:40:03', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (275, 'change_password', 'no', '2016-05-26 12:45:33', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (278, 'notifications', 'no', '2016-05-30 08:42:06', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (279, 'visible_to_all', 'no', '2016-05-30 09:05:26', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (280, 'visibility', 'no', '2016-05-30 09:06:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (284, 'communicate', 'no', '2016-05-30 09:19:53', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (285, 'notice_board', 'no', '2016-05-30 09:21:47', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (286, 'publish_date', 'no', '2016-05-30 10:01:41', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (287, 'father', 'no', '2016-06-01 08:21:38', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (288, 'mother', 'no', '2016-06-01 08:21:47', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (290, 'not_scheduled', 'no', '2016-06-07 18:50:48', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (291, 'import_student', 'no', '2016-06-10 08:56:51', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (292, 'dl_sample_import', 'no', '2016-06-10 09:03:13', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (293, 'select_csv_file', 'no', '2016-06-10 09:10:49', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (294, 'date_format', 'no', '2016-06-22 08:49:07', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (295, 'currency', 'no', '2016-06-22 08:49:28', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (296, 'currency_symbol', 'no', '2016-06-22 08:49:28', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (297, 'profile', 'no', '2016-06-22 23:46:28', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (298, 'save_attendance', 'no', '2016-06-22 23:56:58', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (299, 'full_marks', 'no', '2016-06-24 11:10:24', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (300, 'obtain_marks', 'no', '2016-06-24 11:10:24', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (301, 'total_marks', 'no', '2016-06-24 11:18:37', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (302, 'current', 'no', '2016-07-12 07:26:07', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (303, 'admission', 'no', '2016-07-21 12:40:45', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (305, 'sibling', 'no', '2016-08-07 07:32:13', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (306, 'details', 'no', '2016-08-07 07:39:19', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (309, 'identification', 'no', '2016-08-07 07:43:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (310, 'no', 'no', '2016-08-07 07:45:33', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (311, 'delete', 'no', '2016-08-07 08:28:55', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (312, 'documents', 'no', '2016-08-07 08:33:52', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (313, 'payment', 'no', '2016-08-07 08:36:56', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (317, 'no_transaction_found', 'no', '2016-08-10 13:32:10', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (318, 'transport_fees_details', 'no', '2016-08-10 13:35:57', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (319, 'collect_fees', 'no', '2016-08-10 13:45:47', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (320, 'balance_details', 'no', '2016-08-10 13:48:55', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (321, 'download_pdf', 'no', '2016-08-10 14:05:40', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (322, 'student_fees_report', 'no', '2016-08-10 14:23:18', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (323, 'total_fees', 'no', '2016-08-10 14:26:53', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (324, 'paid_fees', 'no', '2016-08-10 14:26:53', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (325, 'student_detail', 'no', '2016-08-10 14:42:55', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (327, 'gross_fees', 'no', '2016-08-10 14:45:26', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (328, 'balance_fees', 'no', '2016-08-10 14:48:31', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (329, 'print_selected', 'no', '2016-08-10 14:50:32', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (330, 'collect_transport_fees', 'no', '2016-08-10 15:03:34', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (331, 'no_transport_fees_found', 'no', '2016-08-10 15:05:30', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (332, 'total_transport_fees', 'no', '2016-08-10 15:15:54', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (333, 'class_section', 'no', '2016-08-10 15:19:24', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (335, 'other_discount', 'no', '2016-08-10 15:38:43', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (336, 'search_transaction', 'no', '2016-10-18 10:19:17', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (337, 'fees_collection_details', 'no', '2016-08-10 15:48:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (338, 'expense_id', 'no', '2016-08-10 15:54:24', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (339, 'expense_head', 'no', '2016-08-10 15:51:43', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (340, 'expense_detail', 'no', '2016-08-10 15:55:17', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (341, 'add_expense', 'no', '2016-08-10 16:28:20', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (342, 'edit_expense', 'no', '2016-08-10 16:33:33', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (343, 'expense_list', 'no', '2016-08-10 16:37:48', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (344, 'expense_head_list', 'no', '2016-08-10 16:45:58', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (345, 'edit_expense_head', 'no', '2016-08-10 16:49:02', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (347, 'add_expense_head', 'no', '2016-08-10 16:55:17', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (348, 'attendance_already_submitted_you_can_edit_record', 'no', '2017-04-02 06:16:00', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (349, 'attendance_already_submitted_as_holiday', 'no', '2017-04-02 06:16:00', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (350, 'you_can_edit_record', 'no', '2016-08-11 04:11:54', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (351, 'attendance_saved_successfully', 'no', '2017-04-02 06:16:00', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (352, 'holiday', 'no', '2016-08-11 04:18:21', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (353, 'mark_as_holiday', 'no', '2016-08-11 04:22:15', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (354, 'no_attendance_prepare', 'no', '2016-08-11 04:42:18', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (355, 'add_exam', 'no', '2016-08-11 05:09:04', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (356, 'view_status', 'no', '2016-08-11 05:10:56', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (357, 'marks_register_prepared', 'no', '2016-08-11 05:16:51', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (358, 'exam_scheduled', 'no', '2016-08-11 05:16:51', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (359, 'submit', 'no', '2016-08-11 05:30:47', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (360, 'edit_grade', 'no', '2016-08-11 05:34:55', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (361, 'add_grade', 'no', '2016-08-11 05:34:55', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (362, 'percent_upto', 'no', '2016-08-11 05:36:04', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (363, 'percent_from', 'no', '2016-08-11 05:36:04', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (364, 'grade_list', 'no', '2016-08-11 05:39:49', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (366, 'assign_subject', 'no', '2016-08-11 06:02:21', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (368, 'edit_teacher', 'no', '2016-08-11 06:05:57', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (369, 'add_teacher', 'no', '2016-08-11 06:22:14', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (370, 'add_subject', 'no', '2016-08-11 06:30:48', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (374, 'edit_subject', 'no', '2016-08-11 06:43:33', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (375, 'edit_class', 'no', '2016-08-11 06:43:50', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (377, 'edit_section', 'no', '2016-08-11 06:54:27', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (378, 'upload_content', 'no', '2016-08-11 07:06:54', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (380, 'content_list', 'no', '2016-08-11 07:30:03', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (382, 'available_for_all_classes', 'no', '2016-10-23 12:26:48', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (384, 'content_file', 'no', '2016-08-12 14:09:02', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (385, 'available_for', 'no', '2016-08-12 14:09:02', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (386, 'my_children', 'no', '2016-09-17 06:06:30', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (387, 'assignment_list', 'no', '2016-08-12 14:15:21', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (388, 'study_material_list', 'no', '2016-08-12 14:15:21', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (389, 'syllabus_list', 'no', '2016-08-12 14:15:21', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (390, 'other_download_list', 'no', '2016-08-12 14:15:21', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (391, 'book_details', 'no', '2016-08-12 14:34:18', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (392, 'edit_book', 'no', '2016-08-12 14:34:18', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (393, 'book_list', 'no', '2016-08-12 14:36:33', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (394, 'route_list', 'no', '2016-08-12 14:48:15', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (395, 'create_route', 'no', '2016-08-12 14:48:15', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (396, 'edit_route', 'no', '2016-08-12 14:48:15', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (397, 'add_hostel', 'no', '2016-08-12 15:05:23', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (398, 'edit_hostel', 'no', '2016-08-12 15:05:23', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (399, 'hostel_list', 'no', '2016-08-12 15:05:23', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (400, 'print', 'no', '2016-08-12 15:08:26', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (401, 'room_type', 'no', '2016-08-12 15:13:23', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (402, 'add_room_type', 'no', '2016-08-12 15:13:23', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (403, 'room_type_list', 'no', '2016-08-12 15:13:23', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (404, 'edit_room_type', 'no', '2016-08-12 15:13:23', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (406, 'edit_message', 'no', '2016-08-12 15:28:45', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (407, 'select', 'no', '2016-08-12 15:32:17', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (408, 'general_settings', 'no', '2016-08-12 16:03:50', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (410, 'session_start_month', 'no', '2016-08-12 16:04:48', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (411, 'edit_session', 'no', '2016-08-12 16:17:13', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (414, 'paypal_setting', 'no', '2016-08-12 16:50:26', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (415, 'paypal_username', 'no', '2016-08-12 16:50:26', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (416, 'paypal_password', 'no', '2016-08-12 16:50:26', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (417, 'paypal_signature', 'no', '2016-08-12 16:50:26', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (418, 'paypal_email', 'no', '2016-08-12 16:50:26', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (419, 'off', 'no', '2016-08-12 16:50:43', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (420, 'on', 'no', '2016-08-12 16:50:43', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (421, 'backup_history', 'no', '2016-08-12 16:59:15', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (422, 'create_backup', 'no', '2016-08-12 16:59:15', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (423, 'backup_files', 'no', '2016-10-25 20:47:36', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (424, 'upload_from_local_directory', 'no', '2016-08-12 17:03:51', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (427, 'restore', 'no', '2016-08-12 22:04:46', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (429, 'class_fees_detail', 'no', '2016-08-12 22:37:20', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (430, 'no_fees_found', 'no', '2016-08-12 22:38:56', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (431, 'monthly_fees_collection', 'no', '2016-08-12 22:43:22', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (432, 'monthly_expenses', 'no', '2016-08-12 22:43:22', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (433, 'teachers', 'no', '2016-08-12 22:43:22', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (434, 'students', 'no', '2016-08-12 22:43:22', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (436, 'login_details', 'no', '2016-08-12 22:57:20', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (437, 'academic_fees_detail', 'no', '2016-08-12 23:33:38', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (438, 'document_list', 'no', '2016-08-12 23:42:01', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (439, 'exam_timetable', 'no', '2016-08-13 00:00:36', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (440, 'promote_in_session', 'no', '2016-08-13 00:51:51', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (441, 'promote_students_in_next_session', 'no', '2016-08-13 00:51:51', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (442, 'next_session_status', 'no', '2016-08-13 00:55:11', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (443, 'no_result_prepare', 'no', '2016-08-12 17:26:40', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (444, 'parent_guardian_detail', 'no', '2016-08-12 17:59:14', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (445, 'add_more_details', 'no', '2016-08-12 18:01:21', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (446, 'if_permanent_address_is_current_address', 'no', '2016-10-05 21:58:39', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (447, 'address_details', 'no', '2016-08-12 18:07:38', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (449, 'add_image', 'no', '2016-08-12 18:25:27', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (450, 'payment_id_detail', 'no', '2016-08-12 18:33:44', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (451, 'section_name', 'no', '2016-08-12 19:03:59', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (452, 'fees_type', 'no', '2016-08-12 19:32:20', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (453, 'edit_hostel_room', 'no', '2016-08-16 12:07:57', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (454, 'room_no_name', 'no', '2016-08-16 12:11:43', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (455, 'no_of_bed', 'no', '2016-08-16 12:11:43', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (456, 'cost_per_bed', 'no', '2016-08-16 12:11:43', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (457, 'hostel_room_list', 'no', '2016-08-16 12:11:43', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (458, 'add_hostel_room', 'no', '2016-08-16 12:16:48', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (459, 'mark_register', 'no', '2016-08-16 12:21:56', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (462, 'fill_mark', 'no', '2016-08-16 12:32:20', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (463, 'post_new_message', 'no', '2016-08-16 12:35:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (464, 'by_date', 'no', '2016-08-16 12:41:44', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (465, 'edit_category', 'no', '2016-08-16 12:50:25', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (466, 'exam_not_allotted', 'no', '2016-10-23 12:23:46', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (467, 'edit_exam', 'no', '2016-08-16 13:01:50', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (468, 'add_class', 'no', '2016-08-16 13:06:27', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (469, 'teacher_subject', 'no', '2016-08-16 14:48:06', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (470, 'dd', 'no', '2016-08-17 04:05:12', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (471, 'cash', 'no', '2016-08-17 04:05:12', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (472, 'cheque', 'no', '2016-08-17 04:05:12', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (473, 'revert', 'no', '2016-08-17 04:40:47', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (474, 'view', 'no', '2016-08-17 06:16:56', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (475, 'no_exam_prepare', 'no', '2016-10-23 13:00:25', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (476, 'sms_setting', 'no', '2016-08-22 13:45:46', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (477, 'smart_school', 'no', '2016-08-25 04:41:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (478, 'user_login', 'no', '2016-08-25 05:16:22', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (479, 'library_book', 'no', '2016-09-07 00:10:41', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (480, 'transport_routes', 'no', '2016-09-07 00:14:00', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (481, 'hostel_rooms', 'no', '2016-09-07 00:17:22', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (482, 'exam_schedule', 'no', '2016-09-07 00:27:03', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (483, 'subjects', 'no', '2016-09-07 00:35:20', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (484, 'national_identification_no', 'no', '2016-09-15 09:00:04', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (485, 'local_identification_no', 'no', '2016-09-15 09:01:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (486, 'my_profile', 'no', '2016-09-15 13:44:58', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (487, 'mode', 'no', '2016-09-15 13:47:39', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (488, 'url', 'no', '2016-09-15 16:24:06', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (489, 'month', 'no', '2016-09-15 16:37:30', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (490, 'upload', 'no', '2016-09-15 16:46:34', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (491, 'day', 'no', '2016-10-24 05:02:31', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (492, 'class_timetable', 'no', '2016-10-05 21:40:38', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (493, 'if_guardian_address_is_current_address', 'no', '2016-10-07 22:12:51', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (494, 'admin_login', 'no', '2016-10-18 02:08:26', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (495, 'date_from', 'no', '2016-10-19 11:07:28', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (496, 'other', 'no', '2016-10-25 20:01:08', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (497, 'search_by_keyword', 'no', '2016-10-25 20:55:46', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (499, 'add_book', 'no', '2016-10-31 16:52:54', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (500, 'edit_vehicle_on_route', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (501, 'assign_vehicle_on_route', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (502, 'vehicle_route_list', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (503, 'route', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (504, 'vehicle_routes', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (505, 'edit_vehicle', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (506, 'vehicle', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (507, 'vehicle_list', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (508, 'add_vehicle', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (509, 'driver_contact', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (510, 'driver_license', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (511, 'driver_name', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (512, 'vehicle_no', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (513, 'vehicle_model', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (514, 'logout', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (515, 'year_made', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (516, 'attendance', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (517, 'show', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (519, 'add_timetable', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (520, 'edit_setting', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (521, 'subject_type', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (522, 'view_detail', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (523, 'exam_status', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (524, 'books', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (525, 'report_card', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (526, 'library_books', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (527, 'no_vehicle_allotted_to_this_route', 'no', '2017-04-02 06:16:00', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (528, 'Add/Edit', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (529, 'language_rtl_text_mode', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (530, 'clickatell_username', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (531, 'clickatell_password', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (532, 'clickatell_api_id', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (533, 'clickatell_sms_gateway', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (534, 'twilio_sms_gateway', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (535, 'custom_sms_gateway', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (536, 'twilio_account_sid', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (537, 'authentication_token', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (538, 'registered_phone_number', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (539, 'username', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (540, 'gateway_name', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (541, 'theory', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (542, 'practical', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (543, 'present', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (544, 'paid', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (545, 'yes', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (546, 'if_guardian_is', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (547, 'current_session', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (548, 'quick_links', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (549, 'student_details', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (550, 'student_admission', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (551, 'student_categories', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (552, 'promote_students', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (554, 'fees_master', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (555, 'search_fees_payment', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (556, 'search_due_fees', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (557, 'fees_statement', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (558, 'balance_fees_report', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (559, 'search_expense', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (560, 'student_attendance', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (561, 'attendance_by_date', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (562, 'attendance_report', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (563, 'marks_register', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (564, 'marks_grade', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (565, 'assign_subjects', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (566, 'sections', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (567, 'assignments', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (568, 'study_material', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (569, 'routes', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (570, 'vehicles', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (571, 'assign_vehicle', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (572, 'send_message', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (573, 'student_report', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (574, 'transaction_report', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (575, 'exam_marks_report', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (576, 'session_setting', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (577, 'backup / restore', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (578, 'languages', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (579, 'grade', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (580, 'percentage', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (581, 'fees_collection_&_expenses_for_session', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (582, 'fees_receipt', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (583, 'fees_category', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (584, 'fees_collection_&_expenses_for', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (585, 'library_-_books', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (586, 'transport_-_routes', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (587, 'hostel_-_rooms', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (588, 'search_by_name,_roll_no,_enroll_no,_national_identification_no,_local_identification_no_etc..', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (589, 'user_type', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (590, 'login_url', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (591, 'search_student', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (592, 'student_lists', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (593, 'detailed_view', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (595, 'active', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (596, 'syllabus', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (597, 'other_downloads', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (598, 'download', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (599, 'unpaid', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (600, 'enter_room_no', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (601, 'male', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (602, 'female', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (603, 'expense_result', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (604, 'view_schedule', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (605, 'pdf', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (606, 'not', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (607, 'scheduled', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (609, 'transaction_from', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (610, 'to', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (611, 'enabled', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (612, 'disabled', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (613, 'add_language', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (614, 'no_description', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (615, 'fees_category_list', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (616, 'add_fee_category', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (617, 'edit_fee_category', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (618, 'late_with_excuse', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (619, 'late', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (620, 'absent', 'no', '2017-04-02 04:39:09', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (621, 'issue_book', 'no', '2017-05-19 22:03:58', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (622, 'member_type', 'no', '2017-05-19 22:03:58', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (623, 'issue', 'no', '2017-05-19 22:03:58', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (624, 'book', 'no', '2017-05-19 22:03:58', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (625, 'members', 'no', '2017-05-19 22:03:58', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (626, 'library_card_no', 'no', '2017-05-19 22:03:58', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (627, 'return_date', 'no', '2017-05-19 22:03:58', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (628, 'member_id', 'no', '2017-05-19 22:03:58', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (629, 'book_issued', 'no', '2017-05-19 22:03:58', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (630, 'timezone', 'no', '2017-05-19 22:03:58', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (631, 'accountants', 'no', '2017-05-19 22:03:58', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (632, 'librarians', 'no', '2017-05-19 22:03:58', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (633, 'add_librarian', 'no', '2017-05-19 22:03:58', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (634, 'librarian_photo', 'no', '2017-05-19 22:03:58', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (635, 'librarian_list', 'no', '2017-05-19 22:03:58', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (636, 'edit_librarian', 'no', '2017-05-19 22:03:58', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (637, 'current_username', 'no', '2017-05-19 22:03:58', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (638, 'new_username', 'no', '2017-05-19 22:03:58', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (639, 'confirm_username', 'no', '2017-05-19 22:03:58', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (640, 'change_username', 'no', '2017-05-19 22:03:58', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (641, 'add_accountant', 'no', '2017-05-19 22:03:58', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (642, 'accountant_list', 'no', '2017-05-19 22:03:58', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (643, 'accountant_photo', 'no', '2017-05-19 22:03:58', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (644, 'edit_accountant', 'no', '2017-05-19 22:03:58', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (645, 'book_no', 'no', '2017-05-19 22:03:58', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (646, 'users', 'no', '2017-05-19 22:03:58', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (647, 'isbn_no', 'no', '2017-05-19 22:03:58', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (648, 'issue_return', 'no', '2017-05-19 22:03:58', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (649, 'add_student', 'no', '2017-05-19 22:03:58', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (650, 'books_issue_return', 'no', '2017-05-19 22:03:58', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (651, 'member_list', 'no', '2017-05-29 23:11:22', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (652, 'issue_date', 'no', '2017-05-29 23:11:22', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (653, 'surrender_membership', 'no', '2017-05-29 23:11:22', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (654, 'fees_group', 'no', '2017-08-02 18:49:55', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (655, 'add_fees_group', 'no', '2017-08-02 18:49:55', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (656, 'fees_group_list', 'no', '2017-08-02 18:49:55', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (657, 'due_date', 'no', '2017-08-02 18:49:55', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (658, 'fees_code', 'no', '2017-08-02 18:49:55', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (659, 'fees_discount', 'no', '2017-08-02 18:49:55', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (660, 'edit_fees_discount', 'no', '2017-08-02 18:49:55', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (661, 'discount_code', 'no', '2017-08-02 18:49:55', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (662, 'fees_discount_list', 'no', '2017-08-02 18:49:55', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (663, 'add_fees_discount', 'no', '2017-08-02 18:49:55', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (664, 'all', 'no', '2017-08-02 18:49:55', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (665, 'assign_fees_discount', 'no', '2017-08-02 18:49:55', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (666, 'partial', 'no', '2017-08-02 18:49:55', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (667, 'applied', 'no', '2017-08-02 18:49:55', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (668, 'student_fees', 'no', '2017-08-02 18:49:55', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (669, 'confirmation', 'no', '2017-08-02 18:49:55', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (670, 'assign / view', 'no', '2017-08-02 18:49:55', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (671, 'edit_fees_group', 'no', '2017-08-02 18:49:55', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (672, 'edit_fees_type', 'no', '2017-08-02 18:49:55', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (673, 'edit_fees_master', 'no', '2017-08-02 18:49:55', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (674, 'apply_discount', 'no', '2017-08-02 18:49:55', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (675, 'discount_of', 'no', '2017-08-02 18:49:55', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (676, 'add_member', 'no', '2017-08-02 18:49:55', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (677, 'email_setting', 'no', '2017-08-02 18:49:55', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (678, 'email_engine', 'no', '2017-08-02 18:49:55', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (679, 'smtp_username', 'no', '2017-08-02 18:49:55', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (680, 'smtp_password', 'no', '2017-08-02 18:49:55', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (681, 'smtp_server', 'no', '2017-08-02 18:49:55', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (682, 'smtp_port', 'no', '2017-08-02 18:49:55', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (683, 'smtp_security', 'no', '2017-08-02 18:49:55', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (684, 'assigned', 'no', '2017-08-02 18:49:55', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (685, 'admin_users', 'no', '2017-08-02 18:49:55', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (686, 'add_admin_user', 'no', '2017-08-02 18:49:55', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (687, 'admin_name', 'no', '2017-08-02 18:49:55', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (688, 'admin_email', 'no', '2017-08-02 18:49:55', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (689, 'admin_password', 'no', '2017-08-02 18:49:55', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (690, 'forgot_password', 'no', '2017-08-02 18:49:55', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (691, 'assign_fees_group', 'no', '2017-08-02 18:49:55', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (692, 'accountant', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (693, 'add_income', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (694, 'add_item_store', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (695, 'admin', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (696, 'attach_document', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (697, 'confirm_return', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (698, 'contact_person_email', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (699, 'contact_person_name', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (700, 'edit_income_head', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (701, 'edit_item_store', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (702, 'edit_item_category', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (703, 'group', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (704, 'guardians', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (705, 'income_head_list', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (706, 'income_head', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (707, 'income', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (708, 'individual', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (709, 'inventory', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (710, 'issue_by', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (711, 'issue_to', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (712, 'issue_item', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (713, 'item_store', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (714, 'item_category', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (715, 'item', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (716, 'item_stock_list', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (717, 'item_store_code', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (718, 'item_store_name', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (719, 'item_supplier_list', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (720, 'librarian', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (721, 'quantity', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (722, 'reset_password', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (723, 'return', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (724, 'returned', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (725, 'search_income', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (726, 'sms', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (727, 'store', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (728, 'supplier', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (729, 'add_item_category', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (730, 'add_item', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (731, 'add_item_stock', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (732, 'add_item_supplier', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (733, 'available_quantity', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (734, 'contact_person_phone', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (735, 'edit_item_supplier', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (736, 'edit_item', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (737, 'edit_income', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (738, 'expense_details', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (739, 'income_details', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (740, 'income_id', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (741, 'income_result', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (742, 'issued_by', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (743, 'item_category_list', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (744, 'item_list', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (745, 'item_store_list', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (746, 'item_supplier', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (747, 'contact_person', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (748, 'send_through', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (749, 'auth_Key', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (750, 'current_theme', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (751, 'guardian_email', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (752, 'hash_key', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (753, 'income_list', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (754, 'income_result', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (755, 'income_search', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (756, 'MSG_91', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (757, 'notification_setting', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (758, 'sender_id', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (759, 'SMS_country', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (760, 'Text_Local', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (761, 'user_log', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (762, 'send_email_/_sms', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (763, 'email_/_sms', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (764, 'email_/_sms_log', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (765, 'payment_methods', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (766, 'all_users', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (767, 'stripe_api_secret_key', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (768, 'stripe_publishable_key', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (769, 'payu_money_key', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (770, 'payu_money_salt', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (771, 'merchant_id', 'no', '2017-12-14 17:24:50', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (772, 'working_key', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (773, 'select_payment_gateway', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (774, 'exam_result', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (775, 'fees_submission', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (776, 'absent_student', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (777, 'login_credential', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (778, 'role', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (779, 'ip_address', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (780, 'login_time', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (781, 'user_agent', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (782, 'click_to_return', 'no', '2017-12-14 06:32:16', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (783, 'part', 'no', '2020-06-18 23:12:33', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: lang_pharses
#

DROP TABLE IF EXISTS `lang_pharses`;

CREATE TABLE `lang_pharses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lang_id` int(11) DEFAULT NULL,
  `key_id` int(11) DEFAULT NULL,
  `pharses` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `text` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `lang_id` (`lang_id`),
  KEY `key_id` (`key_id`)
) ENGINE=InnoDB AUTO_INCREMENT=74121 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (997, 4, 620, 'Absent', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (998, 4, 437, 'Academic Fees Detail', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (999, 4, 211, 'Academics', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1000, 4, 79, 'Action', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1001, 4, 595, 'Active', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1002, 4, 228, 'Add', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1003, 4, 64, 'Add Another Language', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1004, 4, 499, 'Add Book', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1005, 4, 51, 'Add Category', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1006, 4, 468, 'Add Batch', NULL, 'no', '2020-06-18 22:50:50', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1007, 4, 355, 'Add Exam', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1008, 4, 341, 'Add Expense', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1009, 4, 347, 'Add Expense Head', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1010, 4, 616, 'Add Fee Category', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1011, 4, 35, 'Add Fees', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1012, 4, 43, 'Add Fees Master', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1013, 4, 45, 'Add Fees Type', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1014, 4, 361, 'Add Grade', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1015, 4, 397, 'Add Hostel', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1016, 4, 458, 'Add Hostel Room', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1017, 4, 449, 'Add Image', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1018, 4, 613, 'Add Language', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1019, 4, 445, 'Add More Details', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1020, 4, 137, 'Add New SMS Configuration', NULL, 'no', '2017-04-10 13:40:03', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1021, 4, 402, 'Add Room Type', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1022, 4, 57, 'Add Semester', NULL, 'no', '2020-06-18 22:52:31', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1023, 4, 53, 'Add Session', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1024, 4, 370, 'Add Subject', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1025, 4, 369, 'Add Teacher', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1026, 4, 519, 'Add Timetable', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1027, 4, 508, 'Add Vehicle', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1028, 4, 528, 'Add/Edit', NULL, 'no', '2017-04-10 13:40:22', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1029, 4, 164, 'Address', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1030, 4, 447, 'Address Details', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1031, 4, 494, 'Admin Login', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1032, 4, 303, 'Admission', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1033, 4, 11, 'Admission Date', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1034, 4, 181, 'Admission Discount', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1035, 4, 170, 'Admission Number', NULL, 'no', '2017-05-20 07:40:16', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1036, 4, 89, 'Amount', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1038, 4, 366, 'Assign Subject', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1039, 4, 565, 'Assign Subjects', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1040, 4, 571, 'Assign Vehicle', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1041, 4, 501, 'Assign Vehicle On Route', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1042, 4, 387, 'Assignment List', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1043, 4, 567, 'Assignments', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1044, 4, 516, 'Attendance', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1045, 4, 349, 'Attendance Already Submitted As Holiday', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1046, 4, 348, 'Attendance Already Submitted You Can Edit Record', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1047, 4, 561, 'Attendance By Date', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1048, 4, 562, 'Attendance Report', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1049, 4, 351, 'Attendance Saved Successfully', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1050, 4, 537, 'Authentication Token', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1051, 4, 190, 'Author', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1052, 4, 385, 'Available For', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1053, 4, 382, 'Available For All Batches', NULL, 'no', '2020-06-22 23:48:15', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1054, 4, 577, 'Backup / Restore', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1055, 4, 423, 'Backup Files', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1056, 4, 421, 'Backup History', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1057, 4, 108, 'Balance', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1058, 4, 92, 'Balance Description', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1059, 4, 320, 'Balance Details', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1060, 4, 328, 'Balance Fees', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1061, 4, 558, 'Balance Fees Report', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1062, 4, 23, 'Bank Account Number', NULL, 'no', '2017-05-20 07:40:30', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1063, 4, 24, 'Bank Name', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1064, 4, 227, 'Basic Information', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1065, 4, 391, 'Book Details', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1066, 4, 393, 'Book List', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1067, 4, 199, 'Book Title', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1068, 4, 192, 'Book Price', NULL, 'no', '2017-04-10 13:43:06', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1069, 4, 524, 'Books', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1070, 4, 464, 'By Date', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1071, 4, 141, 'Cancel', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1072, 4, 471, 'Cash', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1073, 4, 168, 'Cast', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1074, 4, 16, 'Category', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1075, 4, 50, 'Category List', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1076, 4, 275, 'Change Password', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1077, 4, 80, 'Change Status', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1078, 4, 472, 'Cheque', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1079, 4, 9, 'Batch', NULL, 'no', '2020-06-18 22:50:20', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1080, 4, 429, 'Batches Fees Detail', NULL, 'no', '2020-06-22 23:47:32', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1081, 4, 54, 'Batch List', NULL, 'no', '2020-06-18 22:51:08', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1082, 4, 333, 'Batch Semester', NULL, 'no', '2020-06-22 23:46:27', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1083, 4, 492, 'Batches Timetable', NULL, 'no', '2020-06-22 23:47:32', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1084, 4, 116, 'Batches', NULL, 'no', '2020-06-22 23:47:34', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1085, 4, 532, 'Clickatell Api Id', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1086, 4, 531, 'Clickatell Password', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1087, 4, 533, 'Clickatell SMS Gateway', NULL, 'no', '2017-04-10 13:44:20', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1088, 4, 530, 'Clickatell Username', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1089, 4, 319, 'Collect Fees', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1090, 4, 330, 'Collect Transport Fees', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1091, 4, 117, 'Collection', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1092, 4, 284, 'Communicate', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1093, 4, 252, 'Compose New Message', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1094, 4, 123, 'Confirm Password', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1095, 4, 384, 'Content File', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1096, 4, 380, 'Content List', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1097, 4, 246, 'Content Title', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1098, 4, 203, 'Content Type', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1099, 4, 233, 'Continue', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1100, 4, 456, 'Cost Per Bed', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1101, 4, 422, 'Create Backup', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1102, 4, 263, 'Create Category', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1103, 4, 395, 'Create Route', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1104, 4, 65, 'Created At', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1105, 4, 295, 'Currency', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1106, 4, 296, 'Currency Symbol', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1107, 4, 302, 'Current', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1108, 4, 17, 'Current Address', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1109, 4, 121, 'Current Password', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1110, 4, 547, 'Current Session', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1111, 4, 535, 'Custom SMS Gateway', NULL, 'no', '2017-04-10 13:45:00', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1112, 4, 125, 'Date', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1113, 4, 294, 'Date Format', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1114, 4, 495, 'Date From', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1115, 4, 13, 'Date Of Birth', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1116, 4, 225, 'Date To', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1117, 4, 491, 'Day', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1118, 4, 470, 'DD', NULL, 'no', '2017-04-10 13:45:12', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1120, 4, 311, 'Delete', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1121, 4, 107, 'Deposit', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1122, 4, 101, 'Description', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1123, 4, 593, 'Detailed View', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1124, 4, 306, 'Details', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1125, 4, 612, 'Disabled', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1126, 4, 91, 'Discount', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1127, 4, 292, 'Download Sample Import File', NULL, 'no', '2017-04-10 13:46:06', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1128, 4, 438, 'Document List', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1129, 4, 312, 'Documents', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1130, 4, 598, 'Download', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1131, 4, 212, 'Download Center', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1132, 4, 321, 'Download PDF', NULL, 'no', '2017-04-10 13:46:23', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1133, 4, 509, 'Driver Contact', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1134, 4, 510, 'Driver License', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1135, 4, 511, 'Driver Name', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1136, 4, 48, 'Edit', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1137, 4, 392, 'Edit Book', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1138, 4, 465, 'Edit Category', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1139, 4, 375, 'Edit Batch', NULL, 'no', '2020-06-18 22:54:55', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1140, 4, 467, 'Edit Exam', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1141, 4, 342, 'Edit Expense', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1142, 4, 345, 'Edit Expense Head', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1143, 4, 617, 'Edit Fee Category', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1144, 4, 360, 'Edit Grade', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1145, 4, 398, 'Edit Hostel', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1146, 4, 453, 'Edit Hostel Room', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1147, 4, 72, 'Edit Logo', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1148, 4, 406, 'Edit Message', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1149, 4, 272, 'Edit Notification', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1150, 4, 404, 'Edit Room Type', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1151, 4, 396, 'Edit Route', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1152, 4, 377, 'Edit Section', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1153, 4, 411, 'Edit Session', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1154, 4, 520, 'Edit Setting', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1155, 4, 374, 'Edit Subject', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1156, 4, 368, 'Edit Teacher', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1157, 4, 505, 'Edit Vehicle', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1158, 4, 500, 'Edit Vehicle On Route', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1159, 4, 3, 'Email', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1160, 4, 611, 'Enabled', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1161, 4, 238, 'End Time', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1162, 4, 171, 'Enrollment Number', NULL, 'no', '2017-05-20 07:40:51', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1163, 4, 600, 'Enter Room Number', NULL, 'no', '2017-05-20 07:41:06', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1164, 4, 236, 'Exam', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1165, 4, 235, 'Exam List', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1166, 4, 575, 'Exam Marks Report', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1167, 4, 142, 'Exam Name', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1168, 4, 466, 'Exam Not Allotted', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1169, 4, 482, 'Exam Schedule', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1170, 4, 358, 'Exam Scheduled', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1171, 4, 523, 'Exam Status', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1172, 4, 439, 'Exam Timetable', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1173, 4, 210, 'Examinations', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1174, 4, 340, 'Expense Detail', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1175, 4, 339, 'Expense Head', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1176, 4, 344, 'Expense Head List', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1177, 4, 338, 'Expense Id', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1178, 4, 343, 'Expense List', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1179, 4, 603, 'Expense Result', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1180, 4, 206, 'Expenses', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1181, 4, 33, 'Export Format', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1182, 4, 232, 'Fail', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1183, 4, 202, 'Fare', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1184, 4, 287, 'Father', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1185, 4, 157, 'Father Name', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1186, 4, 159, 'Father Occupation', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1187, 4, 158, 'Father Phone', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1188, 4, 39, 'Fee Category', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1189, 4, 115, 'Fees Master', NULL, 'no', '2017-04-10 13:48:52', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1190, 4, 40, 'Fees Type', NULL, 'no', '2017-04-10 13:48:56', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1191, 4, 184, 'Fees', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1192, 4, 583, 'Fees Category', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1193, 4, 615, 'Fees Category List', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1195, 4, 208, 'Fees Collection', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1196, 4, 584, 'Fees Collection & Expenses For', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1197, 4, 581, 'Fees Collection & Expenses For Session', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1198, 4, 337, 'Fees Collection Details', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1199, 4, 156, 'Fees Discount', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1200, 4, 554, 'Fees Master', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1201, 4, 44, 'Fees Master List', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1202, 4, 582, 'Fees Receipt', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1203, 4, 557, 'Fees Statement', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1204, 4, 102, 'Fees Subtotal', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1205, 4, 452, 'Fees Type', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1206, 4, 46, 'Fees Type List', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1207, 4, 602, 'Female', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1208, 4, 462, 'Fill Marks', NULL, 'no', '2017-12-09 05:47:41', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1209, 4, 87, 'Fine', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1210, 4, 7, 'First Name', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1211, 4, 240, 'Full Marks', NULL, 'no', '2017-12-09 05:48:08', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1212, 4, 299, 'Full Marks', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1213, 4, 540, 'Gateway Name', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1214, 4, 186, 'Gender', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1215, 4, 408, 'General Setting', NULL, 'no', '2017-12-14 18:46:34', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1216, 4, 34, 'Generate PDF', NULL, 'no', '2017-04-10 13:50:09', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1217, 4, 579, 'Grade', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1218, 4, 364, 'Grade List', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1219, 4, 145, 'Grade Name', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1220, 4, 106, 'Grand Total', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1221, 4, 327, 'Gross Fees', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1222, 4, 30, 'Guardian Address', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1223, 4, 273, 'Guardian Details', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1224, 4, 27, 'Guardian Name', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1225, 4, 163, 'Guardian Occupation', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1226, 4, 29, 'Guardian Phone', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1227, 4, 28, 'Guardian Relation', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1228, 4, 352, 'Holiday', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1229, 4, 220, 'Hostel', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1230, 4, 587, 'Hostel - Rooms', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1231, 4, 399, 'Hostel List', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1232, 4, 221, 'Hostel Name', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1233, 4, 457, 'Hostel Room List', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1234, 4, 481, 'Hostel Rooms', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1235, 4, 169, 'Id', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1236, 4, 309, 'Identification', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1237, 4, 493, 'If Guardian Address is Current Address', NULL, 'no', '2017-04-10 13:50:50', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1238, 4, 546, 'If Guardian Is', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1239, 4, 446, 'If Permanent Address is Current Address', NULL, 'no', '2017-04-10 13:50:57', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1240, 4, 25, 'IFSC Code', NULL, 'no', '2017-04-10 13:51:18', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1241, 4, 32, 'Import Excel', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1242, 4, 291, 'Import Student', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1243, 4, 197, 'Intake', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1244, 4, 86, 'Invoice Number', NULL, 'no', '2017-05-20 07:41:26', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1245, 4, 188, 'ISBN', NULL, 'no', '2017-04-10 13:51:32', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1246, 4, 165, 'Language', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1247, 4, 63, 'Language List', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1248, 4, 529, 'Language RTL Text Mode', NULL, 'no', '2017-04-10 13:51:53', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1249, 4, 578, 'Languages', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1250, 4, 8, 'Last Name', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1251, 4, 619, 'Late', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1252, 4, 618, 'Late With Excuse', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1253, 4, 234, 'Leave', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1254, 4, 214, 'Library', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1255, 4, 585, 'Library - Books', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1256, 4, 479, 'Library Book', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1257, 4, 526, 'Library Books', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1258, 4, 229, 'List', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1259, 4, 485, 'Local Identification Number', NULL, 'no', '2017-05-20 07:41:34', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1260, 4, 436, 'Login Details', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1261, 4, 590, 'Login Url', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1262, 4, 514, 'Logout', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1263, 4, 601, 'Male', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1264, 4, 70, 'Manage', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1265, 4, 353, 'Mark As Holiday', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1266, 4, 459, 'Marks Register', NULL, 'no', '2017-12-09 05:48:46', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1267, 4, 564, 'Marks Grade', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1268, 4, 563, 'Marks Register', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1269, 4, 357, 'Marks Register Prepared', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1270, 4, 265, 'Message', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1271, 4, 256, 'Message To', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1272, 4, 270, 'Miscellaneous Details', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1273, 4, 12, 'Mobile Number', NULL, 'no', '2017-05-20 07:41:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1274, 4, 487, 'Mode', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1275, 4, 489, 'Month', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1276, 4, 432, 'Expenses', NULL, 'no', '2020-06-20 11:48:13', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1277, 4, 431, 'Fees Collection', NULL, 'no', '2020-06-19 00:44:33', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1278, 4, 288, 'Mother', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1279, 4, 160, 'Mother Name', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1280, 4, 162, 'Mother Occupation', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1281, 4, 161, 'Mother Phone', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1282, 4, 386, 'My Children', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1283, 4, 486, 'My Profile', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1284, 4, 153, 'Name', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1285, 4, 484, 'National Identification Number', NULL, 'no', '2017-09-11 09:09:06', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1286, 4, 122, 'New Password', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1287, 4, 442, 'Next Session Status', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1288, 4, 310, 'No', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1289, 4, 354, 'No Attendance Prepared', NULL, 'no', '2017-04-10 13:53:26', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1290, 4, 614, 'No Description', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1291, 4, 475, 'No Exam Prepared', NULL, 'no', '2017-04-10 13:53:35', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1292, 4, 430, 'No Fees Found', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1293, 4, 455, 'Number Of Bed', NULL, 'no', '2017-05-20 03:43:42', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1294, 4, 201, 'Number Of Vehicle', NULL, 'no', '2017-05-20 03:43:54', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1295, 4, 259, 'No Record Found', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1296, 4, 443, 'No Result Prepared', NULL, 'no', '2017-04-10 13:53:47', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1297, 4, 94, 'No Search Record Found', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1298, 4, 317, 'No Transaction Found', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1299, 4, 331, 'No Transport Fees Found', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1300, 4, 527, 'No vehicle allotted to this route', NULL, 'no', '2017-04-10 13:54:28', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1301, 4, 606, 'Not', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1302, 4, 290, 'Not Scheduled', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1303, 4, 150, 'Note', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1304, 4, 253, 'Notice', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1305, 4, 285, 'Notice Board', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1306, 4, 254, 'Notice Date', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1307, 4, 278, 'Notifications', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1308, 4, 300, 'Obtain Marks', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1309, 4, 419, 'Off', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1310, 4, 420, 'On', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1311, 4, 496, 'Other', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1312, 4, 335, 'Other Discount', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1313, 4, 390, 'Other Download List', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1314, 4, 597, 'Other Downloads', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1315, 4, 544, 'Paid', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1316, 4, 324, 'Paid Fees', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1317, 4, 257, 'Parent', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1318, 4, 444, 'Parent Guardian Detail', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1319, 4, 231, 'Pass', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1320, 4, 241, 'Passing Marks', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1321, 4, 167, 'Password', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1322, 4, 313, 'Payment', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1323, 4, 274, 'Payment Id', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1324, 4, 450, 'Payment Id Detail', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1325, 4, 418, 'Paypal Email', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1326, 4, 416, 'Paypal Password', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1327, 4, 414, 'Paypal Setting', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1328, 4, 417, 'Paypal Signature', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1329, 4, 415, 'Paypal Username', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1330, 4, 605, 'PDF', NULL, 'no', '2017-04-10 13:55:16', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1331, 4, 147, 'Percent', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1332, 4, 363, 'Percent From', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1333, 4, 149, 'Percent To', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1334, 4, 362, 'Percent Upto', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1335, 4, 580, 'Percentage', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1336, 4, 18, 'Permanent Address', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1337, 4, 73, 'Phone', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1339, 4, 463, 'Post New Message', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1340, 4, 193, 'Post Date', NULL, 'no', '2017-04-10 13:55:57', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1341, 4, 542, 'Practical', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1342, 4, 543, 'Present', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1343, 4, 267, 'Previous School Details', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1344, 4, 400, 'Print', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1345, 4, 329, 'Print Selected', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1346, 4, 297, 'Profile', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1347, 4, 245, 'Promote', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1348, 4, 440, 'Promote In Session', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1349, 4, 552, 'Promote Students', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1350, 4, 441, 'Promote Students In Next Session', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1351, 4, 286, 'Publish Date', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1352, 4, 255, 'Publish On', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1353, 4, 189, 'Publisher', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1354, 4, 191, 'Qty', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1355, 4, 548, 'Quick Links', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1356, 4, 218, 'Rack Number', NULL, 'no', '2017-05-20 07:42:23', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1357, 4, 104, 'Receipt Number', NULL, 'no', '2017-05-20 07:42:19', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1358, 4, 538, 'Registered Phone Number', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1359, 4, 15, 'Religion', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1360, 4, 82, 'Report', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1361, 4, 525, 'Report Card', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1362, 4, 216, 'Reports', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1363, 4, 85, 'Reset', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1364, 4, 427, 'Restore', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1365, 4, 230, 'Result', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1366, 4, 473, 'Revert', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1367, 4, 6, 'Roll Number', NULL, 'no', '2017-05-20 07:42:27', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1368, 4, 239, 'Room', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1369, 4, 242, 'Room Number', NULL, 'no', '2017-05-20 07:42:33', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1370, 4, 454, 'Room Number / Name', NULL, 'no', '2017-05-20 03:45:35', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1371, 4, 401, 'Room Type', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1372, 4, 403, 'Room Type List', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1373, 4, 503, 'Route', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1374, 4, 394, 'Route List', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1375, 4, 223, 'Route Title', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1376, 4, 569, 'Routes', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1377, 4, 185, 'RTE', NULL, 'no', '2017-04-10 13:57:10', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1378, 4, 66, 'Save', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1379, 4, 298, 'Save Attendance', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1380, 4, 607, 'Scheduled', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1381, 4, 151, 'School Code', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1383, 4, 69, 'School Logo', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1384, 4, 2, 'School Name', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1385, 4, 37, 'Search', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1386, 4, 497, 'Search By Keyword', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1387, 4, 588, 'Search By Name, Roll Number, Enroll Number, National Id, Local Id Etc..', NULL, 'no', '2017-05-20 07:42:47', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1388, 4, 556, 'Search Due Fees', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1389, 4, 559, 'Search Expense', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1390, 4, 555, 'Search Fees Payment', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1391, 4, 591, 'Search Student', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1392, 4, 336, 'Search Transaction', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1393, 4, 10, 'Semester', NULL, 'no', '2020-06-18 22:51:51', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1394, 4, 56, 'Semester List', NULL, 'no', '2020-06-18 22:52:54', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1395, 4, 451, 'Section Name', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1396, 4, 566, 'Semesters', NULL, 'no', '2020-06-18 22:51:52', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1397, 4, 407, 'Select', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1398, 4, 84, 'Select Criteria', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1399, 4, 293, 'Select CSV File', NULL, 'no', '2017-04-10 13:58:35', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1400, 4, 31, 'Select Image', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1401, 4, 68, 'Select Logo', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1402, 4, 266, 'Send', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1403, 4, 572, 'Send Message', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1404, 4, 1, 'Session', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1405, 4, 52, 'Session List', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1406, 4, 576, 'Session Setting', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1407, 4, 410, 'Session Start Month', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1408, 4, 517, 'Show', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1409, 4, 305, 'Sibling', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1411, 4, 152, 'Sign In', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1412, 4, 477, 'Smart School', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1413, 4, 76, 'SMS Configuration', NULL, 'no', '2017-04-10 13:59:11', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1414, 4, 77, 'SMS Gateway URL', NULL, 'no', '2017-05-20 03:47:13', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1415, 4, 476, 'SMS Setting', NULL, 'no', '2017-04-10 13:59:22', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1416, 4, 237, 'Start Time', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1417, 4, 78, 'Status', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1418, 4, 61, 'Student', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1419, 4, 550, 'Student Admission', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1420, 4, 560, 'Student Attendance', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1421, 4, 551, 'Student Categories', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1422, 4, 325, 'Student Detail', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1423, 4, 549, 'Student Details', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1424, 4, 322, 'Student Fees Report', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1425, 4, 207, 'Student Information', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1426, 4, 592, 'Students List', NULL, 'no', '2017-04-10 13:59:55', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1427, 4, 183, 'Student Name', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1428, 4, 573, 'Student Report', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1429, 4, 434, 'Students', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1430, 4, 568, 'Study Material', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1431, 4, 388, 'Study Material List', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1432, 4, 217, 'Subject', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1433, 4, 144, 'Subject Code', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1434, 4, 261, 'Subject List', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1435, 4, 143, 'Subject Name', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1436, 4, 521, 'Subject Type', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1437, 4, 483, 'Subjects', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1438, 4, 359, 'Submit', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1439, 4, 596, 'Syllabus', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1440, 4, 389, 'Syllabus List', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1441, 4, 215, 'System Settings', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1442, 4, 258, 'Teacher', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1443, 4, 260, 'Teacher Detail', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1444, 4, 251, 'Teacher List', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1445, 4, 166, 'Teacher Name', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1446, 4, 187, 'Teacher Photo', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1447, 4, 469, 'Teacher Subject', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1448, 4, 433, 'Teachers', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1449, 4, 541, 'Theory', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1450, 4, 264, 'Title', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1451, 4, 610, 'To', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1452, 4, 90, 'Total', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1453, 4, 182, 'Total Balance', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1454, 4, 323, 'Total Fees', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1455, 4, 301, 'Total Marks', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1456, 4, 180, 'Total Paid Fees', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1457, 4, 332, 'Total Transport Fees', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1458, 4, 609, 'Transaction From', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1459, 4, 574, 'Transaction Report', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1460, 4, 222, 'Transport', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1461, 4, 586, 'Transport - Routes', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1462, 4, 155, 'Transport Fees', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1463, 4, 318, 'Transport Fees Details', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1464, 4, 480, 'Transport Routes', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1465, 4, 536, 'Twilio Account SID', NULL, 'no', '2017-04-10 14:01:04', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1466, 4, 534, 'Twilio SMS Gateway', NULL, 'no', '2017-04-10 14:01:10', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1467, 4, 88, 'Type', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1468, 4, 599, 'Unpaid', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1469, 4, 490, 'Upload', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1470, 4, 378, 'Upload Content', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1471, 4, 205, 'Upload Date', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1472, 4, 268, 'Upload Documents', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1473, 4, 424, 'Upload From Local Directory', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1474, 4, 488, 'URL', NULL, 'no', '2017-04-10 14:01:27', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1475, 4, 478, 'User Login', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1476, 4, 74, 'User Name', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1477, 4, 589, 'User Type', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1478, 4, 539, 'Username', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1479, 4, 506, 'Vehicle', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1480, 4, 507, 'Vehicle List', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1481, 4, 513, 'Vehicle Model', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1482, 4, 512, 'Vehicle Number', NULL, 'no', '2017-05-20 07:42:56', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1483, 4, 502, 'Vehicle Route List', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1484, 4, 504, 'Vehicle Routes', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1485, 4, 570, 'Vehicles', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1486, 4, 474, 'View', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1487, 4, 522, 'View Detail', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1488, 4, 604, 'View Schedule', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1489, 4, 356, 'View Status', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1490, 4, 280, 'Visibility', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1491, 4, 279, 'Visible To All', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1492, 4, 515, 'Year Made', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1493, 4, 545, 'Yes', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1494, 4, 350, 'You Can Edit Record', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (36671, 4, 642, 'Accountant List', NULL, 'no', '2017-05-20 03:33:47', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (36672, 4, 643, 'Accountant Photo', NULL, 'no', '2017-05-20 03:33:56', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (36673, 4, 631, 'Accountants', NULL, 'no', '2017-05-20 03:34:03', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (36674, 4, 641, 'Add Accountant', NULL, 'no', '2017-05-20 03:34:14', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (36675, 4, 633, 'Add Librarian', NULL, 'no', '2017-05-20 03:34:40', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (36677, 4, 649, 'Add Student', NULL, 'no', '2017-05-20 03:35:41', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (36678, 4, 624, 'Book', NULL, 'no', '2017-05-20 03:36:04', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (36679, 4, 629, 'Book Issued', NULL, 'no', '2017-05-20 03:36:13', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (36680, 4, 645, 'Book Number', NULL, 'no', '2017-05-20 03:36:30', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (36681, 4, 650, 'Books Issue Retun', NULL, 'no', '2017-05-20 03:36:49', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (36682, 4, 640, 'Change Username', NULL, 'no', '2017-05-20 03:37:05', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (36683, 4, 639, 'Confirm Username', NULL, 'no', '2017-05-20 03:37:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (36684, 4, 637, 'Current Username', NULL, 'no', '2017-05-20 03:38:06', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (36685, 4, 644, 'Edit Accountant', NULL, 'no', '2017-05-20 03:38:44', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (36686, 4, 636, 'Edit Librarian', NULL, 'no', '2017-05-20 03:39:30', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (36687, 4, 647, 'ISBN Number', NULL, 'no', '2017-05-20 03:40:25', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (36688, 4, 623, 'Issue', NULL, 'no', '2017-05-20 03:40:30', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (36689, 4, 621, 'Issue Book', NULL, 'no', '2017-05-20 03:40:40', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (36690, 4, 648, 'Issue Return', NULL, 'no', '2017-05-20 04:35:21', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (36691, 4, 635, 'Librarian List', NULL, 'no', '2017-05-20 03:41:31', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (36692, 4, 634, 'Librarian Photo', NULL, 'no', '2017-05-20 03:41:38', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (36696, 4, 626, 'Library Card Number', NULL, 'no', '2017-05-20 03:42:23', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (36697, 4, 628, 'Member Id', NULL, 'no', '2017-05-20 03:42:53', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (36698, 4, 622, 'Member Type', NULL, 'no', '2017-05-20 03:43:01', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (36699, 4, 625, 'Members', NULL, 'no', '2017-05-20 03:43:06', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (36700, 4, 638, 'New Username', NULL, 'no', '2017-05-20 03:43:23', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (36701, 4, 627, 'Return Date', NULL, 'no', '2017-05-20 03:45:06', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (36702, 4, 630, 'Timezone', NULL, 'no', '2017-05-20 03:47:48', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (36703, 4, 646, 'Users', NULL, 'no', '2017-05-20 03:48:21', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (73979, 4, 653, 'Surrender Membership', NULL, 'no', '2017-05-29 17:56:46', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (73980, 4, 651, 'Members List', NULL, 'no', '2017-05-29 17:57:05', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (73981, 4, 651, 'Members List', NULL, 'no', '2017-05-29 17:57:18', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (73982, 4, 652, 'Issue Date', NULL, 'no', '2017-05-29 17:57:35', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (73983, 4, 686, 'Add Admin User', NULL, 'no', '2017-08-04 18:21:48', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (73984, 4, 663, 'Add Fees Discount', NULL, 'no', '2017-08-04 18:22:03', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (73985, 4, 663, 'Add Fees Discount', NULL, 'no', '2017-08-04 18:22:05', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (73986, 4, 655, 'Add Fees Group', NULL, 'no', '2017-08-04 18:22:13', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (73987, 4, 676, 'Add Member', NULL, 'no', '2017-08-04 18:22:26', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (73988, 4, 688, 'Admin Email', NULL, 'no', '2017-08-04 18:22:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (73989, 4, 687, 'Admin Name', NULL, 'no', '2017-08-04 18:22:47', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (73990, 4, 689, 'Admin Password', NULL, 'no', '2017-08-04 18:22:57', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (73991, 4, 685, 'Admin Users', NULL, 'no', '2017-08-04 18:23:04', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (73992, 4, 664, 'All', NULL, 'no', '2017-08-04 18:23:10', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (73993, 4, 667, 'Applied', NULL, 'no', '2017-08-04 18:23:20', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (73994, 4, 674, 'Apply Discount', NULL, 'no', '2017-08-04 18:23:30', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (73995, 4, 670, 'Assign / View', NULL, 'no', '2017-08-04 18:23:46', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (73996, 4, 665, 'Assign Fees Discount', NULL, 'no', '2017-08-04 18:23:56', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (73997, 4, 691, 'Assign Fees Group', NULL, 'no', '2017-08-04 18:24:20', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (73998, 4, 684, 'Assigned', NULL, 'no', '2017-08-04 18:24:30', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (73999, 4, 669, 'Confirmation', NULL, 'no', '2017-08-04 18:24:42', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74000, 4, 669, 'Confirmation', NULL, 'no', '2017-08-04 18:24:53', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74001, 4, 661, 'Discount Code', NULL, 'no', '2017-08-04 18:25:04', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74002, 4, 675, 'Discount of', NULL, 'no', '2017-08-04 18:25:19', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74003, 4, 657, 'Due Date', NULL, 'no', '2017-08-04 18:25:27', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74004, 4, 660, 'Edit Fees Discount', NULL, 'no', '2017-08-04 18:25:40', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74005, 4, 671, 'Edit Fees Group', NULL, 'no', '2017-08-04 18:25:48', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74006, 4, 673, 'Edit Fees Master', NULL, 'no', '2017-08-04 18:25:57', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74007, 4, 672, 'Edit Fees Type', NULL, 'no', '2017-08-04 18:26:09', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74008, 4, 678, 'Email Engine', NULL, 'no', '2017-08-04 18:26:20', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74009, 4, 677, 'Email Setting', NULL, 'no', '2017-08-04 18:26:32', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74010, 4, 658, 'Fees Code', NULL, 'no', '2017-08-04 18:26:42', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74011, 4, 659, 'Fees Discount', NULL, 'no', '2017-08-04 18:26:58', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74012, 4, 662, 'Fees Discount List', NULL, 'no', '2017-08-04 18:27:09', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74013, 4, 654, 'Fees Group', NULL, 'no', '2017-08-04 18:27:17', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74014, 4, 656, 'Fees Group List', NULL, 'no', '2017-08-04 18:27:25', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74015, 4, 690, 'Forgot Password', NULL, 'no', '2017-08-04 18:27:36', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74016, 4, 666, 'Partial', NULL, 'no', '2017-08-04 18:27:49', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74017, 4, 680, 'SMTP Password', NULL, 'no', '2017-08-04 18:28:04', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74018, 4, 682, 'SMTP Port', NULL, 'no', '2017-08-04 18:28:12', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74019, 4, 683, 'SMTP Security', NULL, 'no', '2017-08-04 18:28:27', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74020, 4, 681, 'SMTP Server', NULL, 'no', '2017-08-04 18:28:35', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74021, 4, 679, 'SMTP Username', NULL, 'no', '2017-08-04 18:28:43', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74022, 4, 668, 'Student Fees', NULL, 'no', '2017-08-04 18:28:51', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74023, 4, 692, 'Accountant', NULL, 'no', '2017-10-31 14:10:23', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74024, 4, 693, 'Add Income', NULL, 'no', '2017-10-31 14:10:40', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74025, 4, 732, 'Add Item Supplier', NULL, 'no', '2017-12-14 16:45:30', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74026, 4, 731, 'Add Item Stock', NULL, 'no', '2017-12-14 16:45:20', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74027, 4, 733, 'Available Quantity', NULL, 'no', '2017-12-14 16:49:22', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74028, 4, 694, 'Add Item Store', NULL, 'no', '2017-10-31 14:44:42', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74029, 4, 734, 'Contact Person Phone', NULL, 'no', '2017-10-31 14:44:52', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74030, 4, 695, 'Admin', NULL, 'no', '2017-10-31 14:45:16', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74031, 4, 696, 'Attach Docement', NULL, 'no', '2017-10-31 14:45:45', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74032, 4, 696, 'Attach Document', NULL, 'no', '2017-10-31 14:45:52', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74033, 4, 696, 'Attach Document', NULL, 'no', '2017-10-31 14:46:10', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74034, 4, 750, 'Current Theme', NULL, 'no', '2017-12-14 16:52:34', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74035, 4, 735, 'Edit Item Supplier', NULL, 'no', '2017-12-14 16:53:52', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74036, 4, 748, 'Send Through', NULL, 'no', '2017-12-14 17:33:14', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74037, 4, 698, 'Contact Person Email', NULL, 'no', '2017-10-31 14:47:12', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74038, 4, 699, 'Contact Person Name', NULL, 'no', '2017-10-31 14:47:26', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74039, 4, 736, 'Edit Item', NULL, 'no', '2017-12-14 16:53:35', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74040, 4, 751, 'Guardian Emal', NULL, 'no', '2017-12-14 16:59:33', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74041, 4, 700, 'Edit Income Head', NULL, 'no', '2017-10-31 14:48:04', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74042, 4, 738, 'Expense Details', NULL, 'no', '2017-12-14 16:57:52', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74043, 4, 702, 'Edit Item Category', NULL, 'no', '2017-10-31 14:48:20', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74044, 4, 701, 'Edit Item Store', NULL, 'no', '2017-10-31 14:48:29', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74045, 4, 737, 'Edit Income', NULL, 'no', '2017-12-14 16:54:17', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74046, 4, 703, 'Group', NULL, 'no', '2017-12-14 16:59:19', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74047, 4, 704, 'Guardians', NULL, 'no', '2017-12-14 16:59:53', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74048, 4, 752, 'Hash Key', NULL, 'no', '2017-12-14 17:00:04', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74049, 4, 705, 'Income Head List', NULL, 'no', '2017-12-14 17:01:36', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74050, 4, 753, 'Income List', NULL, 'no', '2017-12-14 17:02:19', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74051, 4, 708, 'Individual', NULL, 'no', '2017-12-14 17:03:41', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74052, 4, 740, 'Income Id', NULL, 'no', '2017-12-14 17:02:05', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74053, 4, 707, 'Income', NULL, 'no', '2017-12-14 17:01:27', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74054, 4, 706, 'Income Head', NULL, 'no', '2017-12-14 17:01:21', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74055, 4, 741, 'Income Result', NULL, 'no', '2017-12-14 17:02:50', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74056, 4, 754, 'Income Result', NULL, 'no', '2017-12-14 17:03:03', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74057, 4, 742, 'Issued By', NULL, 'no', '2017-12-14 17:15:24', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74058, 4, 755, 'Income Search', NULL, 'no', '2017-12-14 17:03:30', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74059, 4, 756, 'MSG91', NULL, 'no', '2017-12-14 17:25:55', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74060, 4, 709, 'Inventory', NULL, 'no', '2017-12-14 17:49:15', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74061, 4, 710, 'Issue By', NULL, 'no', '2017-12-14 17:04:36', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74062, 4, 765, 'Payment Methods', NULL, 'no', '2017-12-14 17:28:01', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74063, 4, 711, 'Issue To', NULL, 'no', '2017-12-14 17:04:55', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74064, 4, 713, 'Item Store', NULL, 'no', '2017-12-14 17:20:06', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74065, 4, 712, 'Issue Item', NULL, 'no', '2017-12-14 17:04:47', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74066, 4, 743, 'Item Category List', NULL, 'no', '2017-12-14 17:19:16', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74067, 4, 716, 'Item Stock List', NULL, 'no', '2017-12-14 17:19:00', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74068, 4, 715, 'Item', NULL, 'no', '2017-12-14 17:15:48', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74069, 4, 744, 'Item List', NULL, 'no', '2017-12-14 17:19:49', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74070, 4, 745, 'Item Store List', NULL, 'no', '2017-12-14 17:20:24', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74071, 4, 717, 'Item Stock Code', NULL, 'no', '2017-12-14 17:20:13', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74072, 4, 714, 'Item Category', NULL, 'no', '2017-12-14 17:19:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74073, 4, 718, 'Item Store Name', NULL, 'no', '2017-12-14 17:20:30', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74074, 4, 746, 'Item Supplier', NULL, 'no', '2017-12-14 17:20:41', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74075, 4, 719, 'Item Supplier List', NULL, 'no', '2017-12-14 17:21:00', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74076, 4, 747, 'Contact Person', NULL, 'no', '2017-12-14 16:50:53', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74077, 4, 720, 'Librarian', NULL, 'no', '2017-12-14 17:21:17', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74078, 4, 721, 'Quantity', NULL, 'no', '2017-12-14 17:29:46', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74079, 4, 632, 'Librarians', NULL, 'no', '2017-10-31 14:55:12', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74080, 4, 757, 'Notification Setting', NULL, 'no', '2017-12-14 17:27:15', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74081, 4, 757, 'Notification Setting', NULL, 'no', '2017-12-14 17:27:29', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74082, 4, 723, 'Return', NULL, 'no', '2017-12-14 17:31:11', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74083, 4, 724, 'Returned', NULL, 'no', '2017-12-14 17:31:23', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74084, 4, 725, 'Search Income', NULL, 'no', '2017-12-14 17:32:24', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74085, 4, 764, 'Email / SMS Log', NULL, 'no', '2017-12-14 16:56:52', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74086, 4, 763, 'Email / SMS', NULL, 'no', '2017-12-14 16:56:19', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74087, 4, 727, 'Store', NULL, 'no', '2017-12-14 17:34:11', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74088, 4, 749, 'Auth Key', NULL, 'no', '2017-12-14 16:48:27', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74089, 4, 759, 'SMS Country', NULL, 'no', '2017-12-14 17:33:50', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74090, 4, 728, 'Supplier', NULL, 'no', '2017-12-14 17:35:11', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74091, 4, 760, 'Test Local', NULL, 'no', '2017-12-14 17:35:44', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74092, 4, 730, 'Add Item', NULL, 'no', '2017-12-14 16:44:19', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74093, 4, 761, 'User Log', NULL, 'no', '2017-12-14 17:36:49', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74094, 4, 761, 'User Log', NULL, 'no', '2017-12-14 17:37:02', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74095, 4, 767, 'Stripe API Secret Key', NULL, 'no', '2017-12-14 17:34:28', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74096, 4, 762, 'Send Email / SMS', NULL, 'no', '2017-12-14 17:33:03', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74097, 4, 697, 'Confirm Return', NULL, 'no', '2017-10-31 15:01:22', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74098, 4, 739, 'Income Details', NULL, 'no', '2017-12-14 17:01:47', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74099, 4, 766, 'All Users', NULL, 'no', '2017-12-14 16:47:37', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74100, 4, 758, 'Sender ID', NULL, 'no', '2017-12-14 17:33:25', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74101, 4, 722, 'Reset Password', NULL, 'no', '2017-12-14 17:30:10', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74102, 4, 726, 'SMS', NULL, 'no', '2017-12-14 17:33:41', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74103, 4, 729, 'Add Item Category', NULL, 'no', '2017-12-14 16:44:42', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74104, 4, 768, 'Stripe Publishable Key', NULL, 'no', '2017-12-14 17:34:44', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74105, 4, 769, 'PayU Money Key', NULL, 'no', '2017-12-14 17:28:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74106, 4, 776, 'Absent Student', NULL, 'no', '2017-12-14 16:43:20', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74107, 4, 782, 'Click To Return', NULL, 'no', '2017-12-14 16:50:36', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74108, 4, 774, 'Exam Result', NULL, 'no', '2017-12-14 16:57:34', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74109, 4, 775, 'Fees Submission', NULL, 'no', '2017-12-14 16:58:38', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74110, 4, 779, 'IP Address', NULL, 'no', '2017-12-14 17:03:51', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74111, 4, 779, 'IP Address', NULL, 'no', '2017-12-14 17:04:16', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74112, 4, 777, 'Login Credential', NULL, 'no', '2017-12-14 17:21:47', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74113, 4, 780, 'Login Time', NULL, 'no', '2017-12-14 17:21:56', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74114, 4, 771, 'CCAvenue Merchant ID', NULL, 'no', '2017-12-14 17:54:55', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74115, 4, 770, 'PayU Money Salt', NULL, 'no', '2017-12-14 17:29:10', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74116, 4, 778, 'Role', NULL, 'no', '2017-12-14 17:31:40', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74117, 4, 773, 'Select Payment Gateway', NULL, 'no', '2017-12-14 17:32:49', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74118, 4, 781, 'User Agent', NULL, 'no', '2017-12-14 17:36:42', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74119, 4, 772, 'CCAvenue Working Key', NULL, 'no', '2017-12-14 17:55:13', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (74120, 4, 783, 'Part', NULL, 'no', '2020-06-18 23:14:28', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: languages
#

DROP TABLE IF EXISTS `languages`;

CREATE TABLE `languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (1, 'Azerbaijan', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (2, 'Albanian', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (3, 'Amharic', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (4, 'English', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (5, 'Arabic', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (7, 'Afrikaans', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (8, 'Basque', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (11, 'Bengali', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (13, 'Bosnian', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (14, 'Welsh', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (15, 'Hungarian', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (16, 'Vietnamese', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (17, 'Haitian (Creole)', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (18, 'Galician', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (19, 'Dutch', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (21, 'Greek', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (22, 'Georgian', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (23, 'Gujarati', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (24, 'Danish', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (25, 'Hebrew', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (26, 'Yiddish', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (27, 'Indonesian', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (28, 'Irish', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (29, 'Italian', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (30, 'Icelandic', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (31, 'Spanish', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (33, 'Kannada', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (34, 'Catalan', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (36, 'Chinese', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (37, 'Korean', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (38, 'Xhosa', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (39, 'Latin', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (40, 'Latvian', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (41, 'Lithuanian', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (43, 'Malagasy', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (44, 'Malay', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (45, 'Malayalam', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (46, 'Maltese', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (47, 'Macedonian', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (48, 'Maori', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (49, 'Marathi', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (51, 'Mongolian', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (52, 'German', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (53, 'Nepali', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (54, 'Norwegian', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (55, 'Punjabi', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (57, 'Persian', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (59, 'Portuguese', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (60, 'Romanian', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (61, 'Russian', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (62, 'Cebuano', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (64, 'Sinhala', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (65, 'Slovakian', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (66, 'Slovenian', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (67, 'Swahili', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (68, 'Sundanese', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (70, 'Thai', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (71, 'Tagalog', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (72, 'Tamil', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (74, 'Telugu', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (75, 'Turkish', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (77, 'Uzbek', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (79, 'Urdu', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (80, 'Finnish', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (81, 'French', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (82, 'Hindi', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (84, 'Czech', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (85, 'Swedish', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (86, 'Scottish', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (87, 'Estonian', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (88, 'Esperanto', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (89, 'Javanese', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');
INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (90, 'Japanese', 'no', 'no', '2017-04-06 15:38:33', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: libarary_members
#

DROP TABLE IF EXISTS `libarary_members`;

CREATE TABLE `libarary_members` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `library_card_no` varchar(50) DEFAULT NULL,
  `member_type` varchar(50) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: librarians
#

DROP TABLE IF EXISTS `librarians`;

CREATE TABLE `librarians` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
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
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `librarians` (`id`, `name`, `email`, `password`, `address`, `dob`, `designation`, `sex`, `phone`, `image`, `is_active`, `created_at`) VALUES (2, 'saleem', 'saleemakhtar@smil.edu.pk', NULL, '', '1993-01-01', NULL, 'Male', '03033500261', 'uploads/student_images/no_image.png', 'no', '2020-06-27 14:48:56');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: migrations
#

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `migrations` (`version`) VALUES ('124');


#
# TABLE STRUCTURE FOR: notification_setting
#

DROP TABLE IF EXISTS `notification_setting`;

CREATE TABLE `notification_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) DEFAULT NULL,
  `is_mail` varchar(10) DEFAULT '0',
  `is_sms` varchar(10) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

INSERT INTO `notification_setting` (`id`, `type`, `is_mail`, `is_sms`, `created_at`) VALUES (5, 'student_admission', '1', '1', '2019-03-08 00:40:58');
INSERT INTO `notification_setting` (`id`, `type`, `is_mail`, `is_sms`, `created_at`) VALUES (6, 'exam_result', '1', '1', '2019-03-08 00:40:58');
INSERT INTO `notification_setting` (`id`, `type`, `is_mail`, `is_sms`, `created_at`) VALUES (7, 'fee_submission', '1', '1', '2019-03-08 00:40:58');
INSERT INTO `notification_setting` (`id`, `type`, `is_mail`, `is_sms`, `created_at`) VALUES (8, 'absent_attendence', '1', '1', '2019-03-08 00:40:58');
INSERT INTO `notification_setting` (`id`, `type`, `is_mail`, `is_sms`, `created_at`) VALUES (9, 'login_credential', '1', '1', '2019-03-08 00:40:58');


#
# TABLE STRUCTURE FOR: payment_settings
#

DROP TABLE IF EXISTS `payment_settings`;

CREATE TABLE `payment_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: read_notification
#

DROP TABLE IF EXISTS `read_notification`;

CREATE TABLE `read_notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `parent_id` int(10) NOT NULL,
  `notification_id` int(11) DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: room_types
#

DROP TABLE IF EXISTS `room_types`;

CREATE TABLE `room_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `room_type` varchar(200) DEFAULT NULL,
  `description` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: sch_settings
#

DROP TABLE IF EXISTS `sch_settings`;

CREATE TABLE `sch_settings` (
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
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `lang_id` (`lang_id`),
  KEY `session_id` (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `sch_settings` (`id`, `name`, `email`, `phone`, `address`, `lang_id`, `dise_code`, `date_format`, `currency`, `currency_symbol`, `is_rtl`, `timezone`, `session_id`, `start_month`, `image`, `theme`, `is_active`, `created_at`, `updated_at`) VALUES (1, 'SINDH MEHRAN INSTITUTE OF LAW JAMSHORO', 'smiljamshoro@gmail.com', '0222115786------03161329134', 'Bungalow # A97 Sindh University Employees Co-oprative Housing Society Jamshoro Sindh.', 4, 'Jamshoro Branch', 'd/m/Y', 'PKR', 'Rs:', 'disabled', 'Asia/Karachi', 14, '1', '1.jpeg', 'blue.jpg', 'no', '2020-07-07 17:35:56', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: sections
#

DROP TABLE IF EXISTS `sections`;

CREATE TABLE `sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `sections` (`id`, `section`, `is_active`, `created_at`, `updated_at`) VALUES (11, '1st Semester', 'no', '2020-06-27 13:50:25', '0000-00-00 00:00:00');
INSERT INTO `sections` (`id`, `section`, `is_active`, `created_at`, `updated_at`) VALUES (12, '2nd Semester', 'no', '2020-06-27 13:50:32', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: semesters
#

DROP TABLE IF EXISTS `semesters`;

CREATE TABLE `semesters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO `semesters` (`id`, `name`, `is_active`, `created_at`, `updated_at`) VALUES (3, 'Semester one', 'no', '2020-06-15 22:10:36', '0000-00-00 00:00:00');
INSERT INTO `semesters` (`id`, `name`, `is_active`, `created_at`, `updated_at`) VALUES (4, 'Semester Two', 'no', '2020-06-15 22:10:44', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: send_notification
#

DROP TABLE IF EXISTS `send_notification`;

CREATE TABLE `send_notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `send_notification` (`id`, `title`, `publish_date`, `date`, `message`, `visible_student`, `visible_teacher`, `visible_parent`, `created_by`, `created_id`, `is_active`, `created_at`, `updated_at`) VALUES (1, 'FEE DUES', '2020-06-29', '2020-06-29', '<p>PAY YOUR FEE DUES AS SOON AS POSSIBLE</p>', 'Yes', 'Yes', 'Yes', 'admin', 1, 'no', '2020-06-30 22:00:11', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: sessions
#

DROP TABLE IF EXISTS `sessions`;

CREATE TABLE `sessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `sessions` (`id`, `session`, `is_active`, `created_at`, `updated_at`) VALUES (11, '2017-18', 'no', '2019-03-08 00:40:28', '0000-00-00 00:00:00');
INSERT INTO `sessions` (`id`, `session`, `is_active`, `created_at`, `updated_at`) VALUES (13, '2018-19', 'no', '2016-08-25 05:56:44', '0000-00-00 00:00:00');
INSERT INTO `sessions` (`id`, `session`, `is_active`, `created_at`, `updated_at`) VALUES (14, '2019-20', 'no', '2016-08-25 05:56:55', '0000-00-00 00:00:00');
INSERT INTO `sessions` (`id`, `session`, `is_active`, `created_at`, `updated_at`) VALUES (15, '2020-21', 'no', '2016-10-01 15:58:08', '0000-00-00 00:00:00');
INSERT INTO `sessions` (`id`, `session`, `is_active`, `created_at`, `updated_at`) VALUES (16, '2021-22', 'no', '2016-10-01 15:58:20', '0000-00-00 00:00:00');
INSERT INTO `sessions` (`id`, `session`, `is_active`, `created_at`, `updated_at`) VALUES (18, '2022-23', 'no', '2016-10-01 15:59:02', '0000-00-00 00:00:00');
INSERT INTO `sessions` (`id`, `session`, `is_active`, `created_at`, `updated_at`) VALUES (19, '2023-24', 'no', '2016-10-01 15:59:10', '0000-00-00 00:00:00');
INSERT INTO `sessions` (`id`, `session`, `is_active`, `created_at`, `updated_at`) VALUES (20, '2024-25', 'no', '2016-10-01 15:59:18', '0000-00-00 00:00:00');
INSERT INTO `sessions` (`id`, `session`, `is_active`, `created_at`, `updated_at`) VALUES (21, '2025-26', 'no', '2016-10-01 16:00:10', '0000-00-00 00:00:00');
INSERT INTO `sessions` (`id`, `session`, `is_active`, `created_at`, `updated_at`) VALUES (22, '2026-27', 'no', '2016-10-01 16:00:18', '0000-00-00 00:00:00');
INSERT INTO `sessions` (`id`, `session`, `is_active`, `created_at`, `updated_at`) VALUES (23, '2027-28', 'no', '2016-10-01 16:00:24', '0000-00-00 00:00:00');
INSERT INTO `sessions` (`id`, `session`, `is_active`, `created_at`, `updated_at`) VALUES (24, '2028-29', 'no', '2016-10-01 16:00:30', '0000-00-00 00:00:00');
INSERT INTO `sessions` (`id`, `session`, `is_active`, `created_at`, `updated_at`) VALUES (25, '2029-30', 'no', '2020-07-08 00:15:39', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: sms_config
#

DROP TABLE IF EXISTS `sms_config`;

CREATE TABLE `sms_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `sms_config` (`id`, `type`, `name`, `api_id`, `authkey`, `senderid`, `contact`, `username`, `url`, `password`, `is_active`, `created_at`, `updated_at`) VALUES (1, 'msg_nineone', '', '', '', '', NULL, NULL, NULL, NULL, 'disabled', '2017-12-15 21:08:36', '0000-00-00 00:00:00');
INSERT INTO `sms_config` (`id`, `type`, `name`, `api_id`, `authkey`, `senderid`, `contact`, `username`, `url`, `password`, `is_active`, `created_at`, `updated_at`) VALUES (2, 'clickatell', '', '', '', '', NULL, '', NULL, '', 'disabled', '2017-12-15 21:08:36', '0000-00-00 00:00:00');
INSERT INTO `sms_config` (`id`, `type`, `name`, `api_id`, `authkey`, `senderid`, `contact`, `username`, `url`, `password`, `is_active`, `created_at`, `updated_at`) VALUES (3, 'smscountry', '', '', '', '', NULL, '', NULL, '', 'disabled', '2017-12-15 21:08:36', '0000-00-00 00:00:00');
INSERT INTO `sms_config` (`id`, `type`, `name`, `api_id`, `authkey`, `senderid`, `contact`, `username`, `url`, `password`, `is_active`, `created_at`, `updated_at`) VALUES (4, 'text_local', '', '', '', '', NULL, '', NULL, '', 'disabled', '2017-12-15 21:08:36', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: student_attendences
#

DROP TABLE IF EXISTS `student_attendences`;

CREATE TABLE `student_attendences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_session_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `attendence_type_id` int(11) DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `student_session_id` (`student_session_id`),
  KEY `attendence_type_id` (`attendence_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: student_doc
#

DROP TABLE IF EXISTS `student_doc`;

CREATE TABLE `student_doc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `doc` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: student_fees
#

DROP TABLE IF EXISTS `student_fees`;

CREATE TABLE `student_fees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: student_fees_deposite
#

DROP TABLE IF EXISTS `student_fees_deposite`;

CREATE TABLE `student_fees_deposite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_fees_master_id` int(11) DEFAULT NULL,
  `fee_groups_feetype_id` int(11) DEFAULT NULL,
  `amount_detail` text,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `student_fees_master_id` (`student_fees_master_id`),
  KEY `fee_groups_feetype_id` (`fee_groups_feetype_id`),
  CONSTRAINT `student_fees_deposite_ibfk_1` FOREIGN KEY (`student_fees_master_id`) REFERENCES `student_fees_master` (`id`) ON DELETE CASCADE,
  CONSTRAINT `student_fees_deposite_ibfk_2` FOREIGN KEY (`fee_groups_feetype_id`) REFERENCES `fee_groups_feetype` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=222 DEFAULT CHARSET=utf8;

INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (16, 24, 6, '{\"1\":{\"amount\":\"35000.00\",\"date\":\"2018-01-08\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#01 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-06-27 14:58:09');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (17, 25, 6, '{\"1\":{\"amount\":\"6000\",\"date\":\"2018-01-08\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"Rs#o2 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"6000\",\"date\":\"2018-02-08\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"Rs#80 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":2},\"3\":{\"amount\":\"6000\",\"date\":\"2018-03-07\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\" Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":3},\"4\":{\"amount\":\"6000\",\"date\":\"2018-04-24\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"Rs#101 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":4},\"5\":{\"amount\":\"6000\",\"date\":\"2018-06-06\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"Rs#146 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":5},\"6\":{\"amount\":\"5000\",\"date\":\"2018-07-11\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"Rs#162 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":6}}', 'no', '2020-06-27 15:07:10');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (18, 26, 6, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-01-01\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"Rs#03 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-06-27 15:10:39');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (19, 29, 6, '{\"1\":{\"amount\":\"20000\",\"date\":\"2018-01-09\",\"amount_discount\":\"15000\",\"amount_fine\":\"0\",\"description\":\"Discount:by Raja Sajjasd Director Admin Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-06-29 12:22:16');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (20, 30, 6, '{\"1\":{\"amount\":\"18000\",\"date\":\"2018-01-09\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#08 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"17000\",\"date\":\"2019-04-05\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#135 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":2}}', 'no', '2020-06-29 12:24:20');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (21, 31, 6, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-01-09\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#09 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-06-29 12:25:45');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (22, 32, 6, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-01-01\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#10 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-06-29 12:26:55');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (23, 33, 6, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-01-01\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#11 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-06-29 12:31:52');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (24, 34, 6, '{\"1\":{\"amount\":\"15000\",\"date\":\"2018-01-01\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#12 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"20000\",\"date\":\"2018-04-30\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#147 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":2}}', 'no', '2020-06-29 12:36:18');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (25, 35, 6, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-01-10\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#13 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-06-29 12:39:47');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (26, 36, 6, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-03-14\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#15 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-06-29 12:41:05');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (27, 37, 6, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-01-10\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#15 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-06-29 12:44:15');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (28, 38, 6, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-01-18\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R##16 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-06-29 12:45:54');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (29, 39, 6, '{\"1\":{\"amount\":\"20000\",\"date\":\"2018-01-10\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#17 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"15000\",\"date\":\"2018-03-05\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#97 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":2}}', 'no', '2020-06-29 12:47:42');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (30, 40, 6, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-03-14\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#112 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-06-29 12:48:37');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (31, 41, 6, '{\"1\":{\"amount\":\"20000\",\"date\":\"2018-01-10\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#19 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"15000\",\"date\":\"2018-05-09\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#152 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":2}}', 'no', '2020-06-29 12:50:02');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (32, 28, 6, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-01-01\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#5 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-06-29 13:57:01');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (33, 27, 6, '{\"1\":{\"amount\":\"5000\",\"date\":\"2018-01-08\",\"amount_discount\":\"30000\",\"amount_fine\":\"0\",\"description\":\"Scholarship  Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-02 14:19:28');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (34, 43, 6, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-01-01\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#22 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-02 14:21:51');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (36, 42, 6, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-01-11\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#21 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-02 14:23:38');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (37, 44, 6, '{\"1\":{\"amount\":\"20000\",\"date\":\"2018-01-11\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#23 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"15000\",\"date\":\"2018-03-05\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#96 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":2}}', 'no', '2020-07-02 14:26:33');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (38, 45, 6, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-03-29\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#129 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-02 14:27:39');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (39, 46, 6, '{\"1\":{\"amount\":\"5000\",\"date\":\"2018-01-11\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#25 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"10000\",\"date\":\"2018-02-20\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#85 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":2},\"3\":{\"amount\":\"10000\",\"date\":\"2018-03-06\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#99 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":3},\"4\":{\"amount\":\"10000\",\"date\":\"2018-06-13\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#166 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":4}}', 'no', '2020-07-02 14:29:53');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (40, 48, 6, '{\"1\":{\"amount\":\"20000\",\"date\":\"2018-03-14\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#114 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"15000\",\"date\":\"2018-04-24\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#143 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":2}}', 'no', '2020-07-02 14:31:22');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (41, 47, 6, '{\"1\":{\"amount\":\"17500\",\"date\":\"2018-01-12\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#26 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"17000\",\"date\":\"2018-06-11\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\" Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":2},\"3\":{\"amount\":\"000\",\"date\":\"2018-01-30\",\"amount_discount\":\"500\",\"amount_fine\":\"0\",\"description\":\" Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":3}}', 'no', '2020-07-03 01:04:34');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (42, 49, 6, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-03-13\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#107 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-02 14:31:59');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (43, 50, 6, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-01-13\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#29 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-02 14:33:28');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (44, 51, 6, '{\"1\":{\"amount\":\"6000\",\"date\":\"2018-01-13\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#30 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"6000\",\"date\":\"2018-02-12\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#71 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":2},\"3\":{\"amount\":\"12000\",\"date\":\"2018-04-18\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#140 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":3},\"4\":{\"amount\":\"6000\",\"date\":\"2018-06-01\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#160 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":4},\"5\":{\"amount\":\"5000\",\"date\":\"2018-10-01\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#233 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":5}}', 'no', '2020-07-02 14:39:20');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (45, 52, 6, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-01-13\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#31 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-02 14:40:01');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (46, 53, 6, '{\"1\":{\"amount\":\"20000\",\"date\":\"2018-03-15\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#116 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"15000\",\"date\":\"2018-05-15\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#159 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":2}}', 'no', '2020-07-02 14:40:43');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (47, 54, 6, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-03-15\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#119 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-02 14:41:17');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (48, 55, 6, '{\"1\":{\"amount\":\"15000\",\"date\":\"2018-04-02\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#132 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-02 14:41:50');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (49, 56, 6, '{\"1\":{\"amount\":\"30000\",\"date\":\"2018-01-13\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#35 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"5000\",\"date\":\"2018-06-07\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#163 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":2}}', 'no', '2020-07-02 14:48:07');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (50, 57, 6, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-01-13\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#36 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-02 14:48:50');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (51, 58, 6, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-01-13\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#37 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-02 14:48:58');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (52, 59, 6, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-01-13\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#38 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-02 14:49:22');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (53, 60, 6, '{\"1\":{\"amount\":\"20000\",\"date\":\"2018-01-15\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#39 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"10000\",\"date\":\"2018-06-22\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#167 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":2},\"3\":{\"amount\":\"5000\",\"date\":\"2018-10-01\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#238 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":3}}', 'no', '2020-07-02 17:29:10');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (54, 61, 6, '{\"1\":{\"amount\":\"15000\",\"date\":\"2018-01-16\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#40 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"20000\",\"date\":\"2018-06-13\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#165 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":2}}', 'no', '2020-07-02 14:51:15');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (55, 64, 6, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-01-17\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#42 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-02 14:52:17');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (56, 63, 6, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-01-16\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#41 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-02 14:52:24');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (57, 65, 6, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-01-20\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#43\\n Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-02 14:52:55');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (58, 66, 6, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-01-31\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"44 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-02 14:53:09');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (60, 68, 6, '{\"1\":{\"amount\":\"20000\",\"date\":\"2018-01-22\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#46 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"15000\",\"date\":\"2018-05-12\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#158 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":2}}', 'no', '2020-07-02 15:03:16');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (61, 69, 6, '{\"1\":{\"amount\":\"21000\",\"date\":\"2018-01-26\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#47 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"8000\",\"date\":\"2018-05-10\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#156 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":2},\"3\":{\"amount\":\"6000\",\"date\":\"2018-12-10\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#317 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":3}}', 'no', '2020-07-02 15:00:01');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (62, 70, 6, '{\"1\":{\"amount\":\"30000\",\"date\":\"2018-02-13\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#47 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"5000\",\"date\":\"2018-05-01\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#157 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":2}}', 'no', '2020-07-02 15:00:50');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (63, 71, 6, '{\"2\":{\"amount\":\"5000\",\"date\":\"2018-05-03\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#151 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":2},\"3\":{\"amount\":\"30000\",\"date\":\"2018-03-15\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#120 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":3}}', 'no', '2020-07-02 15:01:44');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (64, 73, 6, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-01-29\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#51 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-02 15:02:22');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (65, 74, 6, '{\"1\":{\"amount\":\"20000\",\"date\":\"2018-02-16\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#82 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"15000\",\"date\":\"2018-04-12\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#141 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":2}}', 'no', '2020-07-02 15:03:43');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (66, 75, 6, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-02-01\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#53 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-02 15:04:18');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (67, 72, 6, '{\"1\":{\"amount\":\"18000\",\"date\":\"2018-01-29\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#50 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"10000\",\"date\":\"2020-05-03\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#149 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":2},\"3\":{\"amount\":\"7000\",\"date\":\"2019-03-23\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#435 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":3}}', 'no', '2020-07-02 15:06:29');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (68, 76, 6, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-02-02\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#54 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-02 15:04:45');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (69, 77, 6, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-02-02\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#55 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-02 15:05:09');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (70, 78, 6, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-02-05\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#56 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-02 15:05:45');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (71, 79, 6, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-02-05\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#57 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-02 15:06:15');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (72, 80, 6, '{\"1\":{\"amount\":\"25000\",\"date\":\"2018-02-06\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#58 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"10000\",\"date\":\"2020-03-21\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#127 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":2}}', 'no', '2020-07-02 15:07:50');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (73, 81, 6, '{\"1\":{\"amount\":\"9000\",\"date\":\"2018-03-27\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#128\\n Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"11000\",\"date\":\"2018-04-02\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#131 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":2},\"3\":{\"amount\":\"10000\",\"date\":\"2018-07-06\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#169 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":3},\"4\":{\"amount\":\"5000\",\"date\":\"2018-12-05\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#309 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":4}}', 'no', '2020-07-02 15:24:49');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (74, 82, 6, '{\"1\":{\"amount\":\"15000\",\"date\":\"2018-03-16\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#121\\n Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"20000\",\"date\":\"2018-03-21\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#126 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":2}}', 'no', '2020-07-02 15:14:22');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (75, 84, 6, '{\"1\":{\"amount\":\"20000\",\"date\":\"2018-02-27\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#62 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"15000\",\"date\":\"2018-04-16\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#139 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":2}}', 'no', '2020-07-02 15:16:54');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (76, 85, 6, '{\"1\":{\"amount\":\"33000\",\"date\":\"2018-02-07\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#63 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"2000\",\"date\":\"2020-06-11\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#164 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":2}}', 'no', '2020-07-02 15:17:38');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (77, 86, 6, '{\"1\":{\"amount\":\"33000\",\"date\":\"2018-02-07\",\"amount_discount\":\"2000\",\"amount_fine\":\"0\",\"description\":\"R#64 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-02 15:18:09');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (78, 87, 6, '{\"1\":{\"amount\":\"10000\",\"date\":\"2018-02-27\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#92 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"6000\",\"date\":\"2018-04-02\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#133 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":2},\"3\":{\"amount\":\"8500\",\"date\":\"2018-07-07\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#170 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":3},\"4\":{\"amount\":\"5000\",\"date\":\"2018-09-29\",\"amount_discount\":\"5500\",\"amount_fine\":\"0\",\"description\":\"R#221 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":4}}', 'no', '2020-07-02 15:24:11');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (79, 88, 6, '{\"1\":{\"amount\":\"25000\",\"date\":\"2018-02-07\",\"amount_discount\":\"10000\",\"amount_fine\":\"0\",\"description\":\"R#66 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-02 15:27:11');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (80, 89, 6, '{\"1\":{\"amount\":\"10000\",\"date\":\"2018-02-08\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#67 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"20000\",\"date\":\"2018-04-13\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#142 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":2},\"3\":{\"amount\":\"5000\",\"date\":\"2018-05-09\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#155 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":3}}', 'no', '2020-07-02 15:28:32');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (82, 90, 6, '{\"1\":{\"amount\":\"17500\",\"date\":\"2020-02-08\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#68 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"17500\",\"date\":\"2018-04-24\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#145 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":2}}', 'no', '2020-07-02 15:32:05');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (83, 91, 6, '{\"1\":{\"amount\":\"20000\",\"date\":\"2018-02-09\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#69 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"15000\",\"date\":\"2018-04-06\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#138 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":2}}', 'no', '2020-07-02 15:33:48');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (84, 92, 6, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-02-12\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#70 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-02 15:34:05');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (85, 93, 6, '{\"1\":{\"amount\":\"25000\",\"date\":\"2018-02-12\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#72\\n Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"10000\",\"date\":\"2018-05-09\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#153 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":2}}', 'no', '2020-07-02 15:34:52');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (86, 94, 6, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-02-12\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#73 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-02 15:35:10');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (87, 95, 6, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-02-14\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#75 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-02 15:35:33');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (88, 96, 6, '{\"1\":{\"amount\":\"20000\",\"date\":\"2018-02-14\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#76 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"15000\",\"date\":\"2018-05-04\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#150 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":2}}', 'no', '2020-07-02 15:36:17');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (89, 97, 6, '{\"1\":{\"amount\":\"20000\",\"date\":\"2018-02-14\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#77 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"15000\",\"date\":\"2018-03-10\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 438 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":2}}', 'no', '2020-07-07 12:44:35');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (90, 98, 6, '{\"1\":{\"amount\":\"10000\",\"date\":\"2018-03-15\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#118 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"8000\",\"date\":\"2018-10-01\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#236 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":2},\"3\":{\"amount\":\"7000\",\"date\":\"2020-01-20\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"C#052\\nRed Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":3},\"4\":{\"amount\":\"10000\",\"date\":\"2020-06-16\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"C#281\\nRed\\nTotal 15000\\n10000 1st semester\\n5000 2nd semester Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":4}}', 'no', '2020-07-07 16:20:27');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (91, 99, 6, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-04-03\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#134 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-02 15:43:44');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (92, 100, 6, '{\"1\":{\"amount\":\"6000\",\"date\":\"2018-02-21\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#86 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"6000\",\"date\":\"2018-04-06\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#137 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":2},\"3\":{\"amount\":\"23000\",\"date\":\"2018-06-11\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#161 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":3}}', 'no', '2020-07-02 15:44:54');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (93, 101, 6, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-05-21\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R# Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-02 15:53:57');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (94, 102, 6, '{\"1\":{\"amount\":\"9000\",\"date\":\"2018-02-16\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#83\\n Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"26000\",\"date\":\"2018-04-24\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#144 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":2}}', 'no', '2020-07-02 15:54:39');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (95, 103, 6, '{\"1\":{\"amount\":\"20000\",\"date\":\"2018-02-23\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#88\\n Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"15000\",\"date\":\"2018-02-28\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R# Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":2}}', 'no', '2020-07-02 15:59:08');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (96, 104, 6, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-02-26\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#89 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-02 16:00:01');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (97, 105, 6, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-02-26\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#90 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-02 16:00:28');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (98, 106, 6, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-02-27\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#91 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-02 16:00:58');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (99, 107, 6, '{\"1\":{\"amount\":\"10000\",\"date\":\"2018-03-02\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#93 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"12000\",\"date\":\"2018-04-06\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#136 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":2},\"3\":{\"amount\":\"13000\",\"date\":\"2018-03-13\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#110 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":3}}', 'no', '2020-07-02 16:02:21');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (100, 108, 6, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-03-02\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#94 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-02 16:02:49');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (101, 109, 6, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-03-05\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#98 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-02 16:17:00');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (102, 110, 6, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-03-03\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#95 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-02 16:17:28');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (103, 112, 6, '{\"1\":{\"amount\":\"6000\",\"date\":\"2018-03-08\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#102 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"14000\",\"date\":\"2018-03-15\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#117 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":2},\"3\":{\"amount\":\"15000\",\"date\":\"2018-05-09\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#154 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":3}}', 'no', '2020-07-02 16:21:05');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (104, 113, 6, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-03-07\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#100 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-02 16:21:52');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (105, 114, 6, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-03-18\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#124 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-02 16:22:14');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (106, 115, 6, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-03-10\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#104 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-02 16:22:45');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (107, 116, 6, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-03-10\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#105 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-02 16:23:06');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (109, 118, 6, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-03-13\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#111 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-02 16:25:05');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (110, 119, 6, '{\"1\":{\"amount\":\"20000\",\"date\":\"2018-03-13\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#108 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"10000\",\"date\":\"2018-07-17\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#175 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":2}}', 'no', '2020-07-02 16:27:27');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (111, 120, 6, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-03-14\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#113 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-02 16:27:56');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (112, 121, 6, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-01-11\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#20 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-02 16:29:07');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (113, 122, 6, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-04-30\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#148 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-02 16:29:47');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (114, 123, 6, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-03-30\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#130 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-02 16:30:22');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (115, 124, 6, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-03-18\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#123 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-02 16:32:27');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (116, 24, 14, '{\"1\":{\"amount\":\"30000\",\"date\":\"2018-10-21\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#257 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"5000\",\"date\":\"2019-02-18\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#412 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":2}}', 'no', '2020-07-03 00:47:24');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (117, 25, 14, '{\"1\":{\"amount\":\"4000\",\"date\":\"2018-08-13\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#181 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"6000\",\"date\":\"2018-09-10\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#208 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":2},\"3\":{\"amount\":\"6000\",\"date\":\"2018-10-15\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#247 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":3},\"4\":{\"amount\":\"6000\",\"date\":\"2018-11-22\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#285 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":4},\"5\":{\"amount\":\"6000\",\"date\":\"2018-12-14\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#322 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":5},\"6\":{\"amount\":\"7000\",\"date\":\"2019-01-28\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#348 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":6}}', 'no', '2020-07-03 00:52:35');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (118, 26, 14, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-08-17\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#187 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-03 00:53:10');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (119, 27, 14, '{\"1\":{\"amount\":\"0000\",\"date\":\"2018-08-15\",\"amount_discount\":\"35000\",\"amount_fine\":\"0\",\"description\":\"Scholarship Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-03 00:53:55');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (120, 28, 14, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-11-06\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#270 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-03 00:54:27');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (121, 29, 14, '{\"1\":{\"amount\":\"25000\",\"date\":\"2018-08-13\",\"amount_discount\":\"10000\",\"amount_fine\":\"0\",\"description\":\"R#200 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-03 00:54:58');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (122, 30, 14, '{\"1\":{\"amount\":\"30000\",\"date\":\"2018-11-29\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#291 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"5000\",\"date\":\"2018-12-18\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#323 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":2}}', 'no', '2020-07-03 00:55:46');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (123, 31, 14, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-08-28\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#188 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-03 00:56:09');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (124, 32, 14, '{\"1\":{\"amount\":\"35000.00\",\"date\":\"2018-09-03\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#202 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-03 00:56:58');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (125, 33, 14, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-09-03\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#201 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-03 00:57:17');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (126, 34, 14, '{\"1\":{\"amount\":\"15000\",\"date\":\"2018-08-13\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#178 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"15000\",\"date\":\"2018-10-17\",\"amount_discount\":\"5000\",\"amount_fine\":\"0\",\"description\":\"R#253 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":2}}', 'no', '2020-07-03 00:57:55');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (127, 35, 14, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-10-22\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#258 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-03 00:58:19');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (128, 37, 14, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-08-13\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#179 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-03 00:58:38');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (129, 36, 14, '{\"1\":{\"amount\":\"30000\",\"date\":\"2018-10-23\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#262 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"5000\",\"date\":\"2018-12-20\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#327 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":2}}', 'no', '2020-07-03 00:59:13');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (130, 38, 14, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-08-13\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#180 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-03 01:00:01');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (131, 39, 14, '{\"1\":{\"amount\":\"15000\",\"date\":\"2018-09-11\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#212 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"20000\",\"date\":\"2018-10-29\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#266 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":2}}', 'no', '2020-07-03 01:00:37');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (132, 41, 14, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-08-08\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#270 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-03 01:00:56');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (133, 42, 14, '{\"1\":{\"amount\":\"25000\",\"date\":\"2018-09-29\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#216 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"10000\",\"date\":\"2018-11-15\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#281 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":2}}', 'no', '2020-07-03 01:01:34');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (134, 43, 14, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-08-15\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#185 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-03 01:01:50');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (135, 40, 14, '{\"1\":{\"amount\":\"20000\",\"date\":\"2018-08-13\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#176 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"15000\",\"date\":\"2018-09-03\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#198 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":2}}', 'no', '2020-07-03 01:02:32');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (136, 46, 14, '{\"1\":{\"amount\":\"25000\",\"date\":\"2018-10-12\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#243 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"10000\",\"date\":\"2018-11-30\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#293 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":2}}', 'no', '2020-07-03 01:03:04');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (137, 47, 14, '{\"1\":{\"amount\":\"20000\",\"date\":\"2018-11-12\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#274 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"15000\",\"date\":\"2018-12-04\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#299 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":2}}', 'no', '2020-07-03 01:05:06');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (138, 48, 14, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-10-26\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#264 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-03 01:05:20');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (139, 49, 14, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-09-29\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#217 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-03 01:05:47');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (140, 50, 14, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-09-07\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#206 (B) Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-03 01:07:15');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (141, 51, 14, '{\"1\":{\"amount\":\"5000\",\"date\":\"2018-10-01\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#233  Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"10000\",\"date\":\"2018-12-03\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#294 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":2},\"3\":{\"amount\":\"10000\",\"date\":\"2019-01-02\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#329 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":3},\"4\":{\"amount\":\"10000\",\"date\":\"2019-02-07\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#369 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":4}}', 'no', '2020-07-03 01:14:55');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (142, 52, 14, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-09-10\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#210 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-03 01:15:40');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (143, 53, 14, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-08-13\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#182 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-03 01:16:05');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (144, 54, 14, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-09-06\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#206 (A) Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-03 01:16:46');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (145, 56, 14, '{\"1\":{\"amount\":\"33000\",\"date\":\"2018-11-14\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#279 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"2000\",\"date\":\"2019-09-24\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#646 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":2}}', 'no', '2020-07-03 01:17:52');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (146, 58, 14, '{\"1\":{\"amount\":\"34500\",\"date\":\"2018-12-07\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#313 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"500\",\"date\":\"2019-01-17\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#335 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":2}}', 'no', '2020-07-03 01:18:58');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (147, 57, 14, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-12-05\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#308 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-03 01:19:24');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (148, 59, 14, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-08-29\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#191 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-03 01:20:12');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (149, 60, 14, '{\"1\":{\"amount\":\"15000\",\"date\":\"2018-12-06\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#312 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"20000\",\"date\":\"2019-02-15\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#379 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":2}}', 'no', '2020-07-03 01:22:11');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (150, 61, 14, '{\"1\":{\"amount\":\"15000\",\"date\":\"2018-10-05\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#240 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"20000\",\"date\":\"2018-12-19\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#325 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":2}}', 'no', '2020-07-03 01:23:01');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (151, 63, 14, '{\"1\":{\"amount\":\"33000\",\"date\":\"2018-11-17\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#283 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"2000\",\"date\":\"2018-12-10\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#316 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":2}}', 'no', '2020-07-03 01:23:58');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (152, 64, 14, '{\"1\":{\"amount\":\"10000\",\"date\":\"2018-08-29\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#194 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"10000\",\"date\":\"2018-10-01\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#232 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":2},\"3\":{\"amount\":\"10000\",\"date\":\"2018-12-04\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#305 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":3},\"4\":{\"amount\":\"5000\",\"date\":\"2019-02-04\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#357 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":4}}', 'no', '2020-07-03 01:25:09');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (154, 66, 14, '{\"1\":{\"amount\":\"20000\",\"date\":\"2018-10-01\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#223 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"15000\",\"date\":\"2018-10-18\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#255 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":2}}', 'no', '2020-07-03 01:27:34');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (155, 68, 14, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-10-16\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#352 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-03 01:29:03');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (156, 70, 14, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-08-13\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#177 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-03 01:31:45');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (157, 71, 14, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-09-04\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#203 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-03 01:32:26');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (158, 72, 14, '{\"1\":{\"amount\":\"15000\",\"date\":\"2018-08-28\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#189 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"10000\",\"date\":\"2018-12-04\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#300 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":2},\"3\":{\"amount\":\"10000\",\"date\":\"2019-02-06\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#364 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":3}}', 'no', '2020-07-03 01:33:30');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (159, 117, 14, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-09-29\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#219 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-07 11:04:53');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (161, 119, 14, '{\"1\":{\"amount\":\"20000\",\"date\":\"2018-09-29\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 218 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"15000\",\"date\":\"2019-08-21\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 468 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":2}}', 'no', '2020-07-07 11:12:52');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (162, 120, 14, '{\"1\":{\"amount\":\"15000\",\"date\":\"2028-05-11\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 269 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"15000\",\"date\":\"2028-12-20\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 328 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":2},\"3\":{\"amount\":\"5000\",\"date\":\"2019-02-21\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 441 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":3}}', 'no', '2020-07-07 11:17:28');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (163, 124, 14, '{\"1\":{\"amount\":\"30000\",\"date\":\"2018-09-29\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 214 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"5000\",\"date\":\"2019-08-21\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 214 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":2}}', 'no', '2020-07-07 11:24:28');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (164, 118, 14, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-08-13\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 183 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-07 11:26:59');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (165, 116, 14, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-09-03\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 199 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-07 11:28:58');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (166, 115, 14, '{\"1\":{\"amount\":\"30000\",\"date\":\"2018-09-03\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 197 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"5000\",\"date\":\"2018-12-10\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 315 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":2}}', 'no', '2020-07-07 11:30:16');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (167, 113, 14, '{\"1\":{\"amount\":\"15000\",\"date\":\"2018-10-01\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 225 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"10000\",\"date\":\"2018-11-15\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 280 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":2},\"3\":{\"amount\":\"10000\",\"date\":\"2018-12-04\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 301 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":3}}', 'no', '2020-07-07 11:33:15');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (168, 114, 14, '{\"1\":{\"amount\":\"10000\",\"date\":\"2018-10-01\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 235 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"25000\",\"date\":\"2018-11-13\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 278 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":2}}', 'no', '2020-07-07 11:34:52');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (169, 112, 14, '{\"1\":{\"amount\":\"24000\",\"date\":\"2018-12-19\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 324 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"10000\",\"date\":\"2019-02-06\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 362 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":2},\"3\":{\"amount\":\"1000\",\"date\":\"2019-02-18\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 400 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":3}}', 'no', '2020-07-07 11:42:09');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (170, 110, 14, '{\"1\":{\"amount\":\"20000\",\"date\":\"2018-10-13\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 246 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"15000\",\"date\":\"2018-12-20\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 326 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":2}}', 'no', '2020-07-07 11:51:48');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (173, 108, 14, '{\"1\":{\"amount\":\"34000\",\"date\":\"2018-12-04\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 307 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"1000\",\"date\":\"2019-02-19\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 417 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":2}}', 'no', '2020-07-07 12:08:18');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (175, 106, 14, '{\"1\":{\"amount\":\"10000\",\"date\":\"2018-11-05\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 271 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"9500\",\"date\":\"2019-01-22\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\" Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":2},\"3\":{\"amount\":\"500\",\"date\":\"2019-01-23\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\" Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":3},\"4\":{\"amount\":\"15000\",\"date\":\"2019-09-24\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 653 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":4}}', 'no', '2020-07-07 12:28:05');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (176, 107, 14, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-10-01\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 226\\n Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-07 12:30:48');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (177, 105, 14, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-09-04\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 204 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-07 12:33:40');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (178, 104, 14, '{\"1\":{\"amount\":\"30000\",\"date\":\"2018-09-04\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 205 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"5000\",\"date\":\"2018-11-19\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 284 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":2}}', 'no', '2020-07-07 12:35:23');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (179, 103, 14, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-08-13\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 174 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-07 12:36:10');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (180, 102, 14, '{\"1\":{\"amount\":\"30000\",\"date\":\"2018-11-08\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 273 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"5000\",\"date\":\"2018-11-12\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 275 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":2}}', 'no', '2020-07-07 12:38:18');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (181, 101, 14, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-12-17\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 331 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-07 12:39:24');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (182, 100, 14, '{\"1\":{\"amount\":\"10000\",\"date\":\"2018-11-29\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 292 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"25000\",\"date\":\"2018-12-13\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 321 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":2}}', 'no', '2020-07-07 12:40:37');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (183, 99, 14, '{\"1\":{\"amount\":\"15000\",\"date\":\"2018-11-05\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 282 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"20000\",\"date\":\"2019-02-18\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 441 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":2}}', 'no', '2020-07-07 12:42:05');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (185, 97, 14, '{\"1\":{\"amount\":\"20000\",\"date\":\"2018-10-01\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 229 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"15000\",\"date\":\"2018-10-31\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 265 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":2}}', 'no', '2020-07-07 12:45:31');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (186, 96, 14, '{\"1\":{\"amount\":\"10000\",\"date\":\"2018-10-01\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 231 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"20000\",\"date\":\"2018-11-01\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 267 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":2},\"3\":{\"amount\":\"5000\",\"date\":\"2018-12-04\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 302 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":3}}', 'no', '2020-07-07 12:47:09');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (187, 95, 14, '{\"1\":{\"amount\":\"20000\",\"date\":\"2018-10-18\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R  256 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"15000\",\"date\":\"2018-11-22\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 290 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":2}}', 'no', '2020-07-07 12:49:30');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (188, 94, 14, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-11-05\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 268 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-07 12:50:37');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (189, 93, 14, '{\"1\":{\"amount\":\"5000\",\"date\":\"2018-10-01\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 237 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"30000\",\"date\":\"2018-10-12\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 245 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":2}}', 'no', '2020-07-07 12:59:51');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (190, 92, 14, '{\"1\":{\"amount\":\"30000\",\"date\":\"2018-10-11\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 242 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"5000\",\"date\":\"2019-01-05\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 342 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":2}}', 'no', '2020-07-07 13:08:07');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (191, 91, 14, '{\"1\":{\"amount\":\"25000\",\"date\":\"2018-08-13\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 173 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"10000\",\"date\":\"2018-08-15\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 184 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":2}}', 'no', '2020-07-07 13:09:31');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (192, 90, 14, '{\"1\":{\"amount\":\"17000\",\"date\":\"2018-08-29\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 192 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"18000\",\"date\":\"2018-10-01\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 228 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":2}}', 'no', '2020-07-07 13:11:53');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (193, 89, 14, '{\"1\":{\"amount\":\"25000\",\"date\":\"2018-08-16\",\"amount_discount\":\"5000\",\"amount_fine\":\"0\",\"description\":\" Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"5000\",\"date\":\"2018-08-10\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\" Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":2}}', 'no', '2020-07-07 13:13:36');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (195, 88, 14, '{\"1\":{\"amount\":\"15000\",\"date\":\"2018-10-15\",\"amount_discount\":\"10000\",\"amount_fine\":\"0\",\"description\":\"R 249 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"10000\",\"date\":\"2018-10-22\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 261 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":2}}', 'no', '2020-07-07 13:16:02');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (196, 87, 14, '{\"1\":{\"amount\":\"15000\",\"date\":\"2018-09-29\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 222 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"10000\",\"date\":\"2018-12-06\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 311 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":2},\"3\":{\"amount\":\"10000\",\"date\":\"2019-03-04\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 421\\n Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":3}}', 'no', '2020-07-07 13:18:39');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (197, 86, 14, '{\"1\":{\"amount\":\"15000\",\"date\":\"2018-08-30\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 196 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"20000\",\"date\":\"2018-11-01\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 263 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":2}}', 'no', '2020-07-07 13:20:32');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (199, 85, 14, '{\"1\":{\"amount\":\"30000\",\"date\":\"2018-12-17\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 356 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"5000\",\"date\":\"2019-02-16\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 453 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":2}}', 'no', '2020-07-07 13:27:14');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (200, 84, 14, '{\"1\":{\"amount\":\"10000\",\"date\":\"2018-10-01\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 230 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"25000\",\"date\":\"2018-11-12\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 276 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":2}}', 'no', '2020-07-07 13:32:19');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (201, 83, 14, '{\"1\":{\"amount\":\"15000\",\"date\":\"2018-09-10\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 209 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"10000\",\"date\":\"2018-11-26\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#286 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":2},\"3\":{\"amount\":\"5000\",\"date\":\"2018-12-04\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#297 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":3},\"4\":{\"amount\":\"5000\",\"date\":\"2018-12-04\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#306 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":4}}', 'no', '2020-07-07 15:25:12');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (202, 82, 14, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-10-01\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 227 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-07 13:49:07');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (203, 81, 14, '{\"1\":{\"amount\":\"15000\",\"date\":\"2018-08-29\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 193 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"5000\",\"date\":\"2018-12-05\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 309 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":2},\"3\":{\"amount\":\"10000\",\"date\":\"2019-02-15\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 381 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":3},\"4\":{\"amount\":\"5000\",\"date\":\"2019-02-17\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 390 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":4}}', 'no', '2020-07-07 13:54:14');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (205, 80, 14, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-10-15\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 250 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-07 13:56:20');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (206, 79, 14, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-10-16\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 251 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-07 13:58:02');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (207, 78, 14, '{\"1\":{\"amount\":\"30000\",\"date\":\"2018-10-01\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 234 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"5000\",\"date\":\"2018-12-03\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 296 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":2}}', 'no', '2020-07-07 14:00:00');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (208, 77, 14, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-08-10\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\" Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-07 14:01:25');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (209, 76, 14, '{\"1\":{\"amount\":\"19000\",\"date\":\"2018-10-10\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 254 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"16000\",\"date\":\"2018-11-28\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 290 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":2}}', 'no', '2020-07-07 14:02:39');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (210, 75, 14, '{\"1\":{\"amount\":\"10000\",\"date\":\"2018-10-02\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 239 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"25000\",\"date\":\"2018-10-12\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 244 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":2}}', 'no', '2020-07-07 14:04:11');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (211, 74, 14, '{\"1\":{\"amount\":\"15000\",\"date\":\"2018-08-28\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 190 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"15000\",\"date\":\"2018-09-29\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#220 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":2},\"3\":{\"amount\":\"5000\",\"date\":\"2018-12-12\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#319 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":3}}', 'no', '2020-07-07 14:19:47');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (212, 73, 14, '{\"1\":{\"amount\":\"20000\",\"date\":\"2018-10-25\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 248 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"15000\",\"date\":\"2018-12-04\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R 298 Collected By: Faizan Ali\",\"payment_mode\":\"Cash\",\"inv_no\":2}}', 'no', '2020-07-07 14:09:33');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (213, 83, 6, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-02-07\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#61 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-07 15:17:32');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (214, 67, 6, '{\"1\":{\"amount\":\"30000\",\"date\":\"2018-01-18\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#45 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-07 15:29:10');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (215, 67, 14, '{\"1\":{\"amount\":\"34000\",\"date\":\"2018-09-19\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#213 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"1000\",\"date\":\"2019-02-17\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#393 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":2}}', 'no', '2020-07-07 15:37:15');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (216, 69, 14, '{\"1\":{\"amount\":\"13500\",\"date\":\"2018-12-10\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#317 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"10000\",\"date\":\"2019-02-18\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#405 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":2},\"3\":{\"amount\":\"11500\",\"date\":\"2019-03-25\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"C#66\\nblue Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":3}}', 'no', '2020-07-07 15:44:05');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (217, 122, 14, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-11-08\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"R#272 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-07 15:49:24');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (219, 117, 6, '{\"1\":{\"amount\":\"30000\",\"date\":\"2018-03-12\",\"amount_discount\":\"5000\",\"amount_fine\":\"0\",\"description\":\"R#106 Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-07-07 15:55:14');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (221, 98, 14, '{\"1\":{\"amount\":\"5000\",\"date\":\"2020-06-16\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"C#281\\nRed\\nTotal 15000\\n10000 1st semester\\n5000 2nd semester Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"30000\",\"date\":\"2020-01-20\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"C#53\\nRed\\nTotal 33000\\n30000 2nd semester\\n3000 3rd semester Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":2}}', 'no', '2020-07-07 16:23:49');


#
# TABLE STRUCTURE FOR: student_fees_discounts
#

DROP TABLE IF EXISTS `student_fees_discounts`;

CREATE TABLE `student_fees_discounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_session_id` int(11) DEFAULT NULL,
  `fees_discount_id` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'assigned',
  `payment_id` varchar(50) DEFAULT NULL,
  `description` text,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `student_session_id` (`student_session_id`),
  KEY `fees_discount_id` (`fees_discount_id`),
  CONSTRAINT `student_fees_discounts_ibfk_1` FOREIGN KEY (`student_session_id`) REFERENCES `student_session` (`id`) ON DELETE CASCADE,
  CONSTRAINT `student_fees_discounts_ibfk_2` FOREIGN KEY (`fees_discount_id`) REFERENCES `fees_discounts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: student_fees_master
#

DROP TABLE IF EXISTS `student_fees_master`;

CREATE TABLE `student_fees_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_session_id` int(11) DEFAULT NULL,
  `fee_session_group_id` int(11) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `student_session_id` (`student_session_id`),
  KEY `fee_session_group_id` (`fee_session_group_id`),
  CONSTRAINT `student_fees_master_ibfk_1` FOREIGN KEY (`student_session_id`) REFERENCES `student_session` (`id`) ON DELETE CASCADE,
  CONSTRAINT `student_fees_master_ibfk_2` FOREIGN KEY (`fee_session_group_id`) REFERENCES `fee_session_groups` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=313 DEFAULT CHARSET=utf8;

INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (24, 35, 6, 'no', '2020-06-27 14:55:46');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (25, 36, 6, 'no', '2020-06-27 14:55:46');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (26, 37, 6, 'no', '2020-06-27 15:08:52');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (27, 38, 6, 'no', '2020-06-27 15:15:11');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (28, 39, 6, 'no', '2020-06-29 12:04:13');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (29, 40, 6, 'no', '2020-06-29 12:04:13');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (30, 41, 6, 'no', '2020-06-29 12:04:13');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (31, 42, 6, 'no', '2020-06-29 12:04:13');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (32, 43, 6, 'no', '2020-06-29 12:04:13');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (33, 44, 6, 'no', '2020-06-29 12:04:13');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (34, 45, 6, 'no', '2020-06-29 12:04:13');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (35, 46, 6, 'no', '2020-06-29 12:04:13');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (36, 47, 6, 'no', '2020-06-29 12:04:13');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (37, 48, 6, 'no', '2020-06-29 12:04:13');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (38, 49, 6, 'no', '2020-06-29 12:04:13');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (39, 50, 6, 'no', '2020-06-29 12:04:13');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (40, 51, 6, 'no', '2020-06-29 12:04:13');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (41, 52, 6, 'no', '2020-06-29 12:04:13');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (42, 53, 6, 'no', '2020-06-30 12:37:05');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (43, 54, 6, 'no', '2020-06-30 12:37:05');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (44, 55, 6, 'no', '2020-06-30 12:37:05');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (45, 56, 6, 'no', '2020-06-30 12:37:05');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (46, 57, 6, 'no', '2020-06-30 12:37:05');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (47, 58, 6, 'no', '2020-06-30 12:37:05');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (48, 59, 6, 'no', '2020-06-30 12:37:05');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (49, 60, 6, 'no', '2020-06-30 12:37:05');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (50, 61, 6, 'no', '2020-06-30 12:37:05');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (51, 62, 6, 'no', '2020-06-30 12:37:05');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (52, 63, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (53, 64, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (54, 65, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (55, 66, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (56, 67, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (57, 68, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (58, 69, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (59, 70, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (60, 71, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (61, 72, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (63, 74, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (64, 75, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (65, 76, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (66, 77, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (67, 78, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (68, 79, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (69, 80, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (70, 81, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (71, 82, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (72, 83, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (73, 84, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (74, 85, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (75, 86, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (76, 87, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (77, 88, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (78, 89, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (79, 90, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (80, 91, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (81, 92, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (82, 93, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (83, 94, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (84, 95, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (85, 96, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (86, 97, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (87, 98, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (88, 99, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (89, 100, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (90, 101, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (91, 102, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (92, 103, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (93, 104, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (94, 105, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (95, 106, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (96, 107, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (97, 108, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (98, 109, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (99, 110, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (100, 111, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (101, 112, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (102, 113, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (103, 114, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (104, 115, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (105, 116, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (106, 117, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (107, 118, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (108, 119, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (109, 120, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (110, 121, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (111, 122, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (112, 123, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (113, 124, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (114, 125, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (115, 126, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (116, 127, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (117, 128, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (118, 129, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (119, 130, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (120, 131, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (121, 132, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (122, 133, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (123, 134, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (124, 135, 6, 'no', '2020-07-02 14:15:42');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (219, 153, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (220, 154, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (221, 155, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (222, 156, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (223, 157, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (224, 158, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (225, 159, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (226, 160, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (227, 161, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (228, 162, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (229, 163, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (230, 164, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (231, 165, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (232, 166, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (233, 167, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (234, 168, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (235, 169, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (236, 170, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (237, 171, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (238, 172, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (239, 173, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (240, 174, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (241, 175, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (242, 176, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (243, 177, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (244, 178, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (245, 179, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (246, 180, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (247, 181, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (248, 182, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (249, 183, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (250, 184, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (251, 185, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (252, 186, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (253, 187, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (254, 188, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (255, 189, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (256, 190, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (257, 191, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (258, 192, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (259, 193, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (260, 194, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (261, 195, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (262, 196, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (263, 197, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (264, 198, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (265, 199, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (266, 200, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (267, 201, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (268, 202, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (269, 203, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (270, 204, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (271, 205, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (272, 206, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (273, 207, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (274, 208, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (275, 209, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (276, 210, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (277, 211, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (278, 212, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (279, 213, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (280, 214, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (281, 215, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (282, 216, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (283, 217, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (284, 218, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (285, 219, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (286, 220, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (287, 221, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (288, 222, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (289, 223, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (290, 224, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (291, 225, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (292, 226, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (293, 227, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (294, 228, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (295, 229, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (296, 230, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (297, 231, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (298, 232, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (299, 233, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (300, 234, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (301, 235, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (302, 236, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (303, 237, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (304, 238, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (305, 239, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (306, 240, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (307, 241, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (308, 242, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (309, 243, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (310, 244, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (311, 245, 10, 'no', '2020-07-07 17:50:24');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (312, 246, 10, 'no', '2020-07-07 17:50:24');


#
# TABLE STRUCTURE FOR: student_session
#

DROP TABLE IF EXISTS `student_session`;

CREATE TABLE `student_session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=247 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (1, 14, 1, 1, 1, 0, 0, 0, '0.00', '0.00', 'no', '2019-03-08 12:02:11', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (2, 14, 2, 1, 1, 0, 0, 0, '0.00', '0.00', 'no', '2019-03-08 13:23:17', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (3, 14, 3, 1, 1, 0, 0, 0, '0.00', '0.00', 'no', '2019-03-08 13:35:52', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (4, 14, 4, 1, 1, 0, 0, 0, '0.00', '0.00', 'no', '2019-03-08 13:49:04', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (5, 14, 5, 1, 1, 0, 0, 0, '0.00', '0.00', 'no', '2019-03-08 14:09:41', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (6, 14, 6, 1, 1, 0, 0, 0, '0.00', '0.00', 'no', '2019-03-08 14:22:05', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (7, 14, 7, 1, 1, 0, 0, 0, '0.00', '0.00', 'no', '2019-03-08 14:30:14', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (8, 14, 8, 1, 1, 0, 0, 0, '0.00', '0.00', 'no', '2019-03-08 14:37:26', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (9, 14, 9, 1, 1, 0, 0, 0, '0.00', '0.00', 'no', '2019-03-08 15:03:38', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (10, 13, 1, 1, 1, 0, 0, 0, '0.00', '0.00', 'no', '2019-03-08 15:45:59', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (11, 13, 2, 1, 1, 0, 0, NULL, '0.00', '0.00', 'no', '2019-03-08 15:11:22', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (12, 13, 3, 1, 1, 0, 0, NULL, '0.00', '0.00', 'no', '2019-03-08 15:11:22', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (13, 13, 4, 1, 1, 0, 0, NULL, '0.00', '0.00', 'no', '2019-03-08 15:11:22', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (14, 13, 5, 1, 1, 0, 0, NULL, '0.00', '0.00', 'no', '2019-03-08 15:11:22', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (15, 13, 6, 1, 1, 0, 0, NULL, '0.00', '0.00', 'no', '2019-03-08 15:11:22', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (16, 13, 7, 1, 1, 0, 0, NULL, '0.00', '0.00', 'no', '2019-03-08 15:11:22', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (17, 13, 8, 1, 1, 0, 0, NULL, '0.00', '0.00', 'no', '2019-03-08 15:11:22', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (18, 13, 9, 1, 1, 0, 0, NULL, '0.00', '0.00', 'no', '2019-03-08 15:11:22', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (19, 14, 0, 6, 1, 0, 0, 0, '0.00', '0.00', 'no', '2019-07-27 15:58:40', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (20, 14, 10, 6, 1, 0, 0, 0, '0.00', '0.00', 'no', '2019-08-02 17:55:04', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (21, 14, 11, 6, 1, 0, 0, 0, '0.00', '0.00', 'no', '2019-08-02 17:56:04', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (22, 14, 12, 6, 1, 0, 0, 0, '0.00', '0.00', 'no', '2019-08-02 18:18:33', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (23, 14, 13, 6, 1, 0, 0, 0, '0.00', '0.00', 'no', '2019-11-02 20:43:06', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (24, 14, 14, 6, 1, 0, 0, 0, '0.00', '0.00', 'no', '2019-11-02 20:52:17', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (25, 14, 15, 6, 2, 0, 0, 0, '0.00', '0.00', 'no', '2019-11-02 21:05:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (26, 14, 16, 6, 1, 0, 0, 0, '0.00', '0.00', 'no', '2019-11-02 21:07:52', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (27, 14, 17, 6, 1, 0, 0, 0, '0.00', '0.00', 'no', '2019-11-02 21:12:38', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (28, 14, 18, 8, 6, 0, 0, 0, '0.00', '0.00', 'no', '2020-06-13 13:18:09', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (29, 13, 18, 7, 5, 0, 0, NULL, '0.00', '0.00', 'no', '2020-06-13 13:18:56', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (30, 14, 19, 7, 5, 1, 0, 0, '0.00', '0.00', 'no', '2020-06-18 23:22:26', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (31, 15, 19, 7, 5, 1, 0, NULL, '0.00', '0.00', 'no', '2020-06-22 23:09:36', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (32, 14, 20, 7, 5, 1, 0, 0, '0.00', '0.00', 'no', '2020-06-22 22:45:34', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (33, 15, 20, 7, 5, 1, 0, NULL, '0.00', '0.00', 'no', '2020-06-22 23:09:36', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (35, 13, 22, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (36, 13, 23, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (37, 13, 24, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (38, 13, 25, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (39, 13, 26, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (40, 13, 27, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (41, 13, 28, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (42, 13, 29, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (43, 13, 30, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (44, 13, 31, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (45, 13, 32, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (46, 13, 33, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (47, 13, 34, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (48, 13, 35, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (49, 13, 36, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (50, 13, 37, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (51, 13, 38, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (52, 13, 39, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (53, 13, 40, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (54, 13, 41, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (55, 13, 42, 11, 11, 1, 0, 0, '0.00', '0.00', 'no', '2020-06-30 21:54:05', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (56, 13, 43, 11, 11, 1, 0, 0, '0.00', '0.00', 'no', '2020-06-30 21:54:05', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (57, 13, 44, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (58, 13, 45, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (59, 13, 46, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (60, 13, 47, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (61, 13, 48, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (62, 13, 49, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (63, 13, 50, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (64, 13, 51, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (65, 13, 52, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (66, 13, 53, 11, 11, 1, 0, 0, '0.00', '0.00', 'no', '2020-06-30 21:54:05', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (67, 13, 54, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (68, 13, 55, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (69, 13, 56, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (70, 13, 57, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (71, 13, 58, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (72, 13, 59, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (74, 13, 61, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (75, 13, 62, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (76, 13, 63, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (77, 13, 64, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (78, 13, 65, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (79, 13, 66, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (80, 13, 67, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (81, 13, 68, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (82, 13, 69, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (83, 13, 70, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (84, 13, 71, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (85, 13, 72, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (86, 13, 73, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (87, 13, 74, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (88, 13, 75, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (89, 13, 76, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (90, 13, 77, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (91, 13, 78, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (92, 13, 79, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (93, 13, 80, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (94, 13, 81, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (95, 13, 82, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (96, 13, 83, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (97, 13, 84, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (98, 13, 85, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (99, 13, 86, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (100, 13, 87, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (101, 13, 88, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (102, 13, 89, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (103, 13, 90, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (104, 13, 91, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (105, 13, 92, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (106, 13, 93, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (107, 13, 94, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (108, 13, 95, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (109, 13, 96, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (110, 13, 97, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (111, 13, 98, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (112, 13, 99, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (113, 13, 100, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (114, 13, 101, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (115, 13, 102, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (116, 13, 103, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (117, 13, 104, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (118, 13, 105, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (119, 13, 106, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (120, 13, 107, 11, 11, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-01 14:28:01', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (121, 13, 108, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (122, 13, 109, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (123, 13, 110, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (124, 13, 111, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (125, 13, 112, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (126, 13, 113, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (127, 13, 114, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (128, 13, 115, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (129, 13, 116, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (130, 13, 117, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (131, 13, 118, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (132, 13, 119, 11, 11, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-01 15:36:11', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (133, 13, 120, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (134, 13, 121, 11, 11, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-01 15:43:37', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (135, 13, 122, 11, 12, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-02 16:40:29', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (136, 14, 123, 12, 11, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-07 15:22:26', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (137, 14, 124, 12, 11, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-07 15:27:26', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (138, 14, 125, 12, 11, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-07 15:32:04', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (139, 14, 126, 12, 11, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-07 15:37:27', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (140, 14, 127, 12, 11, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-07 15:42:15', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (141, 14, 128, 12, 11, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-07 15:47:34', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (142, 14, 129, 12, 11, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-07 15:52:28', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (143, 14, 130, 12, 11, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-07 15:56:15', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (144, 14, 131, 12, 11, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-07 16:00:28', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (145, 14, 132, 12, 11, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-07 16:04:59', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (146, 14, 133, 12, 11, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-07 16:09:21', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (147, 14, 134, 12, 11, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-07 16:14:05', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (148, 14, 135, 12, 11, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-07 16:18:55', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (149, 14, 136, 12, 11, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-07 16:22:51', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (150, 14, 137, 12, 11, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-07 16:28:38', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (151, 14, 138, 12, 11, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-07 16:38:16', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (152, 14, 139, 12, 11, 1, 0, 0, '0.00', '0.00', 'no', '2020-07-07 16:41:47', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (153, 14, 22, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:49', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (154, 14, 23, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:49', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (155, 14, 24, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:49', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (156, 14, 25, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:49', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (157, 14, 26, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:49', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (158, 14, 27, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:49', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (159, 14, 28, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:49', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (160, 14, 29, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:49', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (161, 14, 30, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:49', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (162, 14, 31, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:49', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (163, 14, 32, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:49', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (164, 14, 33, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:49', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (165, 14, 34, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:49', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (166, 14, 35, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:49', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (167, 14, 36, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:49', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (168, 14, 37, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:49', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (169, 14, 38, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:49', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (170, 14, 39, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:49', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (171, 14, 40, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:49', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (172, 14, 41, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:49', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (173, 14, 44, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:49', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (174, 14, 45, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:49', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (175, 14, 46, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (176, 14, 47, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (177, 14, 48, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (178, 14, 49, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (179, 14, 50, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (180, 14, 51, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (181, 14, 52, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (182, 14, 54, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (183, 14, 55, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (184, 14, 56, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (185, 14, 57, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (186, 14, 58, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (187, 14, 59, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (188, 14, 61, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (189, 14, 62, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (190, 14, 63, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (191, 14, 64, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (192, 14, 65, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (193, 14, 66, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (194, 14, 67, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (195, 14, 68, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (196, 14, 69, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (197, 14, 70, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (198, 14, 71, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (199, 14, 72, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (200, 14, 73, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (201, 14, 74, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (202, 14, 75, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (203, 14, 76, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (204, 14, 77, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (205, 14, 78, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (206, 14, 79, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (207, 14, 80, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (208, 14, 81, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (209, 14, 82, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (210, 14, 83, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (211, 14, 84, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (212, 14, 85, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (213, 14, 86, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (214, 14, 87, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (215, 14, 88, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (216, 14, 89, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (217, 14, 90, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (218, 14, 91, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (219, 14, 92, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (220, 14, 93, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (221, 14, 94, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (222, 14, 95, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (223, 14, 96, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (224, 14, 97, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (225, 14, 98, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (226, 14, 99, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (227, 14, 100, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (228, 14, 101, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (229, 14, 102, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (230, 14, 103, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (231, 14, 104, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (232, 14, 105, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (233, 14, 106, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (234, 14, 108, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (235, 14, 109, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (236, 14, 110, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (237, 14, 111, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (238, 14, 112, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (239, 14, 113, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (240, 14, 114, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (241, 14, 115, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (242, 14, 116, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (243, 14, 117, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (244, 14, 118, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (245, 14, 120, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `part_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (246, 14, 122, 11, 11, 2, 0, NULL, '0.00', '0.00', 'no', '2020-07-07 17:28:50', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: student_sibling
#

DROP TABLE IF EXISTS `student_sibling`;

CREATE TABLE `student_sibling` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `sibling_student_id` int(11) DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: student_transport_fees
#

DROP TABLE IF EXISTS `student_transport_fees`;

CREATE TABLE `student_transport_fees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_session_id` int(11) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `amount_discount` float(10,2) NOT NULL,
  `amount_fine` float(10,2) NOT NULL DEFAULT '0.00',
  `description` text COLLATE utf8_unicode_ci,
  `date` date DEFAULT '0000-00-00',
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `payment_mode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: students
#

DROP TABLE IF EXISTS `students`;

CREATE TABLE `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (1, '01', '2K18/LLB/01', '2018-01-15', 'Allah', 'Dino', 'No', 'uploads/student_images/1.jpg', '03041316054', '', NULL, NULL, NULL, 'ISLAM', 'MEERANI', '1999-01-02', 'Male', 'H# 9-A Naqash villas phase II, Qasimabad Hyderabad.', '', '', '4120595538979', '', '', '', '', 'father', 'MUHAMMAD DAUD', '03013519459', '', '', '', '', 'MUHAMMAD DAUD', 'Father', '03013519459', '', 'H# 9-A Naqash villas phase II, Qasimabad Hyderabad.', '', 'no', '', '2019-03-08 15:45:59', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (2, '02', '2K18/LLB/02', '2018-01-15', 'Waleed', 'Khan', 'No', 'uploads/student_images/2.jpg', '03116300900', '', NULL, NULL, NULL, 'Islam', 'Pathan', '2000-04-18', 'Male', 'B#: A356 S.U.E.C.H,S phase I Jamshoro.', '', '', '', '', '', '', '', 'father', 'Nisar Ahmed', '03342929465', 'Private Job', '', '', '', 'Nisar Ahmed', 'Father', '03342929465', 'Private Job', '', '', 'no', '', '2019-03-08 13:23:17', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (3, '03', '03', '2018-01-17', 'Mohsin', 'Hussain', 'No', 'uploads/student_images/no_image.png', '03169687606', '', NULL, NULL, NULL, 'Islam', 'Leekhi', '2000-02-18', 'Male', 'village Khan Muhammad Leekhi P.O Bahawal Zaunr via Phulei Hyderabad', 'village Khan Muhammad Leekhi P.O Bahawal Zaunr via Phulei Hyderabad', '', '', '', '', '', '', 'father', 'Hussain Leekhi', '03032738121', 'Teacher ', '', '', '', 'Hussain Leekhi', 'Father', '03032738121', 'Teacher ', '', '', 'no', '', '2019-03-08 13:35:52', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (4, '04', '04', '2018-01-15', 'Urooj', 'Lashari', 'No', 'uploads/student_images/4.jpg', '03163132373', 'Uroojlashari767@gmail.com', NULL, NULL, NULL, 'Islam', 'Lashari', '1999-02-10', 'Female', 'Murk Villa Phase -I S.U.E.C.H.S Jamshoro ', 'Murk Villa Phase -I S.U.E.C.H.S Jamshoro ', '', '', '', '', '', '', 'other', 'Ghulam Hussain', '', 'Deciesed', '', '', '', 'Dr. Aslam Pervez Memon', 'As Guardian', '03073089088', 'Professor ', 'Murk Villa Phase -I S.U.E.C.H.S Jamshoro ', '', 'no', '', '2019-03-08 13:49:04', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (5, '05', '2K18/LLB/05', '2018-01-15', 'Talat', 'Hussain', 'No', 'uploads/student_images/5.jpg', '03063691228', '', NULL, NULL, NULL, 'Islam', 'Behrani', '2000-01-01', 'Male', 'Lal faqeer Behrani Quba stop Tando Allayar', '', '', '', '', '', '', '', 'father', 'Talib Behrani', '03002724708', 'LAB Assistance ', '', '', '', 'Talib Behrani', 'Father', '03002724708', 'LAB Assistance ', '', '', 'no', '', '2019-03-08 14:09:41', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (6, '06', '2K18/LLB/06', '2018-01-18', 'Hamza', 'Ali', 'No', 'uploads/student_images/6.jpg', '0303193652', '', NULL, NULL, NULL, 'Islam', 'Sabzoi', '2000-01-01', 'Male', 'Jazz Office Opposite Honda Showroom Near Anaj Mandi Kandhkot Kashmor', 'Village Muhammad Ramzan Sabzoi Kandhkot, Kashmor', '', '', '', '', '', '', 'father', 'Muhammad Ali', '03003193181', 'Farmer ', '', '', '', 'Muhammad Ali', 'Father', '03003193181', 'Farmer ', 'Village Muhammad Ramzan Sabzoi Kandhkot, Kashmor', '', 'no', '', '2019-03-08 14:22:05', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (7, '07', '2K18/LLB/07', '2018-01-18', 'Bilawal', 'Ali', 'No', 'uploads/student_images/7.jpg', '03483938823', '', NULL, NULL, NULL, 'Islam', 'Chhachhar', '1996-07-27', 'Male', 'Village Wada Chhachhar Taluka Manjhand U/C Aamri Distt: Jamshoro', 'Village Wada Chhachhar Taluka Manjhand U/C Aamri Distt: Jamshoro', '', '', '', '', '', '', 'father', 'Hussain Bux', '03456089737', 'Farmer', '', '', '', 'Hussain Bux', 'Father', '03456089737', 'Farmer', 'Village Wada Chhachhar Taluka Manjhand U/C Aamri Distt: Jamshoro', '', 'no', '', '2019-03-08 14:30:14', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (8, '08', '2K18/LLB/08', '2018-01-22', 'Abul', 'Hassan', 'No', 'uploads/student_images/8.jpg', '03163699011', '', NULL, NULL, NULL, 'Islam', 'Chandio', '1998-03-26', 'Male', 'House# 1 Lakho Faqeer Sandos Road Jamshoro ', 'House# 1 Lakho Faqeer Sandos Road Jamshoro ', '', '', '', '', '', '', 'father', 'Sakhawat Ali', '03013567498', 'Police Department', '', '', '', 'Sakhawat Ali', 'Father', '03013567498', 'Police Department', 'House# 1 Lakho Faqeer Sandos Road Jamshoro ', '', 'no', '', '2019-03-08 14:37:26', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (9, '09', '2K18/LLB/09', '2018-01-19', 'Muhammad', 'Hasnian', 'No', 'uploads/student_images/no_image.png', '03121334918', '', NULL, NULL, NULL, 'Islam', 'Abbasi', '1998-01-15', 'Male', 'Near Garib Nawaz Masjid House# 37 Mohlla Mir Ka Palot Mirpurkhas', 'Near Garib Nawaz Masjid House# 37 Mohlla Mir Ka Palot Mirpurkhas', '', '', '', '', '', '', 'father', 'Jawaid Iqbal', '03123390436', 'Police Constable', '', '', '', 'Jawaid Iqbal', 'Father', '03123390436', 'Police Constable', 'Near Garib Nawaz Masjid House# 37 Mohlla Mir Ka Palot Mirpurkhas', '', 'no', '', '2019-03-08 15:03:38', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (10, '838343', '01', '2019-08-02', 'Imran', 'Khan', 'No', 'uploads/student_images/no_image.png', '0343454653', 'xyz@gmail.com', NULL, NULL, NULL, 'Islam', 'Pathan', '1996-01-01', 'Male', 'Peshawar', '', '1', '', '', '', '', '', 'father', 'Khanwar', '0324545456', 'Government', 'Bibi Sheri', '0343123342', 'house wife', 'Khanwar', 'Father', '0324545456', 'Government', '', 'khanwar@gmail.com', 'no', '', '2019-08-02 17:55:04', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (11, '123456789', '01', '2019-08-02', 'Imran', 'Khan', 'No', 'uploads/student_images/no_image.png', '0343454653', 'xyz@gmail.com', NULL, NULL, NULL, 'Islam', 'Pathan', '1996-01-01', 'Male', 'Peshawar', '', '1', '', '', '', '', '', 'father', 'Khanwar', '0324545456', 'Government', 'Bibi Sheri', '0343123342', 'house wife', 'Khanwar', 'Father', '0324545456', 'Government', '', 'khanwar@gmail.com', 'no', '', '2019-08-02 17:56:04', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (12, '12', '84', '2019-08-02', 'farzan', 'ahmed', 'No', 'uploads/student_images/no_image.png', '03327094840', 'syedfarzanahmed.syed@gmail.com', NULL, NULL, NULL, 'islam', 'syed', '1996-07-27', 'Male', '', '', '1', '', '', '', '', '', 'father', 'altaf', '4343434', 'govt', 'ibne adam', '342442424', 'at home', 'ahmed', 'Father', '090909', 'govt employe', 'house no 286 /c', 'syedfarzaabsjdkndjandjan.com', 'no', '', '2019-08-02 18:18:33', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (13, '6465', '5123', '2019-11-02', 'kashif', 'shah', 'No', 'uploads/student_images/13.png', '03323591099', 'zubair.shaikh2004@gmail.com', NULL, NULL, NULL, 'islam', 'shah', '1990-02-06', 'Male', '', '', '', '', '', '', '', '', 'father', 'subway', '0223821470', 'shop', '', '', '', 'subway', 'Father', '0223821470', 'shop', '', '', 'no', '', '2019-11-02 20:43:06', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (14, 'saba naz', '08', '2019-11-02', 'saba', 'naz', 'No', 'uploads/student_images/no_image.png', '03453588874', '', NULL, NULL, NULL, 'tytry', 'FGUTFU', '1996-03-25', 'Female', '', '', '1', '', '', '', '', '', 'father', 'Abdul Shakoor', '03473100796', 'S', '', '', '', 'Abdul Shakoor', 'Father', '03473100796', 'S', '', '', 'no', '', '2019-11-02 20:52:17', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (15, 'asdfgh', '07', '2019-11-02', 'jggjgy', 'uiyihnffj', 'Yes', 'uploads/student_images/no_image.png', '034567654355', '', NULL, NULL, NULL, 'islam', 'shah', '2019-10-29', 'Male', '', '', '2', '', '', '', '', '', 'father', 'khkhjkhfhk', '03015436543', '', '', '', '', 'khkhjkhfhk', 'Father', '03015436543', '', '', '', 'no', '', '2019-11-02 21:05:29', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (16, 'lkjhgfd', '06', '2019-11-21', 'fgtyueoo', 'njhgyfui', 'Yes', 'uploads/student_images/no_image.png', '03115436547', '', NULL, NULL, NULL, 'islam', 'jhugh', '2018-05-28', 'Female', '', '', '1', '', '', '', '', '', 'father', 'lkoijuhygt', '8765432345678', '', '', '', '', 'lkoijuhygt', 'Father', '8765432345678', '', '', '', 'no', '', '2019-11-02 21:07:52', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (17, 'kashif', '05', '2019-11-02', 'gjklj;oeurru', 'nbjvjjkhkh', 'Yes', 'uploads/student_images/no_image.png', '098765487654', '', NULL, NULL, NULL, 'islam', 'shjgjk', '2019-11-27', 'Male', '', '', '1', '', '', '', '', '', 'father', 'sdhhafhkiutegy', '030456787656', '', '', '', '', 'sdhhafhkiutegy', 'Father', '030456787656', '', '', '', 'no', '', '2019-11-02 21:12:38', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (18, '266', '012', '2019-12-31', 'salman', 's', 'No', 'uploads/student_images/no_image.png', '03213029640', 'Admin@cappp.com', NULL, NULL, NULL, 'islam', 'dfgdf', '2020-01-07', 'Male', '', '', '1', '', '', '', '', '', 'other', 'dgdfg', '03213069876', '', '', '', '', 'sdt t', '', '0322187456', '', '', '', 'no', '', '2020-01-30 18:11:40', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (19, '2245', '25', '2020-06-15', 'Khalid', 'ali', 'No', 'uploads/student_images/no_image.png', '2153315', 'asadsubuser@yopmail.com', NULL, NULL, NULL, 'islam', 'ansari', '2020-06-23', 'Male', '', '', '3', '', '', '', '', '', 'father', 'khila', '115331', 'khila', 'mother', '234352', 'khila', 'khila', 'Father', '115331', 'khila', '', '', 'no', '', '2020-06-15 23:37:31', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (20, '342', '233', '1970-01-01', 'ali', 'ghouri', 'No', 'uploads/student_images/no_image.png', '524543', 'ali@yopmail.com', NULL, NULL, NULL, 'islam', 'ghoiri', '2020-06-03', 'Male', '', '', '3', '', '', '', '', '', 'father', 'sda', 'asdasdad', 'ddsasadd', 'asdasd', '323423', 'adasd', 'sda', 'Father', 'asdasdad', 'ddsasadd', '', '', 'no', '', '2020-06-22 22:45:34', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (22, '004', '2018/LLB/001', '2018-01-08', 'ALLAH', 'DINO', 'No', 'uploads/student_images/no_image.png', '03041316054', '', NULL, NULL, NULL, 'Islam', 'Meerani', '1999-01-02', 'Male', 'H.no 9A Naqash villas phase II Qasimabad,Hyderabad.', 'H.no 9A Naqash villas phase II Qasimabad,Hyderabad.', '', '41201-9553897-9', '', '', '', '', 'father', 'MUHAMMAD DAUD', '03013519459', 'Landlord', '', '', '', 'MUHAMMAD DAUD', 'Father', '03013519459', 'Landlord', '', '', 'no', '', '2020-06-27 14:46:40', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (23, '085', '2018/LLB/002', '2018-01-08', 'WALEED', 'KHAN', 'No', 'uploads/student_images/no_image.png', '03116300900', '', NULL, NULL, NULL, 'Islam', 'Pathan', '2000-04-18', 'Male', 'B:No A-356 Sindh University employees co-operation housing society jamshoro.', 'B:No A-356 Sindh University employees co-operation housing society jamshoro.', '', '', '', '', '', '', 'father', 'NISAR AHMED', '03342929465', 'Private job', '', '', '', 'NISAR AHMED', 'Father', '03342929465', 'Private job', '', '', 'no', '', '2020-06-27 14:55:38', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (24, '036', '2018/LLB/003', '2018-01-08', 'MOHSIN', 'MOHSIN', 'No', 'uploads/student_images/no_image.png', '03169687606', '', NULL, NULL, NULL, 'Islam', 'Leekhi', '2000-02-18', 'Male', 'village khan muhammad leekhi p.o bahawal zaunr via phuleli hyderabad.', '', '', '41303-2602888-1', '', '', '', '', 'father', 'Hussain', '03032738121', 'Teacher', '', '', '', 'Hussain', 'Father', '03032738121', 'Teacher', '', '', 'no', '', '2020-06-27 15:02:41', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (25, '011', '2018/LLB/004', '2018-01-08', 'UROOJ', 'LASHARI', 'No', 'uploads/student_images/no_image.png', '03163132373', '', NULL, NULL, NULL, 'Islam', 'Lashari', '1999-02-10', 'Female', '', '', '', '', '', '', '', '', 'other', 'Ghulam Hussain', '', 'deceased', '', '', '', 'Dr Aslam parvez Memon', 'Guardian', '03073089088', 'professor', 'A-54 murk villa phase I sindh university housing society jamshoro.', '', 'no', '', '2020-06-27 15:11:56', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (26, '047', '2018/LLB/005', '2018-01-09', 'TALAT', 'HUSSAIN', 'No', 'uploads/student_images/no_image.png', '03063691228', '', NULL, NULL, NULL, 'Islam', 'BERANI', '2000-01-01', 'Male', 'lal faqeer behrani quba stop tando allahyar .', 'lal faqeer behrani quba stop tando allahyar .', '', '41307-5371697-3', '', '', '', '', 'father', 'TALIB', '03002724708', 'LAB ASSISTANT', '', '', '', 'TALIB', 'Father', '03002724708', 'LAB ASSISTANT', '', '', 'no', '', '2020-06-27 15:19:15', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (27, '089', '2018/LLB/006', '2018-01-09', 'HAMZA', 'ALI', 'No', 'uploads/student_images/no_image.png', '030003193652', '', NULL, NULL, NULL, 'Islam', 'SABZOI', '2000-01-01', 'Male', 'village mohammad ramzan sabzoi kandhkot ,kashmore.', 'village mohammad ramzan sabzoi kandhkot ,kashmore.', '', '43103-2737528-5', '', '', '', '', 'father', 'MOHAMMAD ALI', '03003139181', 'FARMER', '', '', '', 'MOHAMMAD ALI', 'Father', '03003139181', 'FARMER', 'village mohammad ramzan sabzoi kandhkot ,kashmore.', '', 'no', '', '2020-06-27 15:24:27', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (28, '108', '2018/LLB/008', '2018-01-09', 'ABUL', 'HASSAN', 'No', 'uploads/student_images/no_image.png', '03163699011', '', NULL, NULL, NULL, 'Islam', 'CHANDIO', '1998-03-26', 'Female', 'house no :01 lakho faqir sandoz road jamshoro.', '', '', '41504-0529825-9', '', '', '', '', 'father', 'SAKHAWAT ALI', '03013567498', 'POLICE OFFICER', '', '', '', 'SAKHAWAT ALI', 'Father', '03013567498', 'POLICE OFFICER', '', '', 'no', '', '2020-06-29 10:14:32', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (29, '123', '2018/LLB/009', '2018-01-09', 'MUHAMMAD', 'HASNAIN', 'No', 'uploads/student_images/no_image.png', '03121334918', '', NULL, NULL, NULL, 'Islam', 'ABBASI', '1998-01-15', 'Male', 'near garib nawaz masjid house no :37 mohala mir ka plot mirpurkhas.', 'near garib nawaz masjid house no :37 mohala mir ka plot mirpurkhas.', '', '44103-2016499-3', '', '', '', '', 'father', 'JAWAID IQBAL', '03123390436', 'POLICE CONSTABLE', '', '', '', 'JAWAID IQBAL', 'Father', '03123390436', 'POLICE CONSTABLE', '', '', 'no', '', '2020-06-29 10:20:08', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (30, '112', '2018/LLB/010', '2018-01-09', 'AKHTAR', 'SARWAR', 'No', 'uploads/student_images/no_image.png', '0315632110', '', NULL, NULL, NULL, 'Islam', 'BARAN', '1998-03-01', 'Male', 'village umar baran p.o sujawal.', 'village umar baran p.o sujawal.', '', '41901-0348755-3', '', '', '', '', 'father', 'MUHAMMAD KHAN', '03012950534', 'LANDLORD', '', '', '', 'MUHAMMAD KHAN', 'Father', '03012950534', 'LANDLORD', '', '', 'no', '', '2020-06-29 10:27:50', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (31, '113', '2018/LLB/011', '2018-01-09', 'SOHAIL', 'AHMED', 'No', 'uploads/student_images/no_image.png', '03131336217', '', NULL, NULL, NULL, 'Islam', 'BARAN', '1998-10-03', 'Male', 'village umar baran p.o sujawal.', 'village umar baran p.o sujawal.', '', '41901-0347725-7', '', '', '', '', 'father', 'AHMED KHAN', '03113151294', 'TEACHER', '', '', '', 'AHMED KHAN', 'Father', '03113151294', 'TEACHER', '', '', 'no', '', '2020-06-29 10:44:46', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (32, '005', '2018/LLB/012', '2018-01-01', 'ALLAH', 'RAKHIO', 'No', 'uploads/student_images/no_image.png', '03473756785', '', NULL, NULL, NULL, 'Islam', 'RAHOOJA', '1997-02-03', 'Male', 'house no:40,41 miskeen colony khuda ki basti kotri jamshoro.', 'house no:40,41 miskeen colony khuda ki basti kotri jamshor', '', '41504-04042276-7', '', '', '', '', 'father', 'GHULAM NABI ', '03402464199', 'RAILWAY STATION MASTER (R)', '', '', '', 'GHULAM NABI', 'Father', '03402464199', 'RAILWAY STATION MASTER (R)', '', '', 'no', '', '2020-06-29 10:51:05', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (33, '30', '2018/LLB/013', '2018-01-10', 'BAKHTIAR', 'AHMED', 'No', 'uploads/student_images/no_image.png', '03113855624', '', NULL, NULL, NULL, 'Islam', 'MEMON', '1997-03-14', 'Male', 'town memon buleri taluka bukeri shah karim, tando.m.khan.', 'town memon buleri taluka bukeri shah karim, tando.m.khan.', '', '41602-0639693-3', '', '', '', '', 'father', 'MUKHTIAR AHMED', '03008374258', 'JOB', '', '', '', 'MUKHTIAR AHMED', 'Father', '03008374258', 'JOB', '', '', 'no', '', '2020-06-29 10:56:53', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (34, '046', '2018/LLB/014', '2018-03-14', 'MUHAMMAD USMAN', 'GHANI', 'No', 'uploads/student_images/no_image.png', '03151019647', '', NULL, NULL, NULL, 'Islam', 'PANHWAR', '1998-08-04', 'Male', 'H.no:2394 street 1 shah latif colony kotri jamshoro.', 'H.no:2394 street 1 shah latif colony kotri jamshoro.', '', '41504-0542932-5', '', '', '', '', 'father', 'BADDAR-UDDIN', '03012787351', 'GOVT; EMPLOYEE', '', '', '', 'BADDAR-UDDIN', 'Father', '03012787351', 'GOVT; EMPLOYEE', '', '', 'no', '', '2020-06-29 11:03:22', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (35, '081', '2018/LLB/015', '2018-01-18', 'RAJA', 'SAEED', 'No', 'uploads/student_images/no_image.png', '03003922870', '', NULL, NULL, NULL, 'Islam', 'TUNIO', '1998-07-20', 'Male', 'village haji wali dino tunio nausheroferoz.', 'village haji wali dino tunio nausheroferoz.', '', '45301-3561371-1', '', '', '', '', 'father', 'MUHAMMAD ZAKRIA', '03023410056', 'ENGINEER', '', '', '', 'MUHAMMAD ZAKRIA', 'Father', '03023410056', 'ENGINEER', '', '', 'no', '', '2020-06-29 11:07:46', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (36, '083', '2018/LLB/016', '2018-01-18', 'SHAN', 'ALI', 'No', 'uploads/student_images/no_image.png', '03012249855', '', NULL, NULL, NULL, 'Islam', 'PANHWAR', '1999-02-14', 'Male', 'village bachal panhwar p.o dalipoto nausheroferoz.', 'village bachal panhwar p.o dalipoto nausheroferoz.', '', '45301-9568760-7', '', '', '', '', 'father', 'GHULAM SHABEER', '03028991913', 'LANDLORD', '', '', '', 'GHULAM SHABEER', 'Father', '03028991913', 'LANDLORD', '', '', 'no', '', '2020-06-29 11:12:19', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (37, '071', '2018/LLB/017', '2018-01-10', 'IRFANA', 'SOOMRO', 'No', 'uploads/student_images/no_image.png', '03353517868', '', NULL, NULL, NULL, 'Islam', 'SOOMRO', '1998-04-26', 'Female', 'H.No;B-180 mir colony tandojam hyderabadsindh pakistan.', 'H.No;B-180 mir colony tandojam hyderabadsindh pakistan.', '', '41303-9865677-8', '', '', '', '', 'father', 'ASADULLAH', '03003073638', 'JOB', '', '', '', 'ASADULLAH', 'Father', '03003073638', 'JOB', '', '', 'no', '', '2020-06-29 11:39:05', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (38, '063', '2018/LLB/018', '2018-03-14', 'SYED MUSLIM', 'RAZA', 'No', 'uploads/student_images/no_image.png', '03058292793', '', NULL, NULL, NULL, 'Islam', 'SYED', '2000-07-30', 'Male', 'mohalla ali murad shah khairpur .', 'mohalla ali murad shah khairpur .', '', '', '', '', '', '', 'father', 'SYED SHAMSHEER', '03003358562', 'TEACHER', '', '', '', 'SYED SHAMSHEER', 'Father', '03003358562', 'TEACHER', '', '', 'no', '', '2020-06-29 11:44:16', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (39, '059', '2018/LLB/019', '2018-01-10', 'MUHAMMAD', 'SALEEM', 'No', 'uploads/student_images/no_image.png', '03443406070', '', NULL, NULL, NULL, 'Islam', 'SOLANGI', '2000-06-03', 'Male', 'police line head quarter block 4 quater no 17,18 dadu.', 'police line head quarter block 4 quater no 17,18 dadu.', '', '41201-3254535-5', '', '', '', '', 'father', 'GHULAM SARWAR', '03438292738', 'GOVT:SERVANT', '', '', '', 'GHULAM SARWAR', 'Father', '03438292738', 'GOVT:SERVANT', '', '', 'no', '', '2020-06-29 11:49:37', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (40, '105', '2018/LLB/021', '2018-01-11', 'MEHRAN', 'MALANO', 'No', 'uploads/student_images/no_image.png', '03482134541', '', NULL, NULL, NULL, 'Islam', 'MALANO', '1994-12-28', 'Male', 'H:No:159,3/2 raswah mori kotri jamshoro.', '', '', '41504-0509616-7', '', '', '', '', 'father', 'SHABIR AHMED', '03443322300', 'GOVT; EMPLOYEE', '', '', '', 'SHABIR AHMED', 'Father', '03443322300', 'GOVT; EMPLOYEE', '', '', 'no', '', '2020-06-30 11:24:09', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (41, '111', '2018/LLB/022', '2018-01-11', 'AQEEL', 'AHMED', 'No', 'uploads/student_images/no_image.png', '03043476584', '', NULL, NULL, NULL, 'Islam', 'KANDHRO', '2000-01-01', 'Male', 'village bazari kandhra taluka p.o  nasirabad ,qamber.', '', '', '43403-0398132-5', '', '', '', '', 'father', 'SHABIR AHMED', '-', 'TEACHER (R)', '', '', '', 'SHABIR AHMED', 'Father', '-', 'TEACHER (R)', '', '', 'no', '', '2020-06-30 11:33:12', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (42, '006', '2018/LLB/023', '2018-01-11', 'BAKHTAWAR', 'KHASKHELI', 'No', 'uploads/student_images/no_image.png', '03098069110', '', NULL, NULL, NULL, 'Islam', 'KHASKHELI', '1999-02-10', 'Female', 'H.No.837 malik mohalla kotri jamshoro.', 'H.No.837 malik mohalla kotri jamshoro.', '', '41504-0740919-6', '', '', '', '', 'mother', 'MASHOOQUE ALI', '-', 'DECEASED', 'NAHEED AKHTAR', '03113432516', '-', 'NAHEED AKHTAR', 'Mother', '03113432516', '-', '', '', 'no', '', '2020-06-30 11:41:56', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (43, '028', '2018/LLB/024', '2018-03-29', 'MUHAMMAD', 'HUSSAIN', 'No', 'uploads/student_images/no_image.png', '03003098797', '', NULL, NULL, NULL, 'Islam', 'JAHEJO', '1998-10-08', 'Male', 'H.No.266 baldia colony hyderabad.', '', '', '41302-0531163-1', '', '', '', '', 'father', 'MUHAMMAD JUMAN', '-', 'BUSINESSMAN', '', '', '', 'MUHAMMAD JUMAN', 'Father', '-', 'BUSINESSMAN', '', '', 'no', '', '2020-06-30 11:46:48', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (44, '072', '2018/LLB/025', '2018-01-11', 'LIAQUAT', 'ALI', 'No', 'uploads/student_images/no_image.png', '03123629554', '', NULL, NULL, NULL, 'Islam', 'KAPRI', '1999-05-07', 'Male', 'p.o and taluka bulhri shah karim tando.m.khan.', '', '', '41602-0635236-1', '', '', '', '', 'father', 'MUHAMMAD YAQOOB', '03023081026', 'GOVT; EMPLOYEE', '', '', '', 'MUHAMMAD YAQOOB', 'Father', '03023081026', 'GOVT; EMPLOYEE', '', '', 'no', '', '2020-06-30 11:51:15', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (45, '013', '2018/LLB/026', '2018-01-12', 'MIAN-DUR-SULTAN', 'RAJPUT', 'No', 'uploads/student_images/no_image.png', '03030039297', '', NULL, NULL, NULL, 'Islam', 'RAJPUT', '1995-02-20', 'Male', 'H.No.2b-265,ward no. 7 rajput muhalla nausheroferoz.', '', '', '45304-3296422-7', '', '', '', '', 'father', 'BASHEER AHMED ', '03342628747', 'SHOPKEEPER', '', '', '', 'BASHEER AHMED', 'Father', '03342628747', 'SHOPKEEPER', '', '', 'no', '', '2020-06-30 11:58:25', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (46, '192', '2018/LLB/027', '2018-03-14', 'ASIF', 'ALI', 'No', 'uploads/student_images/no_image.png', '03163223872', '', NULL, NULL, NULL, 'Islam', 'HINGORO', '1998-01-16', 'Male', 'H.No.151 mohalla shah latif colony nango line kotri jamshoro.', '', '', '41504-0466409-7', '', '', '', '', 'father', 'HAKIM ALI', '03009376950', 'GOVT; EMPLOYEE', '', '', '', 'HAKIM ALI', 'Father', '03009376950', 'GOVT; EMPLOYEE', '', '', 'no', '', '2020-06-30 12:04:39', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (47, '185', '2018/LLB/028', '2018-03-13', 'KHAN', 'MOHAMMAD', 'No', 'uploads/student_images/no_image.png', '03023600787', '', NULL, NULL, NULL, 'Islam', 'KANDHRO', '1999-02-28', 'Male', 'village daud kandhra street dak  khana bothro tehseel mehar ,dadu.', '', '', '43201-9329737-7', '', '', '', '', 'father', 'MOHAMMAD AZAM', '03083626304', 'BUSSINESSMAN', '', '', '', 'MOHAMMAD AZAM', 'Father', '03083626304', 'BUSSINESSMAN', '', '', 'no', '', '2020-06-30 12:10:12', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (48, '075', '2018/LLB/029', '2018-01-13', 'MUSKAN', 'GUL', 'No', 'uploads/student_images/no_image.png', '03147938031', '', NULL, NULL, NULL, 'Islam', 'KORAI', '2000-01-13', 'Female', 'village detha near al mustafa trust taluka qasimabad hyderabad.', '', '', '41504-0741479-2', '', '', '', '', 'father', 'AHMAD ALI', '03158966783', 'BUSINESSMAN ', '', '', '', 'AHMAD ALI', 'Father', '03158966783', 'BUSINESSMAN ', '', '', 'no', '', '2020-06-30 12:15:31', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (49, '110', '2018/LLB/030', '2018-01-13', 'ADIL', 'HUSSAIN', 'No', 'uploads/student_images/no_image.png', '03138556338', '', NULL, NULL, NULL, 'Islam', 'BHUTTO', '2000-09-08', 'Male', 'lakhra colony powehouse H.NO. b-3 jamshoro.', '', '', '41204-4713706-1', '', '', '', '', 'father', 'ABID HUSSAIN', '03138556338', 'GOVT; EMPLOYEE', '', '', '', 'ABID HUSSAIN', 'Father', '03138556338', 'GOVT; EMPLOYEE', '', '', 'no', '', '2020-06-30 12:19:47', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (50, '153', '2018/LLB/031', '2018-01-13', 'NAWAZ', 'ALI', 'No', 'uploads/student_images/no_image.png', '03121258273', '', NULL, NULL, NULL, 'Islam', 'DOMKI', '1998-07-28', 'Male', 'railway colony mohalla jafrabad ,jacobabad.', '', '', '43102-8369890-9', '', '', '', '', 'father', 'TARIQ ALI', '03322855309', 'TEACHER', '', '', '', 'TARIQ ALI', 'Father', '03322855309', 'TEACHER', '', '', 'no', '', '2020-06-30 14:52:49', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (51, '039', '2018/LLB/032', '2018-03-15', 'QALAB-E-ZAHRA', 'QAMBRANI', 'No', 'uploads/student_images/no_image.png', '03128329368', '', NULL, NULL, NULL, 'Islam', 'QAMBRANI', '1997-09-02', 'Female', 'model town B.No. B-59 wadhu wah road hyderabad.', '', '', '-', '', '', '', '', 'father', 'SIKANDAER ALI', '03003270005', 'GOVT; EMPLOYEE', '', '', '', 'SIKANDAER ALI', 'Father', '03003270005', 'GOVT; EMPLOYEE', '', '', 'no', '', '2020-06-30 14:57:27', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (52, '043', '2018/LLB/033', '2018-03-15', 'UROOJ', 'MEMON', 'No', 'uploads/student_images/no_image.png', '03069190341', '', NULL, NULL, NULL, 'Islam', 'MEMON', '1998-05-20', 'Female', 'memon muhalla shaheed road tandojam, hyderabad.', '', '', '41303-1531060-3', '', '', '', '', 'father', 'GUL MUHAMMAD ', '03063205519', '-', '', '', '', 'GUL MUHAMMAD', 'Father', '03063205519', '-', '', '', 'no', '', '2020-06-30 15:01:33', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (53, '035', '2018/LLB/034', '2018-04-02', 'UMAIR', 'AHMED', 'No', 'uploads/student_images/no_image.png', '03330230479', '', NULL, NULL, NULL, 'Islam', 'KOREJO', '1998-08-26', 'Male', 'near eid gah muhalla muhammad bux colony  shahdadpur, sanghar.', '', '', '44204-7899014-1', '', '', '', '', 'father', 'MAQSOOD AHMED', '03083434399', 'GOVT; EMPLOYEE', '', '', '', 'MAQSOOD AHMED', 'Father', '03083434399', 'GOVT; EMPLOYEE', '', '', 'no', '', '2020-06-30 15:07:45', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (54, '078', '2018/LLB/035', '2018-01-13', 'ABDUL', 'GHAFFAR', 'No', 'uploads/student_images/no_image.png', '03102712652', '', NULL, NULL, NULL, 'Islam', 'JANWARI', '1995-03-20', 'Male', 'village haji muhammad ali janwari tando.m.khan.', '', '', '41601-0649430-3', '', '', '', '', 'father', 'GHULAM HUSSAIN', '03113731844', 'FARMER', '', '', '', 'GHULAM HUSSAIN', 'Father', '03113731844', 'FARMER', '', '', 'no', '', '2020-06-30 15:13:01', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (55, '077', '2018/LLB/036', '2018-01-13', 'MUSHTAQUE', 'ALI', 'No', 'uploads/student_images/no_image.png', '03163172086', '', NULL, NULL, NULL, 'Islam', 'JANWARI', '1999-02-10', 'Male', 'village haji muhammad ali janwari tando.m.khan.', '', '', '41602-0638130-5', '', '', '', '', 'father', 'MUHAMMAD BUX', '03332809107', 'FARMER', '', '', '', 'MUHAMMAD BUX', 'Father', '03332809107', 'FARMER', '', '', 'no', '', '2020-06-30 15:20:57', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (56, '086', '2018/LLB/037', '2018-01-13', 'JAVED', 'ALI', 'No', 'uploads/student_images/no_image.png', '03003052984', '', NULL, NULL, NULL, 'Islam', 'JANWARI', '1997-07-02', 'Male', 'village haji muhammad ali janwari tando m.khan.', '', '', '41602-0634051-3', '', '', '', '', 'father', 'MUHAMMAD BUX', '03332809107', 'FARMER', '', '', '', 'MUHAMMAD BUX', 'Father', '03332809107', 'FARMER', '', '', 'no', '', '2020-06-30 15:31:42', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (57, '051', '2018/LLB/038', '2018-01-13', 'SALEEM', 'AHMED', 'No', 'uploads/student_images/no_image.png', '03043189836', '', NULL, NULL, NULL, 'Islam', 'BULEDI', '1999-02-10', 'Male', 'ghulshan-e- faiz colony tando.m.khan.', '', '', '43202-7888951-3', '', '', '', '', 'father', 'GHULAM QADIR', '03043189836', 'SHOPKEEPER', '', '', '', 'GHULAM QADIR', 'Father', '03043189836', 'SHOPKEEPER', '', '', 'no', '', '2020-06-30 15:37:32', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (58, '133', '2018/LLB/039', '2018-01-15', 'RIAZ', 'ALI', 'No', 'uploads/student_images/no_image.png', '03313830373', '', NULL, NULL, NULL, 'Islam', 'QUMBRANI', '1996-03-31', 'Male', 'ward no.6 khuja mohalla tando bago badin.', '', '', '41104-0326567-7', '', '', '', '', 'father', 'GUL MUHAMMAD ', '03340135508', '-', '', '', '', 'GUL MUHAMMAD', 'Father', '03340135508', '-', '', '', 'no', '', '2020-06-30 15:42:29', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (59, '094', '2018/LLB/040', '2018-01-16', 'MUHAMMAD', 'SHARIF', 'No', 'uploads/student_images/no_image.png', '03454999355', '', NULL, NULL, NULL, 'Islam', 'RAJAR', '1995-05-07', 'Male', 'village haji wariyam rajar umerkot.', '', '', '44403-8214954-3', '', '', '', '', 'father', 'KHER MUHAMMAD ', '03332683020', 'GOVT; EMPLOYEE', '', '', '', 'KHER MUHAMMAD', 'Father', '03332683020', 'GOVT; EMPLOYEE', '', '', 'no', '', '2020-06-30 15:47:54', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (61, '136', '2018/LLB/041', '2018-01-16', 'GHULAM', 'QADIR', 'No', 'uploads/student_images/no_image.png', '03333151586', '', NULL, NULL, NULL, 'Islam', 'MARI-BALOCH', '2000-05-10', 'Male', 'village khanwahan,kandiaro naushahro feroz.', '', '', '45302-7878241-7', '', '', '', '', 'father', 'MUHAMMAD IQBAL', '03333151586', 'MECHANICAL', '', '', '', 'MUHAMMAD IQBAL', 'Father', '03333151586', 'MECHANICAL', '', '', 'no', '', '2020-07-01 09:54:00', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (62, '091', '2k18/LLB/42', '2018-01-17', 'NIAZ', 'ALI', 'No', 'uploads/student_images/no_image.png', '03030309679', '', NULL, NULL, NULL, 'Islam', 'DAYO', '2000-03-09', 'Male', 'p.o muhammad pur odho garhi khairo jacobabad.', '', '', '43101-4622758-7', '', '', '', '', 'father', 'MEHBOOB ALI', '03023395289', 'TEACHER', '', '', '', 'MEHBOOB ALI', 'Father', '03023395289', 'TEACHER', '', '', 'no', '', '2020-07-02 15:10:48', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (63, '157', '2018/LLB/043', '2018-01-20', 'HASSAN', 'KHAN', 'No', 'uploads/student_images/no_image.png', '03163621963', '', NULL, NULL, NULL, 'Islam', 'DHAREJO', '1997-11-25', 'Male', 'dabbar muhalla panjhatii,khairpur mirs,khairpur.', '', '', '45203-0596503-3', '', '', '', '', 'father', 'KHADIM HUSSAIN', '03436174880', 'GOVT; EMPLOYEE', '', '', '', 'KHADIM HUSSAIN', 'Father', '03436174880', 'GOVT; EMPLOYEE', '', '', 'no', '', '2020-07-01 10:02:14', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (64, '087', '2018/LLB/044', '2018-01-31', 'RAMEEZ', 'AHMED', 'No', 'uploads/student_images/no_image.png', '03473126978', '', NULL, NULL, NULL, 'Islam', 'LAKHIAR', '1999-01-02', 'Male', 'village bora lakhiar p.o khairpur nathan shah, dadu.', '', '', '41201-6132093-9', '', '', '', '', 'father', 'MUSHTAQUE AHMED', '03088220965', 'FARMER', '', '', '', 'MUSHTAQUE AHMED', 'Father', '03088220965', 'FARMER', '', '', 'no', '', '2020-07-01 10:07:37', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (65, '134', '2018/LLB/045', '2018-01-18', 'BABAR', 'BEHRANI', 'No', 'uploads/student_images/no_image.png', '03003413726', '', NULL, NULL, NULL, 'Islam', 'BEHRANI', '1999-10-16', 'Male', 'kot ghulam muhammad bhurgari baladi colony near taheed masjid , mirpurkhas.', '', '', '44102-5834360-3', '', '', '', '', 'father', 'KHALID ALI', '03313805060', 'TRANSPORTER', '', '', '', 'KHALID ALI', 'Father', '03313805060', 'TRANSPORTER', '', '', 'no', '', '2020-07-01 10:12:00', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (66, '155', '2018/LLB/046', '2018-01-22', 'SAJID', 'HASSAN', 'No', 'uploads/student_images/no_image.png', '03033343198', '', NULL, NULL, NULL, 'Islam', 'WASSAN', '1999-05-03', 'Male', 'H.No.23 block no. A p.o jam nawaz ali, sanghar.', '', '', '44201-1634444-3', '', '', '', '', 'father', 'ALI HASSAN', '03073353455', 'PRIVATE EMPLOYEE', '', '', '', 'ALI HASSAN', 'Father', '03073353455', 'PRIVATE EMPLOYEE', '', '', 'no', '', '2020-07-01 10:18:14', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (67, '131', '2018/LLB/047', '2018-01-26', 'WASEEM', 'AHMED', 'No', 'uploads/student_images/no_image.png', '0304829829', '', NULL, NULL, NULL, 'Islam', 'SHAH', '1998-02-18', 'Male', 'p.o mohammad pur odho ,garhi khairo,jacobabad.', '', '', '43101-7615871-3', '', '', '', '', 'father', 'ZAHID HUSSAIN ', '03039712062', 'TEACHER', '', '', '', 'ZAHID HUSSAIN', 'Father', '03039712062', 'TEACHER', '', '', 'no', '', '2020-07-01 10:22:23', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (68, '151', '2018/LLB/048', '2018-02-13', 'JAVED', 'ALI', 'No', 'uploads/student_images/no_image.png', '03023075599', '', NULL, NULL, NULL, 'Islam', 'JUNEJO', '1998-11-10', 'Male', 'village din muhammad junejo,sanghar.', '', '', '44206-8642751-7', '', '', '', '', 'father', 'GHULAM QADIR ', '03023457971', 'GOVT; EMPLOYEE', '', '', '', 'GHULAM QADIR', 'Father', '03023457971', 'GOVT; EMPLOYEE', '', '', 'no', '', '2020-07-01 10:40:19', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (69, '064', '2018/LLB/049', '2018-05-03', 'TEHMINA', 'NAHIYOON', 'No', 'uploads/student_images/no_image.png', '03058274386', '', NULL, NULL, NULL, 'Islam', 'NAHIYOON', '2000-03-05', 'Male', 'village darya khan nahiyoon tando jam, hyderabad.', '', '', '41303-8466864-3', '', '', '', '', 'father', 'AMEER BUX ', '03003025851', 'BANK MANAGER', '', '', '', 'AMEER BUX', 'Father', '03003025851', 'BANK MANAGER', '', '', 'no', '', '2020-07-01 10:45:05', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (70, '160', '2018/LLB/050', '2018-01-29', 'PAWAN', 'KUMAR', 'No', 'uploads/student_images/no_image.png', '03111173141', '', NULL, NULL, NULL, 'HINDU', 'GUJAR', '1998-04-20', 'Male', 'plot#105 gareebabad meghwar mohalla ,umerkot.', '', '', '44401-2511848-5', '', '', '', '', 'father', 'KHOUSH-HAL-DAS', '034621290227', 'TEACHER (R)', '', '', '', 'KHOUSH-HAL-DAS', 'Father', '034621290227', 'TEACHER (R)', '', '', 'no', '', '2020-07-01 10:58:06', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (71, '158', '2018/LLB/051', '2018-01-29', 'MEESAQUE', 'RASOOL', 'No', 'uploads/student_images/no_image.png', '03413425669', '', NULL, NULL, NULL, 'Islam', 'MEMON', '1997-02-15', 'Male', 'akhund muhalla chuhar jamali , shah bander, sujawal.', '', '', '41904-0340272-5', '', '', '', '', 'father', 'GHULAM RASOOL', '03462216898', 'ADVOCATE', '', '', '', 'GHULAM RASOOL', 'Father', '03462216898', 'ADVOCATE', '', '', 'no', '', '2020-07-01 10:56:11', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (72, '173', '2018/LLB/052', '2018-02-16', 'IBRAR', 'ALI', 'No', 'uploads/student_images/no_image.png', '03088574452', '', NULL, NULL, NULL, 'Islam', 'HALEPOTO', '1997-01-05', 'Male', 'village talti sehwan, jamshoro.', '', '', '41206-0510900-9', '', '', '', '', 'father', 'ALI AKBER', '03062249188', 'POLICE OFFICER', '', '', '', 'ALI AKBER', 'Father', '03062249188', 'POL', '', '', 'no', '', '2020-07-01 11:01:55', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (73, '142', '2018/LLB/053', '2018-02-01', 'PERWAIZ', 'RODNANI', 'No', 'uploads/student_images/no_image.png', '03403480705', '', NULL, NULL, NULL, 'Islam', 'RODNANI', '1999-12-04', 'Male', 'village shahak rodnani johi, dadu.', '', '', '41202-9388226-1', '', '', '', '', 'father', 'SIKANDAR ALI', '03068585014', 'GOVT; EMPLOYEE', '', '', '', 'SIKANDAR ALI', 'Father', '03068585014', 'GOVT; EMPLOYEE', '', '', 'no', '', '2020-07-01 11:05:30', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (74, '143', '2018/LLB/054', '2018-02-02', 'RAJIB', 'ALI', 'No', 'uploads/student_images/no_image.png', '03073902463', '', NULL, NULL, NULL, 'Islam', 'BHANBHRO', '2000-11-01', 'Male', 'village matto khan bhanbhro deh janoji,sale patt, sukkur.', '', '', '45503-5771343-7', '', '', '', '', 'father', 'GUL MUHAMMAD ', '03009314162', 'FARMER', '', '', '', 'GUL MUHAMMAD', 'Father', '03009314162', 'FARMER', '', '', 'no', '', '2020-07-01 11:09:37', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (75, '027', '2018/LLB/055', '2018-02-02', 'RAJA AZAD', 'AKBER', 'No', 'uploads/student_images/no_image.png', '03052578420', '', NULL, NULL, NULL, 'Islam', 'KHERO', '1999-10-21', 'Male', 'H#C1 juducial complex near mehran university society ,jamshoro.', '', '', '-', '', '', '', '', 'father', 'ALI AKBER', '03003278488', 'GOVT; EMPLOYEE', '', '', '', 'ALI AKBER', 'Father', '03003278488', 'GOVT; EMPLOYEE', '', '', 'no', '', '2020-07-01 11:13:14', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (76, '144', '2018/LLB/056', '2020-07-01', 'MUHAMMAD', 'SAMI', 'No', 'uploads/student_images/no_image.png', '03012009012', '', NULL, NULL, NULL, 'Islam', 'KALHORO', '2000-05-01', 'Male', 'village peer ilyas kalhoro p.o khanwahan ,nausheroferoz.', '', '', '45305-0404776-7', '', '', '', '', 'father', 'IMDAD HUSSAIN', '03012598957', 'ARMY (R)', '', '', '', 'IMDAD HUSSAIN', 'Father', '03012598957', 'ARMY (R)', '', '', 'no', '', '2020-07-01 11:17:50', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (77, '141', '2018/LLB/057', '2018-02-05', 'HAMMAYOON', 'HUSSAIN', 'No', 'uploads/student_images/no_image.png', '03033034578', '', NULL, NULL, NULL, 'Islam', 'SOOMRO', '1999-02-15', 'Male', 'village qasim soomro ,mirpur bathoro,sujawal.', '', '', '41902-0346093-9', '', '', '', '', 'father', 'GHULAM HUSSAIN', '03007515026', 'GOVT; EMPLOYEE', '', '', '', 'GHULAM HUSSAIN', 'Father', '03007515026', 'GOVT; EMPLOYEE', '', '', 'no', '', '2020-07-01 11:31:31', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (78, '125', '2018/LLB/058', '2018-02-06', 'AJAY', 'KUMAR', 'No', 'uploads/student_images/no_image.png', '03363380040', '', NULL, NULL, NULL, 'HINDU', 'LOHANO', '1997-08-02', 'Male', 'arbani street talib-ul-mola colony hala new,matiari.', '', '', '41301-4284613-1', '', '', '', '', 'father', 'MANOHAR LAL', '03142842529', 'BUSINEEMAN', '', '', '', 'MANOHAR LAL', 'Father', '03142842529', 'BUSINEEMAN', '', '', 'no', '', '2020-07-01 11:35:37', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (79, '169', '2018/LLB/059', '2018-03-27', 'MAZHARUDDIN', 'KHOKHAR', 'No', 'uploads/student_images/no_image.png', '03452442499', '', NULL, NULL, NULL, 'Islam', 'KHOKHAR', '1995-10-06', 'Male', 'little angel`s model school khuda ki basti , kotri, jamshoro.', '', '', '43207-6993144-9', '', '', '', '', 'father', 'ROSHAN ALI ', '03088576419', 'FARMER', '', '', '', 'ROSHAN ALI', 'Father', '03088576419', 'FARMER', '', '', 'no', '', '2020-07-01 11:40:25', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (80, '062', '2018/LLB/060', '2018-03-16', 'MUAZZAM', 'MEMON', 'No', 'uploads/student_images/no_image.png', '03150134098', '', NULL, NULL, NULL, 'Islam', 'MEMON', '1999-11-16', 'Male', 'H#B 156 new labour colony site area ,hyderabd .', '', '', '41302-6940237-2', '', '', '', '', 'father', 'MUHAMMAD ANEES ', '03312357204', '-', '', '', '', 'MUHAMMAD ANEES', 'Father', '03312357204', '-', '', '', 'no', '', '2020-07-01 11:44:27', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (81, '115', '2018/LLB/061', '2018-02-07', 'NAZIR', 'ALI', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, '', '', '1997-01-15', 'Male', 'ward no: 311 mahar mohalla ,umerkot.', '', '', '44107-0792371-5', '', '', '', '', 'father', 'WALI MUHAMMAD ', '03113181482', 'SHOPKEEPER', '', '', '', 'WALI MUHAMMAD', 'Father', '03113181482', 'SHOPKEEPER', '', '', 'no', '', '2020-07-01 12:09:03', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (82, '092', '2018/LLB/062', '2018-02-07', 'NOOR', 'AHMED', 'No', 'uploads/student_images/no_image.png', '03313413061', '', NULL, NULL, NULL, 'Islam', 'KALHORO', '1996-02-17', 'Male', 'H#A4 anwar villas waqar town qasimabad , hyderabad.', '', '', '43403-0389838-5', '', '', '', '', 'father', 'MUHAMMAD ALI', '03313413061', 'FARMER', '', '', '', 'MUHAMMAD ALI', 'Father', '03313413061', 'FARMER', '', '', 'no', '', '2020-07-01 12:14:40', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (83, '147', '2018/LLB/063', '2018-02-07', 'SHAHID', 'OAD', 'No', 'uploads/student_images/no_image.png', '03161317850', '', NULL, NULL, NULL, '-', 'OAD', '1998-02-01', 'Male', 'H.no. B.45 near sameena banglows ali palace qasimabad , hyderabad .', 'block 5 quarter no. 23 behind cia police station ,sanghar.', '', '44203-5041499-7', '', '', '', '', 'father', 'RAJHAN', '03450185622', 'POLICE CONSTABLE', '', '', '', 'RAJHAN', 'Father', '03450185622', 'POLICE CONSTABLE', '', '', 'no', '', '2020-07-01 12:20:36', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (84, '129', '2018/LLB/064', '2018-02-07', 'RIAZ', 'ALI', 'No', 'uploads/student_images/no_image.png', '03461701786', '', NULL, NULL, NULL, 'Islam', 'DARS', '1997-03-15', 'Male', 'H.no. B45 near sameena banglows ali palace qasimabad ,hyderabad.', 'village muhammad paryal rajar, khipro,sanghar.', '', '44202-9312864-5', '', '', '', '', 'father', 'SOHRAB', '03461701786', 'TEACHER', '', '', '', 'SOHRAB', 'Father', '03461701786', 'TEACHER', '', '', 'no', '', '2020-07-01 12:26:14', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (85, '138', '2018/LLB/065', '2018-02-27', 'IRFAT', 'HUSSAIN', 'No', 'uploads/student_images/no_image.png', '03083612951', '', NULL, NULL, NULL, 'Islam', 'LAKHO', '1998-02-08', 'Male', 'p.o umeed ali lakho village saeed khan lakho ,nausheroferoz.', '', '', '45301-7693751-7', '', '', '', '', 'father', 'IKHTIAR HUSSAIN ', '03063571782', 'TUWEL OPERATOR', '', '', '', 'IKHTIAR HUSSAIN', 'Father', '03063571782', 'TUWEL OPERATOR', '', '', 'no', '', '2020-07-01 12:31:25', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (86, '150', '2018/LLB/066', '2018-02-07', 'SHAHZAD', 'MEMON', 'No', 'uploads/student_images/no_image.png', '03138644513', '', NULL, NULL, NULL, 'Islam', 'MEMON', '1999-11-12', 'Male', 'near session court jamshoro,m.amin town,jamshoro.', '', '', '41201-7338238-3', '', '', '', '', 'father', 'SAIFUDDIN', '03163412213', 'TEACHER', '', '', '', 'SAIFUDDIN', 'Father', '03163412213', 'TEACHER', '', '', 'no', '', '2020-07-01 12:35:09', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (87, '120', '2018/LLB/067', '2018-02-08', 'NOMAN', 'AHMED', 'No', 'uploads/student_images/no_image.png', '03483858349', '', NULL, NULL, NULL, 'Islam', 'LAGHARI', '2000-07-01', 'Male', 'ya ali colony giddi naka qasimabad,hyderabad.', 'village dittal khan laghari digri,mirpur khas.', '', '44101-1609740-1', '', '', '', '', 'father', 'NIAZ AHMED', '03461396891', 'PRIVATE JOB', '', '', '', 'NIAZ AHMED', 'Father', '03461396891', 'PRIVATE JOB', '', '', 'no', '', '2020-07-01 12:40:46', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (88, '116', '2018/LLB/068', '2018-02-08', 'MUHAMMAD', 'QADEER', 'No', 'uploads/student_images/no_image.png', '03483147004', '', NULL, NULL, NULL, 'Islam', 'SHAR', '2000-01-01', 'Male', 'village faqeer muhammad ameen shar ,khairpur.', '', '', '45201-578091-5', '', '', '', '', 'father', 'MUHAMMAD KHAN', '03413120732', 'TEACHER', '', '', '', 'MUHAMMAD KHAN', 'Father', '03413120732', 'TEACHER', '', '', 'no', '', '2020-07-01 12:44:25', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (89, '137', '2018/LLB/069', '2018-02-09', 'SHAZIA', 'JHATIAL', 'No', 'uploads/student_images/no_image.png', '03003076246', '', NULL, NULL, NULL, 'Islam', 'JHATIAL', '1998-07-31', 'Female', 'H.no.B16 muhammadi town near session court jamshoro.', 'eidgah muhalla radhan dadu.', '', '41205-0774623-8', '', '', '', '', 'father', 'ABDUL SATTAR', '03003076246', 'LANDLORD', '', '', '', 'ABDUL SATTAR', 'Father', '03003076246', 'LANDLORD', '', '', 'no', '', '2020-07-01 12:49:39', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (90, '117', '2018/LLB/070', '2020-07-01', 'ASAD', 'ALI', 'No', 'uploads/student_images/no_image.png', '03083498210', '', NULL, NULL, NULL, 'Islam', 'BUTT', '1998-01-17', 'Male', 'village butt serai tehsil mehar dadu.', '', '', '41205-3215854-3', '', '', '', '', 'father', 'AKHTIAR ALI ', '03023250834', 'GOVT; EMPLOYEE', '', '', '', 'AKHTIAR ALI', 'Father', '03023250834', 'GOVT; EMPLOYEE', '', '', 'no', '', '2020-07-01 12:53:02', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (91, '167', '2018/LLB/071', '2018-02-12', 'MUHAMMAD', 'WASEEM', 'No', 'uploads/student_images/no_image.png', '03103389660', '', NULL, NULL, NULL, 'Islam', 'RODNANI', '1999-04-01', 'Male', 'village shahak rodnani ,johi,dadu.', '', '', '41202-1893977-1', '', '', '', '', 'father', 'AZIZULLAH', '03052957977', 'LANDLORD', '', '', '', 'AZIZULLAH', 'Father', '03052957977', 'LANDLORD', '', '', 'no', '', '2020-07-01 13:07:05', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (92, '180', '2018/LLB/072', '2018-02-12', 'BABAR', 'ALI', 'No', 'uploads/student_images/no_image.png', '-', '', NULL, NULL, NULL, 'Islam', 'PATHAN', '1998-08-26', 'Male', 'H.NO 275 new labour colony site area ,hyderbad.', '', '', '41304-4315066-5', '', '', '', '', 'father', 'ZAHEERUDDIN', '033326822116', 'PRIVATE JOB', '', '', '', 'ZAHEERUDDIN', 'Father', '033326822116', 'PRIVATE JOB', '', '', 'no', '', '2020-07-01 13:11:53', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (93, '162', '2018/LLB/073', '2018-02-14', 'AMJAD', 'RAZA', 'No', 'uploads/student_images/no_image.png', '03013457548', '', NULL, NULL, NULL, 'Islam', 'BURIRO', '1998-09-02', 'Male', 'shahbaz colony near sindh bank sehwan shariff, jamshoro.', '', '', '41506-0447556-3', '', '', '', '', 'father', 'KARAM HUSSAIN', '-', '-', '', '', '', 'KARAM HUSSAIN', 'Father', '-', '-', '', '', 'no', '', '2020-07-01 13:15:15', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (94, '152', '2018/LLB/074', '2018-02-14', 'ABDUL', 'KHALIQUE', 'No', 'uploads/student_images/no_image.png', '03483612240', '', NULL, NULL, NULL, 'Islam', 'KUNBHER', '1999-02-05', 'Male', 'al falah boys hostel near qasim nagar chowk hyderabad.', 'village kheensar dahli , tharparhker.', '', '44301-7782025-3', '', '', '', '', 'father', 'MUHAMMAD SOOMAR', '03462161116', 'TEACHER', '', '', '', 'MUHAMMAD SOOMAR', 'Father', '03462161116', 'TEACHER', '', '', 'no', '', '2020-07-01 13:20:49', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (95, '172', '2018/LLB/075', '2018-02-14', 'WAQAR', 'ALI', 'No', 'uploads/student_images/no_image.png', '03083355686', '', NULL, NULL, NULL, 'Islam', 'KHASKHELI', '1998-12-28', 'Male', 'village ahmed khan khaskheli qazi ahmed , shaheed benazirabad.', '', '', '45401-9937080-5', '', '', '', '', 'father', 'GHULAM SARWAR', '03003221995', 'GOVT; EMPLOYEE', '', '', '', 'GHULAM SARWAR', 'Father', '03003221995', 'GOVT; EMPLOYEE', '', '', 'no', '', '2020-07-01 13:39:35', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (96, '196', '2018/LLB/076', '2018-03-15', 'ASADULLAH', 'CHANDIO', 'No', 'uploads/student_images/no_image.png', '03421302076', '', NULL, NULL, NULL, 'Islam', 'CHANDIO', '1999-02-12', 'Male', 'chandia iron shop main road k.n shah dadu.', '', '', '41203-6787035-9', '', '', '', '', 'father', 'TALIB', '-', '-', '', '', '', 'TALIB', 'Father', '-', '-', '', '', 'no', '', '2020-07-01 13:42:59', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (97, '023', '2018/LLB/077', '2018-04-03', 'VIKRAM', 'MAGHWAR', 'No', 'uploads/student_images/no_image.png', '03003046658', '', NULL, NULL, NULL, 'HINDU', 'MAGHWAR', '1999-01-08', 'Male', 'village muhab kakepoto p.o nasarpur ,tandoallahyar.', '', '', '41307-5811747-5', '', '', '', '', 'father', 'CHAMAN DAS', '03454991665', 'LANDLORD', '', '', '', 'CHAMAN DAS', 'Father', '03454991665', 'LANDLORD', '', '', 'no', '', '2020-07-01 13:46:51', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (98, '034', '2018/LLB/078', '2018-02-21', 'SAMINA', 'LUND', 'No', 'uploads/student_images/no_image.png', '03003420761', '', NULL, NULL, NULL, 'Islam', 'LUND', '2000-01-05', 'Female', 'village mureed lund ,tandoallahyar.', '', '', '41702-0610710-4', '', '', '', '', 'father', 'MUSHTAQUE AHMED ', '03013523341', '-', '', '', '', 'MUSHTAQUE AHMED', 'Father', '03013523341', '-', '', '', 'no', '', '2020-07-01 13:50:49', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (99, '182', '2018/LLB/079', '2018-05-21', 'KASHIF', 'KHAN', 'No', 'uploads/student_images/no_image.png', '03000219689', '', NULL, NULL, NULL, 'Islam', 'GOPANG', '1998-09-17', 'Male', 'village ali sher gopang,mirokhan,qamber.', '', '', '43404-0420571-7', '', '', '', '', 'father', 'QAMARUDDIN', '03362888211', 'LANDLORD', '', '', '', 'QAMARUDDIN', 'Father', '03362888211', 'LANDLORD', '', '', 'no', '', '2020-07-01 13:54:48', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (100, '166', '2018/LLB/080', '2018-02-16', 'WARIS', 'ALI', 'No', 'uploads/student_images/no_image.png', '03480399593', '', NULL, NULL, NULL, 'Islam', 'SOLANGI', '2000-01-01', 'Male', 'B.59 samina banglows qasimabad hyderabad.', '', '', '41201-3756060-5', '', '', '', '', 'father', 'HAKIM ALI', '03333052456', '-', '', '', '', 'HAKIM ALI', 'Father', '03333052456', '-', '', '', 'no', '', '2020-07-01 13:58:35', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (101, '184', '2018/LLB/081', '2018-02-23', 'YASIR', 'MAZNANI', 'No', 'uploads/student_images/no_image.png', '03403959609', '', NULL, NULL, NULL, 'Islam', 'MAZNANI', '2000-01-01', 'Male', 'mehwal street H.NO A900-151 muhalla gareebabad dadu.', '', '', '41201-1527250-9', '', '', '', '', 'father', 'IMDADULLAH', '03461108188', 'TEACHER', '', '', '', 'IMDADULLAH', 'Father', '03461108188', 'TEACHER', '', '', 'no', '', '2020-07-01 14:04:02', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (102, '127', '2018/LLB/082', '2018-02-26', 'NOOR', 'SHAFI', 'No', 'uploads/student_images/no_image.png', '03070320337', '', NULL, NULL, NULL, 'Islam', 'SOOMRO', '1998-12-20', 'Male', 'flat no.10 B-block 3rd floor ,river view plaz, hyderabad .', 'soomra muhalla ranpur,khairpur.', '', '45208-8188746-7', '', '', '', '', 'father', 'SHAFI MUHAMMAD', '03322797966', 'TEACHER', '', '', '', 'SHAFI MUHAMMAD', 'Father', '03322797966', 'TEACHER', '', '', 'no', '', '2020-07-01 14:09:02', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (103, '179', '2018/LLB/083', '2018-02-26', 'GHULAM', 'MUAHAMMAD', 'No', 'uploads/student_images/no_image.png', '03042972703', '', NULL, NULL, NULL, 'Islam', 'LAGHARI', '1999-12-08', 'Male', 'village jaffar khan laghari sinjhoro , sanghar.', '', '', '44205-8025171-9', '', '', '', '', 'father', 'KHADIM HUSSAIM', '03421347762', 'LANDLORD', '', '', '', 'KHADIM HUSSAIM', 'Father', '03421347762', 'LANDLORD', '', '', 'no', '', '2020-07-01 14:12:48', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (104, '177', '2018/LLB/084', '2018-02-27', 'MAKHDOOM FURQAN', 'ALI', 'No', 'uploads/student_images/no_image.png', '03013472034', '', NULL, NULL, NULL, 'Islam', 'SOLANGI', '1997-10-16', 'Male', 'sonheri village tharu shah ,nausheroferoz.', '', '', '45301-0769198-1', '', '', '', '', 'father', 'MAKHDOOM QURBAN ALI', '03003030956', 'LANDLORD', '', '', '', 'MAKHDOOM QURBAN ALI', 'Father', '03003030956', 'LANDLORD', '', '', 'no', '', '2020-07-01 14:16:34', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (105, '186', '2018/LLB/085', '2018-03-02', 'NASEER', 'MOHAMMAD', 'No', 'uploads/student_images/no_image.png', '03430387154', '', NULL, NULL, NULL, 'Islam', 'RAWAHI', '1996-07-07', 'Male', 'village jamsheer rawahi ratodero,larkana.', '', '', '43205-6012319-9', '', '', '', '', 'father', 'ALI AKBER', '-', 'POLICE OFFICER', '', '', '', 'ALI AKBER', 'Father', '-', 'POLICE OFFICER', '', '', 'no', '', '2020-07-07 12:31:35', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (106, '190', '2018/LLB/086', '2018-03-02', 'INAYAT', 'HUSSAIN', 'No', 'uploads/student_images/no_image.png', '03058159755', '', NULL, NULL, NULL, 'Islam', 'BIJARANI', '1997-03-03', 'Male', 'gulistan-e-sajjad qasimabad, block -c -75 ,hyderabad.', '', '', '43103-3150959-9', '', '', '', '', 'father', 'NIZAKAT ALI', '03063352556', 'ADVOCATE', '', '', '', 'NIZAKAT ALI', 'Father', '03063352556', 'ADVOCATE', '', '', 'no', '', '2020-07-01 14:24:00', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (107, '187', '2018/LLB/087', '2018-03-05', 'BASIT', 'HUSSAIN', 'No', 'uploads/student_images/no_image.png', '03317015550', '', NULL, NULL, NULL, 'Islam', 'MEMON', '1998-09-23', 'Male', 'H.no. 2141/151  near bulhari road shaheedbenazirabad.', '', '', '45402-3537333-3', '', '', '', '', 'father', 'NIZAKAT HUSSAIN', '03033408505', 'GOVT; EMPLOYEE', '', '', '', 'NIZAKAT HUSSAIN', 'Father', '03033408505', 'GOVT; EMPLOYEE', '', '', 'no', '', '2020-07-01 14:28:01', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (108, '189', '2018/LLB/088', '2018-03-03', 'SUHAIL', 'AHMED', 'No', 'uploads/student_images/no_image.png', '03003928012', '', NULL, NULL, NULL, 'Islam', 'GOPANG', '2000-06-01', 'Male', 'H.No. 81 near meer tombs herabad hyderabad.', 'village ghazi khan gopang p.o kandiaro, nausheroferoz.', '', '45302-0159722-1', '', '', '', '', 'father', 'NISAR AHMED', '03033651070', 'GOVT; EMPLOYEE', '', '', '', 'NISAR AHMED', 'Father', '03033651070', 'GOVT; EMPLOYEE', '', '', 'no', '', '2020-07-01 14:32:00', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (109, '058', '2018/LLB/089', '2018-01-10', 'AZHAR', 'ALI', 'No', 'uploads/student_images/no_image.png', '03410240391', '', NULL, NULL, NULL, 'Islam', 'CHANNA', '1999-01-01', 'Male', 'daryabad colony nango line kotri,jamshoro.', '', '', '41504-0497704-7', '', '', '', '', 'father', 'ANDAL KHAN', '03003076891', 'GOVT; EMPLOYEE', '', '', '', 'ANDAL KHAN', 'Father', '03003076891', 'GOVT; EMPLOYEE', '', '', 'no', '', '2020-07-01 14:36:03', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (110, '191', '2018/LLB/090', '2018-03-08', 'GUL', 'MUHAMMAD', 'No', 'uploads/student_images/no_image.png', '03133237686', '', NULL, NULL, NULL, 'Islam', 'DAHRI', '1999-04-02', 'Male', 'flat no. 10 nisar-e-niaz building hirabad hyderabad.', '', '', '41303-1328138-9', '', '', '', '', 'father', 'GHULAM ABBAS', '-', 'LANDLORD', '', '', '', 'GHULAM ABBAS', 'Father', '-', 'LANDLORD', '', '', 'no', '', '2020-07-01 14:39:48', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (111, '193', '2018/LLB/091', '2018-03-07', 'ABDUL', 'SAMAD', 'No', 'uploads/student_images/no_image.png', '03063561261', '', NULL, NULL, NULL, 'Islam', 'MALLAH', '1999-01-01', 'Male', 'H.no.D-23 thandi s.r.t.c colony kfc hotel thandi sarak,hyderabad.', '', '', '41306-5973522-7', '', '', '', '', 'father', 'AIJAZ ALI', '03123355251', 'GOVT; EMPLOYEE', '', '', '', 'AIJAZ ALI', 'Father', '03123355251', 'GOVT; EMPLOYEE', '', '', 'no', '', '2020-07-01 14:43:41', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (112, '171', '2018/LLB/092', '2018-03-18', 'ASHFAQUE', 'ALI', 'No', 'uploads/student_images/no_image.png', '03047158606', '', NULL, NULL, NULL, 'Islam', 'GHANGHRO', '1999-02-02', 'Male', 'village bakhar khan ghanghro ,kandiaro,nausheroferoz.', '', '', '-', '', '', '', '', 'father', 'RASOOL BUX ', '03002776439', '-', '', '', '', 'RASOOL BUX', 'Father', '03002776439', '-', '', '', 'no', '', '2020-07-01 14:47:36', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (113, '057', '2018/LLB/094', '2018-03-10', 'ZAHEER', 'AHMED', 'No', 'uploads/student_images/no_image.png', '03103791511', '', NULL, NULL, NULL, 'Islam', 'SUBUHPOTO', '1998-01-26', 'Male', 'H.NO.1440 muhalla satti ward no 7-a hala new ,matiari.', '', '', '41802-0608154-1', '', '', '', '', 'father', 'MUHAMMAD ASLAM', '03151301017', 'LANDLORD', '', '', '', 'MUHAMMAD ASLAM', 'Father', '03151301017', 'LANDLORD', '', '', 'no', '', '2020-07-01 14:53:05', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (114, '052', '2018/LLB/095', '2018-03-03', 'MOHAMMAD', 'KHAN', 'No', 'uploads/student_images/no_image.png', '03052434664', '', NULL, NULL, NULL, 'Islam', 'RIND', '2000-02-01', 'Male', 'near hascol petrol pump sehwan sharif ,jamshoro.', '', '', '41506-0454271-5', '', '', '', '', 'father', 'NOOR MOHAMMAD', '03068377799', 'LANDLORD', '', '', '', 'NOOR MOHAMMAD', 'Father', '03068377799', 'LANDLORD', '', '', 'no', '', '2020-07-01 14:56:43', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (115, '049', '2018/LLB/096', '2018-03-12', 'ABDUL', 'HAMEED', 'No', 'uploads/student_images/no_image.png', '03083110006', '', NULL, NULL, NULL, 'Islam', 'SAND', '1996-01-25', 'Male', 'village meer hassan gadehi k.n shah, dadu.', '', '', '41203-7064933-9', '', '', '', '', 'father', 'MUHAMMAD URIS ', '-', 'FARMER', '', '', '', 'MUHAMMAD URIS', 'Father', '-', 'FARMER', '', '', 'no', '', '2020-07-01 14:59:55', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (116, '066', '2018/LLB/097', '2018-03-13', 'UROOJ', 'FATIMA', 'No', 'uploads/student_images/no_image.png', '03423186722', '', NULL, NULL, NULL, 'Islam', 'BARICHO', '2000-04-08', 'Female', 'qalanderabad colony baricho chowk kotri,jamshoro.', '', '', '41504-0741662-6', '', '', '', '', 'father', 'GHULAM RAZA', '03113088877', 'GOVT; EMPLOYEE', '', '', '', 'GHULAM RAZA', 'Father', '03113088877', 'GOVT; EMPLOYEE', '', '', 'no', '', '2020-07-01 15:03:30', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (117, '069', '2018/LLB/098', '2018-03-13', 'YOUNIS', 'HABIB', 'No', 'uploads/student_images/no_image.png', '03153236707', '', NULL, NULL, NULL, 'Islam', 'LASHARI', '2000-02-05', 'Male', 'housing society nawabshah ghulshan-e-dawood ,shaheebenazirabad.', '', '', '45208-6213095-3', '', '', '', '', 'father', 'HABIB-UR-REHMAN', '03412232277', 'POLICE OFFICER', '', '', '', 'HABIB-UR-REHMAN', 'Father', '03412232277', 'POLICE OFFICER', '', '', 'no', '', '2020-07-01 15:07:07', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (118, '026', '2018/LLB/100', '2018-03-14', 'SHOAIB', 'KORAI', 'No', 'uploads/student_images/no_image.png', '03083000913', '', NULL, NULL, NULL, 'Islam', 'KORAI', '2000-10-10', 'Male', 'jagatabad muhalla near samejo house ,dadu.', '', '', '41201-0129010-9', '', '', '', '', 'father', 'MUHAMMAD SIDDIQUE ', '03052354288', 'GOVT; EMPLOYEE', '', '', '', 'MUHAMMAD SIDDIQUE', 'Father', '03052354288', 'GOVT; EMPLOYEE', '', '', 'no', '', '2020-07-01 15:10:53', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (119, '103', '2018/LLB/020', '2018-01-11', 'PREH', 'TALPUR', 'No', 'uploads/student_images/no_image.png', '03170389906', '', NULL, NULL, NULL, 'Islam', 'TALPUR', '1991-09-11', 'Female', 'H.no. B21 sindh university employee housing society phase 1 jamshoro.', '', '', '41303-7803679-4', '', '', '', '', 'father', 'FAROOQ AHMED', '03478885888', 'LANDLORD', '', '', '', 'FAROOQ AHMED', 'Father', '03478885888', 'LANDLORD', '', '', 'no', '', '2020-07-01 15:36:11', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (120, '025', '2018/LLB/093', '2020-07-01', 'MUQADUS', 'NOOR', 'No', 'uploads/student_images/no_image.png', '-', '', NULL, NULL, NULL, 'Islam', 'KAKA', '1995-12-14', 'Female', 'H.NO. A-150 phse 1 S.E.U.H. jamshoro.', '', '', '42301-0555968-0', '', '', '', '', 'father', 'NOOR MUHAMMAD ', '03212978202', 'LANDLORD', '', '', '', 'NOOR MUHAMMAD', 'Father', '03212978202', 'LANDLORD', '', '', 'no', '', '2020-07-01 15:40:06', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (121, '029', '2018/LLB/007', '2018-03-30', 'BILAWAL', 'ALI', 'No', 'uploads/student_images/no_image.png', '03483938823', '', NULL, NULL, NULL, 'Islam', 'CHHACHHAR', '1996-07-27', 'Male', ' village wada chhachhar manjhand amri, jamshoro.', '', '', '41500-0349270-1', '', '', '', '', 'father', 'HUSSAIN BUX ', '03456089737', 'FARMER', '', '', '', 'HUSSAIN BUX', 'Father', '03456089737', 'FARMER', '', '', 'no', '', '2020-07-01 15:43:37', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (122, '148', '2018/LLB/099', '2018-03-18', 'SAADULLAH', 'GAHOTHI', 'No', 'uploads/student_images/no_image.png', '03083512908', '', NULL, NULL, NULL, 'Islam', 'GAHOTHI', '1997-05-03', 'Male', 'arbab muhalla new hala near arbab imam bargah, matiari.', '', '', '41301-2809237-9', '', '', '', '', 'father', 'GHULAM RASOOL ', '03008373890', 'ENGINEER (R)', '', '', '', 'GHULAM RASOOL', 'Father', '03008373890', 'ENGINEER (R)', '', '', 'no', '', '2020-07-01 15:47:51', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (123, '001', 'LLB/2KI9/001', '2019-05-02', 'MOHAMMAD', 'AHSAN', 'No', 'uploads/student_images/no_image.png', '03472491032', '', NULL, NULL, NULL, 'Islam', 'KALHORO', '2001-04-10', 'Male', 'B-22 MOHAMMADI TOWN ,WADHU WAH ROAD, QASIMABAD ,HYDERABAD.', 'EID GAH MUHALLA,RADHAN STATION ,MEHAR  ,DADU.', '', '41205-4094136-7', '', '', '', '', 'father', 'AZIZ-U-RAHMAN', '-', 'GOVT; EMPLOYEE', '', '', '', 'AZIZ-U-RAHMAN', 'Father', '-', 'GOVT; EMPLOYEE', '', '', 'no', '', '2020-07-07 15:22:26', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (124, '002', '2019/LLB/002', '2019-06-11', 'ASFANDYAR', 'ABBASI', 'No', 'uploads/student_images/no_image.png', '03327942966', '', NULL, NULL, NULL, 'Islam', 'ABBASI', '1998-08-15', 'Male', 'H#NO; B-61 AL KHAIR HOUSING SOCIETY NEAR BYPASS, HYDERABAD.', '', '', '41306-0975792-3', '', '', '', '', 'father', 'JUNAID ABBASI', '-', 'POLICE OFFICER', '', '', '', 'JUNAID ABBASI', 'Father', '-', 'POLICE OFFICER', '', '', 'no', '', '2020-07-07 15:27:26', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (125, '003', '2019/LLB/003', '2018-12-07', 'JAVED', 'ALI', 'No', 'uploads/student_images/no_image.png', '03033400735', '', NULL, NULL, NULL, 'Islam', 'HALEPOTO', '1999-01-05', 'Male', 'H#NO; A-57 MIR HASSANABAD,HUSSAINABAD,HYDERABAD.', 'VILLAGE TALTI SEHWAN,JAMSHORO.', '', '41506-0359745-7', '', '', '', '', 'father', 'MUHAMMAD MOOSA', '-', 'GOVT; EMPLOYEE', '', '', '', 'MUHAMMAD MOOSA', 'Father', '-', 'GOVT; EMPLOYEE', '', '', 'no', '', '2020-07-07 15:32:04', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (126, '4', '2019/LLB/004', '2018-12-12', 'AAMIR', 'BIJARANI', 'No', 'uploads/student_images/no_image.png', '03061757907', '', NULL, NULL, NULL, 'Islam', 'BIJARANI', '2001-02-14', 'Male', 'VILLAGE GULZAR KHAN BAHALKANI,TANGWANI,KASHMORE,KANDHKOT.', '', '', '43502-0429026-7', '', '', '', '', 'father', 'ZAKIR HUSSAIN', '-', 'HEAD CONSTABLE', '', '', '', 'ZAKIR HUSSAIN', 'Father', '-', 'HEAD CONSTABLE', '', '', 'no', '', '2020-07-07 15:37:27', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (127, '52', '2019/LLB/005', '2018-12-03', 'GHULAM', 'KAZIM', 'No', 'uploads/student_images/no_image.png', '03041975411', '', NULL, NULL, NULL, 'Islam', 'MAREE-BALOCH', '2001-07-14', 'Male', 'RAESS UMEED ALI MARI ,MEHRABPUR,NAUSHEROFEROZ.', '', '', '45302-8557268-7', '', '', '', '', 'father', 'GHULAM MURTAZA', '-', 'FARMER', '', '', '', 'GHULAM MURTAZA', 'Father', '-', 'FARMER', '', '', 'no', '', '2020-07-07 15:42:15', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (128, '56', '2019/LLB/06', '2019-05-20', 'GHULAM', 'JAN JANAN', 'No', 'uploads/student_images/no_image.png', '03488582706', '', NULL, NULL, NULL, 'Islam', 'KALHORO', '2000-04-20', 'Male', 'B-22A MUHAMADI TOWN WADHU WAH ROAD,QASIMABAD,HYDERABAD.', 'EIDGAH MUHALLA RADHAN STATION ,MEHAR,DADU.', '', '41205-7891505-1', '', '', '', '', 'father', 'AZIZ-U-REHMAN', '-', 'GOVT; EMPLOYEE', '', '', '', 'AZIZ-U-REHMAN', 'Father', '-', 'GOVT; EMPLOYEE', '', '', 'no', '', '2020-07-07 15:47:34', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (129, '080', '2019/LLB/008', '2019-08-26', 'BUSHRA', 'SHABIR', 'No', 'uploads/student_images/no_image.png', '03468900360', '', NULL, NULL, NULL, 'Islam', 'SANGHERA', '1998-12-31', 'Female', 'ALMANSORA COLONY SANGHAR NEAR BOYS DEGREE COLLEGE ,SANGHAR.', '', '', '44205-6470718-2', '', '', '', '', 'father', 'SHABIR HUSSAIN', '-', 'TEACHER', '', '', '', 'SHABIR HUSSAIN', 'Father', '-', 'TEACHER', '', '', 'no', '', '2020-07-07 15:52:28', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (130, '009', '2019/LLB/009', '2019-08-28', 'UMME', 'HAFZA', 'No', 'uploads/student_images/no_image.png', '03332831991', '', NULL, NULL, NULL, 'Islam', 'QUMBRANI', '2000-08-04', 'Male', 'H#NO; 309 MUHALLA UNAR PARA TANDOALLAHYAR.', '', '', '41701-0670751-6', '', '', '', '', 'father', 'NISAR AHMED', '-', 'GOVT; EMPLOYEE', '', '', '', 'NISAR AHMED', 'Father', '-', 'GOVT; EMPLOYEE', '', '', 'no', '', '2020-07-07 15:56:15', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (131, '010', '2019/LLB/010', '2019-09-26', 'ABDUL', 'GHAFFAR', 'No', 'uploads/student_images/no_image.png', '03000867892', '', NULL, NULL, NULL, 'Islam', 'BROHI', '2000-01-10', 'Male', 'VILLAGE EIDEN BROHI BANGUDARO,LARKANA.', '', '', '43205-9835449-7', '', '', '', '', 'father', 'AHMED BUX', '-', 'LANDLORD', '', '', '', 'AHMED BUX', 'Father', '-', 'LANDLORD', '', '', 'no', '', '2020-07-07 16:00:28', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (132, '11', '2019/LLB/011', '2019-08-20', 'ARIF', 'ALI', 'No', 'uploads/student_images/no_image.png', '03032278877', '', NULL, NULL, NULL, 'Islam', 'SAHITO', '2001-07-13', 'Male', 'ALIABAD COLONY HALA NAKA NEAR ISRA UNIVERSITY,HYDERABAD.', '', '', '45302-9697221-5', '', '', '', '', 'father', 'GHULAM MUSTAFA', '-', 'POLICE OFFICER', '', '', '', 'GHULAM MUSTAFA', 'Father', '-', 'POLICE OFFICER', '', '', 'no', '', '2020-07-07 16:04:59', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (133, '012', '2019/LLB/012', '2019-09-23', 'KHALID', 'AMEER', 'No', 'uploads/student_images/no_image.png', '03368777939', '', NULL, NULL, NULL, 'Islam', 'GOPANG', '1992-01-12', 'Male', 'H#NO: 3 A-90 PILAZA S.U.E.C.H JAMSHORO', 'STATION ROAD KAMBER ALI KHAN .', '', '43402-0435749-9', '', '', '', '', 'father', 'AMEER ALI', '-', 'GOVT; EMPLOYEE', '', '', '', 'AMEER ALI', 'Father', '-', 'GOVT; EMPLOYEE', '', '', 'no', '', '2020-07-07 16:09:21', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (134, '13', '2019/LLB/013', '2019-01-01', 'GHULAM', 'QASIM', 'No', 'uploads/student_images/no_image.png', '03450609786', '', NULL, NULL, NULL, 'Islam', 'RAHIMO', '2000-05-04', 'Male', 'FLAT NO: 15 MUSFIRA TOWER PHASE-II QASIMABAD.HYDERABAD.', '', '', '41702-0627075-7', '', '', '', '', 'father', 'ANWAR ALI', '-', 'GOVT; EMPLOYEE', '', '', '', 'ANWAR ALI', 'Father', '-', 'GOVT; EMPLOYEE', '', '', 'no', '', '2020-07-07 16:14:05', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (135, '014', '2019/LLB/014', '2019-08-21', 'ABDUL', 'WAHEED', 'No', 'uploads/student_images/no_image.png', '03450257625', '', NULL, NULL, NULL, 'Islam', 'KALHORO', '1973-02-07', 'Male', 'S.U.E.H.S PHASE-I  A366/2 JAMSHORO.', '', '', '41205-8058044-1', '', '', '', '', 'father', 'GHULAM ABBAS ', '-', 'LANDLORD', '', '', '', 'GHULAM ABBAS', 'Father', '-', 'LANDLORD', '', '', 'no', '', '2020-07-07 16:18:55', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (136, '015', '2019/LLB/015', '2019-09-02', 'PIRAH', 'MEMON', 'No', 'uploads/student_images/no_image.png', '03143878155', '', NULL, NULL, NULL, 'Islam', 'MEMON', '1999-07-08', 'Female', 'GHOUSABAD MUHALLA NEAR CITY SCHOOL ,KOTRI.', '', '', '41504-0727614-4', '', '', '', '', 'father', 'GHULAM MUSTAFA', '-', 'GOVT; EMPLOYEE', '', '', '', 'GHULAM MUSTAFA', 'Father', '-', 'GOVT; EMPLOYEE', '', '', 'no', '', '2020-07-07 16:22:51', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (137, '016', '2019/LLB/016', '2019-09-11', 'ALI', 'RAZA', 'No', 'uploads/student_images/no_image.png', '03000219689', '', NULL, NULL, NULL, 'Islam', 'MANGI', '1997-11-04', 'Male', 'SOCIETY PHASE-II JAMSHORO.', 'VILLAGE JARO MANGI GARHI YASEEN ,SHIKARPUR.', '', '43301-8983713-7', '', '', '', '', 'father', 'GHULAM SHABIR', '-', 'GOVT; EMPLOYEE', '', '', '', 'GHULAM SHABIR', 'Father', '-', 'GOVT; EMPLOYEE', '', '', 'no', '', '2020-07-07 16:28:38', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (138, '017', '2019/LLB/017', '2019-09-02', 'AADIL', 'NAWAZ', 'No', 'uploads/student_images/no_image.png', '03337112345', '', NULL, NULL, NULL, 'Islam', 'KHOSO', '1998-04-30', 'Male', 'VILLAGE MURAD ALI,JHAT PAT ,JAFRABABAD.', '', '', '53403-3032588-7', '', '', '', '', 'father', 'AHMED NAWAZ', '-', '-', '', '', '', 'AHMED NAWAZ', 'Father', '-', '-', '', '', 'no', '', '2020-07-07 16:38:16', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (139, '018', '2019/LLB/018', '2019-09-25', 'ALI', 'AZHAR', 'No', 'uploads/student_images/no_image.png', '03033536923', '', NULL, NULL, NULL, 'Islam', 'KUNBHAR', '2000-05-10', 'Male', 'B#507 ,PHASE-I NEAR POST OFFICE ,ALI PALACE,QASIMABAD,HYDERABAD.', '', '', '44202-0115385-5', '', '', '', '', 'father', 'ALI AKBER', '-', 'GOVT; EMPLOYEE', '', '', '', 'ALI AKBER', 'Father', '-', 'GOVT; EMPLOYEE', '', '', 'no', '', '2020-07-07 16:41:47', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: subjects
#

DROP TABLE IF EXISTS `subjects`;

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `subjects` (`id`, `name`, `code`, `type`, `is_active`, `created_at`, `updated_at`) VALUES (1, 'English Language', '301', 'Theory', 'no', '2019-03-08 10:09:35', '0000-00-00 00:00:00');
INSERT INTO `subjects` (`id`, `name`, `code`, `type`, `is_active`, `created_at`, `updated_at`) VALUES (2, 'Pakistan Studies', '302', 'Theory', 'no', '2019-03-08 10:06:33', '0000-00-00 00:00:00');
INSERT INTO `subjects` (`id`, `name`, `code`, `type`, `is_active`, `created_at`, `updated_at`) VALUES (3, 'Introduction to Jurisprudence-I', '303', 'Theory', 'no', '2019-03-08 10:07:23', '0000-00-00 00:00:00');
INSERT INTO `subjects` (`id`, `name`, `code`, `type`, `is_active`, `created_at`, `updated_at`) VALUES (4, 'Introduction to Sociology', '304', 'Theory', 'no', '2019-03-08 10:07:53', '0000-00-00 00:00:00');
INSERT INTO `subjects` (`id`, `name`, `code`, `type`, `is_active`, `created_at`, `updated_at`) VALUES (5, 'Legal System of Pakistan', '305', 'Theory', 'no', '2019-03-08 10:08:34', '0000-00-00 00:00:00');
INSERT INTO `subjects` (`id`, `name`, `code`, `type`, `is_active`, `created_at`, `updated_at`) VALUES (6, 'Law of Contract-I', '306', 'Theory', 'no', '2019-03-08 10:08:57', '0000-00-00 00:00:00');
INSERT INTO `subjects` (`id`, `name`, `code`, `type`, `is_active`, `created_at`, `updated_at`) VALUES (7, 'English Language-II', '307', 'Theory', 'no', '2019-03-08 10:09:56', '0000-00-00 00:00:00');
INSERT INTO `subjects` (`id`, `name`, `code`, `type`, `is_active`, `created_at`, `updated_at`) VALUES (8, 'Islamic Studies/Ethics', '308', 'Theory', 'no', '2019-03-08 10:10:29', '0000-00-00 00:00:00');
INSERT INTO `subjects` (`id`, `name`, `code`, `type`, `is_active`, `created_at`, `updated_at`) VALUES (9, 'Introduction to Jurisprudence-II', '309', 'Theory', 'no', '2019-03-08 10:11:03', '0000-00-00 00:00:00');
INSERT INTO `subjects` (`id`, `name`, `code`, `type`, `is_active`, `created_at`, `updated_at`) VALUES (10, 'Skills Development', '310', 'Theory', 'no', '2019-03-08 10:11:42', '0000-00-00 00:00:00');
INSERT INTO `subjects` (`id`, `name`, `code`, `type`, `is_active`, `created_at`, `updated_at`) VALUES (11, 'Constitutional Development of Pakistan', '311', 'Theory', 'no', '2019-03-08 10:12:03', '0000-00-00 00:00:00');
INSERT INTO `subjects` (`id`, `name`, `code`, `type`, `is_active`, `created_at`, `updated_at`) VALUES (12, 'Law of Contract-II', '312', 'Theory', 'no', '2019-03-08 10:12:32', '0000-00-00 00:00:00');
INSERT INTO `subjects` (`id`, `name`, `code`, `type`, `is_active`, `created_at`, `updated_at`) VALUES (13, 'Public International Law-I', '401', 'Theory', 'no', '2019-03-08 10:12:54', '0000-00-00 00:00:00');
INSERT INTO `subjects` (`id`, `name`, `code`, `type`, `is_active`, `created_at`, `updated_at`) VALUES (14, 'Constitutional Law - I', '402', 'Theory', 'no', '2019-03-08 10:13:21', '0000-00-00 00:00:00');
INSERT INTO `subjects` (`id`, `name`, `code`, `type`, `is_active`, `created_at`, `updated_at`) VALUES (15, 'Basic Mathematics', '403', 'Theory', 'no', '2019-03-08 10:13:43', '0000-00-00 00:00:00');
INSERT INTO `subjects` (`id`, `name`, `code`, `type`, `is_active`, `created_at`, `updated_at`) VALUES (16, 'Fundamental of Economics', '404', 'Theory', 'no', '2019-03-08 10:14:45', '0000-00-00 00:00:00');
INSERT INTO `subjects` (`id`, `name`, `code`, `type`, `is_active`, `created_at`, `updated_at`) VALUES (17, 'Principles of Political Science', '405', 'Theory', 'no', '2019-03-08 10:15:17', '0000-00-00 00:00:00');
INSERT INTO `subjects` (`id`, `name`, `code`, `type`, `is_active`, `created_at`, `updated_at`) VALUES (18, 'Islamic Jurisprudence', '406', 'Theory', 'no', '2019-03-08 10:15:41', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: teacher_subjects
#

DROP TABLE IF EXISTS `teacher_subjects`;

CREATE TABLE `teacher_subjects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` int(11) DEFAULT NULL,
  `class_section_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `part_id` int(11) NOT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `class_section_id` (`class_section_id`),
  KEY `session_id` (`session_id`),
  KEY `subject_id` (`subject_id`),
  KEY `teacher_id` (`teacher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `teacher_subjects` (`id`, `session_id`, `class_section_id`, `subject_id`, `teacher_id`, `part_id`, `description`, `is_active`, `created_at`, `updated_at`) VALUES (1, 14, 1, 6, 1, 0, NULL, 'no', '2019-03-08 12:52:15', '0000-00-00 00:00:00');
INSERT INTO `teacher_subjects` (`id`, `session_id`, `class_section_id`, `subject_id`, `teacher_id`, `part_id`, `description`, `is_active`, `created_at`, `updated_at`) VALUES (2, 13, 1, 6, 1, 0, NULL, 'no', '2019-03-08 15:19:18', '0000-00-00 00:00:00');
INSERT INTO `teacher_subjects` (`id`, `session_id`, `class_section_id`, `subject_id`, `teacher_id`, `part_id`, `description`, `is_active`, `created_at`, `updated_at`) VALUES (3, 13, 1, 5, 2, 0, NULL, 'no', '2019-03-08 15:19:48', '0000-00-00 00:00:00');
INSERT INTO `teacher_subjects` (`id`, `session_id`, `class_section_id`, `subject_id`, `teacher_id`, `part_id`, `description`, `is_active`, `created_at`, `updated_at`) VALUES (4, 14, 12, 8, 4, 0, NULL, 'no', '2020-06-15 22:03:21', '0000-00-00 00:00:00');
INSERT INTO `teacher_subjects` (`id`, `session_id`, `class_section_id`, `subject_id`, `teacher_id`, `part_id`, `description`, `is_active`, `created_at`, `updated_at`) VALUES (5, 14, 12, 13, 4, 0, NULL, 'no', '2020-06-15 22:03:21', '0000-00-00 00:00:00');
INSERT INTO `teacher_subjects` (`id`, `session_id`, `class_section_id`, `subject_id`, `teacher_id`, `part_id`, `description`, `is_active`, `created_at`, `updated_at`) VALUES (6, 14, 12, 13, 5, 0, NULL, 'no', '2020-06-15 22:03:21', '0000-00-00 00:00:00');
INSERT INTO `teacher_subjects` (`id`, `session_id`, `class_section_id`, `subject_id`, `teacher_id`, `part_id`, `description`, `is_active`, `created_at`, `updated_at`) VALUES (7, 13, 19, 1, 4, 1, NULL, 'no', '2020-06-29 23:34:06', '0000-00-00 00:00:00');
INSERT INTO `teacher_subjects` (`id`, `session_id`, `class_section_id`, `subject_id`, `teacher_id`, `part_id`, `description`, `is_active`, `created_at`, `updated_at`) VALUES (8, 13, 19, 5, 5, 1, NULL, 'no', '2020-06-29 23:34:06', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: teachers
#

DROP TABLE IF EXISTS `teachers`;

CREATE TABLE `teachers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `teachers` (`id`, `name`, `email`, `password`, `address`, `dob`, `designation`, `sex`, `phone`, `image`, `is_active`, `created_at`, `updated_at`) VALUES (4, 'Faheem Ahmed', 'fa093671@gmail.com', NULL, 'house # B2/19 railway society auto bahn road unit # 03 latifabad hyd', '1996-06-06', NULL, 'Male', '03312155823', 'uploads/student_images/no_image.png', 'no', '2019-03-26 20:41:49', '0000-00-00 00:00:00');
INSERT INTO `teachers` (`id`, `name`, `email`, `password`, `address`, `dob`, `designation`, `sex`, `phone`, `image`, `is_active`, `created_at`, `updated_at`) VALUES (5, 'Zubair Shaikh', 'zubair.shaikh2004@gmail.com', NULL, 'main road unit # 11 latifabad hyd', '1985-02-14', NULL, 'Male', '03313591099', 'uploads/teacher_images/5.jpg', 'no', '2019-03-26 20:44:56', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: timetables
#

DROP TABLE IF EXISTS `timetables`;

CREATE TABLE `timetables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_subject_id` int(20) DEFAULT NULL,
  `day_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_time` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `end_time` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `room_no` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `timetables` (`id`, `teacher_subject_id`, `day_name`, `start_time`, `end_time`, `room_no`, `is_active`, `created_at`, `updated_at`) VALUES (1, 1, 'Monday', '09:00 AM', '09:50 AM', '01', 'no', '2019-03-08 12:57:23', '0000-00-00 00:00:00');
INSERT INTO `timetables` (`id`, `teacher_subject_id`, `day_name`, `start_time`, `end_time`, `room_no`, `is_active`, `created_at`, `updated_at`) VALUES (2, 1, 'Tuesday', '09:00 AM', '09:50 AM', '01', 'no', '2019-03-08 12:57:23', '0000-00-00 00:00:00');
INSERT INTO `timetables` (`id`, `teacher_subject_id`, `day_name`, `start_time`, `end_time`, `room_no`, `is_active`, `created_at`, `updated_at`) VALUES (3, 1, 'Wednesday', '09:00 AM', '09:50 AM', '01', 'no', '2019-03-08 12:57:23', '0000-00-00 00:00:00');
INSERT INTO `timetables` (`id`, `teacher_subject_id`, `day_name`, `start_time`, `end_time`, `room_no`, `is_active`, `created_at`, `updated_at`) VALUES (4, 1, 'Thursday', '09:00 AM', '09:50 AM', '01', 'no', '2019-03-08 12:57:23', '0000-00-00 00:00:00');
INSERT INTO `timetables` (`id`, `teacher_subject_id`, `day_name`, `start_time`, `end_time`, `room_no`, `is_active`, `created_at`, `updated_at`) VALUES (5, 1, 'Friday', '', '', '', 'no', '2019-03-08 12:57:23', '0000-00-00 00:00:00');
INSERT INTO `timetables` (`id`, `teacher_subject_id`, `day_name`, `start_time`, `end_time`, `room_no`, `is_active`, `created_at`, `updated_at`) VALUES (6, 1, 'Saturday', '', '', '', 'no', '2019-03-08 12:57:23', '0000-00-00 00:00:00');
INSERT INTO `timetables` (`id`, `teacher_subject_id`, `day_name`, `start_time`, `end_time`, `room_no`, `is_active`, `created_at`, `updated_at`) VALUES (7, 1, 'Sunday', '', '', '', 'no', '2019-03-08 12:57:23', '0000-00-00 00:00:00');
INSERT INTO `timetables` (`id`, `teacher_subject_id`, `day_name`, `start_time`, `end_time`, `room_no`, `is_active`, `created_at`, `updated_at`) VALUES (8, 7, 'Monday', '09:00 AM', '10:40 AM', '#01', 'no', '2020-06-30 13:01:24', '0000-00-00 00:00:00');
INSERT INTO `timetables` (`id`, `teacher_subject_id`, `day_name`, `start_time`, `end_time`, `room_no`, `is_active`, `created_at`, `updated_at`) VALUES (9, 7, 'Tuesday', '09:00 AM', '10:40 AM', '#01', 'no', '2020-06-30 13:01:24', '0000-00-00 00:00:00');
INSERT INTO `timetables` (`id`, `teacher_subject_id`, `day_name`, `start_time`, `end_time`, `room_no`, `is_active`, `created_at`, `updated_at`) VALUES (10, 7, 'Wednesday', '09:00 AM', '10:40 AM', '#01', 'no', '2020-06-30 13:01:24', '0000-00-00 00:00:00');
INSERT INTO `timetables` (`id`, `teacher_subject_id`, `day_name`, `start_time`, `end_time`, `room_no`, `is_active`, `created_at`, `updated_at`) VALUES (11, 7, 'Thursday', '09:00 AM', '10:40 AM', '#01', 'no', '2020-06-30 13:01:24', '0000-00-00 00:00:00');
INSERT INTO `timetables` (`id`, `teacher_subject_id`, `day_name`, `start_time`, `end_time`, `room_no`, `is_active`, `created_at`, `updated_at`) VALUES (12, 7, 'Friday', '09:00 AM', '10:40 AM', '#01', 'no', '2020-06-30 13:01:24', '0000-00-00 00:00:00');
INSERT INTO `timetables` (`id`, `teacher_subject_id`, `day_name`, `start_time`, `end_time`, `room_no`, `is_active`, `created_at`, `updated_at`) VALUES (13, 7, 'Saturday', '', '', '', 'no', '2020-06-30 13:01:24', '0000-00-00 00:00:00');
INSERT INTO `timetables` (`id`, `teacher_subject_id`, `day_name`, `start_time`, `end_time`, `room_no`, `is_active`, `created_at`, `updated_at`) VALUES (14, 7, 'Sunday', '', '', '', 'no', '2020-06-30 13:01:24', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: transport_route
#

DROP TABLE IF EXISTS `transport_route`;

CREATE TABLE `transport_route` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `route_title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_of_vehicle` int(11) DEFAULT NULL,
  `fare` float(10,2) DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: userlog
#

DROP TABLE IF EXISTS `userlog`;

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(100) DEFAULT NULL,
  `role` varchar(100) DEFAULT NULL,
  `ipaddress` varchar(100) DEFAULT NULL,
  `user_agent` varchar(500) DEFAULT NULL,
  `login_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8;

INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (1, 'info@smiljamshoro.com', 'admin', '182.182.68.177', 'Safari 604.1, iOS', '2019-03-07 20:34:36');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (2, 'info@smiljamshoro.com', 'admin', '103.75.246.171', 'Chrome 72.0.3626.121, Windows 10', '2019-03-07 20:46:51');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (3, 'info@smiljamshoro.com', 'admin', '103.75.246.171', 'Chrome 72.0.3626.121, Windows 10', '2019-03-07 21:23:29');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (4, 'info@smiljamshoro.com', 'admin', '103.75.246.171', 'Chrome 72.0.3626.121, Windows 10', '2019-03-07 21:25:10');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (5, 'info@smiljamshoro.com', 'admin', '103.75.247.114', 'Chrome 72.0.3626.121, Windows 10', '2019-03-07 22:30:04');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (6, 'info@smiljamshoro.com', 'admin', '182.182.67.140', 'Chrome 72.0.3626.121, Windows 7', '2019-03-08 00:02:56');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (7, 'info@smiljamshoro.com', 'admin', '182.182.67.140', 'Chrome 72.0.3626.121, Windows 7', '2019-03-08 01:00:46');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (8, 'Info@smiljamshoro.com', 'admin', '182.182.67.140', 'Chrome 72.0.3626.121, Android', '2019-03-08 01:01:42');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (9, 'info@smiljamshoro.com', 'admin', '182.182.67.140', 'Chrome 72.0.3626.121, Windows 7', '2019-03-08 01:08:38');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (10, 'info@smiljamshoro.com', 'admin', '182.182.67.140', 'Chrome 72.0.3626.121, Windows 7', '2019-03-08 01:12:26');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (11, 'noorahmed1993@live.com', 'admin', '182.182.67.140', 'Chrome 72.0.3626.121, Windows 7', '2019-03-08 01:16:21');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (12, 'info@smiljamshoro.com', 'admin', '182.182.67.140', 'Chrome 72.0.3626.121, Windows 7', '2019-03-08 01:17:28');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (13, 'info@smiljamshoro.com', 'admin', '182.182.67.140', 'Chrome 72.0.3626.121, Windows 7', '2019-03-08 01:21:15');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (14, 'info@smiljamshoro.com', 'admin', '182.182.67.140', 'Chrome 72.0.3626.121, Windows 7', '2019-03-08 09:43:28');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (15, 'info@smiljamshoro.com', 'admin', '182.182.67.140', 'Internet Explorer 11.0, Windows 7', '2019-03-08 09:49:11');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (16, 'info@smiljamshoro.com', 'admin', '182.182.67.140', 'Chrome 72.0.3626.121, Windows 7', '2019-03-08 12:45:31');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (17, 'info@smiljamshoro.com', 'admin', '182.182.67.140', 'Chrome 72.0.3626.121, Windows 7', '2019-03-08 13:10:19');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (18, 'info@smiljamshoro.com', 'admin', '182.182.67.140', 'Chrome 72.0.3626.121, Windows 7', '2019-03-08 14:59:25');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (19, 'info@smiljamshoro.com', 'admin', '182.182.67.140', 'Chrome 72.0.3626.121, Windows 7', '2019-03-08 15:00:39');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (20, 'info@smiljamshoro.com', 'admin', '182.182.67.140', 'Chrome 72.0.3626.121, Windows 7', '2019-03-08 15:03:25');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (21, 'info@smiljamshoro.com', 'admin', '182.182.67.140', 'Chrome 72.0.3626.121, Windows 7', '2019-03-08 16:42:49');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (22, 'info@smiljamshoro.com', 'admin', '182.182.67.140', 'Chrome 72.0.3626.121, Windows 7', '2019-03-08 17:19:44');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (23, 'info@smiljamshoro.com', 'admin', '182.182.67.140', 'Chrome 72.0.3626.121, Windows 7', '2019-03-08 17:19:56');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (24, 'info@smiljamshoro.com', 'admin', '182.182.67.140', 'Chrome 72.0.3626.121, Windows 7', '2019-03-08 17:39:55');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (25, 'info@smiljamshoro.com', 'admin', '182.182.67.140', 'Chrome 72.0.3626.121, Windows 7', '2019-03-08 18:49:19');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (26, 'info@smiljamshoro.com', 'admin', '182.182.67.140', 'Chrome 72.0.3626.121, Windows 7', '2019-03-09 01:19:46');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (27, 'info@smiljamshoro.com', 'admin', '182.182.67.140', 'Chrome 72.0.3626.121, Windows 7', '2019-03-09 14:18:26');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (28, 'info@smiljamshoro.com', 'admin', '103.75.247.123', 'Chrome 72.0.3626.121, Windows 10', '2019-03-23 14:59:40');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (29, 'info@smiljamshoro.com', 'admin', '103.75.247.202', 'Chrome 73.0.3683.86, Windows 10', '2019-03-26 20:05:56');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (30, 'info@smiljamshoro.com', 'admin', '103.75.247.14', 'Chrome 73.0.3683.86, Windows 10', '2019-03-27 20:52:20');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (31, 'info@smiljamshoro.com', 'admin', '103.75.247.130', 'Chrome 73.0.3683.86, Windows 10', '2019-03-28 16:10:31');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (32, 'Info@smiljamshoro.com', 'admin', '45.116.233.60', 'Chrome 73.0.3683.90, Android', '2019-03-30 22:33:55');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (33, 'Info@smiljamshoro.com', 'admin', '122.8.104.188', 'Chrome 73.0.3683.90, Android', '2019-04-01 01:52:46');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (34, 'info@smiljamshoro.com', 'admin', '103.75.246.42', 'Chrome 73.0.3683.86, Windows 10', '2019-04-01 18:00:27');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (35, 'info@smiljamshoro.com', 'admin', '182.182.79.70', 'Chrome 75.0.3770.142, Windows 10', '2019-07-27 15:31:10');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (36, 'info@smiljamshoro.com', 'admin', '182.182.79.70', 'Chrome 75.0.3770.142, Windows 10', '2019-07-27 15:47:22');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (37, 'info@smiljamshoro.com', 'admin', '182.182.79.70', 'Chrome 75.0.3770.142, Windows 10', '2019-07-27 15:48:48');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (38, 'info@smiljamshoro.com', 'admin', '182.182.79.70', 'Chrome 75.0.3770.142, Windows 8.1', '2019-07-27 15:49:57');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (39, 'info@smiljamshoro.com', 'admin', '182.182.37.131', 'Chrome 75.0.3770.142, Windows 10', '2019-08-02 17:27:00');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (40, 'info@smiljamshoro.com', 'admin', '182.182.37.131', 'Chrome 75.0.3770.142, Windows 10', '2019-08-02 17:35:41');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (41, 'info@smiljamshoro.com', 'admin', '182.182.37.131', 'Chrome 75.0.3770.142, Windows 10', '2019-08-02 17:35:45');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (42, 'info@smiljamshoro.com', 'admin', '182.182.37.131', 'Chrome 75.0.3770.142, Windows 10', '2019-08-02 17:39:00');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (43, 'std11', 'student', '182.182.37.131', 'Chrome 75.0.3770.142, Windows 10', '2019-08-02 18:16:56');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (44, 'std12', 'student', '182.182.37.131', 'Chrome 75.0.3770.142, Windows 10', '2019-08-02 18:21:54');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (45, 'parent12', 'parent', '182.182.91.136', 'Chrome 75.0.3770.142, Windows 10', '2019-08-02 20:29:59');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (46, 'parent12', 'parent', '182.182.91.136', 'Chrome 75.0.3770.142, Windows 10', '2019-08-02 20:31:59');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (47, 'std12', 'student', '182.182.91.136', 'Chrome 75.0.3770.142, Windows 10', '2019-08-02 20:33:58');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (48, 'info@smiljamshoro.com', 'admin', '182.182.91.136', 'Chrome 75.0.3770.142, Windows 10', '2019-08-02 20:45:58');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (49, 'info@smiljamshoro.com', 'admin', '43.242.178.105', 'Chrome 75.0.3770.143, Android', '2019-08-04 11:56:33');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (50, 'info@smiljamshoro.com', 'admin', '42.201.146.78', 'Chrome 75.0.3770.142, Windows 10', '2019-08-04 23:14:08');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (51, 'info@smiljamshoro.com', 'admin', '42.201.146.78', 'Chrome 75.0.3770.142, Windows 10', '2019-08-04 23:49:48');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (52, 'info@smiljamshoro.com', 'admin', '182.182.64.77', 'Chrome 76.0.3809.100, Windows 10', '2019-08-08 20:30:38');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (53, 'info@smiljamshoro.com', 'admin', '182.182.60.214', 'Chrome 76.0.3809.100, Windows 10', '2019-08-19 19:03:51');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (54, 'info@smiljamshoro.com', 'admin', '182.182.95.134', 'Chrome 76.0.3809.100, Windows 10', '2019-08-19 19:28:27');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (55, 'info@smiljamshoro.com', 'admin', '182.182.95.134', 'Chrome 76.0.3809.100, Windows 10', '2019-08-19 19:30:07');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (56, 'info@smiljamshoro.com', 'admin', '182.182.95.134', 'Chrome 76.0.3809.100, Windows 10', '2019-08-19 19:51:34');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (57, 'info@smiljamshoro.com', 'admin', '43.242.178.66', 'Chrome 76.0.3809.132, Windows 10', '2019-08-29 23:51:34');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (58, 'info@smiljamshoro.com', 'admin', '182.182.65.139', 'Chrome 77.0.3865.90, Windows 10', '2019-09-25 19:57:17');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (59, 'info@smiljamshoro.com', 'admin', '103.228.157.48', 'Chrome 77.0.3865.90, Windows 10', '2019-10-04 23:36:09');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (60, 'info@smiljamshoro.com', 'admin', '103.140.31.9', 'Chrome 77.0.3865.120, Windows 10', '2019-10-24 10:52:22');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (61, 'info@smiljamshoro.com', 'admin', '103.140.31.9', 'Chrome 77.0.3865.120, Windows 10', '2019-10-24 11:02:09');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (62, 'info@smiljamshoro.com', 'admin', '103.75.246.66', 'Firefox 70.0, Windows 10', '2019-11-02 18:51:57');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (63, 'info@smiljamshoro.com', 'admin', '103.75.246.66', 'Chrome 78.0.3904.87, Windows 7', '2019-11-02 20:38:40');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (64, 'info@smiljamshoro.com', 'admin', '137.59.220.70', 'Chrome 79.0.3945.130, Windows 10', '2020-01-28 18:25:35');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (65, 'info@smiljamshoro.com', 'admin', '103.75.247.214', 'Chrome 79.0.3945.130, Windows 10', '2020-01-30 16:52:34');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (66, 'info@smiljamshoro.com', 'admin', '122.8.66.98', 'Chrome 79.0.3945.130, Windows 10', '2020-02-11 03:31:18');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (67, 'info@smiljamshoro.com', 'admin', '103.75.246.27', 'Chrome 79.0.3945.130, Windows 10', '2020-02-11 16:51:23');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (68, 'info@smiljamshoro.com', 'admin', '103.75.246.27', 'Chrome 79.0.3945.130, Windows 10', '2020-02-11 19:50:51');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (69, 'info@smiljamshoro.com', 'admin', '43.242.176.31', 'Chrome 83.0.4103.61, Windows 10', '2020-06-07 11:16:43');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (70, 'info@smiljamshoro.com', 'admin', '::1', 'Chrome 83.0.4103.61, Windows 10', '2020-06-07 12:07:56');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (71, 'info@smiljamshoro.com', 'admin', '::1', 'Chrome 83.0.4103.61, Windows 10', '2020-06-07 13:12:35');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (72, 'info@smiljamshoro.com', 'admin', '::1', 'Chrome 83.0.4103.97, Windows 10', '2020-06-13 12:47:55');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (73, 'info@smiljamshoro.com', 'admin', '::1', 'Chrome 83.0.4103.97, Windows 10', '2020-06-13 12:50:47');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (74, 'info@smiljamshoro.com', 'admin', '::1', 'Chrome 83.0.4103.97, Windows 10', '2020-06-14 11:23:10');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (75, 'info@smiljamshoro.com', 'admin', '::1', 'Chrome 83.0.4103.97, Windows 10', '2020-06-15 21:49:28');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (76, 'info@smiljamshoro.com', 'admin', '::1', 'Chrome 83.0.4103.97, Windows 10', '2020-06-17 12:50:11');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (77, 'info@smiljamshoro.com', 'admin', '::1', 'Chrome 83.0.4103.106, Windows 10', '2020-06-18 22:36:10');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (78, 'info@smiljamshoro.com', 'admin', '::1', 'Chrome 83.0.4103.106, Windows 10', '2020-06-18 23:59:08');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (79, 'info@smiljamshoro.com', 'admin', '::1', 'Chrome 83.0.4103.106, Windows 10', '2020-06-20 11:45:38');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (80, 'teacher5', 'teacher', '::1', 'Chrome 83.0.4103.106, Windows 10', '2020-06-20 11:50:43');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (81, 'info@smiljamshoro.com', 'admin', '::1', 'Chrome 83.0.4103.106, Windows 10', '2020-06-20 12:46:59');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (82, 'info@smiljamshoro.com', 'admin', '::1', 'Chrome 83.0.4103.106, Windows 10', '2020-06-20 16:46:59');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (83, 'info@smiljamshoro.com', 'admin', '::1', 'Chrome 83.0.4103.106, Windows 10', '2020-06-20 23:38:07');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (84, 'info@smiljamshoro.com', 'admin', '::1', 'Chrome 83.0.4103.106, Windows 10', '2020-06-21 12:02:18');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (85, 'info@smiljamshoro.com', 'admin', '::1', 'Chrome 83.0.4103.106, Windows 10', '2020-06-21 15:41:53');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (86, 'info@smiljamshoro.com', 'admin', '::1', 'Chrome 83.0.4103.106, Windows 10', '2020-06-22 22:33:56');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (87, 'teacher5', 'teacher', '::1', 'Chrome 83.0.4103.106, Windows 10', '2020-06-23 00:11:24');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (88, 'info@smiljamshoro.com', 'admin', '43.242.176.127', 'Chrome 83.0.4103.106, Windows 10', '2020-06-23 00:38:58');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (89, 'info@smiljamshoro.com', 'admin', '43.242.176.127', 'Chrome 83.0.4103.106, Windows 10', '2020-06-23 00:40:20');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (90, 'info@smiljamshoro.com', 'admin', '182.182.1.113', 'Safari 604.1, iOS', '2020-06-23 03:37:34');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (91, 'info@smiljamshoro.com', 'admin', '182.182.14.110', 'Safari 604.1, iOS', '2020-06-24 02:14:11');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (92, 'info@smiljamshoro.com', 'admin', '182.182.55.98', 'Chrome 83.0.4103.116, Windows 7', '2020-06-24 22:34:05');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (93, 'info@smiljamshoro.com', 'admin', '43.242.176.49', 'Chrome 83.0.4103.116, Windows 10', '2020-06-25 21:38:53');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (94, 'info@smiljamshoro.com', 'admin', '182.182.43.93', 'Safari 604.1, iOS', '2020-06-26 01:53:04');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (95, 'info@smiljamshoro.com', 'admin', '182.182.50.246', 'Safari 604.1, iOS', '2020-06-26 14:43:55');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (96, 'info@smiljamshoro.com', 'admin', '182.182.113.0', 'Chrome 83.0.4103.116, Windows 7', '2020-06-27 13:26:35');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (97, 'info@smiljamshoro.com', 'admin', '182.182.113.0', 'Chrome 83.0.4103.116, Windows 7', '2020-06-27 13:41:36');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (98, 'info@smiljamshoro.com', 'admin', '182.182.113.0', 'Chrome 83.0.4103.116, Windows 7', '2020-06-27 14:09:30');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (99, 'accountant2', 'accountant', '182.182.113.0', 'Chrome 83.0.4103.116, Windows 7', '2020-06-27 14:18:43');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (100, 'saleemakhtar@smil.edu.pk', 'admin', '182.182.113.0', 'Chrome 83.0.4103.116, Windows 7', '2020-06-27 14:23:59');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (101, 'noorahmed1993@live.com', 'admin', '182.182.113.0', 'Chrome 83.0.4103.116, Windows 7', '2020-06-27 14:24:06');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (102, 'accountant2', 'accountant', '182.182.113.0', 'Chrome 83.0.4103.116, Windows 7', '2020-06-27 14:26:09');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (103, 'noorahmed1993@live.com', 'admin', '182.182.113.0', 'Chrome 83.0.4103.116, Windows 7', '2020-06-27 14:27:25');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (104, 'accountant2', 'accountant', '182.182.113.0', 'Chrome 83.0.4103.116, Windows 7', '2020-06-27 14:29:06');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (105, 'accountant2', 'accountant', '182.182.113.0', 'Chrome 83.0.4103.116, Windows 7', '2020-06-27 14:30:16');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (106, 'accountant2', 'accountant', '182.182.113.0', 'Chrome 83.0.4103.116, Windows 7', '2020-06-27 14:34:26');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (107, 'accountant2', 'accountant', '182.182.113.0', 'Chrome 83.0.4103.116, Windows 7', '2020-06-27 14:37:42');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (108, 'accountant2', 'accountant', '182.182.113.0', 'Chrome 83.0.4103.116, Windows 7', '2020-06-27 14:38:42');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (109, 'info@smiljamshoro.com', 'admin', '182.182.113.0', 'Chrome 83.0.4103.116, Windows 7', '2020-06-27 14:45:42');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (110, 'info@smiljamshoro.com', 'admin', '182.182.113.0', 'Chrome 83.0.4103.116, Windows 7', '2020-06-27 14:50:59');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (111, 'info@smiljamshoro.com', 'admin', '43.242.176.108', 'Chrome 83.0.4103.116, Windows 10', '2020-06-28 17:06:02');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (112, 'accountant2', 'accountant', '43.242.176.108', 'Chrome 83.0.4103.116, Windows 10', '2020-06-28 17:07:42');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (113, 'teacher4', 'teacher', '43.242.176.108', 'Chrome 83.0.4103.116, Windows 10', '2020-06-28 17:16:31');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (114, 'info@smiljamshoro.com', 'admin', '182.182.22.34', 'Chrome 83.0.4103.116, Windows 7', '2020-06-28 23:26:39');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (115, 'accountant2', 'accountant', '182.182.22.34', 'Chrome 83.0.4103.116, Windows 7', '2020-06-28 23:27:22');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (116, 'info@smiljamshoro.com', 'admin', '182.182.22.34', 'Chrome 83.0.4103.116, Windows 7', '2020-06-28 23:31:29');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (117, 'info@smiljamshoro.com', 'admin', '182.182.22.34', 'Chrome 83.0.4103.116, Windows 7', '2020-06-29 10:05:07');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (118, 'accountant2', 'accountant', '182.182.22.34', 'Chrome 83.0.4103.116, Windows 7', '2020-06-29 11:54:30');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (119, 'accountant2', 'accountant', '182.182.22.34', 'Chrome 83.0.4103.116, Windows 7', '2020-06-29 12:02:53');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (120, 'info@smiljamshoro.com', 'admin', '43.242.176.122', 'Chrome 83.0.4103.116, Windows 10', '2020-06-29 23:33:15');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (121, 'info@smiljamshoro.com', 'admin', '182.182.22.34', 'Chrome 83.0.4103.116, Windows 7', '2020-06-30 11:17:31');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (122, 'info@smiljamshoro.com', 'admin', '182.182.22.34', 'Chrome 83.0.4103.116, Windows 7', '2020-06-30 12:15:29');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (123, 'info@smiljamshoro.com', 'admin', '182.182.15.84', 'Chrome 83.0.4103.116, Windows 7', '2020-06-30 12:34:55');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (124, 'info@smiljamshoro.com', 'admin', '182.182.15.84', 'Chrome 83.0.4103.116, Windows 7', '2020-06-30 14:47:51');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (125, 'info@smiljamshoro.com', 'admin', '103.75.245.94', 'Chrome 83.0.4103.116, Windows 10', '2020-06-30 18:32:35');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (126, 'info@smiljamshoro.com', 'admin', '182.182.15.84', 'Chrome 83.0.4103.116, Windows 7', '2020-06-30 21:38:17');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (127, 'info@smiljamshoro.com', 'admin', '182.182.15.84', 'Chrome 83.0.4103.116, Windows 7', '2020-06-30 21:57:27');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (128, 'info@smiljamshoro.com', 'admin', '43.242.176.37', 'Chrome 83.0.4103.116, Windows 10', '2020-06-30 22:20:45');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (129, 'info@smiljamshoro.com', 'admin', '43.242.176.37', 'Chrome 83.0.4103.116, Windows 10', '2020-06-30 22:35:23');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (130, 'info@smiljamshoro.com', 'admin', '182.182.15.84', 'Chrome 83.0.4103.116, Windows 7', '2020-07-01 09:45:07');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (131, 'info@smiljamshoro.com', 'admin', '182.182.15.84', 'Chrome 83.0.4103.116, Windows 7', '2020-07-01 11:46:36');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (132, 'info@smiljamshoro.com', 'admin', '182.182.15.84', 'Chrome 83.0.4103.116, Windows 7', '2020-07-02 14:07:39');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (133, 'info@smiljamshoro.com', 'admin', '182.182.15.84', 'Chrome 83.0.4103.116, Windows 7', '2020-07-02 14:14:50');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (134, 'info@smiljamshoro.com', 'admin', '182.182.57.78', 'Chrome 83.0.4103.116, Windows 7', '2020-07-03 00:39:02');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (135, 'info@smiljamshoro.com', 'admin', '182.182.57.78', 'Chrome 83.0.4103.116, Windows 7', '2020-07-03 00:43:37');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (136, 'accountant2', 'accountant', '182.182.19.37', 'Chrome 83.0.4103.116, Windows 7', '2020-07-03 14:08:01');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (137, 'info@smiljamshoro.com', 'admin', '182.182.19.37', 'Chrome 83.0.4103.116, Windows 7', '2020-07-04 13:36:12');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (138, 'info@smiljamshoro.com', 'admin', '182.182.19.37', 'Chrome 83.0.4103.116, Windows 7', '2020-07-04 13:39:06');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (139, 'info@smiljamshoro.com', 'admin', '182.182.118.227', 'Chrome 83.0.4103.116, Windows 7', '2020-07-05 23:22:24');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (140, 'accountant2', 'accountant', '182.182.118.227', 'Chrome 83.0.4103.116, Windows 7', '2020-07-05 23:27:14');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (141, 'info@smiljamshoro.com', 'admin', '182.182.43.241', 'Safari 604.1, iOS', '2020-07-06 20:00:43');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (142, 'info@smiljamshoro.com', 'admin', '182.182.19.37', 'Chrome 83.0.4103.116, Windows 7', '2020-07-06 20:27:37');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (143, 'info@smiljamshoro.com', 'admin', '182.182.19.37', 'Chrome 83.0.4103.116, Windows 7', '2020-07-06 21:03:56');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (144, 'info@smiljamshoro.com', 'admin', '182.182.43.241', 'Safari 604.1, iOS', '2020-07-06 23:07:27');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (145, 'info@smiljamshoro.com', 'admin', '43.242.176.107', 'Chrome 83.0.4103.116, Windows 10', '2020-07-06 23:11:40');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (146, 'accountant2', 'accountant', '182.182.19.37', 'Chrome 83.0.4103.116, Windows 7', '2020-07-07 10:21:11');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (147, 'accountant2', 'accountant', '182.182.19.37', 'Chrome 83.0.4103.116, Windows 7', '2020-07-07 11:25:31');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (148, 'accountant2', 'accountant', '182.182.19.37', 'Chrome 83.0.4103.116, Windows 7', '2020-07-07 11:27:32');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (149, 'accountant2', 'accountant', '182.182.19.37', 'Chrome 83.0.4103.116, Windows 7', '2020-07-07 12:09:16');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (150, 'info@smiljamshoro.com', 'admin', '182.182.15.213', 'Chrome 83.0.4103.116, Windows 7', '2020-07-07 12:30:31');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (151, 'info@smiljamshoro.com', 'admin', '182.182.15.9', 'Chrome 83.0.4103.116, Windows 7', '2020-07-07 15:10:38');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (152, 'info@smiljamshoro.com', 'admin', '182.182.15.9', 'Chrome 83.0.4103.116, Windows 7', '2020-07-07 15:13:55');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (153, 'info@smiljamshoro.com', 'admin', '182.182.15.9', 'Chrome 83.0.4103.116, Windows 7', '2020-07-07 17:46:17');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (154, 'info@smiljamshoro.com', 'admin', '103.75.247.48', 'Spartan 16.16299, Windows 10', '2020-07-07 19:36:19');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (155, 'info@smiljamshoro.com', 'admin', '103.75.246.91', 'Spartan 16.16299, Windows 10', '2020-07-07 19:40:51');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (156, 'info@smiljamshoro.com', 'admin', '182.182.15.9', 'Chrome 83.0.4103.116, Windows 7', '2020-07-07 20:30:50');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (157, 'info@smiljamshoro.com', 'admin', '182.182.15.9', 'Chrome 83.0.4103.116, Windows 7', '2020-07-07 20:31:49');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (158, 'info@smiljamshoro.com', 'admin', '43.242.176.107', 'Chrome 83.0.4103.116, Windows 10', '2020-07-07 22:31:08');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (159, 'info@smiljamshoro.com', 'admin', '::1', 'Chrome 83.0.4103.116, Windows 10', '2020-07-08 14:09:17');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (160, 'info@smiljamshoro.com', 'admin', '::1', 'Chrome 83.0.4103.116, Windows 10', '2020-07-08 22:44:07');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (161, 'info@smiljamshoro.com', 'admin', '::1', 'Chrome 83.0.4103.116, Windows 10', '2020-07-09 19:26:16');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (162, 'info@smiljamshoro.com', 'admin', '::1', 'Chrome 83.0.4103.116, Windows 10', '2020-07-09 22:26:40');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (163, 'info@smiljamshoro.com', 'admin', '::1', 'Chrome 83.0.4103.116, Windows 10', '2020-07-13 22:54:16');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (164, 'accountant2', 'accountant', '::1', 'Chrome 83.0.4103.116, Windows 10', '2020-07-13 23:05:14');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (165, 'accountant2', 'accountant', '::1', 'Chrome 83.0.4103.116, Windows 10', '2020-07-13 23:45:16');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (166, 'info@smiljamshoro.com', 'admin', '::1', 'Chrome 83.0.4103.116, Windows 10', '2020-07-14 00:10:41');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (167, 'info@smiljamshoro.com', 'admin', '::1', 'Chrome 83.0.4103.116, Windows 10', '2020-07-15 22:53:30');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (168, 'info@smiljamshoro.com', 'admin', '::1', 'Chrome 84.0.4147.89, Windows 10', '2020-07-17 22:39:53');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `childs` text COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `verification_code` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'yes',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=290 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (1, 1, 'teacher1', 'cxur19', '', 'teacher', '', 'yes', '2019-03-08 10:22:32', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (2, 1, 'std1', 'wlurka', '', 'student', '', 'no', '2019-03-08 19:04:43', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (3, 1, 'parent1', '2t8ebo', '1', 'parent', '', 'yes', '2019-03-08 12:02:11', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (4, 2, 'std2', '5dxmfi', '', 'student', '', 'no', '2019-03-08 19:05:18', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (5, 2, 'parent2', 'awvvjj', '2', 'parent', '', 'yes', '2019-03-08 13:23:17', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (6, 3, 'std3', 'rewg8v', '', 'student', '', 'no', '2019-03-08 19:05:06', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (7, 3, 'parent3', 'lt6opf', '3', 'parent', '', 'yes', '2019-03-08 13:35:52', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (8, 4, 'std4', 'pmjl4w', '', 'student', '', 'no', '2019-03-08 19:05:04', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (9, 4, 'parent4', 'e9u1yz', '4', 'parent', '', 'yes', '2019-03-08 13:49:04', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (10, 5, 'std5', '4gp95y', '', 'student', '', 'no', '2019-03-08 19:05:01', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (11, 5, 'parent5', 'qdob7v', '5', 'parent', '', 'yes', '2019-03-08 14:09:41', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (12, 6, 'std6', '6ertu2', '', 'student', '', 'no', '2019-03-08 19:04:59', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (13, 6, 'parent6', 'l5w38j', '6', 'parent', '', 'yes', '2019-03-08 14:22:05', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (14, 7, 'std7', 'b0stdo', '', 'student', '', 'no', '2019-03-08 19:04:57', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (15, 7, 'parent7', '3udvuf', '7', 'parent', '', 'yes', '2019-03-08 14:30:14', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (16, 8, 'std8', 'evlsvd', '', 'student', '', 'no', '2019-03-08 19:04:56', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (17, 8, 'parent8', 'nagspq', '8', 'parent', '', 'yes', '2019-03-08 14:37:26', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (18, 9, 'std9', '10wykd', '', 'student', '', 'no', '2019-03-08 19:05:14', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (19, 9, 'parent9', 'aa0vm4', '9', 'parent', '', 'yes', '2019-03-08 15:03:38', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (20, 2, 'teacher2', '34j831', '', 'teacher', '', 'yes', '2019-03-08 15:16:19', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (21, 3, 'teacher3', 'peiijp', '', 'teacher', '', 'yes', '2019-03-08 15:21:17', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (22, 1, 'accountant1', 'cmx1n2', '', 'accountant', '', 'yes', '2020-06-27 14:11:14', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (23, 4, 'teacher4', 'r13u43', '', 'teacher', '', 'yes', '2019-03-26 20:41:49', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (24, 5, 'teacher5', '0jocld', '', 'teacher', '', 'yes', '2019-03-26 20:44:56', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (25, 0, 'std0', '3yzhrn', '', 'student', '', 'yes', '2019-07-27 15:58:40', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (26, 0, 'parent0', 'ey53ht', '0', 'parent', '', 'yes', '2019-07-27 15:58:40', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (27, 10, 'std10', 'p5q16u', '', 'student', 'anp1aDJhSzJxcDlyS2d6Q1BENm5Sc1BPem1vcHRjaFdHL3VPdWtYMFFLST0=', 'yes', '2019-08-02 18:27:04', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (28, 10, 'parent10', '9de721', '10', 'parent', '', 'yes', '2019-08-02 17:55:04', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (29, 11, 'std11', 'k7avva', '', 'student', '', 'yes', '2019-08-02 17:56:04', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (30, 11, 'parent11', 'nbtv3c', '11', 'parent', '', 'yes', '2019-08-02 17:56:04', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (31, 12, 'std12', 'x10367', '', 'student', 'U01taWJCWHRnTXcyYU43cUc0cFdPOVl5T25HTGdMeXFhNDFLRmxoWVErUT0=', 'yes', '2019-08-02 18:46:16', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (32, 12, 'parent12', 'qg5skr', '12', 'parent', '', 'yes', '2019-08-02 18:18:33', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (33, 13, 'std13', '5ca5p7', '', 'student', '', 'yes', '2019-11-02 20:43:06', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (34, 13, 'parent13', '5wmxh8', '13', 'parent', '', 'yes', '2019-11-02 20:43:06', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (35, 14, 'std14', '7zf90e', '', 'student', '', 'yes', '2019-11-02 20:52:17', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (36, 14, 'parent14', 'xgcq3l', '14', 'parent', '', 'yes', '2019-11-02 20:52:17', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (37, 15, 'std15', '8jhl9a', '', 'student', '', 'yes', '2019-11-02 21:05:29', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (38, 15, 'parent15', 'ga69lk', '15', 'parent', '', 'yes', '2019-11-02 21:05:29', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (39, 16, 'std16', '04o672', '', 'student', '', 'yes', '2019-11-02 21:07:52', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (40, 16, 'parent16', 'ua7c7m', '16', 'parent', '', 'yes', '2019-11-02 21:07:52', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (41, 17, 'std17', 'q0btj0', '', 'student', '', 'yes', '2019-11-02 21:12:38', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (42, 17, 'parent17', 'dhyypg', '17', 'parent', '', 'yes', '2019-11-02 21:12:38', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (43, 18, 'std18', '6018nk', '', 'student', '', 'yes', '2020-01-30 18:11:40', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (44, 18, 'parent18', '39mupz', '18', 'parent', '', 'yes', '2020-01-30 18:11:40', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (45, 19, 'std19', '63fu6n', '', 'student', '', 'yes', '2020-06-15 23:37:31', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (46, 19, 'parent19', 'gmy81m', '19', 'parent', '', 'yes', '2020-06-15 23:37:31', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (47, 20, 'std20', 's8qwse', '', 'student', '', 'yes', '2020-06-22 22:45:34', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (48, 20, 'parent20', 'rnkb67', '20', 'parent', '', 'yes', '2020-06-22 22:45:34', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (51, 2, 'accountant2', 'accountant2', '', 'accountant', '', 'yes', '2020-06-27 14:19:09', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (52, 22, 'std22', 'cvrj9u', '', 'student', '', 'yes', '2020-06-27 14:35:03', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (53, 22, 'parent22', 'aw3i1o', '22', 'parent', '', 'yes', '2020-06-27 14:35:03', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (54, 1, 'librarian1', 'am8z07', '', 'librarian', '', 'yes', '2020-06-27 14:48:51', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (55, 2, 'librarian2', 'dexwen', '', 'librarian', '', 'yes', '2020-06-27 14:48:56', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (56, 23, 'std23', 'badx2k', '', 'student', '', 'yes', '2020-06-27 14:54:18', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (57, 23, 'parent23', '3f6yah', '23', 'parent', '', 'yes', '2020-06-27 14:54:18', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (58, 24, 'std24', 'x4bvfy', '', 'student', '', 'yes', '2020-06-27 15:02:41', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (59, 24, 'parent24', 'gfcqf3', '24', 'parent', '', 'yes', '2020-06-27 15:02:41', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (60, 25, 'std25', 'hy0hz5', '', 'student', '', 'yes', '2020-06-27 15:11:56', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (61, 25, 'parent25', 'ico4ax', '25', 'parent', '', 'yes', '2020-06-27 15:11:56', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (62, 26, 'std26', 'n6fem6', '', 'student', '', 'yes', '2020-06-27 15:19:15', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (63, 26, 'parent26', 'r9puma', '26', 'parent', '', 'yes', '2020-06-27 15:19:15', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (64, 27, 'std27', 'lkj7bh', '', 'student', '', 'yes', '2020-06-27 15:24:27', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (65, 27, 'parent27', 'sgyzue', '27', 'parent', '', 'yes', '2020-06-27 15:24:27', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (66, 28, 'std28', 'vrm7i8', '', 'student', '', 'yes', '2020-06-29 10:14:32', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (67, 28, 'parent28', '0aj79z', '28', 'parent', '', 'yes', '2020-06-29 10:14:32', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (68, 29, 'std29', '4fi0nf', '', 'student', '', 'yes', '2020-06-29 10:20:08', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (69, 29, 'parent29', 'lv92k9', '29', 'parent', '', 'yes', '2020-06-29 10:20:08', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (70, 30, 'std30', 'f0l79z', '', 'student', '', 'yes', '2020-06-29 10:26:35', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (71, 30, 'parent30', 'd12i7s', '30', 'parent', '', 'yes', '2020-06-29 10:26:35', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (72, 31, 'std31', 'v00dm5', '', 'student', '', 'yes', '2020-06-29 10:44:46', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (73, 31, 'parent31', 'u3b1kf', '31', 'parent', '', 'yes', '2020-06-29 10:44:46', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (74, 32, 'std32', 'ues3so', '', 'student', '', 'yes', '2020-06-29 10:51:05', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (75, 32, 'parent32', 'metw6r', '32', 'parent', '', 'yes', '2020-06-29 10:51:05', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (76, 33, 'std33', '1ug335', '', 'student', '', 'yes', '2020-06-29 10:56:53', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (77, 33, 'parent33', '2nof7n', '33', 'parent', '', 'yes', '2020-06-29 10:56:53', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (78, 34, 'std34', 'yvejsx', '', 'student', '', 'yes', '2020-06-29 11:01:15', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (79, 34, 'parent34', 'wmj14g', '34', 'parent', '', 'yes', '2020-06-29 11:01:15', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (80, 35, 'std35', 'eq00g9', '', 'student', '', 'yes', '2020-06-29 11:07:46', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (81, 35, 'parent35', 'rxdglc', '35', 'parent', '', 'yes', '2020-06-29 11:07:46', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (82, 36, 'std36', '57buyg', '', 'student', '', 'yes', '2020-06-29 11:12:19', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (83, 36, 'parent36', 'qm7dt5', '36', 'parent', '', 'yes', '2020-06-29 11:12:19', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (84, 37, 'std37', 'tnw5xf', '', 'student', '', 'yes', '2020-06-29 11:39:05', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (85, 37, 'parent37', '9zcjrm', '37', 'parent', '', 'yes', '2020-06-29 11:39:05', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (86, 38, 'std38', '8ta9uw', '', 'student', '', 'yes', '2020-06-29 11:44:16', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (87, 38, 'parent38', 'qgioac', '38', 'parent', '', 'yes', '2020-06-29 11:44:16', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (88, 39, 'std39', '8w7hxq', '', 'student', '', 'yes', '2020-06-29 11:49:37', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (89, 39, 'parent39', 'k93b69', '39', 'parent', '', 'yes', '2020-06-29 11:49:37', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (90, 40, 'std40', 'kaxp3k', '', 'student', '', 'yes', '2020-06-30 11:24:09', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (91, 40, 'parent40', '9nqa5x', '40', 'parent', '', 'yes', '2020-06-30 11:24:09', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (92, 41, 'std41', '5o9ge5', '', 'student', '', 'yes', '2020-06-30 11:33:12', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (93, 41, 'parent41', '6lv140', '41', 'parent', '', 'yes', '2020-06-30 11:33:12', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (94, 42, 'std42', 'hdm0mf', '', 'student', '', 'yes', '2020-06-30 11:41:56', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (95, 42, 'parent42', 'wmj37q', '42', 'parent', '', 'yes', '2020-06-30 11:41:56', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (96, 43, 'std43', '9xx7vq', '', 'student', '', 'yes', '2020-06-30 11:46:48', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (97, 43, 'parent43', 'gyhk3k', '43', 'parent', '', 'yes', '2020-06-30 11:46:48', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (98, 44, 'std44', 'efiqny', '', 'student', '', 'yes', '2020-06-30 11:51:15', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (99, 44, 'parent44', '2wh0ub', '44', 'parent', '', 'yes', '2020-06-30 11:51:15', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (100, 45, 'std45', '4kkjzp', '', 'student', '', 'yes', '2020-06-30 11:58:25', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (101, 45, 'parent45', 'wmom8k', '45', 'parent', '', 'yes', '2020-06-30 11:58:25', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (102, 46, 'std46', 'tsbws7', '', 'student', '', 'yes', '2020-06-30 12:04:39', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (103, 46, 'parent46', 'xlkpr7', '46', 'parent', '', 'yes', '2020-06-30 12:04:39', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (104, 47, 'std47', 'om8ixy', '', 'student', '', 'yes', '2020-06-30 12:10:12', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (105, 47, 'parent47', '39odn5', '47', 'parent', '', 'yes', '2020-06-30 12:10:12', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (106, 48, 'std48', '0latb1', '', 'student', '', 'yes', '2020-06-30 12:15:31', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (107, 48, 'parent48', 'l3n45y', '48', 'parent', '', 'yes', '2020-06-30 12:15:31', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (108, 49, 'std49', 'e952m1', '', 'student', '', 'yes', '2020-06-30 12:19:47', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (109, 49, 'parent49', 'axm0bf', '49', 'parent', '', 'yes', '2020-06-30 12:19:47', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (110, 50, 'std50', 'elzn9n', '', 'student', '', 'yes', '2020-06-30 14:52:49', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (111, 50, 'parent50', '77gr2s', '50', 'parent', '', 'yes', '2020-06-30 14:52:49', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (112, 51, 'std51', '5qw4sb', '', 'student', '', 'yes', '2020-06-30 14:57:27', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (113, 51, 'parent51', 'ghm2lr', '51', 'parent', '', 'yes', '2020-06-30 14:57:27', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (114, 52, 'std52', 'mxae5n', '', 'student', '', 'yes', '2020-06-30 15:01:33', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (115, 52, 'parent52', 'ny9gm3', '52', 'parent', '', 'yes', '2020-06-30 15:01:33', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (116, 53, 'std53', 'zmtvjv', '', 'student', '', 'yes', '2020-06-30 15:07:45', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (117, 53, 'parent53', '22cs8b', '53', 'parent', '', 'yes', '2020-06-30 15:07:45', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (118, 54, 'std54', 'fmjy53', '', 'student', '', 'yes', '2020-06-30 15:13:01', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (119, 54, 'parent54', 'e2i48w', '54', 'parent', '', 'yes', '2020-06-30 15:13:01', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (120, 55, 'std55', 'bz9fa7', '', 'student', '', 'yes', '2020-06-30 15:20:57', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (121, 55, 'parent55', '81jc3x', '55', 'parent', '', 'yes', '2020-06-30 15:20:57', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (122, 56, 'std56', 'xg381b', '', 'student', '', 'yes', '2020-06-30 15:31:42', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (123, 56, 'parent56', 'rkx4yc', '56', 'parent', '', 'yes', '2020-06-30 15:31:42', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (124, 57, 'std57', 'e9c1zk', '', 'student', '', 'yes', '2020-06-30 15:37:32', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (125, 57, 'parent57', 'swyx4i', '57', 'parent', '', 'yes', '2020-06-30 15:37:32', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (126, 58, 'std58', '1y13z8', '', 'student', '', 'yes', '2020-06-30 15:42:29', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (127, 58, 'parent58', '297sdv', '58', 'parent', '', 'yes', '2020-06-30 15:42:29', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (128, 59, 'std59', 'rilweu', '', 'student', '', 'yes', '2020-06-30 15:47:54', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (129, 59, 'parent59', 'okwo38', '59', 'parent', '', 'yes', '2020-06-30 15:47:54', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (132, 61, 'std61', 'kka8a5', '', 'student', '', 'yes', '2020-07-01 09:54:00', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (133, 61, 'parent61', '1gi9y5', '61', 'parent', '', 'yes', '2020-07-01 09:54:00', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (134, 62, 'std62', '79wajw', '', 'student', '', 'yes', '2020-07-01 09:57:53', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (135, 62, 'parent62', '3ile0o', '62', 'parent', '', 'yes', '2020-07-01 09:57:53', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (136, 63, 'std63', 'uk7wwm', '', 'student', '', 'yes', '2020-07-01 10:02:14', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (137, 63, 'parent63', 'htuvyr', '63', 'parent', '', 'yes', '2020-07-01 10:02:14', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (138, 64, 'std64', 'rfpta5', '', 'student', '', 'yes', '2020-07-01 10:07:37', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (139, 64, 'parent64', 'km08ck', '64', 'parent', '', 'yes', '2020-07-01 10:07:37', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (140, 65, 'std65', 'jwbhkz', '', 'student', '', 'yes', '2020-07-01 10:12:00', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (141, 65, 'parent65', 'jwaar7', '65', 'parent', '', 'yes', '2020-07-01 10:12:00', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (142, 66, 'std66', 'ah72s4', '', 'student', '', 'yes', '2020-07-01 10:18:14', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (143, 66, 'parent66', '71ilxh', '66', 'parent', '', 'yes', '2020-07-01 10:18:14', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (144, 67, 'std67', 'fto6fx', '', 'student', '', 'yes', '2020-07-01 10:22:23', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (145, 67, 'parent67', 'zcuhhu', '67', 'parent', '', 'yes', '2020-07-01 10:22:23', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (146, 68, 'std68', '7ubpbz', '', 'student', '', 'yes', '2020-07-01 10:38:26', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (147, 68, 'parent68', 'm79rr1', '68', 'parent', '', 'yes', '2020-07-01 10:38:26', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (148, 69, 'std69', 'gfivny', '', 'student', '', 'yes', '2020-07-01 10:45:05', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (149, 69, 'parent69', 'rrx7bf', '69', 'parent', '', 'yes', '2020-07-01 10:45:05', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (150, 70, 'std70', 'bfc3y6', '', 'student', '', 'yes', '2020-07-01 10:50:59', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (151, 70, 'parent70', 'uhiy90', '70', 'parent', '', 'yes', '2020-07-01 10:50:59', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (152, 71, 'std71', '9zk0z4', '', 'student', '', 'yes', '2020-07-01 10:56:11', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (153, 71, 'parent71', 't4yagb', '71', 'parent', '', 'yes', '2020-07-01 10:56:11', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (154, 72, 'std72', '6u6kdk', '', 'student', '', 'yes', '2020-07-01 11:01:55', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (155, 72, 'parent72', 'w3d23m', '72', 'parent', '', 'yes', '2020-07-01 11:01:55', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (156, 73, 'std73', 'sl8pyo', '', 'student', '', 'yes', '2020-07-01 11:05:30', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (157, 73, 'parent73', '204r8r', '73', 'parent', '', 'yes', '2020-07-01 11:05:30', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (158, 74, 'std74', '7h7s0g', '', 'student', '', 'yes', '2020-07-01 11:09:37', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (159, 74, 'parent74', '71r9b4', '74', 'parent', '', 'yes', '2020-07-01 11:09:37', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (160, 75, 'std75', 's3064m', '', 'student', '', 'yes', '2020-07-01 11:13:14', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (161, 75, 'parent75', 'r0qtk2', '75', 'parent', '', 'yes', '2020-07-01 11:13:14', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (162, 76, 'std76', '1zs1xq', '', 'student', '', 'yes', '2020-07-01 11:17:50', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (163, 76, 'parent76', 'sexigc', '76', 'parent', '', 'yes', '2020-07-01 11:17:50', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (164, 77, 'std77', 'd8ar13', '', 'student', '', 'yes', '2020-07-01 11:31:31', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (165, 77, 'parent77', 'nlg93q', '77', 'parent', '', 'yes', '2020-07-01 11:31:31', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (166, 78, 'std78', 'sftqwb', '', 'student', '', 'yes', '2020-07-01 11:35:37', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (167, 78, 'parent78', 'lzzgn6', '78', 'parent', '', 'yes', '2020-07-01 11:35:37', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (168, 79, 'std79', 'y461pk', '', 'student', '', 'yes', '2020-07-01 11:40:25', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (169, 79, 'parent79', '0xrlk8', '79', 'parent', '', 'yes', '2020-07-01 11:40:25', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (170, 80, 'std80', 'majtam', '', 'student', '', 'yes', '2020-07-01 11:44:27', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (171, 80, 'parent80', 'khq4x0', '80', 'parent', '', 'yes', '2020-07-01 11:44:27', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (172, 81, 'std81', 'v5blhg', '', 'student', '', 'yes', '2020-07-01 12:09:03', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (173, 81, 'parent81', '5q8xnj', '81', 'parent', '', 'yes', '2020-07-01 12:09:03', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (174, 82, 'std82', 'byyigt', '', 'student', '', 'yes', '2020-07-01 12:14:40', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (175, 82, 'parent82', 'ycgzop', '82', 'parent', '', 'yes', '2020-07-01 12:14:40', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (176, 83, 'std83', '756gr3', '', 'student', '', 'yes', '2020-07-01 12:20:36', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (177, 83, 'parent83', 'q81ln8', '83', 'parent', '', 'yes', '2020-07-01 12:20:36', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (178, 84, 'std84', 'r6gbd7', '', 'student', '', 'yes', '2020-07-01 12:26:14', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (179, 84, 'parent84', '6te4de', '84', 'parent', '', 'yes', '2020-07-01 12:26:14', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (180, 85, 'std85', '9qqbd4', '', 'student', '', 'yes', '2020-07-01 12:31:25', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (181, 85, 'parent85', '40di5p', '85', 'parent', '', 'yes', '2020-07-01 12:31:25', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (182, 86, 'std86', 'f57eil', '', 'student', '', 'yes', '2020-07-01 12:35:09', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (183, 86, 'parent86', 'sazltv', '86', 'parent', '', 'yes', '2020-07-01 12:35:09', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (184, 87, 'std87', 'e8s7du', '', 'student', '', 'yes', '2020-07-01 12:40:46', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (185, 87, 'parent87', 'fdiwjz', '87', 'parent', '', 'yes', '2020-07-01 12:40:46', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (186, 88, 'std88', 'ahfbt2', '', 'student', '', 'yes', '2020-07-01 12:44:25', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (187, 88, 'parent88', 'fauo39', '88', 'parent', '', 'yes', '2020-07-01 12:44:25', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (188, 89, 'std89', 'f3j5se', '', 'student', '', 'yes', '2020-07-01 12:49:39', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (189, 89, 'parent89', 'foppke', '89', 'parent', '', 'yes', '2020-07-01 12:49:39', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (190, 90, 'std90', '12p65i', '', 'student', '', 'yes', '2020-07-01 12:53:02', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (191, 90, 'parent90', 'mp9dhk', '90', 'parent', '', 'yes', '2020-07-01 12:53:02', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (192, 91, 'std91', 'fha219', '', 'student', '', 'yes', '2020-07-01 13:07:05', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (193, 91, 'parent91', 'vnq4gp', '91', 'parent', '', 'yes', '2020-07-01 13:07:05', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (194, 92, 'std92', '9zd4o7', '', 'student', '', 'yes', '2020-07-01 13:11:53', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (195, 92, 'parent92', 'xcd4mx', '92', 'parent', '', 'yes', '2020-07-01 13:11:53', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (196, 93, 'std93', 'z70q8t', '', 'student', '', 'yes', '2020-07-01 13:15:15', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (197, 93, 'parent93', '8fqwne', '93', 'parent', '', 'yes', '2020-07-01 13:15:15', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (198, 94, 'std94', 'kg11gy', '', 'student', '', 'yes', '2020-07-01 13:20:49', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (199, 94, 'parent94', 'an767s', '94', 'parent', '', 'yes', '2020-07-01 13:20:49', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (200, 95, 'std95', 'hz5d9d', '', 'student', '', 'yes', '2020-07-01 13:39:35', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (201, 95, 'parent95', 'o4ge9j', '95', 'parent', '', 'yes', '2020-07-01 13:39:35', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (202, 96, 'std96', 'dyusep', '', 'student', '', 'yes', '2020-07-01 13:42:59', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (203, 96, 'parent96', '57swoc', '96', 'parent', '', 'yes', '2020-07-01 13:42:59', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (204, 97, 'std97', '97nq1f', '', 'student', '', 'yes', '2020-07-01 13:46:51', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (205, 97, 'parent97', 'zjw4em', '97', 'parent', '', 'yes', '2020-07-01 13:46:51', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (206, 98, 'std98', 's2t5px', '', 'student', '', 'yes', '2020-07-01 13:50:49', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (207, 98, 'parent98', '5awlet', '98', 'parent', '', 'yes', '2020-07-01 13:50:49', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (208, 99, 'std99', 'p0e2xy', '', 'student', '', 'yes', '2020-07-01 13:54:48', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (209, 99, 'parent99', 'jxklla', '99', 'parent', '', 'yes', '2020-07-01 13:54:48', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (210, 100, 'std100', '1ltp1k', '', 'student', '', 'yes', '2020-07-01 13:58:35', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (211, 100, 'parent100', 'bbhtz1', '100', 'parent', '', 'yes', '2020-07-01 13:58:35', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (212, 101, 'std101', 'ltxnhu', '', 'student', '', 'yes', '2020-07-01 14:04:02', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (213, 101, 'parent101', 'iv2i07', '101', 'parent', '', 'yes', '2020-07-01 14:04:02', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (214, 102, 'std102', 'sagb7s', '', 'student', '', 'yes', '2020-07-01 14:09:02', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (215, 102, 'parent102', '6zp2l0', '102', 'parent', '', 'yes', '2020-07-01 14:09:02', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (216, 103, 'std103', 'sx7br9', '', 'student', '', 'yes', '2020-07-01 14:12:48', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (217, 103, 'parent103', 'dcosph', '103', 'parent', '', 'yes', '2020-07-01 14:12:48', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (218, 104, 'std104', '6xpn0c', '', 'student', '', 'yes', '2020-07-01 14:16:34', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (219, 104, 'parent104', 'nqtt38', '104', 'parent', '', 'yes', '2020-07-01 14:16:34', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (220, 105, 'std105', 'r02xqj', '', 'student', '', 'yes', '2020-07-01 14:20:13', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (221, 105, 'parent105', 'lptwvy', '105', 'parent', '', 'yes', '2020-07-01 14:20:13', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (222, 106, 'std106', 'sx5bdv', '', 'student', '', 'yes', '2020-07-01 14:24:00', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (223, 106, 'parent106', 'g74m87', '106', 'parent', '', 'yes', '2020-07-01 14:24:00', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (224, 107, 'std107', 'atk281', '', 'student', '', 'yes', '2020-07-01 14:28:01', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (225, 107, 'parent107', '4pvfvd', '107', 'parent', '', 'yes', '2020-07-01 14:28:01', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (226, 108, 'std108', 'fkr5gl', '', 'student', '', 'yes', '2020-07-01 14:32:00', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (227, 108, 'parent108', 'clxjaq', '108', 'parent', '', 'yes', '2020-07-01 14:32:00', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (228, 109, 'std109', 'gvadfo', '', 'student', '', 'yes', '2020-07-01 14:36:03', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (229, 109, 'parent109', 'jt4hof', '109', 'parent', '', 'yes', '2020-07-01 14:36:03', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (230, 110, 'std110', 'a7npbs', '', 'student', '', 'yes', '2020-07-01 14:39:48', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (231, 110, 'parent110', '3ewaj4', '110', 'parent', '', 'yes', '2020-07-01 14:39:48', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (232, 111, 'std111', 'ldrokr', '', 'student', '', 'yes', '2020-07-01 14:43:41', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (233, 111, 'parent111', 'flq31l', '111', 'parent', '', 'yes', '2020-07-01 14:43:41', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (234, 112, 'std112', '4648oy', '', 'student', '', 'yes', '2020-07-01 14:47:36', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (235, 112, 'parent112', 'e2ig2b', '112', 'parent', '', 'yes', '2020-07-01 14:47:36', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (236, 113, 'std113', 'fhpf0l', '', 'student', '', 'yes', '2020-07-01 14:53:05', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (237, 113, 'parent113', 'wo708f', '113', 'parent', '', 'yes', '2020-07-01 14:53:05', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (238, 114, 'std114', 'duhwcb', '', 'student', '', 'yes', '2020-07-01 14:56:43', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (239, 114, 'parent114', '6hyoco', '114', 'parent', '', 'yes', '2020-07-01 14:56:43', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (240, 115, 'std115', '6ak9p7', '', 'student', '', 'yes', '2020-07-01 14:59:55', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (241, 115, 'parent115', 'gw0d34', '115', 'parent', '', 'yes', '2020-07-01 14:59:55', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (242, 116, 'std116', 'k2p90s', '', 'student', '', 'yes', '2020-07-01 15:03:30', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (243, 116, 'parent116', 'b1rnwq', '116', 'parent', '', 'yes', '2020-07-01 15:03:30', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (244, 117, 'std117', '3z8c3s', '', 'student', '', 'yes', '2020-07-01 15:07:07', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (245, 117, 'parent117', 'qwyyrs', '117', 'parent', '', 'yes', '2020-07-01 15:07:07', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (246, 118, 'std118', 'g3md5i', '', 'student', '', 'yes', '2020-07-01 15:10:53', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (247, 118, 'parent118', 'xen35b', '118', 'parent', '', 'yes', '2020-07-01 15:10:53', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (248, 119, 'std119', 'nee2hf', '', 'student', '', 'yes', '2020-07-01 15:36:11', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (249, 119, 'parent119', 'v1pto0', '119', 'parent', '', 'yes', '2020-07-01 15:36:11', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (250, 120, 'std120', 'ybgnvc', '', 'student', '', 'yes', '2020-07-01 15:40:06', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (251, 120, 'parent120', 'u4ookb', '120', 'parent', '', 'yes', '2020-07-01 15:40:06', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (252, 121, 'std121', 'hbgwc3', '', 'student', '', 'yes', '2020-07-01 15:43:38', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (253, 121, 'parent121', '6d9xo1', '121', 'parent', '', 'yes', '2020-07-01 15:43:38', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (254, 122, 'std122', 'jfkmg5', '', 'student', '', 'yes', '2020-07-01 15:47:51', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (255, 122, 'parent122', 'pbouiv', '122', 'parent', '', 'yes', '2020-07-01 15:47:51', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (256, 123, 'std123', 'jyclqo', '', 'student', '', 'yes', '2020-07-07 15:22:26', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (257, 123, 'parent123', 'trwq8p', '123', 'parent', '', 'yes', '2020-07-07 15:22:26', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (258, 124, 'std124', 'pw1985', '', 'student', '', 'yes', '2020-07-07 15:27:26', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (259, 124, 'parent124', 'dsw2et', '124', 'parent', '', 'yes', '2020-07-07 15:27:26', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (260, 125, 'std125', 'hazcjk', '', 'student', '', 'yes', '2020-07-07 15:32:05', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (261, 125, 'parent125', 'dfm1yf', '125', 'parent', '', 'yes', '2020-07-07 15:32:05', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (262, 126, 'std126', 'x53b26', '', 'student', '', 'yes', '2020-07-07 15:37:27', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (263, 126, 'parent126', 'azel8n', '126', 'parent', '', 'yes', '2020-07-07 15:37:27', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (264, 127, 'std127', 'p7ikau', '', 'student', '', 'yes', '2020-07-07 15:42:15', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (265, 127, 'parent127', 'i5n2oi', '127', 'parent', '', 'yes', '2020-07-07 15:42:15', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (266, 128, 'std128', '6kjkvv', '', 'student', '', 'yes', '2020-07-07 15:47:34', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (267, 128, 'parent128', '4kou28', '128', 'parent', '', 'yes', '2020-07-07 15:47:34', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (268, 129, 'std129', 'pyiwjf', '', 'student', '', 'yes', '2020-07-07 15:52:28', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (269, 129, 'parent129', '7c5fw2', '129', 'parent', '', 'yes', '2020-07-07 15:52:28', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (270, 130, 'std130', 'whtudz', '', 'student', '', 'yes', '2020-07-07 15:56:15', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (271, 130, 'parent130', '5o6l2n', '130', 'parent', '', 'yes', '2020-07-07 15:56:15', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (272, 131, 'std131', 'gcmhj7', '', 'student', '', 'yes', '2020-07-07 16:00:28', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (273, 131, 'parent131', 'w6oqpj', '131', 'parent', '', 'yes', '2020-07-07 16:00:28', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (274, 132, 'std132', 'syepz8', '', 'student', '', 'yes', '2020-07-07 16:04:59', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (275, 132, 'parent132', '7uak2o', '132', 'parent', '', 'yes', '2020-07-07 16:04:59', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (276, 133, 'std133', 'bjwtmr', '', 'student', '', 'yes', '2020-07-07 16:09:21', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (277, 133, 'parent133', '74m04r', '133', 'parent', '', 'yes', '2020-07-07 16:09:21', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (278, 134, 'std134', 'zuk58y', '', 'student', '', 'yes', '2020-07-07 16:14:05', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (279, 134, 'parent134', '4howsd', '134', 'parent', '', 'yes', '2020-07-07 16:14:05', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (280, 135, 'std135', 'y6mrlc', '', 'student', '', 'yes', '2020-07-07 16:18:55', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (281, 135, 'parent135', '0ynin6', '135', 'parent', '', 'yes', '2020-07-07 16:18:55', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (282, 136, 'std136', 'jmb33f', '', 'student', '', 'yes', '2020-07-07 16:22:51', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (283, 136, 'parent136', '0wp6rp', '136', 'parent', '', 'yes', '2020-07-07 16:22:51', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (284, 137, 'std137', 'kqy5vk', '', 'student', '', 'yes', '2020-07-07 16:28:38', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (285, 137, 'parent137', '5v7u3u', '137', 'parent', '', 'yes', '2020-07-07 16:28:38', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (286, 138, 'std138', 'di9ytj', '', 'student', '', 'yes', '2020-07-07 16:38:16', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (287, 138, 'parent138', 'cedez7', '138', 'parent', '', 'yes', '2020-07-07 16:38:16', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (288, 139, 'std139', 'u1uh37', '', 'student', '', 'yes', '2020-07-07 16:41:47', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (289, 139, 'parent139', '2f29ld', '139', 'parent', '', 'yes', '2020-07-07 16:41:47', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: vehicle_routes
#

DROP TABLE IF EXISTS `vehicle_routes`;

CREATE TABLE `vehicle_routes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `route_id` int(11) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: vehicles
#

DROP TABLE IF EXISTS `vehicles`;

CREATE TABLE `vehicles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vehicle_no` varchar(20) DEFAULT NULL,
  `vehicle_model` varchar(100) NOT NULL DEFAULT 'None',
  `manufacture_year` varchar(4) DEFAULT NULL,
  `driver_name` varchar(50) DEFAULT NULL,
  `driver_licence` varchar(50) NOT NULL DEFAULT 'None',
  `driver_contact` varchar(20) DEFAULT NULL,
  `note` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

