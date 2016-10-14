/*
Navicat MySQL Data Transfer

Source Server         : 43.61:3307
Source Server Version : 50532
Source Host           : localhost:3307
Source Database       : tptest

Target Server Type    : MYSQL
Target Server Version : 50532
File Encoding         : 65001

Date: 2016-10-14 19:06:09
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
  `remarks` varchar(300) DEFAULT NULL,
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
) ENGINE=MyISAM AUTO_INCREMENT=10103 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_case
-- ----------------------------
INSERT INTO `tp_case` VALUES ('10000', '1', '', '正常登陆', '', '登入系统，并显示用户姓名', '正常', '45', '10000', '产品库', null, '腰立辉', '腰立辉', '2016-10-14 10:13:49', '2016-10-14 10:13:49', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10001', '2', null, '用户名不存在', '', '报错', '正常', '45', '10000', '产品库', null, '腰立辉', '腰立辉', '2016-09-22 14:33:33', '2016-09-22 14:33:33', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10002', '1', null, '正常注销', '', '登出系统', '正常', '45', '10001', '产品库', null, '腰立辉', '腰立辉', '2016-09-22 14:36:58', '2016-09-22 14:36:58', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10003', '1', null, '正常添加测试产品', '', '添加成功', '正常', '45', '10003', '产品库', null, '腰立辉', '腰立辉', '2016-09-22 15:58:46', '2016-09-22 15:58:46', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10004', '2', null, '产品名为空', '', '添加失败', '正常', '45', '10003', '产品库', null, '腰立辉', '腰立辉', '2016-09-22 15:59:04', '2016-09-22 15:59:04', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10005', '3', null, '产品简称为空', '', '添加失败', '正常', '45', '10003', '产品库', null, '腰立辉', '腰立辉', '2016-09-22 15:59:18', '2016-09-22 15:59:18', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10006', '4', null, '产品名重复', '', '添加失败', '正常', '45', '10003', '产品库', null, '腰立辉', '腰立辉', '2016-09-22 15:59:40', '2016-09-22 15:59:40', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10007', '5', null, '产品简称重复', '', '添加失败', '正常', '45', '10003', '产品库', null, '腰立辉', '腰立辉', '2016-09-22 16:01:18', '2016-09-22 16:01:18', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10008', '1', '2', '添加车型，不配置买顾和电销', '', '添加成功', '正常', '46', '10206', '产品库', null, '腰立辉', '腰立辉', '2016-09-28 10:24:49', '2016-09-28 10:09:16', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10009', '2', '2', '添加车型，配置买顾不配置电销', '', '添加成功', '正常', '46', '10206', '产品库', null, '腰立辉', '腰立辉', '2016-09-28 10:24:52', '2016-09-28 10:09:54', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10010', '3', '2', '添加车型，配置电销不配置买顾', '', '添加成功', '正常', '46', '10206', '产品库', null, '腰立辉', '腰立辉', '2016-09-28 10:24:54', '2016-09-28 10:10:18', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10011', '4', '2', '添加车型，不勾选车型', '', '添加失败', '正常', '46', '10206', '产品库', null, '腰立辉', '腰立辉', '2016-09-28 10:24:56', '2016-09-28 10:10:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10012', '1', '2', '查看车型报价配置表', '', '查到相关配置表', '正常', '46', '10201', '产品库', '', '腰立辉', '腰立辉', '2016-09-28 16:03:42', '2016-09-28 11:48:55', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10013', '1', '2', '选择已配置车型的城市', '', '查到相关配置表', '正常', '46', '10202', '产品库', null, '腰立辉', '腰立辉', '2016-09-28 10:30:55', '2016-09-28 10:30:55', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10014', '2', '2', '选择未配置的城市', '', '配置表为空', '正常', '46', '10202', '产品库', null, '腰立辉', '腰立辉', '2016-09-28 10:31:21', '2016-09-28 10:31:21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10015', '1', '2', '选择买顾配置状态查询', '', '查询到结果', '正常', '46', '10203', '产品库', null, '腰立辉', '腰立辉', '2016-09-28 10:48:28', '2016-09-28 10:48:28', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10016', '1', '2', '按电销配置状态查询', '', '查询到结果', '正常', '46', '10204', '产品库', null, '腰立辉', '腰立辉', '2016-09-28 10:48:55', '2016-09-28 10:48:55', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10017', '1', '2', '不选主品牌查询', '', '查到所有相关', '正常', '46', '10205', '产品库', null, '腰立辉', '腰立辉', '2016-09-28 11:49:49', '2016-09-28 11:49:49', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10018', '2', '2', '选择主品牌，不选品牌', '', '查到所有相关', '正常', '46', '10205', '产品库', null, '腰立辉', '腰立辉', '2016-09-28 11:49:53', '2016-09-28 11:49:53', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10019', '3', '2', '选择主品牌，品牌不选车型', '', '查出该品牌下的符合条件的车款', '正常', '46', '10205', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:19:28', '2016-10-09 15:19:28', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10020', '4', '2', '选择主品牌，品牌，车型', '', '查出符合条件的车款', '正常', '46', '10205', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:19:41', '2016-10-09 15:19:41', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10021', '1', '2', '全选-批量配置买顾', '', '配置成功', '正常', '46', '10207', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:19:58', '2016-10-09 15:19:58', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10022', '2', '2', '不选-批量配置买顾', '', '报错', '正常', '46', '10207', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:20:07', '2016-10-09 15:20:07', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10023', '1', '2', '全选-批量配置电销', '', '配置成功', '正常', '46', '10208', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:20:35', '2016-10-09 15:20:35', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10024', '2', '2', '不选-批量配置电销', '', '报错', '正常', '46', '10208', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:20:43', '2016-10-09 15:20:43', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10025', '3', '2', '选单个-批量配置电销', '', '配置成功', '正常', '46', '10208', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:20:53', '2016-10-09 15:20:53', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10026', '4', '2', '选多个-批量配置电销', '', '配置成功', '正常', '46', '10208', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:21:00', '2016-10-09 15:21:00', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10027', '3', '2', '选单个-批量配置买顾', '', '配置成功', '正常', '46', '10207', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:20:19', '2016-10-09 15:20:19', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10028', '4', '2', '选多个-批量配置买顾', '', '配置成功', '正常', '46', '10207', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:20:28', '2016-10-09 15:20:28', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10029', '1', '2', '取消全部车型', '', '报错', '正常', '46', '10209', '产品库', null, '腰立辉', '腰立辉', '2016-09-28 10:57:46', '2016-09-28 10:57:46', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10030', '2', '2', '修改车型', '', '修改成功', '正常', '46', '10209', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:21:22', '2016-10-09 15:21:22', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10031', '3', '2', '修改买顾', '', '修改成功', '正常', '46', '10209', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:21:28', '2016-10-09 15:21:28', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10032', '4', '2', '修改电销', '', '修改成功', '正常', '46', '10209', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:21:34', '2016-10-09 15:21:34', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10033', '1', '2', '置空勾选', '', '报错', '正常', '46', '10210', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:21:43', '2016-10-09 15:21:43', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10034', '2', '2', '更换买顾', '', '修改成功', '正常', '46', '10210', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:21:58', '2016-10-09 15:21:58', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10035', '3', '2', '勾选多个买顾', '', '修改成功', '正常', '46', '10210', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:22:04', '2016-10-09 15:22:04', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10036', '1', '2', '置空电销', '', '报错', '正常', '46', '10211', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:22:13', '2016-10-09 15:22:13', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10037', '2', '2', '更换电销', '', '修改成功', '正常', '46', '10211', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:22:20', '2016-10-09 15:22:20', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10038', '3', '2', '不做修改，直接保存', '', '报错', '正常', '46', '10211', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:22:32', '2016-10-09 15:22:32', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10039', '1', '2', '查看车型价格库', '', '打开车型价格列表', '正常', '46', '10221', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:23:00', '2016-10-09 15:23:00', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10040', '1', '2', '选择已添加配置车款的城市', '', '有结果', '正常', '46', '10222', '产品库', null, '腰立辉', '腰立辉', '2016-09-28 11:08:57', '2016-09-28 11:08:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10041', '2', '2', '选择未配置车款的城市', '', '无结果', '正常', '46', '10222', '产品库', null, '腰立辉', '腰立辉', '2016-09-28 11:09:11', '2016-09-28 11:09:11', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10042', '1', '2', '选择全部', '', '显示符合条件的车型价格', '正常', '46', '10223', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:23:35', '2016-10-09 15:23:35', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10043', '2', '2', '选择有效', '', '显示符合条件的车型价格', '正常', '46', '10223', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:23:41', '2016-10-09 15:23:41', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10044', '3', '2', '选择已过期', '', '显示符合条件的车型价格', '正常', '46', '10223', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:23:47', '2016-10-09 15:23:47', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10045', '1', '2', '不选择主品牌', '', '报错', '正常', '46', '10224', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:23:57', '2016-10-09 15:23:57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10046', '2', '2', '选择主品牌，不选择品牌', '', '报错', '正常', '46', '10224', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:24:05', '2016-10-09 15:24:05', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10047', '3', '2', '选择主品牌，品牌，不选择车款', '', '显示符合条件的车型价格', '正常', '46', '10224', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:24:14', '2016-10-09 15:24:14', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10048', '4', '2', '选全主品牌，品牌和车款', '', '显示符合条件的车型价格', '正常', '46', '10224', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:24:21', '2016-10-09 15:24:21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10049', '1', '2', '设置要显示的列', '', '添加成功，显示新添加的列', '正常', '46', '10226', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:30:20', '2016-10-09 15:30:20', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10050', '2', '2', '取消已显示的列', '', '移除成功，不再显示新移除的列', '正常', '46', '10226', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:30:42', '2016-10-09 15:30:42', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10051', '1', '2', '添加车款价格', '', '打开车款配置的常规页面', '正常', '46', '10225', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:25:38', '2016-10-09 15:25:38', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10052', '1', '2', '查看买顾业务收集表', '', '显示买顾负责车款报价情况', '正常', '46', '10212', '产品库', 'yyy', '腰立辉', '腰立辉', '2016-10-10 13:49:45', '2016-10-09 15:14:31', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10053', '1', '2', '选择城市查询', '', '查到对应城市的买顾', '正常', '46', '10213', '产品库', null, '腰立辉', '腰立辉', '2016-10-08 15:57:07', '2016-10-08 15:57:07', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10054', '1', '2', '不选城市，先选买顾', '', '提示“先选城市”', '正常', '46', '10214', '产品库', null, '腰立辉', '腰立辉', '2016-10-08 15:57:40', '2016-10-08 15:57:40', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10055', '2', '2', '选择城市后，再选买顾，查询', '', '查到对应买顾的单条数据', '正常', '46', '10214', '产品库', null, '腰立辉', '腰立辉', '2016-10-08 15:59:15', '2016-10-08 15:59:15', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10056', '1', '2', '点击买顾名字', '', '进入该买顾负责的车款报价列表', '正常', '46', '10215', '产品库', null, '腰立辉', '腰立辉', '2016-10-08 16:00:39', '2016-10-08 16:00:39', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10057', '1', '2', '点击未报价的车款数（为0时）', '', '不允许进入如“提示没有需要报价的车款”', '正常', '46', '10216', '产品库', null, '腰立辉', '腰立辉', '2016-10-08 16:02:20', '2016-10-08 16:02:20', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10058', '2', '2', '点击未报价的车款数（不为0时）', '', '显示买顾负责，未报价的车款列表', '正常', '46', '10216', '产品库', null, '腰立辉', '腰立辉', '2016-10-08 16:07:24', '2016-10-08 16:07:24', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10059', '1', '2', '点击顾问过期车款数（为0时）', '', '不允许进入（提示没有过期车款）', '正常', '46', '10217', '产品库', null, '腰立辉', '腰立辉', '2016-10-08 16:15:06', '2016-10-08 16:15:06', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10060', '2', '2', '点击顾问过期车款数（不为0时）', '', '进入顾问负责的车款过期价格列表', '正常', '46', '10217', '产品库', null, '腰立辉', '腰立辉', '2016-10-08 16:24:17', '2016-10-08 16:24:17', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10061', '1', '2', '在顾问车款明细列表，选择城市查询', '', '取消顾问的限制，显示该城市下所有的', '正常', '46', '10218', '产品库', null, '腰立辉', '腰立辉', '2016-10-08 16:25:50', '2016-10-08 16:25:50', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10062', '1', '2', '只选主品牌', '', '显示符合条件的所有', '正常', '46', '10219', '产品库', null, '腰立辉', '腰立辉', '2016-10-08 16:32:45', '2016-10-08 16:32:45', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10063', '2', '2', '不选车款', '', '显示符合条件的所有', '正常', '46', '10219', '产品库', null, '腰立辉', '腰立辉', '2016-10-08 16:33:09', '2016-10-08 16:33:09', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10064', '3', '2', '选择主品牌，品牌车款', '', '显示符合条件的所有', '正常', '46', '10219', '产品库', null, '腰立辉', '腰立辉', '2016-10-08 16:34:01', '2016-10-08 16:34:01', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10065', '1', '2', '选择全部（默认）查询', '', '显示全部状态', '正常', '46', '10220', '产品库', null, '腰立辉', '腰立辉', '2016-10-08 16:34:48', '2016-10-08 16:34:48', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10066', '2', '2', '选择“有效”', '', '查询后，显示有效报价', '正常', '46', '10220', '产品库', null, '腰立辉', '腰立辉', '2016-10-09 15:06:29', '2016-10-09 15:06:29', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10067', '3', '2', '选择“已过期”', '', '查询后，显示已过期报价', '正常', '46', '10220', '产品库', null, '腰立辉', '腰立辉', '2016-10-09 15:06:44', '2016-10-09 15:06:44', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10068', '4', '2', '选择“待提交”', '', '查询后，显示待提交报价', '正常', '46', '10220', '产品库', null, '腰立辉', '腰立辉', '2016-10-09 15:07:03', '2016-10-09 15:07:03', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10069', '1', '2', '查看即将过期的车款列表', '', '显示即将过期的车款价格列表', '正常', '46', '10227', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:38:42', '2016-10-09 15:38:42', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10070', '1', '2', '不填信息【提交】', '', '报错', '正常', '46', '10244', '产品库', null, '腰立辉', '腰立辉', '2016-10-09 15:07:50', '2016-10-09 15:07:50', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10071', '2', '2', '只选主品牌【提交】', '', '提示“选择车型品牌”', '正常', '46', '10240', '产品库', null, '腰立辉', '腰立辉', '2016-10-09 10:59:59', '2016-10-08 17:09:53', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10072', '3', '1', '正常报价', '', '提交成功', '正常', '46', '10244', '产品库', null, '腰立辉', '腰立辉', '2016-10-09 11:00:07', '2016-10-08 17:37:00', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10073', '4', '2', '不选报价商家', '', '报错', '正常', '46', '10244', '产品库', null, '腰立辉', '腰立辉', '2016-10-09 11:00:57', '2016-10-08 17:37:22', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10074', '5', '2', '不选价格有效期', '', '报错', '正常', '46', '10244', '产品库', null, '腰立辉', '腰立辉', '2016-10-09 11:01:08', '2016-10-08 17:37:42', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10075', '6', '2', '不选颜色', '', '报错', '正常', '46', '10244', '产品库', null, '腰立辉', '腰立辉', '2016-10-09 11:01:15', '2016-10-08 17:38:15', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10076', '7', '2', '选多个颜色', '', '保存成功，返回', '正常', '46', '10244', '产品库', null, '腰立辉', '腰立辉', '2016-10-09 15:08:15', '2016-10-09 15:08:15', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10077', '8', '2', '选全部颜色', '', '保存成功，返回', '正常', '46', '10244', '产品库', null, '腰立辉', '腰立辉', '2016-10-09 15:08:21', '2016-10-09 15:08:21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10078', '9', '2', '全款优惠（按元）', '', '保存成功，返回', '正常', '46', '10242', '产品库', null, '腰立辉', '腰立辉', '2016-10-09 15:08:41', '2016-10-09 15:08:41', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10079', '10', '2', '全款优惠（按点）', '', '保存成功，返回', '正常', '46', '10243', '产品库', null, '腰立辉', '腰立辉', '2016-10-09 15:08:35', '2016-10-09 15:08:35', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10080', '1', '2', '从即将过期入口提交报价', '', '进入常规添加车款价格页面', '正常', '46', '10228', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:37:22', '2016-10-09 15:37:22', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10081', '1', '2', '从新增车款入口提交报价', '', '进入常规添加车款价格页面', '正常', '46', '10230', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:37:40', '2016-10-09 15:37:40', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10082', '1', '2', '查看新增车款的列表', '', '显示新增的车款为添加价格的车款列表', '正常', '46', '10229', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:39:24', '2016-10-09 15:39:24', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10083', '1', '2', '查看我的报价列表', '', '显示我负责报价的的车款列表', '正常', '46', '10231', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:39:51', '2016-10-09 15:39:51', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10084', '1', '2', '按有效查询', '', '显示符合条件的车型价格', '正常', '46', '10232', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:40:09', '2016-10-09 15:40:09', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10085', '2', '2', '按全部查询', '', '显示符合条件的车型价格', '正常', '46', '10232', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:40:15', '2016-10-09 15:40:15', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10086', '3', '2', '按已过期查询', '', '显示符合条件的车型价格', '正常', '46', '10232', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:40:24', '2016-10-09 15:40:24', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10087', '1', '2', '不选任何车型车款信息查询', '', '显示符合条件的车型价格', '正常', '46', '10233', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:40:39', '2016-10-09 15:40:39', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10088', '2', '2', '只选主品牌查询', '', '显示符合条件的车型价格', '正常', '46', '10233', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:40:32', '2016-10-09 15:40:32', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10089', '3', '2', '不选车款查询', '', '进入常规添加车款价格页面', '正常', '46', '10233', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:38:15', '2016-10-09 15:38:15', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10090', '4', '2', '选全主品牌、品牌、车款查询', '', '进入常规添加车款价格页面', '正常', '46', '10233', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:38:04', '2016-10-09 15:38:04', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10091', '1', '2', '从我的报价入口添加车款价格', '', '进入常规添加车款价格页面', '正常', '46', '10234', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:37:01', '2016-10-09 15:37:01', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10092', '1', '2', '添加显示列', '', '添加成功，显示新添加的列', '正常', '46', '10235', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:35:58', '2016-10-09 15:35:58', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10093', '2', '2', '隐藏显示列', '', '移除成功，不再显示新移除的列', '正常', '46', '10235', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:36:19', '2016-10-09 15:36:19', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10094', '1', '2', '从我的报价入口进入编辑车款价格', '', '打开车款价格编辑页面', '正常', '46', '10236', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:36:34', '2016-10-09 15:36:34', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10095', '1', '2', '创建车款报价后继续添加', '', '创建成功并打开一个空白的新建页', '正常', '46', '10245', '产品库', null, '腰立辉', '腰立辉', '2016-10-09 14:52:43', '2016-10-09 14:52:43', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10096', '1', '2', '查看待确定价格车款列表', '', '显示待确定车款价格信息', '正常', '46', '10237', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:35:35', '2016-10-09 15:35:35', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10097', '1', '2', '确定车款价格', '', '确定成功，待确定列表里不再显示该条信息', '正常', '46', '10238', '产品库', '', '腰立辉', '腰立辉', '2016-10-09 15:35:16', '2016-10-09 15:35:16', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10098', '1', '2', '查看车款报价城市', '', '显示符合条件的车款列表', '正常', '46', '10239', '产品库', null, '腰立辉', '腰立辉', '2016-10-09 15:09:15', '2016-10-09 15:09:15', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10099', '1', '2', '选择主品牌、品牌后级联选择车款', '', '选择成功', '正常', '46', '10241', '产品库', null, '腰立辉', '腰立辉', '2016-10-09 15:02:33', '2016-10-09 15:02:33', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10100', '1', '2', '正常登陆', '', '', '正常', '45', '10266', '产品库', null, '腰立辉', '腰立辉', '2016-10-14 10:49:16', '2016-10-14 10:49:16', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10101', '1', '2', '正常修改密码', '', '修改成功1', '正常', '45', '10005', '产品库', null, '腰立辉', '腰立辉', '2016-10-14 15:53:28', '2016-10-14 15:53:28', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tp_case` VALUES ('10102', '1', '2', '查看产品列表', '', '', '正常', '45', '10002', '产品库', null, '腰立辉', '腰立辉', '2016-10-14 17:02:38', '2016-10-14 17:02:38', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

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
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

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
INSERT INTO `tp_dict` VALUES ('56', '1', '未测试', 'sceneResul', '正常', '腰立辉', '腰立辉', '2016-10-10 16:22:01', null);
INSERT INTO `tp_dict` VALUES ('57', '2', '通过', 'sceneResul', '正常', '腰立辉', '腰立辉', '2016-10-10 16:22:33', '2016-10-10 16:22:33');
INSERT INTO `tp_dict` VALUES ('58', '3', '失败', 'sceneResul', '正常', '腰立辉', '腰立辉', '2016-10-10 16:22:39', '2016-10-10 16:22:39');
INSERT INTO `tp_dict` VALUES ('59', '4', '场景错', 'sceneResul', '正常', '腰立辉', '腰立辉', '2016-10-10 16:22:45', '2016-10-10 16:22:45');

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
) ENGINE=MyISAM AUTO_INCREMENT=10008 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_element
-- ----------------------------
INSERT INTO `tp_element` VALUES ('10000', '1', null, '用户名', '正常', '10000', null, null, null, null, null, null, 'num1', null, '腰立辉', '腰立辉', '2016-10-14 11:26:30', '2016-10-14 11:26:30');
INSERT INTO `tp_element` VALUES ('10004', '3', null, '【登录】', '正常', '10000', null, null, null, null, null, null, 'num3', null, '腰立辉', '腰立辉', '2016-10-14 11:29:18', '2016-10-14 11:29:18');
INSERT INTO `tp_element` VALUES ('10003', '2', null, '密码', '正常', '10000', null, null, null, null, null, null, 'num2', null, '腰立辉', '腰立辉', '2016-10-14 11:26:38', '2016-10-14 11:26:38');
INSERT INTO `tp_element` VALUES ('10005', '1', null, '用户名', '正常', '10116', null, null, null, null, null, null, 'num1', null, '腰立辉', '腰立辉', '2016-10-14 13:37:27', '2016-10-14 13:37:27');
INSERT INTO `tp_element` VALUES ('10006', '2', null, '密码', '正常', '10116', null, null, null, null, null, null, 'num2', null, '腰立辉', '腰立辉', '2016-10-14 13:37:33', '2016-10-14 13:37:33');
INSERT INTO `tp_element` VALUES ('10007', '3', null, '【登录】', '正常', '10116', null, null, null, null, null, null, 'num3', null, '腰立辉', '腰立辉', '2016-10-14 13:37:41', '2016-10-14 13:37:41');

-- ----------------------------
-- Table structure for `tp_exefunc`
-- ----------------------------
DROP TABLE IF EXISTS `tp_exefunc`;
CREATE TABLE `tp_exefunc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sn` int(11) DEFAULT NULL,
  `exesceneid` int(11) DEFAULT NULL,
  `funcid` int(50) DEFAULT NULL,
  `sysno` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `func` varchar(255) DEFAULT NULL,
  `funcremarks` varchar(200) DEFAULT NULL,
  `casemain` varchar(255) DEFAULT NULL,
  `caseexpected` varchar(255) DEFAULT NULL,
  `tester` varchar(10) DEFAULT NULL,
  `bugid` varchar(8) DEFAULT NULL,
  `result` varchar(50) DEFAULT '未测试',
  `remark` varchar(100) DEFAULT NULL,
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
) ENGINE=MyISAM AUTO_INCREMENT=10195 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_exefunc
-- ----------------------------
INSERT INTO `tp_exefunc` VALUES ('10174', '1', '10036', '10000', 'Auto.Access', '登陆模块', '登录', null, null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-13 10:12:40', '2016-10-13 10:12:40');
INSERT INTO `tp_exefunc` VALUES ('10175', '2', '10036', '10001', 'Auto.Access', '登陆模块', '注销', null, null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-13 10:16:07', '2016-10-13 10:16:07');
INSERT INTO `tp_exefunc` VALUES ('10176', '3', '10036', '10005', 'Auto.Access', '登陆模块', '改密', null, null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-13 10:16:09', '2016-10-13 10:16:09');
INSERT INTO `tp_exefunc` VALUES ('10177', '1', '10037', '10002', 'Auto.Access', '产品库', '产品列表', null, null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-13 10:45:09', '2016-10-13 10:45:09');
INSERT INTO `tp_exefunc` VALUES ('10178', '2', '10037', '10003', 'Auto.Access', '产品库', '产品-添加', null, null, null, null, null, '失败', '左侧切换列表过于繁琐，没有返回按钮', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-13 10:46:30', '2016-10-13 10:46:30');
INSERT INTO `tp_exefunc` VALUES ('10179', '3', '10037', '10004', 'Auto.Access', '产品库', '产品-编辑', null, null, null, null, null, '失败', '左侧切换列表过于繁琐，没有返回按钮', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-13 10:46:34', '2016-10-13 10:46:34');
INSERT INTO `tp_exefunc` VALUES ('10180', '4', '10037', '10006', 'Auto.Access', '产品库', '系统-入口', null, null, null, null, null, '失败', '没有返回按钮', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-13 10:47:00', '2016-10-13 10:47:00');
INSERT INTO `tp_exefunc` VALUES ('10181', '1', '10038', '10010', 'Auto.Access', '测试项目', '分组项目列表', null, null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-13 10:20:35', '2016-10-13 10:20:35');
INSERT INTO `tp_exefunc` VALUES ('10182', '2', '10038', '10011', 'Auto.Access', '测试项目', '切换分组', null, null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-13 10:20:40', '2016-10-13 10:20:40');
INSERT INTO `tp_exefunc` VALUES ('10183', '3', '10038', '10007', 'Auto.Access', '测试项目', '项目-添加', null, null, null, null, null, '通过', '产品建议默认“惠买车”，状态默认“进行中”', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-13 10:21:27', '2016-10-13 10:21:27');
INSERT INTO `tp_exefunc` VALUES ('10184', '4', '10038', '10008', 'Auto.Access', '测试项目', '项目-编辑', null, null, null, null, null, '通过', '建议锁死，产品和分组，不允许修改', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-13 10:22:53', '2016-10-13 10:22:53');
INSERT INTO `tp_exefunc` VALUES ('10045', '1', '10021', '10201', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '车型报价员配置列表', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:39:50', '2016-10-10 13:39:50');
INSERT INTO `tp_exefunc` VALUES ('10046', '2', '10021', '10202', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按城市', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:39:50', '2016-10-10 13:39:50');
INSERT INTO `tp_exefunc` VALUES ('10047', '3', '10021', '10203', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按买顾配置状态', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:39:50', '2016-10-10 13:39:50');
INSERT INTO `tp_exefunc` VALUES ('10048', '4', '10021', '10204', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按电销配置状态', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:39:50', '2016-10-10 13:39:50');
INSERT INTO `tp_exefunc` VALUES ('10049', '5', '10021', '10205', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按品牌车型', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:39:50', '2016-10-10 13:39:50');
INSERT INTO `tp_exefunc` VALUES ('10050', '6', '10021', '10206', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '新增车型', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:39:50', '2016-10-10 13:39:50');
INSERT INTO `tp_exefunc` VALUES ('10051', '7', '10021', '10207', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '批量配置买顾报价员', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:39:50', '2016-10-10 13:39:50');
INSERT INTO `tp_exefunc` VALUES ('10052', '8', '10021', '10208', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '批量配置电销报价员', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:39:50', '2016-10-10 13:39:50');
INSERT INTO `tp_exefunc` VALUES ('10053', '9', '10021', '10209', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '编辑车型', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:39:50', '2016-10-10 13:39:50');
INSERT INTO `tp_exefunc` VALUES ('10054', '10', '10021', '10210', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '修改买顾', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:39:50', '2016-10-10 13:39:50');
INSERT INTO `tp_exefunc` VALUES ('10055', '11', '10021', '10211', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '修改电销', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:39:50', '2016-10-10 13:39:50');
INSERT INTO `tp_exefunc` VALUES ('10056', '1', '10022', '10212', 'OP.HmcDSCRM', '业务管理-价格收集管理', '城市买顾价格收集表', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:39:52', '2016-10-10 13:39:52');
INSERT INTO `tp_exefunc` VALUES ('10057', '2', '10022', '10213', 'OP.HmcDSCRM', '业务管理-价格收集管理', '查询-按城市', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:39:52', '2016-10-10 13:39:52');
INSERT INTO `tp_exefunc` VALUES ('10058', '3', '10022', '10214', 'OP.HmcDSCRM', '业务管理-价格收集管理', '查询-按买顾', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:39:52', '2016-10-10 13:39:52');
INSERT INTO `tp_exefunc` VALUES ('10059', '4', '10022', '10215', 'OP.HmcDSCRM', '业务管理-价格收集管理', '明细-买顾入口', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:39:52', '2016-10-10 13:39:52');
INSERT INTO `tp_exefunc` VALUES ('10060', '5', '10022', '10216', 'OP.HmcDSCRM', '业务管理-价格收集管理', '明细-未报价车款入口', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:39:52', '2016-10-10 13:39:52');
INSERT INTO `tp_exefunc` VALUES ('10061', '6', '10022', '10217', 'OP.HmcDSCRM', '业务管理-价格收集管理', '明细-价格过期车款入口', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:39:52', '2016-10-10 13:39:52');
INSERT INTO `tp_exefunc` VALUES ('10062', '7', '10022', '10218', 'OP.HmcDSCRM', '业务管理-价格收集管理', '明细-查询按选择城市', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:39:52', '2016-10-10 13:39:52');
INSERT INTO `tp_exefunc` VALUES ('10063', '8', '10022', '10219', 'OP.HmcDSCRM', '业务管理-价格收集管理', '明细-查询按车型车款', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:39:52', '2016-10-10 13:39:52');
INSERT INTO `tp_exefunc` VALUES ('10064', '9', '10022', '10220', 'OP.HmcDSCRM', '业务管理-价格收集管理', '明细-查询按价格状态', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:39:52', '2016-10-10 13:39:52');
INSERT INTO `tp_exefunc` VALUES ('10065', '1', '10023', '10221', 'OP.HmcDSCRM', '价格库存管理-车型价格库', '车型价格列表', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:39:54', '2016-10-10 13:39:54');
INSERT INTO `tp_exefunc` VALUES ('10066', '2', '10023', '10222', 'OP.HmcDSCRM', '价格库存管理-车型价格库', '查询-按选择城市', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:39:54', '2016-10-10 13:39:54');
INSERT INTO `tp_exefunc` VALUES ('10067', '3', '10023', '10223', 'OP.HmcDSCRM', '价格库存管理-车型价格库', '查询-按价格状态', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:39:54', '2016-10-10 13:39:54');
INSERT INTO `tp_exefunc` VALUES ('10068', '4', '10023', '10224', 'OP.HmcDSCRM', '价格库存管理-车型价格库', '查询-按车型车款', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:39:54', '2016-10-10 13:39:54');
INSERT INTO `tp_exefunc` VALUES ('10069', '5', '10023', '10225', 'OP.HmcDSCRM', '价格库存管理-车型价格库', '添加价格信息', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:39:54', '2016-10-10 13:39:54');
INSERT INTO `tp_exefunc` VALUES ('10070', '6', '10023', '10226', 'OP.HmcDSCRM', '价格库存管理-车型价格库', '设置显示列', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:39:54', '2016-10-10 13:39:54');
INSERT INTO `tp_exefunc` VALUES ('10071', '1', '10024', '10227', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-即将过期', '价格即将过期-车款列表', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:05', '2016-10-10 13:40:05');
INSERT INTO `tp_exefunc` VALUES ('10072', '2', '10024', '10228', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-即将过期', '提交报价入口', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:05', '2016-10-10 13:40:05');
INSERT INTO `tp_exefunc` VALUES ('10073', '3', '10024', '10229', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-新增车款', '价格新增车款-车款列表', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:05', '2016-10-10 13:40:05');
INSERT INTO `tp_exefunc` VALUES ('10074', '4', '10024', '10230', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-新增车款', '提交报价-入口', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:05', '2016-10-10 13:40:05');
INSERT INTO `tp_exefunc` VALUES ('10075', '5', '10024', '10231', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-我的报价', '报价列表', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:05', '2016-10-10 13:40:05');
INSERT INTO `tp_exefunc` VALUES ('10076', '6', '10024', '10232', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-我的报价', '查询-按价格状态', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:05', '2016-10-10 13:40:05');
INSERT INTO `tp_exefunc` VALUES ('10077', '7', '10024', '10233', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-我的报价', '查询-按车型车款', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:05', '2016-10-10 13:40:05');
INSERT INTO `tp_exefunc` VALUES ('10078', '8', '10024', '10234', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-我的报价', '添加价格信息', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:05', '2016-10-10 13:40:05');
INSERT INTO `tp_exefunc` VALUES ('10079', '9', '10024', '10235', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-我的报价', '设置显示列', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:05', '2016-10-10 13:40:05');
INSERT INTO `tp_exefunc` VALUES ('10080', '10', '10024', '10236', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-我的报价', '价格修改', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:05', '2016-10-10 13:40:05');
INSERT INTO `tp_exefunc` VALUES ('10081', '11', '10024', '10237', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-待确定价格', '待确定价格-车款列表', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:05', '2016-10-10 13:40:05');
INSERT INTO `tp_exefunc` VALUES ('10082', '12', '10024', '10238', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-待确定价格', '确认价格', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:05', '2016-10-10 13:40:05');
INSERT INTO `tp_exefunc` VALUES ('10083', '1', '10025', '10239', 'OP.HmcDSCRM', '价格库存管理-库存价格收集', '显示报价城市', null, null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '曹玉芳', '2016-10-10 13:50:13', '2016-10-10 13:50:13');
INSERT INTO `tp_exefunc` VALUES ('10084', '2', '10025', '10240', 'OP.HmcDSCRM', '价格库存管理-库存价格收集', '选择品牌车型报价（NO车款）', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:07', '2016-10-10 13:40:07');
INSERT INTO `tp_exefunc` VALUES ('10085', '3', '10025', '10241', 'OP.HmcDSCRM', '价格库存管理-库存价格收集', '选择车款报价', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:07', '2016-10-10 13:40:07');
INSERT INTO `tp_exefunc` VALUES ('10086', '4', '10025', '10242', 'OP.HmcDSCRM', '价格库存管理-库存价格收集', '选择优惠金额报价', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:07', '2016-10-10 13:40:07');
INSERT INTO `tp_exefunc` VALUES ('10087', '5', '10025', '10243', 'OP.HmcDSCRM', '价格库存管理-库存价格收集', '选择优惠百分比报价', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:07', '2016-10-10 13:40:07');
INSERT INTO `tp_exefunc` VALUES ('10088', '6', '10025', '10244', 'OP.HmcDSCRM', '价格库存管理-库存价格收集', '保存报价', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:07', '2016-10-10 13:40:07');
INSERT INTO `tp_exefunc` VALUES ('10089', '7', '10025', '10245', 'OP.HmcDSCRM', '价格库存管理-库存价格收集', '保存并创建下一条', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:07', '2016-10-10 13:40:07');
INSERT INTO `tp_exefunc` VALUES ('10090', '3', '10026', '10206', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '新增车型', null, null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 16:03:05', '2016-10-10 16:03:05');
INSERT INTO `tp_exefunc` VALUES ('10091', '4', '10026', '10209', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '编辑车型', null, null, null, null, null, '失败', '提示请选择车型', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 16:04:03', '2016-10-10 16:04:03');
INSERT INTO `tp_exefunc` VALUES ('10092', '1', '10026', '10202', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按城市', null, null, null, null, null, '通过', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 16:00:59', '2016-10-10 16:00:59');
INSERT INTO `tp_exefunc` VALUES ('10093', '2', '10026', '10201', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '车型报价员配置列表', null, null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 16:02:51', '2016-10-10 16:02:51');
INSERT INTO `tp_exefunc` VALUES ('10094', '5', '10026', '10210', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '修改买顾', null, null, null, null, null, '失败', '翻页后，不修改内容直接关闭弹窗，无反应', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 16:07:18', '2016-10-10 16:07:18');
INSERT INTO `tp_exefunc` VALUES ('10095', '6', '10026', '10211', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '修改电销', null, null, null, null, null, '失败', '翻页后，不修改内容直接关闭弹窗，无反应', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 16:07:26', '2016-10-10 16:07:26');
INSERT INTO `tp_exefunc` VALUES ('10096', '1', '10027', '10202', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按城市', null, null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 16:07:41', '2016-10-10 16:07:41');
INSERT INTO `tp_exefunc` VALUES ('10097', '2', '10027', '10201', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '车型报价员配置列表', null, null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 16:07:43', '2016-10-10 16:07:43');
INSERT INTO `tp_exefunc` VALUES ('10098', '6', '10027', '10207', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '批量配置买顾报价员', '', null, null, null, null, '失败', '不显示勾选，即便是单个修改也不显示', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 16:08:28', '2016-10-10 16:08:28');
INSERT INTO `tp_exefunc` VALUES ('10099', '7', '10027', '10208', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '批量配置电销报价员', '', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 16:36:19', '2016-10-10 16:36:19');
INSERT INTO `tp_exefunc` VALUES ('10100', '3', '10027', '10203', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按买顾配置状态', '', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 16:07:52', '2016-10-10 16:07:52');
INSERT INTO `tp_exefunc` VALUES ('10101', '4', '10027', '10204', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按电销配置状态', '', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 16:07:54', '2016-10-10 16:07:54');
INSERT INTO `tp_exefunc` VALUES ('10102', '5', '10027', '10205', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按品牌车型', '', null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 16:08:01', '2016-10-10 16:08:01');
INSERT INTO `tp_exefunc` VALUES ('10103', '1', '10028', '10201', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '车型报价员配置列表', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:27', '2016-10-10 13:40:27');
INSERT INTO `tp_exefunc` VALUES ('10104', '2', '10028', '10202', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按城市', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:27', '2016-10-10 13:40:27');
INSERT INTO `tp_exefunc` VALUES ('10105', '3', '10028', '10203', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按买顾配置状态', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:27', '2016-10-10 13:40:27');
INSERT INTO `tp_exefunc` VALUES ('10106', '4', '10028', '10204', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按电销配置状态', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:27', '2016-10-10 13:40:27');
INSERT INTO `tp_exefunc` VALUES ('10107', '5', '10028', '10205', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按品牌车型', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:27', '2016-10-10 13:40:27');
INSERT INTO `tp_exefunc` VALUES ('10108', '6', '10028', '10206', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '新增车型', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:27', '2016-10-10 13:40:27');
INSERT INTO `tp_exefunc` VALUES ('10109', '7', '10028', '10207', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '批量配置买顾报价员', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:27', '2016-10-10 13:40:27');
INSERT INTO `tp_exefunc` VALUES ('10110', '8', '10028', '10208', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '批量配置电销报价员', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:27', '2016-10-10 13:40:27');
INSERT INTO `tp_exefunc` VALUES ('10111', '9', '10028', '10209', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '编辑车型', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:27', '2016-10-10 13:40:27');
INSERT INTO `tp_exefunc` VALUES ('10112', '10', '10028', '10210', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '修改买顾', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:27', '2016-10-10 13:40:27');
INSERT INTO `tp_exefunc` VALUES ('10113', '11', '10028', '10211', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '修改电销', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:27', '2016-10-10 13:40:27');
INSERT INTO `tp_exefunc` VALUES ('10114', '1', '10029', '10212', 'OP.HmcDSCRM', '业务管理-价格收集管理', '城市买顾价格收集表', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:29', '2016-10-10 13:40:29');
INSERT INTO `tp_exefunc` VALUES ('10115', '2', '10029', '10213', 'OP.HmcDSCRM', '业务管理-价格收集管理', '查询-按城市', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:29', '2016-10-10 13:40:29');
INSERT INTO `tp_exefunc` VALUES ('10116', '3', '10029', '10214', 'OP.HmcDSCRM', '业务管理-价格收集管理', '查询-按买顾', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:29', '2016-10-10 13:40:29');
INSERT INTO `tp_exefunc` VALUES ('10117', '4', '10029', '10215', 'OP.HmcDSCRM', '业务管理-价格收集管理', '明细-买顾入口', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:29', '2016-10-10 13:40:29');
INSERT INTO `tp_exefunc` VALUES ('10118', '5', '10029', '10216', 'OP.HmcDSCRM', '业务管理-价格收集管理', '明细-未报价车款入口', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:29', '2016-10-10 13:40:29');
INSERT INTO `tp_exefunc` VALUES ('10119', '6', '10029', '10217', 'OP.HmcDSCRM', '业务管理-价格收集管理', '明细-价格过期车款入口', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:29', '2016-10-10 13:40:29');
INSERT INTO `tp_exefunc` VALUES ('10120', '7', '10029', '10218', 'OP.HmcDSCRM', '业务管理-价格收集管理', '明细-查询按选择城市', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:29', '2016-10-10 13:40:29');
INSERT INTO `tp_exefunc` VALUES ('10121', '8', '10029', '10219', 'OP.HmcDSCRM', '业务管理-价格收集管理', '明细-查询按车型车款', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:29', '2016-10-10 13:40:29');
INSERT INTO `tp_exefunc` VALUES ('10122', '9', '10029', '10220', 'OP.HmcDSCRM', '业务管理-价格收集管理', '明细-查询按价格状态', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:29', '2016-10-10 13:40:29');
INSERT INTO `tp_exefunc` VALUES ('10123', '1', '10030', '10221', 'OP.HmcDSCRM', '价格库存管理-车型价格库', '车型价格列表', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:31', '2016-10-10 13:40:31');
INSERT INTO `tp_exefunc` VALUES ('10124', '2', '10030', '10222', 'OP.HmcDSCRM', '价格库存管理-车型价格库', '查询-按选择城市', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:31', '2016-10-10 13:40:31');
INSERT INTO `tp_exefunc` VALUES ('10125', '3', '10030', '10223', 'OP.HmcDSCRM', '价格库存管理-车型价格库', '查询-按价格状态', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:31', '2016-10-10 13:40:31');
INSERT INTO `tp_exefunc` VALUES ('10126', '4', '10030', '10224', 'OP.HmcDSCRM', '价格库存管理-车型价格库', '查询-按车型车款', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:31', '2016-10-10 13:40:31');
INSERT INTO `tp_exefunc` VALUES ('10127', '5', '10030', '10225', 'OP.HmcDSCRM', '价格库存管理-车型价格库', '添加价格信息', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:31', '2016-10-10 13:40:31');
INSERT INTO `tp_exefunc` VALUES ('10128', '6', '10030', '10226', 'OP.HmcDSCRM', '价格库存管理-车型价格库', '设置显示列', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:31', '2016-10-10 13:40:31');
INSERT INTO `tp_exefunc` VALUES ('10129', '1', '10031', '10227', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-即将过期', '价格即将过期-车款列表', null, null, null, null, null, '失败', '只显示已经过期从车库价格', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 17:32:33', '2016-10-10 17:32:33');
INSERT INTO `tp_exefunc` VALUES ('10130', '2', '10031', '10228', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-即将过期', '提交报价入口', null, null, null, null, null, '失败', '（未提BUG）没有带入经销商信息', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 17:34:05', '2016-10-10 17:34:05');
INSERT INTO `tp_exefunc` VALUES ('10131', '3', '10031', '10229', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-新增车款', '价格新增车款-车款列表', null, null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 17:19:52', '2016-10-10 17:19:52');
INSERT INTO `tp_exefunc` VALUES ('10132', '4', '10031', '10230', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-新增车款', '提交报价-入口', null, null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 17:20:07', '2016-10-10 17:20:07');
INSERT INTO `tp_exefunc` VALUES ('10133', '5', '10031', '10231', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-我的报价', '报价列表', null, null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 17:34:17', '2016-10-10 17:34:17');
INSERT INTO `tp_exefunc` VALUES ('10134', '6', '10031', '10232', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-我的报价', '查询-按价格状态', null, null, null, null, null, '失败', '不起作用', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 17:40:20', '2016-10-10 17:40:20');
INSERT INTO `tp_exefunc` VALUES ('10135', '7', '10031', '10233', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-我的报价', '查询-按车型车款', null, null, null, null, null, '失败', '不起作用', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 17:40:23', '2016-10-10 17:40:23');
INSERT INTO `tp_exefunc` VALUES ('10136', '8', '10031', '10234', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-我的报价', '添加价格信息', null, null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 17:41:03', '2016-10-10 17:41:03');
INSERT INTO `tp_exefunc` VALUES ('10137', '9', '10031', '10235', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-我的报价', '设置显示列', null, null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 17:40:34', '2016-10-10 17:40:34');
INSERT INTO `tp_exefunc` VALUES ('10138', '10', '10031', '10236', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-我的报价', '价格修改', null, null, null, null, null, '失败', '有个请选择一个颜色的提示', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 17:44:37', '2016-10-10 17:44:37');
INSERT INTO `tp_exefunc` VALUES ('10139', '11', '10031', '10237', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-待确定价格', '待确定价格-车款列表', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:33', '2016-10-10 13:40:33');
INSERT INTO `tp_exefunc` VALUES ('10140', '12', '10031', '10238', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-待确定价格', '确认价格', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:40:33', '2016-10-10 13:40:33');
INSERT INTO `tp_exefunc` VALUES ('10141', '1', '10032', '10239', 'OP.HmcDSCRM', '价格库存管理-库存价格收集', '显示报价城市', null, null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 17:45:14', '2016-10-10 17:45:14');
INSERT INTO `tp_exefunc` VALUES ('10142', '2', '10032', '10240', 'OP.HmcDSCRM', '价格库存管理-库存价格收集', '选择品牌车型报价（NO车款）', null, null, null, null, null, '失败', '不选车款，无法先经销商', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 17:50:17', '2016-10-10 17:50:17');
INSERT INTO `tp_exefunc` VALUES ('10143', '3', '10032', '10241', 'OP.HmcDSCRM', '价格库存管理-库存价格收集', '选择车款报价', null, null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 17:45:34', '2016-10-10 17:45:34');
INSERT INTO `tp_exefunc` VALUES ('10144', '4', '10032', '10242', 'OP.HmcDSCRM', '价格库存管理-库存价格收集', '选择优惠金额报价', null, null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 17:45:31', '2016-10-10 17:45:31');
INSERT INTO `tp_exefunc` VALUES ('10145', '5', '10032', '10243', 'OP.HmcDSCRM', '价格库存管理-库存价格收集', '选择优惠百分比报价', null, null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 17:45:28', '2016-10-10 17:45:28');
INSERT INTO `tp_exefunc` VALUES ('10146', '6', '10032', '10244', 'OP.HmcDSCRM', '价格库存管理-库存价格收集', '保存报价', null, null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 17:45:25', '2016-10-10 17:45:25');
INSERT INTO `tp_exefunc` VALUES ('10147', '7', '10032', '10245', 'OP.HmcDSCRM', '价格库存管理-库存价格收集', '保存并创建下一条', null, null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 17:45:22', '2016-10-10 17:45:22');
INSERT INTO `tp_exefunc` VALUES ('10148', '1', '10033', '10201', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '车型报价员配置列表', null, null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 16:55:42', '2016-10-10 16:55:42');
INSERT INTO `tp_exefunc` VALUES ('10149', '2', '10033', '10202', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按城市', null, null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 16:55:46', '2016-10-10 16:55:46');
INSERT INTO `tp_exefunc` VALUES ('10150', '3', '10033', '10203', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按买顾配置状态', null, null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 16:55:49', '2016-10-10 16:55:49');
INSERT INTO `tp_exefunc` VALUES ('10151', '4', '10033', '10204', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按电销配置状态', null, null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 16:55:56', '2016-10-10 16:55:56');
INSERT INTO `tp_exefunc` VALUES ('10152', '5', '10033', '10205', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按品牌车型', null, null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 16:55:59', '2016-10-10 16:55:59');
INSERT INTO `tp_exefunc` VALUES ('10153', '6', '10033', '10206', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '新增车型', null, null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 16:56:07', '2016-10-10 16:56:07');
INSERT INTO `tp_exefunc` VALUES ('10154', '7', '10033', '10207', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '批量配置买顾报价员', null, null, null, null, null, '失败', '翻页后，不能直接关闭，修改成功后会跳转到首页', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 16:58:32', '2016-10-10 16:58:32');
INSERT INTO `tp_exefunc` VALUES ('10155', '8', '10033', '10208', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '批量配置电销报价员', null, null, null, null, null, '失败', '翻页后，不能直接关闭，修改成功后会跳转到首页', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 16:58:35', '2016-10-10 16:58:35');
INSERT INTO `tp_exefunc` VALUES ('10156', '9', '10033', '10209', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '编辑车型', null, null, null, null, null, '失败', '提示请选择车型', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 16:58:50', '2016-10-10 16:58:50');
INSERT INTO `tp_exefunc` VALUES ('10157', '10', '10033', '10210', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '修改买顾', null, null, null, null, null, '失败', '翻页后，不能直接关闭，修改成功后会跳转到首页', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 16:58:56', '2016-10-10 16:58:56');
INSERT INTO `tp_exefunc` VALUES ('10158', '11', '10033', '10211', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '修改电销', null, null, null, null, null, '失败', '翻页后，不能直接关闭，修改成功后会跳转到首页', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 16:58:59', '2016-10-10 16:58:59');
INSERT INTO `tp_exefunc` VALUES ('10159', '1', '10034', '10212', 'OP.HmcDSCRM', '业务管理-价格收集管理', '城市买顾价格收集表', null, null, null, null, null, '失败', '有效价格率为负数', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 17:03:39', '2016-10-10 17:03:39');
INSERT INTO `tp_exefunc` VALUES ('10160', '2', '10034', '10213', 'OP.HmcDSCRM', '业务管理-价格收集管理', '查询-按城市', null, null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 17:03:53', '2016-10-10 17:03:53');
INSERT INTO `tp_exefunc` VALUES ('10161', '3', '10034', '10214', 'OP.HmcDSCRM', '业务管理-价格收集管理', '查询-按买顾', null, null, null, null, null, '失败', '买顾没有按城市级联', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 17:04:07', '2016-10-10 17:04:07');
INSERT INTO `tp_exefunc` VALUES ('10162', '4', '10034', '10215', 'OP.HmcDSCRM', '业务管理-价格收集管理', '明细-买顾入口', null, null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 17:04:52', '2016-10-10 17:04:52');
INSERT INTO `tp_exefunc` VALUES ('10163', '5', '10034', '10216', 'OP.HmcDSCRM', '业务管理-价格收集管理', '明细-未报价车款入口', null, null, null, null, null, '失败', '未带入查询条件', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 17:05:03', '2016-10-10 17:05:03');
INSERT INTO `tp_exefunc` VALUES ('10164', '6', '10034', '10217', 'OP.HmcDSCRM', '业务管理-价格收集管理', '明细-价格过期车款入口', null, null, null, null, null, '失败', '未带入查询条件', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 16:57:28', '2016-10-10 16:57:28');
INSERT INTO `tp_exefunc` VALUES ('10165', '7', '10034', '10218', 'OP.HmcDSCRM', '业务管理-价格收集管理', '明细-查询按选择城市', null, null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 17:05:09', '2016-10-10 17:05:09');
INSERT INTO `tp_exefunc` VALUES ('10166', '8', '10034', '10219', 'OP.HmcDSCRM', '业务管理-价格收集管理', '明细-查询按车型车款', null, null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 17:05:12', '2016-10-10 17:05:12');
INSERT INTO `tp_exefunc` VALUES ('10167', '9', '10034', '10220', 'OP.HmcDSCRM', '业务管理-价格收集管理', '明细-查询按价格状态', null, null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 17:05:15', '2016-10-10 17:05:15');
INSERT INTO `tp_exefunc` VALUES ('10168', '1', '10035', '10221', 'OP.HmcDSCRM', '价格库存管理-车型价格库', '车型价格列表', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 16:55:04', '2016-10-10 16:55:04');
INSERT INTO `tp_exefunc` VALUES ('10169', '2', '10035', '10222', 'OP.HmcDSCRM', '价格库存管理-车型价格库', '查询-按选择城市', null, null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 17:06:56', '2016-10-10 17:06:56');
INSERT INTO `tp_exefunc` VALUES ('10170', '3', '10035', '10223', 'OP.HmcDSCRM', '价格库存管理-车型价格库', '查询-按价格状态', null, null, null, null, null, '失败', '按已过期查询，查出两条未过期的数据', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 17:11:25', '2016-10-10 17:11:25');
INSERT INTO `tp_exefunc` VALUES ('10171', '4', '10035', '10224', 'OP.HmcDSCRM', '价格库存管理-车型价格库', '查询-按车型车款', null, null, null, null, null, '失败', '选择的品牌车型，和查出的不一致', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 17:12:31', '2016-10-10 17:12:31');
INSERT INTO `tp_exefunc` VALUES ('10172', '5', '10035', '10225', 'OP.HmcDSCRM', '价格库存管理-车型价格库', '添加价格信息', null, null, null, null, null, '未测试', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 16:55:04', '2016-10-10 16:55:04');
INSERT INTO `tp_exefunc` VALUES ('10173', '6', '10035', '10226', 'OP.HmcDSCRM', '价格库存管理-车型价格库', '设置显示列', null, null, null, null, null, '通过', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-10 16:56:39', '2016-10-10 16:56:39');
INSERT INTO `tp_exefunc` VALUES ('10185', '5', '10038', '10009', 'Auto.Access', '测试项目', '项目-详情', null, null, null, null, null, '失败', '需求类型用下拉框，给默认值，日期给默认值“项目结束时间”，简介区域用文本编辑器', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-13 10:37:24', '2016-10-13 10:37:24');
INSERT INTO `tp_exefunc` VALUES ('10186', '6', '10038', '10012', 'Auto.Access', '测试项目', '快速标记状态', null, null, null, null, null, '失败', '已完成后，再点无反应就行，不用给出提示', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-13 10:38:36', '2016-10-13 10:38:36');
INSERT INTO `tp_exefunc` VALUES ('10187', '7', '10038', '10013', 'Auto.Access', '测试项目', '项目-里程碑入口', null, null, null, null, null, '失败', '左侧列表过于繁琐，没有返回', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-13 10:40:10', '2016-10-13 10:40:10');
INSERT INTO `tp_exefunc` VALUES ('10188', '8', '10038', '10014', 'Auto.Access', '测试项目', '项目-风险入口', null, null, null, null, null, '失败', '暂无', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-13 10:40:37', '2016-10-13 10:40:37');
INSERT INTO `tp_exefunc` VALUES ('10189', '9', '10038', '10015', 'Auto.Access', '测试项目', '项目-系统入口', null, null, null, null, null, '失败', '无返回', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-13 10:41:12', '2016-10-13 10:41:12');
INSERT INTO `tp_exefunc` VALUES ('10190', '10', '10038', '10016', 'Auto.Access', '测试项目', '项目-功能点入口', null, null, null, null, null, '失败', '无返回，不能切换项目', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-13 10:41:49', '2016-10-13 10:41:49');
INSERT INTO `tp_exefunc` VALUES ('10191', '11', '10038', '10017', 'Auto.Access', '测试项目', '项目-范围入口', null, null, null, null, null, '失败', '无返回，不能切换项目', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-13 10:42:58', '2016-10-13 10:42:58');
INSERT INTO `tp_exefunc` VALUES ('10192', '12', '10038', '10018', 'Auto.Access', '测试项目', '项目-场景入口', null, null, null, null, null, '失败', '无返回，不能切换项目', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-13 10:43:40', '2016-10-13 10:43:40');
INSERT INTO `tp_exefunc` VALUES ('10193', '13', '10038', '10019', 'Auto.Access', '测试项目', '项目-控件库入口', null, null, null, null, null, '失败', '无返回', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-13 10:44:27', '2016-10-13 10:44:27');
INSERT INTO `tp_exefunc` VALUES ('10194', '14', '10038', '10020', 'Auto.Access', '测试项目', '项目-用例库入口', null, null, null, null, null, '失败', '无返回', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-13 10:44:51', '2016-10-13 10:44:51');

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
) ENGINE=MyISAM AUTO_INCREMENT=10039 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_exescene
-- ----------------------------
INSERT INTO `tp_exescene` VALUES ('10038', '3', 'M', '10016', '10019', '2', '【功能】', '默认', '项目管理', '失败', '', '', null, null, null, '腰立辉', '腰立辉', '2016-10-13 10:47:20', '2016-10-13 10:47:20');
INSERT INTO `tp_exescene` VALUES ('10036', '1', 'M', '10016', '10017', '2', '【功能】', '默认', '登陆模块', '通过', '', '', null, null, null, '腰立辉', '腰立辉', '2016-10-13 10:45:57', '2016-10-13 10:45:57');
INSERT INTO `tp_exescene` VALUES ('10037', '2', 'M', '10016', '10018', '2', '【功能】', '默认', '产品库-产品管理', '失败', '', '', null, null, null, '腰立辉', '腰立辉', '2016-10-13 10:47:12', '2016-10-13 10:47:12');
INSERT INTO `tp_exescene` VALUES ('10021', '1', 'M', '10027', '10012', '2', '默认', '默认', '【功能】车型及报价员配置管理', '未测试', '', '', null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:39:50', '2016-10-10 13:39:50');
INSERT INTO `tp_exescene` VALUES ('10022', '2', 'M', '10027', '10013', '2', '默认', '默认', '【功能】价格收集管理（业务管理）', '未测试', '', '', null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:39:52', '2016-10-10 13:39:52');
INSERT INTO `tp_exescene` VALUES ('10023', '3', 'M', '10027', '10014', '2', '默认', '默认', '【功能】车型价格库', '未测试', '', '', null, null, null, '腰立辉', '腰立辉', '2016-10-10 13:39:54', '2016-10-10 13:39:54');
INSERT INTO `tp_exescene` VALUES ('10026', '1', 'M', '10028', '10010', '2', '管理员', '默认', '添加TOP100车款', '失败', '', '', null, null, null, '腰立辉', '腰立辉', '2016-10-10 16:35:59', '2016-10-10 16:35:59');
INSERT INTO `tp_exescene` VALUES ('10027', '2', 'M', '10028', '10011', '2', '管理员', '默认', '给TOP100车款批量配置电销和买顾', '通过', '', '', null, null, null, '腰立辉', '腰立辉', '2016-10-10 16:36:28', '2016-10-10 16:36:28');
INSERT INTO `tp_exescene` VALUES ('10033', '5', 'M', '10028', '10012', '2', '默认', '默认', '【功能】车型及报价员配置管理', '失败', '', '', null, null, null, '腰立辉', '腰立辉', '2016-10-10 16:59:05', '2016-10-10 16:59:05');
INSERT INTO `tp_exescene` VALUES ('10034', '6', 'M', '10028', '10013', '2', '默认', '默认', '【功能】价格收集管理（业务管理）', '失败', '', '', null, null, null, '腰立辉', '腰立辉', '2016-10-10 17:05:44', '2016-10-10 17:05:44');
INSERT INTO `tp_exescene` VALUES ('10035', '7', 'M', '10028', '10014', '2', '默认', '默认', '【功能】车型价格库', '失败', '', '', null, null, null, '腰立辉', '腰立辉', '2016-10-10 17:12:42', '2016-10-10 17:12:42');
INSERT INTO `tp_exescene` VALUES ('10031', '6', 'M', '10028', '10015', '2', '默认', '默认', '【功能】价格库存管理', '未配置电销', '', '', null, null, null, '腰立辉', '腰立辉', '2016-10-10 17:44:44', '2016-10-10 17:44:44');
INSERT INTO `tp_exescene` VALUES ('10032', '7', 'M', '10028', '10016', '2', '默认', '默认', '【功能】库存价格收集', '失败', '', '', null, null, null, '腰立辉', '腰立辉', '2016-10-10 17:50:24', '2016-10-10 17:50:24');

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
) ENGINE=MyISAM AUTO_INCREMENT=10273 DEFAULT CHARSET=utf8;

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
INSERT INTO `tp_func` VALUES ('10266', '1', '登录', '正常', '10106', '0', '腰立辉', '腰立辉', '2016-09-27 17:18:35', '2016-09-27 17:16:17');
INSERT INTO `tp_func` VALUES ('10267', '2', '记住密码', '正常', '10106', '0', '腰立辉', '腰立辉', '2016-09-27 17:18:37', '2016-09-27 17:16:24');
INSERT INTO `tp_func` VALUES ('10268', '3', '个人信息', '正常', '10106', '0', '腰立辉', '腰立辉', '2016-09-27 17:18:38', '2016-09-27 17:16:37');
INSERT INTO `tp_func` VALUES ('10269', '4', '修改个人信息', '正常', '10106', '0', '腰立辉', '腰立辉', '2016-09-27 17:18:40', '2016-09-27 17:16:44');
INSERT INTO `tp_func` VALUES ('10270', '5', '退出', '正常', '10106', '0', '腰立辉', '腰立辉', '2016-09-27 17:18:42', '2016-09-27 17:16:53');
INSERT INTO `tp_func` VALUES ('10271', '1', '权限管理-入口', '正常', '10107', '0', '腰立辉', '腰立辉', '2016-09-27 17:18:44', '2016-09-27 17:17:36');
INSERT INTO `tp_func` VALUES ('10272', '2', '惠买车电商CRM-入口', '正常', '10107', '0', '腰立辉', '腰立辉', '2016-09-27 17:18:45', '2016-09-27 17:18:05');

-- ----------------------------
-- Table structure for `tp_hcfunc`
-- ----------------------------
DROP TABLE IF EXISTS `tp_hcfunc`;
CREATE TABLE `tp_hcfunc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sn` smallint(2) DEFAULT NULL,
  `funcid` smallint(6) DEFAULT NULL,
  `sysno` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `func` varchar(255) DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `caseid` int(11) DEFAULT NULL,
  `casestate` varchar(255) DEFAULT NULL,
  `casemain` varchar(255) DEFAULT NULL,
  `caseexpected` varchar(255) DEFAULT NULL,
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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_hcfunc
-- ----------------------------

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
) ENGINE=MyISAM AUTO_INCREMENT=10108 DEFAULT CHARSET=utf8;

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
INSERT INTO `tp_path` VALUES ('10072', '17', '任务管理-价格库存管理-新增车款', '正常', '11', '腰立辉', '腰立辉', '2016-10-10 14:33:17', '2016-10-10 14:33:17');
INSERT INTO `tp_path` VALUES ('10069', '34', '价格库存管理-车型价格库', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:24:06', '2016-09-26 10:23:03');
INSERT INTO `tp_path` VALUES ('10070', '17', '任务管理-价格库存管理-即将过期', '正常', '11', '腰立辉', '腰立辉', '2016-10-10 14:27:47', '2016-10-10 14:27:47');
INSERT INTO `tp_path` VALUES ('10071', '10', '业务管理-价格收集管理', '正常', '11', '腰立辉', '腰立辉', '2016-09-26 11:24:35', '2016-09-26 11:10:39');
INSERT INTO `tp_path` VALUES ('10073', '17', '任务管理-价格库存管理-我的报价', '正常', '11', '腰立辉', '腰立辉', '2016-10-10 14:33:25', '2016-10-10 14:33:25');
INSERT INTO `tp_path` VALUES ('10074', '17', '任务管理-价格库存管理-待确定价格', '正常', '11', '腰立辉', '腰立辉', '2016-10-10 14:33:38', '2016-10-10 14:33:38');
INSERT INTO `tp_path` VALUES ('10075', '17', '任务管理-价格库存管理-库存价格收集', '正常', '11', '腰立辉', '腰立辉', '2016-10-10 14:33:47', '2016-10-10 14:33:47');
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
INSERT INTO `tp_path` VALUES ('10106', '1', '登录模块', '正常', '57', '腰立辉', '腰立辉', '2016-09-27 17:15:49', '2016-09-27 17:15:49');
INSERT INTO `tp_path` VALUES ('10107', '2', '我的工作台', '正常', '57', '腰立辉', '腰立辉', '2016-09-27 17:16:06', '2016-09-27 17:16:06');

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
INSERT INTO `tp_program` VALUES ('45', 'Auto1609.2', '王鑫彤测试管理验收', '2', '进行中', '2016-09-22', '2016-10-31', '孟军良', 'Auto', '简要', '', '需求新增', '一般需求', '2016-09-22', '', '腰立辉', '腰立辉', '2016-10-13 09:54:53', '2016-10-13 09:54:53');
INSERT INTO `tp_program` VALUES ('46', 'OP1609.1', '热销车型价格库', '1', '已完成', '2016-09-22', '2016-10-14', '曹玉芳', 'OP', '简要', '王艳梅', '需求新增', '一般需求', '2016-10-14', '<p>\r\n	1、 热销车型车款维护：支持绑定买车顾问及电销顾问，支持手工添加车型车款；</p>\r\n<p>\r\n	2、 报价师报价功能：买车顾问需要定时提交已分配车型的价格信息，可查看自己已报的价格及状态；电销顾问可以确认买顾的报价；</p>\r\n<p>\r\n	3、 价格库：城市+车况+颜色+商家为一条价格，用户客户在价格库中查询车型车款的价格信息；</p>\r\n<p>\r\n	4、 城市管理者可查看买顾完成报价的情况；</p>\r\n<table cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n	</tbody>\r\n</table>\r\n', '腰立辉', '腰立辉', '2016-10-14 18:34:34', '2016-10-14 18:34:34');
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
) ENGINE=MyISAM AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_risk
-- ----------------------------
INSERT INTO `tp_risk` VALUES ('1000', '1', '不提交测试，无法完成验收', 'A', '<p>\r\n	暂无方案</p>\r\n', '45', '打开', '', '腰立辉', '腰立辉', '2016-09-27 21:07:26', '2016-09-27 21:07:26');

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
) ENGINE=MyISAM AUTO_INCREMENT=10003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_rules
-- ----------------------------
INSERT INTO `tp_rules` VALUES ('10000', '1', '用户名用自己的域账号，密码默认为123456', '需求文档', '10000', '正常', '45', '', '腰立辉', '腰立辉', '2016-09-22 15:09:32', '2016-09-22 15:09:32');
INSERT INTO `tp_rules` VALUES ('10001', '1', '正常注销', '需求文档', '10001', '正常', '45', '', '腰立辉', '腰立辉', '2016-09-22 16:43:37', '2016-09-22 16:43:37');
INSERT INTO `tp_rules` VALUES ('10002', '1', '222', '需求文档', '10116', '正常', '47', '', '腰立辉', '腰立辉', '2016-10-14 14:00:15', '2016-10-14 14:00:15');

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
) ENGINE=MyISAM AUTO_INCREMENT=10021 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_scene
-- ----------------------------
INSERT INTO `tp_scene` VALUES ('10000', '1', 'A', '2', '默认', '默认', 'http://127.0.0.1:81/tpTest/autotest.php/Index/index', '正常创建测试项目并制定里程碑选定测试系统', '正常', '45', '登录-建项目-建里程碑', '0', '腰立辉', '腰立辉', '2016-09-27 16:25:28', '2016-09-27 16:25:28');
INSERT INTO `tp_scene` VALUES ('10001', '2', 'M', '2', '默认', '无对应产品时', 'http://127.0.0.1:81/tpTest/autotest.php/Index/index', '正常创建测试项目并制定里程碑选定测试系统', '正常', '45', '登录-建产品-建项目-建里程碑-选系统', '0', '腰立辉', '腰立辉', '2016-09-24 00:40:02', '2016-09-24 00:40:02');
INSERT INTO `tp_scene` VALUES ('10002', '3', 'M', '2', '默认', '无被测系统时', 'http://127.0.0.1:81/tpTest/autotest.php/Index/index', '正常创建测试项目并制定里程碑选定测试系统', '正常', '45', '登录-建项目-建里程碑-建系统-选系统', '0', '腰立辉', '腰立辉', '2016-09-24 00:40:09', '2016-09-24 00:40:09');
INSERT INTO `tp_scene` VALUES ('10003', '1', 'M', '2', '默认', '空白数据库', '', '建立测试项目', '正常', '48', '登录-件产品-建项目--详情-里程碑-关联系统-', '0', '腰立辉', '腰立辉', '2016-09-24 21:23:31', '2016-09-24 21:23:31');
INSERT INTO `tp_scene` VALUES ('10004', '1', 'M', '2', '默认', '默认', '', '11', '正常', '24', '', '0', '腰立辉', '腰立辉', '2016-09-25 21:23:05', '2016-09-25 21:23:05');
INSERT INTO `tp_scene` VALUES ('10005', '4', 'M', '2', '默认', '默认', 'http://127.0.0.1:81/tpTest/autotest.php/Index/index', '正常创建测试项目并制定里程碑选定测试系统', '正常', '45', '登录-建项目-建里程碑', '10000', '腰立辉', '腰立辉', '2016-09-25 21:39:18', '2016-09-25 21:38:12');
INSERT INTO `tp_scene` VALUES ('10006', '5', 'M', '2', '默认', '默认', 'http://127.0.0.1:81/tpTest/autotest.php/Index/index', '正常创建测试项目', '正常', '45', '登录-建项目-建里程碑', '10000', '腰立辉', '腰立辉', '2016-09-25 21:42:14', '2016-09-25 21:42:14');
INSERT INTO `tp_scene` VALUES ('10007', '6', 'M', '2', '默认', '无对应产品时', 'http://127.0.0.1:81/tpTest/autotest.php/Index/index', '正常创建测试项目并制定里程碑选定测试系统', '正常', '45', '登录-建产品-建项目-建里程碑-选系统', '10001', '腰立辉', null, '2016-09-25 21:46:13', '0000-00-00 00:00:00');
INSERT INTO `tp_scene` VALUES ('10008', '1', 'M', '2', '默认', '默认', 'http://127.0.0.1:81/tpTest/autotest.php/Index/index', '正常创建测试项目并制定里程碑选定测试系统', '正常', '47', '登录-建项目-建里程碑', '10000', '腰立辉', null, '2016-09-25 21:53:23', '0000-00-00 00:00:00');
INSERT INTO `tp_scene` VALUES ('10009', '7', 'M', '2', '默认', '默认', '', '11', '正常', '45', '', '10004', '腰立辉', null, '2016-09-26 09:08:25', '0000-00-00 00:00:00');
INSERT INTO `tp_scene` VALUES ('10010', '1', 'M', '2', '管理员', '默认', '', '添加TOP100车款', '正常', '46', '', '0', '腰立辉', '腰立辉', '2016-09-27 16:47:46', '2016-09-27 16:47:46');
INSERT INTO `tp_scene` VALUES ('10011', '2', 'M', '2', '管理员', '默认', '', '给TOP100车款批量配置电销和买顾', '正常', '46', '', '0', '腰立辉', '腰立辉', '2016-09-27 16:57:28', '2016-09-27 16:57:28');
INSERT INTO `tp_scene` VALUES ('10012', '3', 'M', '2', '默认', '默认', '', '【功能】车型及报价员配置管理', '正常', '46', '', '0', '腰立辉', '腰立辉', '2016-10-10 13:32:31', '2016-10-10 13:32:31');
INSERT INTO `tp_scene` VALUES ('10013', '4', 'M', '2', '默认', '默认', '', '【功能】价格收集管理（业务管理）', '正常', '46', '', '0', '腰立辉', '腰立辉', '2016-10-10 13:33:14', '2016-10-10 13:33:14');
INSERT INTO `tp_scene` VALUES ('10014', '5', 'M', '2', '默认', '默认', '', '【功能】车型价格库', '正常', '46', '', '0', '腰立辉', '腰立辉', '2016-10-10 13:33:49', '2016-10-10 13:33:49');
INSERT INTO `tp_scene` VALUES ('10015', '6', 'M', '2', '默认', '默认', '', '【功能】价格库存管理', '正常', '46', '', '0', '腰立辉', '腰立辉', '2016-10-10 13:34:32', '2016-10-10 13:34:32');
INSERT INTO `tp_scene` VALUES ('10016', '7', 'M', '2', '默认', '默认', '', '【功能】库存价格收集', '正常', '46', '', '0', '腰立辉', '腰立辉', '2016-10-10 13:34:51', '2016-10-10 13:34:51');
INSERT INTO `tp_scene` VALUES ('10017', '8', 'M', '2', '【功能】', '默认', '', '登陆模块', '正常', '45', '', '0', '腰立辉', '腰立辉', '2016-10-13 09:56:38', '2016-10-13 09:56:38');
INSERT INTO `tp_scene` VALUES ('10018', '9', 'M', '2', '【功能】', '默认', '', '产品库-产品管理', '正常', '45', '', '0', '腰立辉', '腰立辉', '2016-10-13 09:57:06', '2016-10-13 09:57:06');
INSERT INTO `tp_scene` VALUES ('10019', '10', 'M', '2', '【功能】', '默认', '', '项目管理', '正常', '45', '', '0', '腰立辉', '腰立辉', '2016-10-13 09:57:21', '2016-10-13 09:57:21');

-- ----------------------------
-- Table structure for `tp_scenefunc`
-- ----------------------------
DROP TABLE IF EXISTS `tp_scenefunc`;
CREATE TABLE `tp_scenefunc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sn` int(11) DEFAULT NULL,
  `funcid` int(11) DEFAULT NULL,
  `sysno` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `func` varchar(255) DEFAULT NULL,
  `sceneid` int(11) DEFAULT NULL,
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
) ENGINE=MyISAM AUTO_INCREMENT=10118 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_scenefunc
-- ----------------------------
INSERT INTO `tp_scenefunc` VALUES ('10038', '3', '10206', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '新增车型', '10010', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-09-27 16:56:09', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10039', '4', '10209', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '编辑车型', '10010', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-09-27 16:56:13', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10036', '1', '10202', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按城市', '10010', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-09-27 16:55:50', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10033', '3', '10003', 'Auto.Access', '产品库', '产品-添加', '10000', null, '0', '10003', '已绑定', '正常添加测试产品', '添加成功', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-14 17:02:09', '2016-10-14 17:02:09');
INSERT INTO `tp_scenefunc` VALUES ('10031', '1', '10000', 'Auto.Access', '登陆模块', '登录', '10000', '123', '0', '10000', '已绑定', '正常登陆', '登入系统，并显示用户姓名', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-14 17:02:03', '2016-10-14 17:02:03');
INSERT INTO `tp_scenefunc` VALUES ('10032', '4', '10002', 'Auto.Access', '产品库', '产品列表', '10000', '', '0', '10102', '已绑定', '查看产品列表', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-14 17:02:43', '2016-10-14 17:02:43');
INSERT INTO `tp_scenefunc` VALUES ('10037', '2', '10201', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '车型报价员配置列表', '10010', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-09-27 16:56:04', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10034', '4', '10001', 'Auto.Access', '登陆模块', '注销', '10000', null, '0', '10002', '已绑定', '正常注销', '登出系统', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-14 17:02:19', '2016-10-14 17:02:19');
INSERT INTO `tp_scenefunc` VALUES ('10040', '5', '10210', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '修改买顾', '10010', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-09-27 16:56:22', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10041', '6', '10211', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '修改电销', '10010', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-09-27 16:56:24', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10042', '1', '10202', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按城市', '10011', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-09-27 16:57:55', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10043', '2', '10201', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '车型报价员配置列表', '10011', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-09-27 16:57:57', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10044', '6', '10207', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '批量配置买顾报价员', '10011', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-09-27 17:03:02', '2016-09-27 17:03:02');
INSERT INTO `tp_scenefunc` VALUES ('10045', '7', '10208', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '批量配置电销报价员', '10011', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-09-27 17:03:08', '2016-09-27 17:03:08');
INSERT INTO `tp_scenefunc` VALUES ('10046', '3', '10203', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按买顾配置状态', '10011', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-09-27 17:02:44', '2016-09-27 17:02:44');
INSERT INTO `tp_scenefunc` VALUES ('10047', '4', '10204', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按电销配置状态', '10011', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-09-27 17:02:50', '2016-09-27 17:02:50');
INSERT INTO `tp_scenefunc` VALUES ('10048', '5', '10205', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按品牌车型', '10011', '', '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-09-27 17:02:54', '2016-09-27 17:02:54');
INSERT INTO `tp_scenefunc` VALUES ('10049', '1', '10201', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '车型报价员配置列表', '10012', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:35:39', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10050', '2', '10202', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按城市', '10012', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:35:43', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10051', '3', '10203', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按买顾配置状态', '10012', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:35:45', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10052', '4', '10204', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按电销配置状态', '10012', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:35:48', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10053', '5', '10205', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '查询-按品牌车型', '10012', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:35:54', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10054', '6', '10206', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '新增车型', '10012', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:35:56', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10055', '7', '10207', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '批量配置买顾报价员', '10012', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:36:00', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10056', '8', '10208', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '批量配置电销报价员', '10012', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:36:06', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10057', '9', '10209', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '编辑车型', '10012', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:36:09', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10058', '10', '10210', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '修改买顾', '10012', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:36:11', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10059', '11', '10211', 'OP.HmcDSCRM', '价格库存管理-车型及报价配置管理', '修改电销', '10012', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:36:13', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10060', '1', '10212', 'OP.HmcDSCRM', '业务管理-价格收集管理', '城市买顾价格收集表', '10013', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:36:33', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10061', '2', '10213', 'OP.HmcDSCRM', '业务管理-价格收集管理', '查询-按城市', '10013', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:36:35', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10062', '3', '10214', 'OP.HmcDSCRM', '业务管理-价格收集管理', '查询-按买顾', '10013', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:36:37', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10063', '4', '10215', 'OP.HmcDSCRM', '业务管理-价格收集管理', '明细-买顾入口', '10013', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:36:40', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10064', '5', '10216', 'OP.HmcDSCRM', '业务管理-价格收集管理', '明细-未报价车款入口', '10013', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:36:42', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10065', '6', '10217', 'OP.HmcDSCRM', '业务管理-价格收集管理', '明细-价格过期车款入口', '10013', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:36:44', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10066', '7', '10218', 'OP.HmcDSCRM', '业务管理-价格收集管理', '明细-查询按选择城市', '10013', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:36:46', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10067', '8', '10219', 'OP.HmcDSCRM', '业务管理-价格收集管理', '明细-查询按车型车款', '10013', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:36:50', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10068', '9', '10220', 'OP.HmcDSCRM', '业务管理-价格收集管理', '明细-查询按价格状态', '10013', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:36:52', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10069', '1', '10221', 'OP.HmcDSCRM', '价格库存管理-车型价格库', '车型价格列表', '10014', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:37:18', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10070', '2', '10222', 'OP.HmcDSCRM', '价格库存管理-车型价格库', '查询-按选择城市', '10014', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:37:20', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10071', '3', '10223', 'OP.HmcDSCRM', '价格库存管理-车型价格库', '查询-按价格状态', '10014', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:37:24', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10072', '4', '10224', 'OP.HmcDSCRM', '价格库存管理-车型价格库', '查询-按车型车款', '10014', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:37:27', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10073', '5', '10225', 'OP.HmcDSCRM', '价格库存管理-车型价格库', '添加价格信息', '10014', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:37:29', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10074', '6', '10226', 'OP.HmcDSCRM', '价格库存管理-车型价格库', '设置显示列', '10014', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:37:31', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10075', '1', '10227', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-即将过期', '价格即将过期-车款列表', '10015', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:37:52', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10076', '2', '10228', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-即将过期', '提交报价入口', '10015', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:37:54', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10077', '3', '10229', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-新增车款', '价格新增车款-车款列表', '10015', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:38:00', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10078', '4', '10230', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-新增车款', '提交报价-入口', '10015', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:38:03', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10079', '5', '10231', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-我的报价', '报价列表', '10015', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:38:08', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10080', '6', '10232', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-我的报价', '查询-按价格状态', '10015', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:38:10', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10081', '7', '10233', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-我的报价', '查询-按车型车款', '10015', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:38:12', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10082', '8', '10234', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-我的报价', '添加价格信息', '10015', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:38:14', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10083', '9', '10235', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-我的报价', '设置显示列', '10015', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:38:16', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10084', '10', '10236', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-我的报价', '价格修改', '10015', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:38:18', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10085', '11', '10237', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-待确定价格', '待确定价格-车款列表', '10015', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:38:30', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10086', '12', '10238', 'OP.HmcDSCRM', '价格库存管理-价格库存管理-待确定价格', '确认价格', '10015', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:38:33', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10087', '1', '10239', 'OP.HmcDSCRM', '价格库存管理-库存价格收集', '显示报价城市', '10016', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:38:46', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10088', '2', '10240', 'OP.HmcDSCRM', '价格库存管理-库存价格收集', '选择品牌车型报价（NO车款）', '10016', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:38:48', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10089', '3', '10241', 'OP.HmcDSCRM', '价格库存管理-库存价格收集', '选择车款报价', '10016', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:38:50', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10090', '4', '10242', 'OP.HmcDSCRM', '价格库存管理-库存价格收集', '选择优惠金额报价', '10016', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:38:52', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10091', '5', '10243', 'OP.HmcDSCRM', '价格库存管理-库存价格收集', '选择优惠百分比报价', '10016', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:38:55', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10092', '6', '10244', 'OP.HmcDSCRM', '价格库存管理-库存价格收集', '保存报价', '10016', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:38:57', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10093', '7', '10245', 'OP.HmcDSCRM', '价格库存管理-库存价格收集', '保存并创建下一条', '10016', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-10 13:39:00', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10094', '1', '10000', 'Auto.Access', '登陆模块', '登录', '10017', '123', '0', '10000', '已绑定', '正常登陆', '登入系统，并显示用户姓名', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-14 16:58:31', '2016-10-14 16:58:31');
INSERT INTO `tp_scenefunc` VALUES ('10095', '2', '10001', 'Auto.Access', '登陆模块', '注销', '10017', null, '0', '10002', '已绑定', '正常注销', '登出系统', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-14 16:59:00', '2016-10-14 16:59:00');
INSERT INTO `tp_scenefunc` VALUES ('10096', '3', '10005', 'Auto.Access', '登陆模块', '改密', '10017', null, '0', '10101', '已绑定', '正常修改密码', '修改成功1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', '腰立辉', '2016-10-14 17:00:29', '2016-10-14 17:00:29');
INSERT INTO `tp_scenefunc` VALUES ('10097', '1', '10002', 'Auto.Access', '产品库', '产品列表', '10018', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:02:39', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10098', '2', '10003', 'Auto.Access', '产品库', '产品-添加', '10018', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:02:41', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10099', '3', '10004', 'Auto.Access', '产品库', '产品-编辑', '10018', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:02:44', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10100', '4', '10006', 'Auto.Access', '产品库', '系统-入口', '10018', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:02:46', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10101', '1', '10010', 'Auto.Access', '测试项目', '分组项目列表', '10019', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:02:58', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10102', '2', '10011', 'Auto.Access', '测试项目', '切换分组', '10019', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:03:01', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10103', '3', '10007', 'Auto.Access', '测试项目', '项目-添加', '10019', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:03:03', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10104', '4', '10008', 'Auto.Access', '测试项目', '项目-编辑', '10019', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:03:05', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10105', '5', '10009', 'Auto.Access', '测试项目', '项目-详情', '10019', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:03:07', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10106', '6', '10012', 'Auto.Access', '测试项目', '快速标记状态', '10019', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:03:12', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10107', '7', '10013', 'Auto.Access', '测试项目', '项目-里程碑入口', '10019', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:03:14', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10108', '8', '10014', 'Auto.Access', '测试项目', '项目-风险入口', '10019', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:03:17', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10109', '9', '10015', 'Auto.Access', '测试项目', '项目-系统入口', '10019', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:03:19', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10110', '10', '10016', 'Auto.Access', '测试项目', '项目-功能点入口', '10019', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:03:21', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10111', '11', '10017', 'Auto.Access', '测试项目', '项目-范围入口', '10019', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:03:24', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10112', '12', '10018', 'Auto.Access', '测试项目', '项目-场景入口', '10019', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:03:31', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10113', '13', '10019', 'Auto.Access', '测试项目', '项目-控件库入口', '10019', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:03:35', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10114', '14', '10020', 'Auto.Access', '测试项目', '项目-用例库入口', '10019', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-13 10:03:37', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10116', '1', '10000', 'Auto.Access', '登陆模块', '登录', '10008', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-14 13:10:02', '0000-00-00 00:00:00');
INSERT INTO `tp_scenefunc` VALUES ('10117', '1', '10000', 'Auto.Access', '登陆模块', '登录', '10006', null, '0', null, '未绑定', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '腰立辉', null, '2016-10-14 14:51:03', '0000-00-00 00:00:00');

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
) ENGINE=MyISAM AUTO_INCREMENT=1019 DEFAULT CHARSET=utf8;

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
INSERT INTO `tp_stage` VALUES ('1015', '1', '编写测试计划', '46', '2016-09-26', '2016-09-27', '已完成', '无文档', '腰立辉', '腰立辉', '2016-09-28 15:47:40', '2016-09-28 15:47:40');
INSERT INTO `tp_stage` VALUES ('1016', '2', '编写测试用例', '46', '2016-09-26', '2016-10-09', '已完成', '测试用例', '腰立辉', '腰立辉', '2016-10-10 13:28:07', '2016-10-10 13:28:07');
INSERT INTO `tp_stage` VALUES ('1017', '3', '功能验证', '46', '2016-10-11', '2016-10-11', '进行中', '无文档', '腰立辉', '腰立辉', '2016-10-10 13:28:13', '2016-09-28 15:48:17');
INSERT INTO `tp_stage` VALUES ('1018', '4', '第一轮测试', '46', '2016-10-11', '2016-10-12', '未开始', '无文档', '腰立辉', '腰立辉', '2016-09-28 15:48:36', '2016-09-28 15:48:36');

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
) ENGINE=MyISAM AUTO_INCREMENT=10029 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_stagetester
-- ----------------------------
INSERT INTO `tp_stagetester` VALUES ('10009', '1', 'M', '1011', '腰立辉', '2016-09-24', '2016-09-25', '8', '0', '腰立辉', '腰立辉', '2016-09-24 20:45:23', '2016-09-24 20:45:23');
INSERT INTO `tp_stagetester` VALUES ('10010', '1', 'M', '1013', '李小梅', '2016-09-24', '2016-09-25', '8', '0', '腰立辉', '腰立辉', '2016-09-24 20:45:46', '2016-09-24 20:45:46');
INSERT INTO `tp_stagetester` VALUES ('10011', '2', 'M', '1013', '曹玉芳', '2016-09-24', '2016-09-25', '8', '0', '腰立辉', '腰立辉', '2016-09-24 20:45:49', '2016-09-24 20:45:49');
INSERT INTO `tp_stagetester` VALUES ('10012', '1', 'M', '1000', '腰立辉', '2016-09-25', '2016-09-26', '8', '0', '腰立辉', '腰立辉', '2016-09-25 13:38:02', '2016-09-25 13:38:02');
INSERT INTO `tp_stagetester` VALUES ('10015', '1', 'M', '1008', '腰立辉', '2016-09-25', '2016-09-26', '8', '0', '腰立辉', '腰立辉', '2016-09-25 13:45:45', '2016-09-25 13:45:45');
INSERT INTO `tp_stagetester` VALUES ('10016', '2', 'M', '1003', '腰立辉', '2016-10-13', '2016-10-14', '8', '0', '腰立辉', '腰立辉', '2016-10-13 09:53:48', '2016-10-13 09:53:48');
INSERT INTO `tp_stagetester` VALUES ('10025', '1', 'M', '1015', '曹玉芳', '2016-09-28', '2016-09-29', '8', '0', '腰立辉', '腰立辉', '2016-09-28 15:48:49', '2016-09-28 15:48:49');
INSERT INTO `tp_stagetester` VALUES ('10026', '1', 'M', '1016', '腰立辉', '2016-09-26', '2016-10-09', '24', '0', '腰立辉', '腰立辉', '2016-09-28 15:49:25', '2016-09-28 15:49:25');
INSERT INTO `tp_stagetester` VALUES ('10027', '1', 'M', '1017', '曹玉芳', '2016-10-10', '2016-10-11', '8', '0', '腰立辉', '腰立辉', '2016-10-10 13:28:24', '2016-10-10 13:28:24');
INSERT INTO `tp_stagetester` VALUES ('10028', '2', 'M', '1017', '腰立辉', '2016-10-10', '2016-10-11', '8', '0', '腰立辉', '腰立辉', '2016-10-10 13:28:28', '2016-10-10 13:28:28');

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
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

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
INSERT INTO `tp_system` VALUES ('57', 'OP.maiche', '易车运营支持中心', '正常', '1', null, null, null, null, null, '腰立辉', '腰立辉', '2016-09-27 17:15:00', '2016-09-27 17:15:00');

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
INSERT INTO `tp_user` VALUES ('3', 'guopp', '郭佩佩', null, 'e10adc3949ba59abbe56e057f20f883e', '在职', '354', '惠买车-产品研发中心-质量管理部', 'B', null, null, null, '测试工程师', null, null, '2016-10-14 17:27:39', null);
INSERT INTO `tp_user` VALUES ('11', 'yaolh', '腰立辉', '57dcf1cd1186b.jpeg', 'c33367701511b4f6020ec61ded352059', '在职', '6270', '惠买车-产品研发中心-质量管理部', 'OP', '18801043607', '', 'yaolh@yiche.com', '高级测试经理', '腰立辉', '腰立辉', '2016-09-22 16:54:21', '2016-09-17 15:33:33');
INSERT INTO `tp_user` VALUES ('5', 'kongy', '孔洋', null, 'e10adc3949ba59abbe56e057f20f883e', '在职', '8028', '惠买车-产品研发中心-质量管理部', 'OP', '13641171889', null, 'kongy@bitauto.com', '高级测试工程师', null, null, '2016-09-12 11:34:09', null);
INSERT INTO `tp_user` VALUES ('6', 'lixm', '李小梅', null, 'e10adc3949ba59abbe56e057f20f883e', '在职', '354', '惠买车-产品研发中心-质量管理部', 'OP', null, null, null, '测试工程师', null, '腰立辉', '2016-10-14 17:30:10', '2016-10-14 17:30:10');
INSERT INTO `tp_user` VALUES ('8', 'mengjl', '孟军良', null, '56ea27eb053fcaec7486bd0ed849edd4', '在职', '5714', '惠买车-产品研发中心-质量管理部', 'Auto', '13717659790', '', 'mengjl@bitauto.com', '质量总监', null, '腰立辉', '2016-09-12 15:16:06', '2016-09-12 15:16:06');
INSERT INTO `tp_user` VALUES ('9', 'shidd', '师冬冬', '', 'e10adc3949ba59abbe56e057f20f883e', '在职', '9204', '惠买车-产品研发中心-质量管理部', 'C', '', '', '', '测试工程师', null, '腰立辉', '2016-09-26 17:13:48', '2016-09-16 19:18:44');
INSERT INTO `tp_user` VALUES ('10', 'tianl', '田亮', '', 'e10adc3949ba59abbe56e057f20f883e', '在职', '6851', '惠买车-产品研发中心-质量管理部', 'B', '15811407311', '', 'tianl@bitauto.com', '测试工程师', '腰立辉', '腰立辉', '2016-09-22 09:25:01', '2016-09-16 18:59:52');
INSERT INTO `tp_user` VALUES ('24', 'wangp', '王朋', null, 'e10adc3949ba59abbe56e057f20f883e', '在职', '10520', '惠买车-产品研发中心-质量管理部', 'C', null, null, null, null, null, null, '2016-09-26 17:17:47', null);
INSERT INTO `tp_user` VALUES ('25', 'yuedd', '岳丹丹', null, 'e10adc3949ba59abbe56e057f20f883e', '在职', '9841', '惠买车-产品研发中心-质量管理部', 'C', null, null, null, null, null, null, '2016-09-26 17:18:02', null);
INSERT INTO `tp_user` VALUES ('26', 'zhengax', '郑阿旬', null, 'e10adc3949ba59abbe56e057f20f883e', '在职', '8110', '惠买车-产品研发中心-质量管理部', 'B', null, null, null, null, null, null, '2016-09-26 17:18:13', null);
INSERT INTO `tp_user` VALUES ('27', 'wangmd', '王梦蝶', null, 'e10adc3949ba59abbe56e057f20f883e', '在职', '7174', '惠买车-产品研发中心-质量管理部', 'OP', null, null, null, null, null, null, '2016-09-26 17:17:58', null);
INSERT INTO `tp_user` VALUES ('28', 'zhangxia', '张霞', null, 'e10adc3949ba59abbe56e057f20f883e', '在职', '5715', '惠买车-产品研发中心-质量管理部', 'C', null, null, null, null, null, null, '2016-09-26 17:22:34', null);
INSERT INTO `tp_user` VALUES ('29', 'wangxt', '王鑫彤', null, 'e10adc3949ba59abbe56e057f20f883e', '在职', null, '惠买车-产品研发中心-质量管理部', 'B', null, null, null, null, null, '腰立辉', '2016-10-14 17:30:23', '2016-10-14 17:30:23');
