-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 07, 2020 at 09:14 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10


CREATE DATABASE gearupdb;
use DATABASE gearupdb;


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gearupdb`
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
  `id` int(11) NOT NULL,
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
(25, 'Can add booking', 7, 'add_booking'),
(26, 'Can change booking', 7, 'change_booking'),
(27, 'Can delete booking', 7, 'delete_booking'),
(28, 'Can view booking', 7, 'view_booking'),
(29, 'Can add customer', 8, 'add_customer'),
(30, 'Can change customer', 8, 'change_customer'),
(31, 'Can delete customer', 8, 'delete_customer'),
(32, 'Can view customer', 8, 'view_customer'),
(33, 'Can add manufacturer', 9, 'add_manufacturer'),
(34, 'Can change manufacturer', 9, 'change_manufacturer'),
(35, 'Can delete manufacturer', 9, 'delete_manufacturer'),
(36, 'Can view manufacturer', 9, 'view_manufacturer'),
(37, 'Can add products', 10, 'add_products'),
(38, 'Can change products', 10, 'change_products'),
(39, 'Can delete products', 10, 'delete_products'),
(40, 'Can view products', 10, 'view_products'),
(41, 'Can add message enquiry', 11, 'add_messageenquiry'),
(42, 'Can change message enquiry', 11, 'change_messageenquiry'),
(43, 'Can delete message enquiry', 11, 'delete_messageenquiry'),
(44, 'Can view message enquiry', 11, 'view_messageenquiry'),
(45, 'Can add accesories', 12, 'add_accesories'),
(46, 'Can change accesories', 12, 'change_accesories'),
(47, 'Can delete accesories', 12, 'delete_accesories'),
(48, 'Can view accesories', 12, 'view_accesories'),
(49, 'Can add car', 13, 'add_car'),
(50, 'Can change car', 13, 'change_car'),
(51, 'Can delete car', 13, 'delete_car'),
(52, 'Can view car', 13, 'view_car');

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
(1, 'pbkdf2_sha256$216000$za3vSuuD0sOh$2Q7Jn1OAE7pJnAGfQFOmY81LmoRE3xEwnwnUSrtKIU4=', '2020-12-07 20:13:31.808716', 1, 'admin', '', '', 'admin@g.bracu.ac.bd', 1, 1, '2020-12-03 08:15:19.779631');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
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
(6, 'sessions', 'session'),
(12, 'showroom', 'accesories'),
(7, 'showroom', 'booking'),
(13, 'showroom', 'car'),
(8, 'showroom', 'customer'),
(9, 'showroom', 'manufacturer'),
(11, 'showroom', 'messageenquiry'),
(10, 'showroom', 'products');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-12-03 08:07:28.510317'),
(2, 'auth', '0001_initial', '2020-12-03 08:07:29.178753'),
(3, 'admin', '0001_initial', '2020-12-03 08:07:31.837020'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-12-03 08:07:32.279770'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-12-03 08:07:32.350618'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-12-03 08:07:32.638054'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-12-03 08:07:32.899850'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-12-03 08:07:32.979176'),
(9, 'auth', '0004_alter_user_username_opts', '2020-12-03 08:07:33.014625'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-12-03 08:07:33.206678'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-12-03 08:07:33.215610'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-12-03 08:07:33.232186'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-12-03 08:07:33.327323'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-12-03 08:07:33.425383'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-12-03 08:07:33.490902'),
(16, 'auth', '0011_update_proxy_permissions', '2020-12-03 08:07:33.516632'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2020-12-03 08:07:33.608009'),
(18, 'sessions', '0001_initial', '2020-12-03 08:07:33.705589'),
(19, 'showroom', '0001_initial', '2020-12-07 20:13:04.878439');

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
('mutbz84yit072rheoq6iom73gvplwmsf', '.eJxVjEEOgjAQRe_StWlopwXq0r1naGY6M4IaSCisjHdXEha6_e-9_zIZt3XIW5Ulj2zOxpnT70ZYHjLtgO843WZb5mldRrK7Yg9a7XVmeV4O9-9gwDp86wjFKzaACqJC4Nl77Thx7LTvSbUlCdAmiKF1jAGJi0sxSdMHQArm_QEHjjiX:1kmMt1:_SLd_iI9BiRN-nR8R6wcDEN6sOAIPo7zxi1we-naJKc', '2020-12-21 20:13:31.810286');

-- --------------------------------------------------------

--
-- Table structure for table `showroom_accesories`
--

CREATE TABLE `showroom_accesories` (
  `products_ptr_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `showroom_booking`
--

CREATE TABLE `showroom_booking` (
  `id` int(11) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL CHECK (`quantity` >= 0),
  `price` double NOT NULL,
  `date` datetime(6) NOT NULL,
  `customers_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `showroom_car`
--

CREATE TABLE `showroom_car` (
  `products_ptr_id` int(11) NOT NULL,
  `mileage` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `showroom_customer`
--

CREATE TABLE `showroom_customer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `password` varchar(50) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `credit_info` varchar(12) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `showroom_customer_bookings`
--

CREATE TABLE `showroom_customer_bookings` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `showroom_customer_messages`
--

CREATE TABLE `showroom_customer_messages` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `messageenquiry_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `showroom_customer_product`
--

CREATE TABLE `showroom_customer_product` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `showroom_manufacturer`
--

CREATE TABLE `showroom_manufacturer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `showroom_manufacturer_product`
--

CREATE TABLE `showroom_manufacturer_product` (
  `id` int(11) NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `showroom_messageenquiry`
--

CREATE TABLE `showroom_messageenquiry` (
  `id` int(11) NOT NULL,
  `query` longtext NOT NULL,
  `date` datetime(6) NOT NULL,
  `customers_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `showroom_products`
--

CREATE TABLE `showroom_products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL CHECK (`quantity` >= 0),
  `year` varchar(4) NOT NULL,
  `description` longtext NOT NULL,
  `image_url1` varchar(2083) NOT NULL,
  `image_url2` varchar(2083) NOT NULL,
  `image_url3` varchar(2083) NOT NULL,
  `image_url4` varchar(2083) NOT NULL,
  `image_url5` varchar(2083) NOT NULL,
  `manufacturers_id` int(11) DEFAULT NULL,
  `polymorphic_ctype_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `showroom_products_bookings`
--

CREATE TABLE `showroom_products_bookings` (
  `id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `showroom_products_customers`
--

CREATE TABLE `showroom_products_customers` (
  `id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
-- Indexes for table `showroom_accesories`
--
ALTER TABLE `showroom_accesories`
  ADD PRIMARY KEY (`products_ptr_id`);

--
-- Indexes for table `showroom_booking`
--
ALTER TABLE `showroom_booking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `showroom_booking_customers_id_95fb76a9_fk_showroom_customer_id` (`customers_id`),
  ADD KEY `showroom_booking_product_id_1b30d4dd_fk_showroom_products_id` (`product_id`);

--
-- Indexes for table `showroom_car`
--
ALTER TABLE `showroom_car`
  ADD PRIMARY KEY (`products_ptr_id`);

--
-- Indexes for table `showroom_customer`
--
ALTER TABLE `showroom_customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `showroom_customer_bookings`
--
ALTER TABLE `showroom_customer_bookings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `showroom_customer_bookings_customer_id_booking_id_a4c0d2b2_uniq` (`customer_id`,`booking_id`),
  ADD KEY `showroom_customer_bo_booking_id_21beae13_fk_showroom_` (`booking_id`);

--
-- Indexes for table `showroom_customer_messages`
--
ALTER TABLE `showroom_customer_messages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `showroom_customer_messag_customer_id_messageenqui_8c74e532_uniq` (`customer_id`,`messageenquiry_id`),
  ADD KEY `showroom_customer_me_messageenquiry_id_b6b30248_fk_showroom_` (`messageenquiry_id`);

--
-- Indexes for table `showroom_customer_product`
--
ALTER TABLE `showroom_customer_product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `showroom_customer_product_customer_id_products_id_893158e2_uniq` (`customer_id`,`products_id`),
  ADD KEY `showroom_customer_pr_products_id_31bac1fd_fk_showroom_` (`products_id`);

--
-- Indexes for table `showroom_manufacturer`
--
ALTER TABLE `showroom_manufacturer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `showroom_manufacturer_product`
--
ALTER TABLE `showroom_manufacturer_product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `showroom_manufacturer_pr_manufacturer_id_products_ef2af489_uniq` (`manufacturer_id`,`products_id`),
  ADD KEY `showroom_manufacture_products_id_44d06878_fk_showroom_` (`products_id`);

--
-- Indexes for table `showroom_messageenquiry`
--
ALTER TABLE `showroom_messageenquiry`
  ADD PRIMARY KEY (`id`),
  ADD KEY `showroom_messageenqu_customers_id_d8ebf3b6_fk_showroom_` (`customers_id`);

--
-- Indexes for table `showroom_products`
--
ALTER TABLE `showroom_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `showroom_products_manufacturers_id_4f57bda2_fk_showroom_` (`manufacturers_id`),
  ADD KEY `showroom_products_polymorphic_ctype_id_025285d3_fk_django_co` (`polymorphic_ctype_id`);

--
-- Indexes for table `showroom_products_bookings`
--
ALTER TABLE `showroom_products_bookings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `showroom_products_bookings_products_id_booking_id_8c0b7f05_uniq` (`products_id`,`booking_id`),
  ADD KEY `showroom_products_bo_booking_id_c24de8c9_fk_showroom_` (`booking_id`);

--
-- Indexes for table `showroom_products_customers`
--
ALTER TABLE `showroom_products_customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `showroom_products_custom_products_id_customer_id_5fd46d2e_uniq` (`products_id`,`customer_id`),
  ADD KEY `showroom_products_cu_customer_id_43d2ee4e_fk_showroom_` (`customer_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `showroom_booking`
--
ALTER TABLE `showroom_booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `showroom_customer`
--
ALTER TABLE `showroom_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `showroom_customer_bookings`
--
ALTER TABLE `showroom_customer_bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `showroom_customer_messages`
--
ALTER TABLE `showroom_customer_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `showroom_customer_product`
--
ALTER TABLE `showroom_customer_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `showroom_manufacturer`
--
ALTER TABLE `showroom_manufacturer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `showroom_manufacturer_product`
--
ALTER TABLE `showroom_manufacturer_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `showroom_messageenquiry`
--
ALTER TABLE `showroom_messageenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `showroom_products`
--
ALTER TABLE `showroom_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `showroom_products_bookings`
--
ALTER TABLE `showroom_products_bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `showroom_products_customers`
--
ALTER TABLE `showroom_products_customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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

--
-- Constraints for table `showroom_accesories`
--
ALTER TABLE `showroom_accesories`
  ADD CONSTRAINT `showroom_accesories_products_ptr_id_f6910957_fk_showroom_` FOREIGN KEY (`products_ptr_id`) REFERENCES `showroom_products` (`id`);

--
-- Constraints for table `showroom_booking`
--
ALTER TABLE `showroom_booking`
  ADD CONSTRAINT `showroom_booking_customers_id_95fb76a9_fk_showroom_customer_id` FOREIGN KEY (`customers_id`) REFERENCES `showroom_customer` (`id`),
  ADD CONSTRAINT `showroom_booking_product_id_1b30d4dd_fk_showroom_products_id` FOREIGN KEY (`product_id`) REFERENCES `showroom_products` (`id`);

--
-- Constraints for table `showroom_car`
--
ALTER TABLE `showroom_car`
  ADD CONSTRAINT `showroom_car_products_ptr_id_b2c5b8d5_fk_showroom_products_id` FOREIGN KEY (`products_ptr_id`) REFERENCES `showroom_products` (`id`);

--
-- Constraints for table `showroom_customer`
--
ALTER TABLE `showroom_customer`
  ADD CONSTRAINT `showroom_customer_user_id_aa29013e_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `showroom_customer_bookings`
--
ALTER TABLE `showroom_customer_bookings`
  ADD CONSTRAINT `showroom_customer_bo_booking_id_21beae13_fk_showroom_` FOREIGN KEY (`booking_id`) REFERENCES `showroom_booking` (`id`),
  ADD CONSTRAINT `showroom_customer_bo_customer_id_a9ba3c1b_fk_showroom_` FOREIGN KEY (`customer_id`) REFERENCES `showroom_customer` (`id`);

--
-- Constraints for table `showroom_customer_messages`
--
ALTER TABLE `showroom_customer_messages`
  ADD CONSTRAINT `showroom_customer_me_customer_id_4e7c8eff_fk_showroom_` FOREIGN KEY (`customer_id`) REFERENCES `showroom_customer` (`id`),
  ADD CONSTRAINT `showroom_customer_me_messageenquiry_id_b6b30248_fk_showroom_` FOREIGN KEY (`messageenquiry_id`) REFERENCES `showroom_messageenquiry` (`id`);

--
-- Constraints for table `showroom_customer_product`
--
ALTER TABLE `showroom_customer_product`
  ADD CONSTRAINT `showroom_customer_pr_customer_id_9b8076bb_fk_showroom_` FOREIGN KEY (`customer_id`) REFERENCES `showroom_customer` (`id`),
  ADD CONSTRAINT `showroom_customer_pr_products_id_31bac1fd_fk_showroom_` FOREIGN KEY (`products_id`) REFERENCES `showroom_products` (`id`);

--
-- Constraints for table `showroom_manufacturer_product`
--
ALTER TABLE `showroom_manufacturer_product`
  ADD CONSTRAINT `showroom_manufacture_manufacturer_id_7d836ce9_fk_showroom_` FOREIGN KEY (`manufacturer_id`) REFERENCES `showroom_manufacturer` (`id`),
  ADD CONSTRAINT `showroom_manufacture_products_id_44d06878_fk_showroom_` FOREIGN KEY (`products_id`) REFERENCES `showroom_products` (`id`);

--
-- Constraints for table `showroom_messageenquiry`
--
ALTER TABLE `showroom_messageenquiry`
  ADD CONSTRAINT `showroom_messageenqu_customers_id_d8ebf3b6_fk_showroom_` FOREIGN KEY (`customers_id`) REFERENCES `showroom_customer` (`id`);

--
-- Constraints for table `showroom_products`
--
ALTER TABLE `showroom_products`
  ADD CONSTRAINT `showroom_products_manufacturers_id_4f57bda2_fk_showroom_` FOREIGN KEY (`manufacturers_id`) REFERENCES `showroom_manufacturer` (`id`),
  ADD CONSTRAINT `showroom_products_polymorphic_ctype_id_025285d3_fk_django_co` FOREIGN KEY (`polymorphic_ctype_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `showroom_products_bookings`
--
ALTER TABLE `showroom_products_bookings`
  ADD CONSTRAINT `showroom_products_bo_booking_id_c24de8c9_fk_showroom_` FOREIGN KEY (`booking_id`) REFERENCES `showroom_booking` (`id`),
  ADD CONSTRAINT `showroom_products_bo_products_id_afc74cc2_fk_showroom_` FOREIGN KEY (`products_id`) REFERENCES `showroom_products` (`id`);

--
-- Constraints for table `showroom_products_customers`
--
ALTER TABLE `showroom_products_customers`
  ADD CONSTRAINT `showroom_products_cu_customer_id_43d2ee4e_fk_showroom_` FOREIGN KEY (`customer_id`) REFERENCES `showroom_customer` (`id`),
  ADD CONSTRAINT `showroom_products_cu_products_id_45da5cdd_fk_showroom_` FOREIGN KEY (`products_id`) REFERENCES `showroom_products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;