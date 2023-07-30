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
-- Table structure for table `center_tb`
--

DROP TABLE IF EXISTS `center_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `center_tb` (
  `center_id` int NOT NULL AUTO_INCREMENT,
  `center_name` varchar(45) NOT NULL,
  `center_address` varchar(100) NOT NULL,
  `center_phone_number` varchar(45) NOT NULL,
  `center_ceo` varchar(45) NOT NULL,
  PRIMARY KEY (`center_id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `center_tb`
--

LOCK TABLES `center_tb` WRITE;
/*!40000 ALTER TABLE `center_tb` DISABLE KEYS */;
INSERT INTO `center_tb` VALUES (0,'test','test','test','test'),(58,' (재)사랑의장기기증운동본부',' 서울특별시 서대문구 서소문로 21 (충정로3가, 충정타워빌딩) 7층 (재)사랑의장기기증운동본부','02-363-2114','박진탁'),(59,'그루터기지역아동센터','고양시청','test',' 이진아'),(60,'그루터기지역아동센터','고양시청','test',' 이진아'),(61,'녹십자','경상북도 구미시 송정대로6길 73-1(송정동)','052-234-1475','고원용'),(62,'녹십자','경상북도 구미시 송정대로6길 73-1(송정동)','052-234-1475','고원용'),(63,'대한사회복지회',' 서울특별시 강남구 논현로86길 21 (역삼동, 한서병원) 대한사회복지회','070-4620-1114','윤기원'),(64,'대한사회복지회','서울특별시 강남구 논현로86길 21 (역삼동, 한서병원) 대한사회복지회',' 070-4620-1114','윤기원'),(65,'초록우산 어린이재단','서울특별시 중구 무교로 20 (무교동, 어린이재단) 어린이재단빌딩 11층','02-755-9122','최운열'),(66,' 사회복지공동모금회','서울 중구 정동 1-17번지 사랑의열매회관 6층','02-6262-3000','김병준'),(67,'강북재가노인지원센터','서울특별시 강북구 삼양로 579 (우이동, 화성빌딩) 2층',' 02-945-9988','김영길'),(68,'인애종합사회복지관','광주 남구 봉선2동 132-13','062-676-5087','이선미'),(69,'부산평화의집','부산광역시 북구 양달로 65 (화명동, 평화의집) 평화의집','051-331-4344','정영희'),(70,'열매나눔재단','서울특별시 중구 퇴계로20길 37 (남산동2가) 열매나눔 빌딩 302호','02-2038-8507','이장호'),(71,'밀알복지재단','서울특별시 강남구 밤고개로1길 34 (수서동, 한울오피스텔) 2층','070-7462-9042','홍정길'),(72,'사단법인 마이코즈','울산광역시 남구 돋질로 106 (달동) 마이코즈 6층','052-291-0900','김성수'),(73,'환경운동연합','서울특별시 종로구 필운대로 23 환경운동연합','02-735-7060','이철수'),(74,'환경운동연합','서울특별시 종로구 필운대로 23 환경운동연합','02-735-7060','이철수'),(75,'우리모두재가노인지원센터','서울특별시 종로구 숭인1동 57-37,B02호(우리모두재가노인지원센터','02-744-8573','권양희'),(76,'초록우산 어린이재단','서울특별시 중구 무교로 20 (무교동, 어린이재단) 어린이재단빌딩 11층','02-755-9122','최운열'),(77,'번동3단지종합사회복지관','서울특별시 강북구 오현로 208 (번동, 번동주공아파트) 302동 1층 번동3단지종합사회복지관',' 02-984-6777','권진옥'),(78,'번동3단지종합사회복지관','서울특별시 강북구 오현로 208 (번동, 번동주공아파트) 302동 1층 번동3단지종합사회복지관','02-984-6777',' 권진옥'),(79,'남북사랑네트워크','서울특별시 구로구 고척로 28 (오류동, 예원빌딩) 6층','02-2688-0691','정규재'),(80,'조인어스코리아',' 서울특별시 양천구 목동동로 81 해누리타운8층','070-7839-5200','서용석'),(81,'서울그린트러스트',' 서울특별시 성동구 서울숲길 53 (성수동1가) 심오피스 3층','02-498-7432','지영선'),(82,'환경재단','서울특별시 중구 을지로 16 (을지로1가, 프레지던트호텔) 7층 703호',' 02-2011-4323',' 최열'),(83,'희망을주는사람들',' 서울특별시 구로구 오리로 1100 (천왕동, 천왕연지타워) 203호 희망을주는사람들',' 02-855-0479','조택형'),(84,'test','test','test','test');
/*!40000 ALTER TABLE `center_tb` ENABLE KEYS */;
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
