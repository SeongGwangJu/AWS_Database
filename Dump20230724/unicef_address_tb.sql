CREATE DATABASE  IF NOT EXISTS `unicef` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `unicef`;
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
-- Table structure for table `address_tb`
--

DROP TABLE IF EXISTS `address_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address_tb` (
  `address_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `zonecode` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `building_name` varchar(100) NOT NULL,
  `bname` varchar(100) NOT NULL,
  `detail_address` varchar(100) NOT NULL,
  `address_type` varchar(100) NOT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address_tb`
--

LOCK TABLES `address_tb` WRITE;
/*!40000 ALTER TABLE `address_tb` DISABLE KEYS */;
INSERT INTO `address_tb` VALUES (11,1,'05831','서울 송파구 동남로 99','용현빌딩','가락동','2층','R'),(12,2,'46324','부산 금정구 명서로 48','서명초등학교','서동','test','R'),(13,3,'06515','서울 서초구 나루터로 37','신사쇼핑센터','잠원동','2','R'),(14,5,'30053','세종특별자치시 장군면 무넘이길 4','오성빌라','도계리','101동 101호','R'),(15,6,'06517','서울 서초구 나루터로 15','신동초등학교','잠원동','2','R'),(16,7,'05831','서울 송파구 동남로 103','청송빌딩','가락동','2층','R'),(17,8,'05831','서울 송파구 동남로 99','용현빌딩','가락동','2층','R'),(18,9,'05831','서울 송파구 동남로 103','청송빌딩','가락동','2층','R'),(19,10,'05831','서울 송파구 동남로 99','용현빌딩','가락동','2층','R'),(20,11,'05831','서울 송파구 동남로 99','용현빌딩','가락동','2층','R'),(21,12,'46243','부산 금정구 금정로233번길 63','구서역 두산위브 포세이돈','구서동','101동 101호','R'),(22,13,'46990','부산 사상구 가야대로 1','','감전동','2층','R'),(23,14,'05693','서울 송파구 가락로 2','','석촌동','2층','R'),(24,15,'04802','서울 성동구 가람길 46','상원 앞 공중화장실','성수동1가','2층','R'),(26,18,'아가','아가','','','908',''),(27,19,'03619','서울 서대문구 간호대로 3','','홍제동','3층','R'),(28,20,'','','','','',''),(29,21,'03619','서울 서대문구 간호대로 3','','홍제동','2층','R'),(30,22,'03619','서울 서대문구 간호대로 3','','홍제동','2층','R'),(31,23,'03619','서울 서대문구 간호대로 3','','홍제동','2층','R'),(32,24,'03619','서울 서대문구 간호대로 3','','홍제동','3층','R'),(33,25,'05831','서울 송파구 동남로 99','용현빌딩','가락동','2층','R'),(34,26,'05831','서울 송파구 동남로 99','용현빌딩','가락동','3층','R'),(35,27,'05831','서울 송파구 동남로 99','용현빌딩','가락동','2층','R'),(36,28,'05831','서울 송파구 동남로 99','용현빌딩','가락동','2','R'),(37,29,'05831','서울 송파구 동남로 99','용현빌딩','가락동','2층','R'),(38,30,'05831','서울 송파구 동남로 99','용현빌딩','가락동','2층','R'),(39,31,'05831','서울 송파구 동남로 99','용현빌딩','가락동','2층','R'),(40,32,'07803','서울 강서구 강서로 375','','마곡동','2','R'),(41,33,'05693','서울 송파구 가락로 2','','석촌동','2층','R'),(42,34,'05831','서울 송파구 동남로 99','용현빌딩','가락동','2층','R'),(43,35,'46729','부산 강서구 가달1로 7','','생곡동','2층','R'),(44,36,'46729','부산 강서구 가달1로 7','','생곡동','2층','R'),(45,37,'46990','부산 사상구 가야대로 1','','감전동','2층','R'),(46,38,'46990','부산 사상구 가야대로 1','','감전동','2층','R'),(47,39,'46990','부산 사상구 가야대로 1','','감전동','2층','R'),(48,40,'46729','부산 강서구 가달1로 7','','생곡동','2층','R'),(49,41,'06035','서울 강남구 가로수길 5','','신사동','2층','R'),(50,42,'06035','서울 강남구 가로수길 5','','신사동','2층','R'),(51,43,'46990','부산 사상구 가야대로 1','','감전동','2층','R'),(52,45,'46990','부산 사상구 가야대로 1','','감전동','2층','R');
/*!40000 ALTER TABLE `address_tb` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-24 11:01:05
