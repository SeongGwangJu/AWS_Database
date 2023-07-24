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
-- Table structure for table `target_benefit_tb`
--

DROP TABLE IF EXISTS `target_benefit_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `target_benefit_tb` (
  `tb_id` int NOT NULL AUTO_INCREMENT,
  `target` varchar(500) NOT NULL,
  `target_count` int NOT NULL,
  `benefit_effect` varchar(500) NOT NULL,
  `business_start_date` date NOT NULL,
  `business_end_date` date NOT NULL,
  `giving_page_id` int NOT NULL,
  PRIMARY KEY (`tb_id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `target_benefit_tb`
--

LOCK TABLES `target_benefit_tb` WRITE;
/*!40000 ALTER TABLE `target_benefit_tb` DISABLE KEYS */;
INSERT INTO `target_benefit_tb` VALUES (34,'기타(뇌사장기기증인유가족)',200,'뇌사 장기기증인 유가족 200가정의 정서적 지지 및 회복 지원','2023-07-01','2023-12-31',34),(38,'취약계층 아동•청소년',21,'21명의아이들에게 어린이날 특식과 간식을 제공할 수 있다.','2023-07-31','2023-10-30',38),(39,'시설거주 아동•청소년',20,'양육 물품(분유) 지원을 통한 영아들의 전반적인 건강 증진','2023-08-01','2023-12-31',39),(40,'기타(참전용사어르신)',12,'호국보훈의 달을 맞이하여 국가유공자 어르신들의 생활 편의성 증진','2023-06-30','2024-02-28',40),(41,'취약계층 아동•청소년',2,'아동 가정 생계지원으로 인한 환경 개선','2023-07-01','2023-10-30',41),(43,'취약계층 어르신',142,'안부확인을 통한 정서적 안정감 향상 및 소외감 경감','2023-09-30','2023-12-31',43),(44,'취약계층 아동•청소년',3,'생활비 지원을 통한 생계안정 도모','2023-09-01','2023-12-31',44),(45,'시설거주 장애인',49,'여름철 적정 온도 제공으로 입주장애인의 건강유지','2023-10-01','2023-12-31',45),(46,'독거 어르신',1000,'돌봄이 필요한 홀몸 어르신에게 생수를 지원하여 여름철 질환 예방','2023-10-30','2023-12-31',46),(47,'취약계층 아동•청소년',1,'의료비 지원으로 준호의 증상 완화','2023-07-01','2023-11-30',47),(48,'학교폭력 피해 아동•청소년',40,'질높은 교육환경과 성장기 청소년들을 위한 영양식제공','2023-07-01','2023-11-30',48),(50,'기타(전체생태계와생물다양)',6,'생물다양성에 대한 사회 인식 증진','2023-06-01','2023-08-30',50),(51,'독거 어르신',130,'삼복키트를 지원하여 어르신의 결식을 예방합니다.','2023-06-30','2023-10-30',51),(52,'취약계층 아동•청소년',6,'의식주 해결을 통하여 건강한 성장 발달을 도모함','2023-08-01','2023-09-30',52),(54,'이주여성',10,'이주여성들 간 지속적인 활동을 통한 사회적 관계망 형성','2023-08-01','2023-09-30',54),(55,'중도입국 청소년',40,'중도입국 탈북민 자녀들의 취업 및 진학률 20% 향상','2023-09-01','2023-12-31',55),(56,'이주노동자',50,'한국 거주 구성원으로 적응력 향상','2023-05-30','2023-12-31',56),(57,'토양환경',21,'꿀벌정원을 지속적으로 돌보며 식생을 건강하게 유지관리','2023-08-01','2023-12-31',57),(58,'해양환경',5,'해저 쓰레기 저감을 통한 해양 생태계 활성화','2023-07-01','2023-12-31',58),(59,'취약계층 장애인',1,'장애인가족들에게 포기하지 않고 세상을 살아갈 희망과 용기를 전한다.','2023-07-31','2023-11-30',59),(60,'아동',100,'test','2023-06-05','2023-06-06',60),(61,'test',10,'test','2023-06-07','2023-06-07',61);
/*!40000 ALTER TABLE `target_benefit_tb` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-24 11:01:07
