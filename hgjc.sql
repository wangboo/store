-- MySQL dump 10.14  Distrib 5.5.56-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: hgjc
-- ------------------------------------------------------
-- Server version	5.5.56-MariaDB

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `sel` tinyint(4) DEFAULT '0',
  `name` varchar(64) NOT NULL,
  `phoneNo` varchar(32) NOT NULL,
  `zipCode` varchar(12) NOT NULL,
  `region1` int(11) DEFAULT '0',
  `region2` int(11) DEFAULT '0',
  `region3` int(11) DEFAULT '0',
  `address` varchar(256) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_address_userId` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (35,51,0,'王博','13219001125','100001',51,5101,510107,'天府新区佳造业君汇上品'),(36,53,0,'胡静','18380463297','401520',51,5101,510107,'锦里'),(38,51,0,'李子','183880655','1805855',51,5101,510108,'天意几件'),(40,51,0,'露露','106388536','8566',51,5101,510112,'阳光城'),(41,51,0,'亲亲','489655','5589',51,5101,510107,'饺子'),(43,51,0,'清蒸','15788799','4994',51,5101,510112,'提'),(44,51,1,'清蒸','15788799','4994',51,5101,510107,'提'),(45,51,0,'狗儿子','31848','9949',51,5101,510107,'锦里'),(46,51,0,'邪恶','884994','994',15,1508,150825,' 图'),(47,51,0,'动','15878997','6667',50,5001,500101,'具体'),(48,51,0,'动','15878997','6667',50,5001,500101,'具体'),(49,52,0,'皇贵','18885812122','10001',52,5202,520201,'火车站'),(50,52,1,'王博','18885812122','10001',51,5101,510107,'环球中心'),(51,54,1,'苏冲','17623040687','',52,5202,520201,'七十三万马五金机电市场'),(52,53,0,'周旋','9752336994','',12,1201,120106,'啦你'),(53,53,0,'陈龙','4308766','',51,5101,510104,'公公'),(54,53,1,'王宇','3438888','',51,5101,510108,'公公'),(55,53,0,'莎莎','45888','',51,5101,510106,'拉拉裤'),(56,55,1,'红烧','4588','',51,5101,510108,'看看'),(57,57,1,'红烧猪蹄','128775666','',51,5101,510108,'来了么'),(58,59,1,'王博','13219001125','10001',51,5101,510107,'环球中心N5'),(59,60,1,'胡静','18380467843','',44,4406,440606,'家里'),(60,61,1,'苏冲','17623040687','',52,5202,520201,'七十三万马五金机电市场');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `zorder` int(11) DEFAULT '0',
  `visible` tinyint(4) DEFAULT '0',
  `storeId` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT '1999-12-31 16:00:00',
  `updatedAt` timestamp NOT NULL DEFAULT '1999-12-31 16:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` VALUES (68,'标牌',1,1,7,'2018-07-11 00:51:37','2018-07-11 00:51:37'),(69,'雨虹',1,1,7,'2018-07-12 02:58:12','2018-07-12 02:58:12'),(70,'三和',1,1,7,'2018-07-12 02:58:22','1999-12-31 16:00:00'),(71,'百安密',1,1,7,'2018-07-12 13:34:39','1999-12-31 16:00:00'),(72,'白云',1,1,7,'2018-07-12 13:45:44','1999-12-31 16:00:00'),(75,'润涂士',1,1,7,'2018-07-12 13:52:29','1999-12-31 16:00:00'),(76,'黔虹',1,1,7,'2018-07-12 13:52:50','1999-12-31 16:00:00'),(77,'光迈滚筒刷',1,1,7,'2018-07-16 11:43:02','2018-07-16 11:43:02'),(78,'大罗羊毛刷',1,1,7,'2018-07-16 11:43:14','1999-12-31 16:00:00'),(79,'金丽缘',1,1,7,'2018-07-16 13:10:57','1999-12-31 16:00:00'),(81,'鑫源',1,1,7,'2018-07-16 13:11:19','1999-12-31 16:00:00'),(82,'瑞德利',1,1,7,'2018-07-16 13:11:35','1999-12-31 16:00:00'),(83,'美尔佳',1,1,7,'2018-07-16 13:11:45','1999-12-31 16:00:00'),(84,'安徽大力士',1,1,7,'2018-07-16 13:12:10','1999-12-31 16:00:00'),(85,'广硅',1,1,7,'2018-07-16 13:12:20','1999-12-31 16:00:00'),(86,'广东美达化工',1,1,7,'2018-07-24 13:40:44','2018-07-24 13:40:44'),(87,'精品',1,1,7,'2018-07-28 14:48:08','1999-12-31 16:00:00'),(88,'峦兴',1,1,7,'2018-08-08 09:10:55','1999-12-31 16:00:00'),(89,'马牌',1,1,7,'2018-08-08 09:11:05','1999-12-31 16:00:00'),(90,'涂附',1,1,7,'2018-08-08 09:11:24','1999-12-31 16:00:00'),(91,'荣联',1,1,7,'2018-12-18 03:59:58','1999-12-31 16:00:00');
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branditemmap`
--

DROP TABLE IF EXISTS `branditemmap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `branditemmap` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandId` int(11) NOT NULL,
  `itemId` int(11) NOT NULL,
  `storeId` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT '1999-12-31 16:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branditemmap`
--

LOCK TABLES `branditemmap` WRITE;
/*!40000 ALTER TABLE `branditemmap` DISABLE KEYS */;
INSERT INTO `branditemmap` VALUES (36,69,25,7,'2018-07-12 13:31:50'),(37,82,26,7,'2018-07-18 12:37:12'),(38,69,27,7,'2018-07-19 01:49:03'),(39,69,28,7,'2018-07-19 03:09:08'),(40,69,29,7,'2018-07-19 03:45:50'),(41,69,30,7,'2018-07-24 09:21:51'),(42,69,31,7,'2018-07-24 10:42:14'),(43,69,32,7,'2018-07-24 10:55:27'),(44,69,33,7,'2018-07-24 11:07:50'),(45,69,34,7,'2018-07-24 11:12:40'),(47,86,35,7,'2018-07-24 13:41:09'),(48,86,36,7,'2018-07-24 14:04:22'),(50,69,24,7,'2018-07-25 06:22:45'),(51,84,38,7,'2018-07-25 13:23:56'),(55,87,41,7,'2018-07-28 14:48:22'),(56,87,42,7,'2018-07-29 13:29:04'),(58,70,44,7,'2018-07-30 12:04:42'),(61,87,47,7,'2018-08-03 13:34:26'),(63,86,49,7,'2018-08-05 02:49:59'),(64,71,50,7,'2018-08-05 04:28:11'),(65,71,51,7,'2018-08-05 07:02:15'),(66,84,52,7,'2018-08-05 07:56:28'),(72,77,58,7,'2018-08-08 09:00:19'),(74,89,60,7,'2018-08-08 09:12:26'),(75,90,61,7,'2018-08-08 09:13:07'),(76,88,59,7,'2018-08-08 09:16:06'),(77,88,62,7,'2018-08-08 09:46:05'),(81,69,66,7,'2018-08-15 01:29:52'),(83,69,68,7,'2018-08-18 06:08:20'),(85,68,69,7,'2018-11-29 05:19:55'),(86,68,70,7,'2018-11-30 02:15:22'),(87,68,71,7,'2018-11-30 02:42:06'),(88,68,72,7,'2018-11-30 07:51:28'),(89,68,73,7,'2018-11-30 07:54:54'),(90,68,74,7,'2018-11-30 08:24:40'),(91,68,75,7,'2018-11-30 08:26:34'),(92,68,76,7,'2018-11-30 08:47:06'),(93,68,77,7,'2018-11-30 08:53:17'),(94,68,78,7,'2018-11-30 11:06:23'),(95,91,79,7,'2018-12-18 04:01:56'),(96,91,80,7,'2018-12-18 08:12:36'),(97,91,81,7,'2018-12-18 08:19:15'),(98,91,82,7,'2018-12-18 08:20:03'),(99,91,83,7,'2018-12-18 08:22:32'),(100,91,84,7,'2018-12-18 08:27:00'),(101,91,85,7,'2018-12-18 08:27:43'),(102,91,86,7,'2018-12-18 08:28:21'),(103,91,87,7,'2018-12-18 08:29:28'),(104,91,88,7,'2018-12-18 08:30:16'),(105,91,89,7,'2018-12-18 08:30:53'),(106,91,90,7,'2018-12-18 08:32:50'),(107,91,91,7,'2018-12-18 08:33:38'),(108,91,92,7,'2018-12-18 09:15:26'),(109,91,93,7,'2018-12-18 09:16:06'),(110,91,94,7,'2018-12-18 09:16:56'),(111,91,95,7,'2018-12-18 10:53:45'),(112,91,96,7,'2018-12-18 10:59:49'),(113,91,97,7,'2018-12-18 11:02:08'),(114,91,98,7,'2018-12-18 11:02:54'),(115,91,99,7,'2018-12-18 11:05:56'),(116,91,100,7,'2018-12-18 11:06:40');
/*!40000 ALTER TABLE `branditemmap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buycar`
--

DROP TABLE IF EXISTS `buycar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buycar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customerId` int(11) NOT NULL,
  `storeId` int(11) NOT NULL COMMENT '商店',
  `itemId` int(11) NOT NULL COMMENT '商品id',
  `amount` int(11) DEFAULT '1' COMMENT '商品数量',
  `createdAt` timestamp NOT NULL DEFAULT '1999-12-31 16:00:00',
  `updatedAt` timestamp NOT NULL DEFAULT '1999-12-31 16:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_buyCar_customerId` (`customerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buycar`
--

LOCK TABLES `buycar` WRITE;
/*!40000 ALTER TABLE `buycar` DISABLE KEYS */;
/*!40000 ALTER TABLE `buycar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buyhis`
--

DROP TABLE IF EXISTS `buyhis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buyhis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `storeId` int(11) NOT NULL,
  `state` int(11) DEFAULT '0',
  `connectName` varchar(128) NOT NULL,
  `connectPhoneNo` varchar(32) NOT NULL,
  `connectAddress` varchar(255) DEFAULT '',
  `comment` varchar(245) NOT NULL,
  `totalMoney` decimal(10,2) DEFAULT NULL,
  `score` decimal(10,0) NOT NULL,
  `leftMoney` decimal(10,2) DEFAULT NULL,
  `payMethod` tinyint(4) DEFAULT '0',
  `paidMoney` decimal(10,2) DEFAULT NULL,
  `needPayMoney` decimal(10,2) DEFAULT NULL,
  `carryType` tinyint(4) DEFAULT '0',
  `carryTime` date NOT NULL,
  `distance` float NOT NULL,
  `elevator` tinyint(4) DEFAULT '0',
  `floor` int(11) DEFAULT '1',
  `totalWeight` double NOT NULL,
  `carrierName` varchar(64) DEFAULT '',
  `carryMoney` decimal(10,2) DEFAULT NULL,
  `truckMoney` decimal(10,2) DEFAULT NULL,
  `carraierPhoneNo` varchar(32) DEFAULT '',
  `createOrderAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `setOrderAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `recvOrderAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `packAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sendAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `completeAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `refuseAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `orderNo` varchar(22) NOT NULL,
  `recvComment` varchar(256) DEFAULT '',
  `packComment` varchar(256) DEFAULT '',
  `completeComment` varchar(256) DEFAULT '',
  `recvGmId` int(11) DEFAULT '0',
  `flag` int(11) DEFAULT '0',
  `prepayId` varchar(64) DEFAULT '',
  `transactionId` varchar(32) DEFAULT '',
  `timeEnd` varchar(16) DEFAULT '',
  `prepayTime` timestamp NOT NULL DEFAULT '1999-12-31 16:00:00',
  `prepayCount` int(11) DEFAULT '0',
  `refundFee` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_buyHis_userId` (`userId`),
  KEY `idx_buyHis_orderNo` (`orderNo`)
) ENGINE=InnoDB AUTO_INCREMENT=538 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buyhis`
--

LOCK TABLES `buyhis` WRITE;
/*!40000 ALTER TABLE `buyhis` DISABLE KEYS */;
INSERT INTO `buyhis` VALUES (536,61,7,4,'苏冲','17623040687','贵州省,六盘水市,钟山区,七十三万马五金机电市场','',0.10,0,0.00,1,0.00,0.10,1,'2018-01-12',11470.3,1,0,0,'007',0.00,0.00,'17623040687','2018-08-12 04:13:34','2018-08-12 04:13:54','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','2018712121334208042','','','',7,0,'wx12121343781304b0b8476bfa2916022703','','','2018-08-12 04:13:43',1,NULL),(537,59,7,12,'王博','13219001125','四川省,成都市,武侯区,环球中心N5','',660.00,0,0.00,0,0.00,660.00,1,'2018-01-21',11350.7,1,0,5,'',0.00,0.00,'','2018-10-21 02:17:01','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','201892110171158358','','','',0,0,'wx211017047905363d13bb3f321512267260','','','2018-10-21 02:17:04',1,NULL);
/*!40000 ALTER TABLE `buyhis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buyhisitem`
--

DROP TABLE IF EXISTS `buyhisitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buyhisitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `storeId` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `buyHisId` int(11) NOT NULL,
  `itemId` int(11) NOT NULL,
  `perPrice` decimal(10,2) DEFAULT '0.00',
  `totalPrice` decimal(10,2) DEFAULT '0.00',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `priceId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_buyHisItem_buyHisItem` (`userId`,`buyHisId`),
  KEY `idx_buyhisitem_priceId` (`priceId`)
) ENGINE=InnoDB AUTO_INCREMENT=191 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buyhisitem`
--

LOCK TABLES `buyhisitem` WRITE;
/*!40000 ALTER TABLE `buyhisitem` DISABLE KEYS */;
INSERT INTO `buyhisitem` VALUES (186,61,7,1,536,47,0.10,0.10,'2018-08-12 04:13:34',152),(187,59,7,2,537,34,20.00,40.00,'2018-10-21 02:17:01',12),(188,59,7,1,537,32,380.00,380.00,'2018-10-21 02:17:01',27),(189,59,7,6,537,45,10.00,60.00,'2018-10-21 02:17:01',23),(190,59,7,1,537,24,180.00,180.00,'2018-10-21 02:17:01',2);
/*!40000 ALTER TABLE `buyhisitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buyhisrefund`
--

DROP TABLE IF EXISTS `buyhisrefund`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buyhisrefund` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `refundNo` varchar(32) DEFAULT NULL,
  `orderNo` varchar(32) DEFAULT NULL,
  `refundState` int(11) DEFAULT '0',
  `refundDesc` varchar(128) DEFAULT '',
  `refundFee` decimal(10,2) DEFAULT NULL,
  `refundId` varchar(32) DEFAULT '0',
  `gmId` int(11) NOT NULL,
  `successAt` varchar(20) DEFAULT '',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_buyhisrefund_refundNo` (`refundNo`),
  KEY `idx_buyhisrefund_orderNo` (`orderNo`),
  KEY `idx_buyhisrefund_gmId` (`gmId`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buyhisrefund`
--

LOCK TABLES `buyhisrefund` WRITE;
/*!40000 ALTER TABLE `buyhisrefund` DISABLE KEYS */;
/*!40000 ALTER TABLE `buyhisrefund` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carprice`
--

DROP TABLE IF EXISTS `carprice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carprice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `storeId` int(11) NOT NULL,
  `minWeight` float NOT NULL,
  `maxWeight` float NOT NULL,
  `carInitPrice` decimal(10,0) NOT NULL,
  `carPerKmPrice` decimal(10,0) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_carPrice_storeId` (`storeId`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carprice`
--

LOCK TABLES `carprice` WRITE;
/*!40000 ALTER TABLE `carprice` DISABLE KEYS */;
INSERT INTO `carprice` VALUES (12,7,0,10000000,0,0);
/*!40000 ALTER TABLE `carprice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `storeId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `itemId` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT '1999-12-31 16:00:00',
  `updatedAt` timestamp NOT NULL DEFAULT '1999-12-31 16:00:00',
  `sel` tinyint(4) NOT NULL DEFAULT '1',
  `priceId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_cart_userId` (`userId`),
  KEY `idx_cart_priceId` (`userId`,`priceId`)
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (184,7,63,41,1,'2018-08-05 02:51:23','1999-12-31 16:00:00',1,19),(187,7,68,33,10,'2018-08-12 07:32:47','1999-12-31 16:00:00',1,11),(189,7,74,20,1,'2018-08-31 03:33:22','1999-12-31 16:00:00',1,1),(192,7,61,51,1,'2018-10-03 14:54:53','1999-12-31 16:00:00',1,192),(194,7,59,66,1,'2018-11-15 13:57:51','1999-12-31 16:00:00',1,314),(195,7,59,66,3,'2018-11-15 13:57:51','1999-12-31 16:00:00',1,314),(196,7,59,64,1,'2018-11-16 12:33:11','1999-12-31 16:00:00',1,286),(197,7,89,67,1,'2018-11-26 13:32:54','1999-12-31 16:00:00',1,319),(198,7,98,67,1,'2018-11-26 20:43:09','1999-12-31 16:00:00',1,319),(199,7,59,27,1,'2018-11-27 05:00:59','1999-12-31 16:00:00',1,0),(200,7,59,27,1,'2018-11-27 05:01:02','1999-12-31 16:00:00',1,0),(201,7,95,51,3,'2018-12-04 12:08:00','1999-12-31 16:00:00',1,192),(202,7,76,66,3,'2018-12-06 10:16:59','1999-12-31 16:00:00',1,314);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `zorder` int(11) DEFAULT '0',
  `kind1Ids` varchar(128) DEFAULT '',
  `kind2Ids` varchar(128) DEFAULT '',
  `brandIds` varchar(128) DEFAULT '',
  `visible` tinyint(4) DEFAULT '0',
  `storeId` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT '1999-12-31 16:00:00',
  `updatedAt` timestamp NOT NULL DEFAULT '1999-12-31 16:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (18,'防水',0,'47','64,65,35,36,37,38,43,45,46','68,69,70,71,72',1,7,'2018-07-10 12:43:33','2018-07-10 12:43:33'),(21,'漆',0,'48,57','66,67,68,71,39,40,41,42,77,78','75,76,0,70,68',1,7,'2018-07-11 00:47:46','2018-07-11 00:47:46'),(22,'工具',0,'51,58,59','50,51,52,53,72,73,74,75','77,78,87,88,89,90',1,7,'2018-07-11 02:06:40','2018-07-11 02:06:40'),(24,'胶',0,'49,56','70,76,44,54,55,56,57,58,59,60,61,62,63,79','69,79,81,82,83,84,85,68',1,7,'2018-07-16 13:02:29','2018-07-16 13:02:29'),(27,'胶布/纸/膜',5,'60','80,81,82,83,84,85','91',1,7,'2018-12-18 03:57:27','2018-12-18 03:57:27');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `visible` tinyint(4) DEFAULT '0',
  `createdAt` timestamp NOT NULL DEFAULT '1999-12-31 16:00:00',
  `updatedAt` timestamp NOT NULL DEFAULT '1999-12-31 16:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (2,'六盘水',1,'2018-02-26 08:41:58','2018-04-20 12:22:08'),(18,'威宁',1,'2018-08-04 02:58:25','1999-12-31 16:00:00'),(19,'红果',1,'2018-08-04 02:58:51','1999-12-31 16:00:00'),(20,'纳雍',1,'2018-08-04 02:58:57','1999-12-31 16:00:00');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_cat`
--

DROP TABLE IF EXISTS `company_cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_cat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT '',
  `rank` tinyint(4) DEFAULT '0',
  `enable` tinyint(4) DEFAULT '0',
  `content` text,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_cat`
--

LOCK TABLES `company_cat` WRITE;
/*!40000 ALTER TABLE `company_cat` DISABLE KEYS */;
INSERT INTO `company_cat` VALUES (3,'公司简介',0,1,'<p style=\"\n    /* padding: 10px; */\n\"><span style=\"white-space: normal;\">　　</span>XXX木业有限公司，坐落在南北大运河和东西陇海铁路的交汇处，素有“板材之都”之称的中国江苏邳州市内，地理位置十分优越，交通便利，是中国较大的木材深加工企业之一。 公司始建于1992年，总投资人民币3亿元，占地30万平方米，现有职工1800余人，各类技术人员150余人。公司拥有国内外顶级橱柜、胶合板、地板生产设备二百余台套，如橱柜自动喷漆生产线、意大利产“意马斯”定厚砂光机、多层单板干燥设备、德国产豪迈地板生产线、台湾产拼板机、日本产“乌洛克”旋切机、10尺刨切机等。主要产品有橱柜、覆膜板、高档装饰板、实木复合地板，以及汽车底板、集装箱底板、工字梁和LVL等多种特殊用途胶合板。现有橱柜生产线2条，胶合板生产线30条，高档装饰板生产线2条，实木复合地板生产线3条。年产各类高档胶合板20万立方米，实木复合地板150万平方米。 　　公司产品严格按照欧美标准生产，经SGS、SKH等世界权威机构检测，均达到了行业规定的标准。产品先后通过了ISO9001:2008国际质量管理体系认证，ISO14001:2004环境管理体系认证，中国环境绿色产品标志认证，欧盟CE认证，美国CARB P2认证，以及FSC产销监管链认证等，在美国、欧洲、日本、中东等30多个国家和地区均享有很高的声誉。</p><p style=\"\n    /* padding: 10px; */\n\"><span style=\"white-space: normal;\">　　</span>二十余年风雨征程，盛和木业始终遵循“诚信、创新、共赢、和谐”的企业文化和理念，以感恩的心，为客户提供超值服务！ 　　</p><p style=\"\n    /* padding: 10px; */\n\">公司全体员工诚邀海内外新老客户前来公司指导、洽谈业务</p>','2018-06-19 10:53:25'),(4,' 企业文化',0,1,'<p>企业愿景</p><p>成为世界卓越的木制品制造商和服务商价值创造通过我们的持续创新，给客户带来最高性价比的产品、最好的服务，为客户创造最大的价值。团队共同的理念，形成强大的凝聚力，高效执行，实现共同目标。责任通过我们坚持不懈的努力，为企业的发展创造更多的效益，为职工谋求更大的福利，为社会做出更多的贡献','2018-06-19 13:35:01'),(5,'公司成就',0,1,'<p><span style=\"color: rgb(51, 51, 51); font-family: ','2018-07-09 15:43:30');
/*!40000 ALTER TABLE `company_cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `appkey` varchar(128) NOT NULL,
  `name` varchar(64) NOT NULL,
  `sex` tinyint(4) DEFAULT '1',
  `isValid` tinyint(4) DEFAULT '1' COMMENT '是否可用，0封号，1可用',
  `score` decimal(10,0) DEFAULT '10' COMMENT '积分',
  `money` decimal(10,0) DEFAULT '0' COMMENT '代币',
  `vip` int(11) DEFAULT '0' COMMENT '0无vip，1是vip',
  `phoneNo` varchar(11) DEFAULT '',
  `createdAt` timestamp NOT NULL DEFAULT '1999-12-31 16:00:00',
  `updatedAt` timestamp NOT NULL DEFAULT '1999-12-31 16:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_customer_appkey` (`appkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorite`
--

DROP TABLE IF EXISTS `favorite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favorite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `storeId` int(11) NOT NULL,
  `itemId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_favorite_userItemId` (`userId`,`itemId`),
  KEY `idx_favorite_userId` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorite`
--

LOCK TABLES `favorite` WRITE;
/*!40000 ALTER TABLE `favorite` DISABLE KEYS */;
INSERT INTO `favorite` VALUES (118,59,7,66);
/*!40000 ALTER TABLE `favorite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gmaccount`
--

DROP TABLE IF EXISTS `gmaccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gmaccount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `role` tinyint(4) DEFAULT NULL COMMENT '角色，0系统管理员，1商城管理员',
  `token` varchar(64) NOT NULL,
  `lastLoginAt` timestamp NOT NULL DEFAULT '1999-12-31 16:00:00',
  `valid` tinyint(4) DEFAULT '1' COMMENT '是否可用，0不可用，1可用',
  `name` varchar(64) NOT NULL,
  `avatar` int(11) DEFAULT '0',
  `phoneNo` varchar(11) DEFAULT '',
  `storeId` int(11) DEFAULT '0',
  `createdAt` timestamp NOT NULL DEFAULT '1999-12-31 16:00:00',
  `updatedAt` timestamp NOT NULL DEFAULT '1999-12-31 16:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_gmAccount_username` (`username`),
  UNIQUE KEY `idx_gmAccount_token` (`token`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gmaccount`
--

LOCK TABLES `gmaccount` WRITE;
/*!40000 ALTER TABLE `gmaccount` DISABLE KEYS */;
INSERT INTO `gmaccount` VALUES (1,'root','root',0,'gGP3mSav3X7BjCJBOJQS6FfpqZWcTXmtwQxjjqooCrg=','1999-12-31 16:00:00',1,'超级管理员',4,'13219001125',0,'1999-12-31 16:00:00','2018-07-10 10:12:10'),(7,'huanggui','123456',2,'rsLDWn7jPbUWz7V5dRlbQDfB/77RDneP3Yd7CaC3cGo=','2018-07-10 12:41:32',1,'苏冲',1,'',7,'2018-07-10 12:41:32','2018-07-10 14:34:20'),(9,'jingjing','123456',2,'OvxnSU77GKmKIdviyHmSNTQ2rxndwtBwUglyfei50lU=','2018-07-10 14:45:27',1,'胡静',1,'18380463297',8,'2018-07-10 14:45:27','2018-07-10 14:45:57'),(10,'bobobo','123456',2,'ZL8vx77MrDzBL6nLFMiXQ/tiGeidlpw68mcGUew3254=','2018-07-10 14:54:20',1,'王博',1,'13219001225',7,'2018-07-10 14:54:20','2018-07-25 03:25:47'),(11,'tingting','123456',2,'aFb11zo9VgvmH8w8rjyLH37H10i8GWwRTwS18hvCgy4=','2018-07-10 15:19:02',1,'胡婷',1,'18348124556',10,'2018-07-10 15:19:02','2018-07-10 15:37:41');
/*!40000 ALTER TABLE `gmaccount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotkeyword`
--

DROP TABLE IF EXISTS `hotkeyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotkeyword` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `storeId` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_hotKeyword_storeId` (`storeId`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotkeyword`
--

LOCK TABLES `hotkeyword` WRITE;
/*!40000 ALTER TABLE `hotkeyword` DISABLE KEYS */;
INSERT INTO `hotkeyword` VALUES (1,0,'水管'),(2,0,'水管'),(3,0,'木工'),(4,0,'水管'),(5,0,'水'),(6,0,'水'),(7,0,'管卡'),(8,0,'水'),(9,0,'2平方'),(10,0,'PPR管'),(11,0,'水'),(12,0,'水'),(13,0,'水');
/*!40000 ALTER TABLE `hotkeyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `intocarouse`
--

DROP TABLE IF EXISTS `intocarouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `intocarouse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `storeId` int(11) NOT NULL,
  `image` varchar(255) DEFAULT '',
  `rank` tinyint(4) DEFAULT '0',
  `visiable` tinyint(4) DEFAULT '0',
  `intoGroupId` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_intoCarouse_storeId` (`storeId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `intocarouse`
--

LOCK TABLES `intocarouse` WRITE;
/*!40000 ALTER TABLE `intocarouse` DISABLE KEYS */;
INSERT INTO `intocarouse` VALUES (1,7,'http://www.sjhgjck.com/static//res/into/carouse/20181115/20181015115811_517948.jpg',1,1,0),(2,7,'http://www.sjhgjck.com/static//res/into/carouse/20181115/2018101512111_705312.jpg',2,1,0),(3,7,'',0,0,0);
/*!40000 ALTER TABLE `intocarouse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `intogroup`
--

DROP TABLE IF EXISTS `intogroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `intogroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `storeId` int(11) NOT NULL,
  `title` varchar(255) DEFAULT '',
  `color` varchar(16) DEFAULT '#ffffff',
  `icon` varchar(255) DEFAULT '',
  `showMode` tinyint(4) DEFAULT '0',
  `modeValue` tinyint(4) DEFAULT '5',
  `rank` tinyint(4) DEFAULT '0',
  `visiable` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_intoGroup_storeId` (`storeId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `intogroup`
--

LOCK TABLES `intogroup` WRITE;
/*!40000 ALTER TABLE `intogroup` DISABLE KEYS */;
INSERT INTO `intogroup` VALUES (1,7,'精品推荐·质量保证·大厂无忧','#3569DC','http://www.sjhgjck.com/static//res/into/group/20181127/20181027112440_607245.png',0,5,1,1),(2,7,'促销狂欢·今日必抢·活动','#E33E3E','http://www.sjhgjck.com/static//res/into/group/20181127/2018102711253_99376.png',1,5,3,1),(3,7,'雨虹出品·必属精品·推荐','#01B316','http://www.sjhgjck.com/static//res/into/group/20181127/20181027112454_265944.png',1,5,2,1),(4,7,'','','',0,5,0,0);
/*!40000 ALTER TABLE `intogroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `intogroupitem`
--

DROP TABLE IF EXISTS `intogroupitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `intogroupitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `storeId` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `itemId` int(11) NOT NULL,
  `rank` tinyint(4) DEFAULT '0',
  `visiable` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_intoGroupItem_storeId` (`storeId`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `intogroupitem`
--

LOCK TABLES `intogroupitem` WRITE;
/*!40000 ALTER TABLE `intogroupitem` DISABLE KEYS */;
INSERT INTO `intogroupitem` VALUES (1,7,1,66,1,1),(2,7,1,38,2,1),(3,7,1,46,3,0),(4,7,1,52,4,1),(5,7,2,41,1,1),(6,7,2,42,2,1),(7,7,2,37,3,1),(8,7,2,57,4,1),(9,7,2,56,5,1),(10,7,2,62,6,1),(11,7,3,66,1,1),(12,7,3,68,2,1),(13,7,3,24,3,1),(14,7,3,25,4,1),(15,7,3,27,5,1),(16,7,3,28,6,1),(17,7,3,29,7,1),(18,7,3,48,8,1);
/*!40000 ALTER TABLE `intogroupitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `intotag`
--

DROP TABLE IF EXISTS `intotag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `intotag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `storeId` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `icon` varchar(128) DEFAULT '',
  `catId` int(11) NOT NULL,
  `k1` int(11) NOT NULL,
  `k2` int(11) NOT NULL,
  `brand` int(11) NOT NULL,
  `rank` tinyint(4) DEFAULT '0',
  `visiable` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_intoTag_storeId` (`storeId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `intotag`
--

LOCK TABLES `intotag` WRITE;
/*!40000 ALTER TABLE `intotag` DISABLE KEYS */;
INSERT INTO `intotag` VALUES (1,7,'所有商品','http://www.sjhgjck.com/static//res/into/tag/20181115/20181015162928_73077.png',0,0,0,0,1,1),(2,7,'环保油漆','http://www.sjhgjck.com/static//res/into/tag/20181115/20181015162954_78969.png',21,0,0,0,2,1),(3,7,'刷子','http://www.sjhgjck.com/static//res/into/tag/20181115/20181015163025_85733.png',22,58,0,0,3,1),(4,7,'装修工具','http://www.sjhgjck.com/static//res/into/tag/20181115/20181015163057_103546.png',22,0,0,0,4,1),(5,7,'雨虹防水','http://www.sjhgjck.com/static//res/into/tag/20181115/20181015163240_369757.png',18,47,0,69,5,1),(6,7,'','',0,0,0,0,0,0);
/*!40000 ALTER TABLE `intotag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `comment` mediumtext,
  `initPrice` decimal(10,2) DEFAULT NULL,
  `fxPrice` decimal(10,2) DEFAULT NULL,
  `workerPrice` decimal(10,2) DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `vipDiscount` decimal(10,2) DEFAULT NULL,
  `zorder` int(11) DEFAULT '0',
  `tag` tinyint(4) DEFAULT '0',
  `visible` tinyint(4) DEFAULT '0',
  `weight` float DEFAULT '0',
  `storeId` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT '1999-12-31 16:00:00',
  `updatedAt` timestamp NOT NULL DEFAULT '1999-12-31 16:00:00',
  `spec` varchar(256) DEFAULT '',
  `unit` varchar(32) DEFAULT '个',
  `saleCount` int(11) DEFAULT '0',
  `showSaleCount` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (20,'PPR管','<p><img src=\"http://www.sjhgjck.com/static//res//detail/7//20180713/2018613133240_272238.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//detail/7//20180713/2018613133256_261116.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//detail/7//20180713/2018613133311_832505.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//detail/7//20180713/2018613133331_605153.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//detail/7//20180713/2018613133342_579305.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//detail/7//20180713/2018613133358_402654.jpg\" style=\"width:100%;height:auto;\"/></p>',10.00,8.00,6.00,9.00,8.00,1,2,1,0.2,7,'2018-07-10 12:49:00','2018-08-07 03:18:29','','个',0,0),(24,'雨虹吉士涂S100易涂型防水涂料（17kg）','<p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180720/2018624171830_435762.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180720/2018624171836_756674.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180720/2018624171840_512080.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180720/2018624171844_95843.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180720/2018624171849_799980.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180720/2018624171856_52366.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180720/201862417193_585182.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180720/2018624171913_268553.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180720/2018624171918_700624.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180720/2018624171927_766161.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180720/2018624171936_723307.jpg\" style=\"width:100%;height:auto;\"/></p><p><br/></p>',180.00,163.00,180.00,9.90,9.50,1,2,1,0,7,'2018-07-11 00:59:40','2018-07-25 06:22:45','','桶',0,0),(25,'雨虹防水室内外墙防霉堵漏材料厕所墙面阳台卫生间js防水涂料k11','<p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180718/201861984623_392585.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180718/201861984630_399890.jpg\" style=\"width:100%;height:auto;\"/><img src=\"http://www.sjhgjck.com/static//res//web/news/20180718/201861991730_916061.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180718/201861984634_738993.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180718/201861984641_50410.jpg\" style=\"width:100%;height:auto;\"/></p><p><br/></p>',258.00,220.00,240.00,9.90,9.70,1,2,1,0,7,'2018-07-12 13:31:50','2018-07-25 06:26:21','','桶',0,0),(26,'瑞德利万能胶','<p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180720/2018624183939_626038.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180720/2018624183943_776404.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180720/2018624183947_689205.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180720/2018624183951_479149.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180720/2018624183954_919018.jpg\" style=\"width:100%;height:auto;\"/></p><p><br/></p>',6.00,5.00,6.00,8.40,8.50,1,3,1,0,7,'2018-07-18 12:37:12','2018-07-26 01:25:27','','桶',0,0),(27,'雨虹防水 厨房卫生间防水涂料材料防水胶防漏水柔韧18kg G101','<p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180718/201861995153_887341.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180718/201861995156_67964.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180718/201861995159_502353.gif\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180718/20186199525_713446.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180718/20186199529_64261.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180718/20186199555_974842.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180718/201861995519_155980.gif\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180718/201861995523_979290.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180718/201861995528_513316.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180718/201861995531_302482.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180718/201861995537_977937.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180718/201861995542_933223.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180718/201861995545_541520.jpg\" style=\"width:100%;height:auto;\"/></p><p><br/></p>',378.00,298.00,368.00,10.00,10.00,1,2,1,0,7,'2018-07-19 01:49:03','2018-07-25 06:27:19','','18kg/桶',0,0),(28,'东方雨虹 雨虹防水纯乳液防水材料卫生间防水涂料防水胶漆G100','<p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180718/2018619113022_202328.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180718/2018619113027_694440.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180718/2018619113030_426961.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180718/2018619113034_922353.gif\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180718/2018619113038_101926.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180718/2018619113044_420439.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180718/2018619113048_216431.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180718/2018619113052_603945.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180718/2018619113056_4632.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180718/201861911312_354896.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180718/201861911318_530177.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180718/2018619113113_87260.jpg\" style=\"width:100%;height:auto;\"/></p><p><br/></p>',558.00,428.00,488.00,10.00,10.00,1,2,1,15,7,'2018-07-19 03:09:08','1999-12-31 16:00:00','','个',0,0),(29,'雨虹防水外墙防水涂料卫生间防水材料防水胶厨房防漏水G103','<p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180718/2018619121031_707769.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180718/2018619121037_336877.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180718/2018619121041_151518.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180718/2018619121045_19689.gif\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180718/2018619121058_730502.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180718/201861912113_95510.gif\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180718/201861912117_483920.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180718/2018619121111_777846.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180718/2018619121115_981574.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180718/2018619121118_574045.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180718/2018619121123_98492.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180718/2018619121127_795815.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180718/2018619121130_442443.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180718/2018619121134_147557.jpg\" style=\"width:100%;height:auto;\"/></p><p><br/></p>',268.00,228.00,258.00,10.00,10.00,1,2,1,17,7,'2018-07-19 03:45:50','1999-12-31 16:00:00','','个',0,0),(30,'雨虹防水堵漏王防漏水不漏塑钢泥外墙水泥胶补漏王防水材料2KG','<p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180720/2018624172216_444607.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180720/2018624172221_324134.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180720/2018624172228_391811.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180720/2018624172233_392073.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180720/2018624172237_219174.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180720/2018624172245_250857.jpg\" style=\"width:100%;height:auto;\"/></p><p><br/></p>',120.00,100.00,150.00,10.00,10.00,1,2,1,2,7,'2018-07-24 09:21:51','2018-08-07 08:05:53','','个',0,0),(31,'雨虹防水 东方雨虹界面剂 墙倍丽J100 墙面加固剂 墙固 地固','<p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180720/2018624184319_508672.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180720/2018624184323_829634.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180720/2018624184326_441125.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180720/2018624184329_605595.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180720/2018624184333_904334.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180720/2018624184337_294466.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180720/2018624184341_332098.jpg\" style=\"width:100%;height:auto;\"/></p><p><br/></p>',196.00,120.00,180.00,10.00,10.00,1,2,1,18,7,'2018-07-24 10:42:14','2018-07-25 06:26:44','','18kg/桶',0,0),(32,'雨虹防水 东方雨虹好仕涂高弹屋面 防水涂料地暖户外外墙防水','<p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180720/2018624185551_641372.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180720/2018624185854_409273.jpg\" style=\"width:100%;height:auto;\"/></p><p><br/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180720/201862418563_572633.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180720/201862418567_584556.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180720/2018624185612_78138.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180720/2018624185615_544762.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180720/2018624185618_671370.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180720/2018624185621_864808.jpg\" style=\"width:100%;height:auto;\"/></p><p><br/></p>',65.00,40.00,65.00,10.00,10.00,1,2,1,1,7,'2018-07-24 10:55:27','2018-07-25 06:22:52','','桶',0,0),(33,'东方雨虹 雨虹防水涂料外墙墙面沥青屋顶防水胶补漏材料10kg','<p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180720/201862419836_779786.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180720/201862419846_656311.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180720/201862419852_286823.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180720/201862419856_487110.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180720/20186241995_728715.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180720/20186241999_509549.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180720/201862419912_52885.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180720/201862419920_636865.jpg\" style=\"width:100%;height:auto;\"/></p><p><br/></p>',458.00,320.00,428.00,10.00,10.00,1,2,1,10,7,'2018-07-24 11:07:50','2018-07-25 06:27:53','','10kg/桶',0,0),(34,'雨虹防水 瓷砖填缝剂美缝勾缝剂墙地砖防霉填缝胶白色瓷缝剂','<p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180720/2018624191315_748168.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180720/2018624191319_467202.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180720/2018624191322_619508.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180720/2018624191326_285224.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180720/2018624191329_474253.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180720/2018624191338_231406.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180720/2018624191342_162850.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180720/2018624191345_126349.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180720/2018624191348_496394.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180720/2018624191352_314800.jpg\" style=\"width:100%;height:auto;\"/></p><p><br/></p>',30.00,12.00,20.00,10.00,10.00,1,2,1,2,7,'2018-07-24 11:12:40','2018-07-25 06:23:12','','袋/2kg',0,0),(35,'优保士环氧地坪漆 水泥树脂地面漆车间仓库耐磨防滑环氧地坪漆','<p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180724/2018624214143_557423.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180724/2018624214147_929088.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180724/2018624214152_938931.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180724/2018624214156_649462.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180724/2018624214158_972090.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180724/201862421422_547138.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180724/201862421426_945130.jpg\" style=\"width:100%;height:auto;\"/></p><p><br/></p>',320.00,300.00,320.00,10.00,10.00,1,3,1,0,7,'2018-07-24 13:40:23','2018-07-26 01:24:54','','组',0,0),(36,'千虹漆丙烯酸地坪漆 马路停车位划线漆快干漆 车间耐磨防滑地坪漆','<p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180724/201862422440_312866.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180724/201862422443_457963.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180724/201862422446_591973.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180724/201862422449_551436.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180724/201862422454_218514.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180724/201862422457_247216.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180724/20186242251_906160.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180724/20186242256_841034.jpg\" style=\"width:100%;height:auto;\"/></p><p><br/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180724/201862422621_458284.jpg\" style=\"width:100%;height:auto;\"/></p>',200.00,180.00,200.00,10.00,10.00,1,3,1,0,7,'2018-07-24 14:04:22','2018-07-26 01:25:01','','20L/桶',0,0),(37,'标牌全能白乳胶*6kg','<p><span style=\"background-color: rgb(219, 229, 241);\"><span style=\"background-color: rgb(198, 217, 240);\"></span></span></p><p>产品特点：</p><p>本产品是以聚醋酸乙烯酯均聚乳液、水溶性增稠剂等组份改性而成。具有良好的水分散性、产品稳定性、耐候性好，干燥速度快、粘接强度大、易涂胶、使用方便、环保无毒的特点。</p><p>使用方法：</p><p>保持粘合面清洁、干燥，必要时进行打磨等表面处理，用毛刷或涂胶辊直接涂布于待粘合面上，加压保持12小时以上（视干燥的温度而定）</p><p>注意事项：</p><p>本产品应于5℃-35℃储存，如因温度太低致使本品冻结或增稠明显，因转移至15℃以上的暖库中保持24小时以上，如其粘度回复正常即不影响正常使用，因避免剧烈加热、本产品应密闭保存、防止胶液表面干化，如表面已干化结皮，除去表皮后不影响内部使用。</p><p>本产品为混合物，长期储存表面会有少量水份析出，这属于正常现象，搅拌均匀后不影响使用。</p><p>特别警告：</p><p>本产品质量标准是依据企业标准生产，请用户根据产品性能，选对本产品标准类型，由于使用过程中，环境和物料的差异，敬使用前先请少量试验，如发现不适用，请即致电本公司，否则由此造成的后果本公司概不负责，特此<img src=\"http://www.sjhgjck.com/static//res//web/news/20180724/2018625114954_77587.jpg\" style=\"width:100%;height:auto;\"/>提示</p><p><img src=\"http://www.sjhgjck.com/static//res//detail/7//20180724/2018625115152_392999.jpg\" style=\"width:100%;height:auto;\"/><img src=\"http://www.sjhgjck.com/static//res//detail/7//20180724/2018625115136_195270.jpg\" style=\"width:100%;height:auto;\"/></p><p></p>',45.00,35.00,45.00,10.00,10.00,1,3,1,0,7,'2018-07-25 02:01:02','2018-07-26 01:25:08','','桶',0,0),(38,'江山3L透明云石胶*2kg','<p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180805/20187621156_514866.jpg\" style=\"width:100%;height:auto;\"/><img src=\"http://www.sjhgjck.com/static//res//web/news/20180805/20187621127_171537.jpg\" style=\"width:100%;height:auto;\"/><img src=\"http://www.sjhgjck.com/static//res//web/news/20180805/201876211322_806720.jpg\" style=\"width:100%;height:auto;\"/></p>',140.00,120.00,140.00,10.00,10.00,1,2,1,0,7,'2018-07-25 13:23:56','2018-07-26 01:25:15','','个',0,0),(39,'SANO 三和万能胶 高粘力 特效万能胶 绿贴 无毒环保 板材装饰','<p><img src=\"http://www.sjhgjck.com/static//res//detail/7//20180724/2018626104617_439820.jpg\" style=\"width:100%;height:auto;\"/><img src=\"http://www.sjhgjck.com/static//res//detail/7//20180724/2018626104622_512643.jpg\" style=\"width:100%;height:auto;\"/><img src=\"http://www.sjhgjck.com/static//res//detail/7//20180724/2018626104622_610058.jpg\" style=\"width:100%;height:auto;\"/><img src=\"http://www.sjhgjck.com/static//res//web/news/20180724/20186261104_512001.jpg\" style=\"width:100%;height:auto;\"/><img src=\"http://www.sjhgjck.com/static//res//detail/7//20180724/2018626104622_850062.jpg\" style=\"width:100%;height:auto;\"/><img src=\"http://www.sjhgjck.com/static//res//detail/7//20180724/2018626104619_300677.jpg\" style=\"width:100%;height:auto;\"/><img src=\"http://www.sjhgjck.com/static//res//detail/7//20180724/2018626104621_14623.jpg\" style=\"width:100%;height:auto;\"/><img src=\"http://www.sjhgjck.com/static//res//detail/7//20180724/2018626104622_927920.jpg\" style=\"width:100%;height:auto;\"/><img src=\"http://www.sjhgjck.com/static//res//detail/7//20180724/2018626104621_263893.jpg\" style=\"width:100%;height:auto;\"/></p>',175.00,145.00,160.00,10.00,10.00,1,2,1,0,7,'2018-07-26 02:43:55','2018-07-26 03:25:28','','7kg/桶',0,0),(40,'三和自喷漆','<p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180724/201862822117_691581.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180724/201862822122_435069.jpg\" style=\"width:100%;height:auto;\"/></p><p><br/></p>',85.00,65.00,75.00,10.00,10.00,1,2,1,0,7,'2018-07-28 13:58:04','2018-07-28 14:00:02','','个',0,0),(41,'猪毛刷1/2/3/4/5/8寸','<p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180724/2018628225359_208696.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180724/201862822544_762729.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180724/201862822548_520773.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180724/2018628225414_783824.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180724/2018629211535_808633.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180724/2018628225431_458064.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180724/2018628225437_504543.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180724/2018628225442_55104.jpg\" style=\"width:100%;height:auto;\"/></p><p><br/></p>',10.00,10.00,10.00,9.50,9.80,1,2,1,0,7,'2018-07-28 14:46:57','2018-07-29 13:03:19','','把',0,0),(42,'羊毛刷2/3/4/5/8寸','<p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180724/2018629212946_5550.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180724/2018629212949_243167.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180724/2018629212952_551115.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180724/2018629212954_81434.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180724/2018629212957_917897.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180724/201862921302_479468.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180724/201862921306_718291.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180724/2018629213010_780735.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180724/2018629213013_103220.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180724/2018629213016_66263.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180724/2018629213019_36873.jpg\" style=\"width:100%;height:auto;\"/></p><p><br/></p>',2.00,2.00,2.00,10.00,10.00,1,2,1,0,7,'2018-07-29 13:29:04','1999-12-31 16:00:00','','个',0,0),(43,'三和牌液态密封胶 白色管道密封胶 耐高温 厚白漆 防水丁腈型 80g','<p>.<img src=\"http://www.sjhgjck.com/static//res//web/news/20180807/20187815745_316413.jpg\" style=\"width:100%;height:auto;\"/><img src=\"http://www.sjhgjck.com/static//res//web/news/20180724/2018630191641_152031.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180724/2018630191645_313273.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180724/2018630191652_89108.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180724/2018630191655_965587.jpg\" style=\"width:100%;height:auto;\"/></p><p><br/></p>',5.00,2.50,3.00,10.00,10.00,1,2,1,0,7,'2018-07-30 10:50:02','1999-12-31 16:00:00','','个',0,0),(44,'三和JS聚合物水泥基防水涂料 卫生间厨房外墙饮用水池防水材料胶','<p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180807/201871422465_17053.jpg\" style=\"width:100%;height:auto;\"/><img src=\"http://www.sjhgjck.com/static//res//web/news/20180724/201863020538_500309.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180724/201863020552_293736.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180724/201863020558_199182.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180724/20186302065_865804.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180724/201863020610_266703.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180724/201863020617_136624.jpg\" style=\"width:100%;height:auto;\"/></p><p><br/></p>',160.00,120.00,145.00,10.00,10.00,1,2,1,0,7,'2018-07-30 12:04:42','1999-12-31 16:00:00','','个',0,0),(45,'三和兰丽珠表板装饰喷蜡表板蜡仪表盘蜡液体蜡地板蜡400ml','<p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180724/2018630201045_608086.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180724/2018630201056_862256.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180724/201863020114_825088.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180724/2018630201130_114395.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180724/2018630201133_992842.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180724/2018630201137_681955.jpg\" style=\"width:100%;height:auto;\"/></p><p><br/></p>',15.00,10.00,12.00,10.00,10.00,1,2,1,0,7,'2018-07-30 12:10:18','1999-12-31 16:00:00','','个',0,0),(46,'美国三和强力快干免钉胶防水防霉液体 53C0-49AB','<p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180724/2018630202559_191124.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180724/201863020268_538242.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180724/2018630202616_33090.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180724/2018630202619_299031.jpg\" style=\"width:100%;height:auto;\"/></p><p><br/></p>',20.00,8.00,15.00,10.00,10.00,1,2,1,0,7,'2018-07-30 12:25:36','2018-07-31 11:15:58','','支',0,0),(47,'测试','',10.00,10.00,10.00,9.50,9.80,1,2,1,0,7,'2018-08-03 13:34:26','1999-12-31 16:00:00','','个',0,0),(48,'雨虹C100强力瓷砖胶粘结剂 C200超强力瓷砖胶粘合剂玻化砖粘贴剂','<p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180805/201875105058_77248.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180805/20187510512_606696.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180805/20187510516_816653.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180805/201875105111_473664.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180805/201875105116_651758.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180805/201875105121_782703.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180805/201875105124_893022.jpg\" style=\"width:100%;height:auto;\"/></p><p><br/></p>',10.00,10.00,10.00,9.50,9.80,1,2,1,0,7,'2018-08-04 09:07:38','1999-12-31 16:00:00','','个',0,0),(49,'名涂漆丙烯酸地坪漆 马路划线漆 车间仓库停车场环氧地坪漆','<p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180805/201875105514_144259.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180805/201875105517_411614.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180805/201875105521_578482.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180805/201875105524_225168.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180805/201875105527_995614.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180805/201875105532_124918.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180805/201875105536_779927.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180805/201875105539_566971.jpg\" style=\"width:100%;height:auto;\"/></p><p><br/></p>',10.00,10.00,10.00,9.50,9.80,1,2,1,0,7,'2018-08-05 02:49:59','1999-12-31 16:00:00','','个',0,0),(50,'百安密外墙透明防水胶','<p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180805/201875122856_105502.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180805/201875122953_603640.jpg\" style=\"width:100%;height:auto;\"/></p><p><br/></p>',10.00,10.00,10.00,9.50,9.80,1,2,1,0,7,'2018-08-05 04:28:11','1999-12-31 16:00:00','','个',0,0),(51,'百安密SUPER水不漏（堵漏王）','<p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180805/20187515257_907091.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180805/2018751531_835639.jpg\" style=\"width:100%;height:auto;\"/></p><p><br/></p>',10.00,10.00,10.00,9.50,9.80,1,2,1,0,7,'2018-08-05 07:02:15','1999-12-31 16:00:00','','个',0,0),(52,'江山建筑植筋胶5L/4桶*件','<p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180805/20187684816_300894.jpg\" style=\"width:100%;height:auto;\"/></p><h4><br/></h4>',10.00,10.00,10.00,9.50,9.80,1,2,1,0,7,'2018-08-05 07:56:28','1999-12-31 16:00:00','','个',0,0),(53,'三和松锈润滑剂 除锈剂金属 除锈灵 防锈润滑剂','<p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180805/201876212713_127789.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180805/201876212717_422159.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180805/201876212721_835204.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180805/201876212724_312810.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180805/201876212728_505581.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180805/201876212733_970223.jpg\" style=\"width:100%;height:auto;\"/></p><p><br/></p>',10.00,10.00,10.00,9.50,9.80,1,2,1,0,7,'2018-08-06 13:26:35','2018-08-07 08:05:02','','个',0,0),(54,'三和高效强力脱漆剂各种金属涂料油漆添加剂轻松脱漆清洗剂','<p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180805/201876215659_585230.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180805/20187621575_132370.jpg\" style=\"width:100%;height:auto;\"/></p><p><br/></p>',10.00,10.00,10.00,9.50,9.80,1,2,1,0,7,'2018-08-06 13:48:52','2018-08-07 08:04:51','','个',0,0),(55,'三和强力脱胶剂不干胶清除 透明胶带 双面胶渍清理剂 家用清除剂','<p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180805/20187622156_469117.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180805/20187622159_255120.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180805/201876221511_849981.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180805/201876221514_466652.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180805/201876221517_157966.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180805/201876221520_368836.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180805/201876221523_481275.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180805/201876221526_215442.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180805/201876221529_258097.jpg\" style=\"width:100%;height:auto;\"/></p><p><br/></p>',10.00,10.00,10.00,9.50,9.80,1,2,1,0,7,'2018-08-06 14:11:07','1999-12-31 16:00:00','','个',0,0),(56,'三和EOT低碳高遮盖内墙漆','',10.00,10.00,10.00,9.50,9.80,1,2,1,0,7,'2018-08-08 06:03:19','1999-12-31 16:00:00','','个',0,0),(57,'三和蜜月胶20g/50g','<p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180807/201878154540_446920.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180807/201878154544_466511.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180807/201878154547_464765.png\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180807/201878154549_786812.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180807/201878154552_5141.JPG\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180807/201878154555_474774.png\" style=\"width:100%;height:auto;\"/></p><p><br/></p>',10.00,10.00,10.00,9.50,9.80,1,2,1,0,7,'2018-08-08 07:44:45','1999-12-31 16:00:00','','个',0,0),(58,'多乐士9寸滚筒m800','<p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180807/2018781712_783611.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180807/2018781716_106631.jpg\" style=\"width:100%;height:auto;\"/></p><p><br/></p>',10.00,10.00,10.00,9.50,9.80,1,2,1,0,7,'2018-08-08 09:00:19','1999-12-31 16:00:00','','个',0,0),(59,'拉绒圆盘砂','',10.00,10.00,10.00,9.50,9.80,1,2,1,0,7,'2018-08-08 09:06:39','2018-08-08 09:16:06','','个',0,0),(60,'马牌进口砂','',10.00,10.00,10.00,9.50,9.80,1,2,1,0,7,'2018-08-08 09:12:26','2018-08-08 09:15:45','','个',0,0),(61,'涂附布砂','',10.00,10.00,10.00,9.50,9.80,1,2,1,0,7,'2018-08-08 09:13:07','2018-08-08 09:15:33','','个',0,0),(62,'峦兴耐水砂纸','<p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180807/201878174630_62804.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180807/201878174633_112376.jpg\" style=\"width:100%;height:auto;\"/></p><p><br/></p>',10.00,10.00,10.00,9.50,9.80,1,2,1,0,7,'2018-08-08 09:46:05','1999-12-31 16:00:00','','个',0,0),(63,'必妥防开裂','<p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180807/201871421153_417211.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180807/201871421157_700139.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180807/2018714211511_267638.jpg\" style=\"width:100%;height:auto;\"/></p><p><br/></p>',10.00,10.00,10.00,9.50,9.80,1,2,1,0,7,'2018-08-14 13:09:00','1999-12-31 16:00:00','','个',0,0),(64,'三和牌 厌氧胶 高粘力厌氧密封胶 螺纹胶 锁固剂 红色SH-271 50克','<p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180807/2018714223046_803996.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180807/2018714223051_814736.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180807/2018714223053_484631.jpg\" style=\"width:100%;height:auto;\"/></p><p><br/></p>',10.00,10.00,10.00,9.50,9.80,1,2,1,0,7,'2018-08-14 14:29:32','2018-08-14 14:30:15','','个',0,0),(65,'三和玻璃胶TB798耐候中性硅酮结构密封胶','<p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180807/2018714225717_482949.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180807/2018714225721_968920.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180807/2018714225724_386136.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180807/2018714225727_514770.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180807/2018714225729_889665.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180807/2018714225734_404079.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180807/2018714225743_319321.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180807/2018714225747_332735.jpg\" style=\"width:100%;height:auto;\"/></p><p><br/></p>',10.00,10.00,10.00,9.50,9.80,1,2,1,0,7,'2018-08-14 14:56:58','1999-12-31 16:00:00','','个',0,0),(66,'东方雨虹 雨虹防水蓝色金典G102彩色高柔防水涂料','<p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180807/201871593745_349452.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180807/201871593749_89039.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180807/20187159382_462105.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180807/201871593811_47130.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180807/201871593817_910672.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180807/201871593822_419986.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180807/201871593826_231015.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180807/201871593829_49901.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180807/201871593833_416285.jpg\" style=\"width:100%;height:auto;\"/></p><p><br/></p>',10.00,10.00,10.00,9.50,9.80,1,2,1,0,7,'2018-08-15 01:29:52','1999-12-31 16:00:00','','个',0,0),(67,'标牌超易洗20kg内','<p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180807/2018717132749_235541.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180807/2018717132756_267597.jpg\" style=\"width:100%;height:auto;\"/></p><p><br/></p>',10.00,10.00,10.00,9.50,9.80,1,2,1,0,7,'2018-08-15 06:57:29','1999-12-31 16:00:00','','个',0,0),(68,'雨虹防水 东方雨虹JS防水涂料嘉仕涂 卫生间厨房聚合物防水材料','<p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180807/20187181492_967508.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180807/20187181495_898692.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180807/201871814912_743630.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180807/201871814916_286125.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180807/201871814919_883614.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180807/201871814924_270367.jpg\" style=\"width:100%;height:auto;\"/></p><p><img src=\"http://www.sjhgjck.com/static//res//web/news/20180807/201871814928_983226.jpg\" style=\"width:100%;height:auto;\"/></p><p><br/></p>',10.00,10.00,10.00,9.50,9.80,1,2,1,0,7,'2018-08-18 06:08:20','2018-08-18 06:10:04','','个',0,0),(69,'标牌净醛白胶','<p style=\"padding: 0px; margin-top: 0em; margin-bottom: 0em; line-height: 2em; font-family: 微软雅黑; color: rgb(85, 85, 85); font-size: 15px; letter-spacing: 0em; text-indent: 0em; white-space: normal;\"><strong><img src=\"http://www.sjhgjck.com/static//res//detail/7//20181129/201810291416_106777.png\" style=\"width:100%;height:auto;\"/></strong></p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 0em; line-height: 2em; font-family: 微软雅黑; color: rgb(85, 85, 85); font-size: 15px; letter-spacing: 0em; text-indent: 0em; white-space: normal;\"><strong>标牌净醛白胶</strong></p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 0em; line-height: 2em; font-family: 微软雅黑; color: rgb(85, 85, 85); font-size: 15px; letter-spacing: 0em; text-indent: 0em; white-space: normal;\">净醛白胶是以醋酸乙烯、聚乙烯醇为主要材料聚合而成的聚乙酸乙烯酯乳液,它运用创新的净醛净味技术工艺,净化甲醛及其它有害物质,有效地解决了传统白胶产品的甲醛对人体造成极大伤害这一难题。标牌净醛白胶比一般自胶产品更环保、更健康!</p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 0em; line-height: 2em; font-family: 微软雅黑; color: rgb(85, 85, 85); font-size: 15px; letter-spacing: 0em; text-indent: 0em; white-space: normal;\">• 渗透力强&nbsp;&nbsp; • 抗冻性佳&nbsp;&nbsp; • 施工方便&nbsp;&nbsp;&nbsp; • 耐候性优异&nbsp;&nbsp; • 环保无毒&nbsp;&nbsp; •具有良好的水分散性、产品稳定性&nbsp;&nbsp; • 干燥速度快&nbsp;&nbsp; • 粘结强度高</p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 0em; line-height: 2em; font-family: 微软雅黑; color: rgb(85, 85, 85); font-size: 15px; letter-spacing: 0em; text-indent: 0em; white-space: normal;\">&nbsp;</p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 0em; line-height: 2em; font-family: 微软雅黑; color: rgb(85, 85, 85); font-size: 15px; letter-spacing: 0em; text-indent: 0em; white-space: normal;\"><strong>技术参数</strong><br/>粘度：40000-45000Pa.s<br/>固含量：35%<br/>PH值：5-6<br/><br/><strong>适用范围：</strong>适用于别墅、高档会所、星级酒店、高档写字楼等室内装修板材粘贴<br/><strong>使用方法：</strong>直接涂胶粘合压好，自然干燥即可<br/><strong>用量：</strong>1KG/7㎡<br/><strong>注意事项：</strong>1、空气湿度大于90%，温度低于5℃不宜施工；&nbsp; 2、施工前必须检查板材是否平整；&nbsp; 3、涂胶必须按照标准的用量，不宜过多或过少；&nbsp; 4、涂完胶后板材加压需均衡。</p><p><br/></p>',10.00,10.00,10.00,9.50,9.80,1,2,1,0,7,'2018-11-29 04:50:10','2018-11-29 05:19:55','','个',0,0),(70,'标牌全效白胶','<p><img src=\"http://www.sjhgjck.com/static//res//detail/7//20181130/2018103010164_709079.png\" style=\"width:100%;height:auto;\"/></p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 0em; line-height: 2em; font-family: 微软雅黑; color: rgb(85, 85, 85); font-size: 15px; letter-spacing: 0em; text-indent: 0em; white-space: normal;\"><strong>标牌全效白胶</strong></p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 0em; line-height: 2em; font-family: 微软雅黑; color: rgb(85, 85, 85); font-size: 15px; letter-spacing: 0em; text-indent: 0em; white-space: normal;\">全效白胶是以醋酸乙烯、聚乙烯醇为主要材料聚合而成的聚乙酸乙烯酯乳液产品,使用方便，用途广泛。</p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 0em; line-height: 2em; font-family: 微软雅黑; color: rgb(85, 85, 85); font-size: 15px; letter-spacing: 0em; text-indent: 0em; white-space: normal;\">• 粘度高&nbsp;&nbsp; • 抗冻性佳&nbsp;&nbsp; • 施工方便&nbsp;&nbsp; • 环保无毒&nbsp;&nbsp; • 干燥速度快</p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 0em; line-height: 2em; font-family: 微软雅黑; color: rgb(85, 85, 85); font-size: 15px; letter-spacing: 0em; text-indent: 0em; white-space: normal;\">&nbsp;</p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 0em; line-height: 2em; font-family: 微软雅黑; color: rgb(85, 85, 85); font-size: 15px; letter-spacing: 0em; text-indent: 0em; white-space: normal;\"><strong>技术参数</strong><br/>粘度：35000-40000Pa.s<br/>固含量：25%<br/>PH值：5-6<br/><br/><strong>适用范围：</strong>适用于家庭装修，办公室及大型装饰装修工程板材粘贴。<br/><strong>使用方法：</strong>直接涂胶粘合压好，自然干燥即可<br/><strong>用量：</strong>1KG/5.5㎡<br/><strong>注意事项：</strong>1、空气湿度大于90%，温度低于5℃不宜施工；&nbsp; 2、施工前必须检查板材是否平整；&nbsp; 3、涂胶必须按照标准的用量，不宜过多或过少；&nbsp; 4、涂完胶后板材加压需均衡。</p><p><br/></p>',10.00,10.00,10.00,9.50,9.80,2,2,1,0,7,'2018-11-30 02:15:22','1999-12-31 16:00:00','','个',0,0),(71,'标牌全能白胶','<p><img src=\"http://www.sjhgjck.com/static//res//detail/7//20181130/20181030104550_687244.png\" style=\"width:100%;height:auto;\"/></p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 0em; line-height: 2em; font-family: 微软雅黑; color: rgb(85, 85, 85); font-size: 15px; letter-spacing: 0em; text-indent: 0em; white-space: normal;\"><strong>标牌全能白胶</strong></p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 0em; line-height: 2em; font-family: 微软雅黑; color: rgb(85, 85, 85); font-size: 15px; letter-spacing: 0em; text-indent: 0em; white-space: normal;\">全能白胶是以醋酸乙烯、聚乙烯醇为主要材料，经特殊工艺聚合而成的新一代产品。</p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 0em; line-height: 2em; font-family: 微软雅黑; color: rgb(85, 85, 85); font-size: 15px; letter-spacing: 0em; text-indent: 0em; white-space: normal;\">• 粘结强度高 &nbsp;&nbsp;• 胶膜弹性好&nbsp;&nbsp;• 抗冻性优越 &nbsp;&nbsp;&nbsp;• 施工方便&nbsp;&nbsp;• 环保无毒&nbsp;</p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 0em; line-height: 2em; font-family: 微软雅黑; color: rgb(85, 85, 85); font-size: 15px; letter-spacing: 0em; text-indent: 0em; white-space: normal;\">&nbsp;</p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 0em; line-height: 2em; font-family: 微软雅黑; color: rgb(85, 85, 85); font-size: 15px; letter-spacing: 0em; text-indent: 0em; white-space: normal;\"><strong>技术参数</strong><br/>粘度：25000-30000Pa.s<br/>固含量：18%<br/>PH值：5-6</p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 0em; line-height: 2em; font-family: 微软雅黑; color: rgb(85, 85, 85); font-size: 15px; letter-spacing: 0em; text-indent: 0em; white-space: normal;\"><br/><strong>适用范围：</strong>适用于家庭装修，办公室及大型装饰装修工程板材粘贴或适用于石膏板、埃特板接缝的贴布处理；兑腻子粉后作为天面批灰使用(补缝、贴布条、贴牛皮纸直接使用，兑腻子粉批天面按1份胶兑4份水使用；兑腻子粉批墙面按1份胶兑5份水使用)。<br/><strong>使用方法：</strong>直接涂胶粘合压好，自然干燥即可<br/><strong>用量：</strong>1KG/5㎡<br/><strong>注意事项：</strong>1、空气湿度大于90%，温度低于5℃不宜施工；&nbsp; 2、施工前必须检查板材是否平整；&nbsp; 3、涂胶必须按照标准的用量，不宜过多或过少；&nbsp; 4、涂完胶后板材加压需均衡。</p><p><br/></p>',10.00,10.00,10.00,9.50,9.80,3,2,1,0,7,'2018-11-30 02:42:06','1999-12-31 16:00:00','','个',0,0),(72,'标牌防霉A+超易洗','<p><img src=\"http://www.sjhgjck.com/static//res//detail/7//20181130/20181030155155_809348.png\" style=\"width:100%;height:auto;\"/></p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 0em; line-height: 2em; font-family: 微软雅黑; color: rgb(85, 85, 85); font-size: 15px; letter-spacing: 0em; text-indent: 0em; white-space: normal;\"><strong>标牌防霉A+超易洗&nbsp; BPR-810</strong></p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 0em; line-height: 2em; font-family: 微软雅黑; color: rgb(85, 85, 85); font-size: 15px; letter-spacing: 0em; text-indent: 0em; white-space: normal;\">防霉A<sup>+</sup>超易洗优质墙面漆采用特殊粉料、特别工艺制作，具有高遮盖力、好施工等优点。</p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 0em; line-height: 2em; font-family: 微软雅黑; color: rgb(85, 85, 85); font-size: 15px; letter-spacing: 0em; text-indent: 0em; white-space: normal;\">• 遮盖力超强 &nbsp;&nbsp;• 漆膜白&nbsp;&nbsp;• 施工性能好 &nbsp;&nbsp;• 环保无毒</p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 0em; line-height: 2em; font-family: 微软雅黑; color: rgb(85, 85, 85); font-size: 15px; letter-spacing: 0em; text-indent: 0em; white-space: normal;\">&nbsp;</p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 0em; line-height: 2em; font-family: 微软雅黑; color: rgb(85, 85, 85); font-size: 15px; letter-spacing: 0em; text-indent: 0em; white-space: normal;\"><strong>内墙面漆技术参数：</strong><br/>粘度：113Pa.s<br/>固含量：56%<br/>对比率：0.95<br/>PH值：7.5<br/><br/><strong>适用范围：</strong>适用于工程涂装<br/><strong>使用方法：</strong>漆1：水0.2混合搅拌均匀后使用。<br/><strong>用量：</strong>1KG/5㎡2遍<br/><strong>注意事项：</strong>1、空气湿度大于85%，温度低于5℃不宜施工；2、兑水不宜超过20%，必须搅拌均匀方可使用；3、施工时保持涂层均匀。4、第一遍面漆干燥后方可涂刷第二遍面漆。</p><p><br/></p>',10.00,10.00,10.00,9.50,9.80,1,2,1,0,7,'2018-11-30 07:51:28','1999-12-31 16:00:00','','个',0,0),(73,'标牌皓白墙面漆','<p><img src=\"http://www.sjhgjck.com/static//res//detail/7//20181130/20181030155544_826151.png\" style=\"width:100%;height:auto;\"/></p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 0em; line-height: 2em; font-family: 微软雅黑; color: rgb(85, 85, 85); font-size: 15px; letter-spacing: 0em; text-indent: 0em; white-space: normal;\"><strong>标牌皓白墙面漆&nbsp; BPR-870</strong></p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 0em; line-height: 2em; font-family: 微软雅黑; color: rgb(85, 85, 85); font-size: 15px; letter-spacing: 0em; text-indent: 0em; white-space: normal;\">皓白内墻漆采用特有的皓白配方设计,使漆膜品质优异,具有超白效果,营造优雅明亮、皓白如新的家居空间。</p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 0em; line-height: 2em; font-family: 微软雅黑; color: rgb(85, 85, 85); font-size: 15px; letter-spacing: 0em; text-indent: 0em; white-space: normal;\">&nbsp;</p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 0em; line-height: 2em; font-family: 微软雅黑; color: rgb(85, 85, 85); font-size: 15px; letter-spacing: 0em; text-indent: 0em; white-space: normal;\">•抗碱防霉&nbsp;&nbsp;• 皓白如新&nbsp;&nbsp;&nbsp;•净味环保&nbsp;&nbsp;•施工简便</p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 0em; line-height: 2em; font-family: 微软雅黑; color: rgb(85, 85, 85); font-size: 15px; letter-spacing: 0em; text-indent: 0em; white-space: normal;\">&nbsp;</p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 0em; line-height: 2em; font-family: 微软雅黑; color: rgb(85, 85, 85); font-size: 15px; letter-spacing: 0em; text-indent: 0em; white-space: normal;\"><strong>内墙面漆技术参数：</strong><br/>粘度：113Pa.s<br/>固含量：56%<br/>对比率：0.92<br/>PH值：7.5<br/>耐水洗：500次<br/><br/><strong>适用范围：</strong>适用于高档工程或普通家装涂装。<br/><strong>使用方法</strong>：漆1：水0.2混合搅拌均匀后使用。<br/><strong>用量：</strong>1KG/5㎡2遍<br/><strong>注意事项：</strong>1、空气湿度大于85%，温度低于5℃不宜施工；&nbsp; 2、兑水不宜超过20%，必须搅拌均匀方可使用；&nbsp; 3、施工时保持涂层均匀。&nbsp; 4、第一遍面漆干燥后方可涂刷第二遍面漆。</p><p><br/></p>',10.00,10.00,10.00,9.50,9.80,2,2,1,0,7,'2018-11-30 07:54:54','1999-12-31 16:00:00','','个',0,0),(74,'标牌净味防霉面漆','<p><img src=\"http://www.sjhgjck.com/static//res//detail/7//20181130/2018103016257_675836.png\" style=\"width:100%;height:auto;\"/></p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 0em; line-height: 2em; font-family: 微软雅黑; color: rgb(85, 85, 85); font-size: 15px; letter-spacing: 0em; text-indent: 0em; white-space: normal;\"><strong>标牌净味防霉面漆&nbsp; BPR-880</strong></p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 0em; line-height: 2em; font-family: 微软雅黑; color: rgb(85, 85, 85); font-size: 15px; letter-spacing: 0em; text-indent: 0em; white-space: normal;\">浄味防霉内墙漆精选优质原材料,高效净味,强效防霉；同时该产品的先进工艺具备增强墙面遮盖力,强化产品的抗碱性能,多方位保护墙面,持久如新。</p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 0em; line-height: 2em; font-family: 微软雅黑; color: rgb(85, 85, 85); font-size: 15px; letter-spacing: 0em; text-indent: 0em; white-space: normal;\">&nbsp;</p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 0em; line-height: 2em; font-family: 微软雅黑; color: rgb(85, 85, 85); font-size: 15px; letter-spacing: 0em; text-indent: 0em; white-space: normal;\">•&nbsp;强效防霉&nbsp;&nbsp;&nbsp;• 高效净味&nbsp;&nbsp;&nbsp;• 高遮盖力&nbsp;&nbsp;&nbsp;• 加倍抗碱</p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 0em; line-height: 2em; font-family: 微软雅黑; color: rgb(85, 85, 85); font-size: 15px; letter-spacing: 0em; text-indent: 0em; white-space: normal;\">&nbsp;</p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 0em; line-height: 2em; font-family: 微软雅黑; color: rgb(85, 85, 85); font-size: 15px; letter-spacing: 0em; text-indent: 0em; white-space: normal;\"><strong>内墙面漆技术参数：</strong><br/>粘度：117Pa.s<br/>固含量：60%<br/>对比率：0.92<br/>PH值：7.5<br/>耐水洗：2000次<br/><br/><strong>适用范围：</strong>适用于家装涂装。<br/><strong>使用方法：</strong>漆1：水0.25混合搅拌均匀后使用。<br/><strong>用量：</strong>1KG/5㎡2遍<br/><strong>注意事项：</strong>1、空气湿度大于85%，温度低于5℃不宜施工；&nbsp; 2、兑水不宜超过25%，必须搅拌均匀方可使用；&nbsp; 3、施工时保持涂层均匀。&nbsp; 4、第一遍面漆干燥后方可涂刷第二遍面漆。</p><p><br/></p>',10.00,10.00,10.00,9.50,9.80,3,2,1,0,7,'2018-11-30 08:24:40','1999-12-31 16:00:00','','个',0,0),(75,'标牌荷叶抗污外墙漆','<p><img src=\"http://www.sjhgjck.com/static//res//detail/7//20181130/20181030162743_878865.png\" style=\"width:100%;height:auto;\"/></p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 0em; line-height: 2em; font-family: 微软雅黑; color: rgb(85, 85, 85); font-size: 15px; letter-spacing: 0em; text-indent: 0em; white-space: normal;\"><strong>标牌荷叶抗污外墙漆&nbsp; BPR-920</strong></p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 0em; line-height: 2em; font-family: 微软雅黑; color: rgb(85, 85, 85); font-size: 15px; letter-spacing: 0em; text-indent: 0em; white-space: normal;\">荷叶抗污豪华外墙面漆采用进口原料生产，具有很好的抗水、抗污性能、耐候性优越、是装饰装修的理想选择。</p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 0em; line-height: 2em; font-family: 微软雅黑; color: rgb(85, 85, 85); font-size: 15px; letter-spacing: 0em; text-indent: 0em; white-space: normal;\">•抗碱性好&nbsp;&nbsp;•遮盖力强&nbsp;&nbsp;•附着力强&nbsp;&nbsp;•耐候性优越</p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 0em; line-height: 2em; font-family: 微软雅黑; color: rgb(85, 85, 85); font-size: 15px; letter-spacing: 0em; text-indent: 0em; white-space: normal;\">&nbsp;</p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 0em; line-height: 2em; font-family: 微软雅黑; color: rgb(85, 85, 85); font-size: 15px; letter-spacing: 0em; text-indent: 0em; white-space: normal;\"><strong>外墙面漆技术参数：</strong><br/>粘度：113Pa.s<br/>固含量：52%<br/>对比率：0.9<br/>PH值：8<br/>耐候性：5年<br/><br/><strong>适用范围：</strong>适用于普通工程外墙涂装。<br/><strong>使用方法：</strong>漆1：水0.2混合搅拌均匀后使用。<br/><strong>用量：</strong>1KG/5㎡2遍<br/><strong>注意事项：</strong>1、空气湿度大于85%，温度低于5℃或雨天不宜施工；2、兑水不宜超过15%，必须搅拌均匀方可使用；3、施工时保持涂层均匀。4、第一遍面漆干燥后方可涂刷第二遍面漆。<br/>&nbsp;</p>',10.00,10.00,10.00,9.50,9.80,4,2,1,0,7,'2018-11-30 08:26:33','2018-11-30 08:27:28','','个',0,0),(76,'全效木器漆（套装漆）','<p><img src=\"http://www.sjhgjck.com/static//res//detail/7//20181130/20181030164812_415870.png\" style=\"width:100%;height:auto;\"/></p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 0em; line-height: 2em; font-family: 微软雅黑; color: rgb(85, 85, 85); font-size: 15px; letter-spacing: 0em; text-indent: 0em; white-space: normal;\"><strong>全效木器漆（套装漆）</strong></p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 0em; line-height: 2em; font-family: 微软雅黑; color: rgb(85, 85, 85); font-size: 15px; letter-spacing: 0em; text-indent: 0em; white-space: normal;\">全效木器漆精选纯天然大豆植物油为原料,经过国际先进的制漆工艺合成的综合性能优异的全效型PU木器漆。它超低VOC及游离TDl ,在施工中或施工后始终气味清新,健康环保,让您远离苯毒;它还高固低粘、性能优异、功能全面,建议底、面漆配套使用,装饰与保护效果将更趋于完美。</p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 0em; line-height: 2em; font-family: 微软雅黑; color: rgb(85, 85, 85); font-size: 15px; letter-spacing: 0em; text-indent: 0em; white-space: normal;\">&nbsp;</p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 0em; line-height: 2em; font-family: 微软雅黑; color: rgb(85, 85, 85); font-size: 15px; letter-spacing: 0em; text-indent: 0em; white-space: normal;\">•纯天然大豆植物油成份&nbsp;&nbsp;•特加抗白因子&nbsp;&nbsp;•透明度极高&nbsp; •抗发白&nbsp;&nbsp;•气味清新&nbsp;&nbsp;•漆膜性能好&nbsp;&nbsp;•漆膜坚韧&nbsp; •高抗刮伤&nbsp;&nbsp;•流平性好&nbsp;&nbsp;•手感细腻爽滑&nbsp;&nbsp;•易打磨&nbsp; •通用性强&nbsp;&nbsp;•漆膜柔和、均匀、晶亮</p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 0em; line-height: 2em; font-family: 微软雅黑; color: rgb(85, 85, 85); font-size: 15px; letter-spacing: 0em; text-indent: 0em; white-space: normal;\">&nbsp;</p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 0em; line-height: 2em; font-family: 微软雅黑; color: rgb(85, 85, 85); font-size: 15px; letter-spacing: 0em; text-indent: 0em; white-space: normal;\"><strong>面漆技术参数：</strong><br/>粘度：12000-13000Pa.s&nbsp;&nbsp; &nbsp;<br/>固含量：53%<br/><br/><strong>适用范围：</strong>适用于别墅、高档会所、星级酒店、高档写字楼等室内装修工程<br/><strong>使用方法：</strong>主漆1：稀释剂1：固化剂0.5混合后使用<br/><strong>用量：</strong>1KG/5㎡两遍<br/><strong>注意事项：</strong></p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 0em; line-height: 2em; font-family: 微软雅黑; color: rgb(85, 85, 85); font-size: 15px; letter-spacing: 0em; text-indent: 0em; white-space: normal;\">1、空气湿度大于75%，温度低于5℃不宜施工；</p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 0em; line-height: 2em; font-family: 微软雅黑; color: rgb(85, 85, 85); font-size: 15px; letter-spacing: 0em; text-indent: 0em; white-space: normal;\">2、木材湿度过大不宜施工；</p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 0em; line-height: 2em; font-family: 微软雅黑; color: rgb(85, 85, 85); font-size: 15px; letter-spacing: 0em; text-indent: 0em; white-space: normal;\">3、必须按照正确配比使用；</p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 0em; line-height: 2em; font-family: 微软雅黑; color: rgb(85, 85, 85); font-size: 15px; letter-spacing: 0em; text-indent: 0em; white-space: normal;\">4、调漆时必须搅拌均匀方可使用；</p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 0em; line-height: 2em; font-family: 微软雅黑; color: rgb(85, 85, 85); font-size: 15px; letter-spacing: 0em; text-indent: 0em; white-space: normal;\">5、调好漆后置放夏天超过3小时、冬天超过5小时不能使用。</p><p><br/></p>',10.00,10.00,10.00,9.50,9.80,6,2,1,0,7,'2018-11-30 08:47:06','2018-11-30 08:48:44','','个',0,0),(77,'标牌108建筑胶','<p><img src=\"http://www.sjhgjck.com/static//res//detail/7//20181130/20181030171038_665249.png\" style=\"width:100%;height:auto;\"/></p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 0em; line-height: 2em; font-family: 微软雅黑; color: rgb(85, 85, 85); font-size: 15px; letter-spacing: 0em; text-indent: 0em; white-space: normal;\"><strong>标牌108建筑胶</strong></p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 0em; line-height: 2em; font-family: 微软雅黑; color: rgb(85, 85, 85); font-size: 15px; letter-spacing: 0em; text-indent: 0em; white-space: normal;\">108建筑胶采用优质原料、先进工艺生产、外观清激、透明、无毒无味、与传统的108建筑胶对比、标牌108建筑胶更环保、易施工、性能等优越。</p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 0em; line-height: 2em; font-family: 微软雅黑; color: rgb(85, 85, 85); font-size: 15px; letter-spacing: 0em; text-indent: 0em; white-space: normal;\">•环保健康&nbsp;&nbsp;•清澈透明&nbsp;&nbsp;•无毒无味&nbsp;&nbsp;•施工简便</p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 0em; line-height: 2em; font-family: 微软雅黑; color: rgb(85, 85, 85); font-size: 15px; letter-spacing: 0em; text-indent: 0em; white-space: normal;\">&nbsp;</p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 0em; line-height: 2em; font-family: 微软雅黑; color: rgb(85, 85, 85); font-size: 15px; letter-spacing: 0em; text-indent: 0em; white-space: normal;\"><strong>技术参数：</strong><br/>粘度：300-500Pa.s<br/>固含量：4.5%<br/>PH值：6<br/><strong>适用范围：</strong>大型普通装修工程<br/><strong>使用方法：</strong>兑腻子粉使用<br/><strong>用量：</strong>1KG胶/3KG水/10KG腻子粉<br/><strong>注意事项：</strong>1、空气湿度大于90%，温度低于5℃不宜施工；&nbsp; 2、墙体碱性过大不宜施工；&nbsp; 3、墙体过于干燥需淋湿后方可施工。</p><p><br/></p>',10.00,10.00,10.00,9.50,9.80,1,2,1,0,7,'2018-11-30 08:53:17','1999-12-31 16:00:00','','个',0,0),(78,'标牌通用K11防水胶（双组份）','<p><img src=\"http://www.sjhgjck.com/static//res//detail/7//20181130/2018103019649_455170.png\" style=\"width:100%;height:auto;\"/></p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 0em; line-height: 2em; font-family: 微软雅黑; color: rgb(85, 85, 85); font-size: 15px; letter-spacing: 0em; text-indent: 0em; white-space: normal;\"><strong>标牌通用K11防水胶（双组份）&nbsp; BPB-7125</strong></p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 0em; line-height: 2em; font-family: 微软雅黑; color: rgb(85, 85, 85); font-size: 15px; letter-spacing: 0em; text-indent: 0em; white-space: normal;\">通用防水K11浆料（双组份）是防水乳液配粉料产品，具有很强的防水性能。</p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 0em; line-height: 2em; font-family: 微软雅黑; color: rgb(85, 85, 85); font-size: 15px; letter-spacing: 0em; text-indent: 0em; white-space: normal;\">&nbsp;</p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 0em; line-height: 2em; font-family: 微软雅黑; color: rgb(85, 85, 85); font-size: 15px; letter-spacing: 0em; text-indent: 0em; white-space: normal;\">•防水性好&nbsp; •防水层干固后泡水不粉化&nbsp;&nbsp;•不开裂&nbsp;&nbsp;•不渗漏&nbsp; •附着力强&nbsp;&nbsp;•防水层干固后可直接在表面铺贴瓷砖</p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 0em; line-height: 2em; font-family: 微软雅黑; color: rgb(85, 85, 85); font-size: 15px; letter-spacing: 0em; text-indent: 0em; white-space: normal;\">&nbsp;</p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 0em; line-height: 2em; font-family: 微软雅黑; color: rgb(85, 85, 85); font-size: 15px; letter-spacing: 0em; text-indent: 0em; white-space: normal;\"><strong>通用K11防水技术参数：</strong><br/>粘度：800Pa.s<br/>固含量：20%<br/>PH值：6<br/><strong>适用范围</strong>：适用于室内厨房、卫生间防水。<br/><strong>使用方法：</strong>乳液1：配套粉料2混合搅拌均匀。<br/><strong>用量：</strong>1KG/0.8㎡两遍<br/><strong>注意事项：</strong><br/>1、空气湿度大于90%，温度低于5℃不宜施工；<br/>2、施工前需做基层清理；3、配比后的浆料需搅拌均匀；<br/>4、施工时需交叉涂布均匀；<br/>5、第一遍干燥后方可涂刷第二遍。</p><p><br/></p>',10.00,10.00,10.00,9.50,9.80,10,2,1,0,7,'2018-11-30 11:06:23','1999-12-31 16:00:00','','个',0,0),(79,'高级美纹纸胶带(中粘橡胶）','<p>产品颜色：白色。</p><p>产品性能：采用高性能橡胶系压敏胶，耐一定溶剂、粘性适中无残胶、贴附性好、有良好的遮盖和保护性。</p><p>主要用途：适用于室内装饰等喷涂保护</p><p><br/></p>',10.00,10.00,10.00,9.50,9.80,1,2,1,0,7,'2018-12-18 04:01:56','1999-12-31 16:00:00','','个',0,0),(80,'高级美纹纸胶带（高粘水胶）','<p>产品颜色：黄色。</p><p>产品性能：采用高性能高粘度压敏胶粘剂，柔软服贴，粘度较高，底剥力度易撕落，不伤底漆，无残胶，耐候性强等优点。30天不残胶。</p><p>主要用途：无气喷涂及于室内、外较高粘度需求的施工保护和遮蔽保护。</p><p><br/></p>',10.00,10.00,10.00,9.50,9.80,2,2,1,0,7,'2018-12-18 08:12:36','1999-12-31 16:00:00','','个',0,0),(81,'皇贵高级美纹纸胶带（橡胶高粘）','<p>产品颜色：柠檬黄</p><p>产品性能：采用高性能进口橡胶系压敏胶，柔韧服贴，高粘度，底剥力，无残胶。</p><p>主要用途：适用于地坪漆施工、外墙、内墙喷漆分色保护。</p><p><br/></p>',10.00,10.00,10.00,9.50,9.80,3,2,1,0,7,'2018-12-18 08:19:15','1999-12-31 16:00:00','','个',0,0),(82,'橡胶高粘美纹纸胶带（耐高温汽车美纹纸）','<p>产品颜色：土黄色</p><p>产品特性：采用高性能进口耐高温橡胶系压敏胶，柔韧服贴，高粘度，耐温80℃，无残胶。</p><p>产品用途：适用于汽车制造中喷漆和保护以及高温环境喷漆和保护。',10.00,10.00,10.00,9.50,9.80,4,2,1,0,7,'2018-12-18 08:20:03','1999-12-31 16:00:00','','个',0,0),(83,'外墙高粘直线美纹纸胶带','<p>产品颜色：亮黄色',10.00,10.00,10.00,9.50,9.80,5,2,1,0,7,'2018-12-18 08:22:32','1999-12-31 16:00:00','','个',0,0),(84,'泡沫双面胶带','<p>产品特性：优异的粘接力、耐侯性能佳抗老化、耐高温，双面粘合。</p><p>产品用途：用于建筑行业、电器产品、机械零部件，工艺礼品、防滑与缓冲防震包装。</p><p><br/></p>',10.00,10.00,10.00,9.50,9.80,6,2,1,0,7,'2018-12-18 08:27:00','1999-12-31 16:00:00','','个',0,0),(85,'绵纸双面胶带','<p>产品特性：可分为热熔型胶粘带、水性双面胶、油性双面胶。粘接力强、抗老化、双面粘合。</p><p>产品用途：热熔双面胶主要用在贴纸、文具、办公等方面。油性双面胶主要用在皮具、珍珠棉、海棉、鞋制品等高粘需求行业。</p><p><br/></p>',10.00,10.00,10.00,9.50,9.80,7,2,1,0,7,'2018-12-18 08:27:43','1999-12-31 16:00:00','','个',0,0),(86,'和纸胶带（分色纸）','<p>产品颜色：深黄色、草绿色。</p><p>产品特性：粘性强、持粘力好，柔韧性好，平滑表面、弯曲或转角处的贴附性遮蔽性都非常好，不留残胶。</p><p>产品用途：适用于油漆施工过程中的分色和保护。</p><p><br/></p>',10.00,10.00,10.00,9.50,9.80,8,2,1,0,7,'2018-12-18 08:28:21','1999-12-31 16:00:00','','个',0,0),(87,'弱粘型和纸胶带（艺术漆硅藻泥专用）','<p>产品颜色：湖水蓝，绿色</p><p>产品特性：粘性弱，底剥力度易撕落，不伤底漆，柔韧性好，服帖性好，无残胶。</p><p>产品用途：适用于艺术漆、硅藻泥等弱粘性要求的施工过程分色和保护。</p><p><br/></p>',10.00,10.00,10.00,9.50,9.80,9,2,1,0,7,'2018-12-18 08:29:28','2018-12-18 08:30:00','','个',0,0),(88,'牛皮纸胶带','<p>产品颜色：土黄色。</p><p>产品特性：以牛皮离型纸为基材，涂以丙烯酸胶或天然橡胶胶水制成胶粘带。具有高强的粘着力，拉伸强度高，耐温、耐寒、防水、气候适应力特强,易撕性能佳，不会发生变形，无污染，可以再回收，属环保型产品。</p><p>产品用途：适用于接纸，纸箱包装以及服装行业的粘毛用，尤其是用于出口纸箱封口或者遮盖纸箱的字迹。</p><p><br/></p>',10.00,10.00,10.00,9.50,9.80,10,2,1,0,7,'2018-12-18 08:30:16','1999-12-31 16:00:00','','个',0,0),(89,'布基胶带','<p>产品颜色：红色、黄色、蓝色、绿色、黑色、棕色、银灰色。</p><p>产品特性：以布基为基材，涂以压敏胶水制成布基胶带。 具有高韧性、高耐磨性，高粘性，手撕易断，使用方便。</p><p>产品用途：适用于地毯拼接、重型包装、重物捆扎、封箱封口、表层保护、管道包扎、书册补强、造船、建筑、机电、冰箱、模具等行业。</p><p><br/></p>',10.00,10.00,10.00,9.50,9.80,11,2,1,0,7,'2018-12-18 08:30:53','1999-12-31 16:00:00','','个',0,0),(90,'牛皮接缝纸带','<p>产品特性：高强抗拉强度和支撑力，粘附力更强，不开裂，不起泡。</p><p>产品用途：用于石膏板吊顶接缝粘贴，防止开裂。水泥墙等材料组成的隔墙系统，吊顶系统，隔墙系统等的平面接缝和阴角接缝处理。</p><p><br/></p>',10.00,10.00,10.00,9.50,9.80,201,2,1,0,7,'2018-12-18 08:32:50','1999-12-31 16:00:00','','个',0,0),(91,'自粘型网格带','<p>产品特性：自粘性，耐碱性，服贴性优越，空间稳定性强，简单方便，易于施工。</p><p>产品用途：适用于建筑业防止墙体及吊顶裂缝。</p><p><br/></p>',10.00,10.00,10.00,9.50,9.80,202,2,1,0,7,'2018-12-18 08:33:38','1999-12-31 16:00:00','','个',0,0),(92,'网格布','<p>产品颜色：白色</p><p>产品性能：结实耐用，强度高、耐碱性好。</p><p>主要用途：广泛使用于建筑嵌缝，墙体增强， 防水卷材布、沥青屋面防水，石膏,水泥，橡胶等制品的骨架及增强。</p><p><br/></p>',10.00,10.00,10.00,9.50,9.80,203,2,1,0,7,'2018-12-18 09:15:26','1999-12-31 16:00:00','','个',0,0),(93,'和纸喷涂遮蔽保护膜','<p>产品特性：静电吸附，防渗透，耐温，粘接性能好，省时省工。</p><p>产品用途：使用于大型机械、船舶、汽车制造、油漆喷涂保护、标志的保护等。</p><p><br/></p>',10.00,10.00,10.00,9.50,9.80,301,2,1,0,7,'2018-12-18 09:16:05','1999-12-31 16:00:00','','个',0,0),(94,'外墙分格胶带(黑色泡棉)','<p>产品颜色：黑色泡棉</p><p>产品特性：主要有PE、EVA两种。优异的粘接力、耐侯性能佳抗老化、耐高温，双面粘合，节省底漆，降低成本。</p><p>产品用途：真石漆、岩片漆等打格处理，还可用于电子电器产品、机械零部件，汽车配件装饰条粘贴等。</p><p><br/></p>',10.00,10.00,10.00,9.50,9.80,401,2,1,0,7,'2018-12-18 09:16:56','2018-12-18 10:54:35','','个',0,0),(95,'外墙分格胶带(黑色绵纸)','<p>产品颜色：黑色绵纸。</p><p>产品特性：优异的粘接力、耐侯性能佳抗老化、耐高温，双面粘合，节省底漆，降低成本。</p><p>产品用途：真石漆、岩片漆等打格处理，还可用于电子电器产品、机械零部件，汽车配件装饰条粘贴等。</p><p><br/></p>',10.00,10.00,10.00,9.50,9.80,402,2,1,0,7,'2018-12-18 10:53:45','1999-12-31 16:00:00','','个',0,0),(96,'仿古砖模具胶带','<p>产品特性：模具化处理，省时省工，优异的粘接力、立体感强，耐侯性能佳，不伤底漆。</p><p>产品用途：适用于大面积真石漆岩片漆等墙面施工。</p><p><br/></p>',10.00,10.00,10.00,9.50,9.80,403,2,1,0,7,'2018-12-18 10:59:49','1999-12-31 16:00:00','','个',0,0),(97,'丁基防水胶带','<p>产品特性：具有极强的粘结力，优良的耐候性、耐老化性及防水性，对被粘物表面起到密封、减震、保护等作用极佳。是一种极为先进的防水密封材料。</p><p>产品用途：广泛用于钢屋面彩钢板、采光板之间的相互搭接，及落水天沟连接处防水补漏密封。</p><p><br/></p>',10.00,10.00,10.00,9.50,9.80,501,2,1,0,7,'2018-12-18 11:02:08','1999-12-31 16:00:00','','个',0,0),(98,'警示胶带','<p>产品颜色：黑黄、红白、红、黄、蓝、绿、黑。</p><p>产品特性：又称：公安胶带、地板胶带、斑马线胶带。优良的弹性,耐候性,高度视觉力,易撕.具有粘性佳，耐防静电,鲜艳醒目，表层耐磨损，能承受高流量脚踏 ，粘性佳，一定的防腐、耐酸碱性能。</p><p>产品用途：广泛用于警示物体的标志、装饰标贴、地面(墙面)区域划分与静电敏感产品或防静电区域作标识、包装箱封口警示、产品包装警示等。</p><p><br/></p>',10.00,10.00,10.00,9.50,9.80,601,2,1,0,7,'2018-12-18 11:02:54','1999-12-31 16:00:00','','个',0,0),(99,'一次性护栏带','<p>产品颜色：红白。</p><p>产品特性：用PE材料经印刷切割制作而成，色泽鲜艳。</p><p>产品用途：广泛用于突发性事件或施工区域及危险地段的现场警戒、隔离。护栏带使用方便，不会污染现场环境。</p><p><br/></p>',10.00,10.00,10.00,9.50,9.80,602,2,1,0,7,'2018-12-18 11:05:56','1999-12-31 16:00:00','','个',0,0),(100,'铝箔胶带','<p>产品特性：粘性好，附着力强，抗老化，耐紫外线，防火，防潮，可以阻止较多化学品腐蚀，户外应用，耐候性好，保温性能高。</p><p>产品用途：用于铝箔复合材料的接缝粘贴。是冰箱、冰柜生产厂的主要原辅材料，也是保温材料经销部门必购原料。本产品广泛应用于PDA、PDP、LCD显示器、笔记本电脑、复印机等各种电子产品内需电磁屏蔽的地方；用于蒸气导管外包裹，防止温度向外散失。</p><p><br/></p>',10.00,10.00,10.00,9.50,9.80,603,2,1,0,7,'2018-12-18 11:06:40','1999-12-31 16:00:00','','个',0,0);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itemdetailres`
--

DROP TABLE IF EXISTS `itemdetailres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `itemdetailres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `storeId` int(11) NOT NULL,
  `type` tinyint(4) DEFAULT '0',
  `name` varchar(256) NOT NULL,
  `url` varchar(256) NOT NULL,
  `size` varchar(32) NOT NULL,
  `mem` varchar(32) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_idi_storeid` (`storeId`),
  KEY `idx_idi_storeid_type` (`storeId`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itemdetailres`
--

LOCK TABLES `itemdetailres` WRITE;
/*!40000 ALTER TABLE `itemdetailres` DISABLE KEYS */;
INSERT INTO `itemdetailres` VALUES (4,7,0,'红砖95-4','http://www.sjhgjck.com/static//res//detail/7//20180713/2018613133331_605153.jpg','640:1281','242Kb','2018-07-13 05:33:31'),(5,7,0,'红砖95-5','http://www.sjhgjck.com/static//res//detail/7//20180713/2018613133342_579305.jpg','640:355','51Kb','2018-07-13 05:33:42'),(6,7,0,'红砖95-6','http://www.sjhgjck.com/static//res//detail/7//20180713/2018613133358_402654.jpg','640:546','86Kb','2018-07-13 05:33:58'),(18,7,0,'万能胶','http://www.sjhgjck.com/static//res//detail/7//20180724/2018626104617_102901.jpg','750:1032','228Kb','2018-07-26 02:46:17'),(19,7,0,'万能胶','http://www.sjhgjck.com/static//res//detail/7//20180724/2018626104617_439820.jpg','400:300','108Kb','2018-07-26 02:46:17'),(20,7,0,'万能胶','http://www.sjhgjck.com/static//res//detail/7//20180724/2018626104619_300677.jpg','750:1223','318Kb','2018-07-26 02:46:19'),(21,7,0,'万能胶','http://www.sjhgjck.com/static//res//detail/7//20180724/2018626104620_31436.jpg','750:828','276Kb','2018-07-26 02:46:20'),(22,7,0,'万能胶','http://www.sjhgjck.com/static//res//detail/7//20180724/2018626104621_14623.jpg','750:781','263Kb','2018-07-26 02:46:21'),(23,7,0,'万能胶','http://www.sjhgjck.com/static//res//detail/7//20180724/2018626104621_263893.jpg','800:800','95Kb','2018-07-26 02:46:21'),(24,7,0,'万能胶','http://www.sjhgjck.com/static//res//detail/7//20180724/2018626104622_512643.jpg','750:699','165Kb','2018-07-26 02:46:22'),(25,7,0,'万能胶','http://www.sjhgjck.com/static//res//detail/7//20180724/2018626104622_850062.jpg','750:1042','484Kb','2018-07-26 02:46:22'),(26,7,0,'万能胶','http://www.sjhgjck.com/static//res//detail/7//20180724/2018626104622_927920.jpg','750:1441','478Kb','2018-07-26 02:46:22'),(27,7,0,'万能胶','http://www.sjhgjck.com/static//res//detail/7//20180724/2018626104622_610058.jpg','750:853','615Kb','2018-07-26 02:46:22'),(28,7,0,'1-标牌净醛白胶','http://www.sjhgjck.com/static//res//detail/7//20181129/201810291416_106777.png','300:300','44Kb','2018-11-29 06:01:06'),(29,7,0,'2-标牌全效白胶','http://www.sjhgjck.com/static//res//detail/7//20181130/2018103010164_709079.png','300:300','56Kb','2018-11-30 02:16:04'),(30,7,0,'3-标牌全能白胶','http://www.sjhgjck.com/static//res//detail/7//20181130/20181030104550_687244.png','300:300','51Kb','2018-11-30 02:45:50'),(31,7,0,'1-标牌防霉A+超易洗','http://www.sjhgjck.com/static//res//detail/7//20181130/20181030155155_809348.png','400:300','82Kb','2018-11-30 07:51:55'),(32,7,0,'2-标牌皓白墙面漆','http://www.sjhgjck.com/static//res//detail/7//20181130/20181030155544_826151.png','400:300','111Kb','2018-11-30 07:55:44'),(33,7,0,'3-标牌净味防霉面漆','http://www.sjhgjck.com/static//res//detail/7//20181130/2018103016257_675836.png','400:300','100Kb','2018-11-30 08:25:07'),(34,7,0,'7-标牌荷叶抗污外墙漆','http://www.sjhgjck.com/static//res//detail/7//20181130/20181030162743_878865.png','400:300','79Kb','2018-11-30 08:27:43'),(35,7,0,'1-全效木器漆（套装漆）','http://www.sjhgjck.com/static//res//detail/7//20181130/20181030164812_415870.png','400:300','73Kb','2018-11-30 08:48:12'),(36,7,0,'4-标牌108建筑胶','http://www.sjhgjck.com/static//res//detail/7//20181130/20181030171038_665249.png','400:300','65Kb','2018-11-30 09:10:38'),(37,7,0,'2-标牌通用K11防水胶（双组份）','http://www.sjhgjck.com/static//res//detail/7//20181130/2018103019649_455170.png','400:300','74Kb','2018-11-30 11:06:49');
/*!40000 ALTER TABLE `itemdetailres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itemimage`
--

DROP TABLE IF EXISTS `itemimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `itemimage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `storeId` int(11) NOT NULL,
  `itemId` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `zorder` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_itemImage_item` (`itemId`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itemimage`
--

LOCK TABLES `itemimage` WRITE;
/*!40000 ALTER TABLE `itemimage` DISABLE KEYS */;
INSERT INTO `itemimage` VALUES (46,7,20,'4114.jpg',0),(58,7,25,'1942.jpg',0),(60,7,25,'4258.jpg',0),(62,7,27,'8464.jpg',0),(65,7,28,'3553.jpg',0),(66,7,28,'1289.jpg',0),(67,7,28,'6167.jpg',0),(68,7,29,'898.jpg',0),(69,7,26,'7816.jpg',0),(70,7,26,'336.jpg',0),(72,7,24,'4469.jpg',0),(73,7,30,'7012.jpg',0),(74,7,31,'2795.jpg',0),(75,7,32,'4286.jpg',0),(76,7,33,'8061.jpg',0),(77,7,34,'4491.jpg',0),(78,7,35,'3433.jpg',0),(79,7,36,'9118.jpg',0),(80,7,37,'1966.jpg',0),(81,7,38,'8264.jpg',0),(82,7,39,'3778.jpg',0),(83,7,40,'5318.jpg',0),(84,7,41,'9946.jpg',0),(85,7,42,'7366.jpg',0),(86,7,43,'3362.jpg',0),(87,7,44,'3562.jpg',0),(89,7,45,'9584.jpg',0),(90,7,46,'1125.jpg',0),(91,7,48,'9928.jpg',0),(92,7,49,'6355.jpg',0),(93,7,49,'2353.jpg',0),(94,7,49,'6812.jpg',0),(95,7,50,'7825.jpg',0),(96,7,51,'9122.jpg',0),(97,7,51,'1873.jpg',0),(99,7,52,'1355.jpg',0),(100,7,53,'6811.jpg',0),(102,7,54,'9361.jpg',0),(103,7,55,'2916.jpg',0),(104,7,57,'8179.jpg',0),(105,7,58,'3716.jpg',0),(106,7,60,'6443.jpg',0),(107,7,62,'3423.jpg',0),(108,7,59,'6230.jpg',0),(109,7,63,'7830.jpg',0),(110,7,64,'2248.jpg',0),(111,7,65,'8474.jpg',0),(112,7,66,'2370.jpg',0),(113,7,66,'4124.jpg',0),(114,7,66,'100.jpg',0),(115,7,67,'4884.jpg',0),(116,7,68,'6353.jpg',0),(117,7,68,'1505.jpg',0),(118,7,69,'9054.jpg',0),(119,7,70,'1291.jpg',0),(120,7,71,'1754.jpg',0),(121,7,72,'1615.jpg',0),(122,7,73,'9608.jpg',0),(123,7,74,'1175.jpg',0),(124,7,75,'2581.jpg',0),(125,7,76,'3006.jpg',0),(126,7,77,'7588.jpg',0),(127,7,78,'5527.jpg',0),(128,7,79,'2689.jpg',0),(129,7,80,'61.jpg',0),(130,7,81,'507.jpg',0),(131,7,82,'4375.jpg',0),(132,7,83,'4497.jpg',0),(133,7,84,'3332.jpg',0),(134,7,85,'3106.jpg',0),(135,7,86,'6860.jpg',0),(136,7,87,'7852.jpg',0),(137,7,88,'7391.jpg',0),(138,7,89,'284.jpg',0),(139,7,90,'1380.jpg',0),(140,7,91,'3293.jpg',0),(141,7,92,'7944.jpg',0),(142,7,93,'8811.jpg',0),(143,7,94,'1210.jpg',0),(144,7,95,'3025.jpg',0),(145,7,96,'5066.jpg',0),(146,7,97,'4581.jpg',0),(147,7,98,'7895.jpg',0),(148,7,99,'8772.jpg',0),(149,7,100,'3660.jpg',0);
/*!40000 ALTER TABLE `itemimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itemprice`
--

DROP TABLE IF EXISTS `itemprice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `itemprice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `storeId` int(11) NOT NULL,
  `itemId` int(11) NOT NULL,
  `count` int(11) DEFAULT '1',
  `initPrice` decimal(10,2) DEFAULT '0.00',
  `fxPrice` decimal(10,2) DEFAULT '0.00',
  `workerPrice` decimal(10,2) DEFAULT '0.00',
  `discount` decimal(10,2) DEFAULT '10.00',
  `vipDiscount` decimal(10,2) DEFAULT '10.00',
  `weight` decimal(10,2) DEFAULT '0.00',
  `unit` varchar(64) DEFAULT '个',
  `isDel` bit(1) DEFAULT b'0',
  `enable` bit(1) DEFAULT b'1',
  `mixStr` varchar(128) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT '1999-12-31 16:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_itemPrice_storeId` (`storeId`),
  KEY `idx_itemPrice_storeId_itemId` (`storeId`,`itemId`)
) ENGINE=InnoDB AUTO_INCREMENT=352 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itemprice`
--

LOCK TABLES `itemprice` WRITE;
/*!40000 ALTER TABLE `itemprice` DISABLE KEYS */;
INSERT INTO `itemprice` VALUES (1,7,20,1,10.00,8.00,6.00,9.00,8.00,0.20,'个','\0','','1','2018-08-02 09:45:38','1999-12-31 16:00:00'),(2,7,24,1,180.00,163.00,180.00,9.90,9.50,0.00,'桶','\0','','2','2018-08-02 09:45:38','1999-12-31 16:00:00'),(3,7,25,1,258.00,220.00,240.00,9.90,9.70,0.00,'桶','\0','','3','2018-08-02 09:45:38','1999-12-31 16:00:00'),(4,7,26,1,240.00,200.00,240.00,10.00,8.50,12.00,'瓶','\0','','4','2018-08-02 09:45:38','2018-08-03 13:14:43'),(5,7,27,1,378.00,298.00,368.00,10.00,10.00,0.00,'18kg/桶','\0','','5','2018-08-02 09:45:38','1999-12-31 16:00:00'),(6,7,28,1,558.00,428.00,488.00,10.00,10.00,15.00,'个','\0','','6','2018-08-02 09:45:38','1999-12-31 16:00:00'),(7,7,29,1,268.00,228.00,258.00,10.00,10.00,17.00,'个','\0','','7','2018-08-02 09:45:38','1999-12-31 16:00:00'),(8,7,30,1,25.00,100.00,15.00,10.00,10.00,2.00,'袋','\0','','8','2018-08-02 09:45:38','2018-08-03 13:17:33'),(9,7,31,1,196.00,120.00,180.00,10.00,10.00,18.00,'18kg/桶','\0','','9','2018-08-02 09:45:38','1999-12-31 16:00:00'),(10,7,32,1,65.00,40.00,65.00,10.00,10.00,10.00,'桶','\0','','10','2018-08-02 09:45:38','2018-08-03 13:22:56'),(11,7,33,1,458.00,320.00,428.00,10.00,10.00,10.00,'10kg/桶','\0','','11','2018-08-02 09:45:38','1999-12-31 16:00:00'),(12,7,34,1,30.00,12.00,20.00,10.00,10.00,2.00,'袋/2kg','\0','','12,83','2018-08-02 09:45:38','2018-08-03 12:44:05'),(13,7,35,1,360.00,320.00,340.00,10.00,10.00,0.00,'组','\0','','13,99','2018-08-02 09:45:38','2018-08-03 13:30:31'),(14,7,36,1,220.00,180.00,200.00,10.00,10.00,0.00,'20L/桶','\0','','14,102','2018-08-02 09:45:38','2018-08-03 13:33:40'),(15,7,37,1,45.00,35.00,45.00,10.00,10.00,0.00,'桶','\0','','15','2018-08-02 09:45:38','1999-12-31 16:00:00'),(16,7,38,1,140.00,120.00,140.00,10.00,10.00,12.00,'件','\0','','16','2018-08-02 09:45:38','2018-08-02 11:45:51'),(17,7,39,1,180.00,145.00,160.00,10.00,10.00,0.00,'7kg/桶','\0','','17,95','2018-08-02 09:45:38','2018-08-03 13:21:05'),(18,7,40,1,10.00,5.50,10.00,10.00,10.00,0.00,'瓶','\0','','53,55','2018-08-02 09:45:38','2018-08-08 05:59:33'),(19,7,41,1,1.00,0.40,1.00,10.00,9.80,0.00,'把','\0','','19,85','2018-08-02 09:45:38','2018-08-03 13:08:30'),(20,7,42,1,2.00,1.00,1.50,10.00,10.00,0.00,'把','\0','','20,127','2018-08-02 09:45:38','2018-08-05 03:24:55'),(21,7,43,1,4.00,2.50,4.00,10.00,10.00,0.00,'支','\0','','21','2018-08-02 09:45:38','2018-08-03 13:13:30'),(22,7,44,1,160.00,120.00,150.00,10.00,10.00,18.00,'桶','\0','','22','2018-08-02 09:45:38','2018-08-03 10:29:20'),(23,7,45,1,12.00,7.50,10.00,10.00,10.00,0.00,'瓶','\0','','23,80','2018-08-02 09:45:38','2018-08-03 12:48:05'),(24,7,46,1,15.00,8.00,13.00,10.00,10.00,0.00,'支','\0','','24','2018-08-02 09:45:38','2018-08-05 03:28:33'),(25,7,44,1,160.00,120.00,145.00,9.70,10.00,0.00,'个','','\0','25','2018-08-02 11:18:34','2018-08-02 11:21:30'),(26,7,44,1,160.00,120.00,145.00,9.70,10.00,0.00,'个','','\0','26','2018-08-02 11:18:39','2018-08-02 11:21:30'),(27,7,32,1,458.00,328.00,380.00,10.00,10.00,5.00,'桶','\0','','27','2018-08-02 11:29:24','2018-08-03 13:22:56'),(28,7,32,1,120.00,115.00,120.00,9.50,10.00,0.00,'个','','\0','10,29','2018-08-02 11:30:07','2018-08-02 11:31:14'),(29,7,32,1,120.00,115.00,120.00,9.50,10.00,0.00,'个','','\0','27,29','2018-08-02 11:30:07','2018-08-02 11:31:14'),(30,7,26,1,6.00,5.00,6.00,10.00,10.00,0.30,'瓶','\0','','30','2018-08-02 11:36:57','2018-08-03 13:14:43'),(31,7,38,1,30.00,20.00,25.00,10.00,10.00,2.00,'桶','\0','\0','31','2018-08-02 11:43:21','2018-08-02 11:45:51'),(32,7,40,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','','\0','32,53','2018-08-03 10:30:01','2018-08-03 10:40:15'),(33,7,40,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','','\0','33,53','2018-08-03 10:30:09','2018-08-03 10:40:15'),(34,7,40,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','','\0','34,53','2018-08-03 10:30:16','2018-08-03 10:40:15'),(35,7,40,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','','\0','35,53','2018-08-03 10:30:23','2018-08-03 10:40:15'),(36,7,40,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','','\0','36,53','2018-08-03 10:30:32','2018-08-03 10:40:15'),(37,7,40,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','','\0','37,53','2018-08-03 10:30:43','2018-08-03 10:40:15'),(38,7,40,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','','\0','38,53','2018-08-03 10:30:50','2018-08-03 10:40:15'),(39,7,40,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','','\0','39,53','2018-08-03 10:30:58','2018-08-03 10:40:15'),(40,7,40,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','','\0','40,53','2018-08-03 10:31:24','2018-08-03 10:40:15'),(41,7,40,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','','\0','41,53','2018-08-03 10:31:39','2018-08-03 10:40:15'),(42,7,40,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','','\0','42,53','2018-08-03 10:31:56','2018-08-03 10:40:15'),(43,7,40,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','','\0','43,53','2018-08-03 10:32:05','2018-08-03 10:40:15'),(44,7,40,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','','\0','44,53','2018-08-03 10:32:14','2018-08-03 10:40:15'),(45,7,40,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','','\0','45,53','2018-08-03 10:32:20','2018-08-03 10:40:15'),(46,7,40,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','','\0','46,53','2018-08-03 10:32:43','2018-08-03 10:40:15'),(47,7,40,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','','\0','47,53','2018-08-03 10:33:00','2018-08-03 10:40:15'),(48,7,40,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','','\0','48,53','2018-08-03 10:33:10','2018-08-03 10:40:15'),(49,7,40,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','','\0','49,53','2018-08-03 10:33:30','2018-08-03 10:40:15'),(50,7,40,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','','\0','50,53','2018-08-03 10:33:39','2018-08-03 10:40:15'),(51,7,40,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','','\0','51,53','2018-08-03 10:35:43','2018-08-03 10:40:15'),(52,7,40,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','','\0','52,53','2018-08-03 10:35:54','2018-08-03 10:40:15'),(53,7,40,1,90.00,65.00,80.00,10.00,10.00,0.00,'件','\0','','54,55','2018-08-03 10:43:35','2018-08-08 05:59:33'),(54,7,40,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','','','32,54','2018-08-03 10:43:35','1999-12-31 16:00:00'),(55,7,40,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','','','33,54','2018-08-03 10:43:35','1999-12-31 16:00:00'),(56,7,40,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','','','34,54','2018-08-03 10:43:35','1999-12-31 16:00:00'),(57,7,40,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','','','35,54','2018-08-03 10:43:35','1999-12-31 16:00:00'),(58,7,40,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','','','36,54','2018-08-03 10:43:35','1999-12-31 16:00:00'),(59,7,40,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','','','37,54','2018-08-03 10:43:35','1999-12-31 16:00:00'),(60,7,40,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','','','38,54','2018-08-03 10:43:35','1999-12-31 16:00:00'),(61,7,40,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','','','39,54','2018-08-03 10:43:35','1999-12-31 16:00:00'),(62,7,40,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','','','40,54','2018-08-03 10:43:35','1999-12-31 16:00:00'),(63,7,40,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','','','41,54','2018-08-03 10:43:35','1999-12-31 16:00:00'),(64,7,40,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','','','42,54','2018-08-03 10:43:35','1999-12-31 16:00:00'),(65,7,40,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','','','43,54','2018-08-03 10:43:35','1999-12-31 16:00:00'),(66,7,40,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','','','44,54','2018-08-03 10:43:35','1999-12-31 16:00:00'),(67,7,40,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','','','45,54','2018-08-03 10:43:35','1999-12-31 16:00:00'),(68,7,40,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','','','46,54','2018-08-03 10:43:35','1999-12-31 16:00:00'),(69,7,40,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','','','47,54','2018-08-03 10:43:35','1999-12-31 16:00:00'),(70,7,40,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','','','48,54','2018-08-03 10:43:35','1999-12-31 16:00:00'),(71,7,40,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','','','49,54','2018-08-03 10:43:35','1999-12-31 16:00:00'),(72,7,40,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','','','50,54','2018-08-03 10:43:35','1999-12-31 16:00:00'),(73,7,40,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','','','51,54','2018-08-03 10:43:35','1999-12-31 16:00:00'),(74,7,40,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','','','52,54','2018-08-03 10:43:35','1999-12-31 16:00:00'),(75,7,40,1,10.00,5.50,10.00,10.00,10.00,0.00,'瓶','\0','','53,56','2018-08-03 10:46:56','2018-08-08 05:59:33'),(76,7,40,1,90.00,65.00,80.00,10.00,10.00,0.00,'件','\0','','54,56','2018-08-03 10:46:56','2018-08-08 05:59:33'),(77,7,40,1,10.00,5.50,10.00,10.00,10.00,0.00,'瓶','\0','','53,57','2018-08-03 10:48:33','2018-08-08 05:59:33'),(78,7,40,1,90.00,65.00,80.00,10.00,10.00,0.00,'件','\0','','54,57','2018-08-03 10:48:33','2018-08-08 05:59:33'),(79,7,40,1,10.00,6.25,10.00,10.00,10.00,0.00,'瓶','\0','','53,58','2018-08-03 10:48:40','2018-08-08 05:59:33'),(80,7,40,1,90.00,75.00,90.00,10.00,10.00,0.00,'件','\0','','54,58','2018-08-03 10:48:40','2018-08-08 05:59:33'),(81,7,40,1,10.00,5.50,10.00,10.00,10.00,0.00,'瓶','\0','','53,59','2018-08-03 10:48:48','2018-08-08 05:59:33'),(82,7,40,1,90.00,65.00,80.00,10.00,10.00,0.00,'件','\0','','54,59','2018-08-03 10:48:48','2018-08-08 05:59:33'),(83,7,40,1,10.00,5.50,10.00,10.00,10.00,0.00,'瓶','\0','','53,60','2018-08-03 10:48:59','2018-08-08 05:59:33'),(84,7,40,1,90.00,65.00,80.00,10.00,10.00,0.00,'件','\0','','54,60','2018-08-03 10:48:59','2018-08-08 05:59:33'),(85,7,40,1,10.00,5.50,10.00,10.00,10.00,0.00,'瓶','\0','','53,61','2018-08-03 10:49:08','2018-08-08 05:59:33'),(86,7,40,1,90.00,65.00,80.00,10.00,10.00,0.00,'件','\0','','54,61','2018-08-03 10:49:08','2018-08-08 05:59:33'),(87,7,40,1,10.00,5.50,10.00,10.00,10.00,0.00,'瓶','\0','','53,62','2018-08-03 10:49:16','2018-08-08 05:59:33'),(88,7,40,1,90.00,65.00,80.00,10.00,10.00,0.00,'件','\0','','54,62','2018-08-03 10:49:16','2018-08-08 05:59:33'),(89,7,40,1,10.00,5.50,10.00,10.00,10.00,0.00,'瓶','\0','','53,63','2018-08-03 10:49:22','2018-08-08 05:59:33'),(90,7,40,1,90.00,65.00,80.00,10.00,10.00,0.00,'件','\0','','54,63','2018-08-03 10:49:22','2018-08-08 05:59:33'),(91,7,40,1,10.00,5.50,10.00,10.00,10.00,0.00,'瓶','\0','','53,64','2018-08-03 10:49:31','2018-08-08 05:59:33'),(92,7,40,1,90.00,65.00,80.00,10.00,10.00,0.00,'件','\0','','54,64','2018-08-03 10:49:31','2018-08-08 05:59:33'),(93,7,40,1,10.00,5.50,10.00,10.00,10.00,0.00,'瓶','\0','','53,65','2018-08-03 10:49:39','2018-08-08 05:59:33'),(94,7,40,1,90.00,65.00,80.00,10.00,10.00,0.00,'件','\0','','54,65','2018-08-03 10:49:39','2018-08-08 05:59:33'),(95,7,40,1,10.00,5.50,10.00,10.00,10.00,0.00,'瓶','\0','','53,66','2018-08-03 10:49:45','2018-08-08 05:59:33'),(96,7,40,1,90.00,65.00,80.00,10.00,10.00,0.00,'件','\0','','54,66','2018-08-03 10:49:45','2018-08-08 05:59:33'),(97,7,40,1,10.00,5.50,10.00,10.00,10.00,0.00,'瓶','\0','','53,67','2018-08-03 10:49:50','2018-08-08 05:59:33'),(98,7,40,1,90.00,65.00,80.00,10.00,10.00,0.00,'件','\0','','54,67','2018-08-03 10:49:50','2018-08-08 05:59:33'),(99,7,40,1,10.00,5.50,10.00,10.00,10.00,0.00,'瓶','\0','','53,68','2018-08-03 10:49:55','2018-08-08 05:59:33'),(100,7,40,1,90.00,65.00,80.00,10.00,10.00,0.00,'件','\0','','54,68','2018-08-03 10:49:55','2018-08-08 05:59:33'),(101,7,40,1,10.00,5.50,10.00,10.00,10.00,0.00,'瓶','\0','','53,69','2018-08-03 10:50:01','2018-08-08 05:59:33'),(102,7,40,1,90.00,65.00,80.00,10.00,10.00,0.00,'件','\0','','54,69','2018-08-03 10:50:01','2018-08-08 05:59:33'),(103,7,40,1,10.00,5.50,10.00,10.00,10.00,0.00,'瓶','\0','','53,70','2018-08-03 10:50:22','2018-08-08 05:59:33'),(104,7,40,1,90.00,65.00,80.00,10.00,10.00,0.00,'件','\0','','54,70','2018-08-03 10:50:22','2018-08-08 05:59:33'),(105,7,40,1,10.00,5.50,10.00,10.00,10.00,0.00,'瓶','\0','','53,71','2018-08-03 10:50:37','2018-08-08 05:59:33'),(106,7,40,1,90.00,65.00,80.00,10.00,10.00,0.00,'件','\0','','54,71','2018-08-03 10:50:37','2018-08-08 05:59:33'),(107,7,40,1,10.00,5.50,10.00,10.00,10.00,0.00,'瓶','\0','','53,72','2018-08-03 10:50:45','2018-08-08 05:59:33'),(108,7,40,1,90.00,65.00,80.00,10.00,10.00,0.00,'件','\0','','54,72','2018-08-03 10:50:45','2018-08-08 05:59:33'),(109,7,40,1,10.00,5.50,10.00,10.00,10.00,0.00,'瓶','\0','','53,73','2018-08-03 10:50:58','2018-08-08 05:59:33'),(110,7,40,1,90.00,65.00,80.00,10.00,10.00,0.00,'件','\0','','54,73','2018-08-03 10:50:58','2018-08-08 05:59:33'),(111,7,40,1,10.00,5.50,10.00,10.00,10.00,0.00,'瓶','\0','','53,74','2018-08-03 10:51:39','2018-08-08 05:59:33'),(112,7,40,1,90.00,65.00,80.00,10.00,10.00,0.00,'件','\0','','54,74','2018-08-03 10:51:39','2018-08-08 05:59:33'),(113,7,40,1,10.00,7.50,10.00,10.00,10.00,0.00,'瓶','\0','','53,75','2018-08-03 10:51:50','2018-08-08 05:59:33'),(114,7,40,1,100.00,90.00,100.00,10.00,10.00,0.00,'件','\0','','54,75','2018-08-03 10:51:50','2018-08-08 05:59:33'),(115,7,40,1,10.00,5.50,10.00,10.00,10.00,0.00,'瓶','\0','','53,76','2018-08-03 10:52:04','2018-08-08 05:59:33'),(116,7,40,1,90.00,65.00,80.00,10.00,10.00,0.00,'件','\0','','54,76','2018-08-03 10:52:04','2018-08-08 05:59:33'),(117,7,40,1,10.00,7.00,10.00,10.00,10.00,0.00,'瓶','\0','','53,77','2018-08-03 10:52:22','2018-08-08 05:59:33'),(118,7,40,1,90.00,75.00,90.00,10.00,10.00,0.00,'瓶','\0','','54,77','2018-08-03 10:52:22','2018-08-08 05:59:33'),(119,7,45,1,150.00,90.00,120.00,10.00,10.00,0.00,'件','\0','','78,80','2018-08-03 11:08:12','2018-08-03 12:48:05'),(120,7,45,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','','','79','2018-08-03 11:08:12','1999-12-31 16:00:00'),(121,7,45,1,12.00,7.50,10.00,10.00,10.00,0.00,'瓶','\0','','23,81','2018-08-03 11:09:34','2018-08-03 12:48:05'),(122,7,45,1,150.00,90.00,120.00,10.00,10.00,0.00,'件','\0','','78,81','2018-08-03 11:09:34','2018-08-03 12:48:05'),(123,7,34,1,300.00,120.00,200.00,10.00,10.00,0.00,'件','\0','\0','82,83','2018-08-03 11:10:11','2018-08-03 12:44:05'),(124,7,41,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','','','84,85','2018-08-03 13:01:24','1999-12-31 16:00:00'),(125,7,41,1,1.50,0.60,1.50,10.00,10.00,0.00,'把','\0','','19,86','2018-08-03 13:01:55','2018-08-03 13:08:30'),(126,7,41,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','','','84,86','2018-08-03 13:01:55','1999-12-31 16:00:00'),(127,7,41,1,2.00,0.80,2.00,10.00,10.00,0.00,'把','\0','','19,87','2018-08-03 13:02:01','2018-08-03 13:08:30'),(128,7,41,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','','','84,87','2018-08-03 13:02:01','1999-12-31 16:00:00'),(129,7,41,1,3.00,1.20,3.00,10.00,10.00,0.00,'把','\0','','19,88','2018-08-03 13:02:08','2018-08-03 13:08:30'),(130,7,41,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','','','84,88','2018-08-03 13:02:08','1999-12-31 16:00:00'),(131,7,41,1,3.50,1.60,3.50,10.00,10.00,0.00,'把','\0','','19,89','2018-08-03 13:02:16','2018-08-03 13:08:30'),(132,7,41,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','','','84,89','2018-08-03 13:02:16','1999-12-31 16:00:00'),(133,7,41,1,4.00,2.00,4.00,10.00,10.00,0.00,'把','\0','','19,90','2018-08-03 13:02:23','2018-08-03 13:08:30'),(134,7,41,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','','','84,90','2018-08-03 13:02:23','1999-12-31 16:00:00'),(135,7,41,1,4.50,2.40,4.50,10.00,10.00,0.00,'把','\0','','19,91','2018-08-03 13:02:31','2018-08-03 13:08:30'),(136,7,41,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','','','84,91','2018-08-03 13:02:31','1999-12-31 16:00:00'),(137,7,41,1,5.00,3.20,5.00,10.00,10.00,0.00,'把','\0','','19,92','2018-08-03 13:02:38','2018-08-03 13:08:30'),(138,7,41,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','','','84,92','2018-08-03 13:02:38','1999-12-31 16:00:00'),(139,7,43,1,480.00,300.00,480.00,10.00,10.00,0.00,'件','\0','','93','2018-08-03 13:11:37','2018-08-03 13:13:30'),(140,7,30,1,250.00,10.00,150.00,10.00,10.00,0.00,'件','\0','','94','2018-08-03 13:15:29','2018-08-03 13:17:33'),(141,7,39,1,180.00,145.00,160.00,10.00,10.00,0.00,'7kg/桶','\0','','17,96','2018-08-03 13:19:23','2018-08-03 13:21:05'),(142,7,39,1,180.00,145.00,160.00,10.00,10.00,0.00,'7kg/桶','\0','','17,97','2018-08-03 13:19:34','2018-08-03 13:21:05'),(143,7,35,1,360.00,320.00,340.00,10.00,10.00,0.00,'组','\0','','99,100','2018-08-03 13:29:23','2018-08-03 13:30:31'),(144,7,35,1,360.00,320.00,340.00,10.00,10.00,0.00,'组','\0','','99,101','2018-08-03 13:29:43','2018-08-03 13:30:31'),(145,7,36,1,220.00,180.00,200.00,10.00,10.00,0.00,'20L/桶','\0','','14,103','2018-08-03 13:32:07','2018-08-03 13:33:40'),(146,7,36,1,220.00,180.00,200.00,10.00,10.00,0.00,'20L/桶','\0','','14,104','2018-08-03 13:32:16','2018-08-03 13:33:40'),(147,7,36,1,220.00,180.00,200.00,10.00,10.00,0.00,'20L/桶','\0','','14,105','2018-08-03 13:32:22','2018-08-03 13:33:40'),(148,7,36,1,220.00,180.00,200.00,10.00,10.00,0.00,'20L/桶','\0','','14,106','2018-08-03 13:32:27','2018-08-03 13:33:40'),(149,7,36,1,220.00,180.00,200.00,10.00,10.00,0.00,'20L/桶','\0','','14,107','2018-08-03 13:32:35','2018-08-03 13:33:40'),(150,7,36,1,220.00,180.00,200.00,10.00,10.00,0.00,'20L/桶','\0','','14,108','2018-08-03 13:32:41','2018-08-03 13:33:40'),(151,7,36,1,220.00,180.00,200.00,10.00,10.00,0.00,'20L/桶','\0','','14,109','2018-08-03 13:32:48','2018-08-03 13:33:40'),(152,7,47,1,0.10,0.10,0.10,10.00,9.80,0.00,'个','\0','','110','2018-08-03 15:19:58','2018-08-12 04:08:05'),(153,7,48,1,45.00,35.00,35.00,10.00,9.80,0.00,'袋','\0','','111,112','2018-08-05 02:35:21','2018-08-05 02:54:02'),(154,7,48,1,55.00,45.00,45.00,10.00,10.00,0.00,'袋','\0','','111,113','2018-08-05 02:53:17','2018-08-05 02:54:02'),(155,7,49,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','','','114,116','2018-08-05 02:57:00','1999-12-31 16:00:00'),(156,7,49,1,0.00,0.00,0.00,10.00,10.00,0.00,'桶','\0','\0','115,116','2018-08-05 02:57:38','2018-08-05 03:05:23'),(157,7,49,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','','','114,117','2018-08-05 02:58:41','1999-12-31 16:00:00'),(158,7,49,1,260.00,240.00,260.00,10.00,10.00,0.00,'桶','\0','','115,117','2018-08-05 02:58:41','2018-08-05 03:05:23'),(159,7,49,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','','','114,118','2018-08-05 02:58:48','1999-12-31 16:00:00'),(160,7,49,1,260.00,240.00,260.00,10.00,10.00,0.00,'桶','\0','','115,118','2018-08-05 02:58:48','2018-08-05 03:05:23'),(161,7,49,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','','','114,119','2018-08-05 02:58:56','1999-12-31 16:00:00'),(162,7,49,1,260.00,240.00,260.00,10.00,10.00,0.00,'桶','\0','','115,119','2018-08-05 02:58:56','2018-08-05 03:05:23'),(163,7,49,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','','','114,120','2018-08-05 02:59:16','1999-12-31 16:00:00'),(164,7,49,1,260.00,240.00,260.00,10.00,10.00,0.00,'桶','\0','','115,120','2018-08-05 02:59:16','2018-08-05 03:05:23'),(165,7,49,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','','','114,121','2018-08-05 02:59:41','1999-12-31 16:00:00'),(166,7,49,1,260.00,240.00,260.00,10.00,10.00,0.00,'桶','\0','','115,121','2018-08-05 02:59:41','2018-08-05 03:05:23'),(167,7,49,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','','','114,122','2018-08-05 02:59:57','1999-12-31 16:00:00'),(168,7,49,1,260.00,240.00,260.00,10.00,10.00,0.00,'桶','\0','','115,122','2018-08-05 02:59:57','2018-08-05 03:05:23'),(169,7,49,1,320.00,300.00,300.00,10.00,10.00,0.00,'桶','\0','','116,123','2018-08-05 03:00:28','2018-08-05 03:05:23'),(170,7,49,1,0.00,0.00,0.00,10.00,10.00,0.00,'桶','\0','\0','117,123','2018-08-05 03:00:28','2018-08-05 03:05:23'),(171,7,49,1,0.00,0.00,0.00,10.00,10.00,0.00,'桶','\0','\0','118,123','2018-08-05 03:00:28','2018-08-05 03:05:23'),(172,7,49,1,0.00,0.00,0.00,10.00,10.00,0.00,'桶','\0','\0','119,123','2018-08-05 03:00:28','2018-08-05 03:05:23'),(173,7,49,1,0.00,0.00,0.00,10.00,10.00,0.00,'桶','\0','\0','120,123','2018-08-05 03:00:28','2018-08-05 03:05:23'),(174,7,49,1,0.00,0.00,0.00,10.00,10.00,0.00,'桶','\0','\0','121,123','2018-08-05 03:00:28','2018-08-05 03:05:23'),(175,7,49,1,0.00,0.00,0.00,10.00,10.00,0.00,'桶','\0','\0','122,123','2018-08-05 03:00:28','2018-08-05 03:05:23'),(176,7,49,1,260.00,240.00,260.00,10.00,10.00,0.00,'桶','\0','','115,124','2018-08-05 03:00:48','2018-08-05 03:05:23'),(177,7,49,1,0.00,0.00,0.00,10.00,10.00,0.00,'桶','\0','\0','123,124','2018-08-05 03:00:48','2018-08-05 03:05:23'),(178,7,49,1,260.00,240.00,260.00,10.00,10.00,0.00,'桶','\0','','115,125','2018-08-05 03:00:54','2018-08-05 03:05:23'),(179,7,49,1,0.00,0.00,0.00,10.00,10.00,0.00,'桶','\0','\0','123,125','2018-08-05 03:00:54','2018-08-05 03:05:23'),(180,7,42,1,60.00,30.00,45.00,10.00,10.00,0.00,'盒','\0','','126,127','2018-08-05 03:15:44','2018-08-05 03:24:55'),(181,7,42,1,2.50,1.50,2.00,10.00,10.00,0.00,'把','\0','','20,128','2018-08-05 03:16:31','2018-08-05 03:24:55'),(182,7,42,1,50.00,30.00,40.00,10.00,10.00,0.00,'盒','\0','','126,128','2018-08-05 03:16:31','2018-08-05 03:24:55'),(183,7,42,1,3.00,2.00,2.50,10.00,10.00,0.00,'把','\0','','20,129','2018-08-05 03:16:39','2018-08-05 03:24:55'),(184,7,42,1,60.00,40.00,50.00,10.00,10.00,0.00,'盒','\0','','126,129','2018-08-05 03:16:39','2018-08-05 03:24:55'),(185,7,42,1,4.00,2.50,3.50,10.00,10.00,0.00,'把','\0','','20,130','2018-08-05 03:16:47','2018-08-05 03:24:55'),(186,7,42,1,80.00,50.00,70.00,10.00,10.00,0.00,'盒','\0','','126,130','2018-08-05 03:16:47','2018-08-05 03:24:55'),(187,7,42,1,6.00,4.00,5.00,10.00,10.00,0.00,'把','\0','','20,131','2018-08-05 03:16:54','2018-08-05 03:24:55'),(188,7,42,1,0.00,0.00,0.00,10.00,10.00,0.00,'盒','\0','\0','126,131','2018-08-05 03:16:54','2018-08-05 03:24:55'),(189,7,46,1,360.00,192.00,312.00,10.00,10.00,0.00,'件','\0','','132','2018-08-05 03:27:03','2018-08-05 03:28:33'),(190,7,50,1,60.00,40.00,50.00,10.00,10.00,0.00,'桶','\0','','134','2018-08-05 04:30:33','2018-08-05 05:19:40'),(191,7,50,1,240.00,160.00,200.00,10.00,10.00,0.00,'件','\0','','135','2018-08-05 04:31:08','2018-08-05 05:19:40'),(192,7,51,1,5.00,3.00,4.00,10.00,10.00,0.00,'袋','\0','','136,138','2018-08-05 07:04:06','2018-08-05 07:08:53'),(193,7,51,1,20.00,12.00,16.00,10.00,10.00,0.00,'袋','\0','','137,138','2018-08-05 07:04:22','2018-08-05 07:08:54'),(194,7,51,1,100.00,60.00,80.00,10.00,10.00,0.00,'件','\0','','136,139','2018-08-05 07:05:38','2018-08-05 07:08:54'),(195,7,51,1,100.00,60.00,80.00,10.00,10.00,0.00,'件','\0','','137,139','2018-08-05 07:05:38','2018-08-05 07:08:54'),(196,7,52,1,37.50,32.50,35.00,10.00,10.00,0.00,'桶','\0','\0','140','2018-08-05 07:57:20','2018-08-05 07:58:34'),(197,7,52,1,150.00,130.00,140.00,10.00,10.00,0.00,'件','\0','\0','141','2018-08-05 07:57:25','2018-08-05 07:58:34'),(198,7,53,1,10.00,7.50,9.00,10.00,10.00,0.00,'瓶','\0','','142,144','2018-08-06 13:32:55','2018-08-06 13:37:15'),(199,7,53,1,240.00,180.00,216.00,10.00,10.00,0.00,'件','\0','','143,144','2018-08-06 13:33:03','2018-08-06 13:37:15'),(200,7,53,1,10.00,7.50,9.00,10.00,10.00,0.00,'瓶','\0','','142,145','2018-08-06 13:34:09','2018-08-06 13:37:15'),(201,7,53,1,120.00,90.00,108.00,10.00,10.00,0.00,'件','\0','','143,145','2018-08-06 13:34:09','2018-08-06 13:37:15'),(202,7,54,1,35.00,25.00,30.00,10.00,10.00,0.00,'瓶','\0','','146,148','2018-08-06 13:57:43','2018-08-06 14:01:25'),(203,7,54,1,420.00,300.00,360.00,10.00,10.00,0.00,'件','\0','','147,148','2018-08-06 13:57:48','2018-08-06 14:01:25'),(204,7,54,1,10.00,7.50,9.00,10.00,10.00,0.00,'瓶','\0','','146,149','2018-08-06 13:59:23','2018-08-06 14:01:25'),(205,7,54,1,240.00,180.00,216.00,10.00,10.00,0.00,'件','\0','','147,149','2018-08-06 13:59:23','2018-08-06 14:01:25'),(206,7,55,1,12.00,10.00,12.00,10.00,10.00,0.00,'瓶','\0','','150','2018-08-06 14:16:05','2018-08-06 14:18:06'),(207,7,55,1,144.00,120.00,144.00,10.00,10.00,0.00,'件','\0','','151','2018-08-06 14:16:10','2018-08-06 14:18:06'),(208,7,57,1,2.00,1.70,2.00,10.00,10.00,0.00,'支','\0','','152,154','2018-08-08 07:49:28','2018-08-08 07:52:03'),(209,7,57,1,240.00,204.00,240.00,10.00,10.00,0.00,'件','\0','','153,154','2018-08-08 07:49:33','2018-08-08 07:52:03'),(210,7,57,1,5.00,3.50,5.00,10.00,10.00,0.00,'支','\0','','152,155','2018-08-08 07:50:01','2018-08-08 07:52:03'),(211,7,57,1,300.00,210.00,300.00,10.00,10.00,0.00,'件','\0','','153,155','2018-08-08 07:50:01','2018-08-08 07:52:03'),(212,7,58,1,8.00,4.50,6.00,10.00,10.00,0.00,'个','\0','\0','156','2018-08-08 09:01:57','2018-08-08 09:03:10'),(213,7,58,1,480.00,270.00,360.00,10.00,10.00,0.00,'件','\0','\0','157','2018-08-08 09:01:57','2018-08-08 09:03:10'),(214,7,60,1,1.00,0.90,1.00,10.00,10.00,0.00,'张','\0','','158,160','2018-08-08 09:16:42','2018-08-08 10:24:47'),(215,7,60,1,100.00,90.00,100.00,10.00,10.00,0.00,'拖','\0','','159,160','2018-08-08 09:17:08','2018-08-08 10:24:47'),(216,7,60,1,1.00,0.90,1.00,10.00,10.00,0.00,'张','\0','','158,161','2018-08-08 09:17:48','2018-08-08 10:24:47'),(217,7,60,1,100.00,90.00,100.00,10.00,10.00,0.00,'拖','\0','','159,161','2018-08-08 09:17:48','2018-08-08 10:24:47'),(218,7,60,1,1.00,0.90,1.00,10.00,10.00,0.00,'张','\0','','158,162','2018-08-08 09:17:56','2018-08-08 10:24:47'),(219,7,60,1,100.00,90.00,100.00,10.00,10.00,0.00,'拖','\0','','159,162','2018-08-08 09:17:56','2018-08-08 10:24:47'),(220,7,60,1,1.00,0.90,1.00,10.00,10.00,0.00,'张','\0','','158,163','2018-08-08 09:18:04','2018-08-08 10:24:47'),(221,7,60,1,100.00,90.00,100.00,10.00,10.00,0.00,'拖','\0','','159,163','2018-08-08 09:18:04','2018-08-08 10:24:47'),(222,7,60,1,1.00,0.90,1.00,10.00,10.00,0.00,'张','\0','','158,164','2018-08-08 09:18:14','2018-08-08 10:24:47'),(223,7,60,1,100.00,90.00,100.00,10.00,10.00,0.00,'拖','\0','','159,164','2018-08-08 09:18:14','2018-08-08 10:24:47'),(224,7,60,1,1.00,0.90,1.00,10.00,10.00,0.00,'张','\0','','158,165','2018-08-08 09:18:43','2018-08-08 10:24:47'),(225,7,60,1,100.00,90.00,100.00,10.00,10.00,0.00,'拖','\0','','159,165','2018-08-08 09:18:43','2018-08-08 10:24:47'),(226,7,60,1,1.00,0.90,1.00,10.00,10.00,0.00,'张','\0','','158,166','2018-08-08 09:18:53','2018-08-08 10:24:47'),(227,7,60,1,100.00,90.00,100.00,10.00,10.00,0.00,'拖','\0','','159,166','2018-08-08 09:18:53','2018-08-08 10:24:47'),(228,7,60,1,1.00,0.90,1.00,10.00,10.00,0.00,'张','\0','','158,167','2018-08-08 09:19:34','2018-08-08 10:24:47'),(229,7,60,1,100.00,90.00,100.00,10.00,10.00,0.00,'拖','\0','','159,167','2018-08-08 09:19:34','2018-08-08 10:24:47'),(230,7,60,1,1.00,0.90,1.00,10.00,10.00,0.00,'张','\0','','158,168','2018-08-08 09:19:42','2018-08-08 10:24:47'),(231,7,60,1,100.00,90.00,100.00,10.00,10.00,0.00,'拖','\0','','159,168','2018-08-08 09:19:42','2018-08-08 10:24:47'),(232,7,60,1,1.00,0.90,1.00,10.00,10.00,0.00,'张','\0','','158,169','2018-08-08 09:20:01','2018-08-08 10:24:47'),(233,7,60,1,100.00,90.00,100.00,10.00,10.00,0.00,'拖','\0','','159,169','2018-08-08 09:20:01','2018-08-08 10:24:47'),(234,7,61,1,0.60,0.50,0.50,10.00,10.00,0.00,'张','\0','','170,194','2018-08-08 09:22:33','2018-08-08 10:22:45'),(235,7,61,1,60.00,50.00,50.00,10.00,10.00,0.00,'拖','\0','','171,194','2018-08-08 09:22:43','2018-08-08 10:22:45'),(236,7,59,1,1.00,0.70,0.80,10.00,10.00,0.00,'张','\0','','172,174','2018-08-08 10:03:31','2018-08-08 10:25:16'),(237,7,59,1,100.00,70.00,80.00,10.00,10.00,0.00,'盒','\0','','173,174','2018-08-08 10:03:36','2018-08-08 10:25:15'),(238,7,59,1,1.00,0.70,0.80,10.00,10.00,0.00,'张','\0','','172,175','2018-08-08 10:05:15','2018-08-08 10:25:16'),(239,7,59,1,100.00,70.00,80.00,10.00,10.00,0.00,'盒','\0','','173,175','2018-08-08 10:05:15','2018-08-08 10:25:16'),(240,7,59,1,1.00,0.70,0.80,10.00,10.00,0.00,'张','\0','','172,176','2018-08-08 10:05:23','2018-08-08 10:25:16'),(241,7,59,1,100.00,70.00,80.00,10.00,10.00,0.00,'盒','\0','','173,176','2018-08-08 10:05:23','2018-08-08 10:25:16'),(242,7,59,1,1.00,0.70,0.80,10.00,10.00,0.00,'张','\0','','172,177','2018-08-08 10:05:34','2018-08-08 10:25:16'),(243,7,59,1,100.00,70.00,80.00,10.00,10.00,0.00,'盒','\0','','173,177','2018-08-08 10:05:34','2018-08-08 10:25:16'),(244,7,59,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','','','172,178','2018-08-08 10:05:34','1999-12-31 16:00:00'),(245,7,59,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','','','173,178','2018-08-08 10:05:34','1999-12-31 16:00:00'),(246,7,59,1,1.00,0.70,0.80,10.00,10.00,0.00,'张','\0','','172,179','2018-08-08 10:05:52','2018-08-08 10:25:16'),(247,7,59,1,100.00,70.00,80.00,10.00,10.00,0.00,'盒','\0','','173,179','2018-08-08 10:05:52','2018-08-08 10:25:16'),(248,7,59,1,1.00,0.90,0.80,10.00,10.00,0.00,'张','\0','','172,180','2018-08-08 10:09:49','2018-08-08 10:25:15'),(249,7,59,1,100.00,90.00,80.00,10.00,10.00,0.00,'盒','\0','','173,180','2018-08-08 10:09:49','2018-08-08 10:25:15'),(250,7,59,1,1.00,0.90,0.80,10.00,10.00,0.00,'张','\0','','172,181','2018-08-08 10:10:10','2018-08-08 10:25:15'),(251,7,59,1,100.00,90.00,80.00,10.00,10.00,0.00,'盒','\0','','173,181','2018-08-08 10:10:10','2018-08-08 10:25:15'),(252,7,59,1,1.00,0.90,0.80,10.00,10.00,0.00,'张','\0','','172,182','2018-08-08 10:10:18','2018-08-08 10:25:15'),(253,7,59,1,100.00,90.00,80.00,10.00,10.00,0.00,'盒','\0','','173,182','2018-08-08 10:10:18','2018-08-08 10:25:15'),(254,7,59,1,1.00,0.90,0.80,10.00,10.00,0.00,'张','\0','','172,183','2018-08-08 10:10:29','2018-08-08 10:25:15'),(255,7,59,1,100.00,90.00,80.00,10.00,10.00,0.00,'盒','\0','','173,183','2018-08-08 10:10:29','2018-08-08 10:25:15'),(256,7,59,1,1.00,0.90,0.80,10.00,10.00,0.00,'张','\0','','172,184','2018-08-08 10:10:38','2018-08-08 10:25:15'),(257,7,59,1,100.00,90.00,80.00,10.00,10.00,0.00,'盒','\0','','173,184','2018-08-08 10:10:38','2018-08-08 10:25:15'),(258,7,59,1,1.00,0.90,0.80,10.00,10.00,0.00,'张','\0','','172,185','2018-08-08 10:10:47','2018-08-08 10:25:15'),(259,7,59,1,100.00,90.00,80.00,10.00,10.00,0.00,'盒','\0','','173,185','2018-08-08 10:10:47','2018-08-08 10:25:15'),(260,7,59,1,1.20,1.00,1.10,10.00,10.00,0.00,'张','\0','','172,186','2018-08-08 10:14:32','2018-08-08 10:25:15'),(261,7,59,1,120.00,100.00,110.00,10.00,10.00,0.00,'盒','\0','','173,186','2018-08-08 10:14:32','2018-08-08 10:25:15'),(262,7,59,1,1.20,1.00,1.10,10.00,10.00,0.00,'张','\0','','172,187','2018-08-08 10:14:50','2018-08-08 10:25:15'),(263,7,59,1,120.00,100.00,110.00,10.00,10.00,0.00,'盒','\0','','173,187','2018-08-08 10:14:50','2018-08-08 10:25:15'),(264,7,59,1,1.20,1.00,1.10,10.00,10.00,0.00,'张','\0','','172,188','2018-08-08 10:14:58','2018-08-08 10:25:15'),(265,7,59,1,120.00,100.00,110.00,10.00,10.00,0.00,'盒','\0','','173,188','2018-08-08 10:14:58','2018-08-08 10:25:15'),(266,7,59,1,1.20,1.00,1.10,10.00,10.00,0.00,'张','\0','','172,189','2018-08-08 10:15:06','2018-08-08 10:25:15'),(267,7,59,1,120.00,100.00,110.00,10.00,10.00,0.00,'盒','\0','','173,189','2018-08-08 10:15:06','2018-08-08 10:25:15'),(268,7,59,1,1.20,1.00,1.10,10.00,10.00,0.00,'张','\0','','172,190','2018-08-08 10:15:14','2018-08-08 10:25:16'),(269,7,59,1,120.00,100.00,110.00,10.00,10.00,0.00,'盒','\0','','173,190','2018-08-08 10:15:14','2018-08-08 10:25:15'),(270,7,59,1,1.20,1.00,1.10,10.00,10.00,0.00,'张','\0','','172,191','2018-08-08 10:15:30','2018-08-08 10:25:16'),(271,7,59,1,120.00,100.00,110.00,10.00,10.00,0.00,'盒','\0','','173,191','2018-08-08 10:15:30','2018-08-08 10:25:15'),(272,7,59,1,1.20,1.00,1.10,10.00,10.00,0.00,'张','\0','','172,192','2018-08-08 10:15:30','2018-08-08 10:25:16'),(273,7,59,1,120.00,100.00,110.00,10.00,10.00,0.00,'盒','\0','','173,192','2018-08-08 10:15:30','2018-08-08 10:25:15'),(274,7,59,1,1.20,1.00,1.10,10.00,10.00,0.00,'张','\0','','172,193','2018-08-08 10:16:02','2018-08-08 10:25:16'),(275,7,59,1,120.00,100.00,110.00,10.00,10.00,0.00,'盒','\0','','173,193','2018-08-08 10:16:02','2018-08-08 10:25:15'),(276,7,61,1,0.60,0.50,0.50,10.00,10.00,0.00,'张','\0','','170,195','2018-08-08 10:19:41','2018-08-08 10:22:45'),(277,7,61,1,60.00,50.00,50.00,10.00,10.00,0.00,'拖','\0','','171,195','2018-08-08 10:19:41','2018-08-08 10:22:45'),(278,7,61,1,0.60,0.50,0.50,10.00,10.00,0.00,'张','\0','','170,196','2018-08-08 10:19:57','2018-08-08 10:22:46'),(279,7,61,1,60.00,50.00,50.00,10.00,10.00,0.00,'拖','\0','','171,196','2018-08-08 10:19:57','2018-08-08 10:22:46'),(280,7,61,1,0.60,0.50,0.50,10.00,10.00,0.00,'张','\0','','170,197','2018-08-08 10:20:26','2018-08-08 10:22:46'),(281,7,61,1,30.00,25.00,25.00,10.00,10.00,0.00,'拖','\0','','171,197','2018-08-08 10:20:26','2018-08-08 10:22:46'),(282,7,63,1,50.00,45.00,50.00,10.00,10.00,0.00,'组','\0','','198,200','2018-08-14 13:12:07','2018-08-14 13:14:44'),(283,7,63,1,60.00,55.00,60.00,10.00,10.00,0.00,'组','\0','','199,200','2018-08-14 13:12:14','2018-08-14 13:14:44'),(284,7,63,1,300.00,270.00,300.00,10.00,10.00,0.00,'件','\0','','198,201','2018-08-14 13:12:56','2018-08-14 13:14:44'),(285,7,63,1,360.00,330.00,360.00,10.00,10.00,0.00,'件','\0','','199,201','2018-08-14 13:12:56','2018-08-14 13:14:44'),(286,7,64,1,8.00,6.50,8.00,10.00,10.00,0.00,'支','\0','','202','2018-08-14 14:31:46','2018-08-14 14:33:36'),(287,7,64,1,80.00,65.00,80.00,10.00,10.00,0.00,'盒','\0','','203','2018-08-14 14:32:03','2018-08-14 14:33:36'),(288,7,64,1,800.00,650.00,800.00,10.00,10.00,0.00,'件','\0','','204','2018-08-14 14:32:15','2018-08-14 14:33:36'),(289,7,64,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','','','205','2018-08-14 14:32:15','1999-12-31 16:00:00'),(290,7,65,1,10.00,9.17,10.00,10.00,10.00,0.00,'支','\0','','206,208,212','2018-08-14 15:01:00','2018-08-15 01:22:14'),(291,7,65,1,240.00,220.00,240.00,10.00,10.00,0.00,'件','\0','','207,208,212','2018-08-14 15:01:07','2018-08-15 01:22:14'),(292,7,65,1,10.00,9.17,10.00,10.00,10.00,0.00,'支','\0','','206,209,212','2018-08-14 15:01:42','2018-08-15 01:22:14'),(293,7,65,1,240.00,220.00,240.00,10.00,10.00,0.00,'件','\0','','207,209,212','2018-08-14 15:01:42','2018-08-15 01:22:14'),(294,7,65,1,11.00,10.00,11.00,10.00,10.00,0.00,'支','\0','','206,210,212','2018-08-14 15:01:42','2018-08-15 01:22:14'),(295,7,65,1,264.00,240.00,264.00,10.00,10.00,0.00,'件','\0','','207,210,212','2018-08-14 15:01:42','2018-08-15 01:22:14'),(296,7,65,1,0.00,0.00,0.00,10.00,10.00,0.00,'个','\0','\0','206,211,212','2018-08-14 15:01:56','2018-08-15 01:22:14'),(297,7,65,1,0.00,0.00,0.00,10.00,10.00,0.00,'个','\0','\0','207,211,212','2018-08-14 15:01:56','2018-08-15 01:22:14'),(298,7,65,1,15.00,13.00,15.00,10.00,10.00,0.00,'支','\0','','206,208,213','2018-08-14 15:02:59','2018-08-15 01:22:14'),(299,7,65,1,300.00,260.00,300.00,10.00,10.00,0.00,'件','\0','','207,208,213','2018-08-14 15:02:59','2018-08-15 01:22:14'),(300,7,65,1,15.00,13.00,15.00,10.00,10.00,0.00,'支','\0','','206,209,213','2018-08-14 15:02:59','2018-08-15 01:22:14'),(301,7,65,1,300.00,260.00,300.00,10.00,10.00,0.00,'件','\0','','207,209,213','2018-08-14 15:02:59','2018-08-15 01:22:14'),(302,7,65,1,16.00,14.00,16.00,10.00,10.00,0.00,'支','\0','','206,210,213','2018-08-14 15:02:59','2018-08-15 01:22:14'),(303,7,65,1,320.00,280.00,320.00,10.00,10.00,0.00,'件','\0','','207,210,213','2018-08-14 15:02:59','2018-08-15 01:22:14'),(304,7,65,1,0.00,0.00,0.00,10.00,10.00,0.00,'个','\0','\0','206,211,213','2018-08-14 15:02:59','2018-08-15 01:22:14'),(305,7,65,1,0.00,0.00,0.00,10.00,10.00,0.00,'个','\0','\0','207,211,213','2018-08-14 15:02:59','2018-08-15 01:22:14'),(306,7,65,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','','','206,208,214','2018-08-14 15:02:59','1999-12-31 16:00:00'),(307,7,65,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','','','207,208,214','2018-08-14 15:02:59','1999-12-31 16:00:00'),(308,7,65,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','','','206,209,214','2018-08-14 15:02:59','1999-12-31 16:00:00'),(309,7,65,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','','','207,209,214','2018-08-14 15:02:59','1999-12-31 16:00:00'),(310,7,65,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','','','206,210,214','2018-08-14 15:02:59','1999-12-31 16:00:00'),(311,7,65,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','','','207,210,214','2018-08-14 15:02:59','1999-12-31 16:00:00'),(312,7,65,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','','','206,211,214','2018-08-14 15:02:59','1999-12-31 16:00:00'),(313,7,65,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','','','207,211,214','2018-08-14 15:02:59','1999-12-31 16:00:00'),(314,7,66,1,318.00,258.00,288.00,10.00,10.00,0.00,'桶','\0','','215','2018-08-15 01:36:23','2018-08-15 01:37:24'),(315,7,68,1,358.00,300.00,320.00,10.00,10.00,0.00,'组','\0','','216','2018-08-18 06:11:51','2018-08-18 06:12:42'),(316,7,68,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','','','217','2018-08-18 06:11:51','1999-12-31 16:00:00'),(317,7,56,1,10.00,10.00,10.00,9.50,9.80,0.00,'个','\0','','218','2018-11-15 03:14:42','1999-12-31 16:00:00'),(318,7,62,1,10.00,10.00,10.00,9.50,9.80,0.00,'个','\0','','219','2018-11-15 03:14:42','1999-12-31 16:00:00'),(319,7,67,1,10.00,10.00,10.00,9.50,9.80,0.00,'个','\0','','220','2018-11-15 03:14:42','1999-12-31 16:00:00'),(320,7,69,1,9999999.00,9999999.00,9999999.00,10.00,10.00,0.00,'个','\0','','221','2018-11-29 05:58:01','2018-11-29 05:58:12'),(321,7,70,1,120.00,75.00,80.00,10.00,10.00,0.00,'个','\0','','222','2018-11-30 02:17:59','2018-11-30 02:18:26'),(322,7,71,1,100.00,65.00,70.00,10.00,10.00,0.00,'个','\0','','223','2018-11-30 02:49:30','2018-11-30 02:52:34'),(323,7,72,1,150.00,100.00,120.00,10.00,10.00,0.00,'个','\0','','224','2018-11-30 07:52:43','2018-11-30 07:52:58'),(324,7,73,1,200.00,168.00,180.00,10.00,10.00,0.00,'个','\0','','225','2018-11-30 08:23:03','2018-11-30 08:24:04'),(325,7,74,1,500.00,298.00,380.00,10.00,10.00,0.00,'个','\0','','226','2018-11-30 08:25:45','2018-11-30 08:26:12'),(326,7,75,1,250.00,168.00,180.00,10.00,10.00,0.00,'个','\0','','227','2018-11-30 08:28:30','2018-11-30 08:28:44'),(327,7,76,1,250.00,165.00,170.00,10.00,10.00,0.00,'个','\0','','228','2018-11-30 08:49:02','2018-11-30 08:49:15'),(328,7,78,1,160.00,120.00,130.00,10.00,10.00,0.00,'个','\0','','229','2018-11-30 11:07:55','2018-11-30 11:08:10'),(329,7,77,1,10.00,10.00,10.00,9.50,9.80,0.00,'个','\0','','230','2018-12-18 05:26:53','1999-12-31 16:00:00'),(330,7,79,1,10.00,10.00,10.00,9.50,9.80,0.00,'个','\0','','231','2018-12-18 05:26:53','1999-12-31 16:00:00'),(331,7,80,1,10.00,10.00,10.00,9.50,9.80,0.00,'个','\0','','232','2018-12-18 08:35:22','1999-12-31 16:00:00'),(332,7,81,1,10.00,10.00,10.00,9.50,9.80,0.00,'个','\0','','233','2018-12-18 08:35:22','1999-12-31 16:00:00'),(333,7,82,1,10.00,10.00,10.00,9.50,9.80,0.00,'个','\0','','234','2018-12-18 08:35:22','1999-12-31 16:00:00'),(334,7,83,1,10.00,10.00,10.00,9.50,9.80,0.00,'个','\0','','235','2018-12-18 08:35:22','1999-12-31 16:00:00'),(335,7,84,1,10.00,10.00,10.00,9.50,9.80,0.00,'个','\0','','236','2018-12-18 08:35:22','1999-12-31 16:00:00'),(336,7,85,1,10.00,10.00,10.00,9.50,9.80,0.00,'个','\0','','237','2018-12-18 08:35:22','1999-12-31 16:00:00'),(337,7,86,1,10.00,10.00,10.00,9.50,9.80,0.00,'个','\0','','238','2018-12-18 08:35:22','1999-12-31 16:00:00'),(338,7,87,1,10.00,10.00,10.00,9.50,9.80,0.00,'个','\0','','239','2018-12-18 08:35:22','1999-12-31 16:00:00'),(339,7,88,1,10.00,10.00,10.00,9.50,9.80,0.00,'个','\0','','240','2018-12-18 08:35:22','1999-12-31 16:00:00'),(340,7,89,1,10.00,10.00,10.00,9.50,9.80,0.00,'个','\0','','241','2018-12-18 08:35:22','1999-12-31 16:00:00'),(341,7,90,1,10.00,10.00,10.00,9.50,9.80,0.00,'个','\0','','242','2018-12-18 08:35:22','1999-12-31 16:00:00'),(342,7,91,1,10.00,10.00,10.00,9.50,9.80,0.00,'个','\0','','243','2018-12-18 08:35:22','1999-12-31 16:00:00'),(343,7,92,1,10.00,10.00,10.00,9.50,9.80,0.00,'个','\0','','244','2018-12-18 10:43:51','1999-12-31 16:00:00'),(344,7,93,1,10.00,10.00,10.00,9.50,9.80,0.00,'个','\0','','245','2018-12-18 10:43:51','1999-12-31 16:00:00'),(345,7,94,1,10.00,10.00,10.00,9.50,9.80,0.00,'个','\0','','246','2018-12-18 10:43:51','1999-12-31 16:00:00'),(346,7,95,1,10.00,10.00,10.00,9.50,9.80,0.00,'个','\0','','247','2018-12-18 14:33:27','1999-12-31 16:00:00'),(347,7,96,1,10.00,10.00,10.00,9.50,9.80,0.00,'个','\0','','248','2018-12-18 14:33:27','1999-12-31 16:00:00'),(348,7,97,1,10.00,10.00,10.00,9.50,9.80,0.00,'个','\0','','249','2018-12-18 14:33:27','1999-12-31 16:00:00'),(349,7,98,1,10.00,10.00,10.00,9.50,9.80,0.00,'个','\0','','250','2018-12-18 14:33:27','1999-12-31 16:00:00'),(350,7,99,1,10.00,10.00,10.00,9.50,9.80,0.00,'个','\0','','251','2018-12-18 14:33:27','1999-12-31 16:00:00'),(351,7,100,1,10.00,10.00,10.00,9.50,9.80,0.00,'个','\0','','252','2018-12-18 14:33:27','1999-12-31 16:00:00');
/*!40000 ALTER TABLE `itemprice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itempricegroup`
--

DROP TABLE IF EXISTS `itempricegroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `itempricegroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemId` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `zorder` int(11) DEFAULT '1',
  `isDel` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itempricegroup`
--

LOCK TABLES `itempricegroup` WRITE;
/*!40000 ALTER TABLE `itempricegroup` DISABLE KEYS */;
INSERT INTO `itempricegroup` VALUES (1,20,'默认',0,'\0'),(2,24,'默认',0,'\0'),(3,25,'默认',0,'\0'),(4,26,'重量',0,'\0'),(5,27,'默认',0,'\0'),(6,28,'默认',0,'\0'),(7,29,'默认',0,'\0'),(8,30,'规格',0,'\0'),(9,31,'默认',0,'\0'),(10,32,'重量',0,'\0'),(11,33,'默认',0,'\0'),(12,34,'规格',0,'\0'),(13,35,'重量',0,'\0'),(14,36,'规格',0,'\0'),(15,37,'默认',0,'\0'),(16,38,'规格',0,'\0'),(17,39,'重量',0,'\0'),(18,40,'颜色',0,''),(19,41,'规格',0,'\0'),(20,42,'规格',0,'\0'),(21,43,'规格',0,'\0'),(22,44,'重量',0,'\0'),(23,45,'规格',0,'\0'),(24,46,'规格',0,'\0'),(25,32,'尺寸',1,''),(26,38,'桶',1,''),(27,38,'桶',1,''),(28,38,'件',2,''),(29,40,'耐高温黑色',1,''),(30,40,'规格',1,'\0'),(31,40,'颜色',2,'\0'),(32,45,'类别',1,'\0'),(33,34,'颜色',1,'\0'),(34,41,'尺寸',1,'\0'),(35,39,'规格',1,'\0'),(36,35,'颜色',1,''),(37,35,'规格',2,'\0'),(38,36,'颜色',1,'\0'),(39,47,'默认',0,'\0'),(40,48,'重量',0,'\0'),(41,48,'规格',1,'\0'),(42,49,'重量',0,'\0'),(43,49,'颜色',1,'\0'),(44,42,'尺寸',1,'\0'),(45,50,'重量',0,'\0'),(46,50,'规格',1,'\0'),(47,51,'重量',0,'\0'),(48,51,'规格',1,'\0'),(49,52,'规格',0,'\0'),(50,53,'规格',0,'\0'),(51,53,'重量',1,'\0'),(52,54,'规格',0,'\0'),(53,54,'重量',1,'\0'),(54,55,'规格',0,'\0'),(55,55,'规格',0,'\0'),(56,57,'规格',0,'\0'),(57,57,'重量',1,'\0'),(58,58,'规格',0,'\0'),(59,60,'规格',0,'\0'),(60,60,'型号',1,'\0'),(61,61,'规格',0,'\0'),(62,61,'型号',1,'\0'),(63,59,'规格',0,'\0'),(64,59,'型号',1,'\0'),(65,63,'重量',0,'\0'),(66,63,'规格',1,'\0'),(67,64,'规格',0,'\0'),(68,64,'规格',0,''),(69,65,'规格',0,'\0'),(70,65,'颜色',1,'\0'),(71,65,'规格',2,'\0'),(72,66,'规格',0,'\0'),(73,68,'规格',0,'\0'),(74,56,'默认',0,'\0'),(75,62,'默认',0,'\0'),(76,67,'默认',0,'\0'),(77,69,'桶',1,'\0'),(78,70,'桶',1,'\0'),(79,71,'桶',1,'\0'),(80,72,'容量',1,'\0'),(81,73,'容量',1,'\0'),(82,74,'容量',1,'\0'),(83,75,'容量',1,'\0'),(84,76,'容量',1,'\0'),(85,78,'容量',1,'\0'),(86,77,'默认',0,'\0'),(87,79,'默认',0,'\0'),(88,80,'默认',0,'\0'),(89,81,'默认',0,'\0'),(90,82,'默认',0,'\0'),(91,83,'默认',0,'\0'),(92,84,'默认',0,'\0'),(93,85,'默认',0,'\0'),(94,86,'默认',0,'\0'),(95,87,'默认',0,'\0'),(96,88,'默认',0,'\0'),(97,89,'默认',0,'\0'),(98,90,'默认',0,'\0'),(99,91,'默认',0,'\0'),(100,92,'默认',0,'\0'),(101,93,'默认',0,'\0'),(102,94,'默认',0,'\0'),(103,95,'默认',0,'\0'),(104,96,'默认',0,'\0'),(105,97,'默认',0,'\0'),(106,98,'默认',0,'\0'),(107,99,'默认',0,'\0'),(108,100,'默认',0,'\0');
/*!40000 ALTER TABLE `itempricegroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itempricegroupvalue`
--

DROP TABLE IF EXISTS `itempricegroupvalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `itempricegroupvalue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemId` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `zorder` int(11) DEFAULT '1',
  `isDel` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=253 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itempricegroupvalue`
--

LOCK TABLES `itempricegroupvalue` WRITE;
/*!40000 ALTER TABLE `itempricegroupvalue` DISABLE KEYS */;
INSERT INTO `itempricegroupvalue` VALUES (1,20,1,'默认',0,'\0'),(2,24,2,'默认',0,'\0'),(3,25,3,'默认',0,'\0'),(4,26,4,'件',0,'\0'),(5,27,5,'默认',0,'\0'),(6,28,6,'默认',0,'\0'),(7,29,7,'默认',0,'\0'),(8,30,8,'袋',0,'\0'),(9,31,9,'默认',0,'\0'),(10,32,10,'1Kg',2,'\0'),(11,33,11,'默认',0,'\0'),(12,34,12,'袋',0,'\0'),(13,35,13,'底漆16kg 4kg',0,'\0'),(14,36,14,'20L/桶',0,'\0'),(15,37,15,'默认',0,'\0'),(16,38,16,'件',0,'\0'),(17,39,17,'7kg',0,'\0'),(18,40,18,'黑色',0,''),(19,41,19,'把',0,'\0'),(20,42,20,'把',0,'\0'),(21,43,21,'支',0,'\0'),(22,44,22,'18kg',0,'\0'),(23,45,23,'瓶',0,'\0'),(24,46,24,'支',0,'\0'),(25,44,22,'绿色',1,''),(26,44,22,'蓝色',2,''),(27,32,10,'10Kg',1,'\0'),(28,32,25,'3cm',0,''),(29,32,25,'5cm',1,''),(30,26,4,'瓶',1,'\0'),(31,38,16,'桶',1,'\0'),(32,40,18,'白色',1,''),(33,40,18,'大红',2,''),(34,40,18,'橙红',3,''),(35,40,18,'猩红',4,''),(36,40,18,'中黄',5,''),(37,40,18,'中蓝',6,''),(38,40,18,'天蓝',7,''),(39,40,18,'解放蓝',8,''),(40,40,18,'葱绿',9,''),(41,40,18,'邮电绿',10,''),(42,40,18,'中灰',11,''),(43,40,18,'银灰',12,''),(44,40,18,'银色',13,''),(45,40,18,'金色',14,''),(46,40,18,'钻石金',15,''),(47,40,18,'防锈底漆',16,''),(48,40,18,'闪光银',17,''),(49,40,18,'奶米黄',18,''),(50,40,18,'浅天蓝',19,''),(51,40,18,'耐高温银色',20,''),(52,40,18,'耐高温黑色',21,''),(53,40,30,'瓶/235g',0,'\0'),(54,40,30,'件',1,'\0'),(55,40,31,'黑色',0,'\0'),(56,40,31,'白色',1,'\0'),(57,40,31,'银色',2,'\0'),(58,40,31,'金色',3,'\0'),(59,40,31,'中黄',4,'\0'),(60,40,31,'中蓝',5,'\0'),(61,40,31,'解放蓝',6,'\0'),(62,40,31,'天蓝',7,'\0'),(63,40,31,'浅天蓝',8,'\0'),(64,40,31,'葱绿',9,'\0'),(65,40,31,'邮电绿',10,'\0'),(66,40,31,'大红',11,'\0'),(67,40,31,'橙红',12,'\0'),(68,40,31,'猩红',13,'\0'),(69,40,31,'猩红',14,'\0'),(70,40,31,'中灰',15,'\0'),(71,40,31,'银灰',16,'\0'),(72,40,31,'黑靓灰',17,'\0'),(73,40,31,'奶米黄',18,'\0'),(74,40,31,'浅黑棕',19,'\0'),(75,40,31,'钻石金',20,'\0'),(76,40,31,'防锈底漆',21,'\0'),(77,40,31,'闪光银',22,'\0'),(78,45,23,'件',1,'\0'),(79,45,23,'件',1,''),(80,45,32,'油性兰丽珠',0,'\0'),(81,45,32,'水性帅丽珠',1,'\0'),(82,34,12,'件',1,'\0'),(83,34,33,'珍珠白',0,'\0'),(84,41,19,'件',1,''),(85,41,34,'1寸',0,'\0'),(86,41,34,'1.5寸',1,'\0'),(87,41,34,'2寸',2,'\0'),(88,41,34,'3寸',3,'\0'),(89,41,34,'4寸',4,'\0'),(90,41,34,'5寸',5,'\0'),(91,41,34,'6寸',6,'\0'),(92,41,34,'8寸',7,'\0'),(93,43,21,'件',1,'\0'),(94,30,8,'件',1,'\0'),(95,39,35,'绿贴',0,'\0'),(96,39,35,'碧贴',1,'\0'),(97,39,35,'锦贴',2,'\0'),(98,35,36,'组',0,''),(99,35,37,'组',0,'\0'),(100,35,13,'面漆20kg 4kg中绿',1,'\0'),(101,35,13,'面漆20kg 4kg中灰',2,'\0'),(102,36,38,'黑色',0,'\0'),(103,36,38,'白色',1,'\0'),(104,36,38,'中黄',2,'\0'),(105,36,38,'中绿',3,'\0'),(106,36,38,'铁红',4,'\0'),(107,36,38,'中灰',5,'\0'),(108,36,38,'浅灰',6,'\0'),(109,36,38,'大红',7,'\0'),(110,47,39,'默认',0,'\0'),(111,48,40,'20kg',0,'\0'),(112,48,41,'c100',0,'\0'),(113,48,41,'c200',1,'\0'),(114,49,42,'清漆/16kg',0,''),(115,49,42,'20kg',1,'\0'),(116,49,43,'清漆16kg',0,'\0'),(117,49,43,'大红',1,'\0'),(118,49,43,'铁红',2,'\0'),(119,49,43,'深黄（中黄）',3,'\0'),(120,49,43,'翠绿（中绿）',4,'\0'),(121,49,43,'中灰',5,'\0'),(122,49,43,'浅灰',6,'\0'),(123,49,42,'16kg',2,'\0'),(124,49,43,'黑色',7,'\0'),(125,49,43,'白色',8,'\0'),(126,42,20,'盒',1,'\0'),(127,42,44,'2寸/30把一盒',0,'\0'),(128,42,44,'3寸/20把一盒',1,'\0'),(129,42,44,'4寸/20把一盒',2,'\0'),(130,42,44,'5寸/20把一盒',3,'\0'),(131,42,44,'8寸',4,'\0'),(132,46,24,'件',1,'\0'),(133,50,45,'2kg',0,''),(134,50,46,'桶',0,'\0'),(135,50,46,'件',1,'\0'),(136,51,47,'1kg',0,'\0'),(137,51,47,'4kg',1,'\0'),(138,51,48,'袋',0,'\0'),(139,51,48,'件',1,'\0'),(140,52,49,'桶',0,'\0'),(141,52,49,'件',1,'\0'),(142,53,50,'瓶',0,'\0'),(143,53,50,'件',1,'\0'),(144,53,51,'208g/24瓶*件',0,'\0'),(145,53,51,'235g/12瓶*件',1,'\0'),(146,54,52,'瓶',0,'\0'),(147,54,52,'件',1,'\0'),(148,54,53,'0.8kg/瓶*12瓶*件',0,'\0'),(149,54,53,'271g/瓶*24瓶*件',1,'\0'),(150,55,54,'275g/瓶',0,'\0'),(151,55,54,'件',1,'\0'),(152,57,56,'支',0,'\0'),(153,57,56,'件',1,'\0'),(154,57,57,'20g',0,'\0'),(155,57,57,'50g',1,'\0'),(156,58,58,'个',0,'\0'),(157,58,58,'件',0,'\0'),(158,60,59,'张',0,'\0'),(159,60,59,'100张/拖',1,'\0'),(160,60,60,'进口砂150',0,'\0'),(161,60,60,'进口砂180',1,'\0'),(162,60,60,'进口砂240',2,'\0'),(163,60,60,'进口砂280',3,'\0'),(164,60,60,'进口砂320',4,'\0'),(165,60,60,'进口砂360',5,'\0'),(166,60,60,'进口砂400',6,'\0'),(167,60,60,'进口砂600',7,'\0'),(168,60,60,'进口砂800',8,'\0'),(169,60,60,'进口砂1000',9,'\0'),(170,61,61,'张',0,'\0'),(171,61,61,'拖',1,'\0'),(172,59,63,'张',0,'\0'),(173,59,63,'盒',1,'\0'),(174,59,64,'直径*120mm*100号',0,'\0'),(175,59,64,'直径*120mm*150号',1,'\0'),(176,59,64,'直径*120mm*180号',2,'\0'),(177,59,64,'直径*120mm*240号',3,'\0'),(178,59,64,'直径*120mm*240号',3,''),(179,59,64,'直径*120mm*320号',4,'\0'),(180,59,64,'直径*180mm*60号',5,'\0'),(181,59,64,'直径*180mm*80号',6,'\0'),(182,59,64,'直径*180mm*100号',7,'\0'),(183,59,64,'直径*180mm*120号',8,'\0'),(184,59,64,'直径*180mm*150号',9,'\0'),(185,59,64,'直径*180mm*240号',10,'\0'),(186,59,64,'直径*230mm*60号',11,'\0'),(187,59,64,'直径*230mm*80号',12,'\0'),(188,59,64,'直径*230mm*100号',13,'\0'),(189,59,64,'直径*230mm*120号',14,'\0'),(190,59,64,'直径*230mm*150号',15,'\0'),(191,59,64,'直径*230mm*180号',16,'\0'),(192,59,64,'直径*230mm*240号',16,'\0'),(193,59,64,'直径*230mm*320号',17,'\0'),(194,61,62,'0号*120#',0,'\0'),(195,61,62,'1号*100#',1,'\0'),(196,61,62,'2号*60#',2,'\0'),(197,61,62,'3号*36#',3,'\0'),(198,63,65,'2.4kg',0,'\0'),(199,63,65,'4kg',1,'\0'),(200,63,66,'组',0,'\0'),(201,63,66,'件',1,'\0'),(202,64,67,'支',0,'\0'),(203,64,67,'盒（10支）',1,'\0'),(204,64,67,'件（100支）',2,'\0'),(205,64,67,'件（100支）',2,''),(206,65,69,'支',0,'\0'),(207,65,69,'件',1,'\0'),(208,65,70,'黑色',0,'\0'),(209,65,70,'白色',1,'\0'),(210,65,70,'透明',1,'\0'),(211,65,70,'灰色',2,'\0'),(212,65,71,'TB798玻璃胶',0,'\0'),(213,65,71,'TB798软胶',1,'\0'),(214,65,71,'TB798软胶',1,''),(215,66,72,'17kg',0,'\0'),(216,68,73,'15kg 18kg',0,'\0'),(217,68,73,'15kg 18kg',0,''),(218,56,74,'默认',0,'\0'),(219,62,75,'默认',0,'\0'),(220,67,76,'默认',0,'\0'),(221,69,77,'默认',1,'\0'),(222,70,78,'桶',0,'\0'),(223,71,79,'桶',1,'\0'),(224,72,80,'桶',1,'\0'),(225,73,81,'桶',1,'\0'),(226,74,82,'桶',1,'\0'),(227,75,83,'桶',1,'\0'),(228,76,84,'套',1,'\0'),(229,78,85,'桶',1,'\0'),(230,77,86,'默认',0,'\0'),(231,79,87,'默认',0,'\0'),(232,80,88,'默认',0,'\0'),(233,81,89,'默认',0,'\0'),(234,82,90,'默认',0,'\0'),(235,83,91,'默认',0,'\0'),(236,84,92,'默认',0,'\0'),(237,85,93,'默认',0,'\0'),(238,86,94,'默认',0,'\0'),(239,87,95,'默认',0,'\0'),(240,88,96,'默认',0,'\0'),(241,89,97,'默认',0,'\0'),(242,90,98,'默认',0,'\0'),(243,91,99,'默认',0,'\0'),(244,92,100,'默认',0,'\0'),(245,93,101,'默认',0,'\0'),(246,94,102,'默认',0,'\0'),(247,95,103,'默认',0,'\0'),(248,96,104,'默认',0,'\0'),(249,97,105,'默认',0,'\0'),(250,98,106,'默认',0,'\0'),(251,99,107,'默认',0,'\0'),(252,100,108,'默认',0,'\0');
/*!40000 ALTER TABLE `itempricegroupvalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keepjia`
--

DROP TABLE IF EXISTS `keepjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keepjia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customerId` int(11) NOT NULL,
  `storeId` int(11) NOT NULL COMMENT '商店',
  `itemId` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT '1999-12-31 16:00:00',
  `updatedAt` timestamp NOT NULL DEFAULT '1999-12-31 16:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_keepJia_customerId` (`customerId`),
  KEY `idx_keepJia_storeId` (`storeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keepjia`
--

LOCK TABLES `keepjia` WRITE;
/*!40000 ALTER TABLE `keepjia` DISABLE KEYS */;
/*!40000 ALTER TABLE `keepjia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kind1`
--

DROP TABLE IF EXISTS `kind1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kind1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `zorder` int(11) DEFAULT '0',
  `visible` tinyint(4) DEFAULT '0',
  `storeId` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT '1999-12-31 16:00:00',
  `updatedAt` timestamp NOT NULL DEFAULT '1999-12-31 16:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kind1`
--

LOCK TABLES `kind1` WRITE;
/*!40000 ALTER TABLE `kind1` DISABLE KEYS */;
INSERT INTO `kind1` VALUES (47,'防水',1,1,7,'2018-07-12 13:47:49','2018-07-12 13:47:49'),(48,'水性漆',1,1,7,'2018-07-12 13:50:19','2018-07-12 13:50:19'),(49,'装饰胶系列',1,1,7,'2018-07-12 13:56:08','2018-07-12 13:56:08'),(51,'泥板/刮子',1,1,7,'2018-07-16 11:37:59','2018-07-16 11:37:59'),(56,'五金机电胶系列',1,1,7,'2018-07-24 13:38:44','2018-07-24 13:38:44'),(57,'油性漆',1,1,7,'2018-07-25 06:24:34','2018-07-25 06:24:34'),(58,'刷子',1,1,7,'2018-07-28 14:47:17','2018-07-28 14:47:17'),(59,'砂纸',1,1,7,'2018-08-08 09:15:17','2018-08-08 09:15:17'),(60,'默认',1,1,7,'2018-12-18 03:57:47','2018-12-18 03:57:47');
/*!40000 ALTER TABLE `kind1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kind1itemmap`
--

DROP TABLE IF EXISTS `kind1itemmap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kind1itemmap` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kind1Id` int(11) NOT NULL,
  `itemId` int(11) NOT NULL,
  `storeId` int(11) NOT NULL,
  `createdAt` timestamp NULL DEFAULT '1999-12-31 16:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kind1itemmap`
--

LOCK TABLES `kind1itemmap` WRITE;
/*!40000 ALTER TABLE `kind1itemmap` DISABLE KEYS */;
INSERT INTO `kind1itemmap` VALUES (46,47,27,7,'2018-07-19 01:49:03'),(47,47,28,7,'2018-07-19 03:09:08'),(48,47,29,7,'2018-07-19 03:45:50'),(49,47,30,7,'2018-07-24 09:21:51'),(50,47,31,7,'2018-07-24 10:42:14'),(51,47,32,7,'2018-07-24 10:55:27'),(52,47,33,7,'2018-07-24 11:07:50'),(53,47,34,7,'2018-07-24 11:12:40'),(57,49,37,7,'2018-07-25 02:01:02'),(58,47,24,7,NULL),(60,57,36,7,NULL),(61,57,35,7,NULL),(62,49,26,7,NULL),(63,56,26,7,NULL),(64,47,25,7,NULL),(65,49,38,7,'2018-07-25 13:23:56'),(66,49,39,7,'2018-07-26 02:43:55'),(67,56,39,7,'2018-07-26 02:43:55'),(68,57,40,7,'2018-07-28 13:58:04'),(70,58,41,7,NULL),(71,58,42,7,'2018-07-29 13:29:04'),(72,56,43,7,'2018-07-30 10:50:02'),(73,47,44,7,'2018-07-30 12:04:42'),(74,57,45,7,'2018-07-30 12:10:18'),(75,48,45,7,'2018-07-30 12:10:18'),(76,49,46,7,'2018-07-30 12:25:36'),(77,58,47,7,'2018-08-03 13:34:26'),(78,49,48,7,'2018-08-04 09:07:38'),(79,57,49,7,'2018-08-05 02:49:59'),(80,47,50,7,'2018-08-05 04:28:11'),(81,47,51,7,'2018-08-05 07:02:15'),(82,49,52,7,'2018-08-05 07:56:28'),(83,48,53,7,'2018-08-06 13:26:35'),(84,57,54,7,'2018-08-06 13:48:52'),(85,57,55,7,'2018-08-06 14:11:07'),(86,48,20,7,NULL),(87,48,56,7,'2018-08-08 06:03:19'),(88,56,57,7,'2018-08-08 07:44:45'),(89,58,58,7,'2018-08-08 09:00:19'),(93,59,61,7,NULL),(94,59,60,7,NULL),(95,59,59,7,NULL),(96,59,62,7,'2018-08-08 09:46:05'),(97,47,63,7,'2018-08-14 13:09:00'),(98,56,64,7,'2018-08-14 14:29:32'),(99,56,65,7,'2018-08-14 14:56:58'),(100,49,65,7,'2018-08-14 14:56:58'),(101,47,66,7,'2018-08-15 01:29:52'),(102,48,67,7,'2018-08-15 06:57:29'),(103,47,68,7,'2018-08-18 06:08:20'),(104,49,69,7,'2018-11-29 04:50:10'),(105,49,70,7,'2018-11-30 02:15:22'),(106,49,71,7,'2018-11-30 02:42:06'),(107,48,72,7,'2018-11-30 07:51:28'),(108,48,73,7,'2018-11-30 07:54:54'),(109,48,74,7,'2018-11-30 08:24:40'),(110,48,75,7,'2018-11-30 08:26:33'),(111,48,76,7,'2018-11-30 08:47:06'),(112,49,77,7,'2018-11-30 08:53:17'),(113,47,78,7,'2018-11-30 11:06:23'),(114,60,79,7,'2018-12-18 04:01:56'),(115,60,80,7,'2018-12-18 08:12:36'),(116,60,81,7,'2018-12-18 08:19:15'),(117,60,82,7,'2018-12-18 08:20:03'),(118,60,83,7,'2018-12-18 08:22:32'),(119,60,84,7,'2018-12-18 08:27:00'),(120,60,85,7,'2018-12-18 08:27:43'),(121,60,86,7,'2018-12-18 08:28:21'),(122,60,87,7,'2018-12-18 08:29:28'),(123,60,88,7,'2018-12-18 08:30:16'),(124,60,89,7,'2018-12-18 08:30:53'),(125,60,90,7,'2018-12-18 08:32:50'),(126,60,91,7,'2018-12-18 08:33:38'),(127,60,92,7,'2018-12-18 09:15:26'),(128,60,93,7,'2018-12-18 09:16:06'),(129,60,94,7,'2018-12-18 09:16:56'),(130,60,95,7,'2018-12-18 10:53:45'),(131,60,96,7,'2018-12-18 10:59:49'),(132,60,97,7,'2018-12-18 11:02:08'),(133,60,98,7,'2018-12-18 11:02:54'),(134,60,99,7,'2018-12-18 11:05:56'),(135,60,100,7,'2018-12-18 11:06:40');
/*!40000 ALTER TABLE `kind1itemmap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kind2`
--

DROP TABLE IF EXISTS `kind2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kind2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `zorder` int(11) DEFAULT '0',
  `visible` tinyint(4) DEFAULT '0',
  `storeId` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT '1999-12-31 16:00:00',
  `updatedAt` timestamp NOT NULL DEFAULT '1999-12-31 16:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kind2`
--

LOCK TABLES `kind2` WRITE;
/*!40000 ALTER TABLE `kind2` DISABLE KEYS */;
INSERT INTO `kind2` VALUES (35,'易涂型防水',1,1,7,'2018-07-11 00:53:58','2018-07-11 00:53:58'),(36,'柔韧型防水',1,1,7,'2018-07-12 13:35:16','2018-07-12 13:35:16'),(37,'弹性防水',1,1,7,'2018-07-12 13:44:37','1999-12-31 16:00:00'),(38,'JS复合水泥基',1,1,7,'2018-07-12 13:45:03','1999-12-31 16:00:00'),(39,'内墙乳胶漆',1,1,7,'2018-07-12 13:50:37','1999-12-31 16:00:00'),(40,'外墙乳胶漆',1,1,7,'2018-07-12 13:50:51','1999-12-31 16:00:00'),(41,'油性外墙漆',1,1,7,'2018-07-12 13:51:10','1999-12-31 16:00:00'),(42,'外墙抗碱底漆',1,1,7,'2018-07-12 13:51:32','1999-12-31 16:00:00'),(43,'堵漏王',1,1,7,'2018-07-12 13:54:37','1999-12-31 16:00:00'),(44,'白乳胶',1,1,7,'2018-07-12 13:56:38','1999-12-31 16:00:00'),(45,'丙纶防水布',1,1,7,'2018-07-12 14:01:29','1999-12-31 16:00:00'),(46,'防水玻纤布',1,1,7,'2018-07-12 14:01:48','1999-12-31 16:00:00'),(50,'猪毛刷/羊毛刷',1,1,7,'2018-07-16 11:40:47','1999-12-31 16:00:00'),(51,'滚筒刷',1,1,7,'2018-07-16 11:41:24','1999-12-31 16:00:00'),(52,'泥板',1,1,7,'2018-07-16 11:42:06','1999-12-31 16:00:00'),(53,'刮子',1,1,7,'2018-07-16 11:42:31','1999-12-31 16:00:00'),(54,'云石胶',1,1,7,'2018-07-16 13:07:42','1999-12-31 16:00:00'),(55,'植筋胶',1,1,7,'2018-07-16 13:07:50','1999-12-31 16:00:00'),(56,'硅酮胶',1,1,7,'2018-07-16 13:08:05','1999-12-31 16:00:00'),(57,'结构胶',1,1,7,'2018-07-16 13:08:12','1999-12-31 16:00:00'),(58,'万能胶',1,1,7,'2018-07-16 13:08:29','1999-12-31 16:00:00'),(59,'免钉胶',1,1,7,'2018-07-16 13:08:37','1999-12-31 16:00:00'),(60,'588红胶',1,1,7,'2018-07-16 13:09:29','1999-12-31 16:00:00'),(61,'AB胶',1,1,7,'2018-07-16 13:09:40','1999-12-31 16:00:00'),(62,'502/三秒胶水',1,1,7,'2018-07-16 13:09:59','1999-12-31 16:00:00'),(63,'液态密封胶',1,1,7,'2018-07-16 13:10:13','1999-12-31 16:00:00'),(64,'墙固/地固',1,1,7,'2018-07-24 10:42:50','1999-12-31 16:00:00'),(65,'瓷砖勾缝剂/真瓷王美缝剂',1,1,7,'2018-07-24 11:11:29','1999-12-31 16:00:00'),(66,'丙烯酸地坪漆',1,1,7,'2018-07-24 13:39:14','2018-07-24 13:39:14'),(67,'环氧地坪漆',1,1,7,'2018-07-24 13:39:37','2018-07-24 13:39:37'),(68,'自喷漆',1,1,7,'2018-07-28 13:58:53','1999-12-31 16:00:00'),(70,'瓷砖胶',1,1,7,'2018-08-05 03:06:12','2018-08-05 03:06:12'),(71,'脱漆（胶）剂/除锈剂/',1,1,7,'2018-08-06 13:49:33','1999-12-31 16:00:00'),(72,'水砂',1,1,7,'2018-08-08 09:07:38','1999-12-31 16:00:00'),(73,'布砂',1,1,7,'2018-08-08 09:07:45','1999-12-31 16:00:00'),(74,'进口砂',1,1,7,'2018-08-08 09:07:52','1999-12-31 16:00:00'),(75,'圆砂/卷砂',1,1,7,'2018-08-08 09:08:06','1999-12-31 16:00:00'),(76,'厌氧胶（螺丝胶）',1,1,7,'2018-08-14 14:30:00','1999-12-31 16:00:00'),(77,'内墙面漆',3,1,7,'2018-11-30 07:51:09','1999-12-31 16:00:00'),(78,'木器漆',1,1,7,'2018-11-30 08:46:45','1999-12-31 16:00:00'),(79,'建筑胶',5,1,7,'2018-11-30 08:52:51','1999-12-31 16:00:00'),(80,'胶粘带',1,1,7,'2018-12-18 03:58:01','1999-12-31 16:00:00'),(81,'网格带/牛皮纸',2,1,7,'2018-12-18 03:58:31','1999-12-31 16:00:00'),(82,'保护膜',3,1,7,'2018-12-18 03:58:46','1999-12-31 16:00:00'),(83,'外墙分格胶带',4,1,7,'2018-12-18 03:58:58','1999-12-31 16:00:00'),(84,'防水辅料',5,1,7,'2018-12-18 03:59:12','1999-12-31 16:00:00'),(85,'劳保五金机电',6,1,7,'2018-12-18 03:59:30','1999-12-31 16:00:00');
/*!40000 ALTER TABLE `kind2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kind2itemmap`
--

DROP TABLE IF EXISTS `kind2itemmap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kind2itemmap` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kind2Id` int(11) NOT NULL,
  `itemId` int(11) NOT NULL,
  `storeId` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT '1999-12-31 16:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kind2itemmap`
--

LOCK TABLES `kind2itemmap` WRITE;
/*!40000 ALTER TABLE `kind2itemmap` DISABLE KEYS */;
INSERT INTO `kind2itemmap` VALUES (39,35,24,7,'2018-07-11 00:59:40'),(40,35,25,7,'2018-07-12 13:31:50'),(41,58,26,7,'2018-07-18 12:37:12'),(42,36,27,7,'2018-07-19 01:49:03'),(43,37,28,7,'2018-07-19 03:09:08'),(44,35,29,7,'2018-07-19 03:45:50'),(45,43,30,7,'2018-07-24 09:21:51'),(47,37,32,7,'2018-07-24 10:55:27'),(48,37,33,7,'2018-07-24 11:07:50'),(49,65,34,7,'2018-07-24 11:12:40'),(50,67,35,7,'2018-07-24 13:40:23'),(52,66,36,7,'2018-07-24 14:04:22'),(53,44,37,7,'2018-07-25 02:01:02'),(54,64,31,7,'2018-07-25 06:26:44'),(55,54,38,7,'2018-07-25 13:23:56'),(56,58,39,7,'2018-07-26 02:43:55'),(58,68,40,7,'2018-07-28 13:59:21'),(59,50,41,7,'2018-07-28 14:46:57'),(60,50,42,7,'2018-07-29 13:29:04'),(61,63,43,7,'2018-07-30 10:50:02'),(62,36,44,7,'2018-07-30 12:04:42'),(63,68,45,7,'2018-07-30 12:10:18'),(64,59,46,7,'2018-07-30 12:25:36'),(65,51,47,7,'2018-08-03 13:34:26'),(66,59,48,7,'2018-08-04 09:07:38'),(67,66,49,7,'2018-08-05 02:49:59'),(68,38,50,7,'2018-08-05 04:28:11'),(69,43,51,7,'2018-08-05 07:02:15'),(70,55,52,7,'2018-08-05 07:56:28'),(73,71,55,7,'2018-08-06 14:11:07'),(74,71,54,7,'2018-08-07 08:04:51'),(75,71,53,7,'2018-08-07 08:05:02'),(76,39,56,7,'2018-08-08 06:03:19'),(77,61,57,7,'2018-08-08 07:44:45'),(78,51,58,7,'2018-08-08 09:00:19'),(79,51,59,7,'2018-08-08 09:06:39'),(80,74,60,7,'2018-08-08 09:12:26'),(81,73,61,7,'2018-08-08 09:13:07'),(82,72,62,7,'2018-08-08 09:46:05'),(83,43,63,7,'2018-08-14 13:09:00'),(85,76,64,7,'2018-08-14 14:30:15'),(86,56,65,7,'2018-08-14 14:56:58'),(87,57,65,7,'2018-08-14 14:56:58'),(88,36,66,7,'2018-08-15 01:29:52'),(89,39,67,7,'2018-08-15 06:57:29'),(90,38,68,7,'2018-08-18 06:08:20'),(91,44,69,7,'2018-11-29 04:50:10'),(92,44,70,7,'2018-11-30 02:15:22'),(93,44,71,7,'2018-11-30 02:42:06'),(94,77,72,7,'2018-11-30 07:51:28'),(95,77,73,7,'2018-11-30 07:54:54'),(96,77,74,7,'2018-11-30 08:24:40'),(98,40,75,7,'2018-11-30 08:27:28'),(99,78,76,7,'2018-11-30 08:47:06'),(100,79,77,7,'2018-11-30 08:53:17'),(101,35,78,7,'2018-11-30 11:06:23'),(102,80,79,7,'2018-12-18 04:01:56'),(103,80,80,7,'2018-12-18 08:12:36'),(104,80,81,7,'2018-12-18 08:19:15'),(105,80,82,7,'2018-12-18 08:20:03'),(106,80,83,7,'2018-12-18 08:22:32'),(107,80,84,7,'2018-12-18 08:27:00'),(108,80,85,7,'2018-12-18 08:27:43'),(109,80,86,7,'2018-12-18 08:28:21'),(110,80,87,7,'2018-12-18 08:29:28'),(111,80,88,7,'2018-12-18 08:30:16'),(112,80,89,7,'2018-12-18 08:30:53'),(113,81,90,7,'2018-12-18 08:32:50'),(114,81,91,7,'2018-12-18 08:33:38'),(115,81,92,7,'2018-12-18 09:15:26'),(116,82,93,7,'2018-12-18 09:16:06'),(117,83,94,7,'2018-12-18 09:16:56'),(118,83,95,7,'2018-12-18 10:53:45'),(119,83,96,7,'2018-12-18 10:59:49'),(120,84,97,7,'2018-12-18 11:02:08'),(121,85,98,7,'2018-12-18 11:02:54'),(122,85,99,7,'2018-12-18 11:05:56'),(123,85,100,7,'2018-12-18 11:06:40');
/*!40000 ALTER TABLE `kind2itemmap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catId` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `content` varchar(10240) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `enable` tinyint(4) DEFAULT '1',
  `subContent` varchar(128) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_news_catId` (`catId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (4,1,'把握木地板与家具配色要点','<p style=\"margin-top: 0px; margin-bottom: 0px; color: rgb(103, 103, 103); font-family: 微软雅黑; font-size: 14px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">实木复合</span><a href=\"http://undefined\" target=\"_blank\" style=\"padding: 0px; color: rgb(0, 0, 0); text-decoration-line: none;\">地板</a><span style=\"color: rgb(0, 0, 0);\">的油漆涂装，基本保持了木材的本色韵味，色系较为单纯，大致可分为红色系、褐色系、黄色系。实木复合地板颜色可以与所有常见的家具和流行的家具装饰面板相配色。那么。实木复合地板搭配家具要注意哪些事项呢?下面，一起来看看!</span></p><h2 style=\"margin-top: 0px; margin-bottom: 0px; color: rgb(103, 103, 103); font-family: 微软雅黑; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\"><strong style=\"\"><span style=\"font-size:18px\">一、同色系相配</span></strong></span></h2><p style=\"margin-top: 0px; margin-bottom: 0px; color: rgb(103, 103, 103); font-family: 微软雅黑; font-size: 14px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">木地板设计温馨厨房</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; color: rgb(103, 103, 103); font-family: 微软雅黑; font-size: 14px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">木地板设计卧室</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; color: rgb(103, 103, 103); font-family: 微软雅黑; font-size: 14px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">　　如选择了褐色为主白色镶配的家具，可用褐色系的柚木、二翅豆实木复合</span><a href=\"http://undefined\" target=\"_blank\" style=\"padding: 0px; color: rgb(0, 0, 0); text-decoration-line: none;\">木地板</a><span style=\"color: rgb(0, 0, 0);\">相配，选择了仿红木的实木家具，可用红色系的蕚叶茜木、香脂木豆地板相配色。同色相配，装修风格严谨、有序、大气。</span></p><h2 style=\"margin-top: 0px; margin-bottom: 0px; color: rgb(103, 103, 103); font-family: 微软雅黑; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);font-size:18px\">二、近色系相</span></h2><p style=\"margin-top: 0px; margin-bottom: 0px; color: rgb(103, 103, 103); font-family: 微软雅黑; font-size: 14px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">配</span><span style=\"color: rgb(0, 0, 0);\">木地板打造温馨家居</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; color: rgb(103, 103, 103); font-family: 微软雅黑; font-size: 14px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">木地板打造简约卧室</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; color: rgb(103, 103, 103); font-family: 微软雅黑; font-size: 14px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">如选择了黑胡桃贴面板的家具，可用褐色的大果阿那豆、硕桦、绿柄桑地板配色相配。近色相配，装修风格显得活泼、和谐、秀气。</span></p><h2><span style=\"font-family: 微软雅黑; white-space: normal;font-size:18px\">三、对比色系相配</span></h2><p style=\"margin-top: 0px; margin-bottom: 0px; color: rgb(103, 103, 103); font-family: 微软雅黑; font-size: 14px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">木地板设计温馨家居</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; color: rgb(103, 103, 103); font-family: 微软雅黑; font-size: 14px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">木地板打造清新卧室</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; color: rgb(103, 103, 103); font-family: 微软雅黑; font-size: 14px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\"></span></p>','2018-06-19 15:28:07',1,'实木复合地板的油漆涂装，基本保持了木材的本色韵味，色系较为单纯，大致可分为红色系'),(5,1,'地板踢脚线选择的重要性','<p>地板的踢脚线，作为地板安装的重要辅料，如果搭配不好，不仅严重影响美观，而且会影响地板的正常使用。对于作为地板亲密搭档的踢脚线，您又了解多少呢？</p><p>踢脚线的重要性往往被忽视</p><p>比起地板来说，踢脚线绝对是个配角，往往会被消费者忽视。很多消费者表示，在选择地板时，将更多的注意力放在了地板上，而对于踢脚线则没有更多的关注，甚至有的消费者在铺装的时候才临时选择踢脚线。由于消费者的不重视给地板的安装质量埋下了不小的隐患。</p><p>地板三分在用，七分在装，安装和配件的质量将直接影响到地板的正常使用。像衣服上的纽扣一样，扣上不仅能挡风，还使人显得整洁、高雅，辅料中的踢脚线在家装中一方面显示点缀的视觉美，使地板与墙面有一个和谐的过度；另一方面保护了地板与墙壁间预留的伸缩缝不被垃圾填充，墙根不被硬物碰坏。同时因为用量较多，它也是家装环保性的关键因素之一，有时踢脚线环保性能决定着整个居室的环保与否。</p><p>踢脚线已发展成为建材独立品类</p><p>就在前几年，很多地板的踢脚线还都是买地板时免费赠送的，但是随着竞争的不断加剧，免费的踢脚线越来越少。为了让产品在价格上更具有优势，绝大部分品牌开始将踢脚线从产品价格中剥离，这样不仅可以降低产品价格，而且也给了消费者更多的选择余地。嘉兴装修网小编了解到在明辨利害关系之后，很多销售人员都表示，业主一般都会选择质量较好的踢脚线，这样就大大提高了地板的产品质量。所以，现在地板行业大多实行了踢脚线的收费。</p><p>踢脚线不仅起着保护地板和墙面的作用，同时也起着视觉的平衡作用，利用它们的线形感觉及材质、色彩等在室内相互呼应，可以起到较好的美化装饰效果。由于踢脚线是和门连接的一部分，基本属于一个平面，所以踢脚线和门的颜色和材质搭配一致，会显得协调。一般来说，在购买地板时，都会有相应的踢脚线颜色供选择，建议消费者最好一次性购买，否则后期不仅颜色很难搭配，而且安装也会比较容易出现问题。另外踢脚线的使用量基本和地板的平米数成0.9 1的关系，如10平方米的房间，踢脚线的使用量在9米左右。</p><p>如何选择踢脚线</p><p>与地板一样，踢脚线品类也有很多，按材质可分为实木仿古、实木、强化、PVC及木塑等几大类。好的踢脚线不仅外型美观，而且可以更好地使墙体和地面之间结合牢固，减少墙体变形，避免外力碰撞造成地板和墙面的破坏。但劣质踢脚线，往往不仅起不到作用，而且自身很容易发生变形、起翘、退色等质量问题。</p><p>在选购踢脚线时应从以下几个方面入手：1.环保性：考查踢脚线的环保性可以通过厂家的检验报告。2.与居室的整体协调性：踢脚线的颜色及花纹主要通过与地板、家具之间的对比、和谐为原则。3.抗变形性：劣质脚线在气温变化大或受潮时容易发生变形、松动，影响整个居室的美观，建议在选择踢脚线时切勿选用非正规厂家的劣质踢脚线。</p>','2018-06-19 15:33:28',1,'地板的踢脚线，作为地板安装的重要辅料，如果搭配不好，不仅严重影响美观，而且会影响'),(6,1,'巧用生活用品，解决地板脏乱问题','<div style=\"color: rgb(103, 103, 103); font-family: 微软雅黑; font-size: 14px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">秋冬季节室内外温差较大，气候也十分干燥也就让室内的灰尘逐渐增多，正是因为如此爱家中的实木地板很容易出现脏乱糙等现象，为了解决这些问题的产生，新发地板今天就教您用生活用品帮助您解决实木地板的保养问题。</span></div><div style=\"color: rgb(103, 103, 103); font-family: 微软雅黑; font-size: 14px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">　　地板上残留蛋渍，可以在蛋渍上撒上一些精盐，过上一段时间用扫把轻轻清扫，蛋迹就很容易去除。精盐是我们日常生活中最常见的调味品，精盐具有调味杀菌的作用，我们却都忽视了精盐具有去污的绝招，省时省力的方法真的是值得我们借鉴。</span></div><p style=\"color: rgb(103, 103, 103); font-family: 微软雅黑; font-size: 14px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">　　在日常生活中难免会将果汁或是红酒等残渍滴到地板上，这时候使用色拉油、牛奶、茶便是不错的去渍品，而且操作十分简单。在擦实木地板时，在水中滴几滴色拉油或是少许的醋不但可以去污还能擦亮实木地板，油漆地板上得污垢可以用浓茶汁擦去。</span></p><p style=\"color: rgb(103, 103, 103); font-family: 微软雅黑; font-size: 14px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\"><br/></span></p><p style=\"text-align: center;\"><img src=\"http://www.sjhgjck.com/static//res//web/news/20180709/20186923251_623137.jpg\" style=\"\"/></p><p style=\"text-align: center;\"><span style=\"color:#7f7f7f\">关注皇贵建材公众号，查看更多精彩动态。买建材，上皇贵。</span></p><p style=\"color: rgb(103, 103, 103); font-family: 微软雅黑; font-size: 14px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\"><br/></span><br/></p>','2018-07-10 04:53:07',1,'秋冬季节室内外温差较大，气候也十分干燥也就让室内的灰尘逐渐增多，正是因为如此爱家');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news_cat`
--

DROP TABLE IF EXISTS `news_cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news_cat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT '',
  `rank` int(11) DEFAULT '0',
  `enable` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_cat`
--

LOCK TABLES `news_cat` WRITE;
/*!40000 ALTER TABLE `news_cat` DISABLE KEYS */;
INSERT INTO `news_cat` VALUES (1,'行业聚焦',1,1),(2,'公司新闻',4,1),(3,'行业新闻',6,1);
/*!40000 ALTER TABLE `news_cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payhis`
--

DROP TABLE IF EXISTS `payhis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payhis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `orderNo` varchar(22) NOT NULL,
  `name` varchar(64) NOT NULL,
  `phoneNo` varchar(64) DEFAULT '',
  `money` decimal(10,0) DEFAULT '0',
  `createdAt` timestamp NOT NULL DEFAULT '1999-12-31 16:00:00',
  `comment` varchar(512) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_payHis_orderNo` (`orderNo`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payhis`
--

LOCK TABLES `payhis` WRITE;
/*!40000 ALTER TABLE `payhis` DISABLE KEYS */;
/*!40000 ALTER TABLE `payhis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saleorder`
--

DROP TABLE IF EXISTS `saleorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `saleorder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customerId` int(11) NOT NULL,
  `storeId` int(11) NOT NULL,
  `state` int(11) DEFAULT '0' COMMENT '订单状态：0已生成，1等待支付，2商家接单，3安排发货，4已发货，5已收货',
  `payMethod` int(11) DEFAULT '0' COMMENT '支付方式:0在线支付，1货到付款',
  `sumMoney` decimal(10,0) DEFAULT '0' COMMENT '总金额',
  `isPay` tinyint(4) DEFAULT '0' COMMENT '是否付款：0没有，1已付款',
  `comment` varchar(1024) DEFAULT '' COMMENT '客户备注',
  `createdAt` timestamp NOT NULL DEFAULT '1999-12-31 16:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_saleOrder_storeId` (`storeId`),
  KEY `idx_saleOrder_customerId` (`customerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saleorder`
--

LOCK TABLES `saleorder` WRITE;
/*!40000 ALTER TABLE `saleorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `saleorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saleorderitem`
--

DROP TABLE IF EXISTS `saleorderitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `saleorderitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customerId` int(11) NOT NULL,
  `storeId` int(11) NOT NULL,
  `itemId` int(11) NOT NULL,
  `amount` int(11) DEFAULT '1',
  `sumMoney` decimal(10,0) DEFAULT '0' COMMENT '该项金额，总金额可能因为活动关系，不会=单价*数量',
  `createdAt` timestamp NOT NULL DEFAULT '1999-12-31 16:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_saleOrderItem_customerId` (`customerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saleorderitem`
--

LOCK TABLES `saleorderitem` WRITE;
/*!40000 ALTER TABLE `saleorderitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `saleorderitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scorechangelog`
--

DROP TABLE IF EXISTS `scorechangelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scorechangelog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `type` int(11) DEFAULT '0',
  `score` decimal(10,0) DEFAULT '0',
  `money` decimal(10,2) DEFAULT '0.00',
  `orderNo` varchar(22) DEFAULT '',
  `followerName` varchar(32) DEFAULT '',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `storeId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_scoreChangeLog_userId` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scorechangelog`
--

LOCK TABLES `scorechangelog` WRITE;
/*!40000 ALTER TABLE `scorechangelog` DISABLE KEYS */;
INSERT INTO `scorechangelog` VALUES (1,1,0,100,0.00,'','','2018-04-12 08:57:18',0);
/*!40000 ALTER TABLE `scorechangelog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store`
--

DROP TABLE IF EXISTS `store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `comment` varchar(256) DEFAULT '',
  `cityId` int(11) NOT NULL,
  `jingdu` double NOT NULL COMMENT '经度',
  `weidu` double NOT NULL COMMENT '纬度',
  `sendLimit` int(11) NOT NULL COMMENT '配送范围',
  `visible` tinyint(4) DEFAULT '0',
  `createdAt` timestamp NOT NULL DEFAULT '1999-12-31 16:00:00',
  `updatedAt` timestamp NOT NULL DEFAULT '1999-12-31 16:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store`
--

LOCK TABLES `store` WRITE;
/*!40000 ALTER TABLE `store` DISABLE KEYS */;
INSERT INTO `store` VALUES (7,'皇贵建材库','',2,26.596319,104.849106,99999999,1,'2018-07-10 12:40:09','1999-12-31 16:00:00');
/*!40000 ALTER TABLE `store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storesetting`
--

DROP TABLE IF EXISTS `storesetting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storesetting` (
  `storeId` int(11) NOT NULL,
  `carDiscountOn` tinyint(4) DEFAULT '0',
  `carDiscountMinPrice` decimal(10,0) DEFAULT '0',
  `carDiscount` decimal(10,0) DEFAULT '10',
  `carFreeOn` tinyint(4) DEFAULT '0',
  `carFreeMinPrice` decimal(10,0) DEFAULT '0',
  `carFreeMaxDistance` decimal(10,0) DEFAULT '10',
  `carryPrice` decimal(10,0) DEFAULT '10',
  `maxDistance` float DEFAULT '20',
  `lat` double DEFAULT '0',
  `lng` double DEFAULT '0',
  `address` varchar(256) DEFAULT '',
  `phoneNo` varchar(32) DEFAULT '',
  PRIMARY KEY (`storeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storesetting`
--

LOCK TABLES `storesetting` WRITE;
/*!40000 ALTER TABLE `storesetting` DISABLE KEYS */;
INSERT INTO `storesetting` VALUES (7,1,9999999,10,1,9999999,9999999,0,100000000,0,0,'贵州省六盘水市XXXX','XXXXXXX');
/*!40000 ALTER TABLE `storesetting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `syssetting`
--

DROP TABLE IF EXISTS `syssetting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `syssetting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `scoreAddRate` decimal(10,2) DEFAULT '1.00',
  `moneyAddRate` decimal(10,2) DEFAULT '0.01',
  `phoneNo` varchar(32) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `syssetting`
--

LOCK TABLES `syssetting` WRITE;
/*!40000 ALTER TABLE `syssetting` DISABLE KEYS */;
INSERT INTO `syssetting` VALUES (1,0.00,0.00,'13219001125');
/*!40000 ALTER TABLE `syssetting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transferlog`
--

DROP TABLE IF EXISTS `transferlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transferlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `username` varchar(64) DEFAULT NULL,
  `money` decimal(10,2) NOT NULL,
  `bankName` varchar(128) DEFAULT '',
  `bankAccount` varchar(128) DEFAULT '',
  `bankUserName` varchar(128) DEFAULT '',
  `state` tinyint(4) DEFAULT '0',
  `comment` varchar(256) DEFAULT '',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `image` mediumblob,
  `phoneNo` varchar(32) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_transferLog_userId` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transferlog`
--

LOCK TABLES `transferlog` WRITE;
/*!40000 ALTER TABLE `transferlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `transferlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phoneNo` varchar(16) DEFAULT '',
  `password` varchar(16) NOT NULL,
  `userKey` varchar(64) NOT NULL DEFAULT '',
  `code` varchar(6) DEFAULT '',
  `reg` tinyint(4) DEFAULT '0',
  `vip` tinyint(4) DEFAULT '0',
  `money` decimal(10,2) DEFAULT '0.00',
  `score` decimal(10,2) DEFAULT '0.00',
  `sex` tinyint(4) DEFAULT '0',
  `email` varchar(64) DEFAULT '',
  `name` varchar(32) DEFAULT '',
  `totalConsume` decimal(10,2) DEFAULT '0.00',
  `totalTiCheng` decimal(10,2) DEFAULT '0.00',
  `createdAt` timestamp NOT NULL DEFAULT '1999-12-31 16:00:00',
  `updatedAt` timestamp NOT NULL DEFAULT '1999-12-31 16:00:00',
  `token` varchar(64) NOT NULL,
  `role` int(11) DEFAULT '0',
  `followUserId` int(11) DEFAULT '0',
  `lat` double DEFAULT '0',
  `lng` double DEFAULT '0',
  `curStoreId` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_user_key` (`userKey`),
  KEY `idx_user_phoneNo` (`phoneNo`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (59,'13219001125','','1','',1,0,0.00,0.00,1,'','博',0.00,0.00,'2018-07-10 14:41:42','2018-10-21 02:17:01','8Ys/CFsJuCwL6PX/1ct6fRpow5EnUKEwbwZdwXXhoTA=',2,0,30.494801,104.050797,7),(60,'','','obWDp0deIBtiHr2kZbakKBYiGYgs','',0,0,0.00,0.00,2,'','清蒸',47.95,0.00,'2018-07-10 14:41:43','2018-07-10 15:39:08','eD9dRFOz727TnJ08YQn8J6mEPF8Q5sOa6pnJKdG2AtE=',0,0,30.49485,104.050926,7),(61,'17623040687','','obWDp0Wb1b6GabJmbbIZMcE_G2P8','',1,0,0.00,0.00,1,'','苏小中',0.00,0.00,'2018-07-11 00:02:23','2018-08-12 04:13:34','GaxcMFhkF9qC2xJoqZZ5y6XQk0gdDItWDTkH2UjeOak=',1,0,26.592676,104.836601,7),(62,'','','obWDp0cfG_XUfq33uYZ-whmpdNnY','',0,0,0.00,0.00,1,'','stonger',0.00,0.00,'2018-07-11 13:50:42','1999-12-31 16:00:00','E3W/3SPiw24Rn9DypqKx1QnJ8250tospBtagUhZaJ8A=',1,0,26.594284,104.839996,7),(63,'','','obWDp0Xfm1uF7CcU_8qVaX2IRwpU','',0,0,0.00,0.00,1,'','子弹OMG!',0.00,0.00,'2018-07-16 11:40:29','1999-12-31 16:00:00','zS7t0Bx/WofiD6ICKVzVwxRUYVxoQzpIRliaxogLfqc=',1,0,26.595316,104.851418,7),(64,'','','obWDp0bXkYCYDx1meh0N6Xc7AwTw','',0,0,0.00,0.00,1,'','涛',0.00,0.00,'2018-07-16 11:59:36','1999-12-31 16:00:00','AGrlP1iSK0zS4ygo/w8CiQvcdBuw/0SZXKhpHGYkb94=',0,0,0,0,7),(65,'','','obWDp0VOU9HxbNer-sfjL8CXmGhc','',0,0,0.00,0.00,1,'','Zhangzeli',0.00,0.00,'2018-07-16 13:02:36','1999-12-31 16:00:00','8lvkQmNCuxC8ufBnOuuEmSCmnChhWKKjQaSKKQVYFGw=',0,0,30.754335,103.918793,7),(66,'','','obWDp0cInte3tVq2wwjD4ftgMjsc','',0,0,0.00,0.00,1,'','正能量',0.00,0.00,'2018-07-16 13:11:10','1999-12-31 16:00:00','ofzE4zMytYpV8W9D/exUHjqCrgAZlm8XrZrEyHx17uo=',1,0,36.706142,119.189476,7),(67,'','','obWDp0abT_NiHGUKwT6IZN7kQku0','',0,0,0.00,0.00,1,'','人生就是一场梦จุ๊บ',0.00,0.00,'2018-07-26 00:16:36','1999-12-31 16:00:00','GxBMGgWAzM0IwR7aBAZiXagf5H/ex9q2KxIgEyQFw/I=',1,0,26.593441,104.84137,7),(68,'18286899909','','obWDp0XSo8XxRP58BnyZ7ySlEmuI','',1,0,0.00,0.00,1,'505175899@qq.com','野心勃勃گق',0.00,0.00,'2018-07-26 00:17:23','2018-08-12 07:33:46','xBqtk9ONgVInhR0GzY4vD8OkXhLRFEeWfCkrSsh4Bk4=',1,61,26.593849,104.839821,7),(69,'','','obWDp0U0-l0YcS83NSAvkdGA8ZEk','',0,0,0.00,0.00,1,'','Mr.H',0.00,0.00,'2018-08-04 09:11:35','1999-12-31 16:00:00','Xsphf6SkpRPLrJSEjctxeMWLBTpDC/z7tR9zUXKofGU=',1,0,0,0,7),(70,'','','obWDp0Ttr6JTWlfaoa8zGHcwkzpg','',0,0,0.00,0.00,1,'','从头再来',0.00,0.00,'2018-08-15 00:12:09','1999-12-31 16:00:00','8JEIeg1DL3o1zoaYOScT1s8An629/luKlGJWNE9lioM=',1,0,30.7076,104.092903,7),(71,'','','obWDp0QgOoJ4TUTqHea1mwU8ANFI','',0,0,0.00,0.00,1,'','。',0.00,0.00,'2018-08-15 00:16:17','1999-12-31 16:00:00','gBaABrooKWhi7dqyubn33thEajL4wdrmH8v5Y/O3Dds=',1,0,25.716,104.446198,7),(72,'','','obWDp0bG76xNtYsyZLoINVdwcJHk','',0,0,0.00,0.00,1,'','Yang',0.00,0.00,'2018-08-18 06:54:28','1999-12-31 16:00:00','MQ7J6yklgRzvmzMWOnbWzj8myx6e2QdWry3Ty4A/NVo=',0,0,0,0,7),(73,'','','obWDp0f4-NOeDZ_ecKXBUqNDwzHE','',0,0,0.00,0.00,1,'',' 目光聚集之处 ',0.00,0.00,'2018-08-18 09:37:56','1999-12-31 16:00:00','9LWVaZZ8DoA4pajk6NunrxsY5wsooJAEvyCsgHSTqRg=',0,0,24.998281,102.772697,7),(74,'','','obWDp0UJXcTSbpFQlHFZfkEGnA58','',0,0,0.00,0.00,0,'','未知',0.00,0.00,'2018-08-31 03:31:27','1999-12-31 16:00:00','lSxY0Hu8uF8IgjYDQawxG1a/OasU1kcRrMKs9VUcqnk=',0,0,0,0,7),(75,'','','obWDp0RnVK459Tm66-MM3UrajMaQ','',0,0,0.00,0.00,0,'','未知',0.00,0.00,'2018-10-17 01:49:19','1999-12-31 16:00:00','GS83SWQWVREVBU1ARPKPmlStlRxFzYYr7f8DDI0/Vxg=',0,0,0,0,7),(76,'15885361258','','obWDp0RppgMNs_sOzlibIp999hO0','',1,0,0.00,0.00,0,'','未知',0.00,0.00,'2018-11-26 12:40:52','2018-11-26 12:41:18','ffGvPX7vBzx3ng5CHGwxgqHz0aYIbiCGScnVUKrSOfM=',0,0,26.591021,104.841461,7),(77,'','','obWDp0TNBbppdd-UYb2-2eeTBO2Q','',0,0,0.00,0.00,0,'','未知',0.00,0.00,'2018-11-26 13:02:54','2018-11-26 13:03:12','H3xxbhdSmlf2XsdqPZLyx3QgHq7YqSRJrY8ZIoua/7g=',0,0,0,0,7),(78,'','','obWDp0TP3Gz54YJbP-_qg5VnTRVU','',0,0,0.00,0.00,1,'','啥子都求不懂 15885369688（张）',0.00,0.00,'2018-11-26 13:10:45','2018-11-26 13:10:45','M06LQyTiWSaewoxzbTKA3Z5ZSaaPEATVx7yHlJUtGjI=',0,0,0,0,7),(79,'','','obWDp0Z2_V0VbXJdNzqHTNbejt2k','',0,0,0.00,0.00,0,'','黔西雨虹防水总代',0.00,0.00,'2018-11-26 13:12:45','2018-11-26 13:12:45','rukNfPUfUV5pVKMDfiD0MxuTqA3Xds34fjhDgQFZ9NU=',0,0,0,0,7),(80,'','','obWDp0dtZR-o-DEP5T0J5PXofyac','',0,0,0.00,0.00,1,'','威宁',0.00,0.00,'2018-11-26 13:13:40','1999-12-31 16:00:00','oiGHxlZY/UvqryImc9RFZLZyIy8INC1tfHN3rkMlVuw=',0,0,26.9207,104.252701,0),(81,'','','obWDp0UapOkpH-_83KbyE_-tpAEo','',0,0,0.00,0.00,2,'','安羽倪心',0.00,0.00,'2018-11-26 13:14:45','2018-11-26 13:15:12','XI4dp9q2T22w5Bk9j3ccwPxf1VPzwa8Asia6X16FvgM=',0,0,0,0,7),(82,'','','obWDp0W0p0RWEg5hVKopLm2UXAvo','',0,0,0.00,0.00,2,'','AAA大鵬      若之如初见',0.00,0.00,'2018-11-26 13:15:00','2018-11-26 13:15:00','HAjaMxeOlax7GfSNPKjSUPLxUi7CmQrZMVDb8KSPNNw=',0,0,25.094049,104.88063,7),(83,'','','obWDp0VnlYqXiv5Q9PMDH1LWlipw','',0,0,0.00,0.00,2,'','A皇贵建材批发19808414081',0.00,0.00,'2018-11-26 13:15:14','2018-11-26 13:15:16','mIYs3PrQ/Gj5U9UAiLM7cNRMuqpQFrfWItX1guNrX58=',0,0,25.443783,106.745834,7),(84,'','','obWDp0ef8Kty8CB6N2gFZ3CAmIKY','',0,0,0.00,0.00,1,'','杨勇关岭辅料批发，18083388886！',0.00,0.00,'2018-11-26 13:15:29','1999-12-31 16:00:00','yrWoV2usC68rEcAbu6gPNKrxjNtnPSrUAumvKn7iDRM=',0,0,25.938091,105.613747,0),(85,'','','obWDp0ZHCmc3vgX5n85ClrLXL8fk','',0,0,0.00,0.00,0,'','陈余',0.00,0.00,'2018-11-26 13:15:37','2018-11-26 13:16:37','Z1jEweK0Z7ukP9/8TV8IPbWbK9ahTahFzw3EXXulL/0=',0,0,0,0,7),(86,'','','obWDp0UzHg3bRPrkoqfiinY5FSF8','',0,0,0.00,0.00,0,'','未知',0.00,0.00,'2018-11-26 13:16:48','2018-11-26 13:17:16','bxGvKTAuS0OjYVP8xj2Y9eBRZIJMrSbez8l7AFWRTWA=',0,0,0,0,7),(87,'','','obWDp0XrD-3mJXyo2jecrWkf5m1g','',0,0,0.00,0.00,0,'','未知',0.00,0.00,'2018-11-26 13:29:21','2018-11-26 13:29:21','F9g/4u2lc1HHfzya04ER08d1U83C1L9Wsh9gj209YeM=',0,0,0,0,7),(88,'','','obWDp0WDBKO8QUcOco0a-klzMDh4','',0,0,0.00,0.00,1,'','织金飞翔15628055618',0.00,0.00,'2018-11-26 13:30:09','2018-11-28 14:48:13','86Iyc91SDvcRvV487WedmEq160i4g/FrFQTBgq03UZU=',0,0,26.680531,105.763695,7),(89,'','','obWDp0bpl2BHZAdzi7aI40HPnBiM','',0,0,0.00,0.00,0,'','AAA凯里.皇贵建材18798528080',0.00,0.00,'2018-11-26 13:32:16','2018-11-26 13:32:16','39RClZCDP92TKujHdu36AFW7qf8HWxoiD6eRgdgwu4Y=',0,0,0,0,7),(90,'','','obWDp0Wt0KPy_tJXIeOQyYwVSneI','',0,0,0.00,0.00,0,'','宣威友成建材配送中心18182902627',0.00,0.00,'2018-11-26 13:32:42','2018-11-26 13:32:57','a36XkDTNeju1Mva0l504gOojAguUYipZCp55BLP8c70=',0,0,26.254625,104.093613,7),(91,'','','obWDp0RBLtMgAH7904p28fbT0jsE','',0,0,0.00,0.00,1,'','陌路15213480706',0.00,0.00,'2018-11-26 13:39:38','2018-11-26 13:40:16','Cnmsubd6BZButsxD9f9J1BcqX7xqROjcx7N6Euvr9Ak=',0,0,26.236504,105.903,7),(92,'','','obWDp0dVTUBAy8q42_8ABDU6R1V4','',0,0,0.00,0.00,0,'','未知',0.00,0.00,'2018-11-26 13:53:15','2018-11-26 13:53:48','0/tciXbinxhxVnklEpgJwPh5R5AzpKGFjBax/nfzDFA=',0,0,0,0,7),(93,'','','obWDp0RXrifPraiWEIRV7g05yKWo','',0,0,0.00,0.00,1,'','积极进取',0.00,0.00,'2018-11-26 13:58:07','2018-11-26 13:58:07','DqMppEvevjQPAxbzO8hdrxzN5qC4Q5TzCvpArkHMaqg=',0,0,0,0,7),(94,'','','obWDp0TsvV8UEB67hn-8L2wbol0M','',0,0,0.00,0.00,0,'','未知',0.00,0.00,'2018-11-26 14:02:46','2018-11-26 14:03:46','xpY9VyzgYBGapPxDogYJIPFMsWsG2Bm3Lmuheb48ryY=',0,0,0,0,7),(95,'','','obWDp0SwO2xS0DP6JNVA3ZNMRpis','',0,0,0.00,0.00,0,'','未知',0.00,0.00,'2018-11-26 14:23:35','2018-11-26 14:25:24','BxMoqJQRlyRTDmiwkjVQEWpG8kTkblNqvBC/kP5VJx4=',0,0,27.281199,105.250343,7),(96,'','','obWDp0dhcDPSu24qcX73XRfD51Qo','',0,0,0.00,0.00,0,'','未知',0.00,0.00,'2018-11-26 14:31:32','2018-11-26 14:32:07','CaXjlmxvWeRT3NL3OPTiDFpqAYF6ajeBJHlzAPZLaTw=',0,0,0,0,7),(97,'','','obWDp0RbDvFAYv8MVeZycSQPUOk0','',0,0,0.00,0.00,0,'','未知',0.00,0.00,'2018-11-26 19:00:39','2018-11-26 19:00:39','TPOrwrJipxYkelhWUzJ29ASnhoP/ZTU/RZyOHbvuTF0=',0,0,0,0,7),(98,'','','obWDp0VQQgOl7HqnPpyO7azJIYtw','',0,0,0.00,0.00,0,'','未知',0.00,0.00,'2018-11-26 20:40:30','2018-11-26 20:40:30','sIyqv3j/5xi3EU2Zprx9SxMosH7tdXGOxFEEO2NjNu4=',0,0,0,0,7),(99,'','','obWDp0ar0b0mFnavRjyjrLnwrHqk','',0,0,0.00,0.00,2,'','遵义辅料批发配送中心～春',0.00,0.00,'2018-11-26 23:51:21','2018-11-26 23:52:47','DJra/1ZI6sA/9NMfv6Defx6GydZbJt3HNa60XBCT6FI=',0,0,27.683544,106.932259,7),(100,'','','obWDp0Vr1CGVEkqbz3G5Z6mX4a_w','',0,0,0.00,0.00,2,'','罗甸皇贵建材17398834396向勇',0.00,0.00,'2018-11-27 00:03:58','2018-11-27 00:06:00','oPAHSdhykIeex8bkqtHJVDwqAkzd/1EpYFXn/ZVNXxs=',0,0,25.441433,106.742516,7),(101,'','','obWDp0ReJ5GmBd39ZdOsFBy8bqKA','',0,0,0.00,0.00,0,'','未知',0.00,0.00,'2018-11-27 00:04:14','2018-11-27 00:05:14','PcWcW2mFN8oKEjrtVnO9xU1xCMRKfpfHeTjqErchMQs=',0,0,0,0,7),(102,'','','obWDp0WnCOeMwdDAoZ_nzbLNC2OE','',0,0,0.00,0.00,2,'','小丽',0.00,0.00,'2018-11-27 00:29:59','2018-11-27 00:32:39','aC2ZMeWTsgoj7qLoXwnUjKxaDTVxgy/WVx1/fF64wBQ=',0,0,26.5686,106.652985,7),(103,'','','obWDp0YzEm0L8P3R0VAMQigwjIjA','',0,0,0.00,0.00,1,'','AAA建材辅料配送17828090646',0.00,0.00,'2018-11-27 01:11:49','2018-11-27 01:12:49','Cxb4kvacKI5lLHjLCuAp2NJE92By8GvamCyh2Qr7nmY=',0,0,0,0,0),(104,'','','obWDp0TYfcEyXQtcazdMOhtQjUqY','',0,0,0.00,0.00,1,'','标牌.吴华成',0.00,0.00,'2018-11-27 03:30:40','2018-11-27 03:31:40','xHqDQ3swI8J7wQKUURbY2K8aEKn7ii5VM1Mv0U95CkE=',0,0,0,0,7),(105,'','','obWDp0cpTkCWIgWJEGSrH3E99UqE','',0,0,0.00,0.00,1,'','111建材配送中心',0.00,0.00,'2018-11-27 06:05:17','2018-11-27 06:05:18','VdtTT/mKkfMPVDEh88fYPXtBbaxs9MXMKvOOnYVEkMg=',0,0,0,0,0),(106,'','','obWDp0aGP9PHmJOsk0T3Z0H-JXnQ','',0,0,0.00,0.00,1,'','18798254458都匀建材辅料批发配送',0.00,0.00,'2018-11-27 15:57:50','2018-11-27 15:58:02','EP7cXLLra0FfVzAOe3H5WjE0Es4SYoBlxiWlYamciII=',0,0,25.336439,107.452881,7),(107,'','','obWDp0S8tuqT9RwPCl93oSyO4O20','',0,0,0.00,0.00,1,'','博',0.00,0.00,'2018-11-28 01:47:18','2018-11-28 01:47:20','gWoxkZokKHTcyqJL4J36LGASXXqj0KpnnyITFFAx1DI=',0,0,30.494877,104.050331,7),(108,'','','obWDp0Z_lcP7ihPlfvXLJOxnOr-c','',0,0,0.00,10.00,0,'','爱你不用说',0.00,0.00,'2018-11-29 15:15:37','2018-11-29 15:15:37','x4OMorQyhMbWCNzUhsUWx7VDlTzTfJMcx834AcAS8Y4=',0,0,0,0,7),(109,'','','obWDp0SPFjsfauq4OMhx9r8NdPlc','',0,0,0.00,10.00,1,'','蒲朝祥',0.00,0.00,'2018-12-02 23:51:22','2018-12-02 23:51:22','ClGPGsFajk3qSBSWFXOOGUOUOyqFscDHGeEq9eHy60c=',0,0,0,0,7),(110,'','','obWDp0SWhiMlCMCxGN-hFY-luHEc','',0,0,0.00,10.00,1,'','江湖一个任我行(ಡωಡ)',0.00,0.00,'2018-12-08 06:07:25','2018-12-08 06:07:25','smV3r4qLsrTzacX2BFLPx6/b8PKchLrhRfGAk7EJ57Y=',0,0,0,0,7),(111,'','','obWDp0ZSRkASxpDkKApKLyrOgS78','',0,0,0.00,10.00,1,'','刘 省',0.00,0.00,'2018-12-10 02:07:05','2018-12-10 02:07:05','qkoyhL//QZIVyDr/W7xecESsHpWJanzA767ayHSfJNQ=',0,0,26.592648,106.770821,7);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_message`
--

DROP TABLE IF EXISTS `web_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `email` varchar(64) DEFAULT '',
  `phone` varchar(32) DEFAULT '',
  `content` varchar(512) DEFAULT '',
  `enable` tinyint(4) DEFAULT '0',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_message`
--

LOCK TABLES `web_message` WRITE;
/*!40000 ALTER TABLE `web_message` DISABLE KEYS */;
INSERT INTO `web_message` VALUES (2,'王博','王博','13219001125','商城做的很好，购买很方便。',1,'2018-06-19 14:00:26'),(4,'嗷嗷的','','','很方便，老百姓的好东西',1,'2018-06-19 15:09:56'),(5,'小鸡宝宝','21563123','1345421231','不错的商城',1,'2018-07-10 04:55:49');
/*!40000 ALTER TABLE `web_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_product`
--

DROP TABLE IF EXISTS `web_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT '',
  `label1` varchar(256) DEFAULT '',
  `label2` varchar(256) DEFAULT '',
  `label3` varchar(256) DEFAULT '',
  `imgPath` varchar(256) DEFAULT '',
  `rank` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_product`
--

LOCK TABLES `web_product` WRITE;
/*!40000 ALTER TABLE `web_product` DISABLE KEYS */;
INSERT INTO `web_product` VALUES (1,'','材料： 桦木，橡木，胡桃木，枫木 ，胡桃等',' 颜色： 样式，大小，可根据客户要求加工',' 生产量： 每月产量150,000 平方米','http://www.sjhgjck.com/static//res//web/product/20180709/201869232932_235765.jpg',0),(2,'','材料： 桦木，橡木，胡桃木，枫木 ，胡桃等',' 颜色： 样式，大小，可根据客户要求加工',' 生产量： 每月产量150,000 平方米','http://www.sjhgjck.com/static//res//web/product/20180709/201869232937_793218.jpg',0),(3,'','材料： 桦木，橡木，胡桃木，枫木 ，胡桃等',' 颜色： 样式，大小，可根据客户要求加工',' 生产量： 每月产量150,000 平方米','http://www.sjhgjck.com/static//res//web/product/20180709/201869232942_222755.jpg',0);
/*!40000 ALTER TABLE `web_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `websetting`
--

DROP TABLE IF EXISTS `websetting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `websetting` (
  `phoneNo` varchar(128) DEFAULT '',
  `email` varchar(64) DEFAULT '',
  `address` varchar(256) DEFAULT '',
  `qq` varchar(20) DEFAULT '',
  `lat` double DEFAULT '30.663484',
  `lng` double DEFAULT '104.07215'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `websetting`
--

LOCK TABLES `websetting` WRITE;
/*!40000 ALTER TABLE `websetting` DISABLE KEYS */;
INSERT INTO `websetting` VALUES ('18380643297','advance345@126.com','四川省成都市xxx区xxx街123号','634255581',30.663484,104.07215);
/*!40000 ALTER TABLE `websetting` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-20 10:39:05
