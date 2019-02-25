/*
 Navicat Premium Data Transfer

 Source Server         : local mysql
 Source Server Type    : MySQL
 Source Server Version : 100110
 Source Host           : localhost:3306
 Source Schema         : pertanian

 Target Server Type    : MySQL
 Target Server Version : 100110
 File Encoding         : 65001

 Date: 15/01/2019 10:57:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for counter_contoh
-- ----------------------------
DROP TABLE IF EXISTS `counter_contoh`;
CREATE TABLE `counter_contoh`  (
  `id_counter_contoh` int(11) NOT NULL AUTO_INCREMENT,
  `tahun` int(11) NULL DEFAULT NULL,
  `counter` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_counter_contoh`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of counter_contoh
-- ----------------------------
INSERT INTO `counter_contoh` VALUES (1, 2018, 1);
INSERT INTO `counter_contoh` VALUES (2, 2019, 2);
INSERT INTO `counter_contoh` VALUES (3, 2020, 0);
INSERT INTO `counter_contoh` VALUES (4, 2021, 0);

-- ----------------------------
-- Table structure for counter_lab
-- ----------------------------
DROP TABLE IF EXISTS `counter_lab`;
CREATE TABLE `counter_lab`  (
  `id_counter_lab` int(11) NOT NULL AUTO_INCREMENT,
  `kode_lab` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tahun` int(11) NULL DEFAULT NULL,
  `counter` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_counter_lab`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 92 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of counter_lab
-- ----------------------------
INSERT INTO `counter_lab` VALUES (1, 'BTP', NULL, 0);
INSERT INTO `counter_lab` VALUES (2, 'RP', NULL, 0);
INSERT INTO `counter_lab` VALUES (3, 'MY', NULL, 0);
INSERT INTO `counter_lab` VALUES (4, 'MIK', NULL, 0);
INSERT INTO `counter_lab` VALUES (41, 'Bn.S', 2018, 0);
INSERT INTO `counter_lab` VALUES (44, 'KN', 2018, 0);
INSERT INTO `counter_lab` VALUES (63, NULL, 2018, 0);
INSERT INTO `counter_lab` VALUES (75, 'RP', 2018, 0);
INSERT INTO `counter_lab` VALUES (80, 'LBM', 2018, 0);
INSERT INTO `counter_lab` VALUES (83, 'Bn.P', 2018, 0);
INSERT INTO `counter_lab` VALUES (84, 'MIK', 2018, 0);
INSERT INTO `counter_lab` VALUES (85, 'FP', 2018, 0);
INSERT INTO `counter_lab` VALUES (86, 'KN', 2019, 0);
INSERT INTO `counter_lab` VALUES (91, 'LBM', 2019, 0);

-- ----------------------------
-- Table structure for counter_nomorseri
-- ----------------------------
DROP TABLE IF EXISTS `counter_nomorseri`;
CREATE TABLE `counter_nomorseri`  (
  `id_counter_nomorseri` int(11) NOT NULL AUTO_INCREMENT,
  `tahun` int(11) NULL DEFAULT NULL,
  `counter` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_counter_nomorseri`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of counter_nomorseri
-- ----------------------------
INSERT INTO `counter_nomorseri` VALUES (10, 2018, 10);
INSERT INTO `counter_nomorseri` VALUES (11, 2019, 0);
INSERT INTO `counter_nomorseri` VALUES (12, 2020, 0);
INSERT INTO `counter_nomorseri` VALUES (13, 2021, 0);

-- ----------------------------
-- Table structure for hasil
-- ----------------------------
DROP TABLE IF EXISTS `hasil`;
CREATE TABLE `hasil`  (
  `prim` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nomor_seri` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ceklis_1` bit(1) NULL DEFAULT NULL,
  `ceklis_2` bit(1) NULL DEFAULT NULL,
  PRIMARY KEY (`prim`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of hasil
-- ----------------------------
INSERT INTO `hasil` VALUES ('001-30-2018_3', '180007', b'1', b'1');
INSERT INTO `hasil` VALUES ('001-31-2018_4', '180010', b'0', b'0');

-- ----------------------------
-- Table structure for hasil_detail
-- ----------------------------
DROP TABLE IF EXISTS `hasil_detail`;
CREATE TABLE `hasil_detail`  (
  `id_hasil` int(11) NOT NULL AUTO_INCREMENT,
  `id_permohonan_detail_parameter` int(11) NULL DEFAULT NULL,
  `hasil` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `satuan` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `metode` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `keterangan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `standard` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_hasil`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of hasil_detail
-- ----------------------------
INSERT INTO `hasil_detail` VALUES (7, 1, '100', 'gram', 'GC', 'as', 1);
INSERT INTO `hasil_detail` VALUES (8, 2, '200', 'kilo', 'BBPPMBTPH*)', '', 1);
INSERT INTO `hasil_detail` VALUES (9, 3, '300', 'liter', 'Rapid Test', '', 1);
INSERT INTO `hasil_detail` VALUES (12, 11, '67,56', '%', 'AOAC [Titrasi]', '', 1);

-- ----------------------------
-- Table structure for kemasan
-- ----------------------------
DROP TABLE IF EXISTS `kemasan`;
CREATE TABLE `kemasan`  (
  `id_kemasan` int(11) NOT NULL AUTO_INCREMENT,
  `kemasan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `updated_by` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_kemasan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of kemasan
-- ----------------------------
INSERT INTO `kemasan` VALUES (4, 'plastik', '2018-10-14 21:53:13', NULL, NULL, NULL);
INSERT INTO `kemasan` VALUES (5, 'alumunium foil', '2018-10-14 21:53:18', NULL, NULL, NULL);
INSERT INTO `kemasan` VALUES (6, 'kardus', '2018-10-14 21:53:21', NULL, NULL, NULL);
INSERT INTO `kemasan` VALUES (7, 'kertas', '2018-10-14 21:53:25', NULL, NULL, NULL);
INSERT INTO `kemasan` VALUES (8, 'sterofoam', '2018-10-14 21:53:29', NULL, NULL, NULL);
INSERT INTO `kemasan` VALUES (9, 'karung', '2018-10-14 21:53:33', NULL, NULL, NULL);
INSERT INTO `kemasan` VALUES (10, 'kotak', '2018-10-14 21:53:36', NULL, NULL, NULL);
INSERT INTO `kemasan` VALUES (11, 'botol', '2018-10-14 21:53:40', NULL, NULL, NULL);
INSERT INTO `kemasan` VALUES (12, 'botol kaca', '2018-10-14 21:53:45', NULL, NULL, NULL);
INSERT INTO `kemasan` VALUES (13, 'botol plastik', '2018-10-14 21:53:49', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for kodelab
-- ----------------------------
DROP TABLE IF EXISTS `kodelab`;
CREATE TABLE `kodelab`  (
  `id_kodelab` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `updated_by` int(11) NULL DEFAULT NULL,
  `kodelab` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `desc` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_kodelab`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of kodelab
-- ----------------------------
INSERT INTO `kodelab` VALUES (1, '2018-11-25 13:06:31', NULL, NULL, NULL, 'Bu', 'Bu - Buah');
INSERT INTO `kodelab` VALUES (2, '2018-11-25 13:06:37', NULL, NULL, NULL, 'Bn.P', 'Bn.P - Benih pengawasan dan Pengecekan');
INSERT INTO `kodelab` VALUES (3, '2018-11-25 13:06:46', NULL, NULL, NULL, 'Bn.S', 'Bn.S - Benih Sertifikasi');
INSERT INTO `kodelab` VALUES (4, '2018-11-25 13:06:52', NULL, NULL, NULL, 'Ol', 'Ol - Olahan');
INSERT INTO `kodelab` VALUES (5, '2018-11-25 13:07:01', NULL, NULL, NULL, 'Sy', 'Sy - Sayuran');
INSERT INTO `kodelab` VALUES (6, '2018-11-25 13:07:08', NULL, NULL, NULL, 'UP', 'UP - Uji Profisiensi');
INSERT INTO `kodelab` VALUES (7, '2018-11-25 13:07:14', NULL, NULL, NULL, 'FP', 'FP - Formulasi Pertisida');
INSERT INTO `kodelab` VALUES (8, '2018-11-25 13:07:20', NULL, NULL, NULL, 'Kh', 'Kh - Uji Khusus');

-- ----------------------------
-- Table structure for kondisi
-- ----------------------------
DROP TABLE IF EXISTS `kondisi`;
CREATE TABLE `kondisi`  (
  `id_kondisi` int(11) NOT NULL AUTO_INCREMENT,
  `kondisi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `updated_by` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_kondisi`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of kondisi
-- ----------------------------
INSERT INTO `kondisi` VALUES (3, 'baik', '2018-10-14 21:50:50', NULL, NULL, NULL);
INSERT INTO `kondisi` VALUES (4, 'buruk', '2018-10-14 21:50:57', NULL, NULL, NULL);
INSERT INTO `kondisi` VALUES (5, 'basah', '2018-10-14 21:51:00', NULL, NULL, NULL);
INSERT INTO `kondisi` VALUES (6, 'tidak baik', '2018-10-14 21:51:04', NULL, NULL, NULL);
INSERT INTO `kondisi` VALUES (7, 'kering', '2018-10-14 21:51:08', NULL, NULL, NULL);
INSERT INTO `kondisi` VALUES (8, 'layu', '2018-10-14 21:51:11', NULL, NULL, NULL);
INSERT INTO `kondisi` VALUES (9, 'busuk', '2018-10-14 21:51:15', NULL, NULL, NULL);
INSERT INTO `kondisi` VALUES (10, 'berbau', '2018-10-14 21:51:18', NULL, NULL, NULL);
INSERT INTO `kondisi` VALUES (11, 'Baik, daun menguning', '2018-12-31 10:57:29', NULL, NULL, NULL);
INSERT INTO `kondisi` VALUES (12, NULL, '2018-12-31 11:53:59', NULL, NULL, NULL);
INSERT INTO `kondisi` VALUES (13, 'Kurang Baik', '2018-12-31 11:54:28', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for kop
-- ----------------------------
DROP TABLE IF EXISTS `kop`;
CREATE TABLE `kop`  (
  `id_kop` int(11) NOT NULL AUTO_INCREMENT,
  `kop` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `updated_by` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_kop`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for laporan
-- ----------------------------
DROP TABLE IF EXISTS `laporan`;
CREATE TABLE `laporan`  (
  `id_laporan` int(11) NOT NULL AUTO_INCREMENT,
  `laporan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `updated_by` int(11) NULL DEFAULT NULL,
  `kode_contoh` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kode_laporan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_laporan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of laporan
-- ----------------------------
INSERT INTO `laporan` VALUES (3, 'BENIH', '2018-10-19 11:57:49', NULL, NULL, NULL, 'Bn.P', 'DF/MA/030');
INSERT INTO `laporan` VALUES (4, 'FORMULASI PESTISIDA', '2018-10-19 11:58:03', NULL, NULL, NULL, 'FP', 'DF/MA/028');
INSERT INTO `laporan` VALUES (5, 'MIKROBIOLOGI', '2018-10-19 11:58:12', NULL, NULL, NULL, 'MIK', 'DF/MA/027');
INSERT INTO `laporan` VALUES (6, 'RESIDU PESTISIDA', '2018-10-19 11:58:26', NULL, NULL, NULL, 'RP', 'DF/MA/026');
INSERT INTO `laporan` VALUES (7, 'KLORIN', '2018-10-19 11:58:35', NULL, NULL, NULL, 'BTP', 'DF/MA/030');
INSERT INTO `laporan` VALUES (8, 'RESIDU PESTISIDA (GOLONGAN ORGANOKLOR)', '2018-10-19 11:59:17', NULL, NULL, NULL, 'RP', 'DF/MA/026');
INSERT INTO `laporan` VALUES (9, 'RESIDU PESTISIDA (GOLONGAN ORGANOFOSFAT)', '2018-10-19 11:59:45', NULL, NULL, NULL, 'RP', 'DF/MA/026');
INSERT INTO `laporan` VALUES (10, 'RESIDU PESTISIDA (GOLONGAN PERETROID)', '2018-10-19 12:00:03', NULL, NULL, NULL, 'RP', 'DF/MA/026');
INSERT INTO `laporan` VALUES (11, 'RESIDU PESTISIDA (GOLONGAN KARBAMAT)', '2018-10-19 12:00:44', NULL, NULL, NULL, 'RP', 'DF/MA/026');
INSERT INTO `laporan` VALUES (12, 'KOMPOSISI NUTRISI', '2018-10-19 12:01:23', NULL, NULL, NULL, 'KN', 'DF/MA/029');
INSERT INTO `laporan` VALUES (13, 'LOGAM BERAT', '2018-10-19 12:01:34', NULL, NULL, NULL, 'LBM', 'DF/MA/029');
INSERT INTO `laporan` VALUES (14, 'MINERAL', '2018-10-19 12:01:43', NULL, NULL, NULL, 'LBM', 'DF/MA/029');
INSERT INTO `laporan` VALUES (15, 'RESIDU PESTISIDA (GOLONGAN LAIN)', '2018-10-19 14:42:01', NULL, NULL, NULL, 'RP', 'DF/MA/026');
INSERT INTO `laporan` VALUES (17, 'RESIDU PESTISIDA (GOLONGAN PIRETROID)', '2018-12-20 07:59:19', NULL, NULL, NULL, 'RP', 'DF/MA/026');
INSERT INTO `laporan` VALUES (18, 'KIMIA KANDUNGAN MINERAL DAN LOGAM BERAT', '2018-12-20 08:09:13', NULL, NULL, NULL, 'LBM', 'DF/MA/029');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id_menu` int(11) NOT NULL AUTO_INCREMENT,
  `nama_menu` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `parent_menu` int(11) NULL DEFAULT NULL,
  `urut` int(11) NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `base_url` bit(1) NULL DEFAULT b'1',
  `class` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_menu`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (2, 'Administration', 0, 5, 'javascript:void(0)', b'0', 'administration');
INSERT INTO `menu` VALUES (3, 'Data Master', 0, 3, 'javascript:void(0)', b'0', 'master');
INSERT INTO `menu` VALUES (4, 'Work Area', 0, 1, 'javascript:void(0)', b'0', 'work');
INSERT INTO `menu` VALUES (5, 'Rekap', 0, 2, 'javascript:void(0)', b'0', 'rekap');
INSERT INTO `menu` VALUES (6, 'Logout', 0, 6, '', b'1', 'logout');
INSERT INTO `menu` VALUES (7, 'Master Pelanggan', 3, NULL, 'master/pelanggan', b'1', 'pelanggan');
INSERT INTO `menu` VALUES (8, 'Permohonan Pengujian', 4, NULL, 'work/permohonan', b'1', 'permohonan');
INSERT INTO `menu` VALUES (9, 'User', 2, NULL, 'administration/user', b'1', 'user');
INSERT INTO `menu` VALUES (10, 'Role', 2, NULL, 'administration/role', b'1', 'roles');
INSERT INTO `menu` VALUES (11, 'Master Kondisi', 3, NULL, 'master/kondisi', b'1', 'kondisi');
INSERT INTO `menu` VALUES (12, 'Master Kemasan', 3, NULL, 'master/kemasan', b'1', 'kemasan');
INSERT INTO `menu` VALUES (13, 'Master Metode', 3, NULL, 'master/metode', b'1', 'metode');
INSERT INTO `menu` VALUES (15, 'Master Laporan', 3, NULL, 'master/laporan', b'1', 'laporan');
INSERT INTO `menu` VALUES (16, 'Master Parameter Pengujian', 3, NULL, 'master/parameter_pengujian', b'1', 'parameter_pengujian');
INSERT INTO `menu` VALUES (17, 'Kontrak Kerja', 4, NULL, 'work/kontrak', b'1', 'kontrak');
INSERT INTO `menu` VALUES (18, 'Pengantar Contoh', 4, NULL, 'work/contoh', b'1', 'contoh');
INSERT INTO `menu` VALUES (19, 'Laporan Hasil Pengujian', 4, NULL, 'work/hasil', b'1', 'hasil');
INSERT INTO `menu` VALUES (20, 'Buku Induk', 5, NULL, 'rekap/buku_induk', b'1', 'buku_induk');
INSERT INTO `menu` VALUES (21, 'Buku Kode Contoh Lab', 5, NULL, 'rekap/buku_lab', b'1', 'buku_lab');
INSERT INTO `menu` VALUES (22, 'Setting', 0, 4, 'javascript:void(0)', b'0', 'setting');
INSERT INTO `menu` VALUES (23, 'Setting Permohonan', 22, 2, 'setting/permohonan', b'1', 'permohonan');
INSERT INTO `menu` VALUES (24, 'Setting Kontrak Kerja', 22, 3, 'setting/kontrak_kerja', b'1', 'kontrak_kerja');
INSERT INTO `menu` VALUES (25, 'Setting Pengantar Contoh', 22, 4, 'setting/pengantar_contoh', b'1', 'pengantar_contoh');
INSERT INTO `menu` VALUES (26, 'Setting Kop', 22, 1, 'setting/kop', b'1', 'kop');

-- ----------------------------
-- Table structure for metode
-- ----------------------------
DROP TABLE IF EXISTS `metode`;
CREATE TABLE `metode`  (
  `id_metode` int(11) NOT NULL AUTO_INCREMENT,
  `metode` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `updated_by` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_metode`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of metode
-- ----------------------------
INSERT INTO `metode` VALUES (1, 'GC', '2018-10-28 13:21:33', NULL, NULL, NULL);
INSERT INTO `metode` VALUES (2, 'BBPPMBTPH*)', '2018-10-28 13:21:53', NULL, NULL, NULL);
INSERT INTO `metode` VALUES (3, 'Rapid Test', '2018-10-28 13:22:06', NULL, NULL, NULL);
INSERT INTO `metode` VALUES (4, 'Organoleptik', '2018-10-28 13:22:18', NULL, NULL, NULL);
INSERT INTO `metode` VALUES (5, 'L2', '2018-10-28 13:22:34', NULL, NULL, NULL);
INSERT INTO `metode` VALUES (6, 'QuEChERS-Method EN15662-2008 (GC - ECD)', '2018-10-28 13:23:13', NULL, NULL, NULL);
INSERT INTO `metode` VALUES (7, 'QuEChERS-AOAC Official Method 2007.01 (GC-FPD)', '2018-10-28 13:24:08', NULL, NULL, NULL);
INSERT INTO `metode` VALUES (8, 'QuEChERS-AOAC Official Method 2007.01 (GC-ECD)', '2018-10-28 13:24:40', NULL, NULL, NULL);
INSERT INTO `metode` VALUES (9, 'QuEChERS-AOAC Official Method 2007.01 (LC-MS/MS)', '2018-10-28 13:25:25', NULL, NULL, NULL);
INSERT INTO `metode` VALUES (10, 'SNI 01-2891-1992', '2018-10-28 13:25:52', NULL, NULL, NULL);
INSERT INTO `metode` VALUES (11, 'AAS-Grafite Furnace', '2018-10-28 13:26:05', NULL, NULL, NULL);
INSERT INTO `metode` VALUES (12, 'AAS-FLame', '2018-10-28 13:26:13', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for parameter_pengujian
-- ----------------------------
DROP TABLE IF EXISTS `parameter_pengujian`;
CREATE TABLE `parameter_pengujian`  (
  `id_parameter_pengujian` int(11) NOT NULL AUTO_INCREMENT,
  `parameter_pengujian` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `harga` bigint(20) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `updated_by` int(11) NULL DEFAULT NULL,
  `id_laporan` int(11) NULL DEFAULT NULL,
  `kode_contoh` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_parameter_pengujian`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 93 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of parameter_pengujian
-- ----------------------------
INSERT INTO `parameter_pengujian` VALUES (1, 'Kadar Air', 50000, '2018-10-05 03:41:58', NULL, NULL, NULL, 12, NULL);
INSERT INTO `parameter_pengujian` VALUES (2, 'Kadar Abu', 50000, '2018-10-05 03:41:59', NULL, NULL, NULL, 12, NULL);
INSERT INTO `parameter_pengujian` VALUES (3, 'Karbohidrat', 50000, '2018-10-05 03:42:00', NULL, NULL, NULL, 12, NULL);
INSERT INTO `parameter_pengujian` VALUES (4, 'Pb (Timbal)', 100000, '2018-10-05 03:42:01', NULL, NULL, NULL, 13, NULL);
INSERT INTO `parameter_pengujian` VALUES (5, 'Cd (Cadmium)', 100000, '2018-10-05 03:42:02', NULL, NULL, NULL, 13, NULL);
INSERT INTO `parameter_pengujian` VALUES (6, 'Seng (Zn)', 100000, '2018-10-05 03:42:04', NULL, NULL, NULL, 14, NULL);
INSERT INTO `parameter_pengujian` VALUES (7, 'Lindane', 100000, '2018-10-05 03:42:06', NULL, NULL, NULL, 8, NULL);
INSERT INTO `parameter_pengujian` VALUES (8, 'Aldrin', 100000, '2018-10-19 12:09:49', NULL, NULL, NULL, 8, NULL);
INSERT INTO `parameter_pengujian` VALUES (9, 'o.p-DDE', 100000, '2018-10-19 12:10:04', NULL, NULL, NULL, 8, NULL);
INSERT INTO `parameter_pengujian` VALUES (10, 'p.p-DDE', 100000, '2018-10-19 12:10:10', NULL, NULL, NULL, 8, NULL);
INSERT INTO `parameter_pengujian` VALUES (11, 'Deldrin', 75000, '2018-10-19 12:10:17', NULL, NULL, NULL, 8, NULL);
INSERT INTO `parameter_pengujian` VALUES (12, 'o.p-DDT', 75000, '2018-10-19 12:10:25', NULL, NULL, NULL, 8, NULL);
INSERT INTO `parameter_pengujian` VALUES (13, 'p.p-DDT', 75000, '2018-10-19 12:10:31', NULL, NULL, NULL, 8, NULL);
INSERT INTO `parameter_pengujian` VALUES (14, 'Dichlorvos', 75000, '2018-10-19 12:12:03', NULL, NULL, NULL, 9, NULL);
INSERT INTO `parameter_pengujian` VALUES (15, 'Dimethoate', 75000, '2018-10-19 12:12:10', NULL, NULL, NULL, 9, NULL);
INSERT INTO `parameter_pengujian` VALUES (16, 'Diazinon', 75000, '2018-10-19 12:12:17', NULL, NULL, NULL, 9, NULL);
INSERT INTO `parameter_pengujian` VALUES (17, 'Fenitrothion', 75000, '2018-10-19 12:12:30', NULL, NULL, NULL, 9, NULL);
INSERT INTO `parameter_pengujian` VALUES (18, 'Chlorphyrifos', 75000, '2018-10-19 12:12:45', NULL, NULL, NULL, 9, NULL);
INSERT INTO `parameter_pengujian` VALUES (19, 'Parathion', 75000, '2018-10-19 12:12:52', NULL, NULL, NULL, 9, NULL);
INSERT INTO `parameter_pengujian` VALUES (20, 'Methidation', 75000, '2018-10-19 12:13:03', NULL, NULL, NULL, 9, NULL);
INSERT INTO `parameter_pengujian` VALUES (21, 'Profenofos', 100000, '2018-10-19 12:13:13', NULL, NULL, NULL, 9, NULL);
INSERT INTO `parameter_pengujian` VALUES (22, 'Carbaryl', 100000, '2018-12-20 07:56:24', NULL, NULL, NULL, 11, NULL);
INSERT INTO `parameter_pengujian` VALUES (23, 'Carbofuran', 100000, '2018-12-20 07:57:54', NULL, NULL, NULL, 11, NULL);
INSERT INTO `parameter_pengujian` VALUES (24, 'Methomyl', 100000, '2018-12-20 07:58:11', NULL, NULL, NULL, 11, NULL);
INSERT INTO `parameter_pengujian` VALUES (25, 'Oxamyl', 100000, '2018-12-20 07:58:27', NULL, NULL, NULL, 11, NULL);
INSERT INTO `parameter_pengujian` VALUES (26, 'Permetrin', 100000, '2018-12-20 08:00:16', NULL, NULL, NULL, 17, NULL);
INSERT INTO `parameter_pengujian` VALUES (27, 'Deltametrin', 100000, '2018-12-20 08:00:55', NULL, NULL, NULL, 17, NULL);
INSERT INTO `parameter_pengujian` VALUES (28, 'beta-Siflutrin', 100000, '2018-12-20 08:01:20', NULL, NULL, NULL, 17, NULL);
INSERT INTO `parameter_pengujian` VALUES (29, 'lamda-Sihalotrin', 100000, '2018-12-20 08:01:29', NULL, NULL, NULL, 17, NULL);
INSERT INTO `parameter_pengujian` VALUES (30, 'Fenvalerat', 100000, '2018-12-20 08:01:40', NULL, NULL, NULL, 17, NULL);
INSERT INTO `parameter_pengujian` VALUES (31, 'Fenprofatrin', 100000, '2018-12-20 08:01:48', NULL, NULL, NULL, 17, NULL);
INSERT INTO `parameter_pengujian` VALUES (32, 'Sipermetrin', 100000, '2018-12-20 08:01:55', NULL, NULL, NULL, 17, NULL);
INSERT INTO `parameter_pengujian` VALUES (33, 'beta-Sipermetrin', 100000, '2018-12-20 08:02:01', NULL, NULL, NULL, 17, NULL);
INSERT INTO `parameter_pengujian` VALUES (34, 'alfa-Sipermetrin', 100000, '2018-12-20 08:02:09', NULL, NULL, NULL, 17, NULL);
INSERT INTO `parameter_pengujian` VALUES (35, 'Fenthion', 100000, '2018-12-20 08:04:31', NULL, NULL, NULL, 9, NULL);
INSERT INTO `parameter_pengujian` VALUES (36, 'Formalin', 100000, '2018-12-20 08:06:52', NULL, NULL, NULL, 12, NULL);
INSERT INTO `parameter_pengujian` VALUES (37, 'Kadar Fruktosa', 100000, '2018-12-20 08:07:03', NULL, NULL, NULL, 12, NULL);
INSERT INTO `parameter_pengujian` VALUES (38, 'Kadar Glukosa', 100000, '2018-12-20 08:07:25', NULL, NULL, NULL, 12, NULL);
INSERT INTO `parameter_pengujian` VALUES (39, 'Kadar Karbohidrat', 100000, '2018-12-20 08:07:34', NULL, NULL, NULL, 12, NULL);
INSERT INTO `parameter_pengujian` VALUES (40, 'Kadar Lemak', 100000, '2018-12-20 08:07:43', NULL, NULL, NULL, 12, NULL);
INSERT INTO `parameter_pengujian` VALUES (41, 'Kadar Protein', 100000, '2018-12-20 08:07:52', NULL, NULL, NULL, 12, NULL);
INSERT INTO `parameter_pengujian` VALUES (42, 'Kadar Serat', 100000, '2018-12-20 08:08:01', NULL, NULL, NULL, 12, NULL);
INSERT INTO `parameter_pengujian` VALUES (43, 'Klorin (Pemutih)', 100000, '2018-12-20 08:08:17', NULL, NULL, NULL, 12, NULL);
INSERT INTO `parameter_pengujian` VALUES (44, 'Sachrosa', 100000, '2018-12-20 08:08:27', NULL, NULL, NULL, 12, NULL);
INSERT INTO `parameter_pengujian` VALUES (45, 'Vitamin C', 100000, '2018-12-20 08:08:36', NULL, NULL, NULL, 12, NULL);
INSERT INTO `parameter_pengujian` VALUES (46, 'Besi (Fe) / AAS', 100000, '2018-12-20 08:09:35', NULL, NULL, NULL, 18, NULL);
INSERT INTO `parameter_pengujian` VALUES (47, 'Kalsium (Ca) / AAS', 100000, '2018-12-20 08:09:50', NULL, NULL, NULL, 18, NULL);
INSERT INTO `parameter_pengujian` VALUES (48, 'Seng (Zn) / AAS', 100000, '2018-12-20 08:10:01', NULL, NULL, NULL, 18, NULL);
INSERT INTO `parameter_pengujian` VALUES (49, 'Tembaga (Cu) / AAS', 100000, '2018-12-20 08:10:11', NULL, NULL, NULL, 18, NULL);
INSERT INTO `parameter_pengujian` VALUES (50, 'Magnesium (Mg) / AAS', 100000, '2018-12-20 08:10:20', NULL, NULL, NULL, 18, NULL);
INSERT INTO `parameter_pengujian` VALUES (51, 'Timbal (Pb) / AAS', 100000, '2018-12-20 08:10:28', NULL, NULL, NULL, 18, NULL);
INSERT INTO `parameter_pengujian` VALUES (52, 'Cadmium (Cd) / AAS', 100000, '2018-12-20 08:10:37', NULL, NULL, NULL, 18, NULL);
INSERT INTO `parameter_pengujian` VALUES (53, 'E.coli', 100000, '2018-12-20 08:12:20', NULL, NULL, NULL, 5, NULL);
INSERT INTO `parameter_pengujian` VALUES (54, 'Salmonella', 100000, '2018-12-20 08:12:28', NULL, NULL, NULL, 5, NULL);
INSERT INTO `parameter_pengujian` VALUES (55, 'TPC/ALT', 100000, '2018-12-20 08:12:36', NULL, NULL, NULL, 5, NULL);
INSERT INTO `parameter_pengujian` VALUES (56, 'MPN Coliform', 100000, '2018-12-20 08:12:45', NULL, NULL, NULL, 5, NULL);
INSERT INTO `parameter_pengujian` VALUES (57, 'Kapang Khamir', 100000, '2018-12-20 08:12:54', NULL, NULL, NULL, 5, NULL);
INSERT INTO `parameter_pengujian` VALUES (58, 'S. aureus', 100000, '2018-12-20 08:13:04', NULL, NULL, NULL, 5, NULL);
INSERT INTO `parameter_pengujian` VALUES (59, 'Listeria,sp', 100000, '2018-12-20 08:13:14', NULL, NULL, NULL, 5, NULL);
INSERT INTO `parameter_pengujian` VALUES (60, 'Atrazine', 100000, '2018-12-20 08:13:49', NULL, NULL, NULL, 4, NULL);
INSERT INTO `parameter_pengujian` VALUES (61, 'Kadar Air', 100000, '2018-12-20 08:15:03', NULL, NULL, NULL, 3, NULL);
INSERT INTO `parameter_pengujian` VALUES (62, 'Kemurnian Fisik :Benih Murni', 100000, '2018-12-20 08:15:25', NULL, NULL, NULL, 3, NULL);
INSERT INTO `parameter_pengujian` VALUES (63, 'Kemurnian Fisik : Benih Tanaman Lain', 100000, '2018-12-20 08:15:40', NULL, NULL, NULL, 3, NULL);
INSERT INTO `parameter_pengujian` VALUES (64, 'Kemurnian Fisik : Kotoran Benih', 100000, '2018-12-20 08:15:51', NULL, NULL, NULL, 3, NULL);
INSERT INTO `parameter_pengujian` VALUES (65, 'Daya Berkecambah : Kecambah Normal', 100000, '2018-12-20 08:16:03', NULL, NULL, NULL, 3, NULL);
INSERT INTO `parameter_pengujian` VALUES (66, 'Daya Berkecambah : Kecambah Abnormal', 100000, '2018-12-20 08:16:15', NULL, NULL, NULL, 3, NULL);
INSERT INTO `parameter_pengujian` VALUES (67, 'Daya Berkecambah : Kecambah Abnormal', 100000, '2018-12-20 08:16:29', NULL, NULL, NULL, 3, NULL);
INSERT INTO `parameter_pengujian` VALUES (68, 'Daya Berkecambah : Biji Keras', 100000, '2018-12-20 08:16:41', NULL, NULL, NULL, 3, NULL);
INSERT INTO `parameter_pengujian` VALUES (69, 'Daya Berkecambah : Biji Segar Tidak Tumbuh', 100000, '2018-12-20 08:16:53', NULL, NULL, NULL, 3, NULL);
INSERT INTO `parameter_pengujian` VALUES (70, 'Daya Berkecambah : Biji Mati', 100000, '2018-12-20 08:17:05', NULL, NULL, NULL, 3, NULL);
INSERT INTO `parameter_pengujian` VALUES (71, 'Bobot 1000 Butir', 100000, '2018-12-20 08:17:13', NULL, NULL, NULL, 3, NULL);
INSERT INTO `parameter_pengujian` VALUES (72, 'Kesehatan Benih', 100000, '2018-12-20 08:17:20', NULL, NULL, NULL, 3, NULL);
INSERT INTO `parameter_pengujian` VALUES (73, 'Uji Cepat Viabilitas (TZ)', 100000, '2018-12-20 08:17:29', NULL, NULL, NULL, 3, NULL);
INSERT INTO `parameter_pengujian` VALUES (74, 'Abamectin', 100000, '2018-12-26 22:47:14', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (75, 'Acetamiprid', 100000, '2018-12-26 22:48:07', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (76, 'Ametryn', 100000, '2018-12-26 22:48:30', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (78, 'Aminopyralid\r\n', 100000, '2018-12-26 22:48:55', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (79, 'Amiotriazole\r\n', 100000, '2018-12-26 22:49:17', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (80, 'Atrazine\r\n', 100000, '2018-12-26 22:49:41', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (81, 'Azaconazole\r\n', 100000, '2018-12-26 22:49:49', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (82, 'Azocyclotin\r\n', 100000, '2018-12-26 22:49:59', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (83, 'Azoxystrobin\r\n', 100000, '2018-12-26 22:50:06', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (84, 'Benfluralin\r\n', 100000, '2018-12-26 22:50:18', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (85, 'Benfuresate', 100000, '2018-12-26 22:52:08', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (86, 'Bensulfuron-Methyl', 100000, '2018-12-26 22:52:08', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (88, 'Bitertanol', 100000, '2018-12-26 22:53:07', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (89, 'Boscalid', 100000, '2018-12-26 22:53:07', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (90, 'Brodifacoum', 100000, '2018-12-26 22:53:07', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (91, 'Bromacil', 100000, '2018-12-26 22:53:07', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (92, 'Propineb 70%', 100000, '2018-12-31 11:03:53', NULL, NULL, NULL, 4, NULL);

-- ----------------------------
-- Table structure for pelanggan
-- ----------------------------
DROP TABLE IF EXISTS `pelanggan`;
CREATE TABLE `pelanggan`  (
  `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT,
  `id_pelanggan_lama` int(11) NULL DEFAULT NULL,
  `nama` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `instansi_perusahaan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nik_npwp` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alamat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `telepon_fax` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kontak_person` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `updated_by` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_pelanggan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 140 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of pelanggan
-- ----------------------------
INSERT INTO `pelanggan` VALUES (1, 25, 'M. Noer', 'PT. Ganesha Abaditama', NULL, 'Jl. Buni No. 33 Cipayung, Jakarta Timur', '-', 'Mulyadi', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (2, 26, 'Aman Suhanda', 'Seksi Sertifikasi BPMSHPHH/PT. Hextar Seed', NULL, 'Jl. Raya Jambore No. 1 Cibubur, Jakarta Timur', '02187752692', NULL, '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (3, 27, 'Aman Suhanda', 'Seksi Sertifikasi BPMSHPHH/PT. Syngenta Indonesia', NULL, 'Jl. Raya Jambore No. 1 Cibubur, Jakarta Timur', '02187752692', NULL, '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (4, 28, 'M. Noer', 'PT. Ganesha Abaditama', NULL, 'Jl. Buni No. 33 Cipayung, Jakarta Timur', '0218452306', 'Mulyadi', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (5, 29, 'Aman Suhanda', 'Seksi Sertifikasi BPMHTPH/PT. Syngenta Indonesia', NULL, 'Jl. Raya Jambore No. 1 Cibubur, Jakarta Timur', '02187752692', NULL, '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (6, 30, 'Cinde.T', 'M-Brio Food Laboratory', NULL, 'Jl. Villa Indah Pajajaran Blok B17, Pulo Armin Bogor', '0251-8346986', '-', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (7, 31, 'Kusmin', 'Seksi Sertifikasi BPMHTPH/PT. Dhanyaa seed', NULL, 'Jl. Raya Jambore No. 1 Cibubur, Jakarta Timur', '02187752692', NULL, '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (8, 32, 'Ir. Parulian', 'BBTKL PP Jakarta', NULL, 'Jl. Balai Rakyat No. 2, Cakung Timur Jakarta', '021-46824247/258', NULL, '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (9, 33, 'Parulian', 'BBTKL PP, Jakarta', NULL, 'Jl. Balai Rakyat No. 2 Cakung Timur, Jakarta', '021-46824247/258', '-', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (10, 34, 'Yanto', 'PT. PUTRISARI KIMIANUSA', NULL, 'Jl. Mercedes Benz No. 227 Cicadas, Gn. Putri Bogor', '081310490008', NULL, '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (11, 38, 'Halimah', 'BIDANG PASCA PANEN', NULL, 'Jl. Gunung Sahari Raya No. 11, Jakarta', '-', '-', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (12, 39, 'Bahrun', 'PT. United Phosphorus Indonesia', NULL, 'Jl. HR.Rasuna Said Kav.X2 No.4, JKT', '021-2520440', NULL, '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (13, 40, 'Halimah', 'Bid. Pasca Panen', NULL, 'Jl. G. Sahari Raya No.11 JKT', '-', '-', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (14, 41, 'Nurhayati', 'Badan Ketahanan Pangan Prov. Sum-sel', NULL, 'Jl. Kol. H. Barlian KM.6 No. 82, Palembang', '0711-410488-410084', 'Nurhayati', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (15, 42, 'Djoko Suroso', 'PT. SURAT TANI', NULL, 'Jl. Kol. Sugiono 2 C, Medan', '0816928932', 'Djoko Suroso', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (16, 43, 'Mayang Sari Marchainy', 'PT. Dupont Agricultural Products Indonesia', NULL, 'Jl. Ampera Raya No. 9-10, Jakarta', NULL, NULL, '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (17, 44, 'N. Suryati', 'BBPPMBTPH', NULL, 'Jl. Raya Tapos Kotak Pos 20, Depok', '-', NULL, '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (18, 151, 'Iwan Indriyanto', 'Bidang Pertanian DKPKP', NULL, 'Jl. Gng Sahari Ry No. 11', '0216285277', 'Iwan Indriyanto', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (19, 152, 'Sumiyati', 'Bidang Ketahanan Pangan DKPKP', NULL, 'Jl. Gunung Sahari Raya No. 11, Jakarta', NULL, NULL, '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (20, 79, 'Mulyanto', 'PT. Petrokimia Kayaku', NULL, 'Jl. Jend. A. Yani PO.BOX 107, Gresik, Jawa Timur', '085216669745', 'Mulyanto', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (21, 80, 'Patrick J.Godwin', 'Dir. Pupuk dan Pestisida/PT. Gelpi Kurnialestari', NULL, 'Jl. Harsono RM No. 3, JKT', '08161121020', 'Patrick J.Godwin', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (22, 81, 'Nanin Norrhajati', 'Dirjen Prasarana dan Sarana Pertanian/PT. Syngenta', NULL, 'Jl. Harsono RM No. 3, Ragunan Jakarta Selatan', '08121105531', 'Nanin Norrhajati', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (23, 82, 'Sugiono', 'PT. Deltagro Mulya Sejati', NULL, 'Komp. Roxy Mas Blok C2-35,KH. Hasyim Ashari 125, JKT', '0811181261', NULL, '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (24, 83, 'Mujiati', 'Bidang Pasca Panen', NULL, 'Jl. Raya Gn. Saharai No. 11, Jakarta', '-', 'Mujiati', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (25, 84, 'Yanto', 'Dirjen Prasarana dan Sarana Pertanian/PT.P. Kayaku', NULL, 'Jl. Harsono RM No. 3, Ragunan Jakarta Selatan', '08121105531', 'Nanin Norrhajati', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (26, 85, 'Winyarput', 'PT.Petrokimia Kayaku', NULL, 'Jl. Jend. A. Yani PO.Box 107, Gresik', '08121303501', 'Winyarput', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (27, 86, 'Dewi. K', 'Badan Ketahanan Pangan Pemprov. Kep. Ba-Bel', NULL, 'Komp.Perk dan Pemukiman Terpadu Pemprov Babel', '0717-4255039/4255039', 'Dewi. K', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (28, 87, 'KAN', 'Komite Akreditasi Nasional', NULL, 'Gd.Manggala Wanabakti Blok IV Lt.4, Jl. Gatot Subroto', '02134227545', NULL, '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (29, 88, 'Dewi. K', 'Badan Ketahanan Pangan Pemprov. Kep. Ba-Bel', NULL, 'Komp.Perk dan Pemukiman Terpadu Pemprov Babel', '0717-4255039/4255039', 'Dewi. K', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (30, 89, 'Ira', 'Bidang Pasca Panen', NULL, 'Jl. Raya Gn. Sahari No. 11, Jakarta', '-', 'Halimah', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (31, 90, 'Nevi. S', 'PT. Java Seed Indonesia', NULL, 'Perk. Kencana Niaga, Jl. aries Utama 4, Blok D1 No.3T,JKT', '021-5858877', 'Nevi. S', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (32, 91, 'Winyarput', 'Dirjen Prasarana dan Sarana Pertanian/PT.P Kayaku', NULL, 'Jl. Harsono RM No. 3, Ragunan Jakarta Selatan', '021-7205453/7251244', 'Winyarput (08121303501)', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (33, 92, 'Nanin Norrhajati', 'Dirjen Prasarana dan Sarana Pertanian/PT. Syngenta', NULL, 'Jl. Harsono RM No. 3, Ragunan Jakarta Selatan', '08121105531', 'Nanin Norrhajati', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (34, 93, 'Sudiono Geriljanto', 'Dirjen Prasarana dan Sarana Pertanian/CV. CAI', NULL, 'Jl. Harsono RM No. 3, Ragunan Jakarta Selatan', '-', 'Sudiono Geriljanto/ 0811181261', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (35, 94, 'Anita ', 'PT. Petrosida Gresik', NULL, 'Jl. Jend. Akhmad Yani, PO.BOX 136, Gresik', '031-3981553/653', 'Anita ', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (36, 131, 'Mujiati', 'Bidang Pertanian DKPKP', NULL, 'Jl. Raya Gn. Sahari No. 11, Jakarta', '-', 'Mujiati', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (37, 133, 'Siti Umayah', 'DirjenPrasaranadanSaranaPertanian/PT.D.Giri Wacana', NULL, 'Jl. Harsono RM No. 3, Ragunan Jakarta Selatan', '081319270905', 'Siti Umayah', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (38, 134, 'Umikalsum Boer, M.Si', '-', NULL, 'Jln. Jambore Raya No. 1 Cibubur - Jakarta Timur', '-', 'Umikalsum Boer, M.Si', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (39, 135, 'SUYONO', 'PD. DRAGON BRAND', NULL, 'Jl. Lindung Blok E3 No. 54 RT 001 RW 012 Kel. Pejagalan Kec. Penjaringan, Jakarta Utara', '082113844560', 'Muhamad Nurdin', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (40, 136, 'Mahmud', 'Dirjen Hortikultura Direktorat Perlindungan.TH', NULL, 'Jl. AUP No. 3 Pasar inggu, Jakarta Selatan', '021-7819117', 'Epi/081332879499', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (41, 137, 'Siti Umayah', 'DirjenPrasaranadanSaranaPertanian/PT.Rainbow A.', NULL, 'Jl. Harsono RM No. 3, Ragunan Jakarta Selatan', '081319270905', 'Siti Umaiyah', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (42, 138, 'Luthfiah', 'Luthfiah', NULL, 'Kp. Pondok Manggis RT.03/02 No. 9, D.Bj Baru Kec. Bj.Gede', '081294559020', 'Luthfiah', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (43, 139, 'Hero Biernady, SE', 'CV. Delvin', NULL, 'Perum DDN Blok F 01 No. 01 Rt.001 Rw.010, Bekasi', '085883115805', 'Hero Biernady, SE', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (44, 140, 'Asri', 'Bidang Ketahanan Pangan DKPKP', NULL, 'Jl.Gunung Sahari  Raya No. 11, Jakarta', '-', '-', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (45, 144, 'Ir. Sutrisno', 'BKP dan Korluh Kalimantan Tengah', NULL, 'Jl. Willem AS No. 9, Palangkaraya', '0536 3221293', 'Anie, SP', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (46, 145, 'Ir. Sutrisno', 'BKP dan Korluh Kalimantan Tengah', NULL, 'Jl. Willem AS No. 9, Palangkaraya', '0536 3221293', 'Noorjayawati, SP', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (47, 147, 'Sumiyati', 'Bidang Ketahanan Pangan DKPKP', NULL, 'Jl. Raya Gn. Sahari No. 11, Jakarta', '-', 'Mujiati', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (48, 150, 'Sarmili', 'Bidang Ketahanan Pangan DKPKP', NULL, 'Jl. Raya Gn. Sahari No. 11, Jakarta', '-', 'Mujiati', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (49, 153, 'Mudiah Rasyid', 'Dirjen Prasarana dan Sarana Pertanian/PT.Agricon', NULL, 'Jl. Harsono RM No. 3, Ragunan Jakarta Selatan', '0811110018', 'Nanin Norrhajati', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (50, 154, 'Sudomo', 'PT. Dunia Daging Industri', NULL, 'Jl. Poncol No. 24, Jakarta Timur', '081289335640', NULL, '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (51, 155, 'Kusmin', 'PT. Zanubah Mandiri', NULL, 'Jl. Kalibata No. 15A Jakarta Selatan', '-', '-', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (52, 156, 'Kusmin', 'PT. Zanubah Mandiri', NULL, 'Jl. Kalibata No.15A Jak-Sel', '-', '-', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (53, 157, 'Rory Sutanto', 'PT. Metahelix Lifescinces Indonesia', NULL, 'Jakarta', '-', '081284368319', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (54, 97, 'Kusmin', 'Satpel Sertifikasi PPMPHP/PT. Winon Interc', NULL, 'Jl. Raya Jambore No. 1, Cibubur - Jakarta Timur', '02187752692', 'Kusmin', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (55, 98, 'Sumiyati', 'DinasKelautanPertanian&KetahananPangan', NULL, 'Jl. Gunung Sahari No. 11 - Jakarta Pusat', NULL, 'Mujiati', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (56, 101, 'Siti Halimah', 'DinasKelautanPertanian&KetahananPangan', NULL, 'Jl. Gunung Sahari No. 11 - Jakarta Pusat', NULL, 'Siti Halimah', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (57, 102, 'Patrick J.Godwin', 'PT. Gelpi Kurnialestari', NULL, 'Jl. Letjen Haryono M. T Kav. 17 - Jakarta', '08161121020', 'Patrick J.Godwin', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (58, 104, 'Yumi', 'PT. Putrisari Kimianusa', NULL, 'Jl. Raya Mercedes Bens no. 227, Cicadas, Gn. Putri', '-', '081310490008/Yumi', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (59, 105, 'Adde Rismawan', 'PT. Royal Agro Indonesia', NULL, 'Gd. Menara 165 lt.12A Unit B, Jl.TB Simatupang Kav. 1', '02129406633/29406634', 'Adde Rismawan/ 08111928189', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (60, 106, 'M. Syamsul Alam', 'PT. AGRICON', NULL, 'Jl. Melati No. 5, Wanaherang, Bogor', '08129571680', 'M. Syamsul Alam', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (61, 107, 'Anggun Wijayanti', 'PT. AGRICON', NULL, 'Jl. Melati No. 5, Wanaherang, Bogor', '085777914179', 'Anggun Wijayanti', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (62, 108, 'Anggun Wijayanti', 'PT. AGRICON', NULL, 'Jl. Melati No. 5, Wanaherang, Bogor', '085777914179', 'Anggun Wijayanti', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (63, 109, 'Ida Nurlela', 'Badan Ketahanan Pangan Kab. Ogan Komering Ulu', NULL, 'Jl. Mayor Ismail Husin No. 797, Baturaja', '0735-320731', 'Ida Nurlela', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (64, 110, 'Isworo Hadi, Msi', 'Balai Besar Karantina Pertanian Belawan', NULL, 'Jl. Sulawesi II Belawan 20414', '061-6941484/6945221', 'Isworo Hadi, Msi', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (65, 112, 'Ir. Sutrisno', 'BKP dan Korluh Kalimantan Tengah', NULL, 'Jl. Willem AS No. 9, Palangkaraya', '0536 3221293', NULL, '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (66, 158, 'Kusmin', 'PT. Hextar Seed Indonesia', NULL, 'Jl. Agung Perkasa 10, Rukan Sunter Permai Blok C-22, Sunter', '-', NULL, '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (67, 159, 'Titi Wahyuni', 'PT. Dewa Tunggal Abadi', NULL, 'Ps.IndukBerasCipinangBlokHBNo.10-11,PisganTmr, P.Gadung JT', '021-4718002/4717992', 'Hidayat', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (68, 160, 'Maria', 'PT. Asiatik Buana Citra', NULL, 'Menara Imperium Lt. 17, Jl. HR Rasuna Said, Jakarta 12980', NULL, NULL, '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (69, 161, 'Nana Supriatna', 'PT. Masindo Mitra Mandiri', NULL, 'Jl. Nangka No. 10 Tanjung Barat, Jakarta Selatan', '-', NULL, '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (70, 162, 'Hari Budiarto', 'PT. Food Station Cipinang Jaya', NULL, 'Pasar Induk Beras Cipinang, Jakarta Timur', '021-4717991', '082298006518/Hari Budiarto', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (71, 166, 'Nina Mardiana', 'Pusat Penelitian  Bioteknologi dan BI', NULL, 'Jl. Taman Kencana No. 1, Bogor', '0251-8327449/8324048', '081219619232', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (72, 167, 'Sihar', 'Balai Besar Karantina Pertanian Tanjung Priok', NULL, 'Jl. Enggano No. 17 Tanjung Priok, Jakarta Utara', '021-43931012/43902124', 'Sihar / 081381822249', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (73, 168, 'Nuni Arifiah', 'PT. NATHANI CHEMICALS', NULL, 'Mutiara Kosambi Blok A5 Nomor 8 - Tangerang', '08119702268', 'Nuni Arifiah', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (74, 169, 'Entis Sutisna', 'UD. Segar Abadi', NULL, 'Jln. Inerbang No. 5 RT 10 RW 05, Condet, Kel. Batu Ampar Kec. Kramat Jati - Jakarta Timur', '089620022256', 'Entis Sutisna', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (75, 170, 'Kusmin', 'Sawah Abadi Ujung Menteng PPBPT', NULL, 'Jl. KBT Cakung,  Jakarta Timur', '-', '-', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (76, 171, 'Kusmin', 'PT. Agrosid Manunggal Sentosa', NULL, 'Jl. Boulevard Barat Raya Klp Gading, Jakarta Utara', '021-45851413', NULL, '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (77, 172, 'Rossi', 'PT. Centa Brasindo Abadi Chemical Industry', NULL, 'Graha CBA Jl. CBD Paramount Serpong Kav. 6, Gading S', '02129324888 Ext 309', 'Angga HP. 082122637701/087881873175/085810957984', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (78, 173, 'Edi Widodo', 'PT. Pertani', NULL, 'Jl. Pertanian 3 No. 1 Pasar Minggu Jakarta Selatan', '08567729640', NULL, '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (79, 174, 'Kusmin', 'Kios Tani Ridho', NULL, 'Kel. Rorotan Kec. Cilincing, Jakarta Utara', '-', '-', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (80, 175, 'Raisin Sangaji, SP', 'Dinas Ketahanan Pangan Prov. Maluku', NULL, 'Jl. Pengeringan Pantai Waihaong No. 1, Ambon', '0911-312434', '082199010701/Raisin Sangaji, SP', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (81, 176, 'Siti Umayah', 'PT. Rainbow Agrosciences', NULL, 'The Propinence Blok 38 H No. 30-31, Alam Sutra, Tangerang', '081319270905', 'Siti Umayah', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (82, 177, 'Tupa S.M Hutabarat', 'BB Karantina Pertanian Belawan', NULL, 'Jl. Sulawesi II Belawan 20414', '0616941484/6945221', NULL, '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (83, 178, 'Ifandriyan', 'Dinas Ketahanan Pangan Kab. Bulungan', NULL, 'Jl. Sengkawit Komplek Kebun Contoh Tj.Selor, Kal-Utara', '081347537073', '-', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (84, 179, 'ELYANI MARIA, S. ST, SP. MM', 'Dinas Ketahanan Pangan dan Pertanian', NULL, 'Jln. Jenderal A. Yani Kuala Pembuang, Kalimantan Tengah', '0538-2022340, 081251769187', 'MILAWATI, SP', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (85, 180, 'Tupa S.M Hutabarat', 'BB Karantina Pertanian Belawan', NULL, 'Jl. Sulawesi II Belawan 20414', '0616941484/6945221', NULL, '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (86, 113, 'Katiran', 'BKP dan Korluh Kalimantan Tengah', NULL, 'Jl. Willem AS No. 9, Palangkaraya', '0536 3221293', 'Ir. Sutrisno', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (87, 114, 'Katiran', 'Dinas Perindustrian dan Perdagangan Kalteng', NULL, 'Jl. Yos Sudarso No. 1, Palangkaraya', '0536 3229819', 'Dra. Susana Ria Aden', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (88, 115, 'Bertha Lena', 'sudin KPKP Kota Adm. Jakarta Selatan', NULL, 'Jl. Prapanca Raya No. 9 lt. 12', '021-7205794', NULL, '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (89, 116, 'Mulyadi', 'Sudin KPKP  Kota Adm. Jak-Pus', NULL, 'Jl. Tanah Abang I Blok C Lt.III, Jak-Pus', '021-3851854', NULL, '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (90, 117, 'Kusmin', 'PT. Advanta Seed Indonesia', NULL, 'Jl. HR. Rasuna Said Kav. 10 No. 4 Jakarta', '-', '-', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (91, 118, 'Maria', 'PT. Anugrah Persada Alam', NULL, 'Menara Imperium Lt. 17, Jl. HR Rasuna Said, Jakarta 12980', NULL, NULL, '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (92, 119, 'Dyah Ika', 'PT. Lumbung Padi Indonesia', NULL, 'Jl. Jend. Sudirman Kav. 52-53, Jakarta', '021-57973623', '081218858467', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (93, 120, 'Bertha Lena', 'sudin KPKP Kota Adm. Jakarta Selatan', NULL, 'Jl. Prapanca Raya No. 9 lt. 12', '021-7205794', 'Suryansyah', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (94, 121, 'Kusmin', 'PT. Winon International', NULL, 'Jl. Pinangsia Timur 2R, Jakarta', NULL, NULL, '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (95, 122, 'Redy Rohidayat', 'PT. Bagja Putra', NULL, 'Jl. Raya Poncol Gg. Koperasi No. 48, Ciracas, Jakarta', '021-87700386', 'Redy Rohidayat', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (96, 125, 'Maria', 'PT. Anugrahtama Bina Citra', NULL, 'Menara Imperium Lt. 17, Jl. HR Rasuna Said, Jakarta 12980', '085782799384', '-', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (97, 126, 'Redy Rohidayat', 'PT. Bagja Putra', NULL, 'Jl. Raya Poncol Gg. Koperasi No. 48, Ciracas, Jakarta', '021-87700386', 'Redy Rohidayat', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (98, 127, 'Siti Julaeha', 'CV. Bumi Rempah', NULL, 'Jl. Buni Rt. 01/08 No. 58, Cipayung, Jakarta', '02170964382', 'Siti Julaeha', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (99, 128, 'Suhendar', 'Balitan Lab Residu Bahan Agrokimia', NULL, 'Jl. Laladon Raya No. 240, ciomas Bogor', '02518638987', 'Eman Sulaiman', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (100, 129, 'Waljiyati', 'Dinas Ketahanan PangandanPertanianKota Tangerang', NULL, 'Jl. Bendung Pintu Air No. 1 Neglasari, Tangerang ', '021-55733115/55733116', NULL, '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (101, 130, 'Maria', 'PT. Asiatik Buana Citra', NULL, 'Menara Imperium Lt. 17, Jl. HR Rasuna Said, Jakarta 12980', '085782799384', 'Maria', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (102, 163, 'Subuh Prabowo', 'PT. Harapan Kaum Tani Indonesia', NULL, 'Gd. MR 21, Jl. Menteng Raya No. 21, Jakarta', NULL, NULL, '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (103, 164, 'Indra ', 'CV. Aneka Rasa (B. Indra Kurniawan)', NULL, 'Jl. Kemanggisan Pulo No. 30 Slipi Jakarta Barat', '021-5486132', '08121866678', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (104, 45, 'Nurul Fatimah', 'PT. Ganesha Abaditama', NULL, 'Jl. Buni No. 33 Cipayung, Jakarta Timur', '-', 'Mulyadi', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (105, 46, 'Agung Lestarianto,SP', 'BKP Pontianak', NULL, 'Jl. :Pelabuhan laut pontianak', NULL, NULL, '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (106, 47, 'SUWARDI, SP. MSc', 'BALAI BESAR KARANTINA PERTANIAN SOEKARNO-HATTA', NULL, 'Gedung Karantina Pertanian Bandar Udara Internasional Soekarno-Hatta', '021 5507930-31', 'SUWARDI, SP. MSc', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (107, 48, 'Subur Pudji S', 'BKP Kelas  I Pontianak', NULL, 'Jl. Pelabuhan Laut Pontianak, Kalbar', '0561736199', NULL, '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (108, 49, 'SAHAT SIRAIT', 'BALAI BESAR KARANTINA PERTANIAN SOEKARNO-HATTA', NULL, 'Gedung Karantina Pertanian Bandar Udara Internasional Soekarno-Hatta', '021 5507930-31', 'SAHAT SIRAIT', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (109, 50, 'Windi', 'CV. Saprotan Utama', NULL, 'Komp. Kedoya Elok Plaza Blok DB 34, Jl. Panjang Kb. Jeruk', '08561038860', 'Windi', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (110, 51, 'AKSIN', 'CV. INDOSPICE SEJAHTERA', NULL, 'RUKO TAMAN MODEREN BLOK R 5 NO. 14, CAKUNG - JAKARTA TIMUR', '02170944799/08129962948', 'HANI', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (111, 52, 'Nurhayati', 'Badan Ketahanan Pangan Prov. Sum-sel', NULL, 'Jl. Kol. H. Barlian KM.6 No. 82, Palembang', '0711-410488-410084', 'Nurhayati', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (112, 53, 'Budi Suherman', 'Balai Karantina Pertanian Kelas II Cilegon', NULL, 'Jl. Raya Transit Cikuasa Pantai Merak, Cilegon, Banten', '0254-571807/570518', 'Budi Suherman', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (113, 54, 'Dedi Rosadi', 'PT. Ganesha Abaditama', NULL, 'Jl. Buni No. 33 Cipayung, Jakarta Timur', '-', 'Mulyadi', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (114, 55, 'Wiji Astuti', 'PT. BINA GUNA KIMIA', NULL, 'Wisma Kodel Lt.10, Jl. HR.Rasuna Said Kav.B-4 Jakarta', '021-5222350', '08119206139', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (115, 56, 'Ahmad Rasyid, SP', 'BADAN KETAHANAN PANGAN KAB. BANGKA SELATAN', NULL, 'Jl. Pulau Pongok Kompleks Perkantoran dan Pemukiman Terpadu Pem. Kabupaten Banka Selatan', '0717-4255039', NULL, '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (116, 58, 'Nopriawasyah', 'Balai Karantina Pertanian Tanjung Priok', NULL, 'Jl.Enggano No. 17 Tanjung Priok, Jakarta Utara', '081398816684', 'Nopriawasyah', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (117, 59, 'Mei Ayuningsih', 'PT. Ganesha Abaditama', NULL, 'Jl. Buni No. 33 Cipayung, Jakarta Timur', '-', 'Mulyadi', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (118, 60, 'Asep Orien Mubasyirin, ST', 'Balai Karantina Pertanian Kelas II Cilegon', NULL, 'Jl. Raya Transit Cikuasa Pantai Merak, Cilegon, Banten', '0254-571807/570518', 'Asep Orien Mubasyirin, ST', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (119, 61, 'Hermansyah', 'Balai Besar Karantina Pertanian Tanjung Priok', NULL, 'Jl. Enggano No. 17 Tanjung Priok, Jakarta Utara', '43931549/43931061', 'Hermansyah', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (120, 62, 'Edin Sudarsono', 'Balai Besar Karantina Pertanian S0ekarno-Hatta', NULL, 'Gedung Karantina Pertanian Bandar Udara Internasional Soekarno-Hatta', '021 5507930-31', 'Edin Sudarsono', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (121, 63, 'Djoko Budirianto', 'Bidang Pertanian DKP', NULL, 'Jl. Gunung Sahari Raya No. 11, Jakarta', '-', '-', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (122, 64, 'Kusmin', NULL, NULL, 'Jl. Raya Jambore No. 1 Cibubur, Jakarta Timur', '02187752692', NULL, '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (123, 65, 'Lia Melati', 'PT. Ganesha Abaditama', NULL, 'Jl. Buni No. 33 Cipayung, Jakarta Timur', '-', 'Mulyadi', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (124, 66, 'Lia Melati', 'CV. Marphilindo', NULL, 'Jl. Arabika 2 Blok W5 No. 7 Pondok Kopi, Jakarta Timur 13460', '-', 'Angelina', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (125, 68, 'Ir. Hj. Ipih Ruyani', 'Dinas Kelautan dan Pertanian Prov DKI JKT', NULL, 'Jl. Gunung Sahari No. 11', '021-6287913', 'Ir. Hj. Ipih Ruyani', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (126, 71, 'Wahyu Bambang', 'M-Brio Food Laboratory', NULL, 'Jl. Villa Indah Pajajaran Blok B17, Pulo Armin Bogor', '0251-8346986', 'Ageng Wahyu T', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (127, 72, 'Afdal', 'PT. Dinamika Maju Usaha', NULL, 'Jl. Cacing Kampung Baru KM.2, Rt. 007 Rw.008,Cakung Barat', '08158845354', 'Afdal', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (128, 74, 'Rosi Sukmawaty', 'Kantor Ketahanan Pangan Pandegelang', NULL, 'Kompl. Perkatoran Cikupa, Jl. Raya Labuan KM. 1, Pandegelang', '0253-201002', 'Rosi Sukmawaty/08128835652', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (129, 75, 'Ir. G. Trihardjo Adisewoyo', 'PT. Agro Sejahtera Indonesia', NULL, 'Jl. Ciputat Raya No. 20 F, Pd. Pinang, Jakarta', '021-75915725/75910516', '08174829257', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (130, 76, 'Sumiyatun', 'Bidang Katahanan Pangan', NULL, 'Jl. Raya Gn. Sahari No. 11, Jakarta', '-', 'Zaenab Dicky', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (131, 77, 'Siti Umayah', 'Direktur Jenderal Prasarana dan Sarana Pertanian', NULL, 'Jl. Harsono RM No. 3, Ragunan Jakarta Selatan', '081319270905', 'Siti Umayah', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (132, 78, 'Leli', 'Direktorat Jenderal Prasarana dan Sarana', NULL, 'Jl. Harsono RM No. 3, Ps.Minggu-Jak-Sel', '021-7816082-83', '0818780355', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (133, 165, 'Hadi Kuncoro', 'Hadi Kuncoro', NULL, 'Jl. Dukuh 5 Rt. 05/05 Kp. Dukuh Kramatjati Jak-Tim', '08161109999', 'Hadi Kuncoro', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (134, 181, 'M. Abizar', 'Dirjen Prasarana dan Sarana Pertanian/PT.Indagro', NULL, 'Jl. Harsono RM No. 3, Ragunan Jakarta Selatan', '08111441987', 'M. Abizar', '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (135, 182, 'Hansen Wong', 'PT. Panen Masindo', NULL, 'Jl. Manyar Permai 10, 7A/N Kapuk Muara Penjaringan, JU', NULL, NULL, '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (136, 183, 'Maria', 'PT. Aneka Boga Citra (PT. Asiatik Buana Citra)', NULL, 'Menara Imperium Lt. 17, Jl. HR Rasuna Said, Jakarta 12980', '085782799384', NULL, '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (137, 184, 'Hansen Wong', 'PT. Panen Masindo', NULL, 'Jl. Manyar Permai 10, 7A/N Kapuk Muara Penjaringan, Jakarta Utara', NULL, NULL, '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (138, 186, 'Asep Sugandi', 'PT. Baasithu Boga Services', NULL, 'Jl. Raya Bogor KM 21,5 No. 10 Ciracas, Jakarta Timur', '081211605541', NULL, '2018-11-30 00:19:43', NULL, NULL, NULL);
INSERT INTO `pelanggan` VALUES (139, 187, 'Mochamad Sony', 'PT. Pangan Sari Utama', NULL, 'Jl. Raya Poncol No. 24, Ciracas, Jakarta Timur', '081259320693', NULL, '2018-11-30 00:19:43', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for permohonan
-- ----------------------------
DROP TABLE IF EXISTS `permohonan`;
CREATE TABLE `permohonan`  (
  `id_permohonan` int(1) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `updated_by` int(11) NULL DEFAULT NULL,
  `tanggal_pengambilan` date NULL DEFAULT NULL,
  `id_pelanggan` int(11) NULL DEFAULT NULL,
  `nama` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `instansi_perusahaan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nik_npwp` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alamat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `telepon_fax` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kontak_person` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `hasil_kaji_ulang` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `uang_muka` bigint(20) NULL DEFAULT NULL,
  `sisa_pembayaran` bigint(20) NULL DEFAULT NULL,
  `tanggal_masuk` date NULL DEFAULT NULL,
  PRIMARY KEY (`id_permohonan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for permohonan_detail
-- ----------------------------
DROP TABLE IF EXISTS `permohonan_detail`;
CREATE TABLE `permohonan_detail`  (
  `id_permohonan_detail` int(1) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `updated_by` int(11) NULL DEFAULT NULL,
  `id_permohonan` int(11) NULL DEFAULT NULL,
  `komoditas` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `varietas` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jumlah` int(11) NULL DEFAULT NULL,
  `satuan` int(11) NULL DEFAULT NULL,
  `kemasan` int(11) NULL DEFAULT NULL,
  `kondisi` int(11) NULL DEFAULT NULL,
  `keterangan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `pengujian` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `metode` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nomor_contoh` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_kodelab` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nomor_kodelab` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `laporan` int(11) NULL DEFAULT NULL,
  `ket_kondisi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_permohonan_detail`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for permohonan_detail_metode
-- ----------------------------
DROP TABLE IF EXISTS `permohonan_detail_metode`;
CREATE TABLE `permohonan_detail_metode`  (
  `id_permohonan_detail_metode` int(11) NOT NULL AUTO_INCREMENT,
  `id_metode` int(11) NULL DEFAULT NULL,
  `id_permohonan_detail` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_permohonan_detail_metode`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of permohonan_detail_metode
-- ----------------------------
INSERT INTO `permohonan_detail_metode` VALUES (5, 1, 1);
INSERT INTO `permohonan_detail_metode` VALUES (6, 2, 1);
INSERT INTO `permohonan_detail_metode` VALUES (7, 3, 1);
INSERT INTO `permohonan_detail_metode` VALUES (8, 9, 2);
INSERT INTO `permohonan_detail_metode` VALUES (9, 0, 3);
INSERT INTO `permohonan_detail_metode` VALUES (10, 0, 4);
INSERT INTO `permohonan_detail_metode` VALUES (11, 0, 5);
INSERT INTO `permohonan_detail_metode` VALUES (12, 0, 6);
INSERT INTO `permohonan_detail_metode` VALUES (13, 0, 7);
INSERT INTO `permohonan_detail_metode` VALUES (14, 0, 8);
INSERT INTO `permohonan_detail_metode` VALUES (15, 0, 9);
INSERT INTO `permohonan_detail_metode` VALUES (16, 0, 10);
INSERT INTO `permohonan_detail_metode` VALUES (17, 0, 11);
INSERT INTO `permohonan_detail_metode` VALUES (18, 0, 12);
INSERT INTO `permohonan_detail_metode` VALUES (19, 0, 13);
INSERT INTO `permohonan_detail_metode` VALUES (20, 0, 14);
INSERT INTO `permohonan_detail_metode` VALUES (21, 0, 15);
INSERT INTO `permohonan_detail_metode` VALUES (22, 0, 16);
INSERT INTO `permohonan_detail_metode` VALUES (23, 0, 17);
INSERT INTO `permohonan_detail_metode` VALUES (24, 0, 18);
INSERT INTO `permohonan_detail_metode` VALUES (25, 0, 19);
INSERT INTO `permohonan_detail_metode` VALUES (26, 0, 20);
INSERT INTO `permohonan_detail_metode` VALUES (27, 0, 21);
INSERT INTO `permohonan_detail_metode` VALUES (28, 0, 22);
INSERT INTO `permohonan_detail_metode` VALUES (29, 0, 23);

-- ----------------------------
-- Table structure for permohonan_detail_parameter
-- ----------------------------
DROP TABLE IF EXISTS `permohonan_detail_parameter`;
CREATE TABLE `permohonan_detail_parameter`  (
  `id_permohonan_detail_parameter` int(11) NOT NULL AUTO_INCREMENT,
  `id_parameter_pengujian` int(11) NULL DEFAULT NULL,
  `id_permohonan_detail` int(11) NULL DEFAULT NULL,
  `biaya` bigint(20) NULL DEFAULT NULL,
  `kode_contoh` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `caption` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_metode` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_permohonan_detail_parameter`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id_role` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `updated_by` int(11) NULL DEFAULT NULL,
  `nama_role` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_role`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, '2018-09-28 03:23:25', 1, NULL, NULL, 'Super Admin');
INSERT INTO `role` VALUES (2, '2018-09-28 03:23:47', 1, '2018-09-27 22:09:23', 1, 'Standard User');

-- ----------------------------
-- Table structure for role_permission
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission`  (
  `id_role_permission` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_role_permission`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for satuan
-- ----------------------------
DROP TABLE IF EXISTS `satuan`;
CREATE TABLE `satuan`  (
  `id_satuan` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `updated_by` int(11) NULL DEFAULT NULL,
  `satuan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_satuan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of satuan
-- ----------------------------
INSERT INTO `satuan` VALUES (1, '2018-10-05 03:36:13', NULL, NULL, NULL, 'Gram');
INSERT INTO `satuan` VALUES (2, '2018-10-05 03:36:15', NULL, NULL, NULL, 'Liter');
INSERT INTO `satuan` VALUES (3, '2018-12-16 13:43:48', NULL, NULL, NULL, 'Kilo Gram');
INSERT INTO `satuan` VALUES (4, '2018-12-16 13:43:55', NULL, NULL, NULL, 'Mili Liter');

-- ----------------------------
-- Table structure for setting_kontrak_kerja
-- ----------------------------
DROP TABLE IF EXISTS `setting_kontrak_kerja`;
CREATE TABLE `setting_kontrak_kerja`  (
  `id_setting_kontrak_kerja` int(11) NOT NULL AUTO_INCREMENT,
  `kode_laporan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_setting_kontrak_kerja`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of setting_kontrak_kerja
-- ----------------------------
INSERT INTO `setting_kontrak_kerja` VALUES (1, 'DF / MA / 018');

-- ----------------------------
-- Table structure for setting_kop
-- ----------------------------
DROP TABLE IF EXISTS `setting_kop`;
CREATE TABLE `setting_kop`  (
  `id_setting_kop` int(11) NOT NULL AUTO_INCREMENT,
  `line_1` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `line_2` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `line_3` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `line_4` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `line_5` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `line_6` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_setting_kop`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of setting_kop
-- ----------------------------
INSERT INTO `setting_kop` VALUES (1, 'PEMERINTAH PROVINSI DAERAH KHUSUS IBUKOTA JAKARTA', 'DINAS KETAHANAN PANGAN, KELAUTAN DAN PERTANIAN', 'PUSAT PROMOSI DAN SERTIFIKASI HASIL PERTANIAN', 'LABORATORIUM PUSAT PROMOSI DAN SERTIFIKASI HASIL PERTANIAN', 'Jl. Raya Jambore No. 1 Cibubur Jakarta Timur', 'Telp. / Fax : (021) 87752692');

-- ----------------------------
-- Table structure for setting_pengantar_contoh
-- ----------------------------
DROP TABLE IF EXISTS `setting_pengantar_contoh`;
CREATE TABLE `setting_pengantar_contoh`  (
  `id_setting_pengantar_contoh` int(11) NOT NULL AUTO_INCREMENT,
  `kode_laporan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `contoh_diserahkan_ke` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `penerima_contoh` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_setting_pengantar_contoh`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of setting_pengantar_contoh
-- ----------------------------
INSERT INTO `setting_pengantar_contoh` VALUES (1, 'DF / MA / 025', 'Kepala Satpel Sertifikasi Hasil Pertanian', 'Satpel Sertifikasi Hasil Pertanian');

-- ----------------------------
-- Table structure for setting_permohonan
-- ----------------------------
DROP TABLE IF EXISTS `setting_permohonan`;
CREATE TABLE `setting_permohonan`  (
  `id_setting_premohonan` int(11) NOT NULL AUTO_INCREMENT,
  `kode_laporan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_setting_premohonan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of setting_permohonan
-- ----------------------------
INSERT INTO `setting_permohonan` VALUES (1, 'DF / MA / 017');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `updated_by` int(11) NULL DEFAULT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `display_name` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `source` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `password` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `user_image` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `is_active` tinyint(1) NULL DEFAULT NULL,
  `id_role` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_user`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (8, '2018-09-28 03:02:22', 1, NULL, NULL, 'riki', 'riki', '123123zxzzasdasdasd', NULL, 'ea8ba783d1f874bce5c7e075563e9070', NULL, 1, 1);
INSERT INTO `user` VALUES (9, '2018-09-28 03:53:44', 1, NULL, NULL, '1', '1', '1', NULL, '2dace78f80bc92e6d7493423d729448e', NULL, 1, 2);
INSERT INTO `user` VALUES (10, '2018-11-08 21:48:23', 1, NULL, NULL, 'riki1', 'riki1', 'asd', NULL, '2dace78f80bc92e6d7493423d729448e', NULL, 1, 1);
INSERT INTO `user` VALUES (11, '2018-11-08 21:48:23', 1, NULL, NULL, 'yanti', 'yanti', 'asd', NULL, '2dace78f80bc92e6d7493423d729448e', NULL, 1, 1);

-- ----------------------------
-- View structure for vw_bukuinduk
-- ----------------------------
DROP VIEW IF EXISTS `vw_bukuinduk`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `vw_bukuinduk` AS select 
	permohonan.tanggal_masuk,
	permohonan.instansi_perusahaan,
	permohonan.alamat,
	#kodelab.kodelab,
	permohonan_detail.varietas,
	permohonan_detail.nomor_contoh,
	permohonan_detail.jumlah,
	satuan.satuan,
	kemasan.kemasan,
	permohonan_detail.keterangan,
	GROUP_CONCAT(DISTINCT laporan.laporan SEPARATOR ' , ') laporan,
	GROUP_CONCAT(parameter_pengujian.parameter_pengujian SEPARATOR ' , ') parameter,
	sum(parameter_pengujian.harga) harga,
	permohonan_detail.id_permohonan_detail,
	CONCAT(permohonan_detail.jumlah,' ',satuan.satuan) jumlah_satuan
	
from permohonan_detail
left join permohonan ON permohonan.id_permohonan = permohonan_detail.id_permohonan
left join kodelab ON permohonan_detail.id_kodelab = kodelab.id_kodelab
left join satuan ON permohonan_detail.satuan = satuan.id_satuan
left join kemasan ON kemasan.id_kemasan = permohonan_detail.kemasan
left join permohonan_detail_parameter ON permohonan_detail.id_permohonan_detail = permohonan_detail_parameter.id_permohonan_detail
left join parameter_pengujian ON  parameter_pengujian.id_parameter_pengujian = permohonan_detail_parameter.id_parameter_pengujian
left join laporan ON laporan.id_laporan = parameter_pengujian.id_laporan
GROUP BY permohonan_detail.id_permohonan_detail ;

-- ----------------------------
-- View structure for vw_bukulab
-- ----------------------------
DROP VIEW IF EXISTS `vw_bukulab`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `vw_bukulab` AS select
	permohonan.tanggal_masuk,
	permohonan_detail.nomor_contoh,
	permohonan_detail.nomor_kodelab
from permohonan_detail
left join permohonan ON permohonan.id_permohonan = permohonan_detail.id_permohonan ;

-- ----------------------------
-- View structure for vw_hasil
-- ----------------------------
DROP VIEW IF EXISTS `vw_hasil`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `vw_hasil` AS SELECT
	a.nomor_contoh,
	d.laporan,
	a.komoditas,
	a.varietas,
	a.jumlah,
	e.satuan,
	f.kondisi,
	sum(c.harga) total_biaya,
	GROUP_CONCAT(c.parameter_pengujian) parameter,
	a.keterangan,
	d.id_laporan,
	CONCAT(REPLACE(a.nomor_contoh,'/','-'),'_',d.id_laporan) prim,
	g.nomor_seri,
	g.ceklis_1,
	g.ceklis_2
FROM
	permohonan_detail a
left join 
	permohonan_detail_parameter b ON a.id_permohonan_detail = b.id_permohonan_detail
left join
	parameter_pengujian c ON b.id_parameter_pengujian = c.id_parameter_pengujian
left join laporan d ON c.id_laporan = d.id_laporan
left join satuan e ON a.satuan = e.id_satuan
left join kondisi f ON a.kondisi = f.id_kondisi
left join hasil g ON g.prim = CONCAT(REPLACE(a.nomor_contoh,'/','-'),'_',d.id_laporan)
GROUP BY a.nomor_contoh, d.laporan
ORDER BY a.nomor_contoh, d.laporan ;

-- ----------------------------
-- View structure for vw_hasil2
-- ----------------------------
DROP VIEW IF EXISTS `vw_hasil2`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `vw_hasil2` AS SELECT
	a.nomor_contoh,
	d.laporan,
	a.komoditas,
	a.varietas,
	a.jumlah,
	e.satuan,
	f.kondisi,
	a.keterangan,
	d.id_laporan,
	c.parameter_pengujian,
	b.id_permohonan_detail_parameter,
	g.hasil,
	g.satuan satuan_hasil,
	g.metode,
	g.keterangan keterangan_hasil,
	i.tanggal_pengambilan,
	j.kemasan,
	i.created_at,
	i.tanggal_masuk
FROM
	permohonan_detail a
left join 
	permohonan_detail_parameter b ON a.id_permohonan_detail = b.id_permohonan_detail
left join
	parameter_pengujian c ON b.id_parameter_pengujian = c.id_parameter_pengujian
left join laporan d ON c.id_laporan = d.id_laporan
left join satuan e ON a.satuan = e.id_satuan
left join kondisi f ON a.kondisi = f.id_kondisi
left join hasil_detail g ON b.id_permohonan_detail_parameter = g.id_permohonan_detail_parameter
left join permohonan_detail h ON a.nomor_contoh = h.nomor_contoh
left join permohonan i ON i.id_permohonan = h.id_permohonan
left join kemasan j ON a.kemasan = j.id_kemasan

ORDER BY a.nomor_contoh, d.laporan ;

SET FOREIGN_KEY_CHECKS = 1;
