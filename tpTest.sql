/*
Navicat MySQL Data Transfer

Source Server         : 43.61:3307
Source Server Version : 50532
Source Host           : localhost:3307
Source Database       : tptest

Target Server Type    : MYSQL
Target Server Version : 50532
File Encoding         : 65001

Date: 2016-09-20 11:53:24
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
) ENGINE=MyISAM AUTO_INCREMENT=116 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_case
-- ----------------------------
INSERT INTO `tp_case` VALUES ('13', '1', '1', '用户正常登陆', null, '进入系统', '正常', null, '1', '功能编写', null, null, '2016-08-10 10:19:54', '2016-06-06 14:28:20', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('14', '2', '2', '用户名错', null, '报用户名错误', '正常', null, '1', '功能编写', null, null, '2016-08-10 10:19:56', '2016-06-06 14:28:45', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('15', '3', '2', '密码错', null, '报密码错误', '正常', null, '1', '功能编写', null, null, '2016-08-10 10:19:57', '2016-06-06 14:28:51', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('16', '4', '2', '用户名不能为空', null, '……', '正常', null, '1', '功能编写', null, null, '2016-08-10 10:19:58', '2016-06-06 14:29:04', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('17', '1', '2', '用户正常注销', null, '……', '正常', null, '1', '功能编写', null, null, '2016-08-10 10:20:01', '2016-06-06 14:30:12', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('18', '1', '1', '正常修改密码', null, '……', '正常', null, '1', '功能编写', null, null, '2016-08-10 10:19:59', '2016-06-06 14:30:23', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('19', '2', '2', '原密码错', null, '……', '正常', null, '2', '功能编写', null, null, '2016-08-10 10:20:03', '2016-06-06 14:30:30', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('20', '3', '2', '确认密码设设置密码不一致', null, '……', '正常', null, '2', '功能编写', null, null, '2016-08-10 10:20:05', '2016-06-06 14:30:43', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('21', '1', '2', '添加用户', null, '……', '正常', null, '2', '功能编写', null, null, '2016-08-10 10:20:06', '2016-06-06 14:31:14', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('22', '1', '2', '建立角色', null, '……', '正常', null, '2', '功能编写', null, null, '2016-08-10 10:20:07', '2016-06-06 14:31:26', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('24', '1', '1', '用户正常登录', null, '用户登入系统', '正常', null, '2', '场景补充', null, null, '2016-08-10 10:20:08', '2016-06-07 10:30:12', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('28', '1', '2', '选城市', null, '选中城市，显示城市相关的内容', '正常', null, '3', '列队补充', null, null, '2016-08-10 10:20:13', '2016-06-12 16:47:52', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('29', '1', '2', '查询负责人', null, '……', '正常', null, '3', '列队补充', null, null, '2016-08-10 10:20:11', '2016-06-12 16:48:20', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('30', '1', '1', '添加域账号为负责人', null, '添加该域账号为负责人', '正常', null, '3', '列队补充', null, null, '2016-08-10 10:20:15', '2016-06-12 16:48:41', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('31', '1', '2', '短信推荐注册', '1.点击短信分享\r\n2.在通讯录中选择要发送的好友\r\n3.点击发送', '好友收到相关的手机短信', '正常', null, '3', '列队补充', null, null, '2016-08-10 10:20:14', '2016-06-13 14:36:28', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('32', '1', '2', '用户注册，填写推荐码', null, '注册成功', '正常', null, '8', '列队补充', null, null, '2016-08-10 10:30:43', '2016-06-13 14:36:56', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('33', '1', '2', '通过链接下载APP', null, '下载APP成功，并安装', '正常', null, '4', '列队补充', null, null, '2016-08-10 10:20:17', '2016-06-13 14:38:01', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('34', '1', '2', '通过提示，进行实名认证', null, '实名认证提交成功', '正常', null, '8', '列队补充', null, null, '2016-08-10 10:30:44', '2016-06-13 14:38:30', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('35', '1', '2', '审核通过', null, '审核通过', '正常', null, '5', '列队补充', null, null, '2016-08-10 10:20:18', '2016-06-13 14:48:27', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('36', '1', '2', '查询', null, '该用户隶属的负责人', '正常', null, '6', '列队补充', null, null, '2016-08-10 10:20:19', '2016-06-13 14:48:50', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('37', '1', '1', '有推荐码注册', null, '注册成功', '正常', null, '8', '用例库编写', null, null, '2016-08-10 10:30:45', '2016-06-13 16:17:40', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('38', '2', '1', '无推荐码注册', null, '注册成功', '正常', null, '6', '用例库编写', null, null, '2016-08-10 10:20:20', '2016-06-13 16:17:50', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('39', '1', '2', '微信好友推荐注册', null, '微信好友出现该推荐消息', '正常', null, '8', '用例库编写', null, null, '2016-08-10 10:30:46', '2016-06-13 16:19:31', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('40', '1', '2', '微信朋友圈推荐注册', null, '微信朋友圈出现该推荐', '正常', null, '7', '用例库编写', null, null, '2016-08-10 10:20:22', '2016-06-13 16:20:09', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('41', '1', '2', '查看当前版本', null, '查看当前版本', '正常', null, '8', '用例库编写', null, null, '2016-08-10 10:30:48', '2016-06-13 16:20:36', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('42', '2', '2', '点击检查更新', null, '提示无更新', '正常', null, null, '用例库编写', null, null, '2016-06-13 16:20:50', '2016-06-13 16:20:50', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('43', '1', '2', '退出登录', null, '退出系统，回到登录页', '正常', null, '7', '用例库编写', null, null, '2016-08-10 10:20:22', '2016-06-13 16:21:07', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('44', '1', '2', '拨打客服电话', '点击页面的客服电话400-716-719', '弹出呼叫提示', '正常', null, null, '用例库编写', null, null, '2016-06-13 16:22:55', '2016-06-13 16:22:55', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('45', '2', '2', '启动APP，自动登录', '（用户登录过），启动APP', '自动登录系统', '正常', null, '7', '用例库编写', null, null, '2016-08-10 10:20:24', '2016-06-13 16:26:20', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('46', '1', '1', '域账号绑定车顾问账号', null, '绑定成功', '正常', null, '9', '场景补充', null, null, '2016-08-10 10:30:49', '2016-06-13 16:30:32', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('47', '1', '1', '人员转交', null, '转交成功', '正常', null, '9', '场景补充', null, null, '2016-08-10 10:30:52', '2016-06-13 16:33:16', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('48', '1', '1', '人员删除', null, '删除成功', '正常', null, '9', '场景补充', null, null, '2016-08-10 10:30:51', '2016-06-13 16:33:30', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('49', '1', '1', '用户正常登录', '\r\n', '登入系统', '正常', '25', '16', '功能编写', null, '腰立辉', '2016-09-19 14:27:52', '2016-09-19 14:27:52', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('115', '4', null, 'asd11', '<p>\r\n	asdasd</p>\r\n', 'asd', '正常', '42', '16', '产品库', '腰立辉', '腰立辉', '2016-09-19 14:34:48', '2016-09-19 14:34:48', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('50', '2', '2', '用户名错', '', '报“用户名不存在”', '待确认', '42', '16', '功能编写', null, '腰立辉', '2016-09-19 14:14:06', '2016-09-19 14:14:06', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('51', '3', '2', '密码错', null, '报“密码错误”', '正常', null, null, '功能编写', null, null, '2016-06-14 09:30:45', '2016-06-14 09:30:45', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('52', '4', '2', '用户名为空', null, '报“用户名不能为空”', '正常', null, null, '功能编写', null, null, '2016-06-14 09:30:56', '2016-06-14 09:30:56', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('53', '5', '2', '密码为空', null, '报“密码不能为空”', '正常', null, null, '功能编写', null, null, '2016-06-14 09:31:02', '2016-06-14 09:31:02', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('54', '1', '1', '退出登录', null, '退出系统', '正常', null, null, '功能编写', null, null, '2016-06-14 09:40:21', '2016-06-14 09:40:21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('55', '1', '2', '选择分组', null, '进入对应的分组', '正常', null, null, '场景补充', null, null, '2016-06-16 10:50:01', '2016-06-16 10:50:01', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('56', '1', '2', '到测试管理页面', '点击【测试管理】', '进入对应分组测试管理页面', '正常', null, null, '场景补充', null, null, '2016-06-16 10:50:51', '2016-06-16 10:50:51', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('57', '1', '2', '新建测试项目', null, '测试项目创建成功，返回测试管理', '正常', null, null, '场景补充', null, null, '2016-06-16 10:52:01', '2016-06-16 10:52:01', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('58', '2', '2', '编辑已有的测试项目', null, '该项目更新', '正常', null, null, '场景补充', null, null, '2016-06-16 10:52:19', '2016-06-16 10:52:19', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('59', '1', '2', '选择测试系统到本项目', null, '选择成功', '正常', null, null, '场景补充', null, null, '2016-06-16 11:08:13', '2016-06-16 11:08:13', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('60', '1', '2', '编辑系统的测试环境参数', null, '更新成功', '正常', null, null, '场景补充', null, null, '2016-06-16 11:08:54', '2016-06-16 11:08:54', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('61', '1', '2', '编辑项目简介', '编辑项目简介\r\n双击保存', '保存成功', '正常', null, null, '场景补充', null, null, '2016-06-16 11:09:43', '2016-06-16 11:09:43', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('62', '2', '2', '调整简介格式', '调整简介格式\r\n双击保存', '调整成功', '正常', null, null, '场景补充', null, null, '2016-06-16 11:10:09', '2016-06-16 11:10:09', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('63', '1', '2', '添加路径', null, '添加成功', '正常', null, null, '任务执行补充', null, null, '2016-06-16 11:53:55', '2016-06-16 11:53:55', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('64', '1', '2', '添加功能', null, '添加成功', '正常', null, null, '任务执行补充', null, null, '2016-06-16 11:55:57', '2016-06-16 11:55:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('65', '1', '2', '更新功能的所属阶段【双击】', '双击更新', '更新成功', '正常', null, null, '任务执行补充', null, null, '2016-06-16 11:56:44', '2016-06-16 11:56:44', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('66', '2', '2', '更新功能的所属阶段【下拉】', null, '更新成功', '正常', null, null, '任务执行补充', null, null, '2016-06-16 11:57:22', '2016-06-16 11:57:22', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('67', '1', '2', '查看本项目的测试范围', null, '……', '正常', null, null, '任务执行补充', null, null, '2016-06-16 11:57:47', '2016-06-16 11:57:47', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('68', '1', '2', '从首页查看本项目涉及系统的功能点', null, '……', '正常', null, null, '任务执行补充', null, null, '2016-06-16 11:58:29', '2016-06-16 11:58:29', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('69', '1', '2', '从首页查看本项目涉及的功能点', null, '……', '正常', null, null, '任务执行补充', null, null, '2016-06-16 11:59:03', '2016-06-16 11:59:03', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('70', '1', '2', '返回上一级', null, '……', '正常', null, null, '任务执行补充', null, null, '2016-06-16 11:59:19', '2016-06-16 11:59:19', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('71', '6', '2', '也一样', null, '……', '正常', null, null, '功能编写', null, null, '2016-06-16 15:03:53', '2016-06-16 15:03:53', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('72', '1', '2', '正常登录', null, '……', '正常', null, null, '功能编写', null, null, '2016-06-16 16:39:30', '2016-06-16 16:39:30', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('73', '2', '2', '用户名为空', null, '……', '正常', null, null, '功能编写', null, null, '2016-06-16 16:39:45', '2016-06-16 16:39:45', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('74', '1', '2', '选车', null, '……', '正常', null, null, '场景补充', null, null, '2016-06-16 16:43:31', '2016-06-16 16:43:31', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('75', '1', '2', '退出', null, '……', '正常', null, null, '场景补充', null, null, '2016-06-16 16:43:41', '2016-06-16 16:43:41', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('76', '1', '2', '添加阶段', null, '……', '正常', null, null, '列队补充', null, null, '2016-06-20 11:52:01', '2016-06-20 11:52:01', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('77', '1', '2', '添加系统', null, '……', '正常', null, null, '列队补充', null, null, '2016-06-20 11:56:04', '2016-06-20 11:56:04', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('78', '1', '2', '系统维护', null, '……', '正常', null, null, '列队补充', null, null, '2016-06-20 11:56:20', '2016-06-20 11:56:20', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('79', '1', '2', '正常登录', null, '……', '正常', null, null, '功能编写', null, null, '2016-06-21 11:42:11', '2016-06-21 11:42:11', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('80', '1', '2', '正常注销', null, '……', '正常', null, null, '功能编写', null, null, '2016-06-21 11:42:43', '2016-06-21 11:42:43', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('81', '1', '2', '输入内容，然后输出', null, '……', '正常', null, null, '功能编写', null, null, '2016-06-21 11:43:04', '2016-06-21 11:43:04', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('82', '1', '2', '选择标签进入', null, '……', '正常', null, null, '功能编写', null, null, '2016-06-21 11:43:18', '2016-06-21 11:43:18', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('83', '1', '2', '选择滚轴值', null, '……', '正常', null, null, '功能编写', null, null, '2016-06-21 11:43:45', '2016-06-21 11:43:45', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('85', '1', '2', '打开开关', null, '……', '正常', null, null, '功能编写', null, null, '2016-06-21 11:44:45', '2016-06-21 11:44:45', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('86', '2', '2', '关闭开关', null, '……', '正常', null, null, '功能编写', null, null, '2016-06-21 11:44:54', '2016-06-21 11:44:54', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('88', '2', '2', '选择标签', null, '……', '正常', null, null, '功能编写', null, null, '2016-06-21 11:47:01', '2016-06-21 11:47:01', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('89', '1', '2', '音量拨动', null, '……', '正常', null, null, '功能编写', null, null, '2016-06-21 11:47:31', '2016-06-21 11:47:31', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('90', '1', '2', '退出返回', null, '……', '正常', null, null, '功能编写', null, null, '2016-06-22 14:29:26', '2016-06-22 14:29:26', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('91', '1', '2', '按类型筛选', null, '……', '正常', null, null, '任务执行补充', null, null, '2016-06-24 14:20:53', '2016-06-24 14:20:53', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('92', '1', '2', '预约到店处理', null, '……', '正常', null, null, '任务执行补充', null, null, '2016-06-24 14:21:29', '2016-06-24 14:21:29', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('93', '2', '2', '正常下单', null, '下单成功', '正常', null, null, '功能编写', null, null, '2016-06-29 15:18:22', '2016-06-29 15:18:22', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('94', '1', '2', '选择要执行的列队', '1.选择测试者\r\n2.选择测试轮次', '显示要执行的测试场景列队', '正常', null, null, '功能编写', null, null, '2016-06-30 09:26:38', '2016-06-30 09:26:38', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('95', '1', '2', '立即支付', null, '立即支付', '正常', null, null, '功能编写', null, null, '2016-06-30 13:45:52', '2016-06-30 13:45:52', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('96', '1', '3', '用户登录', null, '识别码错误', '正常', null, null, '场景补充', null, null, '2016-07-01 10:24:22', '2016-07-01 10:24:22', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('97', '1', '2', '正常登录', null, '……', '正常', null, null, '功能编写', null, null, '2016-07-05 13:26:20', '2016-07-05 13:26:20', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('98', '2', '2', '密码错误', null, '……', '正常', null, null, '功能编写', null, null, '2016-07-05 13:26:27', '2016-07-05 13:26:27', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('99', '1', '2', '新用户注册', null, '……', '正常', null, null, '功能编写', null, null, '2016-07-05 13:26:37', '2016-07-05 13:26:37', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('100', '2', '2', '已注册过的用户注册', null, '……', '正常', null, null, '功能编写', null, null, '2016-07-05 13:26:46', '2016-07-05 13:26:46', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('101', '1', '2', '正常退出', null, '……', '正常', null, null, '功能编写', null, null, '2016-07-05 13:27:00', '2016-07-05 13:27:00', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('102', '1', '2', '选择车款', null, '……', '正常', null, null, '功能编写', null, null, '2016-07-05 13:36:02', '2016-07-05 13:36:02', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('103', '1', '2', '正常下单', null, '……', '正常', null, null, '功能编写', null, null, '2016-07-05 13:37:23', '2016-07-05 13:37:23', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('104', '1', '2', '选车', null, '……', '正常', null, null, '功能编写', null, null, '2016-07-05 13:44:15', '2016-07-05 13:44:15', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('105', '1', '2', '报名', null, '……', '正常', null, null, '功能编写', null, null, '2016-07-05 13:44:23', '2016-07-05 13:44:23', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('112', '1', null, 'yuasd', '', '', '正常', null, '17', null, '腰立辉', '腰立辉', '2016-09-19 13:46:38', '2016-09-19 13:46:38', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('113', '2', null, 'sdfew', '', '', '正常', '42', '17', null, '腰立辉', '腰立辉', '2016-09-19 13:48:20', '2016-09-19 13:48:20', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

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
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

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
INSERT INTO `tp_dict` VALUES ('29', '5', 'GD', 'testgp', '正常', '腰立辉', '腰立辉', '2016-09-16 22:22:32', '2016-09-16 22:22:32');
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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_element
-- ----------------------------
INSERT INTO `tp_element` VALUES ('1', '1', '操作', 'gtsdf', '正常', '16', null, null, null, null, null, null, 'num4', null, 'yy', '腰立辉', '2016-09-19 22:47:34', '2016-09-19 17:51:52');
INSERT INTO `tp_element` VALUES ('2', '2', '操作', 'zzz', '正常', '16', null, null, null, null, null, null, 'num2', null, null, null, '2016-09-19 22:47:38', '0000-00-00 00:00:00');
INSERT INTO `tp_element` VALUES ('3', '3', '检查', 'werw', '正常', '16', null, null, null, null, null, null, 'num3', null, '腰立辉', '腰立辉', '2016-09-19 22:47:42', '2016-09-19 17:56:44');
INSERT INTO `tp_element` VALUES ('4', '4', '检查', '【熬枯受淡】', '正常', '16', null, null, null, null, null, null, 'num4', null, '腰立辉', '腰立辉', '2016-09-19 22:47:48', '2016-09-19 17:57:04');
INSERT INTO `tp_element` VALUES ('5', '5', '检查', '案件收到货', '正常', '16', null, null, null, null, null, null, 'num5', null, '腰立辉', '腰立辉', '2016-09-19 22:47:49', '2016-09-19 17:57:32');

-- ----------------------------
-- Table structure for `tp_exefunc`
-- ----------------------------
DROP TABLE IF EXISTS `tp_exefunc`;
CREATE TABLE `tp_exefunc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `funcid` int(50) DEFAULT NULL,
  `sn` int(11) DEFAULT NULL,
  `tester` varchar(10) DEFAULT NULL,
  `bugid` varchar(8) DEFAULT NULL,
  `result` varchar(50) DEFAULT NULL,
  `stageid` smallint(6) DEFAULT NULL,
  `testsceneid` int(11) DEFAULT NULL,
  `funcremarks` varchar(200) DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updateTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_exefunc
-- ----------------------------
INSERT INTO `tp_exefunc` VALUES ('1', null, null, null, null, null, null, '7', null, null, null, null, '2016-09-20 11:07:55', '0000-00-00 00:00:00');
INSERT INTO `tp_exefunc` VALUES ('2', null, null, null, null, null, null, '10', null, null, null, null, '2016-09-20 11:07:52', '0000-00-00 00:00:00');
INSERT INTO `tp_exefunc` VALUES ('3', null, null, null, null, null, null, '10', null, null, null, null, '2016-09-20 11:07:46', '0000-00-00 00:00:00');

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
  `results` varchar(50) DEFAULT NULL,
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
) ENGINE=MyISAM AUTO_INCREMENT=104 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_exescene
-- ----------------------------
INSERT INTO `tp_exescene` VALUES ('7', '4', 'Manual ', '6', '43', '腰立辉', null, '200', null, '0000-00-00 00:00:00', null, 'V1.0.1', null, null, '2016-09-20 11:44:25', '2016-06-01 10:36:59');
INSERT INTO `tp_exescene` VALUES ('10', '2', 'Auto', '6', '46', '腰立辉', null, '200', null, '0000-00-00 00:00:00', null, 'V1.0.1', null, null, '2016-09-20 11:44:33', '2016-06-01 11:07:26');
INSERT INTO `tp_exescene` VALUES ('12', '2', null, '6', '5', '孟军良', null, '200', null, '0000-00-00 00:00:00', null, 'V1.0.2', null, null, '2016-08-08 16:18:06', '2016-06-02 15:28:48');
INSERT INTO `tp_exescene` VALUES ('14', '6', null, null, '1', '岳丹丹', null, '200', null, '0000-00-00 00:00:00', null, 'V1.0.3', null, null, '2016-06-02 17:35:38', '2016-06-02 17:35:38');
INSERT INTO `tp_exescene` VALUES ('15', '7', null, null, '5', '岳丹丹', null, '200', null, '0000-00-00 00:00:00', null, 'V1.0.3', null, null, '2016-06-02 17:35:38', '2016-06-02 17:35:38');
INSERT INTO `tp_exescene` VALUES ('16', '1', 'Auto', '6', '9', '腰立辉', '通过', '200', null, '0000-00-00 00:00:00', null, 'V1.0.3', null, null, '2016-09-20 11:44:40', '2016-06-07 11:40:11');
INSERT INTO `tp_exescene` VALUES ('17', '2', null, '6', '11', '腰立辉', null, '200', null, '0000-00-00 00:00:00', null, 'V1.0.3', null, null, '2016-09-20 11:44:13', '2016-06-07 13:00:38');
INSERT INTO `tp_exescene` VALUES ('18', '1', null, null, '12', '腰立辉', null, '200', null, '0000-00-00 00:00:00', null, 'V1.0.3', null, null, '2016-06-12 16:45:17', '2016-06-12 16:45:17');
INSERT INTO `tp_exescene` VALUES ('19', '2', null, null, '13', '腰立辉', null, '200', null, '0000-00-00 00:00:00', null, 'V1.0.3', null, null, '2016-06-12 16:45:17', '2016-06-12 16:45:17');
INSERT INTO `tp_exescene` VALUES ('20', '3', null, null, '14', '腰立辉', null, '200', null, '0000-00-00 00:00:00', null, 'V1.0.3', null, null, '2016-06-12 16:45:17', '2016-06-12 16:45:17');
INSERT INTO `tp_exescene` VALUES ('21', '4', null, null, '15', '腰立辉', null, '200', null, '0000-00-00 00:00:00', null, 'V1.0.3', null, null, '2016-06-12 16:45:17', '2016-06-12 16:45:17');
INSERT INTO `tp_exescene` VALUES ('22', '5', null, null, '16', '腰立辉', null, '200', null, '0000-00-00 00:00:00', null, 'V1.0.3', null, null, '2016-06-12 16:45:17', '2016-06-12 16:45:17');
INSERT INTO `tp_exescene` VALUES ('23', '6', null, null, '18', '腰立辉', null, '200', null, '0000-00-00 00:00:00', null, 'V1.0.3', null, null, '2016-06-12 16:45:17', '2016-06-12 16:45:17');
INSERT INTO `tp_exescene` VALUES ('24', '0', null, null, '19', '腰立辉', '失败', '200', null, '0000-00-00 00:00:00', null, 'V1.0.3', null, null, '2016-06-12 16:45:17', '2016-06-12 16:45:17');
INSERT INTO `tp_exescene` VALUES ('25', '2', null, null, '13', '腰立辉', null, '200', null, '0000-00-00 00:00:00', null, 'V1.0.3', null, null, '2016-06-13 14:24:14', '2016-06-13 14:24:14');
INSERT INTO `tp_exescene` VALUES ('26', '3', null, null, '16', '腰立辉', null, '200', null, '0000-00-00 00:00:00', null, 'V1.0.3', null, null, '2016-06-13 14:24:16', '2016-06-13 14:24:16');
INSERT INTO `tp_exescene` VALUES ('27', '4', null, null, '12', '腰立辉', null, '200', null, '0000-00-00 00:00:00', null, 'V1.0.3', null, null, '2016-06-13 15:08:14', '2016-06-13 15:08:14');
INSERT INTO `tp_exescene` VALUES ('28', '1', null, null, '19', '腰立辉', '失败', '200', null, '0000-00-00 00:00:00', null, 'V1.0.3', null, null, '2016-06-13 15:09:37', '2016-06-13 15:09:37');
INSERT INTO `tp_exescene` VALUES ('31', '99', null, null, '9', '腰立辉', null, '200', null, '0000-00-00 00:00:00', null, 'V1.0.3', null, null, '2016-06-15 17:00:20', '2016-06-15 17:00:20');
INSERT INTO `tp_exescene` VALUES ('32', '99', null, null, '11', '腰立辉', null, '200', null, '0000-00-00 00:00:00', null, 'V1.0.3', null, null, '2016-06-15 17:00:20', '2016-06-15 17:00:20');
INSERT INTO `tp_exescene` VALUES ('36', '99', null, null, '9', '腰立辉', null, '200', null, '0000-00-00 00:00:00', null, 'V1.0.3', null, null, '2016-06-15 17:19:35', '2016-06-15 17:19:35');
INSERT INTO `tp_exescene` VALUES ('38', '1', null, null, '20', '腰立辉', '通过', '200', null, '0000-00-00 00:00:00', null, 'V1.0.3', null, null, '2016-06-16 11:28:54', '2016-06-16 11:28:54');
INSERT INTO `tp_exescene` VALUES ('39', '2', null, null, '21', '腰立辉', '失败', '200', null, '0000-00-00 00:00:00', null, 'V1.0.3', null, null, '2016-06-16 11:28:54', '2016-06-16 11:28:54');
INSERT INTO `tp_exescene` VALUES ('40', '3', null, null, '22', '腰立辉', '通过', '200', null, '0000-00-00 00:00:00', null, 'V1.0.3', null, null, '2016-06-16 11:28:54', '2016-06-16 11:28:54');
INSERT INTO `tp_exescene` VALUES ('41', '99', null, null, '20', '岳丹丹', null, '200', null, '0000-00-00 00:00:00', null, 'V1.0.3', null, null, '2016-06-16 15:19:08', '2016-06-16 15:19:08');
INSERT INTO `tp_exescene` VALUES ('42', '99', null, null, '21', '岳丹丹', '通过', '200', null, '0000-00-00 00:00:00', null, 'V1.0.3', null, null, '2016-06-16 16:33:41', '2016-06-16 16:33:41');
INSERT INTO `tp_exescene` VALUES ('44', '1', null, null, '24', '腰立辉', null, '200', null, '0000-00-00 00:00:00', null, 'V1.0.3', null, null, '2016-06-20 11:48:54', '2016-06-20 11:48:54');
INSERT INTO `tp_exescene` VALUES ('45', '2', null, null, '26', '腰立辉', null, '200', null, '0000-00-00 00:00:00', null, 'V1.0.3', null, null, '2016-06-20 11:49:03', '2016-06-20 11:49:03');
INSERT INTO `tp_exescene` VALUES ('46', '3', null, null, '25', '腰立辉', null, '200', null, '0000-00-00 00:00:00', null, 'V1.0.3', null, null, '2016-06-20 11:49:09', '2016-06-20 11:49:09');
INSERT INTO `tp_exescene` VALUES ('47', '99', null, null, '25', '岳丹丹', null, '200', null, '0000-00-00 00:00:00', null, 'V1.0.3', null, null, '2016-06-20 13:48:53', '2016-06-20 13:48:53');
INSERT INTO `tp_exescene` VALUES ('48', '99', null, null, '24', '岳丹丹', null, '200', null, '0000-00-00 00:00:00', null, 'V1.0.3', null, null, '2016-06-20 13:48:55', '2016-06-20 13:48:55');
INSERT INTO `tp_exescene` VALUES ('49', '99', null, null, '26', '岳丹丹', null, '200', null, '0000-00-00 00:00:00', null, 'V1.0.3', null, null, '2016-06-20 13:48:57', '2016-06-20 13:48:57');
INSERT INTO `tp_exescene` VALUES ('51', '1', null, null, '27', '腰立辉', null, '200', null, '0000-00-00 00:00:00', null, 'V1.0.3', null, null, '2016-06-22 14:34:42', '2016-06-22 14:34:42');
INSERT INTO `tp_exescene` VALUES ('52', '2', null, null, '29', '腰立辉', null, '200', null, '0000-00-00 00:00:00', null, 'V1.0.3', null, null, '2016-06-22 14:34:44', '2016-06-22 14:34:44');
INSERT INTO `tp_exescene` VALUES ('53', '3', null, null, '28', '腰立辉', null, '200', null, '0000-00-00 00:00:00', null, 'V1.0.3', null, null, '2016-06-22 14:34:46', '2016-06-22 14:34:46');
INSERT INTO `tp_exescene` VALUES ('54', '4', null, null, '30', '腰立辉', null, '200', null, '0000-00-00 00:00:00', null, 'V1.0.3', null, null, '2016-06-22 14:34:48', '2016-06-22 14:34:48');
INSERT INTO `tp_exescene` VALUES ('55', '99', null, null, '27', '腰立辉', null, '200', null, '0000-00-00 00:00:00', null, 'V1.0.3', null, null, '2016-06-27 11:03:14', '2016-06-27 11:03:14');
INSERT INTO `tp_exescene` VALUES ('73', '2', null, null, '33', '腰立辉', '通过', null, null, '0000-00-00 00:00:00', null, 'V1.0.3', null, null, '2016-07-05 13:54:09', '2016-07-05 13:54:09');
INSERT INTO `tp_exescene` VALUES ('74', '99', null, null, '34', '腰立辉', '通过', null, null, '0000-00-00 00:00:00', null, 'V1.0.3', null, null, '2016-07-05 13:54:11', '2016-07-05 13:54:11');
INSERT INTO `tp_exescene` VALUES ('75', '99', null, null, '33', '腰立辉', '通过', null, null, '0000-00-00 00:00:00', null, 'V1.0.3', null, null, '2016-07-05 13:54:13', '2016-07-05 13:54:13');
INSERT INTO `tp_exescene` VALUES ('79', '99', null, null, '33', '腰立辉', null, 'http://zhixiao.huimaiche.com/', null, '0000-00-00 00:00:00', null, 'V1.0.3', null, null, '2016-07-05 15:27:43', '2016-07-05 15:27:43');
INSERT INTO `tp_exescene` VALUES ('80', '99', null, null, '34', '腰立辉', null, 'http://jinkou.huimaiche.com/', null, '0000-00-00 00:00:00', null, 'V1.0.3', null, null, '2016-07-05 15:27:45', '2016-07-05 15:27:45');
INSERT INTO `tp_exescene` VALUES ('81', '99', null, null, '33', '腰立辉', null, 'http://zhixiao.huimaiche.com/', null, '0000-00-00 00:00:00', null, 'V1.0.3', null, null, '2016-07-05 15:27:47', '2016-07-05 15:27:47');
INSERT INTO `tp_exescene` VALUES ('86', '1', null, null, '32', '岳丹丹', '通过', null, null, '0000-00-00 00:00:00', null, 'V1.0.3', null, null, '2016-07-06 10:36:11', '2016-07-06 10:36:11');
INSERT INTO `tp_exescene` VALUES ('87', '2', null, null, '23', '岳丹丹', '通过', null, null, '0000-00-00 00:00:00', null, 'V1.0.3', null, null, '2016-07-06 10:36:13', '2016-07-06 10:36:13');
INSERT INTO `tp_exescene` VALUES ('88', '3', null, null, '32', '岳丹丹', '通过', null, null, '0000-00-00 00:00:00', null, 'V1.0.3', null, null, '2016-07-06 10:36:15', '2016-07-06 10:36:15');
INSERT INTO `tp_exescene` VALUES ('96', '99', null, null, '36', '腰立辉', null, null, '0', '0000-00-00 00:00:00', null, 'V1.0.3', null, null, '2016-07-11 14:51:32', '2016-07-11 14:51:32');
INSERT INTO `tp_exescene` VALUES ('97', '99', null, null, '36', '王鑫彤', null, null, '0', '0000-00-00 00:00:00', null, 'V1.0.3', null, null, '2016-07-11 14:56:11', '2016-07-11 14:56:11');
INSERT INTO `tp_exescene` VALUES ('103', '99', null, null, '32', '岳丹丹', '通过', 'http://dealer.huimaiche.com', '0', '0000-00-00 00:00:00', null, 'V1.0.3', null, null, '2016-07-14 10:12:03', '2016-07-14 10:12:03');

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
) ENGINE=MyISAM AUTO_INCREMENT=173 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_func
-- ----------------------------
INSERT INTO `tp_func` VALUES ('1', '1', '用户登录', '正常', '105', '25', '腰立辉', null, '2016-08-08 14:30:41', '2016-08-08 14:30:41');
INSERT INTO `tp_func` VALUES ('4', '2', '用户注销', '正常', '105', '25', '腰立辉', null, '2016-08-08 14:30:55', '2016-08-08 14:30:55');
INSERT INTO `tp_func` VALUES ('3', '1', '待办列表', '正常', '106', '25', '腰立辉', null, '2016-08-08 21:10:30', '2016-08-08 21:10:30');
INSERT INTO `tp_func` VALUES ('5', '1', '项目列表', '正常', '109', null, '腰立辉', null, '2016-08-08 14:34:13', '2016-08-08 14:34:13');
INSERT INTO `tp_func` VALUES ('6', '2', '添加项目', '正常', '109', null, '腰立辉', null, '2016-08-08 14:34:26', '2016-08-08 14:34:26');
INSERT INTO `tp_func` VALUES ('7', '3', '修改项目', '正常', '109', null, '腰立辉', null, '2016-08-08 14:34:42', '2016-08-08 14:34:42');
INSERT INTO `tp_func` VALUES ('8', '1', '登陆', '正常', '111', '24', '腰立辉', null, '2016-08-09 21:57:27', '2016-08-09 21:57:27');
INSERT INTO `tp_func` VALUES ('9', '2', '注销', '正常', '111', '25', '腰立辉', null, '2016-08-09 21:57:49', '2016-08-09 21:57:49');
INSERT INTO `tp_func` VALUES ('149', '1', '用例列表', '正常', '150', '24', '腰立辉', null, '2016-08-15 17:05:57', '2016-08-15 17:05:57');
INSERT INTO `tp_func` VALUES ('150', '2', '用例-添加', '正常', '150', '24', '腰立辉', null, '2016-08-15 17:06:17', '2016-08-15 17:06:17');
INSERT INTO `tp_func` VALUES ('13', '1', '待办', '正常', '102', null, '腰立辉', null, '2016-08-10 17:37:09', '2016-08-10 17:37:09');
INSERT INTO `tp_func` VALUES ('14', '1', '登录', '正常', '113', '24', '腰立辉', null, '2016-08-11 11:23:54', '2016-08-11 11:23:54');
INSERT INTO `tp_func` VALUES ('15', '2', '注销', '正常', '113', '24', '腰立辉', null, '2016-08-11 11:24:02', '2016-08-11 11:24:02');
INSERT INTO `tp_func` VALUES ('16', '1', '添加产品', '正常', '116', '24', '腰立辉', null, '2016-08-11 14:56:08', '2016-08-11 11:34:44');
INSERT INTO `tp_func` VALUES ('17', '2', '产品列表', '待确认', '116', '40', '腰立辉', '腰立辉', '2016-09-18 23:21:44', '2016-09-18 23:21:44');
INSERT INTO `tp_func` VALUES ('18', '3', '修改产品', '正常', '116', '24', '腰立辉', null, '2016-08-11 14:56:16', '2016-08-11 11:35:55');
INSERT INTO `tp_func` VALUES ('19', '5', '系统管理入口', '正常', '116', '24', '腰立辉', null, '2016-08-11 14:56:20', '2016-08-11 11:36:51');
INSERT INTO `tp_func` VALUES ('20', '4', '产品查询', '正常', '116', '24', '腰立辉', null, '2016-08-11 14:56:25', '2016-08-11 11:37:02');
INSERT INTO `tp_func` VALUES ('21', '1', '左侧-产品列表', '正常', '117', '24', '腰立辉', null, '2016-08-11 14:59:32', '2016-08-11 14:59:32');
INSERT INTO `tp_func` VALUES ('22', '2', '右侧-系统列表', '正常', '117', '24', '腰立辉', null, '2016-08-11 15:00:02', '2016-08-11 15:00:02');
INSERT INTO `tp_func` VALUES ('23', '3', '切换产品', '待确认', '117', '24', '腰立辉', null, '2016-08-11 15:00:29', '2016-08-11 15:00:29');
INSERT INTO `tp_func` VALUES ('24', '4', '系统-添加', '待确认', '117', '24', '腰立辉', null, '2016-08-11 15:02:00', '2016-08-11 15:02:00');
INSERT INTO `tp_func` VALUES ('25', '5', '系统-修改', '待确认', '117', '24', '腰立辉', null, '2016-08-11 15:02:16', '2016-08-11 15:02:16');
INSERT INTO `tp_func` VALUES ('26', '6', '测试环境', '正常', '117', '24', '腰立辉', null, '2016-08-11 15:02:34', '2016-08-11 15:02:34');
INSERT INTO `tp_func` VALUES ('27', '7', '路径管理入口', '正常', '117', '24', '腰立辉', null, '2016-08-11 15:02:47', '2016-08-11 15:02:47');
INSERT INTO `tp_func` VALUES ('28', '8', '返回-产品管理', '正常', '117', '24', '腰立辉', null, '2016-08-11 15:03:01', '2016-08-11 15:03:01');
INSERT INTO `tp_func` VALUES ('29', '1', '左侧-系统列表', '正常', '118', '24', '腰立辉', null, '2016-08-11 15:04:35', '2016-08-11 15:04:35');
INSERT INTO `tp_func` VALUES ('30', '2', '右侧-路径列表', '正常', '118', '24', '腰立辉', null, '2016-08-11 15:05:10', '2016-08-11 15:05:10');
INSERT INTO `tp_func` VALUES ('31', '3', '切换系统', '正常', '118', '24', '腰立辉', null, '2016-08-11 15:05:58', '2016-08-11 15:05:58');
INSERT INTO `tp_func` VALUES ('32', '4', '路径-添加', '待确认', '118', '24', '腰立辉', null, '2016-08-11 15:07:39', '2016-08-11 15:07:39');
INSERT INTO `tp_func` VALUES ('33', '5', '路径-修改', '待确认', '118', '24', '腰立辉', null, '2016-08-11 15:07:18', '2016-08-11 15:07:18');
INSERT INTO `tp_func` VALUES ('34', '6', '功能点管理入口', '正常', '118', '24', '腰立辉', null, '2016-08-11 15:08:02', '2016-08-11 15:08:02');
INSERT INTO `tp_func` VALUES ('35', '7', '返回-系统管理', '正常', '118', '24', '腰立辉', null, '2016-08-11 15:08:13', '2016-08-11 15:08:13');
INSERT INTO `tp_func` VALUES ('36', '1', '左侧-路径列表', '正常', '119', '24', '腰立辉', null, '2016-08-11 15:10:20', '2016-08-11 15:10:20');
INSERT INTO `tp_func` VALUES ('37', '2', '右侧-功能点列表', '正常', '119', '24', '腰立辉', null, '2016-08-11 15:10:42', '2016-08-11 15:10:42');
INSERT INTO `tp_func` VALUES ('38', '3', '切换路径', '正常', '119', '24', '腰立辉', null, '2016-08-11 15:11:24', '2016-08-11 15:11:24');
INSERT INTO `tp_func` VALUES ('39', '4', '功能点-添加', '待确认', '119', '24', '腰立辉', null, '2016-08-11 15:12:22', '2016-08-11 15:12:22');
INSERT INTO `tp_func` VALUES ('40', '5', '功能点-修改', '待确认', '119', '24', '腰立辉', null, '2016-08-11 15:12:05', '2016-08-11 15:12:05');
INSERT INTO `tp_func` VALUES ('41', '6', '规则管理入口', '搁置', '119', '24', '腰立辉', null, '2016-08-11 15:12:49', '2016-08-11 15:12:49');
INSERT INTO `tp_func` VALUES ('42', '7', '用例管理入口', '待确认', '119', '24', '腰立辉', null, '2016-08-11 15:15:05', '2016-08-11 15:15:05');
INSERT INTO `tp_func` VALUES ('43', '8', '控件管理入口', '待确认', '119', '24', '腰立辉', null, '2016-08-11 15:16:14', '2016-08-11 15:16:14');
INSERT INTO `tp_func` VALUES ('44', '9', '数据用例入口', '待确认', '119', '24', '腰立辉', null, '2016-08-11 15:16:24', '2016-08-11 15:16:24');
INSERT INTO `tp_func` VALUES ('45', '10', '返回-路径管理', '正常', '119', '24', '腰立辉', null, '2016-08-11 15:16:03', '2016-08-11 15:16:03');
INSERT INTO `tp_func` VALUES ('46', '3', '12', '正常', '105', null, '腰立辉', null, '2016-08-14 22:33:47', '2016-08-14 22:33:47');
INSERT INTO `tp_func` VALUES ('47', '4', '13', '正常', '105', null, '腰立辉', null, '2016-08-14 22:33:53', '2016-08-14 22:33:53');
INSERT INTO `tp_func` VALUES ('48', '1', 'yyyy', '正常', '115', '24', '腰立辉', '腰立辉', '2016-09-19 10:04:32', '2016-09-19 10:04:32');
INSERT INTO `tp_func` VALUES ('50', '6', '12', '作废', '116', '23', '腰立辉', '腰立辉', '2016-09-18 23:21:59', '2016-09-18 23:21:59');
INSERT INTO `tp_func` VALUES ('51', '11', '标记为当前项目', '搁置', '119', '24', '腰立辉', null, '2016-08-15 14:44:55', '2016-08-15 14:44:55');
INSERT INTO `tp_func` VALUES ('52', '1', '项目列表', '正常', '123', '24', '腰立辉', null, '2016-08-15 14:46:06', '2016-08-15 14:46:06');
INSERT INTO `tp_func` VALUES ('53', '2', '切换分组', '正常', '123', '24', '腰立辉', null, '2016-08-15 14:46:15', '2016-08-15 14:46:15');
INSERT INTO `tp_func` VALUES ('54', '3', '查询-按编号', '正常', '123', '24', '腰立辉', null, '2016-08-15 14:46:25', '2016-08-15 14:46:25');
INSERT INTO `tp_func` VALUES ('55', '4', '查询-按项目', '正常', '123', '24', '腰立辉', null, '2016-08-15 14:46:31', '2016-08-15 14:46:31');
INSERT INTO `tp_func` VALUES ('56', '5', '查询-按状态', '已搁置', '123', '24', '腰立辉', null, '2016-08-15 14:46:42', '2016-08-15 14:46:42');
INSERT INTO `tp_func` VALUES ('57', '6', '里程碑入口', '正常', '123', '24', '腰立辉', null, '2016-08-15 14:47:02', '2016-08-15 14:47:02');
INSERT INTO `tp_func` VALUES ('58', '7', '场景入口', '正常', '123', '24', '腰立辉', null, '2016-08-15 14:47:15', '2016-08-15 14:47:15');
INSERT INTO `tp_func` VALUES ('59', '8', '详情（需求确认书）入口', '正常', '123', '24', '腰立辉', null, '2016-08-15 14:47:28', '2016-08-15 14:47:28');
INSERT INTO `tp_func` VALUES ('60', '9', '项目系统入口', '正常', '123', '24', '腰立辉', null, '2016-08-15 14:47:40', '2016-08-15 14:47:40');
INSERT INTO `tp_func` VALUES ('61', '10', '项目功能点入口', '正常', '123', '24', '腰立辉', null, '2016-08-15 14:47:47', '2016-08-15 14:47:47');
INSERT INTO `tp_func` VALUES ('62', '11', '测试范围入口', '正常', '123', '24', '腰立辉', null, '2016-08-15 14:47:58', '2016-08-15 14:47:58');
INSERT INTO `tp_func` VALUES ('63', '1', '左侧-项目列表（当前分组）', '正常', '124', '24', '腰立辉', null, '2016-08-15 14:48:36', '2016-08-15 14:48:36');
INSERT INTO `tp_func` VALUES ('64', '2', '切换分组', '正常', '124', '24', '腰立辉', null, '2016-08-15 14:48:49', '2016-08-15 14:48:49');
INSERT INTO `tp_func` VALUES ('65', '3', '右侧-里程碑列表', '正常', '124', '24', '腰立辉', null, '2016-08-15 14:49:11', '2016-08-15 14:49:11');
INSERT INTO `tp_func` VALUES ('66', '4', '查询-按里程碑ID', '正常', '124', '24', '腰立辉', null, '2016-08-15 14:49:26', '2016-08-15 14:49:26');
INSERT INTO `tp_func` VALUES ('67', '5', '里程碑-添加', '正常', '124', '24', '腰立辉', null, '2016-08-15 14:49:39', '2016-08-15 14:49:39');
INSERT INTO `tp_func` VALUES ('68', '6', '里程碑-修改', '正常', '124', '24', '腰立辉', null, '2016-08-15 14:49:46', '2016-08-15 14:49:46');
INSERT INTO `tp_func` VALUES ('69', '7', '测试列队入口', '正常', '124', '24', '腰立辉', null, '2016-08-15 14:50:05', '2016-08-15 14:50:05');
INSERT INTO `tp_func` VALUES ('70', '8', '返回-项目管理', '正常', '124', '24', '腰立辉', null, '2016-08-15 14:50:14', '2016-08-15 14:50:14');
INSERT INTO `tp_func` VALUES ('71', '1', '左侧-里程碑', '正常', '125', '24', '腰立辉', null, '2016-08-15 14:51:20', '2016-08-15 14:51:20');
INSERT INTO `tp_func` VALUES ('72', '2', '切换人员里程碑', '正常', '125', '24', '腰立辉', null, '2016-08-15 14:51:32', '2016-08-15 14:51:32');
INSERT INTO `tp_func` VALUES ('73', '3', '右侧-场景列队', '正常', '125', '24', '腰立辉', null, '2016-08-15 14:51:48', '2016-08-15 14:51:48');
INSERT INTO `tp_func` VALUES ('74', '4', '项目场景库入口', '正常', '125', '24', '腰立辉', null, '2016-08-15 14:52:07', '2016-08-15 14:52:07');
INSERT INTO `tp_func` VALUES ('75', '5', '调整场景顺序', '正常', '125', '24', '腰立辉', null, '2016-08-15 14:52:16', '2016-08-15 14:52:16');
INSERT INTO `tp_func` VALUES ('76', '6', '移除测试场景', '正常', '125', '24', '腰立辉', null, '2016-08-15 14:52:28', '2016-08-15 14:52:28');
INSERT INTO `tp_func` VALUES ('77', '7', '场景功能入口', '正常', '125', '24', '腰立辉', null, '2016-08-15 14:52:38', '2016-08-15 14:52:38');
INSERT INTO `tp_func` VALUES ('78', '8', '返回里程碑', '正常', '125', '24', '腰立辉', null, '2016-08-15 14:52:53', '2016-08-15 14:52:53');
INSERT INTO `tp_func` VALUES ('79', '1', '场景列表', '正常', '126', '24', '腰立辉', null, '2016-08-15 15:17:39', '2016-08-15 15:17:39');
INSERT INTO `tp_func` VALUES ('80', '2', '查询-按名称', '正常', '126', '24', '腰立辉', null, '2016-08-15 15:17:55', '2016-08-15 15:17:55');
INSERT INTO `tp_func` VALUES ('81', '3', '指定人员', '正常', '126', '24', '腰立辉', null, '2016-08-15 15:18:28', '2016-08-15 15:18:28');
INSERT INTO `tp_func` VALUES ('82', '4', '分派场景给指定人', '正常', '126', '24', '腰立辉', null, '2016-08-15 15:20:02', '2016-08-15 15:20:02');
INSERT INTO `tp_func` VALUES ('83', '5', '场景-添加', '正常', '126', '24', '腰立辉', null, '2016-08-15 15:20:14', '2016-08-15 15:20:14');
INSERT INTO `tp_func` VALUES ('84', '6', '场景-修改', '正常', '126', '24', '腰立辉', null, '2016-08-15 15:20:28', '2016-08-15 15:20:28');
INSERT INTO `tp_func` VALUES ('85', '7', '场景功能点-入口', '正常', '126', '24', '腰立辉', null, '2016-08-15 15:20:40', '2016-08-15 15:20:40');
INSERT INTO `tp_func` VALUES ('86', '8', '返回-测试列队', '正常', '126', '24', '腰立辉', null, '2016-08-15 15:20:51', '2016-08-15 15:20:51');
INSERT INTO `tp_func` VALUES ('87', '1', '左侧-项目列表', '正常', '132', '24', '腰立辉', null, '2016-08-15 15:21:37', '2016-08-15 15:21:37');
INSERT INTO `tp_func` VALUES ('88', '2', '切换项目', '正常', '132', '24', '腰立辉', null, '2016-08-15 15:21:46', '2016-08-15 15:21:46');
INSERT INTO `tp_func` VALUES ('89', '3', '右侧-场景列表', '正常', '132', '24', '腰立辉', null, '2016-08-15 15:21:59', '2016-08-15 15:21:59');
INSERT INTO `tp_func` VALUES ('90', '4', '场景-添加', '正常', '132', '24', '腰立辉', null, '2016-08-15 15:22:06', '2016-08-15 15:22:06');
INSERT INTO `tp_func` VALUES ('91', '5', '场景-修改', '正常', '132', '24', '腰立辉', null, '2016-08-15 15:22:13', '2016-08-15 15:22:13');
INSERT INTO `tp_func` VALUES ('92', '6', '场景-复制', '正常', '132', '24', '腰立辉', null, '2016-08-15 15:22:20', '2016-08-15 15:22:20');
INSERT INTO `tp_func` VALUES ('93', '7', '场景功能-入口', '正常', '132', '24', '腰立辉', null, '2016-08-15 15:22:33', '2016-08-15 15:22:33');
INSERT INTO `tp_func` VALUES ('94', '8', '返回项目管理', '正常', '132', '24', '腰立辉', null, '2016-08-15 15:22:41', '2016-08-15 15:22:41');
INSERT INTO `tp_func` VALUES ('95', '1', '项目详情-修改', '正常', '135', '24', '腰立辉', null, '2016-08-15 15:23:47', '2016-08-15 15:23:47');
INSERT INTO `tp_func` VALUES ('96', '2', '返回-项目管理', '正常', '135', '24', '腰立辉', null, '2016-08-15 15:23:40', '2016-08-15 15:23:40');
INSERT INTO `tp_func` VALUES ('97', '1', '左侧-项目列表', '正常', '136', '24', '腰立辉', null, '2016-08-15 15:26:32', '2016-08-15 15:26:32');
INSERT INTO `tp_func` VALUES ('98', '2', '切换项目', '正常', '136', '24', '腰立辉', null, '2016-08-15 15:26:42', '2016-08-15 15:26:42');
INSERT INTO `tp_func` VALUES ('99', '3', '右侧-项目系统列表', '正常', '136', '24', '腰立辉', null, '2016-08-15 15:26:59', '2016-08-15 15:26:59');
INSERT INTO `tp_func` VALUES ('100', '4', '关联系统-入口', '正常', '136', '24', '腰立辉', null, '2016-08-15 15:27:20', '2016-08-15 15:27:20');
INSERT INTO `tp_func` VALUES ('101', '5', '路径-入口', '正常', '136', '24', '腰立辉', null, '2016-08-15 15:27:34', '2016-08-15 15:27:34');
INSERT INTO `tp_func` VALUES ('102', '6', '测试环境-编辑', '正常', '136', '24', '腰立辉', null, '2016-08-15 15:27:55', '2016-08-15 15:27:55');
INSERT INTO `tp_func` VALUES ('103', '7', '返回-项目管理', '正常', '136', '24', '腰立辉', null, '2016-08-15 15:28:07', '2016-08-15 15:28:07');
INSERT INTO `tp_func` VALUES ('104', '1', '左侧-项目系统列表', '正常', '137', '24', '腰立辉', null, '2016-08-15 15:28:39', '2016-08-15 15:28:39');
INSERT INTO `tp_func` VALUES ('105', '2', '关联-解除', '正常', '137', '24', '腰立辉', null, '2016-08-15 15:29:07', '2016-08-15 15:29:07');
INSERT INTO `tp_func` VALUES ('106', '3', '右侧-产品下未关联系统列表', '正常', '137', '24', '腰立辉', null, '2016-08-15 15:29:32', '2016-08-15 15:29:32');
INSERT INTO `tp_func` VALUES ('107', '4', '关联-添加', '正常', '137', '24', '腰立辉', null, '2016-08-15 15:32:00', '2016-08-15 15:32:00');
INSERT INTO `tp_func` VALUES ('108', '5', '系统-添加', '正常', '137', '24', '腰立辉', null, '2016-08-15 15:29:59', '2016-08-15 15:29:59');
INSERT INTO `tp_func` VALUES ('109', '6', '系统-编辑', '正常', '137', '24', '腰立辉', null, '2016-08-15 15:30:05', '2016-08-15 15:30:05');
INSERT INTO `tp_func` VALUES ('110', '7', '返回-项目管理', '正常', '137', '24', '腰立辉', null, '2016-08-15 15:30:41', '2016-08-15 15:30:41');
INSERT INTO `tp_func` VALUES ('111', '1', '左侧-项目系统', '正常', '138', '24', '腰立辉', null, '2016-08-15 15:36:14', '2016-08-15 15:36:14');
INSERT INTO `tp_func` VALUES ('112', '2', '切换系统', '正常', '138', '24', '腰立辉', null, '2016-08-15 15:36:22', '2016-08-15 15:36:22');
INSERT INTO `tp_func` VALUES ('113', '3', '右侧-路径列表', '正常', '138', '24', '腰立辉', null, '2016-08-15 15:36:34', '2016-08-15 15:36:34');
INSERT INTO `tp_func` VALUES ('114', '4', '路径-添加', '正常', '138', '24', '腰立辉', null, '2016-08-15 15:36:42', '2016-08-15 15:36:42');
INSERT INTO `tp_func` VALUES ('115', '5', '路径-修改', '正常', '138', '24', '腰立辉', null, '2016-08-15 15:36:51', '2016-08-15 15:36:51');
INSERT INTO `tp_func` VALUES ('116', '6', '功能点-入口', '正常', '138', '24', '腰立辉', null, '2016-08-15 15:37:06', '2016-08-15 15:37:06');
INSERT INTO `tp_func` VALUES ('117', '7', '返回-项目系统', '正常', '138', '24', '腰立辉', null, '2016-08-15 15:37:23', '2016-08-15 15:37:23');
INSERT INTO `tp_func` VALUES ('118', '1', '左侧-路径列表', '正常', '139', '24', '腰立辉', null, '2016-08-15 15:38:52', '2016-08-15 15:38:52');
INSERT INTO `tp_func` VALUES ('119', '2', '切换路径', '正常', '139', '24', '腰立辉', null, '2016-08-15 15:39:02', '2016-08-15 15:39:02');
INSERT INTO `tp_func` VALUES ('120', '3', '右侧-功能点列表', '正常', '139', '24', '腰立辉', null, '2016-08-15 15:39:46', '2016-08-15 15:39:46');
INSERT INTO `tp_func` VALUES ('121', '4', '功能点-添加', '正常', '139', '24', '腰立辉', null, '2016-08-15 15:39:58', '2016-08-15 15:39:58');
INSERT INTO `tp_func` VALUES ('122', '5', '功能点-修改', '正常', '139', '24', '腰立辉', null, '2016-08-15 15:40:05', '2016-08-15 15:40:05');
INSERT INTO `tp_func` VALUES ('123', '6', '功能点-当前项目标记', '正常', '139', '24', '腰立辉', null, '2016-08-15 15:40:20', '2016-08-15 15:40:20');
INSERT INTO `tp_func` VALUES ('124', '7', '测试用例-入口', '正常', '139', '24', '腰立辉', null, '2016-08-15 15:40:33', '2016-08-15 15:40:33');
INSERT INTO `tp_func` VALUES ('125', '8', '控件管理-入口', '正常', '139', '24', '腰立辉', null, '2016-08-15 15:40:43', '2016-08-15 15:40:43');
INSERT INTO `tp_func` VALUES ('126', '9', '数据用例-入口', '正常', '139', '24', '腰立辉', null, '2016-08-15 15:41:13', '2016-08-15 15:41:13');
INSERT INTO `tp_func` VALUES ('127', '10', '规则管理-入口', '正常', '139', '24', '腰立辉', null, '2016-08-15 15:41:24', '2016-08-15 15:41:24');
INSERT INTO `tp_func` VALUES ('128', '11', '返回-项目路径', '正常', '139', '24', '腰立辉', null, '2016-08-15 15:41:37', '2016-08-15 15:41:37');
INSERT INTO `tp_func` VALUES ('129', '1', '左侧-项目列表', '正常', '144', '24', '腰立辉', null, '2016-08-15 15:44:48', '2016-08-15 15:44:48');
INSERT INTO `tp_func` VALUES ('130', '2', '切换项目', '正常', '144', '24', '腰立辉', null, '2016-08-15 15:44:59', '2016-08-15 15:44:59');
INSERT INTO `tp_func` VALUES ('131', '3', '右侧-项目功能点', '正常', '144', '24', '腰立辉', null, '2016-08-15 15:45:10', '2016-08-15 15:45:10');
INSERT INTO `tp_func` VALUES ('132', '4', '功能点-添加', '正常', '144', '24', '腰立辉', null, '2016-08-15 15:45:23', '2016-08-15 15:45:23');
INSERT INTO `tp_func` VALUES ('133', '5', '功能点-修改', '正常', '144', '24', '腰立辉', null, '2016-08-15 15:45:35', '2016-08-15 15:45:35');
INSERT INTO `tp_func` VALUES ('134', '6', '功能点-当前项目标记', '正常', '144', '24', '腰立辉', null, '2016-08-15 15:45:45', '2016-08-15 15:45:45');
INSERT INTO `tp_func` VALUES ('135', '7', '测试用例-入口', '正常', '144', '24', '腰立辉', null, '2016-08-15 15:46:01', '2016-08-15 15:46:01');
INSERT INTO `tp_func` VALUES ('136', '8', '控件管理-入口', '正常', '144', '24', '腰立辉', null, '2016-08-15 15:46:16', '2016-08-15 15:46:16');
INSERT INTO `tp_func` VALUES ('137', '9', '数据用例-入口', '正常', '144', '24', '腰立辉', null, '2016-08-15 15:46:25', '2016-08-15 15:46:25');
INSERT INTO `tp_func` VALUES ('138', '10', '规则管理-入口', '正常', '144', '24', '腰立辉', null, '2016-08-15 15:46:50', '2016-08-15 15:46:50');
INSERT INTO `tp_func` VALUES ('139', '11', '返回-项目管理', '正常', '144', '24', '腰立辉', null, '2016-08-15 15:47:04', '2016-08-15 15:47:04');
INSERT INTO `tp_func` VALUES ('140', '1', '左侧-项目列表', '正常', '149', '24', '腰立辉', null, '2016-08-15 15:50:28', '2016-08-15 15:50:28');
INSERT INTO `tp_func` VALUES ('141', '2', '切换项目', '正常', '149', '24', '腰立辉', null, '2016-08-15 15:51:09', '2016-08-15 15:51:09');
INSERT INTO `tp_func` VALUES ('142', '3', '右侧-项目测试范围', '正常', '149', '24', '腰立辉', null, '2016-08-15 15:51:24', '2016-08-15 15:51:24');
INSERT INTO `tp_func` VALUES ('143', '4', '功能点-修改', '正常', '149', '24', '腰立辉', null, '2016-08-15 15:51:57', '2016-08-15 15:51:57');
INSERT INTO `tp_func` VALUES ('144', '5', '测试用例-入口', '正常', '149', '24', '腰立辉', null, '2016-08-15 15:52:14', '2016-08-15 15:52:14');
INSERT INTO `tp_func` VALUES ('145', '6', '控件管理-入口', '正常', '149', '24', '腰立辉', null, '2016-08-15 15:52:37', '2016-08-15 15:52:37');
INSERT INTO `tp_func` VALUES ('146', '7', '数据用例-入口', '正常', '149', '24', '腰立辉', null, '2016-08-15 15:52:45', '2016-08-15 15:52:45');
INSERT INTO `tp_func` VALUES ('147', '8', '规则管理-入口', '正常', '149', '24', '腰立辉', null, '2016-08-15 15:52:58', '2016-08-15 15:52:58');
INSERT INTO `tp_func` VALUES ('148', '9', '返回-项目管理', '正常', '149', '24', '腰立辉', null, '2016-08-15 15:53:10', '2016-08-15 15:53:10');
INSERT INTO `tp_func` VALUES ('151', '3', '用例-修改', '正常', '150', '24', '腰立辉', null, '2016-08-15 17:06:23', '2016-08-15 17:06:23');
INSERT INTO `tp_func` VALUES ('152', '4', '数据用例-入口', '正常', '150', '24', '腰立辉', null, '2016-08-15 17:06:55', '2016-08-15 17:06:55');
INSERT INTO `tp_func` VALUES ('153', '5', '返回', '正常', '150', '24', '腰立辉', null, '2016-08-15 17:07:56', '2016-08-15 17:07:56');
INSERT INTO `tp_func` VALUES ('162', '2', '控件-添加', '正常', '152', '24', '腰立辉', null, '2016-08-15 17:15:33', '2016-08-15 17:15:33');
INSERT INTO `tp_func` VALUES ('161', '1', '左侧-控件列表', '正常', '152', '24', '腰立辉', null, '2016-08-15 17:15:21', '2016-08-15 17:15:21');
INSERT INTO `tp_func` VALUES ('157', '3', '控件列表', '正常', '151', '24', '腰立辉', null, '2016-08-15 17:15:00', '2016-08-15 17:12:11');
INSERT INTO `tp_func` VALUES ('158', '4', '控件-添加', '正常', '151', '24', '腰立辉', null, '2016-08-15 17:12:26', '2016-08-15 17:12:26');
INSERT INTO `tp_func` VALUES ('159', '5', '控件-修改', '正常', '151', '24', '腰立辉', null, '2016-08-15 17:12:41', '2016-08-15 17:12:41');
INSERT INTO `tp_func` VALUES ('160', '6', '返回', '正常', '151', '24', '腰立辉', null, '2016-08-15 17:12:58', '2016-08-15 17:12:58');
INSERT INTO `tp_func` VALUES ('163', '3', '控件-修改', '正常', '152', '24', '腰立辉', null, '2016-08-15 17:15:41', '2016-08-15 17:15:41');
INSERT INTO `tp_func` VALUES ('164', '4', '右侧-数据用例列表', '正常', '152', '24', '腰立辉', null, '2016-08-15 17:15:54', '2016-08-15 17:15:54');
INSERT INTO `tp_func` VALUES ('165', '5', '用例-添加', '正常', '152', '24', '腰立辉', null, '2016-08-15 17:16:11', '2016-08-15 17:16:11');
INSERT INTO `tp_func` VALUES ('166', '6', '用例-修改', '正常', '152', '24', '腰立辉', null, '2016-08-15 17:16:48', '2016-08-15 17:16:48');
INSERT INTO `tp_func` VALUES ('167', '7', '数据用例-维护', '正常', '152', '24', '腰立辉', null, '2016-08-15 17:16:59', '2016-08-15 17:16:59');
INSERT INTO `tp_func` VALUES ('168', '8', '返回', '正常', '152', '24', '腰立辉', null, '2016-08-15 17:18:07', '2016-08-15 17:18:07');
INSERT INTO `tp_func` VALUES ('169', '1', '规则列表', '正常', '153', '24', '腰立辉', null, '2016-08-15 17:18:29', '2016-08-15 17:18:29');
INSERT INTO `tp_func` VALUES ('170', '2', '规则-添加', '正常', '153', '24', '腰立辉', null, '2016-08-15 17:18:41', '2016-08-15 17:18:41');
INSERT INTO `tp_func` VALUES ('171', '3', '规则-编辑', '正常', '153', '24', '腰立辉', null, '2016-08-15 17:18:48', '2016-08-15 17:18:48');
INSERT INTO `tp_func` VALUES ('172', '4', '返回', '正常', '153', '24', '腰立辉', null, '2016-08-15 17:18:57', '2016-08-15 17:18:57');

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
) ENGINE=MyISAM AUTO_INCREMENT=154 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_path
-- ----------------------------
INSERT INTO `tp_path` VALUES ('101', '1', '登陆注销', '正常', '4', '腰立辉', null, '2016-08-11 15:36:45', '2016-08-11 15:36:45');
INSERT INTO `tp_path` VALUES ('102', '2', '首页', '正常', '4', '腰立辉', null, '2016-08-11 15:36:53', '2016-08-11 15:36:53');
INSERT INTO `tp_path` VALUES ('104', '3', '测试管理', '正常', '4', '腰立辉', null, '2016-08-11 15:36:58', '2016-08-11 15:36:58');
INSERT INTO `tp_path` VALUES ('105', '1', '登陆退出', '正常', '46', '腰立辉', '腰立辉', '2016-09-18 22:12:10', '2016-09-18 22:12:10');
INSERT INTO `tp_path` VALUES ('111', '1', '登陆注销', '正常', '1', '腰立辉', null, '2016-08-11 10:42:44', '2016-08-11 10:42:44');
INSERT INTO `tp_path` VALUES ('112', '2', '首页', '正常', '1', '腰立辉', null, '2016-08-11 10:22:42', '2016-08-11 10:22:42');
INSERT INTO `tp_path` VALUES ('113', '1', '登陆模块', '正常', '5', '腰立辉', '腰立辉', '2016-09-19 11:25:34', '2016-09-19 11:25:34');
INSERT INTO `tp_path` VALUES ('115', '2', '系统设置', '已搁置', '5', '腰立辉', '腰立辉', '2016-09-19 23:20:43', '2016-09-19 23:20:43');
INSERT INTO `tp_path` VALUES ('116', '3', '产品管理', '正常', '5', '腰立辉', null, '2016-08-15 14:30:20', '2016-08-15 14:30:20');
INSERT INTO `tp_path` VALUES ('117', '4', '产品管理-系统', '正常', '5', '腰立辉', null, '2016-08-15 14:30:35', '2016-08-15 14:30:35');
INSERT INTO `tp_path` VALUES ('118', '5', '产品管理-系统-路径', '正常', '5', '腰立辉', '腰立辉', '2016-09-19 23:18:24', '2016-09-19 23:18:24');
INSERT INTO `tp_path` VALUES ('119', '6', '产品管理-系统-路径-功能', '正常', '5', '腰立辉', null, '2016-08-15 14:31:21', '2016-08-15 14:31:21');
INSERT INTO `tp_path` VALUES ('123', '7', '项目管理', '正常', '5', '腰立辉', null, '2016-08-15 15:58:28', '2016-08-15 15:58:28');
INSERT INTO `tp_path` VALUES ('124', '8', '项目-里程碑', '正常', '5', '腰立辉', null, '2016-08-15 15:58:34', '2016-08-15 15:58:34');
INSERT INTO `tp_path` VALUES ('125', '9', '项目-里程碑-列队', '正常', '5', '腰立辉', null, '2016-08-15 15:58:39', '2016-08-15 15:58:39');
INSERT INTO `tp_path` VALUES ('126', '10', '项目-里程碑-列队-场景库', '正常', '5', '腰立辉', null, '2016-08-15 15:58:45', '2016-08-15 15:58:45');
INSERT INTO `tp_path` VALUES ('132', '11', '项目-场景', '正常', '5', '腰立辉', null, '2016-08-15 15:58:51', '2016-08-15 15:58:51');
INSERT INTO `tp_path` VALUES ('133', '12', '项目-场景-功能', '正常', '5', '腰立辉', null, '2016-08-15 15:58:57', '2016-08-15 15:58:57');
INSERT INTO `tp_path` VALUES ('134', '13', '项目-场景-功能-功能点库', '正常', '5', '腰立辉', null, '2016-08-15 15:59:04', '2016-08-15 15:59:04');
INSERT INTO `tp_path` VALUES ('135', '14', '项目-详情', '正常', '5', '腰立辉', null, '2016-08-15 17:19:20', '2016-08-15 17:19:20');
INSERT INTO `tp_path` VALUES ('136', '15', '项目-系统', '正常', '5', '腰立辉', null, '2016-08-15 17:19:25', '2016-08-15 17:19:25');
INSERT INTO `tp_path` VALUES ('137', '16', '项目-系统-关联系统', '正常', '5', '腰立辉', null, '2016-08-15 17:19:33', '2016-08-15 17:19:33');
INSERT INTO `tp_path` VALUES ('138', '17', '项目-系统-路径', '正常', '5', '腰立辉', null, '2016-08-15 17:19:40', '2016-08-15 17:19:40');
INSERT INTO `tp_path` VALUES ('139', '18', '项目-系统-路径-功能点', '正常', '5', '腰立辉', null, '2016-08-15 17:19:47', '2016-08-15 17:19:47');
INSERT INTO `tp_path` VALUES ('144', '19', '项目-功能点', '正常', '5', '腰立辉', null, '2016-08-15 17:19:54', '2016-08-15 17:19:54');
INSERT INTO `tp_path` VALUES ('149', '20', '项目-范围', '正常', '5', '腰立辉', null, '2016-08-15 17:20:06', '2016-08-15 17:20:06');
INSERT INTO `tp_path` VALUES ('150', '22', '用例管理', '正常', '5', '腰立辉', null, '2016-08-15 17:20:28', '2016-08-15 17:20:28');
INSERT INTO `tp_path` VALUES ('151', '23', '控件管理', '正常', '5', '腰立辉', null, '2016-08-15 17:21:06', '2016-08-15 17:21:06');
INSERT INTO `tp_path` VALUES ('152', '24', '数据用例', '正常', '5', '腰立辉', null, '2016-08-15 17:21:17', '2016-08-15 17:21:17');
INSERT INTO `tp_path` VALUES ('153', '25', '规则管理', '正常', '5', '腰立辉', null, '2016-08-15 17:21:26', '2016-08-15 17:21:26');

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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_product
-- ----------------------------
INSERT INTO `tp_product` VALUES ('1', '惠买车', '惠买车平台', '正常', '腰立辉', '腰立辉', '2016-09-16 22:04:58', '2016-09-16 22:04:58');
INSERT INTO `tp_product` VALUES ('2', '自动化', '自动化平台', '正常', '腰立辉', '腰立辉', '2016-09-16 22:07:52', '2016-09-16 22:07:52');
INSERT INTO `tp_product` VALUES ('5', '光大银行', '光大银行信用卡', '正常', '贾晓宁', '贾晓宁', '2016-09-17 15:16:10', '2016-09-17 15:16:10');
INSERT INTO `tp_product` VALUES ('6', 'eshop', '电子商城', '正常', '贾晓宁', '腰立辉', '2016-09-17 21:22:31', '2016-09-17 21:22:31');

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
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_program
-- ----------------------------
INSERT INTO `tp_program` VALUES ('23', 'Auto.1608.1', '测试后台二期', '2', '进行中', '2016-08-06', '2016-08-31', '岳丹丹', 'Auto', '常规', '腰立辉', '需求新增', '一般需求', '2016-08-20', '&lt;ol&gt;\r\n	&lt;li&gt;\r\n		weqwe&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ashdaksd&lt;/li&gt;\r\n	&lt;li&gt;\r\n		kasd&lt;/li&gt;\r\n&lt;/ol&gt;\r\n', '腰立辉', '腰立辉', '2016-09-13 16:47:37', '2016-09-13 16:47:37');
INSERT INTO `tp_program` VALUES ('24', 'Auto.1608.2', '测试后台一期', '2', '已完成', '2016-07-21', '2016-08-05', '岳丹丹', 'Auto', '简要', '腰立辉', '需求新增', '一般需求', '2016-08-13', '<p>\r\n	简介</p>\r\n', '腰立辉', '腰立辉', '2016-09-17 14:26:04', '2016-09-17 14:26:04');
INSERT INTO `tp_program` VALUES ('25', 'Auto.1608.3', 'yaohTest', '2', '进行中', '2016-08-01', '2016-08-31', '腰立辉', 'Auto', '简要', 'yyy', '需求新增', '一般需求', '2016-08-13', 'sadasasdahjdashdj1.yuiwqe3.hysajdu就卡萨丁', '腰立辉', '腰立辉', '2016-09-10 23:40:26', '2016-09-10 23:40:26');
INSERT INTO `tp_program` VALUES ('30', 'Auto.1608.5', 'GDCardQ3-09', '5', '进行中', '2016-08-08', '2016-08-15', '贾晓宁', 'GD', '简要', 'ddd', '需求新增', '一般需求', '2016-08-15', '', '腰立辉', '贾晓宁', '2016-09-17 15:18:56', '2016-09-17 15:18:56');
INSERT INTO `tp_program` VALUES ('40', 'Auto1609.4', 'yut', '2', '进行中', '2016-09-10', '2016-09-17', '腰立辉', 'Auto', '简要', null, '需求新增', '一般需求', '0000-00-00', null, '腰立辉', '腰立辉', '2016-09-19 23:48:27', '2016-09-19 23:48:27');
INSERT INTO `tp_program` VALUES ('41', 'Auto1609.6', 'Lyjeshop', '6', '进行中', '2016-09-14', '2016-09-21', '腰立辉', 'GD', '常规', null, '需求新增', '一般需求', '0000-00-00', null, '腰立辉', '贾晓宁', '2016-09-17 15:19:11', '2016-09-17 15:19:11');
INSERT INTO `tp_program` VALUES ('42', 'Auto1609.5', 'yrte', '1', '进行中', '2016-09-19', '2016-09-26', '腰立辉', 'Auto', '简要', null, '需求新增', '一般需求', '0000-00-00', null, '腰立辉', '腰立辉', '2016-09-19 10:28:17', '2016-09-19 10:28:17');
INSERT INTO `tp_program` VALUES ('43', 'Auto1609.6', '儿童热特任', '1', '进行中', '2016-09-19', '2016-09-26', '腰立辉', 'Auto', '简要', null, '需求新增', '一般需求', '0000-00-00', null, '腰立辉', '腰立辉', '2016-09-19 23:48:11', '2016-09-19 23:48:11');

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
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_prosys
-- ----------------------------
INSERT INTO `tp_prosys` VALUES ('46', '5', '24', '腰立辉', 'yy', '2016-09-17 20:45:41', '2016-08-11 11:21:37');
INSERT INTO `tp_prosys` VALUES ('40', '5', '23', '腰立辉', 'yy', '2016-09-17 20:45:42', '2016-08-10 11:31:16');
INSERT INTO `tp_prosys` VALUES ('43', '46', '25', '腰立辉', 'yy', '2016-09-17 20:45:43', '2016-08-10 11:32:42');
INSERT INTO `tp_prosys` VALUES ('44', '1', '30', '腰立辉', 'yy', '2016-09-17 20:45:44', '2016-08-10 16:45:18');
INSERT INTO `tp_prosys` VALUES ('47', '4', '25', '腰立辉', 'yy', '2016-09-17 20:45:47', '2016-08-14 17:47:25');
INSERT INTO `tp_prosys` VALUES ('49', '3', '42', '腰立辉', '腰立辉', '2016-09-19 10:29:36', '2016-09-19 10:29:36');
INSERT INTO `tp_prosys` VALUES ('50', '18', '42', '腰立辉', '腰立辉', '2016-09-19 10:38:15', '2016-09-19 10:38:15');

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
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_risk
-- ----------------------------
INSERT INTO `tp_risk` VALUES ('10', '1', '分派场景时，需要把场景下的场景功能，场景下的数据用例，等信息导入执行表（复制），逻辑关系较复杂短时间内很难理清', '1', '<p>\r\n	暂无方案</p>\r\n', '23', '打开', '<p>\r\n	asd</p>\r\n', '腰立辉', '腰立辉', '2016-09-14 22:42:27', '2016-09-14 22:42:27');
INSERT INTO `tp_risk` VALUES ('5', '1', '不涉及页面，只会套用模板，交互会是严重问题', 'B', '<p>\r\n	暂无方案</p>\r\n', '24', '打开', '', '腰立辉', '腰立辉', '2016-09-17 16:26:28', '2016-09-17 16:26:28');
INSERT INTO `tp_risk` VALUES ('12', '2', 'werw', '3', '<ul>\r\n	<li>\r\n		asd</li>\r\n	<li>\r\n		hjsad</li>\r\n	<li>\r\n		jsa</li>\r\n</ul>\r\n', '24', '关闭', '<p>\r\n	asdad<span style=\"color: rgb(255, 0, 0);\">asda</span></p>\r\n', '腰立辉', '腰立辉', '2016-09-14 22:45:51', '2016-09-14 22:45:51');
INSERT INTO `tp_risk` VALUES ('14', '2', '也让她而', 'C', '<p>\r\n	暂无方案</p>\r\n', '23', '打开', '', '腰立辉', '腰立辉', '2016-09-19 23:54:13', '2016-09-19 23:54:13');
INSERT INTO `tp_risk` VALUES ('15', '1', '从中选出', 'C', '<p>\r\n	暂无方案</p>\r\n', '40', '打开', '<p>\r\n	阿萨德撒</p>\r\n', '腰立辉', '腰立辉', '2016-09-19 23:54:58', '2016-09-19 23:54:58');

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
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_rules
-- ----------------------------
INSERT INTO `tp_rules` VALUES ('1', '1', '1111', null, '1', '正常', null, null, '腰立辉', null, '2016-08-08 21:17:41', '2016-06-29 10:32:30');
INSERT INTO `tp_rules` VALUES ('2', '2', '23235435', '需求文档', '2', '正常', null, null, '腰立辉', null, '2016-08-08 21:17:43', '2016-06-29 10:49:41');
INSERT INTO `tp_rules` VALUES ('3', '3', '2224', '需求文档', '3', '正常', null, null, '腰立辉', null, '2016-08-08 21:17:47', '2016-06-29 11:08:28');
INSERT INTO `tp_rules` VALUES ('4', '1', '系统登录', '需求文档', '4', '待确定', null, null, '腰立辉', null, '2016-08-08 21:17:49', '2016-06-30 09:06:28');
INSERT INTO `tp_rules` VALUES ('5', '1', '包含有用例数为0的场景，必须重新选择场景用例后才可执行自动化测试', '需求文档', '5', '正常', null, null, '腰立辉', null, '2016-08-08 21:17:51', '2016-06-30 09:27:40');
INSERT INTO `tp_rules` VALUES ('6', '1', '场景的用例数为0，不允许查看', '需求文档', '6', '正常', null, null, '腰立辉', null, '2016-08-08 21:17:53', '2016-06-30 09:28:13');
INSERT INTO `tp_rules` VALUES ('8', '5', '添加了控件的窗口属性1', '需求文档', '7', '正常', null, null, '腰立辉', null, '2016-08-08 23:44:03', '2016-08-08 23:44:03');
INSERT INTO `tp_rules` VALUES ('9', '2', '111111111111111111111111', '需求文档', '6', '正常', null, null, '腰立辉', null, '2016-08-08 23:50:26', '2016-08-08 23:50:26');
INSERT INTO `tp_rules` VALUES ('10', '3', 'easdasd', '需求文档', '9', '正常', null, null, '腰立辉', null, '2016-08-11 16:24:43', '2016-08-08 22:34:57');
INSERT INTO `tp_rules` VALUES ('12', '5', 'asda', '需求文档', '9', '正常', null, null, '腰立辉', null, '2016-08-11 16:24:52', '2016-08-08 22:41:06');
INSERT INTO `tp_rules` VALUES ('16', '121', null, '需求文档', '21', '正常', null, null, '腰立辉', null, '2016-08-12 16:45:51', '2016-08-12 16:45:51');
INSERT INTO `tp_rules` VALUES ('30', '1', 'asdaS', '需求文档', '17', '正常', '42', '<p>\r\n	as</p>\r\n', '腰立辉', '腰立辉', '2016-09-19 15:06:33', '2016-09-19 15:06:33');
INSERT INTO `tp_rules` VALUES ('18', '2', '333', '需求文档', '16', '正常', null, null, '腰立辉', null, '2016-08-15 10:41:54', '2016-08-15 10:41:54');
INSERT INTO `tp_rules` VALUES ('19', '3', '3', '需求文档', '16', '正常', null, null, '腰立辉', null, '2016-08-15 10:29:00', '2016-08-15 10:29:00');
INSERT INTO `tp_rules` VALUES ('20', '4', '444', '需求文档', '16', '正常', null, null, '腰立辉', null, '2016-08-15 10:51:14', '2016-08-15 10:51:14');
INSERT INTO `tp_rules` VALUES ('21', '5', '5', '需求文档', '16', '正常', null, null, '腰立辉', null, '2016-08-15 10:51:30', '2016-08-15 10:51:30');
INSERT INTO `tp_rules` VALUES ('22', '6', 'qweqw', '需求文档', '16', '正常', null, null, '腰立辉', null, '2016-08-15 11:17:44', '2016-08-15 11:17:44');
INSERT INTO `tp_rules` VALUES ('23', '7', '12', '需求文档', '16', '正常', null, null, '腰立辉', null, '2016-08-15 11:23:50', '2016-08-15 11:23:50');
INSERT INTO `tp_rules` VALUES ('24', '8', '11', '需求文档', '16', '正常', null, null, '腰立辉', null, '2016-08-15 11:29:02', '2016-08-15 11:29:02');
INSERT INTO `tp_rules` VALUES ('25', '9', 'wew', '需求文档', '16', '正常', null, null, '腰立辉', null, '2016-08-15 11:29:24', '2016-08-15 11:29:24');
INSERT INTO `tp_rules` VALUES ('26', '10', '121111', '需求文档', '16', '正常', null, null, '腰立辉', null, '2016-08-15 11:35:28', '2016-08-15 11:35:28');
INSERT INTO `tp_rules` VALUES ('29', '11', 'yehkashdk', 'jkasdaoisud', '16', '正常', '42', '<ol>\r\n	<li>\r\n		asjdklas</li>\r\n	<li>\r\n		kashdka</li>\r\n	<li>\r\n		jklasjd</li>\r\n</ol>\r\n', '腰立辉', '腰立辉', '2016-09-19 15:06:10', '2016-09-19 15:06:10');

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
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_scene
-- ----------------------------
INSERT INTO `tp_scene` VALUES ('43', '1', null, '3', '车顾问', '当下', 'cheguwen.com', '提用户下单', '正常', '24', '11-wqej-qweq-qqqq', '0', '腰立辉', '腰立辉', '2016-09-15 00:13:33', '2016-09-15 00:13:33');
INSERT INTO `tp_scene` VALUES ('45', '1', null, '2', '测试人员', '1', 'http://192.168.43.61:81/test/brotest/admin.php', '正常登录退出', '正常', '25', '登录-退出', '0', '腰立辉', null, '2016-08-08 15:26:17', '2016-08-08 15:26:17');
INSERT INTO `tp_scene` VALUES ('46', '2', null, '2', '测试人员', '项目初期', 'http://192.168.43.61:81/test/brotest/admin.php', '录入项目信息', '正常', '25', '登录-新建项目-退出', '0', '腰立辉', '腰立辉', '2016-09-17 15:54:30', '2016-09-17 15:54:30');
INSERT INTO `tp_scene` VALUES ('47', '1', null, '2', '123', '123', '123', '123', '正常', '23', '11-wqej-qweq-qqqq', '0', '腰立辉', null, '2016-08-14 19:08:23', '2016-08-14 19:08:23');
INSERT INTO `tp_scene` VALUES ('48', '2', null, '1', 'hsdf', '当下', null, 'asd', '正常', '24', '', '0', '腰立辉', '腰立辉', '2016-09-15 00:18:39', '2016-09-15 00:14:59');
INSERT INTO `tp_scene` VALUES ('49', '3', null, '1', 'xda', '当下', null, 'asddd', '正常', '24', null, '0', '腰立辉', '腰立辉', '2016-09-15 00:18:36', '2016-09-15 00:15:16');
INSERT INTO `tp_scene` VALUES ('50', '2', null, '1', 'hsdf121', '当下', null, 'asd', '正常', '24', '', '0', '腰立辉', '腰立辉', '2016-09-15 00:20:00', '2016-09-15 00:20:00');

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
  `adder` varchar(10) DEFAULT NULL,
  `moder` varchar(10) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updateTime` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_scenefunc
-- ----------------------------
INSERT INTO `tp_scenefunc` VALUES ('1', '1', '1', '45', '腰立辉', '333', '0', null, null, '2016-08-11 23:32:34', '2016-08-11 23:32:34');
INSERT INTO `tp_scenefunc` VALUES ('2', '2', '4', '45', '腰立辉', '222', '0', null, null, '2016-08-11 21:55:52', '0000-00-00 00:00:00');

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
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_stage
-- ----------------------------
INSERT INTO `tp_stage` VALUES ('1', '1', '测试计划', '23', '2016-08-05', '2016-08-08', '已完成', '无文档', '腰立辉', '腰立辉', '2016-09-17 16:15:56', '2016-09-17 16:15:56');
INSERT INTO `tp_stage` VALUES ('2', '2', '用例编写', '23', '2016-08-06', '2016-08-08', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-17 16:15:59', '2016-09-17 16:15:59');
INSERT INTO `tp_stage` VALUES ('3', '3', '第一轮测试', '23', '2016-08-08', '2016-08-10', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-17 16:16:02', '2016-09-17 16:16:02');
INSERT INTO `tp_stage` VALUES ('4', '1', '测试计划', '24', '2016-08-07', '2016-08-09', '未开始', '测试计划', '腰立辉', '腰立辉', '2016-09-17 16:14:29', '2016-09-17 16:14:29');
INSERT INTO `tp_stage` VALUES ('5', '2', '测试用例编写', '24', '2016-08-07', '2016-08-09', '未开始', '测试用例', '腰立辉', '腰立辉', '2016-09-17 16:14:35', '2016-09-17 16:14:35');
INSERT INTO `tp_stage` VALUES ('6', '1', '产品设计', '25', '2016-08-07', '2016-08-09', '已完成', '无文档', '腰立辉', '腰立辉', '2016-09-17 16:16:18', '2016-09-17 16:16:18');
INSERT INTO `tp_stage` VALUES ('8', '2', '第一轮测试', '25', '2016-08-08', '2016-08-10', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-17 16:16:22', '2016-09-17 16:16:22');
INSERT INTO `tp_stage` VALUES ('9', '1', '测试计划', '30', '2016-08-08', '2016-08-10', '未开始', '1', '腰立辉', '腰立辉', '2016-09-14 21:37:46', '2016-09-14 21:37:46');
INSERT INTO `tp_stage` VALUES ('10', '2', '测试用例', '30', '2016-08-11', '2016-08-12', '未开始', '1', '腰立辉', '腰立辉', '2016-09-14 21:37:51', '2016-09-14 21:37:51');
INSERT INTO `tp_stage` VALUES ('11', '3', '第一轮测试', '30', '2016-08-12', '2016-08-14', '未开始', '1', '腰立辉', '腰立辉', '2016-09-14 21:37:56', '2016-09-14 21:37:56');
INSERT INTO `tp_stage` VALUES ('12', '4', '第二轮测试', '30', '2016-08-15', '2016-08-18', '未开始', '1', '腰立辉', '腰立辉', '2016-09-14 21:38:02', '2016-09-14 21:38:02');
INSERT INTO `tp_stage` VALUES ('13', '5', '线上验证', '30', '2016-08-19', '2016-08-20', '未开始', '1', '腰立辉', '腰立辉', '2016-09-14 21:38:08', '2016-09-14 21:38:08');
INSERT INTO `tp_stage` VALUES ('18', '3', '第二轮测试', '25', '2016-08-10', '2016-08-12', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-17 16:16:25', '2016-09-17 16:16:25');
INSERT INTO `tp_stage` VALUES ('19', '4', '第三轮测试', '25', '2016-08-10', '2016-08-12', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-17 16:16:32', '2016-09-17 16:16:32');
INSERT INTO `tp_stage` VALUES ('20', '5', '线上验证', '25', '2016-08-11', '2016-08-12', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-17 16:16:34', '2016-09-17 16:16:34');
INSERT INTO `tp_stage` VALUES ('23', '4', '第二轮测试', '23', '2016-09-14', '2016-09-15', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-17 16:16:05', '2016-09-17 16:16:05');
INSERT INTO `tp_stage` VALUES ('25', '3', '第一轮测试', '24', '2016-09-17', '2016-09-18', '未开始', 'BUG分析报告', '腰立辉', '腰立辉', '2016-09-17 16:13:44', '2016-09-17 16:13:44');

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
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_system
-- ----------------------------
INSERT INTO `tp_system` VALUES ('1', 'App.CGW', '车顾问App', '已搁置', '1', null, null, null, '18800000007', '111111', '腰立辉', '腰立辉', '2016-09-13 13:43:38', '2016-09-13 13:43:38');
INSERT INTO `tp_system` VALUES ('3', 'APP.HMC', '惠买车APP', '正常', '1', null, null, null, null, null, null, null, '2016-08-05 22:44:14', '2016-05-23 11:39:51');
INSERT INTO `tp_system` VALUES ('4', 'Auto.Access', 'Access客户端', '正常', '2', null, 'V1.10', '192.168.43.61：easypass', '姓名', '123456', '腰立辉', null, '2016-08-12 15:50:00', '2016-08-12 15:50:00');
INSERT INTO `tp_system` VALUES ('5', 'Auto.Main', '自动化后台', '正常', '2', null, 'V1.00', 'http://192.168.84.22:8017/main/index', 'yaolh', '888888', '腰立辉', null, '2016-08-12 15:49:45', '2016-08-12 15:49:45');
INSERT INTO `tp_system` VALUES ('6', 'Dealer.hmc', '惠买车商家版', '正常', '1', null, null, null, null, null, null, null, '2016-08-05 22:44:18', '2016-05-27 11:22:21');
INSERT INTO `tp_system` VALUES ('7', 'H5.CheGW', '车顾问H5', '已搁置', '1', null, null, null, null, null, null, '腰立辉', '2016-09-13 13:43:59', '2016-09-13 13:43:59');
INSERT INTO `tp_system` VALUES ('8', 'OP.Brker', 'OP经纪人业务平台', '已搁置', '1', null, null, null, '域账号', null, null, '腰立辉', '2016-09-13 13:44:08', '2016-09-13 13:44:08');
INSERT INTO `tp_system` VALUES ('9', 'OP.Check', 'OP经纪人结算系统', '正常', '1', null, null, null, '域账号', null, null, null, '2016-08-05 22:44:24', '2016-04-18 17:25:56');
INSERT INTO `tp_system` VALUES ('10', 'OP.Counselor', 'OP买车顾问管理后台', '正常', '1', null, null, null, '域账号', null, null, null, '2016-08-05 22:44:26', '2016-03-25 17:26:40');
INSERT INTO `tp_system` VALUES ('11', 'OP.CRM', 'OP惠买车电商CRM', '正常', '1', null, null, null, '域账号', null, null, null, '2016-08-05 22:44:27', '2016-03-25 17:16:03');
INSERT INTO `tp_system` VALUES ('12', 'OP.DealerCRM', 'OP惠买车商家运营系统', '正常', '1', null, null, null, '域账号', null, null, null, '2016-08-05 22:44:29', '2016-03-25 17:26:26');
INSERT INTO `tp_system` VALUES ('13', 'OP.DealerOP', 'OP经销商信息管理', '正常', '1', null, null, null, '域账号', null, null, null, '2016-08-05 22:44:31', '2016-03-25 17:26:47');
INSERT INTO `tp_system` VALUES ('14', 'OP.Deposit', 'OP惠买车商家订金管理系统', '正常', '1', null, null, null, '域账号', null, null, null, '2016-08-05 22:44:32', '2016-03-25 17:26:11');
INSERT INTO `tp_system` VALUES ('15', 'OP.Gift', 'OP买车网礼品管理后台', '正常', '1', null, null, null, '域账号', null, null, null, '2016-08-05 22:44:34', '2016-03-25 17:34:14');
INSERT INTO `tp_system` VALUES ('16', 'OP.Giftop', 'OP惠买车礼品管理系统', '正常', '1', null, null, null, '域账号', null, null, null, '2016-08-05 22:44:38', '2016-03-25 17:32:37');
INSERT INTO `tp_system` VALUES ('17', 'OP.Groupon', 'OP团购管理后台', '正常', '1', null, null, null, '域账号', null, null, null, '2016-08-05 22:44:41', '2016-03-25 17:27:05');
INSERT INTO `tp_system` VALUES ('18', 'OP.HMCcrm', 'OP惠买车CRM', '正常', '1', null, null, null, '域账号', null, null, null, '2016-08-05 22:44:43', '2016-05-19 10:40:17');
INSERT INTO `tp_system` VALUES ('19', 'OP.HmcCrmOp', 'OP惠买车电商CRM后台管理系统', '正常', '1', null, null, null, '域账号', null, null, null, '2016-08-05 22:44:45', '2016-05-12 17:18:02');
INSERT INTO `tp_system` VALUES ('20', 'OP.Ipayment', 'OP惠买车支付管理系统', '正常', '1', null, null, null, '域账号', null, null, null, '2016-08-05 22:44:50', '2016-03-25 17:33:00');
INSERT INTO `tp_system` VALUES ('21', 'OP.Security', 'OP权限系统', '正常', '1', null, null, null, '域账号', null, null, null, '2016-08-05 22:44:52', '2016-03-25 17:04:43');
INSERT INTO `tp_system` VALUES ('22', 'OP.User', 'OP惠买车用户管理系统', '正常', '1', null, null, null, '域账号', null, null, null, '2016-08-05 22:44:53', '2016-03-25 17:32:45');
INSERT INTO `tp_system` VALUES ('23', 'Web.hmc', '惠买车', '正常', '1', null, null, null, null, null, null, '腰立辉', '2016-09-13 13:35:06', '2016-09-13 13:35:06');
INSERT INTO `tp_system` VALUES ('46', 'yao.tpTest', '测试管理平台', '正常', '2', '暂无', 'V1.00', 'http://192.168.43.61:81/tpTest/admin.php', 'yaolh', '654321', '腰立辉', '腰立辉', '2016-09-13 11:57:50', '2016-09-13 11:57:50');
INSERT INTO `tp_system` VALUES ('49', '1231', '12312', '正常', null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-09-13 11:07:56', '0000-00-00 00:00:00');
INSERT INTO `tp_system` VALUES ('50', '戚薇', 'QWEQW', '正常', null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-09-13 11:10:14', '0000-00-00 00:00:00');
INSERT INTO `tp_system` VALUES ('52', 'Bro.eshop', 'Eshop电子商城11', '正常', '6', null, null, null, null, null, '腰立辉', '腰立辉', '2016-09-17 21:22:07', '2016-09-17 21:22:07');

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
INSERT INTO `tp_user` VALUES ('1', 'caoyf', '曹玉芳', '57dbd1e1aaa48', 'e10adc3949ba59abbe56e057f20f883e', '在职', '0', '惠买车-产品研发中心-质量管理部', 'OP', '', '', 'caoyf@yiche.com', '测试工程师', null, '腰立辉', '2016-09-16 19:05:05', '2016-09-16 19:05:05');
INSERT INTO `tp_user` VALUES ('2', 'gaoxq', '高小欠', null, 'e10adc3949ba59abbe56e057f20f883e', '在职', '5945', '惠买车-产品研发中心-质量管理部', 'C', '15011217715', null, 'gaoxq@bitauto.com', '高级测试经理', null, null, '2016-09-12 11:34:16', null);
INSERT INTO `tp_user` VALUES ('3', 'guopp', '郭佩佩', null, 'e10adc3949ba59abbe56e057f20f883e', '在职', null, '惠买车-产品研发中心-质量管理部', 'B', null, null, null, '测试工程师', null, null, '2016-09-12 11:34:14', null);
INSERT INTO `tp_user` VALUES ('11', 'yaolh', '腰立辉', '57dcf1cd1186b.jpeg', 'c33367701511b4f6020ec61ded352059', '在职', '6270', '惠买车-产品研发中心-质量管理部', 'Auto', '18801043607', '', 'yaolh@yiche.com', '高级测试经理', '腰立辉', '腰立辉', '2016-09-17 15:33:33', '2016-09-17 15:33:33');
INSERT INTO `tp_user` VALUES ('5', 'kongy', '孔洋', null, 'e10adc3949ba59abbe56e057f20f883e', '在职', '8028', '惠买车-产品研发中心-质量管理部', 'OP', '13641171889', null, 'kongy@bitauto.com', '高级测试工程师', null, null, '2016-09-12 11:34:09', null);
INSERT INTO `tp_user` VALUES ('6', 'lixm', '李小梅', null, 'e10adc3949ba59abbe56e057f20f883e', '在职', null, '惠买车-产品研发中心-质量管理部', 'OP', null, null, null, '测试工程师', null, null, '2016-09-12 11:34:06', null);
INSERT INTO `tp_user` VALUES ('8', 'mengjl', '孟军良', null, '56ea27eb053fcaec7486bd0ed849edd4', '在职', '5714', '惠买车-产品研发中心-质量管理部', 'Auto', '13717659790', '', 'mengjl@bitauto.com', '质量总监', null, '腰立辉', '2016-09-12 15:16:06', '2016-09-12 15:16:06');
INSERT INTO `tp_user` VALUES ('9', 'shidd', '师冬冬', '57dbd514327b0', 'e10adc3949ba59abbe56e057f20f883e', '在职', '0', '惠买车-产品研发中心-质量管理部', 'C', '', '', '', '测试工程师', null, '腰立辉', '2016-09-16 19:18:44', '2016-09-16 19:18:44');
INSERT INTO `tp_user` VALUES ('10', 'tianl', '田亮', '57dbd0a83672e', 'e10adc3949ba59abbe56e057f20f883e', '在职', '6851', '惠买车-产品研发中心-质量管理部', 'B', '15811407311', '', 'tianl@bitauto.com', '测试工程师', '腰立辉', '腰立辉', '2016-09-16 18:59:52', '2016-09-16 18:59:52');
INSERT INTO `tp_user` VALUES ('20', 'jiaxn', '贾晓宁', '57dcf829176a1.jpeg', 'e10adc3949ba59abbe56e057f20f883e', '在职', '2131', '惠买车-产品研发中心-质量管理部', 'GD', '', '', 'jiaxn@yiche.com', '初级测试工程师', null, '腰立辉', '2016-09-17 16:00:41', '2016-09-17 16:00:41');
