-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Agu 2023 pada 12.48
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
(3, '2023-08-01 13:34:52', 'Ahmad Ruslandia Papua', 'ruslandiaamin@gmail.com', 'DONE!', 1, 1, 10, '77edf38f554a81720bdd59b4f9d3ea38.jpg');

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

--
-- Dumping data untuk tabel `tbl_docking`
--

INSERT INTO `tbl_docking` (`id_docking`, `assets_number`, `assets_name`, `model`, `brand`, `serial_number`, `user_di`, `locations`, `jenis_aktivasi`) VALUES
(1, 'SANDSK001', 'IDKKDS', 'Docking Station', 'DELL', '3NYMHT3', 'je3148', 'Undergound', '6'),
(2, 'SANDSK002', 'IDKKDS', 'Docking Station', 'DELL', 'JYRMHT3', 'ym9845', 'Undergound', '6'),
(3, 'SANDSK003', 'IDKKDS', 'Docking Station', 'DELL', '3VRMHT3', 'th4561', 'Undergound', '6'),
(4, 'SANDSK004', 'IDKKDS', 'Docking Station', 'DELL', 'DYRMHT3', 'fv4451', 'Fabrication 2nd fl', '6'),
(5, 'SANDSK005', 'IDKKDS', '', '', '', '', '', '6'),
(6, 'SANDSK006', 'IDKKDS', '', '', '', '', '', '6'),
(7, 'SANDSK007', 'IDKKDS', '', '', '', '', '', '6'),
(8, 'SANDSK008', 'IDKKDS', '', '', '', '', '', '6'),
(9, 'SANDSK009', 'IDKKDS', '', '', '', '', '', '6'),
(10, 'SANDSK010', 'IDKKDS', '', '', '', '', '', '6'),
(11, 'SANDSK011', 'IDKKDS', '', '', '', '', '', '6');

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

--
-- Dumping data untuk tabel `tbl_handphone`
--

INSERT INTO `tbl_handphone` (`id_handphone`, `street_address`, `user_name`, `model`, `departement`, `user_id`, `email`, `jenis_aktivasi`) VALUES
(29, 'SANLD002', 'IDUPC586', 'dfeaf', 'Lenovo', 'PF02BHCW', 'OFFICE', '6'),
(30, 'dscdscj', 'cwecwec', 'cwcw', 'wcwc', 'cwcwc', 'ruslandiaamin@qmail.id', '7'),
(31, 'fefe', 'cwecwec', 'dfea', 'wcwc', 'KOSONG', 'wandaathifah6866@gmail.com', '7');

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

--
-- Dumping data untuk tabel `tbl_hdd`
--

INSERT INTO `tbl_hdd` (`id_hdd`, `assets_number`, `assets_name`, `capacity`, `model`, `brand`, `serial_number`, `mac_address`, `room`, `jenis_aktivasi`) VALUES
(23, 'SANLD001', 'srgsrg', 'acac', 'sdda', 'Dell', 'PC032D0Q', 'ndcvklnvdklndskl', 'OFFICE', '6');

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

--
-- Dumping data untuk tabel `tbl_headset`
--

INSERT INTO `tbl_headset` (`id_headset`, `assets_number`, `assets_name`, `model`, `brand`, `serial_number`, `room`, `jenis_aktivasi`) VALUES
(31, 'SANLD001', 'IDUPC575', 'dfeaf', 'Lenovo', 'PF02BHCW', 'OFFICE', '7'),
(32, 'SANLD002', 'IDUPC575', 'dfeav', 'Dell', 'PC032D0', 'OFFICE', '7'),
(33, 'SANLD003', 'IDUPC586', 'dfeak', 'Toshiba', 'PF02BHC', 'OFFICE', '6'),
(34, 'SANLD000', 'IDUPC586', 'dfeal', 'ROG', 'PC032D0Qm', 'OFFICE', '7');

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

--
-- Dumping data untuk tabel `tbl_ht`
--

INSERT INTO `tbl_ht` (`id_ht`, `assets_number`, `network_id`, `date_manufacture`, `model`, `brand`, `serial_number`, `mac_address`, `type_ht`, `warranty`, `jenis_aktivasi`) VALUES
(1, 'SANLD002', 'IDUPC586', '2023-08-09', 'D', 'Dell', 'PF02BHCW', 'asfaenafk', 'sembarang', 'Windows 10', '6'),
(2, 'SANLD004', 'jbjbmjb4', '2023-08-14', 'dfea4', 'T4404', 'PC032D0Q4', 'knkln4', 'hhhjvj24', 'bjhbjhbhj24', '7');

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

--
-- Dumping data untuk tabel `tbl_ipclock`
--

INSERT INTO `tbl_ipclock` (`id_ipclock`, `assets_number`, `assets_name`, `model`, `brand`, `po`, `mac_address`, `ip`, `locations`, `jenis_aktivasi`) VALUES
(1, 'faf', 'fafa', 'fafaafa', 'afaf', 'afaf', 'afaf', 'afaf', 'fafa', '6');

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

--
-- Dumping data untuk tabel `tbl_keyboard`
--

INSERT INTO `tbl_keyboard` (`id_keyboard`, `assets_number`, `assets_name`, `model`, `brand`, `serial_number`, `room`, `jenis_aktivasi`) VALUES
(1, 'SANDK001', 'IDKKKY', 'MK345', 'LOGITECH', '227CE251059', 'CYLINDER', '6'),
(2, 'SANDK002', 'IDKKKY', 'MK345', 'LOGITECH', '2207CE251069', 'RAMMER', '6'),
(3, 'SANDK003', 'IDKKKY', 'MK345', 'LOGITECH', '2207CE251089', 'REBUILD', '6'),
(4, 'SANDK004', 'IDKKKY', 'MK345', 'LOGITECH', '2207CE251079', 'DRIFTER', '6'),
(5, 'SANDK005', 'IDKKKY', 'MK345', 'LOGITECH', 'NA', 'AXEL', '6'),
(6, 'SANDK006', 'IDKKKY', 'MK220', 'LOGITECH', '2128SC10KEY8', 'LOGISTIC', '6'),
(7, 'SANDK007', 'IDKKKY', '', '', '', 'CYLINDER', '6'),
(8, 'SANDK008', 'IDKKKY', '', '', '', 'CYLINDER', '6'),
(9, 'SANDK009', 'IDKKKY', '', '', '', 'CYLINDER', '6'),
(10, 'SANDK010', 'IDKKKY', '', '', '', 'CYLINDER', '6'),
(11, 'SANDK011', 'IDKKKY', '', '', '', 'CYLINDER', '6');

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

--
-- Dumping data untuk tabel `tbl_laptop`
--

INSERT INTO `tbl_laptop` (`id_laptop`, `assets_number`, `assets_name`, `laptop_date`, `laptop_model`, `brand`, `user_di`, `serial_number`, `mac_address`, `hard_disk`, `processor`, `operating_system`, `room`, `jenis_aktivasi`) VALUES
(1, 'SANLD001', 'IDUPC575', '2020-03-27', 'T440', 'Lenovo', 'KOSONG', 'PF02BHCW', '28D2449BD3E1', '119.12 GB', 'Intel(R) Core(TM) i5-4300U CPU @ 1.90GHz, 2501 MHz, 2 Core(s), 4 Logical Processor(s)', 'Windows 10', 'OFFICE', '6'),
(2, 'SANLD002', 'IDPUC586', '2017-03-03', 'T440', 'Lenovo', 'ur7450', 'PC032D0Q', '507B9D94D7B1', '119.12 GB', 'Intel(R) Core(TM) i5-4300U CPU @ 1.90GHz, 2494 MHz, 2 Core(s), 4 Logical Processor(s)', 'Windows 10', 'OFFICE', '6'),
(3, 'SANLD003', 'IDUPC762', '2021-07-20', 'Latitude 5420', 'Dell', 'wv1040', 'HQVG3F3', '38142855F7DA', '500 GB', '11 th Gen Intel(R) Core(TM) i7-1185G7 @ 3.00GHz, 1805 MHz', 'Windows 10', 'OFFICE', '6'),
(4, 'SANLD004', 'IDUPC723', '2018-04-13', 'X1 Carbon', 'Lenovo', 'It8941', 'PF18AR24', '8C1645934567', '238.35 GB', 'Intel(R) Core(TM) i5-8350U CPU @ 1.70GHz, 1896 Mhz, 4 Core(s) 8 Logical Processor (s)', 'Windows 10', 'OFFICE', '6'),
(5, 'SANLD005', 'IDUPC724', '2018-03-14', 'T480', 'Lenovo', 'jw6359', 'PF174HXR', '8C16458B5EC8', '238.35 GB', 'Intel(R) Core(TM) i5-8350U CPU @ 1.70gGHz, 1896 Mhz, 4 Core(s), 8 Logical Processor(s)', 'Windows 10', 'OFFICE', '6'),
(6, 'SANLD006', 'IDUPC574', '2018-05-24', 'X1 Carbon', 'Lenovo', 'co6481', 'R90LF32C', '54EE75ABA0C2', '238.35 GB', 'Intel(R) Core(TM) i5-6300U CPU @ 2.40GHz, 2496 Mhz, 2 Core(s), 4 Logical Processor(s)', 'Windows 10', 'OFFICE', '6'),
(7, 'SANLD007', '', '2018-09-17', 'X1 Carbon', 'Lenovo', 'wz9468', 'PF1FTGLN', 'E86A642E5631', '238.35 GB', 'Intel(R) Core(TM) i5-8350U CPU @ 1.70GHz, 1896 Mhz, 4 Core(s) 8 Logical Processor (s)', 'Windows 10', 'OFFICE', '6'),
(8, 'SANLD008', 'IDUPC708', '2018-05-24', 'X1 Carbon', 'Lenovo', 'hz7155', 'R90M6F4H', '54EE75B96004', '238.35 GB', 'Intel(R) Core(TM) i5-6300U CPU @ 2.40GHz, 2496 Mhz, 2 Core(s), 4 Logical Processor(s)', 'Windows 10', 'OFFICE', '6'),
(9, 'SANLD009', 'IDUPC737', '2018-11-07', 'T480', 'Lenovo', 'bekurni', 'PF1GT5GY', 'E86A648255EC', '238.35 GB', 'Intel(R) Core(TM) i5-8350U CPU @ 1.70GHz, 1896 Mhz, 4 Core(s) 8 Logical Processor (s)', 'Windows 10', 'OFFICE', '6'),
(10, 'SANLD010', 'IDUPC730', '2018-09-14', 'T480', 'Lenovo', 'pv3229', 'PF1FC4HZ', 'E86A6436EF3D', '238.35 GB', 'Intel(R) Core(TM) i5-8350U CPU @ 1.70GHz, 1896 Mhz, 4 Core(s) 8 Logical Processor (s)', 'Windows 10', 'OFFICE', '6'),
(11, 'SANLD011', 'IDUPC719', '2018-07-02', 'X1 Carbon', 'Lenovo', 'ec3756', 'PF0WME0K', '54E1ADBC0CA8', '465.73 GB', 'Intel(R) Core(TM) i5-6300U CPU @ 2.40GHz, 2496 Mhz, 2 Core(s), 4 Logical Processor(s)', 'Windows 10', 'LOGISTIC', '6'),
(12, 'SANLD012', 'IDUPC759', '2020-11-29', 'Latitude 9410', 'Dell', 'nu6475', '4X5LP73', 'NA', '238.35 GB', 'Intel(R) Core(TM) i5-10310U CPU @ 1.70GHz, 2208 Mhz, 4 Core(s) 8 Logical Processor(s)', 'Windows 10', 'OFFICE', '6'),
(13, 'SANLD013', 'IDUPC710', '2018-05-24', 'X1 Carbon', 'Lenovo', 'thjohan', 'R90M6F4H', '54EE75B95FFD', '238.35 GB', 'Intel(R) Core(TM) i5-6300U CPU @ 2.40GHz, 2496 Mhz, 2 Core(s), 4 Logical Processor(s)', 'Windows 10', 'OFFICE', '6'),
(14, 'SANLD014', 'IDUPC711', '2018-05-24', 'X1 Carbon', 'Lenovo', 'yy4245', 'R90M6F4G', '54EE75B9610C', '238.35 GB', 'Intel(R) Core(TM) i5-6300U CPU @ 2.40GHz, 2496 Mhz, 2 Core(s), 4 Logical Processor(s)', 'Windows 10', 'OFFICE', '6'),
(15, 'SANLD015', 'IDUPC572', '2019-08-26', 'T440', 'Lenovo', 'ru5558', 'PF00WW4R', '28D24468FC38', '119.12 GB', 'Intel(R) Core(TM) i5-4300U CPU @ 1.90GHz, 2494 MHz, 2 Core(s), 4 Logical Processor(s)', 'Windows 10', 'OFFICE', '6'),
(16, 'SANLD016', 'IDUPC583', '2018-03-20', 'T440', 'Lenovo', 'kq6398', 'PC032D0P', '68F728513BDA', '119.12 GB', 'Intel(R) Core(TM) i5-4300U CPU @ 1.90GHz 2501 Mhz, 2 Core(s), 4 Logical Processor(s)', 'Windows 10', 'OFFICE', '6'),
(17, 'SANLD017', 'IDUPC701', '2015-12-08', 'X250', 'Lenovo', 'yj5140', 'PC0CUP02', '507B9DF28765', '238.35 GB', 'Intel(R) Core(TM) i5-5300U CPU @ 2.30 GHz, 2295 Mhz, 2 Core(s), 4 Logical Processor(s)', 'Windows 10', 'OFFICE', '6'),
(18, 'SANLD018', 'IDUPC717', '2018-02-07', 'X1 Carbon', 'Lenovo', 'jogaray', 'PF0TRVZJ', '54E1ADA03885', '238.35 GB', 'Intel(R) Core (TM) i5-6300U CPU @ 2.40GHz. 2496 Mhz, 2 Core(s) Logical Processor(s) ', 'Windows 10', 'WAREHOUSE', '6'),
(19, 'SANLD019', 'IDUPC750', '2021-11-18', 'Latitude 7300', 'Dell', 'jw6359', 'HCDQ5Y2', 'NA', '238.35 GB', 'Intel(T) Core(TM) i5-8365U CPU @ 1.60GHz, 1896 Mhz, 4 Core(s), 8 Logical Processor (s)', 'Windows 10', 'OFFICE', '6'),
(20, 'SANLD020', 'IDUPC739', '2018-11-07', 'T480', 'Lenovo', 'gt7310', 'PF1KF26W', 'E86A647CE0CF', '238.35 GB', 'Intel(R) Core(TM) i5-8350U CPU @ 1.70GHz, 1896 Mhz, 4 Core(s) 8 Logical Processor (s)', 'Windows 10', 'OFFICE', '6'),
(21, 'SANLD021', 'IDUPC769', '0000-00-00', 'Latitude 5320', 'Dell', 'uz6819', 'C7PV4B3', 'NA', '', '11th Gen Intel(R) Core(TM) i5-1145G7 @ 2.60GHz, 1498 Mhz, 4 Core(s), 8 Logical Processor(s)', 'Windows 10', 'WORKSHOP', '6'),
(22, 'SANLD022', 'IDUPC589', '2018-06-04', 'X250', 'Lenovo', 'vg1616', 'PC06DF9V', '68F728F46E43', '238.32 GB', 'Intel(R) Core(TM) i5-5300U CPU @ 2.30 GHz, 2295 Mhz, 2 Core(s), 4 Logical Processor(s)', 'Windows 10', 'OFFICE', '6'),
(23, 'SANLD023', 'IDUPC573', '2018-03-20', 'T440', 'Lenovo', 'yn8574', 'PF00WW4P', '28D24468FC20', '119.12 GB', 'Intel(R) Core(TM) i5-4300 CPU @ 1.90GHz, 2494 Mhz, 2 Core(s), 4 Logical Processor(s)', 'Windows 10', 'WORKSHOP', '6'),
(24, 'SANLD024', 'IDUPC775', '2021-12-30', '5320', 'Dell', 'bekurni', 'DM3LMG3', 'B44506652800', '', '', 'Windows 10', 'OFFICE', '6'),
(25, 'SANLD025', 'IDUPC725', '2018-05-14', 'ThinkPad', 'Lenovo', 'rj2750', 'PF18DTYE', '8C16458CCEC2', '236 GB', 'Intel(R) Core(TM) i5-8350U CPU @ 1.70 GHz, 1896 Mhz,  6 Logical Processor(s)', 'Windows 10', 'WORKSHOP', '6'),
(26, 'SANLD026', 'IDUPC704', '0000-00-00', 'ThinkPad', 'Lenovo', 'cc3932', 'RG0LF32D', '', '236 GB', 'Intel(R) Core(TM) i5-6300U CPU @ 2.40GHz, 2496 Mhz, 2 Core(s), 4 Logical Processor(s)', 'Windows 10', 'WORKSHOP', '6'),
(27, 'SANLD027', 'IDUPC745', '2019-02-19', 'X1 Carbon', 'Lenovo', 'ee8016', 'PF1PEKYL', 'E86A64F8DC05', '238.35 GB', 'Intel(R) Core(TM) i5-8350U CPU @ 1.70GHz, 1896 Mhz, 4 Core(s) 8 Logical Processor (s)', 'Windows 10', 'WORKSHOP', '6'),
(28, 'SANLD028', 'IDUPC743', '2019-02-19', 'X1 Carbon', 'Lenovo', 'hp3510', 'PF1NY30N', 'E86A64E7E310', '238.35 GB', 'Intel(R) Core(TM) i5-8350U CPU @ 1.70GHz, 1896 Mhz, 4 Core(s) 8 Logical Processor (s)', 'Windows 10', 'WORKSHOP', '6'),
(29, 'SANLD029', 'IDUPC776', '0000-00-00', 'Latitude 7320', 'Dell', 'vn7104', 'DGRPMN3', '0892047119DF', '', '', 'Windows 10', 'Mile 72 ', '6'),
(30, 'SANLD030', 'IDUPC768', '2021-10-27', 'Latitude 7320', 'Dell', 'ul1264', 'DZZJ4J3', 'A02919AD11B3', '476.81 GB', '11 th Intel(R) Core(TM) i7-185G7 @ 300 GHz, 4 Core(s) 8 Logical processor', 'Windows 10', 'WORKSHOP', '6'),
(31, 'SANLD031', 'IDUPC778', '2022-05-21', 'Latitude 7320', 'Dell', '', 'FBDNPN3', '089204711AF7', '476.81 GB', '11 th Gen Intel(R) Core(TM) i7-1185G7 @ 3.00GHz, 1805 MHz', 'Windows 10', 'OFFICE', '6'),
(32, 'SANLD032', 'IDUPC779', '2022-07-11', 'Latitude 7320', 'Dell', 'wh0804', '7BVNRQ3', '0892044B32AF', '', '', 'Windows 10', 'OFFICE', '6'),
(33, 'SANLD033', 'IDUPC780', '2022-07-11', 'Latitude 5430', 'Dell', '', '4V0PRQN3', '08920448BB34', '', '', 'Windows 10', 'OFFICE', '6'),
(34, 'SANLD034', 'IDUPC781', '2022-05-30', 'Latitude 5420', 'Dell', 'yj5140', 'FJY7QN3', '0892041F0831', '', '', 'Windows 10', 'OFFICE', '6'),
(35, 'SANLD035', 'IDUPC782', '2022-05-30', 'Latitude 5420', 'Dell', 'yj5140', '3CP8QN3', '08920425981E', '', '', 'Windows 10', 'OFFICE', '6'),
(36, 'SANLD036', 'IDUPC783', '2022-05-30', 'Latitude 5420', 'Dell', 'yj5140', '2XD9QN3', '89204259823', '', '', 'Windows 10', 'OFFICE', '6'),
(37, 'SANLD037', 'IDUPC784', '2022-07-11', 'Latitude 5430', 'Dell', '', 'CDVNRQ3', '0892044B32F1', '', '', 'Windows 10', 'OFFICE', '6'),
(38, 'SANLD038', 'IDUPC785', '2022-08-09', 'Latitude 7330', 'Dell', 'ls6579', 'DKJ3KR3', 'CC96E5A3E948', '', '', 'Windows 10', 'OFFICE', '6'),
(39, 'SANLD039', 'IDUPC786', '2022-03-08', 'Latitude 7330', 'Dell', 'jp7664', 'BXJYKR3', 'CC96E59C61B4', '', '', 'Windows 10', 'OFFICE', '6'),
(40, 'SANLD040', 'IDUPC787', '2022-08-02', 'Latitude 5430', 'Dell', 'bh4981', '3M1NJR3', 'CC96E557FBC5', '', '', 'Windows 10', 'OFFICE', '6'),
(41, 'SANLD041', 'IDUPC788', '2022-07-18', 'Latitude 5430', 'Dell', 'bh4981', 'D584SL3', 'C84BD627333', '', '', 'Windows 10', 'OFFICE', '6'),
(42, 'SANLD042', 'IDUPC789', '2022-08-02', 'Latitude 5430', 'Dell', 'bh4981', '6TDNJR', 'CC96E557BF96', '', '', 'Windows 10', 'OFFICE', '6'),
(43, 'SANLD043', 'IDUPC790', '2022-08-16', 'Latitude 9430', 'Dell', 've1783', 'DC11JR3', 'CC96E5A4D630', '', '', 'Windows 10', 'OFFICE', '6'),
(44, 'SANLD044', 'IDUPC791', '2022-08-16', 'Latitude 9430', 'Dell', 'pe4588', 'HK42JR3', 'CC96E5A4D631', '', '', 'Windows 10', 'OFFICE', '6'),
(45, 'SANLD045', 'IDUPC792', '2022-02-08', 'Latitude 5430', 'Dell', 'bh4981', '85W8JR3', 'CC96E557FBC4', '', '', 'Windows 10', 'OFFICE', '6'),
(46, 'SANLD046', 'IDUPC705', '0000-00-00', 'X1 Carbon', 'Lenovo', 'jascott', 'R90LF32A', '54EE75ABA145', '', '', 'Windows 10', 'OFFICE', '6'),
(47, 'SANLD047', 'IDUPC706', '0000-00-00', 'X1 Carbon', 'Lenovo', 'km6138', 'R90LF32E', '54EE75ABA26D', '', '', 'Windows 10', 'OFFICE', '6'),
(48, 'SANLD048', 'IDUPC714', '2016-01-09', 'X1 Carbon', '            Lenovo', 'xbh4981', 'R90MQCKG', '54EE75C3AECA', '', '', 'Windows 10', 'OFFICE', '6'),
(49, 'SANLD049', 'IDUPC598', '0000-00-00', 'ThinkPad T450', 'Lenovo', '', '', '', '', '', 'Windows 10', 'OFFICE', '6'),
(50, 'SANLD050', 'IDUPC585', '0000-00-00', 'ThinkPad T450', 'Lenovo', '', '', '', '', '', 'Windows 10', 'OFFICE', '6'),
(51, 'SANLD051', 'IDUPC728', '0000-00-00', 'X1 Carbon', '', '', '', '', '', '', 'Windows 10', 'OFFICE', '6'),
(52, 'SANLD052', 'IDUPC793', '0000-00-00', 'Latitude 7330', 'Dell', 'fv4451', '3FLS1T3', 'CC96E5D1DDEE', '', '', 'Windows 10', 'OFFICE', '6'),
(53, 'SANLD053', 'IDUPC794', '0000-00-00', 'Latitude 7330', 'Dell', 'nn7172', '1R6S1T3', 'CC96E5D1DFE3', '', '', 'Windows 10', 'OFFICE', '6'),
(54, 'SANLD054', 'IDUPC795', '0000-00-00', 'Latitude 7330', 'Dell', 'mv6529', '8T4S1T3', 'CC96E5D1DFDD', '', '', 'Windows 10', 'OFFICE', '6'),
(55, 'SANLD055', 'IDUPC796', '0000-00-00', 'Latitude 7330', 'Dell', 'nv9223', '9P6S1T3', 'CC96E5D1DFE2', '', '', 'Windows 10', 'OFFICE', '6'),
(56, 'SANLD056', 'IDUPC591', '0000-00-00', 'X250', 'Lenovo', 'tf6344', 'PC070E9H', '', '', '', 'Windows 10', 'OFFICE', '6'),
(57, 'SANLD057', 'IDUPC797', '0000-00-00', 'Latitude 7330', 'Dell', 'jw6359', 'CYYQ1T3', 'CC96E5D1FECF', '', '', 'Windows 10', 'OFFICE', '6'),
(58, 'SANLD058', 'IDUPC798', '0000-00-00', 'Latitude 7330', 'Dell', 'Spare', 'JVMY2T3', 'CC96E5D1FEB7', '', '', 'Windows 10', 'OFFICE', '6'),
(59, 'SANLD059', 'IDUPC799', '0000-00-00', 'Latitude 5430', 'Dell', 'ry9384', 'FRVPVV3', 'AC91A1166454', '', '', 'Windows 10', 'OFFICE', '6'),
(60, 'SANLD060', 'IDUPC900', '0000-00-00', 'Rugged 5430', 'Dell', 'nv9223', 'JP9PDD3', '8C0F6F675BFE', '', '', 'Windows 11', 'Mile 72 ', '6'),
(61, 'SANLD061', 'IDUPC901', '0000-00-00', 'Latitude 5430', 'Dell', 'hz7155', '', '', '', '', 'Windows 10', 'OFFICE', '6'),
(62, 'SANLD062', 'IDUPC902', '0000-00-00', 'Latitude 5430', 'Dell', 'bj7022', '3BB1WW3', 'AC91A1139366', '', '', '', '', '6'),
(63, 'SANLD063', 'IDUPC903', '0000-00-00', 'PV3229', 'Dell', 'Dell 5000', '7TM25X3', 'AC91A12C0F47', '', '', '', '', '6'),
(64, 'SANLD064', 'IDUPC904', '0000-00-00', 'DD6726', 'Dell', 'Dell 5000', 'GWM45X3', '', '', '', '', '', '6'),
(65, 'SANLD065', 'IDUPC757', '0000-00-00', 'Latitude 5310', 'Dell', 'hausman', '82FH003', '', '', '', 'Windows 10', 'Mile 72 ', '6'),
(66, 'SANLD066', 'IDUPC908', '0000-00-00', 'Latitude 5440', 'Dell', '', '1157QV3', 'AC91A13E9D5A', '', '', 'Windows 10', 'OFFICE', '6');

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

--
-- Dumping data untuk tabel `tbl_lcdprojector`
--

INSERT INTO `tbl_lcdprojector` (`id_lcdprojector`, `assets_number`, `assets_name`, `capacity`, `lcd_projector`, `serial_number`, `room`, `jenis_aktivasi`) VALUES
(23, 'SANLD001', 'srgsrg', 'acac', 'sdda', 'PC032D0Q', 'OFFICE', '6');

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

--
-- Dumping data untuk tabel `tbl_monitor`
--

INSERT INTO `tbl_monitor` (`id_monitor`, `assets_number`, `assets_name`, `monitor_date`, `monitor_model`, `brand`, `user_di`, `serial_number`, `mac_address`, `operating_system`, `room`, `jenis_aktivasi`) VALUES
(1, 'SANDD001', 'IDKKMN', '2016-08-01', 'ProDisplay P24Ova', 'HP', 'ur7450', 'CNK631044D', 'NA', 'Windowns 10', 'OFFICE', '6'),
(2, 'SANDD002', 'IDKKMN', '2016-08-01', 'ProDisplay P24Ova', 'HP', 'co6481', 'CNK631044Q', 'NA', 'Windowns 10', 'OFFICE', '6'),
(3, 'SANDD003', 'IDKKMN', '2021-01-01', 'P2421D', 'Dell', 'It8941', '1CPGL93', 'NA', 'Windowns 10', 'OFFICE', '6'),
(4, 'SANDD004', 'IDKKMN', '2020-01-01', 'P2419N', 'Dell', 'It8941', '6KZHGZ2', 'NA', 'Windowns 10', 'OFFICE', '6'),
(5, 'SANDD005', 'IDKKMN', '2021-01-01', 'P2421D', 'Dell', 'jw6359', '1QPGL93', 'NA', 'Windowns 10', 'OFFICE', '6'),
(6, 'SANDD006', 'IDKKMN', '2018-11-01', 'Homep E243', 'HP', 'co6481', 'CNC8470LGX', 'NA', 'Windowns 10', 'OFFICE', '6'),
(7, 'SANDD007', 'IDKKMN', '2021-04-01', 'P2422H', 'Dell', '', 'CN-013TVG-QDC00-14F6I1I-A00', 'NA', 'Windowns 10', 'AXEL', '6'),
(8, 'SANDD008', 'IDKKMN', '2021-04-01', 'P2422H', 'Dell', 'jz7171', 'G0BFXB3', 'NA', 'Windowns 10', 'OFFICE', '6'),
(9, 'SANDD009', 'IDKKMN', '2019-11-01', 'P2422H', 'Dell', 'jz7171', '45N72Y2', 'NA', 'Windowns 10', 'OFFICE', '6'),
(10, 'SANDD010', 'IDKKMN', '2019-02-01', 'Think Vision P24h-10 ', 'Lenovo', 'gt7310', '00PC170', 'NA', 'Windowns 10', 'OFFICE', '6'),
(11, 'SANDD011', 'IDKKMN', '2018-09-01', 'P2319H', 'Dell', 'fk2282', 'JZR2NM2', 'NA', 'Windowns 10', 'OFFICE', '6'),
(12, 'SANDD012', 'IDKKMN', '2017-04-01', 'EliteDisplay E242', 'HP', 'wz9468', 'CN47140D68', 'NA', 'Windowns 10', 'OFFICE', '6'),
(13, 'SANDD013', 'IDKKMN', '0000-00-00', 'P2319H', 'Dell', 'cx2624', 'GC79NM2', 'NA', 'Windowns 10', 'OFFICE', '6'),
(14, 'SANDD014', 'IDKKMN', '2019-04-01', 'P2419H', 'Dell', 'yj5140', '4QC4MV2', 'NA', 'Windowns 10', 'OFFICE', '6'),
(15, 'SANDD015', 'IDKKMN', '2014-12-01', 'S2340Lc', 'Dell', 'hz7155', 'CN-0MDCK2-64180-4CA-0JDT', 'NA', 'Windowns 10', 'OFFICE', '6'),
(16, 'SANDD016', 'IDKKMN', '2014-03-01', 'S2440Lb', 'Dell', 'yv7241', 'CN-00JVDR-74261-43Q-1URQ', 'NA', 'Windowns 10', 'OFFICE', '6'),
(17, 'SANDD017', 'IDKKMN', '2018-11-01', 'ThinkVision', 'Lenovo', 'kq6398', 'VTJ09175', 'NA', 'Windowns 10', 'OFFICE', '6'),
(18, 'SANDD018', 'IDKKMN', '2015-03-01', 'S2340Lc', 'Dell', 'pv3229', 'CN-0MDCK2-64180-53H-0LAT', 'NA', 'Windowns 10', 'OFFICE', '6'),
(19, 'SANDD019', 'IDKKMN', '2015-03-01', 'S2340Lc', 'Dell', 'wv1040', 'CN-0MDCK2-64180-53H-12BT', 'NA', 'Windowns 10', 'OFFICE', '6'),
(20, 'SANDD020', 'IDKKMN', '2014-12-01', '', 'Dell', 'X(PIETER LOW)', 'CN-0JH6ND-7445-4CG-ANF', 'NA', 'Windowns 10', 'OFFICE', '6'),
(21, 'SANDD021', 'IDKKMN', '0000-00-00', 'P240va', 'HP', 'kq1201', 'CNK64505Y0', 'NA', 'Windowns 10', 'WAREHOUSE', '6'),
(22, 'SANDD022', 'IDKKMN', '2020-01-01', 'P2419H', 'Dell', 'by7192', '4HYCR13', 'NA', 'Windowns 10', 'WAREHOUSE', '6'),
(23, 'SANDD023', 'IDKKMN', '2019-04-01', 'P2419H', 'Dell', 'jogaray', '3HC4MV2', 'NA', 'Windowns 10', 'WAREHOUSE', '6'),
(24, 'SANDD024', 'IDKKMN', '2015-03-01', 'S2340Lc', 'Dell', 'yz3368', 'CN-0MDCK2-64180-53H-17CT', 'NA', 'Windowns 10', 'WAREHOUSE', '6'),
(25, 'SANDD025', 'IDKKMN', '2012-12-01', 'LT2252pwD', 'Lenovo', 'uj7292', 'VD-DZL 15', 'NA', 'Windowns 10', 'WAREHOUSE', '6'),
(26, 'SANDD026', 'IDKKMN', '2019-04-01', 'P2419H', 'Dell', 'ys8390', '3TD4MV2', 'NA', 'Windowns 10', 'WAREHOUSE', '6'),
(27, 'SANDD027', 'IDKKMN', '2019-09-01', 'P240va', 'HP', '', 'CNK639176W', 'NA', 'Windowns 10', 'ELECTIRC', '6'),
(28, 'SANDD028', 'IDKKMN', '2016-11-01', 'P240va', 'HP', '', 'CNK64505T1', 'NA', 'Windowns 10', 'DRIFTER', '6'),
(29, 'SANDD029', 'IDKKMN', '2021-04-01', 'P2422H', 'Dell', 'lipcylr', '8Y9FXB3', 'NA', 'Windowns 10', 'CLYNDER', '6'),
(30, 'SANDD030', 'IDKKMN', '2012-12-01', 'ThinkVision', 'Lenovo', 'hx2269', 'VD-DZM46', 'NA', 'Windowns 10', 'REBUILD', '6'),
(31, 'SANDD031', 'IDKKMN', '2016-09-01', 'P240va', 'HP', '', 'CNK639174D', 'NA', 'Windowns 10', 'AXEL', '6'),
(32, 'SANDD032', 'IDKKMN', '2015-09-01', 'E231i', 'HP', 'tt1021', '3CQ53840F8', 'NA', 'Windowns 10', 'FABRIKASI', '6'),
(33, 'SANDD033', 'IDKKMN', '2012-12-01', 'LT2252pwD', 'Lenovo', 'mv6529', 'VD-DZMA5', 'NA', 'Windowns 10', 'OFFICE', '6'),
(34, 'SANDD034', 'IDKKMN', '2012-12-01', 'LT2252pwD', 'Lenovo', 'bekurni', 'VD-DMS50', 'NA', 'Windowns 10', 'OFFICE', '6'),
(35, 'SANDD035', 'IDKKMN', '0000-00-00', 'S24F350FHE', 'Samsung', 'ec3756', 'ZZPAH4ZN302078H', 'NA', 'Windowns 10', 'LOGISTIC', '6'),
(36, 'SANDD036', 'IDKKMN', '2015-07-01', 'P222va', 'HP', 'ec3756', 'CNK53008L3', 'NA', 'Windowns 10', 'LOGISTIC', '6'),
(37, 'SANDD037', 'IDKKMN', '0000-00-00', 'S24F350FHE', 'Samsung', 'ys8390', 'ZZPAH4ZN302913K', 'NA', 'Windowns 10', 'LOGISTIC', '6'),
(38, 'SANDD038', 'IDKKMN', '2014-02-01', '', 'Lenovo', 'kf4643', 'V1AZ257', 'NA', 'Windowns 10', 'LOGISTIC', '6'),
(39, 'SANDD039', 'IDKKMN', '2018-09-01', 'P2130H', 'Dell', 'nu6475', '5MWBNM2', 'NA', 'Windowns 10', 'LOGISTIC', '6'),
(40, 'SANDD040', 'IDKKMN', '2009-03-01', '4434-HE1', 'Lenovo', 'NA', 'V1PC404', 'NA', 'NA', 'LOGISTIC', '6'),
(41, 'SANDD041', 'IDKKMN', '2010-03-01', 'L1951pwD', 'Lenovo', 'NA', 'V6-M6823', 'NA', 'NA', 'LOGISTIC', '6'),
(42, 'SANDD042', 'IDKKMN', '2019-04-01', 'P2419H', 'Dell', 'lm2970', 'CN-0G4DGK-QDC00-94H-4PNL-A03', 'NA', 'Windowns 10', 'LOGISTIC', '6'),
(43, 'SANDD043', 'IDKKMN', '0000-00-00', 'S24F350FHE', 'Samsung', 'lm2970', 'ZZPAH4ZN501153Y', 'NA', 'Windowns 10', 'LOGISTIC', '6'),
(44, 'SANDD044', 'IDKKMN', '2016-12-01', 'P240va', 'HP', 'ru5558', 'CNK64918NC', 'NA', 'Windowns 10', 'LOGISTIC', '6'),
(45, 'SANDD045', 'IDKKMN', '2016-12-01', 'P240va', 'HP', 'ru5558', 'CNK64918G7', 'NA', 'Windowns 10', 'LOGISTIC', '6'),
(46, 'SANDD046', 'IDKKMN', '2018-08-01', 'ThinkVision', 'Lenovo', 'yy4245', 'V5Z93664', 'NA', 'Windowns 10', 'LOGISTIC', '6'),
(47, 'SANDD047', 'IDKKMN', '2018-08-01', 'T24d-10', 'Lenovo', 'thjohan', 'V5Z93695', 'NA', 'Windowns 10', 'LOGISTIC', '6'),
(48, 'SANDD048', 'IDKKMN', '2010-05-01', 'L1951pwD', 'Lenovo', 'thjohan', 'V6-M6832', 'NA', 'Windowns 10', 'LOGISTIC', '6'),
(49, 'SANDD049', 'IDKKMN', '2016-11-01', 'P240va', 'HP', 'kf4643', 'CNK6470ZWS', 'NA', 'Windowns 10', 'LOGISTIC', '6'),
(50, 'SANDD050', 'IDKKMN', '2009-03-01', 'L197wA', 'Lenovo', 'kf4643', 'V1PC418', 'NA', 'Windowns 10', 'LOGISTIC', '6'),
(51, 'SANDD051', 'IDKKMN', '2019-02-01', 'ThinkVision', 'Lenovo', 'tf6344', 'VTJ83140', 'NA', 'Windowns 10', 'LOGISTIC', '6'),
(52, 'SANDD052', 'IDKKMN', '2019-06-01', 'ThinkVision', 'Lenovo', 'xbesili', 'VTL26591', 'NA', 'Windowns 10', 'OFFICE', '6'),
(53, 'SANDD053', 'IDKKMN', '2018-10-01', 'P24q-10', 'Lenovo', 'xbesili', 'VTH55219', 'NA', 'Windowns 10', 'OFFICE', '6'),
(54, 'SANDD054', 'IDKKMN', '2021-12-01', 'P2422H', 'Dell', 'hx2269', 'CN-013TVG-QDC00-1CP-51SB-A02', 'NA', 'Windowns 10', 'REBUILD', '6'),
(55, 'SANDD055', 'IDKKMN', '2021-12-01', 'P2422H', 'Dell', 'ts8742', 'CN-013TVG-QDC00-1CP-452B-A01', 'NA', 'Windowns 10', 'DRIFTER', '6'),
(56, 'SANDD056', 'IDKKMN', '2010-05-01', 'L195pwD', 'Lenovo', 'bh4981', 'V6-M7220', 'NA', 'Windowns 10', 'OFFICE', '6'),
(57, 'SANDD057', 'IDKKMN', '2020-11-01', 'P2419H', 'Dell', 'uj2731', 'CN-0CJR4M-QDC00-0B7-3PRS-A13', 'NA', 'Windowns 10', 'OFFICE', '6'),
(58, 'SANDD058', 'IDKKMN', '2015-12-01', 'P24va', 'HP', 'ra4877', 'CNK54907ZW', 'NA', 'Windowns 10', 'WORKSHOP', '6'),
(59, 'SANDD059', 'IDKKMN', '2016-03-01', 'P24va', 'HP', 'yn8574', 'CNK6090FFB', 'NA', 'Windowns 10', 'WORKSHOP', '6'),
(60, 'SANDD060', 'IDKKMN', '2021-12-01', 'p2422h', 'Dell', 'hm4789', 'CN-013TVG-QDC00-1CP-51XB-A02', 'NA', 'Windowns 10', 'RIDGEM MIL 72', '6'),
(61, 'SANDD061', 'IDKKMN', '2016-10-01', 'P240va', 'HP', 'ld8753', 'CNK643015W', 'NA', 'Windowns 10', 'WORKSHOP', '6'),
(62, 'SANDD062', 'IDKKMN', '2016-03-01', 'P242va', 'HP', 'yj8046', 'CNK6090FLT', 'NA', 'Windowns 10', 'WORKSHOP', '6'),
(63, 'SANDD063', 'IDKKMN', '2016-10-01', 'P240va', 'HP', 'ur2268', 'CNK64300YG', 'NA', 'Windowns 10', 'WORKSHOP', '6'),
(64, 'SANDD064', 'IDKKMN', '2019-03-01', 'ThinkVision', 'Lenovo', 'NA', 'V1PC421', 'NA', 'Windowns 10', 'WORKSHOP', '6'),
(65, 'SANDD065', 'IDKKMN', '2016-09-01', 'P240va', 'HP', 'yg8113', 'CNK639176T', 'NA', 'Windowns 10', 'WORKSHOP', '6'),
(66, 'SANDD066', 'IDKKMN', '2014-12-01', 'S2340Lc', 'Dell', 'fm6871', 'CK2641804CA01ST', 'NA', 'Windowns 10', 'WORKSHOP', '6'),
(67, 'SANDD067', 'IDKKMN', '2016-09-01', 'P240va', 'HP', 'fm6871', 'CNK639176V', 'NA', 'Windowns 10', 'WORKSHOP', '6'),
(68, 'SANDD068', 'IDKKMN', '2012-12-01', 'ThinkVision', 'Lenovo', 'tt1021', 'VDDZM37', 'NA', 'Windowns 10', 'WORKSHOP', '6'),
(69, 'SANDD069', 'IDKKMN', '2016-09-01', 'P420va', 'HP', 'ps9722', 'CNK639174N', 'NA', 'Windowns 10', 'WORKSHOP', '6'),
(70, 'SANDD070', 'IDKKMN', '2010-06-01', 'ThinkVision', 'Lenovo', 'pz5466', 'V6M7216', 'NA', 'Windowns 10', 'WORKSHOP', '6'),
(71, 'SANDD071', 'IDKKMN', '2016-03-01', 'P242va', 'HP', 'pz5466', 'CNK6090FM8', 'NA', 'Windowns 10', 'WORKSHOP', '6'),
(72, 'SANDD072', 'IDKKMN', '2009-03-01', 'ThinkVision', 'Lenovo', 'tq8685', 'V1PC420', 'NA', 'Windowns 10', 'WORKSHOP', '6'),
(73, 'SANDD073', 'IDKKMN', '2016-11-01', 'P240va', 'HP', 'tq8685', 'CNK64505T0', 'NA', 'Windowns 10', 'WORKSHOP', '6'),
(74, 'SANDD074', 'IDKKMN', '2014-03-01', '', 'Dell', 'cc3932', 'CN00JVDR7426143B0U7Q', 'NA', 'Windowns 10', 'WORKSHOP', '6'),
(75, 'SANDD075', 'IDKKMN', '2014-03-01', '', 'Dell', 'cc3932', 'CN00JVDR7426143Q17GQ', 'NA', 'Windowns 10', 'WORKSHOP', '6'),
(76, 'SANDD076', 'IDKKMN', '2015-03-01', 'ThinkVision', 'Lenovo', 'rj2750', 'CN0MDCK26418053H0HET', 'NA', 'Windowns 10', 'WORKSHOP', '6'),
(77, 'SANDD077', 'IDKKMN', '2016-10-01', 'P240va', 'HP', 'bw3882', 'CNK6420TQ2', 'NA', 'Windowns 10', 'WORKSHOP', '6'),
(78, 'SANDD078', 'IDKKMN', '2016-10-01', 'P240va', 'HP', 'cs5588', 'CNK64301T8', 'NA', 'Windowns 10', 'WORKSHOP', '6'),
(79, 'SANDD079', 'IDKKMN', '2022-02-01', 'P2422H', 'Dell', 'jogaray', 'CN013TVGQDC002241CEBA03', 'NA', 'Windowns 10', 'WAREHOUSE', '6'),
(80, 'SANDD080', 'IDKKMN', '2022-01-01', 'P2422H', 'Dell', 'bh4981', 'CN013TVGQDC0021V21SBA03', 'NA', 'Windowns 10', 'OFFICE', '6'),
(81, 'SANDD081', 'IDKKMN', '2015-03-01', 'S2340Lc', 'Dell', 'Ik7881', 'CN0MDCK26418053H0HWT', 'NA', 'Windowns 10', 'WORKSHOP', '6'),
(82, 'SANDD082', 'IDKKMN', '2014-12-01', 'S2340Lc', 'Dell', 'Pak Dwi', 'CN0MDCK2641804CA0WT', 'NA', 'Windowns 10', 'WORKSHOP', '6'),
(83, 'SANDD083', 'IDKKMN', '2022-02-01', 'P2422H', 'Dell', 'jz7171', 'CN013TVGQDC002241DKB', 'NA', 'Windowns 10', 'OFFICE', '6'),
(84, 'SANDD084', 'IDKKMN', '2022-01-01', 'P2422H', 'Dell', 'xbesili', 'CN013TVGQDC0021V2HZBA03', 'NA', 'Windowns 10', 'OFFICE', '6'),
(85, 'SANDD085', 'IDKKMN', '2016-12-01', 'P240va', 'HP', 'pg5996', 'CNK64918NJ', 'NA', 'Windowns 10', 'WORKSHOP', '6'),
(86, 'SANDD086', 'IDKKMN', '2021-04-01', 'P2422H', 'Dell', 'hp3510', 'CN013TVGQDC0014D4BL1A00', 'NA', 'Windowns 10', 'WORKSHOP', '6'),
(87, 'SANDD087', 'IDKKMN', '2015-03-01', 'Flat Panel', 'Dell', 'bh1615', 'CN0MDCK2641805321A2T', 'NA', 'Windowns 10', 'WORKSHOP', '6'),
(88, 'SANDD088', 'IDKKMN', '2014-11-01', 'Flat Panel', 'Dell', 'ee8016', 'CN0JH6ND744454BABV3B', 'NA', 'Windowns 10', 'WORKSHOP', '6'),
(89, 'SANDD089', 'IDKKMN', '2016-11-01', 'P240va', 'HP', 'ul1264', 'CNK64505SY', 'NA', 'Windowns 10', 'WORKSHOP', '6'),
(90, 'SANDD090', 'IDKKMN', '2022-07-01', 'P2422H', 'Dell', '', 'CN013TVGQDC002649QNBA04', 'NA', 'Windowns 10', 'WORKSHOP', '6'),
(91, 'SANDD091', 'IDKKMN', '0000-00-00', 'P2422H', 'dell', 'Jimmy', '6WVVMQ3', 'NA', 'Windowns 10', 'WORKSHOP', '6'),
(92, 'SANDD092', 'IDKKMN', '0000-00-00', 'P2422H', 'Dell', 'Masauso', '8MVVMQ3', 'NA', 'Windowns 10', 'WORKSHOP', '6'),
(93, 'SANDD093', 'IDKKMN', '2022-09-22', 'P2422H', 'dell', 'ym9845', 'HT6TMQ3', 'NA', 'Windowns 10', 'WORKSHOP', '6'),
(94, 'SANDD094', 'IDKKMN', '2022-09-22', 'P2422H', 'Dell', 'je3148', '6W4VMQ3', 'NA', 'Windowns 10', 'WORKSHOP', '6'),
(95, 'SANDD095', 'IDKKMN', '0000-00-00', 'P2422H', 'Dell', 'yy2387', 'CN-013TVG', 'NA', 'Windowns 10', 'WORKSHOP', '6'),
(96, 'SANDD096', 'IDKKMN', '0000-00-00', 'P2422H', 'Dell', 'pg3911', '2CY1NQ3', 'NA', 'Windowns 10', 'WORKSHOP', '6'),
(97, 'SANDD097', 'IDKKMN', '0000-00-00', 'P2422H', 'Dell', '', 'CN-013TVG-QDC00-33R-4WBB-A05', 'NA', 'Windowns 10', 'WORKSHOP', '6'),
(98, 'SANDD098', 'IDKKMN', '0000-00-00', 'P2422H', 'Dell', '', 'CN-013TVG-QDC00-33R-56XB-A05', 'NA', 'Windowns 10', 'WORKSHOP', '6'),
(99, 'SANDD099', 'IDKKMN', '0000-00-00', 'P2422H', 'Dell', '', 'CN-013TVG-QDC00-33R-5FNB-A05', 'NA', 'Windowns 10', 'WORKSHOP', '6'),
(100, 'SANDD100', 'IDKKMN', '0000-00-00', 'P2422H', 'Dell', '', 'CN-013TVG-QDC00-34R-3KOB-A05', 'NA', 'Windowns 10', 'OFFICE', '6');

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

--
-- Dumping data untuk tabel `tbl_network`
--

INSERT INTO `tbl_network` (`id_network`, `assets_number`, `network_id`, `date_manufacture`, `model`, `brand`, `serial_number`, `mac_address`, `type_network`, `warranty`, `jenis_aktivasi`) VALUES
(1, 'SANLD002', 'IDUPC586', '2023-08-09', 'D', 'Dell', 'PF02BHCW', 'asfaenafk', 'sembarang', 'Windows 10', '6'),
(2, 'SANLD004', 'jbjbmjb4', '2023-08-14', 'dfea4', 'T4404', 'PC032D0Q4', 'knkln4', 'hhhjvj24', 'bjhbjhbhj24', '7');

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

--
-- Dumping data untuk tabel `tbl_orbit`
--

INSERT INTO `tbl_orbit` (`id_orbit`, `assets_number`, `assets_name`, `model`, `brand`, `po`, `serial_number`, `imei`, `locations`, `jenis_aktivasi`) VALUES
(1, 'faf', 'fafa', 'fafaafa', 'afaf', 'afaf', 'afaf', 'afaf', 'fafa', '6');

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

--
-- Dumping data untuk tabel `tbl_pc`
--

INSERT INTO `tbl_pc` (`id_pc`, `assets_number`, `assets_name`, `pc_date`, `pc_model`, `brand`, `user_di`, `serial_number`, `mac_address`, `hard_disk`, `processor`, `operating_system`, `room`, `jenis_aktivasi`) VALUES
(1, 'SANPD001', 'IDUPC847', '2020-01-21', 'OpitPlex3070', 'Dell', 'co6481', '186ZV23', 'A4BB6D9F1CA2', '238.35 GB', 'Intel(R) Core(TM) i5-9S00T CPU @ 2.20GHz', 'Windows 10', 'OFFICE', '6'),
(2, 'SANPD002', 'IDUPC825', '2019-05-08', 'OpitPlex3060', 'Dell', 'fk2282', '126S8X2', 'NA', '238..35 GB', 'Intel(R) Core(TM) i5-8500T CPU @ 2.10GHz, ', 'windows 10 Pro', 'OFFICE', '6'),
(3, 'SANPD003', 'IDUPC824', '2019-01-21', 'ThinkPad', 'Lenovo', 'gt7310', 'PC13CWPM', 'NA', '238..35 GB', 'Intel(R) Core(TM) I5650t CPU @ 2.50GHz, 2496 Mhz, 4 Core (s), 4', 'Windows 10', 'OFFICE', '6'),
(4, 'SANPD004', 'IDUPC826', '2019-08-05', 'OpitPlex3060', 'Dell', 'yj5140', '126Z8X2', 'NA', '238..35 GB', 'Intel(R) Core(TM) i5-8500T CPU @ 2.10GHz, ', 'Windwos 10', 'OFFICE', '6'),
(5, 'SANPD005', 'IDUPC853', '2021-04-28', 'OpitPlex3080', 'Dell', 'yv7241', '6QK0RD3', 'NA', '238..35 GB', 'Intel(R) Core(TM) i5-10500T CPU @ 2.30GHz, 2304 Mhz, 6 Core(s) 12 Logical Processor(s)', 'Windwos 10', 'OFFICE', '6'),
(6, 'SANPD006', 'IDUPC802', '2017-11-04', 'ThinkCentre', 'Lenovo', 'kq6398', 'PC0LX1HY', '6C4B90082704', '238..35 GB', 'Intel(R) Core(TM) i5-6500T @ 2.50GHz, 2496 Mhz, 4 Core(s), 4 Logical Processor(s)', 'Windwos 10', 'OFFICE', '6'),
(7, 'SANPD007', 'IDUPC678', '2015-02-08', 'ThinkCentre', 'Lenovo', 'yy2387', 'PC08NM0B', 'D8CB8AB5A307', '465.64 GB', 'Intel(R) Core(TM) i5-4570T @ 2.90ghZ, 2901 Mhz, 2 Core(s), 4 Logical Processor(s)', 'Windwos 10', 'WAREHOUSE', '6'),
(8, 'SANPD008', 'IDUPC845', '2020-03-03', 'OpitLex 3070', 'Dell', 'by7192', 'HV7T033', 'NA', '238.35 GB', 'Intel(R) Core(TM) i5-9500T CPU @ 2.20GHz, 2208 Mhz, 6 Core(s), 6 Logistic Processor(s)', 'Windwos 10', 'WAREHOUSE', '6'),
(9, 'SANPD009', 'IDUPC828', '2019-08-05', 'OpitLex 3060', 'Dell', 'jogaray', '18W09X2', 'NA', '238.35 GB', 'Intel(R) Core(TM) i5-8500T CPU @2.10GHz, 2112 Mhz, 6 Core(s), 6 Logistic Processor(s)', 'Windwos 10', 'WAREHOUSE', '6'),
(10, 'SANPD010', 'IDUPC813', '2018-04-20', 'ThinkCentre', 'Lenovo', 'yz3368', 'PC0V4MU5', '6C4B906AB740', '238.35 GB', 'Intel(R) Core(TM) i5-6500T CPU @ 2.50GHz, 2496 Mhz, 4 Core(s), 4 Logical Processor(s)', 'Windwos 10', 'WAREHOUSE', '6'),
(11, 'SANPD011', 'IDUPC800', '0000-00-00', 'ThinkCentre', 'Lenovo', 'uj7292', 'PC0GDDY8', '', '465.68 GB', 'Intel(R) Core(TM) i5-6500T @ CPU @ 2.50GHz, 4 Core(s), 4 Logical Processor(s)', 'Windwos 10', 'WAREHOUSE', '6'),
(12, 'SANPD012', '', '2019-05-08', 'OpitPlex 3060', 'Dell', 'ys8390', '18WT8x2', 'NA', '238. 64 GB', 'Intel(R) Core(TM) i5-8500T CPU @ 2.10GHz, 2112 Mhz, 6 Core(s), 6 Logical Processor(s)', 'Windwos 10', 'WAREHOUSE', '6'),
(13, 'SANPD014', 'IDUPC835', '2019-08-15', 'OpitPlex 3060', 'Dell', '', '25RL6Z2', 'NA', '238.35 GB', 'Intel(R) Core(TM) i5-8500T CPU @ 2.10GHz', 'Windwos 10', 'ELECTIRC', '6'),
(14, 'SANPD015', 'IDUPC694', '2016-08-12', 'ThinkCentre', 'Lenovo', 'grpfwdi', 'PC0J4X07', '6C0B84E3BECB', '465.64 GB', 'Intel(R) Core(TM) i5-6500T CPU @ 2.50GHz, 2496 Mhz, 4 Core(s), 4 Logical Processor(s)', 'Windwos 10', 'DRIFTER', '6'),
(15, 'SANPD016', '', '2016-08-12', 'ThinkCentre', 'Lenovo', 'lipcylr', 'PC0J4X08', '6C0B84E3BE09', '465.64 GB', 'Intel(R) Core(TM) i5-6500T CPU @ 250GHz, 2496 Mhz, 4 Core(s), 4 Logical Processor(s)', 'Windwos 10', 'CLYNDER', '6'),
(16, 'SANPD017', 'IDUPC697', '2016-08-12', 'ThinkCentre', 'Lenovo', '', 'PC0HUJ4E', '002324DF68C8', '465.64 GB', 'Intel(R) Core(TM) i5-6500T CPU @ 250GHz, 2496 Mhz, 4 Core(s), 4 Logical Processor(s)', 'Windwos 10', 'AXEL', '6'),
(17, 'SANPD018', '', '2016-08-12', 'ThinkCentre', 'Lenovo', 'tt1021', 'PC0HUJ4F', '002324DE312B', '465.64 GB', 'Intel(R) Core(TM) i5-6500T CPU @ 250GHz, 2496 Mhz, 4 Core(s), 4 Logical Processor(s)', 'Windwos 10', 'FABRIKASI', '6'),
(18, 'SANPD019', 'IDUPC698', '2016-09-23', 'ThinkCentre', 'Lenovo', '', 'PC0GPPHF', '002324CD044F', '465.64 GB', 'Intel(R) Core(TM) i5-6500T CPU @ 250GHz, 2496 Mhz, 4 Core(s), 4 Logical Processor(s)', 'Windwos 10', 'ELECTIRC', '6'),
(19, 'SANPD020', 'IDUPC844', '2020-03-03', 'OpitPlex 3070', 'Dell', 'ys8390', 'HV7X033', 'NA', '238.35 GB', 'Intel(R) Core(TM) i5-9500T CPU @ 2.20GHz, 2208 Mhz, 6 Core(s), 6 Logistic Processor(s)', 'Windwos 10', 'LOGISTIC', '6'),
(20, 'SANPD021', 'IDUPC816', '2018-04-23', 'ThinkCentre', 'Lenovo', 'kf4643', 'PC0X8MWL', '6C4B907FB7CC', '238.35 GB', 'Intel(R) Core(TM) i5-6500T CPU @ 2.50GHz, 2496 Mhz, 4 Core(s), 4 Logical Processor(s)', 'Windwos 10', 'LOGISTIC', '6'),
(21, 'SANPD022', 'IDUPC827', '0000-00-00', 'ThinkCentre', 'Lenovo', 'lm2970', '18WW8X2', 'NA', '238.35 GB', 'Intel(R) Core(TM) i5-8500T CPU @2.10GHz, 2112 Mhs, 6 Logical Processor(s)', 'Windwos 10', 'LOGISTIC', '6'),
(22, 'SANPD023', 'IDUPC801', '2016-05-09', 'ThinkCentre', 'Lenovo', 'ru5558', 'PC0GDDY7', '6C0B84E0BC71', '476.81 GB', 'Intel(R) Core(TM) i5-6500T CPU @ 2.50GHz, 2496 Mhz, 4 Core(s), 4 Logical Processor(s)', 'Windwos 10', 'LOGISTIC', '6'),
(23, 'SANPD024', 'IDUPC817', '2018-04-20', 'ThinkCentre', 'Lenovo', 'yy4245', 'PC0X8MWJ', '6C4B907FB7D9', '238.35 GB', 'Intel(R) Core(TM) i5-6500T CPU @ 2.50GHz, 2496 Mhz, 4 Core(s), 4 Logical Processor(s)', 'Windwos 10', 'LOGISTIC', '6'),
(24, 'SANPD025', 'IDUPC815', '2018-04-20', 'ThinkCentre', 'Lenovo', 'thjohan', 'PC0X8MWK', '6C4B907FB6CB', '238.35 GB', 'Intel(R) Core(TM) i5-6500T CPU @ 250GHz, 2496 Mhz, 4 Core(s), 4 Logical Processor(s)', 'Windwos 10', 'LOGISTIC', '6'),
(25, 'SANPD026', 'IDUPC684', '2018-04-09', 'ThinkCentre', 'Lenovo', 'kf4643', 'PC0H15RA', '6C0B84E081FF', '471.81 GB', 'Intel(R) Core(TM) i5-6500T CPU @ 2.50GHz, 2496 Mhz, 4 Core(s), 4 Logical Processor(s)', 'Windwos 10', 'LOGISTIC', '6'),
(26, 'SANPD027', 'IDUPC819', '2019-04-30', 'ThinkCentre', 'Lenovo', 'tf6344', 'PC0ZTBEZ', '6C4B906B3914', '238.35 GB', 'Intel(R) Core(TM) i5-6500T CPU @ 2.50GHz, 2496 Mhz, 4 Core(s), 4 Logical Processor(s)', 'Windwos 10', 'LOGISTIC', '6'),
(27, 'SANPD028', 'IDUPC852', '2020-08-12', 'OpitPlex 3080', 'Dell', 'uj2731', 'FBZHL83', 'NA', '238.35 GB', 'Intel(R) Core(TM) i5-10500T CPU @ 2.30GHz, 2304 Mhz, 6 Core(s) 12 Logical Processor(s)', 'Windwos 10', 'OFFICE', '6'),
(28, 'SANPD029', 'IDUPC698', '2016-09-23', 'ThinkCentre', 'Lenovo', '', 'PC0GPPHF', '00234CD0447', '465.64 GB', 'Intel(R) Core(TM) i5-65--T CPU @ 2.50GHz, 2.50GHz, 4 Core(s), 4 Logical Processore(s)', 'Windwos 10', 'AXEL', '6'),
(29, 'SANPD030', 'IDUPC690', '2016-08-12', 'ThinkCentre', 'Lenovo', 'lipgetm', 'PC0J4X0A', '6C0B84E3BEC7', '476.81 GB', 'Intel(R) Core(TM) i5-6500T CPU @ 2.50GHz, 4 Core(s), 4 Logical Processor(s)', 'Windwos 10', 'REBUILD', '6'),
(30, 'SANPD031', 'IDUPC692', '2016-12-08', 'ThinkCentre', 'Lenovo', '', 'PC0J4X09', '6C0B84E3C195', '476.81 GB', 'Intel(R) Core(TM) i5-6500T CPU @ 2.50GHz, 2496 Mhz, 4 Core(s), 4 Logical Processor(s)', 'Windwos 10', 'RAMMER', '6'),
(31, 'SANPD032', 'IDUPC809', '0000-00-00', 'ThinkCentre', 'Lenovo', 'ra4877', '', '', '', 'Intel(R) Core(TM) i5-6500T CPU @ 2.50GHz, 2496 Mhz, 4 Core(s), 4 Logical Processor(s)', 'Windwos 10', 'WORKSHOP', '6'),
(32, 'SANPD033', 'IDUPC811', '2018-06-09', 'ThinkCentre', 'Lenovo', 'hb6185', 'PC0JK5AU', '6C0B84E3C7F0', '476.81 GB', 'Intel(R) Core(TM) i5-6500T CPU @ 2.50GHz, 2496 Mhz, 4 Core(s), 4 Logical Processor(s)', 'Windwos 10', 'WORKSHOP', '6'),
(33, 'SANPD034', 'IDUPC695', '2016-08-12', 'ThinkCentre', 'Lenovo', 'ex5595', 'PC0J4X0B', '6C0B84E3BE0B', '465.64 GB', 'Intel(R) Core(TM) i5-6500T CPU @ 2.50GHz, 2496 Mhz, 4 Core(s), 4 Logical Processor(s)', 'Windwos 10', 'WORKSHOP', '6'),
(34, 'SANPD035', 'IDUPC699', '2016-09-23', 'ThinkCentre', 'Lenovo', 'Id8753', 'PC06PDHE', '002324CD01F1', '476.81 GB', 'Intel(R) Core(TM) i5-6500T CPU @ 2.50GHz, 2496 Mhz, 4 Core(s), 4 Logical Processor(s)', 'Windwos 10', 'WORKSHOP', '6'),
(35, 'SANPD036', 'IDUPC838', '2019-08-15', 'ThinkCentre', 'Lenovo', 'yj8046', '', '', '238.35 GB', 'Intel(R) Core(TM) i5-8500T CPU @ 2.10GHz, 2112 Mhz, 6 Core(s), 6 Logical Processor(s)', 'Windwos 10', 'WORKSHOP', '6'),
(36, 'SANPD037', 'IDUPC680', '2016-05-11', 'ThinkCentre', 'Lenovo', 'ur2268', 'PC0CZJ5D', '002324BA53DA', '476.81 GB', 'Intel(R) Core(TM) i5-6500T CPU @ 2.50GHz, 2496 Mhz, 4 Core(s), 4 Logical Processor(s)', 'Windwos 10', 'WORKSHOP', '6'),
(37, 'SANPD038', 'IDUPC805', '2016-12-08', 'ThinkCentre', 'Lenovo', 'yg8113', 'PC0JK5AT', '6C0B84E3C950', '465.64 GB', 'Intel(R) Core(TM) i5-6500T CPU @ 2.50GHz, 2496 Mhz, 4 Core(s), 4 Logical Processor(s)', 'Windwos 10', 'WORKSHOP', '6'),
(38, 'SANPD039', 'IDUPC686', '2016-11-08', 'ThinkCentre', 'Lenovo', 'tt1021', 'PC0HB6XE', '002324D681F0', '465.64 GB', 'Intel(R) Core(TM) i5-6500T CPU @ 2.50GHz, 2496 Mhz, 4 Core(s), 4 Logical Processor(s)', 'Windwos 10', 'WORKSHOP', '6'),
(39, 'SANPD040', 'IDUPC806', '2016-12-08', 'ThinkCentre', 'Lenovo', 'ps9722', 'PC0J23R9', '6C0B84E1FCF8', '476.81 GB', 'Intel(R) Core(TM) i5-6500T CPU @ 2.50GHz, 2496 Mhz, 4 Core(s), 4 Logical Processor(s)', 'Windwos 10', 'WORKSHOP', '6'),
(40, 'SANPD041', 'IDUPC671', '2015-03-11', 'ThinkCentre', 'Lenovo', 'fm6871', 'PC04PSMK', 'D8CB8A478608', '931.39 GB', 'Intel(R) Core(TM) i7-4770T CPU @ 3.40GHz, 3401 Mhz, 4 Core(s), 8 Logical Processor(s)', 'Windwos 10', 'WORKSHOP', '6'),
(41, 'SANPD042', 'IDUPC687', '2016-11-08', 'ThinkCentre', 'Lenovo', 'fm6871', 'PC0HB6XF', '002324D68388', '238.35 GB', 'Intel(R) Core(TM) i5-6500T CPU @ 2.50GHz, 2496 Mhz, 4 Core(s), 4 Logical Processor(s)', 'Windwos 10', 'WORKSHOP', '6'),
(42, 'SANPD043', 'IDUPC834', '2022-05-25', 'ThinkCentre', 'Lenovo', 'bi0040', '', 'E454E86739B5', '238.35 GB', 'Intel(R) Core(TM) i5-8500T CPU @ 2.10GHz, 2112 Mhz, 6 Core(s), 6 Logical Processor(s)', 'Windwos 10', 'WORKSHOP', '6'),
(43, 'SANPD044', 'IDUPC803', '2018-08-12', 'ThinkCentre', 'Lenovo', 'tq8685', 'PC0JK5AS', '6C01384E3C793', '476.81 GB', 'Intel(R) Core(TM) i5-6500T CPU @ 2.50GHz, 2496 Mhz, 4 Core(s), 4 Logical Processor(s)', 'Windwos 10', 'WORKSHOP', '6'),
(44, 'SANPD045', 'IDUPC683', '2016-11-05', 'ThinkCentre', 'Lenovo', 'pz5466', 'PC0CZJ5E', '002324BA53A9', '476.81 GB', 'Intel(R) Core(TM) i5-6500T CPU @ 2.50GHz, 2496 Mhz, 4 Core(s), 4 Logical Processor(s)', 'Windwos 10', 'WORKSHOP', '6'),
(45, 'SANPD046', 'IDUPC804', '2016-08-12', 'ThinkCentre', 'Lenovo', 'pg5996', 'PC0JK5AX', '6C0B84E3C6E0', '465.64 GB', 'Intel(R) Core(TM) i5-6500T CPU @ 2.50GHz, 2496 Mhz, 4 Core(s), 4 Logical Processor(s)', 'Windwos 10', 'WORKSHOP', '6'),
(46, 'SANPD047', 'IDUPC807', '0000-00-00', 'ThinkCentre', 'Lenovo', 'bw3882', 'PC0JK5AY', '', '474 GB', 'Intel(R) Core(TM) i5-6500T CPU @ 2.50GHz, 2496 Mhz, 4 Core(s), 4 Logical Processor(s)', 'Windwos 10', 'WORKSHOP', '6'),
(47, 'SANPD048', 'IDUPC691', '2012-11-05', 'ThinkCentre', 'Lenovo', 'bi0040', 'PC0J23R8', '', '463 GB', 'Intel(R) Core(TM) i5-6500T CPU @ 2.50GHz, 2496 Mhz, 4 Core(s), 4 Logical Processor(s)', 'Windwos 10', 'WORKSHOP', '6'),
(48, 'SANPD049', 'IDUPC848', '2020-01-21', 'ThinkCentre', 'Lenovo', 'Falen', '1883W23', 'A4BB6D9F2591', '238.35 GB', 'Intel(R) Core(TM) i5-9500T CPU @ 2.20GHz, 2208 Mhz, 6 Core(s), 6 Logistic Processor(s)', 'Windwos 10', 'WORKSHOP', '6'),
(49, 'SANPD050', 'IDUPC599', '2018-04-06', 'ThinkCentre', 'Lenovo', 'bh1615', 'PC0DXDCL', '507B9DE14BC8', '238.35 GB', 'Intel(R) Core(TM) i5-5300U CPU @2.30GHz, 2295 Mhz, 2 Core(s), 4 Logical Processor(s)', 'Windwos 10', 'WAREHOUSE', '6'),
(50, 'SANPD051', 'IDUPC688', '2016-12-08', 'ThinkCentre', 'Lenovo', 'Pak Dwi', 'PC0J4X06', '6C0B84E3BE26', '471.81 GB', 'Intel(R) Core(TM) i5-6500T CPU @ 2.50GHz, 2496 Mhz, 4 Core(s), 4 Logical Processor(s)', 'Windwos 10', 'WORKSHOP', '6'),
(51, 'SANPD052', 'IDUPC837', '2019-09-25', 'ThinkCentre', 'Lenovo', 'yj5140', '25SL6Z2', 'E4 54 E8 66 CF E3', '', '', 'Windwos 10', 'WAREHOUSE', '6'),
(52, 'SANPD053', '', '0000-00-00', 'ThinkCentre', 'Lenovo', '', '', '', '', '', 'Windwos 10', 'WAREHOUSE', '6'),
(53, 'SANPD054', '', '0000-00-00', 'ThinkCentre', 'Lenovo', '', '', '', '', '', 'Windwos 10', 'WAREHOUSE', '6'),
(54, 'SANPD055', 'IDUPC855', '0000-00-00', 'Dell 3000', 'Dell', 'kq1201', '', '', '', '', 'Windwos 10', 'WAREHOUSE', '6'),
(55, 'SANPD056', 'IDUPC856', '0000-00-00', 'Dell 3000', 'Dell', 'uc4133', '', '', '', '', 'Windwos 10', 'WAREHOUSE', '6');

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
(10, 'Internship Student', '', '<p style=\"text-align: center; \"><br></p><p><span style=\"color: rgb(66, 66, 66);\">Hi! my name is ahmad ruslandia, i am a one-month summer intern at sandvik in Light Insdustrial park.</span></p><p><span style=\"color: rgb(66, 66, 66);\"><br></span></p><p><span style=\"color: rgb(66, 66, 66);\">I was 21 years old and staying in Timika for the job summer, i will then be going to studies in Makassar where iam currently studying computer science at Universitas Muslim Indonesia.</span></p><p><span style=\"color: rgb(66, 66, 66);\"> What iam enjoys about working in Sandvik (IT Support) is the enthusiasm of the team being eager to help interns to learn new things.</span></p><p><span style=\"color: rgb(0, 0, 0);\"><br></span></p><p><span style=\"color: rgb(0, 0, 0);\"><br></span></p><p><br></p>', 'd6e9b4ed3d9dc8abc33b8ce8c2fef043.jpg', '2023-07-28 15:19:23', '2023-08-19 20:15:32', 4, '', 'internship-student', 1, 20, 3);

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
(101, '2023-08-23 10:16:30', '::1', 10);

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

--
-- Dumping data untuk tabel `tbl_printer`
--

INSERT INTO `tbl_printer` (`id_printer`, `assets_number`, `assets_name`, `model`, `brand`, `serial_number`, `room`, `jenis_aktivasi`) VALUES
(1, 'SANDP001', 'IDKKPR', 'J-B265', 'Fuji Xerox', '838003', 'OFFICE', '6'),
(2, 'SANDP002', 'IDKKPR', 'ApoesPort c6570', 'Fuji Xerox', '838002', 'WORKSHOP', '6'),
(3, 'SANDP003', 'IDKKPR', 'D-B110', 'Fuji Xerox', '103170', 'WAREHOUSELIP', '6'),
(4, 'SANDP004', 'IDKKPR', 'Zebra ZT410 200dp', 'ZEBRA', '18J162300204', 'WAREHOUSELIP', '6'),
(5, 'SANDP005', 'IDKKPR', 'PageWide Pro 452dw', 'HP', 'NA', 'OFFICE', '6'),
(6, 'SANDP006', 'IDKKPR', 'L3210 Series', 'EPSON', 'XAGK484664', 'OFFICE', '6'),
(7, 'SANDP007', 'IDKKPR', 'L3210 Series', 'EPSON', 'XAGK640997', 'OFFICE', '6'),
(8, 'SANDP008', '', '', '', '', 'OFFICE', '6'),
(9, 'SANDP009', '', '', '', '', 'OFFICE', '6'),
(10, 'SANDP010', '', '', '', '', 'OFFICE', '6'),
(11, 'SANDP011', '', '', '', '', 'OFFICE', '6');

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

--
-- Dumping data untuk tabel `tbl_scanner`
--

INSERT INTO `tbl_scanner` (`id_scanner`, `assets_number`, `assets_name`, `model`, `brand`, `serial_number`, `room`, `jenis_aktivasi`) VALUES
(1, 'SANDS001', 'IDKKSC', 'DS-530', 'EPSON', 'X2HB007908', 'WAREHOUSELIP', '6'),
(2, 'SANDS002', 'IDKKSC', 'DS-530', 'EPSON', 'X2HB008676', 'WAREHOUSELIP', '6'),
(3, 'SANDS003', 'IDKKSC', 'SHNGD-5037', 'HP', 'CN8AAD6050', 'OFFICE', '6'),
(4, 'SANDS004', 'IDKKSC', 'P-TOUCH P950NW', 'P-TOUCH ', 'HTZ849688', 'WORKSHOP', '6'),
(5, 'SANDS005', 'IDKKSC', 'Label Printer', 'Brother QL-1060N', 'E6575-C6Z448111', 'OFFICE', '6'),
(6, 'SANDS006', 'IDKKSC', '', '', '', 'OFFICE', '6'),
(7, 'SANDS007', 'IDKKSC', '', '', '', 'OFFICE', '6'),
(8, 'SANDS008', 'IDKKSC', '', '', '', 'OFFICE', '6'),
(9, 'SANDS009', 'IDKKSC', '', '', '', 'OFFICE', '6'),
(10, 'SANDS010', 'IDKKSC', '', '', '', 'OFFICE', '6'),
(11, 'SANDS011', 'IDKKSC', '', '', '', 'OFFICE', '6');

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
(1, 'SANDIVIK - ASSET 2020', 'Home', 'We are forward thinkers, driven by our passion to continuosly innovate smarter solutions and enable importants shifts.', 'Picsart_23-07-27_12-53-35-584.jpg', 'logo.png', 'logo.png', 'nwdn_file_temp_16097665861841.jpg', 'https://www.facebook.com/wandaatifah.wandaatifah', '#', 'https://www.instagram.com/wandaathifah/', '#', '#');

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

--
-- Dumping data untuk tabel `tbl_tablet`
--

INSERT INTO `tbl_tablet` (`id_tablet`, `assets_number`, `assets_name`, `tablet_date`, `model`, `brand`, `user_di`, `serial_number`, `mac_address`, `hard_disk`, `operating_system`, `room`, `jenis_aktivasi`) VALUES
(1, 'SANDT001', 'IDUPC772', '2021-04-08', 'ThinkPad', 'Lenovo', 'Lipgetm', 'R914KNTA', 'F4A80D15A942', '476.81 GB', 'Windows 10', 'REBUILD', '6'),
(2, 'SANDT002', 'IDUPC736', '2018-06-06', 'ThinkPad', 'Lenovo', 'grpfwdi', 'L1HF8AB010V', 'E86464355C6E', '238.35 GB', 'Windows 10', 'DRIFTER', '6'),
(3, 'SANDT003', 'IDUPC698', '2018-06-06', 'ThinkPad', 'Lenovo', 'axelrebuild16', 'PF1FHYFD', 'E86A64355CC2', '238.35 GB', 'Windows 10', 'AXEL', '6'),
(4, 'SANDT004', 'IDUPC771', '2021-04-08', 'ThinkPad', 'Lenovo', '', 'R914KNTB', 'FAA80D15A6A5', '476.81 GB', 'Windows 10', 'CLYNDER', '6'),
(5, 'SANDT005', 'IDHPC901', '2018-08-21', '2CHS1SF0B', 'Lenovo', '', 'R90HV8L0', 'NA', '238.35 GB', 'Windows 10', 'RAMMER', '6');

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

--
-- Dumping data untuk tabel `tbl_tv`
--

INSERT INTO `tbl_tv` (`id_tv`, `assets_number`, `assets_name`, `model`, `brand`, `serial_number`, `room`, `jenis_aktivasi`) VALUES
(31, 'SANLD001', 'IDUPC575', 'dfeaf', 'Lenovo', 'PF02BHCW', 'OFFICE', '7'),
(32, 'SANLD002', 'IDUPC575', 'dfeav', 'Dell', 'PC032D0', 'OFFICE', '7'),
(33, 'SANLD003', 'IDUPC586', 'dfeak', 'Toshiba', 'PF02BHC', 'OFFICE', '6'),
(34, 'SANLD000', 'IDUPC586', 'dfeal', 'ROG', 'PC032D0Qm', 'OFFICE', '7');

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

--
-- Dumping data untuk tabel `tbl_ups`
--

INSERT INTO `tbl_ups` (`id_ups`, `assets_number`, `network_id`, `date_manufacture`, `model`, `brand`, `serial_number`, `type_ups`, `warranty`, `jenis_aktivasi`) VALUES
(1, 'SANLD002', 'IDUPC586', '2023-08-09', 'D', 'Dell', 'asfaenafk', 'sembarang', 'Windows 10', '6'),
(2, 'SANLD004', 'jbjbmjb4', '2023-08-14', 'dfea4', 'T4404', 'knkln4', 'hhhjvj24', 'bjhbjhbhj24', '7');

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
(3, '13020200002', 'Ahmad Ruslandia Papua', '+6281240713388', 'ruslandiaamin@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'Highland', 'IT', 'Office', '1', '1', '68131940d12491591327a0b75a8a0c43.jpg');

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
(541421, '2023-08-23 02:37:06', '::1', 'Chrome');

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
-- Dumping data untuk tabel `tbl_wifi`
--

INSERT INTO `tbl_wifi` (`id_wifi`, `assets_number`, `assets_name`, `date_manufacture`, `model`, `brand`, `serial_number`, `mac_address`, `room`, `jenis_aktivasi`) VALUES
(23, 'SANLD001', 'srgsrg', '2023-08-08', 'sdda', 'Dell', 'PC032D0Q', 'ndcvklnvdklndskl', 'OFFICE', '6');

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
  MODIFY `id_docking` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `tbl_handphone`
--
ALTER TABLE `tbl_handphone`
  MODIFY `id_handphone` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `tbl_hdd`
--
ALTER TABLE `tbl_hdd`
  MODIFY `id_hdd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `tbl_headset`
--
ALTER TABLE `tbl_headset`
  MODIFY `id_headset` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `tbl_home`
--
ALTER TABLE `tbl_home`
  MODIFY `home_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_ht`
--
ALTER TABLE `tbl_ht`
  MODIFY `id_ht` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_jenis`
--
ALTER TABLE `tbl_jenis`
  MODIFY `id_jenis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tbl_keyboard`
--
ALTER TABLE `tbl_keyboard`
  MODIFY `id_keyboard` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `tbl_laptop`
--
ALTER TABLE `tbl_laptop`
  MODIFY `id_laptop` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT untuk tabel `tbl_lcdprojector`
--
ALTER TABLE `tbl_lcdprojector`
  MODIFY `id_lcdprojector` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `tbl_monitor`
--
ALTER TABLE `tbl_monitor`
  MODIFY `id_monitor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT untuk tabel `tbl_navbar`
--
ALTER TABLE `tbl_navbar`
  MODIFY `navbar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `tbl_network`
--
ALTER TABLE `tbl_network`
  MODIFY `id_network` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_pc`
--
ALTER TABLE `tbl_pc`
  MODIFY `id_pc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT untuk tabel `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tbl_post_views`
--
ALTER TABLE `tbl_post_views`
  MODIFY `view_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT untuk tabel `tbl_printer`
--
ALTER TABLE `tbl_printer`
  MODIFY `id_printer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `tbl_scanner`
--
ALTER TABLE `tbl_scanner`
  MODIFY `id_scanner` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `tbl_site`
--
ALTER TABLE `tbl_site`
  MODIFY `site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_tablet`
--
ALTER TABLE `tbl_tablet`
  MODIFY `id_tablet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `tbl_tags`
--
ALTER TABLE `tbl_tags`
  MODIFY `tag_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_tv`
--
ALTER TABLE `tbl_tv`
  MODIFY `id_tv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `tbl_ups`
--
ALTER TABLE `tbl_ups`
  MODIFY `id_ups` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_visitors`
--
ALTER TABLE `tbl_visitors`
  MODIFY `visit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=541422;

--
-- AUTO_INCREMENT untuk tabel `tbl_wifi`
--
ALTER TABLE `tbl_wifi`
  MODIFY `id_wifi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
