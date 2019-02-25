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

 Date: 01/02/2019 14:27:43
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
INSERT INTO `counter_contoh` VALUES (2, 2019, 8);
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
) ENGINE = InnoDB AUTO_INCREMENT = 105 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

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
INSERT INTO `counter_lab` VALUES (96, NULL, 2019, 1);
INSERT INTO `counter_lab` VALUES (98, 'RP', 2019, 2);
INSERT INTO `counter_lab` VALUES (99, 'KN', 2019, 3);
INSERT INTO `counter_lab` VALUES (100, 'MY', 2019, 1);
INSERT INTO `counter_lab` VALUES (101, 'MIK', 2019, 1);
INSERT INTO `counter_lab` VALUES (102, 'LBM', 2019, 1);
INSERT INTO `counter_lab` VALUES (103, 'MFB', 2019, 1);
INSERT INTO `counter_lab` VALUES (104, 'FP', 2019, 1);

-- ----------------------------
-- Table structure for counter_nomorseri
-- ----------------------------
DROP TABLE IF EXISTS `counter_nomorseri`;
CREATE TABLE `counter_nomorseri`  (
  `id_counter_nomorseri` int(11) NOT NULL AUTO_INCREMENT,
  `tahun` int(11) NULL DEFAULT NULL,
  `counter` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_counter_nomorseri`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of counter_nomorseri
-- ----------------------------
INSERT INTO `counter_nomorseri` VALUES (10, 2018, 10);
INSERT INTO `counter_nomorseri` VALUES (12, 2020, 0);
INSERT INTO `counter_nomorseri` VALUES (13, 2021, 0);
INSERT INTO `counter_nomorseri` VALUES (25, 2019, 12);

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
INSERT INTO `hasil` VALUES ('003-1-2019_11', '190002', b'0', b'1');
INSERT INTO `hasil` VALUES ('007-1-2019_15', '190005', b'0', b'0');
INSERT INTO `hasil` VALUES ('008-1-2019_12', '190008', b'0', b'0');
INSERT INTO `hasil` VALUES ('008-1-2019_13', '190006', b'0', b'0');
INSERT INTO `hasil` VALUES ('008-1-2019_19', '190004', b'0', b'0');
INSERT INTO `hasil` VALUES ('008-1-2019_20', '190010', b'1', b'1');
INSERT INTO `hasil` VALUES ('008-1-2019_4', '190012', b'1', b'0');

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
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of hasil_detail
-- ----------------------------
INSERT INTO `hasil_detail` VALUES (7, 1, '100', 'gram', 'GC', 'as', 1);
INSERT INTO `hasil_detail` VALUES (8, 2, '200', 'kilo', 'BBPPMBTPH*)', '', 1);
INSERT INTO `hasil_detail` VALUES (9, 3, '300', 'liter', 'Rapid Test', '', 1);
INSERT INTO `hasil_detail` VALUES (12, 11, '67,56', '%', 'AOAC [Titrasi]', '', 1);
INSERT INTO `hasil_detail` VALUES (14, 65, '1', '2', '3', NULL, NULL);

-- ----------------------------
-- Table structure for hasil_detail_fp
-- ----------------------------
DROP TABLE IF EXISTS `hasil_detail_fp`;
CREATE TABLE `hasil_detail_fp`  (
  `id_hasil` int(11) NOT NULL AUTO_INCREMENT,
  `id_permohonan_detail_parameter` int(11) NULL DEFAULT NULL,
  `bahan` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `berat` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kadar` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `satuan` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `metode` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_hasil`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of hasil_detail_fp
-- ----------------------------
INSERT INTO `hasil_detail_fp` VALUES (7, 1, '100', 'gram', 'GC', 'as', '1');
INSERT INTO `hasil_detail_fp` VALUES (8, 2, '200', 'kilo', 'BBPPMBTPH*)', '', '1');
INSERT INTO `hasil_detail_fp` VALUES (9, 3, '300', 'liter', 'Rapid Test', '', '1');
INSERT INTO `hasil_detail_fp` VALUES (12, 11, '67,56', '%', 'AOAC [Titrasi]', '', '1');
INSERT INTO `hasil_detail_fp` VALUES (13, 65, '1', '2', '3', NULL, NULL);
INSERT INTO `hasil_detail_fp` VALUES (14, 68, NULL, '9', '8', '7', '6');

-- ----------------------------
-- Table structure for hasil_detail_kn
-- ----------------------------
DROP TABLE IF EXISTS `hasil_detail_kn`;
CREATE TABLE `hasil_detail_kn`  (
  `id_hasil` int(11) NOT NULL AUTO_INCREMENT,
  `id_permohonan_detail_parameter` int(11) NULL DEFAULT NULL,
  `hasil` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `satuan` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `metode` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `keterangan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `standard` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_hasil`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of hasil_detail_kn
-- ----------------------------
INSERT INTO `hasil_detail_kn` VALUES (7, 1, '100', 'gram', 'GC', 'as', 1);
INSERT INTO `hasil_detail_kn` VALUES (8, 2, '200', 'kilo', 'BBPPMBTPH*)', '', 1);
INSERT INTO `hasil_detail_kn` VALUES (9, 3, '300', 'liter', 'Rapid Test', '', 1);
INSERT INTO `hasil_detail_kn` VALUES (12, 11, '67,56', '%', 'AOAC [Titrasi]', '', 1);
INSERT INTO `hasil_detail_kn` VALUES (13, 65, '1', '2', '3', NULL, NULL);

-- ----------------------------
-- Table structure for hasil_detail_lbm
-- ----------------------------
DROP TABLE IF EXISTS `hasil_detail_lbm`;
CREATE TABLE `hasil_detail_lbm`  (
  `id_hasil` int(11) NOT NULL AUTO_INCREMENT,
  `id_permohonan_detail_parameter` int(11) NULL DEFAULT NULL,
  `hasil` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `metode` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `satuan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `lod` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `loq` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_hasil`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of hasil_detail_lbm
-- ----------------------------
INSERT INTO `hasil_detail_lbm` VALUES (7, 1, '100', 'GC', NULL, NULL, NULL);
INSERT INTO `hasil_detail_lbm` VALUES (8, 2, '200', 'BBPPMBTPH*)', NULL, NULL, NULL);
INSERT INTO `hasil_detail_lbm` VALUES (9, 3, '300', 'Rapid Test', NULL, NULL, NULL);
INSERT INTO `hasil_detail_lbm` VALUES (12, 11, '67,56', 'AOAC [Titrasi]', NULL, NULL, NULL);
INSERT INTO `hasil_detail_lbm` VALUES (25, 4, '9', '9', NULL, NULL, NULL);
INSERT INTO `hasil_detail_lbm` VALUES (26, 5, '4', 'BBPPMBTPH*)', NULL, NULL, NULL);
INSERT INTO `hasil_detail_lbm` VALUES (27, 8, '7', 'Rapid Test', NULL, NULL, NULL);
INSERT INTO `hasil_detail_lbm` VALUES (28, 46, '12', '12', NULL, NULL, NULL);
INSERT INTO `hasil_detail_lbm` VALUES (29, 43, '99', '99', NULL, NULL, NULL);
INSERT INTO `hasil_detail_lbm` VALUES (31, 64, '1', '3', '1', '2', '2');

-- ----------------------------
-- Table structure for hasil_detail_mfb
-- ----------------------------
DROP TABLE IF EXISTS `hasil_detail_mfb`;
CREATE TABLE `hasil_detail_mfb`  (
  `id_hasil` int(11) NOT NULL AUTO_INCREMENT,
  `id_permohonan_detail_parameter` int(11) NULL DEFAULT NULL,
  `hasil` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `satuan` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `metode` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `medium` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `premium` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_hasil`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of hasil_detail_mfb
-- ----------------------------
INSERT INTO `hasil_detail_mfb` VALUES (7, 1, '100', 'gram', 'GC', 'as', '1');
INSERT INTO `hasil_detail_mfb` VALUES (8, 2, '200', 'kilo', 'BBPPMBTPH*)', '', '1');
INSERT INTO `hasil_detail_mfb` VALUES (9, 3, '300', 'liter', 'Rapid Test', '', '1');
INSERT INTO `hasil_detail_mfb` VALUES (12, 11, '67,56', '%', 'AOAC [Titrasi]', '', '1');
INSERT INTO `hasil_detail_mfb` VALUES (13, 65, '1', '2', '3', NULL, NULL);
INSERT INTO `hasil_detail_mfb` VALUES (14, 66, '2', '1', '5', '3', '4');
INSERT INTO `hasil_detail_mfb` VALUES (15, 67, '7', '6', '10', '8', '9');

-- ----------------------------
-- Table structure for hasil_detail_mycotoxin
-- ----------------------------
DROP TABLE IF EXISTS `hasil_detail_mycotoxin`;
CREATE TABLE `hasil_detail_mycotoxin`  (
  `id_hasil` int(11) NOT NULL AUTO_INCREMENT,
  `id_permohonan_detail_parameter` int(11) NULL DEFAULT NULL,
  `hasil` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `mql` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `metode` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `bmc` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_hasil`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of hasil_detail_mycotoxin
-- ----------------------------
INSERT INTO `hasil_detail_mycotoxin` VALUES (7, 1, '100', 'gram', 'GC', 'as');
INSERT INTO `hasil_detail_mycotoxin` VALUES (8, 2, '200', 'kilo', 'BBPPMBTPH*)', '');
INSERT INTO `hasil_detail_mycotoxin` VALUES (9, 3, '300', 'liter', 'Rapid Test', '');
INSERT INTO `hasil_detail_mycotoxin` VALUES (12, 11, '67,56', '%', 'AOAC [Titrasi]', '');
INSERT INTO `hasil_detail_mycotoxin` VALUES (13, 46, '12', '12', '44', '44');

-- ----------------------------
-- Table structure for hasil_detail_residu
-- ----------------------------
DROP TABLE IF EXISTS `hasil_detail_residu`;
CREATE TABLE `hasil_detail_residu`  (
  `id_hasil` int(11) NOT NULL AUTO_INCREMENT,
  `id_permohonan_detail_parameter` int(11) NULL DEFAULT NULL,
  `hasil` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `mql` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `metode` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `bmr` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_hasil`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of hasil_detail_residu
-- ----------------------------
INSERT INTO `hasil_detail_residu` VALUES (7, 1, '100', 'gram', 'GC', 'as');
INSERT INTO `hasil_detail_residu` VALUES (8, 2, '200', 'kilo', 'BBPPMBTPH*)', '');
INSERT INTO `hasil_detail_residu` VALUES (9, 3, '300', 'liter', 'Rapid Test', '');
INSERT INTO `hasil_detail_residu` VALUES (12, 11, '67,56', '%', 'AOAC [Titrasi]', '');
INSERT INTO `hasil_detail_residu` VALUES (25, 4, '9', '9', '9', '9');
INSERT INTO `hasil_detail_residu` VALUES (26, 5, '4', '5', 'BBPPMBTPH*)', '6');
INSERT INTO `hasil_detail_residu` VALUES (27, 8, '7', '8', 'Rapid Test', '9');
INSERT INTO `hasil_detail_residu` VALUES (28, 46, '12', '12', '12', '14');
INSERT INTO `hasil_detail_residu` VALUES (29, 43, '99', '99', '99', '99');

-- ----------------------------
-- Table structure for hasil_kn
-- ----------------------------
DROP TABLE IF EXISTS `hasil_kn`;
CREATE TABLE `hasil_kn`  (
  `prim` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `catatan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`prim`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of hasil_kn
-- ----------------------------
INSERT INTO `hasil_kn` VALUES ('001-31-2018_4', NULL);
INSERT INTO `hasil_kn` VALUES ('003-1-2019_11', NULL);
INSERT INTO `hasil_kn` VALUES ('007-1-2019_15', NULL);
INSERT INTO `hasil_kn` VALUES ('008-1-2019_12', '123123123');
INSERT INTO `hasil_kn` VALUES ('008-1-2019_13', 'cataaazzz');
INSERT INTO `hasil_kn` VALUES ('008-1-2019_19', NULL);

-- ----------------------------
-- Table structure for hasil_lbm
-- ----------------------------
DROP TABLE IF EXISTS `hasil_lbm`;
CREATE TABLE `hasil_lbm`  (
  `prim` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `catatan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`prim`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of hasil_lbm
-- ----------------------------
INSERT INTO `hasil_lbm` VALUES ('001-31-2018_4', NULL);
INSERT INTO `hasil_lbm` VALUES ('003-1-2019_11', NULL);
INSERT INTO `hasil_lbm` VALUES ('007-1-2019_15', NULL);
INSERT INTO `hasil_lbm` VALUES ('008-1-2019_13', 'cataaazzz');
INSERT INTO `hasil_lbm` VALUES ('008-1-2019_19', NULL);

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
INSERT INTO `kondisi` VALUES (3, 'Baik', '2018-10-14 21:50:50', NULL, NULL, NULL);
INSERT INTO `kondisi` VALUES (4, 'buruk', '2018-10-14 21:50:57', NULL, NULL, NULL);
INSERT INTO `kondisi` VALUES (5, 'basah', '2018-10-14 21:51:00', NULL, NULL, NULL);
INSERT INTO `kondisi` VALUES (6, 'Tidak Baik', '2018-10-14 21:51:04', NULL, NULL, NULL);
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
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

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
INSERT INTO `laporan` VALUES (13, 'LOGAM BERAT DAN MINERAL', '2018-10-19 12:01:34', NULL, NULL, NULL, 'LBM', 'DF/MA/029');
INSERT INTO `laporan` VALUES (14, 'MINERAL', '2018-10-19 12:01:43', NULL, NULL, NULL, 'LBM', 'DF/MA/029');
INSERT INTO `laporan` VALUES (15, 'RESIDU PESTISIDA (GOLONGAN LAIN)', '2018-10-19 14:42:01', NULL, NULL, NULL, 'RP', 'DF/MA/026');
INSERT INTO `laporan` VALUES (18, 'KIMIA KANDUNGAN MINERAL DAN LOGAM BERAT', '2018-12-20 08:09:13', NULL, NULL, NULL, 'LBM', 'DF/MA/029');
INSERT INTO `laporan` VALUES (19, 'MYCOTOXIN', '2019-01-31 01:09:57', NULL, NULL, NULL, 'MY', NULL);
INSERT INTO `laporan` VALUES (20, 'MUTU FISIK BERAS', '2019-02-01 06:02:19', NULL, NULL, NULL, 'MFB', NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

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
INSERT INTO `menu` VALUES (27, 'Setting LHP', 22, 5, 'setting/lhp', b'1', 'lhp');

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
) ENGINE = InnoDB AUTO_INCREMENT = 336 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of parameter_pengujian
-- ----------------------------
INSERT INTO `parameter_pengujian` VALUES (1, 'Acephate', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 9, NULL);
INSERT INTO `parameter_pengujian` VALUES (2, 'Aldrin', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 8, NULL);
INSERT INTO `parameter_pengujian` VALUES (3, 'Acrinathrin', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 10, NULL);
INSERT INTO `parameter_pengujian` VALUES (4, 'Aldicarb', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 11, NULL);
INSERT INTO `parameter_pengujian` VALUES (5, 'Abamectin', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (6, 'Azamethiphos', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 9, NULL);
INSERT INTO `parameter_pengujian` VALUES (7, 'Azinphos-Ethyl', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 9, NULL);
INSERT INTO `parameter_pengujian` VALUES (8, 'Aldicarb-Sulfone', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 11, NULL);
INSERT INTO `parameter_pengujian` VALUES (9, 'Aminocarb', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 11, NULL);
INSERT INTO `parameter_pengujian` VALUES (10, 'Acetamiprid', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (11, 'Azinphos-Methyl', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 9, NULL);
INSERT INTO `parameter_pengujian` VALUES (12, 'Bendiocarb', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 11, NULL);
INSERT INTO `parameter_pengujian` VALUES (13, 'Bifenthrin', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 10, NULL);
INSERT INTO `parameter_pengujian` VALUES (14, 'Bensulide', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 9, NULL);
INSERT INTO `parameter_pengujian` VALUES (15, 'Ametryn', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (16, 'BHC-alpha ', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 8, NULL);
INSERT INTO `parameter_pengujian` VALUES (17, 'Bromophos-Ethyl', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 9, NULL);
INSERT INTO `parameter_pengujian` VALUES (18, 'Aminopyralid', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (19, 'Bioallethrin', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 10, NULL);
INSERT INTO `parameter_pengujian` VALUES (20, 'Benfuracarb', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 11, NULL);
INSERT INTO `parameter_pengujian` VALUES (21, 'Cadusafos', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 9, NULL);
INSERT INTO `parameter_pengujian` VALUES (22, 'BHC-beta   ', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 8, NULL);
INSERT INTO `parameter_pengujian` VALUES (23, 'Amiotriazole', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (24, 'Bioresmethrin', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 10, NULL);
INSERT INTO `parameter_pengujian` VALUES (25, 'Carbaryl', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 11, NULL);
INSERT INTO `parameter_pengujian` VALUES (26, 'Carbophenothion', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 9, NULL);
INSERT INTO `parameter_pengujian` VALUES (27, 'BHC-delta', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 8, NULL);
INSERT INTO `parameter_pengujian` VALUES (28, 'Amitraz', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (29, 'Cyfluthrin', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 10, NULL);
INSERT INTO `parameter_pengujian` VALUES (30, 'Chlorfenvinphos', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 9, NULL);
INSERT INTO `parameter_pengujian` VALUES (31, 'Carbofuran', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 11, NULL);
INSERT INTO `parameter_pengujian` VALUES (32, 'DDD-o,p', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 8, NULL);
INSERT INTO `parameter_pengujian` VALUES (33, 'Atrazine', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (34, 'Cyfluthrin-beta', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 10, NULL);
INSERT INTO `parameter_pengujian` VALUES (35, 'Chlorpyrifos', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 9, NULL);
INSERT INTO `parameter_pengujian` VALUES (36, 'Carbosulfan', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 11, NULL);
INSERT INTO `parameter_pengujian` VALUES (37, 'DDD-p,p', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 8, NULL);
INSERT INTO `parameter_pengujian` VALUES (38, 'Azaconazole', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (39, 'Cyhalothrin-gamma', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 10, NULL);
INSERT INTO `parameter_pengujian` VALUES (40, 'Chlorpyrifos-Methyl', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 9, NULL);
INSERT INTO `parameter_pengujian` VALUES (41, 'DDE-o,p', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 8, NULL);
INSERT INTO `parameter_pengujian` VALUES (42, 'Diethofencarb', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 11, NULL);
INSERT INTO `parameter_pengujian` VALUES (43, 'Azocyclotin', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (44, 'Cyhalothrin-lambda', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 10, NULL);
INSERT INTO `parameter_pengujian` VALUES (45, 'Diazinon', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 9, NULL);
INSERT INTO `parameter_pengujian` VALUES (46, 'DDE-p,p', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 8, NULL);
INSERT INTO `parameter_pengujian` VALUES (47, 'Ethiofencarb', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 11, NULL);
INSERT INTO `parameter_pengujian` VALUES (48, 'Azoxystrobin', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (49, 'Cypermethrin ', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 10, NULL);
INSERT INTO `parameter_pengujian` VALUES (50, 'Dichlorvos', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 9, NULL);
INSERT INTO `parameter_pengujian` VALUES (51, 'Benalaxyl', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (52, 'DDT-o,p', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 8, NULL);
INSERT INTO `parameter_pengujian` VALUES (53, 'Fenoxycarb', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 11, NULL);
INSERT INTO `parameter_pengujian` VALUES (54, 'Cypermethrin-alpha', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 10, NULL);
INSERT INTO `parameter_pengujian` VALUES (55, 'Dieldrin', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 9, NULL);
INSERT INTO `parameter_pengujian` VALUES (56, 'DDT-p,p', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 8, NULL);
INSERT INTO `parameter_pengujian` VALUES (57, 'Benfluralin', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (58, 'Methomyl', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 11, NULL);
INSERT INTO `parameter_pengujian` VALUES (59, 'Cypermethrin-beta', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 10, NULL);
INSERT INTO `parameter_pengujian` VALUES (60, 'Dimethoate', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 9, NULL);
INSERT INTO `parameter_pengujian` VALUES (61, 'Benfuresate', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (62, 'Oxamyl', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 11, NULL);
INSERT INTO `parameter_pengujian` VALUES (63, 'Dicofol', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 8, NULL);
INSERT INTO `parameter_pengujian` VALUES (64, 'Cypermethrin-zeta', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 10, NULL);
INSERT INTO `parameter_pengujian` VALUES (65, 'Disulfoton', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 9, NULL);
INSERT INTO `parameter_pengujian` VALUES (66, 'Bensulfuron-Methyl', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (67, 'Propoxur', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 11, NULL);
INSERT INTO `parameter_pengujian` VALUES (68, 'Endosulfan', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 8, NULL);
INSERT INTO `parameter_pengujian` VALUES (69, 'Deltamethrin', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 10, NULL);
INSERT INTO `parameter_pengujian` VALUES (70, 'Bentazone', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (71, 'Ethion', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 9, NULL);
INSERT INTO `parameter_pengujian` VALUES (72, 'Endosulfan-alpha', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 8, NULL);
INSERT INTO `parameter_pengujian` VALUES (73, 'Bitertanol', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (74, 'Etofenprox', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 10, NULL);
INSERT INTO `parameter_pengujian` VALUES (75, 'Ethoprophos', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 9, NULL);
INSERT INTO `parameter_pengujian` VALUES (76, 'Fenamiphos', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 9, NULL);
INSERT INTO `parameter_pengujian` VALUES (77, 'Endosulfan-beta', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 8, NULL);
INSERT INTO `parameter_pengujian` VALUES (78, 'Endosulfansulfate', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 8, NULL);
INSERT INTO `parameter_pengujian` VALUES (79, 'Fenitrothion', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 9, NULL);
INSERT INTO `parameter_pengujian` VALUES (80, 'Boscalid', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (81, 'Fenpropathrin', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 10, NULL);
INSERT INTO `parameter_pengujian` VALUES (82, 'Endrin', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 8, NULL);
INSERT INTO `parameter_pengujian` VALUES (83, 'Fenthion', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 9, NULL);
INSERT INTO `parameter_pengujian` VALUES (84, 'Brodifacoum', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (85, 'Fluvalinate, tau-', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 10, NULL);
INSERT INTO `parameter_pengujian` VALUES (86, 'Heptachlor', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 8, NULL);
INSERT INTO `parameter_pengujian` VALUES (87, 'Fenthion-Oxonsulfoxide', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 9, NULL);
INSERT INTO `parameter_pengujian` VALUES (88, 'Bromacil', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (89, 'Permethrin ', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 10, NULL);
INSERT INTO `parameter_pengujian` VALUES (90, 'Lindane', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 8, NULL);
INSERT INTO `parameter_pengujian` VALUES (91, 'Bromopropylate', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (92, 'Malathion', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 9, NULL);
INSERT INTO `parameter_pengujian` VALUES (93, 'Methamidophos', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 9, NULL);
INSERT INTO `parameter_pengujian` VALUES (94, 'Fenvalerate', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 10, NULL);
INSERT INTO `parameter_pengujian` VALUES (95, 'Bromoxynil', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (96, 'Methidathion', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 9, NULL);
INSERT INTO `parameter_pengujian` VALUES (97, 'Mevinphos', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 9, NULL);
INSERT INTO `parameter_pengujian` VALUES (98, 'Bromuconazole', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (99, 'Bupirimate', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (100, 'Parathion', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 9, NULL);
INSERT INTO `parameter_pengujian` VALUES (101, 'Parathion-Methyl', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 9, NULL);
INSERT INTO `parameter_pengujian` VALUES (102, 'Buprofezin', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (103, 'Butachlor', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (104, 'Captan', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (105, 'Carbendazim', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (106, 'Carboxin', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (107, 'Carfentrazone-Ethyl', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (108, 'Chlopropham', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (109, 'Chlorantraniliprole', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (110, 'Chlorfenapyr', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (111, 'Chlorimuron-Ethyl', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (112, 'Chlormequat', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (113, 'Clofentezine', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (114, 'Clothianidin', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (115, 'Coumaphos', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (116, 'Cycloxydim', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (117, 'Cyhexatin', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (118, 'Cymoxanil', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (119, 'Cyproconazole', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (120, 'Cyprodinil', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (121, 'Cyromazine', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (122, 'Dichlofluanid', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (123, 'Dicloran', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (124, 'Difenoconazole', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (125, 'Diflubenzuron', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (126, 'Diflufenican', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (127, 'Dimethomorph', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (128, 'Diniconazole', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (129, 'Dinocap', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (130, 'Dinotefuran', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (131, 'Diphenylamine', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (132, 'Diuron', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (133, 'Emamectin benzoate', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (134, 'Epoxiconazole', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (135, 'Ethoxyquin', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (136, 'Etoxazole', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (137, 'Etridiazole', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (138, 'Famoxadone', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (139, 'Fenarimol', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (140, 'Fenazaquin', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (141, 'Fenbuconazole', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (142, 'Fenhexamid', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (143, 'Fenoxaprop-P-Ethyl', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (144, 'Fenpiclonil', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (145, 'Fenpropidin', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (146, 'Fenpropimorph', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (147, 'Fenpyroximate', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (148, 'Fenquinconazole', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (149, 'Fluazinam', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (150, 'Flubendiamide', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (151, 'Fludioxonil', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (152, 'Fluopicolide', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (153, 'Fluopyram', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (154, 'Fluquinconazole', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (155, 'Flusilazole', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (156, 'Flutolanil', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (157, 'Flutriafol', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (158, 'Furmecyclox', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (159, 'Haloxyfop', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (160, 'Heptenophos', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (161, 'Hexaconazole', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (162, 'Hexythiazox', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (163, 'Imazalil', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (164, 'Imidacloprid', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (165, 'Indoxacarb', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (166, 'Isoprocarb', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (167, 'Kresoxim-Methyl', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (168, 'Linuron', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (169, 'Malathion', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (170, 'Mandipropamid', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (171, 'Meptyldinocap ', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (172, 'Mesosulfuron-Methyl', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (173, 'Mesotrione', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (174, 'Metaldehyde', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (175, 'Methoxyfenozide', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (176, 'Paclobutrazol', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (177, 'Paraquat', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (178, 'Penconazole', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (179, 'Phenthoate', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (180, 'Phosalone', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (181, 'Phosmet', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (182, 'Picoxystrobin', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (183, 'Piperonyl Butoxide', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (184, 'Pirimicarb', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (185, 'Pirimiphos-Ethyl', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (186, 'Pirimiphos-Methyl', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (187, 'Prochloraz', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (188, 'Procymidone', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (189, 'Profenofos', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (190, 'Prometryn', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (191, 'Propamocarb', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (192, 'Propargite', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (193, 'Propham', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (194, 'Propiconazole', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (195, 'Propyzamide', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (196, 'Pymetrozine', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (197, 'Pyraclostrobin', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (198, 'Pyrimethanil', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (199, 'Pyriproxyfen', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (200, 'Quinalphos', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (201, 'Quinoxyfen', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (202, 'Retenone', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (203, 'Spirotetramat', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (204, 'Sulcotrione', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (205, 'Tebuconazole', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (206, 'Tebufenozide', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (207, 'Teflubenzuron ', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (208, 'Tetraconazole', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (209, 'Thiabendazole', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (210, 'Thiophanate-Methyl', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (211, 'Tolclofos-Methyl', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (212, 'Tolylfluanid', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (213, 'Triadimefon', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (214, 'Triadimenol', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (215, 'Triazophos', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (216, 'Trifloxystrobin', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (217, 'Triforine', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (218, 'Warfarin', NULL, '2019-01-24 17:11:44', NULL, NULL, NULL, 15, NULL);
INSERT INTO `parameter_pengujian` VALUES (219, 'Aflatoxin B1', NULL, '2019-01-31 03:17:29', NULL, NULL, NULL, 19, NULL);
INSERT INTO `parameter_pengujian` VALUES (220, 'Aflatoxin B2', NULL, '2019-01-31 03:17:29', NULL, NULL, NULL, 19, NULL);
INSERT INTO `parameter_pengujian` VALUES (221, 'Aflatoxin G1', NULL, '2019-01-31 03:17:29', NULL, NULL, NULL, 19, NULL);
INSERT INTO `parameter_pengujian` VALUES (222, 'Aflatoxin G2', NULL, '2019-01-31 03:17:29', NULL, NULL, NULL, 19, NULL);
INSERT INTO `parameter_pengujian` VALUES (223, 'Ochratoxin A', NULL, '2019-01-31 03:17:29', NULL, NULL, NULL, 19, NULL);
INSERT INTO `parameter_pengujian` VALUES (224, 'Total Plate Count (TPC)', NULL, '2019-01-31 04:35:49', NULL, NULL, NULL, 5, NULL);
INSERT INTO `parameter_pengujian` VALUES (225, 'MPN Coliform', NULL, '2019-01-31 04:35:49', NULL, NULL, NULL, 5, NULL);
INSERT INTO `parameter_pengujian` VALUES (226, 'MPN E.coli', NULL, '2019-01-31 04:35:49', NULL, NULL, NULL, 5, NULL);
INSERT INTO `parameter_pengujian` VALUES (227, 'Yeast & Mold', NULL, '2019-01-31 04:35:49', NULL, NULL, NULL, 5, NULL);
INSERT INTO `parameter_pengujian` VALUES (228, 'Escherichia coli', NULL, '2019-01-31 04:35:49', NULL, NULL, NULL, 5, NULL);
INSERT INTO `parameter_pengujian` VALUES (229, 'Salmonella', NULL, '2019-01-31 04:35:49', NULL, NULL, NULL, 5, NULL);
INSERT INTO `parameter_pengujian` VALUES (230, 'Staphylococcus aureus', NULL, '2019-01-31 04:35:49', NULL, NULL, NULL, 5, NULL);
INSERT INTO `parameter_pengujian` VALUES (231, 'Listeria sp', NULL, '2019-01-31 04:35:49', NULL, NULL, NULL, 5, NULL);
INSERT INTO `parameter_pengujian` VALUES (232, 'Pseudomonas aeruginosa', NULL, '2019-01-31 04:35:49', NULL, NULL, NULL, 5, NULL);
INSERT INTO `parameter_pengujian` VALUES (233, 'Shigella sp', NULL, '2019-01-31 04:35:49', NULL, NULL, NULL, 5, NULL);
INSERT INTO `parameter_pengujian` VALUES (234, 'Kadar Air', NULL, '2019-01-31 05:38:04', NULL, NULL, NULL, 12, NULL);
INSERT INTO `parameter_pengujian` VALUES (235, 'Kadar Abu', NULL, '2019-01-31 05:38:04', NULL, NULL, NULL, 12, NULL);
INSERT INTO `parameter_pengujian` VALUES (236, 'Protein', NULL, '2019-01-31 05:38:04', NULL, NULL, NULL, 12, NULL);
INSERT INTO `parameter_pengujian` VALUES (237, 'Karbohidrat', NULL, '2019-01-31 05:38:04', NULL, NULL, NULL, 12, NULL);
INSERT INTO `parameter_pengujian` VALUES (238, 'Lemak', NULL, '2019-01-31 05:38:04', NULL, NULL, NULL, 12, NULL);
INSERT INTO `parameter_pengujian` VALUES (239, 'Vitamin C', NULL, '2019-01-31 05:38:04', NULL, NULL, NULL, 12, NULL);
INSERT INTO `parameter_pengujian` VALUES (240, 'Vitamin D', NULL, '2019-01-31 05:38:04', NULL, NULL, NULL, 12, NULL);
INSERT INTO `parameter_pengujian` VALUES (241, 'Vitamin B1', NULL, '2019-01-31 05:38:04', NULL, NULL, NULL, 12, NULL);
INSERT INTO `parameter_pengujian` VALUES (242, 'Vitamin B12', NULL, '2019-01-31 05:38:04', NULL, NULL, NULL, 12, NULL);
INSERT INTO `parameter_pengujian` VALUES (243, 'Vitamin E', NULL, '2019-01-31 05:38:04', NULL, NULL, NULL, 12, NULL);
INSERT INTO `parameter_pengujian` VALUES (244, 'Vitamin A', NULL, '2019-01-31 05:38:04', NULL, NULL, NULL, 12, NULL);
INSERT INTO `parameter_pengujian` VALUES (245, 'Formalin', NULL, '2019-01-31 05:38:04', NULL, NULL, NULL, 12, NULL);
INSERT INTO `parameter_pengujian` VALUES (246, 'Chlorin', NULL, '2019-01-31 05:38:04', NULL, NULL, NULL, 12, NULL);
INSERT INTO `parameter_pengujian` VALUES (247, 'Boraxs', NULL, '2019-01-31 05:38:04', NULL, NULL, NULL, 12, NULL);
INSERT INTO `parameter_pengujian` VALUES (248, 'Pewarna', NULL, '2019-01-31 05:38:04', NULL, NULL, NULL, 12, NULL);
INSERT INTO `parameter_pengujian` VALUES (249, 'Pemanis', NULL, '2019-01-31 05:38:04', NULL, NULL, NULL, 12, NULL);
INSERT INTO `parameter_pengujian` VALUES (250, 'Pengawet', NULL, '2019-01-31 05:38:04', NULL, NULL, NULL, 12, NULL);
INSERT INTO `parameter_pengujian` VALUES (251, 'Logam Pb', NULL, '2019-01-31 05:41:39', NULL, NULL, NULL, 13, NULL);
INSERT INTO `parameter_pengujian` VALUES (252, 'Logam Cd', NULL, '2019-01-31 05:41:39', NULL, NULL, NULL, 13, NULL);
INSERT INTO `parameter_pengujian` VALUES (253, 'Logam Hg', NULL, '2019-01-31 05:41:39', NULL, NULL, NULL, 13, NULL);
INSERT INTO `parameter_pengujian` VALUES (254, 'Logam Sn', NULL, '2019-01-31 05:41:39', NULL, NULL, NULL, 13, NULL);
INSERT INTO `parameter_pengujian` VALUES (255, 'Mineral Fe', NULL, '2019-01-31 05:41:39', NULL, NULL, NULL, 13, NULL);
INSERT INTO `parameter_pengujian` VALUES (256, 'Mineral Zn', NULL, '2019-01-31 05:41:39', NULL, NULL, NULL, 13, NULL);
INSERT INTO `parameter_pengujian` VALUES (257, 'Mineral Cu', NULL, '2019-01-31 05:41:39', NULL, NULL, NULL, 13, NULL);
INSERT INTO `parameter_pengujian` VALUES (258, 'Mineral Mg', NULL, '2019-01-31 05:41:39', NULL, NULL, NULL, 13, NULL);
INSERT INTO `parameter_pengujian` VALUES (259, 'Mineral Al', NULL, '2019-01-31 05:41:39', NULL, NULL, NULL, 13, NULL);
INSERT INTO `parameter_pengujian` VALUES (260, 'Mineral Ca', NULL, '2019-01-31 05:41:39', NULL, NULL, NULL, 13, NULL);
INSERT INTO `parameter_pengujian` VALUES (261, 'Mineral Na', NULL, '2019-01-31 05:41:39', NULL, NULL, NULL, 13, NULL);
INSERT INTO `parameter_pengujian` VALUES (262, 'Mineral Mn', NULL, '2019-01-31 05:41:39', NULL, NULL, NULL, 13, NULL);
INSERT INTO `parameter_pengujian` VALUES (263, 'Derajat sosoh', NULL, '2019-02-01 06:03:26', NULL, NULL, NULL, 20, NULL);
INSERT INTO `parameter_pengujian` VALUES (264, 'Butir kepala', NULL, '2019-02-01 06:03:26', NULL, NULL, NULL, 20, NULL);
INSERT INTO `parameter_pengujian` VALUES (265, 'Butir patah', NULL, '2019-02-01 06:03:26', NULL, NULL, NULL, 20, NULL);
INSERT INTO `parameter_pengujian` VALUES (266, 'Butir gabah', NULL, '2019-02-01 06:03:26', NULL, NULL, NULL, 20, NULL);
INSERT INTO `parameter_pengujian` VALUES (267, 'Total butir beras lainnya', NULL, '2019-02-01 06:03:26', NULL, NULL, NULL, 20, NULL);
INSERT INTO `parameter_pengujian` VALUES (268, 'Benda lain', NULL, '2019-02-01 06:03:26', NULL, NULL, NULL, 20, NULL);
INSERT INTO `parameter_pengujian` VALUES (269, 'Kadar air', NULL, '2019-02-01 06:03:26', NULL, NULL, NULL, 20, NULL);
INSERT INTO `parameter_pengujian` VALUES (270, 'Abamektin', NULL, '2019-02-01 07:54:28', NULL, NULL, NULL, 4, NULL);
INSERT INTO `parameter_pengujian` VALUES (271, 'Alfa Sipermetrin', NULL, '2019-02-01 07:54:28', NULL, NULL, NULL, 4, NULL);
INSERT INTO `parameter_pengujian` VALUES (272, 'Amonium Glufosinat', NULL, '2019-02-01 07:54:28', NULL, NULL, NULL, 4, NULL);
INSERT INTO `parameter_pengujian` VALUES (273, 'Atrazine', NULL, '2019-02-01 07:54:28', NULL, NULL, NULL, 4, NULL);
INSERT INTO `parameter_pengujian` VALUES (274, 'Azoksistrobin', NULL, '2019-02-01 07:54:28', NULL, NULL, NULL, 4, NULL);
INSERT INTO `parameter_pengujian` VALUES (275, 'Brodifakum', NULL, '2019-02-01 07:54:28', NULL, NULL, NULL, 4, NULL);
INSERT INTO `parameter_pengujian` VALUES (276, 'Carbofuran', NULL, '2019-02-01 07:54:28', NULL, NULL, NULL, 4, NULL);
INSERT INTO `parameter_pengujian` VALUES (277, 'Cloprop', NULL, '2019-02-01 07:54:28', NULL, NULL, NULL, 4, NULL);
INSERT INTO `parameter_pengujian` VALUES (278, 'Difenokonazol', NULL, '2019-02-01 07:54:28', NULL, NULL, NULL, 4, NULL);
INSERT INTO `parameter_pengujian` VALUES (279, 'Dimetomorf', NULL, '2019-02-01 07:54:28', NULL, NULL, NULL, 4, NULL);
INSERT INTO `parameter_pengujian` VALUES (280, 'Dinotefuran', NULL, '2019-02-01 07:54:28', NULL, NULL, NULL, 4, NULL);
INSERT INTO `parameter_pengujian` VALUES (281, 'Diuron', NULL, '2019-02-01 07:54:28', NULL, NULL, NULL, 4, NULL);
INSERT INTO `parameter_pengujian` VALUES (282, 'Deltametrin', NULL, '2019-02-01 07:54:28', NULL, NULL, NULL, 4, NULL);
INSERT INTO `parameter_pengujian` VALUES (283, 'Emmamektin Benzoate', NULL, '2019-02-01 07:54:28', NULL, NULL, NULL, 4, NULL);
INSERT INTO `parameter_pengujian` VALUES (284, 'Epoksikonazol', NULL, '2019-02-01 07:54:28', NULL, NULL, NULL, 4, NULL);
INSERT INTO `parameter_pengujian` VALUES (285, 'Etil Pirazosulfuron', NULL, '2019-02-01 07:54:28', NULL, NULL, NULL, 4, NULL);
INSERT INTO `parameter_pengujian` VALUES (286, 'Fenoksaprop-p-etil', NULL, '2019-02-01 07:54:28', NULL, NULL, NULL, 4, NULL);
INSERT INTO `parameter_pengujian` VALUES (287, 'Flokumafen', NULL, '2019-02-01 07:54:28', NULL, NULL, NULL, 4, NULL);
INSERT INTO `parameter_pengujian` VALUES (288, 'Fipronil', NULL, '2019-02-01 07:54:28', NULL, NULL, NULL, 4, NULL);
INSERT INTO `parameter_pengujian` VALUES (289, 'Glifosate', NULL, '2019-02-01 07:54:28', NULL, NULL, NULL, 4, NULL);
INSERT INTO `parameter_pengujian` VALUES (290, 'Heksakonazol', NULL, '2019-02-01 07:54:28', NULL, NULL, NULL, 4, NULL);
INSERT INTO `parameter_pengujian` VALUES (291, 'Imidaklorprid', NULL, '2019-02-01 07:54:28', NULL, NULL, NULL, 4, NULL);
INSERT INTO `parameter_pengujian` VALUES (292, 'Isoxaflutole', NULL, '2019-02-01 07:54:28', NULL, NULL, NULL, 4, NULL);
INSERT INTO `parameter_pengujian` VALUES (293, 'Karbaryl', NULL, '2019-02-01 07:54:28', NULL, NULL, NULL, 4, NULL);
INSERT INTO `parameter_pengujian` VALUES (294, 'Karbendazim', NULL, '2019-02-01 07:54:28', NULL, NULL, NULL, 4, NULL);
INSERT INTO `parameter_pengujian` VALUES (295, 'Karbosulfan', NULL, '2019-02-01 07:54:28', NULL, NULL, NULL, 4, NULL);
INSERT INTO `parameter_pengujian` VALUES (296, 'Klorpirifos', NULL, '2019-02-01 07:54:28', NULL, NULL, NULL, 4, NULL);
INSERT INTO `parameter_pengujian` VALUES (297, 'Lamda Sihalotrin', NULL, '2019-02-01 07:54:28', NULL, NULL, NULL, 4, NULL);
INSERT INTO `parameter_pengujian` VALUES (298, 'Lufenuron', NULL, '2019-02-01 07:54:28', NULL, NULL, NULL, 4, NULL);
INSERT INTO `parameter_pengujian` VALUES (299, 'Mankozeb', NULL, '2019-02-01 07:54:28', NULL, NULL, NULL, 4, NULL);
INSERT INTO `parameter_pengujian` VALUES (300, 'Maneb', NULL, '2019-02-01 07:54:28', NULL, NULL, NULL, 4, NULL);
INSERT INTO `parameter_pengujian` VALUES (301, 'Mathrine', NULL, '2019-02-01 07:54:28', NULL, NULL, NULL, 4, NULL);
INSERT INTO `parameter_pengujian` VALUES (302, 'Methomyl', NULL, '2019-02-01 07:54:28', NULL, NULL, NULL, 4, NULL);
INSERT INTO `parameter_pengujian` VALUES (303, 'Methyl Metsulfuron ', NULL, '2019-02-01 07:54:28', NULL, NULL, NULL, 4, NULL);
INSERT INTO `parameter_pengujian` VALUES (304, 'Metil Thiofanat', NULL, '2019-02-01 07:54:28', NULL, NULL, NULL, 4, NULL);
INSERT INTO `parameter_pengujian` VALUES (305, 'Metiram', NULL, '2019-02-01 07:54:28', NULL, NULL, NULL, 4, NULL);
INSERT INTO `parameter_pengujian` VALUES (306, 'Mesotrione', NULL, '2019-02-01 07:54:28', NULL, NULL, NULL, 4, NULL);
INSERT INTO `parameter_pengujian` VALUES (307, 'N-Orto Nitrophenol', NULL, '2019-02-01 07:54:28', NULL, NULL, NULL, 4, NULL);
INSERT INTO `parameter_pengujian` VALUES (308, 'N-Para Nitrophenol', NULL, '2019-02-01 07:54:28', NULL, NULL, NULL, 4, NULL);
INSERT INTO `parameter_pengujian` VALUES (309, 'N-5Nitroquaicol', NULL, '2019-02-01 07:54:28', NULL, NULL, NULL, 4, NULL);
INSERT INTO `parameter_pengujian` VALUES (310, 'Paklobutrazol', NULL, '2019-02-01 07:54:28', NULL, NULL, NULL, 4, NULL);
INSERT INTO `parameter_pengujian` VALUES (311, 'Permethrin', NULL, '2019-02-01 07:54:28', NULL, NULL, NULL, 4, NULL);
INSERT INTO `parameter_pengujian` VALUES (312, 'Piraklostrobin', NULL, '2019-02-01 07:54:28', NULL, NULL, NULL, 4, NULL);
INSERT INTO `parameter_pengujian` VALUES (313, 'Piperonyl Butoxide (PBO)', NULL, '2019-02-01 07:54:28', NULL, NULL, NULL, 4, NULL);
INSERT INTO `parameter_pengujian` VALUES (314, 'Profoksidim', NULL, '2019-02-01 07:54:28', NULL, NULL, NULL, 4, NULL);
INSERT INTO `parameter_pengujian` VALUES (315, 'Propiconazol', NULL, '2019-02-01 07:54:28', NULL, NULL, NULL, 4, NULL);
INSERT INTO `parameter_pengujian` VALUES (316, 'Propineb', NULL, '2019-02-01 07:54:28', NULL, NULL, NULL, 4, NULL);
INSERT INTO `parameter_pengujian` VALUES (317, 'Profenofos', NULL, '2019-02-01 07:54:28', NULL, NULL, NULL, 4, NULL);
INSERT INTO `parameter_pengujian` VALUES (318, 'Pretilaklor', NULL, '2019-02-01 07:54:28', NULL, NULL, NULL, 4, NULL);
INSERT INTO `parameter_pengujian` VALUES (319, 'Pyrazosulfuron etil', NULL, '2019-02-01 07:54:28', NULL, NULL, NULL, 4, NULL);
INSERT INTO `parameter_pengujian` VALUES (320, 'Simoksanil', NULL, '2019-02-01 07:54:28', NULL, NULL, NULL, 4, NULL);
INSERT INTO `parameter_pengujian` VALUES (321, 'Sipermetrin', NULL, '2019-02-01 07:54:28', NULL, NULL, NULL, 4, NULL);
INSERT INTO `parameter_pengujian` VALUES (322, 'Siprokonazol', NULL, '2019-02-01 07:54:28', NULL, NULL, NULL, 4, NULL);
INSERT INTO `parameter_pengujian` VALUES (323, 'Triasulfuron', NULL, '2019-02-01 07:54:28', NULL, NULL, NULL, 4, NULL);
INSERT INTO `parameter_pengujian` VALUES (324, 'Triazafos', NULL, '2019-02-01 07:54:28', NULL, NULL, NULL, 4, NULL);
INSERT INTO `parameter_pengujian` VALUES (325, 'Triklopir BEE', NULL, '2019-02-01 07:54:28', NULL, NULL, NULL, 4, NULL);
INSERT INTO `parameter_pengujian` VALUES (326, 'Triklopir', NULL, '2019-02-01 07:54:28', NULL, NULL, NULL, 4, NULL);
INSERT INTO `parameter_pengujian` VALUES (327, 'Teflumethrin tehnical', NULL, '2019-02-01 07:54:28', NULL, NULL, NULL, 4, NULL);
INSERT INTO `parameter_pengujian` VALUES (328, 'Thiobenkarb', NULL, '2019-02-01 07:54:28', NULL, NULL, NULL, 4, NULL);
INSERT INTO `parameter_pengujian` VALUES (329, 'Zineb', NULL, '2019-02-01 07:54:28', NULL, NULL, NULL, 4, NULL);
INSERT INTO `parameter_pengujian` VALUES (330, 'Ziram', NULL, '2019-02-01 07:54:28', NULL, NULL, NULL, 4, NULL);
INSERT INTO `parameter_pengujian` VALUES (331, '1-naftil asam asetat', NULL, '2019-02-01 07:54:28', NULL, NULL, NULL, 4, NULL);
INSERT INTO `parameter_pengujian` VALUES (332, '2-(1-naftil) asetamida', NULL, '2019-02-01 07:54:28', NULL, NULL, NULL, 4, NULL);
INSERT INTO `parameter_pengujian` VALUES (333, '2,4 D dimetil amina', NULL, '2019-02-01 07:54:28', NULL, NULL, NULL, 4, NULL);
INSERT INTO `parameter_pengujian` VALUES (334, '2,4 D BE', NULL, '2019-02-01 07:54:28', NULL, NULL, NULL, 4, NULL);
INSERT INTO `parameter_pengujian` VALUES (335, 'Oxathiapiprolin', NULL, '2019-02-01 07:54:28', NULL, NULL, NULL, 4, NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of permohonan
-- ----------------------------
INSERT INTO `permohonan` VALUES (1, '2019-01-15 12:16:29', NULL, NULL, NULL, NULL, NULL, 'M. Noer', 'PT. Ganesha Abaditama', NULL, 'Jl. Buni No. 33 Cipayung, Jakarta Timur', '0218452306', 'Mulyadi', '<p>\r\n	Bahan Standar Uji<br />\r\n	Kesiapan Alat Uji<br />\r\n	Metode Uji<br />\r\n	Lama Waktu Uji<br />\r\n	Personil Penguji</p>\r\n', NULL, NULL, '2019-01-15');
INSERT INTO `permohonan` VALUES (2, '2019-01-15 12:17:05', NULL, NULL, NULL, NULL, NULL, 'M. Noer', 'PT. Ganesha Abaditama', NULL, 'Jl. Buni No. 33 Cipayung, Jakarta Timur', '-', 'Mulyadi', NULL, NULL, NULL, NULL);
INSERT INTO `permohonan` VALUES (3, '2019-01-15 12:17:51', NULL, NULL, NULL, NULL, NULL, 'M. Noer', 'PT. Ganesha Abaditama', NULL, 'Jl. Buni No. 33 Cipayung, Jakarta Timur', '-', 'Mulyadi', NULL, NULL, NULL, '2019-01-23');
INSERT INTO `permohonan` VALUES (4, '2019-01-15 12:18:07', NULL, NULL, NULL, NULL, NULL, 'M. Noer', 'PT. Ganesha Abaditama', NULL, 'Jl. Buni No. 33 Cipayung, Jakarta Timur', '-', 'Mulyadi', NULL, NULL, NULL, '2019-01-23');
INSERT INTO `permohonan` VALUES (5, '2019-01-15 12:19:09', NULL, NULL, NULL, '2019-01-23', NULL, 'Djoko Suroso', 'PT. SURAT TANI', NULL, 'Jl. Kol. Sugiono 2 C, Medan', '0816928932', 'Djoko Suroso', '<p>\r\n	Bahan Standar Uji<br />\r\n	Kesiapan Alat Uji<br />\r\n	Metode Uji<br />\r\n	Lama Waktu Uji<br />\r\n	Personil Penguji</p>\r\n', NULL, 1600, NULL);
INSERT INTO `permohonan` VALUES (6, '2019-01-15 12:28:09', NULL, NULL, NULL, NULL, NULL, 'Djoko Suroso', 'PT. SURAT TANI', NULL, 'Jl. Kol. Sugiono 2 C, Medan', '0816928932', 'Djoko Suroso', '<p>\n	Bahan Standar Uji<br />\n	Kesiapan Alat Uji<br />\n	Metode Uji<br />\n	Lama Waktu Uji<br />\n	Personil Penguji</p>\n', NULL, NULL, '2019-01-01');

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
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of permohonan_detail
-- ----------------------------
INSERT INTO `permohonan_detail` VALUES (1, '2019-01-15 12:16:29', NULL, NULL, NULL, 1, 'buah-buahan', 'Rambutan', 1000, 1, 4, 6, ' ', NULL, NULL, '003/1/2019', NULL, NULL, NULL, 'menugning');
INSERT INTO `permohonan_detail` VALUES (2, '2019-01-15 12:17:05', NULL, NULL, NULL, 2, '', '', 0, 0, 0, 0, '', NULL, NULL, '004/1/2019', NULL, NULL, NULL, '');
INSERT INTO `permohonan_detail` VALUES (3, '2019-01-15 12:17:51', NULL, NULL, NULL, 3, 'buah-buahan', 'Rambutan', 1000, 0, 0, 0, '', NULL, NULL, '005/1/2019', NULL, NULL, NULL, '');
INSERT INTO `permohonan_detail` VALUES (4, '2019-01-15 12:18:07', NULL, NULL, NULL, 4, 'buah-buahan', 'Rambutan', 1000, 0, 0, 0, '', NULL, NULL, '006/1/2019', NULL, NULL, NULL, '');
INSERT INTO `permohonan_detail` VALUES (5, '2019-01-15 12:19:09', NULL, NULL, NULL, 5, 'buah-buahan', 'rambutan bagus', 2000, 1, 4, 6, ' ', NULL, NULL, '007/1/2019', NULL, NULL, NULL, 'mengunang');
INSERT INTO `permohonan_detail` VALUES (6, '2019-01-15 12:28:09', NULL, NULL, NULL, 6, 'asd', 'asd', 500, 2, 4, 6, ' sdf', NULL, NULL, '008/1/2019', NULL, NULL, NULL, 'menghitam');

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
) ENGINE = InnoDB AUTO_INCREMENT = 69 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of permohonan_detail_parameter
-- ----------------------------
INSERT INTO `permohonan_detail_parameter` VALUES (1, 1, 1, 50000, '001/KN/I/19', '', 0);
INSERT INTO `permohonan_detail_parameter` VALUES (2, 2, 1, 50000, '001/KN/I/19', '', 0);
INSERT INTO `permohonan_detail_parameter` VALUES (3, 7, 1, 50000, '001/RP/I/19', '', 0);
INSERT INTO `permohonan_detail_parameter` VALUES (4, 8, 1, 9090909, '001/RP/I/19', '', 0);
INSERT INTO `permohonan_detail_parameter` VALUES (5, 9, 1, 100000, '001/RP/I/19', '', 0);
INSERT INTO `permohonan_detail_parameter` VALUES (6, 10, 1, 100000, '001/RP/I/19', '', 0);
INSERT INTO `permohonan_detail_parameter` VALUES (7, 11, 1, 100000, '001/RP/I/19', '', 0);
INSERT INTO `permohonan_detail_parameter` VALUES (8, 12, 1, 500000, '001/RP/I/19', '', 0);
INSERT INTO `permohonan_detail_parameter` VALUES (9, 10, 1, 100000, '001/RP/I/19', '', 0);
INSERT INTO `permohonan_detail_parameter` VALUES (10, 0, 2, 0, '001//I/19', '', 0);
INSERT INTO `permohonan_detail_parameter` VALUES (11, 0, 2, 0, '001//I/19', '', 0);
INSERT INTO `permohonan_detail_parameter` VALUES (12, 0, 2, 0, '001//I/19', '', 0);
INSERT INTO `permohonan_detail_parameter` VALUES (13, 0, 2, 0, '001//I/19', '', 0);
INSERT INTO `permohonan_detail_parameter` VALUES (14, 0, 2, 0, '001//I/19', '', 0);
INSERT INTO `permohonan_detail_parameter` VALUES (15, 0, 2, 75000, '001//I/19', '', 0);
INSERT INTO `permohonan_detail_parameter` VALUES (16, 0, 2, 0, '001//I/19', '', 0);
INSERT INTO `permohonan_detail_parameter` VALUES (17, 0, 2, 0, '001//I/19', '', 0);
INSERT INTO `permohonan_detail_parameter` VALUES (18, 0, 2, 0, '001//I/19', '', 0);
INSERT INTO `permohonan_detail_parameter` VALUES (19, 0, 3, 0, '001//I/19', '', 0);
INSERT INTO `permohonan_detail_parameter` VALUES (20, 0, 3, 0, '001//I/19', '', 0);
INSERT INTO `permohonan_detail_parameter` VALUES (21, 0, 3, 0, '001//I/19', '', 0);
INSERT INTO `permohonan_detail_parameter` VALUES (22, 0, 3, 0, '001//I/19', '', 0);
INSERT INTO `permohonan_detail_parameter` VALUES (23, 0, 3, 0, '001//I/19', '', 0);
INSERT INTO `permohonan_detail_parameter` VALUES (24, 0, 3, 0, '001//I/19', '', 0);
INSERT INTO `permohonan_detail_parameter` VALUES (25, 0, 3, 0, '001//I/19', '', 0);
INSERT INTO `permohonan_detail_parameter` VALUES (26, 0, 3, 0, '001//I/19', '', 0);
INSERT INTO `permohonan_detail_parameter` VALUES (27, 0, 3, 0, '001//I/19', '', 0);
INSERT INTO `permohonan_detail_parameter` VALUES (28, 0, 4, 0, '001//I/19', '', 0);
INSERT INTO `permohonan_detail_parameter` VALUES (29, 0, 4, 0, '001//I/19', '', 0);
INSERT INTO `permohonan_detail_parameter` VALUES (30, 0, 4, 0, '001//I/19', '', 0);
INSERT INTO `permohonan_detail_parameter` VALUES (31, 0, 4, 0, '001//I/19', '', 0);
INSERT INTO `permohonan_detail_parameter` VALUES (32, 0, 4, 0, '001//I/19', '', 0);
INSERT INTO `permohonan_detail_parameter` VALUES (33, 0, 4, 0, '001//I/19', '', 0);
INSERT INTO `permohonan_detail_parameter` VALUES (34, 0, 4, 0, '001//I/19', '', 0);
INSERT INTO `permohonan_detail_parameter` VALUES (35, 0, 4, 0, '001//I/19', '', 0);
INSERT INTO `permohonan_detail_parameter` VALUES (36, 0, 4, 0, '001//I/19', '', 0);
INSERT INTO `permohonan_detail_parameter` VALUES (37, 1, 5, 99999, '002/KN/I/19', '', 0);
INSERT INTO `permohonan_detail_parameter` VALUES (38, 2, 5, 9, '002/KN/I/19', '', 0);
INSERT INTO `permohonan_detail_parameter` VALUES (39, 3, 5, 500009, '002/KN/I/19', '', 0);
INSERT INTO `permohonan_detail_parameter` VALUES (40, 7, 5, 1000009, '002/RP/I/19', '', 0);
INSERT INTO `permohonan_detail_parameter` VALUES (41, 8, 5, 9, '002/RP/I/19', '', 0);
INSERT INTO `permohonan_detail_parameter` VALUES (42, 24, 5, 9, '002/RP/I/19', '', 0);
INSERT INTO `permohonan_detail_parameter` VALUES (43, 15, 5, 9, '002/RP/I/19', '', 0);
INSERT INTO `permohonan_detail_parameter` VALUES (44, 2, 6, 50000, '003/KN/I/19', '', 0);
INSERT INTO `permohonan_detail_parameter` VALUES (45, 3, 6, 50000, '003/KN/I/19', '', 0);
INSERT INTO `permohonan_detail_parameter` VALUES (46, 219, 6, 0, '001/MY/I/19', '', 0);
INSERT INTO `permohonan_detail_parameter` VALUES (47, 219, 6, 0, '001/MY/I/19', '', 0);
INSERT INTO `permohonan_detail_parameter` VALUES (48, 219, 6, 0, '001/MY/I/19', '', 0);
INSERT INTO `permohonan_detail_parameter` VALUES (49, 219, 6, 0, '001/MY/I/19', '', 0);
INSERT INTO `permohonan_detail_parameter` VALUES (50, 219, 6, 0, '001/MY/I/19', '', 0);
INSERT INTO `permohonan_detail_parameter` VALUES (51, 219, 6, 0, '001/MY/I/19', '', 0);
INSERT INTO `permohonan_detail_parameter` VALUES (52, 219, 6, 0, '001/MY/I/19', '', 0);
INSERT INTO `permohonan_detail_parameter` VALUES (53, 219, 6, 0, '001/MY/I/19', '', 0);
INSERT INTO `permohonan_detail_parameter` VALUES (54, 219, 6, 0, '001/MY/I/19', '', 0);
INSERT INTO `permohonan_detail_parameter` VALUES (55, 219, 6, 0, '001/MY/I/19', '', 0);
INSERT INTO `permohonan_detail_parameter` VALUES (56, 219, 6, 0, '001/MY/I/19', '', 0);
INSERT INTO `permohonan_detail_parameter` VALUES (57, 219, 6, 0, '001/MY/I/19', '', 0);
INSERT INTO `permohonan_detail_parameter` VALUES (58, 219, 6, 0, '001/MY/I/19', '', 0);
INSERT INTO `permohonan_detail_parameter` VALUES (59, 219, 6, 0, '001/MY/I/19', '', 0);
INSERT INTO `permohonan_detail_parameter` VALUES (60, 219, 6, 0, '001/MY/I/19', '', 0);
INSERT INTO `permohonan_detail_parameter` VALUES (61, 219, 6, 0, '001/MY/I/19', '', 0);
INSERT INTO `permohonan_detail_parameter` VALUES (62, 219, 6, 0, '001/MY/I/19', '', 0);
INSERT INTO `permohonan_detail_parameter` VALUES (63, 225, 6, 0, '001/MIK/I/19', '', 0);
INSERT INTO `permohonan_detail_parameter` VALUES (64, 261, 6, 0, '001/LBM/I/19', '', 0);
INSERT INTO `permohonan_detail_parameter` VALUES (65, 234, 6, 0, '003/KN/I/19', '', 0);
INSERT INTO `permohonan_detail_parameter` VALUES (66, 263, 6, 0, '001/MFB/II/19', '', 0);
INSERT INTO `permohonan_detail_parameter` VALUES (67, 264, 6, 0, '001/MFB/II/19', '', 0);
INSERT INTO `permohonan_detail_parameter` VALUES (68, 271, 6, 0, '001/FP/II/19', '', 0);

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
-- Table structure for setting_lhp
-- ----------------------------
DROP TABLE IF EXISTS `setting_lhp`;
CREATE TABLE `setting_lhp`  (
  `id_setting_lhp` int(11) NOT NULL AUTO_INCREMENT COMMENT ' ',
  `lembaga` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pejabat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_setting_lhp`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of setting_lhp
-- ----------------------------
INSERT INTO `setting_lhp` VALUES (1, 'Kepala Pusat Promosi dan Sertifikasi Hasil Pertanian<br>Dinas Ketahanan Pangan, Kelautan dan Pertanian<br>Provinsi DKI Jakarta', 'Wati Mutia<br>NIP. 196406021996032001');

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
	g.ceklis_2,
	a.ket_kondisi
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
	i.tanggal_masuk,
	a.ket_kondisi,
	b.caption
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

-- ----------------------------
-- View structure for vw_hasil2_fp
-- ----------------------------
DROP VIEW IF EXISTS `vw_hasil2_fp`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `vw_hasil2_fp` AS SELECT
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
	g.bahan,
	g.berat,
	g.kadar,
	g.metode,
	g.satuan satuan_hasil,
	i.tanggal_pengambilan,
	j.kemasan,
	i.created_at,
	i.tanggal_masuk,
	a.ket_kondisi,
	b.caption
FROM
	permohonan_detail a
left join 
	permohonan_detail_parameter b ON a.id_permohonan_detail = b.id_permohonan_detail
left join
	parameter_pengujian c ON b.id_parameter_pengujian = c.id_parameter_pengujian
left join laporan d ON c.id_laporan = d.id_laporan
left join satuan e ON a.satuan = e.id_satuan
left join kondisi f ON a.kondisi = f.id_kondisi
left join hasil_detail_fp g ON b.id_permohonan_detail_parameter = g.id_permohonan_detail_parameter
left join permohonan_detail h ON a.nomor_contoh = h.nomor_contoh
left join permohonan i ON i.id_permohonan = h.id_permohonan
left join kemasan j ON a.kemasan = j.id_kemasan

ORDER BY a.nomor_contoh, d.laporan ;

-- ----------------------------
-- View structure for vw_hasil2_kn
-- ----------------------------
DROP VIEW IF EXISTS `vw_hasil2_kn`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `vw_hasil2_kn` AS SELECT
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
	g.metode,
	g.satuan satuan_hasil,
	i.tanggal_pengambilan,
	j.kemasan,
	i.created_at,
	i.tanggal_masuk,
	a.ket_kondisi,
	b.caption
FROM
	permohonan_detail a
left join 
	permohonan_detail_parameter b ON a.id_permohonan_detail = b.id_permohonan_detail
left join
	parameter_pengujian c ON b.id_parameter_pengujian = c.id_parameter_pengujian
left join laporan d ON c.id_laporan = d.id_laporan
left join satuan e ON a.satuan = e.id_satuan
left join kondisi f ON a.kondisi = f.id_kondisi
left join hasil_detail_kn g ON b.id_permohonan_detail_parameter = g.id_permohonan_detail_parameter
left join permohonan_detail h ON a.nomor_contoh = h.nomor_contoh
left join permohonan i ON i.id_permohonan = h.id_permohonan
left join kemasan j ON a.kemasan = j.id_kemasan

ORDER BY a.nomor_contoh, d.laporan ;

-- ----------------------------
-- View structure for vw_hasil2_lbm
-- ----------------------------
DROP VIEW IF EXISTS `vw_hasil2_lbm`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `vw_hasil2_lbm` AS SELECT
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
	g.metode,
	g.satuan satuan_hasil,
	g.lod,
	g.loq,
	i.tanggal_pengambilan,
	j.kemasan,
	i.created_at,
	i.tanggal_masuk,
	a.ket_kondisi,
	b.caption
FROM
	permohonan_detail a
left join 
	permohonan_detail_parameter b ON a.id_permohonan_detail = b.id_permohonan_detail
left join
	parameter_pengujian c ON b.id_parameter_pengujian = c.id_parameter_pengujian
left join laporan d ON c.id_laporan = d.id_laporan
left join satuan e ON a.satuan = e.id_satuan
left join kondisi f ON a.kondisi = f.id_kondisi
left join hasil_detail_lbm g ON b.id_permohonan_detail_parameter = g.id_permohonan_detail_parameter
left join permohonan_detail h ON a.nomor_contoh = h.nomor_contoh
left join permohonan i ON i.id_permohonan = h.id_permohonan
left join kemasan j ON a.kemasan = j.id_kemasan

ORDER BY a.nomor_contoh, d.laporan ;

-- ----------------------------
-- View structure for vw_hasil2_mfb
-- ----------------------------
DROP VIEW IF EXISTS `vw_hasil2_mfb`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `vw_hasil2_mfb` AS SELECT
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
	g.metode,
	g.satuan satuan_hasil,
	g.medium,
	g.premium,
	i.tanggal_pengambilan,
	j.kemasan,
	i.created_at,
	i.tanggal_masuk,
	a.ket_kondisi,
	b.caption
FROM
	permohonan_detail a
left join 
	permohonan_detail_parameter b ON a.id_permohonan_detail = b.id_permohonan_detail
left join
	parameter_pengujian c ON b.id_parameter_pengujian = c.id_parameter_pengujian
left join laporan d ON c.id_laporan = d.id_laporan
left join satuan e ON a.satuan = e.id_satuan
left join kondisi f ON a.kondisi = f.id_kondisi
left join hasil_detail_mfb g ON b.id_permohonan_detail_parameter = g.id_permohonan_detail_parameter
left join permohonan_detail h ON a.nomor_contoh = h.nomor_contoh
left join permohonan i ON i.id_permohonan = h.id_permohonan
left join kemasan j ON a.kemasan = j.id_kemasan

ORDER BY a.nomor_contoh, d.laporan ;

-- ----------------------------
-- View structure for vw_hasil2_mycotoxin
-- ----------------------------
DROP VIEW IF EXISTS `vw_hasil2_mycotoxin`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `vw_hasil2_mycotoxin` AS SELECT
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
	g.mql,
	g.metode,
	g.bmc,
	i.tanggal_pengambilan,
	j.kemasan,
	i.created_at,
	i.tanggal_masuk,
	a.ket_kondisi,
	b.caption
FROM
	permohonan_detail a
left join 
	permohonan_detail_parameter b ON a.id_permohonan_detail = b.id_permohonan_detail
left join
	parameter_pengujian c ON b.id_parameter_pengujian = c.id_parameter_pengujian
left join laporan d ON c.id_laporan = d.id_laporan
left join satuan e ON a.satuan = e.id_satuan
left join kondisi f ON a.kondisi = f.id_kondisi
left join hasil_detail_mycotoxin g ON b.id_permohonan_detail_parameter = g.id_permohonan_detail_parameter
left join permohonan_detail h ON a.nomor_contoh = h.nomor_contoh
left join permohonan i ON i.id_permohonan = h.id_permohonan
left join kemasan j ON a.kemasan = j.id_kemasan

ORDER BY a.nomor_contoh, d.laporan ;

-- ----------------------------
-- View structure for vw_hasil2_residu
-- ----------------------------
DROP VIEW IF EXISTS `vw_hasil2_residu`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `vw_hasil2_residu` AS SELECT
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
	g.mql,
	g.metode,
	g.bmr,
	i.tanggal_pengambilan,
	j.kemasan,
	i.created_at,
	i.tanggal_masuk,
	a.ket_kondisi,
	b.caption
FROM
	permohonan_detail a
left join 
	permohonan_detail_parameter b ON a.id_permohonan_detail = b.id_permohonan_detail
left join
	parameter_pengujian c ON b.id_parameter_pengujian = c.id_parameter_pengujian
left join laporan d ON c.id_laporan = d.id_laporan
left join satuan e ON a.satuan = e.id_satuan
left join kondisi f ON a.kondisi = f.id_kondisi
left join hasil_detail_residu g ON b.id_permohonan_detail_parameter = g.id_permohonan_detail_parameter
left join permohonan_detail h ON a.nomor_contoh = h.nomor_contoh
left join permohonan i ON i.id_permohonan = h.id_permohonan
left join kemasan j ON a.kemasan = j.id_kemasan

ORDER BY a.nomor_contoh, d.laporan ;

SET FOREIGN_KEY_CHECKS = 1;
