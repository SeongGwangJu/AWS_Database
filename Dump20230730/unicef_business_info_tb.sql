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
-- Table structure for table `business_info_tb`
--

DROP TABLE IF EXISTS `business_info_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `business_info_tb` (
  `business_info_id` int NOT NULL AUTO_INCREMENT,
  `company_name` varchar(45) NOT NULL,
  `ceo_name` varchar(45) NOT NULL,
  `company_address` varchar(100) NOT NULL,
  `company_phone_number` varchar(45) NOT NULL,
  `ceo_email` varchar(45) NOT NULL,
  `funding_id` int NOT NULL,
  PRIMARY KEY (`business_info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business_info_tb`
--

LOCK TABLES `business_info_tb` WRITE;
/*!40000 ALTER TABLE `business_info_tb` DISABLE KEYS */;
INSERT INTO `business_info_tb` VALUES (91,'안동회관','류원희','경상북도 안동시 태사길 71 (옥정동) 경상북도 안동시 태사길 71 (옥정동)','054-857-9555','ryuwh1733@naver.com',98),(92,'그린블리스','유신우','경기도 남양주시 오남읍 양지로319번길 26-33','0507-1495-0365','greenbliss@naver.com',99),(93,'드리미팜','김성체','충청남도 부여군 부여읍 송상로 25-14 (부여읍)','0507-1343-9248','rlatjdcp89@naver.com',100),(97,'주식회사 플립(FLIP Co.,Ltd.)','박경돈','서울특별시 마포구 매봉산로 18 (상암동, 마포창업복지관) 412호','070-4453-8101','cs@flipflower.co.kr',104),(98,'주식회사 디어얼스','권용진','서울 은평구 녹번로 6길 2, 1층','070-4485-3388','dearearth@dearearth.co.kr',105),(100,'바테','김해준','경상남도 의령군 의령읍 백산로 15-4 (의령읍, 한우베스트빌) 604호','010-6668-3496','gowns86@naver.com',107),(101,'(주)지키빌','박성진','부산광역시 기장군 정관읍 정관덕산길 50-13 (정관읍)','070-8845-3347','iam_seongjin@naver.com',108),(102,'청년협동조합180','승영진','경기도 용인시 수지구 수풍로131번길 6 1층 104호 쿠키무이','010-7210-3340','kumu0830@naver.com',109),(103,'파머심슨','심승기','충청북도 청주시 흥덕구 오송읍 서평리 288','010-5018-3464','farmer_simpsons@naver.com',110),(114,'지리산산골흑돼지농업회사법인주식회사','유덕용','경상남도 함양군 수동면 우명하교로 193 (수동면)','055-964-1862','sangol1862@naver.com',121),(115,'지리산처럼영농조합법인','정정은','전라북도 남원시 운봉읍 가산화수길 71-13','063-636-8788','pro@happyjirisan.co.kr',122),(116,'코리아경기도주식회사','이창훈','경기도 성남시 분당구 판교로289번길 20 (삼평동, 판교테크노밸리 스타트업 캠퍼스) 5층 샘물자리','02-6022-8930','west@kgcbrand.com',123),(117,'네이버웹툰 유한회사','김준구','경기도 성남시 분당구 분당내곡로 131 (백현동) 판교테크원 타워1 11,12층','1644-3069','dl_webtoonfriends@webtoonscorp.com',124),(118,'마므레상점','박선주','강원도 속초시 설악산로 417 (도문동) 1층','0507-1341-6829','mamreshop@naver.com',125),(119,'농사펀드','박종범','서울 종로구 창경궁로 35길 40 알파라운드 1층 농사펀드','1600-3418','contact@ffd.co.kr',126),(120,'(주)디자인앤본두','배경두','광주광역시 북구 무등로 153 (신안동) (주)디자인앤본두','062-225-3630','thesaladbowl@naver.com',127),(121,'주식회사 피스하나','류하나','서울특별시 구로구 신도림로13길 51 (신도림동) 2F 주식회사 피스하나','010-5571-3611','oops1oops@naver.com',128),(122,'네이버웹툰 유한회사','김준구','경기도 성남시 분당구 분당내곡로 131 (백현동) 판교테크원 타워1 11,12층','1644-3069','dl_webtoonfriends@webtoonscorp.com',129);
/*!40000 ALTER TABLE `business_info_tb` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-30 17:52:05
