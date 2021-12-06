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
-- Table structure for table `A2`
--

DROP TABLE IF EXISTS `A2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `A2` (
  `Rollno` int(4) DEFAULT NULL,
  `SubjectCode` int(3) DEFAULT NULL,
  `ScheduledDate` varchar(20) DEFAULT NULL,
  `SubmissionDate` varchar(20) DEFAULT NULL,
  `Marks` int(4) DEFAULT NULL,
  `Approved` int(1) DEFAULT NULL,
  KEY `SubjectCode` (`SubjectCode`),
  CONSTRAINT `A2_ibfk_1` FOREIGN KEY (`SubjectCode`) REFERENCES `SubjectTable` (`SubjectCode`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `A2`
--

LOCK TABLES `A2` WRITE;
/*!40000 ALTER TABLE `A2` DISABLE KEYS */;
INSERT INTO `A2` VALUES (3001,6,'16-10-2017','dd-mm-yyyy',0,0),(3002,6,'16-10-2017','dd-mm-yyyy',0,0),(3003,6,'16-10-2017','dd-mm-yyyy',0,0),(3004,6,'16-10-2017','dd-mm-yyyy',0,0),(3005,6,'16-10-2017','dd-mm-yyyy',0,0),(3006,6,'16-10-2017','dd-mm-yyyy',0,0),(3007,6,'16-10-2017','dd-mm-yyyy',0,0),(3008,6,'16-10-2017','dd-mm-yyyy',0,0),(3009,6,'16-10-2017','dd-mm-yyyy',0,0),(3010,6,'16-10-2017','dd-mm-yyyy',0,0),(3011,6,'16-10-2017','dd-mm-yyyy',0,0),(3012,6,'16-10-2017','dd-mm-yyyy',0,0),(3013,6,'16-10-2017','dd-mm-yyyy',0,0),(3014,6,'16-10-2017','dd-mm-yyyy',0,0),(3015,6,'16-10-2017','dd-mm-yyyy',0,0),(3016,6,'16-10-2017','dd-mm-yyyy',0,0),(3017,6,'16-10-2017','dd-mm-yyyy',0,0),(3018,6,'16-10-2017','dd-mm-yyyy',0,0),(3019,6,'16-10-2017','dd-mm-yyyy',0,0),(3020,6,'16-10-2017','dd-mm-yyyy',0,0),(3021,6,'16-10-2017','dd-mm-yyyy',0,0),(3022,6,'16-10-2017','dd-mm-yyyy',0,0),(3023,6,'16-10-2017','dd-mm-yyyy',0,0),(3024,6,'16-10-2017','dd-mm-yyyy',0,0),(3025,6,'16-10-2017','dd-mm-yyyy',0,0),(3026,6,'16-10-2017','dd-mm-yyyy',0,0),(3027,6,'16-10-2017','dd-mm-yyyy',0,0),(3028,6,'16-10-2017','dd-mm-yyyy',0,0),(3029,6,'16-10-2017','dd-mm-yyyy',0,0),(3030,6,'16-10-2017','dd-mm-yyyy',0,0),(3031,6,'16-10-2017','dd-mm-yyyy',0,0),(3032,6,'16-10-2017','dd-mm-yyyy',0,0),(3033,6,'16-10-2017','dd-mm-yyyy',0,0),(3034,6,'16-10-2017','dd-mm-yyyy',0,0),(3035,6,'16-10-2017','dd-mm-yyyy',0,0),(3036,6,'16-10-2017','dd-mm-yyyy',0,0),(3037,6,'16-10-2017','dd-mm-yyyy',0,0),(3038,6,'16-10-2017','dd-mm-yyyy',0,0),(3039,6,'16-10-2017','dd-mm-yyyy',0,0),(3040,6,'16-10-2017','dd-mm-yyyy',0,0),(3041,6,'16-10-2017','17-11-2017',10,1),(3042,6,'16-10-2017','dd-mm-yyyy',10,1),(3043,6,'16-10-2017','dd-mm-yyyy',0,0),(3044,6,'16-10-2017','dd-mm-yyyy',0,0),(3045,6,'16-10-2017','dd-mm-yyyy',0,0),(3046,6,'16-10-2017','dd-mm-yyyy',0,0),(3047,6,'16-10-2017','dd-mm-yyyy',0,0),(3048,6,'16-10-2017','dd-mm-yyyy',0,0),(3049,6,'16-10-2017','dd-mm-yyyy',0,0),(3050,6,'16-10-2017','dd-mm-yyyy',0,0),(3051,6,'16-10-2017','dd-mm-yyyy',0,0),(3052,6,'16-10-2017','dd-mm-yyyy',0,0),(3053,6,'16-10-2017','dd-mm-yyyy',0,0),(3054,6,'16-10-2017','dd-mm-yyyy',0,0),(3055,6,'16-10-2017','dd-mm-yyyy',0,0),(3056,6,'16-10-2017','dd-mm-yyyy',0,0),(3057,6,'16-10-2017','dd-mm-yyyy',0,0),(3058,6,'16-10-2017','dd-mm-yyyy',0,0),(3059,6,'16-10-2017','dd-mm-yyyy',0,0),(3060,6,'16-10-2017','dd-mm-yyyy',0,0),(3061,6,'16-10-2017','dd-mm-yyyy',0,0),(3062,6,'16-10-2017','dd-mm-yyyy',0,0),(3063,6,'16-10-2017','dd-mm-yyyy',0,0),(3064,6,'16-10-2017','dd-mm-yyyy',0,0),(3065,6,'16-10-2017','dd-mm-yyyy',0,0),(3066,6,'16-10-2017','dd-mm-yyyy',0,0),(3067,6,'16-10-2017','dd-mm-yyyy',0,0),(3068,6,'16-10-2017','dd-mm-yyyy',0,0),(3069,6,'16-10-2017','dd-mm-yyyy',0,0),(3070,6,'16-10-2017','dd-mm-yyyy',0,0),(3071,6,'16-10-2017','dd-mm-yyyy',0,0),(3072,6,'16-10-2017','dd-mm-yyyy',0,0),(3073,6,'16-10-2017','dd-mm-yyyy',0,0),(3074,6,'16-10-2017','dd-mm-yyyy',0,0),(3075,6,'16-10-2017','dd-mm-yyyy',0,0),(3076,6,'16-10-2017','dd-mm-yyyy',0,0),(3077,6,'16-10-2017','dd-mm-yyyy',0,0),(3078,6,'16-10-2017','dd-mm-yyyy',0,0),(3079,6,'16-10-2017','dd-mm-yyyy',0,0),(3080,6,'16-10-2017','dd-mm-yyyy',0,0),(3081,6,'16-10-2017','dd-mm-yyyy',0,0);
/*!40000 ALTER TABLE `A2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `A8`
--

DROP TABLE IF EXISTS `A8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `A8` (
  `Rollno` int(4) DEFAULT NULL,
  `SubjectCode` int(3) DEFAULT NULL,
  `ScheduledDate` varchar(20) DEFAULT NULL,
  `SubmissionDate` varchar(20) DEFAULT NULL,
  `Marks` int(4) DEFAULT NULL,
  `Approved` int(1) DEFAULT NULL,
  KEY `SubjectCode` (`SubjectCode`),
  CONSTRAINT `A8_ibfk_1` FOREIGN KEY (`SubjectCode`) REFERENCES `SubjectTable` (`SubjectCode`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `A8`
--

LOCK TABLES `A8` WRITE;
/*!40000 ALTER TABLE `A8` DISABLE KEYS */;
INSERT INTO `A8` VALUES (3001,6,'31-10-2017','dd-mm-yyyy',0,0),(3002,6,'31-10-2017','dd-mm-yyyy',0,0),(3003,6,'31-10-2017','dd-mm-yyyy',0,0),(3004,6,'31-10-2017','dd-mm-yyyy',0,0),(3005,6,'31-10-2017','dd-mm-yyyy',0,0),(3006,6,'31-10-2017','dd-mm-yyyy',0,0),(3007,6,'31-10-2017','dd-mm-yyyy',0,0),(3008,6,'31-10-2017','dd-mm-yyyy',0,0),(3009,6,'31-10-2017','dd-mm-yyyy',0,0),(3010,6,'31-10-2017','dd-mm-yyyy',0,0),(3011,6,'31-10-2017','dd-mm-yyyy',0,0),(3012,6,'31-10-2017','dd-mm-yyyy',0,0),(3013,6,'31-10-2017','dd-mm-yyyy',0,0),(3014,6,'31-10-2017','dd-mm-yyyy',0,0),(3015,6,'31-10-2017','dd-mm-yyyy',0,0),(3016,6,'31-10-2017','dd-mm-yyyy',0,0),(3017,6,'31-10-2017','dd-mm-yyyy',0,0),(3018,6,'31-10-2017','dd-mm-yyyy',0,0),(3019,6,'31-10-2017','dd-mm-yyyy',0,0),(3020,6,'31-10-2017','dd-mm-yyyy',0,0),(3021,6,'31-10-2017','dd-mm-yyyy',0,0),(3022,6,'31-10-2017','dd-mm-yyyy',0,0),(3023,6,'31-10-2017','dd-mm-yyyy',0,0),(3024,6,'31-10-2017','dd-mm-yyyy',0,0),(3025,6,'31-10-2017','dd-mm-yyyy',0,0),(3026,6,'31-10-2017','dd-mm-yyyy',0,0),(3027,6,'31-10-2017','dd-mm-yyyy',0,0),(3028,6,'31-10-2017','dd-mm-yyyy',0,0),(3029,6,'31-10-2017','dd-mm-yyyy',0,0),(3030,6,'31-10-2017','dd-mm-yyyy',0,0),(3031,6,'31-10-2017','dd-mm-yyyy',0,0),(3032,6,'31-10-2017','dd-mm-yyyy',0,0),(3033,6,'31-10-2017','dd-mm-yyyy',0,0),(3034,6,'31-10-2017','dd-mm-yyyy',0,0),(3035,6,'31-10-2017','dd-mm-yyyy',0,0),(3036,6,'31-10-2017','dd-mm-yyyy',0,0),(3037,6,'31-10-2017','dd-mm-yyyy',0,0),(3038,6,'31-10-2017','dd-mm-yyyy',0,0),(3039,6,'31-10-2017','dd-mm-yyyy',0,0),(3040,6,'31-10-2017','dd-mm-yyyy',0,0),(3041,6,'31-10-2017','01/57/2017',0,0),(3042,6,'31-10-2017','dd-mm-yyyy',0,0),(3043,6,'31-10-2017','dd-mm-yyyy',0,0),(3044,6,'31-10-2017','dd-mm-yyyy',0,0),(3045,6,'31-10-2017','dd-mm-yyyy',0,0),(3046,6,'31-10-2017','dd-mm-yyyy',0,0),(3047,6,'31-10-2017','dd-mm-yyyy',0,0),(3048,6,'31-10-2017','dd-mm-yyyy',0,0),(3049,6,'31-10-2017','dd-mm-yyyy',0,0),(3050,6,'31-10-2017','dd-mm-yyyy',0,0),(3051,6,'31-10-2017','dd-mm-yyyy',0,0),(3052,6,'31-10-2017','dd-mm-yyyy',0,0),(3053,6,'31-10-2017','dd-mm-yyyy',0,0),(3054,6,'31-10-2017','dd-mm-yyyy',0,0),(3055,6,'31-10-2017','dd-mm-yyyy',0,0),(3056,6,'31-10-2017','dd-mm-yyyy',0,0),(3057,6,'31-10-2017','dd-mm-yyyy',0,0),(3058,6,'31-10-2017','dd-mm-yyyy',0,0),(3059,6,'31-10-2017','dd-mm-yyyy',0,0),(3060,6,'31-10-2017','dd-mm-yyyy',0,0),(3061,6,'31-10-2017','dd-mm-yyyy',0,0),(3062,6,'31-10-2017','dd-mm-yyyy',0,0),(3063,6,'31-10-2017','dd-mm-yyyy',0,0),(3064,6,'31-10-2017','dd-mm-yyyy',0,0),(3065,6,'31-10-2017','dd-mm-yyyy',0,0),(3066,6,'31-10-2017','dd-mm-yyyy',0,0),(3067,6,'31-10-2017','dd-mm-yyyy',0,0),(3068,6,'31-10-2017','dd-mm-yyyy',0,0),(3069,6,'31-10-2017','dd-mm-yyyy',0,0),(3070,6,'31-10-2017','dd-mm-yyyy',0,0),(3071,6,'31-10-2017','dd-mm-yyyy',0,0),(3072,6,'31-10-2017','dd-mm-yyyy',0,0),(3073,6,'31-10-2017','dd-mm-yyyy',0,0),(3074,6,'31-10-2017','dd-mm-yyyy',0,0),(3075,6,'31-10-2017','dd-mm-yyyy',0,0),(3076,6,'31-10-2017','dd-mm-yyyy',0,0),(3077,6,'31-10-2017','dd-mm-yyyy',0,0),(3078,6,'31-10-2017','dd-mm-yyyy',0,0),(3079,6,'31-10-2017','dd-mm-yyyy',0,0),(3080,6,'31-10-2017','dd-mm-yyyy',0,0),(3081,6,'31-10-2017','dd-mm-yyyy',0,0);
/*!40000 ALTER TABLE `A8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `A9`
--

DROP TABLE IF EXISTS `A9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `A9` (
  `Rollno` int(4) DEFAULT NULL,
  `SubjectCode` int(3) DEFAULT NULL,
  `ScheduledDate` varchar(20) DEFAULT NULL,
  `SubmissionDate` varchar(20) DEFAULT NULL,
  `Marks` int(4) DEFAULT NULL,
  `Approved` int(1) DEFAULT NULL,
  KEY `SubjectCode` (`SubjectCode`),
  CONSTRAINT `A9_ibfk_1` FOREIGN KEY (`SubjectCode`) REFERENCES `SubjectTable` (`SubjectCode`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `A9`
--

LOCK TABLES `A9` WRITE;
/*!40000 ALTER TABLE `A9` DISABLE KEYS */;
/*!40000 ALTER TABLE `A9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AssignmentExist`
--

DROP TABLE IF EXISTS `AssignmentExist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AssignmentExist` (
  `AssignmentName` varchar(5) NOT NULL,
  `SubjectCode` int(11) NOT NULL,
  PRIMARY KEY (`AssignmentName`,`SubjectCode`),
  KEY `SubjectCode` (`SubjectCode`),
  CONSTRAINT `AssignmentExist_ibfk_1` FOREIGN KEY (`SubjectCode`) REFERENCES `SubjectTable` (`SubjectCode`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AssignmentExist`
--

LOCK TABLES `AssignmentExist` WRITE;
/*!40000 ALTER TABLE `AssignmentExist` DISABLE KEYS */;
INSERT INTO `AssignmentExist` VALUES ('A2',6),('A8',6);
/*!40000 ALTER TABLE `AssignmentExist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileDatabase`
--

DROP TABLE IF EXISTS `FileDatabase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileDatabase` (
  `FileName` varchar(255) DEFAULT NULL,
  `FileContent` longblob,
  `UserID` varchar(10) DEFAULT NULL,
  `SubjectName` varchar(40) DEFAULT NULL,
  `GroupName` varchar(40) DEFAULT NULL,
  `FileID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`FileID`),
  KEY `UserID` (`UserID`),
  CONSTRAINT `FileDatabase_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `LoginTable` (`UserID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileDatabase`
--

LOCK TABLES `FileDatabase` WRITE;
/*!40000 ALTER TABLE `FileDatabase` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileDatabase` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GroupTable`
--

LOCK TABLES `GroupTable` WRITE;
/*!40000 ALTER TABLE `GroupTable` DISABLE KEYS */;
INSERT INTO `GroupTable` VALUES (5,'L10',3021,3040),(6,'TE-10',3001,3080),(7,'M10',3041,3060);
/*!40000 ALTER TABLE `GroupTable` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger trig4 before delete on GroupTable
for each row
begin
delete from UserInfo where GroupCode=old.GroupCode;
delete from FileDatabase where GroupName=old.GroupName;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `LoginTable`
--

DROP TABLE IF EXISTS `LoginTable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LoginTable` (
  `UserID` varchar(10) NOT NULL,
  `UserName` varchar(255) NOT NULL,
  `Password` varchar(15) NOT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LoginTable`
--

LOCK TABLES `LoginTable` WRITE;
/*!40000 ALTER TABLE `LoginTable` DISABLE KEYS */;
INSERT INTO `LoginTable` VALUES ('3001','SameerKiranKulkarni','abc'),('JKK','Jagdish Kashinath. Kamble','abc'),('SAJ','Sumitra Amit. Jakhete','abc');
/*!40000 ALTER TABLE `LoginTable` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger trig1 before delete on LoginTable
for each row
begin
delete from UserInfo where UserID=old.UserID;
delete from SubjectCoordinator where UserID=old.UserID;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `SubjectCoordinator`
--

DROP TABLE IF EXISTS `SubjectCoordinator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SubjectCoordinator` (
  `UserID` varchar(10) NOT NULL,
  `SubjectCode` int(11) NOT NULL,
  PRIMARY KEY (`UserID`,`SubjectCode`),
  KEY `SubjectCode` (`SubjectCode`),
  CONSTRAINT `SubjectCoordinator_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `LoginTable` (`UserID`) ON DELETE CASCADE,
  CONSTRAINT `SubjectCoordinator_ibfk_2` FOREIGN KEY (`SubjectCode`) REFERENCES `SubjectTable` (`SubjectCode`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SubjectCoordinator`
--

LOCK TABLES `SubjectCoordinator` WRITE;
/*!40000 ALTER TABLE `SubjectCoordinator` DISABLE KEYS */;
INSERT INTO `SubjectCoordinator` VALUES ('SAJ',6),('SAJ',8),('JKK',9);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SubjectTable`
--

LOCK TABLES `SubjectTable` WRITE;
/*!40000 ALTER TABLE `SubjectTable` DISABLE KEYS */;
INSERT INTO `SubjectTable` VALUES (6,'SL-1'),(8,'DBMS'),(9,'TOC');
/*!40000 ALTER TABLE `SubjectTable` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger blank_validate
after insert on SubjectTable
for each row
begin
IF NEW.SubjectName = '' THEN
                SIGNAL SQLSTATE '45001' SET MESSAGE_TEXT = 'Blank value on mytable.myfield';
        END IF;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger trig2 before delete on SubjectTable
for each row
begin
delete from UserInfo where SubjectCode=old.SubjectCode;
delete from SubjectCoordinator where SubjectCode=old.SubjectCode;
delete from AssignmentExist where SubjectCode=old.SubjectCode;
delete from UnitTest where SubjectCode=old.SubjectCode;
delete from SubmissionTicket where SubjectCode=old.SubjectCode;
delete from FileDatabase where SubjectName=old.SubjectName;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `SubmissionTicket`
--

DROP TABLE IF EXISTS `SubmissionTicket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SubmissionTicket` (
  `RollNo` int(11) NOT NULL,
  `Approved` tinyint(1) DEFAULT NULL,
  `SubjectCode` int(11) NOT NULL,
  PRIMARY KEY (`RollNo`,`SubjectCode`),
  KEY `SubjectCode` (`SubjectCode`),
  CONSTRAINT `SubmissionTicket_ibfk_1` FOREIGN KEY (`SubjectCode`) REFERENCES `SubjectTable` (`SubjectCode`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SubmissionTicket`
--

LOCK TABLES `SubmissionTicket` WRITE;
/*!40000 ALTER TABLE `SubmissionTicket` DISABLE KEYS */;
INSERT INTO `SubmissionTicket` VALUES (3041,0,6),(3042,0,6),(3043,0,6),(3044,0,6),(3045,0,6),(3046,0,6),(3047,0,6),(3048,0,6),(3049,0,6),(3050,0,6),(3051,0,6),(3052,0,6),(3053,0,6),(3054,0,6),(3055,0,6),(3056,0,6),(3057,0,6),(3058,0,6),(3059,0,6);
/*!40000 ALTER TABLE `SubmissionTicket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TermWork`
--

DROP TABLE IF EXISTS `TermWork`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TermWork` (
  `RollNo` int(4) NOT NULL,
  `OutOf25` int(2) DEFAULT NULL,
  `OutOf50` int(2) DEFAULT NULL,
  `SubjectCode` int(11) NOT NULL,
  PRIMARY KEY (`RollNo`,`SubjectCode`),
  KEY `SubjectCode` (`SubjectCode`),
  CONSTRAINT `TermWork_ibfk_1` FOREIGN KEY (`SubjectCode`) REFERENCES `SubjectTable` (`SubjectCode`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TermWork`
--

LOCK TABLES `TermWork` WRITE;
/*!40000 ALTER TABLE `TermWork` DISABLE KEYS */;
INSERT INTO `TermWork` VALUES (3041,0,0,6),(3042,0,0,6),(3043,0,0,6),(3044,0,0,6),(3045,0,0,6),(3046,0,0,6),(3047,0,0,6),(3048,0,0,6),(3049,0,0,6),(3050,0,0,6),(3051,0,0,6),(3052,0,0,6),(3053,0,0,6),(3054,0,0,6),(3055,0,0,6),(3056,0,0,6),(3057,0,0,6),(3058,0,0,6),(3059,0,0,6),(3060,0,0,6);
/*!40000 ALTER TABLE `TermWork` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UnitTest`
--

DROP TABLE IF EXISTS `UnitTest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UnitTest` (
  `RollNo` int(4) NOT NULL,
  `UT1` int(11) DEFAULT '0',
  `SubjectCode` int(11) NOT NULL,
  `UT2` int(11) DEFAULT NULL,
  `OutOfMarks` int(11) DEFAULT '30',
  PRIMARY KEY (`RollNo`,`SubjectCode`),
  KEY `SubjectCode` (`SubjectCode`),
  CONSTRAINT `UnitTest_ibfk_1` FOREIGN KEY (`SubjectCode`) REFERENCES `SubjectTable` (`SubjectCode`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UnitTest`
--

LOCK TABLES `UnitTest` WRITE;
/*!40000 ALTER TABLE `UnitTest` DISABLE KEYS */;
INSERT INTO `UnitTest` VALUES (3001,12,8,20,30),(3001,0,9,0,30),(3002,23,8,11,30),(3002,0,9,0,30),(3003,0,8,0,30),(3003,0,9,0,30),(3004,0,8,0,30),(3004,0,9,0,30),(3005,0,8,0,30),(3005,0,9,0,30),(3006,0,8,0,30),(3006,0,9,0,30),(3007,0,8,0,30),(3007,0,9,0,30),(3008,0,8,0,30),(3008,0,9,0,30),(3009,0,8,0,30),(3009,0,9,0,30),(3010,0,8,0,30),(3010,0,9,0,30),(3011,0,8,0,30),(3011,0,9,0,30),(3012,0,8,0,30),(3012,0,9,0,30),(3013,0,8,0,30),(3013,0,9,0,30),(3014,0,8,0,30),(3014,0,9,0,30),(3015,0,8,0,30),(3015,0,9,0,30),(3016,0,8,0,30),(3016,0,9,0,30),(3017,0,8,0,30),(3017,0,9,0,30),(3018,0,8,0,30),(3018,0,9,0,30),(3019,0,8,0,30),(3019,0,9,0,30),(3020,0,8,0,30),(3020,0,9,0,30),(3021,0,8,0,30),(3021,0,9,0,30),(3022,0,8,0,30),(3022,0,9,0,30),(3023,0,8,0,30),(3023,0,9,0,30),(3024,0,8,0,30),(3024,0,9,0,30),(3025,0,8,0,30),(3025,0,9,0,30),(3026,0,8,0,30),(3026,0,9,0,30),(3027,0,8,0,30),(3027,0,9,0,30),(3028,0,8,0,30),(3028,0,9,0,30),(3029,0,8,0,30),(3029,0,9,0,30),(3030,0,8,0,30),(3030,0,9,0,30),(3031,0,8,0,30),(3031,0,9,0,30),(3032,0,8,0,30),(3032,0,9,0,30),(3033,0,8,0,30),(3033,0,9,0,30),(3034,0,8,0,30),(3034,0,9,0,30),(3035,0,8,0,30),(3035,0,9,0,30),(3036,0,8,0,30),(3036,0,9,0,30),(3037,0,8,0,30),(3037,0,9,0,30),(3038,0,8,0,30),(3038,0,9,0,30),(3039,0,8,0,30),(3039,0,9,0,30),(3040,0,8,0,30),(3040,0,9,0,30),(3041,0,8,0,30),(3041,0,9,0,30),(3042,0,8,0,30),(3042,0,9,0,30),(3043,0,8,0,30),(3043,0,9,0,30),(3044,0,8,0,30),(3044,0,9,0,30),(3045,0,8,0,30),(3045,0,9,0,30),(3046,0,8,0,30),(3046,0,9,0,30),(3047,0,8,0,30),(3047,0,9,0,30),(3048,0,8,0,30),(3048,0,9,0,30),(3049,0,8,0,30),(3049,0,9,0,30),(3050,0,8,0,30),(3050,0,9,0,30),(3051,0,8,0,30),(3051,0,9,0,30),(3052,0,8,0,30),(3052,0,9,0,30),(3053,0,8,0,30),(3053,0,9,0,30),(3054,0,8,0,30),(3054,0,9,0,30),(3055,0,8,0,30),(3055,0,9,0,30),(3056,0,8,0,30),(3056,0,9,0,30),(3057,0,8,0,30),(3057,0,9,0,30),(3058,0,8,0,30),(3058,0,9,0,30),(3059,0,8,0,30),(3059,0,9,0,30),(3060,0,8,0,30),(3060,0,9,0,30),(3061,0,8,0,30),(3061,0,9,0,30),(3062,0,8,0,30),(3062,0,9,0,30),(3063,0,8,0,30),(3063,0,9,0,30),(3064,0,8,0,30),(3064,0,9,0,30),(3065,0,8,0,30),(3065,0,9,0,30),(3066,0,8,0,30),(3066,0,9,0,30),(3067,0,8,0,30),(3067,0,9,0,30),(3068,0,8,0,30),(3068,0,9,0,30),(3069,0,8,0,30),(3069,0,9,0,30),(3070,0,8,0,30),(3070,0,9,0,30),(3071,0,8,0,30),(3071,0,9,0,30),(3072,0,8,0,30),(3072,0,9,0,30),(3073,0,8,0,30),(3073,0,9,0,30),(3074,0,8,0,30),(3074,0,9,0,30),(3075,0,8,0,30),(3075,0,9,0,30),(3076,0,8,0,30),(3076,0,9,0,30),(3077,0,8,0,30),(3077,0,9,0,30),(3078,0,8,0,30),(3078,0,9,0,30),(3079,0,8,0,30),(3079,0,9,0,30),(3080,0,8,0,30),(3080,0,9,0,30);
/*!40000 ALTER TABLE `UnitTest` ENABLE KEYS */;
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
  `AssignCount` int(11) DEFAULT '10',
  PRIMARY KEY (`UserID`,`GroupCode`,`SubjectCode`),
  KEY `GroupCode` (`GroupCode`),
  KEY `SubjectCode` (`SubjectCode`),
  KEY `UserID` (`UserID`),
  CONSTRAINT `UserInfo_ibfk_4` FOREIGN KEY (`UserID`) REFERENCES `LoginTable` (`UserID`) ON DELETE CASCADE,
  CONSTRAINT `UserInfo_ibfk_5` FOREIGN KEY (`GroupCode`) REFERENCES `GroupTable` (`GroupCode`) ON DELETE CASCADE,
  CONSTRAINT `UserInfo_ibfk_6` FOREIGN KEY (`SubjectCode`) REFERENCES `SubjectTable` (`SubjectCode`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserInfo`
--

LOCK TABLES `UserInfo` WRITE;
/*!40000 ALTER TABLE `UserInfo` DISABLE KEYS */;
INSERT INTO `UserInfo` VALUES ('JKK','Jagdish Kashinath. Kamble',9,6,10),('SAJ','Sumitra Amit. Jakhete',6,7,10);
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

-- Dump completed on 2017-11-01 22:50:00
