/*
Navicat MySQL Data Transfer

Source Server         : handsome
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : lab

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-05-11 16:43:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `buy_equipment`
-- ----------------------------
DROP TABLE IF EXISTS `buy_equipment`;
CREATE TABLE `buy_equipment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `count` int(11) NOT NULL,
  `price` double NOT NULL,
  `request_buy_record_id` int(11) NOT NULL,
  `lab_id` int(11) NOT NULL,
  `date_pro` datetime DEFAULT NULL,
  `origin` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of buy_equipment
-- ----------------------------
INSERT INTO `buy_equipment` VALUES ('4', '笔记本电脑', '20', '30', '1', '4', null, '山西省侯马市');
INSERT INTO `buy_equipment` VALUES ('5', '笔记本电脑', '20', '30', '1', '4', null, '山西省侯马市');
INSERT INTO `buy_equipment` VALUES ('6', '生理盐水', '20', '15.8', '1', '1', null, '山西省侯马市');
INSERT INTO `buy_equipment` VALUES ('7', '盐酸', '2', '15.8', '1', '2', null, '山西省侯马市');

-- ----------------------------
-- Table structure for `delete_record`
-- ----------------------------
DROP TABLE IF EXISTS `delete_record`;
CREATE TABLE `delete_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
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
  `created_at` datetime DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `fk_equipment_request_buy_record1_idx` (`request_buy_record_id`),
  KEY `fk_equipment_lab1_idx` (`lab_id`),
  KEY `fk_equipment_delete_record1_idx` (`delete_record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of equipment
-- ----------------------------

-- ----------------------------
-- Table structure for `equipment_has_repaire_record`
-- ----------------------------
DROP TABLE IF EXISTS `equipment_has_repaire_record`;
CREATE TABLE `equipment_has_repaire_record` (
  `id` int(11) NOT NULL,
  `equipment_id` int(11) NOT NULL AUTO_INCREMENT,
  `repaire_record_id` int(11) NOT NULL,
  `user_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_lab_user1_idx` (`user_id`),
  CONSTRAINT `fk_lab_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lab
-- ----------------------------
INSERT INTO `lab` VALUES ('1', '生物实验室', '6', '2018-05-11 01:28:29', '2018-05-11 01:28:29');
INSERT INTO `lab` VALUES ('2', '化学实验室', '6', '2018-05-11 01:28:29', '2018-05-11 01:28:29');
INSERT INTO `lab` VALUES ('3', '数学实验室', '6', '2018-05-11 01:31:26', '2018-05-11 01:31:26');
INSERT INTO `lab` VALUES ('4', '计科实验室', '6', '2018-05-11 01:32:09', '2018-05-11 01:32:09');
INSERT INTO `lab` VALUES ('5', '物联网实验室', '6', '2018-05-11 01:32:17', '2018-05-11 01:32:17');
INSERT INTO `lab` VALUES ('6', '物理实验室', '6', '2018-05-11 01:32:37', '2018-05-11 01:32:37');

-- ----------------------------
-- Table structure for `notice`
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `user_id` int(11) NOT NULL,
  `content` varchar(3000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_notice_user_idx` (`user_id`),
  CONSTRAINT `fk_notice_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notice
-- ----------------------------

-- ----------------------------
-- Table structure for `permission`
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  `role_id` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permission
-- ----------------------------

-- ----------------------------
-- Table structure for `repaire_record`
-- ----------------------------
DROP TABLE IF EXISTS `repaire_record`;
CREATE TABLE `repaire_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(300) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
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
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `is_allowed` tinyint(1) DEFAULT '0',
  `is_done` tinyint(1) DEFAULT '0',
  `cost` double DEFAULT NULL,
  `allow_user_id` int(11) DEFAULT NULL,
  `request_user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_request_buy_record_user1_idx` (`request_user_id`),
  CONSTRAINT `fk_request_buy_record_user1` FOREIGN KEY (`request_user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of request_buy_record
-- ----------------------------
INSERT INTO `request_buy_record` VALUES ('2', '2018-05-11 02:00:38', '2018-05-11 02:00:38', '0', '0', '0', '600', null, '4');
INSERT INTO `request_buy_record` VALUES ('3', '2018-05-11 02:01:11', '2018-05-11 02:01:11', '0', '0', '0', '916', null, '4');
INSERT INTO `request_buy_record` VALUES ('4', '2018-05-11 02:02:27', '2018-05-11 02:02:27', '0', '0', '0', '31.6', null, '4');

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
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_request_use_lab_user1_idx` (`user_id`),
  CONSTRAINT `fk_request_use_lab_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of request_use_lab
-- ----------------------------

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '学生');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  `gender` varchar(3) DEFAULT '男',
  `permission` int(2) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `email` varchar(60) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `area` varchar(60) DEFAULT NULL,
  `home_phone` varchar(15) DEFAULT NULL,
  `role_id` int(11) NOT NULL DEFAULT '0',
  `tel_phone` varchar(11) DEFAULT NULL,
  `zip_code` varchar(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `username_2` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('4', 'yjz123', 'yjz123', '男', '0', '0', '171882105@qq.com', '杨嘉志', '山西省侯马市红卫厂32#', '山西-临汾-侯马市', null, '1', '22222222222', '043000', null, null);
INSERT INTO `user` VALUES ('6', 'yjz', 'yjz123', '男', '0', '0', '171882105@qq.com', '杨嘉志', '', '山西-太原-小店区', null, '0', '15503622641', '043000', null, null);
