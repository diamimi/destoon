/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : destoon_

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-07-21 11:56:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for destoon_404
-- ----------------------------
DROP TABLE IF EXISTS `destoon_404`;
CREATE TABLE `destoon_404` (
  `itemid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL DEFAULT '',
  `refer` varchar(255) NOT NULL,
  `robot` varchar(20) NOT NULL DEFAULT '',
  `username` varchar(30) NOT NULL DEFAULT '',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='404日志';

-- ----------------------------
-- Records of destoon_404
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_ad
-- ----------------------------
DROP TABLE IF EXISTS `destoon_ad`;
CREATE TABLE `destoon_ad` (
  `aid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `typeid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `areaid` int(10) unsigned NOT NULL DEFAULT '0',
  `amount` float NOT NULL DEFAULT '0',
  `currency` varchar(20) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `introduce` varchar(255) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `fromtime` int(10) unsigned NOT NULL DEFAULT '0',
  `totime` int(10) unsigned NOT NULL DEFAULT '0',
  `stat` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `note` text NOT NULL,
  `code` text NOT NULL,
  `text_name` varchar(100) NOT NULL DEFAULT '',
  `text_url` varchar(255) NOT NULL DEFAULT '',
  `text_title` varchar(100) NOT NULL DEFAULT '',
  `text_style` varchar(50) NOT NULL DEFAULT '',
  `image_src` varchar(255) NOT NULL DEFAULT '',
  `image_url` varchar(255) NOT NULL DEFAULT '',
  `image_alt` varchar(100) NOT NULL DEFAULT '',
  `flash_src` varchar(255) NOT NULL DEFAULT '',
  `flash_url` varchar(255) NOT NULL DEFAULT '',
  `flash_loop` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `key_moduleid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `key_catid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `key_word` varchar(100) NOT NULL DEFAULT '',
  `key_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `listorder` smallint(4) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='广告';

-- ----------------------------
-- Records of destoon_ad
-- ----------------------------
INSERT INTO `destoon_ad` VALUES ('1', '网站首页图片轮播1', '14', '5', '0', '0', '', 'http://www.destoon.com/', '', '0', 'root', '1529998019', 'root', '1529998019', '1262275200', '1577894399', '0', '', '', '', '', '', '', 'file/image/player_1.jpg', 'http://www.destoon.com/', '', '', '', '1', '0', '0', '', '0', '0', '3');
INSERT INTO `destoon_ad` VALUES ('2', '网站首页图片轮播2', '14', '5', '0', '0', '', 'http://www.destoon.com/', '', '0', 'root', '1529998019', 'root', '1529998019', '1262275200', '1577894399', '0', '', '', '', '', '', '', 'file/image/player_2.jpg', 'http://www.destoon.com/', '', '', '', '1', '0', '0', '', '0', '0', '3');
INSERT INTO `destoon_ad` VALUES ('3', '首页旗帜A1', '21', '3', '0', '0', '', 'http://www.destoon.com/', '', '0', 'root', '1529998019', 'root', '1529998019', '1262275200', '1577894399', '0', '', '', '', '', '', '', 'file/image/a1.jpg', '', '', '', '', '1', '0', '0', '', '0', '0', '3');
INSERT INTO `destoon_ad` VALUES ('4', '首页旗帜A2', '22', '3', '0', '0', '', 'http://www.destoon.com/', '', '0', 'root', '1529998019', 'root', '1529998019', '1262275200', '1577894399', '0', '', '', '', '', '', '', 'file/image/a2.jpg', '', '', '', '', '1', '0', '0', '', '0', '0', '3');
INSERT INTO `destoon_ad` VALUES ('5', '首页旗帜A3', '23', '3', '0', '0', '', 'http://www.destoon.com/', '', '0', 'root', '1529998019', 'root', '1529998019', '1262275200', '1577894399', '0', '', '', '', '', '', '', 'file/image/a3.jpg', '', '', '', '', '1', '0', '0', '', '0', '0', '3');
INSERT INTO `destoon_ad` VALUES ('6', '首页旗帜A4', '24', '3', '0', '0', '', 'http://www.destoon.com/', '', '0', 'root', '1529998019', 'root', '1529998019', '1262275200', '1577894399', '0', '', '', '', '', '', '', 'file/image/a4.jpg', '', '', '', '', '1', '0', '0', '', '0', '0', '3');
INSERT INTO `destoon_ad` VALUES ('7', '首页旗帜A5', '25', '3', '0', '0', '', 'http://www.destoon.com/', '', '0', 'root', '1529998019', 'root', '1529998019', '1262275200', '1577894399', '0', '', '', '', '', '', '', 'file/image/a5.jpg', '', '', '', '', '1', '0', '0', '', '0', '0', '3');

-- ----------------------------
-- Table structure for destoon_address
-- ----------------------------
DROP TABLE IF EXISTS `destoon_address`;
CREATE TABLE `destoon_address` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `truename` varchar(30) NOT NULL DEFAULT '',
  `areaid` int(10) unsigned NOT NULL DEFAULT '0',
  `address` varchar(255) NOT NULL DEFAULT '',
  `postcode` varchar(10) NOT NULL DEFAULT '',
  `telephone` varchar(30) NOT NULL DEFAULT '',
  `mobile` varchar(30) NOT NULL DEFAULT '',
  `username` varchar(30) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `listorder` smallint(4) unsigned NOT NULL DEFAULT '0',
  `note` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`),
  KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收货地址';

-- ----------------------------
-- Records of destoon_address
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_admin
-- ----------------------------
DROP TABLE IF EXISTS `destoon_admin`;
CREATE TABLE `destoon_admin` (
  `adminid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `listorder` smallint(4) unsigned NOT NULL DEFAULT '0',
  `title` varchar(30) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `style` varchar(50) NOT NULL DEFAULT '',
  `moduleid` smallint(6) NOT NULL DEFAULT '0',
  `file` varchar(20) NOT NULL DEFAULT '',
  `action` varchar(255) NOT NULL DEFAULT '',
  `catid` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`adminid`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='管理员';

-- ----------------------------
-- Records of destoon_admin
-- ----------------------------
INSERT INTO `destoon_admin` VALUES ('1', '1', '0', '生成首页', '?action=html', '', '0', '', '', '');
INSERT INTO `destoon_admin` VALUES ('2', '1', '0', '更新缓存', '?action=cache', '', '0', '', '', '');
INSERT INTO `destoon_admin` VALUES ('3', '1', '0', '网站设置', '?file=setting', '', '0', '', '', '');
INSERT INTO `destoon_admin` VALUES ('4', '1', '0', '模块管理', '?file=module', '', '0', '', '', '');
INSERT INTO `destoon_admin` VALUES ('5', '1', '0', '数据维护', '?file=database', '', '0', '', '', '');
INSERT INTO `destoon_admin` VALUES ('6', '1', '0', '模板管理', '?file=template', '', '0', '', '', '');
INSERT INTO `destoon_admin` VALUES ('7', '1', '0', '会员管理', '?moduleid=2', '', '0', '', '', '');
INSERT INTO `destoon_admin` VALUES ('8', '1', '0', '单页管理', '?moduleid=3&file=webpage', '', '0', '', '', '');
INSERT INTO `destoon_admin` VALUES ('9', '1', '0', '排名推广', '?moduleid=3&file=spread', '', '0', '', '', '');
INSERT INTO `destoon_admin` VALUES ('10', '1', '0', '广告管理', '?moduleid=3&file=ad', '', '0', '', '', '');

-- ----------------------------
-- Table structure for destoon_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `destoon_admin_log`;
CREATE TABLE `destoon_admin_log` (
  `logid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `qstring` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(30) NOT NULL DEFAULT '',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `logtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`logid`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='管理日志';

-- ----------------------------
-- Records of destoon_admin_log
-- ----------------------------
INSERT INTO `destoon_admin_log` VALUES ('1', 'file=md5&action=add&js=1', 'root', '0.0.0.0', '1529998041');
INSERT INTO `destoon_admin_log` VALUES ('2', 'file=setting', 'root', '0.0.0.0', '1529998128');
INSERT INTO `destoon_admin_log` VALUES ('3', 'moduleid=5&action=add', 'root', '0.0.0.0', '1530241091');
INSERT INTO `destoon_admin_log` VALUES ('4', 'rand=12&moduleid=5&action=add', 'root', '0.0.0.0', '1530241222');
INSERT INTO `destoon_admin_log` VALUES ('5', 'moduleid=7&action=add', 'root', '0.0.0.0', '1530241488');
INSERT INTO `destoon_admin_log` VALUES ('6', 'file=category&mid=7&action=add&parentid=0', 'root', '0.0.0.0', '1530241499');
INSERT INTO `destoon_admin_log` VALUES ('7', 'moduleid=8&action=add', 'root', '0.0.0.0', '1530241516');
INSERT INTO `destoon_admin_log` VALUES ('8', 'moduleid=16&action=add', 'root', '0.0.0.0', '1530242272');
INSERT INTO `destoon_admin_log` VALUES ('9', 'moduleid=3&file=setting&action=ad&widget=1', 'root', '0.0.0.0', '1531211759');
INSERT INTO `destoon_admin_log` VALUES ('10', 'moduleid=16&action=add', 'root', '0.0.0.0', '1531531912');
INSERT INTO `destoon_admin_log` VALUES ('11', 'moduleid=5&action=add', 'root', '0.0.0.0', '1531533517');
INSERT INTO `destoon_admin_log` VALUES ('12', 'moduleid=5&action=add', 'root', '0.0.0.0', '1532057475');
INSERT INTO `destoon_admin_log` VALUES ('13', 'file=category&mid=16&action=add&parentid=0', 'root', '0.0.0.0', '1532057494');
INSERT INTO `destoon_admin_log` VALUES ('14', 'moduleid=5&action=add', 'root', '0.0.0.0', '1532058077');

-- ----------------------------
-- Table structure for destoon_admin_online
-- ----------------------------
DROP TABLE IF EXISTS `destoon_admin_online`;
CREATE TABLE `destoon_admin_online` (
  `sid` varchar(32) NOT NULL DEFAULT '',
  `username` varchar(30) NOT NULL DEFAULT '',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `moduleid` int(10) unsigned NOT NULL DEFAULT '0',
  `qstring` varchar(255) NOT NULL DEFAULT '',
  `lasttime` int(10) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `sid` (`sid`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='在线管理员';

-- ----------------------------
-- Records of destoon_admin_online
-- ----------------------------
INSERT INTO `destoon_admin_online` VALUES ('g6ttc4foanvrmroj0vsmlrp3f2', 'root', '0.0.0.0', '1', '', '1532140664');

-- ----------------------------
-- Table structure for destoon_ad_place
-- ----------------------------
DROP TABLE IF EXISTS `destoon_ad_place`;
CREATE TABLE `destoon_ad_place` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `moduleid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `typeid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `open` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL DEFAULT '',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `style` varchar(50) NOT NULL DEFAULT '',
  `introduce` varchar(255) NOT NULL DEFAULT '',
  `code` text NOT NULL,
  `width` smallint(5) unsigned NOT NULL DEFAULT '0',
  `height` smallint(5) unsigned NOT NULL DEFAULT '0',
  `price` float unsigned NOT NULL DEFAULT '0',
  `ads` smallint(4) unsigned NOT NULL DEFAULT '0',
  `listorder` smallint(4) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `template` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='广告位';

-- ----------------------------
-- Records of destoon_ad_place
-- ----------------------------
INSERT INTO `destoon_ad_place` VALUES ('1', '5', '6', '1', '供应排名', '', '', '', '', '0', '0', '0', '0', '0', '1529998019', 'root', '1529998019', '');
INSERT INTO `destoon_ad_place` VALUES ('2', '6', '6', '1', '求购排名', '', '', '', '', '0', '0', '0', '0', '0', '1529998019', 'root', '1529998019', '');
INSERT INTO `destoon_ad_place` VALUES ('3', '16', '6', '1', '商城排名', '', '', '', '', '0', '0', '0', '0', '0', '1529998019', 'root', '1529998019', '');
INSERT INTO `destoon_ad_place` VALUES ('4', '4', '6', '1', '公司排名', '', '', '', '', '0', '0', '0', '0', '0', '1529998019', 'root', '1529998019', '');
INSERT INTO `destoon_ad_place` VALUES ('14', '0', '5', '1', '首页图片轮播', '', '', '', '', '660', '300', '0', '2', '0', '1529998019', 'root', '1529998019', '');
INSERT INTO `destoon_ad_place` VALUES ('15', '5', '7', '1', '供应赞助商链接', '', '', '', '', '0', '0', '0', '0', '0', '1529998019', 'root', '1529998019', '');
INSERT INTO `destoon_ad_place` VALUES ('17', '4', '7', '1', '公司赞助商链接', '', '', '', '', '0', '0', '0', '0', '0', '1529998019', 'root', '1529998019', '');
INSERT INTO `destoon_ad_place` VALUES ('18', '0', '7', '1', '求购赞助商链接', '', '', '', '', '0', '0', '0', '0', '0', '1529998019', 'root', '1529998019', '');
INSERT INTO `destoon_ad_place` VALUES ('19', '8', '7', '1', '展会赞助商链接', '', '', '', '', '0', '0', '0', '0', '0', '1529998019', 'root', '1529998019', '');
INSERT INTO `destoon_ad_place` VALUES ('21', '0', '3', '1', '首页旗帜A1', '', '', '', '', '116', '212', '0', '1', '0', '1529998019', 'root', '1529998019', '');
INSERT INTO `destoon_ad_place` VALUES ('22', '0', '3', '1', '首页旗帜A2', '', '', '', '', '116', '212', '0', '1', '0', '1529998019', 'root', '1529998019', '');
INSERT INTO `destoon_ad_place` VALUES ('23', '0', '3', '1', '首页旗帜A3', '', '', '', '', '116', '212', '0', '1', '0', '1529998019', 'root', '1529998019', '');
INSERT INTO `destoon_ad_place` VALUES ('24', '0', '3', '1', '首页旗帜A4', '', '', '', '', '116', '212', '0', '1', '0', '1529998019', 'root', '1529998019', '');
INSERT INTO `destoon_ad_place` VALUES ('25', '0', '3', '1', '首页旗帜A5', '', '', '', '', '116', '212', '0', '1', '0', '1529998019', 'root', '1529998019', '');

-- ----------------------------
-- Table structure for destoon_alert
-- ----------------------------
DROP TABLE IF EXISTS `destoon_alert`;
CREATE TABLE `destoon_alert` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `mid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `areaid` int(10) unsigned NOT NULL DEFAULT '0',
  `word` varchar(100) NOT NULL DEFAULT '',
  `rate` smallint(4) unsigned NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL DEFAULT '',
  `username` varchar(30) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '0',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `sendtime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemid`),
  KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='贸易提醒';

-- ----------------------------
-- Records of destoon_alert
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_announce
-- ----------------------------
DROP TABLE IF EXISTS `destoon_announce`;
CREATE TABLE `destoon_announce` (
  `itemid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `typeid` int(10) unsigned NOT NULL DEFAULT '0',
  `areaid` int(10) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `style` varchar(50) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `fromtime` int(10) unsigned NOT NULL DEFAULT '0',
  `totime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `islink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `linkurl` varchar(255) NOT NULL DEFAULT '',
  `listorder` smallint(4) unsigned NOT NULL DEFAULT '0',
  `template` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='公告';

-- ----------------------------
-- Records of destoon_announce
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_area
-- ----------------------------
DROP TABLE IF EXISTS `destoon_area`;
CREATE TABLE `destoon_area` (
  `areaid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `areaname` varchar(50) NOT NULL DEFAULT '',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `arrparentid` varchar(255) NOT NULL DEFAULT '',
  `child` tinyint(1) NOT NULL DEFAULT '0',
  `arrchildid` text NOT NULL,
  `listorder` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`areaid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='地区';

-- ----------------------------
-- Records of destoon_area
-- ----------------------------
INSERT INTO `destoon_area` VALUES ('1', '默认地区', '0', '0', '0', '1', '1');

-- ----------------------------
-- Table structure for destoon_article_21
-- ----------------------------
DROP TABLE IF EXISTS `destoon_article_21`;
CREATE TABLE `destoon_article_21` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `areaid` int(10) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `style` varchar(50) NOT NULL DEFAULT '',
  `fee` float NOT NULL DEFAULT '0',
  `subtitle` mediumtext NOT NULL,
  `introduce` varchar(255) NOT NULL DEFAULT '',
  `tag` varchar(100) NOT NULL DEFAULT '',
  `keyword` varchar(255) NOT NULL DEFAULT '',
  `pptword` varchar(255) NOT NULL DEFAULT '',
  `author` varchar(50) NOT NULL DEFAULT '',
  `copyfrom` varchar(30) NOT NULL DEFAULT '',
  `fromurl` varchar(255) NOT NULL DEFAULT '',
  `voteid` varchar(100) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `comments` int(10) unsigned NOT NULL DEFAULT '0',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(30) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `template` varchar(30) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `islink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `linkurl` varchar(255) NOT NULL DEFAULT '',
  `filepath` varchar(255) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`),
  KEY `addtime` (`addtime`),
  KEY `catid` (`catid`),
  KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='资讯';

-- ----------------------------
-- Records of destoon_article_21
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_article_data_21
-- ----------------------------
DROP TABLE IF EXISTS `destoon_article_data_21`;
CREATE TABLE `destoon_article_data_21` (
  `itemid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `content` longtext NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='资讯内容';

-- ----------------------------
-- Records of destoon_article_data_21
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_ask
-- ----------------------------
DROP TABLE IF EXISTS `destoon_ask`;
CREATE TABLE `destoon_ask` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `typeid` int(10) unsigned NOT NULL DEFAULT '0',
  `qid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `content` mediumtext NOT NULL,
  `username` varchar(30) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL,
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `reply` mediumtext NOT NULL,
  `star` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='客服中心';

-- ----------------------------
-- Records of destoon_ask
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_banip
-- ----------------------------
DROP TABLE IF EXISTS `destoon_banip`;
CREATE TABLE `destoon_banip` (
  `itemid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(50) NOT NULL DEFAULT '',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `totime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='IP禁止';

-- ----------------------------
-- Records of destoon_banip
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_banword
-- ----------------------------
DROP TABLE IF EXISTS `destoon_banword`;
CREATE TABLE `destoon_banword` (
  `bid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `replacefrom` varchar(255) NOT NULL DEFAULT '',
  `replaceto` varchar(255) NOT NULL DEFAULT '',
  `deny` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='词语过滤';

-- ----------------------------
-- Records of destoon_banword
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_brand_13
-- ----------------------------
DROP TABLE IF EXISTS `destoon_brand_13`;
CREATE TABLE `destoon_brand_13` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `style` varchar(50) NOT NULL DEFAULT '',
  `fee` float NOT NULL DEFAULT '0',
  `keyword` varchar(255) NOT NULL DEFAULT '',
  `pptword` varchar(255) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `comments` int(10) unsigned NOT NULL DEFAULT '0',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `homepage` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(30) NOT NULL DEFAULT '',
  `groupid` smallint(4) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `adddate` date NOT NULL DEFAULT '0000-00-00',
  `totime` int(10) unsigned NOT NULL DEFAULT '0',
  `areaid` int(10) unsigned NOT NULL DEFAULT '0',
  `company` varchar(100) NOT NULL DEFAULT '',
  `vip` smallint(2) unsigned NOT NULL DEFAULT '0',
  `validated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `truename` varchar(30) NOT NULL DEFAULT '',
  `telephone` varchar(50) NOT NULL DEFAULT '',
  `fax` varchar(50) NOT NULL DEFAULT '',
  `mobile` varchar(50) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `qq` varchar(20) NOT NULL DEFAULT '',
  `wx` varchar(50) NOT NULL DEFAULT '',
  `ali` varchar(30) NOT NULL DEFAULT '',
  `skype` varchar(30) NOT NULL DEFAULT '',
  `introduce` varchar(255) NOT NULL DEFAULT '',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `editdate` date NOT NULL DEFAULT '0000-00-00',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `template` varchar(30) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `linkurl` varchar(255) NOT NULL DEFAULT '',
  `filepath` varchar(255) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`),
  KEY `username` (`username`),
  KEY `catid` (`catid`),
  KEY `areaid` (`areaid`),
  KEY `edittime` (`edittime`),
  KEY `editdate` (`editdate`,`vip`,`edittime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='品牌';

-- ----------------------------
-- Records of destoon_brand_13
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_brand_data_13
-- ----------------------------
DROP TABLE IF EXISTS `destoon_brand_data_13`;
CREATE TABLE `destoon_brand_data_13` (
  `itemid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='品牌内容';

-- ----------------------------
-- Records of destoon_brand_data_13
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_buy_6
-- ----------------------------
DROP TABLE IF EXISTS `destoon_buy_6`;
CREATE TABLE `destoon_buy_6` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(2) unsigned NOT NULL DEFAULT '0',
  `areaid` int(10) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `style` varchar(50) NOT NULL DEFAULT '',
  `fee` float NOT NULL DEFAULT '0',
  `introduce` varchar(255) NOT NULL DEFAULT '',
  `n1` varchar(100) NOT NULL,
  `n2` varchar(100) NOT NULL,
  `n3` varchar(100) NOT NULL,
  `v1` varchar(100) NOT NULL,
  `v2` varchar(100) NOT NULL,
  `v3` varchar(100) NOT NULL,
  `amount` varchar(10) NOT NULL DEFAULT '',
  `price` varchar(10) NOT NULL DEFAULT '',
  `pack` varchar(20) NOT NULL DEFAULT '',
  `days` smallint(3) unsigned NOT NULL DEFAULT '0',
  `tag` varchar(100) NOT NULL DEFAULT '',
  `keyword` varchar(255) NOT NULL DEFAULT '',
  `pptword` varchar(255) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `comments` int(10) unsigned NOT NULL DEFAULT '0',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `thumb1` varchar(255) NOT NULL DEFAULT '',
  `thumb2` varchar(255) NOT NULL DEFAULT '',
  `thumbs` text NOT NULL,
  `username` varchar(30) NOT NULL DEFAULT '',
  `groupid` smallint(4) unsigned NOT NULL DEFAULT '0',
  `company` varchar(100) NOT NULL DEFAULT '',
  `vip` smallint(2) unsigned NOT NULL DEFAULT '0',
  `validated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `truename` varchar(30) NOT NULL DEFAULT '',
  `telephone` varchar(50) NOT NULL DEFAULT '',
  `mobile` varchar(50) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `qq` varchar(20) NOT NULL DEFAULT '',
  `wx` varchar(50) NOT NULL DEFAULT '',
  `ali` varchar(30) NOT NULL DEFAULT '',
  `skype` varchar(30) NOT NULL DEFAULT '',
  `totime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `editdate` date NOT NULL DEFAULT '0000-00-00',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `adddate` date NOT NULL DEFAULT '0000-00-00',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `template` varchar(30) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `linkurl` varchar(255) NOT NULL DEFAULT '',
  `filepath` varchar(255) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`),
  KEY `username` (`username`),
  KEY `editdate` (`editdate`,`vip`,`edittime`),
  KEY `edittime` (`edittime`),
  KEY `catid` (`catid`),
  KEY `areaid` (`areaid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='求购';

-- ----------------------------
-- Records of destoon_buy_6
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_buy_data_6
-- ----------------------------
DROP TABLE IF EXISTS `destoon_buy_data_6`;
CREATE TABLE `destoon_buy_data_6` (
  `itemid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='求购内容';

-- ----------------------------
-- Records of destoon_buy_data_6
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_cache
-- ----------------------------
DROP TABLE IF EXISTS `destoon_cache`;
CREATE TABLE `destoon_cache` (
  `cacheid` varchar(32) NOT NULL DEFAULT '',
  `totime` int(10) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `cacheid` (`cacheid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='文件缓存';

-- ----------------------------
-- Records of destoon_cache
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_cart
-- ----------------------------
DROP TABLE IF EXISTS `destoon_cart`;
CREATE TABLE `destoon_cart` (
  `userid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购物车';

-- ----------------------------
-- Records of destoon_cart
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_category
-- ----------------------------
DROP TABLE IF EXISTS `destoon_category`;
CREATE TABLE `destoon_category` (
  `catid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `moduleid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `catname` varchar(50) NOT NULL DEFAULT '',
  `style` varchar(50) NOT NULL DEFAULT '',
  `catdir` varchar(255) NOT NULL DEFAULT '',
  `linkurl` varchar(255) NOT NULL DEFAULT '',
  `letter` varchar(4) NOT NULL DEFAULT '',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `item` bigint(20) unsigned NOT NULL DEFAULT '0',
  `property` smallint(6) unsigned NOT NULL DEFAULT '0',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `arrparentid` varchar(255) NOT NULL DEFAULT '',
  `child` tinyint(1) NOT NULL DEFAULT '0',
  `arrchildid` text NOT NULL,
  `listorder` smallint(4) unsigned NOT NULL DEFAULT '0',
  `template` varchar(30) NOT NULL DEFAULT '',
  `show_template` varchar(30) NOT NULL DEFAULT '',
  `seo_title` varchar(255) NOT NULL DEFAULT '',
  `seo_keywords` varchar(255) NOT NULL DEFAULT '',
  `seo_description` varchar(255) NOT NULL DEFAULT '',
  `group_list` varchar(255) NOT NULL DEFAULT '',
  `group_show` varchar(255) NOT NULL DEFAULT '',
  `group_add` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`catid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='栏目分类';

-- ----------------------------
-- Records of destoon_category
-- ----------------------------
INSERT INTO `destoon_category` VALUES ('1', '5', '供应默认分类', '', '1', 'list.php?catid=1', '', '1', '1', '0', '0', '0', '0', '', '1', '', '', '', '', '', '', '', '');
INSERT INTO `destoon_category` VALUES ('2', '6', '求购默认分类', '', '1', 'list.php?catid=2', '', '1', '0', '0', '0', '0', '0', '', '1', '', '', '', '', '', '', '', '');
INSERT INTO `destoon_category` VALUES ('3', '4', '公司默认分类', '', '1', 'list.php?catid=3', '', '1', '0', '0', '0', '0', '0', '', '1', '', '', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for destoon_category_option
-- ----------------------------
DROP TABLE IF EXISTS `destoon_category_option`;
CREATE TABLE `destoon_category_option` (
  `oid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `search` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `extend` text NOT NULL,
  `listorder` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`oid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='分类属性';

-- ----------------------------
-- Records of destoon_category_option
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_category_value
-- ----------------------------
DROP TABLE IF EXISTS `destoon_category_value`;
CREATE TABLE `destoon_category_value` (
  `oid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `moduleid` smallint(6) NOT NULL DEFAULT '0',
  `itemid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `value` text NOT NULL,
  KEY `moduleid` (`moduleid`,`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='分类属性值';

-- ----------------------------
-- Records of destoon_category_value
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_chat
-- ----------------------------
DROP TABLE IF EXISTS `destoon_chat`;
CREATE TABLE `destoon_chat` (
  `chatid` varchar(32) NOT NULL,
  `fromuser` varchar(30) NOT NULL,
  `fgettime` int(10) unsigned NOT NULL DEFAULT '0',
  `freadtime` int(10) unsigned NOT NULL DEFAULT '0',
  `fnew` int(10) unsigned NOT NULL DEFAULT '0',
  `touser` varchar(30) NOT NULL,
  `tgettime` int(10) unsigned NOT NULL DEFAULT '0',
  `treadtime` int(10) unsigned NOT NULL DEFAULT '0',
  `tnew` int(10) unsigned NOT NULL DEFAULT '0',
  `lastmsg` varchar(255) NOT NULL,
  `lasttime` int(10) unsigned NOT NULL DEFAULT '0',
  `forward` varchar(255) NOT NULL,
  UNIQUE KEY `chatid` (`chatid`),
  KEY `fromuser` (`fromuser`),
  KEY `touser` (`touser`),
  KEY `lasttime` (`lasttime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='在线聊天';

-- ----------------------------
-- Records of destoon_chat
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_chat_data_0
-- ----------------------------
DROP TABLE IF EXISTS `destoon_chat_data_0`;
CREATE TABLE `destoon_chat_data_0` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `chatid` varchar(32) NOT NULL,
  `username` varchar(30) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  PRIMARY KEY (`itemid`),
  KEY `chatid` (`chatid`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='聊天记录_0';

-- ----------------------------
-- Records of destoon_chat_data_0
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_chat_data_1
-- ----------------------------
DROP TABLE IF EXISTS `destoon_chat_data_1`;
CREATE TABLE `destoon_chat_data_1` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `chatid` varchar(32) NOT NULL,
  `username` varchar(30) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  PRIMARY KEY (`itemid`),
  KEY `chatid` (`chatid`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='聊天记录_1';

-- ----------------------------
-- Records of destoon_chat_data_1
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_chat_data_2
-- ----------------------------
DROP TABLE IF EXISTS `destoon_chat_data_2`;
CREATE TABLE `destoon_chat_data_2` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `chatid` varchar(32) NOT NULL,
  `username` varchar(30) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  PRIMARY KEY (`itemid`),
  KEY `chatid` (`chatid`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='聊天记录_2';

-- ----------------------------
-- Records of destoon_chat_data_2
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_chat_data_3
-- ----------------------------
DROP TABLE IF EXISTS `destoon_chat_data_3`;
CREATE TABLE `destoon_chat_data_3` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `chatid` varchar(32) NOT NULL,
  `username` varchar(30) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  PRIMARY KEY (`itemid`),
  KEY `chatid` (`chatid`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='聊天记录_3';

-- ----------------------------
-- Records of destoon_chat_data_3
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_chat_data_4
-- ----------------------------
DROP TABLE IF EXISTS `destoon_chat_data_4`;
CREATE TABLE `destoon_chat_data_4` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `chatid` varchar(32) NOT NULL,
  `username` varchar(30) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  PRIMARY KEY (`itemid`),
  KEY `chatid` (`chatid`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='聊天记录_4';

-- ----------------------------
-- Records of destoon_chat_data_4
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_chat_data_5
-- ----------------------------
DROP TABLE IF EXISTS `destoon_chat_data_5`;
CREATE TABLE `destoon_chat_data_5` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `chatid` varchar(32) NOT NULL,
  `username` varchar(30) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  PRIMARY KEY (`itemid`),
  KEY `chatid` (`chatid`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='聊天记录_5';

-- ----------------------------
-- Records of destoon_chat_data_5
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_chat_data_6
-- ----------------------------
DROP TABLE IF EXISTS `destoon_chat_data_6`;
CREATE TABLE `destoon_chat_data_6` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `chatid` varchar(32) NOT NULL,
  `username` varchar(30) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  PRIMARY KEY (`itemid`),
  KEY `chatid` (`chatid`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='聊天记录_6';

-- ----------------------------
-- Records of destoon_chat_data_6
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_chat_data_7
-- ----------------------------
DROP TABLE IF EXISTS `destoon_chat_data_7`;
CREATE TABLE `destoon_chat_data_7` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `chatid` varchar(32) NOT NULL,
  `username` varchar(30) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  PRIMARY KEY (`itemid`),
  KEY `chatid` (`chatid`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='聊天记录_7';

-- ----------------------------
-- Records of destoon_chat_data_7
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_chat_data_8
-- ----------------------------
DROP TABLE IF EXISTS `destoon_chat_data_8`;
CREATE TABLE `destoon_chat_data_8` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `chatid` varchar(32) NOT NULL,
  `username` varchar(30) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  PRIMARY KEY (`itemid`),
  KEY `chatid` (`chatid`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='聊天记录_8';

-- ----------------------------
-- Records of destoon_chat_data_8
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_chat_data_9
-- ----------------------------
DROP TABLE IF EXISTS `destoon_chat_data_9`;
CREATE TABLE `destoon_chat_data_9` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `chatid` varchar(32) NOT NULL,
  `username` varchar(30) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  PRIMARY KEY (`itemid`),
  KEY `chatid` (`chatid`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='聊天记录_9';

-- ----------------------------
-- Records of destoon_chat_data_9
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_city
-- ----------------------------
DROP TABLE IF EXISTS `destoon_city`;
CREATE TABLE `destoon_city` (
  `areaid` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `style` varchar(50) NOT NULL DEFAULT '',
  `iparea` mediumtext NOT NULL,
  `domain` varchar(255) NOT NULL DEFAULT '',
  `letter` varchar(4) NOT NULL DEFAULT '',
  `listorder` smallint(4) unsigned NOT NULL DEFAULT '0',
  `template` varchar(50) NOT NULL DEFAULT '',
  `seo_title` varchar(255) NOT NULL DEFAULT '',
  `seo_keywords` varchar(255) NOT NULL DEFAULT '',
  `seo_description` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `areaid` (`areaid`),
  KEY `domain` (`domain`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='城市分站';

-- ----------------------------
-- Records of destoon_city
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_club_18
-- ----------------------------
DROP TABLE IF EXISTS `destoon_club_18`;
CREATE TABLE `destoon_club_18` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `areaid` int(10) unsigned NOT NULL DEFAULT '0',
  `gid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `video` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ontop` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `style` varchar(50) NOT NULL DEFAULT '',
  `fee` float NOT NULL DEFAULT '0',
  `message` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `introduce` varchar(255) NOT NULL DEFAULT '',
  `keyword` varchar(255) NOT NULL DEFAULT '',
  `pptword` varchar(255) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `reply` int(10) unsigned NOT NULL DEFAULT '0',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(30) NOT NULL DEFAULT '',
  `passport` varchar(30) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `replyuser` varchar(30) NOT NULL,
  `replyer` varchar(30) NOT NULL,
  `replytime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `template` varchar(30) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `linkurl` varchar(255) NOT NULL DEFAULT '',
  `filepath` varchar(255) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`),
  KEY `addtime` (`addtime`),
  KEY `catid` (`catid`),
  KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商圈帖子';

-- ----------------------------
-- Records of destoon_club_18
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_club_data_18
-- ----------------------------
DROP TABLE IF EXISTS `destoon_club_data_18`;
CREATE TABLE `destoon_club_data_18` (
  `itemid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `content` longtext NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商圈帖子内容';

-- ----------------------------
-- Records of destoon_club_data_18
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_club_fans_18
-- ----------------------------
DROP TABLE IF EXISTS `destoon_club_fans_18`;
CREATE TABLE `destoon_club_fans_18` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `passport` varchar(30) NOT NULL,
  `reason` mediumtext NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemid`),
  KEY `gid` (`gid`),
  KEY `username` (`username`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商圈粉丝';

-- ----------------------------
-- Records of destoon_club_fans_18
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_club_group_18
-- ----------------------------
DROP TABLE IF EXISTS `destoon_club_group_18`;
CREATE TABLE `destoon_club_group_18` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `areaid` int(10) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL,
  `style` varchar(50) NOT NULL DEFAULT '',
  `post` int(10) unsigned NOT NULL DEFAULT '0',
  `fans` int(10) unsigned NOT NULL DEFAULT '0',
  `thumb` varchar(255) NOT NULL,
  `manager` varchar(255) NOT NULL,
  `username` varchar(30) NOT NULL DEFAULT '',
  `passport` varchar(30) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL,
  `template` varchar(30) NOT NULL,
  `show_template` varchar(30) NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `linkurl` varchar(255) NOT NULL,
  `filepath` varchar(255) NOT NULL,
  `content` mediumtext NOT NULL,
  `join_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `list_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `show_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `post_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `reply_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `reason` mediumtext NOT NULL,
  PRIMARY KEY (`itemid`),
  KEY `username` (`username`),
  KEY `addtime` (`addtime`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商圈圈子';

-- ----------------------------
-- Records of destoon_club_group_18
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_club_manage_18
-- ----------------------------
DROP TABLE IF EXISTS `destoon_club_manage_18`;
CREATE TABLE `destoon_club_manage_18` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `tid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `rid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `totime` int(10) unsigned NOT NULL DEFAULT '0',
  `typeid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `content` mediumtext NOT NULL,
  `reason` mediumtext NOT NULL,
  `message` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemid`),
  KEY `username` (`username`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商圈管理';

-- ----------------------------
-- Records of destoon_club_manage_18
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_club_reply_18
-- ----------------------------
DROP TABLE IF EXISTS `destoon_club_reply_18`;
CREATE TABLE `destoon_club_reply_18` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `gid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `fid` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `username` varchar(30) NOT NULL DEFAULT '',
  `passport` varchar(30) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemid`),
  KEY `tid` (`tid`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商圈回复';

-- ----------------------------
-- Records of destoon_club_reply_18
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_comment
-- ----------------------------
DROP TABLE IF EXISTS `destoon_comment`;
CREATE TABLE `destoon_comment` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `item_mid` smallint(6) NOT NULL DEFAULT '0',
  `item_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `item_title` varchar(255) NOT NULL DEFAULT '',
  `item_username` varchar(30) NOT NULL DEFAULT '',
  `star` tinyint(1) NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `qid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `quotation` mediumtext NOT NULL,
  `username` varchar(30) NOT NULL DEFAULT '',
  `passport` varchar(30) NOT NULL,
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `reply` mediumtext NOT NULL,
  `editor` varchar(30) NOT NULL DEFAULT '',
  `replyer` varchar(30) NOT NULL DEFAULT '',
  `replytime` int(10) unsigned NOT NULL DEFAULT '0',
  `agree` int(10) unsigned NOT NULL DEFAULT '0',
  `against` int(10) unsigned NOT NULL DEFAULT '0',
  `quote` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemid`),
  KEY `item_mid` (`item_mid`),
  KEY `item_id` (`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='评论';

-- ----------------------------
-- Records of destoon_comment
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_comment_ban
-- ----------------------------
DROP TABLE IF EXISTS `destoon_comment_ban`;
CREATE TABLE `destoon_comment_ban` (
  `bid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `moduleid` smallint(6) NOT NULL DEFAULT '0',
  `itemid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='评论禁止';

-- ----------------------------
-- Records of destoon_comment_ban
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_comment_stat
-- ----------------------------
DROP TABLE IF EXISTS `destoon_comment_stat`;
CREATE TABLE `destoon_comment_stat` (
  `sid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `moduleid` smallint(6) NOT NULL DEFAULT '0',
  `itemid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment` int(10) unsigned NOT NULL DEFAULT '0',
  `star1` int(10) unsigned NOT NULL DEFAULT '0',
  `star2` int(10) unsigned NOT NULL DEFAULT '0',
  `star3` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='评论统计';

-- ----------------------------
-- Records of destoon_comment_stat
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_company
-- ----------------------------
DROP TABLE IF EXISTS `destoon_company`;
CREATE TABLE `destoon_company` (
  `userid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `groupid` smallint(4) unsigned NOT NULL DEFAULT '0',
  `company` varchar(100) NOT NULL DEFAULT '',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `validated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `validator` varchar(100) NOT NULL DEFAULT '',
  `validtime` int(10) unsigned NOT NULL DEFAULT '0',
  `vip` smallint(2) unsigned NOT NULL DEFAULT '0',
  `vipt` smallint(2) unsigned NOT NULL DEFAULT '0',
  `vipr` smallint(2) NOT NULL DEFAULT '0',
  `type` varchar(100) NOT NULL DEFAULT '',
  `catid` varchar(100) NOT NULL DEFAULT '',
  `catids` varchar(100) NOT NULL DEFAULT '',
  `areaid` int(10) unsigned NOT NULL DEFAULT '0',
  `mode` varchar(100) NOT NULL DEFAULT '',
  `capital` float unsigned NOT NULL DEFAULT '0',
  `regunit` varchar(15) NOT NULL DEFAULT '',
  `size` varchar(100) NOT NULL DEFAULT '',
  `regyear` varchar(4) NOT NULL DEFAULT '',
  `regcity` varchar(30) NOT NULL DEFAULT '',
  `sell` varchar(255) NOT NULL DEFAULT '',
  `buy` varchar(255) NOT NULL DEFAULT '',
  `business` varchar(255) NOT NULL DEFAULT '',
  `telephone` varchar(50) NOT NULL DEFAULT '',
  `fax` varchar(50) NOT NULL DEFAULT '',
  `mail` varchar(50) NOT NULL DEFAULT '',
  `gzh` varchar(50) NOT NULL DEFAULT '',
  `gzhqr` varchar(255) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `postcode` varchar(20) NOT NULL DEFAULT '',
  `homepage` varchar(255) NOT NULL DEFAULT '',
  `fromtime` int(10) unsigned NOT NULL DEFAULT '0',
  `totime` int(10) unsigned NOT NULL DEFAULT '0',
  `styletime` int(10) unsigned NOT NULL DEFAULT '0',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `introduce` varchar(255) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `comments` int(10) unsigned NOT NULL DEFAULT '0',
  `keyword` varchar(255) NOT NULL DEFAULT '',
  `template` varchar(30) NOT NULL DEFAULT '',
  `skin` varchar(30) NOT NULL DEFAULT '',
  `domain` varchar(100) NOT NULL DEFAULT '',
  `icp` varchar(100) NOT NULL DEFAULT '',
  `linkurl` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`userid`),
  KEY `domain` (`domain`),
  KEY `vip` (`vip`),
  KEY `areaid` (`areaid`),
  KEY `groupid` (`groupid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='公司';

-- ----------------------------
-- Records of destoon_company
-- ----------------------------
INSERT INTO `destoon_company` VALUES ('1', 'root', '1', 'DESTOON B2B网站管理系统', '0', '0', '', '0', '0', '0', '0', '企业单位', '', '', '1', '', '0', '人民币', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '0', '', '', '0', '0', '', '', '', '', '', 'http://localhost:8088/destoon/index.php?homepage=root');
INSERT INTO `destoon_company` VALUES ('2', 'huolongguo', '6', '火龙果', '0', '0', '', '0', '0', '0', '0', '', '', '', '0', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '0', '', '', '0', '0', '火龙果', '', '', '', '', 'http://localhost:8088/destoon/index.php?homepage=huolongguo');
INSERT INTO `destoon_company` VALUES ('3', 'yellowbnana', '6', '黄香蕉', '0', '0', '', '0', '0', '0', '0', '', '', '', '0', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '0', '', '', '0', '0', '黄香蕉', '', '', '', '', 'http://localhost:8088/destoon/index.php?homepage=yellowbnana');
INSERT INTO `destoon_company` VALUES ('4', 'apple', '6', '的苹果', '0', '0', '', '0', '0', '0', '0', '', '', '', '0', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '0', '', '', '0', '0', '的苹果', '', '', '', '', 'http://localhost:8088/destoon/index.php?homepage=apple');
INSERT INTO `destoon_company` VALUES ('11', 'redtree', '6', '红树林', '0', '0', '', '0', '0', '0', '0', '', '', '', '0', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '0', '', '', '0', '0', '', '', '', '', '', 'http://localhost:8088/destoon/index.php?homepage=redtree');
INSERT INTO `destoon_company` VALUES ('12', 'wangdake', '6', '红树林', '0', '0', '', '0', '0', '0', '0', '', '', '', '0', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '0', '', '', '0', '0', '', '', '', '', '', 'http://localhost:8088/destoon/index.php?homepage=wangdake');
INSERT INTO `destoon_company` VALUES ('13', 'liubei', '6', '红树林', '0', '0', '', '0', '0', '0', '0', '', '', '', '0', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '0', '', '', '0', '0', '', '', '', '', '', 'http://localhost:8088/destoon/index.php?homepage=liubei');
INSERT INTO `destoon_company` VALUES ('0', 'liubei', '6', '红树林', '0', '0', '', '0', '0', '0', '0', '', '', '', '0', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '0', '', '', '0', '0', '', '', '', '', '', 'http://localhost:8088/destoon/index.php?homepage=liubei');
INSERT INTO `destoon_company` VALUES ('14', 'zd', '6', '红树林', '0', '0', '', '0', '0', '0', '0', '', '', '', '0', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '0', '', '', '0', '0', '', '', '', '', '', 'http://localhost:8088/destoon/index.php?homepage=zd');
INSERT INTO `destoon_company` VALUES ('15', 'ss', '6', '红树林', '0', '0', '', '0', '0', '0', '0', '', '', '', '0', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '0', '', '', '0', '0', '', '', '', '', '', 'http://localhost:8088/destoon/index.php?homepage=ss');
INSERT INTO `destoon_company` VALUES ('16', 'guanyu', '6', '红树林', '0', '0', '', '0', '0', '0', '0', '', '', '', '0', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '0', '', '', '0', '0', '', '', '', '', '', 'http://localhost:8088/destoon/index.php?homepage=guanyu');

-- ----------------------------
-- Table structure for destoon_company_data
-- ----------------------------
DROP TABLE IF EXISTS `destoon_company_data`;
CREATE TABLE `destoon_company_data` (
  `userid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='公司内容';

-- ----------------------------
-- Records of destoon_company_data
-- ----------------------------
INSERT INTO `destoon_company_data` VALUES ('1', '');
INSERT INTO `destoon_company_data` VALUES ('2', '');
INSERT INTO `destoon_company_data` VALUES ('3', '');
INSERT INTO `destoon_company_data` VALUES ('4', '');
INSERT INTO `destoon_company_data` VALUES ('13', '');
INSERT INTO `destoon_company_data` VALUES ('0', '');
INSERT INTO `destoon_company_data` VALUES ('14', '');
INSERT INTO `destoon_company_data` VALUES ('15', '');
INSERT INTO `destoon_company_data` VALUES ('16', '');
INSERT INTO `destoon_company_data` VALUES ('17', '');

-- ----------------------------
-- Table structure for destoon_company_setting
-- ----------------------------
DROP TABLE IF EXISTS `destoon_company_setting`;
CREATE TABLE `destoon_company_setting` (
  `userid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `item_key` varchar(100) NOT NULL DEFAULT '',
  `item_value` text NOT NULL,
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='公司设置';

-- ----------------------------
-- Records of destoon_company_setting
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_cron
-- ----------------------------
DROP TABLE IF EXISTS `destoon_cron`;
CREATE TABLE `destoon_cron` (
  `itemid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `name` varchar(20) NOT NULL,
  `schedule` varchar(255) NOT NULL,
  `lasttime` int(10) unsigned NOT NULL DEFAULT '0',
  `nexttime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `note` text NOT NULL,
  PRIMARY KEY (`itemid`),
  KEY `nexttime` (`nexttime`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COMMENT='计划任务';

-- ----------------------------
-- Records of destoon_cron
-- ----------------------------
INSERT INTO `destoon_cron` VALUES ('1', '更新在线状态', '1', 'online', '10', '1532140882', '1532141482', '0', '');
INSERT INTO `destoon_cron` VALUES ('2', '内容分表创建', '1', 'split', '0,0', '1532137872', '1532188800', '0', '');
INSERT INTO `destoon_cron` VALUES ('3', '清理过期文件缓存', '0', 'cache', '30', '1532140882', '1532142682', '0', '');
INSERT INTO `destoon_cron` VALUES ('20', '清理过期禁止IP', '0', 'banip', '0,10', '1532137872', '1532189400', '0', '');
INSERT INTO `destoon_cron` VALUES ('21', '清理系统临时文件', '0', 'temp', '0,20', '1532137872', '1532190000', '0', '');
INSERT INTO `destoon_cron` VALUES ('40', '清理3天前未付款充值记录', '0', 'charge', '1,0', '1532137872', '1532192400', '0', '');
INSERT INTO `destoon_cron` VALUES ('41', '清理30天前404日志', '0', '404', '1,10', '1532137872', '1532193000', '0', '');
INSERT INTO `destoon_cron` VALUES ('42', '清理30天前登录日志', '0', 'loginlog', '1,20', '1532137872', '1532193600', '0', '');
INSERT INTO `destoon_cron` VALUES ('43', '清理30天前管理日志', '0', 'adminlog', '1,30', '1532137872', '1532194200', '0', '');
INSERT INTO `destoon_cron` VALUES ('44', '清理30天前站内交谈', '0', 'chat', '1,40', '1532137872', '1532194800', '0', '');
INSERT INTO `destoon_cron` VALUES ('60', '清理90天前已读信件', '0', 'message', '2,0', '0', '0', '1', '');
INSERT INTO `destoon_cron` VALUES ('61', '清理90天前资金流水', '0', 'money', '2,10', '0', '0', '1', '');
INSERT INTO `destoon_cron` VALUES ('62', '清理90天前积分流水', '0', 'credit', '2,20', '0', '0', '1', '');
INSERT INTO `destoon_cron` VALUES ('63', '清理90天前短信流水', '0', 'sms', '2,30', '0', '0', '1', '');
INSERT INTO `destoon_cron` VALUES ('64', '清理90天前短信记录', '0', 'smssend', '2,40', '0', '0', '1', '');
INSERT INTO `destoon_cron` VALUES ('65', '清理90天前邮件记录', '0', 'maillog', '2,50', '0', '0', '1', '');

-- ----------------------------
-- Table structure for destoon_down_15
-- ----------------------------
DROP TABLE IF EXISTS `destoon_down_15`;
CREATE TABLE `destoon_down_15` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `areaid` int(10) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `style` varchar(50) NOT NULL DEFAULT '',
  `fee` float NOT NULL DEFAULT '0',
  `tag` varchar(255) NOT NULL DEFAULT '',
  `album` varchar(100) NOT NULL,
  `keyword` varchar(255) NOT NULL DEFAULT '',
  `pptword` varchar(255) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `comments` int(10) unsigned NOT NULL DEFAULT '0',
  `download` int(10) unsigned NOT NULL DEFAULT '0',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `fileurl` varchar(255) NOT NULL DEFAULT '',
  `fileext` varchar(10) NOT NULL DEFAULT '',
  `filesize` float NOT NULL DEFAULT '0',
  `unit` varchar(10) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `introduce` varchar(255) NOT NULL DEFAULT '',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `template` varchar(30) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `linkurl` varchar(255) NOT NULL DEFAULT '',
  `filepath` varchar(255) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`),
  KEY `username` (`username`),
  KEY `addtime` (`addtime`),
  KEY `catid` (`catid`),
  KEY `album` (`album`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='下载';

-- ----------------------------
-- Records of destoon_down_15
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_down_data_15
-- ----------------------------
DROP TABLE IF EXISTS `destoon_down_data_15`;
CREATE TABLE `destoon_down_data_15` (
  `itemid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='下载内容';

-- ----------------------------
-- Records of destoon_down_data_15
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_exhibit_8
-- ----------------------------
DROP TABLE IF EXISTS `destoon_exhibit_8`;
CREATE TABLE `destoon_exhibit_8` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `areaid` int(10) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `style` varchar(50) NOT NULL DEFAULT '',
  `fee` float NOT NULL DEFAULT '0',
  `introduce` varchar(255) NOT NULL DEFAULT '',
  `keyword` varchar(255) NOT NULL DEFAULT '',
  `pptword` varchar(255) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `comments` int(10) unsigned NOT NULL DEFAULT '0',
  `orders` int(10) unsigned NOT NULL DEFAULT '0',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(30) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `fromtime` int(10) unsigned NOT NULL DEFAULT '0',
  `totime` int(10) unsigned NOT NULL DEFAULT '0',
  `city` varchar(50) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `postcode` varchar(20) NOT NULL DEFAULT '',
  `homepage` varchar(255) NOT NULL DEFAULT '',
  `hallname` varchar(100) NOT NULL DEFAULT '',
  `sponsor` varchar(100) NOT NULL DEFAULT '',
  `undertaker` varchar(100) NOT NULL DEFAULT '',
  `truename` varchar(30) NOT NULL DEFAULT '',
  `addr` varchar(255) NOT NULL DEFAULT '',
  `telephone` varchar(100) NOT NULL DEFAULT '',
  `mobile` varchar(20) NOT NULL DEFAULT '',
  `fax` varchar(20) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `qq` varchar(20) NOT NULL DEFAULT '',
  `wx` varchar(50) NOT NULL DEFAULT '',
  `remark` mediumtext NOT NULL,
  `sign` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `template` varchar(30) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `linkurl` varchar(255) NOT NULL DEFAULT '',
  `filepath` varchar(255) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`),
  KEY `addtime` (`addtime`),
  KEY `catid` (`catid`),
  KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='展会';

-- ----------------------------
-- Records of destoon_exhibit_8
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_exhibit_data_8
-- ----------------------------
DROP TABLE IF EXISTS `destoon_exhibit_data_8`;
CREATE TABLE `destoon_exhibit_data_8` (
  `itemid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='展会内容';

-- ----------------------------
-- Records of destoon_exhibit_data_8
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_exhibit_sign_8
-- ----------------------------
DROP TABLE IF EXISTS `destoon_exhibit_sign_8`;
CREATE TABLE `destoon_exhibit_sign_8` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user` varchar(30) NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '',
  `amount` int(10) unsigned NOT NULL DEFAULT '0',
  `company` varchar(100) NOT NULL,
  `truename` varchar(30) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `areaid` int(10) unsigned NOT NULL DEFAULT '0',
  `address` varchar(255) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `wx` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `username` varchar(30) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL,
  PRIMARY KEY (`itemid`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='展会报名';

-- ----------------------------
-- Records of destoon_exhibit_sign_8
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_favorite
-- ----------------------------
DROP TABLE IF EXISTS `destoon_favorite`;
CREATE TABLE `destoon_favorite` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `mid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `tid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `listorder` smallint(4) unsigned NOT NULL DEFAULT '0',
  `userid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `typeid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `style` varchar(50) NOT NULL DEFAULT '',
  `thumb` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商机收藏';

-- ----------------------------
-- Records of destoon_favorite
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_fetch
-- ----------------------------
DROP TABLE IF EXISTS `destoon_fetch`;
CREATE TABLE `destoon_fetch` (
  `itemid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sitename` varchar(100) NOT NULL DEFAULT '',
  `domain` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `encode` varchar(30) NOT NULL DEFAULT '',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='单页采编';

-- ----------------------------
-- Records of destoon_fetch
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_fields
-- ----------------------------
DROP TABLE IF EXISTS `destoon_fields`;
CREATE TABLE `destoon_fields` (
  `itemid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tb` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(20) NOT NULL DEFAULT '',
  `length` smallint(4) unsigned NOT NULL DEFAULT '0',
  `html` varchar(30) NOT NULL DEFAULT '',
  `default_value` text NOT NULL,
  `option_value` text NOT NULL,
  `width` smallint(4) unsigned NOT NULL DEFAULT '0',
  `height` smallint(4) unsigned NOT NULL DEFAULT '0',
  `input_limit` varchar(255) NOT NULL DEFAULT '',
  `addition` varchar(255) NOT NULL DEFAULT '',
  `display` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `front` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `listorder` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemid`),
  KEY `tablename` (`tb`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='自定义字段';

-- ----------------------------
-- Records of destoon_fields
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_finance_award
-- ----------------------------
DROP TABLE IF EXISTS `destoon_finance_award`;
CREATE TABLE `destoon_finance_award` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '',
  `fee` float unsigned NOT NULL DEFAULT '0',
  `paytime` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `mid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `tid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`),
  KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='打赏记录';

-- ----------------------------
-- Records of destoon_finance_award
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_finance_card
-- ----------------------------
DROP TABLE IF EXISTS `destoon_finance_card`;
CREATE TABLE `destoon_finance_card` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `number` varchar(30) NOT NULL DEFAULT '',
  `password` varchar(30) NOT NULL DEFAULT '',
  `amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `totime` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`),
  UNIQUE KEY `number` (`number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='充值卡';

-- ----------------------------
-- Records of destoon_finance_card
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_finance_cash
-- ----------------------------
DROP TABLE IF EXISTS `destoon_finance_cash`;
CREATE TABLE `destoon_finance_cash` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '',
  `bank` varchar(50) NOT NULL DEFAULT '',
  `banktype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `branch` varchar(100) NOT NULL,
  `account` varchar(30) NOT NULL DEFAULT '',
  `truename` varchar(30) NOT NULL DEFAULT '',
  `amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `fee` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `note` varchar(255) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemid`),
  KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='申请提现';

-- ----------------------------
-- Records of destoon_finance_cash
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_finance_charge
-- ----------------------------
DROP TABLE IF EXISTS `destoon_finance_charge`;
CREATE TABLE `destoon_finance_charge` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '',
  `bank` varchar(20) NOT NULL DEFAULT '',
  `amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `fee` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `money` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `sendtime` int(10) unsigned NOT NULL DEFAULT '0',
  `receivetime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `reason` varchar(255) NOT NULL,
  `note` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`),
  KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='在线充值';

-- ----------------------------
-- Records of destoon_finance_charge
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_finance_coupon
-- ----------------------------
DROP TABLE IF EXISTS `destoon_finance_coupon`;
CREATE TABLE `destoon_finance_coupon` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `username` varchar(30) NOT NULL,
  `seller` varchar(30) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `fromtime` int(10) unsigned NOT NULL DEFAULT '0',
  `totime` int(10) unsigned NOT NULL DEFAULT '0',
  `price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `cost` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `pid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `oid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL,
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `note` varchar(255) NOT NULL,
  PRIMARY KEY (`itemid`),
  KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='优惠券';

-- ----------------------------
-- Records of destoon_finance_coupon
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_finance_credit
-- ----------------------------
DROP TABLE IF EXISTS `destoon_finance_credit`;
CREATE TABLE `destoon_finance_credit` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '',
  `amount` int(10) NOT NULL DEFAULT '0',
  `balance` int(10) NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `reason` varchar(255) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `editor` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`),
  KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='积分流水';

-- ----------------------------
-- Records of destoon_finance_credit
-- ----------------------------
INSERT INTO `destoon_finance_credit` VALUES ('1', 'root', '1', '1', '1530241047', '登录奖励', '0.0.0.0', 'system');
INSERT INTO `destoon_finance_credit` VALUES ('2', 'root', '2', '3', '1530241221', '供应发布', 'ID:1', 'system');
INSERT INTO `destoon_finance_credit` VALUES ('3', 'root', '1', '4', '1531211533', '登录奖励', '0.0.0.0', 'system');
INSERT INTO `destoon_finance_credit` VALUES ('4', 'root', '1', '5', '1531531894', '登录奖励', '0.0.0.0', 'system');
INSERT INTO `destoon_finance_credit` VALUES ('5', 'root', '1', '6', '1532057458', '登录奖励', '0.0.0.0', 'system');
INSERT INTO `destoon_finance_credit` VALUES ('6', 'liubei', '1', '1', '1532140664', '登录奖励', '0.0.0.0', 'system');

-- ----------------------------
-- Table structure for destoon_finance_deposit
-- ----------------------------
DROP TABLE IF EXISTS `destoon_finance_deposit`;
CREATE TABLE `destoon_finance_deposit` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '',
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL,
  `reason` varchar(255) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`),
  KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='保证金';

-- ----------------------------
-- Records of destoon_finance_deposit
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_finance_pay
-- ----------------------------
DROP TABLE IF EXISTS `destoon_finance_pay`;
CREATE TABLE `destoon_finance_pay` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '',
  `fee` float unsigned NOT NULL DEFAULT '0',
  `currency` varchar(20) NOT NULL DEFAULT '',
  `paytime` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `mid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `tid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`),
  KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='支付记录';

-- ----------------------------
-- Records of destoon_finance_pay
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_finance_promo
-- ----------------------------
DROP TABLE IF EXISTS `destoon_finance_promo`;
CREATE TABLE `destoon_finance_promo` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `username` varchar(30) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `fromtime` int(10) unsigned NOT NULL DEFAULT '0',
  `totime` int(10) unsigned NOT NULL DEFAULT '0',
  `price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `cost` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `amount` int(10) unsigned NOT NULL DEFAULT '0',
  `number` int(10) unsigned NOT NULL DEFAULT '0',
  `open` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `editor` varchar(30) NOT NULL,
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `note` varchar(255) NOT NULL,
  PRIMARY KEY (`itemid`),
  KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='优惠促销';

-- ----------------------------
-- Records of destoon_finance_promo
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_finance_record
-- ----------------------------
DROP TABLE IF EXISTS `destoon_finance_record`;
CREATE TABLE `destoon_finance_record` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '',
  `bank` varchar(30) NOT NULL DEFAULT '',
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `balance` decimal(10,2) NOT NULL DEFAULT '0.00',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `reason` varchar(255) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `editor` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`),
  KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='财务流水';

-- ----------------------------
-- Records of destoon_finance_record
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_finance_sms
-- ----------------------------
DROP TABLE IF EXISTS `destoon_finance_sms`;
CREATE TABLE `destoon_finance_sms` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '',
  `amount` int(10) NOT NULL DEFAULT '0',
  `balance` int(10) NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `reason` varchar(255) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `editor` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`),
  KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='短信增减';

-- ----------------------------
-- Records of destoon_finance_sms
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_form
-- ----------------------------
DROP TABLE IF EXISTS `destoon_form`;
CREATE TABLE `destoon_form` (
  `itemid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `typeid` int(10) unsigned NOT NULL DEFAULT '0',
  `areaid` int(10) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `style` varchar(50) NOT NULL DEFAULT '',
  `content` mediumtext NOT NULL,
  `groupid` varchar(255) NOT NULL,
  `verify` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `display` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `question` int(10) unsigned NOT NULL DEFAULT '0',
  `answer` int(10) unsigned NOT NULL DEFAULT '0',
  `maxanswer` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `fromtime` int(10) unsigned NOT NULL DEFAULT '0',
  `totime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `linkurl` varchar(255) NOT NULL DEFAULT '',
  `template` varchar(30) NOT NULL,
  PRIMARY KEY (`itemid`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='表单';

-- ----------------------------
-- Records of destoon_form
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_form_answer
-- ----------------------------
DROP TABLE IF EXISTS `destoon_form_answer`;
CREATE TABLE `destoon_form_answer` (
  `aid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `rid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `qid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `other` varchar(255) NOT NULL,
  `item` varchar(100) NOT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='表单回复';

-- ----------------------------
-- Records of destoon_form_answer
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_form_question
-- ----------------------------
DROP TABLE IF EXISTS `destoon_form_question`;
CREATE TABLE `destoon_form_question` (
  `qid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fid` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `required` varchar(30) NOT NULL,
  `extend` mediumtext NOT NULL,
  `listorder` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`qid`),
  KEY `fid` (`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='表单选项';

-- ----------------------------
-- Records of destoon_form_question
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_form_record
-- ----------------------------
DROP TABLE IF EXISTS `destoon_form_record`;
CREATE TABLE `destoon_form_record` (
  `rid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `item` varchar(100) NOT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='表单回复记录';

-- ----------------------------
-- Records of destoon_form_record
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_friend
-- ----------------------------
DROP TABLE IF EXISTS `destoon_friend`;
CREATE TABLE `destoon_friend` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `listorder` smallint(4) unsigned NOT NULL DEFAULT '0',
  `userid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `typeid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `truename` varchar(20) NOT NULL DEFAULT '',
  `style` varchar(50) NOT NULL DEFAULT '',
  `company` varchar(100) NOT NULL DEFAULT '',
  `career` varchar(20) NOT NULL DEFAULT '',
  `telephone` varchar(20) NOT NULL DEFAULT '',
  `mobile` varchar(20) NOT NULL DEFAULT '',
  `homepage` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `qq` varchar(20) NOT NULL DEFAULT '',
  `wx` varchar(50) NOT NULL DEFAULT '',
  `ali` varchar(30) NOT NULL DEFAULT '',
  `skype` varchar(30) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='我的商友';

-- ----------------------------
-- Records of destoon_friend
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_gift
-- ----------------------------
DROP TABLE IF EXISTS `destoon_gift`;
CREATE TABLE `destoon_gift` (
  `itemid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `typeid` int(10) unsigned NOT NULL DEFAULT '0',
  `areaid` int(10) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `style` varchar(50) NOT NULL DEFAULT '',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `credit` int(10) unsigned NOT NULL DEFAULT '0',
  `amount` int(10) unsigned NOT NULL DEFAULT '0',
  `groupid` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `orders` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `maxorder` int(10) unsigned NOT NULL DEFAULT '1',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `fromtime` int(10) unsigned NOT NULL DEFAULT '0',
  `totime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `linkurl` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='积分换礼';

-- ----------------------------
-- Records of destoon_gift
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_gift_order
-- ----------------------------
DROP TABLE IF EXISTS `destoon_gift_order`;
CREATE TABLE `destoon_gift_order` (
  `oid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `itemid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `credit` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` varchar(255) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`oid`),
  KEY `itemid` (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='积分换礼订单';

-- ----------------------------
-- Records of destoon_gift_order
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_group_17
-- ----------------------------
DROP TABLE IF EXISTS `destoon_group_17`;
CREATE TABLE `destoon_group_17` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `areaid` int(10) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `style` varchar(50) NOT NULL DEFAULT '',
  `fee` float NOT NULL DEFAULT '0',
  `introduce` varchar(255) NOT NULL DEFAULT '',
  `price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `marketprice` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `savemoney` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `discount` float unsigned NOT NULL DEFAULT '0',
  `minamount` int(10) unsigned NOT NULL DEFAULT '0',
  `amount` int(10) unsigned NOT NULL DEFAULT '0',
  `logistic` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `tag` varchar(100) NOT NULL DEFAULT '',
  `keyword` varchar(255) NOT NULL DEFAULT '',
  `pptword` varchar(255) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `comments` int(10) unsigned NOT NULL DEFAULT '0',
  `orders` int(10) unsigned NOT NULL DEFAULT '0',
  `sales` int(10) unsigned NOT NULL DEFAULT '0',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(30) NOT NULL DEFAULT '',
  `groupid` smallint(4) unsigned NOT NULL DEFAULT '0',
  `company` varchar(100) NOT NULL DEFAULT '',
  `vip` smallint(2) unsigned NOT NULL DEFAULT '0',
  `validated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `truename` varchar(30) NOT NULL DEFAULT '',
  `telephone` varchar(50) NOT NULL DEFAULT '',
  `mobile` varchar(50) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `qq` varchar(20) NOT NULL DEFAULT '',
  `wx` varchar(50) NOT NULL DEFAULT '',
  `ali` varchar(30) NOT NULL DEFAULT '',
  `skype` varchar(30) NOT NULL DEFAULT '',
  `totime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `template` varchar(30) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `process` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `linkurl` varchar(255) NOT NULL DEFAULT '',
  `filepath` varchar(255) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`),
  KEY `username` (`username`),
  KEY `addtime` (`addtime`),
  KEY `catid` (`catid`),
  KEY `areaid` (`areaid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='团购';

-- ----------------------------
-- Records of destoon_group_17
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_group_data_17
-- ----------------------------
DROP TABLE IF EXISTS `destoon_group_data_17`;
CREATE TABLE `destoon_group_data_17` (
  `itemid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='团购内容';

-- ----------------------------
-- Records of destoon_group_data_17
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_group_order_17
-- ----------------------------
DROP TABLE IF EXISTS `destoon_group_order_17`;
CREATE TABLE `destoon_group_order_17` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `buyer` varchar(30) NOT NULL DEFAULT '',
  `seller` varchar(30) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `number` int(10) unsigned NOT NULL DEFAULT '0',
  `amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `logistic` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `password` varchar(6) NOT NULL DEFAULT '',
  `buyer_name` varchar(30) NOT NULL DEFAULT '',
  `buyer_address` varchar(255) NOT NULL DEFAULT '',
  `buyer_postcode` varchar(10) NOT NULL DEFAULT '',
  `buyer_mobile` varchar(30) NOT NULL DEFAULT '',
  `send_type` varchar(50) NOT NULL DEFAULT '',
  `send_no` varchar(50) NOT NULL DEFAULT '',
  `send_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `send_time` varchar(20) NOT NULL DEFAULT '',
  `send_days` int(10) unsigned NOT NULL DEFAULT '0',
  `add_time` smallint(6) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `buyer_reason` mediumtext NOT NULL,
  `refund_reason` mediumtext NOT NULL,
  `note` varchar(255) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemid`),
  KEY `buyer` (`buyer`),
  KEY `seller` (`seller`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='团购订单';

-- ----------------------------
-- Records of destoon_group_order_17
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_guestbook
-- ----------------------------
DROP TABLE IF EXISTS `destoon_guestbook`;
CREATE TABLE `destoon_guestbook` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `areaid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `reply` text NOT NULL,
  `hidden` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `truename` varchar(30) NOT NULL DEFAULT '',
  `telephone` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `qq` varchar(20) NOT NULL DEFAULT '',
  `wx` varchar(50) NOT NULL DEFAULT '',
  `ali` varchar(30) NOT NULL DEFAULT '',
  `skype` varchar(30) NOT NULL DEFAULT '',
  `username` varchar(30) NOT NULL DEFAULT '',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemid`),
  KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='留言本';

-- ----------------------------
-- Records of destoon_guestbook
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_honor
-- ----------------------------
DROP TABLE IF EXISTS `destoon_honor`;
CREATE TABLE `destoon_honor` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `style` varchar(50) NOT NULL DEFAULT '',
  `content` mediumtext NOT NULL,
  `authority` varchar(100) NOT NULL DEFAULT '',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `fromtime` int(10) unsigned NOT NULL DEFAULT '0',
  `totime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `linkurl` varchar(255) NOT NULL,
  `note` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`),
  KEY `username` (`username`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='荣誉资质';

-- ----------------------------
-- Records of destoon_honor
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_info_22
-- ----------------------------
DROP TABLE IF EXISTS `destoon_info_22`;
CREATE TABLE `destoon_info_22` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `style` varchar(50) NOT NULL DEFAULT '',
  `fee` float NOT NULL DEFAULT '0',
  `keyword` varchar(255) NOT NULL DEFAULT '',
  `pptword` varchar(255) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `comments` int(10) unsigned NOT NULL DEFAULT '0',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `thumb1` varchar(255) NOT NULL DEFAULT '',
  `thumb2` varchar(255) NOT NULL DEFAULT '',
  `thumbs` text NOT NULL,
  `username` varchar(30) NOT NULL DEFAULT '',
  `groupid` smallint(4) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `adddate` date NOT NULL DEFAULT '0000-00-00',
  `totime` int(10) unsigned NOT NULL DEFAULT '0',
  `areaid` int(10) unsigned NOT NULL DEFAULT '0',
  `company` varchar(100) NOT NULL DEFAULT '',
  `vip` smallint(2) unsigned NOT NULL DEFAULT '0',
  `validated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `truename` varchar(30) NOT NULL DEFAULT '',
  `telephone` varchar(50) NOT NULL DEFAULT '',
  `fax` varchar(50) NOT NULL DEFAULT '',
  `mobile` varchar(50) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `qq` varchar(20) NOT NULL DEFAULT '',
  `wx` varchar(50) NOT NULL DEFAULT '',
  `ali` varchar(30) NOT NULL DEFAULT '',
  `skype` varchar(30) NOT NULL DEFAULT '',
  `introduce` varchar(255) NOT NULL DEFAULT '',
  `n1` varchar(100) NOT NULL,
  `n2` varchar(100) NOT NULL,
  `n3` varchar(100) NOT NULL,
  `v1` varchar(100) NOT NULL,
  `v2` varchar(100) NOT NULL,
  `v3` varchar(100) NOT NULL,
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `editdate` date NOT NULL DEFAULT '0000-00-00',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `template` varchar(30) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `listorder` smallint(4) unsigned NOT NULL DEFAULT '0',
  `islink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `linkurl` varchar(255) NOT NULL DEFAULT '',
  `filepath` varchar(255) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`),
  KEY `username` (`username`),
  KEY `edittime` (`edittime`),
  KEY `catid` (`catid`),
  KEY `areaid` (`areaid`),
  KEY `editdate` (`editdate`,`vip`,`edittime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='招商';

-- ----------------------------
-- Records of destoon_info_22
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_info_data_22
-- ----------------------------
DROP TABLE IF EXISTS `destoon_info_data_22`;
CREATE TABLE `destoon_info_data_22` (
  `itemid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='招商内容';

-- ----------------------------
-- Records of destoon_info_data_22
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_job_9
-- ----------------------------
DROP TABLE IF EXISTS `destoon_job_9`;
CREATE TABLE `destoon_job_9` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `areaid` int(10) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `style` varchar(50) NOT NULL DEFAULT '',
  `fee` float NOT NULL DEFAULT '0',
  `introduce` varchar(255) NOT NULL DEFAULT '',
  `keyword` varchar(255) NOT NULL DEFAULT '',
  `pptword` varchar(255) NOT NULL DEFAULT '',
  `department` varchar(100) NOT NULL DEFAULT '',
  `total` smallint(4) unsigned NOT NULL DEFAULT '0',
  `minsalary` int(10) unsigned NOT NULL DEFAULT '0',
  `maxsalary` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `gender` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `marriage` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `education` smallint(2) unsigned NOT NULL DEFAULT '0',
  `experience` smallint(2) unsigned NOT NULL DEFAULT '0',
  `minage` smallint(2) unsigned NOT NULL DEFAULT '0',
  `maxage` smallint(2) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `comments` int(10) unsigned NOT NULL DEFAULT '0',
  `thumb` varchar(255) NOT NULL,
  `apply` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `groupid` smallint(4) unsigned NOT NULL DEFAULT '0',
  `company` varchar(100) NOT NULL DEFAULT '',
  `vip` smallint(2) unsigned NOT NULL DEFAULT '0',
  `validated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `truename` varchar(30) NOT NULL DEFAULT '',
  `telephone` varchar(50) NOT NULL DEFAULT '',
  `mobile` varchar(50) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `qq` varchar(20) NOT NULL DEFAULT '',
  `wx` varchar(50) NOT NULL DEFAULT '',
  `ali` varchar(30) NOT NULL DEFAULT '',
  `skype` varchar(30) NOT NULL DEFAULT '',
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `totime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `editdate` date NOT NULL DEFAULT '0000-00-00',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `adddate` date NOT NULL DEFAULT '0000-00-00',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `template` varchar(30) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `linkurl` varchar(255) NOT NULL DEFAULT '',
  `filepath` varchar(255) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`),
  KEY `username` (`username`),
  KEY `editdate` (`editdate`,`vip`,`edittime`),
  KEY `edittime` (`edittime`),
  KEY `catid` (`catid`),
  KEY `areaid` (`areaid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='招聘';

-- ----------------------------
-- Records of destoon_job_9
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_job_apply_9
-- ----------------------------
DROP TABLE IF EXISTS `destoon_job_apply_9`;
CREATE TABLE `destoon_job_apply_9` (
  `applyid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `jobid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `resumeid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `job_username` varchar(30) NOT NULL DEFAULT '',
  `apply_username` varchar(30) NOT NULL DEFAULT '',
  `applytime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`applyid`),
  KEY `job_username` (`job_username`),
  KEY `apply_username` (`apply_username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='应聘工作';

-- ----------------------------
-- Records of destoon_job_apply_9
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_job_data_9
-- ----------------------------
DROP TABLE IF EXISTS `destoon_job_data_9`;
CREATE TABLE `destoon_job_data_9` (
  `itemid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='招聘内容';

-- ----------------------------
-- Records of destoon_job_data_9
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_job_resume_9
-- ----------------------------
DROP TABLE IF EXISTS `destoon_job_resume_9`;
CREATE TABLE `destoon_job_resume_9` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `areaid` int(10) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `style` varchar(50) NOT NULL DEFAULT '',
  `fee` float NOT NULL DEFAULT '0',
  `introduce` varchar(255) NOT NULL DEFAULT '',
  `keyword` varchar(255) NOT NULL DEFAULT '',
  `truename` varchar(30) NOT NULL DEFAULT '',
  `gender` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `birthday` date NOT NULL DEFAULT '0000-00-00',
  `age` smallint(2) unsigned NOT NULL DEFAULT '0',
  `marriage` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `height` smallint(2) unsigned NOT NULL DEFAULT '0',
  `weight` smallint(2) unsigned NOT NULL DEFAULT '0',
  `education` smallint(2) unsigned NOT NULL DEFAULT '0',
  `school` varchar(100) NOT NULL DEFAULT '',
  `major` varchar(100) NOT NULL DEFAULT '',
  `skill` varchar(255) NOT NULL DEFAULT '',
  `language` varchar(255) NOT NULL DEFAULT '',
  `minsalary` int(10) unsigned NOT NULL DEFAULT '0',
  `maxsalary` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `experience` smallint(2) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(50) NOT NULL DEFAULT '',
  `telephone` varchar(50) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `qq` varchar(20) NOT NULL DEFAULT '',
  `wx` varchar(50) NOT NULL DEFAULT '',
  `ali` varchar(30) NOT NULL DEFAULT '',
  `skype` varchar(30) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(30) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `template` varchar(30) NOT NULL DEFAULT '0',
  `situation` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `open` tinyint(1) NOT NULL DEFAULT '0',
  `linkurl` varchar(255) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`),
  KEY `username` (`username`),
  KEY `edittime` (`edittime`),
  KEY `catid` (`catid`),
  KEY `areaid` (`areaid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='简历';

-- ----------------------------
-- Records of destoon_job_resume_9
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_job_resume_data_9
-- ----------------------------
DROP TABLE IF EXISTS `destoon_job_resume_data_9`;
CREATE TABLE `destoon_job_resume_data_9` (
  `itemid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='简历内容';

-- ----------------------------
-- Records of destoon_job_resume_data_9
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_job_talent_9
-- ----------------------------
DROP TABLE IF EXISTS `destoon_job_talent_9`;
CREATE TABLE `destoon_job_talent_9` (
  `talentid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '',
  `resumeid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `jointime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`talentid`),
  KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='人才库';

-- ----------------------------
-- Records of destoon_job_talent_9
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_keylink
-- ----------------------------
DROP TABLE IF EXISTS `destoon_keylink`;
CREATE TABLE `destoon_keylink` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `item` varchar(20) NOT NULL DEFAULT '',
  `listorder` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemid`),
  KEY `item` (`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='关联链接';

-- ----------------------------
-- Records of destoon_keylink
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_keyword
-- ----------------------------
DROP TABLE IF EXISTS `destoon_keyword`;
CREATE TABLE `destoon_keyword` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `moduleid` smallint(6) NOT NULL DEFAULT '0',
  `word` varchar(255) NOT NULL DEFAULT '',
  `keyword` varchar(255) NOT NULL DEFAULT '',
  `letter` varchar(255) NOT NULL DEFAULT '',
  `items` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `total_search` int(10) unsigned NOT NULL DEFAULT '0',
  `month_search` int(10) unsigned NOT NULL DEFAULT '0',
  `week_search` int(10) unsigned NOT NULL DEFAULT '0',
  `today_search` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '3',
  PRIMARY KEY (`itemid`),
  KEY `moduleid` (`moduleid`),
  KEY `word` (`word`),
  KEY `letter` (`letter`),
  KEY `keyword` (`keyword`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='关键词';

-- ----------------------------
-- Records of destoon_keyword
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_know_10
-- ----------------------------
DROP TABLE IF EXISTS `destoon_know_10`;
CREATE TABLE `destoon_know_10` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `areaid` int(10) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `style` varchar(50) NOT NULL DEFAULT '',
  `fee` float NOT NULL DEFAULT '0',
  `credit` int(10) unsigned NOT NULL DEFAULT '0',
  `aid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `process` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `message` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `addition` mediumtext NOT NULL,
  `comment` mediumtext NOT NULL,
  `introduce` varchar(255) NOT NULL DEFAULT '',
  `keyword` varchar(255) NOT NULL DEFAULT '',
  `pptword` varchar(255) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `comments` int(10) unsigned NOT NULL DEFAULT '0',
  `raise` int(10) unsigned NOT NULL DEFAULT '0',
  `agree` int(10) unsigned NOT NULL DEFAULT '0',
  `against` int(10) unsigned NOT NULL DEFAULT '0',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `answer` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `passport` varchar(30) NOT NULL,
  `ask` varchar(30) NOT NULL,
  `expert` varchar(30) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `totime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `template` varchar(30) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `linkurl` varchar(255) NOT NULL DEFAULT '',
  `filepath` varchar(255) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`),
  KEY `addtime` (`addtime`),
  KEY `catid` (`catid`),
  KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='知道';

-- ----------------------------
-- Records of destoon_know_10
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_know_answer_10
-- ----------------------------
DROP TABLE IF EXISTS `destoon_know_answer_10`;
CREATE TABLE `destoon_know_answer_10` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `qid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL,
  `content` mediumtext NOT NULL,
  `vote` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `passport` varchar(30) NOT NULL,
  `expert` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemid`),
  KEY `qid` (`qid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='知道回答';

-- ----------------------------
-- Records of destoon_know_answer_10
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_know_data_10
-- ----------------------------
DROP TABLE IF EXISTS `destoon_know_data_10`;
CREATE TABLE `destoon_know_data_10` (
  `itemid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `content` longtext NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='知道内容';

-- ----------------------------
-- Records of destoon_know_data_10
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_know_expert_10
-- ----------------------------
DROP TABLE IF EXISTS `destoon_know_expert_10`;
CREATE TABLE `destoon_know_expert_10` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `style` varchar(50) NOT NULL DEFAULT '',
  `major` varchar(255) NOT NULL,
  `ask` int(10) unsigned NOT NULL DEFAULT '0',
  `answer` int(10) unsigned NOT NULL DEFAULT '0',
  `best` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `passport` varchar(30) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `introduce` varchar(255) NOT NULL,
  `content` mediumtext NOT NULL,
  PRIMARY KEY (`itemid`),
  KEY `username` (`username`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='知道专家';

-- ----------------------------
-- Records of destoon_know_expert_10
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_know_vote_10
-- ----------------------------
DROP TABLE IF EXISTS `destoon_know_vote_10`;
CREATE TABLE `destoon_know_vote_10` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `qid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `aid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `passport` varchar(30) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='知道投票';

-- ----------------------------
-- Records of destoon_know_vote_10
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_link
-- ----------------------------
DROP TABLE IF EXISTS `destoon_link`;
CREATE TABLE `destoon_link` (
  `itemid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `typeid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `areaid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `style` varchar(50) NOT NULL DEFAULT '',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `introduce` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(30) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `listorder` smallint(4) NOT NULL DEFAULT '0',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `linkurl` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`),
  KEY `username` (`username`),
  KEY `listorder` (`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='友情链接';

-- ----------------------------
-- Records of destoon_link
-- ----------------------------
INSERT INTO `destoon_link` VALUES ('1', '0', '0', 'DESTOON B2B', '', 'http://static.destoon.com/logo.gif', 'DESTOON B2B网站管理系统', '', '1529998019', 'root', '1529998019', '0', '1', '3', 'http://www.destoon.com/');

-- ----------------------------
-- Table structure for destoon_login
-- ----------------------------
DROP TABLE IF EXISTS `destoon_login`;
CREATE TABLE `destoon_login` (
  `logid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `passsalt` varchar(8) NOT NULL,
  `admin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `loginip` varchar(50) NOT NULL DEFAULT '',
  `logintime` int(10) unsigned NOT NULL DEFAULT '0',
  `message` varchar(255) NOT NULL DEFAULT '',
  `agent` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`logid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='登录日志';

-- ----------------------------
-- Records of destoon_login
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_mail
-- ----------------------------
DROP TABLE IF EXISTS `destoon_mail`;
CREATE TABLE `destoon_mail` (
  `itemid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `typeid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `sendtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='邮件订阅';

-- ----------------------------
-- Records of destoon_mail
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_mail_list
-- ----------------------------
DROP TABLE IF EXISTS `destoon_mail_list`;
CREATE TABLE `destoon_mail_list` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `typeids` varchar(255) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='订阅列表';

-- ----------------------------
-- Records of destoon_mail_list
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_mail_log
-- ----------------------------
DROP TABLE IF EXISTS `destoon_mail_log`;
CREATE TABLE `destoon_mail_log` (
  `itemid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `note` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='邮件记录';

-- ----------------------------
-- Records of destoon_mail_log
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_mall_16
-- ----------------------------
DROP TABLE IF EXISTS `destoon_mall_16`;
CREATE TABLE `destoon_mall_16` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `mycatid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `areaid` int(10) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `elite` tinyint(1) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `style` varchar(50) NOT NULL DEFAULT '',
  `fee` float NOT NULL DEFAULT '0',
  `introduce` varchar(255) NOT NULL DEFAULT '',
  `brand` varchar(100) NOT NULL DEFAULT '',
  `price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `step` mediumtext NOT NULL,
  `amount` int(10) unsigned NOT NULL DEFAULT '0',
  `unit` varchar(20) NOT NULL,
  `tag` varchar(100) NOT NULL DEFAULT '',
  `keyword` varchar(255) NOT NULL DEFAULT '',
  `pptword` varchar(255) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `orders` int(10) unsigned NOT NULL DEFAULT '0',
  `sales` int(10) unsigned NOT NULL DEFAULT '0',
  `comments` int(10) unsigned NOT NULL DEFAULT '0',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `thumb1` varchar(255) NOT NULL DEFAULT '',
  `thumb2` varchar(255) NOT NULL DEFAULT '',
  `thumbs` text NOT NULL,
  `relate_name` varchar(100) NOT NULL,
  `relate_id` varchar(255) NOT NULL,
  `relate_title` varchar(100) NOT NULL,
  `n1` varchar(100) NOT NULL,
  `n2` varchar(100) NOT NULL,
  `n3` varchar(100) NOT NULL,
  `v1` varchar(255) NOT NULL,
  `v2` varchar(255) NOT NULL,
  `v3` varchar(255) NOT NULL,
  `express_1` int(10) unsigned NOT NULL DEFAULT '0',
  `express_name_1` varchar(100) NOT NULL,
  `fee_start_1` decimal(10,2) unsigned NOT NULL,
  `fee_step_1` decimal(10,2) unsigned NOT NULL,
  `express_2` int(10) unsigned NOT NULL DEFAULT '0',
  `express_name_2` varchar(100) NOT NULL,
  `fee_start_2` decimal(10,2) unsigned NOT NULL,
  `fee_step_2` decimal(10,2) unsigned NOT NULL,
  `express_3` int(10) unsigned NOT NULL DEFAULT '0',
  `express_name_3` varchar(100) NOT NULL,
  `fee_start_3` decimal(10,2) unsigned NOT NULL,
  `fee_step_3` decimal(10,2) unsigned NOT NULL,
  `cod` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `groupid` smallint(4) unsigned NOT NULL DEFAULT '0',
  `company` varchar(100) NOT NULL DEFAULT '',
  `vip` smallint(2) unsigned NOT NULL DEFAULT '0',
  `validated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `truename` varchar(30) NOT NULL DEFAULT '',
  `telephone` varchar(50) NOT NULL DEFAULT '',
  `mobile` varchar(50) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `qq` varchar(20) NOT NULL DEFAULT '',
  `wx` varchar(50) NOT NULL DEFAULT '',
  `ali` varchar(30) NOT NULL DEFAULT '',
  `skype` varchar(30) NOT NULL DEFAULT '',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `editdate` date NOT NULL DEFAULT '0000-00-00',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `adddate` date NOT NULL DEFAULT '0000-00-00',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `template` varchar(30) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `linkurl` varchar(255) NOT NULL DEFAULT '',
  `filepath` varchar(255) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`),
  KEY `username` (`username`),
  KEY `editdate` (`editdate`,`vip`,`edittime`),
  KEY `catid` (`catid`),
  KEY `areaid` (`areaid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商城';

-- ----------------------------
-- Records of destoon_mall_16
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_mall_comment_16
-- ----------------------------
DROP TABLE IF EXISTS `destoon_mall_comment_16`;
CREATE TABLE `destoon_mall_comment_16` (
  `itemid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `mallid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `buyer` varchar(30) NOT NULL DEFAULT '',
  `seller` varchar(30) NOT NULL DEFAULT '',
  `buyer_star` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `buyer_comment` text NOT NULL,
  `buyer_ctime` int(10) unsigned NOT NULL DEFAULT '0',
  `buyer_reply` text NOT NULL,
  `buyer_rtime` int(10) unsigned NOT NULL DEFAULT '0',
  `seller_star` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `seller_comment` text NOT NULL,
  `seller_ctime` int(10) unsigned NOT NULL DEFAULT '0',
  `seller_reply` text NOT NULL,
  `seller_rtime` int(10) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `itemid` (`itemid`),
  KEY `buyer` (`buyer`),
  KEY `seller` (`seller`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='订单评论';

-- ----------------------------
-- Records of destoon_mall_comment_16
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_mall_data_16
-- ----------------------------
DROP TABLE IF EXISTS `destoon_mall_data_16`;
CREATE TABLE `destoon_mall_data_16` (
  `itemid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商城内容';

-- ----------------------------
-- Records of destoon_mall_data_16
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_mall_express_16
-- ----------------------------
DROP TABLE IF EXISTS `destoon_mall_express_16`;
CREATE TABLE `destoon_mall_express_16` (
  `itemid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `areaid` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `express` varchar(30) NOT NULL,
  `fee_start` decimal(10,2) unsigned NOT NULL,
  `fee_step` decimal(10,2) unsigned NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `items` int(10) unsigned NOT NULL DEFAULT '0',
  `listorder` smallint(4) unsigned NOT NULL DEFAULT '0',
  `note` varchar(255) NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='运费模板';

-- ----------------------------
-- Records of destoon_mall_express_16
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_mall_stat_16
-- ----------------------------
DROP TABLE IF EXISTS `destoon_mall_stat_16`;
CREATE TABLE `destoon_mall_stat_16` (
  `mallid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `seller` varchar(30) NOT NULL DEFAULT '',
  `scomment` int(10) unsigned NOT NULL DEFAULT '0',
  `s1` int(10) unsigned NOT NULL DEFAULT '0',
  `s2` int(10) unsigned NOT NULL DEFAULT '0',
  `s3` int(10) unsigned NOT NULL DEFAULT '0',
  `buyer` varchar(30) NOT NULL DEFAULT '',
  `bcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `b1` int(10) unsigned NOT NULL DEFAULT '0',
  `b2` int(10) unsigned NOT NULL DEFAULT '0',
  `b3` int(10) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `mallid` (`mallid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='评分统计';

-- ----------------------------
-- Records of destoon_mall_stat_16
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_mall_view_16
-- ----------------------------
DROP TABLE IF EXISTS `destoon_mall_view_16`;
CREATE TABLE `destoon_mall_view_16` (
  `uid` varchar(50) NOT NULL,
  `itemid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `seller` varchar(30) NOT NULL,
  `lasttime` int(10) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `uid` (`uid`),
  KEY `username` (`username`),
  KEY `lasttime` (`lasttime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='浏览历史';

-- ----------------------------
-- Records of destoon_mall_view_16
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_member
-- ----------------------------
DROP TABLE IF EXISTS `destoon_member`;
CREATE TABLE `destoon_member` (
  `userid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '',
  `passport` varchar(30) NOT NULL DEFAULT '',
  `company` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `passsalt` varchar(8) NOT NULL,
  `payword` varchar(32) NOT NULL DEFAULT '',
  `paysalt` varchar(8) NOT NULL,
  `email` varchar(50) NOT NULL DEFAULT '',
  `message` smallint(6) unsigned NOT NULL DEFAULT '0',
  `chat` smallint(6) unsigned NOT NULL DEFAULT '0',
  `sound` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `online` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `avatar` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `gender` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `truename` varchar(20) NOT NULL DEFAULT '',
  `mobile` varchar(50) NOT NULL DEFAULT '',
  `qq` varchar(20) NOT NULL DEFAULT '',
  `wx` varchar(50) NOT NULL DEFAULT '',
  `wxqr` varchar(255) NOT NULL DEFAULT '',
  `ali` varchar(30) NOT NULL DEFAULT '',
  `skype` varchar(30) NOT NULL DEFAULT '',
  `department` varchar(30) NOT NULL DEFAULT '',
  `career` varchar(30) NOT NULL DEFAULT '',
  `admin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `role` varchar(255) NOT NULL DEFAULT '',
  `aid` int(10) unsigned NOT NULL DEFAULT '0',
  `groupid` smallint(4) unsigned NOT NULL DEFAULT '4',
  `regid` smallint(4) unsigned NOT NULL DEFAULT '0',
  `areaid` int(10) unsigned NOT NULL DEFAULT '0',
  `sms` int(10) NOT NULL DEFAULT '0',
  `credit` int(10) NOT NULL DEFAULT '0',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `deposit` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `regip` varchar(50) NOT NULL DEFAULT '',
  `regtime` int(10) unsigned NOT NULL DEFAULT '0',
  `loginip` varchar(50) NOT NULL DEFAULT '',
  `logintime` int(10) unsigned NOT NULL DEFAULT '0',
  `logintimes` int(10) unsigned NOT NULL DEFAULT '1',
  `send` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `vemail` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `vmobile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `vtruename` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `vbank` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `vcompany` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `vtrade` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `trade` varchar(50) NOT NULL DEFAULT '',
  `support` varchar(50) NOT NULL DEFAULT '',
  `inviter` varchar(30) NOT NULL DEFAULT '',
  `note` text NOT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `passport` (`passport`),
  KEY `groupid` (`groupid`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='会员';

-- ----------------------------
-- Records of destoon_member
-- ----------------------------
INSERT INTO `destoon_member` VALUES ('1', 'root', 'root', 'DESTOON B2B网站管理系统', '75b2b565c75e85ca41296701276eb6e3', 'eZ5B3Zhe', '67810ebebe75725aa55ec1d9403b17c3', 'BfHmn0qv', 'mail@yourdomain.com', '0', '0', '0', '0', '1', '1', '姓名', '', '', '', '', '', '', '', '', '1', '', '0', '1', '6', '1', '0', '6', '0.00', '0.00', '1445261241', '222', '1529998019', '0.0.0.0', '1532057458', '7', '1', '1', '1', '1', '0', '0', '0', '', '', '', '');
INSERT INTO `destoon_member` VALUES ('2', 'huolongguo', 'huolongguo', '火龙果', '57833caad86425347b4952e927f63c62', 'MyZEtaqz', 'c71d35108666a32ceed649552df8b4b9', 'cBbEdq1o', '', '1', '0', '1', '1', '0', '1', '', '', '', '', '', '', '', '', '', '0', '', '0', '6', '6', '0', '0', '0', '0.00', '0.00', '0', '333', '1530003857', '0.0.0.0', '1530003868', '2', '1', '0', '0', '0', '0', '0', '0', '', '', '', '');
INSERT INTO `destoon_member` VALUES ('3', 'yellowbnana', 'yellowbnana', '黄香蕉', 'c30e3ab44f0e940079c25b99fe06cfa4', 'MFJ9vjtg', '090fa80531b328e5d6fed3d96d10e5b9', '0iJUvKcE', '', '1', '0', '1', '1', '0', '1', '', '', '', '', '', '', '', '', '', '0', '', '0', '6', '6', '0', '0', '0', '0.00', '0.00', '0', '3332', '1530005773', '0.0.0.0', '1530005785', '2', '1', '0', '0', '0', '0', '0', '0', '', '', '', '');
INSERT INTO `destoon_member` VALUES ('4', 'apple', 'apple', '的苹果', 'b09af861cec42e9a894287143706fb84', 'DfXn3iGb', '0a4965155fb6dfaab3dbe53206609936', 'QGAepCWq', '', '1', '0', '1', '1', '0', '1', '', '', '', '', '', '', '', '', '', '0', '', '0', '6', '6', '0', '0', '0', '0.00', '0.00', '0', '0.0.0.0', '1530006717', '0.0.0.0', '1530006717', '1', '1', '0', '0', '0', '0', '0', '0', '', '', '', '');
INSERT INTO `destoon_member` VALUES ('11', 'redtree', 'redtree', '红树林', 'd008a7a5e641d41fcb499f1f37d47ca1', 'c2ZcfkR0', '4125d182317b67d368a3c2f3e0345158', 'efOW5mXP', 'redtree@des.com', '0', '0', '1', '1', '0', '1', '', '', '', '', '', '', '', '', '', '0', '', '0', '6', '0', '0', '0', '0', '0.00', '0.00', '0', '127.0.0.1', '1530239248', '127.0.0.1', '1530239248', '1', '1', '0', '0', '0', '0', '0', '0', '', '', '', '');
INSERT INTO `destoon_member` VALUES ('12', 'wangdake', 'wangdake', '红树林', '36160da04fbdfb625a566b92e2ea7ff5', 'nKwYOVh0', '24f1e28dd060cd7580104aec94b34498', 'E0cNFD7j', 'redtree@des.com', '0', '0', '1', '1', '0', '1', '', '', '', '', '', '', '', '', '', '0', '', '0', '6', '0', '0', '0', '0', '0.00', '0.00', '0', '127.0.0.1', '1530239464', '127.0.0.1', '1530239464', '1', '1', '0', '0', '0', '0', '0', '0', '', '', '', '');
INSERT INTO `destoon_member` VALUES ('13', 'liubei', 'liubei', '红树林', '17ecbd20537099a611fb5e92fff23f6f', 'XEPAGR4J', 'b43ff8a1900ce6ff47c28023151c4ca2', 'Q5IbYd0X', 'redtree@des.com', '0', '0', '1', '1', '0', '1', '', '', '', '', '', '', '', '', '', '0', '', '0', '1', '0', '0', '0', '1', '0.00', '0.00', '0', '127.0.0.1', '1530239965', '0.0.0.0', '1532140741', '3', '1', '0', '0', '0', '0', '0', '0', '', '', '', '');
INSERT INTO `destoon_member` VALUES ('14', 'zd', 'zd', '红树林', '5c2443a7769296c4b00d841bdca7e380', 'fJ0XNPiH', 'e08eb57723b60a1023575a3b56bbdafe', 'FDhMWLTc', 'redtree@des.com', '0', '0', '1', '1', '0', '1', '', '', '', '', '', '', '', '', '', '0', '', '0', '6', '0', '0', '0', '0', '0.00', '0.00', '0', '127.0.0.1', '1530240674', '127.0.0.1', '1530240674', '1', '1', '0', '0', '0', '0', '0', '0', '', '', '', '');
INSERT INTO `destoon_member` VALUES ('15', 'ss', 'ss', '红树林', '1c75d367ceeb662624dfac37d0556b6f', 'TMLHCeok', '4c4fbeebbed99d21e50ea2c9475e4f87', 'DD7r6fJH', 'redtree@des.com', '0', '0', '1', '1', '0', '1', '', '', '', '', '', '', '', '', '', '0', '', '0', '6', '0', '0', '0', '0', '0.00', '0.00', '0', '127.0.0.1', '1530240935', '127.0.0.1', '1530240935', '1', '1', '0', '0', '0', '0', '0', '0', '', '', '', '');
INSERT INTO `destoon_member` VALUES ('16', 'guanyu', 'guanyu', '红树林', '42454609d4b8f1111441dfce297b4d99', 'EG7Qz6w4', 'f7873bd9df5d4095f21789d15fb2349d', 'qOdFMZCa', 'redtree@des.com', '0', '0', '1', '1', '0', '1', '', '', '', '', '', '', '', '', '', '0', '', '0', '6', '0', '0', '0', '0', '0.00', '0.00', '0', '127.0.0.1', '1530241021', '127.0.0.1', '1530241021', '1', '1', '0', '0', '0', '0', '0', '0', '', '', '', '');

-- ----------------------------
-- Table structure for destoon_member_check
-- ----------------------------
DROP TABLE IF EXISTS `destoon_member_check`;
CREATE TABLE `destoon_member_check` (
  `userid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '',
  `content` mediumtext NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员资料审核';

-- ----------------------------
-- Records of destoon_member_check
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_member_group
-- ----------------------------
DROP TABLE IF EXISTS `destoon_member_group`;
CREATE TABLE `destoon_member_group` (
  `groupid` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `groupname` varchar(50) NOT NULL DEFAULT '',
  `vip` smallint(2) unsigned NOT NULL DEFAULT '0',
  `listorder` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`groupid`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='会员组';

-- ----------------------------
-- Records of destoon_member_group
-- ----------------------------
INSERT INTO `destoon_member_group` VALUES ('1', '管理员', '0', '1');
INSERT INTO `destoon_member_group` VALUES ('2', '禁止访问', '0', '2');
INSERT INTO `destoon_member_group` VALUES ('3', '游客', '0', '3');
INSERT INTO `destoon_member_group` VALUES ('4', '待审核会员', '0', '4');
INSERT INTO `destoon_member_group` VALUES ('5', '个人会员', '0', '5');
INSERT INTO `destoon_member_group` VALUES ('6', '企业会员', '0', '6');
INSERT INTO `destoon_member_group` VALUES ('7', 'VIP会员', '1', '7');

-- ----------------------------
-- Table structure for destoon_member_misc
-- ----------------------------
DROP TABLE IF EXISTS `destoon_member_misc`;
CREATE TABLE `destoon_member_misc` (
  `userid` bigint(20) unsigned NOT NULL,
  `username` varchar(30) NOT NULL DEFAULT '',
  `bank` varchar(30) NOT NULL DEFAULT '',
  `banktype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `branch` varchar(100) NOT NULL,
  `account` varchar(30) NOT NULL DEFAULT '',
  `reply` text NOT NULL,
  `black` text NOT NULL,
  `send` tinyint(1) unsigned NOT NULL DEFAULT '1',
  UNIQUE KEY `userid` (`userid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员杂项';

-- ----------------------------
-- Records of destoon_member_misc
-- ----------------------------
INSERT INTO `destoon_member_misc` VALUES ('1', 'root', '', '0', '', '', '', '', '1');
INSERT INTO `destoon_member_misc` VALUES ('2', 'huolongguo', '', '0', '', '', '', '', '1');
INSERT INTO `destoon_member_misc` VALUES ('3', 'yellowbnana', '', '0', '', '', '', '', '1');
INSERT INTO `destoon_member_misc` VALUES ('4', 'apple', '', '0', '', '', '', '', '1');
INSERT INTO `destoon_member_misc` VALUES ('0', 'redtree', '', '0', '', '', '', '', '1');
INSERT INTO `destoon_member_misc` VALUES ('12', 'wangdake', '', '0', '', '', '', '', '1');
INSERT INTO `destoon_member_misc` VALUES ('13', 'liubei', '', '0', '', '', '', '', '1');
INSERT INTO `destoon_member_misc` VALUES ('14', 'zd', '', '0', '', '', '', '', '1');
INSERT INTO `destoon_member_misc` VALUES ('15', 'ss', '', '0', '', '', '', '', '1');
INSERT INTO `destoon_member_misc` VALUES ('16', 'guanyu', '', '0', '', '', '', '', '1');
INSERT INTO `destoon_member_misc` VALUES ('17', '', '', '0', '', '', '', '', '1');

-- ----------------------------
-- Table structure for destoon_message
-- ----------------------------
DROP TABLE IF EXISTS `destoon_message`;
CREATE TABLE `destoon_message` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `style` varchar(50) NOT NULL DEFAULT '',
  `typeid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `fromuser` varchar(30) NOT NULL DEFAULT '',
  `touser` varchar(30) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `isread` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `issend` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `feedback` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `groupids` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`),
  KEY `touser` (`touser`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='站内信件';

-- ----------------------------
-- Records of destoon_message
-- ----------------------------
INSERT INTO `destoon_message` VALUES ('1', '欢迎加入DESTOON B2B网站管理系统', '', '4', '<table cellpadding=\"0\" cellspacing=\"0\" width=\"700\" align=\"center\">\r\n<tr>\r\n<td><a href=\"http://localhost:8088/destoon/\" target=\"_blank\"><img src=\"http://localhost:8088/destoon/skin/default/image/logo.gif\" style=\"margin:10px 0;border:none;\" alt=\"DESTOON B2B网站管理系统 LOGO\" title=\"DESTOON B2B网站管理系统\"/></a></td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-top:solid 1px #DDDDDD;border-bottom:solid 1px #DDDDDD;padding:10px 0;line-height:200%;font-family:\'Microsoft YaHei\',Verdana,Arial;font-size:14px;color:#333333;\">\r\n尊敬的会员：<br/>\r\n恭喜您成功注册成为DESTOON B2B网站管理系统会员！<br/>\r\n以下为您的会员帐号信息：<br/>\r\n<strong>户名：</strong>huolongguo<br/>\r\n<strong>密码：</strong>huolongguo1234<br/>\r\n请您妥善保存，切勿告诉他人。<br/>\r\n如果您在使用过程中遇到任何问题，欢迎随时与我们取得联系。<br/>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"line-height:22px;padding:10px 0;font-family:\'Microsoft YaHei\',Verdana,Arial;font-size:12px;color:#666666;\">\r\n请注意：此邮件系 <a href=\"http://localhost:8088/destoon/\" target=\"_blank\" style=\"color:#005590;\">DESTOON B2B网站管理系统</a> 自动发送，请勿直接回复。如果此邮件不是您请求的，请忽略并删除\r\n</td>\r\n</tr>\r\n</table>', '', 'huolongguo', '1530003857', '0.0.0.0', '0', '0', '0', '3', '');
INSERT INTO `destoon_message` VALUES ('2', '欢迎加入DESTOON B2B网站管理系统', '', '4', '<table cellpadding=\"0\" cellspacing=\"0\" width=\"700\" align=\"center\">\r\n<tr>\r\n<td><a href=\"http://localhost:8088/destoon/\" target=\"_blank\"><img src=\"http://localhost:8088/destoon/skin/default/image/logo.gif\" style=\"margin:10px 0;border:none;\" alt=\"DESTOON B2B网站管理系统 LOGO\" title=\"DESTOON B2B网站管理系统\"/></a></td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-top:solid 1px #DDDDDD;border-bottom:solid 1px #DDDDDD;padding:10px 0;line-height:200%;font-family:\'Microsoft YaHei\',Verdana,Arial;font-size:14px;color:#333333;\">\r\n尊敬的会员：<br/>\r\n恭喜您成功注册成为DESTOON B2B网站管理系统会员！<br/>\r\n以下为您的会员帐号信息：<br/>\r\n<strong>户名：</strong>yellowbnana<br/>\r\n<strong>密码：</strong>kaki4592206<br/>\r\n请您妥善保存，切勿告诉他人。<br/>\r\n如果您在使用过程中遇到任何问题，欢迎随时与我们取得联系。<br/>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"line-height:22px;padding:10px 0;font-family:\'Microsoft YaHei\',Verdana,Arial;font-size:12px;color:#666666;\">\r\n请注意：此邮件系 <a href=\"http://localhost:8088/destoon/\" target=\"_blank\" style=\"color:#005590;\">DESTOON B2B网站管理系统</a> 自动发送，请勿直接回复。如果此邮件不是您请求的，请忽略并删除\r\n</td>\r\n</tr>\r\n</table>', '', 'yellowbnana', '1530005773', '0.0.0.0', '0', '0', '0', '3', '');
INSERT INTO `destoon_message` VALUES ('3', '欢迎加入DESTOON B2B网站管理系统', '', '4', '<table cellpadding=\"0\" cellspacing=\"0\" width=\"700\" align=\"center\">\r\n<tr>\r\n<td><a href=\"http://localhost:8088/destoon/\" target=\"_blank\"><img src=\"http://localhost:8088/destoon/skin/default/image/logo.gif\" style=\"margin:10px 0;border:none;\" alt=\"DESTOON B2B网站管理系统 LOGO\" title=\"DESTOON B2B网站管理系统\"/></a></td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-top:solid 1px #DDDDDD;border-bottom:solid 1px #DDDDDD;padding:10px 0;line-height:200%;font-family:\'Microsoft YaHei\',Verdana,Arial;font-size:14px;color:#333333;\">\r\n尊敬的会员：<br/>\r\n恭喜您成功注册成为DESTOON B2B网站管理系统会员！<br/>\r\n以下为您的会员帐号信息：<br/>\r\n<strong>户名：</strong>apple<br/>\r\n<strong>密码：</strong>apple1234<br/>\r\n请您妥善保存，切勿告诉他人。<br/>\r\n如果您在使用过程中遇到任何问题，欢迎随时与我们取得联系。<br/>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"line-height:22px;padding:10px 0;font-family:\'Microsoft YaHei\',Verdana,Arial;font-size:12px;color:#666666;\">\r\n请注意：此邮件系 <a href=\"http://localhost:8088/destoon/\" target=\"_blank\" style=\"color:#005590;\">DESTOON B2B网站管理系统</a> 自动发送，请勿直接回复。如果此邮件不是您请求的，请忽略并删除\r\n</td>\r\n</tr>\r\n</table>', '', 'apple', '1530006717', '0.0.0.0', '0', '0', '0', '3', '');

-- ----------------------------
-- Table structure for destoon_module
-- ----------------------------
DROP TABLE IF EXISTS `destoon_module`;
CREATE TABLE `destoon_module` (
  `moduleid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `module` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(20) NOT NULL DEFAULT '',
  `moduledir` varchar(20) NOT NULL DEFAULT '',
  `domain` varchar(255) NOT NULL DEFAULT '',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `linkurl` varchar(255) NOT NULL DEFAULT '',
  `style` varchar(50) NOT NULL DEFAULT '',
  `listorder` smallint(4) unsigned NOT NULL DEFAULT '0',
  `islink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ismenu` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isblank` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `logo` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `installtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='模型';

-- ----------------------------
-- Records of destoon_module
-- ----------------------------
INSERT INTO `destoon_module` VALUES ('1', 'destoon', '核心', '', '', '', 'http://localhost:8088/destoon/', '', '1', '0', '0', '0', '0', '0', '1529998019');
INSERT INTO `destoon_module` VALUES ('2', 'member', '会员', 'member', '', '', 'http://localhost:8088/destoon/member/', '', '2', '0', '0', '0', '0', '0', '1529998019');
INSERT INTO `destoon_module` VALUES ('3', 'extend', '扩展', 'extend', '', '', 'http://localhost:8088/destoon/extend/', '', '0', '0', '0', '0', '0', '0', '1529998019');
INSERT INTO `destoon_module` VALUES ('4', 'company', '公司', 'company', '', '', 'http://localhost:8088/destoon/company/', '', '7', '0', '1', '0', '0', '0', '1529998019');
INSERT INTO `destoon_module` VALUES ('5', 'sell', '供应', 'sell', '', '', 'http://localhost:8088/destoon/sell/', '', '5', '0', '1', '0', '0', '0', '1529998019');
INSERT INTO `destoon_module` VALUES ('6', 'buy', '求购', 'buy', '', '', 'http://localhost:8088/destoon/buy/', '', '6', '0', '1', '0', '0', '0', '1529998019');
INSERT INTO `destoon_module` VALUES ('7', 'quote', '行情', 'quote', '', '', 'http://localhost:8088/destoon/quote/', '', '9', '0', '1', '0', '0', '0', '1529998019');
INSERT INTO `destoon_module` VALUES ('8', 'exhibit', '展会', 'exhibit', '', '', 'http://localhost:8088/destoon/exhibit/', '', '10', '0', '1', '0', '0', '0', '1529998019');
INSERT INTO `destoon_module` VALUES ('9', 'job', '人才', 'job', '', '', 'http://localhost:8088/destoon/job/', '', '14', '0', '1', '0', '0', '0', '1529998019');
INSERT INTO `destoon_module` VALUES ('10', 'know', '知道', 'know', '', '', 'http://localhost:8088/destoon/know/', '', '15', '0', '1', '0', '0', '0', '1529998019');
INSERT INTO `destoon_module` VALUES ('11', 'special', '专题', 'special', '', '', 'http://localhost:8088/destoon/special/', '', '16', '0', '1', '0', '0', '0', '1529998019');
INSERT INTO `destoon_module` VALUES ('12', 'photo', '图库', 'photo', '', '', 'http://localhost:8088/destoon/photo/', '', '17', '0', '1', '0', '0', '0', '1529998019');
INSERT INTO `destoon_module` VALUES ('13', 'brand', '品牌', 'brand', '', '', 'http://localhost:8088/destoon/brand/', '', '13', '0', '1', '0', '0', '0', '1529998019');
INSERT INTO `destoon_module` VALUES ('14', 'video', '视频', 'video', '', '', 'http://localhost:8088/destoon/video/', '', '18', '0', '1', '0', '0', '0', '1529998019');
INSERT INTO `destoon_module` VALUES ('15', 'down', '下载', 'down', '', '', 'http://localhost:8088/destoon/down/', '', '19', '0', '1', '0', '0', '0', '1529998019');
INSERT INTO `destoon_module` VALUES ('16', 'mall', '商城', 'mall', '', '', 'http://localhost:8088/destoon/mall/', '', '4', '0', '1', '0', '0', '0', '1529998019');
INSERT INTO `destoon_module` VALUES ('17', 'group', '团购', 'group', '', '', 'http://localhost:8088/destoon/group/', '', '8', '0', '1', '0', '0', '0', '1529998019');
INSERT INTO `destoon_module` VALUES ('18', 'club', '商圈', 'club', '', '', 'http://localhost:8088/destoon/club/', '', '20', '0', '1', '0', '0', '0', '1529998019');
INSERT INTO `destoon_module` VALUES ('21', 'article', '资讯', 'news', '', '', 'http://localhost:8088/destoon/news/', '', '11', '0', '1', '0', '0', '0', '1529998019');
INSERT INTO `destoon_module` VALUES ('22', 'info', '招商', 'invest', '', '', 'http://localhost:8088/destoon/invest/', '', '12', '0', '1', '0', '0', '0', '1529998019');

-- ----------------------------
-- Table structure for destoon_news
-- ----------------------------
DROP TABLE IF EXISTS `destoon_news`;
CREATE TABLE `destoon_news` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `typeid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `style` varchar(50) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `thumb` varchar(255) NOT NULL,
  `username` varchar(30) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `linkurl` varchar(255) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`),
  KEY `username` (`username`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='公司新闻';

-- ----------------------------
-- Records of destoon_news
-- ----------------------------
INSERT INTO `destoon_news` VALUES ('1', '0', '222', '333', '', '0', '', '士大夫十分', '0', '', '0', '0', '', '');

-- ----------------------------
-- Table structure for destoon_news_data
-- ----------------------------
DROP TABLE IF EXISTS `destoon_news_data`;
CREATE TABLE `destoon_news_data` (
  `itemid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='公司新闻内容';

-- ----------------------------
-- Records of destoon_news_data
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_oauth
-- ----------------------------
DROP TABLE IF EXISTS `destoon_oauth`;
CREATE TABLE `destoon_oauth` (
  `itemid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '',
  `site` varchar(30) NOT NULL DEFAULT '',
  `openid` varchar(255) NOT NULL DEFAULT '',
  `nickname` varchar(255) NOT NULL DEFAULT '',
  `avatar` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `logintimes` int(10) unsigned NOT NULL DEFAULT '0',
  `logintime` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemid`),
  KEY `username` (`username`),
  KEY `site` (`site`,`openid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='一键登录';

-- ----------------------------
-- Records of destoon_oauth
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_online
-- ----------------------------
DROP TABLE IF EXISTS `destoon_online`;
CREATE TABLE `destoon_online` (
  `userid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `moduleid` int(10) unsigned NOT NULL DEFAULT '0',
  `online` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `lasttime` int(10) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `userid` (`userid`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='在线会员';

-- ----------------------------
-- Records of destoon_online
-- ----------------------------
INSERT INTO `destoon_online` VALUES ('1', 'root', '0.0.0.0', '1', '0', '1532140660');
INSERT INTO `destoon_online` VALUES ('13', 'liubei', '0.0.0.0', '1', '1', '1532145446');

-- ----------------------------
-- Table structure for destoon_order
-- ----------------------------
DROP TABLE IF EXISTS `destoon_order`;
CREATE TABLE `destoon_order` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `mid` smallint(6) unsigned NOT NULL DEFAULT '16',
  `mallid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `pid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `cid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `buyer` varchar(30) NOT NULL DEFAULT '',
  `seller` varchar(30) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `number` int(10) unsigned NOT NULL DEFAULT '0',
  `amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `discount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `fee_name` varchar(30) NOT NULL DEFAULT '',
  `buyer_name` varchar(30) NOT NULL DEFAULT '',
  `buyer_address` varchar(255) NOT NULL DEFAULT '',
  `buyer_postcode` varchar(10) NOT NULL DEFAULT '',
  `buyer_mobile` varchar(30) NOT NULL DEFAULT '',
  `buyer_star` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `seller_star` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `send_type` varchar(50) NOT NULL DEFAULT '',
  `send_no` varchar(50) NOT NULL DEFAULT '',
  `send_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `send_time` varchar(20) NOT NULL DEFAULT '',
  `send_days` int(10) unsigned NOT NULL DEFAULT '0',
  `cod` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `trade_no` varchar(50) NOT NULL DEFAULT '',
  `add_time` smallint(6) NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `buyer_reason` mediumtext NOT NULL,
  `refund_reason` mediumtext NOT NULL,
  `note` varchar(255) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemid`),
  KEY `buyer` (`buyer`),
  KEY `seller` (`seller`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='订单';

-- ----------------------------
-- Records of destoon_order
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_page
-- ----------------------------
DROP TABLE IF EXISTS `destoon_page`;
CREATE TABLE `destoon_page` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `style` varchar(50) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `linkurl` varchar(255) NOT NULL DEFAULT '',
  `listorder` smallint(4) unsigned NOT NULL DEFAULT '0',
  `note` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`),
  KEY `username` (`username`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='公司单页';

-- ----------------------------
-- Records of destoon_page
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_page_data
-- ----------------------------
DROP TABLE IF EXISTS `destoon_page_data`;
CREATE TABLE `destoon_page_data` (
  `itemid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='公司单页内容';

-- ----------------------------
-- Records of destoon_page_data
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_photo_12
-- ----------------------------
DROP TABLE IF EXISTS `destoon_photo_12`;
CREATE TABLE `destoon_photo_12` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `areaid` int(10) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `style` varchar(50) NOT NULL DEFAULT '',
  `fee` float NOT NULL DEFAULT '0',
  `introduce` varchar(255) NOT NULL DEFAULT '',
  `keyword` varchar(255) NOT NULL DEFAULT '',
  `pptword` varchar(255) NOT NULL DEFAULT '',
  `items` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `comments` int(10) unsigned NOT NULL DEFAULT '0',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(30) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `template` varchar(30) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `open` tinyint(1) unsigned NOT NULL DEFAULT '3',
  `password` varchar(30) NOT NULL DEFAULT '',
  `question` varchar(30) NOT NULL DEFAULT '',
  `answer` varchar(30) NOT NULL DEFAULT '',
  `linkurl` varchar(255) NOT NULL DEFAULT '',
  `filepath` varchar(255) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`),
  KEY `addtime` (`addtime`),
  KEY `catid` (`catid`),
  KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='图库';

-- ----------------------------
-- Records of destoon_photo_12
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_photo_data_12
-- ----------------------------
DROP TABLE IF EXISTS `destoon_photo_data_12`;
CREATE TABLE `destoon_photo_data_12` (
  `itemid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `content` longtext NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='图库内容';

-- ----------------------------
-- Records of destoon_photo_data_12
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_photo_item_12
-- ----------------------------
DROP TABLE IF EXISTS `destoon_photo_item_12`;
CREATE TABLE `destoon_photo_item_12` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `item` bigint(20) unsigned NOT NULL DEFAULT '0',
  `introduce` text NOT NULL,
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `listorder` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemid`),
  KEY `listorder` (`listorder`),
  KEY `item` (`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='图库图片';

-- ----------------------------
-- Records of destoon_photo_item_12
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_poll
-- ----------------------------
DROP TABLE IF EXISTS `destoon_poll`;
CREATE TABLE `destoon_poll` (
  `itemid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `typeid` int(10) unsigned NOT NULL DEFAULT '0',
  `areaid` int(10) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `style` varchar(50) NOT NULL DEFAULT '',
  `content` mediumtext NOT NULL,
  `groupid` varchar(255) NOT NULL,
  `verify` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `thumb_width` smallint(6) unsigned NOT NULL DEFAULT '0',
  `thumb_height` smallint(6) unsigned NOT NULL DEFAULT '0',
  `poll_max` smallint(6) unsigned NOT NULL DEFAULT '0',
  `poll_page` smallint(6) unsigned NOT NULL DEFAULT '0',
  `poll_cols` smallint(6) unsigned NOT NULL DEFAULT '0',
  `poll_order` smallint(6) unsigned NOT NULL DEFAULT '0',
  `polls` int(10) unsigned NOT NULL DEFAULT '0',
  `items` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `fromtime` int(10) unsigned NOT NULL DEFAULT '0',
  `totime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `linkurl` varchar(255) NOT NULL DEFAULT '',
  `template_poll` varchar(30) NOT NULL DEFAULT '',
  `template` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='票选';

-- ----------------------------
-- Records of destoon_poll
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_poll_item
-- ----------------------------
DROP TABLE IF EXISTS `destoon_poll_item`;
CREATE TABLE `destoon_poll_item` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `pollid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `style` varchar(50) NOT NULL DEFAULT '',
  `introduce` varchar(255) NOT NULL DEFAULT '',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `linkurl` varchar(255) NOT NULL DEFAULT '',
  `polls` int(10) unsigned NOT NULL DEFAULT '0',
  `listorder` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemid`),
  KEY `pollid` (`pollid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='票选选项';

-- ----------------------------
-- Records of destoon_poll_item
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_poll_record
-- ----------------------------
DROP TABLE IF EXISTS `destoon_poll_record`;
CREATE TABLE `destoon_poll_record` (
  `rid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `itemid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `pollid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `polltime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='票选记录';

-- ----------------------------
-- Records of destoon_poll_record
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_question
-- ----------------------------
DROP TABLE IF EXISTS `destoon_question`;
CREATE TABLE `destoon_question` (
  `qid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(255) NOT NULL DEFAULT '',
  `answer` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`qid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='验证问题';

-- ----------------------------
-- Records of destoon_question
-- ----------------------------
INSERT INTO `destoon_question` VALUES ('1', '5+6=?', '11');
INSERT INTO `destoon_question` VALUES ('2', '7+8=?', '15');
INSERT INTO `destoon_question` VALUES ('3', '11*11=?', '121');
INSERT INTO `destoon_question` VALUES ('4', '12-5=?', '7');
INSERT INTO `destoon_question` VALUES ('5', '21-9=?', '12');

-- ----------------------------
-- Table structure for destoon_quote_7
-- ----------------------------
DROP TABLE IF EXISTS `destoon_quote_7`;
CREATE TABLE `destoon_quote_7` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `areaid` int(10) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `style` varchar(50) NOT NULL DEFAULT '',
  `fee` float NOT NULL DEFAULT '0',
  `introduce` varchar(255) NOT NULL DEFAULT '',
  `tag` varchar(100) NOT NULL DEFAULT '',
  `keyword` varchar(255) NOT NULL DEFAULT '',
  `pptword` varchar(255) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `comments` int(10) unsigned NOT NULL DEFAULT '0',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(30) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `adddate` date NOT NULL DEFAULT '0000-00-00',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `template` varchar(30) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `linkurl` varchar(255) NOT NULL DEFAULT '',
  `filepath` varchar(255) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`),
  KEY `addtime` (`addtime`),
  KEY `catid` (`catid`),
  KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='行情';

-- ----------------------------
-- Records of destoon_quote_7
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_quote_data_7
-- ----------------------------
DROP TABLE IF EXISTS `destoon_quote_data_7`;
CREATE TABLE `destoon_quote_data_7` (
  `itemid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `content` longtext NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='行情内容';

-- ----------------------------
-- Records of destoon_quote_data_7
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_quote_price_7
-- ----------------------------
DROP TABLE IF EXISTS `destoon_quote_price_7`;
CREATE TABLE `destoon_quote_price_7` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `price` decimal(10,2) NOT NULL,
  `market` smallint(6) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL,
  `areaid` int(10) unsigned NOT NULL DEFAULT '0',
  `company` varchar(100) NOT NULL,
  `telephone` varchar(50) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `wx` varchar(50) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `note` varchar(255) NOT NULL,
  PRIMARY KEY (`itemid`),
  KEY `addtime` (`addtime`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='行情报价';

-- ----------------------------
-- Records of destoon_quote_price_7
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_quote_product_7
-- ----------------------------
DROP TABLE IF EXISTS `destoon_quote_product_7`;
CREATE TABLE `destoon_quote_product_7` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `areaid` int(10) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `style` varchar(50) NOT NULL DEFAULT '',
  `unit` varchar(10) NOT NULL,
  `price` decimal(10,2) unsigned NOT NULL,
  `minprice` decimal(10,2) unsigned NOT NULL,
  `maxprice` decimal(10,2) unsigned NOT NULL,
  `n1` varchar(100) NOT NULL,
  `n2` varchar(100) NOT NULL,
  `n3` varchar(100) NOT NULL,
  `v1` varchar(100) NOT NULL,
  `v2` varchar(100) NOT NULL,
  `v3` varchar(100) NOT NULL,
  `market` varchar(255) NOT NULL,
  `item` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `seo_title` varchar(255) NOT NULL,
  `seo_keywords` varchar(255) NOT NULL,
  `seo_description` varchar(255) NOT NULL,
  `content` mediumtext NOT NULL,
  PRIMARY KEY (`itemid`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='行情产品';

-- ----------------------------
-- Records of destoon_quote_product_7
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_sell_5
-- ----------------------------
DROP TABLE IF EXISTS `destoon_sell_5`;
CREATE TABLE `destoon_sell_5` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `mycatid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(2) unsigned NOT NULL DEFAULT '0',
  `areaid` int(10) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `elite` tinyint(1) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `style` varchar(50) NOT NULL DEFAULT '',
  `fee` float NOT NULL DEFAULT '0',
  `introduce` varchar(255) NOT NULL DEFAULT '',
  `n1` varchar(100) NOT NULL,
  `n2` varchar(100) NOT NULL,
  `n3` varchar(100) NOT NULL,
  `v1` varchar(100) NOT NULL,
  `v2` varchar(100) NOT NULL,
  `v3` varchar(100) NOT NULL,
  `brand` varchar(100) NOT NULL DEFAULT '',
  `unit` varchar(10) NOT NULL DEFAULT '',
  `price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `minamount` float unsigned NOT NULL DEFAULT '0',
  `amount` float unsigned NOT NULL DEFAULT '0',
  `days` smallint(3) unsigned NOT NULL DEFAULT '0',
  `tag` varchar(100) NOT NULL DEFAULT '',
  `keyword` varchar(255) NOT NULL DEFAULT '',
  `pptword` varchar(255) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `comments` int(10) unsigned NOT NULL DEFAULT '0',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `thumb1` varchar(255) NOT NULL DEFAULT '',
  `thumb2` varchar(255) NOT NULL DEFAULT '',
  `thumbs` text NOT NULL,
  `username` varchar(30) NOT NULL DEFAULT '',
  `groupid` smallint(4) unsigned NOT NULL DEFAULT '0',
  `company` varchar(100) NOT NULL DEFAULT '',
  `vip` smallint(2) unsigned NOT NULL DEFAULT '0',
  `validated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `truename` varchar(30) NOT NULL DEFAULT '',
  `telephone` varchar(50) NOT NULL DEFAULT '',
  `mobile` varchar(50) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `qq` varchar(20) NOT NULL DEFAULT '',
  `wx` varchar(50) NOT NULL DEFAULT '',
  `ali` varchar(30) NOT NULL DEFAULT '',
  `skype` varchar(30) NOT NULL DEFAULT '',
  `totime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `editdate` date NOT NULL DEFAULT '0000-00-00',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `adddate` date NOT NULL DEFAULT '0000-00-00',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `template` varchar(30) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `linkurl` varchar(255) NOT NULL DEFAULT '',
  `filepath` varchar(255) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`),
  KEY `username` (`username`),
  KEY `editdate` (`editdate`,`vip`,`edittime`),
  KEY `edittime` (`edittime`),
  KEY `catid` (`catid`),
  KEY `mycatid` (`mycatid`),
  KEY `areaid` (`areaid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='供应';

-- ----------------------------
-- Records of destoon_sell_5
-- ----------------------------
INSERT INTO `destoon_sell_5` VALUES ('1', '1', '0', '0', '1', '0', '0', '55555', '', '0', '巴戈里亚布古崖新几内亚', '长', '宽', '高', '20cm', '20cm', '20cm', '洛杉矶', '吨', '22.00', '15', '14', '3', '', '55555,供应,供应默认分类', '', '9', '0', 'http://img.ngacn.cc/attachments/mon_201807/13/-p219Q5-bissK2nT3cSju-rs.jpg', '', '', '', 'root', '1', 'DESTOON B2B网站管理系统', '0', '0', '姓名', '', '', '', '', '', '', '', '', '0', 'root', '1530241221', '2018-06-29', '1530241098', '2018-06-29', '0.0.0.0', '', '3', 'show.php?itemid=1', '', '');
INSERT INTO `destoon_sell_5` VALUES ('2', '1', '0', '0', '1', '0', '0', '苹果匹萨', '', '0', '苹果', '长', '宽', '高', '20cm', '20cm', '20cm', '苹果庄园', '吨', '22.00', '15', '14', '3', '', '55555,供应,供应默认分类', '', '7', '0', 'http://img.ngacn.cc/attachments/mon_201807/13/-p219Q5-bissK2nT3cSju-rs.jpg', '', '', '', 'root', '1', 'DESTOON B2B网站管理系统', '0', '0', '姓名', '', '', '', '', '', '', '', '', '0', 'root', '1530241221', '2018-06-29', '1530241098', '2018-06-29', '0.0.0.0', '', '3', 'show.php?itemid=2', '', '');

-- ----------------------------
-- Table structure for destoon_sell_data_5
-- ----------------------------
DROP TABLE IF EXISTS `destoon_sell_data_5`;
CREATE TABLE `destoon_sell_data_5` (
  `itemid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='供应内容';

-- ----------------------------
-- Records of destoon_sell_data_5
-- ----------------------------
INSERT INTO `destoon_sell_data_5` VALUES ('1', '&nbsp;巴戈里亚布古崖新几内亚');

-- ----------------------------
-- Table structure for destoon_sell_search_5
-- ----------------------------
DROP TABLE IF EXISTS `destoon_sell_search_5`;
CREATE TABLE `destoon_sell_search_5` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `areaid` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `sorttime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='供应搜索';

-- ----------------------------
-- Records of destoon_sell_search_5
-- ----------------------------
INSERT INTO `destoon_sell_search_5` VALUES ('1', '1', '0', '55555,供应,供应默认分类', '3', '1530202260');

-- ----------------------------
-- Table structure for destoon_session
-- ----------------------------
DROP TABLE IF EXISTS `destoon_session`;
CREATE TABLE `destoon_session` (
  `sessionid` varchar(32) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  `lastvisit` int(10) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `sessionid` (`sessionid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='SESSION';

-- ----------------------------
-- Records of destoon_session
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_setting
-- ----------------------------
DROP TABLE IF EXISTS `destoon_setting`;
CREATE TABLE `destoon_setting` (
  `item` varchar(30) NOT NULL DEFAULT '',
  `item_key` varchar(100) NOT NULL DEFAULT '',
  `item_value` text NOT NULL,
  KEY `item` (`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='网站设置';

-- ----------------------------
-- Records of destoon_setting
-- ----------------------------
INSERT INTO `destoon_setting` VALUES ('1', 'check_week', '');
INSERT INTO `destoon_setting` VALUES ('1', 'admin_week', '');
INSERT INTO `destoon_setting` VALUES ('1', 'cloud_express', '0');
INSERT INTO `destoon_setting` VALUES ('1', 'sms_sign', '');
INSERT INTO `destoon_setting` VALUES ('1', 'sms_ok', '成功');
INSERT INTO `destoon_setting` VALUES ('1', 'sms_len', '70');
INSERT INTO `destoon_setting` VALUES ('1', 'sms_max', '5');
INSERT INTO `destoon_setting` VALUES ('1', 'sms_fee', '0.1');
INSERT INTO `destoon_setting` VALUES ('1', 'sms', '0');
INSERT INTO `destoon_setting` VALUES ('1', 'page_text', '18');
INSERT INTO `destoon_setting` VALUES ('1', 'page_logo', '18');
INSERT INTO `destoon_setting` VALUES ('1', 'page_club', '8');
INSERT INTO `destoon_setting` VALUES ('1', 'page_down', '3');
INSERT INTO `destoon_setting` VALUES ('1', 'page_know', '6');
INSERT INTO `destoon_setting` VALUES ('1', 'page_job', '5');
INSERT INTO `destoon_setting` VALUES ('1', 'page_exhibit', '6');
INSERT INTO `destoon_setting` VALUES ('1', 'page_brand', '16');
INSERT INTO `destoon_setting` VALUES ('1', 'page_photo', '3');
INSERT INTO `destoon_setting` VALUES ('1', 'page_video', '3');
INSERT INTO `destoon_setting` VALUES ('1', 'page_special', '1');
INSERT INTO `destoon_setting` VALUES ('1', 'page_news', '6');
INSERT INTO `destoon_setting` VALUES ('1', 'page_newsh', '1');
INSERT INTO `destoon_setting` VALUES ('1', 'page_newst', '1');
INSERT INTO `destoon_setting` VALUES ('1', 'page_group', '10');
INSERT INTO `destoon_setting` VALUES ('1', 'page_info', '10');
INSERT INTO `destoon_setting` VALUES ('1', 'page_sell', '10');
INSERT INTO `destoon_setting` VALUES ('1', 'page_mall', '10');
INSERT INTO `destoon_setting` VALUES ('1', 'message_weixin', '1');
INSERT INTO `destoon_setting` VALUES ('1', 'message_type', '1,2,3');
INSERT INTO `destoon_setting` VALUES ('1', 'message_time', '60');
INSERT INTO `destoon_setting` VALUES ('1', 'message_group', '6,7');
INSERT INTO `destoon_setting` VALUES ('1', 'message_email', '0');
INSERT INTO `destoon_setting` VALUES ('1', 'mail_log', '1');
INSERT INTO `destoon_setting` VALUES ('1', 'mail_name', '');
INSERT INTO `destoon_setting` VALUES ('1', 'mail_sender', '');
INSERT INTO `destoon_setting` VALUES ('1', 'mail_sign', '');
INSERT INTO `destoon_setting` VALUES ('1', 'smtp_pass', '');
INSERT INTO `destoon_setting` VALUES ('1', 'smtp_user', '');
INSERT INTO `destoon_setting` VALUES ('1', 'smtp_auth', '1');
INSERT INTO `destoon_setting` VALUES ('1', 'smtp_port', '25');
INSERT INTO `destoon_setting` VALUES ('1', 'smtp_host', '');
INSERT INTO `destoon_setting` VALUES ('1', 'mail_delimiter', '1');
INSERT INTO `destoon_setting` VALUES ('1', 'mail_type', 'close');
INSERT INTO `destoon_setting` VALUES ('1', 'water_fontcolor', '#000000');
INSERT INTO `destoon_setting` VALUES ('1', 'water_fontsize', '20');
INSERT INTO `destoon_setting` VALUES ('1', 'water_font', 'simhei.ttf');
INSERT INTO `destoon_setting` VALUES ('1', 'water_text', 'www.destoon.com');
INSERT INTO `destoon_setting` VALUES ('1', 'water_jpeg_quality', '90');
INSERT INTO `destoon_setting` VALUES ('1', 'water_transition', '60');
INSERT INTO `destoon_setting` VALUES ('1', 'water_mark', 'watermark.png');
INSERT INTO `destoon_setting` VALUES ('1', 'max_image', '800');
INSERT INTO `destoon_setting` VALUES ('1', 'thumb_title', '0');
INSERT INTO `destoon_setting` VALUES ('1', 'thumb_album', '0');
INSERT INTO `destoon_setting` VALUES ('1', 'middle_h', '300');
INSERT INTO `destoon_setting` VALUES ('1', 'middle_w', '400');
INSERT INTO `destoon_setting` VALUES ('1', 'water_middle', '0');
INSERT INTO `destoon_setting` VALUES ('1', 'water_com', '1');
INSERT INTO `destoon_setting` VALUES ('1', 'gif_ani', '1');
INSERT INTO `destoon_setting` VALUES ('1', 'bmp_jpg', '1');
INSERT INTO `destoon_setting` VALUES ('1', 'water_pos', '9');
INSERT INTO `destoon_setting` VALUES ('1', 'water_min_wh', '180');
INSERT INTO `destoon_setting` VALUES ('1', 'water_margin', '10');
INSERT INTO `destoon_setting` VALUES ('1', 'water_type', '2');
INSERT INTO `destoon_setting` VALUES ('1', 'file_my', 'my.php');
INSERT INTO `destoon_setting` VALUES ('1', 'file_login', 'login.php');
INSERT INTO `destoon_setting` VALUES ('1', 'file_register', 'register.php');
INSERT INTO `destoon_setting` VALUES ('1', 'defend_proxy', '0');
INSERT INTO `destoon_setting` VALUES ('1', 'defend_reload', '0');
INSERT INTO `destoon_setting` VALUES ('1', 'defend_cc', '0');
INSERT INTO `destoon_setting` VALUES ('1', 'safe_domain', '');
INSERT INTO `destoon_setting` VALUES ('1', 'check_referer', '1');
INSERT INTO `destoon_setting` VALUES ('1', 'uploaddir', 'Ym/d');
INSERT INTO `destoon_setting` VALUES ('1', 'uploadsize', '20480');
INSERT INTO `destoon_setting` VALUES ('1', 'uploadtype', 'jpg|jpeg|png|gif|bmp|mp4|flv|rar|zip|pdf|doc|docx|xls|xlsx|ppt|ppts');
INSERT INTO `destoon_setting` VALUES ('1', 'uploadlog', '1');
INSERT INTO `destoon_setting` VALUES ('1', 'anticopy', '0');
INSERT INTO `destoon_setting` VALUES ('1', 'ip_login', '0');
INSERT INTO `destoon_setting` VALUES ('1', 'login_log', '0');
INSERT INTO `destoon_setting` VALUES ('1', 'admin_log', '1');
INSERT INTO `destoon_setting` VALUES ('1', 'admin_online', '1');
INSERT INTO `destoon_setting` VALUES ('1', 'md5_pass', '1');
INSERT INTO `destoon_setting` VALUES ('1', 'captcha_admin', '0');
INSERT INTO `destoon_setting` VALUES ('1', 'captcha_cn', '0');
INSERT INTO `destoon_setting` VALUES ('1', 'captcha_chars', '');
INSERT INTO `destoon_setting` VALUES ('1', 'check_hour', '');
INSERT INTO `destoon_setting` VALUES ('1', 'admin_hour', '');
INSERT INTO `destoon_setting` VALUES ('1', 'admin_ip', '');
INSERT INTO `destoon_setting` VALUES ('1', 'admin_area', '');
INSERT INTO `destoon_setting` VALUES ('1', 'remote_url', '');
INSERT INTO `destoon_setting` VALUES ('1', 'ftp_path', '');
INSERT INTO `destoon_setting` VALUES ('1', 'ftp_save', '0');
INSERT INTO `destoon_setting` VALUES ('1', 'ftp_pasv', '1');
INSERT INTO `destoon_setting` VALUES ('1', 'ftp_ssl', '0');
INSERT INTO `destoon_setting` VALUES ('1', 'ftp_pass', '');
INSERT INTO `destoon_setting` VALUES ('1', 'ftp_user', '');
INSERT INTO `destoon_setting` VALUES ('1', 'ftp_port', '21');
INSERT INTO `destoon_setting` VALUES ('1', 'ftp_host', '');
INSERT INTO `destoon_setting` VALUES ('1', 'ftp_remote', '0');
INSERT INTO `destoon_setting` VALUES ('1', 'max_len', '50000');
INSERT INTO `destoon_setting` VALUES ('1', 'schcate_limit', '10');
INSERT INTO `destoon_setting` VALUES ('1', 'pagesize', '20');
INSERT INTO `destoon_setting` VALUES ('1', 'pushtime', '10');
INSERT INTO `destoon_setting` VALUES ('1', 'online', '1200');
INSERT INTO `destoon_setting` VALUES ('1', 'search_limit', '1');
INSERT INTO `destoon_setting` VALUES ('1', 'max_kw', '32');
INSERT INTO `destoon_setting` VALUES ('1', 'min_kw', '3');
INSERT INTO `destoon_setting` VALUES ('1', 'search_check_kw', '0');
INSERT INTO `destoon_setting` VALUES ('1', 'search_kw', '1');
INSERT INTO `destoon_setting` VALUES ('1', 'save_draft', '0');
INSERT INTO `destoon_setting` VALUES ('1', 'search_tips', '1');
INSERT INTO `destoon_setting` VALUES ('1', 'anti_spam', '1');
INSERT INTO `destoon_setting` VALUES ('1', 'log_credit', '1');
INSERT INTO `destoon_setting` VALUES ('1', 'pages_mode', '0');
INSERT INTO `destoon_setting` VALUES ('1', 'lazy', '0');
INSERT INTO `destoon_setting` VALUES ('1', 'gzip_enable', '0');
INSERT INTO `destoon_setting` VALUES ('1', 'cache_hits', '0');
INSERT INTO `destoon_setting` VALUES ('1', 'cache_search', '0');
INSERT INTO `destoon_setting` VALUES ('1', 'task_item', '86400');
INSERT INTO `destoon_setting` VALUES ('1', 'task_list', '1800');
INSERT INTO `destoon_setting` VALUES ('1', 'task_index', '600');
INSERT INTO `destoon_setting` VALUES ('1', 'log_404', '0');
INSERT INTO `destoon_setting` VALUES ('1', 'pcharset', '0');
INSERT INTO `destoon_setting` VALUES ('1', 'search_rewrite', '0');
INSERT INTO `destoon_setting` VALUES ('1', 'com_https', '0');
INSERT INTO `destoon_setting` VALUES ('1', 'com_www', '0');
INSERT INTO `destoon_setting` VALUES ('1', 'rewrite', '0');
INSERT INTO `destoon_setting` VALUES ('1', 'index_html', '0');
INSERT INTO `destoon_setting` VALUES ('1', 'file_ext', 'html');
INSERT INTO `destoon_setting` VALUES ('1', 'index', 'index');
INSERT INTO `destoon_setting` VALUES ('1', 'seo_description', 'DESTOON B2B网站系统是基于PHP+MySQL的B2B（电子商务）行业门户解决方案');
INSERT INTO `destoon_setting` VALUES ('1', 'seo_keywords', 'B2B网站系统,B2B行业门户系统,B2B解决方案,DESTOON ,B2B,电子商务');
INSERT INTO `destoon_setting` VALUES ('1', 'seo_delimiter', '_');
INSERT INTO `destoon_setting` VALUES ('1', 'seo_title', 'DESTOON B2B网站系统|B2B（电子商务）行业门户解决方案');
INSERT INTO `destoon_setting` VALUES ('1', 'trade_nu', 'notify.php');
INSERT INTO `destoon_setting` VALUES ('1', 'trade_tp', '0');
INSERT INTO `destoon_setting` VALUES ('1', 'trade_ac', '');
INSERT INTO `destoon_setting` VALUES ('1', 'trade_id', '');
INSERT INTO `destoon_setting` VALUES ('1', 'trade_pw', '');
INSERT INTO `destoon_setting` VALUES ('1', 'trade_hm', 'http://www.alipay.com/');
INSERT INTO `destoon_setting` VALUES ('1', 'trade_nm', '支付宝');
INSERT INTO `destoon_setting` VALUES ('1', 'trade', '');
INSERT INTO `destoon_setting` VALUES ('1', 'im_skype', '0');
INSERT INTO `destoon_setting` VALUES ('1', 'im_wx', '1');
INSERT INTO `destoon_setting` VALUES ('1', 'im_ali', '1');
INSERT INTO `destoon_setting` VALUES ('1', 'im_qq', '1');
INSERT INTO `destoon_setting` VALUES ('1', 'im_web', '1');
INSERT INTO `destoon_setting` VALUES ('1', 'admin_left', '218');
INSERT INTO `destoon_setting` VALUES ('1', 'max_cart', '50');
INSERT INTO `destoon_setting` VALUES ('1', 'quick_pay', '200');
INSERT INTO `destoon_setting` VALUES ('1', 'credit_unit', '点');
INSERT INTO `destoon_setting` VALUES ('1', 'credit_name', '积分');
INSERT INTO `destoon_setting` VALUES ('1', 'money_sign', '￥');
INSERT INTO `destoon_setting` VALUES ('1', 'money_unit', '元');
INSERT INTO `destoon_setting` VALUES ('1', 'money_name', '资金');
INSERT INTO `destoon_setting` VALUES ('1', 'city_ip', '1');
INSERT INTO `destoon_setting` VALUES ('1', 'city', '1');
INSERT INTO `destoon_setting` VALUES ('1', 'icpno', '');
INSERT INTO `destoon_setting` VALUES ('1', 'close', '0');
INSERT INTO `destoon_setting` VALUES ('1', 'close_reason', '网站维护中，请稍候访问...');
INSERT INTO `destoon_setting` VALUES ('1', 'telephone', '');
INSERT INTO `destoon_setting` VALUES ('1', 'copyright', '(c)2008-2018 DESTOON B2B SYSTEM All Rights Reserved');
INSERT INTO `destoon_setting` VALUES ('1', 'logo', '');
INSERT INTO `destoon_setting` VALUES ('1', 'sitename', 'DESTOON B2B网站管理系统');
INSERT INTO `destoon_setting` VALUES ('1', 'module', 'destoon');
INSERT INTO `destoon_setting` VALUES ('1', 'mobile', 'http://demo.destoon.com/v7.0/mobile//');
INSERT INTO `destoon_setting` VALUES ('2', 'oauth', '1');
INSERT INTO `destoon_setting` VALUES ('2', 'uc_bbspre', '');
INSERT INTO `destoon_setting` VALUES ('2', 'uc_bbs', '1');
INSERT INTO `destoon_setting` VALUES ('2', 'uc_key', '');
INSERT INTO `destoon_setting` VALUES ('2', 'uc_charset', 'utf8');
INSERT INTO `destoon_setting` VALUES ('2', 'uc_appid', '');
INSERT INTO `destoon_setting` VALUES ('2', 'uc_dbpre', '');
INSERT INTO `destoon_setting` VALUES ('2', 'uc_dbname', '');
INSERT INTO `destoon_setting` VALUES ('2', 'uc_dbpwd', '');
INSERT INTO `destoon_setting` VALUES ('2', 'uc_dbuser', '');
INSERT INTO `destoon_setting` VALUES ('2', 'uc_dbhost', '');
INSERT INTO `destoon_setting` VALUES ('2', 'uc_mysql', '1');
INSERT INTO `destoon_setting` VALUES ('2', 'uc_api', '');
INSERT INTO `destoon_setting` VALUES ('2', 'uc_ip', '');
INSERT INTO `destoon_setting` VALUES ('2', 'passport_key', '');
INSERT INTO `destoon_setting` VALUES ('2', 'passport_url', '');
INSERT INTO `destoon_setting` VALUES ('2', 'passport_charset', 'gbk');
INSERT INTO `destoon_setting` VALUES ('2', 'passport', '0');
INSERT INTO `destoon_setting` VALUES ('2', 'ex_name', '');
INSERT INTO `destoon_setting` VALUES ('2', 'ex_rate', '');
INSERT INTO `destoon_setting` VALUES ('2', 'ex_fdnm', '');
INSERT INTO `destoon_setting` VALUES ('2', 'ex_prex', '');
INSERT INTO `destoon_setting` VALUES ('2', 'ex_data', '');
INSERT INTO `destoon_setting` VALUES ('2', 'ex_pass', '');
INSERT INTO `destoon_setting` VALUES ('2', 'ex_user', 'root');
INSERT INTO `destoon_setting` VALUES ('2', 'ex_host', 'localhost');
INSERT INTO `destoon_setting` VALUES ('2', 'ex_type', 'PW');
INSERT INTO `destoon_setting` VALUES ('2', 'credit_exchange', '0');
INSERT INTO `destoon_setting` VALUES ('2', 'credit_price', '5|10|45|85');
INSERT INTO `destoon_setting` VALUES ('2', 'credit_buy', '30|100|500|1000');
INSERT INTO `destoon_setting` VALUES ('2', 'credit_del_page', '5');
INSERT INTO `destoon_setting` VALUES ('2', 'credit_add_page', '2');
INSERT INTO `destoon_setting` VALUES ('2', 'credit_del_news', '5');
INSERT INTO `destoon_setting` VALUES ('2', 'credit_add_news', '2');
INSERT INTO `destoon_setting` VALUES ('2', 'credit_del_credit', '5');
INSERT INTO `destoon_setting` VALUES ('2', 'credit_add_credit', '2');
INSERT INTO `destoon_setting` VALUES ('2', 'credit_charge', '1');
INSERT INTO `destoon_setting` VALUES ('2', 'credit_maxip', '50');
INSERT INTO `destoon_setting` VALUES ('2', 'credit_ip', '2');
INSERT INTO `destoon_setting` VALUES ('2', 'credit_user', '20');
INSERT INTO `destoon_setting` VALUES ('2', 'credit_login', '1');
INSERT INTO `destoon_setting` VALUES ('2', 'credit_edit', '10');
INSERT INTO `destoon_setting` VALUES ('2', 'credit_less', '1');
INSERT INTO `destoon_setting` VALUES ('2', 'send_types', '平邮|EMS|顺丰快递|申通快递|圆通快递|中通快递|国通快递|宅急送|韵达快递|天天快递|如风达|百世汇通|全峰快递|快捷快递|其它');
INSERT INTO `destoon_setting` VALUES ('2', 'deposit', '1000');
INSERT INTO `destoon_setting` VALUES ('2', 'trade_day', '10');
INSERT INTO `destoon_setting` VALUES ('2', 'pay_banks', '站内|支付宝|微信支付|财付通|现金|招商银行|工商银行|农业银行|建设银行|交通银行|中国银行|邮政储蓄|邮政汇款');
INSERT INTO `destoon_setting` VALUES ('2', 'cash_fee_max', '50');
INSERT INTO `destoon_setting` VALUES ('2', 'cash_fee_min', '1');
INSERT INTO `destoon_setting` VALUES ('2', 'cash_fee', '1');
INSERT INTO `destoon_setting` VALUES ('2', 'cash_max', '10000');
INSERT INTO `destoon_setting` VALUES ('2', 'cash_min', '50');
INSERT INTO `destoon_setting` VALUES ('2', 'cash_banks', '支付宝|微信|财付通|招商银行|工商银行|农业银行|建设银行|交通银行|中国银行|邮政储蓄|邮政汇款');
INSERT INTO `destoon_setting` VALUES ('2', 'cash_times', '3');
INSERT INTO `destoon_setting` VALUES ('2', 'cash_enable', '1');
INSERT INTO `destoon_setting` VALUES ('2', 'pay_url', '');
INSERT INTO `destoon_setting` VALUES ('2', 'awards', '1|2|5|10|20|50|100');
INSERT INTO `destoon_setting` VALUES ('2', 'mincharge', '0');
INSERT INTO `destoon_setting` VALUES ('2', 'pay_card', '1');
INSERT INTO `destoon_setting` VALUES ('2', 'pay_online', '1');
INSERT INTO `destoon_setting` VALUES ('2', 'link_check', '2');
INSERT INTO `destoon_setting` VALUES ('2', 'credit_clear', '0');
INSERT INTO `destoon_setting` VALUES ('2', 'credit_save', '0');
INSERT INTO `destoon_setting` VALUES ('2', 'credit_check', '2');
INSERT INTO `destoon_setting` VALUES ('2', 'page_clear', '0');
INSERT INTO `destoon_setting` VALUES ('2', 'page_save', '0');
INSERT INTO `destoon_setting` VALUES ('2', 'page_check', '2');
INSERT INTO `destoon_setting` VALUES ('2', 'news_clear', '0');
INSERT INTO `destoon_setting` VALUES ('2', 'news_save', '0');
INSERT INTO `destoon_setting` VALUES ('2', 'news_thumb_height', '180');
INSERT INTO `destoon_setting` VALUES ('2', 'news_thumb_width', '240');
INSERT INTO `destoon_setting` VALUES ('2', 'news_check', '2');
INSERT INTO `destoon_setting` VALUES ('2', 'introduce_clear', '0');
INSERT INTO `destoon_setting` VALUES ('2', 'introduce_save', '0');
INSERT INTO `destoon_setting` VALUES ('2', 'introduce_length', '0');
INSERT INTO `destoon_setting` VALUES ('2', 'thumb_height', '180');
INSERT INTO `destoon_setting` VALUES ('2', 'thumb_width', '180');
INSERT INTO `destoon_setting` VALUES ('2', 'cate_max', '6');
INSERT INTO `destoon_setting` VALUES ('2', 'mode_max', '2');
INSERT INTO `destoon_setting` VALUES ('2', 'money_unit', '人民币|港元|台币|美元|欧元|英镑');
INSERT INTO `destoon_setting` VALUES ('2', 'editor', 'Basic');
INSERT INTO `destoon_setting` VALUES ('2', 'com_type', '企业单位|事业单位或社会团体|个体经营|其他');
INSERT INTO `destoon_setting` VALUES ('2', 'com_size', '1-49人|50-99人|100-499人|500-999人|1000-3000人|3000-5000人|5000-10000人|10000人以上');
INSERT INTO `destoon_setting` VALUES ('2', 'com_mode', '制造商|贸易商|服务商|其他机构');
INSERT INTO `destoon_setting` VALUES ('2', 'vfax', '');
INSERT INTO `destoon_setting` VALUES ('2', 'vcompany', '1');
INSERT INTO `destoon_setting` VALUES ('2', 'vbank', '1');
INSERT INTO `destoon_setting` VALUES ('2', 'vtruename', '1');
INSERT INTO `destoon_setting` VALUES ('2', 'vmobile', '1');
INSERT INTO `destoon_setting` VALUES ('2', 'vemail', '1');
INSERT INTO `destoon_setting` VALUES ('2', 'vmember', '1');
INSERT INTO `destoon_setting` VALUES ('2', 'chat_img', '1');
INSERT INTO `destoon_setting` VALUES ('2', 'chat_url', '1');
INSERT INTO `destoon_setting` VALUES ('2', 'chat_file', '1');
INSERT INTO `destoon_setting` VALUES ('2', 'chat_mintime', '3');
INSERT INTO `destoon_setting` VALUES ('2', 'chat_poll', '1');
INSERT INTO `destoon_setting` VALUES ('2', 'chat_timeout', '600');
INSERT INTO `destoon_setting` VALUES ('2', 'chat_maxlen', '300');
INSERT INTO `destoon_setting` VALUES ('2', 'alert_check', '2');
INSERT INTO `destoon_setting` VALUES ('2', 'alertid', '5|6|22');
INSERT INTO `destoon_setting` VALUES ('2', 'auth_days', '3');
INSERT INTO `destoon_setting` VALUES ('2', 'captcha_home', '2');
INSERT INTO `destoon_setting` VALUES ('2', 'captcha_edit', '2');
INSERT INTO `destoon_setting` VALUES ('2', 'captcha_sendmessage', '2');
INSERT INTO `destoon_setting` VALUES ('2', 'maxtouser', '5');
INSERT INTO `destoon_setting` VALUES ('2', 'login_scan', '1');
INSERT INTO `destoon_setting` VALUES ('2', 'login_sms', '1');
INSERT INTO `destoon_setting` VALUES ('2', 'login_time', '864000');
INSERT INTO `destoon_setting` VALUES ('2', 'captcha_login', '0');
INSERT INTO `destoon_setting` VALUES ('2', 'lock_hour', '1');
INSERT INTO `destoon_setting` VALUES ('2', 'login_times', '5');
INSERT INTO `destoon_setting` VALUES ('2', 'usernote', '');
INSERT INTO `destoon_setting` VALUES ('2', 'edit_check', 'thumb,areaid,type,business,regyear,capital,address,telephone,gzh,gzhqr,content');
INSERT INTO `destoon_setting` VALUES ('2', 'iptimeout', '24');
INSERT INTO `destoon_setting` VALUES ('2', 'banagent', '');
INSERT INTO `destoon_setting` VALUES ('2', 'defend_proxy', '0');
INSERT INTO `destoon_setting` VALUES ('2', 'sms_register', '0');
INSERT INTO `destoon_setting` VALUES ('2', 'credit_register', '0');
INSERT INTO `destoon_setting` VALUES ('2', 'money_register', '0');
INSERT INTO `destoon_setting` VALUES ('2', 'question_register', '1');
INSERT INTO `destoon_setting` VALUES ('2', 'captcha_register', '1');
INSERT INTO `destoon_setting` VALUES ('2', 'welcome_sms', '1');
INSERT INTO `destoon_setting` VALUES ('2', 'welcome_email', '1');
INSERT INTO `destoon_setting` VALUES ('2', 'welcome_message', '1');
INSERT INTO `destoon_setting` VALUES ('2', 'checkuser', '0');
INSERT INTO `destoon_setting` VALUES ('2', 'banemail', '');
INSERT INTO `destoon_setting` VALUES ('2', 'banmodec', '0');
INSERT INTO `destoon_setting` VALUES ('2', 'bancompany', '');
INSERT INTO `destoon_setting` VALUES ('2', 'mixpassword', '1,2');
INSERT INTO `destoon_setting` VALUES ('2', 'maxpassword', '20');
INSERT INTO `destoon_setting` VALUES ('2', 'maxusername', '20');
INSERT INTO `destoon_setting` VALUES ('2', 'banusername', 'admin|system|master|web|sell|buy|company|quote|job|article|info|page|bbs');
INSERT INTO `destoon_setting` VALUES ('2', 'banmodeu', '0');
INSERT INTO `destoon_setting` VALUES ('2', 'minpassword', '6');
INSERT INTO `destoon_setting` VALUES ('2', 'minusername', '4');
INSERT INTO `destoon_setting` VALUES ('2', 'enable_register', '1');
INSERT INTO `destoon_setting` VALUES ('2', 'module', 'member');
INSERT INTO `destoon_setting` VALUES ('2', 'mobile', 'http://demo.destoon.com/v7.0/mobile/member/');
INSERT INTO `destoon_setting` VALUES ('3', 'baidunews_items', '90');
INSERT INTO `destoon_setting` VALUES ('3', 'baidunews_update', '60');
INSERT INTO `destoon_setting` VALUES ('3', 'baidunews_email', 'web@destoon.com');
INSERT INTO `destoon_setting` VALUES ('3', 'baidunews', '1');
INSERT INTO `destoon_setting` VALUES ('3', 'sitemaps_update', '60');
INSERT INTO `destoon_setting` VALUES ('3', 'sitemaps_items', '10000');
INSERT INTO `destoon_setting` VALUES ('3', 'sitemaps_module', '16,5,6,4,17,7,8,21,22,9,10,11,12,14,15');
INSERT INTO `destoon_setting` VALUES ('3', 'sitemaps_priority', '0.8');
INSERT INTO `destoon_setting` VALUES ('3', 'sitemaps_changefreq', 'monthly');
INSERT INTO `destoon_setting` VALUES ('3', 'sitemaps', '1');
INSERT INTO `destoon_setting` VALUES ('3', 'feed_pagesize', '50');
INSERT INTO `destoon_setting` VALUES ('3', 'feed_domain', '');
INSERT INTO `destoon_setting` VALUES ('3', 'feed_enable', '2');
INSERT INTO `destoon_setting` VALUES ('3', 'archiver_domain', '');
INSERT INTO `destoon_setting` VALUES ('3', 'archiver_enable', '1');
INSERT INTO `destoon_setting` VALUES ('3', 'form_domain', '');
INSERT INTO `destoon_setting` VALUES ('3', 'form_enable', '1');
INSERT INTO `destoon_setting` VALUES ('3', 'poll_domain', '');
INSERT INTO `destoon_setting` VALUES ('3', 'poll_enable', '1');
INSERT INTO `destoon_setting` VALUES ('3', 'vote_domain', '');
INSERT INTO `destoon_setting` VALUES ('3', 'vote_enable', '1');
INSERT INTO `destoon_setting` VALUES ('3', 'gift_domain', '');
INSERT INTO `destoon_setting` VALUES ('3', 'gift_time', '86400');
INSERT INTO `destoon_setting` VALUES ('3', 'gift_enable', '1');
INSERT INTO `destoon_setting` VALUES ('3', 'guestbook_enable', '1');
INSERT INTO `destoon_setting` VALUES ('3', 'guestbook_domain', '');
INSERT INTO `destoon_setting` VALUES ('3', 'guestbook_type', '业务合作|意见建议|使用问题|页面错误|不良信息|其他');
INSERT INTO `destoon_setting` VALUES ('3', 'guestbook_captcha', '1');
INSERT INTO `destoon_setting` VALUES ('3', 'comment_am', '网友');
INSERT INTO `destoon_setting` VALUES ('3', 'credit_del_comment', '5');
INSERT INTO `destoon_setting` VALUES ('3', 'credit_add_comment', '2');
INSERT INTO `destoon_setting` VALUES ('3', 'comment_limit', '30');
INSERT INTO `destoon_setting` VALUES ('3', 'comment_pagesize', '10');
INSERT INTO `destoon_setting` VALUES ('3', 'comment_time', '30');
INSERT INTO `destoon_setting` VALUES ('3', 'comment_max', '500');
INSERT INTO `destoon_setting` VALUES ('3', 'comment_min', '5');
INSERT INTO `destoon_setting` VALUES ('3', 'comment_vote', '1');
INSERT INTO `destoon_setting` VALUES ('3', 'comment_admin_del', '1');
INSERT INTO `destoon_setting` VALUES ('3', 'comment_user_del', '4');
INSERT INTO `destoon_setting` VALUES ('3', 'comment_captcha_add', '1');
INSERT INTO `destoon_setting` VALUES ('3', 'comment_check', '2');
INSERT INTO `destoon_setting` VALUES ('3', 'comment_vote_group', '5,6,7');
INSERT INTO `destoon_setting` VALUES ('3', 'comment_group', '5,6,7');
INSERT INTO `destoon_setting` VALUES ('3', 'comment_show', '1');
INSERT INTO `destoon_setting` VALUES ('3', 'comment_api_key', '');
INSERT INTO `destoon_setting` VALUES ('3', 'comment_module', '5,6,4,17,7,8,21,22,13,9,11,12,14,15');
INSERT INTO `destoon_setting` VALUES ('3', 'comment_api', '');
INSERT INTO `destoon_setting` VALUES ('3', 'comment_api_id', '');
INSERT INTO `destoon_setting` VALUES ('3', 'comment_domain', '');
INSERT INTO `destoon_setting` VALUES ('3', 'link_request', '');
INSERT INTO `destoon_setting` VALUES ('3', 'link_reg', '1');
INSERT INTO `destoon_setting` VALUES ('3', 'link_domain', '');
INSERT INTO `destoon_setting` VALUES ('3', 'link_enable', '1');
INSERT INTO `destoon_setting` VALUES ('3', 'announce_domain', '');
INSERT INTO `destoon_setting` VALUES ('3', 'announce_enable', '1');
INSERT INTO `destoon_setting` VALUES ('3', 'ad_currency', 'money');
INSERT INTO `destoon_setting` VALUES ('3', 'ad_buy', '1');
INSERT INTO `destoon_setting` VALUES ('3', 'ad_view', '1');
INSERT INTO `destoon_setting` VALUES ('3', 'ad_domain', '');
INSERT INTO `destoon_setting` VALUES ('3', 'ad_enable', '1');
INSERT INTO `destoon_setting` VALUES ('3', 'spread_currency', 'money');
INSERT INTO `destoon_setting` VALUES ('3', 'spread_list', '1');
INSERT INTO `destoon_setting` VALUES ('3', 'spread_check', '1');
INSERT INTO `destoon_setting` VALUES ('3', 'spread_step', '100');
INSERT INTO `destoon_setting` VALUES ('3', 'spread_month', '6');
INSERT INTO `destoon_setting` VALUES ('3', 'spread_max', '10');
INSERT INTO `destoon_setting` VALUES ('3', 'spread_price', '200');
INSERT INTO `destoon_setting` VALUES ('3', 'spread_domain', '');
INSERT INTO `destoon_setting` VALUES ('3', 'mobile_adr', '77@aprcc7byyvzxyi4i');
INSERT INTO `destoon_setting` VALUES ('3', 'mobile_ios', '77@d9xuz1ukp1goudwh');
INSERT INTO `destoon_setting` VALUES ('3', 'mobile_ajax', '1');
INSERT INTO `destoon_setting` VALUES ('3', 'mobile_goto', '1');
INSERT INTO `destoon_setting` VALUES ('3', 'mobile_pid', '14');
INSERT INTO `destoon_setting` VALUES ('3', 'mobile_sitename', 'DESTOON');
INSERT INTO `destoon_setting` VALUES ('3', 'mobile_domain', '');
INSERT INTO `destoon_setting` VALUES ('3', 'mobile_enable', '1');
INSERT INTO `destoon_setting` VALUES ('3', 'show_url', '1');
INSERT INTO `destoon_setting` VALUES ('3', 'list_url', '1');
INSERT INTO `destoon_setting` VALUES ('3', 'weixin', '0');
INSERT INTO `destoon_setting` VALUES ('3', 'oauth', '1,sina');
INSERT INTO `destoon_setting` VALUES ('3', 'module', 'extend');
INSERT INTO `destoon_setting` VALUES ('3', 'mobile', 'http://localhost:8088/destoon/mobile/extend/');
INSERT INTO `destoon_setting` VALUES ('3', 'feed_url', 'http://localhost:8088/destoon/feed/');
INSERT INTO `destoon_setting` VALUES ('3', 'feed_mob', 'http://localhost:8088/destoon/mobile/feed/');
INSERT INTO `destoon_setting` VALUES ('3', 'archiver_url', 'http://localhost:8088/destoon/archiver/');
INSERT INTO `destoon_setting` VALUES ('3', 'archiver_mob', 'http://localhost:8088/destoon/mobile/archiver/');
INSERT INTO `destoon_setting` VALUES ('3', 'form_url', 'http://localhost:8088/destoon/form/');
INSERT INTO `destoon_setting` VALUES ('3', 'form_mob', 'http://localhost:8088/destoon/mobile/form/');
INSERT INTO `destoon_setting` VALUES ('3', 'poll_url', 'http://localhost:8088/destoon/poll/');
INSERT INTO `destoon_setting` VALUES ('3', 'poll_mob', 'http://localhost:8088/destoon/mobile/poll/');
INSERT INTO `destoon_setting` VALUES ('3', 'vote_url', 'http://localhost:8088/destoon/vote/');
INSERT INTO `destoon_setting` VALUES ('3', 'vote_mob', 'http://localhost:8088/destoon/mobile/vote/');
INSERT INTO `destoon_setting` VALUES ('3', 'gift_url', 'http://localhost:8088/destoon/gift/');
INSERT INTO `destoon_setting` VALUES ('3', 'gift_mob', 'http://localhost:8088/destoon/mobile/gift/');
INSERT INTO `destoon_setting` VALUES ('3', 'guestbook_url', 'http://localhost:8088/destoon/guestbook/');
INSERT INTO `destoon_setting` VALUES ('3', 'guestbook_mob', 'http://localhost:8088/destoon/mobile/guestbook/');
INSERT INTO `destoon_setting` VALUES ('3', 'comment_url', 'http://localhost:8088/destoon/comment/');
INSERT INTO `destoon_setting` VALUES ('3', 'comment_mob', 'http://localhost:8088/destoon/mobile/comment/');
INSERT INTO `destoon_setting` VALUES ('3', 'link_url', 'http://localhost:8088/destoon/link/');
INSERT INTO `destoon_setting` VALUES ('3', 'link_mob', 'http://localhost:8088/destoon/mobile/link/');
INSERT INTO `destoon_setting` VALUES ('3', 'announce_url', 'http://localhost:8088/destoon/announce/');
INSERT INTO `destoon_setting` VALUES ('3', 'announce_mob', 'http://localhost:8088/destoon/mobile/announce/');
INSERT INTO `destoon_setting` VALUES ('3', 'ad_url', 'http://localhost:8088/destoon/ad/');
INSERT INTO `destoon_setting` VALUES ('3', 'ad_mob', 'http://localhost:8088/destoon/mobile/ad/');
INSERT INTO `destoon_setting` VALUES ('3', 'spread_url', 'http://localhost:8088/destoon/spread/');
INSERT INTO `destoon_setting` VALUES ('3', 'spread_mob', 'http://localhost:8088/destoon/mobile/spread/');
INSERT INTO `destoon_setting` VALUES ('3', 'mobile_url', 'http://localhost:8088/destoon/mobile/');
INSERT INTO `destoon_setting` VALUES ('3', 'mobile_mob', 'http://localhost:8088/destoon/mobile/mobile/');
INSERT INTO `destoon_setting` VALUES ('4', 'group_message', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('4', 'group_buy', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('4', 'group_index', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('4', 'seo_description_search', '');
INSERT INTO `destoon_setting` VALUES ('4', 'seo_keywords_search', '');
INSERT INTO `destoon_setting` VALUES ('4', 'seo_title_search', '');
INSERT INTO `destoon_setting` VALUES ('4', 'group_list', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('4', 'group_search', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('4', 'group_price', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('4', 'seo_description_show', '{内容标题}{内容简介}{分类名称}{分类SEO描述}{模块名称}{网站名称}{网站SEO描述}');
INSERT INTO `destoon_setting` VALUES ('4', 'group_inquiry', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('4', 'seo_keywords_show', '{内容标题}{分类名称}{分类SEO关键词}{模块名称}{网站SEO关键词}');
INSERT INTO `destoon_setting` VALUES ('4', 'seo_title_show', '{内容标题}{分类名称}{分类SEO标题}{模块名称}{网站名称}{网站SEO标题}{分隔符}');
INSERT INTO `destoon_setting` VALUES ('4', 'seo_description_list', '{网站SEO描述}{网站名称}{模块名称}{分类SEO描述}{分类名称}');
INSERT INTO `destoon_setting` VALUES ('4', 'seo_keywords_list', '{分类名称}{分类SEO关键词}{模块名称}{网站名称}{网站SEO关键词}');
INSERT INTO `destoon_setting` VALUES ('4', 'seo_title_list', '{分类SEO标题}{页码}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('4', 'seo_keywords_index', '{模块名称}{网站名称}{网站SEO标题}');
INSERT INTO `destoon_setting` VALUES ('4', 'seo_description_index', '{模块名称}{网站名称}{网站SEO标题}');
INSERT INTO `destoon_setting` VALUES ('4', 'php_list_urlid', '5');
INSERT INTO `destoon_setting` VALUES ('4', 'seo_title_index', '{模块名称}{分隔符}{页码}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('4', 'htm_list_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('4', 'htm_list_prefix', 'company_list_');
INSERT INTO `destoon_setting` VALUES ('4', 'list_html', '0');
INSERT INTO `destoon_setting` VALUES ('4', 'index_html', '0');
INSERT INTO `destoon_setting` VALUES ('4', 'page_comment', '0');
INSERT INTO `destoon_setting` VALUES ('4', 'hits', '1');
INSERT INTO `destoon_setting` VALUES ('4', 'pagesize', '20');
INSERT INTO `destoon_setting` VALUES ('4', 'page_inew', '10');
INSERT INTO `destoon_setting` VALUES ('4', 'group_contact', '5,6,7');
INSERT INTO `destoon_setting` VALUES ('4', 'page_inews', '10');
INSERT INTO `destoon_setting` VALUES ('4', 'page_ivip', '10');
INSERT INTO `destoon_setting` VALUES ('4', 'page_irec', '10');
INSERT INTO `destoon_setting` VALUES ('4', 'page_subcat', '6');
INSERT INTO `destoon_setting` VALUES ('4', 'level', '推荐公司');
INSERT INTO `destoon_setting` VALUES ('4', 'kf', 'qq,53kf,tq,qiao');
INSERT INTO `destoon_setting` VALUES ('4', 'stats', 'baidu,qq,cnzz,51la');
INSERT INTO `destoon_setting` VALUES ('4', 'map', 'baidu');
INSERT INTO `destoon_setting` VALUES ('4', 'vip_honor', '1');
INSERT INTO `destoon_setting` VALUES ('4', 'vip_maxyear', '5');
INSERT INTO `destoon_setting` VALUES ('4', 'vip_year', '1');
INSERT INTO `destoon_setting` VALUES ('4', 'vip_cominfo', '1');
INSERT INTO `destoon_setting` VALUES ('4', 'vip_maxgroupvip', '3');
INSERT INTO `destoon_setting` VALUES ('4', 'delvip', '1');
INSERT INTO `destoon_setting` VALUES ('4', 'openall', '0');
INSERT INTO `destoon_setting` VALUES ('4', 'split', '0');
INSERT INTO `destoon_setting` VALUES ('4', 'comment', '1');
INSERT INTO `destoon_setting` VALUES ('4', 'homeurl', '0');
INSERT INTO `destoon_setting` VALUES ('4', 'fields', 'userid,username,company,linkurl,thumb,catid,areaid,vip,groupid,validated,business,mode');
INSERT INTO `destoon_setting` VALUES ('4', 'order', 'vip desc,userid desc');
INSERT INTO `destoon_setting` VALUES ('4', 'template_search', '');
INSERT INTO `destoon_setting` VALUES ('4', 'template_list', '');
INSERT INTO `destoon_setting` VALUES ('4', 'template_index', '');
INSERT INTO `destoon_setting` VALUES ('4', 'title_index', '{$seo_modulename}{$seo_delimiter}{$seo_page}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('4', 'title_list', '{$seo_cattitle}{$seo_page}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('4', 'title_show', '{$seo_showtitle}{$seo_catname}{$seo_cattitle}{$seo_modulename}{$seo_sitename}{$seo_sitetitle}{$seo_delimiter}');
INSERT INTO `destoon_setting` VALUES ('4', 'title_search', '');
INSERT INTO `destoon_setting` VALUES ('4', 'keywords_index', '{$seo_modulename}{$seo_sitename}{$seo_sitetitle}');
INSERT INTO `destoon_setting` VALUES ('4', 'keywords_list', '{$seo_catname}{$seo_catkeywords}{$seo_modulename}{$seo_sitename}{$seo_sitekeywords}');
INSERT INTO `destoon_setting` VALUES ('4', 'keywords_show', '{$seo_showtitle}{$seo_catname}{$seo_catkeywords}{$seo_modulename}{$seo_sitekeywords}');
INSERT INTO `destoon_setting` VALUES ('4', 'keywords_search', '');
INSERT INTO `destoon_setting` VALUES ('4', 'description_index', '{$seo_modulename}{$seo_sitename}{$seo_sitetitle}');
INSERT INTO `destoon_setting` VALUES ('4', 'description_list', '{$seo_sitedescription}{$seo_sitename}{$seo_modulename}{$seo_catdescription}{$seo_catname}');
INSERT INTO `destoon_setting` VALUES ('4', 'description_show', '{$seo_showtitle}{$seo_showintroduce}{$seo_catname}{$seo_catdescription}{$seo_modulename}{$seo_sitename}{$seo_sitedescription}');
INSERT INTO `destoon_setting` VALUES ('4', 'description_search', '');
INSERT INTO `destoon_setting` VALUES ('4', 'module', 'company');
INSERT INTO `destoon_setting` VALUES ('4', 'mobile', 'http://demo.destoon.com/v7.0/mobile/company/');
INSERT INTO `destoon_setting` VALUES ('5', 'free_limit_7', '-1');
INSERT INTO `destoon_setting` VALUES ('5', 'limit_7', '100');
INSERT INTO `destoon_setting` VALUES ('5', 'free_limit_6', '0');
INSERT INTO `destoon_setting` VALUES ('5', 'limit_6', '30');
INSERT INTO `destoon_setting` VALUES ('5', 'free_limit_5', '0');
INSERT INTO `destoon_setting` VALUES ('5', 'limit_5', '3');
INSERT INTO `destoon_setting` VALUES ('5', 'free_limit_4', '0');
INSERT INTO `destoon_setting` VALUES ('5', 'limit_4', '-1');
INSERT INTO `destoon_setting` VALUES ('5', 'free_limit_3', '0');
INSERT INTO `destoon_setting` VALUES ('5', 'limit_3', '-1');
INSERT INTO `destoon_setting` VALUES ('5', 'free_limit_2', '0');
INSERT INTO `destoon_setting` VALUES ('5', 'limit_2', '-1');
INSERT INTO `destoon_setting` VALUES ('5', 'free_limit_1', '-1');
INSERT INTO `destoon_setting` VALUES ('5', 'limit_1', '0');
INSERT INTO `destoon_setting` VALUES ('5', 'credit_refresh', '1');
INSERT INTO `destoon_setting` VALUES ('5', 'credit_color', '100');
INSERT INTO `destoon_setting` VALUES ('5', 'credit_elite', '100');
INSERT INTO `destoon_setting` VALUES ('5', 'credit_del', '5');
INSERT INTO `destoon_setting` VALUES ('5', 'credit_add', '2');
INSERT INTO `destoon_setting` VALUES ('5', 'fee_award', '0');
INSERT INTO `destoon_setting` VALUES ('5', 'fee_back', '0');
INSERT INTO `destoon_setting` VALUES ('5', 'fee_period', '0');
INSERT INTO `destoon_setting` VALUES ('5', 'fee_view', '0');
INSERT INTO `destoon_setting` VALUES ('5', 'fee_add', '0');
INSERT INTO `destoon_setting` VALUES ('5', 'fee_currency', 'money');
INSERT INTO `destoon_setting` VALUES ('5', 'fee_mode', '0');
INSERT INTO `destoon_setting` VALUES ('5', 'question_add', '2');
INSERT INTO `destoon_setting` VALUES ('5', 'captcha_add', '2');
INSERT INTO `destoon_setting` VALUES ('5', 'check_add', '2');
INSERT INTO `destoon_setting` VALUES ('5', 'question_inquiry', '2');
INSERT INTO `destoon_setting` VALUES ('5', 'captcha_inquiry', '2');
INSERT INTO `destoon_setting` VALUES ('5', 'group_elite', '6,7');
INSERT INTO `destoon_setting` VALUES ('5', 'group_compare', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('5', 'group_refresh', '3,5,6');
INSERT INTO `destoon_setting` VALUES ('5', 'group_color', '7');
INSERT INTO `destoon_setting` VALUES ('5', 'group_search', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('5', 'group_contact', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('5', 'group_index', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('5', 'group_list', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('5', 'group_show', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('5', 'seo_description_search', '');
INSERT INTO `destoon_setting` VALUES ('5', 'seo_keywords_search', '');
INSERT INTO `destoon_setting` VALUES ('5', 'seo_title_search', '');
INSERT INTO `destoon_setting` VALUES ('5', 'seo_description_show', '');
INSERT INTO `destoon_setting` VALUES ('5', 'seo_keywords_show', '');
INSERT INTO `destoon_setting` VALUES ('5', 'seo_description_list', '');
INSERT INTO `destoon_setting` VALUES ('5', 'seo_title_show', '{内容标题}{分隔符}{分类名称}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('5', 'seo_keywords_list', '');
INSERT INTO `destoon_setting` VALUES ('5', 'seo_title_list', '{分类SEO标题}{页码}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('5', 'seo_description_index', '');
INSERT INTO `destoon_setting` VALUES ('5', 'seo_keywords_index', '');
INSERT INTO `destoon_setting` VALUES ('5', 'php_item_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('5', 'seo_title_index', '{模块名称}{分隔符}{页码}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('5', 'htm_item_urlid', '1');
INSERT INTO `destoon_setting` VALUES ('5', 'htm_item_prefix', 'sell_info_');
INSERT INTO `destoon_setting` VALUES ('5', 'show_html', '0');
INSERT INTO `destoon_setting` VALUES ('5', 'php_list_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('5', 'htm_list_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('5', 'htm_list_prefix', 'sell_list_');
INSERT INTO `destoon_setting` VALUES ('5', 'list_html', '0');
INSERT INTO `destoon_setting` VALUES ('5', 'index_html', '0');
INSERT INTO `destoon_setting` VALUES ('5', 'page_comment', '0');
INSERT INTO `destoon_setting` VALUES ('5', 'hits', '1');
INSERT INTO `destoon_setting` VALUES ('5', 'max_width', '1000');
INSERT INTO `destoon_setting` VALUES ('5', 'pagesize', '20');
INSERT INTO `destoon_setting` VALUES ('5', 'page_ihits', '9');
INSERT INTO `destoon_setting` VALUES ('5', 'page_iedit', ' 10');
INSERT INTO `destoon_setting` VALUES ('5', 'page_inew', '10');
INSERT INTO `destoon_setting` VALUES ('5', 'page_irec', '12');
INSERT INTO `destoon_setting` VALUES ('5', 'page_subcat', '5');
INSERT INTO `destoon_setting` VALUES ('5', 'upload_thumb', '0');
INSERT INTO `destoon_setting` VALUES ('5', 'checkorder', '1');
INSERT INTO `destoon_setting` VALUES ('5', 'swfu', '2');
INSERT INTO `destoon_setting` VALUES ('5', 'level', '推荐信息');
INSERT INTO `destoon_setting` VALUES ('5', 'fulltext', '0');
INSERT INTO `destoon_setting` VALUES ('5', 'sphinx_port', '');
INSERT INTO `destoon_setting` VALUES ('5', 'sphinx_name', 'destoon,delta');
INSERT INTO `destoon_setting` VALUES ('5', 'sphinx_host', '');
INSERT INTO `destoon_setting` VALUES ('5', 'inquiry_ask', '我对贵公司的产品非常感兴趣，能否发一些详细资料给我参考？|请您发一份比较详细的产品规格说明，谢谢！|请问贵公司产品是否可以代理？代理条件是什么？|我公司有意购买此产品，可否提供此产品的报价单和最小起订量？');
INSERT INTO `destoon_setting` VALUES ('5', 'sphinx', '0');
INSERT INTO `destoon_setting` VALUES ('5', 'save_remotepic', '0');
INSERT INTO `destoon_setting` VALUES ('5', 'clear_link', '0');
INSERT INTO `destoon_setting` VALUES ('5', 'keylink', '0');
INSERT INTO `destoon_setting` VALUES ('5', 'split', '0');
INSERT INTO `destoon_setting` VALUES ('5', 'cat_property', '1');
INSERT INTO `destoon_setting` VALUES ('5', 'type', '供应|提供服务|供应二手|提供加工|提供合作|库存');
INSERT INTO `destoon_setting` VALUES ('5', 'inquiry_type', '单价|产品规格|型号|价格条款|原产地|能否提供样品|最小订货量|交货期|供货能力|销售条款及附加条件|包装方式|质量/安全认证 ');
INSERT INTO `destoon_setting` VALUES ('5', 'fields', 'itemid,title,thumb,linkurl,style,catid,areaid,introduce,addtime,edittime,username,company,groupid,vip,qq,wx,ali,skype,validated,price,unit,minamount,amount');
INSERT INTO `destoon_setting` VALUES ('5', 'editor', 'Simple');
INSERT INTO `destoon_setting` VALUES ('5', 'order', 'editdate desc,vip desc,edittime desc');
INSERT INTO `destoon_setting` VALUES ('5', 'introduce_length', '120');
INSERT INTO `destoon_setting` VALUES ('5', 'template_inquiry', '');
INSERT INTO `destoon_setting` VALUES ('5', 'thumb_height', '200');
INSERT INTO `destoon_setting` VALUES ('5', 'thumb_width', '200');
INSERT INTO `destoon_setting` VALUES ('5', 'template_compare', '');
INSERT INTO `destoon_setting` VALUES ('5', 'template_my', '');
INSERT INTO `destoon_setting` VALUES ('5', 'template_search', '');
INSERT INTO `destoon_setting` VALUES ('5', 'template_show', '');
INSERT INTO `destoon_setting` VALUES ('5', 'template_list', '');
INSERT INTO `destoon_setting` VALUES ('5', 'template_index', '');
INSERT INTO `destoon_setting` VALUES ('5', 'title_index', '{$seo_modulename}{$seo_delimiter}{$seo_page}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('5', 'title_list', '{$seo_cattitle}{$seo_page}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('5', 'title_show', '{$seo_showtitle}{$seo_delimiter}{$seo_catname}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('5', 'title_search', '');
INSERT INTO `destoon_setting` VALUES ('5', 'keywords_index', '');
INSERT INTO `destoon_setting` VALUES ('5', 'keywords_list', '');
INSERT INTO `destoon_setting` VALUES ('5', 'keywords_show', '');
INSERT INTO `destoon_setting` VALUES ('5', 'keywords_search', '');
INSERT INTO `destoon_setting` VALUES ('5', 'description_index', '');
INSERT INTO `destoon_setting` VALUES ('5', 'description_list', '');
INSERT INTO `destoon_setting` VALUES ('5', 'description_show', '');
INSERT INTO `destoon_setting` VALUES ('5', 'description_search', '');
INSERT INTO `destoon_setting` VALUES ('5', 'module', 'sell');
INSERT INTO `destoon_setting` VALUES ('5', 'mobile', 'http://demo.destoon.com/v7.0/mobile/sell/');
INSERT INTO `destoon_setting` VALUES ('6', 'free_limit_7', '-1');
INSERT INTO `destoon_setting` VALUES ('6', 'limit_7', '100');
INSERT INTO `destoon_setting` VALUES ('6', 'free_limit_6', '0');
INSERT INTO `destoon_setting` VALUES ('6', 'limit_6', '30');
INSERT INTO `destoon_setting` VALUES ('6', 'free_limit_5', '0');
INSERT INTO `destoon_setting` VALUES ('6', 'limit_5', '3');
INSERT INTO `destoon_setting` VALUES ('6', 'free_limit_4', '0');
INSERT INTO `destoon_setting` VALUES ('6', 'limit_4', '-1');
INSERT INTO `destoon_setting` VALUES ('6', 'free_limit_3', '0');
INSERT INTO `destoon_setting` VALUES ('6', 'limit_3', '-1');
INSERT INTO `destoon_setting` VALUES ('6', 'free_limit_2', '0');
INSERT INTO `destoon_setting` VALUES ('6', 'limit_2', '-1');
INSERT INTO `destoon_setting` VALUES ('6', 'free_limit_1', '-1');
INSERT INTO `destoon_setting` VALUES ('6', 'limit_1', '0');
INSERT INTO `destoon_setting` VALUES ('6', 'credit_refresh', '1');
INSERT INTO `destoon_setting` VALUES ('6', 'credit_color', '100');
INSERT INTO `destoon_setting` VALUES ('6', 'credit_del', '5');
INSERT INTO `destoon_setting` VALUES ('6', 'credit_add', '2');
INSERT INTO `destoon_setting` VALUES ('6', 'fee_award', '0');
INSERT INTO `destoon_setting` VALUES ('6', 'fee_back', '0');
INSERT INTO `destoon_setting` VALUES ('6', 'fee_period', '0');
INSERT INTO `destoon_setting` VALUES ('6', 'fee_view', '0');
INSERT INTO `destoon_setting` VALUES ('6', 'fee_add', '0');
INSERT INTO `destoon_setting` VALUES ('6', 'fee_currency', 'money');
INSERT INTO `destoon_setting` VALUES ('6', 'fee_mode', '1');
INSERT INTO `destoon_setting` VALUES ('6', 'question_add', '2');
INSERT INTO `destoon_setting` VALUES ('6', 'captcha_add', '2');
INSERT INTO `destoon_setting` VALUES ('6', 'check_add', '2');
INSERT INTO `destoon_setting` VALUES ('6', 'question_price', '2');
INSERT INTO `destoon_setting` VALUES ('6', 'captcha_price', '2');
INSERT INTO `destoon_setting` VALUES ('6', 'group_refresh', '7');
INSERT INTO `destoon_setting` VALUES ('6', 'group_color', '7');
INSERT INTO `destoon_setting` VALUES ('6', 'group_search', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('6', 'group_contact', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('6', 'group_show', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('6', 'group_list', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('6', 'group_index', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('6', 'seo_description_search', '');
INSERT INTO `destoon_setting` VALUES ('6', 'seo_keywords_search', '');
INSERT INTO `destoon_setting` VALUES ('6', 'seo_title_search', '');
INSERT INTO `destoon_setting` VALUES ('6', 'seo_keywords_show', '');
INSERT INTO `destoon_setting` VALUES ('6', 'seo_description_show', '');
INSERT INTO `destoon_setting` VALUES ('6', 'seo_title_show', '{内容标题}{分隔符}{分类名称}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('6', 'seo_description_list', '');
INSERT INTO `destoon_setting` VALUES ('6', 'seo_keywords_list', '');
INSERT INTO `destoon_setting` VALUES ('6', 'seo_title_list', '{分类SEO标题}{页码}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('6', 'seo_description_index', '');
INSERT INTO `destoon_setting` VALUES ('6', 'seo_title_index', '{模块名称}{分隔符}{页码}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('6', 'seo_keywords_index', '');
INSERT INTO `destoon_setting` VALUES ('6', 'php_item_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('6', 'htm_item_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('6', 'htm_item_prefix', 'buy_info_');
INSERT INTO `destoon_setting` VALUES ('6', 'show_html', '0');
INSERT INTO `destoon_setting` VALUES ('6', 'php_list_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('6', 'htm_list_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('6', 'htm_list_prefix', 'buy_list_');
INSERT INTO `destoon_setting` VALUES ('6', 'list_html', '0');
INSERT INTO `destoon_setting` VALUES ('6', 'index_html', '0');
INSERT INTO `destoon_setting` VALUES ('6', 'page_comment', '0');
INSERT INTO `destoon_setting` VALUES ('6', 'hits', '1');
INSERT INTO `destoon_setting` VALUES ('6', 'max_width', '1000');
INSERT INTO `destoon_setting` VALUES ('6', 'pagesize', '20');
INSERT INTO `destoon_setting` VALUES ('6', 'page_ihits', '9');
INSERT INTO `destoon_setting` VALUES ('6', 'page_iedit', '10');
INSERT INTO `destoon_setting` VALUES ('6', 'page_inew', '10');
INSERT INTO `destoon_setting` VALUES ('6', 'page_irec', '12');
INSERT INTO `destoon_setting` VALUES ('6', 'page_subcat', '6');
INSERT INTO `destoon_setting` VALUES ('6', 'level', '推荐信息');
INSERT INTO `destoon_setting` VALUES ('6', 'fulltext', '0');
INSERT INTO `destoon_setting` VALUES ('6', 'split', '0');
INSERT INTO `destoon_setting` VALUES ('6', 'keylink', '0');
INSERT INTO `destoon_setting` VALUES ('6', 'clear_link', '0');
INSERT INTO `destoon_setting` VALUES ('6', 'type', '求购|紧急求购|求购二手|寻求加工|寻求合作|招标');
INSERT INTO `destoon_setting` VALUES ('6', 'price_ask', '请您发一份比较详细的产品规格说明，谢谢！|请问您对此产品是长期有需求吗？|请问您对此产品有多大的需求量？');
INSERT INTO `destoon_setting` VALUES ('6', 'cat_property', '0');
INSERT INTO `destoon_setting` VALUES ('6', 'save_remotepic', '0');
INSERT INTO `destoon_setting` VALUES ('6', 'order', 'editdate desc,vip desc,edittime desc');
INSERT INTO `destoon_setting` VALUES ('6', 'fields', 'itemid,title,thumb,linkurl,style,catid,areaid,introduce,addtime,edittime,username,company,groupid,vip,qq,wx,ali,skype,validated,price,hits');
INSERT INTO `destoon_setting` VALUES ('6', 'introduce_length', '120');
INSERT INTO `destoon_setting` VALUES ('6', 'editor', 'Destoon');
INSERT INTO `destoon_setting` VALUES ('6', 'thumb_height', '200');
INSERT INTO `destoon_setting` VALUES ('6', 'thumb_width', '200');
INSERT INTO `destoon_setting` VALUES ('6', 'template_price', '');
INSERT INTO `destoon_setting` VALUES ('6', 'template_my', '');
INSERT INTO `destoon_setting` VALUES ('6', 'template_search', '');
INSERT INTO `destoon_setting` VALUES ('6', 'template_show', '');
INSERT INTO `destoon_setting` VALUES ('6', 'template_list', '');
INSERT INTO `destoon_setting` VALUES ('6', 'template_index', '');
INSERT INTO `destoon_setting` VALUES ('6', 'title_index', '{$seo_modulename}{$seo_delimiter}{$seo_page}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('6', 'title_list', '{$seo_cattitle}{$seo_page}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('6', 'title_show', '{$seo_showtitle}{$seo_delimiter}{$seo_catname}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('6', 'title_search', '');
INSERT INTO `destoon_setting` VALUES ('6', 'keywords_index', '');
INSERT INTO `destoon_setting` VALUES ('6', 'keywords_list', '');
INSERT INTO `destoon_setting` VALUES ('6', 'keywords_show', '');
INSERT INTO `destoon_setting` VALUES ('6', 'keywords_search', '');
INSERT INTO `destoon_setting` VALUES ('6', 'description_index', '');
INSERT INTO `destoon_setting` VALUES ('6', 'description_list', '');
INSERT INTO `destoon_setting` VALUES ('6', 'description_show', '');
INSERT INTO `destoon_setting` VALUES ('6', 'description_search', '');
INSERT INTO `destoon_setting` VALUES ('6', 'module', 'buy');
INSERT INTO `destoon_setting` VALUES ('6', 'mobile', 'http://demo.destoon.com/v7.0/mobile/buy/');
INSERT INTO `destoon_setting` VALUES ('7', 'free_limit_5', '0');
INSERT INTO `destoon_setting` VALUES ('7', 'limit_6', '30');
INSERT INTO `destoon_setting` VALUES ('7', 'limit_5', '3');
INSERT INTO `destoon_setting` VALUES ('7', 'free_limit_4', '0');
INSERT INTO `destoon_setting` VALUES ('7', 'limit_4', '-1');
INSERT INTO `destoon_setting` VALUES ('7', 'free_limit_3', '0');
INSERT INTO `destoon_setting` VALUES ('7', 'limit_3', '-1');
INSERT INTO `destoon_setting` VALUES ('7', 'free_limit_2', '0');
INSERT INTO `destoon_setting` VALUES ('7', 'limit_2', '-1');
INSERT INTO `destoon_setting` VALUES ('7', 'free_limit_1', '-1');
INSERT INTO `destoon_setting` VALUES ('7', 'limit_1', '0');
INSERT INTO `destoon_setting` VALUES ('7', 'credit_color', '100');
INSERT INTO `destoon_setting` VALUES ('7', 'credit_del', '5');
INSERT INTO `destoon_setting` VALUES ('7', 'free_limit_7', '-1');
INSERT INTO `destoon_setting` VALUES ('7', 'credit_add', '2');
INSERT INTO `destoon_setting` VALUES ('7', 'limit_7', '100');
INSERT INTO `destoon_setting` VALUES ('7', 'free_limit_6', '0');
INSERT INTO `destoon_setting` VALUES ('7', 'pre_view', '200');
INSERT INTO `destoon_setting` VALUES ('7', 'fee_award', '0');
INSERT INTO `destoon_setting` VALUES ('7', 'fee_back', '0');
INSERT INTO `destoon_setting` VALUES ('7', 'fee_period', '0');
INSERT INTO `destoon_setting` VALUES ('7', 'fee_view', '0');
INSERT INTO `destoon_setting` VALUES ('7', 'fee_add', '0');
INSERT INTO `destoon_setting` VALUES ('7', 'fee_currency', 'money');
INSERT INTO `destoon_setting` VALUES ('7', 'fee_mode', '1');
INSERT INTO `destoon_setting` VALUES ('7', 'question_add', '2');
INSERT INTO `destoon_setting` VALUES ('7', 'captcha_add', '2');
INSERT INTO `destoon_setting` VALUES ('7', 'check_add', '2');
INSERT INTO `destoon_setting` VALUES ('7', 'group_add_price', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('7', 'group_show_price', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('7', 'group_color', '7');
INSERT INTO `destoon_setting` VALUES ('7', 'group_search', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('7', 'group_show', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('7', 'group_list', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('7', 'seo_description_search', '');
INSERT INTO `destoon_setting` VALUES ('7', 'group_index', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('7', 'seo_keywords_search', '');
INSERT INTO `destoon_setting` VALUES ('7', 'seo_title_search', '');
INSERT INTO `destoon_setting` VALUES ('7', 'seo_keywords_show', '');
INSERT INTO `destoon_setting` VALUES ('7', 'seo_description_show', '');
INSERT INTO `destoon_setting` VALUES ('7', 'seo_title_show', '{内容标题}{分隔符}{分类名称}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('7', 'seo_description_list', '');
INSERT INTO `destoon_setting` VALUES ('7', 'seo_keywords_list', '');
INSERT INTO `destoon_setting` VALUES ('7', 'seo_title_list', '{分类SEO标题}{页码}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('7', 'seo_description_index', '');
INSERT INTO `destoon_setting` VALUES ('7', 'seo_keywords_index', '');
INSERT INTO `destoon_setting` VALUES ('7', 'seo_title_index', '{模块名称}{分隔符}{页码}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('7', 'php_item_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('7', 'htm_item_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('7', 'htm_item_prefix', '');
INSERT INTO `destoon_setting` VALUES ('7', 'htm_list_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('7', 'show_html', '0');
INSERT INTO `destoon_setting` VALUES ('7', 'php_list_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('7', 'htm_list_prefix', '');
INSERT INTO `destoon_setting` VALUES ('7', 'list_html', '0');
INSERT INTO `destoon_setting` VALUES ('7', 'index_html', '0');
INSERT INTO `destoon_setting` VALUES ('7', 'page_comment', '0');
INSERT INTO `destoon_setting` VALUES ('7', 'hits', '1');
INSERT INTO `destoon_setting` VALUES ('7', 'max_width', '800');
INSERT INTO `destoon_setting` VALUES ('7', 'page_child', '5');
INSERT INTO `destoon_setting` VALUES ('7', 'page_icat', '5');
INSERT INTO `destoon_setting` VALUES ('7', 'pagesize', '20');
INSERT INTO `destoon_setting` VALUES ('7', 'level', '推荐行情|暂未指定|推荐图文|头条相关|头条推荐');
INSERT INTO `destoon_setting` VALUES ('7', 'fulltext', '0');
INSERT INTO `destoon_setting` VALUES ('7', 'split', '0');
INSERT INTO `destoon_setting` VALUES ('7', 'keylink', '1');
INSERT INTO `destoon_setting` VALUES ('7', 'clear_link', '0');
INSERT INTO `destoon_setting` VALUES ('7', 'cat_property', '0');
INSERT INTO `destoon_setting` VALUES ('7', 'save_remotepic', '0');
INSERT INTO `destoon_setting` VALUES ('7', 'fields', 'itemid,title,thumb,linkurl,style,catid,introduce,hits,addtime,edittime,username');
INSERT INTO `destoon_setting` VALUES ('7', 'order', 'addtime desc');
INSERT INTO `destoon_setting` VALUES ('7', 'introduce_length', '120');
INSERT INTO `destoon_setting` VALUES ('7', 'editor', 'Destoon');
INSERT INTO `destoon_setting` VALUES ('7', 'thumb_height', '180');
INSERT INTO `destoon_setting` VALUES ('7', 'thumb_width', '240');
INSERT INTO `destoon_setting` VALUES ('7', 'template_price', '');
INSERT INTO `destoon_setting` VALUES ('7', 'template_product', '');
INSERT INTO `destoon_setting` VALUES ('7', 'template_my', '');
INSERT INTO `destoon_setting` VALUES ('7', 'template_search', '');
INSERT INTO `destoon_setting` VALUES ('7', 'template_show', '');
INSERT INTO `destoon_setting` VALUES ('7', 'template_list', '');
INSERT INTO `destoon_setting` VALUES ('7', 'template_index', '');
INSERT INTO `destoon_setting` VALUES ('7', 'title_index', '{$seo_modulename}{$seo_delimiter}{$seo_page}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('7', 'title_list', '{$seo_cattitle}{$seo_page}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('7', 'title_show', '{$seo_showtitle}{$seo_delimiter}{$seo_catname}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('7', 'title_search', '');
INSERT INTO `destoon_setting` VALUES ('7', 'keywords_index', '');
INSERT INTO `destoon_setting` VALUES ('7', 'keywords_list', '');
INSERT INTO `destoon_setting` VALUES ('7', 'keywords_show', '');
INSERT INTO `destoon_setting` VALUES ('7', 'keywords_search', '');
INSERT INTO `destoon_setting` VALUES ('7', 'description_index', '');
INSERT INTO `destoon_setting` VALUES ('7', 'description_list', '');
INSERT INTO `destoon_setting` VALUES ('7', 'description_show', '');
INSERT INTO `destoon_setting` VALUES ('7', 'description_search', '');
INSERT INTO `destoon_setting` VALUES ('7', 'module', 'quote');
INSERT INTO `destoon_setting` VALUES ('7', 'mobile', 'http://demo.destoon.com/v7.0/mobile/quote/');
INSERT INTO `destoon_setting` VALUES ('8', 'free_limit_5', '0');
INSERT INTO `destoon_setting` VALUES ('8', 'limit_6', '30');
INSERT INTO `destoon_setting` VALUES ('8', 'free_limit_7', '-1');
INSERT INTO `destoon_setting` VALUES ('8', 'limit_5', '3');
INSERT INTO `destoon_setting` VALUES ('8', 'free_limit_4', '0');
INSERT INTO `destoon_setting` VALUES ('8', 'limit_7', '100');
INSERT INTO `destoon_setting` VALUES ('8', 'limit_4', '-1');
INSERT INTO `destoon_setting` VALUES ('8', 'limit_3', '-1');
INSERT INTO `destoon_setting` VALUES ('8', 'free_limit_3', '0');
INSERT INTO `destoon_setting` VALUES ('8', 'free_limit_2', '0');
INSERT INTO `destoon_setting` VALUES ('8', 'limit_2', '-1');
INSERT INTO `destoon_setting` VALUES ('8', 'free_limit_6', '0');
INSERT INTO `destoon_setting` VALUES ('8', 'free_limit_1', '-1');
INSERT INTO `destoon_setting` VALUES ('8', 'limit_1', '0');
INSERT INTO `destoon_setting` VALUES ('8', 'credit_color', '100');
INSERT INTO `destoon_setting` VALUES ('8', 'credit_del', '5');
INSERT INTO `destoon_setting` VALUES ('8', 'credit_add', '2');
INSERT INTO `destoon_setting` VALUES ('8', 'pre_view', '200');
INSERT INTO `destoon_setting` VALUES ('8', 'fee_award', '100');
INSERT INTO `destoon_setting` VALUES ('8', 'fee_back', '0');
INSERT INTO `destoon_setting` VALUES ('8', 'fee_period', '0');
INSERT INTO `destoon_setting` VALUES ('8', 'fee_view', '0');
INSERT INTO `destoon_setting` VALUES ('8', 'fee_add', '0');
INSERT INTO `destoon_setting` VALUES ('8', 'fee_currency', 'money');
INSERT INTO `destoon_setting` VALUES ('8', 'fee_mode', '1');
INSERT INTO `destoon_setting` VALUES ('8', 'question_add', '2');
INSERT INTO `destoon_setting` VALUES ('8', 'captcha_add', '2');
INSERT INTO `destoon_setting` VALUES ('8', 'check_add', '2');
INSERT INTO `destoon_setting` VALUES ('8', 'captcha_sign', '2');
INSERT INTO `destoon_setting` VALUES ('8', 'group_color', '7');
INSERT INTO `destoon_setting` VALUES ('8', 'group_search', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('8', 'group_contact', '5,6,7');
INSERT INTO `destoon_setting` VALUES ('8', 'group_show', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('8', 'group_list', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('8', 'group_index', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('8', 'seo_description_search', '');
INSERT INTO `destoon_setting` VALUES ('8', 'seo_keywords_search', '');
INSERT INTO `destoon_setting` VALUES ('8', 'seo_title_search', '');
INSERT INTO `destoon_setting` VALUES ('8', 'seo_description_list', '');
INSERT INTO `destoon_setting` VALUES ('8', 'seo_title_show', '{内容标题}{分隔符}{分类名称}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('8', 'seo_keywords_show', '');
INSERT INTO `destoon_setting` VALUES ('8', 'seo_description_show', '');
INSERT INTO `destoon_setting` VALUES ('8', 'seo_title_list', '{分类SEO标题}{页码}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('8', 'seo_keywords_list', '');
INSERT INTO `destoon_setting` VALUES ('8', 'seo_description_index', '');
INSERT INTO `destoon_setting` VALUES ('8', 'seo_title_index', '{模块名称}{分隔符}{页码}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('8', 'seo_keywords_index', '');
INSERT INTO `destoon_setting` VALUES ('8', 'php_item_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('8', 'htm_item_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('8', 'htm_item_prefix', '');
INSERT INTO `destoon_setting` VALUES ('8', 'show_html', '0');
INSERT INTO `destoon_setting` VALUES ('8', 'php_list_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('8', 'htm_list_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('8', 'htm_list_prefix', '');
INSERT INTO `destoon_setting` VALUES ('8', 'list_html', '0');
INSERT INTO `destoon_setting` VALUES ('8', 'index_html', '0');
INSERT INTO `destoon_setting` VALUES ('8', 'page_comment', '0');
INSERT INTO `destoon_setting` VALUES ('8', 'hits', '1');
INSERT INTO `destoon_setting` VALUES ('8', 'max_width', '800');
INSERT INTO `destoon_setting` VALUES ('8', 'pagesize', '10');
INSERT INTO `destoon_setting` VALUES ('8', 'cat_hall_num', '2');
INSERT INTO `destoon_setting` VALUES ('8', 'cat_hall', '0');
INSERT INTO `destoon_setting` VALUES ('8', 'cat_service_num', '8');
INSERT INTO `destoon_setting` VALUES ('8', 'cat_service', '0');
INSERT INTO `destoon_setting` VALUES ('8', 'cat_news_num', '10');
INSERT INTO `destoon_setting` VALUES ('8', 'cat_news', '0');
INSERT INTO `destoon_setting` VALUES ('8', 'news_id', '21');
INSERT INTO `destoon_setting` VALUES ('8', 'page_islide', '3');
INSERT INTO `destoon_setting` VALUES ('8', 'page_icat', '10');
INSERT INTO `destoon_setting` VALUES ('8', 'level', '推荐展会|展会幻灯');
INSERT INTO `destoon_setting` VALUES ('8', 'fulltext', '0');
INSERT INTO `destoon_setting` VALUES ('8', 'split', '0');
INSERT INTO `destoon_setting` VALUES ('8', 'keylink', '1');
INSERT INTO `destoon_setting` VALUES ('8', 'clear_link', '0');
INSERT INTO `destoon_setting` VALUES ('8', 'save_remotepic', '0');
INSERT INTO `destoon_setting` VALUES ('8', 'cat_property', '0');
INSERT INTO `destoon_setting` VALUES ('8', 'fields', 'itemid,title,thumb,linkurl,style,catid,addtime,edittime,username,fromtime,totime,city,address,sponsor');
INSERT INTO `destoon_setting` VALUES ('8', 'order', 'addtime desc');
INSERT INTO `destoon_setting` VALUES ('8', 'editor', 'Destoon');
INSERT INTO `destoon_setting` VALUES ('8', 'introduce_length', '0');
INSERT INTO `destoon_setting` VALUES ('8', 'thumb_height', '180');
INSERT INTO `destoon_setting` VALUES ('8', 'thumb_width', '240');
INSERT INTO `destoon_setting` VALUES ('8', 'template_sign', '');
INSERT INTO `destoon_setting` VALUES ('8', 'template_my', '');
INSERT INTO `destoon_setting` VALUES ('8', 'template_search', '');
INSERT INTO `destoon_setting` VALUES ('8', 'template_show', '');
INSERT INTO `destoon_setting` VALUES ('8', 'template_list', '');
INSERT INTO `destoon_setting` VALUES ('8', 'template_index', '');
INSERT INTO `destoon_setting` VALUES ('8', 'title_index', '{$seo_modulename}{$seo_delimiter}{$seo_page}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('8', 'title_list', '{$seo_cattitle}{$seo_page}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('8', 'title_show', '{$seo_showtitle}{$seo_delimiter}{$seo_catname}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('8', 'title_search', '');
INSERT INTO `destoon_setting` VALUES ('8', 'keywords_index', '');
INSERT INTO `destoon_setting` VALUES ('8', 'keywords_list', '');
INSERT INTO `destoon_setting` VALUES ('8', 'keywords_show', '');
INSERT INTO `destoon_setting` VALUES ('8', 'keywords_search', '');
INSERT INTO `destoon_setting` VALUES ('8', 'description_index', '');
INSERT INTO `destoon_setting` VALUES ('8', 'description_list', '');
INSERT INTO `destoon_setting` VALUES ('8', 'description_show', '');
INSERT INTO `destoon_setting` VALUES ('8', 'description_search', '');
INSERT INTO `destoon_setting` VALUES ('8', 'module', 'exhibit');
INSERT INTO `destoon_setting` VALUES ('8', 'mobile', 'http://demo.destoon.com/v7.0/mobile/exhibit/');
INSERT INTO `destoon_setting` VALUES ('9', 'resume_free_limit_7', '0');
INSERT INTO `destoon_setting` VALUES ('9', 'resume_limit_7', '-1');
INSERT INTO `destoon_setting` VALUES ('9', 'free_limit_7', '-1');
INSERT INTO `destoon_setting` VALUES ('9', 'limit_7', '100');
INSERT INTO `destoon_setting` VALUES ('9', 'resume_free_limit_6', '0');
INSERT INTO `destoon_setting` VALUES ('9', 'resume_limit_6', '-1');
INSERT INTO `destoon_setting` VALUES ('9', 'resume_free_limit_5', '0');
INSERT INTO `destoon_setting` VALUES ('9', 'free_limit_6', '0');
INSERT INTO `destoon_setting` VALUES ('9', 'limit_6', '30');
INSERT INTO `destoon_setting` VALUES ('9', 'resume_limit_5', '2');
INSERT INTO `destoon_setting` VALUES ('9', 'free_limit_5', '0');
INSERT INTO `destoon_setting` VALUES ('9', 'limit_5', '3');
INSERT INTO `destoon_setting` VALUES ('9', 'resume_free_limit_4', '0');
INSERT INTO `destoon_setting` VALUES ('9', 'limit_4', '-1');
INSERT INTO `destoon_setting` VALUES ('9', 'free_limit_4', '0');
INSERT INTO `destoon_setting` VALUES ('9', 'resume_limit_4', '-1');
INSERT INTO `destoon_setting` VALUES ('9', 'resume_free_limit_3', '0');
INSERT INTO `destoon_setting` VALUES ('9', 'resume_limit_3', '-1');
INSERT INTO `destoon_setting` VALUES ('9', 'free_limit_3', '0');
INSERT INTO `destoon_setting` VALUES ('9', 'limit_3', '-1');
INSERT INTO `destoon_setting` VALUES ('9', 'resume_free_limit_2', '0');
INSERT INTO `destoon_setting` VALUES ('9', 'resume_limit_2', '-1');
INSERT INTO `destoon_setting` VALUES ('9', 'free_limit_2', '0');
INSERT INTO `destoon_setting` VALUES ('9', 'limit_2', '-1');
INSERT INTO `destoon_setting` VALUES ('9', 'resume_free_limit_1', '-1');
INSERT INTO `destoon_setting` VALUES ('9', 'resume_limit_1', '0');
INSERT INTO `destoon_setting` VALUES ('9', 'free_limit_1', '-1');
INSERT INTO `destoon_setting` VALUES ('9', 'limit_1', '0');
INSERT INTO `destoon_setting` VALUES ('9', 'credit_del_resume', '5');
INSERT INTO `destoon_setting` VALUES ('9', 'credit_add_resume', '2');
INSERT INTO `destoon_setting` VALUES ('9', 'credit_refresh', '1');
INSERT INTO `destoon_setting` VALUES ('9', 'credit_color', '100');
INSERT INTO `destoon_setting` VALUES ('9', 'credit_del', '5');
INSERT INTO `destoon_setting` VALUES ('9', 'credit_add', '2');
INSERT INTO `destoon_setting` VALUES ('9', 'question_add_resume', '2');
INSERT INTO `destoon_setting` VALUES ('9', 'captcha_add_resume', '2');
INSERT INTO `destoon_setting` VALUES ('9', 'check_add_resume', '2');
INSERT INTO `destoon_setting` VALUES ('9', 'group_apply', '5');
INSERT INTO `destoon_setting` VALUES ('9', 'fee_award', '0');
INSERT INTO `destoon_setting` VALUES ('9', 'group_list', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('9', 'group_show', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('9', 'group_contact', '5,6,7');
INSERT INTO `destoon_setting` VALUES ('9', 'group_search', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('9', 'fee_back', '0');
INSERT INTO `destoon_setting` VALUES ('9', 'fee_period', '0');
INSERT INTO `destoon_setting` VALUES ('9', 'fee_view', '0');
INSERT INTO `destoon_setting` VALUES ('9', 'fee_add_resume', '0');
INSERT INTO `destoon_setting` VALUES ('9', 'fee_add', '0');
INSERT INTO `destoon_setting` VALUES ('9', 'fee_mode', '0');
INSERT INTO `destoon_setting` VALUES ('9', 'fee_currency', 'money');
INSERT INTO `destoon_setting` VALUES ('9', 'question_add', '2');
INSERT INTO `destoon_setting` VALUES ('9', 'captcha_add', '2');
INSERT INTO `destoon_setting` VALUES ('9', 'check_add', '2');
INSERT INTO `destoon_setting` VALUES ('9', 'group_talent', '7');
INSERT INTO `destoon_setting` VALUES ('9', 'group_search_resume', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('9', 'group_contact_resume', '7');
INSERT INTO `destoon_setting` VALUES ('9', 'group_show_resume', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('9', 'group_refresh', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('9', 'group_color', '7');
INSERT INTO `destoon_setting` VALUES ('9', 'group_index', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('9', 'seo_description_search', '');
INSERT INTO `destoon_setting` VALUES ('9', 'seo_keywords_search', '');
INSERT INTO `destoon_setting` VALUES ('9', 'seo_title_search', '');
INSERT INTO `destoon_setting` VALUES ('9', 'seo_description_show', '');
INSERT INTO `destoon_setting` VALUES ('9', 'seo_title_show', '{内容标题}{分隔符}{分类名称}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('9', 'seo_keywords_show', '');
INSERT INTO `destoon_setting` VALUES ('9', 'seo_description_list', '');
INSERT INTO `destoon_setting` VALUES ('9', 'seo_keywords_index', '');
INSERT INTO `destoon_setting` VALUES ('9', 'seo_description_index', '');
INSERT INTO `destoon_setting` VALUES ('9', 'seo_title_list', '{分类SEO标题}{页码}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('9', 'seo_keywords_list', '');
INSERT INTO `destoon_setting` VALUES ('9', 'php_item_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('9', 'seo_title_index', '{模块名称}{分隔符}{页码}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('9', 'htm_item_urlid', '1');
INSERT INTO `destoon_setting` VALUES ('9', 'htm_item_prefix', '');
INSERT INTO `destoon_setting` VALUES ('9', 'show_html', '0');
INSERT INTO `destoon_setting` VALUES ('9', 'php_list_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('9', 'htm_list_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('9', 'htm_list_prefix', '');
INSERT INTO `destoon_setting` VALUES ('9', 'list_html', '0');
INSERT INTO `destoon_setting` VALUES ('9', 'index_html', '0');
INSERT INTO `destoon_setting` VALUES ('9', 'page_comment', '0');
INSERT INTO `destoon_setting` VALUES ('9', 'hits', '1');
INSERT INTO `destoon_setting` VALUES ('9', 'max_width', '1000');
INSERT INTO `destoon_setting` VALUES ('9', 'pagesize', '20');
INSERT INTO `destoon_setting` VALUES ('9', 'page_iresume', '10');
INSERT INTO `destoon_setting` VALUES ('9', 'page_ijob', '10');
INSERT INTO `destoon_setting` VALUES ('9', 'level', '推荐');
INSERT INTO `destoon_setting` VALUES ('9', 'split', '0');
INSERT INTO `destoon_setting` VALUES ('9', 'clear_link', '0');
INSERT INTO `destoon_setting` VALUES ('9', 'save_remotepic', '0');
INSERT INTO `destoon_setting` VALUES ('9', 'cat_property', '0');
INSERT INTO `destoon_setting` VALUES ('9', 'situation', '目前正在找工作|观望有好机会再考虑|半年内无换工作计划');
INSERT INTO `destoon_setting` VALUES ('9', 'education', '学历|初中|高中|大专|本科|硕士|博士');
INSERT INTO `destoon_setting` VALUES ('9', 'marriage', '婚姻|未婚|已婚');
INSERT INTO `destoon_setting` VALUES ('9', 'gender', '性别|男士|女士');
INSERT INTO `destoon_setting` VALUES ('9', 'type', '类型|全职|兼职|实习');
INSERT INTO `destoon_setting` VALUES ('9', 'editor', 'Destoon');
INSERT INTO `destoon_setting` VALUES ('9', 'order', 'editdate desc,vip desc,edittime desc');
INSERT INTO `destoon_setting` VALUES ('9', 'fields', 'itemid,title,linkurl,style,catid,areaid,introduce,addtime,edittime,username,company,groupid,vip,qq,wx,ali,skype,validated,minsalary,maxsalary,minage,maxage,total');
INSERT INTO `destoon_setting` VALUES ('9', 'introduce_length', '120');
INSERT INTO `destoon_setting` VALUES ('9', 'thumb_height', '140');
INSERT INTO `destoon_setting` VALUES ('9', 'thumb_width', '100');
INSERT INTO `destoon_setting` VALUES ('9', 'template_my_resume', '');
INSERT INTO `destoon_setting` VALUES ('9', 'template_my', '');
INSERT INTO `destoon_setting` VALUES ('9', 'template_apply', '');
INSERT INTO `destoon_setting` VALUES ('9', 'template_resume', '');
INSERT INTO `destoon_setting` VALUES ('9', 'template_search', '');
INSERT INTO `destoon_setting` VALUES ('9', 'template_show', '');
INSERT INTO `destoon_setting` VALUES ('9', 'template_list', '');
INSERT INTO `destoon_setting` VALUES ('9', 'template_index', '');
INSERT INTO `destoon_setting` VALUES ('9', 'title_index', '{$seo_modulename}{$seo_delimiter}{$seo_page}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('9', 'title_list', '{$seo_cattitle}{$seo_page}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('9', 'title_show', '{$seo_showtitle}{$seo_delimiter}{$seo_catname}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('9', 'title_search', '');
INSERT INTO `destoon_setting` VALUES ('9', 'keywords_index', '');
INSERT INTO `destoon_setting` VALUES ('9', 'keywords_list', '');
INSERT INTO `destoon_setting` VALUES ('9', 'keywords_show', '');
INSERT INTO `destoon_setting` VALUES ('9', 'keywords_search', '');
INSERT INTO `destoon_setting` VALUES ('9', 'description_index', '');
INSERT INTO `destoon_setting` VALUES ('9', 'description_list', '');
INSERT INTO `destoon_setting` VALUES ('9', 'description_show', '');
INSERT INTO `destoon_setting` VALUES ('9', 'description_search', '');
INSERT INTO `destoon_setting` VALUES ('9', 'module', 'job');
INSERT INTO `destoon_setting` VALUES ('9', 'mobile', 'http://demo.destoon.com/v7.0/mobile/job/');
INSERT INTO `destoon_setting` VALUES ('10', 'limit_6', '30');
INSERT INTO `destoon_setting` VALUES ('10', 'answer_limit_6', '30');
INSERT INTO `destoon_setting` VALUES ('10', 'answer_limit_7', '100');
INSERT INTO `destoon_setting` VALUES ('10', 'free_limit_7', '-1');
INSERT INTO `destoon_setting` VALUES ('10', 'limit_7', '100');
INSERT INTO `destoon_setting` VALUES ('10', 'free_limit_6', '0');
INSERT INTO `destoon_setting` VALUES ('10', 'answer_limit_5', '-1');
INSERT INTO `destoon_setting` VALUES ('10', 'free_limit_5', '0');
INSERT INTO `destoon_setting` VALUES ('10', 'limit_5', '3');
INSERT INTO `destoon_setting` VALUES ('10', 'answer_limit_4', '-1');
INSERT INTO `destoon_setting` VALUES ('10', 'free_limit_4', '0');
INSERT INTO `destoon_setting` VALUES ('10', 'limit_4', '-1');
INSERT INTO `destoon_setting` VALUES ('10', 'answer_limit_3', '-1');
INSERT INTO `destoon_setting` VALUES ('10', 'free_limit_3', '0');
INSERT INTO `destoon_setting` VALUES ('10', 'limit_3', '-1');
INSERT INTO `destoon_setting` VALUES ('10', 'answer_limit_2', '-1');
INSERT INTO `destoon_setting` VALUES ('10', 'free_limit_2', '0');
INSERT INTO `destoon_setting` VALUES ('10', 'limit_2', '-1');
INSERT INTO `destoon_setting` VALUES ('10', 'answer_limit_1', '0');
INSERT INTO `destoon_setting` VALUES ('10', 'free_limit_1', '-1');
INSERT INTO `destoon_setting` VALUES ('10', 'limit_1', '0');
INSERT INTO `destoon_setting` VALUES ('10', 'credit_deal', '20');
INSERT INTO `destoon_setting` VALUES ('10', 'credit_maxvote', '30');
INSERT INTO `destoon_setting` VALUES ('10', 'credit_del_answer', '5');
INSERT INTO `destoon_setting` VALUES ('10', 'credit_maxanswer', '50');
INSERT INTO `destoon_setting` VALUES ('10', 'credit_vote', '1');
INSERT INTO `destoon_setting` VALUES ('10', 'credit_answer', '2');
INSERT INTO `destoon_setting` VALUES ('10', 'credit_best', '20');
INSERT INTO `destoon_setting` VALUES ('10', 'credit_hidden', '10');
INSERT INTO `destoon_setting` VALUES ('10', 'credit_color', '100');
INSERT INTO `destoon_setting` VALUES ('10', 'credit_del', '20');
INSERT INTO `destoon_setting` VALUES ('10', 'credit_add', '0');
INSERT INTO `destoon_setting` VALUES ('10', 'pre_view', '200');
INSERT INTO `destoon_setting` VALUES ('10', 'fee_award', '0');
INSERT INTO `destoon_setting` VALUES ('10', 'fee_back', '0');
INSERT INTO `destoon_setting` VALUES ('10', 'fee_period', '0');
INSERT INTO `destoon_setting` VALUES ('10', 'fee_view', '0');
INSERT INTO `destoon_setting` VALUES ('10', 'fee_add', '0');
INSERT INTO `destoon_setting` VALUES ('10', 'fee_currency', 'money');
INSERT INTO `destoon_setting` VALUES ('10', 'fee_mode', '1');
INSERT INTO `destoon_setting` VALUES ('10', 'captcha_answer', '2');
INSERT INTO `destoon_setting` VALUES ('10', 'question_answer', '0');
INSERT INTO `destoon_setting` VALUES ('10', 'check_answer', '2');
INSERT INTO `destoon_setting` VALUES ('10', 'group_vote', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('10', 'group_answer', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('10', 'question_add', '2');
INSERT INTO `destoon_setting` VALUES ('10', 'captcha_add', '2');
INSERT INTO `destoon_setting` VALUES ('10', 'check_add', '2');
INSERT INTO `destoon_setting` VALUES ('10', 'group_color', '7');
INSERT INTO `destoon_setting` VALUES ('10', 'group_search', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('10', 'group_show', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('10', 'group_list', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('10', 'group_index', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('10', 'seo_description_search', '');
INSERT INTO `destoon_setting` VALUES ('10', 'seo_keywords_search', '');
INSERT INTO `destoon_setting` VALUES ('10', 'seo_title_search', '');
INSERT INTO `destoon_setting` VALUES ('10', 'seo_description_show', '');
INSERT INTO `destoon_setting` VALUES ('10', 'seo_keywords_show', '');
INSERT INTO `destoon_setting` VALUES ('10', 'seo_title_show', '{内容标题}{分隔符}{分类名称}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('10', 'seo_description_list', '');
INSERT INTO `destoon_setting` VALUES ('10', 'seo_keywords_list', '');
INSERT INTO `destoon_setting` VALUES ('10', 'seo_description_index', '');
INSERT INTO `destoon_setting` VALUES ('10', 'seo_title_list', '{分类SEO标题}{页码}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('10', 'seo_keywords_index', '');
INSERT INTO `destoon_setting` VALUES ('10', 'seo_title_index', '{模块名称}{分隔符}{页码}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('10', 'php_item_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('10', 'htm_item_urlid', '1');
INSERT INTO `destoon_setting` VALUES ('10', 'htm_item_prefix', '');
INSERT INTO `destoon_setting` VALUES ('10', 'show_html', '0');
INSERT INTO `destoon_setting` VALUES ('10', 'php_list_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('10', 'htm_list_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('10', 'htm_list_prefix', '');
INSERT INTO `destoon_setting` VALUES ('10', 'list_html', '0');
INSERT INTO `destoon_setting` VALUES ('10', 'index_html', '0');
INSERT INTO `destoon_setting` VALUES ('10', 'page_comment', '0');
INSERT INTO `destoon_setting` VALUES ('10', 'hits', '1');
INSERT INTO `destoon_setting` VALUES ('10', 'max_width', '750');
INSERT INTO `destoon_setting` VALUES ('10', 'answer_pagesize', '10');
INSERT INTO `destoon_setting` VALUES ('10', 'pagesize', '20');
INSERT INTO `destoon_setting` VALUES ('10', 'page_iexpert', '8');
INSERT INTO `destoon_setting` VALUES ('10', 'page_iresolve', '8');
INSERT INTO `destoon_setting` VALUES ('10', 'page_ivote', '8');
INSERT INTO `destoon_setting` VALUES ('10', 'page_isolve', '8');
INSERT INTO `destoon_setting` VALUES ('10', 'page_irec', '8');
INSERT INTO `destoon_setting` VALUES ('10', 'messagedays', '14');
INSERT INTO `destoon_setting` VALUES ('10', 'highcredit', '20');
INSERT INTO `destoon_setting` VALUES ('10', 'raisecredit', '20');
INSERT INTO `destoon_setting` VALUES ('10', 'raisedays', '3');
INSERT INTO `destoon_setting` VALUES ('10', 'maxraise', '2');
INSERT INTO `destoon_setting` VALUES ('10', 'minvote', '3');
INSERT INTO `destoon_setting` VALUES ('10', 'votedays', '5');
INSERT INTO `destoon_setting` VALUES ('10', 'overdays', '15');
INSERT INTO `destoon_setting` VALUES ('10', 'answer_message', '1');
INSERT INTO `destoon_setting` VALUES ('10', 'answer_repeat', '1');
INSERT INTO `destoon_setting` VALUES ('10', 'credits', '0|5|10|15|20|30|50|80|100');
INSERT INTO `destoon_setting` VALUES ('10', 'level', '精彩推荐');
INSERT INTO `destoon_setting` VALUES ('10', 'fulltext', '0');
INSERT INTO `destoon_setting` VALUES ('10', 'split', '0');
INSERT INTO `destoon_setting` VALUES ('10', 'keylink', '1');
INSERT INTO `destoon_setting` VALUES ('10', 'cat_property', '0');
INSERT INTO `destoon_setting` VALUES ('10', 'save_remotepic', '0');
INSERT INTO `destoon_setting` VALUES ('10', 'clear_link', '0');
INSERT INTO `destoon_setting` VALUES ('10', 'clear_alink', '1');
INSERT INTO `destoon_setting` VALUES ('10', 'fields', 'itemid,title,thumb,linkurl,style,catid,introduce,addtime,edittime,username,passport,answer,process,credit');
INSERT INTO `destoon_setting` VALUES ('10', 'order', 'addtime desc');
INSERT INTO `destoon_setting` VALUES ('10', 'editor', 'Simple');
INSERT INTO `destoon_setting` VALUES ('10', 'introduce_length', '0');
INSERT INTO `destoon_setting` VALUES ('10', 'thumb_height', '180');
INSERT INTO `destoon_setting` VALUES ('10', 'thumb_width', '240');
INSERT INTO `destoon_setting` VALUES ('10', 'template_my_answer', '');
INSERT INTO `destoon_setting` VALUES ('10', 'template_my', '');
INSERT INTO `destoon_setting` VALUES ('10', 'template_faq', '');
INSERT INTO `destoon_setting` VALUES ('10', 'template_expert', '');
INSERT INTO `destoon_setting` VALUES ('10', 'template_answer', '');
INSERT INTO `destoon_setting` VALUES ('10', 'template_search', '');
INSERT INTO `destoon_setting` VALUES ('10', 'template_show', '');
INSERT INTO `destoon_setting` VALUES ('10', 'template_list', '');
INSERT INTO `destoon_setting` VALUES ('10', 'template_index', '');
INSERT INTO `destoon_setting` VALUES ('10', 'title_index', '{$seo_modulename}{$seo_delimiter}{$seo_page}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('10', 'title_list', '{$seo_cattitle}{$seo_page}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('10', 'title_show', '{$seo_showtitle}{$seo_delimiter}{$seo_catname}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('10', 'title_search', '');
INSERT INTO `destoon_setting` VALUES ('10', 'keywords_index', '');
INSERT INTO `destoon_setting` VALUES ('10', 'keywords_list', '');
INSERT INTO `destoon_setting` VALUES ('10', 'keywords_show', '');
INSERT INTO `destoon_setting` VALUES ('10', 'keywords_search', '');
INSERT INTO `destoon_setting` VALUES ('10', 'description_index', '');
INSERT INTO `destoon_setting` VALUES ('10', 'description_list', '');
INSERT INTO `destoon_setting` VALUES ('10', 'description_show', '');
INSERT INTO `destoon_setting` VALUES ('10', 'description_search', '');
INSERT INTO `destoon_setting` VALUES ('10', 'module', 'know');
INSERT INTO `destoon_setting` VALUES ('10', 'mobile', 'http://demo.destoon.com/v7.0/mobile/know/');
INSERT INTO `destoon_setting` VALUES ('11', 'group_show', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('11', 'group_search', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('11', 'fee_award', '0');
INSERT INTO `destoon_setting` VALUES ('11', 'group_list', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('11', 'group_index', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('11', 'seo_description_search', '');
INSERT INTO `destoon_setting` VALUES ('11', 'seo_keywords_search', '');
INSERT INTO `destoon_setting` VALUES ('11', 'seo_title_search', '');
INSERT INTO `destoon_setting` VALUES ('11', 'seo_description_show', '');
INSERT INTO `destoon_setting` VALUES ('11', 'seo_keywords_show', '');
INSERT INTO `destoon_setting` VALUES ('11', 'seo_title_show', '{内容标题}{分隔符}{分类名称}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('11', 'seo_keywords_list', '');
INSERT INTO `destoon_setting` VALUES ('11', 'seo_description_list', '');
INSERT INTO `destoon_setting` VALUES ('11', 'seo_title_list', '{分类SEO标题}{页码}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('11', 'seo_title_index', '{模块名称}{分隔符}{页码}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('11', 'seo_keywords_index', '');
INSERT INTO `destoon_setting` VALUES ('11', 'seo_description_index', '');
INSERT INTO `destoon_setting` VALUES ('11', 'php_item_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('11', 'htm_item_urlid', '1');
INSERT INTO `destoon_setting` VALUES ('11', 'htm_item_prefix', '');
INSERT INTO `destoon_setting` VALUES ('11', 'show_html', '0');
INSERT INTO `destoon_setting` VALUES ('11', 'php_list_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('11', 'htm_list_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('11', 'htm_list_prefix', '');
INSERT INTO `destoon_setting` VALUES ('11', 'list_html', '0');
INSERT INTO `destoon_setting` VALUES ('11', 'index_html', '0');
INSERT INTO `destoon_setting` VALUES ('11', 'page_comment', '0');
INSERT INTO `destoon_setting` VALUES ('11', 'hits', '1');
INSERT INTO `destoon_setting` VALUES ('11', 'max_width', '1000');
INSERT INTO `destoon_setting` VALUES ('11', 'pagesize', '20');
INSERT INTO `destoon_setting` VALUES ('11', 'level_item', '推荐信息|幻灯图片|推荐图文|头条相关|头条推荐|视频报道');
INSERT INTO `destoon_setting` VALUES ('11', 'page_irec', '6');
INSERT INTO `destoon_setting` VALUES ('11', 'page_icat', '6');
INSERT INTO `destoon_setting` VALUES ('11', 'level', '推荐专题|暂未指定|推荐图文|头条相关|头条推荐');
INSERT INTO `destoon_setting` VALUES ('11', 'fulltext', '0');
INSERT INTO `destoon_setting` VALUES ('11', 'split', '0');
INSERT INTO `destoon_setting` VALUES ('11', 'clear_link', '0');
INSERT INTO `destoon_setting` VALUES ('11', 'cat_property', '0');
INSERT INTO `destoon_setting` VALUES ('11', 'save_remotepic', '0');
INSERT INTO `destoon_setting` VALUES ('11', 'fields', 'itemid,title,thumb,linkurl,style,catid,introduce,addtime,edittime,islink,hits');
INSERT INTO `destoon_setting` VALUES ('11', 'order', 'addtime desc');
INSERT INTO `destoon_setting` VALUES ('11', 'editor', 'Destoon');
INSERT INTO `destoon_setting` VALUES ('11', 'introduce_length', '120');
INSERT INTO `destoon_setting` VALUES ('11', 'banner_height', '200');
INSERT INTO `destoon_setting` VALUES ('11', 'banner_width', '1200');
INSERT INTO `destoon_setting` VALUES ('11', 'thumb_height', '180');
INSERT INTO `destoon_setting` VALUES ('11', 'thumb_width', '240');
INSERT INTO `destoon_setting` VALUES ('11', 'template_show', '');
INSERT INTO `destoon_setting` VALUES ('11', 'template_type', '');
INSERT INTO `destoon_setting` VALUES ('11', 'template_search', '');
INSERT INTO `destoon_setting` VALUES ('11', 'template_list', '');
INSERT INTO `destoon_setting` VALUES ('11', 'template_index', '');
INSERT INTO `destoon_setting` VALUES ('11', 'title_index', '{$seo_modulename}{$seo_delimiter}{$seo_page}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('11', 'title_list', '{$seo_cattitle}{$seo_page}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('11', 'title_show', '{$seo_showtitle}{$seo_delimiter}{$seo_catname}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('11', 'title_search', '');
INSERT INTO `destoon_setting` VALUES ('11', 'keywords_index', '');
INSERT INTO `destoon_setting` VALUES ('11', 'keywords_list', '');
INSERT INTO `destoon_setting` VALUES ('11', 'keywords_show', '');
INSERT INTO `destoon_setting` VALUES ('11', 'keywords_search', '');
INSERT INTO `destoon_setting` VALUES ('11', 'description_index', '');
INSERT INTO `destoon_setting` VALUES ('11', 'description_list', '');
INSERT INTO `destoon_setting` VALUES ('11', 'description_show', '');
INSERT INTO `destoon_setting` VALUES ('11', 'description_search', '');
INSERT INTO `destoon_setting` VALUES ('11', 'module', 'special');
INSERT INTO `destoon_setting` VALUES ('11', 'mobile', 'http://demo.destoon.com/v7.0/mobile/special/');
INSERT INTO `destoon_setting` VALUES ('12', 'free_limit_7', '-1');
INSERT INTO `destoon_setting` VALUES ('12', 'limit_7', '100');
INSERT INTO `destoon_setting` VALUES ('12', 'free_limit_6', '0');
INSERT INTO `destoon_setting` VALUES ('12', 'limit_6', '30');
INSERT INTO `destoon_setting` VALUES ('12', 'free_limit_5', '0');
INSERT INTO `destoon_setting` VALUES ('12', 'limit_5', '3');
INSERT INTO `destoon_setting` VALUES ('12', 'free_limit_4', '0');
INSERT INTO `destoon_setting` VALUES ('12', 'limit_4', '-1');
INSERT INTO `destoon_setting` VALUES ('12', 'free_limit_3', '0');
INSERT INTO `destoon_setting` VALUES ('12', 'limit_3', '-1');
INSERT INTO `destoon_setting` VALUES ('12', 'free_limit_2', '0');
INSERT INTO `destoon_setting` VALUES ('12', 'limit_2', '-1');
INSERT INTO `destoon_setting` VALUES ('12', 'free_limit_1', '-1');
INSERT INTO `destoon_setting` VALUES ('12', 'limit_1', '0');
INSERT INTO `destoon_setting` VALUES ('12', 'credit_color', '100');
INSERT INTO `destoon_setting` VALUES ('12', 'credit_del', '5');
INSERT INTO `destoon_setting` VALUES ('12', 'credit_add', '2');
INSERT INTO `destoon_setting` VALUES ('12', 'pre_view', '200');
INSERT INTO `destoon_setting` VALUES ('12', 'fee_award', '100');
INSERT INTO `destoon_setting` VALUES ('12', 'fee_back', '0');
INSERT INTO `destoon_setting` VALUES ('12', 'fee_period', '0');
INSERT INTO `destoon_setting` VALUES ('12', 'fee_view', '0');
INSERT INTO `destoon_setting` VALUES ('12', 'fee_add', '0');
INSERT INTO `destoon_setting` VALUES ('12', 'fee_currency', 'money');
INSERT INTO `destoon_setting` VALUES ('12', 'fee_mode', '0');
INSERT INTO `destoon_setting` VALUES ('12', 'question_add', '1');
INSERT INTO `destoon_setting` VALUES ('12', 'captcha_add', '2');
INSERT INTO `destoon_setting` VALUES ('12', 'check_add', '1');
INSERT INTO `destoon_setting` VALUES ('12', 'group_color', '7');
INSERT INTO `destoon_setting` VALUES ('12', 'group_search', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('12', 'group_show', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('12', 'group_list', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('12', 'seo_description_show', '');
INSERT INTO `destoon_setting` VALUES ('12', 'seo_title_search', '');
INSERT INTO `destoon_setting` VALUES ('12', 'seo_keywords_search', '');
INSERT INTO `destoon_setting` VALUES ('12', 'group_index', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('12', 'seo_description_search', '');
INSERT INTO `destoon_setting` VALUES ('12', 'seo_keywords_show', '');
INSERT INTO `destoon_setting` VALUES ('12', 'seo_description_list', '');
INSERT INTO `destoon_setting` VALUES ('12', 'seo_title_show', '{内容标题}{分隔符}{分类名称}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('12', 'seo_keywords_list', '');
INSERT INTO `destoon_setting` VALUES ('12', 'seo_keywords_index', '');
INSERT INTO `destoon_setting` VALUES ('12', 'seo_description_index', '');
INSERT INTO `destoon_setting` VALUES ('12', 'seo_title_list', '{分类SEO标题}{页码}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('12', 'php_item_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('12', 'seo_title_index', '{模块名称}{分隔符}{页码}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('12', 'htm_item_urlid', '1');
INSERT INTO `destoon_setting` VALUES ('12', 'htm_item_prefix', '');
INSERT INTO `destoon_setting` VALUES ('12', 'show_html', '0');
INSERT INTO `destoon_setting` VALUES ('12', 'php_list_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('12', 'htm_list_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('12', 'htm_list_prefix', '');
INSERT INTO `destoon_setting` VALUES ('12', 'list_html', '0');
INSERT INTO `destoon_setting` VALUES ('12', 'index_html', '0');
INSERT INTO `destoon_setting` VALUES ('12', 'page_comment', '0');
INSERT INTO `destoon_setting` VALUES ('12', 'hits', '1');
INSERT INTO `destoon_setting` VALUES ('12', 'max_width', '1000');
INSERT INTO `destoon_setting` VALUES ('12', 'pagesize', '18');
INSERT INTO `destoon_setting` VALUES ('12', 'page_islide', '3');
INSERT INTO `destoon_setting` VALUES ('12', 'page_irec', '6');
INSERT INTO `destoon_setting` VALUES ('12', 'page_icat', '6');
INSERT INTO `destoon_setting` VALUES ('12', 'swfu_max', '20');
INSERT INTO `destoon_setting` VALUES ('12', 'level', '推荐图库|幻灯图片|推荐图文|头条相关|头条推荐');
INSERT INTO `destoon_setting` VALUES ('12', 'fulltext', '0');
INSERT INTO `destoon_setting` VALUES ('12', 'split', '0');
INSERT INTO `destoon_setting` VALUES ('12', 'keylink', '0');
INSERT INTO `destoon_setting` VALUES ('12', 'clear_link', '0');
INSERT INTO `destoon_setting` VALUES ('12', 'save_remotepic', '0');
INSERT INTO `destoon_setting` VALUES ('12', 'cat_property', '0');
INSERT INTO `destoon_setting` VALUES ('12', 'fields', 'itemid,title,thumb,linkurl,style,catid,introduce,addtime,edittime,username,items,open');
INSERT INTO `destoon_setting` VALUES ('12', 'order', 'addtime desc');
INSERT INTO `destoon_setting` VALUES ('12', 'editor', 'Simple');
INSERT INTO `destoon_setting` VALUES ('12', 'introduce_length', '120');
INSERT INTO `destoon_setting` VALUES ('12', 'maxitem', '30');
INSERT INTO `destoon_setting` VALUES ('12', 'thumb_height', '180');
INSERT INTO `destoon_setting` VALUES ('12', 'thumb_width', '240');
INSERT INTO `destoon_setting` VALUES ('12', 'template_view', '');
INSERT INTO `destoon_setting` VALUES ('12', 'template_private', '');
INSERT INTO `destoon_setting` VALUES ('12', 'template_my', '');
INSERT INTO `destoon_setting` VALUES ('12', 'template_search', '');
INSERT INTO `destoon_setting` VALUES ('12', 'template_show', '');
INSERT INTO `destoon_setting` VALUES ('12', 'template_list', '');
INSERT INTO `destoon_setting` VALUES ('12', 'template_index', '');
INSERT INTO `destoon_setting` VALUES ('12', 'title_index', '{$seo_modulename}{$seo_delimiter}{$seo_page}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('12', 'title_list', '{$seo_cattitle}{$seo_page}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('12', 'title_show', '{$seo_showtitle}{$seo_delimiter}{$seo_catname}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('12', 'title_search', '');
INSERT INTO `destoon_setting` VALUES ('12', 'keywords_index', '');
INSERT INTO `destoon_setting` VALUES ('12', 'keywords_list', '');
INSERT INTO `destoon_setting` VALUES ('12', 'keywords_show', '');
INSERT INTO `destoon_setting` VALUES ('12', 'keywords_search', '');
INSERT INTO `destoon_setting` VALUES ('12', 'description_index', '');
INSERT INTO `destoon_setting` VALUES ('12', 'description_list', '');
INSERT INTO `destoon_setting` VALUES ('12', 'description_show', '');
INSERT INTO `destoon_setting` VALUES ('12', 'description_search', '');
INSERT INTO `destoon_setting` VALUES ('12', 'module', 'photo');
INSERT INTO `destoon_setting` VALUES ('12', 'mobile', 'http://demo.destoon.com/v7.0/mobile/photo/');
INSERT INTO `destoon_setting` VALUES ('13', 'free_limit_7', '-1');
INSERT INTO `destoon_setting` VALUES ('13', 'limit_7', '100');
INSERT INTO `destoon_setting` VALUES ('13', 'free_limit_6', '0');
INSERT INTO `destoon_setting` VALUES ('13', 'free_limit_5', '0');
INSERT INTO `destoon_setting` VALUES ('13', 'limit_6', '30');
INSERT INTO `destoon_setting` VALUES ('13', 'limit_5', '3');
INSERT INTO `destoon_setting` VALUES ('13', 'free_limit_4', '0');
INSERT INTO `destoon_setting` VALUES ('13', 'limit_4', '-1');
INSERT INTO `destoon_setting` VALUES ('13', 'free_limit_3', '0');
INSERT INTO `destoon_setting` VALUES ('13', 'limit_3', '-1');
INSERT INTO `destoon_setting` VALUES ('13', 'free_limit_2', '0');
INSERT INTO `destoon_setting` VALUES ('13', 'limit_2', '-1');
INSERT INTO `destoon_setting` VALUES ('13', 'free_limit_1', '-1');
INSERT INTO `destoon_setting` VALUES ('13', 'limit_1', '0');
INSERT INTO `destoon_setting` VALUES ('13', 'credit_refresh', '1');
INSERT INTO `destoon_setting` VALUES ('13', 'credit_color', '100');
INSERT INTO `destoon_setting` VALUES ('13', 'credit_del', '5');
INSERT INTO `destoon_setting` VALUES ('13', 'credit_add', '2');
INSERT INTO `destoon_setting` VALUES ('13', 'fee_view', '0');
INSERT INTO `destoon_setting` VALUES ('13', 'fee_award', '0');
INSERT INTO `destoon_setting` VALUES ('13', 'fee_back', '0');
INSERT INTO `destoon_setting` VALUES ('13', 'fee_period', '0');
INSERT INTO `destoon_setting` VALUES ('13', 'fee_add', '0');
INSERT INTO `destoon_setting` VALUES ('13', 'fee_currency', 'money');
INSERT INTO `destoon_setting` VALUES ('13', 'fee_mode', '0');
INSERT INTO `destoon_setting` VALUES ('13', 'question_add', '2');
INSERT INTO `destoon_setting` VALUES ('13', 'captcha_add', '2');
INSERT INTO `destoon_setting` VALUES ('13', 'group_refresh', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('13', 'captcha_message', '2');
INSERT INTO `destoon_setting` VALUES ('13', 'question_message', '2');
INSERT INTO `destoon_setting` VALUES ('13', 'check_add', '2');
INSERT INTO `destoon_setting` VALUES ('13', 'group_color', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('13', 'group_search', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('13', 'group_contact', '6,7');
INSERT INTO `destoon_setting` VALUES ('13', 'group_show', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('13', 'group_list', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('13', 'group_index', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('13', 'seo_description_search', '');
INSERT INTO `destoon_setting` VALUES ('13', 'seo_keywords_search', '');
INSERT INTO `destoon_setting` VALUES ('13', 'seo_title_search', '');
INSERT INTO `destoon_setting` VALUES ('13', 'seo_description_show', '');
INSERT INTO `destoon_setting` VALUES ('13', 'seo_title_show', '{内容标题}{分隔符}{分类名称}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('13', 'seo_keywords_list', '');
INSERT INTO `destoon_setting` VALUES ('13', 'seo_description_list', '');
INSERT INTO `destoon_setting` VALUES ('13', 'seo_title_list', '{分类SEO标题}{页码}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('13', 'seo_description_index', '{模块名称}{网站名称}{网站SEO标题}');
INSERT INTO `destoon_setting` VALUES ('13', 'seo_keywords_index', '{模块名称}{网站名称}{网站SEO标题}');
INSERT INTO `destoon_setting` VALUES ('13', 'seo_keywords_show', '');
INSERT INTO `destoon_setting` VALUES ('13', 'seo_title_index', '{模块名称}{分隔符}{页码}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('13', 'php_item_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('13', 'htm_item_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('13', 'htm_item_prefix', '');
INSERT INTO `destoon_setting` VALUES ('13', 'show_html', '0');
INSERT INTO `destoon_setting` VALUES ('13', 'php_list_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('13', 'htm_list_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('13', 'htm_list_prefix', '');
INSERT INTO `destoon_setting` VALUES ('13', 'list_html', '0');
INSERT INTO `destoon_setting` VALUES ('13', 'index_html', '0');
INSERT INTO `destoon_setting` VALUES ('13', 'page_comment', '0');
INSERT INTO `destoon_setting` VALUES ('13', 'hits', '1');
INSERT INTO `destoon_setting` VALUES ('13', 'max_width', '1000');
INSERT INTO `destoon_setting` VALUES ('13', 'pagesize', '20');
INSERT INTO `destoon_setting` VALUES ('13', 'page_icat', '15');
INSERT INTO `destoon_setting` VALUES ('13', 'page_irec', '18');
INSERT INTO `destoon_setting` VALUES ('13', 'page_subcat', '6');
INSERT INTO `destoon_setting` VALUES ('13', 'level', '推荐品牌');
INSERT INTO `destoon_setting` VALUES ('13', 'fulltext', '0');
INSERT INTO `destoon_setting` VALUES ('13', 'split', '0');
INSERT INTO `destoon_setting` VALUES ('13', 'keylink', '0');
INSERT INTO `destoon_setting` VALUES ('13', 'clear_link', '0');
INSERT INTO `destoon_setting` VALUES ('13', 'introduce_length', '120');
INSERT INTO `destoon_setting` VALUES ('13', 'editor', 'Destoon');
INSERT INTO `destoon_setting` VALUES ('13', 'order', 'editdate desc,vip desc,edittime desc');
INSERT INTO `destoon_setting` VALUES ('13', 'fields', 'itemid,title,thumb,linkurl,style,catid,areaid,introduce,addtime,edittime,username,company,groupid,vip,qq,wx,ali,skype,validated,hits');
INSERT INTO `destoon_setting` VALUES ('13', 'message_ask', '请问我这个地方有加盟商了吗？|我想加盟，请来电话告诉我具体细节。|初步打算加盟贵公司，请寄资料。|请问贵公司哪里有样板店或直营店？|想了解加盟细节，请尽快寄一份资料。 ');
INSERT INTO `destoon_setting` VALUES ('13', 'cat_property', '0');
INSERT INTO `destoon_setting` VALUES ('13', 'save_remotepic', '0');
INSERT INTO `destoon_setting` VALUES ('13', 'thumb_height', '60');
INSERT INTO `destoon_setting` VALUES ('13', 'thumb_width', '180');
INSERT INTO `destoon_setting` VALUES ('13', 'template_message', '');
INSERT INTO `destoon_setting` VALUES ('13', 'template_my', '');
INSERT INTO `destoon_setting` VALUES ('13', 'template_search', '');
INSERT INTO `destoon_setting` VALUES ('13', 'template_show', '');
INSERT INTO `destoon_setting` VALUES ('13', 'template_list', '');
INSERT INTO `destoon_setting` VALUES ('13', 'template_index', '');
INSERT INTO `destoon_setting` VALUES ('13', 'title_index', '{$seo_modulename}{$seo_delimiter}{$seo_page}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('13', 'title_list', '{$seo_cattitle}{$seo_page}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('13', 'title_show', '{$seo_showtitle}{$seo_delimiter}{$seo_catname}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('13', 'title_search', '');
INSERT INTO `destoon_setting` VALUES ('13', 'keywords_index', '{$seo_modulename}{$seo_sitename}{$seo_sitetitle}');
INSERT INTO `destoon_setting` VALUES ('13', 'keywords_list', '');
INSERT INTO `destoon_setting` VALUES ('13', 'keywords_show', '');
INSERT INTO `destoon_setting` VALUES ('13', 'keywords_search', '');
INSERT INTO `destoon_setting` VALUES ('13', 'description_index', '{$seo_modulename}{$seo_sitename}{$seo_sitetitle}');
INSERT INTO `destoon_setting` VALUES ('13', 'description_list', '');
INSERT INTO `destoon_setting` VALUES ('13', 'description_show', '');
INSERT INTO `destoon_setting` VALUES ('13', 'description_search', '');
INSERT INTO `destoon_setting` VALUES ('13', 'module', 'brand');
INSERT INTO `destoon_setting` VALUES ('13', 'mobile', 'http://demo.destoon.com/v7.0/mobile/brand/');
INSERT INTO `destoon_setting` VALUES ('14', 'limit_7', '100');
INSERT INTO `destoon_setting` VALUES ('14', 'free_limit_7', '-1');
INSERT INTO `destoon_setting` VALUES ('14', 'free_limit_6', '0');
INSERT INTO `destoon_setting` VALUES ('14', 'limit_6', '30');
INSERT INTO `destoon_setting` VALUES ('14', 'free_limit_5', '0');
INSERT INTO `destoon_setting` VALUES ('14', 'limit_5', '3');
INSERT INTO `destoon_setting` VALUES ('14', 'free_limit_4', '0');
INSERT INTO `destoon_setting` VALUES ('14', 'limit_4', '-1');
INSERT INTO `destoon_setting` VALUES ('14', 'free_limit_3', '0');
INSERT INTO `destoon_setting` VALUES ('14', 'limit_3', '-1');
INSERT INTO `destoon_setting` VALUES ('14', 'free_limit_2', '0');
INSERT INTO `destoon_setting` VALUES ('14', 'limit_2', '-1');
INSERT INTO `destoon_setting` VALUES ('14', 'free_limit_1', '-1');
INSERT INTO `destoon_setting` VALUES ('14', 'limit_1', '0');
INSERT INTO `destoon_setting` VALUES ('14', 'credit_color', '100');
INSERT INTO `destoon_setting` VALUES ('14', 'credit_del', '5');
INSERT INTO `destoon_setting` VALUES ('14', 'credit_add', '2');
INSERT INTO `destoon_setting` VALUES ('14', 'fee_award', '100');
INSERT INTO `destoon_setting` VALUES ('14', 'fee_back', '0');
INSERT INTO `destoon_setting` VALUES ('14', 'fee_period', '0');
INSERT INTO `destoon_setting` VALUES ('14', 'fee_view', '0');
INSERT INTO `destoon_setting` VALUES ('14', 'fee_add', '0');
INSERT INTO `destoon_setting` VALUES ('14', 'fee_currency', 'money');
INSERT INTO `destoon_setting` VALUES ('14', 'fee_mode', '0');
INSERT INTO `destoon_setting` VALUES ('14', 'question_add', '2');
INSERT INTO `destoon_setting` VALUES ('14', 'captcha_add', '2');
INSERT INTO `destoon_setting` VALUES ('14', 'check_add', '2');
INSERT INTO `destoon_setting` VALUES ('14', 'question_message', '2');
INSERT INTO `destoon_setting` VALUES ('14', 'captcha_message', '2');
INSERT INTO `destoon_setting` VALUES ('14', 'group_upload', '6,7');
INSERT INTO `destoon_setting` VALUES ('14', 'group_color', '7');
INSERT INTO `destoon_setting` VALUES ('14', 'group_search', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('14', 'group_show', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('14', 'group_list', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('14', 'group_index', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('14', 'seo_description_search', '');
INSERT INTO `destoon_setting` VALUES ('14', 'seo_keywords_search', '');
INSERT INTO `destoon_setting` VALUES ('14', 'seo_title_search', '');
INSERT INTO `destoon_setting` VALUES ('14', 'seo_description_show', '');
INSERT INTO `destoon_setting` VALUES ('14', 'seo_keywords_show', '');
INSERT INTO `destoon_setting` VALUES ('14', 'seo_description_list', '');
INSERT INTO `destoon_setting` VALUES ('14', 'seo_title_show', '{内容标题}{分隔符}{分类名称}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('14', 'seo_keywords_list', '');
INSERT INTO `destoon_setting` VALUES ('14', 'seo_title_list', '{分类SEO标题}{页码}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('14', 'seo_title_index', '{模块名称}{分隔符}{页码}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('14', 'seo_description_index', '');
INSERT INTO `destoon_setting` VALUES ('14', 'seo_keywords_index', '');
INSERT INTO `destoon_setting` VALUES ('14', 'php_item_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('14', 'htm_item_urlid', '1');
INSERT INTO `destoon_setting` VALUES ('14', 'htm_item_prefix', '');
INSERT INTO `destoon_setting` VALUES ('14', 'show_html', '0');
INSERT INTO `destoon_setting` VALUES ('14', 'php_list_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('14', 'htm_list_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('14', 'htm_list_prefix', '');
INSERT INTO `destoon_setting` VALUES ('14', 'list_html', '0');
INSERT INTO `destoon_setting` VALUES ('14', 'index_html', '0');
INSERT INTO `destoon_setting` VALUES ('14', 'page_comment', '0');
INSERT INTO `destoon_setting` VALUES ('14', 'hits', '1');
INSERT INTO `destoon_setting` VALUES ('14', 'max_width', '1000');
INSERT INTO `destoon_setting` VALUES ('14', 'pagesize', '20');
INSERT INTO `destoon_setting` VALUES ('14', 'page_icat', '6');
INSERT INTO `destoon_setting` VALUES ('14', 'page_irec', '6');
INSERT INTO `destoon_setting` VALUES ('14', 'swfu', '0');
INSERT INTO `destoon_setting` VALUES ('14', 'upload', 'mp4|flv');
INSERT INTO `destoon_setting` VALUES ('14', 'flvend', '');
INSERT INTO `destoon_setting` VALUES ('14', 'flvstart', '');
INSERT INTO `destoon_setting` VALUES ('14', 'flvlink', '');
INSERT INTO `destoon_setting` VALUES ('14', 'flvmargin', '10 auto auto 10');
INSERT INTO `destoon_setting` VALUES ('14', 'flvlogo', 'video.png');
INSERT INTO `destoon_setting` VALUES ('14', 'autostart', '1');
INSERT INTO `destoon_setting` VALUES ('14', 'level', '推荐视频');
INSERT INTO `destoon_setting` VALUES ('14', 'fulltext', '0');
INSERT INTO `destoon_setting` VALUES ('14', 'split', '0');
INSERT INTO `destoon_setting` VALUES ('14', 'keylink', '0');
INSERT INTO `destoon_setting` VALUES ('14', 'video_width', '600');
INSERT INTO `destoon_setting` VALUES ('14', 'video_height', '500');
INSERT INTO `destoon_setting` VALUES ('14', 'introduce_length', '120');
INSERT INTO `destoon_setting` VALUES ('14', 'editor', 'Destoon');
INSERT INTO `destoon_setting` VALUES ('14', 'order', 'addtime desc');
INSERT INTO `destoon_setting` VALUES ('14', 'fields', 'itemid,title,thumb,linkurl,style,catid,introduce,addtime,edittime,username,hits');
INSERT INTO `destoon_setting` VALUES ('14', 'cat_property', '0');
INSERT INTO `destoon_setting` VALUES ('14', 'save_remotepic', '0');
INSERT INTO `destoon_setting` VALUES ('14', 'clear_link', '0');
INSERT INTO `destoon_setting` VALUES ('14', 'thumb_height', '180');
INSERT INTO `destoon_setting` VALUES ('14', 'thumb_width', '240');
INSERT INTO `destoon_setting` VALUES ('14', 'template_my', '');
INSERT INTO `destoon_setting` VALUES ('14', 'template_search', '');
INSERT INTO `destoon_setting` VALUES ('14', 'template_show', '');
INSERT INTO `destoon_setting` VALUES ('14', 'template_list', '');
INSERT INTO `destoon_setting` VALUES ('14', 'template_index', '');
INSERT INTO `destoon_setting` VALUES ('14', 'title_index', '{$seo_modulename}{$seo_delimiter}{$seo_page}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('14', 'title_list', '{$seo_cattitle}{$seo_page}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('14', 'title_show', '{$seo_showtitle}{$seo_delimiter}{$seo_catname}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('14', 'title_search', '');
INSERT INTO `destoon_setting` VALUES ('14', 'keywords_index', '');
INSERT INTO `destoon_setting` VALUES ('14', 'keywords_list', '');
INSERT INTO `destoon_setting` VALUES ('14', 'keywords_show', '');
INSERT INTO `destoon_setting` VALUES ('14', 'keywords_search', '');
INSERT INTO `destoon_setting` VALUES ('14', 'description_index', '');
INSERT INTO `destoon_setting` VALUES ('14', 'description_list', '');
INSERT INTO `destoon_setting` VALUES ('14', 'description_show', '');
INSERT INTO `destoon_setting` VALUES ('14', 'description_search', '');
INSERT INTO `destoon_setting` VALUES ('14', 'module', 'video');
INSERT INTO `destoon_setting` VALUES ('14', 'mobile', 'http://demo.destoon.com/v7.0/mobile/video/');
INSERT INTO `destoon_setting` VALUES ('15', 'limit_6', '30');
INSERT INTO `destoon_setting` VALUES ('15', 'free_limit_5', '0');
INSERT INTO `destoon_setting` VALUES ('15', 'limit_5', '3');
INSERT INTO `destoon_setting` VALUES ('15', 'free_limit_4', '0');
INSERT INTO `destoon_setting` VALUES ('15', 'free_limit_7', '-1');
INSERT INTO `destoon_setting` VALUES ('15', 'limit_4', '-1');
INSERT INTO `destoon_setting` VALUES ('15', 'free_limit_3', '0');
INSERT INTO `destoon_setting` VALUES ('15', 'limit_3', '-1');
INSERT INTO `destoon_setting` VALUES ('15', 'free_limit_2', '0');
INSERT INTO `destoon_setting` VALUES ('15', 'limit_2', '-1');
INSERT INTO `destoon_setting` VALUES ('15', 'free_limit_1', '-1');
INSERT INTO `destoon_setting` VALUES ('15', 'limit_1', '0');
INSERT INTO `destoon_setting` VALUES ('15', 'credit_color', '100');
INSERT INTO `destoon_setting` VALUES ('15', 'credit_del', '5');
INSERT INTO `destoon_setting` VALUES ('15', 'credit_add', '2');
INSERT INTO `destoon_setting` VALUES ('15', 'fee_award', '100');
INSERT INTO `destoon_setting` VALUES ('15', 'fee_back', '0');
INSERT INTO `destoon_setting` VALUES ('15', 'fee_period', '0');
INSERT INTO `destoon_setting` VALUES ('15', 'fee_view', '0');
INSERT INTO `destoon_setting` VALUES ('15', 'fee_add', '0');
INSERT INTO `destoon_setting` VALUES ('15', 'fee_currency', 'money');
INSERT INTO `destoon_setting` VALUES ('15', 'fee_mode', '0');
INSERT INTO `destoon_setting` VALUES ('15', 'question_add', '2');
INSERT INTO `destoon_setting` VALUES ('15', 'captcha_add', '2');
INSERT INTO `destoon_setting` VALUES ('15', 'check_add', '2');
INSERT INTO `destoon_setting` VALUES ('15', 'question_message', '2');
INSERT INTO `destoon_setting` VALUES ('15', 'captcha_message', '2');
INSERT INTO `destoon_setting` VALUES ('15', 'limit_7', '100');
INSERT INTO `destoon_setting` VALUES ('15', 'free_limit_6', '0');
INSERT INTO `destoon_setting` VALUES ('15', 'group_upload', '6,7');
INSERT INTO `destoon_setting` VALUES ('15', 'group_color', '7');
INSERT INTO `destoon_setting` VALUES ('15', 'group_search', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('15', 'group_contact', '5,6,7');
INSERT INTO `destoon_setting` VALUES ('15', 'group_show', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('15', 'group_list', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('15', 'group_index', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('15', 'seo_description_search', '');
INSERT INTO `destoon_setting` VALUES ('15', 'seo_keywords_search', '');
INSERT INTO `destoon_setting` VALUES ('15', 'seo_title_search', '');
INSERT INTO `destoon_setting` VALUES ('15', 'seo_title_show', '{内容标题}{分隔符}{分类名称}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('15', 'seo_description_show', '');
INSERT INTO `destoon_setting` VALUES ('15', 'seo_keywords_show', '');
INSERT INTO `destoon_setting` VALUES ('15', 'seo_keywords_list', '');
INSERT INTO `destoon_setting` VALUES ('15', 'seo_description_list', '');
INSERT INTO `destoon_setting` VALUES ('15', 'seo_keywords_index', '');
INSERT INTO `destoon_setting` VALUES ('15', 'seo_title_list', '{分类SEO标题}{页码}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('15', 'seo_description_index', '');
INSERT INTO `destoon_setting` VALUES ('15', 'seo_title_index', '{模块名称}{分隔符}{页码}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('15', 'php_item_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('15', 'htm_item_urlid', '1');
INSERT INTO `destoon_setting` VALUES ('15', 'htm_item_prefix', '');
INSERT INTO `destoon_setting` VALUES ('15', 'show_html', '0');
INSERT INTO `destoon_setting` VALUES ('15', 'php_list_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('15', 'htm_list_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('15', 'htm_list_prefix', '');
INSERT INTO `destoon_setting` VALUES ('15', 'list_html', '0');
INSERT INTO `destoon_setting` VALUES ('15', 'index_html', '0');
INSERT INTO `destoon_setting` VALUES ('15', 'page_comment', '0');
INSERT INTO `destoon_setting` VALUES ('15', 'hits', '1');
INSERT INTO `destoon_setting` VALUES ('15', 'max_width', '550');
INSERT INTO `destoon_setting` VALUES ('15', 'pagesize', '20');
INSERT INTO `destoon_setting` VALUES ('15', 'page_icat', '10');
INSERT INTO `destoon_setting` VALUES ('15', 'swfu', '1');
INSERT INTO `destoon_setting` VALUES ('15', 'page_irec', '6');
INSERT INTO `destoon_setting` VALUES ('15', 'upload', 'rar|zip|pdf|doc|jpg|gif|png|docx');
INSERT INTO `destoon_setting` VALUES ('15', 'readsize', '10');
INSERT INTO `destoon_setting` VALUES ('15', 'level', '推荐下载');
INSERT INTO `destoon_setting` VALUES ('15', 'fulltext', '0');
INSERT INTO `destoon_setting` VALUES ('15', 'split', '0');
INSERT INTO `destoon_setting` VALUES ('15', 'keylink', '0');
INSERT INTO `destoon_setting` VALUES ('15', 'clear_link', '0');
INSERT INTO `destoon_setting` VALUES ('15', 'cat_property', '0');
INSERT INTO `destoon_setting` VALUES ('15', 'save_remotepic', '0');
INSERT INTO `destoon_setting` VALUES ('15', 'fields', 'itemid,title,thumb,linkurl,style,catid,introduce,addtime,edittime,username,fileext,filesize,unit,download');
INSERT INTO `destoon_setting` VALUES ('15', 'order', 'addtime desc');
INSERT INTO `destoon_setting` VALUES ('15', 'editor', 'Destoon');
INSERT INTO `destoon_setting` VALUES ('15', 'introduce_length', '120');
INSERT INTO `destoon_setting` VALUES ('15', 'thumb_height', '180');
INSERT INTO `destoon_setting` VALUES ('15', 'thumb_width', '240');
INSERT INTO `destoon_setting` VALUES ('15', 'template_my', '');
INSERT INTO `destoon_setting` VALUES ('15', 'template_search', '');
INSERT INTO `destoon_setting` VALUES ('15', 'template_show', '');
INSERT INTO `destoon_setting` VALUES ('15', 'template_list', '');
INSERT INTO `destoon_setting` VALUES ('15', 'template_index', '');
INSERT INTO `destoon_setting` VALUES ('15', 'title_index', '{$seo_modulename}{$seo_delimiter}{$seo_page}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('15', 'title_list', '{$seo_cattitle}{$seo_page}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('15', 'title_show', '{$seo_showtitle}{$seo_delimiter}{$seo_catname}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('15', 'title_search', '');
INSERT INTO `destoon_setting` VALUES ('15', 'keywords_index', '');
INSERT INTO `destoon_setting` VALUES ('15', 'keywords_list', '');
INSERT INTO `destoon_setting` VALUES ('15', 'keywords_show', '');
INSERT INTO `destoon_setting` VALUES ('15', 'keywords_search', '');
INSERT INTO `destoon_setting` VALUES ('15', 'description_index', '');
INSERT INTO `destoon_setting` VALUES ('15', 'description_list', '');
INSERT INTO `destoon_setting` VALUES ('15', 'description_show', '');
INSERT INTO `destoon_setting` VALUES ('15', 'description_search', '');
INSERT INTO `destoon_setting` VALUES ('15', 'module', 'down');
INSERT INTO `destoon_setting` VALUES ('15', 'mobile', 'http://demo.destoon.com/v7.0/mobile/down/');
INSERT INTO `destoon_setting` VALUES ('16', 'free_limit_7', '-1');
INSERT INTO `destoon_setting` VALUES ('16', 'limit_7', '100');
INSERT INTO `destoon_setting` VALUES ('16', 'free_limit_6', '0');
INSERT INTO `destoon_setting` VALUES ('16', 'limit_6', '30');
INSERT INTO `destoon_setting` VALUES ('16', 'free_limit_5', '0');
INSERT INTO `destoon_setting` VALUES ('16', 'limit_5', '3');
INSERT INTO `destoon_setting` VALUES ('16', 'free_limit_4', '0');
INSERT INTO `destoon_setting` VALUES ('16', 'limit_4', '-1');
INSERT INTO `destoon_setting` VALUES ('16', 'free_limit_3', '0');
INSERT INTO `destoon_setting` VALUES ('16', 'limit_3', '-1');
INSERT INTO `destoon_setting` VALUES ('16', 'free_limit_2', '0');
INSERT INTO `destoon_setting` VALUES ('16', 'limit_2', '-1');
INSERT INTO `destoon_setting` VALUES ('16', 'free_limit_1', '-1');
INSERT INTO `destoon_setting` VALUES ('16', 'limit_1', '0');
INSERT INTO `destoon_setting` VALUES ('16', 'credit_refresh', '1');
INSERT INTO `destoon_setting` VALUES ('16', 'credit_elite', '100');
INSERT INTO `destoon_setting` VALUES ('16', 'credit_color', '100');
INSERT INTO `destoon_setting` VALUES ('16', 'credit_del', '5');
INSERT INTO `destoon_setting` VALUES ('16', 'credit_add', '2');
INSERT INTO `destoon_setting` VALUES ('16', 'fee_award', '0');
INSERT INTO `destoon_setting` VALUES ('16', 'fee_back', '0');
INSERT INTO `destoon_setting` VALUES ('16', 'fee_period', '0');
INSERT INTO `destoon_setting` VALUES ('16', 'fee_view', '0');
INSERT INTO `destoon_setting` VALUES ('16', 'fee_add', '0');
INSERT INTO `destoon_setting` VALUES ('16', 'fee_currency', 'money');
INSERT INTO `destoon_setting` VALUES ('16', 'fee_mode', '0');
INSERT INTO `destoon_setting` VALUES ('16', 'question_add', '2');
INSERT INTO `destoon_setting` VALUES ('16', 'captcha_add', '2');
INSERT INTO `destoon_setting` VALUES ('16', 'check_add', '2');
INSERT INTO `destoon_setting` VALUES ('16', 'question_inquiry', '2');
INSERT INTO `destoon_setting` VALUES ('16', 'captcha_inquiry', '2');
INSERT INTO `destoon_setting` VALUES ('16', 'group_elite', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('16', 'group_compare', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('16', 'group_refresh', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('16', 'group_color', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('16', 'group_search', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('16', 'group_contact', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('16', 'group_show', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('16', 'group_list', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('16', 'group_index', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('16', 'seo_description_search', '');
INSERT INTO `destoon_setting` VALUES ('16', 'seo_title_search', '');
INSERT INTO `destoon_setting` VALUES ('16', 'seo_keywords_search', '');
INSERT INTO `destoon_setting` VALUES ('16', 'seo_description_show', '{内容标题}{内容简介}{分类名称}{分类SEO描述}{模块名称}{网站名称}{网站SEO描述}');
INSERT INTO `destoon_setting` VALUES ('16', 'seo_keywords_show', '');
INSERT INTO `destoon_setting` VALUES ('16', 'seo_title_show', '{内容标题}{分隔符}{分类名称}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('16', 'seo_keywords_list', '');
INSERT INTO `destoon_setting` VALUES ('16', 'seo_description_list', '');
INSERT INTO `destoon_setting` VALUES ('16', 'htm_item_prefix', 'mall_info_');
INSERT INTO `destoon_setting` VALUES ('16', 'htm_item_urlid', '1');
INSERT INTO `destoon_setting` VALUES ('16', 'php_item_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('16', 'seo_title_index', '{模块名称}{分隔符}{页码}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('16', 'seo_keywords_index', '{模块名称}{网站名称}{网站SEO标题}');
INSERT INTO `destoon_setting` VALUES ('16', 'seo_title_list', '{分类名称}{分类SEO标题}{页码}{模块名称}{分隔符}{网站名称}{分类SEO标题}{模块名称}{网站名称}{页码}');
INSERT INTO `destoon_setting` VALUES ('16', 'seo_description_index', '{模块名称}{网站名称}{网站SEO标题}');
INSERT INTO `destoon_setting` VALUES ('16', 'show_html', '0');
INSERT INTO `destoon_setting` VALUES ('16', 'php_list_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('16', 'htm_list_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('16', 'htm_list_prefix', 'mall_list_');
INSERT INTO `destoon_setting` VALUES ('16', 'list_html', '0');
INSERT INTO `destoon_setting` VALUES ('16', 'index_html', '0');
INSERT INTO `destoon_setting` VALUES ('16', 'hits', '1');
INSERT INTO `destoon_setting` VALUES ('16', 'max_width', '1000');
INSERT INTO `destoon_setting` VALUES ('16', 'pagesize', '20');
INSERT INTO `destoon_setting` VALUES ('16', 'page_inew', '12');
INSERT INTO `destoon_setting` VALUES ('16', 'page_irec', '5');
INSERT INTO `destoon_setting` VALUES ('16', 'page_subcat', '5');
INSERT INTO `destoon_setting` VALUES ('16', 'checkorder', '0');
INSERT INTO `destoon_setting` VALUES ('16', 'swfu', '1');
INSERT INTO `destoon_setting` VALUES ('16', 'level', '推荐商品');
INSERT INTO `destoon_setting` VALUES ('16', 'fulltext', '0');
INSERT INTO `destoon_setting` VALUES ('16', 'split', '0');
INSERT INTO `destoon_setting` VALUES ('16', 'keylink', '0');
INSERT INTO `destoon_setting` VALUES ('16', 'clear_link', '0');
INSERT INTO `destoon_setting` VALUES ('16', 'fields', 'itemid,title,thumb,linkurl,style,catid,areaid,brand,addtime,edittime,username,company,groupid,vip,qq,wx,ali,skype,validated,price,amount,orders,comments');
INSERT INTO `destoon_setting` VALUES ('16', 'save_remotepic', '0');
INSERT INTO `destoon_setting` VALUES ('16', 'cat_property', '0');
INSERT INTO `destoon_setting` VALUES ('16', 'order', 'editdate desc,vip desc,edittime desc');
INSERT INTO `destoon_setting` VALUES ('16', 'editor', 'Destoon');
INSERT INTO `destoon_setting` VALUES ('16', 'introduce_length', '0');
INSERT INTO `destoon_setting` VALUES ('16', 'thumb_height', '200');
INSERT INTO `destoon_setting` VALUES ('16', 'thumb_width', '200');
INSERT INTO `destoon_setting` VALUES ('16', 'template_view', '');
INSERT INTO `destoon_setting` VALUES ('16', 'template_my', '');
INSERT INTO `destoon_setting` VALUES ('16', 'template_compare', '');
INSERT INTO `destoon_setting` VALUES ('16', 'template_search', '');
INSERT INTO `destoon_setting` VALUES ('16', 'template_show', '');
INSERT INTO `destoon_setting` VALUES ('16', 'template_list', '');
INSERT INTO `destoon_setting` VALUES ('16', 'template_index', '');
INSERT INTO `destoon_setting` VALUES ('16', 'title_index', '{$seo_modulename}{$seo_delimiter}{$seo_page}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('16', 'title_list', '{$seo_catname}{$seo_cattitle}{$seo_page}{$seo_modulename}{$seo_delimiter}{$seo_sitename}{$seo_cattitle}{$seo_modulename}{$seo_sitename}{$seo_page}');
INSERT INTO `destoon_setting` VALUES ('16', 'title_show', '{$seo_showtitle}{$seo_delimiter}{$seo_catname}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('16', 'title_search', '');
INSERT INTO `destoon_setting` VALUES ('16', 'keywords_index', '{$seo_modulename}{$seo_sitename}{$seo_sitetitle}');
INSERT INTO `destoon_setting` VALUES ('16', 'keywords_list', '');
INSERT INTO `destoon_setting` VALUES ('16', 'keywords_show', '');
INSERT INTO `destoon_setting` VALUES ('16', 'keywords_search', '');
INSERT INTO `destoon_setting` VALUES ('16', 'description_index', '{$seo_modulename}{$seo_sitename}{$seo_sitetitle}');
INSERT INTO `destoon_setting` VALUES ('16', 'description_list', '');
INSERT INTO `destoon_setting` VALUES ('16', 'description_show', '{$seo_showtitle}{$seo_showintroduce}{$seo_catname}{$seo_catdescription}{$seo_modulename}{$seo_sitename}{$seo_sitedescription}');
INSERT INTO `destoon_setting` VALUES ('16', 'description_search', '');
INSERT INTO `destoon_setting` VALUES ('16', 'module', 'mall');
INSERT INTO `destoon_setting` VALUES ('16', 'mobile', 'http://demo.destoon.com/v7.0/mobile/mall/');
INSERT INTO `destoon_setting` VALUES ('17', 'limit_7', '100');
INSERT INTO `destoon_setting` VALUES ('17', 'free_limit_7', '-1');
INSERT INTO `destoon_setting` VALUES ('17', 'free_limit_6', '0');
INSERT INTO `destoon_setting` VALUES ('17', 'free_limit_5', '0');
INSERT INTO `destoon_setting` VALUES ('17', 'limit_5', '3');
INSERT INTO `destoon_setting` VALUES ('17', 'free_limit_4', '0');
INSERT INTO `destoon_setting` VALUES ('17', 'limit_4', '-1');
INSERT INTO `destoon_setting` VALUES ('17', 'free_limit_3', '0');
INSERT INTO `destoon_setting` VALUES ('17', 'limit_3', '-1');
INSERT INTO `destoon_setting` VALUES ('17', 'free_limit_2', '0');
INSERT INTO `destoon_setting` VALUES ('17', 'limit_2', '-1');
INSERT INTO `destoon_setting` VALUES ('17', 'free_limit_1', '-1');
INSERT INTO `destoon_setting` VALUES ('17', 'limit_1', '0');
INSERT INTO `destoon_setting` VALUES ('17', 'credit_refresh', '1');
INSERT INTO `destoon_setting` VALUES ('17', 'credit_color', '100');
INSERT INTO `destoon_setting` VALUES ('17', 'credit_del', '5');
INSERT INTO `destoon_setting` VALUES ('17', 'credit_add', '2');
INSERT INTO `destoon_setting` VALUES ('17', 'fee_award', '0');
INSERT INTO `destoon_setting` VALUES ('17', 'fee_back', '0');
INSERT INTO `destoon_setting` VALUES ('17', 'fee_period', '0');
INSERT INTO `destoon_setting` VALUES ('17', 'fee_view', '0');
INSERT INTO `destoon_setting` VALUES ('17', 'fee_add', '0');
INSERT INTO `destoon_setting` VALUES ('17', 'fee_currency', 'money');
INSERT INTO `destoon_setting` VALUES ('17', 'fee_mode', '1');
INSERT INTO `destoon_setting` VALUES ('17', 'question_add', '2');
INSERT INTO `destoon_setting` VALUES ('17', 'captcha_add', '2');
INSERT INTO `destoon_setting` VALUES ('17', 'check_add', '2');
INSERT INTO `destoon_setting` VALUES ('17', 'question_inquiry', '2');
INSERT INTO `destoon_setting` VALUES ('17', 'captcha_inquiry', '2');
INSERT INTO `destoon_setting` VALUES ('17', 'group_refresh', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('17', 'group_color', '7');
INSERT INTO `destoon_setting` VALUES ('17', 'group_search', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('17', 'group_contact', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('17', 'group_show', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('17', 'group_list', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('17', 'group_index', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('17', 'seo_description_search', '');
INSERT INTO `destoon_setting` VALUES ('17', 'seo_keywords_search', '');
INSERT INTO `destoon_setting` VALUES ('17', 'seo_title_search', '');
INSERT INTO `destoon_setting` VALUES ('17', 'seo_description_show', '');
INSERT INTO `destoon_setting` VALUES ('17', 'limit_6', '30');
INSERT INTO `destoon_setting` VALUES ('17', 'seo_keywords_show', '');
INSERT INTO `destoon_setting` VALUES ('17', 'seo_title_show', '{内容标题}{分隔符}{分类名称}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('17', 'seo_description_list', '');
INSERT INTO `destoon_setting` VALUES ('17', 'seo_keywords_list', '');
INSERT INTO `destoon_setting` VALUES ('17', 'seo_title_index', '{模块名称}{分隔符}{页码}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('17', 'seo_keywords_index', '');
INSERT INTO `destoon_setting` VALUES ('17', 'seo_description_index', '');
INSERT INTO `destoon_setting` VALUES ('17', 'seo_title_list', '{分类SEO标题}{页码}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('17', 'php_item_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('17', 'split', '0');
INSERT INTO `destoon_setting` VALUES ('17', 'fulltext', '0');
INSERT INTO `destoon_setting` VALUES ('17', 'level', '推荐团购');
INSERT INTO `destoon_setting` VALUES ('17', 'swfu', '1');
INSERT INTO `destoon_setting` VALUES ('17', 'page_subcat', '9');
INSERT INTO `destoon_setting` VALUES ('17', 'page_irec', '4');
INSERT INTO `destoon_setting` VALUES ('17', 'page_icat', '4');
INSERT INTO `destoon_setting` VALUES ('17', 'pagesize', '9');
INSERT INTO `destoon_setting` VALUES ('17', 'max_width', '1000');
INSERT INTO `destoon_setting` VALUES ('17', 'hits', '1');
INSERT INTO `destoon_setting` VALUES ('17', 'page_comment', '0');
INSERT INTO `destoon_setting` VALUES ('17', 'index_html', '0');
INSERT INTO `destoon_setting` VALUES ('17', 'list_html', '0');
INSERT INTO `destoon_setting` VALUES ('17', 'htm_list_prefix', 'group_list_');
INSERT INTO `destoon_setting` VALUES ('17', 'htm_list_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('17', 'php_list_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('17', 'show_html', '0');
INSERT INTO `destoon_setting` VALUES ('17', 'htm_item_prefix', 'group_info_');
INSERT INTO `destoon_setting` VALUES ('17', 'htm_item_urlid', '1');
INSERT INTO `destoon_setting` VALUES ('17', 'keylink', '0');
INSERT INTO `destoon_setting` VALUES ('17', 'clear_link', '0');
INSERT INTO `destoon_setting` VALUES ('17', 'save_remotepic', '0');
INSERT INTO `destoon_setting` VALUES ('17', 'cat_property', '0');
INSERT INTO `destoon_setting` VALUES ('17', 'fields', 'itemid,title,thumb,linkurl,style,catid,areaid,introduce,addtime,edittime,username,company,groupid,vip,qq,wx,ali,skype,validated,price,marketprice,savemoney,discount,sales,orders,minamount,amount');
INSERT INTO `destoon_setting` VALUES ('17', 'order', 'addtime desc');
INSERT INTO `destoon_setting` VALUES ('17', 'editor', 'Destoon');
INSERT INTO `destoon_setting` VALUES ('17', 'introduce_length', '120');
INSERT INTO `destoon_setting` VALUES ('17', 'thumb_height', '300');
INSERT INTO `destoon_setting` VALUES ('17', 'thumb_width', '400');
INSERT INTO `destoon_setting` VALUES ('17', 'template_buy', '');
INSERT INTO `destoon_setting` VALUES ('17', 'template_my', '');
INSERT INTO `destoon_setting` VALUES ('17', 'template_search', '');
INSERT INTO `destoon_setting` VALUES ('17', 'template_list', '');
INSERT INTO `destoon_setting` VALUES ('17', 'template_show', '');
INSERT INTO `destoon_setting` VALUES ('17', 'template_index', '');
INSERT INTO `destoon_setting` VALUES ('17', 'title_index', '{$seo_modulename}{$seo_delimiter}{$seo_page}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('17', 'title_list', '{$seo_cattitle}{$seo_page}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('17', 'title_show', '{$seo_showtitle}{$seo_delimiter}{$seo_catname}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('17', 'title_search', '');
INSERT INTO `destoon_setting` VALUES ('17', 'keywords_index', '');
INSERT INTO `destoon_setting` VALUES ('17', 'keywords_list', '');
INSERT INTO `destoon_setting` VALUES ('17', 'keywords_show', '');
INSERT INTO `destoon_setting` VALUES ('17', 'keywords_search', '');
INSERT INTO `destoon_setting` VALUES ('17', 'description_index', '');
INSERT INTO `destoon_setting` VALUES ('17', 'description_list', '');
INSERT INTO `destoon_setting` VALUES ('17', 'description_show', '');
INSERT INTO `destoon_setting` VALUES ('17', 'description_search', '');
INSERT INTO `destoon_setting` VALUES ('17', 'module', 'group');
INSERT INTO `destoon_setting` VALUES ('17', 'mobile', 'http://demo.destoon.com/v7.0/mobile/group/');
INSERT INTO `destoon_setting` VALUES ('18', 'reply_limit_7', '100');
INSERT INTO `destoon_setting` VALUES ('18', 'join_limit_7', '0');
INSERT INTO `destoon_setting` VALUES ('18', 'group_limit_7', '10');
INSERT INTO `destoon_setting` VALUES ('18', 'free_limit_7', '-1');
INSERT INTO `destoon_setting` VALUES ('18', 'limit_7', '100');
INSERT INTO `destoon_setting` VALUES ('18', 'reply_limit_6', '30');
INSERT INTO `destoon_setting` VALUES ('18', 'join_limit_6', '0');
INSERT INTO `destoon_setting` VALUES ('18', 'group_limit_6', '3');
INSERT INTO `destoon_setting` VALUES ('18', 'limit_6', '30');
INSERT INTO `destoon_setting` VALUES ('18', 'free_limit_6', '0');
INSERT INTO `destoon_setting` VALUES ('18', 'reply_limit_5', '10');
INSERT INTO `destoon_setting` VALUES ('18', 'join_limit_5', '0');
INSERT INTO `destoon_setting` VALUES ('18', 'group_limit_5', '1');
INSERT INTO `destoon_setting` VALUES ('18', 'free_limit_5', '0');
INSERT INTO `destoon_setting` VALUES ('18', 'limit_5', '3');
INSERT INTO `destoon_setting` VALUES ('18', 'reply_limit_4', '-1');
INSERT INTO `destoon_setting` VALUES ('18', 'join_limit_4', '-1');
INSERT INTO `destoon_setting` VALUES ('18', 'group_limit_4', '-1');
INSERT INTO `destoon_setting` VALUES ('18', 'free_limit_4', '0');
INSERT INTO `destoon_setting` VALUES ('18', 'limit_4', '-1');
INSERT INTO `destoon_setting` VALUES ('18', 'reply_limit_3', '-1');
INSERT INTO `destoon_setting` VALUES ('18', 'join_limit_3', '-1');
INSERT INTO `destoon_setting` VALUES ('18', 'group_limit_3', '-1');
INSERT INTO `destoon_setting` VALUES ('18', 'free_limit_3', '0');
INSERT INTO `destoon_setting` VALUES ('18', 'limit_3', '-1');
INSERT INTO `destoon_setting` VALUES ('18', 'reply_limit_2', '-1');
INSERT INTO `destoon_setting` VALUES ('18', 'join_limit_2', '-1');
INSERT INTO `destoon_setting` VALUES ('18', 'group_limit_2', '-1');
INSERT INTO `destoon_setting` VALUES ('18', 'free_limit_2', '0');
INSERT INTO `destoon_setting` VALUES ('18', 'limit_2', '-1');
INSERT INTO `destoon_setting` VALUES ('18', 'reply_limit_1', '0');
INSERT INTO `destoon_setting` VALUES ('18', 'join_limit_1', '0');
INSERT INTO `destoon_setting` VALUES ('18', 'group_limit_1', '0');
INSERT INTO `destoon_setting` VALUES ('18', 'free_limit_1', '-1');
INSERT INTO `destoon_setting` VALUES ('18', 'limit_1', '0');
INSERT INTO `destoon_setting` VALUES ('18', 'credit_del_reply', '2');
INSERT INTO `destoon_setting` VALUES ('18', 'credit_reply', '1');
INSERT INTO `destoon_setting` VALUES ('18', 'credit_del', '5');
INSERT INTO `destoon_setting` VALUES ('18', 'credit_level', '10');
INSERT INTO `destoon_setting` VALUES ('18', 'credit_add', '3');
INSERT INTO `destoon_setting` VALUES ('18', 'pre_view', '200');
INSERT INTO `destoon_setting` VALUES ('18', 'fee_award', '100');
INSERT INTO `destoon_setting` VALUES ('18', 'fee_back', '0');
INSERT INTO `destoon_setting` VALUES ('18', 'fee_period', '0');
INSERT INTO `destoon_setting` VALUES ('18', 'fee_view', '0');
INSERT INTO `destoon_setting` VALUES ('18', 'fee_add', '0');
INSERT INTO `destoon_setting` VALUES ('18', 'fee_currency', 'money');
INSERT INTO `destoon_setting` VALUES ('18', 'fee_mode', '1');
INSERT INTO `destoon_setting` VALUES ('18', 'question_reply', '2');
INSERT INTO `destoon_setting` VALUES ('18', 'captcha_reply', '2');
INSERT INTO `destoon_setting` VALUES ('18', 'check_reply', '2');
INSERT INTO `destoon_setting` VALUES ('18', 'question_add', '2');
INSERT INTO `destoon_setting` VALUES ('18', 'captcha_add', '2');
INSERT INTO `destoon_setting` VALUES ('18', 'check_add', '2');
INSERT INTO `destoon_setting` VALUES ('18', 'question_group', '2');
INSERT INTO `destoon_setting` VALUES ('18', 'captcha_group', '2');
INSERT INTO `destoon_setting` VALUES ('18', 'check_group', '2');
INSERT INTO `destoon_setting` VALUES ('18', 'group_reply', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('18', 'group_search', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('18', 'group_show', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('18', 'group_list', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('18', 'group_index', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('18', 'seo_description_search', '');
INSERT INTO `destoon_setting` VALUES ('18', 'seo_keywords_search', '');
INSERT INTO `destoon_setting` VALUES ('18', 'seo_title_search', '');
INSERT INTO `destoon_setting` VALUES ('18', 'seo_description_show', '');
INSERT INTO `destoon_setting` VALUES ('18', 'seo_description_list', '');
INSERT INTO `destoon_setting` VALUES ('18', 'seo_title_show', '{内容标题}{分隔符}{页码}{$GRP[\'title\']}{$MOD[\'seo_name\']}{分隔符}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('18', 'seo_keywords_show', '');
INSERT INTO `destoon_setting` VALUES ('18', 'seo_keywords_list', '');
INSERT INTO `destoon_setting` VALUES ('18', 'seo_title_list', '{分类SEO标题}{页码}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('18', 'seo_keywords_index', '');
INSERT INTO `destoon_setting` VALUES ('18', 'seo_description_index', '');
INSERT INTO `destoon_setting` VALUES ('18', 'seo_title_index', '{模块名称}{分隔符}{页码}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('18', 'seo_name', '圈');
INSERT INTO `destoon_setting` VALUES ('18', 'php_item_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('18', 'htm_item_urlid', '4');
INSERT INTO `destoon_setting` VALUES ('18', 'htm_item_prefix', '');
INSERT INTO `destoon_setting` VALUES ('18', 'show_html', '0');
INSERT INTO `destoon_setting` VALUES ('18', 'php_list_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('18', 'htm_list_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('18', 'htm_list_prefix', '');
INSERT INTO `destoon_setting` VALUES ('18', 'list_html', '0');
INSERT INTO `destoon_setting` VALUES ('18', 'index_html', '0');
INSERT INTO `destoon_setting` VALUES ('18', 'hits', '1');
INSERT INTO `destoon_setting` VALUES ('18', 'max_width', '750');
INSERT INTO `destoon_setting` VALUES ('18', 'reply_pagesize', '10');
INSERT INTO `destoon_setting` VALUES ('18', 'pagesize', '20');
INSERT INTO `destoon_setting` VALUES ('18', 'maxontop', '5');
INSERT INTO `destoon_setting` VALUES ('18', 'page_islide', '3');
INSERT INTO `destoon_setting` VALUES ('18', 'page_icat', '6');
INSERT INTO `destoon_setting` VALUES ('18', 'floor', '沙发|藤椅|板凳|马扎|地板');
INSERT INTO `destoon_setting` VALUES ('18', 'manage_reason', '1');
INSERT INTO `destoon_setting` VALUES ('18', 'manage_message', '1');
INSERT INTO `destoon_setting` VALUES ('18', 'manage_reasons', '广告/SPAM|恶意灌水|违规内容|文不对题|重复发帖|我很赞同|精品文章|原创内容|感谢分享');
INSERT INTO `destoon_setting` VALUES ('18', 'swfu', '1');
INSERT INTO `destoon_setting` VALUES ('18', 'level', '精华1|精华2');
INSERT INTO `destoon_setting` VALUES ('18', 'fulltext', '0');
INSERT INTO `destoon_setting` VALUES ('18', 'split', '0');
INSERT INTO `destoon_setting` VALUES ('18', 'keylink', '1');
INSERT INTO `destoon_setting` VALUES ('18', 'clear_alink', '1');
INSERT INTO `destoon_setting` VALUES ('18', 'clear_link', '0');
INSERT INTO `destoon_setting` VALUES ('18', 'cat_property', '0');
INSERT INTO `destoon_setting` VALUES ('18', 'save_remotepic', '0');
INSERT INTO `destoon_setting` VALUES ('18', 'fields', 'itemid,title,ontop,video,level,thumb,linkurl,style,catid,introduce,hits,addtime,edittime,username,passport,reply,replyer,replytime ');
INSERT INTO `destoon_setting` VALUES ('18', 'order', 'addtime desc');
INSERT INTO `destoon_setting` VALUES ('18', 'editor', 'Destoon');
INSERT INTO `destoon_setting` VALUES ('18', 'introduce_length', '0');
INSERT INTO `destoon_setting` VALUES ('18', 'thumb_height', '180');
INSERT INTO `destoon_setting` VALUES ('18', 'template_my_fans', '');
INSERT INTO `destoon_setting` VALUES ('18', 'template_my_manage', '');
INSERT INTO `destoon_setting` VALUES ('18', 'thumb_width', '240');
INSERT INTO `destoon_setting` VALUES ('18', 'template_my_join', '');
INSERT INTO `destoon_setting` VALUES ('18', 'template_my_reply', '');
INSERT INTO `destoon_setting` VALUES ('18', 'template_my_group', '');
INSERT INTO `destoon_setting` VALUES ('18', 'template_my', '');
INSERT INTO `destoon_setting` VALUES ('18', 'template_fans', '');
INSERT INTO `destoon_setting` VALUES ('18', 'template_group', '');
INSERT INTO `destoon_setting` VALUES ('18', 'template_search', '');
INSERT INTO `destoon_setting` VALUES ('18', 'template_show', '');
INSERT INTO `destoon_setting` VALUES ('18', 'template_list', '');
INSERT INTO `destoon_setting` VALUES ('18', 'template_index', '');
INSERT INTO `destoon_setting` VALUES ('18', 'title_index', '{$seo_modulename}{$seo_delimiter}{$seo_page}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('18', 'title_list', '{$seo_cattitle}{$seo_page}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('18', 'title_show', '{$seo_showtitle}{$seo_delimiter}{$seo_page}{$GRP[\'title\']}{$MOD[\'seo_name\']}{$seo_delimiter}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('18', 'title_search', '');
INSERT INTO `destoon_setting` VALUES ('18', 'keywords_index', '');
INSERT INTO `destoon_setting` VALUES ('18', 'keywords_list', '');
INSERT INTO `destoon_setting` VALUES ('18', 'keywords_show', '');
INSERT INTO `destoon_setting` VALUES ('18', 'keywords_search', '');
INSERT INTO `destoon_setting` VALUES ('18', 'description_index', '');
INSERT INTO `destoon_setting` VALUES ('18', 'description_list', '');
INSERT INTO `destoon_setting` VALUES ('18', 'description_show', '');
INSERT INTO `destoon_setting` VALUES ('18', 'description_search', '');
INSERT INTO `destoon_setting` VALUES ('18', 'module', 'club');
INSERT INTO `destoon_setting` VALUES ('18', 'mobile', 'http://demo.destoon.com/v7.0/mobile/club/');
INSERT INTO `destoon_setting` VALUES ('21', 'free_limit_7', '-1');
INSERT INTO `destoon_setting` VALUES ('21', 'limit_7', '100');
INSERT INTO `destoon_setting` VALUES ('21', 'free_limit_6', '0');
INSERT INTO `destoon_setting` VALUES ('21', 'limit_6', '30');
INSERT INTO `destoon_setting` VALUES ('21', 'free_limit_5', '0');
INSERT INTO `destoon_setting` VALUES ('21', 'limit_5', '3');
INSERT INTO `destoon_setting` VALUES ('21', 'free_limit_4', '0');
INSERT INTO `destoon_setting` VALUES ('21', 'limit_4', '-1');
INSERT INTO `destoon_setting` VALUES ('21', 'free_limit_3', '0');
INSERT INTO `destoon_setting` VALUES ('21', 'limit_3', '-1');
INSERT INTO `destoon_setting` VALUES ('21', 'free_limit_2', '0');
INSERT INTO `destoon_setting` VALUES ('21', 'limit_2', '-1');
INSERT INTO `destoon_setting` VALUES ('21', 'free_limit_1', '-1');
INSERT INTO `destoon_setting` VALUES ('21', 'limit_1', '0');
INSERT INTO `destoon_setting` VALUES ('21', 'credit_color', '100');
INSERT INTO `destoon_setting` VALUES ('21', 'credit_del', '5');
INSERT INTO `destoon_setting` VALUES ('21', 'credit_add', '2');
INSERT INTO `destoon_setting` VALUES ('21', 'pre_view', '200');
INSERT INTO `destoon_setting` VALUES ('21', 'fee_award', '100');
INSERT INTO `destoon_setting` VALUES ('21', 'fee_back', '0');
INSERT INTO `destoon_setting` VALUES ('21', 'fee_period', '0');
INSERT INTO `destoon_setting` VALUES ('21', 'fee_view', '0');
INSERT INTO `destoon_setting` VALUES ('21', 'fee_add', '0');
INSERT INTO `destoon_setting` VALUES ('21', 'fee_currency', 'money');
INSERT INTO `destoon_setting` VALUES ('21', 'fee_mode', '0');
INSERT INTO `destoon_setting` VALUES ('21', 'question_add', '2');
INSERT INTO `destoon_setting` VALUES ('21', 'captcha_add', '2');
INSERT INTO `destoon_setting` VALUES ('21', 'check_add', '2');
INSERT INTO `destoon_setting` VALUES ('21', 'group_color', '7');
INSERT INTO `destoon_setting` VALUES ('21', 'group_search', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('21', 'group_show', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('21', 'group_list', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('21', 'group_index', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('21', 'seo_description_search', '');
INSERT INTO `destoon_setting` VALUES ('21', 'seo_keywords_search', '');
INSERT INTO `destoon_setting` VALUES ('21', 'seo_title_search', '');
INSERT INTO `destoon_setting` VALUES ('21', 'seo_description_show', '');
INSERT INTO `destoon_setting` VALUES ('21', 'seo_title_show', '{内容标题}{分隔符}{分类名称}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('21', 'seo_keywords_show', '');
INSERT INTO `destoon_setting` VALUES ('21', 'seo_description_list', '');
INSERT INTO `destoon_setting` VALUES ('21', 'seo_keywords_list', '');
INSERT INTO `destoon_setting` VALUES ('21', 'seo_title_list', '{分类SEO标题}{页码}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('21', 'seo_description_index', '');
INSERT INTO `destoon_setting` VALUES ('21', 'seo_keywords_index', '');
INSERT INTO `destoon_setting` VALUES ('21', 'php_item_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('21', 'seo_title_index', '{模块名称}{分隔符}{页码}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('21', 'htm_item_urlid', '1');
INSERT INTO `destoon_setting` VALUES ('21', 'htm_item_prefix', '');
INSERT INTO `destoon_setting` VALUES ('21', 'show_html', '0');
INSERT INTO `destoon_setting` VALUES ('21', 'php_list_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('21', 'htm_list_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('21', 'htm_list_prefix', '');
INSERT INTO `destoon_setting` VALUES ('21', 'list_html', '0');
INSERT INTO `destoon_setting` VALUES ('21', 'index_html', '0');
INSERT INTO `destoon_setting` VALUES ('21', 'show_np', '1');
INSERT INTO `destoon_setting` VALUES ('21', 'page_comment', '0');
INSERT INTO `destoon_setting` VALUES ('21', 'hits', '1');
INSERT INTO `destoon_setting` VALUES ('21', 'max_width', '800');
INSERT INTO `destoon_setting` VALUES ('21', 'page_shits', '10');
INSERT INTO `destoon_setting` VALUES ('21', 'page_srec', '10');
INSERT INTO `destoon_setting` VALUES ('21', 'page_srecimg', '4');
INSERT INTO `destoon_setting` VALUES ('21', 'page_srelate', '10');
INSERT INTO `destoon_setting` VALUES ('21', 'page_lhits', '10');
INSERT INTO `destoon_setting` VALUES ('21', 'page_lrec', '10');
INSERT INTO `destoon_setting` VALUES ('21', 'page_lrecimg', '4');
INSERT INTO `destoon_setting` VALUES ('21', 'show_lcat', '1');
INSERT INTO `destoon_setting` VALUES ('21', 'page_child', '6');
INSERT INTO `destoon_setting` VALUES ('21', 'pagesize', '20');
INSERT INTO `destoon_setting` VALUES ('21', 'page_ihits', '10');
INSERT INTO `destoon_setting` VALUES ('21', 'page_irecimg', '6');
INSERT INTO `destoon_setting` VALUES ('21', 'show_icat', '1');
INSERT INTO `destoon_setting` VALUES ('21', 'page_icat', '6');
INSERT INTO `destoon_setting` VALUES ('21', 'page_islide', '3');
INSERT INTO `destoon_setting` VALUES ('21', 'swfu', '2');
INSERT INTO `destoon_setting` VALUES ('21', 'fulltext', '1');
INSERT INTO `destoon_setting` VALUES ('21', 'level', '推荐文章|幻灯图片|推荐图文|头条相关|头条推荐');
INSERT INTO `destoon_setting` VALUES ('21', 'split', '0');
INSERT INTO `destoon_setting` VALUES ('21', 'keylink', '1');
INSERT INTO `destoon_setting` VALUES ('21', 'clear_link', '0');
INSERT INTO `destoon_setting` VALUES ('21', 'save_remotepic', '0');
INSERT INTO `destoon_setting` VALUES ('21', 'cat_property', '0');
INSERT INTO `destoon_setting` VALUES ('21', 'order', 'addtime desc');
INSERT INTO `destoon_setting` VALUES ('21', 'fields', 'itemid,title,thumb,linkurl,style,catid,introduce,addtime,edittime,username,islink,hits');
INSERT INTO `destoon_setting` VALUES ('21', 'editor', 'Destoon');
INSERT INTO `destoon_setting` VALUES ('21', 'introduce_length', '120');
INSERT INTO `destoon_setting` VALUES ('21', 'thumb_height', '180');
INSERT INTO `destoon_setting` VALUES ('21', 'thumb_width', '240');
INSERT INTO `destoon_setting` VALUES ('21', 'template_my', '');
INSERT INTO `destoon_setting` VALUES ('21', 'template_search', '');
INSERT INTO `destoon_setting` VALUES ('21', 'template_list', '');
INSERT INTO `destoon_setting` VALUES ('21', 'template_show', '');
INSERT INTO `destoon_setting` VALUES ('21', 'template_index', '');
INSERT INTO `destoon_setting` VALUES ('21', 'title_index', '{$seo_modulename}{$seo_delimiter}{$seo_page}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('21', 'title_list', '{$seo_cattitle}{$seo_page}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('21', 'title_show', '{$seo_showtitle}{$seo_delimiter}{$seo_catname}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('21', 'title_search', '');
INSERT INTO `destoon_setting` VALUES ('21', 'keywords_index', '');
INSERT INTO `destoon_setting` VALUES ('21', 'keywords_list', '');
INSERT INTO `destoon_setting` VALUES ('21', 'keywords_show', '');
INSERT INTO `destoon_setting` VALUES ('21', 'keywords_search', '');
INSERT INTO `destoon_setting` VALUES ('21', 'description_index', '');
INSERT INTO `destoon_setting` VALUES ('21', 'description_list', '');
INSERT INTO `destoon_setting` VALUES ('21', 'description_show', '');
INSERT INTO `destoon_setting` VALUES ('21', 'description_search', '');
INSERT INTO `destoon_setting` VALUES ('21', 'module', 'article');
INSERT INTO `destoon_setting` VALUES ('21', 'mobile', 'http://demo.destoon.com/v7.0/mobile/news/');
INSERT INTO `destoon_setting` VALUES ('22', 'free_limit_7', '-1');
INSERT INTO `destoon_setting` VALUES ('22', 'limit_7', '100');
INSERT INTO `destoon_setting` VALUES ('22', 'free_limit_6', '0');
INSERT INTO `destoon_setting` VALUES ('22', 'limit_6', '30');
INSERT INTO `destoon_setting` VALUES ('22', 'free_limit_5', '0');
INSERT INTO `destoon_setting` VALUES ('22', 'limit_5', '3');
INSERT INTO `destoon_setting` VALUES ('22', 'free_limit_4', '0');
INSERT INTO `destoon_setting` VALUES ('22', 'limit_4', '-1');
INSERT INTO `destoon_setting` VALUES ('22', 'free_limit_3', '0');
INSERT INTO `destoon_setting` VALUES ('22', 'limit_3', '-1');
INSERT INTO `destoon_setting` VALUES ('22', 'free_limit_2', '0');
INSERT INTO `destoon_setting` VALUES ('22', 'limit_2', '-1');
INSERT INTO `destoon_setting` VALUES ('22', 'free_limit_1', '-1');
INSERT INTO `destoon_setting` VALUES ('22', 'limit_1', '0');
INSERT INTO `destoon_setting` VALUES ('22', 'credit_refresh', '1');
INSERT INTO `destoon_setting` VALUES ('22', 'credit_color', '100');
INSERT INTO `destoon_setting` VALUES ('22', 'credit_del', '5');
INSERT INTO `destoon_setting` VALUES ('22', 'credit_add', '2');
INSERT INTO `destoon_setting` VALUES ('22', 'fee_award', '0');
INSERT INTO `destoon_setting` VALUES ('22', 'fee_back', '0');
INSERT INTO `destoon_setting` VALUES ('22', 'fee_period', '0');
INSERT INTO `destoon_setting` VALUES ('22', 'fee_view', '0');
INSERT INTO `destoon_setting` VALUES ('22', 'fee_add', '0');
INSERT INTO `destoon_setting` VALUES ('22', 'fee_currency', 'money');
INSERT INTO `destoon_setting` VALUES ('22', 'check_add', '2');
INSERT INTO `destoon_setting` VALUES ('22', 'captcha_add', '2');
INSERT INTO `destoon_setting` VALUES ('22', 'question_add', '2');
INSERT INTO `destoon_setting` VALUES ('22', 'fee_mode', '1');
INSERT INTO `destoon_setting` VALUES ('22', 'question_message', '2');
INSERT INTO `destoon_setting` VALUES ('22', 'group_search', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('22', 'group_color', '7');
INSERT INTO `destoon_setting` VALUES ('22', 'group_refresh', '5,6,7');
INSERT INTO `destoon_setting` VALUES ('22', 'captcha_message', '2');
INSERT INTO `destoon_setting` VALUES ('22', 'group_contact', '6,7');
INSERT INTO `destoon_setting` VALUES ('22', 'seo_title_search', '');
INSERT INTO `destoon_setting` VALUES ('22', 'seo_keywords_search', '');
INSERT INTO `destoon_setting` VALUES ('22', 'group_show', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('22', 'group_list', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('22', 'seo_description_search', '');
INSERT INTO `destoon_setting` VALUES ('22', 'group_index', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('22', 'seo_keywords_list', '');
INSERT INTO `destoon_setting` VALUES ('22', 'seo_description_list', '');
INSERT INTO `destoon_setting` VALUES ('22', 'seo_title_show', '{内容标题}{分隔符}{分类名称}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('22', 'seo_keywords_show', '');
INSERT INTO `destoon_setting` VALUES ('22', 'seo_description_show', '');
INSERT INTO `destoon_setting` VALUES ('22', 'seo_title_list', '{分类SEO标题}{页码}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('22', 'seo_description_index', '');
INSERT INTO `destoon_setting` VALUES ('22', 'seo_keywords_index', '');
INSERT INTO `destoon_setting` VALUES ('22', 'seo_title_index', '{模块名称}{分隔符}{页码}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('22', 'php_item_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('22', 'htm_item_urlid', '1');
INSERT INTO `destoon_setting` VALUES ('22', 'htm_item_prefix', '');
INSERT INTO `destoon_setting` VALUES ('22', 'php_list_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('22', 'show_html', '0');
INSERT INTO `destoon_setting` VALUES ('22', 'htm_list_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('22', 'htm_list_prefix', '');
INSERT INTO `destoon_setting` VALUES ('22', 'list_html', '0');
INSERT INTO `destoon_setting` VALUES ('22', 'index_html', '0');
INSERT INTO `destoon_setting` VALUES ('22', 'page_comment', '0');
INSERT INTO `destoon_setting` VALUES ('22', 'hits', '1');
INSERT INTO `destoon_setting` VALUES ('22', 'max_width', '1000');
INSERT INTO `destoon_setting` VALUES ('22', 'page_srelate', '10');
INSERT INTO `destoon_setting` VALUES ('22', 'show_message', '1');
INSERT INTO `destoon_setting` VALUES ('22', 'page_lkw', '10');
INSERT INTO `destoon_setting` VALUES ('22', 'show_larea', '1');
INSERT INTO `destoon_setting` VALUES ('22', 'show_lcat', '1');
INSERT INTO `destoon_setting` VALUES ('22', 'pagesize', '20');
INSERT INTO `destoon_setting` VALUES ('22', 'page_ihits', '9');
INSERT INTO `destoon_setting` VALUES ('22', 'show_iarea', '1');
INSERT INTO `destoon_setting` VALUES ('22', 'show_icat', '1');
INSERT INTO `destoon_setting` VALUES ('22', 'page_icat', '8');
INSERT INTO `destoon_setting` VALUES ('22', 'page_irec', '12');
INSERT INTO `destoon_setting` VALUES ('22', 'page_subcat', '5');
INSERT INTO `destoon_setting` VALUES ('22', 'swfu', '2');
INSERT INTO `destoon_setting` VALUES ('22', 'level', '推荐信息');
INSERT INTO `destoon_setting` VALUES ('22', 'fulltext', '0');
INSERT INTO `destoon_setting` VALUES ('22', 'split', '0');
INSERT INTO `destoon_setting` VALUES ('22', 'message_ask', '请问我这个地方有加盟商了吗？|我想加盟，请来电话告诉我具体细节。|初步打算加盟贵公司，请寄资料。|请问贵公司哪里有样板店或直营店？|想了解加盟细节，请尽快寄一份资料。 ');
INSERT INTO `destoon_setting` VALUES ('22', 'cat_property', '0');
INSERT INTO `destoon_setting` VALUES ('22', 'save_remotepic', '0');
INSERT INTO `destoon_setting` VALUES ('22', 'clear_link', '0');
INSERT INTO `destoon_setting` VALUES ('22', 'keylink', '0');
INSERT INTO `destoon_setting` VALUES ('22', 'fields', 'itemid,title,thumb,linkurl,style,catid,areaid,introduce,addtime,edittime,username,company,groupid,vip,qq,wx,ali,skype,validated,islink,hits');
INSERT INTO `destoon_setting` VALUES ('22', 'order', 'edittime desc');
INSERT INTO `destoon_setting` VALUES ('22', 'editor', 'Destoon');
INSERT INTO `destoon_setting` VALUES ('22', 'introduce_length', '120');
INSERT INTO `destoon_setting` VALUES ('22', 'thumb_height', '200');
INSERT INTO `destoon_setting` VALUES ('22', 'template_message', '');
INSERT INTO `destoon_setting` VALUES ('22', 'thumb_width', '200');
INSERT INTO `destoon_setting` VALUES ('22', 'template_search', '');
INSERT INTO `destoon_setting` VALUES ('22', 'template_my', '');
INSERT INTO `destoon_setting` VALUES ('22', 'template_show', '');
INSERT INTO `destoon_setting` VALUES ('22', 'template_list', '');
INSERT INTO `destoon_setting` VALUES ('22', 'template_index', '');
INSERT INTO `destoon_setting` VALUES ('22', 'title_index', '{$seo_modulename}{$seo_delimiter}{$seo_page}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('22', 'title_list', '{$seo_cattitle}{$seo_page}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('22', 'title_show', '{$seo_showtitle}{$seo_delimiter}{$seo_catname}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('22', 'title_search', '');
INSERT INTO `destoon_setting` VALUES ('22', 'keywords_index', '');
INSERT INTO `destoon_setting` VALUES ('22', 'keywords_list', '');
INSERT INTO `destoon_setting` VALUES ('22', 'keywords_show', '');
INSERT INTO `destoon_setting` VALUES ('22', 'keywords_search', '');
INSERT INTO `destoon_setting` VALUES ('22', 'description_index', '');
INSERT INTO `destoon_setting` VALUES ('22', 'description_list', '');
INSERT INTO `destoon_setting` VALUES ('22', 'description_show', '');
INSERT INTO `destoon_setting` VALUES ('22', 'description_search', '');
INSERT INTO `destoon_setting` VALUES ('22', 'module', 'info');
INSERT INTO `destoon_setting` VALUES ('22', 'mobile', 'http://demo.destoon.com/v7.0/mobile/invest/');
INSERT INTO `destoon_setting` VALUES ('pay-alipay', 'percent', '0');
INSERT INTO `destoon_setting` VALUES ('pay-alipay', 'notify', '');
INSERT INTO `destoon_setting` VALUES ('pay-alipay', 'keycode', '');
INSERT INTO `destoon_setting` VALUES ('pay-alipay', 'partnerid', '');
INSERT INTO `destoon_setting` VALUES ('pay-alipay', 'email', '');
INSERT INTO `destoon_setting` VALUES ('pay-alipay', 'order', '1');
INSERT INTO `destoon_setting` VALUES ('pay-alipay', 'name', '支付宝');
INSERT INTO `destoon_setting` VALUES ('pay-alipay', 'enable', '0');
INSERT INTO `destoon_setting` VALUES ('pay-aliwap', 'percent', '0');
INSERT INTO `destoon_setting` VALUES ('pay-aliwap', 'notify', '');
INSERT INTO `destoon_setting` VALUES ('pay-aliwap', 'keycode', '');
INSERT INTO `destoon_setting` VALUES ('pay-aliwap', 'partnerid', '');
INSERT INTO `destoon_setting` VALUES ('pay-aliwap', 'order', '2');
INSERT INTO `destoon_setting` VALUES ('pay-aliwap', 'name', '支付宝');
INSERT INTO `destoon_setting` VALUES ('pay-aliwap', 'enable', '0');
INSERT INTO `destoon_setting` VALUES ('pay-weixin', 'percent', '2');
INSERT INTO `destoon_setting` VALUES ('pay-weixin', 'notify', '');
INSERT INTO `destoon_setting` VALUES ('pay-weixin', 'keycode', '');
INSERT INTO `destoon_setting` VALUES ('pay-weixin', 'appid', '');
INSERT INTO `destoon_setting` VALUES ('pay-weixin', 'partnerid', '');
INSERT INTO `destoon_setting` VALUES ('pay-weixin', 'order', '3');
INSERT INTO `destoon_setting` VALUES ('pay-weixin', 'name', '微信支付');
INSERT INTO `destoon_setting` VALUES ('pay-weixin', 'enable', '0');
INSERT INTO `destoon_setting` VALUES ('pay-tenpay', 'percent', '0');
INSERT INTO `destoon_setting` VALUES ('pay-tenpay', 'notify', '');
INSERT INTO `destoon_setting` VALUES ('pay-tenpay', 'keycode', '');
INSERT INTO `destoon_setting` VALUES ('pay-tenpay', 'partnerid', '');
INSERT INTO `destoon_setting` VALUES ('pay-tenpay', 'order', '4');
INSERT INTO `destoon_setting` VALUES ('pay-tenpay', 'name', '财付通');
INSERT INTO `destoon_setting` VALUES ('pay-tenpay', 'enable', '0');
INSERT INTO `destoon_setting` VALUES ('pay-upay', 'percent', '0');
INSERT INTO `destoon_setting` VALUES ('pay-upay', 'notify', '');
INSERT INTO `destoon_setting` VALUES ('pay-upay', 'keycode', '');
INSERT INTO `destoon_setting` VALUES ('pay-upay', 'cert', '');
INSERT INTO `destoon_setting` VALUES ('pay-upay', 'partnerid', '');
INSERT INTO `destoon_setting` VALUES ('pay-upay', 'order', '5');
INSERT INTO `destoon_setting` VALUES ('pay-upay', 'name', '中国银联');
INSERT INTO `destoon_setting` VALUES ('pay-upay', 'enable', '0');
INSERT INTO `destoon_setting` VALUES ('pay-chinabank', 'order', '6');
INSERT INTO `destoon_setting` VALUES ('pay-chinabank', 'partnerid', '');
INSERT INTO `destoon_setting` VALUES ('pay-chinabank', 'keycode', '');
INSERT INTO `destoon_setting` VALUES ('pay-chinabank', 'percent', '0');
INSERT INTO `destoon_setting` VALUES ('pay-chinabank', 'name', '网银在线');
INSERT INTO `destoon_setting` VALUES ('pay-chinabank', 'notify', '');
INSERT INTO `destoon_setting` VALUES ('pay-chinabank', 'enable', '0');
INSERT INTO `destoon_setting` VALUES ('pay-yeepay', 'percent', '0');
INSERT INTO `destoon_setting` VALUES ('pay-yeepay', 'keycode', '');
INSERT INTO `destoon_setting` VALUES ('pay-yeepay', 'partnerid', '');
INSERT INTO `destoon_setting` VALUES ('pay-yeepay', 'order', '7');
INSERT INTO `destoon_setting` VALUES ('pay-yeepay', 'name', '易宝支付');
INSERT INTO `destoon_setting` VALUES ('pay-yeepay', 'enable', '0');
INSERT INTO `destoon_setting` VALUES ('pay-kq99bill', 'percent', '0');
INSERT INTO `destoon_setting` VALUES ('pay-kq99bill', 'notify', '');
INSERT INTO `destoon_setting` VALUES ('pay-kq99bill', 'cert', '');
INSERT INTO `destoon_setting` VALUES ('pay-kq99bill', 'partnerid', '');
INSERT INTO `destoon_setting` VALUES ('pay-kq99bill', 'order', '8');
INSERT INTO `destoon_setting` VALUES ('pay-kq99bill', 'name', '快钱支付');
INSERT INTO `destoon_setting` VALUES ('pay-kq99bill', 'enable', '0');
INSERT INTO `destoon_setting` VALUES ('pay-chinapay', 'percent', '1');
INSERT INTO `destoon_setting` VALUES ('pay-chinapay', 'partnerid', '');
INSERT INTO `destoon_setting` VALUES ('pay-chinapay', 'order', '9');
INSERT INTO `destoon_setting` VALUES ('pay-chinapay', 'name', '银联在线');
INSERT INTO `destoon_setting` VALUES ('pay-chinapay', 'enable', '0');
INSERT INTO `destoon_setting` VALUES ('pay-paypal', 'percent', '0');
INSERT INTO `destoon_setting` VALUES ('pay-paypal', 'currency', 'USD');
INSERT INTO `destoon_setting` VALUES ('pay-paypal', 'keycode', '');
INSERT INTO `destoon_setting` VALUES ('pay-paypal', 'notify', '');
INSERT INTO `destoon_setting` VALUES ('pay-paypal', 'partnerid', '');
INSERT INTO `destoon_setting` VALUES ('pay-paypal', 'order', '10');
INSERT INTO `destoon_setting` VALUES ('pay-paypal', 'name', '贝宝');
INSERT INTO `destoon_setting` VALUES ('pay-paypal', 'enable', '0');
INSERT INTO `destoon_setting` VALUES ('oauth-qq', 'sync', '0');
INSERT INTO `destoon_setting` VALUES ('oauth-qq', 'key', '');
INSERT INTO `destoon_setting` VALUES ('oauth-qq', 'id', '');
INSERT INTO `destoon_setting` VALUES ('oauth-qq', 'order', '1');
INSERT INTO `destoon_setting` VALUES ('oauth-qq', 'name', 'QQ登录');
INSERT INTO `destoon_setting` VALUES ('oauth-qq', 'enable', '0');
INSERT INTO `destoon_setting` VALUES ('oauth-sina', 'sync', '0');
INSERT INTO `destoon_setting` VALUES ('oauth-sina', 'key', '');
INSERT INTO `destoon_setting` VALUES ('oauth-sina', 'id', '');
INSERT INTO `destoon_setting` VALUES ('oauth-sina', 'order', '2');
INSERT INTO `destoon_setting` VALUES ('oauth-sina', 'name', '新浪微博');
INSERT INTO `destoon_setting` VALUES ('oauth-sina', 'enable', '0');
INSERT INTO `destoon_setting` VALUES ('oauth-baidu', 'key', '');
INSERT INTO `destoon_setting` VALUES ('oauth-baidu', 'id', '');
INSERT INTO `destoon_setting` VALUES ('oauth-baidu', 'order', '3');
INSERT INTO `destoon_setting` VALUES ('oauth-baidu', 'name', '百度');
INSERT INTO `destoon_setting` VALUES ('oauth-baidu', 'enable', '0');
INSERT INTO `destoon_setting` VALUES ('oauth-netease', 'key', '');
INSERT INTO `destoon_setting` VALUES ('oauth-netease', 'id', '');
INSERT INTO `destoon_setting` VALUES ('oauth-netease', 'enable', '0');
INSERT INTO `destoon_setting` VALUES ('oauth-netease', 'order', '4');
INSERT INTO `destoon_setting` VALUES ('oauth-netease', 'name', '网易通行证');
INSERT INTO `destoon_setting` VALUES ('oauth-wechat', 'key', '');
INSERT INTO `destoon_setting` VALUES ('oauth-wechat', 'id', '');
INSERT INTO `destoon_setting` VALUES ('oauth-wechat', 'order', '5');
INSERT INTO `destoon_setting` VALUES ('oauth-wechat', 'name', '微信');
INSERT INTO `destoon_setting` VALUES ('oauth-wechat', 'enable', '0');
INSERT INTO `destoon_setting` VALUES ('oauth-taobao', 'id', '');
INSERT INTO `destoon_setting` VALUES ('oauth-taobao', 'order', '6');
INSERT INTO `destoon_setting` VALUES ('oauth-taobao', 'name', '淘宝');
INSERT INTO `destoon_setting` VALUES ('oauth-taobao', 'enable', '0');
INSERT INTO `destoon_setting` VALUES ('oauth-taobao', 'key', '');
INSERT INTO `destoon_setting` VALUES ('weixin', 'bind', '点击可绑定会员帐号、查看会员信息、收发站内信件、管理我的订单等服务内容');
INSERT INTO `destoon_setting` VALUES ('weixin', 'welcome', '感谢您的关注，请点击菜单查看相应的服务');
INSERT INTO `destoon_setting` VALUES ('weixin', 'auto', '');
INSERT INTO `destoon_setting` VALUES ('weixin', 'weixin', '');
INSERT INTO `destoon_setting` VALUES ('weixin', 'aeskey', '');
INSERT INTO `destoon_setting` VALUES ('weixin', 'apptoken', '');
INSERT INTO `destoon_setting` VALUES ('weixin', 'appsecret', '');
INSERT INTO `destoon_setting` VALUES ('weixin', 'appid', '');
INSERT INTO `destoon_setting` VALUES ('weixin', 'credit', '10');
INSERT INTO `destoon_setting` VALUES ('weixin-menu', 'menu', 'a:3:{i:0;a:6:{i:0;a:2:{s:4:\"name\";s:6:\"最新\";s:3:\"key\";s:0:\"\";}i:1;a:2:{s:4:\"name\";s:6:\"资讯\";s:3:\"key\";s:7:\"V_mid21\";}i:2;a:2:{s:4:\"name\";s:6:\"供应\";s:3:\"key\";s:6:\"V_mid5\";}i:3;a:2:{s:4:\"name\";s:6:\"求购\";s:3:\"key\";s:6:\"V_mid6\";}i:4;a:2:{s:4:\"name\";s:6:\"商城\";s:3:\"key\";s:7:\"V_mid16\";}i:5;a:2:{s:4:\"name\";s:6:\"招商\";s:3:\"key\";s:7:\"V_mid22\";}}i:1;a:6:{i:0;a:2:{s:4:\"name\";s:6:\"会员\";s:3:\"key\";s:8:\"V_member\";}i:1;a:2:{s:4:\"name\";s:0:\"\";s:3:\"key\";s:0:\"\";}i:2;a:2:{s:4:\"name\";s:0:\"\";s:3:\"key\";s:0:\"\";}i:3;a:2:{s:4:\"name\";s:0:\"\";s:3:\"key\";s:0:\"\";}i:4;a:2:{s:4:\"name\";s:0:\"\";s:3:\"key\";s:0:\"\";}i:5;a:2:{s:4:\"name\";s:0:\"\";s:3:\"key\";s:0:\"\";}}i:2;a:6:{i:0;a:2:{s:4:\"name\";s:6:\"更多\";s:3:\"key\";s:37:\"http://localhost:8088/destoon/mobile/\";}i:1;a:2:{s:4:\"name\";s:0:\"\";s:3:\"key\";s:0:\"\";}i:2;a:2:{s:4:\"name\";s:0:\"\";s:3:\"key\";s:0:\"\";}i:3;a:2:{s:4:\"name\";s:0:\"\";s:3:\"key\";s:0:\"\";}i:4;a:2:{s:4:\"name\";s:0:\"\";s:3:\"key\";s:0:\"\";}i:5;a:2:{s:4:\"name\";s:0:\"\";s:3:\"key\";s:0:\"\";}}}');
INSERT INTO `destoon_setting` VALUES ('group-1', 'listorder', '1');
INSERT INTO `destoon_setting` VALUES ('group-1', 'reg', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'type', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'edit_limit', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'refresh_limit', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'day_limit', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'hour_limit', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'add_limit', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'copy', '1');
INSERT INTO `destoon_setting` VALUES ('group-1', 'delete', '1');
INSERT INTO `destoon_setting` VALUES ('group-1', 'vweixin', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'vdeposit', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'vcompany', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'vtruename', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'vmobile', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'resume', '1');
INSERT INTO `destoon_setting` VALUES ('group-1', 'vemail', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'moduleids', '16,5,6,17,7,8,21,22,13,9,10,12,14,15,18');
INSERT INTO `destoon_setting` VALUES ('group-1', 'link_limit', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'honor_limit', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'page_limit', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'news_limit', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'kf', '1');
INSERT INTO `destoon_setting` VALUES ('group-1', 'stats', '1');
INSERT INTO `destoon_setting` VALUES ('group-1', 'map', '1');
INSERT INTO `destoon_setting` VALUES ('group-1', 'style', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'main_d', '1,5');
INSERT INTO `destoon_setting` VALUES ('group-1', 'main_c', '1,5');
INSERT INTO `destoon_setting` VALUES ('group-1', 'home_main', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'side_d', '0,3,6');
INSERT INTO `destoon_setting` VALUES ('group-1', 'side_c', '0,3,6');
INSERT INTO `destoon_setting` VALUES ('group-1', 'home_side', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'menu_d', '0,6,7,11');
INSERT INTO `destoon_setting` VALUES ('group-1', 'menu_c', '0,6,7,11');
INSERT INTO `destoon_setting` VALUES ('group-1', 'home_menu', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'home', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'styleid', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'homepage', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'type_limit', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'price_limit', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'inquiry_limit', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'message_limit', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'promo_limit', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'express_limit', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'address_limit', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'alert_limit', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'favorite_limit', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'friend_limit', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'inbox_limit', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'chat', '1');
INSERT INTO `destoon_setting` VALUES ('group-1', 'ad', '1');
INSERT INTO `destoon_setting` VALUES ('group-1', 'spread', '1');
INSERT INTO `destoon_setting` VALUES ('group-1', 'sms', '1');
INSERT INTO `destoon_setting` VALUES ('group-1', 'sendmail', '1');
INSERT INTO `destoon_setting` VALUES ('group-1', 'trade_order', '1');
INSERT INTO `destoon_setting` VALUES ('group-1', 'group_order', '1');
INSERT INTO `destoon_setting` VALUES ('group-1', 'mail', '1');
INSERT INTO `destoon_setting` VALUES ('group-1', 'ask', '1');
INSERT INTO `destoon_setting` VALUES ('group-1', 'cash', '1');
INSERT INTO `destoon_setting` VALUES ('group-1', 'question', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'captcha', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'check', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'uploadpt', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'uploadcredit', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'uploadday', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'uploadlimit', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'uploadsize', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'uploadtype', '');
INSERT INTO `destoon_setting` VALUES ('group-1', 'upload', '1');
INSERT INTO `destoon_setting` VALUES ('group-1', 'editor', 'Destoon');
INSERT INTO `destoon_setting` VALUES ('group-1', 'grade', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'biz', '1');
INSERT INTO `destoon_setting` VALUES ('group-1', 'commission', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'discount', '100');
INSERT INTO `destoon_setting` VALUES ('group-1', 'fee', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'fee_mode', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'listorder', '2');
INSERT INTO `destoon_setting` VALUES ('group-2', 'reg', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'type', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'vmobile', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'edit_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-2', 'refresh_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-2', 'day_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-2', 'hour_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-2', 'add_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-2', 'copy', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'delete', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'vweixin', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'vdeposit', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'vcompany', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'vtruename', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'vemail', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'resume', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'moduleids', '6');
INSERT INTO `destoon_setting` VALUES ('group-2', 'link_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-2', 'honor_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-2', 'page_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-2', 'news_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-2', 'kf', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'stats', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'map', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'style', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'main_d', '5');
INSERT INTO `destoon_setting` VALUES ('group-2', 'main_c', '5');
INSERT INTO `destoon_setting` VALUES ('group-2', 'home_main', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'side_d', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'side_c', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'home_side', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'menu_d', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'menu_c', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'home_menu', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'home', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'styleid', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'homepage', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'type_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-2', 'price_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-2', 'inquiry_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-2', 'message_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-2', 'promo_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-2', 'express_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-2', 'address_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-2', 'alert_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-2', 'favorite_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-2', 'friend_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-2', 'inbox_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-2', 'chat', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'ad', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'group_order', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'spread', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'trade_order', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'sendmail', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'sms', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'mail', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'ask', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'cash', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'question', '1');
INSERT INTO `destoon_setting` VALUES ('group-2', 'captcha', '1');
INSERT INTO `destoon_setting` VALUES ('group-2', 'check', '1');
INSERT INTO `destoon_setting` VALUES ('group-2', 'uploadpt', '1');
INSERT INTO `destoon_setting` VALUES ('group-2', 'uploadcredit', '10');
INSERT INTO `destoon_setting` VALUES ('group-2', 'uploadday', '10');
INSERT INTO `destoon_setting` VALUES ('group-2', 'uploadlimit', '2');
INSERT INTO `destoon_setting` VALUES ('group-2', 'uploadsize', '200');
INSERT INTO `destoon_setting` VALUES ('group-2', 'uploadtype', '');
INSERT INTO `destoon_setting` VALUES ('group-2', 'upload', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'editor', 'Basic');
INSERT INTO `destoon_setting` VALUES ('group-2', 'grade', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'biz', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'commission', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'discount', '100');
INSERT INTO `destoon_setting` VALUES ('group-2', 'fee', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'fee_mode', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'listorder', '3');
INSERT INTO `destoon_setting` VALUES ('group-3', 'reg', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'type', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'refresh_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-3', 'day_limit', '3');
INSERT INTO `destoon_setting` VALUES ('group-3', 'edit_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-3', 'hour_limit', '1');
INSERT INTO `destoon_setting` VALUES ('group-3', 'add_limit', '30');
INSERT INTO `destoon_setting` VALUES ('group-3', 'copy', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'vweixin', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'delete', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'vdeposit', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'vcompany', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'vtruename', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'vmobile', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'vemail', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'resume', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'moduleids', '5,6,8,22,9');
INSERT INTO `destoon_setting` VALUES ('group-3', 'link_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-3', 'honor_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-3', 'page_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-3', 'news_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-3', 'kf', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'stats', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'map', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'style', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'main_d', '5');
INSERT INTO `destoon_setting` VALUES ('group-3', 'main_c', '5');
INSERT INTO `destoon_setting` VALUES ('group-3', 'home_main', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'side_d', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'side_c', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'home_side', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'menu_d', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'menu_c', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'home_menu', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'home', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'styleid', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'homepage', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'type_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-3', 'price_limit', '10');
INSERT INTO `destoon_setting` VALUES ('group-3', 'inquiry_limit', '30');
INSERT INTO `destoon_setting` VALUES ('group-3', 'message_limit', '30');
INSERT INTO `destoon_setting` VALUES ('group-3', 'promo_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-3', 'express_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-3', 'address_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-3', 'alert_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-3', 'favorite_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-3', 'friend_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-3', 'inbox_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-3', 'chat', '1');
INSERT INTO `destoon_setting` VALUES ('group-3', 'ad', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'spread', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'group_order', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'trade_order', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'sendmail', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'sms', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'mail', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'ask', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'cash', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'question', '1');
INSERT INTO `destoon_setting` VALUES ('group-3', 'captcha', '1');
INSERT INTO `destoon_setting` VALUES ('group-3', 'check', '1');
INSERT INTO `destoon_setting` VALUES ('group-3', 'uploadpt', '1');
INSERT INTO `destoon_setting` VALUES ('group-3', 'uploadcredit', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'uploadday', '10');
INSERT INTO `destoon_setting` VALUES ('group-3', 'uploadlimit', '5');
INSERT INTO `destoon_setting` VALUES ('group-3', 'uploadsize', '500');
INSERT INTO `destoon_setting` VALUES ('group-3', 'uploadtype', '');
INSERT INTO `destoon_setting` VALUES ('group-3', 'upload', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'editor', 'Basic');
INSERT INTO `destoon_setting` VALUES ('group-3', 'grade', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'biz', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'commission', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'discount', '100');
INSERT INTO `destoon_setting` VALUES ('group-3', 'fee', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'fee_mode', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'listorder', '4');
INSERT INTO `destoon_setting` VALUES ('group-4', 'reg', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'type', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'edit_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-4', 'refresh_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-4', 'day_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-4', 'hour_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-4', 'add_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-4', 'copy', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'delete', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'vweixin', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'vdeposit', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'vcompany', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'vtruename', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'vmobile', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'vemail', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'resume', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'moduleids', '6');
INSERT INTO `destoon_setting` VALUES ('group-4', 'link_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-4', 'honor_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-4', 'page_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-4', 'news_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-4', 'kf', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'stats', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'map', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'style', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'main_c', '5');
INSERT INTO `destoon_setting` VALUES ('group-4', 'main_d', '5');
INSERT INTO `destoon_setting` VALUES ('group-4', 'home_main', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'side_d', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'menu_c', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'menu_d', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'side_c', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'home_side', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'home_menu', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'home', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'styleid', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'homepage', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'type_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-4', 'price_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-4', 'inquiry_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-4', 'message_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-4', 'promo_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-4', 'express_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-4', 'address_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-4', 'alert_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-4', 'favorite_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-4', 'friend_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-4', 'inbox_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-4', 'trade_order', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'group_order', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'spread', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'ad', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'chat', '1');
INSERT INTO `destoon_setting` VALUES ('group-4', 'sendmail', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'sms', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'mail', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'ask', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'cash', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'question', '1');
INSERT INTO `destoon_setting` VALUES ('group-4', 'captcha', '1');
INSERT INTO `destoon_setting` VALUES ('group-4', 'check', '1');
INSERT INTO `destoon_setting` VALUES ('group-4', 'uploadpt', '1');
INSERT INTO `destoon_setting` VALUES ('group-4', 'uploadcredit', '5');
INSERT INTO `destoon_setting` VALUES ('group-4', 'uploadday', '10');
INSERT INTO `destoon_setting` VALUES ('group-4', 'uploadlimit', '5');
INSERT INTO `destoon_setting` VALUES ('group-4', 'uploadsize', '500');
INSERT INTO `destoon_setting` VALUES ('group-4', 'uploadtype', '');
INSERT INTO `destoon_setting` VALUES ('group-4', 'upload', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'editor', 'Basic');
INSERT INTO `destoon_setting` VALUES ('group-4', 'grade', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'biz', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'commission', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'discount', '100');
INSERT INTO `destoon_setting` VALUES ('group-4', 'fee', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'fee_mode', '0');
INSERT INTO `destoon_setting` VALUES ('group-5', 'listorder', '5');
INSERT INTO `destoon_setting` VALUES ('group-5', 'reg', '1');
INSERT INTO `destoon_setting` VALUES ('group-5', 'type', '0');
INSERT INTO `destoon_setting` VALUES ('group-5', 'edit_limit', '3');
INSERT INTO `destoon_setting` VALUES ('group-5', 'day_limit', '3');
INSERT INTO `destoon_setting` VALUES ('group-5', 'refresh_limit', '43200');
INSERT INTO `destoon_setting` VALUES ('group-5', 'hour_limit', '1');
INSERT INTO `destoon_setting` VALUES ('group-5', 'add_limit', '60');
INSERT INTO `destoon_setting` VALUES ('group-5', 'copy', '1');
INSERT INTO `destoon_setting` VALUES ('group-5', 'delete', '1');
INSERT INTO `destoon_setting` VALUES ('group-5', 'vweixin', '0');
INSERT INTO `destoon_setting` VALUES ('group-5', 'vdeposit', '0');
INSERT INTO `destoon_setting` VALUES ('group-5', 'vcompany', '0');
INSERT INTO `destoon_setting` VALUES ('group-5', 'vtruename', '0');
INSERT INTO `destoon_setting` VALUES ('group-5', 'vmobile', '0');
INSERT INTO `destoon_setting` VALUES ('group-5', 'vemail', '0');
INSERT INTO `destoon_setting` VALUES ('group-5', 'resume', '1');
INSERT INTO `destoon_setting` VALUES ('group-5', 'moduleids', '5,6,10,12,18');
INSERT INTO `destoon_setting` VALUES ('group-5', 'link_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-5', 'honor_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-5', 'page_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-5', 'news_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-5', 'kf', '0');
INSERT INTO `destoon_setting` VALUES ('group-5', 'stats', '0');
INSERT INTO `destoon_setting` VALUES ('group-5', 'map', '0');
INSERT INTO `destoon_setting` VALUES ('group-5', 'style', '0');
INSERT INTO `destoon_setting` VALUES ('group-5', 'main_d', '5');
INSERT INTO `destoon_setting` VALUES ('group-5', 'main_c', '5');
INSERT INTO `destoon_setting` VALUES ('group-5', 'home_main', '0');
INSERT INTO `destoon_setting` VALUES ('group-5', 'side_d', '0');
INSERT INTO `destoon_setting` VALUES ('group-5', 'side_c', '0');
INSERT INTO `destoon_setting` VALUES ('group-5', 'home_side', '0');
INSERT INTO `destoon_setting` VALUES ('group-5', 'menu_d', '0');
INSERT INTO `destoon_setting` VALUES ('group-5', 'menu_c', '0');
INSERT INTO `destoon_setting` VALUES ('group-5', 'home_menu', '0');
INSERT INTO `destoon_setting` VALUES ('group-5', 'home', '0');
INSERT INTO `destoon_setting` VALUES ('group-5', 'styleid', '0');
INSERT INTO `destoon_setting` VALUES ('group-5', 'homepage', '0');
INSERT INTO `destoon_setting` VALUES ('group-5', 'type_limit', '10');
INSERT INTO `destoon_setting` VALUES ('group-5', 'price_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-5', 'inquiry_limit', '3');
INSERT INTO `destoon_setting` VALUES ('group-5', 'message_limit', '10');
INSERT INTO `destoon_setting` VALUES ('group-5', 'promo_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-5', 'express_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-5', 'address_limit', '10');
INSERT INTO `destoon_setting` VALUES ('group-5', 'alert_limit', '3');
INSERT INTO `destoon_setting` VALUES ('group-5', 'favorite_limit', '20');
INSERT INTO `destoon_setting` VALUES ('group-5', 'friend_limit', '10');
INSERT INTO `destoon_setting` VALUES ('group-5', 'inbox_limit', '20');
INSERT INTO `destoon_setting` VALUES ('group-5', 'chat', '1');
INSERT INTO `destoon_setting` VALUES ('group-5', 'ad', '1');
INSERT INTO `destoon_setting` VALUES ('group-5', 'spread', '0');
INSERT INTO `destoon_setting` VALUES ('group-5', 'group_order', '0');
INSERT INTO `destoon_setting` VALUES ('group-5', 'trade_order', '0');
INSERT INTO `destoon_setting` VALUES ('group-5', 'sendmail', '1');
INSERT INTO `destoon_setting` VALUES ('group-5', 'sms', '1');
INSERT INTO `destoon_setting` VALUES ('group-5', 'mail', '1');
INSERT INTO `destoon_setting` VALUES ('group-5', 'ask', '0');
INSERT INTO `destoon_setting` VALUES ('group-5', 'cash', '0');
INSERT INTO `destoon_setting` VALUES ('group-5', 'question', '1');
INSERT INTO `destoon_setting` VALUES ('group-5', 'captcha', '1');
INSERT INTO `destoon_setting` VALUES ('group-5', 'check', '1');
INSERT INTO `destoon_setting` VALUES ('group-5', 'uploadpt', '1');
INSERT INTO `destoon_setting` VALUES ('group-5', 'uploadcredit', '1');
INSERT INTO `destoon_setting` VALUES ('group-5', 'uploadday', '20');
INSERT INTO `destoon_setting` VALUES ('group-5', 'uploadlimit', '5');
INSERT INTO `destoon_setting` VALUES ('group-5', 'uploadsize', '');
INSERT INTO `destoon_setting` VALUES ('group-5', 'uploadtype', '');
INSERT INTO `destoon_setting` VALUES ('group-5', 'upload', '1');
INSERT INTO `destoon_setting` VALUES ('group-5', 'editor', 'Simple');
INSERT INTO `destoon_setting` VALUES ('group-5', 'grade', '1');
INSERT INTO `destoon_setting` VALUES ('group-5', 'biz', '0');
INSERT INTO `destoon_setting` VALUES ('group-5', 'commission', '0');
INSERT INTO `destoon_setting` VALUES ('group-5', 'discount', '100');
INSERT INTO `destoon_setting` VALUES ('group-5', 'fee', '0');
INSERT INTO `destoon_setting` VALUES ('group-5', 'fee_mode', '0');
INSERT INTO `destoon_setting` VALUES ('group-6', 'listorder', '6');
INSERT INTO `destoon_setting` VALUES ('group-6', 'reg', '1');
INSERT INTO `destoon_setting` VALUES ('group-6', 'type', '1');
INSERT INTO `destoon_setting` VALUES ('group-6', 'day_limit', '5');
INSERT INTO `destoon_setting` VALUES ('group-6', 'refresh_limit', '21600');
INSERT INTO `destoon_setting` VALUES ('group-6', 'edit_limit', '0');
INSERT INTO `destoon_setting` VALUES ('group-6', 'hour_limit', '2');
INSERT INTO `destoon_setting` VALUES ('group-6', 'add_limit', '60');
INSERT INTO `destoon_setting` VALUES ('group-6', 'copy', '1');
INSERT INTO `destoon_setting` VALUES ('group-6', 'delete', '1');
INSERT INTO `destoon_setting` VALUES ('group-6', 'vweixin', '0');
INSERT INTO `destoon_setting` VALUES ('group-6', 'vtruename', '0');
INSERT INTO `destoon_setting` VALUES ('group-6', 'vcompany', '0');
INSERT INTO `destoon_setting` VALUES ('group-6', 'vdeposit', '0');
INSERT INTO `destoon_setting` VALUES ('group-6', 'vmobile', '0');
INSERT INTO `destoon_setting` VALUES ('group-6', 'vemail', '0');
INSERT INTO `destoon_setting` VALUES ('group-6', 'resume', '0');
INSERT INTO `destoon_setting` VALUES ('group-6', 'moduleids', '16,5,6,17,7,8,22,13,9,10,12');
INSERT INTO `destoon_setting` VALUES ('group-6', 'link_limit', '20');
INSERT INTO `destoon_setting` VALUES ('group-6', 'honor_limit', '10');
INSERT INTO `destoon_setting` VALUES ('group-6', 'page_limit', '5');
INSERT INTO `destoon_setting` VALUES ('group-6', 'news_limit', '20');
INSERT INTO `destoon_setting` VALUES ('group-6', 'kf', '0');
INSERT INTO `destoon_setting` VALUES ('group-6', 'map', '1');
INSERT INTO `destoon_setting` VALUES ('group-6', 'stats', '0');
INSERT INTO `destoon_setting` VALUES ('group-6', 'style', '0');
INSERT INTO `destoon_setting` VALUES ('group-6', 'main_d', '0,1,2');
INSERT INTO `destoon_setting` VALUES ('group-6', 'main_c', '0,1,2,3,4,5,6');
INSERT INTO `destoon_setting` VALUES ('group-6', 'home_main', '0');
INSERT INTO `destoon_setting` VALUES ('group-6', 'side_c', '0,1,2,3,4,5,6');
INSERT INTO `destoon_setting` VALUES ('group-6', 'side_d', '0,2,4,6');
INSERT INTO `destoon_setting` VALUES ('group-6', 'home_menu', '0');
INSERT INTO `destoon_setting` VALUES ('group-6', 'menu_c', '0,1,2,3,4,5,6,7,8,9,10,11');
INSERT INTO `destoon_setting` VALUES ('group-6', 'menu_d', '0,1,2,3,4,6,7');
INSERT INTO `destoon_setting` VALUES ('group-6', 'home_side', '0');
INSERT INTO `destoon_setting` VALUES ('group-6', 'home', '0');
INSERT INTO `destoon_setting` VALUES ('group-6', 'styleid', '0');
INSERT INTO `destoon_setting` VALUES ('group-6', 'type_limit', '10');
INSERT INTO `destoon_setting` VALUES ('group-6', 'homepage', '1');
INSERT INTO `destoon_setting` VALUES ('group-6', 'price_limit', '3');
INSERT INTO `destoon_setting` VALUES ('group-6', 'inquiry_limit', '10');
INSERT INTO `destoon_setting` VALUES ('group-6', 'message_limit', '20');
INSERT INTO `destoon_setting` VALUES ('group-6', 'promo_limit', '3');
INSERT INTO `destoon_setting` VALUES ('group-6', 'express_limit', '5');
INSERT INTO `destoon_setting` VALUES ('group-6', 'address_limit', '10');
INSERT INTO `destoon_setting` VALUES ('group-6', 'alert_limit', '5');
INSERT INTO `destoon_setting` VALUES ('group-6', 'favorite_limit', '50');
INSERT INTO `destoon_setting` VALUES ('group-6', 'friend_limit', '50');
INSERT INTO `destoon_setting` VALUES ('group-6', 'inbox_limit', '50');
INSERT INTO `destoon_setting` VALUES ('group-6', 'group_order', '1');
INSERT INTO `destoon_setting` VALUES ('group-6', 'spread', '0');
INSERT INTO `destoon_setting` VALUES ('group-6', 'ad', '1');
INSERT INTO `destoon_setting` VALUES ('group-6', 'chat', '1');
INSERT INTO `destoon_setting` VALUES ('group-6', 'trade_order', '1');
INSERT INTO `destoon_setting` VALUES ('group-6', 'sendmail', '1');
INSERT INTO `destoon_setting` VALUES ('group-6', 'sms', '1');
INSERT INTO `destoon_setting` VALUES ('group-6', 'mail', '1');
INSERT INTO `destoon_setting` VALUES ('group-6', 'ask', '1');
INSERT INTO `destoon_setting` VALUES ('group-6', 'cash', '0');
INSERT INTO `destoon_setting` VALUES ('group-6', 'question', '1');
INSERT INTO `destoon_setting` VALUES ('group-6', 'captcha', '1');
INSERT INTO `destoon_setting` VALUES ('group-6', 'check', '1');
INSERT INTO `destoon_setting` VALUES ('group-6', 'uploadday', '50');
INSERT INTO `destoon_setting` VALUES ('group-6', 'uploadcredit', '2');
INSERT INTO `destoon_setting` VALUES ('group-6', 'uploadpt', '0');
INSERT INTO `destoon_setting` VALUES ('group-6', 'uploadlimit', '5');
INSERT INTO `destoon_setting` VALUES ('group-6', 'uploadsize', '');
INSERT INTO `destoon_setting` VALUES ('group-6', 'uploadtype', '');
INSERT INTO `destoon_setting` VALUES ('group-6', 'editor', 'Destoon');
INSERT INTO `destoon_setting` VALUES ('group-6', 'upload', '1');
INSERT INTO `destoon_setting` VALUES ('group-6', 'grade', '1');
INSERT INTO `destoon_setting` VALUES ('group-6', 'biz', '1');
INSERT INTO `destoon_setting` VALUES ('group-6', 'commission', '0');
INSERT INTO `destoon_setting` VALUES ('group-6', 'discount', '100');
INSERT INTO `destoon_setting` VALUES ('group-6', 'fee', '0');
INSERT INTO `destoon_setting` VALUES ('group-6', 'fee_mode', '0');
INSERT INTO `destoon_setting` VALUES ('group-7', 'listorder', '7');
INSERT INTO `destoon_setting` VALUES ('group-7', 'reg', '0');
INSERT INTO `destoon_setting` VALUES ('group-7', 'type', '1');
INSERT INTO `destoon_setting` VALUES ('group-7', 'edit_limit', '0');
INSERT INTO `destoon_setting` VALUES ('group-7', 'refresh_limit', '3600');
INSERT INTO `destoon_setting` VALUES ('group-7', 'day_limit', '10');
INSERT INTO `destoon_setting` VALUES ('group-7', 'hour_limit', '5');
INSERT INTO `destoon_setting` VALUES ('group-7', 'add_limit', '0');
INSERT INTO `destoon_setting` VALUES ('group-7', 'copy', '1');
INSERT INTO `destoon_setting` VALUES ('group-7', 'delete', '1');
INSERT INTO `destoon_setting` VALUES ('group-7', 'vweixin', '0');
INSERT INTO `destoon_setting` VALUES ('group-7', 'vdeposit', '0');
INSERT INTO `destoon_setting` VALUES ('group-7', 'vcompany', '0');
INSERT INTO `destoon_setting` VALUES ('group-7', 'vtruename', '0');
INSERT INTO `destoon_setting` VALUES ('group-7', 'vmobile', '0');
INSERT INTO `destoon_setting` VALUES ('group-7', 'resume', '0');
INSERT INTO `destoon_setting` VALUES ('group-7', 'vemail', '1');
INSERT INTO `destoon_setting` VALUES ('group-7', 'moduleids', '16,5,6,17,7,8,21,22,13,9,10,12,14,15,18');
INSERT INTO `destoon_setting` VALUES ('group-7', 'link_limit', '0');
INSERT INTO `destoon_setting` VALUES ('group-7', 'kf', '1');
INSERT INTO `destoon_setting` VALUES ('group-7', 'news_limit', '0');
INSERT INTO `destoon_setting` VALUES ('group-7', 'page_limit', '10');
INSERT INTO `destoon_setting` VALUES ('group-7', 'honor_limit', '0');
INSERT INTO `destoon_setting` VALUES ('group-7', 'stats', '1');
INSERT INTO `destoon_setting` VALUES ('group-7', 'map', '1');
INSERT INTO `destoon_setting` VALUES ('group-7', 'style', '1');
INSERT INTO `destoon_setting` VALUES ('group-7', 'main_d', '0,1,2,7');
INSERT INTO `destoon_setting` VALUES ('group-7', 'main_c', '0,1,2,4,5,6,7');
INSERT INTO `destoon_setting` VALUES ('group-7', 'home_main', '1');
INSERT INTO `destoon_setting` VALUES ('group-7', 'side_c', '0,1,2,3,4,5,6');
INSERT INTO `destoon_setting` VALUES ('group-7', 'side_d', '0,1,2,4,6');
INSERT INTO `destoon_setting` VALUES ('group-7', 'home_side', '1');
INSERT INTO `destoon_setting` VALUES ('group-7', 'menu_d', '0,1,2,3,4,5,6,7,8,9,10,11,12,13');
INSERT INTO `destoon_setting` VALUES ('group-7', 'home', '1');
INSERT INTO `destoon_setting` VALUES ('group-7', 'home_menu', '1');
INSERT INTO `destoon_setting` VALUES ('group-7', 'menu_c', '0,1,2,3,4,5,6,7,8,9,10,11,12,13');
INSERT INTO `destoon_setting` VALUES ('group-7', 'styleid', '2');
INSERT INTO `destoon_setting` VALUES ('group-7', 'homepage', '1');
INSERT INTO `destoon_setting` VALUES ('group-7', 'type_limit', '20');
INSERT INTO `destoon_setting` VALUES ('group-7', 'price_limit', '20');
INSERT INTO `destoon_setting` VALUES ('group-7', 'inquiry_limit', '50');
INSERT INTO `destoon_setting` VALUES ('group-7', 'message_limit', '100');
INSERT INTO `destoon_setting` VALUES ('group-7', 'promo_limit', '5');
INSERT INTO `destoon_setting` VALUES ('group-7', 'express_limit', '10');
INSERT INTO `destoon_setting` VALUES ('group-7', 'address_limit', '10');
INSERT INTO `destoon_setting` VALUES ('group-7', 'alert_limit', '10');
INSERT INTO `destoon_setting` VALUES ('group-7', 'favorite_limit', '100');
INSERT INTO `destoon_setting` VALUES ('group-7', 'friend_limit', '200');
INSERT INTO `destoon_setting` VALUES ('group-7', 'inbox_limit', '500');
INSERT INTO `destoon_setting` VALUES ('group-7', 'chat', '1');
INSERT INTO `destoon_setting` VALUES ('group-7', 'ad', '1');
INSERT INTO `destoon_setting` VALUES ('group-7', 'spread', '1');
INSERT INTO `destoon_setting` VALUES ('group-7', 'group_order', '1');
INSERT INTO `destoon_setting` VALUES ('group-7', 'trade_order', '1');
INSERT INTO `destoon_setting` VALUES ('group-7', 'sendmail', '1');
INSERT INTO `destoon_setting` VALUES ('group-7', 'sms', '1');
INSERT INTO `destoon_setting` VALUES ('group-7', 'mail', '1');
INSERT INTO `destoon_setting` VALUES ('group-7', 'ask', '1');
INSERT INTO `destoon_setting` VALUES ('group-7', 'cash', '1');
INSERT INTO `destoon_setting` VALUES ('group-7', 'question', '0');
INSERT INTO `destoon_setting` VALUES ('group-7', 'captcha', '0');
INSERT INTO `destoon_setting` VALUES ('group-7', 'check', '0');
INSERT INTO `destoon_setting` VALUES ('group-7', 'uploadpt', '0');
INSERT INTO `destoon_setting` VALUES ('group-7', 'uploadcredit', '0');
INSERT INTO `destoon_setting` VALUES ('group-7', 'uploadday', '100');
INSERT INTO `destoon_setting` VALUES ('group-7', 'uploadlimit', '10');
INSERT INTO `destoon_setting` VALUES ('group-7', 'uploadsize', '');
INSERT INTO `destoon_setting` VALUES ('group-7', 'uploadtype', '');
INSERT INTO `destoon_setting` VALUES ('group-7', 'upload', '1');
INSERT INTO `destoon_setting` VALUES ('group-7', 'editor', 'Destoon');
INSERT INTO `destoon_setting` VALUES ('group-7', 'grade', '1');
INSERT INTO `destoon_setting` VALUES ('group-7', 'biz', '1');
INSERT INTO `destoon_setting` VALUES ('group-7', 'commission', '0');
INSERT INTO `destoon_setting` VALUES ('group-7', 'discount', '');
INSERT INTO `destoon_setting` VALUES ('group-7', 'fee', '2000');
INSERT INTO `destoon_setting` VALUES ('group-7', 'fee_mode', '1');
INSERT INTO `destoon_setting` VALUES ('destoon', 'backtime', '1529998019');

-- ----------------------------
-- Table structure for destoon_sms
-- ----------------------------
DROP TABLE IF EXISTS `destoon_sms`;
CREATE TABLE `destoon_sms` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `mobile` varchar(30) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `word` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `sendtime` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL,
  `code` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='短信记录';

-- ----------------------------
-- Records of destoon_sms
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_special_11
-- ----------------------------
DROP TABLE IF EXISTS `destoon_special_11`;
CREATE TABLE `destoon_special_11` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `areaid` int(10) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `style` varchar(50) NOT NULL DEFAULT '',
  `introduce` varchar(255) NOT NULL DEFAULT '',
  `tag` varchar(100) NOT NULL DEFAULT '',
  `keyword` varchar(255) NOT NULL DEFAULT '',
  `pptword` varchar(255) NOT NULL DEFAULT '',
  `items` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `comments` int(10) unsigned NOT NULL DEFAULT '0',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `banner` varchar(255) NOT NULL DEFAULT '',
  `cfg_photo` smallint(4) unsigned NOT NULL DEFAULT '0',
  `cfg_video` smallint(4) unsigned NOT NULL DEFAULT '0',
  `cfg_type` smallint(4) unsigned NOT NULL DEFAULT '0',
  `seo_title` varchar(255) NOT NULL DEFAULT '',
  `seo_keywords` varchar(255) NOT NULL DEFAULT '',
  `seo_description` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(30) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `template` varchar(30) NOT NULL DEFAULT '0',
  `template_type` varchar(30) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `islink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `linkurl` varchar(255) NOT NULL DEFAULT '',
  `filepath` varchar(255) NOT NULL DEFAULT '',
  `domain` varchar(255) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`),
  KEY `addtime` (`addtime`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='专题';

-- ----------------------------
-- Records of destoon_special_11
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_special_data_11
-- ----------------------------
DROP TABLE IF EXISTS `destoon_special_data_11`;
CREATE TABLE `destoon_special_data_11` (
  `itemid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `content` longtext NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='专题内容';

-- ----------------------------
-- Records of destoon_special_data_11
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_special_item_11
-- ----------------------------
DROP TABLE IF EXISTS `destoon_special_item_11`;
CREATE TABLE `destoon_special_item_11` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `specialid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `typeid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `style` varchar(50) NOT NULL DEFAULT '',
  `introduce` varchar(255) NOT NULL DEFAULT '',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(30) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `linkurl` varchar(255) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`),
  KEY `addtime` (`addtime`),
  KEY `specialid` (`specialid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='专题信息';

-- ----------------------------
-- Records of destoon_special_item_11
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_sphinx
-- ----------------------------
DROP TABLE IF EXISTS `destoon_sphinx`;
CREATE TABLE `destoon_sphinx` (
  `moduleid` int(10) unsigned NOT NULL DEFAULT '0',
  `maxid` bigint(20) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `moduleid` (`moduleid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Sphinx';

-- ----------------------------
-- Records of destoon_sphinx
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_spread
-- ----------------------------
DROP TABLE IF EXISTS `destoon_spread`;
CREATE TABLE `destoon_spread` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `mid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `tid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `word` varchar(50) NOT NULL DEFAULT '',
  `price` float NOT NULL DEFAULT '0',
  `currency` varchar(30) NOT NULL DEFAULT '',
  `company` varchar(100) NOT NULL DEFAULT '',
  `username` varchar(30) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `fromtime` int(10) unsigned NOT NULL DEFAULT '0',
  `totime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `note` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='排名推广';

-- ----------------------------
-- Records of destoon_spread
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_spread_price
-- ----------------------------
DROP TABLE IF EXISTS `destoon_spread_price`;
CREATE TABLE `destoon_spread_price` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `mid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `word` varchar(50) NOT NULL DEFAULT '',
  `price` float NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='排名起价';

-- ----------------------------
-- Records of destoon_spread_price
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_style
-- ----------------------------
DROP TABLE IF EXISTS `destoon_style`;
CREATE TABLE `destoon_style` (
  `itemid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `typeid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `skin` varchar(50) NOT NULL DEFAULT '',
  `template` varchar(50) NOT NULL DEFAULT '',
  `author` varchar(30) NOT NULL DEFAULT '',
  `groupid` varchar(30) NOT NULL DEFAULT '',
  `fee` float NOT NULL DEFAULT '0',
  `currency` varchar(20) NOT NULL DEFAULT '',
  `money` float NOT NULL DEFAULT '0',
  `credit` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `listorder` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公司主页模板';

-- ----------------------------
-- Records of destoon_style
-- ----------------------------
INSERT INTO `destoon_style` VALUES ('1', '0', '默认模板', 'default', 'homepage', 'DESTOON.COM', ',6,7,', '0', 'money', '0', '0', '0', '1529998019', 'root', '1529998019', '0');
INSERT INTO `destoon_style` VALUES ('2', '0', '深蓝模板', 'blue', 'homepage', 'DESTOON.COM', ',6,7,', '0', 'money', '0', '0', '0', '1529998019', 'root', '1529998019', '0');
INSERT INTO `destoon_style` VALUES ('3', '0', '绿色模板', 'green', 'homepage', 'DESTOON.COM', ',6,7,', '0', 'money', '0', '0', '0', '1529998019', 'root', '1529998019', '0');
INSERT INTO `destoon_style` VALUES ('4', '0', '紫色模板', 'purple', 'homepage', 'DESTOON.COM', ',6,7,', '0', 'money', '0', '0', '0', '1529998019', 'root', '1529998019', '0');
INSERT INTO `destoon_style` VALUES ('5', '0', '橙色模板', 'orange', 'homepage', 'DESTOON.COM', ',6,7,', '0', 'money', '0', '0', '0', '1529998019', 'root', '1529998019', '0');

-- ----------------------------
-- Table structure for destoon_type
-- ----------------------------
DROP TABLE IF EXISTS `destoon_type`;
CREATE TABLE `destoon_type` (
  `typeid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `listorder` smallint(4) NOT NULL DEFAULT '0',
  `typename` varchar(255) NOT NULL DEFAULT '',
  `style` varchar(50) NOT NULL DEFAULT '',
  `item` varchar(20) NOT NULL DEFAULT '',
  `cache` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`typeid`),
  KEY `listorder` (`listorder`),
  KEY `item` (`item`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='分类';

-- ----------------------------
-- Records of destoon_type
-- ----------------------------
INSERT INTO `destoon_type` VALUES ('1', '0', '1', '水果', '', 'mall-1', '0');

-- ----------------------------
-- Table structure for destoon_upgrade
-- ----------------------------
DROP TABLE IF EXISTS `destoon_upgrade`;
CREATE TABLE `destoon_upgrade` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `userid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `gid` smallint(4) unsigned NOT NULL DEFAULT '0',
  `groupid` smallint(4) unsigned NOT NULL DEFAULT '0',
  `amount` float NOT NULL DEFAULT '0',
  `message` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `company` varchar(100) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `reason` text NOT NULL,
  `note` text NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员升级';

-- ----------------------------
-- Records of destoon_upgrade
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_upload_0
-- ----------------------------
DROP TABLE IF EXISTS `destoon_upload_0`;
CREATE TABLE `destoon_upload_0` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item` varchar(32) NOT NULL DEFAULT '',
  `tb` varchar(30) NOT NULL,
  `moduleid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `itemid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `fileurl` varchar(255) NOT NULL DEFAULT '',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `fileext` varchar(10) NOT NULL DEFAULT '',
  `upfrom` varchar(10) NOT NULL DEFAULT '',
  `width` int(10) unsigned NOT NULL DEFAULT '0',
  `height` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `ip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`pid`),
  KEY `item` (`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='上传记录0';

-- ----------------------------
-- Records of destoon_upload_0
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_upload_1
-- ----------------------------
DROP TABLE IF EXISTS `destoon_upload_1`;
CREATE TABLE `destoon_upload_1` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item` varchar(32) NOT NULL DEFAULT '',
  `tb` varchar(30) NOT NULL,
  `moduleid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `itemid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `fileurl` varchar(255) NOT NULL DEFAULT '',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `fileext` varchar(10) NOT NULL DEFAULT '',
  `upfrom` varchar(10) NOT NULL DEFAULT '',
  `width` int(10) unsigned NOT NULL DEFAULT '0',
  `height` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `ip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`pid`),
  KEY `item` (`item`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='上传记录1';

-- ----------------------------
-- Records of destoon_upload_1
-- ----------------------------
INSERT INTO `destoon_upload_1` VALUES ('1', '01fbc31583bec9b000270d58e5eb960d', '', '5', '1', 'http://localhost:8088/destoon/file/upload/201806/29/105923351.png.thumb.png', '50600', 'png', 'album', '800', '453', '1530241163', 'root', '0.0.0.0');

-- ----------------------------
-- Table structure for destoon_upload_2
-- ----------------------------
DROP TABLE IF EXISTS `destoon_upload_2`;
CREATE TABLE `destoon_upload_2` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item` varchar(32) NOT NULL DEFAULT '',
  `tb` varchar(30) NOT NULL,
  `moduleid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `itemid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `fileurl` varchar(255) NOT NULL DEFAULT '',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `fileext` varchar(10) NOT NULL DEFAULT '',
  `upfrom` varchar(10) NOT NULL DEFAULT '',
  `width` int(10) unsigned NOT NULL DEFAULT '0',
  `height` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `ip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`pid`),
  KEY `item` (`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='上传记录2';

-- ----------------------------
-- Records of destoon_upload_2
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_upload_3
-- ----------------------------
DROP TABLE IF EXISTS `destoon_upload_3`;
CREATE TABLE `destoon_upload_3` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item` varchar(32) NOT NULL DEFAULT '',
  `tb` varchar(30) NOT NULL,
  `moduleid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `itemid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `fileurl` varchar(255) NOT NULL DEFAULT '',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `fileext` varchar(10) NOT NULL DEFAULT '',
  `upfrom` varchar(10) NOT NULL DEFAULT '',
  `width` int(10) unsigned NOT NULL DEFAULT '0',
  `height` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `ip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`pid`),
  KEY `item` (`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='上传记录3';

-- ----------------------------
-- Records of destoon_upload_3
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_upload_4
-- ----------------------------
DROP TABLE IF EXISTS `destoon_upload_4`;
CREATE TABLE `destoon_upload_4` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item` varchar(32) NOT NULL DEFAULT '',
  `tb` varchar(30) NOT NULL,
  `moduleid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `itemid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `fileurl` varchar(255) NOT NULL DEFAULT '',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `fileext` varchar(10) NOT NULL DEFAULT '',
  `upfrom` varchar(10) NOT NULL DEFAULT '',
  `width` int(10) unsigned NOT NULL DEFAULT '0',
  `height` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `ip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`pid`),
  KEY `item` (`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='上传记录4';

-- ----------------------------
-- Records of destoon_upload_4
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_upload_5
-- ----------------------------
DROP TABLE IF EXISTS `destoon_upload_5`;
CREATE TABLE `destoon_upload_5` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item` varchar(32) NOT NULL DEFAULT '',
  `tb` varchar(30) NOT NULL,
  `moduleid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `itemid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `fileurl` varchar(255) NOT NULL DEFAULT '',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `fileext` varchar(10) NOT NULL DEFAULT '',
  `upfrom` varchar(10) NOT NULL DEFAULT '',
  `width` int(10) unsigned NOT NULL DEFAULT '0',
  `height` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `ip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`pid`),
  KEY `item` (`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='上传记录5';

-- ----------------------------
-- Records of destoon_upload_5
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_upload_6
-- ----------------------------
DROP TABLE IF EXISTS `destoon_upload_6`;
CREATE TABLE `destoon_upload_6` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item` varchar(32) NOT NULL DEFAULT '',
  `tb` varchar(30) NOT NULL,
  `moduleid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `itemid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `fileurl` varchar(255) NOT NULL DEFAULT '',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `fileext` varchar(10) NOT NULL DEFAULT '',
  `upfrom` varchar(10) NOT NULL DEFAULT '',
  `width` int(10) unsigned NOT NULL DEFAULT '0',
  `height` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `ip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`pid`),
  KEY `item` (`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='上传记录6';

-- ----------------------------
-- Records of destoon_upload_6
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_upload_7
-- ----------------------------
DROP TABLE IF EXISTS `destoon_upload_7`;
CREATE TABLE `destoon_upload_7` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item` varchar(32) NOT NULL DEFAULT '',
  `tb` varchar(30) NOT NULL,
  `moduleid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `itemid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `fileurl` varchar(255) NOT NULL DEFAULT '',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `fileext` varchar(10) NOT NULL DEFAULT '',
  `upfrom` varchar(10) NOT NULL DEFAULT '',
  `width` int(10) unsigned NOT NULL DEFAULT '0',
  `height` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `ip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`pid`),
  KEY `item` (`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='上传记录7';

-- ----------------------------
-- Records of destoon_upload_7
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_upload_8
-- ----------------------------
DROP TABLE IF EXISTS `destoon_upload_8`;
CREATE TABLE `destoon_upload_8` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item` varchar(32) NOT NULL DEFAULT '',
  `tb` varchar(30) NOT NULL,
  `moduleid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `itemid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `fileurl` varchar(255) NOT NULL DEFAULT '',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `fileext` varchar(10) NOT NULL DEFAULT '',
  `upfrom` varchar(10) NOT NULL DEFAULT '',
  `width` int(10) unsigned NOT NULL DEFAULT '0',
  `height` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `ip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`pid`),
  KEY `item` (`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='上传记录8';

-- ----------------------------
-- Records of destoon_upload_8
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_upload_9
-- ----------------------------
DROP TABLE IF EXISTS `destoon_upload_9`;
CREATE TABLE `destoon_upload_9` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item` varchar(32) NOT NULL DEFAULT '',
  `tb` varchar(30) NOT NULL,
  `moduleid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `itemid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `fileurl` varchar(255) NOT NULL DEFAULT '',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `fileext` varchar(10) NOT NULL DEFAULT '',
  `upfrom` varchar(10) NOT NULL DEFAULT '',
  `width` int(10) unsigned NOT NULL DEFAULT '0',
  `height` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `ip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`pid`),
  KEY `item` (`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='上传记录9';

-- ----------------------------
-- Records of destoon_upload_9
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_validate
-- ----------------------------
DROP TABLE IF EXISTS `destoon_validate`;
CREATE TABLE `destoon_validate` (
  `itemid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(30) NOT NULL DEFAULT '',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `thumb1` varchar(255) NOT NULL DEFAULT '',
  `thumb2` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(30) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='资料认证';

-- ----------------------------
-- Records of destoon_validate
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_video_14
-- ----------------------------
DROP TABLE IF EXISTS `destoon_video_14`;
CREATE TABLE `destoon_video_14` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `areaid` int(10) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `style` varchar(50) NOT NULL DEFAULT '',
  `fee` float NOT NULL DEFAULT '0',
  `tag` varchar(255) NOT NULL DEFAULT '',
  `album` varchar(100) NOT NULL,
  `keyword` varchar(255) NOT NULL DEFAULT '',
  `pptword` varchar(255) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `comments` int(10) unsigned NOT NULL DEFAULT '0',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `video` varchar(255) NOT NULL DEFAULT '',
  `mobile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `width` smallint(4) unsigned NOT NULL DEFAULT '0',
  `height` smallint(4) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `introduce` varchar(255) NOT NULL DEFAULT '',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `template` varchar(30) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `linkurl` varchar(255) NOT NULL DEFAULT '',
  `filepath` varchar(255) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`),
  KEY `username` (`username`),
  KEY `addtime` (`addtime`),
  KEY `catid` (`catid`),
  KEY `album` (`album`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='视频';

-- ----------------------------
-- Records of destoon_video_14
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_video_data_14
-- ----------------------------
DROP TABLE IF EXISTS `destoon_video_data_14`;
CREATE TABLE `destoon_video_data_14` (
  `itemid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='视频内容';

-- ----------------------------
-- Records of destoon_video_data_14
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_vote
-- ----------------------------
DROP TABLE IF EXISTS `destoon_vote`;
CREATE TABLE `destoon_vote` (
  `itemid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `typeid` int(10) unsigned NOT NULL DEFAULT '0',
  `areaid` int(10) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `style` varchar(50) NOT NULL DEFAULT '',
  `content` mediumtext NOT NULL,
  `groupid` varchar(255) NOT NULL,
  `verify` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `choose` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `vote_min` smallint(2) unsigned NOT NULL DEFAULT '0',
  `vote_max` smallint(2) unsigned NOT NULL DEFAULT '0',
  `votes` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `fromtime` int(10) unsigned NOT NULL DEFAULT '0',
  `totime` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `linkto` varchar(255) NOT NULL DEFAULT '',
  `linkurl` varchar(255) NOT NULL DEFAULT '',
  `template_vote` varchar(30) NOT NULL DEFAULT '',
  `template` varchar(30) NOT NULL DEFAULT '',
  `s1` varchar(255) NOT NULL DEFAULT '',
  `s2` varchar(255) NOT NULL DEFAULT '',
  `s3` varchar(255) NOT NULL DEFAULT '',
  `s4` varchar(255) NOT NULL DEFAULT '',
  `s5` varchar(255) NOT NULL DEFAULT '',
  `s6` varchar(255) NOT NULL DEFAULT '',
  `s7` varchar(255) NOT NULL DEFAULT '',
  `s8` varchar(255) NOT NULL DEFAULT '',
  `s9` varchar(255) NOT NULL DEFAULT '',
  `s10` varchar(255) NOT NULL DEFAULT '',
  `v1` int(10) unsigned NOT NULL DEFAULT '0',
  `v2` int(10) unsigned NOT NULL DEFAULT '0',
  `v3` int(10) unsigned NOT NULL DEFAULT '0',
  `v4` int(10) unsigned NOT NULL DEFAULT '0',
  `v5` int(10) unsigned NOT NULL DEFAULT '0',
  `v6` int(10) unsigned NOT NULL DEFAULT '0',
  `v7` int(10) unsigned NOT NULL DEFAULT '0',
  `v8` int(10) unsigned NOT NULL DEFAULT '0',
  `v9` int(10) unsigned NOT NULL DEFAULT '0',
  `v10` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='投票';

-- ----------------------------
-- Records of destoon_vote
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_vote_record
-- ----------------------------
DROP TABLE IF EXISTS `destoon_vote_record`;
CREATE TABLE `destoon_vote_record` (
  `rid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `itemid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `votetime` int(10) unsigned NOT NULL DEFAULT '0',
  `votes` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`rid`),
  KEY `itemid` (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='投票记录';

-- ----------------------------
-- Records of destoon_vote_record
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_webpage
-- ----------------------------
DROP TABLE IF EXISTS `destoon_webpage`;
CREATE TABLE `destoon_webpage` (
  `itemid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item` varchar(30) NOT NULL DEFAULT '',
  `areaid` int(10) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `style` varchar(50) NOT NULL DEFAULT '',
  `content` mediumtext NOT NULL,
  `seo_title` varchar(255) NOT NULL DEFAULT '',
  `seo_keywords` varchar(255) NOT NULL DEFAULT '',
  `seo_description` varchar(255) NOT NULL DEFAULT '',
  `editor` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `listorder` smallint(4) NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `islink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `linkurl` varchar(255) NOT NULL DEFAULT '',
  `domain` varchar(255) NOT NULL DEFAULT '',
  `template` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='单网页';

-- ----------------------------
-- Records of destoon_webpage
-- ----------------------------
INSERT INTO `destoon_webpage` VALUES ('1', '1', '0', '0', '关于我们', '', '关于我们', '', '', '', 'destoon', '1319006891', '5', '0', '0', 'about/index.html', '', '');
INSERT INTO `destoon_webpage` VALUES ('2', '1', '0', '0', '联系方式', '', '联系方式', '', '', '', 'destoon', '1310696453', '4', '0', '0', 'about/contact.html', '', '');
INSERT INTO `destoon_webpage` VALUES ('3', '1', '0', '0', '使用协议', '', '使用协议', '', '', '', 'destoon', '1310696460', '3', '0', '0', 'about/agreement.html', '', '');
INSERT INTO `destoon_webpage` VALUES ('4', '1', '0', '0', '版权隐私', '', '版权隐私', '', '', '', 'destoon', '1310696468', '2', '0', '0', 'about/copyright.html', '', '');

-- ----------------------------
-- Table structure for destoon_weixin_auto
-- ----------------------------
DROP TABLE IF EXISTS `destoon_weixin_auto`;
CREATE TABLE `destoon_weixin_auto` (
  `itemid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `keyword` varchar(255) NOT NULL,
  `reply` text NOT NULL,
  PRIMARY KEY (`itemid`),
  KEY `keyword` (`keyword`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='微信回复';

-- ----------------------------
-- Records of destoon_weixin_auto
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_weixin_bind
-- ----------------------------
DROP TABLE IF EXISTS `destoon_weixin_bind`;
CREATE TABLE `destoon_weixin_bind` (
  `username` varchar(30) NOT NULL DEFAULT '',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='微信扫码绑定';

-- ----------------------------
-- Records of destoon_weixin_bind
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_weixin_chat
-- ----------------------------
DROP TABLE IF EXISTS `destoon_weixin_chat`;
CREATE TABLE `destoon_weixin_chat` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `editor` varchar(30) NOT NULL,
  `openid` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(20) NOT NULL,
  `event` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `misc` mediumtext NOT NULL,
  PRIMARY KEY (`itemid`),
  KEY `openid` (`openid`),
  KEY `addtime` (`addtime`),
  KEY `event` (`event`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='微信消息';

-- ----------------------------
-- Records of destoon_weixin_chat
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_weixin_user
-- ----------------------------
DROP TABLE IF EXISTS `destoon_weixin_user`;
CREATE TABLE `destoon_weixin_user` (
  `itemid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '',
  `openid` varchar(255) NOT NULL DEFAULT '',
  `nickname` varchar(255) NOT NULL DEFAULT '',
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `city` varchar(100) NOT NULL,
  `province` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `language` varchar(100) NOT NULL,
  `headimgurl` varchar(255) NOT NULL,
  `edittime` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `visittime` int(10) unsigned NOT NULL DEFAULT '0',
  `credittime` int(10) unsigned NOT NULL DEFAULT '0',
  `subscribe` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `push` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`itemid`),
  UNIQUE KEY `openid` (`openid`),
  KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='微信用户';

-- ----------------------------
-- Records of destoon_weixin_user
-- ----------------------------
SET FOREIGN_KEY_CHECKS=1;
