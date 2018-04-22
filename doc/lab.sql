/*
Navicat MySQL Data Transfer

Source Server         : handsome
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : lab

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-04-22 14:50:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `buy_equipment`
-- ----------------------------
DROP TABLE IF EXISTS `buy_equipment`;
CREATE TABLE `buy_equipment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `equipment_name` varchar(30) NOT NULL,
  `count` int(11) NOT NULL,
  `price` double NOT NULL,
  `request_buy_record_id` int(11) NOT NULL,
  `lab_id` int(11) NOT NULL,
  `date_pro` int(11) DEFAULT NULL,
  `origin` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of buy_equipment
-- ----------------------------

-- ----------------------------
-- Table structure for `delete_record`
-- ----------------------------
DROP TABLE IF EXISTS `delete_record`;
CREATE TABLE `delete_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `is_allowed` tinyint(1) DEFAULT NULL,
  `is_done` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of delete_record
-- ----------------------------

-- ----------------------------
-- Table structure for `equipment`
-- ----------------------------
DROP TABLE IF EXISTS `equipment`;
CREATE TABLE `equipment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `date_pro` int(11) DEFAULT NULL,
  `origin` varchar(50) DEFAULT NULL,
  `request_buy_record_id` int(11) NOT NULL,
  `lab_id` int(11) NOT NULL,
  `delete_record_id` int(11) NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_equipment_request_buy_record1_idx` (`request_buy_record_id`),
  KEY `fk_equipment_lab1_idx` (`lab_id`),
  KEY `fk_equipment_delete_record1_idx` (`delete_record_id`),
  CONSTRAINT `fk_equipment_delete_record1` FOREIGN KEY (`delete_record_id`) REFERENCES `delete_record` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_equipment_lab1` FOREIGN KEY (`lab_id`) REFERENCES `lab` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_equipment_request_buy_record1` FOREIGN KEY (`request_buy_record_id`) REFERENCES `request_buy_record` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of equipment
-- ----------------------------

-- ----------------------------
-- Table structure for `equipment_has_repaire_record`
-- ----------------------------
DROP TABLE IF EXISTS `equipment_has_repaire_record`;
CREATE TABLE `equipment_has_repaire_record` (
  `equipment_id` int(11) NOT NULL AUTO_INCREMENT,
  `repaire_record_id` int(11) NOT NULL,
  `user_id` varchar(45) DEFAULT NULL,
  KEY `fk_equipment_has_repaire_record_repaire_record1_idx` (`repaire_record_id`),
  KEY `fk_equipment_has_repaire_record_equipment1_idx` (`equipment_id`),
  CONSTRAINT `fk_equipment_has_repaire_record_equipment1` FOREIGN KEY (`equipment_id`) REFERENCES `equipment` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_equipment_has_repaire_record_repaire_record1` FOREIGN KEY (`repaire_record_id`) REFERENCES `repaire_record` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of equipment_has_repaire_record
-- ----------------------------

-- ----------------------------
-- Table structure for `lab`
-- ----------------------------
DROP TABLE IF EXISTS `lab`;
CREATE TABLE `lab` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_lab_user1_idx` (`user_id`),
  CONSTRAINT `fk_lab_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lab
-- ----------------------------

-- ----------------------------
-- Table structure for `notice`
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `user_id` int(11) NOT NULL,
  `content` varchar(800) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_notice_user_idx` (`user_id`),
  CONSTRAINT `fk_notice_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notice
-- ----------------------------

-- ----------------------------
-- Table structure for `repaire_record`
-- ----------------------------
DROP TABLE IF EXISTS `repaire_record`;
CREATE TABLE `repaire_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(300) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of repaire_record
-- ----------------------------

-- ----------------------------
-- Table structure for `request_buy_record`
-- ----------------------------
DROP TABLE IF EXISTS `request_buy_record`;
CREATE TABLE `request_buy_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `is_allowed` tinyint(1) DEFAULT NULL,
  `is_done` tinyint(1) DEFAULT NULL,
  `budget` double DEFAULT NULL,
  `allow_user_id` int(11) DEFAULT NULL,
  `request_user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_request_buy_record_user1_idx` (`request_user_id`),
  CONSTRAINT `fk_request_buy_record_user1` FOREIGN KEY (`request_user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of request_buy_record
-- ----------------------------

-- ----------------------------
-- Table structure for `request_use_lab`
-- ----------------------------
DROP TABLE IF EXISTS `request_use_lab`;
CREATE TABLE `request_use_lab` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `allow_user_id` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `is_allowed` tinyint(1) DEFAULT NULL,
  `is_done` tinyint(1) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_request_use_lab_user1_idx` (`user_id`),
  CONSTRAINT `fk_request_use_lab_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of request_use_lab
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  `permission` int(2) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `email` varchar(60) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `address` datetime DEFAULT NULL,
  `gender` varchar(3) DEFAULT '男',
  `area` varchar(60) DEFAULT NULL,
  `home_phone` varchar(15) DEFAULT NULL,
  `work_phone` varchar(15) DEFAULT NULL,
  `tel_phone` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `username_2` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('4', 'yjz123', 'yjz123', '0', '0', '171882105@qq.com', '杨嘉志', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('6', 'yjz', 'yjz123', '0', '0', '171882105@qq.com', null, null, null, null, null, null, null);
