-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2024 at 09:33 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `greenmatrixdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogintbl`
--

CREATE TABLE `adminlogintbl` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminlogintbl`
--

INSERT INTO `adminlogintbl` (`id`, `name`, `email`, `password`) VALUES
(1, 'Anchalika', 'anchalika.saxena@gmail.com', '1234567'),
(4, 'Yashasvika Saxena', 'yashasvika.saxena@gmail.com', '159'),
(5, 'Kanishk Swaraj', 'kanishkSwaraj@gmail.com', 'kanu12');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(25, 'Can add form2tbl', 7, 'add_form2tbl'),
(26, 'Can change form2tbl', 7, 'change_form2tbl'),
(27, 'Can delete form2tbl', 7, 'delete_form2tbl'),
(28, 'Can view form2tbl', 7, 'view_form2tbl'),
(29, 'Can add form3tbl1', 8, 'add_form3tbl1'),
(30, 'Can change form3tbl1', 8, 'change_form3tbl1'),
(31, 'Can delete form3tbl1', 8, 'delete_form3tbl1'),
(32, 'Can view form3tbl1', 8, 'view_form3tbl1'),
(33, 'Can add form3tbl2', 9, 'add_form3tbl2'),
(34, 'Can change form3tbl2', 9, 'change_form3tbl2'),
(35, 'Can delete form3tbl2', 9, 'delete_form3tbl2'),
(36, 'Can view form3tbl2', 9, 'view_form3tbl2'),
(37, 'Can add formtbl', 10, 'add_formtbl'),
(38, 'Can change formtbl', 10, 'change_formtbl'),
(39, 'Can delete formtbl', 10, 'delete_formtbl'),
(40, 'Can view formtbl', 10, 'view_formtbl'),
(41, 'Can add recoverytbl', 11, 'add_recoverytbl'),
(42, 'Can change recoverytbl', 11, 'change_recoverytbl'),
(43, 'Can delete recoverytbl', 11, 'delete_recoverytbl'),
(44, 'Can view recoverytbl', 11, 'view_recoverytbl'),
(45, 'Can add signuptbl', 12, 'add_signuptbl'),
(46, 'Can change signuptbl', 12, 'change_signuptbl'),
(47, 'Can delete signuptbl', 12, 'delete_signuptbl'),
(48, 'Can view signuptbl', 12, 'view_signuptbl'),
(49, 'Can add steptbl', 13, 'add_steptbl'),
(50, 'Can change steptbl', 13, 'change_steptbl'),
(51, 'Can delete steptbl', 13, 'delete_steptbl'),
(52, 'Can view steptbl', 13, 'view_steptbl'),
(53, 'Can add item', 14, 'add_item'),
(54, 'Can change item', 14, 'change_item'),
(55, 'Can delete item', 14, 'delete_item'),
(56, 'Can view item', 14, 'view_item');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$720000$37jbWE72RtNMw4BaQnvFXj$JPUF6Cf5Wbyj8Fn+e4JynaP/mTnXhctMbgBg82cZa4Y=', '2024-03-18 14:42:00.534438', 1, 'yashasvika', '', '', '', 1, 1, '2024-03-18 14:41:31.546119');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carttbl`
--

CREATE TABLE `carttbl` (
  `id` int(50) NOT NULL,
  `product_id` int(50) NOT NULL,
  `category_id` int(50) NOT NULL,
  `user_email` varchar(500) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(500) NOT NULL,
  `price` varchar(300) NOT NULL,
  `description` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carttbl`
--

INSERT INTO `carttbl` (`id`, `product_id`, `category_id`, `user_email`, `name`, `image`, `price`, `description`) VALUES
(12, 9, 0, '', 'Fruit Basket', 'fruit_basket.jpg', '360', 'Crazy Fruit Basket that is beautiful and compact at the same time');

-- --------------------------------------------------------

--
-- Table structure for table `cart_item`
--

CREATE TABLE `cart_item` (
  `id` bigint(20) NOT NULL,
  `product_id` varchar(10) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `product_image` varchar(500) NOT NULL,
  `product_price` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `image`) VALUES
(1, 'Citrus Fruits', 'citrus_fruits.jpg'),
(3, 'Melons', 'melons.jpg'),
(4, 'Exotic Fruits', 'exotic_fruit_l9H5IRh.jpg'),
(5, 'Tropical Fruits', 'tropical_fruit_gviubTL.jpeg'),
(6, 'Berries', 'berry_cuTp0Nw.jpg'),
(7, 'Stone Fruits', 'stone_fruits_Pn3zJHx.jpg');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(7, 'agapp', 'form2tbl'),
(8, 'agapp', 'form3tbl1'),
(9, 'agapp', 'form3tbl2'),
(10, 'agapp', 'formtbl'),
(14, 'agapp', 'item'),
(11, 'agapp', 'recoverytbl'),
(12, 'agapp', 'signuptbl'),
(13, 'agapp', 'steptbl'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-03-18 14:38:22.337213'),
(2, 'auth', '0001_initial', '2024-03-18 14:38:23.885298'),
(3, 'admin', '0001_initial', '2024-03-18 14:38:24.181024'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-03-18 14:38:24.193285'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-03-18 14:38:24.202571'),
(6, 'agapp', '0001_initial', '2024-03-18 14:38:24.523989'),
(7, 'agapp', '0002_item', '2024-03-18 14:38:24.555239'),
(8, 'contenttypes', '0002_remove_content_type_name', '2024-03-18 14:38:24.705950'),
(9, 'auth', '0002_alter_permission_name_max_length', '2024-03-18 14:38:24.850648'),
(10, 'auth', '0003_alter_user_email_max_length', '2024-03-18 14:38:24.881289'),
(11, 'auth', '0004_alter_user_username_opts', '2024-03-18 14:38:24.894010'),
(12, 'auth', '0005_alter_user_last_login_null', '2024-03-18 14:38:24.991574'),
(13, 'auth', '0006_require_contenttypes_0002', '2024-03-18 14:38:25.004103'),
(14, 'auth', '0007_alter_validators_add_error_messages', '2024-03-18 14:38:25.015435'),
(15, 'auth', '0008_alter_user_username_max_length', '2024-03-18 14:38:25.042302'),
(16, 'auth', '0009_alter_user_last_name_max_length', '2024-03-18 14:38:25.084011'),
(17, 'auth', '0010_alter_group_name_max_length', '2024-03-18 14:38:25.123911'),
(18, 'auth', '0011_update_proxy_permissions', '2024-03-18 14:38:25.139666'),
(19, 'auth', '0012_alter_user_first_name_max_length', '2024-03-18 14:38:25.166138'),
(20, 'sessions', '0001_initial', '2024-03-18 14:38:25.248158');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1be4z3h1fvpgtmevbw1i9iln1nsmk3zj', 'eyJ1c2VyIjoiQmFpamFsYW5zaGlrYTE5QGdtYWlsLmNvbSJ9:1rtZki:i85JeZKgQHtxNah9jTdjNBsm5BieyCImwKJSHukVxoM', '2024-04-21 21:08:36.379492'),
('msgathsj9buwjstjrkmq2hw09a49o4jp', '.eJxVzk0OgjAQBeC7dG0a-iMUV8a9ZyDTzhQqUBIKJsZ4d9uEhWZ28958mTfrYN-Gbk-0dgHZhQl2-t1ZcCPFEuADYr9wt8RtDZaXCj_SxO8L0nQ7un_AAGko16YhVLUyovYNCvLaoHFS2DxeYuurszOGlEZsnFRWImgSaKtWY6VIZbRwWXplENIzjHDtZwhT_mhmny8rUUL4:1rsHi1:jEId894XcfeaYRFhDL13_IHssepvx3Lkdk7yxQtR8oc', '2024-04-18 07:40:29.743202'),
('xwvao9sjfljm45yd2ul55lancl3f2u4l', 'eyJ1c2VyIjoicmF2aUBnbWFpbC5jb20ifQ:1rt2UP:pJBMkoHcEgT7GIsgyaqsScKYaHh63600BVVuHkGRlyc', '2024-04-20 09:37:33.225501');

-- --------------------------------------------------------

--
-- Table structure for table `form2tbl`
--

CREATE TABLE `form2tbl` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `city` varchar(50) NOT NULL,
  `course` varchar(50) NOT NULL,
  `age` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `form3tbl1`
--

CREATE TABLE `form3tbl1` (
  `id` bigint(20) NOT NULL,
  `name` varchar(500) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `city` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `form3tbl2`
--

CREATE TABLE `form3tbl2` (
  `id` bigint(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `formtbl`
--

CREATE TABLE `formtbl` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `city` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `quantity` int(50) NOT NULL,
  `Availability` varchar(500) NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id`, `name`, `price`, `description`, `quantity`, `Availability`, `image`) VALUES
(6, 'Grinding Jar', 435, 'A grinding Jar that blends everything.', 0, '', 'grinding_jar.jpg'),
(7, 'Knife Sets', 290, 'A set of sharp and beautiful knives', 0, '', 'knife_sets.jpg'),
(8, 'Fruit Containers', 540, 'Plastic Food Containers that can be used for the storage purpose', 0, '', 'fruit_containers.jpg'),
(9, 'Fruit Basket', 360, 'Crazy Fruit Basket that is beautiful and compact at the same time', 0, '', 'fruit_basket.jpg'),
(11, 'Tote Bags', 110, 'Cotton Fruit Vegetable Net Shopping Storage Bag Market. Cute eco-friendly tote-bags.', 0, '', 'tote_bag.jpg'),
(12, 'Reusable Bags', 499, 'They are easy to clean and are ideal storage solution for any Kitchen cabinet, Fridge or Pantry. Mesh fabric of the bag allows the fruits and vegetables to breathe naturally thus increasing their life.', 0, '', 'reusable_vegetable_bag.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `cart_id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` int(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `country` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `pincode` int(10) NOT NULL,
  `notes` varchar(100) NOT NULL,
  `tracking` varchar(20) NOT NULL,
  `productname` varchar(200) NOT NULL,
  `productdesc` varchar(100) NOT NULL,
  `productprice` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `product_id`, `cart_id`, `name`, `email`, `phone`, `address`, `country`, `state`, `pincode`, `notes`, `tracking`, `productname`, `productdesc`, `productprice`) VALUES
(1, 0, 0, 1, 'Anshika', 'Baijalanshika19@gmail.com', 2147483647, 'Gomti nagar', 'IN', '0', 226010, 'Don\'t ring the bell', '', '0', '', ''),
(6, 0, 0, 7, 'anu', 'anu@gmail.com', 2147483647, 'lko\r\nlko', 'JP', '0', 226017, '', '', '0', '', ''),
(7, 0, 0, 7, 'Yashasvika', 'yashasvika@gmail.com', 2147483647, 'lko\r\nlko', 'IN', '0', 226017, '', '', '0', '', ''),
(8, 0, 0, 7, 'Arun Bhaiya', 'arunbhaiya@gmail.com', 2147483647, 'dkl;av LOOKIINN', 'IN', 'MN', 72627, 'azv', '', '0', '', ''),
(11, 0, 0, 7, 'Pandey Arun', 'pandey@gmail.com', 2147483647, 'Kanpur', 'IN', 'MH', 444110, 'mithe fruits', '', 'Fruit Containers', '', ''),
(12, 0, 0, 10, 'Anu', 'anu07@yahoo.com', 2147483647, 'KA/ LV 380, Near Ikart online delivery agency, near Para Road', 'IN', 'UP', 226098, 'Share it soon!', '', 'Anu', 'No preservative, additive or colorant. Free of chemicals.', '50'),
(13, 0, 0, 7, 'qwerr', 'qw@qe.c', 14213124, '153qtfaf', 'IN', 'MN', 3525, 'ok', '', 'Fruit Containers', 'Plastic Food Containers that can be used for the storage purpose', '540'),
(14, 0, 0, 8, 'Shagun Awasthi', 'shagun@gmail.com', 2147483647, 'C-234, Munshipullia, Lucknow', 'IN', 'UP', 226018, 'Deliver me Soon!', '', 'Orange', 'Oranges are citrus fruits renowned for their bright orange color, tangy-sweet flavor, and juicy fles', '90'),
(15, 0, 0, 11, 'Anchalika Saxena', 'anchalika.saxena17@gmail.com', 2147483647, 'F3285, Rajajipuram. Near Chaman Masjid.', 'IN', 'UP', 226017, 'Give me the best quality Guavas. Heheee. No compromise.', '', 'Guava', 'Psidium is a genus of trees and shrubs in the family Myrtaceae', '80'),
(16, 0, 0, 12, 'Shagun Awasthi', 'shagun.03@gmail.com', 2147483647, '12/4F Munshipuliya, Lucknow', 'IN', 'UP', 227012, 'A perfect website.', '', 'Fruit Basket', 'Crazy Fruit Basket that is beautiful and compact at the same time', '360');

-- --------------------------------------------------------

--
-- Table structure for table `ratingreviewtbl`
--

CREATE TABLE `ratingreviewtbl` (
  `id` int(10) NOT NULL,
  `catid` int(5) NOT NULL,
  `email` varchar(100) NOT NULL,
  `review` varchar(500) NOT NULL,
  `rating` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ratingreviewtbl`
--

INSERT INTO `ratingreviewtbl` (`id`, `catid`, `email`, `review`, `rating`) VALUES
(11, 3, 'Baijalanshika19@gmail.com', 'Product are very fresh', 3),
(12, 3, 'Baijalanshika19@gmail.com', 'Product are very fresh', 3),
(13, 7, 'alma.hermosaaaa@gmail.com', 'In good condition and are of good quality.', 5),
(15, 6, 'baijalanshika19@gmail.com', 'Hello', 3),
(19, 6, 'nmzn@gmail.com', 'No sound grinder.', 5);

-- --------------------------------------------------------

--
-- Table structure for table `recoverytbl`
--

CREATE TABLE `recoverytbl` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `city` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `signuptbl`
--

CREATE TABLE `signuptbl` (
  `id` bigint(20) NOT NULL,
  `image` varchar(500) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `bio` varchar(600) NOT NULL,
  `otp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signuptbl`
--

INSERT INTO `signuptbl` (`id`, `image`, `name`, `email`, `password`, `bio`, `otp`) VALUES
(18, '', 'Anshika', 'Baijalanshika19@gmail.com', '123', 'Hello', ''),
(19, 'WhatsApp_Image_2024-03-17_at_08.14.41_ffbfd4af_9ewVprH.jpg', 'Shagun', 'shagun@gmail.com', '147', '', '17001'),
(20, '', 'Anshika Baijal', 'anshika.baijal.official@gmail.com', '159', 'Hi', ''),
(21, 'WhatsApp_Image_2024-03-17_at_08.14.41_ffbfd4af.jpg', 'Yashasvika', 'yashasvika.saxena@gmail.com', '123', 'i am a fruit lover. hehe', ''),
(22, '', 'Anchalika Saxena', 'anchalika.saxena17@gmail.com', 'tingu', '', '68325');

-- --------------------------------------------------------

--
-- Table structure for table `steptbl`
--

CREATE TABLE `steptbl` (
  `id` bigint(20) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `fathername` varchar(100) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `address` varchar(500) NOT NULL,
  `pincode` varchar(20) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(50) NOT NULL,
  `category_id` int(50) NOT NULL,
  `name` varchar(300) NOT NULL,
  `price` int(100) NOT NULL,
  `description` varchar(600) NOT NULL,
  `image` varchar(500) NOT NULL,
  `quantity` int(50) NOT NULL,
  `availability` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `category_id`, `name`, `price`, `description`, `image`, `quantity`, `availability`) VALUES
(2, 2, 'Papaya', 40, 'This is papaya.', 'papaya.jpeg', 0, 'In Stock'),
(3, 1, 'Orange', 90, 'Oranges are citrus fruits renowned for their bright orange color, tangy-sweet flavor, and juicy flesh. Rich in vitamin C and antioxidants, oranges offer numerous health benefits, including immune support and skin health. Whether enjoyed fresh as a snack, juiced for a refreshing beverage, or incorporated into salads, desserts, and savory dishes, oranges add a burst of citrusy flavor and vibrant color to culinary creations. With their refreshing taste and nutritional value, oranges are a beloved fruit enjoyed by people of all ages around the world.', 'orange.jpeg', 0, 'In Stock'),
(4, 3, 'Watermelon', 88, 'Watermelon is a refreshing and hydrating fruit characterized by its juicy, sweet flesh and green outer rind with distinctive stripes or spots. Packed with water and essential nutrients like vitamins A and C, watermelon is not only delicious but also beneficial for hydration and overall health. Whether enjoyed sliced, cubed, or blended into refreshing drinks, watermelon is a summertime favorite, perfect for picnics, barbecues, and hot days by the pool. With its crisp texture and naturally sweet flavor, watermelon is a versatile fruit that delights taste buds and quenches thirst alike.', 'watermelon.jpg', 0, 'In Stock'),
(6, 1, 'Lime', 50, 'No preservative, additive or colorant. Free of chemicals.', 'lime.jpg', 0, 'In Stock'),
(7, 4, 'Lychee', 114, 'Enjoy the taste of fresh lychee with this 2 pound box grown ', 'lychee.jpg', 0, 'In Stock'),
(8, 5, 'Mango', 429, 'Mangoes are tropical fruit from the drupe family. This means they have a single large seed or stone in the middle. Sometimes called the “king of fruits,” mangoes are one of the most widely consumed fruits in the world.', 'mango.jpg', 0, 'In Stock'),
(9, 5, 'Guava', 80, 'Psidium is a genus of trees and shrubs in the family Myrtaceae', 'GUAVA.jpg', 0, 'In Stock');

-- --------------------------------------------------------

--
-- Table structure for table `wishlisttbl`
--

CREATE TABLE `wishlisttbl` (
  `id` int(50) NOT NULL,
  `product_id` int(50) NOT NULL,
  `category_id` int(50) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(500) NOT NULL,
  `price` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminlogintbl`
--
ALTER TABLE `adminlogintbl`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `carttbl`
--
ALTER TABLE `carttbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_item`
--
ALTER TABLE `cart_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
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
-- Indexes for table `form2tbl`
--
ALTER TABLE `form2tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form3tbl1`
--
ALTER TABLE `form3tbl1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form3tbl2`
--
ALTER TABLE `form3tbl2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `formtbl`
--
ALTER TABLE `formtbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratingreviewtbl`
--
ALTER TABLE `ratingreviewtbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recoverytbl`
--
ALTER TABLE `recoverytbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signuptbl`
--
ALTER TABLE `signuptbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `steptbl`
--
ALTER TABLE `steptbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlisttbl`
--
ALTER TABLE `wishlisttbl`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminlogintbl`
--
ALTER TABLE `adminlogintbl`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

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
-- AUTO_INCREMENT for table `carttbl`
--
ALTER TABLE `carttbl`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `cart_item`
--
ALTER TABLE `cart_item`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43214;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `form2tbl`
--
ALTER TABLE `form2tbl`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form3tbl1`
--
ALTER TABLE `form3tbl1`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form3tbl2`
--
ALTER TABLE `form3tbl2`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `formtbl`
--
ALTER TABLE `formtbl`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `ratingreviewtbl`
--
ALTER TABLE `ratingreviewtbl`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `recoverytbl`
--
ALTER TABLE `recoverytbl`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `signuptbl`
--
ALTER TABLE `signuptbl`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `steptbl`
--
ALTER TABLE `steptbl`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `wishlisttbl`
--
ALTER TABLE `wishlisttbl`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
