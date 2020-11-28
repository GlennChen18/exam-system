/*
 Navicat Premium Data Transfer

 Source Server         : 阿里CentOS_7_64
 Source Server Type    : MySQL
 Source Server Version : 50732
 Source Host           : 47.96.39.146:3306
 Source Schema         : software_need

 Target Server Type    : MySQL
 Target Server Version : 50732
 File Encoding         : 65001

 Date: 28/11/2020 23:08:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for grade
-- ----------------------------
DROP TABLE IF EXISTS `grade`;
CREATE TABLE `grade`  (
  `grade_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `paper` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `score` int(11) NULL DEFAULT NULL,
  `time` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`grade_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of grade
-- ----------------------------
INSERT INTO `grade` VALUES (1, 9, '数学', 0, '2020-10-13 17:05:15');
INSERT INTO `grade` VALUES (2, 9, '数学', 16, '2020-10-13 17:06:49');
INSERT INTO `grade` VALUES (3, 9, '数学', 48, '2020-10-14 09:33:50');
INSERT INTO `grade` VALUES (4, 9, '数学', 16, '2020-10-15 10:58:31');
INSERT INTO `grade` VALUES (5, 1, '数学', 48, '2020-10-19 21:15:01');
INSERT INTO `grade` VALUES (6, 1, '美学', 0, '2020-11-28 16:49:01');

-- ----------------------------
-- Table structure for single
-- ----------------------------
DROP TABLE IF EXISTS `single`;
CREATE TABLE `single`  (
  `single_id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `option_A` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `option_B` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `option_C` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `option_D` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `answer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `paper` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`single_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of single
-- ----------------------------
INSERT INTO `single` VALUES (3, '1+3=？', '1', '2', '3', '4', 'D', '数学');
INSERT INTO `single` VALUES (10, 'He isn\'t good at music （） science.', 'and', 'with', 'but', 'on', 'C', '英语');
INSERT INTO `single` VALUES (11, '999/99.9=？', '10', '100', '1000', '10000', 'A', '数学');
INSERT INTO `single` VALUES (13, '999/99.9=？', '10', '100', '1000', '10000', 'A', '数学');
INSERT INTO `single` VALUES (14, '你妈和我落水你先救谁？', '救妈', '救你', '旁观', '我不会游泳我去找路人求救', 'A', '语文');
INSERT INTO `single` VALUES (15, '请问你是谁？', '我就是我', '你就是你', '我是你', '你是我', 'A', '无道理');
INSERT INTO `single` VALUES (16, 'I (   ) YOU', 'LOVE', 'LIKE', 'ENJOY', 'WANT', 'A', '英语');
INSERT INTO `single` VALUES (17, '下列哪个是唐宋八大家之首？', '李白', '柳宗元', '小马千', '韩愈', 'C', '古文');
INSERT INTO `single` VALUES (18, 'look ___ the world', 'for', 'on', 'at', 'up', 'C', '英语');
INSERT INTO `single` VALUES (19, '盼望着，盼望着，__ __ 来了，春天的脚步近了', '南风', '东风', '西风', '北风', 'B', '语文');
INSERT INTO `single` VALUES (20, '八百里分麾下 ？，五十弦翻塞外。沙场秋点。', '至', '置', '炙', '滞', 'C', '语文');
INSERT INTO `single` VALUES (23, '当x趋于0，sin x的极限是？', '-1', '0', '1', '无穷', 'C', '数学');
INSERT INTO `single` VALUES (24, '我是谁？', '我', '你', '他', '她', 'A', 'xmq');
INSERT INTO `single` VALUES (25, '12*2', '13', '435', '65', '24', 'D', '数学');
INSERT INTO `single` VALUES (26, '小马千最爱的人是？', '周鑫', '谈森森', '范哔哔', '马俊西', 'A', '小马千的爱情');
INSERT INTO `single` VALUES (27, 'uzi最出名的英雄是哪个？', '薇恩', '孙尚香', '鲁班七号', '乌兹', 'A', '历史');
INSERT INTO `single` VALUES (29, 'uzi最出名的英雄是哪个？', '薇恩', '孙尚香', '鲁班七号', '乌兹', 'A', '历史');
INSERT INTO `single` VALUES (30, 'ASCII码可以表示多少种字符？', '127', '128', '255', '256', 'B', '计算机');
INSERT INTO `single` VALUES (31, 'who is your dad', 'you ', 'me', 'he', 'she', 'B', 'English');
INSERT INTO `single` VALUES (33, '“物情今已见”下一句是什么', '从此遇无言', '从此欲无言', '从此于无言', '从此我无言', 'B', '语文');
INSERT INTO `single` VALUES (36, 'CD-ROM的存储容量是多少？', '1GB', '4.7MB', '4.7GB', '650MB', 'D', '计算机');
INSERT INTO `single` VALUES (38, '元嘉草草，封狼居胥，赢得 __ __ 北顾。', '沧皇', '仓惶', '仓皇', '苍黄', 'C', '语文');
INSERT INTO `single` VALUES (39, '人生一世，草木一秋的意思？', '人有一生，草只有一季节', '人生短暂', '人生来的一切皆为注定', '眼界不能拘束', 'B', '语文');
INSERT INTO `single` VALUES (40, '第二代电子计算机使，用的电子器件是', '电子管', '晶体管', '集成电路', '超大规模集成', 'B', '计算机');
INSERT INTO `single` VALUES (41, '“幽人竹桑园，归卧寂无喧”的作者是在哪里写下这首诗', '菲园', '废园', '妃远', '绯红', 'A', '语文');
INSERT INTO `single` VALUES (42, '1+1=', '0', '1', '2', '3', 'C', '数学');
INSERT INTO `single` VALUES (43, '被称为计算机之父的是？', '阿兰图灵', '冯诺依曼', '约翰·阿坦那索夫', '巴贝奇', 'B', '计算机');
INSERT INTO `single` VALUES (44, '打印机的种类有点阵式打印机、喷墨打印机和什么？', '非击打式打印机', '击打式打印机', '光电打印机', '激光打印机', 'C', '计算机');
INSERT INTO `single` VALUES (45, '3、计算机病毒是', '带细菌的磁盘', '已损坏的磁盘', '具有破坏性的特制程序', '被破坏的程序', 'C', '计算机');
INSERT INTO `single` VALUES (46, 'These cars are different （） colors.', 'from', 'in', 'at', 'of', 'A', '英语');
INSERT INTO `single` VALUES (48, '小李老师知道小陈坐在哪里吗？', '倒数第1排', '倒数第2排', '倒数第3排', '倒数第4排', 'A', '小陈宝典');
INSERT INTO `single` VALUES (49, '赛博朋克2077的发行时间是？', '1997', '2020', '2077', '继续跳票', 'B', '历史');
INSERT INTO `single` VALUES (50, '2039谁最帅', '张浩', '况伟', '杨宗琦', '李超', 'D', '美学');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `telephone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` int(11) NULL DEFAULT NULL,
  `role` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'wmz', '123', '王麻子', '90980', '男', 40, '管理员');
INSERT INTO `user` VALUES (3, 'ymb', '1234', '渔民白', '123456', '男', 30, '教师');
INSERT INTO `user` VALUES (9, 'qlm', '123', '千里马', '123', '男', 31, '学生');

SET FOREIGN_KEY_CHECKS = 1;
