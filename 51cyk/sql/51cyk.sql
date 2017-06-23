/*
Navicat MySQL Data Transfer

Source Server         : Test
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : 51cyk

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2017-05-04 19:03:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for test_category
-- ----------------------------
DROP TABLE IF EXISTS `test_category`;
CREATE TABLE `test_category` (
  `name` varchar(3) NOT NULL COMMENT '菜系名称',
  `number` int(8) NOT NULL COMMENT '菜系所含菜品数量',
  `pkCategory` int(11) NOT NULL AUTO_INCREMENT COMMENT '菜系主键',
  PRIMARY KEY (`pkCategory`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test_category
-- ----------------------------
INSERT INTO `test_category` VALUES ('川菜', '0', '1');
INSERT INTO `test_category` VALUES ('鲁菜', '0', '2');
INSERT INTO `test_category` VALUES ('粤菜', '0', '3');
INSERT INTO `test_category` VALUES ('苏菜', '0', '4');
INSERT INTO `test_category` VALUES ('浙菜', '0', '5');
INSERT INTO `test_category` VALUES ('闽菜', '0', '6');
INSERT INTO `test_category` VALUES ('徽菜', '0', '8');
INSERT INTO `test_category` VALUES ('东北菜', '0', '9');
INSERT INTO `test_category` VALUES ('豫菜', '0', '10');
INSERT INTO `test_category` VALUES ('湘菜', '0', '7');

-- ----------------------------
-- Table structure for test_danmu
-- ----------------------------
DROP TABLE IF EXISTS `test_danmu`;
CREATE TABLE `test_danmu` (
  `pkDanmu` int(11) NOT NULL AUTO_INCREMENT,
  `pkUser` int(11) NOT NULL,
  `pkFood` int(11) NOT NULL,
  `content` varchar(20) NOT NULL,
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`pkDanmu`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test_danmu
-- ----------------------------
INSERT INTO `test_danmu` VALUES ('1', '82', '1', '你好啊', '0000-00-00 00:00:00');
INSERT INTO `test_danmu` VALUES ('2', '82', '1', '你好吗', '0000-00-00 00:00:00');
INSERT INTO `test_danmu` VALUES ('3', '82', '1', 'fff', '2017-04-15 22:45:02');
INSERT INTO `test_danmu` VALUES ('4', '82', '1', 'ff', '2017-04-15 22:54:44');
INSERT INTO `test_danmu` VALUES ('5', '82', '1', '222', '2017-04-15 22:56:30');
INSERT INTO `test_danmu` VALUES ('6', '82', '1', 'dddd', '2017-04-15 22:56:37');
INSERT INTO `test_danmu` VALUES ('7', '82', '1', '1111', '2017-04-15 22:57:24');
INSERT INTO `test_danmu` VALUES ('8', '82', '1', '发发发', '2017-04-15 22:58:36');
INSERT INTO `test_danmu` VALUES ('9', '82', '1', 'ssss', '2017-04-15 22:59:11');
INSERT INTO `test_danmu` VALUES ('10', '82', '1', '的', '2017-04-15 23:02:05');
INSERT INTO `test_danmu` VALUES ('11', '82', '1', '发发发', '2017-04-15 23:04:07');
INSERT INTO `test_danmu` VALUES ('12', '82', '1', '方法', '2017-04-15 23:05:00');
INSERT INTO `test_danmu` VALUES ('13', '82', '1', '打的', '2017-04-15 23:11:28');
INSERT INTO `test_danmu` VALUES ('14', '82', '1', '天天', '2017-04-15 23:14:22');
INSERT INTO `test_danmu` VALUES ('15', '82', '1', '发发发', '2017-04-15 23:14:33');
INSERT INTO `test_danmu` VALUES ('16', '82', '1', '方法', '2017-04-15 23:15:07');
INSERT INTO `test_danmu` VALUES ('17', '82', '1', '方法', '2017-04-15 23:15:12');
INSERT INTO `test_danmu` VALUES ('18', '82', '1', 'ddd ', '2017-04-15 23:15:51');
INSERT INTO `test_danmu` VALUES ('19', '82', '1', '你好啊', '2017-04-15 23:19:51');
INSERT INTO `test_danmu` VALUES ('20', '82', '1', '你好啊', '2017-04-16 00:19:45');
INSERT INTO `test_danmu` VALUES ('21', '82', '1', '', '2017-04-16 00:25:22');
INSERT INTO `test_danmu` VALUES ('22', '82', '1', '你好啊', '2017-04-16 00:28:22');
INSERT INTO `test_danmu` VALUES ('23', '78', '1', '真好吃', '2017-04-16 00:34:36');
INSERT INTO `test_danmu` VALUES ('24', '78', '5', '炸', '2017-04-16 00:35:52');
INSERT INTO `test_danmu` VALUES ('25', '82', '26', '你好啊', '2017-04-16 16:19:37');
INSERT INTO `test_danmu` VALUES ('26', '89', '3', '你哦好', '2017-04-16 16:51:49');
INSERT INTO `test_danmu` VALUES ('27', '89', '3', '张凯展傻逼', '2017-04-16 16:51:59');
INSERT INTO `test_danmu` VALUES ('28', '89', '3', '敌对的', '2017-04-16 16:52:11');
INSERT INTO `test_danmu` VALUES ('29', '96', '2', '发发发', '2017-05-04 14:50:24');

-- ----------------------------
-- Table structure for test_follow
-- ----------------------------
DROP TABLE IF EXISTS `test_follow`;
CREATE TABLE `test_follow` (
  `pkFollow` int(11) NOT NULL AUTO_INCREMENT,
  `pkUser` int(11) NOT NULL,
  `followUser` int(11) NOT NULL,
  PRIMARY KEY (`pkFollow`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test_follow
-- ----------------------------
INSERT INTO `test_follow` VALUES ('12', '78', '84');
INSERT INTO `test_follow` VALUES ('13', '78', '77');
INSERT INTO `test_follow` VALUES ('18', '83', '83');
INSERT INTO `test_follow` VALUES ('20', '83', '77');
INSERT INTO `test_follow` VALUES ('21', '79', '82');
INSERT INTO `test_follow` VALUES ('22', '89', '83');
INSERT INTO `test_follow` VALUES ('23', '89', '88');
INSERT INTO `test_follow` VALUES ('24', '88', '77');
INSERT INTO `test_follow` VALUES ('25', '78', '78');

-- ----------------------------
-- Table structure for test_food
-- ----------------------------
DROP TABLE IF EXISTS `test_food`;
CREATE TABLE `test_food` (
  `pkFood` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(8) NOT NULL COMMENT '菜品名字',
  `about` varchar(100) NOT NULL COMMENT '菜品简介',
  `make` int(5) NOT NULL COMMENT '制作工艺',
  `taste` int(2) NOT NULL COMMENT '五味',
  `stars` int(2) NOT NULL COMMENT '推荐星级',
  `pkCategory` int(11) NOT NULL COMMENT '所属菜系',
  `img_small` varchar(20) DEFAULT NULL COMMENT '菜品小图',
  `img_big` varchar(20) DEFAULT NULL COMMENT '菜品大图',
  PRIMARY KEY (`pkFood`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test_food
-- ----------------------------
INSERT INTO `test_food` VALUES ('1', '水煮肉片', '水煮肉片肉味香辣，软嫩，易嚼。吃时肉嫩菜鲜 ，汤红油亮，麻辣味浓，最宜下饭，为家常美食之一。特色是“麻、辣、鲜、香”。', '5', '2', '3', '1', 'img/chuan_1.jpg', 'img/c_chuan_1.jpg');
INSERT INTO `test_food` VALUES ('2', '麻婆豆腐', '麻婆豆腐外观色深红亮，红白绿相衬，豆腐形整不烂，吃起来具有麻、辣、烫、嫩、酥、香、鲜等风味，突出了川菜“麻辣”的特点。', '6', '5', '4', '1', 'img/chuan_2.jpg', 'img/c_chuan_2.jpg');
INSERT INTO `test_food` VALUES ('3', '宫保鸡丁', '宫保鸡丁选用鸡肉为主料，佐以花生米、黄瓜、辣椒等辅料烹制而成。 红而不辣、辣而不猛、香辣味浓、肉质滑脆。', '4', '2', '3', '1', 'img/chuan_3.jpg', 'img/c_chuan_3.jpg');
INSERT INTO `test_food` VALUES ('4', '夫妻肺片', '夫妻肺片，制作精细，色泽美观，质嫩味鲜，麻辣浓香，非常适口。', '12', '1', '3', '1', 'img/chuan_4.jpg', 'img/c_chuan_4.jpg');
INSERT INTO `test_food` VALUES ('5', '口水鸡', '口水鸡是一道凉菜，佐料丰富，集麻辣鲜香嫩爽于一身。有“名驰巴蜀三千里，味压江南十二州”的美称。', '15', '5', '3', '1', 'img/chuan_5.jpg', 'img/c_chuan_5.jpg');
INSERT INTO `test_food` VALUES ('6', '泡椒凤爪', '泡椒凤爪是起源于重庆的民间独特美食，属渝菜小吃类。以酸辣爽口、皮韧肉香而著称。泡椒凤爪既能登大雅之堂，也为普通所喜爱。', '21', '1', '3', '1', 'img/chuan_1.jpg', 'img/c_chuan_6.jpg');
INSERT INTO `test_food` VALUES ('7', '辣子鸡丁', '经巴国布衣厨师精心改良后其口味更富有特色，成菜色泽棕红油亮，质地酥软，麻辣味浓。咸鲜醇香，略带回甜，是一款食者啖之难忘的美味佳肴。', '0', '0', '3', '1', 'img/chuan_1.jpg', 'img/c_chuan_7.jpg');
INSERT INTO `test_food` VALUES ('8', '鱼香肉丝', '鱼香肉丝是一道特色传统名菜，以鱼香调味而得名，属川菜。相传灵感来自老菜泡椒肉丝，民国年间由四川籍厨师创制而成。', '0', '0', '3', '1', 'img/chuan_1.jpg', 'img/c_chuan_8.jpg');
INSERT INTO `test_food` VALUES ('9', '东坡肘子', '东坡肘子是中国四川地区经典的地方传统名菜之一，属于川菜系。东坡肘子其实并非苏东坡之功，而是其妻子王弗的妙作。“东坡肘子”被冠以苏东坡之名。', '0', '0', '3', '1', 'img/chuan_1.jpg', 'img/c_chuan_9.jpg');
INSERT INTO `test_food` VALUES ('10', '香辣虾', '香辣虾是一道汁浓、麻辣味浓，肉质紧韧爽脆的名菜，属于渝派川菜。通常由虾、土豆、香芹、花生米等主料制作而成。在四川烹饪期刊中记录了两种重庆香辣虾的做法。', '0', '0', '3', '1', 'img/chuan_1.jpg', 'img/c_chuan_10.jpg');
INSERT INTO `test_food` VALUES ('11', '灯影牛肉', '灯影牛肉，是四川省达州市的地方传统名食。牛肉片薄如纸，色红亮，味麻辣鲜脆，细嚼之，回味无穷。', '0', '0', '3', '1', 'img/chuan_1.jpg', 'img/c_chuan_1.jpg');
INSERT INTO `test_food` VALUES ('12', '水煮鱼', '满目的辣椒红亮养眼，辣而不燥，麻而不苦。“麻上头，辣过瘾”，让水煮鱼在全国流行得一塌糊涂。', '0', '0', '3', '1', 'img/chuan_1.jpg', 'img/c_chuan_1.jpg');
INSERT INTO `test_food` VALUES ('13', '麻辣牛柳', '麻辣牛柳是一道传统名菜，“牛柳”指的是牛的里脊肉，麻辣牛柳属于川菜系，辣量可以适当改变，老少皆宜，美味可口。', '0', '0', '3', '1', 'img/chuan_1.jpg', 'img/c_chuan_1.jpg');
INSERT INTO `test_food` VALUES ('14', '四川泡菜', '四川泡菜又叫泡酸菜，传统特色菜肴，属川菜系。味道咸酸，口感脆生，色泽鲜亮，香味扑鼻，开胃提神，醒酒去腻，老少适宜。', '0', '0', '3', '1', 'img/chuan_1.jpg', 'img/c_chuan_1.jpg');
INSERT INTO `test_food` VALUES ('15', '酸辣汤', '四川酸辣汤的特点是酸、辣、咸、鲜、香。用肉丝、豆腐、冬笋、保宁醋等料经清汤煮制而成。饭后饮用，有醒酒去腻，助消化的作用。', '0', '0', '3', '1', 'img/chuan_1.jpg', 'img/c_chuan_1.jpg');
INSERT INTO `test_food` VALUES ('16', '毛血旺', '麻辣诱惑对传统的毛血旺进行了改良和创新，将其汤汁红亮、麻辣鲜香、味浓味厚的特点不断发扬光大，值得一尝为快的巴渝名菜。', '0', '0', '3', '1', 'img/chuan_1.jpg', 'img/c_chuan_1.jpg');
INSERT INTO `test_food` VALUES ('17', '酸菜鱼', '酸菜鱼是一道源自山城重庆的经典川菜，以其特有的调味和独特的烹调技法而著称，各地也有称之为“酸汤鱼”，主要以鲜草鱼为主料，配以四川泡菜煮制而成，口味酸辣可口。', '0', '0', '3', '1', 'img/chuan_1.jpg', 'img/c_chuan_1.jpg');
INSERT INTO `test_food` VALUES ('18', '回锅肉', '回锅肉在川菜中的地位是非常重要的。回锅肉一直被认为是川菜之首，川菜之化身，提到川菜必然想到回锅肉。它色香味俱全，颜色养眼，是下饭菜之首选。', '0', '0', '3', '1', 'img/chuan_1.jpg', 'img/c_chuan_1.jpg');
INSERT INTO `test_food` VALUES ('20', '豆角炒肉', '水煮肉片肉味香辣，软嫩，易嚼。吃时肉嫩菜鲜 ，汤红油亮，麻辣味浓，最宜下饭，为家常美食之一。特色是“麻、辣、鲜、香”。', '0', '0', '3', '2', 'img/lu_1.jpg', 'img/c_chuan_1.jpg');
INSERT INTO `test_food` VALUES ('21', '热牛肉片', '水煮肉片肉味香辣，软嫩，易嚼。吃时肉嫩菜鲜 ，汤红油亮，麻辣味浓，最宜下饭，为家常美食之一。特色是“麻、辣、鲜、香”。', '0', '0', '3', '2', 'img/lu_2.jpg', 'img/c_chuan_1.jpg');
INSERT INTO `test_food` VALUES ('22', '烧腊肠', '水煮肉片肉味香辣，软嫩，易嚼。吃时肉嫩菜鲜 ，汤红油亮，麻辣味浓，最宜下饭，为家常美食之一。特色是“麻、辣、鲜、香”。', '0', '0', '3', '2', 'img/lu_3.jpg', 'img/c_chuan_1.jpg');
INSERT INTO `test_food` VALUES ('23', '菠菜炒鸡蛋', '水煮肉片肉味香辣，软嫩，易嚼。吃时肉嫩菜鲜 ，汤红油亮，麻辣味浓，最宜下饭，为家常美食之一。特色是“麻、辣、鲜、香”。', '0', '0', '3', '2', 'img/lu_4.jpg', 'img/c_chuan_1.jpg');
INSERT INTO `test_food` VALUES ('24', '水煮肉丸', '水煮肉片肉味香辣，软嫩，易嚼。吃时肉嫩菜鲜 ，汤红油亮，麻辣味浓，最宜下饭，为家常美食之一。特色是“麻、辣、鲜、香”。', '0', '0', '3', '2', 'img/lu_5.jpg', 'img/c_chuan_1.jpg');
INSERT INTO `test_food` VALUES ('32', '水煮肉片', '水煮肉片肉味香辣，软嫩，易嚼。吃时肉嫩菜鲜 ，汤红油亮，麻辣味浓，最宜下饭，为家常美食之一。特色是“麻、辣、鲜、香”。', '0', '0', '3', '1', 'img/chuan_1.jpg', 'img/c_chuan_1.jpg');
INSERT INTO `test_food` VALUES ('26', '水煮肉片', '水煮肉片肉味香辣，软嫩，易嚼。吃时肉嫩菜鲜 ，汤红油亮，麻辣味浓，最宜下饭，为家常美食之一。特色是“麻、辣、鲜、香”。', '0', '0', '3', '3', 'img/chuan_2.jpg', 'img/c_chuan_1.jpg');
INSERT INTO `test_food` VALUES ('27', '水煮肉片', '水煮肉片肉味香辣，软嫩，易嚼。吃时肉嫩菜鲜 ，汤红油亮，麻辣味浓，最宜下饭，为家常美食之一。特色是“麻、辣、鲜、香”。', '0', '0', '3', '3', 'img/chuan_2.jpg', 'img/c_chuan_1.jpg');
INSERT INTO `test_food` VALUES ('28', '水煮肉片', '水煮肉片肉味香辣，软嫩，易嚼。吃时肉嫩菜鲜 ，汤红油亮，麻辣味浓，最宜下饭，为家常美食之一。特色是“麻、辣、鲜、香”。', '0', '0', '3', '3', 'img/chuan_2.jpg', 'img/c_chuan_1.jpg');
INSERT INTO `test_food` VALUES ('29', '水煮肉片', '水煮肉片肉味香辣，软嫩，易嚼。吃时肉嫩菜鲜 ，汤红油亮，麻辣味浓，最宜下饭，为家常美食之一。特色是“麻、辣、鲜、香”。', '0', '0', '3', '3', 'img/chuan_2.jpg', 'img/c_chuan_1.jpg');
INSERT INTO `test_food` VALUES ('33', '藕夹', '水煮肉片肉味香辣，软嫩，易嚼。吃时肉嫩菜鲜 ，汤红油亮，麻辣味浓，最宜下饭，为家常美食之一。特色是“麻、辣、鲜、香”。', '0', '0', '3', '10', 'img/yu_1.jpg', 'img/c_chuan_1.jpg');
INSERT INTO `test_food` VALUES ('34', '凉拌皮冻', '水煮肉片肉味香辣，软嫩，易嚼。吃时肉嫩菜鲜 ，汤红油亮，麻辣味浓，最宜下饭，为家常美食之一。特色是“麻、辣、鲜、香”。', '0', '0', '3', '10', 'img/yu_2.jpg', 'img/c_chuan_1.jpg');
INSERT INTO `test_food` VALUES ('35', '河南烩面', '水煮肉片肉味香辣，软嫩，易嚼。吃时肉嫩菜鲜 ，汤红油亮，麻辣味浓，最宜下饭，为家常美食之一。特色是“麻、辣、鲜、香”。', '0', '0', '3', '10', 'img/yu_3.jpg', 'img/c_chuan_1.jpg');
INSERT INTO `test_food` VALUES ('36', '凉拌卷煎', '水煮肉片肉味香辣，软嫩，易嚼。吃时肉嫩菜鲜 ，汤红油亮，麻辣味浓，最宜下饭，为家常美食之一。特色是“麻、辣、鲜、香”。', '0', '0', '3', '10', 'img/yu_4.jpg', 'img/c_chuan_1.jpg');
INSERT INTO `test_food` VALUES ('37', '胡辣汤', '水煮肉片肉味香辣，软嫩，易嚼。吃时肉嫩菜鲜 ，汤红油亮，麻辣味浓，最宜下饭，为家常美食之一。特色是“麻、辣、鲜、香”。', '0', '0', '3', '10', 'img/yu_5.jpg', 'img/c_chuan_1.jpg');

-- ----------------------------
-- Table structure for test_make
-- ----------------------------
DROP TABLE IF EXISTS `test_make`;
CREATE TABLE `test_make` (
  `pkMake` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(8) NOT NULL COMMENT '制作工艺名字',
  PRIMARY KEY (`pkMake`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test_make
-- ----------------------------
INSERT INTO `test_make` VALUES ('1', '炒');
INSERT INTO `test_make` VALUES ('2', '炸');
INSERT INTO `test_make` VALUES ('3', '熘');
INSERT INTO `test_make` VALUES ('4', '爆');
INSERT INTO `test_make` VALUES ('5', '烹');
INSERT INTO `test_make` VALUES ('6', '炖');
INSERT INTO `test_make` VALUES ('7', '焖');
INSERT INTO `test_make` VALUES ('8', '煨');
INSERT INTO `test_make` VALUES ('9', '烧');
INSERT INTO `test_make` VALUES ('10', '扒');
INSERT INTO `test_make` VALUES ('11', '煮');
INSERT INTO `test_make` VALUES ('12', '汆');
INSERT INTO `test_make` VALUES ('13', '烩');
INSERT INTO `test_make` VALUES ('14', '煎');
INSERT INTO `test_make` VALUES ('15', '贴');
INSERT INTO `test_make` VALUES ('16', '塌');
INSERT INTO `test_make` VALUES ('17', '蒸');
INSERT INTO `test_make` VALUES ('18', '烤');
INSERT INTO `test_make` VALUES ('19', '涮');
INSERT INTO `test_make` VALUES ('20', '熬');
INSERT INTO `test_make` VALUES ('21', '拔丝');
INSERT INTO `test_make` VALUES ('22', '蜜汁');
INSERT INTO `test_make` VALUES ('23', '瓤');
INSERT INTO `test_make` VALUES ('24', '盐焗');
INSERT INTO `test_make` VALUES ('25', '炝');
INSERT INTO `test_make` VALUES ('26', '拌');
INSERT INTO `test_make` VALUES ('27', '腌');
INSERT INTO `test_make` VALUES ('28', '卤');
INSERT INTO `test_make` VALUES ('29', '冻');
INSERT INTO `test_make` VALUES ('30', '酥');
INSERT INTO `test_make` VALUES ('31', '熏');
INSERT INTO `test_make` VALUES ('32', '酱');
INSERT INTO `test_make` VALUES ('33', '卷');
INSERT INTO `test_make` VALUES ('34', '腊');
INSERT INTO `test_make` VALUES ('35', '挂霜');
INSERT INTO `test_make` VALUES ('36', '灌');

-- ----------------------------
-- Table structure for test_map
-- ----------------------------
DROP TABLE IF EXISTS `test_map`;
CREATE TABLE `test_map` (
  `pkMap` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `xian` int(11) NOT NULL,
  `la` int(11) NOT NULL,
  `mian` int(11) NOT NULL,
  `mi` int(11) NOT NULL,
  PRIMARY KEY (`pkMap`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test_map
-- ----------------------------
INSERT INTO `test_map` VALUES ('1', '川菜系', '80', '95', '20', '80');
INSERT INTO `test_map` VALUES ('2', '鲁菜系', '50', '66', '80', '20');
INSERT INTO `test_map` VALUES ('3', '粤菜系', '30', '25', '10', '90');
INSERT INTO `test_map` VALUES ('4', '苏菜系', '40', '53', '15', '85');
INSERT INTO `test_map` VALUES ('5', '浙菜系', '56', '55', '12', '88');
INSERT INTO `test_map` VALUES ('6', '闽菜系', '35', '45', '20', '80');
INSERT INTO `test_map` VALUES ('7', '湘菜系', '66', '85', '11', '89');
INSERT INTO `test_map` VALUES ('8', '徽菜系', '50', '33', '30', '70');
INSERT INTO `test_map` VALUES ('9', '东北菜系', '38', '38', '70', '30');
INSERT INTO `test_map` VALUES ('10', '豫菜系', '45', '45', '80', '20');
INSERT INTO `test_map` VALUES ('11', '其他菜系', '30', '30', '60', '40');

-- ----------------------------
-- Table structure for test_mes
-- ----------------------------
DROP TABLE IF EXISTS `test_mes`;
CREATE TABLE `test_mes` (
  `pkMes` int(11) NOT NULL AUTO_INCREMENT,
  `sendUser` int(11) NOT NULL,
  `getUser` int(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `sendTime` datetime NOT NULL,
  PRIMARY KEY (`pkMes`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test_mes
-- ----------------------------
INSERT INTO `test_mes` VALUES ('11', '77', '78', 'WEWE', '2017-04-16 14:46:58');
INSERT INTO `test_mes` VALUES ('12', '77', '79', 'gggg', '2017-04-16 14:52:24');
INSERT INTO `test_mes` VALUES ('13', '77', '78', 'www', '2017-04-16 15:29:36');
INSERT INTO `test_mes` VALUES ('14', '77', '79', '三生石', '2017-04-16 15:30:29');
INSERT INTO `test_mes` VALUES ('16', '89', '88', '你好吗', '2017-04-16 16:31:24');
INSERT INTO `test_mes` VALUES ('17', '89', '88', '1111', '2017-04-16 16:39:47');
INSERT INTO `test_mes` VALUES ('18', '93', '88', '试试', '2017-04-16 18:55:22');
INSERT INTO `test_mes` VALUES ('19', '82', '79', '111111', '2017-04-27 21:14:00');
INSERT INTO `test_mes` VALUES ('20', '88', '78', '1111', '2017-04-29 18:54:25');

-- ----------------------------
-- Table structure for test_talk
-- ----------------------------
DROP TABLE IF EXISTS `test_talk`;
CREATE TABLE `test_talk` (
  `pkTalk` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(255) NOT NULL COMMENT '话题标题',
  `content` varchar(255) NOT NULL COMMENT '话题首个内容',
  `author` varchar(25) NOT NULL COMMENT '作者',
  `startTime` datetime NOT NULL COMMENT '发帖时间',
  `passes` int(11) NOT NULL COMMENT '浏览次数',
  PRIMARY KEY (`pkTalk`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test_talk
-- ----------------------------
INSERT INTO `test_talk` VALUES ('11', '中华美食1-amdin', '中华美食博大精深', '77', '2017-04-05 13:28:26', '10000');
INSERT INTO `test_talk` VALUES ('15', 'ghfj', 'fghfgh', '77', '2017-04-05 13:42:43', '0');
INSERT INTO `test_talk` VALUES ('16', 'hgjgf', 'jfg', '77', '2017-04-05 13:43:04', '0');
INSERT INTO `test_talk` VALUES ('18', 'YHFGJH', 'GFJFGJ', '77', '2017-04-05 13:44:29', '0');
INSERT INTO `test_talk` VALUES ('29', '中华美食', ' 三生石', '82', '2017-04-05 15:09:12', '545');
INSERT INTO `test_talk` VALUES ('30', 'ddgd', 'dgdgd', '82', '2017-04-05 15:32:08', '0');
INSERT INTO `test_talk` VALUES ('31', 'dsssss', 'sdddddd', '84', '2017-04-05 15:45:14', '0');
INSERT INTO `test_talk` VALUES ('32', 'gfhfgh', 'fghfgh', '84', '2017-04-05 18:33:46', '0');
INSERT INTO `test_talk` VALUES ('33', '42424', '42424', '82', '2017-04-06 14:34:04', '0');
INSERT INTO `test_talk` VALUES ('34', '我是最新的', '女男男女女', '82', '2017-04-06 15:18:49', '9000');
INSERT INTO `test_talk` VALUES ('35', 'fgfgd', 'dfgdfg', '82', '2017-04-06 17:01:03', '0');
INSERT INTO `test_talk` VALUES ('36', 'sss', 'sss', '83', '2017-04-13 18:52:38', '0');
INSERT INTO `test_talk` VALUES ('38', '222', '222', '82', '2017-04-13 20:09:59', '0');
INSERT INTO `test_talk` VALUES ('39', 'dddd', 'dddd', '79', '2017-04-14 15:47:40', '0');
INSERT INTO `test_talk` VALUES ('40', '你好啊', '啊啊啊', '88', '2017-04-16 16:38:04', '0');
INSERT INTO `test_talk` VALUES ('41', 'sas', 'ssss', '78', '2017-04-29 18:52:33', '0');
INSERT INTO `test_talk` VALUES ('70', '敌对的', '真好啊<img src=\"http://localhost:88/51cyk/kindeditor/plugins/emoticons/images/1.gif\" border=\"0\" alt=\"\" />', '78', '2017-05-04 12:51:12', '0');
INSERT INTO `test_talk` VALUES ('71', '咕咕咕咕', '<img src=\"/51cyk/kindeditor/attached/image/20170504/20170504125337_20659.jpg\" alt=\"\" />', '78', '2017-05-04 12:53:41', '0');
INSERT INTO `test_talk` VALUES ('72', 'hhhh', 'hhhh<img src=\"http://localhost:88/51cyk/kindeditor/plugins/emoticons/images/1.gif\" border=\"0\" alt=\"\" />', '78', '2017-05-04 13:24:37', '0');
INSERT INTO `test_talk` VALUES ('73', 'jjj', '<img src=\"/51cyk/kindeditor/attached/image/20170504/20170504132501_85750.jpg\" alt=\"\" />555', '78', '2017-05-04 13:25:04', '0');
INSERT INTO `test_talk` VALUES ('74', '你真好吃', '<img src=\"/51cyk/kindeditor/attached/image/20170504/20170504134513_45908.jpg\" alt=\"\" />你好啊 真好吃<img src=\"http://localhost:88/51cyk/kindeditor/plugins/emoticons/images/20.gif\" border=\"0\" alt=\"\" />', '78', '2017-05-04 13:45:24', '0');
INSERT INTO `test_talk` VALUES ('76', 'fff', '444', '78', '2017-05-04 13:50:16', '0');
INSERT INTO `test_talk` VALUES ('78', '发发发', '<img src=\"http://localhost:88/51cyk/kindeditor/plugins/emoticons/images/10.gif\" border=\"0\" alt=\"\" /><img src=\"http://localhost:88/51cyk/kindeditor/plugins/emoticons/images/20.gif\" border=\"0\" alt=\"\" />', '78', '2017-05-04 13:52:47', '0');

-- ----------------------------
-- Table structure for test_talk_child
-- ----------------------------
DROP TABLE IF EXISTS `test_talk_child`;
CREATE TABLE `test_talk_child` (
  `pkTalkChild` int(11) NOT NULL AUTO_INCREMENT COMMENT '话题子信息',
  `content` varchar(255) NOT NULL COMMENT '回复内容',
  `author` varchar(25) NOT NULL COMMENT '回复作者',
  `startTime` datetime NOT NULL COMMENT '回复的时间',
  `pkTalk` int(11) NOT NULL COMMENT '所属话题',
  PRIMARY KEY (`pkTalkChild`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test_talk_child
-- ----------------------------
INSERT INTO `test_talk_child` VALUES ('1', 'dfdgdgdf', '77', '2017-04-05 14:17:37', '28');
INSERT INTO `test_talk_child` VALUES ('2', 'dfdgdgdfHJGHJ', '77', '2017-04-05 14:18:39', '28');
INSERT INTO `test_talk_child` VALUES ('3', '你猜我猜你猜不出来', '77', '2017-04-05 14:20:31', '28');
INSERT INTO `test_talk_child` VALUES ('4', '你好啊', '82', '2017-04-05 15:11:23', '29');
INSERT INTO `test_talk_child` VALUES ('5', '你很好啊', '82', '2017-04-05 15:11:34', '29');
INSERT INTO `test_talk_child` VALUES ('6', '发广告过过过过过过过过过过过过过', '82', '2017-04-05 15:12:09', '29');
INSERT INTO `test_talk_child` VALUES ('7', '4444444', '82', '2017-04-05 15:12:49', '29');
INSERT INTO `test_talk_child` VALUES ('8', 'dfdfdg', '82', '2017-04-05 15:38:03', '30');
INSERT INTO `test_talk_child` VALUES ('10', 'ddg', '82', '2017-04-05 15:43:58', '30');
INSERT INTO `test_talk_child` VALUES ('11', 'dgdgdg', '82', '2017-04-05 15:44:02', '30');
INSERT INTO `test_talk_child` VALUES ('12', 'dgdgdg', '82', '2017-04-05 15:44:06', '30');
INSERT INTO `test_talk_child` VALUES ('15', 'dg', '84', '2017-04-05 15:54:47', '31');
INSERT INTO `test_talk_child` VALUES ('16', 'dg', '84', '2017-04-05 15:54:52', '31');
INSERT INTO `test_talk_child` VALUES ('17', 'dgdg', '84', '2017-04-05 15:54:58', '31');
INSERT INTO `test_talk_child` VALUES ('18', 'dgdg', '84', '2017-04-05 15:55:05', '31');
INSERT INTO `test_talk_child` VALUES ('19', '4545', '84', '2017-04-05 18:33:55', '32');
INSERT INTO `test_talk_child` VALUES ('20', '共和国', '82', '2017-04-06 15:18:57', '34');
INSERT INTO `test_talk_child` VALUES ('22', 'fgfgf', '82', '2017-04-06 16:58:02', '28');
INSERT INTO `test_talk_child` VALUES ('23', 'fgf', '82', '2017-04-06 17:01:11', '35');
INSERT INTO `test_talk_child` VALUES ('24', 'fgfgfgf', '82', '2017-04-06 17:01:18', '35');
INSERT INTO `test_talk_child` VALUES ('25', 'fgdfg', '82', '2017-04-06 18:02:52', '17');
INSERT INTO `test_talk_child` VALUES ('26', 'fgdfgfd', '82', '2017-04-06 18:03:12', '17');
INSERT INTO `test_talk_child` VALUES ('27', 'fgfgfg', '83', '2017-04-06 18:16:36', '17');
INSERT INTO `test_talk_child` VALUES ('28', 'gfgf', '83', '2017-04-06 18:32:09', '17');
INSERT INTO `test_talk_child` VALUES ('29', 'fgfgfg', '83', '2017-04-06 18:32:14', '17');
INSERT INTO `test_talk_child` VALUES ('30', 'fgfgf', '83', '2017-04-06 18:36:28', '16');
INSERT INTO `test_talk_child` VALUES ('31', 'fgfgfg', '83', '2017-04-06 18:36:32', '16');
INSERT INTO `test_talk_child` VALUES ('32', 'fgfgfg', '83', '2017-04-06 18:36:36', '16');
INSERT INTO `test_talk_child` VALUES ('33', 'fgfgfgf', '83', '2017-04-06 18:36:41', '16');
INSERT INTO `test_talk_child` VALUES ('34', 'ddddddddd', '83', '2017-04-06 18:36:46', '16');
INSERT INTO `test_talk_child` VALUES ('35', 'dfdf', '83', '2017-04-06 18:36:56', '16');
INSERT INTO `test_talk_child` VALUES ('36', 'dfdfd', '83', '2017-04-06 18:37:00', '16');
INSERT INTO `test_talk_child` VALUES ('37', 'dfdfdf', '83', '2017-04-06 18:37:04', '16');
INSERT INTO `test_talk_child` VALUES ('38', 'dfdfdfdf', '83', '2017-04-06 18:37:08', '16');
INSERT INTO `test_talk_child` VALUES ('39', 'dfdfd', '82', '2017-04-08 15:34:49', '16');
INSERT INTO `test_talk_child` VALUES ('40', 'dfdfdf', '82', '2017-04-08 15:34:54', '16');
INSERT INTO `test_talk_child` VALUES ('41', 'dfdfdfd', '82', '2017-04-08 15:35:04', '16');
INSERT INTO `test_talk_child` VALUES ('42', 'dfdfdfd', '82', '2017-04-08 15:35:13', '16');
INSERT INTO `test_talk_child` VALUES ('43', 'dfddddddddd', '82', '2017-04-08 15:35:16', '16');
INSERT INTO `test_talk_child` VALUES ('44', 'dffffffff', '82', '2017-04-08 15:35:19', '16');
INSERT INTO `test_talk_child` VALUES ('45', 'ghgh', '82', '2017-04-08 16:21:21', '16');
INSERT INTO `test_talk_child` VALUES ('46', 'gg', '82', '2017-04-08 16:21:24', '16');
INSERT INTO `test_talk_child` VALUES ('47', '333', '82', '2017-04-08 16:21:27', '16');
INSERT INTO `test_talk_child` VALUES ('48', '3333', '82', '2017-04-08 16:21:31', '16');
INSERT INTO `test_talk_child` VALUES ('51', '4', '82', '2017-04-08 16:30:51', '35');
INSERT INTO `test_talk_child` VALUES ('52', '5', '82', '2017-04-08 16:30:55', '35');
INSERT INTO `test_talk_child` VALUES ('53', '6', '82', '2017-04-08 16:30:58', '35');
INSERT INTO `test_talk_child` VALUES ('54', '7', '82', '2017-04-08 16:31:01', '35');
INSERT INTO `test_talk_child` VALUES ('55', '8', '82', '2017-04-08 16:31:06', '35');
INSERT INTO `test_talk_child` VALUES ('56', '9', '82', '2017-04-08 16:31:10', '35');
INSERT INTO `test_talk_child` VALUES ('57', '10', '82', '2017-04-08 16:31:13', '35');
INSERT INTO `test_talk_child` VALUES ('58', '11', '82', '2017-04-08 16:31:20', '35');
INSERT INTO `test_talk_child` VALUES ('60', '21', '82', '2017-04-08 16:32:19', '16');
INSERT INTO `test_talk_child` VALUES ('61', '3', '82', '2017-04-08 16:53:03', '34');
INSERT INTO `test_talk_child` VALUES ('62', '4', '82', '2017-04-08 16:53:07', '34');
INSERT INTO `test_talk_child` VALUES ('63', '5', '82', '2017-04-08 16:53:11', '34');
INSERT INTO `test_talk_child` VALUES ('64', '6', '82', '2017-04-08 16:53:16', '34');
INSERT INTO `test_talk_child` VALUES ('65', '7', '82', '2017-04-08 16:53:21', '34');
INSERT INTO `test_talk_child` VALUES ('66', '8', '82', '2017-04-08 16:53:26', '34');
INSERT INTO `test_talk_child` VALUES ('67', '9', '82', '2017-04-08 16:53:32', '34');
INSERT INTO `test_talk_child` VALUES ('68', '10', '82', '2017-04-08 16:53:46', '34');
INSERT INTO `test_talk_child` VALUES ('69', '11', '82', '2017-04-08 16:55:27', '34');
INSERT INTO `test_talk_child` VALUES ('70', '6', '82', '2017-04-08 16:55:41', '31');
INSERT INTO `test_talk_child` VALUES ('71', '7', '82', '2017-04-08 16:55:47', '31');
INSERT INTO `test_talk_child` VALUES ('72', '8', '82', '2017-04-08 16:55:51', '31');
INSERT INTO `test_talk_child` VALUES ('73', '9', '82', '2017-04-08 16:55:59', '31');
INSERT INTO `test_talk_child` VALUES ('74', '10', '82', '2017-04-08 16:56:05', '31');
INSERT INTO `test_talk_child` VALUES ('75', '11', '82', '2017-04-08 16:56:13', '31');
INSERT INTO `test_talk_child` VALUES ('76', 'ggggg', '84', '2017-04-08 19:03:53', '33');
INSERT INTO `test_talk_child` VALUES ('77', 'ddddd', '78', '2017-04-13 17:45:13', '34');
INSERT INTO `test_talk_child` VALUES ('78', 'ddddd', '78', '2017-04-13 17:45:27', '34');
INSERT INTO `test_talk_child` VALUES ('79', '你好', '82', '2017-04-13 20:05:33', '18');
INSERT INTO `test_talk_child` VALUES ('80', 'fffff', '83', '2017-04-13 20:16:50', '34');
INSERT INTO `test_talk_child` VALUES ('81', '啧啧啧在做做做做做做做做做做做做做做做做做做做做做做做做做做做做做做做做做做做做做做做做做做做做做做做做做做做做做做做做做做做做啧啧啧在做做做做做做做做做做做做做做做做做做做做做做做做做做做做做做做做做做做做做做做做做做', '83', '2017-04-13 20:26:36', '34');
INSERT INTO `test_talk_child` VALUES ('82', '', '83', '2017-04-13 20:26:49', '34');
INSERT INTO `test_talk_child` VALUES ('83', 'lkk', '80', '2017-04-14 16:00:43', '11');
INSERT INTO `test_talk_child` VALUES ('84', '张凯展', '89', '2017-04-16 16:52:52', '34');
INSERT INTO `test_talk_child` VALUES ('85', 'ddd ', '78', '2017-04-29 18:53:00', '41');
INSERT INTO `test_talk_child` VALUES ('86', '哈哈', '88', '2017-04-29 18:53:48', '11');
INSERT INTO `test_talk_child` VALUES ('87', 'ggggg', '78', '2017-05-04 13:45:54', '74');
INSERT INTO `test_talk_child` VALUES ('88', 'hgggg', '78', '2017-05-04 13:56:58', '78');
INSERT INTO `test_talk_child` VALUES ('89', '', '78', '2017-05-04 13:58:15', '78');
INSERT INTO `test_talk_child` VALUES ('90', '', '78', '2017-05-04 13:58:32', '78');
INSERT INTO `test_talk_child` VALUES ('91', 'ff你好啊啊', '78', '2017-05-04 13:59:30', '78');
INSERT INTO `test_talk_child` VALUES ('92', '<img src=\"/51cyk/kindeditor/attached/image/20170504/20170504135941_85154.jpg\" alt=\"\" />', '78', '2017-05-04 13:59:43', '78');
INSERT INTO `test_talk_child` VALUES ('93', '沟沟壑壑个', '78', '2017-05-04 17:45:06', '71');

-- ----------------------------
-- Table structure for test_talk_child2
-- ----------------------------
DROP TABLE IF EXISTS `test_talk_child2`;
CREATE TABLE `test_talk_child2` (
  `pkTalkChild2` int(11) NOT NULL AUTO_INCREMENT,
  `pkTalkChild` int(11) NOT NULL COMMENT '所属子回复',
  `content` varchar(255) NOT NULL,
  `author` varchar(25) NOT NULL,
  `startTime` datetime DEFAULT NULL,
  PRIMARY KEY (`pkTalkChild2`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test_talk_child2
-- ----------------------------
INSERT INTO `test_talk_child2` VALUES ('1', '0', 'ggggg', '83', '2017-04-10 18:23:41');
INSERT INTO `test_talk_child2` VALUES ('2', '0', 'yyyyy', '83', '2017-04-10 18:26:08');
INSERT INTO `test_talk_child2` VALUES ('3', '30', 'rrrr', '83', '2017-04-10 18:27:22');
INSERT INTO `test_talk_child2` VALUES ('4', '32', 'ttttt', '83', '2017-04-10 18:27:38');
INSERT INTO `test_talk_child2` VALUES ('5', '30', '', '83', '2017-04-10 18:47:36');
INSERT INTO `test_talk_child2` VALUES ('6', '20', 'fffffff', '84', '2017-04-11 17:11:42');
INSERT INTO `test_talk_child2` VALUES ('7', '20', 'klkk', '84', '2017-04-11 17:11:42');
INSERT INTO `test_talk_child2` VALUES ('8', '61', 'ffgfgf', '84', '2017-04-11 18:50:24');
INSERT INTO `test_talk_child2` VALUES ('9', '24', '555555', '83', '2017-04-11 20:51:12');
INSERT INTO `test_talk_child2` VALUES ('10', '23', 'ggggg', '83', '2017-04-11 20:52:09');
INSERT INTO `test_talk_child2` VALUES ('11', '24', 'ggggg', '83', '2017-04-11 20:52:41');
INSERT INTO `test_talk_child2` VALUES ('12', '23', '刚刚', '83', '2017-04-11 20:52:59');
INSERT INTO `test_talk_child2` VALUES ('13', '23', 'ggggg', '83', '2017-04-11 20:53:05');
INSERT INTO `test_talk_child2` VALUES ('14', '23', '非官方发', '83', '2017-04-11 20:53:27');
INSERT INTO `test_talk_child2` VALUES ('15', '20', 'gggg', '84', '2017-04-12 01:38:03');
INSERT INTO `test_talk_child2` VALUES ('16', '20', 'gggg', '84', '2017-04-12 01:38:07');
INSERT INTO `test_talk_child2` VALUES ('17', '65', '5555', '84', '2017-04-12 01:49:50');
INSERT INTO `test_talk_child2` VALUES ('18', '68', '', '84', '2017-04-12 02:23:22');
INSERT INTO `test_talk_child2` VALUES ('19', '20', 'rgrrgr', '84', '2017-04-12 02:41:04');
INSERT INTO `test_talk_child2` VALUES ('20', '62', 'dddd', '78', '2017-04-13 17:44:44');
INSERT INTO `test_talk_child2` VALUES ('21', '79', '你好', '82', '2017-04-13 20:05:47');
INSERT INTO `test_talk_child2` VALUES ('22', '83', '5555', '80', '2017-04-14 16:00:50');
INSERT INTO `test_talk_child2` VALUES ('23', '83', '你好啊', '82', '2017-04-16 16:20:16');
INSERT INTO `test_talk_child2` VALUES ('24', '83', '大大大大', '82', '2017-04-16 16:20:24');
INSERT INTO `test_talk_child2` VALUES ('25', '20', '张凯展', '89', '2017-04-16 16:52:40');
INSERT INTO `test_talk_child2` VALUES ('26', '86', '就哈哈', '88', '2017-04-29 18:54:00');
INSERT INTO `test_talk_child2` VALUES ('27', '87', '个发广告', '78', '2017-05-04 13:46:04');
INSERT INTO `test_talk_child2` VALUES ('28', '92', '发发发', '78', '2017-05-04 13:59:52');
INSERT INTO `test_talk_child2` VALUES ('29', '93', '你好啊', '78', '2017-05-04 17:45:12');

-- ----------------------------
-- Table structure for test_taste
-- ----------------------------
DROP TABLE IF EXISTS `test_taste`;
CREATE TABLE `test_taste` (
  `pkTaste` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(8) NOT NULL COMMENT '口味名字',
  PRIMARY KEY (`pkTaste`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test_taste
-- ----------------------------
INSERT INTO `test_taste` VALUES ('1', '酸');
INSERT INTO `test_taste` VALUES ('2', '甜');
INSERT INTO `test_taste` VALUES ('3', '苦');
INSERT INTO `test_taste` VALUES ('4', '辣');
INSERT INTO `test_taste` VALUES ('5', '咸');

-- ----------------------------
-- Table structure for test_user
-- ----------------------------
DROP TABLE IF EXISTS `test_user`;
CREATE TABLE `test_user` (
  `pkUser` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `password` varchar(25) NOT NULL,
  `createTime` date NOT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `mail` varchar(50) DEFAULT NULL,
  `nickname` varchar(25) NOT NULL,
  `posts` int(11) unsigned DEFAULT NULL COMMENT '发帖次数',
  `follows` int(11) unsigned DEFAULT NULL COMMENT '关注人数',
  `fans` int(11) unsigned DEFAULT NULL COMMENT '粉丝数量',
  `img` varchar(50) DEFAULT NULL COMMENT '头像',
  `meses` int(11) DEFAULT NULL,
  PRIMARY KEY (`pkUser`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test_user
-- ----------------------------
INSERT INTO `test_user` VALUES ('77', 'admin', 'admin1', '2017-04-05', null, null, 'admin', '15', '1', '5', 'img/touxiang_1.jpg', '0');
INSERT INTO `test_user` VALUES ('78', 'zhangkailun', '111111', '2017-04-05', null, null, '张凯伦', '35', '1', '16', 'img/touxiang_2.jpg', '0');
INSERT INTO `test_user` VALUES ('79', 'zhangsan', '111111', '2017-04-05', null, null, '李四', '1', '1', '0', 'img/touxiang_3.jpg', '0');
INSERT INTO `test_user` VALUES ('80', 'lisi2', '111111', '2017-04-05', null, null, '王二', '0', '0', '0', 'img/touxiang_4.jpg', '0');
INSERT INTO `test_user` VALUES ('81', 'wangwu', '111111', '2017-04-05', null, null, '王二2', '0', '0', '7', 'img/touxiang_5.jpg', '0');
INSERT INTO `test_user` VALUES ('82', '111111', '333333', '2017-04-05', null, null, '王二4', '6', '0', '65', 'img/touxiang_4.jpg', '1');
INSERT INTO `test_user` VALUES ('83', '222222', '222222', '2017-04-05', null, null, '王二8', '2', '2', '31', 'img/touxiang_5.jpg', '0');
INSERT INTO `test_user` VALUES ('84', '333333', '333333', '2017-04-05', null, null, '王二9', '2', '0', '1', 'img/touxiang_0.jpg', '0');
INSERT INTO `test_user` VALUES ('85', '444444', '444444', '2017-04-05', null, null, '王二11', '0', '0', '0', 'img/touxiang_0.jpg', '0');
INSERT INTO `test_user` VALUES ('86', '666666', '666666', '2017-04-05', null, null, '王二44', '0', '0', '0', 'img/touxiang_0.jpg', '0');
INSERT INTO `test_user` VALUES ('87', '777777', '777777', '2017-04-05', null, null, '777777', '0', '0', '0', 'img/touxiang_0.jpg', '0');
INSERT INTO `test_user` VALUES ('88', 'ceshi1', '111111', '2017-04-16', null, null, '测试人', '1', '1', '1', 'img/touxiang_0.jpg', '1');
INSERT INTO `test_user` VALUES ('89', 'ceshi2', '111111', '2017-04-16', null, null, '测试人2', '0', '2', '0', 'img/touxiang_3.jpg', '0');
INSERT INTO `test_user` VALUES ('90', 'ceshi3', '111111', '2017-04-16', null, null, '测试3', '0', '0', '0', 'img/touxiang_0.jpg', '0');
INSERT INTO `test_user` VALUES ('91', '888888', '888888', '2017-04-16', null, null, '888888', '0', '0', '0', 'img/touxiang_0.jpg', '0');
INSERT INTO `test_user` VALUES ('92', '999999', '111111', '2017-04-16', null, null, '999999', '0', '0', '0', 'img/touxiang_0.jpg', '0');
INSERT INTO `test_user` VALUES ('93', 'ceshi5', '111111', '2017-04-16', null, null, '111111', '0', '0', '0', 'img/touxiang_0.jpg', '1');
INSERT INTO `test_user` VALUES ('94', 'ceshi100', '222222', '2017-04-27', null, null, '测试人100', '0', '0', '0', 'img/touxiang_0.jpg', '0');
INSERT INTO `test_user` VALUES ('95', '274113729', '222222', '2017-04-27', null, null, 'www', '0', '0', '0', 'img/touxiang_0.jpg', '0');
INSERT INTO `test_user` VALUES ('96', 'rrrrr', '111111', '2017-05-04', null, null, '你好啊', '0', '0', '0', 'img/touxiang_0.jpg', '0');

-- ----------------------------
-- Table structure for test_way
-- ----------------------------
DROP TABLE IF EXISTS `test_way`;
CREATE TABLE `test_way` (
  `pkWay` int(11) NOT NULL AUTO_INCREMENT,
  `pkFood` int(11) NOT NULL,
  `main` varchar(255) DEFAULT NULL COMMENT '做法主料',
  `second` varchar(255) DEFAULT NULL COMMENT '做法辅料',
  `third` varchar(255) DEFAULT NULL COMMENT '做法调料',
  `ways` varchar(1024) DEFAULT NULL COMMENT '做法',
  PRIMARY KEY (`pkWay`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test_way
-- ----------------------------
INSERT INTO `test_way` VALUES ('1', '1', '猪里脊肉(150克)', '白菜(50克)', '鸡蛋(30克)&nbsp;胡椒(3克)&nbsp;豆瓣酱(10克)&nbsp; 姜(10克)&nbsp;大葱(10克)&nbsp;辣椒(红、尖、干)(5克)&nbsp;花椒(5克)&nbsp;酱油(10克)&nbsp;料酒(8克)&nbsp;味精(5克)&nbsp;盐(10克)&nbsp;淀粉(豌豆)(10克)&nbsp;植物油(50克)', '1. 将猪里脊肉切片，鸡蛋清和淀粉、盐、味精、料酒调匀成糊，涂抹在肉片上；\r\n<br>\r\n2. 白菜叶、姜洗净切片，葱白切段；\r\n<br>\r\n3. 将35克植物油入锅，烧热，倒入花椒、干辣椒慢火炸，待辣椒呈金黄色捞出；\r\n<br>\r\n4. 然后，将辣椒、花椒切成细末；\r\n<br>\r\n5. 用锅中油爆炒豆瓣辣酱，然后将白菜叶、葱白、姜、肉汤、酱油、胡椒粉、料酒、鸡精等调料放入，略搅几下，使之调匀；\r\n<br>\r\n6. 随即放入肉片，再炖，肉片熟后，将肉片盛起，将剁碎的干辣椒、花椒末撒上；\r\n<br>\r\n7. 用剩余的植物油烧开，淋在肉片上，使热油把干辣椒、花椒粉、肉片再炸一下，即可使麻、辣、浓香四溢。');
INSERT INTO `test_way` VALUES ('2', '2', '豆腐1块', '牛肉臊子100g，新鲜蒜苗2根大蒜1个，老姜5片', '印度辣椒粉5g，川花椒5g，郫县豆瓣酱5g，花生油50g，盐少许，淀粉少许，老抽少许', '1.准备好一块石膏豆腐或者是胆水豆腐。把豆腐切成小块备用。<br>2.准备好100克牛肉馅，也可用猪肉馅代替。准备好2根蒜苗，把蒜苗切成1厘米长备用。准备好5克印度辣椒粉、5克川花椒粉。<br>3.把蒜和姜切成小粒，准备5克郫县豆瓣酱备用。<br>4.煮一锅热水，下入豆腐块加盐煮一下。<br>5.热油锅下蒜，老姜，豆瓣酱炒香。<br>\r\n6.加牛肉馅炒香。加豆腐块、辣椒粉、加50ml水煮开。加蒜苗炒香留一小点装盘备用。<br>\r\n7.用干淀粉、老抽加水调成芡汁，待几秒过后起锅，放川花椒粉。<br>\r\n8.起锅装盘，放几片蒜苗点缀就可以开吃了。<br>');
