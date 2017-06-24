/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : 51cyk

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2017-06-24 20:59:11
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
  `about` varchar(255) NOT NULL COMMENT '菜品简介',
  `make` int(5) NOT NULL COMMENT '制作工艺',
  `taste` int(2) NOT NULL COMMENT '五味',
  `stars` int(2) NOT NULL COMMENT '推荐星级',
  `pkCategory` int(11) NOT NULL COMMENT '所属菜系',
  `img_small` varchar(20) DEFAULT NULL COMMENT '菜品小图',
  `img_big` varchar(20) DEFAULT NULL COMMENT '菜品大图',
  PRIMARY KEY (`pkFood`)
) ENGINE=MyISAM AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test_food
-- ----------------------------
INSERT INTO `test_food` VALUES ('1', '水煮肉片', '水煮肉片肉味香辣，软嫩，易嚼。吃时肉嫩菜鲜 ，汤红油亮，麻辣味浓，最宜下饭，为家常美食之一。特色是“麻、辣、鲜、香”。', '11', '4', '3', '1', 'img/chuan_1.jpg', 'img/c_chuan_1.jpg');
INSERT INTO `test_food` VALUES ('2', '麻婆豆腐', '麻婆豆腐外观色深红亮，红白绿相衬，豆腐形整不烂，吃起来具有麻、辣、烫、嫩、酥、香、鲜等风味，突出了川菜“麻辣”的特点。', '1', '4', '4', '1', 'img/chuan_2.jpg', 'img/c_chuan_2.jpg');
INSERT INTO `test_food` VALUES ('3', '宫保鸡丁', '宫保鸡丁选用鸡肉为主料，佐以花生米、黄瓜、辣椒等辅料烹制而成。 红而不辣、辣而不猛、香辣味浓、肉质滑脆。', '1', '5', '3', '1', 'img/chuan_3.jpg', 'img/c_chuan_3.jpg');
INSERT INTO `test_food` VALUES ('4', '夫妻肺片', '夫妻肺片，制作精细，色泽美观，质嫩味鲜，麻辣浓香，非常适口。', '26', '4', '3', '1', 'img/chuan_4.jpg', 'img/c_chuan_4.jpg');
INSERT INTO `test_food` VALUES ('5', '口水鸡', '口水鸡是一道凉菜，佐料丰富，集麻辣鲜香嫩爽于一身。有“名驰巴蜀三千里，味压江南十二州”的美称。', '11', '5', '3', '1', 'img/chuan_5.jpg', 'img/c_chuan_5.jpg');
INSERT INTO `test_food` VALUES ('6', '泡椒凤爪', '泡椒凤爪是起源于重庆的民间独特美食，属渝菜小吃类。以酸辣爽口、皮韧肉香而著称。泡椒凤爪既能登大雅之堂，也为普通所喜爱。', '21', '1', '3', '1', '', 'img/c_chuan_6.jpg');
INSERT INTO `test_food` VALUES ('7', '辣子鸡丁', '经巴国布衣厨师精心改良后其口味更富有特色，成菜色泽棕红油亮，质地酥软，麻辣味浓。咸鲜醇香，略带回甜，是一款食者啖之难忘的美味佳肴。', '5', '2', '3', '1', '', 'img/c_chuan_7.jpg');
INSERT INTO `test_food` VALUES ('8', '鱼香肉丝', '鱼香肉丝是一道特色传统名菜，以鱼香调味而得名，属川菜。相传灵感来自老菜泡椒肉丝，民国年间由四川籍厨师创制而成。', '11', '3', '3', '1', '', 'img/c_chuan_8.jpg');
INSERT INTO `test_food` VALUES ('9', '东坡肘子', '东坡肘子是中国四川地区经典的地方传统名菜之一，属于川菜系。东坡肘子其实并非苏东坡之功，而是其妻子王弗的妙作。“东坡肘子”被冠以苏东坡之名。', '25', '4', '3', '1', '', 'img/c_chuan_9.jpg');
INSERT INTO `test_food` VALUES ('10', '香辣虾', '香辣虾是一道汁浓、麻辣味浓，肉质紧韧爽脆的名菜，属于渝派川菜。通常由虾、土豆、香芹、花生米等主料制作而成。在四川烹饪期刊中记录了两种重庆香辣虾的做法。', '5', '5', '3', '1', '', 'img/c_chuan_10.jpg');
INSERT INTO `test_food` VALUES ('11', '灯影牛肉', '灯影牛肉，是四川省达州市的地方传统名食。牛肉片薄如纸，色红亮，味麻辣鲜脆，细嚼之，回味无穷。', '20', '1', '3', '1', '', 'img/c_chuan_11.jpg');
INSERT INTO `test_food` VALUES ('12', '水煮鱼', '满目的辣椒红亮养眼，辣而不燥，麻而不苦。“麻上头，辣过瘾”，让水煮鱼在全国流行得一塌糊涂。', '22', '1', '3', '1', '', 'img/c_chuan_12.jpg');
INSERT INTO `test_food` VALUES ('13', '麻辣牛柳', '麻辣牛柳是一道传统名菜，“牛柳”指的是牛的里脊肉，麻辣牛柳属于川菜系，辣量可以适当改变，老少皆宜，美味可口。', '11', '5', '3', '1', '', 'img/c_chuan_13.jpg');
INSERT INTO `test_food` VALUES ('14', '四川泡菜', '四川泡菜又叫泡酸菜，传统特色菜肴，属川菜系。味道咸酸，口感脆生，色泽鲜亮，香味扑鼻，开胃提神，醒酒去腻，老少适宜。', '11', '5', '3', '1', '', 'img/c_chuan_14.jpg');
INSERT INTO `test_food` VALUES ('15', '酸辣汤', '四川酸辣汤的特点是酸、辣、咸、鲜、香。用肉丝、豆腐、冬笋、保宁醋等料经清汤煮制而成。饭后饮用，有醒酒去腻，助消化的作用。', '25', '2', '3', '1', '', 'img/c_chuan_15.jpg');
INSERT INTO `test_food` VALUES ('16', '毛血旺', '麻辣诱惑对传统的毛血旺进行了改良和创新，将其汤汁红亮、麻辣鲜香、味浓味厚的特点不断发扬光大，值得一尝为快的巴渝名菜。', '22', '4', '3', '1', '', 'img/c_chuan_16.jpg');
INSERT INTO `test_food` VALUES ('17', '酸菜鱼', '酸菜鱼是一道源自山城重庆的经典川菜，以其特有的调味和独特的烹调技法而著称，各地也有称之为“酸汤鱼”，主要以鲜草鱼为主料，配以四川泡菜煮制而成，口味酸辣可口。', '11', '1', '3', '1', '', 'img/c_chuan_17.jpg');
INSERT INTO `test_food` VALUES ('18', '回锅肉', '回锅肉在川菜中的地位是非常重要的。回锅肉一直被认为是川菜之首，川菜之化身，提到川菜必然想到回锅肉。它色香味俱全，颜色养眼，是下饭菜之首选。', '35', '1', '3', '1', '', 'img/c_chuan_18.jpg');
INSERT INTO `test_food` VALUES ('20', '豆角炒肉', '豆角炒肉是一道简单的家常菜，主要原料是四季豆角、猪肉。是配以盐、巴马火麻油等制作而成的一道美食。', '15', '1', '3', '2', 'img/lu_1.jpg', 'img/c_lu_1.jpg');
INSERT INTO `test_food` VALUES ('21', '炒牛肉片', '炒牛肉片是以牛里脊肉、芦笋、XO酱为主要食材做成的一道美食。', '22', '1', '5', '2', 'img/lu_2.jpg', 'img/c_lu_2.jpg');
INSERT INTO `test_food` VALUES ('22', '炒腊肠', '炒腊肠是一道美食，主要食材是腊肠、青椒。', '11', '5', '3', '2', 'img/lu_3.jpg', 'img/c_lu_3.jpg');
INSERT INTO `test_food` VALUES ('23', '菠菜炒鸡蛋', '菠菜炒鸡蛋，菜味清淡，菠菜又有很高的营养价值：食用菠菜可以“通血脉，开胸膈，下气调中，止咳润燥”', '11', '3', '3', '2', 'img/lu_4.jpg', 'img/c_lu_4.jpg');
INSERT INTO `test_food` VALUES ('24', '水煮肉丸', '水煮肉丸，通常由薄皮包裹肉质馅料通过蒸煮烹制而成，通过薄皮包裹，更好锁住肉质营养和美味，让肉质更加鲜嫩可口。', '15', '1', '3', '2', 'img/lu_5.jpg', 'img/c_lu_5.jpg');
INSERT INTO `test_food` VALUES ('32', '菠萝咕噜肉', '咕噜肉，又名古老肉。是一道广东的汉族特色名菜。此菜始于清代。当时在广州市的许多外国人都非常喜欢食用中国菜，尤其喜欢吃糖醋排骨，但吃时不习惯吐骨。', '15', '1', '3', '3', '', 'img/c_yue_1.jpg');
INSERT INTO `test_food` VALUES ('26', '烤乳猪', '烤乳猪是广州最著名的特色菜，并且是“满汉全席”中的主打菜肴之一。早在西周时此菜已被列为“八珍”之一，那时称为“炮豚”。', '16', '1', '3', '3', '', 'img/c_yue_2.jpg');
INSERT INTO `test_food` VALUES ('27', '蜜汁叉烧', '蜜汁叉烧是广东省传统名菜之一，属于粤菜菜系。“叉烧”是从“插烧”发展而来的。插烧是将猪的里脊肉加插在烤全猪腹内，经烧烤而成。', '14', '1', '3', '3', '', 'img/c_yue_3.jpg');
INSERT INTO `test_food` VALUES ('28', '白灼虾', '白灼虾是广东省广州地区的一道地方传统名菜。主要食材是虾，主要烹饪工艺是白灼，“白灼”二字指的是将原滋原味的鲜虾直接放进清水里煮食。', '14', '1', '3', '3', '', 'img/c_yue_4.jpg');
INSERT INTO `test_food` VALUES ('29', '鱼头豆腐汤', '豆腐含钙量比较多，而鱼肉中含有维生素D，两者合吃，借助鱼体内维生素D作用，使人体对钙的吸收率提高很多倍。因此，这道汤特别适合中年人，青少年食用。', '2', '1', '3', '3', '', 'img/c_yue_5.jpg');
INSERT INTO `test_food` VALUES ('33', '藕夹', '藕夹是由莲藕、猪肉为主要食材做成的一道菜品，是中国南方地区著名的地方特色菜肴，黄澄澄、油润润、香酥可口。', '0', '0', '3', '10', 'img/yu_1.jpg', 'img/c_yu_1.jpg');
INSERT INTO `test_food` VALUES ('34', '凉拌皮冻', '皮冻有多种做法，每种做法口感和味道都各不相同，从冰箱里拿出后切成小块，依个人口味淋不同的调料，适合夏季食用。', '0', '0', '3', '10', 'img/yu_2.jpg', 'img/c_yu_2.jpg');
INSERT INTO `test_food` VALUES ('35', '河南烩面', '河南烩面  ，“中国十大面条”之一 ，是一种荤、素、汤、饭聚而有之的传统风味小吃，以味道鲜美，经济实惠，享誉中原，遍及全国。', '0', '0', '3', '10', 'img/yu_3.jpg', 'img/c_yu_3.jpg');
INSERT INTO `test_food` VALUES ('36', '凉拌卷煎', '河南封丘地区汉族传统菜肴。《食宪鸿秘》记载：“卷煎，将蛋推皮，以碎肉加料卷好，仍用蛋糊口。猪油、白糖、甜酱和烧。切片用。”制法是先将馅料卷起，后再烧之。', '0', '0', '3', '10', 'img/yu_4.jpg', 'img/c_yu_4.jpg');
INSERT INTO `test_food` VALUES ('37', '胡辣汤', '胡辣汤，又名糊辣汤，中原汉人名小吃，起源于河南省，尤以周口市西华县逍遥镇胡辣汤最为出名。是中国北方早餐中常见的传统汤类名吃。', '0', '0', '3', '10', 'img/yu_5.jpg', 'img/c_yu_5.jpg');
INSERT INTO `test_food` VALUES ('38', '鸡汤煮干丝', '鸡汤煮干丝，特色传统名菜，属淮扬菜系。历来被推为席上美馔，淮扬菜系中的看家菜。原料主要为淮扬方干，刀工要求极为精细，多种佐料的鲜香味经过烹调，复合到豆腐干丝里，吃起来爽口开胃，异常珍美，百食不厌。', '0', '0', '3', '4', '', 'img/c_su_1.jpg');
INSERT INTO `test_food` VALUES ('39', '无锡肉骨头', '三凤桥酱排骨，俗称无锡肉骨头，江苏无锡地区传统名菜，属于苏菜系。从问世到现在已有近140年历史，为无锡著名的三大特产之一。', '0', '0', '3', '4', '', 'img/c_su_2.jpg');
INSERT INTO `test_food` VALUES ('40', '盐水鸭', '盐水鸭又叫桂花鸭，是南京著名的特产，中国地理标志产品。因南京有“金陵”别称，故也称“金陵盐水鸭”，久负盛名，至今已有两千五百多年历史。', '0', '0', '3', '4', '', 'img/c_su_3.jpg');
INSERT INTO `test_food` VALUES ('41', '金陵丸子', '金陵丸子是一道江浙地区的汉族名菜，属江浙菜系。软糯醇美，酥烂鲜香，汤汁浓稠，口味浓厚。富含蛋白质、钙、磷、铁、维生素及碳水化合物等营养物质，具有滋肝阴、补肾液、和胃润肠的功效。', '0', '0', '3', '4', '', 'img/c_su_4.jpg');
INSERT INTO `test_food` VALUES ('42', '东坡肉', '东坡肉又名红烧肉、滚肉、东坡焖肉，是江南地区特色传统名菜。', '0', '0', '3', '4', '', 'img/c_su_5.jpg');
INSERT INTO `test_food` VALUES ('43', '油焖笋', '油焖笋是江南地区一道特色名菜，以新鲜竹笋为食材。清脆爽口。', '0', '0', '3', '5', '', 'img/c_zhe_1.jpg');
INSERT INTO `test_food` VALUES ('44', '西湖醋鱼', '西湖醋鱼别名为叔嫂传珍，宋嫂鱼，是浙江杭州饭店的一道传统地方风味名菜。', '0', '0', '3', '5', '', 'img/c_zhe_2.jpg');
INSERT INTO `test_food` VALUES ('45', '荷叶粉蒸肉', '荷叶粉蒸肉是一款享有较高声誉的传统名菜。在清末，相传其名与“西湖十景”的“曲院风荷”有关。它是用当时杭州的鲜荷叶，将炒熟的米粉和经调味的猪肉裹包起来蒸制而成，其味清香，鲜肥软糯而不腻，夏天食用很适合胃口。', '0', '0', '3', '5', '', 'img/c_zhe_3.jpg');
INSERT INTO `test_food` VALUES ('46', '拔丝蜜桔', '拔丝蜜桔是浙江地区传统名菜，色泽黄亮，甜中带酸，松脆爽口。以黄岩无核蜜桔，糖桂花等为作料。', '0', '0', '3', '5', '', 'img/c_zhe_4.jpg');
INSERT INTO `test_food` VALUES ('47', '扬州炒饭', '扬州炒饭又名扬州蛋炒饭，是江苏扬州经典的小吃。相传源于隋朝，后经历代厨师逐步创新，结合淮扬菜特点，发展而成。', '0', '0', '3', '5', '', 'img/c_zhe_5.jpg');
INSERT INTO `test_food` VALUES ('48', '佛跳墙', '佛跳墙，又名满坛香、福寿全，是福建福州的当地名菜，属闽菜系。相传，它是在清道光年间由福州聚春园菜馆老板郑春发研制出来的。佛跳墙富含营养，可促进发育，美容，延缓衰老，增强免疫力，乃进补佳品。', '0', '0', '3', '6', '', 'img/c_min_1.jpg');
INSERT INTO `test_food` VALUES ('49', '漳州卤面', '漳州卤面是一道色香味俱全的地方名点，属于闽菜系。据说已有一千三百多年的历史。南方的主食是大米，所以面食应该是公元686年建郡时，由移居此地的大批北方人带过来的。', '0', '0', '3', '6', '', 'img/c_min_2.jpg');
INSERT INTO `test_food` VALUES ('50', '荔枝肉', '荔枝肉是福建省福州、莆田等地特色传统名菜，属于闽菜。已有二三百年历史。因原料中有白色的荸荠和切成十字花刀的猪肉，烹调后因外形型似荔枝而得名。', '0', '0', '3', '6', '', 'img/c_min_3.jpg');
INSERT INTO `test_food` VALUES ('51', '闽南咸饭', '闽南咸饭是由大米、酱油、盐巴、花生米、香菇、胡萝卜、咸巴拉鱼、三层肉、小虾米、海蛎干、红葱油等食材制作而成的一道美食。', '0', '0', '3', '6', '', 'img/c_min_4.jpg');
INSERT INTO `test_food` VALUES ('52', '白雪鸡', '白雪鸡是福建省一道比较有特色和出名的传统佳肴，属于闽菜。鸡在广东的吃法有很多种，比如白切鸡、手撕鸡、玫瑰油鸡、盐焗鸡等。而白雪鸡只是用适当的鸡脯肉，做出来的。', '0', '0', '3', '6', '', 'img/c_min_5.jpg');
INSERT INTO `test_food` VALUES ('53', '辣椒炒肉', '辣椒炒肉 这道色香味俱全的菜肴，是湖南人每家每户必吃的招牌“土菜”，是最具代表性的湘菜之一。主料是辣椒和猪肉，主要烹饪工艺是炒，其中辣椒一定要用足够辣味的炒出来的辣椒炒肉才够正宗。', '0', '0', '3', '7', '', 'img/c_xiang_1.jpg');
INSERT INTO `test_food` VALUES ('54', '湘西外婆菜', '湘西外婆菜是一道美味的菜肴。外婆菜原是湘西本地一道常见家常菜，原料选自湘西地区的多种野菜。如：马齿苋、萝卜丁、大叶青菜、湘西土菜、肉沫等。', '0', '0', '3', '7', '', 'img/c_xiang_2.jpg');
INSERT INTO `test_food` VALUES ('55', '牛肉粉', '牛肉粉是一种抚州各地都有而且是家喻户晓，人人皆知的风味美食，在抚州南丰就是打有南丰牛肉粉的牌号，实际上也就是一种用牛肉当臊子的米粉，但由于它风味独特，受到人们的喜爱。', '0', '0', '3', '7', '', 'img/c_xiang_3.jpg');
INSERT INTO `test_food` VALUES ('56', '腊味合蒸', '通常取腊猪肉、腊鸡、腊鱼于一钵，加入鸡汤和调料，下锅清蒸而成。吃时腊香浓重、咸甜适口、柔韧不腻。', '0', '0', '3', '7', '', 'img/c_xiang_4.jpg');
INSERT INTO `test_food` VALUES ('57', '东安鸡', '东安鸡是一道湖南省永州市东安县传统的名菜，属于湘菜系。因产于湖南东安县而得名。此菜色泽鲜艳，肉质鲜嫩，酸辣爽口，肥而不腻，食多不厌，被列为国宴菜谱之一、八大湘菜之首。', '0', '0', '3', '7', '', 'img/c_xiang_5.jpg');
INSERT INTO `test_food` VALUES ('58', '青螺炖鸭', '青螺炖鸭是一道由鸭、鲜青螺肉、香菇、小葱结、姜片、盐、冰糖等做成的美食。', '0', '0', '3', '8', '', 'img/c_hui_1.jpg');
INSERT INTO `test_food` VALUES ('59', '霉豆渣', '豆渣粑也称霉豆渣，是湖北天门市豆制品行业的传统名吃，它是以豆腐渣为原料，在一定工艺条件下发酵而制成的一种副食品。其发酵菌是稻草上的毛霉菌。霉豆渣游离氨基酸含量高，味道鲜美，是营养丰富的风味豆制品。', '0', '0', '3', '8', '', 'img/c_hui_2.jpg');
INSERT INTO `test_food` VALUES ('60', '徽州豆黄馃', '徽州豆黄馃是徽州地区传统的小吃，一种集香、黄、酥、脆为一体，味美可口，风味独特的传统珍馐食品，叫石头馃。它采用山泉和上好的面粉团，包上各种配料独特的馅子，做成两面厚薄均匀并撒上黑芝麻的馃，放在平底铁锅中，用木炭文火烤烘时，馃上面放一块圆形青石头，烤制而成。', '0', '0', '3', '8', '', 'img/c_hui_3.jpg');
INSERT INTO `test_food` VALUES ('61', '徽式红烧肉', '徽式红烧肉是一道由五花肉等食材制成的菜肴。', '0', '0', '3', '8', '', 'img/c_hui_4.jpg');
INSERT INTO `test_food` VALUES ('62', '拔丝芋头', '拔丝芋头是一道安徽的传统名菜，属于徽菜系。芋头营养价值高，富含蛋白质、钙、磷、铁、钾、镁、钠、胡萝卜素、烟酸、维生素C、B族维生素、皂角甙等多种成分，有益胃、宽肠、通便、解毒、补中益肝肾、消肿止痛、益胃健脾、散结、调节中气、化痰、添精益髓等功效。', '0', '0', '3', '8', '', 'img/c_hui_5.jpg');
INSERT INTO `test_food` VALUES ('63', '东北乱炖', '东北乱炖,又名丰收菜。素有“大杂烩”之意，即将豆角、土豆、茄子、青椒、番茄、木耳等多种蔬菜，与肉类一同炖至熟即成。东北乱炖简单易煮，有荤有素，营养丰富，味道鲜美香喷喷，是一道常见的东北家常菜。', '0', '0', '3', '9', '', 'img/c_dong_1.jpg');
INSERT INTO `test_food` VALUES ('64', '锅包肉', '锅包肉（英文名：Double Cooked Pork Slices），原名锅爆肉，是一道东北菜，光绪年间始创自哈尔滨道台府府尹杜学赢厨师郑兴文之手。', '0', '0', '3', '9', '', 'img/c_dong_2.jpg');
INSERT INTO `test_food` VALUES ('65', '地三鲜', '地三鲜是很有特色的一道东北地方传统家常菜，制作材料是三种地里时令新鲜的食材：茄子、土豆和青椒。它不仅在于鲜浓的味道、天然绿色的食材，更胜于它涵盖多种食材的营养，让三味非常普通的蔬菜做成鲜爽无比的佳肴。', '0', '0', '3', '9', '', 'img/c_dong_3.jpg');
INSERT INTO `test_food` VALUES ('66', '猪肉炖粉条', '该菜是东北菜的代表之一，富有特色的东北地区风味菜肴，深受南北方人的喜爱。猪肉炖粉条是“东北四大炖”的第一炖，顺口溜：猪肉炖粉条，馋死野狼嚎。', '0', '0', '3', '9', '', 'img/c_dong_4.jpg');
INSERT INTO `test_food` VALUES ('67', '溜肉段', '溜肉段，是东北的一道传统菜，具有外酥里嫩，味香可口的特点。成品外酥里嫩、味香可口，百姓饭桌上的家常菜。由溜肉段衍生出的锅包肉更是东北菜中的经典。', '0', '0', '3', '9', '', 'img/c_dong_5.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

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
INSERT INTO `test_talk_child2` VALUES ('30', '90', '555', '78', '2017-05-30 20:22:31');

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
INSERT INTO `test_user` VALUES ('77', 'admin', 'admin1', '2017-04-05', null, null, 'admin', '15', '1', '5', 'img/touxiang_4.jpg', '0');
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
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test_way
-- ----------------------------
INSERT INTO `test_way` VALUES ('1', '1', '猪里脊肉(150克)', '白菜(50克)', '鸡蛋(30克)&nbsp;胡椒(3克)&nbsp;豆瓣酱(10克)&nbsp; 姜(10克)&nbsp;大葱(10克)&nbsp;辣椒(红、尖、干)(5克)&nbsp;花椒(5克)&nbsp;酱油(10克)&nbsp;料酒(8克)&nbsp;味精(5克)&nbsp;盐(10克)&nbsp;淀粉(豌豆)(10克)&nbsp;植物油(50克)', '1. 将猪里脊肉切片，鸡蛋清和淀粉、盐、味精、料酒调匀成糊，涂抹在肉片上；\r\n<br>\r\n2. 白菜叶、姜洗净切片，葱白切段；\r\n<br>\r\n3. 将35克植物油入锅，烧热，倒入花椒、干辣椒慢火炸，待辣椒呈金黄色捞出；\r\n<br>\r\n4. 然后，将辣椒、花椒切成细末；\r\n<br>\r\n5. 用锅中油爆炒豆瓣辣酱，然后将白菜叶、葱白、姜、肉汤、酱油、胡椒粉、料酒、鸡精等调料放入，略搅几下，使之调匀；\r\n<br>\r\n6. 随即放入肉片，再炖，肉片熟后，将肉片盛起，将剁碎的干辣椒、花椒末撒上；\r\n<br>\r\n7. 用剩余的植物油烧开，淋在肉片上，使热油把干辣椒、花椒粉、肉片再炸一下，即可使麻、辣、浓香四溢。');
INSERT INTO `test_way` VALUES ('2', '2', '豆腐1块', '牛肉臊子100g，新鲜蒜苗2根大蒜1个，老姜5片', '印度辣椒粉5g，川花椒5g，郫县豆瓣酱5g，花生油50g，盐少许，淀粉少许，老抽少许', '1.准备好一块石膏豆腐或者是胆水豆腐。把豆腐切成小块备用。<br>2.准备好100克牛肉馅，也可用猪肉馅代替。准备好2根蒜苗，把蒜苗切成1厘米长备用。准备好5克印度辣椒粉、5克川花椒粉。<br>3.把蒜和姜切成小粒，准备5克郫县豆瓣酱备用。<br>4.煮一锅热水，下入豆腐块加盐煮一下。<br>5.热油锅下蒜，老姜，豆瓣酱炒香。<br>\r\n6.加牛肉馅炒香。加豆腐块、辣椒粉、加50ml水煮开。加蒜苗炒香留一小点装盘备用。<br>\r\n7.用干淀粉、老抽加水调成芡汁，待几秒过后起锅，放川花椒粉。<br>\r\n8.起锅装盘，放几片蒜苗点缀就可以开吃了。<br>');
INSERT INTO `test_way` VALUES ('3', '3', '鸡脯肉（225克）、花生米（50克）', '葱（45克）、姜（10克）。', '干辣椒（8克）、花椒（1.5克）、色拉油（60克）、食盐（2克）、料酒（2克）、味精（1克）、酱油（6.5克）、白糖（10克）、醋（7克）、水淀粉（22克）。', '1.将鸡脯肉用刀背拍一下，切成小丁，加入一汤匙料酒、半汤匙食用油、半茶匙白胡椒、半茶匙盐，一茶匙淀粉腌渍10分钟，再用水淀粉拌匀。<br>\r\n2.将大葱洗净切段，干辣椒洗净，剪去两头去除辣椒籽，黄瓜切丁。<br>\r\n3.在小碗中调入酱油、香醋、盐、姜汁、白砂糖和料酒，混合均匀制成调味料汁。<br>\r\n4.锅中留底油，烧热后将花椒和干辣椒放入，用小火煸炸出香味，随后放入大葱段。<br>\r\n5.放入鸡丁，放1汤匙料酒，将鸡丁滑炒变色，然后倒入水淀粉。<br>\r\n6.最后调入料汁，再放入熟花生米，翻炒均匀，用水淀粉勾芡即成。<br>');
INSERT INTO `test_way` VALUES ('4', '4', '鲜牛肉500克、牛杂（肚、心、舌、头皮等）500克', '老卤水500毫升，油酥花生米100克、芝麻面100克', '酱油150毫升、辣椒油25毫升、花椒面25克、八角4克、味精5克、花椒5克、肉桂5克、精盐125克、白酒50克', '1.将牛肉、牛杂洗净。<br>\r\n2.牛肉切成大块，与牛杂一起放锅内，加入清水（以淹过牛肉为度），用旺火烧沸，并不断撇去浮沫，见肉呈白红色，倒去汤水。<br>\r\n3.锅内倒入老卤水，放入香料包（将花椒、肉桂、八角用布包扎好）、白酒和精盐，再加清水400克左右，旺火烧沸约30分钟后，改用小火继续烧1.5小时，煮至牛肉、牛杂酥而不烂，捞出晾凉。<br>\r\n4.卤汁用旺火烧沸，约10分钟后，取碗一只，舀入卤水250克，加入味精、辣椒油、酱油、花椒面调成味汁。<br>\r\n5..将晾凉的牛肉、牛杂分别切成4厘米长、2厘米宽、0.2厘米厚的片，混合在一起，淋入卤汁拌匀，分盛若干盘，撒上油酥花生末和芝麻面即成。<br>');
INSERT INTO `test_way` VALUES ('5', '5', '小型三黄鸡1只（300g）', '葱1根、姜3片', '麻辣酱1袋、盐少许、花椒15粒、植物油2大勺', '1．鸡肉洗净，斩小块，放入姜片和葱段，加少许盐腌制片刻；<br>\r\n2．取一只干净的碗，放入麻辣酱。<br>\r\n3．另起锅烧热，放两大勺植物油，油烧至七成热，放入花椒、葱姜爆香。<br>\r\n4．用滤网滤去花椒、葱姜，热油倒入盛放麻辣酱的碗中，调和均匀。<br>\r\n5．锅中烧水，水沸后将鸡肉与姜葱一同倒入锅中，氽烫去血水。<br>\r\n6．煮到鸡肉断生，立刻关火，保持鸡肉在水中浸泡10分钟左右后捞出，用清水洗去浮沫，放入冷水中浸泡5分钟，摆盘，取第4步中的红油淋在鸡肉上，撒少许葱花、花生碎即可。<br>');
INSERT INTO `test_way` VALUES ('6', '6', '鸡爪适量', '野山椒适量', '食盐适量，味精2克，姜半块，蒜适量，八角2个，花椒1钱，桂皮适量，白醋适量，香叶2片，水适量', '1、首先将鸡爪洗干净，然后用刀把鸡爪劈成两半，方便入味。准备好香料；<br>\r\n2、鸡爪放入锅中，加生姜，蒜瓣，花椒，香叶，八角，桂皮，盐；<br>\r\n3、煮约13分钟至鸡爪煮熟，注意鸡爪不可煮的太烂；<br>\r\n4、将鸡爪捞出来，放在自来水底下冲凉，这样可以避免后来出现胶质，把胶质和油脂都冲走后，晾凉；<br>\r\n5、准备一个玻璃或瓷质的容器，放入泡椒及泡椒水（喜欢吃辣的可以把泡椒切碎），再加些纯净水或凉白开也可以，再倒入适量的白醋，搅拌均匀后加入味精和盐；<br>\r\n6、将凉了的鸡爪放到泡椒水里去，盖上盖子，放冰箱里冷藏让它入味；<br>\r\n7、自家口味觉得泡了2天的最够味。隔一段时间翻动一下，好让味道更均匀。<br>');
INSERT INTO `test_way` VALUES ('7', '7', '鸡脯肉250克', '荸荠50克，泡椒15克，鸡蛋1个，淀粉适量。', '猪油50克，酱油0.5大匙，高汤1大匙，料酒0.5大匙，香葱2棵，生姜1小块，大蒜6瓣，香醋适量，精盐1小匙，白糖0.5小匙，味精1小匙。', '1.鸡脯肉去掉筋膜，洗净后切丁，加盐、酱油、料酒、味精拌匀腌制。<br>\r\n2.荸荠去皮，洗净后切丁；泡椒去蒂、籽剁碎；葱、姜、蒜洗净切末；把蛋清、淀粉、水调成稀糊。<br>\r\n3.炒锅置大火上，下猪油烧热，鸡丁用稀糊上浆后，下油锅滑散至熟。<br>\r\n4.下入泡椒，急速翻炒至鸡丁全部呈辣椒红色时，下入荸荠、姜、葱、蒜炒出香味，烹入用盐、酱油、料酒、糖、味精、淀粉、高汤兑成的汁，迅速翻炒，并滴入少许醋炒匀即可。<br>');
INSERT INTO `test_way` VALUES ('8', '8', '肥瘦猪肉、木耳、笋、青椒、胡萝卜', '泡椒、葱、姜、蒜', '糖、醋、盐、老抽、生抽、淀粉', '1.猪肉切细丝，调入盐、糖、淀粉和油拌均；<br>\r\n2.笋、木耳、青椒、胡萝卜切丝。青椒和胡萝卜用于配色，只要一点就可；<br>\r\n3.葱、姜、蒜、红泡椒切好，姜的用量要大点；<br>\r\n4.调大半碗鱼香芡汁备用，另外准备盐、糖、醋、老抽、生抽、淀粉和高汤；<br>\r\n5.热锅热油下肉丝滑炒断生。油要多放些，一次性放足；<br>\r\n6.将肉丝拔到边上，下葱、姜、蒜、红泡椒，焙出香味。与肉丝拌炒均盛出备用；<br>\r\n7.用原锅底油炒笋、木耳、青椒和胡萝卜；<br>\r\n8.炒到木耳炸锅加盐调.味；<br>\r\n9.接下来将肉丝倒回锅中；<br>\r\n10.拌炒均调入鱼香芡汁，快速翻均即可出锅。<br>');
INSERT INTO `test_way` VALUES ('9', '9', '猪肘子2只1500克', '雪山大豆300克，葱节50克、绍酒50克', '姜15克、川盐5克', '1、猪肘刮 洗干净，顺骨缝划切一刀；<br>\r\n2、放入汤锅煮透，捞出剔去肘骨；<br>\r\n3、放入垫 有猪骨的砂锅内，放入煮肉原汤；<br>\r\n4、放入大 量葱节，姜，绍酒在旺火上烧开；<br>\r\n5、雪豆洗 净，下入开沸的砂锅中盖严；<br>\r\n6、然后移 到微火上煨炖约 3小时，直至用筷轻轻一戳肉皮即烂为止；<br>\r\n7、吃时放 川盐连汤带豆舀入碗中；<br>\r\n8、也可蘸 酱油味汁吃。<br>');
INSERT INTO `test_way` VALUES ('10', '10', '新鲜海白 虾500克、土豆200克（如换成红薯口味更佳）、香芹50克、油炸花生米80克', '冬笋 、黄瓜、西芹、红尖椒100克、干辣椒20克、姜片10克、香葱20克、大蒜片20克、熟芝麻30ml', '虾酱、辣椒油、味精、鸡精、豆瓣（八角、桂皮、草果、白寇、花椒、丁香）、生抽2汤匙（30ml）、香油1汤匙（15ml）、料酒1汤匙（15ml）、糖1汤匙（15ml）、鸡精少量、盐适量、油。', '1、把上好土豆（红薯）去皮洗净切条儿，用色拉油炸熟后备用，上等冬笋（或煮熟的花菜也可）黄瓜切条备用，西芹切条，大葱 切段儿，生姜大蒜仔切片各少许即可，小葱切花放一边备用。<br>\r\n2、把活对虾要清洗干净，然后在每一只虾的背上开一刀（口大为宜更宜入味）用色拉油炸熟（家庭可以用少量油）。<br>\r\n3、支炒锅，下适辣椒油和色拉油的混合油（比例是1/4），下八角、桂皮、草果、白寇、花椒炸香后捞出，然后下豆瓣葱 姜蒜，依次下炸熟的虾、土豆（红薯）、冬笋（花菜）、黄瓜、西芹来回翻炒。<br>\r\n4、待炒上几番以后，配料差不多熟了，下虾酱，然后下少许味精、鸡精、（注：无须下盐，豆瓣里有含盐）继续翻炒。5、炒 至虾身卷曲，颜色变成橙红色，即虾已断生，即可出锅。<br>\r\n6、出品上撒芝麻、香菜、小葱即可上桌！<br>\r\n7、超市购买一代火锅底料，待吃完虾后投入锅中涮菜口味更浓!然后根据口味加入适量鸡精味精和骨头汤!<br>');
INSERT INTO `test_way` VALUES ('11', '11', '黄牛肉500克', '白糖25克、花椒粉15克、辣椒粉25克', '绍酒100克、精盐10克、五香粉、味精1克、姜15克、芝麻油10克、熟菜油500克', '1、选用牛后腿上的腱子肉，去除浮皮保持洁净（勿用清水洗），切去边角，片成大薄片。<br>\r\n2、将牛肉片放在案板上铺平面理直，均匀地撒上炒干水份的盐，裹成圆筒形，晾至牛肉呈鲜红色（夏天约十四小时左右，冬天三、四天）。 <br>\r\n3、将晾干的牛肉片放在烘炉内，平铺在钢丝架上，用木炭火烘约十五分钟，至牛肉片干结。<br>\r\n4、然后上笼蒸约三十分钟取出，切成4厘米长、2厘米宽的小片，再上笼蒸约一小时半取出。<br>\r\n5、炒锅烧热，下菜油至七成热，放姜片炸出香味、捞出，待油温降至三成热时，将锅移置小火灶上，放入牛肉片慢慢炸透，滗去约三分之一的油，烹入绍酒拌匀，再加辣椒和花椒粉、白糖、味精、五香粉，颠翻均匀，起锅晾凉淋上芝麻油即成。<br>');
INSERT INTO `test_way` VALUES ('12', '12', '草鱼一条、黄豆芽（约500克）', '干辣椒、花椒、姜、蒜、葱', '油、食盐、味精、干淀粉、料酒、豆瓣(或剁椒)、生蛋清、胡椒粉', '1.将鱼杀好洗净，剁下头尾，片成鱼片，并把剩下的鱼排剁成几块。将鱼片用少许盐、料酒、生粉和一个蛋白抓匀，腌15分钟（头尾及鱼排另装盘，用同样的方法腌制) ；<br>\r\n2.烧开一小锅水，将豆芽洗净后，放入开水中烫一下，捞入大盆中，按个人口味撒一点盐，备用；<br>\r\n3.在干净的炒锅中加平常炒菜三倍的油，油热后，放入三大匙豆瓣(或剁椒)爆香，加姜、蒜、葱、花椒粒、辣椒粉及干红辣椒中小火煸炒。出味后加入头尾及鱼排，转大火，翻匀，加料酒和酱油、胡椒粉、白糖适量，继续翻炒片刻后，加一些热水，同时放盐和味精调味。待水开，保持大火，一片片将鱼片放入，用筷子拨散，3~5分钟即可关火。把煮好的鱼及全部汤汁倒入刚才盛豆芽的大盆中；<br>\r\n4.另取一干净锅，倒入半斤油(具体油量要看准备的容器大小，以倒入大盆中时，把鱼和豆芽全部淹没为准，可以目测一下)。待油热后，关火先晾一下。然后加入多多花椒及干辣椒，用小火慢慢炒出花椒和辣椒的香味。注意火不可太大，以免炒糊；<br>\r\n5.辣椒颜色快变时，立即关火，把锅中的油及花椒辣椒一起倒入盛鱼的大盆中。<br>');
INSERT INTO `test_way` VALUES ('13', '13', '牛肉（瘦）500克', ' 大葱15克 姜10克 ', '料酒15克 白砂糖25克 花椒2克 辣椒(红、尖、干)5克 味精3克 植物油100克 芝麻3克 辣椒油15克 盐10克 酱油10克', '1.扣肉洗净，剔去筋膜，切成250克左右2个大块，用葱姜汁，黄酒，盐腌渍2小时，待用。<br>\r\n2.干辣椒切段。芝麻洗净炒熟。<br>\r\n3.蒸锅置火上，将腌过的牛肉放入笼内，用旺火沸水蒸至软熟，取出晾凉，切成小手指粗细的条。<br>\r\n4.炒锅上火，下食油烧至冒烟，将肉条逐步放入，炸干水分，捞出沥油。<br>\r\n5.锅内留余油，下干辣椒，花椒略炸捞出，再下姜丝，葱段煸炒出香味，投入牛肉条，加盐，酱油，黄酒，白糖及适量的汤烧制，先用大火，再用中火收浓卤汁，待汁干时，下味精拌和，滴入辣椒油，撒上熟芝麻，翻炒均匀，即可出锅，冷却后装盘食用。<br>');
INSERT INTO `test_way` VALUES ('14', '14', '白萝卜', '花椒', '白酒、姜、盐、朝天椒、大料（八角）', '1．把泡菜坛洗干净擦干水分之后放置一边。<br>\r\n2．白萝卜洗干净后切块，用少许盐腌渍。<br>\r\n3．接着，在无油的锅里加入适量的水（视泡菜坛大小），大火加热。<br>\r\n4．水沸之后倒入上面的材料（白酒、姜、盐、朝天椒、大料、花椒、沙糖），再次沸腾之后计算时间继续加热10分钟，之后关火，放到彻底冷却。<br>\r\n5．把白萝卜洗干净盐分，再滤干水，放入泡菜坛，铺好之后倒入上面放凉的调味汁倒入。<br>\r\n6．腌若干天后便可食用。<br>');
INSERT INTO `test_way` VALUES ('15', '15', '猪里脊肉100克', '葱1支，黑木耳20克，姜2片，胡萝卜、西芹各30克，鸡蛋2个，香菜两根。', '盐1.5小匙，胡椒粉1/4大匙，高汤6杯，水生粉2大匙，醋1大匙', '1．猪里脊肉、黑木耳均洗净，胡萝卜、西芹洗净，均切丝，放入滚水中烫熟；葱香菜洗净，姜去皮，均切末；鸡蛋打入碗中，打匀。<br>\r\n2．锅中倒2大匙油烧熟，爆香姜末，再放入肉丝、黑木耳，胡萝卜及西芹炒熟，加入A料烧开，再加B料勾芡，倒入蛋汁煮滚，放葱、香菜盛起前淋上C料即可。<br>');
INSERT INTO `test_way` VALUES ('16', '16', '鸭血1块，鳝鱼 1条', '黄豆芽 300克，黄喉200克 ，牛肚 200克，午餐肉 200克 ，生菜（花叶 250克 ，苦苣250克', '食盐5克，花椒5克，干辣椒20克，料酒15毫升，大葱1段，植物油45毫升，高汤800毫升', '1、将鸭血和午餐肉切成1cm厚、4cm见方的小片。鳝鱼宰杀干净后，清水冲洗干净，再切成5cm长的小段。白百叶洗净，切成梳子形的细丝。黄喉切成5cm长小段。<br>\r\n2、黄豆芽掰去根部洗净。干辣椒用剪刀剪成1cm宽的小段。大葱切斜丝待用。小葱洗净切碎。<br>\r\n3、锅中放入适量热水，大火烧沸后放入鸭血片、鳝鱼段、黄喉段和白百叶丝氽煮约2分钟，氽去杂沫，捞出沥干水分。<br>\r\n4、苦苣，生菜洗干净放入盆底，锅中放入1汤匙（15ml）的油，待烧至五成热时放入大葱丝爆香，随后放入黄豆芽和盐1/2茶匙（3g）翻炒约3分钟，再盛入盆中作底菜。<br>\r\n5、将重庆火锅底料放入锅中，大火炒化后调入绍酒和鸡汤，烧沸后放入鸭血片、鳝鱼段、黄喉段和白百叶丝，午餐肉，再次烧沸后继续烧煮5分钟，然后盛入盆中。<br>\r\n6、把余下的油（2汤匙，30ml）倒入锅中，待烧至四成热时，将干辣椒小段和花椒放入，转小火慢慢炸出香味，最后淋入盆中，撒入青蒜碎即可。<br>');
INSERT INTO `test_way` VALUES ('17', '17', '鲤鱼1条（1000克左右），陈年泡青酸菜250克。', '鸡蛋清1个，混合油40克，汤1250克', '精盐4克，味精3克，胡椒面4克，料酒15克，泡辣椒末25克，花椒10粒，姜片3克，蒜瓣7克', '1．将鲤鱼去鳞、鱼鳃、剖腹、去内脏洗净，用刀取下两扇鱼肉，把鱼头劈开，钱骨制成块。泡青酸菜洗后切段。<br>\r\n2．将炒锅置火上，放少许油烧热，下入花椒料、姜片、蒜瓣炸出香味后，倒入泡青酸菜煸炒出味，加汤烧沸，下鱼头、鱼骨，用大火熬煮。撇去汤面浮沫，滴入料酒去腥。再加入精盐、胡椒面备用。<br>\r\n3．将鱼肉斜刀片成百姓0.3厘米的连刀鱼片，加入精盐、料酒、味精、鸡蛋清拌匀，使鱼片均匀的裹上一层蛋浆。<br>\r\n4．将锅内汤汁熬出味后，把鱼片抖散入锅。用另一锅入油烧热，把泡辣椒末炒出味后，倒入汤锅内煮1至2分钟。待鱼片断生至熟，加入味精，倒入汤盆子中即成。<br>');
INSERT INTO `test_way` VALUES ('18', '18', '二刀肉', '青蒜、葱、姜、蒜，干红辣椒', '花椒，郫县豆瓣酱，料酒，糖，酱油', '1、带皮五花肉冷水下锅加入葱段、姜片，花椒7、8粒，黄酒适量煮开。<br>\r\n2、撇净浮沫，煮至八成熟，取出自然冷却（筷子可插入即可）。<br>\r\n3、将肉切成薄片，姜、蒜切片，葱切成斜段。<br>\r\n4、将青蒜的白色部分先用刀拍一下，然后全部斜切成段备用。<br>\r\n5、.炒锅上火，加很少的油煸香辣椒、花椒及葱姜。<br>\r\n6、下入肉片煸炒，至肉片颜色变透明，边缘略微卷起。<br>\r\n7、将肉拨到锅一边，下入郫县豆瓣酱（可以先剁细）炒出红油。<br>\r\n8、适当的加入少许酱油或甜面酱调色，与肉片一起翻炒均匀。<br>\r\n9、下入青蒜，点少许料酒，糖调好味道即可出锅。<br>');
INSERT INTO `test_way` VALUES ('19', '20', '豆角200克、猪肉150克', '姜丝', '食盐、五香粉、鸡精、麻油各少许', '1、瘦肉切丝备用（也可用稍加生粉）；<br>\r\n2、豆角沿纵向剖半，成两边（这是豆角入味的小诀窍）；<br>\r\n3、锅内热油爆香姜丝，放入肉丝划炒至变色，倒入半边豆角；<br>\r\n4、准备半碗凉水，一边炒，一边点入少许水，分3－5次进行，这样可使豆角保持青翠；<br>\r\n5、待豆角将熟，以盐、五香粉和鸡精调味，出锅前淋几滴麻油即可。<br>');
INSERT INTO `test_way` VALUES ('20', '21', '牛里脊肉300g', '芦笋200g、XO酱一汤匙、大蒜两粒', '料酒一汤匙、老抽半汤匙、白胡椒粉半汤匙、干淀粉一汤匙、水淀粉20ml', '1、牛里脊肉用刀背拍松，逆势切成薄片，用一汤匙料酒、半汤匙老抽、半汤匙白胡椒粉用手抓捏均匀，再放入一汤匙干淀粉抓捏均匀；<br>\r\n2、再倒入一汤匙食用油拌匀，静置腌制20分钟；<br>\r\n3、芦笋刷洗干净，斜切成小段；<br>\r\n4、锅烧热，放三汤匙油，油温热的时候放入蒜片煸香；<br>\r\n5、倒入腌制好的牛里脊肉，翻炒至表面变色立即出锅；<br>\r\n6、把炒牛肉的锅子洗干净，放一汤匙油，烧热倒入芦笋煸炒一分钟左右。（炒过牛肉的锅子会有点脏，所以需要洗一下，否则接着炒芦笋会感觉芦笋表面不干净）<br>\r\n7、倒入刚才炒好的牛肉片，放一汤匙XO酱，迅速炒匀；<br>\r\n8、倒入准备好的水淀粉，勾芡出锅。<br>');
INSERT INTO `test_way` VALUES ('21', '22', '腊肠200克', '青椒25克、大白菜50克', '大葱、猪油、黄酒、酱油、白砂糖、香油、醋、味精、淀粉各适量', '1、将熟腊肠切成斜形小段。青椒去蒂籽，大白菜去叶，分别洗净切在菱形小片待用。<br>\r\n2、炒锅上火烧热，舀入熟猪油60克，投入腊肠，葱片煸炒，再放入青椒、大白菜片同炒，加绍酒、酱油、白糖、味精烧沸，用水淀粉勾芡，淋上麻油，醋，颠锅装盘即成。<br>');
INSERT INTO `test_way` VALUES ('22', '23', '鸡蛋150克，菠菜300克', ' 大葱 5克， 姜 2克 ', '盐 3克料酒15克姜 2克 味精 1克 香油 5克 植物油 40克克', '1、将菠菜洗净后切成三四厘米的段，放入开水中烫一下，捞出投凉待用;<br>\r\n2、将鸡蛋加盐在碗中打散;<br>\r\n3、分别将葱、姜切成末待用;<br>\r\n4、炒锅置旺火上，将植物油烧热;<br>\r\n5、锅内倒入鸡蛋炒熟，盛出待用;<br>\r\n6、炒锅再烧热，放油，下葱姜末爆香，烹入料酒，下菠菜、盐，煸炒至菠菜断生;<br>\r\n7、放入炒好的鸡蛋，翻炒均匀，加味精、香油炒匀出锅;<br>');
INSERT INTO `test_way` VALUES ('23', '24', '新鲜瘦肉500g', '新鲜蘑菇250g，番茄1个', '酱油，盐，小葱，味精，红薯粉', '1. 新鲜瘦肉手工剁成肉酱（虽然菜市场可以直接机器打肉酱，但是做出来的味道总感觉没手工剁的好吃。<br>\r\n2. 肉酱放到容器中，加味精少许，酱油视口味咸淡添加，小葱切碎后添加。	<br>\r\n3. 搅拌均匀<br>\r\n4. 加红薯粉适量，然后加少量水搅拌混合均匀，直到成品红白相见并粘稠。<br>\r\n5. 锅加水，水量可以加大些，大火烧开后下蘑菇。<br>\r\n6. 火量转换为小火偏上，水稍微翻滚为准。用小汤勺舀肉酱轻放入水中，直到所有肉酱全部放入水中为止。<br>\r\n7. 细火慢煮至所有肉球全部浮起来后即可出锅品尝。<br>');
