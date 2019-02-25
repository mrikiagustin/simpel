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

 Date: 01/02/2019 16:45:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for paket
-- ----------------------------
DROP TABLE IF EXISTS `paket`;
CREATE TABLE `paket`  (
  `id_paket` int(11) NOT NULL AUTO_INCREMENT,
  `nama_paket` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_paket`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of paket
-- ----------------------------
INSERT INTO `paket` VALUES (1, 'organoklor 2019');
INSERT INTO `paket` VALUES (2, 'organofosfat 2010');

-- ----------------------------
-- Table structure for paket_detail
-- ----------------------------
DROP TABLE IF EXISTS `paket_detail`;
CREATE TABLE `paket_detail`  (
  `id_parameter_pengujian` int(11) NULL DEFAULT NULL,
  `id_paket` int(11) NULL DEFAULT NULL,
  `priority` int(11) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of paket_detail
-- ----------------------------
INSERT INTO `paket_detail` VALUES (331, 1, 0);
INSERT INTO `paket_detail` VALUES (334, 1, 1);
INSERT INTO `paket_detail` VALUES (333, 1, 2);
INSERT INTO `paket_detail` VALUES (333, 2, 0);
INSERT INTO `paket_detail` VALUES (332, 2, 1);
INSERT INTO `paket_detail` VALUES (5, 2, 2);
INSERT INTO `paket_detail` VALUES (270, 2, 3);
INSERT INTO `paket_detail` VALUES (1, 2, 4);

SET FOREIGN_KEY_CHECKS = 1;
