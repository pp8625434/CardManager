# MySQL-Front 5.1  (Build 4.13)

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;


# Host: 192.168.1.151    Database: scs
# ------------------------------------------------------
# Server version 5.6.28

#
# Source for table a_alterusbkey_tab
#

DROP TABLE IF EXISTS `a_alterusbkey_tab`;
CREATE TABLE `a_alterusbkey_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `position` varchar(50) DEFAULT NULL COMMENT '岗位',
  `deptname` varchar(50) DEFAULT NULL COMMENT '所属部门、单位',
  `deptid` int(11) DEFAULT NULL COMMENT '所属部门、单位id',
  `security` varchar(10) DEFAULT NULL COMMENT '密级',
  `workplace` varchar(100) DEFAULT NULL COMMENT '工作地点',
  `cellphone` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `alterreason` int(1) DEFAULT NULL COMMENT '更换usbkey原因（0/1 原有丢失/原有损坏）',
  `definitereason` varchar(255) DEFAULT NULL COMMENT '更换usbkey具体情况描述',
  `applicantsign` varchar(50) DEFAULT NULL COMMENT '申请人签字',
  `applicantid` int(11) DEFAULT NULL COMMENT '申请人id',
  `applydate` datetime DEFAULT NULL COMMENT '申请时间',
  `deptopinion` varchar(400) DEFAULT NULL COMMENT '部门负责人意见',
  `deptsign` varchar(50) DEFAULT NULL COMMENT '部门负责人签字',
  `deptsignid` int(11) DEFAULT NULL COMMENT '部门负责人id',
  `deptsigndate` datetime DEFAULT NULL COMMENT '部门负责人签字日期',
  `securityopinion` varchar(400) DEFAULT NULL COMMENT '保密管理部门意见',
  `securitysign` varchar(50) DEFAULT NULL COMMENT '保密管理部门签字',
  `securityid` int(11) DEFAULT NULL COMMENT '保密管理部门签字人id',
  `securitysigndate` datetime DEFAULT NULL COMMENT '保密管理部门签字日期',
  `infordeptopinion` varchar(400) DEFAULT NULL COMMENT '信息化管理部门意见',
  `infordeptsign` varchar(50) DEFAULT NULL COMMENT '信息化管理部门签字',
  `infordeptsignid` int(11) DEFAULT NULL COMMENT '信息化管理部门签字人id',
  `infordeptsigndate` datetime DEFAULT NULL COMMENT '信息化管理部门签字日期',
  `trancondition` varchar(400) DEFAULT NULL COMMENT '安全保密管理员办理情况',
  `transign` varchar(50) DEFAULT NULL COMMENT '安全保密管理员签字',
  `transignid` int(11) DEFAULT NULL COMMENT '安全保密管理员id',
  `transigndate` datetime DEFAULT NULL COMMENT '安全保密管理员签字日期',
  `firstperson` varchar(50) DEFAULT NULL COMMENT '初始填写表单提交人',
  `firstpid` int(11) DEFAULT NULL COMMENT '初始填写表单提交人id',
  `firstsubdate` datetime DEFAULT NULL COMMENT '初始填写表单提交日期',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='更换USBKEY申请表';

#
# Dumping data for table a_alterusbkey_tab
#

LOCK TABLES `a_alterusbkey_tab` WRITE;
/*!40000 ALTER TABLE `a_alterusbkey_tab` DISABLE KEYS */;
INSERT INTO `a_alterusbkey_tab` VALUES (1,1,'大大1','安县城区','大自行车',NULL,'162','个人','123123413',96,'答复','5',NULL,'2016-05-16 13:44:48','最炫的','5',NULL,NULL,'让人','5',NULL,NULL,'切实的','5',NULL,NULL,'是打造成','5',NULL,NULL,'admin',2275,'2016-05-16 13:45:04');
INSERT INTO `a_alterusbkey_tab` VALUES (2,1,'阿斯顿发','导出','行政村',NULL,'162','阿斯顿发大大','充斥着',96,'出租车','5',NULL,'2016-05-18 04:30:03','','5',NULL,NULL,'答复下载','6',NULL,NULL,'阿斯顿发现','5',NULL,NULL,'的范德萨发','6',NULL,NULL,'admin',2275,'2016-05-27 14:38:50');
/*!40000 ALTER TABLE `a_alterusbkey_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table a_appsysalter_tab
#

DROP TABLE IF EXISTS `a_appsysalter_tab`;
CREATE TABLE `a_appsysalter_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `sysname` varchar(100) DEFAULT NULL COMMENT '业务系统名称',
  `applydept` varchar(50) DEFAULT NULL COMMENT '申请单位',
  `applydeptid` int(11) DEFAULT NULL COMMENT '申请单位id',
  `applicant` varchar(50) DEFAULT NULL COMMENT '申请人员',
  `applicantid` int(11) DEFAULT NULL COMMENT '申请人员id',
  `appliydate` datetime DEFAULT NULL COMMENT '申请日期',
  `sysalterreason` varchar(400) DEFAULT NULL COMMENT '业务系统变更原因',
  `altercontent` varchar(400) DEFAULT NULL COMMENT '增加（删除）模块名称/配置变更内容（包括业务模块的功能和流程，可附页）',
  `applydeptopinion` varchar(400) DEFAULT NULL COMMENT '申请部门意见',
  `applydeptsign` varchar(50) DEFAULT NULL COMMENT '申请部门签字',
  `applydeptsignid` int(11) DEFAULT NULL COMMENT '申请部门签字人id',
  `applydeptsigndate` datetime DEFAULT NULL COMMENT '申请部门签字日期',
  `infordeptopinion` varchar(400) DEFAULT NULL COMMENT '信息化管理部门意见',
  `infordeptsign` varchar(50) DEFAULT NULL COMMENT '信息化管理部门签字',
  `infordeptsignid` int(11) DEFAULT NULL COMMENT '信息化管理部门签字人id',
  `infordeptsigndate` datetime DEFAULT NULL COMMENT '信息化管理部门签字日期',
  `operateresult` varchar(400) DEFAULT NULL COMMENT '配置变更操作结果（由系统管理员填写）',
  `sysmanager` varchar(50) DEFAULT NULL COMMENT '系统管理员签字',
  `sysmanagerid` int(11) DEFAULT NULL COMMENT '系统管理员id',
  `managersigndate` datetime DEFAULT NULL COMMENT '系统管理员签字日期',
  `firstperson` varchar(50) DEFAULT NULL COMMENT '初始填写表单提交人',
  `firstpid` int(11) DEFAULT NULL COMMENT '初始填写表单提交人id',
  `firstsubdate` datetime DEFAULT NULL COMMENT '初始填写表单提交日期',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='应用系统业务模块增加、删除、配置变更审批表';

#
# Dumping data for table a_appsysalter_tab
#

LOCK TABLES `a_appsysalter_tab` WRITE;
/*!40000 ALTER TABLE `a_appsysalter_tab` DISABLE KEYS */;
INSERT INTO `a_appsysalter_tab` VALUES (1,1,'大方法','按时大大',NULL,'撒打发',NULL,'2016-05-13 10:55:35','过去人岗位二','给他人哈哈','特好的风格','5',NULL,NULL,'是大法官2','5',NULL,NULL,'割发代首','5',NULL,NULL,'admin',2275,'2016-05-13 10:55:55');
INSERT INTO `a_appsysalter_tab` VALUES (2,1,'答复','阿斯顿发',NULL,'否',NULL,'2016-05-18 03:54:46','发斯蒂芬\r\n\t\t\t\t\t\t\t','fascinating\r\n\t\t\t\t\t\t\t','中v\r\n\t\t\t\t\t\t\t','5',NULL,NULL,'阿斯顿发\r\n\t\t\t\t\t\t\t','6',NULL,NULL,'跳舞\r\n\t\t\t\t\t\t\t','6',NULL,NULL,'admin',2275,'2016-05-27 14:11:33');
/*!40000 ALTER TABLE `a_appsysalter_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table a_appsysnetin_tab
#

DROP TABLE IF EXISTS `a_appsysnetin_tab`;
CREATE TABLE `a_appsysnetin_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `sysname` varchar(100) DEFAULT NULL COMMENT '应用系统名称',
  `projectprincipal` varchar(50) DEFAULT NULL COMMENT '项目负责人',
  `executivedept` varchar(50) DEFAULT NULL COMMENT '业务主管部门',
  `executivedeptid` int(11) DEFAULT NULL COMMENT '业务主管部门id',
  `deptprincipal` varchar(50) DEFAULT NULL COMMENT '部门负责人',
  `sysdevelopdept` varchar(50) DEFAULT NULL COMMENT '系统开发单位',
  `developor` varchar(50) DEFAULT NULL COMMENT '开发单位联系人',
  `developdeptzizhi` varchar(100) DEFAULT NULL COMMENT '开发单位资质',
  `security` int(1) DEFAULT NULL COMMENT '系统密级',
  `accesspoint` varchar(50) DEFAULT NULL COMMENT '接入位置',
  `applicationrange` varchar(100) DEFAULT NULL COMMENT '使用范围',
  `functionsketch` varchar(400) DEFAULT NULL COMMENT '系统功能简述',
  `projectdata` varchar(400) DEFAULT NULL COMMENT '项目立项与验收资料',
  `environment` varchar(400) DEFAULT NULL COMMENT '系统运行所需软硬件环境',
  `securitypolicy` varchar(400) DEFAULT NULL COMMENT '系统安全策略',
  `filePath` varchar(100) DEFAULT NULL COMMENT '安全策略附件路径',
  `setupdept` varchar(400) DEFAULT NULL COMMENT '立项部门意见',
  `setupdeptsign` varchar(50) DEFAULT NULL COMMENT '立项部门签字',
  `setuporid` int(11) DEFAULT NULL COMMENT '立项部门签字人id',
  `setupordate` datetime DEFAULT NULL COMMENT '立项部门签字日期',
  `securityopinion` varchar(400) DEFAULT NULL COMMENT '保密管理部门意见',
  `securitysign` varchar(50) DEFAULT NULL COMMENT '保密管理部门签字',
  `securityid` int(11) DEFAULT NULL COMMENT '保密管理部门签字人id',
  `securitysigndate` datetime DEFAULT NULL COMMENT '保密管理部门签字日期',
  `infordeptopinion` varchar(400) DEFAULT NULL COMMENT '信息化管理部门意见',
  `infordeptsign` varchar(50) DEFAULT NULL COMMENT '信息化管理部门签字',
  `infordeptsignid` int(11) DEFAULT NULL COMMENT '信息化管理部门签字人id',
  `infordeptsigndate` datetime DEFAULT NULL COMMENT '信息化管理部门签字日期',
  `firstperson` varchar(50) DEFAULT NULL COMMENT '初始填写表单提交人',
  `firstpid` int(11) DEFAULT NULL COMMENT '初始填写表单提交人id',
  `firstsubdate` datetime DEFAULT NULL COMMENT '初始填写表单提交日期',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='应用系统入网审批表';

#
# Dumping data for table a_appsysnetin_tab
#

LOCK TABLES `a_appsysnetin_tab` WRITE;
/*!40000 ALTER TABLE `a_appsysnetin_tab` DISABLE KEYS */;
INSERT INTO `a_appsysnetin_tab` VALUES (1,1,'爱迪生','达到','杀毒',NULL,'大大','奥德赛','好人法','答复',153,'规划图','答复方法','答案的','范德萨发的','大法师','爱的是犯法',NULL,'俺说的跟个人','5',NULL,NULL,'阿斯顿发生','5',NULL,NULL,'辅导辅导','5',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `a_appsysnetin_tab` VALUES (7,1,'打的费','擦','阿斯顿发',NULL,'爱的方式','按错','安全玩儿','阿斯顿发',154,'大师傅','大师傅的撒','发的发热管','到时给我','茶多酚','大师傅十大',NULL,'大方法阿萨德','5',NULL,NULL,'提高文化','5',NULL,NULL,'大厦法定分','6',NULL,NULL,'admin',2275,'2016-05-27 14:19:11');
/*!40000 ALTER TABLE `a_appsysnetin_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table a_authorityalter_tab
#

DROP TABLE IF EXISTS `a_authorityalter_tab`;
CREATE TABLE `a_authorityalter_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `position` varchar(50) DEFAULT NULL COMMENT '岗位',
  `dept` varchar(100) DEFAULT NULL COMMENT '部门',
  `security` varchar(50) DEFAULT NULL COMMENT '密级',
  `workplace` varchar(100) DEFAULT NULL COMMENT '工作地点',
  `cellphone` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `alterreason` varchar(400) DEFAULT NULL COMMENT '权限变更原因',
  `applicantsign` varchar(50) DEFAULT NULL COMMENT '申请人签字',
  `applicantid` int(11) DEFAULT NULL COMMENT '申请人id',
  `applicantsigndate` datetime DEFAULT NULL COMMENT '申请人签字日期',
  `deptleaderopinion` varchar(400) DEFAULT NULL COMMENT '部门领导意见',
  `deptleadersign` varchar(50) DEFAULT NULL COMMENT '部门领导签字',
  `deptleaderid` int(11) DEFAULT NULL COMMENT '部门领导id',
  `leadersigndate` datetime DEFAULT NULL COMMENT '部门领导签字日期',
  `securityopinion` varchar(400) DEFAULT NULL COMMENT '保密管理部门意见',
  `securitysign` varchar(50) DEFAULT NULL COMMENT '保密管理部门签字',
  `securityid` int(11) DEFAULT NULL COMMENT '保密管理部门签字人id',
  `securitysigndate` datetime DEFAULT NULL COMMENT '保密管理部门签字日期',
  `isfinishoperate` int(1) DEFAULT NULL COMMENT '是否完成操作（0/1 否/是）',
  `isinformapplicat` int(1) DEFAULT NULL COMMENT '是否将完成操作结果告知申请人（0/1 否/是）',
  `infordeptsign` varchar(50) DEFAULT NULL COMMENT '信息化管理部门签字',
  `infordeptsignid` int(11) DEFAULT NULL COMMENT '信息化管理部门签字人id',
  `infordeptsigndate` datetime DEFAULT NULL COMMENT '信息化管理部门签字日期',
  `firstperson` varchar(50) DEFAULT NULL COMMENT '初始填写表单提交人',
  `firstpid` int(11) DEFAULT NULL COMMENT '初始填写表单提交人id',
  `firstsubdate` datetime DEFAULT NULL COMMENT '初始填写表单提交日期',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户权限变更审批表';

#
# Dumping data for table a_authorityalter_tab
#

LOCK TABLES `a_authorityalter_tab` WRITE;
/*!40000 ALTER TABLE `a_authorityalter_tab` DISABLE KEYS */;
INSERT INTO `a_authorityalter_tab` VALUES (1,1,'阿斯达','大声道','阿斯达大厦','13','撒的发VC','阿斯达','安师大','5',NULL,'2016-05-17 15:46:58','出现在擦','5',NULL,NULL,'阿萨德','6',NULL,NULL,35,34,'6',NULL,NULL,'admin',2275,'2016-05-17 15:47:10');
INSERT INTO `a_authorityalter_tab` VALUES (2,1,'阿萨德','阿达','阿萨德','14','按错','阿萨德','阿斯顿发','6',NULL,NULL,'安防','5',NULL,NULL,'阿斯顿发','5',NULL,NULL,35,34,'6',NULL,NULL,'admin',2275,'2016-05-27 13:30:39');
INSERT INTO `a_authorityalter_tab` VALUES (3,1,'sdaf','asdf','asdf','14','asdf','asdf','asdf','6',NULL,'2016-05-27 13:33:23','asdf','5',NULL,NULL,'asdf','6',NULL,NULL,35,34,'6',NULL,NULL,'admin',2275,'2016-05-27 13:33:25');
/*!40000 ALTER TABLE `a_authorityalter_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table a_deviceinfo_tab
#

DROP TABLE IF EXISTS `a_deviceinfo_tab`;
CREATE TABLE `a_deviceinfo_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `did` int(11) DEFAULT NULL COMMENT '年度设备购置需求表id',
  `device` varchar(50) DEFAULT NULL COMMENT '设备名称',
  `devversion` varchar(50) DEFAULT NULL COMMENT '型号',
  `number` int(11) DEFAULT NULL COMMENT '数量',
  `producer` varchar(50) DEFAULT NULL COMMENT '生产厂家',
  `budget` double DEFAULT NULL COMMENT '预计金额',
  `firstperson` varchar(50) DEFAULT NULL COMMENT '添加人',
  `firstpid` int(11) DEFAULT NULL COMMENT '添加人id',
  `firstsubdate` datetime DEFAULT NULL COMMENT '添加日期',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='设备购置明细表';

#
# Dumping data for table a_deviceinfo_tab
#

LOCK TABLES `a_deviceinfo_tab` WRITE;
/*!40000 ALTER TABLE `a_deviceinfo_tab` DISABLE KEYS */;
INSERT INTO `a_deviceinfo_tab` VALUES (1,1,NULL,'阿萨德','12',32,'神雕',323,'admin',2275,'2016-05-12 14:07:20');
INSERT INTO `a_deviceinfo_tab` VALUES (2,1,1,'adsf','xcv',23,'32ad',313,'dfa',43,NULL);
INSERT INTO `a_deviceinfo_tab` VALUES (3,1,1,'adsf','xcv',123,'32ad',313,'dfa',43,NULL);
INSERT INTO `a_deviceinfo_tab` VALUES (4,1,1,'adsf','xcv',155,'32ad',313,'dfa',43,NULL);
/*!40000 ALTER TABLE `a_deviceinfo_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table a_deviceiosys_tab
#

DROP TABLE IF EXISTS `a_deviceiosys_tab`;
CREATE TABLE `a_deviceiosys_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `applicant` varchar(50) DEFAULT NULL COMMENT '申请人',
  `applicantid` int(11) DEFAULT NULL COMMENT '申请人id',
  `cellphone` varchar(20) DEFAULT NULL COMMENT '电话',
  `appliydate` datetime DEFAULT NULL COMMENT '申请日期',
  `applicanttype` int(1) DEFAULT NULL COMMENT '申请人类别（0/1/2/3 正式员工/借调员工/返聘员工/其他',
  `applicantelse` varchar(100) DEFAULT NULL COMMENT '申请人类别为其他内容',
  `type` int(1) DEFAULT NULL COMMENT '类型（0/1 设备接入/设备退出）',
  `applicantsecurity` int(1) DEFAULT NULL COMMENT '申请人密级(0/1/2/3 绝密/机密/秘密/内部)',
  `orgname` varchar(100) DEFAULT NULL COMMENT '所在部门及处室',
  `orgid` varchar(50) DEFAULT NULL COMMENT '所在部门及处室id',
  `devicetype` varchar(50) DEFAULT NULL COMMENT '设备类型（0/1/2/3 台式机/便携式计算机/打印机/其他）',
  `deviceelse` varchar(100) DEFAULT NULL COMMENT '设备类型为其他内容',
  `deviceindex` varchar(50) DEFAULT NULL COMMENT '设备编号',
  `hardpanserialnum` varchar(50) DEFAULT NULL COMMENT '硬盘序列号',
  `devicesecurity` int(1) DEFAULT NULL COMMENT '设备密级（0/1/2 机密/秘密/内部）',
  `storageplace` varchar(100) DEFAULT NULL COMMENT '存放地点',
  `inoutsysname` varchar(200) DEFAULT NULL COMMENT '申请人申请开通(退出)系统名称',
  `sysnameelse` varchar(255) DEFAULT NULL COMMENT '申请开通（退出）系统名称其他',
  `insysreason` int(4) DEFAULT NULL COMMENT '申请接入原因（0/1/2 旧设备换新设备/新员工入职接入新设备/其他）',
  `inreasonelse` varchar(100) DEFAULT NULL COMMENT '申请接入原因其他内容',
  `outsysreason` int(4) DEFAULT NULL COMMENT '申请退出原因（0/1/2 设备报废/离职/其他）',
  `outreasonelse` varchar(100) DEFAULT NULL COMMENT '申请退出原因其他内容',
  `applydeptopinion` varchar(400) DEFAULT NULL COMMENT '申请部门意见',
  `applydeptsign` varchar(50) DEFAULT NULL COMMENT '申请部门签字',
  `applydeptsignid` int(11) DEFAULT NULL COMMENT '申请部门签字人id',
  `applydeptsigndate` datetime DEFAULT NULL COMMENT '申请部门签字日期',
  `infordeptopinion` varchar(400) DEFAULT NULL COMMENT '信息化管理部门意见',
  `infordeptsign` varchar(50) DEFAULT NULL COMMENT '信息化管理部门签字',
  `infordeptsignid` int(11) DEFAULT NULL COMMENT '信息化管理部门签字人id',
  `infordeptsigndate` datetime DEFAULT NULL COMMENT '信息化管理部门签字日期',
  `devprincipalsign` varchar(50) DEFAULT NULL COMMENT '设备负责人签字',
  `devprincipalid` int(11) DEFAULT NULL COMMENT '设备负责人id',
  `devprincipalsigndate` datetime DEFAULT NULL COMMENT '设备负责人签字日期',
  `devrecipientsign` varchar(50) DEFAULT NULL COMMENT '设备接收人签字',
  `devrecipientid` int(11) DEFAULT NULL COMMENT '设备接收人id',
  `devrecipientsigndate` datetime DEFAULT NULL COMMENT '设备接收人签字日期',
  `isclearinformation` int(1) DEFAULT NULL COMMENT '是否已完成信息清除（0/1 否/是）',
  `isremovefirmware` int(1) DEFAULT NULL COMMENT '是否已拆除存储固件（0/1 否/是）',
  `istransferdevice` int(1) DEFAULT NULL COMMENT '设备是否移交（0/1 否/是）',
  `operatorsign` varchar(50) DEFAULT NULL COMMENT '操作人签字  存储介质信息消除、拆除、设备移交情况',
  `operatorid` int(11) DEFAULT NULL COMMENT '操作人id 存储介质信息消除、拆除、设备移交情况',
  `operatorsigndate` datetime DEFAULT NULL COMMENT '操作人签字时间 存储介质信息消除、拆除、设备移交情况',
  `storeinforecipient` varchar(50) DEFAULT NULL COMMENT '接收人签字  存储介质信息消除、拆除、设备移交情况',
  `storeinforecipientid` int(11) DEFAULT NULL COMMENT '接收人id  存储介质信息消除、拆除、设备移交情况',
  `recipientdate` datetime DEFAULT NULL COMMENT '接收人签字日期',
  `allocationip` varchar(20) DEFAULT NULL COMMENT '分配（关闭）的IP地址',
  `switchboard` int(1) DEFAULT NULL COMMENT '交换机操作（0/1 开放/关闭）',
  `switchboardname` varchar(50) DEFAULT NULL COMMENT '操作的交换机的名称',
  `switchboardsign` varchar(50) DEFAULT NULL COMMENT '交换机操作人签字',
  `switchboardsignid` int(11) DEFAULT NULL COMMENT '交换机操作人id',
  `switchboarddate` datetime DEFAULT NULL COMMENT '交换机操作人签字日期',
  `isoa` varchar(10) DEFAULT NULL COMMENT 'OA',
  `oaoperatorsign` varchar(50) DEFAULT NULL COMMENT 'OA 操作人签字',
  `oaoperatorid` int(11) DEFAULT NULL COMMENT 'OA 操作人id',
  `oaoperatordate` datetime DEFAULT NULL COMMENT 'OA 操作人签字日期',
  `domainemail` varchar(200) DEFAULT NULL COMMENT '域控、邮件、网间、打印、主审、三合一、其他',
  `domainemailelse` varchar(255) DEFAULT NULL COMMENT '域控等其他',
  `domainoperator` varchar(50) DEFAULT NULL COMMENT '域控等操作人签字',
  `domainoperatorid` int(11) DEFAULT NULL COMMENT '域控等操作人id',
  `domaindate` datetime DEFAULT NULL COMMENT '域控等操作人签字日期',
  `isupdate` int(1) DEFAULT NULL COMMENT '台账是否更新（0/1 否/是）',
  `isinform` int(1) DEFAULT NULL COMMENT '是否将台账信息告知申请人部门台账管理员（0/1 否/是）',
  `isrecord` int(1) DEFAULT NULL COMMENT '是否到保密管理部门备案（0/1 否/是）',
  `recordorsign` varchar(50) DEFAULT NULL COMMENT '备案人签字',
  `recordorid` int(11) DEFAULT NULL COMMENT '备案人id',
  `recordordate` datetime DEFAULT NULL COMMENT '备案人签字日期',
  `managersign` varchar(50) DEFAULT NULL COMMENT '信息档案部资产管理人员签字',
  `managerid` int(11) DEFAULT NULL COMMENT '信息档案部资产管理人员id',
  `managersigndate` datetime DEFAULT NULL COMMENT '信息档案部资产管理人员签字日期',
  `firstperson` varchar(50) DEFAULT NULL COMMENT '初始填写表单提交人',
  `firstpid` int(11) DEFAULT NULL COMMENT '初始填写表单提交人id',
  `firstsubdate` datetime DEFAULT NULL COMMENT '初始填写表单提交日期',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='设备接入/退出涉密信息系统审批表';

#
# Dumping data for table a_deviceiosys_tab
#

LOCK TABLES `a_deviceiosys_tab` WRITE;
/*!40000 ALTER TABLE `a_deviceiosys_tab` DISABLE KEYS */;
INSERT INTO `a_deviceiosys_tab` VALUES (1,1,'ad',NULL,'1241234','2016-05-16 09:21:44',8,'ad大大',10,13,'asdad','','18, 19','大大的','234123','451x',22,'阿达的','26, 27','大声道',28,'阿达的',32,'安大厦','爱的撒旦','5',NULL,NULL,'按时大多数','6',NULL,NULL,'5',NULL,NULL,'5',NULL,NULL,34,34,34,'5',NULL,NULL,'5',NULL,NULL,'啊大大',36,'阿达','5',NULL,NULL,'on','5',NULL,NULL,'40, 41','啊大大对对对','5',NULL,NULL,34,34,35,'5',NULL,NULL,'6',NULL,NULL,'admin',2275,'2016-05-16 09:22:38');
INSERT INTO `a_deviceiosys_tab` VALUES (2,1,'申请人1',NULL,'432141234','2016-05-18 14:18:39',7,'阿斯顿发',10,16,'发斯蒂芬','','18','阿斯蒂芬','撒旦v','爱撒旦v啊',22,'这XCV否','25','根本淘宝',29,'云南省地方',32,'发顺丰','他爸爸','6',NULL,NULL,'也并非','6',NULL,NULL,'5',NULL,NULL,'5',NULL,NULL,34,35,35,'5',NULL,NULL,'5',NULL,NULL,'爱撒旦v',37,'支持支持','5',NULL,NULL,NULL,'5',NULL,NULL,'39, 40','vfvsdv1','5',NULL,NULL,35,35,35,'6',NULL,NULL,'5',NULL,NULL,'admin',2275,'2016-05-18 14:20:01');
INSERT INTO `a_deviceiosys_tab` VALUES (3,1,'爱的',NULL,'12313414','2016-05-18 14:51:03',9,'fadhhjk',10,13,'阿斯顿发放','','18','会议纪要','超炫的','移交人',22,'vvdas1','26','vgryej',29,'阿斯顿发',32,'vxcz','\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t阿斯顿发\r\n\t\t\t\t\t\t\t\r\n\t\t\t\t\t\t\t','6',NULL,NULL,'\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t爱是福气\r\n\t\t\t\t\t\t\t\r\n\t\t\t\t\t\t\t','5',NULL,NULL,'6',NULL,NULL,'5',NULL,NULL,34,35,34,'6',NULL,NULL,'5',NULL,NULL,'爱撒旦v在',37,'安防','5',NULL,NULL,NULL,'5',NULL,NULL,'39, 40','阿斯顿发','5',NULL,NULL,34,35,35,'6',NULL,NULL,'6',NULL,NULL,'admin',2275,'2016-05-27 11:16:41');
/*!40000 ALTER TABLE `a_deviceiosys_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table a_devicemaintain_tab
#

DROP TABLE IF EXISTS `a_devicemaintain_tab`;
CREATE TABLE `a_devicemaintain_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `devprincipal` varchar(50) DEFAULT NULL COMMENT '设备责任人',
  `orgname` varchar(100) DEFAULT NULL COMMENT '所属部门',
  `orgid` varchar(50) DEFAULT NULL COMMENT '所属部门id',
  `devicename` varchar(100) DEFAULT NULL COMMENT '设备名称',
  `deviceindex` varchar(50) DEFAULT NULL COMMENT '设备编号',
  `devicesecurity` varchar(50) DEFAULT NULL COMMENT '设备密级',
  `faultdescribe` varchar(255) DEFAULT NULL COMMENT '设备责任人描述故障现象',
  `alterelse` varchar(255) DEFAULT NULL COMMENT '口令及账户解锁、更改其他内容',
  `descripelse` varchar(255) DEFAULT NULL COMMENT '故障现象其他内容',
  `softname` varchar(50) DEFAULT NULL COMMENT '软件名称及来源',
  `devprincipalsign` varchar(50) DEFAULT NULL COMMENT '设备责任人签字',
  `devprincipalid` int(11) DEFAULT NULL COMMENT '设备责任人id',
  `devprincipaldate` datetime DEFAULT NULL COMMENT '设备责任人签字日期',
  `diagnosecase` varchar(255) DEFAULT NULL COMMENT '维修人员诊断情况',
  `diagnoseelse` varchar(255) DEFAULT NULL COMMENT '其他情况',
  `diagnosesign` varchar(50) DEFAULT NULL COMMENT '诊断人员签字',
  `diagnoseid` int(11) DEFAULT NULL COMMENT '诊断人员id',
  `diagnosedate` datetime DEFAULT NULL COMMENT '诊断人员签字日期',
  `applydeptopinion` varchar(400) DEFAULT NULL COMMENT '申请人部门意见',
  `applydeptsign` varchar(50) DEFAULT NULL COMMENT '申请人部门签字',
  `applydeptsignid` int(11) DEFAULT NULL COMMENT '申请人部门签字id',
  `applydeptsigndate` datetime DEFAULT NULL COMMENT '申请人部门签字日期',
  `infordeptopinion` varchar(400) DEFAULT NULL COMMENT '信息化管理部门意见',
  `infordeptsign` varchar(50) DEFAULT NULL COMMENT '信息化管理部门签字',
  `infordeptsignid` int(11) DEFAULT NULL COMMENT '信息化管理部门签字人id',
  `infordeptsigndate` datetime DEFAULT NULL COMMENT '信息化管理部门签字日期',
  `hardpanserialnum` varchar(50) DEFAULT NULL COMMENT '新硬盘序列号',
  `mac` varchar(20) DEFAULT NULL COMMENT '新网卡MAC地址',
  `faultreason` varchar(200) DEFAULT NULL COMMENT '故障原因',
  `maintainplace` varchar(100) DEFAULT NULL COMMENT '维修地址',
  `processmethod` varchar(400) DEFAULT NULL COMMENT '维修过程和方法',
  `maintainresult` varchar(200) DEFAULT NULL COMMENT '维修结果',
  `resysdate` datetime DEFAULT NULL COMMENT '重装的操作系统日期',
  `maintainsign` varchar(50) DEFAULT NULL COMMENT '维修人签字',
  `maintainid` int(11) DEFAULT NULL COMMENT '维修人id',
  `maintainsigndate` datetime DEFAULT NULL COMMENT '维修人签字日期',
  `accompansign` varchar(50) DEFAULT NULL COMMENT '站旁陪同人员（设备责任人）签字',
  `accompansigndate` datetime DEFAULT NULL COMMENT '站旁陪同人员签字日期',
  `ohardpanserialnum` varchar(50) DEFAULT NULL COMMENT '旧硬盘序列号',
  `transfersign` varchar(50) DEFAULT NULL COMMENT '移交人签字',
  `transferid` int(11) DEFAULT NULL COMMENT '移交人id',
  `transferdate` datetime DEFAULT NULL COMMENT '移交人签字日期',
  `recipientsign` varchar(50) DEFAULT NULL COMMENT '接收人签字',
  `recipientid` int(11) DEFAULT NULL COMMENT '接收人id',
  `recipientsigndate` datetime DEFAULT NULL COMMENT '接收人签字日期',
  `isupdate` int(1) DEFAULT NULL COMMENT '台账是否更新（0/1 否/是）',
  `managersign` varchar(50) DEFAULT NULL COMMENT '信息档案部资产管理人员签字',
  `managerid` int(11) DEFAULT NULL COMMENT '信息档案部资产管理人员id',
  `managersigndate` datetime DEFAULT NULL COMMENT '信息档案部资产管理人员签字日期',
  `firstperson` varchar(50) DEFAULT NULL COMMENT '初始填写表单提交人',
  `firstpid` int(11) DEFAULT NULL COMMENT '初始填写表单提交人id',
  `firstsubdate` datetime DEFAULT NULL COMMENT '初始填写表单提交日期',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='设备维护、维修审批表';

#
# Dumping data for table a_devicemaintain_tab
#

LOCK TABLES `a_devicemaintain_tab` WRITE;
/*!40000 ALTER TABLE `a_devicemaintain_tab` DISABLE KEYS */;
INSERT INTO `a_devicemaintain_tab` VALUES (1,1,'dsf','fasdf','','asdf','asdf','21','47, 48','asdf','asdf',NULL,'5',NULL,NULL,'56','asdf','5',NULL,NULL,'asdf','5',NULL,NULL,'asdf','6',NULL,NULL,'asdf','asdf','asdfzxcv','zcxv','zxcv','zcv','2016-05-18 11:25:04','6',NULL,NULL,'5',NULL,'zvxc','5',NULL,NULL,'5',NULL,NULL,35,'6',NULL,NULL,'admin',2275,'2016-05-18 11:25:12');
INSERT INTO `a_devicemaintain_tab` VALUES (2,1,'fdsg','asdf','','asdf','adf','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'',NULL,NULL,NULL,'',NULL,NULL,NULL,'','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'admin',2275,'2016-05-18 11:30:21');
INSERT INTO `a_devicemaintain_tab` VALUES (3,1,'答复','毒贩夫妇','','中v','阿斯顿发','21','50, 51','安防','发的都是','按时发放','5',NULL,NULL,'56','鞍山新村','5',NULL,NULL,'发生的发展新','5',NULL,NULL,'是非之心','5',NULL,NULL,'发斯蒂芬','导出','阿萨德在','反对认购','大厦vbrt','阿斯顿发','2016-05-27 13:27:28','6',NULL,NULL,'5',NULL,'挺好玩','6',NULL,NULL,'5',NULL,NULL,35,'5',NULL,NULL,'admin',2275,'2016-05-27 13:27:32');
/*!40000 ALTER TABLE `a_devicemaintain_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table a_devicepurchase_tab
#

DROP TABLE IF EXISTS `a_devicepurchase_tab`;
CREATE TABLE `a_devicepurchase_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `applydept` varchar(100) DEFAULT NULL COMMENT '申请部门',
  `applydeptid` int(11) DEFAULT NULL COMMENT '申请部门id',
  `applydate` datetime DEFAULT NULL COMMENT '申请日期 表单内容上方日期',
  `purchasereason` varchar(400) DEFAULT NULL COMMENT '购置原因',
  `deptopinion` varchar(400) DEFAULT NULL COMMENT '本部门意见',
  `deptsign` varchar(50) DEFAULT NULL COMMENT '本部门签字',
  `deptsignid` int(11) DEFAULT NULL COMMENT '本部门签字人id',
  `signdate` datetime DEFAULT NULL COMMENT '本部门签字日期',
  `firstperson` varchar(50) DEFAULT NULL COMMENT '初始填写表单提交人',
  `firstpid` int(11) DEFAULT NULL COMMENT '初始填写表单提交人id',
  `firstsubdate` datetime DEFAULT NULL COMMENT '初始填写表单提交日期',
  `niandu` datetime DEFAULT NULL COMMENT '年度',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='年度设备购置需求表';

#
# Dumping data for table a_devicepurchase_tab
#

LOCK TABLES `a_devicepurchase_tab` WRITE;
/*!40000 ALTER TABLE `a_devicepurchase_tab` DISABLE KEYS */;
INSERT INTO `a_devicepurchase_tab` VALUES (1,1,'打的费',NULL,'2016-05-12 11:12:26','恶法非法','撒的发','5',NULL,NULL,'admin',2275,'2016-05-27 15:13:57','2016-05-27 15:13:53');
/*!40000 ALTER TABLE `a_devicepurchase_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table a_emailexamine_tab
#

DROP TABLE IF EXISTS `a_emailexamine_tab`;
CREATE TABLE `a_emailexamine_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `deptname` varchar(50) DEFAULT NULL COMMENT '申请人所在单位（部门）',
  `deptid` int(11) DEFAULT NULL COMMENT '申请人所在单位（部门）id',
  `applicant` varchar(50) DEFAULT NULL COMMENT '申请人',
  `offices` varchar(50) DEFAULT NULL COMMENT '申请人所在处室',
  `officesid` int(11) DEFAULT NULL COMMENT '申请人所在处室id',
  `linktype` varchar(50) DEFAULT NULL COMMENT '联系方式',
  `openreason` varchar(400) DEFAULT NULL COMMENT '申请开通外网邮箱原因',
  `revokereason` varchar(400) DEFAULT NULL COMMENT '申请撤销外网邮箱原因',
  `applicantsign` varchar(50) DEFAULT NULL COMMENT '申请人填写原因签字',
  `applicantid` int(11) DEFAULT NULL COMMENT '申请人id',
  `applicantdate` datetime DEFAULT NULL COMMENT '申请人填写原因签字日期',
  `applydeptopinion` varchar(400) DEFAULT NULL COMMENT '申请人所在部门或单位意见',
  `applydeptsign` varchar(50) DEFAULT NULL COMMENT '申请人所在部门或单位签字',
  `applydeptsignid` int(11) DEFAULT NULL COMMENT '申请人所在部门或单位签字id',
  `applydeptsigndate` datetime DEFAULT NULL COMMENT '申请人所在部门后单位签字日期',
  `archivesdept` varchar(400) DEFAULT NULL COMMENT '信息档案部审查意见',
  `archivessign` varchar(50) DEFAULT NULL COMMENT '信息档案部签字',
  `archivesid` int(11) DEFAULT NULL COMMENT '信息档案部签字人id',
  `archivesdate` datetime DEFAULT NULL COMMENT '信息档案部签字日期',
  `operatrecord` varchar(400) DEFAULT NULL COMMENT '网管操作结果记录',
  `webmaster` varchar(50) DEFAULT NULL COMMENT '网管签字',
  `webmasterid` int(11) DEFAULT NULL COMMENT '网管id',
  `webmasterdate` datetime DEFAULT NULL COMMENT '网管签字日期',
  `firstperson` varchar(50) DEFAULT NULL COMMENT '初始填写表单提交人',
  `firstpid` int(11) DEFAULT NULL COMMENT '初始填写表单提交人id',
  `firstsubdate` datetime DEFAULT NULL COMMENT '初始填写表单提交日期',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='外网邮箱开通、撤销申请审批表';

#
# Dumping data for table a_emailexamine_tab
#

LOCK TABLES `a_emailexamine_tab` WRITE;
/*!40000 ALTER TABLE `a_emailexamine_tab` DISABLE KEYS */;
INSERT INTO `a_emailexamine_tab` VALUES (1,1,'答复',NULL,'阿斯顿发','阿斯顿发',NULL,'123412','答复','阿斯顿发',NULL,NULL,NULL,'案多发发','6',NULL,NULL,'阿斯顿发','5',NULL,NULL,'阿斯顿发','6',NULL,NULL,'admin',2275,'2016-05-17 13:54:36');
INSERT INTO `a_emailexamine_tab` VALUES (2,1,'去玩儿阿达',NULL,'阿斯顿发宣传','阿斯顿发',NULL,'操作','安防','绕过去','6',NULL,NULL,'大风车','5',NULL,NULL,'让国人','6',NULL,NULL,'安心','5',NULL,NULL,'admin',2275,'2016-05-27 15:46:35');
/*!40000 ALTER TABLE `a_emailexamine_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table a_ferrycentre_tab
#

DROP TABLE IF EXISTS `a_ferrycentre_tab`;
CREATE TABLE `a_ferrycentre_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `applydept` varchar(50) DEFAULT NULL COMMENT '申请部门',
  `applydeptid` int(11) DEFAULT NULL COMMENT '申请部门id',
  `security` int(1) DEFAULT NULL COMMENT '处理信息最高密级',
  `linkman` varchar(50) DEFAULT NULL COMMENT '联系人',
  `cellphone` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `createplace` varchar(100) DEFAULT NULL COMMENT '建立地点',
  `applydate` datetime DEFAULT NULL COMMENT '申请时间',
  `ferryer` varchar(50) DEFAULT NULL COMMENT '摆渡员姓名',
  `ferryersecurity` int(1) DEFAULT NULL COMMENT '摆渡员密级',
  `applyreason` varchar(400) DEFAULT NULL COMMENT '申请原因',
  `applydeptopinion` varchar(400) DEFAULT NULL COMMENT '申请部门意见',
  `applydeptsign` varchar(50) DEFAULT NULL COMMENT '申请部门签字',
  `applydeptsignid` int(11) DEFAULT NULL COMMENT '申请部门签字id',
  `applydeptsigndate` datetime DEFAULT NULL COMMENT '申请部门签字日期',
  `securityopinion` varchar(400) DEFAULT NULL COMMENT '保密管理部门意见',
  `securitysign` varchar(50) DEFAULT NULL COMMENT '保密管理部门签字',
  `securityid` int(11) DEFAULT NULL COMMENT '保密管理部门签字人id',
  `securitysigndate` datetime DEFAULT NULL COMMENT '保密管理部门签字日期',
  `infordeptopinion` varchar(400) DEFAULT NULL COMMENT '信息化管理部门意见',
  `infordeptsign` varchar(50) DEFAULT NULL COMMENT '信息化管理部门签字',
  `infordeptsignid` int(11) DEFAULT NULL COMMENT '信息化管理部门签字人id',
  `infordeptsigndate` datetime DEFAULT NULL COMMENT '信息化管理部门签字日期',
  `trancondition` varchar(400) DEFAULT NULL COMMENT '安全保密管理员办理情况',
  `transign` varchar(50) DEFAULT NULL COMMENT '安全保密管理员签字',
  `transignid` int(11) DEFAULT NULL COMMENT '安全保密管理员id',
  `transigndate` datetime DEFAULT NULL COMMENT '安全保密管理员签字日期',
  `firstperson` varchar(50) DEFAULT NULL COMMENT '初始填写表单提交人',
  `firstpid` int(11) DEFAULT NULL COMMENT '初始填写表单提交人id',
  `firstsubdate` datetime DEFAULT NULL COMMENT '初始填写表单提交日期',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='建立摆渡中心申请表';

#
# Dumping data for table a_ferrycentre_tab
#

LOCK TABLES `a_ferrycentre_tab` WRITE;
/*!40000 ALTER TABLE `a_ferrycentre_tab` DISABLE KEYS */;
INSERT INTO `a_ferrycentre_tab` VALUES (1,1,'爱的反复',NULL,159,'杀毒','1341234','啥地方地方','2016-05-13 09:27:49','擦',161,'阿斯蒂芬','贵人瑞','5',NULL,NULL,'vad1','5',NULL,NULL,'爱第三方','5',NULL,NULL,'自行车va','5',NULL,NULL,'admin',2275,'2016-05-27 15:22:35');
/*!40000 ALTER TABLE `a_ferrycentre_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table a_informationpublish_tab
#

DROP TABLE IF EXISTS `a_informationpublish_tab`;
CREATE TABLE `a_informationpublish_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `applydept` varchar(50) DEFAULT NULL COMMENT '申请部门或单位',
  `applydeptid` int(11) DEFAULT NULL COMMENT '申请部门或单位id',
  `applicant` varchar(50) DEFAULT NULL COMMENT '申请人',
  `applicantid` int(11) DEFAULT NULL COMMENT '申请人id',
  `publishcontent` varchar(400) DEFAULT NULL COMMENT '发布内容',
  `applydate` datetime DEFAULT NULL COMMENT '申请日期',
  `applydeptopinion` varchar(400) DEFAULT NULL COMMENT '申请部门意见',
  `applydeptsign` varchar(50) DEFAULT NULL COMMENT '申请部门签字',
  `applydeptsignid` int(11) DEFAULT NULL COMMENT '申请部门签字id',
  `applydeptsigndate` datetime DEFAULT NULL COMMENT '申请部门签字日期',
  `securityopinion` varchar(400) DEFAULT NULL COMMENT '保密管理部门审查意见',
  `securitysign` varchar(50) DEFAULT NULL COMMENT '保密管理部门签字',
  `securityid` int(11) DEFAULT NULL COMMENT '保密管理部门签字人id',
  `securitysigndate` datetime DEFAULT NULL COMMENT '保密管理部门签字日期',
  `bonddeptopinion` varchar(400) DEFAULT NULL COMMENT '证券部审核意见',
  `bonddeptsign` varchar(50) DEFAULT NULL COMMENT '证券部签字',
  `bondsignid` int(11) DEFAULT NULL COMMENT '证券部签字人id',
  `bondsigndate` datetime DEFAULT NULL COMMENT '证券部签字日期',
  `leader` varchar(400) DEFAULT NULL COMMENT '院主管领导意见',
  `leadersign` varchar(50) DEFAULT NULL COMMENT '院主管领导签字',
  `leaderid` int(11) DEFAULT NULL COMMENT '院主管领导id',
  `leadersignid` datetime DEFAULT NULL COMMENT '院主管领导签字日期',
  `infordeptopinion` varchar(400) DEFAULT NULL COMMENT '信息化管理部门执行说明',
  `infordeptsign` varchar(50) DEFAULT NULL COMMENT '信息化管理部门签字',
  `infordeptsignid` int(11) DEFAULT NULL COMMENT '信息化管理部门签字人id',
  `infordeptsigndate` datetime DEFAULT NULL COMMENT '信息化管理部门签字日期',
  `firstperson` varchar(50) DEFAULT NULL COMMENT '初始填写表单提交人',
  `firstpid` int(11) DEFAULT NULL COMMENT '初始填写表单提交人id',
  `firstsubdate` datetime DEFAULT NULL COMMENT '初始填写表单提交日期',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='互联网信息发布审批表';

#
# Dumping data for table a_informationpublish_tab
#

LOCK TABLES `a_informationpublish_tab` WRITE;
/*!40000 ALTER TABLE `a_informationpublish_tab` DISABLE KEYS */;
INSERT INTO `a_informationpublish_tab` VALUES (1,1,'dfasf法师打发',NULL,'asdf',NULL,'asdf','2016-05-17 11:08:35','asdfasd','5',NULL,NULL,'asdfdas','6',NULL,NULL,'adasd','6',NULL,NULL,'dcvzxcv','5',NULL,NULL,'dasdfaqwe','5',NULL,NULL,'admin',2275,'2016-05-27 15:39:06');
/*!40000 ALTER TABLE `a_informationpublish_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table a_internetaccount_tab
#

DROP TABLE IF EXISTS `a_internetaccount_tab`;
CREATE TABLE `a_internetaccount_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `applicant` varchar(50) DEFAULT NULL COMMENT '申请人',
  `applicantid` int(11) DEFAULT NULL COMMENT '申请人id',
  `deptname` varchar(100) DEFAULT NULL COMMENT '所在部门/单位',
  `deptid` int(11) DEFAULT NULL COMMENT '所在部门/单位id',
  `userlist` varchar(255) DEFAULT NULL COMMENT '外网实名用户名单（可附件）',
  `linkman` varchar(50) DEFAULT NULL COMMENT '联系人',
  `cellphone` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `openreason` varchar(255) DEFAULT NULL COMMENT '开通原因',
  `revokereason` varchar(255) DEFAULT NULL COMMENT '撤销原因',
  `applydeptopinion` varchar(400) DEFAULT NULL COMMENT '申请部门/单位意见',
  `applydeptsign` varchar(50) DEFAULT NULL COMMENT '申请部门/单位签字',
  `applydeptsignid` int(11) DEFAULT NULL COMMENT '申请部门/单位签字id',
  `applydeptsigndate` datetime DEFAULT NULL COMMENT '申请部门/单位签字日期',
  `dutyofficer` varchar(50) DEFAULT NULL COMMENT '责任人签字',
  `dutyofficerid` int(11) DEFAULT NULL COMMENT '责任人id',
  `dutyofficerdate` datetime DEFAULT NULL COMMENT '责任人签字日期',
  `isfinish` int(1) DEFAULT NULL COMMENT '是否完成开通（撤销）申请账号（0/1 否/是）',
  `operatrecord` varchar(400) DEFAULT NULL COMMENT '操作记录情况',
  `recorder` varchar(50) DEFAULT NULL COMMENT '操作记录人员签字',
  `recorderid` int(11) DEFAULT NULL COMMENT '操作记录人员id',
  `recorddate` datetime DEFAULT NULL COMMENT '操作记录签字日期',
  `firstperson` varchar(50) DEFAULT NULL COMMENT '初始填写表单提交人',
  `firstpid` int(11) DEFAULT NULL COMMENT '初始填写表单提交人id',
  `firstsubdate` datetime DEFAULT NULL COMMENT '初始填写表单提交日期',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='开通/撤销互联网账号审批表';

#
# Dumping data for table a_internetaccount_tab
#

LOCK TABLES `a_internetaccount_tab` WRITE;
/*!40000 ALTER TABLE `a_internetaccount_tab` DISABLE KEYS */;
INSERT INTO `a_internetaccount_tab` VALUES (1,1,'阿斯顿发',NULL,'asdv',NULL,'xzcv','asd','dasf','adsfvq','vasdvcxz','asdfzxc','5',NULL,NULL,'5',NULL,NULL,35,'','5',NULL,NULL,'admin',2275,'2016-05-27 15:32:57');
/*!40000 ALTER TABLE `a_internetaccount_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table a_notsecretpcout_tab
#

DROP TABLE IF EXISTS `a_notsecretpcout_tab`;
CREATE TABLE `a_notsecretpcout_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `deptname` varchar(50) DEFAULT NULL COMMENT '所在部门',
  `deptid` int(11) DEFAULT NULL COMMENT '所在部门id',
  `borrower` varchar(50) DEFAULT NULL COMMENT '借用人',
  `outplace` varchar(100) DEFAULT NULL COMMENT '外出地点',
  `devicenum` varchar(50) DEFAULT NULL COMMENT '设备编号',
  `diskfrom` varchar(100) DEFAULT NULL COMMENT '光盘来源',
  `mediumnum` varchar(50) DEFAULT NULL COMMENT '移动介质编号',
  `issecret` int(1) DEFAULT NULL COMMENT '移动介质是否为非密（0/1 否/是）',
  `borrowreason` varchar(400) DEFAULT NULL COMMENT '借用事由及拟处理信息内容',
  `borrowersign` varchar(50) DEFAULT NULL COMMENT '保密责任书借用人签字',
  `borrowerid` int(11) DEFAULT NULL COMMENT '借用人id',
  `borrowersigndate` datetime DEFAULT NULL COMMENT '保密责任书借用人签字日期',
  `deptleaderopinion` varchar(400) DEFAULT NULL COMMENT '部门领导意见',
  `deptleadersign` varchar(50) DEFAULT NULL COMMENT '部门领导签字',
  `deptleaderid` int(11) DEFAULT NULL COMMENT '部门领导id',
  `leadersigndate` datetime DEFAULT NULL COMMENT '部门领导签字日期',
  `devtransfer` varchar(400) DEFAULT NULL COMMENT '设备移交情况',
  `receivesign` varchar(50) DEFAULT NULL COMMENT '借用人领用签字',
  `receivesigndate` datetime DEFAULT NULL COMMENT '借用人领用签字日期',
  `returncondition` varchar(400) DEFAULT NULL COMMENT '返回检查及归还情况',
  `checkersign` varchar(50) DEFAULT NULL COMMENT '检查人签字',
  `checkerid` int(11) DEFAULT NULL COMMENT '检查人id',
  `checkersigndate` datetime DEFAULT NULL COMMENT '检查人签字日期',
  `devmanager` varchar(50) DEFAULT NULL COMMENT '设备管理人员接收设备签字',
  `devmanagerid` int(11) DEFAULT NULL COMMENT '设备管理人员id',
  `devmansigndate` datetime DEFAULT NULL COMMENT '设备管理人员签字日期',
  `securityopinion` varchar(400) DEFAULT NULL COMMENT '保密管理部门意见',
  `securitysign` varchar(50) DEFAULT NULL COMMENT '保密管理部门签字',
  `securityid` int(11) DEFAULT NULL COMMENT '保密管理部门签字人id',
  `securitysigndate` datetime DEFAULT NULL COMMENT '保密管理部门签字日期',
  `firstperson` varchar(50) DEFAULT NULL COMMENT '初始填写表单提交人',
  `firstpid` int(11) DEFAULT NULL COMMENT '初始填写表单提交人id',
  `firstsubdate` datetime DEFAULT NULL COMMENT '初始填写表单提交日期',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='非涉密便携式计算机携带外出审批表';

#
# Dumping data for table a_notsecretpcout_tab
#

LOCK TABLES `a_notsecretpcout_tab` WRITE;
/*!40000 ALTER TABLE `a_notsecretpcout_tab` DISABLE KEYS */;
INSERT INTO `a_notsecretpcout_tab` VALUES (1,1,'哒哒',NULL,'切切','阿萨德','13241d','爱疯四顿饭','1234',34,'答复','5',NULL,NULL,'发生多次','5',NULL,NULL,'发热感情吧','5',NULL,'阿道夫V字形','5',NULL,NULL,'5',NULL,NULL,'各位大神','5',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `a_notsecretpcout_tab` VALUES (2,1,'阿达',NULL,'答复','阿斯顿发','撒旦v','阿斯顿发现','出现在擦',34,'阿斯顿发','6',NULL,NULL,'阿斯顿发','6',NULL,NULL,'个人企鹅','5',NULL,'过热器','6',NULL,NULL,'5',NULL,NULL,'淘抢购打法是否','6',NULL,NULL,'admin',2275,'2016-05-27 14:32:43');
/*!40000 ALTER TABLE `a_notsecretpcout_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table a_oasysalter_tab
#

DROP TABLE IF EXISTS `a_oasysalter_tab`;
CREATE TABLE `a_oasysalter_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `formdate` datetime DEFAULT NULL COMMENT '表单内容上方的日期',
  `agent` varchar(50) DEFAULT NULL COMMENT '经办人',
  `cellphone` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `managetype` varchar(50) DEFAULT NULL COMMENT '办理类型',
  `deptalter` varchar(100) DEFAULT NULL COMMENT '部门新增或变更名称',
  `chushialter` varchar(100) DEFAULT NULL COMMENT '处室新增或变更名称',
  `typeelse` varchar(100) DEFAULT NULL COMMENT '办理类型其他内容',
  `askfor` varchar(400) DEFAULT NULL COMMENT '办理要求',
  `applydeptopinion` varchar(400) DEFAULT NULL COMMENT '申请部门意见',
  `applydeptsign` varchar(50) DEFAULT NULL COMMENT '申请部门签字',
  `applydeptsignid` int(11) DEFAULT NULL COMMENT '申请部门签字人id',
  `applydeptsigndate` datetime DEFAULT NULL COMMENT '申请部门签字日期',
  `officeopinion` varchar(400) DEFAULT NULL COMMENT '办公室意见',
  `officesign` varchar(50) DEFAULT NULL COMMENT '办公室签字',
  `officesignid` int(11) DEFAULT NULL COMMENT '办公室签字人id',
  `officesigndate` datetime DEFAULT NULL COMMENT '办公室签字日期',
  `investopinion` varchar(400) DEFAULT NULL COMMENT '经营投资部意见',
  `investsign` varchar(50) DEFAULT NULL COMMENT '经营投资部签字',
  `investsignid` int(11) DEFAULT NULL COMMENT '经营投资部签字人id',
  `investsigndate` datetime DEFAULT NULL COMMENT '经营投资部签字日期',
  `trancondition` varchar(400) DEFAULT NULL COMMENT '办理情况',
  `transign` varchar(50) DEFAULT NULL COMMENT '办理情况填写人签字',
  `transignid` int(11) DEFAULT NULL COMMENT '办理情况填写人id',
  `transigndate` datetime DEFAULT NULL COMMENT '办理情况签字日期',
  `firstperson` varchar(50) DEFAULT NULL COMMENT '初始填写表单提交人',
  `firstpid` int(11) DEFAULT NULL COMMENT '初始填写表单提交人id',
  `firstsubdate` datetime DEFAULT NULL COMMENT '初始填写表单提交日期',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='OA系统组织结构变更表';

#
# Dumping data for table a_oasysalter_tab
#

LOCK TABLES `a_oasysalter_tab` WRITE;
/*!40000 ALTER TABLE `a_oasysalter_tab` DISABLE KEYS */;
INSERT INTO `a_oasysalter_tab` VALUES (3,1,'2016-05-11 13:52:25','大方法','1414123412','156','爱迪生','vda1','阿萨德','傲霜斗雪','发热','5',NULL,NULL,'让人','5',NULL,NULL,'是打发','5',NULL,NULL,'打发','5',NULL,NULL,'admin',2275,'2016-05-11 13:52:56');
INSERT INTO `a_oasysalter_tab` VALUES (4,1,'2016-05-18 04:10:14','阿达撒放','154511',NULL,'阿斯顿发放','发的说法','暗色东方鲀','阿斯顿发','中v中v','6',NULL,NULL,'别惹我','6',NULL,NULL,'发顺丰','5',NULL,NULL,'阿斯顿发出大发发','6',NULL,NULL,'admin',2275,'2016-05-27 14:26:39');
/*!40000 ALTER TABLE `a_oasysalter_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table a_pantchrecord_tab
#

DROP TABLE IF EXISTS `a_pantchrecord_tab`;
CREATE TABLE `a_pantchrecord_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `checkdate` datetime DEFAULT NULL COMMENT '检查日期',
  `checkplace` varchar(100) DEFAULT NULL COMMENT '检查地点',
  `checkcondition` varchar(400) DEFAULT NULL COMMENT '检查情况',
  `checker` varchar(50) DEFAULT NULL COMMENT '检查人',
  `checkerid` int(11) DEFAULT NULL COMMENT '检查人id',
  `remark` varchar(400) DEFAULT NULL COMMENT '备注',
  `firstperson` varchar(50) DEFAULT NULL COMMENT '添加人',
  `firstpid` int(11) DEFAULT NULL COMMENT '添加人id',
  `firstsubdate` datetime DEFAULT NULL COMMENT '添加日期',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='配线间周检查记录表';

#
# Dumping data for table a_pantchrecord_tab
#

LOCK TABLES `a_pantchrecord_tab` WRITE;
/*!40000 ALTER TABLE `a_pantchrecord_tab` DISABLE KEYS */;
INSERT INTO `a_pantchrecord_tab` VALUES (1,1,'2016-05-27 12:00:00','开户费阿萨德','范德萨','答复',NULL,'as','admin',2275,'2016-05-27 15:04:24');
/*!40000 ALTER TABLE `a_pantchrecord_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table a_secretpcout_tab
#

DROP TABLE IF EXISTS `a_secretpcout_tab`;
CREATE TABLE `a_secretpcout_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `deptname` varchar(50) DEFAULT NULL COMMENT '所在部门',
  `deptid` int(11) DEFAULT NULL COMMENT '所在部门id',
  `user` varchar(50) DEFAULT NULL COMMENT '使用人',
  `outplace` varchar(100) DEFAULT NULL COMMENT '外出地点',
  `devicenum` varchar(50) DEFAULT NULL COMMENT '设备编号',
  `devicesecurity` varchar(10) DEFAULT NULL COMMENT '设备密级',
  `iscontentsecret` int(1) DEFAULT NULL COMMENT '是否存储涉密信息（0/1 否/是）',
  `diskfrom` varchar(100) DEFAULT NULL COMMENT '光盘来源',
  `mediumnum` varchar(50) DEFAULT NULL COMMENT '移动介质编号',
  `mediumsecurity` varchar(10) DEFAULT NULL COMMENT '移动介质密级',
  `impboxnum` varchar(50) DEFAULT NULL COMMENT '单向导入盒编号',
  `impboxsecurity` varchar(10) DEFAULT NULL COMMENT '单向导入盒密级',
  `borrowreason` varchar(400) DEFAULT NULL COMMENT '借用事由及拟处理信息内容',
  `applyopenport` varchar(100) DEFAULT NULL COMMENT '申请开放端口',
  `openportelse` varchar(50) DEFAULT NULL COMMENT '申请开放端口其他内容',
  `applyinstallsoft` varchar(100) DEFAULT NULL COMMENT '申请需安装软件',
  `usersign` varchar(50) DEFAULT NULL COMMENT '使用人签字 保密责任书',
  `userid` int(11) DEFAULT NULL COMMENT '使用人id 保密责任书',
  `usersigndate` datetime DEFAULT NULL COMMENT '使用人签字日期 保密责任书',
  `deptleaderopinion` varchar(400) DEFAULT NULL COMMENT '部门领导意见',
  `deptleadersign` varchar(50) DEFAULT NULL COMMENT '部门领导签字',
  `deptleaderid` int(11) DEFAULT NULL COMMENT '部门领导id',
  `leadersigndate` datetime DEFAULT NULL COMMENT '部门领导签字日期',
  `isupdate` int(1) DEFAULT NULL COMMENT '安全产品是否升级（0/1 否/是）',
  `updateversion` varchar(10) DEFAULT NULL COMMENT '版本号',
  `openport` varchar(100) DEFAULT NULL COMMENT '开放端口',
  `portelse` varchar(50) DEFAULT NULL COMMENT '开放端口其他内容',
  `installsoft` varchar(100) DEFAULT NULL COMMENT '需安装软件',
  `operator1` varchar(50) DEFAULT NULL COMMENT '操作员1 安全产品升级及开放端口情况操作员签字',
  `operatorid1` int(11) DEFAULT NULL COMMENT '操作员1 id',
  `operatordate1` datetime DEFAULT NULL COMMENT '操作员1签字日期',
  `receiver` varchar(50) DEFAULT NULL COMMENT '领用人签字',
  `receiverid` int(11) DEFAULT NULL COMMENT '领用人id',
  `receiverdate` datetime DEFAULT NULL COMMENT '领用人签字日期',
  `checkcondition` varchar(200) DEFAULT NULL COMMENT '返回检查情况',
  `conditionelse` varchar(100) DEFAULT NULL COMMENT '返回检查情况其他内容',
  `transfersign` varchar(50) DEFAULT NULL COMMENT '设备移交人签字',
  `transferid` int(11) DEFAULT NULL COMMENT '设备移交人id',
  `transferdate` datetime DEFAULT NULL COMMENT '移交人签字日期',
  `checkersign` varchar(50) DEFAULT NULL COMMENT '检查人签字',
  `checkerid` int(11) DEFAULT NULL COMMENT '检查人id',
  `checkersigndate` datetime DEFAULT NULL COMMENT '检查人签字日期',
  `portcondition` varchar(200) DEFAULT NULL COMMENT '信息清除及端口关闭情况',
  `closeSolutionelse` varchar(100) DEFAULT NULL COMMENT '信息清除及端口关闭情况其他',
  `operator2` varchar(50) DEFAULT NULL COMMENT '操作员2 信息清除及端口关闭情况操作员签字',
  `operatorid2` int(11) DEFAULT NULL COMMENT '操作员2 id',
  `operatordate2` datetime DEFAULT NULL COMMENT '操作员2 签字日期',
  `securityopinion` varchar(400) DEFAULT NULL COMMENT '保密管理部门意见',
  `securitysign` varchar(50) DEFAULT NULL COMMENT '保密管理部门签字',
  `securityid` int(11) DEFAULT NULL COMMENT '保密管理部门签字人id',
  `securitysigndate` datetime DEFAULT NULL COMMENT '保密管理部门签字日期',
  `firstperson` varchar(50) DEFAULT NULL COMMENT '初始填写表单提交人',
  `firstpid` int(11) DEFAULT NULL COMMENT '初始填写表单提交人id',
  `firstsubdate` datetime DEFAULT NULL COMMENT '初始填写表单提交日期',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='借用专供外出携带涉密便携式计算机审批表';

#
# Dumping data for table a_secretpcout_tab
#

LOCK TABLES `a_secretpcout_tab` WRITE;
/*!40000 ALTER TABLE `a_secretpcout_tab` DISABLE KEYS */;
INSERT INTO `a_secretpcout_tab` VALUES (1,1,'俺的沙发',NULL,'大师傅在现场','爱疯四顿饭','按时打发','21',34,'阿斯顿发放','按时打发','22','按时打发','22','阿斯顿发','99, 100','俺的沙发','阿斯顿发','5',NULL,NULL,'俺的沙发放','5',NULL,NULL,34,'阿道夫','100','爱上的方法','阿斯顿发','5',NULL,NULL,'6',NULL,NULL,'109','都是反复','5',NULL,NULL,'5',NULL,NULL,'106, 107','阿斯顿发','5',NULL,NULL,'俺的沙发','5',NULL,NULL,'admin',2275,'2016-05-16 15:17:03');
INSERT INTO `a_secretpcout_tab` VALUES (2,1,'说得对',NULL,'撤销','成长性','安防','21',34,'导出','新增','22','大','21','阿斯顿发','99','多少个','自行车','6',NULL,NULL,'答复','6',NULL,NULL,34,'也很好','99','呵呵','撤销','5',NULL,NULL,'6',NULL,NULL,'109','维护','6',NULL,NULL,'5',NULL,NULL,'105','海棠湾','5',NULL,NULL,'大风歌','5',NULL,NULL,'admin',2275,'2016-05-27 14:47:19');
/*!40000 ALTER TABLE `a_secretpcout_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table a_sendoutmaintain_tab
#

DROP TABLE IF EXISTS `a_sendoutmaintain_tab`;
CREATE TABLE `a_sendoutmaintain_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `applicant` varchar(50) DEFAULT NULL COMMENT '申请人',
  `applicantid` int(11) DEFAULT NULL COMMENT '申请人id',
  `devprincipal` varchar(50) DEFAULT NULL COMMENT '设备责任人',
  `devprincipalid` int(11) DEFAULT NULL COMMENT '设备责任人id',
  `maintaintype` varchar(50) DEFAULT NULL COMMENT '维修方式',
  `deviceindex` varchar(50) DEFAULT NULL COMMENT '设备编号',
  `devicesecurity` varchar(50) DEFAULT NULL COMMENT '设备密级',
  `outlanderdept` varchar(100) DEFAULT NULL COMMENT '外来人员单位',
  `issignsecret1` int(1) DEFAULT NULL COMMENT '是否与外来人员单位签订保密协议（0/1 否/是）',
  `isaptitude1` int(1) DEFAULT NULL COMMENT '外来人员单位是否具有相关资质（0/1 否/是）',
  `assignaccompan` varchar(50) DEFAULT NULL COMMENT '拟定旁站陪同人',
  `sendoutdept` varchar(100) DEFAULT NULL COMMENT '送外单位',
  `isremovedisk` int(1) DEFAULT NULL COMMENT '是否拆除存储介质和固件（0/1 否/是）',
  `issignsecret2` int(1) DEFAULT NULL COMMENT '是否与送外单位签订保密协议（0/1 否/是）',
  `isaptitude2` int(1) DEFAULT NULL COMMENT '送外单位是否具有相关资质（0/1 否/是）',
  `assignsender` varchar(50) DEFAULT NULL COMMENT '拟定送修人',
  `infordeptopinion` varchar(400) DEFAULT NULL COMMENT '信息化管理部门意见',
  `infordeptsign` varchar(50) DEFAULT NULL COMMENT '信息化管理部门签字',
  `infordeptsignid` int(11) DEFAULT NULL COMMENT '信息化管理部门签字人id',
  `infordeptsigndate` datetime DEFAULT NULL COMMENT '信息化管理部门签字日期',
  `deviceuser` varchar(50) DEFAULT NULL COMMENT '设备使用人移交设备签字',
  `deviceuserid` int(11) DEFAULT NULL COMMENT '设备使用人id',
  `divuserdate` datetime DEFAULT NULL COMMENT '设备使用人签字日期',
  `senderreceive` varchar(50) DEFAULT NULL COMMENT '送修人接收签字',
  `senderid` int(11) DEFAULT NULL COMMENT '送修人id',
  `senderdate` datetime DEFAULT NULL COMMENT '送修人接收签字日期',
  `senddate` datetime DEFAULT NULL COMMENT '送外时间',
  `returndate` datetime DEFAULT NULL COMMENT '返回时间',
  `issignsecret3` int(1) DEFAULT NULL COMMENT '是否与外来人员或送外维修单位人员签订保密协议（0/1 否/是）',
  `faultreason` varchar(400) DEFAULT NULL COMMENT '故障原因',
  `processmethod` varchar(400) DEFAULT NULL COMMENT '维修过程和方法',
  `maintainresult` varchar(200) DEFAULT NULL COMMENT '维修结果',
  `maintainsign` varchar(50) DEFAULT NULL COMMENT '维修人签字',
  `maintainsignid` int(11) DEFAULT NULL COMMENT '维修人员id  可能为外部人员',
  `maintainsigndate` datetime DEFAULT NULL COMMENT '维修人签字日期',
  `accompansign` varchar(50) DEFAULT NULL COMMENT '站旁陪同人员签字',
  `accompansigndate` datetime DEFAULT NULL COMMENT '站旁陪同人员签字日期',
  `accompanid` int(11) DEFAULT NULL COMMENT '站旁陪同人员id',
  `receive` varchar(50) DEFAULT NULL COMMENT '设备使用人接收设备签字',
  `receivedate` datetime DEFAULT NULL COMMENT '设备使用人接收设备签字日期',
  `sendertransfer` varchar(50) DEFAULT NULL COMMENT '送修人移交设备签字',
  `transferdate` datetime DEFAULT NULL COMMENT '送修人移交设备签字日期',
  `remark` varchar(400) DEFAULT NULL COMMENT '备注',
  `firstperson` varchar(50) DEFAULT NULL COMMENT '初始填写表单提交人',
  `firstpid` int(11) DEFAULT NULL COMMENT '初始填写表单提交人id',
  `firstsubdate` datetime DEFAULT NULL COMMENT '初始填写表单提交日期',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='外来人员维修、送外维修审批表';

#
# Dumping data for table a_sendoutmaintain_tab
#

LOCK TABLES `a_sendoutmaintain_tab` WRITE;
/*!40000 ALTER TABLE `a_sendoutmaintain_tab` DISABLE KEYS */;
INSERT INTO `a_sendoutmaintain_tab` VALUES (1,1,'阿达的',NULL,'都是非常v',NULL,'113','阿斯顿发','22','阿斯顿发',35,34,'打发斯蒂芬','阿斯顿发宣传',35,34,35,'案发地方','自行车中在','6',NULL,NULL,'5',NULL,NULL,'6',NULL,NULL,'2016-05-16 17:36:49','2016-05-16 17:36:51',35,'阿斯顿发','从vxv','这XCV','6',NULL,NULL,'5',NULL,NULL,'5',NULL,'6',NULL,'阿斯顿发','admin',2275,'2016-05-16 17:37:06');
INSERT INTO `a_sendoutmaintain_tab` VALUES (2,1,'阿萨德',NULL,'大声道',NULL,'114','阿斯顿发','22','阿斯顿发',35,34,'打发斯蒂芬','阿斯顿发宣传',34,35,34,'案发地方','阿萨德','6',NULL,NULL,'5',NULL,NULL,'5',NULL,NULL,'2016-05-16 17:42:26','2016-05-16 17:42:28',35,'阿萨德','大声道','大厦','6',NULL,NULL,'5',NULL,NULL,'5',NULL,'6',NULL,'阿达','admin',2275,'2016-05-16 17:42:41');
INSERT INTO `a_sendoutmaintain_tab` VALUES (3,1,'阿达',NULL,'操作',NULL,'113','操作爱的撒旦','22','暗室逢灯',35,34,'大师傅','发生多次',35,34,35,'正处在','阿斯顿发','6',NULL,NULL,'5',NULL,NULL,'6',NULL,NULL,'2016-05-18 05:00:29','2016-05-18 05:00:31',35,'阿道夫','出租车','agree','6',NULL,NULL,'5',NULL,NULL,'6',NULL,'5',NULL,'我听话阿达','admin',2275,'2016-05-27 14:55:55');
/*!40000 ALTER TABLE `a_sendoutmaintain_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table a_sysauthoralter_tab
#

DROP TABLE IF EXISTS `a_sysauthoralter_tab`;
CREATE TABLE `a_sysauthoralter_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `sysname` varchar(50) DEFAULT NULL COMMENT '应用系统名称',
  `nowauthor` varchar(255) DEFAULT NULL COMMENT '现有用户权限',
  `afterauthor` varchar(255) DEFAULT NULL COMMENT '变更后的用户权限',
  `firstperson` varchar(50) DEFAULT NULL COMMENT '添加人',
  `firstpid` int(11) DEFAULT NULL COMMENT '添加人id',
  `firstsubdate` datetime DEFAULT NULL COMMENT '添加日期',
  `did` int(11) DEFAULT NULL COMMENT '用户权限变更审批表id',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='应用系统权限变更内容表';

#
# Dumping data for table a_sysauthoralter_tab
#

LOCK TABLES `a_sysauthoralter_tab` WRITE;
/*!40000 ALTER TABLE `a_sysauthoralter_tab` DISABLE KEYS */;
INSERT INTO `a_sysauthoralter_tab` VALUES (1,1,'adads','qewe','xc','admin',2275,'2016-05-18 09:39:57',NULL);
/*!40000 ALTER TABLE `a_sysauthoralter_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table a_sysconfigalter_tab
#

DROP TABLE IF EXISTS `a_sysconfigalter_tab`;
CREATE TABLE `a_sysconfigalter_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `applicant` varchar(50) DEFAULT NULL COMMENT '系统配置变更申请人',
  `applicantid` int(11) DEFAULT NULL COMMENT '系统配置变更申请人id',
  `applydate` datetime DEFAULT NULL COMMENT '申请日期',
  `devorsysname` varchar(100) DEFAULT NULL COMMENT '变更设备或系统名称',
  `alterreason` varchar(400) DEFAULT NULL COMMENT '配置变更原因',
  `contentanalyze` varchar(400) DEFAULT NULL COMMENT '配置变更内容及影响情况分析',
  `infordeptopinion` varchar(400) DEFAULT NULL COMMENT '信息化管理部门意见',
  `infordeptsign` varchar(50) DEFAULT NULL COMMENT '信息化管理部门签字',
  `infordeptsignid` int(11) DEFAULT NULL COMMENT '信息化管理部门签字人id',
  `infordeptsigndate` datetime DEFAULT NULL COMMENT '信息化管理部门签字日期',
  `securityopinion` varchar(400) DEFAULT NULL COMMENT '保密管理部门意见',
  `securitysign` varchar(50) DEFAULT NULL COMMENT '保密管理部门签字',
  `securityid` int(11) DEFAULT NULL COMMENT '保密管理部门签字人id',
  `securitysigndate` datetime DEFAULT NULL COMMENT '保密管理部门签字日期',
  `resultanalyze` varchar(400) DEFAULT NULL COMMENT '配置变更操作结果及影响情况分析',
  `operatorsign` varchar(50) DEFAULT NULL COMMENT '操作人签字',
  `operatorid` int(11) DEFAULT NULL COMMENT '操作人id',
  `operatorsigndate` datetime DEFAULT NULL COMMENT '操作人签字时间',
  `firstperson` varchar(50) DEFAULT NULL COMMENT '初始填写表单提交人',
  `firstpid` int(11) DEFAULT NULL COMMENT '初始填写表单提交人id',
  `firstsubdate` datetime DEFAULT NULL COMMENT '初始填写表单提交日期',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='系统配置变更审批表';

#
# Dumping data for table a_sysconfigalter_tab
#

LOCK TABLES `a_sysconfigalter_tab` WRITE;
/*!40000 ALTER TABLE `a_sysconfigalter_tab` DISABLE KEYS */;
INSERT INTO `a_sysconfigalter_tab` VALUES (1,1,'大厦',NULL,'2016-05-11 15:03:52','的是','刚','发放','大厦','5',NULL,NULL,'阿斯蒂芬','5',NULL,NULL,'发嘚瑟','5',NULL,NULL,'admin',2275,'2016-05-11 15:04:08');
INSERT INTO `a_sysconfigalter_tab` VALUES (2,1,'大师傅',NULL,'2016-05-18 03:50:29','发的说法v','爱上自行车','阿斯顿发','在持续\r\n\t\t\t\t\t\t\t','5',NULL,NULL,'阿斯顿发','6',NULL,NULL,'asdf\r\n\t\t\t\t\t\t\t','6',NULL,NULL,'admin',2275,'2016-05-27 14:02:50');
/*!40000 ALTER TABLE `a_sysconfigalter_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table a_telltalerecord_tab
#

DROP TABLE IF EXISTS `a_telltalerecord_tab`;
CREATE TABLE `a_telltalerecord_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `eventtype` int(1) DEFAULT NULL COMMENT '事件类型',
  `happendate` datetime DEFAULT NULL COMMENT '发生时间',
  `happenreason` varchar(400) DEFAULT NULL COMMENT '发生原因',
  `effectrange` varchar(255) DEFAULT NULL COMMENT '影响范围',
  `measures` varchar(400) DEFAULT NULL COMMENT '补救措施',
  `result` varchar(255) DEFAULT NULL COMMENT '最终结果',
  `informant` varchar(50) DEFAULT NULL COMMENT '填报人',
  `informantid` int(11) DEFAULT NULL COMMENT '填报人id',
  `checker` varchar(50) DEFAULT NULL COMMENT '部门审核人',
  `checkerid` int(11) DEFAULT NULL COMMENT '部门审核人id',
  `firstperson` varchar(50) DEFAULT NULL COMMENT '初始填写表单提交人',
  `firstpid` int(11) DEFAULT NULL COMMENT '初始填写表单提交人id',
  `firstsubdate` datetime DEFAULT NULL COMMENT '初始填写表单提交日期',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='系统失泄密记录表';

#
# Dumping data for table a_telltalerecord_tab
#

LOCK TABLES `a_telltalerecord_tab` WRITE;
/*!40000 ALTER TABLE `a_telltalerecord_tab` DISABLE KEYS */;
INSERT INTO `a_telltalerecord_tab` VALUES (1,1,152,'2016-05-09 04:21:02','原因1撒','范围1','措施1','结果1','填报人1',NULL,'部门审核人1',NULL,'admin',2275,'2016-05-27 15:28:04');
/*!40000 ALTER TABLE `a_telltalerecord_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table a_videomeeting_tab
#

DROP TABLE IF EXISTS `a_videomeeting_tab`;
CREATE TABLE `a_videomeeting_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `meetingname` varchar(100) DEFAULT NULL COMMENT '会议名称',
  `applyorgname` varchar(50) DEFAULT NULL COMMENT '申请部门（单位）',
  `applyorgid` varchar(50) DEFAULT NULL COMMENT '申请部门id',
  `applicant` varchar(50) DEFAULT NULL COMMENT '申请人',
  `applicantid` int(11) DEFAULT NULL COMMENT '申请人id',
  `cellphone` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `meetingtype` int(1) DEFAULT NULL COMMENT '会议形式（0/1/2 集团/院本部/其他）',
  `meetingplace` varchar(255) DEFAULT NULL COMMENT '会议地点',
  `meetplaceqt` varchar(50) DEFAULT NULL COMMENT '会议地点其他',
  `meetingagenda` varchar(400) DEFAULT NULL COMMENT '会议议程',
  `jingqu` varchar(200) DEFAULT NULL COMMENT '视频会议参会单位（京区）',
  `jingwai` varchar(200) DEFAULT NULL COMMENT '视频会议参会单位（京外）',
  `meetingtime` datetime DEFAULT NULL COMMENT '会议时间',
  `jointdebugtime` datetime DEFAULT NULL COMMENT '联调时间',
  `isppt` int(1) DEFAULT NULL COMMENT '是否需要播放PPT、录像片（0/1 否/是）',
  `meetingmode` int(1) DEFAULT NULL COMMENT '会议模式（0/1 主会场发言，分会场收看/主分会场均有发言）',
  `speakplace` varchar(255) DEFAULT NULL COMMENT '发言会场（京区）',
  `deptopinion` varchar(400) DEFAULT NULL COMMENT '承办部门/单位意见',
  `deptsign` varchar(50) DEFAULT NULL COMMENT '承办部门/单位签字',
  `deptid` varchar(50) DEFAULT NULL COMMENT '承办部门/单位id',
  `deptsigndate` datetime DEFAULT NULL COMMENT '承办部门/单位签字日期',
  `speakplaceout` varchar(255) DEFAULT NULL COMMENT '发言会场（京外）',
  `firstperson` varchar(50) DEFAULT NULL COMMENT '初始填写表单提交人',
  `firstpid` int(11) DEFAULT NULL COMMENT '初始填写表单提交人id',
  `firstsubdate` datetime DEFAULT NULL COMMENT '初始填写表单提交日期',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='视频会议系统使用申请表';

#
# Dumping data for table a_videomeeting_tab
#

LOCK TABLES `a_videomeeting_tab` WRITE;
/*!40000 ALTER TABLE `a_videomeeting_tab` DISABLE KEYS */;
INSERT INTO `a_videomeeting_tab` VALUES (45,1,'会议名称1','申请单文1','','申请人1',NULL,'1234155123',59,'62, 63','','会议议程1','66, 67','70, 71, 74, 75','2016-05-09 17:20:56','2016-05-26 17:20:59',34,80,'67, 68','单位意见','6','',NULL,'72, 77, 78',NULL,NULL,NULL);
INSERT INTO `a_videomeeting_tab` VALUES (46,1,'教育厅','打发','','还挺好听',NULL,'1324123412',59,'63','他今天','纠结','67, 68','72, 76','2016-05-11 11:23:44','2016-05-20 11:23:46',34,80,'68','句酷','6','',NULL,'73, 78','admin',2275,NULL);
INSERT INTO `a_videomeeting_tab` VALUES (47,1,'教育厅','打发','','还挺好听',NULL,'1324123412',59,'63','','发的说法','66','70, 74','2016-05-11 11:39:45','2016-05-06 11:39:46',34,80,'67','爱的','6','',NULL,'72, 77','admin',2275,'2016-05-11 11:39:54');
INSERT INTO `a_videomeeting_tab` VALUES (48,1,'大师傅','阿斯顿发现','','如果',NULL,'1431515',59,'63','阿斯顿发','\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t注册\r\n\t\t\t\t\t\t\t\r\n\t\t\t\t\t\t\t','66, 67','70, 74, 78','2016-05-27 13:28:40','2016-05-27 13:28:42',35,80,'67, 68','大师傅asdfa','6','',NULL,'72, 73, 77, 78','admin',2275,'2016-05-27 13:28:45');
/*!40000 ALTER TABLE `a_videomeeting_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table a_wiresysrecord_tab
#

DROP TABLE IF EXISTS `a_wiresysrecord_tab`;
CREATE TABLE `a_wiresysrecord_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `checkdate` datetime DEFAULT NULL COMMENT '检查日期',
  `checkplace` varchar(100) DEFAULT NULL COMMENT '检查地点',
  `checkcondition` varchar(400) DEFAULT NULL COMMENT '检查情况',
  `checker` varchar(50) DEFAULT NULL COMMENT '检查人',
  `checkerid` int(11) DEFAULT NULL COMMENT '检查人id',
  `remark` varchar(400) DEFAULT NULL COMMENT '备注',
  `firstperson` varchar(50) DEFAULT NULL COMMENT '添加人',
  `firstpid` int(11) DEFAULT NULL COMMENT '添加人id',
  `firstsubdate` datetime DEFAULT NULL COMMENT '添加日期',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='布线系统季度检查记录表';

#
# Dumping data for table a_wiresysrecord_tab
#

LOCK TABLES `a_wiresysrecord_tab` WRITE;
/*!40000 ALTER TABLE `a_wiresysrecord_tab` DISABLE KEYS */;
INSERT INTO `a_wiresysrecord_tab` VALUES (2,1,'2016-05-12 12:00:00','安华桥SaaS','阿萨德','对对对',NULL,'发的说法','admin',2275,'2016-05-27 15:00:16');
/*!40000 ALTER TABLE `a_wiresysrecord_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table p_enumeration
#

DROP TABLE IF EXISTS `p_enumeration`;
CREATE TABLE `p_enumeration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) NOT NULL,
  `enName` varchar(50) NOT NULL,
  `displayRef` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `enumerationType` int(11) DEFAULT NULL,
  `creator` int(11) DEFAULT NULL,
  `isIndexSHow` int(11) DEFAULT NULL,
  `pxorder` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

#
# Dumping data for table p_enumeration
#

LOCK TABLES `p_enumeration` WRITE;
/*!40000 ALTER TABLE `p_enumeration` DISABLE KEYS */;
INSERT INTO `p_enumeration` VALUES (2,5,'BM-01-01_change','BM-01-01调整目的','国家秘密事项的变更或解密审批表调整目的',0,0,NULL,NULL);
INSERT INTO `p_enumeration` VALUES (3,2,'yesNo','yesNo','yesNo',0,0,NULL,NULL);
INSERT INTO `p_enumeration` VALUES (4,8,'page_27_applyerstyle','page_27_申请人类别','设备接入/退出涉密信息系统审批表_申请人类别',0,0,NULL,NULL);
INSERT INTO `p_enumeration` VALUES (5,5,'page_27_devoperatstyle','page_27_设备接入/退出','设备接入/退出涉密信息系统审批表_类型',0,0,NULL,NULL);
INSERT INTO `p_enumeration` VALUES (6,5,'page_27_applyersecurity','page_27_申请人密级','设备接入/退出涉密信息系统审批表_申请人密级',0,0,NULL,NULL);
INSERT INTO `p_enumeration` VALUES (7,5,'page_27_devstyle','page_27_设备类型','设备接入/退出涉密信息系统审批表_设备类型',0,0,NULL,NULL);
INSERT INTO `p_enumeration` VALUES (8,3,'page_27_devsecurity','page_27_设备密级','设备接入/退出涉密信息系统审批表_设备密级',0,0,NULL,NULL);
INSERT INTO `p_enumeration` VALUES (9,5,'page_27_openoroutsys','page_27_开通/退出系统名称','设备接入/退出涉密信息系统审批表_申请人申请开通/退出系统名称',0,0,NULL,NULL);
INSERT INTO `p_enumeration` VALUES (10,4,'page_27_applyinreasion','page_27_申请接入原因','设备接入/退出涉密信息系统审批表_申请接入原因',0,0,NULL,NULL);
INSERT INTO `p_enumeration` VALUES (11,4,'page_27_applyoutreasion','page_27_申请退出原因','设备接入/退出涉密信息系统审批表_申请退出原因',0,0,NULL,NULL);
INSERT INTO `p_enumeration` VALUES (12,2,'yesOrNo','是否','是否',0,0,NULL,NULL);
INSERT INTO `p_enumeration` VALUES (13,2,'openOrClose','开放/关闭','开放/关闭',0,0,NULL,NULL);
INSERT INTO `p_enumeration` VALUES (14,8,'page_27_openAccountResult','page_27_开通/关闭账户操作结果','设备接入/退出涉密信息系统审批表_开通/关闭账户操作结果',0,0,NULL,NULL);
INSERT INTO `p_enumeration` VALUES (15,2,'sex','性别','性别',0,0,NULL,NULL);
INSERT INTO `p_enumeration` VALUES (16,11,'page_28_faultdescribe','page_27_故障描述','设备维护、维修审批表_设备负责人描述故障现象',0,0,NULL,NULL);
INSERT INTO `p_enumeration` VALUES (17,3,'BM-02-02persontype','BM-02-02人员类型','涉密岗位聘用人员保密资格审查表人员类型',0,0,NULL,NULL);
INSERT INTO `p_enumeration` VALUES (18,5,'page_28_diagnosecondition','page_27_诊断情况','设备维护、维修审批表_维修人员诊断情况',0,0,NULL,NULL);
INSERT INTO `p_enumeration` VALUES (19,4,'page_29_meetingtype','page_29_会议形式','视频会议系统使用申请表_会议形式',0,0,NULL,NULL);
INSERT INTO `p_enumeration` VALUES (20,4,'page_29_meetingplace','page_29_会议地点','视频会议系统使用申请表_会议地点',0,0,NULL,NULL);
INSERT INTO `p_enumeration` VALUES (21,5,'page_29_meetdeptJing','page_29_参会单位（京区）','视频会议系统使用申请表_参会单位（京区）',0,0,NULL,NULL);
INSERT INTO `p_enumeration` VALUES (22,31,'page_29_meetdeptJingOut','page_29_参会单位(京外)','视频会议系统使用申请表_参会单位',0,0,NULL,NULL);
INSERT INTO `p_enumeration` VALUES (23,2,'page_29_meetModule','page_29_会议模式','视频会议系统使用申请表_会议模式',0,0,NULL,NULL);
INSERT INTO `p_enumeration` VALUES (24,4,'BM-02-03procls','BM-02-03项目密级','涉密人员密级审定表项目密级',0,0,NULL,NULL);
INSERT INTO `p_enumeration` VALUES (25,4,'BM-02-03pidentity','BM-02-03人员身份','涉密人员密级审定表人员身份',0,0,NULL,NULL);
INSERT INTO `p_enumeration` VALUES (26,6,'BM-02-06onlinestyle','BM-02-06上网方式','员工安全保密承诺书上网方式',0,0,NULL,NULL);
INSERT INTO `p_enumeration` VALUES (27,2,'page_36_alterreasion','page_36_更换原因','更换USBKEY申请表_更换原因',0,0,NULL,NULL);
INSERT INTO `p_enumeration` VALUES (28,8,'page_37_applyPort','page_37_申请开放端口','借用专供外出携带涉密便携式计算机审批表_申请开放端口',0,0,NULL,NULL);
INSERT INTO `p_enumeration` VALUES (29,8,'page_37_portCloseSolution','page_37_端口关闭情况','借用专供外出携带涉密便携式计算机审批表_端口关闭情况',0,0,NULL,NULL);
INSERT INTO `p_enumeration` VALUES (30,5,'page_37_checkSolution','page_37_返回检查情况','借用专供外出携带涉密便携式计算机审批表_返回检查情况',0,0,NULL,NULL);
INSERT INTO `p_enumeration` VALUES (31,2,'page_38_maintainType','page_38_维修方式','外来人员维修、送外维修审批表_维修方式',0,0,NULL,NULL);
INSERT INTO `p_enumeration` VALUES (32,5,'BM-03-02fyyt','BM-03-02复印用途','本部涉密载体外出复制审批单复印用途',0,0,NULL,NULL);
INSERT INTO `p_enumeration` VALUES (33,4,'BM-03-02czdw','BM-03-02承制单位','本部涉密载体外出复制审批单承制单位',0,0,NULL,NULL);
INSERT INTO `p_enumeration` VALUES (34,2,'BM_05-03jzmj','BM_05-03介质密级','专用存储介质借用审批表介质密级',0,0,NULL,NULL);
INSERT INTO `p_enumeration` VALUES (35,4,'BM-05-04jzmj','BM-05-04介质密级','本部存储介质携带外出审批表介质密级',0,0,NULL,NULL);
INSERT INTO `p_enumeration` VALUES (36,2,'BM-07-03pzsl','BM-07-03拍照摄录','本部外来人员参观审批表是否拍照摄录',0,0,NULL,NULL);
INSERT INTO `p_enumeration` VALUES (37,2,'BM-07-04psnr','BM-07-04拍摄内容','本部拍摄活动审批表拍摄内容是否涉密',0,0,NULL,NULL);
INSERT INTO `p_enumeration` VALUES (38,2,'BM-10-02checkType','BM-10-02检查方式','涉密协作配套单位保密监督检查表（样本）_监督检查方式',0,0,NULL,NULL);
INSERT INTO `p_enumeration` VALUES (39,4,'BM-10-02deptBelong','BM-10-02单位属于','涉密协作配套单位保密监督检查表（样本）_单位属于',0,0,NULL,NULL);
INSERT INTO `p_enumeration` VALUES (40,2,'BM-02-11lxqk','BM-02-11履行保密管理制度情况','季度保密补贴考核发放表履行保密管理制度情况',0,0,NULL,NULL);
INSERT INTO `p_enumeration` VALUES (41,6,'BM-03-04ztlb','BM-03-04载体类别','部门或个人涉密载体台帐载体类别',0,0,NULL,NULL);
INSERT INTO `p_enumeration` VALUES (42,4,'BM-07-04psdj','BM-07-04涉密等级','本部拍摄活动审批表涉密等级',0,0,NULL,NULL);
INSERT INTO `p_enumeration` VALUES (43,2,'BM-08-01hymj','BM-08-01会议密级','本部涉密会议保密管理审批表会议密级',0,0,NULL,NULL);
INSERT INTO `p_enumeration` VALUES (44,2,'page_44_telltaleRecord','page_44_事件类型','系统失泄密记录表_事件类型',0,0,NULL,NULL);
INSERT INTO `p_enumeration` VALUES (45,2,'page_33_sysSec','page_33_系统密级','应用系统入网审批表_系统密级',0,0,NULL,NULL);
INSERT INTO `p_enumeration` VALUES (46,4,'page_34_manageType','page_34_办理类型','OA系统组织结构变更单_办理类型',0,0,NULL,NULL);
INSERT INTO `p_enumeration` VALUES (47,2,'page_43_security','page_43_处理信息最高密级','建立摆渡中心申请表_处理信息最高密级',0,0,NULL,NULL);
INSERT INTO `p_enumeration` VALUES (48,2,'page_43_ferryerSecurity','page_43_摆渡员密级','建立摆渡中心申请表_摆渡员密级',0,0,NULL,NULL);
INSERT INTO `p_enumeration` VALUES (49,2,'page_36_security','page_36_密级','更换USBKEY申请表_密级',0,0,NULL,NULL);
/*!40000 ALTER TABLE `p_enumeration` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table p_enumerationvalue
#

DROP TABLE IF EXISTS `p_enumerationvalue`;
CREATE TABLE `p_enumerationvalue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) NOT NULL,
  `valueName` varchar(50) NOT NULL,
  `displayRef` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `enumeration` int(11) DEFAULT NULL,
  `creator` int(11) DEFAULT NULL,
  `pxorder` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=utf8;

#
# Dumping data for table p_enumerationvalue
#

LOCK TABLES `p_enumerationvalue` WRITE;
/*!40000 ALTER TABLE `p_enumerationvalue` DISABLE KEYS */;
INSERT INTO `p_enumerationvalue` VALUES (3,0,'变更密级','变更密级','变更密级',2,0,1);
INSERT INTO `p_enumerationvalue` VALUES (4,0,'解密','解密','解密',2,0,2);
INSERT INTO `p_enumerationvalue` VALUES (5,0,'同意','同意','同意',3,0,1);
INSERT INTO `p_enumerationvalue` VALUES (6,0,'不同意','不同意','不同意',3,0,2);
INSERT INTO `p_enumerationvalue` VALUES (7,0,'正式员工','正式员工','正式员工',4,0,1);
INSERT INTO `p_enumerationvalue` VALUES (8,0,'借调人员','借调人员','借调人员',4,0,2);
INSERT INTO `p_enumerationvalue` VALUES (9,0,'返聘人员','返聘人员','返聘人员',4,0,3);
INSERT INTO `p_enumerationvalue` VALUES (10,0,'设备接入','设备接入','设备接入',5,0,1);
INSERT INTO `p_enumerationvalue` VALUES (11,0,'设备退出','设备退出','设备退出',5,0,2);
INSERT INTO `p_enumerationvalue` VALUES (13,0,'绝密','绝密','绝密',6,0,1);
INSERT INTO `p_enumerationvalue` VALUES (14,0,'机密','机密','机密',6,0,2);
INSERT INTO `p_enumerationvalue` VALUES (15,0,'秘密','秘密','秘密',6,0,3);
INSERT INTO `p_enumerationvalue` VALUES (16,0,'内部','内部','内部',6,0,4);
INSERT INTO `p_enumerationvalue` VALUES (17,0,'台式机','台式机','台式机',7,0,1);
INSERT INTO `p_enumerationvalue` VALUES (18,0,'便携式计算机','便携式计算机','便携式计算机',7,0,2);
INSERT INTO `p_enumerationvalue` VALUES (19,0,'打印机','打印机','打印机',7,0,3);
INSERT INTO `p_enumerationvalue` VALUES (21,0,'机密','机密','机密',8,0,1);
INSERT INTO `p_enumerationvalue` VALUES (22,0,'秘密','秘密','秘密',8,0,2);
INSERT INTO `p_enumerationvalue` VALUES (23,0,'内部','内部','内部',8,0,3);
INSERT INTO `p_enumerationvalue` VALUES (24,0,'OA系统','OA系统','OA系统',9,0,1);
INSERT INTO `p_enumerationvalue` VALUES (25,0,'邮件系统','邮件系统','邮件系统',9,0,2);
INSERT INTO `p_enumerationvalue` VALUES (26,0,'网间摆渡系统','网间摆渡系统','网间摆渡系统',9,0,3);
INSERT INTO `p_enumerationvalue` VALUES (28,0,'旧设备换新设备','旧设备换新设备','旧设备换新设备',10,0,1);
INSERT INTO `p_enumerationvalue` VALUES (29,0,'新员工入职接入新设备','新员工入职接入新设备','新员工入职接入新设备',10,0,2);
INSERT INTO `p_enumerationvalue` VALUES (31,0,'设备报废','设备报废','设备报废',11,0,1);
INSERT INTO `p_enumerationvalue` VALUES (32,0,'离职','离职','离职',11,0,2);
INSERT INTO `p_enumerationvalue` VALUES (34,0,'是','是','是',12,0,1);
INSERT INTO `p_enumerationvalue` VALUES (35,0,'否','否','否',12,0,2);
INSERT INTO `p_enumerationvalue` VALUES (36,0,'开放','开放','开放',13,0,1);
INSERT INTO `p_enumerationvalue` VALUES (37,0,'关闭','关闭','关闭',13,0,2);
INSERT INTO `p_enumerationvalue` VALUES (38,0,'域控','域控','域控',14,0,1);
INSERT INTO `p_enumerationvalue` VALUES (39,0,'邮件','邮件','邮件',14,0,2);
INSERT INTO `p_enumerationvalue` VALUES (40,0,'网间','网间','网间',14,0,3);
INSERT INTO `p_enumerationvalue` VALUES (41,0,'打印','打印','打印',14,0,4);
INSERT INTO `p_enumerationvalue` VALUES (42,0,'主审','主审','主审',14,0,5);
INSERT INTO `p_enumerationvalue` VALUES (43,0,'三合一','三合一','三合一',14,0,6);
INSERT INTO `p_enumerationvalue` VALUES (45,0,'男','男','男',15,0,1);
INSERT INTO `p_enumerationvalue` VALUES (46,0,'女','女','女',15,0,2);
INSERT INTO `p_enumerationvalue` VALUES (48,1,'口令及账户解锁、更改USB Key','口令及账户解锁、更改USB Key','口令及账户解锁、更改USB Key',16,0,2);
INSERT INTO `p_enumerationvalue` VALUES (50,0,'安装、删除软件及驱动','安装、删除软件及驱动','安装、删除软件及驱动',16,0,4);
INSERT INTO `p_enumerationvalue` VALUES (51,0,'工位调整','工位调整','工位调整',16,0,5);
INSERT INTO `p_enumerationvalue` VALUES (53,0,'非涉密人员','非涉密人员','非涉密人员',17,0,1);
INSERT INTO `p_enumerationvalue` VALUES (54,0,'涉密人员','涉密人员','涉密人员',17,0,2);
INSERT INTO `p_enumerationvalue` VALUES (55,0,'需重装操作系统','需重装操作系统','需重装操作系统',18,0,1);
INSERT INTO `p_enumerationvalue` VALUES (56,0,'需更换硬盘','需更换硬盘','需更换硬盘',18,0,2);
INSERT INTO `p_enumerationvalue` VALUES (57,0,'需更换网卡','需更换网卡','需更换网卡',18,0,3);
INSERT INTO `p_enumerationvalue` VALUES (59,0,'集团','集团','集团',19,0,1);
INSERT INTO `p_enumerationvalue` VALUES (60,0,'院本部','院本部','院本部',19,0,2);
INSERT INTO `p_enumerationvalue` VALUES (62,0,'A538会议室（300人）','A538会议室（300人）','A538会议室（300人）',20,0,1);
INSERT INTO `p_enumerationvalue` VALUES (63,0,'1501会议室（70人）','1501会议室（70人）','1501会议室（70人）',20,0,2);
INSERT INTO `p_enumerationvalue` VALUES (65,0,'13所','13所','13所',21,0,1);
INSERT INTO `p_enumerationvalue` VALUES (66,0,'704所','704所','704所',21,0,2);
INSERT INTO `p_enumerationvalue` VALUES (67,0,'772所','772所','772所',21,0,3);
INSERT INTO `p_enumerationvalue` VALUES (68,1,'200厂','200厂','200厂',21,0,4);
INSERT INTO `p_enumerationvalue` VALUES (69,1,'771所','771所','771所',22,0,5);
INSERT INTO `p_enumerationvalue` VALUES (70,2,'7171厂','7171厂','7171厂',22,0,6);
INSERT INTO `p_enumerationvalue` VALUES (71,1,'7107厂','7107厂','7107厂',22,0,7);
INSERT INTO `p_enumerationvalue` VALUES (72,1,'289厂','289厂','289厂',22,0,8);
INSERT INTO `p_enumerationvalue` VALUES (73,1,'165厂','165厂','165厂',22,0,9);
INSERT INTO `p_enumerationvalue` VALUES (74,1,'693厂','693厂','693厂',22,0,10);
INSERT INTO `p_enumerationvalue` VALUES (75,1,'539厂','539厂','539厂',22,0,11);
INSERT INTO `p_enumerationvalue` VALUES (76,1,'825厂','825厂','825厂',22,0,12);
INSERT INTO `p_enumerationvalue` VALUES (77,1,'航天电工','航天电工','航天电工',22,0,13);
INSERT INTO `p_enumerationvalue` VALUES (78,1,'775厂（黄石）','775厂（黄石）','775厂（黄石）',22,0,14);
INSERT INTO `p_enumerationvalue` VALUES (79,0,'主会场发言，分会场收看','主会场发言，分会场收看','主会场发言，分会场收看',23,0,1);
INSERT INTO `p_enumerationvalue` VALUES (80,0,'主分会场均有发言','主分会场均有发言','主分会场均有发言',23,0,2);
INSERT INTO `p_enumerationvalue` VALUES (85,0,'秘密','秘密','秘密',24,0,1);
INSERT INTO `p_enumerationvalue` VALUES (86,0,'机密','机密','机密',24,0,2);
INSERT INTO `p_enumerationvalue` VALUES (87,0,'绝密','绝密','绝密',24,0,3);
INSERT INTO `p_enumerationvalue` VALUES (88,0,'一般','一般','一般',25,0,1);
INSERT INTO `p_enumerationvalue` VALUES (89,0,'重要','重要','重要',25,0,2);
INSERT INTO `p_enumerationvalue` VALUES (90,0,'核心','核心','核心',25,0,3);
INSERT INTO `p_enumerationvalue` VALUES (91,0,'拨号','拨号','拨号',26,0,1);
INSERT INTO `p_enumerationvalue` VALUES (93,0,'宽带','宽带','宽带',26,0,2);
INSERT INTO `p_enumerationvalue` VALUES (94,0,'无线','无线','无线',26,0,3);
INSERT INTO `p_enumerationvalue` VALUES (95,0,'不上网','不上网','不上网',26,0,4);
INSERT INTO `p_enumerationvalue` VALUES (96,0,'原有USBKEY丢失','原有USBKEY丢失','原有USBKEY丢失',27,0,1);
INSERT INTO `p_enumerationvalue` VALUES (97,0,'原有USBKEY损坏','原有USBKEY损坏','原有USBKEY损坏',27,0,2);
INSERT INTO `p_enumerationvalue` VALUES (98,0,'光驱','光驱','光驱',28,0,1);
INSERT INTO `p_enumerationvalue` VALUES (99,0,'打印机','打印机','打印机',28,0,2);
INSERT INTO `p_enumerationvalue` VALUES (100,0,'投影仪','投影仪','投影仪',28,0,3);
INSERT INTO `p_enumerationvalue` VALUES (103,1,'信息已清除','信息已清除','信息已清除',29,0,1);
INSERT INTO `p_enumerationvalue` VALUES (104,0,'光驱','光驱','光驱',29,0,2);
INSERT INTO `p_enumerationvalue` VALUES (105,0,'打印机','打印机','打印机',29,0,3);
INSERT INTO `p_enumerationvalue` VALUES (106,0,'投影仪','投影仪','投影仪',29,0,4);
INSERT INTO `p_enumerationvalue` VALUES (108,0,'无违规外联','无违规外联','无违规外联',30,0,1);
INSERT INTO `p_enumerationvalue` VALUES (109,0,'无违规移动介质','无违规移动介质','无违规移动介质',30,0,2);
INSERT INTO `p_enumerationvalue` VALUES (110,0,'处理信息内容合规','处理信息内容合规','处理信息内容合规',30,0,3);
INSERT INTO `p_enumerationvalue` VALUES (112,0,'会议材料','会议材料','会议材料',32,0,1);
INSERT INTO `p_enumerationvalue` VALUES (113,0,'外来人员维修','外来人员维修','外来人员维修',31,0,1);
INSERT INTO `p_enumerationvalue` VALUES (114,0,'送外维修','送外维修','送外维修',31,0,2);
INSERT INTO `p_enumerationvalue` VALUES (115,0,'向上级报送','向上级报送','向上级报送',32,0,2);
INSERT INTO `p_enumerationvalue` VALUES (116,0,'本部传递','本部传递','本部传递',32,0,3);
INSERT INTO `p_enumerationvalue` VALUES (117,0,'发往所属单位','发往所属单位','发往所属单位',32,0,4);
INSERT INTO `p_enumerationvalue` VALUES (118,0,'其他','其他','其他',32,0,5);
INSERT INTO `p_enumerationvalue` VALUES (119,0,'航天印刷所','航天印刷所','航天印刷所',33,0,1);
INSERT INTO `p_enumerationvalue` VALUES (120,0,'512所','512所','512所',33,0,2);
INSERT INTO `p_enumerationvalue` VALUES (121,0,'廊坊光达印刷有限公司','廊坊光达印刷有限公司','廊坊光达印刷有限公司',33,0,3);
INSERT INTO `p_enumerationvalue` VALUES (122,0,'其他','其他','其他',33,0,4);
INSERT INTO `p_enumerationvalue` VALUES (123,0,'机密','机密','机密',34,0,1);
INSERT INTO `p_enumerationvalue` VALUES (124,0,'秘密','秘密','秘密',34,0,2);
INSERT INTO `p_enumerationvalue` VALUES (125,0,'机密','机密','机密',35,0,1);
INSERT INTO `p_enumerationvalue` VALUES (126,0,'秘密','秘密','秘密',35,0,2);
INSERT INTO `p_enumerationvalue` VALUES (127,0,'内部','内部','内部',35,0,3);
INSERT INTO `p_enumerationvalue` VALUES (128,0,'上网','上网','上网',35,0,4);
INSERT INTO `p_enumerationvalue` VALUES (129,0,'不进行拍照、摄录','不进行拍照、摄录','不进行拍照、摄录',36,0,1);
INSERT INTO `p_enumerationvalue` VALUES (130,0,'进行拍照、摄录','进行拍照、摄录','进行拍照、摄录',36,0,2);
INSERT INTO `p_enumerationvalue` VALUES (131,0,'拍摄内容不涉密','拍摄内容不涉密','拍摄内容不涉密',37,0,1);
INSERT INTO `p_enumerationvalue` VALUES (132,0,'拍摄内容涉密','拍摄内容涉密','拍摄内容涉密',37,0,2);
INSERT INTO `p_enumerationvalue` VALUES (133,0,'函调监督检查','函调监督检查','函调监督检查',38,0,1);
INSERT INTO `p_enumerationvalue` VALUES (134,0,'现场监督检查','现场监督检查','现场监督检查',38,0,2);
INSERT INTO `p_enumerationvalue` VALUES (135,0,'国家一级','国家一级','国家一级',39,0,1);
INSERT INTO `p_enumerationvalue` VALUES (136,0,'国家二级','国家二级','国家二级',39,0,2);
INSERT INTO `p_enumerationvalue` VALUES (137,0,'国家三级','国家三级','国家三级',39,0,3);
INSERT INTO `p_enumerationvalue` VALUES (138,0,'其他','其他','其他',39,0,4);
INSERT INTO `p_enumerationvalue` VALUES (139,0,'符合','符合','符合',40,0,1);
INSERT INTO `p_enumerationvalue` VALUES (140,0,'不符合','不符合','不符合',40,0,2);
INSERT INTO `p_enumerationvalue` VALUES (141,1,'U盘','U盘','U盘',41,0,1);
INSERT INTO `p_enumerationvalue` VALUES (142,1,'纸介质','纸介质','纸介质',41,0,2);
INSERT INTO `p_enumerationvalue` VALUES (143,0,'移动硬盘','移动硬盘','移动硬盘',41,0,3);
INSERT INTO `p_enumerationvalue` VALUES (144,0,'计算机硬盘','计算机硬盘','计算机硬盘',41,0,4);
INSERT INTO `p_enumerationvalue` VALUES (145,0,'机密','机密','机密',42,0,1);
INSERT INTO `p_enumerationvalue` VALUES (146,0,'秘密','秘密','秘密',42,0,2);
INSERT INTO `p_enumerationvalue` VALUES (147,0,'内部','内部','内部',42,0,3);
INSERT INTO `p_enumerationvalue` VALUES (148,0,'非密','非密','非密',42,0,4);
INSERT INTO `p_enumerationvalue` VALUES (149,0,'涉密','涉密','涉密',43,0,1);
INSERT INTO `p_enumerationvalue` VALUES (150,0,'非密','非密','非密',43,0,2);
INSERT INTO `p_enumerationvalue` VALUES (151,0,'类型1','类型1','类型1',44,0,1);
INSERT INTO `p_enumerationvalue` VALUES (152,0,'类型2','类型2','类型2',44,0,2);
INSERT INTO `p_enumerationvalue` VALUES (153,0,'系统密级1','系统密级1','系统密级1',45,0,1);
INSERT INTO `p_enumerationvalue` VALUES (154,0,'系统密级2','系统密级2','系统密级2',45,0,2);
INSERT INTO `p_enumerationvalue` VALUES (155,0,'部门新增或变更','部门新增或变更','部门新增或变更',46,0,1);
INSERT INTO `p_enumerationvalue` VALUES (156,0,'处室新增或变更','处室新增或变更','处室新增或变更',46,0,2);
INSERT INTO `p_enumerationvalue` VALUES (158,0,'信息密级1','信息密级1','信息密级1',47,0,1);
INSERT INTO `p_enumerationvalue` VALUES (159,0,'信息密级2','信息密级2','信息密级2',47,0,2);
INSERT INTO `p_enumerationvalue` VALUES (160,0,'摆渡员密级1','摆渡员密级1','摆渡员密级1',48,0,1);
INSERT INTO `p_enumerationvalue` VALUES (161,0,'摆渡员密级2','摆渡员密级2','摆渡员密级2',48,0,2);
INSERT INTO `p_enumerationvalue` VALUES (162,0,'密级1','密级1','密级1',49,0,1);
INSERT INTO `p_enumerationvalue` VALUES (163,0,'密级2','密级2','密级2',49,0,2);
/*!40000 ALTER TABLE `p_enumerationvalue` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table p_flowchart
#

DROP TABLE IF EXISTS `p_flowchart`;
CREATE TABLE `p_flowchart` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `fcname` varchar(100) DEFAULT NULL COMMENT '流程图名称',
  `tid` int(11) DEFAULT NULL COMMENT '表单ID',
  `tname` varchar(100) DEFAULT NULL COMMENT '表名称',
  `createdate` varchar(255) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='流程图';

#
# Dumping data for table p_flowchart
#

LOCK TABLES `p_flowchart` WRITE;
/*!40000 ALTER TABLE `p_flowchart` DISABLE KEYS */;
INSERT INTO `p_flowchart` VALUES (1,NULL,'测试',NULL,NULL,'2016-05-09 10:43:38');
INSERT INTO `p_flowchart` VALUES (2,NULL,'测试2',NULL,NULL,'2016-05-09 10:43:38');
INSERT INTO `p_flowchart` VALUES (5,NULL,'测试2',104,'test002','2016-05-09 10:43:38');
/*!40000 ALTER TABLE `p_flowchart` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table p_flowlines
#

DROP TABLE IF EXISTS `p_flowlines`;
CREATE TABLE `p_flowlines` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `fId` int(11) DEFAULT NULL COMMENT '流程ID',
  `nId` varchar(100) DEFAULT NULL COMMENT '连线ID',
  `ltype` varchar(100) DEFAULT NULL COMMENT '类型',
  `lM` int(11) DEFAULT NULL,
  `lfrom` varchar(100) DEFAULT NULL COMMENT '开始节点ID',
  `lto` varchar(100) DEFAULT NULL COMMENT '结束节点ID',
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `marked` varchar(10) DEFAULT NULL COMMENT '标注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

#
# Dumping data for table p_flowlines
#

LOCK TABLES `p_flowlines` WRITE;
/*!40000 ALTER TABLE `p_flowlines` DISABLE KEYS */;
INSERT INTO `p_flowlines` VALUES (3,1,'demo_line_4','tb',169,'demo_node_1','demo_node_2','提交','false');
INSERT INTO `p_flowlines` VALUES (4,1,'demo_line_5','tb',179,'demo_node_2','demo_node_3','提交','false');
INSERT INTO `p_flowlines` VALUES (5,2,'demo_line_7','sl',0,'demo_node_1','demo_node_6','提交','false');
INSERT INTO `p_flowlines` VALUES (6,2,'demo_line_9','sl',0,'demo_node_6','demo_node_5','提交','false');
INSERT INTO `p_flowlines` VALUES (7,2,'demo_line_10','sl',0,'demo_node_5','demo_node_3','提交','false');
INSERT INTO `p_flowlines` VALUES (8,2,'demo_line_11','sl',0,'demo_node_6','demo_node_2','提交','false');
INSERT INTO `p_flowlines` VALUES (9,2,'demo_line_12','sl',0,'demo_node_2','demo_node_4','提交','false');
INSERT INTO `p_flowlines` VALUES (10,2,'demo_line_13','sl',0,'demo_node_3','demo_node_4','提交','false');
INSERT INTO `p_flowlines` VALUES (13,5,'demo_line_4','sl',0,'demo_node_1','demo_node_2','提交请假申请','false');
INSERT INTO `p_flowlines` VALUES (14,5,'demo_line_7','tb',269,'demo_node_2','demo_node_6','大于三天','false');
INSERT INTO `p_flowlines` VALUES (15,5,'demo_line_10','tb',325,'demo_node_6','demo_node_9','同意','false');
INSERT INTO `p_flowlines` VALUES (16,5,'demo_line_12','sl',0,'demo_node_9','demo_node_3','同意','false');
INSERT INTO `p_flowlines` VALUES (17,5,'demo_line_14','sl',0,'demo_node_2','demo_node_9','小于或等于三天','false');
/*!40000 ALTER TABLE `p_flowlines` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table p_flownodes
#

DROP TABLE IF EXISTS `p_flownodes`;
CREATE TABLE `p_flownodes` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `fId` int(11) DEFAULT NULL COMMENT '流程图ID',
  `nId` varchar(100) DEFAULT NULL COMMENT '节点ID',
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `nleft` int(11) DEFAULT NULL,
  `ntop` int(11) DEFAULT NULL,
  `ntype` varchar(100) DEFAULT NULL COMMENT '类型',
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `nalt` varchar(10) DEFAULT NULL,
  `marked` varchar(10) DEFAULT NULL COMMENT '标注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

#
# Dumping data for table p_flownodes
#

LOCK TABLES `p_flownodes` WRITE;
/*!40000 ALTER TABLE `p_flownodes` DISABLE KEYS */;
INSERT INTO `p_flownodes` VALUES (4,1,'demo_node_1','开始',100,163,'start round',24,24,'true','false');
INSERT INTO `p_flownodes` VALUES (5,1,'demo_node_2','收银员1',222,163,'task',100,24,'true','false');
INSERT INTO `p_flownodes` VALUES (6,1,'demo_node_3','结束',508,166,'end round',24,24,'true','false');
INSERT INTO `p_flownodes` VALUES (7,2,'demo_node_1','开始',100,100,'start round',24,24,'true','false');
INSERT INTO `p_flownodes` VALUES (8,2,'demo_node_2','测试',336,79,'task',100,24,'true','false');
INSERT INTO `p_flownodes` VALUES (9,2,'demo_node_3','node_3',331,182,'task',100,24,'true','false');
INSERT INTO `p_flownodes` VALUES (10,2,'demo_node_4','结束',513,131,'end round',24,24,'true','false');
INSERT INTO `p_flownodes` VALUES (11,2,'demo_node_5','系统管理员',165,188,'task',100,24,'true','false');
INSERT INTO `p_flownodes` VALUES (12,2,'demo_node_6','电子商城',163,77,'task',100,24,'true','false');
INSERT INTO `p_flownodes` VALUES (16,5,'demo_node_1','开始',100,100,'start round',24,24,'true','false');
INSERT INTO `p_flownodes` VALUES (17,5,'demo_node_2','部门经理',220,200,'task',100,24,'true','false');
INSERT INTO `p_flownodes` VALUES (18,5,'demo_node_3','结束',759,205,'end round',24,24,'true','false');
INSERT INTO `p_flownodes` VALUES (19,5,'demo_node_6','总经理',346,314,'task',100,24,'true','false');
INSERT INTO `p_flownodes` VALUES (20,5,'demo_node_9','人事主管',531,201,'task',100,24,'true','false');
/*!40000 ALTER TABLE `p_flownodes` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table p_flownodesconfig
#

DROP TABLE IF EXISTS `p_flownodesconfig`;
CREATE TABLE `p_flownodesconfig` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `fid` int(11) DEFAULT NULL COMMENT '流程id',
  `nid` varchar(100) DEFAULT NULL COMMENT '节点id',
  `ntype` int(4) DEFAULT NULL COMMENT '0 用户 1 机构 2 角色 3 机构中特定角色',
  `userid` int(11) DEFAULT NULL COMMENT '用户id',
  `orgid` int(11) DEFAULT NULL COMMENT '机构id',
  `roleid` int(11) DEFAULT NULL COMMENT '角色id',
  `orgroleid` int(11) DEFAULT NULL COMMENT '机构中特定角色id',
  `orgtype` int(4) DEFAULT NULL COMMENT '0 所有人可以审批 1 领导可以审批 2 正领导可以审批 3 副领导可以审批',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='流程节点配置表';

#
# Dumping data for table p_flownodesconfig
#

LOCK TABLES `p_flownodesconfig` WRITE;
/*!40000 ALTER TABLE `p_flownodesconfig` DISABLE KEYS */;
INSERT INTO `p_flownodesconfig` VALUES (1,1,'demo_node_2',0,2282,NULL,NULL,NULL,NULL);
INSERT INTO `p_flownodesconfig` VALUES (2,2,'demo_node_6',0,2292,NULL,NULL,NULL,NULL);
INSERT INTO `p_flownodesconfig` VALUES (3,2,'demo_node_2',1,NULL,3,NULL,NULL,NULL);
INSERT INTO `p_flownodesconfig` VALUES (4,2,'demo_node_5',2,NULL,NULL,2,NULL,NULL);
/*!40000 ALTER TABLE `p_flownodesconfig` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table p_log
#

DROP TABLE IF EXISTS `p_log`;
CREATE TABLE `p_log` (
  `ID` varchar(255) NOT NULL,
  `VERSION` int(11) DEFAULT NULL,
  `TYPE` int(11) DEFAULT NULL,
  `FUNCTION` int(11) DEFAULT NULL,
  `FUNCTIONID` int(11) DEFAULT NULL,
  `FUNCTIONNAME` varchar(255) DEFAULT NULL,
  `CREATOR` int(11) DEFAULT NULL,
  `CREATORNAME` varchar(255) DEFAULT NULL,
  `CREATEDATE` datetime DEFAULT NULL,
  `MESSAGE` varchar(255) DEFAULT NULL,
  `IPADRESS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table p_log
#

LOCK TABLES `p_log` WRITE;
/*!40000 ALTER TABLE `p_log` DISABLE KEYS */;
INSERT INTO `p_log` VALUES ('00cf09f0ed2a475fa9847711a98bfb25',0,140,132,2,'系统管理员',2275,'管理员','2016-05-16 17:32:01','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('02be448ae964404f9b8f3920e9efec19',0,138,3,100,'111',2275,'管理员','2016-05-26 10:31:43','管理员在【变更密级】下其他了一条ID为100、name为111的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('0455f429aeff4646a1a7b15c31eb9272',0,140,132,2,'系统管理员',2275,'管理员','2016-05-13 16:51:57','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','127.0.0.1');
INSERT INTO `p_log` VALUES ('04601e6dd5794fa0b5c51abedd62f26d',0,140,132,2,'系统管理员',2275,'管理员','2016-05-10 13:29:44','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','127.0.0.1');
INSERT INTO `p_log` VALUES ('04ea947b72254f488cb8a2d0a81b385d',0,140,132,2,'系统管理员',2275,'管理员','2016-05-12 11:08:28','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('05147a977ffe4e35a0d203998d93c940',0,140,132,2,'系统管理员',2275,'管理员','2016-05-19 15:24:09','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','127.0.0.1');
INSERT INTO `p_log` VALUES ('06e7793016654d428cd3d01aa97c3835',0,140,3,90,'s_vregist_tab',2275,'管理员','2016-05-26 08:53:49','管理员在【变更密级】下不符合了一条ID为90、name为s_vregist_tab的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('07049d601e414b0abc2c8b99a1342fee',0,139,3,96,'32',2275,'管理员','2016-05-26 11:12:21','管理员在【变更密级】下符合了一条ID为96、name为32的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('0a8f80a69fe740c6ac3b6e31e7ed37d0',0,138,136,46,'page_34_manageType',0,'管理员','2016-05-11 10:09:55','管理员在【国家二级】下其他了一条ID为46、name为page_34_manageType的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('0b34921083b34ecaac0a06d4f48818b2',0,140,132,2,'系统管理员',2275,'管理员','2016-05-11 16:54:45','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('1080f2bc9b794e98a3c384f7c5723399',0,140,132,2,'系统管理员',2275,'管理员','2016-05-22 11:05:24','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','127.0.0.1');
INSERT INTO `p_log` VALUES ('11604e178e434a19890ef329d5bb00b0',0,140,132,2,'系统管理员',2275,'管理员','2016-05-27 17:31:13','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','127.0.0.1');
INSERT INTO `p_log` VALUES ('117458b8d1ee4df5a55497578dc4b653',0,140,132,2,'系统管理员',2275,'管理员','2016-05-13 10:52:22','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('1188b351a64f4acbac8b2d0641dc9330',0,138,137,163,'密级2',0,'管理员','2016-05-16 13:09:43','管理员在【国家三级】下其他了一条ID为163、name为密级2的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('118c4a7679c64d08affa37c5f70dd133',0,140,132,2,'系统管理员',2275,'管理员','2016-05-16 16:53:34','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','127.0.0.1');
INSERT INTO `p_log` VALUES ('179d598c32fe4d11b0a824ba2ec2dc4c',0,140,3,91,'test',2275,'管理员','2016-05-26 11:13:01','管理员在【变更密级】下不符合了一条ID为91、name为test的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('18ab1765edb1427b8dd756105acce2de',0,140,132,2,'系统管理员',2275,'管理员','2016-05-16 11:11:13','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','127.0.0.1');
INSERT INTO `p_log` VALUES ('1b4487508f6442e9b65fe5474d23fbbc',0,140,132,2,'系统管理员',2275,'管理员','2016-05-24 11:21:49','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('1f806231b13b49b2995b34a2d93bd2ca',0,138,136,45,'page_33_sysSec',0,'管理员','2016-05-10 10:45:29','管理员在【国家二级】下其他了一条ID为45、name为page_33_sysSec的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('21bbd460a6d9470d98a07f86d0bfda57',0,140,3,93,'333',2275,'管理员','2016-05-26 10:09:23','管理员在【变更密级】下不符合了一条ID为93、name为333的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('224fc4c1d2d741c9b2d6f83891dbb06c',0,139,137,12,'其他',0,'管理员','2016-05-18 14:17:26','管理员在【国家三级】下符合了一条ID为12、name为其他的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('24bab382b6f2425fbe941a68dd2322d9',0,140,132,2,'系统管理员',2275,'管理员','2016-05-23 14:07:27','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('24c295a2064b45988472dbd538a7cf52',0,140,132,2,'系统管理员',2275,'管理员','2016-05-27 11:05:29','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('25bbeaab74534ca1b6163beddd1b6606',0,140,132,2,'系统管理员',2275,'管理员','2016-05-24 16:17:50','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','127.0.0.1');
INSERT INTO `p_log` VALUES ('2630ef8888734b0892f23eac67037c75',0,139,3,100,'111',2275,'管理员','2016-05-26 11:12:21','管理员在【变更密级】下符合了一条ID为100、name为111的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('27bd0b6795fe4d6693a507fc52414d6b',0,138,137,151,'类型1',0,'管理员','2016-05-09 15:19:21','管理员在【国家三级】下其他了一条ID为151、name为类型1的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('280b24e446c34dcc8db97b70eed2b6f3',0,138,2,3,'测试33',2275,'管理员','2016-05-13 14:15:17','管理员在【null】下其他了一条ID为3、name为测试33的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('297e9bd3fa8d4989864d302e33090883',0,139,3,97,'12',2275,'管理员','2016-05-26 11:12:21','管理员在【变更密级】下符合了一条ID为97、name为12的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('2bd992cd7f0d4fe3a8f63797da6664fe',0,140,132,2,'系统管理员',2275,'管理员','2016-05-27 13:08:07','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('2d2fe9078d604e87810edfdcf4aaf78d',0,138,136,49,'page_36_security',0,'管理员','2016-05-16 13:09:04','管理员在【国家二级】下其他了一条ID为49、name为page_36_security的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('2d91e9f3436f409fbe66c2d4b945f744',0,140,132,2,'系统管理员',2275,'管理员','2016-05-16 15:13:37','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('306c3a2a11144e51bbdba89d84487b38',0,139,137,58,'其他情况',0,'管理员','2016-05-18 14:16:32','管理员在【国家三级】下符合了一条ID为58、name为其他情况的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('30fcfe7945b54a9f8027f068317bdfae',0,140,132,2,'系统管理员',2275,'管理员','2016-05-18 09:06:03','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','127.0.0.1');
INSERT INTO `p_log` VALUES ('34c1cdbb86f841f1bc660dc8f0ab9ac3',0,138,137,158,'信息密级1',0,'管理员','2016-05-12 17:27:49','管理员在【国家三级】下其他了一条ID为158、name为信息密级1的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('34ec2feed74f443483851b618a1f63b3',0,140,132,2,'系统管理员',2275,'管理员','2016-05-27 13:20:46','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','127.0.0.1');
INSERT INTO `p_log` VALUES ('35ca20f072d7463ea2cc43e0953fdcbc',0,140,132,2,'系统管理员',2275,'管理员','2016-05-11 16:34:46','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','127.0.0.1');
INSERT INTO `p_log` VALUES ('3847074d544a416b92b86caaa687a0c3',0,138,3,93,'',2275,'管理员','2016-05-26 10:09:06','管理员在【变更密级】下其他了一条ID为93、name为的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('38bf56f3391d4b199f2cf0fe2db7ca1a',0,139,3,99,'23',2275,'管理员','2016-05-26 11:12:21','管理员在【变更密级】下符合了一条ID为99、name为23的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('3b90a8e195a640e4941416da20c29035',0,139,137,20,'其他',0,'管理员','2016-05-18 14:17:18','管理员在【国家三级】下符合了一条ID为20、name为其他的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('3baf2a641ffb41d0b268cd14242e8c32',0,139,137,49,'更改其他',0,'管理员','2016-05-18 15:06:08','管理员在【国家三级】下符合了一条ID为49、name为更改其他的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('3c7e82f2490344faa5f385f8d51661f4',0,138,3,104,'test002',2275,'管理员','2016-05-27 09:13:25','管理员在【变更密级】下其他了一条ID为104、name为test002的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('3c9a1369e53a4b188c7336653fc3017f',0,139,3,102,'232222',2275,'管理员','2016-05-26 11:10:14','管理员在【变更密级】下符合了一条ID为102、name为232222的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('3d2db87db5d8465dbd87226bc8b37feb',0,140,132,2,'系统管理员',2275,'管理员','2016-05-17 17:31:15','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','127.0.0.1');
INSERT INTO `p_log` VALUES ('3d50f52878f844189cb717c7998a59c5',0,140,132,2,'系统管理员',2275,'管理员','2016-05-23 14:20:00','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','127.0.0.1');
INSERT INTO `p_log` VALUES ('48309aff26f041c49063de125f3f8d0a',0,138,137,153,'系统密级1',0,'管理员','2016-05-10 10:45:56','管理员在【国家三级】下其他了一条ID为153、name为系统密级1的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('49e74b656e9548838ff9f3c603a91ab8',0,139,137,47,'口令及账户解锁',0,'管理员','2016-05-18 15:05:39','管理员在【国家三级】下符合了一条ID为47、name为口令及账户解锁的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('4a03fda0615342de9f46d2b7a2594b25',0,140,132,2,'系统管理员',2275,'管理员','2016-05-16 09:23:20','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('4abec375c64a490a918537eaa4fec728',0,140,2,5,'测试2',2275,'管理员','2016-05-27 09:19:27','管理员在【null】下不符合了一条ID为5、name为测试2的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('4c1afdf92e664c5caa790d0422f30ae7',0,138,137,159,'信息密级2',0,'管理员','2016-05-12 17:28:07','管理员在【国家三级】下其他了一条ID为159、name为信息密级2的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('4f1bf574ee3c41f18132795cf9824679',0,140,132,2,'系统管理员',2275,'管理员','2016-05-12 17:09:17','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','127.0.0.1');
INSERT INTO `p_log` VALUES ('510bbb15b05143a18b88f333b1fed1e8',0,139,137,33,'其他',0,'管理员','2016-05-18 14:17:02','管理员在【国家三级】下符合了一条ID为33、name为其他的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('512b5833fb7c47e98b8c3f18633af1b9',0,140,132,2,'系统管理员',2275,'管理员','2016-05-19 15:19:19','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('53bf380b13314f5f8757ce0b648dbbd7',0,139,137,61,'其他',0,'管理员','2016-05-18 14:16:23','管理员在【国家三级】下符合了一条ID为61、name为其他的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('55136c56e5e54bc396dccc13ba28961f',0,139,137,111,'其他',0,'管理员','2016-05-18 14:15:51','管理员在【国家三级】下符合了一条ID为111、name为其他的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('58617eba5dcc42fcb140165c6ac9dce1',0,139,3,94,'321',2275,'管理员','2016-05-26 11:12:21','管理员在【变更密级】下符合了一条ID为94、name为321的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('5960ed1b20bb4e86986425e8c6288d9d',0,138,3,94,'',2275,'管理员','2016-05-26 10:11:00','管理员在【变更密级】下其他了一条ID为94、name为的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('5a3dea803e034c41b53a1b4946c34b91',0,140,132,2,'系统管理员',2275,'管理员','2016-05-24 15:14:32','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('5c2b9eb1d6764a248c625c2e0bc76078',0,138,137,154,'系统密级2',0,'管理员','2016-05-10 10:46:14','管理员在【国家三级】下其他了一条ID为154、name为系统密级2的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('5eda240f4f5f4d31a85ee6fcee80a3cf',0,139,137,107,'其他',0,'管理员','2016-05-18 14:15:55','管理员在【国家三级】下符合了一条ID为107、name为其他的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('5ef29113e3ae40bfb21921082d33e4f4',0,139,137,64,'其他',0,'管理员','2016-05-18 14:16:16','管理员在【国家三级】下符合了一条ID为64、name为其他的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('5f13f909214f41a58975e88ec2e3e6cb',0,140,132,2,'系统管理员',2275,'管理员','2016-05-24 15:07:28','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('5f3226542bbb4981b227eb96e09f927f',0,138,137,155,'部门新增或变更',0,'管理员','2016-05-11 10:10:19','管理员在【国家三级】下其他了一条ID为155、name为部门新增或变更的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('5feeb4fa865d4e249bba940232a03bd3',0,140,132,2,'系统管理员',2275,'管理员','2016-05-22 11:16:42','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','127.0.0.1');
INSERT INTO `p_log` VALUES ('5fef55581435465e94b7abc6e4ceba49',0,138,3,102,'232222',2275,'管理员','2016-05-26 10:37:33','管理员在【变更密级】下其他了一条ID为102、name为232222的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('611eb5dddc0b47bb813511d406faedd9',0,140,132,2,'系统管理员',2275,'管理员','2016-05-16 13:56:59','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','127.0.0.1');
INSERT INTO `p_log` VALUES ('6247a769140140c8ab5298326a9089c8',0,140,132,2,'系统管理员',2275,'管理员','2016-05-18 11:49:41','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','127.0.0.1');
INSERT INTO `p_log` VALUES ('65a92dbb77fa44cb8ed815910f964ad3',0,140,132,2,'系统管理员',2275,'管理员','2016-05-18 09:43:15','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','127.0.0.1');
INSERT INTO `p_log` VALUES ('65a976249cd14099af7e97fd5259591a',0,140,132,2,'系统管理员',2275,'管理员','2016-05-13 09:51:24','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('6602e5eb11ac43e1a26284f1147b92dc',0,138,3,96,'',2275,'管理员','2016-05-26 10:13:43','管理员在【变更密级】下其他了一条ID为96、name为的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('66a524a99cea4ca085037cc2bb88a625',0,140,132,2,'系统管理员',2275,'管理员','2016-05-12 17:45:04','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('6883b0690e194ecfb698e83aafc4e524',0,140,132,2,'系统管理员',2275,'管理员','2016-05-12 14:06:36','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('698fb62b3e824a838424a44629ad8f9a',0,139,137,44,'其他',0,'管理员','2016-05-18 14:16:54','管理员在【国家三级】下符合了一条ID为44、name为其他的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('6b4664b957f748728e8c6023a987136a',0,140,132,2,'系统管理员',2275,'管理员','2016-05-17 13:53:01','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('6b5e3312520a4847b982ca3f19cf4cb4',0,140,132,2,'系统管理员',2275,'管理员','2016-05-17 16:12:38','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','127.0.0.1');
INSERT INTO `p_log` VALUES ('6f4a53ea09a44c968c044daa6b4374ba',0,139,137,157,'其他',0,'管理员','2016-05-18 14:15:19','管理员在【国家三级】下符合了一条ID为157、name为其他的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('6f576043d9f44d0d8f361abbf6357da0',0,140,132,2,'系统管理员',2275,'管理员','2016-05-16 10:44:02','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('7249c1e43d5a4b8b921cf67ec312e698',0,138,137,160,'摆渡员密级1',0,'管理员','2016-05-12 17:29:28','管理员在【国家三级】下其他了一条ID为160、name为摆渡员密级1的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('7289b2e819224b02bb55040bc38f6d24',0,140,132,2,'系统管理员',2275,'管理员','2016-05-13 15:39:51','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','127.0.0.1');
INSERT INTO `p_log` VALUES ('72ee3d76430b4e8bb956123df08b97d8',0,140,132,2,'系统管理员',2275,'管理员','2016-05-17 11:00:22','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('76d3bf8543424455b2e9b1d8950d8f68',0,138,137,161,'摆渡员密级2',0,'管理员','2016-05-12 17:29:45','管理员在【国家三级】下其他了一条ID为161、name为摆渡员密级2的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('770511facf8340259f1c18b0a5787798',0,138,3,92,'',2275,'管理员','2016-05-26 10:08:35','管理员在【变更密级】下其他了一条ID为92、name为的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('775d89a1be484498a6593b6f0c299c46',0,140,132,2,'系统管理员',2275,'管理员','2016-05-13 13:55:22','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('798e2057dc894c35a72244dd530fd15c',0,140,132,2,'系统管理员',2275,'管理员','2016-05-10 15:09:28','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','127.0.0.1');
INSERT INTO `p_log` VALUES ('7e3a038b82a44e3f9c0ca9bfd0870a59',0,140,132,2,'系统管理员',2275,'管理员','2016-05-20 15:45:19','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('7ee2cd817d244640a592ebbc0f8d1e48',0,139,2,4,'测试33',2275,'管理员','2016-05-13 14:18:32','管理员在【null】下符合了一条ID为4、name为测试33的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('7f6237e63dfe48408c6906e11be88a13',0,139,137,102,'需安装软件',0,'管理员','2016-05-16 15:20:20','管理员在【国家三级】下符合了一条ID为102、name为需安装软件的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('81f88f41b28d4ab4aaaa27c9a9cbe08d',0,139,137,52,'其他',0,'管理员','2016-05-18 14:16:38','管理员在【国家三级】下符合了一条ID为52、name为其他的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('84ea77e2635a42f5b895725481bc44b0',0,140,132,2,'系统管理员',2275,'管理员','2016-05-11 14:37:23','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','127.0.0.1');
INSERT INTO `p_log` VALUES ('85e757b400794843a0a67500ea93bef5',0,140,132,2,'系统管理员',2275,'管理员','2016-05-16 16:06:49','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','127.0.0.1');
INSERT INTO `p_log` VALUES ('89d8b80c608540f490ef0129f0d58d92',0,140,132,2,'系统管理员',2275,'管理员','2016-05-17 14:51:38','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','127.0.0.1');
INSERT INTO `p_log` VALUES ('8a3f0b45fbdb44b3a9be89ab84c94049',0,139,3,101,'23',2275,'管理员','2016-05-26 11:12:21','管理员在【变更密级】下符合了一条ID为101、name为23的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('8c5dfef31eb8490eb39d1a6e1184bc4c',0,140,132,2,'系统管理员',2275,'管理员','2016-05-17 16:11:10','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','127.0.0.1');
INSERT INTO `p_log` VALUES ('8eaeabd5c79349ef9f4a6b3a444309e5',0,138,137,157,'其他',0,'管理员','2016-05-11 10:11:06','管理员在【国家三级】下其他了一条ID为157、name为其他的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('90e71148033143fcb845540a95fe1f0a',0,139,2,3,'测试33',2275,'管理员','2016-05-13 14:16:33','管理员在【null】下符合了一条ID为3、name为测试33的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('92d92608f78a4f6fb83af893918e4302',0,140,132,2,'系统管理员',2275,'管理员','2016-05-22 10:13:15','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','127.0.0.1');
INSERT INTO `p_log` VALUES ('93f308fa9118447aacc4971ae1d1bed9',0,140,132,2,'系统管理员',2275,'管理员','2016-05-13 14:42:30','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('93fbfc1e33774bf59f2b0ce961269a42',0,139,137,30,'其他',0,'管理员','2016-05-18 14:17:06','管理员在【国家三级】下符合了一条ID为30、name为其他的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('95e310296b6c42f3964572dcc25185a1',0,139,3,93,'333',2275,'管理员','2016-05-26 11:12:21','管理员在【变更密级】下符合了一条ID为93、name为333的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('965bfe9f8f264ec6ad87ee95b5d9be67',0,140,132,2,'系统管理员',2275,'管理员','2016-05-27 11:34:19','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('971348c97d8644cbba666290e29e008e',0,138,3,97,'',2275,'管理员','2016-05-26 10:14:19','管理员在【变更密级】下其他了一条ID为97、name为的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('97c8dcff49cf466ebaff0de247b749d1',0,140,132,2,'系统管理员',2275,'管理员','2016-05-17 09:57:04','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('981fb106745b4172a49e13c0b16524c0',0,139,3,92,'2222',2275,'管理员','2016-05-26 11:12:21','管理员在【变更密级】下符合了一条ID为92、name为2222的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('98cf56aa5b2441cf913de13c6d951078',0,138,136,44,'page_44_telltaleRecord',0,'管理员','2016-05-09 15:17:00','管理员在【国家二级】下其他了一条ID为44、name为page_44_telltaleRecord的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('9a49054f99ff435f92efaa8ef984eeeb',0,140,132,2,'系统管理员',2275,'管理员','2016-05-11 17:48:52','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','127.0.0.1');
INSERT INTO `p_log` VALUES ('9db996e691d34155a99ddd5faf61d297',0,138,2,4,'测试33',2275,'管理员','2016-05-13 14:17:17','管理员在【null】下其他了一条ID为4、name为测试33的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('9f3490ca6ebb4e0995d80787f944f79d',0,140,132,2,'系统管理员',2275,'管理员','2016-05-19 17:00:37','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('9f9e3e77f47d40678ddd947d7abbce32',0,138,2,5,'测试2',2275,'管理员','2016-05-27 09:17:34','管理员在【null】下其他了一条ID为5、name为测试2的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('a1895f9668d7471bbc9ecbc295234abb',0,140,132,2,'系统管理员',2275,'管理员','2016-05-20 13:59:48','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('a27f088bcb8d427aa106f0c2f3c71af8',0,140,132,2,'系统管理员',2275,'管理员','2016-05-20 17:49:29','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('a4eb9e6fcf5146aaa1436aad5a97c259',0,140,132,2,'系统管理员',2275,'管理员','2016-05-27 09:49:14','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('a4fcbcb989e9432d979969b3626aeaf8',0,140,132,2,'系统管理员',2275,'管理员','2016-05-12 10:05:27','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('a5cc756265a948fd990404a9658fb1cb',0,140,3,92,'2222',2275,'管理员','2016-05-26 10:09:17','管理员在【变更密级】下不符合了一条ID为92、name为2222的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('a879874bf1c14db2a76da6f0efa67020',0,138,137,156,'处室新增或变更',0,'管理员','2016-05-11 10:10:45','管理员在【国家三级】下其他了一条ID为156、name为处室新增或变更的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('ac3c16d7618b4778a1689d88552e08ca',0,139,137,101,'其他',0,'管理员','2016-05-18 14:15:59','管理员在【国家三级】下符合了一条ID为101、name为其他的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('ada40b9aa5e043beb5306600a9138d04',0,140,132,2,'系统管理员',2275,'管理员','2016-05-27 14:02:18','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('aef150049f5f4bc8bfb4c2e3216f87a1',0,140,132,2,'系统管理员',2275,'管理员','2016-05-17 15:44:21','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('af6d9f7c169f4c5a9284733185600102',0,140,132,2,'系统管理员',2275,'管理员','2016-05-10 10:55:11','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','127.0.0.1');
INSERT INTO `p_log` VALUES ('b067469f3a094ad691834bd17e32be37',0,139,3,103,'test001',2275,'管理员','2016-05-27 09:13:05','管理员在【变更密级】下符合了一条ID为103、name为test001的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('b37a7b27ee9645c1ac75b8efff00277c',0,140,132,2,'系统管理员',2275,'管理员','2016-05-11 10:56:29','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','127.0.0.1');
INSERT INTO `p_log` VALUES ('b3c1ce4b8beb457c83d03e569fe20c5b',0,140,132,2,'系统管理员',2275,'管理员','2016-05-25 11:13:11','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('b429ed046ba24f47a9910f90b1dc6725',0,140,132,2,'系统管理员',2275,'管理员','2016-05-11 14:53:04','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('b4ad61748cbd447986630209db98761a',0,138,136,47,'page_43_security',0,'管理员','2016-05-12 17:26:41','管理员在【国家二级】下其他了一条ID为47、name为page_43_security的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('b649a55175c6485ca67c0592173e05a1',0,138,3,91,'',2275,'管理员','2016-05-26 09:59:46','管理员在【变更密级】下其他了一条ID为91、name为的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('b7ad6697d2bd45f3b567c02b2c7d80aa',0,140,132,2,'系统管理员',2275,'管理员','2016-05-16 13:41:09','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('b9feb160c210424fa0e60ce1bfdf4ccf',0,140,3,102,'232222',2275,'管理员','2016-05-26 10:38:29','管理员在【变更密级】下不符合了一条ID为102、name为232222的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('ba4d28bc8367428ca8a35838d37b1afe',0,140,132,2,'系统管理员',2275,'管理员','2016-05-27 13:19:47','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('be64c689aa4b416da90de2dd0e4a0113',0,140,137,48,'口令及账户解锁、更改USB Key',0,'管理员','2016-05-18 15:05:15','管理员在【国家三级】下不符合了一条ID为48、name为口令及账户解锁、更改USB Key的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('c01829f67f1a4fcca2cb55b77b2280d5',0,140,132,2,'系统管理员',2275,'管理员','2016-05-12 09:10:46','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('c030130e63b2455fa8fbbc152035b867',0,138,3,98,'111',2275,'管理员','2016-05-26 10:21:32','管理员在【变更密级】下其他了一条ID为98、name为111的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('c061b74768794db9a19363e53baf42f4',0,138,3,101,'23',2275,'管理员','2016-05-26 10:34:56','管理员在【变更密级】下其他了一条ID为101、name为23的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('c1e2baef705749a4ac97229a1ce22cb9',0,140,132,2,'系统管理员',2275,'管理员','2016-05-24 10:56:13','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','127.0.0.1');
INSERT INTO `p_log` VALUES ('c3628bcedc21418ab08e5ff49191e46d',0,138,136,48,'page_43_ferryerSecurity',0,'管理员','2016-05-12 17:29:01','管理员在【国家二级】下其他了一条ID为48、name为page_43_ferryerSecurity的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('c640b97fe53a4c94aece30a7ce4794a4',0,140,132,2,'系统管理员',2275,'管理员','2016-05-18 11:24:22','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('c99d132f8b0d432f861f85f2d41c551b',0,140,132,2,'系统管理员',2275,'管理员','2016-05-23 15:45:54','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('c9ddd7de62b84533826e34690d37fa4e',0,140,132,2,'系统管理员',2275,'管理员','2016-05-13 11:24:53','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','127.0.0.1');
INSERT INTO `p_log` VALUES ('cfc947a9b8374cd592b451733e59a552',0,138,137,162,'密级1',0,'管理员','2016-05-16 13:09:26','管理员在【国家三级】下其他了一条ID为162、name为密级1的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('d12a2b0f296c490298b5058b54e3379d',0,139,137,27,'其他',0,'管理员','2016-05-18 14:17:11','管理员在【国家三级】下符合了一条ID为27、name为其他的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('d5126d9a942449099dd5f51d0cae3823',0,140,132,2,'系统管理员',2275,'管理员','2016-05-25 16:53:42','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','127.0.0.1');
INSERT INTO `p_log` VALUES ('da35c1ca5c3f4f6db78a6c5f8d7baac2',0,138,137,152,'类型2',0,'管理员','2016-05-09 15:19:41','管理员在【国家三级】下其他了一条ID为152、name为类型2的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('dbc2a1ad6376400c9f55a90aa55cb5b4',0,140,132,2,'系统管理员',2275,'管理员','2016-05-18 09:37:19','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('e10107be89b74e15864958535640dd63',0,140,132,2,'系统管理员',2275,'管理员','2016-05-11 09:28:32','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('e1833a9f751547e09e49c39a64080a07',0,140,132,2,'系统管理员',2275,'管理员','2016-05-09 16:10:23','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','127.0.0.1');
INSERT INTO `p_log` VALUES ('e427056ca2324711986f6b29ed8e02c4',0,138,3,99,'111',2275,'管理员','2016-05-26 10:28:54','管理员在【变更密级】下其他了一条ID为99、name为111的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('e7029bd780ff4affb52e1bb318ba01fc',0,138,138,3,'测试',2275,'管理员','2016-05-12 15:30:43','管理员在【其他】下其他了一条ID为3、name为测试的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('ef8cfe8cd15c47049f7ae8631eb447d2',0,140,132,2,'系统管理员',2275,'管理员','2016-05-26 15:03:40','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','127.0.0.1');
INSERT INTO `p_log` VALUES ('f0844a00942443fd80a182c39a0c219d',0,140,132,2,'系统管理员',2275,'管理员','2016-05-22 11:05:09','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','127.0.0.1');
INSERT INTO `p_log` VALUES ('f0fcf21886ed4004a8cbf162be2b1048',0,138,3,103,'test001',2275,'管理员','2016-05-26 15:21:49','管理员在【变更密级】下其他了一条ID为103、name为test001的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('f141eb545be348238e4a82e3f8836cea',0,140,132,2,'系统管理员',2275,'管理员','2016-05-23 10:40:55','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('f22388fdd1d9485e958460872f078152',0,138,3,95,'',2275,'管理员','2016-05-26 10:11:16','管理员在【变更密级】下其他了一条ID为95、name为的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('f5220c4d5a244011808182ae46907ba3',0,139,3,95,'1',2275,'管理员','2016-05-26 11:12:21','管理员在【变更密级】下符合了一条ID为95、name为1的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('f5afb3f23bd54eabb5f4728fbfb61a35',0,140,132,2,'系统管理员',2275,'管理员','2016-05-19 17:10:34','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','127.0.0.1');
INSERT INTO `p_log` VALUES ('f7dd424185254c33a4e0aaa9d05b9f7b',0,140,132,2,'系统管理员',2275,'管理员','2016-05-10 11:36:10','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('f824b0a3525e4a90886297007e41fb6f',0,140,132,2,'系统管理员',2275,'管理员','2016-05-12 14:44:50','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','127.0.0.1');
INSERT INTO `p_log` VALUES ('f987b7cd862143cca1e68930361be2ae',0,139,3,98,'11123',2275,'管理员','2016-05-26 11:12:21','管理员在【变更密级】下符合了一条ID为98、name为11123的信息！','0:0:0:0:0:0:0:1');
INSERT INTO `p_log` VALUES ('fc84e21ce47348d6acaafdfb8a3343f6',0,140,132,2,'系统管理员',2275,'管理员','2016-05-17 11:04:03','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','127.0.0.1');
INSERT INTO `p_log` VALUES ('fe3b7deaea194112b406ad94511f538c',0,140,132,2,'系统管理员',2275,'管理员','2016-05-19 14:29:01','管理员在【拍摄内容涉密】下不符合了一条ID为2、name为系统管理员的信息！','0:0:0:0:0:0:0:1');
/*!40000 ALTER TABLE `p_log` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table p_loginlog
#

DROP TABLE IF EXISTS `p_loginlog`;
CREATE TABLE `p_loginlog` (
  `id` varchar(255) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `userip` varchar(100) DEFAULT NULL,
  `logindate` datetime DEFAULT NULL,
  `isfront` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table p_loginlog
#

LOCK TABLES `p_loginlog` WRITE;
/*!40000 ALTER TABLE `p_loginlog` DISABLE KEYS */;
INSERT INTO `p_loginlog` VALUES ('0009498cb2444ed082143a9d90a58d50',2275,'管理员','127.0.0.1','2016-05-11 15:09:33',0);
INSERT INTO `p_loginlog` VALUES ('003f7a7ff85f47c2966cc2287e81e342',2275,'管理员','127.0.0.1','2016-05-12 09:07:47',0);
INSERT INTO `p_loginlog` VALUES ('0060b9f0841544f0aa1439fc059c435c',2275,'管理员','127.0.0.1','2016-05-26 15:04:16',0);
INSERT INTO `p_loginlog` VALUES ('009810f6c8754f62a92aa264d97db050',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-24 15:51:43',0);
INSERT INTO `p_loginlog` VALUES ('025df3cb418f4967aa12687c4f233c00',2275,'管理员','127.0.0.1','2016-05-20 11:10:33',0);
INSERT INTO `p_loginlog` VALUES ('0273a85ffa6547eba3e3271500cc079e',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-10 10:21:18',0);
INSERT INTO `p_loginlog` VALUES ('02ce59ef255a4860af34a144bd44ba63',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-24 11:25:07',0);
INSERT INTO `p_loginlog` VALUES ('0347a34a139f4a0d8aee3e03f22f03dc',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-12 15:36:38',0);
INSERT INTO `p_loginlog` VALUES ('0389027d9c3145648536f483b316ddcf',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-17 11:01:31',0);
INSERT INTO `p_loginlog` VALUES ('03a603f025374e578949d9360b16226a',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-27 09:09:30',0);
INSERT INTO `p_loginlog` VALUES ('03c680bc54664e6a8768816757003f94',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-09 10:43:38',0);
INSERT INTO `p_loginlog` VALUES ('04babdb0d0a54d62a039d3e6f7b1a227',2275,'管理员','127.0.0.1','2016-05-19 09:48:32',0);
INSERT INTO `p_loginlog` VALUES ('04e1ec30f16f464480975277a3017f47',2275,'管理员','127.0.0.1','2016-05-16 16:07:02',0);
INSERT INTO `p_loginlog` VALUES ('0524dd4decf544d88ad92b89b1f10c26',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-06 14:28:16',0);
INSERT INTO `p_loginlog` VALUES ('053cd8484f3e4400b4f6097b52266fbe',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-27 13:40:33',0);
INSERT INTO `p_loginlog` VALUES ('053eee8597ba48c5a2026eef9bb0713c',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-10 11:54:51',0);
INSERT INTO `p_loginlog` VALUES ('054780fe618a4f689f322833da14500f',2275,'管理员','127.0.0.1','2016-05-20 11:11:07',0);
INSERT INTO `p_loginlog` VALUES ('05af13227bd64c908f11d8538e0ce756',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-27 09:43:31',0);
INSERT INTO `p_loginlog` VALUES ('069c4cff0e414cd0b6465af6a425f9bc',2275,'管理员','127.0.0.1','2016-05-19 17:09:29',0);
INSERT INTO `p_loginlog` VALUES ('06afe30b47074f06a6c030af282a9077',2275,'管理员','127.0.0.1','2016-05-11 15:13:36',0);
INSERT INTO `p_loginlog` VALUES ('06c5d8da665b4e60b8182db630a25477',0,'管理员','127.0.0.1','2016-05-04 09:22:23',0);
INSERT INTO `p_loginlog` VALUES ('0703c033d84c4455961f9d6afc9c2da9',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-19 15:18:28',0);
INSERT INTO `p_loginlog` VALUES ('070f86ee0f624650af81e47514e1a620',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-09 15:44:41',0);
INSERT INTO `p_loginlog` VALUES ('0758c41c4c7442ae888a3b1f99593f6b',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-27 09:46:39',0);
INSERT INTO `p_loginlog` VALUES ('07822ddf2a3e437bacbb9e1bf2c71021',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-12 09:16:55',0);
INSERT INTO `p_loginlog` VALUES ('082e83a2063b4e828cf8aeca952b9dba',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-19 14:28:02',0);
INSERT INTO `p_loginlog` VALUES ('089ddefb84d84901beb240e09a8c2092',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-27 09:44:31',0);
INSERT INTO `p_loginlog` VALUES ('08a4b617f9334cca97024557d61abf5e',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-09 09:45:31',0);
INSERT INTO `p_loginlog` VALUES ('08b74064ea334498955a86e32856b45e',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-10 09:22:47',0);
INSERT INTO `p_loginlog` VALUES ('08c87e18fd3746e88a94129d338e1893',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-09 15:42:24',0);
INSERT INTO `p_loginlog` VALUES ('08c8a5d69328402ea5cdc7f47efeb62d',2275,'管理员','127.0.0.1','2016-05-11 09:30:13',0);
INSERT INTO `p_loginlog` VALUES ('094799c7a94c4647afa75a77951e6c72',2275,'管理员','127.0.0.1','2016-05-27 09:09:23',0);
INSERT INTO `p_loginlog` VALUES ('096e574ec58246798e5ffdff7121fe9d',2275,'管理员','127.0.0.1','2016-05-26 15:32:57',0);
INSERT INTO `p_loginlog` VALUES ('09e2ea8e37a64cb2b15da65737ea9051',2275,'管理员','127.0.0.1','2016-05-13 17:07:34',0);
INSERT INTO `p_loginlog` VALUES ('0ae9f10298954f54a6c86739969c1f9d',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-27 09:47:38',0);
INSERT INTO `p_loginlog` VALUES ('0b49cedd809541d7b81dafd6be24edad',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-12 09:17:04',0);
INSERT INTO `p_loginlog` VALUES ('0bb0ae06cf044c809d01ad034620c11e',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-10 09:30:39',0);
INSERT INTO `p_loginlog` VALUES ('0c9a6223fb34459faf02b2827e03a434',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-12 10:05:36',0);
INSERT INTO `p_loginlog` VALUES ('0c9dfc035e68430cac7cf565c4372140',2275,'管理员','0:0:0:0:0:0:0:1','2016-04-28 09:17:55',0);
INSERT INTO `p_loginlog` VALUES ('0d1554c3fac44d47956fedc7a7657bbb',2275,'管理员','127.0.0.1','2016-05-20 14:54:16',0);
INSERT INTO `p_loginlog` VALUES ('0d17235de3494a4cafc9e3e942dc99f2',0,'管理员','0:0:0:0:0:0:0:1','2016-04-28 11:11:08',0);
INSERT INTO `p_loginlog` VALUES ('0d84dc64a58d4556b8383665c3d307f7',2275,'管理员','127.0.0.1','2016-05-09 16:19:22',0);
INSERT INTO `p_loginlog` VALUES ('0d887b514f5649209c145df6effa1273',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-04 15:40:49',0);
INSERT INTO `p_loginlog` VALUES ('0d88aeec2f4c443aaa16e5e0bc38379c',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-10 15:24:00',0);
INSERT INTO `p_loginlog` VALUES ('0dc30f122d5540d0a64bb7f234d5fe97',2275,'管理员','127.0.0.1','2016-05-27 17:25:37',0);
INSERT INTO `p_loginlog` VALUES ('0dceae372b3b49fbb83f4307ef1b0588',2275,'管理员','127.0.0.1','2016-05-11 09:04:53',0);
INSERT INTO `p_loginlog` VALUES ('0e33729e108546fab5f3f57dd1af04b9',2275,'管理员','127.0.0.1','2016-05-09 14:58:40',0);
INSERT INTO `p_loginlog` VALUES ('0e3a93f37f6d41a0bf6d07debc31345d',0,'管理员','0:0:0:0:0:0:0:1','2016-04-26 16:56:58',0);
INSERT INTO `p_loginlog` VALUES ('0e3abfae8ab54de28407d6753ca6df20',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-06 15:48:23',0);
INSERT INTO `p_loginlog` VALUES ('0e95ed1d6e494331ba5262ac11d8f967',0,'管理员','0:0:0:0:0:0:0:1','2016-05-06 11:48:00',0);
INSERT INTO `p_loginlog` VALUES ('0eafdcf304b841169ef8ea2900f89099',2275,'管理员','127.0.0.1','2016-05-27 09:10:46',0);
INSERT INTO `p_loginlog` VALUES ('0eb6ab53b41c47a88798e4c1b59fdf84',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-27 09:17:10',0);
INSERT INTO `p_loginlog` VALUES ('0eed471497094d06b9f8b992a66f2b2d',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-11 10:13:43',0);
INSERT INTO `p_loginlog` VALUES ('0f44285d3a3e49e497482334ec6de51b',2275,'管理员','127.0.0.1','2016-05-16 08:53:15',0);
INSERT INTO `p_loginlog` VALUES ('0f58fc19a8ff4a648ebfa95ea15ef91a',0,'管理员','0:0:0:0:0:0:0:1','2016-05-06 11:45:30',0);
INSERT INTO `p_loginlog` VALUES ('0ff0c09106c4495d89a920cd194d5f12',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-10 09:56:58',0);
INSERT INTO `p_loginlog` VALUES ('10266e2c0df8462784304c6a7017dcab',0,'管理员','127.0.0.1','2016-04-25 17:50:24',0);
INSERT INTO `p_loginlog` VALUES ('1038874796b64011a3d63bd237421152',2275,'管理员','127.0.0.1','2016-05-13 16:17:46',0);
INSERT INTO `p_loginlog` VALUES ('10392e27be994547a797a1053ffe8df6',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-06 14:32:29',0);
INSERT INTO `p_loginlog` VALUES ('1076d326d81b446fad52e3d9de7bcb05',2275,'管理员','127.0.0.1','2016-05-18 09:26:55',0);
INSERT INTO `p_loginlog` VALUES ('10a3afdef0b046d8a0308ea3843aa85d',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-12 13:43:26',0);
INSERT INTO `p_loginlog` VALUES ('110829a552a44e48bfed0d6449ffa01a',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-04 13:55:36',0);
INSERT INTO `p_loginlog` VALUES ('11307f3362f247b88f4c7a891cdac8db',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-19 10:09:31',0);
INSERT INTO `p_loginlog` VALUES ('1162921360e54ad0b1f4d4bac9e6e32f',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-12 11:55:47',0);
INSERT INTO `p_loginlog` VALUES ('116dd8e978624298a177a0955fe4883a',2275,'管理员','127.0.0.1','2016-05-19 15:32:30',0);
INSERT INTO `p_loginlog` VALUES ('1212f4201f68428ba6df91903e52bf07',2275,'管理员','127.0.0.1','2016-05-19 15:38:35',0);
INSERT INTO `p_loginlog` VALUES ('12a94cd68c4a467287430dd76a2e06fd',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-10 11:48:48',0);
INSERT INTO `p_loginlog` VALUES ('132009ec9d6d46fc801395e08d064a81',2275,'管理员','127.0.0.1','2016-05-27 10:05:32',0);
INSERT INTO `p_loginlog` VALUES ('1326a08ace83402e99b1ba2e93a4838f',2275,'管理员','127.0.0.1','2016-05-11 15:04:23',0);
INSERT INTO `p_loginlog` VALUES ('138c3b2700c243ee9bf592c9b0fc2319',2275,'管理员','127.0.0.1','2016-05-12 14:54:53',0);
INSERT INTO `p_loginlog` VALUES ('13926039c2d4443e93b58198a9b2938c',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-27 14:28:55',0);
INSERT INTO `p_loginlog` VALUES ('1403db8bc3204345a81e8843719a2cc2',2275,'管理员','127.0.0.1','2016-05-10 16:21:30',0);
INSERT INTO `p_loginlog` VALUES ('14aa557e9b944f66ad3d169e1512c374',2275,'管理员','127.0.0.1','2016-05-20 17:19:07',0);
INSERT INTO `p_loginlog` VALUES ('157e4c87bc2a4f71b06488609ff796f6',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-13 13:58:16',0);
INSERT INTO `p_loginlog` VALUES ('168a0df0873c4f379ab54f0b8be866e6',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-10 15:11:47',0);
INSERT INTO `p_loginlog` VALUES ('17019d9a105847bb8ca378d0a74f007d',2275,'管理员','127.0.0.1','2016-05-11 10:57:52',0);
INSERT INTO `p_loginlog` VALUES ('170a5ae9b79d48febddd609cdf0bfcf6',2275,'管理员','127.0.0.1','2016-05-22 10:13:35',0);
INSERT INTO `p_loginlog` VALUES ('1740fd2e1de04a478bc39f2166abfb39',2275,'管理员','127.0.0.1','2016-05-19 13:46:20',0);
INSERT INTO `p_loginlog` VALUES ('1844d0510a7b4ec99e85754e181a84e2',2275,'管理员','127.0.0.1','2016-05-24 11:11:16',0);
INSERT INTO `p_loginlog` VALUES ('185df30b45494f20bc46598f11aabe5f',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-25 13:33:12',0);
INSERT INTO `p_loginlog` VALUES ('18ae396c8465442e99aaa2f4535918fa',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-18 11:24:29',0);
INSERT INTO `p_loginlog` VALUES ('19b7612c557c4d35b1067a358872892b',2275,'管理员','127.0.0.1','2016-05-25 10:00:56',0);
INSERT INTO `p_loginlog` VALUES ('19d5554242404065a6f63f0142b7aad9',2275,'管理员','127.0.0.1','2016-05-11 14:54:52',0);
INSERT INTO `p_loginlog` VALUES ('1aacda8d672941c9a3b559917519fa4c',2275,'管理员','127.0.0.1','2016-05-18 09:06:16',0);
INSERT INTO `p_loginlog` VALUES ('1ab4fb27428c4c8fb2dabffa028c897a',2275,'管理员','127.0.0.1','2016-05-16 16:54:02',0);
INSERT INTO `p_loginlog` VALUES ('1abd22ac0baa4e5cadbb4d2efe21730b',2275,'管理员','127.0.0.1','2016-05-27 13:24:17',0);
INSERT INTO `p_loginlog` VALUES ('1ac86b412124481ab765fba3a7959a94',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-27 14:09:59',0);
INSERT INTO `p_loginlog` VALUES ('1af24b655c4844c29084c1343bb3d841',2275,'管理员','127.0.0.1','2016-05-26 09:18:51',0);
INSERT INTO `p_loginlog` VALUES ('1b061af9cdb14154b6c605f9b7102cc8',2275,'管理员','127.0.0.1','2016-05-17 11:21:43',0);
INSERT INTO `p_loginlog` VALUES ('1c014b27da404bfdb8ecab95d4cb06ff',2275,'管理员','127.0.0.1','2016-05-17 14:52:12',0);
INSERT INTO `p_loginlog` VALUES ('1c146ed9e88e4b388d567ffb74cebee0',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-27 15:43:19',0);
INSERT INTO `p_loginlog` VALUES ('1c2fae611a6a409c9550f8c479610e55',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-26 14:41:10',0);
INSERT INTO `p_loginlog` VALUES ('1c9b095c92b14c788290d3ef43cae619',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-12 15:18:03',0);
INSERT INTO `p_loginlog` VALUES ('1ca59cc3cbe44920aea17e985d269bcd',2275,'管理员','127.0.0.1','2016-05-11 14:36:51',0);
INSERT INTO `p_loginlog` VALUES ('1d08f52dce8b4d629166cc8f041a2ec6',2275,'管理员','127.0.0.1','2016-05-09 11:47:52',0);
INSERT INTO `p_loginlog` VALUES ('1d76e34560e347ad8f642c98ea288f0f',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-10 14:15:41',0);
INSERT INTO `p_loginlog` VALUES ('1dcb74c292cd4da7a069128c98c29f58',2275,'管理员','127.0.0.1','2016-05-10 17:26:51',0);
INSERT INTO `p_loginlog` VALUES ('1e15695b4082437fa41d8db0e95bcdfc',2275,'管理员','127.0.0.1','2016-05-26 09:28:07',0);
INSERT INTO `p_loginlog` VALUES ('1e442adc36d347c6a0642c07caf26ca7',2275,'管理员','127.0.0.1','2016-05-11 09:39:14',0);
INSERT INTO `p_loginlog` VALUES ('1e5511e691eb44ca87d5a3db7e075467',2275,'管理员','127.0.0.1','2016-05-25 09:09:53',0);
INSERT INTO `p_loginlog` VALUES ('1e98bbd6625641958c26fc129154f6cc',2275,'管理员','127.0.0.1','2016-05-26 15:34:20',0);
INSERT INTO `p_loginlog` VALUES ('1ee690d5952b40adab43256c2926e7d6',2275,'管理员','127.0.0.1','2016-05-19 09:46:33',0);
INSERT INTO `p_loginlog` VALUES ('1eec6d6d0c6b446c8ee60213805854ef',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-10 11:48:03',0);
INSERT INTO `p_loginlog` VALUES ('1efa1ca8287942ecace52e3bd3dfb074',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-12 13:56:39',0);
INSERT INTO `p_loginlog` VALUES ('1f5e1844a597477c8dc60b024aa216f2',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-19 09:16:25',0);
INSERT INTO `p_loginlog` VALUES ('1f81795ea46445adab48e14ff11b9c1c',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-27 09:54:08',0);
INSERT INTO `p_loginlog` VALUES ('1fcfb82487a340d59bdd2f82f6450ab7',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-26 11:10:05',0);
INSERT INTO `p_loginlog` VALUES ('1fd88b1f445542d9b3c3df3e021a28f6',2275,'管理员','127.0.0.1','2016-05-13 17:38:57',0);
INSERT INTO `p_loginlog` VALUES ('20ab5ac12b1e4cd080d7734446beefe8',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-10 12:11:33',0);
INSERT INTO `p_loginlog` VALUES ('20cdfacb9c44432fbe9ac7553432b5da',0,'管理员','0:0:0:0:0:0:0:1','2016-04-26 16:10:44',0);
INSERT INTO `p_loginlog` VALUES ('20e23ee4df9e427392f78f602dd70714',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-06 16:10:04',0);
INSERT INTO `p_loginlog` VALUES ('20ede705b44141f782330f6eb59677eb',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-11 10:04:51',0);
INSERT INTO `p_loginlog` VALUES ('212e240470ba4c1ab180804e53959028',2275,'管理员','127.0.0.1','2016-05-13 16:10:46',0);
INSERT INTO `p_loginlog` VALUES ('2160863f17cc4099836f4db155fe9aee',0,'管理员','127.0.0.1','2016-05-03 15:20:26',0);
INSERT INTO `p_loginlog` VALUES ('21ee6162b5a947ef9a8bf8f034237ccc',2275,'管理员','127.0.0.1','2016-05-19 08:57:02',0);
INSERT INTO `p_loginlog` VALUES ('2209c995093349d79b8a508ce7778307',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-26 15:48:57',0);
INSERT INTO `p_loginlog` VALUES ('2224e8d1875b4c3685fbed1ab323086f',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-11 11:39:25',0);
INSERT INTO `p_loginlog` VALUES ('228dab2ac2dd4b00b2b575d3e870ab95',0,'管理员','127.0.0.1','2016-04-25 18:33:00',0);
INSERT INTO `p_loginlog` VALUES ('22a366cb25f548da8f343ec2ddac4e34',2275,'管理员','0:0:0:0:0:0:0:1','2016-04-27 14:44:41',0);
INSERT INTO `p_loginlog` VALUES ('2343f15aff054d0fb5eb5483eefd54fe',2275,'管理员','127.0.0.1','2016-05-11 14:46:02',0);
INSERT INTO `p_loginlog` VALUES ('235c3c8311194518acc7cda84d40d529',2275,'管理员','127.0.0.1','2016-05-11 10:55:53',0);
INSERT INTO `p_loginlog` VALUES ('23a9b4d23c924c0eb165766f652842fe',2275,'管理员','127.0.0.1','2016-05-17 17:33:25',0);
INSERT INTO `p_loginlog` VALUES ('240f4855a8e1432a8f25fe66cd5a477a',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-09 13:36:24',0);
INSERT INTO `p_loginlog` VALUES ('243b301d610d43a49f4277d50cac1dcb',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-12 15:04:34',0);
INSERT INTO `p_loginlog` VALUES ('249e172e2e234066a2fbf8644e20d65e',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-13 14:42:48',0);
INSERT INTO `p_loginlog` VALUES ('24f827a25af94d3d94d5d70e99e84720',2275,'管理员','127.0.0.1','2016-05-22 11:06:58',0);
INSERT INTO `p_loginlog` VALUES ('24ff0ea55bcd43fa8e570647726c515c',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-06 15:40:13',0);
INSERT INTO `p_loginlog` VALUES ('2515fdb3b05b455f96437675dfd65eda',2275,'管理员','127.0.0.1','2016-05-19 10:43:52',0);
INSERT INTO `p_loginlog` VALUES ('25a2a4177a934c629ffc9b19903f5c40',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-06 15:43:48',0);
INSERT INTO `p_loginlog` VALUES ('25bdf7709d3545df9ee16b461be0f36e',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-06 14:09:47',0);
INSERT INTO `p_loginlog` VALUES ('25c0ea3a0f434850bb4f32417d425017',0,'管理员','127.0.0.1','2016-04-28 10:46:08',0);
INSERT INTO `p_loginlog` VALUES ('25d3b208a1ba4f21991e981e9ba5b1e5',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-13 14:03:58',0);
INSERT INTO `p_loginlog` VALUES ('26004509f0934f9cae1b757cd04839a8',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-06 16:12:55',0);
INSERT INTO `p_loginlog` VALUES ('260a60046598464b8ff8a997f69ad713',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-26 16:16:25',0);
INSERT INTO `p_loginlog` VALUES ('262b28a827aa4b9c839b10eb78cbd91a',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-25 11:11:29',0);
INSERT INTO `p_loginlog` VALUES ('2696b6bc94a44037a41e89487ce11816',0,'管理员','0:0:0:0:0:0:0:1','2016-05-20 15:47:27',0);
INSERT INTO `p_loginlog` VALUES ('26b0bced6a9049b1b073d76d40e20816',2275,'管理员','0:0:0:0:0:0:0:1','2016-04-27 14:16:30',0);
INSERT INTO `p_loginlog` VALUES ('26db9083241d4391b75a2c7d74dc041e',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-10 11:38:13',0);
INSERT INTO `p_loginlog` VALUES ('2700205474b14c1b9b9ef9ccf4635003',2275,'管理员','127.0.0.1','2016-05-19 17:10:50',0);
INSERT INTO `p_loginlog` VALUES ('27997cf376b842699d4514cd4d2413b8',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-23 15:50:29',0);
INSERT INTO `p_loginlog` VALUES ('284e1f3bf4f740e9aba534f80f3ae51c',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-10 16:14:28',0);
INSERT INTO `p_loginlog` VALUES ('28c3944ca94544e0ad16148fc5f44ff0',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-06 13:53:57',0);
INSERT INTO `p_loginlog` VALUES ('28cb5905755640d298149893e8f18291',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-27 13:19:50',0);
INSERT INTO `p_loginlog` VALUES ('28ff3eb378fc45f6837847733f3de089',2275,'管理员','127.0.0.1','2016-05-22 10:20:52',0);
INSERT INTO `p_loginlog` VALUES ('291ad1e875204ff7974bce89db71bc3e',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-06 16:38:29',0);
INSERT INTO `p_loginlog` VALUES ('2a44723dfa3a49668fc5e8404a8188fe',2275,'管理员','127.0.0.1','2016-05-25 17:13:26',0);
INSERT INTO `p_loginlog` VALUES ('2ac15e2d8fb84e2190f7db3b98d3a4b0',2275,'管理员','127.0.0.1','2016-05-27 17:31:29',0);
INSERT INTO `p_loginlog` VALUES ('2adf7b9a493748d6bf7470bb1d4a31bd',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-24 16:04:02',0);
INSERT INTO `p_loginlog` VALUES ('2b30ae5b2ab840cc94bb6dcf574ad3f4',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-19 16:59:44',0);
INSERT INTO `p_loginlog` VALUES ('2b7f922e030b44859174ffc3f191ef33',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-24 15:53:56',0);
INSERT INTO `p_loginlog` VALUES ('2c46fdf7e28a4d6b8455435199505105',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-16 13:41:12',0);
INSERT INTO `p_loginlog` VALUES ('2c56bd4224b24e5db06757496570671d',2275,'管理员','127.0.0.1','2016-05-09 15:05:18',0);
INSERT INTO `p_loginlog` VALUES ('2cb72890d71d4635a358d4c15e92ef73',2275,'管理员','127.0.0.1','2016-05-09 12:42:06',0);
INSERT INTO `p_loginlog` VALUES ('2cff19b1acbc42dda025b24926ff788b',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-12 09:08:32',0);
INSERT INTO `p_loginlog` VALUES ('2d93e4b3609147589b7673b3cd37464f',2275,'管理员','127.0.0.1','2016-05-24 11:18:46',0);
INSERT INTO `p_loginlog` VALUES ('2dc26ed93cba459e89883a9e2bb6eb7f',2275,'管理员','127.0.0.1','2016-05-25 10:30:24',0);
INSERT INTO `p_loginlog` VALUES ('2e958c6e44684b429d33c98559accae5',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-09 14:59:21',0);
INSERT INTO `p_loginlog` VALUES ('2f18b60a1225499b90f2e9b8b835c288',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-18 14:06:02',0);
INSERT INTO `p_loginlog` VALUES ('2f99e5cf924b4f3486ac05183548ee34',2275,'管理员','127.0.0.1','2016-05-10 15:09:08',0);
INSERT INTO `p_loginlog` VALUES ('2fa8aec3b5fb4147828c2955730e5904',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-13 14:41:21',0);
INSERT INTO `p_loginlog` VALUES ('2fdbf4c34e9d4384aff378bb638e2a86',2275,'管理员','127.0.0.1','2016-05-20 17:10:22',0);
INSERT INTO `p_loginlog` VALUES ('30027cff2e8c4c50944ce322d4e990b6',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-09 17:13:47',0);
INSERT INTO `p_loginlog` VALUES ('300805cd49844265befdc79a146e2094',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-24 16:05:49',0);
INSERT INTO `p_loginlog` VALUES ('30181087106c4a2cb974b56d15b3a54f',2275,'管理员','127.0.0.1','2016-05-09 14:40:33',0);
INSERT INTO `p_loginlog` VALUES ('3048735ecf2345f6a164c3b850113e74',2275,'管理员','127.0.0.1','2016-05-17 11:12:52',0);
INSERT INTO `p_loginlog` VALUES ('305ff4e2719544369d2da2c103bd75c4',2275,'管理员','127.0.0.1','2016-05-09 12:42:59',0);
INSERT INTO `p_loginlog` VALUES ('306ca9bf2c7a43f29979e8e5d452cced',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-26 16:01:03',0);
INSERT INTO `p_loginlog` VALUES ('30c69451ca1f48548bf7732a037fa71c',2275,'管理员','0:0:0:0:0:0:0:1','2016-04-29 11:21:45',0);
INSERT INTO `p_loginlog` VALUES ('30d9766d0c7849c8ac0e37a3550b38ab',2275,'管理员','127.0.0.1','2016-05-20 11:21:55',0);
INSERT INTO `p_loginlog` VALUES ('30f8aa9992db44e9a64680d766c189eb',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-09 16:34:14',0);
INSERT INTO `p_loginlog` VALUES ('3179ddbfe4ca4b90a712880679b8001c',2275,'管理员','127.0.0.1','2016-05-10 16:00:28',0);
INSERT INTO `p_loginlog` VALUES ('31b025e36c4f4ee1902b3eacac1a7350',0,'管理员','127.0.0.1','2016-05-09 11:39:39',0);
INSERT INTO `p_loginlog` VALUES ('31d49e6b22a54b3eb7bb6138e1dd061e',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-18 09:36:22',0);
INSERT INTO `p_loginlog` VALUES ('31fedf9c27f3491bb8c63b36fb2e8b6f',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-10 10:23:28',0);
INSERT INTO `p_loginlog` VALUES ('321295cbaf1d4c8daa338ec23ad7bf6a',2275,'管理员','127.0.0.1','2016-05-11 15:31:20',0);
INSERT INTO `p_loginlog` VALUES ('3270f390479244f490196d078f7e20a5',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-18 11:36:52',0);
INSERT INTO `p_loginlog` VALUES ('332ab81258b04a95b7dc7e94e3e8d787',2275,'管理员','127.0.0.1','2016-05-12 14:22:51',0);
INSERT INTO `p_loginlog` VALUES ('33395871c0014090a76019c749592ad8',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-10 11:42:26',0);
INSERT INTO `p_loginlog` VALUES ('335da7fff39948cbaea9d5479c4b6642',2275,'管理员','127.0.0.1','2016-05-23 16:17:38',0);
INSERT INTO `p_loginlog` VALUES ('338d8d9d6c204961bf6a5b01dabaad23',2275,'管理员','127.0.0.1','2016-05-11 08:50:12',0);
INSERT INTO `p_loginlog` VALUES ('3395348dca174e21b4fef55cd80bcda1',2275,'管理员','127.0.0.1','2016-05-24 16:56:41',0);
INSERT INTO `p_loginlog` VALUES ('347624a0db48487894d44a6e20830c04',2275,'管理员','127.0.0.1','2016-05-12 09:39:00',0);
INSERT INTO `p_loginlog` VALUES ('34a35524d5254778a9d28b8d1c12bb48',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-12 15:09:09',0);
INSERT INTO `p_loginlog` VALUES ('35ce04f0dc18432dabfe4ad5ca1750a2',2275,'管理员','127.0.0.1','2016-05-25 09:28:43',0);
INSERT INTO `p_loginlog` VALUES ('35d465b2c242456a99f60698345376db',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-04 14:42:43',0);
INSERT INTO `p_loginlog` VALUES ('363ad00fb4a64be8b737994f1fdcbfce',2275,'管理员','127.0.0.1','2016-05-12 10:16:04',0);
INSERT INTO `p_loginlog` VALUES ('365c5a7b60704bbfbd846d6c68a43f89',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-26 16:39:59',0);
INSERT INTO `p_loginlog` VALUES ('365f9610b39b4fe5ab06ff575b25f367',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-27 14:10:30',0);
INSERT INTO `p_loginlog` VALUES ('36b5556aa4d140ef9cc9085d58de9dad',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-26 09:58:41',0);
INSERT INTO `p_loginlog` VALUES ('36d0ca1678f94c2fb9b0e586003f2cc3',2275,'管理员','127.0.0.1','2016-04-26 15:23:12',0);
INSERT INTO `p_loginlog` VALUES ('36fa12da1ef346cc81a36943d2fa48ad',2275,'管理员','127.0.0.1','2016-05-19 09:54:40',0);
INSERT INTO `p_loginlog` VALUES ('3747afe563564765851290b475fb89ad',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-27 13:18:31',0);
INSERT INTO `p_loginlog` VALUES ('37a18ec8cfbf4e24b33b90075ea78e75',2275,'管理员','127.0.0.1','2016-05-09 15:03:16',0);
INSERT INTO `p_loginlog` VALUES ('37c0249aa13d4be381e09e8972dd36b5',2275,'管理员','127.0.0.1','2016-05-13 11:28:27',0);
INSERT INTO `p_loginlog` VALUES ('37eab60e85da4895827558e099806e86',2275,'管理员','127.0.0.1','2016-05-22 10:14:44',0);
INSERT INTO `p_loginlog` VALUES ('37f37866ba204ee893a812d0d8e062b8',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-26 15:55:08',0);
INSERT INTO `p_loginlog` VALUES ('37f6447bf6ae4d3f8270079484296fde',2275,'管理员','0:0:0:0:0:0:0:1','2016-04-27 13:55:49',0);
INSERT INTO `p_loginlog` VALUES ('38d67e153c374dd9a61a48b2c77c81fc',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-23 10:41:00',0);
INSERT INTO `p_loginlog` VALUES ('38e3e99e17e04bbd862340827cf7e88b',2275,'管理员','127.0.0.1','2016-05-19 15:33:36',0);
INSERT INTO `p_loginlog` VALUES ('395b792902d547e5a9a73d5e10b09cfd',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-24 15:54:01',0);
INSERT INTO `p_loginlog` VALUES ('3a1678efc49c48a782cf35dc082b89c8',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-25 13:38:12',0);
INSERT INTO `p_loginlog` VALUES ('3a3af66ba9414fe5821b88269a820cdf',2275,'管理员','127.0.0.1','2016-05-10 11:54:26',0);
INSERT INTO `p_loginlog` VALUES ('3a59c88a600744a8bf1fe961be650af6',0,'管理员','127.0.0.1','2016-04-26 15:12:37',0);
INSERT INTO `p_loginlog` VALUES ('3abf0e7d3a034ca5a769dd99c08dd445',2275,'管理员','127.0.0.1','2016-05-09 11:35:08',0);
INSERT INTO `p_loginlog` VALUES ('3b54db142bde461fa0e5a011adb9999b',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-27 10:17:24',0);
INSERT INTO `p_loginlog` VALUES ('3b8f629b03e4499fbcfdc93d430c7dc8',2275,'管理员','127.0.0.1','2016-05-11 09:32:28',0);
INSERT INTO `p_loginlog` VALUES ('3be377876c44471e9b4d1b8cfd889aa3',2275,'管理员','127.0.0.1','2016-05-09 14:46:27',0);
INSERT INTO `p_loginlog` VALUES ('3c17995eeed6414caf2179ce090c381b',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-18 09:06:53',0);
INSERT INTO `p_loginlog` VALUES ('3c274f8ea4e046108a4027adcbeccf1c',0,'管理员','127.0.0.1','2016-04-25 18:34:54',0);
INSERT INTO `p_loginlog` VALUES ('3c873fc760a84ff0a83c5593c7ce2b6f',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-05 16:33:02',0);
INSERT INTO `p_loginlog` VALUES ('3cbb6ae225f6405593edfe65a2ec557c',2275,'管理员','127.0.0.1','2016-05-09 14:47:55',0);
INSERT INTO `p_loginlog` VALUES ('3cc226c4836f4df39dec1921fb60c71b',2275,'管理员','127.0.0.1','2016-05-20 16:00:31',0);
INSERT INTO `p_loginlog` VALUES ('3cea9f3111544b66a9e79bae523aa703',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-09 10:54:21',0);
INSERT INTO `p_loginlog` VALUES ('3d056a2cd6704a31a80a064a75479a92',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-20 17:48:32',0);
INSERT INTO `p_loginlog` VALUES ('3d62180eb54141838e262192d8360783',2275,'管理员','127.0.0.1','2016-05-22 11:16:54',0);
INSERT INTO `p_loginlog` VALUES ('3d70bc87b4df425f8c1b0682dd6b54b1',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-25 10:25:01',0);
INSERT INTO `p_loginlog` VALUES ('3d891023580d48a5bde2bbda3863e74f',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-17 11:06:53',0);
INSERT INTO `p_loginlog` VALUES ('3dc2f8143c2d451e9e481d2dc4910ebf',2275,'管理员','127.0.0.1','2016-04-26 15:26:05',0);
INSERT INTO `p_loginlog` VALUES ('3de6380edffd49fc8338f289ed6a697f',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-26 16:31:23',0);
INSERT INTO `p_loginlog` VALUES ('3e13d0f2fcdb437b8595f137c6e8ee3d',2275,'管理员','127.0.0.1','2016-05-19 14:10:52',0);
INSERT INTO `p_loginlog` VALUES ('3e3fbee201a94c52bfaae5c961eb7752',2275,'管理员','0:0:0:0:0:0:0:1','2016-04-28 09:12:41',0);
INSERT INTO `p_loginlog` VALUES ('3e815a641b38453f8c839f6c98bd5342',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-11 16:54:16',0);
INSERT INTO `p_loginlog` VALUES ('3ee668a013274689b14a78289974ead5',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-18 14:57:53',0);
INSERT INTO `p_loginlog` VALUES ('3eee32cd9aa346039afe84237fd7ae59',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-12 11:12:15',0);
INSERT INTO `p_loginlog` VALUES ('3f08edc10c2a48dea787d31fff02a1d4',2275,'管理员','127.0.0.1','2016-05-27 13:17:26',0);
INSERT INTO `p_loginlog` VALUES ('3f181795e0e447b1b83f4cd6ef032cf3',2275,'管理员','127.0.0.1','2016-05-19 13:41:37',0);
INSERT INTO `p_loginlog` VALUES ('3f2bd700db474377967c9c3ca0c1eccf',2275,'管理员','127.0.0.1','2016-05-13 15:40:05',0);
INSERT INTO `p_loginlog` VALUES ('3f41c9ec12ec4498948c09c0494425f7',0,'管理员','127.0.0.1','2016-04-26 15:06:50',0);
INSERT INTO `p_loginlog` VALUES ('402d8bb3f0424ef2969d8dc26aa6b464',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-06 15:47:37',0);
INSERT INTO `p_loginlog` VALUES ('4050d36df6e54548afd1d0058df15de0',2275,'管理员','127.0.0.1','2016-05-19 13:51:17',0);
INSERT INTO `p_loginlog` VALUES ('418bd4dd56544fbf862c16e1b0324c76',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-12 11:09:00',0);
INSERT INTO `p_loginlog` VALUES ('41977fc4724c49a3a5ab1c821ea61ba6',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-19 17:00:45',0);
INSERT INTO `p_loginlog` VALUES ('41f424a04dfc44a28c464a36ecbab8bc',2275,'管理员','127.0.0.1','2016-05-25 09:16:08',0);
INSERT INTO `p_loginlog` VALUES ('425a656991bd4859a31056fe29e95e8d',2275,'管理员','127.0.0.1','2016-05-10 17:38:26',0);
INSERT INTO `p_loginlog` VALUES ('42bcc9ec98534d0bac7ca89f4639f608',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-12 09:10:56',0);
INSERT INTO `p_loginlog` VALUES ('42ccc20657654dcc9d1bb5ced9be997a',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-18 11:23:18',0);
INSERT INTO `p_loginlog` VALUES ('432fd37bf43b4da6a79df78d5acb3410',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-17 09:59:11',0);
INSERT INTO `p_loginlog` VALUES ('4367784ad603430bbc32c40650523cbb',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-27 09:12:57',0);
INSERT INTO `p_loginlog` VALUES ('43930a269aca41e1b05e0776d09f4180',2275,'管理员','127.0.0.1','2016-05-27 17:36:15',0);
INSERT INTO `p_loginlog` VALUES ('44101a2521da4d9386dcfd9e2c1a168f',2275,'管理员','127.0.0.1','2016-05-19 09:01:30',0);
INSERT INTO `p_loginlog` VALUES ('4421c14763d1439897726d32469f0838',2275,'管理员','127.0.0.1','2016-05-20 13:15:46',0);
INSERT INTO `p_loginlog` VALUES ('444b8421afca4f91a078d8d11adda25c',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-11 10:24:03',0);
INSERT INTO `p_loginlog` VALUES ('4499ed53b3084c9b962056cfd30c1254',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-12 17:49:29',0);
INSERT INTO `p_loginlog` VALUES ('4542154d440f4f5dadc817dba5fb828d',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-27 13:52:58',0);
INSERT INTO `p_loginlog` VALUES ('455c04a8149f439a8096a402b94225aa',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-25 13:40:28',0);
INSERT INTO `p_loginlog` VALUES ('45e622e213bc4114a321de47d0236b11',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-26 08:52:26',0);
INSERT INTO `p_loginlog` VALUES ('4657e0a93bf84a1ea9bdb3e11038f9b7',2275,'管理员','127.0.0.1','2016-05-27 09:50:57',0);
INSERT INTO `p_loginlog` VALUES ('468d09f1786946af893a035aa58e7a4a',2275,'管理员','127.0.0.1','2016-05-11 09:10:10',0);
INSERT INTO `p_loginlog` VALUES ('469d4a8110184e0eb40bbb0f6a6f37b9',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-10 11:36:26',0);
INSERT INTO `p_loginlog` VALUES ('46aacc809f2e4ef3a00810b22ec62fb8',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-18 16:49:22',0);
INSERT INTO `p_loginlog` VALUES ('472293734a904c5aad3c5204139e7480',2275,'管理员','127.0.0.1','2016-05-24 11:41:28',0);
INSERT INTO `p_loginlog` VALUES ('48400cea6d2b4bf587b7aaa0855d5c93',0,'管理员','127.0.0.1','2016-04-26 15:39:51',0);
INSERT INTO `p_loginlog` VALUES ('48bfdbd12a884903b7ac57bf36715dae',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-06 13:55:27',0);
INSERT INTO `p_loginlog` VALUES ('48e70b703c964d93ad11f4ff7c88b329',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-23 10:39:58',0);
INSERT INTO `p_loginlog` VALUES ('49c2982cf2e1498cb8573bd61835bad8',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-09 09:28:40',0);
INSERT INTO `p_loginlog` VALUES ('49d2232144f74df59078b103d7188113',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-27 14:30:11',0);
INSERT INTO `p_loginlog` VALUES ('4a4870da7f1f4f8eb185e6880b20203d',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-25 11:12:06',0);
INSERT INTO `p_loginlog` VALUES ('4a4b2dafc74d4c7cb5f4f8337714b319',2275,'管理员','127.0.0.1','2016-05-25 09:59:17',0);
INSERT INTO `p_loginlog` VALUES ('4ad275235d2b4d9b8d3589e9eb4577b8',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-27 14:29:00',0);
INSERT INTO `p_loginlog` VALUES ('4af5fcde211346e286074bfd29f768a0',2275,'管理员','127.0.0.1','2016-05-27 17:23:43',0);
INSERT INTO `p_loginlog` VALUES ('4af901d557d945eaaca8518003c8f493',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-11 13:52:16',0);
INSERT INTO `p_loginlog` VALUES ('4b6370bf3f9a4f488f1aadf6017ca0ba',2275,'管理员','127.0.0.1','2016-05-12 15:03:45',0);
INSERT INTO `p_loginlog` VALUES ('4b6f396162cd4013b6141b94ff818268',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-26 08:52:47',0);
INSERT INTO `p_loginlog` VALUES ('4ba5c96ad35944d999e40310e5a819ca',2275,'管理员','127.0.0.1','2016-05-11 11:00:41',0);
INSERT INTO `p_loginlog` VALUES ('4bbd700ddf1644a5a3684bb1cccf2685',2275,'管理员','127.0.0.1','2016-05-26 15:27:25',0);
INSERT INTO `p_loginlog` VALUES ('4cf1b2ab7bc74e0e9171fd752a6bf2f6',2275,'管理员','127.0.0.1','2016-05-09 14:42:33',0);
INSERT INTO `p_loginlog` VALUES ('4cfc7c8c0f264058a57314c453b4ef95',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-13 09:05:25',0);
INSERT INTO `p_loginlog` VALUES ('4d722d40fcff4371bdb64040f0cc3a63',2275,'管理员','127.0.0.1','2016-05-19 09:03:28',0);
INSERT INTO `p_loginlog` VALUES ('4d99571a8e1c493fbb3ce0c97bdf4ce5',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-30 09:08:59',0);
INSERT INTO `p_loginlog` VALUES ('4dd6fda3dcf04554bc50b9bf502fb7ef',2275,'管理员','0:0:0:0:0:0:0:1','2016-04-28 09:31:33',0);
INSERT INTO `p_loginlog` VALUES ('4df7df9deb0f4df48e41382d2d41ab42',2275,'管理员','127.0.0.1','2016-05-27 13:15:49',0);
INSERT INTO `p_loginlog` VALUES ('4ea133a6dd6b4239adb76601f3142a54',2275,'管理员','127.0.0.1','2016-05-20 11:42:50',0);
INSERT INTO `p_loginlog` VALUES ('4eb21ecc6ae7492192afbae6d468b410',2275,'管理员','127.0.0.1','2016-05-11 17:53:40',0);
INSERT INTO `p_loginlog` VALUES ('4eef92ad805c43879b3ee9cec03333b1',0,'管理员','0:0:0:0:0:0:0:1','2016-04-28 14:05:30',0);
INSERT INTO `p_loginlog` VALUES ('4f5caebce0b9403c894ead4a6562d545',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-18 15:28:46',0);
INSERT INTO `p_loginlog` VALUES ('4fcac7caf4664c598c44b89d405ce5a5',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-26 16:11:23',0);
INSERT INTO `p_loginlog` VALUES ('504388a4f7c74ce3b5ca756fb619e91a',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-09 09:58:10',0);
INSERT INTO `p_loginlog` VALUES ('50622c6361ee44ba8ed7c3187fb1f1aa',2275,'管理员','127.0.0.1','2016-05-17 16:02:55',0);
INSERT INTO `p_loginlog` VALUES ('507337d77963457aa29dc68689589ffb',2275,'管理员','127.0.0.1','2016-05-19 13:40:38',0);
INSERT INTO `p_loginlog` VALUES ('5091a9edd6994f9cbddb6963cffca35a',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-24 14:55:50',0);
INSERT INTO `p_loginlog` VALUES ('50a4dbcdc90f48dab258f94f591ecfe5',2275,'管理员','0:0:0:0:0:0:0:1','2016-04-27 10:24:40',0);
INSERT INTO `p_loginlog` VALUES ('50b07e88a5c34a2695105a6b42ee2750',2275,'管理员','127.0.0.1','2016-05-18 09:44:01',0);
INSERT INTO `p_loginlog` VALUES ('50dfacbc4e58476ba799fc571b6459f6',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-24 11:23:51',0);
INSERT INTO `p_loginlog` VALUES ('51046d032c4f46bd9d72e6a9bb596fab',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-13 10:51:37',0);
INSERT INTO `p_loginlog` VALUES ('5142fac6e25e4ef0835d711e2b73e06b',2275,'管理员','127.0.0.1','2016-05-26 09:37:35',0);
INSERT INTO `p_loginlog` VALUES ('51913617f5da4b0cb000c2e504ebdeb8',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-24 14:49:11',0);
INSERT INTO `p_loginlog` VALUES ('52498274684349d9a73dd277818a4769',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-09 13:41:56',0);
INSERT INTO `p_loginlog` VALUES ('52980d193f734fcdb9a46cf88a2d18b2',2275,'管理员','0:0:0:0:0:0:0:1','2016-04-27 14:46:59',0);
INSERT INTO `p_loginlog` VALUES ('52d26099733e4746bf21539facb3d02b',2275,'管理员','127.0.0.1','2016-05-09 15:11:06',0);
INSERT INTO `p_loginlog` VALUES ('530877d1c9e54c0da6f5ae570669b828',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-24 15:24:07',0);
INSERT INTO `p_loginlog` VALUES ('535dc111b4524a0e910dd650c0bdb933',2275,'管理员','127.0.0.1','2016-05-27 09:40:02',0);
INSERT INTO `p_loginlog` VALUES ('53622871a3e04093afb1f08d8fd6d0e4',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-20 15:46:15',0);
INSERT INTO `p_loginlog` VALUES ('539843e40e2041ca9dfaad3ed54b1701',2275,'管理员','127.0.0.1','2016-05-27 14:19:55',0);
INSERT INTO `p_loginlog` VALUES ('53aaaa418c6a45a6b0b5ab3bb9827e6b',0,'管理员','127.0.0.1','2016-04-26 15:26:21',0);
INSERT INTO `p_loginlog` VALUES ('546e7434ef154c9ba9db5d3357fdf945',2275,'管理员','127.0.0.1','2016-05-26 09:44:48',0);
INSERT INTO `p_loginlog` VALUES ('547c6855cea6475382b09895e2d12e95',0,'管理员','0:0:0:0:0:0:0:1','2016-04-29 17:09:38',0);
INSERT INTO `p_loginlog` VALUES ('555efda7fbb54640ad300412ca50efb1',2275,'管理员','127.0.0.1','2016-05-22 09:23:45',0);
INSERT INTO `p_loginlog` VALUES ('56203c4eef3c4e0b8f51ee4236c22c13',2275,'管理员','127.0.0.1','2016-05-23 16:21:59',0);
INSERT INTO `p_loginlog` VALUES ('5629b576025e41ab82210b88bf96b283',2275,'管理员','127.0.0.1','2016-05-27 09:41:54',0);
INSERT INTO `p_loginlog` VALUES ('56369e742e044b6790703ff82b18e488',2275,'管理员','127.0.0.1','2016-05-24 16:34:22',0);
INSERT INTO `p_loginlog` VALUES ('57224a2f94a947b29d7399bb0fb4d1d0',0,'管理员','127.0.0.1','2016-04-29 13:30:56',0);
INSERT INTO `p_loginlog` VALUES ('57321e467b4145d1a816ad6d9543d70d',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-27 09:04:44',0);
INSERT INTO `p_loginlog` VALUES ('57680a5b4c3e4387b4c1425da51b1e26',2275,'管理员','127.0.0.1','2016-05-20 11:30:27',0);
INSERT INTO `p_loginlog` VALUES ('576d9fe555a24d7cabf82139ff17f8cf',2275,'管理员','127.0.0.1','2016-05-17 16:10:08',0);
INSERT INTO `p_loginlog` VALUES ('584bfcf3828b4a66a1cc1c7a12e02b06',2275,'管理员','127.0.0.1','2016-05-10 17:12:44',0);
INSERT INTO `p_loginlog` VALUES ('589e83967052451f962093de44f75b32',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-04 10:37:20',0);
INSERT INTO `p_loginlog` VALUES ('58e164e12bd84aaa867b49448b522fef',2275,'管理员','127.0.0.1','2016-05-16 11:11:44',0);
INSERT INTO `p_loginlog` VALUES ('592228374b014646a1b9cfa4d6f0855d',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-09 11:03:30',0);
INSERT INTO `p_loginlog` VALUES ('5931a3f9f8c1456a9a4abe6e0475a591',0,'管理员','0:0:0:0:0:0:0:1','2016-05-09 15:15:41',0);
INSERT INTO `p_loginlog` VALUES ('5941d40a9aa44135bc62ee71a6419226',2275,'管理员','127.0.0.1','2016-05-20 11:06:21',0);
INSERT INTO `p_loginlog` VALUES ('595bd41c21f54f769cd3fae7f59c78bb',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-18 17:26:00',0);
INSERT INTO `p_loginlog` VALUES ('59ce43cefa1042d8a2d6a14da88d659a',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-06 15:45:04',0);
INSERT INTO `p_loginlog` VALUES ('59f0986889e0478fb551e56799d1a4d4',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-11 15:03:44',0);
INSERT INTO `p_loginlog` VALUES ('5a10cebfe8104855904bcd08c45c4ae9',2275,'管理员','127.0.0.1','2016-04-26 13:54:30',0);
INSERT INTO `p_loginlog` VALUES ('5a66736cf5f94e16a10af254e60286e7',2275,'管理员','127.0.0.1','2016-05-24 16:40:13',0);
INSERT INTO `p_loginlog` VALUES ('5a7604fc872a409dab93f49de5fbd0c8',2275,'管理员','127.0.0.1','2016-05-09 15:29:15',0);
INSERT INTO `p_loginlog` VALUES ('5ac3d2f8f6cd49018c1c42ea2da89a5d',2275,'管理员','127.0.0.1','2016-05-12 17:10:00',0);
INSERT INTO `p_loginlog` VALUES ('5ad299d45ff840058364ee1b212482c3',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-27 16:36:02',0);
INSERT INTO `p_loginlog` VALUES ('5b54f2b9d37b41548a66e4eadb3cd86f',2275,'管理员','127.0.0.1','2016-05-10 09:52:56',0);
INSERT INTO `p_loginlog` VALUES ('5bb958ab395c4dcc8e13907ba4ed4b3d',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-13 10:06:24',0);
INSERT INTO `p_loginlog` VALUES ('5bc4b38c84654952a5ad30d9a13371f5',2275,'管理员','127.0.0.1','2016-05-27 09:01:28',0);
INSERT INTO `p_loginlog` VALUES ('5caa604b94d04f53bd36aeba189988a6',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-04 14:03:49',0);
INSERT INTO `p_loginlog` VALUES ('5d46c824330448b78902184d72d68f52',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-13 09:27:15',0);
INSERT INTO `p_loginlog` VALUES ('5d97d967791e490093c0bbc1b712ce4f',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-09 10:57:45',0);
INSERT INTO `p_loginlog` VALUES ('5dd075af24c8447e93e6a7a628f0a1d5',0,'管理员','0:0:0:0:0:0:0:1','2016-04-26 16:27:41',0);
INSERT INTO `p_loginlog` VALUES ('5e0235926ae3455b9dbb606e84398e43',2275,'管理员','127.0.0.1','2016-05-19 13:43:24',0);
INSERT INTO `p_loginlog` VALUES ('5e3594ba7635470c8f2521562cd2de07',2275,'管理员','127.0.0.1','2016-05-20 14:58:18',0);
INSERT INTO `p_loginlog` VALUES ('5e3fa86bbccc4b308af6ffe96001700b',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-12 13:54:03',0);
INSERT INTO `p_loginlog` VALUES ('5e6cf40afd0644279c6e1fc2a1335c9f',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-27 11:05:35',0);
INSERT INTO `p_loginlog` VALUES ('5e6fb82c5fcc4079afbaabc4a6e2bd89',2275,'管理员','127.0.0.1','2016-05-12 17:08:39',0);
INSERT INTO `p_loginlog` VALUES ('5e7eb9bae6b94b6e8fb52879ce3892fc',2275,'管理员','127.0.0.1','2016-05-17 11:37:56',0);
INSERT INTO `p_loginlog` VALUES ('5ec06458308545198a3f5c51dd7d39da',2275,'管理员','127.0.0.1','2016-04-26 15:24:38',0);
INSERT INTO `p_loginlog` VALUES ('5ef16c22740e41938921f3527f693a59',2275,'管理员','127.0.0.1','2016-05-17 16:11:34',0);
INSERT INTO `p_loginlog` VALUES ('5f3017cad98b4c4eb58b3fda2c07a92c',2275,'管理员','127.0.0.1','2016-05-13 17:45:57',0);
INSERT INTO `p_loginlog` VALUES ('5f446ea7ddaf420ba2d28fbee093fa04',2275,'管理员','127.0.0.1','2016-05-17 17:30:15',0);
INSERT INTO `p_loginlog` VALUES ('5f98c6def4c44885b0515b7f1f8e9717',2275,'管理员','127.0.0.1','2016-05-13 11:25:10',0);
INSERT INTO `p_loginlog` VALUES ('6122ad7b8240480f88ce0c64ee78fe6b',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-09 09:39:07',0);
INSERT INTO `p_loginlog` VALUES ('6166e0fc78ca4418b3c34b28fc73201c',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-27 14:10:18',0);
INSERT INTO `p_loginlog` VALUES ('61d5c72c4d7d437e9944d6d3cf95a26e',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-17 09:57:24',0);
INSERT INTO `p_loginlog` VALUES ('62064fdaca4f4dc0a7bd249e3eedf8c8',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-25 11:15:11',0);
INSERT INTO `p_loginlog` VALUES ('624a80608c9644bf85caf8150b9803df',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-26 17:19:50',0);
INSERT INTO `p_loginlog` VALUES ('6252f3fa9d104910953aad03bfad0b9d',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-09 17:22:22',0);
INSERT INTO `p_loginlog` VALUES ('62630db9ab63451db119072cbf968e97',2275,'管理员','127.0.0.1','2016-05-11 10:55:11',0);
INSERT INTO `p_loginlog` VALUES ('62aaad0ae8a94a5d9af219baf2931553',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-26 15:13:52',0);
INSERT INTO `p_loginlog` VALUES ('62c65c14e45e421388434db55f8e13c5',2275,'管理员','127.0.0.1','2016-05-23 15:25:04',0);
INSERT INTO `p_loginlog` VALUES ('62d5339595424469b72420eb746007f6',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-26 08:53:28',0);
INSERT INTO `p_loginlog` VALUES ('62dec6d3f5cd4e799a4224e948396a56',2275,'管理员','127.0.0.1','2016-05-12 15:11:54',0);
INSERT INTO `p_loginlog` VALUES ('62faf7dc03f048d48c20f3c4e3a61271',2275,'管理员','127.0.0.1','2016-05-24 16:55:22',0);
INSERT INTO `p_loginlog` VALUES ('630fa484765e44a98344f6e3664408d7',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-13 09:06:03',0);
INSERT INTO `p_loginlog` VALUES ('634ee72e348a4a3c89d5d61c27bc8128',2275,'管理员','127.0.0.1','2016-05-19 10:54:03',0);
INSERT INTO `p_loginlog` VALUES ('635843322ad54a5f89abec79c09f5c57',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-04 15:23:19',0);
INSERT INTO `p_loginlog` VALUES ('636619c3c42c40e8bf8e1e7126b01dab',2275,'管理员','127.0.0.1','2016-05-25 10:33:36',0);
INSERT INTO `p_loginlog` VALUES ('64620b70899e4f238a9f0ff17004a2aa',2275,'管理员','127.0.0.1','2016-05-23 14:37:23',0);
INSERT INTO `p_loginlog` VALUES ('6497d25cae88472ab9d7f778fd4c0bf4',2275,'管理员','127.0.0.1','2016-05-10 15:42:26',0);
INSERT INTO `p_loginlog` VALUES ('65e7629515454b29ba1b89fbc559e605',2275,'管理员','127.0.0.1','2016-05-20 13:05:07',0);
INSERT INTO `p_loginlog` VALUES ('66362ee9438d4bbead01018a4339fd55',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-09 14:47:33',0);
INSERT INTO `p_loginlog` VALUES ('66a7cd2f3c5a428e9e4c2f87085a53a5',2275,'管理员','127.0.0.1','2016-05-12 15:20:02',0);
INSERT INTO `p_loginlog` VALUES ('66ac212c90fd4913829c4efa90b15d2c',2275,'管理员','127.0.0.1','2016-05-18 09:03:46',0);
INSERT INTO `p_loginlog` VALUES ('66ccb00e79dd4e1d8cc343647771b898',2275,'管理员','127.0.0.1','2016-05-23 14:18:45',0);
INSERT INTO `p_loginlog` VALUES ('66d17943daf64ab5b7e5f36aa45d68f5',2275,'管理员','127.0.0.1','2016-05-18 11:17:47',0);
INSERT INTO `p_loginlog` VALUES ('66e739903cd14850851dc7c2085b45cd',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-10 15:43:02',0);
INSERT INTO `p_loginlog` VALUES ('67197758cc2043e3ae0e2d5921f9a1ad',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-19 10:11:30',0);
INSERT INTO `p_loginlog` VALUES ('674980dcc9754951a8d09ceb044ac8a6',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-10 15:53:40',0);
INSERT INTO `p_loginlog` VALUES ('67dedfb4f93246eda48ac96429ade5d6',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-09 09:16:10',0);
INSERT INTO `p_loginlog` VALUES ('680246cbc0ae438494e8111bb14b639c',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-11 14:52:37',0);
INSERT INTO `p_loginlog` VALUES ('68659725078a405984784c1b3e0b2d5c',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-25 11:18:01',0);
INSERT INTO `p_loginlog` VALUES ('68a5bae3aa974f7e9f2835bdfcfa9354',2275,'管理员','127.0.0.1','2016-05-11 15:33:26',0);
INSERT INTO `p_loginlog` VALUES ('68f323553988455da689388895e66349',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-09 17:16:58',0);
INSERT INTO `p_loginlog` VALUES ('690fcd53a2c24f8ea90c71e171812f5c',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-03 15:04:25',0);
INSERT INTO `p_loginlog` VALUES ('696093eda91d470d966c5f0570e6abec',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-10 13:11:33',0);
INSERT INTO `p_loginlog` VALUES ('69aeabb8bdbd4992b8a1a144106fdd1f',2275,'管理员','127.0.0.1','2016-05-24 11:26:34',0);
INSERT INTO `p_loginlog` VALUES ('69ec8255c7974058bb90c1135028d49d',2275,'管理员','127.0.0.1','2016-05-19 17:13:53',0);
INSERT INTO `p_loginlog` VALUES ('6a5aa7d9d44644a0b36105dc405f119a',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-11 15:00:52',0);
INSERT INTO `p_loginlog` VALUES ('6aa06a121339437ab9e60e0eddf0b438',2275,'管理员','127.0.0.1','2016-05-23 15:11:22',0);
INSERT INTO `p_loginlog` VALUES ('6ac6a7a3241044a7ac2b64adb4453577',2275,'管理员','0:0:0:0:0:0:0:1','2016-04-27 10:40:02',0);
INSERT INTO `p_loginlog` VALUES ('6b3a5d9554fe4996adb3c5eef3ec6979',2275,'管理员','127.0.0.1','2016-05-12 09:26:42',0);
INSERT INTO `p_loginlog` VALUES ('6bda8023dbb64562b8a78dfcdd0c5a36',2275,'管理员','127.0.0.1','2016-05-09 17:47:58',0);
INSERT INTO `p_loginlog` VALUES ('6caa48d33688483595e4f225eee8887d',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-12 10:35:20',0);
INSERT INTO `p_loginlog` VALUES ('6cc8e12b888e41e59836c15a1f69fb1e',2275,'管理员','127.0.0.1','2016-05-20 11:19:43',0);
INSERT INTO `p_loginlog` VALUES ('6d31f313965140b4ac3db850b8f14b2e',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-27 09:44:20',0);
INSERT INTO `p_loginlog` VALUES ('6d5013d8bec940eaa84474bfea94e034',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-26 08:49:02',0);
INSERT INTO `p_loginlog` VALUES ('6d62fa4cfe9b404db0dc097bc67b98e7',2275,'管理员','127.0.0.1','2016-05-25 10:05:49',0);
INSERT INTO `p_loginlog` VALUES ('6da0990882de47d2a1e3b860bb0f8483',2275,'管理员','127.0.0.1','2016-05-20 13:20:20',0);
INSERT INTO `p_loginlog` VALUES ('6df34f7f76ff44d0b80c15644033bd42',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-12 11:08:37',0);
INSERT INTO `p_loginlog` VALUES ('6e14938d44f34df9b102a7cd94c3d1c8',2275,'管理员','127.0.0.1','2016-05-23 14:50:17',0);
INSERT INTO `p_loginlog` VALUES ('6e4eb6b4157f4e5e843aa3ee48508a9a',0,'管理员','0:0:0:0:0:0:0:1','2016-05-06 11:52:12',0);
INSERT INTO `p_loginlog` VALUES ('6e672d0a7dfe4d3bbea52d68f56c279d',2275,'管理员','0:0:0:0:0:0:0:1','2016-04-27 14:48:29',0);
INSERT INTO `p_loginlog` VALUES ('6e8b2531acbf4d7f9d2753d864415902',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-09 10:44:32',0);
INSERT INTO `p_loginlog` VALUES ('6e9f986897124bf5ba035b527c570eb3',2275,'管理员','0:0:0:0:0:0:0:1','2016-04-28 09:00:27',0);
INSERT INTO `p_loginlog` VALUES ('6ee23d8dcda14371baaeb4637ad7c7f7',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-10 12:08:57',0);
INSERT INTO `p_loginlog` VALUES ('6fc38f8f3e8a47c59762c4eb4d675d9d',2275,'管理员','127.0.0.1','2016-05-19 15:23:12',0);
INSERT INTO `p_loginlog` VALUES ('700d8173d1684a5b842d8256e5604a94',2275,'管理员','127.0.0.1','2016-05-16 09:04:07',0);
INSERT INTO `p_loginlog` VALUES ('70112344b80748f6a5d14f8ee98804d1',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-04 14:17:45',0);
INSERT INTO `p_loginlog` VALUES ('704dcbafed904c2897f452c423df7137',0,'管理员','0:0:0:0:0:0:0:1','2016-05-18 15:00:18',0);
INSERT INTO `p_loginlog` VALUES ('70be1ddd45804902a915552ccf322330',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-13 13:54:41',0);
INSERT INTO `p_loginlog` VALUES ('70ecf2a42a7c4f60ba6f6ebfd53ccc33',0,'管理员','127.0.0.1','2016-05-04 16:28:15',0);
INSERT INTO `p_loginlog` VALUES ('711d3280f7fc46fb992f193d516837dd',2275,'管理员','127.0.0.1','2016-05-17 11:18:28',0);
INSERT INTO `p_loginlog` VALUES ('711e893e845f448d99a8606bbaaf6739',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-19 09:48:31',0);
INSERT INTO `p_loginlog` VALUES ('7141af865e9f400585130e68021edf51',2275,'管理员','127.0.0.1','2016-05-27 09:06:56',0);
INSERT INTO `p_loginlog` VALUES ('7179baf2574347668dad2442b3a3f1af',2275,'管理员','127.0.0.1','2016-05-25 09:37:23',0);
INSERT INTO `p_loginlog` VALUES ('718b53c0033d4a6b871cdf86a039c222',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-17 14:06:15',0);
INSERT INTO `p_loginlog` VALUES ('7190556e1bda41dea017ad5282181a4c',2275,'管理员','127.0.0.1','2016-05-11 10:50:55',0);
INSERT INTO `p_loginlog` VALUES ('71e267bc0a5640b4b485241f43ad2d6c',2275,'管理员','127.0.0.1','2016-05-09 14:48:19',0);
INSERT INTO `p_loginlog` VALUES ('71e615f4d6e8415baa461777f36be1c6',2275,'管理员','127.0.0.1','2016-05-20 12:45:21',0);
INSERT INTO `p_loginlog` VALUES ('71e8fc3deddf44dbbd8686a363cff47b',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-24 16:03:53',0);
INSERT INTO `p_loginlog` VALUES ('723053c520774ecfbf197b2457690ac9',0,'管理员','127.0.0.1','2016-04-26 12:05:56',0);
INSERT INTO `p_loginlog` VALUES ('72411ef780f041ed8d22169ff90e083f',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-10 15:44:07',0);
INSERT INTO `p_loginlog` VALUES ('7257d8aea11f4c79b117b529210f3fee',0,'管理员','127.0.0.1','2016-04-25 18:42:28',0);
INSERT INTO `p_loginlog` VALUES ('72a8cb92c629457495a017b11ea6c61c',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-04 09:26:45',0);
INSERT INTO `p_loginlog` VALUES ('72bce97041c1417e9751d2b55c51bb8f',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-10 13:28:18',0);
INSERT INTO `p_loginlog` VALUES ('731f603b313341f7a98c804f1e5719ff',2275,'管理员','127.0.0.1','2016-05-27 09:40:57',0);
INSERT INTO `p_loginlog` VALUES ('73cd3349713c48fbb5dbcc6f9685466a',2275,'管理员','127.0.0.1','2016-05-16 14:03:54',0);
INSERT INTO `p_loginlog` VALUES ('73f9dcbd9cd44f96b3a0d6687157b79a',0,'管理员','0:0:0:0:0:0:0:1','2016-05-06 09:57:49',0);
INSERT INTO `p_loginlog` VALUES ('7414cbe8e6c3410aa78235c666ab9c69',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-24 15:13:05',0);
INSERT INTO `p_loginlog` VALUES ('74212fbbd6f14b1fa8ea2d3c3625db35',2275,'管理员','127.0.0.1','2016-05-16 13:56:21',0);
INSERT INTO `p_loginlog` VALUES ('7446c91eb3ae4378ad28c82bd140a779',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-12 15:14:22',0);
INSERT INTO `p_loginlog` VALUES ('74627b18b0564664a2d1309b24386c0e',2275,'管理员','127.0.0.1','2016-05-09 17:32:53',0);
INSERT INTO `p_loginlog` VALUES ('746f2d1d2e7b494d9c3bdb079d64263f',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-09 10:30:48',0);
INSERT INTO `p_loginlog` VALUES ('7503f5d311c546859afe5a1ebee70607',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-09 13:40:49',0);
INSERT INTO `p_loginlog` VALUES ('7532afd0bc4f4afbaa58b94f61b431ae',2275,'管理员','127.0.0.1','2016-05-11 11:03:39',0);
INSERT INTO `p_loginlog` VALUES ('754e9f3c7fe34890aeb4267118d9658c',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-27 09:40:15',0);
INSERT INTO `p_loginlog` VALUES ('756936e530544296a0555508c1d1e809',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-09 16:22:55',0);
INSERT INTO `p_loginlog` VALUES ('75d6311c78f3482d8eb1b4487318f9bf',2275,'管理员','127.0.0.1','2016-05-10 16:49:16',0);
INSERT INTO `p_loginlog` VALUES ('763e71cfaafd4e58947d39a687e7edea',2275,'管理员','127.0.0.1','2016-05-20 15:22:24',0);
INSERT INTO `p_loginlog` VALUES ('766ab9ecad6946e6877a3eee8a67abfa',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-09 10:44:40',0);
INSERT INTO `p_loginlog` VALUES ('7687912fc2324d2facf5dab98c3a31bf',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-24 15:53:12',0);
INSERT INTO `p_loginlog` VALUES ('76b1888e487b4f54b2b2e4d1385c8a40',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-20 17:49:37',0);
INSERT INTO `p_loginlog` VALUES ('76ba4bcb3f604f51bf62c59726f51a77',2275,'管理员','127.0.0.1','2016-05-26 15:08:37',0);
INSERT INTO `p_loginlog` VALUES ('7714be3124fa4e88ad915bf8a56af47c',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-10 15:57:04',0);
INSERT INTO `p_loginlog` VALUES ('7763c1c62e5049dab28524c089aa33a4',2275,'管理员','127.0.0.1','2016-05-17 14:17:49',0);
INSERT INTO `p_loginlog` VALUES ('777dc52546944e48b4b678bffc87c748',2275,'管理员','127.0.0.1','2016-05-20 16:52:44',0);
INSERT INTO `p_loginlog` VALUES ('780f50fed8f14309935ea6b41edd15a2',2275,'管理员','127.0.0.1','2016-05-16 08:56:20',0);
INSERT INTO `p_loginlog` VALUES ('78ef5c67072a4abaa95bcb0034e65f23',2275,'管理员','127.0.0.1','2016-05-13 15:55:35',0);
INSERT INTO `p_loginlog` VALUES ('78f5d5bf659e401eb907dc977d47f2d0',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-10 16:04:52',0);
INSERT INTO `p_loginlog` VALUES ('7934e10297a84e0eb46a1a0308b3a424',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-10 14:01:10',0);
INSERT INTO `p_loginlog` VALUES ('7993aba9e6754cf484d2832e1a61c460',2275,'管理员','127.0.0.1','2016-05-26 09:07:10',0);
INSERT INTO `p_loginlog` VALUES ('79ddfd62cb9f4440974bfccc81c9380d',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-24 15:06:45',0);
INSERT INTO `p_loginlog` VALUES ('7a18dffbc97b476e88b040dac353bb5b',2275,'管理员','127.0.0.1','2016-05-20 10:31:31',0);
INSERT INTO `p_loginlog` VALUES ('7a35ea00896647e3957205a881b1656f',2275,'管理员','127.0.0.1','2016-05-09 16:13:20',0);
INSERT INTO `p_loginlog` VALUES ('7ab7abc339bb4061b1b87374999a9675',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-27 11:08:26',0);
INSERT INTO `p_loginlog` VALUES ('7b23dfb5bff449cb9bcb8d889954c029',0,'管理员','0:0:0:0:0:0:0:1','2016-05-18 14:15:04',0);
INSERT INTO `p_loginlog` VALUES ('7b5635e26dd84e3b998eb99857a0e312',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-06 14:40:48',0);
INSERT INTO `p_loginlog` VALUES ('7b726661070145fb90f7ae24dabe85dc',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-24 15:53:39',0);
INSERT INTO `p_loginlog` VALUES ('7bd15029a34c4f6c9fedb0c5be88e364',2275,'管理员','127.0.0.1','2016-05-25 10:56:57',0);
INSERT INTO `p_loginlog` VALUES ('7bebdbc526a54368b381e9ebabcf3fd0',2275,'管理员','127.0.0.1','2016-05-25 09:24:13',0);
INSERT INTO `p_loginlog` VALUES ('7c10660c33c441db9b9b4b8900cb1069',0,'管理员','0:0:0:0:0:0:0:1','2016-04-26 16:41:13',0);
INSERT INTO `p_loginlog` VALUES ('7c24182b178143359e6c81379ce3ff85',2275,'管理员','127.0.0.1','2016-05-10 17:17:34',0);
INSERT INTO `p_loginlog` VALUES ('7c94558ec5cc420d99981cf073616bc6',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-09 10:39:26',0);
INSERT INTO `p_loginlog` VALUES ('7cc2b6ae0ec643df9f3cc405344f1bcd',0,'管理员','127.0.0.1','2016-04-28 14:13:11',0);
INSERT INTO `p_loginlog` VALUES ('7cc6c2f6fa13472491a8a8aea458048a',0,'管理员','0:0:0:0:0:0:0:1','2016-04-26 17:51:29',0);
INSERT INTO `p_loginlog` VALUES ('7cfa247088204d0d8e8ec2e74d79d2ba',2275,'管理员','127.0.0.1','2016-05-17 11:02:39',0);
INSERT INTO `p_loginlog` VALUES ('7d57ec99e0aa4d4590127f27b3cee89b',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-09 09:30:42',0);
INSERT INTO `p_loginlog` VALUES ('7d70ad6c28394a09b3db5769b051a3bd',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-09 15:38:47',0);
INSERT INTO `p_loginlog` VALUES ('7dafec6e3dde4fb2a0b81cbe42ea3635',2275,'管理员','127.0.0.1','2016-05-19 15:35:33',0);
INSERT INTO `p_loginlog` VALUES ('7dfb4ecfa8714e67abbedf3a8dffdff8',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-27 11:03:45',0);
INSERT INTO `p_loginlog` VALUES ('7e1af851c313476b94630bcbb2dc9738',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-09 10:34:58',0);
INSERT INTO `p_loginlog` VALUES ('7e634ae33e654586b4412820f9c738f6',0,'管理员','0:0:0:0:0:0:0:1','2016-05-17 15:41:46',0);
INSERT INTO `p_loginlog` VALUES ('7fdabefdc8d245029ef53a8fe3f4b816',2275,'管理员','127.0.0.1','2016-05-27 17:29:24',0);
INSERT INTO `p_loginlog` VALUES ('7fddbd00526b437b8aaa34f4f70aa124',2275,'管理员','127.0.0.1','2016-05-17 11:13:27',0);
INSERT INTO `p_loginlog` VALUES ('80adcc46b1284cf494fd1d93eff39e12',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-13 10:10:38',0);
INSERT INTO `p_loginlog` VALUES ('80ae6abecfc442eca08af17e3994fc0e',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-09 11:09:24',0);
INSERT INTO `p_loginlog` VALUES ('817e26d0c823428fbf86f3f0195ff1c7',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-06 15:17:39',0);
INSERT INTO `p_loginlog` VALUES ('820926d26c644c3cafa3238dc25ba043',2275,'管理员','127.0.0.1','2016-05-13 17:34:43',0);
INSERT INTO `p_loginlog` VALUES ('8269bb0b0f0640d09ecd51bf036db388',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-11 16:54:51',0);
INSERT INTO `p_loginlog` VALUES ('826e1456086b488fa14c0b3f6364a0fc',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-11 09:28:10',0);
INSERT INTO `p_loginlog` VALUES ('829739b3373946d7af01ff4b9e1543cb',0,'管理员','127.0.0.1','2016-04-27 16:50:16',0);
INSERT INTO `p_loginlog` VALUES ('830127ef5f98481091fd3242f69691fa',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-10 12:03:42',0);
INSERT INTO `p_loginlog` VALUES ('83e7c0d510704e2a9dca478690597564',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-27 14:46:46',0);
INSERT INTO `p_loginlog` VALUES ('845a8a5cbca442688a2c53553bb0a050',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-12 14:58:08',0);
INSERT INTO `p_loginlog` VALUES ('84d269c5b7df469b97e0cdd165822b59',2275,'管理员','0:0:0:0:0:0:0:1','2016-04-27 14:34:08',0);
INSERT INTO `p_loginlog` VALUES ('854c28c98f1a451da7d1c5688c727da8',2275,'管理员','127.0.0.1','2016-05-13 16:52:15',0);
INSERT INTO `p_loginlog` VALUES ('85ead373137642a8bbfef1bbafb004f2',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-13 10:12:21',0);
INSERT INTO `p_loginlog` VALUES ('86423352aff248539c8d5eecc2ab32d2',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-06 14:16:05',0);
INSERT INTO `p_loginlog` VALUES ('864fcaf599cd4faf84d11f687a6223d2',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-16 10:43:19',0);
INSERT INTO `p_loginlog` VALUES ('866af713c96f4108a81934e4aebf4c45',2275,'管理员','127.0.0.1','2016-05-24 16:27:42',0);
INSERT INTO `p_loginlog` VALUES ('866c1242098141c0a0ec0adecaa845f5',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-04 10:07:18',0);
INSERT INTO `p_loginlog` VALUES ('866fd3cda40a4d7cbfee4e3a194840fc',0,'管理员','127.0.0.1','2016-05-03 11:25:37',0);
INSERT INTO `p_loginlog` VALUES ('86bd14c00327432ea3ca5694d4c89e13',2275,'管理员','127.0.0.1','2016-05-27 13:23:55',0);
INSERT INTO `p_loginlog` VALUES ('86d056ab248a448badce702309296217',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-12 14:44:06',0);
INSERT INTO `p_loginlog` VALUES ('8705a50eaf3244c1bb759bc4e6aca035',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-04 09:53:37',0);
INSERT INTO `p_loginlog` VALUES ('87e92e1699e14ea092173cc63f2452ad',0,'管理员','0:0:0:0:0:0:0:1','2016-05-06 16:30:29',0);
INSERT INTO `p_loginlog` VALUES ('8857f8a05c9e45d9a9d7e053366824f2',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-27 09:54:15',0);
INSERT INTO `p_loginlog` VALUES ('887c9a84ca074ccea054ba800269ccb0',2275,'管理员','127.0.0.1','2016-05-25 10:25:28',0);
INSERT INTO `p_loginlog` VALUES ('89da047c72d14e88b66bd061919a4013',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-12 13:53:09',0);
INSERT INTO `p_loginlog` VALUES ('89e52a18e9f5480185941861d9cb1e19',0,'管理员','0:0:0:0:0:0:0:1','2016-04-26 15:51:46',0);
INSERT INTO `p_loginlog` VALUES ('8a278fa5a06f45f4b1f34b853297dc55',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-12 11:08:00',0);
INSERT INTO `p_loginlog` VALUES ('8a2be72ee514472ab1871f8d0af526ba',2275,'管理员','0:0:0:0:0:0:0:1','2016-04-28 09:16:01',0);
INSERT INTO `p_loginlog` VALUES ('8aa8b12b277247958689e769b40fa918',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-19 10:22:42',0);
INSERT INTO `p_loginlog` VALUES ('8b32b03b35c2409c8053c789c61e4521',2275,'管理员','127.0.0.1','2016-05-16 16:52:36',0);
INSERT INTO `p_loginlog` VALUES ('8ba904fb1bde49698d4f2b382274adfe',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-09 17:28:15',0);
INSERT INTO `p_loginlog` VALUES ('8bddecaf658a4b3f8eafdf2836083ee8',2275,'管理员','127.0.0.1','2016-05-20 11:17:34',0);
INSERT INTO `p_loginlog` VALUES ('8c129576dfb144ffaa14d86842176896',0,'管理员','0:0:0:0:0:0:0:1','2016-05-17 15:21:53',0);
INSERT INTO `p_loginlog` VALUES ('8c1e6ab94fc34beba54713a6c5e899d4',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-27 11:07:13',0);
INSERT INTO `p_loginlog` VALUES ('8c73e82772eb4544b237c94441f7cb67',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-13 09:01:10',0);
INSERT INTO `p_loginlog` VALUES ('8d071f0845354d8fa2bb2c2f4a91796c',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-25 11:08:23',0);
INSERT INTO `p_loginlog` VALUES ('8d148a3c42dd4e15b4b0c24dad9ec292',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-13 14:04:39',0);
INSERT INTO `p_loginlog` VALUES ('8ebee6b0579d4e9799abcfadd7d215fb',0,'管理员','0:0:0:0:0:0:0:1','2016-04-27 11:32:12',0);
INSERT INTO `p_loginlog` VALUES ('8effc911817b4b9ea30f21bfbf34541a',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-03 13:36:05',0);
INSERT INTO `p_loginlog` VALUES ('8f3a0eadc69048fa960fde0cfb69f91e',2275,'管理员','127.0.0.1','2016-05-11 15:21:10',0);
INSERT INTO `p_loginlog` VALUES ('8f6c8ec287714df8a789fff0e394f514',2275,'管理员','127.0.0.1','2016-05-09 14:10:32',0);
INSERT INTO `p_loginlog` VALUES ('8f92822118114ebcb14b822ca8735140',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-24 16:13:22',0);
INSERT INTO `p_loginlog` VALUES ('8fdfbd9ac9924cff9e8c5e3601ca0deb',2275,'管理员','127.0.0.1','2016-05-19 10:15:10',0);
INSERT INTO `p_loginlog` VALUES ('9006344010bf4487ad8e0009d7367962',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-24 15:14:52',0);
INSERT INTO `p_loginlog` VALUES ('90a8883cba2c45438f40fc84070fef43',2275,'管理员','127.0.0.1','2016-05-25 16:52:09',0);
INSERT INTO `p_loginlog` VALUES ('90d604247abe412eb2bb9efe240af80d',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-06 16:11:56',0);
INSERT INTO `p_loginlog` VALUES ('910292d3db214b19815a15d870d86b1b',2275,'管理员','127.0.0.1','2016-05-25 17:11:31',0);
INSERT INTO `p_loginlog` VALUES ('917326a2ff544ffebffb8b5ecc7d0b77',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-09 10:43:21',0);
INSERT INTO `p_loginlog` VALUES ('9178c813f26c4f45a32f89a1b114f171',2275,'管理员','127.0.0.1','2016-05-25 10:38:10',0);
INSERT INTO `p_loginlog` VALUES ('91a4f035aaf84d06a81c5f594c33e3ad',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-27 13:08:11',0);
INSERT INTO `p_loginlog` VALUES ('920062360f1048c192211607ae22d6ca',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-09 10:01:17',0);
INSERT INTO `p_loginlog` VALUES ('923f1d30d4604115aa4e9d8b2aced296',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-09 16:12:29',0);
INSERT INTO `p_loginlog` VALUES ('92cd261753eb409a96a61b28d0f38b85',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-19 15:16:58',0);
INSERT INTO `p_loginlog` VALUES ('92d9aca6d1664ccb82dc75b68bdf5d3d',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-27 11:32:34',0);
INSERT INTO `p_loginlog` VALUES ('935be590e7144f30b17c00500d63138b',2275,'管理员','127.0.0.1','2016-05-09 11:47:43',0);
INSERT INTO `p_loginlog` VALUES ('936b4c3c79234150b008619b4be0736d',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-12 15:02:09',0);
INSERT INTO `p_loginlog` VALUES ('9388c80b42234e81ab49407d5a52e55d',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-09 14:07:06',0);
INSERT INTO `p_loginlog` VALUES ('938a7fdb900d47ff83306a70d27986ef',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-25 11:12:08',0);
INSERT INTO `p_loginlog` VALUES ('94080f29531f43b2b0bc42dda8c93a8f',2275,'管理员','127.0.0.1','2016-05-23 14:57:24',0);
INSERT INTO `p_loginlog` VALUES ('9429021d31034b29b309f2f1d43cee6e',2275,'管理员','127.0.0.1','2016-05-20 12:39:26',0);
INSERT INTO `p_loginlog` VALUES ('94bc445619ec4de6ba09767bb44fe0a0',2275,'管理员','0:0:0:0:0:0:0:1','2016-04-27 15:01:21',0);
INSERT INTO `p_loginlog` VALUES ('9521d256f9054b9dba1f563c6a5f441e',2275,'管理员','127.0.0.1','2016-05-11 09:13:46',0);
INSERT INTO `p_loginlog` VALUES ('9578b5e229644ca1a67a3b567fc98de9',2275,'管理员','127.0.0.1','2016-05-27 17:34:41',0);
INSERT INTO `p_loginlog` VALUES ('95df843a33e6441ab4a36d44f330b933',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-27 09:04:53',0);
INSERT INTO `p_loginlog` VALUES ('96b4d83786494c5d8798e0e06ef69f2c',2275,'管理员','127.0.0.1','2016-05-20 15:31:38',0);
INSERT INTO `p_loginlog` VALUES ('96b8500598974abdbed33138209020f7',2275,'管理员','127.0.0.1','2016-05-16 14:10:32',0);
INSERT INTO `p_loginlog` VALUES ('96c7bdcfdb1447728c08d8adf50b41c3',0,'管理员','0:0:0:0:0:0:0:1','2016-04-27 09:11:17',0);
INSERT INTO `p_loginlog` VALUES ('96ccb0524b6b43938fec9695b3e9f962',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-10 13:13:15',0);
INSERT INTO `p_loginlog` VALUES ('974c6b8ae31d4056b20631777482d9ed',2275,'管理员','127.0.0.1','2016-05-09 11:36:06',0);
INSERT INTO `p_loginlog` VALUES ('979de209cb8a4c3a87a8ae6534923253',2275,'管理员','127.0.0.1','2016-05-27 09:40:40',0);
INSERT INTO `p_loginlog` VALUES ('97a3d6e5601a4e1abe16553440c00dfb',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-13 09:51:00',0);
INSERT INTO `p_loginlog` VALUES ('983cf8655a744a51a4edd24cb94a8b91',2275,'管理员','127.0.0.1','2016-05-20 13:47:17',0);
INSERT INTO `p_loginlog` VALUES ('9851c8cdddb9418e87ad884a4ca2b701',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-12 11:29:38',0);
INSERT INTO `p_loginlog` VALUES ('9869d66444064651ad30a8d5cb49388e',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-16 13:44:32',0);
INSERT INTO `p_loginlog` VALUES ('98782027cc934ba1b1da58e74219d46b',2275,'管理员','127.0.0.1','2016-05-09 12:54:50',0);
INSERT INTO `p_loginlog` VALUES ('98c9dcee84874cd4a3a88347279eded9',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-27 09:43:05',0);
INSERT INTO `p_loginlog` VALUES ('98d1c254eae0420f86a485e7e6f82794',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-13 10:11:20',0);
INSERT INTO `p_loginlog` VALUES ('98f9b1a37264475a8d45b2750f105257',2275,'管理员','127.0.0.1','2016-05-11 16:37:06',0);
INSERT INTO `p_loginlog` VALUES ('9925d260bbae4e4dbe9db41457002230',2275,'管理员','127.0.0.1','2016-05-13 11:35:57',0);
INSERT INTO `p_loginlog` VALUES ('99459e0005c440c3af2eb830ee74238d',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-09 10:26:33',0);
INSERT INTO `p_loginlog` VALUES ('99857eedb00a4e57abb6fc3d86f4b86e',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-24 15:17:40',0);
INSERT INTO `p_loginlog` VALUES ('9993c9ab7c9c4552b433b5bff3f19b0c',2275,'管理员','127.0.0.1','2016-05-27 09:30:08',0);
INSERT INTO `p_loginlog` VALUES ('9a03ee324e684f0a911cb9b6d1c0de75',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-18 09:21:56',0);
INSERT INTO `p_loginlog` VALUES ('9a2628b7e6e04409a98aba3b9073d15d',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-16 15:15:16',0);
INSERT INTO `p_loginlog` VALUES ('9a308eda16124c72b72176be85591416',2275,'管理员','127.0.0.1','2016-05-13 16:02:38',0);
INSERT INTO `p_loginlog` VALUES ('9a3c7df11713499eba5214938bb73d98',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-19 14:26:27',0);
INSERT INTO `p_loginlog` VALUES ('9a6d7065c2bc4f58962496b40d62c2a2',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-04 15:10:28',0);
INSERT INTO `p_loginlog` VALUES ('9aaa87639be04be79eeb6b88e1a8eb17',2275,'管理员','127.0.0.1','2016-05-11 09:27:20',0);
INSERT INTO `p_loginlog` VALUES ('9af8a0a7051d4421a2c397b3291ffb7c',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-16 09:21:36',0);
INSERT INTO `p_loginlog` VALUES ('9bca217883da4bd98a3e20b4b91a74cd',2275,'管理员','0:0:0:0:0:0:0:1','2016-04-27 15:25:33',0);
INSERT INTO `p_loginlog` VALUES ('9c306ad5b9c14e26be6a28a1975fbc80',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-12 11:02:10',0);
INSERT INTO `p_loginlog` VALUES ('9c6ebd21c9b54246bff9ba90f2fe9daf',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-04 09:52:02',0);
INSERT INTO `p_loginlog` VALUES ('9cad3769499148d29020886b2beacb52',0,'管理员','0:0:0:0:0:0:0:1','2016-05-11 10:09:00',0);
INSERT INTO `p_loginlog` VALUES ('9cd326ff24504877bb2c9d1ed5373ae2',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-24 11:20:42',0);
INSERT INTO `p_loginlog` VALUES ('9d12de262ebf4335b0c629d3800eef69',2275,'管理员','127.0.0.1','2016-05-27 09:39:36',0);
INSERT INTO `p_loginlog` VALUES ('9d4629bf247d43ddb4f1f9277e8ec9ea',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-27 11:06:11',0);
INSERT INTO `p_loginlog` VALUES ('9dead64afa2f4ee2b51cb0860898d9ce',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-18 09:39:39',0);
INSERT INTO `p_loginlog` VALUES ('9df6afc2243e4e899c318795041a76f4',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-06 13:54:18',0);
INSERT INTO `p_loginlog` VALUES ('9e66667d31a840caa48ed53e636395b3',2275,'管理员','127.0.0.1','2016-05-16 14:00:44',0);
INSERT INTO `p_loginlog` VALUES ('9e79b3837c90442d9dda4ab95194652e',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-12 11:00:45',0);
INSERT INTO `p_loginlog` VALUES ('9eb074641457458b9b258771926e7a6c',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-24 16:01:15',0);
INSERT INTO `p_loginlog` VALUES ('9eeeee47cece42889b9cd26973df637a',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-26 15:58:25',0);
INSERT INTO `p_loginlog` VALUES ('9f8044c12e7b4610aade53e60d2b8501',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-12 11:17:07',0);
INSERT INTO `p_loginlog` VALUES ('9fb7341a1ee847f48c20a243fb651a4a',2275,'管理员','127.0.0.1','2016-05-16 08:54:49',0);
INSERT INTO `p_loginlog` VALUES ('a023026b221244858144e54b9d951b0a',2275,'管理员','127.0.0.1','2016-05-24 16:19:33',0);
INSERT INTO `p_loginlog` VALUES ('a02524a88a8545248575bd0c17add37c',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-27 10:11:24',0);
INSERT INTO `p_loginlog` VALUES ('a0383617fe3145b98d0dd263cd0de773',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-23 14:06:11',0);
INSERT INTO `p_loginlog` VALUES ('a09bd011130f406fbee5a055ea140223',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-26 17:51:32',0);
INSERT INTO `p_loginlog` VALUES ('a0e89f9487b1403c952c7aba733efd0a',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-11 09:25:48',0);
INSERT INTO `p_loginlog` VALUES ('a10514ff67f049429abf87405d67fbdb',2275,'管理员','127.0.0.1','2016-05-11 09:41:08',0);
INSERT INTO `p_loginlog` VALUES ('a15ba960b8a84a4d9d26fd2c151fb714',0,'管理员','0:0:0:0:0:0:0:1','2016-05-10 10:44:28',0);
INSERT INTO `p_loginlog` VALUES ('a19095fa8beb446e8031f9ff6fdd9c11',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-20 17:55:10',0);
INSERT INTO `p_loginlog` VALUES ('a1ecb34ee2a9407eb1d9c875ded67ab2',2275,'管理员','127.0.0.1','2016-05-11 17:50:03',0);
INSERT INTO `p_loginlog` VALUES ('a1fcf39b294945b3b72cb4697e6b37ea',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-09 16:34:15',0);
INSERT INTO `p_loginlog` VALUES ('a20c3b1694984843b87a43913d7f9b0a',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-12 10:55:42',0);
INSERT INTO `p_loginlog` VALUES ('a225fde1a8e74ec6a91da4d44b7763f8',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-27 14:02:26',0);
INSERT INTO `p_loginlog` VALUES ('a487daecbf994ffc8424381210fdd25e',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-18 15:39:29',0);
INSERT INTO `p_loginlog` VALUES ('a4ae45e0b84f45c08f9df50ba643ecd3',2275,'管理员','0:0:0:0:0:0:0:1','2016-04-27 13:59:33',0);
INSERT INTO `p_loginlog` VALUES ('a4daeb793fca49e388dfca4da46b7837',2275,'管理员','0:0:0:0:0:0:0:1','2016-04-27 10:22:49',0);
INSERT INTO `p_loginlog` VALUES ('a4ddc57a9ac9487985dd5fe93e761012',2275,'管理员','127.0.0.1','2016-05-10 15:11:43',0);
INSERT INTO `p_loginlog` VALUES ('a535ebafde334eea9d1437972b79e839',2275,'管理员','127.0.0.1','2016-05-17 14:55:49',0);
INSERT INTO `p_loginlog` VALUES ('a5a2b6682d3a45e3a297b57afd8453ff',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-11 14:59:01',0);
INSERT INTO `p_loginlog` VALUES ('a604cd6ce0bb459f8c35a85d893f029d',2275,'管理员','127.0.0.1','2016-05-16 16:09:37',0);
INSERT INTO `p_loginlog` VALUES ('a60fc691b04243948624c59fba6fed69',0,'管理员','0:0:0:0:0:0:0:1','2016-04-26 16:16:35',0);
INSERT INTO `p_loginlog` VALUES ('a673dc04540948ddb0870587f622e794',2275,'管理员','127.0.0.1','2016-05-19 10:49:12',0);
INSERT INTO `p_loginlog` VALUES ('a6c4642618ec47d88aa10b1a9febfd25',2275,'管理员','127.0.0.1','2016-05-17 11:25:24',0);
INSERT INTO `p_loginlog` VALUES ('a763742e3076405d970e430341843ca5',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-12 13:41:06',0);
INSERT INTO `p_loginlog` VALUES ('a794f5210abb4d6286d2ec8c510b8817',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-26 15:20:48',0);
INSERT INTO `p_loginlog` VALUES ('a8b7b8ce4ac94f1289c50602dfed0e56',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-10 12:21:30',0);
INSERT INTO `p_loginlog` VALUES ('a8c6e699b9a7473683ce44c7a5053ff2',0,'管理员','0:0:0:0:0:0:0:1','2016-05-20 17:18:48',0);
INSERT INTO `p_loginlog` VALUES ('a92df24ccce34608aeecc60e8c5d4060',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-16 10:44:16',0);
INSERT INTO `p_loginlog` VALUES ('a965f98ad67e4e05b6980c3362913e09',2275,'管理员','127.0.0.1','2016-05-09 14:25:36',0);
INSERT INTO `p_loginlog` VALUES ('a989121233aa458185cd75650a2ed1ce',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-09 16:52:08',0);
INSERT INTO `p_loginlog` VALUES ('a9dfacabcc204a8c899f8b7427206d04',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-12 15:15:00',0);
INSERT INTO `p_loginlog` VALUES ('a9f438641dc44ed1a1cdbfeb3de5027a',2275,'管理员','127.0.0.1','2016-05-20 11:28:18',0);
INSERT INTO `p_loginlog` VALUES ('a9feb4908b884029ac57b63146883116',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-18 13:57:35',0);
INSERT INTO `p_loginlog` VALUES ('aa204921d1c04dc5a6908d5c162c75e5',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-12 15:00:39',0);
INSERT INTO `p_loginlog` VALUES ('aa4165e407bd4864a399aeed440285cb',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-12 09:21:54',0);
INSERT INTO `p_loginlog` VALUES ('aacdd0beaaf94eb1b4887502037441c0',2275,'管理员','127.0.0.1','2016-05-19 15:26:21',0);
INSERT INTO `p_loginlog` VALUES ('ab297016b8e54c7b9a8ff7b2244f3720',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-27 09:53:47',0);
INSERT INTO `p_loginlog` VALUES ('ab4651a24cf848c284ad6b1f0e42e3b4',2275,'管理员','127.0.0.1','2016-05-22 11:04:39',0);
INSERT INTO `p_loginlog` VALUES ('ab540d2466e14237829ca79ba0f9a0cc',2275,'管理员','127.0.0.1','2016-05-23 14:49:40',0);
INSERT INTO `p_loginlog` VALUES ('abad21e9197742fc96a71423c61bf19a',2275,'管理员','127.0.0.1','2016-05-26 14:25:54',0);
INSERT INTO `p_loginlog` VALUES ('abc20ea58ed14b59b69d49c6142b209d',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-06 14:07:23',0);
INSERT INTO `p_loginlog` VALUES ('abd2f6e2f7944d17b4011cb5ec3cf405',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-17 15:45:46',0);
INSERT INTO `p_loginlog` VALUES ('abdd1e32c107445d83dbb6837108ee43',0,'管理员','0:0:0:0:0:0:0:1','2016-05-16 15:19:20',0);
INSERT INTO `p_loginlog` VALUES ('ac2da38bfc7b4fdba9b98d80f9720c22',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-27 09:54:13',0);
INSERT INTO `p_loginlog` VALUES ('ac2ec0b4d8fc4c0194f83bbdea922c08',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-04 15:52:33',0);
INSERT INTO `p_loginlog` VALUES ('ac3963e19d46408ab3f843a3ab34c9cc',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-24 15:54:52',0);
INSERT INTO `p_loginlog` VALUES ('ac81a2cc6b2a45a3bd4a7919d7320d29',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-19 10:24:05',0);
INSERT INTO `p_loginlog` VALUES ('ac852a5600f740e59e7ac9ad022d1dab',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-10 16:04:53',0);
INSERT INTO `p_loginlog` VALUES ('ac943299e7684936a458b1a9b799d76e',2275,'管理员','127.0.0.1','2016-05-13 11:24:12',0);
INSERT INTO `p_loginlog` VALUES ('ad094a7c234c4f0fb4e8af42b4c24961',2275,'管理员','127.0.0.1','2016-05-17 17:31:29',0);
INSERT INTO `p_loginlog` VALUES ('ad174305827d4761acd239d555298691',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-19 10:16:42',0);
INSERT INTO `p_loginlog` VALUES ('ad5dcf6a4d2a46c1bbc5490f4150f812',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-17 13:52:07',0);
INSERT INTO `p_loginlog` VALUES ('ad92de753f084ac69c26b41517f1163d',2275,'管理员','127.0.0.1','2016-05-27 13:19:29',0);
INSERT INTO `p_loginlog` VALUES ('ae36df51802644ab8fb66e8e05a14df4',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-10 12:29:27',0);
INSERT INTO `p_loginlog` VALUES ('ae3c6ea099734130ab99f33d53fe9988',2275,'管理员','127.0.0.1','2016-05-16 17:05:53',0);
INSERT INTO `p_loginlog` VALUES ('aeb208c3feff43f39ca11ca95c9ec612',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-09 11:03:10',0);
INSERT INTO `p_loginlog` VALUES ('af30005adf0d4547a2582a981f802df7',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-10 13:51:58',0);
INSERT INTO `p_loginlog` VALUES ('af311f1efc9d460ca312cbaf68a1f425',2275,'管理员','127.0.0.1','2016-05-25 09:14:57',0);
INSERT INTO `p_loginlog` VALUES ('af8bb14c414840fdb2686e113bc791a8',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-12 09:19:04',0);
INSERT INTO `p_loginlog` VALUES ('af901f89af8f44cb8874a9825526c7b8',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-10 16:15:29',0);
INSERT INTO `p_loginlog` VALUES ('afa4f182dc2a4f25829cb4af5efbc534',0,'管理员','127.0.0.1','2016-04-28 10:14:54',0);
INSERT INTO `p_loginlog` VALUES ('afd0e428c714492eb1b13712075e5fa5',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-09 10:31:26',0);
INSERT INTO `p_loginlog` VALUES ('b0086271c2fb4b1e8f8409b5671318c5',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-04 09:51:40',0);
INSERT INTO `p_loginlog` VALUES ('b0aad60df6ce4caeac555cdec49694cf',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-24 15:50:05',0);
INSERT INTO `p_loginlog` VALUES ('b134d7adc29e448f833c13c3f25abe17',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-27 15:01:55',0);
INSERT INTO `p_loginlog` VALUES ('b1a57e61ffe5469abee08d8aa75eed9a',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-27 13:06:46',0);
INSERT INTO `p_loginlog` VALUES ('b1e4ec473a184ae6a3900dd01dfb9c51',2275,'管理员','127.0.0.1','2016-05-13 15:39:02',0);
INSERT INTO `p_loginlog` VALUES ('b1f13a033419425db2029b4b462a2872',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-09 11:15:25',0);
INSERT INTO `p_loginlog` VALUES ('b1f6293db6784dfca53ccf5f7be6d964',2275,'管理员','0:0:0:0:0:0:0:1','2016-04-27 11:02:21',0);
INSERT INTO `p_loginlog` VALUES ('b265ce378af74946aef230b015ef5b7e',2275,'管理员','127.0.0.1','2016-05-24 11:22:56',0);
INSERT INTO `p_loginlog` VALUES ('b26bdeae6b544ae6bfc455b3298cdcb5',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-10 12:04:48',0);
INSERT INTO `p_loginlog` VALUES ('b28aaa1e9dc943c59a4aa36771471184',2275,'管理员','127.0.0.1','2016-05-22 10:12:16',0);
INSERT INTO `p_loginlog` VALUES ('b2d0af96243b461782b2bb0e9685cbe1',2275,'管理员','127.0.0.1','2016-05-19 10:32:20',0);
INSERT INTO `p_loginlog` VALUES ('b322d4ad8fcd45068184d5eed8dcc54b',2275,'管理员','127.0.0.1','2016-05-25 17:12:48',0);
INSERT INTO `p_loginlog` VALUES ('b3689a14fb2d4ca78e97164d2875b974',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-27 14:15:54',0);
INSERT INTO `p_loginlog` VALUES ('b382468bb67a48b18efc63bfa459e150',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-13 13:59:36',0);
INSERT INTO `p_loginlog` VALUES ('b38f92d4de7640449ce89cbc07c79e7a',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-10 15:10:46',0);
INSERT INTO `p_loginlog` VALUES ('b3c7e42e7a7c473baff4d9712643d4e6',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-16 17:44:45',0);
INSERT INTO `p_loginlog` VALUES ('b3ed2ae09deb41eaa65009997e1ef0b5',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-26 10:07:36',0);
INSERT INTO `p_loginlog` VALUES ('b41e141097654fa291ab1055feeae3db',2275,'管理员','127.0.0.1','2016-05-16 11:15:27',0);
INSERT INTO `p_loginlog` VALUES ('b4213c76a1eb4612bc958815377119f9',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-20 13:58:56',0);
INSERT INTO `p_loginlog` VALUES ('b45dcd3d7d9d4528a276cb16dc987862',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-11 11:23:03',0);
INSERT INTO `p_loginlog` VALUES ('b4c203b945394ff3a6affb0f45b1a473',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-13 10:52:30',0);
INSERT INTO `p_loginlog` VALUES ('b4d2908bb55641fe93017d660d937582',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-13 14:12:22',0);
INSERT INTO `p_loginlog` VALUES ('b4d9bf87bfae45fabac73316ab6033ef',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-10 14:20:37',0);
INSERT INTO `p_loginlog` VALUES ('b50ac4ec5cb34a3e88f8db63d405fa01',2275,'管理员','127.0.0.1','2016-05-25 17:10:41',0);
INSERT INTO `p_loginlog` VALUES ('b510905ced4b424aaf8adbffa2043769',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-27 09:54:01',0);
INSERT INTO `p_loginlog` VALUES ('b56f4353b69e4ec591f60e5bb3fd079e',2275,'管理员','127.0.0.1','2016-05-25 09:31:49',0);
INSERT INTO `p_loginlog` VALUES ('b57f1d8d2f704e3ab487545ddd5c9d5c',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-09 10:47:45',0);
INSERT INTO `p_loginlog` VALUES ('b5c5d1c1a9924edd9d13f05c3dfe0b0c',2275,'管理员','127.0.0.1','2016-05-25 09:27:17',0);
INSERT INTO `p_loginlog` VALUES ('b5d25f35f6e7482fb327ad116b2b1ba3',2275,'管理员','127.0.0.1','2016-05-11 11:40:52',0);
INSERT INTO `p_loginlog` VALUES ('b5f70034637344ba9716b17a40f87006',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-18 15:46:42',0);
INSERT INTO `p_loginlog` VALUES ('b6194e155a4742259c0c2afd6eb573c1',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-26 17:26:40',0);
INSERT INTO `p_loginlog` VALUES ('b644c4521ef84659b7a2fed70420f72c',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-16 09:16:49',0);
INSERT INTO `p_loginlog` VALUES ('b64c481c726b4b0cb3a83b1c6c3bbc8b',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-12 14:53:08',0);
INSERT INTO `p_loginlog` VALUES ('b6844b417b3e4803b336fe47e7fb9bf0',2275,'管理员','0:0:0:0:0:0:0:1','2016-04-28 10:18:19',0);
INSERT INTO `p_loginlog` VALUES ('b752c21d94e3429b83074e7fe1505413',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-09 16:20:22',0);
INSERT INTO `p_loginlog` VALUES ('b7748a57cf56476daa8bacea3b5ad4ca',2275,'管理员','0:0:0:0:0:0:0:1','2016-04-28 09:04:30',0);
INSERT INTO `p_loginlog` VALUES ('b77528fa90fb4bae888b64c270758740',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-18 14:17:58',0);
INSERT INTO `p_loginlog` VALUES ('b77cae137b7c467790b38c60f40de532',2275,'管理员','127.0.0.1','2016-05-10 17:43:52',0);
INSERT INTO `p_loginlog` VALUES ('b7bd04c87b90479882f7f6dd12e4f92b',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-10 11:35:40',0);
INSERT INTO `p_loginlog` VALUES ('b7f76d891d9d4c39869cb9d48b7c9bac',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-24 11:21:55',0);
INSERT INTO `p_loginlog` VALUES ('b8128c09b7184100a938a27357556bdb',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-20 15:44:19',0);
INSERT INTO `p_loginlog` VALUES ('b8182a8fbc1246fb8c3fc17cc0971eae',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-09 14:51:53',0);
INSERT INTO `p_loginlog` VALUES ('b840e943995348e1b3d66037f37dc581',2275,'管理员','127.0.0.1','2016-05-20 11:23:59',0);
INSERT INTO `p_loginlog` VALUES ('b84382385e334abc873002433e59847f',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-27 14:00:50',0);
INSERT INTO `p_loginlog` VALUES ('b86def3a0efd40eea57e467e183954dd',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-19 15:19:25',0);
INSERT INTO `p_loginlog` VALUES ('b8f0871904ad4188b12f0a9fc041292f',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-19 09:42:12',0);
INSERT INTO `p_loginlog` VALUES ('b9c08738503143cf94525fc6ce799550',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-12 16:38:12',0);
INSERT INTO `p_loginlog` VALUES ('ba208912594d492ca8b3c11127af8171',2275,'管理员','127.0.0.1','2016-05-12 15:06:40',0);
INSERT INTO `p_loginlog` VALUES ('ba23a1ca334649f598094fdae7a58923',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-09 09:34:46',0);
INSERT INTO `p_loginlog` VALUES ('ba3c2ca55b944f6ea99295331ed72312',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-26 11:44:14',0);
INSERT INTO `p_loginlog` VALUES ('bab9a0f113f24713aba6ce5d0ad24ac2',2275,'管理员','127.0.0.1','2016-05-26 14:29:47',0);
INSERT INTO `p_loginlog` VALUES ('baf6298fb01f4e86aceca7dadd8bd609',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-17 10:59:10',0);
INSERT INTO `p_loginlog` VALUES ('bb0b89be0dd6499a9940442fd57e7617',2275,'管理员','127.0.0.1','2016-05-09 16:47:56',0);
INSERT INTO `p_loginlog` VALUES ('bb3760f1542d4b9ebe4c8544a158e5c9',2275,'管理员','127.0.0.1','2016-05-19 09:12:59',0);
INSERT INTO `p_loginlog` VALUES ('bbb27e9ee3214ce98222fe5b6b68205d',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-27 14:46:19',0);
INSERT INTO `p_loginlog` VALUES ('bbb8c84624264b2f806de033e7303dbd',2275,'管理员','127.0.0.1','2016-05-12 10:09:58',0);
INSERT INTO `p_loginlog` VALUES ('bc3e95738c4a41908030d163f9de5a0e',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-13 13:45:40',0);
INSERT INTO `p_loginlog` VALUES ('bc48da928e7c41ff8a0e38344d6e9152',2275,'管理员','127.0.0.1','2016-05-10 17:47:50',0);
INSERT INTO `p_loginlog` VALUES ('bc4b5a2429884090bd7a73ec97906bb2',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-27 09:39:57',0);
INSERT INTO `p_loginlog` VALUES ('bc5d408867cc49ea9395ba70f3be754f',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-16 13:40:28',0);
INSERT INTO `p_loginlog` VALUES ('bc84a974a8c44b4aae14c94edf2fffad',2275,'管理员','127.0.0.1','2016-05-23 15:08:18',0);
INSERT INTO `p_loginlog` VALUES ('bccc05c5043c4d5a8ad4102718c122d4',2275,'管理员','127.0.0.1','2016-05-09 14:14:34',0);
INSERT INTO `p_loginlog` VALUES ('bd0c97970c8242169a0a3491b2074b4b',2275,'管理员','127.0.0.1','2016-05-26 15:29:59',0);
INSERT INTO `p_loginlog` VALUES ('bd77f554ead741f5b764f02b0df37a3d',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-13 13:57:54',0);
INSERT INTO `p_loginlog` VALUES ('bd913169623047e989de067e226e9a1d',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-09 11:02:42',0);
INSERT INTO `p_loginlog` VALUES ('bdcc3ef63a814175a25198e524c61347',2275,'管理员','127.0.0.1','2016-05-19 14:40:34',0);
INSERT INTO `p_loginlog` VALUES ('bdd323e55333447a8f6e39153aefc3cd',2275,'管理员','127.0.0.1','2016-05-17 11:04:16',0);
INSERT INTO `p_loginlog` VALUES ('bdf35ace63574a9899c57c2bc8840983',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-09 16:15:53',0);
INSERT INTO `p_loginlog` VALUES ('be0c5545e68d4ab9a2c0ae58ad88b6a2',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-20 13:59:59',0);
INSERT INTO `p_loginlog` VALUES ('be4825a8524f4abda6c9f9c4b2c9d11b',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-09 09:34:17',0);
INSERT INTO `p_loginlog` VALUES ('be5bef44317a4614aebde22d796ea447',0,'管理员','0:0:0:0:0:0:0:1','2016-05-06 13:53:42',0);
INSERT INTO `p_loginlog` VALUES ('be678551256245b18cf3ee3619e7e88f',2275,'管理员','0:0:0:0:0:0:0:1','2016-04-27 14:41:15',0);
INSERT INTO `p_loginlog` VALUES ('be7188898efc4d52baf6982afd26f01f',2275,'管理员','127.0.0.1','2016-05-09 14:36:11',0);
INSERT INTO `p_loginlog` VALUES ('be784ebcb83c42f0bda060c32197ce62',0,'管理员','0:0:0:0:0:0:0:1','2016-04-27 13:19:32',0);
INSERT INTO `p_loginlog` VALUES ('bea6e409792d4426865c08aeee83fd8e',2275,'管理员','127.0.0.1','2016-05-12 09:43:40',0);
INSERT INTO `p_loginlog` VALUES ('bef3da50d7c54b0eace9b4d38e2f742f',2275,'管理员','127.0.0.1','2016-05-16 16:59:56',0);
INSERT INTO `p_loginlog` VALUES ('bef673fd69df448bb4ad37f76fd2b401',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-10 14:22:18',0);
INSERT INTO `p_loginlog` VALUES ('c035c96a6a5046a8bb6c9ccb248d7404',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-17 15:41:53',0);
INSERT INTO `p_loginlog` VALUES ('c087a8ec4427426ba093ef1dd79ddb37',2275,'管理员','127.0.0.1','2016-05-12 14:45:16',0);
INSERT INTO `p_loginlog` VALUES ('c0aa5de395e2435fa982ad93eef4e26c',2275,'管理员','127.0.0.1','2016-05-10 10:54:32',0);
INSERT INTO `p_loginlog` VALUES ('c20c6d7625914c84be760d3f55609cca',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-17 15:44:36',0);
INSERT INTO `p_loginlog` VALUES ('c21c13fa4da04028bfb2690cfab6fbc8',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-09 10:51:36',0);
INSERT INTO `p_loginlog` VALUES ('c30d8e4bf16d4b7e9008e003e2225208',2275,'管理员','127.0.0.1','2016-05-09 16:09:07',0);
INSERT INTO `p_loginlog` VALUES ('c31386538ce34684be090009c16064dc',0,'管理员','127.0.0.1','2016-04-27 13:46:17',0);
INSERT INTO `p_loginlog` VALUES ('c33e3e0993454a9cbdfe1a824321e572',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-23 15:44:53',0);
INSERT INTO `p_loginlog` VALUES ('c36458588bea4848827ef132ad813047',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-27 09:55:28',0);
INSERT INTO `p_loginlog` VALUES ('c376d3637d2a45c79a7f86fbd1a77170',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-10 09:48:49',0);
INSERT INTO `p_loginlog` VALUES ('c3aa8cf69f554c3292d7303c6cb6f27a',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-17 13:53:32',0);
INSERT INTO `p_loginlog` VALUES ('c3b16d75745644829b0673379a3b4643',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-17 09:10:25',0);
INSERT INTO `p_loginlog` VALUES ('c3cf24a13a5e4aecb4fc88927a3e7d20',2275,'管理员','0:0:0:0:0:0:0:1','2016-04-27 15:26:27',0);
INSERT INTO `p_loginlog` VALUES ('c3f0281f970541b194d7482fbd3bb890',2275,'管理员','127.0.0.1','2016-05-19 17:19:19',0);
INSERT INTO `p_loginlog` VALUES ('c3fc62d795504f55b5f58c185a44803e',2275,'管理员','127.0.0.1','2016-05-13 17:58:23',0);
INSERT INTO `p_loginlog` VALUES ('c421fb85b5f24780bf318af675079f0e',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-27 11:34:25',0);
INSERT INTO `p_loginlog` VALUES ('c50b10a1ba374e75babc539854660f20',2275,'管理员','127.0.0.1','2016-05-09 11:43:54',0);
INSERT INTO `p_loginlog` VALUES ('c5ad685047074fc9b600a9cbd51f141e',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-10 13:51:14',0);
INSERT INTO `p_loginlog` VALUES ('c624ecc1bd6f474aa53c848d06a1d6f3',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-18 09:37:28',0);
INSERT INTO `p_loginlog` VALUES ('c68cfcf7d51745a7845da30033b46acb',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-24 15:50:41',0);
INSERT INTO `p_loginlog` VALUES ('c694a94c68d349f1a04ae47abdb8155c',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-26 10:28:22',0);
INSERT INTO `p_loginlog` VALUES ('c6c744ea635d4b9796c2cd432994cb21',2275,'管理员','127.0.0.1','2016-05-11 17:54:49',0);
INSERT INTO `p_loginlog` VALUES ('c6e7c44483314d7d8c0498fb39dcc134',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-23 14:05:00',0);
INSERT INTO `p_loginlog` VALUES ('c73d0d44abd2404facfd4ea2e9bff9f5',2275,'管理员','127.0.0.1','2016-05-12 09:58:53',0);
INSERT INTO `p_loginlog` VALUES ('c7566bcf2b3c4c28b0a74cd8f1e7a733',2275,'管理员','127.0.0.1','2016-05-26 15:01:27',0);
INSERT INTO `p_loginlog` VALUES ('c777aa3f9d144e968f2c78fe1c98bd37',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-19 09:41:50',0);
INSERT INTO `p_loginlog` VALUES ('c7849a76c15a495a9356f445bbceba2a',2275,'管理员','127.0.0.1','2016-05-27 17:34:19',0);
INSERT INTO `p_loginlog` VALUES ('c7d49dd7e76b4d7d9be591e6891bdc2c',2275,'管理员','127.0.0.1','2016-05-09 11:51:19',0);
INSERT INTO `p_loginlog` VALUES ('c7ed27943bc34de48483b858019bb2e2',2275,'管理员','127.0.0.1','2016-05-24 16:16:20',0);
INSERT INTO `p_loginlog` VALUES ('c8572156721b4731baec51ff38237cfb',0,'管理员','0:0:0:0:0:0:0:1','2016-05-16 13:40:21',0);
INSERT INTO `p_loginlog` VALUES ('c96ac93ba67147e0b08e6fab13641e0f',2275,'管理员','127.0.0.1','2016-05-17 16:12:50',0);
INSERT INTO `p_loginlog` VALUES ('c9c669d4efa04c1db436d1e43b722916',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-04 09:21:47',0);
INSERT INTO `p_loginlog` VALUES ('c9cb7844485846d49f43f073bbf35bd8',2275,'管理员','127.0.0.1','2016-05-17 16:21:05',0);
INSERT INTO `p_loginlog` VALUES ('ca7f86a1a8354334be497e89d5c6e542',2275,'管理员','127.0.0.1','2016-05-19 14:39:18',0);
INSERT INTO `p_loginlog` VALUES ('cac9e41b9d8649dd96968c36de5de338',0,'管理员','0:0:0:0:0:0:0:1','2016-05-12 17:25:33',0);
INSERT INTO `p_loginlog` VALUES ('cb8999938f9946df9431e6c7b6cd3554',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-12 11:22:24',0);
INSERT INTO `p_loginlog` VALUES ('cba9fe9dcc594697a0d0a9c42d0d271f',2275,'管理员','127.0.0.1','2016-05-09 11:39:10',0);
INSERT INTO `p_loginlog` VALUES ('cbc792a14f024073ac0a709ba8549a0a',2275,'管理员','127.0.0.1','2016-05-23 14:21:37',0);
INSERT INTO `p_loginlog` VALUES ('cc2c78feed4148f38f3e15a79230eb26',2275,'管理员','127.0.0.1','2016-05-16 16:09:11',0);
INSERT INTO `p_loginlog` VALUES ('cc6500eca8144cab8d77835957d62419',2275,'管理员','127.0.0.1','2016-05-09 11:43:22',0);
INSERT INTO `p_loginlog` VALUES ('ccbac31160de496d8b608a8c1242f5fc',2275,'管理员','127.0.0.1','2016-05-20 16:33:42',0);
INSERT INTO `p_loginlog` VALUES ('ccbcf05782bc4c71bdeb85ff319fb5b8',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-26 15:55:12',0);
INSERT INTO `p_loginlog` VALUES ('cd67c948305a4d3fbab3856f2d73fcf0',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-18 14:50:39',0);
INSERT INTO `p_loginlog` VALUES ('cd904507965c44e58c89a286de9d4dbd',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-09 13:35:50',0);
INSERT INTO `p_loginlog` VALUES ('cdb660e2841941d2bffe489f7ad46338',2275,'管理员','127.0.0.1','2016-05-18 09:34:26',0);
INSERT INTO `p_loginlog` VALUES ('ce49cdae7c984cfcb5764a9efe0fb2f1',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-11 10:48:57',0);
INSERT INTO `p_loginlog` VALUES ('ceb1bc5709a14879baa48f4e99c1e721',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-09 10:46:54',0);
INSERT INTO `p_loginlog` VALUES ('cec5a25a49ad45b382b386ac5382f249',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-09 10:52:18',0);
INSERT INTO `p_loginlog` VALUES ('cec65e58ce0b493e9954b4776326a7fc',2275,'管理员','127.0.0.1','2016-05-20 16:44:06',0);
INSERT INTO `p_loginlog` VALUES ('cece2491c53d4646b38cf7430b1a19f4',2275,'管理员','127.0.0.1','2016-05-11 16:35:03',0);
INSERT INTO `p_loginlog` VALUES ('cf0a95f01d9f41c08472bd11a43c4009',2275,'管理员','127.0.0.1','2016-05-19 17:17:39',0);
INSERT INTO `p_loginlog` VALUES ('cf13550c24794627bbf88e325f3ea2ee',2275,'管理员','127.0.0.1','2016-05-24 16:22:02',0);
INSERT INTO `p_loginlog` VALUES ('cf17249efcf44a56878d5442a41f1f2a',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-09 09:45:10',0);
INSERT INTO `p_loginlog` VALUES ('cf1d0dcaf7b246859f57d93bd60bdf1e',2275,'管理员','127.0.0.1','2016-05-11 16:34:21',0);
INSERT INTO `p_loginlog` VALUES ('cf41c11b84314c65bcea179139ec0cfb',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-19 10:36:21',0);
INSERT INTO `p_loginlog` VALUES ('cff71e2c04854436a23e89fbf26d2203',2275,'管理员','127.0.0.1','2016-05-09 11:52:24',0);
INSERT INTO `p_loginlog` VALUES ('cff8d0e38a5948df9e30e7ec2f0bc5ef',2275,'管理员','127.0.0.1','2016-05-25 10:27:09',0);
INSERT INTO `p_loginlog` VALUES ('cffaa24f536a4f13b6edb21175df2fec',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-09 13:45:19',0);
INSERT INTO `p_loginlog` VALUES ('d01ef818ab3c458dbec7d1a2c3206c7a',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-12 17:43:24',0);
INSERT INTO `p_loginlog` VALUES ('d0736c129544486abc0a15d6e1683256',2275,'管理员','127.0.0.1','2016-05-26 14:23:23',0);
INSERT INTO `p_loginlog` VALUES ('d17f920a30a94374aac6d76a3a39342b',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-09 16:43:24',0);
INSERT INTO `p_loginlog` VALUES ('d1b2a54696bb4325a115f745ffdcf33e',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-16 15:13:49',0);
INSERT INTO `p_loginlog` VALUES ('d1dda5c5e4c146fcbe1dc80b0b17fe9d',2275,'管理员','127.0.0.1','2016-05-16 11:10:34',0);
INSERT INTO `p_loginlog` VALUES ('d2155c33f5134a80928e50c18744ab87',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-06 14:12:06',0);
INSERT INTO `p_loginlog` VALUES ('d247ffce4fc94a9e91b2330ca5e9e926',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-27 09:49:21',0);
INSERT INTO `p_loginlog` VALUES ('d24f793ea31d4121b99e1917c94152c9',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-19 09:52:23',0);
INSERT INTO `p_loginlog` VALUES ('d372659d31fc4b71b73176150c3db5bd',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-12 15:06:15',0);
INSERT INTO `p_loginlog` VALUES ('d3cbbea114bb4d16811f2c8ab32a93d9',2275,'管理员','127.0.0.1','2016-05-16 11:19:15',0);
INSERT INTO `p_loginlog` VALUES ('d4568f2d6bf04fde8212b10da0f8b299',2275,'管理员','127.0.0.1','2016-05-26 15:37:59',0);
INSERT INTO `p_loginlog` VALUES ('d573a2b008064e0cbf0f65c082d281a2',2275,'管理员','127.0.0.1','2016-05-10 16:59:06',0);
INSERT INTO `p_loginlog` VALUES ('d589eab9541140088e429e900b72fa68',2275,'管理员','127.0.0.1','2016-05-27 13:20:57',0);
INSERT INTO `p_loginlog` VALUES ('d58d4c2ea6a84af2aa41e2ace1685106',2275,'管理员','127.0.0.1','2016-05-13 17:42:01',0);
INSERT INTO `p_loginlog` VALUES ('d59bc3c5db5c4d6ea41724753f00ef90',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-09 17:24:07',0);
INSERT INTO `p_loginlog` VALUES ('d6169893513e4082bd0d33b35cdd78d8',2275,'管理员','127.0.0.1','2016-05-19 13:40:00',0);
INSERT INTO `p_loginlog` VALUES ('d6796db4e9f14448b2311bfe07a0e85c',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-27 09:53:33',0);
INSERT INTO `p_loginlog` VALUES ('d709e59968db44ba8b39b49798822ebe',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-26 14:59:58',0);
INSERT INTO `p_loginlog` VALUES ('d734e3fef5914e7a9cb3d92fb9534e22',2275,'管理员','127.0.0.1','2016-05-27 14:41:43',0);
INSERT INTO `p_loginlog` VALUES ('d777694fafcb4943ab5b094cab4868d8',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-26 17:54:49',0);
INSERT INTO `p_loginlog` VALUES ('d78e8706911b4b48a90a256e32f7f244',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-10 09:03:08',0);
INSERT INTO `p_loginlog` VALUES ('d79bfaeb53f44b9cabc44396be4a32a5',2275,'管理员','127.0.0.1','2016-05-25 09:24:21',0);
INSERT INTO `p_loginlog` VALUES ('d84a9ca8351948268b40f7543e6fae97',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-26 10:14:09',0);
INSERT INTO `p_loginlog` VALUES ('d850b0319b2e44da9259cfc1f0fe9354',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-17 09:56:07',0);
INSERT INTO `p_loginlog` VALUES ('d855b3a159f54d98b3460fbdfc0e2a51',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-27 09:15:03',0);
INSERT INTO `p_loginlog` VALUES ('d87eae01c7dd45beb290fcf71b11158b',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-16 15:20:44',0);
INSERT INTO `p_loginlog` VALUES ('d99f227512d14143a6371c2cc8268cf0',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-12 11:03:44',0);
INSERT INTO `p_loginlog` VALUES ('d9d680b617ab445a86b9589c386af7a4',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-09 09:31:43',0);
INSERT INTO `p_loginlog` VALUES ('d9ee6918f50b4ef5964de1160a907112',2275,'管理员','127.0.0.1','2016-05-10 16:59:54',0);
INSERT INTO `p_loginlog` VALUES ('da13c7f8281141e8b3053d795239a95a',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-04 17:03:56',0);
INSERT INTO `p_loginlog` VALUES ('da20f7762bdc417981659f17418e949b',0,'管理员','127.0.0.1','2016-04-26 14:48:13',0);
INSERT INTO `p_loginlog` VALUES ('da41508790a543728c098a43ae9ca06d',2275,'管理员','0:0:0:0:0:0:0:1','2016-04-27 10:25:41',0);
INSERT INTO `p_loginlog` VALUES ('da78769fb88d47319462fb7117ba0f52',2275,'管理员','127.0.0.1','2016-05-23 15:15:17',0);
INSERT INTO `p_loginlog` VALUES ('da84be078ca54962a39c0446b4707879',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-30 09:47:35',0);
INSERT INTO `p_loginlog` VALUES ('db342e57c96e48769d2e7a0a9f29b185',0,'管理员','127.0.0.1','2016-05-03 16:53:24',0);
INSERT INTO `p_loginlog` VALUES ('dbe7c7a878fa41c389b4eb545cc481ea',2275,'管理员','127.0.0.1','2016-05-12 17:23:39',0);
INSERT INTO `p_loginlog` VALUES ('dbfa7d41ba49440586da40100cfe35ef',0,'管理员','0:0:0:0:0:0:0:1','2016-05-16 13:07:57',0);
INSERT INTO `p_loginlog` VALUES ('dc09180dfbe84aeba2d218d5a0cf7dff',2275,'管理员','127.0.0.1','2016-05-24 16:18:09',0);
INSERT INTO `p_loginlog` VALUES ('dc98e92412e44e509c96073484f2636b',2275,'管理员','127.0.0.1','2016-05-19 10:16:43',0);
INSERT INTO `p_loginlog` VALUES ('dcb3ebf6681e4f6ea2faa13b4d33dedf',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-26 17:32:43',0);
INSERT INTO `p_loginlog` VALUES ('dcb9d10c0a1142309fc979d27da96649',2275,'管理员','0:0:0:0:0:0:0:1','2016-04-27 10:26:57',0);
INSERT INTO `p_loginlog` VALUES ('dce836e1656b45e9b38c9552af0d2c66',2275,'管理员','127.0.0.1','2016-05-13 17:55:10',0);
INSERT INTO `p_loginlog` VALUES ('dd2657e89ac3462bb2ec137dfc08ccfd',2275,'管理员','127.0.0.1','2016-05-12 14:43:52',0);
INSERT INTO `p_loginlog` VALUES ('dd67930cd0744993895feb88fe773937',0,'管理员','127.0.0.1','2016-05-09 11:39:59',0);
INSERT INTO `p_loginlog` VALUES ('dd76e78e6126451bb765fe074f8efec5',2275,'管理员','127.0.0.1','2016-05-09 14:14:25',0);
INSERT INTO `p_loginlog` VALUES ('dd82868201284561b5316f49944c8765',2275,'管理员','127.0.0.1','2016-05-11 09:15:35',0);
INSERT INTO `p_loginlog` VALUES ('dd87d073ccb942b6ba4e9fca39722eb5',2275,'管理员','127.0.0.1','2016-05-18 11:48:33',0);
INSERT INTO `p_loginlog` VALUES ('dddf6f1489e84c838e0e3e5d98c57d87',2275,'管理员','127.0.0.1','2016-04-26 15:25:45',0);
INSERT INTO `p_loginlog` VALUES ('ded4a42ee18d4443b022fcd3501ce142',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-16 17:31:04',0);
INSERT INTO `p_loginlog` VALUES ('df381781e2a44297bcefa322f9314bc7',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-24 15:09:39',0);
INSERT INTO `p_loginlog` VALUES ('df3a496f25ac4d6d84da5668ab89c59d',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-11 09:28:42',0);
INSERT INTO `p_loginlog` VALUES ('dfba9297372f471794d510c94df7c06f',2275,'管理员','127.0.0.1','2016-05-12 09:28:59',0);
INSERT INTO `p_loginlog` VALUES ('dfd1e87e69294837b7fb3db7383e71d7',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-16 17:36:08',0);
INSERT INTO `p_loginlog` VALUES ('dfddbe25e97f42d38e5a96e93d9bc0c5',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-09 10:29:37',0);
INSERT INTO `p_loginlog` VALUES ('e02dc2ec2e7049128ec7689131a0e0ad',2275,'管理员','127.0.0.1','2016-05-23 09:05:23',0);
INSERT INTO `p_loginlog` VALUES ('e0df9996321c4758be3bc1d9baf2eae7',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-09 09:38:51',0);
INSERT INTO `p_loginlog` VALUES ('e0e5081e521b4160878f0d1a46d24d26',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-26 17:41:42',0);
INSERT INTO `p_loginlog` VALUES ('e11ee91fc3fd437991e0c14baa6d8071',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-27 13:53:51',0);
INSERT INTO `p_loginlog` VALUES ('e1216fe10455460e884d838ba30b4b52',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-27 10:10:27',0);
INSERT INTO `p_loginlog` VALUES ('e1241112826a4f5ba34a4957f31cf66f',0,'管理员','0:0:0:0:0:0:0:1','2016-04-27 14:54:07',0);
INSERT INTO `p_loginlog` VALUES ('e16ddf9d41774080b7a7149880f23466',0,'管理员','0:0:0:0:0:0:0:1','2016-04-26 16:19:33',0);
INSERT INTO `p_loginlog` VALUES ('e202dc0317ea4be792e0f014c144cb85',2275,'管理员','127.0.0.1','2016-05-19 15:29:06',0);
INSERT INTO `p_loginlog` VALUES ('e233864fe5e049feb8b9767b2b964174',2275,'管理员','0:0:0:0:0:0:0:1','2016-04-27 15:32:22',0);
INSERT INTO `p_loginlog` VALUES ('e279fad76c104303aece2fbded60c1b8',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-09 15:32:24',0);
INSERT INTO `p_loginlog` VALUES ('e28693d7a3354dfc9e7caabb2a08ce36',2275,'管理员','127.0.0.1','2016-05-12 15:16:54',0);
INSERT INTO `p_loginlog` VALUES ('e3fed2d23bff410591549ca72aa5fbd2',2275,'管理员','127.0.0.1','2016-05-18 10:05:27',0);
INSERT INTO `p_loginlog` VALUES ('e444dc229d1747778b9410e590a34085',2275,'管理员','127.0.0.1','2016-05-13 16:51:15',0);
INSERT INTO `p_loginlog` VALUES ('e45d483943d14cbdb85f6c1d04029461',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-12 09:08:59',0);
INSERT INTO `p_loginlog` VALUES ('e4b7d86cf22f48ab9781badfc83306e1',2275,'管理员','127.0.0.1','2016-05-26 09:12:56',0);
INSERT INTO `p_loginlog` VALUES ('e4b9761a4aa34e1c8defb70f278798f2',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-10 13:13:17',0);
INSERT INTO `p_loginlog` VALUES ('e4bf481e4e3249bc92e655de3eb4792a',2275,'管理员','127.0.0.1','2016-05-10 13:30:00',0);
INSERT INTO `p_loginlog` VALUES ('e4c9eb84e3964f2197f2341d4edb14d7',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-04 09:50:51',0);
INSERT INTO `p_loginlog` VALUES ('e50a09565b674baca505c44e70be4571',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-09 11:40:18',0);
INSERT INTO `p_loginlog` VALUES ('e63b49fdea2748b8bbef8ece73cf482a',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-09 10:13:44',0);
INSERT INTO `p_loginlog` VALUES ('e65ea1b81b884e76b2ba616a5ff71ea9',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-20 17:52:59',0);
INSERT INTO `p_loginlog` VALUES ('e6bd3a87d5ae4889b83150c275789585',2275,'管理员','127.0.0.1','2016-05-12 09:35:31',0);
INSERT INTO `p_loginlog` VALUES ('e6e89366516c4062bda2b9d80495d1e7',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-03 13:39:10',0);
INSERT INTO `p_loginlog` VALUES ('e71c54e0911f4e7494452593112b88f7',2275,'管理员','127.0.0.1','2016-05-16 16:14:00',0);
INSERT INTO `p_loginlog` VALUES ('e7df30c8d5d74ed8bb36135ab98c64e7',2275,'管理员','127.0.0.1','2016-05-19 15:24:23',0);
INSERT INTO `p_loginlog` VALUES ('e9a8e9e781b24baea96d89aa66119af4',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-12 10:59:16',0);
INSERT INTO `p_loginlog` VALUES ('e9e1d883901d4147a4ecad1f361f7267',2275,'管理员','127.0.0.1','2016-05-17 14:42:06',0);
INSERT INTO `p_loginlog` VALUES ('ea9dac0693a54e8280b5de712d982fce',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-23 14:07:34',0);
INSERT INTO `p_loginlog` VALUES ('eaece2c64c3d40639abfd4f5c96ab138',2275,'管理员','127.0.0.1','2016-05-19 10:34:13',0);
INSERT INTO `p_loginlog` VALUES ('eb2a81d480f64de196d942f0e7ec6b6a',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-23 15:46:07',0);
INSERT INTO `p_loginlog` VALUES ('eb2b16fe4dcc4677b16f7132f3812c40',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-12 09:20:35',0);
INSERT INTO `p_loginlog` VALUES ('eb443d8b41d84c9b99ca80edb2828ff0',2275,'管理员','127.0.0.1','2016-05-27 09:06:28',0);
INSERT INTO `p_loginlog` VALUES ('eb4694940c65472fa193247f4afb5e3c',0,'管理员','127.0.0.1','2016-04-29 09:44:06',0);
INSERT INTO `p_loginlog` VALUES ('ebd313fac5f341e2a209259c3506c168',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-04 15:41:53',0);
INSERT INTO `p_loginlog` VALUES ('ec95983a9cc3494b9037af98aed8647c',2275,'管理员','127.0.0.1','2016-05-26 15:22:21',0);
INSERT INTO `p_loginlog` VALUES ('ec9d83010ad54b2da37eba1210dda4bb',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-10 11:50:16',0);
INSERT INTO `p_loginlog` VALUES ('ed16a5767a9e4c52b4acc6a0922e289f',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-25 11:13:18',0);
INSERT INTO `p_loginlog` VALUES ('ed32f10144a84166af71c261b7ce0c4b',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-10 11:21:48',0);
INSERT INTO `p_loginlog` VALUES ('ed94f2ae86be4248874f03f6fbbc9d7f',2275,'管理员','127.0.0.1','2016-05-17 10:58:44',0);
INSERT INTO `p_loginlog` VALUES ('ee3f6766b7cc4c1f83d1da191e0b5573',2275,'管理员','127.0.0.1','2016-05-09 09:47:00',0);
INSERT INTO `p_loginlog` VALUES ('ee5a5721e96444449ec8e003e7498226',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-06 14:47:30',0);
INSERT INTO `p_loginlog` VALUES ('eea916bdbc63486ca1611c93bb50d212',2275,'管理员','127.0.0.1','2016-05-11 16:37:41',0);
INSERT INTO `p_loginlog` VALUES ('ef5236b8227a406bbeb13e1d241ef9c7',2275,'管理员','127.0.0.1','2016-05-22 18:02:03',0);
INSERT INTO `p_loginlog` VALUES ('ef6bfa03c7ba4a6bb76fa16b5b49c0e0',2275,'管理员','127.0.0.1','2016-05-09 11:50:11',0);
INSERT INTO `p_loginlog` VALUES ('f007893058f543f49bcb8b9318c85a04',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-04 10:28:28',0);
INSERT INTO `p_loginlog` VALUES ('f009eb15f863433d89f56bf7e62ef534',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-09 16:20:50',0);
INSERT INTO `p_loginlog` VALUES ('f0540f9cf827442f957fbf5203aa3efd',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-27 17:51:52',0);
INSERT INTO `p_loginlog` VALUES ('f0cf69d51b9845bd81335abdee9f00ea',2275,'管理员','127.0.0.1','2016-05-16 16:06:04',0);
INSERT INTO `p_loginlog` VALUES ('f107c61ae3a14c1d8134f9655a891e6c',2275,'管理员','127.0.0.1','2016-05-25 10:26:09',0);
INSERT INTO `p_loginlog` VALUES ('f1e62190d90e4c6eab2d14b023512dfa',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-12 14:59:44',0);
INSERT INTO `p_loginlog` VALUES ('f1e9f59144644e2497bf4d4af165631c',2275,'管理员','127.0.0.1','2016-05-17 11:06:05',0);
INSERT INTO `p_loginlog` VALUES ('f2e69933b0e84bff9bfba31759a66c8e',2275,'管理员','127.0.0.1','2016-05-11 17:48:22',0);
INSERT INTO `p_loginlog` VALUES ('f3cfa044ce1e45d390442ee9764ef525',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-27 09:53:57',0);
INSERT INTO `p_loginlog` VALUES ('f4e7682dfd2e4c20a69aef5d164d020e',2275,'管理员','127.0.0.1','2016-05-11 15:26:17',0);
INSERT INTO `p_loginlog` VALUES ('f4eaa3aa6c3444f0a4740f113b042c04',2275,'管理员','127.0.0.1','2016-05-11 11:01:58',0);
INSERT INTO `p_loginlog` VALUES ('f4f406ec5834401a94c12afaa1df99eb',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-27 09:54:19',0);
INSERT INTO `p_loginlog` VALUES ('f50158ffad9240858eefb3cb5055973b',2275,'管理员','127.0.0.1','2016-05-09 11:54:48',0);
INSERT INTO `p_loginlog` VALUES ('f52c80f5a2ad42aa965ee752a7ac7297',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-12 14:52:43',0);
INSERT INTO `p_loginlog` VALUES ('f553bef70e8f4afea794c7fbd2271561',2275,'管理员','127.0.0.1','2016-05-10 10:58:02',0);
INSERT INTO `p_loginlog` VALUES ('f56e5979906f42c6b83c24d71c9ec987',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-19 14:29:07',0);
INSERT INTO `p_loginlog` VALUES ('f6243a769bad4031954f079c3754b34d',2275,'管理员','127.0.0.1','2016-05-25 17:07:48',0);
INSERT INTO `p_loginlog` VALUES ('f6a94816670442bab76981eab2e57579',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-12 15:59:08',0);
INSERT INTO `p_loginlog` VALUES ('f6e81e46a70c439f86d3d8c2674fc751',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-20 13:58:10',0);
INSERT INTO `p_loginlog` VALUES ('f734bae91691415caf8b963f38200185',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-27 09:52:54',0);
INSERT INTO `p_loginlog` VALUES ('f7992f1fd7b24cea9ec60758b35f3a74',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-18 09:07:06',0);
INSERT INTO `p_loginlog` VALUES ('f7a6df6041b44028a98187f6986cf81a',2275,'管理员','127.0.0.1','2016-05-09 15:08:07',0);
INSERT INTO `p_loginlog` VALUES ('f80b8a0bcc55450bb2d0cb7794eb50b4',2275,'管理员','127.0.0.1','2016-05-11 14:58:48',0);
INSERT INTO `p_loginlog` VALUES ('f82a2bbc03634fff967a8561b61b5c32',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-16 09:10:37',0);
INSERT INTO `p_loginlog` VALUES ('f83258a91bbb459dbb69e41dbb50ad42',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-12 14:06:06',0);
INSERT INTO `p_loginlog` VALUES ('f8e96e7d8d8140669995e20cba5483a3',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-12 10:04:21',0);
INSERT INTO `p_loginlog` VALUES ('f93301d2f96e42a6bfbb1e68689cf4ed',2275,'管理员','127.0.0.1','2016-05-19 17:12:36',0);
INSERT INTO `p_loginlog` VALUES ('f9b42a1792d44f65a2e463505266f07b',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-24 11:27:08',0);
INSERT INTO `p_loginlog` VALUES ('fa0a0e8f226148e1bbb0eb50cdc1be5a',2275,'管理员','127.0.0.1','2016-05-24 10:54:15',0);
INSERT INTO `p_loginlog` VALUES ('fa705e0ca7204d8981474798dbd9085a',2275,'管理员','0:0:0:0:0:0:0:1','2016-04-27 10:22:41',0);
INSERT INTO `p_loginlog` VALUES ('fa7f27a1c47f4fe994eb394957e18575',2275,'管理员','127.0.0.1','2016-05-13 11:27:47',0);
INSERT INTO `p_loginlog` VALUES ('fa8c93bb9baa42389f9debf806faece7',2275,'管理员','127.0.0.1','2016-05-17 14:51:03',0);
INSERT INTO `p_loginlog` VALUES ('faa6fca39fa5491db45a67fb3cee1fac',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-10 13:48:38',0);
INSERT INTO `p_loginlog` VALUES ('fab44a458912437a9987bb4bf4329869',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-09 14:48:52',0);
INSERT INTO `p_loginlog` VALUES ('fb203724d3ab45f89e4254db144fd911',0,'管理员','127.0.0.1','2016-04-27 09:20:59',0);
INSERT INTO `p_loginlog` VALUES ('fb226c7077a2483b9582f63c1735e7af',2275,'管理员','127.0.0.1','2016-05-18 09:30:08',0);
INSERT INTO `p_loginlog` VALUES ('fb567bb185454b5a8ef90a1a58a02334',2275,'管理员','127.0.0.1','2016-05-09 16:23:13',0);
INSERT INTO `p_loginlog` VALUES ('fb9b43d8e94847e18505fe2282b2b869',2275,'管理员','0:0:0:0:0:0:0:1','2016-04-27 15:18:49',0);
INSERT INTO `p_loginlog` VALUES ('fba35e1f016b4eb988fc27d3fae133d4',2275,'管理员','0:0:0:0:0:0:0:1','2016-04-27 10:20:38',0);
INSERT INTO `p_loginlog` VALUES ('fbf4fbd2ef3d4e0bacdebee3ac9ab290',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-12 14:06:49',0);
INSERT INTO `p_loginlog` VALUES ('fc2843532a6545aa8996fe2b2d57fb85',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-13 10:04:38',0);
INSERT INTO `p_loginlog` VALUES ('fc55daae6a3c4a10bf81111552c19997',2275,'管理员','127.0.0.1','2016-05-22 11:15:35',0);
INSERT INTO `p_loginlog` VALUES ('fc93e481c27e4f4abcedcde45ef22161',2275,'管理员','127.0.0.1','2016-05-20 11:26:23',0);
INSERT INTO `p_loginlog` VALUES ('fcaf2367374b442e8b6e34a05d579168',2275,'管理员','127.0.0.1','2016-05-17 16:16:04',0);
INSERT INTO `p_loginlog` VALUES ('fcda7b0a549148a4b755408b4a61ba99',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-10 15:37:38',0);
INSERT INTO `p_loginlog` VALUES ('fcdc01badd884717a0af69794f88be09',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-26 10:26:24',0);
INSERT INTO `p_loginlog` VALUES ('fcffbbeabda848bf888dedf266c1d554',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-10 14:24:29',0);
INSERT INTO `p_loginlog` VALUES ('fd21e0a674524aacb852a37e2827b9c4',0,'管理员','0:0:0:0:0:0:0:1','2016-04-26 16:51:05',0);
INSERT INTO `p_loginlog` VALUES ('fd9395bbbc78416c9b63e02d6f674287',0,'管理员','127.0.0.1','2016-04-27 13:23:20',0);
INSERT INTO `p_loginlog` VALUES ('fd991e8462b84228b779028a69899021',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-11 14:53:15',0);
INSERT INTO `p_loginlog` VALUES ('fda0bb161c5743b19c80c7bb2219d052',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-26 14:55:14',0);
INSERT INTO `p_loginlog` VALUES ('fdbd44bf05914bd4b6b53275df5cda5b',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-27 14:46:35',0);
INSERT INTO `p_loginlog` VALUES ('fdcbf7a2e5ab4f44ae2bc03231b6c408',2275,'管理员','127.0.0.1','2016-05-09 14:19:29',0);
INSERT INTO `p_loginlog` VALUES ('fe5e77235bb84748be1287798dda5a18',2275,'管理员','127.0.0.1','2016-05-09 11:40:22',0);
INSERT INTO `p_loginlog` VALUES ('feae2818f5e840a1a488ddf80af56ed5',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-12 14:59:40',0);
INSERT INTO `p_loginlog` VALUES ('fecb432635c7482e92de9d5646ee50b6',2275,'管理员','127.0.0.1','2016-05-13 16:11:31',0);
INSERT INTO `p_loginlog` VALUES ('ff046be2c57349bd93e002e67eeef7e1',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-10 14:59:52',0);
INSERT INTO `p_loginlog` VALUES ('ff19ffdb49184e9f9d78e23367601a3c',2275,'管理员','127.0.0.1','2016-05-10 17:20:12',0);
INSERT INTO `p_loginlog` VALUES ('ff284e5ba27e4a4ca38f67bc0c397ef5',2275,'管理员','127.0.0.1','2016-05-10 13:29:15',0);
INSERT INTO `p_loginlog` VALUES ('ff3ad3553b9e4a48b8223ba93783ecfb',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-16 17:41:10',0);
INSERT INTO `p_loginlog` VALUES ('ff4ffdb0fcee457a9682f9df9826dc31',2275,'管理员','0:0:0:0:0:0:0:1','2016-05-16 15:12:52',0);
INSERT INTO `p_loginlog` VALUES ('ffd4571f84dd424faedc277255b82242',0,'管理员','127.0.0.1','2016-04-25 18:54:31',0);
/*!40000 ALTER TABLE `p_loginlog` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table p_menu
#

DROP TABLE IF EXISTS `p_menu`;
CREATE TABLE `p_menu` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VERSION` int(11) DEFAULT NULL,
  `NAME` varchar(50) NOT NULL COMMENT '名称',
  `DISPLAYREF` varchar(50) DEFAULT NULL COMMENT '显示名称',
  `DESCRIPTION` varchar(200) DEFAULT NULL COMMENT '描述',
  `PARENTMENU` int(11) DEFAULT NULL COMMENT '父菜单ID',
  `ORDERNUM` int(11) DEFAULT NULL COMMENT '排序',
  `MENUTYPE` int(11) DEFAULT NULL COMMENT '类型',
  `CREATOR` int(11) DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='一级菜单表';

#
# Dumping data for table p_menu
#

LOCK TABLES `p_menu` WRITE;
/*!40000 ALTER TABLE `p_menu` DISABLE KEYS */;
INSERT INTO `p_menu` VALUES (1,0,'enumeration','枚举管理','枚举管理',0,9999,NULL,0);
INSERT INTO `p_menu` VALUES (2,0,'menu','菜单管理','菜单管理',0,9998,NULL,0);
INSERT INTO `p_menu` VALUES (3,0,'systemmanage','系统管理','系统管理',0,9997,NULL,0);
INSERT INTO `p_menu` VALUES (4,0,'flowchart','流程图管理','流程图管理',0,9996,NULL,0);
INSERT INTO `p_menu` VALUES (6,0,'setsecret','定密管理','定密管理',0,9981,NULL,0);
INSERT INTO `p_menu` VALUES (7,0,'securityasset','涉密资产管理','涉密资产管理',0,9980,NULL,0);
INSERT INTO `p_menu` VALUES (8,0,'personsecret','涉密人员管理','涉密人员管理',0,9982,NULL,0);
INSERT INTO `p_menu` VALUES (9,0,'carrysecret','涉密载体管理','涉密载体管理',0,9983,NULL,0);
INSERT INTO `p_menu` VALUES (10,0,'secretkey','保密要害部门部位管理','保密要害部门部位管理',0,9984,NULL,0);
INSERT INTO `p_menu` VALUES (11,0,'informationsystem','计算机和信息系统管理','计算机和信息系统管理',0,9985,NULL,0);
INSERT INTO `p_menu` VALUES (12,0,'reportmanage','宣传报道管理','宣传报道管理',0,9986,NULL,0);
/*!40000 ALTER TABLE `p_menu` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table p_menulink
#

DROP TABLE IF EXISTS `p_menulink`;
CREATE TABLE `p_menulink` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) DEFAULT NULL COMMENT '名称',
  `VERSION` int(11) DEFAULT NULL,
  `LINKURL` varchar(200) NOT NULL COMMENT '链接地址',
  `DISPLAYREF` varchar(50) NOT NULL COMMENT '显示名称',
  `DESCRIPTION` varchar(200) DEFAULT NULL COMMENT '述描',
  `AUTHORITY` int(11) DEFAULT NULL,
  `ORDERNUM` int(11) DEFAULT NULL COMMENT '排序',
  `MENU` int(11) DEFAULT NULL COMMENT '菜单ID',
  `MENULINKTYPE` int(11) DEFAULT NULL COMMENT '类型   1：菜单 2：按钮 3:功能标签',
  `MENULINKCSS` varchar(200) DEFAULT NULL,
  `CREATOR` int(11) DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2286 DEFAULT CHARSET=utf8 COMMENT='二级菜单表';

#
# Dumping data for table p_menulink
#

LOCK TABLES `p_menulink` WRITE;
/*!40000 ALTER TABLE `p_menulink` DISABLE KEYS */;
INSERT INTO `p_menulink` VALUES (1,'枚举实体',0,'/admin/enumerationList.action','枚举管理','枚举实体',NULL,1,1,1,NULL,0);
INSERT INTO `p_menulink` VALUES (2,'枚举值',0,'/admin/enumerationValueList.action','枚举值管理','枚举值',NULL,2,1,1,NULL,0);
INSERT INTO `p_menulink` VALUES (3,'菜单项',0,'/admin/menuList.action','一级菜单管理','一级菜单管理',NULL,1,2,1,NULL,0);
INSERT INTO `p_menulink` VALUES (4,'菜单项',0,'/admin/menuLinkList.action','二级菜单管理','二级菜单管理',NULL,2,2,1,NULL,0);
INSERT INTO `p_menulink` VALUES (5,'角色',0,'/admin/roleList.action','角色设置','角色',NULL,1,3,1,NULL,0);
INSERT INTO `p_menulink` VALUES (6,'用户',0,'/user/managerUserList.action','用户管理','在线人员管理',NULL,2,3,1,NULL,NULL);
INSERT INTO `p_menulink` VALUES (7,'systemmanage',0,'/statistical/logList.action','日志管理','',NULL,3,3,1,NULL,NULL);
INSERT INTO `p_menulink` VALUES (8,'Orgmanager',0,'/org/orgList.action','机构管理','机构管理',NULL,4,3,1,NULL,NULL);
INSERT INTO `p_menulink` VALUES (9,'create角色',0,'role_add()','新建角色','新建角色',NULL,1,5,2,NULL,0);
INSERT INTO `p_menulink` VALUES (10,'edit角色',0,'role_edit(:id)','编辑','编辑角色',NULL,1,5,3,NULL,0);
INSERT INTO `p_menulink` VALUES (11,'del角色',0,'role_Delete(:id)','删除','删除角色',NULL,2,5,3,NULL,0);
INSERT INTO `p_menulink` VALUES (13,'添加管理员',0,'obj_add()','添加管理员','添加管理员',NULL,1,6,2,NULL,0);
INSERT INTO `p_menulink` VALUES (14,'开通帐号',0,'edit_user(1,\'开通\')','开通帐号','开通管理员',NULL,2,6,2,NULL,0);
INSERT INTO `p_menulink` VALUES (15,'停用管理员',0,'edit_user(2,\'停用\')','停用管理员','停用管理员',NULL,3,6,2,NULL,0);
INSERT INTO `p_menulink` VALUES (16,'重置密码',0,'edit_user(3,\'重置密码\')','重置密码','重置密码',NULL,4,6,2,NULL,0);
INSERT INTO `p_menulink` VALUES (17,'edit用户',0,'user_edit(:id)','编辑','编辑用户',NULL,1,6,3,NULL,0);
INSERT INTO `p_menulink` VALUES (18,'del用户',0,'user_Delete(:id)','删除','删除用户',NULL,2,6,3,NULL,0);
INSERT INTO `p_menulink` VALUES (19,'create机构',0,'org_add(:id)','添加机构','添加机构',NULL,1,8,2,NULL,0);
INSERT INTO `p_menulink` VALUES (20,'edit机构',0,'org_edit(:id,:pid)','编辑','编辑机构',NULL,1,8,3,NULL,0);
INSERT INTO `p_menulink` VALUES (21,'del机构',0,'checkDataBeforeDelete(:id,:fpid)','删除','删除机构',NULL,2,8,3,NULL,0);
INSERT INTO `p_menulink` VALUES (24,'del选中机构',0,'deleteCheckedOrg(:type)','删除选中','删除选中机构',NULL,2,8,2,NULL,0);
INSERT INTO `p_menulink` VALUES (25,'del选中角色',0,'deleteCheckedRole(:type)','删除选中','删除选中角色',NULL,2,5,2,NULL,0);
INSERT INTO `p_menulink` VALUES (26,'del选中用户',0,'deleteObj()','删除选中','删除选中用户',NULL,5,6,2,NULL,0);
INSERT INTO `p_menulink` VALUES (27,'create枚举实体',0,'addNew()','新建','新建枚举实体',NULL,1,1,2,NULL,0);
INSERT INTO `p_menulink` VALUES (28,'edit枚举实体',0,'enumerationEdit(:id)','编辑','编辑枚举实体',NULL,1,1,3,NULL,0);
INSERT INTO `p_menulink` VALUES (29,'del枚举实体',0,'enumeration_Delete(:id)','删除','删除枚举实体',NULL,1,1,3,NULL,0);
INSERT INTO `p_menulink` VALUES (30,'del选中枚举实体',0,'deleteChecked(:type)','删除选中','删除选中枚举实体',NULL,2,1,2,NULL,0);
INSERT INTO `p_menulink` VALUES (32,'create枚举值',0,'addValueNew()','新建','新建枚举值',NULL,1,2,2,NULL,0);
INSERT INTO `p_menulink` VALUES (33,'edit枚举值',0,'enumerationValueEdit(:id)','编辑','编辑枚举值',NULL,1,2,3,NULL,0);
INSERT INTO `p_menulink` VALUES (34,'del枚举值',0,'enumerationValue_Delete(:id)','删除','删除枚举值',NULL,1,2,3,NULL,0);
INSERT INTO `p_menulink` VALUES (35,'del选中枚举值',0,'deleteChecked(:type)','删除选中','删除选中枚举值',NULL,2,2,2,NULL,0);
INSERT INTO `p_menulink` VALUES (36,'create菜单项',0,'menu_add()','新建','新建一级菜单',NULL,1,3,2,NULL,0);
INSERT INTO `p_menulink` VALUES (37,'edit菜单项',0,'menu_edit(:id)','编辑','编辑一级菜单',NULL,1,3,3,NULL,0);
INSERT INTO `p_menulink` VALUES (38,'del菜单项',0,'menu_Delete(:id)','删除','删除一级菜单',NULL,2,3,3,NULL,0);
INSERT INTO `p_menulink` VALUES (39,'del选中菜单项',0,'deleteChecked(:type)','删除选中','删除选中一级菜单',NULL,2,3,2,NULL,0);
INSERT INTO `p_menulink` VALUES (40,'create二级菜单项',0,'menuLink_add()','新建','新建二级菜单',NULL,1,4,2,NULL,0);
INSERT INTO `p_menulink` VALUES (41,'edit二级菜单项',0,'menuLink_edit(:id)','编辑','编辑二级菜单',NULL,1,4,3,NULL,0);
INSERT INTO `p_menulink` VALUES (42,'del二级菜单项',0,'menuLink_Delete(:id)','删除','删除二级菜单',NULL,2,4,3,NULL,0);
INSERT INTO `p_menulink` VALUES (43,'del选中二级菜单项',0,'deleteCheckedMenu()','删除选中','删除选中二级菜单',NULL,2,4,2,NULL,0);
INSERT INTO `p_menulink` VALUES (1000,'流程图',0,'/flowchart/findFlowchartList.action','流程图','流程图',NULL,1,4,1,NULL,0);
INSERT INTO `p_menulink` VALUES (1001,'createFlowchart',0,'flowchart_add()','新建','新建',NULL,1,1000,2,NULL,0);
INSERT INTO `p_menulink` VALUES (1002,'editFlowchart',0,'flowchart_edit(:id)','编辑','编辑',NULL,1,1000,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1003,'drawFlowchart',0,'flowchart_draw(:id)','设计流程','设计流程',NULL,2,1000,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1004,'deleteFlowchart',0,'flowchart_del(:id)','删除','删除',NULL,4,1000,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1005,'configFlowchart',0,'flowchart_config(:id)','配置流程','配置',NULL,3,1000,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1006,'deleteAllFlowchart',0,'flowchart_del()','删除选中','删除选中',NULL,2,1000,2,NULL,0);
INSERT INTO `p_menulink` VALUES (1010,'表单信息',0,'/table/findTablesList.action','表单信息','表单信息',NULL,1,4,1,NULL,0);
INSERT INTO `p_menulink` VALUES (1100,'国家秘密事项的变更或解密审批',0,'/statesecrets/statesecretsList.action','国家秘密事项的变更或解密审批','国家秘密事项的变更或解密审批',NULL,1,6,1,NULL,0);
INSERT INTO `p_menulink` VALUES (1101,'新增',0,'add_statesecrets()','新增','新增',NULL,1,1100,2,NULL,0);
INSERT INTO `p_menulink` VALUES (1102,'编辑',0,'edit_statesecrets(:id)','编辑','编辑',NULL,2,1100,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1103,'查看',0,'statesecrets_info(:id)','查看','查看',NULL,1,1100,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1104,'删除',0,'delstatesecrets(:id)','删除','删除',NULL,3,1100,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1105,'删除选中',0,'delAll_statesecrets()','删除选中','删除选中',NULL,2,1100,2,NULL,0);
INSERT INTO `p_menulink` VALUES (1106,'审批',0,'exam_statesecrets(:id)','审批','审批',NULL,4,1100,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1200,'涉密人员密级审定',0,'/examclassification/classifiedList.action','涉密人员密级审定','涉密人员密级审定',NULL,1,8,1,NULL,0);
INSERT INTO `p_menulink` VALUES (1201,'新增',0,'add_classified()','新增','新增',NULL,1,1200,2,NULL,0);
INSERT INTO `p_menulink` VALUES (1202,'编辑',0,'edit_classified(:id)','编辑','编辑',NULL,2,1200,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1203,'查看',0,'classified_info(:id)','查看','查看',NULL,1,1200,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1204,'审定',0,'approve_classified(:id)','审定','审定',NULL,3,1200,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1205,'删除',0,'delclassified(:id)','删除','删除',NULL,4,1200,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1206,'删除选中',0,'delAll_classified()','删除选中','删除选中',NULL,2,1200,2,NULL,0);
INSERT INTO `p_menulink` VALUES (1300,'新进涉密岗位人员岗前保密教育培训记录',0,'/securityedu/securityeduList.action','新进涉密岗位人员岗前保密教育培训记录','新进涉密岗位人员岗前保密教育培训记录',NULL,2,8,1,NULL,0);
INSERT INTO `p_menulink` VALUES (1301,'新增',0,'add_securityedu()','新增','新增',NULL,1,1300,2,NULL,0);
INSERT INTO `p_menulink` VALUES (1302,'查看',0,'securityedu_info(:id)','查看','查看',NULL,1,1300,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1303,'编辑',0,'edit_securityedu(:id)','编辑','编辑',NULL,2,1300,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1304,'删除',0,'del_securityedu(:id)','删除','删除',NULL,3,1300,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1305,'删除选中',0,'delAll_securityedu()','删除选中','删除选中',NULL,2,1300,2,NULL,0);
INSERT INTO `p_menulink` VALUES (1400,'员工安全保密承诺书',0,'/commitment/commitmentList.action','员工安全保密承诺书','员工安全保密承诺书',NULL,3,8,1,NULL,0);
INSERT INTO `p_menulink` VALUES (1401,'新增',0,'add_commitment()','新增','新增',NULL,1,1400,2,NULL,0);
INSERT INTO `p_menulink` VALUES (1402,'查看',0,'commitment_info(:id)','查看','查看',NULL,1,1400,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1403,'编辑',0,'edit_commitment(:id)','编辑','编辑',NULL,2,1400,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1404,'删除',0,'del_commitment(:id)','删除','删除',NULL,3,1400,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1405,'删除选中',0,'delAll_commitment()','删除选中','删除选中',NULL,2,1400,2,NULL,0);
INSERT INTO `p_menulink` VALUES (1500,'离岗保密承诺书',0,'/leavepromise/leavepromiseList.action','离岗保密承诺书','离岗保密承诺书',NULL,4,8,1,NULL,0);
INSERT INTO `p_menulink` VALUES (1501,'新增',0,'add_leavepromise()','新增','新增',NULL,1,1500,2,NULL,0);
INSERT INTO `p_menulink` VALUES (1502,'查看',0,'leavepromise_info(:id)','查看','查看',NULL,1,1500,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1503,'编辑',0,'edit_leavepromise(:id)','编辑','编辑',NULL,2,1500,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1504,'删除',0,'del_leavepromise(:id)','删除','删除',NULL,3,1500,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1505,'删除选中',0,'delAll_leavepromise()','删除选中','删除选中',NULL,2,1500,2,NULL,0);
INSERT INTO `p_menulink` VALUES (1600,'涉密信息打印输出审批登记',0,'/classifiedprint/classifiedprintList.action','涉密信息打印输出审批登记','涉密信息打印输出审批登记',NULL,1,9,1,NULL,0);
INSERT INTO `p_menulink` VALUES (1601,'新增',0,'add_classifiedprint()','新增','新增',NULL,1,1600,2,NULL,0);
INSERT INTO `p_menulink` VALUES (1602,'查看',0,'classifiedprint_info(:id)','查看','查看',NULL,1,1600,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1603,'编辑',0,'edit_classifiedprint(:id)','编辑','编辑',NULL,2,1600,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1604,'删除',0,'del_classifiedprint(:id)','删除','删除',NULL,3,1600,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1605,'删除选中',0,'delAll_classifiedprint()','删除选中','删除选中',NULL,2,1600,2,NULL,0);
INSERT INTO `p_menulink` VALUES (1620,'涉密岗位聘用人员保密资格审查',0,'/equalification/equalificationList.action','涉密岗位聘用人员保密资格审查','涉密岗位聘用人员保密资格审查',NULL,5,8,1,NULL,0);
INSERT INTO `p_menulink` VALUES (1621,'新增',0,'add_equalification()','新增','新增',NULL,1,1620,2,NULL,0);
INSERT INTO `p_menulink` VALUES (1622,'查看',0,'equalification_info(:id)','查看','查看',NULL,1,1620,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1623,'编辑',0,'edit_equalification(:id)','编辑','编辑',NULL,2,1620,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1624,'删除',0,'del_equalification(:id)','删除','删除',NULL,3,1620,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1625,'删除选中',0,'delAll_equalification()','删除选中','删除选中',NULL,2,1620,2,NULL,0);
INSERT INTO `p_menulink` VALUES (1630,'外来人员进入保密要害部门、部位申请',0,'/applykeypart/applykeypartList.action','外来人员进入保密要害部门、部位申请','外来人员进入保密要害部门、部位申请',NULL,3,10,1,NULL,0);
INSERT INTO `p_menulink` VALUES (1631,'新增',0,'add_applykeypart()','新增','新增',NULL,1,1630,2,NULL,0);
INSERT INTO `p_menulink` VALUES (1632,'查看',0,'applykeypart_info(:id)','查看','查看',NULL,1,1630,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1633,'编辑',0,'edit_applykeypart(:id)','编辑','编辑',NULL,2,1630,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1634,'删除',0,'del_applykeypart(:id)','删除','删除',NULL,3,1630,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1635,'删除选中',0,'delAll_applykeypart()','删除选中','删除选中',NULL,2,1630,2,NULL,0);
INSERT INTO `p_menulink` VALUES (1700,'本部涉密载体外出复制审批单',0,'/classifiedcopy/classifiedcopyList.action','本部涉密载体外出复制审批单','本部涉密载体外出复制审批单',NULL,2,9,1,NULL,0);
INSERT INTO `p_menulink` VALUES (1701,'新增',0,'add_classifiedcopy()','新增','新增',NULL,1,1700,2,NULL,0);
INSERT INTO `p_menulink` VALUES (1702,'查看',0,'classifiedcopy_info(:id)','查看','查看',NULL,1,1700,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1703,'编辑',0,'edit_classifiedcopy(:id)','编辑','编辑',NULL,2,1700,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1704,'删除',0,'del_classifiedcopy(:id)','删除','删除',NULL,4,1700,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1705,'删除选中',0,'delAll_classifiedcopy()','删除选中','删除选中',NULL,2,1700,2,NULL,0);
INSERT INTO `p_menulink` VALUES (1706,'审批',0,'exam_classifiedcopy(:id)','审批','审批',NULL,3,1700,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1800,'本部送外复制涉密载体监督检查记录',0,'/classifiedrecord/classifiedrecordList.action','本部送外复制涉密载体监督检查记录','本部送外复制涉密载体监督检查记录',NULL,3,9,1,NULL,0);
INSERT INTO `p_menulink` VALUES (1801,'新增',0,'add_classifiedrecord()','新增','新增',NULL,1,1800,2,NULL,0);
INSERT INTO `p_menulink` VALUES (1802,'查看',0,'classifiedrecord_info(:id)','查看','查看',NULL,1,1800,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1803,'编辑',0,'edit_classifiedrecord(:id)','编辑','编辑',NULL,2,1800,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1804,'删除',0,'del_classifiedrecord(:id)','删除','删除',NULL,3,1800,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1805,'删除选中',0,'delAll_classifiedrecord()','删除选中','删除选中',NULL,2,1800,2,NULL,0);
INSERT INTO `p_menulink` VALUES (1810,'上国际互联网计算机保密责任书',0,'/secretonline/secretonlineList.action','上国际互联网计算机保密责任书','上国际互联网计算机保密责任书',NULL,5,11,1,NULL,0);
INSERT INTO `p_menulink` VALUES (1811,'新增',0,'add_secretonline()','新增','新增',NULL,1,1810,2,NULL,0);
INSERT INTO `p_menulink` VALUES (1812,'查看',0,'secretonline_info(:id)','查看','查看',NULL,1,1810,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1813,'编辑',0,'edit_secretonline(:id)','编辑','编辑',NULL,2,1810,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1814,'删除',0,'del_secretonline(:id)','删除','删除',NULL,3,1810,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1815,'删除选中',0,'delAll_secretonline()','删除选中','删除选中',NULL,2,1810,2,NULL,0);
INSERT INTO `p_menulink` VALUES (1820,'国际互联网计算机注销审批',0,'/cancelinternet/cancelinternetList.action','国际互联网计算机注销审批','国际互联网计算机注销审批',NULL,6,11,1,NULL,0);
INSERT INTO `p_menulink` VALUES (1821,'新增',0,'add_cancelinternet()','新增','新增',NULL,1,1820,2,NULL,0);
INSERT INTO `p_menulink` VALUES (1822,'查看',0,'cancelinternet_info(:id)','查看','查看',NULL,1,1820,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1823,'编辑',0,'edit_cancelinternet(:id)','编辑','编辑',NULL,2,1820,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1824,'删除',0,'del_cancelinternet(:id)','删除','删除',NULL,3,1820,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1825,'删除选中',0,'delAll_cancelinternet()','删除选中','删除选中',NULL,2,1820,2,NULL,0);
INSERT INTO `p_menulink` VALUES (1830,'保密审查审批登记',0,'/secexamregist/secexamregistList.action','保密审查审批登记','保密审查审批登记',NULL,7,11,1,NULL,0);
INSERT INTO `p_menulink` VALUES (1831,'新增',0,'add_secexamregist()','新增','新增',NULL,1,1830,2,NULL,0);
INSERT INTO `p_menulink` VALUES (1832,'查看',0,'secexamregist_info(:id)','查看','查看',NULL,1,1830,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1833,'编辑',0,'edit_secexamregist(:id)','编辑','编辑',NULL,2,1830,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1834,'删除',0,'del_secexamregist(:id)','删除','删除',NULL,3,1830,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1835,'删除选中',0,'delAll_secexamregist()','删除选中','删除选中',NULL,2,1830,2,NULL,0);
INSERT INTO `p_menulink` VALUES (1840,'保密协议书',0,'/conagreement/conagreementList.action','保密协议书','保密协议书',NULL,8,11,1,NULL,0);
INSERT INTO `p_menulink` VALUES (1841,'新增',0,'add_conagreement()','新增','新增',NULL,1,1840,2,NULL,0);
INSERT INTO `p_menulink` VALUES (1842,'查看',0,'conagreement_info(:id)','查看','查看',NULL,1,1840,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1843,'编辑',0,'edit_conagreement(:id)','编辑','编辑',NULL,2,1840,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1844,'删除',0,'del_conagreement(:id)','删除','删除',NULL,3,1840,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1845,'删除选中',0,'delAll_conagreement()','删除选中','删除选中',NULL,2,1840,2,NULL,0);
INSERT INTO `p_menulink` VALUES (1850,'国际互联网计算机变更审批',0,'/changeinternet/changeinternetList.action','国际互联网计算机变更审批','国际互联网计算机变更审批',NULL,9,11,1,NULL,0);
INSERT INTO `p_menulink` VALUES (1851,'新增',0,'add_changeinternet()','新增','新增',NULL,1,1850,2,NULL,0);
INSERT INTO `p_menulink` VALUES (1852,'查看',0,'changeinternet_info(:id)','查看','查看',NULL,1,1850,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1853,'编辑',0,'edit_changeinternet(:id)','编辑','编辑',NULL,2,1850,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1854,'删除',0,'del_changeinternet(:id)','删除','删除',NULL,3,1850,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1855,'删除选中',0,'delAll_changeinternet()','删除选中','删除选中',NULL,2,1850,2,NULL,0);
INSERT INTO `p_menulink` VALUES (1860,'存储介质变更审批',0,'/changemedium/changemediumList.action','存储介质变更审批','存储介质变更审批',NULL,4,9,1,NULL,0);
INSERT INTO `p_menulink` VALUES (1861,'新增',0,'add_changemedium()','新增','新增',NULL,1,1860,2,NULL,0);
INSERT INTO `p_menulink` VALUES (1862,'查看',0,'changemedium_info(:id)','查看','查看',NULL,1,1860,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1863,'编辑',0,'edit_changemedium(:id)','编辑','编辑',NULL,2,1860,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1864,'删除',0,'del_changemedium(:id)','删除','删除',NULL,3,1860,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1865,'删除选中',0,'delAll_changemedium()','删除选中','删除选中',NULL,2,1860,2,NULL,0);
INSERT INTO `p_menulink` VALUES (1870,'来访人员登记簿（样本）',0,'/vregist/vregistList.action','来访人员登记簿（样本）','来访人员登记簿（样本）',NULL,10,11,1,NULL,0);
INSERT INTO `p_menulink` VALUES (1871,'新增',0,'add_vregist()','新增','新增',NULL,1,1870,2,NULL,0);
INSERT INTO `p_menulink` VALUES (1872,'查看',0,'vregist_info(:id)','查看','查看',NULL,1,1870,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1873,'编辑',0,'edit_vregist(:id)','编辑','编辑',NULL,2,1870,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1874,'删除',0,'delVregist(:id)','删除','删除',NULL,3,1870,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1875,'删除选中',0,'delAll_vregist()','删除选中','删除选中',NULL,2,1870,2,NULL,0);
INSERT INTO `p_menulink` VALUES (1880,'本部涉密载体销毁审批',0,'/classifieddestroy/classifieddestroyList.action','本部涉密载体销毁审批','本部涉密载体销毁审批',NULL,11,11,1,NULL,0);
INSERT INTO `p_menulink` VALUES (1881,'新增',0,'add_classifieddestroy()','新增','新增',NULL,1,1880,2,NULL,0);
INSERT INTO `p_menulink` VALUES (1882,'查看',0,'classifieddestroy_info(:id)','查看','查看',NULL,1,1880,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1883,'编辑',0,'edit_classifieddestroy(:id)','编辑','编辑',NULL,2,1880,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1884,'删除',0,'del_classifieddestroy(:id)','删除','删除',NULL,3,1880,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1885,'删除选中',0,'delAll_classifieddestroy()','删除选中','删除选中',NULL,2,1880,2,NULL,0);
INSERT INTO `p_menulink` VALUES (1890,'季度保密补贴考核发放',0,'/quartersubsidies/quartersubsidiesList.action','季度保密补贴考核发放','季度保密补贴考核发放',NULL,5,9,1,NULL,0);
INSERT INTO `p_menulink` VALUES (1891,'新增',0,'add_quartersubsidies()','新增','新增',NULL,1,1890,2,NULL,0);
INSERT INTO `p_menulink` VALUES (1892,'查看',0,'quartersubsidies_info(:id)','查看','查看',NULL,1,1890,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1893,'编辑',0,'edit_quartersubsidies(:id)','编辑','编辑',NULL,2,1890,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1894,'删除',0,'delquartersubsidies(:id)','删除','删除',NULL,3,1890,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1895,'删除选中',0,'delAll_quartersubsidies()','删除选中','删除选中',NULL,2,1890,2,NULL,0);
INSERT INTO `p_menulink` VALUES (1900,'部门或个人涉密载体台账',0,'/classifiedtz/classifiedtzList.action','部门或个人涉密载体台账','部门或个人涉密载体台账',NULL,4,9,1,NULL,0);
INSERT INTO `p_menulink` VALUES (1901,'新增',0,'add_classifiedtz()','新增','新增',NULL,1,1900,2,NULL,0);
INSERT INTO `p_menulink` VALUES (1902,'查看',0,'classifiedtz_info(:id)','查看','查看',NULL,1,1900,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1903,'编辑',0,'edit_classifiedtz(:id)','编辑','编辑',NULL,2,1900,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1904,'删除',0,'del_classifiedtz(:id)','删除','删除',NULL,3,1900,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1905,'删除选中',0,'delAll_classifiedtz()','删除选中','删除选中',NULL,2,1900,2,NULL,0);
INSERT INTO `p_menulink` VALUES (1910,'保密要害部门、部位审定',0,'/keypartexam/keypartexamList.action','保密要害部门、部位审定','保密要害部门、部位审定',NULL,1,10,1,NULL,0);
INSERT INTO `p_menulink` VALUES (1911,'新增',0,'add_keypartexam()','新增','新增',NULL,1,1910,2,NULL,0);
INSERT INTO `p_menulink` VALUES (1912,'查看',0,'keypartexam_info(:id)','查看','查看',NULL,1,1910,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1913,'编辑',0,'edit_keypartexam(:id)','编辑','编辑',NULL,2,1910,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1914,'删除',0,'del_keypartexam(:id)','删除','删除',NULL,3,1910,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1915,'删除选中',0,'delAll_keypartexam()','删除选中','删除选中',NULL,2,1910,2,NULL,0);
INSERT INTO `p_menulink` VALUES (1920,'保密要害部门、部位撤销',0,'/keypartundo/keypartundoList.action','保密要害部门、部位撤销','保密要害部门、部位撤销',NULL,2,10,1,NULL,0);
INSERT INTO `p_menulink` VALUES (1921,'新增',0,'add_keypartexam()','新增','新增',NULL,1,1920,2,NULL,0);
INSERT INTO `p_menulink` VALUES (1922,'查看',0,'keypartundo_info(:id)','查看','查看',NULL,1,1920,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1923,'编辑',0,'edit_keypartundo(:id)','编辑','编辑',NULL,2,1920,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1924,'删除',0,'del_keypartundo(:id)','删除','删除',NULL,3,1920,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1925,'删除选中',0,'delAll_keypartundo()','删除选中','删除选中',NULL,2,1920,2,NULL,0);
INSERT INTO `p_menulink` VALUES (1960,'部门存储介质借用登记',0,'/borrowmedium/borrowmediumList.action','部门存储介质借用登记','部门存储介质借用登记',NULL,1,11,1,NULL,0);
INSERT INTO `p_menulink` VALUES (1961,'新增',0,'add_borrowmedium()','新增','新增',NULL,1,1960,2,NULL,0);
INSERT INTO `p_menulink` VALUES (1962,'查看',0,'borrowmedium_info(:id)','查看','查看',NULL,1,1960,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1963,'编辑',0,'edit_borrowmedium(:id)','编辑','编辑',NULL,2,1960,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1964,'删除',0,'del_borrowmedium(:id)','删除','删除',NULL,3,1960,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1965,'删除选中',0,'delAll_borrowmedium()','删除选中','删除选中',NULL,2,1960,2,NULL,0);
INSERT INTO `p_menulink` VALUES (1970,'专用存储介质借用审批',0,'/smediumborrow/smediumborrowList.action','专用存储介质借用审批','专用存储介质借用审批',NULL,2,11,1,NULL,0);
INSERT INTO `p_menulink` VALUES (1971,'新增',0,'add_smediumborrow()','新增','新增',NULL,1,1970,2,NULL,0);
INSERT INTO `p_menulink` VALUES (1972,'查看',0,'smediumborrow_info(:id)','查看','查看',NULL,1,1970,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1973,'编辑',0,'edit_smediumborrow(:id)','编辑','编辑',NULL,2,1970,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1974,'删除',0,'del_smediumborrow(:id)','删除','删除',NULL,3,1970,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1975,'删除选中',0,'delAll_smediumborrow()','删除选中','删除选中',NULL,2,1970,2,NULL,0);
INSERT INTO `p_menulink` VALUES (1980,'本部存储介质携带外出审批',0,'/carrypartmedium/carrypartmediumList.action','本部存储介质携带外出审批','本部存储介质携带外出审批',NULL,3,11,1,NULL,0);
INSERT INTO `p_menulink` VALUES (1981,'新增',0,'add_carrypartmedium()','新增','新增',NULL,1,1980,2,NULL,0);
INSERT INTO `p_menulink` VALUES (1982,'查看',0,'carrypartmedium_info(:id)','查看','查看',NULL,1,1980,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1983,'编辑',0,'edit_carrypartmedium(:id)','编辑','编辑',NULL,2,1980,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1984,'删除',0,'del_carrypartmedium(:id)','删除','删除',NULL,3,1980,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1985,'删除选中',0,'delAll_carrypartmedium()','删除选中','删除选中',NULL,2,1980,2,NULL,0);
INSERT INTO `p_menulink` VALUES (1990,'计算机国际联网申报审批',0,'/internetdeclear/internetdeclearList.action','计算机国际联网申报审批','计算机国际联网申报审批',NULL,4,11,1,NULL,0);
INSERT INTO `p_menulink` VALUES (1991,'新增',0,'add_internetdeclear()','新增','新增',NULL,1,1990,2,NULL,0);
INSERT INTO `p_menulink` VALUES (1992,'查看',0,'internetdeclear_info(:id)','查看','查看',NULL,1,1990,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1993,'编辑',0,'edit_internetdeclear(:id)','编辑','编辑',NULL,2,1990,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1994,'删除',0,'del_internetdeclear(:id)','删除','删除',NULL,3,1990,3,NULL,0);
INSERT INTO `p_menulink` VALUES (1995,'删除选中',0,'delAll_internetdeclear()','删除选中','删除选中',NULL,2,1990,2,NULL,0);
INSERT INTO `p_menulink` VALUES (2000,'视频会议系统使用申请',0,'/videomeeting/videoMeetingList.action','视频会议系统使用申请','视频会议系统使用申请',NULL,3,7,1,NULL,0);
INSERT INTO `p_menulink` VALUES (2001,'新增',0,'add_videoMeeting()','新增','新增',NULL,1,2000,2,NULL,0);
INSERT INTO `p_menulink` VALUES (2002,'删除选中',0,'delAll_videoMeeting()','删除选中','删除选中',NULL,2,2000,2,NULL,0);
INSERT INTO `p_menulink` VALUES (2003,'删除',0,'del_videoMeeting(:id)','删除','删除',NULL,2,2000,3,NULL,0);
INSERT INTO `p_menulink` VALUES (2004,'查看',0,'info_videoMeeting(:id)','查看','查看',NULL,1,2000,3,NULL,0);
INSERT INTO `p_menulink` VALUES (2005,'编辑',0,'edit_videoMeeting(:id)','编辑','编辑',NULL,1,2000,3,NULL,0);
INSERT INTO `p_menulink` VALUES (2010,'系统失泄密记录',0,'/telltalerecord/telltaleRecordList.action','系统失泄密记录','系统失泄密记录',NULL,44,7,1,NULL,0);
INSERT INTO `p_menulink` VALUES (2011,'新增',0,'add_telltaleRecord()','新增','新增',NULL,1,2010,2,NULL,0);
INSERT INTO `p_menulink` VALUES (2012,'删除选中',0,'delAll_telltaleRecord()','删除选中','删除选中',NULL,2,2010,2,NULL,0);
INSERT INTO `p_menulink` VALUES (2013,'删除',0,'del_telltaleRecord(:id)','删除','删除',NULL,2,2010,3,NULL,0);
INSERT INTO `p_menulink` VALUES (2014,'查看',0,'info_telltaleRecord(:id)','查看','查看',NULL,1,2010,3,NULL,0);
INSERT INTO `p_menulink` VALUES (2015,'编辑',0,'edit_telltaleRecord(:id)','编辑','编辑',NULL,1,2010,3,NULL,0);
INSERT INTO `p_menulink` VALUES (2020,'应用系统入网审批',0,'/appsysnetin/appSysNetInList.action','应用系统入网审批','应用系统入网审批',NULL,7,7,1,NULL,0);
INSERT INTO `p_menulink` VALUES (2021,'新增',0,'add_appSysNetIn()','新增','新增',NULL,1,2020,2,NULL,0);
INSERT INTO `p_menulink` VALUES (2022,'删除选中',0,'delAll_appSysNetIn()','删除选中','删除选中',NULL,2,2020,2,NULL,0);
INSERT INTO `p_menulink` VALUES (2023,'删除',0,'del_appSysNetIn(:id)','删除','删除',NULL,2,2020,3,NULL,0);
INSERT INTO `p_menulink` VALUES (2024,'查看',0,'info_appSysNetIn(:id)','查看','查看',NULL,1,2020,3,NULL,0);
INSERT INTO `p_menulink` VALUES (2025,'编辑',0,'edit_appSysNetIn(:id)','编辑','编辑',NULL,1,2020,3,NULL,0);
INSERT INTO `p_menulink` VALUES (2030,'OA系统组织结构变更',0,'/oasysalter/oaSysAlterList.action','OA系统组织结构变更','OA系统组织结构变更',NULL,8,7,1,NULL,0);
INSERT INTO `p_menulink` VALUES (2031,'新增',0,'add_oaSysAlter()','新增','新增',NULL,1,2030,2,NULL,0);
INSERT INTO `p_menulink` VALUES (2032,'删除选中',0,'delAll_oaSysAlter()','删除选中','删除选中',NULL,2,2030,2,NULL,0);
INSERT INTO `p_menulink` VALUES (2033,'删除',0,'del_oaSysAlter(:id)','删除','删除',NULL,2,2030,3,NULL,0);
INSERT INTO `p_menulink` VALUES (2034,'查看',0,'info_oaSysAlter(:id)','查看','查看',NULL,1,2030,3,NULL,0);
INSERT INTO `p_menulink` VALUES (2035,'编辑',0,'edit_oaSysAlter(:id)','编辑','编辑',NULL,1,2030,3,NULL,0);
INSERT INTO `p_menulink` VALUES (2040,'系统配置变更审批',0,'/sysconfigalter/sysConfigAlterList.action','系统配置变更审批','系统配置变更审批',NULL,5,7,1,NULL,0);
INSERT INTO `p_menulink` VALUES (2041,'新增',0,'add_sysConfigAlter()','新增','新增',NULL,1,2040,2,NULL,0);
INSERT INTO `p_menulink` VALUES (2042,'删除选中',0,'delAll_sysConfigAlter()','删除选中','删除选中',NULL,2,2040,2,NULL,0);
INSERT INTO `p_menulink` VALUES (2043,'删除',0,'del_sysConfigAlter(:id)','删除','删除',NULL,2,2040,3,NULL,0);
INSERT INTO `p_menulink` VALUES (2044,'查看',0,'info_sysConfigAlter(:id)','查看','查看',NULL,1,2040,3,NULL,0);
INSERT INTO `p_menulink` VALUES (2045,'编辑',0,'edit_sysConfigAlter(:id)','编辑','编辑',NULL,1,2040,3,NULL,0);
INSERT INTO `p_menulink` VALUES (2050,'布线系统季度检查记录',0,'/wiresysrecord/wireSysRecordList.action','布线系统季度检查记录','布线系统季度检查记录',NULL,39,7,1,NULL,0);
INSERT INTO `p_menulink` VALUES (2051,'新增',0,'add_wireSysRecord()','新增','新增',NULL,1,2050,2,NULL,0);
INSERT INTO `p_menulink` VALUES (2052,'删除选中',0,'delAll_wireSysRecord()','删除选中','删除选中',NULL,2,2050,2,NULL,0);
INSERT INTO `p_menulink` VALUES (2053,'删除',0,'del_wireSysRecord(:id)','删除','删除',NULL,2,2050,3,NULL,0);
INSERT INTO `p_menulink` VALUES (2054,'查看',0,'info_wireSysRecord(:id)','查看','查看',NULL,1,2050,3,NULL,0);
INSERT INTO `p_menulink` VALUES (2055,'编辑',0,'edit_wireSysRecord(:id)','编辑','编辑',NULL,1,2050,3,NULL,0);
INSERT INTO `p_menulink` VALUES (2060,'配线间周检查记录',0,'/pantchrecord/pantchRecordList.action','配线间周检查记录','配线间周检查记录',NULL,40,7,1,NULL,0);
INSERT INTO `p_menulink` VALUES (2061,'新增',0,'add_pantchRecord()','新增','新增',NULL,1,2060,2,NULL,0);
INSERT INTO `p_menulink` VALUES (2062,'删除选中',0,'delAll_pantchRecord()','删除选中','删除选中',NULL,2,2060,2,NULL,0);
INSERT INTO `p_menulink` VALUES (2063,'删除',0,'del_pantchRecord(:id)','删除','删除',NULL,2,2060,3,NULL,0);
INSERT INTO `p_menulink` VALUES (2064,'查看',0,'info_pantchRecord(:id)','查看','查看',NULL,1,2060,3,NULL,0);
INSERT INTO `p_menulink` VALUES (2065,'编辑',0,'edit_pantchRecord(:id)','编辑','编辑',NULL,1,2060,3,NULL,0);
INSERT INTO `p_menulink` VALUES (2070,'年度设备购置需求',0,'/devicepurchase/devicePurchaseList.action','年度设备购置需求','年度设备购置需求',NULL,42,7,1,NULL,0);
INSERT INTO `p_menulink` VALUES (2071,'新增',0,'add_devicePurchase()','新增','新增',NULL,1,2070,2,NULL,0);
INSERT INTO `p_menulink` VALUES (2072,'删除选中',0,'delAll_devicePurchase()','删除选中','删除选中',NULL,2,2070,2,NULL,0);
INSERT INTO `p_menulink` VALUES (2073,'删除',0,'del_devicePurchase(:id)','删除','删除',NULL,2,2070,3,NULL,0);
INSERT INTO `p_menulink` VALUES (2074,'查看',0,'info_devicePurchase(:id)','查看','查看',NULL,1,2070,3,NULL,0);
INSERT INTO `p_menulink` VALUES (2075,'编辑',0,'edit_devicePurchase(:id)','编辑','编辑',NULL,1,2070,3,NULL,0);
INSERT INTO `p_menulink` VALUES (2080,'设备购置明细',0,'/deviceinfo/deviceInfoList.action','设备购置明细','设备购置明细',NULL,10,7,1,NULL,0);
INSERT INTO `p_menulink` VALUES (2081,'新增',0,'add_deviceInfo()','新增','新增',NULL,1,2080,2,NULL,0);
INSERT INTO `p_menulink` VALUES (2082,'删除选中',0,'delAll_deviceInfo()','删除选中','删除选中',NULL,2,2080,2,NULL,0);
INSERT INTO `p_menulink` VALUES (2083,'删除',0,'del_deviceInfo(:id)','删除','删除',NULL,2,2080,3,NULL,0);
INSERT INTO `p_menulink` VALUES (2084,'查看',0,'info_deviceInfo(:id)','查看','查看',NULL,1,2080,3,NULL,0);
INSERT INTO `p_menulink` VALUES (2090,'建立摆渡中心申请',0,'/ferrycentre/ferryCentreList.action','建立摆渡中心申请','建立摆渡中心申请',NULL,43,7,1,NULL,0);
INSERT INTO `p_menulink` VALUES (2091,'新增',0,'add_ferryCentre()','新增','新增',NULL,1,2090,2,NULL,0);
INSERT INTO `p_menulink` VALUES (2092,'删除选中',0,'delAll_ferryCentre()','删除选中','删除选中',NULL,2,2090,2,NULL,0);
INSERT INTO `p_menulink` VALUES (2093,'删除',0,'del_ferryCentre(:id)','删除','删除',NULL,2,2090,3,NULL,0);
INSERT INTO `p_menulink` VALUES (2094,'查看',0,'info_ferryCentre(:id)','查看','查看',NULL,1,2090,3,NULL,0);
INSERT INTO `p_menulink` VALUES (2095,'编辑',0,'edit_ferryCentre(:id)','编辑','编辑',NULL,1,2090,3,NULL,0);
INSERT INTO `p_menulink` VALUES (2100,'应用系统业务模块增加、删除、配置变更审批',0,'/appsysalter/appSysAlterList.action','应用系统业务模块增加、删除、配置变更审批','应用系统业务模块增加、删除、配置变更审批',NULL,6,7,1,NULL,0);
INSERT INTO `p_menulink` VALUES (2101,'新增',0,'add_appSysAlter()','新增','新增',NULL,1,2100,2,NULL,0);
INSERT INTO `p_menulink` VALUES (2102,'删除选中',0,'delAll_appSysAlter()','删除选中','删除选中',NULL,2,2100,2,NULL,0);
INSERT INTO `p_menulink` VALUES (2103,'删除',0,'del_appSysAlter(:id)','删除','删除',NULL,2,2100,3,NULL,0);
INSERT INTO `p_menulink` VALUES (2104,'查看',0,'info_appSysAlter(:id)','查看','查看',NULL,1,2100,3,NULL,0);
INSERT INTO `p_menulink` VALUES (2105,'编辑',0,'edit_appSysAlter(:id)','编辑','编辑',NULL,1,2100,3,NULL,0);
INSERT INTO `p_menulink` VALUES (2110,'设备接入/退出涉密信息系统审批',0,'/deviceiosys/deviceIoSysList.action','设备接入/退出涉密信息系统审批','设备接入/退出涉密信息系统审批',NULL,1,7,1,NULL,0);
INSERT INTO `p_menulink` VALUES (2111,'新增',0,'add_deviceIoSys()','新增','新增',NULL,1,2110,2,NULL,0);
INSERT INTO `p_menulink` VALUES (2112,'删除选中',0,'delAll_deviceIoSys()','删除选中','删除选中',NULL,2,2110,2,NULL,0);
INSERT INTO `p_menulink` VALUES (2113,'删除',0,'del_deviceIoSys(:id)','删除','删除',NULL,2,2110,3,NULL,0);
INSERT INTO `p_menulink` VALUES (2114,'查看',0,'info_deviceIoSys(:id)','查看','查看',NULL,1,2110,3,NULL,0);
INSERT INTO `p_menulink` VALUES (2115,'编辑',0,'edit_deviceIoSys(:id)','编辑','编辑',NULL,1,2110,3,NULL,0);
INSERT INTO `p_menulink` VALUES (2120,'非涉密便携式计算机携带外出审批',0,'/notsecretpcout/notSecretPcOutList.action','非涉密便携式计算机携带外出审批','非涉密便携式计算机携带外出审批',NULL,10,7,1,NULL,0);
INSERT INTO `p_menulink` VALUES (2121,'新增',0,'add_notSecretPcOut()','新增','新增',NULL,1,2120,2,NULL,0);
INSERT INTO `p_menulink` VALUES (2122,'删除选中',0,'delAll_notSecretPcOut()','删除选中','删除选中',NULL,2,2120,2,NULL,0);
INSERT INTO `p_menulink` VALUES (2123,'删除',0,'del_notSecretPcOut(:id)','删除','删除',NULL,2,2120,3,NULL,0);
INSERT INTO `p_menulink` VALUES (2124,'查看',0,'info_notSecretPcOut(:id)','查看','查看',NULL,1,2120,3,NULL,0);
INSERT INTO `p_menulink` VALUES (2125,'编辑',0,'edit_notSecretPcOut(:id)','编辑','编辑',NULL,1,2120,3,NULL,0);
INSERT INTO `p_menulink` VALUES (2130,'更换USBKEY申请',0,'/alterusbkey/alterUsbkeyList.action','更换USBKEY申请','更换USBKEY申请',NULL,11,7,1,NULL,0);
INSERT INTO `p_menulink` VALUES (2131,'新增',0,'add_alterUsbkey()','新增','新增',NULL,1,2130,2,NULL,0);
INSERT INTO `p_menulink` VALUES (2132,'删除选中',0,'delAll_alterUsbkey()','删除选中','删除选中',NULL,2,2130,2,NULL,0);
INSERT INTO `p_menulink` VALUES (2133,'删除',0,'del_alterUsbkey(:id)','删除','删除',NULL,2,2130,3,NULL,0);
INSERT INTO `p_menulink` VALUES (2134,'查看',0,'info_alterUsbkey(:id)','查看','查看',NULL,1,2130,3,NULL,0);
INSERT INTO `p_menulink` VALUES (2135,'编辑',0,'edit_alterUsbkey(:id)','编辑','编辑',NULL,1,2130,3,NULL,0);
INSERT INTO `p_menulink` VALUES (2140,'借用专供外出携带涉密便携式计算机审批',0,'/secretpcout/secretPcOutList.action','借用专供外出携带涉密便携式计算机审批','借用专供外出携带涉密便携式计算机审批',NULL,12,7,1,NULL,0);
INSERT INTO `p_menulink` VALUES (2141,'新增',0,'add_secretPcOut()','新增','新增',NULL,1,2140,2,NULL,0);
INSERT INTO `p_menulink` VALUES (2142,'删除选中',0,'delAll_secretPcOut()','删除选中','删除选中',NULL,2,2140,2,NULL,0);
INSERT INTO `p_menulink` VALUES (2143,'删除',0,'del_secretPcOut(:id)','删除','删除',NULL,2,2140,3,NULL,0);
INSERT INTO `p_menulink` VALUES (2144,'查看',0,'info_secretPcOut(:id)','查看','查看',NULL,1,2140,3,NULL,0);
INSERT INTO `p_menulink` VALUES (2145,'编辑',0,'edit_secretPcOut(:id)','编辑','编辑',NULL,1,2140,3,NULL,0);
INSERT INTO `p_menulink` VALUES (2150,'外来人员维修、送外维修审批',0,'/sendoutmaintain/sendOutMaintainList.action','外来人员维修、送外维修审批','外来人员维修、送外维修审批',NULL,38,7,1,NULL,0);
INSERT INTO `p_menulink` VALUES (2151,'新增',0,'add_sendOutMaintain()','新增','新增',NULL,1,2150,2,NULL,0);
INSERT INTO `p_menulink` VALUES (2152,'删除选中',0,'delAll_sendOutMaintain()','删除选中','删除选中',NULL,2,2150,2,NULL,0);
INSERT INTO `p_menulink` VALUES (2153,'删除',0,'del_sendOutMaintain(:id)','删除','删除',NULL,2,2150,3,NULL,0);
INSERT INTO `p_menulink` VALUES (2154,'查看',0,'info_sendOutMaintain(:id)','查看','查看',NULL,1,2150,3,NULL,0);
INSERT INTO `p_menulink` VALUES (2155,'编辑',0,'edit_sendOutMaintain(:id)','编辑','编辑',NULL,1,2150,3,NULL,0);
INSERT INTO `p_menulink` VALUES (2160,'开通/撤销互联网账号审批',0,'/internetaccount/internetAccountList.action','开通/撤销互联网账号审批','开通/撤销互联网账号审批',NULL,45,7,1,NULL,0);
INSERT INTO `p_menulink` VALUES (2161,'新增',0,'add_internetAccount()','新增','新增',NULL,1,2160,2,NULL,0);
INSERT INTO `p_menulink` VALUES (2162,'删除选中',0,'delAll_internetAccount()','删除选中','删除选中',NULL,2,2160,2,NULL,0);
INSERT INTO `p_menulink` VALUES (2163,'删除',0,'del_internetAccount(:id)','删除','删除',NULL,2,2160,3,NULL,0);
INSERT INTO `p_menulink` VALUES (2164,'查看',0,'info_internetAccount(:id)','查看','查看',NULL,1,2160,3,NULL,0);
INSERT INTO `p_menulink` VALUES (2165,'编辑',0,'edit_internetAccount(:id)','编辑','编辑',NULL,1,2160,3,NULL,0);
INSERT INTO `p_menulink` VALUES (2170,'互联网信息发布审批',0,'/informationpublish/informationPublishList.action','互联网信息发布审批','互联网信息发布审批',NULL,46,7,1,NULL,0);
INSERT INTO `p_menulink` VALUES (2171,'新增',0,'add_informationPublish()','新增','新增',NULL,1,2170,2,NULL,0);
INSERT INTO `p_menulink` VALUES (2172,'删除选中',0,'delAll_informationPublish()','删除选中','删除选中',NULL,2,2170,2,NULL,0);
INSERT INTO `p_menulink` VALUES (2173,'删除',0,'del_informationPublish(:id)','删除','删除',NULL,2,2170,3,NULL,0);
INSERT INTO `p_menulink` VALUES (2174,'查看',0,'info_informationPublish(:id)','查看','查看',NULL,1,2170,3,NULL,0);
INSERT INTO `p_menulink` VALUES (2175,'编辑',0,'edit_informationPublish(:id)','编辑','编辑',NULL,1,2170,3,NULL,0);
INSERT INTO `p_menulink` VALUES (2180,'外网邮箱开通、撤销申请审批',0,'/emailexamine/emailExamineList.action','外网邮箱开通、撤销申请审批','外网邮箱开通、撤销申请审批',NULL,47,7,1,NULL,0);
INSERT INTO `p_menulink` VALUES (2181,'新增',0,'add_emailExamine()','新增','新增',NULL,1,2180,2,NULL,0);
INSERT INTO `p_menulink` VALUES (2182,'删除选中',0,'delAll_emailExamine()','删除选中','删除选中',NULL,2,2180,2,NULL,0);
INSERT INTO `p_menulink` VALUES (2183,'删除',0,'del_emailExamine(:id)','删除','删除',NULL,2,2180,3,NULL,0);
INSERT INTO `p_menulink` VALUES (2184,'查看',0,'info_emailExamine(:id)','查看','查看',NULL,1,2180,3,NULL,0);
INSERT INTO `p_menulink` VALUES (2185,'编辑',0,'edit_emailExamine(:id)','编辑','编辑',NULL,1,2180,3,NULL,0);
INSERT INTO `p_menulink` VALUES (2190,'用户权限变更审批',0,'/authorityalter/authorityAlterList.action','用户权限变更审批','用户权限变更审批',NULL,4,7,1,NULL,0);
INSERT INTO `p_menulink` VALUES (2191,'新增',0,'add_authorityAlter()','新增','新增',NULL,1,2190,2,NULL,0);
INSERT INTO `p_menulink` VALUES (2192,'删除选中',0,'delAll_authorityAlter()','删除选中','删除选中',NULL,2,2190,2,NULL,0);
INSERT INTO `p_menulink` VALUES (2193,'删除',0,'del_authorityAlter(:id)','删除','删除',NULL,2,2190,3,NULL,0);
INSERT INTO `p_menulink` VALUES (2194,'查看',0,'info_authorityAlter(:id)','查看','查看',NULL,1,2190,3,NULL,0);
INSERT INTO `p_menulink` VALUES (2195,'编辑',0,'edit_authorityAlter(:id)','编辑','编辑',NULL,1,2190,3,NULL,0);
INSERT INTO `p_menulink` VALUES (2200,'应用系统权限变更内容',0,'/sysauthoralter/sysAuthorAlterList.action','应用系统权限变更内容','应用系统权限变更内容',NULL,22,7,1,NULL,0);
INSERT INTO `p_menulink` VALUES (2201,'新增',0,'add_sysAuthorAlter()','新增','新增',NULL,1,2200,2,NULL,0);
INSERT INTO `p_menulink` VALUES (2202,'删除选中',0,'delAll_sysAuthorAlter()','删除选中','删除选中',NULL,2,2200,2,NULL,0);
INSERT INTO `p_menulink` VALUES (2203,'删除',0,'del_sysAuthorAlter(:id)','删除','删除',NULL,2,2200,3,NULL,0);
INSERT INTO `p_menulink` VALUES (2204,'查看',0,'info_sysAuthorAlter(:id)','查看','查看',NULL,1,2200,3,NULL,0);
INSERT INTO `p_menulink` VALUES (2210,'设备维护、维修审批',0,'/devicemaintain/deviceMaintainList.action','设备维护、维修审批','设备维护、维修审批',NULL,2,7,1,NULL,0);
INSERT INTO `p_menulink` VALUES (2211,'新增',0,'add_deviceMaintain()','新增','新增',NULL,1,2210,2,NULL,0);
INSERT INTO `p_menulink` VALUES (2212,'删除选中',0,'delAll_deviceMaintain()','删除选中','删除选中',NULL,2,2210,2,NULL,0);
INSERT INTO `p_menulink` VALUES (2213,'删除',0,'del_deviceMaintain(:id)','删除','删除',NULL,2,2210,3,NULL,0);
INSERT INTO `p_menulink` VALUES (2214,'查看',0,'info_deviceMaintain(:id)','查看','查看',NULL,1,2210,3,NULL,0);
INSERT INTO `p_menulink` VALUES (2215,'编辑',0,'edit_deviceMaintain(:id)','编辑','编辑',NULL,1,2210,3,NULL,0);
INSERT INTO `p_menulink` VALUES (3000,'本部拍摄活动审批',0,'/filmingactivity/filmingActivityList.action','本部拍摄活动审批','本部拍摄活动审批',NULL,1,12,1,NULL,0);
INSERT INTO `p_menulink` VALUES (3001,'新增',0,'add_filmingActivity()','新增','新增',NULL,1,3000,2,NULL,0);
INSERT INTO `p_menulink` VALUES (3002,'删除选中',0,'delAll_filmingActivity()','删除选中','删除选中',NULL,2,3000,2,NULL,0);
INSERT INTO `p_menulink` VALUES (3003,'删除',0,'del_filmingActivity(:id)','删除','删除',NULL,2,3000,3,NULL,0);
INSERT INTO `p_menulink` VALUES (3004,'查看',0,'info_filmingActivity(:id)','查看','查看',NULL,1,3000,3,NULL,0);
INSERT INTO `p_menulink` VALUES (3010,'本部接受采访审批',0,'/interview/interviewList.action','本部接受采访审批','本部接受采访审批',NULL,2,12,1,NULL,0);
INSERT INTO `p_menulink` VALUES (3011,'新增',0,'add_interview()','新增','新增',NULL,1,3010,2,NULL,0);
INSERT INTO `p_menulink` VALUES (3012,'删除选中',0,'delAll_interview()','删除选中','删除选中',NULL,2,3010,2,NULL,0);
INSERT INTO `p_menulink` VALUES (3013,'删除',0,'del_interview(:id)','删除','删除',NULL,2,3010,3,NULL,0);
INSERT INTO `p_menulink` VALUES (3014,'查看',0,'info_interview(:id)','查看','查看',NULL,1,3010,3,NULL,0);
INSERT INTO `p_menulink` VALUES (3020,'本部涉密会议保密管理审批',0,'/meetsecrecy/meetSecrecyList.action','本部涉密会议保密管理审批','本部涉密会议保密管理审批',NULL,3,12,1,NULL,0);
INSERT INTO `p_menulink` VALUES (3021,'新增',0,'add_meetSecrecy()','新增','新增',NULL,1,3020,2,NULL,0);
INSERT INTO `p_menulink` VALUES (3022,'删除选中',0,'delAll_meetSecrecy()','删除选中','删除选中',NULL,2,3020,2,NULL,0);
INSERT INTO `p_menulink` VALUES (3023,'删除',0,'del_meetSecrecy(:id)','删除','删除',NULL,2,3020,3,NULL,0);
INSERT INTO `p_menulink` VALUES (3024,'查看',0,'info_meetSecrecy(:id)','查看','查看',NULL,1,3020,3,NULL,0);
INSERT INTO `p_menulink` VALUES (3030,'涉密会议保密方案执行情况记录',0,'/meetsecrecyrecord/meetSecrecyRecordList.action','涉密会议保密方案执行情况记录','涉密会议保密方案执行情况记录',NULL,4,12,1,NULL,0);
INSERT INTO `p_menulink` VALUES (3031,'新增',0,'add_meetSecrecyRecord()','新增','新增',NULL,1,3030,2,NULL,0);
INSERT INTO `p_menulink` VALUES (3032,'删除选中',0,'delAll_meetSecrecyRecord()','删除选中','删除选中',NULL,2,3030,2,NULL,0);
INSERT INTO `p_menulink` VALUES (3033,'删除',0,'del_meetSecrecyRecord(:id)','删除','删除',NULL,2,3030,3,NULL,0);
INSERT INTO `p_menulink` VALUES (3034,'查看',0,'info_meetSecrecyRecord(:id)','查看','查看',NULL,1,3030,3,NULL,0);
INSERT INTO `p_menulink` VALUES (3040,'保密协议书（样本）',0,'/conagreementyb/conAgreementybList.action','保密协议书（样本）','保密协议书（样本）',NULL,5,12,1,NULL,0);
INSERT INTO `p_menulink` VALUES (3041,'新增',0,'add_conAgreementyb()','新增','新增',NULL,1,3040,2,NULL,0);
INSERT INTO `p_menulink` VALUES (3042,'删除选中',0,'delAll_conAgreementyb()','删除选中','删除选中',NULL,2,3040,2,NULL,0);
INSERT INTO `p_menulink` VALUES (3043,'删除',0,'del_conAgreementyb(:id)','删除','删除',NULL,2,3040,3,NULL,0);
INSERT INTO `p_menulink` VALUES (3044,'查看',0,'info_conAgreementyb(:id)','查看','查看',NULL,1,3040,3,NULL,0);
INSERT INTO `p_menulink` VALUES (3050,'涉密协作配套单位保密监督检查表（样本）',0,'/cooperationcheck/cooperationCheckList.action','涉密协作配套单位保密监督检查表（样本）','涉密协作配套单位保密监督检查表（样本）',NULL,6,12,1,NULL,0);
INSERT INTO `p_menulink` VALUES (3051,'新增',0,'add_cooperationCheck()','新增','新增',NULL,1,3050,2,NULL,0);
INSERT INTO `p_menulink` VALUES (3052,'删除选中',0,'delAll_cooperationCheck()','删除选中','删除选中',NULL,2,3050,2,NULL,0);
INSERT INTO `p_menulink` VALUES (3053,'删除',0,'del_cooperationCheck(:id)','删除','删除',NULL,2,3050,3,NULL,0);
INSERT INTO `p_menulink` VALUES (3054,'查看',0,'info_cooperationCheck(:id)','查看','查看',NULL,1,3050,3,NULL,0);
INSERT INTO `p_menulink` VALUES (3060,'泄密事件报告登记',0,'/divulgesecret/divulgeSecretList.action','泄密事件报告登记','泄密事件报告登记',NULL,7,12,1,NULL,0);
INSERT INTO `p_menulink` VALUES (3061,'新增',0,'add_divulgeSecret()','新增','新增',NULL,1,3060,2,NULL,0);
INSERT INTO `p_menulink` VALUES (3062,'删除选中',0,'delAll_divulgeSecret()','删除选中','删除选中',NULL,2,3060,2,NULL,0);
INSERT INTO `p_menulink` VALUES (3063,'删除',0,'del_divulgeSecret(:id)','删除','删除',NULL,2,3060,3,NULL,0);
INSERT INTO `p_menulink` VALUES (3064,'查看',0,'info_divulgeSecret(:id)','查看','查看',NULL,1,3060,3,NULL,0);
INSERT INTO `p_menulink` VALUES (3070,'保密承诺书',0,'/promise/promiseList.action','保密承诺书','保密承诺书',NULL,8,12,1,NULL,0);
INSERT INTO `p_menulink` VALUES (3071,'新增',0,'add_promise()','新增','新增',NULL,1,3070,2,NULL,0);
INSERT INTO `p_menulink` VALUES (3072,'删除选中',0,'delAll_promise()','删除选中','删除选中',NULL,2,3070,2,NULL,0);
INSERT INTO `p_menulink` VALUES (3073,'删除',0,'del_promise(:id)','删除','删除',NULL,2,3070,3,NULL,0);
INSERT INTO `p_menulink` VALUES (3074,'查看',0,'info_promise(:id)','查看','查看',NULL,1,3070,3,NULL,0);
INSERT INTO `p_menulink` VALUES (3080,'保密责任书',0,'/confidentiality/confidentialityList.action','保密责任书','保密责任书',NULL,9,12,1,NULL,0);
INSERT INTO `p_menulink` VALUES (3081,'新增',0,'add_confidentiality()','新增','新增',NULL,1,3080,2,NULL,0);
INSERT INTO `p_menulink` VALUES (3082,'删除选中',0,'delAll_confidentiality()','删除选中','删除选中',NULL,2,3080,2,NULL,0);
INSERT INTO `p_menulink` VALUES (3083,'删除',0,'del_confidentiality(:id)','删除','删除',NULL,2,3080,3,NULL,0);
INSERT INTO `p_menulink` VALUES (3084,'查看',0,'info_confidentiality(:id)','查看','查看',NULL,1,3080,3,NULL,0);
INSERT INTO `p_menulink` VALUES (3090,'员工保密工作自查',0,'/empseccheck/empSecCheckList.action','员工保密工作自查','员工保密工作自查',NULL,10,12,1,NULL,0);
INSERT INTO `p_menulink` VALUES (3091,'新增',0,'add_empSecCheck()','新增','新增',NULL,1,3090,2,NULL,0);
INSERT INTO `p_menulink` VALUES (3092,'删除选中',0,'delAll_empSecCheck()','删除选中','删除选中',NULL,2,3090,2,NULL,0);
INSERT INTO `p_menulink` VALUES (3093,'删除',0,'del_empSecCheck(:id)','删除','删除',NULL,2,3090,3,NULL,0);
INSERT INTO `p_menulink` VALUES (3094,'查看',0,'info_empSecCheck(:id)','查看','查看',NULL,1,3090,3,NULL,0);
INSERT INTO `p_menulink` VALUES (3100,'部门保密工作自查',0,'/depseccheck/depsecCheckList.action','部门保密工作自查','部门保密工作自查',NULL,11,12,1,NULL,0);
INSERT INTO `p_menulink` VALUES (3101,'新增',0,'add_depsecCheck()','新增','新增',NULL,1,3100,2,NULL,0);
INSERT INTO `p_menulink` VALUES (3102,'删除选中',0,'delAll_depsecCheck()','删除选中','删除选中',NULL,2,3100,2,NULL,0);
INSERT INTO `p_menulink` VALUES (3103,'删除',0,'del_depsecCheck(:id)','删除','删除',NULL,2,3100,3,NULL,0);
INSERT INTO `p_menulink` VALUES (3104,'查看',0,'info_depsecCheck(:id)','查看','查看',NULL,1,3100,3,NULL,0);
INSERT INTO `p_menulink` VALUES (3110,'保密补贴扣发通知单（保密办留存）',0,'/subsidiesdetain/subsidiesDetainList.action','保密补贴扣发通知单（保密办留存）','保密补贴扣发通知单（保密办留存）',NULL,12,12,1,NULL,0);
INSERT INTO `p_menulink` VALUES (3111,'新增',0,'add_subsidiesDetain()','新增','新增',NULL,1,3110,2,NULL,0);
INSERT INTO `p_menulink` VALUES (3112,'删除选中',0,'delAll_subsidiesDetain()','删除选中','删除选中',NULL,2,3110,2,NULL,0);
INSERT INTO `p_menulink` VALUES (3113,'删除',0,'del_subsidiesDetain(:id)','删除','删除',NULL,2,3110,3,NULL,0);
INSERT INTO `p_menulink` VALUES (3114,'查看',0,'info_subsidiesDetain(:id)','查看','查看',NULL,1,3110,3,NULL,0);
INSERT INTO `p_menulink` VALUES (3120,'部门保密工作自查',0,'/subsidiesdetainper/subsidiesDetainperList.action','部门保密工作自查','部门保密工作自查',NULL,13,12,1,NULL,0);
INSERT INTO `p_menulink` VALUES (3121,'新增',0,'add_subsidiesDetainper()','新增','新增',NULL,1,3120,2,NULL,0);
INSERT INTO `p_menulink` VALUES (3122,'删除选中',0,'delAll_subsidiesDetainper()','删除选中','删除选中',NULL,2,3120,2,NULL,0);
INSERT INTO `p_menulink` VALUES (3123,'删除',0,'del_subsidiesDetainper(:id)','删除','删除',NULL,2,3120,3,NULL,0);
INSERT INTO `p_menulink` VALUES (3124,'查看',0,'info_subsidiesDetainper(:id)','查看','查看',NULL,1,3120,3,NULL,0);
INSERT INTO `p_menulink` VALUES (3130,'本部保密补贴考核扣发标准',0,'/detainstandard/detainStandardInfo.action','本部保密补贴考核扣发标准','本部保密补贴考核扣发标准',NULL,13,12,1,NULL,0);
/*!40000 ALTER TABLE `p_menulink` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table p_org
#

DROP TABLE IF EXISTS `p_org`;
CREATE TABLE `p_org` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VERSION` int(11) DEFAULT NULL,
  `NAME` varchar(100) NOT NULL COMMENT '机构名称',
  `DESCRIPTION` varchar(255) DEFAULT NULL COMMENT '机构描述',
  `PARENT` int(11) DEFAULT NULL COMMENT '机构父ID 根机构父ID为0',
  `PARENTNAME` varchar(100) DEFAULT NULL COMMENT '父机构名称',
  `DELETED` int(11) DEFAULT NULL COMMENT '是否删除  0/否   1/是',
  `ORGTYPE` char(1) DEFAULT NULL COMMENT '机构类型',
  `CLICKNUM` int(11) DEFAULT '0' COMMENT '点击量',
  `CREATOR` int(11) DEFAULT NULL COMMENT '创建人ID',
  `CREATORNAME` varchar(50) DEFAULT NULL COMMENT '建创人名称',
  `ADDRESS` varchar(200) DEFAULT NULL COMMENT '地址',
  `CREATEDATE` datetime DEFAULT NULL COMMENT '创建日期',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户机构表';

#
# Dumping data for table p_org
#

LOCK TABLES `p_org` WRITE;
/*!40000 ALTER TABLE `p_org` DISABLE KEYS */;
INSERT INTO `p_org` VALUES (1,1,'默认','默认',0,NULL,1,NULL,NULL,0,'管理员','是的是的','2014-05-04 18:56:09');
INSERT INTO `p_org` VALUES (2,1,'测试','测试',0,NULL,1,'0',NULL,2275,'管理员','北京','2016-03-04 10:23:14');
INSERT INTO `p_org` VALUES (3,0,'测试','测试',0,NULL,0,'0',NULL,2275,'管理员','测试','2016-05-12 15:30:43');
/*!40000 ALTER TABLE `p_org` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table p_role
#

DROP TABLE IF EXISTS `p_role`;
CREATE TABLE `p_role` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VERSION` int(11) DEFAULT NULL,
  `NAME` varchar(50) DEFAULT NULL COMMENT '角色名称',
  `DISPLAYREF` varchar(50) DEFAULT NULL COMMENT '显示名称',
  `DESCRIPTION` varchar(100) DEFAULT NULL COMMENT '描述',
  `CREATOR` int(11) DEFAULT NULL COMMENT '创建人',
  `ISGLOB` int(11) DEFAULT NULL COMMENT '是否有全局权限 1:是 2：不是',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='一级菜单表';

#
# Dumping data for table p_role
#

LOCK TABLES `p_role` WRITE;
/*!40000 ALTER TABLE `p_role` DISABLE KEYS */;
INSERT INTO `p_role` VALUES (1,0,'超级管理员','超级管理员','超级管理员',0,1);
INSERT INTO `p_role` VALUES (2,5,'系统管理员','系统管理员','系统管理员',2275,1);
/*!40000 ALTER TABLE `p_role` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table p_rolemenulink
#

DROP TABLE IF EXISTS `p_rolemenulink`;
CREATE TABLE `p_rolemenulink` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VERSION` int(11) DEFAULT NULL,
  `MENULINK` int(11) DEFAULT NULL COMMENT '单菜链接ID',
  `ROLE` int(11) DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`ID`),
  KEY `INDEX_ULMS_ROLEMENULINK_ROLE` (`ROLE`)
) ENGINE=InnoDB AUTO_INCREMENT=21123 DEFAULT CHARSET=utf8 COMMENT='二级菜单表';

#
# Dumping data for table p_rolemenulink
#

LOCK TABLES `p_rolemenulink` WRITE;
/*!40000 ALTER TABLE `p_rolemenulink` DISABLE KEYS */;
INSERT INTO `p_rolemenulink` VALUES (27,0,7,1);
INSERT INTO `p_rolemenulink` VALUES (28,0,8,1);
INSERT INTO `p_rolemenulink` VALUES (29,0,9,1);
INSERT INTO `p_rolemenulink` VALUES (30,0,10,1);
INSERT INTO `p_rolemenulink` VALUES (31,0,11,1);
INSERT INTO `p_rolemenulink` VALUES (32,0,12,1);
INSERT INTO `p_rolemenulink` VALUES (33,0,13,1);
INSERT INTO `p_rolemenulink` VALUES (34,0,14,1);
INSERT INTO `p_rolemenulink` VALUES (47,0,12,2);
INSERT INTO `p_rolemenulink` VALUES (194,0,22,2);
INSERT INTO `p_rolemenulink` VALUES (195,0,23,2);
INSERT INTO `p_rolemenulink` VALUES (198,0,31,2);
INSERT INTO `p_rolemenulink` VALUES (266,0,21,1);
INSERT INTO `p_rolemenulink` VALUES (267,0,22,1);
INSERT INTO `p_rolemenulink` VALUES (268,0,23,1);
INSERT INTO `p_rolemenulink` VALUES (269,0,24,1);
INSERT INTO `p_rolemenulink` VALUES (270,0,25,1);
INSERT INTO `p_rolemenulink` VALUES (271,0,31,1);
INSERT INTO `p_rolemenulink` VALUES (272,0,32,1);
INSERT INTO `p_rolemenulink` VALUES (273,0,17,1);
INSERT INTO `p_rolemenulink` VALUES (274,0,30,1);
INSERT INTO `p_rolemenulink` VALUES (275,0,15,1);
INSERT INTO `p_rolemenulink` VALUES (276,0,19,1);
INSERT INTO `p_rolemenulink` VALUES (277,0,20,1);
INSERT INTO `p_rolemenulink` VALUES (278,0,26,1);
INSERT INTO `p_rolemenulink` VALUES (279,0,27,1);
INSERT INTO `p_rolemenulink` VALUES (280,0,28,1);
INSERT INTO `p_rolemenulink` VALUES (281,0,33,1);
INSERT INTO `p_rolemenulink` VALUES (282,0,5,1);
INSERT INTO `p_rolemenulink` VALUES (283,0,6,1);
INSERT INTO `p_rolemenulink` VALUES (284,0,29,1);
INSERT INTO `p_rolemenulink` VALUES (285,0,3,1);
INSERT INTO `p_rolemenulink` VALUES (286,0,4,1);
INSERT INTO `p_rolemenulink` VALUES (287,0,1,1);
INSERT INTO `p_rolemenulink` VALUES (288,0,2,1);
INSERT INTO `p_rolemenulink` VALUES (313,0,34,1);
INSERT INTO `p_rolemenulink` VALUES (5084,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (5085,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (5086,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (5087,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (5088,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (5089,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (5090,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (5091,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (5092,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (5093,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (5094,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (5095,1,NULL,2);
INSERT INTO `p_rolemenulink` VALUES (6704,0,2109,2);
INSERT INTO `p_rolemenulink` VALUES (9023,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9024,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9025,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9026,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9027,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9028,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9029,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9030,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9031,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9032,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9033,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9034,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9035,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9036,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9037,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9038,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9039,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9040,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9041,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9042,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9043,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9044,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9045,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9046,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9047,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9048,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9049,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9050,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9051,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9052,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9053,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9054,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9055,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9056,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9057,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9058,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9059,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9060,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9061,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9062,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9063,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9064,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9065,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9066,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9067,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9068,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9069,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9070,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9071,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9072,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9073,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9074,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9075,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9076,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9077,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9078,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9079,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9080,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9081,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9082,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9083,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9084,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9085,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9086,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9087,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9088,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9089,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9090,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9091,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9092,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9093,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9094,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9095,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9096,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9097,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9098,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9099,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9100,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9101,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9102,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9103,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9104,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9105,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9106,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9107,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9108,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9109,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9110,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9111,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9112,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9113,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9114,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9115,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9116,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9117,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9118,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9119,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9120,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9121,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9122,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9123,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9124,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9125,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9126,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9127,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9128,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9129,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9130,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9131,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9132,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9133,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9134,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9135,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9136,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9137,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9138,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9139,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9140,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9141,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9142,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9143,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9144,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9145,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9146,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9147,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9148,2,NULL,NULL);
INSERT INTO `p_rolemenulink` VALUES (9149,1,NULL,2);
INSERT INTO `p_rolemenulink` VALUES (20358,0,2001,2);
INSERT INTO `p_rolemenulink` VALUES (20359,0,2002,2);
INSERT INTO `p_rolemenulink` VALUES (20360,0,2003,2);
INSERT INTO `p_rolemenulink` VALUES (20361,0,2004,2);
INSERT INTO `p_rolemenulink` VALUES (20364,0,2011,2);
INSERT INTO `p_rolemenulink` VALUES (20365,0,2012,2);
INSERT INTO `p_rolemenulink` VALUES (20366,0,2013,2);
INSERT INTO `p_rolemenulink` VALUES (20367,0,2014,2);
INSERT INTO `p_rolemenulink` VALUES (20370,0,2021,2);
INSERT INTO `p_rolemenulink` VALUES (20371,0,2022,2);
INSERT INTO `p_rolemenulink` VALUES (20372,0,2023,2);
INSERT INTO `p_rolemenulink` VALUES (20373,0,2024,2);
INSERT INTO `p_rolemenulink` VALUES (20376,0,2031,2);
INSERT INTO `p_rolemenulink` VALUES (20377,0,2032,2);
INSERT INTO `p_rolemenulink` VALUES (20378,0,2033,2);
INSERT INTO `p_rolemenulink` VALUES (20379,0,2034,2);
INSERT INTO `p_rolemenulink` VALUES (20382,0,2041,2);
INSERT INTO `p_rolemenulink` VALUES (20383,0,2042,2);
INSERT INTO `p_rolemenulink` VALUES (20384,0,2043,2);
INSERT INTO `p_rolemenulink` VALUES (20385,0,2044,2);
INSERT INTO `p_rolemenulink` VALUES (20388,0,2051,2);
INSERT INTO `p_rolemenulink` VALUES (20389,0,2052,2);
INSERT INTO `p_rolemenulink` VALUES (20390,0,2053,2);
INSERT INTO `p_rolemenulink` VALUES (20391,0,2054,2);
INSERT INTO `p_rolemenulink` VALUES (20394,0,2061,2);
INSERT INTO `p_rolemenulink` VALUES (20395,0,2062,2);
INSERT INTO `p_rolemenulink` VALUES (20396,0,2063,2);
INSERT INTO `p_rolemenulink` VALUES (20397,0,2064,2);
INSERT INTO `p_rolemenulink` VALUES (20400,0,2071,2);
INSERT INTO `p_rolemenulink` VALUES (20401,0,2072,2);
INSERT INTO `p_rolemenulink` VALUES (20402,0,2073,2);
INSERT INTO `p_rolemenulink` VALUES (20403,0,2074,2);
INSERT INTO `p_rolemenulink` VALUES (20406,0,2081,2);
INSERT INTO `p_rolemenulink` VALUES (20407,0,2082,2);
INSERT INTO `p_rolemenulink` VALUES (20408,0,2083,2);
INSERT INTO `p_rolemenulink` VALUES (20409,0,2084,2);
INSERT INTO `p_rolemenulink` VALUES (20411,0,2091,2);
INSERT INTO `p_rolemenulink` VALUES (20412,0,2092,2);
INSERT INTO `p_rolemenulink` VALUES (20413,0,2093,2);
INSERT INTO `p_rolemenulink` VALUES (20414,0,2094,2);
INSERT INTO `p_rolemenulink` VALUES (20417,0,2101,2);
INSERT INTO `p_rolemenulink` VALUES (20418,0,2102,2);
INSERT INTO `p_rolemenulink` VALUES (20419,0,2103,2);
INSERT INTO `p_rolemenulink` VALUES (20420,0,2104,2);
INSERT INTO `p_rolemenulink` VALUES (20423,0,2111,2);
INSERT INTO `p_rolemenulink` VALUES (20424,0,2112,2);
INSERT INTO `p_rolemenulink` VALUES (20425,0,2113,2);
INSERT INTO `p_rolemenulink` VALUES (20426,0,2114,2);
INSERT INTO `p_rolemenulink` VALUES (20429,0,2121,2);
INSERT INTO `p_rolemenulink` VALUES (20430,0,2122,2);
INSERT INTO `p_rolemenulink` VALUES (20431,0,2123,2);
INSERT INTO `p_rolemenulink` VALUES (20432,0,2124,2);
INSERT INTO `p_rolemenulink` VALUES (20435,0,2131,2);
INSERT INTO `p_rolemenulink` VALUES (20436,0,2132,2);
INSERT INTO `p_rolemenulink` VALUES (20437,0,2133,2);
INSERT INTO `p_rolemenulink` VALUES (20438,0,2134,2);
INSERT INTO `p_rolemenulink` VALUES (20441,0,2141,2);
INSERT INTO `p_rolemenulink` VALUES (20442,0,2142,2);
INSERT INTO `p_rolemenulink` VALUES (20443,0,2143,2);
INSERT INTO `p_rolemenulink` VALUES (20444,0,2144,2);
INSERT INTO `p_rolemenulink` VALUES (20447,0,2151,2);
INSERT INTO `p_rolemenulink` VALUES (20448,0,2152,2);
INSERT INTO `p_rolemenulink` VALUES (20449,0,2153,2);
INSERT INTO `p_rolemenulink` VALUES (20450,0,2154,2);
INSERT INTO `p_rolemenulink` VALUES (20453,0,2161,2);
INSERT INTO `p_rolemenulink` VALUES (20454,0,2162,2);
INSERT INTO `p_rolemenulink` VALUES (20455,0,2163,2);
INSERT INTO `p_rolemenulink` VALUES (20456,0,2164,2);
INSERT INTO `p_rolemenulink` VALUES (20459,0,2171,2);
INSERT INTO `p_rolemenulink` VALUES (20460,0,2172,2);
INSERT INTO `p_rolemenulink` VALUES (20461,0,2173,2);
INSERT INTO `p_rolemenulink` VALUES (20462,0,2174,2);
INSERT INTO `p_rolemenulink` VALUES (20465,0,2181,2);
INSERT INTO `p_rolemenulink` VALUES (20466,0,2182,2);
INSERT INTO `p_rolemenulink` VALUES (20467,0,2183,2);
INSERT INTO `p_rolemenulink` VALUES (20468,0,2184,2);
INSERT INTO `p_rolemenulink` VALUES (20471,0,2191,2);
INSERT INTO `p_rolemenulink` VALUES (20472,0,2192,2);
INSERT INTO `p_rolemenulink` VALUES (20473,0,2193,2);
INSERT INTO `p_rolemenulink` VALUES (20474,0,2194,2);
INSERT INTO `p_rolemenulink` VALUES (20477,0,2201,2);
INSERT INTO `p_rolemenulink` VALUES (20478,0,2202,2);
INSERT INTO `p_rolemenulink` VALUES (20479,0,2203,2);
INSERT INTO `p_rolemenulink` VALUES (20480,0,2204,2);
INSERT INTO `p_rolemenulink` VALUES (20482,0,2211,2);
INSERT INTO `p_rolemenulink` VALUES (20483,0,2212,2);
INSERT INTO `p_rolemenulink` VALUES (20484,0,2213,2);
INSERT INTO `p_rolemenulink` VALUES (20485,0,2214,2);
INSERT INTO `p_rolemenulink` VALUES (20488,0,1101,2);
INSERT INTO `p_rolemenulink` VALUES (20489,0,1102,2);
INSERT INTO `p_rolemenulink` VALUES (20490,0,1103,2);
INSERT INTO `p_rolemenulink` VALUES (20491,0,1104,2);
INSERT INTO `p_rolemenulink` VALUES (20492,0,1105,2);
INSERT INTO `p_rolemenulink` VALUES (20493,0,1106,2);
INSERT INTO `p_rolemenulink` VALUES (20495,0,1201,2);
INSERT INTO `p_rolemenulink` VALUES (20496,0,1202,2);
INSERT INTO `p_rolemenulink` VALUES (20497,0,1203,2);
INSERT INTO `p_rolemenulink` VALUES (20498,0,1204,2);
INSERT INTO `p_rolemenulink` VALUES (20499,0,1205,2);
INSERT INTO `p_rolemenulink` VALUES (20500,0,1206,2);
INSERT INTO `p_rolemenulink` VALUES (20502,0,1301,2);
INSERT INTO `p_rolemenulink` VALUES (20503,0,1302,2);
INSERT INTO `p_rolemenulink` VALUES (20504,0,1303,2);
INSERT INTO `p_rolemenulink` VALUES (20505,0,1304,2);
INSERT INTO `p_rolemenulink` VALUES (20506,0,1305,2);
INSERT INTO `p_rolemenulink` VALUES (20508,0,1401,2);
INSERT INTO `p_rolemenulink` VALUES (20509,0,1402,2);
INSERT INTO `p_rolemenulink` VALUES (20510,0,1403,2);
INSERT INTO `p_rolemenulink` VALUES (20511,0,1404,2);
INSERT INTO `p_rolemenulink` VALUES (20512,0,1405,2);
INSERT INTO `p_rolemenulink` VALUES (20514,0,1501,2);
INSERT INTO `p_rolemenulink` VALUES (20515,0,1502,2);
INSERT INTO `p_rolemenulink` VALUES (20516,0,1503,2);
INSERT INTO `p_rolemenulink` VALUES (20517,0,1504,2);
INSERT INTO `p_rolemenulink` VALUES (20518,0,1505,2);
INSERT INTO `p_rolemenulink` VALUES (20526,0,1901,2);
INSERT INTO `p_rolemenulink` VALUES (20527,0,1902,2);
INSERT INTO `p_rolemenulink` VALUES (20528,0,1903,2);
INSERT INTO `p_rolemenulink` VALUES (20529,0,1904,2);
INSERT INTO `p_rolemenulink` VALUES (20530,0,1905,2);
INSERT INTO `p_rolemenulink` VALUES (20532,0,1601,2);
INSERT INTO `p_rolemenulink` VALUES (20533,0,1602,2);
INSERT INTO `p_rolemenulink` VALUES (20534,0,1603,2);
INSERT INTO `p_rolemenulink` VALUES (20535,0,1604,2);
INSERT INTO `p_rolemenulink` VALUES (20536,0,1605,2);
INSERT INTO `p_rolemenulink` VALUES (20538,0,1701,2);
INSERT INTO `p_rolemenulink` VALUES (20539,0,1702,2);
INSERT INTO `p_rolemenulink` VALUES (20540,0,1703,2);
INSERT INTO `p_rolemenulink` VALUES (20541,0,1704,2);
INSERT INTO `p_rolemenulink` VALUES (20542,0,1705,2);
INSERT INTO `p_rolemenulink` VALUES (20543,0,1706,2);
INSERT INTO `p_rolemenulink` VALUES (20545,0,1801,2);
INSERT INTO `p_rolemenulink` VALUES (20546,0,1802,2);
INSERT INTO `p_rolemenulink` VALUES (20547,0,1803,2);
INSERT INTO `p_rolemenulink` VALUES (20548,0,1804,2);
INSERT INTO `p_rolemenulink` VALUES (20549,0,1805,2);
INSERT INTO `p_rolemenulink` VALUES (20563,0,1911,2);
INSERT INTO `p_rolemenulink` VALUES (20564,0,1912,2);
INSERT INTO `p_rolemenulink` VALUES (20565,0,1913,2);
INSERT INTO `p_rolemenulink` VALUES (20566,0,1914,2);
INSERT INTO `p_rolemenulink` VALUES (20567,0,1915,2);
INSERT INTO `p_rolemenulink` VALUES (20569,0,1921,2);
INSERT INTO `p_rolemenulink` VALUES (20570,0,1922,2);
INSERT INTO `p_rolemenulink` VALUES (20571,0,1923,2);
INSERT INTO `p_rolemenulink` VALUES (20572,0,1924,2);
INSERT INTO `p_rolemenulink` VALUES (20573,0,1925,2);
INSERT INTO `p_rolemenulink` VALUES (20574,0,1960,2);
INSERT INTO `p_rolemenulink` VALUES (20575,0,1961,2);
INSERT INTO `p_rolemenulink` VALUES (20576,0,1962,2);
INSERT INTO `p_rolemenulink` VALUES (20577,0,1963,2);
INSERT INTO `p_rolemenulink` VALUES (20578,0,1964,2);
INSERT INTO `p_rolemenulink` VALUES (20579,0,1965,2);
INSERT INTO `p_rolemenulink` VALUES (20580,0,1970,2);
INSERT INTO `p_rolemenulink` VALUES (20581,0,1971,2);
INSERT INTO `p_rolemenulink` VALUES (20582,0,1972,2);
INSERT INTO `p_rolemenulink` VALUES (20583,0,1973,2);
INSERT INTO `p_rolemenulink` VALUES (20584,0,1974,2);
INSERT INTO `p_rolemenulink` VALUES (20585,0,1975,2);
INSERT INTO `p_rolemenulink` VALUES (20586,0,1980,2);
INSERT INTO `p_rolemenulink` VALUES (20587,0,1981,2);
INSERT INTO `p_rolemenulink` VALUES (20588,0,1982,2);
INSERT INTO `p_rolemenulink` VALUES (20589,0,1983,2);
INSERT INTO `p_rolemenulink` VALUES (20590,0,1984,2);
INSERT INTO `p_rolemenulink` VALUES (20591,0,1985,2);
INSERT INTO `p_rolemenulink` VALUES (20592,0,1990,2);
INSERT INTO `p_rolemenulink` VALUES (20593,0,1991,2);
INSERT INTO `p_rolemenulink` VALUES (20594,0,1992,2);
INSERT INTO `p_rolemenulink` VALUES (20595,0,1993,2);
INSERT INTO `p_rolemenulink` VALUES (20596,0,1994,2);
INSERT INTO `p_rolemenulink` VALUES (20597,0,1995,2);
INSERT INTO `p_rolemenulink` VALUES (20598,0,1810,2);
INSERT INTO `p_rolemenulink` VALUES (20599,0,1811,2);
INSERT INTO `p_rolemenulink` VALUES (20600,0,1812,2);
INSERT INTO `p_rolemenulink` VALUES (20601,0,1813,2);
INSERT INTO `p_rolemenulink` VALUES (20602,0,1814,2);
INSERT INTO `p_rolemenulink` VALUES (20603,0,1815,2);
INSERT INTO `p_rolemenulink` VALUES (20604,0,1820,2);
INSERT INTO `p_rolemenulink` VALUES (20605,0,1821,2);
INSERT INTO `p_rolemenulink` VALUES (20606,0,1822,2);
INSERT INTO `p_rolemenulink` VALUES (20607,0,1823,2);
INSERT INTO `p_rolemenulink` VALUES (20608,0,1824,2);
INSERT INTO `p_rolemenulink` VALUES (20609,0,1825,2);
INSERT INTO `p_rolemenulink` VALUES (20610,0,1830,2);
INSERT INTO `p_rolemenulink` VALUES (20611,0,1831,2);
INSERT INTO `p_rolemenulink` VALUES (20612,0,1832,2);
INSERT INTO `p_rolemenulink` VALUES (20613,0,1833,2);
INSERT INTO `p_rolemenulink` VALUES (20614,0,1834,2);
INSERT INTO `p_rolemenulink` VALUES (20615,0,1835,2);
INSERT INTO `p_rolemenulink` VALUES (20616,0,1840,2);
INSERT INTO `p_rolemenulink` VALUES (20640,0,3030,2);
INSERT INTO `p_rolemenulink` VALUES (20641,0,3031,2);
INSERT INTO `p_rolemenulink` VALUES (20642,0,3032,2);
INSERT INTO `p_rolemenulink` VALUES (20643,0,3033,2);
INSERT INTO `p_rolemenulink` VALUES (20644,0,3034,2);
INSERT INTO `p_rolemenulink` VALUES (20645,0,3040,2);
INSERT INTO `p_rolemenulink` VALUES (20646,0,3041,2);
INSERT INTO `p_rolemenulink` VALUES (20647,0,3042,2);
INSERT INTO `p_rolemenulink` VALUES (20648,0,3043,2);
INSERT INTO `p_rolemenulink` VALUES (20649,0,3044,2);
INSERT INTO `p_rolemenulink` VALUES (20650,0,3050,2);
INSERT INTO `p_rolemenulink` VALUES (20651,0,3051,2);
INSERT INTO `p_rolemenulink` VALUES (20652,0,3052,2);
INSERT INTO `p_rolemenulink` VALUES (20653,0,3053,2);
INSERT INTO `p_rolemenulink` VALUES (20654,0,3054,2);
INSERT INTO `p_rolemenulink` VALUES (20655,0,3060,2);
INSERT INTO `p_rolemenulink` VALUES (20656,0,3061,2);
INSERT INTO `p_rolemenulink` VALUES (20657,0,3062,2);
INSERT INTO `p_rolemenulink` VALUES (20658,0,3063,2);
INSERT INTO `p_rolemenulink` VALUES (20659,0,3064,2);
INSERT INTO `p_rolemenulink` VALUES (20691,0,3000,2);
INSERT INTO `p_rolemenulink` VALUES (20692,0,3001,2);
INSERT INTO `p_rolemenulink` VALUES (20693,0,3002,2);
INSERT INTO `p_rolemenulink` VALUES (20694,0,3003,2);
INSERT INTO `p_rolemenulink` VALUES (20695,0,3004,2);
INSERT INTO `p_rolemenulink` VALUES (20696,0,3010,2);
INSERT INTO `p_rolemenulink` VALUES (20697,0,3011,2);
INSERT INTO `p_rolemenulink` VALUES (20698,0,3012,2);
INSERT INTO `p_rolemenulink` VALUES (20699,0,3013,2);
INSERT INTO `p_rolemenulink` VALUES (20700,0,3014,2);
INSERT INTO `p_rolemenulink` VALUES (20701,0,3020,2);
INSERT INTO `p_rolemenulink` VALUES (20702,0,3021,2);
INSERT INTO `p_rolemenulink` VALUES (20703,0,3022,2);
INSERT INTO `p_rolemenulink` VALUES (20704,0,3023,2);
INSERT INTO `p_rolemenulink` VALUES (20705,0,3024,2);
INSERT INTO `p_rolemenulink` VALUES (20706,0,1000,2);
INSERT INTO `p_rolemenulink` VALUES (20707,0,1001,2);
INSERT INTO `p_rolemenulink` VALUES (20708,0,1002,2);
INSERT INTO `p_rolemenulink` VALUES (20709,0,1003,2);
INSERT INTO `p_rolemenulink` VALUES (20710,0,1004,2);
INSERT INTO `p_rolemenulink` VALUES (20711,0,1005,2);
INSERT INTO `p_rolemenulink` VALUES (20712,0,1006,2);
INSERT INTO `p_rolemenulink` VALUES (20714,0,5,2);
INSERT INTO `p_rolemenulink` VALUES (20715,0,9,2);
INSERT INTO `p_rolemenulink` VALUES (20716,0,10,2);
INSERT INTO `p_rolemenulink` VALUES (20717,0,11,2);
INSERT INTO `p_rolemenulink` VALUES (20718,0,25,2);
INSERT INTO `p_rolemenulink` VALUES (20719,0,6,2);
INSERT INTO `p_rolemenulink` VALUES (20720,0,13,2);
INSERT INTO `p_rolemenulink` VALUES (20721,0,14,2);
INSERT INTO `p_rolemenulink` VALUES (20722,0,15,2);
INSERT INTO `p_rolemenulink` VALUES (20723,0,16,2);
INSERT INTO `p_rolemenulink` VALUES (20724,0,17,2);
INSERT INTO `p_rolemenulink` VALUES (20725,0,18,2);
INSERT INTO `p_rolemenulink` VALUES (20726,0,26,2);
INSERT INTO `p_rolemenulink` VALUES (20727,0,7,2);
INSERT INTO `p_rolemenulink` VALUES (20728,0,8,2);
INSERT INTO `p_rolemenulink` VALUES (20729,0,19,2);
INSERT INTO `p_rolemenulink` VALUES (20730,0,20,2);
INSERT INTO `p_rolemenulink` VALUES (20731,0,21,2);
INSERT INTO `p_rolemenulink` VALUES (20732,0,24,2);
INSERT INTO `p_rolemenulink` VALUES (20733,0,27,2);
INSERT INTO `p_rolemenulink` VALUES (20734,0,28,2);
INSERT INTO `p_rolemenulink` VALUES (20735,0,29,2);
INSERT INTO `p_rolemenulink` VALUES (20736,0,30,2);
INSERT INTO `p_rolemenulink` VALUES (20737,0,2000,2);
INSERT INTO `p_rolemenulink` VALUES (20738,0,2001,2);
INSERT INTO `p_rolemenulink` VALUES (20739,0,2002,2);
INSERT INTO `p_rolemenulink` VALUES (20740,0,2003,2);
INSERT INTO `p_rolemenulink` VALUES (20741,0,2004,2);
INSERT INTO `p_rolemenulink` VALUES (20742,0,2005,2);
INSERT INTO `p_rolemenulink` VALUES (20743,0,2010,2);
INSERT INTO `p_rolemenulink` VALUES (20744,0,2011,2);
INSERT INTO `p_rolemenulink` VALUES (20745,0,2012,2);
INSERT INTO `p_rolemenulink` VALUES (20746,0,2013,2);
INSERT INTO `p_rolemenulink` VALUES (20747,0,2014,2);
INSERT INTO `p_rolemenulink` VALUES (20748,0,2015,2);
INSERT INTO `p_rolemenulink` VALUES (20749,0,2020,2);
INSERT INTO `p_rolemenulink` VALUES (20750,0,2021,2);
INSERT INTO `p_rolemenulink` VALUES (20751,0,2022,2);
INSERT INTO `p_rolemenulink` VALUES (20752,0,2023,2);
INSERT INTO `p_rolemenulink` VALUES (20753,0,2024,2);
INSERT INTO `p_rolemenulink` VALUES (20754,0,2025,2);
INSERT INTO `p_rolemenulink` VALUES (20755,0,2030,2);
INSERT INTO `p_rolemenulink` VALUES (20756,0,2031,2);
INSERT INTO `p_rolemenulink` VALUES (20757,0,2032,2);
INSERT INTO `p_rolemenulink` VALUES (20758,0,2033,2);
INSERT INTO `p_rolemenulink` VALUES (20759,0,2034,2);
INSERT INTO `p_rolemenulink` VALUES (20760,0,2035,2);
INSERT INTO `p_rolemenulink` VALUES (20761,0,2040,2);
INSERT INTO `p_rolemenulink` VALUES (20762,0,2041,2);
INSERT INTO `p_rolemenulink` VALUES (20763,0,2042,2);
INSERT INTO `p_rolemenulink` VALUES (20764,0,2043,2);
INSERT INTO `p_rolemenulink` VALUES (20765,0,2044,2);
INSERT INTO `p_rolemenulink` VALUES (20766,0,2045,2);
INSERT INTO `p_rolemenulink` VALUES (20767,0,2050,2);
INSERT INTO `p_rolemenulink` VALUES (20768,0,2051,2);
INSERT INTO `p_rolemenulink` VALUES (20769,0,2052,2);
INSERT INTO `p_rolemenulink` VALUES (20770,0,2053,2);
INSERT INTO `p_rolemenulink` VALUES (20771,0,2054,2);
INSERT INTO `p_rolemenulink` VALUES (20772,0,2055,2);
INSERT INTO `p_rolemenulink` VALUES (20773,0,2060,2);
INSERT INTO `p_rolemenulink` VALUES (20774,0,2061,2);
INSERT INTO `p_rolemenulink` VALUES (20775,0,2062,2);
INSERT INTO `p_rolemenulink` VALUES (20776,0,2063,2);
INSERT INTO `p_rolemenulink` VALUES (20777,0,2064,2);
INSERT INTO `p_rolemenulink` VALUES (20778,0,2065,2);
INSERT INTO `p_rolemenulink` VALUES (20779,0,2070,2);
INSERT INTO `p_rolemenulink` VALUES (20780,0,2071,2);
INSERT INTO `p_rolemenulink` VALUES (20781,0,2072,2);
INSERT INTO `p_rolemenulink` VALUES (20782,0,2073,2);
INSERT INTO `p_rolemenulink` VALUES (20783,0,2074,2);
INSERT INTO `p_rolemenulink` VALUES (20784,0,2075,2);
INSERT INTO `p_rolemenulink` VALUES (20785,0,2080,2);
INSERT INTO `p_rolemenulink` VALUES (20786,0,2081,2);
INSERT INTO `p_rolemenulink` VALUES (20787,0,2082,2);
INSERT INTO `p_rolemenulink` VALUES (20788,0,2083,2);
INSERT INTO `p_rolemenulink` VALUES (20789,0,2084,2);
INSERT INTO `p_rolemenulink` VALUES (20790,0,2090,2);
INSERT INTO `p_rolemenulink` VALUES (20791,0,2091,2);
INSERT INTO `p_rolemenulink` VALUES (20792,0,2092,2);
INSERT INTO `p_rolemenulink` VALUES (20793,0,2093,2);
INSERT INTO `p_rolemenulink` VALUES (20794,0,2094,2);
INSERT INTO `p_rolemenulink` VALUES (20795,0,2095,2);
INSERT INTO `p_rolemenulink` VALUES (20796,0,2100,2);
INSERT INTO `p_rolemenulink` VALUES (20797,0,2101,2);
INSERT INTO `p_rolemenulink` VALUES (20798,0,2102,2);
INSERT INTO `p_rolemenulink` VALUES (20799,0,2103,2);
INSERT INTO `p_rolemenulink` VALUES (20800,0,2104,2);
INSERT INTO `p_rolemenulink` VALUES (20801,0,2105,2);
INSERT INTO `p_rolemenulink` VALUES (20802,0,2110,2);
INSERT INTO `p_rolemenulink` VALUES (20803,0,2111,2);
INSERT INTO `p_rolemenulink` VALUES (20804,0,2112,2);
INSERT INTO `p_rolemenulink` VALUES (20805,0,2113,2);
INSERT INTO `p_rolemenulink` VALUES (20806,0,2114,2);
INSERT INTO `p_rolemenulink` VALUES (20807,0,2115,2);
INSERT INTO `p_rolemenulink` VALUES (20808,0,2120,2);
INSERT INTO `p_rolemenulink` VALUES (20809,0,2121,2);
INSERT INTO `p_rolemenulink` VALUES (20810,0,2122,2);
INSERT INTO `p_rolemenulink` VALUES (20811,0,2123,2);
INSERT INTO `p_rolemenulink` VALUES (20812,0,2124,2);
INSERT INTO `p_rolemenulink` VALUES (20813,0,2125,2);
INSERT INTO `p_rolemenulink` VALUES (20814,0,2130,2);
INSERT INTO `p_rolemenulink` VALUES (20815,0,2131,2);
INSERT INTO `p_rolemenulink` VALUES (20816,0,2132,2);
INSERT INTO `p_rolemenulink` VALUES (20817,0,2133,2);
INSERT INTO `p_rolemenulink` VALUES (20818,0,2134,2);
INSERT INTO `p_rolemenulink` VALUES (20819,0,2135,2);
INSERT INTO `p_rolemenulink` VALUES (20820,0,2140,2);
INSERT INTO `p_rolemenulink` VALUES (20821,0,2141,2);
INSERT INTO `p_rolemenulink` VALUES (20822,0,2142,2);
INSERT INTO `p_rolemenulink` VALUES (20823,0,2143,2);
INSERT INTO `p_rolemenulink` VALUES (20824,0,2144,2);
INSERT INTO `p_rolemenulink` VALUES (20825,0,2145,2);
INSERT INTO `p_rolemenulink` VALUES (20826,0,2150,2);
INSERT INTO `p_rolemenulink` VALUES (20827,0,2151,2);
INSERT INTO `p_rolemenulink` VALUES (20828,0,2152,2);
INSERT INTO `p_rolemenulink` VALUES (20829,0,2153,2);
INSERT INTO `p_rolemenulink` VALUES (20830,0,2154,2);
INSERT INTO `p_rolemenulink` VALUES (20831,0,2155,2);
INSERT INTO `p_rolemenulink` VALUES (20832,0,2160,2);
INSERT INTO `p_rolemenulink` VALUES (20833,0,2161,2);
INSERT INTO `p_rolemenulink` VALUES (20834,0,2162,2);
INSERT INTO `p_rolemenulink` VALUES (20835,0,2163,2);
INSERT INTO `p_rolemenulink` VALUES (20836,0,2164,2);
INSERT INTO `p_rolemenulink` VALUES (20837,0,2165,2);
INSERT INTO `p_rolemenulink` VALUES (20838,0,2170,2);
INSERT INTO `p_rolemenulink` VALUES (20839,0,2171,2);
INSERT INTO `p_rolemenulink` VALUES (20840,0,2172,2);
INSERT INTO `p_rolemenulink` VALUES (20841,0,2173,2);
INSERT INTO `p_rolemenulink` VALUES (20842,0,2174,2);
INSERT INTO `p_rolemenulink` VALUES (20843,0,2175,2);
INSERT INTO `p_rolemenulink` VALUES (20844,0,2180,2);
INSERT INTO `p_rolemenulink` VALUES (20845,0,2181,2);
INSERT INTO `p_rolemenulink` VALUES (20846,0,2182,2);
INSERT INTO `p_rolemenulink` VALUES (20847,0,2183,2);
INSERT INTO `p_rolemenulink` VALUES (20848,0,2184,2);
INSERT INTO `p_rolemenulink` VALUES (20849,0,2185,2);
INSERT INTO `p_rolemenulink` VALUES (20850,0,2190,2);
INSERT INTO `p_rolemenulink` VALUES (20851,0,2191,2);
INSERT INTO `p_rolemenulink` VALUES (20852,0,2192,2);
INSERT INTO `p_rolemenulink` VALUES (20853,0,2193,2);
INSERT INTO `p_rolemenulink` VALUES (20854,0,2194,2);
INSERT INTO `p_rolemenulink` VALUES (20855,0,2195,2);
INSERT INTO `p_rolemenulink` VALUES (20856,0,2200,2);
INSERT INTO `p_rolemenulink` VALUES (20857,0,2201,2);
INSERT INTO `p_rolemenulink` VALUES (20858,0,2202,2);
INSERT INTO `p_rolemenulink` VALUES (20859,0,2203,2);
INSERT INTO `p_rolemenulink` VALUES (20860,0,2204,2);
INSERT INTO `p_rolemenulink` VALUES (20861,0,2210,2);
INSERT INTO `p_rolemenulink` VALUES (20862,0,2211,2);
INSERT INTO `p_rolemenulink` VALUES (20863,0,2212,2);
INSERT INTO `p_rolemenulink` VALUES (20864,0,2213,2);
INSERT INTO `p_rolemenulink` VALUES (20865,0,2214,2);
INSERT INTO `p_rolemenulink` VALUES (20866,0,2215,2);
INSERT INTO `p_rolemenulink` VALUES (20867,0,1100,2);
INSERT INTO `p_rolemenulink` VALUES (20868,0,1101,2);
INSERT INTO `p_rolemenulink` VALUES (20869,0,1102,2);
INSERT INTO `p_rolemenulink` VALUES (20870,0,1103,2);
INSERT INTO `p_rolemenulink` VALUES (20871,0,1104,2);
INSERT INTO `p_rolemenulink` VALUES (20872,0,1105,2);
INSERT INTO `p_rolemenulink` VALUES (20873,0,1106,2);
INSERT INTO `p_rolemenulink` VALUES (20874,0,1200,2);
INSERT INTO `p_rolemenulink` VALUES (20875,0,1201,2);
INSERT INTO `p_rolemenulink` VALUES (20876,0,1202,2);
INSERT INTO `p_rolemenulink` VALUES (20877,0,1203,2);
INSERT INTO `p_rolemenulink` VALUES (20878,0,1204,2);
INSERT INTO `p_rolemenulink` VALUES (20879,0,1205,2);
INSERT INTO `p_rolemenulink` VALUES (20880,0,1206,2);
INSERT INTO `p_rolemenulink` VALUES (20881,0,1300,2);
INSERT INTO `p_rolemenulink` VALUES (20882,0,1301,2);
INSERT INTO `p_rolemenulink` VALUES (20883,0,1302,2);
INSERT INTO `p_rolemenulink` VALUES (20884,0,1303,2);
INSERT INTO `p_rolemenulink` VALUES (20885,0,1304,2);
INSERT INTO `p_rolemenulink` VALUES (20886,0,1305,2);
INSERT INTO `p_rolemenulink` VALUES (20887,0,1400,2);
INSERT INTO `p_rolemenulink` VALUES (20888,0,1401,2);
INSERT INTO `p_rolemenulink` VALUES (20889,0,1402,2);
INSERT INTO `p_rolemenulink` VALUES (20890,0,1403,2);
INSERT INTO `p_rolemenulink` VALUES (20891,0,1404,2);
INSERT INTO `p_rolemenulink` VALUES (20892,0,1405,2);
INSERT INTO `p_rolemenulink` VALUES (20893,0,1500,2);
INSERT INTO `p_rolemenulink` VALUES (20894,0,1501,2);
INSERT INTO `p_rolemenulink` VALUES (20895,0,1502,2);
INSERT INTO `p_rolemenulink` VALUES (20896,0,1503,2);
INSERT INTO `p_rolemenulink` VALUES (20897,0,1504,2);
INSERT INTO `p_rolemenulink` VALUES (20898,0,1505,2);
INSERT INTO `p_rolemenulink` VALUES (20899,0,1620,2);
INSERT INTO `p_rolemenulink` VALUES (20900,0,1621,2);
INSERT INTO `p_rolemenulink` VALUES (20901,0,1622,2);
INSERT INTO `p_rolemenulink` VALUES (20902,0,1623,2);
INSERT INTO `p_rolemenulink` VALUES (20903,0,1624,2);
INSERT INTO `p_rolemenulink` VALUES (20904,0,1625,2);
INSERT INTO `p_rolemenulink` VALUES (20905,0,1890,2);
INSERT INTO `p_rolemenulink` VALUES (20906,0,1891,2);
INSERT INTO `p_rolemenulink` VALUES (20907,0,1892,2);
INSERT INTO `p_rolemenulink` VALUES (20908,0,1893,2);
INSERT INTO `p_rolemenulink` VALUES (20909,0,1894,2);
INSERT INTO `p_rolemenulink` VALUES (20910,0,1895,2);
INSERT INTO `p_rolemenulink` VALUES (20911,0,1900,2);
INSERT INTO `p_rolemenulink` VALUES (20912,0,1901,2);
INSERT INTO `p_rolemenulink` VALUES (20913,0,1902,2);
INSERT INTO `p_rolemenulink` VALUES (20914,0,1903,2);
INSERT INTO `p_rolemenulink` VALUES (20915,0,1904,2);
INSERT INTO `p_rolemenulink` VALUES (20916,0,1905,2);
INSERT INTO `p_rolemenulink` VALUES (20917,0,1600,2);
INSERT INTO `p_rolemenulink` VALUES (20918,0,1601,2);
INSERT INTO `p_rolemenulink` VALUES (20919,0,1602,2);
INSERT INTO `p_rolemenulink` VALUES (20920,0,1603,2);
INSERT INTO `p_rolemenulink` VALUES (20921,0,1604,2);
INSERT INTO `p_rolemenulink` VALUES (20922,0,1605,2);
INSERT INTO `p_rolemenulink` VALUES (20923,0,1700,2);
INSERT INTO `p_rolemenulink` VALUES (20924,0,1701,2);
INSERT INTO `p_rolemenulink` VALUES (20925,0,1702,2);
INSERT INTO `p_rolemenulink` VALUES (20926,0,1703,2);
INSERT INTO `p_rolemenulink` VALUES (20927,0,1704,2);
INSERT INTO `p_rolemenulink` VALUES (20928,0,1705,2);
INSERT INTO `p_rolemenulink` VALUES (20929,0,1706,2);
INSERT INTO `p_rolemenulink` VALUES (20930,0,1800,2);
INSERT INTO `p_rolemenulink` VALUES (20931,0,1801,2);
INSERT INTO `p_rolemenulink` VALUES (20932,0,1802,2);
INSERT INTO `p_rolemenulink` VALUES (20933,0,1803,2);
INSERT INTO `p_rolemenulink` VALUES (20934,0,1804,2);
INSERT INTO `p_rolemenulink` VALUES (20935,0,1805,2);
INSERT INTO `p_rolemenulink` VALUES (20936,0,1860,2);
INSERT INTO `p_rolemenulink` VALUES (20937,0,1861,2);
INSERT INTO `p_rolemenulink` VALUES (20938,0,1862,2);
INSERT INTO `p_rolemenulink` VALUES (20939,0,1863,2);
INSERT INTO `p_rolemenulink` VALUES (20940,0,1864,2);
INSERT INTO `p_rolemenulink` VALUES (20941,0,1865,2);
INSERT INTO `p_rolemenulink` VALUES (20942,0,1910,2);
INSERT INTO `p_rolemenulink` VALUES (20943,0,1911,2);
INSERT INTO `p_rolemenulink` VALUES (20944,0,1912,2);
INSERT INTO `p_rolemenulink` VALUES (20945,0,1913,2);
INSERT INTO `p_rolemenulink` VALUES (20946,0,1914,2);
INSERT INTO `p_rolemenulink` VALUES (20947,0,1915,2);
INSERT INTO `p_rolemenulink` VALUES (20948,0,1920,2);
INSERT INTO `p_rolemenulink` VALUES (20949,0,1921,2);
INSERT INTO `p_rolemenulink` VALUES (20950,0,1922,2);
INSERT INTO `p_rolemenulink` VALUES (20951,0,1923,2);
INSERT INTO `p_rolemenulink` VALUES (20952,0,1924,2);
INSERT INTO `p_rolemenulink` VALUES (20953,0,1925,2);
INSERT INTO `p_rolemenulink` VALUES (20954,0,1630,2);
INSERT INTO `p_rolemenulink` VALUES (20955,0,1631,2);
INSERT INTO `p_rolemenulink` VALUES (20956,0,1632,2);
INSERT INTO `p_rolemenulink` VALUES (20957,0,1633,2);
INSERT INTO `p_rolemenulink` VALUES (20958,0,1634,2);
INSERT INTO `p_rolemenulink` VALUES (20959,0,1635,2);
INSERT INTO `p_rolemenulink` VALUES (20960,0,1960,2);
INSERT INTO `p_rolemenulink` VALUES (20961,0,1961,2);
INSERT INTO `p_rolemenulink` VALUES (20962,0,1962,2);
INSERT INTO `p_rolemenulink` VALUES (20963,0,1963,2);
INSERT INTO `p_rolemenulink` VALUES (20964,0,1964,2);
INSERT INTO `p_rolemenulink` VALUES (20965,0,1965,2);
INSERT INTO `p_rolemenulink` VALUES (20966,0,1970,2);
INSERT INTO `p_rolemenulink` VALUES (20967,0,1971,2);
INSERT INTO `p_rolemenulink` VALUES (20968,0,1972,2);
INSERT INTO `p_rolemenulink` VALUES (20969,0,1973,2);
INSERT INTO `p_rolemenulink` VALUES (20970,0,1974,2);
INSERT INTO `p_rolemenulink` VALUES (20971,0,1975,2);
INSERT INTO `p_rolemenulink` VALUES (20972,0,1980,2);
INSERT INTO `p_rolemenulink` VALUES (20973,0,1981,2);
INSERT INTO `p_rolemenulink` VALUES (20974,0,1982,2);
INSERT INTO `p_rolemenulink` VALUES (20975,0,1983,2);
INSERT INTO `p_rolemenulink` VALUES (20976,0,1984,2);
INSERT INTO `p_rolemenulink` VALUES (20977,0,1985,2);
INSERT INTO `p_rolemenulink` VALUES (20978,0,1990,2);
INSERT INTO `p_rolemenulink` VALUES (20979,0,1991,2);
INSERT INTO `p_rolemenulink` VALUES (20980,0,1992,2);
INSERT INTO `p_rolemenulink` VALUES (20981,0,1993,2);
INSERT INTO `p_rolemenulink` VALUES (20982,0,1994,2);
INSERT INTO `p_rolemenulink` VALUES (20983,0,1995,2);
INSERT INTO `p_rolemenulink` VALUES (20984,0,1810,2);
INSERT INTO `p_rolemenulink` VALUES (20985,0,1811,2);
INSERT INTO `p_rolemenulink` VALUES (20986,0,1812,2);
INSERT INTO `p_rolemenulink` VALUES (20987,0,1813,2);
INSERT INTO `p_rolemenulink` VALUES (20988,0,1814,2);
INSERT INTO `p_rolemenulink` VALUES (20989,0,1815,2);
INSERT INTO `p_rolemenulink` VALUES (20990,0,1820,2);
INSERT INTO `p_rolemenulink` VALUES (20991,0,1821,2);
INSERT INTO `p_rolemenulink` VALUES (20992,0,1822,2);
INSERT INTO `p_rolemenulink` VALUES (20993,0,1823,2);
INSERT INTO `p_rolemenulink` VALUES (20994,0,1824,2);
INSERT INTO `p_rolemenulink` VALUES (20995,0,1825,2);
INSERT INTO `p_rolemenulink` VALUES (20996,0,1830,2);
INSERT INTO `p_rolemenulink` VALUES (20997,0,1831,2);
INSERT INTO `p_rolemenulink` VALUES (20998,0,1832,2);
INSERT INTO `p_rolemenulink` VALUES (20999,0,1833,2);
INSERT INTO `p_rolemenulink` VALUES (21000,0,1834,2);
INSERT INTO `p_rolemenulink` VALUES (21001,0,1835,2);
INSERT INTO `p_rolemenulink` VALUES (21002,0,1840,2);
INSERT INTO `p_rolemenulink` VALUES (21003,0,1841,2);
INSERT INTO `p_rolemenulink` VALUES (21004,0,1842,2);
INSERT INTO `p_rolemenulink` VALUES (21005,0,1843,2);
INSERT INTO `p_rolemenulink` VALUES (21006,0,1844,2);
INSERT INTO `p_rolemenulink` VALUES (21007,0,1845,2);
INSERT INTO `p_rolemenulink` VALUES (21008,0,1850,2);
INSERT INTO `p_rolemenulink` VALUES (21009,0,1851,2);
INSERT INTO `p_rolemenulink` VALUES (21010,0,1852,2);
INSERT INTO `p_rolemenulink` VALUES (21011,0,1853,2);
INSERT INTO `p_rolemenulink` VALUES (21012,0,1854,2);
INSERT INTO `p_rolemenulink` VALUES (21013,0,1855,2);
INSERT INTO `p_rolemenulink` VALUES (21014,0,1870,2);
INSERT INTO `p_rolemenulink` VALUES (21015,0,1871,2);
INSERT INTO `p_rolemenulink` VALUES (21016,0,1872,2);
INSERT INTO `p_rolemenulink` VALUES (21017,0,1873,2);
INSERT INTO `p_rolemenulink` VALUES (21018,0,1874,2);
INSERT INTO `p_rolemenulink` VALUES (21019,0,1875,2);
INSERT INTO `p_rolemenulink` VALUES (21020,0,1880,2);
INSERT INTO `p_rolemenulink` VALUES (21021,0,1881,2);
INSERT INTO `p_rolemenulink` VALUES (21022,0,1882,2);
INSERT INTO `p_rolemenulink` VALUES (21023,0,1883,2);
INSERT INTO `p_rolemenulink` VALUES (21024,0,1884,2);
INSERT INTO `p_rolemenulink` VALUES (21025,0,1885,2);
INSERT INTO `p_rolemenulink` VALUES (21026,0,3020,2);
INSERT INTO `p_rolemenulink` VALUES (21027,0,3021,2);
INSERT INTO `p_rolemenulink` VALUES (21028,0,3022,2);
INSERT INTO `p_rolemenulink` VALUES (21029,0,3023,2);
INSERT INTO `p_rolemenulink` VALUES (21030,0,3024,2);
INSERT INTO `p_rolemenulink` VALUES (21031,0,3030,2);
INSERT INTO `p_rolemenulink` VALUES (21032,0,3031,2);
INSERT INTO `p_rolemenulink` VALUES (21033,0,3032,2);
INSERT INTO `p_rolemenulink` VALUES (21034,0,3033,2);
INSERT INTO `p_rolemenulink` VALUES (21035,0,3034,2);
INSERT INTO `p_rolemenulink` VALUES (21036,0,3040,2);
INSERT INTO `p_rolemenulink` VALUES (21037,0,3041,2);
INSERT INTO `p_rolemenulink` VALUES (21038,0,3042,2);
INSERT INTO `p_rolemenulink` VALUES (21039,0,3043,2);
INSERT INTO `p_rolemenulink` VALUES (21040,0,3044,2);
INSERT INTO `p_rolemenulink` VALUES (21041,0,3050,2);
INSERT INTO `p_rolemenulink` VALUES (21042,0,3051,2);
INSERT INTO `p_rolemenulink` VALUES (21043,0,3052,2);
INSERT INTO `p_rolemenulink` VALUES (21044,0,3053,2);
INSERT INTO `p_rolemenulink` VALUES (21045,0,3054,2);
INSERT INTO `p_rolemenulink` VALUES (21046,0,3060,2);
INSERT INTO `p_rolemenulink` VALUES (21047,0,3061,2);
INSERT INTO `p_rolemenulink` VALUES (21048,0,3062,2);
INSERT INTO `p_rolemenulink` VALUES (21049,0,3063,2);
INSERT INTO `p_rolemenulink` VALUES (21050,0,3064,2);
INSERT INTO `p_rolemenulink` VALUES (21051,0,3070,2);
INSERT INTO `p_rolemenulink` VALUES (21052,0,3071,2);
INSERT INTO `p_rolemenulink` VALUES (21053,0,3072,2);
INSERT INTO `p_rolemenulink` VALUES (21054,0,3073,2);
INSERT INTO `p_rolemenulink` VALUES (21055,0,3074,2);
INSERT INTO `p_rolemenulink` VALUES (21056,0,3080,2);
INSERT INTO `p_rolemenulink` VALUES (21057,0,3081,2);
INSERT INTO `p_rolemenulink` VALUES (21058,0,3082,2);
INSERT INTO `p_rolemenulink` VALUES (21059,0,3083,2);
INSERT INTO `p_rolemenulink` VALUES (21060,0,3084,2);
INSERT INTO `p_rolemenulink` VALUES (21061,0,3090,2);
INSERT INTO `p_rolemenulink` VALUES (21062,0,3091,2);
INSERT INTO `p_rolemenulink` VALUES (21063,0,3092,2);
INSERT INTO `p_rolemenulink` VALUES (21064,0,3093,2);
INSERT INTO `p_rolemenulink` VALUES (21065,0,3094,2);
INSERT INTO `p_rolemenulink` VALUES (21066,0,3100,2);
INSERT INTO `p_rolemenulink` VALUES (21067,0,3101,2);
INSERT INTO `p_rolemenulink` VALUES (21068,0,3102,2);
INSERT INTO `p_rolemenulink` VALUES (21069,0,3103,2);
INSERT INTO `p_rolemenulink` VALUES (21070,0,3104,2);
INSERT INTO `p_rolemenulink` VALUES (21071,0,3110,2);
INSERT INTO `p_rolemenulink` VALUES (21072,0,3111,2);
INSERT INTO `p_rolemenulink` VALUES (21073,0,3112,2);
INSERT INTO `p_rolemenulink` VALUES (21074,0,3113,2);
INSERT INTO `p_rolemenulink` VALUES (21075,0,3114,2);
INSERT INTO `p_rolemenulink` VALUES (21076,0,3120,2);
INSERT INTO `p_rolemenulink` VALUES (21077,0,3121,2);
INSERT INTO `p_rolemenulink` VALUES (21078,0,3122,2);
INSERT INTO `p_rolemenulink` VALUES (21079,0,3123,2);
INSERT INTO `p_rolemenulink` VALUES (21080,0,3124,2);
INSERT INTO `p_rolemenulink` VALUES (21081,0,3130,2);
INSERT INTO `p_rolemenulink` VALUES (21082,0,3000,2);
INSERT INTO `p_rolemenulink` VALUES (21083,0,3001,2);
INSERT INTO `p_rolemenulink` VALUES (21084,0,3002,2);
INSERT INTO `p_rolemenulink` VALUES (21085,0,3003,2);
INSERT INTO `p_rolemenulink` VALUES (21086,0,3004,2);
INSERT INTO `p_rolemenulink` VALUES (21087,0,3010,2);
INSERT INTO `p_rolemenulink` VALUES (21088,0,3011,2);
INSERT INTO `p_rolemenulink` VALUES (21089,0,3012,2);
INSERT INTO `p_rolemenulink` VALUES (21090,0,3013,2);
INSERT INTO `p_rolemenulink` VALUES (21091,0,3014,2);
INSERT INTO `p_rolemenulink` VALUES (21092,0,1000,2);
INSERT INTO `p_rolemenulink` VALUES (21093,0,1001,2);
INSERT INTO `p_rolemenulink` VALUES (21094,0,1002,2);
INSERT INTO `p_rolemenulink` VALUES (21095,0,1003,2);
INSERT INTO `p_rolemenulink` VALUES (21096,0,1004,2);
INSERT INTO `p_rolemenulink` VALUES (21097,0,1005,2);
INSERT INTO `p_rolemenulink` VALUES (21098,0,1006,2);
INSERT INTO `p_rolemenulink` VALUES (21099,0,1010,2);
INSERT INTO `p_rolemenulink` VALUES (21100,0,5,2);
INSERT INTO `p_rolemenulink` VALUES (21101,0,9,2);
INSERT INTO `p_rolemenulink` VALUES (21102,0,10,2);
INSERT INTO `p_rolemenulink` VALUES (21103,0,11,2);
INSERT INTO `p_rolemenulink` VALUES (21104,0,25,2);
INSERT INTO `p_rolemenulink` VALUES (21105,0,6,2);
INSERT INTO `p_rolemenulink` VALUES (21106,0,13,2);
INSERT INTO `p_rolemenulink` VALUES (21107,0,14,2);
INSERT INTO `p_rolemenulink` VALUES (21108,0,15,2);
INSERT INTO `p_rolemenulink` VALUES (21109,0,16,2);
INSERT INTO `p_rolemenulink` VALUES (21110,0,17,2);
INSERT INTO `p_rolemenulink` VALUES (21111,0,18,2);
INSERT INTO `p_rolemenulink` VALUES (21112,0,26,2);
INSERT INTO `p_rolemenulink` VALUES (21113,0,7,2);
INSERT INTO `p_rolemenulink` VALUES (21114,0,8,2);
INSERT INTO `p_rolemenulink` VALUES (21115,0,19,2);
INSERT INTO `p_rolemenulink` VALUES (21116,0,20,2);
INSERT INTO `p_rolemenulink` VALUES (21117,0,21,2);
INSERT INTO `p_rolemenulink` VALUES (21118,0,24,2);
INSERT INTO `p_rolemenulink` VALUES (21119,0,27,2);
INSERT INTO `p_rolemenulink` VALUES (21120,0,28,2);
INSERT INTO `p_rolemenulink` VALUES (21121,0,29,2);
INSERT INTO `p_rolemenulink` VALUES (21122,0,30,2);
/*!40000 ALTER TABLE `p_rolemenulink` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table p_tables
#

DROP TABLE IF EXISTS `p_tables`;
CREATE TABLE `p_tables` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名称',
  `tabledesc` varchar(100) DEFAULT NULL COMMENT '描述信息',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8 COMMENT='表信息';

#
# Dumping data for table p_tables
#

LOCK TABLES `p_tables` WRITE;
/*!40000 ALTER TABLE `p_tables` DISABLE KEYS */;
INSERT INTO `p_tables` VALUES (2,'a_alterusbkey_tab',NULL);
INSERT INTO `p_tables` VALUES (3,'a_appsysalter_tab',NULL);
INSERT INTO `p_tables` VALUES (4,'a_appsysnetin_tab',NULL);
INSERT INTO `p_tables` VALUES (5,'a_authorityalter_tab',NULL);
INSERT INTO `p_tables` VALUES (6,'a_deviceinfo_tab',NULL);
INSERT INTO `p_tables` VALUES (7,'a_deviceiosys_tab',NULL);
INSERT INTO `p_tables` VALUES (8,'a_devicemaintain_tab',NULL);
INSERT INTO `p_tables` VALUES (9,'a_devicepurchase_tab',NULL);
INSERT INTO `p_tables` VALUES (10,'a_emailexamine_tab',NULL);
INSERT INTO `p_tables` VALUES (11,'a_ferrycentre_tab',NULL);
INSERT INTO `p_tables` VALUES (12,'a_informationpublish_tab',NULL);
INSERT INTO `p_tables` VALUES (13,'a_internetaccount_tab',NULL);
INSERT INTO `p_tables` VALUES (14,'a_notsecretpcout_tab',NULL);
INSERT INTO `p_tables` VALUES (15,'a_oasysalter_tab',NULL);
INSERT INTO `p_tables` VALUES (16,'a_pantchrecord_tab',NULL);
INSERT INTO `p_tables` VALUES (17,'a_secretpcout_tab',NULL);
INSERT INTO `p_tables` VALUES (18,'a_sendoutmaintain_tab',NULL);
INSERT INTO `p_tables` VALUES (19,'a_sysauthoralter_tab',NULL);
INSERT INTO `p_tables` VALUES (20,'a_sysconfigalter_tab',NULL);
INSERT INTO `p_tables` VALUES (21,'a_telltalerecord_tab',NULL);
INSERT INTO `p_tables` VALUES (22,'a_videomeeting_tab',NULL);
INSERT INTO `p_tables` VALUES (23,'a_wiresysrecord_tab',NULL);
INSERT INTO `p_tables` VALUES (24,'p_enumeration',NULL);
INSERT INTO `p_tables` VALUES (25,'p_enumerationvalue',NULL);
INSERT INTO `p_tables` VALUES (26,'p_org',NULL);
INSERT INTO `p_tables` VALUES (27,'p_role',NULL);
INSERT INTO `p_tables` VALUES (28,'p_user',NULL);
INSERT INTO `p_tables` VALUES (29,'s_applykeypart_tab',NULL);
INSERT INTO `p_tables` VALUES (30,'s_borrowmedium_tab',NULL);
INSERT INTO `p_tables` VALUES (31,'s_cancelinternet_tab',NULL);
INSERT INTO `p_tables` VALUES (32,'s_carriercontent_tab',NULL);
INSERT INTO `p_tables` VALUES (33,'s_carrypartmedium_tab',NULL);
INSERT INTO `p_tables` VALUES (34,'s_changeinternet_info_tab',NULL);
INSERT INTO `p_tables` VALUES (35,'s_changeinternet_tab',NULL);
INSERT INTO `p_tables` VALUES (36,'s_changemedium_info_tab',NULL);
INSERT INTO `p_tables` VALUES (37,'s_changemedium_tab',NULL);
INSERT INTO `p_tables` VALUES (38,'s_classifiedcopy_supervision_tab',NULL);
INSERT INTO `p_tables` VALUES (39,'s_classifiedcopy_tab',NULL);
INSERT INTO `p_tables` VALUES (40,'s_classifieddestroy_info_tab',NULL);
INSERT INTO `p_tables` VALUES (41,'s_classifieddestroy_tab',NULL);
INSERT INTO `p_tables` VALUES (42,'s_classifiedprint_tab',NULL);
INSERT INTO `p_tables` VALUES (43,'s_classifiedproject_tab',NULL);
INSERT INTO `p_tables` VALUES (44,'s_classifiedtz_info_tab',NULL);
INSERT INTO `p_tables` VALUES (45,'s_classifiedtz_tab',NULL);
INSERT INTO `p_tables` VALUES (46,'s_commitment_tab',NULL);
INSERT INTO `p_tables` VALUES (47,'s_conagreement_tab',NULL);
INSERT INTO `p_tables` VALUES (48,'s_conagreementyb_tab',NULL);
INSERT INTO `p_tables` VALUES (49,'s_confidentiality_tab',NULL);
INSERT INTO `p_tables` VALUES (50,'s_cooperationcheck_tab',NULL);
INSERT INTO `p_tables` VALUES (51,'s_depseccheck_tab',NULL);
INSERT INTO `p_tables` VALUES (52,'s_detainstandard_tab',NULL);
INSERT INTO `p_tables` VALUES (53,'s_divulgesecret_tab',NULL);
INSERT INTO `p_tables` VALUES (54,'s_employ_qualification_tab',NULL);
INSERT INTO `p_tables` VALUES (55,'s_empseccheck_tab',NULL);
INSERT INTO `p_tables` VALUES (56,'s_estoragemedium_tab',NULL);
INSERT INTO `p_tables` VALUES (57,'s_exam_classification_tab',NULL);
INSERT INTO `p_tables` VALUES (58,'s_filmingactivity_tab',NULL);
INSERT INTO `p_tables` VALUES (59,'s_foreignersvisit_tab',NULL);
INSERT INTO `p_tables` VALUES (60,'s_foreignguests_tab',NULL);
INSERT INTO `p_tables` VALUES (61,'s_foreignguestsinfo_tab',NULL);
INSERT INTO `p_tables` VALUES (62,'s_getmediuminfo_tab',NULL);
INSERT INTO `p_tables` VALUES (63,'s_interview_tab',NULL);
INSERT INTO `p_tables` VALUES (64,'s_keypartexam_tab',NULL);
INSERT INTO `p_tables` VALUES (65,'s_keypartundo_tab',NULL);
INSERT INTO `p_tables` VALUES (66,'s_leavepromise_tab',NULL);
INSERT INTO `p_tables` VALUES (67,'s_meetsecrecy_tab',NULL);
INSERT INTO `p_tables` VALUES (68,'s_meetsecrecyrecord_tab',NULL);
INSERT INTO `p_tables` VALUES (69,'s_migrantsio_tab',NULL);
INSERT INTO `p_tables` VALUES (70,'s_openapply_tab',NULL);
INSERT INTO `p_tables` VALUES (71,'s_openinfo_tab',NULL);
INSERT INTO `p_tables` VALUES (72,'s_pcinternetdeclear_tab',NULL);
INSERT INTO `p_tables` VALUES (73,'s_promise_tab',NULL);
INSERT INTO `p_tables` VALUES (74,'s_quartersubsidies_info_tab',NULL);
INSERT INTO `p_tables` VALUES (75,'s_quartersubsidies_tab',NULL);
INSERT INTO `p_tables` VALUES (76,'s_secalertrecord_tab',NULL);
INSERT INTO `p_tables` VALUES (77,'s_secexamregist_tab',NULL);
INSERT INTO `p_tables` VALUES (78,'s_secpersonnel_tab',NULL);
INSERT INTO `p_tables` VALUES (79,'s_secretonline_tab',NULL);
INSERT INTO `p_tables` VALUES (80,'s_securityedu_tab',NULL);
INSERT INTO `p_tables` VALUES (81,'s_smediumborrow_tab',NULL);
INSERT INTO `p_tables` VALUES (82,'s_socialfamily_tab',NULL);
INSERT INTO `p_tables` VALUES (83,'s_statesecrets_tab',NULL);
INSERT INTO `p_tables` VALUES (84,'s_storagemedium_info_tab',NULL);
INSERT INTO `p_tables` VALUES (85,'s_studywork_tab',NULL);
INSERT INTO `p_tables` VALUES (86,'s_subsidiesdetain_tab',NULL);
INSERT INTO `p_tables` VALUES (87,'s_subsidiesdetainper_tab',NULL);
INSERT INTO `p_tables` VALUES (88,'s_tochinas_tab',NULL);
INSERT INTO `p_tables` VALUES (89,'s_vregist_info_tab',NULL);
INSERT INTO `p_tables` VALUES (90,'s_vregist_tab','');
INSERT INTO `p_tables` VALUES (91,'test','测试表');
INSERT INTO `p_tables` VALUES (104,'test002','test002');
/*!40000 ALTER TABLE `p_tables` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table p_tablesinfo
#

DROP TABLE IF EXISTS `p_tablesinfo`;
CREATE TABLE `p_tablesinfo` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `tid` int(11) DEFAULT NULL COMMENT '表ID',
  `fieldname` varchar(100) DEFAULT NULL COMMENT '字段名称',
  `fieltype` int(11) DEFAULT NULL COMMENT '字段类型（1:字符型，2:整数型；0：其他）',
  `fieldesc` varchar(100) DEFAULT NULL COMMENT '字段描述',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=1956 DEFAULT CHARSET=utf8;

#
# Dumping data for table p_tablesinfo
#

LOCK TABLES `p_tablesinfo` WRITE;
/*!40000 ALTER TABLE `p_tablesinfo` DISABLE KEYS */;
INSERT INTO `p_tablesinfo` VALUES (1,2,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (2,2,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (3,2,'name',1,'姓名');
INSERT INTO `p_tablesinfo` VALUES (4,2,'position',1,'岗位');
INSERT INTO `p_tablesinfo` VALUES (5,2,'deptname',1,'所属部门、单位');
INSERT INTO `p_tablesinfo` VALUES (6,2,'deptid',2,'所属部门、单位id');
INSERT INTO `p_tablesinfo` VALUES (7,2,'security',1,'密级');
INSERT INTO `p_tablesinfo` VALUES (8,2,'workplace',1,'工作地点');
INSERT INTO `p_tablesinfo` VALUES (9,2,'cellphone',1,'联系电话');
INSERT INTO `p_tablesinfo` VALUES (10,2,'alterreason',2,'更换usbkey原因（0/1 原有丢失/原有损坏）');
INSERT INTO `p_tablesinfo` VALUES (11,2,'definitereason',1,'更换usbkey具体情况描述');
INSERT INTO `p_tablesinfo` VALUES (12,2,'applicantsign',1,'申请人签字');
INSERT INTO `p_tablesinfo` VALUES (13,2,'applicantid',2,'申请人id');
INSERT INTO `p_tablesinfo` VALUES (14,2,'applydate',0,'申请时间');
INSERT INTO `p_tablesinfo` VALUES (15,2,'deptopinion',1,'部门负责人意见');
INSERT INTO `p_tablesinfo` VALUES (16,2,'deptsign',1,'部门负责人签字');
INSERT INTO `p_tablesinfo` VALUES (17,2,'deptsignid',2,'部门负责人id');
INSERT INTO `p_tablesinfo` VALUES (18,2,'deptsigndate',0,'部门负责人签字日期');
INSERT INTO `p_tablesinfo` VALUES (19,2,'securityopinion',1,'保密管理部门意见');
INSERT INTO `p_tablesinfo` VALUES (20,2,'securitysign',1,'保密管理部门签字');
INSERT INTO `p_tablesinfo` VALUES (21,2,'securityid',2,'保密管理部门签字人id');
INSERT INTO `p_tablesinfo` VALUES (22,2,'securitysigndate',0,'保密管理部门签字日期');
INSERT INTO `p_tablesinfo` VALUES (23,2,'infordeptopinion',1,'信息化管理部门意见');
INSERT INTO `p_tablesinfo` VALUES (24,2,'infordeptsign',1,'信息化管理部门签字');
INSERT INTO `p_tablesinfo` VALUES (25,2,'infordeptsignid',2,'信息化管理部门签字人id');
INSERT INTO `p_tablesinfo` VALUES (26,2,'infordeptsigndate',0,'信息化管理部门签字日期');
INSERT INTO `p_tablesinfo` VALUES (27,2,'trancondition',1,'安全保密管理员办理情况');
INSERT INTO `p_tablesinfo` VALUES (28,2,'transign',1,'安全保密管理员签字');
INSERT INTO `p_tablesinfo` VALUES (29,2,'transignid',2,'安全保密管理员id');
INSERT INTO `p_tablesinfo` VALUES (30,2,'transigndate',0,'安全保密管理员签字日期');
INSERT INTO `p_tablesinfo` VALUES (31,2,'firstperson',1,'初始填写表单提交人');
INSERT INTO `p_tablesinfo` VALUES (32,2,'firstpid',2,'初始填写表单提交人id');
INSERT INTO `p_tablesinfo` VALUES (33,2,'firstsubdate',0,'初始填写表单提交日期');
INSERT INTO `p_tablesinfo` VALUES (34,3,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (35,3,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (36,3,'sysname',1,'业务系统名称');
INSERT INTO `p_tablesinfo` VALUES (37,3,'applydept',1,'申请单位');
INSERT INTO `p_tablesinfo` VALUES (38,3,'applydeptid',2,'申请单位id');
INSERT INTO `p_tablesinfo` VALUES (39,3,'applicant',1,'申请人员');
INSERT INTO `p_tablesinfo` VALUES (40,3,'applicantid',2,'申请人员id');
INSERT INTO `p_tablesinfo` VALUES (41,3,'appliydate',0,'申请日期');
INSERT INTO `p_tablesinfo` VALUES (42,3,'sysalterreason',1,'业务系统变更原因');
INSERT INTO `p_tablesinfo` VALUES (43,3,'altercontent',1,'增加（删除）模块名称/配置变更内容（包括业务模块的功能和流程，可附页）');
INSERT INTO `p_tablesinfo` VALUES (44,3,'applydeptopinion',1,'申请部门意见');
INSERT INTO `p_tablesinfo` VALUES (45,3,'applydeptsign',1,'申请部门签字');
INSERT INTO `p_tablesinfo` VALUES (46,3,'applydeptsignid',2,'申请部门签字人id');
INSERT INTO `p_tablesinfo` VALUES (47,3,'applydeptsigndate',0,'申请部门签字日期');
INSERT INTO `p_tablesinfo` VALUES (48,3,'infordeptopinion',1,'信息化管理部门意见');
INSERT INTO `p_tablesinfo` VALUES (49,3,'infordeptsign',1,'信息化管理部门签字');
INSERT INTO `p_tablesinfo` VALUES (50,3,'infordeptsignid',2,'信息化管理部门签字人id');
INSERT INTO `p_tablesinfo` VALUES (51,3,'infordeptsigndate',0,'信息化管理部门签字日期');
INSERT INTO `p_tablesinfo` VALUES (52,3,'operateresult',1,'配置变更操作结果（由系统管理员填写）');
INSERT INTO `p_tablesinfo` VALUES (53,3,'sysmanager',1,'系统管理员签字');
INSERT INTO `p_tablesinfo` VALUES (54,3,'sysmanagerid',2,'系统管理员id');
INSERT INTO `p_tablesinfo` VALUES (55,3,'managersigndate',0,'系统管理员签字日期');
INSERT INTO `p_tablesinfo` VALUES (56,3,'firstperson',1,'初始填写表单提交人');
INSERT INTO `p_tablesinfo` VALUES (57,3,'firstpid',2,'初始填写表单提交人id');
INSERT INTO `p_tablesinfo` VALUES (58,3,'firstsubdate',0,'初始填写表单提交日期');
INSERT INTO `p_tablesinfo` VALUES (59,4,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (60,4,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (61,4,'sysname',1,'应用系统名称');
INSERT INTO `p_tablesinfo` VALUES (62,4,'projectprincipal',1,'项目负责人');
INSERT INTO `p_tablesinfo` VALUES (63,4,'executivedept',1,'业务主管部门');
INSERT INTO `p_tablesinfo` VALUES (64,4,'executivedeptid',2,'业务主管部门id');
INSERT INTO `p_tablesinfo` VALUES (65,4,'deptprincipal',1,'部门负责人');
INSERT INTO `p_tablesinfo` VALUES (66,4,'sysdevelopdept',1,'系统开发单位');
INSERT INTO `p_tablesinfo` VALUES (67,4,'developor',1,'开发单位联系人');
INSERT INTO `p_tablesinfo` VALUES (68,4,'developdeptzizhi',1,'开发单位资质');
INSERT INTO `p_tablesinfo` VALUES (69,4,'security',2,'系统密级');
INSERT INTO `p_tablesinfo` VALUES (70,4,'accesspoint',1,'接入位置');
INSERT INTO `p_tablesinfo` VALUES (71,4,'applicationrange',1,'使用范围');
INSERT INTO `p_tablesinfo` VALUES (72,4,'functionsketch',1,'系统功能简述');
INSERT INTO `p_tablesinfo` VALUES (73,4,'projectdata',1,'项目立项与验收资料');
INSERT INTO `p_tablesinfo` VALUES (74,4,'environment',1,'系统运行所需软硬件环境');
INSERT INTO `p_tablesinfo` VALUES (75,4,'securitypolicy',1,'系统安全策略');
INSERT INTO `p_tablesinfo` VALUES (76,4,'filePath',1,'安全策略附件路径');
INSERT INTO `p_tablesinfo` VALUES (77,4,'setupdept',1,'立项部门意见');
INSERT INTO `p_tablesinfo` VALUES (78,4,'setupdeptsign',1,'立项部门签字');
INSERT INTO `p_tablesinfo` VALUES (79,4,'setuporid',2,'立项部门签字人id');
INSERT INTO `p_tablesinfo` VALUES (80,4,'setupordate',0,'立项部门签字日期');
INSERT INTO `p_tablesinfo` VALUES (81,4,'securityopinion',1,'保密管理部门意见');
INSERT INTO `p_tablesinfo` VALUES (82,4,'securitysign',1,'保密管理部门签字');
INSERT INTO `p_tablesinfo` VALUES (83,4,'securityid',2,'保密管理部门签字人id');
INSERT INTO `p_tablesinfo` VALUES (84,4,'securitysigndate',0,'保密管理部门签字日期');
INSERT INTO `p_tablesinfo` VALUES (85,4,'infordeptopinion',1,'信息化管理部门意见');
INSERT INTO `p_tablesinfo` VALUES (86,4,'infordeptsign',1,'信息化管理部门签字');
INSERT INTO `p_tablesinfo` VALUES (87,4,'infordeptsignid',2,'信息化管理部门签字人id');
INSERT INTO `p_tablesinfo` VALUES (88,4,'infordeptsigndate',0,'信息化管理部门签字日期');
INSERT INTO `p_tablesinfo` VALUES (89,4,'firstperson',1,'初始填写表单提交人');
INSERT INTO `p_tablesinfo` VALUES (90,4,'firstpid',2,'初始填写表单提交人id');
INSERT INTO `p_tablesinfo` VALUES (91,4,'firstsubdate',0,'初始填写表单提交日期');
INSERT INTO `p_tablesinfo` VALUES (92,5,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (93,5,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (94,5,'name',1,'姓名');
INSERT INTO `p_tablesinfo` VALUES (95,5,'position',1,'岗位');
INSERT INTO `p_tablesinfo` VALUES (96,5,'dept',1,'部门');
INSERT INTO `p_tablesinfo` VALUES (97,5,'security',1,'密级');
INSERT INTO `p_tablesinfo` VALUES (98,5,'workplace',1,'工作地点');
INSERT INTO `p_tablesinfo` VALUES (99,5,'cellphone',1,'联系电话');
INSERT INTO `p_tablesinfo` VALUES (100,5,'alterreason',1,'权限变更原因');
INSERT INTO `p_tablesinfo` VALUES (101,5,'applicantsign',1,'申请人签字');
INSERT INTO `p_tablesinfo` VALUES (102,5,'applicantid',2,'申请人id');
INSERT INTO `p_tablesinfo` VALUES (104,5,'deptleaderopinion',1,'部门领导意见');
INSERT INTO `p_tablesinfo` VALUES (105,5,'deptleadersign',1,'部门领导签字');
INSERT INTO `p_tablesinfo` VALUES (106,5,'deptleaderid',2,'部门领导id');
INSERT INTO `p_tablesinfo` VALUES (107,5,'leadersigndate',0,'部门领导签字日期');
INSERT INTO `p_tablesinfo` VALUES (108,5,'securityopinion',1,'保密管理部门意见');
INSERT INTO `p_tablesinfo` VALUES (109,5,'securitysign',1,'保密管理部门签字');
INSERT INTO `p_tablesinfo` VALUES (110,5,'securityid',2,'保密管理部门签字人id');
INSERT INTO `p_tablesinfo` VALUES (111,5,'securitysigndate',0,'保密管理部门签字日期');
INSERT INTO `p_tablesinfo` VALUES (112,5,'isfinishoperate',2,'是否完成操作（0/1 否/是）');
INSERT INTO `p_tablesinfo` VALUES (113,5,'isinformapplicat',2,'是否将完成操作结果告知申请人（0/1 否/是）');
INSERT INTO `p_tablesinfo` VALUES (114,5,'infordeptsign',1,'信息化管理部门签字');
INSERT INTO `p_tablesinfo` VALUES (115,5,'infordeptsignid',2,'信息化管理部门签字人id');
INSERT INTO `p_tablesinfo` VALUES (116,5,'infordeptsigndate',0,'信息化管理部门签字日期');
INSERT INTO `p_tablesinfo` VALUES (117,5,'firstperson',1,'初始填写表单提交人');
INSERT INTO `p_tablesinfo` VALUES (118,5,'firstpid',2,'初始填写表单提交人id');
INSERT INTO `p_tablesinfo` VALUES (119,5,'firstsubdate',0,'初始填写表单提交日期');
INSERT INTO `p_tablesinfo` VALUES (120,6,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (121,6,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (122,6,'did',2,'年度设备购置需求表id');
INSERT INTO `p_tablesinfo` VALUES (123,6,'device',1,'设备名称');
INSERT INTO `p_tablesinfo` VALUES (124,6,'devversion',1,'型号');
INSERT INTO `p_tablesinfo` VALUES (125,6,'number',2,'数量');
INSERT INTO `p_tablesinfo` VALUES (126,6,'producer',1,'生产厂家');
INSERT INTO `p_tablesinfo` VALUES (127,6,'budget',0,'预计金额');
INSERT INTO `p_tablesinfo` VALUES (128,6,'firstperson',1,'添加人');
INSERT INTO `p_tablesinfo` VALUES (129,6,'firstpid',2,'添加人id');
INSERT INTO `p_tablesinfo` VALUES (130,6,'firstsubdate',0,'添加日期');
INSERT INTO `p_tablesinfo` VALUES (131,7,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (132,7,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (133,7,'applicant',1,'申请人');
INSERT INTO `p_tablesinfo` VALUES (134,7,'applicantid',2,'申请人id');
INSERT INTO `p_tablesinfo` VALUES (135,7,'cellphone',1,'电话');
INSERT INTO `p_tablesinfo` VALUES (136,7,'appliydate',0,'申请日期');
INSERT INTO `p_tablesinfo` VALUES (137,7,'applicanttype',2,'申请人类别（0/1/2/3 正式员工/借调员工/返聘员工/其他');
INSERT INTO `p_tablesinfo` VALUES (138,7,'applicantelse',1,'申请人类别为其他内容');
INSERT INTO `p_tablesinfo` VALUES (139,7,'type',2,'类型（0/1 设备接入/设备退出）');
INSERT INTO `p_tablesinfo` VALUES (140,7,'applicantsecurity',2,'申请人密级(0/1/2/3 绝密/机密/秘密/内部)');
INSERT INTO `p_tablesinfo` VALUES (141,7,'orgname',1,'所在部门及处室');
INSERT INTO `p_tablesinfo` VALUES (142,7,'orgid',1,'所在部门及处室id');
INSERT INTO `p_tablesinfo` VALUES (143,7,'devicetype',1,'设备类型（0/1/2/3 台式机/便携式计算机/打印机/其他）');
INSERT INTO `p_tablesinfo` VALUES (144,7,'deviceelse',1,'设备类型为其他内容');
INSERT INTO `p_tablesinfo` VALUES (145,7,'deviceindex',1,'设备编号');
INSERT INTO `p_tablesinfo` VALUES (146,7,'hardpanserialnum',1,'硬盘序列号');
INSERT INTO `p_tablesinfo` VALUES (147,7,'devicesecurity',2,'设备密级（0/1/2 机密/秘密/内部）');
INSERT INTO `p_tablesinfo` VALUES (148,7,'storageplace',1,'存放地点');
INSERT INTO `p_tablesinfo` VALUES (149,7,'inoutsysname',1,'申请人申请开通(退出)系统名称');
INSERT INTO `p_tablesinfo` VALUES (150,7,'sysnameelse',1,'申请开通（退出）系统名称其他');
INSERT INTO `p_tablesinfo` VALUES (151,7,'insysreason',2,'申请接入原因（0/1/2 旧设备换新设备/新员工入职接入新设备/其他）');
INSERT INTO `p_tablesinfo` VALUES (152,7,'inreasonelse',1,'申请接入原因其他内容');
INSERT INTO `p_tablesinfo` VALUES (153,7,'outsysreason',2,'申请退出原因（0/1/2 设备报废/离职/其他）');
INSERT INTO `p_tablesinfo` VALUES (154,7,'outreasonelse',1,'申请退出原因其他内容');
INSERT INTO `p_tablesinfo` VALUES (155,7,'applydeptopinion',1,'申请部门意见');
INSERT INTO `p_tablesinfo` VALUES (156,7,'applydeptsign',1,'申请部门签字');
INSERT INTO `p_tablesinfo` VALUES (157,7,'applydeptsignid',2,'申请部门签字人id');
INSERT INTO `p_tablesinfo` VALUES (158,7,'applydeptsigndate',0,'申请部门签字日期');
INSERT INTO `p_tablesinfo` VALUES (159,7,'infordeptopinion',1,'信息化管理部门意见');
INSERT INTO `p_tablesinfo` VALUES (160,7,'infordeptsign',1,'信息化管理部门签字');
INSERT INTO `p_tablesinfo` VALUES (161,7,'infordeptsignid',2,'信息化管理部门签字人id');
INSERT INTO `p_tablesinfo` VALUES (162,7,'infordeptsigndate',0,'信息化管理部门签字日期');
INSERT INTO `p_tablesinfo` VALUES (163,7,'devprincipalsign',1,'设备负责人签字');
INSERT INTO `p_tablesinfo` VALUES (164,7,'devprincipalid',2,'设备负责人id');
INSERT INTO `p_tablesinfo` VALUES (165,7,'devprincipalsigndate',0,'设备负责人签字日期');
INSERT INTO `p_tablesinfo` VALUES (166,7,'devrecipientsign',1,'设备接收人签字');
INSERT INTO `p_tablesinfo` VALUES (167,7,'devrecipientid',2,'设备接收人id');
INSERT INTO `p_tablesinfo` VALUES (168,7,'devrecipientsigndate',0,'设备接收人签字日期');
INSERT INTO `p_tablesinfo` VALUES (169,7,'isclearinformation',2,'是否已完成信息清除（0/1 否/是）');
INSERT INTO `p_tablesinfo` VALUES (170,7,'isremovefirmware',2,'是否已拆除存储固件（0/1 否/是）');
INSERT INTO `p_tablesinfo` VALUES (171,7,'istransferdevice',2,'设备是否移交（0/1 否/是）');
INSERT INTO `p_tablesinfo` VALUES (172,7,'operatorsign',1,'操作人签字  存储介质信息消除、拆除、设备移交情况');
INSERT INTO `p_tablesinfo` VALUES (173,7,'operatorid',2,'操作人id 存储介质信息消除、拆除、设备移交情况');
INSERT INTO `p_tablesinfo` VALUES (174,7,'operatorsigndate',0,'操作人签字时间 存储介质信息消除、拆除、设备移交情况');
INSERT INTO `p_tablesinfo` VALUES (175,7,'storeinforecipient',1,'接收人签字  存储介质信息消除、拆除、设备移交情况');
INSERT INTO `p_tablesinfo` VALUES (176,7,'storeinforecipientid',2,'接收人id  存储介质信息消除、拆除、设备移交情况');
INSERT INTO `p_tablesinfo` VALUES (177,7,'recipientdate',0,'接收人签字日期');
INSERT INTO `p_tablesinfo` VALUES (178,7,'allocationip',1,'分配（关闭）的IP地址');
INSERT INTO `p_tablesinfo` VALUES (179,7,'switchboard',2,'交换机操作（0/1 开放/关闭）');
INSERT INTO `p_tablesinfo` VALUES (180,7,'switchboardname',1,'操作的交换机的名称');
INSERT INTO `p_tablesinfo` VALUES (181,7,'switchboardsign',1,'交换机操作人签字');
INSERT INTO `p_tablesinfo` VALUES (182,7,'switchboardsignid',2,'交换机操作人id');
INSERT INTO `p_tablesinfo` VALUES (183,7,'switchboarddate',0,'交换机操作人签字日期');
INSERT INTO `p_tablesinfo` VALUES (184,7,'isoa',1,'OA');
INSERT INTO `p_tablesinfo` VALUES (185,7,'oaoperatorsign',1,'OA 操作人签字');
INSERT INTO `p_tablesinfo` VALUES (186,7,'oaoperatorid',2,'OA 操作人id');
INSERT INTO `p_tablesinfo` VALUES (187,7,'oaoperatordate',0,'OA 操作人签字日期');
INSERT INTO `p_tablesinfo` VALUES (188,7,'domainemail',1,'域控、邮件、网间、打印、主审、三合一、其他');
INSERT INTO `p_tablesinfo` VALUES (189,7,'domainemailelse',1,'域控等其他');
INSERT INTO `p_tablesinfo` VALUES (190,7,'domainoperator',1,'域控等操作人签字');
INSERT INTO `p_tablesinfo` VALUES (191,7,'domainoperatorid',2,'域控等操作人id');
INSERT INTO `p_tablesinfo` VALUES (192,7,'domaindate',0,'域控等操作人签字日期');
INSERT INTO `p_tablesinfo` VALUES (193,7,'isupdate',2,'台账是否更新（0/1 否/是）');
INSERT INTO `p_tablesinfo` VALUES (194,7,'isinform',2,'是否将台账信息告知申请人部门台账管理员（0/1 否/是）');
INSERT INTO `p_tablesinfo` VALUES (195,7,'isrecord',2,'是否到保密管理部门备案（0/1 否/是）');
INSERT INTO `p_tablesinfo` VALUES (196,7,'recordorsign',1,'备案人签字');
INSERT INTO `p_tablesinfo` VALUES (197,7,'recordorid',2,'备案人id');
INSERT INTO `p_tablesinfo` VALUES (198,7,'recordordate',0,'备案人签字日期');
INSERT INTO `p_tablesinfo` VALUES (199,7,'managersign',1,'信息档案部资产管理人员签字');
INSERT INTO `p_tablesinfo` VALUES (200,7,'managerid',2,'信息档案部资产管理人员id');
INSERT INTO `p_tablesinfo` VALUES (201,7,'managersigndate',0,'信息档案部资产管理人员签字日期');
INSERT INTO `p_tablesinfo` VALUES (202,7,'firstperson',1,'初始填写表单提交人');
INSERT INTO `p_tablesinfo` VALUES (203,7,'firstpid',2,'初始填写表单提交人id');
INSERT INTO `p_tablesinfo` VALUES (204,7,'firstsubdate',0,'初始填写表单提交日期');
INSERT INTO `p_tablesinfo` VALUES (205,8,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (206,8,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (207,8,'devprincipal',1,'设备责任人');
INSERT INTO `p_tablesinfo` VALUES (208,8,'orgname',1,'所属部门');
INSERT INTO `p_tablesinfo` VALUES (209,8,'orgid',1,'所属部门id');
INSERT INTO `p_tablesinfo` VALUES (210,8,'devicename',1,'设备名称');
INSERT INTO `p_tablesinfo` VALUES (211,8,'deviceindex',1,'设备编号');
INSERT INTO `p_tablesinfo` VALUES (212,8,'devicesecurity',1,'设备密级');
INSERT INTO `p_tablesinfo` VALUES (213,8,'faultdescribe',1,'设备责任人描述故障现象');
INSERT INTO `p_tablesinfo` VALUES (214,8,'alterelse',1,'口令及账户解锁、更改其他内容');
INSERT INTO `p_tablesinfo` VALUES (215,8,'descripelse',1,'故障现象其他内容');
INSERT INTO `p_tablesinfo` VALUES (216,8,'softname',1,'软件名称及来源');
INSERT INTO `p_tablesinfo` VALUES (217,8,'devprincipalsign',1,'设备责任人签字');
INSERT INTO `p_tablesinfo` VALUES (218,8,'devprincipalid',2,'设备责任人id');
INSERT INTO `p_tablesinfo` VALUES (219,8,'devprincipaldate',0,'设备责任人签字日期');
INSERT INTO `p_tablesinfo` VALUES (220,8,'diagnosecase',1,'维修人员诊断情况');
INSERT INTO `p_tablesinfo` VALUES (221,8,'diagnoseelse',1,'其他情况');
INSERT INTO `p_tablesinfo` VALUES (222,8,'diagnosesign',1,'诊断人员签字');
INSERT INTO `p_tablesinfo` VALUES (223,8,'diagnoseid',2,'诊断人员id');
INSERT INTO `p_tablesinfo` VALUES (224,8,'diagnosedate',0,'诊断人员签字日期');
INSERT INTO `p_tablesinfo` VALUES (225,8,'applydeptopinion',1,'申请人部门意见');
INSERT INTO `p_tablesinfo` VALUES (226,8,'applydeptsign',1,'申请人部门签字');
INSERT INTO `p_tablesinfo` VALUES (227,8,'applydeptsignid',2,'申请人部门签字id');
INSERT INTO `p_tablesinfo` VALUES (228,8,'applydeptsigndate',0,'申请人部门签字日期');
INSERT INTO `p_tablesinfo` VALUES (229,8,'infordeptopinion',1,'信息化管理部门意见');
INSERT INTO `p_tablesinfo` VALUES (230,8,'infordeptsign',1,'信息化管理部门签字');
INSERT INTO `p_tablesinfo` VALUES (231,8,'infordeptsignid',2,'信息化管理部门签字人id');
INSERT INTO `p_tablesinfo` VALUES (232,8,'infordeptsigndate',0,'信息化管理部门签字日期');
INSERT INTO `p_tablesinfo` VALUES (233,8,'hardpanserialnum',1,'新硬盘序列号');
INSERT INTO `p_tablesinfo` VALUES (234,8,'mac',1,'新网卡MAC地址');
INSERT INTO `p_tablesinfo` VALUES (235,8,'faultreason',1,'故障原因');
INSERT INTO `p_tablesinfo` VALUES (236,8,'maintainplace',1,'维修地址');
INSERT INTO `p_tablesinfo` VALUES (237,8,'processmethod',1,'维修过程和方法');
INSERT INTO `p_tablesinfo` VALUES (238,8,'maintainresult',1,'维修结果');
INSERT INTO `p_tablesinfo` VALUES (239,8,'resysdate',0,'重装的操作系统日期');
INSERT INTO `p_tablesinfo` VALUES (240,8,'maintainsign',1,'维修人签字');
INSERT INTO `p_tablesinfo` VALUES (241,8,'maintainid',2,'维修人id');
INSERT INTO `p_tablesinfo` VALUES (242,8,'maintainsigndate',0,'维修人签字日期');
INSERT INTO `p_tablesinfo` VALUES (243,8,'accompansign',1,'站旁陪同人员（设备责任人）签字');
INSERT INTO `p_tablesinfo` VALUES (244,8,'accompansigndate',0,'站旁陪同人员签字日期');
INSERT INTO `p_tablesinfo` VALUES (245,8,'ohardpanserialnum',1,'旧硬盘序列号');
INSERT INTO `p_tablesinfo` VALUES (246,8,'transfersign',1,'移交人签字');
INSERT INTO `p_tablesinfo` VALUES (247,8,'transferid',2,'移交人id');
INSERT INTO `p_tablesinfo` VALUES (248,8,'transferdate',0,'移交人签字日期');
INSERT INTO `p_tablesinfo` VALUES (249,8,'recipientsign',1,'接收人签字');
INSERT INTO `p_tablesinfo` VALUES (250,8,'recipientid',2,'接收人id');
INSERT INTO `p_tablesinfo` VALUES (251,8,'recipientsigndate',0,'接收人签字日期');
INSERT INTO `p_tablesinfo` VALUES (252,8,'isupdate',2,'台账是否更新（0/1 否/是）');
INSERT INTO `p_tablesinfo` VALUES (253,8,'managersign',1,'信息档案部资产管理人员签字');
INSERT INTO `p_tablesinfo` VALUES (254,8,'managerid',2,'信息档案部资产管理人员id');
INSERT INTO `p_tablesinfo` VALUES (255,8,'managersigndate',0,'信息档案部资产管理人员签字日期');
INSERT INTO `p_tablesinfo` VALUES (256,8,'firstperson',1,'初始填写表单提交人');
INSERT INTO `p_tablesinfo` VALUES (257,8,'firstpid',2,'初始填写表单提交人id');
INSERT INTO `p_tablesinfo` VALUES (258,8,'firstsubdate',0,'初始填写表单提交日期');
INSERT INTO `p_tablesinfo` VALUES (259,9,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (260,9,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (261,9,'applydept',1,'申请部门');
INSERT INTO `p_tablesinfo` VALUES (262,9,'applydeptid',2,'申请部门id');
INSERT INTO `p_tablesinfo` VALUES (263,9,'applydate',0,'申请日期 表单内容上方日期');
INSERT INTO `p_tablesinfo` VALUES (264,9,'purchasereason',1,'购置原因');
INSERT INTO `p_tablesinfo` VALUES (265,9,'deptopinion',1,'本部门意见');
INSERT INTO `p_tablesinfo` VALUES (266,9,'deptsign',1,'本部门签字');
INSERT INTO `p_tablesinfo` VALUES (267,9,'deptsignid',2,'本部门签字人id');
INSERT INTO `p_tablesinfo` VALUES (268,9,'signdate',0,'本部门签字日期');
INSERT INTO `p_tablesinfo` VALUES (269,9,'firstperson',1,'初始填写表单提交人');
INSERT INTO `p_tablesinfo` VALUES (270,9,'firstpid',2,'初始填写表单提交人id');
INSERT INTO `p_tablesinfo` VALUES (271,9,'firstsubdate',0,'初始填写表单提交日期');
INSERT INTO `p_tablesinfo` VALUES (272,9,'niandu',0,'年度');
INSERT INTO `p_tablesinfo` VALUES (273,10,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (274,10,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (275,10,'deptname',1,'申请人所在单位（部门）');
INSERT INTO `p_tablesinfo` VALUES (276,10,'deptid',2,'申请人所在单位（部门）id');
INSERT INTO `p_tablesinfo` VALUES (277,10,'applicant',1,'申请人');
INSERT INTO `p_tablesinfo` VALUES (278,10,'offices',1,'申请人所在处室');
INSERT INTO `p_tablesinfo` VALUES (279,10,'officesid',2,'申请人所在处室id');
INSERT INTO `p_tablesinfo` VALUES (280,10,'linktype',1,'联系方式');
INSERT INTO `p_tablesinfo` VALUES (281,10,'openreason',1,'申请开通外网邮箱原因');
INSERT INTO `p_tablesinfo` VALUES (282,10,'revokereason',1,'申请撤销外网邮箱原因');
INSERT INTO `p_tablesinfo` VALUES (283,10,'applicantsign',1,'申请人填写原因签字');
INSERT INTO `p_tablesinfo` VALUES (284,10,'applicantid',2,'申请人id');
INSERT INTO `p_tablesinfo` VALUES (285,10,'applicantdate',0,'申请人填写原因签字日期');
INSERT INTO `p_tablesinfo` VALUES (286,10,'applydeptopinion',1,'申请人所在部门或单位意见');
INSERT INTO `p_tablesinfo` VALUES (287,10,'applydeptsign',1,'申请人所在部门或单位签字');
INSERT INTO `p_tablesinfo` VALUES (288,10,'applydeptsignid',2,'申请人所在部门或单位签字id');
INSERT INTO `p_tablesinfo` VALUES (289,10,'applydeptsigndate',0,'申请人所在部门后单位签字日期');
INSERT INTO `p_tablesinfo` VALUES (290,10,'archivesdept',1,'信息档案部审查意见');
INSERT INTO `p_tablesinfo` VALUES (291,10,'archivessign',1,'信息档案部签字');
INSERT INTO `p_tablesinfo` VALUES (292,10,'archivesid',2,'信息档案部签字人id');
INSERT INTO `p_tablesinfo` VALUES (293,10,'archivesdate',0,'信息档案部签字日期');
INSERT INTO `p_tablesinfo` VALUES (294,10,'operatrecord',1,'网管操作结果记录');
INSERT INTO `p_tablesinfo` VALUES (295,10,'webmaster',1,'网管签字');
INSERT INTO `p_tablesinfo` VALUES (296,10,'webmasterid',2,'网管id');
INSERT INTO `p_tablesinfo` VALUES (297,10,'webmasterdate',0,'网管签字日期');
INSERT INTO `p_tablesinfo` VALUES (298,10,'firstperson',1,'初始填写表单提交人');
INSERT INTO `p_tablesinfo` VALUES (299,10,'firstpid',2,'初始填写表单提交人id');
INSERT INTO `p_tablesinfo` VALUES (300,10,'firstsubdate',0,'初始填写表单提交日期');
INSERT INTO `p_tablesinfo` VALUES (301,11,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (302,11,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (303,11,'applydept',1,'申请部门');
INSERT INTO `p_tablesinfo` VALUES (304,11,'applydeptid',2,'申请部门id');
INSERT INTO `p_tablesinfo` VALUES (305,11,'security',2,'处理信息最高密级');
INSERT INTO `p_tablesinfo` VALUES (306,11,'linkman',1,'联系人');
INSERT INTO `p_tablesinfo` VALUES (307,11,'cellphone',1,'联系电话');
INSERT INTO `p_tablesinfo` VALUES (308,11,'createplace',1,'建立地点');
INSERT INTO `p_tablesinfo` VALUES (309,11,'applydate',0,'申请时间');
INSERT INTO `p_tablesinfo` VALUES (310,11,'ferryer',1,'摆渡员姓名');
INSERT INTO `p_tablesinfo` VALUES (311,11,'ferryersecurity',2,'摆渡员密级');
INSERT INTO `p_tablesinfo` VALUES (312,11,'applyreason',1,'申请原因');
INSERT INTO `p_tablesinfo` VALUES (313,11,'applydeptopinion',1,'申请部门意见');
INSERT INTO `p_tablesinfo` VALUES (314,11,'applydeptsign',1,'申请部门签字');
INSERT INTO `p_tablesinfo` VALUES (315,11,'applydeptsignid',2,'申请部门签字id');
INSERT INTO `p_tablesinfo` VALUES (316,11,'applydeptsigndate',0,'申请部门签字日期');
INSERT INTO `p_tablesinfo` VALUES (317,11,'securityopinion',1,'保密管理部门意见');
INSERT INTO `p_tablesinfo` VALUES (318,11,'securitysign',1,'保密管理部门签字');
INSERT INTO `p_tablesinfo` VALUES (319,11,'securityid',2,'保密管理部门签字人id');
INSERT INTO `p_tablesinfo` VALUES (320,11,'securitysigndate',0,'保密管理部门签字日期');
INSERT INTO `p_tablesinfo` VALUES (321,11,'infordeptopinion',1,'信息化管理部门意见');
INSERT INTO `p_tablesinfo` VALUES (322,11,'infordeptsign',1,'信息化管理部门签字');
INSERT INTO `p_tablesinfo` VALUES (323,11,'infordeptsignid',2,'信息化管理部门签字人id');
INSERT INTO `p_tablesinfo` VALUES (324,11,'infordeptsigndate',0,'信息化管理部门签字日期');
INSERT INTO `p_tablesinfo` VALUES (325,11,'trancondition',1,'安全保密管理员办理情况');
INSERT INTO `p_tablesinfo` VALUES (326,11,'transign',1,'安全保密管理员签字');
INSERT INTO `p_tablesinfo` VALUES (327,11,'transignid',2,'安全保密管理员id');
INSERT INTO `p_tablesinfo` VALUES (328,11,'transigndate',0,'安全保密管理员签字日期');
INSERT INTO `p_tablesinfo` VALUES (329,11,'firstperson',1,'初始填写表单提交人');
INSERT INTO `p_tablesinfo` VALUES (330,11,'firstpid',2,'初始填写表单提交人id');
INSERT INTO `p_tablesinfo` VALUES (331,11,'firstsubdate',0,'初始填写表单提交日期');
INSERT INTO `p_tablesinfo` VALUES (332,12,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (333,12,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (334,12,'applydept',1,'申请部门或单位');
INSERT INTO `p_tablesinfo` VALUES (335,12,'applydeptid',2,'申请部门或单位id');
INSERT INTO `p_tablesinfo` VALUES (336,12,'applicant',1,'申请人');
INSERT INTO `p_tablesinfo` VALUES (337,12,'applicantid',2,'申请人id');
INSERT INTO `p_tablesinfo` VALUES (338,12,'publishcontent',1,'发布内容');
INSERT INTO `p_tablesinfo` VALUES (339,12,'applydate',0,'申请日期');
INSERT INTO `p_tablesinfo` VALUES (340,12,'applydeptopinion',1,'申请部门意见');
INSERT INTO `p_tablesinfo` VALUES (341,12,'applydeptsign',1,'申请部门签字');
INSERT INTO `p_tablesinfo` VALUES (342,12,'applydeptsignid',2,'申请部门签字id');
INSERT INTO `p_tablesinfo` VALUES (343,12,'applydeptsigndate',0,'申请部门签字日期');
INSERT INTO `p_tablesinfo` VALUES (344,12,'securityopinion',1,'保密管理部门审查意见');
INSERT INTO `p_tablesinfo` VALUES (345,12,'securitysign',1,'保密管理部门签字');
INSERT INTO `p_tablesinfo` VALUES (346,12,'securityid',2,'保密管理部门签字人id');
INSERT INTO `p_tablesinfo` VALUES (347,12,'securitysigndate',0,'保密管理部门签字日期');
INSERT INTO `p_tablesinfo` VALUES (348,12,'bonddeptopinion',1,'证券部审核意见');
INSERT INTO `p_tablesinfo` VALUES (349,12,'bonddeptsign',1,'证券部签字');
INSERT INTO `p_tablesinfo` VALUES (350,12,'bondsignid',2,'证券部签字人id');
INSERT INTO `p_tablesinfo` VALUES (351,12,'bondsigndate',0,'证券部签字日期');
INSERT INTO `p_tablesinfo` VALUES (352,12,'leader',1,'院主管领导意见');
INSERT INTO `p_tablesinfo` VALUES (353,12,'leadersign',1,'院主管领导签字');
INSERT INTO `p_tablesinfo` VALUES (354,12,'leaderid',2,'院主管领导id');
INSERT INTO `p_tablesinfo` VALUES (355,12,'leadersignid',0,'院主管领导签字日期');
INSERT INTO `p_tablesinfo` VALUES (356,12,'infordeptopinion',1,'信息化管理部门执行说明');
INSERT INTO `p_tablesinfo` VALUES (357,12,'infordeptsign',1,'信息化管理部门签字');
INSERT INTO `p_tablesinfo` VALUES (358,12,'infordeptsignid',2,'信息化管理部门签字人id');
INSERT INTO `p_tablesinfo` VALUES (359,12,'infordeptsigndate',0,'信息化管理部门签字日期');
INSERT INTO `p_tablesinfo` VALUES (360,12,'firstperson',1,'初始填写表单提交人');
INSERT INTO `p_tablesinfo` VALUES (361,12,'firstpid',2,'初始填写表单提交人id');
INSERT INTO `p_tablesinfo` VALUES (362,12,'firstsubdate',0,'初始填写表单提交日期');
INSERT INTO `p_tablesinfo` VALUES (363,13,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (364,13,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (365,13,'applicant',1,'申请人');
INSERT INTO `p_tablesinfo` VALUES (366,13,'applicantid',2,'申请人id');
INSERT INTO `p_tablesinfo` VALUES (367,13,'deptname',1,'所在部门/单位');
INSERT INTO `p_tablesinfo` VALUES (368,13,'deptid',2,'所在部门/单位id');
INSERT INTO `p_tablesinfo` VALUES (369,13,'userlist',1,'外网实名用户名单（可附件）');
INSERT INTO `p_tablesinfo` VALUES (370,13,'linkman',1,'联系人');
INSERT INTO `p_tablesinfo` VALUES (371,13,'cellphone',1,'联系电话');
INSERT INTO `p_tablesinfo` VALUES (372,13,'openreason',1,'开通原因');
INSERT INTO `p_tablesinfo` VALUES (373,13,'revokereason',1,'撤销原因');
INSERT INTO `p_tablesinfo` VALUES (374,13,'applydeptopinion',1,'申请部门/单位意见');
INSERT INTO `p_tablesinfo` VALUES (375,13,'applydeptsign',1,'申请部门/单位签字');
INSERT INTO `p_tablesinfo` VALUES (376,13,'applydeptsignid',2,'申请部门/单位签字id');
INSERT INTO `p_tablesinfo` VALUES (377,13,'applydeptsigndate',0,'申请部门/单位签字日期');
INSERT INTO `p_tablesinfo` VALUES (378,13,'dutyofficer',1,'责任人签字');
INSERT INTO `p_tablesinfo` VALUES (379,13,'dutyofficerid',2,'责任人id');
INSERT INTO `p_tablesinfo` VALUES (380,13,'dutyofficerdate',0,'责任人签字日期');
INSERT INTO `p_tablesinfo` VALUES (381,13,'isfinish',2,'是否完成开通（撤销）申请账号（0/1 否/是）');
INSERT INTO `p_tablesinfo` VALUES (382,13,'operatrecord',1,'操作记录情况');
INSERT INTO `p_tablesinfo` VALUES (383,13,'recorder',1,'操作记录人员签字');
INSERT INTO `p_tablesinfo` VALUES (384,13,'recorderid',2,'操作记录人员id');
INSERT INTO `p_tablesinfo` VALUES (385,13,'recorddate',0,'操作记录签字日期');
INSERT INTO `p_tablesinfo` VALUES (386,13,'firstperson',1,'初始填写表单提交人');
INSERT INTO `p_tablesinfo` VALUES (387,13,'firstpid',2,'初始填写表单提交人id');
INSERT INTO `p_tablesinfo` VALUES (388,13,'firstsubdate',0,'初始填写表单提交日期');
INSERT INTO `p_tablesinfo` VALUES (389,14,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (390,14,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (391,14,'deptname',1,'所在部门');
INSERT INTO `p_tablesinfo` VALUES (392,14,'deptid',2,'所在部门id');
INSERT INTO `p_tablesinfo` VALUES (393,14,'borrower',1,'借用人');
INSERT INTO `p_tablesinfo` VALUES (394,14,'outplace',1,'外出地点');
INSERT INTO `p_tablesinfo` VALUES (395,14,'devicenum',1,'设备编号');
INSERT INTO `p_tablesinfo` VALUES (396,14,'diskfrom',1,'光盘来源');
INSERT INTO `p_tablesinfo` VALUES (397,14,'mediumnum',1,'移动介质编号');
INSERT INTO `p_tablesinfo` VALUES (398,14,'issecret',2,'移动介质是否为非密（0/1 否/是）');
INSERT INTO `p_tablesinfo` VALUES (399,14,'borrowreason',1,'借用事由及拟处理信息内容');
INSERT INTO `p_tablesinfo` VALUES (400,14,'borrowersign',1,'保密责任书借用人签字');
INSERT INTO `p_tablesinfo` VALUES (401,14,'borrowerid',2,'借用人id');
INSERT INTO `p_tablesinfo` VALUES (402,14,'borrowersigndate',0,'保密责任书借用人签字日期');
INSERT INTO `p_tablesinfo` VALUES (403,14,'deptleaderopinion',1,'部门领导意见');
INSERT INTO `p_tablesinfo` VALUES (404,14,'deptleadersign',1,'部门领导签字');
INSERT INTO `p_tablesinfo` VALUES (405,14,'deptleaderid',2,'部门领导id');
INSERT INTO `p_tablesinfo` VALUES (406,14,'leadersigndate',0,'部门领导签字日期');
INSERT INTO `p_tablesinfo` VALUES (407,14,'devtransfer',1,'设备移交情况');
INSERT INTO `p_tablesinfo` VALUES (408,14,'receivesign',1,'借用人领用签字');
INSERT INTO `p_tablesinfo` VALUES (409,14,'receivesigndate',0,'借用人领用签字日期');
INSERT INTO `p_tablesinfo` VALUES (410,14,'returncondition',1,'返回检查及归还情况');
INSERT INTO `p_tablesinfo` VALUES (411,14,'checkersign',1,'检查人签字');
INSERT INTO `p_tablesinfo` VALUES (412,14,'checkerid',2,'检查人id');
INSERT INTO `p_tablesinfo` VALUES (413,14,'checkersigndate',0,'检查人签字日期');
INSERT INTO `p_tablesinfo` VALUES (414,14,'devmanager',1,'设备管理人员接收设备签字');
INSERT INTO `p_tablesinfo` VALUES (415,14,'devmanagerid',2,'设备管理人员id');
INSERT INTO `p_tablesinfo` VALUES (416,14,'devmansigndate',0,'设备管理人员签字日期');
INSERT INTO `p_tablesinfo` VALUES (417,14,'securityopinion',1,'保密管理部门意见');
INSERT INTO `p_tablesinfo` VALUES (418,14,'securitysign',1,'保密管理部门签字');
INSERT INTO `p_tablesinfo` VALUES (419,14,'securityid',2,'保密管理部门签字人id');
INSERT INTO `p_tablesinfo` VALUES (420,14,'securitysigndate',0,'保密管理部门签字日期');
INSERT INTO `p_tablesinfo` VALUES (421,14,'firstperson',1,'初始填写表单提交人');
INSERT INTO `p_tablesinfo` VALUES (422,14,'firstpid',2,'初始填写表单提交人id');
INSERT INTO `p_tablesinfo` VALUES (423,14,'firstsubdate',0,'初始填写表单提交日期');
INSERT INTO `p_tablesinfo` VALUES (424,15,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (425,15,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (426,15,'formdate',0,'表单内容上方的日期');
INSERT INTO `p_tablesinfo` VALUES (427,15,'agent',1,'经办人');
INSERT INTO `p_tablesinfo` VALUES (428,15,'cellphone',1,'联系电话');
INSERT INTO `p_tablesinfo` VALUES (429,15,'managetype',1,'办理类型');
INSERT INTO `p_tablesinfo` VALUES (430,15,'deptalter',1,'部门新增或变更名称');
INSERT INTO `p_tablesinfo` VALUES (431,15,'chushialter',1,'处室新增或变更名称');
INSERT INTO `p_tablesinfo` VALUES (432,15,'typeelse',1,'办理类型其他内容');
INSERT INTO `p_tablesinfo` VALUES (433,15,'askfor',1,'办理要求');
INSERT INTO `p_tablesinfo` VALUES (434,15,'applydeptopinion',1,'申请部门意见');
INSERT INTO `p_tablesinfo` VALUES (435,15,'applydeptsign',1,'申请部门签字');
INSERT INTO `p_tablesinfo` VALUES (436,15,'applydeptsignid',2,'申请部门签字人id');
INSERT INTO `p_tablesinfo` VALUES (437,15,'applydeptsigndate',0,'申请部门签字日期');
INSERT INTO `p_tablesinfo` VALUES (438,15,'officeopinion',1,'办公室意见');
INSERT INTO `p_tablesinfo` VALUES (439,15,'officesign',1,'办公室签字');
INSERT INTO `p_tablesinfo` VALUES (440,15,'officesignid',2,'办公室签字人id');
INSERT INTO `p_tablesinfo` VALUES (441,15,'officesigndate',0,'办公室签字日期');
INSERT INTO `p_tablesinfo` VALUES (442,15,'investopinion',1,'经营投资部意见');
INSERT INTO `p_tablesinfo` VALUES (443,15,'investsign',1,'经营投资部签字');
INSERT INTO `p_tablesinfo` VALUES (444,15,'investsignid',2,'经营投资部签字人id');
INSERT INTO `p_tablesinfo` VALUES (445,15,'investsigndate',0,'经营投资部签字日期');
INSERT INTO `p_tablesinfo` VALUES (446,15,'trancondition',1,'办理情况');
INSERT INTO `p_tablesinfo` VALUES (447,15,'transign',1,'办理情况填写人签字');
INSERT INTO `p_tablesinfo` VALUES (448,15,'transignid',2,'办理情况填写人id');
INSERT INTO `p_tablesinfo` VALUES (449,15,'transigndate',0,'办理情况签字日期');
INSERT INTO `p_tablesinfo` VALUES (450,15,'firstperson',1,'初始填写表单提交人');
INSERT INTO `p_tablesinfo` VALUES (451,15,'firstpid',2,'初始填写表单提交人id');
INSERT INTO `p_tablesinfo` VALUES (452,15,'firstsubdate',0,'初始填写表单提交日期');
INSERT INTO `p_tablesinfo` VALUES (453,16,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (454,16,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (455,16,'checkdate',0,'检查日期');
INSERT INTO `p_tablesinfo` VALUES (456,16,'checkplace',1,'检查地点');
INSERT INTO `p_tablesinfo` VALUES (457,16,'checkcondition',1,'检查情况');
INSERT INTO `p_tablesinfo` VALUES (458,16,'checker',1,'检查人');
INSERT INTO `p_tablesinfo` VALUES (459,16,'checkerid',2,'检查人id');
INSERT INTO `p_tablesinfo` VALUES (460,16,'remark',1,'备注');
INSERT INTO `p_tablesinfo` VALUES (461,16,'firstperson',1,'添加人');
INSERT INTO `p_tablesinfo` VALUES (462,16,'firstpid',2,'添加人id');
INSERT INTO `p_tablesinfo` VALUES (463,16,'firstsubdate',0,'添加日期');
INSERT INTO `p_tablesinfo` VALUES (464,17,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (465,17,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (466,17,'deptname',1,'所在部门');
INSERT INTO `p_tablesinfo` VALUES (467,17,'deptid',2,'所在部门id');
INSERT INTO `p_tablesinfo` VALUES (468,17,'user',1,'使用人');
INSERT INTO `p_tablesinfo` VALUES (469,17,'outplace',1,'外出地点');
INSERT INTO `p_tablesinfo` VALUES (470,17,'devicenum',1,'设备编号');
INSERT INTO `p_tablesinfo` VALUES (471,17,'devicesecurity',1,'设备密级');
INSERT INTO `p_tablesinfo` VALUES (472,17,'iscontentsecret',2,'是否存储涉密信息（0/1 否/是）');
INSERT INTO `p_tablesinfo` VALUES (473,17,'diskfrom',1,'光盘来源');
INSERT INTO `p_tablesinfo` VALUES (474,17,'mediumnum',1,'移动介质编号');
INSERT INTO `p_tablesinfo` VALUES (475,17,'mediumsecurity',1,'移动介质密级');
INSERT INTO `p_tablesinfo` VALUES (476,17,'impboxnum',1,'单向导入盒编号');
INSERT INTO `p_tablesinfo` VALUES (477,17,'impboxsecurity',1,'单向导入盒密级');
INSERT INTO `p_tablesinfo` VALUES (478,17,'borrowreason',1,'借用事由及拟处理信息内容');
INSERT INTO `p_tablesinfo` VALUES (479,17,'applyopenport',1,'申请开放端口');
INSERT INTO `p_tablesinfo` VALUES (480,17,'openportelse',1,'申请开放端口其他内容');
INSERT INTO `p_tablesinfo` VALUES (481,17,'applyinstallsoft',1,'申请需安装软件');
INSERT INTO `p_tablesinfo` VALUES (482,17,'usersign',1,'使用人签字 保密责任书');
INSERT INTO `p_tablesinfo` VALUES (483,17,'userid',2,'使用人id 保密责任书');
INSERT INTO `p_tablesinfo` VALUES (484,17,'usersigndate',0,'使用人签字日期 保密责任书');
INSERT INTO `p_tablesinfo` VALUES (485,17,'deptleaderopinion',1,'部门领导意见');
INSERT INTO `p_tablesinfo` VALUES (486,17,'deptleadersign',1,'部门领导签字');
INSERT INTO `p_tablesinfo` VALUES (487,17,'deptleaderid',2,'部门领导id');
INSERT INTO `p_tablesinfo` VALUES (488,17,'leadersigndate',0,'部门领导签字日期');
INSERT INTO `p_tablesinfo` VALUES (489,17,'isupdate',2,'安全产品是否升级（0/1 否/是）');
INSERT INTO `p_tablesinfo` VALUES (490,17,'updateversion',1,'版本号');
INSERT INTO `p_tablesinfo` VALUES (491,17,'openport',1,'开放端口');
INSERT INTO `p_tablesinfo` VALUES (492,17,'portelse',1,'开放端口其他内容');
INSERT INTO `p_tablesinfo` VALUES (493,17,'installsoft',1,'需安装软件');
INSERT INTO `p_tablesinfo` VALUES (494,17,'operator1',1,'操作员1 安全产品升级及开放端口情况操作员签字');
INSERT INTO `p_tablesinfo` VALUES (495,17,'operatorid1',2,'操作员1 id');
INSERT INTO `p_tablesinfo` VALUES (496,17,'operatordate1',0,'操作员1签字日期');
INSERT INTO `p_tablesinfo` VALUES (497,17,'receiver',1,'领用人签字');
INSERT INTO `p_tablesinfo` VALUES (498,17,'receiverid',2,'领用人id');
INSERT INTO `p_tablesinfo` VALUES (499,17,'receiverdate',0,'领用人签字日期');
INSERT INTO `p_tablesinfo` VALUES (500,17,'checkcondition',1,'返回检查情况');
INSERT INTO `p_tablesinfo` VALUES (501,17,'conditionelse',1,'返回检查情况其他内容');
INSERT INTO `p_tablesinfo` VALUES (502,17,'transfersign',1,'设备移交人签字');
INSERT INTO `p_tablesinfo` VALUES (503,17,'transferid',2,'设备移交人id');
INSERT INTO `p_tablesinfo` VALUES (504,17,'transferdate',0,'移交人签字日期');
INSERT INTO `p_tablesinfo` VALUES (505,17,'checkersign',1,'检查人签字');
INSERT INTO `p_tablesinfo` VALUES (506,17,'checkerid',2,'检查人id');
INSERT INTO `p_tablesinfo` VALUES (507,17,'checkersigndate',0,'检查人签字日期');
INSERT INTO `p_tablesinfo` VALUES (508,17,'portcondition',1,'信息清除及端口关闭情况');
INSERT INTO `p_tablesinfo` VALUES (509,17,'closeSolutionelse',1,'信息清除及端口关闭情况其他');
INSERT INTO `p_tablesinfo` VALUES (510,17,'operator2',1,'操作员2 信息清除及端口关闭情况操作员签字');
INSERT INTO `p_tablesinfo` VALUES (511,17,'operatorid2',2,'操作员2 id');
INSERT INTO `p_tablesinfo` VALUES (512,17,'operatordate2',0,'操作员2 签字日期');
INSERT INTO `p_tablesinfo` VALUES (513,17,'securityopinion',1,'保密管理部门意见');
INSERT INTO `p_tablesinfo` VALUES (514,17,'securitysign',1,'保密管理部门签字');
INSERT INTO `p_tablesinfo` VALUES (515,17,'securityid',2,'保密管理部门签字人id');
INSERT INTO `p_tablesinfo` VALUES (516,17,'securitysigndate',0,'保密管理部门签字日期');
INSERT INTO `p_tablesinfo` VALUES (517,17,'firstperson',1,'初始填写表单提交人');
INSERT INTO `p_tablesinfo` VALUES (518,17,'firstpid',2,'初始填写表单提交人id');
INSERT INTO `p_tablesinfo` VALUES (519,17,'firstsubdate',0,'初始填写表单提交日期');
INSERT INTO `p_tablesinfo` VALUES (520,18,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (521,18,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (522,18,'applicant',1,'申请人');
INSERT INTO `p_tablesinfo` VALUES (523,18,'applicantid',2,'申请人id');
INSERT INTO `p_tablesinfo` VALUES (524,18,'devprincipal',1,'设备责任人');
INSERT INTO `p_tablesinfo` VALUES (525,18,'devprincipalid',2,'设备责任人id');
INSERT INTO `p_tablesinfo` VALUES (526,18,'maintaintype',1,'维修方式');
INSERT INTO `p_tablesinfo` VALUES (527,18,'deviceindex',1,'设备编号');
INSERT INTO `p_tablesinfo` VALUES (528,18,'devicesecurity',1,'设备密级');
INSERT INTO `p_tablesinfo` VALUES (529,18,'outlanderdept',1,'外来人员单位');
INSERT INTO `p_tablesinfo` VALUES (530,18,'issignsecret1',2,'是否与外来人员单位签订保密协议（0/1 否/是）');
INSERT INTO `p_tablesinfo` VALUES (531,18,'isaptitude1',2,'外来人员单位是否具有相关资质（0/1 否/是）');
INSERT INTO `p_tablesinfo` VALUES (532,18,'assignaccompan',1,'拟定旁站陪同人');
INSERT INTO `p_tablesinfo` VALUES (533,18,'sendoutdept',1,'送外单位');
INSERT INTO `p_tablesinfo` VALUES (534,18,'isremovedisk',2,'是否拆除存储介质和固件（0/1 否/是）');
INSERT INTO `p_tablesinfo` VALUES (535,18,'issignsecret2',2,'是否与送外单位签订保密协议（0/1 否/是）');
INSERT INTO `p_tablesinfo` VALUES (536,18,'isaptitude2',2,'送外单位是否具有相关资质（0/1 否/是）');
INSERT INTO `p_tablesinfo` VALUES (537,18,'assignsender',1,'拟定送修人');
INSERT INTO `p_tablesinfo` VALUES (538,18,'infordeptopinion',1,'信息化管理部门意见');
INSERT INTO `p_tablesinfo` VALUES (539,18,'infordeptsign',1,'信息化管理部门签字');
INSERT INTO `p_tablesinfo` VALUES (540,18,'infordeptsignid',2,'信息化管理部门签字人id');
INSERT INTO `p_tablesinfo` VALUES (541,18,'infordeptsigndate',0,'信息化管理部门签字日期');
INSERT INTO `p_tablesinfo` VALUES (542,18,'deviceuser',1,'设备使用人移交设备签字');
INSERT INTO `p_tablesinfo` VALUES (543,18,'deviceuserid',2,'设备使用人id');
INSERT INTO `p_tablesinfo` VALUES (544,18,'divuserdate',0,'设备使用人签字日期');
INSERT INTO `p_tablesinfo` VALUES (545,18,'senderreceive',1,'送修人接收签字');
INSERT INTO `p_tablesinfo` VALUES (546,18,'senderid',2,'送修人id');
INSERT INTO `p_tablesinfo` VALUES (547,18,'senderdate',0,'送修人接收签字日期');
INSERT INTO `p_tablesinfo` VALUES (548,18,'senddate',0,'送外时间');
INSERT INTO `p_tablesinfo` VALUES (549,18,'returndate',0,'返回时间');
INSERT INTO `p_tablesinfo` VALUES (550,18,'issignsecret3',2,'是否与外来人员或送外维修单位人员签订保密协议（0/1 否/是）');
INSERT INTO `p_tablesinfo` VALUES (551,18,'faultreason',1,'故障原因');
INSERT INTO `p_tablesinfo` VALUES (552,18,'processmethod',1,'维修过程和方法');
INSERT INTO `p_tablesinfo` VALUES (553,18,'maintainresult',1,'维修结果');
INSERT INTO `p_tablesinfo` VALUES (554,18,'maintainsign',1,'维修人签字');
INSERT INTO `p_tablesinfo` VALUES (555,18,'maintainsignid',2,'维修人员id  可能为外部人员');
INSERT INTO `p_tablesinfo` VALUES (556,18,'maintainsigndate',0,'维修人签字日期');
INSERT INTO `p_tablesinfo` VALUES (557,18,'accompansign',1,'站旁陪同人员签字');
INSERT INTO `p_tablesinfo` VALUES (558,18,'accompansigndate',0,'站旁陪同人员签字日期');
INSERT INTO `p_tablesinfo` VALUES (559,18,'accompanid',2,'站旁陪同人员id');
INSERT INTO `p_tablesinfo` VALUES (560,18,'receive',1,'设备使用人接收设备签字');
INSERT INTO `p_tablesinfo` VALUES (561,18,'receivedate',0,'设备使用人接收设备签字日期');
INSERT INTO `p_tablesinfo` VALUES (562,18,'sendertransfer',1,'送修人移交设备签字');
INSERT INTO `p_tablesinfo` VALUES (563,18,'transferdate',0,'送修人移交设备签字日期');
INSERT INTO `p_tablesinfo` VALUES (564,18,'remark',1,'备注');
INSERT INTO `p_tablesinfo` VALUES (565,18,'firstperson',1,'初始填写表单提交人');
INSERT INTO `p_tablesinfo` VALUES (566,18,'firstpid',2,'初始填写表单提交人id');
INSERT INTO `p_tablesinfo` VALUES (567,18,'firstsubdate',0,'初始填写表单提交日期');
INSERT INTO `p_tablesinfo` VALUES (568,19,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (569,19,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (570,19,'sysname',1,'应用系统名称');
INSERT INTO `p_tablesinfo` VALUES (571,19,'nowauthor',1,'现有用户权限');
INSERT INTO `p_tablesinfo` VALUES (572,19,'afterauthor',1,'变更后的用户权限');
INSERT INTO `p_tablesinfo` VALUES (573,19,'firstperson',1,'添加人');
INSERT INTO `p_tablesinfo` VALUES (574,19,'firstpid',2,'添加人id');
INSERT INTO `p_tablesinfo` VALUES (575,19,'firstsubdate',0,'添加日期');
INSERT INTO `p_tablesinfo` VALUES (576,19,'did',2,'用户权限变更审批表id');
INSERT INTO `p_tablesinfo` VALUES (577,20,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (578,20,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (579,20,'applicant',1,'系统配置变更申请人');
INSERT INTO `p_tablesinfo` VALUES (580,20,'applicantid',2,'系统配置变更申请人id');
INSERT INTO `p_tablesinfo` VALUES (581,20,'applydate',0,'申请日期');
INSERT INTO `p_tablesinfo` VALUES (582,20,'devorsysname',1,'变更设备或系统名称');
INSERT INTO `p_tablesinfo` VALUES (583,20,'alterreason',1,'配置变更原因');
INSERT INTO `p_tablesinfo` VALUES (584,20,'contentanalyze',1,'配置变更内容及影响情况分析');
INSERT INTO `p_tablesinfo` VALUES (585,20,'infordeptopinion',1,'信息化管理部门意见');
INSERT INTO `p_tablesinfo` VALUES (586,20,'infordeptsign',1,'信息化管理部门签字');
INSERT INTO `p_tablesinfo` VALUES (587,20,'infordeptsignid',2,'信息化管理部门签字人id');
INSERT INTO `p_tablesinfo` VALUES (588,20,'infordeptsigndate',0,'信息化管理部门签字日期');
INSERT INTO `p_tablesinfo` VALUES (589,20,'securityopinion',1,'保密管理部门意见');
INSERT INTO `p_tablesinfo` VALUES (590,20,'securitysign',1,'保密管理部门签字');
INSERT INTO `p_tablesinfo` VALUES (591,20,'securityid',2,'保密管理部门签字人id');
INSERT INTO `p_tablesinfo` VALUES (592,20,'securitysigndate',0,'保密管理部门签字日期');
INSERT INTO `p_tablesinfo` VALUES (593,20,'resultanalyze',1,'配置变更操作结果及影响情况分析');
INSERT INTO `p_tablesinfo` VALUES (594,20,'operatorsign',1,'操作人签字');
INSERT INTO `p_tablesinfo` VALUES (595,20,'operatorid',2,'操作人id');
INSERT INTO `p_tablesinfo` VALUES (596,20,'operatorsigndate',0,'操作人签字时间');
INSERT INTO `p_tablesinfo` VALUES (597,20,'firstperson',1,'初始填写表单提交人');
INSERT INTO `p_tablesinfo` VALUES (598,20,'firstpid',2,'初始填写表单提交人id');
INSERT INTO `p_tablesinfo` VALUES (599,20,'firstsubdate',0,'初始填写表单提交日期');
INSERT INTO `p_tablesinfo` VALUES (600,21,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (601,21,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (602,21,'eventtype',2,'事件类型');
INSERT INTO `p_tablesinfo` VALUES (603,21,'happendate',0,'发生时间');
INSERT INTO `p_tablesinfo` VALUES (604,21,'happenreason',1,'发生原因');
INSERT INTO `p_tablesinfo` VALUES (605,21,'effectrange',1,'影响范围');
INSERT INTO `p_tablesinfo` VALUES (606,21,'measures',1,'补救措施');
INSERT INTO `p_tablesinfo` VALUES (607,21,'result',1,'最终结果');
INSERT INTO `p_tablesinfo` VALUES (608,21,'informant',1,'填报人');
INSERT INTO `p_tablesinfo` VALUES (609,21,'informantid',2,'填报人id');
INSERT INTO `p_tablesinfo` VALUES (610,21,'checker',1,'部门审核人');
INSERT INTO `p_tablesinfo` VALUES (611,21,'checkerid',2,'部门审核人id');
INSERT INTO `p_tablesinfo` VALUES (612,21,'firstperson',1,'初始填写表单提交人');
INSERT INTO `p_tablesinfo` VALUES (613,21,'firstpid',2,'初始填写表单提交人id');
INSERT INTO `p_tablesinfo` VALUES (614,21,'firstsubdate',0,'初始填写表单提交日期');
INSERT INTO `p_tablesinfo` VALUES (615,22,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (616,22,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (617,22,'meetingname',1,'会议名称');
INSERT INTO `p_tablesinfo` VALUES (618,22,'applyorgname',1,'申请部门（单位）');
INSERT INTO `p_tablesinfo` VALUES (619,22,'applyorgid',1,'申请部门id');
INSERT INTO `p_tablesinfo` VALUES (620,22,'applicant',1,'申请人');
INSERT INTO `p_tablesinfo` VALUES (621,22,'applicantid',2,'申请人id');
INSERT INTO `p_tablesinfo` VALUES (622,22,'cellphone',1,'联系电话');
INSERT INTO `p_tablesinfo` VALUES (623,22,'meetingtype',2,'会议形式（0/1/2 集团/院本部/其他）');
INSERT INTO `p_tablesinfo` VALUES (624,22,'meetingplace',1,'会议地点');
INSERT INTO `p_tablesinfo` VALUES (625,22,'meetplaceqt',1,'会议地点其他');
INSERT INTO `p_tablesinfo` VALUES (626,22,'meetingagenda',1,'会议议程');
INSERT INTO `p_tablesinfo` VALUES (627,22,'jingqu',1,'视频会议参会单位（京区）');
INSERT INTO `p_tablesinfo` VALUES (628,22,'jingwai',1,'视频会议参会单位（京外）');
INSERT INTO `p_tablesinfo` VALUES (629,22,'meetingtime',0,'会议时间');
INSERT INTO `p_tablesinfo` VALUES (630,22,'jointdebugtime',0,'联调时间');
INSERT INTO `p_tablesinfo` VALUES (631,22,'isppt',2,'是否需要播放PPT、录像片（0/1 否/是）');
INSERT INTO `p_tablesinfo` VALUES (632,22,'meetingmode',2,'会议模式（0/1 主会场发言，分会场收看/主分会场均有发言）');
INSERT INTO `p_tablesinfo` VALUES (633,22,'speakplace',1,'发言会场（京区）');
INSERT INTO `p_tablesinfo` VALUES (634,22,'deptopinion',1,'承办部门/单位意见');
INSERT INTO `p_tablesinfo` VALUES (635,22,'deptsign',1,'承办部门/单位签字');
INSERT INTO `p_tablesinfo` VALUES (636,22,'deptid',1,'承办部门/单位id');
INSERT INTO `p_tablesinfo` VALUES (637,22,'deptsigndate',0,'承办部门/单位签字日期');
INSERT INTO `p_tablesinfo` VALUES (638,22,'speakplaceout',1,'发言会场（京外）');
INSERT INTO `p_tablesinfo` VALUES (639,22,'firstperson',1,'初始填写表单提交人');
INSERT INTO `p_tablesinfo` VALUES (640,22,'firstpid',2,'初始填写表单提交人id');
INSERT INTO `p_tablesinfo` VALUES (641,22,'firstsubdate',0,'初始填写表单提交日期');
INSERT INTO `p_tablesinfo` VALUES (642,23,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (643,23,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (644,23,'checkdate',0,'检查日期');
INSERT INTO `p_tablesinfo` VALUES (645,23,'checkplace',1,'检查地点');
INSERT INTO `p_tablesinfo` VALUES (646,23,'checkcondition',1,'检查情况');
INSERT INTO `p_tablesinfo` VALUES (647,23,'checker',1,'检查人');
INSERT INTO `p_tablesinfo` VALUES (648,23,'checkerid',2,'检查人id');
INSERT INTO `p_tablesinfo` VALUES (649,23,'remark',1,'备注');
INSERT INTO `p_tablesinfo` VALUES (650,23,'firstperson',1,'添加人');
INSERT INTO `p_tablesinfo` VALUES (651,23,'firstpid',2,'添加人id');
INSERT INTO `p_tablesinfo` VALUES (652,23,'firstsubdate',0,'添加日期');
INSERT INTO `p_tablesinfo` VALUES (653,24,'id',2,'');
INSERT INTO `p_tablesinfo` VALUES (654,24,'version',2,'');
INSERT INTO `p_tablesinfo` VALUES (655,24,'enName',1,'');
INSERT INTO `p_tablesinfo` VALUES (656,24,'displayRef',1,'');
INSERT INTO `p_tablesinfo` VALUES (657,24,'description',1,'');
INSERT INTO `p_tablesinfo` VALUES (658,24,'enumerationType',2,'');
INSERT INTO `p_tablesinfo` VALUES (659,24,'creator',2,'');
INSERT INTO `p_tablesinfo` VALUES (660,24,'isIndexSHow',2,'');
INSERT INTO `p_tablesinfo` VALUES (661,24,'pxorder',2,'');
INSERT INTO `p_tablesinfo` VALUES (662,25,'id',2,'');
INSERT INTO `p_tablesinfo` VALUES (663,25,'version',2,'');
INSERT INTO `p_tablesinfo` VALUES (664,25,'valueName',1,'');
INSERT INTO `p_tablesinfo` VALUES (665,25,'displayRef',1,'');
INSERT INTO `p_tablesinfo` VALUES (666,25,'description',1,'');
INSERT INTO `p_tablesinfo` VALUES (667,25,'enumeration',2,'');
INSERT INTO `p_tablesinfo` VALUES (668,25,'creator',2,'');
INSERT INTO `p_tablesinfo` VALUES (669,25,'pxorder',2,'');
INSERT INTO `p_tablesinfo` VALUES (670,26,'ID',2,'');
INSERT INTO `p_tablesinfo` VALUES (671,26,'VERSION',2,'');
INSERT INTO `p_tablesinfo` VALUES (672,26,'NAME',1,'机构名称');
INSERT INTO `p_tablesinfo` VALUES (673,26,'DESCRIPTION',1,'机构描述');
INSERT INTO `p_tablesinfo` VALUES (674,26,'PARENT',2,'机构父ID 根机构父ID为0');
INSERT INTO `p_tablesinfo` VALUES (675,26,'PARENTNAME',1,'父机构名称');
INSERT INTO `p_tablesinfo` VALUES (676,26,'DELETED',2,'是否删除  0/否   1/是');
INSERT INTO `p_tablesinfo` VALUES (677,26,'ORGTYPE',0,'机构类型');
INSERT INTO `p_tablesinfo` VALUES (678,26,'CLICKNUM',2,'点击量');
INSERT INTO `p_tablesinfo` VALUES (679,26,'CREATOR',2,'创建人ID');
INSERT INTO `p_tablesinfo` VALUES (680,26,'CREATORNAME',1,'建创人名称');
INSERT INTO `p_tablesinfo` VALUES (681,26,'ADDRESS',1,'地址');
INSERT INTO `p_tablesinfo` VALUES (682,26,'CREATEDATE',0,'创建日期');
INSERT INTO `p_tablesinfo` VALUES (683,27,'ID',2,'');
INSERT INTO `p_tablesinfo` VALUES (684,27,'VERSION',2,'');
INSERT INTO `p_tablesinfo` VALUES (685,27,'NAME',1,'角色名称');
INSERT INTO `p_tablesinfo` VALUES (686,27,'DISPLAYREF',1,'显示名称');
INSERT INTO `p_tablesinfo` VALUES (687,27,'DESCRIPTION',1,'描述');
INSERT INTO `p_tablesinfo` VALUES (688,27,'CREATOR',2,'创建人');
INSERT INTO `p_tablesinfo` VALUES (689,27,'ISGLOB',2,'是否有全局权限 1:是 2：不是');
INSERT INTO `p_tablesinfo` VALUES (690,28,'ID',2,'');
INSERT INTO `p_tablesinfo` VALUES (691,28,'NAME',1,'登陆名称(注册/新增 验证唯一性)');
INSERT INTO `p_tablesinfo` VALUES (692,28,'NICKNAME',1,'昵称');
INSERT INTO `p_tablesinfo` VALUES (693,28,'REALNAME',1,'真实姓名');
INSERT INTO `p_tablesinfo` VALUES (694,28,'PASSWORD',1,'密码(MD5)');
INSERT INTO `p_tablesinfo` VALUES (695,28,'SEX',2,'性别');
INSERT INTO `p_tablesinfo` VALUES (696,28,'BIRTHDAY',0,'生日');
INSERT INTO `p_tablesinfo` VALUES (697,28,'MAIL',1,'邮箱');
INSERT INTO `p_tablesinfo` VALUES (698,28,'CARD',1,'身份证');
INSERT INTO `p_tablesinfo` VALUES (699,28,'PHONE',1,'电话');
INSERT INTO `p_tablesinfo` VALUES (700,28,'CELLPHONE',1,'手机');
INSERT INTO `p_tablesinfo` VALUES (701,28,'DIPLOMA',2,'学历');
INSERT INTO `p_tablesinfo` VALUES (702,28,'CLAN',2,'党派');
INSERT INTO `p_tablesinfo` VALUES (703,28,'WORKUNIT',1,'单位');
INSERT INTO `p_tablesinfo` VALUES (704,28,'ADDRESS',1,'所在社区');
INSERT INTO `p_tablesinfo` VALUES (705,28,'POSTCODE',1,'邮政编码');
INSERT INTO `p_tablesinfo` VALUES (706,28,'HEADPICPATH',1,'头像路径');
INSERT INTO `p_tablesinfo` VALUES (707,28,'WORKDATE',0,'参加工作时间');
INSERT INTO `p_tablesinfo` VALUES (708,28,'CREATEDATE',0,'创建日期');
INSERT INTO `p_tablesinfo` VALUES (709,28,'UPDATEDATE',0,'更新日期');
INSERT INTO `p_tablesinfo` VALUES (710,28,'LASTLOGINDATE',0,'最后登录时间');
INSERT INTO `p_tablesinfo` VALUES (711,28,'ACCOUNTOVERDATE',0,'帐号使用截至日期');
INSERT INTO `p_tablesinfo` VALUES (712,28,'STUDYOVERDUEDATE',0,'学习课程截至日期');
INSERT INTO `p_tablesinfo` VALUES (713,28,'ISBATHCARD',2,'是否是批量开发用户  0/1   否/是 字典');
INSERT INTO `p_tablesinfo` VALUES (714,28,'BATHCARDNUM',1,'批量开卡号');
INSERT INTO `p_tablesinfo` VALUES (715,28,'DESCRIPTION',1,'个性签名');
INSERT INTO `p_tablesinfo` VALUES (716,28,'ISOPEN',2,'是否开通 0/1/2 否/是/停用');
INSERT INTO `p_tablesinfo` VALUES (717,28,'PWDQUESTION',1,'密码问题');
INSERT INTO `p_tablesinfo` VALUES (718,28,'PWDANSWER',1,'密码答案');
INSERT INTO `p_tablesinfo` VALUES (719,28,'VERSION',2,'版本信息');
INSERT INTO `p_tablesinfo` VALUES (720,28,'ORGID',2,'所在机构ID');
INSERT INTO `p_tablesinfo` VALUES (721,28,'ORGNAME',1,'所在机构名称');
INSERT INTO `p_tablesinfo` VALUES (722,28,'ISGROUP',2,'是否是集团账号 1:是 2:否');
INSERT INTO `p_tablesinfo` VALUES (723,28,'ismanager',2,'是否是管理员(1:管理员，2:个人用户，3:企业用户)');
INSERT INTO `p_tablesinfo` VALUES (724,28,'rolenames',1,'角色名称');
INSERT INTO `p_tablesinfo` VALUES (725,28,'importinfo',1,'导入的其他信息');
INSERT INTO `p_tablesinfo` VALUES (726,28,'importinfo1',1,'入班标识');
INSERT INTO `p_tablesinfo` VALUES (727,29,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (728,29,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (729,29,'iototal',2,'出入人员总数');
INSERT INTO `p_tablesinfo` VALUES (730,29,'partname',1,'要害部门部位名称');
INSERT INTO `p_tablesinfo` VALUES (731,29,'acofficials',1,'陪同人员');
INSERT INTO `p_tablesinfo` VALUES (732,29,'enterreason',1,'进入原因');
INSERT INTO `p_tablesinfo` VALUES (733,29,'enterdate',0,'拟进入时间');
INSERT INTO `p_tablesinfo` VALUES (734,29,'stopdate',0,'预计停留时间');
INSERT INTO `p_tablesinfo` VALUES (735,29,'departmentdesc',1,'申请部门审查意见');
INSERT INTO `p_tablesinfo` VALUES (736,29,'departmentsign',1,'申请部门审查签字');
INSERT INTO `p_tablesinfo` VALUES (737,29,'departmentid',2,'申请部门签字人id');
INSERT INTO `p_tablesinfo` VALUES (738,29,'depdate',0,'申请部门签字日期');
INSERT INTO `p_tablesinfo` VALUES (739,29,'partheaddesc',1,'保密要害部门部位所属部门领导意见');
INSERT INTO `p_tablesinfo` VALUES (740,29,'partheadsign',1,'保密要害部门部位所属部门领导意见签字');
INSERT INTO `p_tablesinfo` VALUES (741,29,'pdepartmentid',2,'保密要害部门部位所属部门领导id');
INSERT INTO `p_tablesinfo` VALUES (742,29,'partheaddate',0,'保密要害部门部位所属部门领导签字日期');
INSERT INTO `p_tablesinfo` VALUES (743,29,'isregist',2,'是否登记 0/1 否/是');
INSERT INTO `p_tablesinfo` VALUES (744,29,'isstorage',2,'手机是否存入手机屏蔽柜 0/1 否/是');
INSERT INTO `p_tablesinfo` VALUES (745,29,'isdeviceentry',2,'是否带具有拍照、摄录、无线发射功能的设备进入保密要害部门部位 0/1否/是');
INSERT INTO `p_tablesinfo` VALUES (746,29,'otherrecord',1,'其他情况记录');
INSERT INTO `p_tablesinfo` VALUES (747,29,'acofficialssign',1,'要害部门、部位所在部门制定旁站陪同人员签字');
INSERT INTO `p_tablesinfo` VALUES (748,29,'acfficialsid',2,'陪同人员id');
INSERT INTO `p_tablesinfo` VALUES (749,29,'acofficialsdate',0,'陪同人员签字时间');
INSERT INTO `p_tablesinfo` VALUES (750,29,'username',1,'处理人姓名');
INSERT INTO `p_tablesinfo` VALUES (751,29,'userid',2,'处理人id');
INSERT INTO `p_tablesinfo` VALUES (752,30,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (753,30,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (754,30,'borrowdate',0,'登记日期');
INSERT INTO `p_tablesinfo` VALUES (755,30,'mediumtype',2,'介质类型');
INSERT INTO `p_tablesinfo` VALUES (756,30,'mclassified',2,'介质密级');
INSERT INTO `p_tablesinfo` VALUES (757,30,'scode',1,'保密编号');
INSERT INTO `p_tablesinfo` VALUES (758,30,'devicecode',1,'连接设备编号');
INSERT INTO `p_tablesinfo` VALUES (759,30,'dclassified',2,'连接设备密级');
INSERT INTO `p_tablesinfo` VALUES (760,30,'ulimite',1,'借用期限');
INSERT INTO `p_tablesinfo` VALUES (761,30,'usesign',1,'使用人签字');
INSERT INTO `p_tablesinfo` VALUES (762,30,'uid',2,'使用人id');
INSERT INTO `p_tablesinfo` VALUES (763,30,'receivedate',0,'返回时间');
INSERT INTO `p_tablesinfo` VALUES (764,30,'checkdesc',1,'检查情况');
INSERT INTO `p_tablesinfo` VALUES (765,30,'cname',1,'检查人');
INSERT INTO `p_tablesinfo` VALUES (766,30,'cid',2,'检查人id');
INSERT INTO `p_tablesinfo` VALUES (767,30,'username',1,'处理人姓名');
INSERT INTO `p_tablesinfo` VALUES (768,30,'userid',2,'处理人id');
INSERT INTO `p_tablesinfo` VALUES (769,31,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (770,31,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (771,31,'unit',1,'申报单位');
INSERT INTO `p_tablesinfo` VALUES (772,31,'unitid',1,'单位id');
INSERT INTO `p_tablesinfo` VALUES (773,31,'shead',1,'申报部门或单位保密负责人');
INSERT INTO `p_tablesinfo` VALUES (774,31,'office',1,'联网计算机所在处、室');
INSERT INTO `p_tablesinfo` VALUES (775,31,'models',1,'联网机型');
INSERT INTO `p_tablesinfo` VALUES (776,31,'haddress',1,'主机（MAC）地址');
INSERT INTO `p_tablesinfo` VALUES (777,31,'serialnum',1,'硬盘序列号');
INSERT INTO `p_tablesinfo` VALUES (778,31,'isspecial',2,'是否专机专用 0/1否/是');
INSERT INTO `p_tablesinfo` VALUES (779,31,'sresponsible',1,'联网计算机保密责任人');
INSERT INTO `p_tablesinfo` VALUES (780,31,'licensenum',1,'计算机联网许可证编号');
INSERT INTO `p_tablesinfo` VALUES (781,31,'cancelreason',1,'注销原因');
INSERT INTO `p_tablesinfo` VALUES (782,31,'equipto',1,'注销后设备去向');
INSERT INTO `p_tablesinfo` VALUES (783,31,'departmentdesc',1,'申报部门或单位领导审查意见');
INSERT INTO `p_tablesinfo` VALUES (784,31,'departmentdate',0,'申报部门或单位领导审查意见填写日期');
INSERT INTO `p_tablesinfo` VALUES (785,31,'comdepartdesc',1,'公司（院、基地）主管部门审批意见');
INSERT INTO `p_tablesinfo` VALUES (786,31,'comdepartdate',0,'公司（院、基地）主管部门审批意见填写日期');
INSERT INTO `p_tablesinfo` VALUES (787,31,'username',1,'处理人姓名');
INSERT INTO `p_tablesinfo` VALUES (788,31,'userid',2,'处理人id');
INSERT INTO `p_tablesinfo` VALUES (789,32,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (790,32,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (791,32,'cid',2,'本部涉密载体外出复制审批单id');
INSERT INTO `p_tablesinfo` VALUES (792,32,'contents',1,'涉密载体内容（或文件名称）');
INSERT INTO `p_tablesinfo` VALUES (793,32,'fs',2,'份数');
INSERT INTO `p_tablesinfo` VALUES (794,32,'zys',2,'每份总页数');
INSERT INTO `p_tablesinfo` VALUES (795,32,'classification',2,'密级');
INSERT INTO `p_tablesinfo` VALUES (796,32,'zyh',1,'准印号');
INSERT INTO `p_tablesinfo` VALUES (797,33,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (798,33,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (799,33,'code',1,'编号');
INSERT INTO `p_tablesinfo` VALUES (800,33,'orgname',1,'责任部门');
INSERT INTO `p_tablesinfo` VALUES (801,33,'orgid',1,'责任部门id');
INSERT INTO `p_tablesinfo` VALUES (802,33,'agent',1,'经办人');
INSERT INTO `p_tablesinfo` VALUES (803,33,'location',1,'外出地点');
INSERT INTO `p_tablesinfo` VALUES (804,33,'returndate',0,'返回日期');
INSERT INTO `p_tablesinfo` VALUES (805,33,'applydate',0,'申请日期');
INSERT INTO `p_tablesinfo` VALUES (806,33,'mclassifition',2,'介质密级 0/1/2/3 机密/秘密/内部/上网');
INSERT INTO `p_tablesinfo` VALUES (807,33,'scode',1,'保密编号');
INSERT INTO `p_tablesinfo` VALUES (808,33,'yt',1,'用途');
INSERT INTO `p_tablesinfo` VALUES (809,33,'information',1,'处理信息的主要内容');
INSERT INTO `p_tablesinfo` VALUES (810,33,'imaxclassification',1,'处理信息的最高密级');
INSERT INTO `p_tablesinfo` VALUES (811,33,'usign',1,'使用人签字');
INSERT INTO `p_tablesinfo` VALUES (812,33,'uid',2,'使用人id');
INSERT INTO `p_tablesinfo` VALUES (813,33,'udate',0,'使用人签字日期');
INSERT INTO `p_tablesinfo` VALUES (814,33,'departmentdesc',1,'部门领导审批意见');
INSERT INTO `p_tablesinfo` VALUES (815,33,'departmentdate',0,'部门领导审批日期');
INSERT INTO `p_tablesinfo` VALUES (816,33,'recheckcase',1,'返回检查情况');
INSERT INTO `p_tablesinfo` VALUES (817,33,'recheckdate',0,'返回检查日期');
INSERT INTO `p_tablesinfo` VALUES (818,33,'username',1,'处理人姓名');
INSERT INTO `p_tablesinfo` VALUES (819,33,'userid',2,'处理人id');
INSERT INTO `p_tablesinfo` VALUES (820,34,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (821,34,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (822,34,'cid',2,'国际互联网计算机变更审批表id');
INSERT INTO `p_tablesinfo` VALUES (823,34,'licensenum',1,'许可证编号');
INSERT INTO `p_tablesinfo` VALUES (824,34,'bcorgname',1,'变更前责任部门');
INSERT INTO `p_tablesinfo` VALUES (825,34,'bcorgid',1,'变更前责任部门id');
INSERT INTO `p_tablesinfo` VALUES (826,34,'bcsresponsible',1,'变更前责任人');
INSERT INTO `p_tablesinfo` VALUES (827,34,'bcserialnum',1,'变更前硬盘序列号');
INSERT INTO `p_tablesinfo` VALUES (828,34,'haddress',1,'变更前MAC地址');
INSERT INTO `p_tablesinfo` VALUES (829,34,'acorgname',1,'变更后责任部门');
INSERT INTO `p_tablesinfo` VALUES (830,34,'acorgid',1,'变更后责任部门id');
INSERT INTO `p_tablesinfo` VALUES (831,34,'acsresponsible',1,'变更后责任人');
INSERT INTO `p_tablesinfo` VALUES (832,34,'acserialnum',1,'变更后硬盘序列号');
INSERT INTO `p_tablesinfo` VALUES (833,34,'achaddress',1,'变更后MAC地址');
INSERT INTO `p_tablesinfo` VALUES (834,34,'changereason',1,'变更原因');
INSERT INTO `p_tablesinfo` VALUES (835,35,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (836,35,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (837,35,'orgname',1,'单位/部门');
INSERT INTO `p_tablesinfo` VALUES (838,35,'orgid',1,'单位/部门id');
INSERT INTO `p_tablesinfo` VALUES (839,35,'cdate',0,'变更日期');
INSERT INTO `p_tablesinfo` VALUES (840,35,'depdesc',1,'单位/部门领导意见');
INSERT INTO `p_tablesinfo` VALUES (841,35,'depdate',0,'单位/部门领导意见填写日期');
INSERT INTO `p_tablesinfo` VALUES (842,35,'mdepdesc',1,'院主管部门审批意见');
INSERT INTO `p_tablesinfo` VALUES (843,35,'mdepdate',0,'院主管部门审批意见填写日期');
INSERT INTO `p_tablesinfo` VALUES (844,35,'username',1,'处理人姓名');
INSERT INTO `p_tablesinfo` VALUES (845,35,'userid',2,'处理人id');
INSERT INTO `p_tablesinfo` VALUES (846,36,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (847,36,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (848,36,'cid',2,'存储介质变更审批表id');
INSERT INTO `p_tablesinfo` VALUES (849,36,'mtype',1,'类型');
INSERT INTO `p_tablesinfo` VALUES (850,36,'specifications',1,'型号及规格');
INSERT INTO `p_tablesinfo` VALUES (851,36,'bcorgname',1,'变更前责任部门');
INSERT INTO `p_tablesinfo` VALUES (852,36,'bcorgid',1,'变更前责任部门id');
INSERT INTO `p_tablesinfo` VALUES (853,36,'bcdepository',1,'变更前保管人');
INSERT INTO `p_tablesinfo` VALUES (854,36,'bcclassification',1,'变更前涉密级别');
INSERT INTO `p_tablesinfo` VALUES (855,36,'bcscode',1,'变更前保密编号');
INSERT INTO `p_tablesinfo` VALUES (856,36,'acorgname',1,'变更后责任部门');
INSERT INTO `p_tablesinfo` VALUES (857,36,'acorgid',1,'变更后责任部门id');
INSERT INTO `p_tablesinfo` VALUES (858,36,'acdepository',1,'变更后保管人');
INSERT INTO `p_tablesinfo` VALUES (859,36,'acclassification',1,'变更后涉密级别');
INSERT INTO `p_tablesinfo` VALUES (860,36,'acscode',1,'变更后保密编号');
INSERT INTO `p_tablesinfo` VALUES (861,36,'changereason',1,'变更原因');
INSERT INTO `p_tablesinfo` VALUES (862,37,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (863,37,'orgname',1,'部门');
INSERT INTO `p_tablesinfo` VALUES (864,37,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (865,37,'orgid',1,'部门id');
INSERT INTO `p_tablesinfo` VALUES (866,37,'code',1,'编号');
INSERT INTO `p_tablesinfo` VALUES (867,37,'username',1,'处理人姓名');
INSERT INTO `p_tablesinfo` VALUES (868,37,'userid',2,'处理人id');
INSERT INTO `p_tablesinfo` VALUES (869,37,'departdesc',1,'部门领导意见');
INSERT INTO `p_tablesinfo` VALUES (870,37,'departdate',0,'部门领导意见填写日期');
INSERT INTO `p_tablesinfo` VALUES (871,37,'officedesc',1,'保密办公室意见');
INSERT INTO `p_tablesinfo` VALUES (872,37,'officedate',0,'保密办公室意见填写日期');
INSERT INTO `p_tablesinfo` VALUES (873,38,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (874,38,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (875,38,'cuname',1,'复制单位名称');
INSERT INTO `p_tablesinfo` VALUES (876,38,'orgid',1,'承办部门id');
INSERT INTO `p_tablesinfo` VALUES (877,38,'orgname',1,'承办部门');
INSERT INTO `p_tablesinfo` VALUES (878,38,'cdate',0,'检查时间');
INSERT INTO `p_tablesinfo` VALUES (879,38,'caddress',1,'检查地点');
INSERT INTO `p_tablesinfo` VALUES (880,38,'cname',1,'检查人员');
INSERT INTO `p_tablesinfo` VALUES (881,38,'bmname',1,'保密责任人');
INSERT INTO `p_tablesinfo` VALUES (882,38,'isapproval',2,'是否为保密行政管理部门审查批准的单位 0/1否/是');
INSERT INTO `p_tablesinfo` VALUES (883,38,'isdcopy',2,'是否为院指定的定点复制单位 0/1 否/是');
INSERT INTO `p_tablesinfo` VALUES (884,38,'issignsec',2,'是否签订保密协议书 0/1 否/是');
INSERT INTO `p_tablesinfo` VALUES (885,38,'isconrequire',2,'复制场所是否符合保密要求 0/1 否/是');
INSERT INTO `p_tablesinfo` VALUES (886,38,'note',1,'备注');
INSERT INTO `p_tablesinfo` VALUES (887,38,'isback',2,'原稿是否收回 0/1 否/是');
INSERT INTO `p_tablesinfo` VALUES (888,38,'bcopies',2,'收回份数');
INSERT INTO `p_tablesinfo` VALUES (889,38,'ismark',2,'是否按审批单复制数量制作 0/1否/是');
INSERT INTO `p_tablesinfo` VALUES (890,38,'printnum',2,'打印份数');
INSERT INTO `p_tablesinfo` VALUES (891,38,'renum',2,'接收份数');
INSERT INTO `p_tablesinfo` VALUES (892,38,'iscountrecycle',2,'是否对印制过程中产生的成品、半成品、废品以及印制用的各种版、纸、胶片等相关涉密材料情况进行了清点回收 0/1否/是');
INSERT INTO `p_tablesinfo` VALUES (893,38,'handling',1,'处理方式');
INSERT INTO `p_tablesinfo` VALUES (894,38,'isdelete',2,'有关计算机等印制设备中的电子文档是否在专人监督下进行了彻底删除 0/1否/是');
INSERT INTO `p_tablesinfo` VALUES (895,38,'supervisor',1,'监督人');
INSERT INTO `p_tablesinfo` VALUES (896,38,'departmentsign',1,'承办部门保密负责人签字');
INSERT INTO `p_tablesinfo` VALUES (897,38,'departmentid',2,'负责人id');
INSERT INTO `p_tablesinfo` VALUES (898,38,'departmentdate',0,'负责人签字日期');
INSERT INTO `p_tablesinfo` VALUES (899,38,'officedesc',1,'院办公室审核意见');
INSERT INTO `p_tablesinfo` VALUES (900,38,'officesign',1,'院办公室审核签字');
INSERT INTO `p_tablesinfo` VALUES (901,38,'officeid',2,'院办公室审核签字人id');
INSERT INTO `p_tablesinfo` VALUES (902,38,'officedate',0,'院办公室审核签字日期');
INSERT INTO `p_tablesinfo` VALUES (903,38,'username',1,'处理人姓名');
INSERT INTO `p_tablesinfo` VALUES (904,38,'userid',2,'处理人id');
INSERT INTO `p_tablesinfo` VALUES (905,39,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (906,39,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (907,39,'applyname',1,'申请人');
INSERT INTO `p_tablesinfo` VALUES (908,39,'aid',2,'申请人id');
INSERT INTO `p_tablesinfo` VALUES (909,39,'orgid',1,'部门id');
INSERT INTO `p_tablesinfo` VALUES (910,39,'orgname',1,'部门');
INSERT INTO `p_tablesinfo` VALUES (911,39,'copyutility',1,'复印用途');
INSERT INTO `p_tablesinfo` VALUES (912,39,'mgunit',1,'承制单位');
INSERT INTO `p_tablesinfo` VALUES (913,39,'officedesc',1,'处室领导意见');
INSERT INTO `p_tablesinfo` VALUES (914,39,'officesign',1,'处室领导签字');
INSERT INTO `p_tablesinfo` VALUES (915,39,'officeid',2,'处室领导id');
INSERT INTO `p_tablesinfo` VALUES (916,39,'officedate',0,'处室领导签字日期');
INSERT INTO `p_tablesinfo` VALUES (917,39,'departmentdesc',1,'部门领导意见');
INSERT INTO `p_tablesinfo` VALUES (918,39,'departmentsign',1,'部门领导签字');
INSERT INTO `p_tablesinfo` VALUES (919,39,'departmentid',2,'部门领导id');
INSERT INTO `p_tablesinfo` VALUES (920,39,'departmentdate',0,'部门领导签字日期');
INSERT INTO `p_tablesinfo` VALUES (921,39,'mgconfirm',1,'承办单位确认');
INSERT INTO `p_tablesinfo` VALUES (922,39,'agentsign',1,'经办人签字');
INSERT INTO `p_tablesinfo` VALUES (923,39,'agentid',2,'经办人id');
INSERT INTO `p_tablesinfo` VALUES (924,39,'agentdate',0,'经办人签字日期');
INSERT INTO `p_tablesinfo` VALUES (925,39,'username',1,'处理人姓名');
INSERT INTO `p_tablesinfo` VALUES (926,39,'userid',2,'处理人id');
INSERT INTO `p_tablesinfo` VALUES (927,40,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (928,40,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (929,40,'cdid',2,'本部涉密载体销毁审批表id');
INSERT INTO `p_tablesinfo` VALUES (930,40,'filename',1,'文件资料名称');
INSERT INTO `p_tablesinfo` VALUES (931,40,'productunit',1,'制作发文单位');
INSERT INTO `p_tablesinfo` VALUES (932,40,'carriertype',2,'载体类别');
INSERT INTO `p_tablesinfo` VALUES (933,40,'code',1,'文号或编号');
INSERT INTO `p_tablesinfo` VALUES (934,40,'classification',1,'密级');
INSERT INTO `p_tablesinfo` VALUES (935,40,'pages',2,'页数或容量');
INSERT INTO `p_tablesinfo` VALUES (936,40,'copies',2,'份数或数量');
INSERT INTO `p_tablesinfo` VALUES (937,40,'depositoryid',2,'保管人id');
INSERT INTO `p_tablesinfo` VALUES (938,40,'depository',1,'保管人');
INSERT INTO `p_tablesinfo` VALUES (939,41,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (940,41,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (941,41,'orgid',1,'部门id');
INSERT INTO `p_tablesinfo` VALUES (942,41,'orgname',1,'所属部门');
INSERT INTO `p_tablesinfo` VALUES (943,41,'dcode',1,'编号');
INSERT INTO `p_tablesinfo` VALUES (944,41,'total',2,'文件合计');
INSERT INTO `p_tablesinfo` VALUES (945,41,'destroyname',1,'销毁人');
INSERT INTO `p_tablesinfo` VALUES (946,41,'destroyid',2,'销毁人id');
INSERT INTO `p_tablesinfo` VALUES (947,41,'approvename',1,'批准人');
INSERT INTO `p_tablesinfo` VALUES (948,41,'approveid',2,'批准人id');
INSERT INTO `p_tablesinfo` VALUES (949,41,'receivename',1,'接收人');
INSERT INTO `p_tablesinfo` VALUES (950,41,'receiveid',2,'接收人id');
INSERT INTO `p_tablesinfo` VALUES (951,41,'userid',2,'处理人id');
INSERT INTO `p_tablesinfo` VALUES (952,41,'username',1,'处理人姓名');
INSERT INTO `p_tablesinfo` VALUES (953,42,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (954,42,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (955,42,'registdate',0,'登记日期');
INSERT INTO `p_tablesinfo` VALUES (956,42,'filename',1,'文件资料名称或标题');
INSERT INTO `p_tablesinfo` VALUES (957,42,'classification',1,'密级');
INSERT INTO `p_tablesinfo` VALUES (958,42,'pages',2,'页数（单份）');
INSERT INTO `p_tablesinfo` VALUES (959,42,'copies',2,'份数');
INSERT INTO `p_tablesinfo` VALUES (960,42,'qxyt',1,'去向或用途');
INSERT INTO `p_tablesinfo` VALUES (961,42,'printername',1,'打印人');
INSERT INTO `p_tablesinfo` VALUES (962,42,'approver',1,'批准人');
INSERT INTO `p_tablesinfo` VALUES (963,42,'printerdate',0,'打印时间');
INSERT INTO `p_tablesinfo` VALUES (964,42,'rcode',1,'登记编号');
INSERT INTO `p_tablesinfo` VALUES (965,42,'gname',1,'领取人');
INSERT INTO `p_tablesinfo` VALUES (966,42,'gid',2,'领取人id');
INSERT INTO `p_tablesinfo` VALUES (967,42,'username',1,'处理人姓名');
INSERT INTO `p_tablesinfo` VALUES (968,42,'userid',2,'处理人id');
INSERT INTO `p_tablesinfo` VALUES (969,43,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (970,43,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (971,43,'ecid',2,'涉密人员密级审定表id');
INSERT INTO `p_tablesinfo` VALUES (972,43,'proname',1,'涉密项目名称');
INSERT INTO `p_tablesinfo` VALUES (973,43,'classification',2,'密级');
INSERT INTO `p_tablesinfo` VALUES (974,44,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (975,44,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (976,44,'ctzid',2,'部门或个人涉密载体台账id');
INSERT INTO `p_tablesinfo` VALUES (977,44,'filename',1,'文件资料名称');
INSERT INTO `p_tablesinfo` VALUES (978,44,'productunit',1,'制作发文单位');
INSERT INTO `p_tablesinfo` VALUES (979,44,'carriertype',2,'载体类别');
INSERT INTO `p_tablesinfo` VALUES (980,44,'code',1,'文号或编号');
INSERT INTO `p_tablesinfo` VALUES (981,44,'classification',1,'密级');
INSERT INTO `p_tablesinfo` VALUES (982,44,'pages',2,'页数或容量');
INSERT INTO `p_tablesinfo` VALUES (983,44,'copies',2,'份数');
INSERT INTO `p_tablesinfo` VALUES (984,44,'usrange',1,'使用范围');
INSERT INTO `p_tablesinfo` VALUES (985,44,'note',1,'备注');
INSERT INTO `p_tablesinfo` VALUES (986,45,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (987,45,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (988,45,'orgname',1,'所属部门');
INSERT INTO `p_tablesinfo` VALUES (989,45,'orgid',2,'部门id');
INSERT INTO `p_tablesinfo` VALUES (990,45,'registdate',0,'登记日期');
INSERT INTO `p_tablesinfo` VALUES (991,45,'depsign',1,'保管人签字');
INSERT INTO `p_tablesinfo` VALUES (992,45,'depositoryid',2,'保管人id');
INSERT INTO `p_tablesinfo` VALUES (993,45,'depositorydate',0,'保管人签字日期');
INSERT INTO `p_tablesinfo` VALUES (994,45,'approvesign',1,'批准人签字');
INSERT INTO `p_tablesinfo` VALUES (995,45,'approveid',2,'批准人id');
INSERT INTO `p_tablesinfo` VALUES (996,45,'approvedate',0,'批准人签字日期');
INSERT INTO `p_tablesinfo` VALUES (997,45,'username',1,'处理人姓名');
INSERT INTO `p_tablesinfo` VALUES (998,45,'userid',2,'处理人id');
INSERT INTO `p_tablesinfo` VALUES (999,46,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (1000,46,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (1001,46,'orgname',1,'部门');
INSERT INTO `p_tablesinfo` VALUES (1002,46,'orgid',1,'部门id');
INSERT INTO `p_tablesinfo` VALUES (1003,46,'office',1,'处室');
INSERT INTO `p_tablesinfo` VALUES (1004,46,'name',1,'姓名');
INSERT INTO `p_tablesinfo` VALUES (1005,46,'position',1,'职务');
INSERT INTO `p_tablesinfo` VALUES (1006,46,'title',1,'职称');
INSERT INTO `p_tablesinfo` VALUES (1007,46,'classification',2,'岗位密级');
INSERT INTO `p_tablesinfo` VALUES (1008,46,'address',1,'家庭住址');
INSERT INTO `p_tablesinfo` VALUES (1009,46,'phone',1,'家庭固定电话');
INSERT INTO `p_tablesinfo` VALUES (1010,46,'cellphone',1,'个人移动电话');
INSERT INTO `p_tablesinfo` VALUES (1011,46,'deskmodel',1,'家用台式计算机型号');
INSERT INTO `p_tablesinfo` VALUES (1012,46,'portablemodels',1,'家用便携式计算机型号');
INSERT INTO `p_tablesinfo` VALUES (1013,46,'deskintercon',2,'台式计算机上网方式 0/1/2/3拨号/宽带/无线/不上网');
INSERT INTO `p_tablesinfo` VALUES (1014,46,'portableintercon',2,'便携式计算机上网方式 0/1/2/3拨号/宽带/无线/不上网');
INSERT INTO `p_tablesinfo` VALUES (1015,46,'comname',1,'承诺人');
INSERT INTO `p_tablesinfo` VALUES (1016,46,'comdate',0,'承诺日期');
INSERT INTO `p_tablesinfo` VALUES (1017,46,'username',1,'处理人姓名');
INSERT INTO `p_tablesinfo` VALUES (1018,46,'userid',2,'处理人id');
INSERT INTO `p_tablesinfo` VALUES (1019,47,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (1020,47,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (1021,47,'jfname',1,'甲方');
INSERT INTO `p_tablesinfo` VALUES (1022,47,'yfname',1,'乙方');
INSERT INTO `p_tablesinfo` VALUES (1023,47,'jfsign',1,'甲方授权代表');
INSERT INTO `p_tablesinfo` VALUES (1024,47,'jfid',2,'甲方授权代表id');
INSERT INTO `p_tablesinfo` VALUES (1025,47,'yfsign',1,'乙方授权代表');
INSERT INTO `p_tablesinfo` VALUES (1026,47,'yfid',2,'乙方授权代表id');
INSERT INTO `p_tablesinfo` VALUES (1027,47,'jfdate',0,'甲方签字日期');
INSERT INTO `p_tablesinfo` VALUES (1028,47,'yfdate',0,'乙方签字日期');
INSERT INTO `p_tablesinfo` VALUES (1029,47,'username',1,'处理人姓名');
INSERT INTO `p_tablesinfo` VALUES (1030,47,'userid',2,'处理人id');
INSERT INTO `p_tablesinfo` VALUES (1031,48,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (1032,48,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (1033,48,'jfcontract',1,'甲方（涉密项目分包方）');
INSERT INTO `p_tablesinfo` VALUES (1034,48,'yfcb',1,'乙方（涉密项目承包方）');
INSERT INTO `p_tablesinfo` VALUES (1035,48,'pame',1,'分包项目名称');
INSERT INTO `p_tablesinfo` VALUES (1036,48,'classified',1,'分包项目涉密等级');
INSERT INTO `p_tablesinfo` VALUES (1037,48,'jfsign',1,'甲方授权代表');
INSERT INTO `p_tablesinfo` VALUES (1038,48,'jfid',2,'甲方授权代表id');
INSERT INTO `p_tablesinfo` VALUES (1039,48,'yfsign',1,'乙方授权代表');
INSERT INTO `p_tablesinfo` VALUES (1040,48,'yfid',2,'乙方授权代表id');
INSERT INTO `p_tablesinfo` VALUES (1041,48,'jfdate',0,'甲方签字日期');
INSERT INTO `p_tablesinfo` VALUES (1042,48,'yfdate',0,'乙方签字日期');
INSERT INTO `p_tablesinfo` VALUES (1043,48,'username',1,'处理人姓名');
INSERT INTO `p_tablesinfo` VALUES (1044,48,'userid',2,'处理人id');
INSERT INTO `p_tablesinfo` VALUES (1045,49,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (1046,49,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (1047,49,'partya',1,'甲方');
INSERT INTO `p_tablesinfo` VALUES (1048,49,'partyb',1,'乙方');
INSERT INTO `p_tablesinfo` VALUES (1049,49,'paname',1,'甲方代表人');
INSERT INTO `p_tablesinfo` VALUES (1050,49,'pbname',1,'乙方代表人');
INSERT INTO `p_tablesinfo` VALUES (1051,49,'paid',2,'甲方代表id');
INSERT INTO `p_tablesinfo` VALUES (1052,49,'pbid',2,'乙方代表id');
INSERT INTO `p_tablesinfo` VALUES (1053,49,'padate',0,'甲方代表签字日期');
INSERT INTO `p_tablesinfo` VALUES (1054,49,'pbdate',0,'乙方代表签字日期');
INSERT INTO `p_tablesinfo` VALUES (1055,49,'username',1,'处理人姓名');
INSERT INTO `p_tablesinfo` VALUES (1056,49,'userid',2,'处理人id');
INSERT INTO `p_tablesinfo` VALUES (1057,50,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (1058,50,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (1059,50,'deptname',1,'单位名称');
INSERT INTO `p_tablesinfo` VALUES (1060,50,'enterprisepro',1,'企业性质');
INSERT INTO `p_tablesinfo` VALUES (1061,50,'legalpers',1,'法人代表或负责人');
INSERT INTO `p_tablesinfo` VALUES (1062,50,'supedept',1,'上级主管单位');
INSERT INTO `p_tablesinfo` VALUES (1063,50,'mailaddress',1,'通信地址');
INSERT INTO `p_tablesinfo` VALUES (1064,50,'postcode',1,'邮政邮编');
INSERT INTO `p_tablesinfo` VALUES (1065,50,'cellphone',1,'电话');
INSERT INTO `p_tablesinfo` VALUES (1066,50,'fax',1,'传真');
INSERT INTO `p_tablesinfo` VALUES (1067,50,'securitydept',1,'保密工作机构名称');
INSERT INTO `p_tablesinfo` VALUES (1068,50,'bmtel',1,'保密责任人电话、传真');
INSERT INTO `p_tablesinfo` VALUES (1069,50,'checktype',2,'监督检查方式（0/1 函调监督检查/现场监督检查）');
INSERT INTO `p_tablesinfo` VALUES (1070,50,'deptbelong',2,'本单位属于（0/1/2 国家一级/二级/三级）');
INSERT INTO `p_tablesinfo` VALUES (1071,50,'belongelse',1,'单位属于其他内容');
INSERT INTO `p_tablesinfo` VALUES (1072,50,'begindate',0,'有效期自');
INSERT INTO `p_tablesinfo` VALUES (1073,50,'enddate',0,'有效期止');
INSERT INTO `p_tablesinfo` VALUES (1074,50,'isorgperfect',2,'保密组织机构是否健全（0/1 否/是）');
INSERT INTO `p_tablesinfo` VALUES (1075,50,'isauthorclear',2,'保密工作是否权限清晰（0/1 否/是）');
INSERT INTO `p_tablesinfo` VALUES (1076,50,'issysclear',2,'保密制度是否健全（0/1 否/是）');
INSERT INTO `p_tablesinfo` VALUES (1077,50,'ishavesys',2,'是否有保密奖惩和泄漏国家秘密事件报告和查处制度');
INSERT INTO `p_tablesinfo` VALUES (1078,50,'isflowclear',2,'保密审查、审批流程是否明确');
INSERT INTO `p_tablesinfo` VALUES (1079,50,'issecident',2,'是否对涉密人员进行密级界定');
INSERT INTO `p_tablesinfo` VALUES (1080,50,'isstrictcheck',2,'是否对涉密岗位的人员进行严格审查');
INSERT INTO `p_tablesinfo` VALUES (1081,50,'issecedu',2,'是否对涉密人员教育定期进行培训');
INSERT INTO `p_tablesinfo` VALUES (1082,50,'issigndoc',2,'是否对涉密人员签订保密责任书');
INSERT INTO `p_tablesinfo` VALUES (1083,50,'isprocright',2,'载体定密、密级变更依据、责任程序是否正确');
INSERT INTO `p_tablesinfo` VALUES (1084,50,'isstandard',2,'载体标密是否及时、规范');
INSERT INTO `p_tablesinfo` VALUES (1085,50,'isaccordgd',2,'涉密载体制度、收发、保存、销毁是否符合国家规定');
INSERT INTO `p_tablesinfo` VALUES (1086,50,'ismeasure',2,'是否根据工作需要对国家秘密接触和知悉范围有控制措施');
INSERT INTO `p_tablesinfo` VALUES (1087,50,'isconfdept',2,'是否准确确定要害部门、部位');
INSERT INTO `p_tablesinfo` VALUES (1088,50,'isdeptperfect',2,'要害部门部位制度是否完善，严格执行');
INSERT INTO `p_tablesinfo` VALUES (1089,50,'iseffeaction',2,'要害部门部位是否采取有效安防保密措施');
INSERT INTO `p_tablesinfo` VALUES (1090,50,'isisolation',2,'涉密计算机、信息系统是否与互联网物理隔离');
INSERT INTO `p_tablesinfo` VALUES (1091,50,'isdutyclear',2,'涉密信息系统管理人员职责是否明晰');
INSERT INTO `p_tablesinfo` VALUES (1092,50,'iscontrol',2,'对涉密电子信息有密级标识、输入输出是否得到有效控制');
INSERT INTO `p_tablesinfo` VALUES (1093,50,'isfoxcontrol',2,'对传真机、复印机等办公自动化设备是否有效控制');
INSERT INTO `p_tablesinfo` VALUES (1094,50,'issecwork',2,'重大涉密活动是否有保密工作要求和措施');
INSERT INTO `p_tablesinfo` VALUES (1095,50,'iskeep',2,'在项目协作中，是否保守所涉及到的国家秘密事项和甲方商业秘密的义务');
INSERT INTO `p_tablesinfo` VALUES (1096,50,'isszcopy',2,'是否擅自复制由甲方提供的有关资料、图纸等涉密载体');
INSERT INTO `p_tablesinfo` VALUES (1097,50,'isusecarrier',2,'是否按规定使用和保存涉密载体');
INSERT INTO `p_tablesinfo` VALUES (1098,50,'iscorrect',2,'当存在不符合保密要求的事项，是否及时纠正');
INSERT INTO `p_tablesinfo` VALUES (1099,50,'ishappen',2,'一年来是否发生过失、泄密事件');
INSERT INTO `p_tablesinfo` VALUES (1100,50,'checkcondition',1,'监督检查整体情况或情况说明');
INSERT INTO `p_tablesinfo` VALUES (1101,50,'orgsign',1,'协作配套单位保密工作机构负责人签字');
INSERT INTO `p_tablesinfo` VALUES (1102,50,'orgsignid',2,'机构负责人id');
INSERT INTO `p_tablesinfo` VALUES (1103,50,'orgdate',0,'机构负责人签字日期');
INSERT INTO `p_tablesinfo` VALUES (1104,50,'xzdeptprom',1,'协作配套单位承诺');
INSERT INTO `p_tablesinfo` VALUES (1105,50,'fgleader',1,'协作配套单位保密工作分管领导签字');
INSERT INTO `p_tablesinfo` VALUES (1106,50,'fgleaderid',2,'分管领导id');
INSERT INTO `p_tablesinfo` VALUES (1107,50,'fgsigndate',0,'分管领导签字日期');
INSERT INTO `p_tablesinfo` VALUES (1108,50,'checkopinion',1,'监督检查审核意见');
INSERT INTO `p_tablesinfo` VALUES (1109,50,'deptleader',1,'协作（分包）涉密任务部门领导签字');
INSERT INTO `p_tablesinfo` VALUES (1110,50,'deptleaderid',2,'部门领导id');
INSERT INTO `p_tablesinfo` VALUES (1111,50,'leaderdate',0,'部门领导签字日期');
INSERT INTO `p_tablesinfo` VALUES (1112,50,'username',1,'处理人姓名');
INSERT INTO `p_tablesinfo` VALUES (1113,50,'userid',2,'处理人id');
INSERT INTO `p_tablesinfo` VALUES (1114,51,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (1115,51,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (1116,51,'jobchange',1,'岗位变动自查记录');
INSERT INTO `p_tablesinfo` VALUES (1117,51,'personeduca',1,'调入人员保密教育自查记录');
INSERT INTO `p_tablesinfo` VALUES (1118,51,'outperson',1,'有无调出人员自查记录');
INSERT INTO `p_tablesinfo` VALUES (1119,51,'ptrain',1,'涉密人员培训自查记录');
INSERT INTO `p_tablesinfo` VALUES (1120,51,'handleinfor',1,'上网机处理涉密信息自查记录');
INSERT INTO `p_tablesinfo` VALUES (1121,51,'useregist',1,'办公设备使用登记记录自查记录');
INSERT INTO `p_tablesinfo` VALUES (1122,51,'scoryinfor',1,'传真机发送或复印涉密信息自查记录');
INSERT INTO `p_tablesinfo` VALUES (1123,51,'cbmeeting',1,'承办涉外活动履行审批手续自查记录');
INSERT INTO `p_tablesinfo` VALUES (1124,51,'secmanage',1,'涉密会议保密管理自查记录');
INSERT INTO `p_tablesinfo` VALUES (1125,51,'cbactivity',1,'承办涉外活动保密管理自查记录');
INSERT INTO `p_tablesinfo` VALUES (1126,51,'employzczg',1,'员工自查记录，自查问题整改等自查记录');
INSERT INTO `p_tablesinfo` VALUES (1127,51,'cooperation',1,'合作或协作单位、人员涉密事项自查记录');
INSERT INTO `p_tablesinfo` VALUES (1128,51,'otherinfor',1,'其他情况记录');
INSERT INTO `p_tablesinfo` VALUES (1129,51,'question',1,'发现问题');
INSERT INTO `p_tablesinfo` VALUES (1130,51,'corrective',1,'对发现问题的整改情况');
INSERT INTO `p_tablesinfo` VALUES (1131,51,'depsign',1,'部门负责人签字');
INSERT INTO `p_tablesinfo` VALUES (1132,51,'depid',2,'部门负责人id');
INSERT INTO `p_tablesinfo` VALUES (1133,51,'signdate',0,'部门负责人签字日期');
INSERT INTO `p_tablesinfo` VALUES (1134,51,'depdate',0,'自查日期');
INSERT INTO `p_tablesinfo` VALUES (1135,51,'username',1,'处理人姓名');
INSERT INTO `p_tablesinfo` VALUES (1136,51,'userid',2,'处理人id');
INSERT INTO `p_tablesinfo` VALUES (1137,51,'cbactivitycheck',1,'承办涉外活动是否履行审批手续');
INSERT INTO `p_tablesinfo` VALUES (1138,52,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (1139,52,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (1140,52,'truancy',1,'无故不参加保密教育培训的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1141,52,'selfcheck',1,'员工未按月进行保密自查的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1142,52,'nopass',1,'保密知识考试低于80分的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1143,52,'abroad',1,'涉密人员擅自出国的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1144,52,'leaks',1,'未及时采取补救和如实反映泄密情况的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1145,52,'retaliation',1,'对检举泄密行为打击报复的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1146,52,'destructionequip',1,'故意破坏、拆除保密安全设施、设备的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1147,52,'refusecheck',1,'妨碍或拒绝接受保密检查的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1148,52,'randomdense',1,'涉密载体未确密或随意标密1-5件的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1149,52,'mrandomdense',1,'涉密载体未确密或随意标密5件以上的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1150,52,'distributionscope',1,'擅自扩大涉密载体知悉范围的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1151,52,'transforclassified',1,'未按规定传递涉密载体的每发现1次的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1152,52,'borrowing',1,'借阅涉密载体未按规定清退的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1153,52,'intensivelogo',1,'打印、复印、下载、扫描涉密文件资料，擅自更改密级标识或遮盖、删除远见密级标识的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1154,52,'carryout',1,'擅自携带机密级以下涉密载体外出的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1155,52,'jmcarryout',1,'擅自携带绝密级涉密载体外出的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1156,52,'printzl',1,'打印涉密资料未履行审批登记手续的每发现1件的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1157,52,'confidentiality',1,'记录涉密事项未按规定使用保密本的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1158,52,'storecarrier',1,'未按规定存放涉密载体的每发现1件的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1159,52,'kconfidential',1,'私自留存机密级以下涉密载体的每发现1件的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1160,52,'keepjm',1,'私自留存绝密级涉密载体的每发现1件的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1161,52,'bmbsybg',1,'保密本使用、保管不符合保密要求的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1162,52,'xhdj',1,'销毁涉密载体未按规定履行登记手续的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1163,52,'xhgrq',1,'召开涉密会议未采取加装手机信号干扰器的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1164,52,'syhysb',1,'涉密会议使用不符合要求的会议设备的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1165,52,'confregist',1,'涉密会议人员未进行身份登记确认的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1166,52,'xhzlwj',1,'涉密会议资料文件未按要求登记分发、清退、销毁的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1167,52,'gbsj',1,'参加涉密会议为关闭手机的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1168,52,'videos',1,'未经审批擅自在涉密活动中进行拍照、录像、录音的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1169,52,'inforprocess',1,'使用非涉密设备处理涉密信息的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1170,52,'formatting',1,'未经审批对涉密计算机格式化或重装系统的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1171,52,'dellog',1,'未经审批删除日志记录的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1172,52,'bmbs',1,'未粘贴保密标识的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1173,52,'cysmdj',1,'超越涉密等级处理涉密信息的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1174,52,'aqbmcp',1,'未按要求使用安全保密产品的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1175,52,'maintenance',1,'未统一维护的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1176,52,'azcc',1,'私自安装或拆除用户终端设备和软件的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1177,52,'wbsb',1,'使用外部设备的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1178,52,'fsfunction',1,'涉密计算机连接具有发射功能设备的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1179,52,'storeinfor',1,'未经审批存储涉密信息的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1180,52,'conmp',1,'连接MP3、MP4的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1181,52,'dmjmedium',1,'使用低密级存储介质存储高密集信息的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1182,52,'usegmj',1,'高密级存储介质在低密级计算机上使用的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1183,52,'middleconver',1,'使用中间转换机的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1184,52,'isolatesocket',1,'未正确使用隔离插座的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1185,52,'carrymedium',1,'未经审批携带计算机和存储介质外出的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1186,52,'bmjcmedium',1,'返回存储介质未保密检查的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1187,52,'checkinfor',1,'未保密审查发布信息的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1188,52,'clsw',1,'使用个人计算机处理办公事务的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1189,52,'grconmedium',1,'使用个人计算机连接单位存储介质的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1190,52,'classifiedequip',1,'使用非涉密办公自动化设备处理涉密信息的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1191,52,'noclogo',1,'涉密办公自动化设备未贴密级标识的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1192,52,'wirelesscon',1,'使用无线互连设备处理涉密信息的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1193,52,'mprocess',1,'涉密设备的维修报废处理不符合保密要求的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1194,52,'uwire',1,'在涉密场所使用无线通讯设备的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1195,52,'ucommunication',1,'使用未加密通讯设备传递涉密信息的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1196,52,'mobileinto',1,'将手机带入要害部门部位的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1197,52,'umobile',1,'在涉密会议和活动场所使用移动终端的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1198,52,'mobilelx',1,'在涉密场所使用手机录音、照相、视频通话等的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1199,52,'faxcopy',1,'使用传真机复印涉密文件资料的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1200,52,'deliveryinfor',1,'擅自向公开刊物媒体或学术会议投送涉密稿件论文或声像资料的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1201,52,'receiveinterview',1,'擅自接收新闻媒体对单位有关事项采访的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1202,52,'wbmzg',1,'选择的涉密协作配套单位不具有相应保密资格的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1203,52,'wqbmxy',1,'未在合同中明确项目密级和保密条款并未签订保密协议的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1204,52,'jsyq',1,'向协作单位提供技术要求以外涉密内容的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1205,52,'jdjc',1,'未对协作配套单位履行合同保密条款和保密协议进行监督检查的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1206,52,'wsjd',1,'擅自进行外事接待活动的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1207,52,'wfbmjl',1,'在对外交往与合作中违反保密纪律的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1208,52,'wjcr',1,'对外交流与合作谈判内容未经保密审查的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1209,52,'zlwjsp',1,'对外提供涉密文件资料和物品未经审批的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1210,52,'kdcgfw',1,'擅自扩大参观范围的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1211,52,'ayzc',1,'部门为按月进行自查的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1212,52,'qkbss',1,'部门季度考核、部门月度自查 情况不属实的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1213,52,'cssmhd',1,'未经批准，使用未经保密审查人员从事涉密工作的扣发标准');
INSERT INTO `p_tablesinfo` VALUES (1214,52,'username',1,'处理人姓名');
INSERT INTO `p_tablesinfo` VALUES (1215,52,'userid',2,'处理人id');
INSERT INTO `p_tablesinfo` VALUES (1216,53,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (1217,53,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (1218,53,'deptname',1,'填报部门或单位');
INSERT INTO `p_tablesinfo` VALUES (1219,53,'deptid',2,'填报部门或单位id');
INSERT INTO `p_tablesinfo` VALUES (1220,53,'finddate',0,'发现时间');
INSERT INTO `p_tablesinfo` VALUES (1221,53,'findplace',1,'发现地点');
INSERT INTO `p_tablesinfo` VALUES (1222,53,'finder',1,'发现人姓名');
INSERT INTO `p_tablesinfo` VALUES (1223,53,'finderposition',1,'发现人职务');
INSERT INTO `p_tablesinfo` VALUES (1224,53,'briefproc',1,'简要过程');
INSERT INTO `p_tablesinfo` VALUES (1225,53,'party',1,'当事人姓名');
INSERT INTO `p_tablesinfo` VALUES (1226,53,'partyposition',1,'职务');
INSERT INTO `p_tablesinfo` VALUES (1227,53,'happendate',0,'发生时间');
INSERT INTO `p_tablesinfo` VALUES (1228,53,'happenplace',1,'发生地点');
INSERT INTO `p_tablesinfo` VALUES (1229,53,'divulgetype',1,'泄密方式');
INSERT INTO `p_tablesinfo` VALUES (1230,53,'divulgesec',1,'泄密密级');
INSERT INTO `p_tablesinfo` VALUES (1231,53,'briefcondition',1,'简要情况');
INSERT INTO `p_tablesinfo` VALUES (1232,53,'harm',1,'造成或可能造成的危害');
INSERT INTO `p_tablesinfo` VALUES (1233,53,'workcondition',1,'已进行的查找工作情况');
INSERT INTO `p_tablesinfo` VALUES (1234,53,'measures',1,'已采取或拟采取的补救措施');
INSERT INTO `p_tablesinfo` VALUES (1235,53,'deptopinion',1,'部门或单位意见');
INSERT INTO `p_tablesinfo` VALUES (1236,53,'deptleadersign',1,'部门或单位领导签字');
INSERT INTO `p_tablesinfo` VALUES (1237,53,'deptleaderid',2,'部门或单位领导id');
INSERT INTO `p_tablesinfo` VALUES (1238,53,'leadersigndate',0,'部门或单位领导签字日期');
INSERT INTO `p_tablesinfo` VALUES (1239,53,'sofficedesc',1,'院保密委员会意见');
INSERT INTO `p_tablesinfo` VALUES (1240,53,'sofficesign',1,'院保密委员会签字');
INSERT INTO `p_tablesinfo` VALUES (1241,53,'sofficeid',2,'院保密委员会签字人id');
INSERT INTO `p_tablesinfo` VALUES (1242,53,'sofficedate',0,'院保密委员会签字日期');
INSERT INTO `p_tablesinfo` VALUES (1243,53,'username',1,'处理人姓名');
INSERT INTO `p_tablesinfo` VALUES (1244,53,'userid',2,'处理人id');
INSERT INTO `p_tablesinfo` VALUES (1245,54,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (1246,54,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (1247,54,'ename',1,'姓名');
INSERT INTO `p_tablesinfo` VALUES (1248,54,'fname',1,'曾用名');
INSERT INTO `p_tablesinfo` VALUES (1249,54,'national',1,'民族');
INSERT INTO `p_tablesinfo` VALUES (1250,54,'sex',2,'性别 0/1女/男');
INSERT INTO `p_tablesinfo` VALUES (1251,54,'image',1,'照片');
INSERT INTO `p_tablesinfo` VALUES (1252,54,'brithday',0,'出生年月日');
INSERT INTO `p_tablesinfo` VALUES (1253,54,'location',1,'籍贯');
INSERT INTO `p_tablesinfo` VALUES (1254,54,'politicsstatus',1,'政治面貌');
INSERT INTO `p_tablesinfo` VALUES (1255,54,'education',1,'文化程度');
INSERT INTO `p_tablesinfo` VALUES (1256,54,'professional',1,'技术专业');
INSERT INTO `p_tablesinfo` VALUES (1257,54,'title',1,'技术职称');
INSERT INTO `p_tablesinfo` VALUES (1258,54,'language',1,'掌握语言');
INSERT INTO `p_tablesinfo` VALUES (1259,54,'abroadcountries',1,'留学国家');
INSERT INTO `p_tablesinfo` VALUES (1260,54,'studytime',0,'留学时间');
INSERT INTO `p_tablesinfo` VALUES (1261,54,'studyway',1,'留学方式');
INSERT INTO `p_tablesinfo` VALUES (1262,54,'cardnum',1,'身份证号');
INSERT INTO `p_tablesinfo` VALUES (1263,54,'policestation',1,'户籍派出所');
INSERT INTO `p_tablesinfo` VALUES (1264,54,'passportno',1,'因私护照号/通行证号');
INSERT INTO `p_tablesinfo` VALUES (1265,54,'address',1,'现家庭住址');
INSERT INTO `p_tablesinfo` VALUES (1266,54,'zipcode',1,'邮编');
INSERT INTO `p_tablesinfo` VALUES (1267,54,'ouname',1,'原学习/工作单位名称');
INSERT INTO `p_tablesinfo` VALUES (1268,54,'oposition',1,'原岗位名称');
INSERT INTO `p_tablesinfo` VALUES (1269,54,'classification',1,'原岗位密级');
INSERT INTO `p_tablesinfo` VALUES (1270,54,'newunit',1,'拟进入单位/部门及处室');
INSERT INTO `p_tablesinfo` VALUES (1271,54,'newposition',1,'岗位名称');
INSERT INTO `p_tablesinfo` VALUES (1272,54,'newclassification',1,'岗位密级');
INSERT INTO `p_tablesinfo` VALUES (1273,54,'democratic',1,'聘用前参加何种民治党派或社会团体');
INSERT INTO `p_tablesinfo` VALUES (1274,54,'Disciplinary',1,'聘用前有无受过任何处分');
INSERT INTO `p_tablesinfo` VALUES (1275,54,'otherdesc',1,'其他需说明的情况');
INSERT INTO `p_tablesinfo` VALUES (1276,54,'signtime',0,'本人签字日期');
INSERT INTO `p_tablesinfo` VALUES (1277,54,'signname',1,'本人签字');
INSERT INTO `p_tablesinfo` VALUES (1278,54,'type',2,'人员类型 1/2非涉密人员/涉密人员');
INSERT INTO `p_tablesinfo` VALUES (1279,54,'offthickstarttime',0,'脱密开始日期');
INSERT INTO `p_tablesinfo` VALUES (1280,54,'offthickendtime',0,'脱密截止日期');
INSERT INTO `p_tablesinfo` VALUES (1281,54,'ounitdesc',1,'原单位意见');
INSERT INTO `p_tablesinfo` VALUES (1282,54,'ounitsign',1,'原单位签字');
INSERT INTO `p_tablesinfo` VALUES (1283,54,'ounitid',2,'原单位id');
INSERT INTO `p_tablesinfo` VALUES (1284,54,'ounitsigndate',0,'原单位签字日期');
INSERT INTO `p_tablesinfo` VALUES (1285,54,'departmentopinion',1,'院/公司人力资源部审查意见');
INSERT INTO `p_tablesinfo` VALUES (1286,54,'departmentsign',1,'院/公司人力资源部签字');
INSERT INTO `p_tablesinfo` VALUES (1287,54,'departsigndate',0,'院/公司人力资源部签字日期');
INSERT INTO `p_tablesinfo` VALUES (1288,54,'departid',2,'院/公司人力资源部id');
INSERT INTO `p_tablesinfo` VALUES (1289,54,'sofficedesc',1,'院/公司保密委员会办公室审查意见');
INSERT INTO `p_tablesinfo` VALUES (1290,54,'sofficesign',1,'院/公司保密委员会办公室签字');
INSERT INTO `p_tablesinfo` VALUES (1291,54,'sofficesigndate',0,'院/公司保密委员会办公室签字日期');
INSERT INTO `p_tablesinfo` VALUES (1292,54,'sofficeid',2,'院/公司保密委员会办公室id');
INSERT INTO `p_tablesinfo` VALUES (1293,54,'scomdesc',1,'院/公司保密委员会审批意见');
INSERT INTO `p_tablesinfo` VALUES (1294,54,'scomsign',1,'院/公司保密委员会签字');
INSERT INTO `p_tablesinfo` VALUES (1295,54,'scomid',2,'院/公司保密委员会id');
INSERT INTO `p_tablesinfo` VALUES (1296,54,'scomdate',0,'院/公司保密委员会签字日期');
INSERT INTO `p_tablesinfo` VALUES (1297,54,'username',1,'处理人姓名');
INSERT INTO `p_tablesinfo` VALUES (1298,54,'userid',2,'处理人id');
INSERT INTO `p_tablesinfo` VALUES (1299,55,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (1300,55,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (1301,55,'confidentiality',1,'保密责任自查情况');
INSERT INTO `p_tablesinfo` VALUES (1302,55,'education',1,'保密教育自查情况');
INSERT INTO `p_tablesinfo` VALUES (1303,55,'setpwd',1,'设置计算机用户口令自查情况');
INSERT INTO `p_tablesinfo` VALUES (1304,55,'maintenance',1,'计算机及存储介质维护自查情况');
INSERT INTO `p_tablesinfo` VALUES (1305,55,'atinternet',1,'接入国际互联网自查情况');
INSERT INTO `p_tablesinfo` VALUES (1306,55,'cymj',1,'超越密级使用自查情况');
INSERT INTO `p_tablesinfo` VALUES (1307,55,'classifiedsecret',1,'涉密文档标密自查情况');
INSERT INTO `p_tablesinfo` VALUES (1308,55,'matnternet',1,'涉密介质接入互联网自查情况');
INSERT INTO `p_tablesinfo` VALUES (1309,55,'savepwdark',1,'密码文件柜存入自查情况');
INSERT INTO `p_tablesinfo` VALUES (1310,55,'perprocedure',1,'审批手续履行自查情况');
INSERT INTO `p_tablesinfo` VALUES (1311,55,'onlineregist',1,'上网登记自查情况');
INSERT INTO `p_tablesinfo` VALUES (1312,55,'handleaffairs',1,'涉密信息或办公事务处理自查情况');
INSERT INTO `p_tablesinfo` VALUES (1313,55,'smedia',1,'下载信息是否使用互联网专用介质自查情况');
INSERT INTO `p_tablesinfo` VALUES (1314,55,'inforpublish',1,'涉密信息或单位未公开信息发布自查情况');
INSERT INTO `p_tablesinfo` VALUES (1315,55,'timelyrepel',1,'及时清退自查情况');
INSERT INTO `p_tablesinfo` VALUES (1316,55,'ttbcsd',1,'执行收发、传递、借阅、复制、存放、销毁自查情况');
INSERT INTO `p_tablesinfo` VALUES (1317,55,'rsd',1,'涉密文件资料登记、存放、销毁自查情况');
INSERT INTO `p_tablesinfo` VALUES (1318,55,'recordtz',1,'履行登记审批手续、台账备案自查情况');
INSERT INTO `p_tablesinfo` VALUES (1319,55,'kconfidentiality',1,'保管保密本使用自查情况');
INSERT INTO `p_tablesinfo` VALUES (1320,55,'phandleaffairs',1,'家用计算机及存储介质处理涉密信息及办公事务自查情况');
INSERT INTO `p_tablesinfo` VALUES (1321,55,'pconmedium',1,'家用计算机连接单位存储介质自查情况');
INSERT INTO `p_tablesinfo` VALUES (1322,55,'pclassified',1,'个人家中是否有涉密载体自查情况');
INSERT INTO `p_tablesinfo` VALUES (1323,55,'ransforieinfor',1,'审查审批内外网信息转换自查情况');
INSERT INTO `p_tablesinfo` VALUES (1324,55,'abroad',1,'出国审批手续自查情况');
INSERT INTO `p_tablesinfo` VALUES (1325,55,'cleartable',1,'清桌锁柜自查情况');
INSERT INTO `p_tablesinfo` VALUES (1326,55,'otherinfor',1,'需要向组织汇报的其他情况');
INSERT INTO `p_tablesinfo` VALUES (1327,55,'rectification',1,'对自查发现问题的整改情况');
INSERT INTO `p_tablesinfo` VALUES (1328,55,'cdate',0,'自查时间');
INSERT INTO `p_tablesinfo` VALUES (1329,55,'cname',1,'本人签名');
INSERT INTO `p_tablesinfo` VALUES (1330,55,'cid',2,'本人id');
INSERT INTO `p_tablesinfo` VALUES (1331,55,'username',1,'处理人姓名');
INSERT INTO `p_tablesinfo` VALUES (1332,55,'userid',2,'处理人id');
INSERT INTO `p_tablesinfo` VALUES (1333,56,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (1334,56,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (1335,56,'mcode',1,'编号');
INSERT INTO `p_tablesinfo` VALUES (1336,56,'applydate',0,'申请日期');
INSERT INTO `p_tablesinfo` VALUES (1337,56,'orgname',1,'申请部门');
INSERT INTO `p_tablesinfo` VALUES (1338,56,'orgid',1,'部门id');
INSERT INTO `p_tablesinfo` VALUES (1339,56,'depository',1,'保管人');
INSERT INTO `p_tablesinfo` VALUES (1340,56,'depositoryid',2,'保管人id');
INSERT INTO `p_tablesinfo` VALUES (1341,56,'sign',1,'责任人签字');
INSERT INTO `p_tablesinfo` VALUES (1342,56,'signid',2,'责任人id');
INSERT INTO `p_tablesinfo` VALUES (1343,56,'signdate',0,'签字日期');
INSERT INTO `p_tablesinfo` VALUES (1344,56,'departmentdesc',1,'部门领导意见');
INSERT INTO `p_tablesinfo` VALUES (1345,56,'officedesc',1,'保密委员会办公室意见');
INSERT INTO `p_tablesinfo` VALUES (1346,56,'username',1,'处理人姓名');
INSERT INTO `p_tablesinfo` VALUES (1347,56,'userid',2,'处理人id');
INSERT INTO `p_tablesinfo` VALUES (1348,57,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (1349,57,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (1350,57,'ecname',1,'姓名');
INSERT INTO `p_tablesinfo` VALUES (1351,57,'sex',2,'性别');
INSERT INTO `p_tablesinfo` VALUES (1352,57,'age',2,'年龄');
INSERT INTO `p_tablesinfo` VALUES (1353,57,'oriname',1,'所在部门');
INSERT INTO `p_tablesinfo` VALUES (1354,57,'orgid',1,'部门id');
INSERT INTO `p_tablesinfo` VALUES (1355,57,'position',1,'岗位名称');
INSERT INTO `p_tablesinfo` VALUES (1356,57,'oposition',1,'原岗位名称');
INSERT INTO `p_tablesinfo` VALUES (1357,57,'oclassification',1,'原岗位密级');
INSERT INTO `p_tablesinfo` VALUES (1358,57,'optype',2,'所属部门领导意见');
INSERT INTO `p_tablesinfo` VALUES (1359,57,'leadershipsign',1,'所属部门领导签字');
INSERT INTO `p_tablesinfo` VALUES (1360,57,'leaderid',2,'部门领导id');
INSERT INTO `p_tablesinfo` VALUES (1361,57,'leadersigndate',0,'部门领导签字日期');
INSERT INTO `p_tablesinfo` VALUES (1362,57,'dptype',2,'人力资源部审核意见');
INSERT INTO `p_tablesinfo` VALUES (1363,57,'departmentsign',1,'人力资源部签字');
INSERT INTO `p_tablesinfo` VALUES (1364,57,'departmentid',2,'人力资源部id');
INSERT INTO `p_tablesinfo` VALUES (1365,57,'departmentdate',0,'人力资源部签字日期');
INSERT INTO `p_tablesinfo` VALUES (1366,57,'sptype',2,'保密委员会办公室审核意见');
INSERT INTO `p_tablesinfo` VALUES (1367,57,'sofficesign',1,'保密委员会办公室签字');
INSERT INTO `p_tablesinfo` VALUES (1368,57,'sofficesigndate',0,'保密委员会办公室签字日期');
INSERT INTO `p_tablesinfo` VALUES (1369,57,'sofficeid',2,'保密委员会办公室id');
INSERT INTO `p_tablesinfo` VALUES (1370,57,'scptype',2,'保密委员会审定意见');
INSERT INTO `p_tablesinfo` VALUES (1371,57,'scomsign',1,'保密委员会签字');
INSERT INTO `p_tablesinfo` VALUES (1372,57,'scomsigndate',0,'保密委员会签字日期');
INSERT INTO `p_tablesinfo` VALUES (1373,57,'scomid',2,'保密委员会id');
INSERT INTO `p_tablesinfo` VALUES (1374,57,'username',1,'处理人姓名');
INSERT INTO `p_tablesinfo` VALUES (1375,57,'userid',2,'处理人id');
INSERT INTO `p_tablesinfo` VALUES (1376,58,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (1377,58,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (1378,58,'orgname',1,'承办部门');
INSERT INTO `p_tablesinfo` VALUES (1379,58,'orgid',1,'部门id');
INSERT INTO `p_tablesinfo` VALUES (1380,58,'shead',1,'本次活动保密负责人');
INSERT INTO `p_tablesinfo` VALUES (1381,58,'purpose',1,'拍摄目的');
INSERT INTO `p_tablesinfo` VALUES (1382,58,'shootrange',1,'拍摄范围');
INSERT INTO `p_tablesinfo` VALUES (1383,58,'shootdate',0,'拍摄时间');
INSERT INTO `p_tablesinfo` VALUES (1384,58,'isclassification',2,'拍摄内容是否涉密 0/1否/是');
INSERT INTO `p_tablesinfo` VALUES (1385,58,'classification',1,'涉密等级');
INSERT INTO `p_tablesinfo` VALUES (1386,58,'cameras',1,'负责拍摄人员');
INSERT INTO `p_tablesinfo` VALUES (1387,58,'monitors',1,'承办部门监督人员');
INSERT INTO `p_tablesinfo` VALUES (1388,58,'trackrecord',1,'保密委员会办公室跟踪情况记录');
INSERT INTO `p_tablesinfo` VALUES (1389,58,'depdesc',1,'承办部门意见');
INSERT INTO `p_tablesinfo` VALUES (1390,58,'depsign',1,'承办部门签字');
INSERT INTO `p_tablesinfo` VALUES (1391,58,'depid',2,'承办部门签字人id');
INSERT INTO `p_tablesinfo` VALUES (1392,58,'depdate',0,'承办签字日期');
INSERT INTO `p_tablesinfo` VALUES (1393,58,'partdesc',1,'保密要害部门、部位所在部门意见');
INSERT INTO `p_tablesinfo` VALUES (1394,58,'partsign',1,'保密要害部门部位所在部门签字');
INSERT INTO `p_tablesinfo` VALUES (1395,58,'partid',2,'保密要害部门部位所在部门签字人id');
INSERT INTO `p_tablesinfo` VALUES (1396,58,'partdate',0,'保密要害部门部位所在部门签字日期');
INSERT INTO `p_tablesinfo` VALUES (1397,58,'officedesc',1,'保密委员会办公室意见');
INSERT INTO `p_tablesinfo` VALUES (1398,58,'officesign',1,'保密委员会办公室签字');
INSERT INTO `p_tablesinfo` VALUES (1399,58,'officeid',2,'保密委员会办公室签字人id');
INSERT INTO `p_tablesinfo` VALUES (1400,58,'officedate',0,'保密委员会办公室签字日期');
INSERT INTO `p_tablesinfo` VALUES (1401,58,'scomdesc',1,'院保密委员会意见');
INSERT INTO `p_tablesinfo` VALUES (1402,58,'scomsign',1,'院保密委员会签字');
INSERT INTO `p_tablesinfo` VALUES (1403,58,'scomid',2,'院保密委员会签字人id');
INSERT INTO `p_tablesinfo` VALUES (1404,58,'scomdate',0,'院保密委员会签字日期');
INSERT INTO `p_tablesinfo` VALUES (1405,58,'username',1,'处理人姓名');
INSERT INTO `p_tablesinfo` VALUES (1406,58,'userid',2,'处理人id');
INSERT INTO `p_tablesinfo` VALUES (1407,59,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (1408,59,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (1409,59,'orgname',1,'承办部门');
INSERT INTO `p_tablesinfo` VALUES (1410,59,'orgid',1,'部门id');
INSERT INTO `p_tablesinfo` VALUES (1411,59,'shead',1,'本次活动保密负责人');
INSERT INTO `p_tablesinfo` VALUES (1412,59,'purpose',1,'参观目的及参观内容');
INSERT INTO `p_tablesinfo` VALUES (1413,59,'personarea',1,'参观人员范围');
INSERT INTO `p_tablesinfo` VALUES (1414,59,'location',1,'参观位置');
INSERT INTO `p_tablesinfo` VALUES (1415,59,'vdate',0,'参观时间');
INSERT INTO `p_tablesinfo` VALUES (1416,59,'isshoot',2,'是否进行拍照、摄录 0/1否/是');
INSERT INTO `p_tablesinfo` VALUES (1417,59,'confidentiality',1,'保密负责人职责');
INSERT INTO `p_tablesinfo` VALUES (1418,59,'depdesc',1,'承办部门意见');
INSERT INTO `p_tablesinfo` VALUES (1419,59,'depsign',1,'承办部门签字');
INSERT INTO `p_tablesinfo` VALUES (1420,59,'depid',2,'承办部门签字人id');
INSERT INTO `p_tablesinfo` VALUES (1421,59,'depdate',0,'承办部门签字日期');
INSERT INTO `p_tablesinfo` VALUES (1422,59,'officedesc',1,'保密委员会办公室意见');
INSERT INTO `p_tablesinfo` VALUES (1423,59,'officesign',1,'保密委员会办公室签字');
INSERT INTO `p_tablesinfo` VALUES (1424,59,'officeid',2,'保密委员会办公室签字人id');
INSERT INTO `p_tablesinfo` VALUES (1425,59,'officedate',0,'保密委员会办公室签字日期');
INSERT INTO `p_tablesinfo` VALUES (1426,59,'username',1,'处理人姓名');
INSERT INTO `p_tablesinfo` VALUES (1427,59,'userid',2,'处理人id');
INSERT INTO `p_tablesinfo` VALUES (1428,60,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (1429,60,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (1430,60,'tid',2,'临时来华人员登记表id');
INSERT INTO `p_tablesinfo` VALUES (1431,60,'fname',1,'外宾姓名');
INSERT INTO `p_tablesinfo` VALUES (1432,60,'translate',1,'译名');
INSERT INTO `p_tablesinfo` VALUES (1433,60,'position',1,'服务部门职务职称');
INSERT INTO `p_tablesinfo` VALUES (1434,60,'nationality',1,'国籍');
INSERT INTO `p_tablesinfo` VALUES (1435,60,'passportno',1,'护照号码');
INSERT INTO `p_tablesinfo` VALUES (1436,60,'receiver',1,'接待人姓名');
INSERT INTO `p_tablesinfo` VALUES (1437,60,'duties',1,'职务职称');
INSERT INTO `p_tablesinfo` VALUES (1438,61,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (1439,61,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (1440,61,'oaid',2,'航天科技集团公司企事业单位科研生产部位一次性对外开放申报表id');
INSERT INTO `p_tablesinfo` VALUES (1441,61,'cname',1,'姓名（中文）');
INSERT INTO `p_tablesinfo` VALUES (1442,61,'ename',1,'姓名（英文）');
INSERT INTO `p_tablesinfo` VALUES (1443,61,'nationality',1,'国籍');
INSERT INTO `p_tablesinfo` VALUES (1444,61,'passportno',1,'护照号码');
INSERT INTO `p_tablesinfo` VALUES (1445,61,'duties',1,'单位、职务/职称');
INSERT INTO `p_tablesinfo` VALUES (1446,61,'comenum',2,'来访次数');
INSERT INTO `p_tablesinfo` VALUES (1447,61,'remark',1,'备注');
INSERT INTO `p_tablesinfo` VALUES (1448,62,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (1449,62,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (1450,62,'eid',2,'存储介质配备审批表');
INSERT INTO `p_tablesinfo` VALUES (1451,62,'rmediumtype',2,'领用存储介质类别');
INSERT INTO `p_tablesinfo` VALUES (1452,62,'rspecifications',1,'领用存储介质规格');
INSERT INTO `p_tablesinfo` VALUES (1453,62,'rscode',1,'领用存储介质保密编号');
INSERT INTO `p_tablesinfo` VALUES (1454,62,'productcode',1,'产品序列号');
INSERT INTO `p_tablesinfo` VALUES (1455,62,'rcerttype',2,'领用存储介质认证类别');
INSERT INTO `p_tablesinfo` VALUES (1456,62,'rcerrange',1,'领用存储介质认证范围');
INSERT INTO `p_tablesinfo` VALUES (1457,62,'rsign',1,'领取人签字');
INSERT INTO `p_tablesinfo` VALUES (1458,62,'rid',2,'领取人id');
INSERT INTO `p_tablesinfo` VALUES (1459,63,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (1460,63,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (1461,63,'interviewer',1,'采访人');
INSERT INTO `p_tablesinfo` VALUES (1462,63,'dept',1,'受访人所在部门');
INSERT INTO `p_tablesinfo` VALUES (1463,63,'contentscope',1,'受访内容范围');
INSERT INTO `p_tablesinfo` VALUES (1464,63,'interviewdate',0,'受访时间');
INSERT INTO `p_tablesinfo` VALUES (1465,63,'interviewee',1,'受访人');
INSERT INTO `p_tablesinfo` VALUES (1466,63,'interdept',1,'采访人单位');
INSERT INTO `p_tablesinfo` VALUES (1467,63,'purpose',1,'采访目的');
INSERT INTO `p_tablesinfo` VALUES (1468,63,'sfdeptopinion',1,'受访人所在部门意见');
INSERT INTO `p_tablesinfo` VALUES (1469,63,'sfsign',1,'受访人部门签字');
INSERT INTO `p_tablesinfo` VALUES (1470,63,'sfsignid',2,'受访人部门签字人id');
INSERT INTO `p_tablesinfo` VALUES (1471,63,'sfsigndate',0,'受访人部门签字日期');
INSERT INTO `p_tablesinfo` VALUES (1472,63,'sofficedesc',1,'保密委员会办公室意见');
INSERT INTO `p_tablesinfo` VALUES (1473,63,'sofficesign',1,'保密委员会办公室签字');
INSERT INTO `p_tablesinfo` VALUES (1474,63,'sofficeid',2,'保密委员会办公室签字人id');
INSERT INTO `p_tablesinfo` VALUES (1475,63,'sofficedate',0,'保密委员会办公室签字日期');
INSERT INTO `p_tablesinfo` VALUES (1476,63,'ysofficedesc',1,'院保密委员会意见');
INSERT INTO `p_tablesinfo` VALUES (1477,63,'ysofficesign',1,'院保密委员会签字');
INSERT INTO `p_tablesinfo` VALUES (1478,63,'ysofficeid',2,'院保密委员会签字人id');
INSERT INTO `p_tablesinfo` VALUES (1479,63,'ysofficedate',0,'院保密委员会签字日期');
INSERT INTO `p_tablesinfo` VALUES (1480,63,'username',1,'处理人姓名');
INSERT INTO `p_tablesinfo` VALUES (1481,63,'userid',2,'处理人id');
INSERT INTO `p_tablesinfo` VALUES (1482,64,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (1483,64,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (1484,64,'notification',1,'申报单位');
INSERT INTO `p_tablesinfo` VALUES (1485,64,'nid',2,'申报单位id');
INSERT INTO `p_tablesinfo` VALUES (1486,64,'partname',1,'申报部门、部位名称');
INSERT INTO `p_tablesinfo` VALUES (1487,64,'parthead',1,'部门、部位负责人');
INSERT INTO `p_tablesinfo` VALUES (1488,64,'totalstaff',2,'涉密人员总数');
INSERT INTO `p_tablesinfo` VALUES (1489,64,'partlocation',1,'部门、部位所处位置');
INSERT INTO `p_tablesinfo` VALUES (1490,64,'declarationreason',1,'申报理由');
INSERT INTO `p_tablesinfo` VALUES (1491,64,'apmeasures',1,'人工防护措施');
INSERT INTO `p_tablesinfo` VALUES (1492,64,'ppmeasures',1,'物理防护措施');
INSERT INTO `p_tablesinfo` VALUES (1493,64,'tpmeasures',1,'技术防护措施');
INSERT INTO `p_tablesinfo` VALUES (1494,64,'uscomdesc',1,'申报单位保密委员会审查意见');
INSERT INTO `p_tablesinfo` VALUES (1495,64,'yscomdesc',1,'院保密委员会审定意见');
INSERT INTO `p_tablesinfo` VALUES (1496,64,'uscomdate',0,'申报单位保密委员会审查日期');
INSERT INTO `p_tablesinfo` VALUES (1497,64,'yscomdate',0,'院保密委员会审定日期');
INSERT INTO `p_tablesinfo` VALUES (1498,64,'username',1,'处理人姓名');
INSERT INTO `p_tablesinfo` VALUES (1499,64,'userid',2,'处理人id');
INSERT INTO `p_tablesinfo` VALUES (1500,65,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (1501,65,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (1502,65,'notification',1,'申报单位');
INSERT INTO `p_tablesinfo` VALUES (1503,65,'nid',2,'申报单位id');
INSERT INTO `p_tablesinfo` VALUES (1504,65,'partname',1,'部门、部位名称');
INSERT INTO `p_tablesinfo` VALUES (1505,65,'parthead',1,'部门、部位负责人');
INSERT INTO `p_tablesinfo` VALUES (1506,65,'totalstaff',2,'涉密人员总数');
INSERT INTO `p_tablesinfo` VALUES (1507,65,'partlocation',1,'部门、部位地理位置');
INSERT INTO `p_tablesinfo` VALUES (1508,65,'naturereason',1,'原确定性质及理由');
INSERT INTO `p_tablesinfo` VALUES (1509,65,'undoreason',1,'撤销理由');
INSERT INTO `p_tablesinfo` VALUES (1510,65,'uscomdesc',1,'申报单位保密委员会意见');
INSERT INTO `p_tablesinfo` VALUES (1511,65,'uscomdate',0,'申报单位保密委员会意见填写日期');
INSERT INTO `p_tablesinfo` VALUES (1512,65,'yscomdesc',1,'院保密委员会意见');
INSERT INTO `p_tablesinfo` VALUES (1513,65,'yscomdate',0,'院保密委员会意见填写日期');
INSERT INTO `p_tablesinfo` VALUES (1514,65,'username',1,'处理人姓名');
INSERT INTO `p_tablesinfo` VALUES (1515,65,'userid',2,'处理人id');
INSERT INTO `p_tablesinfo` VALUES (1516,66,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (1517,66,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (1518,66,'lname',1,'姓名');
INSERT INTO `p_tablesinfo` VALUES (1519,66,'pname',1,'岗位名称');
INSERT INTO `p_tablesinfo` VALUES (1520,66,'pclassification',2,'岗位密级');
INSERT INTO `p_tablesinfo` VALUES (1521,66,'tstartdate',0,'脱密期起始管理日期');
INSERT INTO `p_tablesinfo` VALUES (1522,66,'tenddate',0,'脱密期截止管理日期');
INSERT INTO `p_tablesinfo` VALUES (1523,66,'card',1,'身份证号码');
INSERT INTO `p_tablesinfo` VALUES (1524,66,'adrress',1,'承诺人现住址');
INSERT INTO `p_tablesinfo` VALUES (1525,66,'pcompany',1,'承诺人调往单位');
INSERT INTO `p_tablesinfo` VALUES (1526,66,'cellphone',1,'联系方式');
INSERT INTO `p_tablesinfo` VALUES (1527,66,'lpname',1,'承诺人签名');
INSERT INTO `p_tablesinfo` VALUES (1528,66,'lpid',2,'承诺人id');
INSERT INTO `p_tablesinfo` VALUES (1529,66,'pdate',0,'签订日期');
INSERT INTO `p_tablesinfo` VALUES (1530,66,'username',1,'处理人姓名');
INSERT INTO `p_tablesinfo` VALUES (1531,66,'userid',2,'处理人id');
INSERT INTO `p_tablesinfo` VALUES (1532,67,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (1533,67,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (1534,67,'meetname',1,'会议名称');
INSERT INTO `p_tablesinfo` VALUES (1535,67,'orgid',1,'承办部门id');
INSERT INTO `p_tablesinfo` VALUES (1536,67,'orgname',1,'承办部门');
INSERT INTO `p_tablesinfo` VALUES (1537,67,'meetdate',0,'会议时间');
INSERT INTO `p_tablesinfo` VALUES (1538,67,'classification',1,'密级');
INSERT INTO `p_tablesinfo` VALUES (1539,67,'meetplace',1,'会议地点');
INSERT INTO `p_tablesinfo` VALUES (1540,67,'bmname',1,'保密责任人');
INSERT INTO `p_tablesinfo` VALUES (1541,67,'meetcontent',1,'会议内容和参加人员范围');
INSERT INTO `p_tablesinfo` VALUES (1542,67,'cborgopinion',1,'承办部门意见');
INSERT INTO `p_tablesinfo` VALUES (1543,67,'cbleader',1,'承办部门领导签字');
INSERT INTO `p_tablesinfo` VALUES (1544,67,'cbleaderdate',0,'承办部门领导签字日期');
INSERT INTO `p_tablesinfo` VALUES (1545,67,'cbleaderid',2,'承办部门领导id');
INSERT INTO `p_tablesinfo` VALUES (1546,67,'sofficedesc',1,'保密办公室审核意见');
INSERT INTO `p_tablesinfo` VALUES (1547,67,'sofficesign',1,'保密办公室签字');
INSERT INTO `p_tablesinfo` VALUES (1548,67,'sofficeid',2,'保密办公室id');
INSERT INTO `p_tablesinfo` VALUES (1549,67,'sofficedate',0,'保密办公室审核日期');
INSERT INTO `p_tablesinfo` VALUES (1550,67,'yleaderopinion',1,'院主管领导审批');
INSERT INTO `p_tablesinfo` VALUES (1551,67,'yleader',1,'院主管领导签字');
INSERT INTO `p_tablesinfo` VALUES (1552,67,'yleaderid',2,'院主管领导id');
INSERT INTO `p_tablesinfo` VALUES (1553,67,'yleaderdate',0,'院主管领导签字日期');
INSERT INTO `p_tablesinfo` VALUES (1554,67,'username',1,'处理人姓名');
INSERT INTO `p_tablesinfo` VALUES (1555,67,'userid',2,'处理人id');
INSERT INTO `p_tablesinfo` VALUES (1556,68,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (1557,68,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (1558,68,'meetname',1,'会议名称');
INSERT INTO `p_tablesinfo` VALUES (1559,68,'orgid',1,'承办部门id');
INSERT INTO `p_tablesinfo` VALUES (1560,68,'orgname',1,'承办部门');
INSERT INTO `p_tablesinfo` VALUES (1561,68,'meetdate',0,'会议时间');
INSERT INTO `p_tablesinfo` VALUES (1562,68,'classification',1,'密级');
INSERT INTO `p_tablesinfo` VALUES (1563,68,'meetplace',1,'会议地点');
INSERT INTO `p_tablesinfo` VALUES (1564,68,'meetcontent',1,'会议内容');
INSERT INTO `p_tablesinfo` VALUES (1565,68,'meeters',1,'参会人员范围');
INSERT INTO `p_tablesinfo` VALUES (1566,68,'issecuritywork',2,'承办会议部门是否指定专人负责保密工作（0/1 否/是）');
INSERT INTO `p_tablesinfo` VALUES (1567,68,'sworkremark',1,'指定专人负责保密工作备注');
INSERT INTO `p_tablesinfo` VALUES (1568,68,'istelshield',2,'是否加装手机信号屏蔽器（0/1 否/是）');
INSERT INTO `p_tablesinfo` VALUES (1569,68,'telshieldremark',1,'加装手机信号屏蔽器备注');
INSERT INTO `p_tablesinfo` VALUES (1570,68,'isstoretel',2,'是否按要求存放手机（0/1 否/是）');
INSERT INTO `p_tablesinfo` VALUES (1571,68,'storetelremark',1,'存放手机备注');
INSERT INTO `p_tablesinfo` VALUES (1572,68,'scheck',2,'是否对会场进行保密检查');
INSERT INTO `p_tablesinfo` VALUES (1573,68,'scheckremark',1,'保密检查备注');
INSERT INTO `p_tablesinfo` VALUES (1574,68,'isdeclares',2,'是否宣布保密纪律（0/1 否/是）');
INSERT INTO `p_tablesinfo` VALUES (1575,68,'declareremark',1,'保密纪律备注');
INSERT INTO `p_tablesinfo` VALUES (1576,68,'issignin',2,'是否严格控制人员范围、要求签到（0/1 否/是）');
INSERT INTO `p_tablesinfo` VALUES (1577,68,'signinremark',1,'签到备注');
INSERT INTO `p_tablesinfo` VALUES (1578,68,'iswiffi',2,'是否带入具备无线上网功能设备（0/1 否/是）');
INSERT INTO `p_tablesinfo` VALUES (1579,68,'wiffiremark',1,'无线发射传输的设备的备注');
INSERT INTO `p_tablesinfo` VALUES (1580,68,'istape',2,'是否录音、录像情况');
INSERT INTO `p_tablesinfo` VALUES (1581,68,'taperemark',1,'录音、录像备注');
INSERT INTO `p_tablesinfo` VALUES (1582,68,'taper',1,'录音负责人');
INSERT INTO `p_tablesinfo` VALUES (1583,68,'videor',1,'录像负责人');
INSERT INTO `p_tablesinfo` VALUES (1584,68,'issecurityfile',2,'是否有涉密文件、资料，有是否办理签发登记手续，会后清退回收情况');
INSERT INTO `p_tablesinfo` VALUES (1585,68,'total',2,'文件共印份数');
INSERT INTO `p_tablesinfo` VALUES (1586,68,'giveout',2,'发放份数');
INSERT INTO `p_tablesinfo` VALUES (1587,68,'takeback',2,'收回份数');
INSERT INTO `p_tablesinfo` VALUES (1588,68,'takebacker',1,'回收保管负责人');
INSERT INTO `p_tablesinfo` VALUES (1589,68,'isguard',2,'休息期间是否指定专人看守和保密工作');
INSERT INTO `p_tablesinfo` VALUES (1590,68,'guardremark',1,'看守备注');
INSERT INTO `p_tablesinfo` VALUES (1591,68,'bmname',1,'保密责任人');
INSERT INTO `p_tablesinfo` VALUES (1592,68,'bmnameid',2,'保密负责人id');
INSERT INTO `p_tablesinfo` VALUES (1593,68,'bmsigndate',0,'保密负责人签字日期');
INSERT INTO `p_tablesinfo` VALUES (1594,68,'sofficedesc',1,'保密委员会办公室审核意见');
INSERT INTO `p_tablesinfo` VALUES (1595,68,'sofficesign',1,'保密委员会办公室签字');
INSERT INTO `p_tablesinfo` VALUES (1596,68,'sofficeid',2,'保密委员会办公室id');
INSERT INTO `p_tablesinfo` VALUES (1597,68,'sofficedate',0,'保密委员会办公室审核日期');
INSERT INTO `p_tablesinfo` VALUES (1598,68,'username',1,'处理人姓名');
INSERT INTO `p_tablesinfo` VALUES (1599,68,'userid',2,'处理人id');
INSERT INTO `p_tablesinfo` VALUES (1600,69,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (1601,69,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (1602,69,'aid',2,'外来人员进入保密要害部门、部位申请表id');
INSERT INTO `p_tablesinfo` VALUES (1603,69,'name',1,'姓名');
INSERT INTO `p_tablesinfo` VALUES (1604,69,'jobs',1,'职务');
INSERT INTO `p_tablesinfo` VALUES (1605,69,'workunit',1,'单位');
INSERT INTO `p_tablesinfo` VALUES (1606,70,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (1607,70,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (1608,70,'deptname',1,'接待单位盖章');
INSERT INTO `p_tablesinfo` VALUES (1609,70,'deptid',2,'接待单位id');
INSERT INTO `p_tablesinfo` VALUES (1610,70,'formdate',0,'填表日期');
INSERT INTO `p_tablesinfo` VALUES (1611,70,'teamname',1,'来访团组名称');
INSERT INTO `p_tablesinfo` VALUES (1612,70,'invitedept',1,'邀请单位');
INSERT INTO `p_tablesinfo` VALUES (1613,70,'purpose',1,'来访目的');
INSERT INTO `p_tablesinfo` VALUES (1614,70,'lfdate',0,'来访时间');
INSERT INTO `p_tablesinfo` VALUES (1615,70,'linkman',1,'接待单位联系人');
INSERT INTO `p_tablesinfo` VALUES (1616,70,'linktel',1,'联系电话');
INSERT INTO `p_tablesinfo` VALUES (1617,70,'cellphone',1,'手机');
INSERT INTO `p_tablesinfo` VALUES (1618,70,'cryptosecurity',1,'参观部位中不宜接触的产品、设备及拟采取的保密措施');
INSERT INTO `p_tablesinfo` VALUES (1619,70,'rewsopinion',1,'接待单位外事部门意见');
INSERT INTO `p_tablesinfo` VALUES (1620,70,'rebmopinion',1,'接待单位保密部门意见');
INSERT INTO `p_tablesinfo` VALUES (1621,70,'respopinion',1,'接待单位审批意见');
INSERT INTO `p_tablesinfo` VALUES (1622,70,'gswsopinion',1,'院、公司外事部门意见');
INSERT INTO `p_tablesinfo` VALUES (1623,70,'gsbmopinion',1,'院、公司保密部门意见');
INSERT INTO `p_tablesinfo` VALUES (1624,70,'gsspopinion',1,'院、公司审批意见');
INSERT INTO `p_tablesinfo` VALUES (1625,70,'groupcompany',1,'集团公司');
INSERT INTO `p_tablesinfo` VALUES (1626,70,'username',1,'处理人姓名');
INSERT INTO `p_tablesinfo` VALUES (1627,70,'userid',2,'处理人id');
INSERT INTO `p_tablesinfo` VALUES (1628,71,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (1629,71,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (1630,71,'oaid',2,'航天科技集团公司企事业单位科研生产部位一次性对外开放申报表id');
INSERT INTO `p_tablesinfo` VALUES (1631,71,'partnum',1,'部位代号');
INSERT INTO `p_tablesinfo` VALUES (1632,71,'major',1,'部位专业名称');
INSERT INTO `p_tablesinfo` VALUES (1633,71,'species',1,'属何种部');
INSERT INTO `p_tablesinfo` VALUES (1634,71,'device',1,'拟参观产品及设备');
INSERT INTO `p_tablesinfo` VALUES (1635,71,'purpose',1,'参观目的');
INSERT INTO `p_tablesinfo` VALUES (1636,72,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (1637,72,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (1638,72,'unit',1,'申报单位');
INSERT INTO `p_tablesinfo` VALUES (1639,72,'unitid',1,'单位id');
INSERT INTO `p_tablesinfo` VALUES (1640,72,'shead',1,'申报部门或单位保密负责人');
INSERT INTO `p_tablesinfo` VALUES (1641,72,'office',1,'联网计算机所在处、室');
INSERT INTO `p_tablesinfo` VALUES (1642,72,'models',1,'联网机型');
INSERT INTO `p_tablesinfo` VALUES (1643,72,'haddress',1,'主机（MAC）地址');
INSERT INTO `p_tablesinfo` VALUES (1644,72,'serialnum',1,'硬盘序列号');
INSERT INTO `p_tablesinfo` VALUES (1645,72,'isspecial',2,'是否专机专用 0/1否/是');
INSERT INTO `p_tablesinfo` VALUES (1646,72,'sresponsible',1,'联网计算机保密责任人');
INSERT INTO `p_tablesinfo` VALUES (1647,72,'licensenum',1,'计算机联网许可证编号');
INSERT INTO `p_tablesinfo` VALUES (1648,72,'mainmatter',1,'联网目的及上网主要事项');
INSERT INTO `p_tablesinfo` VALUES (1649,72,'smeasures',1,'安全保密措施');
INSERT INTO `p_tablesinfo` VALUES (1650,72,'departmentdesc',1,'申报部门或单位领导审查意见');
INSERT INTO `p_tablesinfo` VALUES (1651,72,'departmentdate',0,'申报部门或单位领导审查意见填写日期');
INSERT INTO `p_tablesinfo` VALUES (1652,72,'comdepartdesc',1,'公司（院、基地）主管部门审批意见');
INSERT INTO `p_tablesinfo` VALUES (1653,72,'comdepartdate',0,'公司（院、基地）主管部门审批意见填写日期');
INSERT INTO `p_tablesinfo` VALUES (1654,72,'username',1,'处理人姓名');
INSERT INTO `p_tablesinfo` VALUES (1655,72,'userid',2,'处理人id');
INSERT INTO `p_tablesinfo` VALUES (1656,73,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (1657,73,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (1658,73,'pname',1,'承诺人签名');
INSERT INTO `p_tablesinfo` VALUES (1659,73,'pid',2,'承诺人id');
INSERT INTO `p_tablesinfo` VALUES (1660,73,'pdate',0,'签名日期');
INSERT INTO `p_tablesinfo` VALUES (1661,73,'username',1,'处理人姓名');
INSERT INTO `p_tablesinfo` VALUES (1662,73,'userid',2,'处理人id');
INSERT INTO `p_tablesinfo` VALUES (1663,74,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (1664,74,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (1665,74,'qid',2,'季度保密补贴考核发放表id');
INSERT INTO `p_tablesinfo` VALUES (1666,74,'name',1,'姓名');
INSERT INTO `p_tablesinfo` VALUES (1667,74,'classification',1,'岗位密级');
INSERT INTO `p_tablesinfo` VALUES (1668,74,'yfmoney',0,'应发金额（季）');
INSERT INTO `p_tablesinfo` VALUES (1669,74,'brmoney',0,'扣补发金额');
INSERT INTO `p_tablesinfo` VALUES (1670,74,'sfmoney',0,'实发金额（季）');
INSERT INTO `p_tablesinfo` VALUES (1671,74,'moneybdreason',1,'金额变动原因');
INSERT INTO `p_tablesinfo` VALUES (1672,74,'isperform',2,'履行保密管理制度情况 0/1符合/不符合');
INSERT INTO `p_tablesinfo` VALUES (1673,74,'remark',1,'备注');
INSERT INTO `p_tablesinfo` VALUES (1674,75,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (1675,75,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (1676,75,'orgname',1,'部门');
INSERT INTO `p_tablesinfo` VALUES (1677,75,'orgid',1,'部门id');
INSERT INTO `p_tablesinfo` VALUES (1678,75,'sftotalamount',0,'实发金额总计（元）');
INSERT INTO `p_tablesinfo` VALUES (1679,75,'departdesc',1,'部门领导意见');
INSERT INTO `p_tablesinfo` VALUES (1680,75,'departdate',0,'部门领导意见填写日期');
INSERT INTO `p_tablesinfo` VALUES (1681,75,'officedesc',1,'保密办公室审核意见');
INSERT INTO `p_tablesinfo` VALUES (1682,75,'officedate',0,'保密办公室审核意见填写日期');
INSERT INTO `p_tablesinfo` VALUES (1683,75,'username',1,'处理人姓名');
INSERT INTO `p_tablesinfo` VALUES (1684,75,'userid',2,'处理人id');
INSERT INTO `p_tablesinfo` VALUES (1685,76,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (1686,76,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (1687,76,'begindate',0,'参加日期自');
INSERT INTO `p_tablesinfo` VALUES (1688,76,'enddate',0,'参加日期止');
INSERT INTO `p_tablesinfo` VALUES (1689,76,'activityname',1,'涉外活动名称');
INSERT INTO `p_tablesinfo` VALUES (1690,76,'cborgopinion',1,'承办部门确认');
INSERT INTO `p_tablesinfo` VALUES (1691,76,'cbleader',1,'承办部门签字');
INSERT INTO `p_tablesinfo` VALUES (1692,76,'cbleaderdate',0,'承办部门签字日期');
INSERT INTO `p_tablesinfo` VALUES (1693,76,'cbleaderid',2,'承办部门签字人id');
INSERT INTO `p_tablesinfo` VALUES (1694,76,'securityopinion',1,'保密管理部门确认');
INSERT INTO `p_tablesinfo` VALUES (1695,76,'securitysign',1,'保密管理部门签字');
INSERT INTO `p_tablesinfo` VALUES (1696,76,'securityid',2,'保密管理部门签字人id');
INSERT INTO `p_tablesinfo` VALUES (1697,76,'securitysigndate',0,'保密管理部门签字日期');
INSERT INTO `p_tablesinfo` VALUES (1698,76,'username',1,'处理人姓名');
INSERT INTO `p_tablesinfo` VALUES (1699,76,'userid',2,'处理人id');
INSERT INTO `p_tablesinfo` VALUES (1700,77,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (1701,77,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (1702,77,'pname',1,'承办人');
INSERT INTO `p_tablesinfo` VALUES (1703,77,'orgname',1,'所属部门');
INSERT INTO `p_tablesinfo` VALUES (1704,77,'orgid',1,'所属部门id');
INSERT INTO `p_tablesinfo` VALUES (1705,77,'recontent',1,'审查内容');
INSERT INTO `p_tablesinfo` VALUES (1706,77,'isclassification',2,'是否涉密 0/1否/是');
INSERT INTO `p_tablesinfo` VALUES (1707,77,'classification',1,'涉密等级');
INSERT INTO `p_tablesinfo` VALUES (1708,77,'fullname',1,'资料用途或者接收单位全称');
INSERT INTO `p_tablesinfo` VALUES (1709,77,'depdesc',1,'部门领导意见');
INSERT INTO `p_tablesinfo` VALUES (1710,77,'depsign',1,'部门领导签字');
INSERT INTO `p_tablesinfo` VALUES (1711,77,'depid',2,'部门领导id');
INSERT INTO `p_tablesinfo` VALUES (1712,77,'depdate',0,'部门领导签字日期');
INSERT INTO `p_tablesinfo` VALUES (1713,77,'officedesc',1,'保密委员会办公室意见');
INSERT INTO `p_tablesinfo` VALUES (1714,77,'officesign',1,'保密委员会办公室签字');
INSERT INTO `p_tablesinfo` VALUES (1715,77,'officeid',2,'保密委员会办公室签字人id');
INSERT INTO `p_tablesinfo` VALUES (1716,77,'officedate',0,'保密委员会办公室意见填写日期');
INSERT INTO `p_tablesinfo` VALUES (1717,77,'expertsdesc',1,'专家或专家组意见');
INSERT INTO `p_tablesinfo` VALUES (1718,77,'scomdesc',1,'保密委员会意见');
INSERT INTO `p_tablesinfo` VALUES (1719,77,'scomsign',1,'保密委员会签字');
INSERT INTO `p_tablesinfo` VALUES (1720,77,'scomid',2,'保密委员会签字人id');
INSERT INTO `p_tablesinfo` VALUES (1721,77,'scomdate',0,'保密委员会签字日期');
INSERT INTO `p_tablesinfo` VALUES (1722,77,'username',1,'处理人姓名');
INSERT INTO `p_tablesinfo` VALUES (1723,77,'userid',2,'处理人id');
INSERT INTO `p_tablesinfo` VALUES (1724,78,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (1725,78,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (1726,78,'sid',2,'保密提醒记录表id');
INSERT INTO `p_tablesinfo` VALUES (1727,78,'orgname',1,'部门');
INSERT INTO `p_tablesinfo` VALUES (1728,78,'orgid',1,'部门id');
INSERT INTO `p_tablesinfo` VALUES (1729,78,'name',1,'人员签字');
INSERT INTO `p_tablesinfo` VALUES (1730,79,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (1731,79,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (1732,79,'orgname',1,'使用部门');
INSERT INTO `p_tablesinfo` VALUES (1733,79,'orgid',1,'使用部门id');
INSERT INTO `p_tablesinfo` VALUES (1734,79,'uname',1,'使用人');
INSERT INTO `p_tablesinfo` VALUES (1735,79,'sresponsible',1,'联网计算机保密责任人');
INSERT INTO `p_tablesinfo` VALUES (1736,79,'models',1,'联网计算机型号');
INSERT INTO `p_tablesinfo` VALUES (1737,79,'licensenum',1,'计算机联网许可证编号');
INSERT INTO `p_tablesinfo` VALUES (1738,79,'rsign',1,'责任人签字');
INSERT INTO `p_tablesinfo` VALUES (1739,79,'rid',2,'责任人id');
INSERT INTO `p_tablesinfo` VALUES (1740,79,'rdate',0,'责任人签字日期');
INSERT INTO `p_tablesinfo` VALUES (1741,79,'dsign',1,'保密管理部门领导签字');
INSERT INTO `p_tablesinfo` VALUES (1742,79,'did',2,'保密管理部门领导id');
INSERT INTO `p_tablesinfo` VALUES (1743,79,'ddate',0,'保密管理部门领导签字日期');
INSERT INTO `p_tablesinfo` VALUES (1744,79,'note',1,'备注');
INSERT INTO `p_tablesinfo` VALUES (1745,79,'username',1,'处理人姓名');
INSERT INTO `p_tablesinfo` VALUES (1746,79,'userid',2,'处理人id');
INSERT INTO `p_tablesinfo` VALUES (1747,80,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (1748,80,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (1749,80,'orgname',1,'部门');
INSERT INTO `p_tablesinfo` VALUES (1750,80,'orgid',1,'部门id');
INSERT INTO `p_tablesinfo` VALUES (1751,80,'name',1,'姓名');
INSERT INTO `p_tablesinfo` VALUES (1752,80,'classification',2,'岗位密级');
INSERT INTO `p_tablesinfo` VALUES (1753,80,'educationdesc',1,'教育培训内容');
INSERT INTO `p_tablesinfo` VALUES (1754,80,'sign',1,'本人签字');
INSERT INTO `p_tablesinfo` VALUES (1755,80,'signdate',0,'签字日期');
INSERT INTO `p_tablesinfo` VALUES (1756,80,'rname',1,'记录人');
INSERT INTO `p_tablesinfo` VALUES (1757,80,'reid',2,'记录人id');
INSERT INTO `p_tablesinfo` VALUES (1758,80,'redate',0,'记录日期');
INSERT INTO `p_tablesinfo` VALUES (1759,80,'username',1,'处理人姓名');
INSERT INTO `p_tablesinfo` VALUES (1760,80,'userid',2,'处理人id');
INSERT INTO `p_tablesinfo` VALUES (1761,81,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (1762,81,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (1763,81,'scode',1,'编号');
INSERT INTO `p_tablesinfo` VALUES (1764,81,'orgname',1,'借用部门');
INSERT INTO `p_tablesinfo` VALUES (1765,81,'orgid',1,'部门id');
INSERT INTO `p_tablesinfo` VALUES (1766,81,'bname',1,'借用人');
INSERT INTO `p_tablesinfo` VALUES (1767,81,'bid',2,'借用人id');
INSERT INTO `p_tablesinfo` VALUES (1768,81,'borrowreason',1,'借用原因');
INSERT INTO `p_tablesinfo` VALUES (1769,81,'mcode',1,'介质编号');
INSERT INTO `p_tablesinfo` VALUES (1770,81,'mclassifition',2,'介质密级 0/1机密/秘密');
INSERT INTO `p_tablesinfo` VALUES (1771,81,'usedate',0,'使用时间');
INSERT INTO `p_tablesinfo` VALUES (1772,81,'dcode',1,'连接设备编号');
INSERT INTO `p_tablesinfo` VALUES (1773,81,'information',1,'存储信息的主要内容');
INSERT INTO `p_tablesinfo` VALUES (1774,81,'imaxclassified',1,'存储信息的最高密级');
INSERT INTO `p_tablesinfo` VALUES (1775,81,'departmentdesc',1,'部门领导审批意见');
INSERT INTO `p_tablesinfo` VALUES (1776,81,'departmentdate',0,'部门领导审批日期');
INSERT INTO `p_tablesinfo` VALUES (1777,81,'officedesc',1,'保密委员会办公室意见');
INSERT INTO `p_tablesinfo` VALUES (1778,81,'officedate',0,'保密委员会办公室意见填写日期');
INSERT INTO `p_tablesinfo` VALUES (1779,81,'cleardesc',1,'返回信息清除情况');
INSERT INTO `p_tablesinfo` VALUES (1780,81,'cleardate',0,'清除日期');
INSERT INTO `p_tablesinfo` VALUES (1781,81,'applydate',0,'申请日期');
INSERT INTO `p_tablesinfo` VALUES (1782,81,'username',1,'处理人姓名');
INSERT INTO `p_tablesinfo` VALUES (1783,81,'userid',2,'处理人id');
INSERT INTO `p_tablesinfo` VALUES (1784,81,'mark',1,'备注');
INSERT INTO `p_tablesinfo` VALUES (1785,82,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (1786,82,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (1787,82,'eqid',2,'涉密岗位聘用人员保密资格审查表id');
INSERT INTO `p_tablesinfo` VALUES (1788,82,'relation',1,'关系');
INSERT INTO `p_tablesinfo` VALUES (1789,82,'sex',2,'性别');
INSERT INTO `p_tablesinfo` VALUES (1790,82,'age',2,'年龄');
INSERT INTO `p_tablesinfo` VALUES (1791,82,'name',1,'姓名');
INSERT INTO `p_tablesinfo` VALUES (1792,82,'national',1,'国籍/籍贯');
INSERT INTO `p_tablesinfo` VALUES (1793,82,'workunit',1,'工作单位及职务（涉外应标明国别和所在机构名称）');
INSERT INTO `p_tablesinfo` VALUES (1794,83,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (1795,83,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (1796,83,'orgname',1,'部门名称');
INSERT INTO `p_tablesinfo` VALUES (1797,83,'orgid',1,'部门id');
INSERT INTO `p_tablesinfo` VALUES (1798,83,'filltime',0,'填报日期');
INSERT INTO `p_tablesinfo` VALUES (1799,83,'pname',1,'承办人');
INSERT INTO `p_tablesinfo` VALUES (1800,83,'cellphone',1,'联系电话');
INSERT INTO `p_tablesinfo` VALUES (1801,83,'mname',1,'事项名称');
INSERT INTO `p_tablesinfo` VALUES (1802,83,'adjustpurpose',2,'调整目的 0/1变更密级/解密');
INSERT INTO `p_tablesinfo` VALUES (1803,83,'oclassification',1,'原密级');
INSERT INTO `p_tablesinfo` VALUES (1804,83,'newclassification',1,'拟变更密级');
INSERT INTO `p_tablesinfo` VALUES (1805,83,'orperiod',1,'原保密期限');
INSERT INTO `p_tablesinfo` VALUES (1806,83,'newperiod',1,'拟变更保密期限');
INSERT INTO `p_tablesinfo` VALUES (1807,83,'orcontrolrange',1,'原控制范围');
INSERT INTO `p_tablesinfo` VALUES (1808,83,'newcontrolrange',1,'拟变更控制范围');
INSERT INTO `p_tablesinfo` VALUES (1809,83,'chdecryption',1,'变更或解密理由');
INSERT INTO `p_tablesinfo` VALUES (1810,83,'reviewercomments',1,'定密审核人意见');
INSERT INTO `p_tablesinfo` VALUES (1811,83,'dsign',1,'定密审核人签字');
INSERT INTO `p_tablesinfo` VALUES (1812,83,'did',2,'定密审核人id');
INSERT INTO `p_tablesinfo` VALUES (1813,83,'auditdate',0,'定密审核日期');
INSERT INTO `p_tablesinfo` VALUES (1814,83,'examopinion',1,'定密责任人审定意见');
INSERT INTO `p_tablesinfo` VALUES (1815,83,'examsign',1,'定密责任人审定签字');
INSERT INTO `p_tablesinfo` VALUES (1816,83,'examdate',0,'定密审定日期');
INSERT INTO `p_tablesinfo` VALUES (1817,83,'eaxmid',2,'定密责任人id');
INSERT INTO `p_tablesinfo` VALUES (1818,83,'username',1,'处理人姓名');
INSERT INTO `p_tablesinfo` VALUES (1819,83,'userid',2,'处理人id');
INSERT INTO `p_tablesinfo` VALUES (1820,84,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (1821,84,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (1822,84,'eid',2,'存储介质配备审批表id');
INSERT INTO `p_tablesinfo` VALUES (1823,84,'qmediumtype',2,'拟配备存储介质类别');
INSERT INTO `p_tablesinfo` VALUES (1824,84,'qspecifications',1,'拟配备存储介质规格');
INSERT INTO `p_tablesinfo` VALUES (1825,84,'qclassification',1,'拟配备存储介质密级');
INSERT INTO `p_tablesinfo` VALUES (1826,84,'qnum',2,'拟配备存储介质数量');
INSERT INTO `p_tablesinfo` VALUES (1827,84,'qcerttype',2,'拟配备存储介质认证类别');
INSERT INTO `p_tablesinfo` VALUES (1828,84,'qusrange',1,'拟配备存储介质使用范围');
INSERT INTO `p_tablesinfo` VALUES (1829,85,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (1830,85,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (1831,85,'eqid',1,'涉密岗位聘用人员保密资格审查表id');
INSERT INTO `p_tablesinfo` VALUES (1832,85,'wstartdate',0,'学习工作经历起始时间');
INSERT INTO `p_tablesinfo` VALUES (1833,85,'wenddate',0,'学习工作经历截止时间');
INSERT INTO `p_tablesinfo` VALUES (1834,85,'workunit',1,'工作单位');
INSERT INTO `p_tablesinfo` VALUES (1835,85,'jobs',1,'岗位');
INSERT INTO `p_tablesinfo` VALUES (1836,85,'position',1,'职务');
INSERT INTO `p_tablesinfo` VALUES (1837,85,'zmname',1,'证明人');
INSERT INTO `p_tablesinfo` VALUES (1838,86,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (1839,86,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (1840,86,'code',1,'编号');
INSERT INTO `p_tablesinfo` VALUES (1841,86,'noticedate',0,'通知日期');
INSERT INTO `p_tablesinfo` VALUES (1842,86,'orgid',1,'部门id');
INSERT INTO `p_tablesinfo` VALUES (1843,86,'orgname',1,'部门');
INSERT INTO `p_tablesinfo` VALUES (1844,86,'name',1,'姓名');
INSERT INTO `p_tablesinfo` VALUES (1845,86,'detaindesc',1,'扣发意见');
INSERT INTO `p_tablesinfo` VALUES (1846,86,'detainsign',1,'被扣发人签字');
INSERT INTO `p_tablesinfo` VALUES (1847,86,'dsid',2,'被扣发人id');
INSERT INTO `p_tablesinfo` VALUES (1848,86,'signdate',0,'签字日期');
INSERT INTO `p_tablesinfo` VALUES (1849,86,'deductamount',0,'扣发金额');
INSERT INTO `p_tablesinfo` VALUES (1850,86,'detainstartdate',0,'扣发开始时间');
INSERT INTO `p_tablesinfo` VALUES (1851,86,'detainenddate',0,'扣发截止时间');
INSERT INTO `p_tablesinfo` VALUES (1852,86,'promoter',1,'承办人');
INSERT INTO `p_tablesinfo` VALUES (1853,86,'promoterid',2,'承办人id');
INSERT INTO `p_tablesinfo` VALUES (1854,86,'promoterdate',0,'承办人签字时间');
INSERT INTO `p_tablesinfo` VALUES (1855,86,'username',1,'处理人姓名');
INSERT INTO `p_tablesinfo` VALUES (1856,86,'userid',2,'处理人id');
INSERT INTO `p_tablesinfo` VALUES (1857,87,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (1858,87,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (1859,87,'pcode',1,'编号');
INSERT INTO `p_tablesinfo` VALUES (1860,87,'pnoticedate',0,'通知日期');
INSERT INTO `p_tablesinfo` VALUES (1861,87,'orgname',1,'部门');
INSERT INTO `p_tablesinfo` VALUES (1862,87,'orgid',1,'部门id');
INSERT INTO `p_tablesinfo` VALUES (1863,87,'pname',1,'姓名');
INSERT INTO `p_tablesinfo` VALUES (1864,87,'pdetaindesc',1,'扣发意见');
INSERT INTO `p_tablesinfo` VALUES (1865,87,'officesign',1,'保密办签字');
INSERT INTO `p_tablesinfo` VALUES (1866,87,'officeid',2,'保密办id');
INSERT INTO `p_tablesinfo` VALUES (1867,87,'signdate',0,'保密办签字日期');
INSERT INTO `p_tablesinfo` VALUES (1868,87,'username',1,'处理人姓名');
INSERT INTO `p_tablesinfo` VALUES (1869,87,'userid',2,'处理人id');
INSERT INTO `p_tablesinfo` VALUES (1870,88,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (1871,88,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (1872,88,'num',1,'编号');
INSERT INTO `p_tablesinfo` VALUES (1873,88,'formdate',0,'填报日期');
INSERT INTO `p_tablesinfo` VALUES (1874,88,'deptname',1,'接待单位名称');
INSERT INTO `p_tablesinfo` VALUES (1875,88,'deptsecrity',2,'接待单位涉密等级');
INSERT INTO `p_tablesinfo` VALUES (1876,88,'country',1,'来华人员国别（地区）');
INSERT INTO `p_tablesinfo` VALUES (1877,88,'foreigdept',1,'外宾单位');
INSERT INTO `p_tablesinfo` VALUES (1878,88,'foreigners',2,'外宾人数');
INSERT INTO `p_tablesinfo` VALUES (1879,88,'begindate',0,'外宾来访时间起');
INSERT INTO `p_tablesinfo` VALUES (1880,88,'enddate',0,'外宾来访时间止');
INSERT INTO `p_tablesinfo` VALUES (1881,88,'superdept',1,'上级审批部门');
INSERT INTO `p_tablesinfo` VALUES (1882,88,'examinenum',1,'审批文号');
INSERT INTO `p_tablesinfo` VALUES (1883,88,'exchplace',1,'洽谈交流地点');
INSERT INTO `p_tablesinfo` VALUES (1884,88,'touchpart',1,'接待参观接触部位');
INSERT INTO `p_tablesinfo` VALUES (1885,88,'plansmeasur',1,'接待及保密方案或措施');
INSERT INTO `p_tablesinfo` VALUES (1886,88,'bmname',1,'安全保密责任人');
INSERT INTO `p_tablesinfo` VALUES (1887,88,'cellphone',1,'联系电话');
INSERT INTO `p_tablesinfo` VALUES (1888,88,'reason',1,'接待事由');
INSERT INTO `p_tablesinfo` VALUES (1889,88,'formdept',1,'填报单位');
INSERT INTO `p_tablesinfo` VALUES (1890,88,'former',1,'填报人');
INSERT INTO `p_tablesinfo` VALUES (1891,88,'formerid',2,'填报人id');
INSERT INTO `p_tablesinfo` VALUES (1892,88,'formertel',1,'填报人联系电话');
INSERT INTO `p_tablesinfo` VALUES (1893,88,'username',1,'处理人姓名');
INSERT INTO `p_tablesinfo` VALUES (1894,88,'userid',2,'处理人id');
INSERT INTO `p_tablesinfo` VALUES (1895,89,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (1896,89,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (1897,89,'vid',2,'来访人员登记簿id');
INSERT INTO `p_tablesinfo` VALUES (1898,89,'vdate',0,'访问日期');
INSERT INTO `p_tablesinfo` VALUES (1899,89,'visitorunit',1,'来访人员单位');
INSERT INTO `p_tablesinfo` VALUES (1900,89,'vname',1,'姓名');
INSERT INTO `p_tablesinfo` VALUES (1901,89,'vpurpose',1,'来访目的');
INSERT INTO `p_tablesinfo` VALUES (1902,89,'acofficials',1,'陪同人员');
INSERT INTO `p_tablesinfo` VALUES (1903,89,'vstartdate',0,'来访时间');
INSERT INTO `p_tablesinfo` VALUES (1904,89,'venddate',0,'离开时间');
INSERT INTO `p_tablesinfo` VALUES (1905,89,'note',1,'备注');
INSERT INTO `p_tablesinfo` VALUES (1906,90,'Id',2,'');
INSERT INTO `p_tablesinfo` VALUES (1907,90,'version',2,'版本号');
INSERT INTO `p_tablesinfo` VALUES (1908,90,'partname',1,'部门部位名称');
INSERT INTO `p_tablesinfo` VALUES (1909,90,'orgid',1,'部门部位id');
INSERT INTO `p_tablesinfo` VALUES (1910,90,'roomcode',1,'房间号');
INSERT INTO `p_tablesinfo` VALUES (1911,90,'recordstartdate',0,'登记统计起始日期');
INSERT INTO `p_tablesinfo` VALUES (1912,90,'recordenddate',0,'登记统计截止日期');
INSERT INTO `p_tablesinfo` VALUES (1913,90,'username',1,'处理人姓名');
INSERT INTO `p_tablesinfo` VALUES (1914,90,'userid',2,'处理人id');
INSERT INTO `p_tablesinfo` VALUES (1951,104,'username',1,'申请人名称');
INSERT INTO `p_tablesinfo` VALUES (1952,104,'userid',2,'申请人ID');
INSERT INTO `p_tablesinfo` VALUES (1953,104,'leavedays',2,'请假天数');
INSERT INTO `p_tablesinfo` VALUES (1954,104,'reason',1,'请假理由');
INSERT INTO `p_tablesinfo` VALUES (1955,104,'state',2,'状态');
/*!40000 ALTER TABLE `p_tablesinfo` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table p_url
#

DROP TABLE IF EXISTS `p_url`;
CREATE TABLE `p_url` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `VERSION` int(11) DEFAULT NULL,
  `mlid` int(11) NOT NULL,
  `mlURL` varchar(400) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1256 DEFAULT CHARSET=utf8;

#
# Dumping data for table p_url
#

LOCK TABLES `p_url` WRITE;
/*!40000 ALTER TABLE `p_url` DISABLE KEYS */;
INSERT INTO `p_url` VALUES (1,0,9,'/admin/roleView.action');
INSERT INTO `p_url` VALUES (2,0,9,'/admin/roleSave.action');
INSERT INTO `p_url` VALUES (3,0,10,'/admin/roleSave.action');
INSERT INTO `p_url` VALUES (4,0,10,'/admin/roleView.action');
INSERT INTO `p_url` VALUES (5,0,11,'/admin/roleRemove.action');
INSERT INTO `p_url` VALUES (7,0,5,'/admin/roleList.action');
INSERT INTO `p_url` VALUES (8,0,6,'/user/managerUserList.action');
INSERT INTO `p_url` VALUES (9,0,12,'/diytable/diyTableList.action');
INSERT INTO `p_url` VALUES (10,0,8,'/org/orgList.action');
INSERT INTO `p_url` VALUES (11,0,19,'/org/orgSave.action');
INSERT INTO `p_url` VALUES (12,0,19,'/org/orgView.action');
INSERT INTO `p_url` VALUES (13,0,21,'/org/orgRemove.action');
INSERT INTO `p_url` VALUES (14,0,24,'/org/orgRemoveAll.action');
INSERT INTO `p_url` VALUES (15,0,20,'/org/orgView.action');
INSERT INTO `p_url` VALUES (16,0,20,'/org/orgSave.action');
INSERT INTO `p_url` VALUES (17,0,13,'/user/toAddUser.action');
INSERT INTO `p_url` VALUES (18,0,14,'modifyUser.action');
INSERT INTO `p_url` VALUES (19,0,15,'modifyUser.action');
INSERT INTO `p_url` VALUES (20,0,16,'modifyUser.action');
INSERT INTO `p_url` VALUES (21,0,17,'/user/toEditUser.action');
INSERT INTO `p_url` VALUES (22,0,18,'/user/deleteUser.action');
INSERT INTO `p_url` VALUES (23,0,26,'/user/deleteUsers.action');
INSERT INTO `p_url` VALUES (24,0,25,'/admin/removeAllRole.action');
INSERT INTO `p_url` VALUES (82,0,13,'/user/editUser.action');
INSERT INTO `p_url` VALUES (149,0,13,'/user/addUser.action');
INSERT INTO `p_url` VALUES (150,0,17,'/user/addUser.action');
INSERT INTO `p_url` VALUES (201,0,2000,'/videomeeting/videoMeetingList.action');
INSERT INTO `p_url` VALUES (202,0,2001,'/videomeeting/videoMeetingAdd.action');
INSERT INTO `p_url` VALUES (203,0,2001,'/videomeeting/videoMeetingSave.action');
INSERT INTO `p_url` VALUES (204,0,2002,'/videomeeting/videoMeetingDel.action');
INSERT INTO `p_url` VALUES (205,0,2003,'/videomeeting/videoMeetingDel.action');
INSERT INTO `p_url` VALUES (206,0,2004,'/videomeeting/videoMeetingInfo.action');
INSERT INTO `p_url` VALUES (208,0,2010,'/telltalerecord/telltaleRecordList.action');
INSERT INTO `p_url` VALUES (209,0,2011,'/telltalerecord/telltaleRecordAdd.action');
INSERT INTO `p_url` VALUES (210,0,2011,'/telltalerecord/telltaleRecordSave.action');
INSERT INTO `p_url` VALUES (211,0,2012,'/telltalerecord/telltaleRecordDel.action');
INSERT INTO `p_url` VALUES (212,0,2013,'/telltalerecord/telltaleRecordDel.action');
INSERT INTO `p_url` VALUES (213,0,2014,'/telltalerecord/telltaleRecordInfo.action');
INSERT INTO `p_url` VALUES (300,0,1100,'/statesecrets/statesecretsList.action');
INSERT INTO `p_url` VALUES (301,0,1101,'/statesecrets/statesecretsEdit.action');
INSERT INTO `p_url` VALUES (302,0,1101,'/statesecrets/saveStatesecrets.action');
INSERT INTO `p_url` VALUES (303,0,1102,'/statesecrets/statesecretsEdit.action');
INSERT INTO `p_url` VALUES (304,0,1102,'/statesecrets/saveStatesecrets.action');
INSERT INTO `p_url` VALUES (305,0,1103,'/statesecrets/statesecretsInfo.action');
INSERT INTO `p_url` VALUES (306,0,1104,'/statesecrets/delStatesecrets.action');
INSERT INTO `p_url` VALUES (307,0,1105,'/statesecrets/delStatesecrets.action');
INSERT INTO `p_url` VALUES (308,0,1106,'/statesecrets/toExamStatesecrets.action');
INSERT INTO `p_url` VALUES (309,0,1106,'/statesecrets/examStatesecrets.action');
INSERT INTO `p_url` VALUES (400,0,1200,'/examclassification/classifiedList.action');
INSERT INTO `p_url` VALUES (401,0,1201,'/examclassification/classifiedEdit.action');
INSERT INTO `p_url` VALUES (402,0,1201,'/examclassification/saveClassified.action');
INSERT INTO `p_url` VALUES (403,0,1202,'/examclassification/classifiedEdit.action');
INSERT INTO `p_url` VALUES (404,0,1202,'/examclassification/saveClassified.action');
INSERT INTO `p_url` VALUES (405,0,1203,'/examclassification/classifiedInfo.action');
INSERT INTO `p_url` VALUES (406,0,1204,'/examclassification/toApproveClassified.action');
INSERT INTO `p_url` VALUES (407,0,1204,'/examclassification/approveClassified.action');
INSERT INTO `p_url` VALUES (408,0,1205,'/examclassification/delClassified.action');
INSERT INTO `p_url` VALUES (409,0,1206,'/examclassification/delClassified.action');
INSERT INTO `p_url` VALUES (500,0,1300,'/securityedu/securityeduList.action');
INSERT INTO `p_url` VALUES (501,0,1301,'/securityedu/securityeduEdit.action');
INSERT INTO `p_url` VALUES (502,0,1301,'/securityedu/saveSecurityedu.action');
INSERT INTO `p_url` VALUES (503,0,1303,'/securityedu/securityeduEdit.action');
INSERT INTO `p_url` VALUES (504,0,1303,'/securityedu/saveSecurityedu.action');
INSERT INTO `p_url` VALUES (505,0,1302,'/securityedu/securityeduInfo.action');
INSERT INTO `p_url` VALUES (506,0,1304,'/securityedu/delSecurityedu.action');
INSERT INTO `p_url` VALUES (507,0,1305,'/securityedu/delSecurityedu.action');
INSERT INTO `p_url` VALUES (600,0,1400,'/commitment/commitmentList.action');
INSERT INTO `p_url` VALUES (601,0,1401,'/commitment/commitmentEdit.action');
INSERT INTO `p_url` VALUES (602,0,1401,'/commitment/saveCommitment.action');
INSERT INTO `p_url` VALUES (603,0,1402,'/commitment/commitmentInfo.action');
INSERT INTO `p_url` VALUES (604,0,1403,'/commitment/commitmentEdit.action');
INSERT INTO `p_url` VALUES (605,0,1403,'/commitment/saveCommitment.action');
INSERT INTO `p_url` VALUES (606,0,1404,'/commitment/delCommitment.action');
INSERT INTO `p_url` VALUES (607,0,1405,'/commitment/delCommitment.action');
INSERT INTO `p_url` VALUES (610,0,1990,'/internetdeclear/internetdeclearList.action');
INSERT INTO `p_url` VALUES (611,0,1991,'/internetdeclear/internetdeclearEdit.action');
INSERT INTO `p_url` VALUES (612,0,1991,'/internetdeclear/saveInternetdeclear.action');
INSERT INTO `p_url` VALUES (613,0,1992,'/internetdeclear/internetdeclearInfo.action');
INSERT INTO `p_url` VALUES (614,0,1993,'/internetdeclear/internetdeclearEdit.action');
INSERT INTO `p_url` VALUES (615,0,1993,'/internetdeclear/saveInternetdeclear.action');
INSERT INTO `p_url` VALUES (616,0,1994,'/internetdeclear/delInternetdeclear.action');
INSERT INTO `p_url` VALUES (617,0,1995,'/internetdeclear/delInternetdeclear.action');
INSERT INTO `p_url` VALUES (620,0,1620,'/equalification/equalificationList.action');
INSERT INTO `p_url` VALUES (621,0,1621,'/equalification/equalificationEdit.action');
INSERT INTO `p_url` VALUES (622,0,1621,'/equalification/saveEqualification.action');
INSERT INTO `p_url` VALUES (623,0,1622,'/equalification/equalificationInfo.action');
INSERT INTO `p_url` VALUES (624,0,1623,'/equalification/equalificationEdit.action');
INSERT INTO `p_url` VALUES (625,0,1623,'/equalification/saveEqualification.action');
INSERT INTO `p_url` VALUES (626,0,1624,'/equalification/delEqualification.action');
INSERT INTO `p_url` VALUES (627,0,1625,'/equalification/delEqualification.action');
INSERT INTO `p_url` VALUES (630,0,1630,'/applykeypart/applykeypartList.action');
INSERT INTO `p_url` VALUES (631,0,1631,'/applykeypart/applykeypartEdit.action');
INSERT INTO `p_url` VALUES (632,0,1631,'/applykeypart/saveApplykeypart.action');
INSERT INTO `p_url` VALUES (633,0,1632,'/applykeypart/applykeypartInfo.action');
INSERT INTO `p_url` VALUES (634,0,1633,'/applykeypart/applykeypartEdit.action');
INSERT INTO `p_url` VALUES (635,0,1633,'/applykeypart/saveApplykeypart.action');
INSERT INTO `p_url` VALUES (636,0,1634,'/applykeypart/delApplykeypart.action');
INSERT INTO `p_url` VALUES (637,0,1635,'/applykeypart/delApplykeypart.action');
INSERT INTO `p_url` VALUES (700,0,1500,'/leavepromise/leavepromiseList.action');
INSERT INTO `p_url` VALUES (701,0,1501,'/leavepromise/leavepromiseEdit.action');
INSERT INTO `p_url` VALUES (702,0,1501,'/leavepromise/saveLeavepromise.action');
INSERT INTO `p_url` VALUES (703,0,1503,'/leavepromise/leavepromiseEdit.action');
INSERT INTO `p_url` VALUES (704,0,1503,'/leavepromise/saveLeavepromise.action');
INSERT INTO `p_url` VALUES (705,0,1502,'/leavepromise/leavepromiseInfo.action');
INSERT INTO `p_url` VALUES (706,0,1504,'/leavepromise/delLeavepromise.action');
INSERT INTO `p_url` VALUES (707,0,1505,'/leavepromise/delLeavepromise.action');
INSERT INTO `p_url` VALUES (710,0,1700,'/classifiedcopy/classifiedcopyList.action');
INSERT INTO `p_url` VALUES (711,0,1701,'/classifiedcopy/classifiedcopyEdit.action');
INSERT INTO `p_url` VALUES (712,0,1701,'/classifiedcopy/saveClassifiedcopy.action');
INSERT INTO `p_url` VALUES (713,0,1702,'/classifiedcopy/classifiedcopyInfo.action');
INSERT INTO `p_url` VALUES (714,0,1703,'/classifiedcopy/classifiedcopyEdit.action');
INSERT INTO `p_url` VALUES (715,0,1703,'/classifiedcopy/saveClassifiedcopy.action');
INSERT INTO `p_url` VALUES (716,0,1704,'/classifiedcopy/delClassifiedcopy.action');
INSERT INTO `p_url` VALUES (717,0,1705,'/classifiedcopy/delClassifiedcopy.action');
INSERT INTO `p_url` VALUES (718,0,1706,'/classifiedcopy/toExamClassifiedcopy.action');
INSERT INTO `p_url` VALUES (719,0,1706,'/classifiedcopy/examClassifiedcopy.action');
INSERT INTO `p_url` VALUES (720,0,1800,'/classifiedrecord/classifiedrecordList.action');
INSERT INTO `p_url` VALUES (721,0,1801,'/classifiedrecord/classifiedrecordEdit.action');
INSERT INTO `p_url` VALUES (722,0,1801,'/classifiedrecord/saveClassifiedrecord.action');
INSERT INTO `p_url` VALUES (723,0,1802,'/classifiedrecord/classifiedrecordInfo.action');
INSERT INTO `p_url` VALUES (724,0,1803,'/classifiedrecord/classifiedrecordEdit.action');
INSERT INTO `p_url` VALUES (725,0,1803,'/classifiedrecord/saveClassifiedrecord.action');
INSERT INTO `p_url` VALUES (726,0,1804,'/classifiedrecord/delClassifiedrecord.action');
INSERT INTO `p_url` VALUES (727,0,1805,'/classifiedrecord/delClassifiedrecord.action');
INSERT INTO `p_url` VALUES (730,0,1900,'/classifiedtz/classifiedtzList.action');
INSERT INTO `p_url` VALUES (731,0,1901,'/classifiedtz/classifiedtzEdit.action');
INSERT INTO `p_url` VALUES (732,0,1901,'/classifiedtz/saveClassifiedtz.action');
INSERT INTO `p_url` VALUES (733,0,1902,'/classifiedtz/classifiedtzInfo.action');
INSERT INTO `p_url` VALUES (734,0,1903,'/classifiedtz/classifiedtzEdit.action');
INSERT INTO `p_url` VALUES (735,0,1903,'/classifiedtz/saveClassifiedtz.action');
INSERT INTO `p_url` VALUES (736,0,1904,'/classifiedtz/delClassifiedtz.action');
INSERT INTO `p_url` VALUES (737,0,1905,'/classifiedtz/delClassifiedtz.action');
INSERT INTO `p_url` VALUES (740,0,1910,'/keypartexam/keypartexamList.action');
INSERT INTO `p_url` VALUES (741,0,1911,'/keypartexam/keypartexamEdit.action');
INSERT INTO `p_url` VALUES (742,0,1911,'/keypartexam/saveKeypartexam.action');
INSERT INTO `p_url` VALUES (743,0,1912,'/keypartexam/keypartexamInfo.action');
INSERT INTO `p_url` VALUES (744,0,1913,'/keypartexam/keypartexamEdit.action');
INSERT INTO `p_url` VALUES (745,0,1913,'/keypartexam/saveKeypartexam.action');
INSERT INTO `p_url` VALUES (746,0,1914,'/keypartexam/delKeypartexam.action');
INSERT INTO `p_url` VALUES (747,0,1915,'/keypartexam/delKeypartexam.action');
INSERT INTO `p_url` VALUES (750,0,1920,'/keypartundo/keypartundoList.action');
INSERT INTO `p_url` VALUES (751,0,1921,'/keypartundo/keypartundoEdit.action');
INSERT INTO `p_url` VALUES (752,0,1921,'/keypartundo/saveKeypartundo.action');
INSERT INTO `p_url` VALUES (753,0,1922,'/keypartundo/keypartundoInfo.action');
INSERT INTO `p_url` VALUES (754,0,1923,'/keypartundo/keypartundoEdit.action');
INSERT INTO `p_url` VALUES (755,0,1923,'/keypartundo/saveKeypartundo.action');
INSERT INTO `p_url` VALUES (756,0,1924,'/keypartundo/delKeypartundo.action');
INSERT INTO `p_url` VALUES (757,0,1925,'/keypartundo/delKeypartundo.action');
INSERT INTO `p_url` VALUES (760,0,1960,'/borrowmedium/borrowmediumList.action');
INSERT INTO `p_url` VALUES (761,0,1961,'/borrowmedium/borrowmediumEdit.action');
INSERT INTO `p_url` VALUES (762,0,1961,'/borrowmedium/saveBorrowmedium.action');
INSERT INTO `p_url` VALUES (763,0,1962,'/borrowmedium/borrowmediumInfo.action');
INSERT INTO `p_url` VALUES (764,0,1963,'/borrowmedium/borrowmediumEdit.action');
INSERT INTO `p_url` VALUES (765,0,1963,'/borrowmedium/saveBorrowmedium.action');
INSERT INTO `p_url` VALUES (766,0,1964,'/borrowmedium/delBorrowmedium.action');
INSERT INTO `p_url` VALUES (767,0,1965,'/borrowmedium/delBorrowmedium.action');
INSERT INTO `p_url` VALUES (780,0,1970,'/smediumborrow/smediumborrowList.action');
INSERT INTO `p_url` VALUES (781,0,1971,'/smediumborrow/smediumborrowEdit.action');
INSERT INTO `p_url` VALUES (782,0,1971,'/smediumborrow/saveSmediumborrow.action');
INSERT INTO `p_url` VALUES (783,0,1972,'/smediumborrow/smediumborrowInfo.action');
INSERT INTO `p_url` VALUES (784,0,1973,'/smediumborrow/smediumborrowEdit.action');
INSERT INTO `p_url` VALUES (785,0,1973,'/smediumborrow/saveSmediumborrow.action');
INSERT INTO `p_url` VALUES (786,0,1974,'/smediumborrow/delSmediumborrow.action');
INSERT INTO `p_url` VALUES (787,0,1975,'/smediumborrow/delSmediumborrow.action');
INSERT INTO `p_url` VALUES (790,0,1980,'/carrypartmedium/carrypartmediumList.action');
INSERT INTO `p_url` VALUES (791,0,1981,'/carrypartmedium/carrypartmediumEdit.action');
INSERT INTO `p_url` VALUES (792,0,1981,'/carrypartmedium/saveCarrypartmedium.action');
INSERT INTO `p_url` VALUES (793,0,1982,'/carrypartmedium/carrypartmediumInfo.action');
INSERT INTO `p_url` VALUES (794,0,1983,'/carrypartmedium/carrypartmediumEdit.action');
INSERT INTO `p_url` VALUES (795,0,1983,'/carrypartmedium/saveCarrypartmedium.action');
INSERT INTO `p_url` VALUES (796,0,1984,'/carrypartmedium/delCarrypartmedium.action');
INSERT INTO `p_url` VALUES (797,0,1985,'/carrypartmedium/delCarrypartmedium.action');
INSERT INTO `p_url` VALUES (800,0,1600,'/classifiedprint/classifiedprintList.action');
INSERT INTO `p_url` VALUES (801,0,1601,'/classifiedprint/classifiedprintEdit.action');
INSERT INTO `p_url` VALUES (802,0,1601,'/classifiedprint/saveClassifiedprint.action');
INSERT INTO `p_url` VALUES (803,0,1602,'/classifiedprint/classifiedprintInfo.action');
INSERT INTO `p_url` VALUES (804,0,1603,'/classifiedprint/classifiedprintEdit.action');
INSERT INTO `p_url` VALUES (805,0,1603,'/classifiedprint/saveClassifiedprint.action');
INSERT INTO `p_url` VALUES (806,0,1604,'/classifiedprint/delClassifiedprint.action');
INSERT INTO `p_url` VALUES (807,0,1605,'/classifiedprint/delClassifiedprint.action');
INSERT INTO `p_url` VALUES (810,0,1810,'/secretonline/secretonlineList.action');
INSERT INTO `p_url` VALUES (811,0,1811,'/secretonline/secretonlineEdit.action');
INSERT INTO `p_url` VALUES (812,0,1811,'/secretonline/saveSecretonline.action');
INSERT INTO `p_url` VALUES (813,0,1812,'/secretonline/secretonlineInfo.action');
INSERT INTO `p_url` VALUES (814,0,1813,'/secretonline/secretonlineEdit.action');
INSERT INTO `p_url` VALUES (815,0,1813,'/secretonline/saveSecretonline.action');
INSERT INTO `p_url` VALUES (816,0,1814,'/secretonline/delSecretonline.action');
INSERT INTO `p_url` VALUES (817,0,1815,'/secretonline/delSecretonline.action');
INSERT INTO `p_url` VALUES (820,0,1820,'/cancelinternet/cancelinternetList.action');
INSERT INTO `p_url` VALUES (821,0,1821,'/cancelinternet/cancelinternetEdit.action');
INSERT INTO `p_url` VALUES (822,0,1821,'/cancelinternet/saveCancelinternet.action');
INSERT INTO `p_url` VALUES (823,0,1822,'/cancelinternet/cancelinternetInfo.action');
INSERT INTO `p_url` VALUES (824,0,1823,'/cancelinternet/cancelinternetEdit.action');
INSERT INTO `p_url` VALUES (825,0,1823,'/cancelinternet/saveCancelinternet.action');
INSERT INTO `p_url` VALUES (826,0,1824,'/cancelinternet/delCancelinternet.action');
INSERT INTO `p_url` VALUES (827,0,1825,'/cancelinternet/delCancelinternet.action');
INSERT INTO `p_url` VALUES (830,0,1830,'/secexamregist/secexamregistList.action');
INSERT INTO `p_url` VALUES (831,0,1831,'/secexamregist/secexamregistEdit.action');
INSERT INTO `p_url` VALUES (832,0,1831,'/secexamregist/saveSecexamregist.action');
INSERT INTO `p_url` VALUES (833,0,1832,'/secexamregist/secexamregistInfo.action');
INSERT INTO `p_url` VALUES (834,0,1833,'/secexamregist/secexamregistEdit.action');
INSERT INTO `p_url` VALUES (835,0,1833,'/secexamregist/saveSecexamregist.action');
INSERT INTO `p_url` VALUES (836,0,1834,'/secexamregist/delSecexamregist.action');
INSERT INTO `p_url` VALUES (837,0,1835,'/secexamregist/delSecexamregist.action');
INSERT INTO `p_url` VALUES (840,0,1840,'/conagreement/conagreementList.action');
INSERT INTO `p_url` VALUES (841,0,1841,'/conagreement/conagreementEdit.action');
INSERT INTO `p_url` VALUES (842,0,1841,'/conagreement/saveConagreement.action');
INSERT INTO `p_url` VALUES (843,0,1842,'/conagreement/conagreementInfo.action');
INSERT INTO `p_url` VALUES (844,0,1843,'/conagreement/conagreementEdit.action');
INSERT INTO `p_url` VALUES (845,0,1843,'/conagreement/saveConagreement.action');
INSERT INTO `p_url` VALUES (846,0,1844,'/conagreement/delConagreement.action');
INSERT INTO `p_url` VALUES (847,0,1845,'/conagreement/delConagreement.action');
INSERT INTO `p_url` VALUES (850,0,1850,'/changeinternet/changeinternetList.action');
INSERT INTO `p_url` VALUES (851,0,1851,'/changeinternet/changeinternetEdit.action');
INSERT INTO `p_url` VALUES (852,0,1851,'/changeinternet/saveChangeinternet.action');
INSERT INTO `p_url` VALUES (853,0,1852,'/changeinternet/changeinternetInfo.action');
INSERT INTO `p_url` VALUES (854,0,1853,'/changeinternet/changeinternetEdit.action');
INSERT INTO `p_url` VALUES (855,0,1853,'/changeinternet/saveChangeinternet.action');
INSERT INTO `p_url` VALUES (856,0,1854,'/changeinternet/delChangeinternet.action');
INSERT INTO `p_url` VALUES (857,0,1855,'/changeinternet/delChangeinternet.action');
INSERT INTO `p_url` VALUES (860,0,1860,'/changemedium/changemediumList.action');
INSERT INTO `p_url` VALUES (861,0,1861,'/changemedium/changemediumEdit.action');
INSERT INTO `p_url` VALUES (862,0,1861,'/changemedium/saveChangemedium.action');
INSERT INTO `p_url` VALUES (863,0,1862,'/changemedium/changemediumInfo.action');
INSERT INTO `p_url` VALUES (864,0,1863,'/changemedium/changemediumEdit.action');
INSERT INTO `p_url` VALUES (865,0,1863,'/changemedium/saveChangemedium.action');
INSERT INTO `p_url` VALUES (866,0,1864,'/changemedium/delChangemedium.action');
INSERT INTO `p_url` VALUES (867,0,1865,'/changemedium/delChangemedium.action');
INSERT INTO `p_url` VALUES (870,0,1870,'/vregist/vregistList.action');
INSERT INTO `p_url` VALUES (871,0,1871,'/vregist/vregistEdit.action');
INSERT INTO `p_url` VALUES (872,0,1871,'/vregist/saveVregist.action');
INSERT INTO `p_url` VALUES (873,0,1872,'/vregist/vregistInfo.action');
INSERT INTO `p_url` VALUES (874,0,1873,'/vregist/vregistEdit.action');
INSERT INTO `p_url` VALUES (875,0,1873,'/vregist/saveVregist.action');
INSERT INTO `p_url` VALUES (876,0,1874,'/vregist/delVregist.action');
INSERT INTO `p_url` VALUES (877,0,1875,'/vregist/delVregist.action');
INSERT INTO `p_url` VALUES (880,0,1880,'/classifieddestroy/classifieddestroyList.action');
INSERT INTO `p_url` VALUES (881,0,1881,'/classifieddestroy/classifieddestroyEdit.action');
INSERT INTO `p_url` VALUES (882,0,1881,'/classifieddestroy/saveClassifieddestroy.action');
INSERT INTO `p_url` VALUES (883,0,1882,'/classifieddestroy/classifieddestroyInfo.action');
INSERT INTO `p_url` VALUES (884,0,1883,'/classifieddestroy/classifieddestroyEdit.action');
INSERT INTO `p_url` VALUES (885,0,1883,'/classifieddestroy/saveClassifieddestroy.action');
INSERT INTO `p_url` VALUES (886,0,1884,'/classifieddestroy/delClassifieddestroy.action');
INSERT INTO `p_url` VALUES (887,0,1885,'/classifieddestroy/delClassifieddestroy.action');
INSERT INTO `p_url` VALUES (890,0,1890,'/quartersubsidies/quartersubsidiesList.action');
INSERT INTO `p_url` VALUES (891,0,1891,'/quartersubsidies/quartersubsidiesEdit.action');
INSERT INTO `p_url` VALUES (892,0,1891,'/quartersubsidies/saveQuartersubsidies.action');
INSERT INTO `p_url` VALUES (893,0,1892,'/quartersubsidies/quartersubsidiesInfo.action');
INSERT INTO `p_url` VALUES (894,0,1893,'/quartersubsidies/quartersubsidiesEdit.action');
INSERT INTO `p_url` VALUES (895,0,1893,'/quartersubsidies/saveQuartersubsidies.action');
INSERT INTO `p_url` VALUES (896,0,1894,'/quartersubsidies/delQuartersubsidies.action');
INSERT INTO `p_url` VALUES (897,0,1895,'/quartersubsidies/delQuartersubsidies.action');
INSERT INTO `p_url` VALUES (900,0,1000,'/flowchart/findFlowchartList.action');
INSERT INTO `p_url` VALUES (901,0,1001,'/flowchart/perCreateFlowchart.action');
INSERT INTO `p_url` VALUES (902,0,1002,'/flowchart/saveFlowchart.action');
INSERT INTO `p_url` VALUES (903,0,1003,'/flowchart/perDrawFlowchart.action');
INSERT INTO `p_url` VALUES (904,0,1004,'/flowchart/deleteFlowchart.action');
INSERT INTO `p_url` VALUES (905,0,1005,'/flowchart/configFlowchart.action');
INSERT INTO `p_url` VALUES (906,0,1006,'/flowchart/deleteFlowchart.action');
INSERT INTO `p_url` VALUES (910,0,1010,'/table/findTablesList.action');
INSERT INTO `p_url` VALUES (1007,0,2020,'/appsysnetin/appSysNetInList.action');
INSERT INTO `p_url` VALUES (1008,0,2021,'/appsysnetin/appSysNetInAdd.action');
INSERT INTO `p_url` VALUES (1009,0,2021,'/appsysnetin/appSysNetInSave.action');
INSERT INTO `p_url` VALUES (1010,0,2022,'/appsysnetin/appSysNetInDel.action');
INSERT INTO `p_url` VALUES (1011,0,2023,'/appsysnetin/appSysNetInDel.action');
INSERT INTO `p_url` VALUES (1012,0,2024,'/appsysnetin/appSysNetInInfo.action');
INSERT INTO `p_url` VALUES (1013,0,2030,'/oasysalter/oaSysAlterList.action');
INSERT INTO `p_url` VALUES (1014,0,2031,'/oasysalter/oaSysAlterAdd.action');
INSERT INTO `p_url` VALUES (1015,0,2031,'/oasysalter/oaSysAlterSave.action');
INSERT INTO `p_url` VALUES (1016,0,2032,'/oasysalter/oaSysAlterDel.action');
INSERT INTO `p_url` VALUES (1017,0,2033,'/oasysalter/oaSysAlterDel.action');
INSERT INTO `p_url` VALUES (1018,0,2034,'/oasysalter/oaSysAlterInfo.action');
INSERT INTO `p_url` VALUES (1019,0,2040,'/sysconfigalter/sysConfigAlterList.action');
INSERT INTO `p_url` VALUES (1020,0,2041,'/sysconfigalter/sysConfigAlterAdd.action');
INSERT INTO `p_url` VALUES (1021,0,2041,'/sysconfigalter/sysConfigAlterSave.action');
INSERT INTO `p_url` VALUES (1022,0,2042,'/sysconfigalter/sysConfigAlterDel.action');
INSERT INTO `p_url` VALUES (1023,0,2043,'/sysconfigalter/sysConfigAlterDel.action');
INSERT INTO `p_url` VALUES (1024,0,2044,'/sysconfigalter/sysConfigAlterInfo.action');
INSERT INTO `p_url` VALUES (1025,0,2050,'/wiresysrecord/wireSysRecordList.action');
INSERT INTO `p_url` VALUES (1026,0,2051,'/wiresysrecord/wireSysRecordAdd.action');
INSERT INTO `p_url` VALUES (1027,0,2051,'/wiresysrecord/wireSysRecordSave.action');
INSERT INTO `p_url` VALUES (1028,0,2052,'/wiresysrecord/wireSysRecordDel.action');
INSERT INTO `p_url` VALUES (1029,0,2053,'/wiresysrecord/wireSysRecordDel.action');
INSERT INTO `p_url` VALUES (1030,0,2054,'/wiresysrecord/wireSysRecordInfo.action');
INSERT INTO `p_url` VALUES (1031,0,2060,'/pantchrecord/pantchRecordList.action');
INSERT INTO `p_url` VALUES (1032,0,2061,'/pantchrecord/pantchRecordAdd.action');
INSERT INTO `p_url` VALUES (1033,0,2061,'/pantchrecord/pantchRecordSave.action');
INSERT INTO `p_url` VALUES (1034,0,2062,'/pantchrecord/pantchRecordDel.action');
INSERT INTO `p_url` VALUES (1035,0,2063,'/pantchrecord/pantchRecordDel.action');
INSERT INTO `p_url` VALUES (1036,0,2064,'/pantchrecord/pantchRecordInfo.action');
INSERT INTO `p_url` VALUES (1037,0,2070,'/devicepurchase/devicePurchaseList.action');
INSERT INTO `p_url` VALUES (1038,0,2071,'/devicepurchase/devicePurchaseAdd.action');
INSERT INTO `p_url` VALUES (1039,0,2071,'/devicepurchase/devicePurchaseSave.action');
INSERT INTO `p_url` VALUES (1040,0,2072,'/devicepurchase/devicePurchaseDel.action');
INSERT INTO `p_url` VALUES (1041,0,2073,'/devicepurchase/devicePurchaseDel.action');
INSERT INTO `p_url` VALUES (1042,0,2074,'/devicepurchase/devicePurchaseInfo.action');
INSERT INTO `p_url` VALUES (1043,0,2080,'/deviceinfo/deviceInfoList.action');
INSERT INTO `p_url` VALUES (1044,0,2081,'/deviceinfo/deviceInfoAdd.action');
INSERT INTO `p_url` VALUES (1045,0,2081,'/deviceinfo/deviceInfoSave.action');
INSERT INTO `p_url` VALUES (1046,0,2082,'/deviceinfo/deviceInfoDel.action');
INSERT INTO `p_url` VALUES (1047,0,2083,'/deviceinfo/deviceInfoDel.action');
INSERT INTO `p_url` VALUES (1048,0,2084,'/deviceinfo/deviceInfoInfo.action');
INSERT INTO `p_url` VALUES (1049,0,2090,'/ferrycentre/ferryCentreList.action');
INSERT INTO `p_url` VALUES (1050,0,2091,'/ferrycentre/ferryCentreAdd.action');
INSERT INTO `p_url` VALUES (1051,0,2091,'/ferrycentre/ferryCentreSave.action');
INSERT INTO `p_url` VALUES (1052,0,2092,'/ferrycentre/ferryCentreDel.action');
INSERT INTO `p_url` VALUES (1053,0,2093,'/ferrycentre/ferryCentreDel.action');
INSERT INTO `p_url` VALUES (1054,0,2094,'/ferrycentre/ferryCentreInfo.action');
INSERT INTO `p_url` VALUES (1055,0,2100,'/appsysalter/appSysAlterList.action');
INSERT INTO `p_url` VALUES (1056,0,2101,'/appsysalter/appSysAlterAdd.action');
INSERT INTO `p_url` VALUES (1057,0,2101,'/appsysalter/appSysAlterSave.action');
INSERT INTO `p_url` VALUES (1058,0,2102,'/appsysalter/appSysAlterDel.action');
INSERT INTO `p_url` VALUES (1059,0,2103,'/appsysalter/appSysAlterDel.action');
INSERT INTO `p_url` VALUES (1060,0,2104,'/appsysalter/appSysAlterInfo.action');
INSERT INTO `p_url` VALUES (1061,0,2110,'/deviceiosys/deviceIoSysList.action');
INSERT INTO `p_url` VALUES (1062,0,2111,'/deviceiosys/deviceIoSysAdd.action');
INSERT INTO `p_url` VALUES (1063,0,2111,'/deviceiosys/deviceIoSysSave.action');
INSERT INTO `p_url` VALUES (1064,0,2112,'/deviceiosys/deviceIoSysDel.action');
INSERT INTO `p_url` VALUES (1065,0,2113,'/deviceiosys/deviceIoSysDel.action');
INSERT INTO `p_url` VALUES (1066,0,2114,'/deviceiosys/deviceIoSysInfo.action');
INSERT INTO `p_url` VALUES (1067,0,2120,'/notsecretpcout/notSecretPcOutList.action');
INSERT INTO `p_url` VALUES (1068,0,2121,'/notsecretpcout/notSecretPcOutAdd.action');
INSERT INTO `p_url` VALUES (1069,0,2121,'/notsecretpcout/notSecretPcOutSave.action');
INSERT INTO `p_url` VALUES (1070,0,2122,'/notsecretpcout/notSecretPcOutDel.action');
INSERT INTO `p_url` VALUES (1071,0,2123,'/notsecretpcout/notSecretPcOutDel.action');
INSERT INTO `p_url` VALUES (1072,0,2124,'/notsecretpcout/notSecretPcOutInfo.action');
INSERT INTO `p_url` VALUES (1073,0,2130,'/alterusbkey/alterUsbkeyList.action');
INSERT INTO `p_url` VALUES (1074,0,2131,'/alterusbkey/alterUsbkeyAdd.action');
INSERT INTO `p_url` VALUES (1075,0,2131,'/alterusbkey/alterUsbkeySave.action');
INSERT INTO `p_url` VALUES (1076,0,2132,'/alterusbkey/alterUsbkeyDel.action');
INSERT INTO `p_url` VALUES (1077,0,2133,'/alterusbkey/alterUsbkeyDel.action');
INSERT INTO `p_url` VALUES (1078,0,2134,'/alterusbkey/alterUsbkeyInfo.action');
INSERT INTO `p_url` VALUES (1079,0,2140,'/secretpcout/secretPcOutList.action');
INSERT INTO `p_url` VALUES (1080,0,2145,'/secretpcout/secretPcOutAdd.action');
INSERT INTO `p_url` VALUES (1081,0,2145,'/secretpcout/secretPcOutSave.action');
INSERT INTO `p_url` VALUES (1082,0,2142,'/secretpcout/secretPcOutDel.action');
INSERT INTO `p_url` VALUES (1083,0,2143,'/secretpcout/secretPcOutDel.action');
INSERT INTO `p_url` VALUES (1084,0,2144,'/secretpcout/secretPcOutInfo.action');
INSERT INTO `p_url` VALUES (1085,0,2150,'/sendoutmaintain/sendOutMaintainList.action');
INSERT INTO `p_url` VALUES (1086,0,2151,'/sendoutmaintain/sendOutMaintainAdd.action');
INSERT INTO `p_url` VALUES (1087,0,2151,'/sendoutmaintain/sendOutMaintainSave.action');
INSERT INTO `p_url` VALUES (1088,0,2152,'/sendoutmaintain/sendOutMaintainDel.action');
INSERT INTO `p_url` VALUES (1089,0,2153,'/sendoutmaintain/sendOutMaintainDel.action');
INSERT INTO `p_url` VALUES (1090,0,2154,'/sendoutmaintain/sendOutMaintainInfo.action');
INSERT INTO `p_url` VALUES (1091,0,2160,'/internetaccount/internetAccountList.action');
INSERT INTO `p_url` VALUES (1092,0,2161,'/internetaccount/internetAccountAdd.action');
INSERT INTO `p_url` VALUES (1093,0,2161,'/internetaccount/internetAccountSave.action');
INSERT INTO `p_url` VALUES (1094,0,2162,'/internetaccount/internetAccountDel.action');
INSERT INTO `p_url` VALUES (1095,0,2163,'/internetaccount/internetAccountDel.action');
INSERT INTO `p_url` VALUES (1096,0,2164,'/internetaccount/internetAccountInfo.action');
INSERT INTO `p_url` VALUES (1097,0,2170,'/informationpublish/informationPublishList.action');
INSERT INTO `p_url` VALUES (1098,0,2171,'/informationpublish/informationPublishAdd.action');
INSERT INTO `p_url` VALUES (1099,0,2171,'/informationpublish/informationPublishSave.action');
INSERT INTO `p_url` VALUES (1100,0,2172,'/informationpublish/informationPublishDel.action');
INSERT INTO `p_url` VALUES (1101,0,2173,'/informationpublish/informationPublishDel.action');
INSERT INTO `p_url` VALUES (1102,0,2174,'/informationpublish/informationPublishInfo.action');
INSERT INTO `p_url` VALUES (1103,0,2180,'/emailexamine/emailExamineList.action');
INSERT INTO `p_url` VALUES (1104,0,2181,'/emailexamine/emailExamineAdd.action');
INSERT INTO `p_url` VALUES (1105,0,2181,'/emailexamine/emailExamineSave.action');
INSERT INTO `p_url` VALUES (1106,0,2182,'/emailexamine/emailExamineDel.action');
INSERT INTO `p_url` VALUES (1107,0,2183,'/emailexamine/emailExamineDel.action');
INSERT INTO `p_url` VALUES (1108,0,2184,'/emailexamine/emailExamineInfo.action');
INSERT INTO `p_url` VALUES (1109,0,2190,'/authorityalter/authorityAlterList.action');
INSERT INTO `p_url` VALUES (1110,0,2191,'/authorityalter/authorityAlterAdd.action');
INSERT INTO `p_url` VALUES (1111,0,2191,'/authorityalter/authorityAlterSave.action');
INSERT INTO `p_url` VALUES (1112,0,2192,'/authorityalter/authorityAlterDel.action');
INSERT INTO `p_url` VALUES (1113,0,2193,'/authorityalter/authorityAlterDel.action');
INSERT INTO `p_url` VALUES (1114,0,2194,'/authorityalter/authorityAlterInfo.action');
INSERT INTO `p_url` VALUES (1115,0,2200,'/sysauthoralter/sysAuthorAlterList.action');
INSERT INTO `p_url` VALUES (1116,0,2201,'/sysauthoralter/sysAuthorAlterAdd.action');
INSERT INTO `p_url` VALUES (1117,0,2201,'/sysauthoralter/sysAuthorAlterSave.action');
INSERT INTO `p_url` VALUES (1118,0,2202,'/sysauthoralter/sysAuthorAlterDel.action');
INSERT INTO `p_url` VALUES (1119,0,2203,'/sysauthoralter/sysAuthorAlterDel.action');
INSERT INTO `p_url` VALUES (1120,0,2204,'/sysauthoralter/sysAuthorAlterInfo.action');
INSERT INTO `p_url` VALUES (1121,0,2210,'/devicemaintain/deviceMaintainList.action');
INSERT INTO `p_url` VALUES (1122,0,2211,'/devicemaintain/deviceMaintainAdd.action');
INSERT INTO `p_url` VALUES (1123,0,2211,'/devicemaintain/deviceMaintainSave.action');
INSERT INTO `p_url` VALUES (1124,0,2212,'/devicemaintain/deviceMaintainDel.action');
INSERT INTO `p_url` VALUES (1125,0,2213,'/devicemaintain/deviceMaintainDel.action');
INSERT INTO `p_url` VALUES (1126,0,2214,'/devicemaintain/deviceMaintainInfo.action');
INSERT INTO `p_url` VALUES (1127,0,3000,'/filmingactivity/filmingActivityList.action');
INSERT INTO `p_url` VALUES (1128,0,3001,'/filmingactivity/filmingActivityAdd.action');
INSERT INTO `p_url` VALUES (1129,0,3001,'/filmingactivity/filmingActivitySave.action');
INSERT INTO `p_url` VALUES (1130,0,3002,'/filmingactivity/filmingActivityDel.action');
INSERT INTO `p_url` VALUES (1131,0,3003,'/filmingactivity/filmingActivityDel.action');
INSERT INTO `p_url` VALUES (1132,0,3004,'/filmingactivity/filmingActivityInfo.action');
INSERT INTO `p_url` VALUES (1133,0,3010,'/interview/interviewList.action');
INSERT INTO `p_url` VALUES (1134,0,3011,'/interview/interviewAdd.action');
INSERT INTO `p_url` VALUES (1135,0,3011,'/interview/interviewSave.action');
INSERT INTO `p_url` VALUES (1136,0,3012,'/interview/interviewDel.action');
INSERT INTO `p_url` VALUES (1137,0,3013,'/interview/interviewDel.action');
INSERT INTO `p_url` VALUES (1138,0,3014,'/interview/interviewInfo.action');
INSERT INTO `p_url` VALUES (1139,0,3020,'/meetsecrecy/meetSecrecyList.action');
INSERT INTO `p_url` VALUES (1140,0,3021,'/meetsecrecy/meetSecrecyAdd.action');
INSERT INTO `p_url` VALUES (1141,0,3021,'/meetsecrecy/meetSecrecySave.action');
INSERT INTO `p_url` VALUES (1142,0,3022,'/meetsecrecy/meetSecrecyDel.action');
INSERT INTO `p_url` VALUES (1143,0,3023,'/meetsecrecy/meetSecrecyDel.action');
INSERT INTO `p_url` VALUES (1144,0,3024,'/meetsecrecy/meetSecrecyInfo.action');
INSERT INTO `p_url` VALUES (1145,0,3030,'/meetsecrecyrecord/meetSecrecyRecordList.action');
INSERT INTO `p_url` VALUES (1146,0,3031,'/meetsecrecyrecord/meetSecrecyRecordAdd.action');
INSERT INTO `p_url` VALUES (1147,0,3031,'/meetsecrecyrecord/meetSecrecyRecordSave.action');
INSERT INTO `p_url` VALUES (1148,0,3032,'/meetsecrecyrecord/meetSecrecyRecordDel.action');
INSERT INTO `p_url` VALUES (1149,0,3033,'/meetsecrecyrecord/meetSecrecyRecordDel.action');
INSERT INTO `p_url` VALUES (1150,0,3034,'/meetsecrecyrecord/meetSecrecyRecordInfo.action');
INSERT INTO `p_url` VALUES (1151,0,3040,'/conagreementyb/conAgreementybList.action');
INSERT INTO `p_url` VALUES (1152,0,3041,'/conagreementyb/conAgreementybAdd.action');
INSERT INTO `p_url` VALUES (1153,0,3041,'/conagreementyb/conAgreementybSave.action');
INSERT INTO `p_url` VALUES (1154,0,3042,'/conagreementyb/conAgreementybDel.action');
INSERT INTO `p_url` VALUES (1155,0,3043,'/conagreementyb/conAgreementybDel.action');
INSERT INTO `p_url` VALUES (1156,0,3044,'/conagreementyb/conAgreementybInfo.action');
INSERT INTO `p_url` VALUES (1157,0,3050,'/cooperationcheck/cooperationCheckList.action');
INSERT INTO `p_url` VALUES (1158,0,3051,'/cooperationcheck/cooperationCheckAdd.action');
INSERT INTO `p_url` VALUES (1159,0,3051,'/cooperationcheck/cooperationCheckSave.action');
INSERT INTO `p_url` VALUES (1160,0,3052,'/cooperationcheck/cooperationCheckDel.action');
INSERT INTO `p_url` VALUES (1161,0,3053,'/cooperationcheck/cooperationCheckDel.action');
INSERT INTO `p_url` VALUES (1162,0,3054,'/cooperationcheck/cooperationCheckInfo.action');
INSERT INTO `p_url` VALUES (1163,0,3060,'/divulgesecret/divulgeSecretList.action');
INSERT INTO `p_url` VALUES (1164,0,3061,'/divulgesecret/divulgeSecretAdd.action');
INSERT INTO `p_url` VALUES (1165,0,3061,'/divulgesecret/divulgeSecretSave.action');
INSERT INTO `p_url` VALUES (1166,0,3062,'/divulgesecret/divulgeSecretDel.action');
INSERT INTO `p_url` VALUES (1167,0,3063,'/divulgesecret/divulgeSecretDel.action');
INSERT INTO `p_url` VALUES (1168,0,3064,'/divulgesecret/divulgeSecretInfo.action');
INSERT INTO `p_url` VALUES (1169,0,3070,'/promise/promiseList.action');
INSERT INTO `p_url` VALUES (1170,0,3071,'/promise/promiseAdd.action');
INSERT INTO `p_url` VALUES (1171,0,3071,'/promise/promiseSave.action');
INSERT INTO `p_url` VALUES (1172,0,3072,'/promise/promiseDel.action');
INSERT INTO `p_url` VALUES (1173,0,3073,'/promise/promiseDel.action');
INSERT INTO `p_url` VALUES (1174,0,3074,'/promise/promiseInfo.action');
INSERT INTO `p_url` VALUES (1175,0,3080,'/confidentiality/confidentialityList.action');
INSERT INTO `p_url` VALUES (1176,0,3081,'/confidentiality/confidentialityAdd.action');
INSERT INTO `p_url` VALUES (1177,0,3081,'/confidentiality/confidentialitySave.action');
INSERT INTO `p_url` VALUES (1178,0,3082,'/confidentiality/confidentialityDel.action');
INSERT INTO `p_url` VALUES (1179,0,3083,'/confidentiality/confidentialityDel.action');
INSERT INTO `p_url` VALUES (1180,0,3084,'/confidentiality/confidentialityInfo.action');
INSERT INTO `p_url` VALUES (1181,0,3090,'/empseccheck/empSecCheckList.action');
INSERT INTO `p_url` VALUES (1182,0,3091,'/empseccheck/empSecCheckAdd.action');
INSERT INTO `p_url` VALUES (1183,0,3091,'/empseccheck/empSecCheckSave.action');
INSERT INTO `p_url` VALUES (1184,0,3092,'/empseccheck/empSecCheckDel.action');
INSERT INTO `p_url` VALUES (1185,0,3093,'/empseccheck/empSecCheckDel.action');
INSERT INTO `p_url` VALUES (1186,0,3094,'/empseccheck/empSecCheckInfo.action');
INSERT INTO `p_url` VALUES (1187,0,3100,'/depseccheck/depsecCheckList.action');
INSERT INTO `p_url` VALUES (1188,0,3101,'/depseccheck/depsecCheckAdd.action');
INSERT INTO `p_url` VALUES (1189,0,3101,'/depseccheck/depsecCheckSave.action');
INSERT INTO `p_url` VALUES (1190,0,3102,'/depseccheck/depsecCheckDel.action');
INSERT INTO `p_url` VALUES (1191,0,3103,'/depseccheck/depsecCheckDel.action');
INSERT INTO `p_url` VALUES (1192,0,3104,'/depseccheck/depsecCheckInfo.action');
INSERT INTO `p_url` VALUES (1193,0,3110,'/subsidiesdetain/subsidiesDetainList.action');
INSERT INTO `p_url` VALUES (1194,0,3111,'/subsidiesdetain/subsidiesDetainAdd.action');
INSERT INTO `p_url` VALUES (1195,0,3111,'/subsidiesdetain/subsidiesDetainSave.action');
INSERT INTO `p_url` VALUES (1196,0,3112,'/subsidiesdetain/subsidiesDetainDel.action');
INSERT INTO `p_url` VALUES (1197,0,3113,'/subsidiesdetain/subsidiesDetainDel.action');
INSERT INTO `p_url` VALUES (1198,0,3114,'/subsidiesdetain/subsidiesDetainInfo.action');
INSERT INTO `p_url` VALUES (1199,0,3120,'/subsidiesdetainper/subsidiesDetainperList.action');
INSERT INTO `p_url` VALUES (1200,0,3121,'/subsidiesdetainper/subsidiesDetainperAdd.action');
INSERT INTO `p_url` VALUES (1201,0,3121,'/subsidiesdetainper/subsidiesDetainperSave.action');
INSERT INTO `p_url` VALUES (1202,0,3122,'/subsidiesdetainper/subsidiesDetainperDel.action');
INSERT INTO `p_url` VALUES (1203,0,3123,'/subsidiesdetainper/subsidiesDetainperDel.action');
INSERT INTO `p_url` VALUES (1204,0,3124,'/subsidiesdetainper/subsidiesDetainperInfo.action');
INSERT INTO `p_url` VALUES (1205,0,3130,'/detainstandard/detainStandardInfo.action');
INSERT INTO `p_url` VALUES (1211,0,2115,'/deviceiosys/deviceIoSysSave.action');
INSERT INTO `p_url` VALUES (1212,0,2115,'/deviceiosys/deviceIoSysAdd.action');
INSERT INTO `p_url` VALUES (1213,0,2215,'/devicemaintain/deviceMaintainSave.action');
INSERT INTO `p_url` VALUES (1214,0,2215,'/devicemaintain/deviceMaintainAdd.action');
INSERT INTO `p_url` VALUES (1215,0,2005,'/videomeeting/videoMeetingSave.action');
INSERT INTO `p_url` VALUES (1216,0,2005,'/videomeeting/videoMeetingAdd.action');
INSERT INTO `p_url` VALUES (1218,0,2195,'/authorityalter/authorityAlterAdd.action');
INSERT INTO `p_url` VALUES (1219,0,2195,'/authorityalter/authorityAlterSave.action');
INSERT INTO `p_url` VALUES (1220,0,2205,'/sysauthoralter/sysAuthorAlterSave.action');
INSERT INTO `p_url` VALUES (1221,0,2205,'/sysauthoralter/sysAuthorAlterAdd.action');
INSERT INTO `p_url` VALUES (1222,0,2185,'/emailexamine/emailExamineSave.action');
INSERT INTO `p_url` VALUES (1223,0,2185,'/emailexamine/emailExamineAdd.action');
INSERT INTO `p_url` VALUES (1224,0,2175,'/informationpublish/informationPublishAdd.action');
INSERT INTO `p_url` VALUES (1225,0,2175,'/informationpublish/informationPublishSave.action');
INSERT INTO `p_url` VALUES (1226,0,2165,'/internetaccount/internetAccountAdd.action');
INSERT INTO `p_url` VALUES (1227,0,2165,'/internetaccount/internetAccountSave.action');
INSERT INTO `p_url` VALUES (1228,0,2155,'/sendoutmaintain/sendOutMaintainAdd.action');
INSERT INTO `p_url` VALUES (1229,0,2155,'/sendoutmaintain/sendOutMaintainSave.action');
INSERT INTO `p_url` VALUES (1230,0,2141,'/secretpcout/secretPcOutAdd.action');
INSERT INTO `p_url` VALUES (1231,0,2141,'/secretpcout/secretPcOutSave.action');
INSERT INTO `p_url` VALUES (1232,0,2135,'/alterusbkey/alterUsbkeyAdd.action');
INSERT INTO `p_url` VALUES (1233,0,2135,'/alterusbkey/alterUsbkeySave.action');
INSERT INTO `p_url` VALUES (1234,0,2125,'/notsecretpcout/notSecretPcOutSave.action');
INSERT INTO `p_url` VALUES (1235,0,2125,'/notsecretpcout/notSecretPcOutAdd.action');
INSERT INTO `p_url` VALUES (1236,0,2105,'/appsysalter/appSysAlterSave.action');
INSERT INTO `p_url` VALUES (1237,0,2105,'/appsysalter/appSysAlterAdd.action');
INSERT INTO `p_url` VALUES (1238,0,2095,'/ferrycentre/ferryCentreSave.action');
INSERT INTO `p_url` VALUES (1239,0,2095,'/ferrycentre/ferryCentreAdd.action');
INSERT INTO `p_url` VALUES (1240,0,2085,'/deviceinfo/deviceInfoSave.action');
INSERT INTO `p_url` VALUES (1241,0,2085,'/deviceinfo/deviceInfoAdd.action');
INSERT INTO `p_url` VALUES (1242,0,2075,'/devicepurchase/devicePurchaseSave.action');
INSERT INTO `p_url` VALUES (1243,0,2075,'/devicepurchase/devicePurchaseAdd.action');
INSERT INTO `p_url` VALUES (1244,0,2065,'/pantchrecord/pantchRecordSave.action');
INSERT INTO `p_url` VALUES (1245,0,2065,'/pantchrecord/pantchRecordAdd.action');
INSERT INTO `p_url` VALUES (1246,0,2055,'/wiresysrecord/wireSysRecordSave.action');
INSERT INTO `p_url` VALUES (1247,0,2055,'/wiresysrecord/wireSysRecordAdd.action');
INSERT INTO `p_url` VALUES (1248,0,2045,'/sysconfigalter/sysConfigAlterSave.action');
INSERT INTO `p_url` VALUES (1249,0,2045,'/sysconfigalter/sysConfigAlterAdd.action');
INSERT INTO `p_url` VALUES (1250,0,2035,'/oasysalter/oaSysAlterSave.action');
INSERT INTO `p_url` VALUES (1251,0,2035,'/oasysalter/oaSysAlterAdd.action');
INSERT INTO `p_url` VALUES (1252,0,2025,'/appsysnetin/appSysNetInSave.action');
INSERT INTO `p_url` VALUES (1253,0,2025,'/appsysnetin/appSysNetInAdd.action');
INSERT INTO `p_url` VALUES (1254,0,2015,'/telltalerecord/telltaleRecordSave.action');
INSERT INTO `p_url` VALUES (1255,0,2015,'/telltalerecord/telltaleRecordAdd.action');
/*!40000 ALTER TABLE `p_url` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table p_user
#

DROP TABLE IF EXISTS `p_user`;
CREATE TABLE `p_user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) NOT NULL COMMENT '登陆名称(注册/新增 验证唯一性)',
  `NICKNAME` varchar(50) DEFAULT NULL COMMENT '昵称',
  `REALNAME` varchar(50) DEFAULT NULL COMMENT '真实姓名',
  `PASSWORD` varchar(100) NOT NULL COMMENT '密码(MD5)',
  `SEX` int(11) DEFAULT NULL COMMENT '性别',
  `BIRTHDAY` datetime DEFAULT NULL COMMENT '生日',
  `MAIL` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `CARD` varchar(50) DEFAULT NULL COMMENT '身份证',
  `PHONE` varchar(50) DEFAULT NULL COMMENT '电话',
  `CELLPHONE` varchar(50) DEFAULT NULL COMMENT '手机',
  `DIPLOMA` int(11) DEFAULT NULL COMMENT '学历',
  `CLAN` int(11) DEFAULT NULL COMMENT '党派',
  `WORKUNIT` varchar(255) DEFAULT NULL COMMENT '单位',
  `ADDRESS` varchar(255) DEFAULT NULL COMMENT '所在社区',
  `POSTCODE` varchar(20) DEFAULT NULL COMMENT '邮政编码',
  `HEADPICPATH` varchar(200) DEFAULT NULL COMMENT '头像路径',
  `WORKDATE` datetime DEFAULT NULL COMMENT '参加工作时间',
  `CREATEDATE` datetime DEFAULT NULL COMMENT '创建日期',
  `UPDATEDATE` datetime DEFAULT NULL COMMENT '更新日期',
  `LASTLOGINDATE` datetime DEFAULT NULL COMMENT '最后登录时间',
  `ACCOUNTOVERDATE` datetime DEFAULT NULL COMMENT '帐号使用截至日期',
  `STUDYOVERDUEDATE` datetime DEFAULT NULL COMMENT '学习课程截至日期',
  `ISBATHCARD` int(11) DEFAULT NULL COMMENT '是否是批量开发用户  0/1   否/是 字典',
  `BATHCARDNUM` varchar(200) DEFAULT NULL COMMENT '批量开卡号',
  `DESCRIPTION` varchar(255) DEFAULT NULL COMMENT '个性签名',
  `ISOPEN` int(11) DEFAULT NULL COMMENT '是否开通 0/1/2 否/是/停用',
  `PWDQUESTION` varchar(50) DEFAULT NULL COMMENT '密码问题',
  `PWDANSWER` varchar(50) DEFAULT NULL COMMENT '密码答案',
  `VERSION` int(11) DEFAULT NULL COMMENT '版本信息',
  `ORGID` int(11) DEFAULT NULL COMMENT '所在机构ID',
  `ORGNAME` varchar(100) DEFAULT NULL COMMENT '所在机构名称',
  `ISGROUP` int(11) DEFAULT NULL COMMENT '是否是集团账号 1:是 2:否',
  `ismanager` int(11) DEFAULT NULL COMMENT '是否是管理员(1:管理员，2:个人用户，3:企业用户)',
  `rolenames` varchar(200) DEFAULT NULL COMMENT '角色名称',
  `importinfo` varchar(600) DEFAULT NULL COMMENT '导入的其他信息',
  `importinfo1` varchar(100) DEFAULT NULL COMMENT '入班标识',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2293 DEFAULT CHARSET=utf8 COMMENT='用户表';

#
# Dumping data for table p_user
#

LOCK TABLES `p_user` WRITE;
/*!40000 ALTER TABLE `p_user` DISABLE KEYS */;
INSERT INTO `p_user` VALUES (0,'sa',NULL,'管理员','96E79218965EB72C92A549DD5A330112',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2012-10-29 13:29:42','2013-09-09 16:01:52',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,0,1,'默认',NULL,1,NULL,NULL,NULL);
INSERT INTO `p_user` VALUES (2275,'admin',NULL,'管理员','96E79218965EB72C92A549DD5A330112',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2013-11-10 17:55:13','2013-11-17 15:37:06',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,1,NULL,NULL,1,NULL,NULL,NULL);
INSERT INTO `p_user` VALUES (2282,'guofeng',NULL,'收银员1','96E79218965EB72C92A549DD5A330112',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015-11-26 11:37:20','2016-01-12 17:13:16',NULL,NULL,NULL,NULL,'','测试',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'',NULL,NULL);
INSERT INTO `p_user` VALUES (2286,'llj',NULL,'测试1','96E79218965EB72C92A549DD5A330112',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015-12-03 10:00:40','2016-03-14 11:18:31',NULL,NULL,NULL,NULL,'','',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'下线运维',NULL,NULL);
INSERT INTO `p_user` VALUES (2287,'shaoyun',NULL,'邵云菜市场','96E79218965EB72C92A549DD5A330112',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-01-12 17:14:06','2016-01-12 17:14:06',NULL,NULL,NULL,8,'邵云菜市场','',1,NULL,NULL,NULL,NULL,NULL,1,1,'商户',NULL,NULL);
INSERT INTO `p_user` VALUES (2288,'guozhi',NULL,'国志水果','96E79218965EB72C92A549DD5A330112',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-01-12 17:14:32','2016-01-12 17:14:32',NULL,NULL,NULL,9,'国志水果','',1,NULL,NULL,NULL,NULL,NULL,1,1,'商户',NULL,NULL);
INSERT INTO `p_user` VALUES (2289,'lingyu',NULL,'玲宇日化','96E79218965EB72C92A549DD5A330112',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-01-12 17:14:49','2016-01-12 17:14:49',NULL,NULL,NULL,10,'玲宇日化','',1,NULL,NULL,NULL,NULL,NULL,1,1,'商户',NULL,NULL);
INSERT INTO `p_user` VALUES (2290,'zhanghuiling',NULL,'张慧玲','96E79218965EB72C92A549DD5A330112',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-01-17 19:48:04','2016-01-17 19:48:04',NULL,NULL,NULL,NULL,'','',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'下线运维',NULL,NULL);
INSERT INTO `p_user` VALUES (2292,'dianzishangcheng',NULL,'电子商城','96E79218965EB72C92A549DD5A330112',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-04-12 13:42:41','2016-04-12 19:41:30',NULL,NULL,NULL,11,'O2O','',1,NULL,NULL,NULL,NULL,NULL,1,1,'商户,查看订单详情',NULL,NULL);
/*!40000 ALTER TABLE `p_user` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table p_userrole
#

DROP TABLE IF EXISTS `p_userrole`;
CREATE TABLE `p_userrole` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VERSION` decimal(8,0) DEFAULT NULL,
  `SECURITYUSER` decimal(8,0) DEFAULT NULL COMMENT '用户ID',
  `ROLE` decimal(8,0) DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`ID`),
  KEY `INDEX_ULMS_USERROLE_USER` (`SECURITYUSER`)
) ENGINE=InnoDB AUTO_INCREMENT=933811 DEFAULT CHARSET=utf8 COMMENT='用户角色关系表';

#
# Dumping data for table p_userrole
#

LOCK TABLES `p_userrole` WRITE;
/*!40000 ALTER TABLE `p_userrole` DISABLE KEYS */;
INSERT INTO `p_userrole` VALUES (933805,0,0,1);
INSERT INTO `p_userrole` VALUES (933810,0,2275,2);
/*!40000 ALTER TABLE `p_userrole` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table s_applykeypart_tab
#

DROP TABLE IF EXISTS `s_applykeypart_tab`;
CREATE TABLE `s_applykeypart_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `iototal` int(11) DEFAULT NULL COMMENT '出入人员总数',
  `partname` varchar(255) DEFAULT NULL COMMENT '要害部门部位名称',
  `acofficials` varchar(255) DEFAULT NULL COMMENT '陪同人员',
  `enterreason` varchar(255) DEFAULT NULL COMMENT '进入原因',
  `enterdate` datetime DEFAULT NULL COMMENT '拟进入时间',
  `stopdate` datetime DEFAULT NULL COMMENT '预计停留时间',
  `departmentdesc` varchar(400) DEFAULT NULL COMMENT '申请部门审查意见',
  `departmentsign` varchar(50) DEFAULT NULL COMMENT '申请部门审查签字',
  `departmentid` int(11) DEFAULT NULL COMMENT '申请部门签字人id',
  `depdate` datetime DEFAULT NULL COMMENT '申请部门签字日期',
  `partheaddesc` varchar(400) DEFAULT NULL COMMENT '保密要害部门部位所属部门领导意见',
  `partheadsign` varchar(50) DEFAULT NULL COMMENT '保密要害部门部位所属部门领导意见签字',
  `pdepartmentid` int(11) DEFAULT NULL COMMENT '保密要害部门部位所属部门领导id',
  `partheaddate` datetime DEFAULT NULL COMMENT '保密要害部门部位所属部门领导签字日期',
  `isregist` int(11) DEFAULT NULL COMMENT '是否登记 0/1 否/是',
  `isstorage` int(11) DEFAULT NULL COMMENT '手机是否存入手机屏蔽柜 0/1 否/是',
  `isdeviceentry` int(11) DEFAULT NULL COMMENT '是否带具有拍照、摄录、无线发射功能的设备进入保密要害部门部位 0/1否/是',
  `otherrecord` varchar(400) DEFAULT NULL COMMENT '其他情况记录',
  `acofficialssign` varchar(50) DEFAULT NULL COMMENT '要害部门、部位所在部门制定旁站陪同人员签字',
  `acfficialsid` int(11) DEFAULT NULL COMMENT '陪同人员id',
  `acofficialsdate` datetime DEFAULT NULL COMMENT '陪同人员签字时间',
  `username` varchar(50) DEFAULT NULL COMMENT '处理人姓名',
  `userid` int(11) DEFAULT NULL COMMENT '处理人id',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='外来人员进入保密要害部门、部位申请表';

#
# Dumping data for table s_applykeypart_tab
#

LOCK TABLES `s_applykeypart_tab` WRITE;
/*!40000 ALTER TABLE `s_applykeypart_tab` DISABLE KEYS */;
INSERT INTO `s_applykeypart_tab` VALUES (2,0,2,'12','12','12','2016-05-02 17:39:14','2016-05-10 17:39:17','12','6',NULL,'2016-05-27 17:40:04','1','6',NULL,'2016-05-27 17:40:04',34,34,34,'1','6',NULL,'2016-05-27 17:40:04','管理员',2275);
/*!40000 ALTER TABLE `s_applykeypart_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table s_borrowmedium_tab
#

DROP TABLE IF EXISTS `s_borrowmedium_tab`;
CREATE TABLE `s_borrowmedium_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `borrowdate` datetime DEFAULT NULL COMMENT '登记日期',
  `mediumtype` int(11) DEFAULT NULL COMMENT '介质类型',
  `mclassified` int(11) DEFAULT NULL COMMENT '介质密级',
  `scode` varchar(100) DEFAULT NULL COMMENT '保密编号',
  `devicecode` varchar(100) DEFAULT NULL COMMENT '连接设备编号',
  `dclassified` int(11) DEFAULT NULL COMMENT '连接设备密级',
  `ulimite` varchar(20) DEFAULT NULL COMMENT '借用期限',
  `usesign` varchar(50) DEFAULT NULL COMMENT '使用人签字',
  `uid` int(11) DEFAULT NULL COMMENT '使用人id',
  `receivedate` datetime DEFAULT NULL COMMENT '返回时间',
  `checkdesc` varchar(800) DEFAULT NULL COMMENT '检查情况',
  `cname` varchar(50) DEFAULT NULL COMMENT '检查人',
  `cid` int(11) DEFAULT NULL COMMENT '检查人id',
  `username` varchar(50) DEFAULT NULL COMMENT '处理人姓名',
  `userid` int(11) DEFAULT NULL COMMENT '处理人id',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='部门存储介质借用登记表';

#
# Dumping data for table s_borrowmedium_tab
#

LOCK TABLES `s_borrowmedium_tab` WRITE;
/*!40000 ALTER TABLE `s_borrowmedium_tab` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_borrowmedium_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table s_cancelinternet_tab
#

DROP TABLE IF EXISTS `s_cancelinternet_tab`;
CREATE TABLE `s_cancelinternet_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `unit` varchar(100) DEFAULT NULL COMMENT '申报单位',
  `unitid` varchar(50) DEFAULT NULL COMMENT '单位id',
  `shead` varchar(50) DEFAULT NULL COMMENT '申报部门或单位保密负责人',
  `office` varchar(255) DEFAULT NULL COMMENT '联网计算机所在处、室',
  `models` varchar(255) DEFAULT NULL COMMENT '联网机型',
  `haddress` varchar(255) DEFAULT NULL COMMENT '主机（MAC）地址',
  `serialnum` varchar(255) DEFAULT NULL COMMENT '硬盘序列号',
  `isspecial` int(11) DEFAULT NULL COMMENT '是否专机专用 0/1否/是',
  `sresponsible` varchar(50) DEFAULT NULL COMMENT '联网计算机保密责任人',
  `licensenum` varchar(255) DEFAULT NULL COMMENT '计算机联网许可证编号',
  `cancelreason` varchar(400) DEFAULT NULL COMMENT '注销原因',
  `equipto` varchar(400) DEFAULT NULL COMMENT '注销后设备去向',
  `departmentdesc` varchar(400) DEFAULT NULL COMMENT '申报部门或单位领导审查意见',
  `departmentdate` datetime DEFAULT NULL COMMENT '申报部门或单位领导审查意见填写日期',
  `comdepartdesc` varchar(400) DEFAULT NULL COMMENT '公司（院、基地）主管部门审批意见',
  `comdepartdate` datetime DEFAULT NULL COMMENT '公司（院、基地）主管部门审批意见填写日期',
  `username` varchar(50) DEFAULT NULL COMMENT '处理人姓名',
  `userid` int(11) DEFAULT NULL COMMENT '处理人id',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='国际互联网计算机注销审批表';

#
# Dumping data for table s_cancelinternet_tab
#

LOCK TABLES `s_cancelinternet_tab` WRITE;
/*!40000 ALTER TABLE `s_cancelinternet_tab` DISABLE KEYS */;
INSERT INTO `s_cancelinternet_tab` VALUES (1,0,'12',NULL,'12','12','12','12','12',35,'33','33','12','12','12','2016-05-19 17:21:01','12','2016-05-19 17:21:01','管理员',2275);
/*!40000 ALTER TABLE `s_cancelinternet_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table s_carriercontent_tab
#

DROP TABLE IF EXISTS `s_carriercontent_tab`;
CREATE TABLE `s_carriercontent_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `cid` int(11) DEFAULT NULL COMMENT '本部涉密载体外出复制审批单id',
  `contents` varchar(255) DEFAULT NULL COMMENT '涉密载体内容（或文件名称）',
  `fs` int(11) DEFAULT NULL COMMENT '份数',
  `zys` int(11) DEFAULT NULL COMMENT '每份总页数',
  `classification` int(11) DEFAULT NULL COMMENT '密级',
  `zyh` varchar(100) DEFAULT NULL COMMENT '准印号',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='涉密载体内容明细表';

#
# Dumping data for table s_carriercontent_tab
#

LOCK TABLES `s_carriercontent_tab` WRITE;
/*!40000 ALTER TABLE `s_carriercontent_tab` DISABLE KEYS */;
INSERT INTO `s_carriercontent_tab` VALUES (1,0,1,'vv',2,3,86,'zzzzzz');
INSERT INTO `s_carriercontent_tab` VALUES (7,0,1,'ty',5,6,87,'eee');
/*!40000 ALTER TABLE `s_carriercontent_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table s_carrypartmedium_tab
#

DROP TABLE IF EXISTS `s_carrypartmedium_tab`;
CREATE TABLE `s_carrypartmedium_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `code` varchar(255) DEFAULT NULL COMMENT '编号',
  `orgname` varchar(255) DEFAULT NULL COMMENT '责任部门',
  `orgid` varchar(50) DEFAULT NULL COMMENT '责任部门id',
  `agent` varchar(50) DEFAULT NULL COMMENT '经办人',
  `location` varchar(255) DEFAULT NULL COMMENT '外出地点',
  `returndate` datetime DEFAULT NULL COMMENT '返回日期',
  `applydate` datetime DEFAULT NULL COMMENT '申请日期',
  `mclassifition` int(11) DEFAULT NULL COMMENT '介质密级 0/1/2/3 机密/秘密/内部/上网',
  `scode` varchar(255) DEFAULT NULL COMMENT '保密编号',
  `yt` varchar(255) DEFAULT NULL COMMENT '用途',
  `information` varchar(400) DEFAULT NULL COMMENT '处理信息的主要内容',
  `imaxclassification` varchar(20) DEFAULT NULL COMMENT '处理信息的最高密级',
  `usign` varchar(50) DEFAULT NULL COMMENT '使用人签字',
  `uid` int(11) DEFAULT NULL COMMENT '使用人id',
  `udate` datetime DEFAULT NULL COMMENT '使用人签字日期',
  `departmentdesc` varchar(400) DEFAULT NULL COMMENT '部门领导审批意见',
  `departmentdate` datetime DEFAULT NULL COMMENT '部门领导审批日期',
  `recheckcase` varchar(800) DEFAULT NULL COMMENT '返回检查情况',
  `recheckdate` datetime DEFAULT NULL COMMENT '返回检查日期',
  `username` varchar(50) DEFAULT NULL COMMENT '处理人姓名',
  `userid` int(11) DEFAULT NULL COMMENT '处理人id',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='本部存储介质携带外出审批表';

#
# Dumping data for table s_carrypartmedium_tab
#

LOCK TABLES `s_carrypartmedium_tab` WRITE;
/*!40000 ALTER TABLE `s_carrypartmedium_tab` DISABLE KEYS */;
INSERT INTO `s_carrypartmedium_tab` VALUES (1,0,'aa','a',NULL,'a','a','2016-05-16','2016-05-02',126,'aa','aa','aa','aa','5',NULL,'2016-05-17 16:16:26','a','2016-05-17 16:16:26','a','2016-05-17 16:16:26','管理员',2275);
INSERT INTO `s_carrypartmedium_tab` VALUES (4,0,'qq','q',NULL,'qq','q','2016-05-20','2016-05-03',126,'q','q','q','q','5',NULL,'2016-05-17 16:22:36','q','2016-05-17 16:22:36','q','2016-05-17 16:22:36','管理员',2275);
/*!40000 ALTER TABLE `s_carrypartmedium_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table s_changeinternet_info_tab
#

DROP TABLE IF EXISTS `s_changeinternet_info_tab`;
CREATE TABLE `s_changeinternet_info_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `cid` int(11) DEFAULT NULL COMMENT '国际互联网计算机变更审批表id',
  `licensenum` varchar(255) DEFAULT NULL COMMENT '许可证编号',
  `bcorgname` varchar(255) DEFAULT NULL COMMENT '变更前责任部门',
  `bcorgid` varchar(50) DEFAULT NULL COMMENT '变更前责任部门id',
  `bcsresponsible` varchar(50) DEFAULT NULL COMMENT '变更前责任人',
  `bcserialnum` varchar(255) DEFAULT NULL COMMENT '变更前硬盘序列号',
  `haddress` varchar(255) DEFAULT NULL COMMENT '变更前MAC地址',
  `acorgname` varchar(255) DEFAULT NULL COMMENT '变更后责任部门',
  `acorgid` varchar(50) DEFAULT NULL COMMENT '变更后责任部门id',
  `acsresponsible` varchar(50) DEFAULT NULL COMMENT '变更后责任人',
  `acserialnum` varchar(255) DEFAULT NULL COMMENT '变更后硬盘序列号',
  `achaddress` varchar(255) DEFAULT NULL COMMENT '变更后MAC地址',
  `changereason` varchar(400) DEFAULT NULL COMMENT '变更原因',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COMMENT='国际互联网计算机变更审批明细表';

#
# Dumping data for table s_changeinternet_info_tab
#

LOCK TABLES `s_changeinternet_info_tab` WRITE;
/*!40000 ALTER TABLE `s_changeinternet_info_tab` DISABLE KEYS */;
INSERT INTO `s_changeinternet_info_tab` VALUES (16,NULL,5,'a1','a1',NULL,'a1','a1','a1','a1',NULL,'a1','a1','a1','a1');
INSERT INTO `s_changeinternet_info_tab` VALUES (17,NULL,5,'d','d',NULL,'d','d','d','d',NULL,'d','d','d','d');
INSERT INTO `s_changeinternet_info_tab` VALUES (18,NULL,5,'s','s',NULL,'s','s','s','s',NULL,'s','s','','s');
INSERT INTO `s_changeinternet_info_tab` VALUES (29,NULL,6,'q','q',NULL,'q','q','q','q',NULL,'q','q','q','q');
INSERT INTO `s_changeinternet_info_tab` VALUES (30,NULL,6,'w','w1',NULL,'w1','w1','w','w',NULL,'w','w','','');
INSERT INTO `s_changeinternet_info_tab` VALUES (31,NULL,6,'r1','r1',NULL,'r1','r','r','r',NULL,'rs','rs','','');
INSERT INTO `s_changeinternet_info_tab` VALUES (32,NULL,6,'ss','ss',NULL,'','','','',NULL,'','','','');
/*!40000 ALTER TABLE `s_changeinternet_info_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table s_changeinternet_tab
#

DROP TABLE IF EXISTS `s_changeinternet_tab`;
CREATE TABLE `s_changeinternet_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `orgname` varchar(255) DEFAULT NULL COMMENT '单位/部门',
  `orgid` varchar(50) DEFAULT NULL COMMENT '单位/部门id',
  `cdate` datetime DEFAULT NULL COMMENT '变更日期',
  `depdesc` varchar(400) DEFAULT NULL COMMENT '单位/部门领导意见',
  `depdate` datetime DEFAULT NULL COMMENT '单位/部门领导意见填写日期',
  `mdepdesc` varchar(400) DEFAULT NULL COMMENT '院主管部门审批意见',
  `mdepdate` datetime DEFAULT NULL COMMENT '院主管部门审批意见填写日期',
  `username` varchar(50) DEFAULT NULL COMMENT '处理人姓名',
  `userid` int(11) DEFAULT NULL COMMENT '处理人id',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='国际互联网计算机变更审批表';

#
# Dumping data for table s_changeinternet_tab
#

LOCK TABLES `s_changeinternet_tab` WRITE;
/*!40000 ALTER TABLE `s_changeinternet_tab` DISABLE KEYS */;
INSERT INTO `s_changeinternet_tab` VALUES (5,0,'aa1',NULL,'2016-05-31','aa1','2016-05-23 16:34:59','a1','2016-05-23 16:34:59','管理员',2275);
INSERT INTO `s_changeinternet_tab` VALUES (6,0,'qq',NULL,'2016-05-10','wr','2016-05-27 10:03:12','wr','2016-05-27 10:03:12','管理员',2275);
/*!40000 ALTER TABLE `s_changeinternet_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table s_changemedium_info_tab
#

DROP TABLE IF EXISTS `s_changemedium_info_tab`;
CREATE TABLE `s_changemedium_info_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `cid` int(11) DEFAULT NULL COMMENT '存储介质变更审批表id',
  `mtype` varchar(20) DEFAULT NULL COMMENT '类型',
  `specifications` varchar(255) DEFAULT NULL COMMENT '型号及规格',
  `bcorgname` varchar(255) DEFAULT NULL COMMENT '变更前责任部门',
  `bcorgid` varchar(50) DEFAULT NULL COMMENT '变更前责任部门id',
  `bcdepository` varchar(50) DEFAULT NULL COMMENT '变更前保管人',
  `bcclassification` varchar(20) DEFAULT NULL COMMENT '变更前涉密级别',
  `bcscode` varchar(255) DEFAULT NULL COMMENT '变更前保密编号',
  `acorgname` varchar(255) DEFAULT NULL COMMENT '变更后责任部门',
  `acorgid` varchar(50) DEFAULT NULL COMMENT '变更后责任部门id',
  `acdepository` varchar(50) DEFAULT NULL COMMENT '变更后保管人',
  `acclassification` varchar(20) DEFAULT NULL COMMENT '变更后涉密级别',
  `acscode` varchar(255) DEFAULT NULL COMMENT '变更后保密编号',
  `changereason` varchar(400) DEFAULT NULL COMMENT '变更原因',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='存储介质变更审批明细表';

#
# Dumping data for table s_changemedium_info_tab
#

LOCK TABLES `s_changemedium_info_tab` WRITE;
/*!40000 ALTER TABLE `s_changemedium_info_tab` DISABLE KEYS */;
INSERT INTO `s_changemedium_info_tab` VALUES (5,NULL,1,'12','12','12',NULL,'12','3','12','12',NULL,'12','2','12','12');
INSERT INTO `s_changemedium_info_tab` VALUES (6,NULL,1,'22','22','22',NULL,'22','1','22','22',NULL,'22','0','22','22');
INSERT INTO `s_changemedium_info_tab` VALUES (7,NULL,1,'3','3','3',NULL,'3','0','3','3',NULL,'3','0','3','3');
/*!40000 ALTER TABLE `s_changemedium_info_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table s_changemedium_tab
#

DROP TABLE IF EXISTS `s_changemedium_tab`;
CREATE TABLE `s_changemedium_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `orgname` varchar(255) DEFAULT NULL COMMENT '部门',
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `orgid` varchar(50) DEFAULT NULL COMMENT '部门id',
  `code` varchar(255) DEFAULT NULL COMMENT '编号',
  `username` varchar(50) DEFAULT NULL COMMENT '处理人姓名',
  `userid` int(11) DEFAULT NULL COMMENT '处理人id',
  `departdesc` varchar(400) DEFAULT NULL COMMENT '部门领导意见',
  `departdate` datetime DEFAULT NULL COMMENT '部门领导意见填写日期',
  `officedesc` varchar(400) DEFAULT NULL COMMENT '保密办公室意见',
  `officedate` datetime DEFAULT NULL COMMENT '保密办公室意见填写日期',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='存储介质变更审批表';

#
# Dumping data for table s_changemedium_tab
#

LOCK TABLES `s_changemedium_tab` WRITE;
/*!40000 ALTER TABLE `s_changemedium_tab` DISABLE KEYS */;
INSERT INTO `s_changemedium_tab` VALUES (1,'12',0,NULL,'12','管理员',2275,'223','2016-05-24 11:33:16','223','2016-05-24 11:33:16');
/*!40000 ALTER TABLE `s_changemedium_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table s_classifiedcopy_supervision_tab
#

DROP TABLE IF EXISTS `s_classifiedcopy_supervision_tab`;
CREATE TABLE `s_classifiedcopy_supervision_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `cuname` varchar(50) DEFAULT NULL COMMENT '复制单位名称',
  `orgid` varchar(50) DEFAULT NULL COMMENT '承办部门id',
  `orgname` varchar(100) DEFAULT NULL COMMENT '承办部门',
  `cdate` datetime DEFAULT NULL COMMENT '检查时间',
  `caddress` varchar(255) DEFAULT NULL COMMENT '检查地点',
  `cname` varchar(50) DEFAULT NULL COMMENT '检查人员',
  `bmname` varchar(50) DEFAULT NULL COMMENT '保密责任人',
  `isapproval` int(11) DEFAULT NULL COMMENT '是否为保密行政管理部门审查批准的单位 0/1否/是',
  `isdcopy` int(11) DEFAULT NULL COMMENT '是否为院指定的定点复制单位 0/1 否/是',
  `issignsec` int(11) DEFAULT NULL COMMENT '是否签订保密协议书 0/1 否/是',
  `isconrequire` int(11) DEFAULT NULL COMMENT '复制场所是否符合保密要求 0/1 否/是',
  `note` varchar(400) DEFAULT NULL COMMENT '备注',
  `isback` int(11) DEFAULT NULL COMMENT '原稿是否收回 0/1 否/是',
  `bcopies` int(11) DEFAULT NULL COMMENT '收回份数',
  `ismark` int(11) DEFAULT NULL COMMENT '是否按审批单复制数量制作 0/1否/是',
  `printnum` int(11) DEFAULT NULL COMMENT '打印份数',
  `renum` int(11) DEFAULT NULL COMMENT '接收份数',
  `iscountrecycle` int(11) DEFAULT NULL COMMENT '是否对印制过程中产生的成品、半成品、废品以及印制用的各种版、纸、胶片等相关涉密材料情况进行了清点回收 0/1否/是',
  `handling` varchar(255) DEFAULT NULL COMMENT '处理方式',
  `isdelete` int(11) DEFAULT NULL COMMENT '有关计算机等印制设备中的电子文档是否在专人监督下进行了彻底删除 0/1否/是',
  `supervisor` varchar(255) DEFAULT NULL COMMENT '监督人',
  `departmentsign` varchar(50) DEFAULT NULL COMMENT '承办部门保密负责人签字',
  `departmentid` int(11) DEFAULT NULL COMMENT '负责人id',
  `departmentdate` datetime DEFAULT NULL COMMENT '负责人签字日期',
  `officedesc` varchar(400) DEFAULT NULL COMMENT '院办公室审核意见',
  `officesign` varchar(50) DEFAULT NULL COMMENT '院办公室审核签字',
  `officeid` int(11) DEFAULT NULL COMMENT '院办公室审核签字人id',
  `officedate` datetime DEFAULT NULL COMMENT '院办公室审核签字日期',
  `username` varchar(50) DEFAULT NULL COMMENT '处理人姓名',
  `userid` int(11) DEFAULT NULL COMMENT '处理人id',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='本部送外复制涉密载体监督检查记录表';

#
# Dumping data for table s_classifiedcopy_supervision_tab
#

LOCK TABLES `s_classifiedcopy_supervision_tab` WRITE;
/*!40000 ALTER TABLE `s_classifiedcopy_supervision_tab` DISABLE KEYS */;
INSERT INTO `s_classifiedcopy_supervision_tab` VALUES (2,NULL,'r',NULL,'r','2016-05-18 11:23:58','r','r','r',35,35,34,34,'rrrr',34,5,34,5,5,35,'r',34,'r','6',NULL,NULL,'rrrrr','5',NULL,NULL,'管理员',2275);
/*!40000 ALTER TABLE `s_classifiedcopy_supervision_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table s_classifiedcopy_tab
#

DROP TABLE IF EXISTS `s_classifiedcopy_tab`;
CREATE TABLE `s_classifiedcopy_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `applyname` varchar(50) DEFAULT NULL COMMENT '申请人',
  `aid` int(11) DEFAULT NULL COMMENT '申请人id',
  `orgid` varchar(50) DEFAULT NULL COMMENT '部门id',
  `orgname` varchar(100) DEFAULT NULL COMMENT '部门',
  `copyutility` varchar(255) DEFAULT NULL COMMENT '复印用途',
  `mgunit` varchar(255) DEFAULT NULL COMMENT '承制单位',
  `officedesc` varchar(400) DEFAULT NULL COMMENT '处室领导意见',
  `officesign` varchar(50) DEFAULT NULL COMMENT '处室领导签字',
  `officeid` int(11) DEFAULT NULL COMMENT '处室领导id',
  `officedate` datetime DEFAULT NULL COMMENT '处室领导签字日期',
  `departmentdesc` varchar(400) DEFAULT NULL COMMENT '部门领导意见',
  `departmentsign` varchar(50) DEFAULT NULL COMMENT '部门领导签字',
  `departmentid` int(11) DEFAULT NULL COMMENT '部门领导id',
  `departmentdate` datetime DEFAULT NULL COMMENT '部门领导签字日期',
  `mgconfirm` varchar(255) DEFAULT NULL COMMENT '承办单位确认',
  `agentsign` varchar(50) DEFAULT NULL COMMENT '经办人签字',
  `agentid` int(11) DEFAULT NULL COMMENT '经办人id',
  `agentdate` datetime DEFAULT NULL COMMENT '经办人签字日期',
  `username` varchar(50) DEFAULT NULL COMMENT '处理人姓名',
  `userid` int(11) DEFAULT NULL COMMENT '处理人id',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='本部涉密载体外出复制审批单';

#
# Dumping data for table s_classifiedcopy_tab
#

LOCK TABLES `s_classifiedcopy_tab` WRITE;
/*!40000 ALTER TABLE `s_classifiedcopy_tab` DISABLE KEYS */;
INSERT INTO `s_classifiedcopy_tab` VALUES (1,NULL,'qq',NULL,NULL,'ff','115','121',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'管理员',2275);
INSERT INTO `s_classifiedcopy_tab` VALUES (8,NULL,'ee',NULL,NULL,'ffd','116','121',NULL,'5',NULL,NULL,NULL,'5',NULL,NULL,NULL,'6',NULL,NULL,'管理员',2275);
/*!40000 ALTER TABLE `s_classifiedcopy_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table s_classifieddestroy_info_tab
#

DROP TABLE IF EXISTS `s_classifieddestroy_info_tab`;
CREATE TABLE `s_classifieddestroy_info_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `cdid` int(11) DEFAULT NULL COMMENT '本部涉密载体销毁审批表id',
  `filename` varchar(255) DEFAULT NULL COMMENT '文件资料名称',
  `productunit` varchar(255) DEFAULT NULL COMMENT '制作发文单位',
  `carriertype` int(11) DEFAULT NULL COMMENT '载体类别',
  `code` varchar(100) DEFAULT NULL COMMENT '文号或编号',
  `classification` varchar(20) DEFAULT NULL COMMENT '密级',
  `pages` int(11) DEFAULT NULL COMMENT '页数或容量',
  `copies` int(11) DEFAULT NULL COMMENT '份数或数量',
  `depositoryid` int(11) DEFAULT NULL COMMENT '保管人id',
  `depository` varchar(50) DEFAULT NULL COMMENT '保管人',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='本部涉密载体销毁审批明细表';

#
# Dumping data for table s_classifieddestroy_info_tab
#

LOCK TABLES `s_classifieddestroy_info_tab` WRITE;
/*!40000 ALTER TABLE `s_classifieddestroy_info_tab` DISABLE KEYS */;
INSERT INTO `s_classifieddestroy_info_tab` VALUES (9,NULL,2,'s','s',1,'2','2',2,2,NULL,'2');
INSERT INTO `s_classifieddestroy_info_tab` VALUES (10,NULL,2,'e','e',3,'3','3',3,3,NULL,'3');
/*!40000 ALTER TABLE `s_classifieddestroy_info_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table s_classifieddestroy_tab
#

DROP TABLE IF EXISTS `s_classifieddestroy_tab`;
CREATE TABLE `s_classifieddestroy_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `orgid` varchar(50) DEFAULT NULL COMMENT '部门id',
  `orgname` varchar(100) DEFAULT NULL COMMENT '所属部门',
  `dcode` varchar(100) DEFAULT NULL COMMENT '编号',
  `total` int(11) DEFAULT NULL COMMENT '文件合计',
  `destroyname` varchar(50) DEFAULT NULL COMMENT '销毁人',
  `destroyid` int(11) DEFAULT NULL COMMENT '销毁人id',
  `approvename` varchar(50) DEFAULT NULL COMMENT '批准人',
  `approveid` int(11) DEFAULT NULL COMMENT '批准人id',
  `receivename` varchar(50) DEFAULT NULL COMMENT '接收人',
  `receiveid` int(11) DEFAULT NULL COMMENT '接收人id',
  `userid` int(11) DEFAULT NULL COMMENT '处理人id',
  `username` varchar(50) DEFAULT NULL COMMENT '处理人姓名',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='本部涉密载体销毁审批表';

#
# Dumping data for table s_classifieddestroy_tab
#

LOCK TABLES `s_classifieddestroy_tab` WRITE;
/*!40000 ALTER TABLE `s_classifieddestroy_tab` DISABLE KEYS */;
INSERT INTO `s_classifieddestroy_tab` VALUES (2,0,NULL,'w','w',22,'6',NULL,'5',NULL,'6',NULL,2275,'管理员');
/*!40000 ALTER TABLE `s_classifieddestroy_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table s_classifiedprint_tab
#

DROP TABLE IF EXISTS `s_classifiedprint_tab`;
CREATE TABLE `s_classifiedprint_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `registdate` datetime DEFAULT NULL COMMENT '登记日期',
  `filename` varchar(100) DEFAULT NULL COMMENT '文件资料名称或标题',
  `classification` varchar(20) DEFAULT NULL COMMENT '密级',
  `pages` int(11) DEFAULT NULL COMMENT '页数（单份）',
  `copies` int(11) DEFAULT NULL COMMENT '份数',
  `qxyt` varchar(255) DEFAULT NULL COMMENT '去向或用途',
  `printername` varchar(50) DEFAULT NULL COMMENT '打印人',
  `approver` varchar(50) DEFAULT NULL COMMENT '批准人',
  `printerdate` datetime DEFAULT NULL COMMENT '打印时间',
  `rcode` varchar(100) DEFAULT NULL COMMENT '登记编号',
  `gname` varchar(50) DEFAULT NULL COMMENT '领取人',
  `gid` int(11) DEFAULT NULL COMMENT '领取人id',
  `username` varchar(50) DEFAULT NULL COMMENT '处理人姓名',
  `userid` int(11) DEFAULT NULL COMMENT '处理人id',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='涉密信息打印输出审批登记表';

#
# Dumping data for table s_classifiedprint_tab
#

LOCK TABLES `s_classifiedprint_tab` WRITE;
/*!40000 ALTER TABLE `s_classifiedprint_tab` DISABLE KEYS */;
INSERT INTO `s_classifiedprint_tab` VALUES (1,0,'2016-05-03','qq','85',1,1,NULL,'1','1','2016-05-13 11:36:21','1','1',NULL,'管理员',2275);
/*!40000 ALTER TABLE `s_classifiedprint_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table s_classifiedproject_tab
#

DROP TABLE IF EXISTS `s_classifiedproject_tab`;
CREATE TABLE `s_classifiedproject_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `ecid` int(11) DEFAULT NULL COMMENT '涉密人员密级审定表id',
  `proname` varchar(255) DEFAULT NULL COMMENT '涉密项目名称',
  `classification` int(11) DEFAULT NULL COMMENT '密级',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8 COMMENT='涉密项目明细表';

#
# Dumping data for table s_classifiedproject_tab
#

LOCK TABLES `s_classifiedproject_tab` WRITE;
/*!40000 ALTER TABLE `s_classifiedproject_tab` DISABLE KEYS */;
INSERT INTO `s_classifiedproject_tab` VALUES (1,0,1,'保密项目1',1);
INSERT INTO `s_classifiedproject_tab` VALUES (2,0,1,'保密项目2',2);
INSERT INTO `s_classifiedproject_tab` VALUES (3,0,1,'保密项目3',3);
INSERT INTO `s_classifiedproject_tab` VALUES (4,0,2,'保密项目4',2);
INSERT INTO `s_classifiedproject_tab` VALUES (8,0,5,'保密项目9',3);
INSERT INTO `s_classifiedproject_tab` VALUES (118,NULL,12,'77',0);
INSERT INTO `s_classifiedproject_tab` VALUES (119,NULL,12,'44',0);
/*!40000 ALTER TABLE `s_classifiedproject_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table s_classifiedtz_info_tab
#

DROP TABLE IF EXISTS `s_classifiedtz_info_tab`;
CREATE TABLE `s_classifiedtz_info_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `ctzid` int(11) DEFAULT NULL COMMENT '部门或个人涉密载体台账id',
  `filename` varchar(255) DEFAULT NULL COMMENT '文件资料名称',
  `productunit` varchar(255) DEFAULT NULL COMMENT '制作发文单位',
  `carriertype` int(11) DEFAULT NULL COMMENT '载体类别',
  `code` varchar(100) DEFAULT NULL COMMENT '文号或编号',
  `classification` varchar(20) DEFAULT NULL COMMENT '密级',
  `pages` int(11) DEFAULT NULL COMMENT '页数或容量',
  `copies` int(11) DEFAULT NULL COMMENT '份数',
  `usrange` varchar(255) DEFAULT NULL COMMENT '使用范围',
  `note` varchar(400) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COMMENT='部门或个人涉密载体台账明细表';

#
# Dumping data for table s_classifiedtz_info_tab
#

LOCK TABLES `s_classifiedtz_info_tab` WRITE;
/*!40000 ALTER TABLE `s_classifiedtz_info_tab` DISABLE KEYS */;
INSERT INTO `s_classifiedtz_info_tab` VALUES (25,NULL,1,'12','12',12,'1','1',1,1,'1','1');
INSERT INTO `s_classifiedtz_info_tab` VALUES (26,NULL,1,'21','21',21,'21','2',2,2,'2','2');
INSERT INTO `s_classifiedtz_info_tab` VALUES (27,NULL,1,'22','22',22,'22','22',22,22,'','');
INSERT INTO `s_classifiedtz_info_tab` VALUES (28,NULL,1,'33','',33,'','',33,33,'','');
/*!40000 ALTER TABLE `s_classifiedtz_info_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table s_classifiedtz_tab
#

DROP TABLE IF EXISTS `s_classifiedtz_tab`;
CREATE TABLE `s_classifiedtz_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `orgname` varchar(255) DEFAULT NULL COMMENT '所属部门',
  `orgid` int(11) DEFAULT NULL COMMENT '部门id',
  `registdate` datetime DEFAULT NULL COMMENT '登记日期',
  `depsign` varchar(50) DEFAULT NULL COMMENT '保管人签字',
  `depositoryid` int(11) DEFAULT NULL COMMENT '保管人id',
  `depositorydate` datetime DEFAULT NULL COMMENT '保管人签字日期',
  `approvesign` varchar(50) DEFAULT NULL COMMENT '批准人签字',
  `approveid` int(11) DEFAULT NULL COMMENT '批准人id',
  `approvedate` datetime DEFAULT NULL COMMENT '批准人签字日期',
  `username` varchar(50) DEFAULT NULL COMMENT '处理人姓名',
  `userid` int(11) DEFAULT NULL COMMENT '处理人id',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='部门或个人涉密载体台帐';

#
# Dumping data for table s_classifiedtz_tab
#

LOCK TABLES `s_classifiedtz_tab` WRITE;
/*!40000 ALTER TABLE `s_classifiedtz_tab` DISABLE KEYS */;
INSERT INTO `s_classifiedtz_tab` VALUES (1,0,'bm',NULL,'2016-05-05','5',NULL,'2016-05-26 09:23:01','5',NULL,'2016-05-26 09:23:01','管理员',2275);
/*!40000 ALTER TABLE `s_classifiedtz_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table s_commitment_tab
#

DROP TABLE IF EXISTS `s_commitment_tab`;
CREATE TABLE `s_commitment_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `orgname` varchar(100) DEFAULT NULL COMMENT '部门',
  `orgid` varchar(50) DEFAULT NULL COMMENT '部门id',
  `office` varchar(100) DEFAULT NULL COMMENT '处室',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `position` varchar(100) DEFAULT NULL COMMENT '职务',
  `title` varchar(100) DEFAULT NULL COMMENT '职称',
  `classification` int(11) DEFAULT NULL COMMENT '岗位密级',
  `address` varchar(255) DEFAULT NULL COMMENT '家庭住址',
  `phone` varchar(50) DEFAULT NULL COMMENT '家庭固定电话',
  `cellphone` varchar(50) DEFAULT NULL COMMENT '个人移动电话',
  `deskmodel` varchar(100) DEFAULT NULL COMMENT '家用台式计算机型号',
  `portablemodels` varchar(100) DEFAULT NULL COMMENT '家用便携式计算机型号',
  `deskintercon` int(11) DEFAULT NULL COMMENT '台式计算机上网方式 0/1/2/3拨号/宽带/无线/不上网',
  `portableintercon` int(11) DEFAULT NULL COMMENT '便携式计算机上网方式 0/1/2/3拨号/宽带/无线/不上网',
  `comname` varchar(50) DEFAULT NULL COMMENT '承诺人',
  `comdate` date DEFAULT NULL COMMENT '承诺日期',
  `username` varchar(50) DEFAULT NULL COMMENT '处理人姓名',
  `userid` int(11) DEFAULT NULL COMMENT '处理人id',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='员工安全保密承诺书';

#
# Dumping data for table s_commitment_tab
#

LOCK TABLES `s_commitment_tab` WRITE;
/*!40000 ALTER TABLE `s_commitment_tab` DISABLE KEYS */;
INSERT INTO `s_commitment_tab` VALUES (1,NULL,'bm  ',NULL,'cs  ',' a   ',' a   ',' a   ',14,'zz',' 1   ',' 1   ',' a   ',' a   ',95,91,'5',NULL,'管理员',2275);
INSERT INTO `s_commitment_tab` VALUES (2,0,' bm1',NULL,' cs1',' xm1',' zw1',' zc1',13,' zz',' 1',' 1',' 1',' 1',91,94,'5','2016-05-12','管理员',2275);
/*!40000 ALTER TABLE `s_commitment_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table s_conagreement_tab
#

DROP TABLE IF EXISTS `s_conagreement_tab`;
CREATE TABLE `s_conagreement_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `jfname` varchar(255) DEFAULT NULL COMMENT '甲方',
  `yfname` varchar(255) DEFAULT NULL COMMENT '乙方',
  `jfsign` varchar(50) DEFAULT NULL COMMENT '甲方授权代表',
  `jfid` int(11) DEFAULT NULL COMMENT '甲方授权代表id',
  `yfsign` varchar(50) DEFAULT NULL COMMENT '乙方授权代表',
  `yfid` int(11) DEFAULT NULL COMMENT '乙方授权代表id',
  `jfdate` datetime DEFAULT NULL COMMENT '甲方签字日期',
  `yfdate` datetime DEFAULT NULL COMMENT '乙方签字日期',
  `username` varchar(50) DEFAULT NULL COMMENT '处理人姓名',
  `userid` int(11) DEFAULT NULL COMMENT '处理人id',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='保密协议书';

#
# Dumping data for table s_conagreement_tab
#

LOCK TABLES `s_conagreement_tab` WRITE;
/*!40000 ALTER TABLE `s_conagreement_tab` DISABLE KEYS */;
INSERT INTO `s_conagreement_tab` VALUES (1,0,'aa','aa','5',NULL,'5',NULL,'2016-05-22 11:17:14','2016-05-22 11:17:14','管理员',2275);
INSERT INTO `s_conagreement_tab` VALUES (2,0,'11','22','5',NULL,'5',NULL,'2016-05-22 11:17:23','2016-05-22 11:17:23','管理员',2275);
/*!40000 ALTER TABLE `s_conagreement_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table s_conagreementyb_tab
#

DROP TABLE IF EXISTS `s_conagreementyb_tab`;
CREATE TABLE `s_conagreementyb_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `jfcontract` varchar(255) DEFAULT NULL COMMENT '甲方（涉密项目分包方）',
  `yfcb` varchar(255) DEFAULT NULL COMMENT '乙方（涉密项目承包方）',
  `pame` varchar(255) DEFAULT NULL COMMENT '分包项目名称',
  `classified` varchar(20) DEFAULT NULL COMMENT '分包项目涉密等级',
  `jfsign` varchar(50) DEFAULT NULL COMMENT '甲方授权代表',
  `jfid` int(11) DEFAULT NULL COMMENT '甲方授权代表id',
  `yfsign` varchar(50) DEFAULT NULL COMMENT '乙方授权代表',
  `yfid` int(11) DEFAULT NULL COMMENT '乙方授权代表id',
  `jfdate` datetime DEFAULT NULL COMMENT '甲方签字日期',
  `yfdate` datetime DEFAULT NULL COMMENT '乙方签字日期',
  `username` varchar(50) DEFAULT NULL COMMENT '处理人姓名',
  `userid` int(11) DEFAULT NULL COMMENT '处理人id',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='保密协议书（样本）';

#
# Dumping data for table s_conagreementyb_tab
#

LOCK TABLES `s_conagreementyb_tab` WRITE;
/*!40000 ALTER TABLE `s_conagreementyb_tab` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_conagreementyb_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table s_confidentiality_tab
#

DROP TABLE IF EXISTS `s_confidentiality_tab`;
CREATE TABLE `s_confidentiality_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `partya` varchar(255) DEFAULT NULL COMMENT '甲方',
  `partyb` varchar(255) DEFAULT NULL COMMENT '乙方',
  `paname` varchar(50) DEFAULT NULL COMMENT '甲方代表人',
  `pbname` varchar(50) DEFAULT NULL COMMENT '乙方代表人',
  `paid` int(11) DEFAULT NULL COMMENT '甲方代表id',
  `pbid` int(11) DEFAULT NULL COMMENT '乙方代表id',
  `padate` datetime DEFAULT NULL COMMENT '甲方代表签字日期',
  `pbdate` datetime DEFAULT NULL COMMENT '乙方代表签字日期',
  `username` varchar(50) DEFAULT NULL COMMENT '处理人姓名',
  `userid` int(11) DEFAULT NULL COMMENT '处理人id',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='保密责任书';

#
# Dumping data for table s_confidentiality_tab
#

LOCK TABLES `s_confidentiality_tab` WRITE;
/*!40000 ALTER TABLE `s_confidentiality_tab` DISABLE KEYS */;
INSERT INTO `s_confidentiality_tab` VALUES (1,1,'中国航天科技集团公司第九研究院','阿斯顿发放','5','6',NULL,NULL,NULL,NULL,'admin',2275);
/*!40000 ALTER TABLE `s_confidentiality_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table s_cooperationcheck_tab
#

DROP TABLE IF EXISTS `s_cooperationcheck_tab`;
CREATE TABLE `s_cooperationcheck_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `deptname` varchar(50) DEFAULT NULL COMMENT '单位名称',
  `enterprisepro` varchar(50) DEFAULT NULL COMMENT '企业性质',
  `legalpers` varchar(50) DEFAULT NULL COMMENT '法人代表或负责人',
  `supedept` varchar(50) DEFAULT NULL COMMENT '上级主管单位',
  `mailaddress` varchar(100) DEFAULT NULL COMMENT '通信地址',
  `postcode` varchar(10) DEFAULT NULL COMMENT '邮政邮编',
  `cellphone` varchar(20) DEFAULT NULL COMMENT '电话',
  `fax` varchar(30) DEFAULT NULL COMMENT '传真',
  `securitydept` varchar(50) DEFAULT NULL COMMENT '保密工作机构名称',
  `bmtel` varchar(60) DEFAULT NULL COMMENT '保密责任人电话、传真',
  `checktype` int(1) DEFAULT NULL COMMENT '监督检查方式（0/1 函调监督检查/现场监督检查）',
  `deptbelong` int(1) DEFAULT NULL COMMENT '本单位属于（0/1/2 国家一级/二级/三级）',
  `belongelse` varchar(50) DEFAULT NULL COMMENT '单位属于其他内容',
  `begindate` date DEFAULT NULL COMMENT '有效期自',
  `enddate` date DEFAULT NULL COMMENT '有效期止',
  `isorgperfect` int(1) DEFAULT NULL COMMENT '保密组织机构是否健全（0/1 否/是）',
  `isauthorclear` int(1) DEFAULT NULL COMMENT '保密工作是否权限清晰（0/1 否/是）',
  `issysclear` int(1) DEFAULT NULL COMMENT '保密制度是否健全（0/1 否/是）',
  `ishavesys` int(1) DEFAULT NULL COMMENT '是否有保密奖惩和泄漏国家秘密事件报告和查处制度',
  `isflowclear` int(1) DEFAULT NULL COMMENT '保密审查、审批流程是否明确',
  `issecident` int(1) DEFAULT NULL COMMENT '是否对涉密人员进行密级界定',
  `isstrictcheck` int(1) DEFAULT NULL COMMENT '是否对涉密岗位的人员进行严格审查',
  `issecedu` int(1) DEFAULT NULL COMMENT '是否对涉密人员教育定期进行培训',
  `issigndoc` int(1) DEFAULT NULL COMMENT '是否对涉密人员签订保密责任书',
  `isprocright` int(1) DEFAULT NULL COMMENT '载体定密、密级变更依据、责任程序是否正确',
  `isstandard` int(1) DEFAULT NULL COMMENT '载体标密是否及时、规范',
  `isaccordgd` int(1) DEFAULT NULL COMMENT '涉密载体制度、收发、保存、销毁是否符合国家规定',
  `ismeasure` int(1) DEFAULT NULL COMMENT '是否根据工作需要对国家秘密接触和知悉范围有控制措施',
  `isconfdept` int(1) DEFAULT NULL COMMENT '是否准确确定要害部门、部位',
  `isdeptperfect` int(1) DEFAULT NULL COMMENT '要害部门部位制度是否完善，严格执行',
  `iseffeaction` int(1) DEFAULT NULL COMMENT '要害部门部位是否采取有效安防保密措施',
  `isisolation` int(1) DEFAULT NULL COMMENT '涉密计算机、信息系统是否与互联网物理隔离',
  `isdutyclear` int(1) DEFAULT NULL COMMENT '涉密信息系统管理人员职责是否明晰',
  `iscontrol` int(1) DEFAULT NULL COMMENT '对涉密电子信息有密级标识、输入输出是否得到有效控制',
  `isfoxcontrol` int(1) DEFAULT NULL COMMENT '对传真机、复印机等办公自动化设备是否有效控制',
  `issecwork` int(1) DEFAULT NULL COMMENT '重大涉密活动是否有保密工作要求和措施',
  `iskeep` int(1) DEFAULT NULL COMMENT '在项目协作中，是否保守所涉及到的国家秘密事项和甲方商业秘密的义务',
  `isszcopy` int(1) DEFAULT NULL COMMENT '是否擅自复制由甲方提供的有关资料、图纸等涉密载体',
  `isusecarrier` int(1) DEFAULT NULL COMMENT '是否按规定使用和保存涉密载体',
  `iscorrect` int(1) DEFAULT NULL COMMENT '当存在不符合保密要求的事项，是否及时纠正',
  `ishappen` int(1) DEFAULT NULL COMMENT '一年来是否发生过失、泄密事件',
  `checkcondition` varchar(400) DEFAULT NULL COMMENT '监督检查整体情况或情况说明',
  `orgsign` varchar(50) DEFAULT NULL COMMENT '协作配套单位保密工作机构负责人签字',
  `orgsignid` int(11) DEFAULT NULL COMMENT '机构负责人id',
  `orgdate` datetime DEFAULT NULL COMMENT '机构负责人签字日期',
  `xzdeptprom` varchar(400) DEFAULT NULL COMMENT '协作配套单位承诺',
  `fgleader` varchar(50) DEFAULT NULL COMMENT '协作配套单位保密工作分管领导签字',
  `fgleaderid` int(11) DEFAULT NULL COMMENT '分管领导id',
  `fgsigndate` datetime DEFAULT NULL COMMENT '分管领导签字日期',
  `checkopinion` varchar(400) DEFAULT NULL COMMENT '监督检查审核意见',
  `deptleader` varchar(50) DEFAULT NULL COMMENT '协作（分包）涉密任务部门领导签字',
  `deptleaderid` int(11) DEFAULT NULL COMMENT '部门领导id',
  `leaderdate` datetime DEFAULT NULL COMMENT '部门领导签字日期',
  `username` varchar(50) DEFAULT NULL COMMENT '处理人姓名',
  `userid` int(11) DEFAULT NULL COMMENT '处理人id',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='涉密协作配套单位保密监控检查表（样本）';

#
# Dumping data for table s_cooperationcheck_tab
#

LOCK TABLES `s_cooperationcheck_tab` WRITE;
/*!40000 ALTER TABLE `s_cooperationcheck_tab` DISABLE KEYS */;
INSERT INTO `s_cooperationcheck_tab` VALUES (1,1,'dasf','asdf','asdf','asdf','asdf','asfd','asdf','asdf','asdf','asdf',134,136,'asdf','2016-05-20','2016-05-20',34,35,34,35,35,34,34,35,34,35,35,34,35,34,34,34,34,34,34,34,34,34,35,35,35,35,'adsfa','6',NULL,NULL,'asdfaf','5',NULL,NULL,'asdf','6',NULL,NULL,'admin',2275);
/*!40000 ALTER TABLE `s_cooperationcheck_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table s_depseccheck_tab
#

DROP TABLE IF EXISTS `s_depseccheck_tab`;
CREATE TABLE `s_depseccheck_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `jobchange` varchar(255) DEFAULT NULL COMMENT '岗位变动自查记录',
  `personeduca` varchar(255) DEFAULT NULL COMMENT '调入人员保密教育自查记录',
  `outperson` varchar(255) DEFAULT NULL COMMENT '有无调出人员自查记录',
  `ptrain` varchar(255) DEFAULT NULL COMMENT '涉密人员培训自查记录',
  `handleinfor` varchar(255) DEFAULT NULL COMMENT '上网机处理涉密信息自查记录',
  `useregist` varchar(255) DEFAULT NULL COMMENT '办公设备使用登记记录自查记录',
  `scoryinfor` varchar(255) DEFAULT NULL COMMENT '传真机发送或复印涉密信息自查记录',
  `cbmeeting` varchar(255) DEFAULT NULL COMMENT '承办涉外活动履行审批手续自查记录',
  `secmanage` varchar(255) DEFAULT NULL COMMENT '涉密会议保密管理自查记录',
  `cbactivity` varchar(255) DEFAULT NULL COMMENT '承办涉外活动保密管理自查记录',
  `employzczg` varchar(255) DEFAULT NULL COMMENT '员工自查记录，自查问题整改等自查记录',
  `cooperation` varchar(255) DEFAULT NULL COMMENT '合作或协作单位、人员涉密事项自查记录',
  `otherinfor` varchar(400) DEFAULT NULL COMMENT '其他情况记录',
  `question` varchar(400) DEFAULT NULL COMMENT '发现问题',
  `corrective` varchar(400) DEFAULT NULL COMMENT '对发现问题的整改情况',
  `depsign` varchar(50) DEFAULT NULL COMMENT '部门负责人签字',
  `depid` int(11) DEFAULT NULL COMMENT '部门负责人id',
  `signdate` datetime DEFAULT NULL COMMENT '部门负责人签字日期',
  `depdate` datetime DEFAULT NULL COMMENT '自查日期',
  `username` varchar(50) DEFAULT NULL COMMENT '处理人姓名',
  `userid` int(11) DEFAULT NULL COMMENT '处理人id',
  `cbactivitycheck` varchar(255) DEFAULT NULL COMMENT '承办涉外活动是否履行审批手续',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='部门保密工作自查表';

#
# Dumping data for table s_depseccheck_tab
#

LOCK TABLES `s_depseccheck_tab` WRITE;
/*!40000 ALTER TABLE `s_depseccheck_tab` DISABLE KEYS */;
INSERT INTO `s_depseccheck_tab` VALUES (1,1,'asd','ads','asd','asd','ad','d','s','s','a','da','zc','zc','adsf','asdfq','asd','5',NULL,NULL,NULL,'admin',2275,'s');
/*!40000 ALTER TABLE `s_depseccheck_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table s_detainstandard_tab
#

DROP TABLE IF EXISTS `s_detainstandard_tab`;
CREATE TABLE `s_detainstandard_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `truancy` varchar(255) DEFAULT NULL COMMENT '无故不参加保密教育培训的扣发标准',
  `selfcheck` varchar(255) DEFAULT NULL COMMENT '员工未按月进行保密自查的扣发标准',
  `nopass` varchar(255) DEFAULT NULL COMMENT '保密知识考试低于80分的扣发标准',
  `abroad` varchar(255) DEFAULT NULL COMMENT '涉密人员擅自出国的扣发标准',
  `leaks` varchar(255) DEFAULT NULL COMMENT '未及时采取补救和如实反映泄密情况的扣发标准',
  `retaliation` varchar(255) DEFAULT NULL COMMENT '对检举泄密行为打击报复的扣发标准',
  `destructionequip` varchar(255) DEFAULT NULL COMMENT '故意破坏、拆除保密安全设施、设备的扣发标准',
  `refusecheck` varchar(255) DEFAULT NULL COMMENT '妨碍或拒绝接受保密检查的扣发标准',
  `randomdense` varchar(255) DEFAULT NULL COMMENT '涉密载体未确密或随意标密1-5件的扣发标准',
  `mrandomdense` varchar(255) DEFAULT NULL COMMENT '涉密载体未确密或随意标密5件以上的扣发标准',
  `distributionscope` varchar(255) DEFAULT NULL COMMENT '擅自扩大涉密载体知悉范围的扣发标准',
  `transforclassified` varchar(255) DEFAULT NULL COMMENT '未按规定传递涉密载体的每发现1次的扣发标准',
  `borrowing` varchar(255) DEFAULT NULL COMMENT '借阅涉密载体未按规定清退的扣发标准',
  `intensivelogo` varchar(255) DEFAULT NULL COMMENT '打印、复印、下载、扫描涉密文件资料，擅自更改密级标识或遮盖、删除远见密级标识的扣发标准',
  `carryout` varchar(255) DEFAULT NULL COMMENT '擅自携带机密级以下涉密载体外出的扣发标准',
  `jmcarryout` varchar(255) DEFAULT NULL COMMENT '擅自携带绝密级涉密载体外出的扣发标准',
  `printzl` varchar(255) DEFAULT NULL COMMENT '打印涉密资料未履行审批登记手续的每发现1件的扣发标准',
  `confidentiality` varchar(255) DEFAULT NULL COMMENT '记录涉密事项未按规定使用保密本的扣发标准',
  `storecarrier` varchar(255) DEFAULT NULL COMMENT '未按规定存放涉密载体的每发现1件的扣发标准',
  `kconfidential` varchar(255) DEFAULT NULL COMMENT '私自留存机密级以下涉密载体的每发现1件的扣发标准',
  `keepjm` varchar(255) DEFAULT NULL COMMENT '私自留存绝密级涉密载体的每发现1件的扣发标准',
  `bmbsybg` varchar(255) DEFAULT NULL COMMENT '保密本使用、保管不符合保密要求的扣发标准',
  `xhdj` varchar(255) DEFAULT NULL COMMENT '销毁涉密载体未按规定履行登记手续的扣发标准',
  `xhgrq` varchar(255) DEFAULT NULL COMMENT '召开涉密会议未采取加装手机信号干扰器的扣发标准',
  `syhysb` varchar(255) DEFAULT NULL COMMENT '涉密会议使用不符合要求的会议设备的扣发标准',
  `confregist` varchar(255) DEFAULT NULL COMMENT '涉密会议人员未进行身份登记确认的扣发标准',
  `xhzlwj` varchar(255) DEFAULT NULL COMMENT '涉密会议资料文件未按要求登记分发、清退、销毁的扣发标准',
  `gbsj` varchar(255) DEFAULT NULL COMMENT '参加涉密会议为关闭手机的扣发标准',
  `videos` varchar(255) DEFAULT NULL COMMENT '未经审批擅自在涉密活动中进行拍照、录像、录音的扣发标准',
  `inforprocess` varchar(255) DEFAULT NULL COMMENT '使用非涉密设备处理涉密信息的扣发标准',
  `formatting` varchar(255) DEFAULT NULL COMMENT '未经审批对涉密计算机格式化或重装系统的扣发标准',
  `dellog` varchar(255) DEFAULT NULL COMMENT '未经审批删除日志记录的扣发标准',
  `bmbs` varchar(255) DEFAULT NULL COMMENT '未粘贴保密标识的扣发标准',
  `cysmdj` varchar(255) DEFAULT NULL COMMENT '超越涉密等级处理涉密信息的扣发标准',
  `aqbmcp` varchar(255) DEFAULT NULL COMMENT '未按要求使用安全保密产品的扣发标准',
  `maintenance` varchar(255) DEFAULT NULL COMMENT '未统一维护的扣发标准',
  `azcc` varchar(255) DEFAULT NULL COMMENT '私自安装或拆除用户终端设备和软件的扣发标准',
  `wbsb` varchar(255) DEFAULT NULL COMMENT '使用外部设备的扣发标准',
  `fsfunction` varchar(255) DEFAULT NULL COMMENT '涉密计算机连接具有发射功能设备的扣发标准',
  `storeinfor` varchar(255) DEFAULT NULL COMMENT '未经审批存储涉密信息的扣发标准',
  `conmp` varchar(255) DEFAULT NULL COMMENT '连接MP3、MP4的扣发标准',
  `dmjmedium` varchar(255) DEFAULT NULL COMMENT '使用低密级存储介质存储高密集信息的扣发标准',
  `usegmj` varchar(255) DEFAULT NULL COMMENT '高密级存储介质在低密级计算机上使用的扣发标准',
  `middleconver` varchar(255) DEFAULT NULL COMMENT '使用中间转换机的扣发标准',
  `isolatesocket` varchar(255) DEFAULT NULL COMMENT '未正确使用隔离插座的扣发标准',
  `carrymedium` varchar(255) DEFAULT NULL COMMENT '未经审批携带计算机和存储介质外出的扣发标准',
  `bmjcmedium` varchar(255) DEFAULT NULL COMMENT '返回存储介质未保密检查的扣发标准',
  `checkinfor` varchar(255) DEFAULT NULL COMMENT '未保密审查发布信息的扣发标准',
  `clsw` varchar(255) DEFAULT NULL COMMENT '使用个人计算机处理办公事务的扣发标准',
  `grconmedium` varchar(255) DEFAULT NULL COMMENT '使用个人计算机连接单位存储介质的扣发标准',
  `classifiedequip` varchar(255) DEFAULT NULL COMMENT '使用非涉密办公自动化设备处理涉密信息的扣发标准',
  `noclogo` varchar(255) DEFAULT NULL COMMENT '涉密办公自动化设备未贴密级标识的扣发标准',
  `wirelesscon` varchar(255) DEFAULT NULL COMMENT '使用无线互连设备处理涉密信息的扣发标准',
  `mprocess` varchar(255) DEFAULT NULL COMMENT '涉密设备的维修报废处理不符合保密要求的扣发标准',
  `uwire` varchar(255) DEFAULT NULL COMMENT '在涉密场所使用无线通讯设备的扣发标准',
  `ucommunication` varchar(255) DEFAULT NULL COMMENT '使用未加密通讯设备传递涉密信息的扣发标准',
  `mobileinto` varchar(255) DEFAULT NULL COMMENT '将手机带入要害部门部位的扣发标准',
  `umobile` varchar(255) DEFAULT NULL COMMENT '在涉密会议和活动场所使用移动终端的扣发标准',
  `mobilelx` varchar(255) DEFAULT NULL COMMENT '在涉密场所使用手机录音、照相、视频通话等的扣发标准',
  `faxcopy` varchar(255) DEFAULT NULL COMMENT '使用传真机复印涉密文件资料的扣发标准',
  `deliveryinfor` varchar(255) DEFAULT NULL COMMENT '擅自向公开刊物媒体或学术会议投送涉密稿件论文或声像资料的扣发标准',
  `receiveinterview` varchar(255) DEFAULT NULL COMMENT '擅自接收新闻媒体对单位有关事项采访的扣发标准',
  `wbmzg` varchar(255) DEFAULT NULL COMMENT '选择的涉密协作配套单位不具有相应保密资格的扣发标准',
  `wqbmxy` varchar(255) DEFAULT NULL COMMENT '未在合同中明确项目密级和保密条款并未签订保密协议的扣发标准',
  `jsyq` varchar(255) DEFAULT NULL COMMENT '向协作单位提供技术要求以外涉密内容的扣发标准',
  `jdjc` varchar(255) DEFAULT NULL COMMENT '未对协作配套单位履行合同保密条款和保密协议进行监督检查的扣发标准',
  `wsjd` varchar(255) DEFAULT NULL COMMENT '擅自进行外事接待活动的扣发标准',
  `wfbmjl` varchar(255) DEFAULT NULL COMMENT '在对外交往与合作中违反保密纪律的扣发标准',
  `wjcr` varchar(255) DEFAULT NULL COMMENT '对外交流与合作谈判内容未经保密审查的扣发标准',
  `zlwjsp` varchar(255) DEFAULT NULL COMMENT '对外提供涉密文件资料和物品未经审批的扣发标准',
  `kdcgfw` varchar(255) DEFAULT NULL COMMENT '擅自扩大参观范围的扣发标准',
  `ayzc` varchar(255) DEFAULT NULL COMMENT '部门为按月进行自查的扣发标准',
  `qkbss` varchar(255) DEFAULT NULL COMMENT '部门季度考核、部门月度自查 情况不属实的扣发标准',
  `cssmhd` varchar(255) DEFAULT NULL COMMENT '未经批准，使用未经保密审查人员从事涉密工作的扣发标准',
  `username` varchar(50) DEFAULT NULL COMMENT '处理人姓名',
  `userid` int(11) DEFAULT NULL COMMENT '处理人id',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='本部保密补贴考核扣发标准';

#
# Dumping data for table s_detainstandard_tab
#

LOCK TABLES `s_detainstandard_tab` WRITE;
/*!40000 ALTER TABLE `s_detainstandard_tab` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_detainstandard_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table s_divulgesecret_tab
#

DROP TABLE IF EXISTS `s_divulgesecret_tab`;
CREATE TABLE `s_divulgesecret_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `deptname` varchar(50) DEFAULT NULL COMMENT '填报部门或单位',
  `deptid` int(11) DEFAULT NULL COMMENT '填报部门或单位id',
  `finddate` datetime DEFAULT NULL COMMENT '发现时间',
  `findplace` varchar(100) DEFAULT NULL COMMENT '发现地点',
  `finder` varchar(50) DEFAULT NULL COMMENT '发现人姓名',
  `finderposition` varchar(50) DEFAULT NULL COMMENT '发现人职务',
  `briefproc` varchar(400) DEFAULT NULL COMMENT '简要过程',
  `party` varchar(50) DEFAULT NULL COMMENT '当事人姓名',
  `partyposition` varchar(50) DEFAULT NULL COMMENT '职务',
  `happendate` datetime DEFAULT NULL COMMENT '发生时间',
  `happenplace` varchar(100) DEFAULT NULL COMMENT '发生地点',
  `divulgetype` varchar(50) DEFAULT NULL COMMENT '泄密方式',
  `divulgesec` varchar(50) DEFAULT NULL COMMENT '泄密密级',
  `briefcondition` varchar(400) DEFAULT NULL COMMENT '简要情况',
  `harm` varchar(400) DEFAULT NULL COMMENT '造成或可能造成的危害',
  `workcondition` varchar(400) DEFAULT NULL COMMENT '已进行的查找工作情况',
  `measures` varchar(400) DEFAULT NULL COMMENT '已采取或拟采取的补救措施',
  `deptopinion` varchar(400) DEFAULT NULL COMMENT '部门或单位意见',
  `deptleadersign` varchar(50) DEFAULT NULL COMMENT '部门或单位领导签字',
  `deptleaderid` int(11) DEFAULT NULL COMMENT '部门或单位领导id',
  `leadersigndate` datetime DEFAULT NULL COMMENT '部门或单位领导签字日期',
  `sofficedesc` varchar(400) DEFAULT NULL COMMENT '院保密委员会意见',
  `sofficesign` varchar(50) DEFAULT NULL COMMENT '院保密委员会签字',
  `sofficeid` int(11) DEFAULT NULL COMMENT '院保密委员会签字人id',
  `sofficedate` date DEFAULT NULL COMMENT '院保密委员会签字日期',
  `username` varchar(50) DEFAULT NULL COMMENT '处理人姓名',
  `userid` int(11) DEFAULT NULL COMMENT '处理人id',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='泄密事件报告登记表';

#
# Dumping data for table s_divulgesecret_tab
#

LOCK TABLES `s_divulgesecret_tab` WRITE;
/*!40000 ALTER TABLE `s_divulgesecret_tab` DISABLE KEYS */;
INSERT INTO `s_divulgesecret_tab` VALUES (1,1,'adsa',NULL,'2016-05-20 17:55:20','ad','asd','asd','asd','asd','ads','2016-05-20 17:55:26','ad','ad','145','ads','ad','asd','ad','ad','5',NULL,'2016-05-20 17:55:37','ad','5',NULL,'2016-05-20','admin',2275);
/*!40000 ALTER TABLE `s_divulgesecret_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table s_employ_qualification_tab
#

DROP TABLE IF EXISTS `s_employ_qualification_tab`;
CREATE TABLE `s_employ_qualification_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `ename` varchar(50) DEFAULT NULL COMMENT '姓名',
  `fname` varchar(50) DEFAULT NULL COMMENT '曾用名',
  `national` varchar(50) DEFAULT NULL COMMENT '民族',
  `sex` int(11) DEFAULT NULL COMMENT '性别 0/1女/男',
  `image` varchar(100) DEFAULT NULL COMMENT '照片',
  `brithday` date DEFAULT NULL COMMENT '出生年月日',
  `location` varchar(255) DEFAULT NULL COMMENT '籍贯',
  `politicsstatus` varchar(50) DEFAULT NULL COMMENT '政治面貌',
  `education` varchar(50) DEFAULT NULL COMMENT '文化程度',
  `professional` varchar(50) DEFAULT NULL COMMENT '技术专业',
  `title` varchar(100) DEFAULT NULL COMMENT '技术职称',
  `language` varchar(100) DEFAULT NULL COMMENT '掌握语言',
  `abroadcountries` varchar(100) DEFAULT NULL COMMENT '留学国家',
  `studytime` date DEFAULT NULL COMMENT '留学时间',
  `studyway` varchar(200) DEFAULT NULL COMMENT '留学方式',
  `cardnum` varchar(255) DEFAULT NULL COMMENT '身份证号',
  `policestation` varchar(255) DEFAULT NULL COMMENT '户籍派出所',
  `passportno` varchar(255) DEFAULT NULL COMMENT '因私护照号/通行证号',
  `address` varchar(255) DEFAULT NULL COMMENT '现家庭住址',
  `zipcode` varchar(255) DEFAULT NULL COMMENT '邮编',
  `ouname` varchar(255) DEFAULT NULL COMMENT '原学习/工作单位名称',
  `oposition` varchar(100) DEFAULT NULL COMMENT '原岗位名称',
  `classification` varchar(20) DEFAULT NULL COMMENT '原岗位密级',
  `newunit` varchar(100) DEFAULT NULL COMMENT '拟进入单位/部门及处室',
  `newposition` varchar(100) DEFAULT NULL COMMENT '岗位名称',
  `newclassification` varchar(20) DEFAULT NULL COMMENT '岗位密级',
  `democratic` varchar(255) DEFAULT NULL COMMENT '聘用前参加何种民治党派或社会团体',
  `Disciplinary` varchar(255) DEFAULT NULL COMMENT '聘用前有无受过任何处分',
  `otherdesc` varchar(400) DEFAULT NULL COMMENT '其他需说明的情况',
  `signtime` date DEFAULT NULL COMMENT '本人签字日期',
  `signname` varchar(50) DEFAULT NULL COMMENT '本人签字',
  `ptype` varchar(20) DEFAULT NULL COMMENT '人员类型 1/2非涉密人员/涉密人员',
  `offthickstarttime` date DEFAULT NULL COMMENT '脱密开始日期',
  `offthickendtime` date DEFAULT NULL COMMENT '脱密截止日期',
  `ounitdesc` varchar(400) DEFAULT NULL COMMENT '原单位意见',
  `ounitsign` varchar(50) DEFAULT NULL COMMENT '原单位签字',
  `ounitid` int(11) DEFAULT NULL COMMENT '原单位id',
  `ounitsigndate` date DEFAULT NULL COMMENT '原单位签字日期',
  `departmentopinion` varchar(400) DEFAULT NULL COMMENT '院/公司人力资源部审查意见',
  `departmentsign` varchar(50) DEFAULT NULL COMMENT '院/公司人力资源部签字',
  `departsigndate` date DEFAULT NULL COMMENT '院/公司人力资源部签字日期',
  `departid` int(11) DEFAULT NULL COMMENT '院/公司人力资源部id',
  `sofficedesc` varchar(400) DEFAULT NULL COMMENT '院/公司保密委员会办公室审查意见',
  `sofficesign` varchar(50) DEFAULT NULL COMMENT '院/公司保密委员会办公室签字',
  `sofficesigndate` date DEFAULT NULL COMMENT '院/公司保密委员会办公室签字日期',
  `sofficeid` int(11) DEFAULT NULL COMMENT '院/公司保密委员会办公室id',
  `scomdesc` varchar(400) DEFAULT NULL COMMENT '院/公司保密委员会审批意见',
  `scomsign` varchar(50) DEFAULT NULL COMMENT '院/公司保密委员会签字',
  `scomid` int(11) DEFAULT NULL COMMENT '院/公司保密委员会id',
  `scomdate` date DEFAULT NULL COMMENT '院/公司保密委员会签字日期',
  `username` varchar(50) DEFAULT NULL COMMENT '处理人姓名',
  `userid` int(11) DEFAULT NULL COMMENT '处理人id',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='涉密岗位聘用人员保密资格审查表';

#
# Dumping data for table s_employ_qualification_tab
#

LOCK TABLES `s_employ_qualification_tab` WRITE;
/*!40000 ALTER TABLE `s_employ_qualification_tab` DISABLE KEYS */;
INSERT INTO `s_employ_qualification_tab` VALUES (1,0,'1','1','1',45,NULL,'2016-05-03','1','1','1','','','','','2016-05-02','','','','',NULL,'','','','13','','','13','','','','2016-05-27','6','53','2016-05-10','2016-05-31',NULL,'6',NULL,'2016-05-27','','6','2016-05-27',NULL,NULL,'6','2016-05-27',NULL,NULL,'6',NULL,'2016-05-27','管理员',2275);
/*!40000 ALTER TABLE `s_employ_qualification_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table s_empseccheck_tab
#

DROP TABLE IF EXISTS `s_empseccheck_tab`;
CREATE TABLE `s_empseccheck_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `confidentiality` varchar(255) DEFAULT NULL COMMENT '保密责任自查情况',
  `education` varchar(255) DEFAULT NULL COMMENT '保密教育自查情况',
  `setpwd` varchar(255) DEFAULT NULL COMMENT '设置计算机用户口令自查情况',
  `maintenance` varchar(255) DEFAULT NULL COMMENT '计算机及存储介质维护自查情况',
  `atinternet` varchar(255) DEFAULT NULL COMMENT '接入国际互联网自查情况',
  `cymj` varchar(255) DEFAULT NULL COMMENT '超越密级使用自查情况',
  `classifiedsecret` varchar(255) DEFAULT NULL COMMENT '涉密文档标密自查情况',
  `matnternet` varchar(255) DEFAULT NULL COMMENT '涉密介质接入互联网自查情况',
  `savepwdark` varchar(255) DEFAULT NULL COMMENT '密码文件柜存入自查情况',
  `perprocedure` varchar(255) DEFAULT NULL COMMENT '审批手续履行自查情况',
  `onlineregist` varchar(255) DEFAULT NULL COMMENT '上网登记自查情况',
  `handleaffairs` varchar(255) DEFAULT NULL COMMENT '涉密信息或办公事务处理自查情况',
  `smedia` varchar(255) DEFAULT NULL COMMENT '下载信息是否使用互联网专用介质自查情况',
  `inforpublish` varchar(255) DEFAULT NULL COMMENT '涉密信息或单位未公开信息发布自查情况',
  `timelyrepel` varchar(255) DEFAULT NULL COMMENT '及时清退自查情况',
  `ttbcsd` varchar(255) DEFAULT NULL COMMENT '执行收发、传递、借阅、复制、存放、销毁自查情况',
  `rsd` varchar(255) DEFAULT NULL COMMENT '涉密文件资料登记、存放、销毁自查情况',
  `recordtz` varchar(255) DEFAULT NULL COMMENT '履行登记审批手续、台账备案自查情况',
  `kconfidentiality` varchar(255) DEFAULT NULL COMMENT '保管保密本使用自查情况',
  `phandleaffairs` varchar(255) DEFAULT NULL COMMENT '家用计算机及存储介质处理涉密信息及办公事务自查情况',
  `pconmedium` varchar(255) DEFAULT NULL COMMENT '家用计算机连接单位存储介质自查情况',
  `pclassified` varchar(255) DEFAULT NULL COMMENT '个人家中是否有涉密载体自查情况',
  `ransforieinfor` varchar(255) DEFAULT NULL COMMENT '审查审批内外网信息转换自查情况',
  `abroad` varchar(255) DEFAULT NULL COMMENT '出国审批手续自查情况',
  `cleartable` varchar(255) DEFAULT NULL COMMENT '清桌锁柜自查情况',
  `otherinfor` varchar(400) DEFAULT NULL COMMENT '需要向组织汇报的其他情况',
  `rectification` varchar(400) DEFAULT NULL COMMENT '对自查发现问题的整改情况',
  `cdate` datetime DEFAULT NULL COMMENT '自查时间',
  `cname` varchar(50) DEFAULT NULL COMMENT '本人签名',
  `cid` int(11) DEFAULT NULL COMMENT '本人id',
  `username` varchar(50) DEFAULT NULL COMMENT '处理人姓名',
  `userid` int(11) DEFAULT NULL COMMENT '处理人id',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='员工保密工作自查表';

#
# Dumping data for table s_empseccheck_tab
#

LOCK TABLES `s_empseccheck_tab` WRITE;
/*!40000 ALTER TABLE `s_empseccheck_tab` DISABLE KEYS */;
INSERT INTO `s_empseccheck_tab` VALUES (1,1,'撒的发','答复','当存在','都是反复感染','撒的发','自行车','注册','as','vfvw','阿达','是','阿萨德','阿萨德','爱谁谁','现场','谁的','去玩儿','日期污染','暗示法若干','大师傅','的撒','个人个人','大学','热情高清','阿萨德','如果我二哥','让他更稳固','2016-05-23 15:51:53','5',NULL,'admin',2275);
/*!40000 ALTER TABLE `s_empseccheck_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table s_estoragemedium_tab
#

DROP TABLE IF EXISTS `s_estoragemedium_tab`;
CREATE TABLE `s_estoragemedium_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `mcode` varchar(100) DEFAULT NULL COMMENT '编号',
  `applydate` datetime DEFAULT NULL COMMENT '申请日期',
  `orgname` varchar(255) DEFAULT NULL COMMENT '申请部门',
  `orgid` varchar(50) DEFAULT NULL COMMENT '部门id',
  `depository` varchar(50) DEFAULT NULL COMMENT '保管人',
  `depositoryid` int(11) DEFAULT NULL COMMENT '保管人id',
  `sign` varchar(50) DEFAULT NULL COMMENT '责任人签字',
  `signid` int(11) DEFAULT NULL COMMENT '责任人id',
  `signdate` datetime DEFAULT NULL COMMENT '签字日期',
  `departmentdesc` varchar(400) DEFAULT NULL COMMENT '部门领导意见',
  `officedesc` varchar(400) DEFAULT NULL COMMENT '保密委员会办公室意见',
  `username` varchar(50) DEFAULT NULL COMMENT '处理人姓名',
  `userid` int(11) DEFAULT NULL COMMENT '处理人id',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='存储介质配备审批表';

#
# Dumping data for table s_estoragemedium_tab
#

LOCK TABLES `s_estoragemedium_tab` WRITE;
/*!40000 ALTER TABLE `s_estoragemedium_tab` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_estoragemedium_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table s_exam_classification_tab
#

DROP TABLE IF EXISTS `s_exam_classification_tab`;
CREATE TABLE `s_exam_classification_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `ecname` varchar(50) DEFAULT NULL COMMENT '姓名',
  `sex` int(4) DEFAULT NULL COMMENT '性别',
  `age` int(4) DEFAULT NULL COMMENT '年龄',
  `oriname` varchar(100) DEFAULT NULL COMMENT '所在部门',
  `orgid` varchar(50) DEFAULT NULL COMMENT '部门id',
  `position` varchar(100) DEFAULT NULL COMMENT '岗位名称',
  `oposition` varchar(100) DEFAULT NULL COMMENT '原岗位名称',
  `oclassification` varchar(20) DEFAULT NULL COMMENT '原岗位密级',
  `optype` int(11) DEFAULT NULL COMMENT '所属部门领导意见',
  `leadershipsign` varchar(50) DEFAULT NULL COMMENT '所属部门领导签字',
  `leaderid` int(11) DEFAULT NULL COMMENT '部门领导id',
  `leadersigndate` date DEFAULT NULL COMMENT '部门领导签字日期',
  `dptype` int(11) DEFAULT NULL COMMENT '人力资源部审核意见',
  `departmentsign` varchar(50) DEFAULT NULL COMMENT '人力资源部签字',
  `departmentid` int(11) DEFAULT NULL COMMENT '人力资源部id',
  `departmentdate` date DEFAULT NULL COMMENT '人力资源部签字日期',
  `sptype` int(11) DEFAULT NULL COMMENT '保密委员会办公室审核意见',
  `sofficesign` varchar(50) DEFAULT NULL COMMENT '保密委员会办公室签字',
  `sofficesigndate` date DEFAULT NULL COMMENT '保密委员会办公室签字日期',
  `sofficeid` int(11) DEFAULT NULL COMMENT '保密委员会办公室id',
  `scptype` int(11) DEFAULT NULL COMMENT '保密委员会审定意见',
  `scomsign` varchar(50) DEFAULT NULL COMMENT '保密委员会签字',
  `scomsigndate` date DEFAULT NULL COMMENT '保密委员会签字日期',
  `scomid` int(11) DEFAULT NULL COMMENT '保密委员会id',
  `username` varchar(50) DEFAULT NULL COMMENT '处理人姓名',
  `userid` int(11) DEFAULT NULL COMMENT '处理人id',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='涉密人员密级审定表';

#
# Dumping data for table s_exam_classification_tab
#

LOCK TABLES `s_exam_classification_tab` WRITE;
/*!40000 ALTER TABLE `s_exam_classification_tab` DISABLE KEYS */;
INSERT INTO `s_exam_classification_tab` VALUES (1,NULL,'七千',46,23,'保密',NULL,'都是','','',88,'6',NULL,NULL,89,'5',NULL,NULL,90,'6',NULL,NULL,88,'5',NULL,NULL,NULL,NULL);
INSERT INTO `s_exam_classification_tab` VALUES (2,0,'aa',46,23,'保密2',NULL,'sss','dd','地段',88,'6',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `s_exam_classification_tab` VALUES (5,NULL,'44',46,33,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `s_exam_classification_tab` VALUES (10,0,'drff',46,22,'ww',NULL,'11','22','22',NULL,NULL,NULL,'2016-05-19',NULL,NULL,NULL,'2016-05-19',NULL,NULL,'2016-05-19',NULL,NULL,NULL,'2016-05-19',NULL,'管理员',2275);
INSERT INTO `s_exam_classification_tab` VALUES (11,0,'外围',45,12,'ee',NULL,'ee','ee','ee',NULL,NULL,NULL,'2016-05-19',NULL,NULL,NULL,'2016-05-19',NULL,NULL,'2016-05-19',NULL,NULL,NULL,'2016-05-19',NULL,'管理员',2275);
INSERT INTO `s_exam_classification_tab` VALUES (12,0,'99',45,44,'99',NULL,'99','99','99',NULL,NULL,NULL,'2016-05-20',NULL,NULL,NULL,'2016-05-20',NULL,NULL,'2016-05-20',NULL,NULL,NULL,'2016-05-20',NULL,'管理员',2275);
/*!40000 ALTER TABLE `s_exam_classification_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table s_filmingactivity_tab
#

DROP TABLE IF EXISTS `s_filmingactivity_tab`;
CREATE TABLE `s_filmingactivity_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `orgname` varchar(100) DEFAULT NULL COMMENT '承办部门',
  `orgid` varchar(50) DEFAULT NULL COMMENT '部门id',
  `shead` varchar(50) DEFAULT NULL COMMENT '本次活动保密负责人',
  `purpose` varchar(400) DEFAULT NULL COMMENT '拍摄目的',
  `shootrange` varchar(200) DEFAULT NULL COMMENT '拍摄范围',
  `shootdate` datetime DEFAULT NULL COMMENT '拍摄时间',
  `isclassification` int(1) DEFAULT NULL COMMENT '拍摄内容是否涉密 0/1否/是',
  `classification` varchar(20) DEFAULT NULL COMMENT '涉密等级',
  `cameras` varchar(50) DEFAULT NULL COMMENT '负责拍摄人员',
  `monitors` varchar(50) DEFAULT NULL COMMENT '承办部门监督人员',
  `trackrecord` varchar(800) DEFAULT NULL COMMENT '保密委员会办公室跟踪情况记录',
  `depdesc` varchar(400) DEFAULT NULL COMMENT '承办部门意见',
  `depsign` varchar(50) DEFAULT NULL COMMENT '承办部门签字',
  `depid` int(11) DEFAULT NULL COMMENT '承办部门签字人id',
  `depdate` datetime DEFAULT NULL COMMENT '承办签字日期',
  `partdesc` varchar(400) DEFAULT NULL COMMENT '保密要害部门、部位所在部门意见',
  `partsign` varchar(255) DEFAULT NULL COMMENT '保密要害部门部位所在部门签字',
  `partid` int(11) DEFAULT NULL COMMENT '保密要害部门部位所在部门签字人id',
  `partdate` datetime DEFAULT NULL COMMENT '保密要害部门部位所在部门签字日期',
  `officedesc` varchar(400) DEFAULT NULL COMMENT '保密委员会办公室意见',
  `officesign` varchar(50) DEFAULT NULL COMMENT '保密委员会办公室签字',
  `officeid` int(11) DEFAULT NULL COMMENT '保密委员会办公室签字人id',
  `officedate` datetime DEFAULT NULL COMMENT '保密委员会办公室签字日期',
  `scomdesc` varchar(400) DEFAULT NULL COMMENT '院保密委员会意见',
  `scomsign` varchar(50) DEFAULT NULL COMMENT '院保密委员会签字',
  `scomid` int(11) DEFAULT NULL COMMENT '院保密委员会签字人id',
  `scomdate` datetime DEFAULT NULL COMMENT '院保密委员会签字日期',
  `username` varchar(50) DEFAULT NULL COMMENT '处理人姓名',
  `userid` int(11) DEFAULT NULL COMMENT '处理人id',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='本部拍摄活动审批表';

#
# Dumping data for table s_filmingactivity_tab
#

LOCK TABLES `s_filmingactivity_tab` WRITE;
/*!40000 ALTER TABLE `s_filmingactivity_tab` DISABLE KEYS */;
INSERT INTO `s_filmingactivity_tab` VALUES (1,1,'大师傅','','爱的是非常','自行车','发斯蒂芬','2016-05-19 14:29:27',132,'145','大师傅','阿斯顿发出','撒的发v','阿斯顿发','5',NULL,NULL,'阿斯顿发','5',NULL,NULL,'大师傅','6',NULL,NULL,'沟通过','6',NULL,NULL,'admin',2275);
/*!40000 ALTER TABLE `s_filmingactivity_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table s_foreignersvisit_tab
#

DROP TABLE IF EXISTS `s_foreignersvisit_tab`;
CREATE TABLE `s_foreignersvisit_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `orgname` varchar(100) DEFAULT NULL COMMENT '承办部门',
  `orgid` varchar(50) DEFAULT NULL COMMENT '部门id',
  `shead` varchar(50) DEFAULT NULL COMMENT '本次活动保密负责人',
  `purpose` varchar(400) DEFAULT NULL COMMENT '参观目的及参观内容',
  `personarea` varchar(255) DEFAULT NULL COMMENT '参观人员范围',
  `location` varchar(255) DEFAULT NULL COMMENT '参观位置',
  `vdate` datetime DEFAULT NULL COMMENT '参观时间',
  `isshoot` int(1) DEFAULT NULL COMMENT '是否进行拍照、摄录 0/1否/是',
  `confidentiality` varchar(800) DEFAULT NULL COMMENT '保密负责人职责',
  `depdesc` varchar(400) DEFAULT NULL COMMENT '承办部门意见',
  `depsign` varchar(50) DEFAULT NULL COMMENT '承办部门签字',
  `depid` int(11) DEFAULT NULL COMMENT '承办部门签字人id',
  `depdate` datetime DEFAULT NULL COMMENT '承办部门签字日期',
  `officedesc` varchar(400) DEFAULT NULL COMMENT '保密委员会办公室意见',
  `officesign` varchar(50) DEFAULT NULL COMMENT '保密委员会办公室签字',
  `officeid` int(11) DEFAULT NULL COMMENT '保密委员会办公室签字人id',
  `officedate` datetime DEFAULT NULL COMMENT '保密委员会办公室签字日期',
  `username` varchar(50) DEFAULT NULL COMMENT '处理人姓名',
  `userid` int(11) DEFAULT NULL COMMENT '处理人id',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='本部外来人员参观审批表';

#
# Dumping data for table s_foreignersvisit_tab
#

LOCK TABLES `s_foreignersvisit_tab` WRITE;
/*!40000 ALTER TABLE `s_foreignersvisit_tab` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_foreignersvisit_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table s_foreignguests_tab
#

DROP TABLE IF EXISTS `s_foreignguests_tab`;
CREATE TABLE `s_foreignguests_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `tid` int(11) DEFAULT NULL COMMENT '临时来华人员登记表id',
  `fname` varchar(50) DEFAULT NULL COMMENT '外宾姓名',
  `translate` varchar(50) DEFAULT NULL COMMENT '译名',
  `position` varchar(50) DEFAULT NULL COMMENT '服务部门职务职称',
  `nationality` varchar(50) DEFAULT NULL COMMENT '国籍',
  `passportno` varchar(50) DEFAULT NULL COMMENT '护照号码',
  `receiver` varchar(50) DEFAULT NULL COMMENT '接待人姓名',
  `duties` varchar(50) DEFAULT NULL COMMENT '职务职称',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='外宾人员明细表';

#
# Dumping data for table s_foreignguests_tab
#

LOCK TABLES `s_foreignguests_tab` WRITE;
/*!40000 ALTER TABLE `s_foreignguests_tab` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_foreignguests_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table s_foreignguestsinfo_tab
#

DROP TABLE IF EXISTS `s_foreignguestsinfo_tab`;
CREATE TABLE `s_foreignguestsinfo_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `oaid` int(11) DEFAULT NULL COMMENT '航天科技集团公司企事业单位科研生产部位一次性对外开放申报表id',
  `cname` varchar(50) DEFAULT NULL COMMENT '姓名（中文）',
  `ename` varchar(50) DEFAULT NULL COMMENT '姓名（英文）',
  `nationality` varchar(50) DEFAULT NULL COMMENT '国籍',
  `passportno` varchar(50) DEFAULT NULL COMMENT '护照号码',
  `duties` varchar(50) DEFAULT NULL COMMENT '单位、职务/职称',
  `comenum` int(11) DEFAULT NULL COMMENT '来访次数',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='外宾简况表';

#
# Dumping data for table s_foreignguestsinfo_tab
#

LOCK TABLES `s_foreignguestsinfo_tab` WRITE;
/*!40000 ALTER TABLE `s_foreignguestsinfo_tab` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_foreignguestsinfo_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table s_getmediuminfo_tab
#

DROP TABLE IF EXISTS `s_getmediuminfo_tab`;
CREATE TABLE `s_getmediuminfo_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `eid` int(11) DEFAULT NULL COMMENT '存储介质配备审批表',
  `rmediumtype` int(11) DEFAULT NULL COMMENT '领用存储介质类别',
  `rspecifications` varchar(255) DEFAULT NULL COMMENT '领用存储介质规格',
  `rscode` varchar(100) DEFAULT NULL COMMENT '领用存储介质保密编号',
  `productcode` varchar(100) DEFAULT NULL COMMENT '产品序列号',
  `rcerttype` int(11) DEFAULT NULL COMMENT '领用存储介质认证类别',
  `rcerrange` varchar(255) DEFAULT NULL COMMENT '领用存储介质认证范围',
  `rsign` varchar(50) DEFAULT NULL COMMENT '领取人签字',
  `rid` int(11) DEFAULT NULL COMMENT '领取人id',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='领取存储介质明细表';

#
# Dumping data for table s_getmediuminfo_tab
#

LOCK TABLES `s_getmediuminfo_tab` WRITE;
/*!40000 ALTER TABLE `s_getmediuminfo_tab` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_getmediuminfo_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table s_interview_tab
#

DROP TABLE IF EXISTS `s_interview_tab`;
CREATE TABLE `s_interview_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `interviewer` varchar(50) DEFAULT NULL COMMENT '采访人',
  `dept` varchar(50) DEFAULT NULL COMMENT '受访人所在部门',
  `contentscope` varchar(100) DEFAULT NULL COMMENT '受访内容范围',
  `interviewdate` datetime DEFAULT NULL COMMENT '受访时间',
  `interviewee` varchar(50) DEFAULT NULL COMMENT '受访人',
  `interdept` varchar(50) DEFAULT NULL COMMENT '采访人单位',
  `purpose` varchar(400) DEFAULT NULL COMMENT '采访目的',
  `sfdeptopinion` varchar(400) DEFAULT NULL COMMENT '受访人所在部门意见',
  `sfsign` varchar(50) DEFAULT NULL COMMENT '受访人部门签字',
  `sfsignid` int(11) DEFAULT NULL COMMENT '受访人部门签字人id',
  `sfsigndate` datetime DEFAULT NULL COMMENT '受访人部门签字日期',
  `sofficedesc` varchar(400) DEFAULT NULL COMMENT '保密委员会办公室意见',
  `sofficesign` varchar(50) DEFAULT NULL COMMENT '保密委员会办公室签字',
  `sofficeid` int(11) DEFAULT NULL COMMENT '保密委员会办公室签字人id',
  `sofficedate` date DEFAULT NULL COMMENT '保密委员会办公室签字日期',
  `ysofficedesc` varchar(400) DEFAULT NULL COMMENT '院保密委员会意见',
  `ysofficesign` varchar(50) DEFAULT NULL COMMENT '院保密委员会签字',
  `ysofficeid` int(11) DEFAULT NULL COMMENT '院保密委员会签字人id',
  `ysofficedate` date DEFAULT NULL COMMENT '院保密委员会签字日期',
  `username` varchar(50) DEFAULT NULL COMMENT '处理人姓名',
  `userid` int(11) DEFAULT NULL COMMENT '处理人id',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='本部接受采访审批表';

#
# Dumping data for table s_interview_tab
#

LOCK TABLES `s_interview_tab` WRITE;
/*!40000 ALTER TABLE `s_interview_tab` DISABLE KEYS */;
INSERT INTO `s_interview_tab` VALUES (1,1,'打发','阿斯顿发','暗室逢灯','2016-05-19 15:21:16','阿斯顿发','操作','安防','安防','5',NULL,NULL,'放到放弃而','6',NULL,NULL,'大师傅','6',NULL,NULL,'admin',2275);
/*!40000 ALTER TABLE `s_interview_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table s_keypartexam_tab
#

DROP TABLE IF EXISTS `s_keypartexam_tab`;
CREATE TABLE `s_keypartexam_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `notification` varchar(255) DEFAULT NULL COMMENT '申报单位',
  `nid` int(11) DEFAULT NULL COMMENT '申报单位id',
  `partname` varchar(255) DEFAULT NULL COMMENT '申报部门、部位名称',
  `parthead` varchar(50) DEFAULT NULL COMMENT '部门、部位负责人',
  `totalstaff` int(11) DEFAULT NULL COMMENT '涉密人员总数',
  `partlocation` varchar(255) DEFAULT NULL COMMENT '部门、部位所处位置',
  `declarationreason` varchar(400) DEFAULT NULL COMMENT '申报理由',
  `apmeasures` varchar(400) DEFAULT NULL COMMENT '人工防护措施',
  `ppmeasures` varchar(400) DEFAULT NULL COMMENT '物理防护措施',
  `tpmeasures` varchar(400) DEFAULT NULL COMMENT '技术防护措施',
  `uscomdesc` varchar(400) DEFAULT NULL COMMENT '申报单位保密委员会审查意见',
  `yscomdesc` varchar(400) DEFAULT NULL COMMENT '院保密委员会审定意见',
  `uscomdate` datetime DEFAULT NULL COMMENT '申报单位保密委员会审查日期',
  `yscomdate` datetime DEFAULT NULL COMMENT '院保密委员会审定日期',
  `username` varchar(50) DEFAULT NULL COMMENT '处理人姓名',
  `userid` int(11) DEFAULT NULL COMMENT '处理人id',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='保密要害部门、部位审定表';

#
# Dumping data for table s_keypartexam_tab
#

LOCK TABLES `s_keypartexam_tab` WRITE;
/*!40000 ALTER TABLE `s_keypartexam_tab` DISABLE KEYS */;
INSERT INTO `s_keypartexam_tab` VALUES (1,NULL,'dd',NULL,'sswww','ssswww',222,'wwwwqqq','wwq','ww','ww','ww','dd','ff',NULL,NULL,'管理员',2275);
/*!40000 ALTER TABLE `s_keypartexam_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table s_keypartundo_tab
#

DROP TABLE IF EXISTS `s_keypartundo_tab`;
CREATE TABLE `s_keypartundo_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `notification` varchar(255) DEFAULT NULL COMMENT '申报单位',
  `nid` int(11) DEFAULT NULL COMMENT '申报单位id',
  `partname` varchar(255) DEFAULT NULL COMMENT '部门、部位名称',
  `parthead` varchar(50) DEFAULT NULL COMMENT '部门、部位负责人',
  `totalstaff` int(11) DEFAULT NULL COMMENT '涉密人员总数',
  `partlocation` varchar(255) DEFAULT NULL COMMENT '部门、部位地理位置',
  `naturereason` varchar(400) DEFAULT NULL COMMENT '原确定性质及理由',
  `undoreason` varchar(400) DEFAULT NULL COMMENT '撤销理由',
  `uscomdesc` varchar(400) DEFAULT NULL COMMENT '申报单位保密委员会意见',
  `uscomdate` datetime DEFAULT NULL COMMENT '申报单位保密委员会意见填写日期',
  `yscomdesc` varchar(400) DEFAULT NULL COMMENT '院保密委员会意见',
  `yscomdate` datetime DEFAULT NULL COMMENT '院保密委员会意见填写日期',
  `username` varchar(50) DEFAULT NULL COMMENT '处理人姓名',
  `userid` int(11) DEFAULT NULL COMMENT '处理人id',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='保密要害部门、部位撤销表';

#
# Dumping data for table s_keypartundo_tab
#

LOCK TABLES `s_keypartundo_tab` WRITE;
/*!40000 ALTER TABLE `s_keypartundo_tab` DISABLE KEYS */;
INSERT INTO `s_keypartundo_tab` VALUES (3,0,'aa1',NULL,'aa1','aa1',111,'aa1','aa1','aa1','aa1','2016-05-16 17:06:55','aa1','2016-05-16 17:06:55','管理员',2275);
/*!40000 ALTER TABLE `s_keypartundo_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table s_leavepromise_tab
#

DROP TABLE IF EXISTS `s_leavepromise_tab`;
CREATE TABLE `s_leavepromise_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `lname` varchar(50) DEFAULT NULL COMMENT '姓名',
  `pname` varchar(255) DEFAULT NULL COMMENT '岗位名称',
  `pclassification` int(11) DEFAULT NULL COMMENT '岗位密级',
  `tstartdate` datetime DEFAULT NULL COMMENT '脱密期起始管理日期',
  `tenddate` datetime DEFAULT NULL COMMENT '脱密期截止管理日期',
  `card` varchar(100) DEFAULT NULL COMMENT '身份证号码',
  `adrress` varchar(255) DEFAULT NULL COMMENT '承诺人现住址',
  `pcompany` varchar(255) DEFAULT NULL COMMENT '承诺人调往单位',
  `cellphone` varchar(100) DEFAULT NULL COMMENT '联系方式',
  `lpname` varchar(50) DEFAULT NULL COMMENT '承诺人签名',
  `lpid` int(11) DEFAULT NULL COMMENT '承诺人id',
  `pdate` datetime DEFAULT NULL COMMENT '签订日期',
  `username` varchar(50) DEFAULT NULL COMMENT '处理人姓名',
  `userid` int(11) DEFAULT NULL COMMENT '处理人id',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='离岗保密承诺书';

#
# Dumping data for table s_leavepromise_tab
#

LOCK TABLES `s_leavepromise_tab` WRITE;
/*!40000 ALTER TABLE `s_leavepromise_tab` DISABLE KEYS */;
INSERT INTO `s_leavepromise_tab` VALUES (1,NULL,'aa11','aa',13,'2016-05-03','2016-05-13','130133198706232718','aq','a','1','5',NULL,NULL,'管理员',2275);
INSERT INTO `s_leavepromise_tab` VALUES (4,0,'dd','dd',14,'2016-05-05','2016-06-02','130133198706232718','d','1','1','5',NULL,'2016-05-13 11:42:31','管理员',2275);
/*!40000 ALTER TABLE `s_leavepromise_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table s_meetsecrecy_tab
#

DROP TABLE IF EXISTS `s_meetsecrecy_tab`;
CREATE TABLE `s_meetsecrecy_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `meetname` varchar(50) DEFAULT NULL COMMENT '会议名称',
  `orgid` varchar(50) DEFAULT NULL COMMENT '承办部门id',
  `orgname` varchar(100) DEFAULT NULL COMMENT '承办部门',
  `meetdate` datetime DEFAULT NULL COMMENT '会议时间',
  `classification` varchar(20) DEFAULT NULL COMMENT '密级',
  `meetplace` varchar(100) DEFAULT NULL COMMENT '会议地点',
  `bmname` varchar(50) DEFAULT NULL COMMENT '保密责任人',
  `meetcontent` varchar(400) DEFAULT NULL COMMENT '会议内容和参加人员范围',
  `cborgopinion` varchar(400) DEFAULT NULL COMMENT '承办部门意见',
  `cbleader` varchar(50) DEFAULT NULL COMMENT '承办部门领导签字',
  `cbleaderdate` datetime DEFAULT NULL COMMENT '承办部门领导签字日期',
  `cbleaderid` int(11) DEFAULT NULL COMMENT '承办部门领导id',
  `sofficedesc` varchar(400) DEFAULT NULL COMMENT '保密办公室审核意见',
  `sofficesign` varchar(50) DEFAULT NULL COMMENT '保密办公室签字',
  `sofficeid` int(11) DEFAULT NULL COMMENT '保密办公室id',
  `sofficedate` date DEFAULT NULL COMMENT '保密办公室审核日期',
  `yleaderopinion` varchar(400) DEFAULT NULL COMMENT '院主管领导审批',
  `yleader` varchar(50) DEFAULT NULL COMMENT '院主管领导签字',
  `yleaderid` int(11) DEFAULT NULL COMMENT '院主管领导id',
  `yleaderdate` datetime DEFAULT NULL COMMENT '院主管领导签字日期',
  `username` varchar(50) DEFAULT NULL COMMENT '处理人姓名',
  `userid` int(11) DEFAULT NULL COMMENT '处理人id',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='本部涉密会议保密管理审批表';

#
# Dumping data for table s_meetsecrecy_tab
#

LOCK TABLES `s_meetsecrecy_tab` WRITE;
/*!40000 ALTER TABLE `s_meetsecrecy_tab` DISABLE KEYS */;
INSERT INTO `s_meetsecrecy_tab` VALUES (1,1,'大师傅',NULL,'差','2016-05-19 17:00:59','150','大师傅','阿道夫','放到市场','大师傅','5, ',NULL,NULL,'仍会','6',NULL,NULL,'如果各位如果','5',NULL,NULL,'admin',2275);
/*!40000 ALTER TABLE `s_meetsecrecy_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table s_meetsecrecyrecord_tab
#

DROP TABLE IF EXISTS `s_meetsecrecyrecord_tab`;
CREATE TABLE `s_meetsecrecyrecord_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `meetname` varchar(50) DEFAULT NULL COMMENT '会议名称',
  `orgid` varchar(50) DEFAULT NULL COMMENT '承办部门id',
  `orgname` varchar(100) DEFAULT NULL COMMENT '承办部门',
  `meetdate` datetime DEFAULT NULL COMMENT '会议时间',
  `classification` varchar(20) DEFAULT NULL COMMENT '密级',
  `meetplace` varchar(100) DEFAULT NULL COMMENT '会议地点',
  `meetcontent` varchar(400) DEFAULT NULL COMMENT '会议内容',
  `meeters` varchar(100) DEFAULT NULL COMMENT '参会人员范围',
  `issecuritywork` int(1) DEFAULT NULL COMMENT '承办会议部门是否指定专人负责保密工作（0/1 否/是）',
  `sworkremark` varchar(200) DEFAULT NULL COMMENT '指定专人负责保密工作备注',
  `istelshield` int(1) DEFAULT NULL COMMENT '是否加装手机信号屏蔽器（0/1 否/是）',
  `telshieldremark` varchar(200) DEFAULT NULL COMMENT '加装手机信号屏蔽器备注',
  `isstoretel` int(1) DEFAULT NULL COMMENT '是否按要求存放手机（0/1 否/是）',
  `storetelremark` varchar(200) DEFAULT NULL COMMENT '存放手机备注',
  `scheck` int(1) DEFAULT NULL COMMENT '是否对会场进行保密检查',
  `scheckremark` varchar(200) DEFAULT NULL COMMENT '保密检查备注',
  `isdeclares` int(1) DEFAULT NULL COMMENT '是否宣布保密纪律（0/1 否/是）',
  `declareremark` varchar(200) DEFAULT NULL COMMENT '保密纪律备注',
  `issignin` int(1) DEFAULT NULL COMMENT '是否严格控制人员范围、要求签到（0/1 否/是）',
  `signinremark` varchar(200) DEFAULT NULL COMMENT '签到备注',
  `iswiffi` int(1) DEFAULT NULL COMMENT '是否带入具备无线上网功能设备（0/1 否/是）',
  `wiffiremark` varchar(200) DEFAULT NULL COMMENT '无线发射传输的设备的备注',
  `istape` int(1) DEFAULT NULL COMMENT '是否录音、录像情况',
  `taperemark` varchar(200) DEFAULT NULL COMMENT '录音、录像备注',
  `taper` varchar(50) DEFAULT NULL COMMENT '录音负责人',
  `videor` varchar(50) DEFAULT NULL COMMENT '录像负责人',
  `issecurityfile` int(1) DEFAULT NULL COMMENT '是否有涉密文件、资料，有是否办理签发登记手续，会后清退回收情况',
  `total` int(11) DEFAULT NULL COMMENT '文件共印份数',
  `giveout` int(11) DEFAULT NULL COMMENT '发放份数',
  `takeback` int(11) DEFAULT NULL COMMENT '收回份数',
  `takebacker` varchar(50) DEFAULT NULL COMMENT '回收保管负责人',
  `isguard` int(1) DEFAULT NULL COMMENT '休息期间是否指定专人看守和保密工作',
  `guardremark` varchar(200) DEFAULT NULL COMMENT '看守备注',
  `bmname` varchar(50) DEFAULT NULL COMMENT '保密责任人',
  `bmnameid` int(11) DEFAULT NULL COMMENT '保密负责人id',
  `bmsigndate` datetime DEFAULT NULL COMMENT '保密负责人签字日期',
  `sofficedesc` varchar(400) DEFAULT NULL COMMENT '保密委员会办公室审核意见',
  `sofficesign` varchar(50) DEFAULT NULL COMMENT '保密委员会办公室签字',
  `sofficeid` int(11) DEFAULT NULL COMMENT '保密委员会办公室id',
  `sofficedate` date DEFAULT NULL COMMENT '保密委员会办公室审核日期',
  `username` varchar(50) DEFAULT NULL COMMENT '处理人姓名',
  `userid` int(11) DEFAULT NULL COMMENT '处理人id',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='涉密会议保密方案执行情况记录表';

#
# Dumping data for table s_meetsecrecyrecord_tab
#

LOCK TABLES `s_meetsecrecyrecord_tab` WRITE;
/*!40000 ALTER TABLE `s_meetsecrecyrecord_tab` DISABLE KEYS */;
INSERT INTO `s_meetsecrecyrecord_tab` VALUES (1,1,'asd','','asda','2016-05-20 14:00:15','150','ac','ad','asd',34,'asd',35,'asd',34,'zxc',35,'asd',34,'aczx',34,'asd',35,'asd',34,'aczxc','asdq','ad',35,12,123,2,'3adsf1',35,'asd1','5',NULL,NULL,'asd1','5',NULL,NULL,'admin',2275);
/*!40000 ALTER TABLE `s_meetsecrecyrecord_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table s_migrantsio_tab
#

DROP TABLE IF EXISTS `s_migrantsio_tab`;
CREATE TABLE `s_migrantsio_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `aid` int(11) DEFAULT NULL COMMENT '外来人员进入保密要害部门、部位申请表id',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `jobs` varchar(255) DEFAULT NULL COMMENT '职务',
  `workunit` varchar(255) DEFAULT NULL COMMENT '单位',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='外来人员出入情况明细表';

#
# Dumping data for table s_migrantsio_tab
#

LOCK TABLES `s_migrantsio_tab` WRITE;
/*!40000 ALTER TABLE `s_migrantsio_tab` DISABLE KEYS */;
INSERT INTO `s_migrantsio_tab` VALUES (2,NULL,2,'1','1','1');
INSERT INTO `s_migrantsio_tab` VALUES (3,NULL,2,'2','2','2');
/*!40000 ALTER TABLE `s_migrantsio_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table s_openapply_tab
#

DROP TABLE IF EXISTS `s_openapply_tab`;
CREATE TABLE `s_openapply_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `deptname` varchar(50) DEFAULT NULL COMMENT '接待单位盖章',
  `deptid` int(11) DEFAULT NULL COMMENT '接待单位id',
  `formdate` datetime DEFAULT NULL COMMENT '填表日期',
  `teamname` varchar(50) DEFAULT NULL COMMENT '来访团组名称',
  `invitedept` varchar(50) DEFAULT NULL COMMENT '邀请单位',
  `purpose` varchar(200) DEFAULT NULL COMMENT '来访目的',
  `lfdate` datetime DEFAULT NULL COMMENT '来访时间',
  `linkman` varchar(50) DEFAULT NULL COMMENT '接待单位联系人',
  `linktel` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `cellphone` varchar(20) DEFAULT NULL COMMENT '手机',
  `cryptosecurity` varchar(400) DEFAULT NULL COMMENT '参观部位中不宜接触的产品、设备及拟采取的保密措施',
  `rewsopinion` varchar(400) DEFAULT NULL COMMENT '接待单位外事部门意见',
  `rebmopinion` varchar(400) DEFAULT NULL COMMENT '接待单位保密部门意见',
  `respopinion` varchar(400) DEFAULT NULL COMMENT '接待单位审批意见',
  `gswsopinion` varchar(400) DEFAULT NULL COMMENT '院、公司外事部门意见',
  `gsbmopinion` varchar(400) DEFAULT NULL COMMENT '院、公司保密部门意见',
  `gsspopinion` varchar(400) DEFAULT NULL COMMENT '院、公司审批意见',
  `groupcompany` varchar(400) DEFAULT NULL COMMENT '集团公司',
  `username` varchar(50) DEFAULT NULL COMMENT '处理人姓名',
  `userid` int(11) DEFAULT NULL COMMENT '处理人id',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='航天科技集团公司企事业单位科研生产部位一次性对外开放申报表';

#
# Dumping data for table s_openapply_tab
#

LOCK TABLES `s_openapply_tab` WRITE;
/*!40000 ALTER TABLE `s_openapply_tab` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_openapply_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table s_openinfo_tab
#

DROP TABLE IF EXISTS `s_openinfo_tab`;
CREATE TABLE `s_openinfo_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `oaid` int(11) DEFAULT NULL COMMENT '航天科技集团公司企事业单位科研生产部位一次性对外开放申报表id',
  `partnum` varchar(50) DEFAULT NULL COMMENT '部位代号',
  `major` varchar(50) DEFAULT NULL COMMENT '部位专业名称',
  `species` varchar(50) DEFAULT NULL COMMENT '属何种部',
  `device` varchar(100) DEFAULT NULL COMMENT '拟参观产品及设备',
  `purpose` varchar(100) DEFAULT NULL COMMENT '参观目的',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='申请对外开放部位简况表';

#
# Dumping data for table s_openinfo_tab
#

LOCK TABLES `s_openinfo_tab` WRITE;
/*!40000 ALTER TABLE `s_openinfo_tab` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_openinfo_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table s_pcinternetdeclear_tab
#

DROP TABLE IF EXISTS `s_pcinternetdeclear_tab`;
CREATE TABLE `s_pcinternetdeclear_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `unit` varchar(255) DEFAULT NULL COMMENT '申报单位',
  `unitid` varchar(50) DEFAULT NULL COMMENT '单位id',
  `shead` varchar(50) DEFAULT NULL COMMENT '申报部门或单位保密负责人',
  `office` varchar(255) DEFAULT NULL COMMENT '联网计算机所在处、室',
  `models` varchar(255) DEFAULT NULL COMMENT '联网机型',
  `haddress` varchar(255) DEFAULT NULL COMMENT '主机（MAC）地址',
  `serialnum` varchar(255) DEFAULT NULL COMMENT '硬盘序列号',
  `isspecial` int(11) DEFAULT NULL COMMENT '是否专机专用 0/1否/是',
  `sresponsible` varchar(50) DEFAULT NULL COMMENT '联网计算机保密责任人',
  `licensenum` varchar(255) DEFAULT NULL COMMENT '计算机联网许可证编号',
  `mainmatter` varchar(255) DEFAULT NULL COMMENT '联网目的及上网主要事项',
  `smeasures` varchar(400) DEFAULT NULL COMMENT '安全保密措施',
  `departmentdesc` varchar(400) DEFAULT NULL COMMENT '申报部门或单位领导审查意见',
  `departmentdate` datetime DEFAULT NULL COMMENT '申报部门或单位领导审查意见填写日期',
  `comdepartdesc` varchar(400) DEFAULT NULL COMMENT '公司（院、基地）主管部门审批意见',
  `comdepartdate` datetime DEFAULT NULL COMMENT '公司（院、基地）主管部门审批意见填写日期',
  `username` varchar(50) DEFAULT NULL COMMENT '处理人姓名',
  `userid` int(11) DEFAULT NULL COMMENT '处理人id',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='计算机国际联网申报审批表';

#
# Dumping data for table s_pcinternetdeclear_tab
#

LOCK TABLES `s_pcinternetdeclear_tab` WRITE;
/*!40000 ALTER TABLE `s_pcinternetdeclear_tab` DISABLE KEYS */;
INSERT INTO `s_pcinternetdeclear_tab` VALUES (1,0,'dd',NULL,'dd','dd','dd','dd','dd',34,'dd','dd','dd','dd','dd','2016-05-17 17:33:55','dd','2016-05-17 17:33:55','管理员',2275);
/*!40000 ALTER TABLE `s_pcinternetdeclear_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table s_promise_tab
#

DROP TABLE IF EXISTS `s_promise_tab`;
CREATE TABLE `s_promise_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `pname` varchar(50) DEFAULT NULL COMMENT '承诺人签名',
  `pid` int(11) DEFAULT NULL COMMENT '承诺人id',
  `pdate` datetime DEFAULT NULL COMMENT '签名日期',
  `username` varchar(50) DEFAULT NULL COMMENT '处理人姓名',
  `userid` int(11) DEFAULT NULL COMMENT '处理人id',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='保密承诺书';

#
# Dumping data for table s_promise_tab
#

LOCK TABLES `s_promise_tab` WRITE;
/*!40000 ALTER TABLE `s_promise_tab` DISABLE KEYS */;
INSERT INTO `s_promise_tab` VALUES (1,1,'5',NULL,'2016-05-23 10:49:34','admin',2275);
INSERT INTO `s_promise_tab` VALUES (2,1,'5',NULL,'2016-05-23 10:49:49','admin',2275);
INSERT INTO `s_promise_tab` VALUES (3,1,'5',NULL,'2016-05-23 10:50:08','admin',2275);
/*!40000 ALTER TABLE `s_promise_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table s_quartersubsidies_info_tab
#

DROP TABLE IF EXISTS `s_quartersubsidies_info_tab`;
CREATE TABLE `s_quartersubsidies_info_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `qid` int(11) DEFAULT NULL COMMENT '季度保密补贴考核发放表id',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `classification` varchar(20) DEFAULT NULL COMMENT '岗位密级',
  `yfmoney` double(11,2) DEFAULT NULL COMMENT '应发金额（季）',
  `brmoney` double(11,2) DEFAULT NULL COMMENT '扣补发金额',
  `sfmoney` double(11,2) DEFAULT NULL COMMENT '实发金额（季）',
  `moneybdreason` varchar(400) DEFAULT NULL COMMENT '金额变动原因',
  `isperform` int(11) DEFAULT NULL COMMENT '履行保密管理制度情况 0/1符合/不符合',
  `remark` varchar(400) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='季度保密补贴考核发放表';

#
# Dumping data for table s_quartersubsidies_info_tab
#

LOCK TABLES `s_quartersubsidies_info_tab` WRITE;
/*!40000 ALTER TABLE `s_quartersubsidies_info_tab` DISABLE KEYS */;
INSERT INTO `s_quartersubsidies_info_tab` VALUES (6,NULL,2,'yy','yy',12,2,10,'ww',1,'ww');
INSERT INTO `s_quartersubsidies_info_tab` VALUES (7,NULL,2,'ww','ww',13,3,10,'ww',0,'ww');
INSERT INTO `s_quartersubsidies_info_tab` VALUES (8,NULL,2,'oo','oo',78,8,70,'oo',0,'oo');
/*!40000 ALTER TABLE `s_quartersubsidies_info_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table s_quartersubsidies_tab
#

DROP TABLE IF EXISTS `s_quartersubsidies_tab`;
CREATE TABLE `s_quartersubsidies_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `orgname` varchar(50) DEFAULT NULL COMMENT '部门',
  `orgid` varchar(50) DEFAULT NULL COMMENT '部门id',
  `sftotalamount` double(8,2) DEFAULT NULL COMMENT '实发金额总计（元）',
  `departmentdesc` varchar(400) DEFAULT NULL COMMENT '部门领导意见',
  `departmentdate` datetime DEFAULT NULL COMMENT '部门领导意见填写日期',
  `sofficedesc` varchar(400) DEFAULT NULL COMMENT '保密办公室审核意见',
  `sofficedate` datetime DEFAULT NULL COMMENT '保密办公室审核意见填写日期',
  `username` varchar(50) DEFAULT NULL COMMENT '处理人姓名',
  `userid` int(11) DEFAULT NULL COMMENT '处理人id',
  `sofficeid` int(11) DEFAULT NULL COMMENT '保密办公室id',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='季度保密补贴考核发放表';

#
# Dumping data for table s_quartersubsidies_tab
#

LOCK TABLES `s_quartersubsidies_tab` WRITE;
/*!40000 ALTER TABLE `s_quartersubsidies_tab` DISABLE KEYS */;
INSERT INTO `s_quartersubsidies_tab` VALUES (2,0,'yy',NULL,NULL,'yy','2016-05-26 15:38:30','yy','2016-05-26 15:38:30','管理员',2275,NULL);
/*!40000 ALTER TABLE `s_quartersubsidies_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table s_secalertrecord_tab
#

DROP TABLE IF EXISTS `s_secalertrecord_tab`;
CREATE TABLE `s_secalertrecord_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `begindate` date DEFAULT NULL COMMENT '参加日期自',
  `enddate` date DEFAULT NULL COMMENT '参加日期止',
  `activityname` varchar(50) DEFAULT NULL COMMENT '涉外活动名称',
  `cborgopinion` varchar(400) DEFAULT NULL COMMENT '承办部门确认',
  `cbleader` varchar(50) DEFAULT NULL COMMENT '承办部门签字',
  `cbleaderdate` datetime DEFAULT NULL COMMENT '承办部门签字日期',
  `cbleaderid` int(11) DEFAULT NULL COMMENT '承办部门签字人id',
  `securityopinion` varchar(400) DEFAULT NULL COMMENT '保密管理部门确认',
  `securitysign` varchar(50) DEFAULT NULL COMMENT '保密管理部门签字',
  `securityid` int(11) DEFAULT NULL COMMENT '保密管理部门签字人id',
  `securitysigndate` datetime DEFAULT NULL COMMENT '保密管理部门签字日期',
  `username` varchar(50) DEFAULT NULL COMMENT '处理人姓名',
  `userid` int(11) DEFAULT NULL COMMENT '处理人id',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='保密提醒记录表';

#
# Dumping data for table s_secalertrecord_tab
#

LOCK TABLES `s_secalertrecord_tab` WRITE;
/*!40000 ALTER TABLE `s_secalertrecord_tab` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_secalertrecord_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table s_secexamregist_tab
#

DROP TABLE IF EXISTS `s_secexamregist_tab`;
CREATE TABLE `s_secexamregist_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `pname` varchar(50) DEFAULT NULL COMMENT '承办人',
  `orgname` varchar(100) DEFAULT NULL COMMENT '所属部门',
  `orgid` varchar(50) DEFAULT NULL COMMENT '所属部门id',
  `recontent` varchar(400) DEFAULT NULL COMMENT '审查内容',
  `isclassification` int(1) DEFAULT NULL COMMENT '是否涉密 0/1否/是',
  `classification` varchar(20) DEFAULT NULL COMMENT '涉密等级',
  `fullname` varchar(100) DEFAULT NULL COMMENT '资料用途或者接收单位全称',
  `depdesc` varchar(400) DEFAULT NULL COMMENT '部门领导意见',
  `depsign` varchar(50) DEFAULT NULL COMMENT '部门领导签字',
  `depid` int(11) DEFAULT NULL COMMENT '部门领导id',
  `depdate` datetime DEFAULT NULL COMMENT '部门领导签字日期',
  `officedesc` varchar(400) DEFAULT NULL COMMENT '保密委员会办公室意见',
  `officesign` varchar(50) DEFAULT NULL COMMENT '保密委员会办公室签字',
  `officeid` int(11) DEFAULT NULL COMMENT '保密委员会办公室签字人id',
  `officedate` datetime DEFAULT NULL COMMENT '保密委员会办公室意见填写日期',
  `expertsdesc` varchar(400) DEFAULT NULL COMMENT '专家或专家组意见',
  `scomdesc` varchar(400) DEFAULT NULL COMMENT '保密委员会意见',
  `scomsign` varchar(50) DEFAULT NULL COMMENT '保密委员会签字',
  `scomid` int(11) DEFAULT NULL COMMENT '保密委员会签字人id',
  `scomdate` datetime DEFAULT NULL COMMENT '保密委员会签字日期',
  `username` varchar(50) DEFAULT NULL COMMENT '处理人姓名',
  `userid` int(11) DEFAULT NULL COMMENT '处理人id',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='保密审查审批登记表';

#
# Dumping data for table s_secexamregist_tab
#

LOCK TABLES `s_secexamregist_tab` WRITE;
/*!40000 ALTER TABLE `s_secexamregist_tab` DISABLE KEYS */;
INSERT INTO `s_secexamregist_tab` VALUES (1,0,'1','1',NULL,'1',34,'1','1','1','5',NULL,'2016-05-22 10:15:41','1','5',NULL,'2016-05-22 10:15:41','1','1','5',NULL,'2016-05-22 10:15:41','管理员',2275);
/*!40000 ALTER TABLE `s_secexamregist_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table s_secpersonnel_tab
#

DROP TABLE IF EXISTS `s_secpersonnel_tab`;
CREATE TABLE `s_secpersonnel_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `sid` int(11) DEFAULT NULL COMMENT '保密提醒记录表id',
  `orgname` varchar(255) DEFAULT NULL COMMENT '部门',
  `orgid` varchar(50) DEFAULT NULL COMMENT '部门id',
  `name` varchar(50) DEFAULT NULL COMMENT '人员签字',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='保密提醒记录人员明细表';

#
# Dumping data for table s_secpersonnel_tab
#

LOCK TABLES `s_secpersonnel_tab` WRITE;
/*!40000 ALTER TABLE `s_secpersonnel_tab` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_secpersonnel_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table s_secretonline_tab
#

DROP TABLE IF EXISTS `s_secretonline_tab`;
CREATE TABLE `s_secretonline_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `orgname` varchar(255) DEFAULT NULL COMMENT '使用部门',
  `orgid` varchar(50) DEFAULT NULL COMMENT '使用部门id',
  `uname` varchar(50) DEFAULT NULL COMMENT '使用人',
  `sresponsible` varchar(50) DEFAULT NULL COMMENT '联网计算机保密责任人',
  `models` varchar(255) DEFAULT NULL COMMENT '联网计算机型号',
  `licensenum` varchar(255) DEFAULT NULL COMMENT '计算机联网许可证编号',
  `rsign` varchar(50) DEFAULT NULL COMMENT '责任人签字',
  `rid` int(11) DEFAULT NULL COMMENT '责任人id',
  `rdate` datetime DEFAULT NULL COMMENT '责任人签字日期',
  `dsign` varchar(50) DEFAULT NULL COMMENT '保密管理部门领导签字',
  `did` int(11) DEFAULT NULL COMMENT '保密管理部门领导id',
  `ddate` datetime DEFAULT NULL COMMENT '保密管理部门领导签字日期',
  `note` varchar(800) DEFAULT NULL COMMENT '备注',
  `username` varchar(50) DEFAULT NULL COMMENT '处理人姓名',
  `userid` int(11) DEFAULT NULL COMMENT '处理人id',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='上国际互联网计算机保密责任书';

#
# Dumping data for table s_secretonline_tab
#

LOCK TABLES `s_secretonline_tab` WRITE;
/*!40000 ALTER TABLE `s_secretonline_tab` DISABLE KEYS */;
INSERT INTO `s_secretonline_tab` VALUES (3,0,'s11',NULL,'s11','ss11','s11','s11','6',NULL,'2016-05-19 15:34:10','5',NULL,'2016-05-19 15:34:10',NULL,'管理员',2275);
/*!40000 ALTER TABLE `s_secretonline_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table s_securityedu_tab
#

DROP TABLE IF EXISTS `s_securityedu_tab`;
CREATE TABLE `s_securityedu_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `orgname` varchar(100) DEFAULT NULL COMMENT '部门',
  `orgid` varchar(50) DEFAULT NULL COMMENT '部门id',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `classification` int(11) DEFAULT NULL COMMENT '岗位密级',
  `educationdesc` varchar(800) DEFAULT NULL COMMENT '教育培训内容',
  `sign` varchar(50) DEFAULT NULL COMMENT '本人签字',
  `signdate` datetime DEFAULT NULL COMMENT '签字日期',
  `rname` varchar(50) DEFAULT NULL COMMENT '记录人',
  `reid` int(11) DEFAULT NULL COMMENT '记录人id',
  `redate` datetime DEFAULT NULL COMMENT '记录日期',
  `username` varchar(50) DEFAULT NULL COMMENT '处理人姓名',
  `userid` int(11) DEFAULT NULL COMMENT '处理人id',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='新进涉密岗位人员岗前保密教育培训记录表';

#
# Dumping data for table s_securityedu_tab
#

LOCK TABLES `s_securityedu_tab` WRITE;
/*!40000 ALTER TABLE `s_securityedu_tab` DISABLE KEYS */;
INSERT INTO `s_securityedu_tab` VALUES (2,0,'bm1',NULL,'xm1',14,'ww',NULL,'2016-05-12 10:12:25',NULL,NULL,'2016-05-12 10:12:25','管理员',2275);
/*!40000 ALTER TABLE `s_securityedu_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table s_smediumborrow_tab
#

DROP TABLE IF EXISTS `s_smediumborrow_tab`;
CREATE TABLE `s_smediumborrow_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `scode` varchar(100) DEFAULT NULL COMMENT '编号',
  `orgname` varchar(255) DEFAULT NULL COMMENT '借用部门',
  `orgid` varchar(50) DEFAULT NULL COMMENT '部门id',
  `bname` varchar(50) DEFAULT NULL COMMENT '借用人',
  `bid` int(11) DEFAULT NULL COMMENT '借用人id',
  `borrowreason` varchar(400) DEFAULT NULL COMMENT '借用原因',
  `mcode` varchar(100) DEFAULT NULL COMMENT '介质编号',
  `mclassifition` int(11) DEFAULT NULL COMMENT '介质密级 0/1机密/秘密',
  `usedate` datetime DEFAULT NULL COMMENT '使用时间',
  `dcode` varchar(100) DEFAULT NULL COMMENT '连接设备编号',
  `information` varchar(800) DEFAULT NULL COMMENT '存储信息的主要内容',
  `imaxclassified` varchar(20) DEFAULT NULL COMMENT '存储信息的最高密级',
  `departmentdesc` varchar(400) DEFAULT NULL COMMENT '部门领导审批意见',
  `departmentdate` datetime DEFAULT NULL COMMENT '部门领导审批日期',
  `officedesc` varchar(400) DEFAULT NULL COMMENT '保密委员会办公室意见',
  `officedate` datetime DEFAULT NULL COMMENT '保密委员会办公室意见填写日期',
  `cleardesc` varchar(800) DEFAULT NULL COMMENT '返回信息清除情况',
  `cleardate` datetime DEFAULT NULL COMMENT '清除日期',
  `applydate` datetime DEFAULT NULL COMMENT '申请日期',
  `username` varchar(50) DEFAULT NULL COMMENT '处理人姓名',
  `userid` int(11) DEFAULT NULL COMMENT '处理人id',
  `mark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='专用存储介质借用审批表';

#
# Dumping data for table s_smediumborrow_tab
#

LOCK TABLES `s_smediumborrow_tab` WRITE;
/*!40000 ALTER TABLE `s_smediumborrow_tab` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_smediumborrow_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table s_socialfamily_tab
#

DROP TABLE IF EXISTS `s_socialfamily_tab`;
CREATE TABLE `s_socialfamily_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `eqid` int(11) DEFAULT NULL COMMENT '涉密岗位聘用人员保密资格审查表id',
  `relation` varchar(100) DEFAULT NULL COMMENT '关系',
  `sex` int(11) DEFAULT NULL COMMENT '性别',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `national` varchar(100) DEFAULT NULL COMMENT '国籍/籍贯',
  `dwzw` varchar(255) DEFAULT NULL COMMENT '工作单位及职务（涉外应标明国别和所在机构名称）',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='家庭成员及社会关系情况表';

#
# Dumping data for table s_socialfamily_tab
#

LOCK TABLES `s_socialfamily_tab` WRITE;
/*!40000 ALTER TABLE `s_socialfamily_tab` DISABLE KEYS */;
INSERT INTO `s_socialfamily_tab` VALUES (2,NULL,1,'2',0,2,'2','2','1');
INSERT INTO `s_socialfamily_tab` VALUES (3,NULL,1,'3',1,3,'3','3','3');
/*!40000 ALTER TABLE `s_socialfamily_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table s_statesecrets_tab
#

DROP TABLE IF EXISTS `s_statesecrets_tab`;
CREATE TABLE `s_statesecrets_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `orgname` varchar(100) DEFAULT NULL COMMENT '部门名称',
  `orgid` varchar(50) DEFAULT NULL COMMENT '部门id',
  `filltime` date DEFAULT NULL COMMENT '填报日期',
  `pname` varchar(50) DEFAULT NULL COMMENT '承办人',
  `cellphone` varchar(100) DEFAULT NULL COMMENT '联系电话',
  `mname` varchar(100) DEFAULT NULL COMMENT '事项名称',
  `adjustpurpose` int(4) DEFAULT NULL COMMENT '调整目的 0/1变更密级/解密',
  `oclassification` varchar(20) DEFAULT NULL COMMENT '原密级',
  `newclassification` varchar(20) DEFAULT NULL COMMENT '拟变更密级',
  `orperiod` varchar(20) DEFAULT NULL COMMENT '原保密期限',
  `newperiod` varchar(20) DEFAULT NULL COMMENT '拟变更保密期限',
  `orcontrolrange` varchar(100) DEFAULT NULL COMMENT '原控制范围',
  `newcontrolrange` varchar(100) DEFAULT NULL COMMENT '拟变更控制范围',
  `chdecryption` varchar(800) DEFAULT NULL COMMENT '变更或解密理由',
  `reviewercomments` varchar(400) DEFAULT NULL COMMENT '定密审核人意见',
  `dsign` varchar(100) DEFAULT NULL COMMENT '定密审核人签字',
  `did` int(11) DEFAULT NULL COMMENT '定密审核人id',
  `auditdate` date DEFAULT NULL COMMENT '定密审核日期',
  `examopinion` varchar(400) DEFAULT NULL COMMENT '定密责任人审定意见',
  `examsign` varchar(100) DEFAULT NULL COMMENT '定密责任人审定签字',
  `examdate` date DEFAULT NULL COMMENT '定密审定日期',
  `eaxmid` int(11) DEFAULT NULL COMMENT '定密责任人id',
  `username` varchar(50) DEFAULT NULL COMMENT '处理人姓名',
  `userid` int(11) DEFAULT NULL COMMENT '处理人id',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='国家秘密事项的变更或解密审批表';

#
# Dumping data for table s_statesecrets_tab
#

LOCK TABLES `s_statesecrets_tab` WRITE;
/*!40000 ALTER TABLE `s_statesecrets_tab` DISABLE KEYS */;
INSERT INTO `s_statesecrets_tab` VALUES (5,0,'qqs',NULL,'2016-05-04','qq','1','qq',4,'q','q','q','q','q','q','q',NULL,NULL,NULL,'2016-05-18',NULL,NULL,'2016-05-18',NULL,'管理员',2275);
/*!40000 ALTER TABLE `s_statesecrets_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table s_storagemedium_info_tab
#

DROP TABLE IF EXISTS `s_storagemedium_info_tab`;
CREATE TABLE `s_storagemedium_info_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `eid` int(11) DEFAULT NULL COMMENT '存储介质配备审批表id',
  `qmediumtype` int(11) DEFAULT NULL COMMENT '拟配备存储介质类别',
  `qspecifications` varchar(255) DEFAULT NULL COMMENT '拟配备存储介质规格',
  `qclassification` varchar(20) DEFAULT NULL COMMENT '拟配备存储介质密级',
  `qnum` int(11) DEFAULT NULL COMMENT '拟配备存储介质数量',
  `qcerttype` int(11) DEFAULT NULL COMMENT '拟配备存储介质认证类别',
  `qusrange` varchar(255) DEFAULT NULL COMMENT '拟配备存储介质使用范围',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='拟配备存储介质情况明细表';

#
# Dumping data for table s_storagemedium_info_tab
#

LOCK TABLES `s_storagemedium_info_tab` WRITE;
/*!40000 ALTER TABLE `s_storagemedium_info_tab` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_storagemedium_info_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table s_studywork_tab
#

DROP TABLE IF EXISTS `s_studywork_tab`;
CREATE TABLE `s_studywork_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `eqid` int(11) DEFAULT NULL COMMENT '涉密岗位聘用人员保密资格审查表id',
  `wstartdate` datetime DEFAULT NULL COMMENT '学习工作经历起始时间',
  `wenddate` datetime DEFAULT NULL COMMENT '学习工作经历截止时间',
  `workunit` varchar(255) DEFAULT NULL COMMENT '工作单位',
  `jobs` varchar(100) DEFAULT NULL COMMENT '岗位',
  `position` varchar(100) DEFAULT NULL COMMENT '职务',
  `zmname` varchar(50) DEFAULT NULL COMMENT '证明人',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='本人主要学习工作经历表';

#
# Dumping data for table s_studywork_tab
#

LOCK TABLES `s_studywork_tab` WRITE;
/*!40000 ALTER TABLE `s_studywork_tab` DISABLE KEYS */;
INSERT INTO `s_studywork_tab` VALUES (2,NULL,1,'2016-05-04','2016-05-11','2','2','2','2');
INSERT INTO `s_studywork_tab` VALUES (3,NULL,1,'2016-05-11','2016-05-26','3','3','3','3');
/*!40000 ALTER TABLE `s_studywork_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table s_subsidiesdetain_tab
#

DROP TABLE IF EXISTS `s_subsidiesdetain_tab`;
CREATE TABLE `s_subsidiesdetain_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `code` varchar(100) DEFAULT NULL COMMENT '编号',
  `noticedate` date DEFAULT NULL COMMENT '通知日期',
  `orgid` varchar(50) DEFAULT NULL COMMENT '部门id',
  `orgname` varchar(100) DEFAULT NULL COMMENT '部门',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `detaindesc` varchar(400) DEFAULT NULL COMMENT '扣发意见',
  `detainsign` varchar(50) DEFAULT NULL COMMENT '被扣发人签字',
  `dsid` int(11) DEFAULT NULL COMMENT '被扣发人id',
  `signdate` date DEFAULT NULL COMMENT '签字日期',
  `deductamount` double(11,2) DEFAULT NULL COMMENT '扣发金额',
  `detainstartdate` date DEFAULT NULL COMMENT '扣发开始时间',
  `detainenddate` date DEFAULT NULL COMMENT '扣发截止时间',
  `promoter` varchar(50) DEFAULT NULL COMMENT '承办人',
  `promoterid` int(11) DEFAULT NULL COMMENT '承办人id',
  `promoterdate` date DEFAULT NULL COMMENT '承办人签字时间',
  `username` varchar(50) DEFAULT NULL COMMENT '处理人姓名',
  `userid` int(11) DEFAULT NULL COMMENT '处理人id',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='保密补贴扣发通知单（保密办留存）';

#
# Dumping data for table s_subsidiesdetain_tab
#

LOCK TABLES `s_subsidiesdetain_tab` WRITE;
/*!40000 ALTER TABLE `s_subsidiesdetain_tab` DISABLE KEYS */;
INSERT INTO `s_subsidiesdetain_tab` VALUES (1,1,'ad','2016-05-24','','ad','asd','asd','5',NULL,NULL,12,'2016-05-24','2016-05-24','6',NULL,NULL,'admin',2275);
/*!40000 ALTER TABLE `s_subsidiesdetain_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table s_subsidiesdetainper_tab
#

DROP TABLE IF EXISTS `s_subsidiesdetainper_tab`;
CREATE TABLE `s_subsidiesdetainper_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `pcode` varchar(100) DEFAULT NULL COMMENT '编号',
  `pnoticedate` datetime DEFAULT NULL COMMENT '通知日期',
  `orgname` varchar(100) DEFAULT NULL COMMENT '部门',
  `orgid` varchar(50) DEFAULT NULL COMMENT '部门id',
  `pname` varchar(50) DEFAULT NULL COMMENT '姓名',
  `pdetaindesc` varchar(400) DEFAULT NULL COMMENT '扣发意见',
  `officesign` varchar(100) DEFAULT NULL COMMENT '保密办签字',
  `officeid` int(11) DEFAULT NULL COMMENT '保密办id',
  `signdate` date DEFAULT NULL COMMENT '保密办签字日期',
  `username` varchar(50) DEFAULT NULL COMMENT '处理人姓名',
  `userid` int(11) DEFAULT NULL COMMENT '处理人id',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='保密补贴扣发通知单';

#
# Dumping data for table s_subsidiesdetainper_tab
#

LOCK TABLES `s_subsidiesdetainper_tab` WRITE;
/*!40000 ALTER TABLE `s_subsidiesdetainper_tab` DISABLE KEYS */;
INSERT INTO `s_subsidiesdetainper_tab` VALUES (1,1,'adad','2016-05-25','asd','','dss','adad','5',NULL,NULL,'admin',2275);
INSERT INTO `s_subsidiesdetainper_tab` VALUES (2,1,'asd','2016-05-25','asd','','asd','','5',NULL,NULL,'admin',2275);
INSERT INTO `s_subsidiesdetainper_tab` VALUES (3,1,'sd','2016-05-25 11:18:14','asd','','ad','ad','5',NULL,NULL,'admin',2275);
/*!40000 ALTER TABLE `s_subsidiesdetainper_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table s_tochinas_tab
#

DROP TABLE IF EXISTS `s_tochinas_tab`;
CREATE TABLE `s_tochinas_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `num` varchar(50) DEFAULT NULL COMMENT '编号',
  `formdate` date DEFAULT NULL COMMENT '填报日期',
  `deptname` varchar(50) DEFAULT NULL COMMENT '接待单位名称',
  `deptsecrity` int(1) DEFAULT NULL COMMENT '接待单位涉密等级',
  `country` varchar(50) DEFAULT NULL COMMENT '来华人员国别（地区）',
  `foreigdept` varchar(50) DEFAULT NULL COMMENT '外宾单位',
  `foreigners` int(11) DEFAULT NULL COMMENT '外宾人数',
  `begindate` date DEFAULT NULL COMMENT '外宾来访时间起',
  `enddate` date DEFAULT NULL COMMENT '外宾来访时间止',
  `superdept` varchar(50) DEFAULT NULL COMMENT '上级审批部门',
  `examinenum` varchar(50) DEFAULT NULL COMMENT '审批文号',
  `exchplace` varchar(50) DEFAULT NULL COMMENT '洽谈交流地点',
  `touchpart` varchar(100) DEFAULT NULL COMMENT '接待参观接触部位',
  `plansmeasur` varchar(400) DEFAULT NULL COMMENT '接待及保密方案或措施',
  `bmname` varchar(50) DEFAULT NULL COMMENT '安全保密责任人',
  `cellphone` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `reason` varchar(400) DEFAULT NULL COMMENT '接待事由',
  `formdept` varchar(50) DEFAULT NULL COMMENT '填报单位',
  `former` varchar(50) DEFAULT NULL COMMENT '填报人',
  `formerid` int(11) DEFAULT NULL COMMENT '填报人id',
  `formertel` varchar(20) DEFAULT NULL COMMENT '填报人联系电话',
  `username` varchar(50) DEFAULT NULL COMMENT '处理人姓名',
  `userid` int(11) DEFAULT NULL COMMENT '处理人id',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='临时来华人员登记表';

#
# Dumping data for table s_tochinas_tab
#

LOCK TABLES `s_tochinas_tab` WRITE;
/*!40000 ALTER TABLE `s_tochinas_tab` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_tochinas_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table s_vregist_info_tab
#

DROP TABLE IF EXISTS `s_vregist_info_tab`;
CREATE TABLE `s_vregist_info_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `vid` int(11) DEFAULT NULL COMMENT '来访人员登记簿id',
  `vdate` datetime DEFAULT NULL COMMENT '访问日期',
  `visitorunit` varchar(255) DEFAULT NULL COMMENT '来访人员单位',
  `vname` varchar(50) DEFAULT NULL COMMENT '姓名',
  `vpurpose` varchar(255) DEFAULT NULL COMMENT '来访目的',
  `acofficials` varchar(255) DEFAULT NULL COMMENT '陪同人员',
  `vstartdate` datetime DEFAULT NULL COMMENT '来访时间',
  `venddate` datetime DEFAULT NULL COMMENT '离开时间',
  `note` varchar(400) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='来访人员登记簿明细表';

#
# Dumping data for table s_vregist_info_tab
#

LOCK TABLES `s_vregist_info_tab` WRITE;
/*!40000 ALTER TABLE `s_vregist_info_tab` DISABLE KEYS */;
INSERT INTO `s_vregist_info_tab` VALUES (4,NULL,1,NULL,'ss','s','s','s',NULL,NULL,'s');
INSERT INTO `s_vregist_info_tab` VALUES (5,NULL,1,NULL,'aa','as','as','as',NULL,NULL,'as');
/*!40000 ALTER TABLE `s_vregist_info_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table s_vregist_tab
#

DROP TABLE IF EXISTS `s_vregist_tab`;
CREATE TABLE `s_vregist_tab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `partname` varchar(255) DEFAULT NULL COMMENT '部门部位名称',
  `orgid` varchar(50) DEFAULT NULL COMMENT '部门部位id',
  `roomcode` varchar(50) DEFAULT NULL COMMENT '房间号',
  `recordstartdate` datetime DEFAULT NULL COMMENT '登记统计起始日期',
  `recordenddate` datetime DEFAULT NULL COMMENT '登记统计截止日期',
  `username` varchar(50) DEFAULT NULL COMMENT '处理人姓名',
  `userid` int(11) DEFAULT NULL COMMENT '处理人id',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='来访人员登记簿（样本）';

#
# Dumping data for table s_vregist_tab
#

LOCK TABLES `s_vregist_tab` WRITE;
/*!40000 ALTER TABLE `s_vregist_tab` DISABLE KEYS */;
INSERT INTO `s_vregist_tab` VALUES (1,0,'1',NULL,'1','2016-05-11','2016-05-26','管理员',2275);
/*!40000 ALTER TABLE `s_vregist_tab` ENABLE KEYS */;
UNLOCK TABLES;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
