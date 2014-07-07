/*
Navicat MySQL Data Transfer

Source Server         : Januar Fonti
Source Server Version : 50508
Source Host           : localhost:3306
Source Database       : db_simplelogin

Target Server Type    : MYSQL
Target Server Version : 50508
File Encoding         : 65001

Date: 2014-07-07 20:39:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tbl_user
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `level` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES ('1', 'januarfonti', 'januarfonti', 'admin');
INSERT INTO `tbl_user` VALUES ('2', 'anisya', 'anisya', 'member');
