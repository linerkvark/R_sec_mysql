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
-- Table structure for table `realms`
--

DROP TABLE IF EXISTS `realms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `realms` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `realmname` varchar(128) DEFAULT NULL,
  `type` varchar(32) DEFAULT NULL,
  `authhost` varchar(256) DEFAULT NULL,
  `accthost` varchar(256) DEFAULT NULL,
  `secret` varchar(128) DEFAULT NULL,
  `ldflag` varchar(64) DEFAULT NULL,
  `nostrip` int(8) DEFAULT NULL,
  `hints` int(8) DEFAULT NULL,
  `notrealm` int(8) DEFAULT NULL,
  `creationdate` datetime DEFAULT NULL,
  `creationby` varchar(128) DEFAULT NULL,
  `updatedate` datetime DEFAULT NULL,
  `updateby` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `realms`
--

LOCK TABLES `realms` WRITE;
/*!40000 ALTER TABLE `realms` DISABLE KEYS */;
/*!40000 ALTER TABLE `realms` ENABLE KEYS */;
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
