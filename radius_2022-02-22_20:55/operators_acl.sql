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
-- Table structure for table `operators_acl`
--

DROP TABLE IF EXISTS `operators_acl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operators_acl` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `operator_id` int(32) NOT NULL,
  `file` varchar(128) NOT NULL,
  `access` tinyint(8) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=252 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operators_acl`
--

LOCK TABLES `operators_acl` WRITE;
/*!40000 ALTER TABLE `operators_acl` DISABLE KEYS */;
INSERT INTO `operators_acl` VALUES (114,6,'acct_custom_query',1),(115,6,'acct_active',1),(116,6,'acct_all',1),(117,6,'acct_ipaddress',1),(118,6,'acct_username',1),(119,6,'acct_date',1),(120,6,'acct_nasipaddress',1),(121,6,'acct_hotspot_accounting',1),(122,6,'acct_hotspot_compare',1),(123,6,'acct_maintenance_cleanup',1),(124,6,'acct_maintenance_delete',1),(125,6,'acct_plans_usage',1),(126,6,'bill_history_query',1),(127,6,'bill_merchant_transactions',1),(128,6,'bill_plans_list',1),(129,6,'bill_plans_del',1),(130,6,'bill_plans_edit',1),(131,6,'bill_plans_new',1),(132,6,'bill_pos_del',1),(133,6,'bill_pos_list',1),(134,6,'bill_pos_new',1),(135,6,'bill_pos_edit',1),(136,6,'bill_rates_date',1),(137,6,'bill_rates_new',1),(138,6,'bill_rates_list',1),(139,6,'bill_rates_del',1),(140,6,'bill_rates_edit',1),(141,6,'config_backup_managebackups',1),(142,6,'config_backup_createbackups',1),(143,6,'config_user',1),(144,6,'config_db',1),(145,6,'config_lang',1),(146,6,'config_interface',1),(147,6,'config_logging',1),(148,6,'config_maint_test_user',1),(149,6,'config_maint_disconnect_user',1),(150,6,'config_operators_list',1),(151,6,'config_operators_new',1),(152,6,'config_operators_del',1),(153,6,'config_operators_edit',1),(154,6,'gis_editmap',1),(155,6,'gis_viewmap',1),(156,6,'graphs_alltime_logins',1),(157,6,'graphs_overall_download',1),(158,6,'graphs_overall_logins',1),(159,6,'graphs_alltime_traffic_compare',1),(160,6,'graphs_overall_upload',1),(161,6,'graphs_logged_users',1),(162,6,'mng_rad_attributes_import',1),(163,6,'mng_rad_attributes_list',1),(164,6,'mng_rad_attributes_edit',1),(165,6,'mng_rad_attributes_del',1),(166,6,'mng_rad_attributes_new',1),(167,6,'mng_rad_attributes_search',1),(168,6,'mng_rad_groupcheck_new',1),(169,6,'mng_rad_groupreply_search',1),(170,6,'mng_rad_groupreply_list',1),(171,6,'mng_rad_groupreply_edit',1),(172,6,'mng_rad_groupcheck_search',1),(173,6,'mng_rad_groupcheck_list',1),(174,6,'mng_rad_groupcheck_edit',1),(175,6,'mng_rad_groupreply_del',1),(176,6,'mng_rad_groupreply_new',1),(177,6,'mng_rad_groupcheck_del',1),(178,6,'mng_hs_edit',1),(179,6,'mng_hs_list',1),(180,6,'mng_hs_del',1),(181,6,'mng_hs_new',1),(182,6,'mng_rad_ippool_new',1),(183,6,'mng_rad_ippool_del',1),(184,6,'mng_rad_ippool_list',1),(185,6,'mng_rad_ippool_edit',1),(186,6,'mng_rad_nas_edit',1),(187,6,'mng_rad_nas_list',1),(188,6,'mng_rad_nas_del',1),(189,6,'mng_rad_nas_new',1),(190,6,'mng_rad_profiles_edit',1),(191,6,'mng_rad_profiles_del',1),(192,6,'mng_rad_profiles_new',1),(193,6,'mng_rad_profiles_duplicate',1),(194,6,'mng_rad_profiles_list',1),(195,6,'mng_rad_proxys_new',1),(196,6,'mng_rad_proxys_del',1),(197,6,'mng_rad_proxys_list',1),(198,6,'mng_rad_proxys_edit',1),(199,6,'mng_rad_realms_new',1),(200,6,'mng_rad_realms_del',1),(201,6,'mng_rad_realms_list',1),(202,6,'mng_rad_realms_edit',1),(203,6,'mng_rad_usergroup_edit',1),(204,6,'mng_rad_usergroup_list_user',1),(205,6,'mng_rad_usergroup_del',1),(206,6,'mng_rad_usergroup_new',1),(207,6,'mng_rad_usergroup_list',1),(208,6,'mng_search',1),(209,6,'mng_del',1),(210,6,'mng_new',1),(211,6,'mng_import_users',1),(212,6,'mng_batch',1),(213,6,'mng_edit',1),(214,6,'mng_new_quick',1),(215,6,'mng_list_all',1),(216,6,'rep_lastconnect',1),(217,6,'rep_online',1),(218,6,'rep_history',1),(219,6,'rep_topusers',1),(220,6,'rep_logs_radius',1),(221,6,'rep_logs_boot',1),(222,6,'rep_logs_system',1),(223,6,'rep_logs_daloradius',1),(224,6,'rep_stat_services',1),(225,6,'rep_stat_server',1),(226,6,'mng_rad_hunt_del',1),(227,6,'mng_rad_hunt_edit',1),(228,6,'mng_rad_hunt_list',1),(229,6,'mng_rad_hunt_new',1),(230,6,'config_mail',1),(231,6,'mng_batch_add',1),(232,6,'mng_batch_list',1),(233,6,'mng_batch_del',1),(234,6,'bill_invoice_list',1),(235,6,'bill_invoice_new',1),(236,6,'bill_invoice_edit',1),(237,6,'bill_invoice_del',1),(238,6,'bill_payment_types_new',1),(239,6,'bill_payment_types_edit',1),(240,6,'bill_payment_types_list',1),(241,6,'bill_payment_types_del',1),(242,6,'bill_payments_list',1),(243,6,'bill_payments_edit',1),(244,6,'bill_payments_new',1),(245,6,'bill_payments_del',1),(246,6,'rep_newusers',1),(247,6,'bill_invoice_report',1),(248,6,'config_reports_dashboard',1),(249,6,'rep_stat_ups',1),(250,6,'rep_stat_raid',1),(251,6,'rep_stat_cron',1);
/*!40000 ALTER TABLE `operators_acl` ENABLE KEYS */;
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
