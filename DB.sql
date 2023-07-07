-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: reservationapp
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `idadmin` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idadmin`),
  UNIQUE KEY `idadmin_UNIQUE` (`idadmin`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'berkay','berkay'),(2,'admin','admin');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rez`
--

DROP TABLE IF EXISTS `rez`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rez` (
  `id_res` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` varchar(10) DEFAULT NULL,
  `part_size` varchar(45) DEFAULT NULL,
  `message` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id_res`),
  UNIQUE KEY `id_res_UNIQUE` (`id_res`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rez`
--

LOCK TABLES `rez` WRITE;
/*!40000 ALTER TABLE `rez` DISABLE KEYS */;
INSERT INTO `rez` VALUES (20,'Berkay Koçak','berkaykocak1707@gmail.com','05319576193','2023-07-12','17:52','2-4','Deneme'),(21,'Berkay Koçak','berkaykocak1707@gmail.com','05319576193','2023-07-01','15:02','1-2','Za'),(22,'Berkay Koçak','berkaykocak1707@gmail.com','05319576193','2023-07-01','19:02','1-2','a'),(23,'Berkay Koçak','berkaykocak1707@gmail.com','05319576193','2023-07-19','17:08','2-4','Za'),(24,'Berkay Koçak','berkaykocak1707@gmail.com','05319576193','2023-07-01','18:13','2-4','Deneme'),(25,'Berkay Koçak','berkaykocak1707@gmail.com','05319576193','2023-07-01','18:28','1-2','try'),(26,'Berkay Koçak','berkaykocak1707@gmail.com','05319576193','2023-07-01','09:32','2-4','saddsa'),(27,'Berkay Koçak','berkaykocak1707@gmail.com','05319576193','2023-07-03','17:36','2-4','dsasad'),(28,'Berkay Koçak','berkaykocak1707@gmail.com','05319576193','2023-07-07','18:37','1-2','TryCatch'),(29,'Berkay Koçak','berkaykocak1707@gmail.com','05319576193','2023-07-07','16:38','1-2','TR'),(30,'Berkay Koçak','berkaykocak1707@gmail.com','05319576193','2023-07-13','19:45','1-2','Deneme');
/*!40000 ALTER TABLE `rez` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-07 19:04:52
