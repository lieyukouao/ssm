/*
 Navicat Premium Data Transfer

 Source Server         : bishe
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : localhost:3306
 Source Schema         : bishe

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 04/03/2024 17:31:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_name` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户名称/账号',
  `nick_name` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `email` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `password` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '密码',
  `sex` tinyint NULL DEFAULT NULL COMMENT '性别',
  `avatar` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '头像',
  `status` tinyint NULL DEFAULT NULL COMMENT '状态 0启用 1禁用',
  `introduce` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '个人介绍',
  `ext_json` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '特殊字段',
  `created_by` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `created_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `is_deleted` int NULL DEFAULT 0 COMMENT '是否被删除 0未删除 1已删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '用户信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES (1, 'admin', 'admin', NULL, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- ----------------------------
-- Table structure for basketball_stats
-- ----------------------------
DROP TABLE IF EXISTS `basketball_stats`;
CREATE TABLE `basketball_stats`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `ranks` int NULL DEFAULT NULL COMMENT '排名',
  `team` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '球队',
  `field_goal_percentage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '投篮-命中率',
  `field_goals_made` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '投篮-命中',
  `field_goals_attempted` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '投篮-出手',
  `three_point_percentage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '三分-命中率',
  `three_point_made` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '三分-命中',
  `three_point_attempted` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '三分-出手',
  `free_throw_percentage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '罚球-命中率',
  `free_throws_made` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '罚球-命中',
  `free_throws_attempted` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '罚球-出手',
  `total_rebounds` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '篮板-总篮板',
  `offensive_rebounds` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '篮板-进攻',
  `defensive_rebounds` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '篮板-防守',
  `assists` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '助攻',
  `turnovers` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '失误',
  `steals` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '抢断',
  `blocks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '盖帽',
  `personal_fouls` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '犯规',
  `points` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '得分',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of basketball_stats
-- ----------------------------
INSERT INTO `basketball_stats` VALUES (1, 1, '步行者', '50.5%', '46.8', '92.6', '37.7%', '13.4', '35.7', '77.9%', '16.2', '20.8', '41.0', '10.2', '30.8', '30.8', '12.79', '7.87', '5.77', '21.53', '123.3');
INSERT INTO `basketball_stats` VALUES (2, 2, '雄鹿', '49.3%', '43.8', '88.9', '37.6%', '14.3', '38.0', '77.0%', '19.5', '25.3', '44.3', '9.4', '34.9', '26.6', '12.28', '6.98', '5.16', '19.80', '121.5');
INSERT INTO `basketball_stats` VALUES (3, 3, '凯尔特人', '48.7%', '43.8', '89.9', '38.6%', '16.4', '42.4', '81.2%', '17.4', '21.4', '47.1', '10.5', '36.7', '26.4', '11.72', '6.48', '6.57', '17.00', '121.3');
INSERT INTO `basketball_stats` VALUES (4, 4, '雷霆', '50.1%', '44.9', '89.5', '39.5%', '13.4', '33.9', '83.1%', '18.0', '21.7', '41.6', '8.7', '33.0', '26.9', '11.50', '8.23', '6.77', '19.32', '121.2');
INSERT INTO `basketball_stats` VALUES (5, 5, '老鹰', '46.5%', '43.4', '93.4', '35.9%', '13.5', '37.6', '81.0%', '20.1', '24.8', '45.1', '13.0', '32.1', '26.1', '12.63', '7.43', '4.57', '18.55', '120.4');
INSERT INTO `basketball_stats` VALUES (6, 6, '独行侠', '48.0%', '43.1', '89.9', '37.4%', '15.0', '40.0', '75.7%', '17.5', '23.1', '42.2', '9.8', '32.3', '25.3', '11.95', '6.72', '4.56', '18.64', '118.7');
INSERT INTO `basketball_stats` VALUES (7, 7, '勇士', '47.1%', '43.4', '92.2', '37.6%', '15.0', '40.0', '78.2%', '16.7', '21.4', '46.9', '12.5', '34.5', '29.0', '13.98', '6.72', '4.20', '20.00', '118.6');
INSERT INTO `basketball_stats` VALUES (8, 8, '国王', '48.4%', '44.0', '91.1', '37.1%', '14.6', '39.4', '72.7%', '15.5', '21.4', '43.2', '10.4', '32.8', '28.7', '12.69', '7.29', '4.02', '19.98', '118.2');
INSERT INTO `basketball_stats` VALUES (9, 9, '爵士', '46.9%', '42.5', '90.6', '35.9%', '13.3', '37.1', '82.5%', '19.2', '23.3', '46.3', '12.7', '33.7', '28.3', '15.13', '6.79', '5.82', '19.25', '117.5');
INSERT INTO `basketball_stats` VALUES (10, 10, '快船', '49.2%', '42.9', '87.3', '38.9%', '12.9', '33.2', '81.8%', '18.6', '22.8', '43.0', '10.1', '32.8', '25.9', '12.20', '7.90', '5.02', '18.81', '117.4');
INSERT INTO `basketball_stats` VALUES (11, 11, '太阳', '49.3%', '42.4', '86.0', '37.6%', '12.0', '31.8', '80.6%', '20.4', '25.3', '43.9', '10.1', '33.7', '26.5', '14.21', '7.43', '6.13', '18.41', '117.1');
INSERT INTO `basketball_stats` VALUES (12, 12, '76人', '47.0%', '42.2', '89.8', '35.9%', '11.6', '32.2', '83.2%', '21.2', '25.4', '43.0', '11.1', '31.9', '24.9', '11.17', '8.52', '5.77', '20.82', '117.1');
INSERT INTO `basketball_stats` VALUES (13, 13, '湖人', '49.7%', '43.7', '87.9', '37.1%', '11.4', '30.7', '77.3%', '18.4', '23.8', '42.4', '8.1', '34.3', '28.6', '13.08', '7.68', '5.61', '16.10', '117.1');
INSERT INTO `basketball_stats` VALUES (14, 14, '鹈鹕', '48.8%', '42.9', '88.0', '37.9%', '12.3', '32.3', '76.4%', '18.1', '23.8', '44.4', '10.9', '33.5', '26.9', '12.74', '8.26', '4.87', '19.03', '116.2');
INSERT INTO `basketball_stats` VALUES (15, 15, '奇才', '47.1%', '43.4', '92.0', '35.1%', '12.3', '35.0', '76.3%', '15.6', '20.4', '40.8', '9.4', '31.4', '28.3', '13.52', '7.75', '5.22', '19.87', '114.6');
INSERT INTO `basketball_stats` VALUES (16, 16, '掘金', '49.3%', '43.8', '88.8', '36.8%', '11.5', '31.2', '75.9%', '15.4', '20.3', '44.4', '11.0', '33.4', '29.1', '11.87', '6.97', '5.51', '18.34', '114.5');
INSERT INTO `basketball_stats` VALUES (17, 17, '骑士', '48.1%', '42.4', '88.1', '36.6%', '13.6', '37.1', '76.6%', '16.0', '20.9', '44.7', '10.4', '34.4', '27.7', '12.73', '7.43', '4.95', '18.35', '114.4');
INSERT INTO `basketball_stats` VALUES (18, 18, '猛龙', '47.7%', '43.1', '90.3', '35.6%', '11.8', '33.0', '74.8%', '16.5', '22.1', '43.8', '11.3', '32.5', '29.4', '12.79', '7.57', '4.90', '18.38', '114.4');
INSERT INTO `basketball_stats` VALUES (19, 19, '尼克斯', '46.4%', '41.2', '88.9', '36.8%', '13.1', '35.6', '78.3%', '17.9', '22.8', '45.8', '12.8', '32.9', '23.9', '12.33', '7.28', '3.98', '17.80', '113.4');
INSERT INTO `basketball_stats` VALUES (20, 20, '森林狼', '48.6%', '41.1', '84.6', '38.9%', '12.5', '32.2', '78.6%', '18.5', '23.5', '44.2', '9.3', '35.0', '26.4', '13.90', '7.46', '6.03', '19.26', '113.2');
INSERT INTO `basketball_stats` VALUES (21, 21, '火箭', '45.5%', '41.1', '90.3', '34.8%', '12.2', '35.0', '76.9%', '18.4', '23.9', '46.2', '11.4', '34.8', '24.6', '12.73', '7.52', '4.50', '21.35', '112.8');
INSERT INTO `basketball_stats` VALUES (22, 22, '马刺', '46.2%', '42.1', '91.1', '34.7%', '12.5', '36.1', '78.1%', '15.6', '20.0', '43.3', '10.3', '33.1', '29.8', '14.38', '7.33', '6.23', '17.70', '112.3');
INSERT INTO `basketball_stats` VALUES (23, 23, '篮网', '45.8%', '41.5', '90.5', '36.6%', '13.7', '37.5', '75.8%', '15.5', '20.5', '44.4', '11.6', '32.8', '26.6', '11.90', '6.85', '5.18', '19.25', '112.2');
INSERT INTO `basketball_stats` VALUES (24, 24, '活塞', '47.1%', '41.9', '89.0', '36.0%', '11.3', '31.3', '77.6%', '17.1', '22.1', '43.3', '10.9', '32.4', '26.4', '14.77', '6.18', '4.93', '21.78', '112.1');
INSERT INTO `basketball_stats` VALUES (25, 25, '公牛', '46.3%', '41.6', '89.8', '35.6%', '11.6', '32.6', '79.6%', '16.8', '21.1', '44.0', '11.3', '32.7', '24.6', '11.72', '7.70', '5.05', '19.17', '111.7');
INSERT INTO `basketball_stats` VALUES (26, 26, '魔术', '47.7%', '40.7', '85.4', '35.3%', '10.9', '30.9', '75.3%', '19.1', '25.4', '42.9', '10.9', '32.0', '24.8', '13.98', '8.20', '5.28', '20.82', '111.5');
INSERT INTO `basketball_stats` VALUES (27, 27, '热火', '46.5%', '39.7', '85.5', '37.4%', '12.4', '33.1', '81.9%', '18.8', '23.0', '42.0', '9.6', '32.5', '26.0', '12.23', '7.42', '3.37', '17.93', '110.6');
INSERT INTO `basketball_stats` VALUES (28, 28, '黄蜂', '45.8%', '40.4', '88.3', '35.9%', '12.0', '33.3', '78.4%', '14.7', '18.8', '41.1', '10.0', '31.1', '24.8', '12.98', '6.72', '4.70', '18.72', '107.6');
INSERT INTO `basketball_stats` VALUES (29, 29, '开拓者', '43.9%', '39.3', '89.6', '34.8%', '11.6', '33.2', '79.3%', '17.3', '21.8', '41.9', '12.3', '29.6', '22.7', '14.19', '7.97', '4.56', '20.51', '107.5');
INSERT INTO `basketball_stats` VALUES (30, 30, '灰熊', '43.8%', '38.4', '87.7', '34.7%', '13.4', '38.6', '76.0%', '15.9', '20.9', '41.6', '10.0', '31.7', '24.9', '14.13', '7.89', '6.13', '19.39', '106.1');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `race_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '比赛日期',
  `race_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '比赛时间',
  `visiting_team` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '客队',
  `host_team` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '主队',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 54 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES (1, '03月04日  星期一', '02:00', '76人', '独行侠');
INSERT INTO `course` VALUES (2, '03月04日  星期一', '04:30', '勇士', '凯尔特人');
INSERT INTO `course` VALUES (3, '03月04日  星期一', '04:30', '快船', '森林狼');
INSERT INTO `course` VALUES (4, '03月04日  星期一', '07:00', '活塞', '魔术');
INSERT INTO `course` VALUES (5, '03月04日  星期一', '07:00', '黄蜂', '猛龙');
INSERT INTO `course` VALUES (6, '03月04日  星期一', '08:00', '尼克斯', '骑士');
INSERT INTO `course` VALUES (7, '03月04日  星期一', '08:00', '步行者', '马刺');
INSERT INTO `course` VALUES (8, '03月04日  星期一', '10:30', '雷霆', '太阳');
INSERT INTO `course` VALUES (9, '03月05日  星期二', '08:30', '灰熊', '篮网');
INSERT INTO `course` VALUES (10, '03月05日  星期二', '09:00', '开拓者', '森林狼');
INSERT INTO `course` VALUES (11, '03月05日  星期二', '09:00', '快船', '雄鹿');
INSERT INTO `course` VALUES (12, '03月05日  星期二', '10:00', '奇才', '爵士');
INSERT INTO `course` VALUES (13, '03月05日  星期二', '11:00', '公牛', '国王');
INSERT INTO `course` VALUES (14, '03月05日  星期二', '11:30', '雷霆', '湖人');
INSERT INTO `course` VALUES (15, '03月06日  星期三', '08:00', '魔术', '黄蜂');
INSERT INTO `course` VALUES (16, '03月06日  星期三', '08:30', '76人', '篮网');
INSERT INTO `course` VALUES (17, '03月06日  星期三', '08:30', '鹈鹕', '猛龙');
INSERT INTO `course` VALUES (18, '03月06日  星期三', '08:30', '凯尔特人', '骑士');
INSERT INTO `course` VALUES (19, '03月06日  星期三', '08:30', '活塞', '热火');
INSERT INTO `course` VALUES (20, '03月06日  星期三', '08:30', '老鹰', '尼克斯');
INSERT INTO `course` VALUES (21, '03月06日  星期三', '09:00', '马刺', '火箭');
INSERT INTO `course` VALUES (22, '03月06日  星期三', '09:30', '步行者', '独行侠');
INSERT INTO `course` VALUES (23, '03月06日  星期三', '11:00', '太阳', '掘金');
INSERT INTO `course` VALUES (24, '03月07日  星期四', '08:00', '魔术', '奇才');
INSERT INTO `course` VALUES (25, '03月07日  星期四', '08:30', '灰熊', '76人');
INSERT INTO `course` VALUES (26, '03月07日  星期四', '08:30', '骑士', '老鹰');
INSERT INTO `course` VALUES (27, '03月07日  星期四', '08:30', '快船', '火箭');
INSERT INTO `course` VALUES (28, '03月07日  星期四', '10:00', '公牛', '爵士');
INSERT INTO `course` VALUES (29, '03月07日  星期四', '11:00', '雷霆', '开拓者');
INSERT INTO `course` VALUES (30, '03月07日  星期四', '11:00', '雄鹿', '勇士');
INSERT INTO `course` VALUES (31, '03月07日  星期四', '11:30', '国王', '湖人');
INSERT INTO `course` VALUES (32, '03月08日  星期五', '08:00', '森林狼', '步行者');
INSERT INTO `course` VALUES (33, '03月08日  星期五', '08:00', '篮网', '活塞');
INSERT INTO `course` VALUES (34, '03月08日  星期五', '08:30', '热火', '独行侠');
INSERT INTO `course` VALUES (35, '03月08日  星期五', '10:00', '猛龙', '太阳');
INSERT INTO `course` VALUES (36, '03月08日  星期五', '11:00', '公牛', '勇士');
INSERT INTO `course` VALUES (37, '03月08日  星期五', '11:00', '凯尔特人', '掘金');
INSERT INTO `course` VALUES (38, '03月08日  星期五', '11:00', '马刺', '国王');
INSERT INTO `course` VALUES (39, '03月09日  星期六', '08:00', '鹈鹕', '76人');
INSERT INTO `course` VALUES (40, '03月09日  星期六', '08:00', '黄蜂', '奇才');
INSERT INTO `course` VALUES (41, '03月09日  星期六', '08:30', '森林狼', '骑士');
INSERT INTO `course` VALUES (42, '03月09日  星期六', '08:30', '魔术', '尼克斯');
INSERT INTO `course` VALUES (43, '03月09日  星期六', '09:00', '老鹰', '灰熊');
INSERT INTO `course` VALUES (44, '03月09日  星期六', '09:00', '热火', '雷霆');
INSERT INTO `course` VALUES (45, '03月09日  星期六', '11:00', '火箭', '开拓者');
INSERT INTO `course` VALUES (46, '03月09日  星期六', '11:00', '雄鹿', '湖人');
INSERT INTO `course` VALUES (47, '03月10日  星期日', '05:00', '公牛', '快船');
INSERT INTO `course` VALUES (48, '03月10日  星期日', '08:00', '篮网', '黄蜂');
INSERT INTO `course` VALUES (49, '03月10日  星期日', '08:00', '独行侠', '活塞');
INSERT INTO `course` VALUES (50, '03月10日  星期日', '09:30', '凯尔特人', '太阳');
INSERT INTO `course` VALUES (51, '03月10日  星期日', '09:30', '马刺', '勇士');
INSERT INTO `course` VALUES (52, '03月10日  星期日', '11:00', '猛龙', '开拓者');
INSERT INTO `course` VALUES (53, '03月10日  星期日', '11:00', '爵士', '掘金');

-- ----------------------------
-- Table structure for nba_player
-- ----------------------------
DROP TABLE IF EXISTS `nba_player`;
CREATE TABLE `nba_player`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `ranks` int NULL DEFAULT NULL COMMENT '排名',
  `player` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '球员名称',
  `team` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '球队',
  `score` float NULL DEFAULT NULL COMMENT '得分',
  `hit_shot` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '命中出手',
  `hit_rate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '命中率',
  `hit_three` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '命中-三分',
  `three_rate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '三分命中率',
  `hit_penalty` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '命中-罚球',
  `penalty_rate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '罚球命中率',
  `session` int NULL DEFAULT NULL COMMENT '场次',
  `playing_time` float NULL DEFAULT NULL COMMENT '上场时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of nba_player
-- ----------------------------
INSERT INTO `nba_player` VALUES (1, 1, '卢卡-东契奇', '独行侠', 34.5, '11.70-23.70', '49.6%', '3.90-10.20', '38%', '7.20-9.20', '78.4%', 53, 37.5);
INSERT INTO `nba_player` VALUES (2, 2, '谢伊-吉尔杰斯-亚历山大', '雷霆', 31.2, '11.10-20.20', '54.8%', '1.30-3.40', '38.2%', '7.80-8.90', '88%', 59, 34.5);
INSERT INTO `nba_player` VALUES (3, 3, '扬尼斯-阿德托昆博', '雄鹿', 30.8, '11.50-18.60', '61.9%', '0.50-1.80', '30.1%', '7.30-11.00', '66.1%', 59, 34.9);
INSERT INTO `nba_player` VALUES (4, 4, '多诺万-米切尔', '骑士', 28, '9.70-20.50', '47.2%', '3.40-9.10', '37.1%', '5.30-6.10', '86.1%', 47, 35.7);
INSERT INTO `nba_player` VALUES (5, 5, '凯文-杜兰特', '太阳', 27.8, '10.10-19.10', '52.8%', '2.20-5.20', '42.1%', '5.50-6.40', '85.6%', 54, 37.2);
INSERT INTO `nba_player` VALUES (6, 6, '德文-布克', '太阳', 27.5, '9.60-19.40', '49.4%', '2.20-5.80', '37.9%', '6.10-7.00', '88%', 50, 35.8);
INSERT INTO `nba_player` VALUES (7, 7, '杰伦-布伦森', '尼克斯', 27.2, '9.70-20.20', '47.7%', '2.60-6.50', '40.7%', '5.30-6.20', '84.6%', 57, 35.4);
INSERT INTO `nba_player` VALUES (8, 8, '斯蒂芬-库里', '勇士', 27.1, '8.90-19.80', '45%', '4.90-12.10', '40.7%', '4.40-4.70', '92.2%', 57, 32.9);
INSERT INTO `nba_player` VALUES (9, 8, '杰森-塔特姆', '凯尔特人', 27.1, '9.20-19.20', '47.8%', '3.10-8.40', '36.9%', '5.60-6.80', '82.9%', 57, 35.7);
INSERT INTO `nba_player` VALUES (10, 10, '达龙-福克斯', '国王', 26.9, '9.80-20.70', '47.1%', '2.80-7.70', '36.9%', '4.60-6.40', '70.9%', 51, 35.6);
INSERT INTO `nba_player` VALUES (11, 11, '特雷-杨', '老鹰', 26.4, '8.20-19.20', '42.6%', '3.30-8.90', '37.1%', '6.70-7.80', '85.6%', 51, 36.5);
INSERT INTO `nba_player` VALUES (12, 12, '安东尼-爱德华兹', '森林狼', 26.3, '9.10-19.60', '46.6%', '2.50-6.70', '37.9%', '5.60-6.60', '84.5%', 58, 34.9);
INSERT INTO `nba_player` VALUES (13, 13, '泰雷斯-马克西', '76人', 26, '9.00-20.10', '44.9%', '3.00-8.10', '37.8%', '4.90-5.60', '87.1%', 55, 37.4);
INSERT INTO `nba_player` VALUES (14, 14, '尼古拉-约基奇', '掘金', 25.9, '10.20-17.60', '58.1%', '1.00-3.00', '34.1%', '4.50-5.50', '82%', 59, 34);
INSERT INTO `nba_player` VALUES (15, 15, '勒布朗-詹姆斯', '湖人', 25.3, '9.60-18.20', '52.7%', '2.20-5.40', '40.8%', '3.90-5.30', '73.1%', 54, 35.1);
INSERT INTO `nba_player` VALUES (16, 16, '安东尼-戴维斯', '湖人', 25, '9.60-17.10', '55.8%', '0.30-1.20', '26.4%', '5.50-6.80', '81.3%', 58, 35.8);
INSERT INTO `nba_player` VALUES (17, 17, '达米安-利拉德', '雄鹿', 24.2, '7.30-17.30', '42%', '2.90-8.50', '34.5%', '6.70-7.30', '92.4%', 56, 34.8);
INSERT INTO `nba_player` VALUES (18, 17, '科怀-伦纳德', '快船', 24.2, '9.10-17.30', '52.5%', '2.20-5.10', '43.5%', '3.80-4.30', '89.1%', 54, 34.4);
INSERT INTO `nba_player` VALUES (19, 19, '朱利叶斯-兰德尔', '尼克斯', 24, '8.60-18.20', '47.2%', '1.60-5.30', '31.1%', '5.10-6.60', '78.1%', 46, 35.4);
INSERT INTO `nba_player` VALUES (20, 20, '劳里-马尔卡宁', '爵士', 23.1, '7.80-16.00', '48.3%', '3.20-8.00', '40.1%', '4.30-4.90', '88.8%', 51, 32.9);
INSERT INTO `nba_player` VALUES (21, 21, '保罗-班切罗', '魔术', 22.9, '8.10-17.60', '46.1%', '1.50-4.20', '36%', '5.10-7.20', '70.5%', 59, 34.8);
INSERT INTO `nba_player` VALUES (22, 22, '德马尔-德罗赞', '公牛', 22.7, '7.80-16.60', '46.6%', '0.90-2.80', '33.5%', '6.30-7.30', '85.8%', 58, 37.8);
INSERT INTO `nba_player` VALUES (23, 23, '杰伦-布朗', '凯尔特人', 22.5, '8.70-17.40', '50.2%', '2.00-5.70', '35.2%', '3.00-4.20', '71.9%', 55, 33.2);
INSERT INTO `nba_player` VALUES (24, 24, '小贾伦-杰克逊', '灰熊', 22.4, '7.70-17.30', '44.6%', '1.90-5.70', '32.5%', '5.20-6.30', '81.8%', 54, 31.9);
INSERT INTO `nba_player` VALUES (25, 25, '卡尔-安东尼-唐斯', '森林狼', 22.3, '7.90-15.60', '50.8%', '2.30-5.30', '42.7%', '4.20-4.80', '87.9%', 59, 33);
INSERT INTO `nba_player` VALUES (26, 26, '凯尔-库兹马', '奇才', 22.2, '8.70-18.90', '46.2%', '2.30-6.80', '34.2%', '2.40-3.10', '78.2%', 58, 31.9);
INSERT INTO `nba_player` VALUES (27, 26, '凯德-坎宁安', '活塞', 22.2, '8.30-18.30', '45.3%', '1.90-5.30', '35.6%', '3.70-4.40', '85.8%', 50, 33.8);
INSERT INTO `nba_player` VALUES (28, 28, '蔡恩-威廉森', '鹈鹕', 22.1, '8.70-15.20', '57.5%', '0.10-0.30', '38.5%', '4.60-6.70', '68.5%', 50, 30.6);
INSERT INTO `nba_player` VALUES (29, 29, '保罗-乔治', '快船', 22, '7.70-17.00', '45.4%', '3.20-8.20', '39.1%', '3.30-3.70', '89.9%', 54, 33.8);
INSERT INTO `nba_player` VALUES (30, 30, '布兰登-英格拉姆', '鹈鹕', 21.9, '8.10-16.60', '49.1%', '1.40-4.00', '36.1%', '4.20-5.20', '80.4%', 55, 33.3);
INSERT INTO `nba_player` VALUES (31, 31, '德章泰-默里', '老鹰', 21.6, '8.30-17.80', '46.6%', '2.20-6.20', '35.5%', '2.80-3.40', '81.1%', 57, 35);
INSERT INTO `nba_player` VALUES (32, 32, '迈尔斯-布里奇斯', '黄蜂', 21.4, '8.20-17.70', '46.2%', '2.40-6.60', '37.2%', '2.60-3.00', '84.8%', 50, 37.4);
INSERT INTO `nba_player` VALUES (33, 33, '米卡尔-布里奇斯', '篮网', 21.2, '7.50-16.90', '44.7%', '2.50-7.10', '35.7%', '3.60-4.40', '82.3%', 60, 35.1);
INSERT INTO `nba_player` VALUES (34, 34, '杰拉米-格兰特', '开拓者', 21.1, '7.20-15.90', '45.1%', '2.10-5.20', '40.1%', '4.70-5.80', '81.2%', 52, 33.7);
INSERT INTO `nba_player` VALUES (35, 35, '卡梅伦-托马斯', '篮网', 20.9, '7.50-17.20', '43.7%', '2.00-5.60', '36%', '3.80-4.50', '83.9%', 48, 29.8);
INSERT INTO `nba_player` VALUES (36, 35, '维克托·文班亚马', '马刺', 20.9, '7.60-16.20', '47%', '1.70-5.00', '33.3%', '4.00-4.90', '81.5%', 55, 28.7);
INSERT INTO `nba_player` VALUES (37, 37, '阿尔佩伦-申京', '火箭', 20.8, '8.20-15.30', '53.7%', '0.50-1.80', '28.7%', '3.90-5.50', '70.6%', 59, 32.3);
INSERT INTO `nba_player` VALUES (38, 37, '泰雷斯-哈利伯顿', '步行者', 20.8, '7.50-15.60', '48%', '3.00-7.80', '38.1%', '2.90-3.40', '85%', 49, 32);
INSERT INTO `nba_player` VALUES (39, 39, '贾马尔-默里', '掘金', 20.6, '7.80-16.30', '47.9%', '2.40-5.70', '41.9%', '2.60-3.00', '85.2%', 45, 31.3);
INSERT INTO `nba_player` VALUES (40, 40, '弗朗茨-瓦格纳', '魔术', 20.5, '7.60-15.80', '48.2%', '1.50-4.90', '30.7%', '3.70-4.40', '85%', 53, 33.1);
INSERT INTO `nba_player` VALUES (41, 41, '巴姆-阿德巴约', '热火', 20.4, '7.80-15.10', '51.7%', '0.00-0.20', '8.3%', '4.80-6.20', '77.7%', 50, 34.6);
INSERT INTO `nba_player` VALUES (42, 42, '克里斯塔普斯-波尔津吉斯', '凯尔特人', 20.3, '6.80-12.80', '52.6%', '1.90-5.10', '37.5%', '4.90-5.70', '85.9%', 44, 29.6);
INSERT INTO `nba_player` VALUES (43, 43, '多曼塔斯-萨博尼斯', '国王', 19.9, '8.10-13.10', '61.4%', '0.50-1.10', '42.4%', '3.30-4.80', '68.9%', 59, 35.8);
INSERT INTO `nba_player` VALUES (44, 43, '斯科蒂-巴恩斯', '猛龙', 19.9, '7.50-15.70', '47.5%', '1.70-4.90', '34.1%', '3.30-4.20', '78.1%', 60, 34.9);
INSERT INTO `nba_player` VALUES (45, 45, '杰伦-威廉姆斯', '雷霆', 19.3, '7.60-14.00', '54.4%', '1.50-3.40', '44.5%', '2.60-3.20', '80.8%', 54, 32.1);
INSERT INTO `nba_player` VALUES (46, 45, '科比-怀特', '公牛', 19.3, '6.80-15.20', '44.9%', '2.80-7.30', '38.3%', '2.90-3.40', '83.5%', 60, 36.6);
INSERT INTO `nba_player` VALUES (47, 45, '德文-瓦塞尔', '马刺', 19.3, '7.20-15.30', '46.8%', '2.50-6.70', '37.4%', '2.40-3.10', '79.1%', 56, 32.1);
INSERT INTO `nba_player` VALUES (48, 48, 'CJ-麦科勒姆', '鹈鹕', 18.8, '6.80-14.90', '45.8%', '3.40-8.00', '42.5%', '1.80-2.30', '79.4%', 45, 31.6);
INSERT INTO `nba_player` VALUES (49, 49, '杰伦-格林', '火箭', 18.2, '6.30-15.40', '40.7%', '2.20-6.80', '31.8%', '3.50-4.30', '81.1%', 60, 30.6);
INSERT INTO `nba_player` VALUES (50, 50, '尼古拉-武切维奇', '公牛', 17.9, '7.70-16.20', '47.4%', '1.10-4.20', '27.3%', '1.40-1.60', '83.5%', 55, 34.6);

SET FOREIGN_KEY_CHECKS = 1;
