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

-- CHANGE MASTER TO MASTER_LOG_FILE='mysql-bin.000001', MASTER_LOG_POS=893641;

--
-- GTID to start replication from
--

-- SET GLOBAL gtid_slave_pos='0-2-159';

--
-- Table structure for table `operators_acl_files`
--

DROP TABLE IF EXISTS `operators_acl_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operators_acl_files` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `file` varchar(128) NOT NULL,
  `category` varchar(128) NOT NULL,
  `section` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=140 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operators_acl_files`
--

LOCK TABLES `operators_acl_files` WRITE;
/*!40000 ALTER TABLE `operators_acl_files` DISABLE KEYS */;
INSERT INTO `operators_acl_files` VALUES (2,'mng_search','Management','Users'),(3,'mng_batch','Management','Users'),(4,'mng_del','Management','Users'),(5,'mng_edit','Management','Users'),(6,'mng_new','Management','Users'),(7,'mng_new_quick','Management','Users'),(8,'mng_import_users','Management','Users'),(9,'mng_list_all','Management','Users'),(10,'mng_hs_del','Management','Hotspot'),(11,'mng_hs_edit','Management','Hotspot'),(12,'mng_hs_new','Management','Hotspot'),(13,'mng_hs_list','Management','Hotspot'),(14,'mng_rad_nas_del','Management','NAS'),(15,'mng_rad_nas_edit','Management','NAS'),(16,'mng_rad_nas_new','Management','NAS'),(17,'mng_rad_nas_list','Management','NAS'),(18,'mng_rad_usergroup_del','Management','UserGroup'),(19,'mng_rad_usergroup_edit','Management','UserGroup'),(20,'mng_rad_usergroup_new','Management','UserGroup'),(21,'mng_rad_usergroup_list_user','Management','UserGroup'),(22,'mng_rad_usergroup_list','Management','UserGroup'),(23,'mng_rad_groupcheck_search','Management','Groups'),(24,'mng_rad_groupcheck_del','Management','Groups'),(25,'mng_rad_groupcheck_list','Management','Groups'),(26,'mng_rad_groupcheck_new','Management','Groups'),(27,'mng_rad_groupcheck_edit','Management','Groups'),(28,'mng_rad_groupreply_search','Management','Groups'),(29,'mng_rad_groupreply_del','Management','Groups'),(30,'mng_rad_groupreply_list','Management','Groups'),(31,'mng_rad_groupreply_new','Management','Groups'),(32,'mng_rad_groupreply_edit','Management','Groups'),(33,'mng_rad_profiles_new','Management','Profiles'),(34,'mng_rad_profiles_edit','Management','Profiles'),(35,'mng_rad_profiles_duplicate','Management','Profiles'),(36,'mng_rad_profiles_del','Management','Profiles'),(37,'mng_rad_profiles_list','Management','Profiles'),(38,'mng_rad_attributes_list','Management','Attributes'),(39,'mng_rad_attributes_new','Management','Attributes'),(40,'mng_rad_attributes_edit','Management','Attributes'),(41,'mng_rad_attributes_search','Management','Attributes'),(42,'mng_rad_attributes_del','Management','Attributes'),(43,'mng_rad_attributes_import','Management','Attributes'),(44,'mng_rad_realms_list','Management','Realms'),(45,'mng_rad_realms_new','Management','Realms'),(46,'mng_rad_realms_edit','Management','Realms'),(47,'mng_rad_realms_del','Management','Realms'),(48,'mng_rad_proxys_list','Management','Proxys'),(49,'mng_rad_proxys_new','Management','Proxys'),(50,'mng_rad_proxys_edit','Management','Proxys'),(51,'mng_rad_proxys_del','Management','Proxys'),(52,'mng_rad_ippool_list','Management','IPPool'),(53,'mng_rad_ippool_new','Management','IPPool'),(54,'mng_rad_ippool_edit','Management','IPPool'),(55,'mng_rad_ippool_del','Management','IPPool'),(56,'rep_topusers','Reporting','Core'),(57,'rep_online','Reporting','Core'),(58,'rep_lastconnect','Reporting','Core'),(59,'rep_history','Reporting','Core'),(60,'rep_logs_radius','Reporting','Logs'),(61,'rep_logs_system','Reporting','Logs'),(62,'rep_logs_boot','Reporting','Logs'),(63,'rep_logs_daloradius','Reporting','Logs'),(64,'rep_stat_services','Reporting','Status'),(65,'rep_stat_server','Reporting','Status'),(66,'acct_active','Accounting','General'),(67,'acct_username','Accounting','General'),(68,'acct_all','Accounting','General'),(69,'acct_date','Accounting','General'),(70,'acct_ipaddress','Accounting','General'),(71,'acct_nasipaddress','Accounting','General'),(72,'acct_hotspot_accounting','Accounting','Hotspot'),(73,'acct_hotspot_compare','Accounting','Hotspot'),(74,'acct_custom_query','Accounting','Custom'),(75,'acct_maintenance_cleanup','Accounting','Maintenance'),(76,'acct_maintenance_delete','Accounting','Maintenance'),(77,'bill_pos_del','Billing','POS'),(78,'bill_pos_new','Billing','POS'),(79,'bill_pos_list','Billing','POS'),(80,'bill_pos_edit','Billing','POS'),(81,'bill_rates_date','Billing','Rates'),(82,'bill_rates_del','Billing','Rates'),(83,'bill_rates_new','Billing','Rates'),(84,'bill_rates_edit','Billing','Rates'),(85,'bill_rates_list','Billing','Rates'),(86,'bill_merchant_transactions','Billing','Merchant'),(87,'bill_plans_del','Billing','Plans'),(88,'bill_plans_new','Billing','Plans'),(89,'bill_plans_edit','Billing','Plans'),(90,'bill_plans_list','Billing','Plans'),(91,'bill_history_query','Billing','History'),(92,'gis_editmap','GIS','General'),(93,'gis_viewmap','GIS','General'),(94,'graphs_alltime_logins','Graphs','General'),(95,'graphs_alltime_traffic_compare','Graphs','General'),(96,'graphs_overall_download','Graphs','General'),(97,'graphs_overall_upload','Graphs','General'),(98,'graphs_overall_logins','Graphs','General'),(99,'graphs_logged_users','Graphs','General'),(100,'config_db','Configuration','Core'),(101,'config_interface','Configuration','Core'),(102,'config_lang','Configuration','Core'),(103,'config_logging','Configuration','Core'),(104,'config_maint_test_user','Configuration','Maintenance'),(105,'config_maint_disconnect_user','Configuration','Maintenance'),(106,'config_operators_del','Configuration','Operators'),(107,'config_operators_list','Configuration','Operators'),(108,'config_operators_edit','Configuration','Operators'),(109,'config_operators_new','Configuration','Operators'),(110,'config_backup_createbackups','Configuration','Backup'),(111,'config_backup_managebackups','Configuration','Backup'),(112,'acct_plans_usage','Accounting','Plans'),(113,'config_user','Configuration','Core'),(114,'mng_rad_hunt_del','Management','HuntGroups'),(115,'mng_rad_hunt_edit','Management','HuntGroups'),(116,'mng_rad_hunt_list','Management','HuntGroups'),(117,'mng_rad_hunt_new','Management','HuntGroups'),(118,'config_mail','Configuration','Core'),(119,'mng_batch_add','Management','Batch'),(120,'mng_batch_list','Management','Batch'),(121,'mng_batch_del','Management','Batch'),(122,'bill_invoice_list','Billing','Invoice'),(123,'bill_invoice_new','Billing','Invoice'),(124,'bill_invoice_edit','Billing','Invoice'),(125,'bill_invoice_del','Billing','Invoice'),(126,'bill_payment_types_new','Billing','Payment Types'),(127,'bill_payment_types_edit','Billing','Payment Types'),(128,'bill_payment_types_list','Billing','Payment Types'),(129,'bill_payment_types_del','Billing','Payment Types'),(130,'bill_payments_list','Billing','Payments'),(131,'bill_payments_edit','Billing','Payments'),(132,'bill_payments_new','Billing','Payments'),(133,'bill_payments_del','Billing','Payments'),(134,'rep_newusers','Reporting','Core'),(135,'bill_invoice_report','Billing','Invoice'),(136,'config_reports_dashboard','Configuration','Reporting'),(137,'rep_stat_ups','Reporting','Status'),(138,'rep_stat_raid','Reporting','Status'),(139,'rep_stat_cron','Reporting','Status');
/*!40000 ALTER TABLE `operators_acl_files` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-16 21:54:22
