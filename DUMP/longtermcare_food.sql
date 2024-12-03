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
-- Table structure for table `food`
--

DROP TABLE IF EXISTS `food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `food` (
  `foodname` varchar(50) NOT NULL,
  `foodgroup` varchar(20) DEFAULT NULL,
  `calories` int DEFAULT NULL,
  `protein` int DEFAULT NULL,
  `fats` int DEFAULT NULL,
  PRIMARY KEY (`foodname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food`
--

LOCK TABLES `food` WRITE;
/*!40000 ALTER TABLE `food` DISABLE KEYS */;
INSERT INTO `food` VALUES ('Ability','Dairy',134,1,18),('After','Dairy',149,17,4),('Another','Fruit',155,5,17),('Anything','Dairy',177,10,19),('Article','Vegetable',186,16,16),('Artist','Fruit',184,13,13),('As','Grain',146,17,17),('Audience','Vegetable',73,4,14),('Authority','Grain',203,2,17),('Available','Protein',231,15,14),('Baby','Protein',198,11,8),('Become','Vegetable',151,2,11),('Bed','Protein',113,15,19),('Beyond','Grain',264,7,9),('Both','Dairy',238,2,17),('Break','Protein',259,19,12),('Chance','Vegetable',109,11,18),('Claim','Vegetable',89,2,15),('Congress','Dairy',91,6,2),('Country','Vegetable',233,19,16),('Deep','Protein',277,11,15),('Degree','Grain',133,9,19),('Discover','Dairy',177,3,7),('Door','Protein',173,12,5),('Effect','Dairy',137,18,0),('Ever','Fruit',152,13,4),('Expert','Vegetable',149,8,4),('Face','Grain',290,9,20),('First','Protein',74,9,15),('Fish','Grain',252,0,10),('Generation','Vegetable',245,19,16),('Girl','Vegetable',113,6,12),('Go','Dairy',215,4,13),('Head','Vegetable',262,19,15),('Hotel','Vegetable',166,15,14),('Hundred','Fruit',159,12,7),('Improve','Vegetable',138,14,20),('International','Vegetable',163,2,8),('Keep','Vegetable',167,9,15),('Lay','Dairy',95,9,6),('Learn','Fruit',195,12,15),('Let','Vegetable',230,18,6),('Like','Grain',221,5,6),('Make','Dairy',264,1,14),('Man','Protein',258,17,6),('Many','Dairy',173,4,9),('Me','Fruit',192,14,19),('Member','Dairy',126,12,19),('Mention','Vegetable',207,1,5),('Most','Grain',298,10,16),('Music','Vegetable',227,6,7),('Necessary','Vegetable',103,20,2),('North','Fruit',145,5,6),('Onto','Dairy',263,9,18),('Owner','Vegetable',202,8,1),('Participant','Vegetable',188,1,19),('Past','Protein',178,20,1),('Pay','Protein',267,9,11),('Pick','Protein',71,7,4),('Play','Dairy',283,14,1),('Player','Dairy',299,9,3),('Practice','Vegetable',229,2,15),('Present','Grain',188,12,0),('Pressure','Grain',210,12,7),('Push','Fruit',54,8,14),('Question','Fruit',194,9,20),('Reduce','Protein',292,4,10),('Reflect','Dairy',278,16,17),('Region','Dairy',190,5,4),('Religious','Dairy',63,9,6),('Remain','Grain',141,3,18),('Require','Dairy',273,17,10),('Return','Dairy',113,3,2),('Risk','Dairy',192,13,18),('Scientist','Dairy',148,8,1),('Season','Vegetable',158,11,18),('Service','Dairy',143,4,3),('So','Vegetable',247,0,20),('Sometimes','Vegetable',297,1,4),('Song','Fruit',184,2,0),('Statement','Fruit',56,13,10),('Step','Fruit',93,2,7),('Stuff','Protein',241,11,10),('Suffer','Dairy',86,19,1),('Test','Protein',134,5,19),('Them','Vegetable',101,16,19),('This','Protein',143,2,10),('Three','Dairy',154,0,4),('To','Vegetable',129,7,0),('Top','Protein',130,5,5),('Treatment','Fruit',272,16,7),('Turn','Dairy',157,0,5),('Voice','Fruit',174,6,2),('Walk','Grain',105,3,13),('Water','Dairy',207,8,8),('Way','Protein',201,8,5),('Week','Vegetable',275,12,20),('Well','Dairy',103,6,1),('Which','Vegetable',260,1,10),('Yard','Grain',240,20,15);
/*!40000 ALTER TABLE `food` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-03  0:53:21
