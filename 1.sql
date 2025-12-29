-- MySQL dump 10.13  Distrib 5.7.44, for Linux (x86_64)
--
-- Host: localhost    Database: tgbot
-- ------------------------------------------------------
-- Server version	5.7.44-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cd_action`
--

DROP TABLE IF EXISTS `cd_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(9) NOT NULL COMMENT '模块ID',
  `name` varchar(255) DEFAULT NULL COMMENT '动作名称',
  `action_name` varchar(128) NOT NULL COMMENT '动作名称',
  `type` tinyint(4) NOT NULL,
  `icon` varchar(32) DEFAULT NULL COMMENT 'icon图标',
  `pagesize` varchar(5) DEFAULT '' COMMENT '每页显示数据条数',
  `group_button_status` tinyint(4) DEFAULT NULL COMMENT '按钮组显示状态',
  `list_button_status` tinyint(4) DEFAULT NULL COMMENT '按钮是否显示列表',
  `button_color` varchar(20) DEFAULT NULL,
  `fields` text COMMENT '操作的字段',
  `sortid` mediumint(9) DEFAULT '0' COMMENT '排序',
  `orderby` varchar(250) DEFAULT NULL COMMENT '配置排序',
  `tree_config` varchar(50) DEFAULT NULL,
  `jump` varchar(120) DEFAULT NULL COMMENT '按钮跳转地址',
  `server_create_status` tinyint(4) DEFAULT '1',
  `vue_create_status` tinyint(4) DEFAULT '1' COMMENT '视图生成',
  `cache_time` mediumint(9) DEFAULT NULL COMMENT '缓存时间',
  `api_auth` tinyint(4) DEFAULT NULL COMMENT '接口是否鉴权',
  `img_auth` tinyint(4) DEFAULT NULL COMMENT '图片验证码鉴权',
  `sms_auth` tinyint(4) DEFAULT NULL COMMENT '短信验证',
  `list_filter` varchar(255) DEFAULT NULL COMMENT '过滤',
  `tab_config` text,
  `sql` text,
  `dialog_size` varchar(20) DEFAULT NULL,
  `status_val` varchar(255) DEFAULT NULL,
  `validate` varchar(50) DEFAULT NULL,
  `select_type` tinyint(4) DEFAULT '1' COMMENT '选中方式 1多选 2单选',
  `table_height` varchar(20) DEFAULT NULL COMMENT '表格高度',
  `left_tree_sql` varchar(250) DEFAULT NULL COMMENT '侧栏生成的sql',
  `with_join` text COMMENT '关联模型',
  `other_config` mediumtext COMMENT '登录字段配置',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `menu_id` (`menu_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=4194 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_action`
--

LOCK TABLES `cd_action` WRITE;
/*!40000 ALTER TABLE `cd_action` DISABLE KEYS */;
INSERT INTO `cd_action` VALUES (3321,4,'查看详情','detail',5,'el-icon-view','',1,NULL,'info',NULL,6,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'600px',NULL,NULL,1,NULL,NULL,NULL,NULL),(3320,4,'删除','delete',4,'el-icon-delete','',1,1,'danger',NULL,5,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL),(3316,4,'数据列表','index',1,NULL,'20',0,NULL,NULL,NULL,1,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL),(3317,4,'修改排序开关','updateExt',12,NULL,'',0,NULL,NULL,NULL,2,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL),(3318,4,'添加','add',2,'el-icon-plus','',1,NULL,'success',NULL,3,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'600px',NULL,NULL,1,NULL,NULL,NULL,NULL),(3319,4,'修改','update',3,'el-icon-edit','',1,1,'primary',NULL,4,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'600px',NULL,NULL,1,NULL,NULL,NULL,NULL),(3933,7,'添加','add',2,'el-icon-plus','',1,NULL,'success',NULL,3,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'600px',NULL,NULL,1,NULL,NULL,NULL,NULL),(3934,7,'修改','update',3,'el-icon-edit','',1,1,'primary',NULL,4,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'600px',NULL,NULL,1,NULL,NULL,NULL,NULL),(3935,7,'删除','delete',4,'el-icon-delete','',1,1,'danger',NULL,5,NULL,NULL,NULL,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL),(3937,8,'数据列表','index',1,NULL,'20',0,NULL,NULL,NULL,1,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL),(3949,8,'导出','dumpdata',11,'el-icon-download','',1,NULL,'warning',NULL,12,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL),(3941,8,'删除','delete',4,'el-icon-delete','',1,1,'danger',NULL,5,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL),(3942,8,'查看详情','detail',5,'el-icon-view','',1,NULL,'info','application_name,username,url,ip,useragent,content,type,create_time,errmsg',6,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,'','','','600px',NULL,NULL,1,NULL,NULL,'','null'),(3974,6,'重置密码','resetPwd',6,'el-icon-lock','20',1,NULL,'primary','pwd',3974,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,'','','','',NULL,NULL,1,NULL,NULL,'','null'),(3975,3,'配置表单','index',14,NULL,'20',NULL,NULL,NULL,'',3975,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,'','[{\"tab_fields\":[\"site_title\",\"logo\",\"keyword\",\"descrip\",\"copyright\",\"tinymce\",\"jzd\"],\"tab_name\":\"基本信息\"},{\"tab_fields\":[\"filesize\",\"filetype\",\"water_status\",\"water_position\",\"water_alpha\",\"domain\"],\"tab_name\":\"拓展信息\"}]','','',NULL,NULL,1,NULL,NULL,'','\"\\\"\\\\\\\"null\\\\\\\"\\\"\"'),(3932,7,'修改排序开关','updateExt',12,NULL,'',0,NULL,NULL,NULL,2,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL),(3931,7,'数据列表','index',1,NULL,'20',0,NULL,NULL,NULL,1,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL),(3930,6,'查看详情','detail',5,'el-icon-view','',1,NULL,'info',NULL,6,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'600px',NULL,NULL,1,NULL,NULL,NULL,NULL),(3929,6,'删除','delete',4,'el-icon-delete','',1,1,'danger',NULL,5,NULL,NULL,NULL,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL),(3925,6,'数据列表','index',1,NULL,'20',0,NULL,NULL,'',1,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,'','','',NULL,NULL,NULL,1,NULL,NULL,'[{\"fields\":[\"name\"],\"fk\":\"role_id\",\"relative_table\":\"Role\",\"pk\":\"role_id\",\"table_name\":\"role\",\"connect\":\"mysql\"}]','\"\\\"null\\\"\"'),(3926,6,'修改排序开关','updateExt',12,NULL,'',0,NULL,NULL,NULL,2,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL),(3927,6,'添加','add',2,'el-icon-plus','',1,NULL,'success',NULL,3,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'600px',NULL,NULL,1,NULL,NULL,NULL,NULL),(3928,6,'修改','update',3,'el-icon-edit','',1,1,'primary',NULL,4,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'600px',NULL,NULL,1,NULL,NULL,NULL,NULL),(4164,49,'删除','delete',4,'el-icon-delete','',1,1,'danger',NULL,5,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL),(4163,49,'修改','update',3,'el-icon-edit','',1,1,'primary',NULL,4,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'600px',NULL,NULL,1,NULL,NULL,NULL,NULL),(4162,49,'添加','add',2,'el-icon-plus','',1,NULL,'success',NULL,3,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'600px',NULL,NULL,1,NULL,NULL,NULL,NULL),(4161,49,'修改排序开关','updateExt',12,NULL,'',0,NULL,NULL,NULL,2,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL),(4160,49,'数据列表','index',1,NULL,'20',0,NULL,NULL,NULL,1,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL),(4165,49,'查看详情','detail',5,'el-icon-view','',1,NULL,'info',NULL,6,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'600px',NULL,NULL,1,NULL,NULL,NULL,NULL),(4166,50,'数据列表','index',1,NULL,'20',0,NULL,NULL,NULL,1,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL),(4167,50,'修改排序开关','updateExt',12,NULL,'',0,NULL,NULL,NULL,2,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL),(4168,50,'添加','add',2,'el-icon-plus','',1,NULL,'success',NULL,3,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'600px',NULL,NULL,1,NULL,NULL,NULL,NULL),(4169,50,'修改','update',3,'el-icon-edit','',1,1,'primary',NULL,4,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'600px',NULL,NULL,1,NULL,NULL,NULL,NULL),(4170,50,'删除','delete',4,'el-icon-delete','',1,1,'danger',NULL,5,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL),(4171,50,'查看详情','detail',5,'el-icon-view','',1,NULL,'info',NULL,6,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'600px',NULL,NULL,1,NULL,NULL,NULL,NULL),(4174,53,'群发公告','index',14,NULL,'',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL),(4175,54,'数据列表','index',1,NULL,'20',0,NULL,NULL,'',1,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,1,NULL,NULL,'[{\"fields\":[\"name\"],\"fk\":\"group_id\",\"relative_table\":\"Group\",\"pk\":\"tg_groupid\",\"table_name\":\"group\",\"connect\":\"mysql\"}]','{\"show_list_button\":\"\"}'),(4176,54,'修改排序开关','updateExt',12,NULL,'',0,NULL,NULL,NULL,3,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL),(4177,54,'添加','add',2,'el-icon-plus','',1,NULL,'success','usdt,bank,jytime,amount,accname',3,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,'','',NULL,'600px',NULL,NULL,1,NULL,NULL,'','{\"show_list_button\":\"\"}'),(4178,54,'修改','update',3,'el-icon-edit','',1,1,'primary',NULL,4,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'600px',NULL,NULL,1,NULL,NULL,NULL,NULL),(4179,54,'删除','delete',4,'el-icon-delete','',1,1,'danger',NULL,5,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL),(4180,54,'查看详情','detail',5,'el-icon-view','',1,NULL,'info',NULL,6,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'600px',NULL,NULL,1,NULL,NULL,NULL,NULL),(4181,55,'机器人设置','index',14,NULL,'',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL),(4182,56,'数据列表','index',1,NULL,'20',0,NULL,NULL,NULL,1,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL),(4183,56,'修改排序开关','updateExt',12,NULL,'',0,NULL,NULL,NULL,2,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL),(4184,56,'添加','add',2,'el-icon-plus','',1,NULL,'success',NULL,3,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'600px',NULL,NULL,1,NULL,NULL,NULL,NULL),(4185,56,'修改','update',3,'el-icon-edit','',1,1,'primary',NULL,4,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'600px',NULL,NULL,1,NULL,NULL,NULL,NULL),(4186,56,'删除','delete',4,'el-icon-delete','',1,1,'danger',NULL,5,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL),(4187,56,'查看详情','detail',5,'el-icon-view','',1,NULL,'info',NULL,6,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'600px',NULL,NULL,1,NULL,NULL,NULL,NULL),(4192,54,'批量添加','pladd',2,'el-icon-plus','20',1,NULL,'success','accname,amount',4192,'','','',0,0,NULL,NULL,NULL,NULL,'','','','600px','',NULL,1,'',NULL,'','{\"export_type\":\"\"}'),(4193,49,'群账单','groupBill',15,'el-icon-s-data','',1,0,'primary',NULL,7,NULL,NULL,'/admin/GroupOrder/index.html',1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `cd_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd_address_monitor`
--

DROP TABLE IF EXISTS `cd_address_monitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_address_monitor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tg_id` varchar(50) NOT NULL COMMENT 'TG用户ID',
  `address` varchar(50) NOT NULL COMMENT '监控地址',
  `last_tx_timestamp` bigint(20) DEFAULT '0' COMMENT '最后一次通知的交易时间戳',
  `create_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tg_id` (`tg_id`),
  KEY `address` (`address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='地址监听表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_address_monitor`
--

LOCK TABLES `cd_address_monitor` WRITE;
/*!40000 ALTER TABLE `cd_address_monitor` DISABLE KEYS */;
/*!40000 ALTER TABLE `cd_address_monitor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd_admin_user`
--

DROP TABLE IF EXISTS `cd_admin_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_admin_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(250) DEFAULT NULL COMMENT '真实姓名',
  `user` varchar(250) DEFAULT NULL COMMENT '用户名',
  `pwd` varchar(250) DEFAULT NULL COMMENT '密码',
  `role_id` int(11) DEFAULT NULL COMMENT '所属分组',
  `note` varchar(250) DEFAULT NULL COMMENT '备注',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_admin_user`
--

LOCK TABLES `cd_admin_user` WRITE;
/*!40000 ALTER TABLE `cd_admin_user` DISABLE KEYS */;
INSERT INTO `cd_admin_user` VALUES (1,'TG','admin','edb1d7c8464f1854c742eb6b95f3f7ac',1,'超级管理员',1,1548558919);
/*!40000 ALTER TABLE `cd_admin_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd_application`
--

DROP TABLE IF EXISTS `cd_application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_application` (
  `app_id` int(10) NOT NULL AUTO_INCREMENT,
  `application_name` varchar(250) DEFAULT NULL,
  `app_dir` varchar(250) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `app_type` tinyint(4) DEFAULT NULL,
  `login_table` varchar(250) DEFAULT NULL,
  `login_fields` varchar(250) DEFAULT NULL,
  `domain` varchar(250) DEFAULT NULL,
  `pk` varchar(50) DEFAULT NULL COMMENT '登录表主键',
  PRIMARY KEY (`app_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=298 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_application`
--

LOCK TABLES `cd_application` WRITE;
/*!40000 ALTER TABLE `cd_application` DISABLE KEYS */;
INSERT INTO `cd_application` VALUES (1,'后台管理','admin',1,1,'','','','');
/*!40000 ALTER TABLE `cd_application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd_bank_code`
--

DROP TABLE IF EXISTS `cd_bank_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_bank_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL COMMENT '银行代码',
  `name` varchar(100) NOT NULL COMMENT '银行名称',
  PRIMARY KEY (`id`),
  KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COMMENT='银行代码表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_bank_code`
--

LOCK TABLES `cd_bank_code` WRITE;
/*!40000 ALTER TABLE `cd_bank_code` DISABLE KEYS */;
INSERT INTO `cd_bank_code` VALUES (1,'CCB','中国建设银行'),(2,'ICBC','中国工商银行'),(3,'ABC','中国农业银行'),(4,'BOC','中国银行'),(5,'COMM','交通银行'),(6,'PSBC','中国邮政储蓄银行'),(7,'CMB','招商银行'),(8,'CMBC','中国民生银行'),(9,'SPDB','浦发银行'),(10,'CIIC','中信银行'),(11,'CEB','中国光大银行'),(12,'HXBANK','华夏银行'),(13,'GDB','广发银行'),(14,'CIB','兴业银行'),(15,'SPABANK','平安银行'),(16,'EGBANK','恒丰银行'),(17,'CZBANK','浙商银行'),(18,'BOHAIB','渤海银行'),(19,'HSBANK','徽商银行'),(20,'ARCU','安徽省农村信用社'),(21,'JSBANK','江苏银行'),(22,'NJCB','南京银行'),(23,'BOSZ','苏州银行'),(24,'ANBANK','网商银行'),(25,'BJBANK','北京银行'),(26,'SHBANK','上海银行'),(27,'BJRCB','北京农商行'),(28,'ASCB','鞍山银行'),(29,'BSB','包商银行'),(30,'BDCBANK','保定银行'),(31,'BOCFCB','中银富登村镇银行'),(32,'JKRFCZYH','长春经开融丰村镇银行'),(33,'CRCBANK','重庆农村商业银行'),(34,'CSRCB','常熟农商银行'),(35,'CDCB','成都银行'),(36,'CCQGB','重庆三峡银行'),(37,'CSCB','长沙银行'),(38,'CQBANK','重庆银行'),(39,'LYRCZYH','长春绿园融泰村镇银行'),(40,'BOCD','承德银行'),(41,'CCHRCZYH','长春朝阳和润村镇银行'),(42,'BOCZ','沧州银行'),(43,'BOCY','朝阳银行'),(44,'CABANK','长安银行'),(45,'CDRCB','成都农商银行'),(46,'DRCBCL','东莞农村商业银行'),(47,'HKBEA','东亚银行'),(48,'DLB','大连银行'),(49,'DYCCB','东营银行'),(50,'DZBANK','德州银行'),(51,'DLRCB','大连农村商业银行'),(52,'DYCB','长城华西银行'),(53,'BOD','东莞银行'),(54,'ORBANK','鄂尔多斯银行'),(55,'FXCB','阜新银行'),(56,'FDB','富滇银行'),(57,'FJHXBC','福建海峡银行'),(58,'FBBANK','富邦华一银行'),(59,'NYBANK','广东南粤银行'),(60,'BGB','广西北部湾银行'),(61,'GRCB','广州农村商业银行'),(62,'GCB','广州银行'),(63,'GYCB','贵阳银行'),(64,'GSBANK','甘肃银行'),(65,'GHB','广东华兴银行'),(66,'GZB','赣州银行'),(67,'ZYCBANK','贵州银行'),(68,'GLBANK','桂林银行'),(69,'UBCHN','海口联合农商银行'),(70,'HANABANK','韩亚银行'),(71,'HRXJB','华融湘江银行'),(72,'HBC','湖北银行'),(73,'HLDB','葫芦岛银行'),(74,'HSBK','衡水市商业银行'),(75,'BHB','河北银行'),(76,'HZCB','杭州银行'),(77,'HRBANK','哈尔滨银行'),(78,'QYBANK','韩国企业银行'),(79,'HDBANK','邯郸银行'),(80,'HKB','汉口银行'),(81,'HZCCB','湖州银行'),(82,'HSCZB','湖商村镇银行'),(83,'JSB','晋商银行'),(84,'JHBANK','金华银行'),(85,'BOJZ','锦州银行'),(86,'JZCBANK','焦作中旅银行'),(87,'JZBANK','晋中银行'),(88,'JLBANK','吉林银行'),(89,'JJBANK','九江银行'),(90,'NCB','江西银行'),(91,'JNBANK','济宁银行'),(92,'JINCHB','晋城银行'),(93,'CZRCB','江南农村商业银行'),(94,'JRCB','江苏江阴农村商业银行'),(95,'JXBANK','嘉兴银行'),(96,'CJCCB','江苏长江商业银行'),(97,'CRCB','江苏太仓农村商业银行'),(98,'KLB','昆仑银行'),(99,'KSRB','昆山农村商业银行'),(100,'LSBANK','莱商银行'),(101,'LSBC','临商银行'),(102,'LANGFB','廊坊银行'),(103,'LHBANK','漯河银行'),(104,'LYCB','辽阳银行'),(105,'DAQINGB','龙江银行'),(106,'LSCCB','乐山市商业银行'),(107,'LZYH','兰州银行'),(108,'URB','联合村镇银行'),(109,'BOL','洛阳银行'),(110,'LZCCB','柳州银行'),(111,'LUZBANK','泸州市商业银行'),(112,'MYBANK','绵阳市商业银行'),(113,'KJCZYH','梅县客家村镇银行'),(114,'NXRCU','宁夏黄河农村商业银行'),(115,'H3CB','内蒙古银行'),(116,'CGNB','四川天府银行'),(117,'NXBANK','宁夏银行'),(118,'NBBANK','宁波银行'),(119,'NBCBANK','宁波通商银行'),(120,'BNY','南阳市商业银行'),(121,'NHB','南海农商银行'),(122,'PZHCCB','攀枝花市商业银行'),(123,'BOP','平顶山银行'),(124,'QLBANK','齐鲁银行'),(125,'QDCCB','青岛银行'),(126,'BOQZ','泉州银行'),(127,'BOQH','青海银行'),(128,'ZBCB','齐商银行'),(129,'QJCCB','曲靖市商业银行'),(130,'RZB','日照银行'),(131,'YDNSCZYH','尧都农商银行村镇银行'),(132,'SDEB','顺德农商银行'),(133,'SZSBK','石嘴山银行'),(134,'SJBANK','盛京银行'),(135,'SRCB','深圳农村商业银行'),(136,'SHRCB','上海农商银行'),(137,'SNCCB','遂宁银行'),(138,'SRBANK','上饶银行'),(139,'SXCB','绍兴银行'),(140,'JBHB','天津滨海农村商业银行'),(141,'ACCB','泰安银行'),(142,'CCB','天津银行'),(143,'ZCB','台州银行'),(144,'RCB','天津农商银行'),(145,'WHBANK','乌海银行'),(146,'KEB','外换银行'),(147,'WRCB','无锡农村商业银行'),(148,'BANKWF','潍坊银行'),(149,'WJRCB','吴江农村商业银行'),(150,'WZCB','温州银行'),(151,'WHRCB','武汉农村商业银行'),(152,'URMQCCB','乌鲁木齐银行'),(153,'WHCCB','威海市商业银行'),(154,'XMBANK','厦门银行'),(155,'XB','邢台银行'),(156,'XIB','厦门国际银行'),(157,'XABANK','西安银行'),(158,'BOSH','新韩银行'),(159,'BOYK','营口银行'),(160,'WOORI','友利银行'),(161,'YZBANK','银座村镇银行'),(162,'YBCCB','宜宾市商业银行'),(163,'YBANK','烟台银行'),(164,'YXCCB','云南红塔银行'),(165,'YKYHCCB','营口沿海银行'),(166,'NBYZ','宁波鄞州农商行'),(167,'RBOZ','珠海华润银行'),(168,'MBANK','浙江民泰商业银行'),(169,'ZZYH','枣庄银行'),(170,'ZRCBANK','张家港农村商业银行'),(171,'ZGCCB','自贡银行'),(172,'ZYB','中原银行'),(173,'CZCB','浙江稠州商业银行'),(174,'ZJKCCB','张家口银行'),(175,'ZJLCB','浙江泰隆商业银行'),(176,'ZZBANK','郑州银行'),(177,'JSRCU','江苏省农村信用社联合社'),(178,'FJNX','福建省农村信用社联合社'),(179,'GDRCC','广东省农村信用社联合社'),(180,'GZRCU','贵州省农村信用社联合社'),(181,'GXRCU','广西壮族自治区农村信用社联合社'),(182,'GSRCU','甘肃省农村信用社'),(183,'BOHN','海南省农村信用社'),(184,'HURCB','湖北省农信社'),(185,'HBRCU','河北省农村信用社'),(186,'HNRCU','河南省农村信用社'),(187,'HNRCC','湖南省农村信用社'),(188,'HLJRCU','黑龙江省农村信用社联合社'),(189,'JXRCU','江西省农村信用社'),(190,'ZJNX','浙江省农村信用社联合社'),(191,'YNRCC','云南省农村信用社'),(192,'XJRCU','新疆农村信用社'),(193,'SCRCU','四川省农村信用社联合社'),(194,'SDRCU','山东省农村信用社联合社'),(195,'SXRCCU','陕西省农信社'),(196,'SXRCU','山西省农村信用社'),(197,'QHRC','青海省农村信用社'),(198,'NMGNXS','内蒙古农村信用社联合社'),(199,'LNRCC','辽宁省农村信用社'),(200,'JLRCU','吉林省农村信用社联合社');
/*!40000 ALTER TABLE `cd_bank_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd_base_config`
--

DROP TABLE IF EXISTS `cd_base_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_base_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(50) NOT NULL,
  `data` text,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_base_config`
--

LOCK TABLES `cd_base_config` WRITE;
/*!40000 ALTER TABLE `cd_base_config` DISABLE KEYS */;
INSERT INTO `cd_base_config` VALUES (1,'site_title','TG统计机器人'),(2,'logo','/uploads/admin/202203/622b001247920.png'),(3,'keyword',''),(4,'descrip',''),(5,'copyright',''),(6,'filesize','100'),(7,'filetype','gif,png,jpg,jpeg,doc,docx,xls,xlsx,csv,pdf,rar,zip,txt,mp4,flv,wgt'),(8,'water_status','0'),(9,'water_position','5'),(10,'domain','填写您的网址'),(20,'water_alpha','90'),(21,'rate','10.3');
/*!40000 ALTER TABLE `cd_base_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd_field`
--

DROP TABLE IF EXISTS `cd_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(9) NOT NULL COMMENT '模块ID',
  `title` varchar(64) NOT NULL COMMENT '字段名称',
  `field` varchar(32) NOT NULL,
  `type` smallint(4) NOT NULL COMMENT '表单类型1输入框 2下拉框 3单选框 4多选框 5上传图片 6编辑器 7时间',
  `list_show` tinyint(4) DEFAULT NULL COMMENT '列表显示',
  `search_type` tinyint(4) DEFAULT NULL COMMENT '1精确匹配 2模糊搜索',
  `post_status` tinyint(4) DEFAULT NULL COMMENT '是否前台录入',
  `create_table_field` tinyint(4) DEFAULT NULL,
  `validate` varchar(32) DEFAULT NULL COMMENT '验证方式',
  `rule` mediumtext COMMENT '验证规则',
  `sortid` mediumint(9) DEFAULT '0' COMMENT '排序号',
  `sql` text COMMENT '字段配置数据源sql',
  `default_value` varchar(255) DEFAULT NULL,
  `datatype` varchar(32) DEFAULT NULL COMMENT '字段数据类型',
  `length` varchar(5) DEFAULT NULL COMMENT '字段长度',
  `indexdata` varchar(20) DEFAULT NULL COMMENT '索引',
  `show_condition` varchar(250) DEFAULT NULL,
  `item_config` text,
  `width` varchar(255) DEFAULT NULL COMMENT '单元格宽度',
  `datetime_config` varchar(250) DEFAULT NULL COMMENT '其他配置',
  `other_config` text,
  `belong_table` varchar(255) DEFAULT NULL COMMENT '虚拟字段所属表 用户多表关联',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `menu_id` (`menu_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=4545 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_field`
--

LOCK TABLES `cd_field` WRITE;
/*!40000 ALTER TABLE `cd_field` DISABLE KEYS */;
INSERT INTO `cd_field` VALUES (3801,3,'水印透明度','water_alpha',19,2,0,1,1,'',NULL,3622,NULL,NULL,'smallint','6',NULL,NULL,'',NULL,NULL,'{\"address_type\":\"1\"}',''),(3622,3,'绑定域名','domain',1,2,1,1,1,'',NULL,3623,NULL,NULL,'varchar','250',NULL,NULL,'',NULL,NULL,'[]',NULL),(3620,3,'水印位置','water_position',2,2,1,1,1,'',NULL,3620,NULL,NULL,'smallint','6',NULL,NULL,'[{\"key\":\"左上角水印\",\"val\":\"1\"},{\"key\":\"上居中水印\",\"val\":\"2\"},{\"key\":\"右上角水印\",\"val\":\"3\"},{\"key\":\"左居中水印\",\"val\":\"4\"},{\"key\":\"居中水印\",\"val\":\"5\"},{\"key\":\"右居中水印\",\"val\":\"6\"},{\"key\":\"左下角水印\",\"val\":\"7\"},{\"key\":\"下居中水印\",\"val\":\"8\"},{\"key\":\"右下角水印\",\"val\":\"9\"}]',NULL,NULL,'[]',NULL),(3619,3,'水印状态','water_status',4,2,1,1,1,'',NULL,3619,NULL,NULL,'smallint','6',NULL,NULL,'[{\"key\":\"正常\",\"val\":\"1\",\"label_color\":\"primary\"},{\"key\":\"禁用\",\"val\":\"0\",\"label_color\":\"danger\"}]',NULL,NULL,'[]',NULL),(3618,3,'文件类型','filetype',1,2,1,1,1,'',NULL,3618,NULL,NULL,'varchar','250',NULL,NULL,'',NULL,NULL,'[]',NULL),(3617,3,'上传配置','filesize',1,2,1,1,1,'',NULL,3617,NULL,'0','varchar','250',NULL,NULL,'',NULL,NULL,'[]',NULL),(3616,3,'站点版权','copyright',1,2,1,1,1,'',NULL,3616,NULL,NULL,'varchar','250',NULL,NULL,'',NULL,NULL,'[]',NULL),(3588,7,'角色名称','name',1,2,1,1,0,',notempty',NULL,2,NULL,NULL,'varchar','36',NULL,NULL,'',NULL,NULL,'[]',NULL),(3589,7,'状态','status',6,2,1,1,0,'',NULL,3,NULL,NULL,'tinyint','4',NULL,NULL,'[{\"key\":\"正常\",\"val\":\"1\",\"label_color\":\"primary\"},{\"key\":\"禁用\",\"val\":\"0\",\"label_color\":\"danger\"}]',NULL,NULL,'[]',NULL),(3591,7,'描述','description',1,2,0,1,0,NULL,NULL,5,NULL,NULL,'text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3592,8,'编号','id',1,2,0,0,0,NULL,NULL,1,NULL,NULL,'int','11',NULL,NULL,NULL,'70',NULL,NULL,NULL),(3593,8,'应用名','application_name',1,2,0,1,0,NULL,NULL,2,NULL,NULL,'varchar','50',NULL,NULL,NULL,'100',NULL,NULL,NULL),(3594,8,'用户名','username',1,2,1,1,0,NULL,NULL,3,NULL,NULL,'varchar','250',NULL,NULL,NULL,'100',NULL,NULL,NULL),(3595,8,'请求url','url',1,3,0,1,0,NULL,NULL,4,NULL,NULL,'varchar','250',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3596,8,'客户端ip','ip',1,2,0,1,0,NULL,NULL,5,NULL,NULL,'varchar','250',NULL,NULL,NULL,'200',NULL,NULL,NULL),(3597,8,'浏览器信息','useragent',8,0,0,1,0,NULL,NULL,6,NULL,NULL,'varchar','250',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3598,8,'请求内容','content',8,0,0,1,0,NULL,NULL,7,NULL,NULL,'text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3599,8,'异常信息','errmsg',8,0,0,1,0,NULL,NULL,8,NULL,NULL,'varchar','250',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3600,8,'创建时间','create_time',11,2,1,1,0,'',NULL,9,NULL,NULL,'int','11',NULL,NULL,'','200','datetime','[]',NULL),(3601,8,'类型','type',2,2,1,1,0,'',NULL,10,NULL,NULL,'smallint','6',NULL,NULL,'[{\"key\":\"登录日志\",\"val\":\"1\",\"label_color\":\"info\"},{\"key\":\"操作日志\",\"val\":\"2\",\"label_color\":\"warning\"},{\"key\":\"异常日志\",\"val\":\"3\",\"label_color\":\"danger\"}]','200',NULL,'[]',NULL),(3603,4,'编号','id',1,2,0,0,0,NULL,NULL,1,NULL,NULL,'int','11',NULL,NULL,NULL,'70',NULL,NULL,NULL),(3604,4,'配置名称','title',1,2,0,1,0,NULL,NULL,2,NULL,NULL,'varchar','250',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3605,4,'覆盖原图','upload_replace',6,2,1,1,0,'',NULL,3,NULL,NULL,'tinyint','4',NULL,NULL,'[{\"key\":\"开启\",\"val\":\"1\"},{\"key\":\"关闭\",\"val\":\"0\"}]',NULL,NULL,'[]',NULL),(3606,4,'生成缩略图','thumb_status',6,2,1,1,0,'',NULL,4,NULL,NULL,'tinyint','4',NULL,NULL,'[{\"key\":\"开启\",\"val\":\"1\"},{\"key\":\"关闭\",\"val\":\"0\"}]',NULL,NULL,'[]',NULL),(3607,4,'缩略图宽','thumb_width',1,2,0,1,0,NULL,NULL,5,NULL,NULL,'varchar','250',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3608,4,'缩略图高','thumb_height',1,2,0,1,0,NULL,NULL,6,NULL,NULL,'varchar','250',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3609,4,'缩放类型','thumb_type',2,2,1,1,0,'',NULL,7,NULL,NULL,'smallint','6',NULL,NULL,'[{\"key\":\"等比例缩放\",\"val\":\"1\"},{\"key\":\"缩放后填充\",\"val\":\"2\"},{\"key\":\"居中裁剪\",\"val\":\"3\"},{\"key\":\"左上角裁剪\",\"val\":\"4\"},{\"key\":\"右下角裁剪\",\"val\":\"5\"},{\"key\":\"固定尺寸缩放\",\"val\":\"6\"}]',NULL,NULL,'[]',NULL),(3611,3,'编号','id',1,2,NULL,NULL,1,NULL,NULL,1,NULL,NULL,'int','11',NULL,NULL,NULL,'70',NULL,NULL,NULL),(3612,3,'站点名称','site_title',1,2,1,1,1,'',NULL,3612,NULL,NULL,'varchar','250',NULL,NULL,'',NULL,NULL,'{\"address_type\":\"1\"}',NULL),(3613,3,'站点logo','logo',13,2,0,1,1,'',NULL,3613,NULL,NULL,'varchar','250',NULL,NULL,'',NULL,NULL,'[]',NULL),(3614,3,'站点关键词','keyword',18,2,1,1,1,'',NULL,3614,NULL,NULL,'varchar','250',NULL,NULL,'',NULL,NULL,'[]',NULL),(3615,3,'站点描述','descrip',8,2,1,1,1,'','',3615,'','','text','0','','','','','','[]',''),(3584,6,'备注','note',1,2,0,1,0,NULL,NULL,7,NULL,NULL,'varchar','250',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3585,6,'状态','status',6,2,1,1,0,'',NULL,8,NULL,NULL,'tinyint','4',NULL,NULL,'[{\"key\":\"正常\",\"val\":\"1\",\"label_color\":\"primary\"},{\"key\":\"禁用\",\"val\":\"0\",\"label_color\":\"danger\"}]',NULL,NULL,'[]',NULL),(3586,6,'创建时间','create_time',11,2,0,1,0,'',NULL,9,NULL,NULL,'int','11',NULL,NULL,'',NULL,'date','[]',NULL),(3583,6,'所属角色','role_id',2,0,1,1,0,'',NULL,6,'select role_id,name from pre_role',NULL,'smallint','6',NULL,NULL,'',NULL,NULL,'[]',NULL),(3582,6,'密码','pwd',7,0,0,1,0,NULL,NULL,4,NULL,NULL,'varchar','250',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3581,6,'用户名','user',1,2,1,1,0,NULL,NULL,3,NULL,NULL,'varchar','250',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3579,6,'编号','user_id',1,2,0,0,0,NULL,NULL,1,NULL,NULL,'int','11',NULL,NULL,'','70',NULL,'null',NULL),(3580,6,'用户姓名','name',1,2,1,1,0,NULL,NULL,2,NULL,NULL,'varchar','250',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3759,6,'所属分组','name',1,2,NULL,0,0,'',NULL,5,NULL,NULL,'varchar','250',NULL,NULL,'',NULL,NULL,'{\"address_type\":\"1\"}','role'),(4375,7,'编号','role_id',1,2,NULL,NULL,1,NULL,NULL,1,NULL,NULL,'int','11',NULL,NULL,NULL,'70',NULL,NULL,NULL),(4506,49,'编号','id',1,2,NULL,NULL,1,NULL,NULL,1,NULL,NULL,'int','11',NULL,NULL,NULL,'70',NULL,NULL,NULL),(4507,50,'编号','id',1,2,NULL,NULL,1,NULL,NULL,1,NULL,NULL,'int','11',NULL,NULL,NULL,'70',NULL,NULL,NULL),(4508,50,'分类名称','name',1,2,1,1,1,'',NULL,4508,'','','varchar','250',NULL,NULL,'',NULL,NULL,'{\"address_type\":\"1\",\"now_time\":true,\"placeholder\":\"\",\"rand_config\":\"\",\"filetype\":\"\",\"liandong_field\":\"\",\"sort_status\":false}',''),(4509,50,'包含群','coen',3,2,1,1,1,'',NULL,4509,'select id,name from cd_group','','varchar','250',NULL,NULL,'',NULL,NULL,'[]',''),(4510,49,'群名称','name',1,2,1,1,1,'',NULL,4510,'','','varchar','250',NULL,NULL,'',NULL,NULL,'{\"address_type\":\"1\",\"now_time\":true,\"placeholder\":\"\",\"rand_config\":\"\",\"filetype\":\"\",\"liandong_field\":\"\",\"sort_status\":false}',''),(4511,49,'TG群id','tg_groupid',1,2,1,1,1,'',NULL,4511,'','','varchar','250',NULL,NULL,'',NULL,NULL,'[]',''),(4523,53,'公告图片','img',13,2,0,1,1,'',NULL,4523,'','','varchar','250',NULL,NULL,'',NULL,NULL,'{\"upload_type\":\"2\",\"filetype\":\"png,jpg,jpeg,gif\"}',''),(4524,53,'公告内容','msg',1,2,1,1,1,'',NULL,4524,'','','varchar','999',NULL,NULL,'',NULL,NULL,'[]',''),(4525,54,'编号','id',1,2,NULL,NULL,1,NULL,NULL,1,NULL,NULL,'int','11',NULL,NULL,NULL,'70',NULL,NULL,NULL),(4526,54,'群id','group_id',2,2,1,1,1,'',NULL,4539,'select tg_groupid,name from cd_group','','smallint','6',NULL,NULL,'',NULL,NULL,'{\"address_type\":\"1\",\"now_time\":true,\"placeholder\":\"\",\"rand_config\":\"\",\"filetype\":\"\",\"liandong_field\":\"\",\"sort_status\":false}',''),(4521,53,'选择群','group',3,2,1,1,1,'',NULL,4521,'select id,name from cd_group','','varchar','250',NULL,NULL,'',NULL,NULL,'[]',''),(4522,53,'选择群分类','fenlei',3,2,1,1,1,'',NULL,4522,'select id,name from cd_groupclass','','varchar','250',NULL,NULL,'',NULL,NULL,'[]',''),(4543,56,'用户名','tgname',1,2,1,1,1,'',NULL,4543,'','','varchar','250',NULL,NULL,'',NULL,NULL,'[]',''),(4542,56,'用户uid','tguid',1,2,1,1,1,'',NULL,4542,'','','varchar','250',NULL,NULL,'',NULL,NULL,'{\"address_type\":\"1\",\"now_time\":true,\"placeholder\":\"\",\"rand_config\":\"\",\"filetype\":\"\",\"liandong_field\":\"\",\"sort_status\":false}',''),(4541,56,'编号','id',1,2,NULL,NULL,1,NULL,NULL,1,NULL,NULL,'int','11',NULL,NULL,NULL,'70',NULL,NULL,NULL),(4529,55,'机器人token','token',1,2,1,1,1,'',NULL,4529,'','','varchar','999',NULL,NULL,'','500',NULL,'{\"address_type\":\"1\",\"now_time\":true,\"placeholder\":\"\",\"rand_config\":\"\",\"filetype\":\"\",\"liandong_field\":\"\",\"sort_status\":false}',''),(4530,55,'新成员欢迎语','hy',1,2,1,1,1,'',NULL,4530,'','','varchar','999',NULL,NULL,'','500',NULL,'[]',''),(4531,54,'银行信息','bank',1,2,1,1,1,'',NULL,4531,'','','varchar','250',NULL,NULL,'',NULL,NULL,'{\"address_type\":\"1\",\"now_time\":true,\"placeholder\":\"\",\"rand_config\":\"\",\"filetype\":\"\",\"liandong_field\":\"\",\"sort_status\":false}',''),(4532,54,'交易时间','jytime',9,2,0,1,1,'',NULL,4532,'','','int','10',NULL,NULL,'',NULL,'datetime','[]',''),(4533,54,'交易金额','amount',1,2,1,1,1,'','/(^[1-9]([0-9]+)?(\\.[0-9]{1,2})?$)|(^(0){1}$)|(^[0-9]\\.[0-9]([0-9])?$)/',4533,'','','varchar','250',NULL,NULL,'',NULL,NULL,'[]',''),(4534,54,'对方户名','accname',1,2,1,1,1,'',NULL,4534,'','','varchar','250',NULL,NULL,'',NULL,NULL,'[]',''),(4535,54,'冻结状态','dj',6,2,1,1,1,'',NULL,4535,'','0','tinyint','4',NULL,NULL,'[{\"key\":\"冻结\",\"val\":\"1\",\"label_color\":\"danger\"},{\"key\":\"正常\",\"val\":\"0\",\"label_color\":\"success\"}]',NULL,NULL,'[]',''),(4536,54,'认领状态','rl',2,2,1,1,1,'',NULL,4536,'','0','smallint','6',NULL,NULL,'[{\"key\":\"正常\",\"val\":\"1\",\"label_color\":\"success\"},{\"key\":\"未认领\",\"val\":\"0\",\"label_color\":\"danger\"}]',NULL,NULL,'[]',''),(4537,54,'用户id','tgid',1,2,1,1,1,'',NULL,4537,'','','varchar','250',NULL,NULL,'',NULL,NULL,'[]',''),(4538,54,'用户名','tgname',1,2,1,1,1,'',NULL,4538,'','','varchar','250',NULL,NULL,'',NULL,NULL,'[]',''),(4539,54,'群名称','name',1,2,1,0,0,'',NULL,4540,'','','varchar','250',NULL,NULL,'',NULL,NULL,'[]','group'),(4540,54,'认领时间','rltime',11,2,0,1,1,'',NULL,4541,'','','int','11',NULL,NULL,'',NULL,NULL,'[]',''),(4544,54,'分类','fl',1,2,1,1,1,'',NULL,2,'','','varchar','250',NULL,NULL,'',NULL,NULL,'{\"address_type\":\"1\",\"now_time\":true,\"placeholder\":\"\",\"rand_config\":\"\",\"filetype\":\"\",\"liandong_field\":\"\",\"sort_status\":false}','');
/*!40000 ALTER TABLE `cd_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd_file`
--

DROP TABLE IF EXISTS `cd_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filepath` varchar(255) DEFAULT NULL COMMENT '图片路径',
  `hash` varchar(32) DEFAULT NULL COMMENT '文件hash值',
  `create_time` int(10) DEFAULT NULL COMMENT '创建时间',
  `member_id` int(11) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `hash` (`hash`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=321 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_file`
--

LOCK TABLES `cd_file` WRITE;
/*!40000 ALTER TABLE `cd_file` DISABLE KEYS */;
INSERT INTO `cd_file` VALUES (319,'/uploads/admin/202203/622b001247920.png','b8846ff7e7431bcf36ecc522490abe87',1646985234,NULL);
/*!40000 ALTER TABLE `cd_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd_group`
--

DROP TABLE IF EXISTS `cd_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(250) DEFAULT NULL COMMENT '群名称',
  `tg_groupid` varchar(250) DEFAULT NULL COMMENT 'TG群id',
  `operators` text COMMENT '本群操作人',
  `cutoff_time` varchar(10) DEFAULT NULL COMMENT '日切时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_group`
--

LOCK TABLES `cd_group` WRITE;
/*!40000 ALTER TABLE `cd_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `cd_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd_groupclass`
--

DROP TABLE IF EXISTS `cd_groupclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_groupclass` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL COMMENT '分类名称',
  `coen` varchar(250) DEFAULT NULL COMMENT '包含群',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_groupclass`
--

LOCK TABLES `cd_groupclass` WRITE;
/*!40000 ALTER TABLE `cd_groupclass` DISABLE KEYS */;
INSERT INTO `cd_groupclass` VALUES (1,'分类测试1','7,8');
/*!40000 ALTER TABLE `cd_groupclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd_log`
--

DROP TABLE IF EXISTS `cd_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `application_name` varchar(50) DEFAULT NULL COMMENT '应用名称',
  `username` varchar(250) DEFAULT NULL COMMENT '操作用户',
  `url` varchar(250) DEFAULT NULL COMMENT '请求url',
  `ip` varchar(250) DEFAULT NULL COMMENT 'ip',
  `useragent` varchar(250) DEFAULT NULL COMMENT 'useragent',
  `content` text COMMENT '请求内容',
  `errmsg` text COMMENT '异常信息',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `type` smallint(6) DEFAULT NULL COMMENT '类型',
  `times` int(11) DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_log`
--

LOCK TABLES `cd_log` WRITE;
/*!40000 ALTER TABLE `cd_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `cd_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd_member`
--

DROP TABLE IF EXISTS `cd_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` varchar(50) DEFAULT NULL COMMENT '群ID',
  `tgid` varchar(50) DEFAULT NULL COMMENT '用户ID',
  `tgname` varchar(255) DEFAULT NULL COMMENT '用户名',
  `createtime` int(11) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL COMMENT 'TG用户名',
  PRIMARY KEY (`id`),
  KEY `group_id` (`group_id`),
  KEY `tgid` (`tgid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='群成员表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_member`
--

LOCK TABLES `cd_member` WRITE;
/*!40000 ALTER TABLE `cd_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `cd_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd_menu`
--

DROP TABLE IF EXISTS `cd_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` mediumint(9) DEFAULT '0' COMMENT '父级id',
  `controller_name` varchar(32) DEFAULT NULL COMMENT '模块名称',
  `title` varchar(64) DEFAULT NULL COMMENT '模块标题',
  `pk` varchar(36) DEFAULT NULL COMMENT '主键名',
  `table_name` varchar(32) DEFAULT NULL COMMENT '模块数据库表',
  `create_code` tinyint(4) DEFAULT NULL COMMENT '是否允许生成模块',
  `status` tinyint(4) DEFAULT '1' COMMENT '0隐藏 1显示',
  `sortid` mediumint(9) DEFAULT '0' COMMENT '排序号',
  `create_table` tinyint(4) DEFAULT NULL COMMENT '是否生成数据库表',
  `url` varchar(64) DEFAULT NULL COMMENT '组件路径',
  `icon` varchar(32) DEFAULT NULL COMMENT 'icon字体图标',
  `tab_config` varchar(250) DEFAULT NULL COMMENT 'tab选项卡菜单配置',
  `app_id` int(11) DEFAULT NULL COMMENT '所属模块',
  `is_post` tinyint(4) DEFAULT NULL COMMENT '是否允许投稿',
  `upload_config_id` smallint(5) DEFAULT NULL COMMENT '上传配置id',
  `connect` varchar(20) DEFAULT NULL COMMENT '数据库连接',
  `page_type` tinyint(4) DEFAULT NULL COMMENT '页面类型',
  `home_show` tinyint(4) DEFAULT '0' COMMENT '首页快捷导航显示状态',
  `menu_pic` varchar(250) DEFAULT NULL COMMENT '快捷导航的图片',
  PRIMARY KEY (`menu_id`) USING BTREE,
  KEY `controller_name` (`controller_name`) USING BTREE,
  KEY `module_id` (`app_id`) USING BTREE,
  KEY `pid` (`pid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_menu`
--

LOCK TABLES `cd_menu` WRITE;
/*!40000 ALTER TABLE `cd_menu` DISABLE KEYS */;
INSERT INTO `cd_menu` VALUES (1,0,'','首页','','',0,1,1,0,'/admin/Index/main.html','el-icon-s-home',NULL,1,NULL,NULL,NULL,NULL,0,NULL),(2,0,'Config','配置管理',NULL,NULL,NULL,1,1000,NULL,NULL,'el-icon-s-data',NULL,1,NULL,NULL,NULL,NULL,0,NULL),(3,2,'Baseconfig','基本配置','id','base_config',1,1,1,1,NULL,NULL,NULL,1,NULL,NULL,'mysql',NULL,0,NULL),(4,2,'Uploadconfig','缩略图配置','id','upload_config',1,1,2,1,NULL,'el-icon-upload2',NULL,1,NULL,NULL,'mysql',1,0,NULL),(5,0,'System','系统管理','','',0,1,1001,0,'','el-icon-setting',NULL,1,0,NULL,'mysql',1,0,NULL),(6,5,'Adminuser','用户管理','user_id','admin_user',1,1,6,1,'','el-icon-user',NULL,1,0,NULL,'mysql',1,0,NULL),(7,5,'Role','角色管理','role_id','role',1,1,7,1,'','el-icon-s-check',NULL,1,0,NULL,'mysql',1,0,NULL),(8,5,'Log','日志管理','id','log',1,1,8,1,'','el-icon-s-promotion',NULL,1,0,NULL,'mysql',1,0,NULL),(49,48,'Group','群列表','id','group',1,1,49,1,'',NULL,NULL,1,0,0,'mysql',1,0,''),(48,0,'','群管理','','',1,1,48,0,'',NULL,NULL,1,0,0,'mysql',1,0,''),(50,48,'Groupclass','群分类','id','groupclass',1,1,50,1,'',NULL,NULL,1,0,0,'mysql',1,0,''),(54,0,'Order','账单列表','id','order',1,1,54,1,'',NULL,NULL,1,0,0,'mysql',1,0,''),(53,0,'Qunfa','群发公告','id','qunfa',1,1,53,1,'',NULL,NULL,1,0,0,'mysql',2,0,''),(55,0,'Robotconfig','机器人设置','robotconfig_id','robotconfig',1,1,55,1,'',NULL,NULL,1,0,0,'mysql',2,0,''),(56,0,'User','TG用户列表','id','user',1,1,56,1,'',NULL,NULL,1,0,0,'mysql',1,0,''),(57,48,'GroupOrder','群账单',NULL,NULL,NULL,1,99,0,'/admin/GroupOrder/index.html','el-icon-s-data',NULL,1,NULL,NULL,'mysql',1,0,NULL);
/*!40000 ALTER TABLE `cd_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd_order`
--

DROP TABLE IF EXISTS `cd_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` varchar(255) DEFAULT NULL COMMENT '群id',
  `bank` varchar(250) DEFAULT NULL COMMENT '银行信息',
  `jytime` int(10) DEFAULT NULL COMMENT '交易时间',
  `amount` varchar(250) DEFAULT NULL COMMENT '交易金额',
  `accname` varchar(250) DEFAULT NULL COMMENT '对方户名',
  `dj` tinyint(4) DEFAULT '0' COMMENT '冻结状态',
  `rl` smallint(6) DEFAULT '0' COMMENT '认领状态',
  `tgid` varchar(250) DEFAULT NULL COMMENT '用户id',
  `tgname` varchar(250) DEFAULT NULL COMMENT '用户名',
  `group_name` varchar(250) DEFAULT NULL COMMENT '群名称',
  `rltime` int(11) DEFAULT NULL COMMENT '认领时间',
  `zd` int(11) DEFAULT '0' COMMENT '手动自动0自动1手动',
  `fl` varchar(250) DEFAULT NULL COMMENT '分类',
  `usdt` decimal(20,3) DEFAULT '0.000' COMMENT 'USDT金额',
  `operator_name` varchar(255) DEFAULT NULL COMMENT '操作人名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_order`
--

LOCK TABLES `cd_order` WRITE;
/*!40000 ALTER TABLE `cd_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `cd_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd_qunfa`
--

DROP TABLE IF EXISTS `cd_qunfa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_qunfa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_qunfa`
--

LOCK TABLES `cd_qunfa` WRITE;
/*!40000 ALTER TABLE `cd_qunfa` DISABLE KEYS */;
INSERT INTO `cd_qunfa` VALUES (1,'group','1,2,3'),(2,'fenlei',''),(3,'img','/uploads/admin/202203/622b001247920.png'),(4,'msg','测试');
/*!40000 ALTER TABLE `cd_qunfa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd_robotconfig`
--

DROP TABLE IF EXISTS `cd_robotconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_robotconfig` (
  `robotconfig_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`robotconfig_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_robotconfig`
--

LOCK TABLES `cd_robotconfig` WRITE;
/*!40000 ALTER TABLE `cd_robotconfig` DISABLE KEYS */;
INSERT INTO `cd_robotconfig` VALUES (1,'token','机器人api'),(2,'hy','新进群欢迎语'),(3,'gl','机器人管理员用户名多个可用,隔开');
/*!40000 ALTER TABLE `cd_robotconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd_role`
--

DROP TABLE IF EXISTS `cd_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(36) DEFAULT NULL COMMENT '分组名称',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态',
  `pid` smallint(6) DEFAULT NULL COMMENT '所属父类',
  `description` text COMMENT '描述',
  `access` longtext COMMENT '权限节点',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_role`
--

LOCK TABLES `cd_role` WRITE;
/*!40000 ALTER TABLE `cd_role` DISABLE KEYS */;
INSERT INTO `cd_role` VALUES (1,'超级管理员',1,0,'超级管理员','');
/*!40000 ALTER TABLE `cd_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd_upload_config`
--

DROP TABLE IF EXISTS `cd_upload_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_upload_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `title` varchar(250) DEFAULT NULL COMMENT '配置名称',
  `upload_replace` tinyint(4) DEFAULT NULL COMMENT '覆盖同名文件',
  `thumb_status` tinyint(4) DEFAULT NULL COMMENT '缩图开关',
  `thumb_width` varchar(250) DEFAULT NULL COMMENT '缩放宽度',
  `thumb_height` varchar(250) DEFAULT NULL COMMENT '缩放高度',
  `thumb_type` smallint(6) DEFAULT NULL COMMENT '缩图方式',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_upload_config`
--

LOCK TABLES `cd_upload_config` WRITE;
/*!40000 ALTER TABLE `cd_upload_config` DISABLE KEYS */;
INSERT INTO `cd_upload_config` VALUES (1,'默认配置',1,1,'600','400',1);
/*!40000 ALTER TABLE `cd_upload_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd_user`
--

DROP TABLE IF EXISTS `cd_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `tguid` varchar(250) DEFAULT NULL COMMENT '用户uid',
  `tgname` varchar(250) DEFAULT NULL COMMENT '用户名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_user`
--

LOCK TABLES `cd_user` WRITE;
/*!40000 ALTER TABLE `cd_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `cd_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'tgbot'
--

--
-- Dumping routines for database 'tgbot'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-29 21:27:21
