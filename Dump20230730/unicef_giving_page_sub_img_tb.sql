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
-- Table structure for table `giving_page_sub_img_tb`
--

DROP TABLE IF EXISTS `giving_page_sub_img_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `giving_page_sub_img_tb` (
  `gpsi_id` int NOT NULL AUTO_INCREMENT,
  `giving_page_id` int NOT NULL,
  `img_url` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`gpsi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `giving_page_sub_img_tb`
--

LOCK TABLES `giving_page_sub_img_tb` WRITE;
/*!40000 ALTER TABLE `giving_page_sub_img_tb` DISABLE KEYS */;
INSERT INTO `giving_page_sub_img_tb` VALUES (1,32,'ce3f455fd04b4912b3579c22c77797d8.jpg'),(2,33,'00f984cc5b20458b9440acd07b9b1c54.jpg'),(3,34,'ee7698d2c4254ef89b58bb1b32128ece.jpg'),(4,38,'5d6f8d247fd14676ab48b887fd0aa9c9.jpg'),(5,39,'5c69a686b9ac40909e5b535af462160f.png'),(6,40,'8d042d19478d4e20949ae2261f1d9d61.png'),(7,41,'835ad69fdada473992959d8cff865964.jpg'),(8,42,'f2f35c7195e843498240232f64039df2.png'),(9,43,'82e896cdd22841f388e01cfefbc05f19.jpg'),(10,44,'244504db7cb847d89441713c14529f06.jpg'),(11,45,'8efa95f86bf84bd9aeb3e8eddb6ae4c8.jpg'),(12,46,'eb13bbb4464948e4b8cc6a7e1a6e9e8f.jpg'),(13,47,'92a8bb432322496d96794d3e32d2e29c.jpg'),(14,48,'a683fc67039148e3b7e6ae6643c1cdb6.jpg'),(15,49,'9a208d0941f54240a6dfc1a91ccc9ba7.png'),(16,50,'95252174b66d427885b343e5120edc42.png'),(17,51,'5caf9c200afb46ef97a6b87880a16bda.jpg'),(18,52,'91f29d25a4fd4978bd4ad3e06e5ad56a.png'),(19,53,'2c0036796a4c46558677510a0e94872b.jpg'),(20,54,'5daf2980fbb7477fa7cda0f98ebd2553.jpg'),(21,55,'584c020769d74c178250c9280baefbf2.jpg'),(22,56,'11dd048234064ac48aed927b0c0022ed.jpg'),(23,57,'69634fedd15243e2956b9dbdea4c2cb6.jpg'),(24,58,'0fbf04423070461e9f2397d37662d4ac.jpg'),(25,59,'c4963fd8d83f4a6c9e0cbbc5b64abe07.jpg'),(26,60,'2e9e1ae94a764ac88ecbdaf4829668d7.png'),(27,61,'48811bc2864743ccaaa33d238f6b957b.jpg'),(28,62,'513054e77c784224a51af9350b370e9d.png'),(29,63,'e72a7b6ee16c4269b16cd92a86d3f2ec.png'),(30,64,'1e4c4b197531448cb308aa88ceabf54a.png'),(31,65,'ab015d1161354589b0fa6dd5b2ab3a92.jpg'),(32,66,'3c113d4d7fd743ea91dc2fc332e83b3c.png'),(33,67,'0cf17eb4486e47b2bf345cee977395c2.jpg'),(34,68,'8e26df27f3094b059d2bbc6ae71e97c7.jpg'),(35,69,'59044e81efd847a2abf0cf1dc2074f95.jpg'),(36,70,'c2ff1ce903ed4c5599e5661617f00e9c.jpg'),(37,82,'22928edf510a4c2982a7ee76b97dcd15.jpg'),(38,83,'ba76270432f94f0f877db84db7dac0fb.png'),(39,84,'486e1b212393481493079021e9846635.png'),(40,85,'56c49c3250ca4b6fa6aa90002348ab6a.png'),(41,86,'84a41e10d03f4503aad9865c0b77238c.png');
/*!40000 ALTER TABLE `giving_page_sub_img_tb` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-30 17:52:03
