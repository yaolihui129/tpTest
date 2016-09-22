/*
Navicat MySQL Data Transfer

Source Server         : 43.61:3307
Source Server Version : 50532
Source Host           : localhost:3307
Source Database       : tptest

Target Server Type    : MYSQL
Target Server Version : 50532
File Encoding         : 65001

Date: 2016-09-22 18:05:11
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
INSERT INTO `tp_case` VALUES ('10000', '1', null, '正常登陆', '', '登入系统，并显示用户姓名', '正常', '45', '10000', '产品库', '腰立辉', '腰立辉', '2016-09-22 14:36:34', '2016-09-22 14:36:34', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
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
INSERT INTO `tp_dict` VALUES ('29', '5', 'GD', 'testgp', '已搁置', '腰立辉', '腰立辉', '2016-09-22 09:38:30', '2016-09-22 09:38:30');
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
INSERT INTO `tp_dict` VALUES ('54', '1', 'Manual', 'sceneType', '正常', '腰立辉', '腰立辉', '2016-09-20 17:07:24', null);
INSERT INTO `tp_dict` VALUES ('55', '2', 'Auto', 'sceneType', '正常', '腰立辉', '腰立辉', '2016-09-20 17:07:28', '2016-09-20 17:00:39');

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
  `testsceneid` int(11) DEFAULT NULL,
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
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_exefunc
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_exescene`
-- ----------------------------
DROP TABLE IF EXISTS `tp_exescene`;
CREATE TABLE `tp_exescene` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sn` int(11) DEFAULT NULL,
  `type` varchar(8) DEFAULT 'Manual',
  `stageid` int(11) DEFAULT NULL,
  `sceneid` int(11) DEFAULT NULL,
  `tester` varchar(50) DEFAULT NULL,
  `results` varchar(5) DEFAULT '未测试',
  `testip` varchar(200) DEFAULT NULL,
  `isrunning` int(11) DEFAULT NULL,
  `testtime` timestamp NULL DEFAULT NULL,
  `runningip` varchar(20) DEFAULT NULL,
  `verion` varchar(50) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updateTime` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_exescene
-- ----------------------------

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
) ENGINE=MyISAM AUTO_INCREMENT=10074 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_func
-- ----------------------------
INSERT INTO `tp_func` VALUES ('10000', '1', '登录', '正常', '10000', '45', '腰立辉', '腰立辉', '2016-09-22 10:45:46', '2016-09-22 10:45:46');
INSERT INTO `tp_func` VALUES ('10001', '2', '注销', '正常', '10000', '45', '腰立辉', '腰立辉', '2016-09-22 10:46:18', '2016-09-22 10:46:18');
INSERT INTO `tp_func` VALUES ('10002', '1', '产品列表', '正常', '10001', '45', '腰立辉', '腰立辉', '2016-09-22 15:57:54', '2016-09-22 15:57:54');
INSERT INTO `tp_func` VALUES ('10003', '2', '产品-添加', '正常', '10001', '45', '腰立辉', '腰立辉', '2016-09-22 15:58:02', '2016-09-22 15:58:02');
INSERT INTO `tp_func` VALUES ('10004', '3', '产品-编辑', '正常', '10001', '45', '腰立辉', '腰立辉', '2016-09-22 15:58:11', '2016-09-22 15:58:11');
INSERT INTO `tp_func` VALUES ('10005', '3', '修改密码', '正常', '10000', '45', '腰立辉', '腰立辉', '2016-09-22 17:40:23', '2016-09-22 17:40:23');
INSERT INTO `tp_func` VALUES ('10006', '4', '系统入口', '正常', '10001', '45', '腰立辉', '腰立辉', '2016-09-22 17:40:44', '2016-09-22 17:40:44');
INSERT INTO `tp_func` VALUES ('10007', '3', '项目-添加', '正常', '10002', '45', '腰立辉', '腰立辉', '2016-09-22 17:42:09', '2016-09-22 17:42:09');
INSERT INTO `tp_func` VALUES ('10008', '4', '项目-编辑', '正常', '10002', '45', '腰立辉', '腰立辉', '2016-09-22 17:42:20', '2016-09-22 17:42:20');
INSERT INTO `tp_func` VALUES ('10009', '5', '项目-详情', '正常', '10002', '45', '腰立辉', '腰立辉', '2016-09-22 17:42:26', '2016-09-22 17:42:26');
INSERT INTO `tp_func` VALUES ('10010', '1', '项目分组列表', '正常', '10002', '45', '腰立辉', '腰立辉', '2016-09-22 17:41:59', '2016-09-22 17:41:59');
INSERT INTO `tp_func` VALUES ('10011', '2', '切换分组', '正常', '10002', '45', '腰立辉', '腰立辉', '2016-09-22 17:42:03', '2016-09-22 17:42:03');
INSERT INTO `tp_func` VALUES ('10012', '6', '快速标记状态', '正常', '10002', '45', '腰立辉', '腰立辉', '2016-09-22 17:43:20', '2016-09-22 17:43:20');
INSERT INTO `tp_func` VALUES ('10013', '7', '项目-里程碑入口', '正常', '10002', '45', '腰立辉', '腰立辉', '2016-09-22 17:43:51', '2016-09-22 17:43:51');
INSERT INTO `tp_func` VALUES ('10014', '8', '项目-风险入口', '已搁置', '10002', '45', '腰立辉', '腰立辉', '2016-09-22 17:46:18', '2016-09-22 17:46:18');
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
INSERT INTO `tp_func` VALUES ('10026', '5', '列队入口', '正常', '10028', '45', '腰立辉', '腰立辉', '2016-09-22 17:48:48', '2016-09-22 17:48:48');
INSERT INTO `tp_func` VALUES ('10027', '6', '快速标记状态', '正常', '10028', '45', '腰立辉', '腰立辉', '2016-09-22 17:49:02', '2016-09-22 17:49:02');
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
INSERT INTO `tp_func` VALUES ('10049', '5', '功能点-用例入库', '正常', '10005', '45', '腰立辉', '腰立辉', '2016-09-22 17:56:14', '2016-09-22 17:56:14');
INSERT INTO `tp_func` VALUES ('10050', '6', '功能点-规则入口', '正常', '10005', '45', '腰立辉', '腰立辉', '2016-09-22 17:56:29', '2016-09-22 17:56:29');
INSERT INTO `tp_func` VALUES ('10051', '7', '快速标记当前项目', '正常', '10005', '45', '腰立辉', '腰立辉', '2016-09-22 17:57:20', '2016-09-22 17:57:20');
INSERT INTO `tp_func` VALUES ('10052', '1', '功能点用例列表', '正常', '10006', '45', '腰立辉', '腰立辉', '2016-09-22 17:58:03', '2016-09-22 17:58:03');
INSERT INTO `tp_func` VALUES ('10053', '2', '切换功能点', '正常', '10006', '45', '腰立辉', '腰立辉', '2016-09-22 17:58:13', '2016-09-22 17:58:13');
INSERT INTO `tp_func` VALUES ('10054', '3', '用例-添加', '正常', '10006', '45', '腰立辉', '腰立辉', '2016-09-22 17:58:30', '2016-09-22 17:58:30');
INSERT INTO `tp_func` VALUES ('10055', '4', '用例-维护', '正常', '10006', '45', '腰立辉', '腰立辉', '2016-09-22 17:58:37', '2016-09-22 17:58:37');
INSERT INTO `tp_func` VALUES ('10056', '5', '快速标记当前项目', '正常', '10006', '45', '腰立辉', '腰立辉', '2016-09-22 17:59:13', '2016-09-22 17:59:13');
INSERT INTO `tp_func` VALUES ('10057', '6', '用例数据-入口', '正常', '10006', '45', '腰立辉', '腰立辉', '2016-09-22 17:59:31', '2016-09-22 17:59:31');
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
INSERT INTO `tp_func` VALUES ('10071', '8', '快速标记状态', '正常', '10008', '45', '腰立辉', '腰立辉', '2016-09-22 18:02:45', '2016-09-22 18:02:45');
INSERT INTO `tp_func` VALUES ('10072', '9', '功能点-规则入口', '正常', '10008', '45', '腰立辉', '腰立辉', '2016-09-22 18:03:07', '2016-09-22 18:03:07');
INSERT INTO `tp_func` VALUES ('10073', '10', '功能点-用例入口', '正常', '10008', '45', '腰立辉', '腰立辉', '2016-09-22 18:03:23', '2016-09-22 18:03:23');

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
) ENGINE=MyISAM AUTO_INCREMENT=10031 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_path
-- ----------------------------
INSERT INTO `tp_path` VALUES ('10000', '1', '登陆模块', '正常', '4', '腰立辉', '腰立辉', '2016-09-22 10:35:12', '2016-09-22 10:35:12');
INSERT INTO `tp_path` VALUES ('10001', '2', '产品管理', '正常', '4', '腰立辉', '腰立辉', '2016-09-22 10:40:16', '2016-09-22 10:40:16');
INSERT INTO `tp_path` VALUES ('10002', '3', '测试项目', '正常', '4', '腰立辉', '腰立辉', '2016-09-22 10:40:44', '2016-09-22 10:40:44');
INSERT INTO `tp_path` VALUES ('10003', '4', '项目-系统', '正常', '4', '腰立辉', '腰立辉', '2016-09-22 10:43:27', '2016-09-22 10:43:27');
INSERT INTO `tp_path` VALUES ('10004', '8', '项目-系统路径', '正常', '4', '腰立辉', '腰立辉', '2016-09-22 11:22:04', '2016-09-22 10:43:44');
INSERT INTO `tp_path` VALUES ('10005', '9', '项目-系统路径-功能点', '正常', '4', '腰立辉', '腰立辉', '2016-09-22 11:22:12', '2016-09-22 10:44:01');
INSERT INTO `tp_path` VALUES ('10006', '10', '项目-系统路径-功能点-用例', '正常', '4', '腰立辉', '腰立辉', '2016-09-22 11:22:16', '2016-09-22 10:47:10');
INSERT INTO `tp_path` VALUES ('10007', '12', '项目-系统路径-功能点-规则', '正常', '4', '腰立辉', '腰立辉', '2016-09-22 11:22:20', '2016-09-22 10:49:44');
INSERT INTO `tp_path` VALUES ('10008', '13', '项目-功能点', '正常', '4', '腰立辉', '腰立辉', '2016-09-22 11:22:23', '2016-09-22 10:49:52');
INSERT INTO `tp_path` VALUES ('10009', '14', '项目-功能点-用例', '正常', '4', '腰立辉', '腰立辉', '2016-09-22 11:22:26', '2016-09-22 10:50:00');
INSERT INTO `tp_path` VALUES ('10010', '11', '项目-系统路径-功能点-用例-数据', '正常', '4', '腰立辉', '腰立辉', '2016-09-22 11:22:18', '2016-09-22 10:49:35');
INSERT INTO `tp_path` VALUES ('10011', '15', '项目-功能点-用例-数据', '正常', '4', '腰立辉', '腰立辉', '2016-09-22 11:22:29', '2016-09-22 10:49:26');
INSERT INTO `tp_path` VALUES ('10012', '16', '项目-功能点-规则', '正常', '4', '腰立辉', '腰立辉', '2016-09-22 11:22:31', '2016-09-22 10:50:27');
INSERT INTO `tp_path` VALUES ('10013', '17', '项目-范围', '正常', '4', '腰立辉', '腰立辉', '2016-09-22 11:22:34', '2016-09-22 10:51:05');
INSERT INTO `tp_path` VALUES ('10014', '18', '项目-范围-用例', '正常', '4', '腰立辉', '腰立辉', '2016-09-22 11:22:38', '2016-09-22 10:51:25');
INSERT INTO `tp_path` VALUES ('10015', '19', '项目-范围-用例-数据', '正常', '4', '腰立辉', '腰立辉', '2016-09-22 11:22:41', '2016-09-22 10:51:31');
INSERT INTO `tp_path` VALUES ('10016', '20', '项目-范围-规则', '正常', '4', '腰立辉', '腰立辉', '2016-09-22 11:22:44', '2016-09-22 10:51:39');
INSERT INTO `tp_path` VALUES ('10017', '20', '项目-场景', '正常', '4', '腰立辉', '腰立辉', '2016-09-22 11:22:47', '2016-09-22 11:13:28');
INSERT INTO `tp_path` VALUES ('10018', '22', '项目-场景-场景功能', '正常', '4', '腰立辉', '腰立辉', '2016-09-22 11:22:50', '2016-09-22 11:14:10');
INSERT INTO `tp_path` VALUES ('10019', '23', '项目-场景-场景功能-功能库', '正常', '4', '腰立辉', '腰立辉', '2016-09-22 11:22:52', '2016-09-22 11:15:36');
INSERT INTO `tp_path` VALUES ('10020', '24', '项目-场景-场景功能-用例库', '正常', '4', '腰立辉', '腰立辉', '2016-09-22 11:22:55', '2016-09-22 11:15:46');
INSERT INTO `tp_path` VALUES ('10021', '25', '项目-场景-场景功能-场景数据', '正常', '4', '腰立辉', '腰立辉', '2016-09-22 11:22:58', '2016-09-22 11:15:56');
INSERT INTO `tp_path` VALUES ('10022', '26', '项目-用例库', '正常', '4', '腰立辉', '腰立辉', '2016-09-22 11:23:01', '2016-09-22 11:16:36');
INSERT INTO `tp_path` VALUES ('10023', '27', '项目-控件库', '正常', '4', '腰立辉', '腰立辉', '2016-09-22 11:23:04', '2016-09-22 11:16:47');
INSERT INTO `tp_path` VALUES ('10024', '28', '手工测试', '正常', '4', '腰立辉', '腰立辉', '2016-09-22 11:23:08', '2016-09-22 11:17:15');
INSERT INTO `tp_path` VALUES ('10025', '29', '手工测试-执行', '正常', '4', '腰立辉', '腰立辉', '2016-09-22 11:23:11', '2016-09-22 11:17:35');
INSERT INTO `tp_path` VALUES ('10026', '30', '自动化测试', '正常', '4', '腰立辉', '腰立辉', '2016-09-22 11:23:14', '2016-09-22 11:18:10');
INSERT INTO `tp_path` VALUES ('10027', '31', '自动化测试-测试数据', '正常', '4', '腰立辉', '腰立辉', '2016-09-22 11:23:17', '2016-09-22 11:18:36');
INSERT INTO `tp_path` VALUES ('10028', '6', '项目-里程碑', '正常', '4', '腰立辉', '腰立辉', '2016-09-22 11:24:17', '2016-09-22 11:21:00');
INSERT INTO `tp_path` VALUES ('10029', '7', '项目-里程碑-列队', '正常', '4', '腰立辉', '腰立辉', '2016-09-22 11:24:20', '2016-09-22 11:21:06');
INSERT INTO `tp_path` VALUES ('10030', '5', '项目-风险', '正常', '4', '腰立辉', '腰立辉', '2016-09-22 11:24:15', '2016-09-22 11:20:50');

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
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_program
-- ----------------------------
INSERT INTO `tp_program` VALUES ('45', 'Auto1609.2', '测试管理验收', '2', '进行中', '2016-09-22', '2016-10-31', '王鑫彤', 'Auto', '简要', '', '需求新增', '一般需求', '2016-09-22', '', '腰立辉', '腰立辉', '2016-09-22 17:14:36', '2016-09-22 17:14:36');
INSERT INTO `tp_program` VALUES ('46', 'OP1609.1', '价格收集', '1', '进行中', '2016-09-22', '2016-10-14', '腰立辉', 'OP', '简要', null, '需求新增', '一般需求', '0000-00-00', null, '腰立辉', '腰立辉', '2016-09-22 16:56:11', '2016-09-22 16:56:11');
INSERT INTO `tp_program` VALUES ('24', 'Auto.1608.1', '自动化平台一期', '2', '进行中', '2016-07-21', '2016-09-30', '岳丹丹', 'Auto', '简要', '腰立辉', '需求新增', '一般需求', '2016-08-13', '<p>\r\n	简介</p>\r\n', '腰立辉', '腰立辉', '2016-09-22 10:08:34', '2016-09-22 10:08:34');

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
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_prosys
-- ----------------------------
INSERT INTO `tp_prosys` VALUES ('56', '54', '24', '腰立辉', '腰立辉', '2016-09-22 10:06:44', '2016-09-22 10:06:44');
INSERT INTO `tp_prosys` VALUES ('57', '55', '45', '腰立辉', '腰立辉', '2016-09-22 10:26:53', '2016-09-22 10:26:53');
INSERT INTO `tp_prosys` VALUES ('58', '4', '45', '腰立辉', '腰立辉', '2016-09-22 10:27:09', '2016-09-22 10:27:09');
INSERT INTO `tp_prosys` VALUES ('59', '4', '24', '腰立辉', '腰立辉', '2016-09-22 10:27:16', '2016-09-22 10:27:16');
INSERT INTO `tp_prosys` VALUES ('60', '18', '46', '腰立辉', '腰立辉', '2016-09-22 17:21:06', '2016-09-22 17:21:06');

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
  `stestip` varchar(200) DEFAULT NULL,
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
) ENGINE=MyISAM AUTO_INCREMENT=10003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_scene
-- ----------------------------
INSERT INTO `tp_scene` VALUES ('10000', '1', 'Manual', '2', '默认', '默认', null, '正常创建测试项目并制定里程碑选定测试系统', '正常', '45', '登录-建项目-建里程碑', '0', '腰立辉', '腰立辉', '2016-09-22 11:10:29', '2016-09-22 11:10:29');
INSERT INTO `tp_scene` VALUES ('10001', '2', 'Manual', '2', '默认', '无对应产品时', null, '正常创建测试项目并制定里程碑选定测试系统', '正常', '45', '登录-建产品-建项目-建里程碑-选系统', '0', '腰立辉', '腰立辉', '2016-09-22 11:11:44', '2016-09-22 11:11:44');
INSERT INTO `tp_scene` VALUES ('10002', '3', 'Manual', '2', '默认', '无被测系统时', null, '正常创建测试项目并制定里程碑选定测试系统', '正常', '45', '登录-建项目-建里程碑-建系统-选系统', '0', '腰立辉', '腰立辉', '2016-09-22 11:12:29', '2016-09-22 11:12:29');

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
  `sourceid` int(11) DEFAULT NULL,
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
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_scenefunc
-- ----------------------------

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
) ENGINE=MyISAM AUTO_INCREMENT=1006 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_stage
-- ----------------------------
INSERT INTO `tp_stage` VALUES ('1000', '1', '功能验证', '24', '2016-09-26', '2016-09-27', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-22 16:45:00', '2016-09-22 16:45:00');
INSERT INTO `tp_stage` VALUES ('1001', '2', '第一轮测试', '24', '2016-09-27', '2016-09-28', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-22 16:45:15', '2016-09-22 16:45:15');
INSERT INTO `tp_stage` VALUES ('1002', '3', '第二轮测试', '24', '2016-09-28', '2016-09-29', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-22 16:45:29', '2016-09-22 16:45:29');
INSERT INTO `tp_stage` VALUES ('1003', '1', '功能验证', '45', '2016-09-26', '2016-09-27', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-22 16:49:21', '2016-09-22 16:49:21');
INSERT INTO `tp_stage` VALUES ('1004', '2', '第一轮测试', '45', '2016-09-27', '2016-09-28', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-22 16:49:32', '2016-09-22 16:49:32');
INSERT INTO `tp_stage` VALUES ('1005', '3', '第二轮测试', '45', '2016-09-28', '2016-09-29', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-22 16:49:43', '2016-09-22 16:49:43');

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
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_system
-- ----------------------------
INSERT INTO `tp_system` VALUES ('3', 'APP.HMC', '惠买车APP', '正常', '1', null, null, null, null, null, null, '腰立辉', '2016-09-21 10:17:05', '2016-09-21 10:17:05');
INSERT INTO `tp_system` VALUES ('4', 'Auto.Access', 'Access客户端', '正常', '2', null, 'V1.10', '192.168.43.61：easypass', '姓名', '123456', '腰立辉', '腰立辉', '2016-09-22 00:08:48', '2016-09-22 00:08:48');
INSERT INTO `tp_system` VALUES ('6', 'Dealer.hmc', '惠买车商家版', '正常', '1', null, null, null, null, null, null, '腰立辉', '2016-09-21 10:17:01', '2016-09-21 10:17:01');
INSERT INTO `tp_system` VALUES ('54', 'ydd.autoTest', '自动化管理平台', '正常', '2', '暂无', '', 'http://192.168.43.12:8018/main/index', 'yaolh', '888888', '腰立辉', '腰立辉', '2016-09-22 10:29:53', '2016-09-22 10:29:53');
INSERT INTO `tp_system` VALUES ('55', 'wxt.Test', '测试管理', '正常', '2', '暂无', '', '192.168.84.55:8011', 'yaolh', '123456', '腰立辉', '腰立辉', '2016-09-22 10:30:02', '2016-09-22 10:30:02');
INSERT INTO `tp_system` VALUES ('10', 'OP.Counselor', '买车顾问管理后台', '正常', '1', null, null, null, '域账号', null, null, '腰立辉', '2016-09-21 10:14:53', '2016-09-21 10:14:53');
INSERT INTO `tp_system` VALUES ('11', 'OP.CRM', '电商CRM', '正常', '1', null, null, null, '域账号', null, null, '腰立辉', '2016-09-21 10:14:16', '2016-09-21 10:14:16');
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
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_user
-- ----------------------------
INSERT INTO `tp_user` VALUES ('1', 'caoyf', '曹玉芳', '', 'e10adc3949ba59abbe56e057f20f883e', '在职', '0', '惠买车-产品研发中心-质量管理部', 'OP', '', '', 'caoyf@yiche.com', '测试工程师', null, '腰立辉', '2016-09-22 09:25:03', '2016-09-16 19:05:05');
INSERT INTO `tp_user` VALUES ('2', 'gaoxq', '高小欠', null, 'e10adc3949ba59abbe56e057f20f883e', '在职', '5945', '惠买车-产品研发中心-质量管理部', 'C', '15011217715', null, 'gaoxq@bitauto.com', '高级测试经理', null, null, '2016-09-12 11:34:16', null);
INSERT INTO `tp_user` VALUES ('3', 'guopp', '郭佩佩', null, 'e10adc3949ba59abbe56e057f20f883e', '在职', null, '惠买车-产品研发中心-质量管理部', 'B', null, null, null, '测试工程师', null, null, '2016-09-12 11:34:14', null);
INSERT INTO `tp_user` VALUES ('11', 'yaolh', '腰立辉', '57dcf1cd1186b.jpeg', 'c33367701511b4f6020ec61ded352059', '在职', '6270', '惠买车-产品研发中心-质量管理部', 'OP', '18801043607', '', 'yaolh@yiche.com', '高级测试经理', '腰立辉', '腰立辉', '2016-09-22 16:54:21', '2016-09-17 15:33:33');
INSERT INTO `tp_user` VALUES ('5', 'kongy', '孔洋', null, 'e10adc3949ba59abbe56e057f20f883e', '在职', '8028', '惠买车-产品研发中心-质量管理部', 'OP', '13641171889', null, 'kongy@bitauto.com', '高级测试工程师', null, null, '2016-09-12 11:34:09', null);
INSERT INTO `tp_user` VALUES ('6', 'lixm', '李小梅', null, 'e10adc3949ba59abbe56e057f20f883e', '在职', null, '惠买车-产品研发中心-质量管理部', 'OP', null, null, null, '测试工程师', null, null, '2016-09-12 11:34:06', null);
INSERT INTO `tp_user` VALUES ('8', 'mengjl', '孟军良', null, '56ea27eb053fcaec7486bd0ed849edd4', '在职', '5714', '惠买车-产品研发中心-质量管理部', 'Auto', '13717659790', '', 'mengjl@bitauto.com', '质量总监', null, '腰立辉', '2016-09-12 15:16:06', '2016-09-12 15:16:06');
INSERT INTO `tp_user` VALUES ('9', 'shidd', '师冬冬', '', 'e10adc3949ba59abbe56e057f20f883e', '在职', '0', '惠买车-产品研发中心-质量管理部', 'C', '', '', '', '测试工程师', null, '腰立辉', '2016-09-22 09:24:59', '2016-09-16 19:18:44');
INSERT INTO `tp_user` VALUES ('10', 'tianl', '田亮', '', 'e10adc3949ba59abbe56e057f20f883e', '在职', '6851', '惠买车-产品研发中心-质量管理部', 'B', '15811407311', '', 'tianl@bitauto.com', '测试工程师', '腰立辉', '腰立辉', '2016-09-22 09:25:01', '2016-09-16 18:59:52');
