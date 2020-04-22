/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : user

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2020-04-22 09:22:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tb_user`
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `age` int(10) DEFAULT NULL,
  `sex` tinyint(1) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `created` datetime DEFAULT NULL COMMENT '注册时间',
  `updated` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `AK_nq_username` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', 'zhangsan', '123', '张三', '18', '1', '2020-04-20', '2020-04-20 18:21:20', '2020-04-20 18:21:24');
INSERT INTO `tb_user` VALUES ('2', 'lisi', '1', '问问', '1', '1', '2020-04-20', '2020-04-20 18:25:36', '2020-04-20 18:25:39');
INSERT INTO `tb_user` VALUES ('3', 'zhangli', '321', '历史', '25', '0', '2020-04-20', '2020-04-20 18:54:21', '2020-04-20 18:54:24');
