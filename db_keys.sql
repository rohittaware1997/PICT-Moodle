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
-- Table structure for table `A1`
--

DROP TABLE IF EXISTS `A1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `A1` (
  `Rollno` int(4) DEFAULT NULL,
  `SubjectCode` int(3) DEFAULT NULL,
  `ScheduledDate` varchar(20) DEFAULT NULL,
  `SubmissionDate` varchar(20) DEFAULT NULL,
  `Marks` int(4) DEFAULT NULL,
  `Approved` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `A1`
--

LOCK TABLES `A1` WRITE;
/*!40000 ALTER TABLE `A1` DISABLE KEYS */;
INSERT INTO `A1` VALUES (3001,1,'07-10-2017','18-10-2017',10,1),(3002,1,'dd-mm-yyyy','dd-mm-yyyy',0,1),(3003,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3004,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3005,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3006,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3007,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3008,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3009,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3010,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3011,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3012,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3013,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3014,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3015,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3016,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3017,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3018,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3019,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3020,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3021,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3022,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3023,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3024,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3025,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3026,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3027,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3028,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3029,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3030,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3031,1,'19-10-2017','13-10-2017',10,1),(3032,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3033,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3034,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3035,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3036,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3037,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3038,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3039,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3040,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3041,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3042,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3043,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3044,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3045,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3046,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3047,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3048,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3049,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3050,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3051,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3052,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3053,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3054,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3055,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3056,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3057,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3058,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3059,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3060,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3061,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3062,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3063,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3064,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3065,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3066,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3067,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3068,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3069,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3070,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3071,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3072,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3073,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3074,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3075,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3076,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3077,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3078,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3079,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3080,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3081,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3001,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3002,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3003,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3004,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3005,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3006,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3007,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3008,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3009,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3010,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3011,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3012,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3013,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3014,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3015,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3016,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3017,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3018,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3019,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3020,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3021,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3022,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3023,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3024,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3025,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3026,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3027,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3028,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3029,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3030,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3031,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3032,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3033,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3034,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3035,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3036,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3037,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3038,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3039,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3040,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3041,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3042,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3043,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3044,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3045,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3046,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3047,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3048,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3049,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3050,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3051,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3052,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3053,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3054,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3055,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3056,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3057,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3058,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3059,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3060,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3061,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3062,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3063,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3064,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3065,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3066,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3067,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3068,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3069,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3070,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3071,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3072,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3073,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3074,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3075,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3076,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3077,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3078,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3079,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3080,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3081,2,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3001,4,'18-10-2017','dd-mm-yyyy',0,0),(3002,4,'18-10-2017','dd-mm-yyyy',0,0),(3003,4,'18-10-2017','dd-mm-yyyy',0,0),(3004,4,'18-10-2017','dd-mm-yyyy',0,0),(3005,4,'18-10-2017','dd-mm-yyyy',0,0),(3006,4,'18-10-2017','dd-mm-yyyy',0,0),(3007,4,'18-10-2017','dd-mm-yyyy',0,0),(3008,4,'18-10-2017','dd-mm-yyyy',0,0),(3009,4,'18-10-2017','dd-mm-yyyy',0,0),(3010,4,'18-10-2017','dd-mm-yyyy',0,0),(3011,4,'18-10-2017','dd-mm-yyyy',0,0),(3012,4,'18-10-2017','dd-mm-yyyy',0,0),(3013,4,'18-10-2017','dd-mm-yyyy',0,0),(3014,4,'18-10-2017','dd-mm-yyyy',0,0),(3015,4,'18-10-2017','dd-mm-yyyy',0,0),(3016,4,'18-10-2017','dd-mm-yyyy',0,0),(3017,4,'18-10-2017','dd-mm-yyyy',0,0),(3018,4,'18-10-2017','dd-mm-yyyy',0,0),(3019,4,'18-10-2017','dd-mm-yyyy',0,0),(3020,4,'18-10-2017','dd-mm-yyyy',0,0),(3021,4,'18-10-2017','dd-mm-yyyy',0,0),(3022,4,'18-10-2017','dd-mm-yyyy',0,0),(3023,4,'18-10-2017','dd-mm-yyyy',0,0),(3024,4,'18-10-2017','dd-mm-yyyy',0,0),(3025,4,'18-10-2017','dd-mm-yyyy',0,0),(3026,4,'18-10-2017','dd-mm-yyyy',0,0),(3027,4,'18-10-2017','dd-mm-yyyy',0,0),(3028,4,'18-10-2017','dd-mm-yyyy',0,0),(3029,4,'18-10-2017','dd-mm-yyyy',0,0),(3030,4,'18-10-2017','dd-mm-yyyy',0,0),(3031,4,'18-10-2017','dd-mm-yyyy',0,0),(3032,4,'18-10-2017','dd-mm-yyyy',0,0),(3033,4,'18-10-2017','dd-mm-yyyy',0,0),(3034,4,'18-10-2017','dd-mm-yyyy',0,0),(3035,4,'18-10-2017','dd-mm-yyyy',0,0),(3036,4,'18-10-2017','dd-mm-yyyy',0,0),(3037,4,'18-10-2017','dd-mm-yyyy',0,0),(3038,4,'18-10-2017','dd-mm-yyyy',0,0),(3039,4,'18-10-2017','dd-mm-yyyy',0,0),(3040,4,'18-10-2017','dd-mm-yyyy',0,0),(3041,4,'18-10-2017','dd-mm-yyyy',0,0),(3042,4,'18-10-2017','dd-mm-yyyy',0,0),(3043,4,'18-10-2017','dd-mm-yyyy',0,0),(3044,4,'18-10-2017','dd-mm-yyyy',0,0),(3045,4,'18-10-2017','dd-mm-yyyy',0,0),(3046,4,'18-10-2017','dd-mm-yyyy',0,0),(3047,4,'18-10-2017','dd-mm-yyyy',0,0),(3048,4,'18-10-2017','dd-mm-yyyy',0,0),(3049,4,'18-10-2017','dd-mm-yyyy',0,0),(3050,4,'18-10-2017','dd-mm-yyyy',0,0),(3051,4,'18-10-2017','dd-mm-yyyy',0,0),(3052,4,'18-10-2017','dd-mm-yyyy',0,0),(3053,4,'18-10-2017','dd-mm-yyyy',0,0),(3054,4,'18-10-2017','dd-mm-yyyy',0,0),(3055,4,'18-10-2017','dd-mm-yyyy',0,0),(3056,4,'18-10-2017','dd-mm-yyyy',0,0),(3057,4,'18-10-2017','dd-mm-yyyy',0,0),(3058,4,'18-10-2017','dd-mm-yyyy',0,0),(3059,4,'18-10-2017','dd-mm-yyyy',0,0),(3060,4,'18-10-2017','dd-mm-yyyy',0,0),(3061,4,'18-10-2017','dd-mm-yyyy',0,0),(3062,4,'18-10-2017','dd-mm-yyyy',0,0),(3063,4,'18-10-2017','dd-mm-yyyy',0,0),(3064,4,'18-10-2017','dd-mm-yyyy',0,0),(3065,4,'18-10-2017','dd-mm-yyyy',0,0),(3066,4,'18-10-2017','dd-mm-yyyy',0,0),(3067,4,'18-10-2017','dd-mm-yyyy',0,0),(3068,4,'18-10-2017','dd-mm-yyyy',0,0),(3069,4,'18-10-2017','dd-mm-yyyy',0,0),(3070,4,'18-10-2017','dd-mm-yyyy',0,0),(3071,4,'18-10-2017','dd-mm-yyyy',0,0),(3072,4,'18-10-2017','dd-mm-yyyy',0,0),(3073,4,'18-10-2017','dd-mm-yyyy',0,0),(3074,4,'18-10-2017','dd-mm-yyyy',0,0),(3075,4,'18-10-2017','dd-mm-yyyy',0,0),(3076,4,'18-10-2017','dd-mm-yyyy',0,0),(3077,4,'18-10-2017','dd-mm-yyyy',0,0),(3078,4,'18-10-2017','dd-mm-yyyy',0,0),(3079,4,'18-10-2017','dd-mm-yyyy',0,0),(3080,4,'18-10-2017','dd-mm-yyyy',0,0),(3081,4,'18-10-2017','dd-mm-yyyy',0,0);
/*!40000 ALTER TABLE `A1` ENABLE KEYS */;
UNLOCK TABLES;

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
  `Approved` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `A2`
--

LOCK TABLES `A2` WRITE;
/*!40000 ALTER TABLE `A2` DISABLE KEYS */;
INSERT INTO `A2` VALUES (3001,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3002,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3003,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3004,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3005,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3006,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3007,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3008,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3009,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3010,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3011,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3012,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3013,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3014,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3015,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3016,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3017,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3018,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3019,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3020,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3021,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3022,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3023,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3024,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3025,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3026,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3027,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3028,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3029,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3030,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3031,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3032,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3033,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3034,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3035,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3036,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3037,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3038,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3039,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3040,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3041,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3042,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3043,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3044,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3045,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3046,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3047,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3048,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3049,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3050,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3051,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3052,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3053,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3054,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3055,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3056,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3057,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3058,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3059,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3060,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3061,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3062,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3063,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3064,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3065,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3066,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3067,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3068,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3069,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3070,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3071,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3072,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3073,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3074,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3075,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3076,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3077,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3078,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3079,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3080,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3081,1,'dd-mm-yyyy','dd-mm-yyyy',0,0);
/*!40000 ALTER TABLE `A2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `A3`
--

DROP TABLE IF EXISTS `A3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `A3` (
  `Rollno` int(4) DEFAULT NULL,
  `SubjectCode` int(3) DEFAULT NULL,
  `ScheduledDate` varchar(20) DEFAULT NULL,
  `SubmissionDate` varchar(20) DEFAULT NULL,
  `Marks` int(4) DEFAULT NULL,
  `Approved` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `A3`
--

LOCK TABLES `A3` WRITE;
/*!40000 ALTER TABLE `A3` DISABLE KEYS */;
INSERT INTO `A3` VALUES (3001,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3002,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3003,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3004,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3005,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3006,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3007,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3008,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3009,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3010,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3011,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3012,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3013,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3014,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3015,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3016,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3017,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3018,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3019,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3020,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3021,4,'dd-mm-yyyy','dd-mm-yyyy',0,1),(3022,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3023,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3024,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3025,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3026,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3027,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3028,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3029,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3030,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3031,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3032,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3033,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3034,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3035,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3036,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3037,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3038,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3039,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3040,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3041,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3042,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3043,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3044,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3045,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3046,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3047,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3048,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3049,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3050,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3051,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3052,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3053,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3054,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3055,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3056,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3057,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3058,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3059,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3060,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3061,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3062,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3063,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3064,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3065,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3066,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3067,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3068,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3069,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3070,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3071,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3072,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3073,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3074,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3075,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3076,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3077,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3078,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3079,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3080,4,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3081,4,'dd-mm-yyyy','dd-mm-yyyy',0,0);
/*!40000 ALTER TABLE `A3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AssignmentExist`
--

DROP TABLE IF EXISTS `AssignmentExist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AssignmentExist` (
  `AssignmentName` varchar(5) DEFAULT NULL,
  `SubjectCode` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AssignmentExist`
--

LOCK TABLES `AssignmentExist` WRITE;
/*!40000 ALTER TABLE `AssignmentExist` DISABLE KEYS */;
INSERT INTO `AssignmentExist` VALUES ('A1',1),('A2',1),('A3',4),('A1',4);
/*!40000 ALTER TABLE `AssignmentExist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CoordinatorTable`
--

DROP TABLE IF EXISTS `CoordinatorTable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CoordinatorTable` (
  `UserID` varchar(5) DEFAULT NULL,
  `SubjectCode` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CoordinatorTable`
--

LOCK TABLES `CoordinatorTable` WRITE;
/*!40000 ALTER TABLE `CoordinatorTable` DISABLE KEYS */;
INSERT INTO `CoordinatorTable` VALUES ('SAJ',1),('VRJ',2),('SDS',3);
/*!40000 ALTER TABLE `CoordinatorTable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GroupStart`
--

DROP TABLE IF EXISTS `GroupStart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GroupStart` (
  `GroupID` int(11) DEFAULT NULL,
  `StartRollNo` int(11) DEFAULT NULL,
  `EndRollNo` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GroupStart`
--

LOCK TABLES `GroupStart` WRITE;
/*!40000 ALTER TABLE `GroupStart` DISABLE KEYS */;
INSERT INTO `GroupStart` VALUES (1,3901,3920),(2,3921,3940),(3,3941,3960),(4,3961,3980),(5,3001,3020),(6,3021,3040),(7,3041,3060),(8,3061,3080);
/*!40000 ALTER TABLE `GroupStart` ENABLE KEYS */;
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
INSERT INTO `LoginTable` VALUES ('111','1 1. 1',NULL),('3026',NULL,'abc'),('jkk','jkk kalabaap. kalima',NULL),('nbk','naam baapkanaam. khandankanaam',NULL),('RRC','Rachna RameshChand. Chajed','abc'),('SAJ','Sumitra Anant . Jakhete','abc'),('t','t','abc'),('VRJ','Vishal Ramesh. Jaiswal',NULL);
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
INSERT INTO `SubjectCoordinator` VALUES ('111',1),('111',2),('SAJ',4);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SubjectTable`
--

LOCK TABLES `SubjectTable` WRITE;
/*!40000 ALTER TABLE `SubjectTable` DISABLE KEYS */;
INSERT INTO `SubjectTable` VALUES (1,'test'),(2,'DBMS'),(3,'OS'),(4,'SL-1');
/*!40000 ALTER TABLE `SubjectTable` ENABLE KEYS */;
UNLOCK TABLES;

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
  PRIMARY KEY (`RollNo`,`SubjectCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SubmissionTicket`
--

LOCK TABLES `SubmissionTicket` WRITE;
/*!40000 ALTER TABLE `SubmissionTicket` DISABLE KEYS */;
INSERT INTO `SubmissionTicket` VALUES (3001,1,1),(3002,1,1),(3003,0,1),(3004,0,1),(3005,0,1),(3006,0,1),(3007,0,1),(3008,0,1),(3009,0,1),(3010,0,1),(3011,0,1),(3012,0,1),(3013,0,1),(3014,0,1),(3015,0,1),(3016,0,1),(3017,0,1),(3018,0,1),(3019,0,1),(3021,0,1),(3021,0,3),(3021,0,4),(3022,0,1),(3022,0,3),(3022,0,4),(3023,0,1),(3023,0,3),(3023,0,4),(3024,0,1),(3024,0,3),(3024,0,4),(3025,0,1),(3025,0,3),(3025,0,4),(3026,0,1),(3026,0,3),(3026,0,4),(3027,0,1),(3027,0,3),(3027,0,4),(3028,0,1),(3028,0,3),(3028,0,4),(3029,0,1),(3029,0,3),(3029,0,4),(3030,0,1),(3030,0,3),(3030,0,4),(3031,0,1),(3031,1,3),(3031,0,4),(3032,0,1),(3032,0,3),(3032,0,4),(3033,0,1),(3033,0,3),(3033,0,4),(3034,0,1),(3034,0,3),(3034,0,4),(3035,0,1),(3035,0,3),(3035,0,4),(3036,0,1),(3036,0,3),(3036,0,4),(3037,0,1),(3037,0,3),(3037,0,4),(3038,0,1),(3038,0,3),(3038,0,4),(3039,0,1),(3039,0,3),(3039,0,4),(3901,1,4),(3902,1,4),(3903,1,4),(3904,1,4),(3905,1,4),(3906,1,4),(3907,1,4),(3908,1,4),(3909,1,4),(3910,1,4),(3911,1,4),(3912,1,4),(3913,1,4),(3914,1,4),(3915,1,4),(3916,1,4),(3917,1,4),(3918,1,4),(3919,1,4);
/*!40000 ALTER TABLE `SubmissionTicket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TeacherSubject`
--

DROP TABLE IF EXISTS `TeacherSubject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TeacherSubject` (
  `UserID` varchar(3) DEFAULT NULL,
  `SubjectCode` int(11) DEFAULT NULL,
  `ClassCode` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TeacherSubject`
--

LOCK TABLES `TeacherSubject` WRITE;
/*!40000 ALTER TABLE `TeacherSubject` DISABLE KEYS */;
INSERT INTO `TeacherSubject` VALUES ('RBM',4,1),('TAR',5,1),('VRJ',5,2),('SDS',7,2),('JKK',6,2),('SAJ',4,2);
/*!40000 ALTER TABLE `TeacherSubject` ENABLE KEYS */;
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
  PRIMARY KEY (`RollNo`,`SubjectCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TermWork`
--

LOCK TABLES `TermWork` WRITE;
/*!40000 ALTER TABLE `TermWork` DISABLE KEYS */;
INSERT INTO `TermWork` VALUES (3001,20,40,1),(3002,5,10,1),(3003,0,0,1),(3004,0,0,1),(3005,0,0,1),(3006,0,0,1),(3007,0,0,1),(3008,0,0,1),(3009,0,0,1),(3010,0,0,1),(3011,0,0,1),(3012,0,0,1),(3013,0,0,1),(3014,0,0,1),(3015,0,0,1),(3016,0,0,1),(3017,0,0,1),(3018,0,0,1),(3019,0,0,1),(3020,0,0,1),(3021,0,0,1),(3021,0,0,4),(3022,0,0,1),(3022,0,0,4),(3023,0,0,1),(3023,0,0,4),(3024,0,0,1),(3024,0,0,4),(3025,0,0,1),(3025,0,0,4),(3026,0,0,1),(3026,0,0,4),(3027,0,0,1),(3027,0,0,4),(3028,0,0,1),(3028,0,0,4),(3029,0,0,1),(3029,0,0,4),(3030,0,0,1),(3030,0,0,4),(3031,25,50,1),(3031,3,6,4),(3032,3,6,1),(3032,0,0,4),(3033,0,0,1),(3033,0,0,4),(3034,0,0,1),(3034,0,0,4),(3035,0,0,1),(3035,0,0,4),(3036,0,0,1),(3036,0,0,4),(3037,0,0,1),(3037,0,0,4),(3038,0,0,1),(3038,0,0,4),(3039,0,0,1),(3039,0,0,4),(3040,0,0,1),(3040,0,0,4);
/*!40000 ALTER TABLE `TermWork` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UnitTest`
--

DROP TABLE IF EXISTS `UnitTest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UnitTest` (
  `RollNo` int(4) DEFAULT NULL,
  `Marks` int(2) DEFAULT NULL,
  `SubjectCode` int(11) DEFAULT NULL,
  `ClassCode` int(11) DEFAULT NULL,
  `OutOfMarks` int(11) DEFAULT NULL,
  `GroupCode` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UnitTest`
--

LOCK TABLES `UnitTest` WRITE;
/*!40000 ALTER TABLE `UnitTest` DISABLE KEYS */;
INSERT INTO `UnitTest` VALUES (3001,10,4,2,30,5),(3002,25,4,2,30,5),(3003,0,4,2,30,5),(3004,0,4,2,30,5),(3005,0,4,2,30,5),(3006,0,4,2,30,5),(3007,0,4,2,30,5),(3008,0,4,2,30,5),(3009,0,4,2,30,5),(3010,0,4,2,30,5),(3011,0,4,2,30,5),(3012,0,4,2,30,5),(3013,0,4,2,30,5),(3014,0,4,2,30,5),(3015,0,4,2,30,5),(3016,0,4,2,30,5),(3017,0,4,2,30,5),(3018,0,4,2,30,5),(3019,0,4,2,30,5),(3020,0,4,2,30,5),(3021,0,4,2,30,6),(3022,0,4,2,30,6),(3023,0,4,2,30,6),(3024,0,4,2,30,6),(3025,0,4,2,30,6),(3026,0,4,2,30,6),(3027,0,4,2,30,6),(3028,0,4,2,30,6),(3029,0,4,2,30,6),(3030,0,4,2,30,6),(3031,17,4,2,30,6),(3032,0,4,2,30,6),(3033,0,4,2,30,6),(3034,0,4,2,30,6),(3035,0,4,2,30,6),(3036,0,4,2,30,6),(3037,0,4,2,30,6),(3038,0,4,2,30,6),(3039,0,4,2,30,6),(3040,0,4,2,30,6),(3041,0,4,2,30,7),(3042,0,4,2,30,7),(3043,0,4,2,30,7),(3044,0,4,2,30,7),(3045,0,4,2,30,7),(3046,0,4,2,30,7),(3047,0,4,2,30,7),(3048,0,4,2,30,7),(3049,0,4,2,30,7),(3050,0,4,2,30,7),(3051,0,4,2,30,7),(3052,0,4,2,30,7),(3053,0,4,2,30,7),(3054,0,4,2,30,7),(3055,0,4,2,30,7),(3056,0,4,2,30,7),(3057,0,4,2,30,7),(3058,0,4,2,30,7),(3059,0,4,2,30,7),(3060,0,4,2,30,7),(3061,0,4,2,30,8),(3062,0,4,2,30,8),(3063,0,4,2,30,8),(3064,0,4,2,30,8),(3065,0,4,2,30,8),(3066,0,4,2,30,8),(3067,0,4,2,30,8),(3068,0,4,2,30,8),(3069,0,4,2,30,8),(3070,0,4,2,30,8),(3071,0,4,2,30,8),(3072,0,4,2,30,8),(3073,0,4,2,30,8),(3074,0,4,2,30,8),(3075,0,4,2,30,8),(3076,0,4,2,30,8),(3077,0,4,2,30,8),(3078,0,4,2,30,8),(3079,0,4,2,30,8),(3080,0,4,2,30,8),(3002,0,5,2,30,5),(3003,0,5,2,30,5),(3004,0,5,2,30,5),(3005,0,5,2,30,5),(3006,0,5,2,30,5),(3007,0,5,2,30,5),(3008,0,5,2,30,5),(3009,0,5,2,30,5),(3010,0,5,2,30,5),(3011,0,5,2,30,5),(3012,0,5,2,30,5),(3013,0,5,2,30,5),(3014,0,5,2,30,5),(3015,0,5,2,30,5),(3016,0,5,2,30,5),(3017,0,5,2,30,5),(3018,0,5,2,30,5),(3019,0,5,2,30,5),(3020,0,5,2,30,5),(3021,0,5,2,30,6),(3022,0,5,2,30,6),(3023,0,5,2,30,6),(3024,0,5,2,30,6),(3025,0,5,2,30,6),(3026,0,5,2,30,6),(3027,0,5,2,30,6),(3028,0,5,2,30,6),(3029,0,5,2,30,6),(3030,0,5,2,30,6),(3031,17,5,2,30,6),(3032,0,5,2,30,6),(3033,0,5,2,30,6),(3034,0,5,2,30,6),(3035,0,5,2,30,6),(3036,0,5,2,30,6),(3037,0,5,2,30,6),(3038,0,5,2,30,6),(3039,0,5,2,30,6),(3040,0,5,2,30,6),(3041,0,5,2,30,7),(3042,0,5,2,30,7),(3043,0,5,2,30,7),(3044,0,5,2,30,7),(3045,0,5,2,30,7),(3046,0,5,2,30,7),(3047,0,5,2,30,7),(3048,0,5,2,30,7),(3049,0,5,2,30,7),(3050,0,5,2,30,7),(3051,0,5,2,30,7),(3052,0,5,2,30,7),(3053,0,5,2,30,7),(3054,0,5,2,30,7),(3055,0,5,2,30,7),(3056,0,5,2,30,7),(3057,0,5,2,30,7),(3058,0,5,2,30,7),(3059,0,5,2,30,7),(3060,0,5,2,30,7),(3061,0,5,2,30,8),(3062,0,5,2,30,8),(3063,0,5,2,30,8),(3064,0,5,2,30,8),(3065,0,5,2,30,8),(3066,0,5,2,30,8),(3067,0,5,2,30,8),(3068,0,5,2,30,8),(3069,0,5,2,30,8),(3070,0,5,2,30,8),(3071,0,5,2,30,8),(3072,0,5,2,30,8),(3073,0,5,2,30,8),(3074,0,5,2,30,8),(3075,0,5,2,30,8),(3076,0,5,2,30,8),(3077,0,5,2,30,8),(3078,0,5,2,30,8),(3079,0,5,2,30,8),(3080,0,5,2,30,8),(3002,23,6,2,30,5),(3003,0,6,2,30,5),(3004,0,6,2,30,5),(3005,0,6,2,30,5),(3006,0,6,2,30,5),(3007,0,6,2,30,5),(3008,0,6,2,30,5),(3009,0,6,2,30,5),(3010,0,6,2,30,5),(3011,0,6,2,30,5),(3012,0,6,2,30,5),(3013,0,6,2,30,5),(3014,0,6,2,30,5),(3015,0,6,2,30,5),(3016,0,6,2,30,5),(3017,0,6,2,30,5),(3018,0,6,2,30,5),(3019,0,6,2,30,5),(3020,0,6,2,30,5),(3021,0,6,2,30,6),(3022,0,6,2,30,6),(3023,0,6,2,30,6),(3024,0,6,2,30,6),(3025,0,6,2,30,6),(3026,0,6,2,30,6),(3027,0,6,2,30,6),(3028,0,6,2,30,6),(3029,0,6,2,30,6),(3030,0,6,2,30,6),(3031,30,6,2,30,6),(3032,15,6,2,30,6),(3033,0,6,2,30,6),(3034,0,6,2,30,6),(3035,0,6,2,30,6),(3036,0,6,2,30,6),(3037,0,6,2,30,6),(3038,0,6,2,30,6),(3039,0,6,2,30,6),(3040,0,6,2,30,6),(3041,0,6,2,30,7),(3042,0,6,2,30,7),(3043,0,6,2,30,7),(3044,0,6,2,30,7),(3045,0,6,2,30,7),(3046,0,6,2,30,7),(3047,0,6,2,30,7),(3048,0,6,2,30,7),(3049,0,6,2,30,7),(3050,0,6,2,30,7),(3051,0,6,2,30,7),(3052,0,6,2,30,7),(3053,0,6,2,30,7),(3054,0,6,2,30,7),(3055,0,6,2,30,7),(3056,0,6,2,30,7),(3057,0,6,2,30,7),(3058,30,6,2,30,7),(3059,0,6,2,30,7),(3060,0,6,2,30,7),(3061,0,6,2,30,8),(3062,0,6,2,30,8),(3063,0,6,2,30,8),(3064,0,6,2,30,8),(3065,0,6,2,30,8),(3066,0,6,2,30,8),(3067,0,6,2,30,8),(3068,0,6,2,30,8),(3069,0,6,2,30,8),(3070,0,6,2,30,8),(3071,0,6,2,30,8),(3072,0,6,2,30,8),(3073,0,6,2,30,8),(3074,0,6,2,30,8),(3075,0,6,2,30,8),(3076,0,6,2,30,8),(3077,0,6,2,30,8),(3078,0,6,2,30,8),(3079,0,6,2,30,8),(3080,0,6,2,30,8),(3002,0,7,2,30,5),(3003,0,7,2,30,5),(3004,0,7,2,30,5),(3005,0,7,2,30,5),(3006,0,7,2,30,5),(3007,0,7,2,30,5),(3008,0,7,2,30,5),(3009,0,7,2,30,5),(3010,0,7,2,30,5),(3011,0,7,2,30,5),(3012,0,7,2,30,5),(3013,0,7,2,30,5),(3014,0,7,2,30,5),(3015,0,7,2,30,5),(3016,0,7,2,30,5),(3017,0,7,2,30,5),(3018,0,7,2,30,5),(3019,0,7,2,30,5),(3020,0,7,2,30,5),(3021,0,7,2,30,6),(3022,0,7,2,30,6),(3023,0,7,2,30,6),(3024,0,7,2,30,6),(3025,0,7,2,30,6),(3026,0,7,2,30,6),(3027,0,7,2,30,6),(3028,0,7,2,30,6),(3029,0,7,2,30,6),(3030,0,7,2,30,6),(3031,17,7,2,30,6),(3032,0,7,2,30,6),(3033,0,7,2,30,6),(3034,0,7,2,30,6),(3035,0,7,2,30,6),(3036,0,7,2,30,6),(3037,0,7,2,30,6),(3038,0,7,2,30,6),(3039,0,7,2,30,6),(3040,0,7,2,30,6),(3041,0,7,2,30,7),(3042,0,7,2,30,7),(3043,0,7,2,30,7),(3044,0,7,2,30,7),(3045,0,7,2,30,7),(3046,0,7,2,30,7),(3047,0,7,2,30,7),(3048,0,7,2,30,7),(3049,0,7,2,30,7),(3050,0,7,2,30,7),(3051,0,7,2,30,7),(3052,0,7,2,30,7),(3053,0,7,2,30,7),(3054,0,7,2,30,7),(3055,0,7,2,30,7),(3056,0,7,2,30,7),(3057,0,7,2,30,7),(3058,0,7,2,30,7),(3059,0,7,2,30,7),(3060,0,7,2,30,7),(3061,0,7,2,30,8),(3062,0,7,2,30,8),(3063,0,7,2,30,8),(3064,0,7,2,30,8),(3065,0,7,2,30,8),(3066,0,7,2,30,8),(3067,0,7,2,30,8),(3068,0,7,2,30,8),(3069,0,7,2,30,8),(3070,0,7,2,30,8),(3071,0,7,2,30,8),(3072,0,7,2,30,8),(3073,0,7,2,30,8),(3074,0,7,2,30,8),(3075,0,7,2,30,8),(3076,0,7,2,30,8),(3077,0,7,2,30,8),(3078,0,7,2,30,8),(3079,0,7,2,30,8),(3080,0,7,2,30,8),(3002,0,8,2,30,5),(3003,0,8,2,30,5),(3004,0,8,2,30,5),(3005,0,8,2,30,5),(3006,0,8,2,30,5),(3007,0,8,2,30,5),(3008,0,8,2,30,5),(3009,0,8,2,30,5),(3010,0,8,2,30,5),(3011,0,8,2,30,5),(3012,0,8,2,30,5),(3013,0,8,2,30,5),(3014,0,8,2,30,5),(3015,0,8,2,30,5),(3016,0,8,2,30,5),(3017,0,8,2,30,5),(3018,0,8,2,30,5),(3019,0,8,2,30,5),(3020,0,8,2,30,5),(3021,0,8,2,30,6),(3022,0,8,2,30,6),(3023,0,8,2,30,6),(3024,0,8,2,30,6),(3025,0,8,2,30,6),(3026,0,8,2,30,6),(3027,0,8,2,30,6),(3028,0,8,2,30,6),(3029,0,8,2,30,6),(3030,0,8,2,30,6),(3031,17,8,2,30,6),(3032,0,8,2,30,6),(3033,0,8,2,30,6),(3034,0,8,2,30,6),(3035,0,8,2,30,6),(3036,0,8,2,30,6),(3037,0,8,2,30,6),(3038,0,8,2,30,6),(3039,0,8,2,30,6),(3040,0,8,2,30,6),(3041,0,8,2,30,7),(3042,0,8,2,30,7),(3043,0,8,2,30,7),(3044,0,8,2,30,7),(3045,0,8,2,30,7),(3046,0,8,2,30,7),(3047,0,8,2,30,7),(3048,0,8,2,30,7),(3049,0,8,2,30,7),(3050,0,8,2,30,7),(3051,0,8,2,30,7),(3052,0,8,2,30,7),(3053,0,8,2,30,7),(3054,0,8,2,30,7),(3055,0,8,2,30,7),(3056,0,8,2,30,7),(3057,0,8,2,30,7),(3058,0,8,2,30,7),(3059,0,8,2,30,7),(3060,0,8,2,30,7),(3061,0,8,2,30,8),(3062,0,8,2,30,8),(3063,0,8,2,30,8),(3064,0,8,2,30,8),(3065,0,8,2,30,8),(3066,0,8,2,30,8),(3067,0,8,2,30,8),(3068,0,8,2,30,8),(3069,0,8,2,30,8),(3070,0,8,2,30,8),(3071,0,8,2,30,8),(3072,0,8,2,30,8),(3073,0,8,2,30,8),(3074,0,8,2,30,8),(3075,0,8,2,30,8),(3076,0,8,2,30,8),(3077,0,8,2,30,8),(3078,0,8,2,30,8),(3079,0,8,2,30,8),(3080,0,8,2,30,8),(3001,0,5,2,30,5),(3001,0,6,2,30,5),(3001,0,7,2,30,5),(3001,0,8,2,30,5);
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
INSERT INTO `UserInfo` VALUES ('111','1 1. 1',1,1,NULL),('SAJ','Sumitra Anant . Jakhete',4,1,2),('t','t',2,2,NULL);
/*!40000 ALTER TABLE `UserInfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s`
--

DROP TABLE IF EXISTS `s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s` (
  `Rollno` int(4) DEFAULT NULL,
  `SubjectCode` int(3) DEFAULT NULL,
  `ScheduledDate` varchar(20) DEFAULT NULL,
  `SubmissionDate` varchar(20) DEFAULT NULL,
  `Marks` int(4) DEFAULT NULL,
  `Approved` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s`
--

LOCK TABLES `s` WRITE;
/*!40000 ALTER TABLE `s` DISABLE KEYS */;
INSERT INTO `s` VALUES (3001,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3002,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3003,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3004,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3005,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3006,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3007,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3008,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3009,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3010,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3011,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3012,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3013,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3014,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3015,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3016,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3017,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3018,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3019,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3020,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3021,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3022,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3023,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3024,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3025,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3026,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3027,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3028,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3029,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3030,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3031,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3032,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3033,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3034,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3035,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3036,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3037,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3038,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3039,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3040,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3041,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3042,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3043,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3044,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3045,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3046,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3047,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3048,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3049,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3050,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3051,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3052,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3053,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3054,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3055,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3056,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3057,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3058,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3059,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3060,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3061,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3062,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3063,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3064,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3065,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3066,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3067,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3068,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3069,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3070,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3071,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3072,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3073,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3074,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3075,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3076,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3077,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3078,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3079,1,'dd-mm-yyyy','dd-mm-yyyy',0,0),(3080,1,'dd-mm-yyyy','dd-mm-yyyy',0,0);
/*!40000 ALTER TABLE `s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sam`
--

DROP TABLE IF EXISTS `sam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sam` (
  `Rollno` int(4) DEFAULT NULL,
  `SubjectCode` int(3) DEFAULT NULL,
  `ScheduledDate` varchar(20) DEFAULT NULL,
  `SubmissionDate` varchar(20) DEFAULT NULL,
  `Marks` int(4) DEFAULT NULL,
  `Approved` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sam`
--

LOCK TABLES `sam` WRITE;
/*!40000 ALTER TABLE `sam` DISABLE KEYS */;
/*!40000 ALTER TABLE `sam` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-06 22:35:01
