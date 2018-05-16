/*
Navicat MySQL Data Transfer

Source Server         : handsome
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : lab

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-05-17 01:21:58
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of buy_equipment
-- ----------------------------
INSERT INTO `buy_equipment` VALUES ('16', '1', '1', '1', '30', '1', null, '1');
INSERT INTO `buy_equipment` VALUES ('17', '1', '1', '1', '31', '1', null, '1');
INSERT INTO `buy_equipment` VALUES ('18', '2', '2', '2', '31', '1', null, '2');
INSERT INTO `buy_equipment` VALUES ('19', '3', '3', '3', '31', '1', null, '3');
INSERT INTO `buy_equipment` VALUES ('20', '4', '4', '4', '31', '1', null, '4');
INSERT INTO `buy_equipment` VALUES ('21', '5', '5', '5', '31', '1', null, '5');
INSERT INTO `buy_equipment` VALUES ('22', '电脑', '20', '8000', '32', '5', null, '上海群硕有限公司');
INSERT INTO `buy_equipment` VALUES ('23', '键盘', '20', '20', '32', '4', null, '上海群硕有限公司');
INSERT INTO `buy_equipment` VALUES ('24', '烧杯', '15', '2', '32', '6', null, '上海化学设备制造责任有限公司');

-- ----------------------------
-- Table structure for `delete_record`
-- ----------------------------
DROP TABLE IF EXISTS `delete_record`;
CREATE TABLE `delete_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `is_allowed` tinyint(1) DEFAULT NULL,
  `is_done` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of delete_record
-- ----------------------------
INSERT INTO `delete_record` VALUES ('5', '4', '2018-05-17 00:08:41', '2018-05-17 00:08:41', '0', null, null);
INSERT INTO `delete_record` VALUES ('6', '4', '2018-05-17 00:08:49', '2018-05-17 00:08:49', '0', null, null);
INSERT INTO `delete_record` VALUES ('7', '4', '2018-05-17 00:08:54', '2018-05-17 00:08:54', '0', null, null);
INSERT INTO `delete_record` VALUES ('8', '4', '2018-05-17 00:09:08', '2018-05-17 00:09:08', '0', null, null);

-- ----------------------------
-- Table structure for `equipment`
-- ----------------------------
DROP TABLE IF EXISTS `equipment`;
CREATE TABLE `equipment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `date_pro` int(11) DEFAULT NULL,
  `origin` varchar(50) DEFAULT NULL,
  `price` double DEFAULT '0',
  `request_buy_record_id` int(11) DEFAULT NULL,
  `lab_id` int(11) NOT NULL,
  `delete_record_id` int(11) DEFAULT '0',
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `fk_equipment_request_buy_record1_idx` (`request_buy_record_id`),
  KEY `fk_equipment_lab1_idx` (`lab_id`),
  KEY `fk_equipment_delete_record1_idx` (`delete_record_id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of equipment
-- ----------------------------
INSERT INTO `equipment` VALUES ('2', '1', null, '1', '1', '31', '1', '0', '0', '2018-05-15 18:02:34', '2018-05-15 18:02:34');
INSERT INTO `equipment` VALUES ('3', '2', null, '2', '2', '31', '1', '0', '0', '2018-05-15 18:02:34', '2018-05-15 18:02:34');
INSERT INTO `equipment` VALUES ('4', '2', null, '2', '2', '31', '1', '0', '0', '2018-05-15 18:02:34', '2018-05-15 18:02:34');
INSERT INTO `equipment` VALUES ('5', '3', null, '3', '3', '31', '1', '0', '0', '2018-05-15 18:02:34', '2018-05-15 18:02:34');
INSERT INTO `equipment` VALUES ('6', '3', null, '3', '3', '31', '1', '0', '0', '2018-05-15 18:02:34', '2018-05-15 18:02:34');
INSERT INTO `equipment` VALUES ('7', '3', null, '3', '3', '31', '1', '0', '0', '2018-05-15 18:02:34', '2018-05-15 18:02:34');
INSERT INTO `equipment` VALUES ('8', '4', null, '4', '4', '31', '1', '0', '0', '2018-05-15 18:02:34', '2018-05-15 18:02:34');
INSERT INTO `equipment` VALUES ('9', '4', null, '4', '4', '31', '1', '0', '0', '2018-05-15 18:02:34', '2018-05-15 18:02:34');
INSERT INTO `equipment` VALUES ('10', '4', null, '4', '4', '31', '1', '0', '0', '2018-05-15 18:02:34', '2018-05-15 18:02:34');
INSERT INTO `equipment` VALUES ('11', '4', null, '4', '4', '31', '1', '0', '0', '2018-05-15 18:02:34', '2018-05-15 18:02:34');
INSERT INTO `equipment` VALUES ('12', '5', null, '5', '5', '31', '1', '0', '0', '2018-05-15 18:02:34', '2018-05-15 18:02:34');
INSERT INTO `equipment` VALUES ('13', '5', null, '5', '5', '31', '1', '0', '0', '2018-05-15 18:02:34', '2018-05-15 18:02:34');
INSERT INTO `equipment` VALUES ('14', '5', null, '5', '5', '31', '1', '0', '0', '2018-05-15 18:02:34', '2018-05-15 18:02:34');
INSERT INTO `equipment` VALUES ('15', '5', null, '5', '5', '31', '1', '0', '0', '2018-05-15 18:02:34', '2018-05-15 18:02:34');
INSERT INTO `equipment` VALUES ('16', '5', null, '5', '5', '31', '1', '0', '0', '2018-05-15 18:02:34', '2018-05-15 18:02:34');
INSERT INTO `equipment` VALUES ('17', '电脑', null, '上海群硕有限公司', '8000', '32', '5', '0', '0', '2018-05-15 22:31:58', '2018-05-15 22:31:58');
INSERT INTO `equipment` VALUES ('18', '电脑', null, '上海群硕有限公司', '8000', '32', '5', '0', '0', '2018-05-15 22:31:58', '2018-05-15 22:31:58');
INSERT INTO `equipment` VALUES ('19', '电脑', null, '上海群硕有限公司', '8000', '32', '5', '0', '0', '2018-05-15 22:31:58', '2018-05-15 22:31:58');
INSERT INTO `equipment` VALUES ('20', '电脑', null, '上海群硕有限公司', '8000', '32', '5', '0', '0', '2018-05-15 22:31:58', '2018-05-15 22:31:58');
INSERT INTO `equipment` VALUES ('21', '电脑', null, '上海群硕有限公司', '8000', '32', '5', '0', '0', '2018-05-15 22:31:58', '2018-05-15 22:31:58');
INSERT INTO `equipment` VALUES ('22', '电脑', null, '上海群硕有限公司', '8000', '32', '5', '0', '0', '2018-05-15 22:31:58', '2018-05-15 22:31:58');
INSERT INTO `equipment` VALUES ('23', '电脑', null, '上海群硕有限公司', '8000', '32', '5', '0', '0', '2018-05-15 22:31:58', '2018-05-15 22:31:58');
INSERT INTO `equipment` VALUES ('24', '电脑', null, '上海群硕有限公司', '8000', '32', '5', '0', '0', '2018-05-15 22:31:58', '2018-05-15 22:31:58');
INSERT INTO `equipment` VALUES ('25', '电脑', null, '上海群硕有限公司', '8000', '32', '5', '0', '0', '2018-05-15 22:31:58', '2018-05-15 22:31:58');
INSERT INTO `equipment` VALUES ('26', '电脑', null, '上海群硕有限公司', '8000', '32', '5', '0', '0', '2018-05-15 22:31:58', '2018-05-15 22:31:58');
INSERT INTO `equipment` VALUES ('27', '电脑', null, '上海群硕有限公司', '8000', '32', '5', '0', '0', '2018-05-15 22:31:58', '2018-05-15 22:31:58');
INSERT INTO `equipment` VALUES ('28', '电脑', null, '上海群硕有限公司', '8000', '32', '5', '8', '1', '2018-05-15 22:31:58', '2018-05-15 22:31:58');
INSERT INTO `equipment` VALUES ('29', '电脑', null, '上海群硕有限公司', '8000', '32', '5', '0', '0', '2018-05-15 22:31:58', '2018-05-15 22:31:58');
INSERT INTO `equipment` VALUES ('30', '电脑', null, '上海群硕有限公司', '8000', '32', '5', '0', '0', '2018-05-15 22:31:58', '2018-05-15 22:31:58');
INSERT INTO `equipment` VALUES ('31', '电脑', null, '上海群硕有限公司', '8000', '32', '5', '0', '0', '2018-05-15 22:31:58', '2018-05-15 22:31:58');
INSERT INTO `equipment` VALUES ('32', '电脑', null, '上海群硕有限公司', '8000', '32', '5', '0', '0', '2018-05-15 22:31:58', '2018-05-15 22:31:58');
INSERT INTO `equipment` VALUES ('33', '电脑', null, '上海群硕有限公司', '8000', '32', '5', '0', '0', '2018-05-15 22:31:58', '2018-05-15 22:31:58');
INSERT INTO `equipment` VALUES ('34', '电脑', null, '上海群硕有限公司', '8000', '32', '5', '0', '0', '2018-05-15 22:31:58', '2018-05-15 22:31:58');
INSERT INTO `equipment` VALUES ('35', '电脑', null, '上海群硕有限公司', '8000', '32', '5', '0', '0', '2018-05-15 22:31:58', '2018-05-15 22:31:58');
INSERT INTO `equipment` VALUES ('36', '电脑', null, '上海群硕有限公司', '8000', '32', '5', '0', '0', '2018-05-15 22:31:58', '2018-05-15 22:31:58');
INSERT INTO `equipment` VALUES ('37', '键盘', null, '上海群硕有限公司', '20', '32', '4', '5', '1', '2018-05-15 22:31:58', '2018-05-15 22:31:58');
INSERT INTO `equipment` VALUES ('38', '键盘', null, '上海群硕有限公司', '20', '32', '4', '0', '0', '2018-05-15 22:31:58', '2018-05-15 22:31:58');
INSERT INTO `equipment` VALUES ('39', '键盘', null, '上海群硕有限公司', '20', '32', '4', '0', '0', '2018-05-15 22:31:58', '2018-05-15 22:31:58');
INSERT INTO `equipment` VALUES ('40', '键盘', null, '上海群硕有限公司', '20', '32', '4', '0', '0', '2018-05-15 22:31:58', '2018-05-15 22:31:58');
INSERT INTO `equipment` VALUES ('41', '键盘', null, '上海群硕有限公司', '20', '32', '4', '0', '0', '2018-05-15 22:31:58', '2018-05-15 22:31:58');
INSERT INTO `equipment` VALUES ('42', '键盘', null, '上海群硕有限公司', '20', '32', '4', '0', '0', '2018-05-15 22:31:58', '2018-05-15 22:31:58');
INSERT INTO `equipment` VALUES ('43', '键盘', null, '上海群硕有限公司', '20', '32', '4', '0', '0', '2018-05-15 22:31:58', '2018-05-15 22:31:58');
INSERT INTO `equipment` VALUES ('44', '键盘', null, '上海群硕有限公司', '20', '32', '4', '0', '0', '2018-05-15 22:31:58', '2018-05-15 22:31:58');
INSERT INTO `equipment` VALUES ('45', '键盘', null, '上海群硕有限公司', '20', '32', '4', '8', '1', '2018-05-15 22:31:58', '2018-05-15 22:31:58');
INSERT INTO `equipment` VALUES ('46', '键盘', null, '上海群硕有限公司', '20', '32', '4', '8', '1', '2018-05-15 22:31:58', '2018-05-15 22:31:58');
INSERT INTO `equipment` VALUES ('47', '键盘', null, '上海群硕有限公司', '20', '32', '4', '8', '1', '2018-05-15 22:31:58', '2018-05-15 22:31:58');
INSERT INTO `equipment` VALUES ('48', '键盘', null, '上海群硕有限公司', '20', '32', '4', '0', '0', '2018-05-15 22:31:58', '2018-05-15 22:31:58');
INSERT INTO `equipment` VALUES ('49', '键盘', null, '上海群硕有限公司', '20', '32', '4', '0', '0', '2018-05-15 22:31:58', '2018-05-15 22:31:58');
INSERT INTO `equipment` VALUES ('50', '键盘', null, '上海群硕有限公司', '20', '32', '4', '7', '1', '2018-05-15 22:31:58', '2018-05-15 22:31:58');
INSERT INTO `equipment` VALUES ('51', '键盘', null, '上海群硕有限公司', '20', '32', '4', '6', '1', '2018-05-15 22:31:58', '2018-05-15 22:31:58');
INSERT INTO `equipment` VALUES ('52', '键盘', null, '上海群硕有限公司', '20', '32', '4', '0', '0', '2018-05-15 22:31:58', '2018-05-15 22:31:58');
INSERT INTO `equipment` VALUES ('53', '键盘', null, '上海群硕有限公司', '20', '32', '4', '6', '1', '2018-05-15 22:31:58', '2018-05-15 22:31:58');
INSERT INTO `equipment` VALUES ('54', '键盘', null, '上海群硕有限公司', '20', '32', '4', '7', '1', '2018-05-15 22:31:58', '2018-05-15 22:31:58');
INSERT INTO `equipment` VALUES ('55', '键盘', null, '上海群硕有限公司', '20', '32', '4', '6', '1', '2018-05-15 22:31:58', '2018-05-15 22:31:58');
INSERT INTO `equipment` VALUES ('56', '键盘', null, '上海群硕有限公司', '20', '32', '4', '6', '1', '2018-05-15 22:31:58', '2018-05-15 22:31:58');
INSERT INTO `equipment` VALUES ('57', '烧杯', null, '上海化学设备制造责任有限公司', '2', '32', '6', '7', '1', '2018-05-15 22:31:58', '2018-05-15 22:31:58');
INSERT INTO `equipment` VALUES ('58', '烧杯', null, '上海化学设备制造责任有限公司', '2', '32', '6', '8', '1', '2018-05-15 22:31:58', '2018-05-15 22:31:58');
INSERT INTO `equipment` VALUES ('59', '烧杯', null, '上海化学设备制造责任有限公司', '2', '32', '6', '6', '1', '2018-05-15 22:31:58', '2018-05-15 22:31:58');
INSERT INTO `equipment` VALUES ('60', '烧杯', null, '上海化学设备制造责任有限公司', '2', '32', '6', '5', '1', '2018-05-15 22:31:58', '2018-05-15 22:31:58');
INSERT INTO `equipment` VALUES ('61', '烧杯', null, '上海化学设备制造责任有限公司', '2', '32', '6', '5', '1', '2018-05-15 22:31:58', '2018-05-15 22:31:58');
INSERT INTO `equipment` VALUES ('62', '烧杯', null, '上海化学设备制造责任有限公司', '2', '32', '6', '5', '1', '2018-05-15 22:31:58', '2018-05-15 22:31:58');
INSERT INTO `equipment` VALUES ('63', '烧杯', null, '上海化学设备制造责任有限公司', '2', '32', '6', '6', '1', '2018-05-15 22:31:58', '2018-05-15 22:31:58');
INSERT INTO `equipment` VALUES ('64', '烧杯', null, '上海化学设备制造责任有限公司', '2', '32', '6', '8', '1', '2018-05-15 22:31:58', '2018-05-15 22:31:58');
INSERT INTO `equipment` VALUES ('65', '烧杯', null, '上海化学设备制造责任有限公司', '2', '32', '6', '6', '1', '2018-05-15 22:31:58', '2018-05-15 22:31:58');
INSERT INTO `equipment` VALUES ('66', '烧杯', null, '上海化学设备制造责任有限公司', '2', '32', '6', '5', '1', '2018-05-15 22:31:58', '2018-05-15 22:31:58');
INSERT INTO `equipment` VALUES ('67', '烧杯', null, '上海化学设备制造责任有限公司', '2', '32', '6', '5', '1', '2018-05-15 22:31:58', '2018-05-15 22:31:58');
INSERT INTO `equipment` VALUES ('68', '烧杯', null, '上海化学设备制造责任有限公司', '2', '32', '6', '5', '1', '2018-05-15 22:31:58', '2018-05-15 22:31:58');
INSERT INTO `equipment` VALUES ('69', '烧杯', null, '上海化学设备制造责任有限公司', '2', '32', '6', '5', '1', '2018-05-15 22:31:58', '2018-05-15 22:31:58');
INSERT INTO `equipment` VALUES ('70', '烧杯', null, '上海化学设备制造责任有限公司', '2', '32', '6', '0', '0', '2018-05-15 22:31:58', '2018-05-15 22:31:58');
INSERT INTO `equipment` VALUES ('71', '烧杯', null, '上海化学设备制造责任有限公司', '2', '32', '6', '0', '0', '2018-05-15 22:31:58', '2018-05-15 22:31:58');

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
  `brief` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_lab_user1_idx` (`user_id`),
  CONSTRAINT `fk_lab_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lab
-- ----------------------------
INSERT INTO `lab` VALUES ('1', '生物实验室', '6', '2018-05-11 01:28:29', '2018-05-11 01:28:29', null);
INSERT INTO `lab` VALUES ('2', '化学实验室', '6', '2018-05-11 01:28:29', '2018-05-11 01:28:29', null);
INSERT INTO `lab` VALUES ('3', '数学实验室', '6', '2018-05-11 01:31:26', '2018-05-11 01:31:26', null);
INSERT INTO `lab` VALUES ('4', '计科实验室', '6', '2018-05-11 01:32:09', '2018-05-11 01:32:09', null);
INSERT INTO `lab` VALUES ('5', '物联网实验室', '6', '2018-05-11 01:32:17', '2018-05-11 01:32:17', null);
INSERT INTO `lab` VALUES ('6', '物理实验室', '6', '2018-05-11 01:32:37', '2018-05-11 01:32:37', null);

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
  `title` varchar(150) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `allowed_at` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `is_allowed` tinyint(1) DEFAULT '0',
  `is_done` tinyint(1) DEFAULT '0',
  `cost` double DEFAULT NULL,
  `allow_user_id` int(11) DEFAULT NULL,
  `request_user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_request_buy_record_user1_idx` (`request_user_id`),
  CONSTRAINT `fk_request_buy_record_user1` FOREIGN KEY (`request_user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of request_buy_record
-- ----------------------------
INSERT INTO `request_buy_record` VALUES ('30', '我额', '2018-05-13 01:32:04', '2018-05-15 17:57:34', '2018-05-15 17:57:34', '0', '0', '0', '1', '4', '4');
INSERT INTO `request_buy_record` VALUES ('31', '我我我', '2018-05-14 00:54:57', '2018-05-15 18:02:34', '2018-05-15 18:02:34', '0', '1', '0', '55', '4', '4');
INSERT INTO `request_buy_record` VALUES ('32', '18年5月中旬购买一批设备', '2018-05-15 22:29:55', '2018-05-15 22:31:57', '2018-05-15 22:31:57', '0', '1', '0', '160430', '4', '4');
INSERT INTO `request_buy_record` VALUES ('33', '18年5月中旬购买一批设备', '2018-05-15 22:29:58', '2018-05-15 22:29:58', null, '0', '0', '0', '160430', null, '4');
INSERT INTO `request_buy_record` VALUES ('34', '18年5月中旬购买一批设备', '2018-05-15 22:30:28', '2018-05-15 22:30:28', null, '0', '0', '0', '160430', null, '4');

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
  `token` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `username_2` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('4', 'yjz123', 'yjz123', '男', '0', '0', '171882105@qq.com', '杨嘉志', '山西省侯马市红卫厂32#', '山西-临汾-侯马市', null, '1', '15503622641', '043000', null, null, 'b976c2fdcd86761e0723eea63f1ee4d0');
INSERT INTO `user` VALUES ('6', 'yjz', 'yjz123', '男', '0', '0', '171882105@qq.com', '杨嘉志', '', '山西-太原-小店区', null, '0', '15503622641', '043000', null, null, null);
