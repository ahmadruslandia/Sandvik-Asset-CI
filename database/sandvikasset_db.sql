-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Okt 2023 pada 13.50
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sandvikasset_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_about`
--

CREATE TABLE `tbl_about` (
  `about_id` int(11) NOT NULL,
  `about_address` varchar(255) NOT NULL,
  `about_email` varchar(60) NOT NULL,
  `about_telephone` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_about`
--

INSERT INTO `tbl_about` (`about_id`, `about_address`, `about_email`, `about_telephone`) VALUES
(1, 'PT. Sandvik SMC, Kuala Kencana, Light Industrial Park, Timika, Papua, Indonesia 99920', 'email.domain@sandvik.com', '(+62) 000 - 0000 - 0000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(200) DEFAULT NULL,
  `category_slug` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`, `category_slug`) VALUES
(4, 'Internship', 'internship');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `comment_id` int(11) NOT NULL,
  `comment_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `comment_name` varchar(60) DEFAULT NULL,
  `comment_email` varchar(90) DEFAULT NULL,
  `comment_message` text,
  `comment_status` int(11) DEFAULT '0',
  `comment_parent` int(11) DEFAULT '0',
  `comment_post_id` int(11) DEFAULT NULL,
  `comment_image` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_comment`
--

INSERT INTO `tbl_comment` (`comment_id`, `comment_date`, `comment_name`, `comment_email`, `comment_message`, `comment_status`, `comment_parent`, `comment_post_id`, `comment_image`) VALUES
(1, '2023-08-01 13:31:12', 'user 01', 'email.domain1@sandvik.com', 'TESTING COMENT PUBLIC', 1, 0, 10, 'user_blank.png'),
(2, '2023-08-01 13:31:53', 'user 02', 'email.domain2@sandvik.com', 'TESTING COMENT PRIVATE', 0, 0, 10, 'user_blank.png'),
(3, '2023-08-01 13:34:52', 'Ahmad Ruslandia Papua', 'rusland@gmail.com', 'DONE!', 1, 1, 10, '77edf38f554a81720bdd59b4f9d3ea38.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_docking`
--

CREATE TABLE `tbl_docking` (
  `id_docking` int(11) NOT NULL,
  `assets_number` varchar(250) NOT NULL,
  `assets_name` varchar(250) NOT NULL,
  `model` varchar(250) NOT NULL,
  `brand` varchar(250) NOT NULL,
  `serial_number` varchar(150) NOT NULL,
  `user_di` varchar(100) NOT NULL,
  `locations` varchar(250) NOT NULL,
  `jenis_aktivasi` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_handphone`
--

CREATE TABLE `tbl_handphone` (
  `id_handphone` int(11) NOT NULL,
  `street_address` varchar(250) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `model` varchar(250) NOT NULL,
  `departement` varchar(250) NOT NULL,
  `user_id` varchar(150) NOT NULL,
  `email` varchar(250) NOT NULL,
  `jenis_aktivasi` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_hdd`
--

CREATE TABLE `tbl_hdd` (
  `id_hdd` int(11) NOT NULL,
  `assets_number` varchar(250) NOT NULL,
  `assets_name` varchar(250) NOT NULL,
  `capacity` varchar(50) NOT NULL,
  `model` varchar(250) NOT NULL,
  `brand` varchar(250) NOT NULL,
  `serial_number` varchar(150) NOT NULL,
  `mac_address` varchar(150) NOT NULL,
  `room` varchar(250) NOT NULL,
  `jenis_aktivasi` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_headset`
--

CREATE TABLE `tbl_headset` (
  `id_headset` int(11) NOT NULL,
  `assets_number` varchar(250) NOT NULL,
  `assets_name` varchar(250) NOT NULL,
  `model` varchar(250) NOT NULL,
  `brand` varchar(250) NOT NULL,
  `serial_number` varchar(150) NOT NULL,
  `room` varchar(250) NOT NULL,
  `jenis_aktivasi` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_home`
--

CREATE TABLE `tbl_home` (
  `home_id` int(11) NOT NULL,
  `home_caption_1` varchar(200) DEFAULT NULL,
  `home_caption_2` varchar(200) DEFAULT NULL,
  `home_bg_heading` varchar(50) DEFAULT NULL,
  `home_bg_testimonial` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_home`
--

INSERT INTO `tbl_home` (`home_id`, `home_caption_1`, `home_caption_2`, `home_bg_heading`, `home_bg_testimonial`) VALUES
(1, 'SANDVIK ASSET MANAGEMENT', 'Sandvik Asset Management, make it easy to manage all data property.', 'ad8i13814.jpg', 'PicsArt_07-17-11_26_292.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_ht`
--

CREATE TABLE `tbl_ht` (
  `id_ht` int(11) NOT NULL,
  `assets_number` varchar(250) NOT NULL,
  `network_id` varchar(250) NOT NULL,
  `date_manufacture` date NOT NULL,
  `model` varchar(250) NOT NULL,
  `brand` varchar(250) NOT NULL,
  `serial_number` varchar(150) NOT NULL,
  `mac_address` varchar(150) NOT NULL,
  `type_ht` varchar(150) NOT NULL,
  `warranty` varchar(200) NOT NULL,
  `jenis_aktivasi` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_ipclock`
--

CREATE TABLE `tbl_ipclock` (
  `id_ipclock` int(11) NOT NULL,
  `assets_number` varchar(250) NOT NULL,
  `assets_name` varchar(250) NOT NULL,
  `model` varchar(250) NOT NULL,
  `brand` varchar(250) NOT NULL,
  `po` varchar(100) NOT NULL,
  `mac_address` varchar(150) NOT NULL,
  `ip` varchar(100) NOT NULL,
  `locations` varchar(250) NOT NULL,
  `jenis_aktivasi` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_jenis`
--

CREATE TABLE `tbl_jenis` (
  `id_jenis` int(11) NOT NULL,
  `nama_jenis` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_jenis`
--

INSERT INTO `tbl_jenis` (`id_jenis`, `nama_jenis`) VALUES
(6, 'Aktif'),
(7, 'Tidak Aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_keyboard`
--

CREATE TABLE `tbl_keyboard` (
  `id_keyboard` int(11) NOT NULL,
  `assets_number` varchar(250) NOT NULL,
  `assets_name` varchar(250) NOT NULL,
  `model` varchar(250) NOT NULL,
  `brand` varchar(250) NOT NULL,
  `serial_number` varchar(150) NOT NULL,
  `room` varchar(250) NOT NULL,
  `jenis_aktivasi` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_laptop`
--

CREATE TABLE `tbl_laptop` (
  `id_laptop` int(11) NOT NULL,
  `assets_number` varchar(250) NOT NULL,
  `assets_name` varchar(250) NOT NULL,
  `laptop_date` date NOT NULL,
  `laptop_model` varchar(250) NOT NULL,
  `brand` varchar(250) NOT NULL,
  `user_di` varchar(250) NOT NULL,
  `serial_number` varchar(150) NOT NULL,
  `mac_address` varchar(150) NOT NULL,
  `hard_disk` varchar(150) NOT NULL,
  `processor` varchar(200) NOT NULL,
  `operating_system` varchar(250) NOT NULL,
  `room` varchar(250) NOT NULL,
  `jenis_aktivasi` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_lcdprojector`
--

CREATE TABLE `tbl_lcdprojector` (
  `id_lcdprojector` int(11) NOT NULL,
  `assets_number` varchar(250) NOT NULL,
  `assets_name` varchar(250) NOT NULL,
  `capacity` varchar(50) NOT NULL,
  `lcd_projector` varchar(250) NOT NULL,
  `serial_number` varchar(150) NOT NULL,
  `room` varchar(250) NOT NULL,
  `jenis_aktivasi` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_monitor`
--

CREATE TABLE `tbl_monitor` (
  `id_monitor` int(11) NOT NULL,
  `assets_number` varchar(250) NOT NULL,
  `assets_name` varchar(250) NOT NULL,
  `monitor_date` date NOT NULL,
  `monitor_model` varchar(250) NOT NULL,
  `brand` varchar(250) NOT NULL,
  `user_di` varchar(250) NOT NULL,
  `serial_number` varchar(150) NOT NULL,
  `mac_address` varchar(150) NOT NULL,
  `operating_system` varchar(250) NOT NULL,
  `room` varchar(250) NOT NULL,
  `jenis_aktivasi` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_navbar`
--

CREATE TABLE `tbl_navbar` (
  `navbar_id` int(11) NOT NULL,
  `navbar_name` varchar(50) DEFAULT NULL,
  `navbar_slug` varchar(200) DEFAULT NULL,
  `navbar_parent_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_navbar`
--

INSERT INTO `tbl_navbar` (`navbar_id`, `navbar_name`, `navbar_slug`, `navbar_parent_id`) VALUES
(1, 'Home', NULL, 0),
(15, 'News', 'blog', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_network`
--

CREATE TABLE `tbl_network` (
  `id_network` int(11) NOT NULL,
  `assets_number` varchar(250) NOT NULL,
  `network_id` varchar(250) NOT NULL,
  `date_manufacture` date NOT NULL,
  `model` varchar(250) NOT NULL,
  `brand` varchar(250) NOT NULL,
  `serial_number` varchar(150) NOT NULL,
  `mac_address` varchar(150) NOT NULL,
  `type_network` varchar(150) NOT NULL,
  `warranty` varchar(200) NOT NULL,
  `jenis_aktivasi` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_orbit`
--

CREATE TABLE `tbl_orbit` (
  `id_orbit` int(11) NOT NULL,
  `assets_number` varchar(250) NOT NULL,
  `assets_name` varchar(250) NOT NULL,
  `model` varchar(250) NOT NULL,
  `brand` varchar(250) NOT NULL,
  `po` varchar(100) NOT NULL,
  `serial_number` varchar(150) NOT NULL,
  `imei` varchar(100) NOT NULL,
  `locations` varchar(250) NOT NULL,
  `jenis_aktivasi` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pc`
--

CREATE TABLE `tbl_pc` (
  `id_pc` int(11) NOT NULL,
  `assets_number` varchar(250) NOT NULL,
  `assets_name` varchar(250) NOT NULL,
  `pc_date` date NOT NULL,
  `pc_model` varchar(250) NOT NULL,
  `brand` varchar(250) NOT NULL,
  `user_di` varchar(250) NOT NULL,
  `serial_number` varchar(150) NOT NULL,
  `mac_address` varchar(150) NOT NULL,
  `hard_disk` varchar(150) NOT NULL,
  `processor` varchar(200) NOT NULL,
  `operating_system` varchar(250) NOT NULL,
  `room` varchar(250) NOT NULL,
  `jenis_aktivasi` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_post`
--

CREATE TABLE `tbl_post` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(250) DEFAULT NULL,
  `post_description` text,
  `post_contents` longtext,
  `post_image` varchar(40) DEFAULT NULL,
  `post_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `post_last_update` datetime DEFAULT NULL,
  `post_category_id` int(11) DEFAULT NULL,
  `post_tags` varchar(225) DEFAULT NULL,
  `post_slug` varchar(250) DEFAULT NULL,
  `post_status` int(11) DEFAULT NULL COMMENT '1=Publish, 0=Unpublish',
  `post_views` int(11) DEFAULT '0',
  `post_user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_post`
--

INSERT INTO `tbl_post` (`post_id`, `post_title`, `post_description`, `post_contents`, `post_image`, `post_date`, `post_last_update`, `post_category_id`, `post_tags`, `post_slug`, `post_status`, `post_views`, `post_user_id`) VALUES
(10, 'Internship Student', '', '<p style=\"text-align: center; \"><img src=\"http://localhost/sandvikasset/assets/images/d6e9b4ed3d9dc8abc33b8ce8c2fef0431.jpg\" class=\"img-thumbnail\" style=\"width: 100%;\"><br></p><p style=\"text-align: center; \"><br></p><p><span style=\"color: rgb(66, 66, 66);\">Hi! my name is ahmad ruslandia, i am a one-month summer intern at sandvik in Light Insdustrial park.</span></p><p><span style=\"color: rgb(66, 66, 66);\"><br></span></p><p><span style=\"color: rgb(66, 66, 66);\">I was 21 years old and staying in Timika for the job summer, i will then be going to studies in Makassar where iam currently studying computer science at Universitas Muslim Indonesia.</span></p><p><span style=\"color: rgb(66, 66, 66);\"> What iam enjoys about working in Sandvik (IT Support) is the enthusiasm of the team being eager to help interns to learn new things.</span></p><p><span style=\"color: rgb(0, 0, 0);\"><br></span></p><p><span style=\"color: rgb(0, 0, 0);\"><br></span></p><p><br></p>', 'd6e9b4ed3d9dc8abc33b8ce8c2fef043.jpg', '2023-07-28 15:19:23', '2023-10-02 00:32:11', 4, '', 'internship-student', 1, 23, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_post_views`
--

CREATE TABLE `tbl_post_views` (
  `view_id` int(11) NOT NULL,
  `view_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `view_ip` varchar(50) DEFAULT NULL,
  `view_post_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_post_views`
--

INSERT INTO `tbl_post_views` (`view_id`, `view_date`, `view_ip`, `view_post_id`) VALUES
(1, '2019-04-06 13:33:39', '::1', 6),
(2, '2019-04-06 23:04:18', '::1', 6),
(3, '2019-04-07 03:32:54', '::1', 5),
(4, '2019-04-07 03:33:14', '::1', 4),
(5, '2019-04-07 04:03:50', '::1', 3),
(6, '2019-04-09 12:19:36', '::1', 6),
(7, '2019-04-09 13:28:30', '::1', 4),
(8, '2019-04-10 01:33:10', '::1', 5),
(9, '2019-04-10 10:00:27', '::1', 2),
(10, '2019-04-10 10:58:17', '::1', 1),
(11, '2019-04-10 13:20:32', '::1', 3),
(12, '2019-04-10 13:20:46', '::1', 6),
(13, '2019-04-11 03:32:18', '::1', 6),
(14, '2019-04-11 04:24:22', '::1', 4),
(15, '2019-04-11 07:58:35', '::1', 2),
(16, '2019-04-12 04:23:04', '::1', 6),
(17, '2019-04-12 10:09:30', '::1', 5),
(18, '2019-04-13 01:42:27', '::1', 6),
(19, '2019-04-13 02:01:01', '::1', 5),
(20, '2019-04-13 02:01:18', '::1', 3),
(21, '2019-04-13 03:23:34', '::1', 4),
(22, '2019-04-14 01:39:17', '::1', 1),
(23, '2019-04-14 03:24:24', '::1', 3),
(24, '2019-04-14 04:08:24', '::1', 2),
(25, '2019-04-15 03:44:42', '::1', 6),
(26, '2019-12-19 02:28:13', '::1', 6),
(27, '2019-12-19 02:29:33', '::1', 7),
(28, '2019-12-28 03:44:29', '::1', 7),
(29, '2019-12-28 07:44:18', '::1', 3),
(30, '2019-12-28 07:44:24', '::1', 2),
(31, '2019-12-28 08:06:56', '::1', 6),
(32, '2019-12-30 03:36:11', '::1', 4),
(33, '2019-12-30 04:21:54', '::1', 7),
(34, '2019-12-31 02:54:27', '::1', 4),
(35, '2019-12-31 02:58:04', '::1', 7),
(36, '2019-12-31 02:59:37', '::1', 1),
(37, '2019-12-31 03:58:35', '::1', 6),
(38, '2020-01-01 02:54:01', '::1', 7),
(39, '2020-01-01 03:19:14', '::1', 6),
(40, '2020-01-02 02:05:56', '::1', 4),
(41, '2020-01-02 03:16:32', '::1', 7),
(42, '2020-01-02 03:24:37', '::1', 1),
(43, '2020-01-03 03:20:23', '::1', 3),
(44, '2020-01-03 03:21:18', '::1', 6),
(45, '2020-01-03 04:03:10', '::1', 7),
(46, '2020-01-04 03:59:33', '::1', 5),
(47, '2020-01-04 04:04:33', '::1', 11),
(48, '2020-01-04 04:06:22', '::1', 10),
(49, '2020-01-04 04:23:16', '::1', 16),
(50, '2020-01-04 05:51:45', '::1', 15),
(51, '2020-01-07 03:12:53', '::1', 15),
(52, '2020-01-12 04:42:18', '::1', 9),
(53, '2021-07-17 06:10:56', '::1', 1),
(54, '2021-07-17 06:24:19', '::1', 2),
(55, '2021-07-17 10:50:46', '::1', 10),
(56, '2021-07-17 10:52:23', '::1', 11),
(57, '2021-07-18 04:11:39', '::1', 2),
(58, '2021-07-18 06:02:10', '::1', 12),
(59, '2021-07-18 06:15:44', '::1', 1),
(60, '2021-07-24 12:56:28', '::1', 1),
(61, '2021-07-24 13:23:28', '::1', 13),
(62, '2022-08-02 09:08:43', '::1', 1),
(63, '2022-08-03 11:32:48', '::1', 1),
(64, '2022-08-06 17:07:16', '::1', 1),
(65, '2022-08-30 14:28:16', '::1', 1),
(66, '2023-01-28 14:30:43', '::1', 1),
(67, '2023-01-29 16:57:15', '::1', 1),
(68, '2023-02-03 07:56:57', '::1', 1),
(69, '2023-07-26 12:01:11', '::1', 1),
(70, '2023-07-26 23:11:33', '::1', 1),
(71, '2023-07-27 04:34:50', '::1', 2),
(72, '2023-07-27 04:45:13', '::1', 3),
(73, '2023-07-28 05:47:20', '::1', 3),
(74, '2023-07-28 06:59:23', '::1', 4),
(75, '2023-07-28 07:55:35', '::1', 5),
(76, '2023-07-28 12:49:57', '::1', 6),
(77, '2023-07-28 12:53:09', '::1', 7),
(78, '2023-07-28 13:37:02', '::1', 8),
(79, '2023-07-28 13:57:57', '::1', 9),
(80, '2023-07-28 15:19:35', '::1', 10),
(81, '2023-07-29 02:51:43', '::1', 10),
(82, '2023-07-30 01:54:23', '::1', 10),
(83, '2023-07-30 01:55:41', '::1', 11),
(84, '2023-07-30 22:16:14', '::1', 10),
(85, '2023-08-01 12:31:52', '::1', 10),
(86, '2023-08-07 10:41:13', '::1', 10),
(87, '2023-08-07 10:52:32', '::1', 11),
(88, '2023-08-07 16:12:06', '::1', 10),
(89, '2023-08-09 06:44:26', '::1', 10),
(90, '2023-08-10 03:14:30', '::1', 10),
(91, '2023-08-10 16:48:47', '::1', 10),
(92, '2023-08-12 08:38:24', '127.0.0.1', 10),
(93, '2023-08-12 10:15:43', '::1', 10),
(94, '2023-08-13 08:46:05', '::1', 10),
(95, '2023-08-15 06:36:37', '::1', 10),
(96, '2023-08-16 01:55:03', '::1', 10),
(97, '2023-08-17 14:03:32', '::1', 10),
(98, '2023-08-18 12:31:05', '::1', 10),
(99, '2023-08-19 09:16:02', '::1', 10),
(100, '2023-08-21 08:30:18', '::1', 10),
(101, '2023-08-23 10:16:30', '::1', 10),
(102, '2023-10-01 16:05:14', '::1', 10),
(103, '2023-10-04 13:40:35', '::1', 10),
(104, '2023-10-06 11:17:40', '::1', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_printer`
--

CREATE TABLE `tbl_printer` (
  `id_printer` int(11) NOT NULL,
  `assets_number` varchar(250) NOT NULL,
  `assets_name` varchar(250) NOT NULL,
  `model` varchar(250) NOT NULL,
  `brand` varchar(250) NOT NULL,
  `serial_number` varchar(150) NOT NULL,
  `room` varchar(250) NOT NULL,
  `jenis_aktivasi` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_scanner`
--

CREATE TABLE `tbl_scanner` (
  `id_scanner` int(11) NOT NULL,
  `assets_number` varchar(250) NOT NULL,
  `assets_name` varchar(250) NOT NULL,
  `model` varchar(250) NOT NULL,
  `brand` varchar(250) NOT NULL,
  `serial_number` varchar(150) NOT NULL,
  `room` varchar(250) NOT NULL,
  `jenis_aktivasi` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_site`
--

CREATE TABLE `tbl_site` (
  `site_id` int(11) NOT NULL,
  `site_name` varchar(100) DEFAULT NULL,
  `site_title` varchar(200) DEFAULT NULL,
  `site_description` text,
  `site_favicon` varchar(50) DEFAULT NULL,
  `site_logo_header` varchar(50) DEFAULT NULL,
  `site_logo_footer` varchar(50) DEFAULT NULL,
  `site_logo_big` varchar(50) DEFAULT NULL,
  `site_facebook` varchar(150) DEFAULT NULL,
  `site_twitter` varchar(150) DEFAULT NULL,
  `site_instagram` varchar(150) DEFAULT NULL,
  `site_pinterest` varchar(150) DEFAULT NULL,
  `site_linkedin` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_site`
--

INSERT INTO `tbl_site` (`site_id`, `site_name`, `site_title`, `site_description`, `site_favicon`, `site_logo_header`, `site_logo_footer`, `site_logo_big`, `site_facebook`, `site_twitter`, `site_instagram`, `site_pinterest`, `site_linkedin`) VALUES
(1, 'SANDIVIK - ASSET 2020', 'Home', 'We are forward thinkers, driven by our passion to continuosly innovate smarter solutions and enable importants shifts.', 'Picsart_23-07-27_12-53-35-584.jpg', 'logo.png', 'logo.png', 'nwdn_file_temp_16097665861841.jpg', '#', '#', '#', '#', '#');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_tablet`
--

CREATE TABLE `tbl_tablet` (
  `id_tablet` int(11) NOT NULL,
  `assets_number` varchar(250) NOT NULL,
  `assets_name` varchar(250) NOT NULL,
  `tablet_date` date NOT NULL,
  `model` varchar(250) NOT NULL,
  `brand` varchar(250) NOT NULL,
  `user_di` varchar(250) NOT NULL,
  `serial_number` varchar(150) NOT NULL,
  `mac_address` varchar(150) NOT NULL,
  `hard_disk` varchar(150) NOT NULL,
  `operating_system` varchar(250) NOT NULL,
  `room` varchar(250) NOT NULL,
  `jenis_aktivasi` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_tags`
--

CREATE TABLE `tbl_tags` (
  `tag_id` int(11) NOT NULL,
  `tag_name` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_tv`
--

CREATE TABLE `tbl_tv` (
  `id_tv` int(11) NOT NULL,
  `assets_number` varchar(250) NOT NULL,
  `assets_name` varchar(250) NOT NULL,
  `model` varchar(250) NOT NULL,
  `brand` varchar(250) NOT NULL,
  `serial_number` varchar(150) NOT NULL,
  `room` varchar(250) NOT NULL,
  `jenis_aktivasi` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_ups`
--

CREATE TABLE `tbl_ups` (
  `id_ups` int(11) NOT NULL,
  `assets_number` varchar(250) NOT NULL,
  `network_id` varchar(250) NOT NULL,
  `date_manufacture` date NOT NULL,
  `model` varchar(250) NOT NULL,
  `brand` varchar(250) NOT NULL,
  `serial_number` varchar(150) NOT NULL,
  `type_ups` varchar(150) NOT NULL,
  `warranty` varchar(200) NOT NULL,
  `jenis_aktivasi` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `user_di` varchar(100) NOT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `user_number` varchar(30) NOT NULL,
  `user_email` varchar(60) DEFAULT NULL,
  `user_password` varchar(40) DEFAULT NULL,
  `user_area` varchar(100) NOT NULL,
  `user_division` varchar(255) NOT NULL,
  `user_room` varchar(50) NOT NULL,
  `user_level` varchar(10) DEFAULT NULL,
  `user_status` varchar(10) DEFAULT '1',
  `user_photo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_di`, `user_name`, `user_number`, `user_email`, `user_password`, `user_area`, `user_division`, `user_room`, `user_level`, `user_status`, `user_photo`) VALUES
(3, '13020200002', 'Ahmad Ruslandia Papua', '+6281240713388', 'rusland@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'Highland', 'IT', 'Office', '1', '1', '68131940d12491591327a0b75a8a0c43.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_visitors`
--

CREATE TABLE `tbl_visitors` (
  `visit_id` int(11) NOT NULL,
  `visit_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `visit_ip` varchar(50) DEFAULT NULL,
  `visit_platform` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_visitors`
--

INSERT INTO `tbl_visitors` (`visit_id`, `visit_date`, `visit_ip`, `visit_platform`) VALUES
(541327, '2019-03-18 14:07:36', '::1', 'Firefox'),
(541328, '2019-03-19 03:33:51', '::1', 'Chrome'),
(541329, '2019-03-20 01:00:19', '::1', 'Chrome'),
(541330, '2019-04-05 01:53:28', '::1', 'Firefox'),
(541331, '2019-04-06 01:37:35', '::1', 'Chrome'),
(541332, '2019-04-06 23:04:12', '::1', 'Chrome'),
(541333, '2019-04-09 12:19:32', '::1', 'Chrome'),
(541334, '2019-04-10 01:33:03', '::1', 'Chrome'),
(541335, '2019-04-11 03:30:38', '::1', 'Chrome'),
(541336, '2019-04-11 03:30:38', '::1', 'Chrome'),
(541337, '2019-04-12 03:51:42', '::1', 'Chrome'),
(541338, '2019-04-12 21:55:51', '::1', 'Chrome'),
(541339, '2019-04-14 01:30:40', '::1', 'Chrome'),
(541340, '2019-04-15 01:42:53', '::1', 'Chrome'),
(541341, '2019-05-08 02:07:09', '::1', 'Chrome'),
(541342, '2019-05-21 05:55:14', '::1', 'Firefox'),
(541343, '2019-08-28 07:08:22', '::1', 'Firefox'),
(541344, '2019-12-17 06:04:57', '::1', 'Firefox'),
(541345, '2019-12-18 01:34:25', '::1', 'Firefox'),
(541346, '2019-12-19 02:21:23', '::1', 'Firefox'),
(541347, '2019-12-20 07:47:00', '::1', 'Firefox'),
(541348, '2019-12-28 02:58:34', '::1', 'Firefox'),
(541349, '2019-12-29 08:48:39', '::1', 'Firefox'),
(541350, '2019-12-30 03:24:04', '::1', 'Firefox'),
(541351, '2019-12-31 02:47:15', '::1', 'Firefox'),
(541352, '2020-01-01 02:24:55', '::1', 'Firefox'),
(541353, '2020-01-02 01:58:25', '::1', 'Firefox'),
(541354, '2020-01-03 03:15:30', '::1', 'Firefox'),
(541355, '2020-01-04 03:31:49', '::1', 'Firefox'),
(541356, '2020-01-05 06:58:35', '127.0.0.1', 'Firefox'),
(541357, '2020-01-06 06:03:25', '::1', 'Firefox'),
(541358, '2020-01-07 00:57:59', '::1', 'Firefox'),
(541359, '2020-01-08 05:53:44', '::1', 'Firefox'),
(541360, '2020-01-12 04:18:15', '::1', 'Firefox'),
(541361, '2021-07-17 05:50:59', '::1', 'Chrome'),
(541362, '2021-07-18 04:11:28', '::1', 'Chrome'),
(541363, '2021-07-24 12:52:48', '::1', 'Chrome'),
(541364, '2022-08-02 08:29:19', '::1', 'Chrome'),
(541365, '2022-08-02 16:17:01', '::1', 'Chrome'),
(541366, '2022-08-06 13:44:03', '::1', 'Chrome'),
(541367, '2022-08-06 16:43:52', '::1', 'Chrome'),
(541368, '2022-08-08 03:31:11', '::1', 'Chrome'),
(541369, '2022-08-10 01:48:25', '::1', 'Chrome'),
(541370, '2022-08-13 03:15:53', '::1', 'Chrome'),
(541371, '2022-08-30 12:32:37', '::1', 'Chrome'),
(541372, '2022-09-02 14:53:02', '::1', 'Chrome'),
(541373, '2022-09-10 16:14:14', '::1', 'Chrome'),
(541374, '2022-12-07 07:08:34', '::1', 'Chrome'),
(541375, '2022-12-07 16:00:09', '::1', 'Chrome'),
(541376, '2022-12-08 16:19:36', '::1', 'Chrome'),
(541377, '2022-12-10 07:06:23', '::1', 'Chrome'),
(541378, '2022-12-12 10:58:07', '::1', 'Chrome'),
(541379, '2023-01-24 09:49:20', '::1', 'Chrome'),
(541380, '2023-01-24 16:10:17', '::1', 'Chrome'),
(541381, '2023-01-26 06:19:21', '::1', 'Chrome'),
(541382, '2023-01-26 21:06:17', '::1', 'Chrome'),
(541383, '2023-01-27 13:50:26', '127.0.0.1', 'Chrome'),
(541384, '2023-01-28 07:03:19', '::1', 'Chrome'),
(541385, '2023-01-28 16:07:38', '::1', 'Chrome'),
(541386, '2023-01-29 16:17:21', '::1', 'Chrome'),
(541387, '2023-01-31 15:02:16', '::1', 'Chrome'),
(541388, '2023-02-01 14:12:15', '::1', 'Chrome'),
(541389, '2023-02-01 16:23:47', '::1', 'Chrome'),
(541390, '2023-02-02 16:23:14', '::1', 'Chrome'),
(541391, '2023-02-03 13:53:31', '127.0.0.1', 'Chrome'),
(541392, '2023-02-04 07:56:56', '::1', 'Chrome'),
(541393, '2023-02-04 16:10:08', '::1', 'Chrome'),
(541394, '2023-02-06 13:11:39', '::1', 'Chrome'),
(541395, '2023-07-26 10:25:26', '::1', 'Chrome'),
(541396, '2023-07-26 22:57:09', '::1', 'Chrome'),
(541397, '2023-07-27 22:15:19', '::1', 'Chrome'),
(541398, '2023-07-29 02:51:33', '::1', 'Chrome'),
(541399, '2023-07-30 01:45:53', '::1', 'Chrome'),
(541400, '2023-07-30 12:59:54', '127.0.0.1', 'Chrome'),
(541401, '2023-07-30 21:55:42', '::1', 'Chrome'),
(541402, '2023-08-01 12:28:21', '::1', 'Chrome'),
(541403, '2023-08-04 12:50:28', '::1', 'Chrome'),
(541404, '2023-08-07 10:40:59', '::1', 'Chrome'),
(541405, '2023-08-07 16:12:02', '::1', 'Chrome'),
(541406, '2023-08-09 06:44:17', '::1', 'Chrome'),
(541407, '2023-08-10 03:14:26', '::1', 'Chrome'),
(541408, '2023-08-10 16:00:12', '::1', 'Chrome'),
(541409, '2023-08-12 06:42:07', '::1', 'Chrome'),
(541410, '2023-08-12 08:38:24', '127.0.0.1', 'Chrome'),
(541411, '2023-08-12 16:22:56', '::1', 'Chrome'),
(541412, '2023-08-14 02:29:12', '::1', 'Chrome'),
(541413, '2023-08-15 05:46:23', '::1', 'Chrome'),
(541414, '2023-08-16 01:53:55', '::1', 'Chrome'),
(541415, '2023-08-17 13:53:19', '::1', 'Chrome'),
(541416, '2023-08-18 08:45:44', '::1', 'Chrome'),
(541417, '2023-08-19 08:04:42', '::1', 'Chrome'),
(541418, '2023-08-20 11:16:17', '::1', 'Chrome'),
(541419, '2023-08-21 07:16:24', '::1', 'Chrome'),
(541420, '2023-08-22 13:31:26', '::1', 'Chrome'),
(541421, '2023-08-23 02:37:06', '::1', 'Chrome'),
(541422, '2023-10-01 16:05:03', '::1', 'Chrome'),
(541423, '2023-10-04 13:40:18', '::1', 'Chrome'),
(541424, '2023-10-06 11:09:39', '::1', 'Chrome');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_wifi`
--

CREATE TABLE `tbl_wifi` (
  `id_wifi` int(11) NOT NULL,
  `assets_number` varchar(250) NOT NULL,
  `assets_name` varchar(250) NOT NULL,
  `date_manufacture` date NOT NULL,
  `model` varchar(250) NOT NULL,
  `brand` varchar(250) NOT NULL,
  `serial_number` varchar(150) NOT NULL,
  `mac_address` varchar(150) NOT NULL,
  `room` varchar(250) NOT NULL,
  `jenis_aktivasi` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_about`
--
ALTER TABLE `tbl_about`
  ADD PRIMARY KEY (`about_id`);

--
-- Indeks untuk tabel `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indeks untuk tabel `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indeks untuk tabel `tbl_docking`
--
ALTER TABLE `tbl_docking`
  ADD PRIMARY KEY (`id_docking`);

--
-- Indeks untuk tabel `tbl_handphone`
--
ALTER TABLE `tbl_handphone`
  ADD PRIMARY KEY (`id_handphone`);

--
-- Indeks untuk tabel `tbl_hdd`
--
ALTER TABLE `tbl_hdd`
  ADD PRIMARY KEY (`id_hdd`);

--
-- Indeks untuk tabel `tbl_headset`
--
ALTER TABLE `tbl_headset`
  ADD PRIMARY KEY (`id_headset`);

--
-- Indeks untuk tabel `tbl_home`
--
ALTER TABLE `tbl_home`
  ADD PRIMARY KEY (`home_id`);

--
-- Indeks untuk tabel `tbl_ht`
--
ALTER TABLE `tbl_ht`
  ADD PRIMARY KEY (`id_ht`);

--
-- Indeks untuk tabel `tbl_jenis`
--
ALTER TABLE `tbl_jenis`
  ADD PRIMARY KEY (`id_jenis`);

--
-- Indeks untuk tabel `tbl_keyboard`
--
ALTER TABLE `tbl_keyboard`
  ADD PRIMARY KEY (`id_keyboard`);

--
-- Indeks untuk tabel `tbl_laptop`
--
ALTER TABLE `tbl_laptop`
  ADD PRIMARY KEY (`id_laptop`);

--
-- Indeks untuk tabel `tbl_lcdprojector`
--
ALTER TABLE `tbl_lcdprojector`
  ADD PRIMARY KEY (`id_lcdprojector`);

--
-- Indeks untuk tabel `tbl_monitor`
--
ALTER TABLE `tbl_monitor`
  ADD PRIMARY KEY (`id_monitor`);

--
-- Indeks untuk tabel `tbl_navbar`
--
ALTER TABLE `tbl_navbar`
  ADD PRIMARY KEY (`navbar_id`);

--
-- Indeks untuk tabel `tbl_network`
--
ALTER TABLE `tbl_network`
  ADD PRIMARY KEY (`id_network`);

--
-- Indeks untuk tabel `tbl_pc`
--
ALTER TABLE `tbl_pc`
  ADD PRIMARY KEY (`id_pc`);

--
-- Indeks untuk tabel `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indeks untuk tabel `tbl_post_views`
--
ALTER TABLE `tbl_post_views`
  ADD PRIMARY KEY (`view_id`);

--
-- Indeks untuk tabel `tbl_printer`
--
ALTER TABLE `tbl_printer`
  ADD PRIMARY KEY (`id_printer`);

--
-- Indeks untuk tabel `tbl_scanner`
--
ALTER TABLE `tbl_scanner`
  ADD PRIMARY KEY (`id_scanner`);

--
-- Indeks untuk tabel `tbl_site`
--
ALTER TABLE `tbl_site`
  ADD PRIMARY KEY (`site_id`);

--
-- Indeks untuk tabel `tbl_tablet`
--
ALTER TABLE `tbl_tablet`
  ADD PRIMARY KEY (`id_tablet`);

--
-- Indeks untuk tabel `tbl_tags`
--
ALTER TABLE `tbl_tags`
  ADD PRIMARY KEY (`tag_id`);

--
-- Indeks untuk tabel `tbl_tv`
--
ALTER TABLE `tbl_tv`
  ADD PRIMARY KEY (`id_tv`);

--
-- Indeks untuk tabel `tbl_ups`
--
ALTER TABLE `tbl_ups`
  ADD PRIMARY KEY (`id_ups`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indeks untuk tabel `tbl_visitors`
--
ALTER TABLE `tbl_visitors`
  ADD PRIMARY KEY (`visit_id`);

--
-- Indeks untuk tabel `tbl_wifi`
--
ALTER TABLE `tbl_wifi`
  ADD PRIMARY KEY (`id_wifi`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_about`
--
ALTER TABLE `tbl_about`
  MODIFY `about_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_docking`
--
ALTER TABLE `tbl_docking`
  MODIFY `id_docking` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_handphone`
--
ALTER TABLE `tbl_handphone`
  MODIFY `id_handphone` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_hdd`
--
ALTER TABLE `tbl_hdd`
  MODIFY `id_hdd` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_headset`
--
ALTER TABLE `tbl_headset`
  MODIFY `id_headset` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_home`
--
ALTER TABLE `tbl_home`
  MODIFY `home_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_ht`
--
ALTER TABLE `tbl_ht`
  MODIFY `id_ht` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_jenis`
--
ALTER TABLE `tbl_jenis`
  MODIFY `id_jenis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tbl_keyboard`
--
ALTER TABLE `tbl_keyboard`
  MODIFY `id_keyboard` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_laptop`
--
ALTER TABLE `tbl_laptop`
  MODIFY `id_laptop` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_lcdprojector`
--
ALTER TABLE `tbl_lcdprojector`
  MODIFY `id_lcdprojector` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_monitor`
--
ALTER TABLE `tbl_monitor`
  MODIFY `id_monitor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_navbar`
--
ALTER TABLE `tbl_navbar`
  MODIFY `navbar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `tbl_network`
--
ALTER TABLE `tbl_network`
  MODIFY `id_network` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_pc`
--
ALTER TABLE `tbl_pc`
  MODIFY `id_pc` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tbl_post_views`
--
ALTER TABLE `tbl_post_views`
  MODIFY `view_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT untuk tabel `tbl_printer`
--
ALTER TABLE `tbl_printer`
  MODIFY `id_printer` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_scanner`
--
ALTER TABLE `tbl_scanner`
  MODIFY `id_scanner` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_site`
--
ALTER TABLE `tbl_site`
  MODIFY `site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_tablet`
--
ALTER TABLE `tbl_tablet`
  MODIFY `id_tablet` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_tags`
--
ALTER TABLE `tbl_tags`
  MODIFY `tag_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_tv`
--
ALTER TABLE `tbl_tv`
  MODIFY `id_tv` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_ups`
--
ALTER TABLE `tbl_ups`
  MODIFY `id_ups` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_visitors`
--
ALTER TABLE `tbl_visitors`
  MODIFY `visit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=541425;

--
-- AUTO_INCREMENT untuk tabel `tbl_wifi`
--
ALTER TABLE `tbl_wifi`
  MODIFY `id_wifi` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
