-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: fleetmanage
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `ftable`
--

DROP TABLE IF EXISTS `ftable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ftable` (
  `registration` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `make` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `fueltype` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `tankcapacity` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `previousowner` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `designatedbranch` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `department` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `driver` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ftable`
--

LOCK TABLES `ftable` WRITE;
/*!40000 ALTER TABLE `ftable` DISABLE KEYS */;
INSERT INTO `ftable` VALUES ('MLO255MP','Mercedes Benz','Actros','Diesel','1300L','N/A','Pretoria','ETS pta','Mduduzi'),('TYM455MP','Mercedes Benz','Act','Diesel','1420L','Fincham','Witbank','ETS wit','Cindo'),('VVM500GP','Mercedes Benz','The Actros','Diesel','1500L','Peter','Pretoria','ETS pta','Lindo'),('WEE033MP','VW','Constellation','Diesel','2000L','Vikzo ent','KZN','ETS kzn','Malaka'),('OPP787MP','Toyota','Hilux','Petrol','500L','Fana','Pretoria','ETS pta','Venter'),('GHG890MP','Mercedes Benz','X Class','Petrol','480L','N/A','Pretoria','ETS pta','Tiago');
/*!40000 ALTER TABLE `ftable` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-15 17:04:06
