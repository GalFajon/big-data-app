-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: awseb-e-semi8p2gi6-stack-awsebrdsdatabase-a0ur1tumwwau.c4p5wfyvd5hg.eu-west-1.rds.amazonaws.com    Database: deaths
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN*/;
/*SET @@SESSION.SQL_LOG_BIN= 1*/;

--
-- GTID state at the beginning of the backup
--

/*SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ ''*/;

--
-- Table structure for table `age`
--

DROP TABLE IF EXISTS `age`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `age` (
  `id` int NOT NULL AUTO_INCREMENT,
  `value` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `age`
--

LOCK TABLES `age` WRITE;
/*!40000 ALTER TABLE `age` DISABLE KEYS */;
INSERT INTO `age` VALUES (1,'65 - 69 years'),(2,'30 - 34 years'),(3,'60 - 64 years'),(4,'70 - 74 years'),(5,'80 - 84 years'),(6,'85 years and over'),(7,'40 - 44 years'),(8,'25 - 29 years'),(9,'45 - 49 years'),(10,'50 - 54 years'),(11,'55 - 59 years'),(12,'75 - 79 years'),(13,'35 - 39 years'),(14,'15 - 19 years'),(15,'20 - 24 years'),(16,'1 - 4 years'),(17,'10 - 14 years'),(18,'5 - 9 years'),(19,'Under 1 year');
/*!40000 ALTER TABLE `age` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cause`
--

DROP TABLE IF EXISTS `cause`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cause` (
  `id` int NOT NULL AUTO_INCREMENT,
  `value` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cause`
--

LOCK TABLES `cause` WRITE;
/*!40000 ALTER TABLE `cause` DISABLE KEYS */;
INSERT INTO `cause` VALUES (1,'W00 Fall on same level involving ice and snow'),(2,'W01 Fall on same level from slipping, tripping and stumbling'),(3,'W05 Fall involving wheelchair'),(4,'W06 Fall involving bed'),(5,'W07 Fall involving chair'),(6,'W10 Fall on and from stairs and steps'),(7,'W11 Fall on and from ladder'),(8,'W13 Fall from, out of or through building or structure'),(9,'W15 Fall from cliff'),(10,'W17 Other fall from one level to another'),(11,'W18 Other fall on same level'),(12,'W19 Unspecified fall'),(13,'W20 Struck by thrown, projected or falling object(s)'),(14,'W22 Striking against or struck by other object(s)'),(15,'W23 Caught, crushed, jammed or pinched in or between objects'),(16,'W26 Contact with other sharp object(s)'),(17,'W30 Contact with agricultural machinery'),(18,'W31 Contact with other and unspecified machinery'),(19,'W33 Rifle, shotgun and larger firearm discharge'),(20,'W34 Discharge from other and unspecified firearms'),(21,'W50 Hit, struck, kicked, twisted, bitten or scratched by another person'),(22,'W69 Drowning and submersion while in natural water'),(23,'W70 Drowning and submersion following fall into natural water'),(24,'W74 Unspecified drowning and submersion'),(25,'W76 Other accidental hanging and strangulation'),(26,'W79 Inhalation and ingestion of food causing obstruction of respiratory tract'),(27,'W80 Inhalation and ingestion of other objects causing obstruction of respiratory tract'),(28,'W83 Other specified threats to breathing'),(29,'W84 Unspecified threat to breathing'),(30,'W87 Exposure to unspecified electric current'),(31,'W08 Fall involving other furniture'),(32,'W65 Drowning and submersion while in bath-tub'),(33,'W40 Explosion of other materials'),(34,'W55 Bitten or struck by other mammals'),(35,'W73 Other specified drowning and submersion'),(36,'W77 Threat to breathing due to cave-in, falling earth and other substances'),(37,'W78 Inhalation of gastric contents'),(38,'W81 Confined to or trapped in a low-oxygen environment'),(39,'W86 Exposure to other specified electric current'),(40,'W54 Bitten or struck by dog'),(41,'W75 Accidental suffocation and strangulation in bed'),(42,'W24 Contact with lifting and transmission device(s), not elsewhere classified'),(43,'W92 Exposure to excessive heat of man-made origin'),(44,'W44 Foreign body entering into or through eye or natural orifice'),(45,'W02 Fall involving ice-skates, skis, roller-skates or skateboards'),(46,'W28 Contact with powered lawnmower'),(47,'W67 Drowning and submersion while in swimming-pool'),(48,'W36 Explosion and rupture of gas cylinder'),(49,'W49 Exposure to other and unspecified inanimate mechanical forces');
/*!40000 ALTER TABLE `cause` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deaths`
--

DROP TABLE IF EXISTS `deaths`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deaths` (
  `year` int DEFAULT NULL,
  `gender_id` int DEFAULT NULL,
  `cause_id` int DEFAULT NULL,
  `age_id` int DEFAULT NULL,
  `n` int DEFAULT NULL,
  KEY `gender_id` (`gender_id`),
  KEY `cause_id` (`cause_id`),
  KEY `age_id` (`age_id`),
  CONSTRAINT `deaths_ibfk_1` FOREIGN KEY (`gender_id`) REFERENCES `gender` (`id`),
  CONSTRAINT `deaths_ibfk_2` FOREIGN KEY (`cause_id`) REFERENCES `cause` (`id`),
  CONSTRAINT `deaths_ibfk_3` FOREIGN KEY (`age_id`) REFERENCES `age` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deaths`
--

LOCK TABLES `deaths` WRITE;
/*!40000 ALTER TABLE `deaths` DISABLE KEYS */;
INSERT INTO `deaths` VALUES (2016,1,1,1,1),(2016,1,2,2,1),(2016,1,2,3,1),(2016,1,2,4,1),(2016,1,2,5,1),(2016,1,2,6,5),(2016,1,3,1,1),(2016,1,3,5,2),(2016,1,4,7,1),(2016,1,4,1,2),(2016,1,4,6,3),(2016,1,5,6,1),(2016,1,6,8,1),(2016,1,6,7,1),(2016,1,6,9,2),(2016,1,6,10,4),(2016,1,6,11,1),(2016,1,6,3,3),(2016,1,6,1,3),(2016,1,6,4,5),(2016,1,6,12,6),(2016,1,6,5,3),(2016,1,6,6,1),(2016,1,7,13,1),(2016,1,7,11,1),(2016,1,7,4,1),(2016,1,7,12,1),(2016,1,7,6,1),(2016,1,8,14,1),(2016,1,8,8,1),(2016,1,8,7,1),(2016,1,8,11,2),(2016,1,8,1,1),(2016,1,8,5,1),(2016,1,9,15,1),(2016,1,10,8,1),(2016,1,10,13,1),(2016,1,10,7,1),(2016,1,10,9,2),(2016,1,10,10,2),(2016,1,10,11,1),(2016,1,10,1,1),(2016,1,11,9,1),(2016,1,11,10,1),(2016,1,11,3,1),(2016,1,11,1,2),(2016,1,11,4,2),(2016,1,11,12,2),(2016,1,11,5,3),(2016,1,11,6,1),(2016,1,12,8,2),(2016,1,12,13,2),(2016,1,12,7,1),(2016,1,12,10,4),(2016,1,12,11,4),(2016,1,12,3,8),(2016,1,12,1,10),(2016,1,12,4,7),(2016,1,12,12,15),(2016,1,12,5,12),(2016,1,12,6,16),(2016,1,13,9,1),(2016,1,13,1,1),(2016,1,14,11,1),(2016,1,15,15,1),(2016,1,15,8,1),(2016,1,15,7,1),(2016,1,15,9,1),(2016,1,15,5,1),(2016,1,16,3,1),(2016,1,17,11,1),(2016,1,17,3,2),(2016,1,18,13,1),(2016,1,18,7,1),(2016,1,18,9,1),(2016,1,19,7,1),(2016,1,20,13,1),(2016,1,20,9,1),(2016,1,20,11,1),(2016,1,21,4,1),(2016,1,22,16,1),(2016,1,22,17,2),(2016,1,22,14,3),(2016,1,22,15,6),(2016,1,22,8,2),(2016,1,22,2,2),(2016,1,22,13,5),(2016,1,22,7,1),(2016,1,22,9,5),(2016,1,22,10,2),(2016,1,22,11,2),(2016,1,22,1,4),(2016,1,22,4,6),(2016,1,23,10,1),(2016,1,23,3,1),(2016,1,23,1,2),(2016,1,23,4,1),(2016,1,23,12,1),(2016,1,24,8,1),(2016,1,24,13,2),(2016,1,24,9,2),(2016,1,24,10,1),(2016,1,24,11,3),(2016,1,24,3,1),(2016,1,24,4,1),(2016,1,24,12,2),(2016,1,25,16,1),(2016,1,26,16,1),(2016,1,26,11,1),(2016,1,26,1,3),(2016,1,26,4,1),(2016,1,26,5,2),(2016,1,26,6,1),(2016,1,27,8,1),(2016,1,27,2,1),(2016,1,27,10,1),(2016,1,27,6,1),(2016,1,28,7,1),(2016,1,28,11,1),(2016,1,29,5,1),(2016,1,30,2,1),(2016,1,30,11,1),(2016,2,1,12,1),(2016,2,2,12,2),(2016,2,2,5,3),(2016,2,2,6,12),(2016,2,4,11,1),(2016,2,4,1,1),(2016,2,4,5,2),(2016,2,4,6,5),(2016,2,5,1,1),(2016,2,5,12,1),(2016,2,5,5,1),(2016,2,5,6,4),(2016,2,31,6,1),(2016,2,6,10,2),(2016,2,6,11,1),(2016,2,6,3,1),(2016,2,6,1,5),(2016,2,6,4,2),(2016,2,6,12,4),(2016,2,6,5,2),(2016,2,6,6,5),(2016,2,7,12,1),(2016,2,10,10,2),(2016,2,10,11,1),(2016,2,10,6,1),(2016,2,11,9,1),(2016,2,11,10,1),(2016,2,11,11,1),(2016,2,11,3,1),(2016,2,11,1,3),(2016,2,11,4,1),(2016,2,11,12,3),(2016,2,11,6,2),(2016,2,12,9,1),(2016,2,12,10,2),(2016,2,12,11,2),(2016,2,12,3,3),(2016,2,12,1,2),(2016,2,12,4,4),(2016,2,12,12,6),(2016,2,12,5,16),(2016,2,12,6,23),(2016,2,15,18,1),(2016,2,32,3,1),(2016,2,32,4,1),(2016,2,22,15,1),(2016,2,22,13,1),(2016,2,22,7,1),(2016,2,22,4,1),(2016,2,22,5,1),(2016,2,23,7,1),(2016,2,23,10,1),(2016,2,24,7,2),(2016,2,24,9,2),(2016,2,24,11,1),(2016,2,24,3,1),(2016,2,24,6,1),(2016,2,25,9,1),(2016,2,25,1,1),(2016,2,26,7,1),(2016,2,26,10,2),(2016,2,26,11,1),(2016,2,26,4,1),(2016,2,26,12,1),(2016,2,26,5,1),(2016,2,26,6,2),(2016,2,27,16,1),(2016,2,28,4,1),(2017,1,2,2,1),(2017,1,2,3,1),(2017,1,2,4,1),(2017,1,2,12,2),(2017,1,2,5,3),(2017,1,2,6,11),(2017,1,4,10,1),(2017,1,4,1,1),(2017,1,4,12,1),(2017,1,4,5,2),(2017,1,4,6,8),(2017,1,5,6,1),(2017,1,6,2,1),(2017,1,6,13,2),(2017,1,6,9,5),(2017,1,6,11,4),(2017,1,6,3,4),(2017,1,6,1,4),(2017,1,6,4,10),(2017,1,6,12,3),(2017,1,6,5,2),(2017,1,6,6,1),(2017,1,7,1,2),(2017,1,7,12,1),(2017,1,7,5,1),(2017,1,8,15,1),(2017,1,8,2,2),(2017,1,8,1,1),(2017,1,9,13,1),(2017,1,9,9,1),(2017,1,9,10,1),(2017,1,9,3,1),(2017,1,9,5,1),(2017,1,10,15,1),(2017,1,10,9,2),(2017,1,10,10,1),(2017,1,10,3,1),(2017,1,10,4,2),(2017,1,11,7,1),(2017,1,11,9,2),(2017,1,11,11,1),(2017,1,11,3,2),(2017,1,11,1,2),(2017,1,11,4,3),(2017,1,11,12,1),(2017,1,11,5,3),(2017,1,11,6,5),(2017,1,12,9,3),(2017,1,12,10,4),(2017,1,12,11,4),(2017,1,12,3,3),(2017,1,12,1,8),(2017,1,12,4,7),(2017,1,12,12,9),(2017,1,12,5,14),(2017,1,12,6,32),(2017,1,13,2,4),(2017,1,13,10,1),(2017,1,14,7,1),(2017,1,15,3,1),(2017,1,15,4,1),(2017,1,16,9,1),(2017,1,17,16,1),(2017,1,17,1,1),(2017,1,17,4,3),(2017,1,17,5,1),(2017,1,19,1,1),(2017,1,20,8,1),(2017,1,20,10,3),(2017,1,33,13,1),(2017,1,34,11,2),(2017,1,34,1,1),(2017,1,34,12,1),(2017,1,22,14,1),(2017,1,22,15,2),(2017,1,22,8,3),(2017,1,22,2,3),(2017,1,22,13,3),(2017,1,22,7,1),(2017,1,22,10,2),(2017,1,22,11,6),(2017,1,22,3,1),(2017,1,22,1,1),(2017,1,22,4,1),(2017,1,23,9,2),(2017,1,23,10,1),(2017,1,23,11,2),(2017,1,23,3,1),(2017,1,35,2,1),(2017,1,35,12,1),(2017,1,24,15,1),(2017,1,24,8,2),(2017,1,24,13,2),(2017,1,24,7,4),(2017,1,24,9,1),(2017,1,24,10,1),(2017,1,24,11,3),(2017,1,36,11,1),(2017,1,37,9,1),(2017,1,37,10,1),(2017,1,37,1,1),(2017,1,37,12,1),(2017,1,26,16,1),(2017,1,26,9,2),(2017,1,26,10,1),(2017,1,26,11,1),(2017,1,26,3,5),(2017,1,26,1,1),(2017,1,26,12,1),(2017,1,26,5,1),(2017,1,26,6,1),(2017,1,27,3,1),(2017,1,27,5,1),(2017,1,27,6,4),(2017,1,38,8,1),(2017,1,28,1,1),(2017,1,39,11,1),(2017,2,2,12,2),(2017,2,2,5,3),(2017,2,2,6,16),(2017,2,4,1,1),(2017,2,4,12,3),(2017,2,4,5,1),(2017,2,4,6,6),(2017,2,5,12,1),(2017,2,6,2,1),(2017,2,6,7,1),(2017,2,6,9,5),(2017,2,6,10,3),(2017,2,6,11,1),(2017,2,6,3,4),(2017,2,6,1,3),(2017,2,6,4,3),(2017,2,6,12,2),(2017,2,6,5,1),(2017,2,6,6,6),(2017,2,9,7,1),(2017,2,11,7,1),(2017,2,11,1,2),(2017,2,11,4,4),(2017,2,11,12,2),(2017,2,11,5,1),(2017,2,11,6,9),(2017,2,12,7,1),(2017,2,12,9,1),(2017,2,12,10,1),(2017,2,12,3,4),(2017,2,12,1,2),(2017,2,12,4,7),(2017,2,12,12,8),(2017,2,12,5,11),(2017,2,12,6,30),(2017,2,13,16,1),(2017,2,13,11,1),(2017,2,20,9,1),(2017,2,40,3,1),(2017,2,34,4,1),(2017,2,22,15,1),(2017,2,22,2,1),(2017,2,22,10,1),(2017,2,22,11,1),(2017,2,23,3,1),(2017,2,24,2,1),(2017,2,24,7,1),(2017,2,24,9,2),(2017,2,24,3,1),(2017,2,24,1,1),(2017,2,41,11,1),(2017,2,37,13,1),(2017,2,37,3,1),(2017,2,37,5,1),(2017,2,26,9,1),(2017,2,26,10,1),(2017,2,26,11,1),(2017,2,26,3,1),(2017,2,26,4,1),(2017,2,26,12,1),(2017,2,26,5,2),(2017,2,26,6,3),(2017,2,27,11,1),(2017,2,27,5,1),(2017,2,27,6,2),(2017,2,28,3,1),(2018,1,2,3,2),(2018,1,2,1,1),(2018,1,2,4,1),(2018,1,2,12,1),(2018,1,2,6,9),(2018,1,4,11,1),(2018,1,4,4,1),(2018,1,4,6,2),(2018,1,5,6,1),(2018,1,31,13,1),(2018,1,31,9,1),(2018,1,6,8,1),(2018,1,6,2,1),(2018,1,6,9,4),(2018,1,6,10,2),(2018,1,6,11,2),(2018,1,6,3,6),(2018,1,6,1,3),(2018,1,6,4,3),(2018,1,6,12,4),(2018,1,6,5,5),(2018,1,6,6,2),(2018,1,7,3,1),(2018,1,7,4,1),(2018,1,8,9,1),(2018,1,8,11,1),(2018,1,8,3,1),(2018,1,8,1,1),(2018,1,9,3,1),(2018,1,10,14,3),(2018,1,10,8,1),(2018,1,10,2,2),(2018,1,10,9,1),(2018,1,10,10,4),(2018,1,10,11,2),(2018,1,10,3,2),(2018,1,10,1,1),(2018,1,10,4,2),(2018,1,11,13,1),(2018,1,11,10,2),(2018,1,11,12,1),(2018,1,11,6,3),(2018,1,12,14,1),(2018,1,12,8,1),(2018,1,12,13,2),(2018,1,12,7,1),(2018,1,12,9,3),(2018,1,12,10,1),(2018,1,12,11,5),(2018,1,12,3,9),(2018,1,12,1,6),(2018,1,12,4,8),(2018,1,12,12,8),(2018,1,12,5,19),(2018,1,12,6,27),(2018,1,13,2,1),(2018,1,13,7,1),(2018,1,13,9,1),(2018,1,14,7,1),(2018,1,15,7,1),(2018,1,15,10,1),(2018,1,15,11,1),(2018,1,42,9,1),(2018,1,16,2,1),(2018,1,16,13,2),(2018,1,16,7,1),(2018,1,17,11,1),(2018,1,17,6,1),(2018,1,18,13,1),(2018,1,19,4,1),(2018,1,20,13,1),(2018,1,20,10,1),(2018,1,20,11,1),(2018,1,20,1,1),(2018,1,21,17,1),(2018,1,34,11,2),(2018,1,34,1,1),(2018,1,34,12,1),(2018,1,34,6,1),(2018,1,32,13,1),(2018,1,22,14,1),(2018,1,22,2,1),(2018,1,22,13,7),(2018,1,22,7,3),(2018,1,22,10,3),(2018,1,22,11,3),(2018,1,22,1,2),(2018,1,22,4,2),(2018,1,22,6,1),(2018,1,23,2,3),(2018,1,23,13,1),(2018,1,23,7,2),(2018,1,23,11,4),(2018,1,23,3,1),(2018,1,23,1,2),(2018,1,24,14,2),(2018,1,24,15,2),(2018,1,24,8,2),(2018,1,24,2,2),(2018,1,24,7,3),(2018,1,24,9,5),(2018,1,24,10,1),(2018,1,24,11,1),(2018,1,24,3,2),(2018,1,24,1,2),(2018,1,24,4,3),(2018,1,24,12,4),(2018,1,25,17,1),(2018,1,25,14,1),(2018,1,37,7,1),(2018,1,37,9,1),(2018,1,37,1,1),(2018,1,37,6,1),(2018,1,26,16,1),(2018,1,26,15,1),(2018,1,26,9,3),(2018,1,26,11,3),(2018,1,26,3,3),(2018,1,26,1,2),(2018,1,26,4,1),(2018,1,26,12,5),(2018,1,26,5,1),(2018,1,26,6,3),(2018,1,27,13,1),(2018,1,27,11,1),(2018,1,27,3,1),(2018,1,27,4,1),(2018,1,27,5,4),(2018,1,27,6,8),(2018,1,29,8,1),(2018,1,29,7,1),(2018,1,29,9,1),(2018,1,29,3,1),(2018,1,29,5,1),(2018,1,39,3,1),(2018,1,43,11,1),(2018,2,2,14,1),(2018,2,2,1,1),(2018,2,2,12,1),(2018,2,2,5,4),(2018,2,2,6,6),(2018,2,3,5,1),(2018,2,4,1,1),(2018,2,4,4,1),(2018,2,4,12,1),(2018,2,4,6,1),(2018,2,5,4,1),(2018,2,5,5,2),(2018,2,5,6,1),(2018,2,6,9,2),(2018,2,6,10,1),(2018,2,6,3,1),(2018,2,6,1,3),(2018,2,6,4,2),(2018,2,6,12,1),(2018,2,6,5,4),(2018,2,6,6,2),(2018,2,11,12,1),(2018,2,11,5,2),(2018,2,11,6,4),(2018,2,12,9,1),(2018,2,12,11,1),(2018,2,12,3,2),(2018,2,12,1,2),(2018,2,12,4,3),(2018,2,12,12,9),(2018,2,12,5,17),(2018,2,12,6,53),(2018,2,13,16,1),(2018,2,20,9,1),(2018,2,44,4,1),(2018,2,34,10,1),(2018,2,22,13,1),(2018,2,22,9,1),(2018,2,24,2,2),(2018,2,24,9,2),(2018,2,24,11,4),(2018,2,24,1,3),(2018,2,24,12,1),(2018,2,24,6,1),(2018,2,25,16,1),(2018,2,25,8,1),(2018,2,37,5,1),(2018,2,37,6,1),(2018,2,26,9,2),(2018,2,26,1,4),(2018,2,26,4,1),(2018,2,26,12,2),(2018,2,26,5,1),(2018,2,26,6,3),(2018,2,27,8,1),(2018,2,27,4,1),(2018,2,27,5,1),(2018,2,27,6,4),(2019,1,2,10,1),(2019,1,2,11,2),(2019,1,2,4,2),(2019,1,2,12,1),(2019,1,2,6,4),(2019,1,45,7,1),(2019,1,4,6,1),(2019,1,31,1,1),(2019,1,6,16,1),(2019,1,6,13,1),(2019,1,6,7,2),(2019,1,6,9,3),(2019,1,6,10,3),(2019,1,6,11,3),(2019,1,6,3,6),(2019,1,6,1,2),(2019,1,6,4,6),(2019,1,6,12,3),(2019,1,6,5,1),(2019,1,6,6,6),(2019,1,7,11,1),(2019,1,8,15,1),(2019,1,8,8,1),(2019,1,8,13,1),(2019,1,8,3,1),(2019,1,8,1,1),(2019,1,9,8,2),(2019,1,9,7,1),(2019,1,9,10,1),(2019,1,10,14,1),(2019,1,10,15,1),(2019,1,10,9,2),(2019,1,10,10,2),(2019,1,10,11,2),(2019,1,10,3,1),(2019,1,10,1,1),(2019,1,10,4,1),(2019,1,11,11,1),(2019,1,11,3,1),(2019,1,11,4,1),(2019,1,11,12,1),(2019,1,11,5,1),(2019,1,11,6,1),(2019,1,12,2,1),(2019,1,12,13,1),(2019,1,12,7,3),(2019,1,12,9,6),(2019,1,12,10,5),(2019,1,12,11,6),(2019,1,12,3,8),(2019,1,12,1,5),(2019,1,12,4,7),(2019,1,12,12,15),(2019,1,12,5,10),(2019,1,12,6,29),(2019,1,13,7,1),(2019,1,13,9,1),(2019,1,13,10,1),(2019,1,13,4,1),(2019,1,15,9,1),(2019,1,15,11,1),(2019,1,15,12,1),(2019,1,42,15,1),(2019,1,42,11,1),(2019,1,16,14,1),(2019,1,16,7,1),(2019,1,16,9,1),(2019,1,46,4,1),(2019,1,17,5,1),(2019,1,19,10,1),(2019,1,20,15,3),(2019,1,20,8,2),(2019,1,20,13,1),(2019,1,20,7,1),(2019,1,34,2,1),(2019,1,34,10,1),(2019,1,34,1,4),(2019,1,34,4,1),(2019,1,34,6,1),(2019,1,32,17,1),(2019,1,47,10,1),(2019,1,22,15,1),(2019,1,22,7,4),(2019,1,22,9,1),(2019,1,22,3,2),(2019,1,22,12,3),(2019,1,23,8,1),(2019,1,23,2,1),(2019,1,23,10,2),(2019,1,23,11,2),(2019,1,23,3,3),(2019,1,23,1,1),(2019,1,35,8,1),(2019,1,24,14,2),(2019,1,24,15,1),(2019,1,24,2,2),(2019,1,24,13,2),(2019,1,24,7,2),(2019,1,24,9,4),(2019,1,24,10,2),(2019,1,24,11,3),(2019,1,24,3,3),(2019,1,24,1,2),(2019,1,24,4,1),(2019,1,41,19,1),(2019,1,25,2,1),(2019,1,25,10,1),(2019,1,25,4,2),(2019,1,25,12,1),(2019,1,37,10,4),(2019,1,37,12,4),(2019,1,37,6,1),(2019,1,26,9,1),(2019,1,26,10,1),(2019,1,26,3,2),(2019,1,26,4,3),(2019,1,26,12,2),(2019,1,26,5,1),(2019,1,26,6,2),(2019,1,27,16,1),(2019,1,27,10,2),(2019,1,27,1,1),(2019,1,27,5,3),(2019,1,38,13,1),(2019,1,30,13,1),(2019,2,2,4,1),(2019,2,2,12,1),(2019,2,2,5,1),(2019,2,2,6,3),(2019,2,4,6,1),(2019,2,6,7,2),(2019,2,6,11,4),(2019,2,6,1,4),(2019,2,6,4,3),(2019,2,6,12,2),(2019,2,6,5,4),(2019,2,6,6,1),(2019,2,9,7,1),(2019,2,10,7,1),(2019,2,10,1,2),(2019,2,10,6,1),(2019,2,11,3,1),(2019,2,11,6,2),(2019,2,12,13,1),(2019,2,12,7,1),(2019,2,12,9,2),(2019,2,12,11,1),(2019,2,12,3,2),(2019,2,12,1,4),(2019,2,12,4,2),(2019,2,12,12,17),(2019,2,12,5,17),(2019,2,12,6,31),(2019,2,16,2,1),(2019,2,16,7,1),(2019,2,32,2,1),(2019,2,32,1,1),(2019,2,22,17,1),(2019,2,22,14,1),(2019,2,22,15,1),(2019,2,22,2,1),(2019,2,22,10,2),(2019,2,23,9,1),(2019,2,24,2,2),(2019,2,24,13,1),(2019,2,24,7,2),(2019,2,24,10,1),(2019,2,24,11,1),(2019,2,24,3,2),(2019,2,24,1,1),(2019,2,24,4,1),(2019,2,37,10,1),(2019,2,37,5,1),(2019,2,37,6,2),(2019,2,26,7,1),(2019,2,26,10,1),(2019,2,26,11,2),(2019,2,26,1,1),(2019,2,26,4,1),(2019,2,26,12,3),(2019,2,26,6,3),(2019,2,27,3,2),(2019,2,27,5,3),(2019,2,27,6,2),(2019,2,28,10,1),(2020,1,2,10,1),(2020,1,2,4,1),(2020,1,2,12,1),(2020,1,2,6,1),(2020,1,4,4,1),(2020,1,6,17,1),(2020,1,6,2,1),(2020,1,6,9,3),(2020,1,6,10,1),(2020,1,6,11,4),(2020,1,6,3,3),(2020,1,6,1,1),(2020,1,6,4,3),(2020,1,6,12,2),(2020,1,6,5,1),(2020,1,7,9,2),(2020,1,7,4,3),(2020,1,7,12,1),(2020,1,8,14,1),(2020,1,8,13,1),(2020,1,8,3,1),(2020,1,8,1,1),(2020,1,8,5,1),(2020,1,8,6,1),(2020,1,9,9,1),(2020,1,9,11,1),(2020,1,10,14,1),(2020,1,10,2,1),(2020,1,10,13,3),(2020,1,10,7,1),(2020,1,10,9,1),(2020,1,10,11,1),(2020,1,10,3,1),(2020,1,10,1,2),(2020,1,10,12,3),(2020,1,11,1,1),(2020,1,11,6,1),(2020,1,12,15,1),(2020,1,12,13,4),(2020,1,12,7,6),(2020,1,12,9,3),(2020,1,12,10,4),(2020,1,12,11,3),(2020,1,12,3,7),(2020,1,12,1,8),(2020,1,12,4,16),(2020,1,12,12,13),(2020,1,12,5,23),(2020,1,12,6,34),(2020,1,13,1,1),(2020,1,15,8,1),(2020,1,16,15,2),(2020,1,16,8,1),(2020,1,16,7,1),(2020,1,16,9,1),(2020,1,16,1,1),(2020,1,17,11,1),(2020,1,17,1,2),(2020,1,18,7,1),(2020,1,18,3,1),(2020,1,19,6,1),(2020,1,20,8,1),(2020,1,20,13,1),(2020,1,48,12,1),(2020,1,49,12,1),(2020,1,40,18,1),(2020,1,34,9,1),(2020,1,34,1,1),(2020,1,22,2,1),(2020,1,22,9,1),(2020,1,22,10,2),(2020,1,23,2,1),(2020,1,23,10,1),(2020,1,23,11,1),(2020,1,35,5,1),(2020,1,24,17,1),(2020,1,24,15,1),(2020,1,24,2,4),(2020,1,24,13,5),(2020,1,24,7,7),(2020,1,24,9,5),(2020,1,24,10,4),(2020,1,24,11,2),(2020,1,24,3,5),(2020,1,24,1,2),(2020,1,24,4,2),(2020,1,24,12,2),(2020,1,24,5,2),(2020,1,25,15,1),(2020,1,25,8,1),(2020,1,25,13,1),(2020,1,25,9,1),(2020,1,25,3,1),(2020,1,37,7,1),(2020,1,37,10,1),(2020,1,37,1,2),(2020,1,37,6,1),(2020,1,26,11,1),(2020,1,26,3,2),(2020,1,26,4,1),(2020,1,26,5,2),(2020,1,26,6,2),(2020,1,27,16,1),(2020,1,27,3,2),(2020,1,27,5,1),(2020,1,27,6,3),(2020,1,28,2,1),(2020,1,28,10,1),(2020,1,29,18,2),(2020,2,2,12,1),(2020,2,2,5,3),(2020,2,2,6,3),(2020,2,4,5,1),(2020,2,5,6,1),(2020,2,31,12,1),(2020,2,6,7,2),(2020,2,6,9,1),(2020,2,6,11,1),(2020,2,6,3,1),(2020,2,6,1,4),(2020,2,6,4,5),(2020,2,6,12,1),(2020,2,6,6,3),(2020,2,7,11,1),(2020,2,9,9,1),(2020,2,9,3,1),(2020,2,10,13,1),(2020,2,10,9,1),(2020,2,10,10,1),(2020,2,10,11,1),(2020,2,10,3,1),(2020,2,10,5,1),(2020,2,11,4,1),(2020,2,11,5,1),(2020,2,12,2,2),(2020,2,12,7,1),(2020,2,12,9,1),(2020,2,12,10,2),(2020,2,12,11,2),(2020,2,12,3,2),(2020,2,12,1,5),(2020,2,12,4,8),(2020,2,12,12,14),(2020,2,12,5,15),(2020,2,12,6,39),(2020,2,16,11,1),(2020,2,44,10,1),(2020,2,22,7,1),(2020,2,22,11,1),(2020,2,22,1,1),(2020,2,24,14,1),(2020,2,24,13,2),(2020,2,24,7,2),(2020,2,24,9,1),(2020,2,24,10,1),(2020,2,24,11,2),(2020,2,24,1,2),(2020,2,24,4,2),(2020,2,25,16,1),(2020,2,25,14,1),(2020,2,25,15,1),(2020,2,37,3,1),(2020,2,37,1,1),(2020,2,37,4,1),(2020,2,26,10,2),(2020,2,26,11,2),(2020,2,26,3,1),(2020,2,26,1,1),(2020,2,26,4,1),(2020,2,26,12,1),(2020,2,26,5,2),(2020,2,26,6,1),(2020,2,27,12,2),(2020,2,27,5,2),(2020,2,27,6,3),(2020,2,28,3,1),(2020,2,29,10,1);
/*!40000 ALTER TABLE `deaths` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gender`
--

DROP TABLE IF EXISTS `gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gender` (
  `id` int NOT NULL AUTO_INCREMENT,
  `value` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gender`
--

LOCK TABLES `gender` WRITE;
/*!40000 ALTER TABLE `gender` DISABLE KEYS */;
INSERT INTO `gender` VALUES (1,'Male'),(2,'Female');
/*!40000 ALTER TABLE `gender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'deaths'
--
/*SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN*/;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-19 20:12:43
