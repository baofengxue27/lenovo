/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : lenovo

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2019-02-19 20:57:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `addr`
-- ----------------------------
DROP TABLE IF EXISTS `addr`;
CREATE TABLE `addr` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `sname` varchar(255) DEFAULT NULL,
  `stel` varchar(255) DEFAULT NULL,
  `addr` varchar(255) DEFAULT NULL,
  `addrInfo` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of addr
-- ----------------------------
INSERT INTO `addr` VALUES ('1', '1', '张三', '110', '山西太原', '墙缝商务', 'a@qq.com');
INSERT INTO `addr` VALUES ('2', '3', '李四', '119', '山西太原', '水利小区', 'b@qq.com');
INSERT INTO `addr` VALUES ('3', '42', '李强强', '120', '山西太原', '动物园', '3131');
INSERT INTO `addr` VALUES ('5', '49', '风雪', '110', '武汉呢', '阿凡达', '1131354378@qq.com');

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(10) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL COMMENT '密码',
  `time` int(11) DEFAULT NULL,
  `lasttime` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('16', 'admin12', 'eyJpdiI6InMrMUw4aXdZYkFDT29rSnVldTN5MUE9PSIsInZhbHVlIjoiODNCRWpoTVRxVVFoNHE2N0VvUHFrQT09IiwibWFjIjoiZmYwOTJkMDk2YTg0NWVmZWVmZTFhOTVhOTE1YjNkYzllOTdjNDlhZjE4ZTE0NGRlYTc0ZWEzOThmZDlkMGZmNiJ9', '1498743969', '1550476278', '29', '0');
INSERT INTO `admin` VALUES ('22', 'admin1', 'eyJpdiI6Im9VczhoQ2hEaTRwT2RjQmpsMEV5NVE9PSIsInZhbHVlIjoiUlVOTG1nTHBVN05LcGZPemZVU1VaQT09IiwibWFjIjoiYzNlMTE4OWU2ZDZjMDY2MzI0NDA3NjFhOGY2NzljYmFjN2NlZWY1NWQwYzMwN2U4Nzg1MTgyNjM1ZTdlNzFjOSJ9', '1550416225', null, null, '0');

-- ----------------------------
-- Table structure for `ads`
-- ----------------------------
DROP TABLE IF EXISTS `ads`;
CREATE TABLE `ads` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `img` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `href` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ads
-- ----------------------------
INSERT INTO `ads` VALUES ('3', '149940933530592.jpg', '11', '11111', '11111');
INSERT INTO `ads` VALUES ('4', '14994093444537.jpg', '21', '341321', '2131');
INSERT INTO `ads` VALUES ('5', '14994093546654.jpg', '32', '3232', '322');
INSERT INTO `ads` VALUES ('6', '14994093641939.jpg', '43', '21311', '21321');
INSERT INTO `ads` VALUES ('7', '149940937513235.jpg', '43', '34', '343');
INSERT INTO `ads` VALUES ('8', '14994093849567.jpg', '343', '343', '434');

-- ----------------------------
-- Table structure for `comment`
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `gid` int(11) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `start` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `statu` tinyint(4) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '1', '3', '111', '3', '312321312', '0', null);
INSERT INTO `comment` VALUES ('2', '1', '3', '222', '4', '32131231', '0', null);
INSERT INTO `comment` VALUES ('3', '3', '3', '333', '5', '31313121', '0', null);

-- ----------------------------
-- Table structure for `goods`
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `text` text,
  `config` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', '18', '领带002', '121212121', '149925888523406.jpg', '121', '21', '<p>111111111111</p>', '<p>22222222</p>');
INSERT INTO `goods` VALUES ('2', '7', '西服001', '西服001西服001西服001', '149925915427415.jpg', '1000', '100', '<p>11111111111111111</p>', '<p>22222222222222</p>');
INSERT INTO `goods` VALUES ('3', '18', '领带01', '领带01领带01领带01领带01领带01', '149926038314209.jpg', '2121', '121', '<p>222222222222222</p>', '<p>33333333333</p>');
INSERT INTO `goods` VALUES ('4', '10', '手机111', '111111', '14996912205913.jpg', '21321', '131', '<p><img src=\"/ueditor/php/upload/image/20170710/1499691244576582.jpg\" title=\"1499691244576582.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20170710/1499691244837828.jpg\" title=\"1499691244837828.jpg\"/></p><p><br/></p>', '<p>111111111122111</p>');

-- ----------------------------
-- Table structure for `goodsimg`
-- ----------------------------
DROP TABLE IF EXISTS `goodsimg`;
CREATE TABLE `goodsimg` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gid` int(11) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goodsimg
-- ----------------------------
INSERT INTO `goodsimg` VALUES ('1', '2', '149925916219204.jpg');
INSERT INTO `goodsimg` VALUES ('2', '2', '149925916222765.jpg');
INSERT INTO `goodsimg` VALUES ('3', '2', '149925916217186.jpg');
INSERT INTO `goodsimg` VALUES ('4', '2', '14992591638627.jpg');
INSERT INTO `goodsimg` VALUES ('5', '2', '14992591634976.jpg');
INSERT INTO `goodsimg` VALUES ('6', '3', '14992603908230.jpg');
INSERT INTO `goodsimg` VALUES ('7', '3', '149926039029799.jpg');
INSERT INTO `goodsimg` VALUES ('8', '3', '14992603918724.jpg');
INSERT INTO `goodsimg` VALUES ('9', '3', '149926039119133.jpg');
INSERT INTO `goodsimg` VALUES ('10', '3', '14992603916322.jpg');
INSERT INTO `goodsimg` VALUES ('11', '4', '14996912289182.jpg');
INSERT INTO `goodsimg` VALUES ('12', '4', '14996912286591.jpg');
INSERT INTO `goodsimg` VALUES ('13', '4', '149969122822668.jpg');
INSERT INTO `goodsimg` VALUES ('14', '4', '14996912283029.jpg');
INSERT INTO `goodsimg` VALUES ('15', '4', '14996912288170.jpg');
INSERT INTO `goodsimg` VALUES ('16', '4', '14996912294827.jpg');
INSERT INTO `goodsimg` VALUES ('17', '5', '');
INSERT INTO `goodsimg` VALUES ('18', '6', '154754960830275.jpg');
INSERT INTO `goodsimg` VALUES ('19', '6', '154754960829888.png');

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `gid` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `aid` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `money` tinyint(4) DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('20', 'DZ_154772328831242', null, '4', '21321', '1', null, '1547723288', null, '1');
INSERT INTO `orders` VALUES ('21', 'DZ_154772328831242', null, '3', '2121', '3', null, '1547723288', null, '1');
INSERT INTO `orders` VALUES ('22', 'DZ_154772335212923', null, '4', '21321', '1', null, '1547723352', null, '1');
INSERT INTO `orders` VALUES ('23', 'DZ_154772348310392', null, '4', '21321', '1', null, '1547723483', null, '1');
INSERT INTO `orders` VALUES ('24', 'DZ_154772355420066', null, '3', '2121', '1', null, '1547723554', null, '1');

-- ----------------------------
-- Table structure for `orderstatu`
-- ----------------------------
DROP TABLE IF EXISTS `orderstatu`;
CREATE TABLE `orderstatu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderstatu
-- ----------------------------
INSERT INTO `orderstatu` VALUES ('1', '未付款');
INSERT INTO `orderstatu` VALUES ('2', '已发货');
INSERT INTO `orderstatu` VALUES ('3', '在途中');
INSERT INTO `orderstatu` VALUES ('4', '配送中');
INSERT INTO `orderstatu` VALUES ('5', '配送中');
INSERT INTO `orderstatu` VALUES ('6', '已完成');

-- ----------------------------
-- Table structure for `slider`
-- ----------------------------
DROP TABLE IF EXISTS `slider`;
CREATE TABLE `slider` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `img` varchar(255) DEFAULT NULL,
  `orders` tinyint(4) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `href` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of slider
-- ----------------------------
INSERT INTO `slider` VALUES ('17', '155041668820177.jpg', '1', '11', '11');
INSERT INTO `slider` VALUES ('18', '155041671221006.jpg', '2', '2', '22');
INSERT INTO `slider` VALUES ('19', '155041673527958.jpg', '3', '3', '33');
INSERT INTO `slider` VALUES ('20', '155041675825647.jpg', '4', '4', '4');
INSERT INTO `slider` VALUES ('21', '15504167899271.jpg', '5', '5', '5');

-- ----------------------------
-- Table structure for `types`
-- ----------------------------
DROP TABLE IF EXISTS `types`;
CREATE TABLE `types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `is_lou` tinyint(4) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of types
-- ----------------------------
INSERT INTO `types` VALUES ('1', '衣服', '0', '0,', '200', '1', '衣服', '衣服衣服', '衣服衣服衣服衣服衣服衣服衣服衣服衣服衣服');
INSERT INTO `types` VALUES ('2', '数码', '0', '0,', '100', '1', '数码', '数码数码数码', '数码数码数码');
INSERT INTO `types` VALUES ('5', '男装', '1', '0,1,', '11', '0', '男装', '男装男装', '男装男装男装男装');
INSERT INTO `types` VALUES ('6', '女装', '1', '0,1,', '20', '0', '女装女装', '女装女装女装', '女装女装女装');
INSERT INTO `types` VALUES ('7', '西服', '5', '0,1,5,', '111', '0', '西服', '西服西服西服', '西服西服');
INSERT INTO `types` VALUES ('9', '手机', '2', '0,2,', '121', '0', '手机', '手机', '手机');
INSERT INTO `types` VALUES ('10', '老人机', '9', '0,2,9,', '21', '0', '老人机', '老人机', '老人机');
INSERT INTO `types` VALUES ('18', '领带', '5', '0,1,5,', '21211', '0', '领带领带领带', '领带领带领带', '121212');
INSERT INTO `types` VALUES ('19', '裙子', '6', '0,1,6,', '20', '0', '裙子裙子', '裙子裙子裙子', '裙子裙子裙子');
INSERT INTO `types` VALUES ('20', '美妆', '0', '0,', '21', '0', '美妆', '美妆', '美妆');
INSERT INTO `types` VALUES ('21', '口红', '20', '0,20,', '21', '0', '口红口红', '口红口红口红', '口红口红');
INSERT INTO `types` VALUES ('22', '白色', '21', '0,20,21,', '32', '0', '白色白色', '白色白色', '白色白色白色');

-- ----------------------------
-- Table structure for `typesads`
-- ----------------------------
DROP TABLE IF EXISTS `typesads`;
CREATE TABLE `typesads` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of typesads
-- ----------------------------
INSERT INTO `typesads` VALUES ('3', '1', '149940946613264.jpg', '0', '111');
INSERT INTO `typesads` VALUES ('4', '1', '14994094758137.jpg', '0', '222');
INSERT INTO `typesads` VALUES ('5', '1', '149940948830414.png', '1', '232');
INSERT INTO `typesads` VALUES ('6', '2', '149940965715728.jpg', '0', '34444');
INSERT INTO `typesads` VALUES ('7', '2', '14994096663378.jpg', '0', '45454');
INSERT INTO `typesads` VALUES ('8', '2', '149940967530953.png', '1', '4444444');
INSERT INTO `typesads` VALUES ('9', '20', '149953447230168.jpg', '0', '33333');
INSERT INTO `typesads` VALUES ('10', '20', '149953448513621.png', '1', '32234');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(20) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `tel` varchar(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `token` varchar(50) DEFAULT NULL,
  `aid` int(11) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('49', '1131354738@qq.com', 'eyJpdiI6IjkyVjcyMWNVcHNzUzBjdjJERkhHYlE9PSIsInZhbHVlIjoiODRQR1hiZUU2dlJCRjRpRThIb2pIdz09IiwibWFjIjoiMjE0ZDUyZTRjMDRlM2JjN2JhZWU5NzQ3MDA3N2JhZGQzYTJiYmJiNWJkYjIzYTM4MDk1ZDRmODgwM2ExZTdhYyJ9', null, '1', '1547631972', 'XUH75TlLvhNBjXYNOtT2gNWIETcOAPePjwvvILAaZCFhyn1xHE', null, null);

-- ----------------------------
-- Table structure for `userinfo`
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `sex` tinyint(4) DEFAULT NULL,
  `birthday` int(11) DEFAULT NULL,
  `addr` varchar(255) DEFAULT NULL,
  `addrInfo` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
