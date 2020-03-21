-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: abcbank
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `account_id` varchar(50) NOT NULL,
  `account_name` varchar(45) NOT NULL,
  `account_address` varchar(100) NOT NULL,
  `account_status` varchar(45) NOT NULL,
  `email_id` varchar(45) NOT NULL,
  `mobile_number` varchar(45) NOT NULL,
  `account_type` varchar(45) NOT NULL,
  `date_open` datetime DEFAULT NULL,
  `date_closed` datetime DEFAULT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES ('10','Mithila','224 ters street , Boston','closed','Mrd@gmail.com','2522889082','Checking','2011-12-10 00:00:00','2019-06-02 00:00:00'),('11','Bhuvana','225 ters street , Boston','closed','bhuvi@gmail.com','2522889092','Checking','2011-12-11 00:00:00','2019-06-02 00:00:00');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_transaction`
--

DROP TABLE IF EXISTS `account_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_transaction` (
  `account_id` varchar(45) NOT NULL,
  `transaction_no` varchar(45) NOT NULL,
  `transaction_date` datetime NOT NULL,
  `transaction_amount` double NOT NULL,
  `transaction_type` varchar(45) NOT NULL,
  `loan_id` varchar(45) NOT NULL,
  `payee_id` varchar(45) NOT NULL,
  `account_balance` double NOT NULL,
  PRIMARY KEY (`account_id`,`transaction_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_transaction`
--

LOCK TABLES `account_transaction` WRITE;
/*!40000 ALTER TABLE `account_transaction` DISABLE KEYS */;
INSERT INTO `account_transaction` VALUES ('20','1543','2011-12-10 00:00:00',450,'P','34','7',0),('23','223','2017-02-19 00:00:00',130,'CR','4','11',0);
/*!40000 ALTER TABLE `account_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acct_trans`
--

DROP TABLE IF EXISTS `acct_trans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acct_trans` (
  `Account_Id` varchar(45) NOT NULL,
  `Transaction_No` varchar(50) NOT NULL,
  `Trans_Date` date NOT NULL,
  `Transaction_amount` int NOT NULL,
  `Balance_Sum` float NOT NULL,
  `Transaction_type` varchar(45) NOT NULL,
  `Loan_Id` varchar(60) DEFAULT NULL,
  `Payee_Id` varchar(45) DEFAULT NULL,
  UNIQUE KEY `Transaction_No_UNIQUE` (`Transaction_No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acct_trans`
--

LOCK TABLES `acct_trans` WRITE;
/*!40000 ALTER TABLE `acct_trans` DISABLE KEYS */;
INSERT INTO `acct_trans` VALUES ('AC222','UR090989','0000-00-00',200,9800,'D',NULL,'P600'),('AB345','UR096592','0000-00-00',3500,6500,'L','L400',NULL),('AB345','UR098087','0000-00-00',400,6100,'CH',NULL,NULL),('AB345','UR098253','0000-00-00',1000,5100,'CH',NULL,NULL),('AC222','UR098784','0000-00-00',2000,7800,'CH',NULL,NULL),('AC222','UR098785','0000-00-00',200,0,'P',NULL,'P600'),('AA122','UR122344','2018-10-08',400,9600,'QP',NULL,'P103'),('AB344','UR123478','0000-00-00',200,10800,'QP',NULL,'P301'),('AB344','UR123809','0000-00-00',1000,9800,'L','L301',NULL),('AA123','UR233584','0000-00-00',1000,9000,'CR',NULL,NULL),('AA122','UR234256','2018-11-04',2000,11600,'DC',NULL,''),('AC200','UR243857','0000-00-00',1000,9000,'L','L501',NULL),('AC200','UR253409','0000-00-00',200,8800,'WT',NULL,'P502'),('AB344','UR254095','0000-00-00',700,10500,'CR',NULL,NULL),('AC200','UR254399','0000-00-00',500,8300,'D',NULL,'P503'),('AA123','UR345123','0000-00-00',3000,6000,'D',NULL,'P201'),('AC200','UR345390','0000-00-00',400,7900,'OT',NULL,'P500'),('AC200','UR346357','0000-00-00',5000,2900,'CH',NULL,NULL),('AA122','UR346574','2018-12-05',1000,10600,'OT',NULL,''),('AA123','UR354354','0000-00-00',90,5910,'QP',NULL,'P202'),('AA122','UR354366','2019-01-02',300,10300,'L','L101','P105'),('AC200','UR364598','0000-00-00',400,2500,'P',NULL,'P504'),('AC200','UR453609','0000-00-00',1000,3500,'CR',NULL,NULL),('AB344','UR454320','0000-00-00',2000,8500,'CH',NULL,NULL),('AA122','UR454669','2019-01-20',1000,9300,'OP',NULL,'P104'),('AA123','UR465347','0000-00-00',150,5760,'WT',NULL,'P205'),('AC222','UR475654','0000-00-00',1000,0,'L','L600',NULL),('AA122','UR476578','2019-02-04',200,9100,'WC',NULL,''),('AC200','UR534978','0000-00-00',100,3400,'P',NULL,'P501'),('AC222','UR545900','0000-00-00',200,0,'D',NULL,'P601'),('AA123','UR565765','0000-00-00',500,5260,'L','L200',NULL),('AB345','UR572430','0000-00-00',400,4700,'WT',NULL,'P401'),('AC222','UR576541','0000-00-00',1000,0,'CR',NULL,NULL),('AB344','UR576562','0000-00-00',1000,9500,'CR',NULL,NULL),('AB345','UR595240','0000-00-00',100,4600,'P',NULL,'P402'),('AB344','UR645608','0000-00-00',100,9400,'P',NULL,'P300'),('AA123','UR650892','0000-00-00',2000,3260,'L','L201',NULL),('AA123','UR654674','0000-00-00',100,3160,'QP',NULL,'P202'),('AB345','UR678965','0000-00-00',3000,7600,'CR',NULL,NULL),('AC222','UR735609','0000-00-00',1500,0,'CR',NULL,NULL),('AA123','UR746423','0000-00-00',2000,5160,'CR',NULL,NULL),('AC200','UR746571','0000-00-00',3000,6400,'CR',NULL,NULL),('AC222','UR754000','0000-00-00',100,0,'QP',NULL,'P603'),('AC200','UR754653','0000-00-00',1500,4900,'L','L500',NULL),('AB345','UR786540','0000-00-00',1500,6100,'L','L401',NULL),('AC222','UR847509','0000-00-00',500,0,'WT',NULL,'P602'),('AB344','UR876923','0000-00-00',200,9600,'CR','',NULL),('AB344','UR878687','0000-00-00',4000,5600,'L','L300',NULL),('AB344','UR896742','0000-00-00',2000,3600,'D',NULL,'P302'),('AB345','UR902534','0000-00-00',150,5950,'P',NULL,'P404'),('AB345','UR906259','0000-00-00',500,5450,'OT',NULL,'P403'),('AB344','UR909123','0000-00-00',400,3200,'WT',NULL,'P304'),('AA122','UR909887','2019-02-08',5900,15000,'IT',NULL,''),('AA122','UR932587','2019-11-04',3000,12000,'WT',NULL,'P103'),('AA123','UR976534','0000-00-00',200,4960,'WT',NULL,NULL),('AB345','UR978543','0000-00-00',3000,8450,'CR',NULL,NULL),('AA123','UR987865','0000-00-00',1500,3460,'CH',NULL,'P204'),('AA122','UR987878','2020-01-04',4200,16200,'IP',NULL,'P104'),('AA122','UR987955','2020-02-28',2000,14200,'L','L100','P101'),('AC222','UR989097','0000-00-00',1000,0,'L','L601',NULL);
/*!40000 ALTER TABLE `acct_trans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill_payee`
--

DROP TABLE IF EXISTS `bill_payee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bill_payee` (
  `payee_id` varchar(45) NOT NULL,
  `user_id` varchar(45) NOT NULL,
  `payee_account_no` varchar(45) NOT NULL,
  `payee_phone` varchar(45) NOT NULL,
  `payee_address` varchar(100) NOT NULL,
  PRIMARY KEY (`payee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill_payee`
--

LOCK TABLES `bill_payee` WRITE;
/*!40000 ALTER TABLE `bill_payee` DISABLE KEYS */;
INSERT INTO `bill_payee` VALUES ('333000','722230','6622323','3132323281','17 whire st Kentucky'),('333223','822230','6622324','3132323291','17 green st Kentucky'),('999999','722370','877825','3132423291','20 New st Kentucky');
/*!40000 ALTER TABLE `bill_payee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loan`
--

DROP TABLE IF EXISTS `loan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loan` (
  `loan_id` varchar(45) NOT NULL,
  `loan_type` varchar(45) NOT NULL,
  `loan_amount` varchar(45) NOT NULL,
  `user_id` varchar(45) NOT NULL,
  `account_id` varchar(45) NOT NULL,
  `loan_open_date` datetime NOT NULL,
  `loan_status` varchar(45) NOT NULL,
  `loan_term` varchar(45) NOT NULL,
  PRIMARY KEY (`loan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loan`
--

LOCK TABLES `loan` WRITE;
/*!40000 ALTER TABLE `loan` DISABLE KEYS */;
INSERT INTO `loan` VALUES ('66','House','10000','6','23','2011-02-12 00:00:00','Open','12 months'),('67','Personal','5000','10','10','2016-02-02 00:00:00','Open','12 months'),('68','Car','15000','10','11','2011-04-12 00:00:00','Open','12 months'),('69998','Mortgagehousing','1000220','2226','232222','2011-02-12 00:00:00','Open','12 months');
/*!40000 ALTER TABLE `loan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` varchar(45) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `middle_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile_number` varchar(20) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  `address` varchar(100) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('1','Preeti','Jo','Jelloi','skkop21@gmail.com','234354465','abc','245 yello st Jersy '),('10','pavan','R','M','pavan@gmail.com','2122889082','abc7235','226 ters street , Boston'),('11','kaarea','Jasony','Ford','Karejas2821@gmail.com','210273805','abc11','2 pier st Michigann'),('12','Sudiksha','R','M','Deeksha@gmail.com','2522889082','Deeksha7235','224 ters street , Boston'),('2','Bhuvana','R','G','Bhuvi@gmail.com','2122889091','Bhuvi@723','226 Green street , Michigan'),('3','Vasuki','Li','G','Vaskee81@gmail.com','235629995','abc3','287 Deer st Michigan'),('4','srujaa','tery','tio','Srujan21@gmail.com','210982005','abc4','227 pier st Michigann'),('5','sirisha','Jwery','WEllso','Srisha291@gmail.com','2102261778','abc5','263 weeks st, Chicago'),('6','Junk1','Jy','all','Junke1@gmail.com','212221178','abc6','22 kelles st , Michigan'),('7','swea','R','Gundu','swea@gmail.com','2122889081','abc723','226 ters street , Michigan');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_account`
--

DROP TABLE IF EXISTS `user_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_account` (
  `user_id` varchar(45) NOT NULL,
  `account_id` varchar(45) NOT NULL,
  PRIMARY KEY (`user_id`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_account`
--

LOCK TABLES `user_account` WRITE;
/*!40000 ALTER TABLE `user_account` DISABLE KEYS */;
INSERT INTO `user_account` VALUES ('7','777'),('8','888');
/*!40000 ALTER TABLE `user_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_details` (
  `user_id` int NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `login_name` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `mobile_number` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_details`
--

LOCK TABLES `user_details` WRITE;
/*!40000 ALTER TABLE `user_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-21 14:27:17
