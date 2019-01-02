/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : plailing_test

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2018-12-24 16:07:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tbl_applyplace`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_applyplace`;
CREATE TABLE `tbl_applyplace` (
  `id` int(4) NOT NULL,
  `sitetype` varchar(30) DEFAULT NULL,
  `useyear` varchar(6) DEFAULT NULL,
  `useother` varchar(12) DEFAULT NULL,
  `uselang` varchar(30) DEFAULT NULL,
  `checkwords` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_applyplace
-- ----------------------------
INSERT INTO `tbl_applyplace` VALUES ('1', '公教楼', '2019', '02/02 08:00', '2', '您的申请提交成功，请等候消息！');

-- ----------------------------
-- Table structure for `tbl_continuesc`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_continuesc`;
CREATE TABLE `tbl_continuesc` (
  `id` int(11) NOT NULL,
  `file` varchar(50) DEFAULT NULL,
  `catalog` varchar(50) DEFAULT NULL,
  `checkwords` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_continuesc
-- ----------------------------
INSERT INTO `tbl_continuesc` VALUES ('1', 'video.mp4', 'java', null);

-- ----------------------------
-- Table structure for `tbl_createcourse`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_createcourse`;
CREATE TABLE `tbl_createcourse` (
  `id` int(4) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `certificate` varchar(100) DEFAULT NULL,
  `video` varchar(100) DEFAULT NULL,
  `experience` varchar(1024) DEFAULT NULL,
  `classname` varchar(100) DEFAULT '',
  `course` varchar(1024) DEFAULT NULL,
  `parenttype` varchar(100) DEFAULT NULL,
  `childtype` varchar(100) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `cover` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_createcourse
-- ----------------------------
INSERT INTO `tbl_createcourse` VALUES ('1', 'tx.jpg', 'tx.jpg', 'video.mp4', '是只好猫毛毛啊', 'java', '这是一个讲述如何养猫的课程', '摄像技术', '人像', '100', 'tx.jpg');

-- ----------------------------
-- Table structure for `tbl_login`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_login`;
CREATE TABLE `tbl_login` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `email` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `checkwords` varchar(100) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_login
-- ----------------------------
INSERT INTO `tbl_login` VALUES ('2', '123@qq.com', '', '邮箱或密码错误');
INSERT INTO `tbl_login` VALUES ('6', '', '12345678', '邮箱或密码错误');
INSERT INTO `tbl_login` VALUES ('7', '15226538851@163.com', '123456', '退出');

-- ----------------------------
-- Table structure for `tbl_personalmessage`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_personalmessage`;
CREATE TABLE `tbl_personalmessage` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `nickName` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `checkpwd` varchar(30) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `sex` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `province` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `city` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `birthday` char(10) DEFAULT NULL,
  `phoneNumber` char(11) DEFAULT NULL,
  `identityNumber` char(18) DEFAULT NULL,
  `school` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `major` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `introduction` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `checkwords` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_personalmessage
-- ----------------------------
INSERT INTO `tbl_personalmessage` VALUES ('1', '爱打酱油的猫', '15226538851@163.com', '123456', '123456', 'tx.jpg', '女', '河北', '石家庄', '2012-02-06', '15226538851', '130000000000000000', '河北吃饭大学', '吃饭', '是只好猫', '确认修改个人信息');
