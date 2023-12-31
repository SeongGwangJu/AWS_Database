-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: unicef
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `giver_tb`
--

DROP TABLE IF EXISTS `giver_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `giver_tb` (
  `giver_id` int NOT NULL AUTO_INCREMENT,
  `giving_page_id` int NOT NULL,
  `user_id` int NOT NULL,
  `giving_total` int NOT NULL,
  `giving_date` date NOT NULL,
  PRIMARY KEY (`giver_id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `giver_tb`
--

LOCK TABLES `giver_tb` WRITE;
/*!40000 ALTER TABLE `giver_tb` DISABLE KEYS */;
INSERT INTO `giver_tb` VALUES (70,59,1,20000,'2023-06-02'),(71,58,1,999000,'2023-06-02'),(72,59,13,500000,'2023-06-03'),(73,59,12,10000,'2023-06-03'),(74,59,14,30000,'2023-06-03'),(75,57,1,332200,'2023-06-03'),(76,59,15,2000,'2023-06-03'),(77,59,12,1000,'2023-06-03'),(78,59,12,1000,'2023-06-04'),(79,58,18,1000000,'2023-06-05'),(80,59,12,10000,'2023-06-05'),(81,56,12,60000,'2023-06-07'),(82,55,12,812000,'2023-06-07'),(83,59,34,1000,'2023-06-07'),(85,59,33,1000000,'2023-06-15'),(86,40,35,10000,'2023-06-30'),(87,48,41,1000000,'2023-06-30'),(88,59,42,20000,'2023-06-30');
/*!40000 ALTER TABLE `giver_tb` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-30 17:52:05
