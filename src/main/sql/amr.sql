/*


Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50540
Source Host           : 127.0.0.1:3306
Source Database       : amr

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2019-06-13 08:15:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for action
-- ----------------------------
DROP TABLE IF EXISTS `action`;
CREATE TABLE `action` (
  `actid` int(11) NOT NULL AUTO_INCREMENT,
  `gid` int(11) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `sflag` int(11) DEFAULT NULL,
  PRIMARY KEY (`actid`),
  KEY `fk_gid3` (`gid`),
  CONSTRAINT `fk_gid3` FOREIGN KEY (`gid`) REFERENCES `groups` (`gid`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of action
-- ----------------------------
INSERT INTO `action` VALUES ('1', '1', '增加管理员', '/pages/admin/addPre.action', '1');
INSERT INTO `action` VALUES ('2', '1', '增加管理员', '/pages/admin/add.action', '0');
INSERT INTO `action` VALUES ('3', '1', '管理员列表', '/pages/admin/list.action', '1');
INSERT INTO `action` VALUES ('4', '2', '部门列表', '/pages/dept/list.action', '1');
INSERT INTO `action` VALUES ('5', '3', '用品分类', '/pages/type/list.action', '1');
INSERT INTO `action` VALUES ('6', '2', '查看部门权限', '/pages/groups/list.action', '0');
INSERT INTO `action` VALUES ('7', '2', '部门修改', '/pages/dept/edit.action', '0');
INSERT INTO `action` VALUES ('8', '3', '查看子分类', '/pages/type/listSubtype.action', '0');
INSERT INTO `action` VALUES ('9', '3', '分类修改', '/pages/type/edit.action', '0');
INSERT INTO `action` VALUES ('10', '3', '子分类修改', '/pages/type/editSubtype.action', '0');
INSERT INTO `action` VALUES ('11', '4', '增加员工', '/pages/emp/addPre.action', '1');
INSERT INTO `action` VALUES ('12', '4', '增加员工', '/pages/emp/add.action', '0');
INSERT INTO `action` VALUES ('13', '4', '员工列表', '/pages/emp/list.action', '1');
INSERT INTO `action` VALUES ('14', '4', '编辑员工', '/pages/emp/editPre.action', '0');
INSERT INTO `action` VALUES ('15', '4', '编辑员工', '/pages/emp/edit.action', '0');
INSERT INTO `action` VALUES ('16', '5', '办公用品列表', '/pages/res/list.action', '1');
INSERT INTO `action` VALUES ('17', '5', '领取记录', '/pages/res/emp_list.action', '1');
INSERT INTO `action` VALUES ('18', '5', '待领清单', '/pages/res/preget.action', '1');
INSERT INTO `action` VALUES ('19', '5', '加入领取清单', '/pages/take/add.action', '0');
INSERT INTO `action` VALUES ('20', '5', '修改领取清单', '/pages/take/edit.action', '0');
INSERT INTO `action` VALUES ('21', '5', '删除领取清单', '/pages/take/rm.action', '0');
INSERT INTO `action` VALUES ('22', '5', '领取申请', '/pages/take/get.action', '0');
INSERT INTO `action` VALUES ('23', '6', '办公用品列表', '/pages/res/list.action', '1');
INSERT INTO `action` VALUES ('24', '6', '领取记录', '/pages/res/emp_list.action', '1');
INSERT INTO `action` VALUES ('25', '6', '待购清单', '/pages/res/prebuy.action', '1');
INSERT INTO `action` VALUES ('26', '6', '待领清单', '/pages/res/preget.action', '1');
INSERT INTO `action` VALUES ('27', '6', '我的申请', '/pages/purchase/apply.action', '1');
INSERT INTO `action` VALUES ('28', '6', '领取审批', '/pages/res/audit.action', '1');
INSERT INTO `action` VALUES ('29', '6', '购入申请', '/pages/purchase/list.action', '0');
INSERT INTO `action` VALUES ('30', '6', '提交购买申请', '/pages/purchase/add.action', '0');
INSERT INTO `action` VALUES ('31', '6', '加入领取清单', '/pages/take/add.action', '0');
INSERT INTO `action` VALUES ('32', '6', '修改领取清单', '/pages/take/edit.action', '0');
INSERT INTO `action` VALUES ('33', '6', '删除领取清单', '/pages/take/rm.action', '0');
INSERT INTO `action` VALUES ('34', '6', '领取申请', '/pages/take/get.action', '0');
INSERT INTO `action` VALUES ('35', '7', '办公用品列表', '/pages/res/list.action', '1');
INSERT INTO `action` VALUES ('36', '7', '领取记录', '/pages/res/emp_list.action', '1');
INSERT INTO `action` VALUES ('37', '7', '加入领取清单', '/pages/take/add.action', '0');
INSERT INTO `action` VALUES ('38', '7', '修改领取清单', '/pages/take/edit.action', '0');
INSERT INTO `action` VALUES ('39', '7', '删除领取清单', '/pages/take/rm.action', '0');
INSERT INTO `action` VALUES ('40', '7', '领取申请', '/pages/take/get.action', '0');
INSERT INTO `action` VALUES ('41', '7', '购入申请', '/pages/purchase/list.action', '1');
INSERT INTO `action` VALUES ('42', '7', '购入审核', '/pages/purchase/audit.action', '0');

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept` (
  `did` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `sflag` int(11) DEFAULT NULL,
  PRIMARY KEY (`did`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES ('1', '管理部', '1');
INSERT INTO `dept` VALUES ('2', '人事部', '0');
INSERT INTO `dept` VALUES ('3', '行政部', '0');
INSERT INTO `dept` VALUES ('4', '市场部', '0');
INSERT INTO `dept` VALUES ('5', '财务部', '0');

-- ----------------------------
-- Table structure for dept_groups
-- ----------------------------
DROP TABLE IF EXISTS `dept_groups`;
CREATE TABLE `dept_groups` (
  `did` int(11) DEFAULT NULL,
  `gid` int(11) DEFAULT NULL,
  KEY `fk_did` (`did`),
  KEY `fk_gid` (`gid`),
  CONSTRAINT `fk_did` FOREIGN KEY (`did`) REFERENCES `dept` (`did`) ON DELETE CASCADE,
  CONSTRAINT `fk_gid` FOREIGN KEY (`gid`) REFERENCES `groups` (`gid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dept_groups
-- ----------------------------
INSERT INTO `dept_groups` VALUES ('1', '1');
INSERT INTO `dept_groups` VALUES ('1', '2');
INSERT INTO `dept_groups` VALUES ('1', '3');
INSERT INTO `dept_groups` VALUES ('2', '4');
INSERT INTO `dept_groups` VALUES ('2', '5');
INSERT INTO `dept_groups` VALUES ('3', '6');
INSERT INTO `dept_groups` VALUES ('4', '5');
INSERT INTO `dept_groups` VALUES ('5', '7');

-- ----------------------------
-- Table structure for details
-- ----------------------------
DROP TABLE IF EXISTS `details`;
CREATE TABLE `details` (
  `did` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `stid` int(11) DEFAULT NULL,
  `tid` int(11) DEFAULT NULL,
  `rid` int(11) DEFAULT NULL,
  `eid` int(11) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `photo` varchar(50) DEFAULT NULL,
  `rflag` int(11) DEFAULT NULL,
  PRIMARY KEY (`did`),
  KEY `fk_pid6` (`pid`),
  KEY `fk_tid6` (`tid`),
  KEY `fk_stid6` (`stid`),
  KEY `fk_rid6` (`rid`),
  KEY `fk_eid6` (`eid`),
  CONSTRAINT `fk_eid6` FOREIGN KEY (`eid`) REFERENCES `emp` (`eid`),
  CONSTRAINT `fk_pid6` FOREIGN KEY (`pid`) REFERENCES `purchase` (`pid`),
  CONSTRAINT `fk_rid6` FOREIGN KEY (`rid`) REFERENCES `res` (`rid`),
  CONSTRAINT `fk_stid6` FOREIGN KEY (`stid`) REFERENCES `subtype` (`stid`),
  CONSTRAINT `fk_tid6` FOREIGN KEY (`tid`) REFERENCES `type` (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of details
-- ----------------------------

-- ----------------------------
-- Table structure for emp
-- ----------------------------
DROP TABLE IF EXISTS `emp`;
CREATE TABLE `emp` (
  `eid` int(11) NOT NULL,
  `did` int(11) DEFAULT NULL,
  `lid` int(11) DEFAULT NULL,
  `heid` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `salary` double DEFAULT NULL,
  `note` text,
  `aflag` int(11) DEFAULT NULL,
  `sex` varchar(10) DEFAULT '男',
  `photo` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`eid`),
  KEY `fk_did2` (`did`),
  KEY `fk_lid2` (`lid`),
  KEY `fk_heid2` (`heid`),
  CONSTRAINT `fk_did2` FOREIGN KEY (`did`) REFERENCES `dept` (`did`),
  CONSTRAINT `fk_heid2` FOREIGN KEY (`heid`) REFERENCES `emp` (`eid`),
  CONSTRAINT `fk_lid2` FOREIGN KEY (`lid`) REFERENCES `level` (`lid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of emp
-- ----------------------------
INSERT INTO `emp` VALUES ('1', '1', '7', null, 'aa', '4124bc0a9335c27f086f24ba207a4912', '10086', '200000', '', '1', '男', 'nophoto.png');
INSERT INTO `emp` VALUES ('1000', '1', null, null, 'Fashion科技', '75a7fda3fec986daa649ddbee665c542', '110', '1333', '', '1', '男', 'nophoto.png');
INSERT INTO `emp` VALUES ('2001', '2', '4', null, '隔壁老王', '5D41402ABC4B2A76B9719D911017C592', '120', '7000', null, '1', '男', 'nophoto.png');
INSERT INTO `emp` VALUES ('3001', '3', '4', null, '老孙', '5D41402ABC4B2A76B9719D911017C592', '130', '7500', null, '1', '男', 'nophoto.png');
INSERT INTO `emp` VALUES ('4001', '4', '4', null, '老花', '5D41402ABC4B2A76B9719D911017C592', '130', '7500', null, '0', '男', 'nophoto.png');
INSERT INTO `emp` VALUES ('5001', '5', '4', null, '老田', '5D41402ABC4B2A76B9719D911017C592', '130', '7500', null, '0', '男', 'nophoto.png');
INSERT INTO `emp` VALUES ('5002', null, null, null, 'qwe', '76d80224611fc919a5d54f0ff9fba446', '123', '123', '', '0', '男', null);
INSERT INTO `emp` VALUES ('5003', null, null, null, 'qwe', '76d80224611fc919a5d54f0ff9fba446', '123', '123', '', '0', '男', null);
INSERT INTO `emp` VALUES ('5004', null, '7', null, 'qwe', '76d80224611fc919a5d54f0ff9fba446', '123', '123', 'qweqweqwe', '0', '男', null);

-- ----------------------------
-- Table structure for groups
-- ----------------------------
DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups` (
  `gid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of groups
-- ----------------------------
INSERT INTO `groups` VALUES ('1', '权限管理', '管理部-权限组');
INSERT INTO `groups` VALUES ('2', '人事管理', '管理部-权限组');
INSERT INTO `groups` VALUES ('3', '办公用品', '管理部-权限组');
INSERT INTO `groups` VALUES ('4', '人事管理', '人事部-权限组');
INSERT INTO `groups` VALUES ('5', '办公用品', '非行政部-权限组');
INSERT INTO `groups` VALUES ('6', '办公用品', '行政部-权限组');
INSERT INTO `groups` VALUES ('7', '办公用品', '财务部-权限组');

-- ----------------------------
-- Table structure for level
-- ----------------------------
DROP TABLE IF EXISTS `level`;
CREATE TABLE `level` (
  `lid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `losal` double DEFAULT NULL,
  `hisal` double DEFAULT NULL,
  PRIMARY KEY (`lid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of level
-- ----------------------------
INSERT INTO `level` VALUES ('1', '实习生', '800', '1500');
INSERT INTO `level` VALUES ('2', '普通员工', '1501', '3500');
INSERT INTO `level` VALUES ('3', '部门主管', '3501', '5000');
INSERT INTO `level` VALUES ('4', '部门经理', '5001', '8000');
INSERT INTO `level` VALUES ('5', '总监', '8001', '12000');
INSERT INTO `level` VALUES ('6', '副总裁', '12001', '20000');
INSERT INTO `level` VALUES ('7', '总裁', '20001', '99999');

-- ----------------------------
-- Table structure for purchase
-- ----------------------------
DROP TABLE IF EXISTS `purchase`;
CREATE TABLE `purchase` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `eid` int(11) DEFAULT NULL,
  `meid` int(11) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `pubdate` datetime DEFAULT NULL,
  `note` text,
  PRIMARY KEY (`pid`),
  KEY `fk_eid5` (`eid`),
  KEY `fk_meid5` (`meid`),
  CONSTRAINT `fk_eid5` FOREIGN KEY (`eid`) REFERENCES `emp` (`eid`) ON DELETE CASCADE,
  CONSTRAINT `fk_meid5` FOREIGN KEY (`meid`) REFERENCES `emp` (`eid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of purchase
-- ----------------------------

-- ----------------------------
-- Table structure for res
-- ----------------------------
DROP TABLE IF EXISTS `res`;
CREATE TABLE `res` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `tid` int(11) DEFAULT NULL,
  `stid` int(11) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `indate` datetime DEFAULT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `rflag` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  PRIMARY KEY (`rid`),
  KEY `fk_tid3` (`tid`),
  KEY `fk_stid3` (`stid`),
  CONSTRAINT `fk_stid3` FOREIGN KEY (`stid`) REFERENCES `subtype` (`stid`),
  CONSTRAINT `fk_tid3` FOREIGN KEY (`tid`) REFERENCES `type` (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of res
-- ----------------------------

-- ----------------------------
-- Table structure for subtype
-- ----------------------------
DROP TABLE IF EXISTS `subtype`;
CREATE TABLE `subtype` (
  `stid` int(11) NOT NULL AUTO_INCREMENT,
  `tid` int(11) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`stid`),
  KEY `fk_tid2` (`tid`),
  CONSTRAINT `fk_tid2` FOREIGN KEY (`tid`) REFERENCES `type` (`tid`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of subtype
-- ----------------------------
INSERT INTO `subtype` VALUES ('1', '1', '报告夹');
INSERT INTO `subtype` VALUES ('2', '1', '分类文件夹');
INSERT INTO `subtype` VALUES ('3', '1', '电脑夹');
INSERT INTO `subtype` VALUES ('4', '1', '档案袋');
INSERT INTO `subtype` VALUES ('5', '1', '名片盒');
INSERT INTO `subtype` VALUES ('6', '1', '拉链袋');
INSERT INTO `subtype` VALUES ('7', '1', '资料夹');
INSERT INTO `subtype` VALUES ('8', '1', '文件蓝');
INSERT INTO `subtype` VALUES ('9', '1', '图纸夹');
INSERT INTO `subtype` VALUES ('10', '1', '挂劳夹');
INSERT INTO `subtype` VALUES ('11', '1', '文件套');
INSERT INTO `subtype` VALUES ('12', '1', '资料册');
INSERT INTO `subtype` VALUES ('13', '1', '票据夹');
INSERT INTO `subtype` VALUES ('14', '1', '公事包');
INSERT INTO `subtype` VALUES ('15', '2', '起钉器');
INSERT INTO `subtype` VALUES ('16', '2', '打孔器');
INSERT INTO `subtype` VALUES ('17', '2', '美工刀');
INSERT INTO `subtype` VALUES ('18', '2', '计算器');
INSERT INTO `subtype` VALUES ('19', '2', '订书机');
INSERT INTO `subtype` VALUES ('20', '2', '剪刀');
INSERT INTO `subtype` VALUES ('21', '2', '切纸刀');
INSERT INTO `subtype` VALUES ('22', '2', '胶水');
INSERT INTO `subtype` VALUES ('23', '2', '胶棒');
INSERT INTO `subtype` VALUES ('24', '2', '钉针系列');
INSERT INTO `subtype` VALUES ('25', '2', '壁纸刀');
INSERT INTO `subtype` VALUES ('26', '2', '票夹');
INSERT INTO `subtype` VALUES ('27', '2', '胶带');
INSERT INTO `subtype` VALUES ('28', '2', '仪尺');
INSERT INTO `subtype` VALUES ('29', '2', '胶带座');
INSERT INTO `subtype` VALUES ('30', '2', '圆规');
INSERT INTO `subtype` VALUES ('31', '3', '笔记本电脑');
INSERT INTO `subtype` VALUES ('32', '3', '碎纸机');
INSERT INTO `subtype` VALUES ('33', '3', '考勤机');
INSERT INTO `subtype` VALUES ('34', '3', '过塑机');
INSERT INTO `subtype` VALUES ('35', '3', '电话机');
INSERT INTO `subtype` VALUES ('36', '3', '加湿器');
INSERT INTO `subtype` VALUES ('37', '3', '饮水机');
INSERT INTO `subtype` VALUES ('38', '3', '电风扇');
INSERT INTO `subtype` VALUES ('39', '3', '吸尘器');
INSERT INTO `subtype` VALUES ('40', '3', '投影仪');
INSERT INTO `subtype` VALUES ('41', '3', '打印机');
INSERT INTO `subtype` VALUES ('42', '3', '扫描仪');
INSERT INTO `subtype` VALUES ('43', '4', '账本');
INSERT INTO `subtype` VALUES ('44', '4', '记事本');
INSERT INTO `subtype` VALUES ('45', '4', '算盘');
INSERT INTO `subtype` VALUES ('46', '4', '墨水');
INSERT INTO `subtype` VALUES ('47', '4', '报表');
INSERT INTO `subtype` VALUES ('48', '4', '凭证');
INSERT INTO `subtype` VALUES ('49', '4', '钢笔');
INSERT INTO `subtype` VALUES ('50', '4', '印泥');
INSERT INTO `subtype` VALUES ('51', '4', '科目章');
INSERT INTO `subtype` VALUES ('52', '4', '橡皮筋');
INSERT INTO `subtype` VALUES ('53', '4', '大头针');
INSERT INTO `subtype` VALUES ('54', '4', '回形针');
INSERT INTO `subtype` VALUES ('55', '5', '硒鼓');
INSERT INTO `subtype` VALUES ('56', '5', '墨盒');
INSERT INTO `subtype` VALUES ('57', '5', '色带');
INSERT INTO `subtype` VALUES ('58', '5', '粉盒');
INSERT INTO `subtype` VALUES ('59', '5', '组件');
INSERT INTO `subtype` VALUES ('60', '5', '皮纹纸');
INSERT INTO `subtype` VALUES ('61', '5', '装订透片');
INSERT INTO `subtype` VALUES ('62', '5', '装订胶圈');
INSERT INTO `subtype` VALUES ('63', '5', '彩色卡纸');
INSERT INTO `subtype` VALUES ('64', '5', '不干胶打印纸');
INSERT INTO `subtype` VALUES ('65', '5', '网线转换接头');
INSERT INTO `subtype` VALUES ('66', '5', '电脑打印纸');
INSERT INTO `subtype` VALUES ('67', '5', '电源线');
INSERT INTO `subtype` VALUES ('68', '5', '网线');

-- ----------------------------
-- Table structure for take
-- ----------------------------
DROP TABLE IF EXISTS `take`;
CREATE TABLE `take` (
  `tkid` int(11) NOT NULL AUTO_INCREMENT,
  `geid` int(11) DEFAULT NULL,
  `beid` int(11) DEFAULT NULL,
  `rid` int(11) DEFAULT NULL,
  `gdate` datetime DEFAULT NULL,
  `rdate` datetime DEFAULT NULL,
  `note` text,
  `amount` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`tkid`),
  KEY `fk_geid4` (`geid`),
  KEY `fk_beid4` (`beid`),
  CONSTRAINT `fk_beid4` FOREIGN KEY (`beid`) REFERENCES `emp` (`eid`) ON DELETE CASCADE,
  CONSTRAINT `fk_geid4` FOREIGN KEY (`geid`) REFERENCES `emp` (`eid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of take
-- ----------------------------

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES ('1', '文件档案用品');
INSERT INTO `type` VALUES ('2', '桌面用品');
INSERT INTO `type` VALUES ('3', '办公设备');
INSERT INTO `type` VALUES ('4', '财务用品');
INSERT INTO `type` VALUES ('5', '办公耗材');
