-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 12, 2020 at 09:51 AM
-- Server version: 5.7.23-23
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `impeeqvm_kspch`
--

-- --------------------------------------------------------

--
-- Table structure for table `area_of_work`
--

CREATE TABLE `area_of_work` (
  `id` int(11) NOT NULL,
  `name` varchar(300) DEFAULT NULL,
  `alt_name` text,
  `is_hidden` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `area_of_work`
--

INSERT INTO `area_of_work` (`id`, `name`, `alt_name`, `is_hidden`) VALUES
(5, 'HASSAN CITY ONLY', 'HASSAN CITY ', 0),
(6, 'WITHIN HASSAN DISTRICT', 'HASSAN DISTRICT ONLY', 0),
(7, 'SAKHLESPURA', 'SAKHLESHPURA ', 0),
(8, 'CHANNARAYAPATNA', 'CHANNARAYAPATNA', 0),
(9, 'HOLENARSIPURA', 'HOLENARSIPURA', 0),
(10, 'ARSIKERE', 'ARSIKERE', 0),
(11, 'ARKALGUDU', 'ARKALGUDU', 0),
(12, 'BELUR', 'BELUR', 0),
(13, 'Inter district', 'inter district', 0);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(255) NOT NULL,
  `name` varchar(300) DEFAULT NULL,
  `image_path` text,
  `alt_name` text,
  `is_hidden` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `image_path`, `alt_name`, `is_hidden`) VALUES
(8, 'Fruits & vegetables', 'assets/upload/category/7905edbf1f4b175690c30e330a879599IMG20200217175152.JPG', '', 0),
(9, 'Atta - Flour', 'assets/upload/category/2c8bc5286acda140acd301558e436342IMG20200219152146.JPG', '', 0),
(10, 'Oil & Masala', 'assets/upload/category/ae7b5760c78efa86ec5d7939503a10baimages3.jpeg', '', 0),
(12, 'Rice Products', 'assets/upload/category/3d4dd3819e5e421dbd1e6d906279e35eIMG20200219162717.JPG', '', 0),
(13, 'Dals - Pulses', 'assets/upload/category/19ca5ad6b5b8658a3438d652fa3cef5aIMG20200220171450.JPG', '', 0),
(14, 'Cleaning and Household', 'assets/upload/category/522518fd7aa7f78464b4d8912ff2d3d5IMG20200217180656.JPG', '', 0),
(15, 'Kitchen , Garden & Pet', 'assets/upload/category/4b5daa5a5fb8922e6b7753dc8ca0cbebIMG20200217180749.JPG', '', 0),
(16, 'Spices - Masalas', 'assets/upload/category/14872b0eba3785d516500039fd666635PicsArt022202.09.55.jpg', '', 0),
(17, '*,,,,,,,,,,,,,,,,*', 'assets/upload/category/031f5d6d2407246292a04d1f20dbcebdPicsArt021706.47.45.jpg', '', 0),
(18, '$**********$', 'assets/upload/category/f8a7f9959512eb00d12b9d4531082bf4IMG20200218094419.JPG', '', 0),
(19, 'Limited', 'assets/upload/category/d7bc5bf5d19fe224d0608b36195050f8IMG20200218085416.JPG', '', 0),
(20, 'edition', 'assets/upload/category/ea275c0e9f86095af9eb88ddc4bb55aeIMG20200218085158.JPG', '', 0),
(21, 'Dettol', 'assets/upload/category/6cf0b56cce3b2afbb7affd5aa2dcdaa3IMG20200218090310.JPG', '', 0),
(22, 'handwash', 'assets/upload/category/bb05216d2947a87024a2f15f8fb12af6IMG20200218090326.JPG', '', 0),
(23, 'combo', 'assets/upload/category/4f0080112f920c7399d4468938215be3IMG20200218090422.JPG', '', 0),
(24, 'test', NULL, 'test', 0),
(25, 'sdvfsf', NULL, 'kjbhjkl', 0),
(26, 'dfgdfg', NULL, 'dfgdfg', 0),
(27, 'sdf', NULL, 'dfgdfg', 0),
(28, 'sdf', NULL, 'dfgdfg', 0),
(29, 'sdf', NULL, 'dfgdfg', 0),
(30, 'sdf', NULL, 'dfgdfg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `enduser_registration_otp`
--

CREATE TABLE `enduser_registration_otp` (
  `id` int(255) NOT NULL,
  `user_mobile` varchar(200) DEFAULT NULL,
  `reg_otp` varchar(10) DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  `is_used` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `enduser_registration_otp`
--

INSERT INTO `enduser_registration_otp` (`id`, `user_mobile`, `reg_otp`, `datetime`, `is_used`) VALUES
(1, '1234567895', '1111', '2019-04-08 00:28:27', 1),
(2, '9886307840', '1111', '2020-01-05 16:32:38', 1),
(3, '9886307840', '1111', '2020-01-05 16:36:59', 1),
(4, '9886307740', '1111', '2020-01-08 21:08:49', 1),
(5, '9886307740', '1111', '2020-01-08 21:14:57', 1);

-- --------------------------------------------------------

--
-- Table structure for table `front_pages`
--

CREATE TABLE `front_pages` (
  `page_id` int(255) NOT NULL,
  `page_key` varchar(200) NOT NULL,
  `title` varchar(500) NOT NULL,
  `page_data` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `image_order`
--

CREATE TABLE `image_order` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `image_data` text NOT NULL,
  `entry_datetime` datetime NOT NULL,
  `is_deleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `image_order`
--

INSERT INTO `image_order` (`id`, `user_id`, `image_data`, `entry_datetime`, `is_deleted`) VALUES
(13, 5, 'assets/upload/image_order/e1e9dd7e28375b33bfaeda3b76b9b45f.jpg', '2020-03-15 23:02:48', 0),
(12, 24, 'assets/upload/image_order/a7bfb1174fea7b84d8485416fc8d1dcb.jpg', '2020-03-15 22:53:48', 0),
(10, 24, 'assets/upload/image_order/05dcd0a55ab011e58d43b7212922548b.jpg', '2020-03-15 22:27:06', 0),
(11, 24, 'assets/upload/image_order/c67093751a645b7eb94749f78d76d620.jpg', '2020-03-15 22:46:36', 0);

-- --------------------------------------------------------

--
-- Table structure for table `login_user`
--

CREATE TABLE `login_user` (
  `id` int(255) NOT NULL,
  `name` varchar(100) CHARACTER SET latin1 NOT NULL,
  `gender` varchar(6) CHARACTER SET latin1 NOT NULL,
  `username` varchar(100) CHARACTER SET latin1 NOT NULL,
  `password` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `user_type` varchar(50) CHARACTER SET latin1 NOT NULL,
  `email` varchar(150) CHARACTER SET latin1 DEFAULT NULL,
  `is_blocked` int(1) NOT NULL DEFAULT '0',
  `forgot_pass_key` varchar(32) CHARACTER SET latin1 DEFAULT NULL,
  `device_type` varchar(300) CHARACTER SET latin1 NOT NULL,
  `device_uid` varchar(300) CHARACTER SET latin1 NOT NULL,
  `device_fcmid` longtext CHARACTER SET latin1 NOT NULL,
  `device_info` longtext CHARACTER SET latin1,
  `is_expert` int(1) NOT NULL DEFAULT '0',
  `login_otp` int(11) NOT NULL DEFAULT '0',
  `is_login_otp_used` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `login_user`
--

INSERT INTO `login_user` (`id`, `name`, `gender`, `username`, `password`, `user_type`, `email`, `is_blocked`, `forgot_pass_key`, `device_type`, `device_uid`, `device_fcmid`, `device_info`, `is_expert`, `login_otp`, `is_login_otp_used`) VALUES
(1, 'SUPER', '', 'super', '1b3231655cebb7a1f783eddf27d254ca', 'super', 'ping2hash@gmail.com', 0, '', '', '', '', NULL, 0, 0, 0),
(2, 'Harsha', '', '1234567895', '202cb962ac59075b964b07152d234b70', 'end_user', NULL, 0, '', '', 'X', 'xxxxxxxxxxxxxxxxxxxxxxx', NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `permission_master`
--

CREATE TABLE `permission_master` (
  `id` int(11) NOT NULL,
  `user_folder` varchar(512) NOT NULL,
  `class` varchar(512) NOT NULL,
  `class_name` varchar(512) NOT NULL,
  `display_order` double NOT NULL DEFAULT '0',
  `methods` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `permission_master`
--

INSERT INTO `permission_master` (`id`, `user_folder`, `class`, `class_name`, `display_order`, `methods`) VALUES
(1087, 'franchise', 'Dashboard', 'Update', 1, '{\"dashboard_view\":\"Password\"}'),
(1088, 'franchise', 'Assign_registration_pin', 'Assign Registration Pin', 2, '{\"assign_pin\":\"Assign Pin\",\"assign_list\":\"Assign List\"}'),
(1089, 'franchise', 'Employee', 'Employee', 3, '{\"view_employee\":\"View Employee\",\"create_employee\":\"Create Employee\",\"hidden_edit_employee\":\"Edit Employee\"}'),
(1090, 'franchise', 'Registration_list', 'Registration List', 10, '{\"view_registration_list\":\"View Registration List\",\"hidden_edit_registration_list\":\"Edit Registration List\"}'),
(1180, 'employee', 'Dashboard', 'Update', 1, '{\"dashboard_view\":\"Password\"}'),
(1181, 'employee', 'Posts', 'Posts', 10, '{\"view_posts\":\"View Posts\",\"create_posts\":\"Create Posts\",\"hidden_edit_posts\":\"Edit Posts\"}'),
(1182, 'employee', 'Registration', 'Registration', 10, '{\"view_registration\":\"View Registration\",\"create_registration\":\"Create Registration\",\"hidden_edit_registration\":\"Edit Registration\"}'),
(1651, 'admin', 'Dashboard', 'Profile', 1, '{\"dashboard_view\":\"Update\"}'),
(1652, 'admin', 'Area_of_work', 'Area Of Work', 2, '{\"view_area_of_work\":\"View Area Of Work\",\"create_area_of_work\":\"Create Area Of Work\",\"hidden_edit_area_of_work\":\"Edit Area Of Work\",\"hidden_delete_area_of_work\":\"Delete Area Of Work\"}'),
(1653, 'admin', 'Purpose', 'Purpose', 3, '{\"view_purpose\":\"View Purpose\",\"create_purpose\":\"Create Purpose\",\"hidden_edit_purpose\":\"Edit Purpose\",\"hidden_delete_purpose\":\"Delete Purpose\"}'),
(1654, 'admin', 'Vehicle_type', 'Vehicle Type', 3, '{\"view_vehicle_type\":\"View Vehicle Type\",\"create_vehicle_type\":\"Create Vehicle Type\",\"hidden_edit_vehicle_type\":\"Edit Vehicle Type\",\"hidden_delete_vehicle_type\":\"Delete Vehicle Type\"}'),
(1655, 'admin', 'User_vehicle_datails', 'User Vehicle Datails', 4, '{\"view_vehicle_datails\":\"View Vehicle Datails\",\"add_vehicle_datails\":\"Add Vehicle Datails\",\"hidden_edit_vehicle_datails\":\"Edit Vehicle Datails\",\"hidden_delete_vehicle_datails\":\"Delete Vehicle Datails\"}'),
(1656, 'admin', 'Print_vehicle_pass', 'Print Vehicle Pass', 5, '{\"print_pass\":\"Print Pass\"}'),
(1657, 'admin', 'Reports', 'Reports', 6, '{\"vehicle_datails_report\":\"Vehicle Datails Report\",\"hidden_edit_vehicle_datails_report\":\"Edit Vehicle Datails Report\",\"scan_report\":\"Scan Report\",\"hidden_scan_datails_report\":\"Scan Datails Report\"}'),
(1658, 'admin', 'Manage_pass_status', 'Manage Pass Status', 10, '{\"approve_or_reject_pass\":\"Approve Or Reject Pass\",\"hidden_approve_ro_reject_pass_datails\":\"Approve Ro Reject Pass Datails\",\"hidden_delete_vehicle_datails\":\"Delete Vehicle Datails\",\"hidden_approve_pass\":\"Approve Pass\",\"hidden_reject_pass\":\"Reject Pass\"}'),
(1659, 'admin', 'Users', 'Backend Users', 100, '{\"view_users\":\"View Users\",\"users_create\":\"Users Create\",\"hidden_edit_users\":\"Edit Users\",\"hidden_block_users\":\"Block Users\"}'),
(1660, 'admin', 'Assign_permissions', 'Permissions', 999, '{\"assign_user_permissions\":\"User\"}');

-- --------------------------------------------------------

--
-- Table structure for table `permission_users`
--

CREATE TABLE `permission_users` (
  `id` int(11) NOT NULL,
  `user_id` int(255) NOT NULL,
  `user_folder` varchar(512) NOT NULL,
  `class` varchar(512) NOT NULL,
  `methods` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `permission_users`
--

INSERT INTO `permission_users` (`id`, `user_id`, `user_folder`, `class`, `methods`) VALUES
(1, 3, 'admin', 'dashboard', 'dashboard_view'),
(2, 3, 'admin', 'contest', 'view_contest'),
(3, 3, 'admin', 'contest', 'hidden_view_contest_photos'),
(4, 3, 'admin', 'contest', 'create_contest'),
(5, 3, 'admin', 'contest', 'hidden_edit_contest'),
(6, 3, 'admin', 'category', 'view_category'),
(7, 3, 'admin', 'category', 'create_category'),
(8, 3, 'admin', 'category', 'hidden_edit_category'),
(9, 38, 'admin', 'dashboard', 'dashboard_view'),
(10, 38, 'admin', 'print_vehicle_pass', 'print_pass'),
(82, 50, 'admin', 'dashboard', 'dashboard_view'),
(83, 50, 'admin', 'area_of_work', 'view_area_of_work'),
(84, 50, 'admin', 'area_of_work', 'create_area_of_work'),
(85, 50, 'admin', 'purpose', 'view_purpose'),
(86, 50, 'admin', 'vehicle_type', 'view_vehicle_type'),
(87, 50, 'admin', 'user_vehicle_datails', 'view_vehicle_datails'),
(88, 50, 'admin', 'user_vehicle_datails', 'add_vehicle_datails'),
(89, 50, 'admin', 'print_vehicle_pass', 'print_pass'),
(90, 50, 'admin', 'reports', 'vehicle_datails_report'),
(115, 51, 'admin', 'dashboard', 'dashboard_view'),
(116, 52, 'admin', 'dashboard', 'dashboard_view'),
(127, 44, 'admin', 'dashboard', 'dashboard_view'),
(128, 44, 'admin', 'area_of_work', 'view_area_of_work'),
(129, 44, 'admin', 'purpose', 'view_purpose'),
(130, 44, 'admin', 'vehicle_type', 'view_vehicle_type'),
(131, 44, 'admin', 'user_vehicle_datails', 'view_vehicle_datails'),
(132, 44, 'admin', 'user_vehicle_datails', 'add_vehicle_datails'),
(138, 53, 'admin', 'dashboard', 'dashboard_view'),
(153, 43, 'admin', 'dashboard', 'dashboard_view'),
(154, 43, 'admin', 'area_of_work', 'view_area_of_work'),
(155, 43, 'admin', 'purpose', 'view_purpose'),
(156, 43, 'admin', 'vehicle_type', 'view_vehicle_type'),
(157, 43, 'admin', 'user_vehicle_datails', 'view_vehicle_datails'),
(170, 55, 'admin', 'dashboard', 'dashboard_view'),
(171, 55, 'admin', 'area_of_work', 'view_area_of_work'),
(172, 55, 'admin', 'purpose', 'view_purpose'),
(173, 55, 'admin', 'vehicle_type', 'view_vehicle_type'),
(174, 55, 'admin', 'user_vehicle_datails', 'view_vehicle_datails'),
(203, 42, 'admin', 'dashboard', 'dashboard_view'),
(204, 42, 'admin', 'area_of_work', 'view_area_of_work'),
(205, 42, 'admin', 'area_of_work', 'create_area_of_work'),
(206, 42, 'admin', 'purpose', 'view_purpose'),
(207, 42, 'admin', 'purpose', 'create_purpose'),
(208, 42, 'admin', 'vehicle_type', 'view_vehicle_type'),
(209, 42, 'admin', 'vehicle_type', 'create_vehicle_type'),
(210, 42, 'admin', 'user_vehicle_datails', 'view_vehicle_datails'),
(211, 42, 'admin', 'user_vehicle_datails', 'add_vehicle_datails'),
(212, 42, 'admin', 'user_vehicle_datails', 'hidden_edit_vehicle_datails'),
(213, 42, 'admin', 'print_vehicle_pass', 'print_pass'),
(214, 42, 'admin', 'reports', 'vehicle_datails_report'),
(215, 42, 'admin', 'reports', 'hidden_edit_vehicle_datails_report'),
(216, 42, 'admin', 'manage_pass_status', 'hidden_approve_ro_reject_pass_datails'),
(217, 45, 'admin', 'dashboard', 'dashboard_view'),
(218, 45, 'admin', 'area_of_work', 'view_area_of_work'),
(219, 45, 'admin', 'purpose', 'view_purpose'),
(220, 45, 'admin', 'vehicle_type', 'view_vehicle_type'),
(221, 45, 'admin', 'user_vehicle_datails', 'view_vehicle_datails'),
(222, 45, 'admin', 'user_vehicle_datails', 'add_vehicle_datails'),
(223, 45, 'admin', 'print_vehicle_pass', 'print_pass'),
(224, 48, 'admin', 'dashboard', 'dashboard_view'),
(225, 48, 'admin', 'area_of_work', 'view_area_of_work'),
(226, 48, 'admin', 'purpose', 'view_purpose'),
(227, 48, 'admin', 'vehicle_type', 'view_vehicle_type'),
(228, 48, 'admin', 'user_vehicle_datails', 'view_vehicle_datails'),
(229, 48, 'admin', 'user_vehicle_datails', 'add_vehicle_datails'),
(230, 48, 'admin', 'print_vehicle_pass', 'print_pass'),
(231, 47, 'admin', 'dashboard', 'dashboard_view'),
(232, 47, 'admin', 'area_of_work', 'view_area_of_work'),
(233, 47, 'admin', 'purpose', 'view_purpose'),
(234, 47, 'admin', 'vehicle_type', 'view_vehicle_type'),
(235, 47, 'admin', 'user_vehicle_datails', 'view_vehicle_datails'),
(236, 47, 'admin', 'user_vehicle_datails', 'add_vehicle_datails'),
(237, 47, 'admin', 'print_vehicle_pass', 'print_pass'),
(245, 46, 'admin', 'dashboard', 'dashboard_view'),
(246, 46, 'admin', 'area_of_work', 'view_area_of_work'),
(247, 46, 'admin', 'purpose', 'view_purpose'),
(248, 46, 'admin', 'vehicle_type', 'view_vehicle_type'),
(249, 46, 'admin', 'user_vehicle_datails', 'view_vehicle_datails'),
(250, 46, 'admin', 'user_vehicle_datails', 'add_vehicle_datails'),
(251, 46, 'admin', 'print_vehicle_pass', 'print_pass'),
(259, 57, 'admin', 'dashboard', 'dashboard_view'),
(260, 57, 'admin', 'area_of_work', 'view_area_of_work'),
(261, 57, 'admin', 'purpose', 'view_purpose'),
(262, 57, 'admin', 'vehicle_type', 'view_vehicle_type'),
(263, 57, 'admin', 'user_vehicle_datails', 'view_vehicle_datails'),
(264, 57, 'admin', 'user_vehicle_datails', 'add_vehicle_datails'),
(265, 57, 'admin', 'print_vehicle_pass', 'print_pass'),
(266, 49, 'admin', 'dashboard', 'dashboard_view'),
(267, 49, 'admin', 'area_of_work', 'view_area_of_work'),
(268, 49, 'admin', 'purpose', 'view_purpose'),
(269, 49, 'admin', 'vehicle_type', 'view_vehicle_type'),
(270, 49, 'admin', 'user_vehicle_datails', 'view_vehicle_datails'),
(271, 49, 'admin', 'user_vehicle_datails', 'add_vehicle_datails'),
(272, 49, 'admin', 'print_vehicle_pass', 'print_pass'),
(273, 58, 'admin', 'dashboard', 'dashboard_view'),
(274, 58, 'admin', 'area_of_work', 'view_area_of_work'),
(275, 58, 'admin', 'purpose', 'view_purpose'),
(276, 58, 'admin', 'vehicle_type', 'view_vehicle_type'),
(277, 58, 'admin', 'user_vehicle_datails', 'view_vehicle_datails'),
(278, 58, 'admin', 'user_vehicle_datails', 'add_vehicle_datails'),
(279, 58, 'admin', 'print_vehicle_pass', 'print_pass'),
(280, 59, 'admin', 'dashboard', 'dashboard_view'),
(281, 59, 'admin', 'area_of_work', 'view_area_of_work'),
(282, 59, 'admin', 'purpose', 'view_purpose'),
(283, 59, 'admin', 'vehicle_type', 'view_vehicle_type'),
(284, 59, 'admin', 'user_vehicle_datails', 'view_vehicle_datails'),
(285, 59, 'admin', 'user_vehicle_datails', 'add_vehicle_datails'),
(286, 59, 'admin', 'print_vehicle_pass', 'print_pass'),
(287, 60, 'admin', 'dashboard', 'dashboard_view'),
(288, 60, 'admin', 'area_of_work', 'view_area_of_work'),
(289, 60, 'admin', 'purpose', 'view_purpose'),
(290, 60, 'admin', 'vehicle_type', 'view_vehicle_type'),
(291, 60, 'admin', 'user_vehicle_datails', 'view_vehicle_datails'),
(292, 60, 'admin', 'user_vehicle_datails', 'add_vehicle_datails'),
(293, 60, 'admin', 'print_vehicle_pass', 'print_pass'),
(294, 62, 'admin', 'dashboard', 'dashboard_view'),
(295, 62, 'admin', 'area_of_work', 'view_area_of_work'),
(296, 62, 'admin', 'purpose', 'view_purpose'),
(297, 62, 'admin', 'vehicle_type', 'view_vehicle_type'),
(298, 62, 'admin', 'user_vehicle_datails', 'view_vehicle_datails'),
(299, 62, 'admin', 'user_vehicle_datails', 'add_vehicle_datails'),
(300, 62, 'admin', 'print_vehicle_pass', 'print_pass'),
(301, 63, 'admin', 'dashboard', 'dashboard_view'),
(302, 63, 'admin', 'area_of_work', 'view_area_of_work'),
(303, 63, 'admin', 'purpose', 'view_purpose'),
(304, 63, 'admin', 'vehicle_type', 'view_vehicle_type'),
(305, 63, 'admin', 'user_vehicle_datails', 'view_vehicle_datails'),
(306, 63, 'admin', 'user_vehicle_datails', 'add_vehicle_datails'),
(307, 63, 'admin', 'print_vehicle_pass', 'print_pass'),
(308, 64, 'admin', 'dashboard', 'dashboard_view'),
(309, 64, 'admin', 'area_of_work', 'view_area_of_work'),
(310, 64, 'admin', 'purpose', 'view_purpose'),
(311, 64, 'admin', 'vehicle_type', 'view_vehicle_type'),
(312, 64, 'admin', 'user_vehicle_datails', 'view_vehicle_datails'),
(313, 64, 'admin', 'user_vehicle_datails', 'add_vehicle_datails'),
(314, 64, 'admin', 'print_vehicle_pass', 'print_pass'),
(315, 65, 'admin', 'dashboard', 'dashboard_view'),
(316, 65, 'admin', 'area_of_work', 'view_area_of_work'),
(317, 65, 'admin', 'purpose', 'view_purpose'),
(318, 65, 'admin', 'vehicle_type', 'view_vehicle_type'),
(319, 65, 'admin', 'user_vehicle_datails', 'view_vehicle_datails'),
(320, 65, 'admin', 'user_vehicle_datails', 'add_vehicle_datails'),
(321, 65, 'admin', 'print_vehicle_pass', 'print_pass'),
(322, 56, 'admin', 'dashboard', 'dashboard_view'),
(323, 56, 'admin', 'area_of_work', 'view_area_of_work'),
(324, 56, 'admin', 'purpose', 'view_purpose'),
(325, 56, 'admin', 'vehicle_type', 'view_vehicle_type'),
(326, 56, 'admin', 'user_vehicle_datails', 'view_vehicle_datails'),
(327, 56, 'admin', 'user_vehicle_datails', 'add_vehicle_datails'),
(328, 56, 'admin', 'print_vehicle_pass', 'print_pass'),
(329, 66, 'admin', 'dashboard', 'dashboard_view'),
(330, 66, 'admin', 'area_of_work', 'view_area_of_work'),
(331, 66, 'admin', 'purpose', 'view_purpose'),
(332, 66, 'admin', 'vehicle_type', 'view_vehicle_type'),
(333, 66, 'admin', 'user_vehicle_datails', 'view_vehicle_datails'),
(334, 66, 'admin', 'user_vehicle_datails', 'add_vehicle_datails'),
(335, 66, 'admin', 'user_vehicle_datails', 'hidden_edit_vehicle_datails'),
(336, 66, 'admin', 'print_vehicle_pass', 'print_pass'),
(337, 66, 'admin', 'reports', 'vehicle_datails_report'),
(338, 66, 'admin', 'reports', 'hidden_edit_vehicle_datails_report'),
(339, 66, 'admin', 'reports', 'scan_report'),
(340, 66, 'admin', 'reports', 'hidden_scan_datails_report'),
(341, 66, 'admin', 'manage_pass_status', 'approve_or_reject_pass'),
(342, 66, 'admin', 'manage_pass_status', 'hidden_approve_ro_reject_pass_datails'),
(343, 66, 'admin', 'manage_pass_status', 'hidden_delete_vehicle_datails'),
(344, 66, 'admin', 'manage_pass_status', 'hidden_approve_pass'),
(345, 66, 'admin', 'manage_pass_status', 'hidden_reject_pass'),
(346, 67, 'admin', 'dashboard', 'dashboard_view'),
(347, 67, 'admin', 'area_of_work', 'view_area_of_work'),
(348, 67, 'admin', 'purpose', 'view_purpose'),
(349, 67, 'admin', 'vehicle_type', 'view_vehicle_type'),
(350, 67, 'admin', 'user_vehicle_datails', 'view_vehicle_datails'),
(351, 67, 'admin', 'user_vehicle_datails', 'add_vehicle_datails'),
(352, 67, 'admin', 'print_vehicle_pass', 'print_pass');

-- --------------------------------------------------------

--
-- Table structure for table `purpose`
--

CREATE TABLE `purpose` (
  `id` int(11) NOT NULL,
  `name` text,
  `alt_name` text,
  `is_hidden` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purpose`
--

INSERT INTO `purpose` (`id`, `name`, `alt_name`, `is_hidden`) VALUES
(6, 'GOODS VEHICLE', 'PUBLIC', NULL),
(8, 'DOCTOR, NURSES', 'Other', NULL),
(11, 'FOOD DISTRIBUTION, social service', 'FOOD DISTRIBUTION, social service', NULL),
(12, 'DEATH ', 'DEATH', NULL),
(13, 'OTHER ISSUES', 'OTHER ISSUES', NULL),
(15, 'private OFFICE WORK', 'private OFFICE WORK', NULL),
(17, 'govt employee', 'govt employee', NULL),
(18, 'medical shops, distribution', 'medical shops, distribution', NULL),
(19, 'kidney dialysis, cancer and cardiac treatment', 'kidney dialysis, cancer and cardiac treatment', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `routes`
--

CREATE TABLE `routes` (
  `id` int(255) NOT NULL,
  `website` int(1) NOT NULL DEFAULT '0',
  `website_order` int(255) NOT NULL DEFAULT '0',
  `menu_show` varchar(10) DEFAULT NULL,
  `classmethod` text NOT NULL,
  `url` text NOT NULL,
  `name` varchar(100) NOT NULL,
  `parameters` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `routes`
--

INSERT INTO `routes` (`id`, `website`, `website_order`, `menu_show`, `classmethod`, `url`, `name`, `parameters`) VALUES
(1, 0, 1, 'active', 'websites/welcome', '', 'Home', 0),
(4, 0, 4, 'active', 'login/sign_in', 'sign-in', 'ADMIN', 0),
(5, 1, 4, 'active', 'login/logout', 'logout', '<i class=\"icon-switch\"></i>', 0),
(7, 0, 4, 'inactive', 'login/forgot_password', 'forgot-password', 'Forgot Password', 0);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(255) NOT NULL,
  `key_name` varchar(200) NOT NULL,
  `description` mediumtext,
  `key_value` mediumtext NOT NULL,
  `additional_info` mediumtext,
  `key_type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key_name`, `description`, `key_value`, `additional_info`, `key_type`) VALUES
(2, 'website_logo', 'Website Logo', 'assets/upload/settings/7a287f34673a0ccd5b564e6069e4207cimplogo.jpeg', '', 'image'),
(3, 'website_title', 'Website Title', 'KSP Hassan', 'KSP Hassan', 'text'),
(4, 'footer_left', 'Footer Left Infomation', 'Sponsor by  Rotary club Hassan in collaboration with  Karnataka state police Hassan and impeedcraft technosol pvt ltd ', 'Sponsor by  Rotary club Hassan in collaboration with  Karnataka state police Hassan and impeedcraft technosol pvt ltd ', 'text'),
(5, 'footer_right', 'Footer right Information', 'KSP Hassan', 'KSPH', 'text'),
(6, 'website_footer', 'Website Footer Information', 'Sponsor by  Rotry club hassan in clobaration with  karnataka state police hassan and impeedcraft technosol pvt ltd ', 'Sponsor by  Rotry club hassan in clobaration with  karnataka state police hassan and impeedcraft technosol pvt ltd ', 'text');

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

CREATE TABLE `user_types` (
  `id` int(11) NOT NULL,
  `type_key` varchar(255) NOT NULL,
  `user_type` varchar(255) NOT NULL,
  `dynamic` int(11) NOT NULL,
  `default_controller` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `user_types`
--

INSERT INTO `user_types` (`id`, `type_key`, `user_type`, `dynamic`, `default_controller`) VALUES
(1, 'admin', 'Admin', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_datails`
--

CREATE TABLE `vehicle_datails` (
  `id` int(11) NOT NULL,
  `person_name` varchar(600) NOT NULL,
  `name` varchar(300) DEFAULT NULL,
  `vehicle_number` varchar(45) DEFAULT NULL,
  `vehicle_type_id` int(11) DEFAULT NULL,
  `vehicle_type_name` varchar(300) DEFAULT NULL,
  `validity` varchar(300) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `area_of_work_id` int(11) DEFAULT NULL,
  `area_of_work_name` varchar(300) DEFAULT NULL,
  `purpose_id` int(11) DEFAULT NULL,
  `purpose_name` varchar(300) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `mobile` bigint(20) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `entry_datetime` datetime NOT NULL,
  `origin` varchar(300) NOT NULL,
  `place_of_origin` text NOT NULL,
  `place_of_destination` text NOT NULL,
  `login_user_id` int(11) NOT NULL,
  `login_user_name` varchar(300) NOT NULL,
  `is_approved` int(11) NOT NULL DEFAULT '0',
  `approved_datetime` datetime NOT NULL,
  `approver_id` int(11) NOT NULL,
  `approver_name` varchar(300) NOT NULL,
  `created_by` varchar(300) NOT NULL,
  `vehicle_image_path` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_scan_entry`
--

CREATE TABLE `vehicle_scan_entry` (
  `id` int(11) NOT NULL,
  `vehicle_number` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login_user_id` int(11) DEFAULT NULL,
  `login_user_name` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scaned_datetime` datetime DEFAULT NULL,
  `name` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_type`
--

CREATE TABLE `vehicle_type` (
  `id` int(11) NOT NULL,
  `name` varchar(300) DEFAULT NULL,
  `alt_name` text,
  `is_hidden` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_type`
--

INSERT INTO `vehicle_type` (`id`, `name`, `alt_name`, `is_hidden`) VALUES
(5, 'GOODS VEHICLE', 'ALL KINDS', NULL),
(7, 'two wheeler', 'ALL KINDS', NULL),
(10, 'AUTO', 'THREE WHEELER', NULL),
(12, 'Four wheeler', 'Four wheeler ', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `area_of_work`
--
ALTER TABLE `area_of_work`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enduser_registration_otp`
--
ALTER TABLE `enduser_registration_otp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `front_pages`
--
ALTER TABLE `front_pages`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `image_order`
--
ALTER TABLE `image_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_user`
--
ALTER TABLE `login_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_master`
--
ALTER TABLE `permission_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_users`
--
ALTER TABLE `permission_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purpose`
--
ALTER TABLE `purpose`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `routes`
--
ALTER TABLE `routes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_types`
--
ALTER TABLE `user_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_datails`
--
ALTER TABLE `vehicle_datails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_scan_entry`
--
ALTER TABLE `vehicle_scan_entry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_type`
--
ALTER TABLE `vehicle_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_vehicle_type_id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `area_of_work`
--
ALTER TABLE `area_of_work`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `enduser_registration_otp`
--
ALTER TABLE `enduser_registration_otp`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `front_pages`
--
ALTER TABLE `front_pages`
  MODIFY `page_id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `image_order`
--
ALTER TABLE `image_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `login_user`
--
ALTER TABLE `login_user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `permission_master`
--
ALTER TABLE `permission_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1661;

--
-- AUTO_INCREMENT for table `permission_users`
--
ALTER TABLE `permission_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=353;

--
-- AUTO_INCREMENT for table `purpose`
--
ALTER TABLE `purpose`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `routes`
--
ALTER TABLE `routes`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_types`
--
ALTER TABLE `user_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vehicle_datails`
--
ALTER TABLE `vehicle_datails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1668;

--
-- AUTO_INCREMENT for table `vehicle_scan_entry`
--
ALTER TABLE `vehicle_scan_entry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT for table `vehicle_type`
--
ALTER TABLE `vehicle_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
