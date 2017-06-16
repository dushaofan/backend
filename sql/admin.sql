/*
Navicat MySQL Data Transfer

Source Server         : 172.16.14.122
Source Server Version : 50552
Source Host           : 172.16.14.122:3306
Source Database       : admin

Target Server Type    : MYSQL
Target Server Version : 50552
File Encoding         : 65001

Date: 2017-06-16 17:51:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for dt_admin
-- ----------------------------
DROP TABLE IF EXISTS `dt_admin`;
CREATE TABLE `dt_admin` (
  `admin_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '管理员ID',
  `user_name` varchar(20) NOT NULL COMMENT '用户名',
  `user_pwd` varchar(32) NOT NULL COMMENT '密码',
  `real_name` varchar(32) DEFAULT NULL COMMENT '真实姓名',
  `role_id` tinyint(3) unsigned DEFAULT '0' COMMENT '角色ID',
  `encrypt` varchar(20) NOT NULL COMMENT '加密因子',
  `last_login_ip` varchar(30) DEFAULT NULL COMMENT '最后登录IP',
  `last_login_time` datetime DEFAULT NULL COMMENT '最后登录时间',
  `disabled` tinyint(1) NOT NULL COMMENT '状态：1，禁用',
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='管理员';

-- ----------------------------
-- Records of dt_admin
-- ----------------------------
INSERT INTO `dt_admin` VALUES ('1', 'dufei', '123', '杜飞', '0', '12', '', null, '0');
