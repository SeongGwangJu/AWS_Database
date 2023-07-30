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
-- Table structure for table `color_tb`
--

DROP TABLE IF EXISTS `color_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `color_tb` (
  `color_id` int NOT NULL AUTO_INCREMENT,
  `color_name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`color_id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `color_tb`
--

LOCK TABLES `color_tb` WRITE;
/*!40000 ALTER TABLE `color_tb` DISABLE KEYS */;
INSERT INTO `color_tb` VALUES (1,'artichoke'),(2,'keylime'),(3,'coral'),(4,'tea'),(5,'black'),(6,'white'),(7,'mauv'),(8,'gren'),(9,'purp'),(10,'natural'),(11,'brow'),(12,'navy'),(13,'grape'),(14,'tomato'),(15,'heather'),(16,'grapge'),(17,'ashh'),(18,'blue'),(19,'oran'),(20,'crem'),(21,'azur'),(22,'wasb'),(23,'oliv'),(24,'vcam'),(25,'vino'),(26,'ghea'),(27,'khak'),(28,'bone'),(29,'salm'),(30,'wine'),(31,'sage'),(32,'rust'),(33,'royl'),(34,'bolv'),(35,'lbrw'),(36,'grey'),(37,'stwa'),(38,'burg'),(39,'lime'),(40,'char'),(41,'vinb'),(42,'wanv'),(43,'fadr'),(44,'rose'),(45,'fore'),(46,'slat'),(47,'lolv'),(48,'army'),(49,'fogr'),(50,'card'),(51,'hunt'),(52,'must'),(53,'deer'),(54,'dora'),(55,'dgre'),(56,'darp'),(57,'pink'),(58,'hotp'),(59,'yellow'),(60,'sand'),(61,'sagr'),(62,'cumi'),(63,'beige');
/*!40000 ALTER TABLE `color_tb` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-30 17:52:12
