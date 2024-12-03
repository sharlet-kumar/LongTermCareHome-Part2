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
-- Table structure for table `allergytreatment`
--

DROP TABLE IF EXISTS `allergytreatment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `allergytreatment` (
  `allergyName` varchar(20) NOT NULL,
  `treatment` varchar(160) NOT NULL,
  `considerations` varchar(160) DEFAULT NULL,
  PRIMARY KEY (`allergyName`,`treatment`),
  CONSTRAINT `allergytreatment_ibfk_1` FOREIGN KEY (`allergyName`) REFERENCES `allergy` (`allergyName`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `allergytreatment`
--

LOCK TABLES `allergytreatment` WRITE;
/*!40000 ALTER TABLE `allergytreatment` DISABLE KEYS */;
INSERT INTO `allergytreatment` VALUES ('Dust','Radio a interview analysis behind stuff school.','Take camera respond guess cut southern weight.'),('Latex','Decision forget center certain.','Feel budget month past indeed campaign.'),('Mold','Chair data bed laugh station.','Happy return dog again significant describe.'),('Peanuts','Stay six effort quickly receive before computer.','At everyone recent rich.'),('Pollen','Relate tell lose authority.','Most ahead term building least your trip.'),('Shellfish','Order example section whose data financial senior.','Industry certain again avoid sister.');
/*!40000 ALTER TABLE `allergytreatment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-02 22:56:35
