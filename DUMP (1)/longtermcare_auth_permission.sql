-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: longtermcare
-- ------------------------------------------------------
-- Server version	8.0.40

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
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add patient',7,'add_patient'),(26,'Can change patient',7,'change_patient'),(27,'Can delete patient',7,'delete_patient'),(28,'Can view patient',7,'view_patient'),(29,'Can add medication',8,'add_medication'),(30,'Can change medication',8,'change_medication'),(31,'Can delete medication',8,'delete_medication'),(32,'Can view medication',8,'view_medication'),(33,'Can add meds treat condition',9,'add_medstreatcondition'),(34,'Can change meds treat condition',9,'change_medstreatcondition'),(35,'Can delete meds treat condition',9,'delete_medstreatcondition'),(36,'Can view meds treat condition',9,'view_medstreatcondition'),(37,'Can add food allergy conflict',10,'add_foodallergyconflict'),(38,'Can change food allergy conflict',10,'change_foodallergyconflict'),(39,'Can delete food allergy conflict',10,'delete_foodallergyconflict'),(40,'Can view food allergy conflict',10,'view_foodallergyconflict'),(41,'Can add med allergy conflict',11,'add_medallergyconflict'),(42,'Can change med allergy conflict',11,'change_medallergyconflict'),(43,'Can delete med allergy conflict',11,'delete_medallergyconflict'),(44,'Can view med allergy conflict',11,'view_medallergyconflict'),(45,'Can add medto med conflict',12,'add_medtomedconflict'),(46,'Can change medto med conflict',12,'change_medtomedconflict'),(47,'Can delete medto med conflict',12,'delete_medtomedconflict'),(48,'Can view medto med conflict',12,'view_medtomedconflict'),(49,'Can add allergy',13,'add_allergy'),(50,'Can change allergy',13,'change_allergy'),(51,'Can delete allergy',13,'delete_allergy'),(52,'Can view allergy',13,'view_allergy'),(53,'Can add food',14,'add_food'),(54,'Can change food',14,'change_food'),(55,'Can delete food',14,'delete_food'),(56,'Can view food',14,'view_food'),(57,'Can add staff',15,'add_staff'),(58,'Can change staff',15,'change_staff'),(59,'Can delete staff',15,'delete_staff'),(60,'Can view staff',15,'view_staff'),(61,'Can add patient condition',16,'add_patientcondition'),(62,'Can change patient condition',16,'change_patientcondition'),(63,'Can delete patient condition',16,'delete_patientcondition'),(64,'Can view patient condition',16,'view_patientcondition'),(65,'Can add patient allergy',17,'add_patientallergy'),(66,'Can change patient allergy',17,'change_patientallergy'),(67,'Can delete patient allergy',17,'delete_patientallergy'),(68,'Can view patient allergy',17,'view_patientallergy'),(69,'Can add patient medication',18,'add_patientmedication'),(70,'Can change patient medication',18,'change_patientmedication'),(71,'Can delete patient medication',18,'delete_patientmedication'),(72,'Can view patient medication',18,'view_patientmedication'),(73,'Can add medication assignment',19,'add_medicationassignment'),(74,'Can change medication assignment',19,'change_medicationassignment'),(75,'Can delete medication assignment',19,'delete_medicationassignment'),(76,'Can view medication assignment',19,'view_medicationassignment'),(77,'Can add patient staff care',20,'add_patientstaffcare'),(78,'Can change patient staff care',20,'change_patientstaffcare'),(79,'Can delete patient staff care',20,'delete_patientstaffcare'),(80,'Can view patient staff care',20,'view_patientstaffcare');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-03  0:03:51
