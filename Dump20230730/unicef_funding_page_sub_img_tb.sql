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
-- Table structure for table `funding_page_sub_img_tb`
--

DROP TABLE IF EXISTS `funding_page_sub_img_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funding_page_sub_img_tb` (
  `fpsi_id` int NOT NULL AUTO_INCREMENT,
  `funding_id` int NOT NULL,
  `img_url` varchar(200) NOT NULL,
  PRIMARY KEY (`fpsi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funding_page_sub_img_tb`
--

LOCK TABLES `funding_page_sub_img_tb` WRITE;
/*!40000 ALTER TABLE `funding_page_sub_img_tb` DISABLE KEYS */;
INSERT INTO `funding_page_sub_img_tb` VALUES (1,94,'e608f843e20046579733b69a3133d2c5.jpg'),(2,98,'3a59c4cfdfe24b39831aa7e34d0f5792.jpg'),(3,99,'5b25669ef80a44938f1d3a243ccc2763.jpg'),(4,100,'2f4c8786da69427aaf22210dfa72297f.jpg'),(5,101,'1a4a36d842884af3add93f8fdcf3ef09.jpg'),(6,102,'163cee0966af4612a3422f84297a542e.jpg'),(7,103,'784e8148eab44fc49e9cd2e6f7066ea8.jpg'),(8,104,'68081642817349448f90325c41868eab.jpg'),(9,105,'319ae6ca4c0e4f2bb0ab1761974d028c.jpg'),(10,106,'59efbebb1c0848f3a50a066ba7d866c8.jpg'),(11,107,'7fc10bf47d984d088f7563e15dc022ab.jpg'),(12,108,'993681cfdf0f46ff93376c1df675c19b.jpg'),(13,109,'9e67d224974d4d588c621f66ba67ef6a.jpg'),(14,110,'3aa654a275a8420786b9f51f0a93c16a.jpg'),(15,121,'325fcd9f9d4843eaa084fc87a97413f2.jpg'),(16,122,'0701a993a3fe44cd9d9c0e1c40c39f47.jpg'),(17,123,'ae8a63ad76b647abbc5e6bb116e3daa1.jpg'),(18,124,'3fe28ca4be0f4cd1844343e5956d8085.jpg'),(19,125,'13e04840c2084b83b1a622f5661ec8d9.jpg'),(20,126,'95ad054729dc4174b8d40a19eda3513f.jpg'),(21,127,'907e8e166a454ddcb31741432a81c145.jpg'),(22,128,'45d49697f3a44611bd7b6ae871b8c84c.jpg'),(23,129,'e479393e408d4156adf764e555a89c25.jpg'),(33,139,'6d319e85c0d34e7fb38b8007cb72ba86.png');
/*!40000 ALTER TABLE `funding_page_sub_img_tb` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-30 17:52:06
