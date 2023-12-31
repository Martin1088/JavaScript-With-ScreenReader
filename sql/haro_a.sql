-- MariaDB dump 10.19  Distrib 10.4.21-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: haro01
-- ------------------------------------------------------
-- Server version	10.4.21-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `artikel`
--

DROP TABLE IF EXISTS `artikel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artikel` (
  `artikelNr` varchar(5) NOT NULL,
  `bezeichnung` char(50) DEFAULT NULL,
  `Lager` enum('R1','T1','F1','sonstiges') CHARACTER SET utf8mb4 DEFAULT NULL,
  `teileArt` char(1) DEFAULT NULL,
  `BeschaffungsArt` set('E','F') CHARACTER SET utf8mb4 DEFAULT NULL,
  `ekPreis` decimal(10,2) DEFAULT NULL,
  `VKPreis` decimal(10,2) DEFAULT NULL,
  `bestand` decimal(10,2) DEFAULT NULL,
  `MBest` decimal(10,2) DEFAULT NULL,
  `LiefNr` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`artikelNr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artikel`
--

LOCK TABLES `artikel` WRITE;
/*!40000 ALTER TABLE `artikel` DISABLE KEYS */;
INSERT INTO `artikel` VALUES ('10000','Tischstativ','F1','E','F',3.46,NULL,NULL,NULL,NULL),('10001','Stativ-Oberteil','T1','T','',2.50,NULL,NULL,NULL,NULL),('10002','Stativ-Fu├ƒ','T1','T','F',0.50,NULL,NULL,NULL,NULL),('1003','Sativ-Gewinde','T1','T','F',0.05,NULL,NULL,NULL,NULL),('1004','Handlupe 900mm','F1','E','E',9.59,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `artikel` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-17 14:28:48
