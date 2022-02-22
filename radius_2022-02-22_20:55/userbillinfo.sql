-- MySQL dump 10.19  Distrib 10.3.32-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: radius
-- ------------------------------------------------------
-- Server version	10.3.32-MariaDB-0ubuntu0.20.04.1-log

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
-- Position to start replication or point-in-time recovery from
--

-- CHANGE MASTER TO MASTER_LOG_FILE='mysql-bin.000004', MASTER_LOG_POS=342;

--
-- GTID to start replication from
--

-- SET GLOBAL gtid_slave_pos='0-2-159';

--
-- Table structure for table `userbillinfo`
--

DROP TABLE IF EXISTS `userbillinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userbillinfo` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(128) DEFAULT NULL,
  `planName` varchar(128) DEFAULT NULL,
  `hotspot_id` int(32) DEFAULT NULL,
  `hotspotlocation` varchar(32) DEFAULT NULL,
  `contactperson` varchar(200) DEFAULT NULL,
  `company` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `state` varchar(200) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `zip` varchar(200) DEFAULT NULL,
  `paymentmethod` varchar(200) DEFAULT NULL,
  `cash` varchar(200) DEFAULT NULL,
  `creditcardname` varchar(200) DEFAULT NULL,
  `creditcardnumber` varchar(200) DEFAULT NULL,
  `creditcardverification` varchar(200) DEFAULT NULL,
  `creditcardtype` varchar(200) DEFAULT NULL,
  `creditcardexp` varchar(200) DEFAULT NULL,
  `notes` varchar(200) DEFAULT NULL,
  `changeuserbillinfo` varchar(128) DEFAULT NULL,
  `lead` varchar(200) DEFAULT NULL,
  `coupon` varchar(200) DEFAULT NULL,
  `ordertaker` varchar(200) DEFAULT NULL,
  `billstatus` varchar(200) DEFAULT NULL,
  `lastbill` date NOT NULL DEFAULT '0000-00-00',
  `nextbill` date NOT NULL DEFAULT '0000-00-00',
  `nextinvoicedue` int(32) DEFAULT NULL,
  `billdue` int(32) DEFAULT NULL,
  `postalinvoice` varchar(8) DEFAULT NULL,
  `faxinvoice` varchar(8) DEFAULT NULL,
  `emailinvoice` varchar(8) DEFAULT NULL,
  `batch_id` int(32) DEFAULT NULL,
  `creationdate` datetime DEFAULT '0000-00-00 00:00:00',
  `creationby` varchar(128) DEFAULT NULL,
  `updatedate` datetime DEFAULT '0000-00-00 00:00:00',
  `updateby` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  KEY `planname` (`planName`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userbillinfo`
--

LOCK TABLES `userbillinfo` WRITE;
/*!40000 ALTER TABLE `userbillinfo` DISABLE KEYS */;
INSERT INTO `userbillinfo` VALUES (1,'vasya',NULL,NULL,NULL,'','','','','','','','','','','','','','','','','','0','','','','','0000-00-00','0000-00-00',0,0,'','','',NULL,'2022-02-14 20:19:00','administrator',NULL,NULL),(2,'adminpetya','',NULL,NULL,'','','','','','','','','','','','','','','','','','0','','','','','0000-00-00','0000-00-00',0,0,'','','',NULL,'2022-02-14 20:20:22','administrator','2022-02-14 20:27:52','administrator'),(3,'test','',NULL,NULL,'','','','','','','','','','','','','','','','','','0','','','','','0000-00-00','0000-00-00',0,0,'','','',NULL,'2022-02-14 21:52:05','administrator','2022-02-16 21:11:24','administrator');
/*!40000 ALTER TABLE `userbillinfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-22 20:55:31
