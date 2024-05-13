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
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add admins',1,'add_admins'),(2,'Can change admins',1,'change_admins'),(3,'Can delete admins',1,'delete_admins'),(4,'Can view admins',1,'view_admins'),(5,'Can add appointments',2,'add_appointments'),(6,'Can change appointments',2,'change_appointments'),(7,'Can delete appointments',2,'delete_appointments'),(8,'Can view appointments',2,'view_appointments'),(9,'Can add cancellation types',3,'add_cancellationtypes'),(10,'Can change cancellation types',3,'change_cancellationtypes'),(11,'Can delete cancellation types',3,'delete_cancellationtypes'),(12,'Can view cancellation types',3,'view_cancellationtypes'),(13,'Can add patients',4,'add_patients'),(14,'Can change patients',4,'change_patients'),(15,'Can delete patients',4,'delete_patients'),(16,'Can view patients',4,'view_patients'),(17,'Can add prescriptions',5,'add_prescriptions'),(18,'Can change prescriptions',5,'change_prescriptions'),(19,'Can delete prescriptions',5,'delete_prescriptions'),(20,'Can view prescriptions',5,'view_prescriptions'),(21,'Can add staff rates',6,'add_staffrates'),(22,'Can change staff rates',6,'change_staffrates'),(23,'Can delete staff rates',6,'delete_staffrates'),(24,'Can view staff rates',6,'view_staffrates'),(25,'Can add users',7,'add_users'),(26,'Can change users',7,'change_users'),(27,'Can delete users',7,'delete_users'),(28,'Can view users',7,'view_users'),(29,'Can add appointment cancellations',8,'add_appointmentcancellations'),(30,'Can change appointment cancellations',8,'change_appointmentcancellations'),(31,'Can delete appointment cancellations',8,'delete_appointmentcancellations'),(32,'Can view appointment cancellations',8,'view_appointmentcancellations'),(33,'Can add prescriptions assignments',9,'add_prescriptionsassignments'),(34,'Can change prescriptions assignments',9,'change_prescriptionsassignments'),(35,'Can delete prescriptions assignments',9,'delete_prescriptionsassignments'),(36,'Can view prescriptions assignments',9,'view_prescriptionsassignments'),(37,'Can add prescription cancellations',10,'add_prescriptioncancellations'),(38,'Can change prescription cancellations',10,'change_prescriptioncancellations'),(39,'Can delete prescription cancellations',10,'delete_prescriptioncancellations'),(40,'Can view prescription cancellations',10,'view_prescriptioncancellations'),(41,'Can add staffs',11,'add_staffs'),(42,'Can change staffs',11,'change_staffs'),(43,'Can delete staffs',11,'delete_staffs'),(44,'Can view staffs',11,'view_staffs'),(45,'Can add permission',12,'add_permission'),(46,'Can change permission',12,'change_permission'),(47,'Can delete permission',12,'delete_permission'),(48,'Can view permission',12,'view_permission'),(49,'Can add group',13,'add_group'),(50,'Can change group',13,'change_group'),(51,'Can delete group',13,'delete_group'),(52,'Can view group',13,'view_group'),(53,'Can add user',14,'add_user'),(54,'Can change user',14,'change_user'),(55,'Can delete user',14,'delete_user'),(56,'Can view user',14,'view_user'),(57,'Can add session',15,'add_session'),(58,'Can change session',15,'change_session'),(59,'Can delete session',15,'delete_session'),(60,'Can view session',15,'view_session'),(61,'Can add content type',16,'add_contenttype'),(62,'Can change content type',16,'change_contenttype'),(63,'Can delete content type',16,'delete_contenttype'),(64,'Can view content type',16,'view_contenttype'),(65,'Can add slots',17,'add_slots'),(66,'Can change slots',17,'change_slots'),(67,'Can delete slots',17,'delete_slots'),(68,'Can view slots',17,'view_slots'),(69,'Can add schedules',18,'add_schedules'),(70,'Can change schedules',18,'change_schedules'),(71,'Can delete schedules',18,'delete_schedules'),(72,'Can view schedules',18,'view_schedules'),(73,'Can add days',19,'add_days'),(74,'Can change days',19,'change_days'),(75,'Can delete days',19,'delete_days'),(76,'Can view days',19,'view_days'),(77,'Can add durations',20,'add_durations'),(78,'Can change durations',20,'change_durations'),(79,'Can delete durations',20,'delete_durations'),(80,'Can view durations',20,'view_durations');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `database_models_appointmentcancellations`
--

LOCK TABLES `database_models_appointmentcancellations` WRITE;
/*!40000 ALTER TABLE `database_models_appointmentcancellations` DISABLE KEYS */;
INSERT INTO `database_models_appointmentcancellations` VALUES (3,'doctor is on holiday',21,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `database_models_appointments`
--

LOCK TABLES `database_models_appointments` WRITE;
/*!40000 ALTER TABLE `database_models_appointments` DISABLE KEYS */;
INSERT INTO `database_models_appointments` VALUES (14,'2024-02-20','13:10:00.000000','13:30:00.000000',122.00,'cancelled','cancelled',0,2,2),(15,'2024-02-20','13:30:00.000000','14:00:00.000000',100.00,'cancelled','cancelled',0,2,2),(16,'2024-02-21','11:10:00.000000','11:40:00.000000',100.00,'completed','forwarded',1,1,1),(17,'2024-02-23','09:00:00.000000','09:30:00.000000',95.00,'cancelled','cancelled',0,1,1),(18,'2024-02-23','09:00:00.000000','09:30:00.000000',100.00,'cancelled','cancelled',1,2,2),(19,'2024-02-25','10:20:00.000000','10:40:00.000000',80.00,'cancelled','cancelled',1,2,3),(20,'2024-02-21','10:40:00.000000','11:10:00.000000',110.00,'completed','forwarded',1,2,3),(21,'2024-02-20','14:10:00.000000','14:20:00.000000',50.00,'cancelled','cancelled',0,1,1),(22,'2024-02-20','09:00:00.000000','09:30:00.000000',120.00,'completed','prescribed',1,1,1),(23,'2024-02-21','09:50:00.000000','10:10:00.000000',68.00,'completed','prescribed',0,1,1),(24,'2024-02-19','09:00:00.000000','09:30:00.000000',200.00,'completed','forwarded',1,1,2),(25,'2024-02-26','11:40:00.000000','12:00:00.000000',78.00,'completed','prescribed',1,1,2),(63,'2024-02-20','09:00:00.000000','09:30:00.000000',150.00,'cancelled','cancelled',1,1,2),(72,'2024-02-26','09:00:00.000000','09:30:00.000000',150.00,'cancelled','cancelled',1,1,1),(112,'2024-02-29','09:00:00.000000','09:20:00.000000',100.00,'cancelled','cancelled',0,2,2),(113,'2024-03-01','09:30:00.000000','10:00:00.000000',150.00,'cancelled','cancelled',0,2,1),(116,'2024-03-01','10:00:00.000000','10:20:00.000000',100.00,'cancelled','cancelled',1,1,1),(132,'2024-03-14','09:00:00.000000','09:30:00.000000',15.50,'completed','prescribed',1,2,1),(133,'2024-03-15','10:20:00.000000','10:30:00.000000',36.70,'completed','prescribed',1,2,1),(136,'2024-03-04','09:40:00.000000','10:00:00.000000',36.70,'cancelled','cancelled',0,1,3),(137,'2024-03-06','09:30:00.000000','09:50:00.000000',36.70,'cancelled','cancelled',0,1,1),(138,'2024-03-08','09:30:00.000000','10:00:00.000000',150.00,'cancelled','cancelled',1,1,1),(143,'2024-03-14','10:00:00.000000','10:20:00.000000',100.00,'cancelled','cancelled',1,1,1),(144,'2024-03-22','09:00:00.000000','09:30:00.000000',150.00,'cancelled','cancelled',1,1,1),(145,'2024-03-15','09:30:00.000000','10:00:00.000000',150.00,'cancelled','cancelled',1,1,1),(146,'2024-03-15','17:30:00.000000','17:50:00.000000',100.00,'cancelled','cancelled',1,1,1),(148,'2024-03-18','09:50:00.000000','10:20:00.000000',150.00,'cancelled','cancelled',1,1,1),(149,'2024-03-20','09:30:00.000000','09:50:00.000000',100.00,'cancelled','cancelled',1,1,1),(150,'2024-03-22','14:40:00.000000','14:50:00.000000',15.00,'cancelled','cancelled',1,1,3),(151,'2024-03-20','11:40:00.000000','12:00:00.000000',100.00,'cancelled','cancelled',1,1,1),(152,'2024-03-21','12:40:00.000000','12:50:00.000000',50.00,'cancelled','cancelled',1,1,2),(153,'2024-03-19','15:00:00.000000','15:20:00.000000',100.00,'cancelled','cancelled',1,1,2),(154,'2024-03-19','09:00:00.000000','09:30:00.000000',150.00,'cancelled','cancelled',1,1,1),(155,'2024-03-21','11:10:00.000000','11:40:00.000000',150.00,'cancelled','cancelled',1,1,2),(156,'2024-03-20','09:50:00.000000','10:10:00.000000',100.00,'cancelled','cancelled',1,1,2),(157,'2024-03-19','09:30:00.000000','10:00:00.000000',150.00,'cancelled','cancelled',1,1,2),(158,'2024-03-21','10:40:00.000000','11:10:00.000000',150.00,'cancelled','cancelled',1,1,2),(159,'2024-03-18','09:30:00.000000','09:50:00.000000',100.00,'cancelled','cancelled',1,1,1),(160,'2024-03-25','15:30:00.000000','15:50:00.000000',30.00,'cancelled','cancelled',1,1,3),(161,'2024-03-27','11:10:00.000000','11:40:00.000000',150.00,'cancelled','cancelled',1,1,1),(162,'2024-03-26','11:50:00.000000','12:20:00.000000',150.00,'cancelled','cancelled',1,1,1),(163,'2024-03-26','16:40:00.000000','16:50:00.000000',50.00,'cancelled','cancelled',1,1,1),(164,'2024-03-27','12:30:00.000000','12:40:00.000000',50.00,'cancelled','cancelled',0,4,2),(166,'2024-03-25','09:00:00.000000','09:30:00.000000',45.00,'cancelled','cancelled',1,1,3),(167,'2024-03-29','10:50:00.000000','11:10:00.000000',30.00,'cancelled','cancelled',1,1,3),(169,'2024-04-01','09:50:00.000000','10:20:00.000000',150.00,'upcoming','awaiting',1,1,1),(173,'2024-03-21','17:40:00.000000','18:00:00.000000',100.00,'cancelled','cancelled',1,1,2),(174,'2024-03-27','15:40:00.000000','16:10:00.000000',150.00,'cancelled','cancelled',1,1,1),(178,'2024-03-26','11:20:00.000000','11:50:00.000000',150.00,'cancelled','cancelled',1,1,2),(181,'2024-03-29','09:50:00.000000','10:20:00.000000',45.00,'cancelled','cancelled',1,1,3),(182,'2024-03-29','10:20:00.000000','10:30:00.000000',50.00,'cancelled','cancelled',0,4,1),(183,'2024-03-29','17:50:00.000000','18:00:00.000000',50.00,'cancelled','cancelled',1,1,1),(184,'2024-03-29','17:30:00.000000','17:50:00.000000',30.00,'cancelled','cancelled',0,4,3),(186,'2024-03-28','10:00:00.000000','10:20:00.000000',100.00,'cancelled','cancelled',1,1,2),(188,'2024-03-29','11:10:00.000000','11:40:00.000000',150.00,'cancelled','cancelled',1,1,1),(189,'2024-03-29','14:50:00.000000','15:10:00.000000',30.00,'cancelled','cancelled',1,1,3),(190,'2024-03-28','09:40:00.000000','10:00:00.000000',100.00,'cancelled','cancelled',1,1,2),(191,'2024-03-29','09:30:00.000000','10:00:00.000000',150.00,'cancelled','cancelled',1,3,1),(192,'2024-04-03','09:00:00.000000','09:30:00.000000',150.00,'upcoming','awaiting',1,3,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `database_models_cancellationtypes`
--

LOCK TABLES `database_models_cancellationtypes` WRITE;
/*!40000 ALTER TABLE `database_models_cancellationtypes` DISABLE KEYS */;
INSERT INTO `database_models_cancellationtypes` VALUES (1,'sick leave','doctor/nurse'),(2,'on holiday','doctor/nurse'),(3,'emergency','doctor/nurse'),(4,'incorrect prescription','doctor/nurse'),(5,'outdated prescription','doctor/nurse'),(6,'prescription cancelled (doctor/nurse)','doctor/nurse'),(7,'prescription cancelled (patient)','patient'),(8,'appointment cancelled (doctor/nurse)','patient'),(9,'appointment cancelled (patient)','patient');
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `database_models_patients`
--

LOCK TABLES `database_models_patients` WRITE;
/*!40000 ALTER TABLE `database_models_patients` DISABLE KEYS */;
INSERT INTO `database_models_patients` VALUES (1,'nhs',5),(2,'private',6),(3,'nhs',7),(4,'private',8),(5,'nhs',9),(6,'private',10),(7,'nhs',11),(15,'nhs',19),(16,'nhs',36),(17,'nhs',37);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `database_models_prescriptioncancellations`
--

LOCK TABLES `database_models_prescriptioncancellations` WRITE;
/*!40000 ALTER TABLE `database_models_prescriptioncancellations` DISABLE KEYS */;
INSERT INTO `database_models_prescriptioncancellations` VALUES (5,'wrong prescription was requested',4,20,2),(11,'this is test 1',5,54,2),(12,'this is test 1',5,46,2),(14,'this is test 1',5,53,2),(16,'this is test 1',5,49,2),(18,'this is test 1',5,57,2),(19,'this is test 1',5,57,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `database_models_prescriptions`
--

LOCK TABLES `database_models_prescriptions` WRITE;
/*!40000 ALTER TABLE `database_models_prescriptions` DISABLE KEYS */;
INSERT INTO `database_models_prescriptions` VALUES (1,'Acetaminophen','liquid',10.00),(2,'Adderall','tablets',15.00),(3,'Amitriptyline','capsules',20.25),(4,'Bzithromycin','drops',74.00),(5,'Amlodipine','inhalers',87.50),(6,'Paracetamol','Tablets',10.50);
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
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `database_models_prescriptionsassignments`
--

LOCK TABLES `database_models_prescriptionsassignments` WRITE;
/*!40000 ALTER TABLE `database_models_prescriptionsassignments` DISABLE KEYS */;
INSERT INTO `database_models_prescriptionsassignments` VALUES (19,20.00,'approved','2024-02-20',2,'collected',2,22,1),(20,30.00,'request denied',NULL,1,'cancelled',0,23,2),(21,50.00,'approved','2024-02-20',3,'collected',2,25,3),(22,70.00,'approved','2024-02-21',1,'collected',2,25,4),(45,20.00,'approved','2024-02-25',2,'collected',2,22,1),(46,45.00,'request denied',NULL,1,'cancelled',0,23,2),(47,5.50,'approved','2024-02-21',10,'collected',2,25,3),(49,262.50,'approved','2024-03-26',18,'collected',2,23,5),(50,1000.00,'approved','2024-02-25',50,'collected',2,22,3),(53,222.00,'requested',NULL,17,'awaiting decision',2,25,4),(54,30.00,'requested',NULL,0,'awaiting decision',2,22,6),(55,12.00,'approved','2024-03-15',5,'waiting to collect',1,132,3),(56,21.00,'approved','2024-03-16',6,'waiting to collect',0,133,4),(57,-1.00,'request denied',NULL,0,'cancelled',0,23,6),(73,-1.00,'approved','2024-03-16',0,'waiting to collect',2,22,3);
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
  PRIMARY KEY (`staff_rate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `database_models_staffrates`
--

LOCK TABLES `database_models_staffrates` WRITE;
/*!40000 ALTER TABLE `database_models_staffrates` DISABLE KEYS */;
INSERT INTO `database_models_staffrates` VALUES (1,'doctor',300.00),(2,'nurse',90.00),(3,'admin',250.00);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `database_models_staffs`
--

LOCK TABLES `database_models_staffs` WRITE;
/*!40000 ALTER TABLE `database_models_staffs` DISABLE KEYS */;
INSERT INTO `database_models_staffs` VALUES (1,'full',1,1,1,1,1,1,2),(2,'part',0,1,1,1,0,1,3),(3,'part',1,0,0,0,1,2,4),(4,'full',1,1,1,1,1,3,1);
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
  `gender` varchar(10) NOT NULL,
  `date_of_birth` date NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  `postcode` varchar(15) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `database_models_users`
--

LOCK TABLES `database_models_users` WRITE;
/*!40000 ALTER TABLE `database_models_users` DISABLE KEYS */;
INSERT INTO `database_models_users` VALUES (1,'Bishwajit Sonar','admin','bish','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3','m','2001-01-01','bishu@gmail.com','07786225261','123 Bish Street','BS1 3AB'),(2,'Edgaras Levinskas','doctor','edgar','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3','m','2002-01-01','edgar@gmail.com','07783256234','321 Eddy Street','ED1 1LL'),(3,'Ali Suhail','doctor','ali','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3','m','2003-01-01','ali@gmail.com','08873552732','369 Ali Street','AS1 1AS'),(4,'Yie Nian Chu','nurse','chu','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3','m','2000-01-20','chu@yahoo.com','08364273274','798 Nian Street','YN1 8CC'),(5,'John Smith','patient','john','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3','m','1981-07-09','john.smith@test.com','01463783379','81 High St, Tunbridge Wells','WA14 2EB'),(6,'Daniella Lin','patient','dani','1032a3d88cf0780f85c51dc72683b29386fcec732b95257a2e8dec4e7f49c234','f','1989-01-11','dan.123@yahoo.com','01463783379','3 Carlisle Rd, Eastbourne','BS11 9HF'),(7,'Loui Faulkner','patient','loui','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3','m','2001-02-11','l.faul@tweet.com','020 7720 0211','14 Bath St, Hale','WA14 2ED'),(8,'Shirley Scott','patient','shir','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3','f','1947-08-14','scottthewanker@yahoo.com','01202 262753','Poole Rd, Poole','BH17 7BH'),(9,'Bishu Radar','patient','radar','d030190f8172953499d8c50ad5208ad6ba7f3e7d7092eb989375c1fdac3c33db','m','2024-02-28','bishu@wajit.com','12345678910','Bishu Street, Bish','SN1 1NS'),(10,'Ben Dover','patient','ben','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3','m','2024-02-28','bendover@mail.com','07765446432','Ben Street','BS1 7HA'),(11,'test user','patient','asjkhd','e166bc57e47b8f34a4bcc69a16f454462bf17ca2d7bcba52cd139549d923c129','m','2024-02-28','asdasd@gjknas.com','12345678910','AKJHSDKJAS','BSkASDJIH'),(13,'asdasd','patient','edasdadss','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3','m','2024-02-29','edgar@gmail.com','12345678910','asdasd','sadasdsad'),(19,'eddy','patient','ali1234','4198a2a76b4ac43cd9f4c0c081d4441f21f44d7b98fa48017e911ae42345be92','m','2024-03-01','ali@gmail.com','22222222222','dsdsadsadas','bs133'),(36,'testyy here','patient','testy12','6d987a391d90fc2451751b2bb85890fc6e452bc057f39a85d8d1fd552f965fb2','m','1988-03-01','tessty@gmail.com','01234567891','123 test street','BS12 A23'),(37,'Daniel','patient','Testtest','dab06cc5a93974c94ad489c6431e118f0d1cace85c4eca7d38e19ae46faebde3','m','2024-03-06','edgar@gmail.com','12345678910','Address Line 1','asd');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (13,'auth','group'),(12,'auth','permission'),(14,'auth','user'),(16,'contenttypes','contenttype'),(1,'database_models','admins'),(8,'database_models','appointmentcancellations'),(2,'database_models','appointments'),(3,'database_models','cancellationtypes'),(19,'database_models','days'),(20,'database_models','durations'),(4,'database_models','patients'),(10,'database_models','prescriptioncancellations'),(5,'database_models','prescriptions'),(9,'database_models','prescriptionsassignments'),(18,'database_models','schedules'),(17,'database_models','slots'),(6,'database_models','staffrates'),(11,'database_models','staffs'),(7,'database_models','users'),(15,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-02-27 22:25:31.360012'),(2,'contenttypes','0002_remove_content_type_name','2024-02-27 22:25:31.851012'),(3,'auth','0001_initial','2024-02-27 22:25:34.143034'),(4,'auth','0002_alter_permission_name_max_length','2024-02-27 22:25:34.338032'),(5,'auth','0003_alter_user_email_max_length','2024-02-27 22:25:34.515069'),(6,'auth','0004_alter_user_username_opts','2024-02-27 22:25:34.609129'),(7,'auth','0005_alter_user_last_login_null','2024-02-27 22:25:34.813612'),(8,'auth','0006_require_contenttypes_0002','2024-02-27 22:25:34.890631'),(9,'auth','0007_alter_validators_add_error_messages','2024-02-27 22:25:34.974613'),(10,'auth','0008_alter_user_username_max_length','2024-02-27 22:25:35.174621'),(11,'auth','0009_alter_user_last_name_max_length','2024-02-27 22:25:35.369605'),(12,'auth','0010_alter_group_name_max_length','2024-02-27 22:25:35.541135'),(13,'auth','0011_update_proxy_permissions','2024-02-27 22:25:35.870988'),(14,'auth','0012_alter_user_first_name_max_length','2024-02-27 22:25:36.095141'),(15,'database_models','0001_initial','2024-02-27 22:25:39.541315'),(16,'sessions','0001_initial','2024-02-27 22:25:39.874744'),(17,'database_models','0002_delete_admins','2024-02-27 22:31:21.478661'),(18,'database_models','0003_alter_prescriptionsassignments_prescription_payment_status','2024-03-04 23:23:24.475152'),(19,'database_models','0004_schedules_slots','2024-03-05 13:39:21.509056'),(20,'database_models','0005_remove_schedules_staff','2024-03-05 13:52:19.707107'),(21,'database_models','0006_alter_slots_duration','2024-03-05 14:07:42.306199'),(22,'database_models','0004_days_durations_schedules_slots','2024-03-07 13:42:38.066684'),(23,'database_models','0005_schedules_staff','2024-03-07 13:43:09.782125'),(24,'database_models','0006_alter_durations_duration','2024-03-07 14:01:18.773562'),(25,'database_models','0007_alter_slots_duration','2024-03-07 14:06:06.443687'),(26,'database_models','0008_rename_duration_durations_duration_length','2024-03-07 14:26:25.497945'),(27,'database_models','0009_alter_slots_schedule','2024-03-07 15:12:59.809023'),(28,'database_models','0010_remove_schedules_staff_schedules_role_and_more','2024-03-08 17:31:07.709380'),(29,'database_models','0011_prescriptioncancellations_staff_id','2024-03-12 00:55:48.939583');
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
INSERT INTO `django_session` VALUES ('160qkha17ntucc66tcgurhbrvz00pw43','.eJwtj8FuwjAQRH_F2nNAMaEk5EQrVap6pRLHyIkX7Cq2kdc5VIh_7y5wnLcz4_ENFsI8WFMM9Len8Bb6twqiCQg9fCcX1TH44qCCnGZhV1M8xsJAAi_jLxuZcBUO6TyMPnOkB73v9KpuV_Wej8bajESMO62-_MWpY6nUzxLH7O0F1Qnnmdh3TVSmZKX29K63avP5IdSliENcwoiZL7Xe7pq2a5pWqjEYP79mrEn2HgpSWU8pSPS5-PE3LfIviKS05EleiY7gfv8HmvFWiA:1rqhlM:qhAKRwm900GjathcKCO7ZQ1utUviD-S5oblgN3VY6nI','2024-03-30 23:05:29.229060'),('38482brqlmjyij08gl9anjal3nnfyuh8','.eJw1j80OgjAQhF-F9KymLSqGkwe5cfMBmoVdfiJQ0xYTQ3h3t6jJXma-2Z3sImZPziAEEPnyFT2KXO_EBCOJXBTYggOflPTqJ_8AL3bC2SEitHWwjnVc-8Upxtnii2RsY6rehY59LaXeS8XDEBAdec92qlVSIL6Te3BEgdnT-lBb3KpvKlFlGc3OTmSmeazIMZBZdkn16azTI0MaoR_-1dc2qkNtRyY-QNNs_6h1_QDLw0n_:1rqhnK:kxjNqRbKzJ6WIK2p5_O_NdPP79qciAC_j5ntGuZ9Bgo','2024-03-30 23:22:26.548209'),('44llbzoiyqwpy6kvr14z1zbyxmagtin3','.eJwtj0EOgyAQRa9CWNtGsNXGVesVPAAZZaw0BRrAdGG8ewdrMpv_38z_mZUvEYPSkIC3618YzVtRcAcWecs7E-cvvExivXcQeMGDf2cA2hpHMt8cuwPtkkNpqPykBhPSTLYsS3HahyBoHTBGsoWsWE5nfQqIidjHxzR6vdf2glWPLpuzd6jcYgcMBMqmudVSXmWd09CCeR_Ny_2Z1Xn0lkhMME37L5dt-wFjSEhy:1rqgR4:RzLXxhI7uRtCzNHGxCKk6K0D27QLAgIBqEVf8nOC47Y','2024-03-30 21:55:22.542726'),('60lj9vbefdniikrkclbv6kyjau1rdry3','.eJw1j80OgjAQhF-F9KymLSqGkwe5cfMBmoVdfiJQ0xYTQ3h3t6jJXma-2Z3sImZPziAEEPnyFT2KXO_EBCOJXBTYggOflPTqJ_8AL3bC2SEitHWwjnVc-8Upxtnii2RsY6rehY59LaXeS8XDEBAdec92qlVSIL6Te3BEgdnT-lBb3KpvKlFlGc3OTmSmeazIMZBZdkn16azTI0MaoR_-1dc2qkNtRyY-QNNs_6h1_QDLw0n_:1rqfZ4:nC6INo5wEgkEvDEXU8PSUxZKDmu6ZlGYyiFTDoMDWb4','2024-03-30 20:59:34.835077'),('71mxycj894gchd9b7hyy9hcbwae7vpzz','.eJwtj8FuwjAQRH_F2nNAMaEk5EQrVap6pRLHyIkX7Cq2kdc5VIh_7y5wnLcz4_ENFsI8WFMM9Len8Bb6twqiCQg9fCcX1TH44qCCnGZhV1M8xsJAAi_jLxuZcBUO6TyMPnOkB73v9KpuV_Wej8bajESMO62-_MWpY6nUzxLH7O0F1Qnnmdh3TVSmZKX29K63avP5IdSliENcwoiZL7Xe7pq2a5pWqjEYP79mrEn2HgpSWU8pSPS5-PE3LfIviKS05EleiY7gfv8HmvFWiA:1rqZYQ:AwoYS0q3MovoNEpM8Bwa1yCk222G-ucShM7zgYuIipo','2024-03-30 14:34:30.772844'),('dgi26dnoybqrlrv3awswvic3zn38ba6d','.eJwtj0EOgyAQRa9CWNtGsNXGVesVPAAZZaw0BRrAdGG8ewdrMpv_38z_mZUvEYPSkIC3618YzVtRcAcWecs7E-cvvExivXcQeMGDf2cA2hpHMt8cuwPtkkNpqPykBhPSTLYsS3HahyBoHTBGsoWsWE5nfQqIidjHxzR6vdf2glWPLpuzd6jcYgcMBMqmudVSXmWd09CCeR_Ny_2Z1Xn0lkhMME37L5dt-wFjSEhy:1rqfxu:HfFm_KAzY5W2d1Z4NZO7d62D6CB-u0mfsFWRXu8V2HI','2024-03-30 21:25:14.884032'),('iqp3d3lsgukgjg5wrovl3gth529ff7ob','.eJwtj8FuwjAQRH_F2nNAMaEk5EQrVap6pRLHyIkX7Cq2kdc5VIh_7y5wnLcz4_ENFsI8WFMM9Len8Bb6twqiCQg9fCcX1TH44qCCnGZhV1M8xsJAAi_jLxuZcBUO6TyMPnOkB73v9KpuV_Wej8bajESMO62-_MWpY6nUzxLH7O0F1Qnnmdh3TVSmZKX29K63avP5IdSliENcwoiZL7Xe7pq2a5pWqjEYP79mrEn2HgpSWU8pSPS5-PE3LfIviKS05EleiY7gfv8HmvFWiA:1rqeiz:avcYdzM8UmjIzZmMtDWSvAnkFc4CIu3MnFN6BynD-sI','2024-03-30 20:05:45.347481'),('mxgxlr5ilh0vyt43ekisi5sjbnlofe3n','.eJwtj8FuwjAQRH_F2nNAMaEk5EQrVap6pRLHyIkX7Cq2kdc5VIh_7y5wnLcz4_ENFsI8WFMM9Len8Bb6twqiCQg9fCcX1TH44qCCnGZhV1M8xsJAAi_jLxuZcBUO6TyMPnOkB73v9KpuV_Wej8bajESMO62-_MWpY6nUzxLH7O0F1Qnnmdh3TVSmZKX29K63avP5IdSliENcwoiZL7Xe7pq2a5pWqjEYP79mrEn2HgpSWU8pSPS5-PE3LfIviKS05EleiY7gfv8HmvFWiA:1rqZzA:FuAXMf35zc2h3VxpPf4aLXBcHWrX7PlZ1KQneLU9opU','2024-03-30 15:02:08.562295'),('njoxn25q8xdmptnojptkuhehe7eo3igc','.eJwtj8FuwjAQRH_F2nNAMaEk5EQrVap6pRLHyIkX7Cq2kdc5VIh_7y5wnLcz4_ENFsI8WFMM9Len8Bb6twqiCQg9fCcX1TH44qCCnGZhV1M8xsJAAi_jLxuZcBUO6TyMPnOkB73v9KpuV_Wej8bajESMO62-_MWpY6nUzxLH7O0F1Qnnmdh3TVSmZKX29K63avP5IdSliENcwoiZL7Xe7pq2a5pWqjEYP79mrEn2HgpSWU8pSPS5-PE3LfIviKS05EleiY7gfv8HmvFWiA:1rqhkh:bsho7OqSamdtEwdPmdIUpmOcxw4k3A7RUoYnLJhcDic','2024-03-30 23:04:48.394651'),('qp3pr36cfke20tcbonch992g1k2gsil5','.eJw1j80OgjAQhF-F9KymLSqGkwe5cfMBmoVdfiJQ0xYTQ3h3t6jJXma-2Z3sImZPziAEEPnyFT2KXO_EBCOJXBTYggOflPTqJ_8AL3bC2SEitHWwjnVc-8Upxtnii2RsY6rehY59LaXeS8XDEBAdec92qlVSIL6Te3BEgdnT-lBb3KpvKlFlGc3OTmSmeazIMZBZdkn16azTI0MaoR_-1dc2qkNtRyY-QNNs_6h1_QDLw0n_:1rqgZN:IZpAC7pBvIgWGVnVX4WuTmSMEdNz52-YJVJmCCVymdg','2024-03-30 22:03:57.521180'),('rv46ist4693tlrgi4zwf9euo3niqqrt4','.eJwtj0EOgyAQRa9CWNtGsNXGVesVPAAZZaw0BRrAdGG8ewdrMpv_38z_mZUvEYPSkIC3618YzVtRcAcWecs7E-cvvExivXcQeMGDf2cA2hpHMt8cuwPtkkNpqPykBhPSTLYsS3HahyBoHTBGsoWsWE5nfQqIidjHxzR6vdf2glWPLpuzd6jcYgcMBMqmudVSXmWd09CCeR_Ny_2Z1Xn0lkhMME37L5dt-wFjSEhy:1rqck7:AZ-0OZcAbyLeDXjC1H_bx_iM-QBEza4DW7ZJO_ClU2U','2024-03-30 17:58:47.857270'),('tdbtqjnx7u53167sreoq49xz9uk7k6vi','.eJwtj8FuwjAQRH_F2nNAMaEk5EQrVap6pRLHyIkX7Cq2kdc5VIh_7y5wnLcz4_ENFsI8WFMM9Len8Bb6twqiCQg9fCcX1TH44qCCnGZhV1M8xsJAAi_jLxuZcBUO6TyMPnOkB73v9KpuV_Wej8bajESMO62-_MWpY6nUzxLH7O0F1Qnnmdh3TVSmZKX29K63avP5IdSliENcwoiZL7Xe7pq2a5pWqjEYP79mrEn2HgpSWU8pSPS5-PE3LfIviKS05EleiY7gfv8HmvFWiA:1rqccm:AxyjmKFIaEJblVB_0wcNrrXKmiUd368XnKIzD_Osua8','2024-03-30 17:51:12.484918'),('tikaqg7g8jrlv1w548zy2juenkpdkm9m','.eJwtj8FuwjAQRH_F2nNAMaEk5EQrVap6pRLHyIkX7Cq2kdc5VIh_7y5wnLcz4_ENFsI8WFMM9Len8Bb6twqiCQg9fCcX1TH44qCCnGZhV1M8xsJAAi_jLxuZcBUO6TyMPnOkB73v9KpuV_Wej8bajESMO62-_MWpY6nUzxLH7O0F1Qnnmdh3TVSmZKX29K63avP5IdSliENcwoiZL7Xe7pq2a5pWqjEYP79mrEn2HgpSWU8pSPS5-PE3LfIviKS05EleiY7gfv8HmvFWiA:1rqhjq:7SfPhUSBYHfzmhYzBG0a2BUHcQ4eNFBS1TQ7aGtS854','2024-03-30 23:03:55.192783'),('yfkj1gy4gubto6pc880tm196be2ovlp0','.eJwtj0EOgyAQRa9CWNtGsNXGVesVPAAZZaw0BRrAdGG8ewdrMpv_38z_mZUvEYPSkIC3618YzVtRcAcWecs7E-cvvExivXcQeMGDf2cA2hpHMt8cuwPtkkNpqPykBhPSTLYsS3HahyBoHTBGsoWsWE5nfQqIidjHxzR6vdf2glWPLpuzd6jcYgcMBMqmudVSXmWd09CCeR_Ny_2Z1Xn0lkhMME37L5dt-wFjSEhy:1rqhzm:dA3jB4CSUhtoa8nMHizdgSZ3X6_8DxopXxQcTnD4wRY','2024-03-30 23:35:18.118828'),('yon8mvqjfq2zxt8crroi1fa1ns850rsb','.eJwtj0EOgyAQRa9CWNtGsNXGVesVPAAZZaw0BRrAdGG8ewdrMpv_38z_mZUvEYPSkIC3618YzVtRcAcWecs7E-cvvExivXcQeMGDf2cA2hpHMt8cuwPtkkNpqPykBhPSTLYsS3HahyBoHTBGsoWsWE5nfQqIidjHxzR6vdf2glWPLpuzd6jcYgcMBMqmudVSXmWd09CCeR_Ny_2Z1Xn0lkhMME37L5dt-wFjSEhy:1rqedt:XY0JcPmsasNMCRlGe7BoHUkV_8jP734raMs2D6t8qCY','2024-03-30 20:00:29.998243'),('zsvkvxx2p7xdf27v2e925ljosmxwxtiv','.eJw1j80OgjAQhF-F9KymLSqGkwe5cfMBmoVdfiJQ0xYTQ3h3t6jJXma-2Z3sImZPziAEEPnyFT2KXO_EBCOJXBTYggOflPTqJ_8AL3bC2SEitHWwjnVc-8Upxtnii2RsY6rehY59LaXeS8XDEBAdec92qlVSIL6Te3BEgdnT-lBb3KpvKlFlGc3OTmSmeazIMZBZdkn16azTI0MaoR_-1dc2qkNtRyY-QNNs_6h1_QDLw0n_:1rqi1t:kPkW4l-94WMvRFsvqfsaNZbhVhyWTVqeR3jIkHHG_jQ','2024-03-30 23:37:29.235798');
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

-- Dump completed on 2024-03-31  2:23:59
