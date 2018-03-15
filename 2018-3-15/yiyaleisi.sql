/*
Navicat MySQL Data Transfer

Source Server         : start
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : yiyaleisi

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-03-15 17:06:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of banner
-- ----------------------------
INSERT INTO `banner` VALUES ('1', '首页置顶', '首页轮播图');

-- ----------------------------
-- Table structure for banner_item
-- ----------------------------
DROP TABLE IF EXISTS `banner_item`;
CREATE TABLE `banner_item` (
  `id` int(11) NOT NULL,
  `img_id` int(11) DEFAULT NULL,
  `banner_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of banner_item
-- ----------------------------
INSERT INTO `banner_item` VALUES ('1', '12', '1');
INSERT INTO `banner_item` VALUES ('2', '36', '1');
INSERT INTO `banner_item` VALUES ('3', '77', '1');

-- ----------------------------
-- Table structure for color
-- ----------------------------
DROP TABLE IF EXISTS `color`;
CREATE TABLE `color` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `color` char(20) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of color
-- ----------------------------
INSERT INTO `color` VALUES ('1', '10粉色', '1');
INSERT INTO `color` VALUES ('2', '10灰色', '1');
INSERT INTO `color` VALUES ('3', '10绿色', '1');
INSERT INTO `color` VALUES ('4', '10黑色', '1');
INSERT INTO `color` VALUES ('5', '10肤色', '1');
INSERT INTO `color` VALUES ('6', '16粉色', '2');
INSERT INTO `color` VALUES ('7', '16黑色', '2');
INSERT INTO `color` VALUES ('8', '16肤色', '2');
INSERT INTO `color` VALUES ('9', '16灰色', '2');
INSERT INTO `color` VALUES ('10', '黑色（平角）', '3');
INSERT INTO `color` VALUES ('11', '肤色（平角）', '3');
INSERT INTO `color` VALUES ('12', '灰色（平角）', '3');
INSERT INTO `color` VALUES ('13', '红色', '4');
INSERT INTO `color` VALUES ('14', '紫色', '4');
INSERT INTO `color` VALUES ('15', '黑色', '4');
INSERT INTO `color` VALUES ('16', '肤色', '4');
INSERT INTO `color` VALUES ('17', '粉色', '5');
INSERT INTO `color` VALUES ('18', '黑色', '5');
INSERT INTO `color` VALUES ('19', '深绿', '5');
INSERT INTO `color` VALUES ('20', '深蓝', '5');
INSERT INTO `color` VALUES ('21', '枣红', '5');
INSERT INTO `color` VALUES ('22', '肤色', '5');
INSERT INTO `color` VALUES ('23', '灰色', '5');
INSERT INTO `color` VALUES ('24', '绿色（蕾丝款送NK）', '6');
INSERT INTO `color` VALUES ('25', '黑色（蕾丝款送NK）', '6');
INSERT INTO `color` VALUES ('26', '米白色（蕾丝款送NK）', '6');
INSERT INTO `color` VALUES ('27', '浅蓝色（蕾丝款送NK）', '6');
INSERT INTO `color` VALUES ('28', '黑色（背心宽肩）', '7');
INSERT INTO `color` VALUES ('29', '肤色（背心宽肩）', '7');
INSERT INTO `color` VALUES ('30', '灰色（背心宽肩）', '7');
INSERT INTO `color` VALUES ('31', '蓝色（蕾丝）', '8');
INSERT INTO `color` VALUES ('32', '酒红（蕾丝）', '8');
INSERT INTO `color` VALUES ('33', '灰粉（蕾丝）', '8');

-- ----------------------------
-- Table structure for images
-- ----------------------------
DROP TABLE IF EXISTS `images`;
CREATE TABLE `images` (
  `id` int(11) DEFAULT NULL,
  `url` char(50) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `from` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of images
-- ----------------------------
INSERT INTO `images` VALUES ('1', '/010_10a.jpg', '1', '1');
INSERT INTO `images` VALUES ('2', '/010_10b.jpg', '1', '1');
INSERT INTO `images` VALUES ('3', '/010_11a.jpg', '1', '1');
INSERT INTO `images` VALUES ('4', '/010_12a.jpg', '1', '1');
INSERT INTO `images` VALUES ('5', '/010_13a.jpg', '1', '1');
INSERT INTO `images` VALUES ('6', '/010_14a.jpg', '1', '1');
INSERT INTO `images` VALUES ('7', '/010_15a.jpg', '1', '1');
INSERT INTO `images` VALUES ('8', '/010_16a.jpg', '1', '1');
INSERT INTO `images` VALUES ('9', '/010_17a.jpg', '1', '1');
INSERT INTO `images` VALUES ('10', '/010_18a.jpg', '1', '1');
INSERT INTO `images` VALUES ('11', '/010_19a.jpg', '1', '1');
INSERT INTO `images` VALUES ('12', '/010_1a.jpg', '1', '1');
INSERT INTO `images` VALUES ('13', '/010_1b.jpg', '1', '1');
INSERT INTO `images` VALUES ('14', '/010_20a.jpg', '1', '1');
INSERT INTO `images` VALUES ('15', '/010_21a.jpg', '1', '1');
INSERT INTO `images` VALUES ('16', '/010_22a.jpg', '1', '1');
INSERT INTO `images` VALUES ('17', '/010_2a.jpg', '1', '1');
INSERT INTO `images` VALUES ('18', '/010_2b.jpg', '1', '1');
INSERT INTO `images` VALUES ('19', '/010_3a.jpg', '1', '1');
INSERT INTO `images` VALUES ('20', '/010_3b.jpg', '1', '1');
INSERT INTO `images` VALUES ('21', '/010_4a.jpg', '1', '1');
INSERT INTO `images` VALUES ('22', '/010_4b.jpg', '1', '1');
INSERT INTO `images` VALUES ('23', '/010_5a.jpg', '1', '1');
INSERT INTO `images` VALUES ('24', '/010_5b.jpg', '1', '1');
INSERT INTO `images` VALUES ('25', '/010_6a.jpg', '1', '1');
INSERT INTO `images` VALUES ('26', '/010_6b.jpg', '1', '1');
INSERT INTO `images` VALUES ('27', '/010_7a.jpg', '1', '1');
INSERT INTO `images` VALUES ('28', '/010_7b.jpg', '1', '1');
INSERT INTO `images` VALUES ('29', '/010_8a.jpg', '1', '1');
INSERT INTO `images` VALUES ('30', '/010_8b.jpg', '1', '1');
INSERT INTO `images` VALUES ('31', '/010_9a.jpg', '1', '1');
INSERT INTO `images` VALUES ('32', '/010_9b.jpg', '1', '1');
INSERT INTO `images` VALUES ('33', '/016_10a.jpg', '2', '1');
INSERT INTO `images` VALUES ('34', '/016_11a.jpg', '2', '1');
INSERT INTO `images` VALUES ('35', '/016_12a.jpg', '2', '1');
INSERT INTO `images` VALUES ('36', '/016_13a.jpg', '2', '1');
INSERT INTO `images` VALUES ('37', '/016_14a.jpg', '2', '1');
INSERT INTO `images` VALUES ('38', '/016_15a.jpg', '2', '1');
INSERT INTO `images` VALUES ('39', '/016_16a.jpg', '2', '1');
INSERT INTO `images` VALUES ('40', '/016_17a.jpg', '2', '1');
INSERT INTO `images` VALUES ('41', '/016_18a.jpg', '2', '1');
INSERT INTO `images` VALUES ('42', '/016_19a.jpg', '2', '1');
INSERT INTO `images` VALUES ('43', '/016_1a.jpg', '2', '1');
INSERT INTO `images` VALUES ('44', '/016_1b.jpg', '2', '1');
INSERT INTO `images` VALUES ('45', '/016_20a.jpg', '2', '1');
INSERT INTO `images` VALUES ('46', '/016_21a.jpg', '2', '1');
INSERT INTO `images` VALUES ('47', '/016_22a.jpg', '2', '1');
INSERT INTO `images` VALUES ('48', '/016_23a.jpg', '2', '1');
INSERT INTO `images` VALUES ('49', '/016_2a.jpg', '2', '1');
INSERT INTO `images` VALUES ('50', '/016_2b.jpg', '2', '1');
INSERT INTO `images` VALUES ('51', '/016_3a.jpg', '2', '1');
INSERT INTO `images` VALUES ('52', '/016_3b.jpg', '2', '1');
INSERT INTO `images` VALUES ('53', '/016_4a.jpg', '2', '1');
INSERT INTO `images` VALUES ('54', '/016_4b.jpg', '2', '1');
INSERT INTO `images` VALUES ('55', '/016_5a.jpg', '2', '1');
INSERT INTO `images` VALUES ('56', '/016_5b.jpg', '2', '1');
INSERT INTO `images` VALUES ('57', '/016_6a.jpg', '2', '1');
INSERT INTO `images` VALUES ('58', '/016_6b.jpg', '2', '1');
INSERT INTO `images` VALUES ('59', '/016_7a.jpg', '2', '1');
INSERT INTO `images` VALUES ('60', '/016_7b.jpg', '2', '1');
INSERT INTO `images` VALUES ('61', '/016_8a.jpg', '2', '1');
INSERT INTO `images` VALUES ('62', '/016_9a.jpg', '2', '1');
INSERT INTO `images` VALUES ('63', '/017（绑带）_10a.jpg', '3', '1');
INSERT INTO `images` VALUES ('64', '/017（绑带）_11a.jpg', '3', '1');
INSERT INTO `images` VALUES ('65', '/017（绑带）_12a.jpg', '3', '1');
INSERT INTO `images` VALUES ('66', '/017（绑带）_13a.jpg', '3', '1');
INSERT INTO `images` VALUES ('67', '/017（绑带）_14a.jpg', '3', '1');
INSERT INTO `images` VALUES ('68', '/017（绑带）_15a.jpg', '3', '1');
INSERT INTO `images` VALUES ('69', '/017（绑带）_16a.jpg', '3', '1');
INSERT INTO `images` VALUES ('70', '/017（绑带）_17a.jpg', '3', '1');
INSERT INTO `images` VALUES ('71', '/017（绑带）_18a.jpg', '3', '1');
INSERT INTO `images` VALUES ('72', '/017（绑带）_19a.jpg', '3', '1');
INSERT INTO `images` VALUES ('73', '/017（绑带）_1a.jpg', '3', '1');
INSERT INTO `images` VALUES ('74', '/017（绑带）_1b.jpg', '3', '1');
INSERT INTO `images` VALUES ('75', '/017（绑带）_20a.jpg', '3', '1');
INSERT INTO `images` VALUES ('76', '/017（绑带）_21a.jpg', '3', '1');
INSERT INTO `images` VALUES ('77', '/017（绑带）_2a.jpg', '3', '1');
INSERT INTO `images` VALUES ('78', '/017（绑带）_2b.jpg', '3', '1');
INSERT INTO `images` VALUES ('79', '/017（绑带）_3a.jpg', '3', '1');
INSERT INTO `images` VALUES ('80', '/017（绑带）_3b.jpg', '3', '1');
INSERT INTO `images` VALUES ('81', '/017（绑带）_4a.jpg', '3', '1');
INSERT INTO `images` VALUES ('82', '/017（绑带）_4b.jpg', '3', '1');
INSERT INTO `images` VALUES ('83', '/017（绑带）_5a.jpg', '3', '1');
INSERT INTO `images` VALUES ('84', '/017（绑带）_5b.jpg', '3', '1');
INSERT INTO `images` VALUES ('85', '/017（绑带）_6a.jpg', '3', '1');
INSERT INTO `images` VALUES ('86', '/017（绑带）_6b.jpg', '3', '1');
INSERT INTO `images` VALUES ('87', '/017（绑带）_7a.jpg', '3', '1');
INSERT INTO `images` VALUES ('88', '/017（绑带）_7b.jpg', '3', '1');
INSERT INTO `images` VALUES ('89', '/017（绑带）_8a.jpg', '3', '1');
INSERT INTO `images` VALUES ('90', '/017（绑带）_8b.jpg', '3', '1');
INSERT INTO `images` VALUES ('91', '/017（绑带）_9a.jpg', '3', '1');
INSERT INTO `images` VALUES ('92', '/017（绑带）_9b.jpg', '3', '1');
INSERT INTO `images` VALUES ('93', '/平角_10a.jpg', '4', '1');
INSERT INTO `images` VALUES ('94', '/平角_11a.jpg', '4', '1');
INSERT INTO `images` VALUES ('95', '/平角_12a.jpg', '4', '1');
INSERT INTO `images` VALUES ('96', '/平角_13a.jpg', '4', '1');
INSERT INTO `images` VALUES ('97', '/平角_14a.jpg', '4', '1');
INSERT INTO `images` VALUES ('98', '/平角_15a.jpg', '4', '1');
INSERT INTO `images` VALUES ('99', '/平角_16a.jpg', '4', '1');
INSERT INTO `images` VALUES ('100', '/平角_17a.jpg', '4', '1');
INSERT INTO `images` VALUES ('101', '/平角_18a.jpg', '4', '1');
INSERT INTO `images` VALUES ('102', '/平角_19a.jpg', '4', '1');
INSERT INTO `images` VALUES ('103', '/平角_1a.jpg', '4', '1');
INSERT INTO `images` VALUES ('104', '/平角_1b.jpg', '4', '1');
INSERT INTO `images` VALUES ('105', '/平角_20a.jpg', '4', '1');
INSERT INTO `images` VALUES ('106', '/平角_21a.jpg', '4', '1');
INSERT INTO `images` VALUES ('107', '/平角_22a.jpg', '4', '1');
INSERT INTO `images` VALUES ('108', '/平角_23a.jpg', '4', '1');
INSERT INTO `images` VALUES ('109', '/平角_2a.jpg', '4', '1');
INSERT INTO `images` VALUES ('110', '/平角_2b.jpg', '4', '1');
INSERT INTO `images` VALUES ('111', '/平角_3a.jpg', '4', '1');
INSERT INTO `images` VALUES ('112', '/平角_3b.jpg', '4', '1');
INSERT INTO `images` VALUES ('113', '/平角_4a.jpg', '4', '1');
INSERT INTO `images` VALUES ('114', '/平角_4b.jpg', '4', '1');
INSERT INTO `images` VALUES ('115', '/平角_5a.jpg', '4', '1');
INSERT INTO `images` VALUES ('116', '/平角_5b.jpg', '4', '1');
INSERT INTO `images` VALUES ('117', '/平角_6a.jpg', '4', '1');
INSERT INTO `images` VALUES ('118', '/平角_6b.jpg', '4', '1');
INSERT INTO `images` VALUES ('119', '/平角_7a.jpg', '4', '1');
INSERT INTO `images` VALUES ('120', '/平角_7b.jpg', '4', '1');
INSERT INTO `images` VALUES ('121', '/平角_8a.jpg', '4', '1');
INSERT INTO `images` VALUES ('122', '/平角_8b.jpg', '4', '1');
INSERT INTO `images` VALUES ('123', '/平角_9a.jpg', '4', '1');
INSERT INTO `images` VALUES ('124', '/平角_9b.jpg', '4', '1');
INSERT INTO `images` VALUES ('125', '/日本背心_10a.jpg', '5', '1');
INSERT INTO `images` VALUES ('126', '/日本背心_10b.jpg', '5', '1');
INSERT INTO `images` VALUES ('127', '/日本背心_11a.jpg', '5', '1');
INSERT INTO `images` VALUES ('128', '/日本背心_11b.jpg', '5', '1');
INSERT INTO `images` VALUES ('129', '/日本背心_12a.jpg', '5', '1');
INSERT INTO `images` VALUES ('130', '/日本背心_12b.jpg', '5', '1');
INSERT INTO `images` VALUES ('131', '/日本背心_13a.jpg', '5', '1');
INSERT INTO `images` VALUES ('132', '/日本背心_14a.jpg', '5', '1');
INSERT INTO `images` VALUES ('133', '/日本背心_15a.jpg', '5', '1');
INSERT INTO `images` VALUES ('134', '/日本背心_1a.jpg', '5', '1');
INSERT INTO `images` VALUES ('135', '/日本背心_1b.jpg', '5', '1');
INSERT INTO `images` VALUES ('136', '/日本背心_2a.jpg', '5', '1');
INSERT INTO `images` VALUES ('137', '/日本背心_2b.jpg', '5', '1');
INSERT INTO `images` VALUES ('138', '/日本背心_3a.jpg', '5', '1');
INSERT INTO `images` VALUES ('139', '/日本背心_3b.jpg', '5', '1');
INSERT INTO `images` VALUES ('140', '/日本背心_4a.jpg', '5', '1');
INSERT INTO `images` VALUES ('141', '/日本背心_4b.jpg', '5', '1');
INSERT INTO `images` VALUES ('142', '/日本背心_5a.jpg', '5', '1');
INSERT INTO `images` VALUES ('143', '/日本背心_5b.jpg', '5', '1');
INSERT INTO `images` VALUES ('144', '/日本背心_6a.jpg', '5', '1');
INSERT INTO `images` VALUES ('145', '/日本背心_6b.jpg', '5', '1');
INSERT INTO `images` VALUES ('146', '/日本背心_7a.jpg', '5', '1');
INSERT INTO `images` VALUES ('147', '/日本背心_7b.jpg', '5', '1');
INSERT INTO `images` VALUES ('148', '/日本背心_8a.jpg', '5', '1');
INSERT INTO `images` VALUES ('149', '/日本背心_8b.jpg', '5', '1');
INSERT INTO `images` VALUES ('150', '/日本背心_9a.jpg', '5', '1');
INSERT INTO `images` VALUES ('151', '/日本背心_9b.jpg', '5', '1');
INSERT INTO `images` VALUES ('152', '/日本背心（冰丝）_10a.jpg', '7', '1');
INSERT INTO `images` VALUES ('153', '/日本背心（冰丝）_11a.jpg', '7', '1');
INSERT INTO `images` VALUES ('154', '/日本背心（冰丝）_12a.jpg', '7', '1');
INSERT INTO `images` VALUES ('155', '/日本背心（冰丝）_13a.jpg', '7', '1');
INSERT INTO `images` VALUES ('156', '/日本背心（冰丝）_14a.jpg', '7', '1');
INSERT INTO `images` VALUES ('157', '/日本背心（冰丝）_15a.jpg', '7', '1');
INSERT INTO `images` VALUES ('158', '/日本背心（冰丝）_16a.jpg', '7', '1');
INSERT INTO `images` VALUES ('159', '/日本背心（冰丝）_17a.jpg', '7', '1');
INSERT INTO `images` VALUES ('160', '/日本背心（冰丝）_18a.jpg', '7', '1');
INSERT INTO `images` VALUES ('161', '/日本背心（冰丝）_19a.jpg', '7', '1');
INSERT INTO `images` VALUES ('162', '/日本背心（冰丝）_1a.jpg', '7', '1');
INSERT INTO `images` VALUES ('163', '/日本背心（冰丝）_1b.jpg', '7', '1');
INSERT INTO `images` VALUES ('164', '/日本背心（冰丝）_20a.jpg', '7', '1');
INSERT INTO `images` VALUES ('165', '/日本背心（冰丝）_21a.jpg', '7', '1');
INSERT INTO `images` VALUES ('166', '/日本背心（冰丝）_22a.jpg', '7', '1');
INSERT INTO `images` VALUES ('167', '/日本背心（冰丝）_23a.jpg', '7', '1');
INSERT INTO `images` VALUES ('168', '/日本背心（冰丝）_2a.jpg', '7', '1');
INSERT INTO `images` VALUES ('169', '/日本背心（冰丝）_2b.jpg', '7', '1');
INSERT INTO `images` VALUES ('170', '/日本背心（冰丝）_3a.jpg', '7', '1');
INSERT INTO `images` VALUES ('171', '/日本背心（冰丝）_3b.jpg', '7', '1');
INSERT INTO `images` VALUES ('172', '/日本背心（冰丝）_4a.jpg', '7', '1');
INSERT INTO `images` VALUES ('173', '/日本背心（冰丝）_4b.jpg', '7', '1');
INSERT INTO `images` VALUES ('174', '/日本背心（冰丝）_5a.jpg', '7', '1');
INSERT INTO `images` VALUES ('175', '/日本背心（冰丝）_5b.jpg', '7', '1');
INSERT INTO `images` VALUES ('176', '/日本背心（冰丝）_6a.jpg', '7', '1');
INSERT INTO `images` VALUES ('177', '/日本背心（冰丝）_6b.jpg', '7', '1');
INSERT INTO `images` VALUES ('178', '/日本背心（冰丝）_7a.jpg', '7', '1');
INSERT INTO `images` VALUES ('179', '/日本背心（冰丝）_8a.jpg', '7', '1');
INSERT INTO `images` VALUES ('180', '/日本背心（冰丝）_9a.jpg', '7', '1');
INSERT INTO `images` VALUES ('181', '/欧美蕾丝_10a.jpg', '6', '1');
INSERT INTO `images` VALUES ('182', '/欧美蕾丝_11a.jpg', '6', '1');
INSERT INTO `images` VALUES ('183', '/欧美蕾丝_12a.jpg', '6', '1');
INSERT INTO `images` VALUES ('184', '/欧美蕾丝_13a.jpg', '6', '1');
INSERT INTO `images` VALUES ('185', '/欧美蕾丝_14a.jpg', '6', '1');
INSERT INTO `images` VALUES ('186', '/欧美蕾丝_15a.jpg', '6', '1');
INSERT INTO `images` VALUES ('187', '/欧美蕾丝_16a.jpg', '6', '1');
INSERT INTO `images` VALUES ('188', '/欧美蕾丝_17a.jpg', '6', '1');
INSERT INTO `images` VALUES ('189', '/欧美蕾丝_18a.jpg', '6', '1');
INSERT INTO `images` VALUES ('190', '/欧美蕾丝_19a.jpg', '6', '1');
INSERT INTO `images` VALUES ('191', '/欧美蕾丝_1a.jpg', '6', '1');
INSERT INTO `images` VALUES ('192', '/欧美蕾丝_1b.jpg', '6', '1');
INSERT INTO `images` VALUES ('193', '/欧美蕾丝_2a.jpg', '6', '1');
INSERT INTO `images` VALUES ('194', '/欧美蕾丝_2b.jpg', '6', '1');
INSERT INTO `images` VALUES ('195', '/欧美蕾丝_3a.jpg', '6', '1');
INSERT INTO `images` VALUES ('196', '/欧美蕾丝_3b.jpg', '6', '1');
INSERT INTO `images` VALUES ('197', '/欧美蕾丝_4a.jpg', '6', '1');
INSERT INTO `images` VALUES ('198', '/欧美蕾丝_4b.jpg', '6', '1');
INSERT INTO `images` VALUES ('199', '/欧美蕾丝_5a.jpg', '6', '1');
INSERT INTO `images` VALUES ('200', '/欧美蕾丝_5b.jpg', '6', '1');
INSERT INTO `images` VALUES ('201', '/欧美蕾丝_6a.jpg', '6', '1');
INSERT INTO `images` VALUES ('202', '/欧美蕾丝_6b.jpg', '6', '1');
INSERT INTO `images` VALUES ('203', '/欧美蕾丝_7a.jpg', '6', '1');
INSERT INTO `images` VALUES ('204', '/欧美蕾丝_7b.jpg', '6', '1');
INSERT INTO `images` VALUES ('205', '/欧美蕾丝_8a.jpg', '6', '1');
INSERT INTO `images` VALUES ('206', '/欧美蕾丝_8b.jpg', '6', '1');
INSERT INTO `images` VALUES ('207', '/欧美蕾丝_9a.jpg', '6', '1');
INSERT INTO `images` VALUES ('208', '/欧美蕾丝_9b.jpg', '6', '1');
INSERT INTO `images` VALUES ('209', '/镂空无痕薄杯内衣_10a.jpg', '8', '1');
INSERT INTO `images` VALUES ('210', '/镂空无痕薄杯内衣_11a.jpg', '8', '1');
INSERT INTO `images` VALUES ('211', '/镂空无痕薄杯内衣_12a.jpg', '8', '1');
INSERT INTO `images` VALUES ('212', '/镂空无痕薄杯内衣_13a.jpg', '8', '1');
INSERT INTO `images` VALUES ('213', '/镂空无痕薄杯内衣_14a.jpg', '8', '1');
INSERT INTO `images` VALUES ('214', '/镂空无痕薄杯内衣_1a.jpg', '8', '1');
INSERT INTO `images` VALUES ('215', '/镂空无痕薄杯内衣_1b.jpg', '8', '1');
INSERT INTO `images` VALUES ('216', '/镂空无痕薄杯内衣_2a.jpg', '8', '1');
INSERT INTO `images` VALUES ('217', '/镂空无痕薄杯内衣_2b.jpg', '8', '1');
INSERT INTO `images` VALUES ('218', '/镂空无痕薄杯内衣_3a.jpg', '8', '1');
INSERT INTO `images` VALUES ('219', '/镂空无痕薄杯内衣_3b.jpg', '8', '1');
INSERT INTO `images` VALUES ('220', '/镂空无痕薄杯内衣_4a.jpg', '8', '1');
INSERT INTO `images` VALUES ('221', '/镂空无痕薄杯内衣_4b.jpg', '8', '1');
INSERT INTO `images` VALUES ('222', '/镂空无痕薄杯内衣_5a.jpg', '8', '1');
INSERT INTO `images` VALUES ('223', '/镂空无痕薄杯内衣_5b.jpg', '8', '1');
INSERT INTO `images` VALUES ('224', '/镂空无痕薄杯内衣_6a.jpg', '8', '1');
INSERT INTO `images` VALUES ('225', '/镂空无痕薄杯内衣_6b.jpg', '8', '1');
INSERT INTO `images` VALUES ('226', '/镂空无痕薄杯内衣_7a.jpg', '8', '1');
INSERT INTO `images` VALUES ('227', '/镂空无痕薄杯内衣_8a.jpg', '8', '1');
INSERT INTO `images` VALUES ('228', '/镂空无痕薄杯内衣_9a.jpg', '8', '1');

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `topic_img_id` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('1', '010', '【细肩带】性感无痕，光面无钢圈，一片式', '1', '33.90');
INSERT INTO `products` VALUES ('2', '016', '【细肩带】性感无痕，光面无钢圈，一片式', null, '33.90');
INSERT INTO `products` VALUES ('3', '017（绑带）', '【细肩带】绑带，光面无钢圈，一片式', null, '33.90');
INSERT INTO `products` VALUES ('4', '平角', '深V细肩带、一片式无钢圈、深V、中厚', null, '39.90');
INSERT INTO `products` VALUES ('5', '日本背心', '【细肩带】时尚简约，无钢圈一片式，贴身无痕，轻薄', null, '29.90');
INSERT INTO `products` VALUES ('6', '欧美蕾丝', '【送配套内裤】性感蕾丝文胸套装、字母边肩带、无痕无钢圈', null, '39.90');
INSERT INTO `products` VALUES ('7', '日本背心（冰丝）', '【宽肩带】简约，冰丝，无钢圈，一片式，贴身无痕，轻薄', null, '29.90');
INSERT INTO `products` VALUES ('8', '镂空无痕薄杯内衣', '【送内裤】细肩带、一片式无钢圈、深V、爱花瓣刺绣、蕾丝性感镂空、无痕薄杯', null, '39.90');

-- ----------------------------
-- Table structure for size
-- ----------------------------
DROP TABLE IF EXISTS `size`;
CREATE TABLE `size` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `size` char(30) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of size
-- ----------------------------
INSERT INTO `size` VALUES ('1', '70A', '1');
INSERT INTO `size` VALUES ('2', '70B', '1');
INSERT INTO `size` VALUES ('3', '75A', '1');
INSERT INTO `size` VALUES ('4', '75B', '1');
INSERT INTO `size` VALUES ('5', '80A', '1');
INSERT INTO `size` VALUES ('6', '80B', '1');
INSERT INTO `size` VALUES ('7', '80C', '1');
INSERT INTO `size` VALUES ('8', '85A', '1');
INSERT INTO `size` VALUES ('9', '85B', '1');
INSERT INTO `size` VALUES ('10', '85C', '1');
INSERT INTO `size` VALUES ('11', '70AB通杯（上薄下厚）', '2');
INSERT INTO `size` VALUES ('12', '75AB通杯（上薄下厚）', '2');
INSERT INTO `size` VALUES ('13', '80AB通杯（上薄下厚）', '2');
INSERT INTO `size` VALUES ('14', '85AB通杯（上薄下厚）', '2');
INSERT INTO `size` VALUES ('15', '70AB通杯', '3');
INSERT INTO `size` VALUES ('16', '75AB通杯', '3');
INSERT INTO `size` VALUES ('17', '80AB通杯', '3');
INSERT INTO `size` VALUES ('18', '85AB通杯', '3');
INSERT INTO `size` VALUES ('19', '70A', '4');
INSERT INTO `size` VALUES ('20', '70B', '4');
INSERT INTO `size` VALUES ('21', '75A', '4');
INSERT INTO `size` VALUES ('22', '75B', '4');
INSERT INTO `size` VALUES ('23', '80A', '4');
INSERT INTO `size` VALUES ('24', '80B', '4');
INSERT INTO `size` VALUES ('25', '85A', '4');
INSERT INTO `size` VALUES ('26', '85B', '4');
INSERT INTO `size` VALUES ('27', 'S（背心细肩带）', '5');
INSERT INTO `size` VALUES ('28', 'M（背心细肩带）', '5');
INSERT INTO `size` VALUES ('29', 'L（背心细肩带）', '5');
INSERT INTO `size` VALUES ('30', 'XL（背心细肩带）', '5');
INSERT INTO `size` VALUES ('31', '70A', '6');
INSERT INTO `size` VALUES ('32', '70B', '6');
INSERT INTO `size` VALUES ('33', '75A', '6');
INSERT INTO `size` VALUES ('34', '75B', '6');
INSERT INTO `size` VALUES ('35', '80A', '6');
INSERT INTO `size` VALUES ('36', '80B', '6');
INSERT INTO `size` VALUES ('37', '85A', '6');
INSERT INTO `size` VALUES ('38', '85B', '6');
INSERT INTO `size` VALUES ('39', 'S', '7');
INSERT INTO `size` VALUES ('40', 'M', '7');
INSERT INTO `size` VALUES ('41', 'L', '7');
INSERT INTO `size` VALUES ('42', 'XL', '7');
INSERT INTO `size` VALUES ('43', '70A', '8');
INSERT INTO `size` VALUES ('44', '70B', '8');
INSERT INTO `size` VALUES ('45', '75A', '8');
INSERT INTO `size` VALUES ('46', '75B', '8');
INSERT INTO `size` VALUES ('47', '80A', '8');
INSERT INTO `size` VALUES ('48', '80B', '8');
INSERT INTO `size` VALUES ('49', '85A', '8');
INSERT INTO `size` VALUES ('50', '85B', '8');
