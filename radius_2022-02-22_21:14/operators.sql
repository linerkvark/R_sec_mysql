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
-- Table structure for table `operators`
--

DROP TABLE IF EXISTS `operators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operators` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `title` varchar(32) NOT NULL,
  `department` varchar(32) NOT NULL,
  `company` varchar(32) NOT NULL,
  `phone1` varchar(32) NOT NULL,
  `phone2` varchar(32) NOT NULL,
  `email1` varchar(32) NOT NULL,
  `email2` varchar(32) NOT NULL,
  `messenger1` varchar(32) NOT NULL,
  `messenger2` varchar(32) NOT NULL,
  `notes` varchar(128) NOT NULL,
  `lastlogin` datetime DEFAULT '0000-00-00 00:00:00',
  `creationdate` datetime DEFAULT '0000-00-00 00:00:00',
  `creationby` varchar(128) DEFAULT NULL,
  `updatedate` datetime DEFAULT '0000-00-00 00:00:00',
  `updateby` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operators`
--

LOCK TABLES `operators` WRITE;
/*!40000 ALTER TABLE `operators` DISABLE KEYS */;
INSERT INTO `operators` VALUES (6,'administrator','radius','','','','','','','','','','','','','2022-02-22 19:37:10','2009-12-07 20:12:33','admin','2009-12-07 20:14:01','administrator');
/*!40000 ALTER TABLE `operators` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-22 21:14:01
