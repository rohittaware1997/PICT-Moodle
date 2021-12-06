-- MySQL dump 10.13  Distrib 5.7.18, for Linux (x86_64)
--
-- Host: localhost    Database: MiniProject
-- ------------------------------------------------------
-- Server version	5.7.18-0ubuntu0.16.10.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `GroupTable`
--

DROP TABLE IF EXISTS `GroupTable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GroupTable` (
  `GroupCode` int(11) DEFAULT NULL,
  `GroupName` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GroupTable`
--

LOCK TABLES `GroupTable` WRITE;
/*!40000 ALTER TABLE `GroupTable` DISABLE KEYS */;
INSERT INTO `GroupTable` VALUES (1,'K9'),(2,'L9'),(3,'M9'),(4,'N9'),(5,'K10'),(6,'L10'),(7,'M10'),(8,'N10');
/*!40000 ALTER TABLE `GroupTable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LoginTable`
--

DROP TABLE IF EXISTS `LoginTable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LoginTable` (
  `UserID` varchar(3) DEFAULT NULL,
  `Password` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LoginTable`
--

LOCK TABLES `LoginTable` WRITE;
/*!40000 ALTER TABLE `LoginTable` DISABLE KEYS */;
INSERT INTO `LoginTable` VALUES ('RBM','abc'),('JKK','abc'),('SAJ','abc'),('TAR','abc'),('NVB','abc'),('PPJ','abc'),('SDS','abc'),('VRJ','abc'),('RRC','abc');
/*!40000 ALTER TABLE `LoginTable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SubjectTable`
--

DROP TABLE IF EXISTS `SubjectTable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SubjectTable` (
  `SubjectCode` int(11) DEFAULT NULL,
  `SubjectName` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SubjectTable`
--

LOCK TABLES `SubjectTable` WRITE;
/*!40000 ALTER TABLE `SubjectTable` DISABLE KEYS */;
INSERT INTO `SubjectTable` VALUES (1,'SL-1'),(2,'SL-2'),(3,'SL-3');
/*!40000 ALTER TABLE `SubjectTable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserInfo`
--

DROP TABLE IF EXISTS `UserInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserInfo` (
  `UserID` varchar(3) DEFAULT NULL,
  `UserName` varchar(50) DEFAULT NULL,
  `SubjectCode` int(11) DEFAULT NULL,
  `GroupCode` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserInfo`
--

LOCK TABLES `UserInfo` WRITE;
/*!40000 ALTER TABLE `UserInfo` DISABLE KEYS */;
INSERT INTO `UserInfo` VALUES ('RBM','Ravindra B. Murumkar',1,1),('RBM','Ravindra B. Murumkar',1,3),('JKK','Jagdish Kashinath Kamble',1,2),('JKK','Jagdish Kashinath Kamble',1,6),('JKK','Jagdish Kashinath Kamble',1,8),('SAJ','Sumitra Amit Jakhete',1,4),('SAJ','Sumitra Amit Jakhete',1,5),('SAJ','Sumitra Amit Jakhete',1,7),('TAR','Tushar Anant Rane',2,1),('TAR','Tushar Anant Rane',2,3),('NVB','Naman Vijay Buradkar',2,2),('NVB','Naman Vijay Buradkar',2,4),('PPJ','Pramod Pandurang Jadhav',3,1),('PPJ','Pramod Pandurang Jadhav',3,2),('SDS','Sachin Dasharath Shelke',3,3),('SDS','Sachin Dasharath Shelke',3,4),('SDS','Sachin Dasharath Shelke',3,5),('SDS','Sachin Dasharath Shelke',3,6),('SDS','Sachin Dasharath Shelke',3,7),('SDS','Sachin Dasharath Shelke',3,8),('VRJ','Vishal Ramesh Jaiswal',2,5),('VRJ','Vishal Ramesh Jaiswal',2,7),('RRC','Rachna Rameshchand Chajed',2,6),('RRC','Rachna Rameshchand Chajed',2,8);
/*!40000 ALTER TABLE `UserInfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-09 18:39:36
