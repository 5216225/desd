-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 62.80.229.10    Database: TEST_DB
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add admins',1,'add_admins'),(2,'Can change admins',1,'change_admins'),(3,'Can delete admins',1,'delete_admins'),(4,'Can view admins',1,'view_admins'),(5,'Can add appointments',2,'add_appointments'),(6,'Can change appointments',2,'change_appointments'),(7,'Can delete appointments',2,'delete_appointments'),(8,'Can view appointments',2,'view_appointments'),(9,'Can add cancellation types',3,'add_cancellationtypes'),(10,'Can change cancellation types',3,'change_cancellationtypes'),(11,'Can delete cancellation types',3,'delete_cancellationtypes'),(12,'Can view cancellation types',3,'view_cancellationtypes'),(13,'Can add patients',4,'add_patients'),(14,'Can change patients',4,'change_patients'),(15,'Can delete patients',4,'delete_patients'),(16,'Can view patients',4,'view_patients'),(17,'Can add prescriptions',5,'add_prescriptions'),(18,'Can change prescriptions',5,'change_prescriptions'),(19,'Can delete prescriptions',5,'delete_prescriptions'),(20,'Can view prescriptions',5,'view_prescriptions'),(21,'Can add staff rates',6,'add_staffrates'),(22,'Can change staff rates',6,'change_staffrates'),(23,'Can delete staff rates',6,'delete_staffrates'),(24,'Can view staff rates',6,'view_staffrates'),(25,'Can add appointment cancellations',7,'add_appointmentcancellations'),(26,'Can change appointment cancellations',7,'change_appointmentcancellations'),(27,'Can delete appointment cancellations',7,'delete_appointmentcancellations'),(28,'Can view appointment cancellations',7,'view_appointmentcancellations'),(29,'Can add prescription cancellations',8,'add_prescriptioncancellations'),(30,'Can change prescription cancellations',8,'change_prescriptioncancellations'),(31,'Can delete prescription cancellations',8,'delete_prescriptioncancellations'),(32,'Can view prescription cancellations',8,'view_prescriptioncancellations'),(33,'Can add staffs',9,'add_staffs'),(34,'Can change staffs',9,'change_staffs'),(35,'Can delete staffs',9,'delete_staffs'),(36,'Can view staffs',9,'view_staffs'),(37,'Can add prescriptions assignments',10,'add_prescriptionsassignments'),(38,'Can change prescriptions assignments',10,'change_prescriptionsassignments'),(39,'Can delete prescriptions assignments',10,'delete_prescriptionsassignments'),(40,'Can view prescriptions assignments',10,'view_prescriptionsassignments'),(41,'Can add permission',13,'add_permission'),(42,'Can change permission',13,'change_permission'),(43,'Can delete permission',13,'delete_permission'),(44,'Can view permission',13,'view_permission'),(45,'Can add group',14,'add_group'),(46,'Can change group',14,'change_group'),(47,'Can delete group',14,'delete_group'),(48,'Can view group',14,'view_group'),(49,'Can add user',15,'add_user'),(50,'Can change user',15,'change_user'),(51,'Can delete user',15,'delete_user'),(52,'Can view user',15,'view_user'),(53,'Can add content type',11,'add_contenttype'),(54,'Can change content type',11,'change_contenttype'),(55,'Can delete content type',11,'delete_contenttype'),(56,'Can view content type',11,'view_contenttype'),(57,'Can add session',12,'add_session'),(58,'Can change session',12,'change_session'),(59,'Can delete session',12,'delete_session'),(60,'Can view session',12,'view_session');
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
-- Table structure for table `database_models_admins`
--

DROP TABLE IF EXISTS `database_models_admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `database_models_admins` (
  `admin_id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `database_models_admins`
--

LOCK TABLES `database_models_admins` WRITE;
/*!40000 ALTER TABLE `database_models_admins` DISABLE KEYS */;
INSERT INTO `database_models_admins` VALUES (1,'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3','bish','Bishwajit Sonar');
/*!40000 ALTER TABLE `database_models_admins` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `database_models_appointments`
--

LOCK TABLES `database_models_appointments` WRITE;
/*!40000 ALTER TABLE `database_models_appointments` DISABLE KEYS */;
INSERT INTO `database_models_appointments` VALUES (14,'2024-02-20','13:10:00.000000','13:30:00.000000',122.00,'upcoming','awaiting',0,2,2),(15,'2024-02-20','13:30:00.000000','14:00:00.000000',100.00,'upcoming','awaiting',0,2,2),(16,'2024-02-21','11:10:00.000000','11:40:00.000000',100.00,'completed','forwarded',1,1,1),(17,'2024-02-23','09:00:00.000000','09:30:00.000000',95.00,'upcoming','awaiting',0,1,1),(18,'2024-02-23','09:00:00.000000','09:30:00.000000',100.00,'upcoming','awaiting',1,2,2),(19,'2024-02-25','10:20:00.000000','10:40:00.000000',80.00,'upcoming','awaiting',1,2,3),(20,'2024-02-21','10:40:00.000000','11:10:00.000000',110.00,'completed','forwarded',1,2,3),(21,'2024-02-20','14:10:00.000000','14:20:00.000000',50.00,'cancelled','cancelled',0,1,1),(22,'2024-02-20','09:00:00.000000','09:30:00.000000',120.00,'completed','prescribed',1,1,1),(23,'2024-02-21','09:50:00.000000','10:10:00.000000',68.00,'completed','prescribed',0,1,1),(24,'2024-02-19','09:00:00.000000','09:30:00.000000',200.00,'completed','forwarded',1,1,2),(25,'2024-02-26','11:40:00.000000','12:00:00.000000',78.00,'completed','prescribed',1,1,2);
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
INSERT INTO `database_models_cancellationtypes` VALUES (1,'sick leave','doctor/nurse'),(2,'on holiday','doctor/nurse'),(3,'emergency','doctor/nurse'),(4,'incorrect prescription','doctor/nurse'),(5,'outdated prescription','doctor/nurse'),(6,'prescription cancelled (doctor/nurse)','doctor/nurse'),(7,'prescription cancelled (patient)','patient'),(8,'appointment cancelled (doctor/nurse)','doctor/nurse'),(9,'appointment cancelled (patient)','patient');
/*!40000 ALTER TABLE `database_models_cancellationtypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `database_models_patients`
--

DROP TABLE IF EXISTS `database_models_patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `database_models_patients` (
  `patient_id` int NOT NULL AUTO_INCREMENT,
  `patient_name` varchar(150) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `date_of_birth` date NOT NULL,
  `address` varchar(200) NOT NULL,
  `postcode` varchar(15) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `email` varchar(200) NOT NULL,
  `payment_source` varchar(50) NOT NULL,
  PRIMARY KEY (`patient_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `database_models_patients`
--

LOCK TABLES `database_models_patients` WRITE;
/*!40000 ALTER TABLE `database_models_patients` DISABLE KEYS */;
INSERT INTO `database_models_patients` VALUES (1,'John Smith','john','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3','1947-08-14','81 High St, Tunbridge Wells','WA14 2ED','01463 783379','john.smith@test.com','nhs'),(2,'Daniella Lin','dan','123','1989-01-11','3 Carlisle Rd, Eastbourne','','01252 400400','dan.123@yahoo.com','private'),(3,'Roman Dotson','rom','Rom@2024UWE','2003-07-23','102 Goring Way, Worthing','BN12 4TY','01463 783379','roman.d43@gmail.com','nhs'),(4,'Gail Salinas','gail','123','2002-04-10','81 High St, Tunbridge Wells','TNI 1YB','01460 259999','sal.gail@gamil.com','private'),(5,'Loui Faulkner','loui','123','2001-02-11','14 Bath St, Hale','WA14 2ED','020 7720 0211','l.faul@tweet.com','nhs'),(6,'Shirley Scott','shir','123','1947-08-14','Poole Rd, Poole','BH17 7BH','01202 262753','scottthewanker@yahoo.com','private');
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
  PRIMARY KEY (`prescription_cancellation_id`),
  KEY `database_models_pres_cancellation_type_id_90fc0445_fk_database_` (`cancellation_type_id`),
  KEY `database_models_pres_prescription_assignm_a9238b9a_fk_database_` (`prescription_assignment_id`),
  CONSTRAINT `database_models_pres_cancellation_type_id_90fc0445_fk_database_` FOREIGN KEY (`cancellation_type_id`) REFERENCES `database_models_cancellationtypes` (`cancellation_type_id`),
  CONSTRAINT `database_models_pres_prescription_assignm_a9238b9a_fk_database_` FOREIGN KEY (`prescription_assignment_id`) REFERENCES `database_models_prescriptionsassignments` (`prescription_assignment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `database_models_prescriptioncancellations`
--

LOCK TABLES `database_models_prescriptioncancellations` WRITE;
/*!40000 ALTER TABLE `database_models_prescriptioncancellations` DISABLE KEYS */;
INSERT INTO `database_models_prescriptioncancellations` VALUES (5,'wrong prescription was requested',4,20);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `database_models_prescriptions`
--

LOCK TABLES `database_models_prescriptions` WRITE;
/*!40000 ALTER TABLE `database_models_prescriptions` DISABLE KEYS */;
INSERT INTO `database_models_prescriptions` VALUES (1,'Acetaminophen','liquid',10.00),(2,'Adderall','tablet',15.00),(3,'Amitriptyline','capsules',20.25),(4,'Bzithromycin','drops',74.00),(5,'Amlodipine','inhalers',87.50);
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
  `prescription_payment_status` tinyint(1) NOT NULL,
  `appointment_id` int NOT NULL,
  `prescription_id` int NOT NULL,
  PRIMARY KEY (`prescription_assignment_id`),
  KEY `database_models_pres_appointment_id_6af78175_fk_database_` (`appointment_id`),
  KEY `database_models_pres_prescription_id_4c1c38dd_fk_database_` (`prescription_id`),
  CONSTRAINT `database_models_pres_appointment_id_6af78175_fk_database_` FOREIGN KEY (`appointment_id`) REFERENCES `database_models_appointments` (`appointment_id`),
  CONSTRAINT `database_models_pres_prescription_id_4c1c38dd_fk_database_` FOREIGN KEY (`prescription_id`) REFERENCES `database_models_prescriptions` (`prescription_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `database_models_prescriptionsassignments`
--

LOCK TABLES `database_models_prescriptionsassignments` WRITE;
/*!40000 ALTER TABLE `database_models_prescriptionsassignments` DISABLE KEYS */;
INSERT INTO `database_models_prescriptionsassignments` VALUES (19,20.00,'approved','2024-02-20',2,'collected',1,22,1),(20,30.00,'request denied',NULL,1,'cancelled',0,23,2),(21,50.00,'requested',NULL,3,'awaiting decision',0,25,3),(22,70.00,'approved','2024-02-21',1,'not collected',0,25,4),(23,9.50,'approved','2024-02-21',5,'not collected',1,23,5),(37,20.00,'requested',NULL,2,'awaiting decision',0,22,1);
/*!40000 ALTER TABLE `database_models_prescriptionsassignments` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `database_models_staffrates`
--

LOCK TABLES `database_models_staffrates` WRITE;
/*!40000 ALTER TABLE `database_models_staffrates` DISABLE KEYS */;
INSERT INTO `database_models_staffrates` VALUES (1,'doctor',300.00),(2,'nurse',90.00);
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
  `name` varchar(150) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(50) NOT NULL,
  `hour_type` varchar(50) NOT NULL,
  `monday` tinyint(1) NOT NULL,
  `tuesday` tinyint(1) NOT NULL,
  `wednesday` tinyint(1) NOT NULL,
  `thrusday` tinyint(1) NOT NULL,
  `friday` tinyint(1) NOT NULL,
  `staff_rate_id` int NOT NULL,
  PRIMARY KEY (`staff_id`),
  KEY `database_models_staf_staff_rate_id_27c0863d_fk_database_` (`staff_rate_id`),
  CONSTRAINT `database_models_staf_staff_rate_id_27c0863d_fk_database_` FOREIGN KEY (`staff_rate_id`) REFERENCES `database_models_staffrates` (`staff_rate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `database_models_staffs`
--

LOCK TABLES `database_models_staffs` WRITE;
/*!40000 ALTER TABLE `database_models_staffs` DISABLE KEYS */;
INSERT INTO `database_models_staffs` VALUES (1,'Edgaras Levinskas','edgar','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3','doctor','full',1,1,1,1,1,1),(2,'Ali Suhail','ali','321','doctor','part',1,0,0,0,1,1),(3,'Yie Nian Chu','chu','abc','nurse','part',1,0,0,0,1,2);
/*!40000 ALTER TABLE `database_models_staffs` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (14,'auth','group'),(13,'auth','permission'),(15,'auth','user'),(11,'contenttypes','contenttype'),(1,'database_models','admins'),(7,'database_models','appointmentcancellations'),(2,'database_models','appointments'),(3,'database_models','cancellationtypes'),(4,'database_models','patients'),(8,'database_models','prescriptioncancellations'),(5,'database_models','prescriptions'),(10,'database_models','prescriptionsassignments'),(6,'database_models','staffrates'),(9,'database_models','staffs'),(12,'sessions','session');
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
INSERT INTO `django_migrations` VALUES (5,'database_models','0001_initial','2024-02-14 21:03:48.817295'),(6,'database_models','0002_alter_prescriptionsassignements_issued_date_and_more','2024-02-14 21:53:00.088126'),(7,'database_models','0003_rename_prescriptionsassignements_prescriptionsassignments','2024-02-16 18:35:56.686934'),(8,'database_models','0004_admins_username','2024-02-17 02:29:12.022097'),(9,'database_models','0005_rename_prescription_canellation_id_prescriptioncancellations_prescription_cancellation_id','2024-02-19 00:42:48.062352'),(10,'sessions','0001_initial','2024-02-19 02:57:49.960739'),(11,'database_models','0006_alter_admins_password_alter_staffs_password','2024-02-19 17:05:05.265440'),(12,'database_models','0007_alter_patients_password','2024-02-19 17:35:54.391122'),(13,'contenttypes','0001_initial','2024-02-19 22:19:25.208422'),(14,'contenttypes','0002_remove_content_type_name','2024-02-19 22:19:25.635064'),(15,'database_models','0008_admins_name','2024-02-19 22:32:05.573111'),(16,'database_models','0009_rename_precription_cost_prescriptions_prescription_cost','2024-02-19 23:02:41.793899'),(17,'database_models','0010_alter_prescriptionsassignments_collection_status_and_more','2024-02-21 14:47:03.492944'),(18,'auth','0001_initial','2024-02-21 16:57:50.948427'),(19,'auth','0002_alter_permission_name_max_length','2024-02-21 16:57:51.132245'),(20,'auth','0003_alter_user_email_max_length','2024-02-21 16:57:51.291248'),(21,'auth','0004_alter_user_username_opts','2024-02-21 16:57:51.369761'),(22,'auth','0005_alter_user_last_login_null','2024-02-21 16:57:51.550271'),(23,'auth','0006_require_contenttypes_0002','2024-02-21 16:57:51.638930'),(24,'auth','0007_alter_validators_add_error_messages','2024-02-21 16:57:51.717930'),(25,'auth','0008_alter_user_username_max_length','2024-02-21 16:57:51.915186'),(26,'auth','0009_alter_user_last_name_max_length','2024-02-21 16:57:52.096528'),(27,'auth','0010_alter_group_name_max_length','2024-02-21 16:57:52.255808'),(28,'auth','0011_update_proxy_permissions','2024-02-21 16:57:52.553765'),(29,'auth','0012_alter_user_first_name_max_length','2024-02-21 16:57:52.741542');
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
INSERT INTO `django_session` VALUES ('1abux7lngi15dmt8hp7h7uvbkwq81hjm','.eJwtj82KwjAUhV8l3HUVMy3T2pUDCuK2gsuQNndMpEkkN11I8d3nZnD7nR_OWWEhTMrorKFf4amzw5CVM9DLCoL2CD1cog1i8C5bqP79H_5gzoTDqOKvGl1iRw9y37SbXbeRDYvamIREjDspzu5uxZArcV3CmJy5o7jhPBP7npHyFE2pvf3IRnydjoXaGFCFxY-YWNnJ5rsWbVfX7Z5V9NrNnx1bKvsOGSlvp-hLVr98-UJxSVPpDZbg_f4DrvVNSg:1rcpPl:UpBS2D5fxA47sTVqudDEyXPrLRWPnh839cYFos62I1o','2024-03-06 16:25:45.826976');
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

-- Dump completed on 2024-02-21 17:00:31
