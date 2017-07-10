/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : ihome

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2017-07-10 23:06:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(4) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `name` varchar(20) DEFAULT NULL COMMENT '用记名',
  `age` int(4) DEFAULT NULL COMMENT '年龄',
  `job` varchar(255) DEFAULT NULL COMMENT '工作',
  `qq` varchar(20) DEFAULT NULL COMMENT 'QQ号',
  `weixin` varchar(255) DEFAULT NULL COMMENT '微信号',
  `phone` varchar(11) NOT NULL COMMENT '手机号',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `type` varchar(255) NOT NULL COMMENT '用户类型',
  PRIMARY KEY (`id`,`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'me', '22', '软件工程师', '1990041527', 'veichang', '1509055227', '中国一个美丽的地方', '管理员');
INSERT INTO `user` VALUES ('2', 'me', '22', '软件工程师', '1990041527', null, '1509055227', '奋斗吧，兄弟！', '普通用户');
INSERT INTO `user` VALUES ('10', 'zhong', null, 'work', 'qq', 'weixin', '15090552277', '海淀区西二旗', '管理员');
INSERT INTO `user` VALUES ('12', '仲维昌', null, 'RD', null, 'veichang', '15090552277', '山大软件学院', '管理员');