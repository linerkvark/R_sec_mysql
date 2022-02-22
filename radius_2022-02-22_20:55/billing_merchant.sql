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
-- Table structure for table `billing_merchant`
--

DROP TABLE IF EXISTS `billing_merchant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `billing_merchant` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `username` varchar(128) NOT NULL DEFAULT '',
  `password` varchar(128) NOT NULL DEFAULT '',
  `mac` varchar(200) NOT NULL DEFAULT '',
  `pin` varchar(200) NOT NULL DEFAULT '',
  `txnId` varchar(200) NOT NULL DEFAULT '',
  `planName` varchar(128) NOT NULL DEFAULT '',
  `planId` int(32) NOT NULL,
  `quantity` varchar(200) NOT NULL DEFAULT '',
  `business_email` varchar(200) NOT NULL DEFAULT '',
  `business_id` varchar(200) NOT NULL DEFAULT '',
  `txn_type` varchar(200) NOT NULL DEFAULT '',
  `txn_id` varchar(200) NOT NULL DEFAULT '',
  `payment_type` varchar(200) NOT NULL DEFAULT '',
  `payment_tax` varchar(200) NOT NULL DEFAULT '',
  `payment_cost` varchar(200) NOT NULL DEFAULT '',
  `payment_fee` varchar(200) NOT NULL DEFAULT '',
  `payment_total` varchar(200) NOT NULL DEFAULT '',
  `payment_currency` varchar(200) NOT NULL DEFAULT '',
  `first_name` varchar(200) NOT NULL DEFAULT '',
  `last_name` varchar(200) NOT NULL DEFAULT '',
  `payer_email` varchar(200) NOT NULL DEFAULT '',
  `payer_address_name` varchar(200) NOT NULL DEFAULT '',
  `payer_address_street` varchar(200) NOT NULL DEFAULT '',
  `payer_address_country` varchar(200) NOT NULL DEFAULT '',
  `payer_address_country_code` varchar(200) NOT NULL DEFAULT '',
  `payer_address_city` varchar(200) NOT NULL DEFAULT '',
  `payer_address_state` varchar(200) NOT NULL DEFAULT '',
  `payer_address_zip` varchar(200) NOT NULL DEFAULT '',
  `payment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `payment_status` varchar(200) NOT NULL DEFAULT '',
  `pending_reason` varchar(200) NOT NULL DEFAULT '',
  `reason_code` varchar(200) NOT NULL DEFAULT '',
  `receipt_ID` varchar(200) NOT NULL DEFAULT '',
  `payment_address_status` varchar(200) NOT NULL DEFAULT '',
  `vendor_type` varchar(200) NOT NULL DEFAULT '',
  `payer_status` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billing_merchant`
--

LOCK TABLES `billing_merchant` WRITE;
/*!40000 ALTER TABLE `billing_merchant` DISABLE KEYS */;
/*!40000 ALTER TABLE `billing_merchant` ENABLE KEYS */;
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
