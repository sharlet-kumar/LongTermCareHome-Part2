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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-12-03 05:46:27.873369'),(2,'auth','0001_initial','2024-12-03 05:46:28.563266'),(3,'admin','0001_initial','2024-12-03 05:46:28.739970'),(4,'admin','0002_logentry_remove_auto_add','2024-12-03 05:46:28.740483'),(5,'admin','0003_logentry_add_action_flag_choices','2024-12-03 05:46:28.754540'),(6,'contenttypes','0002_remove_content_type_name','2024-12-03 05:46:28.843379'),(7,'auth','0002_alter_permission_name_max_length','2024-12-03 05:46:28.908666'),(8,'auth','0003_alter_user_email_max_length','2024-12-03 05:46:28.934808'),(9,'auth','0004_alter_user_username_opts','2024-12-03 05:46:28.944488'),(10,'auth','0005_alter_user_last_login_null','2024-12-03 05:46:28.993214'),(11,'auth','0006_require_contenttypes_0002','2024-12-03 05:46:28.993214'),(12,'auth','0007_alter_validators_add_error_messages','2024-12-03 05:46:29.010318'),(13,'auth','0008_alter_user_username_max_length','2024-12-03 05:46:29.078384'),(14,'auth','0009_alter_user_last_name_max_length','2024-12-03 05:46:29.152386'),(15,'auth','0010_alter_group_name_max_length','2024-12-03 05:46:29.178188'),(16,'auth','0011_update_proxy_permissions','2024-12-03 05:46:29.185162'),(17,'auth','0012_alter_user_first_name_max_length','2024-12-03 05:46:29.263422'),(18,'sessions','0001_initial','2024-12-03 05:46:29.294648'),(19,'test_app','0001_initial','2024-12-03 05:46:29.310361'),(20,'test_app','0002_medication','2024-12-03 05:46:29.342167'),(21,'test_app','0003_medstreatcondition','2024-12-03 05:46:29.437408'),(22,'test_app','0004_alter_medication_table_and_more','2024-12-03 05:46:32.856024'),(23,'test_app','0005_alter_medstreatcondition_options_and_more','2024-12-03 05:46:32.860012'),(24,'test_app','0006_alter_medstreatcondition_table_foodallergyconflict_and_more','2024-12-03 05:46:32.860012'),(25,'test_app','0007_rename_medmedconflict_medtomedconflict','2024-12-03 05:46:32.860012'),(26,'test_app','0008_alter_medtomedconflict_table','2024-12-03 05:46:32.869019'),(27,'test_app','0009_allergy_food_and_more','2024-12-03 05:46:32.872042'),(28,'test_app','0010_remove_medtomedconflict_conflictcheck_and_more','2024-12-03 05:46:32.874138'),(29,'test_app','0011_patient_medications','2024-12-03 05:46:32.874138'),(30,'test_app','0012_staff_patientcondition','2024-12-03 05:46:32.874138'),(31,'test_app','0013_patientallergy_patient_allergies','2024-12-03 05:46:32.874138'),(32,'test_app','0014_patientmedication','2024-12-03 05:46:32.874138'),(33,'test_app','0015_alter_patient_medications','2024-12-03 05:46:32.887898'),(34,'test_app','0016_medicationassignment','2024-12-03 05:46:32.887898'),(35,'test_app','0017_patientstaffcare','2024-12-03 05:46:32.887898'),(36,'test_app','0018_alter_patientstaffcare_id7','2024-12-03 05:46:32.887898'),(37,'test_app','0019_alter_patientstaffcare_careenddate_and_more','2024-12-03 05:46:32.887898'),(38,'test_app','0020_alter_patientmedication_options','2024-12-03 05:46:32.887898'),(39,'test_app','0021_patientmedication_medication_and_more','2024-12-03 05:46:32.887898'),(40,'test_app','0022_delete_medicationassignment','2024-12-03 05:46:32.903618'),(41,'test_app','0023_staffphone','2024-12-03 05:46:32.903618');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-03  0:53:20
