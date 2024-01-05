/*
 Navicat Premium Data Transfer

 Source Server         : 数据库项目
 Source Server Type    : MySQL
 Source Server Version : 80032
 Source Host           : localhost:3306
 Source Schema         : volunteeradmissionsystem

 Target Server Type    : MySQL
 Target Server Version : 80032
 File Encoding         : 65001

 Date: 18/12/2023 19:52:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for adjustment
-- ----------------------------
DROP TABLE IF EXISTS `adjustment`;
CREATE TABLE `adjustment`  (
  `调剂位次` int NOT NULL AUTO_INCREMENT,
  `考生号` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `姓名` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`调剂位次`) USING BTREE,
  INDEX `考生号`(`考生号` ASC) USING BTREE,
  CONSTRAINT `adjustment_ibfk_1` FOREIGN KEY (`考生号`) REFERENCES `students` (`考生号`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 568 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of adjustment
-- ----------------------------
INSERT INTO `adjustment` VALUES (1, '21441000529752', '张**15');
INSERT INTO `adjustment` VALUES (2, '21441133787703', '乐*15');
INSERT INTO `adjustment` VALUES (3, '21441121167355', '户**10');
INSERT INTO `adjustment` VALUES (4, '21441211015029', '何**16');
INSERT INTO `adjustment` VALUES (5, '21441390324138', '陈**12');
INSERT INTO `adjustment` VALUES (6, '21441771284223', '黄**16');
INSERT INTO `adjustment` VALUES (7, '21441901356642', '谢**18');
INSERT INTO `adjustment` VALUES (8, '21441954998175', '曾**13');
INSERT INTO `adjustment` VALUES (9, '21441097398358', '张**13');
INSERT INTO `adjustment` VALUES (10, '21441109095538', '苏**16');
INSERT INTO `adjustment` VALUES (11, '21441122280069', '周*16');
INSERT INTO `adjustment` VALUES (12, '21441150371420', '梁**18');
INSERT INTO `adjustment` VALUES (13, '21441201321160', '李**14');
INSERT INTO `adjustment` VALUES (14, '21441301405889', '邓**14');
INSERT INTO `adjustment` VALUES (15, '21441353705411', '林**12');
INSERT INTO `adjustment` VALUES (16, '21441393690728', '黄**17');
INSERT INTO `adjustment` VALUES (17, '21441585895528', '彭**14');
INSERT INTO `adjustment` VALUES (18, '21441742074735', '谭**13');
INSERT INTO `adjustment` VALUES (19, '21441769325477', '柯**17');
INSERT INTO `adjustment` VALUES (20, '21441809657614', '蓝*13');
INSERT INTO `adjustment` VALUES (21, '21441038538676', '黄**11');
INSERT INTO `adjustment` VALUES (22, '21441108921191', '陈**10');
INSERT INTO `adjustment` VALUES (23, '21441273033061', '洪**12');
INSERT INTO `adjustment` VALUES (24, '21441421844725', '罗**19');
INSERT INTO `adjustment` VALUES (25, '21441516324160', '黄**14');
INSERT INTO `adjustment` VALUES (26, '21441604305554', '刘*18');
INSERT INTO `adjustment` VALUES (27, '21441619149183', '刘**13');
INSERT INTO `adjustment` VALUES (28, '21441678212237', '许**19');
INSERT INTO `adjustment` VALUES (29, '21441848082291', '张**18');
INSERT INTO `adjustment` VALUES (30, '21441981225440', '田**19');
INSERT INTO `adjustment` VALUES (31, '21441059805352', '钟**18');
INSERT INTO `adjustment` VALUES (32, '21441378558933', '欧**14');
INSERT INTO `adjustment` VALUES (33, '21441564055863', '刘*13');
INSERT INTO `adjustment` VALUES (34, '21441828302854', '冯**11');
INSERT INTO `adjustment` VALUES (35, '21441935469367', '蔡**19');
INSERT INTO `adjustment` VALUES (36, '21441997508100', 'zhangfei');

-- ----------------------------
-- Table structure for admission
-- ----------------------------
DROP TABLE IF EXISTS `admission`;
CREATE TABLE `admission`  (
  `录取位次` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `考生号` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `姓名` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `专业组号` int NULL DEFAULT NULL,
  `专业代号` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `专业名称` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `学院名称` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`录取位次`) USING BTREE,
  INDEX `考生号`(`考生号` ASC) USING BTREE,
  INDEX `专业代号`(`专业代号` ASC) USING BTREE,
  CONSTRAINT `admission_ibfk_1` FOREIGN KEY (`考生号`) REFERENCES `students` (`考生号`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `admission_ibfk_2` FOREIGN KEY (`专业代号`) REFERENCES `major` (`专业代号`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admission
-- ----------------------------
INSERT INTO `admission` VALUES ('1', '21441316909060', '陈**12', 205, '021', '电气工程及其自动化', '自动化学院');
INSERT INTO `admission` VALUES ('10', '21441776130350', '李**14', 205, '012', '机械电子工程', '机电工程学院');
INSERT INTO `admission` VALUES ('100', '21441742369975', '苏**16', 209, '065', '计算机科学与技术', '先进制造学院');
INSERT INTO `admission` VALUES ('101', '21441808843041', '谢**11', 209, '065', '计算机科学与技术', '先进制造学院');
INSERT INTO `admission` VALUES ('102', '21441811234603', '王**17', 205, '021', '电气工程及其自动化', '自动化学院');
INSERT INTO `admission` VALUES ('103', '21441011537819', '江**13', 209, '065', '计算机科学与技术', '先进制造学院');
INSERT INTO `admission` VALUES ('104', '21441051622195', '彭**18', 209, '066', '电子信息工程', '先进制造学院');
INSERT INTO `admission` VALUES ('105', '21441156938323', '侯**14', 209, '065', '计算机科学与技术', '先进制造学院');
INSERT INTO `admission` VALUES ('106', '21441170993001', '杨**14', 209, '065', '计算机科学与技术', '先进制造学院');
INSERT INTO `admission` VALUES ('107', '21441195667188', '冯**16', 209, '065', '计算机科学与技术', '先进制造学院');
INSERT INTO `admission` VALUES ('108', '21441283394775', '陈*19', 209, '065', '计算机科学与技术', '先进制造学院');
INSERT INTO `admission` VALUES ('109', '21441320461294', '詹**18', 209, '065', '计算机科学与技术', '先进制造学院');
INSERT INTO `admission` VALUES ('11', '21441823745135', '邓**15', 208, '060', '计算机科学与技术', '国际教育学院');
INSERT INTO `admission` VALUES ('110', '21441346543548', '吕**16', 205, '021', '电气工程及其自动化', '自动化学院');
INSERT INTO `admission` VALUES ('111', '21441350889203', '李**17', 205, '021', '电气工程及其自动化', '自动化学院');
INSERT INTO `admission` VALUES ('112', '21441370403047', '杜**14', 209, '066', '电子信息工程', '先进制造学院');
INSERT INTO `admission` VALUES ('113', '21441553242906', '黄**16', 209, '065', '计算机科学与技术', '先进制造学院');
INSERT INTO `admission` VALUES ('114', '21441684816087', '杨**18', 209, '065', '计算机科学与技术', '先进制造学院');
INSERT INTO `admission` VALUES ('115', '21441918790639', '黎**11', 205, '021', '电气工程及其自动化', '自动化学院');
INSERT INTO `admission` VALUES ('116', '21441089818430', '钟**15', 209, '065', '计算机科学与技术', '先进制造学院');
INSERT INTO `admission` VALUES ('117', '21441090462875', '何**12', 209, '065', '计算机科学与技术', '先进制造学院');
INSERT INTO `admission` VALUES ('118', '21441109228254', '王*12', 205, '021', '电气工程及其自动化', '自动化学院');
INSERT INTO `admission` VALUES ('119', '21441121292596', '陈**14', 209, '065', '计算机科学与技术', '先进制造学院');
INSERT INTO `admission` VALUES ('12', '21441250926043', '汤**11', 208, '060', '计算机科学与技术', '国际教育学院');
INSERT INTO `admission` VALUES ('120', '21441152219526', '曾**10', 205, '021', '电气工程及其自动化', '自动化学院');
INSERT INTO `admission` VALUES ('121', '21441243057419', '叶**14', 205, '021', '电气工程及其自动化', '自动化学院');
INSERT INTO `admission` VALUES ('122', '21441264405588', '郑**10', 209, '065', '计算机科学与技术', '先进制造学院');
INSERT INTO `admission` VALUES ('123', '21441320074107', '黄**15', 209, '065', '计算机科学与技术', '先进制造学院');
INSERT INTO `admission` VALUES ('124', '21441355234248', '黄**13', 205, '021', '电气工程及其自动化', '自动化学院');
INSERT INTO `admission` VALUES ('125', '21441402930247', '张**18', 209, '065', '计算机科学与技术', '先进制造学院');
INSERT INTO `admission` VALUES ('126', '21441423304891', '刘**19', 209, '065', '计算机科学与技术', '先进制造学院');
INSERT INTO `admission` VALUES ('127', '21441431556155', '邓**17', 209, '065', '计算机科学与技术', '先进制造学院');
INSERT INTO `admission` VALUES ('128', '21441523910163', '苏**13', 209, '065', '计算机科学与技术', '先进制造学院');
INSERT INTO `admission` VALUES ('129', '21441567346760', '过*17', 209, '065', '计算机科学与技术', '先进制造学院');
INSERT INTO `admission` VALUES ('13', '21441184954759', '邓*18', 205, '012', '机械电子工程', '机电工程学院');
INSERT INTO `admission` VALUES ('130', '21441585513441', '吴**14', 209, '065', '计算机科学与技术', '先进制造学院');
INSERT INTO `admission` VALUES ('131', '21441644162315', '梁**18', 205, '021', '电气工程及其自动化', '自动化学院');
INSERT INTO `admission` VALUES ('132', '21441659804908', '汪**18', 209, '065', '计算机科学与技术', '先进制造学院');
INSERT INTO `admission` VALUES ('133', '21441692510447', '林**17', 209, '065', '计算机科学与技术', '先进制造学院');
INSERT INTO `admission` VALUES ('134', '21441833955649', '刘**13', 209, '065', '计算机科学与技术', '先进制造学院');
INSERT INTO `admission` VALUES ('135', '21441861282959', '徐**13', 209, '065', '计算机科学与技术', '先进制造学院');
INSERT INTO `admission` VALUES ('136', '21441865731053', '蔡**11', 209, '065', '计算机科学与技术', '先进制造学院');
INSERT INTO `admission` VALUES ('137', '21441891517502', '张**18', 205, '021', '电气工程及其自动化', '自动化学院');
INSERT INTO `admission` VALUES ('138', '21441908006086', '王**13', 205, '012', '机械电子工程', '机电工程学院');
INSERT INTO `admission` VALUES ('139', '21441002470223', '罗**17', 209, '065', '计算机科学与技术', '先进制造学院');
INSERT INTO `admission` VALUES ('14', '21441925756245', '田**16', 205, '012', '机械电子工程', '机电工程学院');
INSERT INTO `admission` VALUES ('140', '21441081915497', '邱**18', 205, '012', '机械电子工程', '机电工程学院');
INSERT INTO `admission` VALUES ('141', '21441090423922', '王**13', 209, '065', '计算机科学与技术', '先进制造学院');
INSERT INTO `admission` VALUES ('142', '21441122762034', '袁**11', 205, '012', '机械电子工程', '机电工程学院');
INSERT INTO `admission` VALUES ('143', '21441145516064', '林**16', 209, '065', '计算机科学与技术', '先进制造学院');
INSERT INTO `admission` VALUES ('144', '21441175316262', '蔡**15', 209, '066', '电子信息工程', '先进制造学院');
INSERT INTO `admission` VALUES ('145', '21441203518954', '罗**11', 209, '066', '电子信息工程', '先进制造学院');
INSERT INTO `admission` VALUES ('146', '21441218061082', '刘**15', 205, '012', '机械电子工程', '机电工程学院');
INSERT INTO `admission` VALUES ('147', '21441237261440', '欧**18', 201, '004', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('148', '21441279232957', '陆**10', 205, '012', '机械电子工程', '机电工程学院');
INSERT INTO `admission` VALUES ('149', '21441298403450', '高**15', 209, '066', '电子信息工程', '先进制造学院');
INSERT INTO `admission` VALUES ('15', '21441260461541', '陈*16', 208, '060', '计算机科学与技术', '国际教育学院');
INSERT INTO `admission` VALUES ('150', '21441326500027', '陈**17', 205, '021', '电气工程及其自动化', '自动化学院');
INSERT INTO `admission` VALUES ('151', '21441340883884', '周**12', 205, '021', '电气工程及其自动化', '自动化学院');
INSERT INTO `admission` VALUES ('152', '21441351920646', '梁**12', 209, '066', '电子信息工程', '先进制造学院');
INSERT INTO `admission` VALUES ('153', '21441412567699', '林**18', 205, '021', '电气工程及其自动化', '自动化学院');
INSERT INTO `admission` VALUES ('154', '21441417417256', '张**11', 209, '066', '电子信息工程', '先进制造学院');
INSERT INTO `admission` VALUES ('155', '21441445454071', '邹**19', 209, '066', '电子信息工程', '先进制造学院');
INSERT INTO `admission` VALUES ('156', '21441459767937', '李**12', 205, '021', '电气工程及其自动化', '自动化学院');
INSERT INTO `admission` VALUES ('157', '21441464266922', '覃**18', 205, '021', '电气工程及其自动化', '自动化学院');
INSERT INTO `admission` VALUES ('158', '21441485217631', '曾**19', 205, '014', '化学工程与工艺', '轻工化工学院');
INSERT INTO `admission` VALUES ('159', '21441486933661', '丘**18', 209, '066', '电子信息工程', '先进制造学院');
INSERT INTO `admission` VALUES ('16', '21441527645545', '叶*17', 208, '060', '计算机科学与技术', '国际教育学院');
INSERT INTO `admission` VALUES ('160', '21441487945890', '王**16', 205, '012', '机械电子工程', '机电工程学院');
INSERT INTO `admission` VALUES ('161', '21441523933860', '袁**11', 209, '063', '机械电子工程', '先进制造学院');
INSERT INTO `admission` VALUES ('162', '21441535232051', '钟**12', 205, '021', '电气工程及其自动化', '自动化学院');
INSERT INTO `admission` VALUES ('163', '21441573381081', '张**12', 209, '066', '电子信息工程', '先进制造学院');
INSERT INTO `admission` VALUES ('164', '21441613422742', '杨**13', 209, '066', '电子信息工程', '先进制造学院');
INSERT INTO `admission` VALUES ('165', '21441677073029', '林**11', 205, '021', '电气工程及其自动化', '自动化学院');
INSERT INTO `admission` VALUES ('166', '21441714929999', '谭**18', 209, '066', '电子信息工程', '先进制造学院');
INSERT INTO `admission` VALUES ('167', '21441721060520', '温*16', 209, '063', '机械电子工程', '先进制造学院');
INSERT INTO `admission` VALUES ('168', '21441748332690', '邓**15', 209, '066', '电子信息工程', '先进制造学院');
INSERT INTO `admission` VALUES ('169', '21441787193164', '谢**12', 209, '066', '电子信息工程', '先进制造学院');
INSERT INTO `admission` VALUES ('17', '21441773401164', '陈**16', 208, '060', '计算机科学与技术', '国际教育学院');
INSERT INTO `admission` VALUES ('170', '21441840684529', '陈**11', 209, '063', '机械电子工程', '先进制造学院');
INSERT INTO `admission` VALUES ('171', '21441849057936', '杜**16', 209, '063', '机械电子工程', '先进制造学院');
INSERT INTO `admission` VALUES ('172', '21441853157552', '冯**18', 205, '021', '电气工程及其自动化', '自动化学院');
INSERT INTO `admission` VALUES ('173', '21441890591133', '谌**13', 205, '021', '电气工程及其自动化', '自动化学院');
INSERT INTO `admission` VALUES ('174', '21441897823588', '徐*16', 209, '063', '机械电子工程', '先进制造学院');
INSERT INTO `admission` VALUES ('175', '21441899222022', '陈**16', 205, '021', '电气工程及其自动化', '自动化学院');
INSERT INTO `admission` VALUES ('176', '21441959659414', '段**19', 209, '066', '电子信息工程', '先进制造学院');
INSERT INTO `admission` VALUES ('177', '21441017777962', '覃*13', 209, '063', '机械电子工程', '先进制造学院');
INSERT INTO `admission` VALUES ('178', '21441081403410', '许**18', 209, '063', '机械电子工程', '先进制造学院');
INSERT INTO `admission` VALUES ('179', '21441093219322', '徐**13', 209, '066', '电子信息工程', '先进制造学院');
INSERT INTO `admission` VALUES ('18', '21441728212634', '梁**18', 208, '060', '计算机科学与技术', '国际教育学院');
INSERT INTO `admission` VALUES ('180', '21441161150659', '陈**18', 209, '066', '电子信息工程', '先进制造学院');
INSERT INTO `admission` VALUES ('181', '21441231649198', '陈**15', 209, '066', '电子信息工程', '先进制造学院');
INSERT INTO `admission` VALUES ('182', '21441242466405', '陈**17', 201, '004', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('183', '21441255209655', '陈**18', 209, '066', '电子信息工程', '先进制造学院');
INSERT INTO `admission` VALUES ('184', '21441332563174', '林*19', 209, '066', '电子信息工程', '先进制造学院');
INSERT INTO `admission` VALUES ('185', '21441355787554', '蔡**17', 205, '021', '电气工程及其自动化', '自动化学院');
INSERT INTO `admission` VALUES ('186', '21441387494020', '周**12', 205, '021', '电气工程及其自动化', '自动化学院');
INSERT INTO `admission` VALUES ('187', '21441388225510', '王**11', 205, '021', '电气工程及其自动化', '自动化学院');
INSERT INTO `admission` VALUES ('188', '21441391231892', '陈**16', 209, '066', '电子信息工程', '先进制造学院');
INSERT INTO `admission` VALUES ('189', '21441418198329', '黎**17', 209, '063', '机械电子工程', '先进制造学院');
INSERT INTO `admission` VALUES ('19', '21441608617531', '陈**14', 209, '066', '电子信息工程', '先进制造学院');
INSERT INTO `admission` VALUES ('190', '21441439930634', '林**12', 205, '021', '电气工程及其自动化', '自动化学院');
INSERT INTO `admission` VALUES ('191', '21441484383235', '杨**16', 209, '063', '机械电子工程', '先进制造学院');
INSERT INTO `admission` VALUES ('192', '21441503936787', '叶**11', 209, '063', '机械电子工程', '先进制造学院');
INSERT INTO `admission` VALUES ('193', '21441507879253', '朱**15', 209, '066', '电子信息工程', '先进制造学院');
INSERT INTO `admission` VALUES ('194', '21441514440794', '梁**17', 205, '021', '电气工程及其自动化', '自动化学院');
INSERT INTO `admission` VALUES ('195', '21441603026046', '何**11', 209, '063', '机械电子工程', '先进制造学院');
INSERT INTO `admission` VALUES ('196', '21441652357988', '钟**12', 205, '021', '电气工程及其自动化', '自动化学院');
INSERT INTO `admission` VALUES ('197', '21441674213706', '古**13', 209, '063', '机械电子工程', '先进制造学院');
INSERT INTO `admission` VALUES ('198', '21441704163535', '彭**13', 209, '063', '机械电子工程', '先进制造学院');
INSERT INTO `admission` VALUES ('199', '21441730371019', '叶**18', 209, '063', '机械电子工程', '先进制造学院');
INSERT INTO `admission` VALUES ('2', '21441433736546', '曾**12', 205, '021', '电气工程及其自动化', '自动化学院');
INSERT INTO `admission` VALUES ('20', '21441338723875', '彭*11', 208, '060', '计算机科学与技术', '国际教育学院');
INSERT INTO `admission` VALUES ('200', '21441741004833', '黄**18', 209, '066', '电子信息工程', '先进制造学院');
INSERT INTO `admission` VALUES ('201', '21441751887570', '颜**15', 209, '066', '电子信息工程', '先进制造学院');
INSERT INTO `admission` VALUES ('202', '21441794860596', '陈**16', 205, '021', '电气工程及其自动化', '自动化学院');
INSERT INTO `admission` VALUES ('203', '21441808933977', '童**18', 205, '021', '电气工程及其自动化', '自动化学院');
INSERT INTO `admission` VALUES ('204', '21441818050752', '邱**12', 209, '063', '机械电子工程', '先进制造学院');
INSERT INTO `admission` VALUES ('205', '21441849311046', '相*18', 209, '066', '电子信息工程', '先进制造学院');
INSERT INTO `admission` VALUES ('206', '21441887146846', '霍**17', 205, '021', '电气工程及其自动化', '自动化学院');
INSERT INTO `admission` VALUES ('207', '21441900408074', '黄**12', 205, '021', '电气工程及其自动化', '自动化学院');
INSERT INTO `admission` VALUES ('208', '21441902941144', '刘**11', 209, '066', '电子信息工程', '先进制造学院');
INSERT INTO `admission` VALUES ('209', '21441964026796', '梁**14', 209, '063', '机械电子工程', '先进制造学院');
INSERT INTO `admission` VALUES ('21', '21441685588889', '洪**18', 205, '021', '电气工程及其自动化', '自动化学院');
INSERT INTO `admission` VALUES ('210', '21441964768779', '陈**13', 201, '004', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('211', '21441997508122', '滕*18', 209, '066', '电子信息工程', '先进制造学院');
INSERT INTO `admission` VALUES ('212', '21441998327053', '王**14', 209, '063', '机械电子工程', '先进制造学院');
INSERT INTO `admission` VALUES ('213', '21441002185822', '翟**14', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('214', '21441040115162', '谢**16', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('215', '21441043195821', '谭**14', 209, '066', '电子信息工程', '先进制造学院');
INSERT INTO `admission` VALUES ('216', '21441056497195', '任**17', 205, '014', '化学工程与工艺', '轻工化工学院');
INSERT INTO `admission` VALUES ('217', '21441088418744', '廖**10', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('218', '21441104503744', '张**14', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('219', '21441118237758', '杨**19', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('22', '21441829585395', '孔**18', 205, '021', '电气工程及其自动化', '自动化学院');
INSERT INTO `admission` VALUES ('220', '21441136254673', '叶**18', 209, '066', '电子信息工程', '先进制造学院');
INSERT INTO `admission` VALUES ('221', '21441141390787', '李*19', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('222', '21441164246471', '蔡**16', 201, '004', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('223', '21441173990522', '彭**12', 209, '063', '机械电子工程', '先进制造学院');
INSERT INTO `admission` VALUES ('224', '21441211138761', '周**18', 209, '066', '电子信息工程', '先进制造学院');
INSERT INTO `admission` VALUES ('225', '21441216228462', '黄*15', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('226', '21441222658639', '赖**15', 209, '066', '电子信息工程', '先进制造学院');
INSERT INTO `admission` VALUES ('227', '21441265153945', '文**10', 209, '063', '机械电子工程', '先进制造学院');
INSERT INTO `admission` VALUES ('228', '21441277701253', '夏**11', 209, '063', '机械电子工程', '先进制造学院');
INSERT INTO `admission` VALUES ('229', '21441288855899', '蓝**13', 209, '066', '电子信息工程', '先进制造学院');
INSERT INTO `admission` VALUES ('23', '21441015949219', '姜*18', 205, '021', '电气工程及其自动化', '自动化学院');
INSERT INTO `admission` VALUES ('230', '21441376676151', '金**16', 209, '066', '电子信息工程', '先进制造学院');
INSERT INTO `admission` VALUES ('231', '21441380397332', '陈**16', 209, '066', '电子信息工程', '先进制造学院');
INSERT INTO `admission` VALUES ('232', '21441416342179', '陈**10', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('233', '21441416679450', '马**17', 209, '066', '电子信息工程', '先进制造学院');
INSERT INTO `admission` VALUES ('234', '21441418254352', '罗**14', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('235', '21441441418116', '龚**19', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('236', '21441441862929', '陈*17', 209, '063', '机械电子工程', '先进制造学院');
INSERT INTO `admission` VALUES ('237', '21441454479459', '何**17', 201, '004', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('238', '21441471976741', '温*15', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('239', '21441471977864', '苏**15', 209, '063', '机械电子工程', '先进制造学院');
INSERT INTO `admission` VALUES ('24', '21441075724745', '于**14', 205, '012', '机械电子工程', '机电工程学院');
INSERT INTO `admission` VALUES ('240', '21441477029686', '杜**18', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('241', '21441479911779', '黄**15', 209, '066', '电子信息工程', '先进制造学院');
INSERT INTO `admission` VALUES ('242', '21441519244266', '唐**18', 209, '066', '电子信息工程', '先进制造学院');
INSERT INTO `admission` VALUES ('243', '21441543665001', '何*17', 209, '066', '电子信息工程', '先进制造学院');
INSERT INTO `admission` VALUES ('244', '21441555904421', '谢**17', 209, '066', '电子信息工程', '先进制造学院');
INSERT INTO `admission` VALUES ('245', '21441568716660', '戴**18', 209, '066', '电子信息工程', '先进制造学院');
INSERT INTO `admission` VALUES ('246', '21441573181421', '王**14', 209, '066', '电子信息工程', '先进制造学院');
INSERT INTO `admission` VALUES ('247', '21441579944296', '张*18', 209, '063', '机械电子工程', '先进制造学院');
INSERT INTO `admission` VALUES ('248', '21441584694856', '陈**16', 209, '066', '电子信息工程', '先进制造学院');
INSERT INTO `admission` VALUES ('249', '21441592739354', '郭**11', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('25', '21441421729661', '李**10', 209, '066', '电子信息工程', '先进制造学院');
INSERT INTO `admission` VALUES ('250', '21441598605899', '操**11', 209, '066', '电子信息工程', '先进制造学院');
INSERT INTO `admission` VALUES ('251', '21441604102252', '李**11', 209, '066', '电子信息工程', '先进制造学院');
INSERT INTO `admission` VALUES ('252', '21441617931812', '赖**17', 209, '063', '机械电子工程', '先进制造学院');
INSERT INTO `admission` VALUES ('253', '21441619089553', '赖**10', 209, '063', '机械电子工程', '先进制造学院');
INSERT INTO `admission` VALUES ('254', '21441624260528', '陆**17', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('255', '21441640142997', '李**11', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('256', '21441665155383', '梁**16', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('257', '21441666874873', '王*13', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('258', '21441682851334', '罗**15', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('259', '21441686197563', '谢**10', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('26', '21441597399005', '张**16', 205, '021', '电气工程及其自动化', '自动化学院');
INSERT INTO `admission` VALUES ('260', '21441689399402', '张**17', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('261', '21441722133328', '黄**19', 209, '066', '电子信息工程', '先进制造学院');
INSERT INTO `admission` VALUES ('262', '21441734898449', '魏*11', 209, '063', '机械电子工程', '先进制造学院');
INSERT INTO `admission` VALUES ('263', '21441743386347', '李**13', 209, '063', '机械电子工程', '先进制造学院');
INSERT INTO `admission` VALUES ('264', '21441743840948', '林**18', 209, '066', '电子信息工程', '先进制造学院');
INSERT INTO `admission` VALUES ('265', '21441771218218', '殷**19', 209, '066', '电子信息工程', '先进制造学院');
INSERT INTO `admission` VALUES ('266', '21441809178037', '黎**18', 209, '063', '机械电子工程', '先进制造学院');
INSERT INTO `admission` VALUES ('267', '21441851618431', '冯**16', 209, '066', '电子信息工程', '先进制造学院');
INSERT INTO `admission` VALUES ('268', '21441895348361', '吴**12', 209, '066', '电子信息工程', '先进制造学院');
INSERT INTO `admission` VALUES ('269', '21441898386477', '李**16', 209, '063', '机械电子工程', '先进制造学院');
INSERT INTO `admission` VALUES ('27', '21441195784917', '黎**18', 208, '060', '计算机科学与技术', '国际教育学院');
INSERT INTO `admission` VALUES ('270', '21441919700586', '王*15', 209, '063', '机械电子工程', '先进制造学院');
INSERT INTO `admission` VALUES ('271', '21441956148597', '吴**11', 201, '004', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('272', '21441958839587', '范**17', 209, '066', '电子信息工程', '先进制造学院');
INSERT INTO `admission` VALUES ('273', '21441959161733', '曾**11', 209, '063', '机械电子工程', '先进制造学院');
INSERT INTO `admission` VALUES ('274', '21441005514956', '黄**14', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('275', '21441045850215', '冯**13', 209, '066', '电子信息工程', '先进制造学院');
INSERT INTO `admission` VALUES ('276', '21441057352312', '林**11', 209, '063', '机械电子工程', '先进制造学院');
INSERT INTO `admission` VALUES ('277', '21441071089997', '刘**18', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('278', '21441092097386', '何**19', 209, '063', '机械电子工程', '先进制造学院');
INSERT INTO `admission` VALUES ('279', '21441111431903', '杨**18', 209, '063', '机械电子工程', '先进制造学院');
INSERT INTO `admission` VALUES ('28', '21441307428340', '杨**17', 208, '060', '计算机科学与技术', '国际教育学院');
INSERT INTO `admission` VALUES ('280', '21441120376856', '邵**19', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('281', '21441123101036', '张**13', 209, '066', '电子信息工程', '先进制造学院');
INSERT INTO `admission` VALUES ('282', '21441126888912', '唐**15', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('283', '21441133622885', '张**17', 209, '066', '电子信息工程', '先进制造学院');
INSERT INTO `admission` VALUES ('284', '21441153752814', '许**19', 209, '063', '机械电子工程', '先进制造学院');
INSERT INTO `admission` VALUES ('285', '21441169476843', '周*13', 209, '066', '电子信息工程', '先进制造学院');
INSERT INTO `admission` VALUES ('286', '21441176502269', '黎**19', 209, '063', '机械电子工程', '先进制造学院');
INSERT INTO `admission` VALUES ('287', '21441241802737', '杨**12', 209, '063', '机械电子工程', '先进制造学院');
INSERT INTO `admission` VALUES ('288', '21441257435787', '周**14', 209, '063', '机械电子工程', '先进制造学院');
INSERT INTO `admission` VALUES ('289', '21441261874402', '陈**16', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('29', '21441391649876', '李**19', 208, '060', '计算机科学与技术', '国际教育学院');
INSERT INTO `admission` VALUES ('290', '21441269033521', '周*12', 209, '066', '电子信息工程', '先进制造学院');
INSERT INTO `admission` VALUES ('291', '21441288499188', '蔡**17', 209, '066', '电子信息工程', '先进制造学院');
INSERT INTO `admission` VALUES ('292', '21441308634069', '文**18', 209, '066', '电子信息工程', '先进制造学院');
INSERT INTO `admission` VALUES ('293', '21441327439192', '叶**11', 209, '066', '电子信息工程', '先进制造学院');
INSERT INTO `admission` VALUES ('294', '21441407880751', '吕*18', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('295', '21441455124868', '钟**13', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('296', '21441544755460', '彭**17', 209, '066', '电子信息工程', '先进制造学院');
INSERT INTO `admission` VALUES ('297', '21441571172554', '韦**14', 201, '004', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('298', '21441590525924', '陈**13', 209, '063', '机械电子工程', '先进制造学院');
INSERT INTO `admission` VALUES ('299', '21441648026273', '蓝*13', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('3', '21441401832539', '孙**16', 208, '060', '计算机科学与技术', '国际教育学院');
INSERT INTO `admission` VALUES ('30', '21441751601668', '黄**15', 208, '060', '计算机科学与技术', '国际教育学院');
INSERT INTO `admission` VALUES ('300', '21441696393190', '朱**12', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('301', '21441700820890', '陈*19', 209, '063', '机械电子工程', '先进制造学院');
INSERT INTO `admission` VALUES ('302', '21441733771113', '廖*15', 209, '066', '电子信息工程', '先进制造学院');
INSERT INTO `admission` VALUES ('303', '21441738992668', '黎**16', 205, '014', '化学工程与工艺', '轻工化工学院');
INSERT INTO `admission` VALUES ('304', '21441750431826', '林**18', 209, '066', '电子信息工程', '先进制造学院');
INSERT INTO `admission` VALUES ('305', '21441767822789', '余**12', 201, '004', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('306', '21441808093448', '王*19', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('307', '21441813331634', '黄*14', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('308', '21441849014426', '尹**18', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('309', '21441849942213', '罗**12', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('31', '21441081750646', '周**12', 208, '060', '计算机科学与技术', '国际教育学院');
INSERT INTO `admission` VALUES ('310', '21441851383317', '涂**14', 209, '066', '电子信息工程', '先进制造学院');
INSERT INTO `admission` VALUES ('311', '21441877948339', '叶**17', 201, '004', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('312', '21441910172412', '钱**11', 209, '066', '电子信息工程', '先进制造学院');
INSERT INTO `admission` VALUES ('313', '21441945814806', '陈**15', 205, '014', '化学工程与工艺', '轻工化工学院');
INSERT INTO `admission` VALUES ('314', '21441953807021', '麦**15', 209, '066', '电子信息工程', '先进制造学院');
INSERT INTO `admission` VALUES ('315', '21441959905639', '徐**18', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('316', '21441961913124', '李**15', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('317', '21441995916602', '谢**17', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('318', '21441007168944', '李**15', 209, '066', '电子信息工程', '先进制造学院');
INSERT INTO `admission` VALUES ('319', '21441012681460', '王**15', 209, '066', '电子信息工程', '先进制造学院');
INSERT INTO `admission` VALUES ('32', '21441198451686', '梁**12', 205, '021', '电气工程及其自动化', '自动化学院');
INSERT INTO `admission` VALUES ('320', '21441014898096', '何**15', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('321', '21441088028640', '肖**13', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('322', '21441096130530', '李**12', 205, '014', '化学工程与工艺', '轻工化工学院');
INSERT INTO `admission` VALUES ('323', '21441099434484', '钟**19', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('324', '21441102877594', '钟**13', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('325', '21441121138226', '杨**12', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('326', '21441139106573', '陈**10', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('327', '21441140699210', '林**14', 201, '004', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('328', '21441143566410', '黄**17', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('329', '21441183811216', '黄**16', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('33', '21441296803940', '江**11', 205, '021', '电气工程及其自动化', '自动化学院');
INSERT INTO `admission` VALUES ('330', '21441193943907', '黄**18', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('331', '21441252375597', '李**18', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('332', '21441256506307', '袁**17', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('333', '21441287544475', '罗**18', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('334', '21441352612591', '张**14', 201, '004', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('335', '21441353105752', '王**18', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('336', '21441372694939', '夏**11', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('337', '21441377034260', '童**15', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('338', '21441398469645', '欧**10', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('339', '21441412584130', '黄**15', 201, '004', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('34', '21441236218063', '傅**17', 208, '060', '计算机科学与技术', '国际教育学院');
INSERT INTO `admission` VALUES ('340', '21441426874553', '蔡*11', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('341', '21441440551218', '林**15', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('342', '21441454305321', '罗**12', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('343', '21441476989171', '曾**16', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('344', '21441488843300', '梁**13', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('345', '21441489781435', '潘**19', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('346', '21441490002644', '许**17', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('347', '21441501727593', '吴**18', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('348', '21441505448858', '赵**11', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('349', '21441506892564', '黄**19', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('35', '21441289633910', '邓**14', 208, '060', '计算机科学与技术', '国际教育学院');
INSERT INTO `admission` VALUES ('350', '21441537048101', '乔*10', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('351', '21441582216481', '郭**14', 201, '004', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('352', '21441631110168', '杨**10', 201, '004', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('353', '21441649438435', '陈**13', 201, '004', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('354', '21441654135875', '黄**15', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('355', '21441681864897', '张**10', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('356', '21441702232027', '王*10', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('357', '21441713117112', '许**13', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('358', '21441743729617', '李*16', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('359', '21441782009800', '杨**13', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('36', '21441468764797', '陈**17', 205, '021', '电气工程及其自动化', '自动化学院');
INSERT INTO `admission` VALUES ('360', '21441796588825', '梁**15', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('361', '21441798162870', '周**17', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('362', '21441819882121', '郑**18', 208, '059', '电气工程及其自动化', '国际教育学院');
INSERT INTO `admission` VALUES ('363', '21441837917254', '黄**11', 209, '064', '电气工程及其自动化', '先进制造学院');
INSERT INTO `admission` VALUES ('364', '21441845158944', '程**13', 209, '064', '电气工程及其自动化', '先进制造学院');
INSERT INTO `admission` VALUES ('365', '21441872401895', '蒋**13', 209, '064', '电气工程及其自动化', '先进制造学院');
INSERT INTO `admission` VALUES ('366', '21441890898008', '施*10', 209, '064', '电气工程及其自动化', '先进制造学院');
INSERT INTO `admission` VALUES ('367', '21441942843587', '陆**17', 201, '004', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('368', '21441961031034', '陈**18', 209, '064', '电气工程及其自动化', '先进制造学院');
INSERT INTO `admission` VALUES ('369', '21441975014255', '欧**10', 209, '064', '电气工程及其自动化', '先进制造学院');
INSERT INTO `admission` VALUES ('37', '21441491239323', '陈*12', 208, '060', '计算机科学与技术', '国际教育学院');
INSERT INTO `admission` VALUES ('370', '21441977906234', '刘*17', 209, '064', '电气工程及其自动化', '先进制造学院');
INSERT INTO `admission` VALUES ('371', '21441984497372', '李**15', 209, '064', '电气工程及其自动化', '先进制造学院');
INSERT INTO `admission` VALUES ('372', '21441029824849', '袁*10', 209, '064', '电气工程及其自动化', '先进制造学院');
INSERT INTO `admission` VALUES ('373', '21441048839347', '叶**15', 201, '004', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('374', '21441070911303', '夏**18', 209, '064', '电气工程及其自动化', '先进制造学院');
INSERT INTO `admission` VALUES ('375', '21441085653335', '刘**14', 209, '064', '电气工程及其自动化', '先进制造学院');
INSERT INTO `admission` VALUES ('376', '21441128226862', '赵**15', 209, '064', '电气工程及其自动化', '先进制造学院');
INSERT INTO `admission` VALUES ('377', '21441154305049', '吴**12', 209, '064', '电气工程及其自动化', '先进制造学院');
INSERT INTO `admission` VALUES ('378', '21441160109786', '黎**12', 209, '064', '电气工程及其自动化', '先进制造学院');
INSERT INTO `admission` VALUES ('379', '21441167681949', '周**12', 209, '064', '电气工程及其自动化', '先进制造学院');
INSERT INTO `admission` VALUES ('38', '21441609176359', '杨*17', 208, '060', '计算机科学与技术', '国际教育学院');
INSERT INTO `admission` VALUES ('380', '21441184040346', '何**11', 209, '064', '电气工程及其自动化', '先进制造学院');
INSERT INTO `admission` VALUES ('381', '21441225106621', '徐**14', 209, '064', '电气工程及其自动化', '先进制造学院');
INSERT INTO `admission` VALUES ('382', '21441327496787', '张**13', 209, '064', '电气工程及其自动化', '先进制造学院');
INSERT INTO `admission` VALUES ('383', '21441333686616', '毛**12', 209, '064', '电气工程及其自动化', '先进制造学院');
INSERT INTO `admission` VALUES ('384', '21441335656778', '梁**12', 209, '064', '电气工程及其自动化', '先进制造学院');
INSERT INTO `admission` VALUES ('385', '21441364581642', '刘*18', 209, '064', '电气工程及其自动化', '先进制造学院');
INSERT INTO `admission` VALUES ('386', '21441373909209', '林**16', 209, '064', '电气工程及其自动化', '先进制造学院');
INSERT INTO `admission` VALUES ('387', '21441399591925', '宋*16', 209, '064', '电气工程及其自动化', '先进制造学院');
INSERT INTO `admission` VALUES ('388', '21441434072334', '谢**11', 209, '064', '电气工程及其自动化', '先进制造学院');
INSERT INTO `admission` VALUES ('389', '21441439005085', '柯**14', 209, '064', '电气工程及其自动化', '先进制造学院');
INSERT INTO `admission` VALUES ('39', '21441712219612', '彭**11', 208, '060', '计算机科学与技术', '国际教育学院');
INSERT INTO `admission` VALUES ('390', '21441455884959', '张**12', 209, '064', '电气工程及其自动化', '先进制造学院');
INSERT INTO `admission` VALUES ('391', '21441465003386', '乐**16', 209, '064', '电气工程及其自动化', '先进制造学院');
INSERT INTO `admission` VALUES ('392', '21441523170663', '黄**17', 201, '004', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('393', '21441534661664', '潘**13', 205, '014', '化学工程与工艺', '轻工化工学院');
INSERT INTO `admission` VALUES ('394', '21441536049474', '张**18', 209, '064', '电气工程及其自动化', '先进制造学院');
INSERT INTO `admission` VALUES ('395', '21441544846159', '陈**15', 209, '064', '电气工程及其自动化', '先进制造学院');
INSERT INTO `admission` VALUES ('396', '21441565622191', '肖**13', 209, '064', '电气工程及其自动化', '先进制造学院');
INSERT INTO `admission` VALUES ('397', '21441575464937', '冯**15', 205, '014', '化学工程与工艺', '轻工化工学院');
INSERT INTO `admission` VALUES ('398', '21441608233033', '邓**19', 205, '014', '化学工程与工艺', '轻工化工学院');
INSERT INTO `admission` VALUES ('399', '21441612311910', '马*18', 205, '014', '化学工程与工艺', '轻工化工学院');
INSERT INTO `admission` VALUES ('4', '21441025554622', '黄**12', 205, '012', '机械电子工程', '机电工程学院');
INSERT INTO `admission` VALUES ('40', '21441895045776', '黎**10', 208, '060', '计算机科学与技术', '国际教育学院');
INSERT INTO `admission` VALUES ('400', '21441650553895', '杨*12', 205, '014', '化学工程与工艺', '轻工化工学院');
INSERT INTO `admission` VALUES ('401', '21441683660635', '黄**16', 205, '014', '化学工程与工艺', '轻工化工学院');
INSERT INTO `admission` VALUES ('402', '21441702467284', '梁**15', 205, '014', '化学工程与工艺', '轻工化工学院');
INSERT INTO `admission` VALUES ('403', '21441716602360', '宋**18', 201, '004', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('404', '21441717572470', '刘**18', 205, '014', '化学工程与工艺', '轻工化工学院');
INSERT INTO `admission` VALUES ('405', '21441721489127', '黄**11', 205, '014', '化学工程与工艺', '轻工化工学院');
INSERT INTO `admission` VALUES ('406', '21441725900188', '韦*18', 205, '014', '化学工程与工艺', '轻工化工学院');
INSERT INTO `admission` VALUES ('407', '21441726268783', '杨**18', 205, '014', '化学工程与工艺', '轻工化工学院');
INSERT INTO `admission` VALUES ('408', '21441740756615', '王**12', 205, '014', '化学工程与工艺', '轻工化工学院');
INSERT INTO `admission` VALUES ('409', '21441752421027', '林**17', 205, '014', '化学工程与工艺', '轻工化工学院');
INSERT INTO `admission` VALUES ('41', '21441007853495', '郑**18', 208, '060', '计算机科学与技术', '国际教育学院');
INSERT INTO `admission` VALUES ('410', '21441755834971', '张**13', 201, '004', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('411', '21441816938385', '李*17', 205, '014', '化学工程与工艺', '轻工化工学院');
INSERT INTO `admission` VALUES ('412', '21441832251159', '彭*13', 205, '014', '化学工程与工艺', '轻工化工学院');
INSERT INTO `admission` VALUES ('413', '21441847565231', '郭*18', 209, '067', '化学工程与工艺', '先进制造学院');
INSERT INTO `admission` VALUES ('414', '21441852923859', '赖**15', 201, '004', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('415', '21441887424968', '杨*12', 209, '067', '化学工程与工艺', '先进制造学院');
INSERT INTO `admission` VALUES ('416', '21441896060270', '黄**14', 209, '067', '化学工程与工艺', '先进制造学院');
INSERT INTO `admission` VALUES ('417', '21441948892958', '罗**14', 209, '067', '化学工程与工艺', '先进制造学院');
INSERT INTO `admission` VALUES ('418', '21441962109292', '韦**15', 209, '067', '化学工程与工艺', '先进制造学院');
INSERT INTO `admission` VALUES ('419', '21441003126887', '邱**14', 201, '004', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('42', '21441141871866', '李**11', 209, '066', '电子信息工程', '先进制造学院');
INSERT INTO `admission` VALUES ('420', '21441026079258', '杨*12', 201, '004', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('421', '21441091662241', '梁**13', 201, '004', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('422', '21441112690290', '王**13', 201, '004', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('423', '21441145274689', '张**12', 201, '004', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('424', '21441216726484', '黄*12', 201, '004', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('425', '21441248063128', '陈**15', 209, '067', '化学工程与工艺', '先进制造学院');
INSERT INTO `admission` VALUES ('426', '21441277471850', '周**12', 201, '004', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('427', '21441283778351', '吴**11', 201, '004', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('428', '21441388864777', '姚**12', 209, '067', '化学工程与工艺', '先进制造学院');
INSERT INTO `admission` VALUES ('429', '21441408687629', '袁**11', 209, '067', '化学工程与工艺', '先进制造学院');
INSERT INTO `admission` VALUES ('43', '21441194762134', '郭**17', 205, '012', '机械电子工程', '机电工程学院');
INSERT INTO `admission` VALUES ('430', '21441443799611', '何**19', 201, '004', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('431', '21441447956220', '廉**17', 209, '067', '化学工程与工艺', '先进制造学院');
INSERT INTO `admission` VALUES ('432', '21441461745191', '林**17', 209, '067', '化学工程与工艺', '先进制造学院');
INSERT INTO `admission` VALUES ('433', '21441480841902', '张**11', 201, '004', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('434', '21441485906748', '仇**18', 201, '004', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('435', '21441532033438', '许**18', 209, '067', '化学工程与工艺', '先进制造学院');
INSERT INTO `admission` VALUES ('436', '21441535604663', '杨*19', 209, '067', '化学工程与工艺', '先进制造学院');
INSERT INTO `admission` VALUES ('437', '21441629931424', '冯**19', 201, '004', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('438', '21441707891402', '吴**13', 201, '004', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('439', '21441713139088', '何**15', 209, '067', '化学工程与工艺', '先进制造学院');
INSERT INTO `admission` VALUES ('44', '21441197731555', '袁**17', 205, '012', '机械电子工程', '机电工程学院');
INSERT INTO `admission` VALUES ('440', '21441736597641', '陈**12', 209, '067', '化学工程与工艺', '先进制造学院');
INSERT INTO `admission` VALUES ('441', '21441760014344', '徐**18', 209, '067', '化学工程与工艺', '先进制造学院');
INSERT INTO `admission` VALUES ('442', '21441786873524', '李**12', 209, '067', '化学工程与工艺', '先进制造学院');
INSERT INTO `admission` VALUES ('443', '21441793850936', '于*17', 209, '067', '化学工程与工艺', '先进制造学院');
INSERT INTO `admission` VALUES ('444', '21441805010483', '宋**10', 201, '004', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('445', '21441807758729', '钟**16', 209, '067', '化学工程与工艺', '先进制造学院');
INSERT INTO `admission` VALUES ('446', '21441824040249', '曾**11', 209, '067', '化学工程与工艺', '先进制造学院');
INSERT INTO `admission` VALUES ('447', '21441844078928', '张**12', 201, '004', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('448', '21441883478063', '方**18', 209, '067', '化学工程与工艺', '先进制造学院');
INSERT INTO `admission` VALUES ('449', '21441913644032', '吴**11', 209, '067', '化学工程与工艺', '先进制造学院');
INSERT INTO `admission` VALUES ('45', '21441299119341', '张**15', 205, '021', '电气工程及其自动化', '自动化学院');
INSERT INTO `admission` VALUES ('450', '21441962920282', '黄**16', 201, '004', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('451', '21441964743937', '郭**12', 209, '067', '化学工程与工艺', '先进制造学院');
INSERT INTO `admission` VALUES ('452', '21441024084444', '杜**11', 209, '067', '化学工程与工艺', '先进制造学院');
INSERT INTO `admission` VALUES ('453', '21441034361199', '区**17', 209, '067', '化学工程与工艺', '先进制造学院');
INSERT INTO `admission` VALUES ('454', '21441055493506', '陈**14', 201, '004', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('455', '21441066330838', '李*18', 201, '004', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('456', '21441099311173', '邹**17', 209, '067', '化学工程与工艺', '先进制造学院');
INSERT INTO `admission` VALUES ('457', '21441099632068', '唐**18', 209, '067', '化学工程与工艺', '先进制造学院');
INSERT INTO `admission` VALUES ('458', '21441106510689', '曾*14', 209, '067', '化学工程与工艺', '先进制造学院');
INSERT INTO `admission` VALUES ('459', '21441157992300', '韦**16', 209, '067', '化学工程与工艺', '先进制造学院');
INSERT INTO `admission` VALUES ('46', '21441432796147', '郑**17', 208, '060', '计算机科学与技术', '国际教育学院');
INSERT INTO `admission` VALUES ('460', '21441167223552', '高**11', 209, '067', '化学工程与工艺', '先进制造学院');
INSERT INTO `admission` VALUES ('461', '21441182297432', '郑**13', 201, '004', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('462', '21441198871548', '王**13', 209, '067', '化学工程与工艺', '先进制造学院');
INSERT INTO `admission` VALUES ('463', '21441239808117', '郑**12', 201, '004', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('464', '21441255083135', '李**13', 209, '067', '化学工程与工艺', '先进制造学院');
INSERT INTO `admission` VALUES ('465', '21441276296465', '黄**13', 209, '067', '化学工程与工艺', '先进制造学院');
INSERT INTO `admission` VALUES ('466', '21441294200727', '李**11', 209, '067', '化学工程与工艺', '先进制造学院');
INSERT INTO `admission` VALUES ('467', '21441308959495', '谢**10', 209, '067', '化学工程与工艺', '先进制造学院');
INSERT INTO `admission` VALUES ('468', '21441343415599', '岳**14', 201, '004', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('469', '21441353224467', '黄**14', 201, '004', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('47', '21441620718394', '陈**18', 205, '012', '机械电子工程', '机电工程学院');
INSERT INTO `admission` VALUES ('470', '21441358784418', '蔡**15', 201, '004', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('471', '21441367710794', '刘**15', 209, '067', '化学工程与工艺', '先进制造学院');
INSERT INTO `admission` VALUES ('472', '21441374833631', '陈**11', 209, '067', '化学工程与工艺', '先进制造学院');
INSERT INTO `admission` VALUES ('473', '21441411975921', '王**13', 201, '004', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('474', '21441417883739', '劳**11', 201, '004', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('475', '21441447662976', '阮**15', 201, '004', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('476', '21441448440136', '吴**17', 209, '067', '化学工程与工艺', '先进制造学院');
INSERT INTO `admission` VALUES ('477', '21441457871401', '周**11', 209, '067', '化学工程与工艺', '先进制造学院');
INSERT INTO `admission` VALUES ('478', '21441481687828', '龙**11', 201, '004', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('479', '21441516929128', '刘**10', 201, '004', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('48', '21441756990838', '翁*11', 208, '060', '计算机科学与技术', '国际教育学院');
INSERT INTO `admission` VALUES ('480', '21441521074974', '李**15', 201, '004', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('481', '21441529772195', '梁**12', 205, '046', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('482', '21441542013454', '李**16', 209, '067', '化学工程与工艺', '先进制造学院');
INSERT INTO `admission` VALUES ('483', '21441547968411', '黎**12', 209, '067', '化学工程与工艺', '先进制造学院');
INSERT INTO `admission` VALUES ('484', '21441601248249', '梁**16', 205, '046', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('485', '21441642179196', '黄**18', 209, '067', '化学工程与工艺', '先进制造学院');
INSERT INTO `admission` VALUES ('486', '21441662252674', '颜**14', 205, '046', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('487', '21441682829548', '张**14', 205, '046', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('488', '21441708652034', '黄**11', 209, '067', '化学工程与工艺', '先进制造学院');
INSERT INTO `admission` VALUES ('489', '21441724554632', '卓**14', 205, '046', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('49', '21441842245505', '钟**13', 208, '060', '计算机科学与技术', '国际教育学院');
INSERT INTO `admission` VALUES ('490', '21441736473869', '黄**16', 205, '046', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('491', '21441736892541', '陈**12', 209, '067', '化学工程与工艺', '先进制造学院');
INSERT INTO `admission` VALUES ('492', '21441740879971', '黄**10', 205, '046', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('493', '21441743403780', '郑**15', 209, '067', '化学工程与工艺', '先进制造学院');
INSERT INTO `admission` VALUES ('494', '21441746029126', '李**16', 209, '067', '化学工程与工艺', '先进制造学院');
INSERT INTO `admission` VALUES ('495', '21441750041339', '刘**19', 205, '046', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('496', '21441753444670', '张**16', 209, '067', '化学工程与工艺', '先进制造学院');
INSERT INTO `admission` VALUES ('497', '21441818525191', '郑**10', 209, '067', '化学工程与工艺', '先进制造学院');
INSERT INTO `admission` VALUES ('498', '21441838442094', '吴**15', 205, '046', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('499', '21441838915091', '余**14', 205, '046', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('5', '21441194887703', '刘**17', 208, '060', '计算机科学与技术', '国际教育学院');
INSERT INTO `admission` VALUES ('50', '21441046378329', '张**13', 208, '060', '计算机科学与技术', '国际教育学院');
INSERT INTO `admission` VALUES ('500', '21441875223799', '马**10', 209, '067', '化学工程与工艺', '先进制造学院');
INSERT INTO `admission` VALUES ('501', '21441880528224', '谌**15', 205, '046', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('502', '21441904810303', '王*17', 209, '067', '化学工程与工艺', '先进制造学院');
INSERT INTO `admission` VALUES ('503', '21441925454674', '黎**16', 209, '067', '化学工程与工艺', '先进制造学院');
INSERT INTO `admission` VALUES ('504', '21441933444168', '黄**14', 205, '046', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('505', '21441933712107', '李**12', 209, '067', '化学工程与工艺', '先进制造学院');
INSERT INTO `admission` VALUES ('506', '21441995043165', '彭*13', 205, '046', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('507', '21441012215113', '杨**12', 205, '046', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('508', '21441026643288', '钟**18', 205, '046', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('509', '21441049405660', '许**10', 209, '067', '化学工程与工艺', '先进制造学院');
INSERT INTO `admission` VALUES ('51', '21441173736646', '唐**14', 208, '060', '计算机科学与技术', '国际教育学院');
INSERT INTO `admission` VALUES ('510', '21441059289451', '施**10', 205, '046', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('511', '21441071015968', '李**17', 209, '067', '化学工程与工艺', '先进制造学院');
INSERT INTO `admission` VALUES ('512', '21441087174953', '蔡**18', 209, '067', '化学工程与工艺', '先进制造学院');
INSERT INTO `admission` VALUES ('513', '21441272397578', '区**15', 209, '067', '化学工程与工艺', '先进制造学院');
INSERT INTO `admission` VALUES ('514', '21441287310126', '黄**11', 209, '067', '化学工程与工艺', '先进制造学院');
INSERT INTO `admission` VALUES ('515', '21441313637808', '谢**12', 209, '067', '化学工程与工艺', '先进制造学院');
INSERT INTO `admission` VALUES ('516', '21441335309867', '李**15', 209, '067', '化学工程与工艺', '先进制造学院');
INSERT INTO `admission` VALUES ('517', '21441364516569', '曾**17', 205, '046', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('518', '21441443620869', '申**19', 205, '046', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('519', '21441468206057', '寻**14', 205, '046', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('52', '21441223641152', '陈**12', 208, '060', '计算机科学与技术', '国际教育学院');
INSERT INTO `admission` VALUES ('520', '21441469595600', '梁**17', 205, '046', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('521', '21441484342676', '张**18', 205, '046', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('522', '21441514240023', '陈**12', 209, '067', '化学工程与工艺', '先进制造学院');
INSERT INTO `admission` VALUES ('523', '21441617601468', '林**12', 205, '046', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('524', '21441777703875', '李**18', 209, '067', '化学工程与工艺', '先进制造学院');
INSERT INTO `admission` VALUES ('525', '21441784591161', '谢**13', 205, '046', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('526', '21441913428528', '苏*10', 209, '067', '化学工程与工艺', '先进制造学院');
INSERT INTO `admission` VALUES ('527', '21441933567669', '范*16', 205, '046', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('528', '21441936467859', '杜*11', 205, '046', '电子商务', '管理学院');
INSERT INTO `admission` VALUES ('529', '21441000529752', '张**15', 201, '001', '外国语言文学类', '外国语学院');
INSERT INTO `admission` VALUES ('53', '21441248274122', '麦**17', 208, '060', '计算机科学与技术', '国际教育学院');
INSERT INTO `admission` VALUES ('530', '21441133787703', '乐*15', 201, '001', '外国语言文学类', '外国语学院');
INSERT INTO `admission` VALUES ('531', '21441121167355', '户**10', 201, '001', '外国语言文学类', '外国语学院');
INSERT INTO `admission` VALUES ('532', '21441211015029', '何**16', 201, '001', '外国语言文学类', '外国语学院');
INSERT INTO `admission` VALUES ('533', '21441390324138', '陈**12', 201, '001', '外国语言文学类', '外国语学院');
INSERT INTO `admission` VALUES ('534', '21441771284223', '黄**16', 201, '001', '外国语言文学类', '外国语学院');
INSERT INTO `admission` VALUES ('535', '21441901356642', '谢**18', 201, '001', '外国语言文学类', '外国语学院');
INSERT INTO `admission` VALUES ('536', '21441954998175', '曾**13', 201, '001', '外国语言文学类', '外国语学院');
INSERT INTO `admission` VALUES ('537', '21441097398358', '张**13', 201, '001', '外国语言文学类', '外国语学院');
INSERT INTO `admission` VALUES ('538', '21441109095538', '苏**16', 201, '001', '外国语言文学类', '外国语学院');
INSERT INTO `admission` VALUES ('539', '21441122280069', '周*16', 201, '001', '外国语言文学类', '外国语学院');
INSERT INTO `admission` VALUES ('54', '21441275704485', '刘**17', 205, '021', '电气工程及其自动化', '自动化学院');
INSERT INTO `admission` VALUES ('540', '21441150371420', '梁**18', 201, '001', '外国语言文学类', '外国语学院');
INSERT INTO `admission` VALUES ('541', '21441201321160', '李**14', 201, '001', '外国语言文学类', '外国语学院');
INSERT INTO `admission` VALUES ('542', '21441301405889', '邓**14', 201, '001', '外国语言文学类', '外国语学院');
INSERT INTO `admission` VALUES ('543', '21441353705411', '林**12', 201, '001', '外国语言文学类', '外国语学院');
INSERT INTO `admission` VALUES ('544', '21441393690728', '黄**17', 201, '001', '外国语言文学类', '外国语学院');
INSERT INTO `admission` VALUES ('545', '21441585895528', '彭**14', 201, '001', '外国语言文学类', '外国语学院');
INSERT INTO `admission` VALUES ('546', '21441742074735', '谭**13', 201, '001', '外国语言文学类', '外国语学院');
INSERT INTO `admission` VALUES ('547', '21441769325477', '柯**17', 201, '001', '外国语言文学类', '外国语学院');
INSERT INTO `admission` VALUES ('548', '21441809657614', '蓝*13', 201, '001', '外国语言文学类', '外国语学院');
INSERT INTO `admission` VALUES ('549', '21441038538676', '黄**11', 201, '001', '外国语言文学类', '外国语学院');
INSERT INTO `admission` VALUES ('55', '21441364337989', '李*16', 205, '021', '电气工程及其自动化', '自动化学院');
INSERT INTO `admission` VALUES ('550', '21441108921191', '陈**10', 201, '001', '外国语言文学类', '外国语学院');
INSERT INTO `admission` VALUES ('551', '21441273033061', '洪**12', 201, '001', '外国语言文学类', '外国语学院');
INSERT INTO `admission` VALUES ('552', '21441421844725', '罗**19', 201, '001', '外国语言文学类', '外国语学院');
INSERT INTO `admission` VALUES ('553', '21441516324160', '黄**14', 201, '001', '外国语言文学类', '外国语学院');
INSERT INTO `admission` VALUES ('554', '21441619149183', '刘**13', 201, '001', '外国语言文学类', '外国语学院');
INSERT INTO `admission` VALUES ('555', '21441678212237', '许**19', 201, '001', '外国语言文学类', '外国语学院');
INSERT INTO `admission` VALUES ('556', '21441848082291', '张**18', 201, '001', '外国语言文学类', '外国语学院');
INSERT INTO `admission` VALUES ('557', '21441981225440', '田**19', 201, '001', '外国语言文学类', '外国语学院');
INSERT INTO `admission` VALUES ('558', '21441059805352', '钟**18', 201, '001', '外国语言文学类', '外国语学院');
INSERT INTO `admission` VALUES ('559', '21441378558933', '欧**14', 201, '001', '外国语言文学类', '外国语学院');
INSERT INTO `admission` VALUES ('56', '21441666727251', '林**14', 205, '021', '电气工程及其自动化', '自动化学院');
INSERT INTO `admission` VALUES ('560', '21441564055863', '刘*13', 201, '001', '外国语言文学类', '外国语学院');
INSERT INTO `admission` VALUES ('561', '21441828302854', '冯**11', 201, '001', '外国语言文学类', '外国语学院');
INSERT INTO `admission` VALUES ('562', '21441935469367', '蔡**19', 201, '001', '外国语言文学类', '外国语学院');
INSERT INTO `admission` VALUES ('563', '21441997508100', 'zhangfei', 201, '001', '外国语言文学类', '外国语学院');
INSERT INTO `admission` VALUES ('57', '21441196170867', '郑**19', 209, '066', '电子信息工程', '先进制造学院');
INSERT INTO `admission` VALUES ('58', '21441347179981', '钟*12', 208, '060', '计算机科学与技术', '国际教育学院');
INSERT INTO `admission` VALUES ('59', '21441349814633', '罗**17', 208, '060', '计算机科学与技术', '国际教育学院');
INSERT INTO `admission` VALUES ('6', '21441487371811', '张**13', 208, '060', '计算机科学与技术', '国际教育学院');
INSERT INTO `admission` VALUES ('60', '21441577532844', '肖*18', 205, '012', '机械电子工程', '机电工程学院');
INSERT INTO `admission` VALUES ('61', '21441687804522', '黄**12', 208, '060', '计算机科学与技术', '国际教育学院');
INSERT INTO `admission` VALUES ('62', '21441717613389', '罗**15', 208, '060', '计算机科学与技术', '国际教育学院');
INSERT INTO `admission` VALUES ('63', '21441178203956', '曾**19', 208, '060', '计算机科学与技术', '国际教育学院');
INSERT INTO `admission` VALUES ('64', '21441298000965', '田**11', 208, '060', '计算机科学与技术', '国际教育学院');
INSERT INTO `admission` VALUES ('65', '21441384521403', '袁*11', 208, '060', '计算机科学与技术', '国际教育学院');
INSERT INTO `admission` VALUES ('66', '21441446970763', '林*12', 208, '060', '计算机科学与技术', '国际教育学院');
INSERT INTO `admission` VALUES ('67', '21441452991519', '杨*11', 208, '060', '计算机科学与技术', '国际教育学院');
INSERT INTO `admission` VALUES ('68', '21441464077025', '骆**19', 205, '021', '电气工程及其自动化', '自动化学院');
INSERT INTO `admission` VALUES ('69', '21441509741143', '劳**10', 208, '060', '计算机科学与技术', '国际教育学院');
INSERT INTO `admission` VALUES ('7', '21441381490441', '张**12', 205, '021', '电气工程及其自动化', '自动化学院');
INSERT INTO `admission` VALUES ('70', '21441519983252', '黄**15', 208, '060', '计算机科学与技术', '国际教育学院');
INSERT INTO `admission` VALUES ('71', '21441635514468', '李**11', 205, '012', '机械电子工程', '机电工程学院');
INSERT INTO `admission` VALUES ('72', '21441666437570', '徐**12', 208, '060', '计算机科学与技术', '国际教育学院');
INSERT INTO `admission` VALUES ('73', '21441695866870', '区**17', 208, '060', '计算机科学与技术', '国际教育学院');
INSERT INTO `admission` VALUES ('74', '21441011145955', '叶**17', 208, '060', '计算机科学与技术', '国际教育学院');
INSERT INTO `admission` VALUES ('75', '21441014708773', '刘**13', 208, '060', '计算机科学与技术', '国际教育学院');
INSERT INTO `admission` VALUES ('76', '21441021570611', '张*13', 208, '060', '计算机科学与技术', '国际教育学院');
INSERT INTO `admission` VALUES ('77', '21441118260127', '胡**13', 205, '021', '电气工程及其自动化', '自动化学院');
INSERT INTO `admission` VALUES ('78', '21441202351388', '温**11', 208, '060', '计算机科学与技术', '国际教育学院');
INSERT INTO `admission` VALUES ('79', '21441242355704', '廖**15', 208, '060', '计算机科学与技术', '国际教育学院');
INSERT INTO `admission` VALUES ('8', '21441672273361', '王**18', 205, '012', '机械电子工程', '机电工程学院');
INSERT INTO `admission` VALUES ('80', '21441485496408', '唐**13', 208, '060', '计算机科学与技术', '国际教育学院');
INSERT INTO `admission` VALUES ('81', '21441498763163', '钟**14', 208, '060', '计算机科学与技术', '国际教育学院');
INSERT INTO `admission` VALUES ('82', '21441540219951', '王*18', 208, '060', '计算机科学与技术', '国际教育学院');
INSERT INTO `admission` VALUES ('83', '21441646736130', '王**16', 209, '065', '计算机科学与技术', '先进制造学院');
INSERT INTO `admission` VALUES ('84', '21441664363769', '黄**10', 209, '065', '计算机科学与技术', '先进制造学院');
INSERT INTO `admission` VALUES ('85', '21441718790988', '潘**16', 209, '065', '计算机科学与技术', '先进制造学院');
INSERT INTO `admission` VALUES ('86', '21441740167511', '韩**18', 205, '012', '机械电子工程', '机电工程学院');
INSERT INTO `admission` VALUES ('87', '21441756888773', '贾*13', 205, '012', '机械电子工程', '机电工程学院');
INSERT INTO `admission` VALUES ('88', '21441757273539', '黄**11', 205, '012', '机械电子工程', '机电工程学院');
INSERT INTO `admission` VALUES ('89', '21441843475693', '蔡**12', 209, '065', '计算机科学与技术', '先进制造学院');
INSERT INTO `admission` VALUES ('9', '21441468278819', '车**18', 205, '021', '电气工程及其自动化', '自动化学院');
INSERT INTO `admission` VALUES ('90', '21441094563250', '李**13', 209, '065', '计算机科学与技术', '先进制造学院');
INSERT INTO `admission` VALUES ('91', '21441100976731', '陈**16', 209, '065', '计算机科学与技术', '先进制造学院');
INSERT INTO `admission` VALUES ('92', '21441142695432', '彭**13', 205, '021', '电气工程及其自动化', '自动化学院');
INSERT INTO `admission` VALUES ('93', '21441184934801', '陈**13', 205, '021', '电气工程及其自动化', '自动化学院');
INSERT INTO `admission` VALUES ('94', '21441209103485', '罗**17', 209, '065', '计算机科学与技术', '先进制造学院');
INSERT INTO `admission` VALUES ('95', '21441214549438', '何*14', 209, '065', '计算机科学与技术', '先进制造学院');
INSERT INTO `admission` VALUES ('96', '21441259142417', '李**18', 209, '065', '计算机科学与技术', '先进制造学院');
INSERT INTO `admission` VALUES ('97', '21441285751211', '彭**13', 205, '021', '电气工程及其自动化', '自动化学院');
INSERT INTO `admission` VALUES ('98', '21441470495435', '张**11', 209, '065', '计算机科学与技术', '先进制造学院');
INSERT INTO `admission` VALUES ('99', '21441483868407', '王*16', 209, '065', '计算机科学与技术', '先进制造学院');

-- ----------------------------
-- Table structure for admitted
-- ----------------------------
DROP TABLE IF EXISTS `admitted`;
CREATE TABLE `admitted`  (
  `专业代号` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `待录取人数` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  INDEX `专业代号`(`专业代号` ASC) USING BTREE,
  CONSTRAINT `admitted_ibfk_1` FOREIGN KEY (`专业代号`) REFERENCES `major` (`专业代号`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admitted
-- ----------------------------
INSERT INTO `admitted` VALUES ('001', '45');
INSERT INTO `admitted` VALUES ('002', '30');
INSERT INTO `admitted` VALUES ('003', '87');
INSERT INTO `admitted` VALUES ('004', '0');
INSERT INTO `admitted` VALUES ('005', '30');
INSERT INTO `admitted` VALUES ('006', '50');
INSERT INTO `admitted` VALUES ('007', '10');
INSERT INTO `admitted` VALUES ('008', '25');
INSERT INTO `admitted` VALUES ('009', '42');
INSERT INTO `admitted` VALUES ('010', '14');
INSERT INTO `admitted` VALUES ('011', '5');
INSERT INTO `admitted` VALUES ('012', '0');
INSERT INTO `admitted` VALUES ('013', '20');
INSERT INTO `admitted` VALUES ('014', '0');
INSERT INTO `admitted` VALUES ('015', '20');
INSERT INTO `admitted` VALUES ('016', '30');
INSERT INTO `admitted` VALUES ('017', '404');
INSERT INTO `admitted` VALUES ('018', '84');
INSERT INTO `admitted` VALUES ('019', '73');
INSERT INTO `admitted` VALUES ('020', '253');
INSERT INTO `admitted` VALUES ('021', '0');
INSERT INTO `admitted` VALUES ('022', '86');
INSERT INTO `admitted` VALUES ('023', '90');
INSERT INTO `admitted` VALUES ('024', '219');
INSERT INTO `admitted` VALUES ('025', '52');
INSERT INTO `admitted` VALUES ('026', '497');
INSERT INTO `admitted` VALUES ('027', '410');
INSERT INTO `admitted` VALUES ('028', '87');
INSERT INTO `admitted` VALUES ('029', '30');
INSERT INTO `admitted` VALUES ('030', '540');
INSERT INTO `admitted` VALUES ('031', '90');
INSERT INTO `admitted` VALUES ('032', '261');
INSERT INTO `admitted` VALUES ('033', '109');
INSERT INTO `admitted` VALUES ('034', '185');
INSERT INTO `admitted` VALUES ('035', '90');
INSERT INTO `admitted` VALUES ('036', '172');
INSERT INTO `admitted` VALUES ('037', '40');
INSERT INTO `admitted` VALUES ('038', '137');
INSERT INTO `admitted` VALUES ('039', '30');
INSERT INTO `admitted` VALUES ('040', '144');
INSERT INTO `admitted` VALUES ('041', '186');
INSERT INTO `admitted` VALUES ('042', '61');
INSERT INTO `admitted` VALUES ('043', '92');
INSERT INTO `admitted` VALUES ('044', '504');
INSERT INTO `admitted` VALUES ('045', '215');
INSERT INTO `admitted` VALUES ('046', '117');
INSERT INTO `admitted` VALUES ('047', '15');
INSERT INTO `admitted` VALUES ('048', '260');
INSERT INTO `admitted` VALUES ('049', '83');
INSERT INTO `admitted` VALUES ('050', '5');
INSERT INTO `admitted` VALUES ('051', '56');
INSERT INTO `admitted` VALUES ('052', '47');
INSERT INTO `admitted` VALUES ('053', '132');
INSERT INTO `admitted` VALUES ('054', '35');
INSERT INTO `admitted` VALUES ('055', '73');
INSERT INTO `admitted` VALUES ('056', '60');
INSERT INTO `admitted` VALUES ('057', '171');
INSERT INTO `admitted` VALUES ('058', '32');
INSERT INTO `admitted` VALUES ('059', '0');
INSERT INTO `admitted` VALUES ('060', '0');
INSERT INTO `admitted` VALUES ('061', '34');
INSERT INTO `admitted` VALUES ('062', '18');
INSERT INTO `admitted` VALUES ('063', '0');
INSERT INTO `admitted` VALUES ('064', '0');
INSERT INTO `admitted` VALUES ('065', '0');
INSERT INTO `admitted` VALUES ('066', '0');
INSERT INTO `admitted` VALUES ('067', '11');
INSERT INTO `admitted` VALUES ('068', '67');
INSERT INTO `admitted` VALUES ('069', '60');
INSERT INTO `admitted` VALUES ('070', '133');
INSERT INTO `admitted` VALUES ('071', '25');
INSERT INTO `admitted` VALUES ('072', '321');
INSERT INTO `admitted` VALUES ('073', '60');
INSERT INTO `admitted` VALUES ('074', '4');
INSERT INTO `admitted` VALUES ('081', '71');
INSERT INTO `admitted` VALUES ('082', '75');
INSERT INTO `admitted` VALUES ('083', '20');
INSERT INTO `admitted` VALUES ('084', '10');
INSERT INTO `admitted` VALUES ('085', '10');
INSERT INTO `admitted` VALUES ('086', '5');
INSERT INTO `admitted` VALUES ('087', '5');
INSERT INTO `admitted` VALUES ('088', '12');
INSERT INTO `admitted` VALUES ('089', '20');
INSERT INTO `admitted` VALUES ('090', '10');
INSERT INTO `admitted` VALUES ('091', '5');
INSERT INTO `admitted` VALUES ('092', '10');
INSERT INTO `admitted` VALUES ('093', '34');
INSERT INTO `admitted` VALUES ('094', '5');
INSERT INTO `admitted` VALUES ('095', '20');
INSERT INTO `admitted` VALUES ('096', '39');
INSERT INTO `admitted` VALUES ('097', '10');
INSERT INTO `admitted` VALUES ('098', '10');
INSERT INTO `admitted` VALUES ('099', '7');
INSERT INTO `admitted` VALUES ('100', '5');
INSERT INTO `admitted` VALUES ('101', '5');
INSERT INTO `admitted` VALUES ('102', '20');
INSERT INTO `admitted` VALUES ('103', '20');

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id` ASC, `permission_id` ASC) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id` ASC) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id` ASC, `codename` ASC) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add student', 7, 'add_student');
INSERT INTO `auth_permission` VALUES (26, 'Can change student', 7, 'change_student');
INSERT INTO `auth_permission` VALUES (27, 'Can delete student', 7, 'delete_student');
INSERT INTO `auth_permission` VALUES (28, 'Can view student', 7, 'view_student');
INSERT INTO `auth_permission` VALUES (29, 'Can add all examinee', 8, 'add_allexaminee');
INSERT INTO `auth_permission` VALUES (30, 'Can change all examinee', 8, 'change_allexaminee');
INSERT INTO `auth_permission` VALUES (31, 'Can delete all examinee', 8, 'delete_allexaminee');
INSERT INTO `auth_permission` VALUES (32, 'Can view all examinee', 8, 'view_allexaminee');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES (1, 'pbkdf2_sha256$600000$gqEsT8TY2CnBbfybTdLEHD$mO0GH4uTqsIDIJv7zqjf8QN2fVPmx7OJdVzYUwxJWhU=', '2023-12-18 11:40:44.915441', 1, 'admin', '', '', '12345678@qq.com', 1, 1, '2023-11-02 06:42:48.346448');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id` ASC, `group_id` ASC) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id` ASC) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id` ASC, `permission_id` ASC) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id` ASC) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `content_type_id` int NULL DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id` ASC) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id` ASC) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_chk_1` CHECK (`action_flag` >= 0)
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES (1, '2023-11-02 06:48:16.733186', '1', 'student object (1)', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (2, '2023-11-02 08:35:50.567330', '1', 'ALLExaminee object (1)', 1, '[{\"added\": {}}]', 8, 1);

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label` ASC, `model` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (8, 'Student', 'allexaminee');
INSERT INTO `django_content_type` VALUES (7, 'student', 'student');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2023-11-01 06:00:33.589127');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2023-11-01 06:00:34.114220');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2023-11-01 06:00:34.341613');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2023-11-01 06:00:34.363037');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2023-11-01 06:00:34.381816');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2023-11-01 06:00:34.486773');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2023-11-01 06:00:34.544383');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2023-11-01 06:00:34.586533');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2023-11-01 06:00:34.602572');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2023-11-01 06:00:34.673197');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2023-11-01 06:00:34.681169');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2023-11-01 06:00:34.690790');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2023-11-01 06:00:34.746198');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2023-11-01 06:00:34.821562');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2023-11-01 06:00:34.860250');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2023-11-01 06:00:34.884595');
INSERT INTO `django_migrations` VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2023-11-01 06:00:34.975566');
INSERT INTO `django_migrations` VALUES (18, 'sessions', '0001_initial', '2023-11-01 06:00:35.011845');
INSERT INTO `django_migrations` VALUES (19, 'student', '0001_initial', '2023-11-01 06:19:19.983687');
INSERT INTO `django_migrations` VALUES (20, 'student', '0002_alter_student_candidateid_alter_student_ranking', '2023-11-01 06:19:19.997875');
INSERT INTO `django_migrations` VALUES (21, 'student', '0003_alter_student_id', '2023-11-02 08:16:52.219546');
INSERT INTO `django_migrations` VALUES (22, 'Student', '0001_initial', '2023-11-02 08:27:35.359352');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('0ceuk78u10euvnmv5novbr3fwoe2ijk1', '.eJxVjMsOgkAMRf9l1mYyZQoGl-79BtJOW8AHmAEWxvjvQsJCt_ece96uoWXummXS3PTiTg7c4XdjSjcdNiBXGtrRp3GYc89-U_xOJ38ZRe_n3f0LdDR16_sIlqooVAbjIgWoKCUuEcAooqCyAXNULEKw2mKtiCglGwNEkaJao1tufj11rT3a7D5f9NE-Tg:1rFBzI:slwcuL4sD4PFFxFG3Bh3uO75P5rAyrnSsJgkHfgRqRI', '2024-01-01 11:40:44.926463');
INSERT INTO `django_session` VALUES ('ek25cettaum2rjkt7j03rpa2rxd0f4gk', '.eJxVjMsOgkAMRf9l1mYyZQoGl-79BtJOW8AHmAEWxvjvQsJCt_ece96uoWXummXS3PTiTg7c4XdjSjcdNiBXGtrRp3GYc89-U_xOJ38ZRe_n3f0LdDR16_sIlqooVAbjIgWoKCUuEcAooqCyAXNULEKw2mKtiCglGwNEkaJao1tufj11rT3a7D5f9NE-Tg:1qyTSX:zBo7gQ3gA-gHsNaO797L8viZxNMfehswROFyyoaqDDU', '2023-11-16 08:53:49.337247');
INSERT INTO `django_session` VALUES ('fcnji46p810mm8z0s7dqyjmdowutxx3a', '.eJxVjMsOgkAMRf9l1mYyZQoGl-79BtJOW8AHmAEWxvjvQsJCt_ece96uoWXummXS3PTiTg7c4XdjSjcdNiBXGtrRp3GYc89-U_xOJ38ZRe_n3f0LdDR16_sIlqooVAbjIgWoKCUuEcAooqCyAXNULEKw2mKtiCglGwNEkaJao1tufj11rT3a7D5f9NE-Tg:1qyT90:Q9O20dWkZ7vBtMyhSzix0fLcmixIWlw9bHzLW2vcxqs', '2023-11-16 08:33:38.708916');

-- ----------------------------
-- Table structure for major
-- ----------------------------
DROP TABLE IF EXISTS `major`;
CREATE TABLE `major`  (
  `专业组号` int NOT NULL,
  `专业代号` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `专业名称` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `学院名称` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `招生计划数` int NOT NULL,
  `专业备注` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `办学地点` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `外语语种` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `体检受限1` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `体检受限2` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`专业代号`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of major
-- ----------------------------
INSERT INTO `major` VALUES (201, '001', '外国语言文学类', '外国语学院', 80, NULL, '广州校区', '1 英语', NULL, NULL);
INSERT INTO `major` VALUES (201, '002', '日语', '外国语学院', 30, NULL, '广州校区', '1 英语', NULL, NULL);
INSERT INTO `major` VALUES (201, '003', '工商管理类', '管理学院', 87, NULL, '河源校区', NULL, '21', '22');
INSERT INTO `major` VALUES (201, '004', '电子商务', '管理学院', 50, NULL, '河源校区', NULL, NULL, NULL);
INSERT INTO `major` VALUES (201, '005', '土地资源管理', '管理学院', 30, NULL, '河源校区', NULL, '22', NULL);
INSERT INTO `major` VALUES (201, '006', '法学', '政法学院', 50, NULL, '河源校区', NULL, '23', NULL);
INSERT INTO `major` VALUES (201, '007', '社会工作', '政法学院', 10, NULL, '河源校区', NULL, NULL, NULL);
INSERT INTO `major` VALUES (201, '008', '国际经济与贸易', '经济与贸易学院', 25, NULL, '河源校区', NULL, NULL, NULL);
INSERT INTO `major` VALUES (201, '009', '经济学', '经济与贸易学院', 42, NULL, '河源校区', NULL, NULL, NULL);
INSERT INTO `major` VALUES (201, '010', '金融工程', '经济与贸易学院', 14, NULL, '河源校区', NULL, '22', NULL);
INSERT INTO `major` VALUES (201, '011', '数字经济', '经济与贸易学院', 5, NULL, '河源校区', NULL, '23', NULL);
INSERT INTO `major` VALUES (205, '012', '机械电子工程', '机电工程学院', 20, '创新班', '广州校区', NULL, NULL, NULL);
INSERT INTO `major` VALUES (205, '013', '自动化', '自动化学院', 20, '创新班', '广州校区', NULL, NULL, NULL);
INSERT INTO `major` VALUES (205, '014', '化学工程与工艺', '轻工化工学院', 20, '创新班', '广州校区', NULL, NULL, NULL);
INSERT INTO `major` VALUES (205, '015', '材料类', '材料与能源学院', 20, '创新班', '广州校区', NULL, NULL, NULL);
INSERT INTO `major` VALUES (205, '016', '环境生态工程', '环境生态工程研究院', 30, '创新班', '广州校区', NULL, NULL, NULL);
INSERT INTO `major` VALUES (205, '017', '机械类', '机电工程学院', 404, NULL, '广州校区', NULL, NULL, NULL);
INSERT INTO `major` VALUES (205, '018', '测控技术与仪器', '机电工程学院', 84, NULL, '广州校区', NULL, NULL, NULL);
INSERT INTO `major` VALUES (205, '019', '工业工程', '机电工程学院', 73, NULL, '广州校区', NULL, NULL, NULL);
INSERT INTO `major` VALUES (205, '020', '自动化类', '自动化学院', 253, NULL, '广州校区', NULL, NULL, NULL);
INSERT INTO `major` VALUES (205, '021', '电气工程及其自动化', '自动化学院', 50, NULL, '广州校区', NULL, NULL, NULL);
INSERT INTO `major` VALUES (205, '022', '物联网工程', '自动化学院', 86, NULL, '广州校区', NULL, '22', NULL);
INSERT INTO `major` VALUES (205, '023', '数据科学与大数据技术', '自动化学院', 90, NULL, '广州校区', NULL, '21', '22');
INSERT INTO `major` VALUES (205, '024', '化工与制药类', '轻工化工学院', 219, NULL, '广州校区', NULL, '21', '22');
INSERT INTO `major` VALUES (205, '025', '食品科学与工程', '轻工化工学院', 52, NULL, '广州校区', NULL, '21', '22');
INSERT INTO `major` VALUES (205, '026', '电子信息类', '信息工程学院', 497, NULL, '广州校区', NULL, NULL, NULL);
INSERT INTO `major` VALUES (205, '027', '土木类', '土木与交通工程学院', 410, NULL, '广州校区', NULL, '22', NULL);
INSERT INTO `major` VALUES (205, '028', '工程管理', '土木与交通工程学院', 87, NULL, '广州校区', NULL, NULL, NULL);
INSERT INTO `major` VALUES (205, '029', '测绘工程', '土木与交通工程学院', 30, NULL, '广州校区', NULL, '22', NULL);
INSERT INTO `major` VALUES (205, '030', '计算机类', '计算机学院', 540, NULL, '广州校区', NULL, '22', NULL);
INSERT INTO `major` VALUES (205, '031', '人工智能', '计算机学院', 90, NULL, '广州校区', NULL, '23', NULL);
INSERT INTO `major` VALUES (205, '032', '材料类', '材料与能源学院', 261, NULL, '广州校区', NULL, '23', NULL);
INSERT INTO `major` VALUES (205, '033', '材料成型及控制工程', '材料与能源学院', 109, NULL, '广州校区', NULL, '21', '22');
INSERT INTO `major` VALUES (205, '034', '能源动力类', '材料与能源学院', 185, NULL, '广州校区', NULL, '21', '22');
INSERT INTO `major` VALUES (205, '035', '微电子科学与工程', '材料与能源学院', 90, NULL, '广州校区', NULL, '23', NULL);
INSERT INTO `major` VALUES (205, '036', '环境科学与工程类', '环境科学与工程学院', 172, NULL, '广州校区', NULL, NULL, NULL);
INSERT INTO `major` VALUES (205, '037', '安全工程', '环境科学与工程学院', 40, NULL, '广州校区', NULL, NULL, NULL);
INSERT INTO `major` VALUES (205, '038', '外国语言文学类', '外国语学院', 137, NULL, '广州校区', '1 英语', '22', NULL);
INSERT INTO `major` VALUES (205, '039', '日语', '外国语学院', 30, NULL, '广州校区', '1 英语', '23', NULL);
INSERT INTO `major` VALUES (205, '040', '电子科学与技术', '物理与光电工程学院', 144, NULL, '广州校区', NULL, '23', NULL);
INSERT INTO `major` VALUES (205, '041', '光电信息科学与工程', '物理与光电工程学院', 186, NULL, '广州校区', NULL, '21', '22');
INSERT INTO `major` VALUES (205, '042', '生物工程', '生物医药学院', 61, NULL, '广州校区', NULL, '22', NULL);
INSERT INTO `major` VALUES (205, '043', '制药工程', '生物医药学院', 92, NULL, '广州校区', NULL, NULL, NULL);
INSERT INTO `major` VALUES (205, '044', '工商管理类', '管理学院', 504, NULL, '河源校区', NULL, '23', NULL);
INSERT INTO `major` VALUES (205, '045', '管理科学与工程类', '管理学院', 215, NULL, '河源校区', NULL, '21', '22');
INSERT INTO `major` VALUES (205, '046', '电子商务', '管理学院', 142, NULL, '河源校区', NULL, NULL, NULL);
INSERT INTO `major` VALUES (205, '047', '土地资源管理', '管理学院', 15, NULL, '河源校区', NULL, NULL, NULL);
INSERT INTO `major` VALUES (205, '048', '数学类', '应用数学学院', 260, NULL, '河源校区', NULL, '21', '22');
INSERT INTO `major` VALUES (205, '049', '法学', '政法学院', 83, NULL, '河源校区', NULL, NULL, NULL);
INSERT INTO `major` VALUES (205, '050', '社会工作', '政法学院', 5, NULL, '河源校区', NULL, '22', NULL);
INSERT INTO `major` VALUES (205, '051', '国际经济与贸易', '经济与贸易学院', 56, NULL, '河源校区', NULL, '22', NULL);
INSERT INTO `major` VALUES (205, '052', '经济学', '经济与贸易学院', 47, NULL, '河源校区', NULL, NULL, NULL);
INSERT INTO `major` VALUES (205, '053', '金融工程', '经济与贸易学院', 132, NULL, '河源校区', NULL, NULL, NULL);
INSERT INTO `major` VALUES (205, '054', '数字经济', '经济与贸易学院', 35, NULL, '河源校区', NULL, NULL, NULL);
INSERT INTO `major` VALUES (205, '055', '工业设计', '艺术与设计学院', 73, NULL, '珠海校区', NULL, NULL, NULL);
INSERT INTO `major` VALUES (205, '056', '数字媒体技术', '艺术与设计学院', 60, NULL, '珠海校区', NULL, NULL, NULL);
INSERT INTO `major` VALUES (205, '057', '建筑类', '建筑与城市规划学院', 171, NULL, '珠海校区', NULL, '23', NULL);
INSERT INTO `major` VALUES (208, '058', '机械设计制造及其自动化', '国际教育学院', 32, '国际班', '深圳校区', NULL, NULL, NULL);
INSERT INTO `major` VALUES (208, '059', '电气工程及其自动化', '国际教育学院', 72, '国际班', '深圳校区', NULL, NULL, NULL);
INSERT INTO `major` VALUES (208, '060', '计算机科学与技术', '国际教育学院', 50, '国际班', '深圳校区', NULL, NULL, NULL);
INSERT INTO `major` VALUES (208, '061', '土木工程', '国际教育学院', 34, '国际班', '深圳校区', NULL, NULL, NULL);
INSERT INTO `major` VALUES (208, '062', '工商管理', '国际教育学院', 18, '国际班', '深圳校区', NULL, NULL, NULL);
INSERT INTO `major` VALUES (209, '063', '机械电子工程', '先进制造学院', 40, NULL, '佛山校区', NULL, NULL, NULL);
INSERT INTO `major` VALUES (209, '064', '电气工程及其自动化', '先进制造学院', 30, NULL, '佛山校区', NULL, NULL, NULL);
INSERT INTO `major` VALUES (209, '065', '计算机科学与技术', '先进制造学院', 40, NULL, '佛山校区', NULL, NULL, NULL);
INSERT INTO `major` VALUES (209, '066', '电子信息工程', '先进制造学院', 70, NULL, '佛山校区', NULL, NULL, NULL);
INSERT INTO `major` VALUES (209, '067', '化学工程与工艺', '先进制造学院', 72, NULL, '佛山校区', NULL, NULL, NULL);
INSERT INTO `major` VALUES (209, '068', '电子商务', '先进制造学院', 67, NULL, '佛山校区', NULL, '22', NULL);
INSERT INTO `major` VALUES (205, '069', '智能制造工程', '机电工程学院', 60, NULL, '广州校区', NULL, '23', NULL);
INSERT INTO `major` VALUES (206, '070', '应用化学', '轻工化工学院', 133, NULL, '广州校区', NULL, '21', '22');
INSERT INTO `major` VALUES (206, '071', '交通运输', '土木与交通工程学院', 25, NULL, '广州校区', NULL, '21', '22');
INSERT INTO `major` VALUES (210, '072', '设计学类', '艺术与设计学院', 321, NULL, '珠海校区', NULL, '23', NULL);
INSERT INTO `major` VALUES (210, '073', '美术学', '艺术与设计学院', 60, NULL, '珠海校区', NULL, '21', '22');
INSERT INTO `major` VALUES (211, '074', '表演', '艺术与设计学院', 4, NULL, '珠海校区', NULL, '21', '22');
INSERT INTO `major` VALUES (204, '081', '电子商务', '先进制造学院', 71, NULL, '佛山校区', NULL, '22', NULL);
INSERT INTO `major` VALUES (203, '082', '工商管理', '国际教育学院', 75, '国际班', '深圳校区', NULL, NULL, NULL);
INSERT INTO `major` VALUES (202, '083', '工商管理类', '管理学院', 20, NULL, '河源校区', NULL, NULL, NULL);
INSERT INTO `major` VALUES (202, '084', '法学', '政法学院', 10, NULL, '河源校区', NULL, NULL, NULL);
INSERT INTO `major` VALUES (202, '085', '经济学', '经济与贸易学院', 10, NULL, '河源校区', NULL, NULL, NULL);
INSERT INTO `major` VALUES (202, '086', '外国语言文学类', '外国语学院', 5, NULL, '河源校区', '1 英语', NULL, NULL);
INSERT INTO `major` VALUES (202, '087', '社会工作', '政法学院', 5, NULL, '河源校区', NULL, NULL, NULL);
INSERT INTO `major` VALUES (202, '088', '国际经济与贸易', '经济与贸易学院', 12, NULL, '河源校区', NULL, NULL, NULL);
INSERT INTO `major` VALUES (207, '089', '环境科学与工程类', '环境科学与工程学院', 20, NULL, '广州校区', NULL, '21', '22');
INSERT INTO `major` VALUES (207, '090', '能源动力类', '材料与能源学院', 10, NULL, '广州校区', NULL, NULL, NULL);
INSERT INTO `major` VALUES (207, '091', '计算机类', '计算机学院', 5, NULL, '广州校区', NULL, '23', NULL);
INSERT INTO `major` VALUES (207, '092', '测绘工程', '土木与交通工程学院', 10, NULL, '广州校区', NULL, '22', NULL);
INSERT INTO `major` VALUES (207, '093', '土木类', '土木与交通工程学院', 34, NULL, '广州校区', NULL, NULL, NULL);
INSERT INTO `major` VALUES (207, '094', '生物工程', '生物医药学院', 5, NULL, '广州校区', NULL, '21', '22');
INSERT INTO `major` VALUES (207, '095', '食品科学与工程', '轻工化工学院', 20, NULL, '广州校区', NULL, '21', '22');
INSERT INTO `major` VALUES (207, '096', '工商管理类', '管理学院', 39, NULL, '河源校区', NULL, NULL, NULL);
INSERT INTO `major` VALUES (207, '097', '电子商务', '管理学院', 10, NULL, '河源校区', NULL, NULL, NULL);
INSERT INTO `major` VALUES (207, '098', '土地资源管理', '管理学院', 10, NULL, '河源校区', NULL, NULL, NULL);
INSERT INTO `major` VALUES (207, '099', '安全工程', '环境科学与工程学院', 7, NULL, '广州校区', NULL, '21', '22');
INSERT INTO `major` VALUES (207, '100', '法学', '政法学院', 5, NULL, '河源校区', NULL, NULL, NULL);
INSERT INTO `major` VALUES (207, '101', '社会工作', '政法学院', 5, NULL, '河源校区', NULL, NULL, NULL);
INSERT INTO `major` VALUES (207, '102', '数学类', '应用数学学院', 20, NULL, '河源校区', NULL, NULL, NULL);
INSERT INTO `major` VALUES (207, '103', '管理科学与工程类', '管理学院', 20, NULL, '河源校区', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for student_allexaminee
-- ----------------------------
DROP TABLE IF EXISTS `student_allexaminee`;
CREATE TABLE `student_allexaminee`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `CandidateID` int NOT NULL,
  `Name` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Phonenumber` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Totalscore` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Ranking` int NOT NULL,
  `adjustment` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Physicalexamination` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Foreignlanguagerequirements` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Firstvolunteer` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Secondvolunteer` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Thirdvolunteer` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Fourthvolunteer` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Fifthvolunteer` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Sixthvolunteer` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student_allexaminee
-- ----------------------------
INSERT INTO `student_allexaminee` VALUES (1, 1234567, '罗鑫', '12345678901', '567', 1242, 'yes', 'yes', 'yes', '1', '2', '3', '4', '5', '6');

-- ----------------------------
-- Table structure for students
-- ----------------------------
DROP TABLE IF EXISTS `students`;
CREATE TABLE `students`  (
  `考生号` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `姓名` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `专业组号` int NULL DEFAULT NULL,
  `投档成绩` int NULL DEFAULT NULL,
  `服从调剂` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `专业志愿1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `专业志愿2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `专业志愿3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `专业志愿4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `专业志愿5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `专业志愿6` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `外语语种` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `体检筛选备注` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`考生号`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of students
-- ----------------------------
INSERT INTO `students` VALUES ('111', '111', 209, 233, '否', '计算机科学与技术', NULL, NULL, NULL, NULL, NULL, '英语', '1');
INSERT INTO `students` VALUES ('21441000529752', '张**15', 209, 554, '是', '计算机科学与技术', NULL, NULL, NULL, NULL, NULL, '英语', NULL);
INSERT INTO `students` VALUES ('21441002185822', '翟**14', 209, 555, '是', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '化学工程与工艺', '电子商务', '机械电子工程', '英语', '24,25');
INSERT INTO `students` VALUES ('21441002470223', '罗**17', 209, 557, '是', '计算机科学与技术', '电子信息工程', '机械电子工程', '电气工程及其自动化', NULL, NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441003126887', '邱**14', 209, 551, '是', '机械电子工程', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '电子商务', '化学工程与工艺', '英语', '24,25');
INSERT INTO `students` VALUES ('21441005514956', '黄**14', 209, 554, '是', '电气工程及其自动化', '计算机科学与技术', '化学工程与工艺', '电子商务', NULL, NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441007168944', '李**15', 209, 553, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '化学工程与工艺', '电子商务', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441007853495', '郑**18', 209, 565, '是', '计算机科学与技术', '电气工程及其自动化', '机械电子工程', '电子信息工程', NULL, NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441011145955', '叶**17', 209, 561, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '化学工程与工艺', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441011537819', '江**13', 209, 559, '是', '计算机科学与技术', '电气工程及其自动化', '机械电子工程', '电子信息工程', NULL, NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441012215113', '杨**12', 209, 549, '是', '电子信息工程', '计算机科学与技术', '电气工程及其自动化', '机械电子工程', '电子商务', NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441012681460', '王**15', 209, 553, '是', '计算机科学与技术', '电子信息工程', '电子商务', '化学工程与工艺', '机械电子工程', '电气工程及其自动化', '英语', '24,25');
INSERT INTO `students` VALUES ('21441014708773', '刘**13', 209, 561, '是', '计算机科学与技术', '电子信息工程', NULL, NULL, NULL, NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441014898096', '何**15', 209, 553, '是', '计算机科学与技术', '机械电子工程', '电气工程及其自动化', '电子信息工程', '电子商务', NULL, '英语', '21,24,25');
INSERT INTO `students` VALUES ('21441015949219', '姜*18', 209, 569, '是', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '机械电子工程', '电子商务', '化学工程与工艺', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441017777962', '覃*13', 209, 556, '是', '机械电子工程', '电气工程及其自动化', '计算机科学与技术', NULL, NULL, NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441021570611', '张*13', 209, 561, '是', '计算机科学与技术', '电气工程及其自动化', '机械电子工程', '电子信息工程', NULL, NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441024084444', '杜**11', 209, 550, '是', '机械电子工程', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '化学工程与工艺', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441025554622', '黄**12', 209, 581, '是', '机械电子工程', '电子信息工程', '计算机科学与技术', '电气工程及其自动化', '化学工程与工艺', NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441026079258', '杨*12', 209, 551, '是', '机械电子工程', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '电子商务', '化学工程与工艺', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441026643288', '钟**18', 209, 549, '是', '计算机科学与技术', '电子信息工程', '机械电子工程', '电子商务', '电气工程及其自动化', '化学工程与工艺', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441029824849', '袁*10', 209, 552, '是', '计算机科学与技术', '电气工程及其自动化', '电子信息工程', '机械电子工程', '化学工程与工艺', '电子商务', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441034361199', '区**17', 209, 550, '是', '电子信息工程', '电气工程及其自动化', '计算机科学与技术', '化学工程与工艺', '机械电子工程', '电子商务', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441038538676', '黄**11', 209, 550, '是', '计算机科学与技术', '电气工程及其自动化', '电子信息工程', '机械电子工程', NULL, NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441040115162', '谢**16', 209, 555, '是', '电气工程及其自动化', '机械电子工程', '电子信息工程', NULL, NULL, NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441043195821', '谭**14', 209, 555, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '电子商务', '化学工程与工艺', '英语', '24');
INSERT INTO `students` VALUES ('21441045850215', '冯**13', 209, 554, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '电子商务', '化学工程与工艺', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441046378329', '张**13', 209, 564, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '化学工程与工艺', NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441048839347', '叶**15', 209, 552, '是', '机械电子工程', '计算机科学与技术', '电子信息工程', '电子商务', '化学工程与工艺', '电气工程及其自动化', '英语', '24,25');
INSERT INTO `students` VALUES ('21441049405660', '许**10', 209, 549, '是', '电气工程及其自动化', '机械电子工程', '电子信息工程', '计算机科学与技术', '化学工程与工艺', NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441051622195', '彭**18', 209, 559, '是', '电子信息工程', '机械电子工程', '计算机科学与技术', NULL, NULL, NULL, '英语', '24');
INSERT INTO `students` VALUES ('21441055493506', '陈**14', 209, 550, '是', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '机械电子工程', '电子商务', '化学工程与工艺', '英语', '24');
INSERT INTO `students` VALUES ('21441056497195', '任**17', 209, 555, '是', '化学工程与工艺', '电子商务', '机械电子工程', '电子信息工程', '电气工程及其自动化', NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441057352312', '林**11', 209, 554, '是', '机械电子工程', '电气工程及其自动化', '电子信息工程', '计算机科学与技术', '化学工程与工艺', NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441059289451', '施**10', 209, 549, '是', '电子信息工程', '电子商务', '计算机科学与技术', '电气工程及其自动化', '机械电子工程', '化学工程与工艺', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441059805352', '钟**18', 209, 549, '是', '电气工程及其自动化', '机械电子工程', '计算机科学与技术', '电子信息工程', NULL, NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441066330838', '李*18', 209, 550, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '电子商务', NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441070911303', '夏**18', 209, 552, '是', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '机械电子工程', '电子商务', '化学工程与工艺', '英语', '24,25');
INSERT INTO `students` VALUES ('21441071015968', '李**17', 209, 549, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '化学工程与工艺', '机械电子工程', NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441071089997', '刘**18', 209, 554, '是', '电气工程及其自动化', NULL, NULL, NULL, NULL, NULL, '英语', NULL);
INSERT INTO `students` VALUES ('21441075724745', '于**14', 209, 569, '是', '机械电子工程', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '电子商务', '化学工程与工艺', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441081403410', '许**18', 209, 556, '是', '机械电子工程', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '化学工程与工艺', NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441081750646', '周**12', 209, 567, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '化学工程与工艺', '机械电子工程', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441081915497', '邱**18', 209, 557, '是', '机械电子工程', '电子信息工程', '计算机科学与技术', '电气工程及其自动化', '化学工程与工艺', NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441085653335', '刘**14', 209, 552, '是', '计算机科学与技术', '电气工程及其自动化', '机械电子工程', '电子信息工程', '化学工程与工艺', '电子商务', '日语', '24,25');
INSERT INTO `students` VALUES ('21441087174953', '蔡**18', 209, 549, '是', '化学工程与工艺', '机械电子工程', '电子商务', '电气工程及其自动化', '电子信息工程', NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441088028640', '肖**13', 209, 553, '是', '计算机科学与技术', '机械电子工程', '电子信息工程', '电气工程及其自动化', '化学工程与工艺', '电子商务', '英语', '24');
INSERT INTO `students` VALUES ('21441088418744', '廖**10', 209, 555, '是', '计算机科学与技术', '电气工程及其自动化', '电子信息工程', '机械电子工程', '化学工程与工艺', NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441089818430', '钟**15', 209, 558, '是', '计算机科学与技术', '电气工程及其自动化', '电子信息工程', '化学工程与工艺', '机械电子工程', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441090423922', '王**13', 209, 557, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', NULL, NULL, NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441090462875', '何**12', 209, 558, '是', '计算机科学与技术', '电气工程及其自动化', '电子信息工程', '机械电子工程', '化学工程与工艺', NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441091662241', '梁**13', 209, 551, '是', '计算机科学与技术', '机械电子工程', '电子信息工程', '电气工程及其自动化', '电子商务', '化学工程与工艺', '英语', '24,25');
INSERT INTO `students` VALUES ('21441092097386', '何**19', 209, 554, '是', '机械电子工程', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '电子商务', '化学工程与工艺', '英语', '24,25');
INSERT INTO `students` VALUES ('21441093219322', '徐**13', 209, 556, '是', '计算机科学与技术', '电子信息工程', NULL, NULL, NULL, NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441094563250', '李**13', 209, 560, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '化学工程与工艺', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441096130530', '李**12', 209, 553, '是', '化学工程与工艺', '机械电子工程', '电气工程及其自动化', '电子信息工程', '计算机科学与技术', '电子商务', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441097398358', '张**13', 209, 551, '是', '计算机科学与技术', '电子信息工程', NULL, NULL, NULL, NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441099311173', '邹**17', 209, 550, '是', '计算机科学与技术', '电气工程及其自动化', '电子信息工程', '机械电子工程', '化学工程与工艺', '电子商务', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441099434484', '钟**19', 209, 553, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', NULL, NULL, NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441099632068', '唐**18', 209, 550, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '化学工程与工艺', '电子商务', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441100976731', '陈**16', 209, 560, '是', '计算机科学与技术', '电气工程及其自动化', '电子信息工程', '化学工程与工艺', '机械电子工程', '电子商务', '英语', '24,25,34,35');
INSERT INTO `students` VALUES ('21441102877594', '钟**13', 209, 553, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '化学工程与工艺', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441104503744', '张**14', 209, 555, '是', '计算机科学与技术', '电气工程及其自动化', '电子信息工程', '机械电子工程', '电子商务', '化学工程与工艺', '英语', '24,25');
INSERT INTO `students` VALUES ('21441106510689', '曾*14', 209, 550, '是', '机械电子工程', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '化学工程与工艺', '电子商务', '日语', '24,25');
INSERT INTO `students` VALUES ('21441108921191', '陈**10', 209, 550, '是', '机械电子工程', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', NULL, NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441109095538', '苏**16', 209, 551, '是', '计算机科学与技术', '电子信息工程', '机械电子工程', NULL, NULL, NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441109228254', '王*12', 209, 558, '是', '电气工程及其自动化', '电子商务', '电子信息工程', '化学工程与工艺', '计算机科学与技术', '机械电子工程', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441111431903', '杨**18', 209, 554, '是', '机械电子工程', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '化学工程与工艺', '电子商务', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441112690290', '王**13', 209, 551, '是', '机械电子工程', '电气工程及其自动化', '电子商务', NULL, NULL, NULL, '英语', '21,22,23,24,25');
INSERT INTO `students` VALUES ('21441118237758', '杨**19', 209, 555, '是', '计算机科学与技术', '电气工程及其自动化', '电子信息工程', '机械电子工程', '电子商务', '化学工程与工艺', '英语', '24,25');
INSERT INTO `students` VALUES ('21441118260127', '胡**13', 209, 561, '是', '电气工程及其自动化', '电子信息工程', '计算机科学与技术', '机械电子工程', '电子商务', NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441120376856', '邵**19', 209, 554, '是', '计算机科学与技术', '电气工程及其自动化', '机械电子工程', '电子信息工程', '化学工程与工艺', '电子商务', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441121138226', '杨**12', 209, 553, '是', '计算机科学与技术', '电子信息工程', '机械电子工程', '电气工程及其自动化', '电子商务', '化学工程与工艺', '日语', '24,25,34');
INSERT INTO `students` VALUES ('21441121167355', '户**10', 209, 552, '是', '机械电子工程', '计算机科学与技术', NULL, NULL, NULL, NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441121292596', '陈**14', 209, 558, '是', '计算机科学与技术', '机械电子工程', '电子信息工程', '电气工程及其自动化', '电子商务', NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441122280069', '周*16', 209, 551, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', NULL, NULL, '英语', '24');
INSERT INTO `students` VALUES ('21441122762034', '袁**11', 209, 557, '是', '机械电子工程', '电气工程及其自动化', '电子信息工程', '计算机科学与技术', '化学工程与工艺', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441123101036', '张**13', 209, 554, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '电子商务', '化学工程与工艺', '英语', '24,25');
INSERT INTO `students` VALUES ('21441126888912', '唐**15', 209, 554, '是', '计算机科学与技术', '电气工程及其自动化', '电子信息工程', '机械电子工程', '化学工程与工艺', '电子商务', '英语', NULL);
INSERT INTO `students` VALUES ('21441128226862', '赵**15', 209, 552, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', NULL, NULL, NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441133622885', '张**17', 209, 554, '是', '计算机科学与技术', '电子信息工程', '机械电子工程', '电气工程及其自动化', '化学工程与工艺', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441133787703', '乐*15', 209, 553, '是', '电子信息工程', '计算机科学与技术', NULL, NULL, NULL, NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441136254673', '叶**18', 209, 555, '是', '电子信息工程', '电气工程及其自动化', '机械电子工程', '计算机科学与技术', '电子商务', NULL, '英语', '24');
INSERT INTO `students` VALUES ('21441139106573', '陈**10', 209, 553, '是', '机械电子工程', '电气工程及其自动化', '电子信息工程', '计算机科学与技术', NULL, NULL, '英语', NULL);
INSERT INTO `students` VALUES ('21441140699210', '林**14', 209, 553, '是', '计算机科学与技术', '电子商务', '电子信息工程', '机械电子工程', '电气工程及其自动化', '化学工程与工艺', '英语', '24');
INSERT INTO `students` VALUES ('21441141390787', '李*19', 209, 555, '是', '计算机科学与技术', '电气工程及其自动化', '电子信息工程', '电子商务', '机械电子工程', NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441141871866', '李**11', 209, 565, '是', '电子信息工程', '计算机科学与技术', '机械电子工程', '电气工程及其自动化', '电子商务', '化学工程与工艺', '英语', '24,25');
INSERT INTO `students` VALUES ('21441142695432', '彭**13', 209, 560, '是', '电气工程及其自动化', '电子信息工程', '机械电子工程', '计算机科学与技术', '化学工程与工艺', NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441143566410', '黄**17', 209, 553, '是', '计算机科学与技术', '电气工程及其自动化', '机械电子工程', '电子信息工程', '化学工程与工艺', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441145274689', '张**12', 209, 551, '是', '计算机科学与技术', '电气工程及其自动化', '电子信息工程', '机械电子工程', '电子商务', NULL, '英语', '21,24');
INSERT INTO `students` VALUES ('21441145516064', '林**16', 209, 557, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', NULL, NULL, NULL, '英语', '24');
INSERT INTO `students` VALUES ('21441150371420', '梁**18', 209, 551, '是', '电子信息工程', '计算机科学与技术', '电气工程及其自动化', '机械电子工程', NULL, NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441152219526', '曾**10', 209, 558, '是', '电气工程及其自动化', '机械电子工程', '电子信息工程', '计算机科学与技术', '电子商务', '化学工程与工艺', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441153752814', '许**19', 209, 554, '是', '机械电子工程', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '化学工程与工艺', '电子商务', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441154305049', '吴**12', 209, 552, '是', '计算机科学与技术', '电气工程及其自动化', '电子信息工程', '机械电子工程', '化学工程与工艺', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441156938323', '侯**14', 209, 559, '否', '计算机科学与技术', '电子信息工程', NULL, NULL, NULL, NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441157992300', '韦**16', 209, 550, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '化学工程与工艺', '电子商务', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441160109786', '黎**12', 209, 552, '是', '机械电子工程', '计算机科学与技术', '电气工程及其自动化', '电子信息工程', '电子商务', '化学工程与工艺', '英语', NULL);
INSERT INTO `students` VALUES ('21441161150659', '陈**18', 209, 556, '是', '电子信息工程', '计算机科学与技术', NULL, NULL, NULL, NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441164246471', '蔡**16', 209, 555, '是', '电子商务', '电子信息工程', '计算机科学与技术', '电气工程及其自动化', '化学工程与工艺', '机械电子工程', '英语', '24,25,34,35');
INSERT INTO `students` VALUES ('21441167223552', '高**11', 209, 550, '是', '计算机科学与技术', '电子信息工程', '机械电子工程', '电气工程及其自动化', '化学工程与工艺', '电子商务', '英语', '24');
INSERT INTO `students` VALUES ('21441167681949', '周**12', 209, 552, '是', '计算机科学与技术', '机械电子工程', '电气工程及其自动化', '电子信息工程', '化学工程与工艺', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441169476843', '周*13', 209, 554, '是', '计算机科学与技术', '电子信息工程', '机械电子工程', '电气工程及其自动化', '电子商务', '化学工程与工艺', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441170993001', '杨**14', 209, 559, '是', '计算机科学与技术', '机械电子工程', '电气工程及其自动化', '电子信息工程', '化学工程与工艺', '电子商务', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441173736646', '唐**14', 209, 564, '是', '计算机科学与技术', '机械电子工程', '电气工程及其自动化', '电子信息工程', '电子商务', '化学工程与工艺', '英语', '24,25,34,35');
INSERT INTO `students` VALUES ('21441173990522', '彭**12', 209, 555, '是', '机械电子工程', '化学工程与工艺', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441175316262', '蔡**15', 209, 557, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '电子商务', '化学工程与工艺', '英语', '24,25');
INSERT INTO `students` VALUES ('21441176502269', '黎**19', 209, 554, '是', '机械电子工程', '化学工程与工艺', '电子信息工程', '电气工程及其自动化', '计算机科学与技术', NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441178203956', '曾**19', 209, 562, '是', '计算机科学与技术', '电子信息工程', '机械电子工程', '电气工程及其自动化', '电子商务', NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441182297432', '郑**13', 209, 550, '是', '电气工程及其自动化', '电子信息工程', '机械电子工程', '电子商务', '计算机科学与技术', '化学工程与工艺', '英语', '24,25');
INSERT INTO `students` VALUES ('21441183811216', '黄**16', 209, 553, '是', '计算机科学与技术', '机械电子工程', '电气工程及其自动化', '电子信息工程', NULL, NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441184040346', '何**11', 209, 552, '是', '电气工程及其自动化', '计算机科学与技术', '机械电子工程', NULL, NULL, NULL, '英语', NULL);
INSERT INTO `students` VALUES ('21441184934801', '陈**13', 209, 560, '是', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '机械电子工程', '电子商务', NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441184954759', '邓*18', 209, 574, '是', '机械电子工程', '计算机科学与技术', '电子信息工程', '电子商务', '化学工程与工艺', '电气工程及其自动化', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441193943907', '黄**18', 209, 553, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '化学工程与工艺', NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441194762134', '郭**17', 209, 565, '是', '机械电子工程', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '电子商务', NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441194887703', '刘**17', 209, 581, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '化学工程与工艺', NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441195667188', '冯**16', 209, 559, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '电子商务', NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441195784917', '黎**18', 209, 568, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '电子商务', NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441196170867', '郑**19', 209, 563, '是', '电子信息工程', '电气工程及其自动化', '计算机科学与技术', '机械电子工程', '化学工程与工艺', '电子商务', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441197731555', '袁**17', 209, 565, '是', '机械电子工程', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '电子商务', NULL, '英语', NULL);
INSERT INTO `students` VALUES ('21441198451686', '梁**12', 209, 567, '是', '电气工程及其自动化', '机械电子工程', '计算机科学与技术', '电子信息工程', '电子商务', '化学工程与工艺', '英语', NULL);
INSERT INTO `students` VALUES ('21441198871548', '王**13', 209, 550, '是', '计算机科学与技术', '电气工程及其自动化', '机械电子工程', '化学工程与工艺', '电子信息工程', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441201321160', '李**14', 209, 551, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', NULL, NULL, '英语', '24');
INSERT INTO `students` VALUES ('21441202351388', '温**11', 209, 561, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '电子商务', '化学工程与工艺', '英语', '24,25');
INSERT INTO `students` VALUES ('21441203518954', '罗**11', 209, 557, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '电子商务', '化学工程与工艺', '英语', NULL);
INSERT INTO `students` VALUES ('21441209103485', '罗**17', 209, 560, '是', '计算机科学与技术', NULL, NULL, NULL, NULL, NULL, '英语', '24,25,34,35');
INSERT INTO `students` VALUES ('21441211015029', '何**16', 209, 552, '是', '计算机科学与技术', NULL, NULL, NULL, NULL, NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441211138761', '周**18', 209, 555, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '化学工程与工艺', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441214549438', '何*14', 209, 560, '是', '计算机科学与技术', '电子信息工程', NULL, NULL, NULL, NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441216228462', '黄*15', 209, 555, '是', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '机械电子工程', '化学工程与工艺', NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441216726484', '黄*12', 209, 551, '是', '计算机科学与技术', '机械电子工程', '电气工程及其自动化', '电子信息工程', '电子商务', '化学工程与工艺', '英语', NULL);
INSERT INTO `students` VALUES ('21441218061082', '刘**15', 209, 557, '是', '机械电子工程', '计算机科学与技术', '电子信息工程', '电子商务', '电气工程及其自动化', '化学工程与工艺', '英语', '24,25');
INSERT INTO `students` VALUES ('21441222658639', '赖**15', 209, 555, '是', '电子信息工程', NULL, NULL, NULL, NULL, NULL, '英语', NULL);
INSERT INTO `students` VALUES ('21441223641152', '陈**12', 209, 564, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '化学工程与工艺', NULL, '英语', NULL);
INSERT INTO `students` VALUES ('21441225106621', '徐**14', 209, 552, '是', '计算机科学与技术', '电气工程及其自动化', '电子信息工程', '化学工程与工艺', '机械电子工程', NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441231649198', '陈**15', 209, 556, '是', '计算机科学与技术', '电子信息工程', '机械电子工程', '电气工程及其自动化', '电子商务', '化学工程与工艺', '英语', '24,25');
INSERT INTO `students` VALUES ('21441236218063', '傅**17', 209, 566, '是', '计算机科学与技术', '电气工程及其自动化', '电子信息工程', '机械电子工程', '化学工程与工艺', '电子商务', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441237261440', '欧**18', 209, 557, '是', '计算机科学与技术', '电子商务', '机械电子工程', '电气工程及其自动化', '电子信息工程', '化学工程与工艺', '英语', '24,25');
INSERT INTO `students` VALUES ('21441239808117', '郑**12', 209, 550, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '电子商务', '化学工程与工艺', '英语', '24,25');
INSERT INTO `students` VALUES ('21441241802737', '杨**12', 209, 554, '是', '机械电子工程', '化学工程与工艺', '计算机科学与技术', '电气工程及其自动化', '电子信息工程', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441242355704', '廖**15', 209, 561, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '电子商务', '化学工程与工艺', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441242466405', '陈**17', 209, 556, '是', '电子商务', '计算机科学与技术', '机械电子工程', '电气工程及其自动化', '电子信息工程', NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441243057419', '叶**14', 209, 558, '是', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '机械电子工程', NULL, NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441248063128', '陈**15', 209, 551, '是', '计算机科学与技术', '电气工程及其自动化', '电子信息工程', '机械电子工程', '化学工程与工艺', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441248274122', '麦**17', 209, 564, '是', '计算机科学与技术', '电气工程及其自动化', '机械电子工程', '电子信息工程', '化学工程与工艺', NULL, '英语', '24,25,34,35');
INSERT INTO `students` VALUES ('21441250926043', '汤**11', 209, 575, '是', '计算机科学与技术', '电子信息工程', '电子商务', NULL, NULL, NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441252375597', '李**18', 209, 553, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '电子商务', '化学工程与工艺', '英语', '24,25');
INSERT INTO `students` VALUES ('21441255083135', '李**13', 209, 550, '是', '计算机科学与技术', '电子信息工程', '机械电子工程', '电气工程及其自动化', '化学工程与工艺', NULL, '英语', NULL);
INSERT INTO `students` VALUES ('21441255209655', '陈**18', 209, 556, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '电子商务', '化学工程与工艺', '英语', NULL);
INSERT INTO `students` VALUES ('21441256506307', '袁**17', 209, 553, '是', '电气工程及其自动化', '机械电子工程', '电子信息工程', '计算机科学与技术', '电子商务', NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441257435787', '周**14', 209, 554, '是', '机械电子工程', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', NULL, NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441259142417', '李**18', 209, 560, '是', '计算机科学与技术', '电子信息工程', '机械电子工程', '电气工程及其自动化', '化学工程与工艺', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441260461541', '陈*16', 209, 573, '是', '计算机科学与技术', '电子信息工程', '电子商务', '电气工程及其自动化', NULL, NULL, '日语', '24,25');
INSERT INTO `students` VALUES ('21441261874402', '陈**16', 209, 554, '是', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '电子商务', '机械电子工程', NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441264405588', '郑**10', 209, 558, '是', '计算机科学与技术', '电子信息工程', '机械电子工程', '电子商务', '电气工程及其自动化', '化学工程与工艺', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441264667126', '邱**18', 209, 554, '否', '计算机科学与技术', NULL, NULL, NULL, NULL, NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441265153945', '文**10', 209, 555, '是', '机械电子工程', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '化学工程与工艺', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441269033521', '周*12', 209, 554, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '化学工程与工艺', NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441272397578', '区**15', 209, 549, '是', '机械电子工程', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '化学工程与工艺', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441273033061', '洪**12', 209, 550, '是', '电子信息工程', '电气工程及其自动化', '机械电子工程', '计算机科学与技术', NULL, NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441275704485', '刘**17', 209, 564, '是', '电气工程及其自动化', '电子信息工程', '机械电子工程', '计算机科学与技术', '电子商务', '化学工程与工艺', '英语', '24,25');
INSERT INTO `students` VALUES ('21441276296465', '黄**13', 209, 550, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '化学工程与工艺', '电子商务', '英语', NULL);
INSERT INTO `students` VALUES ('21441277471850', '周**12', 209, 551, '是', '机械电子工程', '电气工程及其自动化', '电子商务', NULL, NULL, NULL, '英语', '21,22,23,24,25');
INSERT INTO `students` VALUES ('21441277701253', '夏**11', 209, 555, '是', '机械电子工程', '电子信息工程', '电气工程及其自动化', '计算机科学与技术', '电子商务', NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441279232957', '陆**10', 209, 557, '是', '计算机科学与技术', '机械电子工程', '电子信息工程', '电气工程及其自动化', '化学工程与工艺', NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441283394775', '陈*19', 209, 559, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '电子商务', '化学工程与工艺', '英语', NULL);
INSERT INTO `students` VALUES ('21441283778351', '吴**11', 209, 551, '是', '计算机科学与技术', '电子信息工程', '电子商务', '电气工程及其自动化', '化学工程与工艺', '机械电子工程', '英语', '24,25');
INSERT INTO `students` VALUES ('21441285751211', '彭**13', 209, 560, '是', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '机械电子工程', '电子商务', '化学工程与工艺', '英语', '24,25');
INSERT INTO `students` VALUES ('21441287310126', '黄**11', 209, 549, '是', '机械电子工程', '计算机科学与技术', '电子信息工程', '化学工程与工艺', '电气工程及其自动化', '电子商务', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441287544475', '罗**18', 209, 553, '是', '计算机科学与技术', '机械电子工程', '电气工程及其自动化', '电子信息工程', '电子商务', '化学工程与工艺', '英语', '24,25');
INSERT INTO `students` VALUES ('21441288499188', '蔡**17', 209, 554, '是', '计算机科学与技术', '电子信息工程', '机械电子工程', '电气工程及其自动化', '化学工程与工艺', '电子商务', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441288855899', '蓝**13', 209, 555, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', NULL, NULL, '英语', '24,25,34,35');
INSERT INTO `students` VALUES ('21441289633910', '邓**14', 209, 566, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '化学工程与工艺', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441294200727', '李**11', 209, 550, '是', '计算机科学与技术', '电气工程及其自动化', '电子信息工程', '机械电子工程', '化学工程与工艺', '电子商务', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441296803940', '江**11', 209, 567, '是', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '机械电子工程', '化学工程与工艺', '电子商务', '英语', NULL);
INSERT INTO `students` VALUES ('21441298000965', '田**11', 209, 562, '是', '计算机科学与技术', '机械电子工程', '电子信息工程', '电气工程及其自动化', '化学工程与工艺', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441298403450', '高**15', 209, 557, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '化学工程与工艺', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441299119341', '张**15', 209, 565, '是', '电气工程及其自动化', '计算机科学与技术', NULL, NULL, NULL, NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441301405889', '邓**14', 209, 551, '是', '计算机科学与技术', '电子信息工程', NULL, NULL, NULL, NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441307428340', '杨**17', 209, 568, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '电子商务', '化学工程与工艺', '日语', NULL);
INSERT INTO `students` VALUES ('21441308634069', '文**18', 209, 554, '是', '计算机科学与技术', '电子信息工程', '电子商务', '电气工程及其自动化', '机械电子工程', '化学工程与工艺', '英语', '24');
INSERT INTO `students` VALUES ('21441308959495', '谢**10', 209, 550, '是', '计算机科学与技术', '机械电子工程', '电气工程及其自动化', '电子信息工程', '化学工程与工艺', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441313637808', '谢**12', 209, 549, '是', '电气工程及其自动化', '机械电子工程', '电子信息工程', '计算机科学与技术', '化学工程与工艺', '电子商务', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441316909060', '陈**12', 209, 588, '是', '电气工程及其自动化', '计算机科学与技术', '机械电子工程', '电子信息工程', '化学工程与工艺', NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441320074107', '黄**15', 209, 558, '是', '计算机科学与技术', '电气工程及其自动化', '机械电子工程', '电子信息工程', '电子商务', NULL, '英语', NULL);
INSERT INTO `students` VALUES ('21441320461294', '詹**18', 209, 559, '是', '计算机科学与技术', '化学工程与工艺', '电子信息工程', '电气工程及其自动化', '机械电子工程', '电子商务', '英语', '24');
INSERT INTO `students` VALUES ('21441326500027', '陈**17', 209, 557, '是', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '电子商务', '机械电子工程', '化学工程与工艺', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441327439192', '叶**11', 209, 554, '是', '计算机科学与技术', '电子信息工程', '电子商务', NULL, NULL, NULL, '英语', NULL);
INSERT INTO `students` VALUES ('21441327496787', '张**13', 209, 552, '是', '机械电子工程', '电气工程及其自动化', '电子信息工程', '电子商务', '计算机科学与技术', '化学工程与工艺', '英语', NULL);
INSERT INTO `students` VALUES ('21441332563174', '林*19', 209, 556, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', NULL, NULL, '英语', NULL);
INSERT INTO `students` VALUES ('21441333686616', '毛**12', 209, 552, '是', '计算机科学与技术', '电气工程及其自动化', '机械电子工程', NULL, NULL, NULL, '日语', '24,25,34');
INSERT INTO `students` VALUES ('21441335309867', '李**15', 209, 549, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '化学工程与工艺', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441335656778', '梁**12', 209, 552, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', NULL, NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441338723875', '彭*11', 209, 570, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '化学工程与工艺', NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441340883884', '周**12', 209, 557, '是', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '机械电子工程', '化学工程与工艺', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441343415599', '岳**14', 209, 550, '是', '电气工程及其自动化', '电子信息工程', '计算机科学与技术', '机械电子工程', '电子商务', NULL, '日语', '24,25');
INSERT INTO `students` VALUES ('21441346543548', '吕**16', 209, 559, '是', '电气工程及其自动化', '机械电子工程', '电子信息工程', '计算机科学与技术', '化学工程与工艺', '电子商务', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441347179981', '钟*12', 209, 563, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '化学工程与工艺', '电子商务', '日语', '24,25,38,39');
INSERT INTO `students` VALUES ('21441349814633', '罗**17', 209, 563, '是', '计算机科学与技术', '电气工程及其自动化', NULL, NULL, NULL, NULL, '日语', '24,25,34');
INSERT INTO `students` VALUES ('21441350889203', '李**17', 209, 559, '是', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '机械电子工程', '化学工程与工艺', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441351920646', '梁**12', 209, 557, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '电子商务', NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441352612591', '张**14', 209, 553, '是', '计算机科学与技术', '电子信息工程', '电子商务', '机械电子工程', '电气工程及其自动化', '化学工程与工艺', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441353105752', '王**18', 209, 553, '是', '计算机科学与技术', '电子信息工程', '机械电子工程', '电气工程及其自动化', '化学工程与工艺', NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441353224467', '黄**14', 209, 550, '是', '计算机科学与技术', '电气工程及其自动化', '电子信息工程', '机械电子工程', '电子商务', '化学工程与工艺', '英语', '24,25');
INSERT INTO `students` VALUES ('21441353705411', '林**12', 209, 551, '是', '计算机科学与技术', NULL, NULL, NULL, NULL, NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441355234248', '黄**13', 209, 558, '是', '电气工程及其自动化', '机械电子工程', '计算机科学与技术', '电子信息工程', '化学工程与工艺', NULL, '英语', '24');
INSERT INTO `students` VALUES ('21441355787554', '蔡**17', 209, 556, '是', '电气工程及其自动化', '电子信息工程', '机械电子工程', '计算机科学与技术', '化学工程与工艺', NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441358784418', '蔡**15', 209, 550, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '电子商务', '机械电子工程', '化学工程与工艺', '英语', '24,25');
INSERT INTO `students` VALUES ('21441364337989', '李*16', 209, 564, '是', '电气工程及其自动化', '电子信息工程', '机械电子工程', '计算机科学与技术', '电子商务', '化学工程与工艺', '英语', '24,25');
INSERT INTO `students` VALUES ('21441364516569', '曾**17', 209, 549, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '电子商务', '化学工程与工艺', '英语', '24,25');
INSERT INTO `students` VALUES ('21441364581642', '刘*18', 209, 552, '是', '电气工程及其自动化', '计算机科学与技术', '机械电子工程', '电子信息工程', '化学工程与工艺', NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441367710794', '刘**15', 209, 550, '是', '电气工程及其自动化', '化学工程与工艺', '机械电子工程', '计算机科学与技术', '电子信息工程', '电子商务', '英语', NULL);
INSERT INTO `students` VALUES ('21441370403047', '杜**14', 209, 559, '是', '电子信息工程', '机械电子工程', '电气工程及其自动化', '计算机科学与技术', '化学工程与工艺', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441372694939', '夏**11', 209, 553, '是', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '机械电子工程', NULL, NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441373909209', '林**16', 209, 552, '是', '机械电子工程', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '化学工程与工艺', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441374833631', '陈**11', 209, 550, '是', '机械电子工程', '计算机科学与技术', '电气工程及其自动化', '电子信息工程', '化学工程与工艺', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441376676151', '金**16', 209, 555, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', NULL, NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441377034260', '童**15', 209, 553, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '化学工程与工艺', '电子商务', '英语', NULL);
INSERT INTO `students` VALUES ('21441378558933', '欧**14', 209, 549, '是', '计算机科学与技术', '电子信息工程', '机械电子工程', NULL, NULL, NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441380397332', '陈**16', 209, 555, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '电子商务', '化学工程与工艺', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441381490441', '张**12', 209, 579, '是', '电气工程及其自动化', '电子信息工程', '计算机科学与技术', '机械电子工程', '化学工程与工艺', '电子商务', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441384521403', '袁*11', 209, 562, '是', '计算机科学与技术', '电子信息工程', '电子商务', '电气工程及其自动化', '机械电子工程', NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441387494020', '周**12', 209, 556, '是', '电气工程及其自动化', '电子信息工程', '化学工程与工艺', '机械电子工程', '电子商务', NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441388225510', '王**11', 209, 556, '是', '计算机科学与技术', '电气工程及其自动化', '电子信息工程', '机械电子工程', '电子商务', '化学工程与工艺', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441388864777', '姚**12', 209, 551, '是', '电子信息工程', '电气工程及其自动化', '计算机科学与技术', '机械电子工程', '化学工程与工艺', '电子商务', '日语', '24');
INSERT INTO `students` VALUES ('21441390324138', '陈**12', 209, 552, '是', '计算机科学与技术', '电子信息工程', '机械电子工程', NULL, NULL, NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441391231892', '陈**16', 209, 556, '是', '计算机科学与技术', '电子信息工程', '机械电子工程', '电气工程及其自动化', '电子商务', '化学工程与工艺', '英语', '24,25');
INSERT INTO `students` VALUES ('21441391649876', '李**19', 209, 568, '是', '计算机科学与技术', '机械电子工程', '电气工程及其自动化', '电子信息工程', '化学工程与工艺', NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441393289946', '李**19', 209, 552, '否', '计算机科学与技术', '电子信息工程', '机械电子工程', NULL, NULL, NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441393690728', '黄**17', 209, 551, '是', '计算机科学与技术', '电气工程及其自动化', '机械电子工程', NULL, NULL, NULL, '英语', '24,25,34,35');
INSERT INTO `students` VALUES ('21441398469645', '欧**10', 209, 553, '是', '计算机科学与技术', '电子信息工程', '机械电子工程', '电气工程及其自动化', '电子商务', NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441399591925', '宋*16', 209, 552, '是', '计算机科学与技术', '电气工程及其自动化', '电子信息工程', '机械电子工程', '化学工程与工艺', '电子商务', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441401832539', '孙**16', 209, 583, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '电子商务', '机械电子工程', '化学工程与工艺', '英语', '24,25');
INSERT INTO `students` VALUES ('21441402930247', '张**18', 209, 558, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '电子商务', '化学工程与工艺', '英语', '24,25');
INSERT INTO `students` VALUES ('21441407880751', '吕*18', 209, 554, '是', '电气工程及其自动化', '电子信息工程', '计算机科学与技术', '化学工程与工艺', '机械电子工程', NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441408687629', '袁**11', 209, 551, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '化学工程与工艺', '电子商务', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441411975921', '王**13', 209, 550, '是', '机械电子工程', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '电子商务', NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441412567699', '林**18', 209, 557, '是', '电气工程及其自动化', '电子信息工程', '机械电子工程', NULL, NULL, NULL, '日语', '24,25');
INSERT INTO `students` VALUES ('21441412584130', '黄**15', 209, 553, '是', '电子信息工程', '计算机科学与技术', '电子商务', NULL, NULL, NULL, '英语', '21,24,25,34');
INSERT INTO `students` VALUES ('21441416342179', '陈**10', 209, 555, '是', '计算机科学与技术', '电气工程及其自动化', '机械电子工程', '电子信息工程', '化学工程与工艺', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441416679450', '马**17', 209, 555, '是', '电子信息工程', '计算机科学与技术', '电气工程及其自动化', '机械电子工程', '电子商务', '化学工程与工艺', '英语', '24,25');
INSERT INTO `students` VALUES ('21441417417256', '张**11', 209, 557, '是', '电子信息工程', '电气工程及其自动化', '计算机科学与技术', '机械电子工程', '化学工程与工艺', NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441417883739', '劳**11', 209, 550, '是', '计算机科学与技术', '电子商务', '电子信息工程', NULL, NULL, NULL, '英语', NULL);
INSERT INTO `students` VALUES ('21441418198329', '黎**17', 209, 556, '是', '机械电子工程', '电气工程及其自动化', '电子商务', NULL, NULL, NULL, '英语', '21,22,23,24,25');
INSERT INTO `students` VALUES ('21441418254352', '罗**14', 209, 555, '是', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '机械电子工程', '化学工程与工艺', NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441421729661', '李**10', 209, 569, '是', '电子信息工程', '电气工程及其自动化', '机械电子工程', '计算机科学与技术', NULL, NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441421844725', '罗**19', 209, 550, '是', '计算机科学与技术', '电子信息工程', NULL, NULL, NULL, NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441423304891', '刘**19', 209, 558, '是', '计算机科学与技术', '电子信息工程', '机械电子工程', '电气工程及其自动化', '化学工程与工艺', NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441426874553', '蔡*11', 209, 553, '是', '电气工程及其自动化', '电子信息工程', '计算机科学与技术', '机械电子工程', '化学工程与工艺', NULL, '英语', NULL);
INSERT INTO `students` VALUES ('21441431556155', '邓**17', 209, 558, '是', '计算机科学与技术', '电气工程及其自动化', '机械电子工程', '电子信息工程', '电子商务', '化学工程与工艺', '英语', NULL);
INSERT INTO `students` VALUES ('21441432796147', '郑**17', 209, 565, '是', '计算机科学与技术', '电气工程及其自动化', '电子信息工程', '机械电子工程', '电子商务', '化学工程与工艺', '英语', NULL);
INSERT INTO `students` VALUES ('21441433736546', '曾**12', 209, 586, '是', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '机械电子工程', '化学工程与工艺', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441434072334', '谢**11', 209, 552, '是', '电子信息工程', '电气工程及其自动化', '计算机科学与技术', '机械电子工程', '化学工程与工艺', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441439005085', '柯**14', 209, 552, '是', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '机械电子工程', '化学工程与工艺', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441439930634', '林**12', 209, 556, '是', '计算机科学与技术', '电气工程及其自动化', '机械电子工程', '电子信息工程', NULL, NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441440551218', '林**15', 209, 553, '是', '计算机科学与技术', '电气工程及其自动化', '机械电子工程', '电子商务', '电子信息工程', '化学工程与工艺', '英语', '24,25,34,35');
INSERT INTO `students` VALUES ('21441441418116', '龚**19', 209, 555, '是', '计算机科学与技术', '电气工程及其自动化', '电子信息工程', '机械电子工程', NULL, NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441441862929', '陈*17', 209, 555, '是', '机械电子工程', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '化学工程与工艺', NULL, '英语', NULL);
INSERT INTO `students` VALUES ('21441443620869', '申**19', 209, 549, '是', '电气工程及其自动化', '电子商务', '化学工程与工艺', '电子信息工程', '计算机科学与技术', '机械电子工程', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441443799611', '何**19', 209, 551, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '电子商务', NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441445454071', '邹**19', 209, 557, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', NULL, NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441446970763', '林*12', 209, 562, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', NULL, NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441447662976', '阮**15', 209, 550, '是', '机械电子工程', '计算机科学与技术', '电子信息工程', '电子商务', NULL, NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441447956220', '廉**17', 209, 551, '是', '机械电子工程', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '化学工程与工艺', '电子商务', '英语', NULL);
INSERT INTO `students` VALUES ('21441448440136', '吴**17', 209, 550, '是', '计算机科学与技术', '机械电子工程', '电气工程及其自动化', '化学工程与工艺', '电子信息工程', '电子商务', '英语', NULL);
INSERT INTO `students` VALUES ('21441452991519', '杨*11', 209, 562, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', NULL, NULL, NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441454305321', '罗**12', 209, 553, '是', '机械电子工程', '电气工程及其自动化', '电子信息工程', NULL, NULL, NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441454479459', '何**17', 209, 555, '是', '计算机科学与技术', '电子商务', '电子信息工程', '化学工程与工艺', '电气工程及其自动化', '机械电子工程', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441455124868', '钟**13', 209, 554, '是', '电气工程及其自动化', '机械电子工程', '化学工程与工艺', '计算机科学与技术', '电子信息工程', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441455884959', '张**12', 209, 552, '是', '电气工程及其自动化', '机械电子工程', '计算机科学与技术', '电子信息工程', '电子商务', '化学工程与工艺', '英语', '24,25');
INSERT INTO `students` VALUES ('21441457871401', '周**11', 209, 550, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '化学工程与工艺', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441459767937', '李**12', 209, 557, '是', '计算机科学与技术', '电气工程及其自动化', '机械电子工程', NULL, NULL, NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441461745191', '林**17', 209, 551, '是', '机械电子工程', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '化学工程与工艺', '电子商务', '英语', '24');
INSERT INTO `students` VALUES ('21441464077025', '骆**19', 209, 562, '是', '电气工程及其自动化', '电子信息工程', '计算机科学与技术', '化学工程与工艺', '电子商务', NULL, '英语', '24');
INSERT INTO `students` VALUES ('21441464266922', '覃**18', 209, 557, '是', '计算机科学与技术', '电气工程及其自动化', '电子信息工程', '机械电子工程', '电子商务', '化学工程与工艺', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441465003386', '乐**16', 209, 552, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '电子商务', NULL, '英语', '21,24,25,34,35');
INSERT INTO `students` VALUES ('21441468206057', '寻**14', 209, 549, '是', '电气工程及其自动化', '机械电子工程', '计算机科学与技术', '电子信息工程', '电子商务', '化学工程与工艺', '英语', '24,25');
INSERT INTO `students` VALUES ('21441468278819', '车**18', 209, 578, '是', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '机械电子工程', '化学工程与工艺', NULL, '英语', NULL);
INSERT INTO `students` VALUES ('21441468764797', '陈**17', 209, 566, '是', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '机械电子工程', '化学工程与工艺', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441469595600', '梁**17', 209, 549, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '电子商务', '化学工程与工艺', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441470495435', '张**11', 209, 560, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '电子商务', NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441471976741', '温*15', 209, 555, '是', '电气工程及其自动化', '机械电子工程', '电子信息工程', '计算机科学与技术', '化学工程与工艺', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441471977864', '苏**15', 209, 555, '是', '计算机科学与技术', '机械电子工程', '电气工程及其自动化', '电子信息工程', '电子商务', NULL, '英语', '21,24,25,34');
INSERT INTO `students` VALUES ('21441476989171', '曾**16', 209, 553, '是', '计算机科学与技术', '电气工程及其自动化', '电子信息工程', '机械电子工程', '电子商务', NULL, '英语', '21,24,25');
INSERT INTO `students` VALUES ('21441477029686', '杜**18', 209, 555, '是', '计算机科学与技术', '电气工程及其自动化', '机械电子工程', '电子信息工程', '电子商务', '化学工程与工艺', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441479911779', '黄**15', 209, 555, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '电子商务', '化学工程与工艺', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441480841902', '张**11', 209, 551, '是', '电气工程及其自动化', '机械电子工程', '电子信息工程', '电子商务', '计算机科学与技术', '化学工程与工艺', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441481687828', '龙**11', 209, 550, '是', '计算机科学与技术', '电子信息工程', '机械电子工程', '电气工程及其自动化', '电子商务', '化学工程与工艺', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441483868407', '王*16', 209, 560, '是', '计算机科学与技术', '电子信息工程', '电子商务', '机械电子工程', '电气工程及其自动化', '化学工程与工艺', '英语', '24,25');
INSERT INTO `students` VALUES ('21441484342676', '张**18', 209, 549, '是', '计算机科学与技术', '电气工程及其自动化', '电子信息工程', '机械电子工程', '电子商务', '化学工程与工艺', '英语', '24,25');
INSERT INTO `students` VALUES ('21441484383235', '杨**16', 209, 556, '是', '机械电子工程', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', NULL, NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441485217631', '曾**19', 209, 557, '是', '计算机科学与技术', '化学工程与工艺', '电子信息工程', '电气工程及其自动化', '机械电子工程', '电子商务', '英语', '24');
INSERT INTO `students` VALUES ('21441485496408', '唐**13', 209, 561, '是', '计算机科学与技术', '电气工程及其自动化', '机械电子工程', '电子信息工程', '电子商务', NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441485906748', '仇**18', 209, 551, '是', '计算机科学与技术', '电气工程及其自动化', '电子信息工程', '机械电子工程', '电子商务', '化学工程与工艺', '英语', '24,25');
INSERT INTO `students` VALUES ('21441486933661', '丘**18', 209, 557, '是', '电子信息工程', '计算机科学与技术', '电气工程及其自动化', '机械电子工程', '电子商务', NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441487371811', '张**13', 209, 580, '是', '计算机科学与技术', '电子信息工程', '机械电子工程', '电气工程及其自动化', '化学工程与工艺', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441487945890', '王**16', 209, 557, '是', '机械电子工程', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '化学工程与工艺', '电子商务', '日语', '24,25,34');
INSERT INTO `students` VALUES ('21441488843300', '梁**13', 209, 553, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '电子商务', '化学工程与工艺', '英语', '24,25');
INSERT INTO `students` VALUES ('21441489781435', '潘**19', 209, 553, '是', '计算机科学与技术', '电子信息工程', '机械电子工程', '电气工程及其自动化', '电子商务', '化学工程与工艺', '英语', '24,25');
INSERT INTO `students` VALUES ('21441490002644', '许**17', 209, 553, '是', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '机械电子工程', NULL, NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441491239323', '陈*12', 209, 566, '是', '计算机科学与技术', '机械电子工程', '电子信息工程', '电气工程及其自动化', '化学工程与工艺', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441498763163', '钟**14', 209, 561, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '化学工程与工艺', '电子商务', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441501727593', '吴**18', 209, 553, '是', '计算机科学与技术', '机械电子工程', '电气工程及其自动化', '电子信息工程', '化学工程与工艺', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441503936787', '叶**11', 209, 556, '是', '机械电子工程', '电子信息工程', '计算机科学与技术', '电气工程及其自动化', '化学工程与工艺', NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441505448858', '赵**11', 209, 553, '是', '机械电子工程', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '化学工程与工艺', '电子商务', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441506892564', '黄**19', 209, 553, '是', '机械电子工程', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '化学工程与工艺', NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441507879253', '朱**15', 209, 556, '是', '计算机科学与技术', '电子信息工程', '机械电子工程', '电气工程及其自动化', '电子商务', '化学工程与工艺', '英语', '24,25');
INSERT INTO `students` VALUES ('21441509741143', '劳**10', 209, 562, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', NULL, NULL, NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441514240023', '陈**12', 209, 549, '是', '计算机科学与技术', '电子信息工程', '机械电子工程', '电气工程及其自动化', '化学工程与工艺', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441514440794', '梁**17', 209, 556, '是', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', NULL, NULL, NULL, '英语', NULL);
INSERT INTO `students` VALUES ('21441516324160', '黄**14', 209, 550, '是', '电子信息工程', '计算机科学与技术', NULL, NULL, NULL, NULL, '英语', NULL);
INSERT INTO `students` VALUES ('21441516929128', '刘**10', 209, 550, '是', '电子商务', '电子信息工程', '计算机科学与技术', '机械电子工程', '电气工程及其自动化', '化学工程与工艺', '英语', '24,25');
INSERT INTO `students` VALUES ('21441519244266', '唐**18', 209, 555, '是', '电子信息工程', '计算机科学与技术', '电气工程及其自动化', '电子商务', '机械电子工程', '化学工程与工艺', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441519983252', '黄**15', 209, 562, '是', '计算机科学与技术', '电气工程及其自动化', '电子信息工程', '机械电子工程', NULL, NULL, '日语', '24,25,34');
INSERT INTO `students` VALUES ('21441521074974', '李**15', 209, 550, '是', '计算机科学与技术', '电子信息工程', '机械电子工程', '电气工程及其自动化', '电子商务', '化学工程与工艺', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441523170663', '黄**17', 209, 552, '是', '电子信息工程', '计算机科学与技术', '电子商务', '电气工程及其自动化', '化学工程与工艺', '机械电子工程', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441523910163', '苏**13', 209, 558, '是', '计算机科学与技术', '电气工程及其自动化', '机械电子工程', '电子信息工程', '化学工程与工艺', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441523933860', '袁**11', 209, 557, '是', '机械电子工程', '电气工程及其自动化', '电子信息工程', '化学工程与工艺', '计算机科学与技术', '电子商务', '英语', '24,25,34,35');
INSERT INTO `students` VALUES ('21441527645545', '叶*17', 209, 573, '是', '计算机科学与技术', '电子信息工程', '化学工程与工艺', '机械电子工程', '电气工程及其自动化', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441529772195', '梁**12', 209, 550, '是', '计算机科学与技术', '机械电子工程', '电气工程及其自动化', '电子信息工程', '电子商务', '化学工程与工艺', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441532033438', '许**18', 209, 551, '是', '机械电子工程', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '化学工程与工艺', NULL, '英语', NULL);
INSERT INTO `students` VALUES ('21441534661664', '潘**13', 209, 552, '是', '计算机科学与技术', '电子信息工程', '化学工程与工艺', NULL, NULL, NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441535232051', '钟**12', 209, 557, '是', '电气工程及其自动化', '电子信息工程', '机械电子工程', NULL, NULL, NULL, '英语', '24,25,34,35');
INSERT INTO `students` VALUES ('21441535604663', '杨*19', 209, 551, '是', '机械电子工程', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '化学工程与工艺', '电子商务', '日语', '24,25,34');
INSERT INTO `students` VALUES ('21441536049474', '张**18', 209, 552, '是', '电子信息工程', '计算机科学与技术', '电气工程及其自动化', '机械电子工程', '电子商务', NULL, '英语', '21,24');
INSERT INTO `students` VALUES ('21441537048101', '乔*10', 209, 553, '是', '电气工程及其自动化', '机械电子工程', NULL, NULL, NULL, NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441540219951', '王*18', 209, 561, '是', '计算机科学与技术', '电子信息工程', '机械电子工程', '电气工程及其自动化', '电子商务', '化学工程与工艺', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441542013454', '李**16', 209, 550, '是', '机械电子工程', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '化学工程与工艺', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441543665001', '何*17', 209, 555, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '电子商务', '化学工程与工艺', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441544755460', '彭**17', 209, 554, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '电子商务', '机械电子工程', NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441544846159', '陈**15', 209, 552, '是', '计算机科学与技术', '电气工程及其自动化', '电子信息工程', '机械电子工程', '电子商务', '化学工程与工艺', '英语', '24,25');
INSERT INTO `students` VALUES ('21441547968411', '黎**12', 209, 550, '是', '机械电子工程', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '化学工程与工艺', NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441553242906', '黄**16', 209, 559, '是', '计算机科学与技术', '电子信息工程', '机械电子工程', '电气工程及其自动化', '化学工程与工艺', NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441555904421', '谢**17', 209, 555, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '电子商务', '化学工程与工艺', '英语', '24');
INSERT INTO `students` VALUES ('21441564055863', '刘*13', 209, 549, '是', '机械电子工程', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', NULL, NULL, '英语', '24,25,34,35');
INSERT INTO `students` VALUES ('21441565622191', '肖**13', 209, 552, '是', '计算机科学与技术', '电气工程及其自动化', '电子信息工程', '机械电子工程', NULL, NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441567346760', '过*17', 209, 558, '是', '计算机科学与技术', NULL, NULL, NULL, NULL, NULL, '英语', NULL);
INSERT INTO `students` VALUES ('21441568716660', '戴**18', 209, 555, '是', '计算机科学与技术', '电子信息工程', '机械电子工程', '电气工程及其自动化', '电子商务', '化学工程与工艺', '英语', '24,25');
INSERT INTO `students` VALUES ('21441571172554', '韦**14', 209, 554, '是', '电子商务', '电子信息工程', '计算机科学与技术', '电气工程及其自动化', '机械电子工程', '化学工程与工艺', '英语', '24,25');
INSERT INTO `students` VALUES ('21441573181421', '王**14', 209, 555, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', NULL, NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441573381081', '张**12', 209, 557, '是', '电子信息工程', '计算机科学与技术', '机械电子工程', NULL, NULL, NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441575464937', '冯**15', 209, 552, '是', '计算机科学与技术', '机械电子工程', '电子信息工程', '电气工程及其自动化', '化学工程与工艺', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441577532844', '肖*18', 209, 563, '是', '机械电子工程', '计算机科学与技术', '电气工程及其自动化', '电子信息工程', '电子商务', NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441579944296', '张*18', 209, 555, '是', '机械电子工程', '计算机科学与技术', '电气工程及其自动化', '电子信息工程', '化学工程与工艺', NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441582216481', '郭**14', 209, 553, '是', '计算机科学与技术', '电子信息工程', '电子商务', '机械电子工程', '电气工程及其自动化', NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441584694856', '陈**16', 209, 555, '是', '计算机科学与技术', '电子信息工程', '机械电子工程', '电气工程及其自动化', '化学工程与工艺', NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441585513441', '吴**14', 209, 558, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '电子商务', NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441585895528', '彭**14', 209, 551, '是', '电气工程及其自动化', '机械电子工程', '电子信息工程', NULL, NULL, NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441590525924', '陈**13', 209, 554, '是', '机械电子工程', '电子信息工程', '电气工程及其自动化', '计算机科学与技术', '电子商务', '化学工程与工艺', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441592739354', '郭**11', 209, 555, '是', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '机械电子工程', NULL, NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441597399005', '张**16', 209, 569, '是', '电气工程及其自动化', '计算机科学与技术', '机械电子工程', '电子信息工程', '化学工程与工艺', NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441598605899', '操**11', 209, 555, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '化学工程与工艺', NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441601248249', '梁**16', 209, 550, '是', '计算机科学与技术', '电子信息工程', '电子商务', '机械电子工程', '电气工程及其自动化', NULL, '日语', '24,25');
INSERT INTO `students` VALUES ('21441603026046', '何**11', 209, 556, '是', '机械电子工程', '电子信息工程', '电气工程及其自动化', '计算机科学与技术', '化学工程与工艺', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441604102252', '李**11', 209, 555, '是', '计算机科学与技术', '电子信息工程', '电子商务', '化学工程与工艺', '电气工程及其自动化', '机械电子工程', '英语', '24,25');
INSERT INTO `students` VALUES ('21441604305554', '刘*18', 209, 550, '是', '电气工程及其自动化', '计算机科学与技术', '机械电子工程', '电子信息工程', NULL, NULL, '日语', '24,25');
INSERT INTO `students` VALUES ('21441608233033', '邓**19', 209, 552, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '化学工程与工艺', NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441608617531', '陈**14', 209, 571, '是', '电子信息工程', '计算机科学与技术', '机械电子工程', '电气工程及其自动化', NULL, NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441609176359', '杨*17', 209, 566, '是', '计算机科学与技术', '电气工程及其自动化', '电子信息工程', '电子商务', NULL, NULL, '英语', NULL);
INSERT INTO `students` VALUES ('21441612311910', '马*18', 209, 552, '是', '机械电子工程', '电气工程及其自动化', '电子信息工程', '化学工程与工艺', '电子商务', '计算机科学与技术', '日语', '24');
INSERT INTO `students` VALUES ('21441613422742', '杨**13', 209, 557, '是', '计算机科学与技术', '电子信息工程', '电子商务', '化学工程与工艺', '机械电子工程', '电气工程及其自动化', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441617601468', '林**12', 209, 549, '是', '电气工程及其自动化', '机械电子工程', '计算机科学与技术', '电子信息工程', '电子商务', NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441617931812', '赖**17', 209, 555, '是', '计算机科学与技术', '机械电子工程', '电气工程及其自动化', '电子信息工程', '化学工程与工艺', '电子商务', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441619089553', '赖**10', 209, 555, '是', '机械电子工程', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '化学工程与工艺', NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441619149183', '刘**13', 209, 550, '是', '电子信息工程', '计算机科学与技术', '电气工程及其自动化', '机械电子工程', NULL, NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441620718394', '陈**18', 209, 565, '是', '机械电子工程', '计算机科学与技术', '电气工程及其自动化', '电子信息工程', '化学工程与工艺', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441624260528', '陆**17', 209, 555, '是', '电气工程及其自动化', '机械电子工程', '计算机科学与技术', '电子信息工程', NULL, NULL, '英语', NULL);
INSERT INTO `students` VALUES ('21441629931424', '冯**19', 209, 551, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '电子商务', '化学工程与工艺', '英语', '24,25');
INSERT INTO `students` VALUES ('21441631110168', '杨**10', 209, 553, '是', '电子信息工程', '电子商务', '电气工程及其自动化', '机械电子工程', '化学工程与工艺', '计算机科学与技术', '英语', '24,25');
INSERT INTO `students` VALUES ('21441635514468', '李**11', 209, 562, '是', '机械电子工程', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '化学工程与工艺', '电子商务', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441640142997', '李**11', 209, 555, '是', '电气工程及其自动化', '计算机科学与技术', '机械电子工程', '电子信息工程', '化学工程与工艺', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441642179196', '黄**18', 209, 550, '是', '电气工程及其自动化', '电子信息工程', '机械电子工程', '计算机科学与技术', '化学工程与工艺', NULL, '英语', '24');
INSERT INTO `students` VALUES ('21441644162315', '梁**18', 209, 558, '是', '电气工程及其自动化', '机械电子工程', '电子商务', '计算机科学与技术', '电子信息工程', '化学工程与工艺', '英语', '24,25');
INSERT INTO `students` VALUES ('21441646736130', '王**16', 209, 561, '是', '计算机科学与技术', '电气工程及其自动化', '电子信息工程', '机械电子工程', '电子商务', '化学工程与工艺', '英语', '24,25');
INSERT INTO `students` VALUES ('21441648026273', '蓝*13', 209, 554, '是', '电气工程及其自动化', NULL, NULL, NULL, NULL, NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441649438435', '陈**13', 209, 553, '是', '机械电子工程', '电子商务', NULL, NULL, NULL, NULL, '英语', '21,22,23,24,25');
INSERT INTO `students` VALUES ('21441650553895', '杨*12', 209, 552, '是', '电气工程及其自动化', '机械电子工程', '电子信息工程', '化学工程与工艺', '计算机科学与技术', '电子商务', '英语', '24');
INSERT INTO `students` VALUES ('21441652357988', '钟**12', 209, 556, '是', '电气工程及其自动化', '机械电子工程', '计算机科学与技术', '电子信息工程', '电子商务', '化学工程与工艺', '英语', '24,25');
INSERT INTO `students` VALUES ('21441654135875', '黄**15', 209, 553, '是', '机械电子工程', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', NULL, NULL, '英语', '21,24,25');
INSERT INTO `students` VALUES ('21441659804908', '汪**18', 209, 558, '是', '计算机科学与技术', NULL, NULL, NULL, NULL, NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441662252674', '颜**14', 209, 550, '是', '计算机科学与技术', '电气工程及其自动化', '电子信息工程', '机械电子工程', '电子商务', '化学工程与工艺', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441664363769', '黄**10', 209, 561, '是', '计算机科学与技术', '电气工程及其自动化', '电子信息工程', '机械电子工程', '化学工程与工艺', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441665155383', '梁**16', 209, 555, '是', '电气工程及其自动化', '计算机科学与技术', '机械电子工程', '电子信息工程', '化学工程与工艺', '电子商务', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441666437570', '徐**12', 209, 562, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '电子商务', '机械电子工程', '化学工程与工艺', '英语', NULL);
INSERT INTO `students` VALUES ('21441666727251', '林**14', 209, 564, '是', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '机械电子工程', '化学工程与工艺', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441666874873', '王*13', 209, 555, '是', '计算机科学与技术', '电气工程及其自动化', '电子信息工程', '机械电子工程', '化学工程与工艺', '电子商务', '英语', NULL);
INSERT INTO `students` VALUES ('21441672273361', '王**18', 209, 579, '是', '机械电子工程', '计算机科学与技术', '电气工程及其自动化', '电子信息工程', '电子商务', '化学工程与工艺', '英语', '24,25');
INSERT INTO `students` VALUES ('21441674213706', '古**13', 209, 556, '是', '机械电子工程', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '化学工程与工艺', '电子商务', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441677073029', '林**11', 209, 557, '是', '计算机科学与技术', '电气工程及其自动化', NULL, NULL, NULL, NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441678212237', '许**19', 209, 550, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', NULL, NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441681864897', '张**10', 209, 553, '是', '计算机科学与技术', '电气工程及其自动化', '电子信息工程', '机械电子工程', '化学工程与工艺', '电子商务', '英语', '24,25,34,35');
INSERT INTO `students` VALUES ('21441682829548', '张**14', 209, 550, '是', '电气工程及其自动化', '电子信息工程', '计算机科学与技术', '机械电子工程', '电子商务', '化学工程与工艺', '英语', '24,25');
INSERT INTO `students` VALUES ('21441682851334', '罗**15', 209, 555, '是', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '机械电子工程', '电子商务', '化学工程与工艺', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441683660635', '黄**16', 209, 552, '否', '机械电子工程', '化学工程与工艺', '电子信息工程', '计算机科学与技术', NULL, NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441684816087', '杨**18', 209, 559, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '电子商务', '化学工程与工艺', '英语', '24,25');
INSERT INTO `students` VALUES ('21441685588889', '洪**18', 209, 570, '是', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '机械电子工程', '化学工程与工艺', '电子商务', '英语', '24,25,34,35');
INSERT INTO `students` VALUES ('21441686197563', '谢**10', 209, 555, '是', '计算机科学与技术', '电气工程及其自动化', '电子商务', '电子信息工程', '机械电子工程', '化学工程与工艺', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441687804522', '黄**12', 209, 563, '是', '计算机科学与技术', '电气工程及其自动化', '电子信息工程', '电子商务', '机械电子工程', NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441689399402', '张**17', 209, 555, '是', '计算机科学与技术', '电气工程及其自动化', '电子信息工程', '机械电子工程', '化学工程与工艺', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441692510447', '林**17', 209, 558, '是', '计算机科学与技术', '电气工程及其自动化', '机械电子工程', '电子信息工程', '化学工程与工艺', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441695866870', '区**17', 209, 562, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '电子商务', '化学工程与工艺', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441696393190', '朱**12', 209, 554, '是', '电气工程及其自动化', '计算机科学与技术', '机械电子工程', '电子信息工程', '化学工程与工艺', '电子商务', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441700820890', '陈*19', 209, 554, '是', '机械电子工程', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '化学工程与工艺', '电子商务', '英语', NULL);
INSERT INTO `students` VALUES ('21441702232027', '王*10', 209, 553, '是', '计算机科学与技术', '电气工程及其自动化', '机械电子工程', '化学工程与工艺', '电子信息工程', NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441702467284', '梁**15', 209, 552, '是', '机械电子工程', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '化学工程与工艺', '电子商务', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441704163535', '彭**13', 209, 556, '是', '机械电子工程', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '化学工程与工艺', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441707891402', '吴**13', 209, 551, '是', '计算机科学与技术', '电子信息工程', '电子商务', '电气工程及其自动化', '化学工程与工艺', NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441708652034', '黄**11', 209, 550, '是', '计算机科学与技术', '电气工程及其自动化', '机械电子工程', '电子信息工程', '化学工程与工艺', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441712219612', '彭**11', 209, 566, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '化学工程与工艺', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441713117112', '许**13', 209, 553, '是', '计算机科学与技术', '电气工程及其自动化', '电子信息工程', '机械电子工程', '化学工程与工艺', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441713139088', '何**15', 209, 551, '是', '电气工程及其自动化', '机械电子工程', '电子信息工程', '计算机科学与技术', '化学工程与工艺', NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441714929999', '谭**18', 209, 557, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '电子商务', NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441716602360', '宋**18', 209, 552, '是', '计算机科学与技术', '机械电子工程', '电子信息工程', '电气工程及其自动化', '电子商务', NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441717572470', '刘**18', 209, 552, '是', '机械电子工程', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '化学工程与工艺', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441717613389', '罗**15', 209, 563, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '化学工程与工艺', '电子商务', '英语', '24');
INSERT INTO `students` VALUES ('21441718790988', '潘**16', 209, 561, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '化学工程与工艺', '电子商务', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441721060520', '温*16', 209, 557, '是', '机械电子工程', '电气工程及其自动化', '计算机科学与技术', NULL, NULL, NULL, '英语', NULL);
INSERT INTO `students` VALUES ('21441721489127', '黄**11', 209, 552, '是', '计算机科学与技术', '机械电子工程', '化学工程与工艺', '电子信息工程', NULL, NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441722133328', '黄**19', 209, 555, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '电子商务', '化学工程与工艺', '英语', '24');
INSERT INTO `students` VALUES ('21441724554632', '卓**14', 209, 550, '是', '计算机科学与技术', '电子信息工程', '机械电子工程', '电气工程及其自动化', '电子商务', '化学工程与工艺', '英语', '24,25');
INSERT INTO `students` VALUES ('21441725900188', '韦*18', 209, 552, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '化学工程与工艺', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441726268783', '杨**18', 209, 552, '是', '机械电子工程', '计算机科学与技术', '电气工程及其自动化', '化学工程与工艺', '电子信息工程', '电子商务', '英语', NULL);
INSERT INTO `students` VALUES ('21441728212634', '梁**18', 209, 572, '是', '计算机科学与技术', '机械电子工程', '电子信息工程', '电气工程及其自动化', '化学工程与工艺', '电子商务', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441730371019', '叶**18', 209, 556, '是', '机械电子工程', '电气工程及其自动化', NULL, NULL, NULL, NULL, '英语', '21,22,23,24,25');
INSERT INTO `students` VALUES ('21441733771113', '廖*15', 209, 554, '是', '电子信息工程', '计算机科学与技术', '电气工程及其自动化', '电子商务', '机械电子工程', '化学工程与工艺', '英语', '24,25');
INSERT INTO `students` VALUES ('21441734898449', '魏*11', 209, 555, '是', '机械电子工程', '电气工程及其自动化', '电子信息工程', '计算机科学与技术', '化学工程与工艺', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441736473869', '黄**16', 209, 550, '是', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '电子商务', '机械电子工程', NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441736597641', '陈**12', 209, 551, '是', '计算机科学与技术', '机械电子工程', '电气工程及其自动化', '化学工程与工艺', '电子信息工程', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441736892541', '陈**12', 209, 550, '是', '计算机科学与技术', '电子信息工程', '机械电子工程', '电气工程及其自动化', '化学工程与工艺', '电子商务', '英语', NULL);
INSERT INTO `students` VALUES ('21441738992668', '黎**16', 209, 554, '是', '化学工程与工艺', '机械电子工程', '电气工程及其自动化', '电子信息工程', '计算机科学与技术', '电子商务', '日语', '24,25');
INSERT INTO `students` VALUES ('21441740167511', '韩**18', 209, 561, '是', '机械电子工程', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', NULL, NULL, '英语', NULL);
INSERT INTO `students` VALUES ('21441740756615', '王**12', 209, 552, '是', '机械电子工程', '电气工程及其自动化', '电子信息工程', '计算机科学与技术', '化学工程与工艺', '电子商务', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441740879971', '黄**10', 209, 550, '是', '计算机科学与技术', '电子信息工程', '电子商务', '电气工程及其自动化', '机械电子工程', NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441741004833', '黄**18', 209, 556, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '化学工程与工艺', '电子商务', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441742074735', '谭**13', 209, 551, '是', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '机械电子工程', NULL, NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441742369975', '苏**16', 209, 560, '是', '计算机科学与技术', '电子信息工程', '机械电子工程', '电气工程及其自动化', '电子商务', '化学工程与工艺', '英语', '24');
INSERT INTO `students` VALUES ('21441743386347', '李**13', 209, 555, '是', '机械电子工程', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '电子商务', NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441743403780', '郑**15', 209, 550, '是', '机械电子工程', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '化学工程与工艺', NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441743729617', '李*16', 209, 553, '是', '电子信息工程', '计算机科学与技术', '电气工程及其自动化', '机械电子工程', NULL, NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441743840948', '林**18', 209, 555, '是', '计算机科学与技术', '电子信息工程', '机械电子工程', '电子商务', NULL, NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441746029126', '李**16', 209, 550, '是', '化学工程与工艺', '计算机科学与技术', NULL, NULL, NULL, NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441748332690', '邓**15', 209, 557, '是', '计算机科学与技术', '电子信息工程', '电子商务', NULL, NULL, NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441750041339', '刘**19', 209, 550, '是', '机械电子工程', '电气工程及其自动化', '电子信息工程', '计算机科学与技术', '电子商务', '化学工程与工艺', '英语', '24,25');
INSERT INTO `students` VALUES ('21441750431826', '林**18', 209, 554, '是', '电子信息工程', '计算机科学与技术', '电气工程及其自动化', '机械电子工程', '化学工程与工艺', NULL, '英语', NULL);
INSERT INTO `students` VALUES ('21441751601668', '黄**15', 209, 568, '是', '计算机科学与技术', '机械电子工程', NULL, NULL, NULL, NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441751887570', '颜**15', 209, 556, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '化学工程与工艺', NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441752421027', '林**17', 209, 552, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '化学工程与工艺', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441753444670', '张**16', 209, 550, '是', '计算机科学与技术', '电子信息工程', '机械电子工程', '电气工程及其自动化', '化学工程与工艺', NULL, '英语', '24');
INSERT INTO `students` VALUES ('21441755834971', '张**13', 209, 552, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '电子商务', '化学工程与工艺', '英语', NULL);
INSERT INTO `students` VALUES ('21441756888773', '贾*13', 209, 561, '是', '机械电子工程', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '化学工程与工艺', NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441756990838', '翁*11', 209, 565, '是', '计算机科学与技术', '电子信息工程', '机械电子工程', '电气工程及其自动化', NULL, NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441757273539', '黄**11', 209, 561, '是', '机械电子工程', '计算机科学与技术', '电气工程及其自动化', '电子信息工程', '化学工程与工艺', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441760014344', '徐**18', 209, 551, '是', '电气工程及其自动化', '机械电子工程', '计算机科学与技术', '电子信息工程', '化学工程与工艺', '电子商务', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441767822789', '余**12', 209, 554, '是', '计算机科学与技术', '电子商务', '化学工程与工艺', NULL, NULL, NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441769325477', '柯**17', 209, 551, '是', '计算机科学与技术', NULL, NULL, NULL, NULL, NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441771218218', '殷**19', 209, 555, '是', '计算机科学与技术', '电子信息工程', '机械电子工程', NULL, NULL, NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441771284223', '黄**16', 209, 552, '是', '电气工程及其自动化', '计算机科学与技术', NULL, NULL, NULL, NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441773401164', '陈**16', 209, 573, '是', '计算机科学与技术', '电气工程及其自动化', '电子信息工程', '化学工程与工艺', '机械电子工程', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441773761919', '范*12', 209, 552, '否', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', NULL, NULL, NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441776130350', '李**14', 209, 578, '是', '机械电子工程', '计算机科学与技术', NULL, NULL, NULL, NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441777703875', '李**18', 209, 549, '是', '机械电子工程', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '化学工程与工艺', '电子商务', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441782009800', '杨**13', 209, 553, '是', '电子信息工程', '计算机科学与技术', '电气工程及其自动化', '电子商务', '机械电子工程', '化学工程与工艺', '英语', NULL);
INSERT INTO `students` VALUES ('21441784591161', '谢**13', 209, 549, '是', '电气工程及其自动化', '机械电子工程', '电子商务', NULL, NULL, NULL, '英语', '21,22,23,24,25');
INSERT INTO `students` VALUES ('21441786873524', '李**12', 209, 551, '是', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '机械电子工程', '化学工程与工艺', '电子商务', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441787193164', '谢**12', 209, 557, '是', '计算机科学与技术', '电子信息工程', '电子商务', '机械电子工程', '化学工程与工艺', '电气工程及其自动化', '英语', NULL);
INSERT INTO `students` VALUES ('21441793850936', '于*17', 209, 551, '是', '电气工程及其自动化', '计算机科学与技术', '机械电子工程', '电子信息工程', '化学工程与工艺', '电子商务', '英语', NULL);
INSERT INTO `students` VALUES ('21441794860596', '陈**16', 209, 556, '是', '电气工程及其自动化', '电子信息工程', '计算机科学与技术', '机械电子工程', NULL, NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441796588825', '梁**15', 209, 553, '是', '电气工程及其自动化', '机械电子工程', '计算机科学与技术', '电子信息工程', '化学工程与工艺', '电子商务', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441798162870', '周**17', 209, 553, '是', '计算机科学与技术', '机械电子工程', '电气工程及其自动化', '电子信息工程', '化学工程与工艺', NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441805010483', '宋**10', 209, 551, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '电子商务', '化学工程与工艺', '英语', '24,25');
INSERT INTO `students` VALUES ('21441807758729', '钟**16', 209, 551, '是', '电子信息工程', '计算机科学与技术', '电气工程及其自动化', '机械电子工程', '化学工程与工艺', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441808093448', '王*19', 209, 554, '是', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '化学工程与工艺', '电子商务', '机械电子工程', '英语', '24,25');
INSERT INTO `students` VALUES ('21441808843041', '谢**11', 209, 560, '是', '计算机科学与技术', '电气工程及其自动化', '电子信息工程', '机械电子工程', '电子商务', NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441808933977', '童**18', 209, 556, '是', '电气工程及其自动化', '机械电子工程', '计算机科学与技术', '电子信息工程', '化学工程与工艺', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441809178037', '黎**18', 209, 555, '是', '机械电子工程', '计算机科学与技术', '电气工程及其自动化', '电子信息工程', '化学工程与工艺', '电子商务', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441809657614', '蓝*13', 209, 551, '是', '计算机科学与技术', '电子信息工程', NULL, NULL, NULL, NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441811234603', '王**17', 209, 560, '是', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '机械电子工程', '电子商务', '化学工程与工艺', '英语', '24,25');
INSERT INTO `students` VALUES ('21441813331634', '黄*14', 209, 554, '是', '计算机科学与技术', '电气工程及其自动化', '电子信息工程', '化学工程与工艺', NULL, NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441816938385', '李*17', 209, 552, '是', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '机械电子工程', '化学工程与工艺', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441818050752', '邱**12', 209, 556, '是', '计算机科学与技术', '机械电子工程', '电气工程及其自动化', '电子商务', '电子信息工程', '化学工程与工艺', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441818525191', '郑**10', 209, 550, '是', '计算机科学与技术', '电气工程及其自动化', '机械电子工程', '电子信息工程', '化学工程与工艺', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441819882121', '郑**18', 209, 553, '是', '机械电子工程', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '化学工程与工艺', '电子商务', '英语', '24');
INSERT INTO `students` VALUES ('21441823745135', '邓**15', 209, 578, '是', '计算机科学与技术', '电子信息工程', NULL, NULL, NULL, NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441824040249', '曾**11', 209, 551, '是', '计算机科学与技术', '电气工程及其自动化', '化学工程与工艺', '机械电子工程', '电子信息工程', '电子商务', '英语', '24');
INSERT INTO `students` VALUES ('21441828302854', '冯**11', 209, 549, '是', '电气工程及其自动化', NULL, NULL, NULL, NULL, NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441829585395', '孔**18', 209, 570, '是', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '化学工程与工艺', '机械电子工程', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441832251159', '彭*13', 209, 552, '是', '计算机科学与技术', '电气工程及其自动化', '电子信息工程', '机械电子工程', '化学工程与工艺', '电子商务', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441833955649', '刘**13', 209, 558, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '电子商务', '化学工程与工艺', '英语', '24,25');
INSERT INTO `students` VALUES ('21441837917254', '黄**11', 209, 553, '是', '机械电子工程', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '化学工程与工艺', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441838442094', '吴**15', 209, 550, '是', '计算机科学与技术', '电子信息工程', '电子商务', '电气工程及其自动化', '机械电子工程', NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441838915091', '余**14', 209, 550, '是', '机械电子工程', '电气工程及其自动化', '电子信息工程', '计算机科学与技术', '电子商务', '化学工程与工艺', '英语', '24,25');
INSERT INTO `students` VALUES ('21441840684529', '陈**11', 209, 557, '是', '机械电子工程', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '化学工程与工艺', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441842245505', '钟**13', 209, 565, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '化学工程与工艺', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441843475693', '蔡**12', 209, 561, '是', '计算机科学与技术', '电气工程及其自动化', '电子信息工程', '电子商务', '机械电子工程', '化学工程与工艺', '英语', NULL);
INSERT INTO `students` VALUES ('21441844078928', '张**12', 209, 551, '是', '电子商务', '计算机科学与技术', '电子信息工程', '机械电子工程', '电气工程及其自动化', '化学工程与工艺', '英语', '24,25');
INSERT INTO `students` VALUES ('21441845158944', '程**13', 209, 553, '是', '计算机科学与技术', '电气工程及其自动化', '机械电子工程', '电子信息工程', '化学工程与工艺', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441847565231', '郭*18', 209, 552, '是', '化学工程与工艺', '计算机科学与技术', '电子信息工程', '电子商务', '电气工程及其自动化', '机械电子工程', '日语', '24,25');
INSERT INTO `students` VALUES ('21441848082291', '张**18', 209, 550, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', NULL, NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441849014426', '尹**18', 209, 554, '是', '计算机科学与技术', '机械电子工程', '电气工程及其自动化', '电子信息工程', '化学工程与工艺', NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441849057936', '杜**16', 209, 557, '是', '机械电子工程', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '化学工程与工艺', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441849311046', '相*18', 209, 556, '是', '计算机科学与技术', '电子信息工程', '化学工程与工艺', '机械电子工程', '电气工程及其自动化', NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441849942213', '罗**12', 209, 554, '是', '机械电子工程', '计算机科学与技术', '电气工程及其自动化', '电子信息工程', '化学工程与工艺', '电子商务', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441851383317', '涂**14', 209, 554, '是', '电子信息工程', '计算机科学与技术', '机械电子工程', '电气工程及其自动化', '化学工程与工艺', '电子商务', '英语', '24,25,37');
INSERT INTO `students` VALUES ('21441851618431', '冯**16', 209, 555, '是', '电子信息工程', '机械电子工程', '电气工程及其自动化', '化学工程与工艺', NULL, NULL, '英语', NULL);
INSERT INTO `students` VALUES ('21441852923859', '赖**15', 209, 552, '是', '电子信息工程', '计算机科学与技术', '电气工程及其自动化', '电子商务', '机械电子工程', '化学工程与工艺', '英语', '24,25,34,35');
INSERT INTO `students` VALUES ('21441853157552', '冯**18', 209, 557, '是', '电气工程及其自动化', '机械电子工程', '电子信息工程', '计算机科学与技术', '化学工程与工艺', '电子商务', '英语', NULL);
INSERT INTO `students` VALUES ('21441861282959', '徐**13', 209, 558, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '电子商务', NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441865731053', '蔡**11', 209, 558, '是', '计算机科学与技术', '电子信息工程', '机械电子工程', '电气工程及其自动化', NULL, NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441872401895', '蒋**13', 209, 553, '是', '计算机科学与技术', '电气工程及其自动化', '电子信息工程', '电子商务', '机械电子工程', '化学工程与工艺', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441875223799', '马**10', 209, 550, '是', '计算机科学与技术', '电气工程及其自动化', '电子信息工程', '化学工程与工艺', '机械电子工程', '电子商务', '英语', NULL);
INSERT INTO `students` VALUES ('21441877948339', '叶**17', 209, 554, '是', '机械电子工程', '电子商务', '计算机科学与技术', '电气工程及其自动化', '电子信息工程', '化学工程与工艺', '英语', '24,25');
INSERT INTO `students` VALUES ('21441880528224', '谌**15', 209, 550, '是', '计算机科学与技术', '电子商务', NULL, NULL, NULL, NULL, '英语', NULL);
INSERT INTO `students` VALUES ('21441883478063', '方**18', 209, 551, '是', '电气工程及其自动化', '机械电子工程', '电子信息工程', '计算机科学与技术', '化学工程与工艺', NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441887146846', '霍**17', 209, 556, '是', '电气工程及其自动化', '计算机科学与技术', '机械电子工程', '电子信息工程', '化学工程与工艺', '电子商务', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441887424968', '杨*12', 209, 552, '是', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '机械电子工程', '化学工程与工艺', '电子商务', '英语', '24,25,34,35');
INSERT INTO `students` VALUES ('21441890591133', '谌**13', 209, 557, '是', '电气工程及其自动化', '机械电子工程', '计算机科学与技术', '电子信息工程', '化学工程与工艺', '电子商务', '英语', '24');
INSERT INTO `students` VALUES ('21441890898008', '施*10', 209, 553, '是', '计算机科学与技术', '电气工程及其自动化', '机械电子工程', '电子信息工程', '电子商务', '化学工程与工艺', '英语', '24,25');
INSERT INTO `students` VALUES ('21441891517502', '张**18', 209, 558, '是', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '化学工程与工艺', '机械电子工程', '电子商务', '英语', NULL);
INSERT INTO `students` VALUES ('21441895045776', '黎**10', 209, 566, '是', '计算机科学与技术', '电气工程及其自动化', '电子信息工程', '机械电子工程', '化学工程与工艺', '电子商务', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441895348361', '吴**12', 209, 555, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', NULL, NULL, NULL, '英语', NULL);
INSERT INTO `students` VALUES ('21441896060270', '黄**14', 209, 552, '是', '机械电子工程', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '化学工程与工艺', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441897823588', '徐*16', 209, 557, '是', '机械电子工程', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '化学工程与工艺', '电子商务', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441898386477', '李**16', 209, 555, '是', '机械电子工程', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '化学工程与工艺', NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441899222022', '陈**16', 209, 557, '是', '计算机科学与技术', '电气工程及其自动化', '机械电子工程', '电子信息工程', '电子商务', '化学工程与工艺', '英语', NULL);
INSERT INTO `students` VALUES ('21441900408074', '黄**12', 209, 556, '是', '电气工程及其自动化', '机械电子工程', '计算机科学与技术', '电子信息工程', '电子商务', '化学工程与工艺', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441901356642', '谢**18', 209, 552, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', NULL, NULL, '英语', '21');
INSERT INTO `students` VALUES ('21441902941144', '刘**11', 209, 556, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', NULL, NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441904810303', '王*17', 209, 550, '是', '计算机科学与技术', '化学工程与工艺', '电气工程及其自动化', '电子信息工程', '机械电子工程', '电子商务', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441908006086', '王**13', 209, 558, '是', '机械电子工程', '计算机科学与技术', '电子信息工程', NULL, NULL, NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441910172412', '钱**11', 209, 554, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '化学工程与工艺', '机械电子工程', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441913428528', '苏*10', 209, 549, '是', '计算机科学与技术', '电子信息工程', '机械电子工程', '电气工程及其自动化', '化学工程与工艺', '电子商务', '英语', NULL);
INSERT INTO `students` VALUES ('21441913644032', '吴**11', 209, 551, '是', '机械电子工程', '电气工程及其自动化', '电子信息工程', '计算机科学与技术', '化学工程与工艺', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441918790639', '黎**11', 209, 559, '是', '电气工程及其自动化', '机械电子工程', '计算机科学与技术', '电子信息工程', '化学工程与工艺', NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441919700586', '王*15', 209, 555, '是', '机械电子工程', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', NULL, NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441925454674', '黎**16', 209, 550, '是', '计算机科学与技术', '电子信息工程', '机械电子工程', '电气工程及其自动化', '化学工程与工艺', '电子商务', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441925756245', '田**16', 209, 574, '是', '机械电子工程', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '化学工程与工艺', '电子商务', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441933444168', '黄**14', 209, 550, '是', '机械电子工程', '电气工程及其自动化', '电子商务', NULL, NULL, NULL, '英语', '21,22,23,24,25');
INSERT INTO `students` VALUES ('21441933567669', '范*16', 209, 549, '是', '电气工程及其自动化', '机械电子工程', '计算机科学与技术', '电子信息工程', '电子商务', '化学工程与工艺', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441933712107', '李**12', 209, 550, '是', '计算机科学与技术', '电气工程及其自动化', '机械电子工程', '电子信息工程', '化学工程与工艺', '电子商务', '英语', NULL);
INSERT INTO `students` VALUES ('21441935469367', '蔡**19', 209, 549, '是', '计算机科学与技术', '电子信息工程', NULL, NULL, NULL, NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441936467859', '杜*11', 209, 549, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '电子商务', '化学工程与工艺', '英语', '24');
INSERT INTO `students` VALUES ('21441942843587', '陆**17', 209, 553, '是', '电子商务', '计算机科学与技术', '电子信息工程', '机械电子工程', NULL, NULL, '英语', NULL);
INSERT INTO `students` VALUES ('21441945814806', '陈**15', 209, 554, '是', '化学工程与工艺', '机械电子工程', '电气工程及其自动化', '电子信息工程', '计算机科学与技术', NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441948892958', '罗**14', 209, 552, '是', '电气工程及其自动化', '电子信息工程', '机械电子工程', '计算机科学与技术', '化学工程与工艺', '电子商务', '英语', '24,25');
INSERT INTO `students` VALUES ('21441953807021', '麦**15', 209, 554, '是', '计算机科学与技术', '电子信息工程', '电子商务', '电气工程及其自动化', '机械电子工程', NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441954998175', '曾**13', 209, 552, '是', '计算机科学与技术', '电子信息工程', '机械电子工程', NULL, NULL, NULL, '英语', '21,22,24,25,34');
INSERT INTO `students` VALUES ('21441956148597', '吴**11', 209, 555, '是', '计算机科学与技术', '电子商务', '化学工程与工艺', '电子信息工程', '机械电子工程', '电气工程及其自动化', '英语', '24,25');
INSERT INTO `students` VALUES ('21441958839587', '范**17', 209, 555, '是', '电子信息工程', '电气工程及其自动化', '计算机科学与技术', '化学工程与工艺', NULL, NULL, '英语', NULL);
INSERT INTO `students` VALUES ('21441959161733', '曾**11', 209, 555, '是', '机械电子工程', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '化学工程与工艺', '电子商务', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441959659414', '段**19', 209, 557, '是', '电子信息工程', '计算机科学与技术', '电气工程及其自动化', '机械电子工程', '化学工程与工艺', '电子商务', '英语', '24,25,34,35');
INSERT INTO `students` VALUES ('21441959905639', '徐**18', 209, 554, '是', '计算机科学与技术', '电气工程及其自动化', '电子信息工程', '机械电子工程', '电子商务', '化学工程与工艺', '英语', '24,25');
INSERT INTO `students` VALUES ('21441961031034', '陈**18', 209, 553, '是', '机械电子工程', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '化学工程与工艺', NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441961913124', '李**15', 209, 554, '是', '电气工程及其自动化', '机械电子工程', '计算机科学与技术', '电子信息工程', NULL, NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441962109292', '韦**15', 209, 552, '是', '计算机科学与技术', '电气工程及其自动化', '电子信息工程', '机械电子工程', '化学工程与工艺', '电子商务', '英语', NULL);
INSERT INTO `students` VALUES ('21441962920282', '黄**16', 209, 551, '是', '电子信息工程', '电气工程及其自动化', '机械电子工程', '计算机科学与技术', '电子商务', '化学工程与工艺', '英语', '24,25');
INSERT INTO `students` VALUES ('21441964026796', '梁**14', 209, 556, '是', '机械电子工程', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '化学工程与工艺', '电子商务', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441964743937', '郭**12', 209, 551, '是', '机械电子工程', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '化学工程与工艺', '电子商务', '英语', NULL);
INSERT INTO `students` VALUES ('21441964768779', '陈**13', 209, 556, '是', '计算机科学与技术', '电子商务', NULL, NULL, NULL, NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441975014255', '欧**10', 209, 553, '是', '电气工程及其自动化', '机械电子工程', '计算机科学与技术', '电子信息工程', '化学工程与工艺', '电子商务', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441977906234', '刘*17', 209, 553, '是', '计算机科学与技术', '电子信息工程', '机械电子工程', '电气工程及其自动化', '化学工程与工艺', NULL, '英语', '24');
INSERT INTO `students` VALUES ('21441981225440', '田**19', 209, 550, '是', '机械电子工程', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', NULL, NULL, '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441984497372', '李**15', 209, 553, '是', '机械电子工程', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', '化学工程与工艺', '电子商务', '英语', NULL);
INSERT INTO `students` VALUES ('21441995043165', '彭*13', 209, 550, '是', '计算机科学与技术', '电子信息工程', '电气工程及其自动化', '机械电子工程', '电子商务', '化学工程与工艺', '英语', '24,25,34');
INSERT INTO `students` VALUES ('21441995916602', '谢**17', 209, 554, '是', '电气工程及其自动化', '计算机科学与技术', '电子信息工程', NULL, NULL, NULL, '英语', '24,25');
INSERT INTO `students` VALUES ('21441997508100', 'zhangfei', 209, 511, '是', '计算机科学与技术', NULL, NULL, NULL, NULL, NULL, '英语', NULL);
INSERT INTO `students` VALUES ('21441997508122', '滕*18', 209, 556, '是', '计算机科学与技术', '电子信息工程', '机械电子工程', '电气工程及其自动化', '电子商务', '化学工程与工艺', '日语', '24,25,34');
INSERT INTO `students` VALUES ('21441998327053', '王**14', 209, 556, '是', '机械电子工程', '计算机科学与技术', '电气工程及其自动化', '电子信息工程', '化学工程与工艺', '电子商务', '英语', NULL);
INSERT INTO `students` VALUES ('387982375923', '李隆基', 209, 87, '否', '计算机科学与技术', NULL, NULL, NULL, NULL, NULL, '英语', NULL);

-- ----------------------------
-- Table structure for withdrawal
-- ----------------------------
DROP TABLE IF EXISTS `withdrawal`;
CREATE TABLE `withdrawal`  (
  `退档位次` int NOT NULL AUTO_INCREMENT,
  `考生号` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `姓名` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`退档位次`) USING BTREE,
  INDEX `考生号`(`考生号` ASC) USING BTREE,
  CONSTRAINT `withdrawal_ibfk_1` FOREIGN KEY (`考生号`) REFERENCES `students` (`考生号`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of withdrawal
-- ----------------------------
INSERT INTO `withdrawal` VALUES (1, '21441264667126', '邱**18');
INSERT INTO `withdrawal` VALUES (2, '21441393289946', '李**19');
INSERT INTO `withdrawal` VALUES (3, '21441773761919', '范*12');
INSERT INTO `withdrawal` VALUES (4, '111', '111');
INSERT INTO `withdrawal` VALUES (5, '387982375923', '李隆基');
INSERT INTO `withdrawal` VALUES (6, '21441604305554', '刘*18');

-- ----------------------------
-- View structure for admission_with_scores
-- ----------------------------
DROP VIEW IF EXISTS `admission_with_scores`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `admission_with_scores` AS select `admission`.`录取位次` AS `录取位次`,`admission`.`考生号` AS `考生号`,`admission`.`姓名` AS `姓名`,`admission`.`专业组号` AS `专业组号`,`admission`.`专业代号` AS `专业代号`,`admission`.`专业名称` AS `专业名称`,`admission`.`学院名称` AS `学院名称`,`students`.`投档成绩` AS `投档成绩` from (`admission` join `students` on((`admission`.`考生号` = `students`.`考生号`))) order by `admission`.`学院名称`,`admission`.`专业代号`,`admission`.`录取位次`;

-- ----------------------------
-- View structure for 先进制造学院
-- ----------------------------
DROP VIEW IF EXISTS `先进制造学院`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `先进制造学院` AS select `admission_with_scores`.`录取位次` AS `录取位次`,`admission_with_scores`.`考生号` AS `考生号`,`admission_with_scores`.`姓名` AS `姓名`,`admission_with_scores`.`专业组号` AS `专业组号`,`admission_with_scores`.`专业代号` AS `专业代号`,`admission_with_scores`.`专业名称` AS `专业名称`,`admission_with_scores`.`学院名称` AS `学院名称`,`admission_with_scores`.`投档成绩` AS `投档成绩` from `admission_with_scores` where (`admission_with_scores`.`学院名称` = '先进制造学院');

-- ----------------------------
-- View structure for 国际教育学院
-- ----------------------------
DROP VIEW IF EXISTS `国际教育学院`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `国际教育学院` AS select `admission_with_scores`.`录取位次` AS `录取位次`,`admission_with_scores`.`考生号` AS `考生号`,`admission_with_scores`.`姓名` AS `姓名`,`admission_with_scores`.`专业组号` AS `专业组号`,`admission_with_scores`.`专业代号` AS `专业代号`,`admission_with_scores`.`专业名称` AS `专业名称`,`admission_with_scores`.`学院名称` AS `学院名称`,`admission_with_scores`.`投档成绩` AS `投档成绩` from `admission_with_scores` where (`admission_with_scores`.`学院名称` = '国际教育学院');

-- ----------------------------
-- View structure for 外国语学院
-- ----------------------------
DROP VIEW IF EXISTS `外国语学院`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `外国语学院` AS select `admission_with_scores`.`录取位次` AS `录取位次`,`admission_with_scores`.`考生号` AS `考生号`,`admission_with_scores`.`姓名` AS `姓名`,`admission_with_scores`.`专业组号` AS `专业组号`,`admission_with_scores`.`专业代号` AS `专业代号`,`admission_with_scores`.`专业名称` AS `专业名称`,`admission_with_scores`.`学院名称` AS `学院名称`,`admission_with_scores`.`投档成绩` AS `投档成绩` from `admission_with_scores` where (`admission_with_scores`.`学院名称` = '外国语学院');

-- ----------------------------
-- View structure for 机电工程学院
-- ----------------------------
DROP VIEW IF EXISTS `机电工程学院`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `机电工程学院` AS select `admission_with_scores`.`录取位次` AS `录取位次`,`admission_with_scores`.`考生号` AS `考生号`,`admission_with_scores`.`姓名` AS `姓名`,`admission_with_scores`.`专业组号` AS `专业组号`,`admission_with_scores`.`专业代号` AS `专业代号`,`admission_with_scores`.`专业名称` AS `专业名称`,`admission_with_scores`.`学院名称` AS `学院名称`,`admission_with_scores`.`投档成绩` AS `投档成绩` from `admission_with_scores` where (`admission_with_scores`.`学院名称` = '机电工程学院');

-- ----------------------------
-- View structure for 管理学院
-- ----------------------------
DROP VIEW IF EXISTS `管理学院`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `管理学院` AS select `admission_with_scores`.`录取位次` AS `录取位次`,`admission_with_scores`.`考生号` AS `考生号`,`admission_with_scores`.`姓名` AS `姓名`,`admission_with_scores`.`专业组号` AS `专业组号`,`admission_with_scores`.`专业代号` AS `专业代号`,`admission_with_scores`.`专业名称` AS `专业名称`,`admission_with_scores`.`学院名称` AS `学院名称`,`admission_with_scores`.`投档成绩` AS `投档成绩` from `admission_with_scores` where (`admission_with_scores`.`学院名称` = '管理学院');

-- ----------------------------
-- View structure for 自动化学院
-- ----------------------------
DROP VIEW IF EXISTS `自动化学院`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `自动化学院` AS select `admission_with_scores`.`录取位次` AS `录取位次`,`admission_with_scores`.`考生号` AS `考生号`,`admission_with_scores`.`姓名` AS `姓名`,`admission_with_scores`.`专业组号` AS `专业组号`,`admission_with_scores`.`专业代号` AS `专业代号`,`admission_with_scores`.`专业名称` AS `专业名称`,`admission_with_scores`.`学院名称` AS `学院名称`,`admission_with_scores`.`投档成绩` AS `投档成绩` from `admission_with_scores` where (`admission_with_scores`.`学院名称` = '自动化学院');

-- ----------------------------
-- View structure for 轻工化工学院
-- ----------------------------
DROP VIEW IF EXISTS `轻工化工学院`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `轻工化工学院` AS select `admission_with_scores`.`录取位次` AS `录取位次`,`admission_with_scores`.`考生号` AS `考生号`,`admission_with_scores`.`姓名` AS `姓名`,`admission_with_scores`.`专业组号` AS `专业组号`,`admission_with_scores`.`专业代号` AS `专业代号`,`admission_with_scores`.`专业名称` AS `专业名称`,`admission_with_scores`.`学院名称` AS `学院名称`,`admission_with_scores`.`投档成绩` AS `投档成绩` from `admission_with_scores` where (`admission_with_scores`.`学院名称` = '轻工化工学院');

SET FOREIGN_KEY_CHECKS = 1;
