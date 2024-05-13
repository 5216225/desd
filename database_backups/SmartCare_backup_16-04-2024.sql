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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `database_models_appointmentcancellations`
--

LOCK TABLES `database_models_appointmentcancellations` WRITE;
/*!40000 ALTER TABLE `database_models_appointmentcancellations` DISABLE KEYS */;
INSERT INTO `database_models_appointmentcancellations` VALUES (3,'doctor is on holiday',21,2),(8,'sick leave',200,1),(9,'Cancelled by Patient',203,9),(10,'on holiday',204,2),(11,'Cancelled by Patient',209,9),(12,'Cancelled by Patient',209,9),(13,'emergency',211,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=218 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `database_models_appointments`
--

LOCK TABLES `database_models_appointments` WRITE;
/*!40000 ALTER TABLE `database_models_appointments` DISABLE KEYS */;
INSERT INTO `database_models_appointments` VALUES (14,'2024-02-20','13:10:00.000000','13:30:00.000000',122.00,'cancelled','cancelled',0,2,2),(15,'2024-02-20','13:30:00.000000','14:00:00.000000',100.00,'cancelled','cancelled',0,2,2),(16,'2024-02-21','11:10:00.000000','11:40:00.000000',100.00,'completed','forwarded',1,1,1),(17,'2024-02-23','09:00:00.000000','09:30:00.000000',95.00,'cancelled','cancelled',0,1,1),(18,'2024-02-23','09:00:00.000000','09:30:00.000000',100.00,'cancelled','cancelled',0,2,2),(19,'2024-02-25','10:20:00.000000','10:40:00.000000',80.00,'cancelled','cancelled',0,2,3),(20,'2024-02-21','10:40:00.000000','11:10:00.000000',110.00,'completed','forwarded',1,2,3),(21,'2024-02-20','14:10:00.000000','14:20:00.000000',50.00,'cancelled','cancelled',0,1,1),(22,'2024-02-20','09:00:00.000000','09:30:00.000000',120.00,'completed','prescribed',1,1,1),(23,'2024-02-21','09:50:00.000000','10:10:00.000000',68.00,'completed','prescribed',1,1,1),(24,'2024-02-19','09:00:00.000000','09:30:00.000000',200.00,'completed','forwarded',1,1,2),(25,'2024-02-26','11:40:00.000000','12:00:00.000000',78.00,'completed','prescribed',1,1,2),(63,'2024-02-20','09:00:00.000000','09:30:00.000000',150.00,'cancelled','cancelled',0,1,2),(72,'2024-02-26','09:00:00.000000','09:30:00.000000',150.00,'cancelled','cancelled',0,1,1),(112,'2024-02-29','09:00:00.000000','09:20:00.000000',100.00,'cancelled','cancelled',0,2,2),(113,'2024-03-01','09:30:00.000000','10:00:00.000000',150.00,'cancelled','cancelled',0,2,1),(116,'2024-03-01','10:00:00.000000','10:20:00.000000',100.00,'cancelled','cancelled',0,15,1),(132,'2024-03-14','09:00:00.000000','09:30:00.000000',15.50,'completed','prescribed',1,2,1),(133,'2024-03-15','10:20:00.000000','10:30:00.000000',36.70,'completed','prescribed',1,2,1),(136,'2024-03-04','09:40:00.000000','10:00:00.000000',36.70,'cancelled','cancelled',0,1,3),(137,'2024-03-06','09:30:00.000000','09:50:00.000000',36.70,'cancelled','cancelled',0,1,1),(138,'2024-03-08','09:30:00.000000','10:00:00.000000',150.00,'cancelled','cancelled',0,1,1),(143,'2024-03-14','10:00:00.000000','10:20:00.000000',100.00,'cancelled','cancelled',0,1,1),(144,'2024-03-22','09:00:00.000000','09:30:00.000000',150.00,'cancelled','cancelled',0,1,1),(145,'2024-03-15','09:30:00.000000','10:00:00.000000',150.00,'cancelled','cancelled',0,1,1),(146,'2024-03-15','17:30:00.000000','17:50:00.000000',100.00,'cancelled','cancelled',0,1,1),(148,'2024-03-18','09:50:00.000000','10:20:00.000000',150.00,'cancelled','cancelled',0,1,1),(149,'2024-03-20','09:30:00.000000','09:50:00.000000',100.00,'cancelled','cancelled',0,1,1),(150,'2024-03-22','14:40:00.000000','14:50:00.000000',15.00,'cancelled','cancelled',0,1,3),(151,'2024-03-20','11:40:00.000000','12:00:00.000000',100.00,'cancelled','cancelled',0,1,1),(152,'2024-03-21','12:40:00.000000','12:50:00.000000',50.00,'cancelled','cancelled',0,1,2),(153,'2024-03-19','15:00:00.000000','15:20:00.000000',100.00,'cancelled','cancelled',0,1,2),(154,'2024-03-19','09:00:00.000000','09:30:00.000000',150.00,'cancelled','cancelled',0,1,1),(155,'2024-03-21','11:10:00.000000','11:40:00.000000',150.00,'cancelled','cancelled',0,1,2),(156,'2024-03-20','09:50:00.000000','10:10:00.000000',100.00,'cancelled','cancelled',0,1,2),(157,'2024-03-19','09:30:00.000000','10:00:00.000000',150.00,'cancelled','cancelled',0,1,2),(158,'2024-03-21','10:40:00.000000','11:10:00.000000',150.00,'cancelled','cancelled',0,1,2),(159,'2024-03-18','09:30:00.000000','09:50:00.000000',100.00,'cancelled','cancelled',0,1,1),(160,'2024-03-25','15:30:00.000000','15:50:00.000000',30.00,'cancelled','cancelled',0,1,3),(161,'2024-03-27','11:10:00.000000','11:40:00.000000',150.00,'cancelled','cancelled',0,1,1),(162,'2024-03-26','11:50:00.000000','12:20:00.000000',150.00,'cancelled','cancelled',0,1,1),(163,'2024-03-26','16:40:00.000000','16:50:00.000000',50.00,'cancelled','cancelled',0,1,1),(164,'2024-03-27','12:30:00.000000','12:40:00.000000',50.00,'cancelled','cancelled',0,4,2),(166,'2024-03-25','09:00:00.000000','09:30:00.000000',45.00,'cancelled','cancelled',0,1,3),(167,'2024-03-29','10:50:00.000000','11:10:00.000000',30.00,'cancelled','cancelled',0,1,3),(169,'2024-04-01','09:50:00.000000','10:20:00.000000',150.00,'cancelled','cancelled',0,1,1),(173,'2024-03-21','17:40:00.000000','18:00:00.000000',100.00,'cancelled','cancelled',0,1,2),(174,'2024-03-27','15:40:00.000000','16:10:00.000000',150.00,'cancelled','cancelled',0,1,1),(178,'2024-03-26','11:20:00.000000','11:50:00.000000',150.00,'cancelled','cancelled',0,1,2),(181,'2024-03-29','09:50:00.000000','10:20:00.000000',45.00,'cancelled','cancelled',0,1,3),(182,'2024-03-29','10:20:00.000000','10:30:00.000000',50.00,'cancelled','cancelled',0,4,1),(183,'2024-03-29','17:50:00.000000','18:00:00.000000',50.00,'cancelled','cancelled',0,1,1),(184,'2024-03-29','17:30:00.000000','17:50:00.000000',30.00,'cancelled','cancelled',0,4,3),(186,'2024-03-28','10:00:00.000000','10:20:00.000000',100.00,'cancelled','cancelled',0,1,2),(188,'2024-03-29','11:10:00.000000','11:40:00.000000',150.00,'cancelled','cancelled',0,1,1),(189,'2024-03-29','14:50:00.000000','15:10:00.000000',30.00,'cancelled','cancelled',0,1,3),(190,'2024-03-28','09:40:00.000000','10:00:00.000000',100.00,'cancelled','cancelled',0,1,2),(191,'2024-03-29','09:30:00.000000','10:00:00.000000',150.00,'cancelled','cancelled',0,3,1),(192,'2024-04-03','09:00:00.000000','09:30:00.000000',150.00,'cancelled','cancelled',0,3,2),(193,'2024-04-04','16:30:00.000000','16:40:00.000000',50.00,'cancelled','cancelled',0,1,3),(194,'2024-04-18','16:30:00.000000','16:40:00.000000',150.00,'completed','prescribed',1,2,2),(195,'2024-04-05','09:00:00.000000','09:30:00.000000',150.00,'completed','prescribed',0,16,1),(200,'2024-04-08','09:00:00.000000','09:30:00.000000',150.00,'cancelled','cancelled',0,1,1),(202,'2024-04-16','11:50:00.000000','12:20:00.000000',150.00,'cancelled','cancelled',0,1,1),(203,'2024-04-15','09:00:00.000000','09:30:00.000000',150.00,'cancelled','cancelled',0,1,1),(204,'2024-04-09','09:00:00.000000','09:30:00.000000',150.00,'cancelled','cancelled',0,1,1),(205,'2024-04-12','17:50:00.000000','18:00:00.000000',15.00,'cancelled','cancelled',0,1,3),(207,'2024-04-24','09:30:00.000000','09:50:00.000000',100.00,'upcoming','awaiting',1,1,1),(209,'2024-04-19','15:20:00.000000','15:30:00.000000',50.00,'cancelled','cancelled',1,1,1),(210,'2024-04-17','12:40:00.000000','13:10:00.000000',150.00,'completed','prescribed',1,3,1),(211,'2024-04-19','09:00:00.000000','09:30:00.000000',150.00,'cancelled','cancelled',1,3,1),(212,'2024-04-17','13:50:00.000000','14:00:00.000000',50.00,'upcoming','awaiting',1,1,2),(213,'2024-04-26','12:20:00.000000','12:50:00.000000',45.00,'upcoming','awaiting',1,3,3),(215,'2024-04-19','12:00:00.000000','12:20:00.000000',30.00,'upcoming','awaiting',1,3,3),(216,'2024-04-17','12:30:00.000000','12:40:00.000000',50.00,'upcoming','awaiting',1,1,2),(217,'2024-04-17','09:00:00.000000','09:30:00.000000',150.00,'upcoming','awaiting',1,1,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `database_models_loginattempts`
--

LOCK TABLES `database_models_loginattempts` WRITE;
/*!40000 ALTER TABLE `database_models_loginattempts` DISABLE KEYS */;
INSERT INTO `database_models_loginattempts` VALUES (22,'ji','2024-04-04 08:33:35.641017'),(23,'ji','2024-04-04 08:33:38.278934'),(24,'ji','2024-04-04 08:33:41.138606'),(25,'ji','2024-04-04 08:33:43.889565'),(26,'ji','2024-04-04 08:33:48.878570'),(41,'DELETED USER','2024-04-05 21:50:39.752894'),(42,'Dhrinjan23','2024-04-05 22:17:53.373697'),(43,'bishhh','2024-04-05 22:22:32.034828'),(73,'12342134','2024-04-09 18:38:44.186490'),(74,'1324321','2024-04-09 18:38:47.470316'),(84,'dan','2024-04-15 21:21:17.973926'),(85,'dan','2024-04-15 21:21:22.291062'),(86,'nian','2024-04-15 21:53:22.770382');
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `database_models_patients`
--

LOCK TABLES `database_models_patients` WRITE;
/*!40000 ALTER TABLE `database_models_patients` DISABLE KEYS */;
INSERT INTO `database_models_patients` VALUES (1,'nhs',5),(2,'private',6),(3,'nhs',7),(4,'private',8),(5,'nhs',9),(6,'private',10),(15,'nhs',19),(16,'nhs',36),(17,'nhs',37),(19,'private',40),(22,'nhs',47);
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `database_models_prescriptioncancellations`
--

LOCK TABLES `database_models_prescriptioncancellations` WRITE;
/*!40000 ALTER TABLE `database_models_prescriptioncancellations` DISABLE KEYS */;
INSERT INTO `database_models_prescriptioncancellations` VALUES (5,'wrong prescription was requested',4,20,2),(12,'this is test 1',5,46,2),(19,'this is test 2',5,57,2),(26,'abcde',6,73,2),(30,'Outdated.',5,56,1),(32,'this is test 3',4,55,1),(44,'Cancelled due to deleted user',10,77,14),(45,'Cancelled due to deleted user',10,78,14),(49,'this is a reason',6,79,1);
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
  `prescription_cost` decimal(8,2) NOT NULL,
  PRIMARY KEY (`prescription_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `database_models_prescriptions`
--

LOCK TABLES `database_models_prescriptions` WRITE;
/*!40000 ALTER TABLE `database_models_prescriptions` DISABLE KEYS */;
INSERT INTO `database_models_prescriptions` VALUES (1,'Acetaminophen','Liquid',10.00),(2,'Adderall','Tablets',15.00),(3,'Amitriptyline','Capsules',20.25),(4,'Bzithromycin','Drops',74.00),(5,'Amlodipine','Inhalers',87.50),(6,'Paracetamol','Tablets',10.50),(9,'Paracetamol','Injections',1.00),(13,'Adderall','Injections',1.00),(14,'Bzithromycin','Powder',12.00),(15,'Bzithromycin','Injections',1.00);
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
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `database_models_prescriptionsassignments`
--

LOCK TABLES `database_models_prescriptionsassignments` WRITE;
/*!40000 ALTER TABLE `database_models_prescriptionsassignments` DISABLE KEYS */;
INSERT INTO `database_models_prescriptionsassignments` VALUES (19,20.00,'approved','2024-02-20',2,'collected',2,22,1),(20,30.00,'request denied',NULL,1,'cancelled',0,23,2),(21,50.00,'approved','2024-02-20',3,'collected',2,25,3),(22,70.00,'approved','2024-02-21',1,'collected',2,25,4),(45,20.00,'approved','2024-02-25',2,'collected',2,22,1),(46,45.00,'request denied',NULL,1,'cancelled',0,23,2),(47,5.50,'approved','2024-02-21',10,'collected',2,25,3),(49,262.50,'approved','2024-03-26',18,'collected',2,23,5),(50,1000.00,'approved','2024-02-25',50,'collected',2,22,3),(53,2.00,'approved','2024-04-01',5,'waiting to collect',2,25,6),(55,12.00,'request denied',NULL,5,'cancelled',0,132,3),(56,12.00,'request denied',NULL,10,'cancelled',0,133,14),(57,-1.00,'request denied',NULL,0,'cancelled',0,23,6),(73,10.00,'approved','2024-04-02',1,'waiting to collect',2,22,3),(77,-1.00,'request denied',NULL,0,'cancelled',0,195,1),(78,-1.00,'request denied',NULL,1,'cancelled',0,195,15),(79,-1.00,'request denied',NULL,0,'cancelled',2,23,6),(83,60.00,'approved','2024-04-16',4,'collected',2,210,6),(84,25.00,'approved','2024-04-15',32,'waiting to collect',1,210,3),(85,-1.00,'requested',NULL,2,'awaiting decision',0,211,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `database_models_staffrates`
--

LOCK TABLES `database_models_staffrates` WRITE;
/*!40000 ALTER TABLE `database_models_staffrates` DISABLE KEYS */;
INSERT INTO `database_models_staffrates` VALUES (1,'doctor',300.00,33.20),(2,'nurse',90.00,22.00),(3,'admin',0.00,30.00);
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `database_models_staffs`
--

LOCK TABLES `database_models_staffs` WRITE;
/*!40000 ALTER TABLE `database_models_staffs` DISABLE KEYS */;
INSERT INTO `database_models_staffs` VALUES (1,'full',1,1,1,1,1,1,2),(2,'part',0,1,1,1,0,1,3),(3,'part',1,0,0,0,1,2,4),(14,'full',0,0,0,0,0,3,41);
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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `database_models_users`
--

LOCK TABLES `database_models_users` WRITE;
/*!40000 ALTER TABLE `database_models_users` DISABLE KEYS */;
INSERT INTO `database_models_users` VALUES (2,'Edgaras Levinskas','doctor','edgar','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3','m','2002-01-01','edgar@gmail.com','07783256234','321 Eddy Street','ED1 1LL',1),(3,'Ali Suhail','doctor','ali','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3','m','2003-01-01','ali@gmail.com','08873552732','369 Ali Street','AS1 1AS',1),(4,'Yie Nian Chu','nurse','chu','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3','m','2000-01-20','chu@yahoo.com','08364273274','798 Nian Street','YN1 8CC',1),(5,'John Smith','patient','john','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3','m','1981-07-09','john.smith@test.com','01463783379','81 High St, Tunbridge Wells','WA14 2EB',1),(6,'Daniella Lin','patient','dani','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3','f','1989-01-11','dan.123@yahoo.com','01463783379','81 High St, Tunbridge Wells','BS11 9HF',1),(7,'Loui Falkner','patient','loui','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3','m','1989-01-11','loui@gmail.com','08364273274','369 Ali Street','YN1 8CC',1),(8,'Shirley Scott','patient','shir','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3','f','1947-08-14','scottthewanker@yahoo.com','01202 262753','Poole Rd, Poole','BH17 7BH',1),(9,'Bishu Radar','patient','radar','d030190f8172953499d8c50ad5208ad6ba7f3e7d7092eb989375c1fdac3c33db','m','2024-02-28','bishu@wajit.com','12345678910','Bishu Street, Bish','SN1 1NS',1),(10,'Ben Dover','patient','ben','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3','m','2024-02-28','bendover@mail.com','07765446432','Ben Street','BS1 7HA',1),(19,'DELETED USER','deleted_user','DELETED_USER_#19','4198a2a76b4ac43cd9f4c0c081d4441f21f44d7b98fa48017e911ae42345be92',NULL,NULL,NULL,NULL,NULL,NULL,0),(36,'DELETED USER','deleted_user','DELETED_USER_#36','6d987a391d90fc2451751b2bb85890fc6e452bc057f39a85d8d1fd552f965fb2',NULL,NULL,NULL,NULL,NULL,NULL,0),(37,'DELETED USER','deleted_user','DELETED_USER_#37','dab06cc5a93974c94ad489c6431e118f0d1cace85c4eca7d38e19ae46faebde3',NULL,NULL,NULL,NULL,NULL,NULL,0),(40,'DELETED USER','deleted_user','DELETED_USER_#40','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3',NULL,NULL,NULL,NULL,NULL,NULL,0),(41,'Bishwajit Sonar','admin','bish','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3','m','1995-04-20','sonarbishwajit23@gmail.com','07888194808','22 pakenham road','SN3 2AQ',1),(47,'rutvik','patient','rutvik','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3','m','1979-06-05','rutvik@gmail','05634474296','12 Pakenham Road','SN3 2AQ',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-02-27 22:25:31.360012'),(2,'contenttypes','0002_remove_content_type_name','2024-02-27 22:25:31.851012'),(3,'auth','0001_initial','2024-02-27 22:25:34.143034'),(4,'auth','0002_alter_permission_name_max_length','2024-02-27 22:25:34.338032'),(5,'auth','0003_alter_user_email_max_length','2024-02-27 22:25:34.515069'),(6,'auth','0004_alter_user_username_opts','2024-02-27 22:25:34.609129'),(7,'auth','0005_alter_user_last_login_null','2024-02-27 22:25:34.813612'),(8,'auth','0006_require_contenttypes_0002','2024-02-27 22:25:34.890631'),(9,'auth','0007_alter_validators_add_error_messages','2024-02-27 22:25:34.974613'),(10,'auth','0008_alter_user_username_max_length','2024-02-27 22:25:35.174621'),(11,'auth','0009_alter_user_last_name_max_length','2024-02-27 22:25:35.369605'),(12,'auth','0010_alter_group_name_max_length','2024-02-27 22:25:35.541135'),(13,'auth','0011_update_proxy_permissions','2024-02-27 22:25:35.870988'),(14,'auth','0012_alter_user_first_name_max_length','2024-02-27 22:25:36.095141'),(15,'database_models','0001_initial','2024-02-27 22:25:39.541315'),(16,'sessions','0001_initial','2024-02-27 22:25:39.874744'),(17,'database_models','0002_delete_admins','2024-02-27 22:31:21.478661'),(18,'database_models','0003_alter_prescriptionsassignments_prescription_payment_status','2024-03-04 23:23:24.475152'),(19,'database_models','0004_schedules_slots','2024-03-05 13:39:21.509056'),(20,'database_models','0005_remove_schedules_staff','2024-03-05 13:52:19.707107'),(21,'database_models','0006_alter_slots_duration','2024-03-05 14:07:42.306199'),(22,'database_models','0004_days_durations_schedules_slots','2024-03-07 13:42:38.066684'),(23,'database_models','0005_schedules_staff','2024-03-07 13:43:09.782125'),(24,'database_models','0006_alter_durations_duration','2024-03-07 14:01:18.773562'),(25,'database_models','0007_alter_slots_duration','2024-03-07 14:06:06.443687'),(26,'database_models','0008_rename_duration_durations_duration_length','2024-03-07 14:26:25.497945'),(27,'database_models','0009_alter_slots_schedule','2024-03-07 15:12:59.809023'),(28,'database_models','0010_remove_schedules_staff_schedules_role_and_more','2024-03-08 17:31:07.709380'),(29,'database_models','0011_prescriptioncancellations_staff_id','2024-03-12 00:55:48.939583'),(30,'database_models','0012_loginattempts_alter_prescriptions_prescription_type','2024-04-03 19:19:50.621568'),(31,'database_models','0013_users_is_active_alter_users_address_and_more','2024-04-04 14:25:28.188250'),(32,'database_models','0014_alter_cancellationtypes_cancellation_type_and_more','2024-04-05 23:43:48.434248'),(33,'database_models','0015_staffrates_wage_per_hr','2024-04-16 19:22:24.588887');
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
INSERT INTO `django_session` VALUES ('01zf8nrml5v2uqe212v13e4bba6nnyo3','.eJwtj9EOgyAMRX_F8OwWhDidT_Mb_ACCUicJ2AXwyfjvK2xJH3rPbW7bkx0RgjI6aTacP2ENG2TNdu2BDWx0tpqOTVvHahbQZWZwSRhI5_n_nHaWAAWBwlXNNqSNqOBc3nhDRaY2JkCMhOXjWZXgFAASWR-MaUFTFk5N1YxThhvuoPbDzxDI4H3fybYVnRRkgs8nlb2vd-7vC3riMel1LT-I6_oCum9FIw:1rs29b:GpphbtJ3MwnVMMXCk36VPmHkiDxf2il6l7zvawaCnd8','2024-04-03 15:18:55.307900'),('0jm8mgg1aivvohjozw4mj9pltq6whpq6','.eJwtj0EOgyAQRa9CWNtGsNXGVesVPAAZZaw0BRrAdGG8ewdrMpv_38z_mZUvEYPSkIC3618YzVtRcAcWecs7E-cvvExivXcQeMGDf2cA2hpHMt8cuwPtkkNpqPykBhPSTLYsS3HahyBoHTBGsoWsWE5nfQqIidjHxzR6vdf2glWPLpuzd6jcYgcMBMqmudVSXmWd09CCeR_Ny_2Z1Xn0lkhMME37L5dt-wFjSEhy:1rrgMq:TZPNvevVZ983c1TDWXhDVsqQJ8mZjKXoQPvBjHd4YNc','2024-04-02 16:03:08.928191'),('0kanbmv7tv8segjbyqpwzzjj68hec0my','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1rviuF:uqwT8fSdKt38d8wv-TdoLvYm_3U48HRy3EEprTcXX08','2024-04-13 19:34:19.909757'),('1phb06qkofejjxhyba5qhk2tehcu050k','.eJwtj9EOgyAMRX_F8OwWhDidT_Mb_ACCUicJ2AXwyfjvK2xJH3rPbW7bkx0RgjI6aTacP2ENG2TNdu2BDWx0tpqOTVvHahbQZWZwSRhI5_n_nHaWAAWBwlXNNqSNqOBc3nhDRaY2JkCMhOXjWZXgFAASWR-MaUFTFk5N1YxThhvuoPbDzxDI4H3fybYVnRRkgs8nlb2vd-7vC3riMel1LT-I6_oCum9FIw:1rrpLl:b1WnHrbeGjKGwbFEauRsY5Nn1OlRaRw7jv5WpVG7jEI','2024-04-03 01:38:37.283020'),('1yyat7klwevv9c819o8t79c57w9bsbw2','.eJwtj8FuwjAQRH_F2nNAMaEk5EQrVap6pRLHyIkX7Cq2kdc5VIh_7y5wnLcz4_ENFsI8WFMM9Len8Bb6twqiCQg9fCcX1TH44qCCnGZhV1M8xsJAAi_jLxuZcBUO6TyMPnOkB73v9KpuV_Wej8bajESMO62-_MWpY6nUzxLH7O0F1Qnnmdh3TVSmZKX29K63avP5IdSliENcwoiZL7Xe7pq2a5pWqjEYP79mrEn2HgpSWU8pSPS5-PE3LfIviKS05EleiY7gfv8HmvFWiA:1rt7XM:wQ43EpD531T7SgVkLjJ1SgvqdWfFT-j4qeNr6nswxNs','2024-04-06 15:15:56.911545'),('253mbfgb4gjqx646cuuoiztppl822r31','.eJyNVU2P2yAQ_SsR5-wK8FfqUw_dW257rCqLBJxFtcECvNUqyn_vgGPJybQSkqWEefN4jxmbuZLZK9dJEQRpr8tCS9LyPTFiVKQlb_IinPC7o_rUxv8WnuyJs0OEpD0H62Adafd0FdMhBDuqzvbdSbvwAXFOKX-hDB4AhZROeQ_hgrPdm5Rfu_fglAqATdaHs5VJ-gfbseMxBj-sUZ2Zx5NyANCmORS8qnlRAqhGoYdV-vslrl7PdgTEB9H36TzsBqqjMvJ9sCGe1MOv77TpLWl_XmOmC13Q6Qz0W0tp3NjITaiIIe078QkC4hQr0IvBq9se0wtMrzA9uPmf7OqJzWjLM9lr6iO7zGeXz2zWslz2PfWRna3NsDZf-pDD5qhlEMquGsdV4_nOOXZe5FetwFUr8rULrF3ma5dYu8zXLrF2ld-xCnesyndeYedVfr8r3O8q-wtdU7fsOt95jZ3X-c5r7LzOd15j502-doO1m3ztBmsf_vu2_ILrepqsNgEu7XRhb5bLhKIU5oIIOuHsftmnf9vUOIfS-OHlC4XnQB7x5HG98xc7Wxjcrjf6Ap6t8fMQQNea7gyzKr0Q9BUxYeMwxxE3TzCMtLk84XaGMZfKIP4IHXDCJL4eNkp1ud3-AkEod2s:1rtAjE:Hhgr7-vuTRP9ChtKVEBljCWEsPiu2m-OPcwKC46KWBg','2024-04-06 18:40:24.314627'),('2jwskoza3o5bnosiyaf5x7cbp1d6tzce','.eJwtj0EOgyAQRa9CWNtGsNXGVesVPAAZZaw0BRrAdGG8ewdrMpv_38z_mZUvEYPSkIC3618YzVtRcAcWecs7E-cvvExivXcQeMGDf2cA2hpHMt8cuwPtkkNpqPykBhPSTLYsS3HahyBoHTBGsoWsWE5nfQqIidjHxzR6vdf2glWPLpuzd6jcYgcMBMqmudVSXmWd09CCeR_Ny_2Z1Xn0lkhMME37L5dt-wFjSEhy:1rrjI2:11xfaS1Lung0aVSVVSw4-lzEY34o8y30bvvVnFXNcPk','2024-04-02 19:10:22.247083'),('2r5otlw4mtpa49qb5clukfdu6nsy6dn6','.eJwtj0EOgyAQRa9CWNtGsNXGVesVPAAZZaw0BRrAdGG8ewdrMpv_38z_mZUvEYPSkIC3618YzVtRcAcWecs7E-cvvExivXcQeMGDf2cA2hpHMt8cuwPtkkNpqPykBhPSTLYsS3HahyBoHTBGsoWsWE5nfQqIidjHxzR6vdf2glWPLpuzd6jcYgcMBMqmudVSXmWd09CCeR_Ny_2Z1Xn0lkhMME37L5dt-wFjSEhy:1rriJg:CAwSw0q-w6In1JvdlzMS9HQN2RnHFAav1oa4J5E_jns','2024-04-02 18:08:00.340358'),('3g97ka1d0pw8ret8tjdp8p03yery3dci','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1rvImJ:odnid6jKoTtSKZi9qHRpDd67ukzp2nEYsOmLd4JGJxs','2024-04-12 15:40:23.859692'),('3hlyg35a2q2v92zzgty3rvx4t716a0ol','.eJwtj8FuwjAQRH_F2nNAMaEk5EQrVap6pRLHyIkX7Cq2kdc5VIh_7y5wnLcz4_ENFsI8WFMM9Len8Bb6twqiCQg9fCcX1TH44qCCnGZhV1M8xsJAAi_jLxuZcBUO6TyMPnOkB73v9KpuV_Wej8bajESMO62-_MWpY6nUzxLH7O0F1Qnnmdh3TVSmZKX29K63avP5IdSliENcwoiZL7Xe7pq2a5pWqjEYP79mrEn2HgpSWU8pSPS5-PE3LfIviKS05EleiY7gfv8HmvFWiA:1rtEN2:Blkw1xqYGOQ8CbeHUD7Eo42L5VW8OOb0uBEAoT8A1Jo','2024-04-06 22:33:44.746089'),('3mtbbajm3lsle8nnm8x34emjvei1g5qz','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1ruJsC:LsBUhh1uqMWakkRpJkZdKB2fLD4QEe9lkQ4DKHK-j0E','2024-04-09 22:38:24.681621'),('3oumrac8sgkl7293um71h9ces823sda6','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1ruWco:THehme85IVFcNiAweE1sGauvc2pW6qVy4G0JnTP5V-0','2024-04-10 12:15:22.221357'),('4724l10lwpybcyr6btdo0o3kufyseyfr','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1ruEoT:Ua01cqX8posnP10GYEEVYNz5LNA6G3qBTFbjIrxRfP4','2024-04-09 17:14:13.873074'),('4be5y55utr3z5n2299kccwzo6xtysjtc','.eJw1j80OgjAQhF-F9KymLSqGkwe5cfMBmoVdfiJQ0xYTQ3h3t6jJXma-2Z3sImZPziAEEPnyFT2KXO_EBCOJXBTYggOflPTqJ_8AL3bC2SEitHWwjnVc-8Upxtnii2RsY6rehY59LaXeS8XDEBAdec92qlVSIL6Te3BEgdnT-lBb3KpvKlFlGc3OTmSmeazIMZBZdkn16azTI0MaoR_-1dc2qkNtRyY-QNNs_6h1_QDLw0n_:1rt7XR:y79F7WnRrxFnui30WZ5_crgfUU_Qzn0gIJ4PKEF3Uvo','2024-04-06 15:16:01.287989'),('4kete5uetuh0m69rk8944pij9n0w1dls','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1rwodM:d0qm6jbnWcsEs5bOpXx0WfrqAjFZX4ZKP6bU7jcIfDA','2024-04-16 19:53:24.093236'),('58fioakv4t3lsgbfy90rtiv5x92h9tos','.eJwtj9EOgyAMRX_F8OwWhDidT_Mb_ACCUicJ2AXwyfjvK2xJH3rPbW7bkx0RgjI6aTacP2ENG2TNdu2BDWx0tpqOTVvHahbQZWZwSRhI5_n_nHaWAAWBwlXNNqSNqOBc3nhDRaY2JkCMhOXjWZXgFAASWR-MaUFTFk5N1YxThhvuoPbDzxDI4H3fybYVnRRkgs8nlb2vd-7vC3riMel1LT-I6_oCum9FIw:1rrrL8:SoN2ZgDUzA8gTJNW3fIRueDL5gZdJWpV28HU6ebE4Yk','2024-04-03 03:46:06.212397'),('5betf4a4pz208eq418jbvk01w4i5cj62','.eJwtj8FuwjAQRH_F2nNAMaEk5EQrVap6pRLHyIkX7Cq2kdc5VIh_7y5wnLcz4_ENFsI8WFMM9Len8Bb6twqiCQg9fCcX1TH44qCCnGZhV1M8xsJAAi_jLxuZcBUO6TyMPnOkB73v9KpuV_Wej8bajESMO62-_MWpY6nUzxLH7O0F1Qnnmdh3TVSmZKX29K63avP5IdSliENcwoiZL7Xe7pq2a5pWqjEYP79mrEn2HgpSWU8pSPS5-PE3LfIviKS05EleiY7gfv8HmvFWiA:1ruINL:Rac7WaAHu6Mmr1D_QJx-MNmPNj2pENh9xPwEnqBexoU','2024-04-09 21:02:27.555088'),('5il5wfdn2w0zv7p9js37u4f8w5u1yh8y','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1rvJ7t:k9wVD4cmI51QZ3nABAHAbUj_QPxpxhHRg0EvvVQoA1E','2024-04-12 16:02:41.118145'),('5zsk0b9le8t6n45kpmsn3tpoohe6sw9g','.eJwtj0EOgyAQRa9CWNtGsNXGVesVPAAZZaw0BRrAdGG8ewdrMpv_38z_mZUvEYPSkIC3618YzVtRcAcWecs7E-cvvExivXcQeMGDf2cA2hpHMt8cuwPtkkNpqPykBhPSTLYsS3HahyBoHTBGsoWsWE5nfQqIidjHxzR6vdf2glWPLpuzd6jcYgcMBMqmudVSXmWd09CCeR_Ny_2Z1Xn0lkhMME37L5dt-wFjSEhy:1rs4CS:YbQm3LGXnLRO_bHt54v_2jjsi8mnga34UIO8qLSZE_0','2024-04-03 17:30:00.919396'),('73tvajpuy1uak4jx7etztk2bpjinlym2','.eJwtjzsPwjAMhP9K5RkQaVFfE6gSE2JhYqpCY2hEHlWSDgjx37Ep431n39lvmCOGXskkoX0vQitoqxU4aRFaOPlZZ0dpng4DrCB4w3SSSaNLBHjlP2polAiFYe_v_U2HNBIWTd2st2ItBJlSqYAxEi7KJjsYnV1SQOSkycc0eMVJ17PI6q5jOHqHvZvtjepb2NZFucurIq92ZKKV2vyL9w8Wm8Fb3lrO-71SsHxZltHPYeB8N0b4fL4GhVCd:1ruwkT:TKU7I_jdIgzqj8xNxhy1zPVRc_8tMVDq0mNjioXDRTs','2024-04-11 16:09:01.219089'),('76bltvtplc9kbe22qqu802akg1d67px3','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1rwmTp:ofY3UVa0DWX0ufRlyXmFAtYf7p_rxZQn1Zdbn4tlUMk','2024-04-16 17:35:25.131127'),('78nqvpm2119sy8e6xt49wdrdda8gxnvf','.eJwtj9EOgyAMRX_F8OwWhDidT_Mb_ACCUicJ2AXwyfjvK2xJH3rPbW7bkx0RgjI6aTacP2ENG2TNdu2BDWx0tpqOTVvHahbQZWZwSRhI5_n_nHaWAAWBwlXNNqSNqOBc3nhDRaY2JkCMhOXjWZXgFAASWR-MaUFTFk5N1YxThhvuoPbDzxDI4H3fybYVnRRkgs8nlb2vd-7vC3riMel1LT-I6_oCum9FIw:1rsRvw:otI_fToaNjOYKULhz7q4sURRO2AJ5bttpOJXu216XVs','2024-04-04 18:50:32.791828'),('7ez1a3odmbyk1wv6j7jitoj2268pua2r','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1rwfbG:Uflm2DV9lonpf7zVND0oTOg10JMkat46wPdIFKZdwV0','2024-04-16 10:14:38.723179'),('872r2503jfq2spe5c2888fy7a1x4lotk','.eJwtj9EOgyAMRX_F8OwWhDidT_Mb_ACCUicJ2AXwyfjvK2xJH3rPbW7bkx0RgjI6aTacP2ENG2TNdu2BDWx0tpqOTVvHahbQZWZwSRhI5_n_nHaWAAWBwlXNNqSNqOBc3nhDRaY2JkCMhOXjWZXgFAASWR-MaUFTFk5N1YxThhvuoPbDzxDI4H3fybYVnRRkgs8nlb2vd-7vC3riMel1LT-I6_oCum9FIw:1rs5rD:9eAsz6Fo3j6Y4bkT7vdr3cPEHRgum_hk8lvmRPbeGoU','2024-04-03 19:16:11.012432'),('8iv2w6y4xulubdjd4usgir8ow0zcfxsj','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1rwfta:z3Xk9waPGm76aIwCr72jlwp5-BO26IJTJn3ycoTXeVk','2024-04-16 10:33:34.819297'),('8upt2kl1pet20dod5mlpsclqihaqqheb','.eJwtj8FuwjAQRH_F2nNAMaEk5EQrVap6pRLHyIkX7Cq2kdc5VIh_7y5wnLcz4_ENFsI8WFMM9Len8Bb6twqiCQg9fCcX1TH44qCCnGZhV1M8xsJAAi_jLxuZcBUO6TyMPnOkB73v9KpuV_Wej8bajESMO62-_MWpY6nUzxLH7O0F1Qnnmdh3TVSmZKX29K63avP5IdSliENcwoiZL7Xe7pq2a5pWqjEYP79mrEn2HgpSWU8pSPS5-PE3LfIviKS05EleiY7gfv8HmvFWiA:1rvIsk:32-ukzul5Ue4Arv77NB0KGfT4xecdF4f2Z9p7cWi0V8','2024-04-12 15:47:02.724326'),('8vh0lchlmd0c92mmn9lekrsgqlychrn7','.eJwtj8FuwjAQRH_F2nNAMaEk5EQrVap6pRLHyIkX7Cq2kdc5VIh_7y5wnLcz4_ENFsI8WFMM9Len8Bb6twqiCQg9fCcX1TH44qCCnGZhV1M8xsJAAi_jLxuZcBUO6TyMPnOkB73v9KpuV_Wej8bajESMO62-_MWpY6nUzxLH7O0F1Qnnmdh3TVSmZKX29K63avP5IdSliENcwoiZL7Xe7pq2a5pWqjEYP79mrEn2HgpSWU8pSPS5-PE3LfIviKS05EleiY7gfv8HmvFWiA:1rwRT9:NGAR4uYfLPzzz-Scs-jnNYffCGRmWFJt3cn-5uJaovI','2024-04-15 19:09:19.015967'),('9feb8yg4bxz2r1izui9ji95xomx3r2xm','.eJwtj0EOgyAQRa9CWNtGsNXGVesVPAAZZaw0BRrAdGG8ewdrMpv_38z_mZUvEYPSkIC3618YzVtRcAcWecs7E-cvvExivXcQeMGDf2cA2hpHMt8cuwPtkkNpqPykBhPSTLYsS3HahyBoHTBGsoWsWE5nfQqIidjHxzR6vdf2glWPLpuzd6jcYgcMBMqmudVSXmWd09CCeR_Ny_2Z1Xn0lkhMME37L5dt-wFjSEhy:1rrjQV:hMeZdSxnPxIzptSS-U0__tdUMSl5f8jFsbNcMn7dbPU','2024-04-02 19:19:07.229825'),('a9run02zmt2en2fsz2a3f1qhqfrso2l0','.eJwtj0EOgyAQRa9CWNtGsNXGVesVPAAZZaw0BRrAdGG8ewdrMpv_38z_mZUvEYPSkIC3618YzVtRcAcWecs7E-cvvExivXcQeMGDf2cA2hpHMt8cuwPtkkNpqPykBhPSTLYsS3HahyBoHTBGsoWsWE5nfQqIidjHxzR6vdf2glWPLpuzd6jcYgcMBMqmudVSXmWd09CCeR_Ny_2Z1Xn0lkhMME37L5dt-wFjSEhy:1rsmQ5:48EMgpZHeX769bAXh70mIENM17PPkh5Wd00o9fVGetw','2024-04-05 16:43:01.346740'),('abn0f8epofxsm7hgn2e9f9smnvgofm75','.eJw1j80OgjAQhF-F9KymLSqGkwe5cfMBmoVdfiJQ0xYTQ3h3t6jJXma-2Z3sImZPziAEEPnyFT2KXO_EBCOJXBTYggOflPTqJ_8AL3bC2SEitHWwjnVc-8Upxtnii2RsY6rehY59LaXeS8XDEBAdec92qlVSIL6Te3BEgdnT-lBb3KpvKlFlGc3OTmSmeazIMZBZdkn16azTI0MaoR_-1dc2qkNtRyY-QNNs_6h1_QDLw0n_:1ruIXA:efUVq41SfRg1tbvf2Weo0wC2IKgNnWsmjH_3cs_eUHY','2024-04-09 21:12:36.599508'),('abxgecmy9eo8ie8wrgyl3pmebrj8ftfu','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1ruyFJ:zLViNtQPjmbEhI9kes6d1z8mcOuuQrE1czi5brzrvms','2024-04-11 17:44:57.019074'),('aheor67ye7udnxvhkn6kl3phue73ols5','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1rurV6:J8OGKVo0rFCZ7J7WAFsjLWOAqmgQhWLPq1-zNeDrUoY','2024-04-11 10:32:48.957820'),('b5ng50v3pefmmnuz039g0lj6btde1in6','.eJwtj8FuwjAQRH_F2nNAMaEk5EQrVap6pRLHyIkX7Cq2kdc5VIh_7y5wnLcz4_ENFsI8WFMM9Len8Bb6twqiCQg9fCcX1TH44qCCnGZhV1M8xsJAAi_jLxuZcBUO6TyMPnOkB73v9KpuV_Wej8bajESMO62-_MWpY6nUzxLH7O0F1Qnnmdh3TVSmZKX29K63avP5IdSliENcwoiZL7Xe7pq2a5pWqjEYP79mrEn2HgpSWU8pSPS5-PE3LfIviKS05EleiY7gfv8HmvFWiA:1ruHjw:OywCqoS2B13HC3FS3liSS4Gnk7l81EPKHTqiLy_I3XQ','2024-04-09 20:21:44.450902'),('bpmdc1i3dgq56f9qanbyagz4bebg1dvp','.eJw1j80OgjAQhF-F9KymLSqGkwe5cfMBmoVdfiJQ0xYTQ3h3t6jJXma-2Z3sImZPziAEEPnyFT2KXO_EBCOJXBTYggOflPTqJ_8AL3bC2SEitHWwjnVc-8Upxtnii2RsY6rehY59LaXeS8XDEBAdec92qlVSIL6Te3BEgdnT-lBb3KpvKlFlGc3OTmSmeazIMZBZdkn16azTI0MaoR_-1dc2qkNtRyY-QNNs_6h1_QDLw0n_:1ruGQC:P153zQMAgCmYOh_ADRO0oCgOl_No4LnckZYu0Z122-8','2024-04-09 18:57:16.488086'),('cbi28s02u1jrbvzsexkiizwcjdaeo8ff','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1ruxkT:YDoBqHJQRD2Jny3eOGLHcFkfAmYeUGQu7ILbNDy7V5I','2024-04-11 17:13:05.104915'),('d0ohdag3j2i5xu8aykaddiva38izl2mk','.eJwtkMFuwjAMhl8lymnTACUpaktOAyR22XaBy05VaDwa0SQoSQ8T4t1nA1IO_j_bv-1c-ZQhddYUw_X1IZzlupnxYDxwzT_j5NjOjOcAic94iiPRiykOQkFALc_SEUuRoBl08bc7ulQGxHLVruZCzqXEpLE2Qc6Iq3rF1qNj-5IAyOkSc-mjJaefb8na7ZbgEAN0YfJHHK-5aKt6qZpKNUtMgjdufA5-P5FY9NFT12O9-ykVyT9PMscp9eQfhsxvuAxSu4nx7MKJzs_FpNIVd79GKq0EemUYoS9g6ZOI75Jj60tiqmZKqCUTUguBj318Hd6ExOBlk1xxeWD7yXtI7ICGr_x2-wfiIHJJ:1rwftn:w0dVU3RaIRY67M5KyPzNUic41yR5VWp_zY_BJxpi7Kg','2024-04-16 10:33:47.834108'),('d3giht60d6h31skjpanwj3cz714e7whv','.eJxNkMFugzAQRH8F-QyRDbQknNpKlapeqZQjMngJrsBG9nKIIv69u4RDj_N2djzrh1gjhNZo1KJ-PIU1on5JhdMziFp8-9ElzWxxFKkIfmK2aLTgkAAvHMZfMhKhKGj90HY20Eot1OWsMlll8kJDbUyAGAmfVfJlb2PSYJr8rK4L1twgucI0RfItPmLvDcde31WZ5J8fTEfvoHXr3EGgiVTla1Gdi6LiaJi1nY4ap8h93xAinno_8-qz8X6bYnmfWUa_hp5fcWMUWyoiTNAjmGbyyP-B94Wnxvfow3Ec6VzmZSbLTEliEXXAFu3-CfJSS4bgzD9UHL5h2AsIlXPWGqiUd6Rpvm1_HbF7RQ:1ruEGJ:cZa7W6rSVY5NHdPmdaAddN4QSQSrFSJQfZQJA5iVVaY','2024-04-09 16:38:55.973223'),('danwz3myd7fxj55lc4gp22kl56orcifu','.eJwtj0EOgyAQRa9CWNtGsNXGVesVPAAZZaw0BRrAdGG8ewdrMpv_38z_mZUvEYPSkIC3618YzVtRcAcWecs7E-cvvExivXcQeMGDf2cA2hpHMt8cuwPtkkNpqPykBhPSTLYsS3HahyBoHTBGsoWsWE5nfQqIidjHxzR6vdf2glWPLpuzd6jcYgcMBMqmudVSXmWd09CCeR_Ny_2Z1Xn0lkhMME37L5dt-wFjSEhy:1rs0yG:PuZKvxGTUfBvr2QrOOqKoeaz_w7C2KCznX2DxxTM3Aw','2024-04-03 14:03:08.668905'),('dhb5skvrysnkzyhhakc77bwta4scvs53','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1rwiPa:YHAnhrHbLdY3FgwamQk9mWHwMwzdet_B9w8e-ONzFJ4','2024-04-16 13:14:46.776338'),('eophjryb5qermyxongpqb2isrc5wxy08','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1ruyM0:LGt6-vUxvlh-TcfJ67k7dFlBZeZaruIDMpSmklFqHDY','2024-04-11 17:51:52.827025'),('eqmuwuw27bmvte8t21tdha4174zlfuyz','.eJwtj0EOgyAQRa9CWNtGsNXGVesVPAAZZaw0BRrAdGG8ewdrMpv_38z_mZUvEYPSkIC3618YzVtRcAcWecs7E-cvvExivXcQeMGDf2cA2hpHMt8cuwPtkkNpqPykBhPSTLYsS3HahyBoHTBGsoWsWE5nfQqIidjHxzR6vdf2glWPLpuzd6jcYgcMBMqmudVSXmWd09CCeR_Ny_2Z1Xn0lkhMME37L5dt-wFjSEhy:1rsVMC:AhN4tQ8zq5QA4vKdG7ElHDJL4pE62pYBFpy8QW5HyW0','2024-04-04 22:29:52.618229'),('f509xdcjk934e9f6iloy8iz1eku2gr15','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1rvhdq:mFqjRNi-_ZD7GTm40XF8onxEKUwKFEuiO5f4MyMUV6U','2024-04-13 18:13:18.171833'),('fez8duufznofcfsfvnu4zkfqswxqnhdo','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1ruunL:6WB14MsKYfz372sqSqRJdoBbYh8MAFysWxydyIf2r-k','2024-04-11 14:03:51.884463'),('foynx04xhnvjdf3z7menvdccylopin9x','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1ruUQd:iFGD45EAu1GYIT-2Gm7SWuCtn-6_yvrKmumVQU_rrZQ','2024-04-10 09:54:39.710327'),('fzhpn3ga34bn4e80anyuqqgdbf9ktagd','.eJw1UEFugzAQ_AryGSI70JBwSitVqnqlUo7I4E1wBTayl0MU8ffuAj3O7Mzs7L7EHCE0RqMW1WsD1ojqLRVOjyAq8e17l9SjxV6kIviBuUmjBYdEsGEX_pKQGIqCxt-b1gayVEJdziqTZSYvNNTGBIiR6LNKvuyjT2pMk5_ZtcGaByQ3GIZIuslH7Lzh2Nu7KpLj5wezvXfQuHlsIdBEquKUl-c8LzkaRm2HvcYhct8rQsRD50e2bo3X2xTD58gw-jl0vMX1USypiDBAh2DqwSP_A58TT43v0If9OMJHeSwyWWTqRFxEHbBBuz5BXqpcchtn_iklKyk33f2-FhCKo-ZAnbwjSI5l-QOlRnsR:1rwRrU:FQKUJrGityIbQ0ppyV-VIzGDLeLS4j4j93zxd4raKj8','2024-04-15 19:34:28.090342'),('get705e7h3cpuyvpnqwekjqilb6rq3ke','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1rtWLW:R5VP4KwSNsRHTXShFyLIGagVnYOiDPTq8K-lMK2x8gE','2024-04-07 17:45:22.340797'),('gjagiw7zj2c5vca1491b0s7xyz6apozg','.eJwtj9EOgyAMRX_F8OwWhDidT_Mb_ACCUicJ2AXwyfjvK2xJH3rPbW7bkx0RgjI6aTacP2ENG2TNdu2BDWx0tpqOTVvHahbQZWZwSRhI5_n_nHaWAAWBwlXNNqSNqOBc3nhDRaY2JkCMhOXjWZXgFAASWR-MaUFTFk5N1YxThhvuoPbDzxDI4H3fybYVnRRkgs8nlb2vd-7vC3riMel1LT-I6_oCum9FIw:1rsOdv:nSb5Bi3N9-kmTunRyhtWH0j8o5A8dyOJ7IMadU-kBl0','2024-04-04 15:19:43.943351'),('hdsux95vmrliqfqhjk7ke1up893ijbg1','.eJw1j7FuhDAQRH8FbQ2RDeQAV4lOShWluSoV8uElWDE2sk1xOvHv8QIp5-3u7MwT1oC-VzJKEM9DaAWiycHKGUHAp1t19iHNr0UPOXhniC4yarQxATo5V01aTSSZYe_G_q59nBLmXdsVjBecp6FUymMICVeXLns3OrtFj0hOiwtxcIqcvr941l6vBCdnsbfrfE_vBbC2utRlU5VNnYY4S23Ox28_JF4GN9PVEW-vUpF8zCSDW_1A_nYKsOUQ0OAQUd2Mi1Q_PpZ9uvqAZ5EkS1bWBasL3iUWovSxj3ovzDrxyiiHVf-IM1GyY28c9_9QkdXqUyRnSTLYtj-3U3TR:1rwU72:MtMigeBaAcd9k14g7p8JTbdHPuk0-h7BlI-TFirqO6I','2024-04-15 21:58:40.830097'),('hxwtn63ukjak4fj2lnwgz448kno2wf63','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1rwmj9:LZtb8THS7lM3lf9eAi8dADTICDSJhG1T6e3dVmYk0lc','2024-04-16 17:51:15.297580'),('i59jmk7wkysag4apjq4rmkxrp8ak9wbj','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1rwfry:536xlV4pf1zU47xZZR5RzRPL4vhtHVBvcQ44L3LhdOk','2024-04-16 10:31:54.987236'),('i7zdssz5w5omeaxw26kjer24fvzwsj6z','.eJwtj0EOgyAQRa9CWNtGsNXGVesVPAAZZaw0BRrAdGG8ewdrMpv_38z_mZUvEYPSkIC3618YzVtRcAcWecs7E-cvvExivXcQeMGDf2cA2hpHMt8cuwPtkkNpqPykBhPSTLYsS3HahyBoHTBGsoWsWE5nfQqIidjHxzR6vdf2glWPLpuzd6jcYgcMBMqmudVSXmWd09CCeR_Ny_2Z1Xn0lkhMME37L5dt-wFjSEhy:1rspbW:stzo4QCjmKIQR6aBdnZiaU-iIGeDUdxt7xMBVVrycss','2024-04-05 20:07:02.290892'),('iab7t08ktw3xu6ze40fjcytnht9ulvc0','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1ruYlq:MnQ81yOkJ8ZfLgVtuU2tvntyPSn0yDTqG-fy10szogo','2024-04-10 14:32:50.335769'),('ight2akptge9y4ej7lsxoa4dfeaavzug','.eJwtj8FuwjAQRH_F2nNAMaEk5EQrVap6pRLHyIkX7Cq2kdc5VIh_7y5wnLcz4_ENFsI8WFMM9Len8Bb6twqiCQg9fCcX1TH44qCCnGZhV1M8xsJAAi_jLxuZcBUO6TyMPnOkB73v9KpuV_Wej8bajESMO62-_MWpY6nUzxLH7O0F1Qnnmdh3TVSmZKX29K63avP5IdSliENcwoiZL7Xe7pq2a5pWqjEYP79mrEn2HgpSWU8pSPS5-PE3LfIviKS05EleiY7gfv8HmvFWiA:1rswF8:HT6PwlMNtjBSb2Q1-HyPA2UCzEP333v1Lh4K7zEknAc','2024-04-06 03:12:22.042512'),('in30f4ffpjgh6y1jles271z412akwlxx','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1rv3HN:olAaBfyh8kZbxgNe011fzpN_2RFwGARBx130Vvocsao','2024-04-11 23:07:25.326783'),('iz4q09qv5nsm5zwewbrvtedpnl7b93fh','.eJw1j80OgjAQhF-F9KymLSqGkwe5cfMBmoVdfiJQ0xYTQ3h3t6jJXma-2Z3sImZPziAEEPnyFT2KXO_EBCOJXBTYggOflPTqJ_8AL3bC2SEitHWwjnVc-8Upxtnii2RsY6rehY59LaXeS8XDEBAdec92qlVSIL6Te3BEgdnT-lBb3KpvKlFlGc3OTmSmeazIMZBZdkn16azTI0MaoR_-1dc2qkNtRyY-QNNs_6h1_QDLw0n_:1rs4XU:ujV20qR5LE33o5phMK3rtd5f_9xJ67svCGt45EYdjZU','2024-04-03 17:51:44.420475'),('jivgi2nyoi3e71w906954su4bdnptbau','.eJwtj8FuwjAQRH_F2nNAMaEk5EQrVap6pRLHyIkX7Cq2kdc5VIh_7y5wnLcz4_ENFsI8WFMM9Len8Bb6twqiCQg9fCcX1TH44qCCnGZhV1M8xsJAAi_jLxuZcBUO6TyMPnOkB73v9KpuV_Wej8bajESMO62-_MWpY6nUzxLH7O0F1Qnnmdh3TVSmZKX29K63avP5IdSliENcwoiZL7Xe7pq2a5pWqjEYP79mrEn2HgpSWU8pSPS5-PE3LfIviKS05EleiY7gfv8HmvFWiA:1rtPcB:XVWmM3m8hR8kJT0T9r4-2PxcsLnKgnhXHQaq8u1-368','2024-04-07 10:34:07.314522'),('jo2h942okgk6vktksxo18mge3853w6ag','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1rursR:_lGtbZaKZQGfxr1Lt0JL43FOrE3lj-vchTlTs5hZhds','2024-04-11 10:56:55.778335'),('jsxiwdbu4o0h0xmf5gyyf2q5vjty83ve','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1rubAh:9p1kqa2l7ij5UMWSeuBa1M4PIZHtUSb8L4P2RuZqNKo','2024-04-10 17:06:39.784087'),('jxnd3oocnxvf0cqiqbdqyny22b5rnccf','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1ruxly:vBLS4-DWqmmdILlJiyw5vJdKu_PqoKjc0XkAShtoQgY','2024-04-11 17:14:38.454170'),('k0dogw2ulisrz6c9azd32xe4mtr4i6ta','.eJwtj0EOgyAQRa9CWNtGsNXGVesVPAAZZaw0BRrAdGG8ewdrMpv_38z_mZUvEYPSkIC3618YzVtRcAcWecs7E-cvvExivXcQeMGDf2cA2hpHMt8cuwPtkkNpqPykBhPSTLYsS3HahyBoHTBGsoWsWE5nfQqIidjHxzR6vdf2glWPLpuzd6jcYgcMBMqmudVSXmWd09CCeR_Ny_2Z1Xn0lkhMME37L5dt-wFjSEhy:1rspSO:ZCslCwVmodiPGtIdSEl8vLpQPpDGysO_VYpVYOR60EQ','2024-04-05 19:57:36.873880'),('kef7r949ta4km6tleycru8bgjeo4f0uf','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1rsr7O:lCHCbz9O6GO6_DgdNPgTJBrAOgPdQp-x2ggT47vSms0','2024-04-05 21:44:02.916545'),('kpmjttwakiholo2cotlgcx5x0x9na2at','.eJw1j80OgjAQhF-F9KymLSqGkwe5cfMBmoVdfiJQ0xYTQ3h3t6jJXma-2Z3sImZPziAEEPnyFT2KXO_EBCOJXBTYggOflPTqJ_8AL3bC2SEitHWwjnVc-8Upxtnii2RsY6rehY59LaXeS8XDEBAdec92qlVSIL6Te3BEgdnT-lBb3KpvKlFlGc3OTmSmeazIMZBZdkn16azTI0MaoR_-1dc2qkNtRyY-QNNs_6h1_QDLw0n_:1rwShT:SxKKwciHCs0YO1UoKEc2ZmHKcaff1u8K-xEZXBD2DXE','2024-04-15 20:28:11.820054'),('l6qnjsarww2ltsz9wej01k7oipe67adf','.eJwtj9EOgyAMRX_F8OwWhDidT_Mb_ACCUicJ2AXwyfjvK2xJH3rPbW7bkx0RgjI6aTacP2ENG2TNdu2BDWx0tpqOTVvHahbQZWZwSRhI5_n_nHaWAAWBwlXNNqSNqOBc3nhDRaY2JkCMhOXjWZXgFAASWR-MaUFTFk5N1YxThhvuoPbDzxDI4H3fybYVnRRkgs8nlb2vd-7vC3riMel1LT-I6_oCum9FIw:1rsu7i:cyHdmgxf5SaruUiAC9lED7tUSv13bKKfxdomPRQVLhc','2024-04-06 00:56:34.260200'),('lts3zpz8r9y8ect05ys1p3u0xiwn7y0d','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1ruaD2:YnbYvdkqpJ_VFg7oD9VgO1l0ualRS1bumSoCaCYykSE','2024-04-10 16:05:00.171413'),('lv8eu8osg5tgq748rdhgo94dul338jk8','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1rt40g:XYxzprzi3PCSktVy0xejy1MOXzltfMbOtvaf4_wLR1Y','2024-04-06 11:29:58.463823'),('m51xgq08saajk2abhr9dv7jgcgm8wdxm','.eJydVsFq4zAQ_RWjc1ok2bJTn_awvZTccqwXo0RyI9a2gqQUSvC_7yhpU7fNLERgiDVv5s17aPDkSA5eu1bJIEl9PB-MIjVfkFEOmtTkUb1IJ3220q9m9H-lJwvibB8hZbfBOjjHsvd0HdMhBIy6tV27MS7sIM4p5XeUwQOgVMpp7yGcc5Y9KvWWrYPTOgC2tz5srTq1_s0ytlrF4M6Ouh0Pw0Y7AGhVLXMuSp4XAOpBmv6j9a-XeLrf2gEQH2TXnfywCboOelTr3obo1MOvb83YWah8PjYx14U2mEE3pM4aQh9qShuygFco-wrk74DxrXyFdnLTn8BO9l5Pi-w6XY7RCYQuuAPOJq6yMVrzm9lmRT_YihS24jobq9ntbJ9FP9gStDFMG7_c9g1sHBkRABJugWO3wFOccsxpnnILOXYLeYq2HNNWpGgrMG1FirYC0yZSJkRgEyJSnArMqUiZN4HNm0j4Is2KvrGVKU5LzGmZ4rTEnJYpTkvMaZWircK0VSnaKkzb8v_T-ydu5f3emjHAloQNSYB9FoAlGnNhi0eKORAX_bkHp7y4o_Asz43mWSehs8V6UTNPAsmzZXlJ-djiEWMxsJfBfGr6Eor_Qs4cT3Y3ZuvBhF1DJjJN_wAtL8Ie:1rtBwF:GrW7i0-CQcoDPixkWZct3rJ_4pZdb_vJHo--s5S7krI','2024-04-06 19:57:55.370710'),('n47nsn7oohqca0dp497ce8q9qcs2n9s2','.eJwtj0EOgyAQRa9CWNtGsNXGVesVPAAZZaw0BRrAdGG8ewdrMpv_38z_mZUvEYPSkIC3618YzVtRcAcWecs7E-cvvExivXcQeMGDf2cA2hpHMt8cuwPtkkNpqPykBhPSTLYsS3HahyBoHTBGsoWsWE5nfQqIidjHxzR6vdf2glWPLpuzd6jcYgcMBMqmudVSXmWd09CCeR_Ny_2Z1Xn0lkhMME37L5dt-wFjSEhy:1rrmM2:CxwQoaVO-ccGR9qgu9Ayn6POckwVrsydkgAclKFbG2o','2024-04-02 22:26:42.670657'),('njro6hxav7ayotv9bvglswgwrne6ttmj','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1rwgug:6rNURfTSg1zEcXzUHLwKQbtsZNAQgjfRncTuewQmOlg','2024-04-16 11:38:46.864854'),('ocofpg4pbzvpsdmin43ny3ufct54kb2w','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1rwn6P:3HMpHLGyKFXr8Sn205iSC8ieMVOJK7hTCW-k3PRyj_g','2024-04-16 18:15:17.531414'),('oq76hbny3nuz6olu5xjy4rwaufaympx4','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1rwhLN:WwJFz8RtvC4PKZzUDHAAfO67wx1tg2y0mO6k4CNUlY4','2024-04-16 12:06:21.432694'),('oqub1jatd5krpvv0mrvw9glhritplzzo','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1rud8S:tbbWQ6CfxHXY9-6YjNajVBWnVuT8opzKHRYtwCln1t8','2024-04-10 19:12:28.552515'),('oyqbt3ofeb8ehp254yyj6e0bryi9c5sh','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1rue09:oga-jAS948o8wHpgMfc7wjhC_Mehdh20Q5BxOkmqvSc','2024-04-10 20:07:57.821754'),('p1q0dquybvfuiax8hyt81e9ct2p9oe8o','.eJw1j80OgjAQhF-F9KymLSqGkwe5cfMBmoVdfiJQ0xYTQ3h3t6jJXma-2Z3sImZPziAEEPnyFT2KXO_EBCOJXBTYggOflPTqJ_8AL3bC2SEitHWwjnVc-8Upxtnii2RsY6rehY59LaXeS8XDEBAdec92qlVSIL6Te3BEgdnT-lBb3KpvKlFlGc3OTmSmeazIMZBZdkn16azTI0MaoR_-1dc2qkNtRyY-QNNs_6h1_QDLw0n_:1rt8vl:g-xQPu2aWPOeKxs5Yc5mwxHDcrv6ad8yheoMCBeTbuI','2024-04-06 16:45:13.847424'),('pdbkdww9dcw8fl7wfizweou8nvnay4je','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1rubaq:9C4Ql4teqS4Xi4jbKsheV-ja1w3SZ0fGWR9TyOV7a58','2024-04-10 17:33:40.149277'),('phrk7mtf3ajmabf3kj1hvmp6fqu1llr9','.eJwtj9EOgyAMRX_F8OwWhDidT_Mb_ACCUicJ2AXwyfjvK2xJH3rPbW7bkx0RgjI6aTacP2ENG2TNdu2BDWx0tpqOTVvHahbQZWZwSRhI5_n_nHaWAAWBwlXNNqSNqOBc3nhDRaY2JkCMhOXjWZXgFAASWR-MaUFTFk5N1YxThhvuoPbDzxDI4H3fybYVnRRkgs8nlb2vd-7vC3riMel1LT-I6_oCum9FIw:1rsRXB:v03hPsZ1U3Ic11qWEnnjpdP96A_29UhQOCmRo0CHx2c','2024-04-04 18:24:57.143671'),('pqsdxm6togpki3n61zox1zazcnoibyk4','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1rwT1o:sw_jvgDu_IMeWH8cifptlGPDg7pEl-Z43lPI25ND_Q8','2024-04-15 20:49:12.306780'),('q384a2utpuy3lsdic2fnpkbv76z72e2e','.eJwtj8FuwjAQRH_F2nNAMaEk5EQrVap6pRLHyIkX7Cq2kdc5VIh_7y5wnLcz4_ENFsI8WFMM9Len8Bb6twqiCQg9fCcX1TH44qCCnGZhV1M8xsJAAi_jLxuZcBUO6TyMPnOkB73v9KpuV_Wej8bajESMO62-_MWpY6nUzxLH7O0F1Qnnmdh3TVSmZKX29K63avP5IdSliENcwoiZL7Xe7pq2a5pWqjEYP79mrEn2HgpSWU8pSPS5-PE3LfIviKS05EleiY7gfv8HmvFWiA:1rwUZy:4LdhhdKtBnyDmJEgGJYR1eZnBSjLU5Cc213oMf2_Q1E','2024-04-15 22:28:34.167012'),('q8zc56jkhfiw0iv8euzew6b9osxoxody','.eJwtj8FuwjAQRH_F2nNAMaEk5EQrVap6pRLHyIkX7Cq2kdc5VIh_7y5wnLcz4_ENFsI8WFMM9Len8Bb6twqiCQg9fCcX1TH44qCCnGZhV1M8xsJAAi_jLxuZcBUO6TyMPnOkB73v9KpuV_Wej8bajESMO62-_MWpY6nUzxLH7O0F1Qnnmdh3TVSmZKX29K63avP5IdSliENcwoiZL7Xe7pq2a5pWqjEYP79mrEn2HgpSWU8pSPS5-PE3LfIviKS05EleiY7gfv8HmvFWiA:1rs3vT:G2HTMXBTiw65rONAgQ1NvwpJpqfmrkr17gSaKPdgbjI','2024-04-03 17:12:27.516181'),('r6netbhk4yhibewmm5gntg2k979mkwhh','.eJwtj0EOgyAQRa9CWNtGsNXGVesVPAAZZaw0BRrAdGG8ewdrMpv_38z_mZUvEYPSkIC3618YzVtRcAcWecs7E-cvvExivXcQeMGDf2cA2hpHMt8cuwPtkkNpqPykBhPSTLYsS3HahyBoHTBGsoWsWE5nfQqIidjHxzR6vdf2glWPLpuzd6jcYgcMBMqmudVSXmWd09CCeR_Ny_2Z1Xn0lkhMME37L5dt-wFjSEhy:1rrisk:hqqUtlyU2IC4NxM1ZJOwD1JpVDtfGfc76oImPBuaIKM','2024-04-02 18:44:14.665093'),('rfohmop8cash5mt1gaqd5mvpn7xzdjnk','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1rucAy:k2q1Rywbb35uajYrmUe2i1Lhq_KgPyjq5mJvHx7Up1k','2024-04-10 18:11:00.651365'),('rfqsdqgiqgsii91pao0kvl6j84v3lrbn','.eJwtj0EOgyAQRa9CWNtGsNXGVesVPAAZZaw0BRrAdGG8ewdrMpv_38z_mZUvEYPSkIC3618YzVtRcAcWecs7E-cvvExivXcQeMGDf2cA2hpHMt8cuwPtkkNpqPykBhPSTLYsS3HahyBoHTBGsoWsWE5nfQqIidjHxzR6vdf2glWPLpuzd6jcYgcMBMqmudVSXmWd09CCeR_Ny_2Z1Xn0lkhMME37L5dt-wFjSEhy:1rrnfj:v8L8kisfHA0DadildQkI2tOcwPJ6FYCCYRd4ojragWQ','2024-04-02 23:51:07.846131'),('roctzxiztlypacnnhoo21sbo2zfcj1yo','.eJwtj8FuwjAQRH_F2nNAMaEk5EQrVap6pRLHyIkX7Cq2kdc5VIh_7y5wnLcz4_ENFsI8WFMM9Len8Bb6twqiCQg9fCcX1TH44qCCnGZhV1M8xsJAAi_jLxuZcBUO6TyMPnOkB73v9KpuV_Wej8bajESMO62-_MWpY6nUzxLH7O0F1Qnnmdh3TVSmZKX29K63avP5IdSliENcwoiZL7Xe7pq2a5pWqjEYP79mrEn2HgpSWU8pSPS5-PE3LfIviKS05EleiY7gfv8HmvFWiA:1rvIUN:OnA8n8JqRdJswtevIDx2bIl1AeGKOqttEeFFVKUo2kY','2024-04-12 15:21:51.606675'),('rwarttcns2gne25x4clovmy1vccpl2rb','.eJwtj0EOgyAQRa9CWNtGsNXGVesVPAAZZaw0BRrAdGG8ewdrMpv_38z_mZUvEYPSkIC3618YzVtRcAcWecs7E-cvvExivXcQeMGDf2cA2hpHMt8cuwPtkkNpqPykBhPSTLYsS3HahyBoHTBGsoWsWE5nfQqIidjHxzR6vdf2glWPLpuzd6jcYgcMBMqmudVSXmWd09CCeR_Ny_2Z1Xn0lkhMME37L5dt-wFjSEhy:1rsLHV:v2ACms28CdX9-nQLsJSMrtMHVoDNmiTXwJacx_coqkU','2024-04-04 11:44:21.025830'),('rzqhgjccodhcqogf30jtry3h8apcwjnf','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1rtmiq:GTiX7tD3FVMuZrnVThHs5R6ZEFn861bfV4CV7u95svA','2024-04-08 11:14:32.698275'),('s5drbh66qrnh9a4gtm5qnmury8yg1l8f','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1ruIbd:IQ7ygEpsCq7Ioysdpyf-B_rTIyYjAaWFrCnYo8hMjCw','2024-04-09 21:17:13.228097'),('shcvqks8whq6csebuk9am6piw48mb2rk','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1rwp8P:8F_lKBl-yEdEHegnRuM0deXEpsjNLzacGF8knX5W5NI','2024-04-16 20:25:29.659570'),('sk8k5qk5laqutsna08ii5ygzb2b510r8','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1rwqQi:piQMv9E--dTBDuHqw89oo0hrTfc0oxSE05T5JsPADso','2024-04-16 21:48:28.076622'),('sudnomalzyvbp1s236n78m8mqdsji4fz','.eJwtj0EOgyAQRa9CWNtGsNXGVesVPAAZZaw0BRrAdGG8ewdrMpv_38z_mZUvEYPSkIC3618YzVtRcAcWecs7E-cvvExivXcQeMGDf2cA2hpHMt8cuwPtkkNpqPykBhPSTLYsS3HahyBoHTBGsoWsWE5nfQqIidjHxzR6vdf2glWPLpuzd6jcYgcMBMqmudVSXmWd09CCeR_Ny_2Z1Xn0lkhMME37L5dt-wFjSEhy:1rshN1:GXgJL7V8TIjFO02XwOIobO3ZnVm9DPw0ZGcOmpFS70U','2024-04-05 11:19:31.057334'),('sy6vsrxi4ddg0bio6gw8re19xkctfmx9','.eJwtj9EOgyAMRX_F8OwWhDidT_Mb_ACCUicJ2AXwyfjvK2xJH3rPbW7bkx0RgjI6aTacP2ENG2TNdu2BDWx0tpqOTVvHahbQZWZwSRhI5_n_nHaWAAWBwlXNNqSNqOBc3nhDRaY2JkCMhOXjWZXgFAASWR-MaUFTFk5N1YxThhvuoPbDzxDI4H3fybYVnRRkgs8nlb2vd-7vC3riMel1LT-I6_oCum9FIw:1rrkyT:cpnvj_duBJWQLZ2xFGwWOjrbMv1dI3O8H86SB3FbZJs','2024-04-02 20:58:17.118836'),('tanv8szf1b3kl942dlvseniy7hp71tpx','.eJw1j80OgjAQhF-F9KymLSqGkwe5cfMBmoVdfiJQ0xYTQ3h3t6jJXma-2Z3sImZPziAEEPnyFT2KXO_EBCOJXBTYggOflPTqJ_8AL3bC2SEitHWwjnVc-8Upxtnii2RsY6rehY59LaXeS8XDEBAdec92qlVSIL6Te3BEgdnT-lBb3KpvKlFlGc3OTmSmeazIMZBZdkn16azTI0MaoR_-1dc2qkNtRyY-QNNs_6h1_QDLw0n_:1rt7xw:AV0xD2zTZ00-mEppmthZ5W6si7l8KGKapVdBbvTFnlQ','2024-04-06 15:43:24.850178'),('tmin5fw4gv5f7jrjfh7zgm9dijeg1sm6','.eJwtj0EOgyAQRa9CWNtGsNXGVesVPAAZZaw0BRrAdGG8ewdrMpv_38z_mZUvEYPSkIC3618YzVtRcAcWecs7E-cvvExivXcQeMGDf2cA2hpHMt8cuwPtkkNpqPykBhPSTLYsS3HahyBoHTBGsoWsWE5nfQqIidjHxzR6vdf2glWPLpuzd6jcYgcMBMqmudVSXmWd09CCeR_Ny_2Z1Xn0lkhMME37L5dt-wFjSEhy:1rsMs1:_EF6UoaCZYxvHeqalElmV9gVijFSIT0rWULUWrQ-bB8','2024-04-04 13:26:09.698655'),('u6jd3p9eso7ijct9ma1ly6hg8j65v9kv','.eJwtj0EOgyAQRa9CWNtGsNXGVesVPAAZZaw0BRrAdGG8ewdrMpv_38z_mZUvEYPSkIC3618YzVtRcAcWecs7E-cvvExivXcQeMGDf2cA2hpHMt8cuwPtkkNpqPykBhPSTLYsS3HahyBoHTBGsoWsWE5nfQqIidjHxzR6vdf2glWPLpuzd6jcYgcMBMqmudVSXmWd09CCeR_Ny_2Z1Xn0lkhMME37L5dt-wFjSEhy:1rrhKP:L3hjvrt5AHDYGF2x7-6ybQZy0hVQe_oBZVCeG5FHaO8','2024-04-02 17:04:41.036393'),('u8tyhwtk1g10rot9pwldhmeeczldk8gw','.eJwtj9EOgyAMRX_F8OwWhDidT_Mb_ACCUicJ2AXwyfjvK2xJH3rPbW7bkx0RgjI6aTacP2ENG2TNdu2BDWx0tpqOTVvHahbQZWZwSRhI5_n_nHaWAAWBwlXNNqSNqOBc3nhDRaY2JkCMhOXjWZXgFAASWR-MaUFTFk5N1YxThhvuoPbDzxDI4H3fybYVnRRkgs8nlb2vd-7vC3riMel1LT-I6_oCum9FIw:1rrpsy:T30kLyka5gA13Y_pcE-T7KaCOKijPLhL8hs00J9raG4','2024-04-03 02:12:56.402942'),('ufplvz2rermww67thvwc2yuqi5h3323d','.eJydVk1r4zAQ_StG52TRl-2uTz1sLyW3HNeLUSK5EWtbQVIKJeS_7yhpsy7NFCIw2Jo3ejNPM8JzJIdgfKdVVKQ5XhZWk4YvyKRGQxrypF-UV6FYmVc7hb8qkAXxbkiQdtvoPKzTtnd3k9zBBIymc323sT7uwM4p5UvK4AFQae1NCGAWnBVPWr8V6-iNiYDtXYhbp8-hf7GCrVbJuHOT6abDuDEeAFrXD4KXFRcSQDMqO3yEfnxJqx9bNwISour7sx52gqijmfR6cDEpDfAOnZ16Bzt_H9vk62MX7Wha0hQtoT8bSluygE_Y9hkQ74ANnXqFcGoznMHoD-a0KG6zCYytRNh6NQScrrxJx2jD7k5utukL2_1SZ5u-sGFSv2VDlLIcpQxTyhqZwyZvs_Fr79zBxpGGAyCjChyrAs9RyjGlIqcKAquCyMlN4Lll9JvA-k3m1FRiNZU55yaxc5MNz2HjGFvGuUns3MocpSWmtMzpkBLrkContwrLrcq5pxV2T6ucKlRYFeqcDqmxDqlzqlBjVahzlNaY0ofv7-mfNH_s985OEeYBmAUIsM8MMC4kX07rRDEH0khzicEpl0sql1xeAs29zonOfvrXbOZOkPLsR351-ZhXEsaSYa-i_Z_TJ1Oaty4cz243FevRxl1LTuR0-geHjAoe:1rwgZe:BrsELNS5mqRG6JAxbACF3gJquHBKJYsZkcdWnRZrGuk','2024-04-16 11:17:02.701283'),('ujh2uvg5lutthty5ijsm7356ampvsesz','.eJw1j80OgjAQhF-F9KymLSqGkwe5cfMBmoVdfiJQ0xYTQ3h3t6jJXma-2Z3sImZPziAEEPnyFT2KXO_EBCOJXBTYggOflPTqJ_8AL3bC2SEitHWwjnVc-8Upxtnii2RsY6rehY59LaXeS8XDEBAdec92qlVSIL6Te3BEgdnT-lBb3KpvKlFlGc3OTmSmeazIMZBZdkn16azTI0MaoR_-1dc2qkNtRyY-QNNs_6h1_QDLw0n_:1rt6NV:M3_sKcH8yYGlHZrvElU9NrVBwzg6Y6RzJI08Jni3Q-c','2024-04-06 14:01:41.303150'),('ulm02t9wkmqnlicwlz3xpewfiuyhuba4','.eJwtj0EOgyAQRa9CWNtGsNXGVesVPAAZZaw0BRrAdGG8ewdrMpv_38z_mZUvEYPSkIC3618YzVtRcAcWecs7E-cvvExivXcQeMGDf2cA2hpHMt8cuwPtkkNpqPykBhPSTLYsS3HahyBoHTBGsoWsWE5nfQqIidjHxzR6vdf2glWPLpuzd6jcYgcMBMqmudVSXmWd09CCeR_Ny_2Z1Xn0lkhMME37L5dt-wFjSEhy:1rsn21:lSe9dxIobCfzEugz7FExwnyCD_Yqx0uEXZzLf3Hz6c0','2024-04-05 17:22:13.353783'),('ulyi6pojivxyrxvd7ruk3rh8956r4r9f','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1rwgvD:n1wx1peDRzr6EDHXfThhAK_VuStSznkgnKtYCUOWhpg','2024-04-16 11:39:19.499213'),('upx6mfx3elc92t867bsunsw3085gg0m5','.eJwtj9EOgyAMRX_F8OwWhDidT_Mb_ACCUicJ2AXwyfjvK2xJH3rPbW7bkx0RgjI6aTacP2ENG2TNdu2BDWx0tpqOTVvHahbQZWZwSRhI5_n_nHaWAAWBwlXNNqSNqOBc3nhDRaY2JkCMhOXjWZXgFAASWR-MaUFTFk5N1YxThhvuoPbDzxDI4H3fybYVnRRkgs8nlb2vd-7vC3riMel1LT-I6_oCum9FIw:1rrdZO:L-rjnBOmtmXa3w8F1LD1hq899YRazNh0UtOp7BlA2d0','2024-04-02 13:03:54.921865'),('us9t7d874qosgh74rsk19a4cmfcrhpvq','.eJwtj0EOgyAQRa9CWNtGsNXGVesVPAAZZaw0BRrAdGG8ewdrMpv_38z_mZUvEYPSkIC3618YzVtRcAcWecs7E-cvvExivXcQeMGDf2cA2hpHMt8cuwPtkkNpqPykBhPSTLYsS3HahyBoHTBGsoWsWE5nfQqIidjHxzR6vdf2glWPLpuzd6jcYgcMBMqmudVSXmWd09CCeR_Ny_2Z1Xn0lkhMME37L5dt-wFjSEhy:1rrhsD:R2VTJRWj1cQfzBaVeQhPYM7DaOBTcrQwofU0yNwbjqI','2024-04-02 17:39:37.902340'),('uw6eg2cfyfr3oicj4jpq7s3z03b1yjgp','.eJwtj0EOgyAQRa9CWNtGsNXGVesVPAAZZaw0BRrAdGG8ewdrMpv_38z_mZUvEYPSkIC3618YzVtRcAcWecs7E-cvvExivXcQeMGDf2cA2hpHMt8cuwPtkkNpqPykBhPSTLYsS3HahyBoHTBGsoWsWE5nfQqIidjHxzR6vdf2glWPLpuzd6jcYgcMBMqmudVSXmWd09CCeR_Ny_2Z1Xn0lkhMME37L5dt-wFjSEhy:1rrkij:XUNyP1HYT0qtXHqRM0AQhYONB2tig2WerqN5iNIwf8c','2024-04-02 20:42:01.674983'),('vapbwee5xy1da26k8eqkl6frjhey00uy','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1rvHWn:5d4q5oPT0Ki0-p2vZzhKwy3zNw8pUWcbqY62mPfuIG4','2024-04-12 14:20:17.803628'),('vpewb8nryjywefcyp0hzb81dej89e95k','.eJwtj7FuwzAMRH9F4OwUtuvWqaciU8ai-QBDsVhIqCUGlJzACPLvJZ1uunfU8XiHJSOPzhYLw_0pgoNhX0GyEWGAkw8842pOE5UCFTDNii-2BEwK9M__bJZZIZKGI_2M58DFC24-un5X73dNJ6Z1jjFnwV8kUebbVWZ7iXehXCZyGnU4Nr3pD0elnhKOaYlnZHHqpq1b0763_duruBhtmHW39isebzb9In-u1hO9TBQ14Nl1O6xTuUaVmRaetls4XKUyPB5_YrNYFA:1rrlre:xNeS_6Ux7WwloOxKINIy4q-mxMcUugGnfl4nVB2eNkM','2024-04-02 21:55:18.358058'),('vtfsawhz12bnxezx9j1hgc0rk78ii60x','.eJwtj0EOgyAQRa9CWNtGsNXGVesVPAAZZaw0BRrAdGG8ewdrMpv_38z_mZUvEYPSkIC3618YzVtRcAcWecs7E-cvvExivXcQeMGDf2cA2hpHMt8cuwPtkkNpqPykBhPSTLYsS3HahyBoHTBGsoWsWE5nfQqIidjHxzR6vdf2glWPLpuzd6jcYgcMBMqmudVSXmWd09CCeR_Ny_2Z1Xn0lkhMME37L5dt-wFjSEhy:1rskXm:uhjslqF2tPvNkjVu0QKL1G4wP5kkZQQAFoEmyWWHCYo','2024-04-05 14:42:50.598254'),('vz6sspxm3iawd1fzyk29v9nhriopl33i','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1ruyvH:bc1lpRz2CnA0168Zj3pjAudiq7MkALzYbxwFH6I5OJ8','2024-04-11 18:28:19.309811'),('wdga53mvmprxjzn1axmbur0mmqewgu22','.eJw1j80OgjAQhF-F9KymLSqGkwe5cfMBmoVdfiJQ0xYTQ3h3t6jJXma-2Z3sImZPziAEEPnyFT2KXO_EBCOJXBTYggOflPTqJ_8AL3bC2SEitHWwjnVc-8Upxtnii2RsY6rehY59LaXeS8XDEBAdec92qlVSIL6Te3BEgdnT-lBb3KpvKlFlGc3OTmSmeazIMZBZdkn16azTI0MaoR_-1dc2qkNtRyY-QNNs_6h1_QDLw0n_:1rtQYc:wfRNoz-cRQ8nbRyE2JBFhL2Lk0zpKcX41BMoneVDDYA','2024-04-07 11:34:30.295553'),('wkl06vaoongt8le68sarepktxhd6rirh','.eJwtj0EOgyAQRa9CWNtGsNXGVesVPAAZZaw0BRrAdGG8ewdrMpv_38z_mZUvEYPSkIC3618YzVtRcAcWecs7E-cvvExivXcQeMGDf2cA2hpHMt8cuwPtkkNpqPykBhPSTLYsS3HahyBoHTBGsoWsWE5nfQqIidjHxzR6vdf2glWPLpuzd6jcYgcMBMqmudVSXmWd09CCeR_Ny_2Z1Xn0lkhMME37L5dt-wFjSEhy:1rsNL1:VSobHcGvrKGIWmm48IUzBH7-sWNjxArHYZda4HMmDCM','2024-04-04 13:56:07.339519'),('xjk9vzt671suzd1ssq0n4fa8b1hg895d','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1ruaMf:Z81jXF62lEAxnutbmiP0ADVYESv9meOuF6m7jdrCnVo','2024-04-10 16:14:57.247111'),('xm1zff1jb3q9y36m4m036gumno0wrj29','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1rwo7H:i7mcSH4oCI23Fi5z71bTn8hMDGBpkLKccHRSYw4A_Yc','2024-04-16 19:20:15.682310'),('xo2i0a29p06j4oiccu4oaakjxonrxzbq','.eJwtj8FuwjAQRH_F2nNAMaEk5EQrVap6pRLHyIkX7Cq2kdc5VIh_7y5wnLcz4_ENFsI8WFMM9Len8Bb6twqiCQg9fCcX1TH44qCCnGZhV1M8xsJAAi_jLxuZcBUO6TyMPnOkB73v9KpuV_Wej8bajESMO62-_MWpY6nUzxLH7O0F1Qnnmdh3TVSmZKX29K63avP5IdSliENcwoiZL7Xe7pq2a5pWqjEYP79mrEn2HgpSWU8pSPS5-PE3LfIviKS05EleiY7gfv8HmvFWiA:1rriyu:TuMEQUb9yTsmp79STO7EuRY5_TGjnBKcDEn_It8gbzQ','2024-04-02 18:50:36.350447'),('y9u0ur1l2vjtormszf37s1wm5m223x4x','.eJwtj8FuwjAQRH_F2nNAMaEk5EQrVap6pRLHyIkX7Cq2kdc5VIh_7y5wnLcz4_ENFsI8WFMM9Len8Bb6twqiCQg9fCcX1TH44qCCnGZhV1M8xsJAAi_jLxuZcBUO6TyMPnOkB73v9KpuV_Wej8bajESMO62-_MWpY6nUzxLH7O0F1Qnnmdh3TVSmZKX29K63avP5IdSliENcwoiZL7Xe7pq2a5pWqjEYP79mrEn2HgpSWU8pSPS5-PE3LfIviKS05EleiY7gfv8HmvFWiA:1ruIvJ:pYWmCHzDgW_7VdVacSuOtQSNu-aaVYLgeU_w27qrZc0','2024-04-09 21:37:33.814572'),('yk96nvw0zts0me3lctqxfr4v2qhxajhs','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1rufwE:_n6D7WaUIIf0a-a9T9OmKPlZoSLGh5pJSCdUReB6Gvw','2024-04-10 22:12:02.216506'),('ymk570bbi5o7hxz23kz32qtqa5h9mjdw','.eJwtj0EOgyAQRa9CWNtGsNXGVesVPAAZZaw0BRrAdGG8ewdrMpv_38z_mZUvEYPSkIC3618YzVtRcAcWecs7E-cvvExivXcQeMGDf2cA2hpHMt8cuwPtkkNpqPykBhPSTLYsS3HahyBoHTBGsoWsWE5nfQqIidjHxzR6vdf2glWPLpuzd6jcYgcMBMqmudVSXmWd09CCeR_Ny_2Z1Xn0lkhMME37L5dt-wFjSEhy:1rslnd:ERQhw02dj-bpfIMTuIF4CVo_Ua3t6uoKSW8iSsXbjEY','2024-04-05 16:03:17.025084'),('ypimsbw15mzoh34u6zucpzjdvfcoapdh','.eJydVsFq4zAQ_RWjc1ok2bJTn_awvZTccqwXo0RyI9a2gqQUSvC_7yhpU7fNLERgiDVv5s17aPDkSA5eu1bJIEl9PB-MIjVfkFEOmtTkUb1IJ3220q9m9H-lJwvibB8hZbfBOjjHsvd0HdMhBIy6tV27MS7sIM4p5XeUwQOgVMpp7yGcc5Y9KvWWrYPTOgC2tz5srTq1_s0ytlrF4M6Ouh0Pw0Y7AGhVLXMuSp4XAOpBmv6j9a-XeLrf2gEQH2TXnfywCboOelTr3obo1MOvb83YWah8PjYx14U2mEE3pM4aQh9qShuygFco-wrk74DxrXyFdnLTn8BO9l5Pi-w6XY7RCYQuuAPOJq6yMVrzm9lmRT_YihS24jobq9ntbJ9FP9gStDFMG7_c9g1sHBkRABJugWO3wFOccsxpnnILOXYLeYq2HNNWpGgrMG1FirYC0yZSJkRgEyJSnArMqUiZN4HNm0j4Is2KvrGVKU5LzGmZ4rTEnJYpTkvMaZWircK0VSnaKkzb8v_T-ydu5f3emjHAloQNSYB9FoAlGnNhi0eKORAX_bkHp7y4o_Asz43mWSehs8V6UTNPAsmzZXlJ-djiEWMxsJfBfGr6Eor_Qs4cT3Y3ZuvBhF1DJjJN_wAtL8Ie:1rtDzB:VCmXi0k0uASW9YwUDlU4nhfD4zAZf6TOXIszmEhZAZE','2024-04-06 22:09:05.532311'),('yxetkccw3qazrmarixi75i2iyz4tqfhk','.eJydVsFu2zAM_RVD53SQZNlufdphvQy55TgPhhIpjTDbCiSlwBD430clbeZuYQ8EDCTiox7fg0nQZ3aKNvRGJ83a8_XgDGvlik16tKxlz-ZFBx2LtX11U_ylI1ux4IcMGb9LPsA5X3tLtzkdQsBoe7_vty6kA8Ql5_KBC3gA1MYEGyOESymKZ2N-F5sUrE2AHX1MO28upb-JQqzXOXjwk-2n07i1AQDeNI-lrGpZKgDtqN3wXvrrSz592fkRkJj0fn_xI2aoOtrJbAafstMIv7F3097DzR_nLueG1Cc32o61Rcf4U8t5x1bwF659BMo3wMVev0I5vR0u4F4P0c6r4j5deZdO8Fudf-lSOCFsi0v_sQkKm8DYJIVNYmwVha26zyYo2gSmTVC0CUybpGiTmDbZKgqbus9WUjqkxDqkRIfhUzZkFhRlFhQ2C4riVGFOFcWpwpxWFKcV5rSi9FuF9VtFmYUKm4Wa8hZq7C3UlFmosVmoKU5rzGlDcdpgThuK0wZz-vh5v_3MW_l49G5KsCVhQzJgXwRgieZcyWWmWAJ50V9rAKgeODxP10LLrIvQxWK9qVkmgeTFsrylvG_xjIkcOOrk_mr6EMpfIVeO7_4wFZvRpUPHZjbPfwBmisID:1rtOZB:qVqWoEXKtLS66Kt5PM8Sq5voB4lQEdkIBnQTjUaYAqc','2024-04-07 09:26:57.250074'),('z4soqsrmeyl10l3uvpz5nvppzw56n8li','.eJw1j8tuwjAQRX_F8hqixKSqk1XLjk1FxQdEk3hC3MYeNDZCFeLfO-5jOedcX13f9TUhDw4y6P7-e3in-7bZ6AgBda_3Pi03-PBZnSgC641mWosAF3yUszz6y46SFSJ1ONA8jJ7zIrjpuqdt3W5NLRKcY0xJsDHqAp8YFwiKCZzIC6U8kStdp7edMq_vBS4UcYjXMCKLqJ-ttU3X2tqKxAB-FZrKuPF_q9m9nIuoJgoSShnm-edjTfuQfbiiLERmKoWHOBEzTlkdIaUbsavUcUVIqDJ_KTiDj5V-fAOkxWGE:1ruIEZ:NN59DoZJ3ZRbnWfvw7ZnP2hXrM-mforHLkGvIanK3MQ','2024-04-09 20:53:23.687204'),('zlvh0hj8pl1kjhuxw9e1ev6xw6c5d8v8','.eJw1j00OgjAQRq_SdC0GSo2FlXoAE8MByECLVGlL2hIXhLs79Wf5vffNZGalS1C-lRCB1us3aElrXuyoBaNoTS86jC946EgaZ8HTHfVuSgKk0RZjGvp1O-wiwXWqdUPbaR9HxEVVHbKcZyxHCVJ6FQJixsgMT2VHMMQ7kChnF2LvZNrVXEvCzrcER2dVaxfTKY8iPwohioqLXKBUBvSENKTjuv-trDzdk9j3zmApRBiGz2MF37Y3wVdOCQ:1rsumm:Z3EDjUtwTyjnTYJ9a079UcHYuF_doEONBwZ7fNT0LL8','2024-04-06 01:39:00.598264');
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

-- Dump completed on 2024-04-16 22:40:14
