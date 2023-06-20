-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: e_banking
-- ------------------------------------------------------
-- Server version	5.5.62

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
-- Table structure for table `bank`
--

DROP TABLE IF EXISTS `bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bank` (
  `pin` varchar(10) DEFAULT NULL,
  `date` varchar(40) DEFAULT NULL,
  `mode` varchar(30) DEFAULT NULL,
  `amount` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank`
--

LOCK TABLES `bank` WRITE;
/*!40000 ALTER TABLE `bank` DISABLE KEYS */;
INSERT INTO `bank` VALUES ('4393','Sun Nov 28 20:59:27 IST 2021','Deposit','100000'),('1234','Tue Nov 30 09:41:42 IST 2021','Deposit','5000'),('1234','Tue Nov 30 09:43:25 IST 2021','Withdrawl','1000'),('1234','Tue Nov 30 09:44:10 IST 2021','Withdrawl','500'),('1234','Tue Nov 30 09:46:54 IST 2021','Withdrawl','100'),('4882','Thu Dec 02 00:14:29 IST 2021','Deposit','10000000'),('4882','Thu Dec 02 00:14:43 IST 2021','Withdrawl','20000'),('4882','Thu Dec 02 00:14:59 IST 2021','Deposit','52000'),('4882','Thu Dec 02 00:15:09 IST 2021','Withdrawl','500'),('1234','Fri Dec 03 10:25:38 IST 2021','Deposit','8000'),('1234','Fri Dec 03 10:26:08 IST 2021','Withdrawl','100'),('1234','Fri Dec 03 10:26:34 IST 2021','Withdrawl','1000');
/*!40000 ALTER TABLE `bank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `formno` varchar(20) NOT NULL,
  `cardno` varchar(30) NOT NULL,
  `pin` varchar(20) NOT NULL,
  PRIMARY KEY (`cardno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('3070','5040935914665229','1234'),('7971','5040935938415899','1234'),('2255','5040935955536409','8425'),('5040','5040935962916177','4882'),('4210','5040936044369616','4393');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `signup`
--

DROP TABLE IF EXISTS `signup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `signup` (
  `formno` varchar(20) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `father_name` varchar(30) DEFAULT NULL,
  `dob` varchar(20) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `marital` varchar(20) DEFAULT NULL,
  `address` varchar(40) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `pincode` varchar(20) DEFAULT NULL,
  `state` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`formno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `signup`
--

LOCK TABLES `signup` WRITE;
/*!40000 ALTER TABLE `signup` DISABLE KEYS */;
INSERT INTO `signup` VALUES ('2255','Adyansh gupta','Sr Gupta','Jan 5, 2010','Male','adyansh@gmail.com','Unmarried','korba','korba','495677','chhattishgarh'),('3070','Ram Singh','Dasrath Singh','May 6, 1998','Male','ram@gmail.com','Married','korba','Korba','495677','Chhattisgarh'),('4210','Virat Kohli','Prem Kohli','Nov 5, 1998','Male','viratkohli18@gmail.com','Married','35th floor of the Omkar ‘1973’','Worli','400018','Mumbai'),('5040','David Warner','Howard Warner','Oct 27, 1986','Male','dwarner@gmail.com','Married','Allahabad','Allahabad','2021','Uttar Pradesh'),('7971','Akshat Gupta','SR Gupta','Mar 25, 2002','Male','akshatgupta@gmail.com','Unmarried','korba','korba','495677','chhattisgarh');
/*!40000 ALTER TABLE `signup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `signup2`
--

DROP TABLE IF EXISTS `signup2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `signup2` (
  `formno` varchar(20) DEFAULT NULL,
  `religion` varchar(20) DEFAULT NULL,
  `category` varchar(30) DEFAULT NULL,
  `income` varchar(30) DEFAULT NULL,
  `education` varchar(20) DEFAULT NULL,
  `occupation` varchar(20) DEFAULT NULL,
  `pan` varchar(20) NOT NULL,
  `aadhar` varchar(20) DEFAULT NULL,
  `scitizen` varchar(40) DEFAULT NULL,
  `eaccount` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`pan`),
  UNIQUE KEY `aadhar` (`aadhar`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `signup2`
--

LOCK TABLES `signup2` WRITE;
/*!40000 ALTER TABLE `signup2` DISABLE KEYS */;
INSERT INTO `signup2` VALUES ('2255','Hindu','General','Null','Others','Student','AABBF7755H','123456789655','No','No'),('7971','Hindu','General','Null','Graduate','Student','DGMPG1715H','459533132503','No','No'),('5040','Hindu','General','Above 10,00,000','Others','Self-Employmed','QQQTT8877U','457696666332','No','No'),('4210','Hindu','General','Above 10,00,000','Others','Others','QWEGH1835T','889977556633','No','No'),('3070','Hindu','General','<2,50,000','Graduate','Student','QWERH1756J','178945686521','No','No');
/*!40000 ALTER TABLE `signup2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `signup3`
--

DROP TABLE IF EXISTS `signup3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `signup3` (
  `formno` varchar(20) DEFAULT NULL,
  `atype` varchar(20) DEFAULT NULL,
  `cardno` varchar(30) DEFAULT NULL,
  `pin` varchar(20) NOT NULL,
  `facility` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`pin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `signup3`
--

LOCK TABLES `signup3` WRITE;
/*!40000 ALTER TABLE `signup3` DISABLE KEYS */;
INSERT INTO `signup3` VALUES ('7971','Saving Account','5040935938415899','1234',' ATM Card Internet Banking Mobile Banking'),('4210','Saving Account','5040936044369616','4393',' ATM Card Internet Banking Mobile Banking EMAIL Alerts Cheque Book E-Statement'),('5040','Saving Account','5040935962916177','4882',' ATM Card, EMAIL Alerts, Cheque Book'),('3070','Saving Account','5040935914665229','8181',' ATM Card, Mobile Banking, Cheque Book'),('2255','Saving Account','5040935955536409','8425',' ATM Card EMAIL Alerts E-Statement');
/*!40000 ALTER TABLE `signup3` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-03 13:29:50
