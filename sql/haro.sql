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

--
-- Table structure for table `debitor`
--

DROP TABLE IF EXISTS `debitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `debitor` (
  `KdNr` varchar(5) NOT NULL,
  `KdName` char(50) DEFAULT NULL,
  `KdStrasse` char(20) DEFAULT NULL,
  `KdPLZ` char(5) DEFAULT NULL,
  `KdOrt` char(25) DEFAULT NULL,
  `Geboren` date DEFAULT NULL,
  `Gesamtgewicht` double(10,2) DEFAULT NULL,
  PRIMARY KEY (`KdNr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `debitor`
--

LOCK TABLES `debitor` WRITE;
/*!40000 ALTER TABLE `debitor` DISABLE KEYS */;
INSERT INTO `debitor` VALUES ('24001','Baumarkt M├╝ller','Postfach 134','85579','Neubiberg',NULL,NULL),('24002','Friedrich Kunst','Mausweg 24','72510','Stetten a.k.M.',NULL,NULL),('24003','BAU MIT GmbH','Im Grund 11','86657','Bissingen',NULL,NULL),('24004','Otto Weber','Postfach 888','78727','Oberndorf a.N.',NULL,NULL),('24005','Peter Helferich','Stuttgarter Str. 44','75394','Oberreichenbach',NULL,NULL),('24006','Bau und Ausbau GmbH','Postfach 8573','71106','Magstadt',NULL,NULL),('24007','Hahn & Widmann','Postfach 2112','72336','Balingen',NULL,NULL);
/*!40000 ALTER TABLE `debitor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kreditor`
--

DROP TABLE IF EXISTS `kreditor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kreditor` (
  `LiefNr` varchar(5) NOT NULL,
  `Name` char(50) DEFAULT NULL,
  `Strasse` char(20) DEFAULT NULL,
  `PLZ` char(5) DEFAULT NULL,
  `Ort` char(25) DEFAULT NULL,
  `Umsatz` decimal(10,2) DEFAULT NULL,
  `Anzahl_Mitarbeiter` int(11) DEFAULT NULL,
  PRIMARY KEY (`LiefNr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kreditor`
--

LOCK TABLES `kreditor` WRITE;
/*!40000 ALTER TABLE `kreditor` DISABLE KEYS */;
INSERT INTO `kreditor` VALUES ('00000','Eigenfertigung',NULL,NULL,NULL,4445.60,NULL),('44001','Friedrich Walter AG','MÔö£ÔòØhlstr. 8','72072','TÔö£ÔòØbingen',30000.00,NULL),('44002','Kugler und Grauer','KÔö£├énigstr. 13','70173','Stuttgart',24000.00,NULL),('44003','Jonas Brauer Gmbh','Hagenweg 12','72766','Reutlingen',6500.00,NULL),('44004','Ulmer Metallbau GmbH','Am Marktplatz 1','72108','Rottenburg',3200.00,NULL),('44005','Georg Liebherr und SÔö£├éhne','Goethestr. 5','72070','TÔö£ÔòØbingen',34000.00,NULL),('44006','Kaiser & Franz OHG','Dorfstr. 1','72108','Rottenburg',6500.00,NULL),('44007','Weinmann GmbH','Fliederstr. 35','72379','Hechingen',28000.00,NULL);
/*!40000 ALTER TABLE `kreditor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-17 14:31:22
