-- MySQL dump 10.13  Distrib 5.7.19, for Linux (x86_64)
--
-- Host: localhost    Database: project
-- ------------------------------------------------------
-- Server version	5.7.19-0ubuntu0.17.04.1

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
  `GroupCode` int(11) NOT NULL AUTO_INCREMENT,
  `GroupName` varchar(10) DEFAULT NULL,
  `StartRollNo` int(11) DEFAULT NULL,
  `EndRollNo` int(11) DEFAULT NULL,
  PRIMARY KEY (`GroupCode`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GroupTable`
--

LOCK TABLES `GroupTable` WRITE;
/*!40000 ALTER TABLE `GroupTable` DISABLE KEYS */;
INSERT INTO `GroupTable` VALUES (1,'L10',3021,3040),(2,'test',1,2),(3,'L9',3931,3940);
/*!40000 ALTER TABLE `GroupTable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LoginTable`
--

DROP TABLE IF EXISTS `LoginTable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LoginTable` (
  `UserID` varchar(10) NOT NULL,
  `UserName` varchar(255) DEFAULT NULL,
  `Password` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LoginTable`
--

LOCK TABLES `LoginTable` WRITE;
/*!40000 ALTER TABLE `LoginTable` DISABLE KEYS */;
INSERT INTO `LoginTable` VALUES ('111','1 1. 1',NULL),('jkk','jkk kalabaap. kalima',NULL),('nbk','naam baapkanaam. khandankanaam',NULL),('t','t','abc');
/*!40000 ALTER TABLE `LoginTable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SubjectCoordinator`
--

DROP TABLE IF EXISTS `SubjectCoordinator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SubjectCoordinator` (
  `UserID` varchar(10) DEFAULT NULL,
  `SubjectCode` int(11) DEFAULT NULL,
  KEY `UserID` (`UserID`),
  KEY `SubjectCode` (`SubjectCode`),
  CONSTRAINT `SubjectCoordinator_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `UserInfo` (`UserID`),
  CONSTRAINT `SubjectCoordinator_ibfk_2` FOREIGN KEY (`SubjectCode`) REFERENCES `SubjectTable` (`SubjectCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SubjectCoordinator`
--

LOCK TABLES `SubjectCoordinator` WRITE;
/*!40000 ALTER TABLE `SubjectCoordinator` DISABLE KEYS */;
INSERT INTO `SubjectCoordinator` VALUES ('111',1),('111',2);
/*!40000 ALTER TABLE `SubjectCoordinator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SubjectTable`
--

DROP TABLE IF EXISTS `SubjectTable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SubjectTable` (
  `SubjectCode` int(11) NOT NULL AUTO_INCREMENT,
  `SubjectName` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`SubjectCode`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SubjectTable`
--

LOCK TABLES `SubjectTable` WRITE;
/*!40000 ALTER TABLE `SubjectTable` DISABLE KEYS */;
INSERT INTO `SubjectTable` VALUES (1,'test'),(2,'DBMS'),(3,'OS');
/*!40000 ALTER TABLE `SubjectTable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserInfo`
--

DROP TABLE IF EXISTS `UserInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserInfo` (
  `UserID` varchar(10) NOT NULL,
  `UserName` varchar(255) DEFAULT NULL,
  `SubjectCode` int(11) NOT NULL,
  `GroupCode` int(11) NOT NULL,
  `AssignCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`UserID`,`GroupCode`,`SubjectCode`),
  KEY `SubjectCode` (`SubjectCode`),
  KEY `GroupCode` (`GroupCode`),
  CONSTRAINT `UserInfo_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `LoginTable` (`UserID`),
  CONSTRAINT `UserInfo_ibfk_2` FOREIGN KEY (`SubjectCode`) REFERENCES `SubjectTable` (`SubjectCode`),
  CONSTRAINT `UserInfo_ibfk_3` FOREIGN KEY (`GroupCode`) REFERENCES `GroupTable` (`GroupCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserInfo`
--

LOCK TABLES `UserInfo` WRITE;
/*!40000 ALTER TABLE `UserInfo` DISABLE KEYS */;
INSERT INTO `UserInfo` VALUES ('111','1 1. 1',1,1,NULL),('t','t',2,2,NULL);
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

-- Dump completed on 2017-10-06 17:11:27
