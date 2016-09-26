/*
Navicat MySQL Data Transfer

Source Server         : 43.61:3307
Source Server Version : 50532
Source Host           : localhost:3307
Source Database       : tptest

Target Server Type    : MYSQL
Target Server Version : 50532
File Encoding         : 65001

Date: 2016-09-26 17:53:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tp_case`
-- ----------------------------
DROP TABLE IF EXISTS `tp_case`;
CREATE TABLE `tp_case` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sn` int(11) DEFAULT NULL,
  `level` varchar(1) DEFAULT NULL,
  `main` varchar(50) DEFAULT NULL,
  `steps` text,
  `expected` varchar(200) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `fproid` smallint(6) DEFAULT NULL,
  `funcid` int(11) DEFAULT NULL,
  `source` varchar(50) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updateTime` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `num1` varchar(255) DEFAULT NULL,
  `num2` varchar(255) DEFAULT NULL,
  `num3` varchar(255) DEFAULT NULL,
  `num4` varchar(255) DEFAULT NULL,
  `num5` varchar(255) DEFAULT NULL,
  `num6` varchar(255) DEFAULT NULL,
  `num7` varchar(255) DEFAULT NULL,
  `num8` varchar(255) DEFAULT NULL,
  `num9` varchar(255) DEFAULT NULL,
  `num10` varchar(255) DEFAULT NULL,
  `num11` varchar(255) DEFAULT NULL,
  `num12` varchar(255) DEFAULT NULL,
  `num13` varchar(255) DEFAULT NULL,
  `num14` varchar(255) DEFAULT NULL,
  `num16` varchar(255) DEFAULT NULL,
  `num17` varchar(255) DEFAULT NULL,
  `num18` varchar(255) DEFAULT NULL,
  `num19` varchar(255) DEFAULT NULL,
  `num20` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10008 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_case
-- ----------------------------
INSERT INTO `tp_case` VALUES ('10000', '1', '', '正常登陆', '', '登入系统，并显示用户姓名', '作废', '48', '10000', '产品库', '腰立辉', '腰立辉', '2016-09-24 21:09:29', '2016-09-24 21:09:29', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10001', '2', null, '用户名不存在', '', '报错', '正常', '45', '10000', '产品库', '腰立辉', '腰立辉', '2016-09-22 14:33:33', '2016-09-22 14:33:33', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10002', '1', null, '正常注销', '', '登出系统', '正常', '45', '10001', '产品库', '腰立辉', '腰立辉', '2016-09-22 14:36:58', '2016-09-22 14:36:58', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10003', '1', null, '正常添加测试产品', '', '添加成功', '正常', '45', '10003', '产品库', '腰立辉', '腰立辉', '2016-09-22 15:58:46', '2016-09-22 15:58:46', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10004', '2', null, '产品名为空', '', '添加失败', '正常', '45', '10003', '产品库', '腰立辉', '腰立辉', '2016-09-22 15:59:04', '2016-09-22 15:59:04', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10005', '3', null, '产品简称为空', '', '添加失败', '正常', '45', '10003', '产品库', '腰立辉', '腰立辉', '2016-09-22 15:59:18', '2016-09-22 15:59:18', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10006', '4', null, '产品名重复', '', '添加失败', '正常', '45', '10003', '产品库', '腰立辉', '腰立辉', '2016-09-22 15:59:40', '2016-09-22 15:59:40', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10007', '5', null, '产品简称重复', '', '添加失败', '正常', '45', '10003', '产品库', '腰立辉', '腰立辉', '2016-09-22 16:01:18', '2016-09-22 16:01:18', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `tp_dict`
-- ----------------------------
DROP TABLE IF EXISTS `tp_dict`;
CREATE TABLE `tp_dict` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `k` smallint(2) DEFAULT NULL,
  `v` varchar(20) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `state` varchar(5) DEFAULT '正常',
  `adder` varchar(10) DEFAULT '腰立辉',
  `moder` varchar(10) DEFAULT '腰立辉',
  `createTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updateTime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_dict
-- ----------------------------
INSERT INTO `tp_dict` VALUES ('1', '1', '正常', 'state', '正常', '腰立辉', '腰立辉', '2016-09-12 14:05:14', null);
INSERT INTO `tp_dict` VALUES ('2', '2', '待确认', 'state', '正常', '腰立辉', '腰立辉', '2016-09-12 14:05:15', null);
INSERT INTO `tp_dict` VALUES ('3', '3', '已搁置', 'state', '正常', '腰立辉', '腰立辉', '2016-09-12 14:05:17', null);
INSERT INTO `tp_dict` VALUES ('4', '4', '作废', 'state', '正常', '腰立辉', '腰立辉', '2016-09-12 14:05:18', null);
INSERT INTO `tp_dict` VALUES ('5', '1', '未开始', 'prost', '正常', '腰立辉', '腰立辉', '2016-09-12 14:05:19', null);
INSERT INTO `tp_dict` VALUES ('6', '2', '进行中', 'prost', '正常', '腰立辉', '腰立辉', '2016-09-12 14:05:20', null);
INSERT INTO `tp_dict` VALUES ('7', '3', '已完成', 'prost', '正常', '腰立辉', '腰立辉', '2016-09-12 14:05:21', null);
INSERT INTO `tp_dict` VALUES ('8', '4', '已搁置', 'prost', '正常', '腰立辉', '腰立辉', '2016-09-12 14:05:23', null);
INSERT INTO `tp_dict` VALUES ('9', '5', '已取消', 'prost', '正常', '腰立辉', '腰立辉', '2016-09-12 14:05:24', null);
INSERT INTO `tp_dict` VALUES ('15', '1', 'C', 'testgp', '正常', '腰立辉', '腰立辉', '2016-09-13 23:17:10', '2016-09-13 23:17:10');
INSERT INTO `tp_dict` VALUES ('16', '2', 'B', 'testgp', '正常', '腰立辉', '腰立辉', '2016-09-13 23:17:18', '2016-09-13 23:17:18');
INSERT INTO `tp_dict` VALUES ('17', '3', 'OP', 'testgp', '正常', '腰立辉', '腰立辉', '2016-09-13 23:17:22', '2016-09-13 23:17:22');
INSERT INTO `tp_dict` VALUES ('18', '4', 'Auto', 'testgp', '正常', '腰立辉', '腰立辉', '2016-09-13 23:17:24', '2016-09-13 23:17:24');
INSERT INTO `tp_dict` VALUES ('29', '5', 'GD', 'testgp', '已搁置', '腰立辉', '腰立辉', '2016-09-25 13:18:52', '2016-09-25 13:18:52');
INSERT INTO `tp_dict` VALUES ('30', '1', '简要', 'ptype', '正常', '腰立辉', '腰立辉', '2016-09-16 22:23:30', null);
INSERT INTO `tp_dict` VALUES ('31', '2', '常规', 'ptype', '正常', '腰立辉', '腰立辉', '2016-09-16 22:23:48', '2016-09-16 22:23:48');
INSERT INTO `tp_dict` VALUES ('32', '1', '需求新增', 'reType', '正常', '腰立辉', '腰立辉', '2016-09-17 14:20:27', '2016-09-17 14:20:27');
INSERT INTO `tp_dict` VALUES ('33', '2', '需求变更', 'reType', '正常', '腰立辉', '腰立辉', '2016-09-17 14:20:01', '2016-09-17 14:20:01');
INSERT INTO `tp_dict` VALUES ('34', '3', '系统BUG', 'reType', '正常', '腰立辉', '腰立辉', '2016-09-17 14:20:16', '2016-09-17 14:20:16');
INSERT INTO `tp_dict` VALUES ('35', '1', '紧急需求', 'reLevel', '正常', '腰立辉', '腰立辉', '2016-09-17 14:28:53', '2016-09-17 14:28:53');
INSERT INTO `tp_dict` VALUES ('36', '2', '一般需求', 'reLevel', '正常', '腰立辉', '腰立辉', '2016-09-17 14:28:44', '2016-09-17 14:28:44');
INSERT INTO `tp_dict` VALUES ('37', '1', '测试工程师', 'position', '正常', '腰立辉', '腰立辉', '2016-09-17 15:31:57', '2016-09-17 15:31:57');
INSERT INTO `tp_dict` VALUES ('38', '2', '初级测试工程师', 'position', '正常', '贾晓宁', '腰立辉', '2016-09-17 15:32:01', '2016-09-17 15:32:01');
INSERT INTO `tp_dict` VALUES ('39', '3', '高级测试工程师', 'position', '正常', '贾晓宁', '腰立辉', '2016-09-17 15:32:04', '2016-09-17 15:32:04');
INSERT INTO `tp_dict` VALUES ('40', '4', '测试经理', 'position', '正常', '贾晓宁', '腰立辉', '2016-09-17 15:32:07', '2016-09-17 15:32:07');
INSERT INTO `tp_dict` VALUES ('41', '5', '高级测试经理', 'position', '正常', '贾晓宁', '腰立辉', '2016-09-17 15:32:13', '2016-09-17 15:32:13');
INSERT INTO `tp_dict` VALUES ('42', '6', '质量总监', 'position', '正常', '贾晓宁', '腰立辉', '2016-09-17 15:32:17', '2016-09-17 15:32:17');
INSERT INTO `tp_dict` VALUES ('43', '1', '无文档', 'document', '正常', '腰立辉', '腰立辉', '2016-09-17 16:09:39', '2016-09-17 16:09:39');
INSERT INTO `tp_dict` VALUES ('44', '2', '测试计划', 'document', '正常', '腰立辉', '腰立辉', '2016-09-17 16:08:42', '2016-09-17 16:08:42');
INSERT INTO `tp_dict` VALUES ('45', '3', '测试用例', 'document', '正常', '腰立辉', '腰立辉', '2016-09-17 16:08:55', '2016-09-17 16:08:55');
INSERT INTO `tp_dict` VALUES ('46', '4', 'BUG分析报告', 'document', '正常', '腰立辉', '腰立辉', '2016-09-17 16:09:28', '2016-09-17 16:09:28');
INSERT INTO `tp_dict` VALUES ('47', '5', '测试综合报告', 'document', '正常', '腰立辉', '腰立辉', '2016-09-17 16:09:23', '2016-09-17 16:09:23');
INSERT INTO `tp_dict` VALUES ('48', '1', '打开', 'rstate', '正常', '腰立辉', '腰立辉', '2016-09-17 16:18:15', null);
INSERT INTO `tp_dict` VALUES ('49', '2', '关闭', 'rstate', '正常', '腰立辉', '腰立辉', '2016-09-17 16:18:30', '2016-09-17 16:18:30');
INSERT INTO `tp_dict` VALUES ('50', '1', 'A', 'risklevel', '正常', '腰立辉', '腰立辉', '2016-09-17 16:19:42', '2016-09-17 16:19:42');
INSERT INTO `tp_dict` VALUES ('51', '2', 'B', 'risklevel', '正常', '腰立辉', '腰立辉', '2016-09-17 16:19:21', '2016-09-17 16:19:21');
INSERT INTO `tp_dict` VALUES ('52', '3', 'C', 'risklevel', '正常', '腰立辉', '腰立辉', '2016-09-17 16:19:27', '2016-09-17 16:19:27');
INSERT INTO `tp_dict` VALUES ('53', '4', 'D', 'risklevel', '正常', '腰立辉', '腰立辉', '2016-09-17 16:19:34', '2016-09-17 16:19:34');
INSERT INTO `tp_dict` VALUES ('54', '1', 'M', 'sceneType', '正常', '腰立辉', '腰立辉', '2016-09-23 21:11:13', '2016-09-23 21:11:13');
INSERT INTO `tp_dict` VALUES ('55', '2', 'A', 'sceneType', '正常', '腰立辉', '腰立辉', '2016-09-23 21:11:19', '2016-09-23 21:11:19');

-- ----------------------------
-- Table structure for `tp_element`
-- ----------------------------
DROP TABLE IF EXISTS `tp_element`;
CREATE TABLE `tp_element` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sn` smallint(3) DEFAULT NULL,
  `typeset` varchar(4) DEFAULT NULL,
  `control` varchar(50) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `funcid` int(11) DEFAULT NULL,
  `web` varchar(100) DEFAULT NULL,
  `ios` varchar(50) DEFAULT NULL,
  `android` varchar(50) DEFAULT NULL,
  `bytype` varchar(10) DEFAULT NULL,
  `form` varchar(10) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `data` varchar(50) DEFAULT NULL,
  `group` varchar(50) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updateTime` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_element
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_exefunc`
-- ----------------------------
DROP TABLE IF EXISTS `tp_exefunc`;
CREATE TABLE `tp_exefunc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sn` int(11) DEFAULT NULL,
  `funcid` int(50) DEFAULT NULL,
  `system` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `func` varchar(255) DEFAULT NULL,
  `funcremarks` varchar(200) DEFAULT NULL,
  `casemain` varchar(255) DEFAULT NULL,
  `caseexpected` varchar(255) DEFAULT NULL,
  `tester` varchar(10) DEFAULT NULL,
  `bugid` varchar(8) DEFAULT NULL,
  `result` varchar(50) DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `exesceneid` int(11) DEFAULT NULL,
  `num1` varchar(255) DEFAULT NULL,
  `num2` varchar(255) DEFAULT NULL,
  `num3` varchar(255) DEFAULT NULL,
  `num4` varchar(255) DEFAULT NULL,
  `num5` varchar(255) DEFAULT NULL,
  `num6` varchar(255) DEFAULT NULL,
  `num7` varchar(255) DEFAULT NULL,
  `num8` varchar(255) DEFAULT NULL,
  `num9` varchar(255) DEFAULT NULL,
  `num10` varchar(255) DEFAULT NULL,
  `num11` varchar(255) DEFAULT NULL,
  `num12` varchar(255) DEFAULT NULL,
  `num13` varchar(255) DEFAULT NULL,
  `num14` varchar(255) DEFAULT NULL,
  `num15` varchar(255) DEFAULT NULL,
  `num16` varchar(255) DEFAULT NULL,
  `num17` varchar(255) DEFAULT NULL,
  `num18` varchar(255) DEFAULT NULL,
  `num19` varchar(255) DEFAULT NULL,
  `num20` varchar(255) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updateTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10002 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_exefunc
-- ----------------------------
INSERT INTO `tp_exefunc` VALUES ('10000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2016-09-25 17:50:21', '0000-00-00 00:00:00');
INSERT INTO `tp_exefunc` VALUES ('10001', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2016-09-25 17:57:08', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `tp_exescene`
-- ----------------------------
DROP TABLE IF EXISTS `tp_exescene`;
CREATE TABLE `tp_exescene` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sn` int(11) DEFAULT NULL,
  `type` varchar(8) DEFAULT 'Manual',
  `stagetesterid` int(11) DEFAULT NULL,
  `sceneid` int(11) DEFAULT NULL,
  `level` smallint(1) DEFAULT NULL,
  `swho` varchar(20) DEFAULT NULL,
  `swhen` varchar(20) DEFAULT NULL,
  `scene` varchar(50) DEFAULT NULL,
  `results` varchar(5) DEFAULT '未测试',
  `flow` varchar(300) DEFAULT NULL,
  `testip` varchar(200) DEFAULT NULL,
  `isrunning` int(11) DEFAULT NULL,
  `testtime` timestamp NULL DEFAULT NULL,
  `runningip` varchar(20) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updateTime` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10004 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_exescene
-- ----------------------------
INSERT INTO `tp_exescene` VALUES ('10000', '1', 'M', '10006', '10000', '2', '默认', '默认', '正常创建测试项目并制定里程碑选定测试系统', '未测试', null, 'http://127.0.0.1:81/tpTest/autotest.php/Index/index', null, null, null, '腰立辉', '腰立辉', '2016-09-25 15:11:09', '2016-09-25 15:11:09');
INSERT INTO `tp_exescene` VALUES ('10001', '2', 'M', '10006', '10001', '2', '默认', '无对应产品时', '正常创建测试项目并制定里程碑选定测试系统', '未测试', null, 'http://127.0.0.1:81/tpTest/autotest.php/Index/index', null, null, null, '腰立辉', '腰立辉', '2016-09-25 15:43:59', '2016-09-25 15:43:59');
INSERT INTO `tp_exescene` VALUES ('10002', '1', 'M', '10016', '10000', '2', '默认', '默认', '正常创建测试项目并制定里程碑选定测试系统', '未测试', null, 'http://127.0.0.1:81/tpTest/autotest.php/Index/index', null, null, null, '腰立辉', '腰立辉', '2016-09-25 16:05:23', '2016-09-25 16:05:23');
INSERT INTO `tp_exescene` VALUES ('10003', '2', 'M', '10016', '10001', '2', '默认', '无对应产品时', '正常创建测试项目并制定里程碑选定测试系统', '未测试', null, 'http://127.0.0.1:81/tpTest/autotest.php/Index/index', null, null, null, '腰立辉', '腰立辉', '2016-09-25 16:05:25', '2016-09-25 16:05:25');

-- ----------------------------
-- Table structure for `tp_func`
-- ----------------------------
DROP TABLE IF EXISTS `tp_func`;
CREATE TABLE `tp_func` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `sn` int(11) DEFAULT NULL,
  `func` varchar(50) DEFAULT NULL,
  `state` varchar(5) DEFAULT '正常',
  `pathid` int(11) DEFAULT NULL,
  `fproid` smallint(6) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updateTime` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10266 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_func
-- ----------------------------
INSERT INTO `tp_func` VALUES ('10000', '1', '登录', '正常', '10000', '24', '腰立辉', '腰立辉', '2016-09-24 22:21:45', '2016-09-22 10:45:46');
INSERT INTO `tp_func` VALUES ('10001', '2', '注销', '正常', '10000', '49', '腰立辉', '腰立辉', '2016-09-24 23:02:26', '2016-09-24 22:17:12');
INSERT INTO `tp_func` VALUES ('10002', '1', '产品列表', '正常', '10001', '45', '腰立辉', '腰立辉', '2016-09-22 15:57:54', '2016-09-22 15:57:54');
INSERT INTO `tp_func` VALUES ('10003', '2', '产品-添加', '正常', '10001', '45', '腰立辉', '腰立辉', '2016-09-22 15:58:02', '2016-09-22 15:58:02');
INSERT INTO `tp_func` VALUES ('10004', '3', '产品-编辑', '正常', '10001', '45', '腰立辉', '腰立辉', '2016-09-22 15:58:11', '2016-09-22 15:58:11');
INSERT INTO `tp_func` VALUES ('10005', '3', '改密', '已搁置', '10000', '24', '腰立辉', '腰立辉', '2016-09-25 13:33:58', '2016-09-25 13:33:58');
INSERT INTO `tp_func` VALUES ('10006', '4', '系统-入口', '正常', '10001', '45', '腰立辉', '腰立辉', '2016-09-23 14:39:57', '2016-09-23 14:39:57');
INSERT INTO `tp_func` VALUES ('10007', '3', '项目-添加', '正常', '10002', '45', '腰立辉', '腰立辉', '2016-09-22 17:42:09', '2016-09-22 17:42:09');
INSERT INTO `tp_func` VALUES ('10008', '4', '项目-编辑', '正常', '10002', '45', '腰立辉', '腰立辉', '2016-09-22 17:42:20', '2016-09-22 17:42:20');
INSERT INTO `tp_func` VALUES ('10009', '5', '项目-详情', '正常', '10002', '45', '腰立辉', '腰立辉', '2016-09-22 17:42:26', '2016-09-22 17:42:26');
INSERT INTO `tp_func` VALUES ('10010', '1', '分组项目列表', '正常', '10002', '45', '腰立辉', '腰立辉', '2016-09-23 14:40:27', '2016-09-23 14:40:27');
INSERT INTO `tp_func` VALUES ('10011', '2', '切换分组', '正常', '10002', '45', '腰立辉', '腰立辉', '2016-09-22 17:42:03', '2016-09-22 17:42:03');
INSERT INTO `tp_func` VALUES ('10012', '6', '快速标记状态', '正常', '10002', '45', '腰立辉', '腰立辉', '2016-09-25 13:34:13', '2016-09-25 13:34:13');
INSERT INTO `tp_func` VALUES ('10013', '7', '项目-里程碑入口', '正常', '10002', '45', '腰立辉', '腰立辉', '2016-09-22 17:43:51', '2016-09-22 17:43:51');
INSERT INTO `tp_func` VALUES ('10014', '8', '项目-风险入口', '正常', '10002', '45', '腰立辉', '腰立辉', '2016-09-25 13:34:23', '2016-09-25 13:34:23');
INSERT INTO `tp_func` VALUES ('10015', '9', '项目-系统入口', '正常', '10002', '45', '腰立辉', '腰立辉', '2016-09-22 17:46:32', '2016-09-22 17:46:32');
INSERT INTO `tp_func` VALUES ('10016', '10', '项目-功能点入口', '正常', '10002', '45', '腰立辉', '腰立辉', '2016-09-22 17:45:02', '2016-09-22 17:45:02');
INSERT INTO `tp_func` VALUES ('10017', '11', '项目-范围入口', '正常', '10002', '45', '腰立辉', '腰立辉', '2016-09-22 17:45:11', '2016-09-22 17:45:11');
INSERT INTO `tp_func` VALUES ('10018', '12', '项目-场景入口', '正常', '10002', '45', '腰立辉', '腰立辉', '2016-09-22 17:45:25', '2016-09-22 17:45:25');
INSERT INTO `tp_func` VALUES ('10019', '13', '项目-控件库入口', '正常', '10002', '45', '腰立辉', '腰立辉', '2016-09-22 17:45:46', '2016-09-22 17:45:46');
INSERT INTO `tp_func` VALUES ('10020', '14', '项目-用例库入口', '正常', '10002', '45', '腰立辉', '腰立辉', '2016-09-22 17:45:56', '2016-09-22 17:45:56');
INSERT INTO `tp_func` VALUES ('10021', '15', '项目-报告入口', '已搁置', '10002', '45', '腰立辉', '腰立辉', '2016-09-22 17:46:11', '2016-09-22 17:46:11');
INSERT INTO `tp_func` VALUES ('10022', '1', '里程碑列表', '正常', '10028', '45', '腰立辉', '腰立辉', '2016-09-22 17:47:50', '2016-09-22 17:47:50');
INSERT INTO `tp_func` VALUES ('10023', '2', '切换项目', '正常', '10028', '45', '腰立辉', '腰立辉', '2016-09-22 17:47:56', '2016-09-22 17:47:56');
INSERT INTO `tp_func` VALUES ('10024', '3', '里程碑-添加', '正常', '10028', '45', '腰立辉', '腰立辉', '2016-09-22 17:48:11', '2016-09-22 17:48:11');
INSERT INTO `tp_func` VALUES ('10025', '4', '里程碑-修改', '正常', '10028', '45', '腰立辉', '腰立辉', '2016-09-22 17:48:27', '2016-09-22 17:48:27');
INSERT INTO `tp_func` VALUES ('10026', '7', 'A人员-入口（自动化）', '正常', '10028', '45', '腰立辉', '腰立辉', '2016-09-25 13:36:43', '2016-09-25 13:36:43');
INSERT INTO `tp_func` VALUES ('10027', '5', '快速标记状态', '正常', '10028', '45', '腰立辉', '腰立辉', '2016-09-25 13:34:39', '2016-09-25 13:34:39');
INSERT INTO `tp_func` VALUES ('10028', '1', '项目涉及系统列表', '正常', '10003', '45', '腰立辉', '腰立辉', '2016-09-22 17:49:40', '2016-09-22 17:49:40');
INSERT INTO `tp_func` VALUES ('10029', '2', '待关联系统列表', '正常', '10003', '45', '腰立辉', '腰立辉', '2016-09-22 17:50:05', '2016-09-22 17:50:05');
INSERT INTO `tp_func` VALUES ('10030', '3', '关联系统到本项目', '正常', '10003', '45', '腰立辉', '腰立辉', '2016-09-22 17:50:22', '2016-09-22 17:50:22');
INSERT INTO `tp_func` VALUES ('10031', '4', '待关联系统-添加', '正常', '10003', '45', '腰立辉', '腰立辉', '2016-09-22 17:50:36', '2016-09-22 17:50:36');
INSERT INTO `tp_func` VALUES ('10032', '5', '待关联系统-修改', '正常', '10003', '45', '腰立辉', '腰立辉', '2016-09-22 17:50:46', '2016-09-22 17:50:46');
INSERT INTO `tp_func` VALUES ('10033', '6', '已关联系统-配置环境', '正常', '10003', '45', '腰立辉', '腰立辉', '2016-09-22 17:51:11', '2016-09-22 17:51:11');
INSERT INTO `tp_func` VALUES ('10034', '7', '已关联系统-路径入口', '正常', '10003', '45', '腰立辉', '腰立辉', '2016-09-22 17:51:28', '2016-09-22 17:51:28');
INSERT INTO `tp_func` VALUES ('10035', '8', '已关联系统-移除关联', '正常', '10003', '45', '腰立辉', '腰立辉', '2016-09-22 17:51:49', '2016-09-22 17:51:49');
INSERT INTO `tp_func` VALUES ('10036', '1', '项目风险列表', '正常', '10030', '45', '腰立辉', '腰立辉', '2016-09-22 17:52:20', '2016-09-22 17:52:20');
INSERT INTO `tp_func` VALUES ('10037', '2', '切换项目', '正常', '10030', '45', '腰立辉', '腰立辉', '2016-09-22 17:52:27', '2016-09-22 17:52:27');
INSERT INTO `tp_func` VALUES ('10038', '3', '风险-添加', '正常', '10030', '45', '腰立辉', '腰立辉', '2016-09-22 17:52:43', '2016-09-22 17:52:43');
INSERT INTO `tp_func` VALUES ('10039', '4', '风险-维护', '正常', '10030', '45', '腰立辉', '腰立辉', '2016-09-22 17:52:59', '2016-09-22 17:52:59');
INSERT INTO `tp_func` VALUES ('10040', '1', '系统路径列表', '正常', '10004', '45', '腰立辉', '腰立辉', '2016-09-22 17:53:55', '2016-09-22 17:53:55');
INSERT INTO `tp_func` VALUES ('10041', '2', '切换关联系统', '正常', '10004', '45', '腰立辉', '腰立辉', '2016-09-22 17:54:05', '2016-09-22 17:54:05');
INSERT INTO `tp_func` VALUES ('10042', '3', '路径-添加', '正常', '10004', '45', '腰立辉', '腰立辉', '2016-09-22 17:54:21', '2016-09-22 17:54:21');
INSERT INTO `tp_func` VALUES ('10043', '4', '路径-修改', '正常', '10004', '45', '腰立辉', '腰立辉', '2016-09-22 17:54:28', '2016-09-22 17:54:28');
INSERT INTO `tp_func` VALUES ('10044', '5', '路径-功能点入口', '正常', '10004', '45', '腰立辉', '腰立辉', '2016-09-22 17:54:44', '2016-09-22 17:54:44');
INSERT INTO `tp_func` VALUES ('10045', '1', '路径功能点列表', '正常', '10005', '45', '腰立辉', '腰立辉', '2016-09-22 17:55:13', '2016-09-22 17:55:13');
INSERT INTO `tp_func` VALUES ('10046', '2', '切换路径', '正常', '10005', '45', '腰立辉', '腰立辉', '2016-09-22 17:55:20', '2016-09-22 17:55:20');
INSERT INTO `tp_func` VALUES ('10047', '3', '功能点-添加（默认当前项目）', '正常', '10005', '45', '腰立辉', '腰立辉', '2016-09-22 17:56:43', '2016-09-22 17:56:43');
INSERT INTO `tp_func` VALUES ('10048', '4', '功能点-修改', '正常', '10005', '45', '腰立辉', '腰立辉', '2016-09-22 17:56:03', '2016-09-22 17:56:03');
INSERT INTO `tp_func` VALUES ('10049', '5', '功能点-用例入口', '正常', '10005', '45', '腰立辉', '腰立辉', '2016-09-23 13:27:11', '2016-09-23 13:27:11');
INSERT INTO `tp_func` VALUES ('10050', '6', '功能点-规则入口', '正常', '10005', '45', '腰立辉', '腰立辉', '2016-09-22 17:56:29', '2016-09-22 17:56:29');
INSERT INTO `tp_func` VALUES ('10051', '7', '快速标记当前项目', '正常', '10005', '45', '腰立辉', '腰立辉', '2016-09-22 17:57:20', '2016-09-22 17:57:20');
INSERT INTO `tp_func` VALUES ('10052', '1', '功能点用例列表', '正常', '10006', '45', '腰立辉', '腰立辉', '2016-09-22 17:58:03', '2016-09-22 17:58:03');
INSERT INTO `tp_func` VALUES ('10053', '2', '切换功能点', '正常', '10006', '45', '腰立辉', '腰立辉', '2016-09-22 17:58:13', '2016-09-22 17:58:13');
INSERT INTO `tp_func` VALUES ('10054', '3', '用例-添加', '正常', '10006', '45', '腰立辉', '腰立辉', '2016-09-22 17:58:30', '2016-09-22 17:58:30');
INSERT INTO `tp_func` VALUES ('10055', '4', '用例-维护', '正常', '10006', '45', '腰立辉', '腰立辉', '2016-09-22 17:58:37', '2016-09-22 17:58:37');
INSERT INTO `tp_func` VALUES ('10056', '5', '快速标记当前项目', '正常', '10006', '45', '腰立辉', '腰立辉', '2016-09-22 17:59:13', '2016-09-22 17:59:13');
INSERT INTO `tp_func` VALUES ('10057', '6', '数据模板-编辑', '正常', '10006', '45', '腰立辉', '腰立辉', '2016-09-23 13:40:21', '2016-09-23 13:40:21');
INSERT INTO `tp_func` VALUES ('10058', '1', '功能点规则列表', '正常', '10007', '45', '腰立辉', '腰立辉', '2016-09-22 17:59:51', '2016-09-22 17:59:51');
INSERT INTO `tp_func` VALUES ('10059', '2', '切换功能点', '正常', '10007', '45', '腰立辉', '腰立辉', '2016-09-22 18:00:04', '2016-09-22 18:00:04');
INSERT INTO `tp_func` VALUES ('10060', '3', '规则-添加', '正常', '10007', '45', '腰立辉', '腰立辉', '2016-09-22 18:00:15', '2016-09-22 18:00:15');
INSERT INTO `tp_func` VALUES ('10061', '4', '规则-修改', '正常', '10007', '45', '腰立辉', '腰立辉', '2016-09-22 18:00:27', '2016-09-22 18:00:27');
INSERT INTO `tp_func` VALUES ('10062', '5', '来源-维护', '正常', '10007', '45', '腰立辉', '腰立辉', '2016-09-22 18:00:45', '2016-09-22 18:00:45');
INSERT INTO `tp_func` VALUES ('10063', '6', '快速标记当前项目', '正常', '10007', '45', '腰立辉', '腰立辉', '2016-09-22 18:00:58', '2016-09-22 18:00:58');
INSERT INTO `tp_func` VALUES ('10064', '1', '项目-功能点列表', '正常', '10008', '45', '腰立辉', '腰立辉', '2016-09-22 18:01:32', '2016-09-22 18:01:32');
INSERT INTO `tp_func` VALUES ('10065', '2', '切换项目', '正常', '10008', '45', '腰立辉', '腰立辉', '2016-09-22 18:01:41', '2016-09-22 18:01:41');
INSERT INTO `tp_func` VALUES ('10066', '3', '添加路径', '正常', '10008', '45', '腰立辉', '腰立辉', '2016-09-22 18:02:05', '2016-09-22 18:02:05');
INSERT INTO `tp_func` VALUES ('10067', '4', '维护路径', '正常', '10008', '45', '腰立辉', '腰立辉', '2016-09-22 18:02:13', '2016-09-22 18:02:13');
INSERT INTO `tp_func` VALUES ('10068', '5', '添加功能点', '正常', '10008', '45', '腰立辉', '腰立辉', '2016-09-22 18:02:20', '2016-09-22 18:02:20');
INSERT INTO `tp_func` VALUES ('10069', '6', '维护功能点', '正常', '10008', '45', '腰立辉', '腰立辉', '2016-09-22 18:02:27', '2016-09-22 18:02:27');
INSERT INTO `tp_func` VALUES ('10070', '7', '快速标记当前项目', '正常', '10008', '45', '腰立辉', '腰立辉', '2016-09-22 18:02:34', '2016-09-22 18:02:34');
INSERT INTO `tp_func` VALUES ('10071', '8', '功能点-用例入口', '正常', '10008', '45', '腰立辉', '腰立辉', '2016-09-23 13:32:47', '2016-09-23 13:32:47');
INSERT INTO `tp_func` VALUES ('10072', '9', '功能点-规则入口', '正常', '10008', '45', '腰立辉', '腰立辉', '2016-09-22 18:03:07', '2016-09-22 18:03:07');
INSERT INTO `tp_func` VALUES ('10073', '10', '功能点-模板入口', '正常', '10008', '45', '腰立辉', '腰立辉', '2016-09-23 13:32:57', '2016-09-23 13:32:57');
INSERT INTO `tp_func` VALUES ('10074', '1', '（M/A）人员列队场景列表', '正常', '10029', '47', '腰立辉', '腰立辉', '2016-09-25 13:37:26', '2016-09-25 13:37:26');
INSERT INTO `tp_func` VALUES ('10075', '2', '切换阶段人员', '正常', '10029', '47', '腰立辉', '腰立辉', '2016-09-25 13:37:45', '2016-09-25 13:37:45');
INSERT INTO `tp_func` VALUES ('10076', '3', '场景库-入口', '正常', '10029', '47', '腰立辉', '腰立辉', '2016-09-23 13:07:32', '2016-09-23 13:07:32');
INSERT INTO `tp_func` VALUES ('10077', '4', '场景功能-入口', '正常', '10029', '47', '腰立辉', '腰立辉', '2016-09-23 13:07:42', '2016-09-23 13:07:42');
INSERT INTO `tp_func` VALUES ('10078', '5', '列队场景-编辑', '正常', '10029', '47', '腰立辉', '腰立辉', '2016-09-23 14:53:06', '2016-09-23 14:53:06');
INSERT INTO `tp_func` VALUES ('10079', '6', '列队场景-移除', '正常', '10029', '47', '腰立辉', '腰立辉', '2016-09-23 13:08:11', '2016-09-23 13:08:11');
INSERT INTO `tp_func` VALUES ('10080', '1', '已分派场景列表', '已搁置', '10031', '47', '腰立辉', '腰立辉', '2016-09-24 15:15:08', '2016-09-24 15:15:08');
INSERT INTO `tp_func` VALUES ('10081', '2', '切换测试人员', '已搁置', '10031', '47', '腰立辉', '腰立辉', '2016-09-24 15:15:43', '2016-09-24 15:15:43');
INSERT INTO `tp_func` VALUES ('10082', '3', '待分派场景列表（含次数）', '已搁置', '10031', '47', '腰立辉', '腰立辉', '2016-09-23 09:57:09', '2016-09-23 09:57:09');
INSERT INTO `tp_func` VALUES ('10083', '4', '场景分派', '正常', '10031', '47', '腰立辉', '腰立辉', '2016-09-23 09:56:52', '2016-09-23 09:56:52');
INSERT INTO `tp_func` VALUES ('10084', '1', '场景功能列表', '正常', '10032', '47', '腰立辉', '腰立辉', '2016-09-23 09:59:09', '2016-09-23 09:59:09');
INSERT INTO `tp_func` VALUES ('10085', '2', '切换场景', '正常', '10032', '47', '腰立辉', '腰立辉', '2016-09-23 09:59:17', '2016-09-23 09:59:17');
INSERT INTO `tp_func` VALUES ('10086', '3', '标记场景测试结果', '正常', '10032', '47', '腰立辉', '腰立辉', '2016-09-23 10:00:10', '2016-09-23 10:00:10');
INSERT INTO `tp_func` VALUES ('10115', '1', '功能点-控件列表', '正常', '10033', '47', '腰立辉', '腰立辉', '2016-09-23 10:56:43', '2016-09-23 10:56:43');
INSERT INTO `tp_func` VALUES ('10116', '2', '控件-添加', '正常', '10033', '47', '腰立辉', '腰立辉', '2016-09-23 10:54:55', '2016-09-23 10:54:55');
INSERT INTO `tp_func` VALUES ('10117', '3', '控件-维护', '正常', '10033', '45', '腰立辉', '腰立辉', '2016-09-23 10:52:35', '2016-09-23 10:52:35');
INSERT INTO `tp_func` VALUES ('10118', '4', '功能点-数据模板列表', '正常', '10033', '45', '腰立辉', '腰立辉', '2016-09-23 10:52:57', '2016-09-23 10:52:57');
INSERT INTO `tp_func` VALUES ('10119', '5', '标记-数据状态', '正常', '10033', '47', '腰立辉', '腰立辉', '2016-09-23 11:01:05', '2016-09-23 11:01:05');
INSERT INTO `tp_func` VALUES ('10120', '6', '模板数据-清除', '正常', '10033', '47', '腰立辉', '腰立辉', '2016-09-23 15:11:00', '2016-09-23 15:11:00');
INSERT INTO `tp_func` VALUES ('10121', '7', '模板数据-维护（更多）', '正常', '10033', '47', '腰立辉', '腰立辉', '2016-09-23 15:11:07', '2016-09-23 15:11:07');
INSERT INTO `tp_func` VALUES ('10122', '8', '编写用例入口', '正常', '10033', '47', '腰立辉', '腰立辉', '2016-09-23 11:02:11', '2016-09-23 11:02:11');
INSERT INTO `tp_func` VALUES ('10123', '1', '项目-场景列表', '正常', '10017', '47', '腰立辉', '腰立辉', '2016-09-23 11:06:09', '2016-09-23 11:06:09');
INSERT INTO `tp_func` VALUES ('10124', '2', '切换项目', '正常', '10017', '47', '腰立辉', '腰立辉', '2016-09-23 11:06:33', '2016-09-23 11:06:33');
INSERT INTO `tp_func` VALUES ('10099', '1', '项目-测试范围列表', '正常', '10013', '47', '腰立辉', '腰立辉', '2016-09-23 10:07:01', '2016-09-23 10:07:01');
INSERT INTO `tp_func` VALUES ('10100', '2', '功能点-编辑', '正常', '10013', '47', '腰立辉', '腰立辉', '2016-09-23 10:07:27', '2016-09-23 10:07:27');
INSERT INTO `tp_func` VALUES ('10101', '3', '范围-用例入口', '正常', '10013', '47', '腰立辉', '腰立辉', '2016-09-23 10:08:56', '2016-09-23 10:08:56');
INSERT INTO `tp_func` VALUES ('10102', '4', '范围-规则入口', '正常', '10013', '47', '腰立辉', '腰立辉', '2016-09-23 10:09:08', '2016-09-23 10:09:08');
INSERT INTO `tp_func` VALUES ('10103', '5', '范围-数据模板入口', '正常', '10013', '47', '腰立辉', '腰立辉', '2016-09-23 10:10:18', '2016-09-23 10:10:18');
INSERT INTO `tp_func` VALUES ('10104', '1', '执行阶段场景列队', '正常', '10024', '47', '腰立辉', '腰立辉', '2016-09-23 10:12:05', '2016-09-23 10:12:05');
INSERT INTO `tp_func` VALUES ('10105', '2', '切换阶段', '正常', '10024', '47', '腰立辉', '腰立辉', '2016-09-23 10:12:27', '2016-09-23 10:12:27');
INSERT INTO `tp_func` VALUES ('10106', '3', '执行测试-入口', '正常', '10024', '47', '腰立辉', '腰立辉', '2016-09-23 10:12:49', '2016-09-23 10:12:49');
INSERT INTO `tp_func` VALUES ('10107', '1', '执行场景功能点列表', '正常', '10025', '47', '腰立辉', '腰立辉', '2016-09-23 10:18:35', '2016-09-23 10:18:35');
INSERT INTO `tp_func` VALUES ('10108', '2', '切换执行场景', '正常', '10025', '47', '腰立辉', '腰立辉', '2016-09-23 10:18:44', '2016-09-23 10:18:44');
INSERT INTO `tp_func` VALUES ('10109', '3', '测试结果-标记通过', '正常', '10025', '47', '腰立辉', '腰立辉', '2016-09-23 10:20:21', '2016-09-23 10:20:21');
INSERT INTO `tp_func` VALUES ('10110', '4', '测试结果-标记失败（说明）', '正常', '10025', '47', '腰立辉', '腰立辉', '2016-09-23 10:23:12', '2016-09-23 10:23:12');
INSERT INTO `tp_func` VALUES ('10111', '5', '测试结果-重置', '正常', '10025', '47', '腰立辉', '腰立辉', '2016-09-23 10:21:06', '2016-09-23 10:21:06');
INSERT INTO `tp_func` VALUES ('10112', '6', '用例库-入口', '正常', '10025', '47', '腰立辉', '腰立辉', '2016-09-23 10:22:30', '2016-09-23 10:22:30');
INSERT INTO `tp_func` VALUES ('10113', '7', '规则-入口', '正常', '10025', '47', '腰立辉', '腰立辉', '2016-09-23 10:22:42', '2016-09-23 10:22:42');
INSERT INTO `tp_func` VALUES ('10114', '9', '标记-场景执行结果', '正常', '10025', '47', '腰立辉', '腰立辉', '2016-09-23 14:08:13', '2016-09-23 14:08:13');
INSERT INTO `tp_func` VALUES ('10125', '3', '场景-添加', '正常', '10017', '47', '腰立辉', '腰立辉', '2016-09-23 11:07:00', '2016-09-23 11:07:00');
INSERT INTO `tp_func` VALUES ('10126', '4', '场景-编辑', '正常', '10017', '47', '腰立辉', '腰立辉', '2016-09-23 11:07:17', '2016-09-23 11:07:17');
INSERT INTO `tp_func` VALUES ('10127', '6', '场景功能-入口', '正常', '10017', '47', '腰立辉', '腰立辉', '2016-09-23 11:09:04', '2016-09-23 11:09:04');
INSERT INTO `tp_func` VALUES ('10128', '5', '场景-复制', '正常', '10017', '47', '腰立辉', '腰立辉', '2016-09-23 11:08:32', '2016-09-23 11:08:32');
INSERT INTO `tp_func` VALUES ('10129', '1', '场景功能列表', '正常', '10018', '47', '腰立辉', '腰立辉', '2016-09-23 11:13:12', '2016-09-23 11:13:12');
INSERT INTO `tp_func` VALUES ('10130', '2', '场景功能-编辑', '正常', '10018', '47', '腰立辉', '腰立辉', '2016-09-23 11:14:32', '2016-09-23 11:14:32');
INSERT INTO `tp_func` VALUES ('10131', '3', '场景功能-移除', '正常', '10018', '47', '腰立辉', '腰立辉', '2016-09-23 11:14:44', '2016-09-23 11:14:44');
INSERT INTO `tp_func` VALUES ('10132', '4', '功能库-入口', '正常', '10018', '47', '腰立辉', '腰立辉', '2016-09-23 11:14:56', '2016-09-23 11:14:56');
INSERT INTO `tp_func` VALUES ('10133', '5', '场景数据-入口', '正常', '10018', '47', '腰立辉', '腰立辉', '2016-09-23 11:15:07', '2016-09-23 11:15:07');
INSERT INTO `tp_func` VALUES ('10134', '6', '功能用例库-入口', '已搁置', '10018', '47', '腰立辉', '腰立辉', '2016-09-24 15:14:45', '2016-09-24 15:14:45');
INSERT INTO `tp_func` VALUES ('10135', '1', '功能库-功能列表', '正常', '10019', '47', '腰立辉', '腰立辉', '2016-09-23 11:17:04', '2016-09-23 11:17:04');
INSERT INTO `tp_func` VALUES ('10136', '2', '切换系统路径', '正常', '10019', '47', '腰立辉', '腰立辉', '2016-09-23 11:17:15', '2016-09-23 11:17:15');
INSERT INTO `tp_func` VALUES ('10137', '3', '功能-加入场景', '正常', '10019', '47', '腰立辉', '腰立辉', '2016-09-23 11:17:43', '2016-09-23 11:17:43');
INSERT INTO `tp_func` VALUES ('10138', '4', '功能-加入缓存', '正常', '10019', '47', '腰立辉', '腰立辉', '2016-09-23 11:17:56', '2016-09-23 11:17:56');
INSERT INTO `tp_func` VALUES ('10139', '5', '场景功能列表', '正常', '10019', '47', '腰立辉', '腰立辉', '2016-09-23 11:18:14', '2016-09-23 11:18:14');
INSERT INTO `tp_func` VALUES ('10140', '6', '场景功能-编辑', '正常', '10019', '47', '腰立辉', '腰立辉', '2016-09-23 11:18:31', '2016-09-23 11:18:31');
INSERT INTO `tp_func` VALUES ('10141', '7', '场景功能-移除', '正常', '10019', '47', '腰立辉', '腰立辉', '2016-09-23 11:18:48', '2016-09-23 11:18:48');
INSERT INTO `tp_func` VALUES ('10142', '8', '场景功能-加入缓存', '正常', '10019', '47', '腰立辉', '腰立辉', '2016-09-23 11:19:01', '2016-09-23 11:19:01');
INSERT INTO `tp_func` VALUES ('10143', '9', '场景功能-全部加入缓存', '正常', '10019', '47', '腰立辉', '腰立辉', '2016-09-23 11:19:12', '2016-09-23 11:19:12');
INSERT INTO `tp_func` VALUES ('10144', '10', '缓存功能列表', '正常', '10019', '47', '腰立辉', '腰立辉', '2016-09-23 11:19:26', '2016-09-23 11:19:26');
INSERT INTO `tp_func` VALUES ('10145', '11', '缓存功能-编辑', '正常', '10019', '47', '腰立辉', '腰立辉', '2016-09-23 11:19:52', '2016-09-23 11:19:52');
INSERT INTO `tp_func` VALUES ('10146', '12', '缓存功能-移除', '正常', '10019', '47', '腰立辉', '腰立辉', '2016-09-23 11:20:09', '2016-09-23 11:20:09');
INSERT INTO `tp_func` VALUES ('10147', '13', '缓存功能-全部移除', '正常', '10019', '47', '腰立辉', '腰立辉', '2016-09-23 11:20:26', '2016-09-23 11:20:26');
INSERT INTO `tp_func` VALUES ('10148', '14', '缓存功能-加入场景', '正常', '10019', '47', '腰立辉', '腰立辉', '2016-09-23 11:20:42', '2016-09-23 11:20:42');
INSERT INTO `tp_func` VALUES ('10149', '15', '缓存功能-全部加入场景', '正常', '10019', '47', '腰立辉', '腰立辉', '2016-09-23 11:20:59', '2016-09-23 11:20:59');
INSERT INTO `tp_func` VALUES ('10150', '1', '功能用例列表（库）', '正常', '10020', '47', '腰立辉', '腰立辉', '2016-09-23 11:26:12', '2016-09-23 11:26:12');
INSERT INTO `tp_func` VALUES ('10151', '2', '绑定用例', '正常', '10020', '47', '腰立辉', '腰立辉', '2016-09-23 11:24:27', '2016-09-23 11:24:27');
INSERT INTO `tp_func` VALUES ('10152', '3', '用例-添加', '正常', '10020', '47', '腰立辉', '腰立辉', '2016-09-23 11:24:48', '2016-09-23 11:24:48');
INSERT INTO `tp_func` VALUES ('10153', '4', '用例-编辑', '正常', '10020', '47', '腰立辉', '腰立辉', '2016-09-23 11:24:58', '2016-09-23 11:24:58');
INSERT INTO `tp_func` VALUES ('10154', '5', '用例-数据', '正常', '10020', '47', '腰立辉', '腰立辉', '2016-09-23 11:25:31', '2016-09-23 11:25:31');
INSERT INTO `tp_func` VALUES ('10155', '6', '场景用例列表', '正常', '10020', '47', '腰立辉', '腰立辉', '2016-09-23 11:26:28', '2016-09-23 11:26:28');
INSERT INTO `tp_func` VALUES ('10156', '7', '场景用例-移除', '正常', '10020', '47', '腰立辉', '腰立辉', '2016-09-23 11:27:01', '2016-09-23 11:27:01');
INSERT INTO `tp_func` VALUES ('10157', '1', '场景模板数据列表', '正常', '10021', '47', '腰立辉', '腰立辉', '2016-09-23 11:29:59', '2016-09-23 11:29:59');
INSERT INTO `tp_func` VALUES ('10158', '2', '场景模板数据-维护', '正常', '10021', '47', '腰立辉', '腰立辉', '2016-09-23 11:30:15', '2016-09-23 11:30:15');
INSERT INTO `tp_func` VALUES ('10159', '3', '模板状态快速标记', '正常', '10021', '47', '腰立辉', '腰立辉', '2016-09-23 11:30:56', '2016-09-23 11:30:56');
INSERT INTO `tp_func` VALUES ('10160', '4', '场景数据-列表', '正常', '10021', '47', '腰立辉', '腰立辉', '2016-09-23 11:32:06', '2016-09-23 11:32:06');
INSERT INTO `tp_func` VALUES ('10161', '5', '场景数据-锁定', '正常', '10021', '47', '腰立辉', '腰立辉', '2016-09-23 11:32:20', '2016-09-23 11:32:20');
INSERT INTO `tp_func` VALUES ('10162', '6', '场景数据-模板同步', '正常', '10021', '47', '腰立辉', '腰立辉', '2016-09-23 11:32:41', '2016-09-23 11:32:41');
INSERT INTO `tp_func` VALUES ('10163', '7', '场景数据-维护', '正常', '10021', '47', '腰立辉', '腰立辉', '2016-09-23 11:32:53', '2016-09-23 11:32:53');
INSERT INTO `tp_func` VALUES ('10164', '1', '功能控件列表', '正常', '10023', '47', '腰立辉', '腰立辉', '2016-09-23 11:36:35', '2016-09-23 11:36:35');
INSERT INTO `tp_func` VALUES ('10165', '2', '切换功能', '正常', '10023', '47', '腰立辉', '腰立辉', '2016-09-23 11:36:45', '2016-09-23 11:36:45');
INSERT INTO `tp_func` VALUES ('10166', '3', '控件-添加', '正常', '10023', '47', '腰立辉', '腰立辉', '2016-09-23 11:37:11', '2016-09-23 11:37:11');
INSERT INTO `tp_func` VALUES ('10167', '4', '控件-维护', '正常', '10023', '47', '腰立辉', '腰立辉', '2016-09-23 11:37:21', '2016-09-23 11:37:21');
INSERT INTO `tp_func` VALUES ('10168', '5', '控件状态快速标记', '正常', '10023', '47', '腰立辉', '腰立辉', '2016-09-23 11:37:51', '2016-09-23 11:37:51');
INSERT INTO `tp_func` VALUES ('10169', '6', '功能控件状态维护', '正常', '10023', '47', '腰立辉', '腰立辉', '2016-09-23 11:38:08', '2016-09-23 11:38:08');
INSERT INTO `tp_func` VALUES ('10170', '7', '项目控件展开列表', '正常', '10023', '47', '腰立辉', '腰立辉', '2016-09-23 11:38:45', '2016-09-23 11:38:45');
INSERT INTO `tp_func` VALUES ('10171', '9', '控件展开列表-维护', '正常', '10023', '47', '腰立辉', '腰立辉', '2016-09-23 14:20:34', '2016-09-23 14:20:34');
INSERT INTO `tp_func` VALUES ('10172', '1', '项目-用例库列表', '正常', '10022', '47', '腰立辉', '腰立辉', '2016-09-23 11:39:51', '2016-09-23 11:39:51');
INSERT INTO `tp_func` VALUES ('10173', '2', '切换项目', '正常', '10022', '47', '腰立辉', '腰立辉', '2016-09-23 11:40:21', '2016-09-23 11:40:21');
INSERT INTO `tp_func` VALUES ('10174', '3', '查询-按级别', '正常', '10022', '47', '腰立辉', '腰立辉', '2016-09-23 11:40:35', '2016-09-23 11:40:35');
INSERT INTO `tp_func` VALUES ('10175', '6', '用例-导出', '正常', '10022', '47', '腰立辉', '腰立辉', '2016-09-23 11:41:23', '2016-09-23 11:41:23');
INSERT INTO `tp_func` VALUES ('10176', '4', '用例-添加', '正常', '10022', '47', '腰立辉', '腰立辉', '2016-09-23 11:41:29', '2016-09-23 11:41:29');
INSERT INTO `tp_func` VALUES ('10177', '5', '用例-维护', '正常', '10022', '47', '腰立辉', '腰立辉', '2016-09-23 11:41:35', '2016-09-23 11:41:35');
INSERT INTO `tp_func` VALUES ('10178', '1', '列队场景列表', '正常', '10026', '47', '腰立辉', '腰立辉', '2016-09-23 12:20:10', '2016-09-23 12:20:10');
INSERT INTO `tp_func` VALUES ('10179', '2', '导入场景数据', '正常', '10026', '47', '腰立辉', '腰立辉', '2016-09-23 12:20:31', '2016-09-23 12:20:31');
INSERT INTO `tp_func` VALUES ('10180', '3', '查看场景数据-入口', '正常', '10026', '47', '腰立辉', '腰立辉', '2016-09-23 12:20:57', '2016-09-23 12:20:57');
INSERT INTO `tp_func` VALUES ('10181', '4', '执行数据-清除', '正常', '10026', '47', '腰立辉', '腰立辉', '2016-09-23 14:09:50', '2016-09-23 14:09:50');
INSERT INTO `tp_func` VALUES ('10182', '6', '执行测试', '正常', '10026', '47', '腰立辉', '腰立辉', '2016-09-23 12:24:20', '2016-09-23 12:24:20');
INSERT INTO `tp_func` VALUES ('10183', '7', '停止测试', '正常', '10026', '47', '腰立辉', '腰立辉', '2016-09-23 12:24:29', '2016-09-23 12:24:29');
INSERT INTO `tp_func` VALUES ('10184', '8', '暂停测试', '正常', '10026', '47', '腰立辉', '腰立辉', '2016-09-23 12:24:35', '2016-09-23 12:24:35');
INSERT INTO `tp_func` VALUES ('10185', '1', '场景-执行数据列表', '正常', '10027', '47', '腰立辉', '腰立辉', '2016-09-23 12:23:15', '2016-09-23 12:23:15');
INSERT INTO `tp_func` VALUES ('10186', '2', '执行数据维护', '正常', '10027', '47', '腰立辉', '腰立辉', '2016-09-23 12:23:27', '2016-09-23 12:23:27');
INSERT INTO `tp_func` VALUES ('10187', '5', '选择执行场景', '正常', '10026', '47', '腰立辉', '腰立辉', '2016-09-23 12:24:13', '2016-09-23 12:24:13');
INSERT INTO `tp_func` VALUES ('10188', '1', '阶段执行人员列表', '正常', '10034', '47', '腰立辉', '腰立辉', '2016-09-23 12:25:00', '2016-09-23 12:25:00');
INSERT INTO `tp_func` VALUES ('10189', '2', '执行人员-从列表选择', '正常', '10034', '47', '腰立辉', '腰立辉', '2016-09-24 15:08:23', '2016-09-24 15:08:23');
INSERT INTO `tp_func` VALUES ('10190', '3', '执行人员-编辑', '正常', '10034', '47', '腰立辉', '腰立辉', '2016-09-23 13:02:35', '2016-09-23 13:02:35');
INSERT INTO `tp_func` VALUES ('10191', '4', '人员列队-入口', '正常', '10034', '47', '腰立辉', '腰立辉', '2016-09-23 12:25:56', '2016-09-23 12:25:56');
INSERT INTO `tp_func` VALUES ('10192', '11', '项目-功能点-导出', '正常', '10008', '47', '腰立辉', '腰立辉', '2016-09-23 13:33:12', '2016-09-23 13:33:12');
INSERT INTO `tp_func` VALUES ('10193', '6', '测试范围-导出', '正常', '10013', '47', '腰立辉', '腰立辉', '2016-09-23 13:34:56', '2016-09-23 13:34:56');
INSERT INTO `tp_func` VALUES ('10194', '8', '数据模板-入口', '正常', '10025', '47', '腰立辉', '腰立辉', '2016-09-23 14:08:19', '2016-09-23 14:08:19');
INSERT INTO `tp_func` VALUES ('10195', '8', '切换项目', '正常', '10023', '47', '腰立辉', '腰立辉', '2016-09-23 14:20:28', '2016-09-23 14:20:28');
INSERT INTO `tp_func` VALUES ('10196', '10', '展开-控件状态快速标记', '正常', '10023', '47', '腰立辉', '腰立辉', '2016-09-23 14:19:54', '2016-09-23 14:19:54');
INSERT INTO `tp_func` VALUES ('10197', '11', '展开-功能控件状态快速标记', '正常', '10023', '47', '腰立辉', '腰立辉', '2016-09-23 14:20:14', '2016-09-23 14:20:14');
INSERT INTO `tp_func` VALUES ('10198', '6', 'M人员-入口（手工）', '正常', '10028', '47', '腰立辉', '腰立辉', '2016-09-25 13:36:07', '2016-09-25 13:36:07');
INSERT INTO `tp_func` VALUES ('10200', '1', 'dfdf', '正常', '10035', '49', '腰立辉', '腰立辉', '2016-09-24 21:18:06', '2016-09-24 21:18:06');
INSERT INTO `tp_func` VALUES ('10199', '5', '测试人员列表', '正常', '10034', '47', '腰立辉', '腰立辉', '2016-09-24 15:08:09', '2016-09-24 15:08:09');
INSERT INTO `tp_func` VALUES ('10201', '1', '车型报价员配置列表', '正常', '10067', '46', '腰立辉', '腰立辉', '2016-09-26 10:24:45', '2016-09-26 10:24:45');
INSERT INTO `tp_func` VALUES ('10202', '2', '查询-按城市', '正常', '10067', '46', '腰立辉', '腰立辉', '2016-09-26 10:24:59', '2016-09-26 10:24:59');
INSERT INTO `tp_func` VALUES ('10203', '3', '查询-按买顾配置状态', '正常', '10067', '46', '腰立辉', '腰立辉', '2016-09-26 10:25:10', '2016-09-26 10:25:10');
INSERT INTO `tp_func` VALUES ('10204', '4', '查询-按电销配置状态', '正常', '10067', '46', '腰立辉', '腰立辉', '2016-09-26 10:25:22', '2016-09-26 10:25:22');
INSERT INTO `tp_func` VALUES ('10205', '5', '查询-按品牌车型', '正常', '10067', '46', '腰立辉', '腰立辉', '2016-09-26 10:25:51', '2016-09-26 10:25:51');
INSERT INTO `tp_func` VALUES ('10206', '6', '新增车型', '正常', '10067', '46', '腰立辉', '腰立辉', '2016-09-26 10:26:05', '2016-09-26 10:26:05');
INSERT INTO `tp_func` VALUES ('10207', '7', '批量配置买顾报价员', '正常', '10067', '46', '腰立辉', '腰立辉', '2016-09-26 10:27:04', '2016-09-26 10:27:04');
INSERT INTO `tp_func` VALUES ('10208', '8', '批量配置电销报价员', '正常', '10067', '46', '腰立辉', '腰立辉', '2016-09-26 10:27:22', '2016-09-26 10:27:22');
INSERT INTO `tp_func` VALUES ('10209', '9', '编辑车型', '正常', '10067', '46', '腰立辉', '腰立辉', '2016-09-26 10:28:45', '2016-09-26 10:28:45');
INSERT INTO `tp_func` VALUES ('10210', '10', '修改买顾', '正常', '10067', '46', '腰立辉', '腰立辉', '2016-09-26 10:28:53', '2016-09-26 10:28:53');
INSERT INTO `tp_func` VALUES ('10211', '11', '修改电销', '正常', '10067', '46', '腰立辉', '腰立辉', '2016-09-26 10:29:03', '2016-09-26 10:29:03');
INSERT INTO `tp_func` VALUES ('10212', '1', '城市买顾价格收集表', '正常', '10071', '46', '腰立辉', '腰立辉', '2016-09-26 11:18:29', '2016-09-26 10:38:39');
INSERT INTO `tp_func` VALUES ('10213', '2', '查询-按城市', '正常', '10071', '46', '腰立辉', '腰立辉', '2016-09-26 11:18:31', '2016-09-26 10:38:48');
INSERT INTO `tp_func` VALUES ('10214', '3', '查询-按买顾', '正常', '10071', '46', '腰立辉', '腰立辉', '2016-09-26 11:18:34', '2016-09-26 10:38:58');
INSERT INTO `tp_func` VALUES ('10215', '4', '明细-买顾入口', '正常', '10071', '46', '腰立辉', '腰立辉', '2016-09-26 11:18:37', '2016-09-26 10:39:22');
INSERT INTO `tp_func` VALUES ('10216', '5', '明细-未报价车款入口', '正常', '10071', '46', '腰立辉', '腰立辉', '2016-09-26 11:18:41', '2016-09-26 10:39:49');
INSERT INTO `tp_func` VALUES ('10217', '6', '明细-价格过期车款入口', '正常', '10071', '46', '腰立辉', '腰立辉', '2016-09-26 11:18:44', '2016-09-26 10:40:03');
INSERT INTO `tp_func` VALUES ('10218', '7', '明细-查询按选择城市', '正常', '10071', '46', '腰立辉', '腰立辉', '2016-09-26 11:18:48', '2016-09-26 10:40:41');
INSERT INTO `tp_func` VALUES ('10219', '8', '明细-查询按车型车款', '正常', '10071', '46', '腰立辉', '腰立辉', '2016-09-26 11:18:51', '2016-09-26 10:40:50');
INSERT INTO `tp_func` VALUES ('10220', '9', '明细-查询按价格状态', '正常', '10071', '46', '腰立辉', '腰立辉', '2016-09-26 11:18:53', '2016-09-26 10:40:59');
INSERT INTO `tp_func` VALUES ('10221', '1', '车型价格列表', '正常', '10069', '46', '腰立辉', '腰立辉', '2016-09-26 10:45:23', '2016-09-26 10:45:23');
INSERT INTO `tp_func` VALUES ('10222', '2', '查询-按选择城市', '正常', '10069', '46', '腰立辉', '腰立辉', '2016-09-26 10:46:02', '2016-09-26 10:46:02');
INSERT INTO `tp_func` VALUES ('10223', '3', '查询-按价格状态', '正常', '10069', '46', '腰立辉', '腰立辉', '2016-09-26 10:46:12', '2016-09-26 10:46:12');
INSERT INTO `tp_func` VALUES ('10224', '4', '查询-按车型车款', '正常', '10069', '46', '腰立辉', '腰立辉', '2016-09-26 11:06:15', '2016-09-26 11:06:15');
INSERT INTO `tp_func` VALUES ('10225', '5', '添加价格信息', '正常', '10069', '46', '腰立辉', '腰立辉', '2016-09-26 11:06:27', '2016-09-26 11:06:27');
INSERT INTO `tp_func` VALUES ('10226', '6', '设置显示列', '正常', '10069', '46', '腰立辉', '腰立辉', '2016-09-26 11:06:56', '2016-09-26 11:06:56');
INSERT INTO `tp_func` VALUES ('10227', '1', '价格即将过期-车款列表', '正常', '10070', '46', '腰立辉', '腰立辉', '2016-09-26 13:32:18', '2016-09-26 13:32:18');
INSERT INTO `tp_func` VALUES ('10228', '2', '提交报价入口', '正常', '10070', '46', '腰立辉', '腰立辉', '2016-09-26 13:32:48', '2016-09-26 13:32:48');
INSERT INTO `tp_func` VALUES ('10229', '1', '价格新增车款-车款列表', '正常', '10072', '46', '腰立辉', '腰立辉', '2016-09-26 13:33:37', '2016-09-26 13:33:37');
INSERT INTO `tp_func` VALUES ('10230', '2', '提交报价-入口', '正常', '10072', '46', '腰立辉', '腰立辉', '2016-09-26 13:33:50', '2016-09-26 13:33:50');
INSERT INTO `tp_func` VALUES ('10231', '1', '报价列表', '正常', '10073', '46', '腰立辉', '腰立辉', '2016-09-26 13:41:17', '2016-09-26 13:41:17');
INSERT INTO `tp_func` VALUES ('10232', '2', '查询-按价格状态', '正常', '10073', '46', '腰立辉', '腰立辉', '2016-09-26 13:41:36', '2016-09-26 13:41:36');
INSERT INTO `tp_func` VALUES ('10233', '3', '查询-按车型车款', '正常', '10073', '46', '腰立辉', '腰立辉', '2016-09-26 13:41:46', '2016-09-26 13:41:46');
INSERT INTO `tp_func` VALUES ('10234', '4', '添加价格信息', '正常', '10073', '46', '腰立辉', '腰立辉', '2016-09-26 13:42:03', '2016-09-26 13:42:03');
INSERT INTO `tp_func` VALUES ('10235', '5', '设置显示列', '正常', '10073', '46', '腰立辉', '腰立辉', '2016-09-26 13:42:17', '2016-09-26 13:42:17');
INSERT INTO `tp_func` VALUES ('10236', '6', '价格修改', '正常', '10073', '46', '腰立辉', '腰立辉', '2016-09-26 13:42:35', '2016-09-26 13:42:35');
INSERT INTO `tp_func` VALUES ('10237', '1', '待确定价格-车款列表', '正常', '10074', '46', '腰立辉', '腰立辉', '2016-09-26 13:50:35', '2016-09-26 13:50:35');
INSERT INTO `tp_func` VALUES ('10238', '2', '确认价格', '正常', '10074', '46', '腰立辉', '腰立辉', '2016-09-26 13:51:00', '2016-09-26 13:51:00');
INSERT INTO `tp_func` VALUES ('10239', '1', '显示报价城市', '正常', '10075', '46', '腰立辉', '腰立辉', '2016-09-26 13:52:59', '2016-09-26 13:52:59');
INSERT INTO `tp_func` VALUES ('10240', '2', '选择品牌车型报价（NO车款）', '正常', '10075', '46', '腰立辉', '腰立辉', '2016-09-26 13:56:29', '2016-09-26 13:56:29');
INSERT INTO `tp_func` VALUES ('10241', '3', '选择车款报价', '正常', '10075', '46', '腰立辉', '腰立辉', '2016-09-26 13:53:45', '2016-09-26 13:53:45');
INSERT INTO `tp_func` VALUES ('10242', '4', '选择优惠金额报价', '正常', '10075', '46', '腰立辉', '腰立辉', '2016-09-26 13:54:27', '2016-09-26 13:54:27');
INSERT INTO `tp_func` VALUES ('10243', '5', '选择优惠百分比报价', '正常', '10075', '46', '腰立辉', '腰立辉', '2016-09-26 13:54:42', '2016-09-26 13:54:42');
INSERT INTO `tp_func` VALUES ('10244', '6', '保存报价', '正常', '10075', '46', '腰立辉', '腰立辉', '2016-09-26 13:55:52', '2016-09-26 13:55:52');
INSERT INTO `tp_func` VALUES ('10245', '7', '保存并创建下一条', '正常', '10075', '46', '腰立辉', '腰立辉', '2016-09-26 13:56:13', '2016-09-26 13:56:13');
INSERT INTO `tp_func` VALUES ('10246', '1', '登录', '正常', '10076', '24', '腰立辉', '腰立辉', '2016-09-26 16:29:42', '2016-09-26 16:29:42');
INSERT INTO `tp_func` VALUES ('10247', '2', '注销', '正常', '10076', '24', '腰立辉', '腰立辉', '2016-09-26 16:29:48', '2016-09-26 16:29:48');
INSERT INTO `tp_func` VALUES ('10248', '3', '修改密码', '正常', '10076', '24', '腰立辉', '腰立辉', '2016-09-26 16:29:55', '2016-09-26 16:29:55');
INSERT INTO `tp_func` VALUES ('10249', '1', '角色列表', '正常', '10077', '24', '腰立辉', '腰立辉', '2016-09-26 16:32:47', '2016-09-26 16:30:26');
INSERT INTO `tp_func` VALUES ('10250', '2', '角色-添加', '正常', '10077', '24', '腰立辉', '腰立辉', '2016-09-26 16:32:52', '2016-09-26 16:30:34');
INSERT INTO `tp_func` VALUES ('10251', '3', '角色-修改', '正常', '10077', '24', '腰立辉', '腰立辉', '2016-09-26 16:32:56', '2016-09-26 16:30:45');
INSERT INTO `tp_func` VALUES ('10252', '4', '角色-分配权限', '正常', '10077', '24', '腰立辉', '腰立辉', '2016-09-26 16:32:58', '2016-09-26 16:31:13');
INSERT INTO `tp_func` VALUES ('10253', '5', '角色-更改状态', '正常', '10077', '24', '腰立辉', '腰立辉', '2016-09-26 16:33:01', '2016-09-26 16:31:27');
INSERT INTO `tp_func` VALUES ('10254', '6', '角色-删除', '正常', '10077', '24', '腰立辉', '腰立辉', '2016-09-26 16:33:02', '2016-09-26 16:31:35');
INSERT INTO `tp_func` VALUES ('10255', '1', '用户列表', '正常', '10078', '24', '腰立辉', '腰立辉', '2016-09-26 16:33:50', '2016-09-26 16:33:50');
INSERT INTO `tp_func` VALUES ('10256', '2', '查询-按工号', '正常', '10078', '24', '腰立辉', '腰立辉', '2016-09-26 16:34:00', '2016-09-26 16:34:00');
INSERT INTO `tp_func` VALUES ('10257', '3', '查询-按姓名', '正常', '10078', '24', '腰立辉', '腰立辉', '2016-09-26 16:34:09', '2016-09-26 16:34:09');
INSERT INTO `tp_func` VALUES ('10258', '4', '查询-按状态', '正常', '10078', '24', '腰立辉', '腰立辉', '2016-09-26 16:34:17', '2016-09-26 16:34:17');
INSERT INTO `tp_func` VALUES ('10259', '5', '用户-添加', '正常', '10078', '24', '腰立辉', '腰立辉', '2016-09-26 16:34:24', '2016-09-26 16:34:24');
INSERT INTO `tp_func` VALUES ('10260', '6', '用户-修改', '正常', '10078', '24', '腰立辉', '腰立辉', '2016-09-26 16:34:32', '2016-09-26 16:34:32');
INSERT INTO `tp_func` VALUES ('10261', '7', '用户-变更状态', '正常', '10078', '24', '腰立辉', '腰立辉', '2016-09-26 16:34:47', '2016-09-26 16:34:47');
INSERT INTO `tp_func` VALUES ('10262', '1', '产品列表', '正常', '10079', '24', '腰立辉', '腰立辉', '2016-09-26 16:35:24', '2016-09-26 16:35:24');
INSERT INTO `tp_func` VALUES ('10263', '2', '产品-添加', '正常', '10079', '24', '腰立辉', '腰立辉', '2016-09-26 16:35:35', '2016-09-26 16:35:35');
INSERT INTO `tp_func` VALUES ('10264', '3', '产品-编辑', '正常', '10079', '24', '腰立辉', '腰立辉', '2016-09-26 16:35:42', '2016-09-26 16:35:42');
INSERT INTO `tp_func` VALUES ('10265', '4', '系统-入口', '正常', '10079', '24', '腰立辉', '腰立辉', '2016-09-26 16:35:52', '2016-09-26 16:35:52');

-- ----------------------------
-- Table structure for `tp_hcfunc`
-- ----------------------------
DROP TABLE IF EXISTS `tp_hcfunc`;
CREATE TABLE `tp_hcfunc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sn` smallint(2) DEFAULT NULL,
  `funcid` smallint(6) DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_hcfunc
-- ----------------------------
INSERT INTO `tp_hcfunc` VALUES ('23', '1', '10000', null, '腰立辉');
INSERT INTO `tp_hcfunc` VALUES ('24', '2', '10007', null, '腰立辉');
INSERT INTO `tp_hcfunc` VALUES ('25', '4', '10024', null, '腰立辉');
INSERT INTO `tp_hcfunc` VALUES ('26', '3', '10013', null, '腰立辉');
INSERT INTO `tp_hcfunc` VALUES ('27', '5', '10001', null, '腰立辉');
INSERT INTO `tp_hcfunc` VALUES ('28', '1', '10000', null, '曹玉芳');
INSERT INTO `tp_hcfunc` VALUES ('29', '2', '10001', null, '曹玉芳');

-- ----------------------------
-- Table structure for `tp_path`
-- ----------------------------
DROP TABLE IF EXISTS `tp_path`;
CREATE TABLE `tp_path` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `sn` int(11) DEFAULT NULL,
  `path` varchar(200) DEFAULT NULL,
  `pstate` varchar(5) DEFAULT NULL,
  `sysid` int(11) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updateTime` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10106 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_path
-- ----------------------------
INSERT INTO `tp_path` VALUES ('10000', '1', '登陆模块', '正常', '4', '腰立辉', '腰立辉', '2016-09-22 10:35:12', '2016-09-22 10:35:12');
INSERT INTO `tp_path` VALUES ('10001', '2', '产品库', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 14:21:56', '2016-09-23 14:21:56');
INSERT INTO `tp_path` VALUES ('10002', '3', '测试项目', '正常', '4', '腰立辉', '腰立辉', '2016-09-22 10:40:44', '2016-09-22 10:40:44');
INSERT INTO `tp_path` VALUES ('10003', '10', '项目-系统', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 12:34:45', '2016-09-23 12:34:45');
INSERT INTO `tp_path` VALUES ('10004', '11', '项目-系统路径', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 10:41:33', '2016-09-23 10:41:33');
INSERT INTO `tp_path` VALUES ('10005', '12', '项目-系统路径-功能点', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 10:41:27', '2016-09-23 10:41:27');
INSERT INTO `tp_path` VALUES ('10006', '15', '功能点-用例', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 10:38:09', '2016-09-23 10:38:09');
INSERT INTO `tp_path` VALUES ('10007', '17', '功能点-规则', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 10:44:38', '2016-09-23 10:44:38');
INSERT INTO `tp_path` VALUES ('10008', '13', '项目-功能点', '正常', '4', '腰立辉', '腰立辉', '2016-09-22 11:22:23', '2016-09-22 10:49:52');
INSERT INTO `tp_path` VALUES ('10034', '6', '项目-里程碑-人员', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 12:34:19', '2016-09-23 12:34:19');
INSERT INTO `tp_path` VALUES ('10013', '14', '项目-范围', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 10:37:57', '2016-09-23 10:37:57');
INSERT INTO `tp_path` VALUES ('10033', '16', '功能点-模板', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 10:44:31', '2016-09-23 10:44:31');
INSERT INTO `tp_path` VALUES ('10017', '18', '项目-场景', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 10:45:23', '2016-09-23 10:45:23');
INSERT INTO `tp_path` VALUES ('10018', '19', '项目-场景-场景功能', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 10:45:30', '2016-09-23 10:45:30');
INSERT INTO `tp_path` VALUES ('10019', '20', '项目-场景-场景功能-功能库', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 10:45:38', '2016-09-23 10:45:38');
INSERT INTO `tp_path` VALUES ('10020', '21', '项目-场景-场景功能-用例库', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 10:45:44', '2016-09-23 10:45:44');
INSERT INTO `tp_path` VALUES ('10021', '22', '项目-场景-场景功能-场景数据', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 10:45:51', '2016-09-23 10:45:51');
INSERT INTO `tp_path` VALUES ('10022', '27', '项目-用例库', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 10:47:07', '2016-09-23 10:47:07');
INSERT INTO `tp_path` VALUES ('10023', '28', '项目-控件库', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 10:47:15', '2016-09-23 10:47:15');
INSERT INTO `tp_path` VALUES ('10024', '23', '手工测试', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 10:46:42', '2016-09-23 10:46:42');
INSERT INTO `tp_path` VALUES ('10025', '24', '手工测试-执行', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 10:46:48', '2016-09-23 10:46:48');
INSERT INTO `tp_path` VALUES ('10026', '25', '自动化测试', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 10:46:53', '2016-09-23 10:46:53');
INSERT INTO `tp_path` VALUES ('10027', '26', '自动化测试-测试数据', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 10:46:59', '2016-09-23 10:46:59');
INSERT INTO `tp_path` VALUES ('10028', '5', '项目-里程碑', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 12:34:14', '2016-09-23 12:34:14');
INSERT INTO `tp_path` VALUES ('10029', '7', '项目-里程碑-列队', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 12:34:24', '2016-09-23 12:34:24');
INSERT INTO `tp_path` VALUES ('10030', '4', '项目-风险', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 12:34:05', '2016-09-23 12:34:05');
INSERT INTO `tp_path` VALUES ('10031', '8', '项目-里程碑-列队-场景库', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 13:08:34', '2016-09-23 13:08:34');
INSERT INTO `tp_path` VALUES ('10032', '9', '项目-里程碑-列队-场景功能', '正常', '4', '腰立辉', '腰立辉', '2016-09-23 12:34:38', '2016-09-23 12:34:38');
INSERT INTO `tp_path` VALUES ('10035', '1', 'yyyy', '正常', '56', '腰立辉', '腰立辉', '2016-09-24 21:17:47', '2016-09-24 21:17:47');
INSERT INTO `tp_path` VALUES ('10036', '1', '工作台', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:23:04', '2016-09-26 10:04:06');
INSERT INTO `tp_path` VALUES ('10037', '2', '客户管理-全部客户', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:23:05', '2016-09-26 10:04:48');
INSERT INTO `tp_path` VALUES ('10038', '3', '客户管理-公共客户', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:23:07', '2016-09-26 10:04:59');
INSERT INTO `tp_path` VALUES ('10039', '4', '客户管理-30天未跟进客户', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:23:09', '2016-09-26 10:05:15');
INSERT INTO `tp_path` VALUES ('10040', '5', '业务管理-买车顾问管理', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:23:11', '2016-09-26 10:09:21');
INSERT INTO `tp_path` VALUES ('10041', '6', '业务管理-外呼录音', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:23:12', '2016-09-26 10:09:51');
INSERT INTO `tp_path` VALUES ('10042', '7', '业务管理-签到与倒休', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:23:14', '2016-09-26 10:10:02');
INSERT INTO `tp_path` VALUES ('10043', '8', '业务管理-免打扰客户', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:23:17', '2016-09-26 10:10:25');
INSERT INTO `tp_path` VALUES ('10044', '9', '业务管理-商家位置管理', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:23:19', '2016-09-26 10:10:47');
INSERT INTO `tp_path` VALUES ('10045', '11', '统计报表-城市业绩统计', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:24:37', '2016-09-26 10:11:28');
INSERT INTO `tp_path` VALUES ('10046', '12', '统计报表-分配与跟进客户统计', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:24:39', '2016-09-26 10:11:49');
INSERT INTO `tp_path` VALUES ('10047', '13', '统计报表-买顾业绩统计', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:24:41', '2016-09-26 10:12:00');
INSERT INTO `tp_path` VALUES ('10048', '14', '线索管理-全部线索', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:24:44', '2016-09-26 10:12:36');
INSERT INTO `tp_path` VALUES ('10049', '15', '线索管理-线索来源配置', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:24:47', '2016-09-26 10:13:00');
INSERT INTO `tp_path` VALUES ('10050', '16', '任务管理-添加客户', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:24:50', '2016-09-26 10:14:51');
INSERT INTO `tp_path` VALUES ('10051', '17', '任务管理-任务管理', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:24:52', '2016-09-26 10:15:00');
INSERT INTO `tp_path` VALUES ('10052', '18', '订单管理', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:24:55', '2016-09-26 10:15:21');
INSERT INTO `tp_path` VALUES ('10053', '19', '权限管理-角色类型管理', '已搁置', '11', '腰立辉', '腰立辉', '2016-09-26 11:24:59', '2016-09-26 10:16:08');
INSERT INTO `tp_path` VALUES ('10054', '20', '权限管理-系统资源管理', '已搁置', '11', '腰立辉', '腰立辉', '2016-09-26 11:25:02', '2016-09-26 10:43:10');
INSERT INTO `tp_path` VALUES ('10055', '21', '权限管理-角色管理', '已搁置', '11', '腰立辉', '腰立辉', '2016-09-26 11:25:04', '2016-09-26 10:43:15');
INSERT INTO `tp_path` VALUES ('10056', '22', '权限管理-用户管理', '已搁置', '11', '腰立辉', '腰立辉', '2016-09-26 11:25:07', '2016-09-26 10:43:20');
INSERT INTO `tp_path` VALUES ('10057', '23', '消息中心-待办提醒', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:25:09', '2016-09-26 10:17:52');
INSERT INTO `tp_path` VALUES ('10058', '24', '消息中心-订单提醒', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:25:11', '2016-09-26 10:18:00');
INSERT INTO `tp_path` VALUES ('10059', '25', '消息中心-评价投诉', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:25:14', '2016-09-26 10:18:11');
INSERT INTO `tp_path` VALUES ('10060', '26', '消息中心-系统公告', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:25:17', '2016-09-26 10:18:21');
INSERT INTO `tp_path` VALUES ('10061', '27', '公告管理-公告管理', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:25:20', '2016-09-26 10:18:59');
INSERT INTO `tp_path` VALUES ('10062', '28', '公告管理-系统消息管理', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:25:24', '2016-09-26 10:19:50');
INSERT INTO `tp_path` VALUES ('10063', '29', '在线顾问管理-在线顾问', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:25:27', '2016-09-26 10:20:25');
INSERT INTO `tp_path` VALUES ('10064', '30', '消息中心-品牌分配', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:25:30', '2016-09-26 10:20:39');
INSERT INTO `tp_path` VALUES ('10065', '31', '基盘客户管理-待办任务', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:25:34', '2016-09-26 10:21:27');
INSERT INTO `tp_path` VALUES ('10066', '32', '基盘客户管理-短信推送', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:25:37', '2016-09-26 10:21:47');
INSERT INTO `tp_path` VALUES ('10067', '33', '价格库存管理-车型及报价配置管理', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:25:41', '2016-09-26 10:22:34');
INSERT INTO `tp_path` VALUES ('10072', '36', '价格库存管理-价格库存管理-新增车款', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 13:29:43', '2016-09-26 13:29:43');
INSERT INTO `tp_path` VALUES ('10069', '34', '价格库存管理-车型价格库', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:24:06', '2016-09-26 10:23:03');
INSERT INTO `tp_path` VALUES ('10070', '35', '价格库存管理-价格库存管理-即将过期', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 13:29:24', '2016-09-26 13:29:24');
INSERT INTO `tp_path` VALUES ('10071', '10', '业务管理-价格收集管理', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:24:35', '2016-09-26 11:10:39');
INSERT INTO `tp_path` VALUES ('10073', '37', '价格库存管理-价格库存管理-我的报价', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 13:29:57', '2016-09-26 13:29:57');
INSERT INTO `tp_path` VALUES ('10074', '38', '价格库存管理-价格库存管理-待确定价格', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 13:30:12', '2016-09-26 13:30:12');
INSERT INTO `tp_path` VALUES ('10075', '39', '价格库存管理-库存价格收集', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 13:30:38', '2016-09-26 13:30:38');
INSERT INTO `tp_path` VALUES ('10076', '1', '登陆模块', '正常', '54', '腰立辉', '腰立辉', '2016-09-26 16:19:26', '2016-09-26 16:19:26');
INSERT INTO `tp_path` VALUES ('10077', '2', '设置-角色管理', '正常', '54', '腰立辉', '腰立辉', '2016-09-26 16:20:09', '2016-09-26 16:20:09');
INSERT INTO `tp_path` VALUES ('10078', '3', '设置-用户管理', '正常', '54', '腰立辉', '腰立辉', '2016-09-26 16:33:20', '2016-09-26 16:33:20');
INSERT INTO `tp_path` VALUES ('10079', '4', '测试库-产品库', '正常', '54', '腰立辉', '腰立辉', '2016-09-26 16:21:00', '2016-09-26 16:21:00');
INSERT INTO `tp_path` VALUES ('10080', '5', '项目-风险', '已搁置', '54', '腰立辉', '腰立辉', '2016-09-26 16:22:25', '2016-09-26 16:22:25');
INSERT INTO `tp_path` VALUES ('10081', '6', '项目-里程碑', '正常', '54', '腰立辉', '腰立辉', '2016-09-26 16:22:46', '2016-09-26 16:22:46');
INSERT INTO `tp_path` VALUES ('10082', '7', '项目-里程碑-人员', '正常', '54', '腰立辉', '腰立辉', '2016-09-26 16:22:59', '2016-09-26 16:22:59');
INSERT INTO `tp_path` VALUES ('10083', '8', '项目-里程碑-人员-列队', '正常', '54', '腰立辉', '腰立辉', '2016-09-26 16:23:20', '2016-09-26 16:23:20');
INSERT INTO `tp_path` VALUES ('10084', '9', '项目-里程碑-人员-列队-场景库', '正常', '54', '腰立辉', '腰立辉', '2016-09-26 16:23:32', '2016-09-26 16:23:32');
INSERT INTO `tp_path` VALUES ('10085', '10', '项目-里程碑-人员-列队-场景功能', '正常', '54', '腰立辉', '腰立辉', '2016-09-26 16:23:47', '2016-09-26 16:23:47');
INSERT INTO `tp_path` VALUES ('10086', '11', '项目-系统', '正常', '54', '腰立辉', '腰立辉', '2016-09-26 16:24:01', '2016-09-26 16:24:01');
INSERT INTO `tp_path` VALUES ('10087', '12', '项目-系统-关联系统', '正常', '54', '腰立辉', '腰立辉', '2016-09-26 16:24:30', '2016-09-26 16:24:30');
INSERT INTO `tp_path` VALUES ('10088', '13', '项目-系统-路径', '正常', '54', '腰立辉', '腰立辉', '2016-09-26 16:24:39', '2016-09-26 16:24:39');
INSERT INTO `tp_path` VALUES ('10089', '14', '项目-系统-路径-功能点', '正常', '54', '腰立辉', '腰立辉', '2016-09-26 16:24:50', '2016-09-26 16:24:50');
INSERT INTO `tp_path` VALUES ('10090', '15', '项目-功能点', '正常', '54', '腰立辉', '腰立辉', '2016-09-26 16:25:00', '2016-09-26 16:25:00');
INSERT INTO `tp_path` VALUES ('10091', '16', '项目-测试范围', '正常', '54', '腰立辉', '腰立辉', '2016-09-26 16:25:10', '2016-09-26 16:25:10');
INSERT INTO `tp_path` VALUES ('10092', '17', '功能点-用例', '正常', '54', '腰立辉', '腰立辉', '2016-09-26 16:25:25', '2016-09-26 16:25:25');
INSERT INTO `tp_path` VALUES ('10093', '18', '功能点-数据模板', '正常', '54', '腰立辉', '腰立辉', '2016-09-26 16:25:33', '2016-09-26 16:25:33');
INSERT INTO `tp_path` VALUES ('10094', '19', '功能点-规则', '正常', '54', '腰立辉', '腰立辉', '2016-09-26 16:25:40', '2016-09-26 16:25:40');
INSERT INTO `tp_path` VALUES ('10095', '20', '项目-场景', '正常', '54', '腰立辉', '腰立辉', '2016-09-26 16:25:49', '2016-09-26 16:25:49');
INSERT INTO `tp_path` VALUES ('10096', '21', '项目-场景-场景功能', '正常', '54', '腰立辉', '腰立辉', '2016-09-26 16:26:13', '2016-09-26 16:26:13');
INSERT INTO `tp_path` VALUES ('10097', '22', '项目-场景-场景功能-功能库', '正常', '54', '腰立辉', '腰立辉', '2016-09-26 16:26:25', '2016-09-26 16:26:25');
INSERT INTO `tp_path` VALUES ('10098', '23', '项目-场景-场景功能-用例库', '正常', '54', '腰立辉', '腰立辉', '2016-09-26 16:26:41', '2016-09-26 16:26:41');
INSERT INTO `tp_path` VALUES ('10099', '24', '项目-场景-场景功能-场景数据', '正常', '54', '腰立辉', '腰立辉', '2016-09-26 16:26:54', '2016-09-26 16:26:54');
INSERT INTO `tp_path` VALUES ('10100', '25', '手工测试', '正常', '54', '腰立辉', '腰立辉', '2016-09-26 16:27:11', '2016-09-26 16:27:11');
INSERT INTO `tp_path` VALUES ('10101', '26', '手工测试-执行', '正常', '54', '腰立辉', '腰立辉', '2016-09-26 16:27:22', '2016-09-26 16:27:22');
INSERT INTO `tp_path` VALUES ('10102', '27', '自动化测试', '正常', '54', '腰立辉', '腰立辉', '2016-09-26 16:27:29', '2016-09-26 16:27:29');
INSERT INTO `tp_path` VALUES ('10103', '28', '自动化测试-测试数据', '正常', '54', '腰立辉', '腰立辉', '2016-09-26 16:28:12', '2016-09-26 16:28:12');
INSERT INTO `tp_path` VALUES ('10104', '4', '测试库-项目用例库', '正常', '54', '腰立辉', '腰立辉', '2016-09-26 16:28:43', '2016-09-26 16:28:43');
INSERT INTO `tp_path` VALUES ('10105', '4', '测试库-项目控件库', '正常', '54', '腰立辉', '腰立辉', '2016-09-26 16:29:09', '2016-09-26 16:29:09');

-- ----------------------------
-- Table structure for `tp_product`
-- ----------------------------
DROP TABLE IF EXISTS `tp_product`;
CREATE TABLE `tp_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `short` varchar(10) DEFAULT NULL,
  `product` varchar(50) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updateTime` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_product
-- ----------------------------
INSERT INTO `tp_product` VALUES ('1', '惠买车', '惠买车平台', '正常', '腰立辉', '腰立辉', '2016-09-16 22:04:58', '2016-09-16 22:04:58');
INSERT INTO `tp_product` VALUES ('2', '自动化', '自动化平台', '正常', '腰立辉', '腰立辉', '2016-09-16 22:07:52', '2016-09-16 22:07:52');

-- ----------------------------
-- Table structure for `tp_program`
-- ----------------------------
DROP TABLE IF EXISTS `tp_program`;
CREATE TABLE `tp_program` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `prono` varchar(30) DEFAULT '',
  `program` varchar(50) DEFAULT NULL,
  `prodid` int(11) DEFAULT NULL,
  `prost` varchar(6) DEFAULT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT '0000-00-00',
  `manager` varchar(10) DEFAULT NULL,
  `testgp` varchar(50) DEFAULT NULL,
  `ptype` varchar(8) DEFAULT '简要',
  `pm` varchar(10) DEFAULT NULL,
  `reType` varchar(10) DEFAULT '需求新增',
  `reLevel` varchar(5) DEFAULT '一般需求',
  `expOnline` date DEFAULT '0000-00-00',
  `profile` text,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updateTime` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_program
-- ----------------------------
INSERT INTO `tp_program` VALUES ('45', 'Auto1609.2', '测试管理验收', '2', '进行中', '2016-09-22', '2016-10-31', '孟军良', 'Auto', '简要', '', '需求新增', '一般需求', '2016-09-22', '', '腰立辉', '腰立辉', '2016-09-24 17:15:28', '2016-09-24 17:15:28');
INSERT INTO `tp_program` VALUES ('46', 'OP1609.1', '车型价格收集', '1', '进行中', '2016-09-22', '2016-10-14', '曹玉芳', 'OP', '简要', '王艳梅', '需求新增', '一般需求', '2016-10-14', '<p>\r\n	1.电商坐席收集价格</p>\r\n', '腰立辉', '腰立辉', '2016-09-26 13:44:44', '2016-09-26 13:44:44');
INSERT INTO `tp_program` VALUES ('24', 'Auto1608.1', '自动化平台一期', '2', '进行中', '2016-07-21', '2016-09-30', '岳丹丹', 'Auto', '简要', '腰立辉', '需求新增', '一般需求', '2016-08-13', '<p>\r\n	简介</p>\r\n', '腰立辉', '腰立辉', '2016-09-23 10:55:09', '2016-09-22 10:08:34');
INSERT INTO `tp_program` VALUES ('47', 'Auto1609.3', 'Access原型设计', '2', '进行中', '2016-09-23', '2016-09-30', '腰立辉', 'Auto', '简要', null, '需求新增', '一般需求', '0000-00-00', null, '腰立辉', '腰立辉', '2016-09-23 09:42:22', '2016-09-23 09:42:07');
INSERT INTO `tp_program` VALUES ('48', 'GD1609.1', 'ytyuu', '2', '进行中', '2016-09-24', '2016-10-01', '腰立辉', 'GD', '简要', '', '需求新增', '一般需求', '2016-10-01', '<ul>\r\n	<li>\r\n		<strong><em><u><strike><img alt=\"cool\" data-cke-saved-src=\"http://192.168.31.196:81/tpTest/Public/js/ckeditor/plugins/smiley/images/12.gif\" height=\"24\" src=\"http://192.168.31.196:81/tpTest/Public/js/ckeditor/plugins/smiley/images/12.gif\" title=\"cool\" width=\"24\" /></strike></u></em></strong></li>\r\n</ul>\r\n', '腰立辉', '腰立辉', '2016-09-24 20:43:19', '2016-09-24 20:43:19');
INSERT INTO `tp_program` VALUES ('49', 'GD1610.2', 'yyy', '2', '进行中', '2016-09-24', '2016-10-01', null, 'GD', '简要', null, '需求新增', '一般需求', '2016-10-01', null, '腰立辉', '腰立辉', '2016-09-24 21:15:26', '2016-09-24 21:15:26');

-- ----------------------------
-- Table structure for `tp_prosys`
-- ----------------------------
DROP TABLE IF EXISTS `tp_prosys`;
CREATE TABLE `tp_prosys` (
  `prosysid` smallint(5) NOT NULL AUTO_INCREMENT,
  `sysid` smallint(6) DEFAULT NULL,
  `proid` smallint(6) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updateTime` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`prosysid`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_prosys
-- ----------------------------
INSERT INTO `tp_prosys` VALUES ('56', '54', '24', '腰立辉', '腰立辉', '2016-09-22 10:06:44', '2016-09-22 10:06:44');
INSERT INTO `tp_prosys` VALUES ('67', '4', '45', '腰立辉', '腰立辉', '2016-09-25 19:12:47', '2016-09-25 19:12:47');
INSERT INTO `tp_prosys` VALUES ('61', '4', '47', '腰立辉', '腰立辉', '2016-09-23 09:46:13', '2016-09-23 09:46:13');
INSERT INTO `tp_prosys` VALUES ('68', '11', '46', '腰立辉', '腰立辉', '2016-09-26 11:26:22', '2016-09-26 11:26:22');
INSERT INTO `tp_prosys` VALUES ('62', '56', '48', '腰立辉', '腰立辉', '2016-09-24 20:47:58', '2016-09-24 20:47:58');
INSERT INTO `tp_prosys` VALUES ('63', '4', '48', '腰立辉', '腰立辉', '2016-09-24 20:48:09', '2016-09-24 20:48:09');
INSERT INTO `tp_prosys` VALUES ('64', '56', '49', '腰立辉', '腰立辉', '2016-09-24 21:16:03', '2016-09-24 21:16:03');
INSERT INTO `tp_prosys` VALUES ('65', '4', '49', '腰立辉', '腰立辉', '2016-09-24 21:16:05', '2016-09-24 21:16:05');

-- ----------------------------
-- Table structure for `tp_risk`
-- ----------------------------
DROP TABLE IF EXISTS `tp_risk`;
CREATE TABLE `tp_risk` (
  `id` smallint(11) NOT NULL AUTO_INCREMENT,
  `sn` int(11) DEFAULT NULL,
  `risk` text,
  `level` varchar(2) DEFAULT NULL,
  `amethod` text,
  `proid` smallint(6) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `remaks` varchar(200) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updateTime` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_risk
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_rules`
-- ----------------------------
DROP TABLE IF EXISTS `tp_rules`;
CREATE TABLE `tp_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sn` int(11) DEFAULT NULL,
  `rules` varchar(300) DEFAULT NULL,
  `source` varchar(50) DEFAULT NULL,
  `funcid` int(11) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `fproid` smallint(6) DEFAULT NULL,
  `remark` text,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updateTime` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10002 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_rules
-- ----------------------------
INSERT INTO `tp_rules` VALUES ('10000', '1', '用户名用自己的域账号，密码默认为123456', '需求文档', '10000', '正常', '45', '', '腰立辉', '腰立辉', '2016-09-22 15:09:32', '2016-09-22 15:09:32');
INSERT INTO `tp_rules` VALUES ('10001', '1', '正常注销', '需求文档', '10001', '正常', '45', '', '腰立辉', '腰立辉', '2016-09-22 16:43:37', '2016-09-22 16:43:37');

-- ----------------------------
-- Table structure for `tp_scene`
-- ----------------------------
DROP TABLE IF EXISTS `tp_scene`;
CREATE TABLE `tp_scene` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sn` smallint(3) DEFAULT NULL,
  `type` varchar(8) DEFAULT 'Manual',
  `level` smallint(1) DEFAULT NULL,
  `swho` varchar(20) DEFAULT NULL,
  `swhen` varchar(20) DEFAULT NULL,
  `testip` varchar(200) DEFAULT NULL,
  `scene` varchar(50) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `proid` smallint(6) DEFAULT NULL,
  `flow` varchar(300) DEFAULT NULL,
  `sourceid` smallint(6) DEFAULT '0',
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updateTime` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10010 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_scene
-- ----------------------------
INSERT INTO `tp_scene` VALUES ('10000', '1', 'M', '2', '默认', '默认', 'http://127.0.0.1:81/tpTest/autotest.php/Index/index', '正常创建测试项目并制定里程碑选定测试系统', '正常', '45', '登录-建项目-建里程碑', '0', '腰立辉', '腰立辉', '2016-09-24 00:39:54', '2016-09-24 00:39:54');
INSERT INTO `tp_scene` VALUES ('10001', '2', 'M', '2', '默认', '无对应产品时', 'http://127.0.0.1:81/tpTest/autotest.php/Index/index', '正常创建测试项目并制定里程碑选定测试系统', '正常', '45', '登录-建产品-建项目-建里程碑-选系统', '0', '腰立辉', '腰立辉', '2016-09-24 00:40:02', '2016-09-24 00:40:02');
INSERT INTO `tp_scene` VALUES ('10002', '3', 'M', '2', '默认', '无被测系统时', 'http://127.0.0.1:81/tpTest/autotest.php/Index/index', '正常创建测试项目并制定里程碑选定测试系统', '正常', '45', '登录-建项目-建里程碑-建系统-选系统', '0', '腰立辉', '腰立辉', '2016-09-24 00:40:09', '2016-09-24 00:40:09');
INSERT INTO `tp_scene` VALUES ('10003', '1', 'M', '2', '默认', '空白数据库', '', '建立测试项目', '正常', '48', '登录-件产品-建项目--详情-里程碑-关联系统-', '0', '腰立辉', '腰立辉', '2016-09-24 21:23:31', '2016-09-24 21:23:31');
INSERT INTO `tp_scene` VALUES ('10004', '1', 'M', '2', '默认', '默认', '', '11', '正常', '24', '', '0', '腰立辉', '腰立辉', '2016-09-25 21:23:05', '2016-09-25 21:23:05');
INSERT INTO `tp_scene` VALUES ('10005', '4', 'M', '2', '默认', '默认', 'http://127.0.0.1:81/tpTest/autotest.php/Index/index', '正常创建测试项目并制定里程碑选定测试系统', '正常', '45', '登录-建项目-建里程碑', '10000', '腰立辉', '腰立辉', '2016-09-25 21:39:18', '2016-09-25 21:38:12');
INSERT INTO `tp_scene` VALUES ('10006', '5', 'M', '2', '默认', '默认', 'http://127.0.0.1:81/tpTest/autotest.php/Index/index', '正常创建测试项目', '正常', '45', '登录-建项目-建里程碑', '10000', '腰立辉', '腰立辉', '2016-09-25 21:42:14', '2016-09-25 21:42:14');
INSERT INTO `tp_scene` VALUES ('10007', '6', 'M', '2', '默认', '无对应产品时', 'http://127.0.0.1:81/tpTest/autotest.php/Index/index', '正常创建测试项目并制定里程碑选定测试系统', '正常', '45', '登录-建产品-建项目-建里程碑-选系统', '10001', '腰立辉', null, '2016-09-25 21:46:13', '0000-00-00 00:00:00');
INSERT INTO `tp_scene` VALUES ('10008', '1', 'M', '2', '默认', '默认', 'http://127.0.0.1:81/tpTest/autotest.php/Index/index', '正常创建测试项目并制定里程碑选定测试系统', '正常', '47', '登录-建项目-建里程碑', '10000', '腰立辉', null, '2016-09-25 21:53:23', '0000-00-00 00:00:00');
INSERT INTO `tp_scene` VALUES ('10009', '7', 'M', '2', '默认', '默认', '', '11', '正常', '45', '', '10004', '腰立辉', null, '2016-09-26 09:08:25', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `tp_scenefunc`
-- ----------------------------
DROP TABLE IF EXISTS `tp_scenefunc`;
CREATE TABLE `tp_scenefunc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sn` int(11) DEFAULT NULL,
  `funcid` int(11) DEFAULT NULL,
  `sceneid` int(11) DEFAULT NULL,
  `author` varchar(20) DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `sourceid` int(11) DEFAULT '0',
  `caseid` int(11) DEFAULT NULL,
  `casestate` varchar(3) DEFAULT '未绑定',
  `casemain` varchar(50) DEFAULT NULL,
  `caseexpected` varchar(200) DEFAULT NULL,
  `num1` varchar(255) DEFAULT NULL,
  `num2` varchar(255) DEFAULT NULL,
  `num3` varchar(255) DEFAULT NULL,
  `num4` varchar(255) DEFAULT NULL,
  `num5` varchar(255) DEFAULT NULL,
  `num6` varchar(255) DEFAULT NULL,
  `num7` varchar(255) DEFAULT NULL,
  `num8` varchar(255) DEFAULT NULL,
  `num9` varchar(255) DEFAULT NULL,
  `num10` varchar(255) DEFAULT NULL,
  `num11` varchar(255) DEFAULT NULL,
  `num12` varchar(255) DEFAULT NULL,
  `num13` varchar(255) DEFAULT NULL,
  `num14` varchar(255) DEFAULT NULL,
  `num15` varchar(255) DEFAULT NULL,
  `num16` varchar(255) DEFAULT NULL,
  `num17` varchar(255) DEFAULT NULL,
  `num18` varchar(255) DEFAULT NULL,
  `num19` varchar(255) DEFAULT NULL,
  `num20` varchar(255) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updateTime` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10015 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_scenefunc
-- ----------------------------
INSERT INTO `tp_scenefunc` VALUES ('10000', '1', '10000', '10000', '腰立辉', '123', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '2016-09-25 22:57:52', '2016-09-25 22:57:52');
INSERT INTO `tp_scenefunc` VALUES ('10001', '2', '10007', '10000', '腰立辉', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2016-09-22 23:47:38', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10002', '4', '10024', '10000', '腰立辉', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2016-09-22 23:48:29', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10003', '3', '10013', '10000', '腰立辉', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2016-09-22 23:48:27', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10004', '5', '10001', '10000', '腰立辉', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2016-09-23 00:03:09', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10005', '1', '10000', '10003', '腰立辉', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2016-09-24 22:37:06', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10007', '1', '10000', '10001', '腰立辉', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2016-09-25 19:30:57', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10008', '2', '10001', '10001', '腰立辉', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2016-09-25 19:31:04', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10014', '1', '10000', '10002', null, null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-09-26 17:52:46', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `tp_stage`
-- ----------------------------
DROP TABLE IF EXISTS `tp_stage`;
CREATE TABLE `tp_stage` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `sn` smallint(3) DEFAULT NULL,
  `stage` varchar(50) DEFAULT NULL,
  `proid` smallint(6) DEFAULT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT '0000-00-00',
  `state` varchar(5) DEFAULT NULL,
  `document` varchar(20) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updateTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1015 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_stage
-- ----------------------------
INSERT INTO `tp_stage` VALUES ('1000', '1', '功能验证', '24', '2016-09-26', '2016-09-27', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-22 16:45:00', '2016-09-22 16:45:00');
INSERT INTO `tp_stage` VALUES ('1001', '2', '第一轮测试', '24', '2016-09-27', '2016-09-28', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-22 16:45:15', '2016-09-22 16:45:15');
INSERT INTO `tp_stage` VALUES ('1002', '3', '第二轮测试', '24', '2016-09-28', '2016-09-29', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-22 16:45:29', '2016-09-22 16:45:29');
INSERT INTO `tp_stage` VALUES ('1003', '1', '功能验证', '45', '2016-09-26', '2016-09-27', '进行中', '无文档', '腰立辉', '腰立辉', '2016-09-25 16:05:13', '2016-09-25 15:50:11');
INSERT INTO `tp_stage` VALUES ('1004', '2', '第一轮测试', '45', '2016-09-27', '2016-09-28', '进行中', '无文档', '腰立辉', '腰立辉', '2016-09-25 15:49:56', '2016-09-22 16:49:32');
INSERT INTO `tp_stage` VALUES ('1005', '3', '第二轮测试', '45', '2016-09-28', '2016-09-29', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-22 16:49:43', '2016-09-22 16:49:43');
INSERT INTO `tp_stage` VALUES ('1006', '1', '编写测试计划', '47', '2016-09-24', '2016-09-25', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-24 14:50:00', '2016-09-24 14:50:00');
INSERT INTO `tp_stage` VALUES ('1007', '2', '编写测试用例', '47', '2016-09-24', '2016-09-25', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-24 14:50:05', '2016-09-24 14:50:05');
INSERT INTO `tp_stage` VALUES ('1008', '3', '功能验证', '47', '2016-09-24', '2016-09-25', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-24 14:50:08', '2016-09-24 14:50:08');
INSERT INTO `tp_stage` VALUES ('1009', '4', '第一轮测试', '47', '2016-09-24', '2016-09-25', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-24 14:50:12', '2016-09-24 14:50:12');
INSERT INTO `tp_stage` VALUES ('1010', '5', '第二轮测试', '47', '2016-09-24', '2016-09-25', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-24 14:50:19', '2016-09-24 14:50:19');
INSERT INTO `tp_stage` VALUES ('1011', '1', '编写测试计划', '48', '2016-09-24', '2016-09-25', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-24 20:44:20', '2016-09-24 20:44:20');
INSERT INTO `tp_stage` VALUES ('1012', '2', '编写测试用例', '48', '2016-09-24', '2016-09-25', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-24 20:44:27', '2016-09-24 20:44:27');
INSERT INTO `tp_stage` VALUES ('1013', '3', '第一轮测试', '48', '2016-09-24', '2016-09-25', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-24 20:44:35', '2016-09-24 20:44:35');
INSERT INTO `tp_stage` VALUES ('1014', '4', '第二轮测试', '48', '2016-09-24', '2016-09-25', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-24 20:44:38', '2016-09-24 20:44:38');

-- ----------------------------
-- Table structure for `tp_stagetester`
-- ----------------------------
DROP TABLE IF EXISTS `tp_stagetester`;
CREATE TABLE `tp_stagetester` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `sn` smallint(3) DEFAULT NULL,
  `type` varchar(10) DEFAULT 'M',
  `stageid` smallint(6) DEFAULT NULL,
  `tester` varchar(10) DEFAULT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `plan` float DEFAULT NULL,
  `actual` float DEFAULT '0',
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updateTime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10024 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_stagetester
-- ----------------------------
INSERT INTO `tp_stagetester` VALUES ('10005', '1', 'A', '1003', '郭佩佩', '2016-09-23', '2016-09-24', '8', '0', '腰立辉', '腰立辉', '2016-09-23 22:54:57', '2016-09-23 22:54:57');
INSERT INTO `tp_stagetester` VALUES ('10006', '1', 'M', '1003', '高小欠', '2016-09-23', '2016-09-25', '12', '0', '腰立辉', '腰立辉', '2016-09-23 23:21:35', '2016-09-23 23:21:35');
INSERT INTO `tp_stagetester` VALUES ('10007', '1', 'M', '1006', '腰立辉', '2016-09-24', '2016-09-25', '8', '0', '腰立辉', '腰立辉', '2016-09-24 14:50:29', '2016-09-24 14:50:29');
INSERT INTO `tp_stagetester` VALUES ('10008', '1', 'M', '1007', '高小欠', '2016-09-24', '2016-09-25', '8', '0', '腰立辉', '腰立辉', '2016-09-24 14:51:13', '2016-09-24 14:51:13');
INSERT INTO `tp_stagetester` VALUES ('10009', '1', 'M', '1011', '腰立辉', '2016-09-24', '2016-09-25', '8', '0', '腰立辉', '腰立辉', '2016-09-24 20:45:23', '2016-09-24 20:45:23');
INSERT INTO `tp_stagetester` VALUES ('10010', '1', 'M', '1013', '李小梅', '2016-09-24', '2016-09-25', '8', '0', '腰立辉', '腰立辉', '2016-09-24 20:45:46', '2016-09-24 20:45:46');
INSERT INTO `tp_stagetester` VALUES ('10011', '2', 'M', '1013', '曹玉芳', '2016-09-24', '2016-09-25', '8', '0', '腰立辉', '腰立辉', '2016-09-24 20:45:49', '2016-09-24 20:45:49');
INSERT INTO `tp_stagetester` VALUES ('10012', '1', 'M', '1000', '腰立辉', '2016-09-25', '2016-09-26', '8', '0', '腰立辉', '腰立辉', '2016-09-25 13:38:02', '2016-09-25 13:38:02');
INSERT INTO `tp_stagetester` VALUES ('10013', '2', 'M', '1000', '高小欠', '2016-09-25', '2016-09-26', '8', '0', '腰立辉', '腰立辉', '2016-09-25 13:40:42', '2016-09-25 13:40:42');
INSERT INTO `tp_stagetester` VALUES ('10014', '3', 'M', '1000', '孔洋', '2016-09-25', '2016-09-26', '8', '0', '腰立辉', '腰立辉', '2016-09-25 13:44:30', '2016-09-25 13:44:30');
INSERT INTO `tp_stagetester` VALUES ('10015', '1', 'M', '1008', '腰立辉', '2016-09-25', '2016-09-26', '8', '0', '腰立辉', '腰立辉', '2016-09-25 13:45:45', '2016-09-25 13:45:45');
INSERT INTO `tp_stagetester` VALUES ('10016', '2', 'M', '1003', '腰立辉', '2016-09-25', '2016-09-26', '8', '0', '腰立辉', '腰立辉', '2016-09-25 15:17:44', '2016-09-25 15:17:44');
INSERT INTO `tp_stagetester` VALUES ('10017', '1', 'M', '1004', '师冬冬', '2016-09-25', '2016-09-26', '8', '0', '腰立辉', '腰立辉', '2016-09-25 15:17:49', '2016-09-25 15:17:49');
INSERT INTO `tp_stagetester` VALUES ('10018', '2', 'M', '1004', '孔洋', '2016-09-25', '2016-09-26', '8', '0', '腰立辉', '腰立辉', '2016-09-25 15:17:53', '2016-09-25 15:17:53');
INSERT INTO `tp_stagetester` VALUES ('10019', '3', 'M', '1004', '腰立辉', '2016-09-25', '2016-09-26', '8', '0', '腰立辉', '腰立辉', '2016-09-25 15:17:56', '2016-09-25 15:17:56');
INSERT INTO `tp_stagetester` VALUES ('10020', '1', 'M', '1005', '高小欠', '2016-09-25', '2016-09-26', '8', '0', '腰立辉', '腰立辉', '2016-09-25 15:18:00', '2016-09-25 15:18:00');
INSERT INTO `tp_stagetester` VALUES ('10021', '2', 'M', '1005', '师冬冬', '2016-09-25', '2016-09-26', '8', '0', '腰立辉', '腰立辉', '2016-09-25 15:18:02', '2016-09-25 15:18:02');
INSERT INTO `tp_stagetester` VALUES ('10022', '1', 'A', '1004', '郭佩佩', '2016-09-25', '2016-09-26', '8', '0', '腰立辉', '腰立辉', '2016-09-25 15:24:52', '2016-09-25 15:24:52');
INSERT INTO `tp_stagetester` VALUES ('10023', '2', 'A', '1004', '田亮', '2016-09-25', '2016-09-26', '8', '0', '腰立辉', '腰立辉', '2016-09-25 15:24:56', '2016-09-25 15:24:56');

-- ----------------------------
-- Table structure for `tp_system`
-- ----------------------------
DROP TABLE IF EXISTS `tp_system`;
CREATE TABLE `tp_system` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `sysno` varchar(30) DEFAULT '',
  `system` varchar(50) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `prodid` int(11) DEFAULT NULL,
  `useversion` varchar(50) DEFAULT NULL,
  `testversion` varchar(50) DEFAULT NULL,
  `testip` varchar(200) DEFAULT NULL,
  `testuser` varchar(50) DEFAULT NULL,
  `testpass` varchar(50) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updateTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_system
-- ----------------------------
INSERT INTO `tp_system` VALUES ('3', 'APP.HMC', '惠买车APP', '正常', '1', null, null, null, null, null, null, '腰立辉', '2016-09-21 10:17:05', '2016-09-21 10:17:05');
INSERT INTO `tp_system` VALUES ('4', 'Auto.Access', 'Access客户端', '正常', '2', null, 'V1.10', '192.168.43.61：easypass', '姓名', '123456', '腰立辉', '腰立辉', '2016-09-22 00:08:48', '2016-09-22 00:08:48');
INSERT INTO `tp_system` VALUES ('6', 'Dealer.hmc', '惠买车商家版', '正常', '1', null, null, null, null, null, null, '腰立辉', '2016-09-21 10:17:01', '2016-09-21 10:17:01');
INSERT INTO `tp_system` VALUES ('54', 'ydd.autoTest', '自动化管理平台', '正常', '2', '暂无', '', 'http://192.168.43.12:8018/main/index', 'yaolh', '888888', '腰立辉', '腰立辉', '2016-09-22 10:29:53', '2016-09-22 10:29:53');
INSERT INTO `tp_system` VALUES ('55', 'wxt.Test', '测试管理', '正常', '2', '暂无', '', '192.168.84.55:8011', 'yaolh', '123456', '腰立辉', '腰立辉', '2016-09-22 10:30:02', '2016-09-22 10:30:02');
INSERT INTO `tp_system` VALUES ('10', 'OP.Counselor', '买车顾问管理后台', '正常', '1', null, null, null, '域账号', null, null, '腰立辉', '2016-09-21 10:14:53', '2016-09-21 10:14:53');
INSERT INTO `tp_system` VALUES ('11', 'OP.HmcDSCRM', '惠买车电商CRM', '正常', '1', null, null, null, '域账号', null, null, '腰立辉', '2016-09-26 11:28:46', '2016-09-26 11:28:46');
INSERT INTO `tp_system` VALUES ('12', 'OP.DealerCRM', '惠买车商家运营系统', '正常', '1', null, null, null, '域账号', null, null, '腰立辉', '2016-09-21 10:15:15', '2016-09-21 10:15:15');
INSERT INTO `tp_system` VALUES ('13', 'OP.DealerOP', '经销商信息管理', '正常', '1', null, null, null, '域账号', null, null, '腰立辉', '2016-09-21 10:15:26', '2016-09-21 10:15:26');
INSERT INTO `tp_system` VALUES ('14', 'OP.Deposit', '商家订金管理系统', '正常', '1', null, null, null, '域账号', null, null, '腰立辉', '2016-09-21 10:15:35', '2016-09-21 10:15:35');
INSERT INTO `tp_system` VALUES ('15', 'OP.Gift', '买车网礼品管理后台', '正常', '1', null, null, null, '域账号', null, null, '腰立辉', '2016-09-21 10:15:41', '2016-09-21 10:15:41');
INSERT INTO `tp_system` VALUES ('16', 'OP.Giftop', '惠买车礼品管理系统', '正常', '1', null, null, null, '域账号', null, null, '腰立辉', '2016-09-21 10:15:54', '2016-09-21 10:15:54');
INSERT INTO `tp_system` VALUES ('17', 'OP.Groupon', '团购管理后台', '正常', '1', null, null, null, '域账号', null, null, '腰立辉', '2016-09-21 10:15:48', '2016-09-21 10:15:48');
INSERT INTO `tp_system` VALUES ('18', 'OP.HMCcrm', '惠买车CRM', '正常', '1', null, null, null, '域账号', null, null, '腰立辉', '2016-09-21 10:16:04', '2016-09-21 10:16:04');
INSERT INTO `tp_system` VALUES ('19', 'OP.HmcCrmOp', '电商CRM后台管理系统', '正常', '1', null, null, null, '域账号', null, null, '腰立辉', '2016-09-21 10:14:01', '2016-09-21 10:14:01');
INSERT INTO `tp_system` VALUES ('20', 'OP.Ipayment', '惠买车支付管理系统', '正常', '1', null, null, null, '域账号', null, null, '腰立辉', '2016-09-21 10:16:14', '2016-09-21 10:16:14');
INSERT INTO `tp_system` VALUES ('21', 'OP.Security', 'OP权限系统', '正常', '1', null, null, null, '域账号', null, null, '腰立辉', '2016-09-21 10:16:55', '2016-09-21 10:16:55');
INSERT INTO `tp_system` VALUES ('22', 'OP.User', '惠买车用户管理系统', '正常', '1', null, null, null, '域账号', null, null, '腰立辉', '2016-09-21 10:16:22', '2016-09-21 10:16:22');
INSERT INTO `tp_system` VALUES ('23', 'Web.hmc', '惠买车', '正常', '1', null, null, null, null, null, null, '腰立辉', '2016-09-13 13:35:06', '2016-09-13 13:35:06');
INSERT INTO `tp_system` VALUES ('46', 'yao.tpTest', '测试管理平台', '正常', '2', '暂无', 'V1.00', 'http://192.168.43.61:81/tpTest/autotest.php', 'yaolh', '654321', '腰立辉', '腰立辉', '2016-09-22 10:29:31', '2016-09-22 10:29:31');
INSERT INTO `tp_system` VALUES ('56', 'GDAPP', '信用卡APP', '正常', '2', null, null, null, null, null, '腰立辉', '腰立辉', '2016-09-24 20:47:50', '2016-09-24 20:47:50');

-- ----------------------------
-- Table structure for `tp_user`
-- ----------------------------
DROP TABLE IF EXISTS `tp_user`;
CREATE TABLE `tp_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `realname` varchar(20) DEFAULT NULL,
  `filename` varchar(18) DEFAULT NULL,
  `password` char(32) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `userNo` int(5) DEFAULT NULL,
  `team` varchar(50) DEFAULT NULL,
  `usergp` varchar(10) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `tel` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updateTime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_user
-- ----------------------------
INSERT INTO `tp_user` VALUES ('1', 'caoyf', '曹玉芳', '', 'e10adc3949ba59abbe56e057f20f883e', '在职', '8393', '惠买车-产品研发中心-质量管理部', 'OP', '', '', 'caoyf@yiche.com', '测试工程师', null, '腰立辉', '2016-09-26 17:12:02', '2016-09-16 19:05:05');
INSERT INTO `tp_user` VALUES ('2', 'gaoxq', '高小欠', null, 'e10adc3949ba59abbe56e057f20f883e', '在职', '5945', '惠买车-产品研发中心-质量管理部', 'C', '15011217715', null, 'gaoxq@bitauto.com', '高级测试经理', null, null, '2016-09-12 11:34:16', null);
INSERT INTO `tp_user` VALUES ('3', 'guopp', '郭佩佩', null, 'e10adc3949ba59abbe56e057f20f883e', '在职', null, '惠买车-产品研发中心-质量管理部', 'B', null, null, null, '测试工程师', null, null, '2016-09-12 11:34:14', null);
INSERT INTO `tp_user` VALUES ('11', 'yaolh', '腰立辉', '57dcf1cd1186b.jpeg', 'c33367701511b4f6020ec61ded352059', '在职', '6270', '惠买车-产品研发中心-质量管理部', 'OP', '18801043607', '', 'yaolh@yiche.com', '高级测试经理', '腰立辉', '腰立辉', '2016-09-22 16:54:21', '2016-09-17 15:33:33');
INSERT INTO `tp_user` VALUES ('5', 'kongy', '孔洋', null, 'e10adc3949ba59abbe56e057f20f883e', '在职', '8028', '惠买车-产品研发中心-质量管理部', 'OP', '13641171889', null, 'kongy@bitauto.com', '高级测试工程师', null, null, '2016-09-12 11:34:09', null);
INSERT INTO `tp_user` VALUES ('6', 'lixm', '李小梅', null, 'e10adc3949ba59abbe56e057f20f883e', '在职', null, '惠买车-产品研发中心-质量管理部', 'OP', null, null, null, '测试工程师', null, null, '2016-09-12 11:34:06', null);
INSERT INTO `tp_user` VALUES ('8', 'mengjl', '孟军良', null, '56ea27eb053fcaec7486bd0ed849edd4', '在职', '5714', '惠买车-产品研发中心-质量管理部', 'Auto', '13717659790', '', 'mengjl@bitauto.com', '质量总监', null, '腰立辉', '2016-09-12 15:16:06', '2016-09-12 15:16:06');
INSERT INTO `tp_user` VALUES ('9', 'shidd', '师冬冬', '', 'e10adc3949ba59abbe56e057f20f883e', '在职', '9204', '惠买车-产品研发中心-质量管理部', 'C', '', '', '', '测试工程师', null, '腰立辉', '2016-09-26 17:13:48', '2016-09-16 19:18:44');
INSERT INTO `tp_user` VALUES ('10', 'tianl', '田亮', '', 'e10adc3949ba59abbe56e057f20f883e', '在职', '6851', '惠买车-产品研发中心-质量管理部', 'B', '15811407311', '', 'tianl@bitauto.com', '测试工程师', '腰立辉', '腰立辉', '2016-09-22 09:25:01', '2016-09-16 18:59:52');
INSERT INTO `tp_user` VALUES ('24', 'wangp', '王朋', null, 'e10adc3949ba59abbe56e057f20f883e', '在职', '10520', '惠买车-产品研发中心-质量管理部', 'C', null, null, null, null, null, null, '2016-09-26 17:17:47', null);
INSERT INTO `tp_user` VALUES ('25', 'yuedd', '岳丹丹', null, 'e10adc3949ba59abbe56e057f20f883e', '在职', '9841', '惠买车-产品研发中心-质量管理部', 'C', null, null, null, null, null, null, '2016-09-26 17:18:02', null);
INSERT INTO `tp_user` VALUES ('26', 'zhengax', '郑阿旬', null, 'e10adc3949ba59abbe56e057f20f883e', '在职', '8110', '惠买车-产品研发中心-质量管理部', 'B', null, null, null, null, null, null, '2016-09-26 17:18:13', null);
INSERT INTO `tp_user` VALUES ('27', 'wangmd', '王梦蝶', null, 'e10adc3949ba59abbe56e057f20f883e', '在职', '7174', '惠买车-产品研发中心-质量管理部', 'OP', null, null, null, null, null, null, '2016-09-26 17:17:58', null);
INSERT INTO `tp_user` VALUES ('28', 'zhangxia', '张霞', null, 'e10adc3949ba59abbe56e057f20f883e', '在职', '5715', '惠买车-产品研发中心-质量管理部', 'C', null, null, null, null, null, null, '2016-09-26 17:22:34', null);
INSERT INTO `tp_user` VALUES ('29', 'wangxt', '王鑫彤', null, 'e10adc3949ba59abbe56e057f20f883e', '在职', null, '惠买车-产品研发中心-质量管理部', 'B', null, null, null, null, null, null, '2016-09-26 17:22:30', null);
