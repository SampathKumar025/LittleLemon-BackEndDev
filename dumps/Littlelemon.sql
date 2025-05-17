-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: littlelemon
-- ------------------------------------------------------
-- Server version	8.0.42

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (3,'Customer'),(2,'Delivery'),(1,'Manager');
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
INSERT INTO `auth_group_permissions` VALUES (6,1,17),(7,1,18),(8,1,19),(9,1,20),(10,1,25),(11,1,26),(12,1,27),(13,1,28),(14,1,29),(15,1,30),(16,1,31),(1,1,32),(2,1,33),(3,1,34),(4,1,35),(5,1,36),(21,2,16),(22,2,20),(23,2,26),(24,2,28),(25,2,30),(17,2,32),(18,2,33),(19,2,34),(20,2,36),(31,3,25),(32,3,26),(33,3,27),(34,3,28),(26,3,32),(27,3,33),(28,3,34),(29,3,35),(30,3,36);
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add booking',7,'add_booking'),(26,'Can change booking',7,'change_booking'),(27,'Can delete booking',7,'delete_booking'),(28,'Can view booking',7,'view_booking'),(29,'Can add menu item',8,'add_menuitem'),(30,'Can change menu item',8,'change_menuitem'),(31,'Can delete menu item',8,'delete_menuitem'),(32,'Can view menu item',8,'view_menuitem'),(33,'Can add order',9,'add_order'),(34,'Can change order',9,'change_order'),(35,'Can delete order',9,'delete_order'),(36,'Can view order',9,'view_order'),(37,'Can add Token',10,'add_token'),(38,'Can change Token',10,'change_token'),(39,'Can delete Token',10,'delete_token'),(40,'Can view Token',10,'view_token'),(41,'Can add Token',11,'add_tokenproxy'),(42,'Can change Token',11,'change_tokenproxy'),(43,'Can delete Token',11,'delete_tokenproxy'),(44,'Can view Token',11,'view_tokenproxy');
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$1000000$8jAFkvBVGvPQM3UXlECYxu$YBvEiTanZBihY0zr/aGbimbLhrD8NJ0kUulMCugrgGs=','2025-05-17 12:20:24.160446',0,'SampathKumar','Sampath Kumar','Komarapuri','9948971770sampath@gmail.com',1,1,'2025-05-17 10:48:06.000000'),(2,'pbkdf2_sha256$1000000$WTzWC6msVRNap4FHdV9P9M$7wQvOQe/IjNOGwEDt4aZX6PT3EZbd34xCrdJQMm6WN4=','2025-05-17 13:00:47.515866',1,'admin','','','admin@gmail.com',1,1,'2025-05-17 11:01:11.934304'),(3,'pbkdf2_sha256$1000000$nDNFoYUG5w5btvD39k6Tud$LG82RHvpF3Qsa/TzC21LT25mqcLItxEEn2w70FcD/Ik=','2025-05-17 17:07:54.000000',0,'johndoe01','John','Doe','john.doe01@example.com',0,1,'2025-05-17 17:07:54.000000'),(4,'pbkdf2_sha256$1000000$dWLpNYcxocxui2yNGo7QU4$rJLWpJs9HU75/mxUyx+c5cYeWmZ5LucQUZefAv1AIrE=','2025-05-17 17:07:54.000000',0,'janedoe02','Jane','Doe','jane.doe02@example.com',0,1,'2025-05-17 17:07:54.000000'),(5,'pbkdf2_sha256$1000000$Kl4ivmykzMq74Nn3YFuF5L$rFL4EG087L5R3YRGR1nDY1gePplCAmgBp+/PIkZL/cw=','2025-05-17 17:07:54.000000',0,'bobbrown03','Bob','Brown','bob.brown03@example.com',1,1,'2025-05-17 17:07:54.000000'),(6,'pbkdf2_sha256$1000000$UJOrMf4KSkLjYeg5bJU5fi$iWMMHcojreZVbwsjMb9tAbuzAHs0CYAqQOuGYvXjCY8=','2025-05-17 17:07:54.000000',0,'lucygray04','Lucy','Gray','lucy.gray04@example.com',0,1,'2025-05-17 17:07:54.000000'),(7,'pbkdf2_sha256$1000000$lv0RQJvbT3xcR97tP6wBgn$/FONW5LzHVR9yoME/OKJ/hzHPxtVJgopeKuUreTPrZU=','2025-05-17 17:07:54.000000',0,'tomhardy05','Tom','Hardy','tom.hardy05@example.com',0,1,'2025-05-17 17:07:54.000000'),(8,'pbkdf2_sha256$1000000$EMBn8EL8WSDoEOrOk8Mo5k$jtuNHfb9/U8h45P/BV1iyP4cGJ9JOMqhxAxLg2G8HEc=','2025-05-17 17:07:54.000000',0,'emilyrose06','Emily','Rose','emily.rose06@example.com',0,1,'2025-05-17 17:07:54.000000'),(9,'pbkdf2_sha256$1000000$btu68HzMAeEGxVAceDClYE$htC2ByikgmpdzT9od5b1I+fHU2SP2Io1NFCkoDVdTwM=','2025-05-17 17:07:54.000000',0,'davidsmith07','David','Smith','david.smith07@example.com',0,1,'2025-05-17 17:07:54.000000'),(10,'pbkdf2_sha256$1000000$kPEY3ta52ESoo49NbRLmq4$l/CVkxGZ1T/wb9E2CX0c69h+5NvvbriJtgsWpKMWTmQ=','2025-05-17 17:07:54.000000',0,'lindawhite08','Linda','White','linda.white08@example.com',0,1,'2025-05-17 17:07:54.000000'),(11,'pbkdf2_sha256$1000000$TICnLIFuj3o7pGibKZQMe8$HOp/AGT6eeyC+nBZuxoZr6SMa95If6nFwqtoRW+gfFs=','2025-05-17 17:07:54.000000',0,'chrisevans09','Chris','Evans','chris.evans09@example.com',1,1,'2025-05-17 17:07:54.000000'),(12,'pbkdf2_sha256$1000000$kSDX2U0sLc78MgaDcHh4I5$j96sD/7qirV1B9zDcVDNDtXOaH6Fi0JvBpuqqkeIiSs=','2025-05-17 17:07:54.000000',0,'angelablack10','Angela','Black','angela.black10@example.com',1,1,'2025-05-17 17:07:54.000000'),(13,'pbkdf2_sha256$1000000$eld0SpoHUdtOZNXiX504ew$50B+3eV63oB0c9BwddMqJoilqocgAJq3ktIrAqmK3u4=','2025-05-17 17:07:54.000000',0,'steverogers11','Steve','Rogers','steve.rogers11@example.com',0,1,'2025-05-17 17:07:54.000000'),(14,'pbkdf2_sha256$1000000$Enav0ITIwo3Qnmf3vQdUVk$M3ZnQQO50exhBHszgczwsOR7wRJ9XLpV/NZSeRpn0n8=','2025-05-17 17:07:54.000000',0,'clarkkent12','Clark','Kent','clark.kent12@example.com',0,1,'2025-05-17 17:07:54.000000'),(15,'pbkdf2_sha256$1000000$m1kUYwKwD9F5ANGGkKdaRC$mScABQ2em8oT1w4d0nhhGeq2ADHruoBcM6BcO1aQ/OU=','2025-05-17 17:07:54.000000',0,'dianaprince13','Diana','Prince','diana.prince13@example.com',0,1,'2025-05-17 17:07:54.000000'),(16,'pbkdf2_sha256$1000000$7uecUb4OQmuAQn3bSxyIxy$1ToCCujTehcUBdeXWkcOuOOXCr3lsMHgnOwMKd4ydtg=','2025-05-17 17:07:54.000000',0,'brucewayne14','Bruce','Wayne','bruce.wayne14@example.com',1,1,'2025-05-17 17:07:54.000000'),(17,'pbkdf2_sha256$1000000$9ljjZDy63fB5aC0SzpMAmf$CXVxggiamFdMKQQpVREZHohduMUreRdl5uPVLXY5GiM=','2025-05-17 17:07:54.000000',0,'tonystark15','Tony','Stark','tony.stark15@example.com',1,1,'2025-05-17 17:07:54.000000'),(18,'pbkdf2_sha256$1000000$mGpDYVqi6PoPgIRdRje5kZ$jJ12RDiTGvHw80YS7+SHQTCyS0+oJ5zenkQGrnfyhWQ=','2025-05-17 17:07:54.000000',0,'natasharomanoff16','Natasha','Romanoff','natasha.romanoff16@example.com',0,1,'2025-05-17 17:07:54.000000'),(19,'pbkdf2_sha256$1000000$6GE71wjLYUUztoERXhz1ae$ayYVMK6L3QiTw/K7t/HMj3rkhT6zMvsW8t6+YIxnk+A=','2025-05-17 17:07:54.000000',0,'peterparker17','Peter','Parker','peter.parker17@example.com',1,1,'2025-05-17 17:07:54.000000'),(20,'pbkdf2_sha256$1000000$2HgId30XeRdGqEkUwAxp99$93rPQmXg/KCq0EMG3AlNbhGZuO7TJmS4ggUZc9OXO8M=','2025-05-17 17:07:54.000000',0,'rebeccabloom18','Rebecca','Bloom','rebecca.bloom18@example.com',0,1,'2025-05-17 17:07:54.000000'),(21,'pbkdf2_sha256$1000000$wdfv2uOgseADS7XGdloLYu$9OHuVn0/WxczU/wvOfnjp9oKZUYOoGkZY0WPHPwOi0g=','2025-05-17 17:07:54.000000',0,'michaelscott19','Michael','Scott','michael.scott19@example.com',0,1,'2025-05-17 17:07:54.000000'),(22,'pbkdf2_sha256$1000000$iZtAI3RWga59td5cRYVj2E$ry5k/UkwjIT5NWUHqMuYCwaWllw8DNkoUwolPnWilnI=','2025-05-17 17:07:54.000000',0,'pamhalpert20','Pam','Halpert','pam.halpert20@example.com',0,1,'2025-05-17 17:07:54.000000'),(23,'pbkdf2_sha256$1000000$YnUIXrvnSqMJ9QJ1pFfl2w$2fVQk1wWsJytewzXXZxMQKL4eLwoCzyS20UnS3ZTR/s=',NULL,0,'MohanKumar','','','mohankumar@gmail.com',0,1,'2025-05-17 14:15:23.621210');
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
INSERT INTO `auth_user_groups` VALUES (1,1,1),(13,3,3),(12,4,3),(2,5,2),(15,6,3),(21,7,3),(11,8,3),(9,9,3),(14,10,3),(4,11,2),(3,12,2),(20,13,3),(8,14,3),(10,15,3),(5,16,2),(7,17,1),(17,18,3),(6,19,2),(19,20,3),(16,21,3),(18,22,3);
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
INSERT INTO `authtoken_token` VALUES ('7415661884807c56ef7bbe5525e1e146bf7cec6a','2025-05-17 10:55:12.417441',1),('ab8ff6b626e7fe29527727e910ff93d40792db8e','2025-05-17 12:57:19.408683',8);
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2025-05-17 11:02:43.960284','1','SampathKumar',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Staff status\"]}}]',4,2),(2,'2025-05-17 11:46:40.422328','1','Manager',1,'[{\"added\": {}}]',3,2),(3,'2025-05-17 11:49:28.830729','2','Delivery',1,'[{\"added\": {}}]',3,2),(4,'2025-05-17 11:50:04.721383','1','SampathKumar',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',4,2),(5,'2025-05-17 11:50:20.920673','17','tonystark15',2,'[]',4,2),(6,'2025-05-17 11:50:43.811897','5','bobbrown03',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',4,2),(7,'2025-05-17 11:50:54.544884','5','bobbrown03',2,'[]',4,2),(8,'2025-05-17 11:51:03.595127','12','angelablack10',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',4,2),(9,'2025-05-17 11:51:26.391267','11','chrisevans09',2,'[{\"changed\": {\"fields\": [\"Staff status\", \"Groups\"]}}]',4,2),(10,'2025-05-17 11:51:42.086554','16','brucewayne14',2,'[{\"changed\": {\"fields\": [\"Staff status\", \"Groups\"]}}]',4,2),(11,'2025-05-17 11:51:57.260738','19','peterparker17',2,'[{\"changed\": {\"fields\": [\"Staff status\", \"Groups\"]}}]',4,2),(12,'2025-05-17 11:52:23.126137','17','tonystark15',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',4,2),(13,'2025-05-17 13:34:11.579438','3','Customer',1,'[{\"added\": {}}]',3,2),(14,'2025-05-17 13:35:27.624376','14','clarkkent12',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',4,2),(15,'2025-05-17 13:35:49.544327','9','davidsmith07',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',4,2),(16,'2025-05-17 13:36:00.083999','15','dianaprince13',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',4,2),(17,'2025-05-17 13:36:10.198107','8','emilyrose06',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',4,2),(18,'2025-05-17 13:36:20.667916','4','janedoe02',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',4,2),(19,'2025-05-17 13:36:29.976692','3','johndoe01',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',4,2),(20,'2025-05-17 13:36:37.743036','10','lindawhite08',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',4,2),(21,'2025-05-17 13:36:48.923674','6','lucygray04',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',4,2),(22,'2025-05-17 13:37:07.294642','6','lucygray04',2,'[]',4,2),(23,'2025-05-17 13:37:17.583569','21','michaelscott19',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',4,2),(24,'2025-05-17 13:37:26.103379','18','natasharomanoff16',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',4,2),(25,'2025-05-17 13:37:35.561836','22','pamhalpert20',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',4,2),(26,'2025-05-17 13:37:45.760528','20','rebeccabloom18',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',4,2),(27,'2025-05-17 13:37:59.338781','13','steverogers11',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',4,2),(28,'2025-05-17 13:38:07.297364','7','tomhardy05',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',4,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(10,'authtoken','token'),(11,'authtoken','tokenproxy'),(5,'contenttypes','contenttype'),(7,'restaurant','booking'),(8,'restaurant','menuitem'),(9,'restaurant','order'),(6,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2025-05-17 10:42:41.550334'),(2,'auth','0001_initial','2025-05-17 10:42:42.805217'),(3,'admin','0001_initial','2025-05-17 10:42:43.126935'),(4,'admin','0002_logentry_remove_auto_add','2025-05-17 10:42:43.142828'),(5,'admin','0003_logentry_add_action_flag_choices','2025-05-17 10:42:43.157030'),(6,'contenttypes','0002_remove_content_type_name','2025-05-17 10:42:43.367822'),(7,'auth','0002_alter_permission_name_max_length','2025-05-17 10:42:43.501299'),(8,'auth','0003_alter_user_email_max_length','2025-05-17 10:42:43.547280'),(9,'auth','0004_alter_user_username_opts','2025-05-17 10:42:43.564047'),(10,'auth','0005_alter_user_last_login_null','2025-05-17 10:42:43.680891'),(11,'auth','0006_require_contenttypes_0002','2025-05-17 10:42:43.687286'),(12,'auth','0007_alter_validators_add_error_messages','2025-05-17 10:42:43.701670'),(13,'auth','0008_alter_user_username_max_length','2025-05-17 10:42:43.852397'),(14,'auth','0009_alter_user_last_name_max_length','2025-05-17 10:42:43.992292'),(15,'auth','0010_alter_group_name_max_length','2025-05-17 10:42:44.025240'),(16,'auth','0011_update_proxy_permissions','2025-05-17 10:42:44.041542'),(17,'auth','0012_alter_user_first_name_max_length','2025-05-17 10:42:44.178879'),(18,'authtoken','0001_initial','2025-05-17 10:42:44.374541'),(19,'authtoken','0002_auto_20160226_1747','2025-05-17 10:42:44.426183'),(20,'authtoken','0003_tokenproxy','2025-05-17 10:42:44.433524'),(21,'authtoken','0004_alter_tokenproxy_options','2025-05-17 10:42:44.443186'),(22,'restaurant','0001_initial','2025-05-17 10:42:44.506197'),(23,'restaurant','0002_alter_booking_booking_date','2025-05-17 10:42:44.593142'),(24,'restaurant','0003_rename_menu_menuitem','2025-05-17 10:42:44.640412'),(25,'restaurant','0004_booking_user','2025-05-17 10:42:44.768503'),(26,'restaurant','0005_menuitem_description_order','2025-05-17 10:42:45.472343'),(27,'restaurant','0006_alter_order_order_datetime','2025-05-17 10:42:45.484290'),(28,'restaurant','0007_alter_order_order_datetime','2025-05-17 10:42:45.496626'),(29,'restaurant','0008_alter_order_delivery_crew_alter_order_order_datetime','2025-05-17 10:42:45.709479'),(30,'restaurant','0009_alter_order_order_datetime','2025-05-17 10:42:45.722692'),(31,'restaurant','0010_alter_order_order_datetime','2025-05-17 10:42:45.735137'),(32,'restaurant','0011_alter_order_order_datetime','2025-05-17 10:42:45.751513'),(33,'sessions','0001_initial','2025-05-17 10:42:45.812439'),(34,'restaurant','0012_alter_order_order_datetime','2025-05-17 13:55:30.192025'),(35,'restaurant','0013_rename_order_items_order_ordered_menu_items_and_more','2025-05-17 14:22:20.536601');
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
INSERT INTO `django_session` VALUES ('k38zwog775czbokcnthf26n2az9u5fkc','.eJxVjEsOwiAUAO_C2hCgwCsu3fcM5D0-UjWQlHZlvLsh6UK3M5N5M4_HXvzR0-bXyK5MscsvIwzPVIeID6z3xkOr-7YSHwk_bedLi-l1O9u_QcFextYJgJBzmhElOK3EbKbJAFAmK0DpYC3EDNkpQ0JrkEqQVkZagIkcsc8Xv9Q2kg:1uGH9j:ibje5l8Kf8IWpCyYgJr_uyj2S5ebWAJxQfD_-RJbPf4','2025-05-31 13:00:47.525082');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant_booking`
--

DROP TABLE IF EXISTS `restaurant_booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurant_booking` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `no_of_guests` int NOT NULL,
  `booking_date` datetime(6) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `restaurant_booking_user_id_0b318e0a_fk_auth_user_id` (`user_id`),
  CONSTRAINT `restaurant_booking_user_id_0b318e0a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant_booking`
--

LOCK TABLES `restaurant_booking` WRITE;
/*!40000 ALTER TABLE `restaurant_booking` DISABLE KEYS */;
INSERT INTO `restaurant_booking` VALUES (1,'John Doe',4,'2025-05-18 19:00:00.000000',3),(2,'Emily Rose',2,'2025-05-20 18:30:00.000000',7),(3,'Michael Scott',5,'2025-05-21 20:00:00.000000',10),(4,'Pam Halpert',3,'2025-05-22 19:15:00.000000',14),(5,'Rebecca Bloom',6,'2025-05-23 21:00:00.000000',15),(6,'David Smith',4,'2025-05-24 18:45:00.000000',18),(7,'Angela Black',2,'2025-05-25 20:30:00.000000',20),(8,'Chris Evans',3,'2025-05-26 19:00:00.000000',22),(9,'Lucy Gray',4,'2025-05-27 18:00:00.000000',6),(10,'Tony Stark',5,'2025-05-28 21:30:00.000000',9);
/*!40000 ALTER TABLE `restaurant_booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant_menuitem`
--

DROP TABLE IF EXISTS `restaurant_menuitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurant_menuitem` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `inventory` int NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant_menuitem`
--

LOCK TABLES `restaurant_menuitem` WRITE;
/*!40000 ALTER TABLE `restaurant_menuitem` DISABLE KEYS */;
INSERT INTO `restaurant_menuitem` VALUES (1,'Cappuccino',4.50,15,'A cappuccino is a coffee drink that today is typically composed of a single, double, or triple espresso shot and hot milk, with the surface topped with foamed milk.'),(2,'Apricot Delight',12.00,10,'Apricot Delight is a dessert that combines dried apricots, nuts, and cream for a delightful, layered treat.'),(3,'Dal Tadka',6.00,17,'Dal Tadka is one of the most popular lentil dish served in Indian restaurants. Basically, dal tadka is a dish of cooked lentils which are tempered with oil- or ghee-fried spices & herbs.'),(4,'Margherita Pizza',8.99,50,'Classic pizza topped with tomato, mozzarella, and basil.'),(5,'Spaghetti Carbonara',12.50,30,'Traditional Italian pasta with egg, cheese, pancetta, and pepper.'),(6,'Grilled Chicken Salad',10.75,25,'Fresh greens topped with grilled chicken, cherry tomatoes, and vinaigrette.'),(7,'Cheeseburger',9.99,40,'Beef patty with cheddar cheese, lettuce, tomato, and special sauce.'),(8,'Lemon Herb Salmon',14.25,20,'Grilled salmon fillet with lemon butter and herbs.'),(9,'Tandoori Chicken',11.50,15,'Spiced and grilled chicken served with mint chutney.'),(10,'Paneer Butter Masala',9.25,35,'Cottage cheese cubes in a rich tomato-butter gravy.'),(11,'Veggie Lasagna',10.00,22,'Layers of pasta with mixed vegetables, marinara, and cheese.'),(12,'Shrimp Tacos',13.00,18,'Soft tortillas filled with spicy shrimp and creamy slaw.'),(13,'Chocolate Lava Cake',6.50,28,'Warm chocolate cake with gooey molten center.'),(14,'Iced Lemon Tea',3.50,100,'Refreshing lemon-flavored iced tea.'),(15,'Garlic Bread',4.50,60,'Crispy bread topped with garlic butter.'),(16,'Mushroom Risotto',11.75,20,'Creamy risotto with sautéed mushrooms and parmesan.'),(17,'Chicken Biryani',12.00,30,'Fragrant basmati rice cooked with chicken and spices.'),(18,'Greek Yogurt Parfait',5.25,25,'Layers of Greek yogurt, granola, and fresh berries.');
/*!40000 ALTER TABLE `restaurant_menuitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant_order`
--

DROP TABLE IF EXISTS `restaurant_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurant_order` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `delivery_status` tinyint(1) NOT NULL,
  `order_datetime` datetime(6) NOT NULL,
  `total_amount` decimal(6,2) DEFAULT NULL,
  `delivery_crew_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `restaurant_order_user_id_7ea310d4_fk_auth_user_id` (`user_id`),
  KEY `restaurant_order_delivery_status_57b01b07` (`delivery_status`),
  KEY `restaurant_order_delivery_crew_id_20f7a512` (`delivery_crew_id`),
  CONSTRAINT `restaurant_order_delivery_crew_id_20f7a512_fk_auth_user_id` FOREIGN KEY (`delivery_crew_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `restaurant_order_user_id_7ea310d4_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant_order`
--

LOCK TABLES `restaurant_order` WRITE;
/*!40000 ALTER TABLE `restaurant_order` DISABLE KEYS */;
INSERT INTO `restaurant_order` VALUES (1,0,'2025-05-16 10:30:00.000000',45.90,12,3),(2,1,'2025-05-16 12:15:00.000000',67.40,5,4),(3,0,'2025-05-16 14:00:00.000000',22.00,16,6),(4,1,'2025-05-16 16:45:00.000000',38.20,11,7),(5,0,'2025-05-16 18:10:00.000000',51.75,19,8),(6,1,'2025-05-16 20:30:00.000000',28.50,5,9),(7,0,'2025-05-17 09:20:00.000000',75.00,12,10),(8,1,'2025-05-17 11:50:00.000000',33.30,16,13),(9,0,'2025-05-17 14:40:00.000000',60.00,19,14),(10,1,'2025-05-17 17:15:00.000000',49.10,11,15);
/*!40000 ALTER TABLE `restaurant_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant_order_ordered_menu_items`
--

DROP TABLE IF EXISTS `restaurant_order_ordered_menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurant_order_ordered_menu_items` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `order_id` bigint NOT NULL,
  `menuitem_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `restaurant_order_order_items_order_id_menuitem_id_c8cfe964_uniq` (`order_id`,`menuitem_id`),
  KEY `restaurant_order_ord_menuitem_id_f5e39abb_fk_restauran` (`menuitem_id`),
  CONSTRAINT `restaurant_order_ord_menuitem_id_f5e39abb_fk_restauran` FOREIGN KEY (`menuitem_id`) REFERENCES `restaurant_menuitem` (`id`),
  CONSTRAINT `restaurant_order_ord_order_id_46c7c238_fk_restauran` FOREIGN KEY (`order_id`) REFERENCES `restaurant_order` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant_order_ordered_menu_items`
--

LOCK TABLES `restaurant_order_ordered_menu_items` WRITE;
/*!40000 ALTER TABLE `restaurant_order_ordered_menu_items` DISABLE KEYS */;
INSERT INTO `restaurant_order_ordered_menu_items` VALUES (41,1,3),(42,1,7),(43,1,11),(44,2,5),(45,2,6),(46,3,2),(47,4,1),(48,4,8),(49,4,13),(50,5,4),(51,5,15),(52,6,9),(53,6,10),(54,7,12),(55,7,14),(56,7,16),(57,7,17),(58,8,3),(59,8,6),(60,9,1),(61,9,5),(62,9,18),(63,10,2),(64,10,7),(65,10,11);
/*!40000 ALTER TABLE `restaurant_order_ordered_menu_items` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-17 20:19:17
