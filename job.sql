/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 100408
 Source Host           : localhost:3306
 Source Schema         : job

 Target Server Type    : MySQL
 Target Server Version : 100408
 File Encoding         : 65001

 Date: 09/11/2019 20:48:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bio
-- ----------------------------
DROP TABLE IF EXISTS `bio`;
CREATE TABLE `bio`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `school` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `TYPE` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `workTime` date NULL DEFAULT NULL,
  `job` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `location` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `low` int(11) NULL DEFAULT NULL,
  `high` int(11) NULL DEFAULT NULL,
  `profile` varchar(5096) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userid` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `usid`(`userid`) USING BTREE,
  CONSTRAINT `usid` FOREIGN KEY (`userid`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bio
-- ----------------------------
INSERT INTO `bio` VALUES (1, 'Tadm', '18782763065', '常熟理工学院', '2873126657@qq.com', '男', '全职', '2021-11-11', '前端开发工程师', '上海', 70000, 20000, 'https://liuhongwei3.github.io/\r\n					', 1);

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `second` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, '前端', '前端开发工程师');
INSERT INTO `category` VALUES (2, '后端', 'JAVA开发工程师');
INSERT INTO `category` VALUES (3, '管理', '项目经理');
INSERT INTO `category` VALUES (4, 'web安全', 'web安全工程师');

-- ----------------------------
-- Table structure for collection
-- ----------------------------
DROP TABLE IF EXISTS `collection`;
CREATE TABLE `collection`  (
  `userid` int(11) NOT NULL,
  `jobid` int(11) NOT NULL,
  PRIMARY KEY (`userid`) USING BTREE,
  INDEX `jid`(`jobid`) USING BTREE,
  CONSTRAINT `jid` FOREIGN KEY (`jobid`) REFERENCES `work` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `uid` FOREIGN KEY (`userid`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of collection
-- ----------------------------
INSERT INTO `collection` VALUES (1, 5);

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `username` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `profile` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `location` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `company_name`(`company_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES (2, 'Tadm科技公司', '刘宏伟', 'liu', '一个技术与艺术结合的科技公司', '上海', '1588789665', '2873126657@qq.com');

-- ----------------------------
-- Table structure for delivery
-- ----------------------------
DROP TABLE IF EXISTS `delivery`;
CREATE TABLE `delivery`  (
  `bio_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `company` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`bio_id`) USING BTREE,
  INDEX `userid`(`user_id`) USING BTREE,
  CONSTRAINT `biod` FOREIGN KEY (`bio_id`) REFERENCES `bio` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `userid` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of delivery
-- ----------------------------
INSERT INTO `delivery` VALUES (1, 1, 'Tadm科技公司', '2019-11-09');

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bio_id` int(11) NOT NULL,
  `company` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `message` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `mbio_id`(`bio_id`) USING BTREE,
  INDEX `muser_id`(`userid`) USING BTREE,
  CONSTRAINT `mbio_id` FOREIGN KEY (`bio_id`) REFERENCES `bio` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `muser_id` FOREIGN KEY (`userid`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES (2, 1, 'Tadm科技公司', 'test success', 1);
INSERT INTO `message` VALUES (3, 1, 'Tadm科技公司', 'test success', 1);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `profile` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'tadm', 'liu', '2873126657@qq.com', '155558456', '男', 'tadm personal bio');
INSERT INTO `users` VALUES (2, 'test', '123', '2873126657@qq.com', '', '男', 'this is test number');

-- ----------------------------
-- Table structure for work
-- ----------------------------
DROP TABLE IF EXISTS `work`;
CREATE TABLE `work`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `work` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `location` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `low` int(11) NOT NULL,
  `high` int(11) NOT NULL,
  `jobtime` date NOT NULL,
  `company` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `experence` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `profile` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `compnm`(`company`) USING BTREE,
  CONSTRAINT `compnm` FOREIGN KEY (`company`) REFERENCES `company` (`company_name`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of work
-- ----------------------------
INSERT INTO `work` VALUES (5, '前端开发', '上海', 7000, 10000, '2021-11-09', 'Tadm科技公司', '2年+', '前端开发工程师', '一个技术与艺术结合的科技公司，值得你的加入！');
INSERT INTO `work` VALUES (7, 'web安全', '北京', 8000, 20000, '2021-11-09', 'Tadm科技公司', '三年+', 'web安全工程师', '致力于维护公司的web安全，保障用户数据的有效性和可靠性，为用户提供更加稳定的服务。');
INSERT INTO `work` VALUES (8, '管理', '广州', 10000, 30000, '2021-11-09', 'Tadm科技公司', '3年+', '项目经理', '提高团队工作效率，为用户提供更加优质的服务及体验！');

SET FOREIGN_KEY_CHECKS = 1;
