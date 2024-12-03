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
INSERT INTO `food` VALUES ('According','Grain',188,17,11),('Agency','Vegetable',235,20,14),('Any','Dairy',80,11,0),('Appear','Fruit',70,5,0),('Arm','Dairy',285,4,0),('Back','Vegetable',273,10,3),('Ball','Protein',244,11,20),('Because','Vegetable',93,19,18),('Behind','Dairy',207,4,4),('Brother','Fruit',150,5,6),('Budget','Fruit',68,14,4),('Car','Vegetable',52,2,15),('Choose','Grain',245,13,12),('Citizen','Fruit',58,3,11),('Claim','Grain',229,10,0),('Clearly','Fruit',201,14,4),('Commercial','Protein',100,3,1),('Congress','Vegetable',141,2,13),('Cup','Vegetable',95,14,16),('Development','Fruit',231,18,16),('Eat','Grain',162,8,12),('Education','Protein',293,2,3),('Energy','Grain',256,8,3),('Enough','Fruit',51,7,14),('Entire','Fruit',124,7,4),('Father','Grain',216,12,0),('Final','Protein',141,16,0),('Five','Protein',289,4,16),('Fly','Grain',161,2,12),('Follow','Dairy',146,14,14),('For','Fruit',97,11,8),('Force','Protein',230,8,5),('From','Grain',138,6,17),('General','Protein',89,1,16),('Hair','Grain',132,16,11),('Hand','Fruit',171,3,0),('Have','Vegetable',128,13,10),('Herself','Protein',259,4,15),('History','Protein',54,15,17),('Husband','Grain',69,18,19),('Idea','Fruit',165,13,6),('Including','Protein',56,12,15),('Lead','Protein',265,12,0),('Leg','Fruit',278,19,13),('Let','Protein',100,7,14),('Long','Dairy',210,10,18),('Lot','Dairy',278,10,0),('Majority','Grain',288,7,11),('Manage','Dairy',205,9,18),('Many','Grain',152,14,18),('Mean','Protein',194,18,20),('Meet','Fruit',96,1,6),('Military','Grain',102,2,3),('Mother','Fruit',143,19,6),('Much','Dairy',239,4,4),('No','Fruit',123,2,0),('Note','Protein',209,4,15),('Office','Fruit',54,15,17),('Option','Fruit',127,6,4),('Or','Grain',268,0,17),('Own','Grain',89,17,16),('Party','Grain',77,19,6),('Personal','Grain',293,20,4),('Play','Grain',77,4,18),('President','Fruit',141,14,10),('Professional','Grain',176,11,20),('Pull','Vegetable',117,12,18),('Raise','Grain',89,18,1),('Rate','Fruit',251,16,4),('Ready','Dairy',216,16,10),('Recently','Protein',58,1,1),('Reflect','Dairy',125,12,12),('Relate','Dairy',212,13,9),('Remember','Dairy',140,20,7),('Rock','Grain',235,18,8),('Seat','Vegetable',192,18,5),('Second','Dairy',162,3,16),('Send','Dairy',164,17,10),('Seven','Dairy',200,11,7),('Several','Dairy',156,6,4),('Side','Dairy',125,1,18),('State','Protein',178,19,19),('Study','Fruit',161,0,17),('Suddenly','Vegetable',144,4,6),('Summer','Dairy',124,20,1),('This','Fruit',239,14,16),('Three','Dairy',146,16,14),('Treatment','Fruit',58,9,15),('Trouble','Protein',156,16,18),('Turn','Dairy',202,20,13),('Until','Fruit',153,3,4),('Us','Grain',194,2,12),('Vote','Protein',222,1,13),('War','Protein',278,8,14),('Whether','Protein',70,10,14),('Wonder','Grain',171,14,15),('Work','Fruit',159,7,0),('World','Grain',194,4,13),('Write','Dairy',135,6,1),('Yourself','Vegetable',91,14,19);
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

-- Dump completed on 2024-12-03  0:03:54
