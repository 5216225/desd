-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 62.80.229.10    Database: SMARTCARE_DB
-- ------------------------------------------------------
-- Server version	8.3.0

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
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add admins',1,'add_admins'),(2,'Can change admins',1,'change_admins'),(3,'Can delete admins',1,'delete_admins'),(4,'Can view admins',1,'view_admins'),(5,'Can add appointments',2,'add_appointments'),(6,'Can change appointments',2,'change_appointments'),(7,'Can delete appointments',2,'delete_appointments'),(8,'Can view appointments',2,'view_appointments'),(9,'Can add cancellation types',3,'add_cancellationtypes'),(10,'Can change cancellation types',3,'change_cancellationtypes'),(11,'Can delete cancellation types',3,'delete_cancellationtypes'),(12,'Can view cancellation types',3,'view_cancellationtypes'),(13,'Can add patients',4,'add_patients'),(14,'Can change patients',4,'change_patients'),(15,'Can delete patients',4,'delete_patients'),(16,'Can view patients',4,'view_patients'),(17,'Can add prescriptions',5,'add_prescriptions'),(18,'Can change prescriptions',5,'change_prescriptions'),(19,'Can delete prescriptions',5,'delete_prescriptions'),(20,'Can view prescriptions',5,'view_prescriptions'),(21,'Can add staff rates',6,'add_staffrates'),(22,'Can change staff rates',6,'change_staffrates'),(23,'Can delete staff rates',6,'delete_staffrates'),(24,'Can view staff rates',6,'view_staffrates'),(25,'Can add users',7,'add_users'),(26,'Can change users',7,'change_users'),(27,'Can delete users',7,'delete_users'),(28,'Can view users',7,'view_users'),(29,'Can add appointment cancellations',8,'add_appointmentcancellations'),(30,'Can change appointment cancellations',8,'change_appointmentcancellations'),(31,'Can delete appointment cancellations',8,'delete_appointmentcancellations'),(32,'Can view appointment cancellations',8,'view_appointmentcancellations'),(33,'Can add prescriptions assignments',9,'add_prescriptionsassignments'),(34,'Can change prescriptions assignments',9,'change_prescriptionsassignments'),(35,'Can delete prescriptions assignments',9,'delete_prescriptionsassignments'),(36,'Can view prescriptions assignments',9,'view_prescriptionsassignments'),(37,'Can add prescription cancellations',10,'add_prescriptioncancellations'),(38,'Can change prescription cancellations',10,'change_prescriptioncancellations'),(39,'Can delete prescription cancellations',10,'delete_prescriptioncancellations'),(40,'Can view prescription cancellations',10,'view_prescriptioncancellations'),(41,'Can add staffs',11,'add_staffs'),(42,'Can change staffs',11,'change_staffs'),(43,'Can delete staffs',11,'delete_staffs'),(44,'Can view staffs',11,'view_staffs'),(45,'Can add permission',12,'add_permission'),(46,'Can change permission',12,'change_permission'),(47,'Can delete permission',12,'delete_permission'),(48,'Can view permission',12,'view_permission'),(49,'Can add group',13,'add_group'),(50,'Can change group',13,'change_group'),(51,'Can delete group',13,'delete_group'),(52,'Can view group',13,'view_group'),(53,'Can add user',14,'add_user'),(54,'Can change user',14,'change_user'),(55,'Can delete user',14,'delete_user'),(56,'Can view user',14,'view_user'),(57,'Can add session',15,'add_session'),(58,'Can change session',15,'change_session'),(59,'Can delete session',15,'delete_session'),(60,'Can view session',15,'view_session'),(61,'Can add content type',16,'add_contenttype'),(62,'Can change content type',16,'change_contenttype'),(63,'Can delete content type',16,'delete_contenttype'),(64,'Can view content type',16,'view_contenttype'),(65,'Can add slots',17,'add_slots'),(66,'Can change slots',17,'change_slots'),(67,'Can delete slots',17,'delete_slots'),(68,'Can view slots',17,'view_slots'),(69,'Can add schedules',18,'add_schedules'),(70,'Can change schedules',18,'change_schedules'),(71,'Can delete schedules',18,'delete_schedules'),(72,'Can view schedules',18,'view_schedules'),(73,'Can add days',19,'add_days'),(74,'Can change days',19,'change_days'),(75,'Can delete days',19,'delete_days'),(76,'Can view days',19,'view_days'),(77,'Can add durations',20,'add_durations'),(78,'Can change durations',20,'change_durations'),(79,'Can delete durations',20,'delete_durations'),(80,'Can view durations',20,'view_durations'),(81,'Can add login attempts',21,'add_loginattempts'),(82,'Can change login attempts',21,'change_loginattempts'),(83,'Can delete login attempts',21,'delete_loginattempts'),(84,'Can view login attempts',21,'view_loginattempts');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
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
-- Table structure for table `database_models_appointmentcancellations`
--

DROP TABLE IF EXISTS `database_models_appointmentcancellations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `database_models_appointmentcancellations` (
  `appointment_canellation_id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(250) NOT NULL,
  `appointment_id` int NOT NULL,
  `cancellation_type_id` int NOT NULL,
  PRIMARY KEY (`appointment_canellation_id`),
  KEY `database_models_appo_appointment_id_b5eac748_fk_database_` (`appointment_id`),
  KEY `database_models_appo_cancellation_type_id_25ef00d3_fk_database_` (`cancellation_type_id`),
  CONSTRAINT `database_models_appo_appointment_id_b5eac748_fk_database_` FOREIGN KEY (`appointment_id`) REFERENCES `database_models_appointments` (`appointment_id`),
  CONSTRAINT `database_models_appo_cancellation_type_id_25ef00d3_fk_database_` FOREIGN KEY (`cancellation_type_id`) REFERENCES `database_models_cancellationtypes` (`cancellation_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `database_models_appointmentcancellations`
--

LOCK TABLES `database_models_appointmentcancellations` WRITE;
/*!40000 ALTER TABLE `database_models_appointmentcancellations` DISABLE KEYS */;
INSERT INTO `database_models_appointmentcancellations` VALUES (3,'doctor is on holiday',21,2),(8,'sick leave',200,1),(9,'Cancelled by Patient',203,9),(10,'on holiday',204,2),(11,'Cancelled by Patient',209,9),(12,'Cancelled by Patient',209,9),(13,'emergency',211,3),(15,'on holiday',224,2),(16,'sick leave (Cancelled by Admin)',233,1),(17,'sick leave (Cancelled by Admin)',238,1),(18,'sick leave (Cancelled by Admin)',237,1);
/*!40000 ALTER TABLE `database_models_appointmentcancellations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `database_models_appointments`
--

DROP TABLE IF EXISTS `database_models_appointments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `database_models_appointments` (
  `appointment_id` int NOT NULL AUTO_INCREMENT,
  `appointment_date` date NOT NULL,
  `appointment_start` time(6) NOT NULL,
  `appointment_end` time(6) NOT NULL,
  `consultation_cost` decimal(8,2) NOT NULL,
  `appointment_status` varchar(50) NOT NULL,
  `appointment_outcome` varchar(50) NOT NULL,
  `appointment_payment_status` tinyint(1) NOT NULL,
  `patient_id` int NOT NULL,
  `staff_id` int NOT NULL,
  PRIMARY KEY (`appointment_id`),
  KEY `database_models_appo_patient_id_9481d8cd_fk_database_` (`patient_id`),
  KEY `database_models_appo_staff_id_3059cfb7_fk_database_` (`staff_id`),
  CONSTRAINT `database_models_appo_patient_id_9481d8cd_fk_database_` FOREIGN KEY (`patient_id`) REFERENCES `database_models_patients` (`patient_id`),
  CONSTRAINT `database_models_appo_staff_id_3059cfb7_fk_database_` FOREIGN KEY (`staff_id`) REFERENCES `database_models_staffs` (`staff_id`)
) ENGINE=InnoDB AUTO_INCREMENT=241 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `database_models_appointments`
--

LOCK TABLES `database_models_appointments` WRITE;
/*!40000 ALTER TABLE `database_models_appointments` DISABLE KEYS */;
INSERT INTO `database_models_appointments` VALUES (14,'2024-02-20','13:10:00.000000','13:30:00.000000',122.00,'cancelled','cancelled',0,2,2),(15,'2024-02-20','13:30:00.000000','14:00:00.000000',100.00,'cancelled','cancelled',0,2,2),(16,'2024-02-21','11:10:00.000000','11:40:00.000000',100.00,'completed','forwarded',1,1,1),(17,'2024-02-23','09:00:00.000000','09:30:00.000000',95.00,'cancelled','cancelled',0,1,1),(18,'2024-02-23','09:00:00.000000','09:30:00.000000',100.00,'cancelled','cancelled',1,2,2),(19,'2024-02-25','10:20:00.000000','10:40:00.000000',80.00,'cancelled','cancelled',0,2,3),(20,'2024-02-21','10:40:00.000000','11:10:00.000000',110.00,'completed','forwarded',1,2,3),(21,'2024-02-20','14:10:00.000000','14:20:00.000000',50.00,'cancelled','cancelled',1,1,1),(22,'2024-02-20','09:00:00.000000','09:30:00.000000',120.00,'completed','prescribed',1,1,1),(23,'2024-02-21','09:50:00.000000','10:10:00.000000',68.00,'completed','prescribed',1,1,1),(24,'2024-02-19','09:00:00.000000','09:30:00.000000',200.00,'completed','forwarded',1,1,2),(25,'2024-02-26','11:40:00.000000','12:00:00.000000',78.00,'completed','prescribed',1,1,2),(63,'2024-02-20','09:00:00.000000','09:30:00.000000',150.00,'cancelled','cancelled',0,1,2),(72,'2024-02-26','09:00:00.000000','09:30:00.000000',150.00,'cancelled','cancelled',0,1,1),(112,'2024-02-29','09:00:00.000000','09:20:00.000000',100.00,'cancelled','cancelled',0,2,2),(113,'2024-03-01','09:30:00.000000','10:00:00.000000',150.00,'cancelled','cancelled',0,2,1),(116,'2024-03-01','10:00:00.000000','10:20:00.000000',100.00,'cancelled','cancelled',0,15,1),(132,'2024-03-14','09:00:00.000000','09:30:00.000000',15.50,'completed','prescribed',1,2,1),(133,'2024-03-15','10:20:00.000000','10:30:00.000000',36.70,'completed','prescribed',1,2,1),(136,'2024-03-04','09:40:00.000000','10:00:00.000000',36.70,'cancelled','cancelled',0,1,3),(137,'2024-03-06','09:30:00.000000','09:50:00.000000',36.70,'cancelled','cancelled',0,1,1),(138,'2024-03-08','09:30:00.000000','10:00:00.000000',150.00,'cancelled','cancelled',0,1,1),(143,'2024-03-14','10:00:00.000000','10:20:00.000000',100.00,'cancelled','cancelled',0,1,1),(144,'2024-03-22','09:00:00.000000','09:30:00.000000',150.00,'cancelled','cancelled',0,1,1),(145,'2024-03-15','09:30:00.000000','10:00:00.000000',150.00,'cancelled','cancelled',0,1,1),(146,'2024-03-15','17:30:00.000000','17:50:00.000000',100.00,'cancelled','cancelled',0,1,1),(148,'2024-03-18','09:50:00.000000','10:20:00.000000',150.00,'cancelled','cancelled',0,1,1),(149,'2024-03-20','09:30:00.000000','09:50:00.000000',100.00,'cancelled','cancelled',0,1,1),(150,'2024-03-22','14:40:00.000000','14:50:00.000000',15.00,'cancelled','cancelled',0,1,3),(151,'2024-03-20','11:40:00.000000','12:00:00.000000',100.00,'cancelled','cancelled',0,1,1),(152,'2024-03-21','12:40:00.000000','12:50:00.000000',50.00,'cancelled','cancelled',0,1,2),(153,'2024-03-19','15:00:00.000000','15:20:00.000000',100.00,'cancelled','cancelled',0,1,2),(154,'2024-03-19','09:00:00.000000','09:30:00.000000',150.00,'cancelled','cancelled',0,1,1),(155,'2024-03-21','11:10:00.000000','11:40:00.000000',150.00,'cancelled','cancelled',0,1,2),(156,'2024-03-20','09:50:00.000000','10:10:00.000000',100.00,'cancelled','cancelled',0,1,2),(157,'2024-03-19','09:30:00.000000','10:00:00.000000',150.00,'cancelled','cancelled',0,1,2),(158,'2024-03-21','10:40:00.000000','11:10:00.000000',150.00,'cancelled','cancelled',0,1,2),(159,'2024-03-18','09:30:00.000000','09:50:00.000000',100.00,'cancelled','cancelled',0,1,1),(160,'2024-03-25','15:30:00.000000','15:50:00.000000',30.00,'cancelled','cancelled',0,1,3),(161,'2024-03-27','11:10:00.000000','11:40:00.000000',150.00,'cancelled','cancelled',0,1,1),(162,'2024-03-26','11:50:00.000000','12:20:00.000000',150.00,'cancelled','cancelled',0,1,1),(163,'2024-03-26','16:40:00.000000','16:50:00.000000',50.00,'cancelled','cancelled',0,1,1),(164,'2024-03-27','12:30:00.000000','12:40:00.000000',50.00,'cancelled','cancelled',0,4,2),(166,'2024-03-25','09:00:00.000000','09:30:00.000000',45.00,'cancelled','cancelled',0,1,3),(167,'2024-03-29','10:50:00.000000','11:10:00.000000',30.00,'cancelled','cancelled',0,1,3),(169,'2024-04-01','09:50:00.000000','10:20:00.000000',150.00,'cancelled','cancelled',0,1,1),(173,'2024-03-21','17:40:00.000000','18:00:00.000000',100.00,'cancelled','cancelled',0,1,2),(174,'2024-03-27','15:40:00.000000','16:10:00.000000',150.00,'cancelled','cancelled',0,1,1),(178,'2024-03-26','11:20:00.000000','11:50:00.000000',150.00,'cancelled','cancelled',0,1,2),(181,'2024-03-29','09:50:00.000000','10:20:00.000000',45.00,'cancelled','cancelled',0,1,3),(182,'2024-03-29','10:20:00.000000','10:30:00.000000',50.00,'cancelled','cancelled',0,4,1),(183,'2024-03-29','17:50:00.000000','18:00:00.000000',50.00,'cancelled','cancelled',0,1,1),(184,'2024-03-29','17:30:00.000000','17:50:00.000000',30.00,'cancelled','cancelled',0,4,3),(186,'2024-03-28','10:00:00.000000','10:20:00.000000',100.00,'cancelled','cancelled',0,1,2),(188,'2024-03-29','11:10:00.000000','11:40:00.000000',150.00,'cancelled','cancelled',0,1,1),(189,'2024-03-29','14:50:00.000000','15:10:00.000000',30.00,'cancelled','cancelled',0,1,3),(190,'2024-03-28','09:40:00.000000','10:00:00.000000',100.00,'cancelled','cancelled',0,1,2),(191,'2024-03-29','09:30:00.000000','10:00:00.000000',150.00,'cancelled','cancelled',0,3,1),(192,'2024-04-03','09:00:00.000000','09:30:00.000000',150.00,'cancelled','cancelled',0,3,2),(193,'2024-04-04','16:30:00.000000','16:40:00.000000',50.00,'cancelled','cancelled',0,1,3),(194,'2024-04-18','16:30:00.000000','16:40:00.000000',150.00,'completed','prescribed',1,2,2),(195,'2024-04-05','09:00:00.000000','09:30:00.000000',150.00,'completed','prescribed',0,16,1),(200,'2024-04-08','09:00:00.000000','09:30:00.000000',150.00,'cancelled','cancelled',0,1,1),(202,'2024-04-16','11:50:00.000000','12:20:00.000000',150.00,'cancelled','cancelled',0,1,1),(203,'2024-04-15','09:00:00.000000','09:30:00.000000',150.00,'cancelled','cancelled',0,1,1),(204,'2024-04-09','09:00:00.000000','09:30:00.000000',150.00,'cancelled','cancelled',0,1,1),(205,'2024-04-12','17:50:00.000000','18:00:00.000000',15.00,'cancelled','cancelled',0,1,3),(207,'2024-04-24','09:30:00.000000','09:50:00.000000',100.00,'completed','prescribed',1,1,1),(209,'2024-04-19','15:20:00.000000','15:30:00.000000',50.00,'cancelled','cancelled',1,1,1),(210,'2024-04-17','12:40:00.000000','13:10:00.000000',150.00,'completed','prescribed',1,3,1),(211,'2024-04-19','09:00:00.000000','09:30:00.000000',150.00,'cancelled','cancelled',1,3,1),(212,'2024-04-17','13:50:00.000000','14:00:00.000000',50.00,'cancelled','cancelled',0,1,2),(213,'2024-04-26','13:20:00.000000','13:40:00.000000',45.00,'completed','prescribed',1,3,3),(215,'2024-04-19','12:00:00.000000','12:20:00.000000',30.00,'cancelled','cancelled',0,3,3),(216,'2024-04-17','12:30:00.000000','12:40:00.000000',50.00,'cancelled','cancelled',0,1,2),(217,'2024-04-17','09:00:00.000000','09:30:00.000000',150.00,'cancelled','cancelled',0,1,1),(218,'2024-04-19','09:30:00.000000','10:00:00.000000',150.00,'cancelled','cancelled',0,1,1),(219,'2024-04-18','17:40:00.000000','18:00:00.000000',100.00,'cancelled','cancelled',0,1,2),(220,'2024-04-19','17:00:00.000000','17:20:00.000000',100.00,'cancelled','cancelled',0,1,1),(221,'2024-04-24','21:50:00.000000','21:53:00.000000',100.00,'completed','prescribed',0,16,2),(222,'2024-04-25','09:00:00.000000','09:20:00.000000',100.00,'completed','prescribed',1,28,2),(223,'2024-04-25','12:40:00.000000','12:50:00.000000',50.00,'completed','prescribed',1,28,2),(224,'2024-04-29','09:00:00.000000','09:30:00.000000',150.00,'cancelled','cancelled',1,1,1),(225,'2024-04-29','09:30:00.000000','09:50:00.000000',100.00,'completed','prescribed',1,1,1),(226,'2024-04-29','09:50:00.000000','10:20:00.000000',150.00,'completed','forwarded',1,1,1),(227,'2024-04-29','10:20:00.000000','10:40:00.000000',100.00,'completed','prescribed',1,1,1),(228,'2024-04-29','10:40:00.000000','11:10:00.000000',150.00,'completed','prescribed',1,1,1),(229,'2024-04-29','11:10:00.000000','11:40:00.000000',150.00,'completed','prescribed',1,1,1),(230,'2024-04-30','09:00:00.000000','09:30:00.000000',150.00,'completed','prescribed',1,1,1),(231,'2024-05-02','11:10:00.000000','11:40:00.000000',150.00,'completed','prescribed',1,1,2),(232,'2024-04-29','13:30:00.000000','13:40:00.000000',15.83,'completed','forwarded',0,2,3),(233,'2024-04-25','15:10:00.000000','15:30:00.000000',100.00,'upcoming','awaiting',1,1,2),(234,'2024-04-30','10:00:00.000000','10:10:00.000000',50.00,'completed','forwarded',1,28,1),(237,'2024-04-30','10:20:00.000000','10:50:00.000000',150.00,'cancelled','cancelled',0,1,2),(238,'2024-04-30','10:20:00.000000','10:50:00.000000',150.00,'upcoming','awaiting',0,1,2),(239,'2024-05-03','11:10:00.000000','11:30:00.000000',31.67,'upcoming','awaiting',0,1,3),(240,'2024-05-02','09:00:00.000000','09:20:00.000000',100.00,'upcoming','awaiting',1,1,1);
/*!40000 ALTER TABLE `database_models_appointments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `database_models_cancellationtypes`
--

DROP TABLE IF EXISTS `database_models_cancellationtypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `database_models_cancellationtypes` (
  `cancellation_type_id` int NOT NULL AUTO_INCREMENT,
  `cancellation_type` varchar(50) NOT NULL,
  `individual_type` varchar(50) NOT NULL,
  PRIMARY KEY (`cancellation_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `database_models_cancellationtypes`
--

LOCK TABLES `database_models_cancellationtypes` WRITE;
/*!40000 ALTER TABLE `database_models_cancellationtypes` DISABLE KEYS */;
INSERT INTO `database_models_cancellationtypes` VALUES (1,'sick leave','doctor/nurse'),(2,'on holiday','doctor/nurse'),(3,'emergency','doctor/nurse'),(4,'incorrect prescription','doctor/nurse'),(5,'outdated prescription','doctor/nurse'),(6,'prescription cancelled (doctor/nurse)','doctor/nurse'),(7,'prescription cancelled (patient)','patient'),(8,'appointment cancelled (doctor/nurse)','patient'),(9,'appointment cancelled (patient)','patient'),(10,'deleted user','all');
/*!40000 ALTER TABLE `database_models_cancellationtypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `database_models_days`
--

DROP TABLE IF EXISTS `database_models_days`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `database_models_days` (
  `day_id` int NOT NULL AUTO_INCREMENT,
  `day` varchar(12) NOT NULL,
  PRIMARY KEY (`day_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `database_models_days`
--

LOCK TABLES `database_models_days` WRITE;
/*!40000 ALTER TABLE `database_models_days` DISABLE KEYS */;
INSERT INTO `database_models_days` VALUES (1,'monday'),(2,'tuesday'),(3,'wednesday'),(4,'thursday'),(5,'friday'),(6,'saturday'),(7,'sunday');
/*!40000 ALTER TABLE `database_models_days` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `database_models_durations`
--

DROP TABLE IF EXISTS `database_models_durations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `database_models_durations` (
  `duration_id` int NOT NULL AUTO_INCREMENT,
  `duration_length` int NOT NULL,
  PRIMARY KEY (`duration_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `database_models_durations`
--

LOCK TABLES `database_models_durations` WRITE;
/*!40000 ALTER TABLE `database_models_durations` DISABLE KEYS */;
INSERT INTO `database_models_durations` VALUES (1,1),(2,2),(3,3);
/*!40000 ALTER TABLE `database_models_durations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `database_models_loginattempts`
--

DROP TABLE IF EXISTS `database_models_loginattempts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `database_models_loginattempts` (
  `login_attempt_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `datetime` datetime(6) NOT NULL,
  PRIMARY KEY (`login_attempt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `database_models_loginattempts`
--

LOCK TABLES `database_models_loginattempts` WRITE;
/*!40000 ALTER TABLE `database_models_loginattempts` DISABLE KEYS */;
INSERT INTO `database_models_loginattempts` VALUES (131,'edgar','2024-04-25 12:31:45.325432'),(132,'edgar','2024-04-28 11:36:36.721350'),(133,'edgar','2024-04-28 11:37:51.117686'),(134,'edgar','2024-04-28 11:45:02.030284'),(135,'edgar','2024-04-28 12:40:06.397617'),(136,'ali','2024-04-28 19:06:32.698293'),(137,'dan','2024-04-28 19:38:22.066552'),(138,'dan','2024-04-28 19:38:31.530533'),(139,'first ','2024-04-28 21:28:23.148376'),(140,'lizzybrownee','2024-04-28 22:35:55.811719'),(143,'dan','2024-05-01 20:37:05.425591');
/*!40000 ALTER TABLE `database_models_loginattempts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `database_models_patients`
--

DROP TABLE IF EXISTS `database_models_patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `database_models_patients` (
  `patient_id` int NOT NULL AUTO_INCREMENT,
  `payment_source` varchar(50) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`patient_id`),
  KEY `database_models_pati_user_id_a1fcc083_fk_database_` (`user_id`),
  CONSTRAINT `database_models_pati_user_id_a1fcc083_fk_database_` FOREIGN KEY (`user_id`) REFERENCES `database_models_users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `database_models_patients`
--

LOCK TABLES `database_models_patients` WRITE;
/*!40000 ALTER TABLE `database_models_patients` DISABLE KEYS */;
INSERT INTO `database_models_patients` VALUES (1,'nhs',5),(2,'private',6),(3,'nhs',7),(4,'private',8),(5,'nhs',9),(6,'private',10),(15,'nhs',19),(16,'nhs',36),(17,'nhs',37),(19,'private',40),(22,'nhs',47),(23,'nhs',48),(24,'nhs',49),(25,'private',50),(26,'nhs',51),(27,'nhs',54),(28,'nhs',55);
/*!40000 ALTER TABLE `database_models_patients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `database_models_prescriptioncancellations`
--

DROP TABLE IF EXISTS `database_models_prescriptioncancellations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `database_models_prescriptioncancellations` (
  `prescription_cancellation_id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(250) NOT NULL,
  `cancellation_type_id` int NOT NULL,
  `prescription_assignment_id` int NOT NULL,
  `staff_id` int NOT NULL,
  PRIMARY KEY (`prescription_cancellation_id`),
  KEY `database_models_pres_cancellation_type_id_90fc0445_fk_database_` (`cancellation_type_id`),
  KEY `database_models_pres_prescription_assignm_a9238b9a_fk_database_` (`prescription_assignment_id`),
  CONSTRAINT `database_models_pres_cancellation_type_id_90fc0445_fk_database_` FOREIGN KEY (`cancellation_type_id`) REFERENCES `database_models_cancellationtypes` (`cancellation_type_id`),
  CONSTRAINT `database_models_pres_prescription_assignm_a9238b9a_fk_database_` FOREIGN KEY (`prescription_assignment_id`) REFERENCES `database_models_prescriptionsassignments` (`prescription_assignment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `database_models_prescriptioncancellations`
--

LOCK TABLES `database_models_prescriptioncancellations` WRITE;
/*!40000 ALTER TABLE `database_models_prescriptioncancellations` DISABLE KEYS */;
INSERT INTO `database_models_prescriptioncancellations` VALUES (5,'wrong prescription was requested',4,20,2),(12,'this is test 1',5,46,2),(19,'this is test 2',5,57,2),(26,'abcde',6,73,2),(32,'this is test 3',4,55,1),(44,'Cancelled due to deleted user',10,77,14),(45,'Cancelled due to deleted user',10,78,14),(49,'this is a reason',6,79,1),(50,'Cancelled due to deleted user',10,87,14),(53,'Outdated.',5,94,2);
/*!40000 ALTER TABLE `database_models_prescriptioncancellations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `database_models_prescriptions`
--

DROP TABLE IF EXISTS `database_models_prescriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `database_models_prescriptions` (
  `prescription_id` int NOT NULL AUTO_INCREMENT,
  `prescription_name` varchar(150) NOT NULL,
  `prescription_type` varchar(50) NOT NULL,
  PRIMARY KEY (`prescription_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `database_models_prescriptions`
--

LOCK TABLES `database_models_prescriptions` WRITE;
/*!40000 ALTER TABLE `database_models_prescriptions` DISABLE KEYS */;
INSERT INTO `database_models_prescriptions` VALUES (1,'Acetaminophen','Liquid'),(2,'Adderall','Tablets'),(3,'Amitriptyline','Capsules'),(4,'Bzithromycin','Drops'),(5,'Amlodipine','Inhalers'),(6,'Paracetamol','Tablets'),(9,'Paracetamol','Injections'),(13,'Adderall','Injections'),(14,'Bzithromycin','Powder'),(15,'Bzithromycin','Injections'),(18,'','Tablets'),(19,'Ibuprofen','Tablets'),(20,'example','Tablets');
/*!40000 ALTER TABLE `database_models_prescriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `database_models_prescriptionsassignments`
--

DROP TABLE IF EXISTS `database_models_prescriptionsassignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `database_models_prescriptionsassignments` (
  `prescription_assignment_id` int NOT NULL AUTO_INCREMENT,
  `prescription_cost` decimal(8,2) NOT NULL,
  `prescription_status` varchar(50) NOT NULL,
  `issued_date` date DEFAULT NULL,
  `quantity` int NOT NULL,
  `collection_status` varchar(50) NOT NULL,
  `prescription_payment_status` int NOT NULL,
  `appointment_id` int NOT NULL,
  `prescription_id` int NOT NULL,
  PRIMARY KEY (`prescription_assignment_id`),
  KEY `database_models_pres_appointment_id_6af78175_fk_database_` (`appointment_id`),
  KEY `database_models_pres_prescription_id_4c1c38dd_fk_database_` (`prescription_id`),
  CONSTRAINT `database_models_pres_appointment_id_6af78175_fk_database_` FOREIGN KEY (`appointment_id`) REFERENCES `database_models_appointments` (`appointment_id`),
  CONSTRAINT `database_models_pres_prescription_id_4c1c38dd_fk_database_` FOREIGN KEY (`prescription_id`) REFERENCES `database_models_prescriptions` (`prescription_id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `database_models_prescriptionsassignments`
--

LOCK TABLES `database_models_prescriptionsassignments` WRITE;
/*!40000 ALTER TABLE `database_models_prescriptionsassignments` DISABLE KEYS */;
INSERT INTO `database_models_prescriptionsassignments` VALUES (19,20.00,'approved','2024-02-20',2,'collected',2,22,1),(20,-1.00,'request denied',NULL,1,'cancelled',2,23,2),(21,50.00,'approved','2024-02-20',3,'collected',2,25,3),(22,70.00,'approved','2024-02-21',1,'collected',2,25,4),(45,20.00,'approved','2024-02-25',2,'collected',2,22,1),(46,-1.00,'request denied',NULL,1,'cancelled',2,23,2),(47,5.50,'approved','2024-02-21',10,'collected',2,25,3),(49,262.50,'approved','2024-03-26',18,'collected',2,23,5),(50,1000.00,'approved','2024-02-25',50,'collected',2,22,3),(53,2.00,'approved','2024-04-01',5,'waiting to collect',2,25,6),(55,-1.00,'request denied',NULL,5,'cancelled',2,132,3),(56,-1.00,'requested',NULL,0,'awaiting decision',0,133,14),(57,-1.00,'requested',NULL,0,'awaiting decision',2,23,6),(73,-1.00,'requested','2024-04-02',1,'awaiting decision',2,22,3),(77,-1.00,'request denied',NULL,0,'cancelled',0,195,1),(78,-1.00,'request denied',NULL,1,'cancelled',0,195,15),(79,-1.00,'request denied',NULL,0,'cancelled',0,23,6),(83,60.00,'approved','2024-04-16',4,'waiting to collect',2,210,6),(84,25.00,'approved','2024-04-15',32,'waiting to collect',1,210,3),(85,-1.00,'requested',NULL,2,'awaiting decision',0,211,2),(86,-1.00,'requested',NULL,0,'awaiting decision',2,22,1),(87,-1.00,'request denied',NULL,0,'cancelled',0,221,6),(88,10.00,'approved','2024-04-28',1,'waiting to collect',0,207,1),(89,25.00,'approved','2024-04-28',3,'waiting to collect',0,228,2),(90,16.00,'approved','2024-04-28',2,'waiting to collect',0,225,6),(91,1.00,'approved','2024-04-28',1,'collected',2,213,19),(92,0.00,'approved','2024-04-28',10,'waiting to collect',0,229,19),(93,0.00,'approved','2024-04-28',10,'waiting to collect',0,229,19),(94,-1.00,'request denied',NULL,0,'cancelled',0,230,20),(95,20.00,'approved','2024-04-28',100,'waiting to collect',0,231,19);
/*!40000 ALTER TABLE `database_models_prescriptionsassignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `database_models_schedules`
--

DROP TABLE IF EXISTS `database_models_schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `database_models_schedules` (
  `schedule_id` int NOT NULL AUTO_INCREMENT,
  `day_id` int NOT NULL,
  `role` varchar(12) NOT NULL,
  PRIMARY KEY (`schedule_id`),
  KEY `database_models_schedules_day_id_9b5efddc` (`day_id`),
  CONSTRAINT `database_models_sche_day_id_9b5efddc_fk_database_` FOREIGN KEY (`day_id`) REFERENCES `database_models_days` (`day_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `database_models_schedules`
--

LOCK TABLES `database_models_schedules` WRITE;
/*!40000 ALTER TABLE `database_models_schedules` DISABLE KEYS */;
INSERT INTO `database_models_schedules` VALUES (1,1,'doctor'),(2,2,'doctor'),(3,3,'doctor'),(4,4,'doctor'),(5,5,'doctor'),(6,1,'nurse'),(7,2,'nurse'),(8,3,'nurse'),(9,4,'nurse'),(10,5,'nurse');
/*!40000 ALTER TABLE `database_models_schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `database_models_slots`
--

DROP TABLE IF EXISTS `database_models_slots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `database_models_slots` (
  `slot_id` int NOT NULL AUTO_INCREMENT,
  `start_time` time(6) NOT NULL,
  `duration_id` int NOT NULL,
  `schedule_id` int NOT NULL,
  PRIMARY KEY (`slot_id`),
  KEY `database_models_slots_duration_id_709baccc` (`duration_id`),
  KEY `database_models_slot_schedule_id_5c365b29_fk_database_` (`schedule_id`),
  CONSTRAINT `database_models_slot_duration_id_709baccc_fk_database_` FOREIGN KEY (`duration_id`) REFERENCES `database_models_durations` (`duration_id`),
  CONSTRAINT `database_models_slot_schedule_id_5c365b29_fk_database_` FOREIGN KEY (`schedule_id`) REFERENCES `database_models_schedules` (`schedule_id`)
) ENGINE=InnoDB AUTO_INCREMENT=489 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `database_models_slots`
--

LOCK TABLES `database_models_slots` WRITE;
/*!40000 ALTER TABLE `database_models_slots` DISABLE KEYS */;
INSERT INTO `database_models_slots` VALUES (228,'09:00:00.000000',3,1),(229,'09:30:00.000000',2,1),(230,'09:50:00.000000',3,1),(231,'10:20:00.000000',2,1),(232,'10:40:00.000000',3,1),(233,'11:10:00.000000',3,1),(234,'11:40:00.000000',2,1),(235,'12:00:00.000000',2,1),(236,'12:20:00.000000',2,1),(237,'12:40:00.000000',3,1),(238,'13:10:00.000000',3,1),(239,'13:40:00.000000',3,1),(240,'14:10:00.000000',3,1),(241,'14:40:00.000000',2,1),(242,'15:00:00.000000',1,1),(243,'15:10:00.000000',1,1),(244,'15:20:00.000000',3,1),(245,'15:50:00.000000',2,1),(246,'16:10:00.000000',1,1),(247,'16:20:00.000000',3,1),(248,'16:50:00.000000',3,1),(249,'17:20:00.000000',3,1),(250,'17:50:00.000000',1,1),(251,'09:00:00.000000',3,2),(252,'09:30:00.000000',3,2),(253,'10:00:00.000000',1,2),(254,'10:10:00.000000',1,2),(255,'10:20:00.000000',3,2),(256,'10:50:00.000000',3,2),(257,'11:20:00.000000',3,2),(258,'11:50:00.000000',3,2),(259,'12:20:00.000000',2,2),(260,'12:40:00.000000',3,2),(261,'13:10:00.000000',2,2),(262,'13:30:00.000000',3,2),(263,'14:00:00.000000',1,2),(264,'14:10:00.000000',2,2),(265,'14:30:00.000000',3,2),(266,'15:00:00.000000',2,2),(267,'15:20:00.000000',3,2),(268,'15:50:00.000000',2,2),(269,'16:10:00.000000',3,2),(270,'16:40:00.000000',1,2),(271,'16:50:00.000000',2,2),(272,'17:10:00.000000',3,2),(273,'17:40:00.000000',2,2),(274,'09:00:00.000000',3,3),(275,'09:30:00.000000',2,3),(276,'09:50:00.000000',2,3),(277,'10:10:00.000000',2,3),(278,'10:30:00.000000',2,3),(279,'10:50:00.000000',2,3),(280,'11:10:00.000000',3,3),(281,'11:40:00.000000',2,3),(282,'12:00:00.000000',3,3),(283,'12:30:00.000000',1,3),(284,'12:40:00.000000',3,3),(285,'13:10:00.000000',3,3),(286,'13:40:00.000000',1,3),(287,'13:50:00.000000',1,3),(288,'14:00:00.000000',1,3),(289,'14:10:00.000000',1,3),(290,'14:20:00.000000',3,3),(291,'14:50:00.000000',2,3),(292,'15:10:00.000000',3,3),(293,'15:40:00.000000',3,3),(294,'16:10:00.000000',2,3),(295,'16:30:00.000000',2,3),(296,'16:50:00.000000',3,3),(297,'17:20:00.000000',2,3),(298,'17:40:00.000000',1,3),(299,'17:50:00.000000',1,3),(300,'09:00:00.000000',2,4),(301,'09:20:00.000000',1,4),(302,'09:30:00.000000',1,4),(303,'09:40:00.000000',2,4),(304,'10:00:00.000000',2,4),(305,'10:20:00.000000',2,4),(306,'10:40:00.000000',3,4),(307,'11:10:00.000000',3,4),(308,'11:40:00.000000',3,4),(309,'12:10:00.000000',3,4),(310,'12:40:00.000000',1,4),(311,'12:50:00.000000',3,4),(312,'13:20:00.000000',3,4),(313,'13:50:00.000000',3,4),(314,'14:20:00.000000',2,4),(315,'14:40:00.000000',2,4),(316,'15:00:00.000000',1,4),(317,'15:10:00.000000',2,4),(318,'15:30:00.000000',3,4),(319,'16:00:00.000000',3,4),(320,'16:30:00.000000',1,4),(321,'16:40:00.000000',3,4),(322,'17:10:00.000000',2,4),(323,'17:30:00.000000',1,4),(324,'17:40:00.000000',2,4),(325,'09:00:00.000000',3,5),(326,'09:30:00.000000',3,5),(327,'10:00:00.000000',2,5),(328,'10:20:00.000000',1,5),(329,'10:30:00.000000',2,5),(330,'10:50:00.000000',2,5),(331,'11:10:00.000000',3,5),(332,'11:40:00.000000',2,5),(333,'12:00:00.000000',3,5),(334,'12:30:00.000000',3,5),(335,'13:00:00.000000',2,5),(336,'13:20:00.000000',2,5),(337,'13:40:00.000000',1,5),(338,'13:50:00.000000',1,5),(339,'14:00:00.000000',3,5),(340,'14:30:00.000000',2,5),(341,'14:50:00.000000',3,5),(342,'15:20:00.000000',1,5),(343,'15:30:00.000000',2,5),(344,'15:50:00.000000',3,5),(345,'16:20:00.000000',3,5),(346,'16:50:00.000000',1,5),(347,'17:00:00.000000',2,5),(348,'17:20:00.000000',1,5),(349,'17:30:00.000000',2,5),(350,'17:50:00.000000',1,5),(351,'09:00:00.000000',3,6),(352,'09:30:00.000000',1,6),(353,'09:40:00.000000',2,6),(354,'10:00:00.000000',1,6),(355,'10:10:00.000000',2,6),(356,'10:30:00.000000',3,6),(357,'11:00:00.000000',2,6),(358,'11:20:00.000000',2,6),(359,'11:40:00.000000',3,6),(360,'12:10:00.000000',2,6),(361,'12:30:00.000000',3,6),(362,'13:00:00.000000',3,6),(363,'13:30:00.000000',1,6),(364,'13:40:00.000000',3,6),(365,'14:10:00.000000',1,6),(366,'14:20:00.000000',3,6),(367,'14:50:00.000000',3,6),(368,'15:20:00.000000',1,6),(369,'15:30:00.000000',2,6),(370,'15:50:00.000000',1,6),(371,'16:00:00.000000',2,6),(372,'16:20:00.000000',1,6),(373,'16:30:00.000000',2,6),(374,'16:50:00.000000',3,6),(375,'17:20:00.000000',2,6),(376,'17:40:00.000000',2,6),(377,'09:00:00.000000',3,7),(378,'09:30:00.000000',1,7),(379,'09:40:00.000000',2,7),(380,'10:00:00.000000',1,7),(381,'10:10:00.000000',2,7),(382,'10:30:00.000000',1,7),(383,'10:40:00.000000',3,7),(384,'11:10:00.000000',2,7),(385,'11:30:00.000000',2,7),(386,'11:50:00.000000',2,7),(387,'12:10:00.000000',3,7),(388,'12:40:00.000000',2,7),(389,'13:00:00.000000',2,7),(390,'13:20:00.000000',2,7),(391,'13:40:00.000000',2,7),(392,'14:00:00.000000',1,7),(393,'14:10:00.000000',2,7),(394,'14:30:00.000000',3,7),(395,'15:00:00.000000',2,7),(396,'15:20:00.000000',1,7),(397,'15:30:00.000000',3,7),(398,'16:00:00.000000',3,7),(399,'16:30:00.000000',3,7),(400,'17:00:00.000000',1,7),(401,'17:10:00.000000',3,7),(402,'17:40:00.000000',1,7),(403,'17:50:00.000000',1,7),(404,'09:00:00.000000',2,8),(405,'09:20:00.000000',1,8),(406,'09:30:00.000000',2,8),(407,'09:50:00.000000',1,8),(408,'10:00:00.000000',1,8),(409,'10:10:00.000000',1,8),(410,'10:20:00.000000',1,8),(411,'10:30:00.000000',2,8),(412,'10:50:00.000000',2,8),(413,'11:10:00.000000',3,8),(414,'11:40:00.000000',2,8),(415,'12:00:00.000000',2,8),(416,'12:20:00.000000',3,8),(417,'12:50:00.000000',2,8),(418,'13:10:00.000000',1,8),(419,'13:20:00.000000',3,8),(420,'13:50:00.000000',1,8),(421,'14:00:00.000000',2,8),(422,'14:20:00.000000',1,8),(423,'14:30:00.000000',3,8),(424,'15:00:00.000000',2,8),(425,'15:20:00.000000',3,8),(426,'15:50:00.000000',3,8),(427,'16:20:00.000000',1,8),(428,'16:30:00.000000',2,8),(429,'16:50:00.000000',1,8),(430,'17:00:00.000000',3,8),(431,'17:30:00.000000',2,8),(432,'17:50:00.000000',1,8),(433,'09:00:00.000000',1,9),(434,'09:10:00.000000',1,9),(435,'09:20:00.000000',3,9),(436,'09:50:00.000000',3,9),(437,'10:20:00.000000',1,9),(438,'10:30:00.000000',1,9),(439,'10:40:00.000000',2,9),(440,'11:00:00.000000',2,9),(441,'11:20:00.000000',2,9),(442,'11:40:00.000000',3,9),(443,'12:10:00.000000',1,9),(444,'12:20:00.000000',2,9),(445,'12:40:00.000000',2,9),(446,'13:00:00.000000',2,9),(447,'13:20:00.000000',3,9),(448,'13:50:00.000000',3,9),(449,'14:20:00.000000',1,9),(450,'14:30:00.000000',3,9),(451,'15:00:00.000000',1,9),(452,'15:10:00.000000',2,9),(453,'15:30:00.000000',2,9),(454,'15:50:00.000000',1,9),(455,'16:00:00.000000',1,9),(456,'16:10:00.000000',1,9),(457,'16:20:00.000000',1,9),(458,'16:30:00.000000',1,9),(459,'16:40:00.000000',1,9),(460,'16:50:00.000000',3,9),(461,'17:20:00.000000',3,9),(462,'17:50:00.000000',1,9),(463,'09:00:00.000000',2,10),(464,'09:20:00.000000',3,10),(465,'09:50:00.000000',3,10),(466,'10:20:00.000000',3,10),(467,'10:50:00.000000',2,10),(468,'11:10:00.000000',2,10),(469,'11:30:00.000000',1,10),(470,'11:40:00.000000',2,10),(471,'12:00:00.000000',2,10),(472,'12:20:00.000000',3,10),(473,'12:50:00.000000',3,10),(474,'13:20:00.000000',2,10),(475,'13:40:00.000000',3,10),(476,'14:10:00.000000',3,10),(477,'14:40:00.000000',1,10),(478,'14:50:00.000000',2,10),(479,'15:10:00.000000',1,10),(480,'15:20:00.000000',1,10),(481,'15:30:00.000000',2,10),(482,'15:50:00.000000',1,10),(483,'16:00:00.000000',3,10),(484,'16:30:00.000000',2,10),(485,'16:50:00.000000',2,10),(486,'17:10:00.000000',2,10),(487,'17:30:00.000000',2,10),(488,'17:50:00.000000',1,10);
/*!40000 ALTER TABLE `database_models_slots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `database_models_staffrates`
--

DROP TABLE IF EXISTS `database_models_staffrates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `database_models_staffrates` (
  `staff_rate_id` int NOT NULL AUTO_INCREMENT,
  `rate_type` varchar(50) NOT NULL,
  `rate_per_hr` decimal(8,2) NOT NULL,
  `wage_per_hr` decimal(8,2) NOT NULL,
  PRIMARY KEY (`staff_rate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `database_models_staffrates`
--

LOCK TABLES `database_models_staffrates` WRITE;
/*!40000 ALTER TABLE `database_models_staffrates` DISABLE KEYS */;
INSERT INTO `database_models_staffrates` VALUES (1,'doctor',300.00,33.20),(2,'nurse',95.00,22.00),(3,'admin',0.00,30.00);
/*!40000 ALTER TABLE `database_models_staffrates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `database_models_staffs`
--

DROP TABLE IF EXISTS `database_models_staffs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `database_models_staffs` (
  `staff_id` int NOT NULL AUTO_INCREMENT,
  `hour_type` varchar(50) NOT NULL,
  `monday` tinyint(1) NOT NULL,
  `tuesday` tinyint(1) NOT NULL,
  `wednesday` tinyint(1) NOT NULL,
  `thursday` tinyint(1) NOT NULL,
  `friday` tinyint(1) NOT NULL,
  `staff_rate_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`staff_id`),
  KEY `database_models_staf_staff_rate_id_27c0863d_fk_database_` (`staff_rate_id`),
  KEY `database_models_staf_user_id_e0c198fd_fk_database_` (`user_id`),
  CONSTRAINT `database_models_staf_staff_rate_id_27c0863d_fk_database_` FOREIGN KEY (`staff_rate_id`) REFERENCES `database_models_staffrates` (`staff_rate_id`),
  CONSTRAINT `database_models_staf_user_id_e0c198fd_fk_database_` FOREIGN KEY (`user_id`) REFERENCES `database_models_users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `database_models_staffs`
--

LOCK TABLES `database_models_staffs` WRITE;
/*!40000 ALTER TABLE `database_models_staffs` DISABLE KEYS */;
INSERT INTO `database_models_staffs` VALUES (1,'full',1,1,1,1,1,1,2),(2,'part',0,1,1,1,0,1,3),(3,'part',1,0,0,0,1,2,4),(14,'full',0,0,0,0,0,3,41),(17,'part',0,1,1,1,0,2,52),(18,'full',0,1,1,0,0,2,53),(19,'full',1,1,1,1,1,3,56),(20,'full',1,0,0,0,0,3,57),(21,'part',0,1,1,0,0,3,58),(22,'part',0,1,1,0,0,3,59),(23,'full',0,0,0,0,0,3,60),(24,'full',0,0,0,0,0,3,61),(25,'full',1,1,1,1,1,3,62),(27,'full',1,1,1,1,1,3,64);
/*!40000 ALTER TABLE `database_models_staffs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `database_models_users`
--

DROP TABLE IF EXISTS `database_models_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `database_models_users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `role` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `postcode` varchar(15) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `database_models_users`
--

LOCK TABLES `database_models_users` WRITE;
/*!40000 ALTER TABLE `database_models_users` DISABLE KEYS */;
INSERT INTO `database_models_users` VALUES (2,'First','doctor','first','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3','m','2002-01-01','first@gmail.com','07783256234','','',1),(3,'Second','doctor','second','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3','m','2003-01-01','second@gmail.com','08873552732','','',1),(4,'Best','nurse','best','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3','f','2000-01-20','best@yahoo.com','08364273274','','',1),(5,'John Smith','patient','john','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3','m','1981-07-09','john.smith@test.com','01463783379','Lockleaze (Bristol)','BS16 1AH',1),(6,'Daniella Lin','patient','dani','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3','f','1989-01-11','dan.123@yahoo.com','01463783379','81 High St, Tunbridge Wells','BS11 9HF',1),(7,'Loui Falkner','patient','loui','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3','m','1989-01-11','loui@gmail.com','08364273274','369 Falk Street','YN1 8CC',1),(8,'Shirley Scott','patient','shir','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3','f','1947-08-14','scottthewanker@yahoo.com','01202 262753','Poole Rd, Poole','BH17 7BH',1),(9,'Bishu Radar','patient','radar','d030190f8172953499d8c50ad5208ad6ba7f3e7d7092eb989375c1fdac3c33db','m','2024-02-28','bishu@wajit.com','12345678910','Bishu Street, Bish','SN1 1NS',1),(10,'Ben Dover','patient','ben','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3','m','2024-02-28','bendover@mail.com','07765446432','Ben Street','BS1 7HA',1),(19,'DELETED USER','deleted_user','DELETED_USER_#19','4198a2a76b4ac43cd9f4c0c081d4441f21f44d7b98fa48017e911ae42345be92',NULL,NULL,NULL,NULL,NULL,NULL,0),(36,'DELETED USER','deleted_user','DELETED_USER_#36','6d987a391d90fc2451751b2bb85890fc6e452bc057f39a85d8d1fd552f965fb2',NULL,NULL,NULL,NULL,NULL,NULL,0),(37,'DELETED USER','deleted_user','DELETED_USER_#37','dab06cc5a93974c94ad489c6431e118f0d1cace85c4eca7d38e19ae46faebde3',NULL,NULL,NULL,NULL,NULL,NULL,0),(40,'DELETED USER','deleted_user','DELETED_USER_#40','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3',NULL,NULL,NULL,NULL,NULL,NULL,0),(41,'Bishwajit Radar','admin','bish','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3','m','1995-04-20','sonarbishwajit23@gmail.com','07888194808','','',1),(47,'DELETED USER','deleted_user','DELETED_USER_#47','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3',NULL,NULL,NULL,NULL,NULL,NULL,0),(48,'DELETED USER','deleteduser','DELETED_USER#48','2aaedce00d63e49f81ad7e4fe49fc091f8734c5003959cc7a6e2a94b023d120c',NULL,NULL,NULL,NULL,NULL,NULL,0),(49,'Rob Smith','patient','smith1234','2f94cbe9e7f835dd575fac502e98b10f06352caf7a9bf155c749f3a1a48c4b66','m','2000-01-19','smith.rob@gmail.com','07865776543','BS17','B4 7UD',1),(50,'Liz Brown','patient','lizzybrownee','2f94cbe9e7f835dd575fac502e98b10f06352caf7a9bf155c749f3a1a48c4b66','m','1971-05-03','lizzybrownie@yahoo.com','06654779765','19 Stanley Avenue','BS34 7NQ',1),(51,'Hesitant','patient','hesitant','2f94cbe9e7f835dd575fac502e98b10f06352caf7a9bf155c749f3a1a48c4b66','m','1995-11-23','joeishesitant@gmail.com','06753667863','BS2','CV1 1FN',1),(52,'DELETED USER','deleted_user','DELETED_USER#52','28915ac6d0bbcf9cc6e5550d026d4ebc7bd08152c55033da0d680f13067a8392',NULL,NULL,NULL,NULL,NULL,NULL,0),(53,'DELETED USER','deleted_user','DELETED_USER#53','28915ac6d0bbcf9cc6e5550d026d4ebc7bd08152c55033da0d680f13067a8392',NULL,NULL,NULL,NULL,NULL,NULL,0),(54,'DELETED USER','deleted_user','DELETED_USER_#54','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3',NULL,NULL,NULL,NULL,NULL,NULL,0),(55,'Bob Roberts','patient','bobby','05c710dfce545b233bfa5ebcfa5bb873a7e49b274d55c12d5417dd383956b1f1','m','1977-04-03','bob.roberts@gmail.com','07765465436','Lockleaze (Bristol)','BS16 1AH',1),(56,'DELETED USER','deleteduser','DELETED_USER#56','2aaedce00d63e49f81ad7e4fe49fc091f8734c5003959cc7a6e2a94b023d120c',NULL,NULL,NULL,NULL,NULL,NULL,0),(57,'DELETED USER','deleteduser','DELETED_USER#57','2aaedce00d63e49f81ad7e4fe49fc091f8734c5003959cc7a6e2a94b023d120c',NULL,NULL,NULL,NULL,NULL,NULL,0),(58,'DELETED USER','deleteduser','DELETED_USER#58','28915ac6d0bbcf9cc6e5550d026d4ebc7bd08152c55033da0d680f13067a8392',NULL,NULL,NULL,NULL,NULL,NULL,0),(59,'DELETED USER','deleteduser','DELETED_USER#59','2aaedce00d63e49f81ad7e4fe49fc091f8734c5003959cc7a6e2a94b023d120c',NULL,NULL,NULL,NULL,NULL,NULL,0),(60,'DELETED USER','deleteduser','DELETED_USER#60','73ceb15f18bb0a313c8880abe54bf61a529dd8f1e75b084dd39926a1518d3d2f',NULL,NULL,NULL,NULL,NULL,NULL,0),(61,'DELETED USER','deleteduser','DELETED_USER#61','28915ac6d0bbcf9cc6e5550d026d4ebc7bd08152c55033da0d680f13067a8392',NULL,NULL,NULL,NULL,NULL,NULL,0),(62,'DELETED USER','deleteduser','DELETED_USER#62','d092138e692ab4f63bd59903494150d59c0060480ce763205a68265c4fa93aad',NULL,NULL,NULL,NULL,NULL,NULL,0),(64,'Yie Nian Chu','admin','zachcyn','1624061227710f3d1407747cafae82bb6e0c387614575e8ca017ebc1fe5c454b','f','2001-08-20','zachchuyienian@gmail.com','07824751158','Lockleaze (Bristol)','BS16 1AH',1);
/*!40000 ALTER TABLE `database_models_users` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (13,'auth','group'),(12,'auth','permission'),(14,'auth','user'),(16,'contenttypes','contenttype'),(1,'database_models','admins'),(8,'database_models','appointmentcancellations'),(2,'database_models','appointments'),(3,'database_models','cancellationtypes'),(19,'database_models','days'),(20,'database_models','durations'),(21,'database_models','loginattempts'),(4,'database_models','patients'),(10,'database_models','prescriptioncancellations'),(5,'database_models','prescriptions'),(9,'database_models','prescriptionsassignments'),(18,'database_models','schedules'),(17,'database_models','slots'),(6,'database_models','staffrates'),(11,'database_models','staffs'),(7,'database_models','users'),(15,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-02-27 22:25:31.360012'),(2,'contenttypes','0002_remove_content_type_name','2024-02-27 22:25:31.851012'),(3,'auth','0001_initial','2024-02-27 22:25:34.143034'),(4,'auth','0002_alter_permission_name_max_length','2024-02-27 22:25:34.338032'),(5,'auth','0003_alter_user_email_max_length','2024-02-27 22:25:34.515069'),(6,'auth','0004_alter_user_username_opts','2024-02-27 22:25:34.609129'),(7,'auth','0005_alter_user_last_login_null','2024-02-27 22:25:34.813612'),(8,'auth','0006_require_contenttypes_0002','2024-02-27 22:25:34.890631'),(9,'auth','0007_alter_validators_add_error_messages','2024-02-27 22:25:34.974613'),(10,'auth','0008_alter_user_username_max_length','2024-02-27 22:25:35.174621'),(11,'auth','0009_alter_user_last_name_max_length','2024-02-27 22:25:35.369605'),(12,'auth','0010_alter_group_name_max_length','2024-02-27 22:25:35.541135'),(13,'auth','0011_update_proxy_permissions','2024-02-27 22:25:35.870988'),(14,'auth','0012_alter_user_first_name_max_length','2024-02-27 22:25:36.095141'),(15,'database_models','0001_initial','2024-02-27 22:25:39.541315'),(16,'sessions','0001_initial','2024-02-27 22:25:39.874744'),(17,'database_models','0002_delete_admins','2024-02-27 22:31:21.478661'),(18,'database_models','0003_alter_prescriptionsassignments_prescription_payment_status','2024-03-04 23:23:24.475152'),(19,'database_models','0004_schedules_slots','2024-03-05 13:39:21.509056'),(20,'database_models','0005_remove_schedules_staff','2024-03-05 13:52:19.707107'),(21,'database_models','0006_alter_slots_duration','2024-03-05 14:07:42.306199'),(22,'database_models','0004_days_durations_schedules_slots','2024-03-07 13:42:38.066684'),(23,'database_models','0005_schedules_staff','2024-03-07 13:43:09.782125'),(24,'database_models','0006_alter_durations_duration','2024-03-07 14:01:18.773562'),(25,'database_models','0007_alter_slots_duration','2024-03-07 14:06:06.443687'),(26,'database_models','0008_rename_duration_durations_duration_length','2024-03-07 14:26:25.497945'),(27,'database_models','0009_alter_slots_schedule','2024-03-07 15:12:59.809023'),(28,'database_models','0010_remove_schedules_staff_schedules_role_and_more','2024-03-08 17:31:07.709380'),(29,'database_models','0011_prescriptioncancellations_staff_id','2024-03-12 00:55:48.939583'),(30,'database_models','0012_loginattempts_alter_prescriptions_prescription_type','2024-04-03 19:19:50.621568'),(31,'database_models','0013_users_is_active_alter_users_address_and_more','2024-04-04 14:25:28.188250'),(32,'database_models','0014_alter_cancellationtypes_cancellation_type_and_more','2024-04-05 23:43:48.434248'),(33,'database_models','0015_staffrates_wage_per_hr','2024-04-16 19:22:24.588887'),(34,'database_models','0016_remove_prescriptions_prescription_cost','2024-04-28 20:51:49.802393');
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
INSERT INTO `django_session` VALUES ('0mf5501p7nuchvxp1cstgp0dix7y6ivn','.eJwtj8FuwjAQRH_F2nNAMaEk5EQrVap6pRLHyIkX7Cq2kdc5VIh_7y5wnLcz4_ENFsI8WFMM9Len8Bb6twqiCQg9fCcX1TH44qCCnGZhV1M8xsJAAi_jLxuZcBUO6TyMPnOkB73v9KpuV_Wej8bajESMO62-_MWpY6nUzxLH7O0F1Qnnmdh3TVSmZKX29K63avP5IdSliENcwoiZL7Xe7pq2a5pWqjEYP79mrEn2HgpSWU8pSPS5-PE3LfIviKS05EleiY7gfv8HmvFWiA:1s1Ogz:fKKdfyI2A49QhBIk_vMYqw4POvYVixylpmR1DK6ZBzg','2024-04-29 11:12:05.008242'),('0w5mplahs7gn43ubt815yzhr0x369x98','.eJw1jsEOgjAMht-lZzRjqBhOnnyNZWydLGHUdONEeHc7xaSX7__-tN1gzcjG22Jh2H4QPQy6gcUmhAGekXOBBpjmip5cIRau1aMSjopsQUPBjJHLJLlWSp9UKyPSes-Ys8QCb8rFkceDJlrQLGsakSVRfX_v9PWmu4tITDbO_yOPV6WzoyQmFxvC99t23z9RdT9U:1s1D49:e2kWn17dhglIaX3WST1pcVKHNBLRlpt426-JC525dVY','2024-04-28 22:47:13.663530'),('17b86p86eum1nb966d4sdxkw2ca44uoc','.eJw1j0EOwiAQRa9iWLcGKkbalfEIXoAMZWoxBQzQuGh6d6dal_-9P5OZhc0Zk7ZQgHXLLzjLOikqFsAj69jN5fENT1cOd7CQWMVSnDYB1rtAcRvau4a6RGgd6jho41IZCYu2Pddc1g0nCdYmzJkwhVfMpY8W9zTGgDrM3mAiwi9KKdFKxRVJ9OAmojkGSOZ_VHO6PjZx7KOnUi4wDN8PhFzXD_pTRqk:1s1vjQ:zNS3jHkPMfN3ghVSkhCmUjIBfVxaHIZKZaTccqwwbS8','2024-04-30 22:28:48.451042'),('1obnklmv793pxg86zvl9ohcup3uni01j','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1s0jRi:o40bqM4r8DHknbeLebQ6_foog7TdUTx9tDAVcmbrAFg','2024-04-27 15:09:34.020648'),('1opglak9cimdw8oodi4yav1wgl6bi2i6','.eJw1j0EOwiAQRa9iWLeGVoy0K-MVPAAZytRiChigcdH07g5al_-9P5OZlS0JozKQgfXrL1jDetFUzIND1rObTdMbnjYf7sFDZBWLYS4CjLOeYhnau5q6RGgdqjAqbWOeCDddd665qFtOEoyJmBJhCq-Q8hAM7mkKHpVfnMZIhF-klE0nJJck0YGdiaZyhf4f1Z6ujyKOQ3BUShnG8ftBI7btAwuJRsI:1s1O32:LW8WdhQcuirfBtltd1ZWbdyp72or6SAOAcXTVPK2Y-E','2024-04-29 10:30:48.447179'),('2fm1hasgypjmmpsn4227hx26iuqh41lj','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1ryIVG:fUw3tK8DAcvlw52TsWnvlK0H-4IL8wTHkvhMx8u6Eg0','2024-04-20 21:59:10.598017'),('2s8k5vtktx3pfoggpgfn72vjs605av1p','.eJw1j0EOwiAQRa9iWLcGKkbalfEIXoAMZWoxBQzQuGh6d6dal_-9P5OZhc0Zk7ZQgHXLLzjLOikqFsAj69jN5fENT1cOd7CQWMVSnDYB1rtAcRvau4a6RGgd6jho41IZCYu2Pddc1g0nCdYmzJkwhVfMpY8W9zTGgDrM3mAiwi9KKdFKxRVJ9OAmojkGSOZ_VHO6PjZx7KOnUi4wDN8PhFzXD_pTRqk:1s28AB:m1hhIZgDokfxM9i0yXjoqivqqhDN9ktJmaBAxrk9nyI','2024-05-01 11:45:15.988400'),('34dfq315d7ei4j0x1jpr495us8xzqpr2','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1ry8hZ:6mGQDbmqrQDR17zFyYI70fv9U-vwEVt0gA7XxF2Gwig','2024-04-20 11:31:13.351502'),('3cw515d87bcdmfebn7tx07jbekebriy8','.eJwtj8FuwjAQRH_F2nNAMaEk5EQrVap6pRLHyIkX7Cq2kdc5VIh_7y5wnLcz4_ENFsI8WFMM9Len8Bb6twqiCQg9fCcX1TH44qCCnGZhV1M8xsJAAi_jLxuZcBUO6TyMPnOkB73v9KpuV_Wej8bajESMO62-_MWpY6nUzxLH7O0F1Qnnmdh3TVSmZKX29K63avP5IdSliENcwoiZL7Xe7pq2a5pWqjEYP79mrEn2HgpSWU8pSPS5-PE3LfIviKS05EleiY7gfv8HmvFWiA:1rxtEk:x_HONnQxRabPJVCvY96wqjt18wMLqMinu444CPeMXm0','2024-04-19 19:00:26.558486'),('3n2898iv8qpdy6r2tm0wrq7lto5wd7ob','.eJwtj9EOgyAMRX_F8OwWhDidT_Mb_ACCUicJ2AXwyfjvK2xJH3rPbW7bkx0RgjI6aTacP2ENG2TNdu2BDWx0tpqOTVvHahbQZWZwSRhI5_n_nHaWAAWBwlXNNqSNqOBc3nhDRaY2JkCMhOXjWZXgFAASWR-MaUFTFk5N1YxThhvuoPbDzxDI4H3fybYVnRRkgs8nlb2vd-7vC3riMel1LT-I6_oCum9FIw:1rzlBj:eJjt-cQf8fTaN2xzPN6M4xrQu52FbgaSmENLrRUZh6g','2024-04-24 22:49:03.060240'),('3orqr7ihalr7rcru7y9vozex6d8msyp4','.eJw1j0EOwiAQRa9iWLcGKkbalfEIXoAMZWoxBQzQuGh6d6dal_-9P5OZhc0Zk7ZQgHXLLzjLOikqFsAj69jN5fENT1cOd7CQWMVSnDYB1rtAcRvau4a6RGgd6jho41IZCYu2Pddc1g0nCdYmzJkwhVfMpY8W9zTGgDrM3mAiwi9KKdFKxRVJ9OAmojkGSOZ_VHO6PjZx7KOnUi4wDN8PhFzXD_pTRqk:1s1aF6:ricPk8bgxmlZQp7L9riERuaW5p2RjYy_pPPJf1SSPsc','2024-04-29 23:32:04.737143'),('3vme49f1wall85nn4d4kpo6vi9necwux','.eJwtj8EOgjAQRH-F7BkNCBXlZPSgZ028kpZWIbFd0pYDIfy7u2LSy7zp7OzOMAbjGy2jhHpeRa-hFiIFJ62BGs6okjsq42OAFDx-GA4y9sZFAhz5_1So1ESIppkGX43qfeyI58eq2mTlJivIlFp7EwIPfgjSA4bYoub85Zkn-e3KsENnGjdaqiUjq6q9KOkVezKNlf1nrdv6dbHTm9m2RcvhdbffHbsD68myDjj6lntcF2BZvjCqT_Q:1s1DJJ:_fwHRWe7E5IsO5jE3u_CS-vIWrq9I6aVRhpIybI88fY','2024-04-28 23:02:53.741903'),('40jfj3kyo9kqgj53rp2bk8w1y14xdpf7','.eJwtj8EOgjAMhl9l2RkNGyqGkwfxxM0HIIMWWARmumFiCO9upya9_N_3t0lXuXikGkwwslh_wYIsdCJnM6Es5M2SD6LCl539w3iZSHJjFODa4IhzXPqXu1hmxPewdl3dWAoDc52mepcqHpYGgNB7xplWogR4i3sgxLj4dD60DuKt8qqEqqoIBzdjPS9Tg8QizfNzpo8nnR1Y4mTsyBShN3TpY9q3bmLjg-m67zdq2z5CCUl1:1s13qM:NSjkUgIowA18yv0L-H6h3jvZHJFTNFAOg5UtfjfkUtA','2024-04-28 12:56:22.987037'),('5cphi9wo0w229o5lbqi1f2uef4gkcxl9','.eJw1j0EOwiAQRa9iWLcGKkbalfEIXoAMZWoxBQzQuGh6d6dal_-9P5OZhc0Zk7ZQgHXLLzjLOikqFsAj69jN5fENT1cOd7CQWMVSnDYB1rtAcRvau4a6RGgd6jho41IZCYu2Pddc1g0nCdYmzJkwhVfMpY8W9zTGgDrM3mAiwi9KKdFKxRVJ9OAmojkGSOZ_VHO6PjZx7KOnUi4wDN8PhFzXD_pTRqk:1s2Fxh:4c9Gv4eahX0Eu8uoUiW71rCZib2OJMFU1jo5--voOtk','2024-05-01 20:04:53.626759'),('5rblh8ayltwmpd0hxjn0z0opaz78gnbm','.eJwtj8EOgjAQRH-F7BkNCBXlZPSgZ028kpZWIbFd0pYDIfy7u2LSy7zp7OzOMAbjGy2jhHpeRa-hFiIFJ62BGs6okjsq42OAFDx-GA4y9sZFAhz5_1So1ESIppkGX43qfeyI58eq2mTlJivIlFp7EwIPfgjSA4bYoub85Zkn-e3KsENnGjdaqiUjq6q9KOkVezKNlf1nrdv6dbHTm9m2RcvhdbffHbsD68myDjj6lntcF2BZvjCqT_Q:1rziwH:uFTifLxKJFHrGGOdRb3lXcx7hvwm_cj7D7zBmvUksiw','2024-04-24 20:24:57.842377'),('5vsixbe4wqiay398fjgar0q16cr00wjc','.eJw1j0EOwiAQRa9iWLcGKkbalfEIXoAMZWoxBQzQuGh6d6dal_-9P5OZhc0Zk7ZQgHXLLzjLOikqFsAj69jN5fENT1cOd7CQWMVSnDYB1rtAcRvau4a6RGgd6jho41IZCYu2Pddc1g0nCdYmzJkwhVfMpY8W9zTGgDrM3mAiwi9KKdFKxRVJ9OAmojkGSOZ_VHO6PjZx7KOnUi4wDN8PhFzXD_pTRqk:1s1Znn:Lq1HsHxMAkvciWLJG6ONO50iUJXN7jJD1jLx0C1PajY','2024-04-29 23:03:51.403555'),('62uosesgwt3co65j409ha0s9ekdysd5h','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1rzIsj:FM6lAEUJkqVkYukB4xgYtLKc5nrcHqK9ArPBtKUFa_w','2024-04-23 16:35:33.218046'),('67s3xu2pj8v67qvh31gda3f2w2osr1xt','.eJw1j0EOwiAQRa9iWLcGKkbalfEIXoAMZWoxBQzQuGh6d6dal_-9P5OZhc0Zk7ZQgHXLLzjLOikqFsAj69jN5fENT1cOd7CQWMVSnDYB1rtAcRvau4a6RGgd6jho41IZCYu2Pddc1g0nCdYmzJkwhVfMpY8W9zTGgDrM3mAiwi9KKdFKxRVJ9OAmojkGSOZ_VHO6PjZx7KOnUi4wDN8PhFzXD_pTRqk:1s238v:PpheqO33y8B_0w9T_YAWYTI4qM9tp5jyRtX5Y0nix9o','2024-05-01 06:23:37.614910'),('7h1t4i4t7nyvykuro07bfj42t8co6oi8','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1ryEPz:aiDBmXYV-tS3MGziQwHeoDG3GS8_Ti4xpylNBYKPWtM','2024-04-20 17:37:27.428720'),('7sw1xeyjcepgjubk8okfpisg01xz23bf','.eJxNj8FugzAQRH8l2jNENpjQcIqifkFRz8hg01gCL7KXQxTx7_VCKvU4b2d3Z16wRhs6o0lD8zqEM9CoawZezxYa-ML-1M6OHpBBwInRoslZTwnwwtsX2SOLUiWc7tkOx653Ie01UAghciFzeU1DbUywMSZ8b2WdwIKRBjR85K5O9fcnswd62_l17m1IXNQfl6quL5Uq09DO2k1_L88B-9sPk_OAM68e6fYehWL9nFlHXMPAT_wjwpZBtJMdyJp2QuLy9Fx4anAgDO8Se_ZC5aLKBX-OpAN15PbGUjZScBxv_iElDt847glA8qk1pFDokywFbNsvLxNzoA:1s2GCe:ehMukQKL6ydl9fyBHBovAVx2j_P37hfvDeYBVkBOu2k','2024-05-01 20:20:20.068687'),('81gg8553pw7wqi6csyih9gdesbqp93bx','.eJw1j0EOwiAQRa9iWLeGVoy0K-MVPAAZytRiChigcdH07g5al_-9P5OZlS0JozKQgfXrL1jDetFUzIND1rObTdMbnjYf7sFDZBWLYS4CjLOeYhnau5q6RGgdqjAqbWOeCDddd665qFtOEoyJmBJhCq-Q8hAM7mkKHpVfnMZIhF-klE0nJJck0YGdiaZyhf4f1Z6ujyKOQ3BUShnG8ftBI7btAwuJRsI:1s1CSo:yCrKeHQ7nMY3--q5b2fkNf8kJ-lLSx2BhW3BVD5wpdE','2024-04-28 22:08:38.186643'),('8d6hic2op3jvmdkbolqnr9uasnxt0n4k','.eJw1j0EOwiAQRa9iWLeGVoy0K-MVPAAZytRiChigcdH07g5al_-9P5OZlS0JozKQgfXrL1jDetFUzIND1rObTdMbnjYf7sFDZBWLYS4CjLOeYhnau5q6RGgdqjAqbWOeCDddd665qFtOEoyJmBJhCq-Q8hAM7mkKHpVfnMZIhF-klE0nJJck0YGdiaZyhf4f1Z6ujyKOQ3BUShnG8ftBI7btAwuJRsI:1s1DEG:pUq81JR5Xn4SYu9WYFTV84DloP9PVCDMzKlVYch1qxI','2024-04-28 22:57:40.429307'),('8xrxdszovmxff2gk6fqmh6fkhj6s2f3j','.eJydVk2PmzAQ_SvI56TyF7Dl1EO3h2pvOZYKObHZWAIc2U57iPjvHSfZlNVmVoolJPB8PM_zG4s5kWMwvtMqKtKcLgurScNXZFKjIQ35YX2IZEW8G9JSu110HtYp9BrSX0MAxXSu77bWxz3YOaV8TRk84FRaexMCmAVnxbP-q7wuNtEbk1IPLsSd0wnt-Tsr2MtLMu7dZLrpOG6NBwet6yfBy4oLCU4zKju8bf7tNa2-7NwInhBV359ZsBn2Hc2kN4OLiV-Ad-js1DvI_HVqU6yPXbSjaUlTtIR-bShtyQo-Ie29Q1wdNnTqD2yntsPZGf3RzKviPprA0EoErVdDwOHKu3CMNuzh4hZJH9Aep7pI-oCGUf0UDWHKcpgyjClrZA6avI_Gb73zABpHGg4cGSpwTAWew5RjTEWOCgJTQeTUJvDaMvpNYP0mczSVmKYy59wkdm6y4TloHEPLODeJnVuZw7TEmJY5HVJiHVLl1FZhtVU597TC7mmVo0KFqVDndEiNdUido0KNqVDnMK0xpk-f39PfaQI5HJydIswDMAsQQF8YYFxIsZzWCWLpSEPNZQ9OuVxTuebystEy6lzo4qd_q2YZBCUvfuS3kLd5JflYMhxUtP9remdKE9cF46fbT8VmtHHfkpnM8z8VHga6:1s19YQ:1i4-5bdwfeISJmhRMbBQMB4fqLdq3YUckJD0faTwsuw','2024-04-28 19:02:14.806148'),('9duykerhgjtbws00x71mu53o1x9z9ksh','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1s0hga:2JuG3DuqW7k_fdw48-xVrPSZp8esfsUrDF1b0JTwX1E','2024-04-27 13:16:48.250255'),('9h9vrh7m76tfd0kdoijbd8jy1hfwhbx8','.eJw1j0EOwiAQRa9iWLeGVoy0K-MVPAAZytRiChigcdH07g5al_-9P5OZlS0JozKQgfXrL1jDetFUzIND1rObTdMbnjYf7sFDZBWLYS4CjLOeYhnau5q6RGgdqjAqbWOeCDddd665qFtOEoyJmBJhCq-Q8hAM7mkKHpVfnMZIhF-klE0nJJck0YGdiaZyhf4f1Z6ujyKOQ3BUShnG8ftBI7btAwuJRsI:1s1Nhy:leT0x_1ElJ80yd0zsr4vNXNfAzkaqs7n0bgv9wYYwCc','2024-04-29 10:09:02.414620'),('9hs5r1irshwpiorenojcmd6ies610bum','.eJw1j0EOwiAQRa9iWLeGVoy0K-MVPAAZytRiChigcdH07g5al_-9P5OZlS0JozKQgfXrL1jDetFUzIND1rObTdMbnjYf7sFDZBWLYS4CjLOeYhnau5q6RGgdqjAqbWOeCDddd665qFtOEoyJmBJhCq-Q8hAM7mkKHpVfnMZIhF-klE0nJJck0YGdiaZyhf4f1Z6ujyKOQ3BUShnG8ftBI7btAwuJRsI:1s1MRW:mCZlqLG-3dZ27Slkke7LM7Ktc2WSbCjqfocQB69TC5Y','2024-04-29 08:47:58.048191'),('9k2rh2tn24otizk4qx54deh2th2nlups','.eJwtj0FrwzAMhf-K0TktVTPaJKcxxuhhtw52DE6sNYLYKrYzKKX_fXKz4_vek_R0hyVR7J3NFrr7KthBd6ggWE_QwbsNTPNszScHqCDKXOjVZqaQFZSR_6jTqBJdRr389APHPCnGtmk3O9wgqmmdi5SS4gbNiS-TOefKfC1hiOwuZL71VtLcVVIexZW1b2dE054-Cp0kUB8WP1BUZ4cvh_rY1PWxVZO85XmtscV9_Xqzk8h2FF8G177P3_ZF3nyRSZY4Pv-J_Ku14fH4A7w_Vyo:1s2Gn0:19ZEG-Pcvri7zEcSrNuO-6HXk6qXQt7KeayyUVDPwCA','2024-05-01 20:57:54.615078'),('9xz27qzfys9m5bz63h13i0i9vp5zyvns','.eJw1j0EOwiAQRa9iWLcGKkbalfEIXoAMZWoxBQzQuGh6d6dal_-9P5OZhc0Zk7ZQgHXLLzjLOikqFsAj69jN5fENT1cOd7CQWMVSnDYB1rtAcRvau4a6RGgd6jho41IZCYu2Pddc1g0nCdYmzJkwhVfMpY8W9zTGgDrM3mAiwi9KKdFKxRVJ9OAmojkGSOZ_VHO6PjZx7KOnUi4wDN8PhFzXD_pTRqk:1s1w1q:MotoG9C4sccFPA57tyNgoBIS3gOvUR0MVMsXY1okVHI','2024-04-30 22:47:50.441582'),('aozgi127teilzp15o02wvgva7w75bpmf','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1ryHh6:Pw_zHrplfKtcX4R8nyZZawgn2aTXgBIFtrBG2TS88QI','2024-04-20 21:07:20.711862'),('awlmzr8675f6ljbgd5qtesx183clpg2s','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1s138U:4m6qcC8ah0jrrJnipYPpH3YsbczcQgzyhfPCJ-aP9NM','2024-04-28 12:11:02.802230'),('b39duao2543451hmbrs13w7jgu3zw9uz','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1rzKvq:SrlzbyKEBpSpGzx9Ic0ry7E5NeDF7TfFS9wTdFWtJrQ','2024-04-23 18:46:54.095981'),('bhrsckqanu6y1xfo4w6nmxyjf6a0xax2','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1s16G1:aLamndEFQd4HZ7xfd9SpzuaZNvmaAWpWWxppgLPpycc','2024-04-28 15:31:01.204482'),('bso3y5i6mx4qhajvvgymspl9s7zjfo1b','.eJw1j0EOwiAQRa9iWLeGVoy0K-MVPAAZytRiChigcdH07g5al_-9P5OZlS0JozKQgfXrL1jDetFUzIND1rObTdMbnjYf7sFDZBWLYS4CjLOeYhnau5q6RGgdqjAqbWOeCDddd665qFtOEoyJmBJhCq-Q8hAM7mkKHpVfnMZIhF-klE0nJJck0YGdiaZyhf4f1Z6ujyKOQ3BUShnG8ftBI7btAwuJRsI:1s1Uhz:0iYTbXPGJj1CIr1Z1G49Wj3e_X8oruEqUib9wBhsGIg','2024-04-29 17:37:31.614476'),('cdt6ljs44fpu0ajzjmnz7xzyc02tx0sd','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1rxv87:qrTb95Ywe6zXfo7kbDyRGvzUuVXuHntbg-EAYCuEJtI','2024-04-19 21:01:43.638669'),('d9p3e9t52m7fg6u8jca9btvjzisp0j8n','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1rz0oa:IlITPuk7FHQJygM02J1gKJXffnc4uylyVfrMSEHtBRI','2024-04-22 21:18:04.878805'),('dcu3fyoye0a0tsnilk8oa23bi4lcuxcg','.eJxNT01PhDAQ_StmzmBaENblZDQxnrxs4pV06bDUQIe0w2Gz4b_bgTV6fB_z5r0bLBFDaw0baG47cBaaSmfgzYTQwAdGx8YzZBBoFGY27HAjxH-3DX-2lIYt9e3ZBR6SpI_HKtc6L8okGmsDxpjo11OR8EyRO7IS8falH_T7p5ADeWz9Mp0xJEHVh6qs68NzLQk4GTcm9pvQxd-3LxdhHzua5HwvuC0pasHXSXCkJXTyyQ8R1gwijtgx2tNILPP5OotqqWMK9yEJF6p4ylWVK_ke2QRu2W2j1bFRSip5-48q1e7r-60BaIlaQipFPsEkr-sP5Hx2GA:1s2GLy:vaFi_AZLX2FgesL6YI0lgcE_sXAivuJA2nlBmGZfK_I','2024-05-01 20:29:58.022164'),('dyh5h8sucr76jk0exeqj6l3szkfq1an1','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1s12nX:MyAoWMWk6hmS3gFtLYy0pnoZKxDo48afzHONdnPuuTY','2024-04-28 11:49:23.653307'),('dzookzip7ge6rxeteuw5tp8xvmqm85kw','.eJw1j0EOwiAQRa9iWLcGKkbalfEIXoAMZWoxBQzQuGh6d6dal_-9P5OZhc0Zk7ZQgHXLLzjLOikqFsAj69jN5fENT1cOd7CQWMVSnDYB1rtAcRvau4a6RGgd6jho41IZCYu2Pddc1g0nCdYmzJkwhVfMpY8W9zTGgDrM3mAiwi9KKdFKxRVJ9OAmojkGSOZ_VHO6PjZx7KOnUi4wDN8PhFzXD_pTRqk:1s1kR5:qk5la5uGJvbPlVh89jVZm2CJi-c2KFnNpMSXm6zK5Yw','2024-04-30 10:25:07.020492'),('eaznkzf7wjzj8vk9g16etgdmr0tdfker','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1rzEAZ:B2-NaP_bl_7OdKtiBBwNcCVJ4ECizqe1mcYLjGos8iM','2024-04-23 11:33:39.400409'),('emef2i5uzzud88rt5dglr9z4s1l1quxx','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1ryH6A:JvtbjQZRRzg6wwK9V7Ixv2J4ygUuAYCauGczhnr45OQ','2024-04-20 20:29:10.669636'),('ggrmp7xlsc7puwvaxyt4v6in75ftxbla','.eJw1j0EOwiAQRa9iWLeGVoy0K-MVPAAZytRiChigcdH07g5al_-9P5OZlS0JozKQgfXrL1jDetFUzIND1rObTdMbnjYf7sFDZBWLYS4CjLOeYhnau5q6RGgdqjAqbWOeCDddd665qFtOEoyJmBJhCq-Q8hAM7mkKHpVfnMZIhF-klE0nJJck0YGdiaZyhf4f1Z6ujyKOQ3BUShnG8ftBI7btAwuJRsI:1s1U3j:3R2Q4MUReuol7ygUkQEEwRzzpePKmkQRDIAKmNolOps','2024-04-29 16:55:55.778673'),('h6zv8xy4ix730ibbixh9oshclwmmryq4','.eJw1j0EOwiAQRa9iWLcGKkbalfEIXoAMZWoxBQzQuGh6d6dal_-9P5OZhc0Zk7ZQgHXLLzjLOikqFsAj69jN5fENT1cOd7CQWMVSnDYB1rtAcRvau4a6RGgd6jho41IZCYu2Pddc1g0nCdYmzJkwhVfMpY8W9zTGgDrM3mAiwi9KKdFKxRVJ9OAmojkGSOZ_VHO6PjZx7KOnUi4wDN8PhFzXD_pTRqk:1s2GNK:GtRDsSAQPVVqAe0xX5Z7Zkybar0FtJoYUYcGW1O1oHA','2024-05-01 20:31:22.294423'),('hce66pwc8oc9oozxnk06er465y7xuvb9','.eJw1j0EOwiAQRa9iWLcGKkbalfEIXoAMZWoxBQzQuGh6d6dal_-9P5OZhc0Zk7ZQgHXLLzjLOikqFsAj69jN5fENT1cOd7CQWMVSnDYB1rtAcRvau4a6RGgd6jho41IZCYu2Pddc1g0nCdYmzJkwhVfMpY8W9zTGgDrM3mAiwi9KKdFKxRVJ9OAmojkGSOZ_VHO6PjZx7KOnUi4wDN8PhFzXD_pTRqk:1s1gR9:rvnOs4yZSOGzNhW4tgB4byR_bgi8E56nifJdqhp98R4','2024-04-30 06:08:55.689342'),('hx1rwxjj443pnq8me8vfgwk364pkbw46','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1ryHKo:YPnvtpukeRZbjWMgMGLsdkauP-eVz2jeghhD-EcZj_0','2024-04-20 20:44:18.955034'),('i66i9leq8jc1mogpz8m857r9igha1m45','.eJw1j0EOwiAQRa9iWLeGVoy0K-MVPAAZytRiChigcdH07g5al_-9P5OZlS0JozKQgfXrL1jDetFUzIND1rObTdMbnjYf7sFDZBWLYS4CjLOeYhnau5q6RGgdqjAqbWOeCDddd665qFtOEoyJmBJhCq-Q8hAM7mkKHpVfnMZIhF-klE0nJJck0YGdiaZyhf4f1Z6ujyKOQ3BUShnG8ftBI7btAwuJRsI:1s1YDj:f_cGk7xLt2iaq8P6SSayDz-PmVP2cIqTynAHLuItR0w','2024-04-29 21:22:31.678770'),('ii8dtl0ea603cl6ym7fxqsf02xccmaiu','.eJw1j0EOwiAQRa9iWLeGVoy0K-MVPAAZytRiChigcdH07g5al_-9P5OZlS0JozKQgfXrL1jDetFUzIND1rObTdMbnjYf7sFDZBWLYS4CjLOeYhnau5q6RGgdqjAqbWOeCDddd665qFtOEoyJmBJhCq-Q8hAM7mkKHpVfnMZIhF-klE0nJJck0YGdiaZyhf4f1Z6ujyKOQ3BUShnG8ftBI7btAwuJRsI:1s1QMe:G0goG4otkiUpht63x-ev5ZFO85KxbUTsvVki7LILcAc','2024-04-29 12:59:12.432364'),('iv74kulewlk1urc8dr1g0twkryq44mih','.eJwtj8FuwjAQRH_F2nNAMaEk5EQrVap6pRLHyIkX7Cq2kdc5VIh_7y5wnLcz4_ENFsI8WFMM9Len8Bb6twqiCQg9fCcX1TH44qCCnGZhV1M8xsJAAi_jLxuZcBUO6TyMPnOkB73v9KpuV_Wej8bajESMO62-_MWpY6nUzxLH7O0F1Qnnmdh3TVSmZKX29K63avP5IdSliENcwoiZL7Xe7pq2a5pWqjEYP79mrEn2HgpSWU8pSPS5-PE3LfIviKS05EleiY7gfv8HmvFWiA:1s00u9:m0-k7JwZKOzUZhIe2_tTRm2d0EM9FgELG-EWZC_o3mc','2024-04-25 15:35:57.703285'),('janjqnk10rbiqiow94p4omagyntn7ufe','.eJw1j0EOwiAQRa9iWLeGVoy0K-MVPAAZytRiChigcdH07g5al_-9P5OZlS0JozKQgfXrL1jDetFUzIND1rObTdMbnjYf7sFDZBWLYS4CjLOeYhnau5q6RGgdqjAqbWOeCDddd665qFtOEoyJmBJhCq-Q8hAM7mkKHpVfnMZIhF-klE0nJJck0YGdiaZyhf4f1Z6ujyKOQ3BUShnG8ftBI7btAwuJRsI:1s1N33:cHUFx2afeX-Upc55N-apjYNENcjj5yWirdyWRMM7bR8','2024-04-29 09:26:45.421615'),('jkbrek508uv0ebil84axkqzesg2sgr1d','.eJxNUE1vgzAM_SsoZ6gSYINy2iZNmnbtpB5RIKZkCkmVmENV9b_Pphx2fB9-fvZdrAlibzRq0d2fwBrRveTC6wVEJ77D7LPTYnEWuYjBMXfVaMEjETywG3_JSAxFQR-mfrCRRjqhjq0qZFPII4namAgpEd2q7Mte5uyEefaz-iFac4HsDM4l8l1DwjEYjj2_qzorPz-YnYOH3q_LAJEUqerXqmmrquFoWLR1e41D4r5vCAkPY1h49Nl4u00xvC0MU1jjyFv8nMQjFwkcjAjm5ALyP_B2ZdWEEUPcjyNcyrIuZF2UvDihjtij3Z4gj52U3Mabf1Qln75p2goIxVFrpE7BEyT58fgDp2l7HQ:1s14Fn:iIffO1RwU1d0BD6gy61Gn961aK5y3dUAo9sB_2pVrJk','2024-04-28 13:22:39.281574'),('jtqvbxn4idi28py5zexhivwftu7mbs9q','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1ryPEA:TvoLJjUx2o9SpZX1ZSl6h1Tehn8NPJbPMjmCet2tKec','2024-04-21 05:09:58.653374'),('kgqq719zfrh4ycp5ujtk8ajkt12vbl2f','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1ry858:D_mgHr19xfDGJWsDFKm4whNaIGlY5ZUZ-IGPtlBE8m4','2024-04-20 10:51:30.804359'),('kjsekds8rgyk5npcfco1jmo5wrkhbsm9','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1s1BjG:26gMBVxgsM9juN6DTTOOi_JWaUk4H7_S6vSBcJustOI','2024-04-28 21:21:34.133573'),('kxrr6z0qgkt3tgqyebk2qlhj0dkpj6dj','.eJxVUUFuwyAQ_Ari1KpOBY7T2D41uVSq1Evju4XNuqYyEAFWD5H_3sV2klYCiZldhpnlQkcPrpYiCFpeFqAkLTOeUCM00JIele9_xLcK5FNI4WhCnR1iQUitDMJ4ae1tsBcZlIPadnWjXOiR5kWx27BskzIsCikdeI80grP1obUSVtRbA7UZdQMOGbbP85wXWc5yLIIWakDWWyNcczWVbl-_YuG5tRqbfBBdNyfg2ZQsFg8ajMQdYkJscCHmjU-mLM1mX0XUN_I_j5Zf7mmlbYN1yxOoENQcmLNyDuVhgDbATaEagRzOjmwZiWKE8ZIxXOTto3piHA8PR6cCpiCnUWtwpELBxzgDERR6vX3JFc-ZkvsP7dZzvY7-3faGnLTCgU9_50BTOk2_T-CXvQ:1s1YiB:EONVGtMaAEh6k3I3Kef88u9bMBO9ogppmEnBVonMSss','2024-04-29 21:53:59.217649'),('l4n8esgxjvnq3y06st0r12mxhlvdxnhb','.eJwtj8EOgjAMhl9l2RkNGyqGkwfxxM0HIIMWWARmumFiCO9upya9_N_3t0lXuXikGkwwslh_wYIsdCJnM6Es5M2SD6LCl539w3iZSHJjFODa4IhzXPqXu1hmxPewdl3dWAoDc52mepcqHpYGgNB7xplWogR4i3sgxLj4dD60DuKt8qqEqqoIBzdjPS9Tg8QizfNzpo8nnR1Y4mTsyBShN3TpY9q3bmLjg-m67zdq2z5CCUl1:1s12yE:_L-qXwo3ulU-f-wqkyvGj2phTMRvfGPvIi-idwk6Guo','2024-04-28 12:00:26.953861'),('laofvaum1go4xeure6lszgoj4o26yawy','.eJwtj8FuwjAQRH_F2nNAMaEk5EQrVap6pRLHyIkX7Cq2kdc5VIh_7y5wnLcz4_ENFsI8WFMM9Len8Bb6twqiCQg9fCcX1TH44qCCnGZhV1M8xsJAAi_jLxuZcBUO6TyMPnOkB73v9KpuV_Wej8bajESMO62-_MWpY6nUzxLH7O0F1Qnnmdh3TVSmZKX29K63avP5IdSliENcwoiZL7Xe7pq2a5pWqjEYP79mrEn2HgpSWU8pSPS5-PE3LfIviKS05EleiY7gfv8HmvFWiA:1s0LJB:K3I_c5vU-odcQZWkNpMLFpJ_CP62YgWLP_j-EHc57mY','2024-04-26 13:23:09.551063'),('ljj2ls1nlinceya8wllaoa84hsdb2gjv','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1rycOe:ZXoq8O4eXwxBpzGNPVq1GuUbAs7pOBDCm40-QVGgaWg','2024-04-21 19:13:40.891051'),('ll86ikotljzzbqvyfk54xy8yieuhaswr','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1s0MaY:fu5pMZViFOamu9IeBBZw6DjNJNVrAJG-8yxvwYxB2Yw','2024-04-26 14:45:10.699952'),('m58zzlic4ambr8suyklgzbga1m7zhd3e','.eJwtj8FuwjAQRH_F2nNAMaEk5EQrVap6pRLHyIkX7Cq2kdc5VIh_7y5wnLcz4_ENFsI8WFMM9Len8Bb6twqiCQg9fCcX1TH44qCCnGZhV1M8xsJAAi_jLxuZcBUO6TyMPnOkB73v9KpuV_Wej8bajESMO62-_MWpY6nUzxLH7O0F1Qnnmdh3TVSmZKX29K63avP5IdSliENcwoiZL7Xe7pq2a5pWqjEYP79mrEn2HgpSWU8pSPS5-PE3LfIviKS05EleiY7gfv8HmvFWiA:1s19rw:gSh89eNfB99Y_7iXrl85yDaR9Cblcjsf8WZMltXDILU','2024-04-28 19:22:24.798692'),('mpcg31lnj7h7lz9ybyatnp5dsu5qz9lo','.eJw1j0EOwiAQRa9iWLcGKkbalfEIXoAMZWoxBQzQuGh6d6dal_-9P5OZhc0Zk7ZQgHXLLzjLOikqFsAj69jN5fENT1cOd7CQWMVSnDYB1rtAcRvau4a6RGgd6jho41IZCYu2Pddc1g0nCdYmzJkwhVfMpY8W9zTGgDrM3mAiwi9KKdFKxRVJ9OAmojkGSOZ_VHO6PjZx7KOnUi4wDN8PhFzXD_pTRqk:1s1ZsX:fEHHVuYIsCIwRxVWGnLV3W3PeP1hdxOHDTmx3JIMFO8','2024-04-29 23:08:45.364673'),('mrfs6ukwfoqj70v0uu0xaswosuxdfzh5','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1rzDM4:KdodLdSPQrAwv8DOAFhH7LHUlE381-Y5eqKvWDUtBYM','2024-04-23 10:41:28.886987'),('nexof7h3ok2y7cdbhti0p6beiow5a43h','.eJwtj8EOgjAMhl9l2RkNGyqGkwfxxM0HIIMWWARmumFiCO9upya9_N_3t0lXuXikGkwwslh_wYIsdCJnM6Es5M2SD6LCl539w3iZSHJjFODa4IhzXPqXu1hmxPewdl3dWAoDc52mepcqHpYGgNB7xplWogR4i3sgxLj4dD60DuKt8qqEqqoIBzdjPS9Tg8QizfNzpo8nnR1Y4mTsyBShN3TpY9q3bmLjg-m67zdq2z5CCUl1:1s14e4:3ShxYMoUmyO0aaattpXtBIrcFp2KxLuNdeS6v9ePQZg','2024-04-28 13:47:44.016703'),('ozety7r1d8qmiectx0rm8s6k5sihr1ky','.eJwtj8FuwjAQRH_F2nNAMaEk5EQrVap6pRLHyIkX7Cq2kdc5VIh_7y5wnLcz4_ENFsI8WFMM9Len8Bb6twqiCQg9fCcX1TH44qCCnGZhV1M8xsJAAi_jLxuZcBUO6TyMPnOkB73v9KpuV_Wej8bajESMO62-_MWpY6nUzxLH7O0F1Qnnmdh3TVSmZKX29K63avP5IdSliENcwoiZL7Xe7pq2a5pWqjEYP79mrEn2HgpSWU8pSPS5-PE3LfIviKS05EleiY7gfv8HmvFWiA:1s1Qe7:XBcNMQGmmaBnR3F4vmTjxQhl-MHxizMQjooQ3VrNyCE','2024-04-29 13:17:15.193661'),('pa48m89vd0nm1vzoyg0iva6ouis4n8la','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1ry9av:xZFI380cGgk56-E8zz4xbP5DRCwyh4nCu4je0Nk_9Qw','2024-04-20 12:28:25.617734'),('pkdvoeuir7vp8w5s20hg94p7xq08qhie','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1rxvuB:PdCnexdcxnXwYIo2RD0FcmlGnKLJAXZjtyufWGkLu2E','2024-04-19 21:51:23.942255'),('px3giqhut7hsrh9if1tfsoeltpbvao2n','.eJxVUUFuwyAQ_Ari1KpOhYnT2D41uVSq1Evju4XNuqYyEAFWD5H_3sV2klYCiZkdhp3lQkcPrpYiCFpeFqAkLbM0oUZooCU9Kt__iG8VyKeQwtGEOjvEgpBaGYTx0qptUIsM2kFtu7pRLvRIp0Wx27BswxkWhZQOvEcawdn60FoJK-qtgdqMugGHDNvneZ4WWc5yLIIWakDWWyNcc22Kb1-_YuG5tRpFPoiumxOk2ZQsLR40GIk7xIQocCHmjU9yxrO5ryL6G_mfx5Zf7mmlbYN1yxPoENQcOGUlZyWLuTwM0Aa4mVQjkMPZkS0j0Y8wjjpc5O2jemIpHh6OTgUMQk6j1uBIhZ6PcQwiKGz39itXPMdK7p-0W8_1Ov132xty0gpnPv0dBeV0mn4B4k-YWA:1s1Z0y:bSWOfIGeX-BInae-n68qMm_kb5f3wZUxFQwrAljZQQs','2024-04-29 22:13:24.657965'),('qicy3st4gmnh2ipt051crgzagmdvzk0q','.eJw1j0EOwiAQRa9iWLeGVoy0K-MVPAAZytRiChigcdH07g5al_-9P5OZlS0JozKQgfXrL1jDetFUzIND1rObTdMbnjYf7sFDZBWLYS4CjLOeYhnau5q6RGgdqjAqbWOeCDddd665qFtOEoyJmBJhCq-Q8hAM7mkKHpVfnMZIhF-klE0nJJck0YGdiaZyhf4f1Z6ujyKOQ3BUShnG8ftBI7btAwuJRsI:1s1QBZ:WiVmPuFdM8f0zYDGvOuc3H7bK6BrSgK_LVjbgqr-S0Y','2024-04-29 12:47:45.140164'),('qyv0fhpculwd8fp51l4vhofo2kanwvha','.eJxVUcFuhCAU_BXCqU3dBly3VU_dvTRp0pPeDcqz0ghsANPDxn_vQ93dNoGEmfcYZh4XOnlwjRRB0PKyAiVpmfGEGqGBlvSk_PAjvlUglTXC0YQ6O8aCkFoZhPHS1ttiLzIoB43tm1a5MCDNi-KwY9kuZVgUUjrwHmkEZ-tDZyVsaLAGGjPpFhwy7DXPc15kOcuxCFqoEVkfXbRXU-n-7SsWnjursckH0fdLAp7NyWrxqMFI3CEmxAYXYt74ZMrSbPFVRH0j__No-eWeVtouWLc-gQpBLYE5K5dQHkboAtwU6gnI8ezInpEoRhgvGcNF3j_rJ8bx8HByKmAKUk1agyM1Cj7GGYig0OvtS654yZTcf-iwnZtt9B92MKTSCgc-_50DTek8_wJ66JfW:1s1YUM:l9VkrJHuAn9rvIaYyb_f8D8vqqFfGsm7lt8ZvbN4ES8','2024-04-29 21:39:42.021221'),('rwcx8r24aow67bcpwipfra0zlyycvr87','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1rxwkP:YtKATBBG4yNu411FTR_kewvsmpN8nHxpAxppuu-8FC8','2024-04-19 22:45:21.509871'),('sn1c1ji21bq3f4wlj4p6ztiy2tg3wl7o','.eJw1j0EOwiAQRa9iWLcGKkbalfEIXoAMZWoxBQzQuGh6d6dal_-9P5OZhc0Zk7ZQgHXLLzjLOikqFsAj69jN5fENT1cOd7CQWMVSnDYB1rtAcRvau4a6RGgd6jho41IZCYu2Pddc1g0nCdYmzJkwhVfMpY8W9zTGgDrM3mAiwi9KKdFKxRVJ9OAmojkGSOZ_VHO6PjZx7KOnUi4wDN8PhFzXD_pTRqk:1s23oq:M7x5aWvHsf5QqbFzEVIFUyq4tlUfEi63567pkRm8j10','2024-05-01 07:06:56.673252'),('ss2sbmykc59rjry11nxb61skzv5gle8b','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1s0Njg:oMuC3GX2HKIeHO42n7oM8WC_1_p4I7DzLHVFKnwoAiE','2024-04-26 15:58:40.498945'),('thabnvoj6u0qsw0bu7vrel6re0uxragg','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1rxtHo:5m52lPV24qmvd8ZeEAe6xOLz8l9mmAB6kczCIcNeVEI','2024-04-19 19:03:36.423586'),('tkrsv1j2nku15znjrqytlb9w3lx0igym','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1s0N4Y:bjvhxsDHgl4GY36N5-ewPMrQ2Al5nmo02dyYDeCp8Iw','2024-04-26 15:16:10.202897'),('tqrzo8voxxftmztk2pv673eqo62c8rtu','.eJydVk1vgzAM_StVzu0UQgIdp5122LXHMaG0hBEJSJWku1T89zn9pGpdqZGQiv2cl_dkC3dPdk7ZqpZekmJ_DHRNCjYng-wVKcints6TObGmC2FtNt5YiEPpqaQ5lQCLqkxTrbX1LeQZpWxBE3gAlHVtlXOQhmBrnN-YWp2i1gyqGnb9WlnI0DxfpkxkLOUAql7q7nzJx2-I3jamB8R52TQHtckI_L0a6lVnfPDh4NdVemgMnPzel6HW-srrXpWkmJWEvheUlmQOr3DsFkhPgHaV_IPr5Lo7gI3snBrns8d0KUYnoujEQ7qEFux1usmpOzoeRccf0yVFEkF3PXVHh6nzdoezIeLYpeMvsDFkTADAGvGUDekDi3HKMKcp2oYnbCnWhTRGW4pp4zHaOKaNx2jjmDYRMyECmxAR41RgTkXMvAls3gT6VXrKhnyUshinGeY0i3GaYU6zGKcZ5jSP0ZZj2vIYbTmmbfl8en_CDt5ujR48bErYkgTYJwlYpKGWsTxQTIGw1o93MMr4gvIFez9eNK06CJ3sm4uaaRFInuyQS8l5kwcsCYmt9Pqq6SYV_nMcOb5MO8xWvfZtSUYyjv_XGrie:1s1CxF:qt3qEt6BbEH5ZLEYmNzv1p_bj_jhLgyK7Me95GxtwEg','2024-04-28 22:40:05.354305'),('u9ze4ajkv13gv0kda5oj3rv1ed924zqd','.eJw1j8EOgjAQRH-F9IymLSqGkwfxxM0PaArdahNKzbbEA-Hf3Some3kzs7PZhc0RUBmdNGuWHzjDGlmySXtgDbs5jImVDMOY0YQhBSTO0S1itwi1gApW9Q7Tk3TJudxxQUOmNgYhRpIrKYrWvDWa4p4QIK--QkxDMLmtvYpCdF0Wn2ECNc2-BySD1_W5kseTrA5kgtdu_B-_PDLth-DJiUlb-_1CrOsHkRtGmw:1s1AMG:nxmw4Nbztes7iFcG-MA-kXiEd97CE9NDB_nleAQ2e2A','2024-04-28 19:53:44.365196'),('uunjevppa5suaolat8yjmle8x58tlt3o','.eJw1j0EOwiAQRa9iWLcGKkbalfEIXoAMZWoxBQzQuGh6d6dal_-9P5OZhc0Zk7ZQgHXLLzjLOikqFsAj69jN5fENT1cOd7CQWMVSnDYB1rtAcRvau4a6RGgd6jho41IZCYu2Pddc1g0nCdYmzJkwhVfMpY8W9zTGgDrM3mAiwi9KKdFKxRVJ9OAmojkGSOZ_VHO6PjZx7KOnUi4wDN8PhFzXD_pTRqk:1s1l96:JLz1GdUUDcn3l4RQCSkWyyLFG8bHL2Hr42EASmQRE-4','2024-04-30 11:10:36.958812'),('vfaztokq0zonz60o46ba518ilhs0xj8x','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1rzDDK:R3ovAirDSGolMW5YZ0aZayhPzha6gzMzq9gpQquR14U','2024-04-23 10:32:26.602730'),('vpsh7j3v6y5o3ppas0htxlsjr7ps97s6','.eJw1j8EOgjAQRH-F9IymLSqGkwfxxM0PaArdahNKzbbEA-Hf3Some3kzs7PZhc0RUBmdNGuWHzjDGlmySXtgDbs5jImVDMOY0YQhBSTO0S1itwi1gApW9Q7Tk3TJudxxQUOmNgYhRpIrKYrWvDWa4p4QIK--QkxDMLmtvYpCdF0Wn2ECNc2-BySD1_W5kseTrA5kgtdu_B-_PDLth-DJiUlb-_1CrOsHkRtGmw:1s1Awv:GkUdJA1v8JB2wsCOeGyRUBpU6P00nZDE6Kv_X5xQls0','2024-04-28 20:31:37.134920'),('vtkcc4tnibofonokvilt0tw2cbbcnw32','.eJw1j0EOwiAQRa9iWLcGKkbalfEIXoAMZWoxBQzQuGh6d6dal_-9P5OZhc0Zk7ZQgHXLLzjLOikqFsAj69jN5fENT1cOd7CQWMVSnDYB1rtAcRvau4a6RGgd6jho41IZCYu2Pddc1g0nCdYmzJkwhVfMpY8W9zTGgDrM3mAiwi9KKdFKxRVJ9OAmojkGSOZ_VHO6PjZx7KOnUi4wDN8PhFzXD_pTRqk:1s1aIC:uMmslEq_whpQm1Aqx_q1H019HtagH-Ui3fNatmizvLw','2024-04-29 23:35:16.567600'),('wghf03olgggrj08jh9929kdynd0us5z1','.eJwtj8FuwjAQRH_F2nNAMaEk5EQrVap6pRLHyIkX7Cq2kdc5VIh_7y5wnLcz4_ENFsI8WFMM9Len8Bb6twqiCQg9fCcX1TH44qCCnGZhV1M8xsJAAi_jLxuZcBUO6TyMPnOkB73v9KpuV_Wej8bajESMO62-_MWpY6nUzxLH7O0F1Qnnmdh3TVSmZKX29K63avP5IdSliENcwoiZL7Xe7pq2a5pWqjEYP79mrEn2HgpSWU8pSPS5-PE3LfIviKS05EleiY7gfv8HmvFWiA:1rzyTE:YEinPgK1-jkYdZlMBfpuNwR2WyTy9j_I8t0LpyQFbrA','2024-04-25 13:00:00.303579'),('wph2wzhnxbkbxzhxpns7baqyj655oc06','.eJxNkMFugzAMhl-lymmTaBWgwMpp62mHndYHQAkxBS3EKDEHVvHuc6CHSbn832_Hv_0QcwDfGEVK1I9dDEbURZEIp0YQtbiiPnyjBk9BJMKjjXBSNIAjBrHlWalR64UR_wYNdo0ePPXM00tVHeX5KHM2lTEeQmD8he2PBfULh5erHwKhfWV_wkAtmm3yLS0P6cdnpD06aNw8cg52ZFWVxZlfXrIJoxrsPv_k96Tv98hOLY6xeQ-7LZa9Rb2MUQecfRsHuT6INREBLLQE5maR4jVomaJrsCX0z71YZzLjXYp9nUDKU0PDdgB5qaWMgZz5h3K513XdlkCk8avZcyh0LNle1z8SJXrO:1s2GjC:N1dps9-YXJL6w72On8WUbtuUtx1HTyioOo9wAc5vfjc','2024-05-01 20:53:58.067824'),('yjqbhzunndvrqh716i9osrtsfrmnjfqy','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1rzkFa:BsS_jnOx6meEwKhRwR6QS_SIrknWpe3oQzSBgSEU4ZQ','2024-04-24 21:48:58.830669'),('ykabfdlnmex1556rtz9vejiwdml2eej7','.eJwtj8EOgjAMhl9l2RkNGyqGkwfxxM0HIIMWWARmumFiCO9upya9_N_3t0lXuXikGkwwslh_wYIsdCJnM6Es5M2SD6LCl539w3iZSHJjFODa4IhzXPqXu1hmxPewdl3dWAoDc52mepcqHpYGgNB7xplWogR4i3sgxLj4dD60DuKt8qqEqqoIBzdjPS9Tg8QizfNzpo8nnR1Y4mTsyBShN3TpY9q3bmLjg-m67zdq2z5CCUl1:1s13TC:QXz2ie2UFsk1qAm2l1kI8NBUiDnMW0pvnMOBOSywS00','2024-04-28 12:32:26.225903'),('z14ukk9umg8rqtpehqeyirtv1wst39qi','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1rzkTz:B6H7Um6s6wMeq7Fn8M_FnsMRcGf3x2q9WgHedjm8-dw','2024-04-24 22:03:51.124560'),('z1es42gac1ffn440xq1qem8ivr3ohbaj','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1s13GL:wvrRf_85Ani_tGoaTDPX0dc23HvyD4Eh13Az2DjZJsg','2024-04-28 12:19:09.930743');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-01 21:43:21
