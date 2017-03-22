-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: 192.168.16.253    Database: jumpw_auth
-- ------------------------------------------------------
-- Server version	5.1.73-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `t_resource_info`
--

DROP TABLE IF EXISTS `t_resource_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_resource_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `objName` varchar(100) NOT NULL,
  `pid` int(11) DEFAULT '0',
  `typeid` int(11) DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `stationid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_resource_info`
--

LOCK TABLES `t_resource_info` WRITE;
/*!40000 ALTER TABLE `t_resource_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_resource_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_role_info`
--

DROP TABLE IF EXISTS `t_role_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_role_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `objname` varchar(100) NOT NULL,
  `remark` text,
  `status` int(11) NOT NULL DEFAULT '0',
  `stationId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_role_info`
--

LOCK TABLES `t_role_info` WRITE;
/*!40000 ALTER TABLE `t_role_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_role_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_role_resource_link`
--

DROP TABLE IF EXISTS `t_role_resource_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_role_resource_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleid` int(11) NOT NULL,
  `role_resource_linkJson` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `stationid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_role_resource_link`
--

LOCK TABLES `t_role_resource_link` WRITE;
/*!40000 ALTER TABLE `t_role_resource_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_role_resource_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_state_item`
--

DROP TABLE IF EXISTS `t_state_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_state_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `objname` varchar(100) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_state_item`
--

LOCK TABLES `t_state_item` WRITE;
/*!40000 ALTER TABLE `t_state_item` DISABLE KEYS */;
INSERT INTO `t_state_item` VALUES (2,'上海跳跃网络科技有限公司',0,0),(15,'程序部1',2,1),(16,'运维',15,1),(17,'平台部',2,1),(18,'程序部',2,1),(19,'UI设计',22,1),(20,'java工程师',18,1),(21,'java工程师',17,1),(22,'美工部',2,1),(23,'UI设计',22,1),(24,'屌丝部',2,0),(25,'屌丝程序员',24,0),(26,'程序部',2,0),(27,'java工程师',26,0),(28,'android',27,1);
/*!40000 ALTER TABLE `t_state_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_station_info`
--

DROP TABLE IF EXISTS `t_station_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_station_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staName` varchar(100) NOT NULL,
  `createName` varchar(20) NOT NULL,
  `createTime` datetime NOT NULL,
  `secretKey` varchar(45) NOT NULL,
  `vector` varchar(45) NOT NULL,
  `uniqueKey` varchar(45) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `memcached_id` varchar(100) NOT NULL,
  `alterName` varchar(20) DEFAULT NULL,
  `alterTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `staName_index` (`staName`),
  KEY `createName_index` (`createName`),
  KEY `secretKey_index` (`secretKey`),
  KEY `vector_index` (`vector`),
  KEY `unique_index` (`uniqueKey`),
  KEY `status_index` (`status`),
  KEY `memcachedid_index` (`memcached_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_station_info`
--

LOCK TABLES `t_station_info` WRITE;
/*!40000 ALTER TABLE `t_station_info` DISABLE KEYS */;
INSERT INTO `t_station_info` VALUES (1,'WCA第二赛季','tt','2017-03-03 15:56:34','8104eb38fa5248ae','71ac5216967a1334','753f4707aa9fd2b1b9b23fff8b394978',0,'GMTools_wcasecond',NULL,NULL),(2,'赛事中心系统','tt','2017-03-09 20:06:39','9cb8bede639b3131','c6e2f8def9fb5928','012c05033c1613eb5c9e4739af66cca9',0,'GMTools_clashcenter',NULL,NULL),(3,'枪界系统','tt','2017-03-09 20:59:09','eda2fac1f3bb6f50','457d17e691b3afc2','16f2155df15c5f70b40fe469630abc9b',0,'GMTools_qiangjie',NULL,NULL),(4,'wca赛事中心','tt','2017-03-13 10:19:53','68904109a13a6923','60c0db8cf0a690bb','fd2fbbeaa1269e1719762d5078195eb1',0,'Tools_UCwcacenter',NULL,NULL),(5,'宅基地App','tt','2017-03-13 10:25:14','4186b5246ab63c4b','72039c7beb6e2048','35e9e650828b92d6370b9911a3f728c9',0,'JumpwUC_zhaijidi',NULL,NULL),(6,'泡泡系统','tt','2017-03-14 16:20:25','4186jile562ab63c4b','72039coljiojlije4048','3588e9e650828b92d8749911a3f728c9',1,'JumpwUC_zhaijidi',NULL,NULL);
/*!40000 ALTER TABLE `t_station_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_station_user_link`
--

DROP TABLE IF EXISTS `t_station_user_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_station_user_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stationid` int(11) NOT NULL COMMENT '站点id',
  `userid` int(11) NOT NULL COMMENT '用户id',
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `stationid_index` (`stationid`),
  KEY `userid_index` (`userid`),
  KEY `status_index` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='站点用户关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_station_user_link`
--

LOCK TABLES `t_station_user_link` WRITE;
/*!40000 ALTER TABLE `t_station_user_link` DISABLE KEYS */;
INSERT INTO `t_station_user_link` VALUES (1,1,170313,2),(2,1,170314,2),(3,2,170316,1),(4,2,170315,0),(5,3,170317,2),(6,3,170318,0),(7,2,170314,1),(10,1,170103,1),(11,1,170300,2),(12,1,170333,1),(15,5,170321,0),(16,5,170321,0),(17,5,170321,0),(18,5,170321,0),(19,5,170321,0);
/*!40000 ALTER TABLE `t_station_user_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_station_user_link_copy`
--

DROP TABLE IF EXISTS `t_station_user_link_copy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_station_user_link_copy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stationid` int(11) NOT NULL COMMENT '站点id',
  `userid` int(11) NOT NULL COMMENT '用户id',
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `stationid_index` (`stationid`),
  KEY `userid_index` (`userid`),
  KEY `status_index` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='站点用户关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_station_user_link_copy`
--

LOCK TABLES `t_station_user_link_copy` WRITE;
/*!40000 ALTER TABLE `t_station_user_link_copy` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_station_user_link_copy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_system_group_info`
--

DROP TABLE IF EXISTS `t_system_group_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_system_group_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `objname` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_system_group_info`
--

LOCK TABLES `t_system_group_info` WRITE;
/*!40000 ALTER TABLE `t_system_group_info` DISABLE KEYS */;
INSERT INTO `t_system_group_info` VALUES (1,'新建站点'),(2,'修改站点信息'),(3,'修改站点状态'),(4,'用户登录'),(5,'添加用户'),(6,'禁用用户'),(7,'启用用户'),(8,'重置用户'),(9,'新增组织架构'),(10,'修改组织架构'),(11,'删除组织架构'),(12,'删除站点'),(13,'修改站点账户');
/*!40000 ALTER TABLE `t_system_group_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_system_log_info`
--

DROP TABLE IF EXISTS `t_system_log_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_system_log_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `groupid` int(11) NOT NULL,
  `Ip` varchar(32) NOT NULL,
  `objname` text NOT NULL,
  `updatetable` varchar(100) DEFAULT NULL,
  `updateId` int(11) DEFAULT NULL,
  `createdate` datetime NOT NULL,
  `station_uniqueKey` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=282 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_system_log_info`
--

LOCK TABLES `t_system_log_info` WRITE;
/*!40000 ALTER TABLE `t_system_log_info` DISABLE KEYS */;
INSERT INTO `t_system_log_info` VALUES (1,1,10,'192.168.16.210','{\"id\":2,\"name\":\"Jumpw\",\"pid\":0,\"typeid\":0,\"status\":0}','t_state_item',2,'2017-02-23 18:25:14','sdfadsfasdf'),(2,1,10,'192.168.16.210','{\"id\":2,\"name\":\"Jumpw\",\"pid\":0,\"typeid\":0,\"status\":0}','t_state_item',2,'2017-02-23 18:26:50','sdfadsfasdf'),(3,1,10,'192.168.16.210','{\"id\":2,\"name\":\"上海跳跃网络科技有限公司\",\"pid\":0,\"typeid\":0,\"status\":0}','t_state_item',2,'2017-02-23 18:28:06','sdfadsfasdf'),(4,1,9,'192.168.16.210','{\"id\":8,\"name\":\"程序员\",\"pid\":3,\"typeid\":2,\"status\":0}','t_state_item',8,'2017-02-23 18:28:42','sdfadsfasdf'),(5,1,9,'192.168.16.210','{\"id\":9,\"name\":\"UI设计\",\"pid\":4,\"typeid\":2,\"status\":0}','t_state_item',9,'2017-02-23 18:33:30','sdfadsfasdf'),(6,1,11,'192.168.16.210','组织架构ID：4已经被删除！','t_state_item',4,'2017-02-23 18:33:59','sdfadsfasdf'),(7,1,11,'192.168.16.210','组织架构ID：6已经被删除！','t_state_item',6,'2017-02-23 18:35:56','sdfadsfasdf'),(8,1,11,'192.168.16.210','组织架构ID：9已经被删除！','t_state_item',9,'2017-02-23 18:35:58','sdfadsfasdf'),(9,1,11,'192.168.16.210','组织架构ID：3已经被删除！','t_state_item',3,'2017-02-23 18:36:03','sdfadsfasdf'),(10,1,11,'192.168.16.210','组织架构ID：5已经被删除！','t_state_item',5,'2017-02-23 18:37:04','sdfadsfasdf'),(11,1,9,'192.168.16.210','{\"id\":10,\"name\":\"平台部\",\"pid\":2,\"typeid\":2,\"status\":0}','t_state_item',10,'2017-02-23 18:37:10','sdfadsfasdf'),(12,1,9,'192.168.16.210','{\"id\":11,\"name\":\"java工程师\",\"pid\":22,\"typeid\":2,\"status\":0}','t_state_item',11,'2017-02-23 18:37:18','sdfadsfasdf'),(13,1,9,'192.168.16.210','{\"id\":12,\"name\":\"产品经理\",\"pid\":22,\"typeid\":2,\"status\":0}','t_state_item',12,'2017-02-23 18:37:29','sdfadsfasdf'),(14,1,9,'192.168.16.210','{\"id\":13,\"name\":\"UI设计\",\"pid\":22,\"typeid\":2,\"status\":0}','t_state_item',13,'2017-02-23 18:37:38','sdfadsfasdf'),(15,1,9,'192.168.16.210','{\"id\":14,\"name\":\"运维不\",\"pid\":2,\"typeid\":2,\"status\":0}','t_state_item',14,'2017-02-23 18:37:44','sdfadsfasdf'),(16,1,9,'192.168.16.210','{\"id\":15,\"name\":\"平台部\",\"pid\":2,\"typeid\":2,\"status\":0}','t_state_item',15,'2017-02-23 18:39:43','sdfadsfasdf'),(17,1,10,'192.168.16.210','{\"id\":15,\"name\":\"程序部\",\"pid\":0,\"typeid\":0,\"status\":0}','t_state_item',15,'2017-02-23 18:45:40','sdfadsfasdf'),(18,1,9,'192.168.16.210','{\"id\":16,\"name\":\"运维\",\"pid\":15,\"typeid\":2,\"status\":0}','t_state_item',16,'2017-02-23 18:46:22','sdfadsfasdf'),(19,1,10,'192.168.16.210','{\"id\":15,\"name\":\"程序部1\",\"pid\":0,\"typeid\":0,\"status\":0}','t_state_item',15,'2017-02-23 18:46:43','sdfadsfasdf'),(20,1,11,'192.168.16.210','组织架构ID：15已经被删除！','t_state_item',15,'2017-02-23 18:46:49','sdfadsfasdf'),(21,1,9,'192.168.16.210','{\"id\":17,\"name\":\"平台部\",\"pid\":2,\"typeid\":2,\"status\":0}','t_state_item',17,'2017-02-24 14:46:07','sdfadsfasdf'),(22,1,9,'192.168.16.210','{\"id\":18,\"name\":\"程序部\",\"pid\":2,\"typeid\":2,\"status\":0}','t_state_item',18,'2017-02-24 14:46:22','sdfadsfasdf'),(23,1,9,'192.168.16.210','{\"id\":19,\"name\":\"UI设计\",\"pid\":22,\"typeid\":2,\"status\":0}','t_state_item',19,'2017-02-24 14:46:31','sdfadsfasdf'),(24,1,9,'192.168.16.210','{\"id\":20,\"name\":\"java工程师\",\"pid\":18,\"typeid\":2,\"status\":0}','t_state_item',20,'2017-02-24 14:47:22','sdfadsfasdf'),(25,1,9,'192.168.16.210','{\"id\":21,\"name\":\"java工程师\",\"pid\":17,\"typeid\":2,\"status\":0}','t_state_item',21,'2017-02-24 14:47:39','sdfadsfasdf'),(26,1,9,'192.168.16.210','{\"id\":22,\"name\":\"美工部\",\"pid\":2,\"typeid\":2,\"status\":0}','t_state_item',22,'2017-02-24 14:51:10','sdfadsfasdf'),(27,1,9,'192.168.16.210','{\"id\":23,\"name\":\"UI设计\",\"pid\":22,\"typeid\":2,\"status\":0}','t_state_item',23,'2017-02-24 14:51:47','sdfadsfasdf'),(28,1,11,'192.168.16.210','组织架构ID：23已经被删除！','t_state_item',23,'2017-02-24 14:52:08','sdfadsfasdf'),(29,1,11,'192.168.16.210','组织架构ID：22已经被删除！','t_state_item',22,'2017-02-24 14:52:14','sdfadsfasdf'),(30,1,11,'192.168.16.210','组织架构ID：17已经被删除！','t_state_item',17,'2017-02-24 14:59:53','sdfadsfasdf'),(31,1,11,'192.168.16.210','组织架构ID：18已经被删除！','t_state_item',18,'2017-02-24 14:59:55','sdfadsfasdf'),(32,1,10,'192.168.16.210','{\"id\":2,\"name\":\"上海跳跃网络科技有限公司\",\"pid\":0,\"typeid\":0,\"status\":0}','t_state_item',2,'2017-02-24 15:01:25','sdfadsfasdf'),(33,1,9,'192.168.16.210','{\"id\":24,\"name\":\"平台部\",\"pid\":2,\"status\":0}','t_state_item',24,'2017-02-24 15:07:41','sdfadsfasdf'),(34,1,10,'192.168.16.210','{\"id\":24,\"name\":\"屌丝部\",\"pid\":0,\"status\":0}','t_state_item',24,'2017-02-24 15:07:57','sdfadsfasdf'),(35,1,9,'192.168.16.210','{\"id\":25,\"name\":\"屌丝程序员\",\"pid\":24,\"status\":0}','t_state_item',25,'2017-02-28 10:18:27','sdfadsfasdf'),(36,1,9,'192.168.16.210','{\"id\":26,\"name\":\"程序部\",\"pid\":2,\"status\":0}','t_state_item',26,'2017-02-28 11:13:27','sdfadsfasdf'),(37,1,9,'192.168.16.210','{\"id\":27,\"name\":\"java工程师\",\"pid\":26,\"status\":0}','t_state_item',27,'2017-02-28 16:26:46','sdfadsfasdf'),(38,1,9,'127.0.0.1','{\"id\":28,\"name\":\"android\",\"pid\":27,\"status\":0}','t_state_item',28,'2017-03-02 21:27:00','sdfadsfasdf'),(39,1,11,'127.0.0.1','组织架构ID：28已经被删除！','t_state_item',28,'2017-03-02 21:27:04','sdfadsfasdf'),(40,1,10,'127.0.0.1','{\"id\":16,\"staName\":null,\"createtime\":null,\"secretKey\":null,\"vector\":null,\"uniqueKey\":null,\"status\":1,\"memcached_id\":null,\"alterName\":null,\"alterTime\":null}','StationInfoBean',16,'2017-03-03 11:03:01','sdfadsfasdf'),(41,1,10,'127.0.0.1','{\"id\":17,\"staName\":null,\"createtime\":null,\"secretKey\":null,\"vector\":null,\"uniqueKey\":null,\"status\":1,\"memcached_id\":null,\"alterName\":null,\"alterTime\":null}','StationInfoBean',17,'2017-03-03 11:03:26','sdfadsfasdf'),(42,1,10,'127.0.0.1','{\"id\":18,\"staName\":null,\"createtime\":null,\"secretKey\":null,\"vector\":null,\"uniqueKey\":null,\"status\":1,\"memcached_id\":null,\"alterName\":null,\"alterTime\":null}','StationInfoBean',18,'2017-03-03 11:05:14','sdfadsfasdf'),(43,1,10,'127.0.0.1','{\"id\":16,\"staName\":null,\"createtime\":null,\"secretKey\":null,\"vector\":null,\"uniqueKey\":null,\"status\":0,\"memcached_id\":null,\"alterName\":null,\"alterTime\":null}','StationInfoBean',16,'2017-03-03 11:07:30','sdfadsfasdf'),(44,1,10,'127.0.0.1','{\"id\":16,\"staName\":null,\"createtime\":null,\"secretKey\":null,\"vector\":null,\"uniqueKey\":null,\"status\":1,\"memcached_id\":null,\"alterName\":null,\"alterTime\":null}','StationInfoBean',16,'2017-03-03 11:08:46','sdfadsfasdf'),(45,1,10,'127.0.0.1','{\"id\":16,\"staName\":null,\"createtime\":null,\"secretKey\":null,\"vector\":null,\"uniqueKey\":null,\"status\":0,\"memcached_id\":null,\"alterName\":null,\"alterTime\":null}','StationInfoBean',16,'2017-03-03 11:08:51','sdfadsfasdf'),(46,1,10,'127.0.0.1','{\"id\":22,\"staName\":null,\"createtime\":null,\"secretKey\":null,\"vector\":null,\"uniqueKey\":null,\"status\":1,\"memcached_id\":null,\"alterName\":null,\"alterTime\":null}','StationInfoBean',22,'2017-03-03 16:00:14','sdfadsfasdf'),(47,1,10,'127.0.0.1','{\"id\":16,\"staName\":null,\"createtime\":null,\"secretKey\":null,\"vector\":null,\"uniqueKey\":null,\"status\":1,\"memcached_id\":null,\"alterName\":null,\"alterTime\":null}','StationInfoBean',16,'2017-03-03 16:00:26','sdfadsfasdf'),(48,1,10,'127.0.0.1','{\"id\":22,\"staName\":null,\"createtime\":null,\"secretKey\":null,\"vector\":null,\"uniqueKey\":null,\"status\":0,\"memcached_id\":null,\"alterName\":null,\"alterTime\":null}','StationInfoBean',22,'2017-03-03 16:01:16','sdfadsfasdf'),(49,1,10,'127.0.0.1','{\"id\":22,\"staName\":null,\"createtime\":null,\"secretKey\":null,\"vector\":null,\"uniqueKey\":null,\"status\":1,\"memcached_id\":null,\"alterName\":null,\"alterTime\":null}','StationInfoBean',22,'2017-03-03 16:01:33','sdfadsfasdf'),(50,1,10,'127.0.0.1','{\"id\":22,\"staName\":null,\"createtime\":null,\"secretKey\":null,\"vector\":null,\"uniqueKey\":null,\"status\":0,\"memcached_id\":null,\"alterName\":null,\"alterTime\":null}','StationInfoBean',22,'2017-03-03 16:01:49','sdfadsfasdf'),(51,1,10,'127.0.0.1','{\"id\":16,\"staName\":null,\"createtime\":null,\"secretKey\":null,\"vector\":null,\"uniqueKey\":null,\"status\":0,\"memcached_id\":null,\"alterName\":null,\"alterTime\":null}','StationInfoBean',16,'2017-03-03 16:04:09','sdfadsfasdf'),(52,1,10,'127.0.0.1','{\"id\":22,\"staName\":null,\"createtime\":null,\"secretKey\":null,\"vector\":null,\"uniqueKey\":null,\"status\":1,\"memcached_id\":null,\"alterName\":null,\"alterTime\":null}','StationInfoBean',22,'2017-03-03 16:05:55','sdfadsfasdf'),(53,1,10,'127.0.0.1','{\"id\":16,\"staName\":null,\"createtime\":null,\"secretKey\":null,\"vector\":null,\"uniqueKey\":null,\"status\":1,\"memcached_id\":null,\"alterName\":null,\"alterTime\":null}','StationInfoBean',16,'2017-03-03 16:08:04','sdfadsfasdf'),(54,1,10,'127.0.0.1','{\"id\":22,\"staName\":null,\"createtime\":null,\"secretKey\":null,\"vector\":null,\"uniqueKey\":null,\"status\":0,\"memcached_id\":null,\"alterName\":null,\"alterTime\":null}','StationInfoBean',22,'2017-03-03 16:09:02','sdfadsfasdf'),(55,1,10,'127.0.0.1','{\"id\":22,\"staName\":null,\"createtime\":null,\"secretKey\":null,\"vector\":null,\"uniqueKey\":null,\"status\":1,\"memcached_id\":null,\"alterName\":null,\"alterTime\":null}','StationInfoBean',22,'2017-03-03 16:09:35','sdfadsfasdf'),(56,1,10,'127.0.0.1','{\"id\":22,\"staName\":null,\"createtime\":null,\"secretKey\":null,\"vector\":null,\"uniqueKey\":null,\"status\":0,\"memcached_id\":null,\"alterName\":null,\"alterTime\":null}','StationInfoBean',22,'2017-03-03 16:09:55','sdfadsfasdf'),(57,1,10,'127.0.0.1','{\"id\":16,\"staName\":null,\"createtime\":null,\"secretKey\":null,\"vector\":null,\"uniqueKey\":null,\"status\":0,\"memcached_id\":null,\"alterName\":null,\"alterTime\":null}','StationInfoBean',16,'2017-03-03 16:10:05','sdfadsfasdf'),(58,1,10,'127.0.0.1','{\"id\":17,\"staName\":null,\"createtime\":null,\"secretKey\":null,\"vector\":null,\"uniqueKey\":null,\"status\":0,\"memcached_id\":null,\"alterName\":null,\"alterTime\":null}','StationInfoBean',17,'2017-03-03 16:10:12','sdfadsfasdf'),(59,1,10,'127.0.0.1','{\"id\":16,\"staName\":null,\"createtime\":null,\"secretKey\":null,\"vector\":null,\"uniqueKey\":null,\"status\":1,\"memcached_id\":null,\"alterName\":null,\"alterTime\":null}','StationInfoBean',16,'2017-03-03 16:10:45','sdfadsfasdf'),(60,1,10,'127.0.0.1','{\"id\":17,\"staName\":null,\"createtime\":null,\"secretKey\":null,\"vector\":null,\"uniqueKey\":null,\"status\":1,\"memcached_id\":null,\"alterName\":null,\"alterTime\":null}','StationInfoBean',17,'2017-03-03 16:11:07','sdfadsfasdf'),(61,1,10,'127.0.0.1','{\"id\":16,\"staName\":\"werwea\",\"createtime\":null,\"secretKey\":null,\"vector\":null,\"uniqueKey\":null,\"status\":0,\"memcached_id\":null,\"alterName\":null,\"alterTime\":null}','StationInfoBean',16,'2017-03-03 17:39:46','sdfadsfasdf'),(62,1,10,'127.0.0.1','{\"id\":27,\"name\":\"java工程师\",\"pid\":0,\"status\":0}','t_state_item',27,'2017-03-09 16:39:02','sdfadsfasdf'),(63,1,10,'127.0.0.1','{\"id\":22,\"staName\":\"枪界第二get\",\"createtime\":null,\"secretKey\":null,\"vector\":null,\"uniqueKey\":null,\"status\":1,\"memcached_id\":null,\"alterName\":null,\"alterTime\":null}','StationInfoBean',22,'2017-03-09 17:31:50','sdfadsfasdf'),(64,1,10,'127.0.0.1','{\"id\":24,\"staName\":\"WCA第二赛季活动\",\"createtime\":null,\"secretKey\":null,\"vector\":null,\"uniqueKey\":null,\"status\":1,\"memcached_id\":null,\"alterName\":null,\"alterTime\":null}','StationInfoBean',24,'2017-03-10 10:56:42','sdfadsfasdf'),(65,1,1,'127.0.0.1','{\"id\":50,\"staName\":\"1123123\",\"createtime\":null,\"secretKey\":\"057a40bd402712cf\",\"vector\":\"f79e1f3870f201fa\",\"uniqueKey\":\"27f5763589e322c85447d919931651eb\",\"status\":null,\"memcached_id\":\"Tools_ssss\",\"alterName\":null,\"alterTime\":null}','t_station_info',50,'2017-03-10 17:05:34','sdfadsfasdf'),(66,1,1,'127.0.0.1','{\"id\":51,\"staName\":\"112312sdf\",\"createtime\":null,\"secretKey\":\"6e5f6ad83669a26c\",\"vector\":\"d416e753e2356f8b\",\"uniqueKey\":\"2285e5d5b24955e3813501ac7e7671d4\",\"status\":null,\"memcached_id\":\"Tools_sssse3\",\"alterName\":null,\"alterTime\":null}','t_station_info',51,'2017-03-10 18:34:41','sdfadsfasdf'),(67,1,1,'127.0.0.1','{\"id\":52,\"staName\":\"112312sdf\",\"createtime\":null,\"secretKey\":\"5fbba70c2d6e7264\",\"vector\":\"e3d364b28384259f\",\"uniqueKey\":\"2285e5d5b24955e3813501ac7e7671d4\",\"status\":null,\"memcached_id\":\"Tools_sssse3\",\"alterName\":null,\"alterTime\":null}','t_station_info',52,'2017-03-10 18:34:42','sdfadsfasdf'),(68,1,1,'127.0.0.1','{\"id\":53,\"staName\":\"tttttt\",\"createtime\":null,\"secretKey\":\"260d0c611ada11fc\",\"vector\":\"474d97057a4ee6b3\",\"uniqueKey\":\"429d227c5d6e3923cd952bbc1d986c84\",\"status\":null,\"memcached_id\":\"Tools_w\",\"alterName\":null,\"alterTime\":null}','t_station_info',53,'2017-03-10 18:37:38','sdfadsfasdf'),(69,1,12,'127.0.0.1','站点ID：53已经被删除！','t_station_info',53,'2017-03-10 18:52:42','sdfadsfasdf'),(70,1,2,'127.0.0.1','{\"id\":24,\"staName\":\"WCA第二赛季活动\",\"createtime\":null,\"secretKey\":null,\"vector\":null,\"uniqueKey\":null,\"status\":0,\"memcached_id\":null,\"alterName\":null,\"alterTime\":null}','t_station_info',24,'2017-03-10 19:04:29','sdfadsfasdf'),(71,1,12,'127.0.0.1','站点ID：52 已经被删除！','t_station_info',52,'2017-03-10 19:09:59','sdfadsfasdf'),(72,1,1,'127.0.0.1','{\"id\":55,\"staName\":\"11111\",\"createtime\":null,\"secretKey\":\"ece7f31fbc1410a7\",\"vector\":\"c65c49894c813a7c\",\"uniqueKey\":\"221e5b076bc0056a586c851203f1b3d9\",\"status\":null,\"memcached_id\":\"Tools_w\",\"alterName\":null,\"alterTime\":null}','t_station_info',55,'2017-03-10 19:13:05','sdfadsfasdf'),(73,1,1,'127.0.0.1','{\"id\":54,\"staName\":\"11111\",\"createtime\":null,\"secretKey\":\"ece7f31fbc1410a7\",\"vector\":\"c65c49894c813a7c\",\"uniqueKey\":\"221e5b076bc0056a586c851203f1b3d9\",\"status\":null,\"memcached_id\":\"Tools_w\",\"alterName\":null,\"alterTime\":null}','t_station_info',54,'2017-03-10 19:13:05','sdfadsfasdf'),(74,1,12,'127.0.0.1','站点ID：55 已经被删除！','t_station_info',55,'2017-03-10 19:13:13','sdfadsfasdf'),(75,1,1,'127.0.0.1','{\"id\":56,\"staName\":\"wca赛事中心\",\"createtime\":null,\"secretKey\":\"68904109a13a6923\",\"vector\":\"60c0db8cf0a690bb\",\"uniqueKey\":\"fd2fbbeaa1269e1719762d5078195eb1\",\"status\":null,\"memcached_id\":\"Tools_UCwcacenter\",\"alterName\":null,\"alterTime\":null}','t_station_info',56,'2017-03-13 10:16:44','sdfadsfasdf'),(76,1,1,'127.0.0.1','{\"id\":57,\"staName\":\"宅基地App\",\"createtime\":null,\"secretKey\":\"4186b5246ab63c4b\",\"vector\":\"72039c7beb6e2048\",\"uniqueKey\":\"35e9e650828b92d6370b9911a3f728c9\",\"status\":null,\"memcached_id\":\"JumpwUC_zhaijidi\",\"alterName\":null,\"alterTime\":null}','t_station_info',57,'2017-03-13 10:22:05','sdfadsfasdf'),(77,1,2,'127.0.0.1','{\"id\":24,\"staName\":\"WCA第二赛季\",\"createtime\":null,\"secretKey\":null,\"vector\":null,\"uniqueKey\":null,\"status\":1,\"memcached_id\":null,\"alterName\":null,\"alterTime\":null}','t_station_info',24,'2017-03-13 10:32:31','sdfadsfasdf'),(78,1,13,'127.0.0.1','{\"id\":1,\"userid\":null,\"username\":null,\"password\":null,\"status\":1,\"stationid\":null}','t_station_user_link',1,'2017-03-15 10:50:34','sdfadsfasdf'),(79,1,13,'127.0.0.1','{\"id\":1,\"userid\":null,\"username\":null,\"password\":null,\"status\":1,\"stationid\":null}','t_station_user_link',1,'2017-03-15 10:50:48','sdfadsfasdf'),(80,1,13,'127.0.0.1','{\"id\":1,\"userid\":null,\"username\":null,\"password\":null,\"status\":1,\"stationid\":null}','t_station_user_link',1,'2017-03-15 10:51:48','sdfadsfasdf'),(81,1,13,'127.0.0.1','{\"id\":8,\"userid\":null,\"username\":null,\"password\":null,\"status\":1,\"stationid\":null}','t_station_user_link',8,'2017-03-15 11:00:14','sdfadsfasdf'),(82,1,13,'127.0.0.1','{\"id\":1,\"userid\":null,\"username\":null,\"password\":null,\"status\":2,\"stationid\":null}','t_station_user_link',1,'2017-03-15 11:09:42','sdfadsfasdf'),(83,1,1,'127.0.0.1','{\"id\":58,\"staName\":\"300英雄\",\"createtime\":null,\"secretKey\":\"19e66a361b74c59c\",\"vector\":\"3b02d81e74b2f724\",\"uniqueKey\":\"c618a2e001bb740cdd1dbeefde91a1a6\",\"status\":null,\"memcached_id\":\"JumpwUC_hero\",\"alterName\":null,\"alterTime\":null}','t_station_info',58,'2017-03-15 11:24:32','sdfadsfasdf'),(84,1,1,'127.0.0.1','{\"id\":59,\"staName\":\"300英雄\",\"createtime\":null,\"secretKey\":\"6e34ee6480fd2a93\",\"vector\":\"6869286bab1f4cf8\",\"uniqueKey\":\"c618a2e001bb740cdd1dbeefde91a1a6\",\"status\":null,\"memcached_id\":\"JumpwUC_hero\",\"alterName\":null,\"alterTime\":null}','t_station_info',59,'2017-03-15 11:24:32','sdfadsfasdf'),(85,1,1,'127.0.0.1','{\"id\":60,\"staName\":\"300英雄\",\"createtime\":null,\"secretKey\":\"c1b782a3d252a8ea\",\"vector\":\"b15d722e2cc8ed37\",\"uniqueKey\":\"c618a2e001bb740cdd1dbeefde91a1a6\",\"status\":null,\"memcached_id\":\"JumpwUC_hero\",\"alterName\":null,\"alterTime\":null}','t_station_info',60,'2017-03-15 11:24:35','sdfadsfasdf'),(86,1,1,'127.0.0.1','{\"id\":61,\"staName\":\"300英雄\",\"createtime\":null,\"secretKey\":\"c1b782a3d252a8ea\",\"vector\":\"b15d722e2cc8ed37\",\"uniqueKey\":\"c618a2e001bb740cdd1dbeefde91a1a6\",\"status\":null,\"memcached_id\":\"JumpwUC_hero\",\"alterName\":null,\"alterTime\":null}','t_station_info',61,'2017-03-15 11:24:35','sdfadsfasdf'),(87,1,1,'127.0.0.1','{\"id\":62,\"staName\":\"300英雄\",\"createtime\":null,\"secretKey\":\"1b61bd5547769adc\",\"vector\":\"fa94579895a76bc2\",\"uniqueKey\":\"c618a2e001bb740cdd1dbeefde91a1a6\",\"status\":null,\"memcached_id\":\"JumpwUC_hero\",\"alterName\":null,\"alterTime\":null}','t_station_info',62,'2017-03-15 11:24:45','sdfadsfasdf'),(88,1,1,'127.0.0.1','{\"id\":63,\"staName\":\"300英雄\",\"createtime\":null,\"secretKey\":\"21a65c6a7996b700\",\"vector\":\"a57a0ebc73ced27f\",\"uniqueKey\":\"c618a2e001bb740cdd1dbeefde91a1a6\",\"status\":null,\"memcached_id\":\"JumpwUC_hero\",\"alterName\":null,\"alterTime\":null}','t_station_info',63,'2017-03-15 11:25:51','sdfadsfasdf'),(89,1,12,'127.0.0.1','站点ID：58 已经被删除！','t_station_info',58,'2017-03-15 11:26:41','sdfadsfasdf'),(90,1,2,'127.0.0.1','{\"id\":6,\"staName\":\"泡泡系统\",\"createtime\":null,\"secretKey\":null,\"vector\":null,\"uniqueKey\":null,\"status\":1,\"memcached_id\":null,\"alterName\":null,\"alterTime\":null}','t_station_info',6,'2017-03-15 11:27:29','sdfadsfasdf'),(91,1,2,'127.0.0.1','{\"id\":1,\"staName\":\"WCA第二赛季\",\"createtime\":null,\"secretKey\":null,\"vector\":null,\"uniqueKey\":null,\"status\":0,\"memcached_id\":null,\"alterName\":null,\"alterTime\":null}','t_station_info',1,'2017-03-15 11:31:25','sdfadsfasdf'),(92,1,13,'127.0.0.1','{\"id\":1,\"userid\":null,\"username\":null,\"password\":null,\"status\":1,\"stationid\":null}','t_station_user_link',1,'2017-03-15 11:32:54','sdfadsfasdf'),(93,1,13,'127.0.0.1','{\"id\":1,\"userid\":null,\"username\":null,\"password\":null,\"status\":2,\"stationid\":null}','t_station_user_link',1,'2017-03-15 14:00:33','sdfadsfasdf'),(94,1,1,'127.0.0.1','{\"id\":64,\"staName\":\"123123\",\"createtime\":null,\"secretKey\":\"63e6768d75ca4d54\",\"vector\":\"0b5114aa007d64de\",\"uniqueKey\":\"1e53f00b919319a51b07e7e64d8a4c8d\",\"status\":null,\"memcached_id\":\"JumpwUC_2312311\",\"alterName\":null,\"alterTime\":null}','t_station_info',64,'2017-03-15 14:01:28','sdfadsfasdf'),(95,1,1,'127.0.0.1','{\"id\":9,\"userid\":170103,\"username\":\"cs1\",\"password\":\"123456\",\"status\":null,\"stationid\":1}','t_user_register',9,'2017-03-15 15:54:48','sdfadsfasdf'),(96,1,1,'127.0.0.1','{\"id\":10,\"userid\":170300,\"username\":\"cs2\",\"password\":\"123456\",\"status\":null,\"stationid\":1}','t_user_register',10,'2017-03-15 17:06:01','sdfadsfasdf'),(97,1,13,'127.0.0.1','{\"id\":2,\"stationid\":null,\"userid\":null,\"status\":1}','t_station_user_link',2,'2017-03-15 17:34:23','sdfadsfasdf'),(98,1,13,'127.0.0.1','{\"id\":1,\"stationid\":null,\"userid\":null,\"status\":1}','t_station_user_link',1,'2017-03-15 18:22:54','sdfadsfasdf'),(99,1,13,'127.0.0.1','{\"id\":1,\"userid\":null,\"username\":\"11111\",\"password\":\"11111111\",\"status\":null,\"stationid\":null}','t_user_register',1,'2017-03-15 20:38:37','sdfadsfasdf'),(100,1,13,'127.0.0.1','{\"id\":2,\"stationid\":null,\"userid\":null,\"status\":2}','t_station_user_link',2,'2017-03-15 20:40:02','sdfadsfasdf'),(101,1,13,'127.0.0.1','{\"id\":1,\"stationid\":null,\"userid\":null,\"status\":2}','t_station_user_link',1,'2017-03-15 20:41:39','sdfadsfasdf'),(102,1,14,'127.0.0.1','{\"id\":9,\"stationid\":1,\"userid\":\"170103\",\"status\":null}','t_station_user_link',9,'2017-03-16 15:56:06','sdfadsfasdf'),(103,1,13,'127.0.0.1','{\"id\":1,\"stationid\":null,\"userid\":null,\"status\":1}','t_station_user_link',1,'2017-03-16 16:54:32','sdfadsfasdf'),(104,1,13,'127.0.0.1','{\"id\":1,\"stationid\":null,\"userid\":null,\"status\":2}','t_station_user_link',1,'2017-03-16 16:55:48','sdfadsfasdf'),(105,1,13,'127.0.0.1','{\"id\":1,\"stationid\":null,\"userid\":null,\"status\":1}','t_station_user_link',1,'2017-03-16 17:06:37','sdfadsfasdf'),(106,1,13,'127.0.0.1','{\"id\":2,\"stationid\":null,\"userid\":null,\"status\":1}','t_station_user_link',2,'2017-03-17 10:03:45','sdfadsfasdf'),(107,1,13,'127.0.0.1','{\"id\":1,\"stationid\":null,\"userid\":null,\"status\":2}','t_station_user_link',1,'2017-03-17 10:06:16','sdfadsfasdf'),(108,1,13,'127.0.0.1','{\"id\":1,\"stationid\":null,\"userid\":null,\"status\":1}','t_station_user_link',1,'2017-03-17 10:06:31','sdfadsfasdf'),(109,1,13,'127.0.0.1','{\"id\":2,\"stationid\":null,\"userid\":null,\"status\":2}','t_station_user_link',2,'2017-03-17 10:08:01','sdfadsfasdf'),(110,1,13,'127.0.0.1','{\"id\":2,\"stationid\":null,\"userid\":null,\"status\":1}','t_station_user_link',2,'2017-03-17 10:23:37','sdfadsfasdf'),(111,1,13,'127.0.0.1','{\"id\":1,\"stationid\":null,\"userid\":null,\"status\":2}','t_station_user_link',1,'2017-03-17 10:24:33','sdfadsfasdf'),(112,1,13,'127.0.0.1','{\"id\":1,\"stationid\":null,\"userid\":null,\"status\":1}','t_station_user_link',1,'2017-03-17 10:25:48','sdfadsfasdf'),(113,1,13,'127.0.0.1','{\"id\":1,\"stationid\":null,\"userid\":null,\"status\":2}','t_station_user_link',1,'2017-03-17 10:26:42','sdfadsfasdf'),(114,1,13,'127.0.0.1','{\"id\":2,\"stationid\":null,\"userid\":null,\"status\":2}','t_station_user_link',2,'2017-03-17 10:27:27','sdfadsfasdf'),(115,1,13,'127.0.0.1','{\"id\":1,\"stationid\":null,\"userid\":null,\"status\":2}','t_station_user_link',1,'2017-03-17 10:28:07','sdfadsfasdf'),(116,1,13,'127.0.0.1','{\"id\":1,\"stationid\":null,\"userid\":null,\"status\":1}','t_station_user_link',1,'2017-03-17 10:33:39','sdfadsfasdf'),(117,1,13,'127.0.0.1','{\"id\":1,\"stationid\":null,\"userid\":null,\"status\":1}','t_station_user_link',1,'2017-03-17 10:36:35','sdfadsfasdf'),(118,1,13,'127.0.0.1','{\"id\":1,\"stationid\":null,\"userid\":null,\"status\":2}','t_station_user_link',1,'2017-03-17 10:36:49','sdfadsfasdf'),(119,1,13,'127.0.0.1','{\"id\":2,\"stationid\":null,\"userid\":null,\"status\":1}','t_station_user_link',2,'2017-03-17 10:37:00','sdfadsfasdf'),(120,1,13,'127.0.0.1','{\"id\":1,\"stationid\":null,\"userid\":null,\"status\":1}','t_station_user_link',1,'2017-03-17 10:40:10','sdfadsfasdf'),(121,1,13,'127.0.0.1','{\"id\":2,\"stationid\":null,\"userid\":null,\"status\":2}','t_station_user_link',2,'2017-03-17 10:40:44','sdfadsfasdf'),(122,1,13,'127.0.0.1','{\"id\":1,\"stationid\":null,\"userid\":null,\"status\":2}','t_station_user_link',1,'2017-03-17 10:40:59','sdfadsfasdf'),(123,1,13,'127.0.0.1','{\"id\":1,\"stationid\":null,\"userid\":null,\"status\":1}','t_station_user_link',1,'2017-03-17 10:42:32','sdfadsfasdf'),(124,1,13,'127.0.0.1','{\"id\":2,\"stationid\":null,\"userid\":null,\"status\":1}','t_station_user_link',2,'2017-03-17 10:46:47','sdfadsfasdf'),(125,1,13,'127.0.0.1','{\"id\":1,\"stationid\":null,\"userid\":null,\"status\":2}','t_station_user_link',1,'2017-03-17 10:50:56','sdfadsfasdf'),(126,1,13,'127.0.0.1','{\"id\":1,\"stationid\":null,\"userid\":null,\"status\":2}','t_station_user_link',1,'2017-03-17 10:52:26','sdfadsfasdf'),(127,1,13,'127.0.0.1','{\"id\":1,\"stationid\":null,\"userid\":null,\"status\":1}','t_station_user_link',1,'2017-03-17 10:52:37','sdfadsfasdf'),(128,1,13,'127.0.0.1','{\"id\":1,\"stationid\":null,\"userid\":null,\"status\":2}','t_station_user_link',1,'2017-03-17 10:55:02','sdfadsfasdf'),(129,1,13,'127.0.0.1','{\"id\":1,\"stationid\":null,\"userid\":null,\"status\":1}','t_station_user_link',1,'2017-03-17 10:57:54','sdfadsfasdf'),(130,1,13,'127.0.0.1','{\"id\":1,\"stationid\":null,\"userid\":null,\"status\":2}','t_station_user_link',1,'2017-03-17 11:01:11','sdfadsfasdf'),(131,1,13,'127.0.0.1','{\"id\":1,\"stationid\":null,\"userid\":null,\"status\":1}','t_station_user_link',1,'2017-03-17 11:02:55','sdfadsfasdf'),(132,1,13,'127.0.0.1','{\"id\":1,\"stationid\":null,\"userid\":null,\"status\":2}','t_station_user_link',1,'2017-03-17 11:04:59','sdfadsfasdf'),(133,1,13,'127.0.0.1','{\"id\":2,\"stationid\":null,\"userid\":null,\"status\":2}','t_station_user_link',2,'2017-03-17 11:07:06','sdfadsfasdf'),(134,1,13,'127.0.0.1','{\"id\":2,\"stationid\":null,\"userid\":null,\"status\":1}','t_station_user_link',2,'2017-03-17 11:09:27','sdfadsfasdf'),(135,1,13,'127.0.0.1','{\"id\":1,\"stationid\":null,\"userid\":null,\"status\":1}','t_station_user_link',1,'2017-03-17 11:09:52','sdfadsfasdf'),(136,1,13,'127.0.0.1','{\"id\":1,\"stationid\":null,\"userid\":null,\"status\":2}','t_station_user_link',1,'2017-03-17 11:14:09','sdfadsfasdf'),(137,1,13,'127.0.0.1','{\"id\":1,\"stationid\":null,\"userid\":null,\"status\":1}','t_station_user_link',1,'2017-03-17 11:14:44','sdfadsfasdf'),(138,1,13,'127.0.0.1','{\"id\":1,\"stationid\":null,\"userid\":null,\"status\":2}','t_station_user_link',1,'2017-03-17 11:25:44','sdfadsfasdf'),(139,1,13,'127.0.0.1','{\"id\":1,\"stationid\":null,\"userid\":null,\"status\":1}','t_station_user_link',1,'2017-03-17 11:26:23','sdfadsfasdf'),(140,1,13,'127.0.0.1','{\"id\":2,\"stationid\":null,\"userid\":null,\"status\":2}','t_station_user_link',2,'2017-03-17 11:26:41','sdfadsfasdf'),(141,1,13,'127.0.0.1','{\"id\":1,\"stationid\":null,\"userid\":null,\"status\":2}','t_station_user_link',1,'2017-03-17 11:54:32','sdfadsfasdf'),(142,1,13,'127.0.0.1','{\"id\":1,\"stationid\":null,\"userid\":null,\"status\":1}','t_station_user_link',1,'2017-03-17 11:56:12','sdfadsfasdf'),(143,1,13,'127.0.0.1','{\"id\":2,\"stationid\":null,\"userid\":null,\"status\":1}','t_station_user_link',2,'2017-03-17 11:57:32','sdfadsfasdf'),(144,1,13,'127.0.0.1','{\"id\":2,\"stationid\":null,\"userid\":null,\"status\":1}','t_station_user_link',2,'2017-03-17 11:57:42','sdfadsfasdf'),(145,1,13,'127.0.0.1','{\"id\":2,\"stationid\":null,\"userid\":null,\"status\":1}','t_station_user_link',2,'2017-03-17 11:58:11','sdfadsfasdf'),(146,1,13,'127.0.0.1','{\"id\":1,\"stationid\":null,\"userid\":null,\"status\":2}','t_station_user_link',1,'2017-03-17 11:58:40','sdfadsfasdf'),(147,1,13,'127.0.0.1','{\"id\":1,\"stationid\":null,\"userid\":null,\"status\":2}','t_station_user_link',1,'2017-03-17 11:58:45','sdfadsfasdf'),(148,1,13,'127.0.0.1','{\"id\":1,\"stationid\":null,\"userid\":null,\"status\":1}','t_station_user_link',1,'2017-03-17 12:00:43','sdfadsfasdf'),(149,1,13,'127.0.0.1','{\"id\":1,\"stationid\":null,\"userid\":null,\"status\":1}','t_station_user_link',1,'2017-03-17 12:00:48','sdfadsfasdf'),(150,1,13,'127.0.0.1','{\"id\":1,\"stationid\":null,\"userid\":null,\"status\":2}','t_station_user_link',1,'2017-03-17 12:03:23','sdfadsfasdf'),(151,1,13,'127.0.0.1','{\"id\":2,\"stationid\":null,\"userid\":null,\"status\":2}','t_station_user_link',2,'2017-03-17 12:03:29','sdfadsfasdf'),(152,1,13,'127.0.0.1','{\"id\":1,\"stationid\":null,\"userid\":null,\"status\":1}','t_station_user_link',1,'2017-03-17 12:05:20','sdfadsfasdf'),(153,1,13,'127.0.0.1','{\"id\":2,\"stationid\":null,\"userid\":null,\"status\":1}','t_station_user_link',2,'2017-03-17 12:07:13','sdfadsfasdf'),(154,1,13,'127.0.0.1','{\"id\":2,\"stationid\":null,\"userid\":null,\"status\":2}','t_station_user_link',2,'2017-03-17 12:07:44','sdfadsfasdf'),(155,1,13,'127.0.0.1','{\"id\":2,\"stationid\":null,\"userid\":null,\"status\":2}','t_station_user_link',2,'2017-03-17 12:07:52','sdfadsfasdf'),(156,1,13,'127.0.0.1','{\"id\":1,\"stationid\":null,\"userid\":null,\"status\":2}','t_station_user_link',1,'2017-03-17 12:08:14','sdfadsfasdf'),(157,1,13,'127.0.0.1','{\"id\":2,\"stationid\":null,\"userid\":null,\"status\":1}','t_station_user_link',2,'2017-03-17 12:08:37','sdfadsfasdf'),(158,1,13,'127.0.0.1','{\"id\":2,\"stationid\":null,\"userid\":null,\"status\":2}','t_station_user_link',2,'2017-03-17 12:08:49','sdfadsfasdf'),(159,1,13,'127.0.0.1','{\"id\":1,\"stationid\":null,\"userid\":null,\"status\":1}','t_station_user_link',1,'2017-03-17 12:14:49','sdfadsfasdf'),(160,1,13,'127.0.0.1','{\"id\":2,\"stationid\":null,\"userid\":null,\"status\":1}','t_station_user_link',2,'2017-03-17 12:14:49','sdfadsfasdf'),(161,1,13,'127.0.0.1','{\"id\":1,\"stationid\":null,\"userid\":null,\"status\":2}','t_station_user_link',1,'2017-03-17 12:15:08','sdfadsfasdf'),(162,1,13,'127.0.0.1','{\"id\":1,\"stationid\":null,\"userid\":null,\"status\":1}','t_station_user_link',1,'2017-03-17 12:15:13','sdfadsfasdf'),(163,1,13,'127.0.0.1','{\"id\":2,\"stationid\":null,\"userid\":null,\"status\":2}','t_station_user_link',2,'2017-03-17 12:15:18','sdfadsfasdf'),(164,1,13,'127.0.0.1','{\"id\":2,\"stationid\":null,\"userid\":null,\"status\":1}','t_station_user_link',2,'2017-03-17 12:15:23','sdfadsfasdf'),(165,1,13,'127.0.0.1','{\"id\":2,\"stationid\":null,\"userid\":null,\"status\":2}','t_station_user_link',2,'2017-03-17 12:15:28','sdfadsfasdf'),(166,1,13,'127.0.0.1','{\"id\":1,\"stationid\":null,\"userid\":null,\"status\":2}','t_station_user_link',1,'2017-03-17 12:15:32','sdfadsfasdf'),(167,1,14,'127.0.0.1','{\"id\":10,\"stationid\":1,\"userid\":\"170103\",\"status\":null}','t_station_user_link',10,'2017-03-17 14:13:02','sdfadsfasdf'),(168,1,14,'127.0.0.1','{\"id\":11,\"stationid\":1,\"userid\":\"170300\",\"status\":null}','t_station_user_link',11,'2017-03-17 14:14:11','sdfadsfasdf'),(169,1,13,'127.0.0.1','{\"id\":1,\"stationid\":null,\"userid\":null,\"status\":1}','t_station_user_link',1,'2017-03-17 14:22:38','sdfadsfasdf'),(170,1,13,'127.0.0.1','{\"id\":1,\"stationid\":null,\"userid\":null,\"status\":2}','t_station_user_link',1,'2017-03-17 14:22:44','sdfadsfasdf'),(171,1,13,'127.0.0.1','{\"id\":1,\"stationid\":null,\"userid\":null,\"status\":1}','t_station_user_link',1,'2017-03-17 14:22:49','sdfadsfasdf'),(172,1,13,'127.0.0.1','{\"id\":1,\"stationid\":null,\"userid\":null,\"status\":2}','t_station_user_link',1,'2017-03-17 14:44:27','sdfadsfasdf'),(173,1,13,'127.0.0.1','{\"id\":1,\"stationid\":null,\"userid\":null,\"status\":1}','t_station_user_link',1,'2017-03-17 15:04:22','sdfadsfasdf'),(174,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170313\",\"status\":2}','t_station_user_link',1,'2017-03-17 17:12:32','sdfadsfasdf'),(175,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170313\",\"status\":2}','t_station_user_link',1,'2017-03-17 17:13:03','sdfadsfasdf'),(176,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170313\",\"status\":2}','t_station_user_link',1,'2017-03-17 17:13:28','sdfadsfasdf'),(177,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170313\",\"status\":1}','t_station_user_link',1,'2017-03-17 17:14:46','sdfadsfasdf'),(178,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170313\",\"status\":1}','t_station_user_link',1,'2017-03-17 17:15:14','sdfadsfasdf'),(179,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170313\",\"status\":1}','t_station_user_link',1,'2017-03-17 17:15:32','sdfadsfasdf'),(180,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170313\",\"status\":2}','t_station_user_link',1,'2017-03-17 17:19:11','sdfadsfasdf'),(181,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170314\",\"status\":2}','t_station_user_link',2,'2017-03-17 17:19:16','sdfadsfasdf'),(182,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170313\",\"status\":1}','t_station_user_link',1,'2017-03-17 17:19:28','sdfadsfasdf'),(183,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170313\",\"status\":2}','t_station_user_link',1,'2017-03-17 17:21:08','sdfadsfasdf'),(184,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170313\",\"status\":1}','t_station_user_link',1,'2017-03-17 17:21:13','sdfadsfasdf'),(185,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170313\",\"status\":2}','t_station_user_link',1,'2017-03-17 17:21:17','sdfadsfasdf'),(186,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170103\",\"status\":1}','t_station_user_link',10,'2017-03-17 17:21:23','sdfadsfasdf'),(187,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170300\",\"status\":1}','t_station_user_link',11,'2017-03-17 17:30:51','sdfadsfasdf'),(188,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170103\",\"status\":1}','t_station_user_link',10,'2017-03-17 17:31:58','sdfadsfasdf'),(189,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170300\",\"status\":1}','t_station_user_link',11,'2017-03-17 17:33:15','sdfadsfasdf'),(190,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170103\",\"status\":1}','t_station_user_link',10,'2017-03-17 17:37:32','sdfadsfasdf'),(191,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170300\",\"status\":2}','t_station_user_link',11,'2017-03-17 17:39:49','sdfadsfasdf'),(192,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170300\",\"status\":2}','t_station_user_link',11,'2017-03-17 17:40:10','sdfadsfasdf'),(193,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170300\",\"status\":2}','t_station_user_link',11,'2017-03-17 17:40:10','sdfadsfasdf'),(194,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170300\",\"status\":2}','t_station_user_link',11,'2017-03-17 17:40:10','sdfadsfasdf'),(195,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170300\",\"status\":2}','t_station_user_link',11,'2017-03-17 17:40:10','sdfadsfasdf'),(196,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170103\",\"status\":2}','t_station_user_link',10,'2017-03-17 17:41:43','sdfadsfasdf'),(197,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170300\",\"status\":1}','t_station_user_link',11,'2017-03-17 17:43:03','sdfadsfasdf'),(198,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170103\",\"status\":2}','t_station_user_link',10,'2017-03-17 17:44:10','sdfadsfasdf'),(199,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170300\",\"status\":2}','t_station_user_link',11,'2017-03-17 17:47:43','sdfadsfasdf'),(200,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170103\",\"status\":2}','t_station_user_link',10,'2017-03-17 17:57:48','sdfadsfasdf'),(201,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170300\",\"status\":2}','t_station_user_link',11,'2017-03-17 17:59:29','sdfadsfasdf'),(202,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170103\",\"status\":2}','t_station_user_link',10,'2017-03-17 18:02:19','sdfadsfasdf'),(203,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170313\",\"status\":1}','t_station_user_link',1,'2017-03-17 18:14:01','sdfadsfasdf'),(204,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170300\",\"status\":1}','t_station_user_link',11,'2017-03-17 18:14:28','sdfadsfasdf'),(205,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170300\",\"status\":2}','t_station_user_link',11,'2017-03-17 18:16:55','sdfadsfasdf'),(206,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170103\",\"status\":1}','t_station_user_link',10,'2017-03-17 18:18:23','sdfadsfasdf'),(207,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170300\",\"status\":1}','t_station_user_link',11,'2017-03-17 18:22:02','sdfadsfasdf'),(208,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170103\",\"status\":1}','t_station_user_link',10,'2017-03-17 18:24:19','sdfadsfasdf'),(209,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170300\",\"status\":2}','t_station_user_link',11,'2017-03-17 18:25:29','sdfadsfasdf'),(210,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170300\",\"status\":2}','t_station_user_link',11,'2017-03-17 18:26:23','sdfadsfasdf'),(211,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170103\",\"status\":2}','t_station_user_link',10,'2017-03-17 18:27:27','sdfadsfasdf'),(212,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170103\",\"status\":1}','t_station_user_link',10,'2017-03-17 18:28:05','sdfadsfasdf'),(213,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170103\",\"status\":2}','t_station_user_link',10,'2017-03-17 18:28:54','sdfadsfasdf'),(214,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170103\",\"status\":1}','t_station_user_link',10,'2017-03-17 18:28:58','sdfadsfasdf'),(215,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170300\",\"status\":1}','t_station_user_link',11,'2017-03-17 18:29:03','sdfadsfasdf'),(216,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170300\",\"status\":2}','t_station_user_link',11,'2017-03-17 18:29:06','sdfadsfasdf'),(217,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170314\",\"status\":1}','t_station_user_link',2,'2017-03-17 18:29:14','sdfadsfasdf'),(218,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170103\",\"status\":2}','t_station_user_link',10,'2017-03-17 18:29:19','sdfadsfasdf'),(219,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170313\",\"status\":2}','t_station_user_link',1,'2017-03-17 18:30:02','sdfadsfasdf'),(220,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170314\",\"status\":1}','t_station_user_link',2,'2017-03-17 18:30:08','sdfadsfasdf'),(221,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170313\",\"status\":1}','t_station_user_link',1,'2017-03-17 18:30:21','sdfadsfasdf'),(222,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170314\",\"status\":2}','t_station_user_link',2,'2017-03-17 18:30:24','sdfadsfasdf'),(223,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170103\",\"status\":2}','t_station_user_link',10,'2017-03-17 18:30:29','sdfadsfasdf'),(224,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170300\",\"status\":1}','t_station_user_link',11,'2017-03-17 18:30:36','sdfadsfasdf'),(225,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170300\",\"status\":2}','t_station_user_link',11,'2017-03-17 18:30:40','sdfadsfasdf'),(226,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170103\",\"status\":1}','t_station_user_link',10,'2017-03-17 18:30:45','sdfadsfasdf'),(227,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170313\",\"status\":2}','t_station_user_link',1,'2017-03-20 10:18:04','sdfadsfasdf'),(228,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170313\",\"status\":1}','t_station_user_link',1,'2017-03-20 10:18:50','sdfadsfasdf'),(229,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170313\",\"status\":2}','t_station_user_link',1,'2017-03-20 10:24:42','sdfadsfasdf'),(230,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170313\",\"status\":1}','t_station_user_link',1,'2017-03-20 10:25:57','sdfadsfasdf'),(231,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170313\",\"status\":2}','t_station_user_link',1,'2017-03-20 10:26:35','sdfadsfasdf'),(232,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170313\",\"status\":1}','t_station_user_link',1,'2017-03-20 10:27:45','sdfadsfasdf'),(233,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170313\",\"status\":2}','t_station_user_link',1,'2017-03-20 10:29:36','sdfadsfasdf'),(234,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170313\",\"status\":1}','t_station_user_link',1,'2017-03-20 10:36:57','sdfadsfasdf'),(235,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170313\",\"status\":2}','t_station_user_link',1,'2017-03-20 10:37:46','sdfadsfasdf'),(236,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170314\",\"status\":1}','t_station_user_link',2,'2017-03-20 10:38:35','sdfadsfasdf'),(237,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170313\",\"status\":1}','t_station_user_link',1,'2017-03-20 10:41:49','sdfadsfasdf'),(238,1,13,'127.0.0.1','{\"id\":1,\"userid\":null,\"username\":\"test1\",\"password\":\"111111\",\"status\":null,\"stationid\":null}','t_user_register',1,'2017-03-20 11:13:54','sdfadsfasdf'),(239,1,13,'127.0.0.1','{\"id\":1,\"userid\":null,\"username\":\"test1\",\"password\":\"111111\",\"status\":null,\"stationid\":null}','t_user_register',1,'2017-03-20 11:14:02','sdfadsfasdf'),(240,1,13,'127.0.0.1','{\"id\":1,\"userid\":null,\"username\":\"test1\",\"password\":\"111111\",\"status\":null,\"stationid\":null}','t_user_register',1,'2017-03-20 11:14:02','sdfadsfasdf'),(241,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170313\",\"status\":2}','t_station_user_link',1,'2017-03-20 11:14:30','sdfadsfasdf'),(242,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170313\",\"status\":2}','t_station_user_link',1,'2017-03-20 11:14:31','sdfadsfasdf'),(243,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170313\",\"status\":2}','t_station_user_link',1,'2017-03-20 11:14:59','sdfadsfasdf'),(244,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170313\",\"status\":2}','t_station_user_link',1,'2017-03-20 11:14:59','sdfadsfasdf'),(245,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170313\",\"status\":2}','t_station_user_link',1,'2017-03-20 11:14:59','sdfadsfasdf'),(246,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170313\",\"status\":2}','t_station_user_link',1,'2017-03-20 11:15:00','sdfadsfasdf'),(247,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170313\",\"status\":2}','t_station_user_link',1,'2017-03-20 11:15:02','sdfadsfasdf'),(248,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170313\",\"status\":1}','t_station_user_link',1,'2017-03-20 11:38:20','sdfadsfasdf'),(249,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170313\",\"status\":1}','t_station_user_link',1,'2017-03-20 11:38:21','sdfadsfasdf'),(250,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170313\",\"status\":1}','t_station_user_link',1,'2017-03-20 11:38:21','sdfadsfasdf'),(251,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170313\",\"status\":2}','t_station_user_link',1,'2017-03-20 11:38:23','sdfadsfasdf'),(252,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170313\",\"status\":2}','t_station_user_link',1,'2017-03-20 11:38:23','sdfadsfasdf'),(253,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170313\",\"status\":2}','t_station_user_link',1,'2017-03-20 11:38:23','sdfadsfasdf'),(254,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170313\",\"status\":2}','t_station_user_link',1,'2017-03-20 11:38:25','sdfadsfasdf'),(255,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170313\",\"status\":2}','t_station_user_link',1,'2017-03-20 11:38:25','sdfadsfasdf'),(256,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170313\",\"status\":1}','t_station_user_link',1,'2017-03-20 11:38:27','sdfadsfasdf'),(257,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170313\",\"status\":1}','t_station_user_link',1,'2017-03-20 11:38:27','sdfadsfasdf'),(258,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170313\",\"status\":1}','t_station_user_link',1,'2017-03-20 11:38:27','sdfadsfasdf'),(259,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170313\",\"status\":2}','t_station_user_link',1,'2017-03-20 11:39:14','sdfadsfasdf'),(260,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170313\",\"status\":1}','t_station_user_link',1,'2017-03-20 11:39:40','sdfadsfasdf'),(261,1,13,'127.0.0.1','{\"id\":1,\"userid\":null,\"username\":\"1111\",\"password\":\"12313234\",\"status\":null,\"stationid\":null}','t_user_register',1,'2017-03-20 14:48:58','sdfadsfasdf'),(262,1,14,'127.0.0.1','{\"id\":12,\"stationid\":1,\"userid\":\"170333\",\"status\":null}','t_station_user_link',12,'2017-03-20 16:32:11','sdfadsfasdf'),(263,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170313\",\"status\":2}','t_station_user_link',1,'2017-03-21 11:36:47','sdfadsfasdf'),(264,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170313\",\"status\":1}','t_station_user_link',1,'2017-03-21 11:41:16','sdfadsfasdf'),(265,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170313\",\"status\":2}','t_station_user_link',1,'2017-03-21 11:46:51','sdfadsfasdf'),(266,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170313\",\"status\":1}','t_station_user_link',1,'2017-03-21 17:41:23','sdfadsfasdf'),(267,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170313\",\"status\":2}','t_station_user_link',1,'2017-03-21 17:44:48','sdfadsfasdf'),(268,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170314\",\"status\":2}','t_station_user_link',2,'2017-03-21 17:44:50','sdfadsfasdf'),(269,1,14,'127.0.0.1','{\"id\":15,\"stationid\":5,\"userid\":\"170321\",\"status\":null}','t_station_user_link',15,'2017-03-21 18:01:09','sdfadsfasdf'),(270,1,14,'127.0.0.1','{\"id\":16,\"stationid\":5,\"userid\":\"170321\",\"status\":null}','t_station_user_link',16,'2017-03-21 18:01:28','sdfadsfasdf'),(271,1,14,'127.0.0.1','{\"id\":17,\"stationid\":5,\"userid\":\"170321\",\"status\":null}','t_station_user_link',17,'2017-03-21 18:01:28','sdfadsfasdf'),(272,1,14,'127.0.0.1','{\"id\":20,\"stationid\":5,\"userid\":\"170321\",\"status\":null}','t_station_user_link',20,'2017-03-21 18:01:28','sdfadsfasdf'),(273,1,14,'127.0.0.1','{\"id\":21,\"stationid\":5,\"userid\":\"170321\",\"status\":null}','t_station_user_link',21,'2017-03-21 18:01:28','sdfadsfasdf'),(274,1,14,'127.0.0.1','{\"id\":18,\"stationid\":5,\"userid\":\"170321\",\"status\":null}','t_station_user_link',18,'2017-03-21 18:01:28','sdfadsfasdf'),(275,1,14,'127.0.0.1','{\"id\":19,\"stationid\":5,\"userid\":\"170321\",\"status\":null}','t_station_user_link',19,'2017-03-21 18:01:28','sdfadsfasdf'),(276,1,14,'127.0.0.1','{\"id\":22,\"stationid\":4,\"userid\":\"170322\",\"status\":null}','t_station_user_link',22,'2017-03-21 18:01:50','sdfadsfasdf'),(277,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170333\",\"status\":1}','t_station_user_link',12,'2017-03-22 10:07:57','sdfadsfasdf'),(278,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170333\",\"status\":1}','t_station_user_link',12,'2017-03-22 10:16:12','sdfadsfasdf'),(279,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170333\",\"status\":1}','t_station_user_link',12,'2017-03-22 10:25:13','sdfadsfasdf'),(280,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170333\",\"status\":1}','t_station_user_link',12,'2017-03-22 10:27:51','sdfadsfasdf'),(281,1,13,'127.0.0.1','{\"id\":null,\"stationid\":1,\"userid\":\"170333\",\"status\":1}','t_station_user_link',12,'2017-03-22 10:29:13','sdfadsfasdf');
/*!40000 ALTER TABLE `t_system_log_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user_info`
--

DROP TABLE IF EXISTS `t_user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `objname` varchar(50) NOT NULL,
  `departmentId` int(11) DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user_info`
--

LOCK TABLES `t_user_info` WRITE;
/*!40000 ALTER TABLE `t_user_info` DISABLE KEYS */;
INSERT INTO `t_user_info` VALUES (1,'姚永丰',1,0),(2,'姚老板',1,0),(3,'测试',1,0),(4,'测试',1,0);
/*!40000 ALTER TABLE `t_user_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user_register`
--

DROP TABLE IF EXISTS `t_user_register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_user_register` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `username` varchar(16) NOT NULL,
  `password` varchar(32) NOT NULL,
  `stationid` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0正常,1禁用',
  PRIMARY KEY (`id`),
  KEY `userid_index` (`userid`),
  KEY `userName_index` (`username`),
  KEY `stationid_index` (`stationid`),
  KEY `status_index` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user_register`
--

LOCK TABLES `t_user_register` WRITE;
/*!40000 ALTER TABLE `t_user_register` DISABLE KEYS */;
INSERT INTO `t_user_register` VALUES (1,170313,'1111','12313234',1,1),(2,170314,'ceshi','111111',1,1),(3,170315,'ceshi','111111',2,1),(4,170316,'ceshi','111111',2,1),(5,170317,'ceshi','111111',3,1),(6,170318,'ceshi','111111',3,1),(7,170314,'测试','111111',2,1),(8,170316,'ces','111111',1,1),(9,170103,'cs1','123456',1,0),(10,170300,'cs2','123456',1,0),(11,170333,'cs3','123456',1,0),(12,170321,'cs4','123456',5,0),(13,170322,'测试5','123456',4,0);
/*!40000 ALTER TABLE `t_user_register` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user_role_link`
--

DROP TABLE IF EXISTS `t_user_role_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_user_role_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `roleid` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `stationid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user_role_link`
--

LOCK TABLES `t_user_role_link` WRITE;
/*!40000 ALTER TABLE `t_user_role_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_user_role_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treenodes`
--

DROP TABLE IF EXISTS `treenodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `treenodes` (
  `id` int(11) NOT NULL,
  `nodename` varchar(20) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treenodes`
--

LOCK TABLES `treenodes` WRITE;
/*!40000 ALTER TABLE `treenodes` DISABLE KEYS */;
INSERT INTO `treenodes` VALUES (1,'A',0),(2,'B',1),(3,'C',1),(4,'D',2),(5,'E',2),(6,'F',3),(7,'G',6),(8,'H',0),(9,'I',8),(10,'J',8),(11,'K',8),(12,'L',9),(13,'M',9),(14,'N',12),(15,'O',12),(16,'P',15),(17,'Q',15),(18,'kk',6);
/*!40000 ALTER TABLE `treenodes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-22 14:52:28
