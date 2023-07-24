CREATE DATABASE  IF NOT EXISTS `androg` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_bin */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `androg`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: androg
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
  `address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `address_detail` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `address_sido` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `address_sigungu` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `address_bname` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `address_zonecode` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `ponenumber` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `address_flag` int NOT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address_tb`
--

LOCK TABLES `address_tb` WRITE;
/*!40000 ALTER TABLE `address_tb` DISABLE KEYS */;
INSERT INTO `address_tb` VALUES (31,14,'경기 성남시 분당구 대왕판교로 373','2층','경기','성남시 분당구','백현동','13543','010-3558-9631',1),(40,15,'경기 성남시 분당구 판교역로 4','111호','경기','성남시 분당구','백현동','13536','000-0000-0000',0),(41,15,'부산 부산진구 중앙대로 668','코리아아이티아카데미','부산','부산진구','부전동','47296','000-0000-0000',0),(43,36,'부산 강서구 가달1로 7','1','부산','강서구','생곡동','46729','111-1111-1111',1),(44,36,'경기 성남시 분당구 미금로 246','1','경기','성남시 분당구','금곡동','13617','111-1111-1111',0),(45,45,'충남 서천군 판교면 금덕길 9','5층 503호','충남','서천군','현암리','33615','010-6554-2381',0),(46,45,'서울 강동구 성내로 32','1층 305호','서울','강동구','성내동','05399','010-6554-2381',0),(48,27,'부산 부산진구 동성로 17','3층','부산','부산진구','전포동','47306','010-9705-2709',0),(49,14,'부산 동구 망양로945번길 19','11','부산','동구','범일동','48719','010-9705-2709',0),(50,14,'서울 강남구 가로수길 5','2층','서울','강남구','신사동','06035','010-9705-2709',0),(51,3,'경기 성남시 분당구 대왕판교로 477','1층','경기','성남시 분당구','판교동','13480','010-4758-8028',0),(52,43,'서울 성동구 마조로 15-16','ㅇㅇ','서울','성동구','행당동','04760','010-6417-1383',0),(53,49,'부산 남구 진남로69번길 17-6','502호','부산','남구','대연동','48438','000-0000-0000',0);
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

-- Dump completed on 2023-07-24 11:01:02
