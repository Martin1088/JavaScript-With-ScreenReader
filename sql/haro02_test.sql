-- MariaDB dump 10.19  Distrib 10.4.21-MariaDB,
--
-- Host: localhost    Database: haro02
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
-- Temporary table structure for view `01bestandsliste`
--

DROP TABLE IF EXISTS `01bestandsliste`;
/*!50001 DROP VIEW IF EXISTS `01bestandsliste`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `01bestandsliste` (
  `ArtikelNr` tinyint NOT NULL,
  `Bezeichnung` tinyint NOT NULL,
  `Bestand` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `artikel`
--

DROP TABLE IF EXISTS `artikel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artikel` (
  `ArtikelNr` varchar(5) NOT NULL COMMENT 'Primärschlüssel; ab 10000',
  `Bezeichnung` varchar(35) DEFAULT NULL,
  `Lager` varchar(2) DEFAULT NULL COMMENT 'R1=Rohstofflager, T1=Einzelteilelager, F1= Fertigteilelager',
  `TeileArt` varchar(1) DEFAULT NULL COMMENT 'R = Rohstoffe, E = Erzeugnisse,  T= Einzelteile, H = Handelsware',
  `BeschaffungsArt` varchar(1) DEFAULT NULL COMMENT 'E= Eigenfertigung, F = Fremdbezug',
  `EKPreis` decimal(19,2) DEFAULT NULL COMMENT 'Einstandspreis zu Herstellkosten',
  `VerkPreis` decimal(19,2) DEFAULT 0.00,
  `Bestand` float DEFAULT 0 COMMENT 'Lagerbestand',
  `MBest` float DEFAULT NULL COMMENT 'Meldebestand, wenn erreicht, wird neu bestellt',
  `NBMenge` float DEFAULT 0 COMMENT 'Übliche Bestellmenge',
  `LiefNr` varchar(5) DEFAULT NULL COMMENT 'des Lieferanten, bei dem zuletzt bestellt wurde',
  `Absatz` float DEFAULT 0 COMMENT 'Verbrauch / bzw. Auslieferung in Mengeneinheiten',
  `ME` varchar(2) DEFAULT NULL COMMENT 'Mengeneinheiten',
  `ABC` varchar(1) DEFAULT NULL COMMENT 'A, B, C nach ABC-Analyse',
  `Status` varchar(1) DEFAULT NULL COMMENT '1 = aktiv; 2 = inaktiv',
  `UmsatzEK` decimal(19,2) DEFAULT 0.00,
  PRIMARY KEY (`ArtikelNr`),
  KEY `Bezeichnung` (`Bezeichnung`),
  KEY `UmsatzEK` (`UmsatzEK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artikel`
--

LOCK TABLES `artikel` WRITE;
/*!40000 ALTER TABLE `artikel` DISABLE KEYS */;
INSERT INTO `artikel` VALUES ('10000','Tischstativ','F1','E','F',3.46,NULL,150,200.5,401,'44001',2870,NULL,'C',NULL,9901.50),('10001','Stativ-Oberteil','T1','T','E',2.50,NULL,220,500,1000,'00000',2506,NULL,'C',NULL,6265.00),('10002','Stativ-Fuß','T1','T','F',0.50,NULL,400,1500,3000,'44007',7500,NULL,'C',NULL,3750.00),('10003','Stativ-Gewinde','T1','T','F',0.05,NULL,425,500,1000,'44007',2500,NULL,'C',NULL,125.00),('10004','Handlupe 90 mm','F1','E','E',9.59,NULL,300,200,400,'00000',6050,NULL,'A',NULL,58019.50),('10005','Lupe 90 mm','T1','T','F',4.50,NULL,250,500,1000,'44007',6000,NULL,'A',NULL,27000.00),('10006','Lupengriff','T1','T','F',1.50,NULL,280,500,1000,'44007',6000,NULL,'C',NULL,9000.00),('10007','Kerzenschlüssel normal','F1','E','E',7.50,NULL,400,300,600,'00000',7500,NULL,'A',NULL,56250.00),('10008','Kerzenschlüssel lang','F1','E','E',9.50,NULL,350,150,300,'00000',2400,NULL,'A',NULL,22800.00),('10009','Kerzenschlüssel Mittelteil n','T1','T','F',1.45,NULL,525,200,400,'44005',7500,NULL,'C',NULL,10875.00),('10010','Kerzenschlüssel Mittelteil l','T1','T','F',1.50,NULL,434.5,200,400,'44005',2400,NULL,'C',NULL,3600.00),('10011','Kerzenschlüsselhalter 1 n','T1','T','F',1.20,NULL,400,200,400,'44005',7500,NULL,'C',NULL,9000.00),('10012','Kerzenschlüsselhalter 2 n','T1','T','F',1.20,NULL,325,200,400,'44005',7500,NULL,'C',NULL,9000.00),('10013','Kerzenschlüsselhalter 3 n','T1','T','F',1.20,NULL,300,200,400,'44005',7500,NULL,'C',NULL,9000.00),('10014','Kerzenschlüsselhalter 4 n','T1','T','F',1.50,NULL,300,200,400,'44005',7500,NULL,'C',NULL,11250.00),('10015','Kerzenschlüsselhalter 1 l','T1','T','F',1.50,NULL,150,200,400,'44005',2400,NULL,'C',NULL,3600.00),('10016','Kerzenschlüsselhalter 2 l','T1','T','F',1.50,NULL,180,200,400,'44005',2400,NULL,'C',NULL,3600.00),('10017','Kerzenschlüsselhalter 3 l','T1','T','F',1.50,NULL,230,200,400,'44005',2400,NULL,'C',NULL,3600.00),('10018','Kerzenschlüsselhalter 4 l','T1','T','F',2.00,NULL,340,200,400,'44005',2400,NULL,'C',NULL,4800.00),('10019','Vollisiolierte 4-mm-Buchse','F1','E','E',2.98,NULL,2000,500,1000,'00000',12000,NULL,'A',NULL,35760.00),('10020','Buchse mit Lötanschluß','T1','T','F',2.10,NULL,1200,200,400,'44005',10000,NULL,'A',NULL,21000.00),('10021','Unterlegscheibe 8 mm','T1','T','F',0.05,NULL,2700,800,1600,'44005',25000,NULL,'C',NULL,1250.00),('10022','Mutter 8 mm','T1','T','F',0.15,NULL,500,400,800,'44005',12000,NULL,'C',NULL,1800.00),('10023','Polklemme mit 4 mm Buchse','F1','E','E',2.98,NULL,900,150,300,'00000',600,NULL,'C',NULL,1788.00),('10024','Buchse mit geriffeltem Kopf','T1','T','F',2.10,NULL,750,400,800,'44005',1600,NULL,'C',NULL,3360.00),('10025','Mutter M4 35 mm ','T1','T','F',0.15,NULL,3500,400,800,'44005',1600,NULL,'C',NULL,240.00),('10026','Unterlegscheibe 4 mm','T1','T','F',0.05,NULL,3800,800,1600,'44005',3200,NULL,'C',NULL,160.00),('10027','Lötfahne','T1','T','F',0.05,NULL,1200,200,400,'44005',800,NULL,'C',NULL,40.00),('10028','Abgleichschraubendreher-Satz','F1','E','E',12.95,NULL,680,300,600,'00000',1200,NULL,'A',NULL,15540.00),('10029','Abgleichschraubengriff','T1','T','F',2.15,NULL,440,200,400,'44005',800,NULL,'C',NULL,1720.00),('10030','Schraubendreher: 1,5 mm ','T1','T','F',1.00,NULL,290,200,400,'44005',800,NULL,'C',NULL,800.00),('10031','Schraubendreher: 1,8 mm','T1','T','F',1.00,NULL,220,200,400,'44005',800,NULL,'C',NULL,800.00),('10032','Schraubendreher: 2,0 mm ','T1','T','F',1.00,NULL,350,200,400,'44005',800,NULL,'C',NULL,800.00),('10033','Schraubendreher: 2,5 mm ','T1','T','F',1.00,NULL,360,200,400,'44005',800,NULL,'C',NULL,800.00),('10034','Schraubendreher: 3,0 mm ','T1','T','F',1.00,NULL,300,200,400,'44005',800,NULL,'C',NULL,800.00),('10035','Platinenhalter','F1','E','E',24.50,NULL,450,250,500,'00000',1000,NULL,'A',NULL,24500.00),('10036','Platinenhalter-Fuß','T1','T','F',7.00,NULL,560,200,400,'44005',800,NULL,'C',NULL,5600.00),('10037','Spindel','T1','T','F',2.45,NULL,550,200,400,'44005',800,NULL,'C',NULL,1960.00),('10038','Spindelstift','T1','T','F',0.45,NULL,1200,200,400,'44005',800,NULL,'C',NULL,360.00),('10039','Platinenhalter-Klemme','T1','T','F',0.80,NULL,650,200,400,'44005',800,NULL,'C',NULL,640.00),('10040','Platinenhalter-Querstift','T1','T','F',0.65,NULL,650,200,400,'44005',800,NULL,'C',NULL,520.00),('10041','Platinenhalter-Längsstift','T1','T','F',2.35,NULL,650,200,400,'44005',800,NULL,'C',NULL,1880.00),('10042','Platinenhalter-Feder','T1','T','F',0.20,NULL,650,200,400,'44005',800,NULL,'C',NULL,160.00),('10043','Platinenhalter-U-Schiene','T1','T','F',0.35,NULL,650,200,400,'44005',800,NULL,'C',NULL,280.00),('10044','Stahllaubsäge ','F1','E','E',5.45,NULL,1250,400,800,'00000',1600,NULL,'C',NULL,8720.00),('10045','Laubsägebogen 330 mm','T1','T','F',2.10,NULL,1300,400,800,'44005',1600,NULL,'C',NULL,3360.00),('10046','Federbacken verchromt','T1','T','F',0.25,NULL,550,400,800,'44005',1600,NULL,'C',NULL,400.00),('10047','Flügelschraube','T1','T','F',0.15,NULL,2000,800,1600,'44005',3200,NULL,'C',NULL,480.00),('10048','Laubsägegriff','T1','T','F',0.80,NULL,850,400,800,'44005',1600,NULL,'C',NULL,1280.00),('10049','Laubsägeblätter (12er Set)','F1','E','F',2.35,NULL,2400,600,1200,'44005',2400,NULL,'C',NULL,5640.00),('10050','Universal-Hobby-Säge','F1','E','E',5.95,NULL,1350,200,400,'00000',2500,NULL,'A',NULL,14875.00),('10051','Sägebogen mit Innengewinde','T1','T','F',2.10,NULL,1550,800,1600,'44005',3200,NULL,'C',NULL,6720.00),('10052','Hobbysägegriff','T1','T','F',1.20,NULL,1500,400,800,'44005',1600,NULL,'C',NULL,1920.00),('10053','Hobbysägeblätter (6er Set)','F1','H','F',3.25,NULL,20,50,100,'44005',3500,NULL,'C',NULL,11375.00),('10054','Laubsägetisch','F1','E','E',8.95,NULL,520,150,300,'00000',600,NULL,'C',NULL,5370.00),('10055','Haltezwinge 45 mm','F1','E','F',2.35,NULL,860,150,300,'44005',600,NULL,'C',NULL,1410.00),('10056','Isolier-Abstreifzange','F1','E','F',10.50,NULL,2400,250,500,'44005',1000,NULL,'C',NULL,10500.00),('10057','Adernendhülsen-Zange','F1','E','E',16.50,NULL,1750,220,440,'00000',880,NULL,'C',NULL,14520.00),('10058','Universal-Kabelzange','F1','E','E',6.45,NULL,1900,300,600,'00000',1500,NULL,'C',NULL,9675.00),('10059','Schraubendreher-Set','F1','E','E',11.20,NULL,1800,180,360,'00000',720,NULL,'C',NULL,8064.00),('10060','Schlitz-Schraubendreher','T1','T','F',2.80,NULL,2250,200,400,'44005',800,NULL,'C',NULL,2240.00),('10061','Kreuz-Schraubendreher','T1','T','F',2.80,NULL,3150,200,400,'44005',800,NULL,'C',NULL,2240.00),('10062','Pozidriv-Schraubendreher','T1','T','F',2.80,NULL,2850,200,400,'44005',800,NULL,'C',NULL,2240.00),('10063','Knabber, ganzvernickelt','F1','E','E',19.95,NULL,1960,300,600,'00000',1200,NULL,'A',NULL,23940.00),('10064','Schneidbacken-Oberteil','T1','T','F',3.20,NULL,2450,200,400,'44005',800,NULL,'C',NULL,2560.00),('10065','Schneidbacken-Unterteil','T1','T','F',1.85,NULL,2450,200,400,'44005',800,NULL,'C',NULL,1480.00),('10066','Knabber-Zungenmesser','T1','T','F',7.80,NULL,3200,200,400,'44005',800,NULL,'C',NULL,6240.00),('10067','Knabbergriff','T1','T','F',2.10,NULL,1800,400,800,'44005',1600,NULL,'C',NULL,3360.00),('10068','Elektronik-Seitenschneider','F1','H','F',3.65,NULL,750,150,300,'44005',600,NULL,'C',NULL,2190.00),('10069','Elektronik-Flachzange','F1','H','F',3.65,NULL,2800,250,500,'44001',1000,NULL,'C',NULL,3650.00),('10070','Elektronik-Halbrundzange','F1','H','F',3.65,NULL,1950,500,1000,'44005',2000,NULL,'C',NULL,7300.00),('10071','Loch- und Ösenzange','F1','E','E',12.95,NULL,2540,350,700,'00000',1400,NULL,'A',NULL,18130.00),('10072','Ösenzange-Locheinsätze','T1','T','F',3.65,NULL,4500,400,800,'44005',1600,NULL,'C',NULL,5840.00),('10073','Edelstahlzange spitz','F1','H','F',5.95,NULL,150,300,400,'44003',1200,NULL,'C',NULL,7140.00),('10074','Edelstahlzange rund','F1','H','F',6.50,NULL,150,300,600,'44005',1200,NULL,'C',NULL,7800.00),('10075','Edelstahlzange flach','F1','H','F',6.50,NULL,150,300,600,'44004',1200,NULL,'C',NULL,7800.00),('10076','Automatik-Abisolierzange','F1','H','F',4.95,NULL,100,250,500,'44006',1000,NULL,'C',NULL,4950.00),('10077','Elektronik-Super-Knips','F1','H','F',25.50,NULL,50,150,300,'44007',600,NULL,'A',NULL,15300.00),('10078','Kombizange 180 mm','F1','H','F',5.90,NULL,2370,400,800,'44005',1600,NULL,'C',NULL,9440.00),('10079','Seitenschneider 145 mm','F1','H','F',5.90,NULL,2650,350,700,'44008',1400,NULL,'C',NULL,8260.00),('10080','Telefonzange 200 mm','F1','H','F',5.90,NULL,1950,200,400,'44005',800,NULL,'C',NULL,4720.00),('10081','Mehrzweckzange','F1','H','F',18.50,NULL,4500,200,400,'44009',800,NULL,'A',NULL,14800.00),('10082','Sicherungsringe-Arbeitszange','F1','E','E',16.95,NULL,3150,400,800,'00000',1600,NULL,'A',NULL,27120.00),('10083','Sicherungsringeinsatz   45 °','T1','T','F',2.45,NULL,2200,800,1600,'44005',3200,NULL,'C',NULL,7840.00),('10084','Sicherungsringeinsatz   90 °','T1','T','F',2.45,NULL,2200,800,1600,'44005',3200,NULL,'C',NULL,7840.00),('10085','Sicherungsringeinsatz 180 °','T1','T','F',2.45,NULL,2300,800,1600,'44005',3200,NULL,'C',NULL,7840.00),('10086','Multifunktions-Crimpzange','F1','E','E',39.50,NULL,1150,150,300,'00000',600,NULL,'A',NULL,23700.00),('10087','Coax-Crimp-Einsatz','T1','T','F',17.50,NULL,1200,400,800,'44005',1600,NULL,'A',NULL,28000.00),('10088','Profi-Winkel mit Zunge','F1','H','F',29.50,NULL,1600,200,400,'44009',800,NULL,'A',NULL,23600.00),('10089','Elektronische Schieblehre','F1','H','F',99.80,NULL,450,300,600,'44009',1200,NULL,'A',NULL,119760.00),('10090','Kreis- und Ringschneider','F1','E','E',19.90,NULL,2750,200,400,'00000',800,NULL,'A',NULL,15920.00),('10091','Zentrierbohrer','T1','T','F',4.50,NULL,3560,400,800,'44005',1600,NULL,'C',NULL,7200.00),('10092','HSS-Messer für Ringschneider','T1','T','F',4.45,NULL,6500,800,1600,'44005',3200,NULL,'C',NULL,14240.00),('10093','Helping-Hand mit Linse','F1','E','E',10.00,NULL,700,100,200,'00000',400,NULL,'C',NULL,4000.00),('10094','Chrom-Knarre  1/4 Zoll','F1','H','F',6.95,NULL,960,200,400,'44005',800,NULL,'C',NULL,5560.00),('10095','Chrom-Knarre  3/8 Zoll','F1','H','F',10.45,NULL,1150,200,400,'44005',800,NULL,'C',NULL,8360.00),('10096','Chrom-Knarre  1/2 Zoll','F1','H','F',14.95,NULL,1250,200,400,'44005',800,NULL,'C',NULL,11960.00),('10097','Ratschen-Schraubenschlüssel','F1','H','F',39.90,NULL,2200,200,400,'44005',800,NULL,'A',NULL,31920.00),('10098','Trageständer für Flutlichtstrahler','F1','E','E',9.95,NULL,450,100,200,'00000',400,NULL,'C',NULL,3980.00),('10099','Montagebügel für Trageständer','T1','T','F',1.25,NULL,1200,200,400,'44005',800,NULL,'C',NULL,1000.00),('10100','Teleskopständer bis 2,5 m','F1','E','E',49.50,NULL,500,80,160,'00000',320,NULL,'A',NULL,15840.00),('11000','Stahlrohrtisch','F1','E','E',75.00,NULL,210,200,400,'00000',800,NULL,'A',NULL,60000.00),('11001','Boden','T1','T','F',2.50,NULL,500,400,800,'44001',600,NULL,'C',NULL,1500.00),('11002','Griff','T1','T','F',3.00,NULL,600,200,400,'44002',300,NULL,'C',NULL,900.00),('11003','Serviettenständer','F1','E','E',7.00,NULL,1200,1200,2400,'00000',4800,NULL,'A',NULL,33600.00),('11004','Oberteil','T1','T','E',2.00,NULL,460,350,700,'00000',1400,NULL,'C',NULL,2800.00),('11005','Haltebügel','T1','T','E',0.70,NULL,540,540,1080,'00000',2160,NULL,'C',NULL,1512.00),('11006','Griff','T1','T','F',0.80,NULL,220,220,440,'44002',300,NULL,'C',NULL,240.00),('11007','Unterteil','T1','T','E',3.50,NULL,110,110,220,'00000',440,NULL,'C',NULL,1540.00),('11008','Halteblech','T1','T','E',0.30,NULL,250,250,500,'00000',1000,NULL,'C',NULL,300.00),('11009','Fuß','T1','T','F',1.70,NULL,750,550,1100,'44001',600,NULL,'C',NULL,1020.00),('11010','Hohlniete','T1','T','F',0.45,NULL,500,350,700,'44003',450,NULL,'C',NULL,202.50),('11011','Mutter','T1','T','F',0.02,NULL,500,1200,2400,'44003',2100,NULL,'C',NULL,42.00),('11012','Querverbindung','T1','T','E',1.40,NULL,180,180,360,'00000',720,NULL,'C',NULL,1008.00),('11013','Hocker 52 * 52','F1','E','E',25.00,NULL,50,80,160,'00000',320,NULL,'C',NULL,8000.00),('11014','Stahlrohrgestell','T1','T','E',2.50,NULL,200,200,400,'00000',800,NULL,'C',NULL,2000.00),('11015','Sitzplatte','T1','T','F',9.50,NULL,150,250,500,'44004',500,NULL,'C',NULL,4750.00),('11016','Seitengestell','T1','T','E',2.30,NULL,180,180,360,'00000',720,NULL,'C',NULL,1656.00),('11017','Stuhlbein','T1','T','E',0.50,NULL,800,350,700,'00000',1400,NULL,'C',NULL,700.00),('11018','Querrohr','R1','R','F',0.75,NULL,24000,240,480,'44001',500,NULL,'C',NULL,375.00),('11019','Lasche','T1','T','F',1.55,NULL,330,330,660,'44001',2000,NULL,'C',NULL,3100.00),('11020','Winkelstahl','R1','R','F',0.45,NULL,22500,250,500,'44004',1000,NULL,'C',NULL,450.00),('11021','Querverbindung','T1','T','E',1.10,NULL,250,250,500,'00000',1000,NULL,'C',NULL,1100.00),('11022','Gleitfeder','T1','T','F',0.80,NULL,50,80,160,'44002',200,NULL,'C',NULL,160.00),('11023','Schraube M8 * 90','T1','T','F',0.80,NULL,20,80,160,'44005',800,NULL,'C',NULL,640.00),('11024','Seite komplett','T1','T','E',6.50,NULL,5,80,160,'00000',320,NULL,'C',NULL,2080.00),('11025','Antriebswelle','T1','T','E',200.00,NULL,10,80,160,'00000',320,NULL,'A',NULL,64000.00),('11026','Teilkasten','T1','T','F',18.50,NULL,50,80,160,'44006',300,NULL,'C',NULL,5550.00),('11027','Kasten','T1','T','E',25.00,NULL,250,250,500,'00000',1000,NULL,'A',NULL,25000.00),('11028','Schraube M8 * 80','T1','T','F',1.20,NULL,30,80,160,'44005',1500,NULL,'C',NULL,1800.00),('11029','Tellerrad','T1','T','F',6.00,NULL,4,80,160,'44009',450,NULL,'C',NULL,2700.00),('11030','Lager','T1','T','F',4.00,NULL,20,80,160,'44009',500,NULL,'C',NULL,2000.00),('11031','Griffgummi','T1','T','F',0.20,NULL,50,80,160,'44007',450,NULL,'C',NULL,90.00),('11032','Griffgummi','T1','T','F',0.50,NULL,80,80,160,'44007',320,NULL,'C',NULL,160.00),('11033','Ersatz-Spiegel','T1','T','F',1.20,NULL,50,80,160,'44001',180,NULL,'C',NULL,216.00),('11034','Ersatz-Spiegel','T1','T','F',5.50,NULL,80,80,160,'44002',320,NULL,'C',NULL,1760.00),('11035','Ersatz-Spiegel','T1','T','F',1.50,NULL,30,80,160,'44003',190,NULL,'C',NULL,285.00),('11036','Seite','T1','T','F',2.20,NULL,450,450,900,'44002',600,NULL,'C',NULL,1320.00),('11037','Verbandskasten','T1','H','F',17.12,NULL,80,200,400,'44009',120,NULL,'C',NULL,2054.40),('11038','Spoiler','T1','T','F',400.00,NULL,290,40,80,'44003',70,NULL,'A',NULL,28000.00),('11039','Ölfilter','T1','T','F',12.78,NULL,200,80,160,'44008',280,NULL,'C',NULL,3578.40),('11040','Radkappen','T1','T','F',34.10,NULL,70,160,320,'44004',440,NULL,'A',NULL,15004.00),('11041','Unterlegscheiben','T1','T','F',0.89,NULL,1000,800,1600,'44003',1800,NULL,'C',NULL,1602.00),('11042','Unterlagscheiben','T1','T','F',0.89,NULL,340,800,1600,'44003',1600,NULL,'C',NULL,1424.00),('11043','Hämmerle','T1','T','F',120.00,NULL,200,50,100,'44003',250,NULL,'A',NULL,30000.00),('11044','Lötkolben','T1','T','F',29.70,NULL,80,20,40,'44008',120,NULL,'C',NULL,3564.00),('11045','Zahnrad 81','T1','T','F',76.00,NULL,225,80,160,'44005',480,NULL,'A',NULL,36480.00),('11046','Hauptantriebswelle','T1','T','E',259.45,NULL,30,40,80,'00000',160,NULL,'A',NULL,41512.00),('11047','Stahlrohrgestell','T1','T','E',6.00,NULL,250,80,160,'00000',320,NULL,'C',NULL,1920.00),('11048','Tischplatte','T1','T','E',1.50,NULL,50,40,80,'00000',160,NULL,'C',NULL,240.00),('11049','Fußstöpsel','T1','T','F',0.20,NULL,200,200,400,'44004',800,NULL,'C',NULL,160.00),('11050','Seitengestell','T1','T','E',3.00,NULL,80,80,160,'00000',320,NULL,'C',NULL,960.00),('11051','Tischbein','T1','T','E',1.20,NULL,240,80,160,'00000',320,NULL,'C',NULL,384.00),('11052','Querrohr','T1','T','E',0.80,NULL,290,200,400,'00000',800,NULL,'C',NULL,640.00),('11053','Längsverbindung','T1','T','E',1.20,NULL,160,80,160,'00000',320,NULL,'C',NULL,384.00),('11054','Längsrohr','T1','T','E',1.30,NULL,320,80,160,'00000',320,NULL,'C',NULL,416.00),('11055','Lasche','T1','T','F',0.70,NULL,300,300,600,'44004',1200,NULL,'C',NULL,840.00),('11056','Vierkantstahlrohr','T1','R','F',4.20,NULL,4250,2000,4000,'44009',5080,NULL,'A',NULL,21336.00),('11057','Befestigungsschraube','T1','T','F',0.15,NULL,100,160,320,'44003',1350,NULL,'C',NULL,202.50),('11058','Spezial-Bauschubkarren','F1','E','E',59.90,NULL,450,250,500,'00000',330,NULL,'A',NULL,19767.00),('11059','Schubkarren-Mulde verzinkt','T1','T','F',18.50,NULL,350,250,500,'44005',330,NULL,'C',NULL,6105.00),('11060','Schubkarren-Kippbügel','T1','T','F',3.50,NULL,450,350,700,'44005',660,NULL,'C',NULL,2310.00),('11061','Schubkarren-Rad 400x100 mm','T1','T','F',6.20,NULL,450,250,500,'44006',330,NULL,'C',NULL,2046.00),('11062','Durchwurfsieb verzinkt 100x60 cm','F1','E','E',39.90,NULL,550,250,500,'00000',450,NULL,'A',NULL,17955.00),('11063','Sieb mit Rahmen','T1','T','F',27.50,NULL,400,250,500,'44007',450,NULL,'C',NULL,12375.00),('11064','Sieb-Gestell','T1','T','F',4.50,NULL,450,250,500,'44008',450,NULL,'C',NULL,2025.00),('11065','Dreibein-Schwenkgrill  Ø 57 cm','F1','E','E',59.90,NULL,550,250,500,'00000',450,NULL,'A',NULL,26955.00),('11066','Grillschüssel emailliert Ø 57 cm','T1','T','F',7.45,NULL,330,250,500,'44009',450,NULL,'C',NULL,3352.50),('11067','Grillrost','T1','T','F',1.85,NULL,330,250,500,'44001',450,NULL,'C',NULL,832.50),('11068','Grillständer dreibeinig','T1','T','F',25.25,NULL,350,250,500,'44008',450,NULL,'C',NULL,11362.50),('70001','Werkzeugasten Universal','F1','E','E',149.00,NULL,120,50,NULL,'00000',22350,NULL,'A',NULL,3330150.00),('71001','Schlagbohrmaschine','F1','T','F',63.00,NULL,155,50,NULL,'44004',0,NULL,'C',NULL,0.00),('71002','Bohrersatz für Holz/Metall/Stein','T1','T','F',3.50,NULL,135,50,NULL,'44004',0,NULL,'C',NULL,0.00),('71003','Bit-Steckschlüsselsatz','T1','T','F',3.20,NULL,124,50,NULL,'44004',0,NULL,'C',NULL,0.00),('71004','Schlosserhammer','F1','T','E',3.50,NULL,90,80,NULL,'00000',0,NULL,'C',NULL,0.00),('71005','Zollstock  2m','F1','T','F',1.30,NULL,146,50,NULL,'44001',0,NULL,'C',NULL,0.00),('71102','Bandmaß 3m','F1','T','F',1.20,NULL,80,40,NULL,'44001',0,NULL,'C',NULL,0.00),('71105','Kombizange 160','F1','T','E',7.50,NULL,95,40,NULL,'00000',0,NULL,'C',NULL,0.00),('72101','Seitenschneider 145','F1','T','E',8.50,NULL,87,30,NULL,'00000',0,NULL,'C',NULL,0.00),('72102','Wasserpumpenzange 240','F1','T','E',3.65,NULL,122,20,NULL,'00000',0,NULL,'C',NULL,0.00),('72105','Kneifzange 160','F1','T','E',2.10,NULL,185,50,NULL,'00000',0,NULL,'C',NULL,0.00),('72110','Universalmesser','F1','G','E',4.50,NULL,201,50,NULL,'00000',0,NULL,'C',NULL,0.00),('72111','Ersatzklingensatz','T1','T','F',1.00,NULL,210,50,NULL,'44007',0,NULL,'C',NULL,0.00),('72210','Schraubendrehersatz Chrom Vanadium','T1','G','E',7.30,NULL,155,40,NULL,'00000',0,NULL,'C',NULL,0.00),('72250','Wasserwaage 400 mm','F1','T','F',4.40,NULL,90,40,NULL,'44001',0,NULL,'C',NULL,0.00),('72255','Universalsäge','F1','G','E',5.20,NULL,95,40,NULL,'00000',0,NULL,'C',NULL,0.00),('72256','Sägeblatt Holz','T1','T','F',0.55,NULL,124,40,NULL,'44004',0,NULL,'C',NULL,0.00),('72257','Sägeblatt Metall','T1','T','F',1.50,NULL,132,40,NULL,'44004',0,NULL,'C',NULL,0.00),('73401','Stiftschlüsselsatz 8 * 1,5 - 6 mm','F1','G','E',3.50,NULL,80,30,NULL,'00000',0,NULL,'C',NULL,0.00),('73402','Ringschlüsselsatz 6 * 6-17 mm','F1','G','E',8.50,NULL,85,30,NULL,'00000',0,NULL,'C',NULL,0.00),('73403','Gabelschlüsselsatz 6 * 6-17 mm','F1','G','E',7.75,NULL,68,30,NULL,'00000',0,NULL,'C',NULL,0.00),('73501','Schrauben/Dübelsortiment','F1','T','F',3.40,NULL,125,50,NULL,'44001',0,NULL,'C',NULL,0.00),('73591','Klebeband','F1','T','F',0.70,NULL,97,50,NULL,NULL,0,NULL,'C',NULL,0.00),('74001','Kasten 75/45','F1','G','F',6.90,NULL,105,50,NULL,'44004',0,NULL,'C',NULL,0.00),('74002','Kasteneinsatz 74/45','T1','T','F',1.20,NULL,112,50,NULL,'44004',0,NULL,'C',NULL,0.00),('75000','Lötkoffer Turbo Spezial','E1','E','E',128.00,NULL,30,10,NULL,'00000',0,NULL,'C',NULL,0.00),('75101','Handgriff mit Gasreg.ventil','T1','T','F',15.80,NULL,35,10,NULL,'44007',0,NULL,'C',NULL,0.00),('75102','Brennerzuleitung','T1','T','E',6.20,NULL,40,10,NULL,'00000',0,NULL,'C',NULL,0.00),('75103','Feinlötbrenner 014 mm','T1','T','F',10.50,NULL,42,5,NULL,'44007',0,NULL,'C',NULL,0.00),('75104','Brennerkopf    020 mm','T1','T','F',6.20,NULL,40,10,NULL,'44008',0,NULL,'C',NULL,0.00),('75105','Turbolötbrenner  027 mm','T1','T','F',9.10,NULL,45,10,NULL,'44008',0,NULL,'C',NULL,0.00),('75106','Brennerkopf    036 mm','T1','T','F',11.20,NULL,35,10,NULL,'44008',0,NULL,'C',NULL,0.00),('75107','Brennerteil       015 mm','T1','T','F',11.50,NULL,30,10,NULL,'44008',0,NULL,'C',NULL,0.00),('75108','Kupferstück groß','T1','T','F',15.20,NULL,37,10,NULL,'44001',0,NULL,'C',NULL,0.00),('75109','Lötkolbenaufsatz','T1','T','F',8.20,NULL,38,10,NULL,'44008',0,NULL,'C',NULL,0.00),('75110','Breitbrenner','T1','T','F',6.80,NULL,41,10,NULL,'44008',0,NULL,'C',NULL,0.00),('75111','Verbindungsschlauch','T1','T','E',3.20,NULL,120,20,NULL,'00000',0,NULL,'C',NULL,0.00),('75112','Druckminderer 2,5 bar','T1','T','F',15.10,NULL,55,20,NULL,'44009',0,NULL,'C',NULL,0.00),('75200','Lötkoffer mit Einsatz','T1','T','F',9.00,NULL,30,10,NULL,'44004',0,NULL,'C',NULL,0.00);
/*!40000 ALTER TABLE `artikel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aufkopf`
--

DROP TABLE IF EXISTS `aufkopf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aufkopf` (
  `AufNr` varchar(5) NOT NULL,
  `AufDat` datetime DEFAULT NULL,
  `KdNr` varchar(5) DEFAULT NULL,
  `AufTermin` datetime DEFAULT NULL,
  `ZBed` varchar(2) DEFAULT NULL,
  `VBed` varchar(2) DEFAULT NULL,
  `AufText` longtext DEFAULT NULL,
  `Stat` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`AufNr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aufkopf`
--

LOCK TABLES `aufkopf` WRITE;
/*!40000 ALTER TABLE `aufkopf` DISABLE KEYS */;
INSERT INTO `aufkopf` VALUES ('30001','1996-01-25 00:00:00','24001','1996-02-08 00:00:00','1','1',NULL,NULL),('30002','1996-02-25 00:00:00','24002','1996-03-08 00:00:00','1','1',NULL,NULL);
/*!40000 ALTER TABLE `aufkopf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aufpos`
--

DROP TABLE IF EXISTS `aufpos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aufpos` (
  `AufNr` varchar(5) NOT NULL,
  `AufPos` varchar(3) NOT NULL,
  `TeileNr` varchar(10) DEFAULT NULL,
  `VKPreis` decimal(19,4) DEFAULT 0.0000,
  `AufMenge` double DEFAULT 0,
  `LStat` varchar(1) DEFAULT NULL,
  `al` varchar(1) DEFAULT NULL,
  `auftext` longtext DEFAULT NULL,
  PRIMARY KEY (`AufNr`,`AufPos`),
  KEY `AufNr` (`AufNr`),
  KEY `AufPos` (`AufPos`),
  CONSTRAINT `aufpos_ibfk_1` FOREIGN KEY (`AufNr`) REFERENCES `aufkopf` (`AufNr`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aufpos`
--

LOCK TABLES `aufpos` WRITE;
/*!40000 ALTER TABLE `aufpos` DISABLE KEYS */;
INSERT INTO `aufpos` VALUES ('30001','010','70001',178.5000,100,NULL,'1',NULL),('30001','020','75000',145.0000,20,NULL,'1',NULL),('30002','010','11000',75.0000,300,NULL,'2',NULL),('30002','020','11058',90.0000,40,NULL,'2',NULL);
/*!40000 ALTER TABLE `aufpos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bereich_karlsruhe`
--

DROP TABLE IF EXISTS `bereich_karlsruhe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bereich_karlsruhe` (
  `LiefNr` varchar(5) CHARACTER SET utf8 NOT NULL,
  `Name` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `PLZ` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `Strasse` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `Ort` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `Umsatz` decimal(19,4) DEFAULT 0.0000
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bereich_karlsruhe`
--

LOCK TABLES `bereich_karlsruhe` WRITE;
/*!40000 ALTER TABLE `bereich_karlsruhe` DISABLE KEYS */;
INSERT INTO `bereich_karlsruhe` VALUES ('44003','Jonas Brauer Gmbh','76530','Mozartstrasse 12','Baden-Baden',8500.0000),('44010','Wiedmeier & Söhne','76532','Industriestraße 34','Rastatt',55000.0000),('44011','Druck AG','76133','Kaiserstr. 2','Karlsruhe',0.0000);
/*!40000 ALTER TABLE `bereich_karlsruhe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bestvor`
--

DROP TABLE IF EXISTS `bestvor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bestvor` (
  `BVNr` varchar(5) NOT NULL,
  `TeileNr` varchar(5) DEFAULT NULL,
  `AufNr` varchar(5) DEFAULT NULL,
  `AufPos` varchar(3) DEFAULT NULL,
  `BVMenge` double DEFAULT 0,
  `BestMenge` double DEFAULT 0,
  `LiefNr` varchar(5) DEFAULT NULL,
  `Anf` varchar(1) DEFAULT NULL,
  `BSt` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`BVNr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bestvor`
--

LOCK TABLES `bestvor` WRITE;
/*!40000 ALTER TABLE `bestvor` DISABLE KEYS */;
INSERT INTO `bestvor` VALUES ('9001','71001','30001','010',100,0,'44004','0','0'),('9002','71002','30001','010',100,0,'44004','0','0'),('9003','71003','30001','010',100,0,'44004','0','0'),('9004','71005','30001','010',100,0,'44001','0','0'),('9005','71102','30001','010',100,0,'44001','0','0'),('9006','72111','30001','010',100,0,'44007','0','0'),('9007','72250','30001','010',100,0,'44001','0','0'),('9008','72256','30001','010',100,0,'44004','0','0'),('9009','72257','30001','010',100,0,'44004','0','0'),('9010','73501','30001','010',100,0,'44001','0','0'),('9011','73591','30001','010',100,0,NULL,'0','0'),('9012','74001','30001','010',100,0,'44004','0','0'),('9013','74002','30001','010',100,0,'44004','0','0'),('9014','75101','30001','020',20,0,'44007','0','0'),('9015','75103','30001','020',20,0,'44007','0','0'),('9016','75104','30001','020',20,0,'44008','0','0'),('9017','75105','30001','020',20,0,'44008','0','0'),('9018','75106','30001','020',20,0,'44008','0','0'),('9019','75107','30001','020',20,0,'44008','0','0'),('9020','75108','30001','020',20,0,'44001','0','0'),('9021','75109','30001','020',20,0,'44008','0','0'),('9022','75110','30001','020',20,0,'44008','0','0'),('9023','75112','30001','020',20,0,'44009','0','0'),('9024','75200','30001','020',20,0,'44004','0','0');
/*!40000 ALTER TABLE `bestvor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `debitor`
--

DROP TABLE IF EXISTS `debitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `debitor` (
  `KDNR` varchar(5) NOT NULL,
  `KDNAME` varchar(25) DEFAULT NULL,
  `KDSTRASSE` varchar(25) DEFAULT NULL,
  `KDPLZ` varchar(5) DEFAULT NULL,
  `KDORT` varchar(25) DEFAULT NULL,
  `KDTEL` varchar(20) DEFAULT NULL,
  `KDFAX` varchar(20) DEFAULT NULL,
  `KDBON` varchar(1) DEFAULT NULL,
  `KDUMSATZ` decimal(19,4) DEFAULT 0.0000,
  `KDSTAT` varchar(1) DEFAULT NULL,
  `Kunde_seit` date DEFAULT NULL,
  PRIMARY KEY (`KDNR`),
  KEY `KDNAME` (`KDNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `debitor`
--

LOCK TABLES `debitor` WRITE;
/*!40000 ALTER TABLE `debitor` DISABLE KEYS */;
INSERT INTO `debitor` VALUES ('22222','test_debitor',NULL,NULL,NULL,NULL,NULL,NULL,0.0000,NULL,'2005-10-23'),('24001','Baumarkt Müller','Postfach 134','85579','Neubiberg',NULL,NULL,NULL,0.0000,NULL,NULL),('24002','Friedrich Kunst','Mausweg 24','72510','Stetten a.k.M.',NULL,NULL,NULL,0.0000,NULL,NULL),('24003','BAU MIT GmbH','Im Grund 11','86657','Bissingen',NULL,NULL,NULL,0.0000,NULL,NULL),('24004','Otto Weber','Postfach 888','78727','Oberndorf a.N.',NULL,NULL,NULL,0.0000,NULL,NULL),('24005','Peter Helferich','Stuttgarter Str. 44','75394','Oberreichenbach',NULL,NULL,NULL,0.0000,NULL,NULL),('24006','Bau und Ausbau GmbH','Postfach 8573','71106','Magstadt',NULL,NULL,NULL,0.0000,NULL,NULL),('24007','Hahn & Widmann','Postfach 2112','72336','Balingen',NULL,NULL,NULL,0.0000,NULL,NULL);
/*!40000 ALTER TABLE `debitor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eingänge`
--

DROP TABLE IF EXISTS `eingänge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eingänge` (
  `BelegNr` varchar(5) NOT NULL,
  `TeileNr` varchar(10) DEFAULT NULL,
  `Menge` float DEFAULT 0,
  `EingDat` datetime DEFAULT NULL,
  PRIMARY KEY (`BelegNr`),
  KEY `TeileNr` (`TeileNr`),
  CONSTRAINT `eing@0knge_ibfk_1` FOREIGN KEY (`TeileNr`) REFERENCES `artikel` (`ArtikelNr`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eingänge`
--

LOCK TABLES `eingänge` WRITE;
/*!40000 ALTER TABLE `eingänge` DISABLE KEYS */;
INSERT INTO `eingänge` VALUES ('00001','10003',50,'1996-01-02 00:00:00'),('00002','10001',100,'1996-01-02 00:00:00'),('00003','10005',150,'1996-01-02 00:00:00'),('00004','10008',150,'1996-01-02 00:00:00'),('00005','10006',200,'1996-01-03 00:00:00'),('00006','10004',200,'1996-01-03 00:00:00'),('00007','10002',150,'1996-01-03 00:00:00'),('00008','10009',150,'1996-01-03 00:00:00'),('00009','11000',10,'1995-12-28 00:00:00'),('00010','10009',25,'1996-03-10 00:00:00'),('00011','11068',20,'1996-03-10 00:00:00'),('00012','11032',20,'1996-03-10 00:00:00'),('00013','11033',10,'1996-03-10 00:00:00');
/*!40000 ALTER TABLE `eingänge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kreditor`
--

DROP TABLE IF EXISTS `kreditor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kreditor` (
  `LiefNr` varchar(5) NOT NULL,
  `Name` varchar(25) DEFAULT NULL,
  `PLZ` varchar(5) DEFAULT NULL,
  `Strasse` varchar(20) DEFAULT NULL,
  `Ort` varchar(20) DEFAULT NULL,
  `Umsatz` decimal(19,4) DEFAULT 0.0000,
  PRIMARY KEY (`LiefNr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kreditor`
--

LOCK TABLES `kreditor` WRITE;
/*!40000 ALTER TABLE `kreditor` DISABLE KEYS */;
INSERT INTO `kreditor` VALUES ('00000','Eigenfertigung',NULL,NULL,NULL,4445.6000),('44002','Kugler und Grauer ','70173','Königstr. 13','Stuttgart',24000.0000),('44003','Jonas Brauer Gmbh','76530','Mozartstrasse 12','Baden-Baden',8500.0000),('44004','Ulmer Metallbau GmbH','72108','Am Marktplatz 1','Rottenburg',3200.0000),('44005','Georg Liebherr und Söhne','72070','Goethestr. 5','Tübingen',34000.0000),('44006','Kaiser & Franz OHG','72108','Dorfstr. 1','Rottenburg',6500.0000),('44007','Weinmann GmbH','72379','Fliederstr. 35','Hechingen',28000.0000),('44008','Grauer Metallfräserei KG','72622','Brunnenstr. 56','Nürtingen',13000.0000),('44009','Richard Vollmer & Co KG','72766','Leharweg 13','Reutlingen',23580.0000),('44010','Wiedmeier & Söhne','76532','Industriestraße 34','Rastatt',55000.0000),('44011','Druck AG','76133','Kaiserstr. 2','Karlsruhe',0.0000);
/*!40000 ALTER TABLE `kreditor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stueli`
--

DROP TABLE IF EXISTS `stueli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stueli` (
  `BgNr` varchar(5) NOT NULL,
  `PosNr` varchar(3) NOT NULL,
  `KompNr` varchar(5) DEFAULT NULL,
  `Menge` float DEFAULT 0,
  `Status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`BgNr`,`PosNr`),
  KEY `BgNr` (`BgNr`),
  KEY `KompNr` (`KompNr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stueli`
--

LOCK TABLES `stueli` WRITE;
/*!40000 ALTER TABLE `stueli` DISABLE KEYS */;
INSERT INTO `stueli` VALUES ('11000','010','11048',1,'1'),('11000','020','11047',1,'1'),('11000','030','11049',4,'1'),('11000','040','11057',12,'1'),('11003','010','11005',1,'1'),('11003','020','11006',1,'1'),('11003','030','11008',1,'1'),('11003','040','11009',2,'1'),('11003','050','11010',2,'1'),('11013','010','11014',1,'1'),('11013','020','11015',1,'1'),('11013','030','11017',3,'1'),('11013','040','11049',3,'1'),('11016','010','11021',1,'1'),('11016','020','11051',2,'1'),('11021','010','11055',1,'1'),('11021','020','11052',1,'1'),('11027','010','11001',1,'1'),('11027','020','11002',2,'1'),('11027','030','11036',4,'1'),('11047','010','11053',2,'1'),('11047','020','11016',2,'1'),('11053','010','11054',1,'1'),('11053','020','11055',2,'1'),('11058','010','11059',1,'1'),('11058','020','11060',2,'1'),('11058','030','11061',1,'1'),('70001','010','71001',1,'1'),('70001','020','71002',1,'1'),('70001','030','71003',1,'1'),('70001','040','71004',1,'1'),('70001','050','71005',1,'1'),('70001','060','71102',1,'1'),('70001','070','71105',1,'1'),('70001','080','72102',1,'1'),('70001','090','72102',1,'1'),('70001','100','72105',1,'1'),('70001','110','72110',1,'1'),('70001','120','72111',1,'1'),('70001','130','72210',1,'1'),('70001','140','72250',1,'1'),('70001','150','72255',1,'1'),('70001','160','72256',1,'1'),('70001','170','72257',1,'1'),('70001','180','73401',1,'1'),('70001','190','73402',1,'1'),('70001','200','73403',1,'1'),('70001','210','73501',1,'1'),('70001','220','73591',1,'1'),('70001','230','74001',1,'1'),('70001','240','74002',1,'1'),('75000','010','75101',1,'1'),('75000','020','75102',1,'1'),('75000','030','75103',1,'1'),('75000','040','75104',1,'1'),('75000','050','75105',1,'1'),('75000','060','75106',1,'1'),('75000','070','75107',1,'1'),('75000','080','75108',1,'1'),('75000','090','75109',1,'1'),('75000','100','75110',1,'1'),('75000','110','75111',1,'1'),('75000','120','75112',1,'1'),('75000','130','75200',1,'1');
/*!40000 ALTER TABLE `stueli` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vertreter`
--

DROP TABLE IF EXISTS `vertreter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vertreter` (
  `VertrNr` varchar(3) NOT NULL,
  `Name` varchar(25) DEFAULT NULL,
  `Vorname` varchar(20) DEFAULT NULL,
  `Strasse` varchar(20) DEFAULT NULL,
  `PLZ` varchar(5) DEFAULT NULL,
  `Ort` varchar(20) DEFAULT NULL,
  `ProvSatz` float DEFAULT 0,
  `GesUmsatz` decimal(19,4) DEFAULT 0.0000,
  `GesProvision` decimal(19,4) DEFAULT 0.0000,
  PRIMARY KEY (`VertrNr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vertreter`
--

LOCK TABLES `vertreter` WRITE;
/*!40000 ALTER TABLE `vertreter` DISABLE KEYS */;
INSERT INTO `vertreter` VALUES ('001','Kleinhans','Martin','Grunerstr. 13','51067','Köln',3.5,400000.0000,10500.0000),('002','Vollmer','Fridolin','Neuer Burgweg 7','21147','Hamburg',3,300000.0000,9000.0000),('003','Büchele','Franz','Waldfriedhof 74','70579','Stuttgart',4,150000.0000,6000.0000),('004','Wegner','Georg','Kunzweg 23','81243','München',3.5,100000.0000,3500.0000),('005','Neusel','Joachim','Uhlandstr. 117','60314','Frankfurt',3,200000.0000,6000.0000),('006','Kleinschmidt','Kurt','Saaleweg 45','30179','Hannover',4.5,100000.0000,4500.0000),('007','Albrecht','Lutz','Saarlandstr. 6','44866','Bochum',3,200000.0000,6000.0000),('008','Borchert','Johannes','Auestrasse 125','06123','Halle',4.5,100000.0000,4500.0000);
/*!40000 ALTER TABLE `vertreter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `01bestandsliste`
--

/*!50001 DROP TABLE IF EXISTS `01bestandsliste`*/;
/*!50001 DROP VIEW IF EXISTS `01bestandsliste`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `01bestandsliste` AS select `artikel`.`ArtikelNr` AS `ArtikelNr`,`artikel`.`Bezeichnung` AS `Bezeichnung`,`artikel`.`Bestand` AS `Bestand` from `artikel` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-17 15:15:21
