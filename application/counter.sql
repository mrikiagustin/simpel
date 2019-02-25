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

 Date: 04/02/2019 12:35:29
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
INSERT INTO `counter_contoh` VALUES (2, 2019, 86);
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
) ENGINE = InnoDB AUTO_INCREMENT = 107 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

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
INSERT INTO `counter_lab` VALUES (99, 'KN', 2019, 13);
INSERT INTO `counter_lab` VALUES (100, 'MY', 2019, 11);
INSERT INTO `counter_lab` VALUES (101, 'MIK', 2019, 19);
INSERT INTO `counter_lab` VALUES (102, 'LBM', 2019, 25);
INSERT INTO `counter_lab` VALUES (103, 'MFB', 2019, 1);
INSERT INTO `counter_lab` VALUES (104, 'FP', 2019, 2);
INSERT INTO `counter_lab` VALUES (105, 'BN', 2019, 12);
INSERT INTO `counter_lab` VALUES (106, 'RP', 2019, 34);

-- ----------------------------
-- Table structure for counter_nomorseri
-- ----------------------------
DROP TABLE IF EXISTS `counter_nomorseri`;
CREATE TABLE `counter_nomorseri`  (
  `id_counter_nomorseri` int(11) NOT NULL AUTO_INCREMENT,
  `tahun` int(11) NULL DEFAULT NULL,
  `counter` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_counter_nomorseri`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of counter_nomorseri
-- ----------------------------
INSERT INTO `counter_nomorseri` VALUES (10, 2018, 10);
INSERT INTO `counter_nomorseri` VALUES (12, 2020, 0);
INSERT INTO `counter_nomorseri` VALUES (13, 2021, 0);
INSERT INTO `counter_nomorseri` VALUES (26, 2019, 77);

SET FOREIGN_KEY_CHECKS = 1;
