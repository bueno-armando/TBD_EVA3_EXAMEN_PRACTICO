/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.6.2-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: Hospital
-- ------------------------------------------------------
-- Server version	11.6.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `cuartos`
--

DROP TABLE IF EXISTS `cuartos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cuartos` (
  `cuarto_id` int(11) NOT NULL AUTO_INCREMENT,
  `paciente_id` int(11) DEFAULT NULL,
  `numero_cuarto` int(11) NOT NULL,
  `inicio_estadia` date NOT NULL,
  `fin_estadia` date DEFAULT NULL,
  PRIMARY KEY (`cuarto_id`),
  KEY `paciente_id` (`paciente_id`),
  CONSTRAINT `cuartos_ibfk_1` FOREIGN KEY (`paciente_id`) REFERENCES `pacientes` (`paciente_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuartos`
--

LOCK TABLES `cuartos` WRITE;
/*!40000 ALTER TABLE `cuartos` DISABLE KEYS */;
/*!40000 ALTER TABLE `cuartos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuentas_pacientes`
--

DROP TABLE IF EXISTS `cuentas_pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cuentas_pacientes` (
  `cuentas_pacientes_id` int(11) NOT NULL AUTO_INCREMENT,
  `paciente_id` int(11) NOT NULL,
  `forma_pago_pac_id` int(11) NOT NULL,
  `fecha_emision` date NOT NULL,
  `otros` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cuentas_pacientes_id`),
  KEY `paciente_id` (`paciente_id`),
  KEY `forma_pago_pac_id` (`forma_pago_pac_id`),
  CONSTRAINT `cuentas_pacientes_ibfk_1` FOREIGN KEY (`paciente_id`) REFERENCES `pacientes` (`paciente_id`) ON UPDATE CASCADE,
  CONSTRAINT `cuentas_pacientes_ibfk_2` FOREIGN KEY (`forma_pago_pac_id`) REFERENCES `formas_pago_pacientes` (`forma_pago_pac_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuentas_pacientes`
--

LOCK TABLES `cuentas_pacientes` WRITE;
/*!40000 ALTER TABLE `cuentas_pacientes` DISABLE KEYS */;
INSERT INTO `cuentas_pacientes` VALUES
(1,1,1,'2017-04-20',NULL),
(2,1,1,'2017-04-20',NULL),
(3,2,2,'2017-04-17',NULL),
(4,2,2,'2017-04-17',NULL),
(5,3,3,'2017-04-20',NULL),
(6,3,3,'2017-04-20',NULL),
(7,4,4,'2017-04-22',NULL),
(8,4,4,'2017-04-22',NULL),
(9,5,5,'2017-04-21',NULL),
(10,5,5,'2017-04-21',NULL),
(11,6,6,'2017-04-18',NULL),
(12,6,6,'2017-04-18',NULL),
(13,7,7,'2017-04-24',NULL),
(14,7,7,'2017-04-24',NULL),
(15,8,8,'2017-04-27',NULL),
(16,8,8,'2017-04-27',NULL),
(17,9,9,'2017-04-28',NULL),
(18,9,9,'2017-04-28',NULL),
(19,10,10,'2017-04-27',NULL),
(20,10,10,'2017-04-27',NULL),
(21,11,11,'2017-04-28',NULL),
(22,11,11,'2017-04-28',NULL),
(23,12,12,'2017-04-28',NULL),
(24,12,12,'2017-04-28',NULL),
(25,13,13,'2017-04-29',NULL),
(26,13,13,'2017-04-29',NULL),
(27,14,14,'2017-04-26',NULL),
(28,14,14,'2017-04-26',NULL),
(29,15,15,'2017-05-05',NULL),
(30,15,15,'2017-05-05',NULL),
(31,16,16,'2017-05-02',NULL),
(32,16,16,'2017-05-02',NULL),
(33,17,17,'2017-05-01',NULL),
(34,17,17,'2017-05-01',NULL),
(35,18,18,'2017-05-12',NULL),
(36,18,18,'2017-05-12',NULL),
(37,19,19,'2017-05-03',NULL),
(38,19,19,'2017-05-03',NULL),
(39,20,20,'2017-05-09',NULL),
(40,20,20,'2017-05-09',NULL),
(41,21,21,'2017-05-08',NULL),
(42,21,21,'2017-05-08',NULL),
(43,22,22,'2017-05-14',NULL),
(44,22,22,'2017-05-14',NULL),
(45,23,23,'2017-05-12',NULL),
(46,23,23,'2017-05-12',NULL),
(47,24,24,'2017-05-05',NULL),
(48,24,24,'2017-05-05',NULL),
(49,25,25,'2017-05-19',NULL),
(50,25,25,'2017-05-19',NULL),
(51,26,26,'2017-05-14',NULL),
(52,26,26,'2017-05-14',NULL),
(53,27,27,'2017-05-12',NULL),
(54,27,27,'2017-05-12',NULL),
(55,28,28,'2017-05-15',NULL),
(56,28,28,'2017-05-15',NULL),
(57,29,29,'2017-05-13',NULL),
(58,29,29,'2017-05-13',NULL),
(59,30,30,'2017-05-18',NULL),
(60,30,30,'2017-05-18',NULL),
(61,31,31,'2017-05-20',NULL),
(62,31,31,'2017-05-20',NULL),
(63,32,32,'2017-05-26',NULL),
(64,32,32,'2017-05-26',NULL),
(65,33,33,'2017-05-22',NULL),
(66,33,33,'2017-05-22',NULL),
(67,34,34,'2017-05-21',NULL),
(68,34,34,'2017-05-21',NULL),
(69,35,35,'2017-05-16',NULL),
(70,35,35,'2017-05-16',NULL),
(71,36,36,'2017-05-20',NULL),
(72,36,36,'2017-05-20',NULL),
(73,37,37,'2017-05-27',NULL),
(74,37,37,'2017-05-27',NULL),
(75,38,38,'2017-05-21',NULL),
(76,38,38,'2017-05-21',NULL),
(77,39,39,'2017-05-26',NULL),
(78,39,39,'2017-05-26',NULL),
(79,40,40,'2017-05-31',NULL),
(80,40,40,'2017-05-31',NULL),
(81,41,41,'2017-05-31',NULL),
(82,41,41,'2017-05-31',NULL),
(83,42,42,'2017-06-01',NULL),
(84,42,42,'2017-06-01',NULL),
(85,43,43,'2017-05-27',NULL),
(86,43,43,'2017-05-27',NULL),
(87,44,44,'2017-06-07',NULL),
(88,44,44,'2017-06-07',NULL),
(89,45,45,'2017-06-04',NULL),
(90,45,45,'2017-06-04',NULL),
(91,46,46,'2017-06-07',NULL),
(92,46,46,'2017-06-07',NULL),
(93,47,47,'2017-05-31',NULL),
(94,47,47,'2017-05-31',NULL),
(95,48,48,'2017-06-07',NULL),
(96,48,48,'2017-06-07',NULL),
(97,49,49,'2017-05-31',NULL),
(98,49,49,'2017-05-31',NULL),
(99,50,50,'2017-06-03',NULL),
(100,50,50,'2017-06-03',NULL),
(101,51,51,'2017-06-03',NULL),
(102,51,51,'2017-06-03',NULL),
(103,52,52,'2017-06-10',NULL),
(104,52,52,'2017-06-10',NULL),
(105,53,53,'2017-06-14',NULL),
(106,53,53,'2017-06-14',NULL),
(107,54,54,'2017-06-09',NULL),
(108,54,54,'2017-06-09',NULL),
(109,55,55,'2017-06-14',NULL),
(110,55,55,'2017-06-14',NULL),
(111,56,56,'2017-06-17',NULL),
(112,56,56,'2017-06-17',NULL),
(113,57,57,'2017-06-16',NULL),
(114,57,57,'2017-06-16',NULL),
(115,58,58,'2017-06-15',NULL),
(116,58,58,'2017-06-15',NULL);
/*!40000 ALTER TABLE `cuentas_pacientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuentas_pacientes_detalles`
--

DROP TABLE IF EXISTS `cuentas_pacientes_detalles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cuentas_pacientes_detalles` (
  `cuentas_pacientes_det_id` int(11) NOT NULL AUTO_INCREMENT,
  `cuentas_pacientes_id` int(11) NOT NULL,
  `detalle` varchar(50) DEFAULT 'Diagnostico',
  `cantidad` decimal(10,2) NOT NULL,
  `costo_total` decimal(12,2) NOT NULL,
  PRIMARY KEY (`cuentas_pacientes_det_id`),
  KEY `cuentas_pacientes_detalles_ibfk_1` (`cuentas_pacientes_id`),
  CONSTRAINT `cuentas_pacientes_detalles_ibfk_1` FOREIGN KEY (`cuentas_pacientes_id`) REFERENCES `cuentas_pacientes` (`cuentas_pacientes_id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuentas_pacientes_detalles`
--

LOCK TABLES `cuentas_pacientes_detalles` WRITE;
/*!40000 ALTER TABLE `cuentas_pacientes_detalles` DISABLE KEYS */;
INSERT INTO `cuentas_pacientes_detalles` VALUES
(1,1,'Tratamiento',3.00,151347.00),
(2,2,'Tratamiento',3.00,286210.00),
(3,3,'Tratamiento',3.00,50299.00),
(4,4,'Tratamiento',2.00,370053.00),
(5,5,'Tratamiento',2.00,335363.00),
(6,6,'Tratamiento',2.00,468092.00),
(7,7,'Tratamiento',3.00,336904.00),
(8,8,'Tratamiento',3.00,526929.00),
(9,9,'Tratamiento',1.00,284730.00),
(10,10,'Tratamiento',1.00,550774.00),
(11,11,'Tratamiento',1.00,692302.00),
(12,12,'Tratamiento',3.00,152954.00),
(13,13,'Tratamiento',1.00,191741.00),
(14,14,'Tratamiento',2.00,361733.00),
(15,15,'Tratamiento',1.00,744675.00),
(16,16,'Tratamiento',2.00,554900.00),
(17,17,'Tratamiento',1.00,859558.00),
(18,18,'Tratamiento',1.00,285060.00),
(19,19,'Tratamiento',1.00,507315.00),
(20,20,'Tratamiento',1.00,525974.00),
(21,21,'Tratamiento',2.00,189576.00),
(22,22,'Tratamiento',3.00,585548.00),
(23,23,'Tratamiento',3.00,615740.00),
(24,24,'Tratamiento',2.00,50663.00),
(25,25,'Tratamiento',2.00,251751.00),
(26,26,'Tratamiento',2.00,275709.00),
(27,27,'Tratamiento',3.00,289314.00),
(28,28,'Tratamiento',3.00,239682.00),
(29,29,'Tratamiento',2.00,346244.00),
(30,30,'Tratamiento',1.00,563209.00),
(31,31,'Tratamiento',1.00,321521.00),
(32,32,'Tratamiento',2.00,234213.00),
(33,33,'Tratamiento',3.00,729192.00),
(34,34,'Tratamiento',1.00,589304.00),
(35,35,'Tratamiento',2.00,654777.00),
(36,36,'Tratamiento',3.00,248645.00),
(37,37,'Tratamiento',2.00,141906.00),
(38,38,'Tratamiento',1.00,443071.00),
(39,39,'Tratamiento',1.00,749107.00),
(40,40,'Tratamiento',3.00,219624.00),
(41,41,'Tratamiento',1.00,347804.00),
(42,42,'Tratamiento',1.00,584960.00),
(43,43,'Tratamiento',2.00,824953.00),
(44,44,'Tratamiento',3.00,429701.00),
(45,45,'Tratamiento',3.00,966042.00),
(46,46,'Tratamiento',3.00,570861.00),
(47,47,'Tratamiento',1.00,376164.00),
(48,48,'Tratamiento',2.00,46589.00),
(49,49,'Tratamiento',3.00,376236.00),
(50,50,'Tratamiento',1.00,566074.00),
(51,51,'Tratamiento',1.00,255123.00),
(52,52,'Tratamiento',2.00,549895.00),
(53,53,'Tratamiento',3.00,317412.00),
(54,54,'Tratamiento',3.00,88233.00),
(55,55,'Tratamiento',3.00,766565.00),
(56,56,'Tratamiento',3.00,184519.00),
(57,57,'Tratamiento',3.00,230187.00),
(58,58,'Tratamiento',3.00,34939.00),
(59,59,'Tratamiento',2.00,973681.00),
(60,60,'Tratamiento',1.00,140167.00),
(61,61,'Tratamiento',3.00,556224.00),
(62,62,'Tratamiento',1.00,268348.00),
(63,63,'Tratamiento',1.00,789826.00),
(64,64,'Tratamiento',3.00,54824.00),
(65,65,'Tratamiento',3.00,797003.00),
(66,66,'Tratamiento',1.00,343220.00),
(67,67,'Tratamiento',3.00,896987.00),
(68,68,'Tratamiento',1.00,141859.00),
(69,69,'Tratamiento',1.00,645401.00),
(70,70,'Tratamiento',1.00,187645.00),
(71,71,'Tratamiento',3.00,732868.00),
(72,72,'Tratamiento',3.00,176937.00),
(73,73,'Tratamiento',1.00,707681.00),
(74,74,'Tratamiento',2.00,292454.00),
(75,75,'Tratamiento',3.00,110331.00),
(76,76,'Tratamiento',1.00,320878.00),
(77,77,'Tratamiento',3.00,158256.00),
(78,78,'Tratamiento',3.00,354925.00),
(79,79,'Tratamiento',2.00,81944.00),
(80,80,'Tratamiento',3.00,511089.00),
(81,81,'Tratamiento',2.00,881690.00),
(82,82,'Tratamiento',2.00,59643.00),
(83,83,'Tratamiento',2.00,602980.00),
(84,84,'Tratamiento',2.00,583011.00),
(85,85,'Tratamiento',1.00,268138.00),
(86,86,'Tratamiento',3.00,124520.00),
(87,87,'Tratamiento',3.00,379874.00),
(88,88,'Tratamiento',2.00,61608.00),
(89,89,'Tratamiento',1.00,153311.00),
(90,90,'Tratamiento',2.00,452630.00),
(91,91,'Tratamiento',3.00,863400.00),
(92,92,'Tratamiento',1.00,541120.00),
(93,93,'Tratamiento',2.00,860995.00),
(94,94,'Tratamiento',3.00,68985.00),
(95,95,'Tratamiento',3.00,149290.00),
(96,96,'Tratamiento',1.00,79515.00),
(97,97,'Tratamiento',1.00,267026.00),
(98,98,'Tratamiento',1.00,596734.00),
(99,99,'Tratamiento',1.00,834540.00),
(100,100,'Tratamiento',1.00,335679.00),
(101,101,'Tratamiento',3.00,153439.00),
(102,102,'Tratamiento',1.00,71023.00),
(103,103,'Tratamiento',3.00,236628.00),
(104,104,'Tratamiento',1.00,443391.00),
(105,105,'Tratamiento',3.00,871864.00),
(106,106,'Tratamiento',2.00,479401.00),
(107,107,'Tratamiento',3.00,680413.00),
(108,108,'Tratamiento',1.00,132635.00),
(109,109,'Tratamiento',3.00,343354.00),
(110,110,'Tratamiento',3.00,352489.00),
(111,111,'Tratamiento',3.00,57805.00),
(112,112,'Tratamiento',1.00,373220.00),
(113,113,'Tratamiento',3.00,308184.00),
(114,114,'Tratamiento',3.00,597900.00),
(115,115,'Tratamiento',2.00,453174.00),
(116,116,'Tratamiento',3.00,378332.00);
/*!40000 ALTER TABLE `cuentas_pacientes_detalles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direcciones`
--

DROP TABLE IF EXISTS `direcciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `direcciones` (
  `direccion_id` int(11) NOT NULL AUTO_INCREMENT,
  `calle` varchar(50) NOT NULL,
  `numero_exterior` int(11) NOT NULL,
  `numero_interior` int(11) DEFAULT NULL,
  `colonia` varchar(50) NOT NULL,
  `codigo_postal` varchar(50) NOT NULL,
  `ciudad` varchar(50) NOT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `pais` varchar(50) DEFAULT NULL,
  `otros` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`direccion_id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direcciones`
--

LOCK TABLES `direcciones` WRITE;
/*!40000 ALTER TABLE `direcciones` DISABLE KEYS */;
INSERT INTO `direcciones` VALUES
(1,'1 rue Alsace-Lorraine',1,NULL,'No especifica','40620','Toulouse','No especifica','France',NULL),
(2,'12 Orchestra Terrace',12,NULL,'No especifica','72299','Walla Walla','WA','USA',NULL),
(3,'12, rue des Bouchers',12,NULL,'No especifica','10368','Marseille','No especifica','France',NULL),
(4,'120 Hanover Sq.',120,NULL,'No especifica','60155','London','No especifica','UK',NULL),
(5,'184, chausse de Tournai',184,NULL,'No especifica','55769','Lille','No especifica','France',NULL),
(6,'187 Suffolk Ln.',187,NULL,'No especifica','78271','Boise','ID','USA',NULL),
(7,'1900 Oak St.',1900,NULL,'No especifica','85240','Vancouver','BC','Canada',NULL),
(8,'2, rue du Commerce',2,NULL,'No especifica','46913','Helsinki','No especifica',NULL,NULL),
(9,'23 Tsawassen Blvd.',23,NULL,'No especifica','31994','Tsawassen','BC','Canada',NULL),
(10,'24, place Klber',24,NULL,'No especifica','72584','Strasbourg','No especifica','France',NULL),
(11,'25, rue Lauriston',25,NULL,'No especifica','43635','Paris','No especifica','France',NULL),
(12,'265, boulevard Charonne',265,NULL,'No especifica','26346','Paris','No especifica','France',NULL),
(13,'2732 Baker Blvd.',2732,NULL,'No especifica','87535','Eugene','OR','USA',NULL),
(14,'2743 Bering St.',2743,NULL,'No especifica','79901','Anchorage','AK','USA',NULL),
(15,'2817 Milton Dr.',2817,NULL,'No especifica','85182','Albuquerque','NM','USA',NULL),
(16,'305 - 14th Ave. S. Suite 3B',305,3,'No especifica','62245','Oulu','No especifica','Finland',NULL),
(17,'35 King George',35,NULL,'No especifica','13216','London','No especifica','UK',NULL),
(18,'43 rue St. Laurent',43,NULL,'No especifica','18465','Montral','Qubec','Canada',NULL),
(19,'5 Ave. Los Palos Grandes',5,NULL,'No especifica','68441','Caracas','DF','Venezuela',NULL),
(20,'54, rue Royale',54,NULL,'No especifica','63117','Nantes','No especifica','France',NULL),
(21,'55 Grizzly Peak Rd.',55,NULL,'No especifica','39549','Butte','MT','USA',NULL),
(22,'59 rue de l\'Abbaye',59,NULL,'No especifica','21955','Warszawa','No especifica',NULL,NULL),
(23,'67, avenue de l\'Europe',67,NULL,'No especifica','42768','Versailles','No especifica','France',NULL),
(24,'67, rue des Cinquante Otages',67,NULL,'No especifica','56274','Nantes','No especifica','France',NULL),
(25,'722 DaVinci Blvd.',722,NULL,'No especifica','13113','Kirkland','WA','USA',NULL),
(26,'8 Johnstown Road',8,NULL,'No especifica','47847','Cork','Co. Cork','Ireland',NULL),
(27,'87 Polk St. Suite 5',87,NULL,'No especifica','11981','San Francisco','CA','USA',NULL),
(28,'89 Chiaroscuro Rd.',89,NULL,'No especifica','29410','Portland','OR','USA',NULL),
(29,'89 Jefferson Way Suite 2',89,NULL,'No especifica','44919','Portland','OR','USA',NULL),
(30,'90 Wadhurst Rd.',90,NULL,'No especifica','43827','London','No especifica','UK',NULL),
(31,'Adenauerallee 900',900,NULL,'No especifica','86925','Lyon','No especifica','France',NULL),
(32,'Alameda dos Canrios, 891',891,NULL,'No especifica','36965','Sao Paulo','SP','Brazil',NULL),
(33,'Av. Brasil, 442',442,NULL,'No especifica','68328','Campinas','SP','Brazil',NULL),
(34,'Av. Copacabana, 267',267,NULL,'No especifica','34941','Rio de Janeiro','RJ','Brazil',NULL),
(35,'Av. del Libertador 900',900,NULL,'No especifica','71252','Buenos Aires','No especifica','Argentina',NULL),
(36,'Av. dos Lusadas, 23',23,NULL,'No especifica','84473','Sao Paulo','SP','Brazil',NULL),
(37,'Av. Ins de Castro, 414',414,NULL,'No especifica','14942','Sao Paulo','SP','Brazil',NULL),
(38,'Avda. Azteca 123',123,NULL,'No especifica','78040','Mxico D.F.','Mxico D.F.','Mexico',NULL),
(39,'Avda. de la Constitucin 2222',2222,NULL,'No especifica','71760','Mxico D.F.','Mxico D.F.','Mexico',NULL),
(40,'Ave. 5 de Mayo Porlamar',5,NULL,'No especifica','20768','I. de Margarita','Nueva Esparta','Venezuela',NULL),
(41,'Berguvsvgen  8',8,NULL,'No especifica','26468','Lule','No especifica','Sweden',NULL),
(42,'Berkeley Gardens 12  Brewery',12,NULL,'No especifica','61775','London','No especifica','UK',NULL),
(43,'Berliner Platz 43',43,NULL,'No especifica','21914','Mnchen','No especifica','Germany',NULL),
(44,'Boulevard Tirou, 255',255,NULL,'No especifica','86215','Charleroi','No especifica','Belgium',NULL),
(45,'C/ Araquil, 67',67,NULL,'No especifica','11697','Madrid','No especifica','Spain',NULL),
(46,'C/ Moralzarzal, 86',86,NULL,'No especifica','77528','Madrid','No especifica','Spain',NULL),
(47,'C/ Romero, 33',33,NULL,'No especifica','18057','Sevilla','No especifica','Spain',NULL),
(48,'Calle Dr. Jorge Cash 321',321,NULL,'No especifica','19460','Mxico D.F.','Mxico D.F.','Mexico',NULL),
(49,'Carrera 22 con Ave. Carlos Soublette #8-35',22,8,'No especifica','50156','San Cristbal','Tchira','Venezuela',NULL),
(50,'Carrera 52 con Ave. Bolvar #65-98 Llano Largo',52,NULL,'No especifica','76914','Barquisimeto','Lara','Venezuela',NULL),
(51,'Cerrito 333',333,NULL,'No especifica','41756','Buenos Aires','No especifica','Argentina',NULL),
(52,'City Center Plaza 516 Main St.',516,NULL,'No especifica','47913','Elgin','OR','USA',NULL),
(53,'Erling Skakkes gate 78',78,NULL,'No especifica','68136','Stavern','No especifica','Norway',NULL),
(54,'Estrada da sade n. 58',58,NULL,'No especifica','11380','Lisboa','No especifica','Portugal',NULL),
(55,'Fauntleroy Circus',100,NULL,'No especifica','12425','London','No especifica','UK',NULL),
(56,'Forsterstr. 57',57,NULL,'No especifica','29719','Mannheim','No especifica','Germany',NULL),
(57,'Garden House Crowther Way',5,NULL,'No especifica','52697','Cowes','Isle of Wight','UK',NULL),
(58,'Geislweg 14',14,NULL,'No especifica','34435','Salzburg','No especifica','Austria',NULL),
(59,'Gran Va, 1',1,NULL,'No especifica','61601','Madrid','No especifica','Spain',NULL),
(60,'Grenzacherweg 237',237,NULL,'No especifica','83335','Genve','No especifica','Switzerland',NULL),
(61,'Hauptstr. 29',29,NULL,'No especifica','23662','Bern','No especifica','Switzerland',NULL),
(62,'Heerstr. 22',22,NULL,'No especifica','73900','Leipzig','No especifica','Germany',NULL),
(63,'Ing. Gustavo Moncada 8585 Piso 20-A',8585,20,'No especifica','83428','Buenos Aires','No especifica','Argentina',NULL),
(64,'Jardim das rosas n. 32',32,NULL,'No especifica','87099','Lisboa','No especifica','Portugal',NULL),
(65,'kergatan 24',24,NULL,'No especifica','83154','Brcke','No especifica','Sweden',NULL),
(66,'Keskuskatu 45',45,NULL,'No especifica','25873','Resende','SP','Brazil',NULL),
(67,'Kirchgasse 6',6,NULL,'No especifica','59319','Graz','No especifica','Austria',NULL),
(68,'Luisenstr. 48',78,NULL,'No especifica','32205','Mnster','No especifica','Germany',NULL),
(69,'Magazinweg 7',7,NULL,'No especifica','69129','Frankfurt a.M.','Germany','Germany',NULL),
(70,'Mataderos  2312',2312,NULL,'No especifica','37179','Mxico D.F.','Mxico D.F.','Mexico',NULL),
(71,'Maubelstr. 90',90,NULL,'No especifica','73705','Brandenburg','No especifica','Germany',NULL),
(72,'Mehrheimerstr. 369',369,NULL,'No especifica','46012','Kln','No especifica','Germany',NULL),
(73,'Obere Str. 57',57,NULL,'No especifica','30071','Berlin','No especifica','Germany',NULL),
(74,'P.O. Box 555',555,NULL,'No especifica','26230','Lander','WY','USA',NULL),
(75,'Rambla de Catalua, 23',23,NULL,'No especifica','38184','Barcelona','No especifica','Spain',NULL),
(76,'Rua da Panificadora, 12',12,NULL,'No especifica','37964','Rio de Janeiro','RJ','Brazil',NULL),
(77,'Rua do Mercado, 12',12,NULL,'No especifica','10549','Stuttgart','No especifica','Germany',NULL),
(78,'Rua do Pao, 67',67,NULL,'No especifica','22071','Rio de Janeiro','RJ','Brazil',NULL),
(79,'Rua Ors, 92',92,NULL,'No especifica','16799','Sao Paulo','SP','Brazil',NULL),
(80,'Rue Joseph-Bens 532',532,NULL,'No especifica','32742','Bruxelles','No especifica','Belgium',NULL),
(81,'Sierras de Granada 9993',9993,NULL,'No especifica','45792','Mxico D.F.','No especifica','Mexico',NULL),
(82,'Smagsloget 45',45,NULL,'No especifica','88442','rhus','No especifica','Denmark',NULL),
(83,'South House 300 Queensbridge',300,NULL,'No especifica','77552','London','No especifica','UK',NULL),
(84,'Strada Provinciale 124',124,NULL,'No especifica','47511','Reggio Emilia','No especifica','Italy',NULL),
(85,'Taucherstrae 10',10,NULL,'No especifica','86041','Cunewalde','No especifica','Germany',NULL),
(86,'Torikatu 38',38,NULL,'No especifica','18047','Reims','No especifica','France',NULL),
(87,'ul. Filtrowa 6+B7:B928',68,NULL,'No especifica','33192','Seattle','WA','USA',NULL),
(88,'Via Ludovico il Moro 22',22,NULL,'No especifica','82459','Bergamo','No especifica','Italy',NULL),
(89,'Via Monte Bianco 34',34,NULL,'No especifica','87116','Torino','No especifica','Italy',NULL),
(90,'Vinbltet 34',34,NULL,'No especifica','59536','Kobenhavn','No especifica','Denmark',NULL),
(91,'Walserweg 21',21,NULL,'No especifica','20796','Aachen','No especifica','Germany',NULL);
/*!40000 ALTER TABLE `direcciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direcciones_empleados`
--

DROP TABLE IF EXISTS `direcciones_empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `direcciones_empleados` (
  `direcciones_empleados_id` int(11) NOT NULL AUTO_INCREMENT,
  `empleado_id` int(11) NOT NULL,
  `direccion_id` int(11) NOT NULL,
  PRIMARY KEY (`direcciones_empleados_id`),
  KEY `empleado_id` (`empleado_id`),
  KEY `direccion_id` (`direccion_id`),
  CONSTRAINT `direcciones_empleados_ibfk_1` FOREIGN KEY (`empleado_id`) REFERENCES `empleados` (`empleados_id`) ON UPDATE CASCADE,
  CONSTRAINT `direcciones_empleados_ibfk_2` FOREIGN KEY (`direccion_id`) REFERENCES `direcciones` (`direccion_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direcciones_empleados`
--

LOCK TABLES `direcciones_empleados` WRITE;
/*!40000 ALTER TABLE `direcciones_empleados` DISABLE KEYS */;
INSERT INTO `direcciones_empleados` VALUES
(31,1,58),
(32,2,54),
(33,3,76),
(34,4,32),
(35,5,85),
(36,6,35),
(37,7,15),
(38,8,84),
(39,9,34),
(40,10,60),
(41,11,59),
(42,12,53),
(43,13,6),
(44,14,30),
(45,15,90),
(46,16,11),
(47,17,74),
(48,18,44),
(49,19,29),
(50,20,21),
(51,21,68),
(52,22,38),
(53,23,37),
(54,24,25),
(55,25,82),
(56,26,8),
(57,27,22),
(58,28,31),
(59,29,86),
(60,30,77);
/*!40000 ALTER TABLE `direcciones_empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direcciones_pacientes`
--

DROP TABLE IF EXISTS `direcciones_pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `direcciones_pacientes` (
  `direccion_paciente_id` int(11) NOT NULL AUTO_INCREMENT,
  `paciente_id` int(11) NOT NULL,
  `direccion_id` int(11) NOT NULL,
  PRIMARY KEY (`direccion_paciente_id`),
  KEY `paciente_id` (`paciente_id`),
  KEY `direccion_id` (`direccion_id`),
  CONSTRAINT `direcciones_pacientes_ibfk_1` FOREIGN KEY (`paciente_id`) REFERENCES `pacientes` (`paciente_id`) ON UPDATE CASCADE,
  CONSTRAINT `direcciones_pacientes_ibfk_2` FOREIGN KEY (`direccion_id`) REFERENCES `direcciones` (`direccion_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direcciones_pacientes`
--

LOCK TABLES `direcciones_pacientes` WRITE;
/*!40000 ALTER TABLE `direcciones_pacientes` DISABLE KEYS */;
INSERT INTO `direcciones_pacientes` VALUES
(1,1,73),
(2,1,16),
(3,2,39),
(4,2,66),
(5,3,70),
(6,3,87),
(7,4,4),
(8,5,41),
(9,6,56),
(10,7,10),
(11,8,45),
(12,9,3),
(13,10,9),
(14,11,55),
(15,12,51),
(16,13,81),
(17,14,61),
(18,15,36),
(19,16,42),
(20,17,91),
(21,18,24),
(22,19,17),
(23,20,67),
(24,21,79),
(25,22,46),
(26,23,5),
(27,24,65),
(28,25,43),
(29,26,20),
(30,27,89),
(31,28,64),
(32,29,75),
(33,30,47),
(34,31,33),
(35,32,13),
(36,33,19),
(37,34,78),
(38,35,49),
(39,36,52),
(40,37,26),
(41,38,57),
(42,39,71),
(43,40,23),
(44,41,1),
(45,42,7),
(46,43,2),
(47,44,69),
(48,45,27),
(49,46,50),
(50,47,40),
(51,48,28),
(52,49,88),
(53,50,80),
(54,51,18),
(55,52,62),
(56,53,83),
(57,54,63),
(58,55,14),
(59,56,72),
(60,57,12),
(61,58,48);
/*!40000 ALTER TABLE `direcciones_pacientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleados` (
  `empleados_id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido_pat` varchar(50) NOT NULL,
  `apellido_mat` varchar(50) NOT NULL,
  `titulo` varchar(50) DEFAULT NULL,
  `fecha_nacimiento` date NOT NULL,
  `otros` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`empleados_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES
(1,'Alejandro','McAlpine','McAlpine','Senior Engineer','1953-09-19','Geislweg 14'),
(2,'Breannda','Billingsley','Billingsley','Staff','1961-10-15','Estrada da sade n. 58'),
(3,'Tse','Herber','Herber','Senior Engineer','1962-10-19','Rua da Panificadora, 12'),
(4,'Anoosh','Peyn','Peyn','Engineer','1961-11-02','Alameda dos Canrios, 891'),
(5,'Gino','Leonhardt','Leonhardt','Senior Engineer','1952-08-06','Taucherstrae 10'),
(6,'Udi','Jansch','Jansch','Senior Staff','1959-04-07','Av. del Libertador 900'),
(7,'Satosi','Awdeh','Awdeh','Staff','1963-04-14','2817 Milton Dr.'),
(8,'Kwee','Schusler','Schusler','Senior Engineer','1952-11-13','Strada Provinciale 124'),
(9,'Claudi','Stavenow','Stavenow','Senior Staff','1953-01-07','Av. Copacabana, 267'),
(10,'Charlene','Brattka','Brattka','Staff','1962-11-26','Grenzacherweg 237'),
(11,'Margareta','Bierman','Bierman','Assistant Engineer','1960-09-06','Gran Va, 1'),
(12,'Reuven','Garigliano','Garigliano','Assistant Engineer','1955-08-20','Erling Skakkes gate 78'),
(13,'Hisao','Lipner','Lipner','Engineer','1958-01-21','187 Suffolk Ln.'),
(14,'Hironoby','Sidou','Sidou','Senior Engineer','1952-05-15','90 Wadhurst Rd.'),
(15,'Shir','McClurg','McClurg','Engineer','1954-02-23','Vinbltet 34'),
(16,'Mokhtar','Bernatsky','Bernatsky','Staff','1955-08-28','25, rue Lauriston'),
(17,'Gao','Dolinsky','Dolinsky','Engineer','1960-03-09','P.O. Box 555'),
(18,'Erez','Ritzmann','Ritzmann','Senior Engineer','1952-06-13','Boulevard Tirou, 255'),
(19,'Mona','Azuma','Azuma','Senior Staff','1964-04-18','89 Jefferson Way Suite 2'),
(20,'Danel','Mondadori','Mondadori','Engineer','1959-12-25','55 Grizzly Peak Rd.'),
(21,'Kshitij','Gils','Gils','Senior Staff','1961-10-05','Luisenstr. 48'),
(22,'Premal','Baek','Baek','Staff','1957-12-03','Avda. Azteca 123'),
(23,'Zhongwei','Rosen','Rosen','Senior Staff','1960-12-17','Av. Ins de Castro, 414'),
(24,'Parviz','Lortz','Lortz','Staff','1963-09-09','722 DaVinci Blvd.'),
(25,'Vishv','Zockler','Zockler','Engineer','1959-07-23','Smagsloget 45'),
(26,'Tuval','Kalloufi','Kalloufi','Senior Engineer','1960-05-25','2, rue du Commerce'),
(27,'Kenroku','Malabarba','Malabarba','Staff','1962-11-07','59 rue de l\'Abbaye'),
(28,'Somnath','Foote','Foote','Engineer','1962-11-19','Adenauerallee 900'),
(29,'Xinglin','Eugenio','Eugenio','Technique Leader','1959-07-23','Torikatu 38'),
(30,'Jungsoon','Syrzycki','Syrzycki','Engineer','1954-02-25','Rua do Mercado, 12'),
(31,'Prueba','Prueba','Prueba',NULL,'2024-11-09',NULL);
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formas_pago`
--

DROP TABLE IF EXISTS `formas_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formas_pago` (
  `forma_pago_id` int(11) NOT NULL AUTO_INCREMENT,
  `forma_pago` varchar(30) NOT NULL,
  PRIMARY KEY (`forma_pago_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formas_pago`
--

LOCK TABLES `formas_pago` WRITE;
/*!40000 ALTER TABLE `formas_pago` DISABLE KEYS */;
INSERT INTO `formas_pago` VALUES
(1,'EFECTIVO'),
(2,'TARJETA CRÉDITO'),
(3,'TARJETA DEBITO'),
(4,'SEGURO'),
(5,'CHEQUE');
/*!40000 ALTER TABLE `formas_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formas_pago_pacientes`
--

DROP TABLE IF EXISTS `formas_pago_pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formas_pago_pacientes` (
  `forma_pago_pac_id` int(11) NOT NULL AUTO_INCREMENT,
  `paciente_id` int(11) NOT NULL,
  `forma_pago_id` int(11) DEFAULT NULL,
  `detalles` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`forma_pago_pac_id`),
  KEY `paciente_id` (`paciente_id`),
  KEY `forma_pago_id` (`forma_pago_id`),
  CONSTRAINT `formas_pago_pacientes_ibfk_1` FOREIGN KEY (`paciente_id`) REFERENCES `pacientes` (`paciente_id`) ON UPDATE CASCADE,
  CONSTRAINT `formas_pago_pacientes_ibfk_2` FOREIGN KEY (`forma_pago_id`) REFERENCES `formas_pago` (`forma_pago_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formas_pago_pacientes`
--

LOCK TABLES `formas_pago_pacientes` WRITE;
/*!40000 ALTER TABLE `formas_pago_pacientes` DISABLE KEYS */;
INSERT INTO `formas_pago_pacientes` VALUES
(1,1,NULL,NULL),
(2,2,NULL,NULL),
(3,3,1,NULL),
(4,4,2,NULL),
(5,5,3,NULL),
(6,6,4,NULL),
(7,7,5,NULL),
(8,8,1,NULL),
(9,9,2,NULL),
(10,10,3,NULL),
(11,11,4,NULL),
(12,12,5,NULL),
(13,13,NULL,NULL),
(14,14,NULL,NULL),
(15,15,NULL,NULL),
(16,16,NULL,NULL),
(17,17,1,NULL),
(18,18,2,NULL),
(19,19,3,NULL),
(20,20,4,NULL),
(21,21,5,NULL),
(22,22,NULL,NULL),
(23,23,NULL,NULL),
(24,24,NULL,NULL),
(25,25,NULL,NULL),
(26,26,1,NULL),
(27,27,2,NULL),
(28,28,3,NULL),
(29,29,4,NULL),
(30,30,5,NULL),
(31,31,NULL,NULL),
(32,32,NULL,NULL),
(33,33,NULL,NULL),
(34,34,NULL,NULL),
(35,35,NULL,NULL),
(36,36,NULL,NULL),
(37,37,1,NULL),
(38,38,2,NULL),
(39,39,3,NULL),
(40,40,4,NULL),
(41,41,5,NULL),
(42,42,NULL,NULL),
(43,43,NULL,NULL),
(44,44,NULL,NULL),
(45,45,NULL,NULL),
(46,46,1,NULL),
(47,47,2,NULL),
(48,48,3,NULL),
(49,49,4,NULL),
(50,50,5,NULL),
(51,51,NULL,NULL),
(52,52,NULL,NULL),
(53,53,1,NULL),
(54,54,2,NULL),
(55,55,3,NULL),
(56,56,4,NULL),
(57,57,5,NULL),
(58,58,NULL,NULL);
/*!40000 ALTER TABLE `formas_pago_pacientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pacientes`
--

DROP TABLE IF EXISTS `pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pacientes` (
  `paciente_id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido_pat` varchar(50) NOT NULL,
  `apellido_mat` varchar(50) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `peso` decimal(4,2) NOT NULL,
  `altura` decimal(4,2) NOT NULL,
  `numero_seguro_social` varchar(11) NOT NULL,
  `genero` enum('masculino','femenino') DEFAULT NULL,
  `telefono_casa` varchar(10) DEFAULT NULL,
  `telefono_trabajo` varchar(10) DEFAULT NULL,
  `telefono_movil` varchar(10) DEFAULT NULL,
  `otros` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`paciente_id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pacientes`
--

LOCK TABLES `pacientes` WRITE;
/*!40000 ALTER TABLE `pacientes` DISABLE KEYS */;
INSERT INTO `pacientes` VALUES
(1,'Georgi','Facello','Facello','1960-02-20',93.00,1.99,'10001','masculino',NULL,NULL,NULL,NULL),
(2,'Bezalel','Simmel','Simmel','1952-07-08',88.00,1.69,'10002','femenino',NULL,NULL,NULL,NULL),
(3,'Parto','Bamford','Bamford','1953-09-29',62.00,1.88,'10003','masculino',NULL,NULL,NULL,NULL),
(4,'Chirstian','Koblick','Koblick','1958-09-05',93.00,1.84,'10004','masculino',NULL,NULL,NULL,NULL),
(5,'Kyoichi','Maliniak','Maliniak','1958-10-31',86.00,1.89,'10005','masculino',NULL,NULL,NULL,NULL),
(6,'Anneke','Preusig','Preusig','1953-04-03',86.00,1.54,'10006','femenino',NULL,NULL,NULL,NULL),
(7,'Tzvetan','Zielinski','Zielinski','1962-07-10',56.00,1.77,'10007','femenino',NULL,NULL,NULL,NULL),
(8,'Saniya','Kalloufi','Kalloufi','1963-11-26',78.00,1.82,'10008','femenino',NULL,NULL,NULL,NULL),
(9,'Sumant','Peac','Peac','1956-12-13',85.00,1.64,'10009','masculino',NULL,NULL,NULL,NULL),
(10,'Duangkaew','Piveteau','Piveteau','1958-07-14',92.00,1.71,'10010','masculino',NULL,NULL,NULL,NULL),
(11,'Mary','Sluis','Sluis','1959-01-27',96.00,1.96,'10011','femenino',NULL,NULL,NULL,NULL),
(12,'Patricio','Bridgland','Bridgland','1960-08-09',63.00,1.90,'10012','masculino',NULL,NULL,NULL,NULL),
(13,'Eberhardt','Terkki','Terkki','1956-11-14',81.00,1.64,'10013','masculino',NULL,NULL,NULL,NULL),
(14,'Berni','Genin','Genin','1962-12-29',67.00,1.74,'10014','masculino',NULL,NULL,NULL,NULL),
(15,'Guoxiang','Nooteboom','Nooteboom','1953-02-08',60.00,1.55,'10015','masculino',NULL,NULL,NULL,NULL),
(16,'Kazuhito','Cappelletti','Cappelletti','1959-08-10',97.00,1.71,'10016','masculino',NULL,NULL,NULL,NULL),
(17,'Cristinel','Bouloucos','Bouloucos','1963-07-22',66.00,1.91,'10017','masculino',NULL,NULL,NULL,NULL),
(18,'Kazuhide','Peha','Peha','1960-07-20',88.00,1.51,'10018','masculino',NULL,NULL,NULL,NULL),
(19,'Lillian','Haddadi','Haddadi','1959-10-01',85.00,1.61,'10019','femenino',NULL,NULL,NULL,NULL),
(20,'Mayuko','Warwick','Warwick','1959-09-13',96.00,1.78,'10020','femenino',NULL,NULL,NULL,NULL),
(21,'Ramzi','Erde','Erde','1959-08-27',91.00,1.61,'10021','masculino',NULL,NULL,NULL,NULL),
(22,'Shahaf','Famili','Famili','1956-02-26',70.00,1.81,'10022','masculino',NULL,NULL,NULL,NULL),
(23,'Bojan','Montemayor','Montemayor','1960-09-19',86.00,1.80,'10023','masculino',NULL,NULL,NULL,NULL),
(24,'Suzette','Pettey','Pettey','1961-09-21',79.00,1.74,'10024','femenino',NULL,NULL,NULL,NULL),
(25,'Prasadram','Heyers','Heyers','1957-08-14',91.00,1.95,'10025','masculino',NULL,NULL,NULL,NULL),
(26,'Yongqiao','Berztiss','Berztiss','1960-07-23',75.00,1.91,'10026','masculino',NULL,NULL,NULL,NULL),
(27,'Divier','Reistad','Reistad','1952-06-29',57.00,1.60,'10027','masculino',NULL,NULL,NULL,NULL),
(28,'Domenick','Tempesti','Tempesti','1963-07-11',62.00,1.72,'10028','masculino',NULL,NULL,NULL,NULL),
(29,'Otmar','Herbst','Herbst','1961-04-24',77.00,1.60,'10029','masculino',NULL,NULL,NULL,NULL),
(30,'Elvis','Demeyer','Demeyer','1958-05-21',93.00,1.64,'10030','masculino',NULL,NULL,NULL,NULL),
(31,'Karsten','Joslin','Joslin','1953-07-28',95.00,1.52,'10031','masculino',NULL,NULL,NULL,NULL),
(32,'Jeong ','Reistad ','Reistad ','1961-02-26',84.00,1.60,'10032','masculino',NULL,NULL,NULL,NULL),
(33,'Arif','Merlo','Merlo','1954-09-13',92.00,1.77,'10033','masculino',NULL,NULL,NULL,NULL),
(34,'Bader','Swan','Swan','1957-04-04',69.00,1.56,'10034','masculino',NULL,NULL,NULL,NULL),
(35,'Alain','Chappelet','Chappelet','1956-06-06',57.00,1.55,'10035','masculino',NULL,NULL,NULL,NULL),
(36,'Adamantios','Portugali','Portugali','1961-09-01',62.00,1.99,'10036','masculino',NULL,NULL,NULL,NULL),
(37,'Pradeep','Makrucki','Makrucki','1954-05-30',60.00,1.75,'10037','masculino',NULL,NULL,NULL,NULL),
(38,'Huan','Lortz','Lortz','1954-10-01',97.00,1.88,'10038','masculino',NULL,NULL,NULL,NULL),
(39,'Alejandro','Brender','Brender','1959-10-01',92.00,1.78,'10039','masculino',NULL,NULL,NULL,NULL),
(40,'Weiyi','Meriste','Meriste','1959-09-13',97.00,1.84,'10040','masculino',NULL,NULL,NULL,NULL),
(41,'Uri','Lenart','Lenart','1959-08-27',80.00,1.90,'10041','masculino',NULL,NULL,NULL,NULL),
(42,'Magy','Stamatiou','Stamatiou','1956-02-26',69.00,1.91,'10042','femenino',NULL,NULL,NULL,NULL),
(43,'Yishay','Tzvieli','Tzvieli','1960-09-19',65.00,1.95,'10043','masculino',NULL,NULL,NULL,NULL),
(44,'Mingsen','Casley','Casley','1961-09-21',90.00,1.80,'10044','masculino',NULL,NULL,NULL,NULL),
(45,'Moss','Shanbhogue','Shanbhogue','1957-08-14',90.00,1.97,'10045','masculino',NULL,NULL,NULL,NULL),
(46,'Lucien','Rosenbaum','Rosenbaum','1960-07-23',85.00,1.53,'10046','masculino',NULL,NULL,NULL,NULL),
(47,'Zvonko','Nyanchama','Nyanchama','1952-06-29',78.00,1.65,'10047','masculino',NULL,NULL,NULL,NULL),
(48,'Florian','Syrotiuk','Syrotiuk','1963-07-11',76.00,1.58,'10048','masculino',NULL,NULL,NULL,NULL),
(49,'Basil','Tramer','Tramer','1961-04-24',99.00,1.55,'10049','masculino',NULL,NULL,NULL,NULL),
(50,'Yinghua','Dredge','Dredge','1958-05-21',78.00,1.54,'10050','femenino',NULL,NULL,NULL,NULL),
(51,'Hidefumi','Caine','Caine','1953-07-28',54.00,1.84,'10051','masculino',NULL,NULL,NULL,NULL),
(52,'Heping','Nitsch','Nitsch','1961-02-26',85.00,1.59,'10052','masculino',NULL,NULL,NULL,NULL),
(53,'Sanjiv','Zschoche','Zschoche','1954-09-13',52.00,1.53,'10053','masculino',NULL,NULL,NULL,NULL),
(54,'Mayumi','Schueller','Schueller','1957-04-04',75.00,1.72,'10054','femenino',NULL,NULL,NULL,NULL),
(55,'Georgy','Dredge','Dredge','1956-06-06',97.00,1.61,'10055','masculino',NULL,NULL,NULL,NULL),
(56,'Brendon','Bernini','Bernini','1961-09-01',91.00,1.63,'10056','masculino',NULL,NULL,NULL,NULL),
(57,'Ebbe','Callaway','Callaway','1954-05-30',91.00,1.96,'10057','masculino',NULL,NULL,NULL,NULL),
(58,'Berhard','McFarlin','McFarlin','1954-10-01',99.00,1.96,'10058 ','masculino',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `pacientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registro_pacientes`
--

DROP TABLE IF EXISTS `registro_pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registro_pacientes` (
  `registro_paciente_id` int(11) NOT NULL AUTO_INCREMENT,
  `paciente_id` int(11) NOT NULL,
  `cuentas_pacientes_id` int(11) NOT NULL,
  `registro_por_empleado_id` int(11) NOT NULL,
  `fecha_admision` date NOT NULL,
  `condicion_medica` varchar(100) NOT NULL,
  `otros` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`registro_paciente_id`),
  KEY `paciente_id` (`paciente_id`),
  KEY `cuentas_pacientes_id` (`cuentas_pacientes_id`),
  KEY `registro_por_empleado_id` (`registro_por_empleado_id`),
  CONSTRAINT `registro_pacientes_ibfk_1` FOREIGN KEY (`paciente_id`) REFERENCES `pacientes` (`paciente_id`) ON UPDATE CASCADE,
  CONSTRAINT `registro_pacientes_ibfk_2` FOREIGN KEY (`cuentas_pacientes_id`) REFERENCES `cuentas_pacientes` (`cuentas_pacientes_id`),
  CONSTRAINT `registro_pacientes_ibfk_3` FOREIGN KEY (`registro_por_empleado_id`) REFERENCES `empleados` (`empleados_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registro_pacientes`
--

LOCK TABLES `registro_pacientes` WRITE;
/*!40000 ALTER TABLE `registro_pacientes` DISABLE KEYS */;
INSERT INTO `registro_pacientes` VALUES
(59,1,1,1,'2017-04-20','Abdominal Aortic Aneurysm',NULL),
(60,1,2,1,'2017-04-20','Abdominal Aortic Aneurysm',NULL),
(61,2,3,2,'2017-04-17','Abdominal Cramps (Heat Cramps)',NULL),
(62,2,4,2,'2017-04-17','Abdominal Cramps (Heat Cramps)',NULL),
(63,3,5,3,'2017-04-20','Abdominal Hernia (Hernia Overview)',NULL),
(64,3,6,3,'2017-04-20','Abdominal Hernia (Hernia Overview)',NULL),
(65,4,7,4,'2017-04-22','Bacterial Vaginosis (Causes, Symptoms, Treatment)',NULL),
(66,4,8,4,'2017-04-22','Bacterial Vaginosis (Causes, Symptoms, Treatment)',NULL),
(67,5,9,5,'2017-04-21','Bad Breath',NULL),
(68,5,10,5,'2017-04-21','Bad Breath',NULL),
(69,6,11,6,'2017-04-18','Bad Cholesterol Test (Cholesterol Test)',NULL),
(70,6,12,6,'2017-04-18','Bad Cholesterol Test (Cholesterol Test)',NULL),
(71,7,13,7,'2017-04-24','Baker Cyst',NULL),
(72,7,14,7,'2017-04-24','Baker Cyst',NULL),
(73,8,15,8,'2017-04-27','Farting (Intestinal Gas (Belching, Bloating, Flatulence))',NULL),
(74,8,16,8,'2017-04-27','Farting (Intestinal Gas (Belching, Bloating, Flatulence))',NULL),
(75,9,17,9,'2017-04-28','Fast Heart Beat (Palpitations Overview)',NULL),
(76,9,18,9,'2017-04-28','Fast Heart Beat (Palpitations Overview)',NULL),
(77,10,19,10,'2017-04-27','Fatigue',NULL),
(78,10,20,10,'2017-04-27','Fatigue',NULL),
(79,11,21,11,'2017-04-28','Fatigue From Cancer (Cancer Fatigue',NULL),
(80,11,22,11,'2017-04-28','Fatigue From Cancer (Cancer Fatigue',NULL),
(81,12,23,12,'2017-04-28','Lambliasis (Giardia Lamblia)',NULL),
(82,12,24,12,'2017-04-28','Lambliasis (Giardia Lamblia)',NULL),
(83,13,25,13,'2017-04-29','Lambliosis (Giardia Lamblia)',NULL),
(84,13,26,13,'2017-04-29','Lambliosis (Giardia Lamblia)',NULL),
(85,14,27,14,'2017-04-26','Landau-Kleffner Syndrome',NULL),
(86,14,28,14,'2017-04-26','Landau-Kleffner Syndrome',NULL),
(87,15,29,15,'2017-05-05','Lap Band Surgery (Gastric Banding)',NULL),
(88,15,30,15,'2017-05-05','Lap Band Surgery (Gastric Banding)',NULL),
(89,16,31,16,'2017-05-02','Laparoscopic Liver Biopsy (Liver Biopsy)',NULL),
(90,16,32,16,'2017-05-02','Laparoscopic Liver Biopsy (Liver Biopsy)',NULL),
(91,17,33,17,'2017-05-01','Omega-3 Fatty Acids',NULL),
(92,17,34,17,'2017-05-01','Omega-3 Fatty Acids',NULL),
(93,18,35,18,'2017-05-12','Onchocerciasis',NULL),
(94,18,36,18,'2017-05-12','Onchocerciasis',NULL),
(95,19,37,19,'2017-05-03','Onychocryptosis (Ingrown Toenail)',NULL),
(96,19,38,19,'2017-05-03','Onychocryptosis (Ingrown Toenail)',NULL),
(97,20,39,20,'2017-05-09','Scarlatina)',NULL),
(98,20,40,20,'2017-05-09','Scarlatina)',NULL),
(99,21,41,21,'2017-05-08','Scars',NULL),
(100,21,42,21,'2017-05-08','Scars',NULL),
(101,22,43,22,'2017-05-14','Schatzki Ring',NULL),
(102,22,44,22,'2017-05-14','Schatzki Ring',NULL),
(103,23,45,23,'2017-05-12','Scheuermann\'s Kyphosis (Kyphosis)',NULL),
(104,23,46,23,'2017-05-12','Scheuermann\'s Kyphosis (Kyphosis)',NULL),
(105,24,47,24,'2017-05-05','Schistosoma guineensis (Schistosomiasis)',NULL),
(106,24,48,24,'2017-05-05','Schistosoma guineensis (Schistosomiasis)',NULL),
(107,25,49,25,'2017-05-19','Schistosoma haematobium (Schistosomiasis)',NULL),
(108,25,50,25,'2017-05-19','Schistosoma haematobium (Schistosomiasis)',NULL),
(109,26,51,26,'2017-05-14','Schistosoma japonicum (Schistosomiasis)',NULL),
(110,26,52,26,'2017-05-14','Schistosoma japonicum (Schistosomiasis)',NULL),
(111,27,53,27,'2017-05-12','Tachycardia (Heart Rhythm Disorders)',NULL),
(112,27,54,27,'2017-05-12','Tachycardia (Heart Rhythm Disorders)',NULL),
(113,28,55,28,'2017-05-15','Tachycardia, Paroxysmal Atrial (Paroxysmal Supraventricular Tachycardia (PSVT))',NULL),
(114,28,56,28,'2017-05-15','Tachycardia, Paroxysmal Atrial (Paroxysmal Supraventricular Tachycardia (PSVT))',NULL),
(115,29,57,29,'2017-05-13','Tachycardia, Paroxysmal Supraventricular (Paroxysmal Supraventricular Tachycardia (PSVT))',NULL),
(116,29,58,29,'2017-05-13','Tachycardia, Paroxysmal Supraventricular (Paroxysmal Supraventricular Tachycardia (PSVT))',NULL),
(117,30,59,30,'2017-05-18','Tailbone Pain (Coccydynia)',NULL),
(118,30,60,30,'2017-05-18','Tailbone Pain (Coccydynia)',NULL),
(119,31,61,1,'2017-05-20','Tailor\'s Bunion (Bunions)',NULL),
(120,31,62,1,'2017-05-20','Tailor\'s Bunion (Bunions)',NULL),
(121,32,63,2,'2017-05-26','Takayasu Arteritis (Takayasu Disease)',NULL),
(122,32,64,2,'2017-05-26','Takayasu Arteritis (Takayasu Disease)',NULL),
(123,33,65,3,'2017-05-22','Takayasu Disease',NULL),
(124,33,66,3,'2017-05-22','Takayasu Disease',NULL),
(125,34,67,4,'2017-05-21','Taking Dental Medications',NULL),
(126,34,68,4,'2017-05-21','Taking Dental Medications',NULL),
(127,35,69,5,'2017-05-16','Tarry Stools (Stool Color Changes)',NULL),
(128,35,70,5,'2017-05-16','Tarry Stools (Stool Color Changes)',NULL),
(129,36,71,6,'2017-05-20','Abdominal Aortic Aneurysm',NULL),
(130,36,72,6,'2017-05-20','Abdominal Aortic Aneurysm',NULL),
(131,37,73,7,'2017-05-27','Abdominal Cramps (Heat Cramps)',NULL),
(132,37,74,7,'2017-05-27','Abdominal Cramps (Heat Cramps)',NULL),
(133,38,75,8,'2017-05-21','Abdominal Hernia (Hernia Overview)',NULL),
(134,38,76,8,'2017-05-21','Abdominal Hernia (Hernia Overview)',NULL),
(135,39,77,9,'2017-05-26','Bacterial Vaginosis (Causes, Symptoms, Treatment)',NULL),
(136,39,78,9,'2017-05-26','Bacterial Vaginosis (Causes, Symptoms, Treatment)',NULL),
(137,40,79,10,'2017-05-31','Bad Breath',NULL),
(138,40,80,10,'2017-05-31','Bad Breath',NULL),
(139,41,81,11,'2017-05-31','Bad Cholesterol Test (Cholesterol Test)',NULL),
(140,41,82,11,'2017-05-31','Bad Cholesterol Test (Cholesterol Test)',NULL),
(141,42,83,12,'2017-06-01','Baker Cyst',NULL),
(142,42,84,12,'2017-06-01','Baker Cyst',NULL),
(143,43,85,13,'2017-05-27','Farting (Intestinal Gas (Belching, Bloating, Flatulence))',NULL),
(144,43,86,13,'2017-05-27','Farting (Intestinal Gas (Belching, Bloating, Flatulence))',NULL),
(145,44,87,14,'2017-06-07','Fast Heart Beat (Palpitations Overview)',NULL),
(146,44,88,14,'2017-06-07','Fast Heart Beat (Palpitations Overview)',NULL),
(147,45,89,15,'2017-06-04','Fatigue',NULL),
(148,45,90,15,'2017-06-04','Fatigue',NULL),
(149,46,91,16,'2017-06-07','Fatigue From Cancer (Cancer Fatigue',NULL),
(150,46,92,16,'2017-06-07','Fatigue From Cancer (Cancer Fatigue',NULL),
(151,47,93,17,'2017-05-31','Lambliasis (Giardia Lamblia)',NULL),
(152,47,94,17,'2017-05-31','Lambliasis (Giardia Lamblia)',NULL),
(153,48,95,18,'2017-06-07','Lambliosis (Giardia Lamblia)',NULL),
(154,48,96,18,'2017-06-07','Lambliosis (Giardia Lamblia)',NULL),
(155,49,97,19,'2017-05-31','Landau-Kleffner Syndrome',NULL),
(156,49,98,19,'2017-05-31','Landau-Kleffner Syndrome',NULL),
(157,50,99,20,'2017-06-03','Lap Band Surgery (Gastric Banding)',NULL),
(158,50,100,20,'2017-06-03','Lap Band Surgery (Gastric Banding)',NULL),
(159,51,101,21,'2017-06-03','Laparoscopic Liver Biopsy (Liver Biopsy)',NULL),
(160,51,102,21,'2017-06-03','Laparoscopic Liver Biopsy (Liver Biopsy)',NULL),
(161,52,103,22,'2017-06-10','Omega-3 Fatty Acids',NULL),
(162,52,104,22,'2017-06-10','Omega-3 Fatty Acids',NULL),
(163,53,105,23,'2017-06-14','Onchocerciasis',NULL),
(164,53,106,23,'2017-06-14','Onchocerciasis',NULL),
(165,54,107,24,'2017-06-09','Onychocryptosis (Ingrown Toenail)',NULL),
(166,54,108,24,'2017-06-09','Onychocryptosis (Ingrown Toenail)',NULL),
(167,55,109,25,'2017-06-14','Scarlatina)',NULL),
(168,55,110,25,'2017-06-14','Scarlatina)',NULL),
(169,56,111,26,'2017-06-17','Scars',NULL),
(170,56,112,26,'2017-06-17','Scars',NULL),
(171,57,113,27,'2017-06-16','Schatzki Ring',NULL),
(172,57,114,27,'2017-06-16','Schatzki Ring',NULL),
(173,58,115,28,'2017-06-15','Scheuermann\'s Kyphosis (Kyphosis)',NULL),
(174,58,116,28,'2017-06-15','Scheuermann\'s Kyphosis (Kyphosis)',NULL);
/*!40000 ALTER TABLE `registro_pacientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'Hospital'
--

--
-- Dumping routines for database 'Hospital'
--
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP FUNCTION IF EXISTS `CALCULAR_DIGITO_VERIFICADOR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_uca1400_ai_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `CALCULAR_DIGITO_VERIFICADOR`(nss_base VARCHAR(10)) RETURNS int(11)
    DETERMINISTIC
BEGIN
    DECLARE suma_total INT DEFAULT 0;
    DECLARE posicion INT DEFAULT 1;
    DECLARE multiplicador INT;
    DECLARE valor INT;
    
    WHILE posicion <= CHAR_LENGTH(nss_base) DO
        SET multiplicador = CASE WHEN MOD(posicion, 2) = 1 THEN 1 ELSE 2 END;
        SET valor = SUBSTRING(nss_base, posicion, 1) * multiplicador;
        -- caso: reducir a un solo digito cuando es > 10
        IF valor >= 10 THEN
            SET valor = FLOOR(valor / 10) + MOD(valor, 10);
        END IF;
        -- suma
        SET suma_total = suma_total + valor;
        SET posicion = posicion + 1;
    END WHILE;
    -- calculo del faltante (y hacer return a la vez)
    RETURN (10 - MOD(suma_total, 10)) MOD 10;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP FUNCTION IF EXISTS `GENERAR_NUMERO_SEGURO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_uca1400_ai_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GENERAR_NUMERO_SEGURO`(fecha_nacimiento DATE) RETURNS varchar(11) CHARSET utf8mb4 COLLATE utf8mb4_unicode_ci
    DETERMINISTIC
BEGIN
    DECLARE oficina_id VARCHAR(2);
    DECLARE anio_registro INT;
    DECLARE nacimiento_corto VARCHAR(2);
    DECLARE numero_consecutivo INT;
    DECLARE digito_final INT;
    DECLARE nss_completo_base VARCHAR(10);

    -- número oficina (RANDOM)
    SET oficina_id = LPAD(FLOOR(RAND() * 100), 2, '0');
    -- año de inscripción (CALCULADO)
    SET anio_registro = FLOOR(YEAR(fecha_nacimiento) + 15 + RAND() * (YEAR(CURDATE()) - (YEAR(fecha_nacimiento) + 15)));
    -- tomar 2 dig. de la fecha de nacimientos
    SET nacimiento_corto = RIGHT(YEAR(fecha_nacimiento), 2);

    -- meter al siguiente consecutivo
    SELECT consecutivo INTO numero_consecutivo 
    FROM CONSECUTIVOS 
    ORDER BY consecutivo DESC LIMIT 1;
    INSERT INTO CONSECUTIVOS (consecutivo) VALUES (numero_consecutivo + 1);

    -- pre nss
    SET nss_completo_base = CONCAT(oficina_id, RIGHT(anio_registro, 2), nacimiento_corto, numero_consecutivo);
	-- dig. verif. (YA ESTÁ LA FUNCIÓN)
    SET digito_final = CALCULAR_DIGITO_VERIFICADOR(nss_completo_base);

	-- juntar todo y hacer el return
    RETURN CONCAT(nss_completo_base, digito_final);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ACTUALIZAR_PAGOS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_uca1400_ai_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ACTUALIZAR_PAGOS`(IN id_paciente INT)
BEGIN
	-- efectivos
    SELECT
        'EFECTIVO' AS TIPO_PAGO, FORMAT(SUM(CASE WHEN fp.tipo_pago = 'EFECTIVO' THEN fp.monto ELSE 0 END), 2) AS MONTO
    UNION ALL
    -- cheques
    SELECT
        'CHEQUE', FORMAT(SUM(CASE WHEN fp.tipo_pago = 'CHEQUE' THEN fp.monto ELSE 0 END), 2)
    UNION ALL
    -- tarjetas cred.
    SELECT
        'TARJETA CRÉDITO', FORMAT(SUM(CASE WHEN fp.tipo_pago = 'TARJETA CRÉDITO' THEN fp.monto ELSE 0 END), 2)
    UNION ALL
    -- tarjetas deb.
    SELECT
        'TARJETA DÉBITO', FORMAT(SUM(CASE WHEN fp.tipo_pago = 'TARJETA DÉBITO' THEN fp.monto ELSE 0 END), 2)
    UNION ALL
    -- no pago
    SELECT
        'SIN PAGO', FORMAT(SUM(CASE WHEN fp.tipo_pago = 'SIN PAGO' THEN fp.monto ELSE 0 END), 2)
    FROM formas_pago_pacientes fp
    WHERE fp.paciente_id = id_paciente;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2024-12-08 17:29:21
