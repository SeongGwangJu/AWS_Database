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
-- Table structure for table `donation_use_plan_tb`
--

DROP TABLE IF EXISTS `donation_use_plan_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donation_use_plan_tb` (
  `dup_id` int NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `donation_expense` int NOT NULL,
  `giving_page_id` int NOT NULL,
  PRIMARY KEY (`dup_id`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donation_use_plan_tb`
--

LOCK TABLES `donation_use_plan_tb` WRITE;
/*!40000 ALTER TABLE `donation_use_plan_tb` DISABLE KEYS */;
INSERT INTO `donation_use_plan_tb` VALUES (74,'가족 지킴 키트 3만원*200가정',6000000,34),(75,'이식인 사연 책자 2천원*200권',400000,34),(76,'키트 발송비 3천원*200곳',600000,34),(77,'특식',420000,38),(78,'간식비 20000 * 21명',420000,38),(79,'어린이날 선물 20000 * 21명',630000,38),(80,'어린이날 체험학습 30000 * 21',210000,38),(81,'어린이날 교통비 10000*21만',300000,38),(82,'파스퇴르 산양분유*180캔',8415000,39),(83,'운영비(사례관리비 등)',1485000,39),(84,'보조기기(휠체어 등) 구입비*12개',8415000,40),(85,'운영비(사례관리비 등)',1485000,40),(86,'아동 가정 생계지원',15000000,41),(87,'아동 가정 교육지원',5000000,41),(90,'보양식(삼계탕)142명x19',2697999,43),(91,'생활비 400',2800000,44),(92,'000원 X 7개월',4200000,44),(93,'둘째 학원비 600',2800000,44),(94,'전기요금(7',2500000,45),(95,'8월)',1960000,45),(96,'냉방기 구입 및 설치',540000,45),(97,'생수구입비 198원ⅹ50',9900000,46),(98,'의료비 월 40만 원*12개월',4800000,47),(99,'긴급생계비',3615000,47),(100,'경상운영비',1485000,47),(101,'강사비(25만원*2과목*6개월)',3000000,48),(102,'주방리모델링(주방용품 등)',1000000,48),(103,'교실리모델링',1000000,48),(109,'생물다양성 국제토론회 1회',3500000,50),(110,'에코사이드 패널 2인',500000,50),(111,'생물다양성 현장 4인x2박x3회',2400000,50),(112,'생물다양성 홍보비',1000000,50),(113,'생물다양성 영화 대관비',1500000,50),(114,'삼계탕재료10',3900000,51),(115,'000원×130명×3회',117000,51),(116,'삼계탕 용기 300원×130명×3회',1170000,51),(117,'수박 3',1950000,51),(118,'주거 이전에 필요한 보증금',10000000,52),(119,'이사비 및 아동 공부방 가구구입비',5000000,52),(120,'아동 의료비(개안 수술비)',5000000,52),(125,'캘리그라피강사료 100',500000,54),(126,'000x5회',500000,54),(127,'캘리그라피재료피 50',1000000,54),(128,'000x10명',1000000,54),(129,'차량대절료 150만원x2회',3000000,55),(130,'식비 15000원x40명x4회',2400000,55),(131,'간식비 5000원x40명x4회',800000,55),(132,'단체잠바 40000원x40개',1600000,55),(133,'독거노인용 도시락 30000원x70개',2100000,55),(134,'프로그램 홍보',500000,56),(135,'제작비',500000,56),(136,'밀원식물 구매비',5000000,57),(137,'꿀벌정원 관리비',4000000,57),(138,'꿀벌정원 관리 아카이빙',900000,57),(139,'해양쓰레기 수거 및 개선 비용',5000000,58),(140,'해양쓰레기 처리 비용',2500000,58),(141,'해양쓰레기 캠페인 홍보비',1000000,58),(142,'경상운영비 및 인건비',1400000,58),(143,'장애인가족 생계비(교통비 식비 등)',3000000,59),(144,'식비 등)',5000000,59),(145,'test',500000,60),(146,'test',1000000,61);
/*!40000 ALTER TABLE `donation_use_plan_tb` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-24 11:01:06
