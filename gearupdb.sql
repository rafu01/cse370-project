-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2020 at 03:46 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

create database gearupdb;
use gearupdb;


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
(25, 'Can add customer', 7, 'add_customer'),
(26, 'Can change customer', 7, 'change_customer'),
(27, 'Can delete customer', 7, 'delete_customer'),
(28, 'Can view customer', 7, 'view_customer'),
(29, 'Can add products', 8, 'add_products'),
(30, 'Can change products', 8, 'change_products'),
(31, 'Can delete products', 8, 'delete_products'),
(32, 'Can view products', 8, 'view_products'),
(33, 'Can add user message', 9, 'add_usermessage'),
(34, 'Can change user message', 9, 'change_usermessage'),
(35, 'Can delete user message', 9, 'delete_usermessage'),
(36, 'Can view user message', 9, 'view_usermessage'),
(37, 'Can add booking', 10, 'add_booking'),
(38, 'Can change booking', 10, 'change_booking'),
(39, 'Can delete booking', 10, 'delete_booking'),
(40, 'Can view booking', 10, 'view_booking'),
(41, 'Can add car', 11, 'add_car'),
(42, 'Can change car', 11, 'change_car'),
(43, 'Can delete car', 11, 'delete_car'),
(44, 'Can view car', 11, 'view_car'),
(45, 'Can add manufacturer', 12, 'add_manufacturer'),
(46, 'Can change manufacturer', 12, 'change_manufacturer'),
(47, 'Can delete manufacturer', 12, 'delete_manufacturer'),
(48, 'Can view manufacturer', 12, 'view_manufacturer'),
(49, 'Can add accesories', 13, 'add_accesories'),
(50, 'Can change accesories', 13, 'change_accesories'),
(51, 'Can delete accesories', 13, 'delete_accesories'),
(52, 'Can view accesories', 13, 'view_accesories');

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
(1, 'pbkdf2_sha256$216000$za3vSuuD0sOh$2Q7Jn1OAE7pJnAGfQFOmY81LmoRE3xEwnwnUSrtKIU4=', '2020-12-08 17:00:54.338315', 1, 'admin', '', '', 'admin@g.bracu.ac.bd', 1, 1, '2020-12-03 08:15:19.779631');

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

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-12-08 17:01:32.147653', '1', 'Ford', 1, '[{\"added\": {}}]', 12, 1),
(2, '2020-12-08 17:08:03.951212', '1', 'Ford Mustang', 1, '[{\"added\": {}}]', 11, 1),
(3, '2020-12-08 17:12:17.624471', '1', 'Ford Mustang', 2, '[{\"changed\": {\"fields\": [\"Image url1\", \"Image url2\", \"Image url4\"]}}]', 11, 1),
(4, '2020-12-08 17:19:13.286333', '2', 'Toyota', 1, '[{\"added\": {}}]', 12, 1),
(5, '2020-12-08 17:24:47.665077', '2', 'Toyota Supra', 1, '[{\"added\": {}}]', 11, 1),
(6, '2020-12-08 17:25:46.470221', '2', 'Toyota Supra', 2, '[{\"changed\": {\"fields\": [\"Image url1\", \"Image url5\"]}}]', 11, 1),
(7, '2020-12-09 15:13:51.519275', '3', 'Audi', 1, '[{\"added\": {}}]', 12, 1),
(8, '2020-12-09 15:16:18.192053', '4', 'Aston Martin', 1, '[{\"added\": {}}]', 12, 1),
(9, '2020-12-09 15:18:15.150059', '5', 'Lamborghini', 1, '[{\"added\": {}}]', 12, 1),
(10, '2020-12-09 15:18:51.799250', '1', 'Ford', 2, '[{\"changed\": {\"fields\": [\"Location\"]}}]', 12, 1),
(11, '2020-12-09 15:23:34.535903', '3', 'Toyota Camry', 1, '[{\"added\": {}}]', 11, 1),
(12, '2020-12-09 15:28:17.947822', '4', 'Toyota Vios', 1, '[{\"added\": {}}]', 11, 1),
(13, '2020-12-09 15:29:03.652973', '3', 'Toyota Camry', 2, '[{\"changed\": {\"fields\": [\"Description\", \"Image url1\", \"Image url4\"]}}]', 11, 1),
(14, '2020-12-09 15:34:23.859981', '5', 'Toyota Fortuner', 1, '[{\"added\": {}}]', 11, 1),
(15, '2020-12-09 15:36:18.953026', '5', 'Toyota Fortuner', 2, '[{\"changed\": {\"fields\": [\"Image url2\", \"Image url3\", \"Image url4\", \"Image url5\"]}}]', 11, 1),
(16, '2020-12-09 15:40:55.555842', '6', 'Toyota Prado', 1, '[{\"added\": {}}]', 11, 1),
(17, '2020-12-10 15:49:45.778961', '7', 'Lamborghini Aventador', 1, '[{\"added\": {}}]', 11, 1),
(18, '2020-12-10 16:09:02.579233', '8', 'Lamborghini Urus', 1, '[{\"added\": {}}]', 11, 1),
(19, '2020-12-10 16:16:15.835944', '9', 'Lamborghini Huracan Evo', 1, '[{\"added\": {}}]', 11, 1),
(20, '2020-12-10 16:32:28.187405', '10', 'Lamborghini Huracan STO', 1, '[{\"added\": {}}]', 11, 1),
(21, '2020-12-10 17:09:28.589527', '11', 'Lamborghini Aventador SVJ Coupe', 1, '[{\"added\": {}}]', 11, 1),
(22, '2020-12-11 16:34:55.094941', '12', 'Ford Edge ST', 1, '[{\"added\": {}}]', 11, 1),
(23, '2020-12-11 16:39:55.293017', '13', 'Ford Explorer Platinum', 1, '[{\"added\": {}}]', 11, 1),
(24, '2020-12-11 16:40:56.696131', '13', 'Ford Explorer Platinum', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 11, 1),
(25, '2020-12-11 16:44:05.920876', '14', 'Ford EcoSport Titanium', 1, '[{\"added\": {}}]', 11, 1),
(26, '2020-12-11 17:03:57.008906', '15', 'Ford Escape SEL', 1, '[{\"added\": {}}]', 11, 1),
(27, '2020-12-11 17:14:35.790479', '16', 'Audi R8 Coupe', 1, '[{\"added\": {}}]', 11, 1),
(28, '2020-12-11 17:22:29.447471', '17', 'Audi A3 Sedan', 1, '[{\"added\": {}}]', 11, 1),
(29, '2020-12-11 17:28:52.716135', '18', 'Audi e-tron Sportback', 1, '[{\"added\": {}}]', 11, 1),
(30, '2020-12-11 17:35:22.328842', '19', 'Audi RS Q8', 1, '[{\"added\": {}}]', 11, 1),
(31, '2020-12-11 17:43:07.763248', '20', 'Audi TT Roadster', 1, '[{\"added\": {}}]', 11, 1),
(32, '2020-12-11 17:43:47.498474', '19', 'Audi RS Q8', 2, '[]', 11, 1),
(33, '2020-12-12 13:49:08.059443', '21', 'Aston Martin DBX', 1, '[{\"added\": {}}]', 11, 1),
(34, '2020-12-12 13:52:49.369670', '22', 'Aston Martin Vantage', 1, '[{\"added\": {}}]', 11, 1),
(35, '2020-12-12 14:03:41.016470', '23', 'Aston Martin DB11', 1, '[{\"added\": {}}]', 11, 1),
(36, '2020-12-12 14:07:25.548136', '24', 'Aston Martin DBS Superleggera', 1, '[{\"added\": {}}]', 11, 1),
(37, '2020-12-12 14:11:38.961520', '25', 'Aston Martin Valkyrie', 1, '[{\"added\": {}}]', 11, 1),
(38, '2020-12-12 14:13:54.018477', '2', 'sah75', 1, '[{\"added\": {}}]', 4, 1),
(39, '2020-12-12 14:14:12.950886', '2', 'sah75', 3, '', 4, 1),
(40, '2020-12-12 14:21:04.550864', '1', 'Shakib Al Hasan', 1, '[{\"added\": {}}]', 7, 1),
(41, '2020-12-12 14:22:34.042567', '2', 'Salman F Rahman', 1, '[{\"added\": {}}]', 7, 1),
(42, '2020-12-12 14:25:07.658595', '3', 'Mashrafe Mortaza', 1, '[{\"added\": {}}]', 7, 1),
(43, '2020-12-12 14:26:50.065733', '2', 'Salman F Rahman', 2, '[]', 7, 1),
(44, '2020-12-12 14:27:59.746411', '4', 'William Rechard', 1, '[{\"added\": {}}]', 7, 1),
(45, '2020-12-12 14:29:48.456724', '5', 'Moosa Bin Shamsher', 1, '[{\"added\": {}}]', 7, 1),
(46, '2020-12-12 14:31:02.634377', '6', 'James Martin', 1, '[{\"added\": {}}]', 7, 1),
(47, '2020-12-12 14:32:38.514997', '7', 'Kazi Salahuddin', 1, '[{\"added\": {}}]', 7, 1),
(48, '2020-12-12 14:33:49.793402', '8', 'Ahmed Sharif', 1, '[{\"added\": {}}]', 7, 1),
(49, '2020-12-12 14:35:10.984302', '9', 'Nitin Ghosh', 1, '[{\"added\": {}}]', 7, 1),
(50, '2020-12-12 14:36:13.749471', '10', 'Hamin Ahmed', 1, '[{\"added\": {}}]', 7, 1);

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
(13, 'showroom', 'accesories'),
(10, 'showroom', 'booking'),
(11, 'showroom', 'car'),
(7, 'showroom', 'customer'),
(12, 'showroom', 'manufacturer'),
(8, 'showroom', 'products'),
(9, 'showroom', 'usermessage');

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
(19, 'showroom', '0001_initial', '2020-12-08 16:18:33.912130');

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
('6beoo0givrcg3dqtmmg67xe0cyov1q3w', '.eJxVjEEOgjAQRe_StWlopwXq0r1naGY6M4IaSCisjHdXEha6_e-9_zIZt3XIW5Ulj2zOxpnT70ZYHjLtgO843WZb5mldRrK7Yg9a7XVmeV4O9-9gwDp86wjFKzaACqJC4Nl77Thx7LTvSbUlCdAmiKF1jAGJi0sxSdMHQArm_QEHjjiX:1kmgMA:99ZoUVHHYpIGZlQv3YDvraJYd0O4LaQC-EExY2ctHEQ', '2020-12-22 17:00:54.340339'),
('vb26r8wpszt31pol70dqomajpbm36rqr', '.eJxVjEEOgjAQRe_StWlopwXq0r1naGY6M4IaSCisjHdXEha6_e-9_zIZt3XIW5Ulj2zOxpnT70ZYHjLtgO843WZb5mldRrK7Yg9a7XVmeV4O9-9gwDp86wjFKzaACqJC4Nl77Thx7LTvSbUlCdAmiKF1jAGJi0sxSdMHQArm_QEHjjiX:1kmfi2:Qf6w1hfkWbOZd1aw_aqzwe51b7aBjscjI-7u9pvsf8E', '2020-12-22 16:19:26.470723');

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

--
-- Dumping data for table `showroom_car`
--

INSERT INTO `showroom_car` (`products_ptr_id`, `mileage`) VALUES
(1, 13),
(2, 10),
(3, 10.5),
(4, 12),
(5, 9.5),
(6, 11),
(7, 7.69),
(8, 8),
(9, 7.19),
(10, 7.2),
(11, 7.5),
(12, 26),
(13, 24),
(14, 29),
(15, 28),
(16, 19),
(17, 23),
(18, 15),
(19, 17),
(20, 10),
(21, 8.9),
(22, 9.2),
(23, 11.5),
(24, 7.3),
(25, 3.5);

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
  `profile_pic` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `showroom_customer`
--

INSERT INTO `showroom_customer` (`id`, `name`, `email`, `password`, `phone`, `credit_info`, `location`, `profile_pic`, `user_id`) VALUES
(1, 'Shakib Al Hasan', 'sah75@gmail.com', 'Gearup123', '0123456789', '333444555666', 'Bangladesh', 'Shakib.jpg', NULL),
(2, 'Salman F Rahman', 'salmanfrahman@beximcoltd.com', 'Gearup123', '0132456788', '333444555666', 'Bangladesh', 'profile.png', NULL),
(3, 'Mashrafe Mortaza', 'mash02@gmail.com', 'Gearup123', '0143256780', '333444555666', 'Bangladesh', 'mash.jpg', NULL),
(4, 'William Rechard', 'willrich@gmail.com', 'Gearup123', '1243224442', '333444555666', 'United States', 'profile_5kJEawG.png', NULL),
(5, 'Moosa Bin Shamsher', 'm00sa@gmail.com', 'Gearup123', '0132457698', '333444555666', 'Bangladesh', '9fdaf220f0ee111d6b54a6112b57ce19.jpg', NULL),
(6, 'James Martin', 'jimmymartin@yahoo.com', 'Gearup123', '64008811668', '333444555666', 'Australia', 'profile_ZtH8qN9.png', NULL),
(7, 'Kazi Salahuddin', 'salauddin@bff.co.bd', 'Gearup123', '01845238966', '333444555666', 'Bangladesh', 'profile_CBXwTXV.png', NULL),
(8, 'Ahmed Sharif', 'ahmedsharif@gmail.com', 'Gearup123', '01684673289', '333444555666', 'Bangladesh', 'profile_MWeNvIs.png', NULL),
(9, 'Nitin Ghosh', 'nitinghosh32@gmail.com', 'Gearup123', '01745362819', '333444555666', 'Bangladesh', 'profile_5GrAz9h.png', NULL),
(10, 'Hamin Ahmed', 'hamin42@gmail.com', 'Gearup123', '01386763515', '333444555666', 'Bangladesh', 'profile_NIKYlRe.png', NULL);

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
  `usermessage_id` int(11) NOT NULL
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

--
-- Dumping data for table `showroom_customer_product`
--

INSERT INTO `showroom_customer_product` (`id`, `customer_id`, `products_id`) VALUES
(1, 1, 25),
(2, 2, 11),
(3, 3, 2),
(4, 4, 16),
(5, 4, 21),
(8, 5, 10),
(9, 5, 11),
(6, 5, 18),
(7, 5, 25),
(10, 6, 6),
(11, 7, 6),
(12, 9, 4),
(13, 10, 3);

-- --------------------------------------------------------

--
-- Table structure for table `showroom_manufacturer`
--

CREATE TABLE `showroom_manufacturer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `showroom_manufacturer`
--

INSERT INTO `showroom_manufacturer` (`id`, `name`, `location`) VALUES
(1, 'Ford', 'United States'),
(2, 'Toyota', 'Japan'),
(3, 'Audi', 'Germany'),
(4, 'Aston Martin', 'United Kingdom'),
(5, 'Lamborghini', 'Italy');

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

--
-- Dumping data for table `showroom_products`
--

INSERT INTO `showroom_products` (`id`, `name`, `price`, `quantity`, `year`, `description`, `image_url1`, `image_url2`, `image_url3`, `image_url4`, `image_url5`, `manufacturers_id`, `polymorphic_ctype_id`) VALUES
(1, 'Ford Mustang', 2500000, 10, '2020', 'The Ford Mustang is a series of American automobiles manufactured by Ford. In continuous production since 1964, the Mustang is currently the longest-produced Ford car nameplate. Currently in its sixth generation, it is the fifth-best selling Ford car nameplate. The namesake of the \"pony car\" automobile segment, the Mustang was developed as a highly styled line of sporty coupes and convertibles derived from existing model lines, initially distinguished by \"long hood, short deck\" proportions.[2]\r\n\r\nOriginally predicted to sell 100,000 vehicles yearly, the 1965 Mustang became the most successful vehicle launch since the 1927 Model A.[3] Introduced on April 17, 1964[4] (16 days after the Plymouth Barracuda), over 400,000 units in its first year; the one-millionth Mustang was sold within two years of its launch.[5] In August 2018, Ford produced the 10-millionth Mustang; matching the first 1965 Mustang, the vehicle was a 2019 Wimbledon White convertible with a V8 engine.[6]\r\n\r\nThe success of the Mustang launch would lead to multiple competitors from other American manufacturers, including the Chevrolet Camaro and Pontiac Firebird[7] (1967), AMC Javelin (1968), and Dodge Challenger[8](1970). The Mustang would also have an effect on designs of coupés worldwide, leading to the marketing of the Toyota Celica and Ford Capri in the United States (the latter, by Lincoln-Mercury). The Mercury Cougar was launched in 1967 as a higher-trim version of the Mustang; during the 1970s, it was repackaged as a personal luxury car.\r\n\r\nFor 1965 to 2004, the Mustang shared chassis commonality with other Ford model lines, staying rear-wheel drive throughout its production. From 1965 to 1973, the Mustang was derived from the 1960 Ford Falcon compact. From 1974 to 1978, the Mustang (denoted Mustang II) was a longer-wheelbase version of the Ford Pinto. From 1979 to 2004, the Mustang shared its Fox platform chassis with 14 other Ford vehicles (becoming the final one to use the Fox architecture). Since 2005, Ford has produced two generations of the Mustang, each using a distinct platform unique to the model line.\r\n\r\nThrough its production, multiple nameplates have been associated with the Ford Mustang series, including GT, Mach 1, Boss 302/429, Cobra (separate from Shelby Cobra), and Bullitt, along with \"5.0\" fender badging', 'https://i.pinimg.com/originals/4d/db/cd/4ddbcd5bec6354623d321eecb916aac8.jpg', 'https://www.motortrend.com/uploads/sites/11/2019/09/2020-Ford-Mustang-2.3-Liter-High-Performance-Package-1742.jpg?fit=around%7C875:492', 'https://www.carwale.com/ford-cars/mustang/images/ford-mustang-exterior-126883/', 'https://www.motortrend.com/uploads/sites/11/2019/09/2020-Ford-Mustang-2.3-Liter-High-Performance-Package.jpg?fit=around%7C875:492\\', 'https://i.insider.com/5e9a0cafdcd88c113f7c08b0?width=1000&format=jpeg&auto=webp', 1, 11),
(2, 'Toyota Supra', 5000000, 3, '1995', 'The Toyota Supra (Japanese: トヨタ・スープラ, Toyota Sūpura) is a sports car and grand tourer manufactured by Toyota Motor Corporation beginning in 1978. The initial four generations of the Supra were produced from 1978 to 2002. The fifth generation has been produced since March 2019 and went on sale in May 2019.[3] The styling of the original Supra was derived from the Toyota Celica, but it was both longer and wider.[4] Starting in mid-1986, the A70 Supra became a separate model from the Celica. In turn, Toyota also stopped using the prefix Celica and named the car Supra.[5] Owing to the similarity and past of the Celica\'s name, it is frequently mistaken for the Supra, and vice versa. The first, second and third generations of the Supra were assembled at the Tahara plant in Tahara, Aichi, while the fourth generation was assembled at the Motomachi plant in Toyota City. The fifth generation of the Supra is assembled alongside the G29 BMW Z4 in Graz, Austria by Magna Steyr.\r\n\r\nThe Supra also traces much of its roots back to the 2000GT owing to an inline-6 layout. The first three generations were offered with a direct descendant to the Crown\'s and 2000GT\'s M engine. Interior aspects were also similar, as was the chassis code \"A\".\r\n\r\nAlong with this name, Toyota also included its own logo for the Supra. It was derived from the original Celica logo, being blue instead of orange. This logo was used until January 1986, when the A70 Supra was introduced. The new logo was similar in size, with orange writing on a red background, but without the dragon design. That logo, in turn, was on Supras until 1991 when Toyota switched to its current oval company logo. (The dragon logo was a Celica logo regardless of what colour it was. It appeared on the first two generations of the Supra because they were officially Toyota Celicas. The dragon logo was used for the Celica line until it too was discontinued.)[citation needed]\r\n\r\nIn 1998, Toyota ceased sales of the fourth generation of the Supra in the United States,[5] production of the fourth generation of the Supra ended in 2002.\r\n\r\nIn January 2019, the fifth generation of the Supra, which was co-developed with the G29 Z4, was introduced.[6]', 'https://carsguide-res.cloudinary.com/image/upload/f_auto,fl_lossy,q_auto,t_cg_hero_large/v1/editorial/review/hero_image/2020-Toyota-Supra-GTS-coupe-white-matt-campbell-1001x565-%281%29.jpg', 'https://s3.amazonaws.com/toyota-cms-media/wp-content/uploads/2019/03/2020_Supra_LaunchEdition_01_DA98A3EF24330A1E359D4DA496D4CF667DC03BAE-1500x1000.jpg', 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/2021-toyota-supra-3p0-105-1597436187.jpg?crop=0.667xw:0.563xh;0.114xw,0.363xh&resize=2048:*', 'https://car-images.bauersecure.com/pagefiles/85886/1056x594/toyota_supra_139.jpg', 'https://carsguide-res.cloudinary.com/image/upload/f_auto,fl_lossy,q_auto,t_cg__marking_background__sm_/v1/editorial/2020-Toyota-Supra-GTS-coupe-white-matt-campbell-1200x800-%281%29.jpg', 2, 11),
(3, 'Toyota Camry', 9100000, 6, '2020', 'The Toyota Camry (/ˈkæmri/; Japanese: トヨタ・カムリ Toyota Kamuri) is an automobile sold internationally by the Japanese manufacturer Toyota since 1982, spanning multiple generations. Originally compact in size (narrow-body), later Camry models have grown to fit the mid-size classification (wide-body)—although the two sizes co-existed in the 1990s. Since the release of the wide-bodied versions, Camry has been extolled by Toyota as the firm\'s second \"world car\" after the Corolla. In Japan, Camry was once exclusive to Toyota Corolla Store retail dealerships. Narrow-body cars also spawned a rebadged sibling in Japan, the Toyota Vista (トヨタ・ビスタ)—also introduced in 1982 and sold at Toyota Vista Store locations. Diesel fuel versions have previously retailed at Toyota Diesel Store.\r\n\r\nhttps://amartoyota.com/wp-content/uploads/2018/08/Ext4-7.jpg', 'https://amartoyota.com/wp-content/uploads/2018/08/Ext4-7.jpg', 'https://amartoyota.com/wp-content/uploads/2018/08/Ext1-15-1024x727.jpg', 'https://amartoyota.com/wp-content/uploads/2018/08/Ext2-15-1024x727.jpg', 'https://amartoyota.com/wp-content/uploads/2018/10/2018-amartoyota-Banner-004-1024x375.jpg', 'https://amartoyota.com/wp-content/uploads/2018/08/Ext3-14-1024x727.jpg', 2, 11),
(4, 'Toyota Vios', 8600000, 13, '2020', 'The Toyota Vios is a subcompact car produced by the Japanese manufacturer Toyota, primarily for markets in the Asia-Pacific region since 2002.[1]\r\n\r\nAlong with the compact Corolla and mid-size Camry, the Vios serves as the replacement to the Tercel (marketed as Soluna in Thailand since 1997 and Indonesia since 2000), which filled the Asian subcompact or B-segment class in the region. From 2005, the Vios was also marketed alongside its hatchback complement known as the Yaris in many countries globally. The second generation Vios is known as the Belta in Japan and Yaris sedan in the United States, Canada, Trinidad and Tobago,[2] Jamaica, the Middle East and Australia. The Vios is also successor to the entry-level variants of Toyota Corolla in the Philippines, with the upmarket variant being catered to by Toyota Corolla Altis.', 'https://imgcdn.oto.com/large/gallery/exterior/38/1798/toyota-vios-front-angle-low-view-997090.jpg', 'https://imgcdn.oto.com/large/gallery/exterior/38/1798/toyota-vios-side-view-870110.jpg', 'https://imgcdn.oto.com/large/gallery/exterior/38/1798/toyota-vios-rear-cross-side-view-167018.jpg', 'https://imgcdn.oto.com/large/gallery/exterior/38/1798/toyota-vios-full-front-view-448426.jpg', 'https://imgcdn.oto.com/large/gallery/exterior/38/1798/toyota-vios-grille-view-614288.jpg', 2, 11),
(5, 'Toyota Fortuner', 4000000, 4, '2019', 'The Toyota Fortuner, also known as the Toyota SW4, is a mid-size SUV manufactured by Japanese automobile manufacturer Toyota. The Fortuner is built on the Hilux pickup truck platform. It features two/three rows of seats and is available in rear-wheel drive or four-wheel drive configuration. It is a part of Toyota\'s IMV project in Thailand, which also includes the Hilux and the Innova. The name \"Fortuner\" is derived from the English word \"fortune\".', 'https://cdn.autoportal.com/img/new-cars-gallery/toyota/fortuner/exterior/9549f0d3/toyota-fortuner-9549f0d3-1024x768.png', 'https://cdn.autoportal.com/img/new-cars-gallery/toyota/fortuner/exterior/388de0a5/toyota-fortuner-388de0a5-1024x768.jpg', 'https://cdn.autoportal.com/img/new-cars-gallery/toyota/fortuner/exterior/8656530e/toyota-fortuner-8656530e-1024x768.JPG', 'https://cdn.autoportal.com/img/new-cars-gallery/toyota/fortuner/exterior/465bef7a/toyota-fortuner-465bef7a-1024x768.jpg', 'https://cdn.autoportal.com/img/new-cars-gallery/toyota/fortuner/exterior/cab3264d/toyota-fortuner-cab3264d-1024x768.jpg', 2, 11),
(6, 'Toyota Prado', 8000000, 16, '2020', 'The Toyota Land Cruiser Prado (Japanese: トヨタ・ランドクルーザー プラド, Toyota Rando-Kurūzā Purado) is a full-size four-wheel drive vehicle in the Land Cruiser range. It is produced by the Japanese car maker, Toyota. The Prado is one of the smaller vehicles in the range. From 2009, the Prado is based on Toyota\'s J150 platform. In some countries it is available as the equivalent Lexus GX.', 'https://media.zigcdn.com/media/model/2018/Oct/front-1-4-left-1886758988_930x620.jpg', 'https://media.zigcdn.com/media/model/2018/Oct/bumper-1529737564_930x620.jpg', 'https://img.gaadicdn.com/images/car-images/930x620/Toyota/Toyota-Land-Cruiser-Prado/6322/Toyota_New-Land-Cruiser-Prado_WHITE-PEARL-CRYSTAL-SHINE_f1f2ed.jpg', 'https://media.zigcdn.com/media/model/2018/Oct/cabin-view-114850299_930x620.jpg', 'https://img.gaadicdn.com/images/car-images/930x620/Toyota/Toyota-Land-Cruiser-Prado/6322/Toyota_New-Land-Cruiser-Prado_ATTITUDE-BLACK-MICA_16171c.jpg', 2, 11),
(7, 'Lamborghini Aventador', 60000000, 0, '2021', 'The Lamborghini Aventador (Spanish pronunciation: [aβentaˈðoɾ]) is a mid-engine sports car produced by the Italian automotive manufacturer Lamborghini. In keeping with Lamborghini tradition, the Aventador is named after a fighting bull.', 'https://media.ed.edmunds-media.com/lamborghini/aventador/2019/oem/2019_lamborghini_aventador_convertible_s-roadster_fq_oem_4_815.jpg', 'https://media.ed.edmunds-media.com/lamborghini/aventador/2019/oem/2019_lamborghini_aventador_coupe_s_r_oem_1_815.jpg', 'https://media.ed.edmunds-media.com/lamborghini/aventador/2019/oem/2019_lamborghini_aventador_convertible_s-roadster_fq_oem_2_815.jpg', 'https://media.ed.edmunds-media.com/lamborghini/aventador/2019/oem/2019_lamborghini_aventador_coupe_s_rq_oem_6_815.jpg', 'https://media.ed.edmunds-media.com/lamborghini/aventador/2019/oem/2019_lamborghini_aventador_convertible_s-roadster_swd_oem_1_815.jpg', 5, 11),
(8, 'Lamborghini Urus', 22000000, 2, '2019', 'Lamborghini Urus is the first Super Sport Utility Vehicle in the world to merge the soul of a super sports car with the functionality of an SUV. Powered by a 4.0-liter twin-turbo V8 engine producing 650 CV and 850 Nm of torque, Urus accelerates from 0 to 62 mph in 3.6 seconds and reaches a top speed of 190 mph. The design, performance, driving dynamics and driving emotion flow effortlessly into this visionary approach to Lamborghini DNA.', 'https://www.lamborghini.com/sites/it-en/files/DAM/lamborghini/facelift_2019/model_gw/urus/s/s_gateway_urus_02_m.jpg', 'https://www.lamborghini.com/sites/it-en/files/DAM/lamborghini/facelift_2019/model_gw/urus/s/s_gateway_urus_01_m.jpg', 'https://www.lamborghini.com/sites/it-en/files/DAM/lamborghini/facelift_2019/model_gw/urus/s/s_gateway_urus_03_m.jpg', 'https://www.lamborghini.com/sites/it-en/files/DAM/lamborghini/facelift_2019/model_gw/urus/s/s_gateway_urus_04_m.jpg', 'https://drivetribe.imgix.net/U7BHcHf-R_iq-inwsFhJAw?w=1200&h=675&fm=webp&auto=compress&lossless=true&fit=crop&crop=faces&dpr=1', 5, 11),
(9, 'Lamborghini Huracan Evo', 50000000, 1, '2020', 'The Lamborghini Huracán (Spanish for \"hurricane\"; [uɾaˈkan]) is a sports car manufactured by Italian automotive manufacturer Lamborghini replacing the previous V10 offering, the Gallardo. The Huracán made its worldwide debut at the 2014 Geneva Auto Show, and was released in the market in the second quarter of 2014. The LP 610-4 designation comes from the car having a 610 metric horsepower and 4 wheel drive, while LP stands for \"Longitudinale Posteriore\", which refers to the longitudinal mid-rear engine position.', 'https://cdn.motor1.com/images/mgl/ZXLGr/s1/lamborghini-huracan-evo-fluo-capsule.jpg', 'https://cdn.motor1.com/images/mgl/G6VW1/s1/lamborghini-huracan-evo-fluo-capsule.jpg', 'https://cdn.motor1.com/images/mgl/VkYM9/s1/lamborghini-huracan-evo-fluo-capsule.jpg', 'https://cdn.motor1.com/images/mgl/vR2p6/s1/lamborghini-huracan-evo-fluo-capsule.jpg', 'https://cdn.motor1.com/images/mgl/82Wme/s1/2020-lamborghini-huracan-evo.jpg', 5, 11),
(10, 'Lamborghini Huracan STO', 55000000, 0, '2021', 'In June 2019, Lamborghini introduced an off-road concept sports car based on the Huracán Evo called the Huracán Sterrato. The ground clearance of the car was increased by 47 mm (2 in) with the car\'s front approach improved by 1% and the departure angle enhanced by 6.5%. The wheel track is also increased by 30 mm (1 in) and the Sterrato has new wide body fender flares with integrated air-intakes for improved airflow for the brakes.', 'https://cdn.motor1.com/images/mgl/zPRQ7/s1/lamborghini-huracan-sto.jpg', 'https://cdn.motor1.com/images/mgl/kNREB/s1/lamborghini-huracan-sto.jpg', 'https://cdn.motor1.com/images/mgl/vRbpq/s1/lamborghini-huracan-sto.jpg', 'https://cdn.motor1.com/images/mgl/42RNM/s1/lamborghini-huracan-sto.jpg', 'https://cdn.motor1.com/images/mgl/MGyvp/s1/lamborghini-huracan-sto.jpg', 5, 11),
(11, 'Lamborghini Aventador SVJ Coupe', 70000000, 0, '2021', 'In a world that has become heavily reliant on technology, the 2021 Lamborghini Aventador takes a more nostalgic look at things. The large Lambo is a triumphant tribute to supercars of old, with its flamboyant facade and vociferous V-12. The 730-plus-hp 6.5-liter engine that\'s mounted behind the driver is naturally aspirated and crowd pleasing, but the Aventador\'s automated-manual transmission can be clunky in traffic. This Italian exotic looks good in both coupe and convertible form, though the latter\'s top is cumbersome to remove. Despite its substantial girth, the Aventador is surprisingly athletic. The track-tuned SVJ model makes carving canyon roads or logging lap times even more exhilarating. The 2021 Aventador is hugely expensive and far from subtle, but it\'s a brilliant send-off to a soon-to-be-extinct breed of old-school supercars.', 'https://cdn.motor1.com/images/mgl/91no1/s1/lamborghini-aventador-svj-by-novitec.jpg', 'https://cdn.motor1.com/images/mgl/OYWVR/s1/lamborghini-aventador-svj-by-novitec.jpg', 'https://cdn.motor1.com/images/mgl/2RoWk/s1/lamborghini-aventador-svj-by-novitec.jpg', 'https://cdn.motor1.com/images/mgl/WR3ON/s1/lamborghini-aventador-svj-by-novitec.jpg', 'https://cdn.motor1.com/images/mgl/7kwxW/s1/lamborghini-aventador-svj-by-novitec.jpg', 5, 11),
(12, 'Ford Edge ST', 4200000, 4, '2020', 'The standard features of the Ford Edge ST include EcoBoost 2.7L V-6 335hp twin turbo engine, 8-speed automatic transmission with overdrive, 4-wheel anti-lock brakes (ABS), side seat mounted airbags, Safety Canopy System curtain 1st and 2nd row overhead airbags, driver and passenger knee airbag, airbag occupancy sensor, automatic air conditioning, 20\" aluminum wheels, cruise control, ABS and driveline traction control, all-wheel.', 'https://media.ed.edmunds-media.com/ford/edge/2019/oem/2019_ford_edge_4dr-suv_titanium_fq_oem_1_815.jpg', 'https://media.ed.edmunds-media.com/ford/edge/2019/oem/2019_ford_edge_4dr-suv_titanium_d_oem_1_815.jpg', 'https://media.ed.edmunds-media.com/ford/edge/2019/oem/2019_ford_edge_4dr-suv_titanium_rq_oem_1_815.jpg', 'https://media.ed.edmunds-media.com/ford/edge/2019/oem/2019_ford_edge_4dr-suv_titanium_rq_oem_2_815.jpg', 'https://media.ed.edmunds-media.com/ford/edge/2019/oem/2019_ford_edge_4dr-suv_st_fq_oem_2_815.jpg', 1, 11),
(13, 'Ford Explorer Platinum', 6300000, 0, '2021', 'The standard features of the Ford Explorer Platinum include EcoBoost 3.0L V-6 365hp twin turbo engine, 10-speed automatic transmission with overdrive, 4-wheel anti-lock brakes (ABS), integrated navigation system, side seat mounted airbags, Safety Canopy System curtain 1st, 2nd and 3rd row overhead airbag, driver and passenger knee airbag, airbag occupancy sensor, automatic air conditioning, 20\" aluminum wheels, cruise control, Ford Co-Pilot360 Assist+ - Adaptive Cruise Control with Stop-and-Go distance pacing, Terrain Management System ABS and driveline traction control.', 'https://media.ed.edmunds-media.com/ford/explorer/2021/oem/2021_ford_explorer_4dr-suv_limited-hybrid_fq_oem_1_815.jpg', 'https://media.ed.edmunds-media.com/ford/explorer/2021/oem/2021_ford_explorer_4dr-suv_limited-hybrid_fq_oem_3_815.jpg', 'https://media.ed.edmunds-media.com/ford/explorer/2021/oem/2021_ford_explorer_4dr-suv_platinum_fq_oem_1_815.jpg', 'https://media.ed.edmunds-media.com/ford/explorer/2021/oem/2021_ford_explorer_4dr-suv_st_s_oem_1_815.jpg', 'https://media.ed.edmunds-media.com/ford/explorer/2021/oem/2021_ford_explorer_4dr-suv_platinum_swd_oem_1_815.jpg', 1, 11),
(14, 'Ford EcoSport Titanium', 3000000, 5, '2020', 'The standard features of the Ford EcoSport Titanium include 2.0L I-4 166hp engine, 6-speed automatic transmission with overdrive, 4-wheel anti-lock brakes (ABS), integrated navigation system, side seat mounted airbags, Safety Canopy System curtain 1st and 2nd row overhead airbags, rear side-impact airbag, driver and passenger knee airbag, airbag occupancy sensor, automatic air conditioning, 17\" aluminum wheels, cruise control, ABS and driveline traction control.', 'https://media.ed.edmunds-media.com/ford/ecosport/2018/oem/2018_ford_ecosport_4dr-suv_titanium_fq_oem_3_815.jpg', 'https://media.ed.edmunds-media.com/ford/ecosport/2018/oem/2018_ford_ecosport_4dr-suv_titanium_fq_oem_2_815.jpg', 'https://media.ed.edmunds-media.com/ford/ecosport/2018/oem/2018_ford_ecosport_4dr-suv_titanium_fq_oem_1_815.jpg', 'https://media.ed.edmunds-media.com/ford/ecosport/2018/oem/2018_ford_ecosport_4dr-suv_titanium_cc_oem_1_815.jpg', 'https://media.ed.edmunds-media.com/ford/ecosport/2018/oem/2018_ford_ecosport_4dr-suv_titanium_i_oem_1_815.jpg', 1, 11),
(15, 'Ford Escape SEL', 3100000, 2, '2020', 'The standard features of the Ford Escape S include Duratec 2.5L I-4 168hp engine, 6-speed automatic transmission with overdrive, 4-wheel anti-lock brakes (ABS), side seat mounted airbags, Safety Canopy System curtain 1st and 2nd row overhead airbags, driver knee airbag, airbag occupancy sensor, air conditioning, 17\" steel wheels, cruise control, ABS and driveline traction control, AdvanceTrac w/Roll Stability Control electronic stability.', 'https://media.ed.edmunds-media.com/ford/escape/2020/oem/2020_ford_escape_4dr-suv_titanium_fq_oem_1_815.jpg', 'https://media.ed.edmunds-media.com/ford/escape/2020/oem/2020_ford_escape_4dr-suv_titanium_fq_oem_2_815.jpg', 'https://media.ed.edmunds-media.com/ford/escape/2020/oem/2020_ford_escape_4dr-suv_titanium_rq_oem_1_815.jpg', 'https://media.ed.edmunds-media.com/ford/escape/2020/oem/2020_ford_escape_4dr-suv_titanium_s_oem_1_815.jpg', 'https://media.ed.edmunds-media.com/ford/escape/2020/oem/2020_ford_escape_4dr-suv_titanium_i_oem_1_815.jpg', 1, 11),
(16, 'Audi R8 Coupe', 18000000, 2, '2020', 'Always pay careful attention to the road, and do not drive while distracted. Audi connect should only be used when it is safe and appropriate. Audi connect services and features are optional, provided with the support of authorized affiliated and third-party service providers, and may require additional subscriptions with separate terms and conditions. Available on select models. Certain services collect location information. See Terms of Service for information about how to disable and for other details. Google Earth is a trademark of Google Inc. Connect services are subject to technologies remaining commercially available; such services are not guaranteed and may not be available after 2021 for equipped MY17–20 vehicles. Audi Navigation plus depends on signals from the worldwide Global Positioning Satellite network. The vehicle\'s electrical system, and existing wireless and satellite technologies, must be available and operating properly for the system to function. The system is designed to provide you with suggested routes in locating addresses, destinations and other points of interest. Changes in street names, construction zones, traffic flow, points of interest and other road system changes are beyond the control of Audi of America, Inc. Complete detailed mapping of lanes, roads, streets, toll roads, highways, etc., is not possible, therefore, you may encounter discrepancies between the mapping and your actual location.', 'https://www.audiusa.com/content/dam/nemo/us/models/R8/R8-Coupe/header-transition/1920x1080/1920x1080_2020-audi-R8_hero-min.jpg?output-format=webp&downsize=1023px:*', 'audiusa.com/dam/nemo/us/models/R8/R8-Coupe/header-transition/1920x1080/1920x1080_MY20-R8-Coupe-Ext_Front-Angle_ASCARI-min.jpg?output-format=webp&downsize=1023px:*', 'https://www.audiusa.com/dam/nemo/us/models/R8/R8-Coupe/730x730-overview-images/730x730_MY20-R8-Coupe-Ext-Front-Angle_ASCARI-min.jpg?output-format=webp&downsize=471px:*', 'https://www.audiusa.com/dam/nemo/us/models/R8/R8-Coupe/730x730-overview-images/730x730_MY20-R8-Coupe-Ext_Side-Angle_Ascari-blue-min.jpg?output-format=webp&downsize=471px:*', 'https://www.audiusa.com/content/dam/nemo/us/models/R8/R8-Coupe/1920x1080-gallery/1920x1080_2019_R8_Coupe_LED_taillights-min.jpg?output-format=webp&downsize=1324px:*', 3, 11),
(17, 'Audi A3 Sedan', 3500000, 3, '2020', 'Audi Navigation plus depends on signals from the worldwide Global Positioning Satellite network. The vehicle\'s electrical system, and existing wireless and satellite technologies, must be available and operating properly for the system to function. The system is designed to provide you with suggested routes in locating addresses, destination and other points of interest. Changes in street names, construction zones, traffic flow, points of interest and other road system changes are beyond the control of Audi of America, Inc. Complete detailed mapping of lanes, roads, streets, toll roads, highways, etc., is not possible, therefore you may encounter discrepancies between the mapping and your actual location. Please rely on your individual judgment in determining whether or not to follow a suggested Audi Navigation plus route.\r\n\r\nGoogle Earth features will not be available after December 2020 for Model Year 2018 & prior vehicles. Google Earth is a trademark of Google LLC. Connect services are subject to technologies remaining commercially available, such services are not guaranteed, and may not be available after 2021 for equipped MY17-19 vehicles.', 'https://www.audiusa.com/content/dam/nemo/us/models/A3/2020-A3Sedan/1920x1080-gallery/1920x1080_2020-Audi-A3-035_1920-min.jpg', 'https://www.audiusa.com/content/dam/nemo/us/models/A3/2020-A3Sedan/1920x1080-gallery/1920x1080_2020-Audi-A3-005_1280-min.jpg', 'https://www.audiusa.com/dam/nemo/us/models/A3/2020-S3Sedan/730x730-overview-images/730x730_s3/730x730_2020-Audi-S3-034_1920-min.jpg?output-format=webp&downsize=471px:*', 'https://www.audiusa.com/dam/nemo/us/models/A3/2020-A3Sedan/730x730-overview-images/730x730_2020-Audi-A3-035_1920.jpg?output-format=webp&downsize=471px:*', 'https://www.audiusa.com/content/dam/nemo/us/models/A3/2020-A3Sedan/1920x1080-gallery/1920x1080_2020-Audi-A3-003_1280-min.jpg', 3, 11),
(18, 'Audi e-tron Sportback', 7200000, 0, '2021', 'The Audi e-tron Sportback is a dynamic SUV coupé offering up to 300 kW of power and a range of up to 446 kilometers (277.1 miles) ( in the WLTP cycle) from a single battery charge (combined electric power consumption in kWh/100 km (62.1 mi): 26.3 - 21.6 (WLTP); 23.9 – 20.6 (NEFZ); combined CO2 emissions in g/km (g/mi): 0). Its digital matrix LED headlights are a new feature now available for the first time in a mass-production vehicle.', 'https://www.audiusa.com/dam/nemo/us/models/e-tron/e-tron-sportback/header-transition/1920x1080/1920x1080_e-tron-sportback_transition1-min.jpg?output-format=webp&downsize=1023px:*', 'https://www.audiusa.com/dam/nemo/us/models/e-tron/e-tron-sportback/730x730-overview-images/730x730_Audi_ACF_MLP_BannerAd-eSB_Final-10140.jpg?output-format=webp&downsize=471px:*', 'https://www.audiusa.com/dam/nemo/us/models/e-tron/e-tron-sportback/730x730-overview-images/730x730_2020-Audi-e-tron-SB-min.jpg?output-format=webp&downsize=471px:*', 'https://www.audiusa.com/dam/nemo/us/models/e-tron/e-tron-sportback/730x730-overview-images/730x730_e-tron-sportback_exterior-min.jpg?output-format=webp&downsize=471px:*', 'https://www.audiusa.com/dam/nemo/us/models/e-tron/e-tron-sportback/header-transition/1920x1080/1920x1080_e-tron-sportback_transition2-v2-min.jpg?output-format=webp&downsize=1023px:*', 3, 11),
(19, 'Audi RS Q8', 17000000, 0, '2021', 'The Audi Q8 combines the elegance of a four-door luxury coupé with the versatility of an SUV. The sporty interior conveys luxurious charm; together with the optional sliding rear seat bench plus, it offers even more space in the rear', 'https://www.audiusa.com/dam/nemo/us/models/Q8/RSQ8/730x730-overview-images/730x730_2020-Audi-RSQ8-002-performanc-min.jpg?output-format=webp&downsize=471px:*', 'https://www.audiusa.com/dam/nemo/us/models/Q8/RSQ8/header-transition/1920x1080/1920x1080_2020-Audi-RSQ8-004-performance-min.jpg?output-format=webp&downsize=1023px:*', 'https://www.audiusa.com/content/dam/nemo/us/models/Q8/RSQ8/1920x1080-gallery/1920x1080_2020-RSQ8-003-exterior-min.jpg?output-format=webp&downsize=1324px:*', 'https://www.audiusa.com/dam/nemo/us/models/Q8/RSQ8/730x730-overview-images/730x730__2020-Audi-RSQ8-006-interior-min.jpg?output-format=webp&downsize=471px:*', 'https://www.audiusa.com/dam/nemo/us/models/Q8/RSQ8/730x730-overview-images/730x730_2020-Audi-RSQ8-001-driver-assistance-min.jpg?output-format=webp&downsize=471px:*', 3, 11),
(20, 'Audi TT Roadster', 6000000, 0, '2021', 'The 2020 Audi TT is a small performance coupe or convertible that packs a lot of style and technology into its compact shell. Its turbocharged four-cylinder engine isn\'t overly powerful — it\'s good for 228 horsepower — but you do get nimble handling and standard all-wheel drive.', 'https://www.audiusa.com/content/dam/nemo/us/models/TT/TT-Roadster/header-transition/1920x1080/1920x1080_2020-Audi-TT-050a-min.jpg', 'https://www.audiusa.com/dam/nemo/us/models/TT/TT-Roadster/header-transition/1920x1080/2020-Audi-TT-068_1920_R1-min.jpg', 'https://www.audiusa.com/dam/nemo/us/models/TT/TT-Roadster/730x730-overview-images/730x730_aoa_tt_roadster_ext-min.jpg', 'https://www.audiusa.com/dam/nemo/us/models/TT/TT-Roadster/730x730-overview-images/MMEMZO_D.JPG', 'https://www.audiusa.com/content/dam/nemo/us/models/TT/TT-Roadster/1920x1080-gallery/1920x1080_2020-Audi-TT-067-min.jpg', 3, 11),
(21, 'Aston Martin DBX', 23000000, 2, '2020', 'Built on brand-new architecture, the DBX is designed to carry occupants in true Aston Martin style. Brimming with the latest technology to keep you safe, the DBX is comfortable, sumptuously luxurious, and will thrill you from the moment you sit behind the wheel. Thanks to lightweight aluminum construction, and its world-leading Aston Martin powertrain and suspension developed by the finest engineers of their kind, the DBX drives like no other SUV. It drives like a sports car.', 'https://cdn.slashgear.com/wp-content/uploads/2019/11/Aston-Martin-DBX_01-1280x720.jpg', 'https://cdn.slashgear.com/wp-content/uploads/2019/11/Aston-Martin-DBX_03.jpg', 'https://cdn.slashgear.com/wp-content/uploads/2019/11/Aston-Martin-DBX_05.jpg', 'https://cdn.slashgear.com/wp-content/uploads/2019/11/Aston-Martin-DBX_13.jpg', 'https://cdn.slashgear.com/wp-content/uploads/2019/11/Aston-Martin-DBX_25.jpg', 4, 11),
(22, 'Aston Martin Vantage', 18000000, 1, '2020', 'The Vantage is raw and instinctive, unwavering in its singular purpose: to overwhelm the senses through its world-renowned design, agile performance and dedicated craftsmanship. Its heart beats with a high powered 4.0 liter twin-turbocharged V8, producing that visceral Aston Martin roar. The convertible (Volante) variant is set to debut sometime in 2020 and we will share it here when we learn more.', 'https://www.supercars.net/blog/wp-content/uploads/2020/01/2020-Aston-Martin-Vantage.jpg', 'https://media.ed.edmunds-media.com/aston-martin/vantage/2020/oem/2020_aston-martin_vantage_coupe_amr-59-edition_fq_oem_5_815.jpg', 'https://media.ed.edmunds-media.com/aston-martin/vantage/2020/oem/2020_aston-martin_vantage_coupe_amr-59-edition_rq_oem_1_815.jpg', 'https://media.ed.edmunds-media.com/aston-martin/vantage/2020/oem/2020_aston-martin_vantage_coupe_base_fq_oem_12_815.jpg', 'https://media.ed.edmunds-media.com/aston-martin/vantage/2020/oem/2020_aston-martin_vantage_coupe_base_swd_oem_1_815.jpg', 4, 11),
(23, 'Aston Martin DB11', 25000000, 2, '2020', 'The DB11 is the most powerful and efficient ‘DB’ production model in Aston Martin’s history. Available as a coupe or Volante with the optional 5.2-liter twin-turbocharged V12 or standard 4.0-liter twin-turbocharged V8 engine, the DB11 takes Aston Martin’s grand touring heritage to unprecedented heights.', 'https://imgcdn.oto.com/large/gallery/exterior/42/1354/aston-martin-db11-front-angle-low-view-816103.jpg', 'https://imgcdn.oto.com/large/gallery/exterior/42/1354/aston-martin-db11-rear-cross-side-view-253001.jpg', 'https://imgcdn.oto.com/large/gallery/exterior/42/1354/aston-martin-db11-full-front-view-517543.jpg', 'https://imgcdn.oto.com/large/gallery/exterior/42/1354/aston-martin-db11-tail-light-721502.jpg', 'https://imgcdn.oto.com/large/gallery/exterior/42/1354/aston-martin-db11-rear-angle-view-263332.jpg', 4, 11),
(24, 'Aston Martin DBS Superleggera', 35000000, 1, '2020', 'Unquestionably, the DBS Superleggera sits at the pinnacle of the Aston Martin production range. Aggressive, yet beautiful. Super lightweight, yet powerfully strong. A commanding presence, yet lavishly finished. The DBS Superleggera coupe and Volante offer the ultimate super GT experience.', 'https://cdn.motor1.com/images/mgl/VpvK9/s1/2020-aston-martin-dbs-superleggera-volante-review.jpg', 'https://cdn.motor1.com/images/mgl/43xGA/s1/2020-aston-martin-dbs-superleggera-volante-review.jpg', 'https://cdn.motor1.com/images/mgl/mpqRB/s1/2020-aston-martin-dbs-superleggera-volante-review.jpg', 'https://cdn.motor1.com/images/mgl/2X0Vk/s1/2020-aston-martin-dbs-superleggera-volante-review.jpg', 'https://cdn.motor1.com/images/mgl/zWAw0/s1/2020-aston-martin-dbs-superleggera-volante-review.jpg', 4, 11),
(25, 'Aston Martin Valkyrie', 370000000, 0, '2021', 'Aston Martin and Red Bull Advanced Technologies teamed up to create a new hypercar. The production of the car named, Aston Martin Valkyrie, will likely to start in early 19 with only 150 units of being produced. The Valkyrie will come out as a no compromise, high performance machine. An incredibly special car with an equally remarkable name. One that immediately evokes connotations of power and honor, of being chosen by the Gods. Valkyrie is Aston Martin’s first ever hypercar and it leaves nothing in reserve.', 'https://cdn.motor1.com/images/mgl/bX9Nk/s1/aston-martin-valkyrie-testing-on-public-roads.jpg', 'https://cdn.motor1.com/images/mgl/lZAPN/s1/aston-martin-valkyrie-testing-on-public-roads.jpg', 'https://cdn.motor1.com/images/mgl/X8Le9/s1/aston-martin-valkyrie-testing-on-public-roads.jpg', 'https://cdn.motor1.com/images/mgl/pPokv/s1/aston-martin-valkyrie-testing-on-public-roads.jpg', 'https://cdn.motor1.com/images/mgl/7MyVJ/s1/aston-martin-valkyrie-testing-on-public-roads.jpg', 4, 11);

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

-- --------------------------------------------------------

--
-- Table structure for table `showroom_usermessage`
--

CREATE TABLE `showroom_usermessage` (
  `id` int(11) NOT NULL,
  `query` longtext NOT NULL,
  `date` datetime(6) NOT NULL,
  `customers_id` int(11) DEFAULT NULL
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
  ADD UNIQUE KEY `showroom_customer_messag_customer_id_usermessage__016685a0_uniq` (`customer_id`,`usermessage_id`),
  ADD KEY `showroom_customer_me_usermessage_id_57b6c132_fk_showroom_` (`usermessage_id`);

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
-- Indexes for table `showroom_usermessage`
--
ALTER TABLE `showroom_usermessage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `showroom_usermessage_customers_id_6dad69bd_fk_showroom_` (`customers_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `showroom_manufacturer`
--
ALTER TABLE `showroom_manufacturer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `showroom_manufacturer_product`
--
ALTER TABLE `showroom_manufacturer_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `showroom_products`
--
ALTER TABLE `showroom_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

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
-- AUTO_INCREMENT for table `showroom_usermessage`
--
ALTER TABLE `showroom_usermessage`
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
  ADD CONSTRAINT `showroom_customer_me_usermessage_id_57b6c132_fk_showroom_` FOREIGN KEY (`usermessage_id`) REFERENCES `showroom_usermessage` (`id`);

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

--
-- Constraints for table `showroom_usermessage`
--
ALTER TABLE `showroom_usermessage`
  ADD CONSTRAINT `showroom_usermessage_customers_id_6dad69bd_fk_showroom_` FOREIGN KEY (`customers_id`) REFERENCES `showroom_customer` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
