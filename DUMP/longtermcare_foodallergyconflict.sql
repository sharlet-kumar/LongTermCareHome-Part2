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
INSERT INTO `foodallergyconflict` VALUES ('Test','Pollen',1,'0105158921'),('Deep','Shellfish',1,'0109399735'),('Mention','Shellfish',1,'0191207087'),('Go','Shellfish',1,'0380972661'),('Lay','Pollen',1,'0439703145'),('Artist','Pollen',1,'0444129254'),('Beyond','Latex',1,'0449711835'),('Participant','Latex',1,'0519940955'),('Beyond','Shellfish',1,'0559441330'),('Voice','Peanuts',1,'0569151619'),('Authority','Dust',1,'0581882437'),('Pay','Shellfish',1,'0639614164'),('Degree','Shellfish',1,'0730692463'),('Like','Pollen',1,'0748415930'),('Present','Pollen',1,'0818914858'),('This','Shellfish',1,'0857668340'),('Participant','Mold',1,'0858648184'),('Face','Pollen',1,'0945920378'),('Present','Dust',1,'1003014917'),('Push','Shellfish',1,'1023586332'),('Both','Latex',1,'1054125251'),('Let','Dust',1,'1066708870'),('Article','Peanuts',1,'1141787106'),('Step','Pollen',1,'1152247668'),('Keep','Dust',1,'1164153117'),('Test','Shellfish',1,'1241715841'),('Reflect','Pollen',1,'1247009351'),('Another','Mold',1,'1307696149'),('Sometimes','Pollen',1,'1311316598'),('Head','Peanuts',1,'1327014426'),('Way','Pollen',1,'1368036553'),('Chance','Pollen',1,'1392795237'),('Both','Shellfish',1,'1418145843'),('Participant','Dust',1,'1435772559'),('Degree','Dust',1,'1467384076'),('Water','Pollen',1,'1604763685'),('Fish','Peanuts',1,'1679389476'),('Reflect','Mold',1,'1685099006'),('Water','Mold',1,'1727248875'),('Beyond','Dust',1,'1869726493'),('Become','Dust',1,'1882117242'),('Question','Dust',1,'1890690605'),('Practice','Dust',1,'2027091328'),('Become','Pollen',1,'2229852104'),('Top','Peanuts',1,'2356324106'),('Religious','Latex',1,'2356971854'),('Voice','Dust',1,'2394342548'),('Remain','Dust',1,'2394571419'),('Turn','Peanuts',1,'2397896435'),('Fish','Dust',1,'2474183511'),('Pick','Pollen',1,'2574315599'),('As','Shellfish',1,'2577942268'),('Reflect','Latex',1,'2628600435'),('Treatment','Mold',1,'2878096860'),('North','Pollen',1,'2900557393'),('So','Dust',1,'2917017989'),('Baby','Latex',1,'2947001453'),('Pick','Latex',1,'3167121825'),('Song','Latex',1,'3237902421'),('Yard','Peanuts',1,'3249814330'),('Artist','Mold',1,'3294797970'),('Discover','Dust',1,'3347030908'),('This','Peanuts',1,'3366948516'),('After','Pollen',1,'3419304214'),('Onto','Pollen',1,'3432963484'),('Step','Peanuts',1,'3502345034'),('Reduce','Dust',1,'3549471250'),('Make','Pollen',1,'3558239952'),('Pick','Shellfish',1,'3564048127'),('Top','Pollen',1,'3577622729'),('Top','Latex',1,'3662461105'),('Baby','Dust',1,'3662553085'),('First','Latex',1,'3834630931'),('Treatment','Dust',1,'3838908019'),('Stuff','Dust',1,'3869024580'),('Face','Latex',1,'3903183416'),('Country','Pollen',1,'3967808486'),('Chance','Peanuts',1,'3969719121'),('Owner','Mold',1,'3990995122'),('Step','Dust',1,'4097783900'),('Suffer','Dust',1,'4118693090'),('Scientist','Pollen',1,'4174804321'),('International','Mold',1,'4296065754'),('After','Peanuts',1,'4296716991'),('Music','Pollen',1,'4310760565'),('Practice','Pollen',1,'4320126987'),('Expert','Dust',1,'4371249768'),('Pressure','Latex',1,'4377915831'),('Well','Pollen',1,'4404368518'),('Girl','Peanuts',1,'4476261942'),('Way','Shellfish',1,'4578699286'),('Pay','Pollen',1,'4592685460'),('Another','Shellfish',1,'4671008942'),('Service','Pollen',1,'4671640971'),('Head','Mold',1,'4696763665'),('Another','Peanuts',1,'4708465277'),('Most','Peanuts',1,'4894124265'),('Necessary','Latex',1,'4901631052'),('First','Pollen',1,'4903287354'),('Learn','Peanuts',1,'4939709092'),('Water','Latex',1,'5051086806'),('Keep','Latex',1,'5160799547'),('Service','Peanuts',1,'5161775103'),('Stuff','Mold',1,'5204556709'),('Service','Dust',1,'5223511131'),('Me','Mold',1,'5286362338'),('Face','Dust',1,'5415928704'),('Let','Mold',1,'5420869637'),('Religious','Mold',1,'5519632968'),('Make','Mold',1,'5593687280'),('Head','Pollen',1,'5596613928'),('Door','Peanuts',1,'5684617229'),('Anything','Peanuts',1,'5692290586'),('Owner','Peanuts',1,'5703245513'),('Practice','Shellfish',1,'5729319124'),('Treatment','Latex',1,'5847355927'),('Anything','Shellfish',1,'5887286141'),('Walk','Dust',1,'5900322450'),('Participant','Peanuts',1,'6002636579'),('Let','Shellfish',1,'6021170037'),('Past','Peanuts',1,'6067779349'),('Ever','Latex',1,'6124277949'),('Way','Mold',1,'6183625285'),('Generation','Latex',1,'6218637230'),('Baby','Pollen',1,'6299577546'),('Turn','Dust',1,'6303172085'),('Pay','Dust',1,'6339465380'),('Door','Pollen',1,'6351049141'),('Past','Latex',1,'6392742666'),('Well','Mold',1,'6404624057'),('Onto','Dust',1,'6430341295'),('Learn','Latex',1,'6455753355'),('Reduce','Peanuts',1,'6460643772'),('Both','Mold',1,'6500970487'),('Test','Mold',1,'6505988908'),('Generation','Mold',1,'6597714577'),('Music','Dust',1,'6622214814'),('Pressure','Peanuts',1,'6633548129'),('Most','Latex',1,'6772924045'),('Question','Latex',1,'6811958785'),('International','Dust',1,'6845990327'),('Article','Mold',1,'6971412892'),('Voice','Mold',1,'7135288731'),('Congress','Mold',1,'7180111828'),('Improve','Peanuts',1,'7224570948'),('Reflect','Peanuts',1,'7261996503'),('This','Dust',1,'7305830169'),('Go','Peanuts',1,'7405230689'),('Walk','Latex',1,'7412303979'),('Head','Dust',1,'7606228571'),('To','Peanuts',1,'7678575150'),('Walk','Mold',1,'7709299700'),('So','Latex',1,'7751160777'),('Voice','Shellfish',1,'7761224404'),('Season','Latex',1,'7810295410'),('Past','Shellfish',1,'7830765479'),('North','Mold',1,'7891270424'),('Lay','Peanuts',1,'7923296300'),('Bed','Shellfish',1,'7928412852'),('Question','Peanuts',1,'8000026885'),('Hotel','Pollen',1,'8047990190'),('Ever','Dust',1,'8050876046'),('Which','Dust',1,'8053255276'),('Country','Latex',1,'8213735579'),('Play','Dust',1,'8231964348'),('Player','Mold',1,'8253832838'),('Reduce','Mold',1,'8343191443'),('Season','Dust',1,'8431103168'),('Article','Dust',1,'8450951206'),('Artist','Shellfish',1,'8481538351'),('Reflect','Dust',1,'8563177607'),('Them','Mold',1,'8652827856'),('Way','Peanuts',1,'8715804159'),('Music','Shellfish',1,'8731176209'),('Well','Shellfish',1,'8847418718'),('Me','Latex',1,'8855793687'),('Reduce','Pollen',1,'8876215623'),('Man','Mold',1,'8920977534'),('Them','Shellfish',1,'8959972677'),('Walk','Pollen',1,'8968945369'),('Season','Peanuts',1,'9025267439'),('North','Peanuts',1,'9123531439'),('Most','Mold',1,'9226485083'),('Onto','Latex',1,'9229619611'),('Artist','Dust',1,'9258699724'),('Mention','Latex',1,'9275618941'),('Chance','Mold',1,'9315199289'),('Which','Latex',1,'9440104760'),('Bed','Mold',1,'9488126746'),('Push','Latex',1,'9530297969'),('Like','Peanuts',1,'9600511892'),('Stuff','Pollen',1,'9630373190'),('Week','Peanuts',1,'9640905971'),('This','Mold',1,'9709023384'),('Audience','Latex',1,'9740269254'),('Lay','Shellfish',1,'9810982062'),('Many','Peanuts',1,'9875637078'),('So','Mold',1,'9948416492'),('Man','Shellfish',1,'9955629597'),('Return','Peanuts',1,'9980913197');
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

-- Dump completed on 2024-12-03  0:53:23
