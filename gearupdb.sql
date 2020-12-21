-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2020 at 03:34 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

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
(1, 'pbkdf2_sha256$216000$za3vSuuD0sOh$2Q7Jn1OAE7pJnAGfQFOmY81LmoRE3xEwnwnUSrtKIU4=', '2020-12-21 13:16:04.229031', 1, 'admin', '', '', 'admin@g.bracu.ac.bd', 1, 1, '2020-12-03 08:15:19.779631'),
(3, 'pbkdf2_sha256$216000$ibPhuTeHGhPl$po2AcxwBlgjK7GXOKl4xZ0WTB1W0q8y0xfTzoBsF6BI=', '2020-12-21 14:08:03.353408', 0, 'sh@gmail.com', '', '', 'sh@gmail.com', 0, 1, '2020-12-21 12:43:33.051591');

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
(50, '2020-12-12 14:36:13.749471', '10', 'Hamin Ahmed', 1, '[{\"added\": {}}]', 7, 1),
(51, '2020-12-12 15:12:17.581027', '6', 'Toyota Racing Development(TRD)', 1, '[{\"added\": {}}]', 12, 1),
(52, '2020-12-12 15:15:20.317104', '26', 'TRD ENGINE OIL FILLER CAP FUEL INTAKE COVER TANK FOR TOYOTA', 1, '[{\"added\": {}}]', 13, 1),
(53, '2020-12-12 15:20:26.482998', '27', 'TRD TOW STRAP UNIVERSAL RACING CAR TOW STRAP / ROPES / HOOK / DRAG BARS', 1, '[{\"added\": {}}]', 13, 1),
(54, '2020-12-12 15:27:39.328690', '28', 'TRD UNIVERSAL CAR REAR GUARD BUMPER SCRATCH PROTECTOR COVER WITH TRD LOGO', 1, '[{\"added\": {}}]', 13, 1),
(55, '2020-12-12 15:28:20.356794', '26', 'TRD ENGINE OIL FILLER CAP FUEL INTAKE COVER TANK FOR TOYOTA', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 13, 1),
(56, '2020-12-12 15:28:54.044209', '27', 'TRD TOW STRAP UNIVERSAL RACING CAR TOW STRAP / ROPES / HOOK / DRAG BARS', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 13, 1),
(57, '2020-12-12 15:33:40.637326', '29', '3D METAL TRD GRID EMBLEM BADGE STICKER STYLING TRD METAL TOYOTA CAR RACING LOGO EMBLEM FOR CAR ACCESSORIES JDM HOOD BADGE', 1, '[{\"added\": {}}]', 13, 1),
(58, '2020-12-12 15:39:11.488821', '30', '4X TRD BLACK BUMPER PROTECTOR CORNER GUARD SCRATCH STICKER', 1, '[{\"added\": {}}]', 13, 1),
(59, '2020-12-12 15:47:50.936255', '7', 'REMAX', 1, '[{\"added\": {}}]', 12, 1),
(60, '2020-12-12 15:55:55.437940', '31', 'REMAX SMART CAR CHARGER CR-3XP', 1, '[{\"added\": {}}]', 13, 1),
(61, '2020-12-12 16:01:32.545431', '32', 'REMAX RCC304 ALIENS 3-USB CAR CHARGER 4.2A FAST CHARGING ANDROID IPHONE IOS', 1, '[{\"added\": {}}]', 13, 1),
(62, '2020-12-12 16:07:17.401864', '33', 'REMAX RT-C04 CAR SAFETY ASSISTANT REAR VIEW MIRROR BACK BLIND SPOT', 1, '[{\"added\": {}}]', 13, 1),
(63, '2020-12-12 16:14:33.394310', '34', 'REMAX RCC203 CAR SOCKET CHARGER 5V / 2.4A / 2 PORT USB BLACK', 1, '[{\"added\": {}}]', 13, 1),
(64, '2020-12-12 16:21:12.821648', '35', 'REMAX 2.1A 2PORTS USB FAST CAR CHARGER WITH AIR HUMIDIFIER FOR IPHONE 7/7PLUS SAMSUNG S8 XIAOMI6 MI5', 1, '[{\"added\": {}}]', 13, 1),
(65, '2020-12-12 16:27:19.903898', '8', 'Awei', 1, '[{\"added\": {}}]', 12, 1),
(66, '2020-12-12 16:41:18.561162', '36', 'AWEI C-400 CAR CHARGER WITH 4USB SLOT', 1, '[{\"added\": {}}]', 13, 1),
(67, '2020-12-12 16:50:45.188413', '37', 'AWEI A870BL BLUETOOTH CAR HEADSET USB CHARGER', 1, '[{\"added\": {}}]', 13, 1),
(68, '2020-12-12 16:58:10.305238', '36', 'AWEI C-400 CAR CHARGER WITH 4USB SLOT', 2, '[{\"changed\": {\"fields\": [\"Price\", \"Quantity\"]}}]', 13, 1),
(69, '2020-12-12 17:12:56.822982', '38', 'AWEI C-3S 3 SOCKET ADAPTER WITH 2 USB INTERFACED CAR CHARGER IOS ANDROID APPLE', 1, '[{\"added\": {}}]', 13, 1),
(70, '2020-12-12 17:16:23.152163', '39', 'AWEI S10 SMART PORTABLE AIR PURIFIER CAN BE USED FOR CAR CABIN, OFFICE & HOME', 1, '[{\"added\": {}}]', 13, 1),
(71, '2020-12-12 17:18:55.911352', '9', 'ROCK', 1, '[{\"added\": {}}]', 12, 1),
(72, '2020-12-12 17:19:08.208769', '8', 'AWEI', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 12, 1),
(73, '2020-12-12 17:21:31.309708', '40', 'ROCK UNIVERSAL NON ALCOHOL LUXURY ZEOLITE STONE NATURAL FRAGRANCE', 1, '[{\"added\": {}}]', 13, 1),
(74, '2020-12-12 17:21:52.175040', '40', 'ROCK UNIVERSAL NON ALCOHOL LUXURY ZEOLITE STONE NATURAL FRAGRANCE', 2, '[]', 13, 1),
(75, '2020-12-12 17:54:21.365337', '10', 'Ferrari', 1, '[{\"added\": {}}]', 12, 1),
(76, '2020-12-12 18:05:12.599613', '41', 'Ferrari Monza Sp1', 1, '[{\"added\": {}}]', 11, 1),
(77, '2020-12-12 18:19:26.315781', '42', 'Ferrari 488 Pista', 1, '[{\"added\": {}}]', 11, 1),
(78, '2020-12-12 18:20:12.067827', '42', 'Ferrari 488 Pista', 2, '[{\"changed\": {\"fields\": [\"Price\"]}}]', 11, 1),
(79, '2020-12-12 18:28:45.939671', '43', 'Ferrari F8 Spider', 1, '[{\"added\": {}}]', 11, 1),
(80, '2020-12-12 18:32:31.540157', '42', 'Ferrari 488 Pista', 2, '[{\"changed\": {\"fields\": [\"Price\"]}}]', 11, 1),
(81, '2020-12-12 18:38:04.017831', '44', 'Ferrari GTC4Lusso', 1, '[{\"added\": {}}]', 11, 1),
(82, '2020-12-12 18:43:29.960294', '45', '2020 Ferrari Portofino', 1, '[{\"added\": {}}]', 11, 1),
(83, '2020-12-12 18:49:33.999685', '11', 'Tesla', 1, '[{\"added\": {}}]', 12, 1),
(84, '2020-12-12 19:03:56.719408', '46', 'Tesla Model 3', 1, '[{\"added\": {}}]', 11, 1),
(85, '2020-12-12 19:13:34.926535', '47', 'Tesla Model S', 1, '[{\"added\": {}}]', 11, 1),
(86, '2020-12-12 19:22:05.038527', '48', 'Tesla Roadster', 1, '[{\"added\": {}}]', 11, 1),
(87, '2020-12-12 19:33:09.761911', '49', 'Tesla Model Y', 1, '[{\"added\": {}}]', 11, 1),
(88, '2020-12-12 19:40:39.027872', '50', 'Tesla Model X', 1, '[{\"added\": {}}]', 11, 1),
(89, '2020-12-14 16:52:27.309440', '12', 'BMW', 1, '[{\"added\": {}}]', 12, 1),
(90, '2020-12-14 17:01:46.452159', '51', 'BMW M3 Series', 1, '[{\"added\": {}}]', 11, 1),
(91, '2020-12-14 17:13:38.463074', '52', 'BMW 5 Series', 1, '[{\"added\": {}}]', 11, 1),
(92, '2020-12-14 17:14:46.621641', '52', 'BMW 5 Series', 2, '[{\"changed\": {\"fields\": [\"Image url1\"]}}]', 11, 1),
(93, '2020-12-14 17:16:13.906506', '52', 'BMW 5 Series', 2, '[{\"changed\": {\"fields\": [\"Image url5\"]}}]', 11, 1),
(94, '2020-12-14 17:16:27.945950', '52', 'BMW 5 Series', 2, '[{\"changed\": {\"fields\": [\"Year\"]}}]', 11, 1),
(95, '2020-12-14 17:29:33.186005', '53', 'BMW X6', 1, '[{\"added\": {}}]', 11, 1),
(96, '2020-12-14 17:34:11.987945', '54', 'BMW Z4', 1, '[{\"added\": {}}]', 11, 1),
(97, '2020-12-14 17:37:18.725917', '54', 'BMW Z4', 2, '[{\"changed\": {\"fields\": [\"Image url1\"]}}]', 11, 1),
(98, '2020-12-14 17:47:10.649395', '55', 'BMW i8', 1, '[{\"added\": {}}]', 11, 1),
(99, '2020-12-14 17:51:03.348436', '13', 'Mercedes-Benz', 1, '[{\"added\": {}}]', 12, 1),
(100, '2020-12-14 17:54:27.077715', '56', '2020 Mercedes-Benz CLA-Class', 1, '[{\"added\": {}}]', 11, 1),
(101, '2020-12-14 17:59:46.401236', '57', '2020 Mercedes-Benz S-Class', 1, '[{\"added\": {}}]', 11, 1),
(102, '2020-12-14 18:05:03.028150', '58', '2020 Mercedes-Benz AMG GT', 1, '[{\"added\": {}}]', 11, 1),
(103, '2020-12-14 18:07:32.403912', '58', '2020 Mercedes-Benz AMG GT', 2, '[{\"changed\": {\"fields\": [\"Image url1\"]}}]', 11, 1),
(104, '2020-12-14 18:23:54.800271', '59', '2020 Mercedes-Benz SL-Class', 1, '[{\"added\": {}}]', 11, 1),
(105, '2020-12-14 18:34:22.541096', '60', '2020 Mercedes-Benz E-Class red', 1, '[{\"added\": {}}]', 11, 1),
(106, '2020-12-14 18:34:22.683873', '61', '2020 Mercedes-Benz E-Class red', 1, '[{\"added\": {}}]', 11, 1),
(107, '2020-12-14 18:34:40.817495', '61', '2020 Mercedes-Benz E-Class red', 3, '', 11, 1),
(108, '2020-12-14 18:34:47.171955', '60', '2020 Mercedes-Benz E-Class', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 11, 1),
(109, '2020-12-14 18:47:46.265644', '11', 'Lamia Tasnova', 1, '[{\"added\": {}}]', 7, 1),
(110, '2020-12-14 18:48:09.015198', '11', 'Lamia Tasnova', 2, '[{\"changed\": {\"fields\": [\"Location\"]}}]', 7, 1),
(111, '2020-12-14 18:50:55.517385', '12', 'Saad Abdullah', 1, '[{\"added\": {}}]', 7, 1),
(112, '2020-12-14 18:53:12.111705', '13', 'Saminur Alam', 1, '[{\"added\": {}}]', 7, 1),
(113, '2020-12-14 18:57:42.723582', '14', 'Alam Khan', 1, '[{\"added\": {}}]', 7, 1),
(114, '2020-12-14 19:00:53.042316', '15', 'Samiha Islam', 1, '[{\"added\": {}}]', 7, 1),
(115, '2020-12-14 19:02:30.059891', '16', 'Labib Al Hasan', 1, '[{\"added\": {}}]', 7, 1),
(116, '2020-12-14 19:04:33.687322', '17', 'Shafi Ahmed', 1, '[{\"added\": {}}]', 7, 1),
(117, '2020-12-14 19:06:04.513241', '18', 'Sakib Anwar', 1, '[{\"added\": {}}]', 7, 1),
(118, '2020-12-14 19:07:33.265973', '19', 'Nayeem Rafsan', 1, '[{\"added\": {}}]', 7, 1),
(119, '2020-12-14 19:08:49.384464', '20', 'Aditya Roy', 1, '[{\"added\": {}}]', 7, 1),
(120, '2020-12-14 19:17:09.921193', '17', 'Shafi Ahmed', 2, '[{\"changed\": {\"fields\": [\"Phone\"]}}]', 7, 1),
(121, '2020-12-14 19:17:51.209981', '20', 'Aditya Roy', 2, '[{\"changed\": {\"fields\": [\"Phone\"]}}]', 7, 1),
(122, '2020-12-14 19:17:59.177780', '19', 'Nayeem Rafsan', 2, '[{\"changed\": {\"fields\": [\"Phone\"]}}]', 7, 1),
(123, '2020-12-14 19:18:10.799770', '17', 'Shafi Ahmed', 2, '[{\"changed\": {\"fields\": [\"Phone\"]}}]', 7, 1),
(124, '2020-12-14 19:18:34.266074', '15', 'Samiha Islam', 2, '[{\"changed\": {\"fields\": [\"Phone\"]}}]', 7, 1),
(125, '2020-12-14 19:18:47.403030', '13', 'Saminur Alam', 2, '[{\"changed\": {\"fields\": [\"Phone\"]}}]', 7, 1),
(126, '2020-12-14 19:19:00.523123', '11', 'Lamia Tasnova', 2, '[{\"changed\": {\"fields\": [\"Phone\"]}}]', 7, 1),
(127, '2020-12-14 19:21:15.424193', '11', 'Lamia Tasnova', 2, '[{\"changed\": {\"fields\": [\"Location\"]}}]', 7, 1),
(128, '2020-12-14 19:23:59.031853', '16', 'Labiba Al Hasan', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 7, 1),
(129, '2020-12-14 19:24:23.822976', '13', 'Samira Alam', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 7, 1),
(130, '2020-12-15 05:59:45.788320', '21', 'OK', 1, '[{\"added\": {}}]', 7, 1),
(131, '2020-12-15 06:01:51.046936', '20', 'Aditya Roy', 2, '[{\"changed\": {\"fields\": [\"Profile pic\"]}}]', 7, 1),
(132, '2020-12-15 06:07:06.106360', '5', 'Moosa Bin Shamsher', 2, '[{\"changed\": {\"fields\": [\"Profile pic\"]}}]', 7, 1),
(133, '2020-12-15 06:56:10.924407', '62', 'TestCar', 1, '[{\"added\": {}}]', 11, 1),
(134, '2020-12-15 08:44:41.806280', '40', 'ROCK UNIVERSAL NON ALCOHOL LUXURY ZEOLITE STONE NATURAL FRAGRANCE', 2, '[{\"changed\": {\"fields\": [\"Price\"]}}]', 13, 1),
(135, '2020-12-15 08:44:46.944265', '40', 'ROCK UNIVERSAL NON ALCOHOL LUXURY ZEOLITE STONE NATURAL FRAGRANCE', 2, '[{\"changed\": {\"fields\": [\"Price\"]}}]', 13, 1),
(136, '2020-12-15 17:56:36.588608', '1', 'UserMessage object (1)', 1, '[{\"added\": {}}]', 9, 1),
(137, '2020-12-15 18:01:17.835924', '2', 'UserMessage object (2)', 1, '[{\"added\": {}}]', 9, 1),
(138, '2020-12-20 12:58:08.159099', '20', 'Aditya Roy', 2, '[{\"changed\": {\"fields\": [\"IsLoggedIn\"]}}]', 7, 1),
(139, '2020-12-20 13:14:23.590480', '20', 'Aditya Roy', 2, '[{\"changed\": {\"fields\": [\"IsLoggedIn\"]}}]', 7, 1),
(140, '2020-12-20 13:20:37.237791', '20', 'Aditya Roy', 2, '[{\"changed\": {\"fields\": [\"IsLoggedIn\"]}}]', 7, 1),
(141, '2020-12-20 13:22:10.867010', '20', 'Aditya Roy', 2, '[{\"changed\": {\"fields\": [\"IsLoggedIn\"]}}]', 7, 1),
(142, '2020-12-20 13:23:41.218522', '20', 'Aditya Roy', 2, '[{\"changed\": {\"fields\": [\"IsLoggedIn\"]}}]', 7, 1),
(143, '2020-12-20 13:28:15.778829', '20', 'Aditya Roy', 2, '[{\"changed\": {\"fields\": [\"IsLoggedIn\"]}}]', 7, 1),
(144, '2020-12-21 12:40:29.128241', '20', 'Aditya Roy', 2, '[{\"changed\": {\"fields\": [\"IsLoggedIn\"]}}]', 7, 1),
(145, '2020-12-21 13:08:08.978402', '3', 'UserMessage object (3)', 1, '[{\"added\": {}}]', 9, 1),
(146, '2020-12-21 13:19:30.096759', '3', 'UserMessage object (3)', 3, '', 9, 1),
(147, '2020-12-21 13:40:29.449656', '4', 'UserMessage object (4)', 3, '', 9, 1),
(148, '2020-12-21 13:40:29.471866', '5', 'UserMessage object (5)', 3, '', 9, 1),
(149, '2020-12-21 13:40:29.489817', '6', 'UserMessage object (6)', 3, '', 9, 1),
(150, '2020-12-21 13:40:29.510760', '7', 'UserMessage object (7)', 3, '', 9, 1),
(151, '2020-12-21 13:40:57.778466', '8', 'UserMessage object (8)', 3, '', 9, 1),
(152, '2020-12-21 13:41:47.731743', '9', 'UserMessage object (9)', 3, '', 9, 1),
(153, '2020-12-21 13:41:47.734778', '10', 'UserMessage object (10)', 3, '', 9, 1),
(154, '2020-12-21 13:45:34.487626', '11', 'UserMessage object (11)', 3, '', 9, 1),
(155, '2020-12-21 13:46:02.780416', '12', 'UserMessage object (12)', 2, '[{\"changed\": {\"fields\": [\"Reply\"]}}]', 9, 1),
(156, '2020-12-21 13:58:57.364818', '12', 'UserMessage object (12)', 3, '', 9, 1),
(157, '2020-12-21 13:58:57.367810', '14', 'UserMessage object (14)', 3, '', 9, 1),
(158, '2020-12-21 14:00:34.347063', '13', 'UserMessage object (13)', 2, '[{\"changed\": {\"fields\": [\"Reply\"]}}]', 9, 1),
(159, '2020-12-21 14:01:19.343685', '15', 'UserMessage object (15)', 2, '[{\"changed\": {\"fields\": [\"Reply\"]}}]', 9, 1),
(160, '2020-12-21 14:06:57.889601', '13', 'UserMessage object (13)', 3, '', 9, 1),
(161, '2020-12-21 14:06:57.891595', '15', 'UserMessage object (15)', 3, '', 9, 1),
(162, '2020-12-21 14:07:04.232397', '1', 'UserMessage object (1)', 3, '', 9, 1),
(163, '2020-12-21 14:07:04.234392', '2', 'UserMessage object (2)', 3, '', 9, 1),
(164, '2020-12-21 14:09:37.831051', '16', 'UserMessage object (16)', 1, '[{\"added\": {}}]', 9, 1),
(165, '2020-12-21 14:11:33.218263', '16', 'UserMessage object (16)', 3, '', 9, 1),
(166, '2020-12-21 14:26:30.811482', '17', 'UserMessage object (17)', 1, '[{\"added\": {}}]', 9, 1),
(167, '2020-12-21 14:26:53.997941', '18', 'UserMessage object (18)', 1, '[{\"added\": {}}]', 9, 1),
(168, '2020-12-21 14:28:45.455737', '17', 'UserMessage object (17)', 3, '', 9, 1),
(169, '2020-12-21 14:28:45.473692', '18', 'UserMessage object (18)', 3, '', 9, 1),
(170, '2020-12-21 14:32:19.065201', '19', 'UserMessage object (19)', 2, '[{\"changed\": {\"fields\": [\"Reply\"]}}]', 9, 1);

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
(19, 'showroom', '0001_initial', '2020-12-08 16:18:33.912130'),
(20, 'showroom', '0002_auto_20201215_1158', '2020-12-15 05:58:24.536571'),
(21, 'showroom', '0002_auto_20201215_1338', '2020-12-15 07:39:03.541272'),
(22, 'showroom', '0002_auto_20201215_2352', '2020-12-15 17:52:40.308689'),
(23, 'showroom', '0002_auto_20201220_1838', '2020-12-21 12:39:11.169573');

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
('3ds2t04oggz79ipiazwz0h075h2ddz65', '.eJxVjEEOgjAQRe_StWlopwXq0r1naGY6M4IaSCisjHdXEha6_e-9_zIZt3XIW5Ulj2zOxpnT70ZYHjLtgO843WZb5mldRrK7Yg9a7XVmeV4O9-9gwDp86wjFKzaACqJC4Nl77Thx7LTvSbUlCdAmiKF1jAGJi0sxSdMHQArm_QEHjjiX:1kp2q0:LHF0koa7DmRPBRHw8yJWtV1bmjyh_Kw7Ps1nV1ew5HE', '2020-12-29 05:25:28.892670'),
('6beoo0givrcg3dqtmmg67xe0cyov1q3w', '.eJxVjEEOgjAQRe_StWlopwXq0r1naGY6M4IaSCisjHdXEha6_e-9_zIZt3XIW5Ulj2zOxpnT70ZYHjLtgO843WZb5mldRrK7Yg9a7XVmeV4O9-9gwDp86wjFKzaACqJC4Nl77Thx7LTvSbUlCdAmiKF1jAGJi0sxSdMHQArm_QEHjjiX:1kmgMA:99ZoUVHHYpIGZlQv3YDvraJYd0O4LaQC-EExY2ctHEQ', '2020-12-22 17:00:54.340339'),
('9fjxccac4nerefyambpaqf1rwopi8mg4', '.eJxVjEEOgjAQRe_StWlopwXq0r1naGY6M4IaSCisjHdXEha6_e-9_zIZt3XIW5Ulj2zOxpnT70ZYHjLtgO843WZb5mldRrK7Yg9a7XVmeV4O9-9gwDp86wjFKzaACqJC4Nl77Thx7LTvSbUlCdAmiKF1jAGJi0sxSdMHQArm_QEHjjiX:1ko6YN:kzjmB4GIlYhVyCM5vHLDe7LWPA1xPbRMaL4XuL1H7JI', '2020-12-26 15:11:23.014374'),
('ekkl8mr4928ky2y2xc8d94zrn3u9jiha', '.eJxVjEEOwiAQRe_C2pB2oBRcuvcMZIZhpGpoUtqV8e7apAvd_vfef6mI21ri1vISJ1ZnZdTpdyNMj1x3wHest1mnua7LRHpX9EGbvs6cn5fD_Tso2Mq3HgwmEQxgAR1bNq6j3oAYn5JFIWdlzAjgBgJPggmZQ4Yu0Ajiba_eHwK9OLU:1krLr1:aSsWi66w7MJj4cweK53EVwQW4bIfASTjVng1mdDV-os', '2021-01-04 14:08:03.376345'),
('gjy5wkk7kzk3aqbjov1qnnlneoz0uw73', '.eJxVjEEOgjAQRe_StWlopwXq0r1naGY6M4IaSCisjHdXEha6_e-9_zIZt3XIW5Ulj2zOxpnT70ZYHjLtgO843WZb5mldRrK7Yg9a7XVmeV4O9-9gwDp86wjFKzaACqJC4Nl77Thx7LTvSbUlCdAmiKF1jAGJi0sxSdMHQArm_QEHjjiX:1krL2i:3z43tDOmAi_oqFSoKP8qT3iMyJOTY4z7qi9-TRS2X8w', '2021-01-04 13:16:04.233020'),
('saraj3fqvh74por51nz63upz92v77jay', '.eJxVjEEOwiAQRe_C2pB2oBRcuvcMZIZhpGpoUtqV8e7apAvd_vfef6mI21ri1vISJ1ZnZdTpdyNMj1x3wHest1mnua7LRHpX9EGbvs6cn5fD_Tso2Mq3HgwmEQxgAR1bNq6j3oAYn5JFIWdlzAjgBgJPggmZQ4Yu0Ajiba_eHwK9OLU:1krL93:lw9IDpt7_E6zbUZSvTBLfT3iKI9TpY6SPtZdxA1TzTM', '2021-01-04 13:22:37.200738'),
('v2m4g8d1o93euy2xk3oh1mi1c6ywa3xj', '.eJxVjEEOgjAQRe_StWlopwXq0r1naGY6M4IaSCisjHdXEha6_e-9_zIZt3XIW5Ulj2zOxpnT70ZYHjLtgO843WZb5mldRrK7Yg9a7XVmeV4O9-9gwDp86wjFKzaACqJC4Nl77Thx7LTvSbUlCdAmiKF1jAGJi0sxSdMHQArm_QEHjjiX:1krKZB:FDc5NqGdKonZkP1ZQJKQg9onwGneG7NHOla9Fwzncyw', '2021-01-04 12:45:33.880080'),
('vb26r8wpszt31pol70dqomajpbm36rqr', '.eJxVjEEOgjAQRe_StWlopwXq0r1naGY6M4IaSCisjHdXEha6_e-9_zIZt3XIW5Ulj2zOxpnT70ZYHjLtgO843WZb5mldRrK7Yg9a7XVmeV4O9-9gwDp86wjFKzaACqJC4Nl77Thx7LTvSbUlCdAmiKF1jAGJi0sxSdMHQArm_QEHjjiX:1kmfi2:Qf6w1hfkWbOZd1aw_aqzwe51b7aBjscjI-7u9pvsf8E', '2020-12-22 16:19:26.470723'),
('z1yju1ztx2qac1ly6p9ni3akprfu0w2y', '.eJxVjEEOgjAQRe_StWlopwXq0r1naGY6M4IaSCisjHdXEha6_e-9_zIZt3XIW5Ulj2zOxpnT70ZYHjLtgO843WZb5mldRrK7Yg9a7XVmeV4O9-9gwDp86wjFKzaACqJC4Nl77Thx7LTvSbUlCdAmiKF1jAGJi0sxSdMHQArm_QEHjjiX:1kqy6Y:qPE9N5D4AY3kj9dw9Ito1as78Xqza4_aV8UdHBNJmTQ', '2021-01-03 12:46:30.306211');

-- --------------------------------------------------------

--
-- Table structure for table `showroom_accesories`
--

CREATE TABLE `showroom_accesories` (
  `products_ptr_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `showroom_accesories`
--

INSERT INTO `showroom_accesories` (`products_ptr_id`) VALUES
(26),
(27),
(28),
(29),
(30),
(31),
(32),
(33),
(34),
(35),
(36),
(37),
(38),
(39),
(40);

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
(25, 3.5),
(41, 17.5),
(42, 20),
(43, 19),
(44, 15),
(45, 18),
(46, 236),
(47, 113),
(48, 620),
(49, 303),
(50, 371),
(51, 30),
(52, 28),
(53, 6.4),
(54, 26),
(55, 69),
(56, 35),
(57, 22),
(58, 20),
(59, 28),
(60, 23),
(62, 0);

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
  `user_id` int(11) DEFAULT NULL,
  `is_logged_in` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `showroom_customer`
--

INSERT INTO `showroom_customer` (`id`, `name`, `email`, `password`, `phone`, `credit_info`, `location`, `profile_pic`, `user_id`, `is_logged_in`) VALUES
(1, 'Shakib Al Hasan', 'sah75@gmail.com', 'Gearup123', '0123456789', '333444555666', 'Bangladesh', 'static/img/user_dp/Shakib.jpg', NULL, 0),
(2, 'Salman F Rahman', 'salmanfrahman@beximcoltd.com', 'Gearup123', '0132456788', '333444555666', 'Bangladesh', 'static/img/user_dp/profile.png', NULL, 0),
(3, 'Mashrafe Mortaza', 'mash02@gmail.com', 'Gearup123', '0143256780', '333444555666', 'Bangladesh', 'static/img/user_dp/mash.jpg', NULL, 0),
(4, 'William Rechard', 'willrich@gmail.com', 'Gearup123', '1243224442', '333444555666', 'United States', 'static/img/user_dp/profile_5kJEawG.png', NULL, 0),
(5, 'Moosa Bin Shamsher', 'm00sa@gmail.com', 'Gearup123', '0132457698', '333444555666', 'Bangladesh', 'static/img/user_dp/profile_5zMmt1Q.png', NULL, 0),
(6, 'James Martin', 'jimmymartin@yahoo.com', 'Gearup123', '64008811668', '333444555666', 'Australia', 'static/img/user_dp/profile_ZtH8qN9.png', NULL, 0),
(7, 'Kazi Salahuddin', 'salauddin@bff.co.bd', 'Gearup123', '01845238966', '333444555666', 'Bangladesh', 'static/img/user_dp/profile_CBXwTXV.png', NULL, 0),
(8, 'Ahmed Sharif', 'ahmedsharif@gmail.com', 'Gearup123', '01684673289', '333444555666', 'Bangladesh', 'static/img/user_dp/profile_MWeNvIs.png', NULL, 0),
(9, 'Nitin Ghosh', 'nitinghosh32@gmail.com', 'Gearup123', '01745362819', '333444555666', 'Bangladesh', 'static/img/user_dp/profile_5GrAz9h.png', NULL, 0),
(10, 'Hamin Ahmed', 'hamin42@gmail.com', 'Gearup123', '01386763515', '333444555666', 'Bangladesh', 'static/img/user_dp/profile_NIKYlRe.png', NULL, 0),
(11, 'Lamia Tasnova', 'lamiatasnova@hululu.com', '122333444455555', '01725789612', '340900823210', 'Bangladesh', 'static/img/user_dp/RzTAC2Q.jpg', NULL, 0),
(12, 'Saad Abdullah', 'sadislife@gmail.com', '12233344445555566666', '01625789613', '340900823211', 'Bangladesh', 'static/img/user_dp/sad-title-image_tcm7-179953.jpg', NULL, 0),
(13, 'Samira Alam', 'saminuralam@gmail.com', '122333444455555000000', '01925789614', '340900823212', 'Bangladesh', 'static/img/user_dp/pexels-suliman-sallehi-1704488.jpg', NULL, 0),
(14, 'Alam Khan', 'alamkhan4321@yahoo.com', '12233344445555566', '0162578967', '340900823214', 'Bangladesh', 'static/img/user_dp/pexels-tuấn-kiệt-jr-1374510.jpg', NULL, 0),
(15, 'Samiha Islam', 'samihaislam1222@gmail.com', '112255663377889', '01755789679', '340900823215', 'Bangladesh', 'static/img/user_dp/pexels-giftpunditscom-1310522.jpg', NULL, 0),
(16, 'Labiba Al Hasan', 'labibbaah@gmail.com', '5555555555555555666666', '01625789680', '340900823216', 'Bangladesh', 'static/img/user_dp/pexels-louis-1895578.jpg', NULL, 0),
(17, 'Shafi Ahmed', 'shafi.ahmed1325@gmail.com', '12233344445555512', '01325789697', '340900823217', 'Bangladesh', 'static/img/user_dp/3GmPd7O.png', NULL, 0),
(18, 'Sakib Anwar', 'sakib.anwar.5685@gmail.com', '454545496896563126416', '01625789681', '340900823218', 'Bangladesh', 'static/img/user_dp/g5UCAeA.jpeg', NULL, 0),
(19, 'Nayeem Rafsan', 'nayeem.rafsan44499@gmail.com', '122333444455555121aaaa', '01725789682', '340900823230', 'Bangladesh', 'static/img/user_dp/58D9Ojv.jpeg', NULL, 0),
(20, 'Aditya Roy', 'adi.roy.8989@gmail.com', '5656665656596aaasaksoaksok', '01525789690', '340900823290', 'Bangladesh', 'static/img/user_dp/gusFring2_EuM6yxz.jpg', NULL, 0),
(21, 'OK', 'OK@gmail.com', 'OKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKK', '121212121212', '123456789133', 'Dhanmondi, Dhaka', 'static/img/user_dp/gusFring2.jpg', NULL, 0),
(22, 'SH', 'sh@gmail.com', '1234', '12345678', NULL, NULL, '', NULL, 0);

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
(5, 'Lamborghini', 'Italy'),
(6, 'Toyota Racing Development(TRD)', 'Japan'),
(7, 'REMAX', 'China'),
(8, 'AWEI', 'China'),
(9, 'ROCK', 'China'),
(10, 'Ferrari', 'Italy'),
(11, 'Tesla', 'USA'),
(12, 'BMW', 'Germany'),
(13, 'Mercedes-Benz', 'Germany');

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
(25, 'Aston Martin Valkyrie', 370000000, 0, '2021', 'Aston Martin and Red Bull Advanced Technologies teamed up to create a new hypercar. The production of the car named, Aston Martin Valkyrie, will likely to start in early 19 with only 150 units of being produced. The Valkyrie will come out as a no compromise, high performance machine. An incredibly special car with an equally remarkable name. One that immediately evokes connotations of power and honor, of being chosen by the Gods. Valkyrie is Aston Martin’s first ever hypercar and it leaves nothing in reserve.', 'https://cdn.motor1.com/images/mgl/bX9Nk/s1/aston-martin-valkyrie-testing-on-public-roads.jpg', 'https://cdn.motor1.com/images/mgl/lZAPN/s1/aston-martin-valkyrie-testing-on-public-roads.jpg', 'https://cdn.motor1.com/images/mgl/X8Le9/s1/aston-martin-valkyrie-testing-on-public-roads.jpg', 'https://cdn.motor1.com/images/mgl/pPokv/s1/aston-martin-valkyrie-testing-on-public-roads.jpg', 'https://cdn.motor1.com/images/mgl/7MyVJ/s1/aston-martin-valkyrie-testing-on-public-roads.jpg', 4, 11),
(26, 'TRD ENGINE OIL FILLER CAP FUEL INTAKE COVER TANK FOR TOYOTA', 590, 10, '2020', '• Universal to Most Toyota models and please check the specific models in the description part.\r\n• This aluminum-cut TRD oil filler cap with its beautiful metallic shine and centered TRD logo elegantly cuts a dashing figure in any engine compartment.\r\n• High-luster coating helps ensure long term appearance\r\n• Diamond shaped cap for easy turning and Threaded screw-in mounting\r\n• Cap-Width:2.17\',Height:1.38\',Threaded-Hole:1.26\'', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/r/s/rs-mtx-billet-aluminium-trd-logo-korek-wlewu-oleju-silnikowego-wype-ni-zbiornik-paliwa-pokrywa-pasuje.jpg_640x640.jpg', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/r/s/rs-mtx-billet-aluminium-trd-logo-korek-wlewu-oleju-silnikowego-wype-ni-zbiornik-paliwa-pokrywa-pasuje.jpg', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/c/z/czarny-trd-moc-aluminium-paliwa-korek-zbiornika-oleju-cap-pokrywa-dla-toyota-lexus-scion.jpg', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/c/z/czarny-trd-moc-aluminium-paliwa-korek-zbiornika-oleju-cap-pokrywa-dla-toyota-lexus-scion.jpg_640x640.jpg', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/h/t/htb1a3cxofxxxxaaxpxxq6xxfxxxl.jpg', 6, 13),
(27, 'TRD TOW STRAP UNIVERSAL RACING CAR TOW STRAP / ROPES / HOOK / DRAG BARS', 690, 5, '2020', 'New Arrive TRD Tow Strap Universal Racing Car Tow Strap / Ropes / Hook / Drag Bars\r\nBrand name: TRD\r\nMake car: Universal\r\nModel Name: tow Strap\r\nProduct Size: 28 cm * 5 cm\r\nProduct Weight: 0.15 kg\r\nType: Durable nylon and metal\r\nProduct Type: drag ropes\r\ncharacteristics:\r\n100% brand new and high quality\r\ndurable material for Powerful traction\r\nCNC machined and coated strap clip\r\n15mm mounting hole, easy installation\r\nmounted on the front / rear of vehicles', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/t/o/tow-font-b-strap-b-font-universal-high-quality-font-b-racing-b-font-font-b.jpg', 'https://images-na.ssl-images-amazon.com/images/I/51G0jVwFuCL._AC_SL1100_.jpg', 'https://www.dhresource.com/f2/albu/g9/M01/9C/07/rBVaWF6UPVqABwlWAAO8sqeVTZE505.jpg', 'https://my-test-11.slatic.net/p/4212fde482d8ab765aad4754f37593b4.jpg_720x720q80.jpg_.webp', 'https://my-test-11.slatic.net/p/57a6f62370e5503039e6dfb7cad26200.jpg_720x720q80.jpg_.webp', 6, 13),
(28, 'TRD UNIVERSAL CAR REAR GUARD BUMPER SCRATCH PROTECTOR COVER WITH TRD LOGO', 590, 20, '2020', 'Product Name:\r\nUniversal Black Car Rear Guard Bumper Scratch Protector Cover w/ Red Sport Logo\r\nCondition: 100% new and high quality\r\nSize: 90cm*7.3cm*0.5cm\r\nColor: Black+Red\r\nMaterial: High Quality Rubber\r\nFeature:\r\nExquisite workmanship, classic black, with a rear box, the car looks more beautiful.\r\nGroove design, beautiful and easy, good skid resistance.\r\nCan effectively protect the edge of the tail box, to prevent friction scratch.\r\nOften move things to the car after the car, do not be careful to scratch the car,leaving a scar. This time, we need to put on the protection of the trunk. To prevent damage to the trunk, which left scars. Can also prevent the fall of goods.\r\nCompatible With:(Check the size before buying)\r\nFits for ALMOST car models\r\n\r\nPackage included:\r\n1 x Rear Rubber Bumper\r\n1 x 3M Tape', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/i/m/img_20190213_165559.jpg', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/s/-/s-l500_1_21.jpg', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/i/m/img_20190213_165559-1.jpg', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/s/-/s-l50b0.jpg', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/s/-/s-l500_1_21.jpg', 6, 13),
(29, '3D METAL TRD GRID EMBLEM BADGE STICKER STYLING TRD METAL TOYOTA CAR RACING LOGO EMBLEM FOR CAR ACCESSORIES JDM HOOD BADGE', 450, 5, '2020', 'JDM racing style, solid chrome plated metal construction\r\nIonic 3D emblem car tuning, give your car a luxurious exterior look\r\nsize: about 145mm * 22mm / 5.7 inch * 0.87 inch\r\nThe opposite side is complex with two screw couplings\r\neasy installation, just screw it front grill\r\ninstructions: not included\r\nPackage Included:\r\n1x TRD Front Grid emblem for 3D Toyota', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/h/t/htb1ljarlfnntkjjsspfq6zxifxar.jpg', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/h/t/htb1zdzhagy85ujjszfjq6z2vvxax.jpg', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/h/t/htb1crbanvxxxxxjxxxxq6xxfxxx0.jpg', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/h/t/htb1nzreaqt85ujjszfhq6apevxa7.jpg', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/h/t/htb1dsgvpystmejjsszgq6ycpfxaw.jpg', 6, 13),
(30, '4X TRD BLACK BUMPER PROTECTOR CORNER GUARD SCRATCH STICKER', 750, 15, '2020', '• Car Body Protective Accessories\r\n• Car Accessories Protective Stickers In Car Exterio\r\n• Exterior Accessories\r\n1. Soft texture, full flexibility, fit the car body.\r\n2. Environmental PVC material, high quality, anti-cold, high temperature will not be dissolved, low temperature will not crack.\r\n3. Super double-sided adhesive, easy to install, do not hurt the car body.\r\n4. On the impact play a very good buffer effect.\r\n\r\n\r\nProduct Weight: 390g\r\nMaterial: PVC\r\nProduct Size: 43*3cm', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/c/m/cms7066d.jpg', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/c/m/cms7066b_2_3.jpg', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/c/m/cms7066b_4_1.jpg', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/c/m/cms7066b_2_3.jpg', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/c/m/cms7066b_2_3.jpg', 6, 13),
(31, 'REMAX SMART CAR CHARGER CR-3XP', 1090, 12, '2020', 'A Car Charger From the Future-Alien Cool shape All-in-one molding Strong contours Fasion and High-end Operable in high-temperature carriage V0 grade fireproofing PC; High-temperature resistant and fire-retardant material; Charging without heating; Eco-friendly protection, safe and non-toxic PRODUCT FEATURES Assure Safety Thicken Power Lines Thicken Copper Wires Fully Compatible Smart Current Distribution Resonponsive intellegent ICwith stable current and voltage output 3.4A High quality, stable output current 80W suitable for different types of devices, The best and most reliable car charger. High safety performance Real time voltage display Independent switch 3.4 A current', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/h/t/htb1.spmqvxxxxarxxxxq6xxfxxxh.jpg', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/r/e/remax-cup-car-charger-cigarette-lighter-voltage-display-cigarette-lighter-plug-socket-splitter-3-usb-for.jpg', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/h/t/htb1dyctdlmtuejjszfkq6ygopxad.jpg', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/h/t/htb1uj2kbgcyw1jjszfcq6axlvxax.jpg', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/h/t/htb1m7ikdzihskjjy0ffq6zgzfxam.jpg', 7, 13),
(32, 'REMAX RCC304 ALIENS 3-USB CAR CHARGER 4.2A FAST CHARGING ANDROID IPHONE IOS', 550, 23, '2020', '- 3 USB ports, can charge three devices at the same time, no more wait!\r\n- Built-in intelligent chip, output different current according to different equipment.\r\n- Using ABS+PC fire prevention material, it will not burn even under high temperature.\r\n- Both cars and trucks can be used.\r\n\r\nSpecification\r\nModel: RCC304\r\nType: Aliens 3 USB ports car charger\r\nInput: DC12-24V\r\nOutput: DC 5V 4.2A max\r\nMaterial: ABS+PC fire prevention material\r\nCompatibility: almost all smart devices.\r\nColours: Black, White\r\n\r\nPackage Contents\r\n1 x REMAX RCC304 4.2A Intelligence Aliens 3 USB Car Charger', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/a/l/alien_2.jpg', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/c/a/cad34a7e22fd918cf6dc9f2fc75b25e8.jpg', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/r/e/remax_aliens1.jpg', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/r/e/remax_rcc304_aliens_3usb_car_charger_16.jpg', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/r/e/remax_rcc304_aliens_3usb_car_charger_8.jpg', 7, 13),
(33, 'REMAX RT-C04 CAR SAFETY ASSISTANT REAR VIEW MIRROR BACK BLIND SPOT', 490, 9, '2020', '1.This rear view mirror could alarm the passengers at the backseat to watch out the car that is coming.\r\n2.The rear view mirror widen the your view to prevent the blind spot, so that the traffic accident would not happened.\r\n3.The rear view mirror could see the condition of the back view.\r\n4.You could rotate the mount at your need. But please do not rotate it in a hard way, which would damage the unit.\r\n5.Install it on the rear view mirror ,you could see the condition of the passengers and kids at the back seat.', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/2/_/2_11.jpg', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/4/_/4_13.jpg', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/_/1_14.jpg', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/8/1/81080186a-5.jpg', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/3/_/3_13.jpg', 7, 13),
(34, 'REMAX RCC203 CAR SOCKET CHARGER 5V / 2.4A / 2 PORT USB BLACK', 390, 17, '2020', 'Brand : Remax\r\nModel: RCC203\r\n2 USB Fast car Charger 2.4A/5V\r\nColor: Black', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/4/4/44208382_691555881217446_4848551622260817920_n-1.png', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/r/c/rcc203remax-800x800.jpg', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/r/c/rcc203-ichip-2.jpg', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/r/c/rcc203-ichip-photo.jpg', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/r/c/rcc203remaxblister-800x800.jpg', 7, 13),
(35, 'REMAX 2.1A 2PORTS USB FAST CAR CHARGER WITH AIR HUMIDIFIER FOR IPHONE 7/7PLUS SAMSUNG S8 XIAOMI6 MI5', 1450, 7, '2020', 'Feature: Mini fashion, purify deodorization, fast charging, efficient match 1. ultrasonic atomization humidification: the use of ultrasonic atomization technology, through the high-frequency shock of the atomized film, make the liquid water molecules break up, to 113KHz frequency of water into 6UM ultra-small water droplets, resulting in natural and elegant water mist, Fusion of essential oils of natural aroma, volatile uniform, to enhance the air humidity inside the car, so that the skin more comfortable 2. Charging humidification at the same time: dual USB interface design, humidified air at the same time for your electronic equipment charging, and USB port automatically Distribute the current, while output up to 5V / 2.1A, you can sync charge two mobile devices. 3. Touch screen switch: finger touch switch, light blue light, into the humidification mode; touch again, the indicator light red and blue lights together, the product into the aroma mode (use aroma mode need to add 2-3 drops of fragrance water in water) 4. Purify the air: the humidifier will release a large number of negative ions in the process, with the air floating smoke, dust and other electrostatic reaction, to precipitate, quickly remove the car odor, such as second-hand smoke, dust mites and harmful gases, Solve dizziness, motion sickness and other issues, healthy humidification, the release of fresh air. 5. Electronic components and atomization of the separation of humanized design, 2 hours automatic power-off protection 6. The direction of the output fog can be adjusted, the humidifier and cigarette lighter connected parts, used to bend the human design, you can adjust the direction of the fog, the use of more convenient 7. Aromatherapy: refreshing, choose your favorite aroma taste add 2-3 drops into the humidifier, driving on the road, reducing driving fatigue Instructions for use: Counterclockwise rotation to open the water tank, the water added to the tank, you can add 2-3 drops of aroma to the water, clockwise rotation of the water tank, the plug into the car charger, touch the touch screen switch, open the humidification mode, insert the USB interface to the phone charge The (If only open the humidification mode, even if the oil, not the real effect of aroma; if the fragrance to the water, and with the use, want to return to humidification mode, remove the aroma of taste, Need to re-add water) Specification: Brand Name: REMAX Model: RT-C01 Size: 68*70*210(mm) PW: 1.5-3.5W USB charger: DC5V2.1A Input/output: DC12V Water box: 50ML Spray volume: 20-30ML/Hour Package Included : 1* REMAX USB Charger', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/5/a/5a527676-ff8a-45a0-9f10-df18e1ac1ffd.jpg', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/r/e/remax_rt-c01_car_humidifier_atomization_air_purifier_with_car_charger_zp3034300404027_2__1_1.jpg', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/6/3/636441179092326547-remax-car-humidifier-rt-c01.jpg', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/9/f/9f4abc7b-4a40-4358-a1fd-b77c58cdc443.jpg', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/e/m/emperatur-20171231-043922.jpg', 7, 13),
(36, 'AWEI C-400 CAR CHARGER WITH 4USB SLOT', 790, 32, '2020', 'AWEI C-400 - 4-Port HIGH SPEED USB CAR CHARGER Now don\'t have to wait for your turn to charge your mobile phone in car. Awei C-400 car charger provides you 4 usb port to charge 4 smartphones at a time. With this unique design and solid zinc alloy features provide very fast charging. Exclusive product from awei. Features of AWEI C-400 • It is a smart 4 USB ports car charger. It can quickly and easily identify your mobile devices. • Ideal for both DC 12V and 24V cars and trucks, over-current protection. • Compact design, make it easy to carry and use on travel. Specifications of AWEI C-400 GENERAL Brand Awei Model C-400 Color White In Sales Package USB Car Charger TECHNICAL DETAILS USB interfaces 4 Input current DC 12 - 24V Output voltage DC 5V 9.4A Output Current Smart Match', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/h/t/htb12qkajfxxxxcixpxxq6xxfxxxv.jpg', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/3/_/3_4.jpg', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/a/w/awei_c-400_wp1020420403009_2_.jpg', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/a/w/awei_c400_usb_car_charger_white_2-500x500-product_popup.jpg', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/a/w/awei_c400-1-500x500-product_popup.jpg', 8, 13);
INSERT INTO `showroom_products` (`id`, `name`, `price`, `quantity`, `year`, `description`, `image_url1`, `image_url2`, `image_url3`, `image_url4`, `image_url5`, `manufacturers_id`, `polymorphic_ctype_id`) VALUES
(37, 'AWEI A870BL BLUETOOTH CAR HEADSET USB CHARGER', 1790, 5, '2020', 'Main Features: AWEI A870BL Bluetooth headset car charger 2-in-1 - Real-time battery indicator, when the battery is low, the red LED will flash every 5 seconds and give out Low Battery voice prompt alarm every 5 minutes (just for iOS) - Hands-free call (answer / reject / hang up calls and redial last call) - Wireless playing music - Can connect with 2 smartphones - Call divert Specification: Bluetooth version: V4.0 Bluetooth distance: 10m Input: DC 12 - 28V USB output: DC 5V 2.1A Battery: Built-in 3.7V 25mAh li-ion battery Charging time: About 1.5 hours Talking time: 1.5 hours Standby time: About 60 hours Profile support: HSP / HFP / A2DP / AVRCP Transmission range: 2.40 - 2.48GHz Sensitivity: -92dBm Working temperature: -10 - 50 centigrade degree', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/a/w/awei-a870bl-hands-free-wireless-font-b-headphone-b-font-mini-font-b-bluetooth-b-font.jpg', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/4/1489631080_0943.jpg', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/a/w/awei_a870bl-1-500x500-product_popup.jpg', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/2/0/20160607114221_67538.jpg', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/h/t/htb1nlchsxxxxxbjxfxxq6xxfxxxm.jpg', 8, 13),
(38, 'AWEI C-3S 3 SOCKET ADAPTER WITH 2 USB INTERFACED CAR CHARGER IOS ANDROID APPLE', 650, 17, '2020', 'Description 3 12V - 24V cigarette lighter sockets provide a total power up to 120W. Space-saving, enough for a variety of portable appliances in your vehicle. Dual USB ports, you can charge phone, pad or other small electronic devices simultaneously. Design a cigarette lighter for each hole, portable and safe, easy to control the power. Over-voltage and over-current safe protections to avoid risk to the charged devices. Specification Input: DC 12 - 24V 3 sockets output power: 120W 3 sockets total current output: 10A USB output voltage: DC 5V Smart current range: 3.1A Product weight: 0.1250 kg Package weight: 0.2060 kg Product Size: 10.00 x 6.50 x 2.80 cm / 3.94 x 2.56 x 1.1 inches Package Size: 17.50 x 12.80 x 4.50 cm / 6.89 x 5.04 x 1.77 inches Colour: Black, White Package 1 x Cigarette Car Lighter Power Adapter', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/a/w/awei_c-3s_3_socket_adapter_with_2_usb_interfaced_10.jpg', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/a/w/awei_c-3s_3_socket_adapter_with_2_usb_interfaced_11.jpg', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/a/w/awei_c-3s_3_socket_adapter_with_2_usb_interfaced_5.jpg', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/a/w/awei_c-3s_3_socket_adapter_with_2_usb_interfaced_8.jpg', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/a/w/awei_c-3s_3_socket_adapter_with_2_usb_interfaced_7.jpg', 8, 13),
(39, 'AWEI S10 SMART PORTABLE AIR PURIFIER CAN BE USED FOR CAR CABIN, OFFICE & HOME', 2690, 14, '2020', '1.Effectively remove formaldehyde, dust powder, chemical contaminants, benzene. etc.\r\n2.Built-in high quality large polymer 2000 mAh battery, more than 5 hours of battery life.\r\n3. Micro USB input, boot strap with electrify, blackout intelligently, delay of 30 minutes to power off .\r\n4. Anode sandblasted aluminum housing, physical buttons, 3 adjustment gears.\r\n5. New free replacement type of ﬁlter “pure silica”, compared to activated carbon, having faster speed, no drying, no adsorption saturation, secondary pollution and other problems, the working life is three years.\r\n6. Stylish appearance, which is designed strictly accordance with car cup slot , easy to install and ﬁx\r\n7. Top negative ion generator, occur concentrations greater than 3 million per second / cc.', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/b/f/bf098b819f650cbf79d387e70b5e60be74c8a367-s-w640-h640.jpg', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/4/4/4470311f26b49adabe277ac870b924c36ab94422-o-w640-h640.jpg', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/3/6/3696aeb6-de35-40e9-8e1b-88673540b7c9.jpg', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/b/4/b4b4537cab078cff2616ec3c220278b6a7e0e4bd-s-w640-h640.jpg', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/t/-/t-gift-2539d-5__gx-ozone-car-air-purifier-diffuser-portable-usb-rechargable-sterilizationr-formaldehyde-remove--gold.jpg', 8, 13),
(40, 'ROCK UNIVERSAL NON ALCOHOL LUXURY ZEOLITE STONE NATURAL FRAGRANCE', 1290, 7, '2020', 'This Rock car stone perfume made the zeolite as the carrier for the aroma, extracted the fragrance from different spices, it can deodorant and decompose the smell in the air and evaporate slowly different from traditional liquid perfume, lasting aroma.\r\n• Two kinds of flavor: angel and sea, soft, fresh and rich\r\n• Effect: Fresh airs, aromatic deodorant, refreshing, enhance memory; relieve mental stress and so on\r\n• 135 days long-lasting aroma, let the fragrance accompany you in your journey\r\n• Easy to install to your car air outlet\r\n• Comes with a glass bottle and a clip\r\nPackage included:\r\n• 1 Bottle of Angel Flavor Stone\r\n• 1 Bottle of Sea Flavor Stone\r\n• 1 x Glass Bottle\r\n• 1 x Clip\r\n• Other item not included\r\n\r\nuse of:Car\r\nBrand name:Rock\r\nModel number:rock-RPH0853\r\nItem Type:Car Air Freshener\r\ncolor: Blue, Black\r\nUsed: For Car Air Vent or Desktop\r\nProduct Package: Zeolite * 2, Glass bottle * 1, Clip * 1\r\nfeatures1: ROCK Aromatherapy Car Universal Holder\r\nFeatures2: Car Holder Universal Aroma\r\nFeatures3: Air Vent Air Freshener Car Holder', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/a/r/aromatherapy-car-holder-aroma-car-rock-universal-air-vent-air-freshener-car-stand-luxury-natural-zeolite.jpg_640x640.jpg', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/r/o/rock-aromatherapy-car-holder-universal-aroma.jpg', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/h/t/htb1hdykogdd8kjjy0fdq6ajvxxam.jpg', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/h/t/htb1a5xffvowbunjy0fiq6xfxvxar.jpg', 'https://www.ecarhut.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/h/t/htb1kewkf9bybenjy0feq6znmfxai.jpg', 9, 13),
(41, 'Ferrari Monza Sp1', 152525376, 3, '2018', 'The Ferrari Monza SP1, together with the Monza SP2, are the forerunners in a new concept, known as ‘Icona’ (Icon), that taps into a leitmotif of the most evocative cars in the company’s history to create a new segment of special limited series cars for clients and collectors. The intention is to use a modern aesthetic to reinterpret a timeless style, with technologically advanced components and the highest performance possible through continuous innovation', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a1/Ferrari_Monza_SP1%2C_Paris_Motor_Show_2018%2C_IMG_0643.jpg/1920px-Ferrari_Monza_SP1%2C_Paris_Motor_Show_2018%2C_IMG_0643.jpg', 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Ferrari_Monza_SP1%2C_Paris_Motor_Show_2018%2C_IMG_0363.jpg/1920px-Ferrari_Monza_SP1%2C_Paris_Motor_Show_2018%2C_IMG_0363.jpg', 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ef/Ferrari_Monza_SP1%2C_Paris_Motor_Show_2018%2C_IMG_0648.jpg/1920px-Ferrari_Monza_SP1%2C_Paris_Motor_Show_2018%2C_IMG_0648.jpg', 'https://api.ferrarinetwork.ferrari.com/v2/network-content/medias/resize/5d77774f037869546bcd6886-01_fb_ppl_intro_gynslm3k?apikey=9QscUiwr5n0NhOuQb463QEKghPrVlpaF&width=1080', 'https://pictures.topspeed.com/IMG/crop_webp/201809/ferrari-monza-sp1-7_1600x0.webp', 10, 11),
(42, 'Ferrari 488 Pista', 29657152, 4, '2020', 'The 2020 Ferrari 488 Pista is the stuff of supercar dreams. Broad-shouldered with bulging fenders and a graceful arch of a roof, this confident Italian stands out in a crowd. Its cabin is surprisingly spacious, offering more real estate than you typically find in a two-door sports car.', 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/2019-ferrari-488-pista-125-1528476287.jpg?crop=0.651xw:0.597xh;0.264xw,0.403xh&resize=2048:*', 'https://collectingcars.imgix.net/images/2020/07/MGP00215.jpg?w=1280&auto=format', 'https://collectingcars.imgix.net/images/2020/07/MGP09976.jpg?w=1280&auto=format', 'https://collectingcars.imgix.net/images/2020/07/MGP00143.jpg?w=1280&auto=format', 'https://collectingcars.imgix.net/images/2020/07/MGP00186.jpg?w=1280&auto=format', 10, 11),
(43, 'Ferrari F8 Spider', 25632736, 5, '2020', 'The F8 Spider, despite gorgeous, isn’t exactly a lot different compared to the F8 Tributo. The only notable change is, of course, the removable hardtop that stows under the rear tonneau cover in 14 seconds. It needs the same time to fold like the one in the Ferrari 812 GTS.', 'https://www.motortrend.com/uploads/sites/5/2020/06/2020-Ferrari-F8-Spider-13.jpg?fit=around%7C875:492', 'https://www.motortrend.com/uploads/sites/5/2020/06/2020-Ferrari-F8-Spider-14.jpg?fit=around%7C875:492', 'https://www.motortrend.com/uploads/sites/5/2020/06/2020-Ferrari-F8-Spider-54.jpg?fit=around%7C875:492', 'https://www.motortrend.com/uploads/sites/5/2020/06/2020-Ferrari-F8-Spider-6.jpg?fit=around%7C875:492', 'https://www.motortrend.com/uploads/sites/5/2020/06/2020-Ferrari-F8-Spider-40.jpg?fit=around%7C875:492', 10, 11),
(44, 'Ferrari GTC4Lusso', 22031443, 3, '2020', 'Powerful yet sophisticated, sporty yet luxurious. Ferrari\'s new 12-cylinder really does make every journey a radically different experience. Whether being driven solo or with all four seats occupied, the latest addition to the Ferrari range puts people at the centre of a whole new world. The GTC4 Lusso was designed to deliver different and entirely surprising emotions.', 'https://s.aolcdn.com/dims-global/dims3/GLOB/legacy_thumbnail/788x525/quality/85/https://s.aolcdn.com/commerce/autodata/images/USC70FRC231A01300.jpg', 'https://cdn.shopify.com/s/files/1/0043/8471/8938/products/159293409048516566_812x.jpg?v=1592934126?auto=format&fm=jpg&q=80&fit=crop&crop=entropy&w=1249&h=703', 'https://www.classicdriver.com/sites/default/files/styles/colorbox/public/cars_images/feed_773878/3955_p13_l.jpg', 'https://www.classicdriver.com/sites/default/files/styles/colorbox/public/cars_images/feed_773878/3955_p15_l.jpg', 'https://www.classicdriver.com/sites/default/files/styles/colorbox/public/cars_images/feed_773878/3955_p18_l.jpg', 10, 11),
(45, '2020 Ferrari Portofino', 20675662, 4, '2020', 'The Ferrari Portofino was unveiled on the Italian Riviera in the village of Portofino at two exclusive evenings on 7 and 8 September 2017, at which Piero Ferrari, Sergio Marchionne, Sebastian Vettel and Giancarlo Fisichella were present. It was also shown at Maranello on September 9 and 10 during the Ferrari 70th Anniversary celebration.\r\n\r\nBy the end of 2017, the Portofino was unveiled in Asia, namely China and Japan, where China is said to be a big market for the car. In Japan, the vehicle was initially private-previewed in November, before the official debut in February 2018. Prices in Japan start from JPY25,300,000. Prices in the U.S. start from $215,000.\r\n\r\nIn Hong Kong, the Portofino was launched in late March 2018, making it the third time in Ferrari\'s history to launch a new car in the Hong Kong\'s Peninsula Hotel (Enzo in 2003, followed by FF in 2010). Unlike previous occasions where the vehicle launch occurred in only one part of the ground floor lobby, the Portofino\'s launch occupied the hotel\'s entire ground floor area, where a few other Ferrari models were also parked outside the drop-off area, and creative lighting featuring the Ferrari\'s Prancing Horse logo was also projected on the hotel\'s exterior walls. A China-spec, left-hand drive model was displayed, which features a simplified Chinese menu display—a rare move for Ferrari as not all Chinese-speaking Asian regions would receive a Chinese language menu. Pricing for the Portofino in Hong Kong (as of April 2018) starts from HK$3.5M, with deliveries scheduled later in the year. A proper right-hand drive model was first spotted at the city\'s 488 Pista launch event on late June 2018.', 'https://images.wsj.net/im-146731?width=1260&size=1.5', 'https://www.astonmartinofgreenwich.com/imagetag/3008/2/l/New-2020-Ferrari-Portofino.jpg', 'https://www.astonmartinofgreenwich.com/imagetag/3008/3/l/New-2020-Ferrari-Portofino.jpg', 'https://www.astonmartinofgreenwich.com/imagetag/3008/5/l/New-2020-Ferrari-Portofino.jpg', 'https://www.astonmartinofgreenwich.com/imagetag/3008/6/l/New-2020-Ferrari-Portofino.jpg', 10, 11),
(46, 'Tesla Model 3', 4829122, 7, '2020', 'The Tesla Model 3 is an electric four-door fastback sedan developed by Tesla. The Model 3 Standard Range Plus version delivers an EPA-rated all-electric range of 263 miles (423 km) and the Long Range versions deliver 353 miles (568 km). According to Tesla, the Model 3 carries full self-driving hardware, with periodic software updates adding functionality.\r\n\r\nLimited production of the Model 3 began in mid-2017, with the first production vehicle rolling off the assembly line on July 7, 2017. The official launch and delivery of the first 30 cars took place on July 28.\r\n\r\nAs of March 2020, the Tesla Model 3 is the world\'s best-selling electric car in history, with more than 500,000 units delivered. The Model 3 was the world\'s top selling plug-in electric car in 2018 and 2019, and also the best-selling plug-in car in the United States. The Model 3 was also the top selling plug-in car in Europe in 2019.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/2019_Tesla_Model_3_Performance_AWD_Front.jpg/1920px-2019_Tesla_Model_3_Performance_AWD_Front.jpg', 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ef/2019_Tesla_Model_3_Performance_AWD_Rear.jpg/1920px-2019_Tesla_Model_3_Performance_AWD_Rear.jpg', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7d/Tesla_Model_3_DCA_08_2018_0269.jpg/1920px-Tesla_Model_3_DCA_08_2018_0269.jpg', 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f0/Tesla_Model_3_DCA_08_2018_0159.jpg/1920px-Tesla_Model_3_DCA_08_2018_0159.jpg', 'https://cars.usnews.com/static/images/Auto/custom/13856/2019_Tesla_Model_3_24.jpg', 11, 11),
(47, 'Tesla Model S', 6778058, 3, '2020', 'The Tesla Model S is an all-electric five-door liftback sedan produced by Tesla, Inc., and was introduced on June 22, 2012. As of August 2020, the Model S Long Range Plus has an EPA range of 402 miles (647 km), higher than that of any other battery electric car.\r\n\r\nModel S cars built from October 2014 have a feature called Autopilot, an advanced driver assistance system that allows the car to operate without assistance from the driver. However, the driver must supervise continuously and take control if there is an issue. Autopilot 2.0, introduced in October 2016, also includes “Enhanced Summon”, which allows the car to navigate through a parking lot to its owner without anyone in the driver\'s seat. Sentry mode, available on cars built after August 2017, senses and records suspicious activity around the car.\r\n\r\nIn 2013, the Model S became the first electric car to top the monthly new-car-sales ranking in any country, twice leading in Norway, in September and December 2013 and also in Denmark in December 2015. Global Model S sales passed 250,000 units in September 2018 (more recent numbers are not available because Tesla combines sales of Model S and Model X). The U.S. is its leading market, with about 158,000 units delivered through December 2019. The Tesla Model S was the top-selling plug-in electric car worldwide in 2015 and 2016.\r\n\r\nThe December 2017 Consumer Reports owner satisfaction survey had the Tesla Model S at the top for all cars;[33] in December 2019, it is in fifth position.[34] In 2019, the US magazine Motor Trend named the 2013 Tesla Model S the ultimate \"car of the year\" over the magazine\'s 70-year history.[35]', 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/2018_Tesla_Model_S_75D.jpg/1920px-2018_Tesla_Model_S_75D.jpg', 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f5/Tesla_Model_S_%28108%29_%28cropped%29.JPG/1920px-Tesla_Model_S_%28108%29_%28cropped%29.JPG', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a3/Tesla_Model_S_digital_panels.jpg/1280px-Tesla_Model_S_digital_panels.jpg', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a6/Tesla_Model_S_at_a_Supercharger_station.jpeg/1280px-Tesla_Model_S_at_a_Supercharger_station.jpeg', 'https://nypost.com/wp-content/uploads/sites/2/2020/06/sized-tesla-touchscreen.jpg?quality=90&strip=all&w=1286', 11, 11),
(48, 'Tesla Roadster', 16947264, 4, '2020', 'The Tesla Roadster is an upcoming all-electric battery-powered four-seater sports car concept in development by Tesla, Inc. Tesla has claimed that it will be capable of 0 to 60 mph (0 to 97 km/h) in 1.9 seconds, which would be quicker than any street legal production car as of the announcement in 2017. The Roadster is the successor to Tesla\'s first production car, which was the 2008 Roadster.\r\n\r\nTesla CEO Elon Musk has said that Roadster sales will begin after the release of the revised Model S \'Plaid\', which should enter production in late 2021. Musk said in a tweet that higher-performance trim levels will be available beyond the base specifications, including a SpaceX package which would \"include ~10 small rocket thrusters arranged seamlessly around car\" which would supposedly allow the car dramatic improvements in \"acceleration, top speed, braking & cornering\", and even the possibility of flight.', 'https://cdn.vox-cdn.com/thumbor/BYMFloTDuy2Kevc6gHg2LZO-iy8=/0x0:3840x2160/920x613/filters:focal(1562x816:2176x1430):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/57642853/Roadster_Front_58.0.jpg', 'https://hips.hearstapps.com/hmg-prod/amv-prod-cad-assets/wp-content/uploads/2017/11/Tesla-Roadster-103.jpg?crop=0.790xw:0.730xh;0.136xw,0.226xh&resize=2048:*', 'https://cdn.carbuzz.com/gallery-images/1600/523000/700/523781.jpg', 'https://cdn.carbuzz.com/gallery-images/1600/523000/700/523793.jpg', 'https://cdn.carbuzz.com/gallery-images/1600/523000/700/523778.jpg', 11, 11),
(49, 'Tesla Model Y', 5083331, 4, '2020', 'Like every Tesla, Model Y is designed to be the safest vehicle in its class. The low center of gravity, rigid body structure and large crumple zones provide unparalleled protection.', 'https://electrek.co/wp-content/uploads/sites/3/2020/01/Screen-Shot-2020-01-31-at-8.18.41-AM.jpg?quality=82&strip=all&w=1600', 'https://www.tesla.com/sites/default/files/modelsx-new/social/model-y-social.png', 'https://www.autocar.co.uk/sites/autocar.co.uk/files/styles/gallery_slide/public/images/car-reviews/first-drives/legacy/model_y_side_blue.jpg?itok=KO40N8b9', 'https://www.autocar.co.uk/sites/autocar.co.uk/files/styles/gallery_slide/public/images/car-reviews/first-drives/legacy/model_y_front_34_blue.jpg?itok=mqhRfPZU', 'https://www.autocar.co.uk/sites/autocar.co.uk/files/styles/gallery_slide/public/images/car-reviews/first-drives/legacy/model_y_rear_34_red.jpg?itok=8vtH2EBv', 11, 11),
(50, 'Tesla Model X', 6201851, 2, '2019', 'Model X is one of the safest SUVs ever. Built from the ground up as an electric vehicle, the body, chassis, restraints and battery technology provide a very low probability of occupant injury.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/2017_Tesla_Model_X_100D_Front.jpg/1920px-2017_Tesla_Model_X_100D_Front.jpg', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7f/Tesla_Model_X_prototype_at_the_Texas_Capitol%2C_Austin%2C_15th_of_January_2015_04.jpg/1280px-Tesla_Model_X_prototype_at_the_Texas_Capitol%2C_Austin%2C_15th_of_January_2015_04.jpg', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/79/2016_Tesla_Model_X_in_Lantana_Florida_1of2.jpg/1920px-2016_Tesla_Model_X_in_Lantana_Florida_1of2.jpg', 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/2017_Tesla_Model_X_100D_Rear.jpg/1920px-2017_Tesla_Model_X_100D_Rear.jpg', 'https://www.gtopcars.com/wp-content/uploads/2020/09/2021-Tesla-Model-X-P100d.jpg', 11, 11),
(51, 'BMW M3 Series', 11500000, 7, '2019', 'The BMW 3 Series is a compact executive car manufactured by the German automaker BMW since May 1975. It is the successor to the 02 Series and has been produced in seven different generations.\r\n\r\nThe first generation of the 3 Series was only available as a 2-door coupé; however, the model range has since expanded to include a 4-door saloon, 2-door convertible, 2-door coupé, 5-door estate, 5-door liftback (\"Gran Turismo\") and 3-door hatchback body styles. Since 2013, the coupé and convertible models have been marketed as the 4 Series; therefore, the 3 Series range no longer includes these body styles.\r\n\r\nThe 3 Series is BMW\'s best-selling model, accounting for around 30% of the BMW brand\'s annual total sales (excluding motorbikes). The BMW 3 Series has won numerous awards throughout its history.\r\n\r\nThe M version of the 3 series, M3, debuted with the E30 M3 in 1986', 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/BMW_G20_IMG_0167.jpg/1920px-BMW_G20_IMG_0167.jpg', 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/2020-bmw-m340i-v-2020-genesis-g70-3p3t-1016-hdr-1571838328.jpg?crop=0.774xw:0.712xh;0.00801xw,0.285xh&resize=2048:*', 'https://picolio.auto123.com/auto123-media/P90323674_highRes_the-all-new-bmw-3-se.jpg?scaledown=700', 'https://images.caricos.com/b/bmw/2019_bmw_3-series/images/1920x1080/2019_bmw_3-series_75_1920x1080.jpg', 'https://images.caricos.com/b/bmw/2019_bmw_3-series/images/1920x1080/2019_bmw_3-series_352_1920x1080.jpg', 12, 11),
(52, 'BMW 5 Series', 12000000, 5, '2020', 'The BMW 5 Series is an executive car manufactured by BMW since 1972. It is the successor to the New Class Sedans and is currently in its seventh generation.\r\n\r\nInitially, the 5 Series was only available in a sedan body style. The wagon/estate body style (called \"Touring\") was added in 1991 and the 5-door fastback (called \"Gran Turismo\") was produced from 2009 to 2017.\r\n\r\nThe first generation of 5 Series was powered by naturally aspirated four-cylinder and six-cylinder petrol engines. Following generations have been powered by four-cylinder, six-cylinder, V8 and V10 engines that are either naturally aspirated or turbocharged. Since 1982, diesel engines have been included in the 5 Series range.\r\n\r\nThe 5 Series is BMW\'s second best-selling model after the 3 Series. On January 29, 2008, the 5 millionth 5 Series was manufactured, a 530d sedan in Carbon Black Metallic.\r\n\r\nBMW\'s three-digit model naming convention began with the first 5 Series, thus the 5 Series was BMW\'s first model line to use \"Series\" in the name.\r\n\r\nSince the E28, all generations of 5 Series have included an \"M\" model, called the BMW M5.', 'https://imgd.aeplcdn.com/1056x594/cw/ec/26911/BMW-5-Series-Right-Front-Three-Quarter-172250.jpg?wm=0&q=85', 'https://imgd.aeplcdn.com/1056x594/cw/ec/26911/BMW-5-Series-Right-Front-Three-Quarter-172250.jpg?wm=0&q=85', 'https://imgd.aeplcdn.com/1056x594/cw/ec/31727/BMW-5-Series-Dashboard-110939.jpg?v=201711021421&wm=1&q=85', 'https://imgd.aeplcdn.com/1056x594/cw/ec/26911/BMW-5-Series-Interior-102028.jpg?v=201711021421&q=85', 'https://images.hgmsites.net/med/2021-bmw-5-series_100749424_m.jpg', 12, 11),
(53, 'BMW X6', 8954400, 11, '2019', 'The BMW X6 is a mid-size luxury crossover by German automaker BMW.\r\n\r\nThe first generation (E71) was released for sale in April 2008 for the 2008 model year. The X6 was marketed as a sports activity coupé (SAC) by BMW. It combines the attributes of an SUV (high ground clearance, all-wheel drive and all-weather ability, large wheels and tires) with the stance of a coupé (styling featuring a sloping roof). It was based on the previous generation BMW 5 and 6 Series. E71 development began in 2003 under Peter Tuennermann, after start of E70 X5 development in 2001. Design work by E70 X5 designer Pierre Leclercq was frozen in 2005, with test mules being run from the summer of 2005 and prototypes being tested from late 2006. Production began on December 3, 2007.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/2018_BMW_X6_xDrive30d_M_Sport_Automatic_3.0_Front.jpg/1920px-2018_BMW_X6_xDrive30d_M_Sport_Automatic_3.0_Front.jpg', 'https://car-images.bauersecure.com/pagefiles/90586/1056x594/bmw_x6_review_0.jpg', 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/2017-bmw-x6-m-1545075828.jpg?crop=0.998xw:0.924xh;0.00160xw,0.0759xh&resize=2048:*', 'https://4.bp.blogspot.com/-JNZW5UcGYuc/XEyF8F2mt5I/AAAAAAAAFBo/unc6fJsNTuw7tl2O7y5jubH0voveMBjqQCLcBGAs/s1600/2019%2BBMW%2BX6%2BM.jpg', 'https://cdn.carbuzz.com/gallery-images/2019-bmw-x6-dashboard-carbuzz-339299.jpg', 12, 11),
(54, 'BMW Z4', 5653200, 4, '2020', 'The Z4 is BMW\'s small roadster, combining unique design, premium appointments, and some fun-to-drive characteristics. It continues a lineage of BMW Z-cars, following the Z3 introduced in 1995 and two generations of Z4 beginning in 2002. With rear-wheel drive and turbocharged engine options, the current G29 generation is available only in soft-top roadster body style and controversially shares its platform with the Toyota Supra.\r\n\r\nJust introduced for the 2019 model year, features and equipment carry over to 2020.', 'https://www.motortrend.com/uploads/sites/5/2019/11/2020-BMW-Z4-M40i-front-three-quarter.jpg?fit=around%7C875:492', 'https://www.motortrend.com/uploads/sites/5/2019/11/2020-BMW-Z4-M40i-front-three-quarter.jpg?fit=around%7C875:492', 'https://www.motortrend.com/uploads/sites/5/2019/11/2020-BMW-Z4-M40i-front-interior-seats.jpg?fit=around%7C875:492', 'https://www.motortrend.com/uploads/sites/5/2019/10/2020-BMW-Z4-M40i-start-stop.jpg?fit=around%7C875:492', 'https://www.motortrend.com/uploads/sites/5/2019/10/2020-BMW-Z4-M40i-front-three-quarter-in-motion-5-1.jpg?fit=around%7C875:492', 12, 11),
(55, 'BMW i8', 12012000, 3, '2020', 'BMW offers a single powertrain in the i8. It mates a turbocharged 1.5-liter three-cylinder gas engine with an 11.6-kWh battery pack and two electric motors. The trio of power sources combines for a total of 369 horsepower, capable of driving all four wheels. However, it\'s not the fastest supercar on the block: The 2019 i8 roadster we tested sprinted from zero to 60 mph in 4.1 seconds. The i8 suffers from the same light steering that we\'ve criticized in many current BMWs. We\'d prefer more feedback, especially in a vehicle with sporting intentions. The ride is surprisingly civil and bumps in the road are felt, but never harshly.', 'https://www.motortrend.com/uploads/sites/5/2020/01/2019-BMW-i8-Coupe-8.jpg?fit=around%7C875:492', 'https://www.motortrend.com/uploads/sites/5/2020/01/2019-BMW-i8-Coupe-13.jpg?fit=around%7C875:492', 'https://www.motortrend.com/uploads/sites/5/2020/01/2019-BMW-i8-Coupe-9.jpg?fit=around%7C875:492', 'https://www.motortrend.com/uploads/sites/5/2020/01/2019-BMW-i8-Coupe-5.jpg?fit=around%7C875:492', 'https://www.motortrend.com/uploads/sites/5/2020/01/2019-BMW-i8-Coupe-3.jpg?fit=around%7C875:492', 12, 11),
(56, '2020 Mercedes-Benz CLA-Class', 3246600, 3, '2020', 'The Mercedes-Benz CLA-Class was once the least expensive way you can get into a vehicle wearing the vaunted three-pointed star. With the arrival of the A-Class sedan, the new CLA-Class increases in price to make room. What do you get for paying more? A coupe-like look and more power with the base engine compared to the A-Class.', 'https://www.motortrend.com/uploads/sites/5/2019/01/2020-Mercedes-Benz-CLA-Class-21.jpg?fit=around%7C875:492', 'https://www.motortrend.com/uploads/sites/5/2019/01/2020-Mercedes-Benz-CLA-Class-33.jpg?fit=around%7C875:492', 'https://www.motortrend.com/uploads/sites/5/2019/01/2020-Mercedes-Benz-CLA-Class-34.jpg?fit=around%7C875:492', 'https://www.motortrend.com/uploads/sites/10/2020/02/2020-mercedes-benz-cla-250-4wd-suv-dashboard.png?fit=around%7C875:492', 'https://www.motortrend.com/uploads/sites/10/2020/02/2020-mercedes-benz-cla-250-4wd-suv-rear-seat.png?fit=around%7C875:492', 13, 11),
(57, '2020 Mercedes-Benz S-Class', 14532000, 2, '2020', 'The S-Class has always been the flagship vehicle for Mercedes-Benz and the automaker argues it\'s also the flagship of the auto industry. Now on its sixth generation, the S-Class has continually served as a segment leader and tech innovator. The sixth-gen car, known internally as the W222, debuted for the 2014 model year and is offered in sedan, long-wheelbase sedan, coupe, and convertible variants. The whole range received a mid-cycle update for 2018 with a revised engine lineup.\r\n\r\nThe full-size luxury sedan competes with German rivals such as the Audi A8, BMW 7 Series, and Porsche Panamera as well as others including the Genesis G90, Kia K900, and Lexus LS.', 'https://www.motortrend.com/uploads/sites/10/2019/12/2020-mercedes-benz-s-class-s450-sedan-angular-front.png?fit=around%7C875:492', 'https://www.motortrend.com/uploads/sites/10/2019/12/2020-mercedes-benz-s-class-s450-sedan-angular-rear.png?fit=around%7C875:492', 'https://www.motortrend.com/uploads/sites/10/2019/12/2020-mercedes-benz-s-class-s450-sedan-side-view.png?fit=around%7C875:492', 'https://www.motortrend.com/uploads/sites/10/2019/12/2020-mercedes-benz-s-class-s450-sedan-front-view.png?fit=around%7C875:492', 'https://www.motortrend.com/uploads/sites/10/2019/12/2020-mercedes-benz-s-class-s450-sedan-rear-view.png?fit=around%7C875:492', 13, 11),
(58, '2020 Mercedes-Benz AMG GT', 18295200, 3, '2020', 'The Mercedes-AMG GT is a range of high-end sports cars at the top of the brand\'s performance division. First launched as a 2016 model, the Mercedes-AMG model was initially available as a coupe, which was followed by the soft-top roadster. Recently, Mercedes-AMG added the AMG GT 4-Door Coupe, a big hatchback with a standard performance-tuned AWD system and huge amounts of power.', 'https://www.motortrend.com/uploads/sites/5/2020/03/5-2020-mercedes-amg-gt.jpg?fit=around%7C875:492', 'https://www.motortrend.com/uploads/sites/5/2020/03/4-2020-mercedes-amg-gt.jpg?fit=around%7C875:492', 'https://www.motortrend.com/uploads/sites/5/2020/03/8-2020-mercedes-amg-gt.jpg?fit=around%7C875:492', 'https://www.motortrend.com/uploads/sites/5/2020/03/11-2020-mercedes-amg-gt.jpg?fit=around%7C875:492', 'https://www.motortrend.com/uploads/sites/5/2020/03/9-2020-mercedes-amg-gt.jpg?fit=around%7C875:492', 13, 11),
(59, '2020 Mercedes-Benz SL-Class', 7644000, 4, '2020', 'An automotive icon, the Mercedes-Benz SL-Class has long been one of the most recognizable grand tourers on the road. Since the debut of 300SL, which had cool gullwing doors, the SL-Class has made a name for itself as a desirable luxury roadster. The current generation SL-Class is the third generation to feature a power folding hardtop you can raise and lower at speeds of up to 25 mph. A new generation of Mercedes-Benz\'s iconic roadster is set to arrive in 2021 as a 2022 model, likely featuring a 2+2 layout. The new model will also return to a soft top format to lower weight and complexity.', 'https://www.motortrend.com/uploads/sites/10/2019/10/2020-mercedes-benz-sl-roadster-450-convertible-angular-front.png?fit=around%7C875:492', 'https://www.motortrend.com/uploads/sites/10/2019/10/2020-mercedes-benz-sl-roadster-450-convertible-angular-rear.png?fit=around%7C875:492', 'https://www.motortrend.com/uploads/sites/5/2020/05/2020-mercedes-benz-sl-class-07.jpg?fit=around%7C875:492', 'https://www.motortrend.com/uploads/sites/10/2019/10/2020-mercedes-benz-sl-roadster-450-convertible-dashboard.png?fit=around%7C875:492', 'https://www.motortrend.com/uploads/sites/10/2019/10/2020-mercedes-benz-sl-roadster-450-convertible-dashboard.png?fit=around%7C875:492', 13, 11),
(60, '2020 Mercedes-Benz E-Class', 6014400, 4, '2020', 'One of Mercedes-Benz\'s best-known nameplates, the E-Class was introduced for the 1994 model year and is available today in sedan, wagon, coupe, and soft-type convertible body styles. Now in its fifth generation, which debuted for 2017, the E-Class offers upscale luxury and technology features, and, in AMG specification, additional power and dynamic enhancements.\r\n\r\nFor 2020, the E-Class gains numerous updates. The entry-level sedan is now badged E 350 (previously E 300) and gets an 14-hp boost. For the Coupe and Cabriolet, newly standard equipment includes a digital gauge cluster, premium sound system, heated front seats, and wireless charging pad. All models gain blind-spot monitoring, keyless entry and start, and a parking damage detection system. E 53 AMG models get illuminated door sill kick plates. The E 63 S AMG gets a performance exhaust system and steering wheel-mounted drive mode select buttons. Both AMG models get a slippery condition drive mode and driver-selectable louder exhaust engine start option.', 'https://images.mktw.net/im-258698?width=1260&size=1.7753120665742026', 'https://www.motortrend.com/uploads/sites/5/2020/03/2020-Mercedes-Benz-E-Class-015.jpg?fit=around%7C875:492', 'https://www.motortrend.com/uploads/sites/5/2020/03/2020-Mercedes-Benz-E-Class-004.jpg?fit=around%7C875:492', 'https://www.motortrend.com/uploads/sites/10/2020/08/2020-mercedes-benz-e-class-350-sedan-rear-seat.png?fit=around%7C875:492', 'https://www.motortrend.com/uploads/sites/10/2020/08/2020-mercedes-benz-e-class-350-sedan-instrument-panel.png?fit=around%7C875:492', 13, 11),
(62, 'TestCar', 120, 3, '2010', '', '', '', '', '', '', 1, 11);

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
  `query` longtext DEFAULT NULL,
  `date` datetime(6) NOT NULL,
  `customers_id` int(11) DEFAULT NULL,
  `reply` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `showroom_usermessage`
--

INSERT INTO `showroom_usermessage` (`id`, `query`, `date`, `customers_id`, `reply`) VALUES
(19, 'Hi', '2020-12-21 14:32:10.808282', 22, 'hello'),
(20, 'Hello', '2020-12-21 14:32:39.406516', 22, ' ');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `showroom_booking`
--
ALTER TABLE `showroom_booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `showroom_customer`
--
ALTER TABLE `showroom_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `showroom_manufacturer_product`
--
ALTER TABLE `showroom_manufacturer_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `showroom_products`
--
ALTER TABLE `showroom_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
