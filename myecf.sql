-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2022 at 09:10 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myecf`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add college', 7, 'add_college'),
(26, 'Can change college', 7, 'change_college'),
(27, 'Can delete college', 7, 'delete_college'),
(28, 'Can view college', 7, 'view_college'),
(29, 'Can add user feedback', 8, 'add_userfeedback'),
(30, 'Can change user feedback', 8, 'change_userfeedback'),
(31, 'Can delete user feedback', 8, 'delete_userfeedback'),
(32, 'Can view user feedback', 8, 'view_userfeedback'),
(33, 'Can add myecf', 9, 'add_myecf'),
(34, 'Can change myecf', 9, 'change_myecf'),
(35, 'Can delete myecf', 9, 'delete_myecf'),
(36, 'Can view myecf', 9, 'view_myecf');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$320000$OjgyjtHykz3k0AIXopWfFG$PVeGrSNBcEO62Kn+Od3R4mogptAo2cici6vgCfKYZ9o=', '2022-03-14 07:48:33.297588', 1, 'myecf', '', '', 'en20169879@git-india.edu.in', 1, 1, '2022-02-21 15:57:46.625260');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `control_myecf`
--

CREATE TABLE `control_myecf` (
  `id` bigint(20) NOT NULL,
  `College_name` varchar(100) NOT NULL,
  `region` varchar(50) NOT NULL,
  `autonomus` int(11) NOT NULL,
  `university` varchar(40) NOT NULL,
  `course` varchar(20) NOT NULL,
  `co_ex_ci_me_ch` varchar(15) NOT NULL,
  `obc_sc_st_nt_open` varchar(15) NOT NULL,
  `girls_college` int(11) NOT NULL,
  `min_cet` float NOT NULL,
  `min_jee` float NOT NULL,
  `Previous_Year_Cutoff` int(11) NOT NULL,
  `clg_short_name` varchar(50) DEFAULT NULL,
  `clg_link` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `control_myecf`
--

INSERT INTO `control_myecf` (`id`, `College_name`, `region`, `autonomus`, `university`, `course`, `co_ex_ci_me_ch`, `obc_sc_st_nt_open`, `girls_college`, `min_cet`, `min_jee`, `Previous_Year_Cutoff`, `clg_short_name`, `clg_link`) VALUES
(1, 'Gharda Foundation\'s Gharda Institute of Technology', 'Ratnagiri', 0, 'Mumbai', 'BE/DIPLOMA', '1 1 1 1 1', '1 1 1 1 1', 0, 45, 50, 50, 'Gharda College, Lavel', 'http://www.dtemaharashtra.gov.in/frmInstituteSummary.aspx?InstituteCode=3216'),
(2, 'Rajendra Mane College of Engineering & Technology Ambav Devrukh', 'Ratnagiri', 0, 'Mumbai', 'BE/DIPLOMA', '1 1 0 1 0', '1 1 1 1 1', 0, 50, 55, 50, 'Rajendra Mane College, Devrukh', 'http://www.dtemaharashtra.gov.in/frmInstituteSummary.aspx?InstituteCode=3202'),
(3, 'VPM\'s Maharshi Parshuram College of Engineering, Velneshwar, Ratnagiri.', 'Ratnagiri', 0, 'Mumbai', 'BE/DIPLOMA', '0 1 1 1 0', '1 1 1 1 1', 0, 40, 55, 50, 'Maharshi Parshuram College, Velneshwar', 'http://www.dtemaharashtra.gov.in/frmInstituteSummary.aspx?InstituteCode=3462'),
(4, 'Hope Foundation and research center\'s Finolex Academy of Management and Technology, Ratnagiri', 'Ratnagiri', 0, 'Mumbai', 'BE/DIPLOMA', '1 1 1 1 1', '1 1 1 1 1', 0, 36, 45, 50, 'Finolex Academy, Ratnagiri', 'http://www.dtemaharashtra.gov.in/frmInstituteSummary.aspx?InstituteCode=3200'),
(5, 'Government College, Ratnagiri', 'Ratnagiri', 0, 'Mumbai', 'DIPLOMA', '1 1 1 1 0', '1 1 1 1 1', 0, 60, 70, 50, 'Government College, Ratnagiri', 'http://www.dtemaharashtra.gov.in/frmInstituteSummary.aspx?InstituteCode=3042'),
(6, 'MIT Academy of Engineering,Alandi, Pune', 'PUNE', 0, 'Pune', 'BE/DIPLOMA', '1 1 1 1 1', '1 1 1 1 1', 0, 60, 80, 50, 'MIT Academy, Pune', 'http://www.dtemaharashtra.gov.in/frmInstituteSummary.aspx?InstituteCode=6146'),
(7, 'Indira College of Engineering & Management, Pune', 'PUNE', 0, 'Pune', 'BE/BTECH/DIPLOMA', '1 0 1 1 0', '1 1 1 1 1', 0, 45, 50, 50, 'Indira College, Pune', 'http://www.dtemaharashtra.gov.in/frmInstituteSummary.aspx?InstituteCode=6179'),
(8, 'Pune Institute of Computer Technology, Dhankavdi, Pune', 'PUNE', 0, 'Pune', 'BE/BTECH/DIPLOMA', '1 1 0 0 0', '1 1 1 1 1', 0, 50, 60, 50, 'Pune Institute of Computer Technology', 'http://www.dtemaharashtra.gov.in/frmInstituteSummary.aspx?InstituteCode=6271'),
(9, 'Dhole Patil Education Society, Dhole Patil College of Engineering, Wagholi, Tal. Haveli', 'PUNE', 0, 'Pune', 'BE', '1 1 1 1 0', '1 1 1 1 1', 0, 60, 70, 50, 'Dhole Patil, Wagholi', 'http://www.dtemaharashtra.gov.in/frmInstituteSummary.aspx?InstituteCode=6307'),
(10, 'Merchant logo MKSSS\'s Cummins College of Engineering For Women Karvenagar,Pune', 'PUNE', 0, 'Pune', 'BTECH', '1 1 0 1 0', '1 1 1 1 1', 1, 55, 60, 50, 'Cummins College For Women, Karvenagar', 'http://www.dtemaharashtra.gov.in/frmInstituteSummary.aspx?InstituteCode=6276'),
(11, 'Shree Siddheshwar Women\'s College Of Engineering.', 'Pune', 1, 'Pune', 'B.Tech', '1 1 0 0 0 ', '1 0 1 0 1 ', 1, 48, 50, 45, 'S.S. Women\'s College Of Engineering', 'http://www.dtemaharashtra.gov.in/frmInstituteSummary.aspx?InstituteCode=6938'),
(12, 'Anantrao Pawar College of Engineering & Research', 'Pune', 1, 'Pune', 'B.E', '1 1 1 1 0', '0 1 0 1 1', 0, 35, 50, 45, 'A.P. College of Engineering ', 'http://www.dtemaharashtra.gov.in/frmInstituteSummary.aspx?InstituteCode=6794');

-- --------------------------------------------------------

--
-- Table structure for table `control_userfeedback`
--

CREATE TABLE `control_userfeedback` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `desc` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-02-21 16:04:36.637063', '1', 'myecf object (1)', 1, '[{\"added\": {}}]', 9, 1),
(2, '2022-02-22 06:58:21.067190', '1', 'myecf object (1)', 3, '', 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'control', 'college'),
(9, 'control', 'myecf'),
(8, 'control', 'userfeedback'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-02-21 15:51:10.809692'),
(2, 'auth', '0001_initial', '2022-02-21 15:51:11.169740'),
(3, 'admin', '0001_initial', '2022-02-21 15:51:11.252638'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-02-21 15:51:11.259639'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-02-21 15:51:11.267641'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-02-21 15:51:11.320331'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-02-21 15:51:11.374358'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-02-21 15:51:11.391001'),
(9, 'auth', '0004_alter_user_username_opts', '2022-02-21 15:51:11.398008'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-02-21 15:51:11.437012'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-02-21 15:51:11.439014'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-02-21 15:51:11.448016'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-02-21 15:51:11.465018'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-02-21 15:51:11.482026'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-02-21 15:51:11.500027'),
(16, 'auth', '0011_update_proxy_permissions', '2022-02-21 15:51:11.510030'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-02-21 15:51:11.526035'),
(18, 'control', '0001_initial', '2022-02-21 15:51:11.545036'),
(19, 'control', '0002_userfeedback', '2022-02-21 15:51:11.566044'),
(20, 'sessions', '0001_initial', '2022-02-21 15:51:11.597050'),
(21, 'control', '0003_myecf_delete_college', '2022-02-21 15:53:44.391578'),
(22, 'control', '0002_alter_myecf_college_link', '2022-03-14 07:30:12.237399');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('4p6cx00r9nlm82kb8put8kpcsyxmp0vc', '.eJxVjMsOwiAQRf-FtSEDHcrg0r3fQBgeUjU0Ke3K-O_apAvd3nPOfQkftrX6refFT0mchRKn341DfOS2g3QP7TbLOLd1mVjuijxol9c55eflcP8Oauj1W2sOhpWCpLQCaw3jUIrmgi7ZTMQjY3AU3eAANRIaIGvAjVRszAxGvD_JNDbs:1nTfRR:DXNLWJZC_tdTpCKk1r4bnpA2IdB-WUWle6oWcndyXKs', '2022-03-28 07:48:33.305585'),
('ypppkyy9wez5o98l3210b3lj2otus47y', '.eJxVjMsOwiAQRf-FtSEDHcrg0r3fQBgeUjU0Ke3K-O_apAvd3nPOfQkftrX6refFT0mchRKn341DfOS2g3QP7TbLOLd1mVjuijxol9c55eflcP8Oauj1W2sOhpWCpLQCaw3jUIrmgi7ZTMQjY3AU3eAANRIaIGvAjVRszAxGvD_JNDbs:1nMB4z:ZbQtPe5AT7TtrsYDXODJED6nh6_jmttOVCGsjTf4Iu0', '2022-03-07 15:58:25.673059');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `control_myecf`
--
ALTER TABLE `control_myecf`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `control_userfeedback`
--
ALTER TABLE `control_userfeedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `control_myecf`
--
ALTER TABLE `control_myecf`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `control_userfeedback`
--
ALTER TABLE `control_userfeedback`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
