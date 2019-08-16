-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2019 at 10:21 AM
-- Server version: 10.0.12-MariaDB
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pertanian`
--

-- --------------------------------------------------------

--
-- Table structure for table `counter_contoh`
--

CREATE TABLE IF NOT EXISTS `counter_contoh` (
`id_counter_contoh` int(11) NOT NULL,
  `tahun` int(11) DEFAULT NULL,
  `counter` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `counter_contoh`
--

INSERT INTO `counter_contoh` (`id_counter_contoh`, `tahun`, `counter`) VALUES
(1, 2018, 1),
(2, 2019, 381),
(3, 2020, 0),
(4, 2021, 0);

-- --------------------------------------------------------

--
-- Table structure for table `counter_lab`
--

CREATE TABLE IF NOT EXISTS `counter_lab` (
`id_counter_lab` int(11) NOT NULL,
  `kode_lab` varchar(15) DEFAULT NULL,
  `tahun` int(11) DEFAULT NULL,
  `counter` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=523 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `counter_lab`
--

INSERT INTO `counter_lab` (`id_counter_lab`, `kode_lab`, `tahun`, `counter`) VALUES
(1, 'BTP', NULL, 0),
(2, 'RP', NULL, 0),
(3, 'MY', NULL, 0),
(4, 'MIK', NULL, 0),
(41, 'Bn.S', 2018, 0),
(44, 'KN', 2018, 0),
(63, NULL, 2018, 0),
(75, 'RP', 2018, 0),
(80, 'LBM', 2018, 0),
(83, 'Bn.P', 2018, 0),
(84, 'MIK', 2018, 0),
(85, 'FP', 2018, 0),
(103, 'MFB', 2019, 1),
(108, 'Bn.P', 2019, 1),
(415, 'MY', 2019, 25),
(472, 'RP', 2019, 128),
(493, 'MIK', 2019, 136),
(507, 'LBM', 2019, 137),
(519, 'FP', 2019, 20),
(520, 'KN', 2019, 28),
(521, NULL, 2019, 1),
(522, 'BN', 2019, 26);

-- --------------------------------------------------------

--
-- Table structure for table `counter_nomorseri`
--

CREATE TABLE IF NOT EXISTS `counter_nomorseri` (
`id_counter_nomorseri` int(11) NOT NULL,
  `tahun` int(11) DEFAULT NULL,
  `counter` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `counter_nomorseri`
--

INSERT INTO `counter_nomorseri` (`id_counter_nomorseri`, `tahun`, `counter`) VALUES
(10, 2018, 10),
(12, 2020, 0),
(13, 2021, 0),
(26, 2019, 77);

-- --------------------------------------------------------

--
-- Table structure for table `hasil`
--

CREATE TABLE IF NOT EXISTS `hasil` (
  `prim` varchar(30) NOT NULL,
  `nomor_seri` varchar(20) DEFAULT NULL,
  `ceklis_1` bit(1) DEFAULT NULL,
  `ceklis_2` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `hasil`
--

INSERT INTO `hasil` (`prim`, `nomor_seri`, `ceklis_1`, `ceklis_2`) VALUES
('148-02-2019_19', '190341', b'0', b'1'),
('157-02-2019_19', '190342', b'0', b'1'),
('159-02-2019_3', '190222', b'1', b'0'),
('160-02-2019_3', '190323', b'1', b'0'),
('161-02-2019_5', '190232', b'1', b'0'),
('173-02-2019_4', '190217', b'1', b'0'),
('187-02-2019_13', '190368', b'0', b'1'),
('187-02-2019_15', '190351', b'0', b'1'),
('188-02-2019_13', '190369', b'0', b'1'),
('189-02-2019_13', '190370', b'0', b'1'),
('190-02-2019_13', '190371', b'0', b'1'),
('191-02-2019_13', '190372', b'0', b'1'),
('191-02-2019_19', '190343', b'0', b'1'),
('192-02-2019_19', '190344', b'0', b'1'),
('198-02-2019_13', '190373', b'0', b'1'),
('200-02-2019_13', '190374', b'0', b'1'),
('200-02-2019_19', '190345', b'0', b'1'),
('201-02-2019_13', '190375', b'0', b'1'),
('202-02-2019_13', '190380', b'0', b'1'),
('203-02-2019_13', '190381', b'0', b'1'),
('204-02-2019_13', '190382', b'0', b'1'),
('205-02-2019_13', '190383', b'0', b'1'),
('207-02-2019_13', '190384', b'0', b'1'),
('221-02-2019_13', '190385', b'0', b'1'),
('222-02-2019_13', '190386', b'0', b'1'),
('229-02-2019_5', '190252', b'1', b'0'),
('230-02-2019_19', '190346', b'0', b'1'),
('231-02-2019_19', '190347', b'0', b'1'),
('234-02-2019_13', '190387', b'0', b'1'),
('236-02-2019_13', '190387', b'0', b'1'),
('239-02-2019_19', '190348', b'0', b'1'),
('240-02-2019_19', '190349', b'0', b'1'),
('245-02-2019_19', '190350', b'0', b'1'),
('246-02-2019_13', '190388', b'0', b'1'),
('253-02-2019_4', '190324', b'1', b'0'),
('254-02-2019_4', '190367', b'1', b'0'),
('266-03-2019_3', '190376', b'0', b'1'),
('267-03-2019_3', '190377', b'0', b'1'),
('268-03-2019_3', '190378', b'0', b'1'),
('269-03-2019_13', '190325', b'1', b'0'),
('270-03-2019_13', '190326', b'1', b'0'),
('271-03-2019_13', '190327', b'1', b'0'),
('272-03-2019_13', '190328', b'1', b'0'),
('273-03-2019_13', '190329', b'1', b'0'),
('274-03-2019_13', '190330', b'1', b'0'),
('275-03-2019_13', '190331', b'1', b'0'),
('276-03-2019_13', '190332', b'1', b'0'),
('277-03-2019_13', '190333', b'1', b'0'),
('278-03-2019_13', '190334', b'1', b'0'),
('279-03-2019_13', '190335', b'1', b'0'),
('280-03-2019_13', '190336', b'1', b'0'),
('281-03-2019_13', '190337', b'1', b'0'),
('282-03-2019_13', '190338', b'1', b'0'),
('283-03-2019_13', '190339', b'1', b'0'),
('284-03-2019_12', '190389', b'1', b'0'),
('285-03-2019_12', '190390', b'1', b'0'),
('286-03-2019_12', '190391', b'1', b'0'),
('287-03-2019_12', '190392', b'1', b'0'),
('288-03-2019_3', '190379', b'0', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `hasil_bn`
--

CREATE TABLE IF NOT EXISTS `hasil_bn` (
  `prim` varchar(30) NOT NULL,
  `catatan` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `hasil_bn`
--

INSERT INTO `hasil_bn` (`prim`, `catatan`) VALUES
('142-02-2019_3', ''),
('159-02-2019_3', 'ISTA RULES 2018'),
('160-02-2019_3', '*) Berdasarkan ISTA RULES 2018'),
('266-03-2019_3', '*) Berdasarkan ISTA RULES 2018'),
('267-03-2019_3', '*) Berdasarkan ISTA RULES 2018'),
('268-03-2019_3', '*) Berdasarkan ISTA RULES 2018'),
('288-03-2019_3', '*) Berdasarkan ISTA RULES 2018');

-- --------------------------------------------------------

--
-- Table structure for table `hasil_detail`
--

CREATE TABLE IF NOT EXISTS `hasil_detail` (
`id_hasil` int(11) NOT NULL,
  `id_permohonan_detail_parameter` int(11) DEFAULT NULL,
  `hasil` varchar(100) DEFAULT NULL,
  `satuan` varchar(100) DEFAULT NULL,
  `metode` varchar(100) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `standard` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=199 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `hasil_detail`
--

INSERT INTO `hasil_detail` (`id_hasil`, `id_permohonan_detail_parameter`, `hasil`, `satuan`, `metode`, `keterangan`, `standard`) VALUES
(2, 1636, '92', '%', '', NULL, 1),
(6, 1710, '90', '%', 'BBPPMBTPH', NULL, 1),
(25, 1713, '2,3 x 10^2', 'Koloni/g', 'IK-Mtd.MIK/MT/002', '', 1),
(26, 1714, '3,6', 'MPN/g', 'IK-Mtd.MIK/MT/003', '', 1),
(27, 1715, 'Negatif', 'per gram', 'IK-Mtd.MIK/MT/005', '', 1),
(28, 1716, 'Negatif', 'per gram', 'IK-Mtd.MIK/MT/007', '', 1),
(29, 1717, 'Negatif', 'per gram', 'IK-Mtd.MIK/MT/010', '', 1),
(30, 1718, '20', 'Koloni/g', 'IK-Mtd.MIK/MT/026', '', 1),
(40, 2062, '< 10', 'Koloni/g', 'IK-Mtd.Mik/MT/002', '', 1),
(41, 2063, '< 3,6', 'MPN/g', 'IK-Mtd.Mik/MT/006', '', 1),
(42, 2064, '< 10', 'Koloni/g', 'IK-Mtd.Mik/MT/026', '', 1),
(53, 1711, '12,7', '%', 'BBPPMBTPH*)', NULL, 1),
(54, 1712, '60', '%', 'BBPPMBTPH*)', NULL, 1),
(61, 2233, '11,1', '%', 'BBPPMBTPH *)', NULL, 1),
(62, 2234, '89', '%', 'BBPPMBTPH *)', NULL, 1),
(132, 2388, '11,3', '%', '*) BBPPMBTPH', NULL, 1),
(133, 2389, '100,0', '%', '*) BBPPMBTPH', NULL, 1),
(134, 2390, '96', '%', '*) BBPPMBTPH', NULL, 1),
(163, 2239, '8,6', '%', '*) BBPPMBTPH', NULL, 1),
(164, 2240, '100,0', '%', '*) BBPPMBTPH', NULL, 1),
(165, 2241, '93', '%', '*) BBPPMBTPH', NULL, 1),
(166, 2242, '112,75', 'g', '*) BBPPMBTPH', NULL, 1),
(195, 2235, '8,7', '%', '*) BBPPMBTPH', NULL, 1),
(196, 2236, '100,0', '%', '*) BBPPMBTPH', NULL, 1),
(197, 2237, '92', '%', '*) BBPPMBTPH', NULL, 1),
(198, 2238, '140,94', 'g', '*) BBPPMBTPH', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hasil_detail_fp`
--

CREATE TABLE IF NOT EXISTS `hasil_detail_fp` (
`id_hasil` int(11) NOT NULL,
  `id_permohonan_detail_parameter` int(11) DEFAULT NULL,
  `bahan` varchar(100) DEFAULT NULL,
  `berat` varchar(100) DEFAULT NULL,
  `kadar` varchar(100) DEFAULT NULL,
  `satuan` varchar(100) DEFAULT NULL,
  `metode` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `hasil_detail_fp`
--

INSERT INTO `hasil_detail_fp` (`id_hasil`, `id_permohonan_detail_parameter`, `bahan`, `berat`, `kadar`, `satuan`, `metode`) VALUES
(7, 1809, NULL, '1,0530', '132,60', '', 'HPLC'),
(8, 1810, NULL, '1,0530', '43,50', '', 'HPLC'),
(20, 2194, NULL, '', '20,34', '%', ''),
(26, 2195, NULL, '1,1598', '488,02', 'g/L', 'HPLC');

-- --------------------------------------------------------

--
-- Table structure for table `hasil_detail_kn`
--

CREATE TABLE IF NOT EXISTS `hasil_detail_kn` (
`id_hasil` int(11) NOT NULL,
  `id_permohonan_detail_parameter` int(11) DEFAULT NULL,
  `hasil` varchar(100) DEFAULT NULL,
  `satuan` varchar(100) DEFAULT NULL,
  `metode` varchar(100) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `standard` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `hasil_detail_kn`
--

INSERT INTO `hasil_detail_kn` (`id_hasil`, `id_permohonan_detail_parameter`, `hasil`, `satuan`, `metode`, `keterangan`, `standard`) VALUES
(7, 2277, '29,88', '%', 'SNI 01-2891-1992', NULL, NULL),
(8, 2278, '9,30', '%', 'SNI 01-2891-1992', NULL, NULL),
(15, 2279, '38,32', '%', 'SNI 01-2891-1992', NULL, NULL),
(16, 2280, '6,55', '%', 'SNI 01-2891-1992', NULL, NULL),
(31, 2283, '34,48', '%', 'SNI 01-2891-1992', NULL, NULL),
(32, 2284, '5,18', '%', 'SNI 01-2891-1992', NULL, NULL),
(87, 2281, '36,18', ' %', 'SNI 01-2891-1992', NULL, NULL),
(88, 2282, '5,04', ' %', 'SNI 01-2891-1992', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hasil_detail_lbm`
--

CREATE TABLE IF NOT EXISTS `hasil_detail_lbm` (
`id_hasil` int(11) NOT NULL,
  `id_permohonan_detail_parameter` int(11) DEFAULT NULL,
  `hasil` varchar(100) DEFAULT NULL,
  `metode` varchar(100) DEFAULT NULL,
  `satuan` varchar(255) DEFAULT NULL,
  `lod` varchar(255) DEFAULT NULL,
  `loq` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=509 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `hasil_detail_lbm`
--

INSERT INTO `hasil_detail_lbm` (`id_hasil`, `id_permohonan_detail_parameter`, `hasil`, `metode`, `satuan`, `lod`, `loq`) VALUES
(135, 2275, 'ttd', 'AAS-Graphite Furnace', 'mg/Kg', '0,017', '0,031'),
(136, 2276, 'ttd', 'AAS-Graphite Furnace', 'mg/Kg', '0,002', '0,005'),
(143, 2269, '0,049', 'AAS-Graphite Furnace', 'mg/Kg', '0,017', '0,031'),
(144, 2270, '0,023', 'AAS-Graphite Furnace', 'mg/Kg', '0,002', '0,005'),
(159, 2267, '0,032', 'AAS-Graphite Furnace', 'mg/Kg', '0,017', '0,031'),
(160, 2268, '0,027', 'AAS-Graphite Furnace', 'mg/Kg', '0,002', '0,005'),
(167, 2265, 'ttd', 'AAS-Graphite Furnace', 'mg/Kg', '0,017', '0,031'),
(168, 2266, '0,030', 'AAS-Graphite Furnace', 'mg/Kg', '0,002', '0,005'),
(175, 2263, '0,024', 'AAS-Graphite Furnace', 'mg/Kg', '0,017', '0,031'),
(176, 2264, '0,032', 'AAS-Graphite Furnace', 'mg/Kg', '0,002', '0,005'),
(199, 2259, '0,041', 'AAS-Graphite Furnace', 'mg/Kg', '0,017', '0,031'),
(200, 2260, '0,026', 'AAS-Graphite Furnace', 'mg/Kg', '0,002', '0,005'),
(207, 2257, 'ttd', 'AAS-Graphite Furnace', 'mg/Kg', '0,017', '0,031'),
(208, 2258, 'ttd', 'AAS-Graphite Furnace', 'mg/Kg', '0,002', '0,005'),
(223, 2255, 'ttd', 'AAS-Graphite Furnace', 'mg/Kg', '0,017', '0,031'),
(224, 2256, 'ttd', 'AAS-Graphite Furnace', 'mg/Kg', '0,002', '0,005'),
(231, 2253, 'ttd', 'AAS-Graphite Furnace', 'mg/Kg                              ', '0,017', '0,031'),
(232, 2254, 'ttd', 'AAS-Graphite Furnace', 'mg/Kg ', '0,002', '0,005'),
(247, 2251, 'ttd', 'AAS-Graphite Furnace', 'mg/Kg', '0,017', '0,031'),
(248, 2252, '0,038', 'AAS-Graphite Furnace', 'mg/Kg', '0,002', '0,005'),
(255, 2249, 'ttd', 'AAS-Graphite Furnace', 'mg/Kg', '0,017', '0,031'),
(256, 2250, 'ttd', 'AAS-Graphite Furnace', 'mg/Kg', '0,002', '0,005'),
(271, 2247, 'ttd', 'AAS-Graphite Furnace', 'mg/Kg', '0,017', '0,031'),
(272, 2248, '0,002', 'AAS-Graphite Furnace', 'mg/Kg', '0,002', '0,005'),
(279, 2243, 'ttd', 'AAS-Graphite Furnace', 'mg/Kg', '0,017', '0,031'),
(280, 2244, '0,031', 'AAS-Graphite Furnace', 'mg/Kg', '0,002', '0,005'),
(287, 2261, '0,047', 'AAS-Graphite Furnace', 'mg/Kg', '0,017', '0,031'),
(288, 2262, '0,036', 'AAS-Graphite Furnace', 'mg/Kg', '0,002', '0,005'),
(295, 2245, 'ttd', 'AAS-Graphite Furnace', 'mg/Kg', '0,017', '0,031'),
(296, 2246, '0,004', 'AAS-Graphite Furnace', 'mg/Kg', '0,002', '0,005'),
(303, 1852, '0,130', 'AAS-Graphite Furnace', 'mg/Kg', '0,035', '0,063'),
(304, 1853, 'ttd', 'AAS-Graphite Furnace', 'mg/Kg', '0,004', '0,010'),
(311, 1854, 'ttd', 'AAS-Graphite Furnace', 'mg/Kg', '0,035', '0,063'),
(312, 1855, '0,008', 'AAS-Graphite Furnace', 'mg/Kg', '0,004', '0,010'),
(319, 1856, '0,120', 'AAS-Graphite Furnace', 'mg/Kg', '0,035', '0,063'),
(320, 1857, '0,018', 'AAS-Graphite Furnace', 'mg/Kg', '0,004', '0,010'),
(327, 1858, '0,292', 'AAS-Graphite Furnace', 'mg/Kg', '0,035', '0,063'),
(328, 1859, '0,012', 'AAS-Graphite Furnace', 'mg/Kg', '0,004', '0,010'),
(339, 1876, '0,140', 'AAS-Graphite Furnace', 'mg/Kg', '0,035', '0,063'),
(340, 1877, 'ttd', 'AAS-Graphite Furnace', 'mg/Kg', '0,004', '0,010'),
(348, 1862, 'ttd', 'AAS-Graphite Furnace', 'mg/Kg', '0,035', '0,063'),
(355, 1887, 'ttd', 'AAS-Graphite Furnace', 'mg/Kg', '0,035', '0,063'),
(356, 1888, '0,009', 'AAS-Graphite Furnace', 'mg/Kg', '0,004', '0,010'),
(363, 1889, '0,122', 'AAS-Graphite Furnace', 'mg/Kg', '0,035', '0,063'),
(364, 1890, 'ttd', 'AAS-Graphite Furnace', 'mg/Kg', '0,004', '0,010'),
(411, 1912, 'ttd', 'AAS-Graphite Furnace', 'mg/Kg', '0,035', '0,063'),
(412, 1913, '0,024', 'AAS-Graphite Furnace', 'mg/Kg', '0,004', '0,010'),
(419, 1916, 'ttd', 'AAS-Graphite Furnace', 'mg/Kg', '0,035', '0,063'),
(420, 1917, '0,014', 'AAS-Graphite Furnace', 'mg/Kg', '0,004', '0,010'),
(427, 1910, '0,481', 'AAS-Graphite Furnace', 'mg/Kg', '0,035', '0,063'),
(428, 1911, '0,486', 'AAS-Graphite Furnace', 'mg/Kg', '0,004', '0,010'),
(435, 1908, '0,049', 'AAS-Graphite Furnace', 'mg/Kg', '0,035', '0,063'),
(436, 1909, 'ttd', 'AAS-Graphite Furnace', 'mg/Kg', '0,004', '0,010'),
(443, 1906, '0,046', 'AAS-Graphite Furnace', 'mg/Kg', '0,035', '0,063'),
(444, 1907, '0,029', 'AAS-Graphite Furnace', 'mg/Kg', '0,004', '0,010'),
(451, 2060, '0,120', 'AAS-Graphite Furnace', 'mg/Kg', '0,035', '0,063'),
(452, 2061, '0,016', 'AAS-Graphite Furnace', 'mg/Kg', '0,004', '0,010'),
(459, 2017, '0,070', 'AAS-Graphite Furnace', 'mg/Kg', '0,035', '0,063'),
(460, 2018, '0,030', 'AAS-Graphite Furnace', 'mg/Kg', '0,004', '0,010'),
(475, 2121, 'ttd', 'AAS-Graphite Furnace', 'mg/Kg', '0,035', '0,063'),
(476, 2122, 'ttd', 'AAS-Graphite Furnace', 'mg/Kg', '0,004', '0,010'),
(491, 2154, 'ttd', 'AAS-Graphite Furnace', 'mg/Kg', '0,035', '0,063'),
(492, 2155, '0,016', 'AAS-Graphite Furnace', 'mg/Kg', '0,004', '0,010'),
(507, 2125, 'ttd', 'AAS-Graphite Furnace', 'mg/Kg', '0,035', '0,063'),
(508, 2126, 'ttd', 'AAS-Graphite Furnace', 'mg/Kg', '0,004', '0,010');

-- --------------------------------------------------------

--
-- Table structure for table `hasil_detail_mfb`
--

CREATE TABLE IF NOT EXISTS `hasil_detail_mfb` (
`id_hasil` int(11) NOT NULL,
  `id_permohonan_detail_parameter` int(11) DEFAULT NULL,
  `hasil` varchar(100) DEFAULT NULL,
  `satuan` varchar(100) DEFAULT NULL,
  `metode` varchar(100) DEFAULT NULL,
  `medium` varchar(100) DEFAULT NULL,
  `premium` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `hasil_detail_mycotoxin`
--

CREATE TABLE IF NOT EXISTS `hasil_detail_mycotoxin` (
`id_hasil` int(11) NOT NULL,
  `id_permohonan_detail_parameter` int(11) DEFAULT NULL,
  `hasil` varchar(100) DEFAULT NULL,
  `mql` varchar(100) DEFAULT NULL,
  `metode` varchar(100) DEFAULT NULL,
  `bmc` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `hasil_detail_mycotoxin`
--

INSERT INTO `hasil_detail_mycotoxin` (`id_hasil`, `id_permohonan_detail_parameter`, `hasil`, `mql`, `metode`, `bmc`) VALUES
(7, 1659, 'ttd', '6,0', 'L1', '15'),
(8, 1660, 'ttd', '18,0', 'L1', '20'),
(15, 1677, 'ttd', '6,0', 'L1', '15'),
(16, 1678, '18,378', '18,0', 'L1', '20'),
(39, 1860, 'ttd', '6,0', 'L1', '15'),
(40, 1861, 'ttd', '18,0', 'L1', '20'),
(63, 1863, '1,945', '6,0', 'L1', '15'),
(64, 1864, '3,416', '18,0', 'L1', '20'),
(71, 1885, 'ttd', '6,0', 'L1', '15'),
(72, 1886, 'ttd', '18,0', 'L1', '20'),
(79, 2119, '47,550', '6,0', 'L1', '15'),
(80, 2120, '20,358', '18,0', 'L1', '20'),
(95, 2098, 'ttd', '6,0', 'L1', '15'),
(96, 2099, 'ttd', '18,0', 'L1', '20'),
(111, 2131, 'ttd', '6,0', 'L1', '15'),
(112, 2132, 'ttd', '18,0', 'L1', '20'),
(135, 2134, 'ttd', '6,0', 'L1', '15'),
(136, 2135, 'ttd', '18,0', 'L1', '20'),
(143, 2146, 'ttd', '6,0', 'L1', '15'),
(144, 2147, 'ttd', '18,0', 'L1', '20');

-- --------------------------------------------------------

--
-- Table structure for table `hasil_detail_residu`
--

CREATE TABLE IF NOT EXISTS `hasil_detail_residu` (
`id_hasil` int(11) NOT NULL,
  `id_permohonan_detail_parameter` int(11) DEFAULT NULL,
  `hasil` varchar(100) DEFAULT NULL,
  `mql` varchar(100) DEFAULT NULL,
  `metode` varchar(100) DEFAULT NULL,
  `bmr` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `hasil_detail_residu`
--

INSERT INTO `hasil_detail_residu` (`id_hasil`, `id_permohonan_detail_parameter`, `hasil`, `mql`, `metode`, `bmr`) VALUES
(16, 866, 'ttd', '0,010', 'L2', ''),
(17, 867, 'ttd', '0,010', 'L2', ''),
(18, 868, 'ttd', '0,010', 'L2', ''),
(19, 869, 'ttd', '0,010', 'L2', ''),
(20, 870, 'ttd', '0,010', 'L2', ''),
(35, 1837, 'ttd', '0,010', 'L2', '30'),
(36, 1838, 'ttd', '0,010', 'L2', ''),
(37, 1840, 'ttd', '0,010', 'L2', ''),
(38, 1841, 'ttd', '0,010', 'L2', ''),
(39, 1842, 'ttd', '0,010', 'L2', ''),
(40, 1843, 'ttd', '0,010', 'L2', ''),
(41, 1844, 'ttd', '0,010', 'L2', ''),
(42, 1845, 'ttd', '0,010', 'L2', ''),
(43, 1846, 'ttd', '0,010', 'L2', ''),
(44, 1847, 'ttd', '0,010', 'L2', ''),
(45, 1848, 'ttd', '0,010', 'L2', ''),
(46, 1849, '0,039', '0,010', 'L2', ''),
(47, 1850, 'ttd', '0,010', 'L2', ''),
(48, 1851, 'ttd', '0,010', 'L2', '');

-- --------------------------------------------------------

--
-- Table structure for table `hasil_kn`
--

CREATE TABLE IF NOT EXISTS `hasil_kn` (
  `prim` varchar(30) NOT NULL,
  `catatan` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `hasil_kn`
--

INSERT INTO `hasil_kn` (`prim`, `catatan`) VALUES
('284-03-2019_12', ''),
('285-03-2019_12', ''),
('286-03-2019_12', ''),
('287-03-2019_12', '');

-- --------------------------------------------------------

--
-- Table structure for table `hasil_lbm`
--

CREATE TABLE IF NOT EXISTS `hasil_lbm` (
  `prim` varchar(30) NOT NULL,
  `catatan` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `hasil_lbm`
--

INSERT INTO `hasil_lbm` (`prim`, `catatan`) VALUES
('187-02-2019_13', 'ttd = tidak terdeteksi\nBatas Maksimum Cemaran (BMC) pada Cabai sesuai Permentan No. 53/PERMENTAN/KR.040/12/2018\nKadmium (Cd) = 0,05 mg/Kg    \n Timbal (Pb) = 0,1 mg/Kg           \n'),
('188-02-2019_13', 'ttd = tidak terdeteksi\nBatas Maksimum Cemaran (BMC) pada Rempah/Bumbu sesuai SNI 7387 : 2009\n- Kadmium (Cd) = 0,5 mg/Kg    \n- Timbal (Pb) = 7,0 mg/Kg           \n'),
('189-02-2019_13', 'Batas Maksimum Cemaran (BMC) pada Rempah/Bumbu sesuai SNI 7387 : 2009\n- Kadmium (Cd) = 0,5 mg/Kg    \n- Timbal (Pb) = 7,0 mg/Kg           \n'),
('190-02-2019_13', 'Batas Maksimum Cemaran (BMC) pada Rempah/Bumbu sesuai SNI 7387 : 2009\n- Kadmium (Cd) = 0,5 mg/Kg    \n- Timbal (Pb) = 7,0 mg/Kg                              \n'),
('191-02-2019_13', 'ttd = tidak terdeteksi\nBatas Maksimum Cemaran (BMC) pada Rempah/Bumbu sesuai SNI 7387 : 2009\n- Timbal (Pb) = 7,0 mg/Kg                              \n'),
('198-02-2019_13', 'ttd = tidak terdeteksi\nBatas Maksimum Cemaran (BMC) pada Rempah/Bumbu sesuai SNI 7387 : 2009\n- Kadmium (Cd) = 0,5 mg/Kg     \n- Timbal (Pb) = 7,0 mg/Kg \n'),
('200-02-2019_13', 'ttd = tidak terdeteksi\nBatas Maksimum Cemaran (BMC) pada Rempah/Bumbu sesuai SNI 7387 : 2009\n- Kadmium (Cd) = 0,5 mg/Kg   \n- Timbal (Pb) = 7,0 mg/Kg \n'),
('201-02-2019_13', 'ttd = tidak terdeteksi\nBatas Maksimum Cemaran (BMC) pada Rempah/Bumbu sesuai SNI 7387 : 2009\n- Kadmium (Cd) = 0,5 mg/Kg    \n- Timbal (Pb) = 7,0 mg/Kg \n'),
('202-02-2019_13', 'Batas Maksimum Cemaran (BMC) pada Rempah/Bumbu sesuai SNI 7387 : 2009\n- Kadmium (Cd) = 0,5 mg/Kg    \n- Timbal (Pb) = 7,0 mg/Kg                              \n'),
('203-02-2019_13', 'ttd = tidak terdeteksi\nBatas Maksimum Cemaran (BMC) pada Rempah/Bumbu sesuai SNI 7387 : 2009\n- Kadmium (Cd) = 0,5 mg/Kg     \n- Timbal (Pb) = 7,0 mg/Kg                              \n \n'),
('204-02-2019_13', 'Batas Maksimum Cemaran (BMC) pada Rempah/Bumbu sesuai SNI 7387 : 2009\n- Kadmium (Cd) = 0,5 mg/Kg     \n- Timbal (Pb) = 7,0 mg/Kg                              \n'),
('205-02-2019_13', 'ttd = tidak terdeteksi\nBatas Maksimum Cemaran (BMC) pada Rempah/Bumbu sesuai SNI 7387 : 2009\n- Kadmium (Cd) = 0,5 mg/Kg   \n- Timbal (Pb) = 7,0 mg/Kg                              \n'),
('207-02-2019_13', 'ttd = tidak terdeteksi\nBatas Maksimum Cemaran (BMC) pada Rempah/Bumbu sesuai SNI 7387 : 2009\n- Kadmium (Cd) = 0,5 mg/Kg    \n- Timbal (Pb) = 7,0 mg/Kg                              \n'),
('221-02-2019_13', 'Batas Maksimum Cemaran (BMC) pada Beras sesuai Permentan No. 53/PERMENTAN/KR.040/12/2018\n- Kadmium (Cd) = 0,4 mg/Kg   \n- Timbal (Pb) = 0,2 mg/Kg           \n'),
('222-02-2019_13', 'Batas Maksimum Cemaran (BMC) pada Beras sesuai Permentan No. 53/PERMENTAN/KR.040/12/2018\n- Kadmium (Cd) = 0,4 mg/Kg   \n- Timbal (Pb) = 0,2 mg/Kg           \n'),
('234-02-2019_13', 'ttd = tidak terdeteksi\nBatas Maksimum Cemaran (BMC) pada Rempah/Bumbu sesuai SNI 7387 : 2009\n- Kadmium (Cd) = 0,5 mg/Kg     \n- Timbal (Pb) = 7,0 mg/Kg                              \n'),
('236-02-2019_13', 'ttd = tidak terdeteksi\nBatas Maksimum Cemaran (BMC) pada Rempah/Bumbu sesuai SNI 7387 : 2009\n- Kadmium (Cd) = 0,5 mg/Kg   \n- Timbal (Pb) = 7,0 mg/Kg                              \n'),
('246-02-2019_13', 'ttd = tidak terdeteksi\nBatas Maksimum Cemaran (BMC) pada Bawang Putih sesuai Permentan No. 53/PERMENTAN/KR.040/12/2018\n- Kadmium (Cd) = 005 mg/Kg    \n- Timbal (Pb) = 0,10 mg/Kg           \n'),
('269-03-2019_13', 'Batas Maksimum Cemaran (BMC) pada Ikan dan Hasil Olahannya sesuai SNI 7387:2009\n- Timbal (Pb) = 0,3 mg/Kg\n- Cadmium (Cd) = 0,1 mg/Kg'),
('270-03-2019_13', 'Batas Maksimum Cemaran (BMC) pada Ikan dan Hasil Olahannya sesuai SNI 7387 : 2009\n- Timbal (Pb) = 0,3 mg/Kg\n- Kadmium (Cd) = 0,1 mg/Kg     '),
('271-03-2019_13', 'Batas Maksimum Cemaran (BMC) pada Ikan dan Hasil Olahannya sesuai SNI 7387 : 2009\n- Timbal (Pb) = 0,3 mg/Kg                              \n- Kadmium (Cd) = 0,1 mg/Kg     '),
('272-03-2019_13', 'Batas Maksimum Cemaran (BMC) pada Ikan dan Hasil Olahannya sesuai SNI 7387 : 2009\n- Kadmium (Cd) = 0,1 mg/Kg    \n- Timbal (Pb) = 0,3 mg/Kg                              \n'),
('273-03-2019_13', 'Batas Maksimum Cemaran (BMC) pada Ikan dan Hasil Olahannya sesuai SNI 7387 : 2009\n- Kadmium (Cd) = 0,1 mg/Kg    \n- Timbal (Pb) = 0,3 mg/Kg                              \n'),
('274-03-2019_13', 'Batas Maksimum Cemaran (BMC) pada Ikan dan Hasil Olahannya sesuai SNI 7387 : 2009\n- Kadmium (Cd) = 0,1 mg/Kg     \n- Timbal (Pb) = 0,3 mg/Kg\n'),
('275-03-2019_13', 'Batas Maksimum Cemaran (BMC) pada Udang  sesuai SNI 7387 : 2009\n- Kadmium (Cd) = 1,0 mg/Kg    \n- Timbal (Pb) = 0,5 mg/Kg\n'),
('276-03-2019_13', 'Batas Maksimum Cemaran (BMC) pada Ikan dan Hasil Olahannya sesuai SNI 7387 : 2009\n- Kadmium (Cd) = 0,1 mg/Kg     \n- Timbal (Pb) = 0,3 mg/Kg\n'),
('277-03-2019_13', 'Batas Maksimum Cemaran (BMC) pada Kekerangan sesuai SNI 7387 : 2009\n- Kadmium (Cd) = 1,0 mg/Kg     \n- Timbal (Pb) = 1,5 mg/Kg\n'),
('278-03-2019_13', 'Batas Maksimum Cemaran (BMC) pada Kekerangan sesuai SNI 7387 : 2009\n- Kadmium (Cd) = 1,0 mg/Kg    \n- Timbal (Pb) = 1,5 mg/Kg\n'),
('279-03-2019_13', 'Batas Maksimum Cemaran (BMC) pada Kekerangan sesuai SNI 7387 : 2009\n- Kadmium (Cd) = 1,0 mg/Kg    \n- Timbal (Pb) = 1,5 mg/Kg\n'),
('280-03-2019_13', 'Batas Maksimum Cemaran (BMC) pada Kekerangan sesuai SNI 7387 : 2009\n- Kadmium (Cd) = 1,0 mg/Kg    \n- Timbal (Pb) = 1,5 mg/Kg                              \n'),
('281-03-2019_13', 'Batas Maksimum Cemaran (BMC) pada Kekerangan sesuai SNI 7387 : 2009\n- Kadmium (Cd) = 1,0 mg/Kg    \n- Timbal (Pb) = 1,5 mg/Kg                              \n'),
('282-03-2019_13', 'Batas Maksimum Cemaran (BMC) pada Kekerangan sesuai SNI 7387 : 2009\n- Kadmium (Cd) = 1,0 mg/Kg    \n- Timbal (Pb) = 1,5 mg/Kg                              \n'),
('283-03-2019_13', 'Batas Maksimum Cemaran (BMC) pada Ikan dan Hasil Olahannya sesuai SNI 7387 : 2009\n- Kadmium (Cd) = 0,1 mg/Kg    \n- Timbal (Pb) = 0,3 mg/Kg                              \n');

-- --------------------------------------------------------

--
-- Table structure for table `kemasan`
--

CREATE TABLE IF NOT EXISTS `kemasan` (
`id_kemasan` int(11) NOT NULL,
  `kemasan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `kemasan`
--

INSERT INTO `kemasan` (`id_kemasan`, `kemasan`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(4, 'plastik', '2018-10-14 14:53:13', NULL, NULL, NULL),
(5, 'alumunium foil', '2018-10-14 14:53:18', NULL, NULL, NULL),
(6, 'kardus', '2018-10-14 14:53:21', NULL, NULL, NULL),
(7, 'kertas', '2018-10-14 14:53:25', NULL, NULL, NULL),
(8, 'sterofoam', '2018-10-14 14:53:29', NULL, NULL, NULL),
(9, 'karung', '2018-10-14 14:53:33', NULL, NULL, NULL),
(10, 'kotak', '2018-10-14 14:53:36', NULL, NULL, NULL),
(11, 'botol', '2018-10-14 14:53:40', NULL, NULL, NULL),
(12, 'botol kaca', '2018-10-14 14:53:45', NULL, NULL, NULL),
(13, 'botol plastik', '2018-10-14 14:53:49', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kodelab`
--

CREATE TABLE IF NOT EXISTS `kodelab` (
`id_kodelab` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `kodelab` varchar(100) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `kodelab`
--

INSERT INTO `kodelab` (`id_kodelab`, `created_at`, `created_by`, `updated_at`, `updated_by`, `kodelab`, `desc`) VALUES
(1, '2018-11-25 06:06:31', NULL, NULL, NULL, 'Bu', 'Bu - Buah'),
(2, '2018-11-25 06:06:37', NULL, NULL, NULL, 'Bn.P', 'Bn.P - Benih pengawasan dan Pengecekan'),
(3, '2018-11-25 06:06:46', NULL, NULL, NULL, 'Bn.S', 'Bn.S - Benih Sertifikasi'),
(4, '2018-11-25 06:06:52', NULL, NULL, NULL, 'Ol', 'Ol - Olahan'),
(5, '2018-11-25 06:07:01', NULL, NULL, NULL, 'Sy', 'Sy - Sayuran'),
(6, '2018-11-25 06:07:08', NULL, NULL, NULL, 'UP', 'UP - Uji Profisiensi'),
(7, '2018-11-25 06:07:14', NULL, NULL, NULL, 'FP', 'FP - Formulasi Pertisida'),
(8, '2018-11-25 06:07:20', NULL, NULL, NULL, 'Kh', 'Kh - Uji Khusus');

-- --------------------------------------------------------

--
-- Table structure for table `kondisi`
--

CREATE TABLE IF NOT EXISTS `kondisi` (
`id_kondisi` int(11) NOT NULL,
  `kondisi` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `kondisi`
--

INSERT INTO `kondisi` (`id_kondisi`, `kondisi`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(3, 'Baik', '2018-10-14 14:50:50', NULL, NULL, NULL),
(6, 'Tidak Baik', '2018-10-14 14:51:04', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kop`
--

CREATE TABLE IF NOT EXISTS `kop` (
`id_kop` int(11) NOT NULL,
  `kop` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `laporan`
--

CREATE TABLE IF NOT EXISTS `laporan` (
`id_laporan` int(11) NOT NULL,
  `laporan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `kode_contoh` varchar(255) DEFAULT NULL,
  `kode_laporan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `laporan`
--

INSERT INTO `laporan` (`id_laporan`, `laporan`, `created_at`, `created_by`, `updated_at`, `updated_by`, `kode_contoh`, `kode_laporan`) VALUES
(3, 'BENIH', '2018-10-19 04:57:49', NULL, NULL, NULL, 'BN', 'DF/MA/030'),
(4, 'FORMULASI PESTISIDA', '2018-10-19 04:58:03', NULL, NULL, NULL, 'FP', 'DF/MA/028'),
(5, 'MIKROBIOLOGI', '2018-10-19 04:58:12', NULL, NULL, NULL, 'MIK', 'DF/MA/027'),
(6, 'RESIDU PESTISIDA', '2018-10-19 04:58:26', NULL, NULL, NULL, 'RP', 'DF/MA/026'),
(7, 'KLORIN', '2018-10-19 04:58:35', NULL, NULL, NULL, 'BTP', 'DF/MA/030'),
(8, 'RESIDU PESTISIDA (GOLONGAN ORGANOKLOR)', '2018-10-19 04:59:17', NULL, NULL, NULL, 'RP', 'DF/MA/026'),
(9, 'RESIDU PESTISIDA (GOLONGAN ORGANOFOSFAT)', '2018-10-19 04:59:45', NULL, NULL, NULL, 'RP', 'DF/MA/026'),
(10, 'RESIDU PESTISIDA (GOLONGAN PIRETROID)', '2018-10-19 05:00:03', NULL, NULL, NULL, 'RP', 'DF/MA/026'),
(11, 'RESIDU PESTISIDA (GOLONGAN KARBAMAT)', '2018-10-19 05:00:44', NULL, NULL, NULL, 'RP', 'DF/MA/026'),
(12, 'KOMPOSISI NUTRISI', '2018-10-19 05:01:23', NULL, NULL, NULL, 'KN', 'DF/MA/029'),
(13, 'LOGAM BERAT / MINERAL', '2018-10-19 05:01:34', NULL, NULL, NULL, 'LBM', 'DF/MA/029'),
(14, 'MINERAL', '2018-10-19 05:01:43', NULL, NULL, NULL, 'LBM', 'DF/MA/029'),
(15, 'RESIDU PESTISIDA (GOLONGAN LAIN)', '2018-10-19 07:42:01', NULL, NULL, NULL, 'RP', 'DF/MA/026'),
(18, 'KIMIA KANDUNGAN MINERAL DAN LOGAM BERAT', '2018-12-20 01:09:13', NULL, NULL, NULL, 'LBM', 'DF/MA/029'),
(19, 'MYCOTOXIN', '2019-01-30 18:09:57', NULL, NULL, NULL, 'MY', NULL),
(20, 'MUTU FISIK BERAS', '2019-01-31 23:02:19', NULL, NULL, NULL, 'MFB', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
`id_menu` int(11) NOT NULL,
  `nama_menu` varchar(100) DEFAULT NULL,
  `parent_menu` int(11) DEFAULT NULL,
  `urut` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `base_url` bit(1) DEFAULT b'1',
  `class` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_menu`, `nama_menu`, `parent_menu`, `urut`, `url`, `base_url`, `class`) VALUES
(2, 'Administration', 0, 5, 'javascript:void(0)', b'0', 'administration'),
(3, 'Data Master', 0, 3, 'javascript:void(0)', b'0', 'master'),
(4, 'Work Area', 0, 1, 'javascript:void(0)', b'0', 'work'),
(5, 'Rekap', 0, 2, 'javascript:void(0)', b'0', 'rekap'),
(6, 'Logout', 0, 6, '', b'1', 'logout'),
(7, 'Master Pelanggan', 3, NULL, 'master/pelanggan', b'1', 'pelanggan'),
(8, 'Permohonan Pengujian', 4, NULL, 'work/permohonan', b'1', 'permohonan'),
(9, 'User', 2, NULL, 'administration/user', b'1', 'user'),
(10, 'Role', 2, NULL, 'administration/role', b'1', 'roles'),
(11, 'Master Kondisi', 3, NULL, 'master/kondisi', b'1', 'kondisi'),
(12, 'Master Kemasan', 3, NULL, 'master/kemasan', b'1', 'kemasan'),
(13, 'Master Metode', 3, NULL, 'master/metode', b'1', 'metode'),
(15, 'Master Laporan', 3, NULL, 'master/laporan', b'1', 'laporan'),
(16, 'Master Parameter Pengujian', 3, NULL, 'master/parameter_pengujian', b'1', 'parameter_pengujian'),
(17, 'Kontrak Kerja', 4, NULL, 'work/kontrak', b'1', 'kontrak'),
(18, 'Pengantar Contoh', 4, NULL, 'work/contoh', b'1', 'contoh'),
(19, 'Laporan Hasil Pengujian', 4, NULL, 'work/hasil', b'1', 'hasil'),
(20, 'Buku Induk', 5, NULL, 'rekap/buku_induk', b'1', 'buku_induk'),
(21, 'Buku Kode Contoh Lab', 5, NULL, 'rekap/buku_lab', b'1', 'buku_lab'),
(22, 'Setting', 0, 4, 'javascript:void(0)', b'0', 'setting'),
(23, 'Setting Permohonan', 22, 2, 'setting/permohonan', b'1', 'permohonan'),
(24, 'Setting Kontrak Kerja', 22, 3, 'setting/kontrak_kerja', b'1', 'kontrak_kerja'),
(25, 'Setting Pengantar Contoh', 22, 4, 'setting/pengantar_contoh', b'1', 'pengantar_contoh'),
(26, 'Setting Kop', 22, 1, 'setting/kop', b'1', 'kop'),
(27, 'Setting LHP', 22, 5, 'setting/lhp', b'1', 'lhp'),
(28, 'Master Paket', 3, NULL, 'master/paket', b'1', 'paket');

-- --------------------------------------------------------

--
-- Table structure for table `metode`
--

CREATE TABLE IF NOT EXISTS `metode` (
`id_metode` int(11) NOT NULL,
  `metode` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `metode`
--

INSERT INTO `metode` (`id_metode`, `metode`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'GC', '2018-10-28 06:21:33', NULL, NULL, NULL),
(2, 'BBPPMBTPH*)', '2018-10-28 06:21:53', NULL, NULL, NULL),
(3, 'Rapid Test', '2018-10-28 06:22:06', NULL, NULL, NULL),
(4, 'Organoleptik', '2018-10-28 06:22:18', NULL, NULL, NULL),
(5, 'L2', '2018-10-28 06:22:34', NULL, NULL, NULL),
(6, 'QuEChERS-Method EN15662-2008 (GC - ECD)', '2018-10-28 06:23:13', NULL, NULL, NULL),
(7, 'QuEChERS-AOAC Official Method 2007.01 (GC-FPD)', '2018-10-28 06:24:08', NULL, NULL, NULL),
(8, 'QuEChERS-AOAC Official Method 2007.01 (GC-ECD)', '2018-10-28 06:24:40', NULL, NULL, NULL),
(9, 'QuEChERS-AOAC Official Method 2007.01 (LC-MS/MS)', '2018-10-28 06:25:25', NULL, NULL, NULL),
(10, 'SNI 01-2891-1992', '2018-10-28 06:25:52', NULL, NULL, NULL),
(11, 'AAS-Grafite Furnace', '2018-10-28 06:26:05', NULL, NULL, NULL),
(12, 'AAS-FLame', '2018-10-28 06:26:13', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `paket`
--

CREATE TABLE IF NOT EXISTS `paket` (
`id_paket` int(11) NOT NULL,
  `nama_paket` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `paket`
--

INSERT INTO `paket` (`id_paket`, `nama_paket`) VALUES
(4, 'Organoklor'),
(5, 'Piretroid'),
(6, 'Organofosfat'),
(7, 'Karbamat');

-- --------------------------------------------------------

--
-- Table structure for table `paket_detail`
--

CREATE TABLE IF NOT EXISTS `paket_detail` (
  `id_parameter_pengujian` int(11) DEFAULT NULL,
  `id_paket` int(11) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `paket_detail`
--

INSERT INTO `paket_detail` (`id_parameter_pengujian`, `id_paket`, `priority`) VALUES
(2, 4, 0),
(41, 4, 1),
(46, 4, 2),
(52, 4, 3),
(56, 4, 4),
(55, 4, 5),
(90, 4, 6),
(49, 5, 2),
(69, 5, 3),
(81, 5, 4),
(94, 5, 5),
(89, 5, 6),
(29, 5, 0),
(44, 5, 1),
(35, 6, 0),
(45, 6, 1),
(50, 6, 2),
(60, 6, 3),
(79, 6, 4),
(96, 6, 5),
(100, 6, 6),
(189, 6, 7),
(25, 7, 0),
(31, 7, 1),
(58, 7, 2),
(62, 7, 3),
(67, 7, 4);

-- --------------------------------------------------------

--
-- Table structure for table `parameter_pengujian`
--

CREATE TABLE IF NOT EXISTS `parameter_pengujian` (
`id_parameter_pengujian` int(11) NOT NULL,
  `parameter_pengujian` varchar(255) DEFAULT NULL,
  `harga` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `id_laporan` int(11) DEFAULT NULL,
  `kode_contoh` varchar(5) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=372 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `parameter_pengujian`
--

INSERT INTO `parameter_pengujian` (`id_parameter_pengujian`, `parameter_pengujian`, `harga`, `created_at`, `created_by`, `updated_at`, `updated_by`, `id_laporan`, `kode_contoh`, `caption`) VALUES
(1, 'Acephate', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 9, NULL, 'Acephate - RESIDU PESTISIDA (GOLONGAN ORGANOFOSFAT)'),
(2, 'Aldrin', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 8, NULL, 'Aldrin - RESIDU PESTISIDA (GOLONGAN ORGANOKLOR)'),
(3, 'Acrinathrin', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 10, NULL, 'Acrinathrin - RESIDU PESTISIDA (GOLONGAN PERETROID)'),
(4, 'Aldicarb', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 11, NULL, 'Aldicarb - RESIDU PESTISIDA (GOLONGAN KARBAMAT)'),
(5, 'Abamectin', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Abamectin - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(6, 'Azamethiphos', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 9, NULL, 'Azamethiphos - RESIDU PESTISIDA (GOLONGAN ORGANOFOSFAT)'),
(7, 'Azinphos-Ethyl', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 9, NULL, 'Azinphos-Ethyl - RESIDU PESTISIDA (GOLONGAN ORGANOFOSFAT)'),
(8, 'Aldicarb-Sulfone', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 11, NULL, 'Aldicarb-Sulfone - RESIDU PESTISIDA (GOLONGAN KARBAMAT)'),
(9, 'Aminocarb', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 11, NULL, 'Aminocarb - RESIDU PESTISIDA (GOLONGAN KARBAMAT)'),
(10, 'Acetamiprid', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Acetamiprid - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(11, 'Azinphos-Methyl', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 9, NULL, 'Azinphos-Methyl - RESIDU PESTISIDA (GOLONGAN ORGANOFOSFAT)'),
(12, 'Bendiocarb', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 11, NULL, 'Bendiocarb - RESIDU PESTISIDA (GOLONGAN KARBAMAT)'),
(13, 'Bifenthrin', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 10, NULL, 'Bifenthrin - RESIDU PESTISIDA (GOLONGAN PERETROID)'),
(14, 'Bensulide', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 9, NULL, 'Bensulide - RESIDU PESTISIDA (GOLONGAN ORGANOFOSFAT)'),
(15, 'Ametryn', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Ametryn - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(16, 'BHC-alpha ', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 8, NULL, 'BHC-alpha  - RESIDU PESTISIDA (GOLONGAN ORGANOKLOR)'),
(17, 'Bromophos-Ethyl', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 9, NULL, 'Bromophos-Ethyl - RESIDU PESTISIDA (GOLONGAN ORGANOFOSFAT)'),
(18, 'Aminopyralid', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Aminopyralid - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(19, 'Bioallethrin', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 10, NULL, 'Bioallethrin - RESIDU PESTISIDA (GOLONGAN PERETROID)'),
(20, 'Benfuracarb', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 11, NULL, 'Benfuracarb - RESIDU PESTISIDA (GOLONGAN KARBAMAT)'),
(21, 'Cadusafos', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 9, NULL, 'Cadusafos - RESIDU PESTISIDA (GOLONGAN ORGANOFOSFAT)'),
(22, 'BHC-beta   ', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 8, NULL, 'BHC-beta    - RESIDU PESTISIDA (GOLONGAN ORGANOKLOR)'),
(23, 'Amiotriazole', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Amiotriazole - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(24, 'Bioresmethrin', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 10, NULL, 'Bioresmethrin - RESIDU PESTISIDA (GOLONGAN PERETROID)'),
(25, 'Carbaryl', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 11, NULL, 'Carbaryl - RESIDU PESTISIDA (GOLONGAN KARBAMAT)'),
(26, 'Carbophenothion', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 9, NULL, 'Carbophenothion - RESIDU PESTISIDA (GOLONGAN ORGANOFOSFAT)'),
(27, 'BHC-delta', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 8, NULL, 'BHC-delta - RESIDU PESTISIDA (GOLONGAN ORGANOKLOR)'),
(28, 'Amitraz', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Amitraz - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(29, 'Cyfluthrin', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 10, NULL, 'Cyfluthrin - RESIDU PESTISIDA (GOLONGAN PERETROID)'),
(30, 'Chlorfenvinphos', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 9, NULL, 'Chlorfenvinphos - RESIDU PESTISIDA (GOLONGAN ORGANOFOSFAT)'),
(31, 'Carbofuran', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 11, NULL, 'Carbofuran - RESIDU PESTISIDA (GOLONGAN KARBAMAT)'),
(32, 'DDD-o,p', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 8, NULL, 'DDD-o,p - RESIDU PESTISIDA (GOLONGAN ORGANOKLOR)'),
(33, 'Atrazine', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Atrazine - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(34, 'Cyfluthrin-beta', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 10, NULL, 'Cyfluthrin-beta - RESIDU PESTISIDA (GOLONGAN PERETROID)'),
(35, 'Chlorpyrifos', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 9, NULL, 'Chlorpyrifos - RESIDU PESTISIDA (GOLONGAN ORGANOFOSFAT)'),
(36, 'Carbosulfan', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 11, NULL, 'Carbosulfan - RESIDU PESTISIDA (GOLONGAN KARBAMAT)'),
(37, 'DDD-p,p', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 8, NULL, 'DDD-p,p - RESIDU PESTISIDA (GOLONGAN ORGANOKLOR)'),
(38, 'Azaconazole', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Azaconazole - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(39, 'Cyhalothrin-gamma', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 10, NULL, 'Cyhalothrin-gamma - RESIDU PESTISIDA (GOLONGAN PERETROID)'),
(40, 'Chlorpyrifos-Methyl', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 9, NULL, 'Chlorpyrifos-Methyl - RESIDU PESTISIDA (GOLONGAN ORGANOFOSFAT)'),
(41, 'DDE-o,p', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 8, NULL, 'DDE-o,p - RESIDU PESTISIDA (GOLONGAN ORGANOKLOR)'),
(42, 'Diethofencarb', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 11, NULL, 'Diethofencarb - RESIDU PESTISIDA (GOLONGAN KARBAMAT)'),
(43, 'Azocyclotin', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Azocyclotin - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(44, 'Cyhalothrin-lambda', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 10, NULL, 'Cyhalothrin-lambda - RESIDU PESTISIDA (GOLONGAN PERETROID)'),
(45, 'Diazinon', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 9, NULL, 'Diazinon - RESIDU PESTISIDA (GOLONGAN ORGANOFOSFAT)'),
(46, 'DDE-p,p', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 8, NULL, 'DDE-p,p - RESIDU PESTISIDA (GOLONGAN ORGANOKLOR)'),
(47, 'Ethiofencarb', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 11, NULL, 'Ethiofencarb - RESIDU PESTISIDA (GOLONGAN KARBAMAT)'),
(48, 'Azoxystrobin', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Azoxystrobin - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(49, 'Cypermethrin ', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 10, NULL, 'Cypermethrin  - RESIDU PESTISIDA (GOLONGAN PERETROID)'),
(50, 'Dichlorvos', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 9, NULL, 'Dichlorvos - RESIDU PESTISIDA (GOLONGAN ORGANOFOSFAT)'),
(51, 'Benalaxyl', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Benalaxyl - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(52, 'DDT-o,p', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 8, NULL, 'DDT-o,p - RESIDU PESTISIDA (GOLONGAN ORGANOKLOR)'),
(53, 'Fenoxycarb', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 11, NULL, 'Fenoxycarb - RESIDU PESTISIDA (GOLONGAN KARBAMAT)'),
(54, 'Cypermethrin-alpha', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 10, NULL, 'Cypermethrin-alpha - RESIDU PESTISIDA (GOLONGAN PERETROID)'),
(55, 'Dieldrin', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 8, NULL, 'Dieldrin - RESIDU PESTISIDA (GOLONGAN ORGANOFOSFAT)'),
(56, 'DDT-p,p', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 8, NULL, 'DDT-p,p - RESIDU PESTISIDA (GOLONGAN ORGANOKLOR)'),
(57, 'Benfluralin', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Benfluralin - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(58, 'Methomyl', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 11, NULL, 'Methomyl - RESIDU PESTISIDA (GOLONGAN KARBAMAT)'),
(59, 'Cypermethrin-beta', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 10, NULL, 'Cypermethrin-beta - RESIDU PESTISIDA (GOLONGAN PERETROID)'),
(60, 'Dimethoate', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 9, NULL, 'Dimethoate - RESIDU PESTISIDA (GOLONGAN ORGANOFOSFAT)'),
(61, 'Benfuresate', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Benfuresate - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(62, 'Oxamyl', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 11, NULL, 'Oxamyl - RESIDU PESTISIDA (GOLONGAN KARBAMAT)'),
(63, 'Dicofol', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 8, NULL, 'Dicofol - RESIDU PESTISIDA (GOLONGAN ORGANOKLOR)'),
(64, 'Cypermethrin-zeta', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 10, NULL, 'Cypermethrin-zeta - RESIDU PESTISIDA (GOLONGAN PERETROID)'),
(65, 'Disulfoton', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 9, NULL, 'Disulfoton - RESIDU PESTISIDA (GOLONGAN ORGANOFOSFAT)'),
(66, 'Bensulfuron-Methyl', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Bensulfuron-Methyl - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(67, 'Propoxur', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 11, NULL, 'Propoxur - RESIDU PESTISIDA (GOLONGAN KARBAMAT)'),
(68, 'Endosulfan', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 8, NULL, 'Endosulfan - RESIDU PESTISIDA (GOLONGAN ORGANOKLOR)'),
(69, 'Deltamethrin', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 10, NULL, 'Deltamethrin - RESIDU PESTISIDA (GOLONGAN PERETROID)'),
(70, 'Bentazone', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Bentazone - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(71, 'Ethion', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 9, NULL, 'Ethion - RESIDU PESTISIDA (GOLONGAN ORGANOFOSFAT)'),
(72, 'Endosulfan-alpha', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 8, NULL, 'Endosulfan-alpha - RESIDU PESTISIDA (GOLONGAN ORGANOKLOR)'),
(73, 'Bitertanol', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Bitertanol - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(74, 'Etofenprox', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 10, NULL, 'Etofenprox - RESIDU PESTISIDA (GOLONGAN PERETROID)'),
(75, 'Ethoprophos', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 9, NULL, 'Ethoprophos - RESIDU PESTISIDA (GOLONGAN ORGANOFOSFAT)'),
(76, 'Fenamiphos', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 9, NULL, 'Fenamiphos - RESIDU PESTISIDA (GOLONGAN ORGANOFOSFAT)'),
(77, 'Endosulfan-beta', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 8, NULL, 'Endosulfan-beta - RESIDU PESTISIDA (GOLONGAN ORGANOKLOR)'),
(78, 'Endosulfansulfate', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 8, NULL, 'Endosulfansulfate - RESIDU PESTISIDA (GOLONGAN ORGANOKLOR)'),
(79, 'Fenitrothion', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 9, NULL, 'Fenitrothion - RESIDU PESTISIDA (GOLONGAN ORGANOFOSFAT)'),
(80, 'Boscalid', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Boscalid - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(81, 'Fenpropathrin', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 10, NULL, 'Fenpropathrin - RESIDU PESTISIDA (GOLONGAN PERETROID)'),
(82, 'Endrin', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 8, NULL, 'Endrin - RESIDU PESTISIDA (GOLONGAN ORGANOKLOR)'),
(83, 'Fenthion', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 9, NULL, 'Fenthion - RESIDU PESTISIDA (GOLONGAN ORGANOFOSFAT)'),
(84, 'Brodifacoum', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Brodifacoum - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(85, 'Fluvalinate, tau-', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 10, NULL, 'Fluvalinate, tau- - RESIDU PESTISIDA (GOLONGAN PERETROID)'),
(86, 'Heptachlor', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 8, NULL, 'Heptachlor - RESIDU PESTISIDA (GOLONGAN ORGANOKLOR)'),
(87, 'Fenthion-Oxonsulfoxide', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 9, NULL, 'Fenthion-Oxonsulfoxide - RESIDU PESTISIDA (GOLONGAN ORGANOFOSFAT)'),
(88, 'Bromacil', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Bromacil - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(89, 'Permethrin ', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 10, NULL, 'Permethrin  - RESIDU PESTISIDA (GOLONGAN PERETROID)'),
(90, 'Lindane', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 8, NULL, 'Lindane - RESIDU PESTISIDA (GOLONGAN ORGANOKLOR)'),
(91, 'Bromopropylate', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Bromopropylate - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(92, 'Malathion', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 9, NULL, 'Malathion - RESIDU PESTISIDA (GOLONGAN ORGANOFOSFAT)'),
(93, 'Methamidophos', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 9, NULL, 'Methamidophos - RESIDU PESTISIDA (GOLONGAN ORGANOFOSFAT)'),
(94, 'Fenvalerate', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 10, NULL, 'Fenvalerate - RESIDU PESTISIDA (GOLONGAN PERETROID)'),
(95, 'Bromoxynil', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Bromoxynil - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(96, 'Methidathion', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 9, NULL, 'Methidathion - RESIDU PESTISIDA (GOLONGAN ORGANOFOSFAT)'),
(97, 'Mevinphos', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 9, NULL, 'Mevinphos - RESIDU PESTISIDA (GOLONGAN ORGANOFOSFAT)'),
(98, 'Bromuconazole', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Bromuconazole - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(99, 'Bupirimate', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Bupirimate - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(100, 'Parathion', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 9, NULL, 'Parathion - RESIDU PESTISIDA (GOLONGAN ORGANOFOSFAT)'),
(101, 'Parathion-Methyl', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 9, NULL, 'Parathion-Methyl - RESIDU PESTISIDA (GOLONGAN ORGANOFOSFAT)'),
(102, 'Buprofezin', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Buprofezin - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(103, 'Butachlor', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Butachlor - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(104, 'Captan', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Captan - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(105, 'Carbendazim', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Carbendazim - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(106, 'Carboxin', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Carboxin - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(107, 'Carfentrazone-Ethyl', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Carfentrazone-Ethyl - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(108, 'Chlopropham', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Chlopropham - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(109, 'Chlorantraniliprole', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Chlorantraniliprole - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(110, 'Chlorfenapyr', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Chlorfenapyr - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(111, 'Chlorimuron-Ethyl', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Chlorimuron-Ethyl - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(112, 'Chlormequat', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Chlormequat - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(113, 'Clofentezine', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Clofentezine - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(114, 'Clothianidin', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Clothianidin - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(115, 'Coumaphos', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Coumaphos - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(116, 'Cycloxydim', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Cycloxydim - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(117, 'Cyhexatin', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Cyhexatin - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(118, 'Cymoxanil', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Cymoxanil - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(119, 'Cyproconazole', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Cyproconazole - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(120, 'Cyprodinil', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Cyprodinil - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(121, 'Cyromazine', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Cyromazine - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(122, 'Dichlofluanid', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Dichlofluanid - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(123, 'Dicloran', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Dicloran - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(124, 'Difenoconazole', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Difenoconazole - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(125, 'Diflubenzuron', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Diflubenzuron - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(126, 'Diflufenican', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Diflufenican - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(127, 'Dimethomorph', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Dimethomorph - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(128, 'Diniconazole', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Diniconazole - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(129, 'Dinocap', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Dinocap - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(130, 'Dinotefuran', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Dinotefuran - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(131, 'Diphenylamine', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Diphenylamine - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(132, 'Diuron', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Diuron - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(133, 'Emamectin benzoate', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Emamectin benzoate - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(134, 'Epoxiconazole', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Epoxiconazole - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(135, 'Ethoxyquin', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Ethoxyquin - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(136, 'Etoxazole', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Etoxazole - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(137, 'Etridiazole', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Etridiazole - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(138, 'Famoxadone', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Famoxadone - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(139, 'Fenarimol', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Fenarimol - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(140, 'Fenazaquin', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Fenazaquin - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(141, 'Fenbuconazole', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Fenbuconazole - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(142, 'Fenhexamid', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Fenhexamid - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(143, 'Fenoxaprop-P-Ethyl', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Fenoxaprop-P-Ethyl - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(144, 'Fenpiclonil', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Fenpiclonil - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(145, 'Fenpropidin', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Fenpropidin - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(146, 'Fenpropimorph', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Fenpropimorph - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(147, 'Fenpyroximate', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Fenpyroximate - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(148, 'Fenquinconazole', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Fenquinconazole - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(149, 'Fluazinam', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Fluazinam - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(150, 'Flubendiamide', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Flubendiamide - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(151, 'Fludioxonil', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Fludioxonil - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(152, 'Fluopicolide', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Fluopicolide - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(153, 'Fluopyram', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Fluopyram - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(154, 'Fluquinconazole', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Fluquinconazole - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(155, 'Flusilazole', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Flusilazole - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(156, 'Flutolanil', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Flutolanil - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(157, 'Flutriafol', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Flutriafol - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(158, 'Furmecyclox', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Furmecyclox - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(159, 'Haloxyfop', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Haloxyfop - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(160, 'Heptenophos', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Heptenophos - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(161, 'Hexaconazole', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Hexaconazole - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(162, 'Hexythiazox', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Hexythiazox - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(163, 'Imazalil', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Imazalil - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(164, 'Imidacloprid', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Imidacloprid - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(165, 'Indoxacarb', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Indoxacarb - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(166, 'Isoprocarb', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Isoprocarb - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(167, 'Kresoxim-Methyl', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Kresoxim-Methyl - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(168, 'Linuron', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Linuron - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(169, 'Malathion', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Malathion - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(170, 'Mandipropamid', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Mandipropamid - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(171, 'Meptyldinocap ', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Meptyldinocap  - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(172, 'Mesosulfuron-Methyl', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Mesosulfuron-Methyl - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(173, 'Mesotrione', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Mesotrione - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(174, 'Metaldehyde', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Metaldehyde - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(175, 'Methoxyfenozide', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Methoxyfenozide - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(176, 'Paclobutrazol', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Paclobutrazol - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(177, 'Paraquat', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Paraquat - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(178, 'Penconazole', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Penconazole - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(179, 'Phenthoate', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Phenthoate - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(180, 'Phosalone', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Phosalone - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(181, 'Phosmet', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Phosmet - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(182, 'Picoxystrobin', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Picoxystrobin - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(183, 'Piperonyl Butoxide', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Piperonyl Butoxide - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(184, 'Pirimicarb', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Pirimicarb - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(185, 'Pirimiphos-Ethyl', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Pirimiphos-Ethyl - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(186, 'Pirimiphos-Methyl', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Pirimiphos-Methyl - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(187, 'Prochloraz', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Prochloraz - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(188, 'Procymidone', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Procymidone - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(189, 'Profenofos', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Profenofos - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(190, 'Prometryn', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Prometryn - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(191, 'Propamocarb', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Propamocarb - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(192, 'Propargite', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Propargite - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(193, 'Propham', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Propham - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(194, 'Propiconazole', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Propiconazole - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(195, 'Propyzamide', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Propyzamide - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(196, 'Pymetrozine', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Pymetrozine - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(197, 'Pyraclostrobin', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Pyraclostrobin - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(198, 'Pyrimethanil', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Pyrimethanil - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(199, 'Pyriproxyfen', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Pyriproxyfen - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(200, 'Quinalphos', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Quinalphos - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(201, 'Quinoxyfen', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Quinoxyfen - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(202, 'Retenone', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Retenone - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(203, 'Spirotetramat', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Spirotetramat - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(204, 'Sulcotrione', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Sulcotrione - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(205, 'Tebuconazole', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Tebuconazole - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(206, 'Tebufenozide', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Tebufenozide - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(207, 'Teflubenzuron ', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Teflubenzuron  - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(208, 'Tetraconazole', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Tetraconazole - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(209, 'Thiabendazole', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Thiabendazole - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(210, 'Thiophanate-Methyl', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Thiophanate-Methyl - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(211, 'Tolclofos-Methyl', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Tolclofos-Methyl - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(212, 'Tolylfluanid', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Tolylfluanid - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(213, 'Triadimefon', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Triadimefon - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(214, 'Triadimenol', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Triadimenol - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(215, 'Triazophos', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Triazophos - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(216, 'Trifloxystrobin', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Trifloxystrobin - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(217, 'Triforine', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Triforine - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(218, 'Warfarin', NULL, '2019-01-24 10:11:44', NULL, NULL, NULL, 15, NULL, 'Warfarin - RESIDU PESTISIDA (GOLONGAN LAIN)'),
(219, 'Aflatoxin B1', NULL, '2019-01-30 20:17:29', NULL, NULL, NULL, 19, NULL, 'Aflatoxin B1 - MYCOTOXIN'),
(220, 'Aflatoxin B2', NULL, '2019-01-30 20:17:29', NULL, NULL, NULL, 19, NULL, 'Aflatoxin B2 - MYCOTOXIN'),
(221, 'Aflatoxin G1', NULL, '2019-01-30 20:17:29', NULL, NULL, NULL, 19, NULL, 'Aflatoxin G1 - MYCOTOXIN'),
(222, 'Aflatoxin G2', NULL, '2019-01-30 20:17:29', NULL, NULL, NULL, 19, NULL, 'Aflatoxin G2 - MYCOTOXIN'),
(223, 'Ochratoxin A', NULL, '2019-01-30 20:17:29', NULL, NULL, NULL, 19, NULL, 'Ochratoxin A - MYCOTOXIN'),
(224, 'Total Plate Count (TPC)', NULL, '2019-01-30 21:35:49', NULL, NULL, NULL, 5, NULL, 'Total Plate Count (TPC) - MIKROBIOLOGI'),
(225, 'MPN Coliform', NULL, '2019-01-30 21:35:49', NULL, NULL, NULL, 5, NULL, 'MPN Coliform - MIKROBIOLOGI'),
(226, 'MPN E.coli', NULL, '2019-01-30 21:35:49', NULL, NULL, NULL, 5, NULL, 'MPN E.coli - MIKROBIOLOGI'),
(227, 'Yeast & Mold', NULL, '2019-01-30 21:35:49', NULL, NULL, NULL, 5, NULL, 'Yeast & Mold - MIKROBIOLOGI'),
(228, '<i>Escherichia coli</i>', NULL, '2019-01-30 21:35:49', NULL, NULL, NULL, 5, NULL, 'Escherichia coli - MIKROBIOLOGI'),
(229, '<i>Salmonella</i>', NULL, '2019-01-30 21:35:49', NULL, NULL, NULL, 5, NULL, 'Salmonella - MIKROBIOLOGI'),
(230, 'Staphylococcus aureus', NULL, '2019-01-30 21:35:49', NULL, NULL, NULL, 5, NULL, 'Staphylococcus aureus - MIKROBIOLOGI'),
(231, 'Listeria sp', NULL, '2019-01-30 21:35:49', NULL, NULL, NULL, 5, NULL, 'Listeria sp - MIKROBIOLOGI'),
(232, 'Pseudomonas aeruginosa', NULL, '2019-01-30 21:35:49', NULL, NULL, NULL, 5, NULL, 'Pseudomonas aeruginosa - MIKROBIOLOGI'),
(233, 'Shigella sp', NULL, '2019-01-30 21:35:49', NULL, NULL, NULL, 5, NULL, 'Shigella sp - MIKROBIOLOGI'),
(234, 'Kadar Air', NULL, '2019-01-30 22:38:04', NULL, NULL, NULL, 12, NULL, 'Kadar Air - KOMPOSISI NUTRISI'),
(235, 'Kadar Abu', NULL, '2019-01-30 22:38:04', NULL, NULL, NULL, 12, NULL, 'Kadar Abu - KOMPOSISI NUTRISI'),
(236, 'Protein', NULL, '2019-01-30 22:38:04', NULL, NULL, NULL, 12, NULL, 'Protein - KOMPOSISI NUTRISI'),
(237, 'Karbohidrat', NULL, '2019-01-30 22:38:04', NULL, NULL, NULL, 12, NULL, 'Karbohidrat - KOMPOSISI NUTRISI'),
(238, 'Lemak', NULL, '2019-01-30 22:38:04', NULL, NULL, NULL, 12, NULL, 'Lemak - KOMPOSISI NUTRISI'),
(239, 'Vitamin C', NULL, '2019-01-30 22:38:04', NULL, NULL, NULL, 12, NULL, 'Vitamin C - KOMPOSISI NUTRISI'),
(240, 'Vitamin D', NULL, '2019-01-30 22:38:04', NULL, NULL, NULL, 12, NULL, 'Vitamin D - KOMPOSISI NUTRISI'),
(241, 'Vitamin B1', NULL, '2019-01-30 22:38:04', NULL, NULL, NULL, 12, NULL, 'Vitamin B1 - KOMPOSISI NUTRISI'),
(242, 'Vitamin B12', NULL, '2019-01-30 22:38:04', NULL, NULL, NULL, 12, NULL, 'Vitamin B12 - KOMPOSISI NUTRISI'),
(243, 'Vitamin E', NULL, '2019-01-30 22:38:04', NULL, NULL, NULL, 12, NULL, 'Vitamin E - KOMPOSISI NUTRISI'),
(244, 'Vitamin A', NULL, '2019-01-30 22:38:04', NULL, NULL, NULL, 12, NULL, 'Vitamin A - KOMPOSISI NUTRISI'),
(245, 'Formalin', NULL, '2019-01-30 22:38:04', NULL, NULL, NULL, 12, NULL, 'Formalin - KOMPOSISI NUTRISI'),
(246, 'Chlorin', NULL, '2019-01-30 22:38:04', NULL, NULL, NULL, 12, NULL, 'Chlorin - KOMPOSISI NUTRISI'),
(247, 'Boraxs', NULL, '2019-01-30 22:38:04', NULL, NULL, NULL, 12, NULL, 'Boraxs - KOMPOSISI NUTRISI'),
(248, 'Pewarna', NULL, '2019-01-30 22:38:04', NULL, NULL, NULL, 12, NULL, 'Pewarna - KOMPOSISI NUTRISI'),
(249, 'Pemanis', NULL, '2019-01-30 22:38:04', NULL, NULL, NULL, 12, NULL, 'Pemanis - KOMPOSISI NUTRISI'),
(250, 'Pengawet', NULL, '2019-01-30 22:38:04', NULL, NULL, NULL, 12, NULL, 'Pengawet - KOMPOSISI NUTRISI'),
(251, 'Logam Pb', NULL, '2019-01-30 22:41:39', NULL, NULL, NULL, 13, NULL, 'Logam Pb - LOGAM BERAT DAN MINERAL'),
(252, 'Logam Cd', NULL, '2019-01-30 22:41:39', NULL, NULL, NULL, 13, NULL, 'Logam Cd - LOGAM BERAT DAN MINERAL'),
(253, 'Logam Hg', NULL, '2019-01-30 22:41:39', NULL, NULL, NULL, 13, NULL, 'Logam Hg - LOGAM BERAT DAN MINERAL'),
(254, 'Logam Sn', NULL, '2019-01-30 22:41:39', NULL, NULL, NULL, 13, NULL, 'Logam Sn - LOGAM BERAT DAN MINERAL'),
(255, 'Mineral Fe', NULL, '2019-01-30 22:41:39', NULL, NULL, NULL, 13, NULL, 'Mineral Fe - LOGAM BERAT DAN MINERAL'),
(256, 'Mineral Zn', NULL, '2019-01-30 22:41:39', NULL, NULL, NULL, 13, NULL, 'Mineral Zn - LOGAM BERAT DAN MINERAL'),
(257, 'Mineral Cu', NULL, '2019-01-30 22:41:39', NULL, NULL, NULL, 13, NULL, 'Mineral Cu - LOGAM BERAT DAN MINERAL'),
(258, 'Mineral Mg', NULL, '2019-01-30 22:41:39', NULL, NULL, NULL, 13, NULL, 'Mineral Mg - LOGAM BERAT DAN MINERAL'),
(259, 'Mineral Al', NULL, '2019-01-30 22:41:39', NULL, NULL, NULL, 13, NULL, 'Mineral Al - LOGAM BERAT DAN MINERAL'),
(260, 'Mineral Ca', NULL, '2019-01-30 22:41:39', NULL, NULL, NULL, 13, NULL, 'Mineral Ca - LOGAM BERAT DAN MINERAL'),
(261, 'Mineral Na', NULL, '2019-01-30 22:41:39', NULL, NULL, NULL, 13, NULL, 'Mineral Na - LOGAM BERAT DAN MINERAL'),
(262, 'Mineral Mn', NULL, '2019-01-30 22:41:39', NULL, NULL, NULL, 13, NULL, 'Mineral Mn - LOGAM BERAT DAN MINERAL'),
(263, 'Derajat sosoh', NULL, '2019-01-31 23:03:26', NULL, NULL, NULL, 20, NULL, 'Derajat sosoh - MUTU FISIK BERAS'),
(264, 'Butir kepala', NULL, '2019-01-31 23:03:26', NULL, NULL, NULL, 20, NULL, 'Butir kepala - MUTU FISIK BERAS'),
(265, 'Butir patah', NULL, '2019-01-31 23:03:26', NULL, NULL, NULL, 20, NULL, 'Butir patah - MUTU FISIK BERAS'),
(266, 'Butir gabah', NULL, '2019-01-31 23:03:26', NULL, NULL, NULL, 20, NULL, 'Butir gabah - MUTU FISIK BERAS'),
(267, 'Total butir beras lainnya', NULL, '2019-01-31 23:03:26', NULL, NULL, NULL, 20, NULL, 'Total butir beras lainnya - MUTU FISIK BERAS'),
(268, 'Benda lain', NULL, '2019-01-31 23:03:26', NULL, NULL, NULL, 20, NULL, 'Benda lain - MUTU FISIK BERAS'),
(269, 'Kadar air', NULL, '2019-01-31 23:03:26', NULL, NULL, NULL, 20, NULL, 'Kadar air - MUTU FISIK BERAS'),
(270, 'Abamektin', NULL, '2019-02-01 00:54:28', NULL, NULL, NULL, 4, NULL, 'Abamektin - FORMULASI PESTISIDA'),
(271, 'Alfa Sipermetrin', NULL, '2019-02-01 00:54:28', NULL, NULL, NULL, 4, NULL, 'Alfa Sipermetrin - FORMULASI PESTISIDA'),
(272, 'Amonium Glufosinat', NULL, '2019-02-01 00:54:28', NULL, NULL, NULL, 4, NULL, 'Amonium Glufosinat - FORMULASI PESTISIDA'),
(273, 'Atrazine', NULL, '2019-02-01 00:54:28', NULL, NULL, NULL, 4, NULL, 'Atrazine - FORMULASI PESTISIDA'),
(274, 'Azoksistrobin', NULL, '2019-02-01 00:54:28', NULL, NULL, NULL, 4, NULL, 'Azoksistrobin - FORMULASI PESTISIDA'),
(275, 'Brodifakum', NULL, '2019-02-01 00:54:28', NULL, NULL, NULL, 4, NULL, 'Brodifakum - FORMULASI PESTISIDA'),
(276, 'Carbofuran', NULL, '2019-02-01 00:54:28', NULL, NULL, NULL, 4, NULL, 'Carbofuran - FORMULASI PESTISIDA'),
(277, 'Cloprop', NULL, '2019-02-01 00:54:28', NULL, NULL, NULL, 4, NULL, 'Cloprop - FORMULASI PESTISIDA'),
(278, 'Difenokonazol', NULL, '2019-02-01 00:54:28', NULL, NULL, NULL, 4, NULL, 'Difenokonazol - FORMULASI PESTISIDA'),
(279, 'Dimetomorf', NULL, '2019-02-01 00:54:28', NULL, NULL, NULL, 4, NULL, 'Dimetomorf - FORMULASI PESTISIDA'),
(280, 'Dinotefuran', NULL, '2019-02-01 00:54:28', NULL, NULL, NULL, 4, NULL, 'Dinotefuran - FORMULASI PESTISIDA'),
(281, 'Diuron', NULL, '2019-02-01 00:54:28', NULL, NULL, NULL, 4, NULL, 'Diuron - FORMULASI PESTISIDA'),
(282, 'Deltametrin', NULL, '2019-02-01 00:54:28', NULL, NULL, NULL, 4, NULL, 'Deltametrin - FORMULASI PESTISIDA'),
(283, 'Emmamektin Benzoate', NULL, '2019-02-01 00:54:28', NULL, NULL, NULL, 4, NULL, 'Emmamektin Benzoate - FORMULASI PESTISIDA'),
(284, 'Epoksikonazol', NULL, '2019-02-01 00:54:28', NULL, NULL, NULL, 4, NULL, 'Epoksikonazol - FORMULASI PESTISIDA'),
(285, 'Etil Pirazosulfuron', NULL, '2019-02-01 00:54:28', NULL, NULL, NULL, 4, NULL, 'Etil Pirazosulfuron - FORMULASI PESTISIDA'),
(286, 'Fenoksaprop-p-etil', NULL, '2019-02-01 00:54:28', NULL, NULL, NULL, 4, NULL, 'Fenoksaprop-p-etil - FORMULASI PESTISIDA'),
(287, 'Flokumafen', NULL, '2019-02-01 00:54:28', NULL, NULL, NULL, 4, NULL, 'Flokumafen - FORMULASI PESTISIDA'),
(288, 'Fipronil', NULL, '2019-02-01 00:54:28', NULL, NULL, NULL, 4, NULL, 'Fipronil - FORMULASI PESTISIDA'),
(289, 'Glifosate', NULL, '2019-02-01 00:54:28', NULL, NULL, NULL, 4, NULL, 'Glifosate - FORMULASI PESTISIDA'),
(290, 'Heksakonazol', NULL, '2019-02-01 00:54:28', NULL, NULL, NULL, 4, NULL, 'Heksakonazol - FORMULASI PESTISIDA'),
(291, 'Imidaklorprid', NULL, '2019-02-01 00:54:28', NULL, NULL, NULL, 4, NULL, 'Imidaklorprid - FORMULASI PESTISIDA'),
(292, 'Isoxaflutole', NULL, '2019-02-01 00:54:28', NULL, NULL, NULL, 4, NULL, 'Isoxaflutole - FORMULASI PESTISIDA'),
(293, 'Karbaryl', NULL, '2019-02-01 00:54:28', NULL, NULL, NULL, 4, NULL, 'Karbaryl - FORMULASI PESTISIDA'),
(294, 'Karbendazim', NULL, '2019-02-01 00:54:28', NULL, NULL, NULL, 4, NULL, 'Karbendazim - FORMULASI PESTISIDA'),
(295, 'Karbosulfan', NULL, '2019-02-01 00:54:28', NULL, NULL, NULL, 4, NULL, 'Karbosulfan - FORMULASI PESTISIDA'),
(296, 'Klorpirifos', NULL, '2019-02-01 00:54:28', NULL, NULL, NULL, 4, NULL, 'Klorpirifos - FORMULASI PESTISIDA'),
(297, 'Lamda Sihalotrin', NULL, '2019-02-01 00:54:28', NULL, NULL, NULL, 4, NULL, 'Lamda Sihalotrin - FORMULASI PESTISIDA'),
(298, 'Lufenuron', NULL, '2019-02-01 00:54:28', NULL, NULL, NULL, 4, NULL, 'Lufenuron - FORMULASI PESTISIDA'),
(299, 'Mankozeb', NULL, '2019-02-01 00:54:28', NULL, NULL, NULL, 4, NULL, 'Mankozeb - FORMULASI PESTISIDA'),
(300, 'Maneb', NULL, '2019-02-01 00:54:28', NULL, NULL, NULL, 4, NULL, 'Maneb - FORMULASI PESTISIDA'),
(301, 'Mathrine', NULL, '2019-02-01 00:54:28', NULL, NULL, NULL, 4, NULL, 'Mathrine - FORMULASI PESTISIDA'),
(302, 'Methomyl', NULL, '2019-02-01 00:54:28', NULL, NULL, NULL, 4, NULL, 'Methomyl - FORMULASI PESTISIDA'),
(303, 'Methyl Metsulfuron ', NULL, '2019-02-01 00:54:28', NULL, NULL, NULL, 4, NULL, 'Methyl Metsulfuron  - FORMULASI PESTISIDA'),
(304, 'Metil Thiofanat', NULL, '2019-02-01 00:54:28', NULL, NULL, NULL, 4, NULL, 'Metil Thiofanat - FORMULASI PESTISIDA'),
(305, 'Metiram', NULL, '2019-02-01 00:54:28', NULL, NULL, NULL, 4, NULL, 'Metiram - FORMULASI PESTISIDA'),
(306, 'Mesotrione', NULL, '2019-02-01 00:54:28', NULL, NULL, NULL, 4, NULL, 'Mesotrione - FORMULASI PESTISIDA'),
(307, 'N-Orto Nitrophenol', NULL, '2019-02-01 00:54:28', NULL, NULL, NULL, 4, NULL, 'N-Orto Nitrophenol - FORMULASI PESTISIDA'),
(308, 'N-Para Nitrophenol', NULL, '2019-02-01 00:54:28', NULL, NULL, NULL, 4, NULL, 'N-Para Nitrophenol - FORMULASI PESTISIDA'),
(309, 'N-5Nitroquaicol', NULL, '2019-02-01 00:54:28', NULL, NULL, NULL, 4, NULL, 'N-5Nitroquaicol - FORMULASI PESTISIDA'),
(310, 'Paklobutrazol', NULL, '2019-02-01 00:54:28', NULL, NULL, NULL, 4, NULL, 'Paklobutrazol - FORMULASI PESTISIDA'),
(311, 'Permethrin', NULL, '2019-02-01 00:54:28', NULL, NULL, NULL, 4, NULL, 'Permethrin - FORMULASI PESTISIDA'),
(312, 'Piraklostrobin', NULL, '2019-02-01 00:54:28', NULL, NULL, NULL, 4, NULL, 'Piraklostrobin - FORMULASI PESTISIDA'),
(313, 'Piperonyl Butoxide (PBO)', NULL, '2019-02-01 00:54:28', NULL, NULL, NULL, 4, NULL, 'Piperonyl Butoxide (PBO) - FORMULASI PESTISIDA'),
(314, 'Profoksidim', NULL, '2019-02-01 00:54:28', NULL, NULL, NULL, 4, NULL, 'Profoksidim - FORMULASI PESTISIDA'),
(315, 'Propiconazol', NULL, '2019-02-01 00:54:28', NULL, NULL, NULL, 4, NULL, 'Propiconazol - FORMULASI PESTISIDA'),
(316, 'Propineb', NULL, '2019-02-01 00:54:28', NULL, NULL, NULL, 4, NULL, 'Propineb - FORMULASI PESTISIDA'),
(317, 'Profenofos', NULL, '2019-02-01 00:54:28', NULL, NULL, NULL, 4, NULL, 'Profenofos - FORMULASI PESTISIDA'),
(318, 'Pretilaklor', NULL, '2019-02-01 00:54:28', NULL, NULL, NULL, 4, NULL, 'Pretilaklor - FORMULASI PESTISIDA'),
(319, 'Pyrazosulfuron etil', NULL, '2019-02-01 00:54:28', NULL, NULL, NULL, 4, NULL, 'Pyrazosulfuron etil - FORMULASI PESTISIDA'),
(320, 'Simoksanil', NULL, '2019-02-01 00:54:28', NULL, NULL, NULL, 4, NULL, 'Simoksanil - FORMULASI PESTISIDA'),
(321, 'Sipermetrin', NULL, '2019-02-01 00:54:28', NULL, NULL, NULL, 4, NULL, 'Sipermetrin - FORMULASI PESTISIDA'),
(322, 'Siprokonazol', NULL, '2019-02-01 00:54:28', NULL, NULL, NULL, 4, NULL, 'Siprokonazol - FORMULASI PESTISIDA'),
(323, 'Triasulfuron', NULL, '2019-02-01 00:54:28', NULL, NULL, NULL, 4, NULL, 'Triasulfuron - FORMULASI PESTISIDA'),
(324, 'Triazafos', NULL, '2019-02-01 00:54:28', NULL, NULL, NULL, 4, NULL, 'Triazafos - FORMULASI PESTISIDA'),
(325, 'Triklopir BEE', NULL, '2019-02-01 00:54:28', NULL, NULL, NULL, 4, NULL, 'Triklopir BEE - FORMULASI PESTISIDA'),
(326, 'Triklopir', NULL, '2019-02-01 00:54:28', NULL, NULL, NULL, 4, NULL, 'Triklopir - FORMULASI PESTISIDA'),
(327, 'Teflumethrin tehnical', NULL, '2019-02-01 00:54:28', NULL, NULL, NULL, 4, NULL, 'Teflumethrin tehnical - FORMULASI PESTISIDA'),
(328, 'Thiobenkarb', NULL, '2019-02-01 00:54:28', NULL, NULL, NULL, 4, NULL, 'Thiobenkarb - FORMULASI PESTISIDA'),
(329, 'Zineb', NULL, '2019-02-01 00:54:28', NULL, NULL, NULL, 4, NULL, 'Zineb - FORMULASI PESTISIDA'),
(330, 'Ziram', NULL, '2019-02-01 00:54:28', NULL, NULL, NULL, 4, NULL, 'Ziram - FORMULASI PESTISIDA'),
(331, '1-naftil asam asetat', NULL, '2019-02-01 00:54:28', NULL, NULL, NULL, 4, NULL, '1-naftil asam asetat - FORMULASI PESTISIDA'),
(332, '2-(1-naftil) asetamida', NULL, '2019-02-01 00:54:28', NULL, NULL, NULL, 4, NULL, '2-(1-naftil) asetamida - FORMULASI PESTISIDA'),
(333, '2,4 D dimetil amina', NULL, '2019-02-01 00:54:28', NULL, NULL, NULL, 4, NULL, '2,4 D dimetil amina - FORMULASI PESTISIDA'),
(334, '2,4 D BE', NULL, '2019-02-01 00:54:28', NULL, NULL, NULL, 4, NULL, '2,4 D BE - FORMULASI PESTISIDA'),
(335, 'Oxathiapiprolin', NULL, '2019-02-01 00:54:28', NULL, NULL, NULL, 4, NULL, 'Oxathiapiprolin - FORMULASI PESTISIDA'),
(336, 'Kadar Air', NULL, '2019-02-04 07:37:05', NULL, NULL, NULL, 3, NULL, NULL),
(337, 'Kemurnian Fisik', NULL, '2019-02-04 07:37:15', NULL, NULL, NULL, 3, NULL, NULL),
(338, 'Daya Berkecambah', NULL, '2019-02-04 07:37:27', NULL, NULL, NULL, 3, NULL, NULL),
(339, 'Bobot 1000 Butir', NULL, '2019-02-04 07:37:38', NULL, NULL, NULL, 3, NULL, NULL),
(340, 'Metalaxyl', NULL, '2019-02-04 08:09:42', NULL, NULL, NULL, 15, NULL, NULL),
(343, 'Kadar Gula', NULL, '2019-02-09 01:36:03', NULL, NULL, NULL, 12, NULL, NULL),
(344, NULL, NULL, '2019-02-09 01:36:05', NULL, NULL, NULL, NULL, NULL, NULL),
(345, 'Kapang Khamir', NULL, '2019-02-11 04:21:55', NULL, NULL, NULL, 5, NULL, NULL),
(346, 'o.p-DDE', NULL, '2019-02-11 07:23:54', NULL, NULL, NULL, 8, NULL, NULL),
(347, 'p.p-DDE', NULL, '2019-02-11 07:26:23', NULL, NULL, NULL, 8, NULL, NULL),
(348, 'o.p-DDT', NULL, '2019-02-12 02:35:36', NULL, NULL, NULL, 8, NULL, NULL),
(349, 'p.p-DDT', NULL, '2019-02-12 02:35:51', NULL, NULL, NULL, 8, NULL, NULL),
(350, 'L-Cyhalothrin', NULL, '2019-02-12 02:42:30', NULL, NULL, NULL, 10, NULL, NULL),
(351, 'Chlordane', NULL, '2019-02-15 02:38:01', NULL, NULL, NULL, 15, NULL, NULL),
(353, 'Aflatoksin Total', NULL, '2019-02-15 09:04:12', NULL, NULL, NULL, 19, NULL, NULL),
(354, 'Ochratoxin  A', NULL, '2019-02-22 07:29:48', NULL, NULL, NULL, 19, NULL, NULL),
(355, 'Azinphos-Methyl', NULL, '2019-02-22 07:55:20', NULL, NULL, NULL, 15, NULL, NULL),
(356, 'Chlorothalonil', NULL, '2019-02-22 08:04:47', NULL, NULL, NULL, 15, NULL, NULL),
(357, 'IPA Glifosat 480 g/l', NULL, '2019-02-27 01:12:36', NULL, NULL, NULL, 4, NULL, NULL),
(358, 'Klorin', NULL, '2019-02-28 06:23:13', NULL, NULL, NULL, 12, NULL, NULL),
(359, 'MPN E.coli', NULL, '2019-03-04 07:17:53', NULL, NULL, NULL, 5, NULL, NULL),
(360, 'Listeria spp', NULL, '2019-03-04 07:18:29', NULL, NULL, NULL, 5, NULL, NULL),
(361, 'IPA Glifosat', NULL, '2019-03-08 02:48:34', NULL, NULL, NULL, NULL, NULL, NULL),
(362, 'IPA Glifosat', NULL, '2019-03-08 02:50:59', NULL, NULL, NULL, NULL, NULL, NULL),
(363, 'IPA Glifosat', NULL, '2019-03-08 03:05:17', NULL, NULL, NULL, 4, NULL, NULL),
(364, 'Fludioksonil ', NULL, '2019-03-08 07:42:47', NULL, NULL, NULL, 4, NULL, NULL),
(365, 'Siprodinil ', NULL, '2019-03-08 07:43:05', NULL, NULL, NULL, 4, NULL, NULL),
(366, 'Tebukonazol 36 %', NULL, '2019-03-14 08:00:57', NULL, NULL, NULL, 4, NULL, NULL),
(367, 'Imidakloprid', NULL, '2019-03-15 03:59:54', NULL, NULL, NULL, 4, NULL, NULL),
(368, 'Uji Organoleptik', NULL, '2019-03-15 07:18:18', NULL, NULL, NULL, 12, NULL, NULL),
(369, 'Kadar Fruktosa', NULL, '2019-03-15 07:19:23', NULL, NULL, NULL, 12, NULL, NULL),
(370, 'Kadar Glukosa', NULL, '2019-03-15 07:19:37', NULL, NULL, NULL, 12, NULL, NULL),
(371, 'Kadar Sukrosa', NULL, '2019-03-15 07:19:53', NULL, NULL, NULL, 12, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE IF NOT EXISTS `pelanggan` (
`id_pelanggan` int(11) NOT NULL,
  `id_pelanggan_lama` int(11) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `instansi_perusahaan` varchar(255) DEFAULT NULL,
  `nik_npwp` varchar(50) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `telepon_fax` varchar(100) DEFAULT NULL,
  `kontak_person` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `id_pelanggan_lama`, `nama`, `instansi_perusahaan`, `nik_npwp`, `alamat`, `telepon_fax`, `kontak_person`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 25, 'M. Noer', 'PT. Ganesha Abaditama', NULL, 'Jl. Buni No. 33 Cipayung, Jakarta Timur', '-', 'Mulyadi', '2018-11-29 17:19:43', NULL, NULL, NULL),
(2, 26, 'Aman Suhanda', 'Seksi Sertifikasi BPMSHPHH/PT. Hextar Seed', NULL, 'Jl. Raya Jambore No. 1 Cibubur, Jakarta Timur', '02187752692', NULL, '2018-11-29 17:19:43', NULL, NULL, NULL),
(3, 27, 'Aman Suhanda', 'Seksi Sertifikasi BPMSHPHH/PT. Syngenta Indonesia', NULL, 'Jl. Raya Jambore No. 1 Cibubur, Jakarta Timur', '02187752692', NULL, '2018-11-29 17:19:43', NULL, NULL, NULL),
(4, 28, 'M. Noer', 'PT. Ganesha Abaditama', NULL, 'Jl. Buni No. 33 Cipayung, Jakarta Timur', '0218452306', 'Mulyadi', '2018-11-29 17:19:43', NULL, NULL, NULL),
(5, 29, 'Aman Suhanda', 'Seksi Sertifikasi BPMHTPH/PT. Syngenta Indonesia', NULL, 'Jl. Raya Jambore No. 1 Cibubur, Jakarta Timur', '02187752692', NULL, '2018-11-29 17:19:43', NULL, NULL, NULL),
(6, 30, 'Cinde.T', 'M-Brio Food Laboratory', NULL, 'Jl. Villa Indah Pajajaran Blok B17, Pulo Armin Bogor', '0251-8346986', '-', '2018-11-29 17:19:43', NULL, NULL, NULL),
(7, 31, 'Kusmin', 'Seksi Sertifikasi BPMHTPH/PT. Dhanyaa seed', NULL, 'Jl. Raya Jambore No. 1 Cibubur, Jakarta Timur', '02187752692', NULL, '2018-11-29 17:19:43', NULL, NULL, NULL),
(8, 32, 'Ir. Parulian', 'BBTKL PP Jakarta', NULL, 'Jl. Balai Rakyat No. 2, Cakung Timur Jakarta', '021-46824247/258', NULL, '2018-11-29 17:19:43', NULL, NULL, NULL),
(9, 33, 'Parulian', 'BBTKL PP, Jakarta', NULL, 'Jl. Balai Rakyat No. 2 Cakung Timur, Jakarta', '021-46824247/258', '-', '2018-11-29 17:19:43', NULL, NULL, NULL),
(10, 34, 'Yanto', 'PT. PUTRISARI KIMIANUSA', NULL, 'Jl. Mercedes Benz No. 227 Cicadas, Gn. Putri Bogor', '081310490008', NULL, '2018-11-29 17:19:43', NULL, NULL, NULL),
(11, 38, 'Halimah', 'BIDANG PASCA PANEN', NULL, 'Jl. Gunung Sahari Raya No. 11, Jakarta', '-', '-', '2018-11-29 17:19:43', NULL, NULL, NULL),
(12, 39, 'Bahrun', 'PT. United Phosphorus Indonesia', NULL, 'Jl. HR.Rasuna Said Kav.X2 No.4, JKT', '021-2520440', NULL, '2018-11-29 17:19:43', NULL, NULL, NULL),
(13, 40, 'Halimah', 'Bid. Pasca Panen', NULL, 'Jl. G. Sahari Raya No.11 JKT', '-', '-', '2018-11-29 17:19:43', NULL, NULL, NULL),
(14, 41, 'Nurhayati', 'Badan Ketahanan Pangan Prov. Sum-sel', NULL, 'Jl. Kol. H. Barlian KM.6 No. 82, Palembang', '0711-410488-410084', 'Nurhayati', '2018-11-29 17:19:43', NULL, NULL, NULL),
(15, 42, 'Djoko Suroso', 'PT. SURAT TANI', NULL, 'Jl. Kol. Sugiono 2 C, Medan', '0816928932', 'Djoko Suroso', '2018-11-29 17:19:43', NULL, NULL, NULL),
(16, 43, 'Mayang Sari Marchainy', 'PT. Dupont Agricultural Products Indonesia', NULL, 'Jl. Ampera Raya No. 9-10, Jakarta', NULL, NULL, '2018-11-29 17:19:43', NULL, NULL, NULL),
(17, 44, 'N. Suryati', 'BBPPMBTPH', NULL, 'Jl. Raya Tapos Kotak Pos 20, Depok', '-', NULL, '2018-11-29 17:19:43', NULL, NULL, NULL),
(18, 151, 'Iwan Indriyanto', 'Bidang Pertanian DKPKP', NULL, 'Jl. Gng Sahari Ry No. 11', '0216285277', 'Iwan Indriyanto', '2018-11-29 17:19:43', NULL, NULL, NULL),
(19, 152, 'Sumiyati', 'Bidang Ketahanan Pangan DKPKP', NULL, 'Jl. Gunung Sahari Raya No. 11, Jakarta', NULL, NULL, '2018-11-29 17:19:43', NULL, NULL, NULL),
(20, 79, 'Mulyanto', 'PT. Petrokimia Kayaku', NULL, 'Jl. Jend. A. Yani PO.BOX 107, Gresik, Jawa Timur', '085216669745', 'Mulyanto', '2018-11-29 17:19:43', NULL, NULL, NULL),
(21, 80, 'Patrick J.Godwin', 'Dir. Pupuk dan Pestisida/PT. Gelpi Kurnialestari', NULL, 'Jl. Harsono RM No. 3, JKT', '08161121020', 'Patrick J.Godwin', '2018-11-29 17:19:43', NULL, NULL, NULL),
(22, 81, 'Nanin Norrhajati', 'Dirjen Prasarana dan Sarana Pertanian/PT. Syngenta', NULL, 'Jl. Harsono RM No. 3, Ragunan Jakarta Selatan', '08121105531', 'Nanin Norrhajati', '2018-11-29 17:19:43', NULL, NULL, NULL),
(23, 82, 'Sugiono', 'PT. Deltagro Mulya Sejati', NULL, 'Komp. Roxy Mas Blok C2-35,KH. Hasyim Ashari 125, JKT', '0811181261', NULL, '2018-11-29 17:19:43', NULL, NULL, NULL),
(24, 83, 'Mujiati', 'Bidang Pasca Panen', NULL, 'Jl. Raya Gn. Saharai No. 11, Jakarta', '-', 'Mujiati', '2018-11-29 17:19:43', NULL, NULL, NULL),
(25, 84, 'Yanto', 'Dirjen Prasarana dan Sarana Pertanian/PT.P. Kayaku', NULL, 'Jl. Harsono RM No. 3, Ragunan Jakarta Selatan', '08121105531', 'Nanin Norrhajati', '2018-11-29 17:19:43', NULL, NULL, NULL),
(26, 85, 'Winyarput', 'PT.Petrokimia Kayaku', NULL, 'Jl. Jend. A. Yani PO.Box 107, Gresik', '08121303501', 'Winyarput', '2018-11-29 17:19:43', NULL, NULL, NULL),
(27, 86, 'Dewi. K', 'Badan Ketahanan Pangan Pemprov. Kep. Ba-Bel', NULL, 'Komp.Perk dan Pemukiman Terpadu Pemprov Babel', '0717-4255039/4255039', 'Dewi. K', '2018-11-29 17:19:43', NULL, NULL, NULL),
(28, 87, 'KAN', 'Komite Akreditasi Nasional', NULL, 'Gd.Manggala Wanabakti Blok IV Lt.4, Jl. Gatot Subroto', '02134227545', NULL, '2018-11-29 17:19:43', NULL, NULL, NULL),
(29, 88, 'Dewi. K', 'Badan Ketahanan Pangan Pemprov. Kep. Ba-Bel', NULL, 'Komp.Perk dan Pemukiman Terpadu Pemprov Babel', '0717-4255039/4255039', 'Dewi. K', '2018-11-29 17:19:43', NULL, NULL, NULL),
(30, 89, 'Ira', 'Bidang Pasca Panen', NULL, 'Jl. Raya Gn. Sahari No. 11, Jakarta', '-', 'Halimah', '2018-11-29 17:19:43', NULL, NULL, NULL),
(31, 90, 'Nevi. S', 'PT. Java Seed Indonesia', NULL, 'Perk. Kencana Niaga, Jl. aries Utama 4, Blok D1 No.3T,JKT', '021-5858877', 'Nevi. S', '2018-11-29 17:19:43', NULL, NULL, NULL),
(32, 91, 'Winyarput', 'Dirjen Prasarana dan Sarana Pertanian/PT.P Kayaku', NULL, 'Jl. Harsono RM No. 3, Ragunan Jakarta Selatan', '021-7205453/7251244', 'Winyarput (08121303501)', '2018-11-29 17:19:43', NULL, NULL, NULL),
(33, 92, 'Nanin Norrhajati', 'Dirjen Prasarana dan Sarana Pertanian/PT. Syngenta', NULL, 'Jl. Harsono RM No. 3, Ragunan Jakarta Selatan', '08121105531', 'Nanin Norrhajati', '2018-11-29 17:19:43', NULL, NULL, NULL),
(34, 93, 'Sudiono Geriljanto', 'Dirjen Prasarana dan Sarana Pertanian/CV. CAI', NULL, 'Jl. Harsono RM No. 3, Ragunan Jakarta Selatan', '-', 'Sudiono Geriljanto/ 0811181261', '2018-11-29 17:19:43', NULL, NULL, NULL),
(35, 94, 'Anita ', 'PT. Petrosida Gresik', NULL, 'Jl. Jend. Akhmad Yani, PO.BOX 136, Gresik', '031-3981553/653', 'Anita ', '2018-11-29 17:19:43', NULL, NULL, NULL),
(36, 131, 'Mujiati', 'Bidang Pertanian DKPKP', NULL, 'Jl. Raya Gn. Sahari No. 11, Jakarta', '-', 'Mujiati', '2018-11-29 17:19:43', NULL, NULL, NULL),
(37, 133, 'Siti Umayah', 'DirjenPrasaranadanSaranaPertanian/PT.D.Giri Wacana', NULL, 'Jl. Harsono RM No. 3, Ragunan Jakarta Selatan', '081319270905', 'Siti Umayah', '2018-11-29 17:19:43', NULL, NULL, NULL),
(38, 134, 'Umikalsum Boer, M.Si', '-', NULL, 'Jln. Jambore Raya No. 1 Cibubur - Jakarta Timur', '-', 'Umikalsum Boer, M.Si', '2018-11-29 17:19:43', NULL, NULL, NULL),
(39, 135, 'SUYONO', 'PD. DRAGON BRAND', NULL, 'Jl. Lindung Blok E3 No. 54 RT 001 RW 012 Kel. Pejagalan Kec. Penjaringan, Jakarta Utara', '082113844560', 'Muhamad Nurdin', '2018-11-29 17:19:43', NULL, NULL, NULL),
(40, 136, 'Mahmud', 'Dirjen Hortikultura Direktorat Perlindungan.TH', NULL, 'Jl. AUP No. 3 Pasar inggu, Jakarta Selatan', '021-7819117', 'Epi/081332879499', '2018-11-29 17:19:43', NULL, NULL, NULL),
(41, 137, 'Siti Umayah', 'DirjenPrasaranadanSaranaPertanian/PT.Rainbow A.', NULL, 'Jl. Harsono RM No. 3, Ragunan Jakarta Selatan', '081319270905', 'Siti Umaiyah', '2018-11-29 17:19:43', NULL, NULL, NULL),
(42, 138, 'Luthfiah', 'Luthfiah', NULL, 'Kp. Pondok Manggis RT.03/02 No. 9, D.Bj Baru Kec. Bj.Gede', '081294559020', 'Luthfiah', '2018-11-29 17:19:43', NULL, NULL, NULL),
(43, 139, 'Hero Biernady, SE', 'CV. Delvin', NULL, 'Perum DDN Blok F 01 No. 01 Rt.001 Rw.010, Bekasi', '085883115805', 'Hero Biernady, SE', '2018-11-29 17:19:43', NULL, NULL, NULL),
(44, 140, 'Asri', 'Bidang Ketahanan Pangan DKPKP', NULL, 'Jl.Gunung Sahari  Raya No. 11, Jakarta', '-', '-', '2018-11-29 17:19:43', NULL, NULL, NULL),
(45, 144, 'Ir. Sutrisno', 'BKP dan Korluh Kalimantan Tengah', NULL, 'Jl. Willem AS No. 9, Palangkaraya', '0536 3221293', 'Anie, SP', '2018-11-29 17:19:43', NULL, NULL, NULL),
(46, 145, 'Ir. Sutrisno', 'BKP dan Korluh Kalimantan Tengah', NULL, 'Jl. Willem AS No. 9, Palangkaraya', '0536 3221293', 'Noorjayawati, SP', '2018-11-29 17:19:43', NULL, NULL, NULL),
(47, 147, 'Sumiyati', 'Bidang Ketahanan Pangan DKPKP', NULL, 'Jl. Raya Gn. Sahari No. 11, Jakarta', '-', 'Mujiati', '2018-11-29 17:19:43', NULL, NULL, NULL),
(48, 150, 'Sarmili', 'Bidang Ketahanan Pangan DKPKP', NULL, 'Jl. Raya Gn. Sahari No. 11, Jakarta', '-', 'Mujiati', '2018-11-29 17:19:43', NULL, NULL, NULL),
(49, 153, 'Mudiah Rasyid', 'Dirjen Prasarana dan Sarana Pertanian/PT.Agricon', NULL, 'Jl. Harsono RM No. 3, Ragunan Jakarta Selatan', '0811110018', 'Nanin Norrhajati', '2018-11-29 17:19:43', NULL, NULL, NULL),
(50, 154, 'Sudomo', 'PT. Dunia Daging Industri', NULL, 'Jl. Poncol No. 24, Jakarta Timur', '081289335640', NULL, '2018-11-29 17:19:43', NULL, NULL, NULL),
(51, 155, 'Kusmin', 'PT. Zanubah Mandiri', NULL, 'Jl. Kalibata No. 15A Jakarta Selatan', '-', '-', '2018-11-29 17:19:43', NULL, NULL, NULL),
(52, 156, 'Kusmin', 'PT. Zanubah Mandiri', NULL, 'Jl. Kalibata No.15A Jak-Sel', '-', '-', '2018-11-29 17:19:43', NULL, NULL, NULL),
(53, 157, 'Rory Sutanto', 'PT. Metahelix Lifescinces Indonesia', NULL, 'Jakarta', '-', '081284368319', '2018-11-29 17:19:43', NULL, NULL, NULL),
(54, 97, 'Kusmin', 'Satpel Sertifikasi PPMPHP/PT. Winon Interc', NULL, 'Jl. Raya Jambore No. 1, Cibubur - Jakarta Timur', '02187752692', 'Kusmin', '2018-11-29 17:19:43', NULL, NULL, NULL),
(55, 98, 'Sumiyati', 'DinasKelautanPertanian&KetahananPangan', NULL, 'Jl. Gunung Sahari No. 11 - Jakarta Pusat', NULL, 'Mujiati', '2018-11-29 17:19:43', NULL, NULL, NULL),
(56, 101, 'Siti Halimah', 'DinasKelautanPertanian&KetahananPangan', NULL, 'Jl. Gunung Sahari No. 11 - Jakarta Pusat', NULL, 'Siti Halimah', '2018-11-29 17:19:43', NULL, NULL, NULL),
(57, 102, 'Patrick J.Godwin', 'PT. Gelpi Kurnialestari', NULL, 'Jl. Letjen Haryono M. T Kav. 17 - Jakarta', '08161121020', 'Patrick J.Godwin', '2018-11-29 17:19:43', NULL, NULL, NULL),
(58, 104, 'Yumi', 'PT. Putrisari Kimianusa', NULL, 'Jl. Raya Mercedes Bens no. 227, Cicadas, Gn. Putri', '-', '081310490008/Yumi', '2018-11-29 17:19:43', NULL, NULL, NULL),
(59, 105, 'Adde Rismawan', 'PT. Royal Agro Indonesia', NULL, 'Gd. Menara 165 lt.12A Unit B, Jl.TB Simatupang Kav. 1', '02129406633/29406634', 'Adde Rismawan/ 08111928189', '2018-11-29 17:19:43', NULL, NULL, NULL),
(60, 106, 'M. Syamsul Alam', 'PT. AGRICON', NULL, 'Jl. Melati No. 5, Wanaherang, Bogor', '08129571680', 'M. Syamsul Alam', '2018-11-29 17:19:43', NULL, NULL, NULL),
(61, 107, 'Anggun Wijayanti', 'PT. AGRICON', NULL, 'Jl. Melati No. 5, Wanaherang, Bogor', '085777914179', 'Anggun Wijayanti', '2018-11-29 17:19:43', NULL, NULL, NULL),
(62, 108, 'Anggun Wijayanti', 'PT. AGRICON', NULL, 'Jl. Melati No. 5, Wanaherang, Bogor', '085777914179', 'Anggun Wijayanti', '2018-11-29 17:19:43', NULL, NULL, NULL),
(63, 109, 'Ida Nurlela', 'Badan Ketahanan Pangan Kab. Ogan Komering Ulu', NULL, 'Jl. Mayor Ismail Husin No. 797, Baturaja', '0735-320731', 'Ida Nurlela', '2018-11-29 17:19:43', NULL, NULL, NULL),
(64, 110, 'Isworo Hadi, Msi', 'Balai Besar Karantina Pertanian Belawan', NULL, 'Jl. Sulawesi II Belawan 20414', '061-6941484/6945221', 'Isworo Hadi, Msi', '2018-11-29 17:19:43', NULL, NULL, NULL),
(65, 112, 'Ir. Sutrisno', 'BKP dan Korluh Kalimantan Tengah', NULL, 'Jl. Willem AS No. 9, Palangkaraya', '0536 3221293', NULL, '2018-11-29 17:19:43', NULL, NULL, NULL),
(66, 158, 'Kusmin', 'PT. Hextar Seed Indonesia', NULL, 'Jl. Agung Perkasa 10, Rukan Sunter Permai Blok C-22, Sunter', '-', NULL, '2018-11-29 17:19:43', NULL, NULL, NULL),
(67, 159, 'Titi Wahyuni', 'PT. Dewa Tunggal Abadi', NULL, 'Ps.IndukBerasCipinangBlokHBNo.10-11,PisganTmr, P.Gadung JT', '021-4718002/4717992', 'Hidayat', '2018-11-29 17:19:43', NULL, NULL, NULL),
(68, 160, 'Maria', 'PT. Asiatik Buana Citra', NULL, 'Menara Imperium Lt. 17, Jl. HR Rasuna Said, Jakarta 12980', NULL, NULL, '2018-11-29 17:19:43', NULL, NULL, NULL),
(69, 161, 'Nana Supriatna', 'PT. Masindo Mitra Mandiri', NULL, 'Jl. Nangka No. 10 Tanjung Barat, Jakarta Selatan', '-', NULL, '2018-11-29 17:19:43', NULL, NULL, NULL),
(70, 162, 'Hari Budiarto', 'PT. Food Station Cipinang Jaya', NULL, 'Pasar Induk Beras Cipinang, Jakarta Timur', '021-4717991', '082298006518/Hari Budiarto', '2018-11-29 17:19:43', NULL, NULL, NULL),
(71, 166, 'Nina Mardiana', 'Pusat Penelitian  Bioteknologi dan BI', NULL, 'Jl. Taman Kencana No. 1, Bogor', '0251-8327449/8324048', '081219619232', '2018-11-29 17:19:43', NULL, NULL, NULL),
(72, 167, 'Sihar', 'Balai Besar Karantina Pertanian Tanjung Priok', NULL, 'Jl. Enggano No. 17 Tanjung Priok, Jakarta Utara', '021-43931012/43902124', 'Sihar / 081381822249', '2018-11-29 17:19:43', NULL, NULL, NULL),
(73, 168, 'Nuni Arifiah', 'PT. NATHANI CHEMICALS', NULL, 'Mutiara Kosambi Blok A5 Nomor 8 - Tangerang', '08119702268', 'Nuni Arifiah', '2018-11-29 17:19:43', NULL, NULL, NULL),
(74, 169, 'Entis Sutisna', 'UD. Segar Abadi', NULL, 'Jln. Inerbang No. 5 RT 10 RW 05, Condet, Kel. Batu Ampar Kec. Kramat Jati - Jakarta Timur', '089620022256', 'Entis Sutisna', '2018-11-29 17:19:43', NULL, NULL, NULL),
(75, 170, 'Kusmin', 'Sawah Abadi Ujung Menteng PPBPT', NULL, 'Jl. KBT Cakung,  Jakarta Timur', '-', '-', '2018-11-29 17:19:43', NULL, NULL, NULL),
(76, 171, 'Kusmin', 'PT. Agrosid Manunggal Sentosa', NULL, 'Jl. Boulevard Barat Raya Klp Gading, Jakarta Utara', '021-45851413', NULL, '2018-11-29 17:19:43', NULL, NULL, NULL),
(77, 172, 'Rossi', 'PT. Centa Brasindo Abadi Chemical Industry', NULL, 'Graha CBA Jl. CBD Paramount Serpong Kav. 6, Gading S', '02129324888 Ext 309', 'Angga HP. 082122637701/087881873175/085810957984', '2018-11-29 17:19:43', NULL, NULL, NULL),
(78, 173, 'Edi Widodo', 'PT. Pertani', NULL, 'Jl. Pertanian 3 No. 1 Pasar Minggu Jakarta Selatan', '08567729640', NULL, '2018-11-29 17:19:43', NULL, NULL, NULL),
(79, 174, 'Kusmin', 'Kios Tani Ridho', NULL, 'Kel. Rorotan Kec. Cilincing, Jakarta Utara', '-', '-', '2018-11-29 17:19:43', NULL, NULL, NULL),
(80, 175, 'Raisin Sangaji, SP', 'Dinas Ketahanan Pangan Prov. Maluku', NULL, 'Jl. Pengeringan Pantai Waihaong No. 1, Ambon', '0911-312434', '082199010701/Raisin Sangaji, SP', '2018-11-29 17:19:43', NULL, NULL, NULL),
(81, 176, 'Siti Umayah', 'PT. Rainbow Agrosciences', NULL, 'The Propinence Blok 38 H No. 30-31, Alam Sutra, Tangerang', '081319270905', 'Siti Umayah', '2018-11-29 17:19:43', NULL, NULL, NULL),
(82, 177, 'Tupa S.M Hutabarat', 'BB Karantina Pertanian Belawan', NULL, 'Jl. Sulawesi II Belawan 20414', '0616941484/6945221', NULL, '2018-11-29 17:19:43', NULL, NULL, NULL),
(83, 178, 'Ifandriyan', 'Dinas Ketahanan Pangan Kab. Bulungan', NULL, 'Jl. Sengkawit Komplek Kebun Contoh Tj.Selor, Kal-Utara', '081347537073', '-', '2018-11-29 17:19:43', NULL, NULL, NULL),
(84, 179, 'ELYANI MARIA, S. ST, SP. MM', 'Dinas Ketahanan Pangan dan Pertanian', NULL, 'Jln. Jenderal A. Yani Kuala Pembuang, Kalimantan Tengah', '0538-2022340, 081251769187', 'MILAWATI, SP', '2018-11-29 17:19:43', NULL, NULL, NULL),
(85, 180, 'Tupa S.M Hutabarat', 'BB Karantina Pertanian Belawan', NULL, 'Jl. Sulawesi II Belawan 20414', '0616941484/6945221', NULL, '2018-11-29 17:19:43', NULL, NULL, NULL),
(86, 113, 'Katiran', 'BKP dan Korluh Kalimantan Tengah', NULL, 'Jl. Willem AS No. 9, Palangkaraya', '0536 3221293', 'Ir. Sutrisno', '2018-11-29 17:19:43', NULL, NULL, NULL),
(87, 114, 'Katiran', 'Dinas Perindustrian dan Perdagangan Kalteng', NULL, 'Jl. Yos Sudarso No. 1, Palangkaraya', '0536 3229819', 'Dra. Susana Ria Aden', '2018-11-29 17:19:43', NULL, NULL, NULL),
(88, 115, 'Bertha Lena', 'sudin KPKP Kota Adm. Jakarta Selatan', NULL, 'Jl. Prapanca Raya No. 9 lt. 12', '021-7205794', NULL, '2018-11-29 17:19:43', NULL, NULL, NULL),
(89, 116, 'Mulyadi', 'Sudin KPKP  Kota Adm. Jak-Pus', NULL, 'Jl. Tanah Abang I Blok C Lt.III, Jak-Pus', '021-3851854', NULL, '2018-11-29 17:19:43', NULL, NULL, NULL),
(90, 117, 'Kusmin', 'PT. Advanta Seed Indonesia', NULL, 'Jl. HR. Rasuna Said Kav. 10 No. 4 Jakarta', '-', '-', '2018-11-29 17:19:43', NULL, NULL, NULL),
(91, 118, 'Maria', 'PT. Anugrah Persada Alam', NULL, 'Menara Imperium Lt. 17, Jl. HR Rasuna Said, Jakarta 12980', NULL, NULL, '2018-11-29 17:19:43', NULL, NULL, NULL),
(92, 119, 'Dyah Ika', 'PT. Lumbung Padi Indonesia', NULL, 'Jl. Jend. Sudirman Kav. 52-53, Jakarta', '021-57973623', '081218858467', '2018-11-29 17:19:43', NULL, NULL, NULL),
(93, 120, 'Bertha Lena', 'sudin KPKP Kota Adm. Jakarta Selatan', NULL, 'Jl. Prapanca Raya No. 9 lt. 12', '021-7205794', 'Suryansyah', '2018-11-29 17:19:43', NULL, NULL, NULL),
(94, 121, 'Kusmin', 'PT. Winon International', NULL, 'Jl. Pinangsia Timur 2R, Jakarta', NULL, NULL, '2018-11-29 17:19:43', NULL, NULL, NULL),
(95, 122, 'Redy Rohidayat', 'PT. Bagja Putra', NULL, 'Jl. Raya Poncol Gg. Koperasi No. 48, Ciracas, Jakarta', '021-87700386', 'Redy Rohidayat', '2018-11-29 17:19:43', NULL, NULL, NULL),
(96, 125, 'Maria', 'PT. Anugrahtama Bina Citra', NULL, 'Menara Imperium Lt. 17, Jl. HR Rasuna Said, Jakarta 12980', '085782799384', '-', '2018-11-29 17:19:43', NULL, NULL, NULL),
(97, 126, 'Redy Rohidayat', 'PT. Bagja Putra', NULL, 'Jl. Raya Poncol Gg. Koperasi No. 48, Ciracas, Jakarta', '021-87700386', 'Redy Rohidayat', '2018-11-29 17:19:43', NULL, NULL, NULL),
(98, 127, 'Siti Julaeha', 'CV. Bumi Rempah', NULL, 'Jl. Buni Rt. 01/08 No. 58, Cipayung, Jakarta', '02170964382', 'Siti Julaeha', '2018-11-29 17:19:43', NULL, NULL, NULL),
(99, 128, 'Suhendar', 'Balitan Lab Residu Bahan Agrokimia', NULL, 'Jl. Laladon Raya No. 240, ciomas Bogor', '02518638987', 'Eman Sulaiman', '2018-11-29 17:19:43', NULL, NULL, NULL),
(100, 129, 'Waljiyati', 'Dinas Ketahanan PangandanPertanianKota Tangerang', NULL, 'Jl. Bendung Pintu Air No. 1 Neglasari, Tangerang ', '021-55733115/55733116', NULL, '2018-11-29 17:19:43', NULL, NULL, NULL),
(101, 130, 'Maria', 'PT. Asiatik Buana Citra', NULL, 'Menara Imperium Lt. 17, Jl. HR Rasuna Said, Jakarta 12980', '085782799384', 'Maria', '2018-11-29 17:19:43', NULL, NULL, NULL),
(102, 163, 'Subuh Prabowo', 'PT. Harapan Kaum Tani Indonesia', NULL, 'Gd. MR 21, Jl. Menteng Raya No. 21, Jakarta', NULL, NULL, '2018-11-29 17:19:43', NULL, NULL, NULL),
(103, 164, 'Indra ', 'CV. Aneka Rasa (B. Indra Kurniawan)', NULL, 'Jl. Kemanggisan Pulo No. 30 Slipi Jakarta Barat', '021-5486132', '08121866678', '2018-11-29 17:19:43', NULL, NULL, NULL),
(104, 45, 'Nurul Fatimah', 'PT. Ganesha Abaditama', NULL, 'Jl. Buni No. 33 Cipayung, Jakarta Timur', '-', 'Mulyadi', '2018-11-29 17:19:43', NULL, NULL, NULL),
(105, 46, 'Agung Lestarianto,SP', 'BKP Pontianak', NULL, 'Jl. :Pelabuhan laut pontianak', NULL, NULL, '2018-11-29 17:19:43', NULL, NULL, NULL),
(106, 47, 'SUWARDI, SP. MSc', 'BALAI BESAR KARANTINA PERTANIAN SOEKARNO-HATTA', NULL, 'Gedung Karantina Pertanian Bandar Udara Internasional Soekarno-Hatta', '021 5507930-31', 'SUWARDI, SP. MSc', '2018-11-29 17:19:43', NULL, NULL, NULL),
(107, 48, 'Subur Pudji S', 'BKP Kelas  I Pontianak', NULL, 'Jl. Pelabuhan Laut Pontianak, Kalbar', '0561736199', NULL, '2018-11-29 17:19:43', NULL, NULL, NULL),
(108, 49, 'SAHAT SIRAIT', 'BALAI BESAR KARANTINA PERTANIAN SOEKARNO-HATTA', NULL, 'Gedung Karantina Pertanian Bandar Udara Internasional Soekarno-Hatta', '021 5507930-31', 'SAHAT SIRAIT', '2018-11-29 17:19:43', NULL, NULL, NULL),
(109, 50, 'Windi', 'CV. Saprotan Utama', NULL, 'Komp. Kedoya Elok Plaza Blok DB 34, Jl. Panjang Kb. Jeruk', '08561038860', 'Windi', '2018-11-29 17:19:43', NULL, NULL, NULL),
(110, 51, 'AKSIN', 'CV. INDOSPICE SEJAHTERA', NULL, 'RUKO TAMAN MODEREN BLOK R 5 NO. 14, CAKUNG - JAKARTA TIMUR', '02170944799/08129962948', 'HANI', '2018-11-29 17:19:43', NULL, NULL, NULL),
(111, 52, 'Nurhayati', 'Badan Ketahanan Pangan Prov. Sum-sel', NULL, 'Jl. Kol. H. Barlian KM.6 No. 82, Palembang', '0711-410488-410084', 'Nurhayati', '2018-11-29 17:19:43', NULL, NULL, NULL),
(112, 53, 'Budi Suherman', 'Balai Karantina Pertanian Kelas II Cilegon', NULL, 'Jl. Raya Transit Cikuasa Pantai Merak, Cilegon, Banten', '0254-571807/570518', 'Budi Suherman', '2018-11-29 17:19:43', NULL, NULL, NULL),
(113, 54, 'Dedi Rosadi', 'PT. Ganesha Abaditama', NULL, 'Jl. Buni No. 33 Cipayung, Jakarta Timur', '-', 'Mulyadi', '2018-11-29 17:19:43', NULL, NULL, NULL),
(114, 55, 'Wiji Astuti', 'PT. BINA GUNA KIMIA', NULL, 'Wisma Kodel Lt.10, Jl. HR.Rasuna Said Kav.B-4 Jakarta', '021-5222350', '08119206139', '2018-11-29 17:19:43', NULL, NULL, NULL),
(115, 56, 'Ahmad Rasyid, SP', 'BADAN KETAHANAN PANGAN KAB. BANGKA SELATAN', NULL, 'Jl. Pulau Pongok Kompleks Perkantoran dan Pemukiman Terpadu Pem. Kabupaten Banka Selatan', '0717-4255039', NULL, '2018-11-29 17:19:43', NULL, NULL, NULL),
(116, 58, 'Nopriawasyah', 'Balai Karantina Pertanian Tanjung Priok', NULL, 'Jl.Enggano No. 17 Tanjung Priok, Jakarta Utara', '081398816684', 'Nopriawasyah', '2018-11-29 17:19:43', NULL, NULL, NULL),
(117, 59, 'Mei Ayuningsih', 'PT. Ganesha Abaditama', NULL, 'Jl. Buni No. 33 Cipayung, Jakarta Timur', '-', 'Mulyadi', '2018-11-29 17:19:43', NULL, NULL, NULL),
(118, 60, 'Asep Orien Mubasyirin, ST', 'Balai Karantina Pertanian Kelas II Cilegon', NULL, 'Jl. Raya Transit Cikuasa Pantai Merak, Cilegon, Banten', '0254-571807/570518', 'Asep Orien Mubasyirin, ST', '2018-11-29 17:19:43', NULL, NULL, NULL),
(119, 61, 'Hermansyah', 'Balai Besar Karantina Pertanian Tanjung Priok', NULL, 'Jl. Enggano No. 17 Tanjung Priok, Jakarta Utara', '43931549/43931061', 'Hermansyah', '2018-11-29 17:19:43', NULL, NULL, NULL),
(120, 62, 'Edin Sudarsono', 'Balai Besar Karantina Pertanian S0ekarno-Hatta', NULL, 'Gedung Karantina Pertanian Bandar Udara Internasional Soekarno-Hatta', '021 5507930-31', 'Edin Sudarsono', '2018-11-29 17:19:43', NULL, NULL, NULL),
(121, 63, 'Djoko Budirianto', 'Bidang Pertanian DKP', NULL, 'Jl. Gunung Sahari Raya No. 11, Jakarta', '-', '-', '2018-11-29 17:19:43', NULL, NULL, NULL),
(122, 64, 'Kusmin', NULL, NULL, 'Jl. Raya Jambore No. 1 Cibubur, Jakarta Timur', '02187752692', NULL, '2018-11-29 17:19:43', NULL, NULL, NULL),
(123, 65, 'Lia Melati', 'PT. Ganesha Abaditama', NULL, 'Jl. Buni No. 33 Cipayung, Jakarta Timur', '-', 'Mulyadi', '2018-11-29 17:19:43', NULL, NULL, NULL),
(124, 66, 'Lia Melati', 'CV. Marphilindo', NULL, 'Jl. Arabika 2 Blok W5 No. 7 Pondok Kopi, Jakarta Timur 13460', '-', 'Angelina', '2018-11-29 17:19:43', NULL, NULL, NULL),
(125, 68, 'Ir. Hj. Ipih Ruyani', 'Dinas Kelautan dan Pertanian Prov DKI JKT', NULL, 'Jl. Gunung Sahari No. 11', '021-6287913', 'Ir. Hj. Ipih Ruyani', '2018-11-29 17:19:43', NULL, NULL, NULL),
(126, 71, 'Wahyu Bambang', 'M-Brio Food Laboratory', NULL, 'Jl. Villa Indah Pajajaran Blok B17, Pulo Armin Bogor', '0251-8346986', 'Ageng Wahyu T', '2018-11-29 17:19:43', NULL, NULL, NULL),
(127, 72, 'Afdal', 'PT. Dinamika Maju Usaha', NULL, 'Jl. Cacing Kampung Baru KM.2, Rt. 007 Rw.008,Cakung Barat', '08158845354', 'Afdal', '2018-11-29 17:19:43', NULL, NULL, NULL),
(128, 74, 'Rosi Sukmawaty', 'Kantor Ketahanan Pangan Pandegelang', NULL, 'Kompl. Perkatoran Cikupa, Jl. Raya Labuan KM. 1, Pandegelang', '0253-201002', 'Rosi Sukmawaty/08128835652', '2018-11-29 17:19:43', NULL, NULL, NULL),
(129, 75, 'Ir. G. Trihardjo Adisewoyo', 'PT. Agro Sejahtera Indonesia', NULL, 'Jl. Ciputat Raya No. 20 F, Pd. Pinang, Jakarta', '021-75915725/75910516', '08174829257', '2018-11-29 17:19:43', NULL, NULL, NULL),
(130, 76, 'Sumiyatun', 'Bidang Katahanan Pangan', NULL, 'Jl. Raya Gn. Sahari No. 11, Jakarta', '-', 'Zaenab Dicky', '2018-11-29 17:19:43', NULL, NULL, NULL),
(131, 77, 'Siti Umayah', 'Direktur Jenderal Prasarana dan Sarana Pertanian', NULL, 'Jl. Harsono RM No. 3, Ragunan Jakarta Selatan', '081319270905', 'Siti Umayah', '2018-11-29 17:19:43', NULL, NULL, NULL),
(132, 78, 'Leli', 'Direktorat Jenderal Prasarana dan Sarana', NULL, 'Jl. Harsono RM No. 3, Ps.Minggu-Jak-Sel', '021-7816082-83', '0818780355', '2018-11-29 17:19:43', NULL, NULL, NULL),
(133, 165, 'Hadi Kuncoro', 'Hadi Kuncoro', NULL, 'Jl. Dukuh 5 Rt. 05/05 Kp. Dukuh Kramatjati Jak-Tim', '08161109999', 'Hadi Kuncoro', '2018-11-29 17:19:43', NULL, NULL, NULL),
(134, 181, 'M. Abizar', 'Dirjen Prasarana dan Sarana Pertanian/PT.Indagro', NULL, 'Jl. Harsono RM No. 3, Ragunan Jakarta Selatan', '08111441987', 'M. Abizar', '2018-11-29 17:19:43', NULL, NULL, NULL),
(135, 182, 'Hansen Wong', 'PT. Panen Masindo', NULL, 'Jl. Manyar Permai 10, 7A/N Kapuk Muara Penjaringan, JU', NULL, NULL, '2018-11-29 17:19:43', NULL, NULL, NULL),
(136, 183, 'Maria', 'PT. Aneka Boga Citra (PT. Asiatik Buana Citra)', NULL, 'Menara Imperium Lt. 17, Jl. HR Rasuna Said, Jakarta 12980', '085782799384', NULL, '2018-11-29 17:19:43', NULL, NULL, NULL),
(137, 184, 'Hansen Wong', 'PT. Panen Masindo', NULL, 'Jl. Manyar Permai 10, 7A/N Kapuk Muara Penjaringan, Jakarta Utara', NULL, NULL, '2018-11-29 17:19:43', NULL, NULL, NULL),
(138, 186, 'Asep Sugandi', 'PT. Baasithu Boga Services', NULL, 'Jl. Raya Bogor KM 21,5 No. 10 Ciracas, Jakarta Timur', '081211605541', NULL, '2018-11-29 17:19:43', NULL, NULL, NULL),
(139, 187, 'Mochamad Sony', 'PT. Pangan Sari Utama', NULL, 'Jl. Raya Poncol No. 24, Ciracas, Jakarta Timur', '081259320693', NULL, '2018-11-29 17:19:43', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permohonan`
--

CREATE TABLE IF NOT EXISTS `permohonan` (
`id_permohonan` int(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `tanggal_pengambilan` date DEFAULT NULL,
  `id_pelanggan` int(11) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `instansi_perusahaan` varchar(255) DEFAULT NULL,
  `nik_npwp` varchar(50) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `telepon_fax` varchar(100) DEFAULT NULL,
  `kontak_person` varchar(100) DEFAULT NULL,
  `hasil_kaji_ulang` varchar(255) DEFAULT NULL,
  `uang_muka` bigint(20) DEFAULT NULL,
  `sisa_pembayaran` bigint(20) DEFAULT NULL,
  `tanggal_masuk` date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `permohonan`
--

INSERT INTO `permohonan` (`id_permohonan`, `created_at`, `created_by`, `updated_at`, `updated_by`, `tanggal_pengambilan`, `id_pelanggan`, `nama`, `instansi_perusahaan`, `nik_npwp`, `alamat`, `telepon_fax`, `kontak_person`, `hasil_kaji_ulang`, `uang_muka`, `sisa_pembayaran`, `tanggal_masuk`) VALUES
(4, '2019-02-04 07:39:31', NULL, NULL, NULL, '2019-02-28', NULL, 'PT. Agri Kemia Natura', 'PT. Agri Kemia Natura', '-', 'Gd. HR. Rasuna Said No.4 RT.008/004 Kel. Kuningan Kec. Setia Budi Kota Administrasi Jakarta Selatan', '-', NULL, '<p>\n	Bahan Standar Uji<br />\n	Kesiapan Alat Uji<br />\n	Metode Uji<br />\n	Lama Waktu Uji<br />\n	Personil Penguji</p>\n', NULL, 15, '2019-02-06'),
(5, '2019-02-04 08:08:13', NULL, NULL, NULL, '2019-02-20', NULL, 'PT. Indospirit Natuna', 'PT. Indospirit Natuna', NULL, 'Komp. Graha Mas Blok A 3A-7, Jl. Raya Perjuangan Kebon Jeruk, Jakarta Barat', NULL, NULL, '<p>\n	Bahan Standar Uji<br />\n	Kesiapan Alat Uji<br />\n	Metode Uji<br />\n	Lama Waktu Uji<br />\n	Personil Penguji</p>\n', NULL, 4950, '2019-02-06'),
(8, '2019-02-09 01:39:37', NULL, NULL, NULL, '2019-02-28', NULL, 'Kebun Bibit Hidroponik', 'Kebun Bibit Hidroponik', NULL, 'Jl. Raya Cilangkap No. 45 RT 006/01 Cilangkap, Jakarta Timur', NULL, 'Parsan', '<p>\n	Bahan Standar Uji<br />\n	Kesiapan Alat Uji<br />\n	Metode Uji<br />\n	Lama Waktu Uji<br />\n	Personil Penguji</p>\n', NULL, NULL, '2019-02-07'),
(9, '2019-02-08 06:19:50', NULL, NULL, NULL, '2019-03-05', NULL, 'Bidang Ketahanan Pangan Dinas Ketahanan Pangan, Kelautan dan Pertanian Provinsi DKI Jakarta', 'Bidang Ketahanan Pangan Dinas Ketahanan Pangan, Kelautan dan Pertanian Provinsi DKI Jakarta', NULL, 'Jl. Gunung Sahari Raya No. 11, Jakarta', NULL, NULL, '<p>\n	Bahan Standar Uji<br />\n	Kesiapan Alat Uji<br />\n	Metode Uji<br />\n	Lama Waktu Uji<br />\n	Personil Penguji</p>\n', NULL, NULL, '2019-02-08'),
(10, '2019-02-11 03:57:31', NULL, NULL, NULL, '2019-02-25', NULL, 'PT. Aneka Boga Citra ', 'PT. Aneka Boga Citra', NULL, 'Menara Imperium Lt. 17 Jl. HR. Rasuna Said  Kuningan, Jakarta Selatan', '021-82460079. 021-8282888', 'Maria', '<p>\n	Bahan Standar Uji<br />\n	Kesiapan Alat Uji<br />\n	Metode Uji<br />\n	Lama Waktu Uji<br />\n	Personil Penguji</p>\n', NULL, 1200, '2019-02-11'),
(11, '2019-02-11 04:45:31', NULL, NULL, NULL, '2019-02-25', NULL, 'PT. Aneka Boga Citra', 'PT. Aneka Boga Citra', NULL, 'Menara Imperium Lt. 17, JL. HR. Rasuna Said Kuningan, Jakarta Selatan', '021-82460079, 021-8282888', 'Maria', '<p>\n	Bahan Standar Uji<br />\n	Kesiapan Alat Uji<br />\n	Metode Uji<br />\n	Lama Waktu Uji<br />\n	Personil Penguji</p>\n', NULL, 3430, '2019-02-11'),
(12, '2019-02-11 06:35:35', NULL, NULL, NULL, '2019-02-28', NULL, 'Kebun Bibit Hidroponik', 'Kebun Bibit Hidroponik', NULL, 'Jl. Raya Cilangkap No. 45 RT 006/01 Cilangkap, Jakarta Timur', NULL, 'Parsan', '<p>\n	Bahan Standar Uji<br />\n	Kesiapan Alat Uji<br />\n	Metode Uji<br />\n	Lama Waktu Uji<br />\n	Personil Penguji</p>\n', NULL, NULL, '2019-02-11'),
(15, '2019-02-12 07:31:51', NULL, NULL, NULL, '2019-02-18', NULL, 'Pusat Promosi dan Sertifikasi Hasil Pertanian', 'Pusat Promosi dan Sertifikasi Hasil Pertanian', NULL, 'Jl. Raya Jambore No. 1 Cibubur, Jakarta Timur', '021-87752692', NULL, '<p>\n	Bahan Standar Uji<br />\n	Kesiapan Alat Uji<br />\n	Metode Uji<br />\n	Lama Waktu Uji<br />\n	Personil Penguji</p>\n', NULL, NULL, '2019-02-12'),
(16, '2019-02-12 07:58:32', NULL, NULL, NULL, NULL, NULL, 'Pusat Promosi dan Sertifikasi Hasil Pertanian', 'Pusat Promosi dan Sertifikasi Hasil Pertanian', NULL, 'Jl. Raya Jambore No. 1 Cibubur, Jakarta Timur', '021-87752692', NULL, '<p>\n	Bahan Standar Uji<br />\n	Kesiapan Alat Uji<br />\n	Metode Uji<br />\n	Lama Waktu Uji<br />\n	Personil Penguji</p>\n', NULL, NULL, '2019-02-12'),
(17, '2019-02-13 01:12:32', NULL, NULL, NULL, '2019-02-28', NULL, 'PT. Metahelix Lifescinces Indonesia', 'PT. Metahelix Lifescinces Indonesia', NULL, 'Jl. Veteran 1 No. 2-5 Gambir, Jakarta Pusat', '-', '-', '<p>\n	Bahan Standar Uji<br />\n	Kesiapan Alat Uji<br />\n	Metode Uji<br />\n	Lama Waktu Uji<br />\n	Personil Penguji</p>\n', NULL, 30, '2019-02-13'),
(18, '2019-02-13 01:50:14', NULL, NULL, NULL, '2019-03-20', NULL, 'Dinas Ketahanan Pangan Kabupaten Kapuas', 'Dinas Ketahanan Pangan Kabupaten Kapuas', NULL, 'Jl. Tambun Bungai No. 90 Kuala Kapuas, Kalimantan Tengah', '0513-21667', 'Natalia Saptani', '<p>\n	Bahan Standar Uji<br />\n	Kesiapan Alat Uji<br />\n	Metode Uji<br />\n	Lama Waktu Uji<br />\n	Personil Penguji</p>\n', NULL, 8410, '2019-02-13'),
(20, '2019-02-13 04:28:10', NULL, NULL, NULL, '2019-02-18', NULL, 'PT. Primasid Andalan Utama', 'PT. Primasid Andalan Utama', '-', 'Plaza Kelapa Gading (Rukan Inkopal) Blok C/48, Jl. Boulevard Barat Raya Kelapa Gading, Jakarta', '-', '-', '<p>\n	Bahan Standar Uji<br />\n	Kesiapan Alat Uji<br />\n	Metode Uji<br />\n	Lama Waktu Uji<br />\n	Personil Penguji</p>\n', NULL, 15, '2019-02-13'),
(21, '2019-02-15 02:37:27', NULL, NULL, NULL, '2019-03-25', NULL, 'Toko Sam Yau', 'Toko Sam Yau', NULL, 'Komplek Pasar Induk Beras Cipinang Blok B-18, Jl. Pisangan Lama Selatan Rt.009/009 Pisangan Timur Pulo Gadung, Jakarta Timur', NULL, NULL, '<p>\n	Bahan Standar Uji<br />\n	Kesiapan Alat Uji<br />\n	Metode Uji<br />\n	Lama Waktu Uji<br />\n	Personil Penguji</p>\n', NULL, 4200, '2019-02-15'),
(22, '2019-02-15 09:02:53', NULL, NULL, NULL, '2019-03-05', NULL, 'CV. Sumber Rizki Mulia', 'CV. Sumber Rizki Mulia', '-', 'Jl. Arabika II Blok W5 No. 6 Pondok Kopi, Jakarta Timur', NULL, NULL, '<p>\n	Bahan Standar Uji<br />\n	Kesiapan Alat Uji<br />\n	Metode Uji<br />\n	Lama Waktu Uji<br />\n	Personil Penguji</p>\n', NULL, 7400, '2019-02-18'),
(24, '2019-02-19 04:35:03', NULL, NULL, NULL, '2019-03-10', NULL, 'PT. Indagro', 'PT. Indagro', '-', 'Jl. Raden Saleh No. 6, Jakarta', '021-31927414 / 021-31935667', 'M. Abizar', '<p>\n	Bahan Standar Uji<br />\n	Kesiapan Alat Uji<br />\n	Metode Uji<br />\n	Lama Waktu Uji<br />\n	Personil Penguji</p>\n', NULL, 500, '2019-02-19'),
(25, '2019-02-19 04:58:07', NULL, NULL, NULL, '2019-03-06', NULL, 'Kios Tani Jaya', 'Kios Tani Jaya', NULL, 'Jl. Satria Ujung Menteng Cakung, Jakarta Timur', '-', NULL, '<p>\n	Bahan Standar Uji<br />\n	Kesiapan Alat Uji<br />\n	Metode Uji<br />\n	Lama Waktu Uji<br />\n	Personil Penguji</p>\n', NULL, NULL, '2019-02-19'),
(26, '2019-02-19 08:03:30', NULL, NULL, NULL, '2019-02-27', NULL, 'Pusat Promosi dan Sertifikasi Hasil Pertanian', 'Pusat Promosi dan Sertifikasi Hasil Pertanian', NULL, 'Jl. Raya Jambore No. 1 Cibubur, Jakarta Timur', '02187752692', NULL, '<p>\n	Bahan Standar Uji<br />\n	Kesiapan Alat Uji<br />\n	Metode Uji<br />\n	Lama Waktu Uji<br />\n	Personil Penguji</p>\n', NULL, NULL, '2019-02-20'),
(27, '2019-02-19 10:14:39', NULL, NULL, NULL, '2019-03-27', NULL, 'Direktorat Jenderal Prasarana dan Sarana Pertanian', 'Direktorat Jenderal Prasarana dan Sarana Pertanian Cq. Pusat Perlindungan Varietas Tanaman dan Perizinan Pertanian (PT. BASF Indonesia)', '-', 'Jl. Harsono RM No. 3 Ragunan, Jakarta Selatan', NULL, 'Pratiwi', '<p>\n	Bahan Standar Uji<br />\n	Kesiapan Alat Uji<br />\n	Metode Uji<br />\n	Lama Waktu Uji<br />\n	Personil Penguji</p>\n', NULL, 1000, '2019-02-20'),
(28, '2019-02-20 08:37:20', NULL, NULL, NULL, '2019-03-13', NULL, 'CV. Marphilindo Abadi', 'CV. Marphilindo Abadi', '-', 'Jl. Arabika II Blok W5 No. 7 Kel. Pondok Kopi Duren Sawit, Jakarta Timur', '08111882399', 'Angelina E. Cantillo', '<p>\n	Bahan Standar Uji<br />\n	Kesiapan Alat Uji<br />\n	Metode Uji<br />\n	Lama Waktu Uji<br />\n	Personil Penguji</p>\n', NULL, 21000, '2019-02-21'),
(29, '2019-02-21 08:43:52', NULL, NULL, NULL, '2019-03-29', NULL, 'Pitri Andriyani', 'PT. Baasithu Boga Services', '3376045106860002', 'Jl. Raya Bogor KM 21,5 No. 10 Ciracas, Jakarta Timur', '081380220204', '081380220204', '<p>\n	Bahan Standar Uji<br />\n	Kesiapan Alat Uji<br />\n	Metode Uji<br />\n	Lama Waktu Uji<br />\n	Personil Penguji</p>\n', NULL, 5550, '2019-02-22'),
(30, '2019-02-22 07:27:27', NULL, NULL, NULL, '2019-03-13', NULL, 'IRT. Sari Murni Corporation', 'IRT. Sari Murni Corporation', NULL, 'Jl. Sunter Paradise Blok F22/24 Sunter Agung, Jakarta Utara', NULL, NULL, '<p>\n	Bahan Standar Uji<br />\n	Kesiapan Alat Uji<br />\n	Metode Uji<br />\n	Lama Waktu Uji<br />\n	Personil Penguji</p>\n', NULL, 10009, '2019-02-25'),
(31, '2019-02-23 04:25:29', NULL, NULL, NULL, '2019-03-13', NULL, 'UD. Dani', 'UD. Dani', NULL, 'Jl. Pasar Induk Kramat Jati Kelurahan Tengah Kecamatan Kramat Jati Kota Administrasi Jakarta Timur', '-', 'Dani', '<p>\n	Bahan Standar Uji<br />\n	Kesiapan Alat Uji<br />\n	Metode Uji<br />\n	Lama Waktu Uji<br />\n	Personil Penguji</p>\n', NULL, 10700, '2019-02-25'),
(32, '2019-02-25 05:33:44', NULL, NULL, NULL, '2019-03-25', NULL, 'CV. Delvin', 'CV. Delvin', NULL, 'Jl. Perumahan DDN F/01 RT.001/010 Kel.Sukadanau, Kec.Cikarang Barat, Kab. Bekasi', '-', 'Hero / 082112843899', '<p>\n	Bahan Standar Uji<br />\n	Kesiapan Alat Uji<br />\n	Metode Uji<br />\n	Lama Waktu Uji<br />\n	Personil Penguji</p>\n', NULL, 2000, '2019-02-25'),
(33, '2019-02-25 07:34:43', NULL, NULL, NULL, '2019-03-20', NULL, 'CV. Maha Nuur Abalya', 'CV. Maha Nuur Abalya', '-', 'Jl. Alianyang Gg. Kencana I No. 4 Pontianak, Kalimantan Barat', '-', 'Syahrul / 082254243311', '<p>\n	Bahan Standar Uji<br />\n	Kesiapan Alat Uji<br />\n	Metode Uji<br />\n	Lama Waktu Uji<br />\n	Personil Penguji</p>\n', NULL, 185, '2019-02-26'),
(34, '2019-02-26 07:09:55', NULL, NULL, NULL, '2019-03-05', NULL, 'Direktorat Jenderal Prasarana dan Sarana Pertanian Cq. Pusat Perlindungan Varietas Tanaman dan Periz', 'Direktorat Jenderal Prasarana dan Sarana Pertanian Cq. Pusat Perlindungan Varietas Tanaman dan Perizinan Pertanian (PT. Rainbow Agrosciences)', '-', 'Jl. Harsono RM No. 3 Ragunan, Jakarta Selatan', '-', NULL, '<p>\n	Bahan Standar Uji<br />\n	Kesiapan Alat Uji<br />\n	Metode Uji<br />\n	Lama Waktu Uji<br />\n	Personil Penguji</p>\n', NULL, 500, '2019-02-27'),
(35, '2019-02-27 01:11:59', NULL, NULL, NULL, '2019-03-08', NULL, 'PT. Delta Giri Wacana', 'PT. Delta Giri Wacana', '-', 'Kawasan Industri Jababeka Tahap 3 Blok B1C Desa Pasir Gombong, Kec. cikarang Kab. Bekasi', '-', NULL, '<p>\n	Bahan Standar Uji<br />\n	Kesiapan Alat Uji<br />\n	Metode Uji<br />\n	Lama Waktu Uji<br />\n	Personil Penguji</p>\n', NULL, 500, '2019-02-27'),
(36, '2019-02-27 07:51:27', NULL, NULL, NULL, '2019-03-31', NULL, 'PT. Lee Jaya Makmur', 'PT. Lee Jaya Makmur', '-', 'Jl. Yos Sudarso Gedung. Blok E No.9 Kav.46-48,Sungai Bambu, Tanjung Priok, Jakarta Utara', '-', NULL, '<p>\n	Bahan Standar Uji<br />\n	Kesiapan Alat Uji<br />\n	Metode Uji<br />\n	Lama Waktu Uji<br />\n	Personil Penguji</p>\n', NULL, 2800, '2019-02-28'),
(37, '2019-02-28 06:22:50', NULL, NULL, NULL, '2019-03-25', NULL, 'Dinas Ketahanan Pangan Provinsi Kalimantan Tengah', 'Dinas Ketahanan Pangan Provinsi Kalimantan Tengah', '-', 'Jl. Willem AS No. 9 Palangka Raya, Kalimantan Tengah', '0536-3220819', 'Ir. Gine.M.Si   /  081351957219', '<p>\n	Bahan Standar Uji<br />\n	Kesiapan Alat Uji<br />\n	Metode Uji<br />\n	Lama Waktu Uji<br />\n	Personil Penguji</p>\n', NULL, 2500, '2019-03-01'),
(38, '2019-03-01 04:16:02', NULL, NULL, NULL, '2019-03-12', NULL, 'PT. Metahelix Lifescinces Indonesia', 'PT. Metahelix Lifescinces Indonesia', '-', 'Jl. Veteran 1 No. 2-5 Gambir, Jakarta Pusat', NULL, NULL, '<p>\n	Bahan Standar Uji<br />\n	Kesiapan Alat Uji<br />\n	Metode Uji<br />\n	Lama Waktu Uji<br />\n	Personil Penguji</p>\n', NULL, 15, '2019-03-04'),
(39, '2019-03-01 04:26:07', NULL, NULL, NULL, '2019-03-12', NULL, 'PT. Hextar Seed indonesia', 'PT. Hextar Seed indonesia', '-', 'Jl. Agung Perasa 10, Rukan Sunter Permai Blok B17 Sunter Agung, Jakarta Utara', '-', NULL, '<p>\n	Bahan Standar Uji<br />\n	Kesiapan Alat Uji<br />\n	Metode Uji<br />\n	Lama Waktu Uji<br />\n	Personil Penguji</p>\n', NULL, 30, '2019-03-04'),
(40, '2019-03-01 06:50:29', NULL, NULL, NULL, '2019-03-06', NULL, 'Pusat Produksi, Inspeksi dan Sertifikasi Hasil Perikanan', 'Pusat Produksi, Inspeksi dan Sertifikasi Hasil Perikanan', '-', 'Jl. Pluit Permai No. 1, Jakarta Utara', '0216684224/6692291', 'Kurnianto / 081218935975', '<p>\n	Bahan Standar Uji<br />\n	Kesiapan Alat Uji<br />\n	Metode Uji<br />\n	Lama Waktu Uji<br />\n	Personil Penguji</p>\n', NULL, NULL, '2019-03-04'),
(41, '2019-03-04 06:13:06', NULL, NULL, NULL, '2019-03-14', NULL, 'Kelompok Wanita Tani Teratai', 'Kelompok Wanita Tani Teratai', '-', 'Jl. Kebon Kelapa No.5 RT. 008/012 Utan Kayu Selatan, Jakarta Timur', '0218566583', 'Endang Larasati / 081311855474', '<p>\n	Bahan Standar Uji<br />\n	Kesiapan Alat Uji<br />\n	Metode Uji<br />\n	Lama Waktu Uji<br />\n	Personil Penguji</p>\n', NULL, 540, '2019-03-04'),
(42, '2019-03-05 06:29:27', NULL, NULL, NULL, '2019-03-13', NULL, 'PT. Metahelix Lifescinces Indonesia', 'PT. Metahelix Lifescinces Indonesia', '-', 'Jl. Batu Tulis Raya No 17 PAV Kel. Kebon Kelapa Gambir Jak-Pusat', '0213843284', '-', '<p>\n	Bahan Standar Uji<br />\n	Kesiapan Alat Uji<br />\n	Metode Uji<br />\n	Lama Waktu Uji<br />\n	Personil Penguji</p>\n', NULL, 15, '2019-03-06'),
(44, '2019-03-06 00:56:20', NULL, NULL, NULL, '2019-04-10', NULL, 'Bidang Ketahanan Pangan Dinas Ketahanan Pangan, Kelautan dan Pertanian', 'Bidang Ketahanan Pangan Dinas Ketahanan Pangan, Kelautan dan Pertanian', '-', 'Jl. Gunung Sahari Raya No. 11, Jakarta Pusat', '-', '-', '<p>\n	Bahan Standar Uji<br />\n	Kesiapan Alat Uji<br />\n	Metode Uji<br />\n	Lama Waktu Uji<br />\n	Personil Penguji</p>\n', NULL, NULL, '2019-03-06'),
(45, '2019-03-06 03:28:59', NULL, NULL, NULL, '2019-03-31', NULL, 'PT. Aneka Boga Citra ', 'PT. Aneka Boga Citra ', '-', 'Menara Imperium Lt. 17 Jl. HR. Rasuna Said  Kuningan, Jakarta Selatan', '02182460079', 'Maria / 085782799384', '<p>\n	Bahan Standar Uji<br />\n	Kesiapan Alat Uji<br />\n	Metode Uji<br />\n	Lama Waktu Uji<br />\n	Personil Penguji</p>\n', NULL, 3830, '2019-03-06'),
(46, '2019-03-06 03:46:33', NULL, NULL, NULL, '2019-03-31', NULL, 'PT. Aneka Boga Citra ', 'PT. Aneka Boga Citra', '-', 'Menara Imperium Lt. 17 Jl. HR. Rasuna Said  Kuningan, Jakarta Selatan', '02182460079', 'Maria / 085782799384', '<p>\n	Bahan Standar Uji<br />\n	Kesiapan Alat Uji<br />\n	Metode Uji<br />\n	Lama Waktu Uji<br />\n	Personil Penguji</p>\n', NULL, 575, '2019-03-06'),
(47, '2019-03-08 02:46:40', NULL, NULL, NULL, '2019-03-31', NULL, 'PT. Agro Sentosa Raya', 'PT. Agro Sentosa Raya', '-', 'Jl. Wakil Sandi Kp. Kedep RT. 001/021 Ds.Tlajung Udik Kec. Gn. Putri Kab. Bogor', '02186863048-50 / 021 86863053', 'Muhamad Jalaludin / 081281583527', '<p>\n	Bahan Standar Uji<br />\n	Kesiapan Alat Uji<br />\n	Metode Uji<br />\n	Lama Waktu Uji<br />\n	Personil Penguji</p>\n', NULL, 1000, '2019-03-08'),
(50, '2019-03-08 07:47:48', NULL, NULL, NULL, '2019-04-10', NULL, 'Direktorat Jenderal Prasarana dan Sarana Pertanian Cq. Pusat Perlindungan Varietas Tanaman dan Periz', 'Direktorat Jenderal Prasarana dan Sarana Pertanian Cq. Pusat Perlindungan Varietas Tanaman dan Perizinan Pertanian (PT. Rainbow Agrosciences)', '-', 'Jl. Harsono RM No. 3 Ragunan, Jakarta Selatan', '-', 'Siti Umayah', '<p>\n	Bahan Standar Uji<br />\n	Kesiapan Alat Uji<br />\n	Metode Uji<br />\n	Lama Waktu Uji<br />\n	Personil Penguji</p>\n', NULL, 1000, '2019-03-11'),
(51, '2019-03-11 06:20:26', NULL, NULL, NULL, '2019-03-31', NULL, 'PT. Indospirit Natura', 'PT. Indospirit Natura', NULL, 'KoKomplek Graha Mas Blok A 3A-7, Jl. Raya Perjuangan Kebon Jeruk, Jakarta Barat', '-', 'Nia Puji Hastuti', '<p>\n	Bahan Standar Uji<br />\n	Kesiapan Alat Uji<br />\n	Metode Uji<br />\n	Lama Waktu Uji<br />\n	Personil Penguji</p>\n', NULL, 1000, '2019-03-11'),
(52, '2019-03-14 03:54:50', NULL, NULL, NULL, NULL, NULL, 'Bidang Pertanian ', 'Dinas Ketahanan Pangan Kelautan dan Pertanian', NULL, 'Jl. Gunung Sahari No 11 Jakarta Pusat', '-', 'Iwan Indriyanto', '<p>\n	Bahan Standar Uji<br />\n	Kesiapan Alat Uji<br />\n	Metode Uji<br />\n	Lama Waktu Uji<br />\n	Personil Penguji</p>\n', NULL, NULL, '2019-03-14'),
(55, '2019-03-14 07:59:41', NULL, NULL, NULL, '2019-04-11', NULL, 'Direktorat Jenderal Prasarana dan Sarana Pertanian Cq. Pusat Perlindungan Varietas Tanaman dan Periz', 'Direktorat Jenderal Prasarana dan Sarana Pertanian Cq. Pusat Perlindungan Varietas Tanaman dan Perizinan Pertanian (PT. Rainbow Agrosciences)', NULL, 'Jl. Harsono RM No. 3 Ragunan, Jakarta Selatan', '081319270905', 'Siti Umayah', '<p>\n	Bahan Standar Uji<br />\n	Kesiapan Alat Uji<br />\n	Metode Uji<br />\n	Lama Waktu Uji<br />\n	Personil Penguji</p>\n', NULL, 1000, '2019-03-15'),
(56, '2019-03-14 08:21:24', NULL, NULL, NULL, '2019-04-11', NULL, 'Direktorat Jenderal Prasarana dan Sarana Pertanian Cq. Pusat Perlindungan Varietas Tanaman dan Periz', 'Direktorat Jenderal Prasarana dan Sarana Pertanian Cq. Pusat Perlindungan Varietas Tanaman dan Perizinan Pertanian (PT. BASF Indonesia)', NULL, 'Jl. Harsono RM No. 3 Ragunan, Jakarta Selatan', NULL, 'Pratiwi', '<p>\n	Bahan Standar Uji<br />\n	Kesiapan Alat Uji<br />\n	Metode Uji<br />\n	Lama Waktu Uji<br />\n	Personil Penguji</p>\n', NULL, 1000, '2019-03-15'),
(57, '2019-03-15 03:59:16', NULL, NULL, NULL, '2019-04-21', NULL, 'Direktorat Jenderal Prasarana dan Sarana Pertanian Cq. Pusat Perlindungan Varietas Tanaman dan Periz', 'Direktorat Jenderal Prasarana dan Sarana Pertanian Cq. Pusat Perlindungan Varietas Tanaman dan Perizinan Pertanian (PT. Rainbow Agrosciences)', NULL, 'Jl. Harsono RM No. 3 Ragunan, Jakarta Selatan', '081319270905', 'Siti Umayah', '<p>\n	Bahan Standar Uji<br />\n	Kesiapan Alat Uji<br />\n	Metode Uji<br />\n	Lama Waktu Uji<br />\n	Personil Penguji</p>\n', NULL, 2500, '2019-03-15'),
(58, '2019-03-15 07:17:37', NULL, NULL, NULL, '2019-03-31', NULL, 'Pusat Pengembangan Benih dan Proteksi Tanaman', 'Pusat Pengembangan Benih dan Proteksi Tanaman', '-', 'Jl. Harsono RM No. 1 Ragunan, Jakarta Selatan', '-', '-', '<p>\n	Bahan Standar Uji<br />\n	Kesiapan Alat Uji<br />\n	Metode Uji<br />\n	Lama Waktu Uji<br />\n	Personil Penguji</p>\n', NULL, NULL, '2019-03-15'),
(59, '2019-03-15 08:24:58', NULL, NULL, NULL, '2019-04-10', NULL, 'PT. Winon International', 'PT. Winon International', NULL, 'Jl. Pinangsia Timur No. 2 R, Jakarta', NULL, NULL, '<p>\n	Bahan Standar Uji<br />\n	Kesiapan Alat Uji<br />\n	Metode Uji<br />\n	Lama Waktu Uji<br />\n	Personil Penguji</p>\n', NULL, 15, '2019-03-18');

-- --------------------------------------------------------

--
-- Table structure for table `permohonan_detail`
--

CREATE TABLE IF NOT EXISTS `permohonan_detail` (
`id_permohonan_detail` int(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `id_permohonan` int(11) DEFAULT NULL,
  `komoditas` varchar(100) DEFAULT NULL,
  `varietas` varchar(200) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `satuan` int(11) DEFAULT NULL,
  `kemasan` int(11) DEFAULT NULL,
  `kondisi` int(11) DEFAULT NULL,
  `keterangan` text,
  `pengujian` varchar(100) DEFAULT NULL,
  `metode` varchar(100) DEFAULT NULL,
  `nomor_contoh` varchar(11) DEFAULT NULL,
  `id_kodelab` varchar(11) DEFAULT NULL,
  `nomor_kodelab` varchar(15) DEFAULT NULL,
  `laporan` int(11) DEFAULT NULL,
  `ket_kondisi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=303 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `permohonan_detail`
--

INSERT INTO `permohonan_detail` (`id_permohonan_detail`, `created_at`, `created_by`, `updated_at`, `updated_by`, `id_permohonan`, `komoditas`, `varietas`, `jumlah`, `satuan`, `kemasan`, `kondisi`, `keterangan`, `pengujian`, `metode`, `nomor_contoh`, `id_kodelab`, `nomor_kodelab`, `laporan`, `ket_kondisi`) VALUES
(1, '2019-02-01 10:04:08', NULL, NULL, NULL, 1, '', '', 0, 0, 0, 0, ' ', NULL, NULL, '009/02/2019', NULL, NULL, NULL, ''),
(2, '2019-02-01 10:07:45', NULL, NULL, NULL, 2, 'Olahan', 'susu', 100, 3, 11, 3, ' ', NULL, NULL, '010/02/2019', NULL, NULL, NULL, ''),
(3, '2019-02-01 10:07:46', NULL, NULL, NULL, 3, 'Olahan', 'susu', 100, 3, 11, 3, ' ', NULL, NULL, '011/02/2019', NULL, NULL, NULL, ''),
(5, '2019-02-04 08:08:13', NULL, NULL, NULL, 5, 'Olahan', 'Beras Ketan Hitam Organik (3)', 500, 1, 4, 3, ' ', NULL, NULL, '088/02/2019', NULL, NULL, NULL, ''),
(6, '2019-02-04 08:08:14', NULL, NULL, NULL, 5, 'Olahan', 'Kacang Kedelai Hitam (9)', 1000, 1, 4, 3, ' ', NULL, NULL, '089/02/2019', NULL, NULL, NULL, ''),
(7, '2019-02-04 08:08:15', NULL, NULL, NULL, 5, 'Olahan', 'Kacang Merah (11)', 500, 1, 4, 3, ' ', NULL, NULL, '090/02/2019', NULL, NULL, NULL, ''),
(11, '2019-02-04 09:22:24', NULL, NULL, NULL, 4, 'Benih', 'Jagung Hibrida/P35 (096H HMAF INHH 078)', 1, 3, 4, 3, ' ', NULL, NULL, '087/02/2019', NULL, NULL, NULL, ''),
(13, '2019-02-09 01:39:37', NULL, NULL, NULL, 8, 'Buah-buahan', 'Melon Golden', 1400, 1, 4, 3, ' ', NULL, NULL, '091/02/2019', NULL, NULL, NULL, ''),
(14, '2019-02-08 06:19:50', NULL, NULL, NULL, 9, 'Sayuran', 'Cabe Merah Keriting (Ruslina) Lenteng Agung (SPD-027)', 250, 1, 4, 3, ' Golongan Organofosfat', NULL, NULL, '092/02/2019', NULL, NULL, NULL, 'ada yang busuk'),
(15, '2019-02-11 03:57:31', NULL, NULL, NULL, 10, 'Olahan', 'Skim Milk No. Batch WCB8210001', 380, 1, 5, 3, ' ', NULL, NULL, '094/2/2019', NULL, NULL, NULL, ''),
(16, '2019-02-11 04:04:02', NULL, NULL, NULL, 10, 'Olahan', 'Skim Milk No. Batch 413711', 500, 1, 5, 3, ' ', NULL, NULL, '095/2/2019', NULL, NULL, NULL, ''),
(17, '2019-02-11 04:04:02', NULL, NULL, NULL, 10, 'Olahan', 'Whey Powder No. Batch 4604108186H50', 280, 1, 5, 3, ' ', NULL, NULL, '096/2/2019', NULL, NULL, NULL, ''),
(18, '2019-02-11 04:04:02', NULL, NULL, NULL, 10, 'Olahan', 'NDC Cocof No. Batch 2710202001-27100202009', 200, 1, 5, 3, ' ', NULL, NULL, '097/2/2019', NULL, NULL, NULL, ''),
(19, '2019-02-11 04:45:31', NULL, NULL, NULL, 11, 'Olahan', 'Sugar R1 Komposit Lot A1.19.12.20', 340, 1, 5, 3, ' ', NULL, NULL, '098/2/2019', NULL, NULL, NULL, ''),
(20, '2019-02-11 04:45:32', NULL, NULL, NULL, 11, 'Olahan', 'Sugar R1 Komposit Lot A2.22.12.18', 560, 1, 5, 3, ' ', NULL, NULL, '099/2/2019', NULL, NULL, NULL, ''),
(21, '2019-02-11 04:45:32', NULL, NULL, NULL, 11, 'Olahan', 'Sugar R1 Komposit Lot B1.21.12.18', 280, 1, 5, 3, ' ', NULL, NULL, '100/2/2019', NULL, NULL, NULL, ''),
(22, '2019-02-11 04:45:32', NULL, NULL, NULL, 11, 'Olahan', 'Sugar R1 Komposit Lot 190114', 420, 1, 5, 3, ' ', NULL, NULL, '101/2/2019', NULL, NULL, NULL, ''),
(23, '2019-02-11 04:45:32', NULL, NULL, NULL, 11, 'Olahan', 'Sugar R1 Komposit Lot 190116', 400, 1, 5, 3, ' ', NULL, NULL, '102/2/2019', NULL, NULL, NULL, ''),
(24, '2019-02-11 04:45:32', NULL, NULL, NULL, 11, 'Olahan', 'Sugar R1 Komposit Lot 190120', 360, 1, 5, 3, ' ', NULL, NULL, '103/2/2019', NULL, NULL, NULL, ''),
(25, '2019-02-11 04:45:33', NULL, NULL, NULL, 11, 'Olahan', 'Sugar R1 Komposit Lot 190123', 400, 1, 5, 3, ' ', NULL, NULL, '104/2/2019', NULL, NULL, NULL, ''),
(26, '2019-02-11 04:45:33', NULL, NULL, NULL, 11, 'Olahan', 'Sugar R1 Komposit Lot 190124', 420, 1, 5, 3, ' ', NULL, NULL, '105/2/2019', NULL, NULL, NULL, ''),
(27, '2019-02-11 04:45:33', NULL, NULL, NULL, 11, 'Olahan', 'Sugar R1 Komposit Lot A2.26.01.19', 280, 1, 5, 3, ' ', NULL, NULL, '106/2/2019', NULL, NULL, NULL, ''),
(28, '2019-02-11 04:45:33', NULL, NULL, NULL, 11, 'Olahan', 'E-0801-01 No. Batch 00000068440', 300, 1, 5, 3, ' ', NULL, NULL, '107/2/2019', NULL, NULL, NULL, ''),
(29, '2019-02-11 04:45:33', NULL, NULL, NULL, 11, 'Olahan', 'E-0801-01 No. Batch 00000068441', 320, 1, 5, 3, ' ', NULL, NULL, '108/2/2019', NULL, NULL, NULL, ''),
(30, '2019-02-11 04:45:33', NULL, NULL, NULL, 11, 'Olahan', 'E-0801-01 No. Batch 00000068815', 300, 1, 5, 3, ' ', NULL, NULL, '109/2/2019', NULL, NULL, NULL, ''),
(31, '2019-02-11 04:45:34', NULL, NULL, NULL, 11, 'Olahan', 'Kopi Instan Ex Esco No. Batch 9006', 300, 1, 5, 3, ' ', NULL, NULL, '110/2/2019', NULL, NULL, NULL, ''),
(32, '2019-02-11 04:45:34', NULL, NULL, NULL, 11, 'Olahan', 'NDC SUZHOU JIAHE No. Batch JH18424', 300, 1, 5, 3, ' ', NULL, NULL, '111/2/2019', NULL, NULL, NULL, ''),
(33, '2019-02-11 04:45:34', NULL, NULL, NULL, 11, 'Olahan', 'Kacang Hijau Powder No. Batch BKH-2019', 220, 1, 5, 3, ' ', NULL, NULL, '112/2/2019', NULL, NULL, NULL, ''),
(34, '2019-02-11 04:45:34', NULL, NULL, NULL, 11, 'Olahan', 'Goat Milk No. Batch 18FG10191', 280, 1, 5, 3, ' ', NULL, NULL, '113/2/2019', NULL, NULL, NULL, ''),
(41, '2019-02-11 05:03:59', NULL, NULL, NULL, 11, 'Olahan', 'Kopi Jahe 41 Komposit Lot 110121 (MC 1,3,6-8)', 460, 1, 5, 3, ' ', NULL, NULL, '120/2/2019', NULL, NULL, NULL, ''),
(42, '2019-02-11 05:03:59', NULL, NULL, NULL, 11, 'Olahan', 'Susu Jahe Kacang Hijau 41 Komposit Lot 230121 (MC 1,3,6,7,9)', 240, 1, 5, 3, ' ', NULL, NULL, '121/2/2019', NULL, NULL, NULL, ''),
(43, '2019-02-11 05:04:00', NULL, NULL, NULL, 11, 'Olahan', 'Susu Jahe 41 Komposit Lot 290121 (MC 1,3,6-8)', 250, 1, 5, 3, ' ', NULL, NULL, '122/2/2019', NULL, NULL, NULL, ''),
(44, '2019-02-11 06:35:35', NULL, NULL, NULL, 12, 'Buah-buahan', 'Rock Melon', 3200, 1, 4, 3, ' ', NULL, NULL, '123/2/2019', NULL, NULL, NULL, ''),
(45, '2019-02-11 07:23:26', NULL, NULL, NULL, 13, 'Sayuran', 'Caisim (SP-PPSHP-004)', 250, 1, 4, 3, ' ', NULL, NULL, '124/2/2019', NULL, NULL, NULL, ''),
(46, '2019-02-12 02:42:13', NULL, NULL, NULL, 14, 'Buah-buahan', 'Anggur Hitam (SP-PPSHP-004)', 1000, 1, 4, 3, ' Gol. Organoklor, Gol. Organofosfat, Gol. Piretroid, Gol. Karbamat, Mikrobiologi', NULL, NULL, '125/2/2019', NULL, NULL, NULL, ''),
(59, '2019-02-12 04:53:38', NULL, NULL, NULL, 14, 'Buah-buahan', 'Anggur Hijau (SP-PPSHP-005)', 1000, 1, 4, 3, ' Gol. Organoklor, Gol. Organofosfat, Gol. Piretroid, Gol. Karbamat, Mikrobiologi', NULL, NULL, '138/2/2019', NULL, NULL, NULL, ''),
(60, '2019-02-12 04:53:39', NULL, NULL, NULL, 14, 'Buah-buahan', 'Jeruk Manohara (SP-PPSHP-006)', 1000, 1, 4, 3, ' Gol. Organoklor, Gol. Organofosfat, Gol. Piretroid, Gol. Karbamat, Mikrobiologi', NULL, NULL, '139/2/2019', NULL, NULL, NULL, ''),
(61, '2019-02-12 04:53:40', NULL, NULL, NULL, 14, 'Buah-buahan', 'Pear Xiang Lie (SP-PPSHP-007)', 1800, 1, 4, 3, ' Gol. Organoklor, Gol. Organofosfat, Gol. Piretroid, Gol. Karbamat, Mikrobiologi', NULL, NULL, '140/2/2019', NULL, NULL, NULL, ''),
(62, '2019-02-12 04:53:41', NULL, NULL, NULL, 14, 'Sayuran', 'Cabe Merah Keriting (SP-PPSHP-008)', 500, 1, 4, 3, ' Gol. Organofosfat, Gol. Piretroid, Gol. Karbamat, Mikrobiologi', NULL, NULL, '141/2/2019', NULL, NULL, NULL, ''),
(63, '2019-02-12 04:53:42', NULL, NULL, NULL, 14, 'Sayuran', 'Cabe Rawit Merah (SP-PPSHP-009)', 250, 1, 4, 3, ' Gol. Organofosfat, Gol. Piretroid, Gol. Karbamat, Mikrobiologi', NULL, NULL, '142/2/2019', NULL, NULL, NULL, ''),
(64, '2019-02-12 04:53:44', NULL, NULL, NULL, 14, 'Sayuran', 'Cabe Rawit Hijau (SP-PPSHP-010)', 250, 1, 4, 3, ' Gol. Organofosfat, Gol. Piretroid, Gol. Karbamat, Mikrobiologi', NULL, NULL, '143/2/2019', NULL, NULL, NULL, ''),
(65, '2019-02-12 07:31:51', NULL, NULL, NULL, 15, 'Buah-buahan', 'Anggur Hitam (SP-PPSHP-004)', 1000, 1, 4, 3, ' ', NULL, NULL, '117/02/2019', NULL, NULL, NULL, ''),
(66, '2019-02-12 07:31:52', NULL, NULL, NULL, 15, 'Buah-buahan', 'Anggur Hijau (SP-PPSHP-005)', 1000, 1, 4, 3, ' ', NULL, NULL, '118/02/2019', NULL, NULL, NULL, ''),
(67, '2019-02-12 07:33:44', NULL, NULL, NULL, 15, 'Buah-buahan', 'Jeruk Manohara (SP-PPSHP-006)', 1000, 1, 4, 3, ' ', NULL, NULL, '119/02/2019', NULL, NULL, NULL, ''),
(68, '2019-02-12 07:38:26', NULL, NULL, NULL, 15, 'Buah-buahan', 'Pear Xiang Lie (SP-PPSHP-007)', 1800, 1, 4, 3, ' ', NULL, NULL, '120/02/2019', NULL, NULL, NULL, ''),
(69, '2019-02-12 07:38:27', NULL, NULL, NULL, 15, 'Sayuran', 'Cabe Merah Keriting (SP-PPSHP-008)', 500, 1, 4, 3, ' ', NULL, NULL, '121/02/2019', NULL, NULL, NULL, ''),
(70, '2019-02-12 07:38:28', NULL, NULL, NULL, 15, 'Sayuran', 'Cabe Rawit Merah (SP-PPSHP-009)', 250, 1, 4, 3, ' ', NULL, NULL, '122/02/2019', NULL, NULL, NULL, ''),
(74, '2019-02-12 07:49:32', NULL, NULL, NULL, 15, 'Sayuran', 'Cabe Rawit Hijau (SP-PPSHP-010)', 250, 1, 4, 3, ' ', NULL, NULL, '123/02/2019', NULL, NULL, NULL, ''),
(75, '2019-02-12 07:49:33', NULL, NULL, NULL, 15, 'Sayuran', 'Kol (SP-PPSHP-011)', 1000, 1, 4, 3, ' ', NULL, NULL, '124/02/2019', NULL, NULL, NULL, ''),
(76, '2019-02-12 07:49:34', NULL, NULL, NULL, 15, 'Sayuran', 'Caisim (SP-PPSHP-012)', 400, 1, 4, 3, ' ', NULL, NULL, '125/02/2019', NULL, NULL, NULL, ''),
(77, '2019-02-12 07:49:36', NULL, NULL, NULL, 15, 'Sayuran', 'Bawang Daun (SP-PPSHP-013)', 250, 1, 4, 3, ' ', NULL, NULL, '126/02/2019', NULL, NULL, NULL, ''),
(78, '2019-02-12 07:58:32', NULL, NULL, NULL, 16, 'Sayuran', 'Seledri (SP-PPSHP-014)', 150, 1, 4, 3, ' ', NULL, NULL, '127/02/2019', NULL, NULL, NULL, ''),
(79, '2019-02-12 07:58:33', NULL, NULL, NULL, 16, 'Sayuran', ' Kangkung (SP-PPSHP-015)', 800, 1, 4, 3, ' ', NULL, NULL, '128/02/2019', NULL, NULL, NULL, ''),
(80, '2019-02-12 07:58:34', NULL, NULL, NULL, 16, 'Sayuran', 'Kacang Panjang (SP-PPSHP-016)', 600, 1, 4, 3, ' ', NULL, NULL, '129/02/2019', NULL, NULL, NULL, ''),
(81, '2019-02-12 07:58:35', NULL, NULL, NULL, 16, 'Sayuran', 'Brokoli (SP-PPSHP-017)', 800, 1, 4, 3, ' ', NULL, NULL, '130/02/2019', NULL, NULL, NULL, ''),
(82, '2019-02-12 07:58:36', NULL, NULL, NULL, 16, 'Sayuran', 'Bawang Merah (SP-PPSHP-018)', 1000, 1, 4, 3, ' ', NULL, NULL, '131/02/2019', NULL, NULL, NULL, ''),
(83, '2019-02-12 07:58:37', NULL, NULL, NULL, 16, 'Sayuran', 'Kentang (Sp-PPSHP-019)', 1000, 1, 4, 3, ' ', NULL, NULL, '132/02/2019', NULL, NULL, NULL, ''),
(84, '2019-02-13 01:12:32', NULL, NULL, NULL, 17, 'Benih', 'Jagung Hibrida/DMI-1 Female', 1000, 1, 4, 3, ' ', NULL, NULL, '133/02/2019', NULL, NULL, NULL, ''),
(86, '2019-02-13 01:15:05', NULL, NULL, NULL, 17, 'Benih', 'Jagung Hibrida/DMI-2 (Male)', 1000, 1, 4, 3, ' ', NULL, NULL, '134/02/2019', NULL, NULL, NULL, ''),
(87, '2019-02-13 01:50:14', NULL, NULL, NULL, 18, 'Sayuran', 'Kacang Panjang (SS-01)', 2100, 1, 5, 3, ' ', NULL, NULL, '135/02/2019', NULL, NULL, NULL, ''),
(88, '2019-02-13 01:50:15', NULL, NULL, NULL, 18, 'Sayuran', 'Bawang Daun (SS-02)', 2100, 1, 5, 3, ' ', NULL, NULL, '136/02/2019', NULL, NULL, NULL, ''),
(89, '2019-02-13 01:50:15', NULL, NULL, NULL, 18, 'Sayuran', 'Bayam Cabut (SS-03)', 2000, 1, 5, 3, ' ', NULL, NULL, '137/02/2019', NULL, NULL, NULL, ''),
(90, '2019-02-13 01:50:16', NULL, NULL, NULL, 18, 'Sayuran', 'Cabe Rawit (SS-04)', 2000, 1, 5, 3, ' ', NULL, NULL, '138/02/2019', NULL, NULL, NULL, ''),
(91, '2019-02-13 01:50:17', NULL, NULL, NULL, 18, 'Sayuran', 'Tomat (SS-05)', 2000, 1, 5, 3, ' ', NULL, NULL, '139/02/2019', NULL, NULL, NULL, ''),
(92, '2019-02-13 01:50:17', NULL, NULL, NULL, 18, 'Sayuran', 'Sawi (SS-06)', 2000, 1, 5, 3, ' ', NULL, NULL, '140/02/2019', NULL, NULL, NULL, ''),
(93, '2019-02-13 01:50:18', NULL, NULL, NULL, 18, 'Sayuran', 'Nenas (SS-07)', 2000, 1, 5, 3, ' ', NULL, NULL, '141/02/2019', NULL, NULL, NULL, ''),
(94, '2019-02-13 01:56:12', NULL, NULL, NULL, 19, 'Sayuran', 'Kacang Panjang (SS-01)', 2000, 1, 5, 3, ' ', NULL, NULL, '000/02/2019', NULL, NULL, NULL, ''),
(95, '2019-02-13 01:56:12', NULL, NULL, NULL, 19, 'Sayuran', 'Bawang Daun (SS-02)', 2000, 1, 5, 3, ' ', NULL, NULL, '000/02/2019', NULL, NULL, NULL, ''),
(96, '2019-02-13 04:28:10', NULL, NULL, NULL, 20, 'Benih', 'Broccoli/Lucky (1281710)', 25, 1, 5, 3, ' ', NULL, NULL, '142/02/2019', NULL, NULL, NULL, ''),
(97, '2019-02-15 02:37:27', NULL, NULL, NULL, 21, 'Olahan', 'Beras (SI Cantiek Setra Ramos) (01/SY/02/2019)', 1000, 1, 4, 3, ' ', NULL, NULL, '143/02/2019', NULL, NULL, NULL, ''),
(98, '2019-02-15 05:03:32', NULL, NULL, NULL, 21, 'Olahan', 'Beras (SI Cantiek Lele Super) (02/SY/02/2019)', 1000, 1, 4, 3, ' ', NULL, NULL, '144/02/2019', NULL, NULL, NULL, ''),
(99, '2019-02-15 05:03:32', NULL, NULL, NULL, 21, 'Olahan', 'Beras (SI Cantiek Pandan Wangi) (03/SY/02/2019)', 1000, 1, 4, 3, ' ', NULL, NULL, '145/02/2019', NULL, NULL, NULL, ''),
(100, '2019-02-15 09:02:53', NULL, NULL, NULL, 22, 'Olahan', 'Basil (Daun Kemangi) (01/SRM/02/2019)', 100, 1, 13, 3, ' ', NULL, NULL, '146/02/2019', NULL, NULL, NULL, ''),
(101, '2019-02-15 09:02:53', NULL, NULL, NULL, 22, 'Olahan', 'Cinamon (Kayu Manis Bubuk) (02/SRM/02/2019)', 100, 1, 13, 3, ' ', NULL, NULL, '147/02/2019', NULL, NULL, NULL, ''),
(102, '2019-02-15 09:02:54', NULL, NULL, NULL, 22, 'Olahan', 'Coarse Black Pepper Ground (Lada Hitam) (03/SRM/02/2019)', 100, 1, 13, 3, ' ', NULL, NULL, '148/02/2019', NULL, NULL, NULL, ''),
(103, '2019-02-15 09:17:46', NULL, NULL, NULL, 22, 'Olahan', 'Coriander (Ketumbar Bubuk) (04/SRM/02/2019)', 100, 1, 13, 3, ' ', NULL, NULL, '149/02/2019', NULL, NULL, NULL, ''),
(104, '2019-02-15 09:17:46', NULL, NULL, NULL, 22, 'Olahan', 'Ginger Spice (Jahe Bubuk) (05/SRM/02/2019)', 100, 1, 13, 3, ' ', NULL, NULL, '150/02/2019', NULL, NULL, NULL, ''),
(105, '2019-02-15 09:17:47', NULL, NULL, NULL, 22, 'Olahan', 'Oregano Leaves (Daun Oregano) (06/SRM/02/2019)', 100, 1, 13, 3, ' ', NULL, NULL, '151/02/2019', NULL, NULL, NULL, ''),
(106, '2019-02-15 09:17:47', NULL, NULL, NULL, 22, 'Olahan', 'Cumin Ground (Jinten Bubuk) (07/SRM/02/2019)', 100, 1, 13, 3, ' ', NULL, NULL, '152/02/2019', NULL, NULL, NULL, ''),
(107, '2019-02-15 09:17:47', NULL, NULL, NULL, 22, 'Olahan', 'Parsley Flakes (Peterseli) (08/SRM/02/2019)', 100, 1, 13, 3, ' ', NULL, NULL, '153/02/2019', NULL, NULL, NULL, ''),
(108, '2019-02-15 09:17:47', NULL, NULL, NULL, 22, 'Olahan', 'Rosemary Leaves (Daun Rosemary) (09/SRM/02/2019)', 100, 1, 13, 3, ' ', NULL, NULL, '154/02/2019', NULL, NULL, NULL, ''),
(109, '2019-02-15 09:17:47', NULL, NULL, NULL, 22, 'Olahan', 'Sweet Paprika (Paprika Bubuk) (10/SRM/02/2019)', 100, 1, 13, 3, ' ', NULL, NULL, '155/02/2019', NULL, NULL, NULL, ''),
(110, '2019-02-15 09:17:48', NULL, NULL, NULL, 22, 'Olahan', 'Turmeric Ground (Kunyit Bubuk) (11/SRM/02/2019)', 100, 1, 13, 3, ' ', NULL, NULL, '156/02/2019', NULL, NULL, NULL, ''),
(111, '2019-02-15 09:17:48', NULL, NULL, NULL, 22, 'Olahan', 'White Pepper Ground (Lada Putih Bubuk) (12/SRM/02/2019)', 100, 1, 13, 3, ' ', NULL, NULL, '157/02/2019', NULL, NULL, NULL, ''),
(112, '2019-02-15 09:41:19', NULL, NULL, NULL, 23, 'Olahan', 'padi', 100, 1, 4, 3, ' ', NULL, NULL, '000/02/2019', NULL, NULL, NULL, ''),
(113, '2019-02-15 09:41:20', NULL, NULL, NULL, 23, 'Sayuran', 'Kangkung', 250, 1, 4, 3, ' ', NULL, NULL, '000/02/2019', NULL, NULL, NULL, ''),
(114, '2019-02-19 04:35:03', NULL, NULL, NULL, 24, 'Formulasi Pestisida', 'Dimetomorf', 100, 1, 5, 3, ' ', NULL, NULL, '158/02/2019', NULL, NULL, NULL, ''),
(115, '2019-02-19 04:58:07', NULL, NULL, NULL, 25, 'Benih', 'Jagung Manis/Satire (SP-PPSHP-020)', 150, 1, 4, 3, ' ', NULL, NULL, '159/02/2019', NULL, NULL, NULL, ''),
(116, '2019-02-19 04:58:08', NULL, NULL, NULL, 25, 'Benih', 'Bayam Hijau (SP-PPSHP-021)', 150, 1, 4, 3, ' ', NULL, NULL, '160/02/2019', NULL, NULL, NULL, ''),
(117, '2019-02-19 08:03:30', NULL, NULL, NULL, 26, 'Oahan', 'Keripik Pisang Sale (SP-PPSHP-022)', 200, 1, 4, 3, ' ', NULL, NULL, '161/02/2019', NULL, NULL, NULL, ''),
(118, '2019-02-19 08:03:30', NULL, NULL, NULL, 26, 'Olahan', 'Kripik Sukun Snack (SP-PPSHP-023)', 350, 1, 4, 3, ' ', NULL, NULL, '162/02/2019', NULL, NULL, NULL, ''),
(119, '2019-02-19 08:03:31', NULL, NULL, NULL, 26, 'Olahan', 'Kripik Sukun Jahra (Sp-PPSHP-024)', 150, 1, 4, 3, ' ', NULL, NULL, '163/02/2019', NULL, NULL, NULL, ''),
(120, '2019-02-19 08:03:31', NULL, NULL, NULL, 26, 'Olahan', 'Jamur Putih (SP-PPSHP-025)', 200, 1, 4, 3, ' ', NULL, NULL, '164/02/2019', NULL, NULL, NULL, ''),
(121, '2019-02-19 08:03:31', NULL, NULL, NULL, 26, 'Olahan', 'Jamur Merang (SP-PPSHP-026)', 250, 1, 4, 3, ' ', NULL, NULL, '165/02/2019', NULL, NULL, NULL, ''),
(125, '2019-02-19 08:16:54', NULL, NULL, NULL, 26, 'Olahan', 'Dodol Rasa Durian (SP-PPSHP-027)', 200, 1, 10, 3, ' ', NULL, NULL, '166/02/2019', NULL, NULL, NULL, ''),
(127, '2019-02-19 08:16:55', NULL, NULL, NULL, 26, 'Olahan', 'Manisan Mangga Manis (Sp-PPSHP-029)', 250, 1, 4, 3, ' ', NULL, NULL, '167/02/2019', NULL, NULL, NULL, ''),
(128, '2019-02-19 08:16:56', NULL, NULL, NULL, 26, 'Olahan', 'Buavita Orange (SP-PPSHP-030)', 946, 4, 10, 3, ' ', NULL, NULL, '169/02/2019', NULL, NULL, NULL, ''),
(129, '2019-02-19 08:16:56', NULL, NULL, NULL, 26, 'Olahan', 'Soursop Juice Drink (SP-PPSHP-031)', 946, 4, 10, 3, ' ', NULL, NULL, '170/02/2019', NULL, NULL, NULL, ''),
(130, '2019-02-19 08:16:56', NULL, NULL, NULL, 26, 'Olahan', 'Sari Buah Jambu (SP-PPSHP-032)', 946, 4, 10, 3, ' ', NULL, NULL, '171/02/2019', NULL, NULL, NULL, ''),
(131, '2019-02-19 08:16:57', NULL, NULL, NULL, 26, 'Olahan', 'Sari Buah Apel (SP-PPSHP-033)', 946, 4, 10, 3, ' ', NULL, NULL, '172/02/2019', NULL, NULL, NULL, ''),
(132, '2019-02-19 08:31:22', NULL, NULL, NULL, 26, 'Olahan', 'Dodol Rasa Cocopandan (SP-PPSHP-028)', 200, 1, 10, 3, ' ', NULL, NULL, '168/02/2019', NULL, NULL, NULL, ''),
(134, '2019-02-19 10:14:39', NULL, NULL, NULL, 27, 'Formulasi Pestisida', 'Cabrio Gold 183 SE (178/OL/PSP/1/2019)', 750, 4, 13, 3, '', NULL, NULL, '173/02/2019', NULL, NULL, NULL, ''),
(135, '2019-02-20 08:37:20', NULL, NULL, NULL, 28, 'Olahan', 'Adas Utuh', 150, 1, 13, 3, ' ', NULL, NULL, '174/02/2019', NULL, NULL, NULL, ''),
(136, '2019-02-20 08:37:20', NULL, NULL, NULL, 28, 'Olahan', 'Angkak', 50, 1, 4, 3, ' ', NULL, NULL, '175/02/2019', NULL, NULL, NULL, ''),
(137, '2019-02-20 08:37:20', NULL, NULL, NULL, 28, 'Olahan', 'Asam Kandis', 100, 1, 13, 3, ' ', NULL, NULL, '176/02/2019', NULL, NULL, NULL, ''),
(138, '2019-02-20 08:37:21', NULL, NULL, NULL, 28, 'Olahan', 'Bay Leaves ', 100, 1, 4, 3, ' ', NULL, NULL, '177/02/2019', NULL, NULL, NULL, ''),
(139, '2019-02-20 08:37:21', NULL, NULL, NULL, 28, 'Olahan', 'Parsley', 100, 1, 4, 3, ' ', NULL, NULL, '178/02/2019', NULL, NULL, NULL, ''),
(140, '2019-02-20 08:37:21', NULL, NULL, NULL, 28, 'Olahan', 'Rosemary', 125, 1, 4, 3, ' ', NULL, NULL, '179/02/2019', NULL, NULL, NULL, ''),
(141, '2019-02-20 08:37:21', NULL, NULL, NULL, 28, 'Olahan', 'Oregano', 120, 1, 4, 3, ' ', NULL, NULL, '180/02/2019', NULL, NULL, NULL, ''),
(142, '2019-02-20 08:37:21', NULL, NULL, NULL, 28, 'Olahan', 'Kapulaga', 100, 1, 4, 3, ' ', NULL, NULL, '181/02/2019', NULL, NULL, NULL, ''),
(143, '2019-02-20 08:37:22', NULL, NULL, NULL, 28, 'Olahan', 'Paprika Bubuk', 100, 1, 4, 3, ' ', NULL, NULL, '182/02/2019', NULL, NULL, NULL, ''),
(144, '2019-02-20 08:37:22', NULL, NULL, NULL, 28, 'Olahan', 'Serai Bubuk', 100, 1, 4, 3, ' ', NULL, NULL, '183/02/2019', NULL, NULL, NULL, ''),
(145, '2019-02-20 08:37:22', NULL, NULL, NULL, 28, 'Olahan', 'Daun Jeruk Bubuk', 100, 1, 4, 3, ' ', NULL, NULL, '184/02/2019', NULL, NULL, NULL, ''),
(146, '2019-02-20 08:37:22', NULL, NULL, NULL, 28, 'Olahan', 'Kayu Manis Bubuk', 100, 1, 4, 3, ' ', NULL, NULL, '185/02/2019', NULL, NULL, NULL, ''),
(147, '2019-02-20 08:37:22', NULL, NULL, NULL, 28, 'Olahan', 'Pekak Utuh', 100, 1, 4, 3, ' ', NULL, NULL, '186/02/2019', NULL, NULL, NULL, ''),
(148, '2019-02-20 08:37:23', NULL, NULL, NULL, 28, 'Olahan', 'Cabe Jawa Utuh', 150, 1, 4, 3, ' ', NULL, NULL, '187/02/2019', NULL, NULL, NULL, ''),
(149, '2019-02-20 08:37:23', NULL, NULL, NULL, 28, 'Olahan', 'Daun Mine', 150, 1, 13, 3, ' ', NULL, NULL, '188/02/2019', NULL, NULL, NULL, ''),
(150, '2019-02-20 08:37:23', NULL, NULL, NULL, 28, 'Olahan', 'Jinten Utuh', 100, 1, 13, 3, ' ', NULL, NULL, '189/02/2019', NULL, NULL, NULL, ''),
(151, '2019-02-20 08:37:24', NULL, NULL, NULL, 28, 'Olahan', 'Basil Leaves (Daun Kemangi)', 80, 1, 13, 3, ' ', NULL, NULL, '190/02/2019', NULL, NULL, NULL, ''),
(152, '2019-02-20 08:37:24', NULL, NULL, NULL, 28, 'Olahan', 'Lada Hitam Keprak (Black Pepper Cracked)', 100, 1, 13, 3, ' ', NULL, NULL, '191/02/2019', NULL, NULL, NULL, ''),
(153, '2019-02-20 08:37:24', NULL, NULL, NULL, 28, 'Olahan', 'Lada Putih Bubuk (White Pepper Powder)', 100, 1, 13, 3, ' ', NULL, NULL, '192/02/2019', NULL, NULL, NULL, ''),
(154, '2019-02-20 08:37:24', NULL, NULL, NULL, 28, 'Olahan', 'Bawang Merah Bubuk', 100, 1, 13, 3, ' ', NULL, NULL, '193/02/2019', NULL, NULL, NULL, ''),
(155, '2019-02-20 08:37:25', NULL, NULL, NULL, 28, 'Olahan', 'Asam Jawa Bubuk', 100, 1, 13, 3, ' ', NULL, NULL, '194/02/2019', NULL, NULL, NULL, ''),
(156, '2019-02-20 08:37:25', NULL, NULL, NULL, 28, 'Olahan', 'Ketumbar Bubuk (Coriander Powder)', 120, 1, 13, 3, ' ', NULL, NULL, '195/02/2019', NULL, NULL, NULL, ''),
(157, '2019-02-20 09:00:48', NULL, NULL, NULL, 28, 'Olahan', 'Jahe Bubuk', 120, 1, 13, 3, ' ', NULL, NULL, '196/02/2019', NULL, NULL, NULL, ''),
(158, '2019-02-20 09:00:48', NULL, NULL, NULL, 28, 'Olahan', 'Kunyit Bubuk (Turmeric Powder)', 120, 1, 13, 3, ' ', NULL, NULL, '197/02/2019', NULL, NULL, NULL, ''),
(159, '2019-02-20 09:00:49', NULL, NULL, NULL, 28, 'Olahan', 'Cengkeh Utuh (Clove)', 120, 1, 13, 3, ' ', NULL, NULL, '198/02/2019', NULL, NULL, NULL, ''),
(160, '2019-02-20 09:00:49', NULL, NULL, NULL, 28, 'Olahan', 'Onion Powder', 100, 1, 13, 3, ' ', NULL, NULL, '199/02/2019', NULL, NULL, NULL, ''),
(161, '2019-02-20 09:00:49', NULL, NULL, NULL, 28, 'Olahan', 'Biji Pala (Nutmeg)', 100, 1, 13, 3, ' ', NULL, NULL, '200/02/2019', NULL, NULL, NULL, ''),
(162, '2019-02-20 09:00:50', NULL, NULL, NULL, 28, 'Olahan', 'Thyme', 100, 1, 13, 3, ' ', NULL, NULL, '201/02/2019', NULL, NULL, NULL, ''),
(163, '2019-02-20 09:00:50', NULL, NULL, NULL, 28, 'Olahan', 'Cabe Bubuk Pedas', 120, 1, 13, 3, ' ', NULL, NULL, '202/02/2019', NULL, NULL, NULL, ''),
(164, '2019-02-20 09:00:51', NULL, NULL, NULL, 28, 'Olahan', 'Selasih', 100, 1, 13, 3, ' ', NULL, NULL, '203/02/2019', NULL, NULL, NULL, ''),
(165, '2019-02-20 09:00:51', NULL, NULL, NULL, 28, 'Olahan', 'Temu Lawak Bubuk', 120, 1, 13, 3, ' ', NULL, NULL, '204/02/2019', NULL, NULL, NULL, ''),
(166, '2019-02-20 09:00:51', NULL, NULL, NULL, 28, 'Olahan', 'Biji Sawi (Mustard)', 50, 1, 13, 3, ' ', NULL, NULL, '205/02/2019', NULL, NULL, NULL, ''),
(167, '2019-02-20 09:00:51', NULL, NULL, NULL, 28, 'Olahan', 'Spikolas', 100, 1, 13, 3, ' ', NULL, NULL, '206/02/2019', NULL, NULL, NULL, ''),
(168, '2019-02-20 09:00:51', NULL, NULL, NULL, 28, 'Olahan', 'Klabat  Utuh (Fenugreek )', 100, 1, 13, 3, ' ', NULL, NULL, '207/02/2019', NULL, NULL, NULL, ''),
(169, '2019-02-20 09:00:52', NULL, NULL, NULL, 28, 'Olahan', 'Wijen', 100, 1, 13, 3, ' ', NULL, NULL, '208/02/2019', NULL, NULL, NULL, ''),
(170, '2019-02-21 08:43:52', NULL, NULL, NULL, 29, 'Buah', 'Anggur Hijau', 500, 1, 4, 3, ' ', NULL, NULL, '209/02/2019', NULL, NULL, NULL, ''),
(171, '2019-02-21 08:43:53', NULL, NULL, NULL, 29, 'Buah', 'Anggur merah', 1000, 1, 4, 3, ' ', NULL, NULL, '210/02/2019', NULL, NULL, NULL, ''),
(172, '2019-02-21 08:43:53', NULL, NULL, NULL, 29, 'Buah', 'Pir Hijau', 850, 1, 4, 3, ' ', NULL, NULL, '211/02/2019', NULL, NULL, NULL, ''),
(173, '2019-02-21 08:43:53', NULL, NULL, NULL, 29, 'Buah', 'Pir', 1100, 1, 4, 3, ' ', NULL, NULL, '212/02/2019', NULL, NULL, NULL, ''),
(174, '2019-02-21 08:43:53', NULL, NULL, NULL, 29, 'Buah', 'Apel Fuji', 950, 1, 4, 3, ' ', NULL, NULL, '233/02/2019', NULL, NULL, NULL, ''),
(175, '2019-02-21 08:43:54', NULL, NULL, NULL, 29, 'Sayur', 'Salada Air', 750, 1, 4, 3, ' ', NULL, NULL, '213/02/2019', NULL, NULL, NULL, 'Basah'),
(176, '2019-02-21 08:43:54', NULL, NULL, NULL, 29, 'Sayur', 'Labu Siam Baby', 1000, 1, 4, 3, ' ', NULL, NULL, '214/02/2019', NULL, NULL, NULL, 'Basah'),
(177, '2019-02-21 08:43:54', NULL, NULL, NULL, 29, 'Sayur', 'Kacang Panjang', 1000, 1, 4, 3, ' ', NULL, NULL, '215/02/2019', NULL, NULL, NULL, ''),
(178, '2019-02-21 08:43:55', NULL, NULL, NULL, 29, 'Sayur', 'Tomat', 1000, 1, 4, 3, ' ', NULL, NULL, '216/02/2019', NULL, NULL, NULL, ''),
(179, '2019-02-21 08:43:55', NULL, NULL, NULL, 29, 'Sayur', 'Timun', 1200, 1, 4, 3, ' ', NULL, NULL, '217/02/2019', NULL, NULL, NULL, ''),
(180, '2019-02-21 08:43:55', NULL, NULL, NULL, 29, 'Sayur', 'Terong Bulat', 1000, 1, 4, 3, ' ', NULL, NULL, '218/02/2019', NULL, NULL, NULL, ''),
(181, '2019-02-21 08:43:56', NULL, NULL, NULL, 29, 'Olahan', 'Tahu Putih Cina', 1400, 1, 4, 3, ' ', NULL, NULL, '219/02/2019', NULL, NULL, NULL, 'Warna Agak Krem, Berat Dengan Air'),
(182, '2019-02-22 07:27:27', NULL, NULL, NULL, 30, 'Olahan', 'Beras Merah (01/SMC/02/2019)', 1000, 1, 4, 3, ' ', NULL, NULL, '221/02/2019', NULL, NULL, NULL, ''),
(183, '2019-02-22 07:54:20', NULL, NULL, NULL, 30, 'Olahan', 'Beras Ketan Hitam (02/SMC/02/2019)', 1000, 1, 4, 3, ' ', NULL, NULL, '222/02/2019', NULL, NULL, NULL, ''),
(184, '2019-02-22 07:54:21', NULL, NULL, NULL, 30, 'Olahan', 'Beras Ketan Putih (03/SMC/02/2019)', 1000, 1, 4, 3, ' ', NULL, NULL, '223/02/2019', NULL, NULL, NULL, ''),
(185, '2019-02-22 07:54:21', NULL, NULL, NULL, 30, 'Olahan', 'Kacang Hijau (04/SMC/02/2019)', 400, 1, 4, 3, ' ', NULL, NULL, '224/02/2019', NULL, NULL, NULL, ''),
(186, '2019-02-22 07:54:21', NULL, NULL, NULL, 30, 'Olahan', 'Jali-jali (05/SMC/02/2019)', 400, 1, 4, 3, ' ', NULL, NULL, '225/02/2019', NULL, NULL, NULL, ''),
(187, '2019-02-22 07:54:22', NULL, NULL, NULL, 30, 'Olahan', 'Kacang Jogo (06/SMC/02/2019)', 400, 1, 4, 3, ' ', NULL, NULL, '226/02/2019', NULL, NULL, NULL, ''),
(188, '2019-02-22 07:54:22', NULL, NULL, NULL, 30, 'Olahan', 'Kacang Merah (07/SMC/02/2019)', 400, 1, 4, 3, ' ', NULL, NULL, '227/02/2019', NULL, NULL, NULL, ''),
(189, '2019-02-22 07:54:23', NULL, NULL, NULL, 30, 'Olahan', 'Kacang Kedelai (08/SMC/02/2019)', 400, 1, 4, 3, ' ', NULL, NULL, '228/02/2019', NULL, NULL, NULL, ''),
(190, '2019-02-22 08:03:35', NULL, NULL, NULL, 30, 'Olahan', 'Wijen (09/SMC/02/2019)', 400, 1, 4, 3, ' ', NULL, NULL, '229/02/2019', NULL, NULL, NULL, ''),
(191, '2019-02-22 08:03:35', NULL, NULL, NULL, 30, 'Olahan', 'Kacang Tanah (10/SMC/02/2019)', 400, 1, 4, 3, ' ', NULL, NULL, '230/02/2019', NULL, NULL, NULL, ''),
(192, '2019-02-22 08:18:28', NULL, NULL, NULL, 30, 'Olahan', 'Kacang Tanah Kupas (11/SMC/02/2019)', 400, 1, 4, 3, ' ', NULL, NULL, '231/02/2019', NULL, NULL, NULL, ''),
(193, '2019-02-22 08:18:29', NULL, NULL, NULL, 30, 'Olahan', 'Kacang Hijau Kupas (12/SMC/02/2019)', 400, 1, 4, 3, ' ', NULL, NULL, '232/02/2019', NULL, NULL, NULL, ''),
(194, '2019-02-22 08:18:29', NULL, NULL, NULL, 30, 'Olahan', 'Pop Corn (13/SMC/02/2019)', 400, 1, 4, 3, ' ', NULL, NULL, '233/02/2019', NULL, NULL, NULL, ''),
(195, '2019-02-23 04:25:29', NULL, NULL, NULL, 31, 'Olahan', 'Kapulaga (01/UD.Dani/02/19)', 75, 1, 4, 3, ' ', NULL, NULL, '234/02/2019', NULL, NULL, NULL, ''),
(196, '2019-02-23 04:25:30', NULL, NULL, NULL, 31, 'Olahan', 'Jinten (02/UD.Dani/02/19)', 150, 1, 4, 3, ' ', NULL, NULL, '235/02/2019', NULL, NULL, NULL, ''),
(197, '2019-02-23 04:25:30', NULL, NULL, NULL, 31, 'Olahan', 'Kemiri (03/UD.Dani/02/19)', 100, 1, 4, 3, ' ', NULL, NULL, '236/02/2019', NULL, NULL, NULL, ''),
(198, '2019-02-23 04:25:30', NULL, NULL, NULL, 31, 'Olahan', 'Kayu Manis (04/UD.Dani/02/19)', 150, 1, 4, 3, ' ', NULL, NULL, '237/02/2019', NULL, NULL, NULL, ''),
(199, '2019-02-23 04:25:30', NULL, NULL, NULL, 31, 'Olahan', 'Ketumbar (05/UD.Dani/02/19)', 130, 1, 4, 3, ' ', NULL, NULL, '238/02/2019', NULL, NULL, NULL, ''),
(200, '2019-02-23 04:25:30', NULL, NULL, NULL, 31, 'Olahan', 'Lada Putih (06/UD.Dani/02/19)', 150, 1, 4, 3, ' ', NULL, NULL, '239/02/2019', NULL, NULL, NULL, ''),
(201, '2019-02-23 04:25:31', NULL, NULL, NULL, 31, 'Olahan', 'Biji Pala (07/UD.Dani/02/19)', 150, 1, 4, 3, ' ', NULL, NULL, '240/02/2019', NULL, NULL, NULL, ''),
(202, '2019-02-23 04:25:31', NULL, NULL, NULL, 31, 'Olahan', 'Asam Kandis (08/UD.Dani/02/19)', 150, 1, 4, 3, ' ', NULL, NULL, '241/02/2019', NULL, NULL, NULL, ''),
(203, '2019-02-23 04:25:31', NULL, NULL, NULL, 31, 'Olahan', 'Adas Palasari (09/UD.Dani/02/19)', 150, 1, 4, 3, ' ', NULL, NULL, '242/02/2019', NULL, NULL, NULL, ''),
(204, '2019-02-23 04:25:31', NULL, NULL, NULL, 31, 'Olahan', 'Bunga Lawang (10/UD.Dani/02/19)', 75, 1, 4, 3, ' ', NULL, NULL, '243/02/2019', NULL, NULL, NULL, ''),
(205, '2019-02-23 04:25:31', NULL, NULL, NULL, 31, 'Olahan', 'Cengkeh (11/UD.Dani/02/19)', 90, 1, 4, 3, ' ', NULL, NULL, '244/02/2019', NULL, NULL, NULL, ''),
(206, '2019-02-23 04:25:32', NULL, NULL, NULL, 31, 'Olahan', 'Lada Hitam (12/UD.Dani/02/19)', 100, 1, 4, 3, ' ', NULL, NULL, '245/02/2019', NULL, NULL, NULL, ''),
(207, '2019-02-23 04:25:32', NULL, NULL, NULL, 31, 'Olahan', 'Bawang Putih Katil (13/UD.Dani/02/19)', 100, 1, 4, 3, ' ', NULL, NULL, '246/02/2019', NULL, NULL, NULL, ''),
(208, '2019-02-23 04:25:32', NULL, NULL, NULL, 31, 'Olahan', 'Asam Jawa (14/UD.Dani/02/19)', 200, 1, 4, 3, ' ', NULL, NULL, '247/02/2019', NULL, NULL, NULL, ''),
(209, '2019-02-25 05:33:44', NULL, NULL, NULL, 32, 'Sayuran', 'Wortel', 2100, 1, 5, 3, ' ', NULL, NULL, '248/02/2019', NULL, NULL, NULL, ''),
(210, '2019-02-25 05:33:45', NULL, NULL, NULL, 32, 'Sayuran', 'Kol', 4000, 1, 5, 3, ' ', NULL, NULL, '249/02/2019', NULL, NULL, NULL, ''),
(211, '2019-02-25 05:33:45', NULL, NULL, NULL, 32, 'Sayuran', 'Kentang', 3100, 1, 5, 3, ' ', NULL, NULL, '250/02/2019', NULL, NULL, NULL, ''),
(212, '2019-02-25 05:33:46', NULL, NULL, NULL, 32, 'Buah-buahan', 'Semangka', 7500, 1, 5, 3, ' ', NULL, NULL, '251/02/2019', NULL, NULL, NULL, ''),
(213, '2019-02-25 07:34:43', NULL, NULL, NULL, 33, 'Olahan', 'Mitragyna Speciosa', 600, 1, 4, 3, ' ', NULL, NULL, '252/02/2019', NULL, NULL, NULL, ''),
(214, '2019-02-26 07:09:55', NULL, NULL, NULL, 34, 'Formulasi Pestisida', 'ONROLE 20 SG', 100, 1, 5, 3, ' ', NULL, NULL, '253/02/2019', NULL, NULL, NULL, ''),
(215, '2019-02-27 01:11:59', NULL, NULL, NULL, 35, 'Formulasi Pestisida', 'Supremo 480 SL', 100, 4, 13, 3, ' ', NULL, NULL, '254/02/2019', NULL, NULL, NULL, ''),
(216, '2019-02-27 07:51:27', NULL, NULL, NULL, 36, 'Olahan', 'Beras Setra Ramos (01/LJM/02/2019)', 1000, 1, 4, 3, ' ', NULL, NULL, '255/02/2019', NULL, NULL, NULL, ''),
(217, '2019-02-27 07:51:28', NULL, NULL, NULL, 36, 'Olahan', 'Beras Premium Wangi (02/LJM/02/2019)', 1000, 1, 4, 3, ' ', NULL, NULL, '256/02/2019', NULL, NULL, NULL, ''),
(218, '2019-02-28 06:22:50', NULL, NULL, NULL, 37, 'Buah-buahan', 'Apel GEEWHIZ (Ampah Kabupaten Barito Timur)', 1100, 1, 5, 3, ' ', NULL, NULL, '257/03/2019', NULL, NULL, NULL, ''),
(219, '2019-02-28 06:22:50', NULL, NULL, NULL, 37, 'Buah-buahan', 'Pier (Ampah Kabupaten Barito Timur)', 1300, 1, 5, 3, ' ', NULL, NULL, '258/03/2019', NULL, NULL, NULL, ''),
(220, '2019-02-28 06:22:50', NULL, NULL, NULL, 37, 'Buah-buahan', 'Jeruk Manis (Poktan Banitan Raya Kelurahan Tanah Mas)', 1000, 1, 5, 3, ' ', NULL, NULL, '259/03/2019', NULL, NULL, NULL, ''),
(221, '2019-02-28 06:22:51', NULL, NULL, NULL, 37, 'Buah-buahan', 'Jeruk Siam Banjar (Kuala Kurun Kabupaten Gunung Mas)', 1000, 1, 5, 3, ' ', NULL, NULL, '260/03/2019', NULL, NULL, NULL, ''),
(222, '2019-02-28 06:22:51', NULL, NULL, NULL, 37, 'Buah-buahan', 'Apel Washington 4015 (Pasar Beringin dari Buntok Barito Selatan)', 700, 1, 5, 3, ' ', NULL, NULL, '261/03/2019', NULL, NULL, NULL, ''),
(223, '2019-02-28 06:22:51', NULL, NULL, NULL, 37, 'Buah-buahan', 'Apel YUM (Kuala Kurun Kabupaten Gunung mas)', 1000, 1, 5, 3, ' ', NULL, NULL, '262/03/2019', NULL, NULL, NULL, ''),
(224, '2019-02-28 06:22:51', NULL, NULL, NULL, 37, 'Olahan', 'Beras Epang (Pedagang Jalan Tidar Kab. Kotawaringin Timur)', 1000, 1, 4, 3, ' ', NULL, NULL, '263/03/2019', NULL, NULL, NULL, ''),
(225, '2019-02-28 06:28:32', NULL, NULL, NULL, 37, 'Olahan', 'Beras Pagatan (Pedagang Jalan Tidar Kab. Kotawaringin Timur)', 1000, 1, 4, 3, ' ', NULL, NULL, '264/03/2019', NULL, NULL, NULL, ''),
(226, '2019-02-28 06:28:33', NULL, NULL, NULL, 37, 'Olahan', 'Beras Ciherang (Desa Bapeang Kab. Kotawaringin Timur)', 1000, 1, 4, 3, ' ', NULL, NULL, '265/03/2019', NULL, NULL, NULL, ''),
(227, '2019-03-01 04:16:02', NULL, NULL, NULL, 38, 'Benih', 'Jagung Hibrida/DMI-1 (Male)', 1000, 1, 4, 3, ' Pengujian Kadar Air dengan Moister Tester', NULL, NULL, '266/03/2019', NULL, NULL, NULL, ''),
(228, '2019-03-01 04:26:07', NULL, NULL, NULL, 39, 'Benih', 'Jagung Manis/Janisa (HTR-001)', 1000, 1, 4, 3, ' 1. Kadar Air dengan Moister Tester\n2. Sisa Sampel dikembalikan', NULL, NULL, '267/03/2019', NULL, NULL, NULL, ''),
(229, '2019-03-01 04:26:07', NULL, NULL, NULL, 39, 'Benih', 'Jagung Manis/Prisa (HTR-002)', 1000, 1, 4, 3, ' 1. Kadar Air dengan Moister Tester\n2. Sisa Sampel dikembalikan', NULL, NULL, '268/03/2019', NULL, NULL, NULL, ''),
(230, '2019-03-01 06:50:29', NULL, NULL, NULL, 40, 'Perikanan', 'Benih Ikan Kakap Putih (2)', 100, 1, 4, 3, ' ', NULL, NULL, '269/03/2019', NULL, NULL, NULL, ''),
(231, '2019-03-01 06:50:29', NULL, NULL, NULL, 40, 'Perikanan', 'Kakap Putih KJA (4)', 100, 1, 4, 3, ' ', NULL, NULL, '270/03/2019', NULL, NULL, NULL, ''),
(232, '2019-03-01 06:50:29', NULL, NULL, NULL, 40, 'Perikanan', 'Kerapu Macan KJA (5)', 100, 1, 4, 3, ' ', NULL, NULL, '271/03/2019', NULL, NULL, NULL, ''),
(234, '2019-03-01 06:50:30', NULL, NULL, NULL, 40, 'Perikanan', 'Tenggiri Budidaya (7)', 100, 1, 4, 3, ' ', NULL, NULL, '272/03/2019', NULL, NULL, NULL, ''),
(235, '2019-03-01 06:50:30', NULL, NULL, NULL, 40, 'Perikanan', 'Tembang Budidaya (8)', 100, 1, 4, 3, ' ', NULL, NULL, '273/03/2019', NULL, NULL, NULL, ''),
(236, '2019-03-01 06:50:30', NULL, NULL, NULL, 40, 'Perikanan', 'Tembang TPI Cilincing (9)', 100, 1, 4, 3, ' ', NULL, NULL, '274/03/2019', NULL, NULL, NULL, ''),
(237, '2019-03-01 06:50:30', NULL, NULL, NULL, 40, 'Perikanan', 'Udang TPI Cilincing (10)', 100, 1, 4, 3, ' ', NULL, NULL, '275/03/2019', NULL, NULL, NULL, ''),
(238, '2019-03-01 06:50:30', NULL, NULL, NULL, 40, 'Perikanan', 'Blanak TPI Cilincing (11)', 100, 1, 4, 3, ' ', NULL, NULL, '276/03/2019', NULL, NULL, NULL, ''),
(239, '2019-03-01 06:50:30', NULL, NULL, NULL, 40, 'Perikanan', 'Kerang ST.1 Cilincing (15)', 100, 1, 4, 3, ' ', NULL, NULL, '277/03/2019', NULL, NULL, NULL, ''),
(240, '2019-03-01 06:50:31', NULL, NULL, NULL, 40, 'Perikanan', 'Kerang ST.2 Cilincing (16)', 100, 1, 4, 3, ' ', NULL, NULL, '278/03/2019', NULL, NULL, NULL, ''),
(241, '2019-03-01 06:50:31', NULL, NULL, NULL, 40, 'Perikanan', 'Kerang ST.3 Cilincing (17)', 100, 1, 4, 3, ' ', NULL, NULL, '279/03/2019', NULL, NULL, NULL, ''),
(242, '2019-03-01 06:50:31', NULL, NULL, NULL, 40, 'Perikanan', 'Kerang ST.1 Kamal Muara (20)', 100, 1, 4, 3, ' ', NULL, NULL, '280/03/2019', NULL, NULL, NULL, ''),
(243, '2019-03-01 06:50:31', NULL, NULL, NULL, 40, 'Perikanan', 'Kerang ST.2 Kalam Muara (21)', 100, 1, 4, 3, ' ', NULL, NULL, '281/03/2019', NULL, NULL, NULL, ''),
(244, '2019-03-01 06:50:31', NULL, NULL, NULL, 40, 'Perikanan', 'Kerang ST.3 Kamal Muara (22)', 100, 1, 4, 3, ' ', NULL, NULL, '282/03/2019', NULL, NULL, NULL, ''),
(247, '2019-03-01 06:54:01', NULL, NULL, NULL, 40, 'Perikanan', 'Baronang Budidaya (6)', 100, 1, 4, 3, ' ', NULL, NULL, '283/03/2019', NULL, NULL, NULL, ''),
(248, '2019-03-04 06:13:06', NULL, NULL, NULL, 41, 'Olahan', 'Akar Kelapa Keju', 350, 1, 4, 3, ' ', NULL, NULL, '284/03/2019', NULL, NULL, NULL, ''),
(249, '2019-03-04 06:13:06', NULL, NULL, NULL, 41, 'Olahan', 'Akar Kelapa Green Tea', 300, 1, 4, 3, ' ', NULL, NULL, '285/03/2019', NULL, NULL, NULL, ''),
(250, '2019-03-04 06:13:06', NULL, NULL, NULL, 41, 'Olahan', 'Akar Kelapa Original', 300, 1, 4, 3, ' ', NULL, NULL, '286/03/2019', NULL, NULL, NULL, ''),
(251, '2019-03-04 06:13:07', NULL, NULL, NULL, 41, 'Olahan', 'Akar Kelapa Coklat', 300, 1, 4, 3, ' ', NULL, NULL, '287/03/2019', NULL, NULL, NULL, ''),
(252, '2019-03-05 06:29:27', NULL, NULL, NULL, 42, 'Benih', 'Jagung Hibrida/DMI-1 (Male)', 1000, 1, 4, 3, ' ', NULL, NULL, '288/03/2019', NULL, NULL, NULL, ''),
(253, '2019-03-05 06:29:27', NULL, NULL, NULL, 43, 'Benih', 'Jagung Hibrida/DMI-1 (Male)', 1000, 1, 4, 3, ' ', NULL, NULL, '000/03/2019', NULL, NULL, NULL, ''),
(254, '2019-03-06 00:56:20', NULL, NULL, NULL, 44, 'Sayuran', 'Cabe Rawit Ijo 33 (Kaslalari) (Pasar Kalideres)', 180, 1, 4, 3, ' ', NULL, NULL, '289/03/2019', NULL, NULL, NULL, ''),
(255, '2019-03-06 00:56:20', NULL, NULL, NULL, 44, 'Sayuran', 'Cabe Rawit Ijo 64 (Nanang) (Pasar Citra)', 180, 1, 4, 3, ' ', NULL, NULL, '290/03/2019', NULL, NULL, NULL, ''),
(256, '2019-03-06 00:56:21', NULL, NULL, NULL, 44, 'Sayuran', 'Cabe Rawit Merah 107 (Hendro) (Pasar Bojong Indah)', 180, 1, 4, 3, '', NULL, NULL, '291/03/2019', NULL, NULL, NULL, ''),
(257, '2019-03-06 03:28:59', NULL, NULL, NULL, 45, 'Olahan', 'Sugar R1 Komposit Lot 190208', 200, 1, 5, 3, ' ', NULL, NULL, '292/03/2019', NULL, NULL, NULL, ''),
(258, '2019-03-06 03:28:59', NULL, NULL, NULL, 45, 'Olahan', 'Sugar R1 Komposit Lot 190202', 200, 1, 5, 3, ' ', NULL, NULL, '293/03/2019', NULL, NULL, NULL, ''),
(259, '2019-03-06 03:29:00', NULL, NULL, NULL, 45, 'Olahan', 'Sugar R1 Komposit Lot 190211', 190, 1, 5, 3, ' ', NULL, NULL, '294/03/2019', NULL, NULL, NULL, ''),
(260, '2019-03-06 03:29:00', NULL, NULL, NULL, 45, 'Olahan', 'Sugar R1 Komposit Lot C1.05.02.19', 200, 1, 5, 3, ' ', NULL, NULL, '295/03/2019', NULL, NULL, NULL, ''),
(261, '2019-03-06 03:29:00', NULL, NULL, NULL, 45, 'Olahan', 'Sugar R1 Komposit Lot A1.08.02.19', 200, 1, 5, 3, ' ', NULL, NULL, '296/03/2019', NULL, NULL, NULL, ''),
(262, '2019-03-06 03:29:00', NULL, NULL, NULL, 45, 'Olahan', 'Sugar R1 Komposit Lot 190121', 220, 1, 5, 3, ' ', NULL, NULL, '297/03/2019', NULL, NULL, NULL, ''),
(263, '2019-03-06 03:29:00', NULL, NULL, NULL, 45, 'Olahan', 'E-0801-01 No Batch 0000070057', 260, 1, 5, 3, ' ', NULL, NULL, '298/03/2019', NULL, NULL, NULL, ''),
(264, '2019-03-06 03:29:01', NULL, NULL, NULL, 45, 'Olahan', 'E-0801-01 No Batch 0000070059', 240, 1, 5, 3, ' ', NULL, NULL, '299/03/2019', NULL, NULL, NULL, ''),
(265, '2019-03-06 03:29:01', NULL, NULL, NULL, 45, 'Olahan', 'Kopi Instan ex Esco No Batch 9006', 240, 1, 5, 3, ' ', NULL, NULL, '300/03/2019', NULL, NULL, NULL, ''),
(266, '2019-03-06 03:29:01', NULL, NULL, NULL, 45, 'Olahan', 'NDC LK 35 No Batch 18101702AC', 230, 1, 5, 3, ' ', NULL, NULL, '301/03/2019', NULL, NULL, NULL, ''),
(267, '2019-03-06 03:29:01', NULL, NULL, NULL, 45, 'Olahan', 'NDC LK 35 No Batch 1811102AC', 260, 1, 5, 3, ' ', NULL, NULL, '302/03/2019', NULL, NULL, NULL, ''),
(268, '2019-03-06 03:29:02', NULL, NULL, NULL, 45, 'Olahan', 'OAIMSO240TE No Batch CHB51143', 340, 1, 5, 3, ' ', NULL, NULL, '303/03/2019', NULL, NULL, NULL, ''),
(269, '2019-03-06 03:29:02', NULL, NULL, NULL, 45, 'Olahan', 'F-0215-01 Ginger No Batch 20181107-37', 280, 1, 5, 3, ' ', NULL, NULL, '304/03/2019', NULL, NULL, NULL, ''),
(270, '2019-03-06 03:29:02', NULL, NULL, NULL, 45, 'Olahan', 'OAIMSO250FMB No Batch 20181123-01', 260, 1, 5, 3, ' ', NULL, NULL, '305/03/2019', NULL, NULL, NULL, ''),
(271, '2019-03-06 03:29:02', NULL, NULL, NULL, 45, 'Olahan', 'Jahe Instan No Batch BIJ-2019', 300, 1, 5, 3, ' ', NULL, NULL, '306/03/2019', NULL, NULL, NULL, ''),
(272, '2019-03-06 03:29:03', NULL, NULL, NULL, 45, 'Olahan', 'Kopi Jahe 41 Komposit Lot 220221 (MC 1,6,7,9)', 460, 1, 5, 3, ' ', NULL, NULL, '307/03/2019', NULL, NULL, NULL, ''),
(273, '2019-03-06 03:29:03', NULL, NULL, NULL, 45, 'Olahan', 'Susu Jahe 41 Komposit Lot 070221 (MC 1,3,6,9)', 500, 1, 5, 3, ' ', NULL, NULL, '308/03/2019', NULL, NULL, NULL, ''),
(274, '2019-03-06 03:29:03', NULL, NULL, NULL, 45, 'Olahan', 'Susu Jahe Kacang Hijau 41 Komposit Lot 210221 (MC 1,6,7,9)', 480, 1, 5, 3, ' ', NULL, NULL, '309/03/2019', NULL, NULL, NULL, ''),
(275, '2019-03-06 03:29:03', NULL, NULL, NULL, 45, 'Olahan', 'Wedang Jahe 41 Komposit Lot 270820 (MC 3,6,7,9)', 440, 1, 5, 3, ' ', NULL, NULL, '310/03/2019', NULL, NULL, NULL, ''),
(276, '2019-03-06 03:46:33', NULL, NULL, NULL, 46, 'Olahan', 'Skim Milk No Batch WCB8221001', 400, 1, 5, 3, ' ', NULL, NULL, '311/03/2019', NULL, NULL, NULL, ''),
(277, '2019-03-06 03:46:33', NULL, NULL, NULL, 46, 'Olahan', 'Whey Powder No Batch 4604108169H50', 160, 1, 5, 3, ' ', NULL, NULL, '312/03/2019', NULL, NULL, NULL, ''),
(278, '2019-03-08 02:46:40', NULL, NULL, NULL, 47, 'Formulasi Pestisda', 'C', 500, 4, 13, 3, ' ', NULL, NULL, '313/03/2019', NULL, NULL, NULL, ''),
(279, '2019-03-08 02:54:01', NULL, NULL, NULL, 47, 'Formulasi Pestisda', 'G', 500, 4, 13, 3, ' ', NULL, NULL, '314/03/2019', NULL, NULL, NULL, ''),
(280, '2019-03-08 07:42:13', NULL, NULL, NULL, 49, 'Formulasi Pestisida', 'SWITCH OFF 62.5 WG', 100, 1, 5, 3, ' ', NULL, NULL, '000/03/2019', NULL, NULL, NULL, ''),
(281, '2019-03-08 07:47:48', NULL, NULL, NULL, 50, 'Formulasi Pestisida', 'SWITCH OFF 62.5 WG', 100, 1, 5, 3, ' ', NULL, NULL, '315/03/2019', NULL, NULL, NULL, ''),
(282, '2019-03-11 06:20:26', NULL, NULL, NULL, 51, 'Olahan', 'Beras Mentik Pecah Kulit Organik', 500, 1, 4, 3, ' ', NULL, NULL, '316/03/2019', NULL, NULL, NULL, ''),
(283, '2019-03-11 06:20:26', NULL, NULL, NULL, 51, 'Olahan', 'Beras Ketan Hitam Organik', 500, 1, 4, 3, ' ', NULL, NULL, '317/03/2019', NULL, NULL, NULL, ''),
(284, '2019-03-11 06:20:26', NULL, NULL, NULL, 51, 'Olahan', 'Beras Merah Organik', 500, 1, 4, 3, ' ', NULL, NULL, '318/03/2019', NULL, NULL, NULL, ''),
(286, '2019-03-11 06:20:26', NULL, NULL, NULL, 51, 'Olahan', 'Beras Organik Special Blend', 500, 1, 4, 3, ' ', NULL, NULL, '319/03/2019', NULL, NULL, NULL, ''),
(287, '2019-03-11 06:22:27', NULL, NULL, NULL, 51, 'Olahan', 'Beras Cempo Merah Organik', 500, 1, 4, 3, ' ', NULL, NULL, '320/03/2019', NULL, NULL, NULL, ''),
(288, '2019-03-14 03:54:50', NULL, NULL, NULL, 52, 'Sayuran', 'Samhong (Poktan Daun Hijau Cempaka Putih Timur/ Cempaka Putih) (SPD 027)', 1000, 1, 5, 3, ' ', NULL, NULL, '000/03/2019', NULL, NULL, NULL, ''),
(289, '2019-03-14 03:54:51', NULL, NULL, NULL, 52, 'Sayuran', 'Kale (Poktan Daun Hijau Cempaka Putih Timur/ Cempaka Putih) (SPD 028)', 600, 1, 5, 3, ' ', NULL, NULL, '000/03/2019', NULL, NULL, NULL, ''),
(290, '2019-03-14 03:55:05', NULL, NULL, NULL, 53, '', '', 0, 0, 0, 0, '', NULL, NULL, '000/03/2019', NULL, NULL, NULL, ''),
(291, '2019-03-14 03:55:06', NULL, NULL, NULL, 53, '', '', 0, 0, 0, 0, '', NULL, NULL, '000/03/2019', NULL, NULL, NULL, ''),
(292, '2019-03-14 03:55:06', NULL, NULL, NULL, 54, '', '', 0, 0, 0, 0, '', NULL, NULL, '000/03/2019', NULL, NULL, NULL, ''),
(293, '2019-03-14 03:55:06', NULL, NULL, NULL, 54, '', '', 0, 0, 0, 0, '', NULL, NULL, '000/03/2019', NULL, NULL, NULL, ''),
(294, '2019-03-14 07:59:41', NULL, NULL, NULL, 55, 'Formulasi Pestisida', 'QUICKSTAR 85 WG (134/OL/PSP/1/2019)', 200, 1, 5, 3, ' ', NULL, NULL, '323/03/2019', NULL, NULL, NULL, 'Disegel'),
(295, '2019-03-14 08:21:24', NULL, NULL, NULL, 56, 'Formulasi Pestisida', 'CABRIOTOP 60 WG  (180/OL/PSP/1/2019)', 250, 1, 5, 3, ' ', NULL, NULL, '324/03/2019', NULL, NULL, NULL, 'Disegel'),
(296, '2019-03-15 03:59:16', NULL, NULL, NULL, 57, 'Formulasi Pestisida', 'DIFENOCONAZOLE 95 TC (294/OL/PSP/2/2019)', 200, 1, 5, 3, ' ', NULL, NULL, '325/03/2019', NULL, NULL, NULL, 'disegel'),
(297, '2019-03-15 03:59:16', NULL, NULL, NULL, 57, 'Formulasi Pestisda', 'LAMBDA-CYHALOTHRIN 95 TC (296/OL/PSP/2/2019)', 100, 1, 5, 3, ' ', NULL, NULL, '326/03/2019', NULL, NULL, NULL, 'disegel'),
(298, '2019-03-15 03:59:16', NULL, NULL, NULL, 57, 'Formulasi Pestisida', 'IMIDACLOPRID 97 TC (297/OL/PSP/2/2019)', 100, 1, 5, 3, ' ', NULL, NULL, '327/03/2019', NULL, NULL, NULL, 'disegel'),
(299, '2019-03-15 04:09:20', NULL, NULL, NULL, 57, 'Formulasi Pestisida', 'CHLORPYRIFOS 97 TC (293/OL/PSP/2/2019)', 100, 4, 13, 3, ' ', NULL, NULL, '328/03/2019', NULL, NULL, NULL, 'disegel'),
(300, '2019-03-15 04:09:20', NULL, NULL, NULL, 57, 'Formulasi Pestisida', 'PROPICONAZOLE 95 TC  (269/OL/PSP/2/2019)', 100, 4, 13, 3, ' ', NULL, NULL, '329/03/2019', NULL, NULL, NULL, 'disegel'),
(301, '2019-03-15 07:17:37', NULL, NULL, NULL, 58, 'Buahan', 'Duku Condet', 2500, 1, 4, 3, '', NULL, NULL, '330/03/2019', NULL, NULL, NULL, ''),
(302, '2019-03-15 08:24:58', NULL, NULL, NULL, 59, 'Benih', 'Kubis Merah Hibrida/Ruby Perfection (3170008161-51XN)', 20, 4, 5, 3, ' ', NULL, NULL, '331/03/2019', NULL, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `permohonan_detail_metode`
--

CREATE TABLE IF NOT EXISTS `permohonan_detail_metode` (
`id_permohonan_detail_metode` int(11) NOT NULL,
  `id_metode` int(11) DEFAULT NULL,
  `id_permohonan_detail` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `permohonan_detail_parameter`
--

CREATE TABLE IF NOT EXISTS `permohonan_detail_parameter` (
`id_permohonan_detail_parameter` int(11) NOT NULL,
  `id_parameter_pengujian` int(11) DEFAULT NULL,
  `id_permohonan_detail` int(11) DEFAULT NULL,
  `biaya` bigint(20) DEFAULT NULL,
  `kode_contoh` varchar(15) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `id_metode` int(11) DEFAULT NULL,
  `id_paket` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2424 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `permohonan_detail_parameter`
--

INSERT INTO `permohonan_detail_parameter` (`id_permohonan_detail_parameter`, `id_parameter_pengujian`, `id_permohonan_detail`, `biaya`, `kode_contoh`, `caption`, `id_metode`, `id_paket`) VALUES
(1, 225, 2, 90000, '002/MIK/II/19', '', 0, 0),
(2, 225, 3, 0, '003/MIK/II/19', '', 0, 0),
(11, 1, 5, 1000000, '035/RP/II/19', '', 0, 0),
(12, 105, 5, 0, '035/RP/II/19', '', 0, 0),
(13, 31, 5, 0, '035/RP/II/19', '', 0, 0),
(14, 50, 5, 0, '035/RP/II/19', '', 0, 0),
(15, 83, 5, 0, '035/RP/II/19', '', 0, 0),
(16, 156, 5, 0, '035/RP/II/19', '', 0, 0),
(17, 93, 5, 0, '035/RP/II/19', '', 0, 0),
(18, 206, 5, 0, '035/RP/II/19', '', 0, 0),
(19, 1, 6, 1000000, '036/RP/II/19', '', 0, 0),
(20, 4, 6, 0, '036/RP/II/19', '', 0, 0),
(21, 11, 6, 0, '036/RP/II/19', '', 0, 0),
(22, 70, 6, 0, '036/RP/II/19', '', 0, 0),
(23, 25, 6, 0, '036/RP/II/19', '', 0, 0),
(24, 105, 6, 0, '036/RP/II/19', '', 0, 0),
(25, 35, 6, 0, '036/RP/II/19', '', 0, 0),
(26, 34, 6, 0, '036/RP/II/19', '', 0, 0),
(27, 124, 6, 0, '036/RP/II/19', '', 0, 0),
(28, 68, 6, 0, '036/RP/II/19', '', 0, 0),
(29, 79, 6, 0, '036/RP/II/19', '', 0, 0),
(30, 93, 6, 0, '036/RP/II/19', '', 0, 0),
(31, 58, 6, 0, '036/RP/II/19', '', 0, 0),
(32, 89, 6, 0, '036/RP/II/19', '', 0, 0),
(33, 251, 6, 200000, '026/LBM/II/19', '', 0, 0),
(34, 252, 6, 200000, '026/LBM/II/19', '', 0, 0),
(35, 165, 7, 1000000, '037/RP/II/19', '', 0, 0),
(36, 175, 7, 0, '037/RP/II/19', '', 0, 0),
(37, 251, 7, 200000, '027/LBM/II/19', '', 0, 0),
(38, 252, 7, 200000, '027/LBM/II/19', '', 0, 0),
(39, 1, 8, 0, '038/RP/II/19', '', 6, 0),
(40, 105, 8, 0, '038/RP/II/19', '', 0, 0),
(41, 31, 8, 0, '038/RP/II/19', '', 0, 0),
(42, 50, 8, 0, '038/RP/II/19', '', 0, 0),
(43, 83, 8, 0, '038/RP/II/19', '', 0, 0),
(44, 156, 8, 0, '038/RP/II/19', '', 0, 0),
(45, 93, 8, 0, '038/RP/II/19', '', 0, 0),
(46, 206, 8, 0, '038/RP/II/19', '', 0, 0),
(47, 1, 9, 0, '039/RP/II/19', '', 0, 0),
(48, 4, 9, 0, '039/RP/II/19', '', 0, 0),
(49, 11, 9, 0, '039/RP/II/19', '', 0, 0),
(50, 70, 9, 0, '039/RP/II/19', '', 0, 0),
(51, 25, 9, 0, '039/RP/II/19', '', 0, 0),
(52, 105, 9, 0, '039/RP/II/19', '', 0, 0),
(53, 35, 9, 0, '039/RP/II/19', '', 0, 0),
(54, 34, 9, 0, '039/RP/II/19', '', 0, 0),
(55, 124, 9, 0, '039/RP/II/19', '', 0, 0),
(56, 68, 9, 0, '039/RP/II/19', '', 0, 0),
(57, 79, 9, 0, '039/RP/II/19', '', 0, 0),
(58, 93, 9, 0, '039/RP/II/19', '', 0, 0),
(59, 58, 9, 0, '039/RP/II/19', '', 0, 0),
(60, 89, 9, 0, '039/RP/II/19', '', 0, 0),
(61, 251, 9, 0, '028/LBM/II/19', '', 0, 0),
(62, 252, 9, 0, '028/LBM/II/19', '', 0, 0),
(63, 165, 10, 0, '040/RP/II/19', '', 0, 0),
(64, 175, 10, 0, '040/RP/II/19', '', 0, 0),
(65, 251, 10, 0, '029/LBM/II/19', '', 0, 0),
(66, 252, 10, 0, '029/LBM/II/19', '', 0, 0),
(67, 340, 6, 0, '036/RP/II/19', '', 0, 0),
(68, 336, 11, 15000, '013/BN/II/19', '', 2, 0),
(69, 337, 11, 0, '013/BN/II/19', '', 2, 0),
(70, 338, 11, 0, '013/BN/II/19', '', 2, 0),
(71, 223, 5, 750000, '012/MY/II/19', '', 0, 0),
(72, 251, 5, 200000, '028/LBM/II/19', '', 0, 0),
(73, 252, 5, 200000, '028/LBM/II/19', '', 0, 0),
(76, 234, 13, 0, '014/KN/II/19', '', 0, 0),
(77, 343, 13, 0, '014/KN/II/19', '', 0, 0),
(78, 35, 14, 0, '038/RP/II/19', '', 0, 0),
(79, 45, 14, 0, '038/RP/II/19', '', 0, 0),
(80, 50, 14, 0, '038/RP/II/19', '', 0, 0),
(81, 60, 14, 0, '038/RP/II/19', '', 0, 0),
(82, 79, 14, 0, '038/RP/II/19', '', 0, 0),
(84, 100, 14, 0, '038/RP/II/19', '', 0, 0),
(85, 189, 14, 0, '038/RP/II/19', '', 0, 0),
(86, 96, 14, 0, '038/RP/II/19', '', 0, 0),
(87, 224, 15, 50000, '020/MIK/II/19', '', 0, 0),
(88, 225, 15, 90000, '020/MIK/II/19', '', 0, 0),
(89, 229, 15, 75000, '020/MIK/II/19', '', 0, 0),
(90, 228, 15, 60000, '001//II/19', '', 0, 0),
(91, 224, 16, 50000, '021/MIK/II/19', '', 0, 0),
(92, 225, 16, 90000, '021/MIK/II/19', '', 0, 0),
(93, 229, 16, 75000, '021/MIK/II/19', '', 0, 0),
(94, 228, 16, 60000, '021/MIK/II/19', '', 0, 0),
(95, 225, 17, 90000, '022/MIK/II/19', '', 0, 0),
(96, 229, 17, 75000, '022/MIK/II/19', '', 0, 0),
(97, 228, 17, 60000, '022/MIK/II/19', '', 0, 0),
(98, 230, 17, 75000, '022/MIK/II/19', '', 0, 0),
(99, 224, 18, 50000, '023/MIK/II/19', '', 0, 0),
(100, 225, 18, 90000, '023/MIK/II/19', '', 0, 0),
(101, 228, 18, 60000, '023/MIK/II/19', '', 0, 0),
(102, 230, 18, 75000, '023/MIK/II/19', '', 0, 0),
(103, 229, 18, 75000, '023/MIK/II/19', '', 0, 0),
(104, 224, 19, 50000, '024/MIK/II/19', '', 0, 0),
(105, 345, 19, 100000, '024/MIK/II/19', '', 0, 0),
(106, 224, 20, 50000, '025/MIK/II/19', '', 0, 0),
(107, 345, 20, 100000, '025/MIK/II/19', '', 0, 0),
(108, 224, 21, 50000, '026/MIK/II/19', '', 0, 0),
(109, 345, 21, 100000, '026/MIK/II/19', '', 0, 0),
(110, 224, 22, 50000, '027/MIK/II/19', '', 0, 0),
(111, 345, 22, 100000, '027/MIK/II/19', '', 0, 0),
(112, 224, 23, 50000, '028/MIK/II/19', '', 0, 0),
(113, 345, 23, 100000, '028/MIK/II/19', '', 0, 0),
(114, 224, 24, 50000, '029/MIK/II/19', '', 0, 0),
(115, 345, 24, 100000, '029/MIK/II/19', '', 0, 0),
(116, 224, 25, 50000, '030/MIK/II/19', '', 0, 0),
(117, 345, 25, 100000, '030/MIK/II/19', '', 0, 0),
(118, 224, 26, 50000, '031/MIK/II/19', '', 0, 0),
(119, 345, 26, 100000, '031/MIK/II/19', '', 0, 0),
(120, 224, 27, 50000, '032/MIK/II/19', '', 0, 0),
(121, 345, 27, 100000, '032/MIK/II/19', '', 0, 0),
(122, 224, 28, 50000, '033/MIK/II/19', '', 0, 0),
(123, 224, 29, 50000, '034/MIK/II/19', '', 0, 0),
(124, 224, 30, 50000, '035/MIK/II/19', '', 0, 0),
(125, 224, 31, 50000, '036/MIK/II/19', '', 0, 0),
(126, 345, 31, 100000, '036/MIK/II/19', '', 0, 0),
(127, 228, 31, 60000, '036/MIK/II/19', '', 0, 0),
(128, 229, 31, 75000, '036/MIK/II/19', '', 0, 0),
(129, 224, 32, 50000, '037/MIK/II/19', '', 0, 0),
(130, 225, 32, 90000, '037/MIK/II/19', '', 0, 0),
(131, 230, 32, 75000, '037/MIK/II/19', '', 0, 0),
(132, 229, 32, 75000, '037/MIK/II/19', '', 0, 0),
(133, 228, 32, 60000, '037/MIK/II/19', '', 0, 0),
(134, 224, 33, 50000, '038/MIK/II/19', '', 0, 0),
(135, 345, 33, 100000, '038/MIK/II/19', '', 0, 0),
(136, 228, 33, 60000, '038/MIK/II/19', '', 0, 0),
(137, 229, 33, 75000, '038/MIK/II/19', '', 0, 0),
(138, 224, 34, 50000, '039/MIK/II/19', '', 0, 0),
(139, 225, 34, 90000, '039/MIK/II/19', '', 0, 0),
(140, 229, 34, 75000, '039/MIK/II/19', '', 0, 0),
(141, 230, 34, 75000, '039/MIK/II/19', '', 0, 0),
(160, 224, 41, 50000, '040/MIK/II/19', '', 0, 0),
(161, 345, 41, 100000, '040/MIK/II/19', '', 0, 0),
(162, 225, 41, 90000, '040/MIK/II/19', '', 0, 0),
(163, 224, 42, 50000, '041/MIK/II/19', '', 0, 0),
(164, 345, 42, 100000, '041/MIK/II/19', '', 0, 0),
(165, 225, 42, 90000, '041/MIK/II/19', '', 0, 0),
(166, 224, 43, 50000, '042/MIK/II/19', '', 0, 0),
(167, 345, 43, 100000, '042/MIK/II/19', '', 0, 0),
(168, 225, 43, 90000, '042/MIK/II/19', '', 0, 0),
(169, 234, 44, 0, '015/KN/II/19', '', 0, 0),
(170, 343, 44, 0, '015/KN/II/19', '', 0, 0),
(171, 35, 45, 0, '039/RP/II/19', '', 0, 0),
(172, 45, 45, 0, '039/RP/II/19', '', 0, 0),
(173, 50, 45, 0, '039/RP/II/19', '', 0, 0),
(174, 60, 45, 0, '039/RP/II/19', '', 0, 0),
(175, 79, 45, 0, '039/RP/II/19', '', 0, 0),
(176, 96, 45, 0, '039/RP/II/19', '', 0, 0),
(177, 100, 45, 0, '039/RP/II/19', '', 0, 0),
(178, 189, 45, 0, '039/RP/II/19', '', 0, 0),
(179, 62, 45, 0, '039/RP/II/19', '', 0, 0),
(180, 58, 45, 0, '039/RP/II/19', '', 0, 0),
(181, 67, 45, 0, '039/RP/II/19', '', 0, 0),
(182, 31, 45, 0, '039/RP/II/19', '', 0, 0),
(183, 25, 45, 0, '039/RP/II/19', '', 0, 0),
(184, 90, 45, 0, '039/RP/II/19', '', 0, 0),
(185, 2, 45, 0, '039/RP/II/19', '', 0, 0),
(186, 346, 45, 0, '001//II/19', '', 0, 0),
(187, 0, 45, 0, '001//II/19', '', 0, 0),
(188, 90, 46, 0, '040/RP/II/19', '', 0, 0),
(189, 2, 46, 0, '040/RP/II/19', '', 0, 0),
(190, 346, 46, 0, '040/RP/II/19', '', 0, 0),
(191, 347, 46, 0, '040/RP/II/19', '', 0, 0),
(192, 55, 46, 0, '040/RP/II/19', '', 0, 0),
(193, 348, 46, 0, '040/RP/II/19', '', 0, 0),
(194, 349, 46, 0, '040/RP/II/19', '', 0, 0),
(195, 35, 46, 0, '040/RP/II/19', '', 0, 0),
(196, 45, 46, 0, '040/RP/II/19', '', 0, 0),
(197, 50, 46, 0, '040/RP/II/19', '', 0, 0),
(198, 60, 46, 0, '040/RP/II/19', '', 0, 0),
(199, 79, 46, 0, '040/RP/II/19', '', 0, 0),
(200, 96, 46, 0, '040/RP/II/19', '', 0, 0),
(201, 100, 46, 0, '040/RP/II/19', '', 0, 0),
(202, 189, 46, 0, '040/RP/II/19', '', 0, 0),
(203, 81, 46, 0, '040/RP/II/19', '', 0, 0),
(204, 350, 46, 0, '001//II/19', '', 0, 0),
(391, 90, NULL, 0, '047/RP/II/19', '', 0, 0),
(392, 2, NULL, 0, '047/RP/II/19', '', 0, 0),
(393, 346, NULL, 0, '047/RP/II/19', '', 0, 0),
(394, 347, NULL, 0, '047/RP/II/19', '', 0, 0),
(395, 55, NULL, 0, '047/RP/II/19', '', 0, 0),
(396, 348, NULL, 0, '047/RP/II/19', '', 0, 0),
(397, 349, NULL, 0, '047/RP/II/19', '', 0, 0),
(398, 35, NULL, 0, '047/RP/II/19', '', 0, 0),
(399, 45, NULL, 0, '047/RP/II/19', '', 0, 0),
(400, 50, NULL, 0, '047/RP/II/19', '', 0, 0),
(401, 60, NULL, 0, '047/RP/II/19', '', 0, 0),
(402, 79, NULL, 0, '047/RP/II/19', '', 0, 0),
(403, 96, NULL, 0, '047/RP/II/19', '', 0, 0),
(404, 100, NULL, 0, '047/RP/II/19', '', 0, 0),
(405, 189, NULL, 0, '047/RP/II/19', '', 0, 0),
(406, 81, NULL, 0, '047/RP/II/19', '', 0, 0),
(407, 350, NULL, 0, '047/RP/II/19', '', 0, 0),
(408, 49, NULL, 0, '047/RP/II/19', '', 0, 0),
(409, 89, NULL, 0, '047/RP/II/19', '', 0, 0),
(410, 29, NULL, 0, '047/RP/II/19', '', 0, 0),
(411, 94, NULL, 0, '047/RP/II/19', '', 0, 0),
(412, 69, NULL, 0, '047/RP/II/19', '', 0, 0),
(413, 62, NULL, 0, '047/RP/II/19', '', 0, 0),
(414, 58, NULL, 0, '047/RP/II/19', '', 0, 0),
(415, 67, NULL, 0, '047/RP/II/19', '', 0, 0),
(416, 36, NULL, 0, '047/RP/II/19', '', 0, 0),
(417, 25, NULL, 0, '047/RP/II/19', '', 0, 0),
(604, 90, NULL, 0, '047/RP/II/19', '', 0, 0),
(605, 2, NULL, 0, '047/RP/II/19', '', 0, 0),
(606, 346, NULL, 0, '047/RP/II/19', '', 0, 0),
(607, 347, NULL, 0, '047/RP/II/19', '', 0, 0),
(608, 55, NULL, 0, '047/RP/II/19', '', 0, 0),
(609, 348, NULL, 0, '047/RP/II/19', '', 0, 0),
(610, 349, NULL, 0, '047/RP/II/19', '', 0, 0),
(611, 35, NULL, 0, '047/RP/II/19', '', 0, 0),
(612, 45, NULL, 0, '047/RP/II/19', '', 0, 0),
(613, 50, NULL, 0, '047/RP/II/19', '', 0, 0),
(614, 60, NULL, 0, '047/RP/II/19', '', 0, 0),
(615, 79, NULL, 0, '047/RP/II/19', '', 0, 0),
(616, 96, NULL, 0, '047/RP/II/19', '', 0, 0),
(617, 100, NULL, 0, '047/RP/II/19', '', 0, 0),
(618, 189, NULL, 0, '047/RP/II/19', '', 0, 0),
(619, 81, NULL, 0, '047/RP/II/19', '', 0, 0),
(620, 350, NULL, 0, '047/RP/II/19', '', 0, 0),
(621, 49, NULL, 0, '047/RP/II/19', '', 0, 0),
(622, 89, NULL, 0, '047/RP/II/19', '', 0, 0),
(623, 29, NULL, 0, '047/RP/II/19', '', 0, 0),
(624, 94, NULL, 0, '047/RP/II/19', '', 0, 0),
(625, 69, NULL, 0, '047/RP/II/19', '', 0, 0),
(626, 62, NULL, 0, '047/RP/II/19', '', 0, 0),
(627, 58, NULL, 0, '047/RP/II/19', '', 0, 0),
(628, 67, NULL, 0, '047/RP/II/19', '', 0, 0),
(629, 36, NULL, 0, '047/RP/II/19', '', 0, 0),
(630, 25, NULL, 0, '047/RP/II/19', '', 0, 0),
(631, 90, 59, 0, '054/RP/II/19', '', 0, 0),
(632, 2, 59, 0, '054/RP/II/19', '', 0, 0),
(633, 346, 59, 0, '054/RP/II/19', '', 0, 0),
(634, 347, 59, 0, '054/RP/II/19', '', 0, 0),
(635, 55, 59, 0, '054/RP/II/19', '', 0, 0),
(636, 348, 59, 0, '054/RP/II/19', '', 0, 0),
(637, 349, 59, 0, '054/RP/II/19', '', 0, 0),
(638, 35, 59, 0, '054/RP/II/19', '', 0, 0),
(639, 45, 59, 0, '054/RP/II/19', '', 0, 0),
(640, 50, 59, 0, '054/RP/II/19', '', 0, 0),
(641, 60, 59, 0, '054/RP/II/19', '', 0, 0),
(642, 79, 59, 0, '054/RP/II/19', '', 0, 0),
(643, 96, 59, 0, '054/RP/II/19', '', 0, 0),
(644, 100, 59, 0, '054/RP/II/19', '', 0, 0),
(645, 189, 59, 0, '054/RP/II/19', '', 0, 0),
(646, 81, 59, 0, '054/RP/II/19', '', 0, 0),
(647, 350, 59, 0, '054/RP/II/19', '', 0, 0),
(648, 49, 59, 0, '054/RP/II/19', '', 0, 0),
(649, 89, 59, 0, '054/RP/II/19', '', 0, 0),
(650, 29, 59, 0, '054/RP/II/19', '', 0, 0),
(651, 94, 59, 0, '054/RP/II/19', '', 0, 0),
(652, 69, 59, 0, '054/RP/II/19', '', 0, 0),
(653, 62, 59, 0, '054/RP/II/19', '', 0, 0),
(654, 58, 59, 0, '054/RP/II/19', '', 0, 0),
(655, 67, 59, 0, '054/RP/II/19', '', 0, 0),
(656, 31, 59, 0, '054/RP/II/19', '', 0, 0),
(657, 25, 59, 0, '054/RP/II/19', '', 0, 0),
(658, 228, 59, 0, '063/MIK/II/19', '', 0, 0),
(659, 229, 59, 0, '063/MIK/II/19', '', 0, 0),
(660, 90, 60, 0, '055/RP/II/19', '', 0, 0),
(661, 2, 60, 0, '055/RP/II/19', '', 0, 0),
(662, 346, 60, 0, '055/RP/II/19', '', 0, 0),
(663, 347, 60, 0, '055/RP/II/19', '', 0, 0),
(664, 55, 60, 0, '055/RP/II/19', '', 0, 0),
(665, 348, 60, 0, '055/RP/II/19', '', 0, 0),
(666, 349, 60, 0, '055/RP/II/19', '', 0, 0),
(667, 35, 60, 0, '055/RP/II/19', '', 0, 0),
(668, 45, 60, 0, '055/RP/II/19', '', 0, 0),
(669, 50, 60, 0, '055/RP/II/19', '', 0, 0),
(670, 60, 60, 0, '055/RP/II/19', '', 0, 0),
(671, 79, 60, 0, '055/RP/II/19', '', 0, 0),
(672, 96, 60, 0, '055/RP/II/19', '', 0, 0),
(673, 100, 60, 0, '055/RP/II/19', '', 0, 0),
(674, 189, 60, 0, '055/RP/II/19', '', 0, 0),
(675, 81, 60, 0, '055/RP/II/19', '', 0, 0),
(676, 350, 60, 0, '055/RP/II/19', '', 0, 0),
(677, 49, 60, 0, '055/RP/II/19', '', 0, 0),
(678, 89, 60, 0, '055/RP/II/19', '', 0, 0),
(679, 29, 60, 0, '055/RP/II/19', '', 0, 0),
(680, 94, 60, 0, '055/RP/II/19', '', 0, 0),
(681, 69, 60, 0, '055/RP/II/19', '', 0, 0),
(682, 62, 60, 0, '055/RP/II/19', '', 0, 0),
(683, 58, 60, 0, '055/RP/II/19', '', 0, 0),
(684, 67, 60, 0, '055/RP/II/19', '', 0, 0),
(685, 31, 60, 0, '055/RP/II/19', '', 0, 0),
(686, 25, 60, 0, '055/RP/II/19', '', 0, 0),
(687, 228, 60, 0, '064/MIK/II/19', '', 0, 0),
(688, 229, 60, 0, '064/MIK/II/19', '', 0, 0),
(689, 90, 61, 0, '056/RP/II/19', '', 0, 0),
(690, 2, 61, 0, '056/RP/II/19', '', 0, 0),
(691, 346, 61, 0, '056/RP/II/19', '', 0, 0),
(692, 347, 61, 0, '056/RP/II/19', '', 0, 0),
(693, 55, 61, 0, '056/RP/II/19', '', 0, 0),
(694, 348, 61, 0, '056/RP/II/19', '', 0, 0),
(695, 349, 61, 0, '056/RP/II/19', '', 0, 0),
(696, 35, 61, 0, '056/RP/II/19', '', 0, 0),
(697, 45, 61, 0, '056/RP/II/19', '', 0, 0),
(698, 50, 61, 0, '056/RP/II/19', '', 0, 0),
(699, 60, 61, 0, '056/RP/II/19', '', 0, 0),
(700, 79, 61, 0, '056/RP/II/19', '', 0, 0),
(701, 96, 61, 0, '056/RP/II/19', '', 0, 0),
(702, 100, 61, 0, '056/RP/II/19', '', 0, 0),
(703, 189, 61, 0, '056/RP/II/19', '', 0, 0),
(704, 81, 61, 0, '056/RP/II/19', '', 0, 0),
(705, 350, 61, 0, '056/RP/II/19', '', 0, 0),
(706, 49, 61, 0, '056/RP/II/19', '', 0, 0),
(707, 89, 61, 0, '056/RP/II/19', '', 0, 0),
(708, 29, 61, 0, '056/RP/II/19', '', 0, 0),
(709, 94, 61, 0, '056/RP/II/19', '', 0, 0),
(710, 69, 61, 0, '056/RP/II/19', '', 0, 0),
(711, 62, 61, 0, '056/RP/II/19', '', 0, 0),
(712, 58, 61, 0, '056/RP/II/19', '', 0, 0),
(713, 67, 61, 0, '056/RP/II/19', '', 0, 0),
(714, 31, 61, 0, '056/RP/II/19', '', 0, 0),
(715, 25, 61, 0, '056/RP/II/19', '', 0, 0),
(716, 228, 61, 0, '065/MIK/II/19', '', 0, 0),
(717, 229, 61, 0, '065/MIK/II/19', '', 0, 0),
(718, 90, 62, 0, '057/RP/II/19', '', 0, 0),
(719, 2, 62, 0, '057/RP/II/19', '', 0, 0),
(720, 346, 62, 0, '057/RP/II/19', '', 0, 0),
(721, 347, 62, 0, '057/RP/II/19', '', 0, 0),
(722, 55, 62, 0, '057/RP/II/19', '', 0, 0),
(723, 348, 62, 0, '057/RP/II/19', '', 0, 0),
(724, 349, 62, 0, '057/RP/II/19', '', 0, 0),
(725, 35, 62, 0, '057/RP/II/19', '', 0, 0),
(726, 45, 62, 0, '057/RP/II/19', '', 0, 0),
(727, 50, 62, 0, '057/RP/II/19', '', 0, 0),
(728, 60, 62, 0, '057/RP/II/19', '', 0, 0),
(729, 79, 62, 0, '057/RP/II/19', '', 0, 0),
(730, 96, 62, 0, '057/RP/II/19', '', 0, 0),
(731, 100, 62, 0, '057/RP/II/19', '', 0, 0),
(732, 189, 62, 0, '057/RP/II/19', '', 0, 0),
(733, 81, 62, 0, '057/RP/II/19', '', 0, 0),
(734, 350, 62, 0, '057/RP/II/19', '', 0, 0),
(735, 49, 62, 0, '057/RP/II/19', '', 0, 0),
(736, 89, 62, 0, '057/RP/II/19', '', 0, 0),
(737, 29, 62, 0, '057/RP/II/19', '', 0, 0),
(738, 94, 62, 0, '057/RP/II/19', '', 0, 0),
(739, 69, 62, 0, '057/RP/II/19', '', 0, 0),
(740, 62, 62, 0, '057/RP/II/19', '', 0, 0),
(741, 58, 62, 0, '057/RP/II/19', '', 0, 0),
(742, 67, 62, 0, '057/RP/II/19', '', 0, 0),
(743, 31, 62, 0, '057/RP/II/19', '', 0, 0),
(744, 25, 62, 0, '057/RP/II/19', '', 0, 0),
(745, 228, 62, 0, '066/MIK/II/19', '', 0, 0),
(746, 229, 62, 0, '066/MIK/II/19', '', 0, 0),
(747, 90, 63, 0, '058/RP/II/19', '', 0, 0),
(748, 2, 63, 0, '058/RP/II/19', '', 0, 0),
(749, 346, 63, 0, '058/RP/II/19', '', 0, 0),
(750, 347, 63, 0, '058/RP/II/19', '', 0, 0),
(751, 55, 63, 0, '058/RP/II/19', '', 0, 0),
(752, 348, 63, 0, '058/RP/II/19', '', 0, 0),
(753, 349, 63, 0, '058/RP/II/19', '', 0, 0),
(754, 35, 63, 0, '058/RP/II/19', '', 0, 0),
(755, 45, 63, 0, '058/RP/II/19', '', 0, 0),
(756, 50, 63, 0, '058/RP/II/19', '', 0, 0),
(757, 60, 63, 0, '058/RP/II/19', '', 0, 0),
(758, 79, 63, 0, '058/RP/II/19', '', 0, 0),
(759, 96, 63, 0, '058/RP/II/19', '', 0, 0),
(760, 100, 63, 0, '058/RP/II/19', '', 0, 0),
(761, 189, 63, 0, '058/RP/II/19', '', 0, 0),
(762, 81, 63, 0, '058/RP/II/19', '', 0, 0),
(763, 350, 63, 0, '058/RP/II/19', '', 0, 0),
(764, 49, 63, 0, '058/RP/II/19', '', 0, 0),
(765, 89, 63, 0, '058/RP/II/19', '', 0, 0),
(766, 29, 63, 0, '058/RP/II/19', '', 0, 0),
(767, 94, 63, 0, '058/RP/II/19', '', 0, 0),
(768, 69, 63, 0, '058/RP/II/19', '', 0, 0),
(769, 62, 63, 0, '058/RP/II/19', '', 0, 0),
(770, 58, 63, 0, '058/RP/II/19', '', 0, 0),
(771, 67, 63, 0, '058/RP/II/19', '', 0, 0),
(772, 31, 63, 0, '058/RP/II/19', '', 0, 0),
(773, 25, 63, 0, '058/RP/II/19', '', 0, 0),
(774, 228, 63, 0, '067/MIK/II/19', '', 0, 0),
(775, 229, 63, 0, '067/MIK/II/19', '', 0, 0),
(776, 90, 64, 0, '059/RP/II/19', '', 0, 0),
(777, 2, 64, 0, '059/RP/II/19', '', 0, 0),
(778, 346, 64, 0, '059/RP/II/19', '', 0, 0),
(779, 347, 64, 0, '059/RP/II/19', '', 0, 0),
(780, 55, 64, 0, '059/RP/II/19', '', 0, 0),
(781, 348, 64, 0, '059/RP/II/19', '', 0, 0),
(782, 349, 64, 0, '059/RP/II/19', '', 0, 0),
(783, 35, 64, 0, '059/RP/II/19', '', 0, 0),
(784, 45, 64, 0, '059/RP/II/19', '', 0, 0),
(785, 50, 64, 0, '059/RP/II/19', '', 0, 0),
(786, 60, 64, 0, '059/RP/II/19', '', 0, 0),
(787, 79, 64, 0, '059/RP/II/19', '', 0, 0),
(788, 96, 64, 0, '059/RP/II/19', '', 0, 0),
(789, 100, 64, 0, '059/RP/II/19', '', 0, 0),
(790, 189, 64, 0, '059/RP/II/19', '', 0, 0),
(791, 81, 64, 0, '059/RP/II/19', '', 0, 0),
(792, 350, 64, 0, '059/RP/II/19', '', 0, 0),
(793, 49, 64, 0, '059/RP/II/19', '', 0, 0),
(794, 89, 64, 0, '059/RP/II/19', '', 0, 0),
(795, 29, 64, 0, '059/RP/II/19', '', 0, 0),
(796, 94, 64, 0, '059/RP/II/19', '', 0, 0),
(797, 69, 64, 0, '059/RP/II/19', '', 0, 0),
(798, 62, 64, 0, '059/RP/II/19', '', 0, 0),
(799, 58, 64, 0, '059/RP/II/19', '', 0, 0),
(800, 67, 64, 0, '059/RP/II/19', '', 0, 0),
(801, 31, 64, 0, '059/RP/II/19', '', 0, 0),
(802, 25, 64, 0, '059/RP/II/19', '', 0, 0),
(803, 228, 64, 0, '068/MIK/II/19', '', 0, 0),
(804, 229, 64, 0, '068/MIK/II/19', '', 0, 0),
(805, 49, 46, 0, '040/RP/II/19', '', 0, 0),
(806, 89, 46, 0, '040/RP/II/19', '', 0, 0),
(807, 29, 46, 0, '040/RP/II/19', '', 0, 0),
(808, 94, 46, 0, '040/RP/II/19', '', 0, 0),
(809, 69, 46, 0, '040/RP/II/19', '', 0, 0),
(810, 62, 46, 0, '040/RP/II/19', '', 0, 0),
(811, 58, 46, 0, '040/RP/II/19', '', 0, 0),
(812, 67, 46, 0, '040/RP/II/19', '', 0, 0),
(813, 31, 46, 0, '040/RP/II/19', '', 0, 0),
(814, 25, 46, 0, '040/RP/II/19', '', 0, 0),
(815, 228, 46, 0, '069/MIK/II/19', '', 0, 0),
(816, 229, 46, 0, '069/MIK/II/19', '', 0, 0),
(817, 90, NULL, 0, '047/RP/II/19', '', 0, 0),
(818, 2, NULL, 0, '047/RP/II/19', '', 0, 0),
(819, 346, NULL, 0, '047/RP/II/19', '', 0, 0),
(820, 347, NULL, 0, '047/RP/II/19', '', 0, 0),
(821, 55, NULL, 0, '047/RP/II/19', '', 0, 0),
(822, 348, NULL, 0, '047/RP/II/19', '', 0, 0),
(823, 349, NULL, 0, '047/RP/II/19', '', 0, 0),
(824, 35, NULL, 0, '047/RP/II/19', '', 0, 0),
(825, 45, NULL, 0, '047/RP/II/19', '', 0, 0),
(826, 50, NULL, 0, '047/RP/II/19', '', 0, 0),
(827, 60, NULL, 0, '047/RP/II/19', '', 0, 0),
(828, 79, NULL, 0, '047/RP/II/19', '', 0, 0),
(829, 96, NULL, 0, '047/RP/II/19', '', 0, 0),
(830, 100, NULL, 0, '047/RP/II/19', '', 0, 0),
(831, 189, NULL, 0, '047/RP/II/19', '', 0, 0),
(832, 81, NULL, 0, '047/RP/II/19', '', 0, 0),
(833, 350, NULL, 0, '047/RP/II/19', '', 0, 0),
(834, 49, NULL, 0, '047/RP/II/19', '', 0, 0),
(835, 89, NULL, 0, '047/RP/II/19', '', 0, 0),
(836, 29, NULL, 0, '047/RP/II/19', '', 0, 0),
(837, 94, NULL, 0, '047/RP/II/19', '', 0, 0),
(838, 69, NULL, 0, '047/RP/II/19', '', 0, 0),
(839, 62, NULL, 0, '047/RP/II/19', '', 0, 0),
(840, 58, NULL, 0, '047/RP/II/19', '', 0, 0),
(841, 67, NULL, 0, '047/RP/II/19', '', 0, 0),
(842, 36, NULL, 0, '047/RP/II/19', '', 0, 0),
(843, 25, NULL, 0, '047/RP/II/19', '', 0, 0),
(844, 2, 65, 0, '039/RP/II/19', '', 0, 0),
(845, 41, 65, 0, '039/RP/II/19', '', 0, 0),
(846, 46, 65, 0, '039/RP/II/19', '', 0, 0),
(847, 52, 65, 0, '039/RP/II/19', '', 0, 0),
(848, 56, 65, 0, '039/RP/II/19', '', 0, 0),
(849, 55, 65, 0, '039/RP/II/19', '', 0, 0),
(850, 90, 65, 0, '039/RP/II/19', '', 0, 0),
(851, 49, 65, 0, '039/RP/II/19', '', 0, 0),
(852, 69, 65, 0, '039/RP/II/19', '', 0, 0),
(853, 81, 65, 0, '039/RP/II/19', '', 0, 0),
(854, 94, 65, 0, '039/RP/II/19', '', 0, 0),
(855, 89, 65, 0, '039/RP/II/19', '', 0, 0),
(856, 29, 65, 0, '039/RP/II/19', '', 0, 0),
(857, 44, 65, 0, '039/RP/II/19', '', 0, 0),
(858, 35, 65, 0, '039/RP/II/19', '', 0, 0),
(859, 45, 65, 0, '039/RP/II/19', '', 0, 0),
(860, 50, 65, 0, '039/RP/II/19', '', 0, 0),
(861, 60, 65, 0, '039/RP/II/19', '', 0, 0),
(862, 79, 65, 0, '039/RP/II/19', '', 0, 0),
(863, 96, 65, 0, '039/RP/II/19', '', 0, 0),
(864, 100, 65, 0, '039/RP/II/19', '', 0, 0),
(865, 189, 65, 0, '039/RP/II/19', '', 0, 0),
(866, 25, 65, 0, '039/RP/II/19', '', 0, 0),
(867, 31, 65, 0, '039/RP/II/19', '', 0, 0),
(868, 58, 65, 0, '039/RP/II/19', '', 0, 0),
(869, 62, 65, 0, '039/RP/II/19', '', 0, 0),
(870, 67, 65, 0, '039/RP/II/19', '', 0, 0),
(871, 228, 65, 0, '043/MIK/II/19', '', 0, 0),
(872, 229, 65, 0, '043/MIK/II/19', '', 0, 0),
(873, 2, 66, 0, '040/RP/II/19', '', 0, 0),
(874, 41, 66, 0, '040/RP/II/19', '', 0, 0),
(875, 46, 66, 0, '040/RP/II/19', '', 0, 0),
(876, 52, 66, 0, '040/RP/II/19', '', 0, 0),
(877, 56, 66, 0, '040/RP/II/19', '', 0, 0),
(878, 55, 66, 0, '040/RP/II/19', '', 0, 0),
(879, 90, 66, 0, '040/RP/II/19', '', 0, 0),
(880, 49, 66, 0, '040/RP/II/19', '', 0, 0),
(881, 69, 66, 0, '040/RP/II/19', '', 0, 0),
(882, 81, 66, 0, '040/RP/II/19', '', 0, 0),
(883, 94, 66, 0, '040/RP/II/19', '', 0, 0),
(884, 89, 66, 0, '040/RP/II/19', '', 0, 0),
(885, 29, 66, 0, '040/RP/II/19', '', 0, 0),
(886, 44, 66, 0, '040/RP/II/19', '', 0, 0),
(887, 35, 66, 0, '040/RP/II/19', '', 0, 0),
(888, 45, 66, 0, '040/RP/II/19', '', 0, 0),
(889, 50, 66, 0, '040/RP/II/19', '', 0, 0),
(890, 60, 66, 0, '040/RP/II/19', '', 0, 0),
(891, 79, 66, 0, '040/RP/II/19', '', 0, 0),
(892, 96, 66, 0, '040/RP/II/19', '', 0, 0),
(893, 100, 66, 0, '040/RP/II/19', '', 0, 0),
(894, 189, 66, 0, '040/RP/II/19', '', 0, 0),
(895, 25, 66, 0, '040/RP/II/19', '', 0, 0),
(896, 31, 66, 0, '040/RP/II/19', '', 0, 0),
(897, 58, 66, 0, '040/RP/II/19', '', 0, 0),
(898, 62, 66, 0, '040/RP/II/19', '', 0, 0),
(899, 67, 66, 0, '040/RP/II/19', '', 0, 0),
(900, 228, 66, 0, '044/MIK/II/19', '', 0, 0),
(901, 229, 66, 0, '044/MIK/II/19', '', 0, 0),
(902, 2, 67, 0, '041/RP/II/19', '', 0, 0),
(903, 41, 67, 0, '041/RP/II/19', '', 0, 0),
(904, 46, 67, 0, '041/RP/II/19', '', 0, 0),
(905, 52, 67, 0, '041/RP/II/19', '', 0, 0),
(906, 56, 67, 0, '041/RP/II/19', '', 0, 0),
(907, 55, 67, 0, '041/RP/II/19', '', 0, 0),
(908, 90, 67, 0, '041/RP/II/19', '', 0, 0),
(909, 49, 67, 0, '041/RP/II/19', '', 0, 0),
(910, 69, 67, 0, '041/RP/II/19', '', 0, 0),
(911, 81, 67, 0, '041/RP/II/19', '', 0, 0),
(912, 94, 67, 0, '041/RP/II/19', '', 0, 0),
(913, 89, 67, 0, '041/RP/II/19', '', 0, 0),
(914, 29, 67, 0, '041/RP/II/19', '', 0, 0),
(915, 44, 67, 0, '041/RP/II/19', '', 0, 0),
(916, 35, 67, 0, '041/RP/II/19', '', 0, 0),
(917, 45, 67, 0, '041/RP/II/19', '', 0, 0),
(918, 50, 67, 0, '041/RP/II/19', '', 0, 0),
(919, 60, 67, 0, '041/RP/II/19', '', 0, 0),
(920, 79, 67, 0, '041/RP/II/19', '', 0, 0),
(921, 96, 67, 0, '041/RP/II/19', '', 0, 0),
(922, 100, 67, 0, '041/RP/II/19', '', 0, 0),
(923, 189, 67, 0, '041/RP/II/19', '', 0, 0),
(924, 25, 67, 0, '041/RP/II/19', '', 0, 0),
(925, 31, 67, 0, '041/RP/II/19', '', 0, 0),
(926, 58, 67, 0, '041/RP/II/19', '', 0, 0),
(927, 62, 67, 0, '041/RP/II/19', '', 0, 0),
(928, 67, 67, 0, '041/RP/II/19', '', 0, 0),
(929, 228, 67, 0, '045/MIK/II/19', '', 0, 0),
(930, 229, 67, 0, '045/MIK/II/19', '', 0, 0),
(931, 2, 68, 0, '042/RP/II/19', '', 0, 0),
(932, 41, 68, 0, '042/RP/II/19', '', 0, 0),
(933, 46, 68, 0, '042/RP/II/19', '', 0, 0),
(934, 52, 68, 0, '042/RP/II/19', '', 0, 0),
(935, 56, 68, 0, '042/RP/II/19', '', 0, 0),
(936, 55, 68, 0, '042/RP/II/19', '', 0, 0),
(937, 90, 68, 0, '042/RP/II/19', '', 0, 0),
(938, 49, 68, 0, '042/RP/II/19', '', 0, 0),
(939, 69, 68, 0, '042/RP/II/19', '', 0, 0),
(940, 81, 68, 0, '042/RP/II/19', '', 0, 0),
(941, 94, 68, 0, '042/RP/II/19', '', 0, 0),
(942, 89, 68, 0, '042/RP/II/19', '', 0, 0),
(943, 29, 68, 0, '042/RP/II/19', '', 0, 0),
(944, 44, 68, 0, '042/RP/II/19', '', 0, 0),
(945, 35, 68, 0, '042/RP/II/19', '', 0, 0),
(946, 45, 68, 0, '042/RP/II/19', '', 0, 0),
(947, 50, 68, 0, '042/RP/II/19', '', 0, 0),
(948, 60, 68, 0, '042/RP/II/19', '', 0, 0),
(949, 79, 68, 0, '042/RP/II/19', '', 0, 0),
(950, 96, 68, 0, '042/RP/II/19', '', 0, 0),
(951, 100, 68, 0, '042/RP/II/19', '', 0, 0),
(952, 189, 68, 0, '042/RP/II/19', '', 0, 0),
(953, 25, 68, 0, '042/RP/II/19', '', 0, 0),
(954, 31, 68, 0, '042/RP/II/19', '', 0, 0),
(955, 58, 68, 0, '042/RP/II/19', '', 0, 0),
(956, 62, 68, 0, '042/RP/II/19', '', 0, 0),
(957, 67, 68, 0, '042/RP/II/19', '', 0, 0),
(958, 228, 68, 0, '046/MIK/II/19', '', 0, 0),
(959, 229, 68, 0, '046/MIK/II/19', '', 0, 0),
(960, 2, 69, 0, '043/RP/II/19', '', 0, 0),
(961, 41, 69, 0, '043/RP/II/19', '', 0, 0),
(962, 46, 69, 0, '043/RP/II/19', '', 0, 0),
(963, 52, 69, 0, '043/RP/II/19', '', 0, 0),
(964, 56, 69, 0, '043/RP/II/19', '', 0, 0),
(965, 55, 69, 0, '043/RP/II/19', '', 0, 0),
(966, 90, 69, 0, '043/RP/II/19', '', 0, 0),
(967, 49, 69, 0, '043/RP/II/19', '', 0, 0),
(968, 69, 69, 0, '043/RP/II/19', '', 0, 0),
(969, 81, 69, 0, '043/RP/II/19', '', 0, 0),
(970, 94, 69, 0, '043/RP/II/19', '', 0, 0),
(971, 89, 69, 0, '043/RP/II/19', '', 0, 0),
(972, 29, 69, 0, '043/RP/II/19', '', 0, 0),
(973, 44, 69, 0, '043/RP/II/19', '', 0, 0),
(974, 35, 69, 0, '043/RP/II/19', '', 0, 0),
(975, 45, 69, 0, '043/RP/II/19', '', 0, 0),
(976, 50, 69, 0, '043/RP/II/19', '', 0, 0),
(977, 60, 69, 0, '043/RP/II/19', '', 0, 0),
(978, 79, 69, 0, '043/RP/II/19', '', 0, 0),
(979, 96, 69, 0, '043/RP/II/19', '', 0, 0),
(980, 100, 69, 0, '043/RP/II/19', '', 0, 0),
(981, 189, 69, 0, '043/RP/II/19', '', 0, 0),
(982, 25, 69, 0, '043/RP/II/19', '', 0, 0),
(983, 31, 69, 0, '043/RP/II/19', '', 0, 0),
(984, 58, 69, 0, '043/RP/II/19', '', 0, 0),
(985, 62, 69, 0, '043/RP/II/19', '', 0, 0),
(986, 67, 69, 0, '043/RP/II/19', '', 0, 0),
(987, 228, 69, 0, '047/MIK/II/19', '', 0, 0),
(988, 229, 69, 0, '047/MIK/II/19', '', 0, 0),
(989, 2, 70, 0, '044/RP/II/19', '', 0, 0),
(990, 41, 70, 0, '044/RP/II/19', '', 0, 0),
(991, 46, 70, 0, '044/RP/II/19', '', 0, 0),
(992, 52, 70, 0, '044/RP/II/19', '', 0, 0),
(993, 56, 70, 0, '044/RP/II/19', '', 0, 0),
(994, 55, 70, 0, '044/RP/II/19', '', 0, 0),
(995, 90, 70, 0, '044/RP/II/19', '', 0, 0),
(996, 49, 70, 0, '044/RP/II/19', '', 0, 0),
(997, 69, 70, 0, '044/RP/II/19', '', 0, 0),
(998, 81, 70, 0, '044/RP/II/19', '', 0, 0),
(999, 94, 70, 0, '044/RP/II/19', '', 0, 0),
(1000, 89, 70, 0, '044/RP/II/19', '', 0, 0),
(1001, 29, 70, 0, '044/RP/II/19', '', 0, 0),
(1002, 44, 70, 0, '044/RP/II/19', '', 0, 0),
(1003, 35, 70, 0, '044/RP/II/19', '', 0, 0),
(1004, 45, 70, 0, '044/RP/II/19', '', 0, 0),
(1005, 50, 70, 0, '044/RP/II/19', '', 0, 0),
(1006, 60, 70, 0, '044/RP/II/19', '', 0, 0),
(1007, 79, 70, 0, '044/RP/II/19', '', 0, 0),
(1008, 96, 70, 0, '044/RP/II/19', '', 0, 0),
(1009, 100, 70, 0, '044/RP/II/19', '', 0, 0),
(1010, 189, 70, 0, '044/RP/II/19', '', 0, 0),
(1011, 25, 70, 0, '044/RP/II/19', '', 0, 0),
(1012, 31, 70, 0, '044/RP/II/19', '', 0, 0),
(1013, 58, 70, 0, '044/RP/II/19', '', 0, 0),
(1014, 62, 70, 0, '044/RP/II/19', '', 0, 0),
(1015, 67, 70, 0, '044/RP/II/19', '', 0, 0),
(1016, 228, 70, 0, '048/MIK/II/19', '', 0, 0),
(1017, 229, 70, 0, '048/MIK/II/19', '', 0, 0),
(1047, 2, NULL, 0, '047/RP/II/19', '', 0, 0),
(1048, 41, NULL, 0, '047/RP/II/19', '', 0, 0),
(1049, 46, NULL, 0, '047/RP/II/19', '', 0, 0),
(1050, 52, NULL, 0, '047/RP/II/19', '', 0, 0),
(1051, 56, NULL, 0, '047/RP/II/19', '', 0, 0),
(1052, 55, NULL, 0, '047/RP/II/19', '', 0, 0),
(1053, 90, NULL, 0, '047/RP/II/19', '', 0, 0),
(1054, 49, NULL, 0, '047/RP/II/19', '', 0, 0),
(1055, 69, NULL, 0, '047/RP/II/19', '', 0, 0),
(1056, 81, NULL, 0, '047/RP/II/19', '', 0, 0),
(1057, 94, NULL, 0, '047/RP/II/19', '', 0, 0),
(1058, 89, NULL, 0, '047/RP/II/19', '', 0, 0),
(1059, 29, NULL, 0, '047/RP/II/19', '', 0, 0),
(1060, 44, NULL, 0, '047/RP/II/19', '', 0, 0),
(1061, 35, NULL, 0, '047/RP/II/19', '', 0, 0),
(1062, 45, NULL, 0, '047/RP/II/19', '', 0, 0),
(1063, 50, NULL, 0, '047/RP/II/19', '', 0, 0),
(1064, 60, NULL, 0, '047/RP/II/19', '', 0, 0),
(1065, 79, NULL, 0, '047/RP/II/19', '', 0, 0),
(1066, 96, NULL, 0, '047/RP/II/19', '', 0, 0),
(1067, 100, NULL, 0, '047/RP/II/19', '', 0, 0),
(1068, 189, NULL, 0, '047/RP/II/19', '', 0, 0),
(1069, 25, NULL, 0, '047/RP/II/19', '', 0, 0),
(1070, 31, NULL, 0, '047/RP/II/19', '', 0, 0),
(1071, 58, NULL, 0, '047/RP/II/19', '', 0, 0),
(1072, 62, NULL, 0, '047/RP/II/19', '', 0, 0),
(1073, 67, NULL, 0, '047/RP/II/19', '', 0, 0),
(1103, 2, NULL, 0, '047/RP/II/19', '', 0, 0),
(1104, 41, NULL, 0, '047/RP/II/19', '', 0, 0),
(1105, 46, NULL, 0, '047/RP/II/19', '', 0, 0),
(1106, 52, NULL, 0, '047/RP/II/19', '', 0, 0),
(1107, 56, NULL, 0, '047/RP/II/19', '', 0, 0),
(1108, 55, NULL, 0, '047/RP/II/19', '', 0, 0),
(1109, 90, NULL, 0, '047/RP/II/19', '', 0, 0),
(1110, 49, NULL, 0, '047/RP/II/19', '', 0, 0),
(1111, 69, NULL, 0, '047/RP/II/19', '', 0, 0),
(1112, 81, NULL, 0, '047/RP/II/19', '', 0, 0),
(1113, 94, NULL, 0, '047/RP/II/19', '', 0, 0),
(1114, 89, NULL, 0, '047/RP/II/19', '', 0, 0),
(1115, 29, NULL, 0, '047/RP/II/19', '', 0, 0),
(1116, 44, NULL, 0, '047/RP/II/19', '', 0, 0),
(1117, 35, NULL, 0, '047/RP/II/19', '', 0, 0),
(1118, 45, NULL, 0, '047/RP/II/19', '', 0, 0),
(1119, 50, NULL, 0, '047/RP/II/19', '', 0, 0),
(1120, 60, NULL, 0, '047/RP/II/19', '', 0, 0),
(1121, 79, NULL, 0, '047/RP/II/19', '', 0, 0),
(1122, 96, NULL, 0, '047/RP/II/19', '', 0, 0),
(1123, 100, NULL, 0, '047/RP/II/19', '', 0, 0),
(1124, 189, NULL, 0, '047/RP/II/19', '', 0, 0),
(1125, 25, NULL, 0, '047/RP/II/19', '', 0, 0),
(1126, 31, NULL, 0, '047/RP/II/19', '', 0, 0),
(1127, 58, NULL, 0, '047/RP/II/19', '', 0, 0),
(1128, 62, NULL, 0, '047/RP/II/19', '', 0, 0),
(1129, 67, NULL, 0, '047/RP/II/19', '', 0, 0),
(1159, 2, NULL, 0, '047/RP/II/19', '', 0, 0),
(1160, 41, NULL, 0, '047/RP/II/19', '', 0, 0),
(1161, 46, NULL, 0, '047/RP/II/19', '', 0, 0),
(1162, 52, NULL, 0, '047/RP/II/19', '', 0, 0),
(1163, 56, NULL, 0, '047/RP/II/19', '', 0, 0),
(1164, 55, NULL, 0, '047/RP/II/19', '', 0, 0),
(1165, 90, NULL, 0, '047/RP/II/19', '', 0, 0),
(1166, 49, NULL, 0, '047/RP/II/19', '', 0, 0),
(1167, 69, NULL, 0, '047/RP/II/19', '', 0, 0),
(1168, 81, NULL, 0, '047/RP/II/19', '', 0, 0),
(1169, 94, NULL, 0, '047/RP/II/19', '', 0, 0),
(1170, 89, NULL, 0, '047/RP/II/19', '', 0, 0),
(1171, 29, NULL, 0, '047/RP/II/19', '', 0, 0),
(1172, 44, NULL, 0, '047/RP/II/19', '', 0, 0),
(1173, 35, NULL, 0, '047/RP/II/19', '', 0, 0),
(1174, 45, NULL, 0, '047/RP/II/19', '', 0, 0),
(1175, 50, NULL, 0, '047/RP/II/19', '', 0, 0),
(1176, 60, NULL, 0, '047/RP/II/19', '', 0, 0),
(1177, 79, NULL, 0, '047/RP/II/19', '', 0, 0),
(1178, 96, NULL, 0, '047/RP/II/19', '', 0, 0),
(1179, 100, NULL, 0, '047/RP/II/19', '', 0, 0),
(1180, 189, NULL, 0, '047/RP/II/19', '', 0, 0),
(1181, 25, NULL, 0, '047/RP/II/19', '', 0, 0),
(1182, 31, NULL, 0, '047/RP/II/19', '', 0, 0),
(1183, 58, NULL, 0, '047/RP/II/19', '', 0, 0),
(1184, 62, NULL, 0, '047/RP/II/19', '', 0, 0),
(1185, 67, NULL, 0, '047/RP/II/19', '', 0, 0),
(1186, 2, 74, 0, '045/RP/II/19', '', 0, 0),
(1187, 41, 74, 0, '045/RP/II/19', '', 0, 0),
(1188, 46, 74, 0, '045/RP/II/19', '', 0, 0),
(1189, 52, 74, 0, '045/RP/II/19', '', 0, 0),
(1190, 56, 74, 0, '045/RP/II/19', '', 0, 0),
(1191, 55, 74, 0, '045/RP/II/19', '', 0, 0),
(1192, 90, 74, 0, '045/RP/II/19', '', 0, 0),
(1193, 49, 74, 0, '045/RP/II/19', '', 0, 0),
(1194, 69, 74, 0, '045/RP/II/19', '', 0, 0),
(1195, 81, 74, 0, '045/RP/II/19', '', 0, 0),
(1196, 94, 74, 0, '045/RP/II/19', '', 0, 0),
(1197, 89, 74, 0, '045/RP/II/19', '', 0, 0),
(1198, 29, 74, 0, '045/RP/II/19', '', 0, 0),
(1199, 44, 74, 0, '045/RP/II/19', '', 0, 0),
(1200, 35, 74, 0, '045/RP/II/19', '', 0, 0),
(1201, 45, 74, 0, '045/RP/II/19', '', 0, 0),
(1202, 50, 74, 0, '045/RP/II/19', '', 0, 0),
(1203, 60, 74, 0, '045/RP/II/19', '', 0, 0),
(1204, 79, 74, 0, '045/RP/II/19', '', 0, 0),
(1205, 96, 74, 0, '045/RP/II/19', '', 0, 0),
(1206, 100, 74, 0, '045/RP/II/19', '', 0, 0),
(1207, 189, 74, 0, '045/RP/II/19', '', 0, 0),
(1208, 25, 74, 0, '045/RP/II/19', '', 0, 0),
(1209, 31, 74, 0, '045/RP/II/19', '', 0, 0),
(1210, 58, 74, 0, '045/RP/II/19', '', 0, 0),
(1211, 62, 74, 0, '045/RP/II/19', '', 0, 0),
(1212, 67, 74, 0, '045/RP/II/19', '', 0, 0),
(1213, 228, 74, 0, '049/MIK/II/19', '', 0, 0),
(1214, 229, 74, 0, '049/MIK/II/19', '', 0, 0),
(1215, 2, 75, 0, '046/RP/II/19', '', 0, 0),
(1216, 41, 75, 0, '046/RP/II/19', '', 0, 0),
(1217, 46, 75, 0, '046/RP/II/19', '', 0, 0),
(1218, 52, 75, 0, '046/RP/II/19', '', 0, 0),
(1219, 56, 75, 0, '046/RP/II/19', '', 0, 0),
(1220, 55, 75, 0, '046/RP/II/19', '', 0, 0),
(1221, 90, 75, 0, '046/RP/II/19', '', 0, 0),
(1222, 49, 75, 0, '046/RP/II/19', '', 0, 0),
(1223, 69, 75, 0, '046/RP/II/19', '', 0, 0),
(1224, 81, 75, 0, '046/RP/II/19', '', 0, 0),
(1225, 94, 75, 0, '046/RP/II/19', '', 0, 0),
(1226, 89, 75, 0, '046/RP/II/19', '', 0, 0),
(1227, 29, 75, 0, '046/RP/II/19', '', 0, 0),
(1228, 44, 75, 0, '046/RP/II/19', '', 0, 0),
(1229, 35, 75, 0, '046/RP/II/19', '', 0, 0),
(1230, 45, 75, 0, '046/RP/II/19', '', 0, 0),
(1231, 50, 75, 0, '046/RP/II/19', '', 0, 0),
(1232, 60, 75, 0, '046/RP/II/19', '', 0, 0),
(1233, 79, 75, 0, '046/RP/II/19', '', 0, 0),
(1234, 96, 75, 0, '046/RP/II/19', '', 0, 0),
(1235, 100, 75, 0, '046/RP/II/19', '', 0, 0),
(1236, 189, 75, 0, '046/RP/II/19', '', 0, 0),
(1237, 25, 75, 0, '046/RP/II/19', '', 0, 0),
(1238, 31, 75, 0, '046/RP/II/19', '', 0, 0),
(1239, 58, 75, 0, '046/RP/II/19', '', 0, 0),
(1240, 62, 75, 0, '046/RP/II/19', '', 0, 0),
(1241, 67, 75, 0, '046/RP/II/19', '', 0, 0),
(1242, 228, 75, 0, '050/MIK/II/19', '', 0, 0),
(1243, 229, 75, 0, '050/MIK/II/19', '', 0, 0),
(1244, 2, 76, 0, '047/RP/II/19', '', 0, 0),
(1245, 41, 76, 0, '047/RP/II/19', '', 0, 0),
(1246, 46, 76, 0, '047/RP/II/19', '', 0, 0),
(1247, 52, 76, 0, '047/RP/II/19', '', 0, 0),
(1248, 56, 76, 0, '047/RP/II/19', '', 0, 0),
(1249, 55, 76, 0, '047/RP/II/19', '', 0, 0),
(1250, 90, 76, 0, '047/RP/II/19', '', 0, 0),
(1251, 49, 76, 0, '047/RP/II/19', '', 0, 0),
(1252, 69, 76, 0, '047/RP/II/19', '', 0, 0),
(1253, 81, 76, 0, '047/RP/II/19', '', 0, 0),
(1254, 94, 76, 0, '047/RP/II/19', '', 0, 0),
(1255, 89, 76, 0, '047/RP/II/19', '', 0, 0),
(1256, 29, 76, 0, '047/RP/II/19', '', 0, 0),
(1257, 44, 76, 0, '047/RP/II/19', '', 0, 0),
(1258, 35, 76, 0, '047/RP/II/19', '', 0, 0),
(1259, 45, 76, 0, '047/RP/II/19', '', 0, 0),
(1260, 50, 76, 0, '047/RP/II/19', '', 0, 0),
(1261, 60, 76, 0, '047/RP/II/19', '', 0, 0),
(1262, 79, 76, 0, '047/RP/II/19', '', 0, 0),
(1263, 96, 76, 0, '047/RP/II/19', '', 0, 0),
(1264, 100, 76, 0, '047/RP/II/19', '', 0, 0),
(1265, 189, 76, 0, '047/RP/II/19', '', 0, 0),
(1266, 25, 76, 0, '047/RP/II/19', '', 0, 0),
(1267, 31, 76, 0, '047/RP/II/19', '', 0, 0),
(1268, 58, 76, 0, '047/RP/II/19', '', 0, 0),
(1269, 62, 76, 0, '047/RP/II/19', '', 0, 0),
(1270, 67, 76, 0, '047/RP/II/19', '', 0, 0),
(1271, 228, 76, 0, '051/MIK/II/19', '', 0, 0),
(1272, 229, 76, 0, '051/MIK/II/19', '', 0, 0),
(1273, 2, 77, 0, '048/RP/II/19', '', 0, 0),
(1274, 41, 77, 0, '048/RP/II/19', '', 0, 0),
(1275, 46, 77, 0, '048/RP/II/19', '', 0, 0),
(1276, 52, 77, 0, '048/RP/II/19', '', 0, 0),
(1277, 56, 77, 0, '048/RP/II/19', '', 0, 0),
(1278, 55, 77, 0, '048/RP/II/19', '', 0, 0),
(1279, 90, 77, 0, '048/RP/II/19', '', 0, 0),
(1280, 49, 77, 0, '048/RP/II/19', '', 0, 0),
(1281, 69, 77, 0, '048/RP/II/19', '', 0, 0),
(1282, 81, 77, 0, '048/RP/II/19', '', 0, 0),
(1283, 94, 77, 0, '048/RP/II/19', '', 0, 0),
(1284, 89, 77, 0, '048/RP/II/19', '', 0, 0),
(1285, 29, 77, 0, '048/RP/II/19', '', 0, 0),
(1286, 44, 77, 0, '048/RP/II/19', '', 0, 0),
(1287, 35, 77, 0, '048/RP/II/19', '', 0, 0),
(1288, 45, 77, 0, '048/RP/II/19', '', 0, 0),
(1289, 50, 77, 0, '048/RP/II/19', '', 0, 0),
(1290, 60, 77, 0, '048/RP/II/19', '', 0, 0),
(1291, 79, 77, 0, '048/RP/II/19', '', 0, 0),
(1292, 96, 77, 0, '048/RP/II/19', '', 0, 0),
(1293, 100, 77, 0, '048/RP/II/19', '', 0, 0),
(1294, 189, 77, 0, '048/RP/II/19', '', 0, 0),
(1295, 25, 77, 0, '048/RP/II/19', '', 0, 0),
(1296, 31, 77, 0, '048/RP/II/19', '', 0, 0),
(1297, 58, 77, 0, '048/RP/II/19', '', 0, 0),
(1298, 62, 77, 0, '048/RP/II/19', '', 0, 0),
(1299, 67, 77, 0, '048/RP/II/19', '', 0, 0),
(1300, 228, 77, 0, '052/MIK/II/19', '', 0, 0),
(1301, 229, 77, 0, '052/MIK/II/19', '', 0, 0),
(1302, 2, 78, 0, '049/RP/II/19', '', 0, 0),
(1303, 41, 78, 0, '000/RP/II/19', '', 0, 0),
(1304, 46, 78, 0, '000/RP/II/19', '', 0, 0),
(1305, 52, 78, 0, '000/RP/II/19', '', 0, 0),
(1306, 56, 78, 0, '000/RP/II/19', '', 0, 0),
(1307, 55, 78, 0, '000/RP/II/19', '', 0, 0),
(1308, 90, 78, 0, '000/RP/II/19', '', 0, 0),
(1309, 49, 78, 0, '000/RP/II/19', '', 0, 0),
(1310, 69, 78, 0, '000/RP/II/19', '', 0, 0),
(1311, 81, 78, 0, '000/RP/II/19', '', 0, 0),
(1312, 94, 78, 0, '000/RP/II/19', '', 0, 0),
(1313, 89, 78, 0, '000/RP/II/19', '', 0, 0),
(1314, 29, 78, 0, '000/RP/II/19', '', 0, 0),
(1315, 44, 78, 0, '000/RP/II/19', '', 0, 0),
(1316, 35, 78, 0, '000/RP/II/19', '', 0, 0),
(1317, 45, 78, 0, '000/RP/II/19', '', 0, 0),
(1318, 50, 78, 0, '000/RP/II/19', '', 0, 0),
(1319, 60, 78, 0, '000/RP/II/19', '', 0, 0),
(1320, 79, 78, 0, '000/RP/II/19', '', 0, 0),
(1321, 96, 78, 0, '000/RP/II/19', '', 0, 0),
(1322, 100, 78, 0, '000/RP/II/19', '', 0, 0),
(1323, 189, 78, 0, '000/RP/II/19', '', 0, 0),
(1324, 25, 78, 0, '000/RP/II/19', '', 0, 0),
(1325, 31, 78, 0, '000/RP/II/19', '', 0, 0),
(1326, 58, 78, 0, '000/RP/II/19', '', 0, 0),
(1327, 62, 78, 0, '000/RP/II/19', '', 0, 0),
(1328, 67, 78, 0, '000/RP/II/19', '', 0, 0),
(1329, 228, 78, 0, '053/MIK/II/19', '', 0, 0),
(1330, 229, 78, 0, '000/MIK/II/19', '', 0, 0),
(1331, 2, 79, 0, '050/RP/II/19', '', 0, 0),
(1332, 41, 79, 0, '000/RP/II/19', '', 0, 0),
(1333, 46, 79, 0, '000/RP/II/19', '', 0, 0),
(1334, 52, 79, 0, '000/RP/II/19', '', 0, 0),
(1335, 56, 79, 0, '000/RP/II/19', '', 0, 0),
(1336, 55, 79, 0, '000/RP/II/19', '', 0, 0),
(1337, 90, 79, 0, '000/RP/II/19', '', 0, 0),
(1338, 49, 79, 0, '000/RP/II/19', '', 0, 0),
(1339, 69, 79, 0, '000/RP/II/19', '', 0, 0),
(1340, 81, 79, 0, '000/RP/II/19', '', 0, 0),
(1341, 94, 79, 0, '000/RP/II/19', '', 0, 0),
(1342, 89, 79, 0, '000/RP/II/19', '', 0, 0),
(1343, 29, 79, 0, '000/RP/II/19', '', 0, 0),
(1344, 44, 79, 0, '000/RP/II/19', '', 0, 0),
(1345, 35, 79, 0, '000/RP/II/19', '', 0, 0),
(1346, 45, 79, 0, '000/RP/II/19', '', 0, 0),
(1347, 50, 79, 0, '000/RP/II/19', '', 0, 0),
(1348, 60, 79, 0, '000/RP/II/19', '', 0, 0),
(1349, 79, 79, 0, '000/RP/II/19', '', 0, 0),
(1350, 96, 79, 0, '000/RP/II/19', '', 0, 0),
(1351, 100, 79, 0, '000/RP/II/19', '', 0, 0),
(1352, 189, 79, 0, '000/RP/II/19', '', 0, 0),
(1353, 25, 79, 0, '000/RP/II/19', '', 0, 0),
(1354, 31, 79, 0, '000/RP/II/19', '', 0, 0),
(1355, 58, 79, 0, '000/RP/II/19', '', 0, 0),
(1356, 62, 79, 0, '000/RP/II/19', '', 0, 0),
(1357, 67, 79, 0, '000/RP/II/19', '', 0, 0),
(1358, 228, 79, 0, '054/MIK/II/19', '', 0, 0),
(1359, 229, 79, 0, '000/MIK/II/19', '', 0, 0),
(1360, 2, 80, 0, '051/RP/II/19', '', 0, 0),
(1361, 41, 80, 0, '000/RP/II/19', '', 0, 0),
(1362, 46, 80, 0, '000/RP/II/19', '', 0, 0),
(1363, 52, 80, 0, '000/RP/II/19', '', 0, 0),
(1364, 56, 80, 0, '000/RP/II/19', '', 0, 0),
(1365, 55, 80, 0, '000/RP/II/19', '', 0, 0),
(1366, 90, 80, 0, '000/RP/II/19', '', 0, 0),
(1367, 49, 80, 0, '000/RP/II/19', '', 0, 0),
(1368, 69, 80, 0, '000/RP/II/19', '', 0, 0),
(1369, 81, 80, 0, '000/RP/II/19', '', 0, 0),
(1370, 94, 80, 0, '000/RP/II/19', '', 0, 0),
(1371, 89, 80, 0, '000/RP/II/19', '', 0, 0),
(1372, 29, 80, 0, '000/RP/II/19', '', 0, 0),
(1373, 44, 80, 0, '000/RP/II/19', '', 0, 0),
(1374, 35, 80, 0, '000/RP/II/19', '', 0, 0),
(1375, 45, 80, 0, '000/RP/II/19', '', 0, 0),
(1376, 50, 80, 0, '000/RP/II/19', '', 0, 0),
(1377, 60, 80, 0, '000/RP/II/19', '', 0, 0),
(1378, 79, 80, 0, '000/RP/II/19', '', 0, 0),
(1379, 96, 80, 0, '000/RP/II/19', '', 0, 0),
(1380, 100, 80, 0, '000/RP/II/19', '', 0, 0),
(1381, 189, 80, 0, '000/RP/II/19', '', 0, 0),
(1382, 25, 80, 0, '000/RP/II/19', '', 0, 0),
(1383, 31, 80, 0, '000/RP/II/19', '', 0, 0),
(1384, 58, 80, 0, '000/RP/II/19', '', 0, 0),
(1385, 62, 80, 0, '000/RP/II/19', '', 0, 0),
(1386, 67, 80, 0, '000/RP/II/19', '', 0, 0),
(1387, 228, 80, 0, '055/MIK/II/19', '', 0, 0),
(1388, 229, 80, 0, '000/MIK/II/19', '', 0, 0),
(1389, 2, 81, 0, '052/RP/II/19', '', 0, 0),
(1390, 41, 81, 0, '000/RP/II/19', '', 0, 0),
(1391, 46, 81, 0, '000/RP/II/19', '', 0, 0),
(1392, 52, 81, 0, '000/RP/II/19', '', 0, 0),
(1393, 56, 81, 0, '000/RP/II/19', '', 0, 0),
(1394, 55, 81, 0, '000/RP/II/19', '', 0, 0),
(1395, 90, 81, 0, '000/RP/II/19', '', 0, 0),
(1396, 49, 81, 0, '000/RP/II/19', '', 0, 0),
(1397, 69, 81, 0, '000/RP/II/19', '', 0, 0),
(1398, 81, 81, 0, '000/RP/II/19', '', 0, 0),
(1399, 94, 81, 0, '000/RP/II/19', '', 0, 0),
(1400, 89, 81, 0, '000/RP/II/19', '', 0, 0),
(1401, 29, 81, 0, '000/RP/II/19', '', 0, 0),
(1402, 44, 81, 0, '000/RP/II/19', '', 0, 0),
(1403, 35, 81, 0, '000/RP/II/19', '', 0, 0),
(1404, 45, 81, 0, '000/RP/II/19', '', 0, 0),
(1405, 50, 81, 0, '000/RP/II/19', '', 0, 0),
(1406, 60, 81, 0, '000/RP/II/19', '', 0, 0),
(1407, 79, 81, 0, '000/RP/II/19', '', 0, 0),
(1408, 96, 81, 0, '000/RP/II/19', '', 0, 0),
(1409, 100, 81, 0, '000/RP/II/19', '', 0, 0),
(1410, 189, 81, 0, '000/RP/II/19', '', 0, 0),
(1411, 25, 81, 0, '000/RP/II/19', '', 0, 0),
(1412, 31, 81, 0, '000/RP/II/19', '', 0, 0),
(1413, 58, 81, 0, '000/RP/II/19', '', 0, 0),
(1414, 62, 81, 0, '000/RP/II/19', '', 0, 0),
(1415, 67, 81, 0, '000/RP/II/19', '', 0, 0),
(1416, 228, 81, 0, '056/MIK/II/19', '', 0, 0),
(1417, 229, 81, 0, '000/MIK/II/19', '', 0, 0),
(1418, 2, 82, 0, '053/RP/II/19', '', 0, 0),
(1419, 41, 82, 0, '000/RP/II/19', '', 0, 0),
(1420, 46, 82, 0, '000/RP/II/19', '', 0, 0),
(1421, 52, 82, 0, '000/RP/II/19', '', 0, 0),
(1422, 56, 82, 0, '000/RP/II/19', '', 0, 0),
(1423, 55, 82, 0, '000/RP/II/19', '', 0, 0),
(1424, 90, 82, 0, '000/RP/II/19', '', 0, 0),
(1425, 49, 82, 0, '000/RP/II/19', '', 0, 0),
(1426, 69, 82, 0, '000/RP/II/19', '', 0, 0),
(1427, 81, 82, 0, '000/RP/II/19', '', 0, 0),
(1428, 94, 82, 0, '000/RP/II/19', '', 0, 0),
(1429, 89, 82, 0, '000/RP/II/19', '', 0, 0),
(1430, 29, 82, 0, '000/RP/II/19', '', 0, 0),
(1431, 44, 82, 0, '000/RP/II/19', '', 0, 0),
(1432, 35, 82, 0, '000/RP/II/19', '', 0, 0),
(1433, 45, 82, 0, '000/RP/II/19', '', 0, 0),
(1434, 50, 82, 0, '000/RP/II/19', '', 0, 0),
(1435, 60, 82, 0, '000/RP/II/19', '', 0, 0),
(1436, 79, 82, 0, '000/RP/II/19', '', 0, 0),
(1437, 96, 82, 0, '000/RP/II/19', '', 0, 0),
(1438, 100, 82, 0, '000/RP/II/19', '', 0, 0),
(1439, 189, 82, 0, '000/RP/II/19', '', 0, 0),
(1440, 25, 82, 0, '000/RP/II/19', '', 0, 0),
(1441, 31, 82, 0, '000/RP/II/19', '', 0, 0),
(1442, 58, 82, 0, '000/RP/II/19', '', 0, 0),
(1443, 62, 82, 0, '000/RP/II/19', '', 0, 0),
(1444, 67, 82, 0, '000/RP/II/19', '', 0, 0),
(1445, 228, 82, 0, '057/MIK/II/19', '', 0, 0),
(1446, 229, 82, 0, '000/MIK/II/19', '', 0, 0),
(1447, 2, 83, 0, '054/RP/II/19', '', 0, 0),
(1448, 41, 83, 0, '000/RP/II/19', '', 0, 0),
(1449, 46, 83, 0, '000/RP/II/19', '', 0, 0),
(1450, 52, 83, 0, '000/RP/II/19', '', 0, 0),
(1451, 56, 83, 0, '000/RP/II/19', '', 0, 0),
(1452, 55, 83, 0, '000/RP/II/19', '', 0, 0),
(1453, 90, 83, 0, '000/RP/II/19', '', 0, 0),
(1454, 49, 83, 0, '000/RP/II/19', '', 0, 0),
(1455, 69, 83, 0, '000/RP/II/19', '', 0, 0),
(1456, 81, 83, 0, '000/RP/II/19', '', 0, 0),
(1457, 94, 83, 0, '000/RP/II/19', '', 0, 0),
(1458, 89, 83, 0, '000/RP/II/19', '', 0, 0),
(1459, 29, 83, 0, '000/RP/II/19', '', 0, 0),
(1460, 44, 83, 0, '000/RP/II/19', '', 0, 0),
(1461, 35, 83, 0, '000/RP/II/19', '', 0, 0),
(1462, 45, 83, 0, '000/RP/II/19', '', 0, 0),
(1463, 50, 83, 0, '000/RP/II/19', '', 0, 0),
(1464, 60, 83, 0, '000/RP/II/19', '', 0, 0),
(1465, 79, 83, 0, '000/RP/II/19', '', 0, 0),
(1466, 96, 83, 0, '000/RP/II/19', '', 0, 0),
(1467, 100, 83, 0, '000/RP/II/19', '', 0, 0),
(1468, 189, 83, 0, '000/RP/II/19', '', 0, 0),
(1469, 25, 83, 0, '000/RP/II/19', '', 0, 0),
(1470, 31, 83, 0, '000/RP/II/19', '', 0, 0),
(1471, 58, 83, 0, '000/RP/II/19', '', 0, 0),
(1472, 62, 83, 0, '000/RP/II/19', '', 0, 0),
(1473, 67, 83, 0, '000/RP/II/19', '', 0, 0),
(1474, 228, 83, 0, '058/MIK/II/19', '', 0, 0),
(1475, 229, 83, 0, '000/MIK/II/19', '', 0, 0),
(1476, 336, 84, 15000, '014/BN/II/19', '', 0, 0),
(1477, 337, 84, 0, '014/BN/II/19', '', 0, 0),
(1478, 338, 84, 0, '014/BN/II/19', '', 0, 0),
(1479, 339, 84, 0, '014/BN/II/19', '', 0, 0),
(1480, 336, 86, 15000, '015/BN/II/19', '', 0, 0),
(1481, 337, 86, 0, '015/BN/II/19', '', 0, 0),
(1482, 338, 86, 0, '015/BN/II/19', '', 0, 0),
(1483, 339, 86, 0, '015/BN/II/19', '', 0, 0),
(1484, 228, 87, 60000, '059/MIK/II/19', '', 0, 0),
(1485, 255, 87, 150000, '029/LBM/II/19', '', 0, 0),
(1486, 49, 87, 500000, '055/RP/II/19', '', 0, 0),
(1487, 69, 87, 0, '000/RP/II/19', '', 0, 0),
(1488, 81, 87, 0, '000/RP/II/19', '', 0, 0),
(1489, 94, 87, 0, '000/RP/II/19', '', 0, 0),
(1490, 89, 87, 0, '000/RP/II/19', '', 0, 0),
(1491, 29, 87, 0, '000/RP/II/19', '', 0, 0),
(1492, 44, 87, 0, '000/RP/II/19', '', 0, 0),
(1493, 35, 87, 500000, '000/RP/II/19', '', 0, 0),
(1494, 45, 87, 0, '000/RP/II/19', '', 0, 0),
(1495, 50, 87, 0, '000/RP/II/19', '', 0, 0),
(1496, 60, 87, 0, '000/RP/II/19', '', 0, 0),
(1497, 79, 87, 0, '000/RP/II/19', '', 0, 0),
(1498, 96, 87, 0, '000/RP/II/19', '', 0, 0),
(1499, 100, 87, 0, '000/RP/II/19', '', 0, 0),
(1500, 189, 87, 0, '000/RP/II/19', '', 0, 0),
(1501, 228, 88, 60000, '060/MIK/II/19', '', 0, 0),
(1502, 255, 88, 150000, '030/LBM/II/19', '', 0, 0),
(1503, 49, 88, 500000, '056/RP/II/19', '', 0, 0),
(1504, 69, 88, 0, '000/RP/II/19', '', 0, 0),
(1505, 81, 88, 0, '000/RP/II/19', '', 0, 0),
(1506, 94, 88, 0, '000/RP/II/19', '', 0, 0),
(1507, 89, 88, 0, '000/RP/II/19', '', 0, 0),
(1508, 29, 88, 0, '000/RP/II/19', '', 0, 0),
(1509, 44, 88, 0, '000/RP/II/19', '', 0, 0),
(1510, 35, 88, 500000, '000/RP/II/19', '', 0, 0),
(1511, 45, 88, 0, '000/RP/II/19', '', 0, 0),
(1512, 50, 88, 0, '000/RP/II/19', '', 0, 0),
(1513, 60, 88, 0, '000/RP/II/19', '', 0, 0),
(1514, 79, 88, 0, '000/RP/II/19', '', 0, 0),
(1515, 96, 88, 0, '000/RP/II/19', '', 0, 0),
(1516, 100, 88, 0, '000/RP/II/19', '', 0, 0),
(1517, 189, 88, 0, '000/RP/II/19', '', 0, 0),
(1518, 228, 89, 60000, '061/MIK/II/19', '', 0, 0),
(1519, 255, 89, 150000, '031/LBM/II/19', '', 0, 0),
(1520, 49, 89, 500000, '057/RP/II/19', '', 0, 0),
(1521, 69, 89, 0, '000/RP/II/19', '', 0, 0),
(1522, 81, 89, 0, '000/RP/II/19', '', 0, 0),
(1523, 94, 89, 0, '000/RP/II/19', '', 0, 0),
(1524, 89, 89, 0, '000/RP/II/19', '', 0, 0),
(1525, 29, 89, 0, '000/RP/II/19', '', 0, 0),
(1526, 44, 89, 0, '000/RP/II/19', '', 0, 0),
(1527, 35, 89, 500000, '000/RP/II/19', '', 0, 0),
(1528, 45, 89, 0, '000/RP/II/19', '', 0, 0),
(1529, 50, 89, 0, '000/RP/II/19', '', 0, 0),
(1530, 60, 89, 0, '000/RP/II/19', '', 0, 0),
(1531, 79, 89, 0, '000/RP/II/19', '', 0, 0),
(1532, 96, 89, 0, '000/RP/II/19', '', 0, 0),
(1533, 100, 89, 0, '000/RP/II/19', '', 0, 0),
(1534, 189, 89, 0, '000/RP/II/19', '', 0, 0),
(1535, 228, 90, 60000, '062/MIK/II/19', '', 0, 0),
(1536, 255, 90, 150000, '032/LBM/II/19', '', 0, 0),
(1537, 49, 90, 500000, '058/RP/II/19', '', 0, 0),
(1538, 69, 90, 0, '000/RP/II/19', '', 0, 0),
(1539, 81, 90, 0, '000/RP/II/19', '', 0, 0),
(1540, 94, 90, 0, '000/RP/II/19', '', 0, 0),
(1541, 89, 90, 0, '000/RP/II/19', '', 0, 0),
(1542, 29, 90, 0, '000/RP/II/19', '', 0, 0),
(1543, 44, 90, 0, '000/RP/II/19', '', 0, 0),
(1544, 35, 90, 500000, '000/RP/II/19', '', 0, 0),
(1545, 45, 90, 0, '000/RP/II/19', '', 0, 0),
(1546, 50, 90, 0, '000/RP/II/19', '', 0, 0),
(1547, 60, 90, 0, '000/RP/II/19', '', 0, 0),
(1548, 79, 90, 0, '000/RP/II/19', '', 0, 0),
(1549, 96, 90, 0, '000/RP/II/19', '', 0, 0),
(1550, 100, 90, 0, '000/RP/II/19', '', 0, 0),
(1551, 189, 90, 0, '000/RP/II/19', '', 0, 0),
(1552, 228, 91, 60000, '063/MIK/II/19', '', 0, 0),
(1553, 255, 91, 150000, '033/LBM/II/19', '', 0, 0),
(1554, 49, 91, 500000, '059/RP/II/19', '', 0, 0),
(1555, 69, 91, 0, '000/RP/II/19', '', 0, 0),
(1556, 81, 91, 0, '000/RP/II/19', '', 0, 0),
(1557, 94, 91, 0, '000/RP/II/19', '', 0, 0),
(1558, 89, 91, 0, '000/RP/II/19', '', 0, 0),
(1559, 29, 91, 0, '000/RP/II/19', '', 0, 0),
(1560, 44, 91, 0, '000/RP/II/19', '', 0, 0),
(1561, 35, 91, 500000, '000/RP/II/19', '', 0, 0),
(1562, 45, 91, 0, '000/RP/II/19', '', 0, 0),
(1563, 50, 91, 0, '000/RP/II/19', '', 0, 0),
(1564, 60, 91, 0, '000/RP/II/19', '', 0, 0),
(1565, 79, 91, 0, '000/RP/II/19', '', 0, 0),
(1566, 96, 91, 0, '000/RP/II/19', '', 0, 0),
(1567, 100, 91, 0, '000/RP/II/19', '', 0, 0),
(1568, 189, 91, 0, '000/RP/II/19', '', 0, 0),
(1569, 228, 92, 60000, '064/MIK/II/19', '', 0, 0),
(1570, 255, 92, 150000, '034/LBM/II/19', '', 0, 0),
(1571, 49, 92, 500000, '060/RP/II/19', '', 0, 0),
(1572, 69, 92, 0, '000/RP/II/19', '', 0, 0),
(1573, 81, 92, 0, '000/RP/II/19', '', 0, 0),
(1574, 94, 92, 0, '000/RP/II/19', '', 0, 0),
(1575, 89, 92, 0, '000/RP/II/19', '', 0, 0),
(1576, 29, 92, 0, '000/RP/II/19', '', 0, 0),
(1577, 44, 92, 0, '000/RP/II/19', '', 0, 0),
(1578, 35, 92, 500000, '000/RP/II/19', '', 0, 0),
(1579, 45, 92, 0, '000/RP/II/19', '', 0, 0),
(1580, 50, 92, 0, '000/RP/II/19', '', 0, 0),
(1581, 60, 92, 0, '000/RP/II/19', '', 0, 0),
(1582, 79, 92, 0, '000/RP/II/19', '', 0, 0),
(1583, 96, 92, 0, '000/RP/II/19', '', 0, 0),
(1584, 100, 92, 0, '000/RP/II/19', '', 0, 0),
(1585, 189, 92, 0, '000/RP/II/19', '', 0, 0),
(1586, 255, 93, 150000, '035/LBM/II/19', '', 0, 0),
(1587, 49, 93, 500000, '061/RP/II/19', '', 0, 0),
(1588, 69, 93, 0, '000/RP/II/19', '', 0, 0),
(1589, 81, 93, 0, '000/RP/II/19', '', 0, 0),
(1590, 94, 93, 0, '000/RP/II/19', '', 0, 0),
(1591, 89, 93, 0, '000/RP/II/19', '', 0, 0),
(1592, 29, 93, 0, '000/RP/II/19', '', 0, 0),
(1593, 44, 93, 0, '000/RP/II/19', '', 0, 0),
(1594, 35, 93, 500000, '000/RP/II/19', '', 0, 0),
(1595, 45, 93, 0, '000/RP/II/19', '', 0, 0),
(1596, 50, 93, 0, '000/RP/II/19', '', 0, 0),
(1597, 60, 93, 0, '000/RP/II/19', '', 0, 0),
(1598, 79, 93, 0, '000/RP/II/19', '', 0, 0),
(1599, 96, 93, 0, '000/RP/II/19', '', 0, 0),
(1600, 100, 93, 0, '000/RP/II/19', '', 0, 0),
(1601, 189, 93, 0, '000/RP/II/19', '', 0, 0),
(1602, 228, 94, 0, '000/MIK/II/19', '', 0, 0),
(1603, 255, 94, 0, '000/LBM/II/19', '', 0, 0),
(1604, 49, 94, 0, '000/RP/II/19', '', 0, 0),
(1605, 69, 94, 0, '000/RP/II/19', '', 0, 0),
(1606, 81, 94, 0, '000/RP/II/19', '', 0, 0),
(1607, 94, 94, 0, '000/RP/II/19', '', 0, 0),
(1608, 89, 94, 0, '000/RP/II/19', '', 0, 0),
(1609, 29, 94, 0, '000/RP/II/19', '', 0, 0),
(1610, 44, 94, 0, '000/RP/II/19', '', 0, 0),
(1611, 35, 94, 0, '000/RP/II/19', '', 0, 0),
(1612, 45, 94, 0, '000/RP/II/19', '', 0, 0),
(1613, 50, 94, 0, '000/RP/II/19', '', 0, 0),
(1614, 60, 94, 0, '000/RP/II/19', '', 0, 0),
(1615, 79, 94, 0, '000/RP/II/19', '', 0, 0),
(1616, 96, 94, 0, '000/RP/II/19', '', 0, 0),
(1617, 100, 94, 0, '000/RP/II/19', '', 0, 0),
(1618, 189, 94, 0, '000/RP/II/19', '', 0, 0),
(1619, 228, 95, 0, '000/MIK/II/19', '', 0, 0),
(1620, 255, 95, 0, '000/LBM/II/19', '', 0, 0),
(1621, 49, 95, 0, '000/RP/II/19', '', 0, 0),
(1622, 69, 95, 0, '000/RP/II/19', '', 0, 0),
(1623, 81, 95, 0, '000/RP/II/19', '', 0, 0),
(1624, 94, 95, 0, '000/RP/II/19', '', 0, 0),
(1625, 89, 95, 0, '000/RP/II/19', '', 0, 0),
(1626, 29, 95, 0, '000/RP/II/19', '', 0, 0),
(1627, 44, 95, 0, '000/RP/II/19', '', 0, 0),
(1628, 35, 95, 0, '000/RP/II/19', '', 0, 0),
(1629, 45, 95, 0, '000/RP/II/19', '', 0, 0),
(1630, 50, 95, 0, '000/RP/II/19', '', 0, 0),
(1631, 60, 95, 0, '000/RP/II/19', '', 0, 0),
(1632, 79, 95, 0, '000/RP/II/19', '', 0, 0),
(1633, 96, 95, 0, '000/RP/II/19', '', 0, 0),
(1634, 100, 95, 0, '000/RP/II/19', '', 0, 0),
(1635, 189, 95, 0, '000/RP/II/19', '', 0, 0);
INSERT INTO `permohonan_detail_parameter` (`id_permohonan_detail_parameter`, `id_parameter_pengujian`, `id_permohonan_detail`, `biaya`, `kode_contoh`, `caption`, `id_metode`, `id_paket`) VALUES
(1636, 338, 96, 15000, '016/BN/II/19', '', 0, 0),
(1637, 25, 97, 1000000, '062/RP/II/19', '', 0, 0),
(1638, 351, 97, 0, '062/RP/II/19', '', 0, 0),
(1639, 50, 97, 0, '062/RP/II/19', '', 0, 0),
(1640, 156, 97, 0, '062/RP/II/19', '', 0, 0),
(1641, 25, 98, 1000000, '063/RP/II/19', '', 0, 0),
(1642, 351, 98, 0, '063/RP/II/19', '', 0, 0),
(1643, 50, 98, 0, '063/RP/II/19', '', 0, 0),
(1644, 156, 98, 0, '063/RP/II/19', '', 0, 0),
(1645, 251, 98, 200000, '037/LBM/II/19', '', 0, 0),
(1646, 252, 98, 200000, '037/LBM/II/19', '', 0, 0),
(1647, 25, 99, 1000000, '064/RP/II/19', '', 0, 0),
(1648, 351, 99, 0, '064/RP/II/19', '', 0, 0),
(1649, 50, 99, 0, '064/RP/II/19', '', 0, 0),
(1650, 156, 99, 0, '064/RP/II/19', '', 0, 0),
(1651, 251, 99, 200000, '038/LBM/II/19', '', 0, 0),
(1652, 252, 99, 200000, '038/LBM/II/19', '', 0, 0),
(1653, 251, 97, 200000, '036/LBM/II/19', '', 0, 0),
(1654, 252, 97, 200000, '036/LBM/II/19', '', 0, 0),
(1655, 252, 100, 200000, '039/LBM/II/19', '', 0, 0),
(1656, 251, 100, 200000, '039/LBM/II/19', '', 0, 0),
(1657, 252, 101, 200000, '040/LBM/II/19', '', 0, 0),
(1658, 251, 101, 200000, '040/LBM/II/19', '', 0, 0),
(1659, 219, 102, 750000, '013/MY/II/19', '', 0, 0),
(1660, 353, 102, 750000, '013/MY/II/19', '', 0, 0),
(1661, 252, 103, 200000, '042/LBM/II/19', '', 0, 0),
(1662, 251, 103, 200000, '042/LBM/II/19', '', 0, 0),
(1663, 252, 104, 200000, '043/LBM/II/19', '', 0, 0),
(1664, 251, 104, 200000, '043/LBM/II/19', '', 0, 0),
(1665, 252, 105, 200000, '044/LBM/II/19', '', 0, 0),
(1666, 251, 105, 200000, '044/LBM/II/19', '', 0, 0),
(1667, 252, 106, 200000, '045/LBM/II/19', '', 0, 0),
(1668, 251, 106, 200000, '045/LBM/II/19', '', 0, 0),
(1669, 252, 107, 200000, '046/LBM/II/19', '', 0, 0),
(1670, 251, 107, 200000, '046/LBM/II/19', '', 0, 0),
(1671, 252, 108, 200000, '047/LBM/II/19', '', 0, 0),
(1672, 251, 108, 200000, '047/LBM/II/19', '', 0, 0),
(1673, 252, 109, 200000, '048/LBM/II/19', '', 0, 0),
(1674, 251, 109, 200000, '048/LBM/II/19', '', 0, 0),
(1675, 252, 110, 200000, '049/LBM/II/19', '', 0, 0),
(1676, 251, 110, 200000, '049/LBM/II/19', '', 0, 0),
(1677, 219, 111, 750000, '014/MY/II/19', '', 0, 0),
(1678, 353, 111, 750000, '014/MY/II/19', '', 0, 0),
(1679, 251, 102, 200000, '041/LBM/II/19', '', 0, 0),
(1680, 251, 111, 200000, '050/LBM/II/19', '', 0, 0),
(1681, 2, 112, 0, '000/RP/II/19', '', 0, 4),
(1682, 41, 112, 0, '000/RP/II/19', '', 0, 4),
(1683, 46, 112, 0, '000/RP/II/19', '', 0, 4),
(1684, 52, 112, 0, '000/RP/II/19', '', 0, 4),
(1685, 56, 112, 0, '000/RP/II/19', '', 0, 4),
(1686, 55, 112, 0, '000/RP/II/19', '', 0, 4),
(1687, 90, 112, 0, '000/RP/II/19', '', 0, 4),
(1688, 49, 112, 0, '000/RP/II/19', '', 0, 5),
(1689, 69, 112, 0, '000/RP/II/19', '', 0, 5),
(1690, 81, 112, 0, '000/RP/II/19', '', 0, 5),
(1691, 94, 112, 0, '000/RP/II/19', '', 0, 5),
(1692, 89, 112, 0, '000/RP/II/19', '', 0, 5),
(1693, 29, 112, 0, '000/RP/II/19', '', 0, 5),
(1694, 44, 112, 0, '000/RP/II/19', '', 0, 5),
(1695, 35, 113, 0, '000/RP/II/19', '', 0, 6),
(1696, 45, 113, 0, '000/RP/II/19', '', 0, 6),
(1697, 50, 113, 0, '000/RP/II/19', '', 0, 6),
(1698, 60, 113, 0, '000/RP/II/19', '', 0, 6),
(1699, 79, 113, 0, '000/RP/II/19', '', 0, 6),
(1700, 96, 113, 0, '000/RP/II/19', '', 0, 6),
(1701, 100, 113, 0, '000/RP/II/19', '', 0, 6),
(1702, 189, 113, 0, '000/RP/II/19', '', 0, 6),
(1703, 25, 113, 0, '000/RP/II/19', '', 0, 7),
(1704, 31, 113, 0, '000/RP/II/19', '', 0, 7),
(1705, 58, 113, 0, '000/RP/II/19', '', 0, 7),
(1706, 62, 113, 0, '000/RP/II/19', '', 0, 7),
(1707, 67, 113, 0, '000/RP/II/19', '', 0, 7),
(1708, 219, 113, 0, '000/MY/II/19', '', 0, 0),
(1709, 279, 114, 500000, '003/FP/II/19', '', 0, 0),
(1710, 338, 115, 0, '017/BN/II/19', '', 0, 0),
(1711, 336, 116, 0, '018/BN/II/19', '', 0, 0),
(1712, 338, 116, 0, '018/BN/II/19', '', 0, 0),
(1713, 224, 117, 0, '065/MIK/II/19', '', 0, 0),
(1714, 225, 117, 0, '065/MIK/II/19', '', 0, 0),
(1715, 228, 117, 0, '065/MIK/II/19', '', 0, 0),
(1716, 229, 117, 0, '065/MIK/II/19', '', 0, 0),
(1717, 230, 117, 0, '065/MIK/II/19', '', 0, 0),
(1718, 345, 117, 0, '065/MIK/II/19', '', 0, 0),
(1719, 224, 118, 0, '066/MIK/II/19', '', 0, 0),
(1720, 225, 118, 0, '066/MIK/II/19', '', 0, 0),
(1721, 228, 118, 0, '066/MIK/II/19', '', 0, 0),
(1722, 229, 118, 0, '066/MIK/II/19', '', 0, 0),
(1723, 230, 118, 0, '066/MIK/II/19', '', 0, 0),
(1724, 345, 118, 0, '066/MIK/II/19', '', 0, 0),
(1725, 224, 119, 0, '067/MIK/II/19', '', 0, 0),
(1726, 225, 119, 0, '067/MIK/II/19', '', 0, 0),
(1727, 228, 119, 0, '067/MIK/II/19', '', 0, 0),
(1728, 229, 119, 0, '067/MIK/II/19', '', 0, 0),
(1729, 230, 119, 0, '067/MIK/II/19', '', 0, 0),
(1730, 345, 119, 0, '067/MIK/II/19', '', 0, 0),
(1731, 224, 120, 0, '068/MIK/II/19', '', 0, 0),
(1732, 225, 120, 0, '068/MIK/II/19', '', 0, 0),
(1733, 228, 120, 0, '068/MIK/II/19', '', 0, 0),
(1734, 229, 120, 0, '068/MIK/II/19', '', 0, 0),
(1735, 230, 120, 0, '068/MIK/II/19', '', 0, 0),
(1736, 345, 120, 0, '068/MIK/II/19', '', 0, 0),
(1737, 224, 121, 0, '069/MIK/II/19', '', 0, 0),
(1738, 225, 121, 0, '069/MIK/II/19', '', 0, 0),
(1739, 228, 121, 0, '069/MIK/II/19', '', 0, 0),
(1740, 229, 121, 0, '069/MIK/II/19', '', 0, 0),
(1741, 230, 121, 0, '069/MIK/II/19', '', 0, 0),
(1742, 345, 121, 0, '069/MIK/II/19', '', 0, 0),
(1755, 224, 125, 0, '070/MIK/II/19', '', 0, 0),
(1756, 225, 125, 0, '070/MIK/II/19', '', 0, 0),
(1757, 228, 125, 0, '070/MIK/II/19', '', 0, 0),
(1758, 229, 125, 0, '070/MIK/II/19', '', 0, 0),
(1759, 230, 125, 0, '070/MIK/II/19', '', 0, 0),
(1760, 345, 125, 0, '070/MIK/II/19', '', 0, 0),
(1767, 224, 127, 0, '071/MIK/II/19', '', 0, 0),
(1768, 225, 127, 0, '071/MIK/II/19', '', 0, 0),
(1769, 228, 127, 0, '071/MIK/II/19', '', 0, 0),
(1770, 229, 127, 0, '071/MIK/II/19', '', 0, 0),
(1771, 230, 127, 0, '071/MIK/II/19', '', 0, 0),
(1772, 345, 127, 0, '071/MIK/II/19', '', 0, 0),
(1773, 224, 128, 0, '073/MIK/II/19', '', 0, 0),
(1774, 225, 128, 0, '073/MIK/II/19', '', 0, 0),
(1775, 228, 128, 0, '072/MIK/II/19', '', 0, 0),
(1776, 229, 128, 0, '072/MIK/II/19', '', 0, 0),
(1777, 230, 128, 0, '072/MIK/II/19', '', 0, 0),
(1778, 345, 128, 0, '072/MIK/II/19', '', 0, 0),
(1779, 224, 129, 0, '074/MIK/II/19', '', 0, 0),
(1780, 225, 129, 0, '073/MIK/II/19', '', 0, 0),
(1781, 228, 129, 0, '073/MIK/II/19', '', 0, 0),
(1782, 229, 129, 0, '073/MIK/II/19', '', 0, 0),
(1783, 230, 129, 0, '073/MIK/II/19', '', 0, 0),
(1784, 345, 129, 0, '073/MIK/II/19', '', 0, 0),
(1785, 224, 130, 0, '075/MIK/II/19', '', 0, 0),
(1786, 225, 130, 0, '074/MIK/II/19', '', 0, 0),
(1787, 228, 130, 0, '074/MIK/II/19', '', 0, 0),
(1788, 229, 130, 0, '074/MIK/II/19', '', 0, 0),
(1789, 230, 130, 0, '074/MIK/II/19', '', 0, 0),
(1790, 345, 130, 0, '074/MIK/II/19', '', 0, 0),
(1791, 224, 131, 0, '076/MIK/II/19', '', 0, 0),
(1792, 225, 131, 0, '075/MIK/II/19', '', 0, 0),
(1793, 228, 131, 0, '075/MIK/II/19', '', 0, 0),
(1794, 229, 131, 0, '075/MIK/II/19', '', 0, 0),
(1795, 230, 131, 0, '075/MIK/II/19', '', 0, 0),
(1796, 345, 131, 0, '075/MIK/II/19', '', 0, 0),
(1797, 224, 132, 0, '072/MIK/II/19', '', 0, 0),
(1798, 225, 132, 0, '072/MIK/II/19', '', 0, 0),
(1799, 228, 132, 0, '072/MIK/II/19', '', 0, 0),
(1800, 229, 132, 0, '072/MIK/II/19', '', 0, 0),
(1801, 230, 132, 0, '072/MIK/II/19', '', 0, 0),
(1802, 345, 132, 0, '072/MIK/II/19', '', 0, 0),
(1809, 312, 134, 500000, '004/FP/II/19', 'Piraklostrobin 133 g/l', 0, 0),
(1810, 284, 134, 500000, '004/FP/II/19', 'Epoksikonazol 50 g/l', 0, 0),
(1811, 251, 135, 200000, '051/LBM/II/19', '', 0, 0),
(1812, 252, 135, 200000, '051/LBM/II/19', '', 0, 0),
(1813, 251, 136, 200000, '052/LBM/II/19', '', 0, 0),
(1814, 252, 136, 200000, '052/LBM/II/19', '', 0, 0),
(1815, 251, 137, 200000, '053/LBM/II/19', '', 0, 0),
(1816, 252, 137, 200000, '053/LBM/II/19', '', 0, 0),
(1817, 251, 138, 200000, '054/LBM/II/19', '', 0, 0),
(1818, 252, 138, 200000, '054/LBM/II/19', '', 0, 0),
(1819, 251, 139, 200000, '055/LBM/II/19', '', 0, 0),
(1820, 252, 139, 200000, '055/LBM/II/19', '', 0, 0),
(1821, 251, 140, 200000, '056/LBM/II/19', '', 0, 0),
(1822, 252, 140, 200000, '056/LBM/II/19', '', 0, 0),
(1823, 251, 141, 200000, '057/LBM/II/19', '', 0, 0),
(1824, 252, 141, 200000, '057/LBM/II/19', '', 0, 0),
(1825, 251, 142, 200000, '058/LBM/II/19', '', 0, 0),
(1826, 252, 142, 200000, '058/LBM/II/19', '', 0, 0),
(1827, 251, 143, 200000, '059/LBM/II/19', '', 0, 0),
(1828, 252, 143, 200000, '059/LBM/II/19', '', 0, 0),
(1829, 251, 144, 200000, '060/LBM/II/19', '', 0, 0),
(1830, 252, 144, 200000, '060/LBM/II/19', '', 0, 0),
(1831, 251, 145, 200000, '061/LBM/II/19', '', 0, 0),
(1832, 252, 145, 200000, '061/LBM/II/19', '', 0, 0),
(1833, 251, 146, 200000, '062/LBM/II/19', '', 0, 0),
(1834, 252, 146, 200000, '062/LBM/II/19', '', 0, 0),
(1835, 251, 147, 200000, '063/LBM/II/19', '', 0, 0),
(1836, 252, 147, 200000, '063/LBM/II/19', '', 0, 0),
(1837, 48, 148, 1000000, '065/RP/II/19', '', 0, 0),
(1838, 102, 148, 0, '065/RP/II/19', '', 0, 0),
(1839, 25, 148, 0, '065/RP/II/19', '', 0, 0),
(1840, 105, 148, 0, '065/RP/II/19', '', 0, 0),
(1841, 114, 148, 0, '065/RP/II/19', '', 0, 0),
(1842, 121, 148, 0, '065/RP/II/19', '', 0, 0),
(1843, 133, 148, 0, '065/RP/II/19', '', 0, 0),
(1844, 139, 148, 0, '065/RP/II/19', '', 0, 0),
(1845, 147, 148, 0, '065/RP/II/19', '', 0, 0),
(1846, 157, 148, 0, '065/RP/II/19', '', 0, 0),
(1847, 164, 148, 0, '065/RP/II/19', '', 0, 0),
(1848, 170, 148, 0, '065/RP/II/19', '', 0, 0),
(1849, 340, 148, 0, '065/RP/II/19', '', 0, 0),
(1850, 189, 148, 0, '065/RP/II/19', '', 0, 0),
(1851, 205, 148, 0, '065/RP/II/19', '', 0, 0),
(1852, 251, 148, 200000, '064/LBM/II/19', '', 0, 0),
(1853, 252, 148, 200000, '064/LBM/II/19', '', 0, 0),
(1854, 251, 149, 200000, '065/LBM/II/19', '', 0, 0),
(1855, 252, 149, 200000, '065/LBM/II/19', '', 0, 0),
(1856, 251, 150, 200000, '066/LBM/II/19', '', 0, 0),
(1857, 252, 150, 200000, '066/LBM/II/19', '', 0, 0),
(1858, 251, 151, 200000, '067/LBM/II/19', '', 0, 0),
(1859, 252, 151, 200000, '067/LBM/II/19', '', 0, 0),
(1860, 219, 152, 750000, '015/MY/II/19', '', 0, 0),
(1861, 353, 152, 750000, '015/MY/II/19', '', 0, 0),
(1862, 251, 152, 200000, '068/LBM/II/19', '', 0, 0),
(1863, 219, 153, 750000, '016/MY/II/19', '', 0, 0),
(1864, 353, 153, 750000, '016/MY/II/19', '', 0, 0),
(1865, 251, 153, 200000, '069/LBM/II/19', '', 0, 0),
(1866, 251, 154, 200000, '070/LBM/II/19', '', 0, 0),
(1867, 252, 154, 200000, '070/LBM/II/19', '', 0, 0),
(1868, 251, 155, 200000, '071/LBM/II/19', '', 0, 0),
(1869, 252, 155, 200000, '071/LBM/II/19', '', 0, 0),
(1870, 251, 156, 200000, '072/LBM/II/19', '', 0, 0),
(1871, 252, 156, 200000, '072/LBM/II/19', '', 0, 0),
(1872, 251, 157, 200000, '073/LBM/II/19', '', 0, 0),
(1873, 252, 157, 200000, '073/LBM/II/19', '', 0, 0),
(1874, 251, 158, 200000, '074/LBM/II/19', '', 0, 0),
(1875, 252, 158, 200000, '074/LBM/II/19', '', 0, 0),
(1876, 251, 159, 200000, '075/LBM/II/19', '', 0, 0),
(1877, 252, 159, 200000, '075/LBM/II/19', '', 0, 0),
(1878, 10, 160, 1000000, '066/RP/II/19', '', 0, 0),
(1879, 124, 160, 0, '066/RP/II/19', '', 0, 0),
(1880, 184, 160, 0, '066/RP/II/19', '', 0, 0),
(1881, 197, 160, 0, '066/RP/II/19', '', 0, 0),
(1882, 205, 160, 0, '066/RP/II/19', '', 0, 0),
(1883, 251, 160, 200000, '076/LBM/II/19', '', 0, 0),
(1884, 252, 160, 200000, '076/LBM/II/19', '', 0, 0),
(1885, 219, 161, 750000, '017/MY/II/19', '', 0, 0),
(1886, 353, 161, 750000, '017/MY/II/19', '', 0, 0),
(1887, 251, 161, 200000, '077/LBM/II/19', '', 0, 0),
(1888, 252, 161, 200000, '077/LBM/II/19', '', 0, 0),
(1889, 251, 162, 200000, '078/LBM/II/19', '', 0, 0),
(1890, 252, 162, 200000, '078/LBM/II/19', '', 0, 0),
(1891, 48, 163, 1000000, '067/RP/II/19', '', 0, 0),
(1892, 102, 163, 0, '067/RP/II/19', '', 0, 0),
(1893, 25, 163, 0, '067/RP/II/19', '', 0, 0),
(1894, 105, 163, 0, '067/RP/II/19', '', 0, 0),
(1895, 114, 163, 0, '067/RP/II/19', '', 0, 0),
(1896, 121, 163, 0, '067/RP/II/19', '', 0, 0),
(1897, 133, 163, 0, '067/RP/II/19', '', 0, 0),
(1898, 139, 163, 0, '067/RP/II/19', '', 0, 0),
(1899, 147, 163, 0, '067/RP/II/19', '', 0, 0),
(1900, 157, 163, 0, '067/RP/II/19', '', 0, 0),
(1901, 164, 163, 0, '067/RP/II/19', '', 0, 0),
(1902, 170, 163, 0, '067/RP/II/19', '', 0, 0),
(1903, 340, 163, 0, '067/RP/II/19', '', 0, 0),
(1904, 189, 163, 0, '067/RP/II/19', '', 0, 0),
(1905, 205, 163, 0, '067/RP/II/19', '', 0, 0),
(1906, 251, 163, 200000, '079/LBM/II/19', '', 0, 0),
(1907, 252, 163, 200000, '079/LBM/II/19', '', 0, 0),
(1908, 251, 164, 200000, '080/LBM/II/19', '', 0, 0),
(1909, 252, 164, 200000, '080/LBM/II/19', '', 0, 0),
(1910, 251, 165, 200000, '081/LBM/II/19', '', 0, 0),
(1911, 252, 165, 200000, '081/LBM/II/19', '', 0, 0),
(1912, 251, 166, 200000, '082/LBM/II/19', '', 0, 0),
(1913, 252, 166, 200000, '082/LBM/II/19', '', 0, 0),
(1914, 251, 167, 200000, '083/LBM/II/19', '', 0, 0),
(1915, 252, 167, 200000, '083/LBM/II/19', '', 0, 0),
(1916, 251, 168, 200000, '084/LBM/II/19', '', 0, 0),
(1917, 252, 168, 200000, '084/LBM/II/19', '', 0, 0),
(1918, 224, 169, 50000, '077/MIK/II/19', '', 0, 0),
(1919, 226, 169, 150000, '077/MIK/II/19', '', 0, 0),
(1920, 345, 169, 100000, '077/MIK/II/19', '', 0, 0),
(1921, 2, 170, 500000, '068/RP/II/19', '', 8, 4),
(1922, 41, 170, 0, '068/RP/II/19', '', 8, 4),
(1923, 46, 170, 0, '068/RP/II/19', '', 8, 4),
(1924, 52, 170, 0, '068/RP/II/19', '', 8, 4),
(1925, 56, 170, 0, '068/RP/II/19', '', 8, 4),
(1926, 55, 170, 0, '068/RP/II/19', '', 8, 4),
(1927, 90, 170, 0, '068/RP/II/19', '', 8, 4),
(1928, 2, 171, 500000, '069/RP/II/19', '', 8, 4),
(1929, 41, 171, 0, '069/RP/II/19', '', 8, 4),
(1930, 46, 171, 0, '069/RP/II/19', '', 8, 4),
(1931, 52, 171, 0, '069/RP/II/19', '', 8, 4),
(1932, 56, 171, 0, '069/RP/II/19', '', 8, 4),
(1933, 55, 171, 0, '069/RP/II/19', '', 8, 4),
(1934, 90, 171, 0, '069/RP/II/19', '', 8, 4),
(1935, 2, 172, 500000, '070/RP/II/19', '', 8, 4),
(1936, 41, 172, 0, '070/RP/II/19', '', 8, 4),
(1937, 46, 172, 0, '070/RP/II/19', '', 8, 4),
(1938, 52, 172, 0, '070/RP/II/19', '', 8, 4),
(1939, 56, 172, 0, '070/RP/II/19', '', 8, 4),
(1940, 55, 172, 0, '070/RP/II/19', '', 8, 4),
(1941, 90, 172, 0, '070/RP/II/19', '', 8, 4),
(1942, 2, 173, 500000, '071/RP/II/19', '', 8, 4),
(1943, 41, 173, 0, '071/RP/II/19', '', 8, 4),
(1944, 46, 173, 0, '071/RP/II/19', '', 8, 4),
(1945, 52, 173, 0, '071/RP/II/19', '', 8, 4),
(1946, 56, 173, 0, '071/RP/II/19', '', 8, 4),
(1947, 55, 173, 0, '071/RP/II/19', '', 8, 4),
(1948, 90, 173, 0, '071/RP/II/19', '', 8, 4),
(1949, 2, 174, 500000, '072/RP/II/19', '', 8, 4),
(1950, 41, 174, 0, '072/RP/II/19', '', 8, 4),
(1951, 46, 174, 0, '072/RP/II/19', '', 8, 4),
(1952, 52, 174, 0, '072/RP/II/19', '', 8, 4),
(1953, 56, 174, 0, '072/RP/II/19', '', 8, 4),
(1954, 55, 174, 0, '072/RP/II/19', '', 8, 4),
(1955, 90, 174, 0, '072/RP/II/19', '', 8, 4),
(1956, 2, 175, 500000, '073/RP/II/19', '', 8, 4),
(1957, 41, 175, 0, '073/RP/II/19', '', 8, 4),
(1958, 46, 175, 0, '073/RP/II/19', '', 8, 4),
(1959, 52, 175, 0, '073/RP/II/19', '', 8, 4),
(1960, 56, 175, 0, '073/RP/II/19', '', 8, 4),
(1961, 55, 175, 0, '073/RP/II/19', '', 8, 4),
(1962, 90, 175, 0, '073/RP/II/19', '', 8, 4),
(1963, 2, 176, 500000, '074/RP/II/19', '', 8, 4),
(1964, 41, 176, 0, '074/RP/II/19', '', 8, 4),
(1965, 46, 176, 0, '074/RP/II/19', '', 8, 4),
(1966, 52, 176, 0, '074/RP/II/19', '', 8, 4),
(1967, 56, 176, 0, '074/RP/II/19', '', 8, 4),
(1968, 55, 176, 0, '074/RP/II/19', '', 8, 4),
(1969, 90, 176, 0, '074/RP/II/19', '', 8, 4),
(1970, 2, 177, 500000, '075/RP/II/19', '', 8, 4),
(1971, 41, 177, 0, '075/RP/II/19', '', 8, 4),
(1972, 46, 177, 0, '075/RP/II/19', '', 8, 4),
(1973, 52, 177, 0, '075/RP/II/19', '', 8, 4),
(1974, 56, 177, 0, '075/RP/II/19', '', 8, 4),
(1975, 55, 177, 0, '075/RP/II/19', '', 8, 4),
(1976, 90, 177, 0, '075/RP/II/19', '', 8, 4),
(1977, 2, 178, 500000, '076/RP/II/19', '', 8, 4),
(1978, 41, 178, 0, '076/RP/II/19', '', 8, 4),
(1979, 46, 178, 0, '076/RP/II/19', '', 8, 4),
(1980, 52, 178, 0, '076/RP/II/19', '', 8, 4),
(1981, 56, 178, 0, '076/RP/II/19', '', 8, 4),
(1982, 55, 178, 0, '076/RP/II/19', '', 8, 4),
(1983, 90, 178, 0, '076/RP/II/19', '', 8, 4),
(1984, 2, 179, 500000, '077/RP/II/19', '', 8, 4),
(1985, 41, 179, 0, '077/RP/II/19', '', 8, 4),
(1986, 46, 179, 0, '077/RP/II/19', '', 8, 4),
(1987, 52, 179, 0, '077/RP/II/19', '', 8, 4),
(1988, 56, 179, 0, '077/RP/II/19', '', 8, 4),
(1989, 55, 179, 0, '077/RP/II/19', '', 8, 4),
(1990, 90, 179, 0, '077/RP/II/19', '', 8, 4),
(1991, 2, 180, 500000, '078/RP/II/19', '', 8, 4),
(1992, 41, 180, 0, '078/RP/II/19', '', 8, 4),
(1993, 46, 180, 0, '078/RP/II/19', '', 8, 4),
(1994, 52, 180, 0, '078/RP/II/19', '', 8, 4),
(1995, 56, 180, 0, '078/RP/II/19', '', 8, 4),
(1996, 55, 180, 0, '078/RP/II/19', '', 8, 4),
(1997, 90, 180, 0, '078/RP/II/19', '', 8, 4),
(1998, 245, 181, 50000, '016/KN/II/19', '', 3, 0),
(1999, 1, 182, 1000000, '079/RP/II/19', '', 0, 0),
(2000, 105, 182, 0, '079/RP/II/19', '', 0, 0),
(2001, 31, 182, 0, '079/RP/II/19', '', 0, 0),
(2002, 50, 182, 0, '079/RP/II/19', '', 0, 0),
(2003, 83, 182, 0, '079/RP/II/19', '', 0, 0),
(2004, 156, 182, 0, '079/RP/II/19', '', 0, 0),
(2005, 93, 182, 0, '079/RP/II/19', '', 0, 0),
(2006, 206, 182, 0, '079/RP/II/19', '', 0, 0),
(2007, 354, 182, 750, '018//RP/II/19', '', 0, 0),
(2008, 1, 183, 1000000, '080/RP/II/19', '', 0, 0),
(2009, 105, 183, 0, '080/RP/II/19', '', 0, 0),
(2010, 31, 183, 0, '080/RP/II/19', '', 0, 0),
(2011, 50, 183, 0, '080/RP/II/19', '', 0, 0),
(2012, 83, 183, 0, '080/RP/II/19', '', 0, 0),
(2013, 156, 183, 0, '080/RP/II/19', '', 0, 0),
(2014, 93, 183, 0, '080/RP/II/19', '', 0, 0),
(2015, 205, 183, 0, '080/RP/II/19', '', 0, 0),
(2016, 223, 183, 750, '019/MY/II/19', '', 0, 0),
(2017, 251, 183, 200, '086/LBM/II/19', '', 0, 0),
(2018, 252, 183, 200, '086/LBM/II/19', '', 0, 0),
(2019, 1, 184, 1000000, '081/RP/II/19', '', 0, 0),
(2020, 105, 184, 0, '081/RP/II/19', '', 0, 0),
(2021, 31, 184, 0, '081/RP/II/19', '', 0, 0),
(2022, 50, 184, 0, '081/RP/II/19', '', 0, 0),
(2023, 83, 184, 0, '081/RP/II/19', '', 0, 0),
(2024, 156, 184, 0, '081/RP/II/19', '', 0, 0),
(2025, 93, 184, 0, '081/RP/II/19', '', 0, 0),
(2026, 205, 184, 0, '081/RP/II/19', '', 0, 0),
(2027, 223, 184, 750, '020/MY/II/19', '', 0, 0),
(2028, 251, 184, 200, '087/LBM/II/19', '', 0, 0),
(2029, 252, 184, 200, '087/LBM/II/19', '', 0, 0),
(2030, 251, 185, 200, '088/LBM/II/19', '', 0, 0),
(2031, 252, 185, 200, '088/LBM/II/19', '', 0, 0),
(2032, 4, 186, 1000000, '082/RP/II/19', '', 0, 0),
(2033, 70, 186, 0, '082/RP/II/19', '', 0, 0),
(2034, 13, 186, 0, '082/RP/II/19', '', 0, 0),
(2035, 73, 186, 0, '082/RP/II/19', '', 0, 0),
(2036, 105, 186, 0, '082/RP/II/19', '', 0, 0),
(2037, 65, 186, 0, '082/RP/II/19', '', 0, 0),
(2038, 138, 186, 0, '082/RP/II/19', '', 0, 0),
(2039, 141, 186, 0, '082/RP/II/19', '', 0, 0),
(2040, 146, 186, 0, '082/RP/II/19', '', 0, 0),
(2041, 288, 186, 0, '000/FP/II/19', '', 0, 0),
(2042, 167, 186, 0, '082/RP/II/19', '', 0, 0),
(2043, 90, 186, 0, '000/RP/II/19', '', 0, 0),
(2044, 58, 186, 0, '082/RP/II/19', '', 0, 0),
(2045, 194, 186, 0, '082/RP/II/19', '', 0, 0),
(2046, 205, 186, 0, '082/RP/II/19', '', 0, 0),
(2047, 251, 186, 200, '089/LBM/II/19', '', 0, 0),
(2048, 252, 186, 200, '089/LBM/II/19', '', 0, 0),
(2049, 165, 187, 1000000, '083/RP/II/19', '', 0, 0),
(2050, 175, 187, 0, '083/RP/II/19', '', 0, 0),
(2051, 251, 187, 200, '090/LBM/II/19', '', 0, 0),
(2052, 252, 187, 200, '090/LBM/II/19', '', 0, 0),
(2053, 165, 188, 1000000, '084/RP/II/19', '', 0, 0),
(2054, 175, 188, 0, '084/RP/II/19', '', 0, 0),
(2055, 251, 188, 200, '091/LBM/II/19', '', 0, 0),
(2056, 252, 188, 200, '091/LBM/II/19', '', 0, 0),
(2057, 1, 189, 1000000, '085/RP/II/19', '', 0, 0),
(2058, 4, 189, 0, '000/RP/II/19', '', 0, 0),
(2059, 11, 189, 0, '000//II/19', '', 0, 0),
(2060, 251, 182, 200, '085/LBM/II/19', '', 0, 0),
(2061, 252, 182, 200, '085/LBM/II/19', '', 0, 0),
(2062, 224, 190, 50, '078/MIK/II/19', '', 0, 0),
(2063, 226, 190, 150, '078/MIK/II/19', '', 0, 0),
(2064, 345, 190, 100, '078/MIK/II/19', '', 0, 0),
(2065, 4, 191, 1000000, '086/RP/II/19', '', 0, 0),
(2066, 48, 191, 0, '086/RP/II/19', '', 0, 0),
(2067, 70, 191, 0, '086/RP/II/19', '', 0, 0),
(2068, 105, 191, 0, '086/RP/II/19', '', 0, 0),
(2069, 356, 191, 0, '000//II/19', '', 0, 0),
(2070, 70, 189, 0, '000/RP/II/19', '', 0, 0),
(2071, 25, 189, 0, '000/RP/II/19', '', 0, 0),
(2072, 105, 189, 0, '000/RP/II/19', '', 0, 0),
(2073, 35, 189, 0, '000/RP/II/19', '', 0, 0),
(2074, 34, 189, 0, '000/RP/II/19', '', 0, 0),
(2075, 124, 189, 0, '000/RP/II/19', '', 0, 0),
(2076, 68, 189, 0, '000/RP/II/19', '', 0, 0),
(2077, 79, 189, 0, '000/RP/II/19', '', 0, 0),
(2078, 340, 189, 0, '000/RP/II/19', '', 0, 0),
(2079, 93, 189, 0, '000/RP/II/19', '', 0, 0),
(2080, 58, 189, 0, '000/RP/II/19', '', 0, 0),
(2081, 89, 189, 0, '000/RP/II/19', '', 0, 0),
(2082, 251, 189, 200, '092/LBM/II/19', '', 0, 0),
(2083, 252, 189, 200, '092/LBM/II/19', '', 0, 0),
(2084, 4, 192, 1000000, '087/RP/II/19', '', 0, 0),
(2085, 48, 192, 0, '087/RP/II/19', '', 0, 0),
(2086, 70, 192, 0, '087/RP/II/19', '', 0, 0),
(2087, 105, 192, 0, '087/RP/II/19', '', 0, 0),
(2088, 65, 192, 0, '087/RP/II/19', '', 0, 0),
(2089, 76, 192, 0, '087/RP/II/19', '', 0, 0),
(2090, 153, 192, 0, '087/RP/II/19', '', 0, 0),
(2091, 157, 192, 0, '087/RP/II/19', '', 0, 0),
(2092, 164, 192, 0, '087/RP/II/19', '', 0, 0),
(2093, 340, 192, 0, '087/RP/II/19', '', 0, 0),
(2094, 62, 192, 0, '087/RP/II/19', '', 0, 0),
(2095, 89, 192, 0, '087/RP/II/19', '', 0, 0),
(2096, 192, 192, 0, '087/RP/II/19', '', 0, 0),
(2097, 205, 192, 0, '087/RP/II/19', '', 0, 0),
(2098, 219, 192, 750, '022/MY/II/19', '', 0, 0),
(2099, 353, 192, 750, '022/MY/II/19', '', 0, 0),
(2100, 251, 193, 200, '093/LBM/II/19', '', 0, 0),
(2101, 252, 193, 200, '093/LBM/II/19', '', 0, 0),
(2102, 65, 194, 1000000, '088/RP/II/19', '', 0, 0),
(2103, 25, 194, 0, '088/RP/II/19', '', 0, 0),
(2104, 90, 194, 0, '088/RP/II/19', '', 0, 0),
(2105, 31, 194, 0, '088/RP/II/19', '', 0, 0),
(2106, 184, 194, 0, '088/RP/II/19', '', 0, 0),
(2107, 251, 194, 200, '094/LBM/II/19', '', 0, 0),
(2108, 252, 194, 200, '094/LBM/II/19', '', 0, 0),
(2109, 65, 191, 0, '000/RP/II/19', '', 0, 0),
(2110, 76, 191, 0, '000/RP/II/19', '', 0, 0),
(2111, 153, 191, 0, '000/RP/II/19', '', 0, 0),
(2112, 157, 191, 0, '000/RP/II/19', '', 0, 0),
(2113, 164, 191, 0, '000/RP/II/19', '', 0, 0),
(2114, 340, 191, 0, '000/RP/II/19', '', 0, 0),
(2115, 62, 191, 0, '086/RP/II/19', '', 0, 0),
(2116, 89, 191, 0, '000/RP/II/19', '', 0, 0),
(2117, 192, 191, 0, '000/RP/II/19', '', 0, 0),
(2118, 205, 191, 0, '000/RP/II/19', '', 0, 0),
(2119, 219, 191, 750, '021/MY/II/19', '', 0, 0),
(2120, 353, 191, 750, '021/MY/II/19', '', 0, 0),
(2121, 251, 195, 200000, '095/LBM/II/19', '', 0, 0),
(2122, 252, 195, 200000, '095/LBM/II/19', '', 0, 0),
(2123, 251, 196, 200000, '096/LBM/II/19', '', 0, 0),
(2124, 252, 196, 200000, '096/LBM/II/19', '', 0, 0),
(2125, 251, 197, 200000, '097/LBM/II/19', '', 0, 0),
(2126, 252, 197, 200000, '097/LBM/II/19', '', 0, 0),
(2127, 251, 198, 200000, '098/LBM/II/19', '', 0, 0),
(2128, 252, 198, 200000, '098/LBM/II/19', '', 0, 0),
(2129, 251, 199, 200000, '099/LBM/II/19', '', 0, 0),
(2130, 252, 199, 200000, '099/LBM/II/19', '', 0, 0),
(2131, 219, 200, 750000, '023/MY/II/19', '', 0, 0),
(2132, 353, 200, 750000, '023/MY/II/19', '', 0, 0),
(2133, 251, 200, 200000, '100/LBM/II/19', '', 0, 0),
(2134, 219, 201, 750000, '024/MY/II/19', '', 0, 0),
(2135, 353, 201, 750000, '024/MY/II/19', '', 0, 0),
(2136, 251, 201, 200000, '101/LBM/II/19', '', 0, 0),
(2137, 252, 201, 200000, '101/LBM/II/19', '', 0, 0),
(2138, 251, 202, 200000, '102/LBM/II/19', '', 0, 0),
(2139, 252, 202, 200000, '102/LBM/II/19', '', 0, 0),
(2140, 251, 203, 200000, '103/LBM/II/19', '', 0, 0),
(2141, 252, 203, 200000, '103/LBM/II/19', '', 0, 0),
(2142, 251, 204, 200000, '104/LBM/II/19', '', 0, 0),
(2143, 252, 204, 200000, '104/LBM/II/19', '', 0, 0),
(2144, 251, 205, 200000, '105/LBM/II/19', '', 0, 0),
(2145, 252, 205, 200000, '105/LBM/II/19', '', 0, 0),
(2146, 219, 206, 750000, '025/MY/II/19', '', 0, 0),
(2147, 353, 206, 750000, '025/MY/II/19', '', 0, 0),
(2148, 251, 206, 200000, '106/LBM/II/19', '', 0, 0),
(2149, 10, 207, 1000000, '089/RP/II/19', '', 0, 0),
(2150, 124, 207, 0, '089/RP/II/19', '', 0, 0),
(2151, 184, 207, 0, '089/RP/II/19', '', 0, 0),
(2152, 197, 207, 0, '089/RP/II/19', '', 0, 0),
(2153, 205, 207, 0, '089/RP/II/19', '', 0, 0),
(2154, 251, 207, 200000, '107/LBM/II/19', '', 0, 0),
(2155, 252, 207, 200000, '107/LBM/II/19', '', 0, 0),
(2156, 251, 208, 200000, '108/LBM/II/19', '', 0, 0),
(2157, 252, 208, 200000, '108/LBM/II/19', '', 0, 0),
(2158, 0, 209, 0, '', '', 0, 0),
(2159, 35, 209, 500000, '090/RP/II/19', '', 0, 6),
(2160, 45, 209, 0, '090/RP/II/19', '', 0, 6),
(2161, 50, 209, 0, '090/RP/II/19', '', 0, 6),
(2162, 60, 209, 0, '090/RP/II/19', '', 0, 6),
(2163, 79, 209, 0, '090/RP/II/19', '', 0, 6),
(2164, 96, 209, 0, '090/RP/II/19', '', 0, 6),
(2165, 100, 209, 0, '090/RP/II/19', '', 0, 6),
(2166, 189, 209, 0, '090/RP/II/19', '', 0, 6),
(2167, 35, 210, 500000, '091/RP/II/19', '', 0, 6),
(2168, 45, 210, 0, '091/RP/II/19', '', 0, 6),
(2169, 50, 210, 0, '091/RP/II/19', '', 0, 6),
(2170, 60, 210, 0, '091/RP/II/19', '', 0, 6),
(2171, 79, 210, 0, '091/RP/II/19', '', 0, 6),
(2172, 96, 210, 0, '091/RP/II/19', '', 0, 6),
(2173, 100, 210, 0, '091/RP/II/19', '', 0, 6),
(2174, 189, 210, 0, '091/RP/II/19', '', 0, 6),
(2175, 35, 211, 500000, '092/RP/II/19', '', 0, 6),
(2176, 45, 211, 0, '092/RP/II/19', '', 0, 6),
(2177, 50, 211, 0, '092/RP/II/19', '', 0, 6),
(2178, 60, 211, 0, '092/RP/II/19', '', 0, 6),
(2179, 79, 211, 0, '092/RP/II/19', '', 0, 6),
(2180, 96, 211, 0, '092/RP/II/19', '', 0, 6),
(2181, 100, 211, 0, '092/RP/II/19', '', 0, 6),
(2182, 189, 211, 0, '092/RP/II/19', '', 0, 6),
(2183, 35, 212, 500000, '093/RP/II/19', '', 0, 6),
(2184, 45, 212, 0, '093/RP/II/19', '', 0, 6),
(2185, 50, 212, 0, '093/RP/II/19', '', 0, 6),
(2186, 60, 212, 0, '093/RP/II/19', '', 0, 6),
(2187, 79, 212, 0, '093/RP/II/19', '', 0, 6),
(2188, 96, 212, 0, '093/RP/II/19', '', 0, 6),
(2189, 100, 212, 0, '093/RP/II/19', '', 0, 6),
(2190, 189, 212, 0, '093/RP/II/19', '', 0, 6),
(2191, 224, 213, 50000, '079/MIK/II/19', '', 0, 0),
(2192, 228, 213, 60000, '079/MIK/II/19', '', 0, 0),
(2193, 229, 213, 75000, '079/MIK/II/19', '', 0, 0),
(2194, 280, 214, 500000, '005/FP/II/19', 'Dinotefuron 20 %', 0, 0),
(2195, 357, 215, 500000, '006/FP/II/19', '', 0, 0),
(2196, 25, 216, 1000000, '094/RP/II/19', '', 0, 0),
(2197, 351, 216, 0, '094/RP/II/19', '', 0, 0),
(2198, 50, 216, 0, '094/RP/II/19', '', 0, 0),
(2199, 156, 216, 0, '094/RP/II/19', '', 0, 0),
(2200, 251, 216, 200000, '109/LBM/II/19', '', 0, 0),
(2201, 252, 216, 200000, '109/LBM/II/19', '', 0, 0),
(2202, 25, 217, 1000000, '095/RP/II/19', '', 0, 0),
(2203, 351, 217, 0, '095/RP/II/19', '', 0, 0),
(2204, 50, 217, 0, '095/RP/II/19', '', 0, 0),
(2205, 156, 217, 0, '095/RP/II/19', '', 0, 0),
(2206, 251, 217, 200000, '110/LBM/II/19', '', 0, 0),
(2207, 252, 217, 200000, '110/LBM/II/19', '', 0, 0),
(2208, 245, 218, 50000, '017/KN/III/19', '', 3, 0),
(2209, 245, 219, 50000, '018/KN/III/19', '', 3, 0),
(2210, 0, 220, 0, '096/RP/III/19', '', 0, 0),
(2211, 35, 220, 1000000, '096/RP/III/19', '', 0, 6),
(2212, 45, 220, 0, '096/RP/III/19', '', 0, 6),
(2213, 50, 220, 0, '096/RP/III/19', '', 0, 6),
(2214, 60, 220, 0, '096/RP/III/19', '', 0, 6),
(2215, 79, 220, 0, '096/RP/III/19', '', 0, 6),
(2216, 96, 220, 0, '096/RP/III/19', '', 0, 6),
(2217, 100, 220, 0, '096/RP/III/19', '', 0, 6),
(2218, 189, 220, 0, '096/RP/III/19', '', 0, 6),
(2219, 0, 221, 0, '097/RP/III/19', '', 0, 0),
(2220, 35, 221, 1000000, '097/RP/III/19', '', 0, 6),
(2221, 45, 221, 0, '097/RP/III/19', '', 0, 6),
(2222, 50, 221, 0, '097/RP/III/19', '', 0, 6),
(2223, 60, 221, 0, '097/RP/III/19', '', 0, 6),
(2224, 79, 221, 0, '097/RP/III/19', '', 0, 6),
(2225, 96, 221, 0, '097/RP/III/19', '', 0, 6),
(2226, 100, 221, 0, '097/RP/III/19', '', 0, 6),
(2227, 189, 221, 0, '097/RP/III/19', '', 0, 6),
(2228, 245, 222, 50000, '019/KN/III/19', '', 3, 0),
(2229, 245, 223, 50000, '020/KN/III/19', '', 3, 0),
(2230, 358, 224, 100000, '021/KN/III/19', '', 3, 0),
(2231, 358, 225, 100000, '022/KN/III/19', '', 3, 0),
(2232, 358, 226, 100000, '023/KN/III/19', '', 3, 0),
(2233, 336, 227, 15000, '019/BN/III/19', '', 0, 0),
(2234, 338, 227, 0, '019/BN/III/19', '', 0, 0),
(2235, 336, 228, 15000, '020/BN/III/19', '', 0, 0),
(2236, 337, 228, 0, '020/BN/III/19', '', 0, 0),
(2237, 338, 228, 0, '020/BN/III/19', '', 0, 0),
(2238, 339, 228, 0, '020/BN/III/19', '', 0, 0),
(2239, 336, 229, 15000, '021/BN/III/19', '', 0, 0),
(2240, 337, 229, 0, '021/BN/III/19', '', 0, 0),
(2241, 338, 229, 0, '021/BN/III/19', '', 0, 0),
(2242, 339, 229, 0, '021/BN/III/19', '', 0, 0),
(2243, 251, 230, 0, '111/LBM/III/19', '', 0, 0),
(2244, 252, 230, 0, '111/LBM/III/19', '', 0, 0),
(2245, 251, 231, 0, '112/LBM/III/19', '', 0, 0),
(2246, 252, 231, 0, '112/LBM/III/19', '', 0, 0),
(2247, 251, 232, 0, '113/LBM/III/19', '', 0, 0),
(2248, 252, 232, 0, '113/LBM/III/19', '', 0, 0),
(2249, 251, 234, 0, '114/LBM/III/19', '', 0, 0),
(2250, 252, 234, 0, '114/LBM/III/19', '', 0, 0),
(2251, 251, 235, 0, '115/LBM/III/19', '', 0, 0),
(2252, 252, 235, 0, '115/LBM/III/19', '', 0, 0),
(2253, 251, 236, 0, '116/LBM/III/19', '', 0, 0),
(2254, 252, 236, 0, '116/LBM/III/19', '', 0, 0),
(2255, 251, 237, 0, '117/LBM/III/19', '', 0, 0),
(2256, 252, 237, 0, '117/LBM/III/19', '', 0, 0),
(2257, 251, 238, 0, '118/LBM/III/19', '', 0, 0),
(2258, 252, 238, 0, '118/LBM/III/19', '', 0, 0),
(2259, 251, 239, 0, '119/LBM/III/19', '', 0, 0),
(2260, 252, 239, 0, '119/LBM/III/19', '', 0, 0),
(2261, 251, 240, 0, '120/LBM/III/19', '', 0, 0),
(2262, 252, 240, 0, '120/LBM/III/19', '', 0, 0),
(2263, 251, 241, 0, '121/LBM/III/19', '', 0, 0),
(2264, 252, 241, 0, '121/LBM/III/19', '', 0, 0),
(2265, 251, 242, 0, '122/LBM/III/19', '', 0, 0),
(2266, 252, 242, 0, '122/LBM/III/19', '', 0, 0),
(2267, 251, 243, 0, '123/LBM/III/19', '', 0, 0),
(2268, 252, 243, 0, '123/LBM/III/19', '', 0, 0),
(2269, 251, 244, 0, '124/LBM/III/19', '', 0, 0),
(2270, 252, 244, 0, '124/LBM/III/19', '', 0, 0),
(2275, 251, 247, 0, '125/LBM/III/19', '', 0, 0),
(2276, 252, 247, 0, '125/LBM/III/19', '', 0, 0),
(2277, 237, 248, 60000, '024/KN/III/19', '', 0, 0),
(2278, 236, 248, 75000, '024/KN/III/19', '', 0, 0),
(2279, 237, 249, 60000, '025/KN/III/19', '', 0, 0),
(2280, 236, 249, 75000, '025/KN/III/19', '', 0, 0),
(2281, 237, 250, 60000, '026/KN/III/19', '', 0, 0),
(2282, 236, 250, 75000, '026/KN/III/19', '', 0, 0),
(2283, 237, 251, 60000, '027/KN/III/19', '', 0, 0),
(2284, 236, 251, 75000, '027/KN/III/19', '', 0, 0),
(2288, 336, 253, 0, '000/BN/III/19', '-', 0, 0),
(2289, 337, 253, 0, '000/BN/III/19', '-', 0, 0),
(2290, 338, 253, 0, '000/BN/III/19', '-', 0, 0),
(2291, 0, 254, 0, '098/RP/III/19', '', 0, 0),
(2292, 35, 254, 0, '098/RP/III/19', '', 0, 6),
(2293, 45, 254, 0, '098/RP/III/19', '', 0, 6),
(2294, 50, 254, 0, '098/RP/III/19', '', 0, 6),
(2295, 60, 254, 0, '098/RP/III/19', '', 0, 6),
(2296, 79, 254, 0, '098/RP/III/19', '', 0, 6),
(2297, 96, 254, 0, '098/RP/III/19', '', 0, 6),
(2298, 100, 254, 0, '098/RP/III/19', '', 0, 6),
(2299, 189, 254, 0, '098/RP/III/1909', '', 0, 6),
(2300, 35, 255, 0, '099/RP/III/19', '', 0, 6),
(2301, 45, 255, 0, '099/RP/III/19', '', 0, 6),
(2302, 50, 255, 0, '099/RP/III/19', '', 0, 6),
(2303, 60, 255, 0, '099/RP/III/19', '', 0, 6),
(2304, 79, 255, 0, '099/RP/III/19', '', 0, 6),
(2305, 96, 255, 0, '099/RP/III/19', '', 0, 6),
(2306, 100, 255, 0, '099/RP/III/19', '', 0, 6),
(2307, 189, 255, 0, '099/RP/III/19', '', 0, 6),
(2308, 35, 256, 0, '100/RP/III/19', '', 0, 6),
(2309, 45, 256, 0, '100/RP/III/19', '', 0, 6),
(2310, 50, 256, 0, '100/RP/III/19', '', 0, 6),
(2311, 60, 256, 0, '100/RP/III/19', '', 0, 6),
(2312, 79, 256, 0, '100/RP/III/19', '', 0, 6),
(2313, 96, 256, 0, '100/RP/III/19', '', 0, 6),
(2314, 100, 256, 0, '100/RP/III/19', '', 0, 6),
(2315, 189, 256, 0, '100/RP/III/19', '', 0, 6),
(2316, 224, 257, 50000, '080/MIK/III/19', '', 0, 0),
(2317, 345, 257, 100000, '080/MIK/III/19', '', 0, 0),
(2318, 224, 258, 50000, '081/MIK/III/19', '', 0, 0),
(2319, 345, 258, 100000, '081/MIK/III/19', '', 0, 0),
(2320, 224, 259, 50000, '082/MIK/III/19', '', 0, 0),
(2321, 345, 259, 100000, '082/MIK/III/19', '', 0, 0),
(2322, 224, 260, 50000, '083/MIK/III/19', '', 0, 0),
(2323, 345, 260, 100000, '083/MIK/III/19', '', 0, 0),
(2324, 224, 261, 50000, '084/MIK/III/19', '', 0, 0),
(2325, 345, 261, 100000, '084/MIK/III/19', '', 0, 0),
(2326, 224, 262, 50000, '085/MIK/III/19', '', 0, 0),
(2327, 345, 262, 100000, '085/MIK/III/19', '', 0, 0),
(2328, 224, 263, 50000, '086/MIK/III/19', '', 0, 0),
(2329, 224, 264, 50000, '087/MIK/III/19', '', 0, 0),
(2330, 224, 265, 50000, '088/MIK/III/19', '', 0, 0),
(2331, 345, 265, 100000, '088/MIK/III/19', '', 0, 0),
(2332, 228, 265, 60000, '088/MIK/III/19', '', 0, 0),
(2333, 229, 265, 75000, '088/MIK/III/19', '', 0, 0),
(2334, 224, 266, 50000, '089/MIK/III/19', '', 0, 0),
(2335, 225, 266, 90000, '089/MIK/III/19', '', 0, 0),
(2336, 230, 266, 75000, '089/MIK/III/19', '', 0, 0),
(2337, 228, 266, 60000, '089/MIK/III/19', '', 0, 0),
(2338, 229, 266, 75000, '089/MIK/III/19', '', 0, 0),
(2339, 224, 267, 50000, '090/MIK/III/19', '', 0, 0),
(2340, 225, 267, 90000, '090/MIK/III/19', '', 0, 0),
(2341, 228, 267, 60000, '090/MIK/III/19', '', 0, 0),
(2342, 229, 267, 75000, '090/MIK/III/19', '', 0, 0),
(2343, 224, 268, 50000, '091/MIK/III/19', '', 0, 0),
(2344, 225, 268, 90000, '091/MIK/III/19', '', 0, 0),
(2345, 229, 268, 75000, '091/MIK/III/19', '', 0, 0),
(2346, 345, 268, 100000, '091/MIK/III/19', '', 0, 0),
(2347, 230, 268, 75000, '091/MIK/III/19', '', 0, 0),
(2348, 224, 269, 50000, '092/MIK/III/19', '', 0, 0),
(2349, 225, 269, 90000, '092/MIK/III/19', '', 0, 0),
(2350, 229, 269, 75000, '092/MIK/III/19', '', 0, 0),
(2351, 230, 269, 75000, '092/MIK/III/19', '', 0, 0),
(2352, 224, 270, 50000, '093/MIK/III/19', '', 0, 0),
(2353, 225, 270, 90000, '093/MIK/III/19', '', 0, 0),
(2354, 224, 271, 50000, '094/MIK/III/19', '', 0, 0),
(2355, 225, 271, 90000, '094/MIK/III/19', '', 0, 0),
(2356, 224, 272, 50000, '095/MIK/III/19', '', 0, 0),
(2357, 345, 272, 100000, '095/MIK/III/19', '', 0, 0),
(2358, 225, 272, 90000, '095/MIK/III/19', '', 0, 0),
(2359, 224, 273, 50000, '096/MIK/III/19', '', 0, 0),
(2360, 345, 273, 100000, '096/MIK/III/19', '', 0, 0),
(2361, 225, 273, 90000, '096/MIK/III/19', '', 0, 0),
(2362, 224, 274, 50000, '097/MIK/III/19', '', 0, 0),
(2363, 345, 274, 100000, '097/MIK/III/19', '', 0, 0),
(2364, 225, 274, 90000, '097/MIK/III/19', '', 0, 0),
(2365, 224, 275, 50000, '098/MIK/III/19', '', 0, 0),
(2366, 345, 275, 100000, '098/MIK/III/19', '', 0, 0),
(2367, 225, 275, 90000, '098/MIK/III/19', '', 0, 0),
(2368, 224, 276, 50000, '099/MIK/III/19', '', 0, 0),
(2369, 225, 276, 90000, '099/MIK/III/19', '', 0, 0),
(2370, 229, 276, 75000, '099/MIK/III/19', '', 0, 0),
(2371, 228, 276, 60000, '099/MIK/III/19', '', 0, 0),
(2372, 225, 277, 90000, '100/MIK/III/19', '', 0, 0),
(2373, 229, 277, 75000, '100/MIK/III/19', '', 0, 0),
(2374, 228, 277, 60000, '100/MIK/III/19', '', 0, 0),
(2375, 230, 277, 75000, '100/MIK/III/19', '', 0, 0),
(2376, 363, 279, 500000, '008/FP/III/19', '', 0, 0),
(2377, 363, 278, 500000, '007/FP/III/19', '', 0, 0),
(2378, 364, 280, 0, '000//III/19', 'Fludioksonil 25 %', 0, 0),
(2379, 365, 280, 0, '000/FP/III/19', 'Siprodinil 37.5 %', 0, 0),
(2380, 364, 281, 500000, '009/FP/III/19', 'Fludioksonil 25 %', 0, 0),
(2381, 365, 281, 500000, '009/FP/III/19', 'Siprodinil 37.5 %', 0, 0),
(2382, 252, 282, 200000, '126/LBM/III/19', '', 0, 0),
(2383, 252, 283, 200000, '127/LBM/III/19', '', 0, 0),
(2384, 252, 284, 200000, '128/LBM/III/19', '', 0, 0),
(2386, 252, 286, 200000, '129/LBM/III/19', '', 0, 0),
(2387, 252, 287, 200000, '130/LBM/III/19', '', 0, 0),
(2388, 336, 252, 15000, '000/BN/III/19', '', 0, 0),
(2389, 337, 252, 0, '000/BN/III/19', '', 0, 0),
(2390, 338, 252, 0, '000/BN/III/19', '', 0, 0),
(2391, 251, 288, 0, '031/LBM/III/19', '', 0, 0),
(2392, 252, 288, 0, '031/LBM/III/19', '', 0, 0),
(2393, 251, 289, 0, '032/LBM/III/19', '', 0, 0),
(2394, 252, 289, 0, '032/LBM/III/19', '', 0, 0),
(2395, 0, 290, 0, '000//III/19', '', 0, 0),
(2396, 0, 290, 0, '000//III/19', '', 0, 0),
(2397, 0, 291, 0, '000//III/19', '', 0, 0),
(2398, 0, 291, 0, '000//III/19', '', 0, 0),
(2399, 0, 292, 0, '000//III/19', '', 0, 0),
(2400, 0, 292, 0, '000//III/19', '', 0, 0),
(2401, 0, 293, 0, '000//III/19', '', 0, 0),
(2402, 0, 293, 0, '000//III/19', '', 0, 0),
(2403, 274, 294, 500000, '010/FP/III/19', 'Azoksistrobin 49 %', 0, 0),
(2404, 366, 294, 500000, '010/FP/III/19', '', 0, 0),
(2405, 305, 295, 500000, '011/FP/III/19', 'Metiram 55 %', 0, 0),
(2406, 312, 295, 500000, '011/FP/III/19', 'Piraklostrobin 5 %', 0, 0),
(2407, 278, 296, 500000, '012/FP/III/19', 'Difenokonazol 95 %', 0, 0),
(2408, 297, 297, 500000, '013/FP/III/19', 'Lamda Sihalotrin 95 %', 0, 0),
(2409, 367, 298, 500000, '014//III/19', 'Imidakloprid 97 %', 0, 0),
(2410, 296, 299, 500000, '015/FP/III/19', 'Klorpirifos 97 %', 0, 0),
(2411, 315, 300, 500000, '016/FP/III/19', 'Propikonazol 95 %', 0, 0),
(2412, 234, 301, 0, '028/KN/III/19', '', 0, 0),
(2413, 235, 301, 0, '028/KN/III/19', '', 0, 0),
(2414, 239, 301, 0, '028/KN/III/19', '', 0, 0),
(2415, 237, 301, 0, '028/KN/III/19', '', 0, 0),
(2417, 236, 301, 0, '028/KN/III/19', '', 0, 0),
(2418, 368, 301, 0, '028/KN/III/19', '', 0, 0),
(2422, 343, 301, 0, '028/KN/III/19', '', 0, 0),
(2423, 338, 302, 15000, '023/BN/III/19', '', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE IF NOT EXISTS `role` (
`id_role` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `nama_role` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id_role`, `created_at`, `created_by`, `updated_at`, `updated_by`, `nama_role`) VALUES
(1, '2018-09-27 20:23:25', 1, NULL, NULL, 'Super Admin'),
(2, '2018-09-27 20:23:47', 1, '2018-09-27 22:09:23', 1, 'Standard User');

-- --------------------------------------------------------

--
-- Table structure for table `role_permission`
--

CREATE TABLE IF NOT EXISTS `role_permission` (
`id_role_permission` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `satuan`
--

CREATE TABLE IF NOT EXISTS `satuan` (
`id_satuan` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `satuan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `satuan`
--

INSERT INTO `satuan` (`id_satuan`, `created_at`, `created_by`, `updated_at`, `updated_by`, `satuan`) VALUES
(1, '2018-10-04 20:36:13', NULL, NULL, NULL, 'g'),
(2, '2018-10-04 20:36:15', NULL, NULL, NULL, 'l'),
(3, '2018-12-16 06:43:48', NULL, NULL, NULL, 'Kg'),
(4, '2018-12-16 06:43:55', NULL, NULL, NULL, 'Ml');

-- --------------------------------------------------------

--
-- Table structure for table `setting_kontrak_kerja`
--

CREATE TABLE IF NOT EXISTS `setting_kontrak_kerja` (
`id_setting_kontrak_kerja` int(11) NOT NULL,
  `kode_laporan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `setting_kontrak_kerja`
--

INSERT INTO `setting_kontrak_kerja` (`id_setting_kontrak_kerja`, `kode_laporan`) VALUES
(1, 'DF / MA / 018');

-- --------------------------------------------------------

--
-- Table structure for table `setting_kop`
--

CREATE TABLE IF NOT EXISTS `setting_kop` (
`id_setting_kop` int(11) NOT NULL,
  `line_1` varchar(255) DEFAULT NULL,
  `line_2` varchar(255) DEFAULT NULL,
  `line_3` varchar(255) DEFAULT NULL,
  `line_4` varchar(255) DEFAULT NULL,
  `line_5` varchar(255) DEFAULT NULL,
  `line_6` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `setting_kop`
--

INSERT INTO `setting_kop` (`id_setting_kop`, `line_1`, `line_2`, `line_3`, `line_4`, `line_5`, `line_6`) VALUES
(1, 'PEMERINTAH PROVINSI DAERAH KHUSUS IBUKOTA JAKARTA', 'DINAS KETAHANAN PANGAN, KELAUTAN DAN PERTANIAN', 'PUSAT PROMOSI DAN SERTIFIKASI HASIL PERTANIAN', 'LABORATORIUM PUSAT PROMOSI DAN SERTIFIKASI HASIL PERTANIAN', 'Jl. Raya Jambore No. 1 Cibubur Jakarta Timur', 'Telp. / Fax : (021) 87752692');

-- --------------------------------------------------------

--
-- Table structure for table `setting_lhp`
--

CREATE TABLE IF NOT EXISTS `setting_lhp` (
`id_setting_lhp` int(11) NOT NULL COMMENT ' ',
  `lembaga` varchar(255) DEFAULT NULL,
  `pejabat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `setting_lhp`
--

INSERT INTO `setting_lhp` (`id_setting_lhp`, `lembaga`, `pejabat`) VALUES
(1, 'Kepala Satuan Pelaksana Sertifikasi Hasil Pertanian', 'Nurjannah<br>NIP 196112251987032006');

-- --------------------------------------------------------

--
-- Table structure for table `setting_pengantar_contoh`
--

CREATE TABLE IF NOT EXISTS `setting_pengantar_contoh` (
`id_setting_pengantar_contoh` int(11) NOT NULL,
  `kode_laporan` varchar(255) DEFAULT NULL,
  `contoh_diserahkan_ke` varchar(255) DEFAULT NULL,
  `penerima_contoh` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `setting_pengantar_contoh`
--

INSERT INTO `setting_pengantar_contoh` (`id_setting_pengantar_contoh`, `kode_laporan`, `contoh_diserahkan_ke`, `penerima_contoh`) VALUES
(1, 'DF / MA / 025', 'Kepala Satpel Sertifikasi Hasil Pertanian', 'Satpel Sertifikasi Hasil Pertanian');

-- --------------------------------------------------------

--
-- Table structure for table `setting_permohonan`
--

CREATE TABLE IF NOT EXISTS `setting_permohonan` (
`id_setting_premohonan` int(11) NOT NULL,
  `kode_laporan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `setting_permohonan`
--

INSERT INTO `setting_permohonan` (`id_setting_premohonan`, `kode_laporan`) VALUES
(1, 'DF / MA / 017');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id_user` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `display_name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `source` varchar(10) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `user_image` varchar(100) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `id_role` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `created_at`, `created_by`, `updated_at`, `updated_by`, `username`, `display_name`, `email`, `source`, `password`, `user_image`, `is_active`, `id_role`) VALUES
(8, '2018-09-27 20:02:22', 1, NULL, NULL, 'riki', 'riki', '123123zxzzasdasdasd', NULL, 'ea8ba783d1f874bce5c7e075563e9070', NULL, 1, 1),
(9, '2018-09-27 20:53:44', 1, NULL, NULL, '1', '1', '1', NULL, '2dace78f80bc92e6d7493423d729448e', NULL, 1, 2),
(10, '2018-11-08 14:48:23', 1, NULL, NULL, 'riki1', 'riki1', 'asd', NULL, '2dace78f80bc92e6d7493423d729448e', NULL, 1, 1),
(11, '2018-11-08 14:48:23', 1, NULL, NULL, 'yanti', 'Yanti Gustian', 'asd', NULL, '2dace78f80bc92e6d7493423d729448e', NULL, 1, 1),
(12, '2019-02-08 04:26:23', 1, NULL, NULL, 'asri', 'Asri Setyorini', 'asri@gmail.com', NULL, '2dace78f80bc92e6d7493423d729448e', NULL, 1, 1),
(13, '2019-02-08 04:26:50', 1, NULL, NULL, 'lisa', 'Lisa Emiria Sari', 'lisa@gmail.com', NULL, '2dace78f80bc92e6d7493423d729448e', NULL, 1, 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_bukuinduk`
--
CREATE TABLE IF NOT EXISTS `vw_bukuinduk` (
`tanggal_masuk` date
,`instansi_perusahaan` varchar(255)
,`alamat` varchar(255)
,`varietas` varchar(200)
,`nomor_contoh` varchar(11)
,`jumlah` int(11)
,`satuan` varchar(255)
,`kemasan` varchar(255)
,`keterangan` text
,`laporan` text
,`parameter` text
,`harga` decimal(41,0)
,`id_permohonan_detail` int(1)
,`jumlah_satuan` varchar(267)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_bukulab`
--
CREATE TABLE IF NOT EXISTS `vw_bukulab` (
`tanggal_masuk` date
,`nomor_contoh` varchar(11)
,`nomor_kodelab` varchar(15)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_hasil`
--
CREATE TABLE IF NOT EXISTS `vw_hasil` (
`nomor_contoh` varchar(11)
,`laporan` varchar(255)
,`komoditas` varchar(100)
,`varietas` varchar(200)
,`jumlah` int(11)
,`satuan` varchar(255)
,`kondisi` varchar(255)
,`total_biaya` decimal(41,0)
,`parameter` text
,`keterangan` text
,`id_laporan` int(11)
,`prim` varchar(23)
,`nomor_seri` varchar(20)
,`ceklis_1` bit(1)
,`ceklis_2` bit(1)
,`ket_kondisi` varchar(255)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_hasil2`
--
CREATE TABLE IF NOT EXISTS `vw_hasil2` (
`nomor_contoh` varchar(11)
,`laporan` varchar(255)
,`komoditas` varchar(100)
,`varietas` varchar(200)
,`jumlah` int(11)
,`satuan` varchar(255)
,`kondisi` varchar(255)
,`keterangan` text
,`id_laporan` int(11)
,`parameter_pengujian` varchar(255)
,`id_permohonan_detail_parameter` int(11)
,`hasil` varchar(100)
,`satuan_hasil` varchar(100)
,`metode` varchar(100)
,`keterangan_hasil` varchar(255)
,`standard` int(11)
,`tanggal_pengambilan` date
,`kemasan` varchar(255)
,`created_at` timestamp
,`tanggal_masuk` date
,`ket_kondisi` varchar(255)
,`caption` varchar(255)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_hasil2_fp`
--
CREATE TABLE IF NOT EXISTS `vw_hasil2_fp` (
`nomor_contoh` varchar(11)
,`laporan` varchar(255)
,`komoditas` varchar(100)
,`varietas` varchar(200)
,`jumlah` int(11)
,`satuan` varchar(255)
,`kondisi` varchar(255)
,`keterangan` text
,`id_laporan` int(11)
,`parameter_pengujian` varchar(255)
,`id_permohonan_detail_parameter` int(11)
,`bahan` varchar(100)
,`berat` varchar(100)
,`kadar` varchar(100)
,`metode` varchar(100)
,`satuan_hasil` varchar(100)
,`tanggal_pengambilan` date
,`kemasan` varchar(255)
,`created_at` timestamp
,`tanggal_masuk` date
,`ket_kondisi` varchar(255)
,`caption` varchar(255)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_hasil2_kn`
--
CREATE TABLE IF NOT EXISTS `vw_hasil2_kn` (
`nomor_contoh` varchar(11)
,`laporan` varchar(255)
,`komoditas` varchar(100)
,`varietas` varchar(200)
,`jumlah` int(11)
,`satuan` varchar(255)
,`kondisi` varchar(255)
,`keterangan` text
,`id_laporan` int(11)
,`parameter_pengujian` varchar(255)
,`id_permohonan_detail_parameter` int(11)
,`hasil` varchar(100)
,`metode` varchar(100)
,`satuan_hasil` varchar(100)
,`tanggal_pengambilan` date
,`kemasan` varchar(255)
,`created_at` timestamp
,`tanggal_masuk` date
,`ket_kondisi` varchar(255)
,`caption` varchar(255)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_hasil2_lbm`
--
CREATE TABLE IF NOT EXISTS `vw_hasil2_lbm` (
`nomor_contoh` varchar(11)
,`laporan` varchar(255)
,`komoditas` varchar(100)
,`varietas` varchar(200)
,`jumlah` int(11)
,`satuan` varchar(255)
,`kondisi` varchar(255)
,`keterangan` text
,`id_laporan` int(11)
,`parameter_pengujian` varchar(255)
,`id_permohonan_detail_parameter` int(11)
,`hasil` varchar(100)
,`metode` varchar(100)
,`satuan_hasil` varchar(255)
,`lod` varchar(255)
,`loq` varchar(255)
,`tanggal_pengambilan` date
,`kemasan` varchar(255)
,`created_at` timestamp
,`tanggal_masuk` date
,`ket_kondisi` varchar(255)
,`caption` varchar(255)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_hasil2_mfb`
--
CREATE TABLE IF NOT EXISTS `vw_hasil2_mfb` (
`nomor_contoh` varchar(11)
,`laporan` varchar(255)
,`komoditas` varchar(100)
,`varietas` varchar(200)
,`jumlah` int(11)
,`satuan` varchar(255)
,`kondisi` varchar(255)
,`keterangan` text
,`id_laporan` int(11)
,`parameter_pengujian` varchar(255)
,`id_permohonan_detail_parameter` int(11)
,`hasil` varchar(100)
,`metode` varchar(100)
,`satuan_hasil` varchar(100)
,`medium` varchar(100)
,`premium` varchar(100)
,`tanggal_pengambilan` date
,`kemasan` varchar(255)
,`created_at` timestamp
,`tanggal_masuk` date
,`ket_kondisi` varchar(255)
,`caption` varchar(255)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_hasil2_mycotoxin`
--
CREATE TABLE IF NOT EXISTS `vw_hasil2_mycotoxin` (
`nomor_contoh` varchar(11)
,`laporan` varchar(255)
,`komoditas` varchar(100)
,`varietas` varchar(200)
,`jumlah` int(11)
,`satuan` varchar(255)
,`kondisi` varchar(255)
,`keterangan` text
,`id_laporan` int(11)
,`parameter_pengujian` varchar(255)
,`id_permohonan_detail_parameter` int(11)
,`hasil` varchar(100)
,`mql` varchar(100)
,`metode` varchar(100)
,`bmc` varchar(255)
,`tanggal_pengambilan` date
,`kemasan` varchar(255)
,`created_at` timestamp
,`tanggal_masuk` date
,`ket_kondisi` varchar(255)
,`caption` varchar(255)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_hasil2_residu`
--
CREATE TABLE IF NOT EXISTS `vw_hasil2_residu` (
`nomor_contoh` varchar(11)
,`laporan` varchar(255)
,`komoditas` varchar(100)
,`varietas` varchar(200)
,`jumlah` int(11)
,`satuan` varchar(255)
,`kondisi` varchar(255)
,`keterangan` text
,`id_laporan` int(11)
,`parameter_pengujian` varchar(255)
,`id_permohonan_detail_parameter` int(11)
,`hasil` varchar(100)
,`mql` varchar(100)
,`metode` varchar(100)
,`bmr` varchar(255)
,`tanggal_pengambilan` date
,`kemasan` varchar(255)
,`created_at` timestamp
,`tanggal_masuk` date
,`ket_kondisi` varchar(255)
,`caption` varchar(255)
);
-- --------------------------------------------------------

--
-- Structure for view `vw_bukuinduk`
--
DROP TABLE IF EXISTS `vw_bukuinduk`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_bukuinduk` AS select `permohonan`.`tanggal_masuk` AS `tanggal_masuk`,`permohonan`.`instansi_perusahaan` AS `instansi_perusahaan`,`permohonan`.`alamat` AS `alamat`,`permohonan_detail`.`varietas` AS `varietas`,`permohonan_detail`.`nomor_contoh` AS `nomor_contoh`,`permohonan_detail`.`jumlah` AS `jumlah`,`satuan`.`satuan` AS `satuan`,`kemasan`.`kemasan` AS `kemasan`,`permohonan_detail`.`keterangan` AS `keterangan`,group_concat(distinct `laporan`.`laporan` separator ' , ') AS `laporan`,group_concat(`parameter_pengujian`.`parameter_pengujian` separator ' , ') AS `parameter`,sum(`parameter_pengujian`.`harga`) AS `harga`,`permohonan_detail`.`id_permohonan_detail` AS `id_permohonan_detail`,concat(`permohonan_detail`.`jumlah`,' ',`satuan`.`satuan`) AS `jumlah_satuan` from (((((((`permohonan_detail` left join `permohonan` on((`permohonan`.`id_permohonan` = `permohonan_detail`.`id_permohonan`))) left join `kodelab` on((`permohonan_detail`.`id_kodelab` = `kodelab`.`id_kodelab`))) left join `satuan` on((`permohonan_detail`.`satuan` = `satuan`.`id_satuan`))) left join `kemasan` on((`kemasan`.`id_kemasan` = `permohonan_detail`.`kemasan`))) left join `permohonan_detail_parameter` on((`permohonan_detail`.`id_permohonan_detail` = `permohonan_detail_parameter`.`id_permohonan_detail`))) left join `parameter_pengujian` on((`parameter_pengujian`.`id_parameter_pengujian` = `permohonan_detail_parameter`.`id_parameter_pengujian`))) left join `laporan` on((`laporan`.`id_laporan` = `parameter_pengujian`.`id_laporan`))) group by `permohonan_detail`.`id_permohonan_detail`;

-- --------------------------------------------------------

--
-- Structure for view `vw_bukulab`
--
DROP TABLE IF EXISTS `vw_bukulab`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_bukulab` AS select `permohonan`.`tanggal_masuk` AS `tanggal_masuk`,`permohonan_detail`.`nomor_contoh` AS `nomor_contoh`,`permohonan_detail`.`nomor_kodelab` AS `nomor_kodelab` from (`permohonan_detail` left join `permohonan` on((`permohonan`.`id_permohonan` = `permohonan_detail`.`id_permohonan`)));

-- --------------------------------------------------------

--
-- Structure for view `vw_hasil`
--
DROP TABLE IF EXISTS `vw_hasil`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_hasil` AS select `a`.`nomor_contoh` AS `nomor_contoh`,`d`.`laporan` AS `laporan`,`a`.`komoditas` AS `komoditas`,`a`.`varietas` AS `varietas`,`a`.`jumlah` AS `jumlah`,`e`.`satuan` AS `satuan`,`f`.`kondisi` AS `kondisi`,sum(`c`.`harga`) AS `total_biaya`,group_concat(`c`.`parameter_pengujian` separator ',') AS `parameter`,`a`.`keterangan` AS `keterangan`,`d`.`id_laporan` AS `id_laporan`,concat(replace(`a`.`nomor_contoh`,'/','-'),'_',`d`.`id_laporan`) AS `prim`,`g`.`nomor_seri` AS `nomor_seri`,`g`.`ceklis_1` AS `ceklis_1`,`g`.`ceklis_2` AS `ceklis_2`,`a`.`ket_kondisi` AS `ket_kondisi` from (((((((`permohonan_detail` `a` left join `permohonan_detail_parameter` `b` on((`a`.`id_permohonan_detail` = `b`.`id_permohonan_detail`))) left join `parameter_pengujian` `c` on((`b`.`id_parameter_pengujian` = `c`.`id_parameter_pengujian`))) left join `laporan` `d` on((`c`.`id_laporan` = `d`.`id_laporan`))) left join `satuan` `e` on((`a`.`satuan` = `e`.`id_satuan`))) left join `kondisi` `f` on((`a`.`kondisi` = `f`.`id_kondisi`))) left join `hasil` `g` on((`g`.`prim` = concat(replace(`a`.`nomor_contoh`,'/','-'),'_',`d`.`id_laporan`)))) join `permohonan` `xx` on((`a`.`id_permohonan` = `xx`.`id_permohonan`))) group by `a`.`nomor_contoh`,`d`.`laporan` order by `a`.`nomor_contoh`,`d`.`laporan`;

-- --------------------------------------------------------

--
-- Structure for view `vw_hasil2`
--
DROP TABLE IF EXISTS `vw_hasil2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_hasil2` AS select `a`.`nomor_contoh` AS `nomor_contoh`,`d`.`laporan` AS `laporan`,`a`.`komoditas` AS `komoditas`,`a`.`varietas` AS `varietas`,`a`.`jumlah` AS `jumlah`,`e`.`satuan` AS `satuan`,`f`.`kondisi` AS `kondisi`,`a`.`keterangan` AS `keterangan`,`d`.`id_laporan` AS `id_laporan`,`c`.`parameter_pengujian` AS `parameter_pengujian`,`b`.`id_permohonan_detail_parameter` AS `id_permohonan_detail_parameter`,`g`.`hasil` AS `hasil`,`g`.`satuan` AS `satuan_hasil`,`g`.`metode` AS `metode`,`g`.`keterangan` AS `keterangan_hasil`,`g`.`standard` AS `standard`,`i`.`tanggal_pengambilan` AS `tanggal_pengambilan`,`j`.`kemasan` AS `kemasan`,`i`.`created_at` AS `created_at`,`i`.`tanggal_masuk` AS `tanggal_masuk`,`a`.`ket_kondisi` AS `ket_kondisi`,`b`.`caption` AS `caption` from (((((((((`permohonan_detail` `a` left join `permohonan_detail_parameter` `b` on((`a`.`id_permohonan_detail` = `b`.`id_permohonan_detail`))) left join `parameter_pengujian` `c` on((`b`.`id_parameter_pengujian` = `c`.`id_parameter_pengujian`))) left join `laporan` `d` on((`c`.`id_laporan` = `d`.`id_laporan`))) left join `satuan` `e` on((`a`.`satuan` = `e`.`id_satuan`))) left join `kondisi` `f` on((`a`.`kondisi` = `f`.`id_kondisi`))) left join `hasil_detail` `g` on((`b`.`id_permohonan_detail_parameter` = `g`.`id_permohonan_detail_parameter`))) left join `permohonan_detail` `h` on((`a`.`nomor_contoh` = `h`.`nomor_contoh`))) left join `permohonan` `i` on((`i`.`id_permohonan` = `h`.`id_permohonan`))) left join `kemasan` `j` on((`a`.`kemasan` = `j`.`id_kemasan`))) order by `a`.`nomor_contoh`,`d`.`laporan`;

-- --------------------------------------------------------

--
-- Structure for view `vw_hasil2_fp`
--
DROP TABLE IF EXISTS `vw_hasil2_fp`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_hasil2_fp` AS select `a`.`nomor_contoh` AS `nomor_contoh`,`d`.`laporan` AS `laporan`,`a`.`komoditas` AS `komoditas`,`a`.`varietas` AS `varietas`,`a`.`jumlah` AS `jumlah`,`e`.`satuan` AS `satuan`,`f`.`kondisi` AS `kondisi`,`a`.`keterangan` AS `keterangan`,`d`.`id_laporan` AS `id_laporan`,`c`.`parameter_pengujian` AS `parameter_pengujian`,`b`.`id_permohonan_detail_parameter` AS `id_permohonan_detail_parameter`,`g`.`bahan` AS `bahan`,`g`.`berat` AS `berat`,`g`.`kadar` AS `kadar`,`g`.`metode` AS `metode`,`g`.`satuan` AS `satuan_hasil`,`i`.`tanggal_pengambilan` AS `tanggal_pengambilan`,`j`.`kemasan` AS `kemasan`,`i`.`created_at` AS `created_at`,`i`.`tanggal_masuk` AS `tanggal_masuk`,`a`.`ket_kondisi` AS `ket_kondisi`,`b`.`caption` AS `caption` from (((((((((`permohonan_detail` `a` left join `permohonan_detail_parameter` `b` on((`a`.`id_permohonan_detail` = `b`.`id_permohonan_detail`))) left join `parameter_pengujian` `c` on((`b`.`id_parameter_pengujian` = `c`.`id_parameter_pengujian`))) left join `laporan` `d` on((`c`.`id_laporan` = `d`.`id_laporan`))) left join `satuan` `e` on((`a`.`satuan` = `e`.`id_satuan`))) left join `kondisi` `f` on((`a`.`kondisi` = `f`.`id_kondisi`))) left join `hasil_detail_fp` `g` on((`b`.`id_permohonan_detail_parameter` = `g`.`id_permohonan_detail_parameter`))) left join `permohonan_detail` `h` on((`a`.`nomor_contoh` = `h`.`nomor_contoh`))) left join `permohonan` `i` on((`i`.`id_permohonan` = `h`.`id_permohonan`))) left join `kemasan` `j` on((`a`.`kemasan` = `j`.`id_kemasan`))) order by `a`.`nomor_contoh`,`d`.`laporan`;

-- --------------------------------------------------------

--
-- Structure for view `vw_hasil2_kn`
--
DROP TABLE IF EXISTS `vw_hasil2_kn`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_hasil2_kn` AS select `a`.`nomor_contoh` AS `nomor_contoh`,`d`.`laporan` AS `laporan`,`a`.`komoditas` AS `komoditas`,`a`.`varietas` AS `varietas`,`a`.`jumlah` AS `jumlah`,`e`.`satuan` AS `satuan`,`f`.`kondisi` AS `kondisi`,`a`.`keterangan` AS `keterangan`,`d`.`id_laporan` AS `id_laporan`,`c`.`parameter_pengujian` AS `parameter_pengujian`,`b`.`id_permohonan_detail_parameter` AS `id_permohonan_detail_parameter`,`g`.`hasil` AS `hasil`,`g`.`metode` AS `metode`,`g`.`satuan` AS `satuan_hasil`,`i`.`tanggal_pengambilan` AS `tanggal_pengambilan`,`j`.`kemasan` AS `kemasan`,`i`.`created_at` AS `created_at`,`i`.`tanggal_masuk` AS `tanggal_masuk`,`a`.`ket_kondisi` AS `ket_kondisi`,`b`.`caption` AS `caption` from (((((((((`permohonan_detail` `a` left join `permohonan_detail_parameter` `b` on((`a`.`id_permohonan_detail` = `b`.`id_permohonan_detail`))) left join `parameter_pengujian` `c` on((`b`.`id_parameter_pengujian` = `c`.`id_parameter_pengujian`))) left join `laporan` `d` on((`c`.`id_laporan` = `d`.`id_laporan`))) left join `satuan` `e` on((`a`.`satuan` = `e`.`id_satuan`))) left join `kondisi` `f` on((`a`.`kondisi` = `f`.`id_kondisi`))) left join `hasil_detail_kn` `g` on((`b`.`id_permohonan_detail_parameter` = `g`.`id_permohonan_detail_parameter`))) left join `permohonan_detail` `h` on((`a`.`nomor_contoh` = `h`.`nomor_contoh`))) left join `permohonan` `i` on((`i`.`id_permohonan` = `h`.`id_permohonan`))) left join `kemasan` `j` on((`a`.`kemasan` = `j`.`id_kemasan`))) order by `a`.`nomor_contoh`,`d`.`laporan`;

-- --------------------------------------------------------

--
-- Structure for view `vw_hasil2_lbm`
--
DROP TABLE IF EXISTS `vw_hasil2_lbm`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_hasil2_lbm` AS select `a`.`nomor_contoh` AS `nomor_contoh`,`d`.`laporan` AS `laporan`,`a`.`komoditas` AS `komoditas`,`a`.`varietas` AS `varietas`,`a`.`jumlah` AS `jumlah`,`e`.`satuan` AS `satuan`,`f`.`kondisi` AS `kondisi`,`a`.`keterangan` AS `keterangan`,`d`.`id_laporan` AS `id_laporan`,`c`.`parameter_pengujian` AS `parameter_pengujian`,`b`.`id_permohonan_detail_parameter` AS `id_permohonan_detail_parameter`,`g`.`hasil` AS `hasil`,`g`.`metode` AS `metode`,`g`.`satuan` AS `satuan_hasil`,`g`.`lod` AS `lod`,`g`.`loq` AS `loq`,`i`.`tanggal_pengambilan` AS `tanggal_pengambilan`,`j`.`kemasan` AS `kemasan`,`i`.`created_at` AS `created_at`,`i`.`tanggal_masuk` AS `tanggal_masuk`,`a`.`ket_kondisi` AS `ket_kondisi`,`b`.`caption` AS `caption` from (((((((((`permohonan_detail` `a` left join `permohonan_detail_parameter` `b` on((`a`.`id_permohonan_detail` = `b`.`id_permohonan_detail`))) left join `parameter_pengujian` `c` on((`b`.`id_parameter_pengujian` = `c`.`id_parameter_pengujian`))) left join `laporan` `d` on((`c`.`id_laporan` = `d`.`id_laporan`))) left join `satuan` `e` on((`a`.`satuan` = `e`.`id_satuan`))) left join `kondisi` `f` on((`a`.`kondisi` = `f`.`id_kondisi`))) left join `hasil_detail_lbm` `g` on((`b`.`id_permohonan_detail_parameter` = `g`.`id_permohonan_detail_parameter`))) left join `permohonan_detail` `h` on((`a`.`nomor_contoh` = `h`.`nomor_contoh`))) left join `permohonan` `i` on((`i`.`id_permohonan` = `h`.`id_permohonan`))) left join `kemasan` `j` on((`a`.`kemasan` = `j`.`id_kemasan`))) order by `a`.`nomor_contoh`,`d`.`laporan`;

-- --------------------------------------------------------

--
-- Structure for view `vw_hasil2_mfb`
--
DROP TABLE IF EXISTS `vw_hasil2_mfb`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_hasil2_mfb` AS select `a`.`nomor_contoh` AS `nomor_contoh`,`d`.`laporan` AS `laporan`,`a`.`komoditas` AS `komoditas`,`a`.`varietas` AS `varietas`,`a`.`jumlah` AS `jumlah`,`e`.`satuan` AS `satuan`,`f`.`kondisi` AS `kondisi`,`a`.`keterangan` AS `keterangan`,`d`.`id_laporan` AS `id_laporan`,`c`.`parameter_pengujian` AS `parameter_pengujian`,`b`.`id_permohonan_detail_parameter` AS `id_permohonan_detail_parameter`,`g`.`hasil` AS `hasil`,`g`.`metode` AS `metode`,`g`.`satuan` AS `satuan_hasil`,`g`.`medium` AS `medium`,`g`.`premium` AS `premium`,`i`.`tanggal_pengambilan` AS `tanggal_pengambilan`,`j`.`kemasan` AS `kemasan`,`i`.`created_at` AS `created_at`,`i`.`tanggal_masuk` AS `tanggal_masuk`,`a`.`ket_kondisi` AS `ket_kondisi`,`b`.`caption` AS `caption` from (((((((((`permohonan_detail` `a` left join `permohonan_detail_parameter` `b` on((`a`.`id_permohonan_detail` = `b`.`id_permohonan_detail`))) left join `parameter_pengujian` `c` on((`b`.`id_parameter_pengujian` = `c`.`id_parameter_pengujian`))) left join `laporan` `d` on((`c`.`id_laporan` = `d`.`id_laporan`))) left join `satuan` `e` on((`a`.`satuan` = `e`.`id_satuan`))) left join `kondisi` `f` on((`a`.`kondisi` = `f`.`id_kondisi`))) left join `hasil_detail_mfb` `g` on((`b`.`id_permohonan_detail_parameter` = `g`.`id_permohonan_detail_parameter`))) left join `permohonan_detail` `h` on((`a`.`nomor_contoh` = `h`.`nomor_contoh`))) left join `permohonan` `i` on((`i`.`id_permohonan` = `h`.`id_permohonan`))) left join `kemasan` `j` on((`a`.`kemasan` = `j`.`id_kemasan`))) order by `a`.`nomor_contoh`,`d`.`laporan`;

-- --------------------------------------------------------

--
-- Structure for view `vw_hasil2_mycotoxin`
--
DROP TABLE IF EXISTS `vw_hasil2_mycotoxin`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_hasil2_mycotoxin` AS select `a`.`nomor_contoh` AS `nomor_contoh`,`d`.`laporan` AS `laporan`,`a`.`komoditas` AS `komoditas`,`a`.`varietas` AS `varietas`,`a`.`jumlah` AS `jumlah`,`e`.`satuan` AS `satuan`,`f`.`kondisi` AS `kondisi`,`a`.`keterangan` AS `keterangan`,`d`.`id_laporan` AS `id_laporan`,`c`.`parameter_pengujian` AS `parameter_pengujian`,`b`.`id_permohonan_detail_parameter` AS `id_permohonan_detail_parameter`,`g`.`hasil` AS `hasil`,`g`.`mql` AS `mql`,`g`.`metode` AS `metode`,`g`.`bmc` AS `bmc`,`i`.`tanggal_pengambilan` AS `tanggal_pengambilan`,`j`.`kemasan` AS `kemasan`,`i`.`created_at` AS `created_at`,`i`.`tanggal_masuk` AS `tanggal_masuk`,`a`.`ket_kondisi` AS `ket_kondisi`,`b`.`caption` AS `caption` from (((((((((`permohonan_detail` `a` left join `permohonan_detail_parameter` `b` on((`a`.`id_permohonan_detail` = `b`.`id_permohonan_detail`))) left join `parameter_pengujian` `c` on((`b`.`id_parameter_pengujian` = `c`.`id_parameter_pengujian`))) left join `laporan` `d` on((`c`.`id_laporan` = `d`.`id_laporan`))) left join `satuan` `e` on((`a`.`satuan` = `e`.`id_satuan`))) left join `kondisi` `f` on((`a`.`kondisi` = `f`.`id_kondisi`))) left join `hasil_detail_mycotoxin` `g` on((`b`.`id_permohonan_detail_parameter` = `g`.`id_permohonan_detail_parameter`))) left join `permohonan_detail` `h` on((`a`.`nomor_contoh` = `h`.`nomor_contoh`))) left join `permohonan` `i` on((`i`.`id_permohonan` = `h`.`id_permohonan`))) left join `kemasan` `j` on((`a`.`kemasan` = `j`.`id_kemasan`))) order by `a`.`nomor_contoh`,`d`.`laporan`;

-- --------------------------------------------------------

--
-- Structure for view `vw_hasil2_residu`
--
DROP TABLE IF EXISTS `vw_hasil2_residu`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_hasil2_residu` AS select `a`.`nomor_contoh` AS `nomor_contoh`,`d`.`laporan` AS `laporan`,`a`.`komoditas` AS `komoditas`,`a`.`varietas` AS `varietas`,`a`.`jumlah` AS `jumlah`,`e`.`satuan` AS `satuan`,`f`.`kondisi` AS `kondisi`,`a`.`keterangan` AS `keterangan`,`d`.`id_laporan` AS `id_laporan`,`c`.`parameter_pengujian` AS `parameter_pengujian`,`b`.`id_permohonan_detail_parameter` AS `id_permohonan_detail_parameter`,`g`.`hasil` AS `hasil`,`g`.`mql` AS `mql`,`g`.`metode` AS `metode`,`g`.`bmr` AS `bmr`,`i`.`tanggal_pengambilan` AS `tanggal_pengambilan`,`j`.`kemasan` AS `kemasan`,`i`.`created_at` AS `created_at`,`i`.`tanggal_masuk` AS `tanggal_masuk`,`a`.`ket_kondisi` AS `ket_kondisi`,`b`.`caption` AS `caption` from (((((((((`permohonan_detail` `a` left join `permohonan_detail_parameter` `b` on((`a`.`id_permohonan_detail` = `b`.`id_permohonan_detail`))) left join `parameter_pengujian` `c` on((`b`.`id_parameter_pengujian` = `c`.`id_parameter_pengujian`))) left join `laporan` `d` on((`c`.`id_laporan` = `d`.`id_laporan`))) left join `satuan` `e` on((`a`.`satuan` = `e`.`id_satuan`))) left join `kondisi` `f` on((`a`.`kondisi` = `f`.`id_kondisi`))) left join `hasil_detail_residu` `g` on((`b`.`id_permohonan_detail_parameter` = `g`.`id_permohonan_detail_parameter`))) left join `permohonan_detail` `h` on((`a`.`nomor_contoh` = `h`.`nomor_contoh`))) left join `permohonan` `i` on((`i`.`id_permohonan` = `h`.`id_permohonan`))) left join `kemasan` `j` on((`a`.`kemasan` = `j`.`id_kemasan`))) order by `a`.`nomor_contoh`,`d`.`laporan`;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `counter_contoh`
--
ALTER TABLE `counter_contoh`
 ADD PRIMARY KEY (`id_counter_contoh`) USING BTREE;

--
-- Indexes for table `counter_lab`
--
ALTER TABLE `counter_lab`
 ADD PRIMARY KEY (`id_counter_lab`) USING BTREE;

--
-- Indexes for table `counter_nomorseri`
--
ALTER TABLE `counter_nomorseri`
 ADD PRIMARY KEY (`id_counter_nomorseri`) USING BTREE;

--
-- Indexes for table `hasil`
--
ALTER TABLE `hasil`
 ADD PRIMARY KEY (`prim`) USING BTREE;

--
-- Indexes for table `hasil_bn`
--
ALTER TABLE `hasil_bn`
 ADD PRIMARY KEY (`prim`) USING BTREE;

--
-- Indexes for table `hasil_detail`
--
ALTER TABLE `hasil_detail`
 ADD PRIMARY KEY (`id_hasil`) USING BTREE;

--
-- Indexes for table `hasil_detail_fp`
--
ALTER TABLE `hasil_detail_fp`
 ADD PRIMARY KEY (`id_hasil`) USING BTREE;

--
-- Indexes for table `hasil_detail_kn`
--
ALTER TABLE `hasil_detail_kn`
 ADD PRIMARY KEY (`id_hasil`) USING BTREE;

--
-- Indexes for table `hasil_detail_lbm`
--
ALTER TABLE `hasil_detail_lbm`
 ADD PRIMARY KEY (`id_hasil`) USING BTREE;

--
-- Indexes for table `hasil_detail_mfb`
--
ALTER TABLE `hasil_detail_mfb`
 ADD PRIMARY KEY (`id_hasil`) USING BTREE;

--
-- Indexes for table `hasil_detail_mycotoxin`
--
ALTER TABLE `hasil_detail_mycotoxin`
 ADD PRIMARY KEY (`id_hasil`) USING BTREE;

--
-- Indexes for table `hasil_detail_residu`
--
ALTER TABLE `hasil_detail_residu`
 ADD PRIMARY KEY (`id_hasil`) USING BTREE;

--
-- Indexes for table `hasil_kn`
--
ALTER TABLE `hasil_kn`
 ADD PRIMARY KEY (`prim`) USING BTREE;

--
-- Indexes for table `hasil_lbm`
--
ALTER TABLE `hasil_lbm`
 ADD PRIMARY KEY (`prim`) USING BTREE;

--
-- Indexes for table `kemasan`
--
ALTER TABLE `kemasan`
 ADD PRIMARY KEY (`id_kemasan`) USING BTREE;

--
-- Indexes for table `kodelab`
--
ALTER TABLE `kodelab`
 ADD PRIMARY KEY (`id_kodelab`) USING BTREE;

--
-- Indexes for table `kondisi`
--
ALTER TABLE `kondisi`
 ADD PRIMARY KEY (`id_kondisi`) USING BTREE;

--
-- Indexes for table `kop`
--
ALTER TABLE `kop`
 ADD PRIMARY KEY (`id_kop`) USING BTREE;

--
-- Indexes for table `laporan`
--
ALTER TABLE `laporan`
 ADD PRIMARY KEY (`id_laporan`) USING BTREE;

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
 ADD PRIMARY KEY (`id_menu`) USING BTREE;

--
-- Indexes for table `metode`
--
ALTER TABLE `metode`
 ADD PRIMARY KEY (`id_metode`) USING BTREE;

--
-- Indexes for table `paket`
--
ALTER TABLE `paket`
 ADD PRIMARY KEY (`id_paket`) USING BTREE;

--
-- Indexes for table `parameter_pengujian`
--
ALTER TABLE `parameter_pengujian`
 ADD PRIMARY KEY (`id_parameter_pengujian`) USING BTREE;

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
 ADD PRIMARY KEY (`id_pelanggan`) USING BTREE;

--
-- Indexes for table `permohonan`
--
ALTER TABLE `permohonan`
 ADD PRIMARY KEY (`id_permohonan`) USING BTREE;

--
-- Indexes for table `permohonan_detail`
--
ALTER TABLE `permohonan_detail`
 ADD PRIMARY KEY (`id_permohonan_detail`) USING BTREE;

--
-- Indexes for table `permohonan_detail_metode`
--
ALTER TABLE `permohonan_detail_metode`
 ADD PRIMARY KEY (`id_permohonan_detail_metode`) USING BTREE;

--
-- Indexes for table `permohonan_detail_parameter`
--
ALTER TABLE `permohonan_detail_parameter`
 ADD PRIMARY KEY (`id_permohonan_detail_parameter`) USING BTREE;

--
-- Indexes for table `role`
--
ALTER TABLE `role`
 ADD PRIMARY KEY (`id_role`) USING BTREE;

--
-- Indexes for table `role_permission`
--
ALTER TABLE `role_permission`
 ADD PRIMARY KEY (`id_role_permission`) USING BTREE;

--
-- Indexes for table `satuan`
--
ALTER TABLE `satuan`
 ADD PRIMARY KEY (`id_satuan`) USING BTREE;

--
-- Indexes for table `setting_kontrak_kerja`
--
ALTER TABLE `setting_kontrak_kerja`
 ADD PRIMARY KEY (`id_setting_kontrak_kerja`) USING BTREE;

--
-- Indexes for table `setting_kop`
--
ALTER TABLE `setting_kop`
 ADD PRIMARY KEY (`id_setting_kop`) USING BTREE;

--
-- Indexes for table `setting_lhp`
--
ALTER TABLE `setting_lhp`
 ADD PRIMARY KEY (`id_setting_lhp`) USING BTREE;

--
-- Indexes for table `setting_pengantar_contoh`
--
ALTER TABLE `setting_pengantar_contoh`
 ADD PRIMARY KEY (`id_setting_pengantar_contoh`) USING BTREE;

--
-- Indexes for table `setting_permohonan`
--
ALTER TABLE `setting_permohonan`
 ADD PRIMARY KEY (`id_setting_premohonan`) USING BTREE;

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id_user`) USING BTREE, ADD UNIQUE KEY `username` (`username`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `counter_contoh`
--
ALTER TABLE `counter_contoh`
MODIFY `id_counter_contoh` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `counter_lab`
--
ALTER TABLE `counter_lab`
MODIFY `id_counter_lab` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=523;
--
-- AUTO_INCREMENT for table `counter_nomorseri`
--
ALTER TABLE `counter_nomorseri`
MODIFY `id_counter_nomorseri` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `hasil_detail`
--
ALTER TABLE `hasil_detail`
MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=199;
--
-- AUTO_INCREMENT for table `hasil_detail_fp`
--
ALTER TABLE `hasil_detail_fp`
MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `hasil_detail_kn`
--
ALTER TABLE `hasil_detail_kn`
MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=89;
--
-- AUTO_INCREMENT for table `hasil_detail_lbm`
--
ALTER TABLE `hasil_detail_lbm`
MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=509;
--
-- AUTO_INCREMENT for table `hasil_detail_mfb`
--
ALTER TABLE `hasil_detail_mfb`
MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hasil_detail_mycotoxin`
--
ALTER TABLE `hasil_detail_mycotoxin`
MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=145;
--
-- AUTO_INCREMENT for table `hasil_detail_residu`
--
ALTER TABLE `hasil_detail_residu`
MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `kemasan`
--
ALTER TABLE `kemasan`
MODIFY `id_kemasan` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `kodelab`
--
ALTER TABLE `kodelab`
MODIFY `id_kodelab` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `kondisi`
--
ALTER TABLE `kondisi`
MODIFY `id_kondisi` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `kop`
--
ALTER TABLE `kop`
MODIFY `id_kop` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `laporan`
--
ALTER TABLE `laporan`
MODIFY `id_laporan` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `metode`
--
ALTER TABLE `metode`
MODIFY `id_metode` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `paket`
--
ALTER TABLE `paket`
MODIFY `id_paket` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `parameter_pengujian`
--
ALTER TABLE `parameter_pengujian`
MODIFY `id_parameter_pengujian` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=372;
--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=140;
--
-- AUTO_INCREMENT for table `permohonan`
--
ALTER TABLE `permohonan`
MODIFY `id_permohonan` int(1) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `permohonan_detail`
--
ALTER TABLE `permohonan_detail`
MODIFY `id_permohonan_detail` int(1) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=303;
--
-- AUTO_INCREMENT for table `permohonan_detail_metode`
--
ALTER TABLE `permohonan_detail_metode`
MODIFY `id_permohonan_detail_metode` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `permohonan_detail_parameter`
--
ALTER TABLE `permohonan_detail_parameter`
MODIFY `id_permohonan_detail_parameter` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2424;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
MODIFY `id_role` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `role_permission`
--
ALTER TABLE `role_permission`
MODIFY `id_role_permission` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `satuan`
--
ALTER TABLE `satuan`
MODIFY `id_satuan` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `setting_kontrak_kerja`
--
ALTER TABLE `setting_kontrak_kerja`
MODIFY `id_setting_kontrak_kerja` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `setting_kop`
--
ALTER TABLE `setting_kop`
MODIFY `id_setting_kop` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `setting_lhp`
--
ALTER TABLE `setting_lhp`
MODIFY `id_setting_lhp` int(11) NOT NULL AUTO_INCREMENT COMMENT ' ',AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `setting_pengantar_contoh`
--
ALTER TABLE `setting_pengantar_contoh`
MODIFY `id_setting_pengantar_contoh` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `setting_permohonan`
--
ALTER TABLE `setting_permohonan`
MODIFY `id_setting_premohonan` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
