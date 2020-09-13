-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 11, 2020 at 09:59 PM
-- Server version: 10.3.24-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `senjanii_kitchen_v2`
--

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `id` int(10) NOT NULL,
  `nama_jabatan` varchar(50) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_updated` timestamp NULL DEFAULT NULL,
  `date_deleted` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`id`, `nama_jabatan`, `date_created`, `date_updated`, `date_deleted`) VALUES
(1, 'Kurir', '2020-07-18 15:15:15', NULL, NULL),
(2, 'Admin', '2020-07-18 15:15:15', NULL, NULL),
(3, 'Investor', '2020-08-21 23:42:24', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mealbox`
--

CREATE TABLE `mealbox` (
  `id` int(10) NOT NULL,
  `jenis` enum('persegi','besar','kecil') NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_updated` timestamp NULL DEFAULT NULL,
  `date_deleted` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mealbox`
--

INSERT INTO `mealbox` (`id`, `jenis`, `keterangan`, `date_created`, `date_updated`, `date_deleted`) VALUES
(17, 'besar', 'Impor China', '2020-08-23 21:55:12', NULL, NULL),
(18, 'besar', 'Impor China', '2020-08-24 05:51:36', NULL, NULL),
(19, 'besar', '', '2020-08-23 23:45:42', NULL, NULL),
(21, 'besar', 'Impor China', '2020-08-23 15:44:37', NULL, NULL),
(22, 'besar', 'Impor China', '2020-08-24 05:51:36', NULL, NULL),
(23, 'besar', 'Impor China', '2020-08-24 05:51:36', NULL, NULL),
(24, 'besar', 'Impor China', '2020-08-24 05:51:36', NULL, NULL),
(28, 'besar', 'Impor China', '2020-08-24 05:51:36', NULL, NULL),
(30, 'besar', '', '2020-08-23 23:45:42', NULL, NULL),
(1003, 'besar', '', '2020-08-23 15:44:37', NULL, NULL),
(1005, 'besar', '', '2020-08-23 15:44:37', NULL, NULL),
(1006, 'besar', '', '2020-08-23 15:44:37', NULL, NULL),
(1009, 'besar', '', '2020-08-23 15:44:37', NULL, NULL),
(1011, 'besar', '', '2020-08-23 15:44:37', NULL, NULL),
(1022, 'besar', '', '2020-08-23 15:44:37', NULL, NULL),
(1027, 'besar', '', '2020-08-23 15:44:37', NULL, NULL),
(1032, 'besar', '', '2020-08-23 15:44:37', NULL, NULL),
(1033, 'besar', '', '2020-08-23 15:44:37', NULL, NULL),
(1034, 'persegi', '', '2020-08-23 15:56:52', NULL, NULL),
(1035, 'kecil', '', '2020-08-23 15:56:52', NULL, NULL),
(1036, 'kecil', '', '2020-08-23 15:56:52', NULL, NULL),
(1037, 'persegi', '', '2020-08-23 15:56:52', NULL, NULL),
(1039, 'persegi', '', '2020-08-23 15:56:52', NULL, NULL),
(1042, 'besar', '', '2020-08-23 15:44:37', NULL, NULL),
(1043, 'kecil', '', '2020-08-23 15:44:37', NULL, NULL),
(1044, 'kecil', '', '2020-08-23 15:44:37', NULL, NULL),
(1047, 'kecil', '', '2020-08-23 15:56:52', NULL, NULL),
(1048, 'besar', '', '2020-08-23 15:44:37', NULL, NULL),
(1049, 'kecil', '', '2020-08-25 05:48:13', NULL, NULL),
(1050, 'besar', '', '2020-08-23 15:44:37', NULL, NULL),
(1052, 'besar', '', '2020-08-23 15:44:37', NULL, NULL),
(1056, 'besar', '', '2020-08-23 15:44:37', NULL, NULL),
(1060, 'besar', '', '2020-08-23 15:44:37', NULL, NULL),
(1061, 'besar', '', '2020-08-23 15:44:37', NULL, NULL),
(1062, 'besar', '', '2020-08-23 15:44:37', NULL, NULL),
(1063, 'kecil', 'Rusak', '2020-08-23 15:56:52', NULL, NULL),
(1064, 'besar', '', '2020-08-23 15:44:37', NULL, NULL),
(1068, 'besar', '', '2020-08-23 15:56:52', NULL, NULL),
(1069, 'besar', '', '2020-08-23 15:56:52', NULL, NULL),
(1073, 'besar', '', '2020-08-23 15:56:52', NULL, NULL),
(1078, 'kecil', 'Rusak', '2020-08-23 15:56:52', NULL, NULL),
(1080, 'besar', '', '2020-08-23 15:44:37', NULL, NULL),
(1083, 'besar', '', '2020-08-23 15:44:37', NULL, NULL),
(1089, 'besar', '', '2020-08-23 15:44:37', NULL, NULL),
(1096, 'besar', '', '2020-08-23 15:44:37', NULL, NULL),
(1098, 'besar', '', '2020-08-23 15:44:37', NULL, NULL),
(1101, 'kecil', 'Rusak tapi masih layak', '2020-08-23 15:44:37', NULL, NULL),
(1102, 'kecil', '', '2020-08-23 15:44:37', NULL, NULL),
(1107, 'besar', '', '2020-08-23 15:44:37', NULL, NULL),
(1108, 'besar', '', '2020-08-23 15:44:37', NULL, NULL),
(1111, 'besar', '', '2020-08-23 15:44:37', NULL, NULL),
(1112, 'besar', '', '2020-08-23 15:44:37', NULL, NULL),
(1117, 'besar', '', '2020-08-23 15:44:37', NULL, NULL),
(1118, 'besar', '', '2020-08-23 15:44:37', NULL, NULL),
(1126, 'besar', '', '2020-08-23 15:44:37', NULL, NULL),
(1130, 'besar', '', '2020-08-23 15:44:37', NULL, NULL),
(1132, 'besar', '', '2020-08-23 15:44:37', NULL, NULL),
(1133, 'kecil', '', '2020-08-24 05:51:36', NULL, NULL),
(1138, 'besar', '', '2020-08-23 15:44:37', NULL, NULL),
(1139, 'kecil', '', '2020-08-23 15:56:52', NULL, NULL),
(1141, 'kecil', '', '2020-08-23 15:56:52', NULL, NULL),
(1143, 'kecil', '', '2020-08-23 15:56:52', NULL, NULL),
(1144, 'kecil', '', '2020-08-23 15:56:52', NULL, NULL),
(1145, 'kecil', '', '2020-08-23 15:56:52', NULL, NULL),
(1146, 'kecil', '', '2020-08-23 15:56:52', NULL, NULL),
(1147, 'kecil', '', '2020-08-23 15:56:52', NULL, NULL),
(1148, 'kecil', '', '2020-08-23 15:56:52', NULL, NULL),
(1149, 'kecil', '', '2020-08-23 15:56:52', NULL, NULL),
(1153, 'kecil', '', '2020-08-23 15:56:52', NULL, NULL),
(1155, 'kecil', '', '2020-08-23 15:56:52', NULL, NULL),
(1156, 'kecil', '', '2020-08-23 15:56:52', NULL, NULL),
(1162, 'persegi', '', '2020-08-23 15:56:52', NULL, NULL),
(1165, 'persegi', '', '2020-08-23 15:56:52', NULL, NULL),
(1166, 'persegi', '', '2020-08-23 15:56:52', NULL, NULL),
(1174, 'persegi', '', '2020-08-23 15:56:52', NULL, NULL),
(1181, 'persegi', '', '2020-08-23 15:56:52', NULL, NULL),
(1184, 'persegi', '', '2020-08-23 15:56:52', NULL, NULL),
(1194, 'persegi', '', '2020-08-23 15:56:52', NULL, NULL),
(1195, 'persegi', '', '2020-08-23 15:56:52', NULL, NULL),
(1196, 'persegi', '', '2020-08-23 15:56:52', NULL, NULL),
(1197, 'persegi', '', '2020-08-23 15:56:52', NULL, NULL),
(1200, 'persegi', '', '2020-08-23 15:56:52', NULL, NULL),
(1204, 'persegi', '', '2020-08-23 15:56:52', NULL, NULL),
(1210, 'persegi', '', '2020-08-23 15:56:52', NULL, NULL),
(1214, 'besar', '', '2020-08-23 15:44:37', NULL, NULL),
(1222, 'besar', '', '2020-08-23 15:44:37', NULL, NULL),
(1224, 'besar', 'Rusak', '2020-08-23 15:44:37', NULL, NULL),
(1228, 'kecil', '', '2020-08-23 15:56:52', NULL, NULL),
(1229, 'kecil', '', '2020-08-23 15:56:52', NULL, NULL),
(1230, 'besar', '', '2020-08-23 15:44:37', NULL, NULL),
(1234, 'besar', '', '2020-08-23 15:44:37', NULL, NULL),
(1235, 'besar', '', '2020-08-23 15:44:37', NULL, NULL),
(1240, 'besar', '', '2020-08-23 15:44:37', NULL, NULL),
(1241, 'kecil', '', '2020-08-23 21:55:12', NULL, NULL),
(1247, 'besar', '', '2020-08-23 15:44:37', NULL, NULL),
(1249, 'besar', '', '2020-08-23 15:44:37', NULL, NULL),
(1265, 'besar', '', '2020-08-23 15:44:37', NULL, NULL),
(1300, 'persegi', '', '2020-08-23 15:44:37', NULL, NULL),
(1301, 'persegi', '', '2020-08-26 21:51:26', NULL, NULL),
(1302, 'persegi', '', '2020-08-25 00:22:56', NULL, NULL),
(1303, 'persegi', '', '2020-08-23 15:44:37', NULL, NULL),
(1305, 'kecil', '', '2020-08-23 15:44:37', NULL, NULL),
(1306, 'persegi', '', '2020-08-23 21:55:12', NULL, NULL),
(1308, 'persegi', '', '2020-08-23 21:55:12', NULL, NULL),
(1309, 'persegi', '', '2020-08-26 21:50:45', NULL, NULL),
(1311, 'kecil', '', '2020-08-23 15:44:37', NULL, NULL),
(1312, 'kecil', '', '2020-08-24 05:51:36', NULL, NULL),
(1313, 'besar', '', '2020-08-23 15:44:37', NULL, NULL),
(1314, 'persegi', '', '2020-08-26 21:50:45', NULL, NULL),
(1315, 'persegi', '', '2020-08-24 11:22:29', NULL, NULL),
(1318, 'persegi', '', '2020-08-24 11:22:29', NULL, NULL),
(1320, 'persegi', '', '2020-08-26 21:51:26', NULL, NULL),
(1321, 'persegi', '', '2020-08-23 15:44:37', NULL, NULL),
(1322, 'persegi', '', '2020-08-23 15:56:52', NULL, NULL),
(1323, 'persegi', '', '2020-08-23 15:44:37', NULL, NULL),
(1326, 'persegi', '', '2020-08-23 15:44:37', NULL, NULL),
(1327, 'persegi', '', '2020-08-24 11:22:29', NULL, NULL),
(1328, 'persegi', '', '2020-08-23 15:44:37', NULL, NULL),
(1329, 'persegi', '', '2020-08-23 15:44:37', NULL, NULL),
(1330, 'persegi', '', '2020-08-23 21:55:12', NULL, NULL),
(1331, 'persegi', '', '2020-08-23 15:44:37', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id` int(10) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `jumlah_mealbox` int(11) DEFAULT NULL,
  `date_created` timestamp NULL DEFAULT current_timestamp(),
  `date_updated` timestamp NULL DEFAULT NULL,
  `date_deleted` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id`, `nama_lengkap`, `no_hp`, `jumlah_mealbox`, `date_created`, `date_updated`, `date_deleted`) VALUES
(1, 'Ariva Luciandika', '82233996697', NULL, '2020-03-17 03:18:56', NULL, NULL),
(2, 'Anita Dominique', '87854219827', NULL, '2020-03-17 03:18:56', NULL, NULL),
(3, 'Afina Widyanafi', '81586629566', NULL, '2020-03-17 03:18:56', NULL, NULL),
(4, 'Ferby Mutia', '81372472273', NULL, '2020-03-17 03:18:56', NULL, NULL),
(5, 'Puspa Ristina K', '81217077155', NULL, '2020-03-17 03:18:56', NULL, NULL),
(6, 'Desy Rachmatullah', '85251939725', NULL, '2020-03-17 03:18:56', NULL, NULL),
(7, 'Maulita Ridha Hafshah', '8999944949', NULL, '2020-03-17 03:18:56', NULL, NULL),
(8, 'Nisrina Kharida', '81553895671', NULL, '2020-03-17 03:18:56', NULL, NULL),
(9, 'Inge Natalie H', '81331841835', NULL, '2020-03-17 03:18:56', NULL, NULL),
(10, 'Nindya Dwi Rahayu Rahmah', '87776329464', NULL, '2020-03-17 03:18:56', NULL, NULL),
(11, 'Herdinari Maulani Putri', '89527989761', NULL, '2020-03-17 03:41:06', NULL, NULL),
(12, 'Mey Elistiyani', '81805130813', NULL, '2020-03-17 03:41:06', NULL, NULL),
(13, 'Galuh Asri R', '85156139389', NULL, '2020-03-17 03:41:06', NULL, NULL),
(14, 'Aulia Nurrahma RP (Ocha)', '82245757503', NULL, '2020-03-17 03:41:06', NULL, NULL),
(15, 'Mariana R Wulandari', '87754428322', NULL, '2020-03-17 03:41:06', NULL, NULL),
(16, 'Alfitra Salsabillah Putri F', '81395870746', NULL, '2020-03-17 03:41:06', NULL, NULL),
(17, 'Resa', '85234808037', NULL, '2020-03-17 03:41:06', NULL, NULL),
(18, 'Juliana', '82256609395', NULL, '2020-03-17 03:41:06', NULL, NULL),
(19, 'Rizki Utami', '82240654496', NULL, '2020-03-17 03:41:06', NULL, NULL),
(20, 'Riza Setiawan', '81211007651', NULL, '2020-03-17 03:41:06', NULL, NULL),
(21, 'Fathur Agita Raihan', '85649015439', NULL, '2020-03-17 03:43:34', NULL, NULL),
(22, 'Muhammad Nabil Aljufri', '8111929541', NULL, '2020-03-17 03:43:34', NULL, NULL),
(23, 'Arining Rizky Handayani', '82171833177', NULL, '2020-03-17 03:43:34', NULL, NULL),
(24, 'Chaca Imani', '81392385632', NULL, '2020-03-17 03:43:34', NULL, NULL),
(25, 'Sefi Ria Ayu Mawarni', '81230443215', NULL, '2020-03-17 03:43:34', NULL, NULL),
(26, 'Gadis Filosofia Melinia', '85288845439', NULL, '2020-03-17 03:43:34', NULL, NULL),
(27, 'Ervina Nurlaily', '87761781660', NULL, '2020-03-17 03:43:34', NULL, NULL),
(28, 'Gustin Enggarsari Putri', '85816255177', NULL, '2020-03-17 03:43:34', NULL, NULL),
(29, 'I Gusti Ayu Rara Sastrayoni Wija', '81338432816', NULL, '2020-03-17 03:43:34', NULL, NULL),
(30, 'Adinda Chilliya Basuki', '81217200944', NULL, '2020-03-17 03:43:34', NULL, NULL),
(31, 'Clara', '811894819', NULL, '2020-03-17 03:45:28', NULL, NULL),
(32, 'Intan Zahiroh', '81219767438', NULL, '2020-03-17 03:45:28', NULL, NULL),
(33, 'Puan Nurul Ramadhani', '81934643474', NULL, '2020-03-17 03:45:28', NULL, NULL),
(34, 'Niken Mega', '85743501801', NULL, '2020-03-17 03:45:28', NULL, NULL),
(35, 'Inayah Najah Supiyah', '82217017171', NULL, '2020-03-17 03:45:28', NULL, NULL),
(36, 'Andhika Nino Pratama', '82137654058', NULL, '2020-03-17 03:45:28', NULL, NULL),
(37, 'Fifi Putri', '82230913695', NULL, '2020-03-17 03:45:28', NULL, NULL),
(38, 'Salsabila Pertiwi Wibowo', '81703522040', NULL, '2020-03-17 03:45:28', NULL, NULL),
(39, 'Varent Adelina Puteri', '82257915134', NULL, '2020-03-17 03:45:28', NULL, NULL),
(40, 'Ramadana Desta', '81259069802', NULL, '2020-03-17 03:45:28', NULL, NULL),
(41, 'Citra Ega Ristanti', '82292526831', NULL, '2020-03-17 03:52:29', NULL, NULL),
(42, 'Lulu Fajriani', '81314281415', NULL, '2020-03-17 03:52:29', NULL, NULL),
(43, 'Nindia Syamsi', '82333497933', NULL, '2020-03-17 03:52:29', NULL, NULL),
(44, 'I Gusti Agung Dini Restiani', '82237281672', NULL, '2020-03-17 03:52:29', NULL, NULL),
(45, 'Aluna Uthilma Saidi', '82245254570', NULL, '2020-03-17 03:52:29', NULL, NULL),
(46, 'Dinia Audia', '85785338824', NULL, '2020-03-17 03:52:29', NULL, NULL),
(47, 'Winda Andy Annisaputri', '82274572778', NULL, '2020-03-17 03:52:29', NULL, NULL),
(48, 'Primus Justian Saputera', '81216001826', NULL, '2020-03-17 03:52:29', NULL, NULL),
(49, 'Novita Millenia Jaya', '89517429534', NULL, '2020-03-17 03:52:29', NULL, NULL),
(50, 'M. Rifqy Budiansyah', '82234847206', NULL, '2020-03-17 03:52:29', NULL, NULL),
(51, 'Amrey Syahnur A', '82298056737', NULL, '2020-03-17 03:54:41', NULL, NULL),
(52, 'Fikha Zahirah Taufik', '81992127127', NULL, '2020-03-17 03:54:41', NULL, NULL),
(53, 'Alexander', '811894819', NULL, '2020-03-17 03:54:41', NULL, NULL),
(54, 'Alicia', '811894819', NULL, '2020-03-17 03:54:41', NULL, NULL),
(55, 'Nita Diah', '82247032479', NULL, '2020-03-17 03:54:41', NULL, NULL),
(56, 'Rizka Furqorina', '81215821282', NULL, '2020-03-17 03:54:41', NULL, NULL),
(57, 'Muhammad Pandu Dwi Cahyo', '85268946895', NULL, '2020-03-17 03:54:41', NULL, NULL),
(58, 'Adi Harjito', '85708290469', NULL, '2020-03-17 03:54:41', NULL, NULL),
(59, 'Khansa Eka Septianti', '82153380216', NULL, '2020-03-17 03:54:41', NULL, NULL),
(60, 'Asti Ainun Nabilah', '82315003175', NULL, '2020-03-17 03:54:41', NULL, NULL),
(61, 'Eka Shinta W', '83857858486', NULL, '2020-03-17 03:54:41', NULL, NULL),
(62, 'Royhan Al Mudhari', '08383838383', NULL, '2020-08-20 00:38:12', NULL, NULL),
(63, 'fawfaw', '08123123', NULL, '2020-08-21 10:29:40', NULL, '2020-08-21 13:35:09'),
(64, 'royhan cuy', '0912831', NULL, '2020-08-21 10:38:24', NULL, NULL),
(65, 'papaw chuaks', '08123123', NULL, '2020-08-21 13:43:15', NULL, '2020-08-21 13:43:23'),
(66, 'ciyaa', '9809123', NULL, '2020-08-21 13:43:36', NULL, '2020-08-21 13:43:44'),
(67, 'pelanggan laknat', '081231238382', NULL, '2020-08-22 03:13:19', NULL, NULL),
(68, 'Lifia Prasetia Habsari', '85649522209', NULL, '2020-08-23 15:20:36', NULL, NULL),
(69, 'Masita Rahman', '82325236575', NULL, '2020-08-23 15:23:38', NULL, NULL),
(70, 'Yoni Prawardayana', '82277257432', NULL, '2020-08-23 15:23:38', NULL, NULL),
(71, 'M. Haidi Yuzaili', '85348901315', NULL, '2020-08-23 15:23:38', NULL, NULL),
(72, 'Serri Rivally', '82218120650', NULL, '2020-08-23 15:23:38', NULL, NULL),
(73, 'Kartika', '82313986013', NULL, '2020-08-23 15:23:38', NULL, NULL),
(74, 'Riezkyna Dea', '81233553520', NULL, '2020-08-23 15:23:38', NULL, NULL),
(75, 'Maisa Dini', '85350003227', NULL, '2020-08-23 15:23:38', NULL, NULL),
(76, 'Kirana Sekar Ayu', '82250520328', NULL, '2020-08-23 15:23:38', NULL, NULL),
(77, 'Vannesa Amitha C', '81248441814', NULL, '2020-08-23 15:23:38', NULL, NULL),
(78, 'M. Hanif Azhary', '85761651000', NULL, '2020-08-23 15:23:38', NULL, NULL),
(79, 'Atika', '81333167251', NULL, '2020-08-23 15:23:38', NULL, NULL),
(80, 'Annisa Rizki Nugraheni', '8114814495', NULL, '2020-08-23 15:23:38', NULL, NULL),
(81, 'Rizka Aulia Rahma', '81235874645', NULL, '2020-08-23 15:23:38', NULL, NULL),
(82, 'Faradila Rahmatul Ula', '85730676062', NULL, '2020-08-23 15:23:38', NULL, NULL),
(83, 'Rama Zeta', '82268888859', NULL, '2020-08-26 09:02:02', NULL, NULL),
(84, 'Jatmiko', '81235874645', NULL, '2020-08-27 02:19:05', NULL, NULL),
(85, 'Dian Dwi Tanti', '82139756798', NULL, '2020-09-07 22:50:40', NULL, NULL),
(86, 'Siapa', '0808', NULL, '2020-09-08 11:28:45', NULL, '2020-09-09 01:05:58'),
(87, 'cek', '08080', NULL, '2020-09-09 01:07:51', NULL, '2020-09-09 01:10:40'),
(88, 'siapa', '08123', NULL, '2020-09-09 01:10:06', NULL, '2020-09-09 01:10:11'),
(89, 'Nadine', '85704969818', NULL, '2020-09-09 02:44:07', NULL, NULL),
(90, 'Awan', '85345029420', NULL, '2020-09-09 22:28:09', NULL, NULL),
(92, 'Surya Rakhmat Fadhillah', '87884044542', NULL, '2020-09-11 08:32:33', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personel`
--

CREATE TABLE `personel` (
  `id` int(10) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `id_jabatan` int(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `date_updated` timestamp NULL DEFAULT NULL,
  `date_deleted` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `personel`
--

INSERT INTO `personel` (`id`, `nama_lengkap`, `id_jabatan`, `email`, `password`, `date_created`, `date_updated`, `date_deleted`) VALUES
(2, 'Fawwaz Tok', 1, 'faw@sen.com', '$2y$10$ZAnLIhz1FOQFWmo6xGBe/.aFAXSmXg1qVh5/YAbDN.6C7LNT/sqOq', '2020-08-21 14:57:09', '2020-08-21 14:57:09', '2020-08-21 14:47:06'),
(12, 'Royhan Afif', 1, 'roy@sen.com', '$2y$10$5H4dII7R/X7wCa1/IbJXTuDiZLFbtTrtBNIlf0AVOnFqBP6JnEPha', '2020-03-14 12:32:41', NULL, NULL),
(15, 'Mohammad Royhan', 1, 'royhan@senjani.id', '$2y$10$RHrJ3jNbqcsUWq8vo0ws9eGyrYGvFlJ4KUn3h0eyd1qnxxIjB.keq', '2020-07-18 15:37:06', NULL, NULL),
(16, 'Fawwaz Daffa', 1, 'faw@faw.com', '$2y$10$XicWNoL.Ncjmk8/o2jbZ9O4KmlviZ6fxjX1tIyEByvfsFBBTVzW6C', '2020-08-22 00:36:54', NULL, '2020-08-22 00:36:54'),
(17, 'faw admin', 2, 'faw@admin.com', '$2y$10$1OsmWD8Uixx8878alG6n3eBoyBSnne4JUa9tOKAtTPcPdbVQAynaO', '2020-08-22 04:14:57', NULL, NULL),
(18, 'Zen', 1, 'zen@senjani.com', '', '2020-08-21 14:50:06', NULL, NULL),
(27, 'Zen', 1, 'faw@senjani.com', '$2y$10$mNoY3OHpQ1bg0M7KfAOvvOnRxl4QXTK4LiPGLm8AGKpQo9SdfhHVi', '2020-08-22 00:49:26', NULL, NULL),
(28, 'zero', 2, 'zero@admin.com', '$2y$10$OXNCxaxkbIfWZwMZabqIs.mE7kXWaBqwHZ/5.RpeatxY6TfYihRZ6', '2020-08-22 00:52:06', NULL, '2020-08-22 00:52:06'),
(32, 'senjani admin', 2, 'senjani@admin.com', '$2y$10$dWL69brmxNf1gZhiH8eGVuxqdbUaFIr1goPgKduGFffkG0bTQq/Hm', '2020-08-23 07:38:43', NULL, NULL),
(33, 'Amira Ulvi Annisa', 2, 'amira@senjani.id', '$2y$10$8/u8hRzdjOy0WbP0sulwHumg/F3PLloNjooFpK2buFbSewQNnitmy', '2020-08-23 14:53:51', NULL, NULL),
(34, 'Ibeng Abdul Latif', 2, 'ibeng@senjani.id', '$2y$10$0zKmquwFCSom0CDwcuFJrO.9XUkkMjvxSOnJ7SkuS57Nlm9YdOmpy', '2020-08-27 05:32:11', NULL, NULL),
(35, 'Imroatul', 2, 'otul@senjani.id', '$2y$10$rRMh7kzTmOaDxnRX4o3m3ekdmcHf8MdJ3al87a/cgDPpRwHjw7D8u', '2020-09-08 07:05:08', NULL, NULL),
(36, 'Coba lagi', 2, 'royhanafif@student.ub.ac.id', '$2y$10$rqBo5pnPo22aC39wATGTSuR7VGNU0TnVEdT3xPolYZ7Gsxuye6r2.', '2020-09-08 11:25:11', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sirkulasi`
--

CREATE TABLE `sirkulasi` (
  `id` int(10) NOT NULL,
  `id_pelanggan` int(10) NOT NULL,
  `id_mealbox` int(10) NOT NULL,
  `id_personel` int(10) NOT NULL,
  `status` enum('keluar','masuk') NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_updated` timestamp NULL DEFAULT NULL,
  `date_deleted` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sirkulasi`
--

INSERT INTO `sirkulasi` (`id`, `id_pelanggan`, `id_mealbox`, `id_personel`, `status`, `date_created`, `date_updated`, `date_deleted`) VALUES
(82, 78, 1303, 33, 'keluar', '2020-08-23 22:19:27', NULL, NULL),
(83, 77, 1306, 33, 'keluar', '2020-08-23 22:19:42', NULL, NULL),
(84, 73, 17, 33, 'keluar', '2020-08-23 22:19:54', NULL, NULL),
(85, 80, 19, 33, 'keluar', '2020-08-24 03:47:57', NULL, NULL),
(86, 71, 21, 33, 'keluar', '2020-08-24 03:48:12', NULL, NULL),
(87, 81, 30, 33, 'keluar', '2020-08-24 03:48:37', NULL, NULL),
(88, 76, 1330, 33, 'keluar', '2020-08-24 03:48:51', NULL, NULL),
(89, 74, 1331, 33, 'keluar', '2020-08-24 03:49:01', NULL, NULL),
(90, 75, 1308, 33, 'keluar', '2020-08-24 03:49:13', NULL, NULL),
(91, 69, 1044, 33, 'keluar', '2020-08-24 03:49:40', NULL, NULL),
(92, 70, 1305, 33, 'keluar', '2020-08-24 08:50:23', NULL, NULL),
(93, 80, 28, 33, 'keluar', '2020-08-24 08:50:33', NULL, NULL),
(94, 82, 1321, 33, 'keluar', '2020-08-24 08:50:43', NULL, NULL),
(95, 78, 1322, 33, 'keluar', '2020-08-24 08:50:52', NULL, NULL),
(96, 75, 24, 33, 'keluar', '2020-08-24 08:51:04', NULL, NULL),
(97, 74, 18, 33, 'keluar', '2020-08-24 08:51:16', NULL, NULL),
(98, 71, 23, 33, 'keluar', '2020-08-24 08:51:26', NULL, NULL),
(99, 23, 1329, 33, 'keluar', '2020-08-24 08:51:35', NULL, NULL),
(100, 34, 1300, 33, 'keluar', '2020-08-24 08:51:42', NULL, NULL),
(101, 73, 1326, 33, 'keluar', '2020-08-24 08:51:50', NULL, NULL),
(102, 80, 19, 32, 'masuk', '2020-08-24 11:19:51', NULL, NULL),
(103, 73, 17, 32, 'masuk', '2020-08-24 11:20:10', NULL, NULL),
(104, 71, 21, 32, 'masuk', '2020-08-24 11:20:35', NULL, NULL),
(105, 78, 1303, 32, 'masuk', '2020-08-24 11:21:46', NULL, NULL),
(106, 78, 1318, 33, 'keluar', '2020-08-24 22:14:10', NULL, NULL),
(107, 77, 1315, 33, 'keluar', '2020-08-24 22:14:34', NULL, NULL),
(108, 73, 1328, 33, 'keluar', '2020-08-24 22:14:47', NULL, NULL),
(109, 73, 1326, 33, 'masuk', '2020-08-25 00:06:21', NULL, NULL),
(110, 77, 1306, 33, 'masuk', '2020-08-25 00:06:41', NULL, NULL),
(111, 82, 1326, 33, 'keluar', '2020-08-25 02:24:29', NULL, NULL),
(112, 74, 1323, 33, 'keluar', '2020-08-25 02:24:39', NULL, NULL),
(113, 75, 1306, 33, 'keluar', '2020-08-25 02:24:47', NULL, NULL),
(114, 81, 17, 33, 'keluar', '2020-08-25 02:24:57', NULL, NULL),
(115, 80, 19, 33, 'keluar', '2020-08-25 02:25:06', NULL, NULL),
(116, 76, 22, 33, 'keluar', '2020-08-25 02:25:16', NULL, NULL),
(117, 71, 21, 33, 'keluar', '2020-08-25 02:25:25', NULL, NULL),
(118, 70, 1101, 33, 'keluar', '2020-08-25 02:25:39', NULL, NULL),
(119, 69, 1312, 33, 'keluar', '2020-08-25 02:25:49', NULL, NULL),
(120, 70, 1305, 32, 'masuk', '2020-08-25 05:47:44', NULL, NULL),
(121, 70, 1049, 32, 'masuk', '2020-08-25 05:48:37', NULL, NULL),
(122, 74, 18, 32, 'masuk', '2020-08-25 05:49:15', NULL, NULL),
(123, 75, 24, 32, 'masuk', '2020-08-25 05:49:32', NULL, NULL),
(124, 80, 28, 32, 'masuk', '2020-08-25 05:49:49', NULL, NULL),
(125, 71, 23, 32, 'masuk', '2020-08-25 05:50:07', NULL, NULL),
(126, 81, 30, 32, 'masuk', '2020-08-25 05:50:26', NULL, NULL),
(127, 75, 1308, 32, 'masuk', '2020-08-25 05:51:06', NULL, NULL),
(128, 74, 1331, 32, 'masuk', '2020-08-25 05:51:22', NULL, NULL),
(129, 71, 23, 33, 'keluar', '2020-08-25 08:51:17', NULL, NULL),
(130, 73, 30, 33, 'keluar', '2020-08-25 08:51:34', NULL, NULL),
(131, 74, 1331, 33, 'keluar', '2020-08-25 08:52:03', NULL, NULL),
(132, 75, 1308, 33, 'keluar', '2020-08-25 08:52:25', NULL, NULL),
(133, 80, 28, 33, 'keluar', '2020-08-25 08:52:40', NULL, NULL),
(134, 78, 1327, 33, 'keluar', '2020-08-25 08:53:08', NULL, NULL),
(135, 58, 1327, 33, 'keluar', '2020-08-25 08:53:38', NULL, NULL),
(143, 71, 21, 33, 'masuk', '2020-08-25 14:53:23', NULL, NULL),
(144, 80, 19, 33, 'masuk', '2020-08-25 14:54:07', NULL, NULL),
(146, 78, 1322, 33, 'masuk', '2020-08-25 14:54:27', NULL, NULL),
(147, 78, 1318, 33, 'masuk', '2020-08-25 14:54:45', NULL, NULL),
(148, 73, 1328, 33, 'masuk', '2020-08-25 14:55:29', NULL, NULL),
(149, 58, 1328, 33, 'keluar', '2020-08-25 22:04:50', NULL, NULL),
(150, 78, 1322, 33, 'keluar', '2020-08-25 22:05:00', NULL, NULL),
(151, 58, 1327, 32, 'masuk', '2020-08-25 23:49:44', NULL, NULL),
(152, 81, 18, 33, 'keluar', '2020-08-26 03:19:45', NULL, NULL),
(153, 80, 24, 33, 'keluar', '2020-08-26 03:19:56', NULL, NULL),
(154, 75, 1318, 33, 'keluar', '2020-08-26 03:20:11', NULL, NULL),
(155, 74, 1302, 33, 'keluar', '2020-08-26 03:20:22', NULL, NULL),
(156, 71, 21, 33, 'keluar', '2020-08-26 03:20:34', NULL, NULL),
(157, 76, 19, 33, 'keluar', '2020-08-26 03:20:45', NULL, NULL),
(158, 70, 1305, 33, 'keluar', '2020-08-26 03:20:56', NULL, NULL),
(159, 69, 1047, 33, 'keluar', '2020-08-26 03:21:09', NULL, NULL),
(161, 70, 1101, 32, 'masuk', '2020-08-26 05:43:32', NULL, NULL),
(162, 69, 1044, 32, 'masuk', '2020-08-26 05:43:51', NULL, NULL),
(163, 69, 1312, 32, 'masuk', '2020-08-26 05:43:51', NULL, NULL),
(164, 81, 17, 32, 'masuk', '2020-08-26 05:44:03', NULL, NULL),
(165, 71, 23, 32, 'masuk', '2020-08-26 05:44:13', NULL, NULL),
(166, 76, 22, 32, 'masuk', '2020-08-26 05:44:22', NULL, NULL),
(167, 80, 28, 32, 'masuk', '2020-08-26 05:44:29', NULL, NULL),
(168, 76, 1330, 32, 'masuk', '2020-08-26 05:44:44', NULL, NULL),
(169, 74, 1323, 32, 'masuk', '2020-08-26 05:45:16', NULL, NULL),
(170, 74, 1331, 32, 'masuk', '2020-08-26 05:45:16', NULL, NULL),
(171, 75, 1308, 32, 'masuk', '2020-08-26 05:45:30', NULL, NULL),
(172, 75, 1306, 32, 'masuk', '2020-08-26 05:45:30', NULL, NULL),
(173, 82, 1306, 33, 'keluar', '2020-08-26 09:00:18', NULL, NULL),
(174, 78, 1331, 33, 'keluar', '2020-08-26 09:00:27', NULL, NULL),
(175, 58, 1327, 33, 'keluar', '2020-08-26 09:00:42', NULL, NULL),
(176, 80, 28, 33, 'keluar', '2020-08-26 09:00:50', NULL, NULL),
(177, 75, 1308, 33, 'keluar', '2020-08-26 09:00:59', NULL, NULL),
(178, 74, 1323, 33, 'keluar', '2020-08-26 09:01:07', NULL, NULL),
(179, 71, 23, 33, 'keluar', '2020-08-26 09:01:14', NULL, NULL),
(180, 0, 17, 33, 'keluar', '2020-08-26 09:02:27', NULL, NULL),
(181, 83, 1322, 33, 'masuk', '2020-08-26 09:03:17', NULL, NULL),
(182, 71, 21, 33, 'masuk', '2020-08-26 11:50:25', NULL, NULL),
(183, 80, 24, 33, 'masuk', '2020-08-26 11:50:55', NULL, NULL),
(184, 78, 1303, 33, 'masuk', '2020-08-26 11:51:58', NULL, NULL),
(185, 78, 1322, 33, 'masuk', '2020-08-26 11:52:28', NULL, NULL),
(186, 78, 1303, 33, 'keluar', '2020-08-26 21:42:47', NULL, NULL),
(188, 73, 1320, 33, 'keluar', '2020-08-26 21:51:47', NULL, NULL),
(189, 58, 1301, 33, 'keluar', '2020-08-26 21:52:03', NULL, NULL),
(191, 58, 1327, 32, 'masuk', '2020-08-26 23:58:53', NULL, NULL),
(192, 58, 1328, 32, 'masuk', '2020-08-26 23:58:53', NULL, NULL),
(193, 73, 30, 32, 'masuk', '2020-08-26 23:59:13', NULL, NULL),
(194, 84, 22, 33, 'keluar', '2020-08-27 02:19:54', NULL, NULL),
(195, 81, 30, 33, 'keluar', '2020-08-27 02:20:07', NULL, NULL),
(196, 71, 21, 33, 'keluar', '2020-08-27 02:20:16', NULL, NULL),
(197, 80, 24, 33, 'keluar', '2020-08-27 02:20:25', NULL, NULL),
(198, 74, 1314, 33, 'keluar', '2020-08-27 02:20:39', NULL, NULL),
(199, 75, 1309, 33, 'keluar', '2020-08-27 02:20:46', NULL, NULL),
(200, 76, 1330, 33, 'keluar', '2020-08-27 02:20:54', NULL, NULL),
(201, 83, 1322, 33, 'keluar', '2020-08-27 02:21:03', NULL, NULL),
(202, 81, 18, 34, 'masuk', '2020-08-27 05:33:47', NULL, NULL),
(203, 83, 17, 34, 'masuk', '2020-08-27 05:33:57', NULL, NULL),
(204, 76, 19, 34, 'masuk', '2020-08-27 05:34:08', NULL, NULL),
(205, 71, 23, 34, 'masuk', '2020-08-27 05:34:17', NULL, NULL),
(206, 78, 1240, 33, 'keluar', '2020-08-27 08:52:41', NULL, NULL),
(207, 80, 1234, 33, 'keluar', '2020-08-27 08:52:54', NULL, NULL),
(209, 82, 1111, 33, 'keluar', '2020-08-27 08:53:09', NULL, NULL),
(210, 58, 1096, 33, 'keluar', '2020-08-27 08:53:21', NULL, NULL),
(211, 75, 1328, 33, 'keluar', '2020-08-27 08:54:07', NULL, NULL),
(212, 74, 1327, 33, 'keluar', '2020-08-27 08:54:20', NULL, NULL),
(213, 73, 1006, 33, 'keluar', '2020-08-27 08:54:34', NULL, NULL),
(214, 83, 17, 33, 'keluar', '2020-08-27 08:55:08', NULL, NULL),
(215, 71, 23, 33, 'keluar', '2020-08-27 08:55:24', NULL, NULL),
(216, 80, 24, 33, 'masuk', '2020-08-27 11:11:28', NULL, NULL),
(217, 80, 28, 33, 'masuk', '2020-08-27 11:11:41', NULL, NULL),
(218, 71, 21, 33, 'masuk', '2020-08-27 11:11:53', NULL, NULL),
(219, 82, 1326, 33, 'masuk', '2020-08-27 11:12:26', NULL, NULL),
(220, 82, 1321, 33, 'masuk', '2020-08-27 11:12:26', NULL, NULL),
(221, 82, 1306, 33, 'masuk', '2020-08-27 11:12:26', NULL, NULL),
(223, 78, 1331, 33, 'masuk', '2020-08-27 11:13:04', NULL, NULL),
(224, 78, 1303, 33, 'masuk', '2020-08-27 11:13:04', NULL, NULL),
(225, 73, 1320, 33, 'masuk', '2020-08-27 11:13:17', NULL, NULL),
(226, 58, 1301, 33, 'masuk', '2020-08-27 11:13:44', NULL, NULL),
(227, 75, 1308, 33, 'masuk', '2020-08-27 11:14:49', NULL, NULL),
(228, 75, 1318, 33, 'masuk', '2020-08-27 11:14:49', NULL, NULL),
(229, 74, 1323, 33, 'masuk', '2020-08-27 11:15:05', NULL, NULL),
(230, 74, 1302, 33, 'masuk', '2020-08-27 11:15:05', NULL, NULL),
(231, 23, 1321, 33, 'keluar', '2020-08-27 22:06:19', NULL, NULL),
(232, 23, 1329, 34, 'masuk', '2020-08-27 23:20:35', NULL, NULL),
(233, 70, 1101, 33, 'keluar', '2020-08-27 23:38:47', NULL, NULL),
(234, 75, 1318, 33, 'keluar', '2020-08-27 23:39:07', NULL, NULL),
(235, 74, 1323, 33, 'keluar', '2020-08-27 23:39:41', NULL, NULL),
(236, 76, 24, 33, 'keluar', '2020-08-27 23:39:55', NULL, NULL),
(237, 71, 21, 33, 'keluar', '2020-08-27 23:40:15', NULL, NULL),
(238, 84, 1308, 33, 'keluar', '2020-08-27 23:40:27', NULL, NULL),
(239, 81, 18, 33, 'keluar', '2020-08-27 23:41:00', NULL, NULL),
(240, 83, 19, 33, 'keluar', '2020-08-27 23:41:18', NULL, NULL),
(241, 80, 28, 33, 'keluar', '2020-08-27 23:41:39', NULL, NULL),
(242, 84, 22, 33, 'masuk', '2020-08-28 05:57:10', NULL, NULL),
(243, 70, 1305, 33, 'masuk', '2020-08-28 05:57:29', NULL, NULL),
(244, 81, 30, 33, 'masuk', '2020-08-28 05:57:54', NULL, NULL),
(245, 83, 17, 33, 'masuk', '2020-08-28 05:58:08', NULL, NULL),
(246, 71, 23, 33, 'masuk', '2020-08-28 05:58:27', NULL, NULL),
(247, 80, 1234, 33, 'masuk', '2020-08-28 05:58:48', NULL, NULL),
(248, 58, 1301, 33, 'keluar', '2020-08-28 06:54:28', NULL, NULL),
(249, 78, 1303, 33, 'keluar', '2020-08-28 06:54:35', NULL, NULL),
(250, 82, 1326, 33, 'keluar', '2020-08-28 06:54:42', NULL, NULL),
(251, 80, 1306, 33, 'keluar', '2020-08-28 06:54:52', NULL, NULL),
(252, 75, 1329, 33, 'keluar', '2020-08-28 06:55:06', NULL, NULL),
(253, 74, 1302, 33, 'keluar', '2020-08-28 06:55:14', NULL, NULL),
(254, 73, 1320, 33, 'keluar', '2020-08-28 06:55:22', NULL, NULL),
(255, 83, 17, 33, 'keluar', '2020-08-28 06:55:38', NULL, NULL),
(256, 71, 23, 33, 'keluar', '2020-08-28 06:55:50', NULL, NULL),
(257, 69, 1047, 33, 'masuk', '2020-08-28 13:06:26', NULL, NULL),
(258, 75, 1328, 33, 'masuk', '2020-08-28 13:07:03', NULL, NULL),
(259, 75, 1309, 33, 'masuk', '2020-08-28 13:07:03', NULL, NULL),
(260, 74, 1314, 33, 'masuk', '2020-08-28 13:07:25', NULL, NULL),
(261, 74, 1327, 33, 'masuk', '2020-08-28 13:07:25', NULL, NULL),
(262, 80, 1308, 33, 'masuk', '2020-08-28 13:07:45', NULL, NULL),
(263, 82, 1111, 33, 'masuk', '2020-08-28 13:09:16', NULL, NULL),
(264, 73, 1006, 33, 'masuk', '2020-08-28 13:09:39', NULL, NULL),
(265, 76, 22, 33, 'masuk', '2020-08-28 13:11:32', NULL, NULL),
(266, 83, 19, 33, 'masuk', '2020-08-28 13:11:55', NULL, NULL),
(267, 71, 21, 33, 'masuk', '2020-08-28 13:12:10', NULL, NULL),
(268, 78, 1240, 33, 'masuk', '2020-08-28 13:25:15', NULL, NULL),
(269, 83, 19, 34, 'keluar', '2020-08-28 21:59:30', NULL, NULL),
(270, 74, 1327, 33, 'keluar', '2020-08-29 02:40:49', NULL, NULL),
(271, 75, 1309, 33, 'keluar', '2020-08-29 02:40:59', NULL, NULL),
(272, 80, 1308, 33, 'keluar', '2020-08-29 02:41:07', NULL, NULL),
(273, 83, 30, 33, 'keluar', '2020-08-29 02:41:19', NULL, NULL),
(274, 71, 21, 33, 'keluar', '2020-08-29 02:41:31', NULL, NULL),
(275, 76, 22, 33, 'keluar', '2020-08-29 02:41:38', NULL, NULL),
(276, 71, 23, 33, 'masuk', '2020-08-29 08:06:22', NULL, NULL),
(277, 83, 19, 33, 'masuk', '2020-08-29 08:07:04', NULL, NULL),
(278, 83, 17, 33, 'masuk', '2020-08-29 08:07:18', NULL, NULL),
(279, 76, 24, 33, 'masuk', '2020-08-29 08:07:34', NULL, NULL),
(280, 80, 1306, 33, 'masuk', '2020-08-29 08:07:53', NULL, NULL),
(281, 76, 1330, 33, 'masuk', '2020-08-29 08:08:02', NULL, NULL),
(282, 80, 19, 33, 'keluar', '2020-08-29 08:31:13', NULL, NULL),
(283, 58, 1330, 33, 'keluar', '2020-08-29 08:31:23', NULL, NULL),
(284, 78, 1331, 33, 'keluar', '2020-08-29 08:31:41', NULL, NULL),
(285, 82, 1306, 33, 'keluar', '2020-08-29 08:31:51', NULL, NULL),
(286, 73, 1322, 33, 'keluar', '2020-08-29 08:32:11', NULL, NULL),
(287, 74, 1328, 33, 'keluar', '2020-08-29 08:32:21', NULL, NULL),
(288, 75, 1314, 33, 'keluar', '2020-08-29 08:32:29', NULL, NULL),
(289, 71, 23, 33, 'keluar', '2020-08-29 08:32:37', NULL, NULL),
(290, 70, 1305, 33, 'keluar', '2020-08-29 08:32:49', NULL, NULL),
(291, 70, 1101, 34, 'masuk', '2020-08-29 10:59:46', NULL, NULL),
(292, 71, 21, 34, 'masuk', '2020-08-29 10:59:57', NULL, NULL),
(293, 58, 1096, 34, 'masuk', '2020-08-29 11:00:08', NULL, NULL),
(294, 78, 1303, 34, 'masuk', '2020-08-29 11:00:27', NULL, NULL),
(295, 58, 1301, 34, 'masuk', '2020-08-29 11:00:40', NULL, NULL),
(296, 73, 1320, 34, 'masuk', '2020-08-29 11:00:58', NULL, NULL),
(297, 80, 1308, 34, 'masuk', '2020-08-29 11:01:05', NULL, NULL),
(298, 75, 1329, 34, 'masuk', '2020-08-29 11:01:50', NULL, NULL),
(299, 75, 1318, 34, 'masuk', '2020-08-29 11:01:50', NULL, NULL),
(300, 74, 1302, 34, 'masuk', '2020-08-29 11:02:01', NULL, NULL),
(301, 74, 1323, 34, 'masuk', '2020-08-29 11:02:01', NULL, NULL),
(302, 78, 1323, 33, 'keluar', '2020-08-30 22:18:27', NULL, NULL),
(303, 80, 1308, 35, 'keluar', '2020-08-31 02:14:47', NULL, NULL),
(304, 83, 17, 35, 'keluar', '2020-08-31 02:14:56', NULL, NULL),
(305, 81, 24, 35, 'keluar', '2020-08-31 02:15:05', NULL, NULL),
(306, 84, 1318, 35, 'keluar', '2020-08-31 02:15:14', NULL, NULL),
(307, 71, 21, 35, 'keluar', '2020-08-31 02:15:20', NULL, NULL),
(308, 84, 28, 35, 'masuk', '2020-08-31 07:45:23', NULL, NULL),
(309, 80, 19, 35, 'masuk', '2020-08-31 07:45:34', NULL, NULL),
(310, 71, 23, 35, 'masuk', '2020-08-31 07:47:09', NULL, NULL),
(311, 81, 18, 35, 'masuk', '2020-08-31 07:47:22', NULL, NULL),
(312, 83, 30, 35, 'masuk', '2020-08-31 07:47:36', NULL, NULL),
(313, 82, 1329, 35, 'keluar', '2020-08-31 08:07:07', NULL, NULL),
(314, 80, 1302, 35, 'keluar', '2020-08-31 08:07:17', NULL, NULL),
(315, 78, 1303, 35, 'keluar', '2020-08-31 08:07:24', NULL, NULL),
(316, 76, 19, 35, 'keluar', '2020-08-31 08:07:36', NULL, NULL),
(317, 71, 23, 35, 'keluar', '2020-08-31 08:07:47', NULL, NULL),
(318, 83, 30, 35, 'keluar', '2020-08-31 08:07:54', NULL, NULL),
(319, 70, 1101, 35, 'keluar', '2020-08-31 08:08:02', NULL, NULL),
(320, 78, 1331, 34, 'masuk', '2020-08-31 12:58:06', NULL, NULL),
(321, 78, 1323, 34, 'masuk', '2020-08-31 12:58:06', NULL, NULL),
(322, 74, 1327, 34, 'masuk', '2020-08-31 12:59:16', NULL, NULL),
(323, 74, 1328, 34, 'masuk', '2020-08-31 12:59:16', NULL, NULL),
(324, 75, 1314, 34, 'masuk', '2020-08-31 12:59:29', NULL, NULL),
(325, 75, 1309, 34, 'masuk', '2020-08-31 12:59:29', NULL, NULL),
(326, 80, 1308, 34, 'masuk', '2020-08-31 13:00:20', NULL, NULL),
(327, 58, 1330, 34, 'masuk', '2020-08-31 13:00:48', NULL, NULL),
(328, 82, 1326, 34, 'masuk', '2020-08-31 13:01:09', NULL, NULL),
(329, 82, 1306, 34, 'masuk', '2020-08-31 13:01:09', NULL, NULL),
(330, 83, 17, 34, 'masuk', '2020-08-31 13:01:57', NULL, NULL),
(331, 71, 21, 34, 'masuk', '2020-08-31 13:02:15', NULL, NULL),
(332, 76, 22, 34, 'masuk', '2020-08-31 13:02:31', NULL, NULL),
(333, 78, 1331, 33, 'keluar', '2020-08-31 22:37:46', NULL, NULL),
(334, 23, 1321, 35, 'masuk', '2020-09-01 00:00:44', NULL, NULL),
(335, 73, 1320, 35, 'keluar', '2020-09-01 02:23:33', NULL, NULL),
(336, 76, 22, 35, 'keluar', '2020-09-01 02:23:40', NULL, NULL),
(337, 84, 28, 35, 'keluar', '2020-09-01 02:23:47', NULL, NULL),
(338, 71, 21, 35, 'keluar', '2020-09-01 02:23:55', NULL, NULL),
(339, 83, 17, 35, 'keluar', '2020-09-01 02:24:11', NULL, NULL),
(340, 81, 18, 35, 'keluar', '2020-09-01 02:24:20', NULL, NULL),
(341, 80, 1308, 35, 'keluar', '2020-09-01 02:24:28', NULL, NULL),
(342, 76, 19, 35, 'masuk', '2020-09-01 07:14:32', NULL, NULL),
(343, 83, 30, 35, 'masuk', '2020-09-01 07:14:40', NULL, NULL),
(344, 71, 23, 35, 'masuk', '2020-09-01 07:14:50', NULL, NULL),
(345, 81, 24, 35, 'masuk', '2020-09-01 07:15:00', NULL, NULL),
(346, 84, 1318, 35, 'masuk', '2020-09-01 07:15:21', NULL, NULL),
(347, 80, 1302, 35, 'masuk', '2020-09-01 07:15:29', NULL, NULL),
(348, 80, 1302, 35, 'keluar', '2020-09-01 07:22:17', NULL, NULL),
(349, 82, 1326, 35, 'keluar', '2020-09-01 07:22:25', NULL, NULL),
(350, 58, 1330, 35, 'keluar', '2020-09-01 07:22:33', NULL, NULL),
(351, 78, 1323, 35, 'keluar', '2020-09-01 07:22:41', NULL, NULL),
(352, 70, 1049, 35, 'keluar', '2020-09-01 07:22:56', NULL, NULL),
(353, 83, 30, 35, 'keluar', '2020-09-01 07:23:09', NULL, NULL),
(354, 71, 23, 35, 'keluar', '2020-09-01 07:23:17', NULL, NULL),
(355, 70, 1101, 34, 'masuk', '2020-09-01 11:28:10', NULL, NULL),
(356, 71, 21, 34, 'masuk', '2020-09-01 11:28:23', NULL, NULL),
(357, 83, 17, 34, 'masuk', '2020-09-01 11:28:31', NULL, NULL),
(358, 82, 1329, 34, 'masuk', '2020-09-01 11:28:42', NULL, NULL),
(359, 80, 1308, 34, 'masuk', '2020-09-01 11:28:51', NULL, NULL),
(360, 78, 1331, 34, 'masuk', '2020-09-01 11:29:17', NULL, NULL),
(361, 78, 1303, 34, 'masuk', '2020-09-01 11:29:17', NULL, NULL),
(362, 58, 1301, 34, 'keluar', '2020-09-01 11:29:34', NULL, NULL),
(363, 78, 1301, 34, 'masuk', '2020-09-01 11:29:44', NULL, NULL),
(364, 58, 1301, 34, 'masuk', '2020-09-01 11:30:15', NULL, NULL),
(365, 78, 1314, 33, 'keluar', '2020-09-01 22:49:44', NULL, NULL),
(366, 73, 1328, 33, 'keluar', '2020-09-01 22:49:56', NULL, NULL),
(367, 81, 24, 33, 'keluar', '2020-09-02 03:16:18', NULL, NULL),
(368, 83, 19, 33, 'keluar', '2020-09-02 03:16:28', NULL, NULL),
(369, 80, 1308, 33, 'keluar', '2020-09-02 03:16:41', NULL, NULL),
(370, 71, 21, 33, 'keluar', '2020-09-02 03:16:52', NULL, NULL),
(371, 84, 1329, 33, 'keluar', '2020-09-02 03:17:00', NULL, NULL),
(372, 76, 1301, 33, 'keluar', '2020-09-02 03:18:12', NULL, NULL),
(373, 73, 1322, 35, 'masuk', '2020-09-02 05:34:44', NULL, NULL),
(374, 73, 1320, 35, 'masuk', '2020-09-02 05:34:44', NULL, NULL),
(375, 81, 18, 35, 'masuk', '2020-09-02 05:35:59', NULL, NULL),
(376, 80, 1302, 35, 'masuk', '2020-09-02 05:37:35', NULL, NULL),
(377, 71, 23, 35, 'masuk', '2020-09-02 05:37:51', NULL, NULL),
(378, 83, 30, 35, 'masuk', '2020-09-02 05:37:59', NULL, NULL),
(379, 84, 28, 35, 'masuk', '2020-09-02 05:38:06', NULL, NULL),
(380, 70, 1101, 33, 'keluar', '2020-09-02 09:06:02', NULL, NULL),
(381, 58, 1306, 33, 'keluar', '2020-09-02 09:06:12', NULL, NULL),
(382, 82, 1318, 33, 'keluar', '2020-09-02 09:06:22', NULL, NULL),
(383, 80, 1302, 33, 'keluar', '2020-09-02 09:06:33', NULL, NULL),
(384, 78, 1303, 33, 'keluar', '2020-09-02 09:06:43', NULL, NULL),
(385, 71, 23, 33, 'keluar', '2020-09-02 09:06:54', NULL, NULL),
(386, 83, 30, 33, 'keluar', '2020-09-02 09:07:12', NULL, NULL),
(387, 73, 1322, 33, 'keluar', '2020-09-02 09:07:28', NULL, NULL),
(388, 70, 1049, 33, 'masuk', '2020-09-02 21:56:29', NULL, NULL),
(389, 73, 1328, 33, 'masuk', '2020-09-02 21:58:20', NULL, NULL),
(390, 58, 1330, 33, 'masuk', '2020-09-02 21:58:31', NULL, NULL),
(391, 78, 1314, 33, 'masuk', '2020-09-02 21:59:04', NULL, NULL),
(392, 78, 1323, 33, 'masuk', '2020-09-02 21:59:04', NULL, NULL),
(393, 80, 1308, 33, 'masuk', '2020-09-02 21:59:22', NULL, NULL),
(394, 83, 19, 33, 'masuk', '2020-09-02 21:59:49', NULL, NULL),
(395, 71, 21, 33, 'masuk', '2020-09-02 22:01:01', NULL, NULL),
(396, 78, 1321, 33, 'keluar', '2020-09-02 22:12:57', NULL, NULL),
(397, 80, 1323, 33, 'keluar', '2020-09-03 02:31:31', NULL, NULL),
(398, 83, 17, 33, 'keluar', '2020-09-03 02:31:39', NULL, NULL),
(399, 81, 18, 33, 'keluar', '2020-09-03 02:31:57', NULL, NULL),
(400, 76, 19, 33, 'keluar', '2020-09-03 02:32:09', NULL, NULL),
(401, 71, 21, 33, 'keluar', '2020-09-03 02:32:23', NULL, NULL),
(402, 84, 1314, 33, 'keluar', '2020-09-03 02:32:35', NULL, NULL),
(403, 83, 30, 35, 'keluar', '2020-09-03 05:37:49', NULL, NULL),
(404, 84, 1329, 35, 'keluar', '2020-09-03 05:42:33', NULL, NULL),
(405, 80, 1302, 35, 'keluar', '2020-09-03 05:42:41', NULL, NULL),
(406, 76, 1301, 35, 'keluar', '2020-09-03 05:42:52', NULL, NULL),
(407, 76, 22, 35, 'keluar', '2020-09-03 05:42:52', NULL, NULL),
(408, 81, 24, 35, 'keluar', '2020-09-03 05:43:01', NULL, NULL),
(409, 71, 23, 35, 'keluar', '2020-09-03 05:43:08', NULL, NULL),
(410, 70, 1229, 35, 'keluar', '2020-09-03 06:05:19', NULL, NULL),
(411, 71, 23, 35, 'keluar', '2020-09-03 06:05:26', NULL, NULL),
(412, 83, 30, 35, 'keluar', '2020-09-03 06:05:34', NULL, NULL),
(413, 73, 1320, 35, 'keluar', '2020-09-03 06:05:41', NULL, NULL),
(414, 82, 1326, 35, 'keluar', '2020-09-03 06:05:47', NULL, NULL),
(415, 80, 1308, 35, 'keluar', '2020-09-03 06:05:54', NULL, NULL),
(416, 78, 1327, 35, 'keluar', '2020-09-03 06:06:00', NULL, NULL),
(417, 58, 1306, 34, 'masuk', '2020-09-03 13:04:04', NULL, NULL),
(418, 70, 1101, 34, 'masuk', '2020-09-03 13:07:33', NULL, NULL),
(419, 82, 1318, 34, 'masuk', '2020-09-03 13:07:42', NULL, NULL),
(420, 71, 21, 34, 'masuk', '2020-09-03 13:07:54', NULL, NULL),
(421, 83, 17, 34, 'masuk', '2020-09-03 13:08:00', NULL, NULL),
(422, 80, 1323, 34, 'masuk', '2020-09-03 13:08:22', NULL, NULL),
(423, 78, 1303, 34, 'masuk', '2020-09-03 13:08:36', NULL, NULL),
(424, 78, 1321, 34, 'masuk', '2020-09-03 13:08:36', NULL, NULL),
(425, 73, 1328, 33, 'keluar', '2020-09-03 22:23:29', NULL, NULL),
(426, 78, 1321, 33, 'keluar', '2020-09-03 22:23:38', NULL, NULL),
(427, 73, 1322, 33, 'masuk', '2020-09-04 00:00:50', NULL, NULL),
(428, 76, 17, 33, 'masuk', '2020-09-04 00:01:27', NULL, NULL),
(429, 76, 24, 33, 'masuk', '2020-09-04 00:01:27', NULL, NULL),
(430, 76, 22, 33, 'masuk', '2020-09-04 00:01:27', NULL, NULL),
(431, 80, 28, 33, 'masuk', '2020-09-04 00:02:07', NULL, NULL),
(432, 80, 24, 33, 'masuk', '2020-09-04 00:02:07', NULL, NULL),
(433, 84, 17, 33, 'masuk', '2020-09-04 00:02:22', NULL, NULL),
(434, 84, 24, 33, 'masuk', '2020-09-04 00:02:22', NULL, NULL),
(435, 71, 22, 33, 'masuk', '2020-09-04 00:02:33', NULL, NULL),
(436, 71, 21, 33, 'masuk', '2020-09-04 00:02:33', NULL, NULL),
(437, 81, 24, 33, 'masuk', '2020-09-04 00:02:46', NULL, NULL),
(438, 81, 17, 33, 'masuk', '2020-09-04 00:02:46', NULL, NULL),
(439, 82, 1322, 33, 'masuk', '2020-09-04 00:03:19', NULL, NULL),
(440, 73, 1322, 33, 'masuk', '2020-09-04 00:03:26', NULL, NULL),
(441, 83, 17, 33, 'masuk', '2020-09-04 00:03:39', NULL, NULL),
(442, 34, 1322, 33, 'masuk', '2020-09-04 00:04:19', NULL, NULL),
(443, 83, 17, 33, 'keluar', '2020-09-04 00:05:33', NULL, NULL),
(444, 81, 24, 33, 'keluar', '2020-09-04 00:05:43', NULL, NULL),
(445, 80, 28, 33, 'keluar', '2020-09-04 00:05:51', NULL, NULL),
(446, 76, 22, 33, 'keluar', '2020-09-04 00:05:59', NULL, NULL),
(447, 71, 21, 33, 'keluar', '2020-09-04 00:06:07', NULL, NULL),
(448, 80, 1308, 35, 'masuk', '2020-09-04 07:11:30', NULL, NULL),
(449, 84, 1314, 35, 'masuk', '2020-09-04 07:11:45', NULL, NULL),
(450, 71, 23, 35, 'masuk', '2020-09-04 07:11:58', NULL, NULL),
(451, 81, 18, 35, 'masuk', '2020-09-04 07:12:10', NULL, NULL),
(452, 76, 19, 35, 'masuk', '2020-09-04 07:12:23', NULL, NULL),
(453, 83, 30, 35, 'masuk', '2020-09-04 07:12:30', NULL, NULL),
(454, 70, 1049, 35, 'keluar', '2020-09-04 08:19:07', NULL, NULL),
(455, 83, 18, 35, 'keluar', '2020-09-04 08:19:18', NULL, NULL),
(456, 71, 23, 35, 'keluar', '2020-09-04 08:19:28', NULL, NULL),
(457, 82, 1318, 35, 'keluar', '2020-09-04 08:19:36', NULL, NULL),
(458, 78, 1303, 35, 'keluar', '2020-09-04 08:19:44', NULL, NULL),
(459, 73, 1322, 35, 'keluar', '2020-09-04 08:19:52', NULL, NULL),
(460, 80, 1302, 35, 'keluar', '2020-09-04 08:19:58', NULL, NULL),
(461, 73, 1320, 35, 'masuk', '2020-09-04 21:55:56', NULL, NULL),
(462, 73, 1328, 35, 'masuk', '2020-09-04 21:56:07', NULL, NULL),
(463, 70, 1229, 35, 'masuk', '2020-09-04 21:56:20', NULL, NULL),
(464, 71, 21, 35, 'masuk', '2020-09-04 21:56:33', NULL, NULL),
(465, 80, 28, 35, 'masuk', '2020-09-04 21:56:46', NULL, NULL),
(466, 78, 1321, 35, 'masuk', '2020-09-04 21:57:06', NULL, NULL),
(467, 78, 1327, 35, 'masuk', '2020-09-04 21:57:06', NULL, NULL),
(468, 83, 17, 35, 'masuk', '2020-09-04 21:57:19', NULL, NULL),
(469, 80, 28, 33, 'keluar', '2020-09-05 01:26:08', NULL, NULL),
(470, 83, 30, 33, 'keluar', '2020-09-05 01:26:15', NULL, NULL),
(471, 71, 21, 33, 'keluar', '2020-09-05 01:26:27', NULL, NULL),
(472, 76, 19, 33, 'keluar', '2020-09-05 01:26:40', NULL, NULL),
(473, 78, 1303, 35, 'masuk', '2020-09-05 04:06:03', NULL, NULL),
(474, 83, 18, 35, 'masuk', '2020-09-05 04:06:17', NULL, NULL),
(475, 83, 17, 35, 'masuk', '2020-09-05 04:06:27', NULL, NULL),
(476, 76, 22, 35, 'masuk', '2020-09-05 04:06:37', NULL, NULL),
(477, 71, 23, 35, 'masuk', '2020-09-05 04:06:46', NULL, NULL),
(478, 80, 1302, 35, 'masuk', '2020-09-05 04:06:54', NULL, NULL),
(479, 73, 1328, 35, 'keluar', '2020-09-05 07:47:11', NULL, NULL),
(480, 78, 1303, 35, 'keluar', '2020-09-05 07:47:20', NULL, NULL),
(481, 71, 23, 35, 'keluar', '2020-09-05 07:47:52', NULL, NULL),
(482, 80, 17, 35, 'keluar', '2020-09-05 07:48:20', NULL, NULL),
(483, 77, 1331, 33, 'keluar', '2020-09-06 22:29:43', NULL, NULL),
(484, 78, 1306, 33, 'keluar', '2020-09-06 22:29:52', NULL, NULL),
(485, 82, 1331, 33, 'masuk', '2020-09-06 22:30:48', NULL, NULL),
(486, 80, 1331, 33, 'masuk', '2020-09-06 22:30:56', NULL, NULL),
(487, 71, 21, 33, 'masuk', '2020-09-06 22:31:23', NULL, NULL),
(488, 71, 21, 33, 'keluar', '2020-09-07 00:06:36', NULL, NULL),
(489, 76, 1301, 33, 'keluar', '2020-09-07 00:06:45', NULL, NULL),
(490, 83, 28, 33, 'keluar', '2020-09-07 00:06:54', NULL, NULL),
(491, 81, 22, 33, 'keluar', '2020-09-07 00:07:05', NULL, NULL),
(492, 80, 1302, 33, 'keluar', '2020-09-07 00:07:19', NULL, NULL),
(493, 71, 23, 34, 'masuk', '2020-09-07 04:41:18', NULL, NULL),
(494, 80, 17, 34, 'masuk', '2020-09-07 04:41:32', NULL, NULL),
(495, 83, 30, 34, 'masuk', '2020-09-07 04:41:43', NULL, NULL),
(496, 76, 19, 34, 'masuk', '2020-09-07 04:42:01', NULL, NULL),
(497, 81, 24, 34, 'masuk', '2020-09-07 04:42:37', NULL, NULL),
(498, 71, 21, 35, 'masuk', '2020-09-07 12:35:10', NULL, NULL),
(499, 83, 28, 35, 'masuk', '2020-09-07 12:36:36', NULL, NULL),
(500, 82, 1326, 35, 'masuk', '2020-09-07 12:37:01', NULL, NULL),
(501, 82, 1318, 35, 'masuk', '2020-09-07 12:37:01', NULL, NULL),
(502, 80, 1302, 35, 'masuk', '2020-09-07 12:37:16', NULL, NULL),
(503, 78, 1306, 35, 'masuk', '2020-09-07 12:37:36', NULL, NULL),
(504, 78, 1303, 35, 'masuk', '2020-09-07 12:37:36', NULL, NULL),
(505, 73, 1322, 35, 'masuk', '2020-09-07 12:37:54', NULL, NULL),
(506, 73, 1328, 35, 'masuk', '2020-09-07 12:37:54', NULL, NULL),
(507, 85, 1300, 33, 'masuk', '2020-09-07 22:51:06', NULL, NULL),
(508, 78, 1303, 33, 'masuk', '2020-09-07 22:51:16', NULL, NULL),
(509, 77, 1329, 33, 'masuk', '2020-09-07 22:51:28', NULL, NULL),
(510, 73, 1328, 33, 'masuk', '2020-09-07 22:51:40', NULL, NULL),
(511, 85, 24, 35, 'masuk', '2020-09-08 02:25:27', NULL, NULL),
(512, 73, 1320, 35, 'masuk', '2020-09-08 02:25:48', NULL, NULL),
(513, 77, 1315, 35, 'masuk', '2020-09-08 02:26:05', NULL, NULL),
(514, 77, 1331, 35, 'masuk', '2020-09-08 02:26:05', NULL, NULL),
(515, 81, 28, 35, 'keluar', '2020-09-08 02:45:07', NULL, NULL),
(516, 83, 18, 35, 'keluar', '2020-09-08 02:45:15', NULL, NULL),
(517, 80, 17, 35, 'keluar', '2020-09-08 02:45:28', NULL, NULL),
(518, 71, 21, 35, 'keluar', '2020-09-08 02:45:38', NULL, NULL),
(519, 76, 19, 35, 'keluar', '2020-09-08 02:45:46', NULL, NULL),
(520, 82, 1331, 35, 'keluar', '2020-09-08 07:06:25', NULL, NULL),
(521, 77, 1331, 35, 'keluar', '2020-09-08 07:06:32', NULL, NULL),
(522, 85, 1331, 35, 'masuk', '2020-09-08 07:07:57', NULL, NULL),
(523, 85, 1315, 35, 'masuk', '2020-09-08 07:07:57', NULL, NULL),
(524, 78, 1315, 35, 'masuk', '2020-09-08 07:08:24', NULL, NULL),
(525, 78, 1331, 35, 'masuk', '2020-09-08 07:08:24', NULL, NULL),
(526, 73, 1331, 35, 'masuk', '2020-09-08 07:08:46', NULL, NULL),
(527, 73, 1320, 35, 'masuk', '2020-09-08 07:08:46', NULL, NULL),
(528, 73, 1315, 35, 'masuk', '2020-09-08 07:08:46', NULL, NULL),
(529, 85, 1315, 35, 'masuk', '2020-09-08 07:09:02', NULL, NULL),
(530, 85, 1320, 35, 'masuk', '2020-09-08 07:09:02', NULL, NULL),
(531, 85, 1331, 35, 'masuk', '2020-09-08 07:09:02', NULL, NULL),
(532, 78, 1331, 35, 'keluar', '2020-09-08 07:09:39', NULL, NULL),
(533, 78, 1320, 35, 'keluar', '2020-09-08 07:09:39', NULL, NULL),
(534, 78, 1315, 35, 'keluar', '2020-09-08 07:09:39', NULL, NULL),
(535, 78, 24, 35, 'keluar', '2020-09-08 07:09:39', NULL, NULL),
(536, 73, 1315, 35, 'keluar', '2020-09-08 07:10:14', NULL, NULL),
(537, 73, 1331, 35, 'keluar', '2020-09-08 07:10:14', NULL, NULL),
(538, 73, 1320, 35, 'keluar', '2020-09-08 07:10:14', NULL, NULL),
(539, 73, 24, 35, 'keluar', '2020-09-08 07:10:14', NULL, NULL),
(540, 73, 22, 35, 'keluar', '2020-09-08 07:10:14', NULL, NULL),
(541, 73, 30, 35, 'keluar', '2020-09-08 07:10:14', NULL, NULL),
(542, 85, 23, 35, 'keluar', '2020-09-08 07:10:56', NULL, NULL),
(543, 85, 30, 35, 'keluar', '2020-09-08 07:10:56', NULL, NULL),
(544, 85, 22, 35, 'keluar', '2020-09-08 07:10:56', NULL, NULL),
(545, 85, 24, 35, 'keluar', '2020-09-08 07:10:56', NULL, NULL),
(546, 85, 1320, 35, 'keluar', '2020-09-08 07:10:56', NULL, NULL),
(547, 85, 1331, 35, 'keluar', '2020-09-08 07:10:56', NULL, NULL),
(548, 85, 1315, 35, 'keluar', '2020-09-08 07:10:56', NULL, NULL),
(549, 81, 22, 35, 'masuk', '2020-09-08 07:11:43', NULL, NULL),
(550, 76, 1301, 35, 'masuk', '2020-09-08 07:12:05', NULL, NULL),
(551, 70, 1049, 35, 'keluar', '2020-09-08 07:58:11', NULL, NULL),
(552, 80, 24, 35, 'keluar', '2020-09-08 07:58:18', NULL, NULL),
(553, 83, 30, 35, 'keluar', '2020-09-08 07:58:25', NULL, NULL),
(554, 71, 23, 35, 'keluar', '2020-09-08 07:58:31', NULL, NULL),
(555, 73, 1322, 35, 'keluar', '2020-09-08 07:58:38', NULL, NULL),
(556, 82, 1326, 35, 'keluar', '2020-09-08 07:58:44', NULL, NULL),
(557, 78, 1321, 35, 'keluar', '2020-09-08 07:58:50', NULL, NULL),
(558, 70, 1101, 35, 'masuk', '2020-09-08 10:56:29', NULL, NULL),
(559, 83, 18, 35, 'masuk', '2020-09-08 10:56:37', NULL, NULL),
(560, 71, 21, 35, 'masuk', '2020-09-08 10:56:47', NULL, NULL),
(561, 80, 17, 35, 'masuk', '2020-09-08 10:56:55', NULL, NULL),
(562, 82, 1330, 35, 'masuk', '2020-09-08 10:57:03', NULL, NULL),
(563, 73, 1328, 35, 'masuk', '2020-09-08 10:57:16', NULL, NULL),
(564, 78, 1327, 35, 'masuk', '2020-09-08 10:57:44', NULL, NULL),
(565, 78, 1303, 35, 'masuk', '2020-09-08 10:57:44', NULL, NULL),
(566, 78, 1303, 35, 'keluar', '2020-09-08 10:58:15', NULL, NULL),
(567, 77, 1331, 35, 'keluar', '2020-09-08 22:10:54', NULL, NULL),
(568, 78, 1303, 35, 'keluar', '2020-09-08 22:11:03', NULL, NULL),
(569, 77, 1329, 35, 'masuk', '2020-09-08 23:54:18', NULL, NULL),
(570, 80, 1302, 35, 'keluar', '2020-09-09 01:41:03', NULL, NULL),
(571, 76, 22, 35, 'keluar', '2020-09-09 01:41:12', NULL, NULL),
(572, 83, 18, 35, 'keluar', '2020-09-09 01:41:20', NULL, NULL),
(573, 80, 17, 35, 'keluar', '2020-09-09 01:41:58', NULL, NULL),
(574, 71, 21, 35, 'keluar', '2020-09-09 01:42:09', NULL, NULL),
(575, 80, 17, 33, 'masuk', '2020-09-09 02:42:22', NULL, NULL),
(576, 81, 17, 33, 'keluar', '2020-09-09 02:43:05', NULL, NULL),
(577, 89, 1101, 33, 'masuk', '2020-09-09 02:44:42', NULL, NULL),
(578, 81, 28, 33, 'masuk', '2020-09-09 06:17:14', NULL, NULL),
(579, 83, 30, 33, 'masuk', '2020-09-09 06:17:41', NULL, NULL),
(580, 80, 24, 33, 'masuk', '2020-09-09 06:18:44', NULL, NULL),
(581, 71, 23, 33, 'masuk', '2020-09-09 06:19:21', NULL, NULL),
(582, 89, 1305, 33, 'keluar', '2020-09-09 06:20:27', NULL, NULL),
(584, 89, 1305, 33, 'keluar', '2020-09-09 06:21:06', NULL, NULL),
(585, 70, 1305, 35, 'keluar', '2020-09-09 07:45:47', NULL, NULL),
(586, 83, 30, 35, 'keluar', '2020-09-09 07:45:57', NULL, NULL),
(587, 71, 23, 35, 'keluar', '2020-09-09 07:46:04', NULL, NULL),
(588, 80, 24, 35, 'keluar', '2020-09-09 07:46:13', NULL, NULL),
(589, 82, 1330, 35, 'keluar', '2020-09-09 07:46:20', NULL, NULL),
(590, 73, 1328, 35, 'keluar', '2020-09-09 07:46:27', NULL, NULL),
(591, 78, 1306, 35, 'keluar', '2020-09-09 07:46:34', NULL, NULL),
(592, 82, 1330, 35, 'masuk', '2020-09-09 08:05:41', NULL, NULL),
(593, 70, 1229, 35, 'masuk', '2020-09-09 22:14:18', NULL, NULL),
(594, 83, 18, 35, 'masuk', '2020-09-09 22:14:29', NULL, NULL),
(595, 71, 21, 35, 'masuk', '2020-09-09 22:14:39', NULL, NULL),
(596, 73, 1322, 35, 'masuk', '2020-09-09 22:14:48', NULL, NULL),
(597, 80, 1302, 35, 'masuk', '2020-09-09 22:15:00', NULL, NULL),
(598, 78, 1303, 35, 'masuk', '2020-09-09 22:15:14', NULL, NULL),
(599, 78, 1321, 35, 'masuk', '2020-09-09 22:15:14', NULL, NULL),
(600, 90, 1329, 33, 'keluar', '2020-09-09 22:46:48', NULL, NULL),
(601, 78, 1303, 33, 'keluar', '2020-09-09 22:47:07', NULL, NULL),
(602, 77, 1320, 33, 'keluar', '2020-09-09 22:47:21', NULL, NULL),
(603, 77, 1331, 35, 'masuk', '2020-09-10 00:19:18', NULL, NULL),
(604, 77, 1320, 33, 'keluar', '2020-09-10 02:11:55', NULL, NULL),
(605, 89, 1315, 33, 'keluar', '2020-09-10 02:34:31', NULL, NULL),
(606, 76, 1301, 33, 'keluar', '2020-09-10 02:34:38', NULL, NULL),
(607, 80, 1308, 33, 'keluar', '2020-09-10 02:34:48', NULL, NULL),
(608, 81, 28, 33, 'keluar', '2020-09-10 02:35:04', NULL, NULL),
(609, 83, 18, 33, 'keluar', '2020-09-10 02:35:18', NULL, NULL),
(610, 71, 21, 33, 'keluar', '2020-09-10 02:35:31', NULL, NULL),
(611, 76, 19, 33, 'masuk', '2020-09-10 05:00:58', NULL, NULL),
(612, 76, 22, 33, 'masuk', '2020-09-10 05:00:58', NULL, NULL),
(613, 80, 24, 33, 'masuk', '2020-09-10 05:01:07', NULL, NULL),
(614, 71, 23, 33, 'masuk', '2020-09-10 05:01:15', NULL, NULL),
(615, 81, 17, 33, 'masuk', '2020-09-10 05:01:23', NULL, NULL),
(616, 83, 30, 33, 'masuk', '2020-09-10 05:01:32', NULL, NULL),
(617, 80, 24, 35, 'keluar', '2020-09-10 07:38:59', NULL, NULL),
(618, 71, 23, 35, 'keluar', '2020-09-10 07:39:04', NULL, NULL),
(619, 78, 1331, 35, 'keluar', '2020-09-10 07:39:15', NULL, NULL),
(620, 83, 1321, 35, 'keluar', '2020-09-10 07:39:21', NULL, NULL),
(621, 70, 1229, 35, 'keluar', '2020-09-10 07:39:29', NULL, NULL),
(622, 70, 1049, 35, 'masuk', '2020-09-10 11:55:07', NULL, NULL),
(623, 70, 1305, 35, 'masuk', '2020-09-10 11:55:07', NULL, NULL),
(624, 80, 1308, 35, 'masuk', '2020-09-10 11:55:22', NULL, NULL),
(625, 83, 18, 35, 'masuk', '2020-09-10 11:55:39', NULL, NULL),
(626, 71, 21, 35, 'masuk', '2020-09-10 11:55:45', NULL, NULL),
(627, 78, 1303, 35, 'masuk', '2020-09-10 11:56:19', NULL, NULL),
(628, 78, 1306, 35, 'masuk', '2020-09-10 11:56:19', NULL, NULL),
(629, 78, 1327, 33, 'keluar', '2020-09-10 22:21:53', NULL, NULL),
(630, 73, 1322, 33, 'keluar', '2020-09-10 22:22:03', NULL, NULL),
(631, 90, 1314, 33, 'keluar', '2020-09-10 22:22:11', NULL, NULL),
(632, 77, 1309, 33, 'keluar', '2020-09-10 22:22:20', NULL, NULL),
(633, 73, 1328, 35, 'masuk', '2020-09-10 23:55:36', NULL, NULL),
(634, 83, 1330, 33, 'keluar', '2020-09-11 01:11:29', NULL, NULL),
(635, 80, 1308, 33, 'keluar', '2020-09-11 01:11:40', NULL, NULL),
(636, 89, 1323, 33, 'keluar', '2020-09-11 01:11:48', NULL, NULL),
(637, 81, 17, 33, 'keluar', '2020-09-11 01:12:04', NULL, NULL),
(638, 76, 22, 33, 'keluar', '2020-09-11 01:12:13', NULL, NULL),
(639, 71, 21, 33, 'keluar', '2020-09-11 01:12:24', NULL, NULL),
(640, 71, 23, 35, 'masuk', '2020-09-11 07:29:02', NULL, NULL),
(641, 80, 24, 35, 'masuk', '2020-09-11 07:29:13', NULL, NULL),
(642, 81, 28, 35, 'masuk', '2020-09-11 07:29:50', NULL, NULL),
(643, 83, 1321, 35, 'masuk', '2020-09-11 07:30:00', NULL, NULL),
(644, 76, 1301, 35, 'masuk', '2020-09-11 07:30:16', NULL, NULL),
(645, 89, 1101, 35, 'masuk', '2020-09-11 07:30:44', NULL, NULL),
(646, 89, 1315, 35, 'masuk', '2020-09-11 07:30:44', NULL, NULL),
(647, 80, 24, 33, 'keluar', '2020-09-11 08:30:49', NULL, NULL),
(648, 78, 1303, 33, 'keluar', '2020-09-11 08:31:03', NULL, NULL),
(649, 83, 1321, 33, 'keluar', '2020-09-11 08:31:11', NULL, NULL),
(650, 73, 1328, 33, 'keluar', '2020-09-11 08:31:22', NULL, NULL),
(651, 92, 1318, 33, 'keluar', '2020-09-11 08:32:54', NULL, NULL),
(652, 71, 23, 33, 'keluar', '2020-09-11 08:33:24', NULL, NULL),
(653, 70, 1049, 33, 'keluar', '2020-09-11 08:42:53', NULL, NULL),
(654, 71, 21, 33, 'masuk', '2020-09-11 11:57:35', NULL, NULL),
(655, 83, 1330, 33, 'masuk', '2020-09-11 11:58:00', NULL, NULL),
(656, 73, 1322, 33, 'masuk', '2020-09-11 11:59:18', NULL, NULL),
(657, 80, 1308, 33, 'masuk', '2020-09-11 11:59:30', NULL, NULL),
(658, 78, 1327, 33, 'masuk', '2020-09-11 12:00:20', NULL, NULL),
(659, 78, 1331, 33, 'masuk', '2020-09-11 12:00:20', NULL, NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `sisa`
-- (See below for the actual view)
--
CREATE TABLE `sisa` (
`total_keluar` bigint(21)
,`total_masuk` bigint(21)
,`selisih` bigint(22)
,`nama_lengkap` varchar(50)
);

-- --------------------------------------------------------

--
-- Structure for view `sisa`
--
DROP TABLE IF EXISTS `sisa`;

CREATE ALGORITHM=UNDEFINED DEFINER=`senjanii`@`localhost` SQL SECURITY DEFINER VIEW `sisa`  AS  select (select count(`sirkulasi`.`id`) from `sirkulasi` where `sirkulasi`.`status` = 'keluar' and `sirkulasi`.`id_pelanggan` = `sir_luar`.`id_pelanggan`) AS `total_keluar`,(select count(`sirkulasi`.`id`) from `sirkulasi` where `sirkulasi`.`status` = 'masuk' and `sirkulasi`.`id_pelanggan` = `sir_luar`.`id_pelanggan`) AS `total_masuk`,(select count(`sirkulasi`.`id`) from `sirkulasi` where `sirkulasi`.`status` = 'keluar' and `sirkulasi`.`id_pelanggan` = `sir_luar`.`id_pelanggan`) - (select count(`sirkulasi`.`id`) from `sirkulasi` where `sirkulasi`.`status` = 'masuk' and `sirkulasi`.`id_pelanggan` = `sir_luar`.`id_pelanggan`) AS `selisih`,`pelanggan`.`nama_lengkap` AS `nama_lengkap` from (`sirkulasi` `sir_luar` join `pelanggan` on(`sir_luar`.`id_pelanggan` = `pelanggan`.`id`)) group by `sir_luar`.`id_pelanggan` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mealbox`
--
ALTER TABLE `mealbox`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personel`
--
ALTER TABLE `personel`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `sirkulasi`
--
ALTER TABLE `sirkulasi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sirkulasi_mealbox` (`id_mealbox`),
  ADD KEY `sirkulasi_personel` (`id_personel`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mealbox`
--
ALTER TABLE `mealbox`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1332;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `personel`
--
ALTER TABLE `personel`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `sirkulasi`
--
ALTER TABLE `sirkulasi`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=660;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sirkulasi`
--
ALTER TABLE `sirkulasi`
  ADD CONSTRAINT `sirkulasi_mealbox` FOREIGN KEY (`id_mealbox`) REFERENCES `mealbox` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `sirkulasi_personel` FOREIGN KEY (`id_personel`) REFERENCES `personel` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
