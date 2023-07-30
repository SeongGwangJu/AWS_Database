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
-- Table structure for table `user_tb`
--

DROP TABLE IF EXISTS `user_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_tb` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(45) CHARACTER SET big5 COLLATE big5_chinese_ci NOT NULL,
  `password` varchar(200) CHARACTER SET big5 COLLATE big5_chinese_ci NOT NULL,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `provider` varchar(45) DEFAULT NULL,
  `profile_img` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_tb`
--

LOCK TABLES `user_tb` WRITE;
/*!40000 ALTER TABLE `user_tb` DISABLE KEYS */;
INSERT INTO `user_tb` VALUES (3,'test@testmail.com','$2a$10$44y9pnJXsExVP5BbzU354.b3TNRSxpnjb89SIFtBiUuneVGSlZcyC','정성현',NULL,'113e57707a9e4edca2892a6c650d380b.jpg'),(5,'ccc@mail.com','$2a$10$q4HAPd6ugLqB1F6fVbHn8uqshUDGzD63/MXRSI5sruq2bMiwCoez.','테스트유저',NULL,'default.png'),(11,'bbb@gmail.com','$2a$10$xy/FvhqMpnfwkAF6w2V5s./9x4Lwp6kRJarDgZRo4QbgOAhZjZY7e','강의진',NULL,'default.png'),(14,'sang@naver.com','$2a$10$OOPcQCFFS9BSCjMSXStZgey1TBOuKqxausUVp425jRTy/uAd7gqr.','상구',NULL,'95122e0d3a6148529e01ba19958017d6.jpg'),(15,'vvv@gmail.com','$2a$10$q0KkQl09mq21.jkWLdIBE.ggd7TAJzS/swL0FwWNeB92XQkXgc1hK','강의진',NULL,'4afa0985d70b4320ae4d7a8504d3e531.jpg'),(16,'roleuser@mail.com','$2a$10$EhS9T4IvIG6nHgqudmAb9O0VH7cXabSMz.Ypw3zfEtJacDvy7Yp9K','유저권한',NULL,'default.png'),(27,'bagume6191@naver.com','$2a$10$V2d5WUA64TDsPG9v1WoGYeu6BGULFapgXkNmE0Bqi5TNXBpa0ANRy','이상현','naver','default.png'),(43,'bagume61@naver.com','$2a$10$Qbfpsh47J251Jvx8iGCgGeWjTb/P/w53/xGDf.L7Gf1QcE.T./rqW','이상현',NULL,'default.png'),(44,'bagume619@gmail.com','$2a$10$./nJsTbT7A/MDmeF4j02qe5r6nzvBoUl7/UiAvuhpWmuBb9WQ4ksO','이상현','google','default.png'),(45,'wheretogobro@naver.com','$2a$10$h.yr9RVa2Dx5WhhlTeOY4eCTbYuJcV2qdFsfNLWjEB7AHDYW6Axu2','강의진','naver','a9a8e4d004c7420f93b10a51a2dbbc87.jpg'),(46,'dmlwlstnvj@nate.com','$2a$10$EtbcQSiosgNiWhqHdkhgYOi4MU20ZE4F52lku786exTSMAi48RzCu','강의진','kakao','default.png'),(47,'skjil1218@gmail.com','$2a$10$5zlMyHtD40dWh7W3NcTRKeCULrhdzxX5z.gNIACRQ6uhZ7H335BK.','김준일',NULL,'default.png'),(49,'motgolking@gmail.com','$2a$10$gmLYE8WpFnEyC06UuwVCvuROd.4ME0YtdJZnQwA7Ct/Enn9Z500Mq','uijin “MotgolKing” kang','google','666a12a03a18408781106a6d101e7e3b.jpg'),(50,'aaa@gmail.com','1234','김준일','google',NULL),(51,'ddd@gmail.com','1111','김준이','google',NULL);
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

-- Dump completed on 2023-07-30 17:52:12
