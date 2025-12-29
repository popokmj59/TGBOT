-- MySQL dump 10.13  Distrib 5.7.44, for Linux (x86_64)
--
-- Host: localhost    Database: tgapi11227
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='地址监听表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_address_monitor`
--

LOCK TABLES `cd_address_monitor` WRITE;
/*!40000 ALTER TABLE `cd_address_monitor` DISABLE KEYS */;
INSERT INTO `cd_address_monitor` VALUES (1,'6744032880','TSE8VdohLFyFZKNiFFKpzVub6P66666666',1766924411000,1766924411);
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
INSERT INTO `cd_base_config` VALUES (1,'site_title','TG统计机器人'),(2,'logo','/uploads/admin/202203/622b001247920.png'),(3,'keyword',''),(4,'descrip',''),(5,'copyright',''),(6,'filesize','100'),(7,'filetype','gif,png,jpg,jpeg,doc,docx,xls,xlsx,csv,pdf,rar,zip,txt,mp4,flv,wgt'),(8,'water_status','0'),(9,'water_position','5'),(10,'domain','https://tgapi.mrs666.com/'),(20,'water_alpha','90'),(21,'rate','10.3');
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
INSERT INTO `cd_file` VALUES (319,'/uploads/admin/202203/622b001247920.png','b8846ff7e7431bcf36ecc522490abe87',1646985234,NULL),(320,'https://tgapi.mrs666.com//uploads/admin/202512/694f9eb488cdd.jpg','93ae2d3a0f22f784f27f24e23f2804a7',1766825652,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_group`
--

LOCK TABLES `cd_group` WRITE;
/*!40000 ALTER TABLE `cd_group` DISABLE KEYS */;
INSERT INTO `cd_group` VALUES (7,'百度云盘 汇率10.3','-1002632470398',NULL,NULL),(8,'测试机器人2 汇率13','-5120648689','feng_sg','06:00'),(9,'秘密小花园-汇率8.6.8 汇率15','-5067922179',NULL,'00:00'),(10,'6200合财供-天行-小刘-汇率8.35','-4936235361',NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_log`
--

LOCK TABLES `cd_log` WRITE;
/*!40000 ALTER TABLE `cd_log` DISABLE KEYS */;
INSERT INTO `cd_log` VALUES (1,'admin','admin','http://yyz.me/Mongo/add','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36','{\"title\":\"gfgf\"}',NULL,1646020874,2,NULL),(2,'admin','admin','http://yyz.me/Link/add','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36','{\"title\":\"测试内容\"}',NULL,1646040781,2,NULL),(3,'admin','admin','http://yyz.me/Link/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36','{\"link_id\":1}',NULL,1646040786,2,NULL),(4,'admin','admin','http://yyz.me/Role/add','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36','{\"name\":\"普通\",\"status\":1,\"description\":\"\",\"access\":[\"\\/admin\\/Index\\/main.html\",\"admin\\/Config\",\"admin\\/Baseconfig\",\"\\/admin\\/Baseconfig\\/index.html\",\"admin\\/Uploadconfig\",\"\\/admin\\/Uploadconfig\\/index.html\",\"\\/admin\\/Uploadconfig\\/updateExt.html\",\"\\/admin\\/Uploadconfig\\/add.html\",\"\\/admin\\/Uploadconfig\\/update.html\",\"\\/admin\\/Uploadconfig\\/delete.html\",\"\\/admin\\/Uploadconfig\\/detail.html\",\"\\/admin\\/Uploadconfig\\/getUpdateInfo.html\"]}',NULL,1646041089,2,NULL),(5,'admin','admin','http://yyz.me/Adminuser/add','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36','{\"name\":\"test01\",\"user\":\"test01\",\"pwd\":\"6yhn7ujm\",\"role_id\":1,\"note\":\"\",\"status\":1,\"create_time\":\"\"}',NULL,1646041103,2,NULL),(6,'admin','test01','http://yyz.me/Login/index.html','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36',NULL,NULL,1646041121,1,NULL),(7,'admin','test01','http://yyz.me/Adminuser/update','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36','{\"user_id\":31,\"name\":\"test01\",\"user\":\"test01\",\"role_id\":51,\"note\":\"\",\"status\":1,\"create_time\":\"2022-02-28 17:38:23\"}',NULL,1646041140,2,NULL),(8,'admin','test01','http://yyz.me/Login/index.html','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36',NULL,NULL,1646041151,1,NULL),(9,'admin','admin','http://yyz.me/Login/index.html','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36',NULL,NULL,1646041240,1,NULL),(10,'admin','admin','http://yyz.me/Role/update','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36','{\"role_id\":51,\"name\":\"普通\",\"status\":1,\"description\":\"\",\"access\":[\"\\/admin\\/Index\\/main.html\",\"admin\\/Base\",\"http:\\/\\/yyz.me\\/Base\\/resetPwd.html\",\"admin\\/Config\",\"admin\\/Baseconfig\",\"\\/admin\\/Baseconfig\\/index.html\",\"admin\\/Uploadconfig\",\"\\/admin\\/Uploadconfig\\/index.html\",\"\\/admin\\/Uploadconfig\\/updateExt.html\",\"\\/admin\\/Uploadconfig\\/add.html\",\"\\/admin\\/Uploadconfig\\/update.html\",\"\\/admin\\/Uploadconfig\\/delete.html\",\"\\/admin\\/Uploadconfig\\/detail.html\",\"\\/admin\\/Uploadconfig\\/getUpdateInfo.html\"]}',NULL,1646041249,2,NULL),(11,'admin','test01','http://yyz.me/Login/index.html','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36',NULL,NULL,1646041268,1,NULL),(12,'admin','admin','http://yyz.me/admin/Login/index.html','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36',NULL,NULL,1646041328,1,NULL),(13,'admin','admin','http://yyz.me/admin/Role/update','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36','{\"role_id\":51,\"name\":\"普通\",\"status\":1,\"description\":\"\",\"access\":[\"\\/admin\\/Index\\/main.html\",\"admin\\/Base\",\"\\/admin\\/Base\\/resetPwd.html\",\"admin\\/Config\",\"admin\\/Baseconfig\",\"\\/admin\\/Baseconfig\\/index.html\",\"admin\\/Uploadconfig\",\"\\/admin\\/Uploadconfig\\/index.html\",\"\\/admin\\/Uploadconfig\\/updateExt.html\",\"\\/admin\\/Uploadconfig\\/add.html\",\"\\/admin\\/Uploadconfig\\/update.html\",\"\\/admin\\/Uploadconfig\\/delete.html\",\"\\/admin\\/Uploadconfig\\/detail.html\",\"\\/admin\\/Uploadconfig\\/getUpdateInfo.html\"]}',NULL,1646041338,2,NULL),(14,'admin','test01','http://yyz.me/admin/Login/index.html','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36',NULL,NULL,1646041354,1,NULL),(15,'admin','admin','http://yyz.me/admin/Login/index.html','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36',NULL,NULL,1646041395,1,NULL),(16,'admin','admin','http://yyz.me/admin/Adminuser/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36','{\"user_id\":31}',NULL,1646041470,2,NULL),(17,'admin','admin','http://yyz.me/admin/Role/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36','{\"role_id\":51}',NULL,1646041474,2,NULL),(18,'admin','admin','http://11.fanlipt.com/admin/Login/index.html','222.211.27.26','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36',NULL,NULL,1646984733,1,NULL),(19,'admin','admin','http://11.fanlipt.com/admin/Adminuser/update','222.211.27.26','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','{\"user_id\":1,\"name\":\"TG\",\"user\":\"admin\",\"role_id\":1,\"note\":\"超级管理员\",\"status\":1,\"create_time\":\"2019-01-27 11:15:19\"}',NULL,1646984806,2,NULL),(20,'admin',NULL,'http://11.fanlipt.com/admin/Sys.Base/create','171.22.195.23','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','{\"menu_id\":48}','SQLSTATE[42S02]: Base table or view not found: 1146 Table \'tgtj.cd_\' doesn\'t exist',1646986300,3,NULL),(21,'admin',NULL,'http://11.fanlipt.com/admin/Sys.Base/create','171.22.195.23','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','{\"menu_id\":48}','SQLSTATE[42S02]: Base table or view not found: 1146 Table \'tgtj.cd_\' doesn\'t exist',1646986325,3,NULL),(22,'admin',NULL,'http://11.fanlipt.com/admin/Groupclass/index','222.211.27.26','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','{\"limit\":20,\"page\":1,\"order\":\"\",\"sort\":\"\"}','SQLSTATE[42000]: Syntax error or access violation: 1064 You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'group\' at line 1',1646987899,3,NULL),(23,'admin',NULL,'http://11.fanlipt.com/admin/Groupclass/getFieldList','222.211.27.26','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','[]','SQLSTATE[42000]: Syntax error or access violation: 1064 You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'group\' at line 1',1646987900,3,NULL),(24,'admin',NULL,'http://11.fanlipt.com/admin/Groupclass/index','222.211.27.26','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','{\"limit\":20,\"page\":1,\"order\":\"\",\"sort\":\"\"}','SQLSTATE[42000]: Syntax error or access violation: 1064 You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'group\' at line 1',1646987974,3,NULL),(25,'admin','admin','http://11.fanlipt.com/admin/Group/add','222.211.27.26','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','{\"name\":\"测试\",\"tg_groupid\":\"1\"}',NULL,1646988214,2,NULL),(26,'admin','admin','http://11.fanlipt.com/admin/Group/add','222.211.27.26','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','{\"name\":\"测试1\",\"tg_groupid\":\"2\"}',NULL,1646988220,2,NULL),(27,'admin','admin','http://11.fanlipt.com/admin/Group/add','222.211.27.26','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','{\"name\":\"测试2\",\"tg_groupid\":\"3\"}',NULL,1646988227,2,NULL),(28,'admin','admin','http://11.fanlipt.com/admin/Groupclass/add','222.211.27.26','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','{\"name\":\"分类测试1\",\"coen\":[\"1\",\"2\",\"3\"]}',NULL,1646988244,2,NULL),(29,'admin',NULL,'http://11.fanlipt.com/admin/Mass/getInfo','222.211.27.26','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','[]','SQLSTATE[42S02]: Base table or view not found: 1146 Table \'tgtj.cd_mass\' doesn\'t exist',1646989262,3,NULL),(30,'admin',NULL,'http://11.fanlipt.com/admin/Mass/index','222.211.27.26','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','{\"group\":[],\"fenlei\":[],\"img\":\"\",\"msg\":\"\"}','SQLSTATE[42S02]: Base table or view not found: 1146 Table \'tgtj.cd_mass\' doesn\'t exist',1646989263,3,NULL),(31,'admin',NULL,'http://11.fanlipt.com/admin/Mass/getInfo','222.211.27.26','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','[]','SQLSTATE[42S02]: Base table or view not found: 1146 Table \'tgtj.cd_mass\' doesn\'t exist',1646989346,3,NULL),(32,'admin',NULL,'http://11.fanlipt.com/admin/Mass/getInfo','222.211.27.26','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','[]','SQLSTATE[42S02]: Base table or view not found: 1146 Table \'tgtj.cd_mass\' doesn\'t exist',1646989391,3,NULL),(33,'admin',NULL,'http://11.fanlipt.com/admin/Sys.Base/create','222.211.27.26','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','{\"menu_id\":\"51\"}','SQLSTATE[42S02]: Base table or view not found: 1146 Table \'tgtj.cd_mass\' doesn\'t exist',1646989450,3,NULL),(34,'admin',NULL,'http://11.fanlipt.com/admin/Sys.Base/create','222.211.27.26','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','{\"menu_id\":51}','SQLSTATE[42S02]: Base table or view not found: 1146 Table \'tgtj.cd_mass\' doesn\'t exist',1646989479,3,NULL),(35,'admin',NULL,'http://11.fanlipt.com/admin/Sys.Base/create','222.211.27.26','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','{\"menu_id\":\"52\"}','SQLSTATE[42S02]: Base table or view not found: 1146 Table \'tgtj.cd_qunfa\' doesn\'t exist',1646989846,3,NULL),(36,'admin',NULL,'http://11.fanlipt.com/admin/Sys.Base/create','222.211.27.26','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','{\"menu_id\":\"52\"}','SQLSTATE[42S02]: Base table or view not found: 1146 Table \'tgtj.cd_qunfa\' doesn\'t exist',1646989854,3,NULL),(37,'admin',NULL,'http://11.fanlipt.com/admin/Sys.Base/create','222.211.27.26','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','{\"menu_id\":52}','SQLSTATE[42S02]: Base table or view not found: 1146 Table \'tgtj.cd_qunfa\' doesn\'t exist',1646989894,3,NULL),(38,'admin',NULL,'http://11.fanlipt.com/admin/Sys.Base/create','222.211.27.26','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','{\"menu_id\":52}','SQLSTATE[42S02]: Base table or view not found: 1146 Table \'tgtj.cd_\' doesn\'t exist',1646989924,3,NULL),(39,'admin',NULL,'http://11.fanlipt.com/admin/Sys.Base/create','222.211.27.26','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','{\"menu_id\":52}','SQLSTATE[42S02]: Base table or view not found: 1146 Table \'tgtj.cd_qunfa\' doesn\'t exist',1646989958,3,NULL),(40,'admin',NULL,'http://11.fanlipt.com/admin/Qunfa/getInfo','222.211.27.26','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','[]','SQLSTATE[42S22]: Column not found: 1054 Unknown column \'data\' in \'field list\'',1646990005,3,NULL),(41,'admin',NULL,'http://11.fanlipt.com/admin/Qunfa/getInfo','222.211.27.26','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','[]','SQLSTATE[42S22]: Column not found: 1054 Unknown column \'data\' in \'field list\'',1646990043,3,NULL),(42,'admin',NULL,'http://11.fanlipt.com/admin/Qunfa/index','222.211.27.26','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','{\"qun\":[],\"fenlei\":[],\"img\":\"\",\"msg\":\"\"}','SQLSTATE[42S22]: Column not found: 1054 Unknown column \'data\' in \'field list\'',1646990056,3,NULL),(43,'admin',NULL,'http://11.fanlipt.com/admin/Qunfa/getInfo','222.211.27.26','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','[]','SQLSTATE[42S22]: Column not found: 1054 Unknown column \'data\' in \'field list\'',1646990076,3,NULL),(44,'admin',NULL,'http://11.fanlipt.com/admin/Qunfa/getInfo','222.211.27.26','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','[]','SQLSTATE[42S22]: Column not found: 1054 Unknown column \'data\' in \'field list\'',1646990081,3,NULL),(45,'admin',NULL,'http://11.fanlipt.com/admin/Qunfa/getInfo','222.211.27.26','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','[]','SQLSTATE[42S22]: Column not found: 1054 Unknown column \'data\' in \'field list\'',1646990117,3,NULL),(46,'admin',NULL,'http://11.fanlipt.com/admin/Qunfa/getInfo','222.211.27.26','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','[]','SQLSTATE[42S22]: Column not found: 1054 Unknown column \'data\' in \'field list\'',1646990162,3,NULL),(47,'admin','admin','http://11.fanlipt.com/admin/Login/index.html','222.211.27.26','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36',NULL,NULL,1646992900,1,NULL),(48,'admin','admin','https://11.fanlipt.com/admin/Order/add','171.22.195.23','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','{\"usdt\":\"200\",\"bank\":\"中国银行\",\"jytime\":\"2022-03-11 00:00:00\",\"amount\":\"200\",\"accname\":\"牛得很\"}',NULL,1647011275,2,NULL),(49,'admin','admin','https://11.fanlipt.com/admin/Order/update','171.22.195.23','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','{\"id\":1,\"group_id\":null,\"usdt\":\"200\",\"bank\":\"中国银行\",\"jytime\":\"2022-03-11 00:00:00\",\"amount\":\"200\",\"accname\":\"牛得很\",\"dj\":0,\"rl\":0,\"tgid\":null,\"tgname\":null,\"rltime\":null}',NULL,1647011372,2,NULL),(50,'admin','admin','https://11.fanlipt.com/admin/Order/update','171.22.195.23','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','{\"id\":1,\"group_id\":1,\"usdt\":\"200\",\"bank\":\"中国银行\",\"jytime\":\"2022-03-11 00:00:00\",\"amount\":\"200\",\"accname\":\"牛得很\",\"dj\":0,\"rl\":0,\"tgid\":null,\"tgname\":null,\"rltime\":null}',NULL,1647011391,2,NULL),(51,'admin','admin','https://11.fanlipt.com/admin/Order/update','171.22.195.23','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','{\"id\":1,\"usdt\":\"200\",\"bank\":\"中国银行\",\"jytime\":\"2022-03-11 00:00:00\",\"amount\":\"200\",\"accname\":\"牛得很\",\"dj\":0,\"rl\":0,\"tgid\":null,\"tgname\":null,\"group_id\":\"\",\"rltime\":null}',NULL,1647011839,2,NULL),(52,'admin','admin','https://11.fanlipt.com/admin/Order/add','171.22.195.23','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','{\"bank\":\"中国银行\",\"jytime\":\"2022-03-11 00:00:00\",\"amount\":\"200\",\"accname\":\"刘德华\"}',NULL,1647011914,2,NULL),(53,'admin','admin','https://11.fanlipt.com/admin/Order/delete','171.22.195.23','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','{\"id\":2}',NULL,1647012017,2,NULL),(54,'admin','admin','https://11.fanlipt.com/admin/Order/add','171.22.195.23','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','{\"bank\":\"测试银行\",\"jytime\":\"2022-03-11 00:00:00\",\"amount\":\"1000\",\"accname\":\"牛得化\"}',NULL,1647012042,2,NULL),(55,'admin','admin','https://11.fanlipt.com/admin/User/delete','222.211.27.26','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','{\"id\":\"13,12,11,10,9,8,7,6,5,4,3,2,1\"}',NULL,1647070410,2,NULL),(56,'admin','admin','https://11.fanlipt.com/admin/User/delete','222.211.27.26','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','{\"id\":\"33,32,31,30,29,28,27,26,25,24,23,22,21,20,19,18,17,16,15,14\"}',NULL,1647070419,2,NULL),(57,'admin','admin','https://11.fanlipt.com/admin/User/delete','222.211.27.26','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','{\"id\":\"53,52,51,50,49,48,47,46,45,44,43,42,41,40,39,38,37,36,35,34\"}',NULL,1647070432,2,NULL),(58,'admin','admin','https://11.fanlipt.com/admin/User/delete','222.211.27.26','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','{\"id\":\"73,72,71,70,69,68,67,66,65,64,63,62,61,60,59,58,57,56,55,54\"}',NULL,1647070472,2,NULL),(59,'admin','admin','https://11.fanlipt.com/admin/Role/add','171.22.195.23','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','{\"name\":\"测试\",\"status\":1,\"description\":\"\",\"access\":[\"admin\\/\",\"admin\\/Group\",\"\\/admin\\/Group\\/index.html\",\"\\/admin\\/Group\\/updateExt.html\",\"\\/admin\\/Group\\/add.html\",\"\\/admin\\/Group\\/update.html\",\"\\/admin\\/Group\\/delete.html\",\"\\/admin\\/Group\\/detail.html\",\"\\/admin\\/Group\\/getUpdateInfo.html\",\"admin\\/Groupclass\",\"\\/admin\\/Groupclass\\/index.html\",\"\\/admin\\/Groupclass\\/updateExt.html\",\"\\/admin\\/Groupclass\\/add.html\",\"\\/admin\\/Groupclass\\/update.html\",\"\\/admin\\/Groupclass\\/delete.html\",\"\\/admin\\/Groupclass\\/detail.html\",\"\\/admin\\/Groupclass\\/getUpdateInfo.html\",\"admin\\/Qunfa\",\"\\/admin\\/Qunfa\\/index.html\",\"admin\\/Order\",\"\\/admin\\/Order\\/index.html\",\"\\/admin\\/Order\\/updateExt.html\",\"\\/admin\\/Order\\/add.html\",\"\\/admin\\/Order\\/update.html\",\"\\/admin\\/Order\\/delete.html\",\"\\/admin\\/Order\\/detail.html\",\"\\/admin\\/Order\\/pladd.html\",\"\\/admin\\/Order\\/getUpdateInfo.html\",\"admin\\/Robotconfig\",\"\\/admin\\/Robotconfig\\/index.html\",\"admin\\/User\",\"\\/admin\\/User\\/index.html\",\"\\/admin\\/User\\/updateExt.html\",\"\\/admin\\/User\\/add.html\",\"\\/admin\\/User\\/update.html\",\"\\/admin\\/User\\/delete.html\",\"\\/admin\\/User\\/detail.html\",\"\\/admin\\/User\\/getUpdateInfo.html\"]}',NULL,1647070995,2,NULL),(60,'admin','admin','https://11.fanlipt.com/admin/Adminuser/add','171.22.195.23','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','{\"name\":\"测试\",\"user\":\"cs\",\"pwd\":\"13456\",\"role_id\":52,\"note\":\"\",\"status\":1,\"create_time\":\"\"}',NULL,1647071010,2,NULL),(61,'admin','admin','https://11.fanlipt.com/admin/Adminuser/delete','171.22.195.23','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','{\"user_id\":32}',NULL,1647071182,2,NULL),(62,'admin','admin','https://11.fanlipt.com/admin/Adminuser/add','171.22.195.23','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','{\"name\":\"测试\",\"user\":\"测试\",\"pwd\":\"123123\",\"role_id\":52,\"note\":\"\",\"status\":1,\"create_time\":\"\"}',NULL,1647071200,2,NULL),(63,'admin','测试','https://11.fanlipt.com/admin/Login/index.html','171.22.195.23','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.3 Safari/605.1.15',NULL,NULL,1647071214,1,NULL),(64,'admin','测试','https://11.fanlipt.com/admin/Login/index.html','47.57.184.190','Mozilla/5.0 (iPhone; CPU iPhone OS 15_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.3 Mobile/15E148 Safari/604.1',NULL,NULL,1647071395,1,NULL),(65,'admin','测试','https://11.fanlipt.com/admin/Login/index.html','47.106.160.173','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36',NULL,NULL,1647071534,1,NULL),(66,'admin','admin','https://11.fanlipt.com/admin/Order/delete','222.211.27.26','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','{\"id\":\"11,14,13,12,10\"}',NULL,1647075053,2,NULL),(67,'admin','admin','https://11.fanlipt.com/admin/Order/delete','222.211.27.26','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','{\"id\":9}',NULL,1647075120,2,NULL),(68,'admin','测试','https://11.fanlipt.com/admin/Login/index.html','206.119.125.131','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36',NULL,NULL,1647079207,1,NULL),(69,'admin','测试','https://11.fanlipt.com/admin/Order/delete','47.106.160.173','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36','{\"id\":28}',NULL,1647105252,2,NULL),(70,'admin','测试','https://11.fanlipt.com/admin/Order/delete','47.106.160.173','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36','{\"id\":\"46,45,44,43,42,41,40,39,38,37,36,35,34,33,32,31,30,29,27,26\"}',NULL,1647105864,2,NULL),(71,'admin','测试','https://11.fanlipt.com/admin/Order/delete','47.106.160.173','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36','{\"id\":66}',NULL,1647105960,2,NULL),(72,'admin','admin','https://11.fanlipt.com/admin/Order/delete','20.222.48.238','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','{\"id\":\"55,60,65,64,63,62,61,59,58,57,56,54,53,52,51,50,49,48,47,25\"}',NULL,1647106447,2,NULL),(73,'admin','测试','https://11.fanlipt.com/admin/Order/delete','47.106.160.173','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36','{\"id\":\"65,64,63,62,61,60,59,58,57,56,55,54,53,52,51,50,49,48,47\"}',NULL,1647106455,2,NULL),(74,'admin','admin','https://11.fanlipt.com/admin/Order/delete','20.222.48.238','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','{\"id\":\"24,23,22,21,20,19,18,17,16,15,8,7,6,5,4,3,1\"}',NULL,1647106455,2,NULL),(75,'admin','测试','https://11.fanlipt.com/admin/Order/delete','47.106.160.173','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36','{\"id\":86}',NULL,1647106616,2,NULL),(76,'admin','admin','https://11.fanlipt.com/admin/Order/delete','20.222.48.238','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','{\"id\":\"85,84,83,82,81,80,79,78,77,76,75,74,73,72,71,70,69,68,67\"}',NULL,1647106819,2,NULL),(77,'admin','测试','https://11.fanlipt.com/admin/Order/delete','47.106.160.173','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36','{\"id\":\"71,75,81,85,84,83,82,80,79,78,77,76,74,73,72,70,69,68,67\"}',NULL,1647106911,2,NULL),(78,'admin','测试','https://11.fanlipt.com/admin/Order/delete','47.106.160.173','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36','{\"id\":106}',NULL,1647106934,2,NULL),(79,'admin','admin','https://11.fanlipt.com/admin/Order/delete','20.222.48.238','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','{\"id\":\"105,90,88,95,99,104,103,102,101,100,98,97,96,94,93,92,91,89,87\"}',NULL,1647107036,2,NULL),(80,'admin','测试','https://11.fanlipt.com/admin/Order/delete','47.106.160.173','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36','{\"id\":\"105,104,103,102,101,100,99,97,96,95,94,93,91,90,89,88,87,92,98\"}',NULL,1647107076,2,NULL),(81,'admin','测试','https://11.fanlipt.com/admin/Order/delete','47.106.160.173','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36','{\"id\":134}',NULL,1647107170,2,NULL),(82,'admin','admin','https://11.fanlipt.com/admin/Order/delete','20.222.48.238','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','{\"id\":\"133,129,127,132,131,130,128,126,125,124,123,122,121,120,119,118,117,116,115,114\"}',NULL,1647107306,2,NULL),(83,'admin','admin','https://11.fanlipt.com/admin/Order/delete','20.222.48.238','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','{\"id\":\"113,112,111,110,109,108,107\"}',NULL,1647107310,2,NULL),(84,'admin','测试','https://11.fanlipt.com/admin/Order/delete','47.106.160.173','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36','{\"id\":\"154,153,152,151,150,149,148,147,146,145,144,143,142,141,140,139,138,137,136,135\"}',NULL,1647107361,2,NULL),(85,'admin','admin','https://11.fanlipt.com/admin/Order/delete','20.222.48.238','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','{\"id\":\"171,173,172,170,169,168,167,166,165,164,163,162,161,160,159,158,157,156,155\"}',NULL,1647107714,2,NULL),(86,'admin','测试','https://11.fanlipt.com/admin/Order/delete','47.106.160.173','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36','{\"id\":\"193,192,191,190,189,188,187,186,185,184,183,182,181,180,179,178,177,176,175,174\"}',NULL,1647107751,2,NULL),(87,'admin','测试','https://11.fanlipt.com/admin/Order/delete','47.106.160.173','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36','{\"id\":\"213,212,211,210,209,208,207,206,205,204,203,202,201,200,199,198,197,196,195,194\"}',NULL,1647107944,2,NULL),(88,'admin','测试','https://11.fanlipt.com/admin/Order/delete','47.106.160.173','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36','{\"id\":\"231,227,233,232,230,229,228,226,225,224,223,222,221,220,219,218,217,216,215,214\"}',NULL,1647148356,2,NULL),(89,'admin','测试','https://11.fanlipt.com/admin/Order/add','47.106.160.173','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36','{\"bank\":\"\",\"jytime\":\"\",\"amount\":\"300\",\"accname\":\"蒋涛\"}',NULL,1647149110,2,NULL),(90,'admin','测试','https://11.fanlipt.com/admin/Order/delete','47.106.160.173','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36','{\"id\":\"254,253,252,251,250,249,248,247,246,245,244,243,242,241,240,239,238,237,236,235\"}',NULL,1647152899,2,NULL),(91,'admin','测试','https://11.fanlipt.com/admin/Order/delete','47.106.160.173','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36','{\"id\":\"234\"}',NULL,1647152906,2,NULL),(92,'admin','admin','https://11.fanlipt.com/admin/Role/update','125.67.133.85','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','{\"role_id\":52,\"name\":\"测试\",\"status\":1,\"description\":\"\",\"access\":[\"\\/admin\\/Index\\/main.html\",\"admin\\/Base\",\"\\/admin\\/Base\\/resetPwd.html\",\"admin\\/\",\"admin\\/Group\",\"\\/admin\\/Group\\/index.html\",\"\\/admin\\/Group\\/updateExt.html\",\"\\/admin\\/Group\\/add.html\",\"\\/admin\\/Group\\/update.html\",\"\\/admin\\/Group\\/delete.html\",\"\\/admin\\/Group\\/detail.html\",\"\\/admin\\/Group\\/getUpdateInfo.html\",\"admin\\/Groupclass\",\"\\/admin\\/Groupclass\\/index.html\",\"\\/admin\\/Groupclass\\/updateExt.html\",\"\\/admin\\/Groupclass\\/add.html\",\"\\/admin\\/Groupclass\\/update.html\",\"\\/admin\\/Groupclass\\/delete.html\",\"\\/admin\\/Groupclass\\/detail.html\",\"\\/admin\\/Groupclass\\/getUpdateInfo.html\",\"admin\\/Qunfa\",\"\\/admin\\/Qunfa\\/index.html\",\"admin\\/Order\",\"\\/admin\\/Order\\/index.html\",\"\\/admin\\/Order\\/updateExt.html\",\"\\/admin\\/Order\\/add.html\",\"\\/admin\\/Order\\/update.html\",\"\\/admin\\/Order\\/delete.html\",\"\\/admin\\/Order\\/detail.html\",\"\\/admin\\/Order\\/pladd.html\",\"\\/admin\\/Order\\/getUpdateInfo.html\",\"admin\\/Robotconfig\",\"\\/admin\\/Robotconfig\\/index.html\",\"admin\\/User\",\"\\/admin\\/User\\/index.html\",\"\\/admin\\/User\\/updateExt.html\",\"\\/admin\\/User\\/add.html\",\"\\/admin\\/User\\/update.html\",\"\\/admin\\/User\\/delete.html\",\"\\/admin\\/User\\/detail.html\",\"\\/admin\\/User\\/getUpdateInfo.html\",\"admin\\/System\",\"admin\\/Adminuser\",\"\\/admin\\/Adminuser\\/index.html\",\"\\/admin\\/Adminuser\\/updateExt.html\",\"\\/admin\\/Adminuser\\/add.html\",\"\\/admin\\/Adminuser\\/update.html\",\"\\/admin\\/Adminuser\\/delete.html\",\"\\/admin\\/Adminuser\\/detail.html\",\"\\/admin\\/Adminuser\\/resetPwd.html\",\"\\/admin\\/Adminuser\\/getUpdateInfo.html\",\"admin\\/Role\",\"\\/admin\\/Role\\/index.html\",\"\\/admin\\/Role\\/updateExt.html\",\"\\/admin\\/Role\\/add.html\",\"\\/admin\\/Role\\/update.html\",\"\\/admin\\/Role\\/delete.html\",\"\\/admin\\/Role\\/getUpdateInfo.html\",\"admin\\/Log\",\"\\/admin\\/Log\\/index.html\",\"\\/admin\\/Log\\/delete.html\",\"\\/admin\\/Log\\/detail.html\",\"\\/admin\\/Log\\/dumpdata.html\"]}',NULL,1647159789,2,NULL),(93,'admin','admin','https://11.fanlipt.com/admin/Role/update','125.67.133.85','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36','{\"role_id\":52,\"name\":\"测试\",\"status\":1,\"description\":\"\",\"access\":[\"\\/admin\\/Index\\/main.html\",\"admin\\/Base\",\"\\/admin\\/Base\\/resetPwd.html\",\"admin\\/\",\"admin\\/Group\",\"\\/admin\\/Group\\/index.html\",\"\\/admin\\/Group\\/updateExt.html\",\"\\/admin\\/Group\\/add.html\",\"\\/admin\\/Group\\/update.html\",\"\\/admin\\/Group\\/delete.html\",\"\\/admin\\/Group\\/detail.html\",\"\\/admin\\/Group\\/getUpdateInfo.html\",\"admin\\/Groupclass\",\"\\/admin\\/Groupclass\\/index.html\",\"\\/admin\\/Groupclass\\/updateExt.html\",\"\\/admin\\/Groupclass\\/add.html\",\"\\/admin\\/Groupclass\\/update.html\",\"\\/admin\\/Groupclass\\/delete.html\",\"\\/admin\\/Groupclass\\/detail.html\",\"\\/admin\\/Groupclass\\/getUpdateInfo.html\",\"admin\\/Qunfa\",\"\\/admin\\/Qunfa\\/index.html\",\"admin\\/Order\",\"\\/admin\\/Order\\/index.html\",\"\\/admin\\/Order\\/updateExt.html\",\"\\/admin\\/Order\\/add.html\",\"\\/admin\\/Order\\/update.html\",\"\\/admin\\/Order\\/delete.html\",\"\\/admin\\/Order\\/detail.html\",\"\\/admin\\/Order\\/pladd.html\",\"\\/admin\\/Order\\/getUpdateInfo.html\",\"admin\\/Robotconfig\",\"\\/admin\\/Robotconfig\\/index.html\",\"admin\\/User\",\"\\/admin\\/User\\/index.html\",\"\\/admin\\/User\\/updateExt.html\",\"\\/admin\\/User\\/add.html\",\"\\/admin\\/User\\/update.html\",\"\\/admin\\/User\\/delete.html\",\"\\/admin\\/User\\/detail.html\",\"\\/admin\\/User\\/getUpdateInfo.html\"]}',NULL,1647159859,2,NULL),(94,'admin','admin','https://11.fanlipt.com/admin/Login/index.html','154.17.6.39','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36',NULL,NULL,1647161587,1,NULL),(95,'admin','admin','https://tgapi.mrs666.com/admin/Login/index.html','172.68.211.220','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36',NULL,NULL,1766816077,1,NULL),(96,'admin','admin','https://tgapi.mrs666.com/admin/Order/delete','172.71.210.89','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','{\"id\":\"273,272,271,270,269,268,267,266,265,264,263,262,261,260,259,258,257,256,255\"}',NULL,1766816272,2,NULL),(97,'admin','admin','https://tgapi.mrs666.com/admin/Login/index.html','162.159.98.112','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36',NULL,NULL,1766822055,1,NULL),(98,'admin','admin','https://tgapi.mrs666.com/admin/Groupclass/update','162.158.193.116','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','{\"id\":1,\"name\":\"分类测试1\",\"coen\":[\"7\",\"8\"]}',NULL,1766825616,2,NULL),(99,'admin','admin','https://tgapi.mrs666.com/admin/Group/delete','162.159.98.113','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','{\"id\":\"6,5,4,3,2,1\"}',NULL,1766829932,2,NULL),(100,'admin','admin','https://tgapi.mrs666.com/admin/Login/index.html','172.71.218.97','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36',NULL,NULL,1766933357,1,NULL),(101,'admin','admin','https://tgapi.mrs666.com/admin/Login/index.html','172.68.211.220','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36',NULL,NULL,1766935570,1,NULL),(102,'admin','admin','https://tgapi.mrs666.com/admin/Role/delete','172.68.211.220','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','{\"role_id\":52}',NULL,1766935614,2,NULL),(103,'admin','admin','https://tgapi.mrs666.com/admin/Adminuser/delete','172.68.211.220','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','{\"user_id\":33}',NULL,1766935640,2,NULL),(104,'admin','admin','https://tgapi.mrs666.com/admin/Login/index.html','162.158.179.28','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36',NULL,NULL,1766938114,1,NULL),(105,'admin','admin','https://tgapi.mrs666.com/admin/User/delete','172.71.214.192','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','{\"id\":74}',NULL,1766972950,2,NULL),(106,'admin','admin','https://tgapi.mrs666.com/admin/User/delete','172.71.214.192','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','{\"id\":75}',NULL,1766972954,2,NULL),(107,'admin','admin','https://tgapi.mrs666.com/admin/User/delete','172.71.214.192','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','{\"id\":76}',NULL,1766972956,2,NULL),(108,'admin','admin','https://tgapi.mrs666.com/admin/User/delete','172.71.214.192','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','{\"id\":77}',NULL,1766972959,2,NULL),(109,'admin','admin','https://tgapi.mrs666.com/admin/User/delete','172.71.214.192','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','{\"id\":78}',NULL,1766972962,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COMMENT='群成员表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_member`
--

LOCK TABLES `cd_member` WRITE;
/*!40000 ALTER TABLE `cd_member` DISABLE KEYS */;
INSERT INTO `cd_member` VALUES (1,'-1002632470398','6744032880','丰亨',1766854950,NULL),(2,'-1002632470398','7128656164','VB客服-诗诗',1766855170,''),(3,'-5067922179','6744032880','丰亨',1766926816,''),(4,'-5067922179','7484645762','天行～小刘（资金往来语音确认）',1766926820,''),(5,'-1002632470398','7484645762','天行～小刘（资金往来语音确认）',1766929976,''),(6,'-4936235361','7484645762','天行～小刘（资金往来语音确认）',1766934807,''),(7,'-5120648689','6744032880','丰亨',1766936859,''),(8,'-4936235361','7914362371','Hc-小希',1766982023,'');
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
) ENGINE=InnoDB AUTO_INCREMENT=365 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_order`
--

LOCK TABLES `cd_order` WRITE;
/*!40000 ALTER TABLE `cd_order` DISABLE KEYS */;
INSERT INTO `cd_order` VALUES (274,'-1002632470398',NULL,NULL,'10',NULL,0,1,'7128656164','VB客服-诗诗','百度云盘',1766817048,1,NULL,0.000,NULL),(275,'-1002632470398',NULL,NULL,'20',NULL,0,1,'7699865972','百度云','百度云盘',1766817177,1,NULL,0.000,NULL),(276,'-1002632470398',NULL,NULL,'0',NULL,0,1,'6744032880','丰亨','百度云盘',1766818814,2,NULL,0.000,NULL),(277,'-1002632470398',NULL,NULL,'0',NULL,0,1,'0','0','百度云盘',1766818815,1,NULL,0.000,NULL),(278,'-1002632470398',NULL,NULL,'0',NULL,0,1,'6744032880','丰亨','百度云盘',1766818816,2,NULL,0.000,NULL),(279,'-1002632470398',NULL,NULL,'0',NULL,0,1,'6744032880','丰亨','百度云盘',1766818817,2,NULL,0.000,NULL),(280,'-1002632470398',NULL,NULL,'0',NULL,0,1,'6744032880','丰亨','百度云盘',1766818818,2,NULL,0.000,NULL),(281,'-1002632470398',NULL,NULL,'0',NULL,0,1,'6744032880','丰亨','百度云盘',1766818824,2,NULL,0.000,NULL),(282,'-1002632470398',NULL,NULL,'5',NULL,0,1,'0','0','百度云盘',1766818844,1,NULL,0.000,NULL),(283,'-1002632470398',NULL,NULL,'2',NULL,0,1,'0','0','百度云盘',1766818893,1,NULL,0.000,NULL),(284,'-1002632470398',NULL,NULL,'2',NULL,0,1,'0','0','百度云盘',1766819163,1,NULL,0.000,NULL),(285,'-1002632470398',NULL,NULL,'20',NULL,0,1,'0','0','百度云盘',1766819169,1,NULL,0.000,NULL),(286,'-1002632470398',NULL,NULL,'60',NULL,0,1,'0','0','百度云盘',1766819172,1,NULL,0.000,NULL),(287,'-1002632470398',NULL,NULL,'20',NULL,0,1,'0','0','百度云盘',1766819174,1,NULL,0.000,NULL),(288,'-1002632470398',NULL,NULL,'30',NULL,0,1,'0','0','百度云盘',1766819175,1,NULL,0.000,NULL),(289,'-1002632470398',NULL,NULL,'-1300',NULL,0,1,'0','0','百度云盘',1766819183,1,NULL,0.000,NULL),(290,'-1002632470398',NULL,NULL,'9800',NULL,0,1,'0','0','百度云盘',1766819193,1,NULL,0.000,NULL),(291,'-1002632470398',NULL,NULL,'30',NULL,0,1,'0','0','百度云盘',1766819351,1,NULL,0.000,NULL),(292,'-1002632470398',NULL,NULL,'9555',NULL,0,1,'0','0','百度云盘',1766819357,1,NULL,0.000,NULL),(293,'-1002632470398',NULL,NULL,'3000',NULL,0,1,'0','0','百度云盘',1766819488,1,NULL,0.000,NULL),(294,'-1002632470398',NULL,NULL,'2500',NULL,0,1,'0','0','百度云盘',1766819793,1,NULL,231.481,NULL),(295,'-1002632470398',NULL,NULL,'25800',NULL,0,1,'0','0','百度云盘',1766819903,1,NULL,1842.857,NULL),(296,'-1002632470398',NULL,NULL,'-5000',NULL,0,1,'0','0','百度云盘',1766819952,1,NULL,-384.615,NULL),(297,'-1002632470398',NULL,NULL,'5000',NULL,0,1,'0','0','百度云盘',1766819961,1,NULL,384.615,NULL),(298,'-1002632470398',NULL,NULL,'-65000',NULL,0,1,'0','0','百度云盘',1766819968,1,NULL,-5000.000,NULL),(300,'-1002632470398',NULL,NULL,'995',NULL,0,1,'0','0','百度云盘',1766821830,1,NULL,76.538,NULL),(301,'-1002632470398',NULL,NULL,'998',NULL,0,1,'0','0','百度云盘',1766822071,1,NULL,76.769,'丰亨'),(302,'-5120648689',NULL,NULL,'0',NULL,0,1,'6744032880','丰亨','测试机器人2',1766822195,2,NULL,0.000,NULL),(303,'-5120648689',NULL,NULL,'500',NULL,0,1,'0','0','测试机器人2',1766822201,1,NULL,38.462,'丰亨'),(304,'-5120648689',NULL,NULL,'12500',NULL,0,1,'0','0','测试机器人2',1766822218,1,NULL,844.595,'丰亨'),(305,'-5120648689',NULL,NULL,'-3750',NULL,0,1,'0','0','测试机器人2',1766822226,1,NULL,-300.000,'丰亨'),(306,'-5120648689',NULL,NULL,'-6250',NULL,0,1,'0','0','测试机器人2',1766822235,1,NULL,-500.000,'丰亨'),(307,'-5120648689',NULL,NULL,'400000',NULL,0,1,'0','0','测试机器人2',1766822244,1,NULL,22222.222,'丰亨'),(308,'-5120648689',NULL,NULL,'-278812.5',NULL,0,1,'0','0','测试机器人2',1766822394,1,NULL,-22305.000,'丰亨'),(309,'-5120648689',NULL,NULL,'0',NULL,0,1,'6744032880','丰亨','测试机器人2',1766823598,2,NULL,0.000,NULL),(310,'-5120648689',NULL,NULL,'5555',NULL,0,1,'0','0','测试机器人2',1766823659,1,NULL,427.308,'丰亨支付-饮料'),(311,'-5120648689',NULL,NULL,'3333',NULL,0,1,'0','0','测试机器人2',1766823717,1,NULL,277.750,'丰亨'),(312,'-5120648689',NULL,NULL,'888',NULL,0,1,'0','0','测试机器人2',1766823763,1,NULL,74.000,'丰亨支付-饮料'),(313,'-5120648689',NULL,NULL,'9999',NULL,0,1,'7153793729','丰亨支付-水果','测试机器人2',1766824777,1,NULL,833.250,'丰亨'),(314,'-5120648689',NULL,NULL,'-10412.5',NULL,0,1,'7153793729','丰亨支付-水果','测试机器人2',1766824864,1,NULL,-833.000,'丰亨'),(315,'-5120648689',NULL,NULL,'888',NULL,0,1,'0','0','测试机器人2',1766826405,1,NULL,71.040,'丰亨'),(316,'-5120648689',NULL,NULL,'999',NULL,0,1,'0','0','测试机器人2',1766826408,1,NULL,90.818,'丰亨'),(317,'-1002632470398',NULL,NULL,'663',NULL,0,1,'0','0','百度云盘',1766828168,1,NULL,53.040,'丰亨'),(318,'-5120648689',NULL,NULL,'555',NULL,0,1,'0','0','测试机器人2',1766828173,1,NULL,44.400,'丰亨'),(319,'-5120648689',NULL,NULL,'111',NULL,0,1,'0','0','测试机器人2',1766828174,1,NULL,8.880,'丰亨'),(320,'-5120648689',NULL,NULL,'0',NULL,0,1,'0','0','测试机器人2',1766828175,1,NULL,0.000,'丰亨'),(321,'-5120648689',NULL,NULL,'666',NULL,0,1,'0','0','测试机器人2',1766829358,1,NULL,60.545,'丰亨'),(322,'-1002632470398',NULL,NULL,'9995',NULL,0,1,'0','0','百度云盘',1766830800,1,NULL,434.565,'丰亨'),(323,'-1002632470398',NULL,NULL,'19800',NULL,0,1,'0','0','百度云盘',1766843054,1,NULL,1237.500,'丰亨'),(324,'-1002632470398',NULL,NULL,'0',NULL,0,1,'6744032880','丰亨','百度云盘 汇率14.5',1766926154,2,NULL,0.000,NULL),(325,'-1002632470398',NULL,NULL,'9999',NULL,0,1,'0','0','百度云盘 汇率14.5',1766926493,1,NULL,689.586,'丰亨'),(327,'-5067922179',NULL,NULL,'0',NULL,0,1,'0','0','秘密小花园-汇率12.8',1766926807,1,NULL,0.000,'天行～小刘（资金往来语音确认）'),(328,'-1002632470398',NULL,NULL,'0',NULL,0,1,'0','0','百度云盘 汇率12',1766927872,1,NULL,0.000,'丰亨'),(329,'-5120648689',NULL,NULL,'0',NULL,0,1,'6744032880','丰亨','测试机器人2',1766929232,2,NULL,0.000,NULL),(330,'-5120648689',NULL,NULL,'0',NULL,0,1,'0','0','测试机器人2',1766929245,1,NULL,0.000,'丰亨'),(331,'-5120648689',NULL,NULL,'555',NULL,0,1,'0','0','测试机器人2',1766929387,1,NULL,58.421,'丰亨'),(332,'-5120648689',NULL,NULL,'0',NULL,0,1,'0','0','测试机器人2 汇率11.5',1766929872,1,NULL,0.000,'丰亨'),(333,'-5120648689',NULL,NULL,'55',NULL,0,1,'0','0','测试机器人2 汇率11.5',1766929894,1,NULL,4.783,'丰亨'),(334,'-5067922179',NULL,NULL,'0',NULL,0,1,'0','0','秘密小花园-汇率12.8 汇率12',1766929898,1,NULL,0.000,'丰亨'),(335,'-5067922179',NULL,NULL,'0',NULL,0,1,'0','0','秘密小花园-汇率12.8 汇率12',1766929911,1,NULL,0.000,'丰亨'),(336,'-5067922179',NULL,NULL,'0',NULL,0,1,'0','0','秘密小花园-汇率15.8 汇率15',1766929920,1,NULL,0.000,'天行～小刘（资金往来语音确认）'),(337,'-5067922179',NULL,NULL,'1000000000',NULL,0,1,'0','0','秘密小花园-汇率15.8 汇率15',1766929921,1,NULL,66666666.667,'天行～小刘（资金往来语音确认）'),(338,'-5067922179',NULL,NULL,'100000000000000000',NULL,0,1,'0','0','秘密小花园-汇率15.8 汇率15',1766929922,1,NULL,6666666666666700.000,'天行～小刘（资金往来语音确认）'),(339,'-5067922179',NULL,NULL,'0',NULL,0,1,'0','0','秘密小花园-汇率15.8 汇率15',1766929926,1,NULL,0.000,'丰亨'),(340,'-1002632470398',NULL,NULL,'0',NULL,0,1,'0','0','百度云盘 汇率9.5',1766929978,1,NULL,0.000,'丰亨'),(341,'-1002632470398',NULL,NULL,'0',NULL,0,1,'0','0','百度云盘 汇率9.5',1766929985,1,NULL,0.000,'丰亨'),(342,'-1002632470398',NULL,NULL,'0',NULL,0,1,'0','0','百度云盘 汇率9.5',1766929986,1,NULL,0.000,'丰亨'),(343,'-1002632470398',NULL,NULL,'55',NULL,0,1,'0','0','百度云盘 汇率9.5',1766929995,1,NULL,3.056,'丰亨'),(344,'-1002632470398',NULL,NULL,'0',NULL,0,1,'0','0','百度云盘 汇率9.5',1766929996,1,NULL,0.000,'丰亨'),(345,'-1002632470398',NULL,NULL,'888',NULL,0,1,'0','0','百度云盘 汇率9.5',1766929996,1,NULL,49.333,'丰亨'),(346,'-1002632470398',NULL,NULL,'0',NULL,0,1,'0','0','百度云盘 汇率9.5',1766930010,1,NULL,0.000,'丰亨'),(347,'-1002632470398',NULL,NULL,'0',NULL,0,1,'0','0','百度云盘 汇率9.5',1766930011,1,NULL,0.000,'丰亨'),(348,'-1002632470398',NULL,NULL,'5558',NULL,0,1,'0','0','百度云盘 汇率9.5',1766930012,1,NULL,496.250,'丰亨'),(349,'-5120648689',NULL,NULL,'0',NULL,0,1,'0','0','测试机器人2 汇率11.5',1766930074,1,NULL,0.000,'丰亨'),(350,'-1002632470398',NULL,NULL,'0',NULL,0,1,'0','0','百度云盘 汇率11.2',1766930076,1,NULL,0.000,'丰亨'),(351,'-5067922179',NULL,NULL,'0',NULL,0,1,'0','0','秘密小花园-汇率8.6.8 汇率15',1766930131,1,NULL,0.000,'丰亨'),(352,'-5067922179',NULL,NULL,'0',NULL,0,1,'0','0','秘密小花园-汇率8.6.8 汇率15',1766930477,1,NULL,0.000,'丰亨'),(353,'-5120648689',NULL,NULL,'-562.48',NULL,0,1,'0','0','测试机器人2 汇率11.5',1766931675,1,NULL,-63.200,'丰亨'),(354,'-5067922179',NULL,NULL,'0',NULL,0,1,'7484645762','天行～小刘（资金往来语音确认）','秘密小花园-汇率8.6.8 汇率15',1766935097,2,NULL,0.000,NULL),(355,'-5067922179',NULL,NULL,'0',NULL,0,1,'0','0','秘密小花园-汇率8.6.8 汇率15',1766936806,1,NULL,0.000,'丰亨'),(356,'-5120648689',NULL,NULL,'0',NULL,0,1,'0','0','测试机器人2 汇率11.5',1766937191,1,NULL,0.000,'丰亨'),(357,'-5067922179',NULL,NULL,'0',NULL,0,1,'0','0','秘密小花园-汇率8.6.8 汇率15',1766937213,1,NULL,0.000,'丰亨'),(358,'-5120648689',NULL,NULL,'555',NULL,0,1,'0','0','测试机器人2 汇率11.5',1766938206,1,NULL,42.692,'丰亨'),(359,'-5120648689',NULL,NULL,'6',NULL,0,1,'0','0','测试机器人2 汇率11.5',1766938318,1,NULL,0.674,'丰亨'),(360,'-5120648689',NULL,NULL,'0',NULL,0,1,'6744032880','丰亨','测试机器人2 汇率13',1767008531,2,NULL,0.000,NULL),(361,'-5120648689',NULL,NULL,'88',NULL,0,1,'0','0','测试机器人2 汇率13',1767008554,1,NULL,6.769,'丰亨'),(362,'-1002632470398',NULL,NULL,'0',NULL,0,1,'6744032880','丰亨','百度云盘 汇率8.9',1767008570,2,NULL,0.000,NULL),(363,'-5120648689',NULL,NULL,'66',NULL,0,1,'0','0','测试机器人2 汇率12.5',1767010538,1,NULL,6.408,'丰亨'),(364,'-5120648689',NULL,NULL,'88',NULL,0,1,'0','0','测试机器人2 汇率12.5',1767011451,1,NULL,8.544,'丰亨');
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
INSERT INTO `cd_robotconfig` VALUES (1,'token','7699865972:AAGkzE4wuCnbx5Z8c76cicaGubV8uaqOyBk'),(2,'hy','欢迎来到百度云'),(3,'gl','fenghengpay,feng_yl,xiaoliu116688');
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
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_user`
--

LOCK TABLES `cd_user` WRITE;
/*!40000 ALTER TABLE `cd_user` DISABLE KEYS */;
INSERT INTO `cd_user` VALUES (79,'6744032880','丰亨'),(80,'7153793729','丰亨支付-水果'),(81,'7128656164','VB客服-诗诗'),(82,'7484645762','天行～小刘（资金往来语音确认）'),(83,'7914362371','Hc-小希');
/*!40000 ALTER TABLE `cd_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'tgapi11227'
--

--
-- Dumping routines for database 'tgapi11227'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-29 21:06:15
