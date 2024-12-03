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
-- Table structure for table `foodallergyconflict`
--

DROP TABLE IF EXISTS `foodallergyconflict`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `foodallergyconflict` (
  `foodname` varchar(50) NOT NULL,
  `allergyName` varchar(20) NOT NULL,
  `ConflictCheck` tinyint(1) DEFAULT NULL,
  `ID1` varchar(15) NOT NULL,
  PRIMARY KEY (`ID1`),
  KEY `fk_foodname` (`foodname`),
  KEY `fk_allergyName` (`allergyName`),
  CONSTRAINT `fk_allergyName` FOREIGN KEY (`allergyName`) REFERENCES `allergy` (`allergyName`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_foodname` FOREIGN KEY (`foodname`) REFERENCES `food` (`foodname`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foodallergyconflict`
--

LOCK TABLES `foodallergyconflict` WRITE;
/*!40000 ALTER TABLE `foodallergyconflict` DISABLE KEYS */;
INSERT INTO `foodallergyconflict` VALUES ('Appear','Pollen',1,'0105229028'),('Including','Peanuts',1,'0123151713'),('Eat','Shellfish',1,'0126837646'),('Wonder','Latex',1,'0133900190'),('Rock','Dust',1,'0207367528'),('Treatment','Peanuts',1,'0235280185'),('Recently','Latex',1,'0268281594'),('Note','Dust',1,'0485280833'),('Enough','Latex',1,'0520875726'),('Idea','Peanuts',1,'0540149884'),('Own','Latex',1,'0548941427'),('Ball','Latex',1,'0570483812'),('Car','Mold',1,'0585175924'),('Party','Dust',1,'0611560493'),('Any','Pollen',1,'0646026150'),('Long','Peanuts',1,'0655896866'),('Appear','Shellfish',1,'0731792020'),('Rock','Latex',1,'0759147134'),('Have','Latex',1,'0947898211'),('Write','Dust',1,'1020543243'),('Turn','Dust',1,'1156624307'),('Several','Pollen',1,'1486851540'),('Mother','Shellfish',1,'1497669328'),('Write','Shellfish',1,'1584866925'),('Play','Mold',1,'1653625215'),('Ready','Pollen',1,'1685657944'),('Because','Shellfish',1,'1728265115'),('Ready','Mold',1,'1754512267'),('Own','Peanuts',1,'1845798296'),('Professional','Pollen',1,'1877865858'),('Hair','Shellfish',1,'1886814590'),('Including','Pollen',1,'1976850764'),('Pull','Latex',1,'1994108489'),('Work','Shellfish',1,'2048127745'),('Enough','Dust',1,'2105698654'),('Herself','Shellfish',1,'2107060031'),('Suddenly','Peanuts',1,'2166726357'),('Development','Peanuts',1,'2174837391'),('This','Shellfish',1,'2222762054'),('Us','Peanuts',1,'2228727895'),('Raise','Latex',1,'2242620648'),('World','Latex',1,'2251236937'),('Force','Dust',1,'2403709963'),('Choose','Shellfish',1,'2414436482'),('Force','Shellfish',1,'2469573911'),('Or','Mold',1,'2489612402'),('Several','Shellfish',1,'2592879416'),('Claim','Peanuts',1,'2739989902'),('Turn','Peanuts',1,'2757342361'),('Clearly','Shellfish',1,'2786192500'),('For','Shellfish',1,'2814031343'),('Commercial','Pollen',1,'2840550380'),('Rock','Mold',1,'2887566326'),('Rate','Dust',1,'2904766265'),('Idea','Latex',1,'2923115032'),('Note','Peanuts',1,'2932043358'),('World','Pollen',1,'3097901449'),('Enough','Pollen',1,'3117345489'),('Office','Pollen',1,'3157824655'),('President','Shellfish',1,'3230013932'),('Husband','Pollen',1,'3289318341'),('Choose','Peanuts',1,'3380554086'),('Force','Peanuts',1,'3391137858'),('Herself','Pollen',1,'3404361353'),('Us','Shellfish',1,'3478294638'),('Seat','Latex',1,'3512164941'),('Herself','Mold',1,'3572374086'),('Seat','Shellfish',1,'3591338521'),('Back','Shellfish',1,'3628341605'),('Long','Mold',1,'3699229206'),('Entire','Mold',1,'3802227521'),('Brother','Mold',1,'3826866857'),('Study','Pollen',1,'3876321513'),('Relate','Dust',1,'3885045809'),('Education','Pollen',1,'3947790718'),('Write','Latex',1,'3958298378'),('Office','Latex',1,'4062460370'),('State','Pollen',1,'4067720721'),('Entire','Peanuts',1,'4118311162'),('Ball','Shellfish',1,'4132473409'),('Fly','Shellfish',1,'4173043936'),('Follow','Shellfish',1,'4244955388'),('Behind','Peanuts',1,'4338268246'),('Final','Shellfish',1,'4377954766'),('Seat','Peanuts',1,'4406857793'),('General','Peanuts',1,'4408259416'),('Recently','Dust',1,'4494701711'),('Fly','Latex',1,'4498125333'),('Congress','Shellfish',1,'4548162390'),('Commercial','Shellfish',1,'4580242980'),('Whether','Shellfish',1,'4586796588'),('Professional','Peanuts',1,'4587916134'),('President','Peanuts',1,'4608532338'),('Congress','Dust',1,'4653160054'),('Military','Peanuts',1,'4684013667'),('Note','Latex',1,'4711284604'),('Cup','Shellfish',1,'4711883554'),('Lot','Mold',1,'4732206636'),('Majority','Pollen',1,'4935132048'),('Side','Mold',1,'5013631998'),('Citizen','Dust',1,'5014175707'),('Cup','Peanuts',1,'5041718381'),('No','Shellfish',1,'5122303656'),('Energy','Dust',1,'5146357584'),('Five','Shellfish',1,'5164243021'),('From','Latex',1,'5192687848'),('Congress','Latex',1,'5228246272'),('Professional','Mold',1,'5234639776'),('Much','Dust',1,'5241883403'),('Claim','Dust',1,'5280233646'),('Manage','Latex',1,'5343022493'),('Eat','Pollen',1,'5359488656'),('Option','Latex',1,'5369014266'),('Remember','Pollen',1,'5500043472'),('Long','Pollen',1,'5520352381'),('According','Dust',1,'5540548274'),('Father','Peanuts',1,'5597777710'),('Lead','Latex',1,'5616989638'),('Citizen','Shellfish',1,'5732706653'),('Much','Peanuts',1,'5742775997'),('War','Dust',1,'5865157854'),('Husband','Mold',1,'5918242269'),('Study','Peanuts',1,'5987353009'),('Behind','Mold',1,'6028657569'),('Remember','Mold',1,'6050596771'),('Or','Latex',1,'6065914263'),('Five','Peanuts',1,'6086470673'),('Because','Mold',1,'6228380276'),('Study','Mold',1,'6256259567'),('War','Shellfish',1,'6258432183'),('Seven','Shellfish',1,'6547758691'),('Clearly','Mold',1,'6591964607'),('Education','Dust',1,'6593905918'),('Behind','Latex',1,'6621523284'),('Manage','Peanuts',1,'6627641902'),('Cup','Pollen',1,'6674069290'),('Long','Dust',1,'6748285858'),('Many','Shellfish',1,'6769128591'),('Final','Latex',1,'6828487274'),('Reflect','Latex',1,'6833252039'),('General','Pollen',1,'6921828886'),('From','Dust',1,'6962380022'),('Three','Mold',1,'6979045932'),('Back','Pollen',1,'6985252677'),('War','Latex',1,'7058392426'),('Many','Dust',1,'7108621773'),('World','Peanuts',1,'7167154941'),('History','Shellfish',1,'7239096920'),('Hand','Shellfish',1,'7265991707'),('Work','Mold',1,'7267233742'),('Lead','Mold',1,'7368029966'),('Second','Shellfish',1,'7569461598'),('Many','Peanuts',1,'7609008535'),('Us','Mold',1,'7615224166'),('Treatment','Mold',1,'7662947845'),('Including','Mold',1,'7784343025'),('Three','Dust',1,'7832125811'),('Until','Shellfish',1,'7861025102'),('Rate','Pollen',1,'7864446682'),('Reflect','Peanuts',1,'7879488446'),('Rock','Peanuts',1,'7882633450'),('Clearly','Latex',1,'7990638638'),('Mean','Dust',1,'8093893352'),('Citizen','Peanuts',1,'8180386023'),('Budget','Peanuts',1,'8191819782'),('Ball','Dust',1,'8197349705'),('No','Dust',1,'8233471420'),('Ball','Pollen',1,'8286445940'),('Summer','Shellfish',1,'8327765211'),('Enough','Shellfish',1,'8371209102'),('Clearly','Pollen',1,'8375801657'),('Car','Peanuts',1,'8458127244'),('Side','Shellfish',1,'8475932713'),('Because','Peanuts',1,'8492534346'),('Until','Peanuts',1,'8585244143'),('Father','Pollen',1,'8905104107'),('Pull','Pollen',1,'8912993106'),('Hand','Peanuts',1,'8960302493'),('Play','Dust',1,'8964219230'),('Work','Latex',1,'8967009277'),('Meet','Pollen',1,'9014909817'),('Budget','Dust',1,'9047393607'),('From','Mold',1,'9061978064'),('Raise','Pollen',1,'9112858042'),('Entire','Latex',1,'9221503945'),('Summer','Pollen',1,'9282162493'),('Car','Pollen',1,'9300122117'),('Commercial','Latex',1,'9305271812'),('For','Pollen',1,'9320495037'),('Rate','Shellfish',1,'9378110918'),('Trouble','Pollen',1,'9417941828'),('Yourself','Mold',1,'9445239178'),('Wonder','Dust',1,'9466035226'),('Suddenly','Latex',1,'9466510982'),('According','Mold',1,'9469688606'),('Office','Mold',1,'9674463390'),('Lot','Shellfish',1,'9708229763'),('Three','Latex',1,'9720458895'),('Follow','Peanuts',1,'9873095076'),('Lead','Peanuts',1,'9880423007');
/*!40000 ALTER TABLE `foodallergyconflict` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-03  0:03:56
