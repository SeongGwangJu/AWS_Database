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
-- Table structure for table `user_tb`
--

DROP TABLE IF EXISTS `user_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_tb` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL,
  `password` varchar(200) NOT NULL,
  `name` varchar(45) NOT NULL,
  `birth_day` date NOT NULL,
  `gender` varchar(45) NOT NULL,
  `provider` varchar(45) DEFAULT NULL,
  `phone_number` varchar(45) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_tb`
--

LOCK TABLES `user_tb` WRITE;
/*!40000 ALTER TABLE `user_tb` DISABLE KEYS */;
INSERT INTO `user_tb` VALUES (1,'dmlgus3585@gmail.com','$2a$10$5.TGK0NUAMR/sAR5f0KrpulIHCPBOtU9C65WjxYFhaePtRB7TlDqK','정의현','2000-05-10','female','google,kakao','010-5834-3585'),(12,'ksh8144@gmail.com','$2a$10$rU78yeJ6tJ0NpT/YIiKo3eEekmoF3JV7ZIjwOcpaaQsSuSwpb4SpC','김상현','1996-08-02','male',NULL,'010-3733-8144'),(18,'tytyty@gmail.com','$2a$10$vCmTmfFd1ZhwqkPdMHWi7.ztlBpGGlYHBwN.ZnqvuoLAHsUPcVyya','가나가나','2000-11-22','male',NULL,'010-5959-2345'),(33,'aaa@gmail.com','$2a$10$M4sU7edLhG/WxFsvsGOrtuMdieWYcQpF4LSJuPESqk7YBm6YPIKgS','테스트','2000-05-10','female',NULL,'010-5834-3585'),(34,'ccc@gmail.com','$2a$10$oOUJm4e3ne9aFsLrVxxUKuL4I6nDi35ZAq.XXn0cqPIRUUf2wMiPO','김상현','2000-05-10','male',NULL,'010-5834-3585'),(35,'aaa123@gmail.com','$2a$10$dt7/9DMJGP8Pwx/eyUXQOuNxvo5qxEJCwL6q29uKQ3YBEqK23KbYi','김상현','1996-08-02','male',NULL,'010-3733-8144'),(36,'dpeps456789@gmail.com','$2a$10$m5llCHJHgAcyhdK1fko.a.bZ3obzvftXLruZRXxspstC3nCd/ompa','상현','1996-08-02','male','google','010-3733-8144'),(40,'abc123@gmail.com','$2a$10$/7/cyBGAscKOuTMfKwiwROCVjR862BGTJ3wQjD2Xl6RcmjU0EVVta','김상현','1996-08-02','male',NULL,'010-3733-8144'),(41,'hi212@gmail.com','$2a$10$4tZwZF.2urJTKXjx0SvQU./TGEAIJ8.EW/JmbRl4fqQulSEP7GSK.','김상현','1996-08-02','male',NULL,'010-3733-8144'),(42,'sanghyeon8144@gmail.com','$2a$10$9v3U839tujwLAFEOAE87suY78yrzWVfqP/3N2C22yDpsA0CjbjG4q','김상현','1996-08-02','male',NULL,'010-3733-8144'),(44,'dmlgus3585@naver.com','$2a$10$Cd8OxYd6WlnlMK.gJaenxOjVzJJEeQuxScixwjjE/i8keyc5xDjT.','정의현','2000-05-10','male','naver','010-1234-5678'),(45,'test@gmail.com','$2a$10$2frxVqnd31scY/vKoe5YZuHURY8M5e5uwqJAccgYbCX42evzPCS4q','테스트','2000-05-10','female',NULL,'010-5834-3585');
/*!40000 ALTER TABLE `user_tb` ENABLE KEYS */;
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
