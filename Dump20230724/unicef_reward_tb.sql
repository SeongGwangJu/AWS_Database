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
-- Table structure for table `reward_tb`
--

DROP TABLE IF EXISTS `reward_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reward_tb` (
  `reward_id` int NOT NULL AUTO_INCREMENT,
  `reward_name` varchar(200) NOT NULL,
  `reward_price` int NOT NULL,
  `funding_id` int NOT NULL,
  PRIMARY KEY (`reward_id`)
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reward_tb`
--

LOCK TABLES `reward_tb` WRITE;
/*!40000 ALTER TABLE `reward_tb` DISABLE KEYS */;
INSERT INTO `reward_tb` VALUES (74,'도시락 12종 세트',53000,20),(113,'한우불고기 600g + 채소 3종 + 사골육수',33000,98),(114,'고추장불고기 600g + 채소 3종',27000,98),(115,'한우불고기 200g + 고추장불고기 200g + 채소 3종*2세트',20000,98),(116,'한우불고기 400g + 고추장불고기 400g + 채소 3종*2세트',40000,98),(117,'한우불고기 600g + 고추장불고기 600g + 채소 3종*2세트 + 사골육수',60000,98),(118,'성인 반팔 티셔츠',43000,99),(119,'아동 반팔티셔츠',33000,99),(120,'여성 트렁크',21000,99),(121,'스크런치(헤어밴드)',5000,99),(122,'GAP인증 대추방울토마토 2kg',14000,100),(123,'GAP인증 대추방울토마토 5kg',35000,100),(124,'통근 토마토즙 110ml*40개',32000,100),(131,'꽃 정기구독 (1개월 동안 총 2번)',295000,104),(132,'꽃 정기구독 (3개월 동안 총 6번) + 베이직화병',149000,104),(133,'꽃 정기구독 (6개월 동안 총 12번) + 베이직화병 + 꽃가위',49800,104),(134,'[얼리버드] 설거지비누 2박스 + 손비누 2개 + 핸드타월 1장',37000,105),(135,'설거지비누 1박스(150g 2개입)',10500,105),(136,'손비누 2개(100g 2개입)',16000,105),(137,'설거지비누 1박스(150g 2개입) + 손비누 1개(100g 1개입)',18500,105),(138,'설거지비누 1박스(150g 2개입) + 손비누 1개 + 핸드타월 1개',23500,105),(139,'설거지비누 1박스(150g 2개입) + 손비누 1개 + 핸드타월 1개 + 팟브러시 1개',30500,105),(140,'[얼리버드] 설거지비누 1박스(150g 2개입) + 손비누 1개(100g 1개입)',15000,105),(141,'설거지비누 2박스(150g 4개입)',10500,105),(146,'바테 레드비트 5kg(9~13개)',17500,107),(147,'바테 레드비트 10kg(19~23개)',29004,107),(148,'1초 스니커즈 블랙*1켤레',63000,108),(149,'1초 스니커즈 화이트*1켤레',63000,108),(150,'1초 스니커즈 블랙*1켤레 + 화이트*1켤레',120000,108),(151,'스위트 세트(4개입)',14000,109),(152,'티타임 세트(4개입)',14000,109),(153,'선물 세트(16개입)',54000,109),(154,'국대수박 6~7kg',27000,110),(155,'국대수박 7~8kg',30000,110),(156,'국대수박 8~9kg',33000,110),(157,'고사리 150g 1팩 + 흑돼지 300g (1인 기준)',19900,121),(158,'고사리 150g 2팩 + 흑돼지 800g (2~3인 기준)',38900,121),(159,'고사리 150g 4팩 + 흑돼지 1.6kg (4~5인 기준)',64900,121),(160,'고사리 150g 5팩',27900,121),(161,'건조나물 세트(나물 4종',33000,121),(162,'생크림 깨스테라 3개입',17000,122),(163,'생크림 깨스테라 5개입',28000,122),(164,'우리밀 쿠키 3종 선물세트',13500,123),(167,'[선물용]설악버터샌드 1BOX(6개입',16000,125),(168,'3종*2개입) + 쇼핑백 증정',15000,125),(169,'설악버터샌드 1BOX (6개입',12000,125),(170,'3종*2개입)',4500,125),(171,'생딸기잼 400g',12000,126),(172,'생딸기잼 400g*2병',23700,126),(173,'생딸기청 500ml*2병',32500,126),(174,'생딸기청 500ml*4병',61200,126),(175,'육보딸기 1kg (40과 내외)',30900,126),(176,'육보딸기 2kg (80과 내외)',61500,126),(177,'도시락 12종 세트',53000,127),(178,'5ml 아로마 에센셜 오일 1종(리프레시',32900,128),(179,'해피 중 택일) + 화산송이 틴',36900,128),(180,'5ml 아로마 에센셜 오일 1종(캄',49000,128),(181,'릴랙스 중 택일) + 화산송이 틴',82000,128),(182,'5ml 아로마 에센셜 오일 4종',37900,128),(183,'10ml 아로마 에센셜 오일 4종 + 화산송이 틴',99000,128),(184,'올인원 스프레이 30ml 1개 + 200ml 1개',500,128),(185,'단행본 1~5권+북케이스 (무료 배송)',79000,129),(186,'단행본 1~5권+북케이스+소책자+스포츠타월+엽서+스티커+패키지 박스 (무료 배송)',93200,129);
/*!40000 ALTER TABLE `reward_tb` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`%`*/ /*!50003 TRIGGER `reward_tb_BEFORE_DELETE` BEFORE DELETE ON `reward_tb` FOR EACH ROW BEGIN
	delete
    from
		funder_tb
	where
		reward_id = old.reward_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-24 11:01:05
