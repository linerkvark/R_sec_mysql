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
-- Table structure for table `node`
--

DROP TABLE IF EXISTS `node`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `node` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Time of last checkin',
  `netid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `latitude` varchar(20) NOT NULL,
  `longitude` varchar(20) NOT NULL,
  `owner_name` varchar(50) NOT NULL COMMENT 'node owner''s name',
  `owner_email` varchar(50) NOT NULL COMMENT 'node owner''s email address',
  `owner_phone` varchar(25) NOT NULL COMMENT 'node owner''s phone number',
  `owner_address` varchar(100) NOT NULL COMMENT 'node owner''s address',
  `approval_status` varchar(1) NOT NULL COMMENT 'approval status: A (accepted), R (rejected), P (pending)',
  `ip` varchar(20) NOT NULL COMMENT 'ROBIN',
  `mac` varchar(20) NOT NULL COMMENT 'ROBIN',
  `uptime` varchar(100) NOT NULL COMMENT 'ROBIN',
  `robin` varchar(20) NOT NULL COMMENT 'ROBIN: robin version',
  `batman` varchar(20) NOT NULL COMMENT 'ROBIN: batman version',
  `memfree` varchar(20) NOT NULL COMMENT 'ROBIN',
  `nbs` mediumtext NOT NULL COMMENT 'ROBIN: neighbor list',
  `gateway` varchar(20) NOT NULL COMMENT 'ROBIN: nearest gateway',
  `gw-qual` varchar(20) NOT NULL COMMENT 'ROBIN: quality of nearest gateway',
  `routes` mediumtext NOT NULL COMMENT 'ROBIN: route to nearest gateway',
  `users` char(3) NOT NULL COMMENT 'ROBIN: current number of users',
  `kbdown` varchar(20) NOT NULL COMMENT 'ROBIN: downloaded kb',
  `kbup` varchar(20) NOT NULL COMMENT 'ROBIN: uploaded kb',
  `hops` varchar(3) NOT NULL COMMENT 'ROBIN: hops to gateway',
  `rank` varchar(3) NOT NULL COMMENT 'ROBIN: ???, not currently used for anything',
  `ssid` varchar(20) NOT NULL COMMENT 'ROBIN: ssid, not currently used for anything',
  `pssid` varchar(20) NOT NULL COMMENT 'ROBIN: pssid, not currently used for anything',
  `gateway_bit` tinyint(1) NOT NULL COMMENT 'ROBIN derivation: is this node a gateway?',
  `memlow` varchar(20) NOT NULL COMMENT 'ROBIN derivation: lowest reported memory on the node',
  `usershi` char(3) NOT NULL COMMENT 'ROBIN derivation: highest number of users',
  `cpu` float NOT NULL DEFAULT 0,
  `wan_iface` varchar(128) DEFAULT NULL,
  `wan_ip` varchar(128) DEFAULT NULL,
  `wan_mac` varchar(128) DEFAULT NULL,
  `wan_gateway` varchar(128) DEFAULT NULL,
  `wifi_iface` varchar(128) DEFAULT NULL,
  `wifi_ip` varchar(128) DEFAULT NULL,
  `wifi_mac` varchar(128) DEFAULT NULL,
  `wifi_ssid` varchar(128) DEFAULT NULL,
  `wifi_key` varchar(128) DEFAULT NULL,
  `wifi_channel` varchar(128) DEFAULT NULL,
  `lan_iface` varchar(128) DEFAULT NULL,
  `lan_mac` varchar(128) DEFAULT NULL,
  `lan_ip` varchar(128) DEFAULT NULL,
  `wan_bup` varchar(128) DEFAULT NULL,
  `wan_bdown` varchar(128) DEFAULT NULL,
  `firmware` varchar(128) DEFAULT NULL,
  `firmware_revision` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mac` (`mac`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='node database';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node`
--

LOCK TABLES `node` WRITE;
/*!40000 ALTER TABLE `node` DISABLE KEYS */;
/*!40000 ALTER TABLE `node` ENABLE KEYS */;
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
