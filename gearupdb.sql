-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2020 at 10:37 AM
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

CREATE TABLE `admin_interface_theme` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_visible` tinyint(1) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `logo_visible` tinyint(1) NOT NULL,
  `css_header_background_color` varchar(10) NOT NULL,
  `title_color` varchar(10) NOT NULL,
  `css_header_text_color` varchar(10) NOT NULL,
  `css_header_link_color` varchar(10) NOT NULL,
  `css_header_link_hover_color` varchar(10) NOT NULL,
  `css_module_background_color` varchar(10) NOT NULL,
  `css_module_text_color` varchar(10) NOT NULL,
  `css_module_link_color` varchar(10) NOT NULL,
  `css_module_link_hover_color` varchar(10) NOT NULL,
  `css_module_rounded_corners` tinyint(1) NOT NULL,
  `css_generic_link_color` varchar(10) NOT NULL,
  `css_generic_link_hover_color` varchar(10) NOT NULL,
  `css_save_button_background_color` varchar(10) NOT NULL,
  `css_save_button_background_hover_color` varchar(10) NOT NULL,
  `css_save_button_text_color` varchar(10) NOT NULL,
  `css_delete_button_background_color` varchar(10) NOT NULL,
  `css_delete_button_background_hover_color` varchar(10) NOT NULL,
  `css_delete_button_text_color` varchar(10) NOT NULL,
  `css` longtext NOT NULL,
  `list_filter_dropdown` tinyint(1) NOT NULL,
  `related_modal_active` tinyint(1) NOT NULL,
  `related_modal_background_color` varchar(10) NOT NULL,
  `related_modal_rounded_corners` tinyint(1) NOT NULL,
  `logo_color` varchar(10) NOT NULL,
  `recent_actions_visible` tinyint(1) NOT NULL,
  `favicon` varchar(100) NOT NULL,
  `related_modal_background_opacity` varchar(5) NOT NULL,
  `env_name` varchar(50) NOT NULL,
  `env_visible_in_header` tinyint(1) NOT NULL,
  `env_color` varchar(10) NOT NULL,
  `env_visible_in_favicon` tinyint(1) NOT NULL,
  `related_modal_close_button_visible` tinyint(1) NOT NULL,
  `language_chooser_active` tinyint(1) NOT NULL,
  `language_chooser_display` varchar(10) NOT NULL,
  `list_filter_sticky` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_interface_theme`
--

INSERT INTO `admin_interface_theme` (`id`, `name`, `active`, `title`, `title_visible`, `logo`, `logo_visible`, `css_header_background_color`, `title_color`, `css_header_text_color`, `css_header_link_color`, `css_header_link_hover_color`, `css_module_background_color`, `css_module_text_color`, `css_module_link_color`, `css_module_link_hover_color`, `css_module_rounded_corners`, `css_generic_link_color`, `css_generic_link_hover_color`, `css_save_button_background_color`, `css_save_button_background_hover_color`, `css_save_button_text_color`, `css_delete_button_background_color`, `css_delete_button_background_hover_color`, `css_delete_button_text_color`, `css`, `list_filter_dropdown`, `related_modal_active`, `related_modal_background_color`, `related_modal_rounded_corners`, `logo_color`, `recent_actions_visible`, `favicon`, `related_modal_background_opacity`, `env_name`, `env_visible_in_header`, `env_color`, `env_visible_in_favicon`, `related_modal_close_button_visible`, `language_chooser_active`, `language_chooser_display`, `list_filter_sticky`) VALUES
(1, 'Django', 1, 'Django administration', 1, '', 1, '#0C4B33', '#F5DD5D', '#44B78B', '#FFFFFF', '#C9F0DD', '#44B78B', '#FFFFFF', '#FFFFFF', '#C9F0DD', 1, '#0C3C26', '#156641', '#0C4B33', '#0C3C26', '#FFFFFF', '#BA2121', '#A41515', '#FFFFFF', '', 1, 1, '#000000', 1, '#FFFFFF', 1, '', '0.3', '', 1, '#E74C3C', 1, 1, 1, 'code', 1);

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
(29, 'Can add location', 8, 'add_location'),
(30, 'Can change location', 8, 'change_location'),
(31, 'Can delete location', 8, 'delete_location'),
(32, 'Can view location', 8, 'view_location'),
(33, 'Can add manufacturer', 9, 'add_manufacturer'),
(34, 'Can change manufacturer', 9, 'change_manufacturer'),
(35, 'Can delete manufacturer', 9, 'delete_manufacturer'),
(36, 'Can view manufacturer', 9, 'view_manufacturer'),
(37, 'Can add products', 10, 'add_products'),
(38, 'Can change products', 10, 'change_products'),
(39, 'Can delete products', 10, 'delete_products'),
(40, 'Can view products', 10, 'view_products'),
(41, 'Can add car', 11, 'add_car'),
(42, 'Can change car', 11, 'change_car'),
(43, 'Can delete car', 11, 'delete_car'),
(44, 'Can view car', 11, 'view_car'),
(45, 'Can add accesories', 12, 'add_accesories'),
(46, 'Can change accesories', 12, 'change_accesories'),
(47, 'Can delete accesories', 12, 'delete_accesories'),
(48, 'Can view accesories', 12, 'view_accesories'),
(49, 'Can add Theme', 13, 'add_theme'),
(50, 'Can change Theme', 13, 'change_theme'),
(51, 'Can delete Theme', 13, 'delete_theme'),
(52, 'Can view Theme', 13, 'view_theme'),
(53, 'Can add product', 14, 'add_product'),
(54, 'Can change product', 14, 'change_product'),
(55, 'Can delete product', 14, 'delete_product'),
(56, 'Can view product', 14, 'view_product'),
(57, 'Can add booking', 15, 'add_booking'),
(58, 'Can change booking', 15, 'change_booking'),
(59, 'Can delete booking', 15, 'delete_booking'),
(60, 'Can view booking', 15, 'view_booking');

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
(1, 'pbkdf2_sha256$216000$za3vSuuD0sOh$2Q7Jn1OAE7pJnAGfQFOmY81LmoRE3xEwnwnUSrtKIU4=', '2020-12-04 18:43:47.821991', 1, 'admin', '', '', 'admin@g.bracu.ac.bd', 1, 1, '2020-12-03 08:15:19.779631');

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
(1, '2020-12-04 14:07:08.493380', '1', 'Manufacturer object (1)', 1, '[{\"added\": {}}]', 9, 1),
(2, '2020-12-04 14:08:10.202949', '1', 'Manufacturer object (1)', 3, '', 9, 1),
(3, '2020-12-04 18:51:08.601368', '1', 'Car object (1)', 1, '[{\"added\": {}}]', 11, 1),
(4, '2020-12-04 18:56:26.008326', '2', 'Bugatti Chiron', 1, '[{\"added\": {}}]', 11, 1),
(5, '2020-12-04 18:58:27.245472', '3', 'Porsche 911', 1, '[{\"added\": {}}]', 11, 1),
(6, '2020-12-04 19:01:08.640701', '4', 'Dodge Charger 1966', 1, '[{\"added\": {}}]', 11, 1),
(7, '2020-12-04 19:17:10.963017', '2', 'Bugatti Chiron', 2, '[{\"changed\": {\"fields\": [\"Image url\"]}}]', 11, 1),
(8, '2020-12-04 19:57:11.757190', '1', 'TOYOTA HARRIER', 3, '', 11, 1),
(9, '2020-12-04 19:57:13.803851', '5', 'TOYOTA HARRIER', 1, '[{\"added\": {}}]', 11, 1);

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
(13, 'admin_interface', 'theme'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(12, 'showroom', 'accesories'),
(15, 'showroom', 'booking'),
(11, 'showroom', 'car'),
(7, 'showroom', 'customer'),
(8, 'showroom', 'location'),
(9, 'showroom', 'manufacturer'),
(14, 'showroom', 'product'),
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
(19, 'showroom', '0001_initial', '2020-12-04 11:02:28.001270'),
(20, 'showroom', '0002_auto_20201204_1306', '2020-12-04 13:06:16.033915'),
(21, 'showroom', '0003_auto_20201204_1423', '2020-12-04 14:23:31.459336'),
(22, 'showroom', '0004_auto_20201204_1433', '2020-12-04 14:33:56.916062'),
(23, 'admin_interface', '0001_initial', '2020-12-06 15:07:15.270916'),
(24, 'admin_interface', '0002_add_related_modal', '2020-12-06 15:07:15.305811'),
(25, 'admin_interface', '0003_add_logo_color', '2020-12-06 15:07:15.322046'),
(26, 'admin_interface', '0004_rename_title_color', '2020-12-06 15:07:15.329053'),
(27, 'admin_interface', '0005_add_recent_actions_visible', '2020-12-06 15:07:15.337186'),
(28, 'admin_interface', '0006_bytes_to_str', '2020-12-06 15:07:15.407301'),
(29, 'admin_interface', '0007_add_favicon', '2020-12-06 15:07:15.414346'),
(30, 'admin_interface', '0008_change_related_modal_background_opacity_type', '2020-12-06 15:07:15.430710'),
(31, 'admin_interface', '0009_add_enviroment', '2020-12-06 15:07:15.448650'),
(32, 'admin_interface', '0010_add_localization', '2020-12-06 15:07:15.473311'),
(33, 'admin_interface', '0011_add_environment_options', '2020-12-06 15:07:15.505070'),
(34, 'admin_interface', '0012_update_verbose_names', '2020-12-06 15:07:15.514534'),
(35, 'admin_interface', '0013_add_related_modal_close_button', '2020-12-06 15:07:15.522518'),
(36, 'admin_interface', '0014_name_unique', '2020-12-06 15:07:15.532224'),
(37, 'admin_interface', '0015_add_language_chooser_active', '2020-12-06 15:07:15.542595'),
(38, 'admin_interface', '0016_add_language_chooser_display', '2020-12-06 15:07:15.553324'),
(39, 'admin_interface', '0017_change_list_filter_dropdown', '2020-12-06 15:07:15.558909'),
(40, 'admin_interface', '0018_theme_list_filter_sticky', '2020-12-06 15:07:15.568358'),
(41, 'showroom', '0002_auto_20201206_1536', '2020-12-06 15:16:46.632736'),
(42, 'showroom', '0003_customer_user', '2020-12-06 15:37:02.627080'),
(43, 'showroom', '0003_auto_20201206_1634', '2020-12-06 16:35:01.680223'),
(44, 'showroom', '0004_auto_20201206_1643', '2020-12-06 16:43:39.310584'),
(45, 'showroom', '0005_auto_20201206_1720', '2020-12-06 17:20:23.038686'),
(46, 'showroom', '0006_auto_20201206_1722', '2020-12-06 17:22:49.832047'),
(47, 'showroom', '0007_auto_20201206_1727', '2020-12-06 17:27:23.630782'),
(48, 'showroom', '0008_auto_20201206_1729', '2020-12-06 17:29:13.235064'),
(49, 'showroom', '0009_auto_20201206_1752', '2020-12-06 17:53:18.894914');

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
('31iuel0aoktxvr6mlqyuk786p1gh29gn', '.eJxVjEEOgjAQRe_StWlopwXq0r1naGY6M4IaSCisjHdXEha6_e-9_zIZt3XIW5Ulj2zOxpnT70ZYHjLtgO843WZb5mldRrK7Yg9a7XVmeV4O9-9gwDp86wjFKzaACqJC4Nl77Thx7LTvSbUlCdAmiKF1jAGJi0sxSdMHQArm_QEHjjiX:1klEjh:Au-jaN4agYPusXP3Rt4Z1QJ7S0XnZMtkHva7fJdQTcc', '2020-12-18 17:19:13.654904'),
('f377pxeuy1rczvoc6sd3kdvypnyltm0h', '.eJxVjEEOgjAQRe_StWlopwXq0r1naGY6M4IaSCisjHdXEha6_e-9_zIZt3XIW5Ulj2zOxpnT70ZYHjLtgO843WZb5mldRrK7Yg9a7XVmeV4O9-9gwDp86wjFKzaACqJC4Nl77Thx7LTvSbUlCdAmiKF1jAGJi0sxSdMHQArm_QEHjjiX:1klG3X:Hcw0meNtPGT8lqFLljljido3ejurRR2gprAwRoKl_R4', '2020-12-18 18:43:47.824986');

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
  `complete` tinyint(1) DEFAULT NULL,
  `transaction_id` varchar(200) DEFAULT NULL
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
(2, 50),
(3, 11),
(4, 66),
(5, 17);

-- --------------------------------------------------------

--
-- Table structure for table `showroom_customer`
--

CREATE TABLE `showroom_customer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(254) NOT NULL,
  `password` varchar(50) NOT NULL,
  `location` varchar(255) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `credit_info` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `showroom_manufacturer`
--

CREATE TABLE `showroom_manufacturer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `showroom_product`
--

CREATE TABLE `showroom_product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL CHECK (`quantity` >= 0),
  `year` varchar(4) NOT NULL,
  `img1` varchar(2083) NOT NULL,
  `img2` varchar(2083) NOT NULL,
  `img3` varchar(2083) NOT NULL,
  `img4` varchar(2083) NOT NULL,
  `img5` varchar(2083) NOT NULL,
  `brand_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `showroom_products`
--

CREATE TABLE `showroom_products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img1` varchar(2083) NOT NULL,
  `polymorphic_ctype_id` int(11) DEFAULT NULL,
  `img2` varchar(2083) NOT NULL,
  `img3` varchar(2083) NOT NULL,
  `img4` varchar(2083) NOT NULL,
  `img5` varchar(2083) NOT NULL,
  `year` varchar(4) NOT NULL,
  `price` double NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL CHECK (`quantity` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `showroom_products`
--

INSERT INTO `showroom_products` (`id`, `name`, `img1`, `polymorphic_ctype_id`, `img2`, `img3`, `img4`, `img5`, `year`, `price`, `quantity`) VALUES
(2, 'Bugatti Chiron', 'https://cdn.motor1.com/images/mgl/QMKkB/s1/bugatti-chiron.jpg', 11, '', '', '', '', '####', 0, 0),
(3, 'Porsche 911', 'https://media.autoexpress.co.uk/image/private/s--8hMZnwlT--/t_content-image-full-desktop@1/v1582104904/autoexpress/2019/12/_1665607.jpg', 11, '', '', '', '', '####', 0, 0),
(4, 'Dodge Charger 1966', 'https://www.wallpaperup.com/uploads/wallpapers/2014/10/25/493651/6318edb1442df10e75ca64c8e31653f6.jpg', 11, '', '', '', '', '####', 0, 0),
(5, 'TOYOTA HARRIER', 'http://gijc.jp/wp-content/uploads/2019/11/2017-Toyota-Harrier-Elegance-GR-Sports-4WD-3.jpg', 11, '', '', '', '', '####', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_interface_theme`
--
ALTER TABLE `admin_interface_theme`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_interface_theme_name_30bda70f_uniq` (`name`);

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
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `showroom_manufacturer`
--
ALTER TABLE `showroom_manufacturer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `showroom_product`
--
ALTER TABLE `showroom_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `showroom_products`
--
ALTER TABLE `showroom_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `showroom_products_polymorphic_ctype_id_025285d3_fk_django_co` (`polymorphic_ctype_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_interface_theme`
--
ALTER TABLE `admin_interface_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

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
-- AUTO_INCREMENT for table `showroom_manufacturer`
--
ALTER TABLE `showroom_manufacturer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `showroom_product`
--
ALTER TABLE `showroom_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `showroom_products`
--
ALTER TABLE `showroom_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
-- Constraints for table `showroom_products`
--
ALTER TABLE `showroom_products`
  ADD CONSTRAINT `showroom_products_polymorphic_ctype_id_025285d3_fk_django_co` FOREIGN KEY (`polymorphic_ctype_id`) REFERENCES `django_content_type` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
