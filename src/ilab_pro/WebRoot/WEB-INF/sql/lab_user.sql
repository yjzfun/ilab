/*
Navicat MySQL Data Transfer

Source Server         : handsome
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : lab

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-02-25 12:51:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `lab_user`
-- ----------------------------
DROP TABLE IF EXISTS `lab_user`;
CREATE TABLE `lab_user` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(30) DEFAULT NULL,
  `permission` int(2) DEFAULT NULL,
  `email` varchar(60) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `email_2` (`email`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `username_2` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lab_user
-- ----------------------------
