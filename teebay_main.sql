-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: teebay_main
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add rent transaction',7,'add_renttransaction'),(26,'Can change rent transaction',7,'change_renttransaction'),(27,'Can delete rent transaction',7,'delete_renttransaction'),(28,'Can view rent transaction',7,'view_renttransaction'),(29,'Can add category',8,'add_category'),(30,'Can change category',8,'change_category'),(31,'Can delete category',8,'delete_category'),(32,'Can view category',8,'view_category'),(33,'Can add buy transaction',9,'add_buytransaction'),(34,'Can change buy transaction',9,'change_buytransaction'),(35,'Can delete buy transaction',9,'delete_buytransaction'),(36,'Can view buy transaction',9,'view_buytransaction'),(37,'Can add product',10,'add_product'),(38,'Can change product',10,'change_product'),(39,'Can delete product',10,'delete_product'),(40,'Can view product',10,'view_product'),(41,'Can add Token',11,'add_token'),(42,'Can change Token',11,'change_token'),(43,'Can delete Token',11,'delete_token'),(44,'Can view Token',11,'view_token'),(45,'Can add Token',12,'add_tokenproxy'),(46,'Can change Token',12,'change_tokenproxy'),(47,'Can delete Token',12,'delete_tokenproxy'),(48,'Can view Token',12,'view_tokenproxy');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$260000$H5VDXHeMI0RPeMJqb7JQoO$hu3l22W00fqYfmaEGlwqyrQagNgc0M5CGN9qgjONS1w=','2024-04-03 00:42:19.171540',1,'admin','','','',1,1,'2024-03-26 17:02:34.111597'),(2,'pbkdf2_sha256$260000$8wqPKkwforiG4b47iRxsGB$ouePpJ7Vvg2OYkXfYeHPxUfj1K5pwFZYvA7J9etycEU=','2024-04-01 23:50:42.937907',0,'raiyan','','','',1,1,'2024-03-31 21:39:37.000000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authtoken_token`
--

DROP TABLE IF EXISTS `authtoken_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`key`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `authtoken_token_user_id_35299eff_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authtoken_token`
--

LOCK TABLES `authtoken_token` WRITE;
/*!40000 ALTER TABLE `authtoken_token` DISABLE KEYS */;
INSERT INTO `authtoken_token` VALUES ('4bc9fb2c1dd8a4c394f921c045cd9ab2febbf0a2','2024-03-27 16:29:11.260642',1);
/*!40000 ALTER TABLE `authtoken_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2024-03-27 09:15:42.035288','1','Electronics',1,'[{\"added\": {}}]',8,1),(2,'2024-03-27 09:15:50.960801','2','Furniture',1,'[{\"added\": {}}]',8,1),(3,'2024-03-27 09:16:39.256758','3','Home Appliances',1,'[{\"added\": {}}]',8,1),(4,'2024-03-27 09:17:01.459337','4','Sporting Goods',1,'[{\"added\": {}}]',8,1),(5,'2024-03-27 09:17:19.539870','5','Outdoor',1,'[{\"added\": {}}]',8,1),(6,'2024-03-27 09:17:29.316935','6','Toys',1,'[{\"added\": {}}]',8,1),(7,'2024-03-27 09:18:27.056013','6','LEGO Classic Brick Set',2,'[{\"changed\": {\"fields\": [\"Categories\"]}}]',10,1),(8,'2024-03-27 09:18:39.561981','5','Camping Tent',2,'[{\"changed\": {\"fields\": [\"Categories\"]}}]',10,1),(9,'2024-03-27 09:18:45.183097','4','Yoga Mat',2,'[{\"changed\": {\"fields\": [\"Categories\"]}}]',10,1),(10,'2024-03-27 09:18:49.747131','3','Refrigerator',2,'[{\"changed\": {\"fields\": [\"Categories\"]}}]',10,1),(11,'2024-03-27 09:18:53.984755','2','Sofa Set',2,'[{\"changed\": {\"fields\": [\"Categories\"]}}]',10,1),(12,'2024-03-27 09:18:57.989305','1','Smartwatch',2,'[{\"changed\": {\"fields\": [\"Categories\"]}}]',10,1),(13,'2024-03-31 21:39:37.787988','2','raiyan',1,'[{\"added\": {}}]',4,1),(14,'2024-04-01 23:50:20.858368','2','raiyan',2,'[{\"changed\": {\"fields\": [\"Staff status\"]}}]',4,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(11,'authtoken','token'),(12,'authtoken','tokenproxy'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(9,'teebay_backend','buytransaction'),(8,'teebay_backend','category'),(10,'teebay_backend','product'),(7,'teebay_backend','renttransaction');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-03-26 16:56:43.080922'),(2,'auth','0001_initial','2024-03-26 16:56:43.742365'),(3,'admin','0001_initial','2024-03-26 16:56:43.912020'),(4,'admin','0002_logentry_remove_auto_add','2024-03-26 16:56:43.940926'),(5,'admin','0003_logentry_add_action_flag_choices','2024-03-26 16:56:43.948479'),(6,'contenttypes','0002_remove_content_type_name','2024-03-26 16:56:44.112355'),(7,'auth','0002_alter_permission_name_max_length','2024-03-26 16:56:44.180956'),(8,'auth','0003_alter_user_email_max_length','2024-03-26 16:56:44.248435'),(9,'auth','0004_alter_user_username_opts','2024-03-26 16:56:44.248435'),(10,'auth','0005_alter_user_last_login_null','2024-03-26 16:56:44.331005'),(11,'auth','0006_require_contenttypes_0002','2024-03-26 16:56:44.331005'),(12,'auth','0007_alter_validators_add_error_messages','2024-03-26 16:56:44.356536'),(13,'auth','0008_alter_user_username_max_length','2024-03-26 16:56:44.431326'),(14,'auth','0009_alter_user_last_name_max_length','2024-03-26 16:56:44.514358'),(15,'auth','0010_alter_group_name_max_length','2024-03-26 16:56:44.537065'),(16,'auth','0011_update_proxy_permissions','2024-03-26 16:56:44.555281'),(17,'auth','0012_alter_user_first_name_max_length','2024-03-26 16:56:44.639671'),(18,'sessions','0001_initial','2024-03-26 16:56:44.687143'),(19,'teebay_backend','0001_initial','2024-03-26 17:00:39.484146'),(20,'authtoken','0001_initial','2024-03-27 16:28:50.512061'),(21,'authtoken','0002_auto_20160226_1747','2024-03-27 16:28:50.565719'),(22,'authtoken','0003_tokenproxy','2024-03-27 16:28:50.565719'),(23,'authtoken','0004_alter_tokenproxy_options','2024-03-27 16:28:50.582538');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('02iva58wzbkdb4kdbpzkr9gw03copcjv','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrLGZ:vGyx7OS24cilzay6hkqh9bYaTTAW1k4j9UkFlvt3YCY','2024-04-15 23:16:15.874571'),('10p0g7izog2ocrthr8hyljtcjhfz7y3l','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrMJ7:qkUfTCuGk6HFrcbs4ojSh0x08w98PpWmTfDhJNAroQI','2024-04-16 00:22:57.031200'),('17imzlv880ega6c34s5mqn2mni8bndn2','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrgnc:ehOIJlTYpGuDMpdU54bzkVLPtWNgbzrGOS_xwA4viR0','2024-04-16 22:15:48.325756'),('1ex7d82ssron3ysdarwduts1alio1zeb','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrgnr:HmdpsODvIpFltwLkqQtBnIP-EWetPl4w3CFRJvGWo7o','2024-04-16 22:16:03.244275'),('1i5tc1vr4uylex9vss7mvu0nti4m1o4s','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rqqHV:ZRLdJEOC8VpKlVezyAWnP1l-nP7jNHCITVKNkFVISc8','2024-04-14 08:11:09.260704'),('1qw9n68xwko3ms6vtkftdc3rcfwml21j','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrho2:W94V7eWJCY-dfaMj2W5kqrNuHVqALCzM_XLbXoJF7YM','2024-04-16 23:20:18.026136'),('1r76pj31eci9q6kj2izt59vy1dlundbz','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rqpWF:-tryyTLqLK0486W29WJHPoDJIQvVGtj2Et4iyoA7tkI','2024-04-14 07:22:19.611702'),('1trqbm6v0q9k5ckstl4kd66nr12xqgpq','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrgns:2NVYBhAauDymZvWQ9hZjZs3jYFmz61SeQqSQ6OdUt_E','2024-04-16 22:16:04.273599'),('1uid3de928aupoiwkuzsjzmw1q22cp48','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrLTz:RcoRJYUyl7SdE15rOKrf4LywujqdAny_j1LxZQFD6A8','2024-04-15 23:30:07.577042'),('1vt9pp64lcd11l9mgr0xjpmmio2gjqss','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rqxwe:3jda-tor4D4AmgJ8b19R_0FxADSfqCuAaxOqyFB-dus','2024-04-14 22:22:08.416371'),('2ecoerpq186pas11nnnvjnxiix524a1n','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrgoX:yHxhWInIN4Tej_WWnUNLh61_x7fpfsxzXkL5FvZWF8M','2024-04-16 22:16:45.095301'),('2gni7q8b4jnd6m3y4pe6huokrftb0wr2','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrgoW:8QoSCNY8rhBxATFaYV8KqsEvDHrTxjPUNRZQzOvyjqY','2024-04-16 22:16:44.649298'),('3nfefetwo4xanlyky93k92mxo18wbc65','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rqxNW:tBKiYrGP60NJkpgpfqM5s-v10kw_1KmV8z1iSNztbek','2024-04-14 21:45:50.004557'),('3vrkqjtq7va6wvavkuv1re833j66361p','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rqxQW:Fz5r0ZxC2qL3s4abqH7T93xs9cDsIEGCl2RWqjlji24','2024-03-31 21:49:01.372237'),('4qxro7kxxh4kbp6025gk4649khys2b1n','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrgnR:-Cr020nN5ikjZb7hK4f-Wup7wdocH9yomHhxnEU4nDA','2024-04-16 22:15:37.291995'),('4u845rwh4fo6zh2uj32ptu04w5kmtc83','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrggi:BrKLE4rJYTJS1FdzU80ULUkTTT5WSjw5FuYBxHy7TEo','2024-04-16 22:08:40.330495'),('5cwhqo3ua8f6wfusc170h0up526kromw','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrgnb:6g73uI2vmIFQCOtggmQra0u82EqnEit205bLoOZHg1k','2024-04-16 22:15:47.015515'),('5gsdpxykkkbat4abjsy7ju0cejau4hzt','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrgh7:9l3GOAs9gJQ0MbH_VZ2Sf8q8YfuinTIyWwXwCUx7Bsk','2024-04-16 22:09:05.259084'),('5o5qx4echsb9iof9gudtqi7ov3vmw62a','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrgrs:MVID1BCSDs0jwgWF-v4tSGcdYU6Ow_sNCNkNzZLwdaE','2024-04-16 22:20:12.375136'),('67ab4r689bnfglleh3a95pjihs09hws9','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrgh9:oFfSvDTjdeC-XbFa89LWmBRpMMr8owX2rTsF8aj4Fy0','2024-04-16 22:09:07.731562'),('6bf4iu1u9rsh21fctre5m5xeac2rji6s','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrgoX:yHxhWInIN4Tej_WWnUNLh61_x7fpfsxzXkL5FvZWF8M','2024-04-16 22:16:45.772952'),('6y53gga1cuum16v6b2phho9x75yy77bd','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrgoW:8QoSCNY8rhBxATFaYV8KqsEvDHrTxjPUNRZQzOvyjqY','2024-04-16 22:16:44.304149'),('7285pf3gmd2s4atukcccmeex75wg86fn','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrLEF:IEKIj3t88iqC7fiafIy79xMyrgaz0FMlhWoUpxDbAHg','2024-04-15 23:13:51.840338'),('82joznsnswbwu4ggv37wfuixl9xd8pqq','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrggd:ruMp6KKyjKe35Q99z8pTQrv1QVhQVxEXqhWXHD8zG_A','2024-04-16 22:08:35.679133'),('84uu0k7i7n7zsqx6phq3xhi0d82x40ux','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rqpWb:b5KyG0NEMeogV-yCjV4LrQCXQcMPSAjqO1OrwnFvkbA','2024-04-14 07:22:41.967949'),('8dgp1sw7y1w13anb5h20lywl3av9pt4i','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrggh:XtfWhKv_WQOCli8ZgLajCGRJ6FuQ6kgoLNE6ztjchNw','2024-04-16 22:08:39.009303'),('8o8w8mtjgjqqfk1rpxmwcoco9t62txie','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrggh:XtfWhKv_WQOCli8ZgLajCGRJ6FuQ6kgoLNE6ztjchNw','2024-04-16 22:08:39.897128'),('9twdqnhi1m2ltewhb5f47lvd4dj8l510','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrgoX:yHxhWInIN4Tej_WWnUNLh61_x7fpfsxzXkL5FvZWF8M','2024-04-16 22:16:45.963264'),('9vkrmc3s1hois8ma9630kl2u6lpqd69o','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrgrz:4Z6jN3ticpFiVK3cMeYmDOi4EZs2M1yIY6MOIld8u1Q','2024-04-16 22:20:19.137720'),('ag5onxi9f89wprp3sd86pa6rbrh9bsth','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rqxQg:GPp7IQsZCmxKiLuhkiJyEppJVOaCubNjhEM9q17ukq8','2024-03-31 21:49:11.064916'),('ag6as8lq4r40tot25zg8utrfc63r2mz1','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrgh8:h3Ud7lPPIDrtlpgw_6xItiaPyuXumEwYR1frceytJ_w','2024-04-16 22:09:06.583878'),('ahxvhdfzy5kxmqbovh6jzu6dvaef08pr','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrgcY:bXcyO67YtIEVCmm3ZCCuLIhrbfeq6ts224m79HVgdPQ','2024-04-16 22:04:22.682914'),('aiyvlvuo6sw8oj1p3h1fe5w93ydu2i5i','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rqqHV:ZRLdJEOC8VpKlVezyAWnP1l-nP7jNHCITVKNkFVISc8','2024-04-14 08:11:09.625176'),('azu6zepzg1r395wmwioah06gpjtvze8m','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rqqBx:310bF79kYzKvtOH86ovxpDW5DnAG2AA_ormPQr_oKzQ','2024-04-14 08:05:25.314954'),('b12fnktkxzclk7t8s5qwtl94jrxfqbi4','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrgsX:3I9K5d8_LLuYelQKBwTPoJPujhfymlq8app_3K_cXTU','2024-04-16 22:20:53.277301'),('bs4klpt7u7kd8dm3tigfdmg5jnflesgw','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrgoY:_z01rt0LcDopopl-j5TFGp06KRFL24dDQUD02SWSG5I','2024-04-16 22:16:46.222606'),('bs5rl1gho0wydezd4xvaubpcrs76g2f9','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrgoW:8QoSCNY8rhBxATFaYV8KqsEvDHrTxjPUNRZQzOvyjqY','2024-04-16 22:16:44.432213'),('bsp07po0t9b78rmej9mhh8papbcrqy8o','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrLQR:zc_uBVPtxwyeGi3GLclNFGoiF6Q0bdPPZXuBUluPTGQ','2024-04-15 23:26:27.394783'),('c6ipsg0g3qixr1mmi41zbzv6zmngypw2','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrgeK:XNkLJKsB3j7HqcnXXpYWMlwLZ2wAVyZhQy-cimcDoeE','2024-04-16 22:06:12.050177'),('cfypxp6m7q8jqht5eoqx5fwnrhed2muu','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrho0:kNPo0Nzo8AP8GS1XEyqvg5BeSxDgNsRSpC4AHmbExgU','2024-04-16 23:20:16.229739'),('cswvvi9f9xzqrlmo04d63vlq2z6r8jks','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrgoV:6JBGastCrSuOvth6YGjT-vMjgmiMJA8kiHzNEM6K-yc','2024-04-16 22:16:43.977490'),('d8fhtz7hv6u626s2wkrj35d3mvntpr10','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rqpXw:nm00RE_UOvNgNEdUt7b48APE93f5rcuNAqrVLEiwmsg','2024-04-14 07:24:04.027828'),('dgtg0o58i2bxssc09bc5i9uoa68xrmgy','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrgoU:_oJjpjqCPoqfIkebRuV43Moe6LhB7oppM4MVZVAr5ek','2024-04-16 22:16:42.346738'),('dudl75aytqhr6mzjknl55dhmmu9uopzg','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrLTw:Z2liYhuam0E-3VkcRhPFMwSi7Mf2lKSvvv3wSAeO2-w','2024-04-15 23:30:04.267157'),('e9vhgkrta1sn4d5ls8ng11lk1jmihiy9','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrgbq:VA3vES5Zzm8rxkRmZqKktzf2mLvNHeYTNfQRbRHP4Cg','2024-04-16 22:03:38.040147'),('efwk8f0va93u9942q4kpixn1fzwzigvp','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rqxwk:Ag7PPij9BFJsEeaOxej7BtPeuXBCx8Tei1d5lXs3ysM','2024-04-14 22:22:14.432866'),('er82yu6z2f1g6g33yadfucahli0l5yem','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrggi:BrKLE4rJYTJS1FdzU80ULUkTTT5WSjw5FuYBxHy7TEo','2024-04-16 22:08:40.680688'),('erzzj5em3yhoqxgjpmjt6ibrj088den3','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rqyHC:_ZiQ6GVhCBbFS9FTDiBWQN49A0yrz660hnDrYAZcXpc','2024-04-14 22:43:22.347452'),('f26lq7m2nqmwwapk1m2j8otn8tfz7xes','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrgoY:_z01rt0LcDopopl-j5TFGp06KRFL24dDQUD02SWSG5I','2024-04-16 22:16:46.497291'),('fygccia8zy8b8qdyoyj4mgi5a4w62yxh','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrgoX:yHxhWInIN4Tej_WWnUNLh61_x7fpfsxzXkL5FvZWF8M','2024-04-16 22:16:45.276308'),('gyxfz94jdybpk3t9t5davreborhis946','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrL5l:_qHlflfaNGKq9bm82lCIWkIHHbMXOoSJ0IU10DHu45w','2024-04-15 23:05:05.367028'),('ikhwfrmvjn954cdm12kzwrcwefncx6mo','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrgjT:i_MfPQCSxLRg4UGWj0CTNXxVref4zfzHj2HuvriOVos','2024-04-16 22:11:31.160304'),('iremgz2b70jbmf4gvvjif80z8vcyeq6e','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rqqHZ:qWbP0__JyTlGioqkFnULBg7HzJqLvsRcZMDcrks_PDQ','2024-04-14 08:11:13.973089'),('it9zutur3wemgkx48ha337ssri6bi5vo','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrgdT:updlg5OirmoJjQjFvVmKDOqxQ54olria7118h9p5BU4','2024-04-16 22:05:19.454757'),('iu8ovn9owmzr544jw002vrhst53ocv0d','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrLHu:ix-_8zZ-Jy13nTmcuPGjdJTQgzxJmW_IAABhv4mN8MA','2024-04-15 23:17:38.966810'),('iui3gyghey2tqksq0cxcaixcpzcg6img','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rqxRO:BIwZKMV5D0Igq6gMDjWHf0ocWWzgpOLEPuJMYVRwOfs','2024-03-31 21:49:55.439344'),('k29shqvi9voi0fbgyvl4hl0az1f5o3rs','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rqq0U:94xkTzCG7dh0FKQvV23PpHk__FMuBYL0AOpQje6rgy0','2024-04-14 07:53:34.634378'),('k6m6unwb34d3el2jqv79xa05ozu8bpsj','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrhn1:8gPf92Y56ZLF-l-Z7lOUSYISxIbP9ROLAVX_cMYdrxc','2024-04-16 23:19:15.624987'),('kj2t4vi2ccoiiplc6v6zl9p1hjmvgowe','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrj48:_GXgnOVQX_-Au6fcLp52IJPoNDF_c1yX-1RWYJc5oxw','2024-04-17 00:41:00.690895'),('kr2y9hf7z2vmbpauss63pxhg9u1mtrwh','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrKqk:nhuMKxYUG96oWxOhftY76F-C-GyDiY9xPLdGfihSmwo','2024-04-15 22:49:34.335266'),('kr8wv8ulww40xw5sa6e1ccznlh6vqb05','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrggj:lVUWOfRW_tXTkpJ7Z5QP7WtPkYL1uE4sHF47e_cNfpE','2024-04-16 22:08:41.034457'),('lynksfdhwv6em0imov7m1bdg5eoehn49','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rqqN4:C9mddCfO2RhaTHqHSJBE9NyWaqzsZiVLAQ6ONADDmm8','2024-04-14 08:16:54.371488'),('m52kwrfesq3abhk179puv2reiysffa4x','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrgoW:8QoSCNY8rhBxATFaYV8KqsEvDHrTxjPUNRZQzOvyjqY','2024-04-16 22:16:44.129139'),('mo2d0qs6cxb9aoxkd4gvefulwp0lqxgq','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrhdJ:oQhW-HcwfvMlkz3dHBBZnlf7Sm4OMN3b6gbIoc-osrE','2024-04-16 23:09:13.106257'),('mqhp1a5up9h0paz35yae7uft1y6zg2tt','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrghq:M4ugTm0w4gOAjvPsTEL76AJ55wLR5ArKwT-8zTo_XA4','2024-04-16 22:09:50.879022'),('mqyjuyugl172aoi62t1jv5fdmgeosewo','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrgjC:NsIMqulKj77wkS1X69l12TNNPzhU92iot6Yv19G2AK0','2024-04-16 22:11:14.152877'),('mzmeh01ox393bnnuhqkxgzmp27w1n7w5','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rqq9a:zX-XTP0GFpJYnozvz-vuub83plakODwMdMvielSACb0','2024-04-14 08:02:58.495556'),('n9z3dfxe3gi9zopkfgoftfpm0tjpliny','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrggg:GPtu_eGs803_1Rh0bzthur7ocIGGw2m0UqtSfbU93LI','2024-04-16 22:08:38.008656'),('na96b200nfgw96ptd1gb2x54m9c28cpv','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrgc8:PuOQjcD1SJ2i63u6xHgYk7dL7XspkAQ7Qa9g2mt2Mr4','2024-04-16 22:03:56.385690'),('nvcflf4jquaw4lfqnx3qq2kpsm72wmu7','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rqxQx:k2z52LOSGDdaDEXM9ohip_o27-nVUnUf_sNP_5_0Xl8','2024-03-31 21:49:28.650639'),('o2vj7nhlxshjh2itgnj184ieedz6fbjj','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrggj:lVUWOfRW_tXTkpJ7Z5QP7WtPkYL1uE4sHF47e_cNfpE','2024-04-16 22:08:41.128710'),('o42tyr8ttmt8bliesut8k26p3tm91qlq','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrKqx:iikoNkndT3rFxOQXzwrHeS30tNPOVwK_BExJ6T6INFM','2024-04-15 22:49:47.526127'),('o5gkbv1wyekc20ndqoueppd6gjb4pra8','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rqyHF:B-hajtipI7OBkV8cl697ACwlZf3etnRe5Eq36Daqlpk','2024-04-14 22:43:25.262103'),('o7j64ra4lj2nsnhn9qk0gjigbkb7xysi','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrLGq:gqH_R-uBH74kEr371EaSFyYQE586KiH0T0sLL0-QRp8','2024-04-15 23:16:32.778235'),('oaa69i4zcpfuhmjy2btmcyffl3jbwwlv','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrgoX:yHxhWInIN4Tej_WWnUNLh61_x7fpfsxzXkL5FvZWF8M','2024-04-16 22:16:45.417901'),('octvqy5hxur7n2w9tgn2fyqgd9sb27py','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rqqHW:vi1icMsNE-ejKVmiubPb1KVCF7AR9-3f5QwYE7DMLJ8','2024-04-14 08:11:10.206402'),('opza3pup27vh169qrwd22zza7unwugdv','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrho4:5wHQfAa8KsfaHbiVaW-EQfKF_SAA7lTtKCl8S5qGtu0','2024-04-16 23:20:20.093526'),('oz7c1fjar6g1rdxfe5pa05uqfrfn6mnu','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrLGY:4t_5k8zD6szlEs3djqOv7-kBTaG_9hqggj6L8DanYnQ','2024-04-15 23:16:14.053774'),('ps16hfg5yvu8k8rh5v35dobiu14s5gsw','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrgnZ:w8gKh39Cb8cv6ahl9xhhbLSsqoHvMIW7ZVKYP6uFXgw','2024-04-16 22:15:45.367486'),('pt7ptkq6397exzgg3ol12pib5lry7nx0','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrggh:XtfWhKv_WQOCli8ZgLajCGRJ6FuQ6kgoLNE6ztjchNw','2024-04-16 22:08:39.672985'),('pytyob11d6nxwc2htwqe62z7dkcgm37w','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrj4r:xSCPR84e7adnjifrthcd7RQf_42NCZdr1VxV8RXraBk','2024-04-17 00:41:45.886100'),('qhrunn24gdpvvkledu7jkqhxst2vc9uz','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrggi:BrKLE4rJYTJS1FdzU80ULUkTTT5WSjw5FuYBxHy7TEo','2024-04-16 22:08:40.505762'),('qwy1xviuzlbak2abihuq3fmzrovpakdn','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrLGX:omIhwcpCJFUnk1b3gwLM42KIFy1ebbRTW3ArJBTFolE','2024-04-15 23:16:13.240591'),('rkr9hb3wom6qpn1e1oc856ckkflacgi9','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrggi:BrKLE4rJYTJS1FdzU80ULUkTTT5WSjw5FuYBxHy7TEo','2024-04-16 22:08:40.092725'),('rry94slpgw6kkgf4fyvwukh4x5fgkpts','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrgry:oHDvuduT7tGFttYlK-rIkeWGl15TnzTMEyBxXie0pcw','2024-04-16 22:20:18.004346'),('sferlxn2rqfvuyfpfjv4oaw4zyea4tmz','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rqxwZ:MAYE-4DQ9FWcnq8IyiGFIWlcyLAYInSFgKYEZmhA6mU','2024-04-14 22:22:03.448231'),('sg4sbmqishg0wofkmmakayzx8qzwo0fu','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rqyNC:_7GP3K8iiA6MAPENEWGmhbeCjVFTNLs1OKcmMv9uxU8','2024-04-14 22:49:34.188647'),('sgdi2vz2aja2ydvvy2q58ajd1zd9kdwy','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrj5P:5GGHQp4kVlL8a4icZlh1NBV_OkeK4nAfzUn4tcb1FeQ','2024-04-17 00:42:19.174573'),('soefj0xpz1wna9tzt05wng2zyqu6zkfw','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rqpXj:5zJ_-BjywU4v7Il8ndhQBftKNKa1BGA6ron9AARaiNw','2024-04-14 07:23:51.552868'),('t6gk5gx0x0hm5lc8vajctr6kfvivfcak','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrghE:To1JoclHb5hk2xG4_gE-wMPGSW2Ye7-wg7SBGEH4_Ko','2024-04-16 22:09:12.624128'),('te47oivj94olor2ohvs3ls8kwgf7rk9y','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rqxRG:qfL-OvgN96BqbxxRtWSZ-B0_4akc6qSP8jULeyp8J-8','2024-03-31 21:49:47.605242'),('ttrl0sf03gjw2haa8jeaxvooh1kk4m9k','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrgoY:_z01rt0LcDopopl-j5TFGp06KRFL24dDQUD02SWSG5I','2024-04-16 22:16:46.896065'),('u04wtuzydgewxum1ejtoy6vd33tn06l3','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rqqA1:TkXa2VMR5bgnhq0-TpSWw0-qgCp62ltxPMhda3M3i1w','2024-04-14 08:03:25.032955'),('u1ffj5w3lyy9v5vgwxsayzfffz0z27rp','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrgoV:6JBGastCrSuOvth6YGjT-vMjgmiMJA8kiHzNEM6K-yc','2024-04-16 22:16:43.713264'),('ugmt3w607cqxs6nl925c2hglu8rsebsk','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrgoL:CJchEvgv5s2vwtvf2SrSPxrKGZjoxXeMCsxWcP4uAts','2024-04-16 22:16:33.247712'),('uzadrsexr34q3do3dma5axpcm4tua4gm','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrgdw:VLYLqD6wss_YHjbKk6VwMNs7rl-KSJ3alSwYpYinmkQ','2024-04-16 22:05:48.150871'),('v3xgqv594259hnzikkae7wf8sw2or15s','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrggZ:ItvEseIgw5hbOtcWob0-_ot3s2RpzSaayxexTTkRYes','2024-04-16 22:08:31.884251'),('vnrm440q796of02sv2mbqlxa0jcpsjrz','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrghx:GcHjAk_gkbEmN0QMag3mNpBKbp4gw8w7a3PohQlJfpQ','2024-04-16 22:09:57.022616'),('vrhjao3li478apnlcw8pgzqi37yzei2w','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rqqPa:mVmzWLejrJUzvoDqxF8SWDgS_1hskszZF7O1BjBXw4k','2024-04-14 08:19:30.517155'),('w678txsc0vb9fe3g4dahzhh6ap2wgpme','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrgdL:jL0cIw1YUkmfCjajA6D6Exwd5GBJ8qtDbITMSCFzfQI','2024-04-16 22:05:11.536868'),('w73ir0i0lkosr3xbx1l91v7ioem3cr32','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrM48:oq918ip2vecwhE2Ihqo3TXI5YzVQKyCUWTkTCZk-5io','2024-04-16 00:07:28.106845'),('wbnyledpuvg60qs9zyydw40nh0mk4dmk','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrLGT:F1Pqj8gDuxicJ-4f4buNFrRBqe3Md1lx515PVM_2SHM','2024-04-15 23:16:09.959290'),('wspoilvr9tweq4jypvf7mu269zde9jyj','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rqpWd:A_oRzsStatmNXMmKoT10VQmaTkOUF-gHM5DMtHDt5fA','2024-04-14 07:22:43.830546'),('xb4ge3brxqpgvlb4vo6swqkq313qb2n6','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rqq92:ZQTJumF01Aj-2r18vN4xYNJTZ6b_XLnO5qCV_9McU3o','2024-04-14 08:02:24.832938'),('xduj7kkxbp6cqsege5o7lf7k76d3mzbt','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrgoV:6JBGastCrSuOvth6YGjT-vMjgmiMJA8kiHzNEM6K-yc','2024-04-16 22:16:43.231744'),('xl9p4z3yfp2gm0wa8vqhwggwayicf39t','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrgoW:8QoSCNY8rhBxATFaYV8KqsEvDHrTxjPUNRZQzOvyjqY','2024-04-16 22:16:44.817827'),('xynpdbplwq9n3d6gb5i66psil4ec62h7','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrj3I:cPj0ZhM5MJWJrUFWTHcUN39IEC_TlA4wUxWnUdKjU8Y','2024-04-17 00:40:08.038696'),('xzhdsmlfdovhq2rh93b2jq8o08oiwrkt','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrgoX:yHxhWInIN4Tej_WWnUNLh61_x7fpfsxzXkL5FvZWF8M','2024-04-16 22:16:45.592530'),('ymf29di6pwbwhf5o8o9nsbjzol87uvrg','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrgdJ:bBPz1IpUJdLXYpP0uRHUB1ZrUzihGROPKUtCXFt--u8','2024-04-16 22:05:09.696916'),('zm12otxhrpf7nkf84w24m2absilmce41','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrgoY:_z01rt0LcDopopl-j5TFGp06KRFL24dDQUD02SWSG5I','2024-04-16 22:16:46.805392'),('zma4tuzsxrvfj5zke581u54g95jp7ln6','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrgrq:94ijciXQS6MP8Jj9aG4Qz-2z1M87LABNU5EchKU4oeY','2024-04-16 22:20:10.900736'),('zxjo9espt5sp99j6au5n8ofmbtmebift','.eJxVjEEOwiAQRe_C2hBooXRcuvcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdlVWn3y0iPaTsgO9YblVTLesyR70r-qBNXyvL83K4fwcZW_7WQ5QUrA0QXDLWAxk3ijEC5JkMAzgKaMYwdNGFmKhH71PqhKN1gNCr9wfX8Dfg:1rrggi:BrKLE4rJYTJS1FdzU80ULUkTTT5WSjw5FuYBxHy7TEo','2024-04-16 22:08:40.885445');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teebay_backend_buytransaction`
--

DROP TABLE IF EXISTS `teebay_backend_buytransaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teebay_backend_buytransaction` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `transaction_type` varchar(4) NOT NULL,
  `product_id` bigint NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `teebay_backend_buytr_product_id_acb40759_fk_teebay_ba` (`product_id`),
  KEY `teebay_backend_buytransaction_user_id_0462cbdb_fk_auth_user_id` (`user_id`),
  CONSTRAINT `teebay_backend_buytr_product_id_acb40759_fk_teebay_ba` FOREIGN KEY (`product_id`) REFERENCES `teebay_backend_product` (`id`),
  CONSTRAINT `teebay_backend_buytransaction_user_id_0462cbdb_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teebay_backend_buytransaction`
--

LOCK TABLES `teebay_backend_buytransaction` WRITE;
/*!40000 ALTER TABLE `teebay_backend_buytransaction` DISABLE KEYS */;
INSERT INTO `teebay_backend_buytransaction` VALUES (1,'BUY',3,1),(2,'BUY',3,1),(3,'BUY',4,1),(4,'BUY',4,1);
/*!40000 ALTER TABLE `teebay_backend_buytransaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teebay_backend_category`
--

DROP TABLE IF EXISTS `teebay_backend_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teebay_backend_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teebay_backend_category`
--

LOCK TABLES `teebay_backend_category` WRITE;
/*!40000 ALTER TABLE `teebay_backend_category` DISABLE KEYS */;
INSERT INTO `teebay_backend_category` VALUES (1,'Electronics'),(2,'Furniture'),(3,'Home Appliances'),(4,'Sporting Goods'),(5,'Outdoor'),(6,'Toys');
/*!40000 ALTER TABLE `teebay_backend_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teebay_backend_product`
--

DROP TABLE IF EXISTS `teebay_backend_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teebay_backend_product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `rent_price` decimal(10,2) DEFAULT NULL,
  `owner_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `teebay_backend_product_owner_id_eddaeb3c_fk_auth_user_id` (`owner_id`),
  CONSTRAINT `teebay_backend_product_owner_id_eddaeb3c_fk_auth_user_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teebay_backend_product`
--

LOCK TABLES `teebay_backend_product` WRITE;
/*!40000 ALTER TABLE `teebay_backend_product` DISABLE KEYS */;
INSERT INTO `teebay_backend_product` VALUES (1,'Smartwatch','Track your fitness and receive notifications with this stylish smartwatch.',99.99,9.99,1),(2,'Sofa Set','Complete your living room with this comfortable and elegant sofa set.',799.99,49.99,1),(3,'Refrigerator','Keep your food fresh with this spacious refrigerator featuring advanced cooling technology.',999.99,79.99,1),(4,'Yoga Mat','Achieve inner peace and flexibility with this high-quality yoga mat.',29.99,4.99,1),(5,'Camping Tent','Experience the great outdoors with this durable and easy-to-setup camping tent.',149.99,19.99,1),(6,'LEGO Classic Brick Set','Unleash your creativity with this classic LEGO brick set containing a variety of colorful pieces.',39.99,7.99,1);
/*!40000 ALTER TABLE `teebay_backend_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teebay_backend_product_categories`
--

DROP TABLE IF EXISTS `teebay_backend_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teebay_backend_product_categories` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_id` bigint NOT NULL,
  `category_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `teebay_backend_product_c_product_id_category_id_458187fa_uniq` (`product_id`,`category_id`),
  KEY `teebay_backend_produ_category_id_1bb4741c_fk_teebay_ba` (`category_id`),
  CONSTRAINT `teebay_backend_produ_category_id_1bb4741c_fk_teebay_ba` FOREIGN KEY (`category_id`) REFERENCES `teebay_backend_category` (`id`),
  CONSTRAINT `teebay_backend_produ_product_id_00615325_fk_teebay_ba` FOREIGN KEY (`product_id`) REFERENCES `teebay_backend_product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teebay_backend_product_categories`
--

LOCK TABLES `teebay_backend_product_categories` WRITE;
/*!40000 ALTER TABLE `teebay_backend_product_categories` DISABLE KEYS */;
INSERT INTO `teebay_backend_product_categories` VALUES (6,1,1),(5,2,2),(4,3,3),(3,4,4),(2,5,5),(1,6,6);
/*!40000 ALTER TABLE `teebay_backend_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teebay_backend_renttransaction`
--

DROP TABLE IF EXISTS `teebay_backend_renttransaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teebay_backend_renttransaction` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `transaction_type` varchar(4) NOT NULL,
  `rent_time` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `teebay_backend_rentt_product_id_7f10bd95_fk_teebay_ba` (`product_id`),
  KEY `teebay_backend_renttransaction_user_id_23d0ae3e_fk_auth_user_id` (`user_id`),
  CONSTRAINT `teebay_backend_rentt_product_id_7f10bd95_fk_teebay_ba` FOREIGN KEY (`product_id`) REFERENCES `teebay_backend_product` (`id`),
  CONSTRAINT `teebay_backend_renttransaction_user_id_23d0ae3e_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teebay_backend_renttransaction`
--

LOCK TABLES `teebay_backend_renttransaction` WRITE;
/*!40000 ALTER TABLE `teebay_backend_renttransaction` DISABLE KEYS */;
INSERT INTO `teebay_backend_renttransaction` VALUES (1,'RENT',266400000000,1,1),(2,'RENT',90000000000,4,1),(3,'RENT',86400000000,2,1);
/*!40000 ALTER TABLE `teebay_backend_renttransaction` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-03 23:12:53
