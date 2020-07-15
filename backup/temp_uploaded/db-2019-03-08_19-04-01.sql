#
# TABLE STRUCTURE FOR: accountants
#

DROP TABLE IF EXISTS `accountants`;

CREATE TABLE `accountants` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `designation` varchar(50) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `accountants` (`id`, `name`, `email`, `password`, `address`, `dob`, `designation`, `sex`, `phone`, `image`, `is_active`, `created_at`) VALUES (1, 'Muhammad Faizan', 'faizan@smil.edu.pk', NULL, 'kotri', '1990-10-03', NULL, 'Male', '03123353864', 'uploads/accountant_images/1.jpg', 'no', '2019-03-08 15:38:20');


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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `admin` (`id`, `username`, `role`, `email`, `password`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (1, 'Admin', 'admin', 'info@smiljamshoro.com', '0c4012078ec338d03e260bb4918decb5', '', 'yes', '2019-03-07 20:33:39', '0000-00-00 00:00:00');
INSERT INTO `admin` (`id`, `username`, `role`, `email`, `password`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (2, 'noorahmed1993', 'admin', 'noorahmed1993@live.com', 'e212f695c9cf13009cdbab3d57c8e820', '', 'yes', '2019-03-08 01:14:24', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: attendence_type
#

DROP TABLE IF EXISTS `attendence_type`;

CREATE TABLE `attendence_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `key_value` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `attendence_type` (`id`, `type`, `key_value`, `is_active`, `created_at`, `updated_at`) VALUES (1, 'Present', '<b class=\"text text-success\">P</b>', 'yes', '2016-06-24 04:41:37', '0000-00-00 00:00:00');
INSERT INTO `attendence_type` (`id`, `type`, `key_value`, `is_active`, `created_at`, `updated_at`) VALUES (2, 'Late with excuse', '<b class=\"text text-warning\">E</b>', 'yes', '2016-10-11 22:05:44', '0000-00-00 00:00:00');
INSERT INTO `attendence_type` (`id`, `type`, `key_value`, `is_active`, `created_at`, `updated_at`) VALUES (3, 'Late', '<b class=\"text text-warning\">L</b>', 'yes', '2016-06-24 04:42:28', '0000-00-00 00:00:00');
INSERT INTO `attendence_type` (`id`, `type`, `key_value`, `is_active`, `created_at`, `updated_at`) VALUES (4, 'Absent', '<b class=\"text text-danger\">A</b>', 'yes', '2016-10-11 22:05:40', '0000-00-00 00:00:00');
INSERT INTO `attendence_type` (`id`, `type`, `key_value`, `is_active`, `created_at`, `updated_at`) VALUES (5, 'Holiday', 'H', 'yes', '2016-10-11 22:05:01', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: book_issues
#

DROP TABLE IF EXISTS `book_issues`;

CREATE TABLE `book_issues` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `book_id` int(11) DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `is_returned` int(11) DEFAULT 0,
  `member_id` int(11) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `available` varchar(10) COLLATE utf8_unicode_ci DEFAULT 'yes',
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `class_id` (`class_id`),
  KEY `section_id` (`section_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `class_sections` (`id`, `class_id`, `section_id`, `is_active`, `created_at`, `updated_at`) VALUES (1, 1, 1, 'no', '2019-03-08 00:25:00', '0000-00-00 00:00:00');
INSERT INTO `class_sections` (`id`, `class_id`, `section_id`, `is_active`, `created_at`, `updated_at`) VALUES (3, 1, 2, 'no', '2019-03-08 00:27:38', '0000-00-00 00:00:00');
INSERT INTO `class_sections` (`id`, `class_id`, `section_id`, `is_active`, `created_at`, `updated_at`) VALUES (4, 3, 1, 'no', '2019-03-08 12:53:12', '0000-00-00 00:00:00');
INSERT INTO `class_sections` (`id`, `class_id`, `section_id`, `is_active`, `created_at`, `updated_at`) VALUES (5, 3, 2, 'no', '2019-03-08 12:53:21', '0000-00-00 00:00:00');
INSERT INTO `class_sections` (`id`, `class_id`, `section_id`, `is_active`, `created_at`, `updated_at`) VALUES (6, 4, 1, 'no', '2019-03-08 12:53:45', '0000-00-00 00:00:00');
INSERT INTO `class_sections` (`id`, `class_id`, `section_id`, `is_active`, `created_at`, `updated_at`) VALUES (7, 4, 2, 'no', '2019-03-08 12:53:45', '0000-00-00 00:00:00');
INSERT INTO `class_sections` (`id`, `class_id`, `section_id`, `is_active`, `created_at`, `updated_at`) VALUES (8, 5, 1, 'no', '2019-03-08 12:53:57', '0000-00-00 00:00:00');
INSERT INTO `class_sections` (`id`, `class_id`, `section_id`, `is_active`, `created_at`, `updated_at`) VALUES (9, 5, 2, 'no', '2019-03-08 12:53:57', '0000-00-00 00:00:00');
INSERT INTO `class_sections` (`id`, `class_id`, `section_id`, `is_active`, `created_at`, `updated_at`) VALUES (10, 6, 1, 'no', '2019-03-08 12:54:08', '0000-00-00 00:00:00');
INSERT INTO `class_sections` (`id`, `class_id`, `section_id`, `is_active`, `created_at`, `updated_at`) VALUES (11, 6, 2, 'no', '2019-03-08 12:54:08', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: classes
#

DROP TABLE IF EXISTS `classes`;

CREATE TABLE `classes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `classes` (`id`, `class`, `is_active`, `created_at`, `updated_at`) VALUES (1, 'P-I', 'no', '2019-03-08 00:25:00', '0000-00-00 00:00:00');
INSERT INTO `classes` (`id`, `class`, `is_active`, `created_at`, `updated_at`) VALUES (3, 'P-II', 'no', '2019-03-08 12:53:12', '0000-00-00 00:00:00');
INSERT INTO `classes` (`id`, `class`, `is_active`, `created_at`, `updated_at`) VALUES (4, 'P-III', 'no', '2019-03-08 12:53:45', '0000-00-00 00:00:00');
INSERT INTO `classes` (`id`, `class`, `is_active`, `created_at`, `updated_at`) VALUES (5, 'P-IV', 'no', '2019-03-08 12:53:57', '0000-00-00 00:00:00');
INSERT INTO `classes` (`id`, `class`, `is_active`, `created_at`, `updated_at`) VALUES (6, 'P-V', 'no', '2019-03-08 12:54:08', '0000-00-00 00:00:00');


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
  `note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `email_config` (`id`, `email_type`, `smtp_server`, `smtp_port`, `smtp_username`, `smtp_password`, `ssl_tls`, `is_active`, `created_at`) VALUES (1, 'sendmail', '', '', '', '', '', '', '2017-12-05 03:33:22');


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
  `note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `exam_schedule_id` (`exam_schedule_id`),
  KEY `student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: exam_schedules
#

DROP TABLE IF EXISTS `exam_schedules`;

CREATE TABLE `exam_schedules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` int(11) NOT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `teacher_subject_id` int(11) DEFAULT NULL,
  `date_of_exam` date DEFAULT NULL,
  `start_to` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `end_from` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `room_no` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `full_marks` int(11) DEFAULT NULL,
  `passing_marks` int(11) DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `teacher_subject_id` (`teacher_subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: exams
#

DROP TABLE IF EXISTS `exams`;

CREATE TABLE `exams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sesion_id` int(11) NOT NULL,
  `note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: expense_head
#

DROP TABLE IF EXISTS `expense_head`;

CREATE TABLE `expense_head` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exp_category` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'yes',
  `is_deleted` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `expense_head` (`id`, `exp_category`, `description`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES (1, 'Wages/Salaries', 'Employees Salaries', 'yes', 'no', '2019-03-08 18:25:21', '0000-00-00 00:00:00');
INSERT INTO `expense_head` (`id`, `exp_category`, `description`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES (2, 'Office Expenses', '', 'yes', 'no', '2019-03-08 18:33:34', '0000-00-00 00:00:00');
INSERT INTO `expense_head` (`id`, `exp_category`, `description`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES (3, 'Bluding Rent', 'Rent for Bluding', 'yes', 'no', '2019-03-08 18:36:02', '0000-00-00 00:00:00');
INSERT INTO `expense_head` (`id`, `exp_category`, `description`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES (4, 'Carrage Foudation', '', 'yes', 'no', '2019-03-08 18:38:29', '0000-00-00 00:00:00');
INSERT INTO `expense_head` (`id`, `exp_category`, `description`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES (5, 'Carrage & Corratge', 'Materiel Rent', 'yes', 'no', '2019-03-08 18:39:36', '0000-00-00 00:00:00');
INSERT INTO `expense_head` (`id`, `exp_category`, `description`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES (6, 'Compter Lab', 'Compter Lab Exp', 'yes', 'no', '2019-03-08 18:42:09', '0000-00-00 00:00:00');
INSERT INTO `expense_head` (`id`, `exp_category`, `description`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES (7, 'Exam Exp', 'Photo copies e.t.c', 'yes', 'no', '2019-03-08 18:47:58', '0000-00-00 00:00:00');
INSERT INTO `expense_head` (`id`, `exp_category`, `description`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES (8, 'Equipment', 'Dispansar Gunnater', 'yes', 'no', '2019-03-08 18:51:10', '0000-00-00 00:00:00');
INSERT INTO `expense_head` (`id`, `exp_category`, `description`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES (9, 'Refund Fee', 'Retan Fee', 'yes', 'no', '2019-03-08 18:54:53', '0000-00-00 00:00:00');
INSERT INTO `expense_head` (`id`, `exp_category`, `description`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES (10, 'Stationary & Printing', 'pen,pencial e.t.c', 'yes', 'no', '2019-03-08 18:56:29', '0000-00-00 00:00:00');
INSERT INTO `expense_head` (`id`, `exp_category`, `description`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES (11, 'Ulitly Exp', 'Gas Bill Telephone Bill Wapda Bill', 'yes', 'no', '2019-03-08 18:57:48', '0000-00-00 00:00:00');
INSERT INTO `expense_head` (`id`, `exp_category`, `description`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES (12, 'Extra Curricular', 'NEW well COME Party Tours e.t.c', 'yes', 'no', '2019-03-08 19:01:07', '0000-00-00 00:00:00');


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
  `note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'yes',
  `is_deleted` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: fee_groups
#

DROP TABLE IF EXISTS `fee_groups`;

CREATE TABLE `fee_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `fee_groups` (`id`, `name`, `description`, `is_active`, `created_at`) VALUES (1, 'Students Fees', '', 'no', '2019-03-08 15:51:10');
INSERT INTO `fee_groups` (`id`, `name`, `description`, `is_active`, `created_at`) VALUES (2, 'Group A', 'Rs. 45,000/-', 'no', '2019-03-08 16:48:48');


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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `fee_session_group_id` (`fee_session_group_id`),
  KEY `fee_groups_id` (`fee_groups_id`),
  KEY `feetype_id` (`feetype_id`),
  KEY `session_id` (`session_id`),
  CONSTRAINT `fee_groups_feetype_ibfk_1` FOREIGN KEY (`fee_session_group_id`) REFERENCES `fee_session_groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fee_groups_feetype_ibfk_2` FOREIGN KEY (`fee_groups_id`) REFERENCES `fee_groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fee_groups_feetype_ibfk_3` FOREIGN KEY (`feetype_id`) REFERENCES `feetype` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fee_groups_feetype_ibfk_4` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO `fee_groups_feetype` (`id`, `fee_session_group_id`, `fee_groups_id`, `feetype_id`, `session_id`, `due_date`, `amount`, `is_active`, `created_at`) VALUES (1, 1, 1, 1, 13, '2018-05-31', '35000.00', 'no', '2019-03-08 15:52:44');
INSERT INTO `fee_groups_feetype` (`id`, `fee_session_group_id`, `fee_groups_id`, `feetype_id`, `session_id`, `due_date`, `amount`, `is_active`, `created_at`) VALUES (3, 3, 2, 1, 14, '2018-03-12', '35000.00', 'no', '2019-03-08 17:43:05');


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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `fee_groups_id` (`fee_groups_id`),
  KEY `session_id` (`session_id`),
  CONSTRAINT `fee_session_groups_ibfk_1` FOREIGN KEY (`fee_groups_id`) REFERENCES `fee_groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fee_session_groups_ibfk_2` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO `fee_session_groups` (`id`, `fee_groups_id`, `session_id`, `is_active`, `created_at`) VALUES (1, 1, 13, 'no', '2019-03-08 15:51:42');
INSERT INTO `fee_session_groups` (`id`, `fee_groups_id`, `session_id`, `is_active`, `created_at`) VALUES (3, 2, 14, 'no', '2019-03-08 17:25:53');


#
# TABLE STRUCTURE FOR: feecategory
#

DROP TABLE IF EXISTS `feecategory`;

CREATE TABLE `feecategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
  `description` text DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `session_id` (`session_id`),
  CONSTRAINT `fees_discounts_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `feetype` (`id`, `feecategory_id`, `type`, `code`, `is_active`, `created_at`, `updated_at`, `description`) VALUES (1, NULL, 'Semester', '', 'no', '2019-03-08 15:08:59', '0000-00-00 00:00:00', '');
INSERT INTO `feetype` (`id`, `feecategory_id`, `type`, `code`, `is_active`, `created_at`, `updated_at`, `description`) VALUES (2, NULL, 'Semester Fee', '1234', 'no', '2019-03-08 16:49:16', '0000-00-00 00:00:00', '');


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
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
  `address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `intake` int(11) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
  `cost_per_bed` float(10,2) DEFAULT 0.00,
  `title` varchar(200) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
  `note` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'yes',
  `is_deleted` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `documents` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `income` (`id`, `inc_head_id`, `name`, `date`, `amount`, `note`, `is_active`, `is_deleted`, `created_at`, `updated_at`, `documents`) VALUES (1, '1', 'Muhammad Hasnain Abbasi', '2019-03-05', '45', 'Fee Paid ', 'yes', 'no', '2019-03-08 16:44:31', '0000-00-00 00:00:00', NULL);


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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `income_head` (`id`, `income_category`, `description`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES (1, 'Semester Fees', 'Students Semester Fees', 'yes', 'no', '2019-03-08 00:19:10', '0000-00-00 00:00:00');


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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `item_store_id` int(11) DEFAULT NULL,
  `item_supplier_id` int(11) DEFAULT NULL,
  `quantity` int(100) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `item` (`id`, `item_category_id`, `name`, `item_photo`, `description`, `created_at`, `updated_at`, `item_store_id`, `item_supplier_id`, `quantity`, `date`) VALUES (1, 1, 'wooden Chairs', NULL, 'All types of wooden chairs', '2019-03-08 18:39:10', '0000-00-00 00:00:00', NULL, NULL, 0, '0000-00-00');


#
# TABLE STRUCTURE FOR: item_category
#

DROP TABLE IF EXISTS `item_category`;

CREATE TABLE `item_category` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `item_category` varchar(255) NOT NULL,
  `is_active` varchar(255) NOT NULL DEFAULT 'yes',
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `item_category` (`id`, `item_category`, `is_active`, `description`, `created_at`, `updated_at`) VALUES (1, 'Furniture', 'yes', 'All Furniture ', '2019-03-08 18:35:58', '0000-00-00 00:00:00');


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
  `is_returned` int(2) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_active` varchar(10) DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  KEY `item_category_id` (`item_category_id`),
  CONSTRAINT `item_issue_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE,
  CONSTRAINT `item_issue_ibfk_2` FOREIGN KEY (`item_category_id`) REFERENCES `item_category` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  KEY `supplier_id` (`supplier_id`),
  KEY `store_id` (`store_id`),
  CONSTRAINT `item_stock_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE,
  CONSTRAINT `item_stock_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `item_supplier` (`id`) ON DELETE CASCADE,
  CONSTRAINT `item_stock_ibfk_3` FOREIGN KEY (`store_id`) REFERENCES `item_store` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `item_stock` (`id`, `item_id`, `supplier_id`, `symbol`, `store_id`, `quantity`, `date`, `attachment`, `description`, `is_active`, `created_at`) VALUES (1, 1, 1, '+', NULL, 25, '2018-01-01', NULL, '', 'yes', '2019-03-08 18:43:39');


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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `item_supplier` (`id`, `item_supplier`, `phone`, `email`, `address`, `contact_person_name`, `contact_person_phone`, `contact_person_email`, `description`) VALUES (1, 'Carpenter', '03342001296', '', 'Jamshoro phatak', 'Imdad ', '03342001296', '', '');


#
# TABLE STRUCTURE FOR: lang_keys
#

DROP TABLE IF EXISTS `lang_keys`;

CREATE TABLE `lang_keys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=783 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (1, 'session', 'no', '2016-03-09 21:24:39', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (2, 'school_name', 'no', '2016-03-09 21:34:28', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (3, 'email', 'no', '2016-03-09 21:34:48', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (6, 'roll_no', 'no', '2001-12-30 14:59:30', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (7, 'first_name', 'no', '2001-12-30 14:59:30', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (8, 'last_name', 'no', '2001-12-30 14:59:30', '0000-00-00 00:00:00');
INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES (9, 'class', 'no', '2001-12-30 14:59:30', '0000-00-00 00:00:00');
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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `lang_id` (`lang_id`),
  KEY `key_id` (`key_id`)
) ENGINE=InnoDB AUTO_INCREMENT=74120 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (997, 4, 620, 'Absent', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (998, 4, 437, 'Academic Fees Detail', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (999, 4, 211, 'Academics', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1000, 4, 79, 'Action', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1001, 4, 595, 'Active', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1002, 4, 228, 'Add', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1003, 4, 64, 'Add Another Language', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1004, 4, 499, 'Add Book', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1005, 4, 51, 'Add Category', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1006, 4, 468, 'Add Class', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
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
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1022, 4, 57, 'Add Section', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
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
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1053, 4, 382, 'Available For All Classes', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
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
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1079, 4, 9, 'Class', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1080, 4, 429, 'Class Fees Detail', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1081, 4, 54, 'Class List', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1082, 4, 333, 'Class Section', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1083, 4, 492, 'Class Timetable', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1084, 4, 116, 'Classes', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
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
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1139, 4, 375, 'Edit Class', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
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
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1276, 4, 432, 'Monthly Expenses', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1277, 4, 431, 'Monthly Fees Collection', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
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
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1393, 4, 10, 'Section', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1394, 4, 56, 'Section List', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1395, 4, 451, 'Section Name', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES (1396, 4, 566, 'Sections', NULL, 'no', '2017-04-06 15:48:39', '0000-00-00 00:00:00');
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


#
# TABLE STRUCTURE FOR: languages
#

DROP TABLE IF EXISTS `languages`;

CREATE TABLE `languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
  `address` text DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `designation` varchar(50) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `send_mail` varchar(10) DEFAULT '0',
  `send_sms` varchar(10) DEFAULT '0',
  `is_group` varchar(10) DEFAULT '0',
  `is_individual` varchar(10) DEFAULT '0',
  `is_class` int(10) NOT NULL DEFAULT 0,
  `group_list` text DEFAULT NULL,
  `user_list` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
  `address` text COLLATE utf8_unicode_ci DEFAULT NULL,
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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `lang_id` (`lang_id`),
  KEY `session_id` (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `sch_settings` (`id`, `name`, `email`, `phone`, `address`, `lang_id`, `dise_code`, `date_format`, `currency`, `currency_symbol`, `is_rtl`, `timezone`, `session_id`, `start_month`, `image`, `theme`, `is_active`, `created_at`, `updated_at`) VALUES (1, 'SINDH MEHRAN INSTITUTE OF LAW JAMSHORO', 'smiljamshoro@gmail.com', '0222115786------03161329134', 'Bungalow # A97 Sindh University Employees Co-oprative Housing Society Jamshoro Sindh.', 4, 'Jamshoro Branch', 'd/m/Y', 'PKR', 'Rs:', 'disabled', 'Asia/Karachi', 14, '1', '1.jpeg', 'blue.jpg', 'no', '2019-03-08 18:57:51', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: sections
#

DROP TABLE IF EXISTS `sections`;

CREATE TABLE `sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `sections` (`id`, `section`, `is_active`, `created_at`, `updated_at`) VALUES (1, '1st Semester', 'no', '2019-03-08 00:24:38', '0000-00-00 00:00:00');
INSERT INTO `sections` (`id`, `section`, `is_active`, `created_at`, `updated_at`) VALUES (2, '2nd Semester', 'no', '2019-03-08 00:24:49', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: send_notification
#

DROP TABLE IF EXISTS `send_notification`;

CREATE TABLE `send_notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `date` date DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `visible_student` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `visible_teacher` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `visible_parent` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `created_by` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: sessions
#

DROP TABLE IF EXISTS `sessions`;

CREATE TABLE `sessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `sessions` (`id`, `session`, `is_active`, `created_at`, `updated_at`) VALUES (7, '2016-17', 'no', '2017-04-20 17:12:19', '0000-00-00 00:00:00');
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
INSERT INTO `sessions` (`id`, `session`, `is_active`, `created_at`, `updated_at`) VALUES (25, '2029-30', 'no', '2016-10-01 16:00:37', '0000-00-00 00:00:00');


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
  `contact` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'disabled',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
  `amount_fine` float(10,2) NOT NULL DEFAULT 0.00,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` date DEFAULT '0000-00-00',
  `payment_mode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
  `amount_detail` text DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `student_fees_master_id` (`student_fees_master_id`),
  KEY `fee_groups_feetype_id` (`fee_groups_feetype_id`),
  CONSTRAINT `student_fees_deposite_ibfk_1` FOREIGN KEY (`student_fees_master_id`) REFERENCES `student_fees_master` (`id`) ON DELETE CASCADE,
  CONSTRAINT `student_fees_deposite_ibfk_2` FOREIGN KEY (`fee_groups_feetype_id`) REFERENCES `fee_groups_feetype` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (3, 9, 3, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-01-08\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\" Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2019-03-08 17:44:05');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (4, 10, 3, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-07-07\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\" Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2019-03-08 17:45:15');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (5, 11, 3, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-01-08\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\" Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2019-03-08 17:46:20');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (7, 13, 3, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-01-09\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\" Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2019-03-08 17:51:41');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (8, 15, 3, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-03-30\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\" Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2019-03-08 18:00:32');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (9, 16, 3, '{\"1\":{\"amount\":\"18000\",\"date\":\"2018-01-09\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\" Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"17000\",\"date\":\"2018-04-05\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\" Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":2}}', 'no', '2019-03-08 18:01:30');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (10, 17, 3, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-01-09\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\" Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2019-03-08 18:02:23');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (12, 14, 3, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-01-09\",\"amount_discount\":\"15000\",\"amount_fine\":\"0\",\"description\":\"Discount Approved by Admin Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2019-03-08 18:11:56');
INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES (13, 12, 3, '{\"1\":{\"amount\":\"35000\",\"date\":\"2018-01-08\",\"amount_discount\":\"35000\",\"amount_fine\":\"0\",\"description\":\"Fully Funded Scholarship Approved By Admin Collected By: Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2019-03-08 18:17:41');


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
  `description` text DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `student_session_id` (`student_session_id`),
  KEY `fees_discount_id` (`fees_discount_id`),
  CONSTRAINT `student_fees_discounts_ibfk_1` FOREIGN KEY (`student_session_id`) REFERENCES `student_session` (`id`) ON DELETE CASCADE,
  CONSTRAINT `student_fees_discounts_ibfk_2` FOREIGN KEY (`fees_discount_id`) REFERENCES `fees_discounts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: student_fees_master
#

DROP TABLE IF EXISTS `student_fees_master`;

CREATE TABLE `student_fees_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_session_id` int(11) DEFAULT NULL,
  `fee_session_group_id` int(11) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `student_session_id` (`student_session_id`),
  KEY `fee_session_group_id` (`fee_session_group_id`),
  CONSTRAINT `student_fees_master_ibfk_1` FOREIGN KEY (`student_session_id`) REFERENCES `student_session` (`id`) ON DELETE CASCADE,
  CONSTRAINT `student_fees_master_ibfk_2` FOREIGN KEY (`fee_session_group_id`) REFERENCES `fee_session_groups` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (9, 1, 3, 'no', '2019-03-08 17:35:05');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (10, 2, 3, 'no', '2019-03-08 17:35:05');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (11, 3, 3, 'no', '2019-03-08 17:35:05');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (12, 4, 3, 'no', '2019-03-08 17:35:05');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (13, 5, 3, 'no', '2019-03-08 17:35:05');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (14, 6, 3, 'no', '2019-03-08 17:35:05');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (15, 7, 3, 'no', '2019-03-08 17:35:05');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (16, 8, 3, 'no', '2019-03-08 17:35:05');
INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES (17, 9, 3, 'no', '2019-03-08 17:35:05');


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
  `route_id` int(11) NOT NULL,
  `vehroute_id` int(10) DEFAULT NULL,
  `transport_fees` float(10,2) NOT NULL DEFAULT 0.00,
  `fees_discount` float(10,2) NOT NULL DEFAULT 0.00,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (1, 14, 1, 1, 1, 0, 0, '0.00', '0.00', 'no', '2019-03-08 12:02:11', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (2, 14, 2, 1, 1, 0, 0, '0.00', '0.00', 'no', '2019-03-08 13:23:17', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (3, 14, 3, 1, 1, 0, 0, '0.00', '0.00', 'no', '2019-03-08 13:35:52', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (4, 14, 4, 1, 1, 0, 0, '0.00', '0.00', 'no', '2019-03-08 13:49:04', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (5, 14, 5, 1, 1, 0, 0, '0.00', '0.00', 'no', '2019-03-08 14:09:41', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (6, 14, 6, 1, 1, 0, 0, '0.00', '0.00', 'no', '2019-03-08 14:22:05', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (7, 14, 7, 1, 1, 0, 0, '0.00', '0.00', 'no', '2019-03-08 14:30:14', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (8, 14, 8, 1, 1, 0, 0, '0.00', '0.00', 'no', '2019-03-08 14:37:26', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (9, 14, 9, 1, 1, 0, 0, '0.00', '0.00', 'no', '2019-03-08 15:03:38', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (10, 13, 1, 1, 1, 0, 0, '0.00', '0.00', 'no', '2019-03-08 15:45:59', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (11, 13, 2, 1, 1, 0, NULL, '0.00', '0.00', 'no', '2019-03-08 15:11:22', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (12, 13, 3, 1, 1, 0, NULL, '0.00', '0.00', 'no', '2019-03-08 15:11:22', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (13, 13, 4, 1, 1, 0, NULL, '0.00', '0.00', 'no', '2019-03-08 15:11:22', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (14, 13, 5, 1, 1, 0, NULL, '0.00', '0.00', 'no', '2019-03-08 15:11:22', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (15, 13, 6, 1, 1, 0, NULL, '0.00', '0.00', 'no', '2019-03-08 15:11:22', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (16, 13, 7, 1, 1, 0, NULL, '0.00', '0.00', 'no', '2019-03-08 15:11:22', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (17, 13, 8, 1, 1, 0, NULL, '0.00', '0.00', 'no', '2019-03-08 15:11:22', '0000-00-00 00:00:00');
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES (18, 13, 9, 1, 1, 0, NULL, '0.00', '0.00', 'no', '2019-03-08 15:11:22', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: student_sibling
#

DROP TABLE IF EXISTS `student_sibling`;

CREATE TABLE `student_sibling` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `sibling_student_id` int(11) DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
  `amount_fine` float(10,2) NOT NULL DEFAULT 0.00,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` date DEFAULT '0000-00-00',
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `payment_mode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
  `current_address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `permanent_address` text COLLATE utf8_unicode_ci DEFAULT NULL,
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
  `guardian_address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `guardian_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `previous_school` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (1, '01', '2K18/LLB/01', '2018-01-15', 'Allah', 'Dino', 'No', 'uploads/student_images/1.jpg', '03041316054', '', NULL, NULL, NULL, 'ISLAM', 'MEERANI', '1999-01-02', 'Male', 'H# 9-A Naqash villas phase II, Qasimabad Hyderabad.', '', '', '4120595538979', '', '', '', '', 'father', 'MUHAMMAD DAUD', '03013519459', '', '', '', '', 'MUHAMMAD DAUD', 'Father', '03013519459', '', 'H# 9-A Naqash villas phase II, Qasimabad Hyderabad.', '', 'no', '', '2019-03-08 15:45:59', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (2, '02', '2K18/LLB/02', '2018-01-15', 'Waleed', 'Khan', 'No', 'uploads/student_images/2.jpg', '03116300900', '', NULL, NULL, NULL, 'Islam', 'Pathan', '2000-04-18', 'Male', 'B#: A356 S.U.E.C.H,S phase I Jamshoro.', '', '', '', '', '', '', '', 'father', 'Nisar Ahmed', '03342929465', 'Private Job', '', '', '', 'Nisar Ahmed', 'Father', '03342929465', 'Private Job', '', '', 'no', '', '2019-03-08 13:23:17', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (3, '03', '03', '2018-01-17', 'Mohsin', 'Hussain', 'No', 'uploads/student_images/no_image.png', '03169687606', '', NULL, NULL, NULL, 'Islam', 'Leekhi', '2000-02-18', 'Male', 'village Khan Muhammad Leekhi P.O Bahawal Zaunr via Phulei Hyderabad', 'village Khan Muhammad Leekhi P.O Bahawal Zaunr via Phulei Hyderabad', '', '', '', '', '', '', 'father', 'Hussain Leekhi', '03032738121', 'Teacher ', '', '', '', 'Hussain Leekhi', 'Father', '03032738121', 'Teacher ', '', '', 'no', '', '2019-03-08 13:35:52', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (4, '04', '04', '2018-01-15', 'Urooj', 'Lashari', 'No', 'uploads/student_images/4.jpg', '03163132373', 'Uroojlashari767@gmail.com', NULL, NULL, NULL, 'Islam', 'Lashari', '1999-02-10', 'Female', 'Murk Villa Phase -I S.U.E.C.H.S Jamshoro ', 'Murk Villa Phase -I S.U.E.C.H.S Jamshoro ', '', '', '', '', '', '', 'other', 'Ghulam Hussain', '', 'Deciesed', '', '', '', 'Dr. Aslam Pervez Memon', 'As Guardian', '03073089088', 'Professor ', 'Murk Villa Phase -I S.U.E.C.H.S Jamshoro ', '', 'no', '', '2019-03-08 13:49:04', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (5, '05', '2K18/LLB/05', '2018-01-15', 'Talat', 'Hussain', 'No', 'uploads/student_images/5.jpg', '03063691228', '', NULL, NULL, NULL, 'Islam', 'Behrani', '2000-01-01', 'Male', 'Lal faqeer Behrani Quba stop Tando Allayar', '', '', '', '', '', '', '', 'father', 'Talib Behrani', '03002724708', 'LAB Assistance ', '', '', '', 'Talib Behrani', 'Father', '03002724708', 'LAB Assistance ', '', '', 'no', '', '2019-03-08 14:09:41', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (6, '06', '2K18/LLB/06', '2018-01-18', 'Hamza', 'Ali', 'No', 'uploads/student_images/6.jpg', '0303193652', '', NULL, NULL, NULL, 'Islam', 'Sabzoi', '2000-01-01', 'Male', 'Jazz Office Opposite Honda Showroom Near Anaj Mandi Kandhkot Kashmor', 'Village Muhammad Ramzan Sabzoi Kandhkot, Kashmor', '', '', '', '', '', '', 'father', 'Muhammad Ali', '03003193181', 'Farmer ', '', '', '', 'Muhammad Ali', 'Father', '03003193181', 'Farmer ', 'Village Muhammad Ramzan Sabzoi Kandhkot, Kashmor', '', 'no', '', '2019-03-08 14:22:05', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (7, '07', '2K18/LLB/07', '2018-01-18', 'Bilawal', 'Ali', 'No', 'uploads/student_images/7.jpg', '03483938823', '', NULL, NULL, NULL, 'Islam', 'Chhachhar', '1996-07-27', 'Male', 'Village Wada Chhachhar Taluka Manjhand U/C Aamri Distt: Jamshoro', 'Village Wada Chhachhar Taluka Manjhand U/C Aamri Distt: Jamshoro', '', '', '', '', '', '', 'father', 'Hussain Bux', '03456089737', 'Farmer', '', '', '', 'Hussain Bux', 'Father', '03456089737', 'Farmer', 'Village Wada Chhachhar Taluka Manjhand U/C Aamri Distt: Jamshoro', '', 'no', '', '2019-03-08 14:30:14', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (8, '08', '2K18/LLB/08', '2018-01-22', 'Abul', 'Hassan', 'No', 'uploads/student_images/8.jpg', '03163699011', '', NULL, NULL, NULL, 'Islam', 'Chandio', '1998-03-26', 'Male', 'House# 1 Lakho Faqeer Sandos Road Jamshoro ', 'House# 1 Lakho Faqeer Sandos Road Jamshoro ', '', '', '', '', '', '', 'father', 'Sakhawat Ali', '03013567498', 'Police Department', '', '', '', 'Sakhawat Ali', 'Father', '03013567498', 'Police Department', 'House# 1 Lakho Faqeer Sandos Road Jamshoro ', '', 'no', '', '2019-03-08 14:37:26', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES (9, '09', '2K18/LLB/09', '2018-01-19', 'Muhammad', 'Hasnian', 'No', 'uploads/student_images/no_image.png', '03121334918', '', NULL, NULL, NULL, 'Islam', 'Abbasi', '1998-01-15', 'Male', 'Near Garib Nawaz Masjid House# 37 Mohlla Mir Ka Palot Mirpurkhas', 'Near Garib Nawaz Masjid House# 37 Mohlla Mir Ka Palot Mirpurkhas', '', '', '', '', '', '', 'father', 'Jawaid Iqbal', '03123390436', 'Police Constable', '', '', '', 'Jawaid Iqbal', 'Father', '03123390436', 'Police Constable', 'Near Garib Nawaz Masjid House# 37 Mohlla Mir Ka Palot Mirpurkhas', '', 'no', '', '2019-03-08 15:03:38', '0000-00-00 00:00:00');


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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
  `description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `class_section_id` (`class_section_id`),
  KEY `session_id` (`session_id`),
  KEY `subject_id` (`subject_id`),
  KEY `teacher_id` (`teacher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `teacher_subjects` (`id`, `session_id`, `class_section_id`, `subject_id`, `teacher_id`, `description`, `is_active`, `created_at`, `updated_at`) VALUES (1, 14, 1, 6, 1, NULL, 'no', '2019-03-08 12:52:15', '0000-00-00 00:00:00');
INSERT INTO `teacher_subjects` (`id`, `session_id`, `class_section_id`, `subject_id`, `teacher_id`, `description`, `is_active`, `created_at`, `updated_at`) VALUES (2, 13, 1, 6, 1, NULL, 'no', '2019-03-08 15:19:18', '0000-00-00 00:00:00');
INSERT INTO `teacher_subjects` (`id`, `session_id`, `class_section_id`, `subject_id`, `teacher_id`, `description`, `is_active`, `created_at`, `updated_at`) VALUES (3, 13, 1, 5, 2, NULL, 'no', '2019-03-08 15:19:48', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: teachers
#

DROP TABLE IF EXISTS `teachers`;

CREATE TABLE `teachers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `designation` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sex` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `teachers` (`id`, `name`, `email`, `password`, `address`, `dob`, `designation`, `sex`, `phone`, `image`, `is_active`, `created_at`, `updated_at`) VALUES (1, 'Adv Ibrar Ali Mangi', 'wasi4u2012@gmail.com', NULL, 'S.U.E.C.H.S. phase I Jamshoro, Sindh', '1992-12-24', NULL, 'Male', '03052767644', 'uploads/teacher_images/1.jpg', 'no', '2019-03-08 10:22:56', '0000-00-00 00:00:00');
INSERT INTO `teachers` (`id`, `name`, `email`, `password`, `address`, `dob`, `designation`, `sex`, `phone`, `image`, `is_active`, `created_at`, `updated_at`) VALUES (2, 'Adv Ghulam Sarwar Baloch', 'sarwarbuledi@yahoo.com', NULL, 'House No.21,Mir Fateh Colony, UC-1 Qasimabad, Hyderabad ', '1975-03-03', NULL, 'Male', '03003023906', 'uploads/teacher_images/2.jpg', 'no', '2019-03-08 15:16:19', '0000-00-00 00:00:00');
INSERT INTO `teachers` (`id`, `name`, `email`, `password`, `address`, `dob`, `designation`, `sex`, `phone`, `image`, `is_active`, `created_at`, `updated_at`) VALUES (3, 'Mr.Farooque Ahmed Junejo', 'farooqjunejo30@gmail.com', NULL, 'House No.A-25, Anwer Villas Phase 2, Qasimabad, Hyderabad ', '1988-09-14', NULL, 'Male', '03334166449', 'uploads/teacher_images/3.jpg', 'no', '2019-03-08 15:21:17', '0000-00-00 00:00:00');


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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `timetables` (`id`, `teacher_subject_id`, `day_name`, `start_time`, `end_time`, `room_no`, `is_active`, `created_at`, `updated_at`) VALUES (1, 1, 'Monday', '09:00 AM', '09:50 AM', '01', 'no', '2019-03-08 12:57:23', '0000-00-00 00:00:00');
INSERT INTO `timetables` (`id`, `teacher_subject_id`, `day_name`, `start_time`, `end_time`, `room_no`, `is_active`, `created_at`, `updated_at`) VALUES (2, 1, 'Tuesday', '09:00 AM', '09:50 AM', '01', 'no', '2019-03-08 12:57:23', '0000-00-00 00:00:00');
INSERT INTO `timetables` (`id`, `teacher_subject_id`, `day_name`, `start_time`, `end_time`, `room_no`, `is_active`, `created_at`, `updated_at`) VALUES (3, 1, 'Wednesday', '09:00 AM', '09:50 AM', '01', 'no', '2019-03-08 12:57:23', '0000-00-00 00:00:00');
INSERT INTO `timetables` (`id`, `teacher_subject_id`, `day_name`, `start_time`, `end_time`, `room_no`, `is_active`, `created_at`, `updated_at`) VALUES (4, 1, 'Thursday', '09:00 AM', '09:50 AM', '01', 'no', '2019-03-08 12:57:23', '0000-00-00 00:00:00');
INSERT INTO `timetables` (`id`, `teacher_subject_id`, `day_name`, `start_time`, `end_time`, `room_no`, `is_active`, `created_at`, `updated_at`) VALUES (5, 1, 'Friday', '', '', '', 'no', '2019-03-08 12:57:23', '0000-00-00 00:00:00');
INSERT INTO `timetables` (`id`, `teacher_subject_id`, `day_name`, `start_time`, `end_time`, `room_no`, `is_active`, `created_at`, `updated_at`) VALUES (6, 1, 'Saturday', '', '', '', 'no', '2019-03-08 12:57:23', '0000-00-00 00:00:00');
INSERT INTO `timetables` (`id`, `teacher_subject_id`, `day_name`, `start_time`, `end_time`, `room_no`, `is_active`, `created_at`, `updated_at`) VALUES (7, 1, 'Sunday', '', '', '', 'no', '2019-03-08 12:57:23', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: transport_route
#

DROP TABLE IF EXISTS `transport_route`;

CREATE TABLE `transport_route` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `route_title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_of_vehicle` int(11) DEFAULT NULL,
  `fare` float(10,2) DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
  `login_datetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (1, 1, 'teacher1', 'cxur19', '', 'teacher', '', 'yes', '2019-03-08 10:22:32', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (2, 1, 'std1', 'wlurka', '', 'student', '', 'yes', '2019-03-08 12:02:11', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (3, 1, 'parent1', '2t8ebo', '1', 'parent', '', 'yes', '2019-03-08 12:02:11', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (4, 2, 'std2', '5dxmfi', '', 'student', '', 'yes', '2019-03-08 13:23:17', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (5, 2, 'parent2', 'awvvjj', '2', 'parent', '', 'yes', '2019-03-08 13:23:17', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (6, 3, 'std3', 'rewg8v', '', 'student', '', 'yes', '2019-03-08 13:35:52', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (7, 3, 'parent3', 'lt6opf', '3', 'parent', '', 'yes', '2019-03-08 13:35:52', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (8, 4, 'std4', 'pmjl4w', '', 'student', '', 'yes', '2019-03-08 13:49:04', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (9, 4, 'parent4', 'e9u1yz', '4', 'parent', '', 'yes', '2019-03-08 13:49:04', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (10, 5, 'std5', '4gp95y', '', 'student', '', 'yes', '2019-03-08 14:09:41', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (11, 5, 'parent5', 'qdob7v', '5', 'parent', '', 'yes', '2019-03-08 14:09:41', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (12, 6, 'std6', '6ertu2', '', 'student', '', 'yes', '2019-03-08 14:22:05', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (13, 6, 'parent6', 'l5w38j', '6', 'parent', '', 'yes', '2019-03-08 14:22:05', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (14, 7, 'std7', 'b0stdo', '', 'student', '', 'yes', '2019-03-08 14:30:14', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (15, 7, 'parent7', '3udvuf', '7', 'parent', '', 'yes', '2019-03-08 14:30:14', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (16, 8, 'std8', 'evlsvd', '', 'student', '', 'yes', '2019-03-08 14:37:26', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (17, 8, 'parent8', 'nagspq', '8', 'parent', '', 'yes', '2019-03-08 14:37:26', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (18, 9, 'std9', '10wykd', '', 'student', '', 'yes', '2019-03-08 15:03:38', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (19, 9, 'parent9', 'aa0vm4', '9', 'parent', '', 'yes', '2019-03-08 15:03:38', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (20, 2, 'teacher2', '34j831', '', 'teacher', '', 'yes', '2019-03-08 15:16:19', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (21, 3, 'teacher3', 'peiijp', '', 'teacher', '', 'yes', '2019-03-08 15:21:17', '0000-00-00 00:00:00');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES (22, 1, 'accountant1', 'cmx1n2', '', 'accountant', '', 'yes', '2019-03-08 15:38:20', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: vehicle_routes
#

DROP TABLE IF EXISTS `vehicle_routes`;

CREATE TABLE `vehicle_routes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `route_id` int(11) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
  `note` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

