/*
SQLyog Ultimate v12.3.1 (64 bit)
MySQL - 5.7.25-log : Database - amr
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`amr` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `amr`;

/*Table structure for table `action` */

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

/*Data for the table `action` */

insert  into `action`(`actid`,`gid`,`title`,`url`,`sflag`) values 
(1,1,'增加管理员','/pages/admin/addPre.action',1),
(2,1,'增加管理员','/pages/admin/add.action',0),
(3,1,'管理员列表','/pages/admin/list.action',1),
(4,2,'部门列表','/pages/dept/list.action',1),
(5,3,'用品分类','/pages/type/list.action',1),
(6,2,'查看部门权限','/pages/groups/list.action',0),
(7,2,'部门修改','/pages/dept/edit.action',0),
(8,3,'查看子分类','/pages/type/listSubtype.action',0),
(9,3,'分类修改','/pages/type/edit.action',0),
(10,3,'子分类修改','/pages/type/editSubtype.action',0),
(11,4,'增加员工','/pages/emp/addPre.action',1),
(12,4,'增加员工','/pages/emp/add.action',0),
(13,4,'员工列表','/pages/emp/list.action',1),
(14,4,'编辑员工','/pages/emp/editPre.action',0),
(15,4,'编辑员工','/pages/emp/edit.action',0),
(16,5,'办公用品列表','/pages/res/list.action',1),
(17,5,'领取记录','/pages/res/emp_list.action',1),
(18,5,'待领清单','/pages/res/preget.action',1),
(19,5,'加入领取清单','/pages/take/add.action',0),
(20,5,'修改领取清单','/pages/take/edit.action',0),
(21,5,'删除领取清单','/pages/take/rm.action',0),
(22,5,'领取申请','/pages/take/get.action',0),
(23,6,'办公用品列表','/pages/res/list.action',1),
(24,6,'领取记录','/pages/res/emp_list.action',1),
(25,6,'待购清单','/pages/res/prebuy.action',1),
(26,6,'待领清单','/pages/res/preget.action',1),
(27,6,'我的申请','/pages/purchase/apply.action',1),
(28,6,'领取审批','/pages/res/audit.action',1),
(29,6,'购入申请','/pages/purchase/list.action',0),
(30,6,'提交购买申请','/pages/purchase/add.action',0),
(31,6,'加入领取清单','/pages/take/add.action',0),
(32,6,'修改领取清单','/pages/take/edit.action',0),
(33,6,'删除领取清单','/pages/take/rm.action',0),
(34,6,'领取申请','/pages/take/get.action',0),
(35,7,'办公用品列表','/pages/res/list.action',1),
(36,7,'领取记录','/pages/res/emp_list.action',1),
(37,7,'加入领取清单','/pages/take/add.action',0),
(38,7,'修改领取清单','/pages/take/edit.action',0),
(39,7,'删除领取清单','/pages/take/rm.action',0),
(40,7,'领取申请','/pages/take/get.action',0),
(41,7,'购入申请','/pages/purchase/list.action',1),
(42,7,'购入审核','/pages/purchase/audit.action',0);

/*Table structure for table `dept` */

DROP TABLE IF EXISTS `dept`;

CREATE TABLE `dept` (
  `did` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `sflag` int(11) DEFAULT NULL,
  PRIMARY KEY (`did`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `dept` */

insert  into `dept`(`did`,`title`,`sflag`) values 
(1,'管理部',1),
(2,'人事部',0),
(3,'行政部',0),
(4,'市场部',0),
(5,'财务部',0);

/*Table structure for table `dept_groups` */

DROP TABLE IF EXISTS `dept_groups`;

CREATE TABLE `dept_groups` (
  `did` int(11) DEFAULT NULL,
  `gid` int(11) DEFAULT NULL,
  KEY `fk_did` (`did`),
  KEY `fk_gid` (`gid`),
  CONSTRAINT `fk_did` FOREIGN KEY (`did`) REFERENCES `dept` (`did`) ON DELETE CASCADE,
  CONSTRAINT `fk_gid` FOREIGN KEY (`gid`) REFERENCES `groups` (`gid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `dept_groups` */

insert  into `dept_groups`(`did`,`gid`) values 
(1,1),
(1,2),
(1,3),
(2,4),
(2,5),
(3,6),
(4,5),
(5,7);

/*Table structure for table `details` */

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

/*Data for the table `details` */

/*Table structure for table `emp` */

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

/*Data for the table `emp` */

insert  into `emp`(`eid`,`did`,`lid`,`heid`,`name`,`password`,`phone`,`salary`,`note`,`aflag`,`sex`,`photo`) values 
(1000,1,NULL,NULL,'Fashion科技','5D41402ABC4B2A76B9719D911017C592','110',NULL,NULL,1,'男','nophoto.png'),
(2001,2,4,NULL,'隔壁老王','5D41402ABC4B2A76B9719D911017C592','120',7000,NULL,0,'男','nophoto.png'),
(3001,3,4,NULL,'老孙','5D41402ABC4B2A76B9719D911017C592','130',7500,NULL,0,'男','nophoto.png'),
(4001,4,4,NULL,'老花','5D41402ABC4B2A76B9719D911017C592','130',7500,NULL,0,'男','nophoto.png'),
(5001,5,4,NULL,'老田','5D41402ABC4B2A76B9719D911017C592','130',7500,NULL,0,'男','nophoto.png');

/*Table structure for table `groups` */

DROP TABLE IF EXISTS `groups`;

CREATE TABLE `groups` (
  `gid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `groups` */

insert  into `groups`(`gid`,`title`,`type`) values 
(1,'权限管理','管理部-权限组'),
(2,'人事管理','管理部-权限组'),
(3,'办公用品','管理部-权限组'),
(4,'人事管理','人事部-权限组'),
(5,'办公用品','非行政部-权限组'),
(6,'办公用品','行政部-权限组'),
(7,'办公用品','财务部-权限组');

/*Table structure for table `level` */

DROP TABLE IF EXISTS `level`;

CREATE TABLE `level` (
  `lid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `losal` double DEFAULT NULL,
  `hisal` double DEFAULT NULL,
  PRIMARY KEY (`lid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `level` */

insert  into `level`(`lid`,`title`,`losal`,`hisal`) values 
(1,'实习生',800,1500),
(2,'普通员工',1501,3500),
(3,'部门主管',3501,5000),
(4,'部门经理',5001,8000),
(5,'总监',8001,12000),
(6,'副总裁',12001,20000),
(7,'总裁',20001,99999);

/*Table structure for table `purchase` */

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

/*Data for the table `purchase` */

/*Table structure for table `res` */

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

/*Data for the table `res` */

/*Table structure for table `subtype` */

DROP TABLE IF EXISTS `subtype`;

CREATE TABLE `subtype` (
  `stid` int(11) NOT NULL AUTO_INCREMENT,
  `tid` int(11) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`stid`),
  KEY `fk_tid2` (`tid`),
  CONSTRAINT `fk_tid2` FOREIGN KEY (`tid`) REFERENCES `type` (`tid`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

/*Data for the table `subtype` */

insert  into `subtype`(`stid`,`tid`,`title`) values 
(1,1,'报告夹'),
(2,1,'分类文件夹'),
(3,1,'电脑夹'),
(4,1,'档案袋'),
(5,1,'名片盒'),
(6,1,'拉链袋'),
(7,1,'资料夹'),
(8,1,'文件蓝'),
(9,1,'图纸夹'),
(10,1,'挂劳夹'),
(11,1,'文件套'),
(12,1,'资料册'),
(13,1,'票据夹'),
(14,1,'公事包'),
(15,2,'起钉器'),
(16,2,'打孔器'),
(17,2,'美工刀'),
(18,2,'计算器'),
(19,2,'订书机'),
(20,2,'剪刀'),
(21,2,'切纸刀'),
(22,2,'胶水'),
(23,2,'胶棒'),
(24,2,'钉针系列'),
(25,2,'壁纸刀'),
(26,2,'票夹'),
(27,2,'胶带'),
(28,2,'仪尺'),
(29,2,'胶带座'),
(30,2,'圆规'),
(31,3,'笔记本电脑'),
(32,3,'碎纸机'),
(33,3,'考勤机'),
(34,3,'过塑机'),
(35,3,'电话机'),
(36,3,'加湿器'),
(37,3,'饮水机'),
(38,3,'电风扇'),
(39,3,'吸尘器'),
(40,3,'投影仪'),
(41,3,'打印机'),
(42,3,'扫描仪'),
(43,4,'账本'),
(44,4,'记事本'),
(45,4,'算盘'),
(46,4,'墨水'),
(47,4,'报表'),
(48,4,'凭证'),
(49,4,'钢笔'),
(50,4,'印泥'),
(51,4,'科目章'),
(52,4,'橡皮筋'),
(53,4,'大头针'),
(54,4,'回形针'),
(55,5,'硒鼓'),
(56,5,'墨盒'),
(57,5,'色带'),
(58,5,'粉盒'),
(59,5,'组件'),
(60,5,'皮纹纸'),
(61,5,'装订透片'),
(62,5,'装订胶圈'),
(63,5,'彩色卡纸'),
(64,5,'不干胶打印纸'),
(65,5,'网线转换接头'),
(66,5,'电脑打印纸'),
(67,5,'电源线'),
(68,5,'网线');

/*Table structure for table `take` */

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

/*Data for the table `take` */

/*Table structure for table `type` */

DROP TABLE IF EXISTS `type`;

CREATE TABLE `type` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `type` */

insert  into `type`(`tid`,`title`) values 
(1,'文件档案用品'),
(2,'桌面用品'),
(3,'办公设备'),
(4,'财务用品'),
(5,'办公耗材');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
