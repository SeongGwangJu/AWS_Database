CREATE DATABASE  IF NOT EXISTS `unicef` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `unicef`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: portfolio.ctaowcun6prm.ap-northeast-2.rds.amazonaws.com    Database: unicef
-- ------------------------------------------------------
-- Server version	8.0.32

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `address_tb`
--

DROP TABLE IF EXISTS `address_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address_tb` (
  `address_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `zonecode` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `building_name` varchar(100) NOT NULL,
  `bname` varchar(100) NOT NULL,
  `detail_address` varchar(100) NOT NULL,
  `address_type` varchar(100) NOT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address_tb`
--

LOCK TABLES `address_tb` WRITE;
/*!40000 ALTER TABLE `address_tb` DISABLE KEYS */;
INSERT INTO `address_tb` VALUES (11,1,'05831','서울 송파구 동남로 99','용현빌딩','가락동','2층','R'),(12,2,'46324','부산 금정구 명서로 48','서명초등학교','서동','test','R'),(13,3,'06515','서울 서초구 나루터로 37','신사쇼핑센터','잠원동','2','R'),(14,5,'30053','세종특별자치시 장군면 무넘이길 4','오성빌라','도계리','101동 101호','R'),(15,6,'06517','서울 서초구 나루터로 15','신동초등학교','잠원동','2','R'),(16,7,'05831','서울 송파구 동남로 103','청송빌딩','가락동','2층','R'),(17,8,'05831','서울 송파구 동남로 99','용현빌딩','가락동','2층','R'),(18,9,'05831','서울 송파구 동남로 103','청송빌딩','가락동','2층','R'),(19,10,'05831','서울 송파구 동남로 99','용현빌딩','가락동','2층','R'),(20,11,'05831','서울 송파구 동남로 99','용현빌딩','가락동','2층','R'),(21,12,'46243','부산 금정구 금정로233번길 63','구서역 두산위브 포세이돈','구서동','101동 101호','R'),(22,13,'46990','부산 사상구 가야대로 1','','감전동','2층','R'),(23,14,'05693','서울 송파구 가락로 2','','석촌동','2층','R'),(24,15,'04802','서울 성동구 가람길 46','상원 앞 공중화장실','성수동1가','2층','R'),(26,18,'아가','아가','','','908',''),(27,19,'03619','서울 서대문구 간호대로 3','','홍제동','3층','R'),(28,20,'','','','','',''),(29,21,'03619','서울 서대문구 간호대로 3','','홍제동','2층','R'),(30,22,'03619','서울 서대문구 간호대로 3','','홍제동','2층','R'),(31,23,'03619','서울 서대문구 간호대로 3','','홍제동','2층','R'),(32,24,'03619','서울 서대문구 간호대로 3','','홍제동','3층','R'),(33,25,'05831','서울 송파구 동남로 99','용현빌딩','가락동','2층','R'),(34,26,'05831','서울 송파구 동남로 99','용현빌딩','가락동','3층','R'),(35,27,'05831','서울 송파구 동남로 99','용현빌딩','가락동','2층','R'),(36,28,'05831','서울 송파구 동남로 99','용현빌딩','가락동','2','R'),(37,29,'05831','서울 송파구 동남로 99','용현빌딩','가락동','2층','R'),(38,30,'05831','서울 송파구 동남로 99','용현빌딩','가락동','2층','R'),(39,31,'05831','서울 송파구 동남로 99','용현빌딩','가락동','2층','R'),(40,32,'07803','서울 강서구 강서로 375','','마곡동','2','R'),(41,33,'05693','서울 송파구 가락로 2','','석촌동','2층','R'),(42,34,'05831','서울 송파구 동남로 99','용현빌딩','가락동','2층','R'),(43,35,'46729','부산 강서구 가달1로 7','','생곡동','2층','R'),(44,36,'46729','부산 강서구 가달1로 7','','생곡동','2층','R'),(45,37,'46990','부산 사상구 가야대로 1','','감전동','2층','R'),(46,38,'46990','부산 사상구 가야대로 1','','감전동','2층','R'),(47,39,'46990','부산 사상구 가야대로 1','','감전동','2층','R'),(48,40,'46729','부산 강서구 가달1로 7','','생곡동','2층','R'),(49,41,'06035','서울 강남구 가로수길 5','','신사동','2층','R'),(50,42,'06035','서울 강남구 가로수길 5','','신사동','2층','R'),(51,43,'46990','부산 사상구 가야대로 1','','감전동','2층','R'),(52,45,'46990','부산 사상구 가야대로 1','','감전동','2층','R');
/*!40000 ALTER TABLE `address_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authority_tb`
--

DROP TABLE IF EXISTS `authority_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authority_tb` (
  `authority_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `role_id` varchar(45) NOT NULL,
  PRIMARY KEY (`authority_id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authority_tb`
--

LOCK TABLES `authority_tb` WRITE;
/*!40000 ALTER TABLE `authority_tb` DISABLE KEYS */;
INSERT INTO `authority_tb` VALUES (14,1,'2'),(15,2,'1'),(16,3,'1'),(17,5,'1'),(18,6,'1'),(19,7,'1'),(20,8,'1'),(21,9,'1'),(22,10,'1'),(23,11,'1'),(24,12,'1'),(25,13,'1'),(26,14,'1'),(27,15,'1'),(28,16,'1'),(29,17,'1'),(30,18,'1'),(31,19,'1'),(32,20,'1'),(33,21,'1'),(34,22,'1'),(35,23,'1'),(36,24,'1'),(37,25,'1'),(38,26,'1'),(39,27,'1'),(40,28,'1'),(41,29,'1'),(42,30,'1'),(43,31,'1'),(44,32,'1'),(45,12,'2'),(46,18,'2'),(47,33,'1'),(48,34,'1'),(49,35,'1'),(50,36,'1'),(51,37,'1'),(52,38,'1'),(53,39,'1'),(54,40,'1'),(55,41,'1'),(56,42,'1'),(57,43,'1'),(58,45,'1');
/*!40000 ALTER TABLE `authority_tb` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `funder_order_tb`
--

DROP TABLE IF EXISTS `funder_order_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funder_order_tb` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `funder_id` int NOT NULL,
  `reward_id` int NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funder_order_tb`
--

LOCK TABLES `funder_order_tb` WRITE;
/*!40000 ALTER TABLE `funder_order_tb` DISABLE KEYS */;
/*!40000 ALTER TABLE `funder_order_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funder_tb`
--

DROP TABLE IF EXISTS `funder_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funder_tb` (
  `funder_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `order_date` datetime NOT NULL,
  `address_id` int NOT NULL,
  `reward_id` int NOT NULL,
  PRIMARY KEY (`funder_id`)
) ENGINE=InnoDB AUTO_INCREMENT=216 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funder_tb`
--

LOCK TABLES `funder_tb` WRITE;
/*!40000 ALTER TABLE `funder_tb` DISABLE KEYS */;
INSERT INTO `funder_tb` VALUES (48,1,'2023-05-30 17:29:05',11,118),(49,1,'2023-05-30 17:29:05',11,118),(50,1,'2023-05-30 17:29:05',11,118),(51,1,'2023-05-30 17:29:05',11,119),(52,1,'2023-05-30 17:29:05',11,119),(53,1,'2023-05-30 17:29:05',11,119),(54,1,'2023-05-30 17:29:05',11,120),(55,1,'2023-05-30 17:29:05',11,120),(70,1,'2023-06-02 14:45:34',11,186),(71,1,'2023-06-02 14:45:34',11,186),(92,12,'2023-06-05 14:22:32',21,185),(93,12,'2023-06-05 14:22:32',21,185),(94,12,'2023-06-05 14:22:32',21,186),(95,12,'2023-06-05 14:22:32',21,186),(96,18,'2023-06-05 15:22:47',26,185),(97,18,'2023-06-05 15:22:47',26,186),(98,18,'2023-06-05 15:22:47',26,186),(99,1,'2023-06-06 12:43:17',11,178),(100,1,'2023-06-06 12:43:17',11,178),(101,1,'2023-06-06 12:43:17',11,178),(102,1,'2023-06-20 12:15:51',11,185),(103,1,'2023-06-20 12:15:51',11,185),(104,1,'2023-06-20 12:15:51',11,185),(105,1,'2023-06-20 12:15:51',11,185),(106,1,'2023-06-20 12:15:51',11,185),(107,1,'2023-06-20 12:15:51',11,185),(108,1,'2023-06-20 12:15:51',11,186),(109,1,'2023-06-20 12:15:51',11,186),(110,1,'2023-06-20 12:15:51',11,186),(111,1,'2023-06-20 12:15:51',11,186),(112,1,'2023-06-20 12:15:51',11,186),(113,1,'2023-06-20 12:17:51',11,162),(114,1,'2023-06-20 12:17:51',11,162),(115,1,'2023-06-20 12:17:51',11,162),(116,1,'2023-06-20 12:17:51',11,162),(117,1,'2023-06-20 12:17:51',11,162),(118,1,'2023-06-20 12:17:51',11,162),(119,1,'2023-06-20 12:17:51',11,162),(120,1,'2023-06-20 12:17:51',11,162),(121,1,'2023-06-20 12:17:51',11,162),(122,1,'2023-06-20 12:17:51',11,162),(123,1,'2023-06-20 12:17:51',11,162),(124,1,'2023-06-20 12:17:51',11,162),(125,1,'2023-06-20 12:17:51',11,162),(126,1,'2023-06-20 12:17:51',11,162),(127,1,'2023-06-20 12:17:51',11,162),(128,1,'2023-06-20 12:17:51',11,162),(129,1,'2023-06-20 12:17:51',11,162),(130,1,'2023-06-20 12:17:51',11,162),(131,1,'2023-06-20 12:17:51',11,162),(132,1,'2023-06-20 12:17:51',11,162),(133,1,'2023-06-20 12:17:51',11,162),(134,1,'2023-06-20 12:17:51',11,162),(135,1,'2023-06-20 12:17:51',11,162),(136,1,'2023-06-20 12:17:51',11,162),(137,1,'2023-06-20 12:17:51',11,162),(138,1,'2023-06-20 12:17:51',11,162),(139,1,'2023-06-20 12:17:51',11,162),(140,1,'2023-06-20 12:17:51',11,162),(141,1,'2023-06-20 12:17:51',11,162),(142,1,'2023-06-20 12:17:51',11,162),(143,1,'2023-06-20 12:17:51',11,162),(144,1,'2023-06-20 12:17:51',11,162),(145,1,'2023-06-20 12:17:51',11,162),(146,1,'2023-06-20 12:17:51',11,163),(147,1,'2023-06-20 12:17:51',11,163),(148,1,'2023-06-20 12:17:51',11,163),(149,1,'2023-06-20 12:17:51',11,163),(150,1,'2023-06-20 12:17:51',11,163),(151,1,'2023-06-20 12:17:51',11,163),(152,1,'2023-06-20 12:17:51',11,163),(153,1,'2023-06-20 12:17:51',11,163),(154,1,'2023-06-20 12:17:51',11,163),(155,1,'2023-06-20 12:17:51',11,163),(156,1,'2023-06-20 12:17:51',11,163),(157,1,'2023-06-20 12:17:51',11,163),(158,1,'2023-06-20 12:17:51',11,163),(159,1,'2023-06-20 12:17:51',11,163),(160,1,'2023-06-20 12:18:12',11,162),(161,1,'2023-06-20 12:18:12',11,162),(162,1,'2023-06-20 12:18:12',11,162),(163,1,'2023-06-20 12:18:12',11,162),(164,1,'2023-06-20 12:18:12',11,162),(165,1,'2023-06-20 12:18:12',11,162),(166,1,'2023-06-20 12:18:12',11,162),(167,1,'2023-06-20 12:18:12',11,162),(168,1,'2023-06-20 12:18:12',11,162),(169,1,'2023-06-20 12:18:12',11,162),(170,1,'2023-06-20 12:18:12',11,162),(171,1,'2023-06-20 12:18:12',11,162),(172,1,'2023-06-20 12:18:12',11,162),(173,1,'2023-06-20 12:18:12',11,162),(174,1,'2023-06-20 12:18:12',11,162),(175,1,'2023-06-20 12:18:12',11,162),(176,1,'2023-06-20 12:18:12',11,162),(177,1,'2023-06-20 12:18:12',11,162),(178,1,'2023-06-20 12:18:12',11,162),(179,1,'2023-06-20 12:18:12',11,162),(180,1,'2023-06-20 12:18:12',11,162),(181,1,'2023-06-20 12:18:12',11,162),(182,1,'2023-06-20 12:18:12',11,162),(183,1,'2023-06-20 12:18:12',11,162),(184,1,'2023-06-20 12:18:12',11,162),(185,1,'2023-06-20 12:18:12',11,162),(186,1,'2023-06-20 12:18:12',11,162),(187,1,'2023-06-20 12:18:12',11,162),(188,1,'2023-06-20 12:18:12',11,162),(189,1,'2023-06-20 12:18:12',11,162),(190,1,'2023-06-20 12:18:12',11,162),(191,1,'2023-06-20 12:18:12',11,162),(192,1,'2023-06-20 12:18:12',11,162),(193,1,'2023-06-20 12:18:12',11,163),(194,1,'2023-06-20 12:18:12',11,163),(195,1,'2023-06-20 12:18:12',11,163),(196,1,'2023-06-20 12:18:12',11,163),(197,1,'2023-06-20 12:18:12',11,163),(198,1,'2023-06-20 12:18:12',11,163),(199,1,'2023-06-20 12:18:12',11,163),(200,1,'2023-06-20 12:18:12',11,163),(201,1,'2023-06-20 12:18:12',11,163),(202,1,'2023-06-20 12:18:12',11,163),(203,1,'2023-06-20 12:18:12',11,163),(204,1,'2023-06-20 12:18:12',11,163),(205,1,'2023-06-20 12:18:12',11,163),(206,1,'2023-06-20 12:18:12',11,163),(207,1,'2023-06-21 15:45:56',11,185),(208,45,'2023-06-24 16:42:26',47,185),(209,45,'2023-06-24 16:42:26',47,185),(210,45,'2023-06-24 16:42:26',47,185),(211,45,'2023-06-24 16:42:26',47,186),(212,45,'2023-06-24 16:42:26',47,186),(213,45,'2023-06-24 16:42:26',47,186),(214,35,'2023-06-30 15:26:48',43,185),(215,35,'2023-06-30 15:26:48',43,186);
/*!40000 ALTER TABLE `funder_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funding_category_tb`
--

DROP TABLE IF EXISTS `funding_category_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funding_category_tb` (
  `funding_category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(45) NOT NULL,
  PRIMARY KEY (`funding_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funding_category_tb`
--

LOCK TABLES `funding_category_tb` WRITE;
/*!40000 ALTER TABLE `funding_category_tb` DISABLE KEYS */;
INSERT INTO `funding_category_tb` VALUES (1,'음식'),(2,'도서'),(3,'의류'),(4,'액세서리&화장품'),(5,'꽃&과일'),(6,'생활용품');
/*!40000 ALTER TABLE `funding_category_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funding_comment_tb`
--

DROP TABLE IF EXISTS `funding_comment_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funding_comment_tb` (
  `funding_comment_id` int NOT NULL AUTO_INCREMENT,
  `comment_text` varchar(999) NOT NULL,
  `funding_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`funding_comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funding_comment_tb`
--

LOCK TABLES `funding_comment_tb` WRITE;
/*!40000 ALTER TABLE `funding_comment_tb` DISABLE KEYS */;
/*!40000 ALTER TABLE `funding_comment_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funding_img_tb`
--

DROP TABLE IF EXISTS `funding_img_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funding_img_tb` (
  `posts_img_id` int NOT NULL AUTO_INCREMENT,
  `funding_id` int NOT NULL,
  `origin_name` varchar(100) NOT NULL,
  `temp_name` varchar(100) NOT NULL,
  `img_size` varchar(100) NOT NULL,
  PRIMARY KEY (`posts_img_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funding_img_tb`
--

LOCK TABLES `funding_img_tb` WRITE;
/*!40000 ALTER TABLE `funding_img_tb` DISABLE KEYS */;
/*!40000 ALTER TABLE `funding_img_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funding_page_sub_img_tb`
--

DROP TABLE IF EXISTS `funding_page_sub_img_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funding_page_sub_img_tb` (
  `fpsi_id` int NOT NULL AUTO_INCREMENT,
  `funding_id` int NOT NULL,
  `img_url` varchar(200) NOT NULL,
  PRIMARY KEY (`fpsi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funding_page_sub_img_tb`
--

LOCK TABLES `funding_page_sub_img_tb` WRITE;
/*!40000 ALTER TABLE `funding_page_sub_img_tb` DISABLE KEYS */;
INSERT INTO `funding_page_sub_img_tb` VALUES (1,94,'e608f843e20046579733b69a3133d2c5.jpg'),(2,98,'3a59c4cfdfe24b39831aa7e34d0f5792.jpg'),(3,99,'5b25669ef80a44938f1d3a243ccc2763.jpg'),(4,100,'2f4c8786da69427aaf22210dfa72297f.jpg'),(5,101,'1a4a36d842884af3add93f8fdcf3ef09.jpg'),(6,102,'163cee0966af4612a3422f84297a542e.jpg'),(7,103,'784e8148eab44fc49e9cd2e6f7066ea8.jpg'),(8,104,'68081642817349448f90325c41868eab.jpg'),(9,105,'319ae6ca4c0e4f2bb0ab1761974d028c.jpg'),(10,106,'59efbebb1c0848f3a50a066ba7d866c8.jpg'),(11,107,'7fc10bf47d984d088f7563e15dc022ab.jpg'),(12,108,'993681cfdf0f46ff93376c1df675c19b.jpg'),(13,109,'9e67d224974d4d588c621f66ba67ef6a.jpg'),(14,110,'3aa654a275a8420786b9f51f0a93c16a.jpg'),(15,121,'325fcd9f9d4843eaa084fc87a97413f2.jpg'),(16,122,'0701a993a3fe44cd9d9c0e1c40c39f47.jpg'),(17,123,'ae8a63ad76b647abbc5e6bb116e3daa1.jpg'),(18,124,'3fe28ca4be0f4cd1844343e5956d8085.jpg'),(19,125,'13e04840c2084b83b1a622f5661ec8d9.jpg'),(20,126,'95ad054729dc4174b8d40a19eda3513f.jpg'),(21,127,'907e8e166a454ddcb31741432a81c145.jpg'),(22,128,'45d49697f3a44611bd7b6ae871b8c84c.jpg'),(23,129,'e479393e408d4156adf764e555a89c25.jpg'),(33,139,'6d319e85c0d34e7fb38b8007cb72ba86.png');
/*!40000 ALTER TABLE `funding_page_sub_img_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funding_page_tb`
--

DROP TABLE IF EXISTS `funding_page_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funding_page_tb` (
  `funding_id` int NOT NULL AUTO_INCREMENT,
  `funding_name` varchar(45) NOT NULL,
  `register_date` date NOT NULL,
  `end_date` date NOT NULL,
  `goal_total` int NOT NULL,
  `story_title` varchar(45) NOT NULL,
  `story_content` text NOT NULL,
  `main_img_url` varchar(200) NOT NULL,
  `funding_category_id` int NOT NULL,
  `funding_summary_name` varchar(45) NOT NULL,
  PRIMARY KEY (`funding_id`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funding_page_tb`
--

LOCK TABLES `funding_page_tb` WRITE;
/*!40000 ALTER TABLE `funding_page_tb` DISABLE KEYS */;
INSERT INTO `funding_page_tb` VALUES (98,'우리집 식탁에 올라온 안동 별미 한우불고기','2023-05-30','2023-06-27',500000,'한우불고기로 쉽게 차리는 고품격 한상','각종 행사와 모임이 많은 가정의 달, 식탁 위를 풍성하게 만들어줄 고품격 안동 별미를 소개합니다. 안동에서 난 품질 좋은 한우와 농산물, 그리고 숙성간장이 만들어 내는 한우불고기의 부드러움과 담백함은 \'안동회관\' 만이 만들 수 있습니다. 이 특별한 안동의 맛을 집에서 간편하게 만나 보세요!','2d78295703a94ae1b360453d0e7fdb9d.jpg',1,'안동회관'),(99,'자연과 동물의 소중함을 이야기하는 티셔츠','2023-05-30','2023-06-28',2000000,'동물들의 삶, 자연, 우리 인간과의 연결고리','그린블리스는 자연과 동물에 해를 최소화하면서 예쁘고 편안하게 쓸 수 있는 제품을 만드는 브랜드로 2013년에 시작되었습니다. 양말 브랜드로 처음 시작하여 약 5년 넘게 적자에 허덕이면서 많은 어려움이 있었지만, 지금은 양말뿐만 아니라 티셔츠, 바지, 손수건, 타월 등을 만드는 오가닉라이프스타일 브랜드로 성장하였습니다. 뒤돌아보면 살아남았다는 게 신기하기도 하고, 이 과정에 많은 이들의 도움이 있었습니다.\r\n지난 10년간 그린블리스는 동물성 소재를 사용하지 않고, 합성섬유 사용은 최대한 자제하면서 식물성 오가닉 소재 위주로 제품을 제작하고 있습니다. 이것이 환경과 사용자의 피부에도 가장 나은 방향이라고 생각하기 때문입니다. 이번 10주년 기념 펀딩은 자연과 동물, 그리고 그린블리스를 찾아주시는 분들에 대한 감사의 의미를 담아 준비했습니다.','054a748084f64d0095af8f35a1d4ca61.jpg',3,'그린블리스X신도현X동자연'),(100,'스마트팜에서 자란 달콤 짭짤 대추방울토마토','2023-05-31','2023-06-28',1000000,'누구나 좋아하는 달콤함, 대추방울토마토','달콤하고 짭짤한 매력의 대추방울토마토는 남녀노소 누구나 좋아하는 과채류로, 완숙 토마토나 일반 방울토마토에 비해 당도가 훨씬 높습니다. 이런 대추방울토마토를 더욱 맛있게 재배하기 위해, 드리미팜 김성체 대표는 자연 속 광활한 대지에서 첨단 스마트팜을 활용해 고군분투하고 있습니다. 단맛, 신맛, 거기에 짭짤함까지 청년농부의 희로애락처럼 다양한 맛이 공존하는 대추방울토마토의 진정한 매력을 이번 펀딩에서 만나보세요.','795e763186834143aadaa6b634520b9b.jpg',5,'드리미팜'),(104,'청각장애 플로리스트가 매달 고르는 꽃 꾸러미','2023-06-02','2023-06-29',1000000,'봄바람 타고 두 번째 펀딩으로 돌아온 꽃 정기구독','안녕하세요 플립플라워입니다. 지난해 진행한 첫 펀딩에선 많은 분들의 사랑 덕분에 목표 금액 1953%를 달성할 수 있었어요. 고마운 마음을 담아 두 번째 펀딩으로 인사드립니다. 꽃이 만발한 봄철은 아름답지만 스치듯 짧아 아쉬움을 남기곤 합니다. 매달 집으로 찾아오는 정기 구독 꽃 꾸러미로 매일을 따스한 봄날로 만들어 보세요!','8621518e67764af3bd56cc200f68f191.jpg',5,'플립플라워'),(105,'천연 성분으로 말끔히! 설거지비누와 손비누','2023-06-02','2023-06-07',1000000,'요리하는 손을 위한 순한 주방용 비누 2종 최초 공개!','요리를 하는 분들이라면 잦은 세정에 손이 거칠어진 경험이 있을 거예요. 김치, 생선 등의 강한 냄새를 없애기 어려워 난감할 때도 있고요. 디어얼스는 주방에서의 시간이 조금 더 즐거워지는 방법을 오랜 시간 고민하고 연구했습니다. 그렇게 개발한 ‘설거지비누’와 ‘손비누’를 해피빈 펀딩을 통해 처음으로 소개합니다!','1a18d1586b0848569170e00a67e7b383.jpg',6,'디어얼스'),(107,'영양만점 빨간 맛! 청년 농부가 키운 레드비트','2023-06-02','2023-06-30',500000,'세계 4대 슈퍼푸드로 선정된 ‘레드비트’','레드비트는 일명 빨간 무라고 불리는 뿌리채소인데요. ‘혈관 청소부’라고 불릴 만큼 우리 몸속 혈관 청소에 도움을 주어 현대인들의 사랑을 받고 있습니다. 특히 칼슘, 칼륨, 철분, 섬유소 등이 포함되어 있어, 고혈압과 세포 손상을 억제하고 항산화 작용을 통해 암 예방과 염증을 완화하기도 합니다. 이 레드비트를 수확하기 위해 경남 의령, 청정 자연 속에서 열심히 농사를 짓는 한 청년 농부가 있습니다.','c747f9fb6d7d470e9ab4f5b1f1c21b43.jpg',1,'지키빌'),(108,'한국인의 발에 딱 맞춘 \'1초 스니커즈\'','2023-06-02','2023-06-07',1000000,'사람들은 왜 항상 불편하게 신발매듭을 지을까?','안녕하세요, 지키빌의 대표 박성진입니다. 저는 노쇠하신 할아버지의 신발끈을 묶어드리며, 어느날 문득 생각했습니다. \'신발은 편해야 한다면서, 왜 신발을 신는 과정은 불편할까?\' 이런 고민 끝에, 착화감도 좋고 몸이 불편하신 분들도 1초만에 신고 벗을 수 있는 \'1초 스니커즈\'를 개발하게 되었습니다.\r\n \r\n 지키빌의 \'1초 스니커즈\'는 탄력성 있는 고무 신발끈을 사용하여 편리함을 더했습니다. 신발끈을 풀고 발을 넣고 다시 신발끈을 묶는 번거로운 과정을 생략했습니다. 한국인의 발에 맞춘 착화감을 고려하면서 스니커즈의 곡선미도 잃지 않았습니다. \r\n \r\n 신발 하나로 가벼워진 외출, \'1초 스니커즈\'로 누려보세요.','2d739c67c88e41af888338502f8ece21.jpg',3,'쿠키무이'),(109,'부드러운 식감에 반하는 프리미엄 구움과자','2023-06-02','2023-07-05',1000000,'좋은 재료로 행복을 굽는 동네 과자점','용인 수지 동천동의 소문난 디저트 맛집 \'쿠키무이\'가 스모어, 르뱅, 마들렌, 휘낭시에로 구성된 구움과자 세트를 선보입니다. 기계를 이용한 대량생산이 아닌 손반죽으로 직접 만드는 공정을 통해, 정성이 가득 담긴 수제 디저트를 전하고 있는데요. 예쁜 비주얼을 뽐내며 눈에도 즐겁고, 천연 재료로 만들어 몸에도 좋은 구움과자 8종을 소개해 드릴게요.','d1e1e9a8907f47719194b38c069329df.jpg',1,'쿠키무이'),(110,'이웃과 함께 나누고 싶은 맛있는 국대수박','2023-06-02','2023-07-03',1000000,'맛있는 수박 실패 없이 고르는 방법!','\'커다란 수박 하나 잘익었나 통통통\' 이제 두드리지 않으셔도 됩니다. 실패 없는 수박, 국대 수박을 추천해드립니다.\r\n 같은 수박이라도 재배시기와 날씨, 환경에 따라서 품질이 달라지는데요. 충북 청주는 남부지방과 달리 일조량과 강수량이 적당하고, 온도가 높은 기후 조건을 갖추고 있기 때문에 수박 재배에 적합한 환경입니다. ‘품질이 경쟁력‘이라는 신념을 가지고 지속적인 품질관리와 연구개발을 통해 높은 수준의 제품을 제공할 것을 약속드립니다. 최고 중에 최고만 선별하여 맛있는 수박으로 보내드릴 자신이 있습니다.','47dd95d94fc049b3b3f06037fb1359fb.jpg',5,'파머심슨'),(121,'지리산 흑돼지와 제철 생고사리의 환상 조합','2023-06-02','2023-06-07',1000000,'제철 고사리와 지리산 흑돼지의 환상 조합','\'고사리도 제철\'이라는 말을 아시나요? 뭐든 알맞은 시기를 놓치지 말아야 한다는 뜻을 담고 있는데요. 지금 제철을 맞은 고사리는 정말 부드럽고 쫄깃쫄깃하답니다. 산에서 나는 소고기라는 별명이 있을 만큼 단백질과 식이섬유 등 영양도 풍부해요. 고사리하면 흔히 갈색의 건고사리를 떠올리지만 싱싱한 생고사리는 초록빛이에요. 생고사리는 돼지고기와 찰떡궁합을 자랑합니다. 직접 수확한 생고사리와 지리산에서 키운 흑돼지 고기를 함께 구성했어요. 고소한 오겹살과 담백한 목살 그리고 신선한 생고사리의 환상적인 조합을 산지 직송으로 만끽해 보세요!','4f37e0d03c154aeb89825cc4f2fc8201.jpg',1,'지리산산골흑돼지'),(122,'들깨 생크림이 듬뿍! 글루텐프리 깨스테라','2023-06-02','2023-06-21',1000000,'참기름을 만들다 카스테라를 굽게 된 사연?','깨로 만든 카스테라 \'깨스테라\'는 작은 시골 마을인 전북 남원 운봉읍에서 시작되었습니다. 이곳은 어르신들이 많이 사는 곳으로, 당뇨와 고혈압을 앓고 계신 분들이 많았습니다. 동네 어르신들이 건강 걱정 없이 드실 수 있는 간식이 있었으면 했어요. 그래서 밀가루와 설탕을 넣지 않은 건강한 깨스테라가 탄생하게 되었답니다! 글루텐프리 디저트로 어르신은 물론 식단 관리 중인 다이어터, 안전한 음식 섭취가 중요한 어린이들까지 부담 없이 즐길 수 있어요. ','e118aa70640148239e5f18f0ee3fa989.jpg',1,'지리산처럼'),(123,'정직함으로 만든 우리밀 쿠키 선물세트','2023-06-02','2023-06-10',1000000,'장애인을 고용하기 위해 쿠키를 만듭니다','“쿠키를 만들기 위해 장애인을 고용하는 것이 아니라, 장애인을 고용하기 위해 쿠키를 만듭니다.”\r\n 오전 9시, 이런 글귀가 새겨진 쿠키 공장 입구로 위생마스크와 모자, 복장을 갖춘 근로장애인 분들이 하나둘 모입니다. 한 직원이 쿠키 반죽을 조금씩 떼어내 무게를 확인하면, 다른 직원이 덩어리를 동그랗게 빚습니다. 맛있게 구워진 쿠키를 무게저울에 맞춰 포장 비닐에 넣으면, 압축기로 비닐을 봉합하는 것도 모두 직원들의 일입니다. 이렇게 40여 명의 중증 지적·자폐성 장애인 직원들의 노력이 있기에 하나의 쿠키가 탄생할 수 있습니다.','3d6e7decf6244393949e68f8f5c983c0.jpg',1,'마므레상점'),(125,'달콤하고 고소한 속초 대표 디저트 3선','2023-06-02','2023-06-05',500000,'설악의 기운을 담은 달콤바삭 속초 디저트','활짝 핀 꽃과 함께 본격적인 봄나들이 시즌이 돌아왔습니다. 국내에서 세번째로 높은 명산, 설악산에도 상큼한 봄이 찾아왔는데요. 추운 겨울이 지나가고 잔잔한 봄바람이 피부에 스치는 요즘, 꽃내음 묻어나는 설악의 기운을 쿠키에 담아내는 곳이 있습니다. 바로 마므레상점입니다.','bb22592a5449439b94d0ee67f1d504a2.jpg',1,'마므레상점'),(126,'땅의 시간을 지켜 익힌 육보 딸기와 딸기청','2023-06-02','2023-06-06',1000000,'검붉은 색의 단단함, 새콤달콤한 육보 딸기','요즘 시중에서 만나는 딸기의 대부분은 설향이라는 품종입니다. 향이 좋고 당도가 높은 품종이지만 새콤한 맛이 적습니다. 반면 육보는 새콤달콤한 맛이 매력입니다. 입안에서 풍부하고 다채로운 맛을 냅니다. 과육이 단단해 식감이 참 좋습니다.\r\n권두보 농부의 딸기는 검붉은 느낌입니다.눈으로 봐도 단단함이 느껴질 정도로, 조직이 치밀해서 식감이 정말 좋습니다. ‘베어먹다’라는 느낌이 들게 하는 딸기, 육보를 꼭 한 번 맛보셨으면 좋겠습니다.','cc165d3279b54efabc523ed7c9d01058.jpg',5,'농사펀드'),(127,'간편하게 즐기는 집밥, 가정식 도시락 12종','2023-06-02','2023-06-11',1000000,'정신없는 일상 속 간편하게 즐기는 든든한 한 끼','바쁘게 스쳐가는 하루하루에 제대로 끼니를 챙기는 일은 어렵게만 느껴집니다. 간편하게 건강한 한 끼를 드시고 싶은 분들을 위해 준비했습니다. 프리미엄 냉동 도시락 \'넉넉소반\'은 엄마의 마음으로 정성껏 잘 차린 집밥입니다. 엄선한 좋은 재료로 영양과 맛을 모두 잡은 도시락을 지금 바로 만나 보세요!','fdbcb83158ed4695bdaef135d80ab298.jpg',1,'샐러드보울'),(128,'자연 그대로의 향, 제주 감귤 아로마 오일','2023-06-02','2023-06-15',1000000,'아로마 테라피로 다시 태어난 못난이 감귤','농부들이 피땀 흘려 수확한 농산물 중 약 30%는 그대로 버려진다는 걸 알고 계시나요? 주로 모양이나 색이 규격에 맞지 않다는 이유만으로 못난이라 불리며 제 가치를 평가받지 못하고 있습니다. 이렇게 폐기된 농산물은 지구온난화의 원인 중 하나인 메탄가스를 만들어 환경에도 나쁜 영향을 줍니다. 널리 알려진 제주 감귤도 예외는 아니라 폐기율이 20%에 달한답니다. 그렇게 쓰레기가 될 뻔한 감귤이 아로마 테라피와 만나 새 생명을 얻었습니다!','e085b6e86c29479c86285ddfc4f0e6cf.jpg',4,'피스하나'),(129,'test','2023-06-02','2023-06-30',1000000,'마침내 단행본으로 만나는 <가비지타임>','안녕하세요. 네이버웹툰에서 <가비지타임>을 연재 중인 2사장입니다. 첫 작품 연재 4년 만에 드디어 첫 번째 펀딩으로 인사드리게 되었습니다. 단행본이 나온다는 것은 작가로서 항상 바라왔던 일이고, 독자님들도 원하던 것이기에 정말 행복합니다!','01607deb166245168dd92083e9389e1e.jpg',2,'네이버웹툰X가비지타임');
/*!40000 ALTER TABLE `funding_page_tb` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`%`*/ /*!50003 TRIGGER `funding_page_tb_BEFORE_DELETE` BEFORE DELETE ON `funding_page_tb` FOR EACH ROW BEGIN
	delete
    from
		reward_tb
	where
		funding_id = old.funding_id;
        
	delete
    from
		business_info_tb
	where
		funding_id = old.funding_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `giver_tb`
--

DROP TABLE IF EXISTS `giver_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `giver_tb` (
  `giver_id` int NOT NULL AUTO_INCREMENT,
  `giving_page_id` int NOT NULL,
  `user_id` int NOT NULL,
  `giving_total` int NOT NULL,
  `giving_date` date NOT NULL,
  PRIMARY KEY (`giver_id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `giver_tb`
--

LOCK TABLES `giver_tb` WRITE;
/*!40000 ALTER TABLE `giver_tb` DISABLE KEYS */;
INSERT INTO `giver_tb` VALUES (70,59,1,20000,'2023-06-02'),(71,58,1,999000,'2023-06-02'),(72,59,13,500000,'2023-06-03'),(73,59,12,10000,'2023-06-03'),(74,59,14,30000,'2023-06-03'),(75,57,1,332200,'2023-06-03'),(76,59,15,2000,'2023-06-03'),(77,59,12,1000,'2023-06-03'),(78,59,12,1000,'2023-06-04'),(79,58,18,1000000,'2023-06-05'),(80,59,12,10000,'2023-06-05'),(81,56,12,60000,'2023-06-07'),(82,55,12,812000,'2023-06-07'),(83,59,34,1000,'2023-06-07'),(85,59,33,1000000,'2023-06-15'),(86,40,35,10000,'2023-06-30'),(87,48,41,1000000,'2023-06-30'),(88,59,42,20000,'2023-06-30');
/*!40000 ALTER TABLE `giver_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `giving_category_tb`
--

DROP TABLE IF EXISTS `giving_category_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `giving_category_tb` (
  `giving_category_id` int NOT NULL AUTO_INCREMENT,
  `giving_category_name` varchar(45) NOT NULL,
  PRIMARY KEY (`giving_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `giving_category_tb`
--

LOCK TABLES `giving_category_tb` WRITE;
/*!40000 ALTER TABLE `giving_category_tb` DISABLE KEYS */;
INSERT INTO `giving_category_tb` VALUES (1,'아동'),(2,'노인'),(3,'장애인'),(4,'다문화'),(5,'환경');
/*!40000 ALTER TABLE `giving_category_tb` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `giving_page_tb`
--

DROP TABLE IF EXISTS `giving_page_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `giving_page_tb` (
  `giving_page_id` int NOT NULL AUTO_INCREMENT,
  `giving_name` varchar(45) NOT NULL,
  `register_date` date NOT NULL,
  `end_date` date NOT NULL,
  `goal_total` int NOT NULL,
  `story_title` varchar(999) NOT NULL,
  `story_content` text NOT NULL,
  `center_id` varchar(45) NOT NULL,
  `main_img_url` varchar(200) NOT NULL,
  `category_id` int DEFAULT NULL,
  PRIMARY KEY (`giving_page_id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `giving_page_tb`
--

LOCK TABLES `giving_page_tb` WRITE;
/*!40000 ALTER TABLE `giving_page_tb` DISABLE KEYS */;
INSERT INTO `giving_page_tb` VALUES (34,'하늘나라에도 어린이날이 있을까요?','2023-06-02','2023-06-06',7000000,'5월 가정의 달이면 점점 더 커지는 남편의 빈 자리','2019년 봄, 어린이날을 열흘 앞두고 정진이 씨의 남편이 쓰러졌습니다. 식사를 마치고 초등학생인 아들과 한창 이야기 중이던 남편의 몸이 돌연 굳어지더니 이내 의식을 잃었습니다. 급히 병원으로 이송 되었지만, 의료진은 \'뇌사\'가 추정된다며 마음을 준비를 하라는 이야기를 건넸습니다. \"남편이 평소 원하던 일이었어요. 정말 마음이 고운 사람이었거든요.\" 정진이 씨는 남편과의 고통스러운 이별 앞에서도 장기기증을 선택했고, 그 고귀한 결정으로 5명의 환자가 두 번째 삶의 기회를 얻었습니다. 사별 후, 아파할 겨를도 없이 생활 전선에 뛰어들어 어린 아이들을 홀로 키운 정진이 씨는 남편이 떠난 5월이 되면 마음 한구석에서 숨겨 놓았던 슬픔이 솟구칩니다.','58','33f3ad10d4b74570b0303f149a1b8a29.jpg',1),(38,'5월 5일 어린이날! 오늘만큼은 우리가 주인공이예요!','2023-06-02','2023-06-20',1980000,'어린이날, 생일만큼은 아이들이 주인공입니다.','아이들이 매년 꼭 저에게 하는 질문이 두가지가 있습니다.첫째는 \"선생님 저 내일 생일이예요\" 이고 두번째는 \"어린이날에 뭐해요?\"입니다. 그날 만큼은 센터에 있는 아이들이 주인공이기에 아이들은 그 날을 손꼽아 기대하며 특별함이 있기를 간절히 원해합니다. 뭔가 잘해서가 아니라 그냥 예쁜 어린이라는 이유 하나만으로 축하받고 축하하는 날이 어린이날입니다.그날만큼은 아이들이 주인공이여야 하는데.. 형편이 넉넉치 못한 아이들은 그날에 주인공이기보다는 혼자 있는 경우가 많이 있습니다. 단순히 학교를 하루 쉬는 날이 아니라, 너무 소중한 우리 아이들이 주인공이라는 이야기를 해주기 위해서 작고 소소한 행사를 해주고 싶습니다.','62','a0921636e94b4af9a85b3f2f8c755bd6.jpg',1),(39,'아기들의 분유가 모자랍니다. 도와주세요!','2023-06-02','2023-06-06',9900000,'생후 3개월에 입소하게 된 우지','누나, 형과 함께 일시보호소에 입소하게 된 우지(가명)는 태어난 지 3개월밖에 되지 않았습니다. 우지의 어머니는 심각한 산후 우울증으로 인해 아이 돌봄에 어려움을 겪게 되었고, 결국 4명의 아이들을 모두 일시보호소로 보낼 수밖에 없었습니다. 그중에서도 우지는 또래에 비해 유난히 작은 체구를 가지고 있었습니다. 그동안 수유를 충분히 받지 못한 우지의 건강 상태가 심히 걱정되는 상황이었습니다. 대부분 부모의 방임으로 인해 태어난 이후 제대로 된 수유를 받지 못한 아동들은 전반적으로 건강이 매우 좋지 않기 때문입니다.','63','8cbb60b364c64abca8b18548ea48c5a5.png',1),(40,'다리를 잃은 6.25 참전용사 어르신','2023-06-02','2023-08-23',9900000,'다리는 잃었지만 나라는 지켰습니다.','6.25전쟁 당시 고등학교 2학년이었던 이영수(90, 가명) 어르신은 학도병으로 참전하게 되었습니다. 입대하자마자 훈련은 고사하고 입고 있던 교복에 소총만 하나 달랑 받아 열심히 싸웠지만, 도중에 날아온 수류탄 파편으로 인해 오른쪽 다리에 큰 상처를 입게 되었습니다. “포탄이 다리에 박혔는데, 약을 못쓰니까 덮어 두고 계속 싸울 수밖에 없었지” 어르신께서는 그날의 기억이 생생한 듯 눈을 잠시 질끈 감으셨지만, 전쟁 참전은 후회하지 않는다며 문득 미소를 보이셨습니다.','64','ff9127ffe1c549b48ab22bc4b642475d.png',2),(41,'KBS 동행 제410화 현진이 아빠의 소원','2023-06-02','2023-06-02',20000000,'복합적인 장애가 있는 8살 현진이','돌이 지나도록 걷지도, 옹알이도 하지 못하던 현진이. 주위에서는 조금 늦는 아이들도 있으니 걱정 마라 얘기했지만, 현진이는 결국 뇌 병변 장애 판정을 받게 됐습니다. 그 후 정확한 치료를 위해 수많은 검사를 진행했지만, 뇌에 이상이나 특별한 원인을 찾을 수는 없었습니다. 현진이가 장애 판정을 받은 이후부터 현진이의 치료를 위해 쉴 새가 없던 엄마, 아빠. 그도 그럴 것이 현진이에게 조금씩 치료의 효과가 나타나고 있기 때문입니다. 스스로 서지도 못했던 현진이가 혼자서 걷기 시작하게 된 건 불과 2년 전. 아직 불안정한 걸음이긴 하지만, 선물 같은 기적을 만난 엄마, 아빠에겐 재활 치료가 유일한 희망입니다. 한 시간에 5~6만 원하는 재활치료. 치료 한 번이라도 더 받게 하기 위해선 남들만큼 자고, 남들처럼 쉴 수가 없다는 재황 씨 부부. 일을 하는 시간만큼 현진이의 치료 시간을 늘려줄 수 있다는 생각에 오늘도 부부의 1분 1초가 바쁘게 흘러갑니다.','65','8fa8bc287ade43d2820fdf394f4ef200.png',1),(43,'무더운 여름, 어르신들의 건강을 함께 지켜요.','2023-06-02','2023-06-01',2698000,'가만히 있어도 더운 여름철, 어르신들은 어찌 보내실까요?','매년마다 오는 여름이지만 더위는 익숙해지지 않습니다. 작년에도 찌는 듯한 더위로 여름을 힘들게 보냈었지만, 올해는 더욱 날씨가 더울 것으로 기상청에서 예상하고 있습니다. 이와 같이 피할 수 없는 더위를 어르신들께서는 아무런 준비 없이 힘겹게 보내실 생각을 하니 막막하기만 합니다. 김O자 어르신은 \"작년 여름에 어찌나 더웠던지 민소매만 입고 있었는데도 땀이 나서 기운이 하나도 없었다니까\" 라고 말씀하시며 올 여름은 어찌 보낼지 걱정뿐이십니다.','67','28775a58ca184817a50a32ce5e0cce1b.jpg',2),(44,'영원히 함께할 것만 같던 엄마가 우리 곁을 떠났습니다.','2023-06-02','2023-06-06',9800000,'든든한 울타리가 사라진 삼 남매의 현실','지난 4월, 삼 남매의 든든한 울타리였던 김ㅇㅇ 어머니가 갑작스런 심장마비로 세상을 떠났습니다. 사망 2주 전부터 지속적으로 심장 부근의 고통을 호소했지만 경제적 어려움으로 인해 제대로 된 진료 한 번 받지 못한 김ㅇㅇ 어머니는 눈에 넣어도 아프지 않을 삼 남매를 남겨두고 집에서 눈을 감으셨습니다.\r\n\r\n삼 남매는 어제까지만 해도 함께 웃고 떠들던 엄마가 하루아침에 갑작스레 돌아가셨다는 사실이 아직 믿기지 않습니다. 엄마한테 제대로 된 효도 한번 해 드리지 못했는데, 이젠 그럴 기회조차 없다며 눈물을 흘리는 삼 남매를 보며 마음이 한 켠이 아려옵니다.','68','c58d718ed601434a976af624c7b9b8d6.jpg',1),(45,'중증 장애인의 시원한 여름나기를 함께해주세요.','2023-06-02','2023-06-08',5000000,'올해도 뜨거운 여름, 치솟는 전기요금','벌써부터 한낮의 햇볕은 땀방울을 맺히게 합니다. 갑자기 더워진 날씨에 올해 여름도 여느 해와 마찬가지로 폭염이 지속될 예정이라고 합니다. 본격적인 여름이 시작하지도 않았지만 벌써부터 걱정되는 게 있습니다. 바로 전기요금 인상입니다. 평화의집은 건물 내에서 37명이 살고 있고, 지역사회 체험홈 아파트 4개소에서 12명이 살고 있습니다. 비장애인에 비해 면역력이 약한 입주 장애인의 건강을 위해 적정온도를 유지하고자 냉방기를 많이 사용합니다. 올해 초 전기요금이 9.5% 인상되었는데 이어 2분기에는 다시 5.3% 인상된다고 합니다. 작년 기준 6~8월 전기요금만 800만원정도 나와 중증 장애인의 여름나기가 너무 버거웠습니다. 단순히 인상률 퍼센트만 적용해도 올해는 1,000만원에 가까운 비용이 청구될 것으로 예상되어 여름이 시작되기도 전부터 전기요금 등 공공요금을 내야 될 생각에 벌써부터 앞이 막막하기만 합니다.','69','356036dc9b28449c845cd238194ba576.jpg',3),(46,'매주 수요일, 시원한 생수로 쪽방촌의 여름을 지켜주세요','2023-06-02','2023-06-15',9900000,'바람 한점 없는 1평 쪽방, 여름은 그 자체로 위협입니다','세계기상기구(WMO)가 전 세계 기온이 향후 5년 내 사상 최고 수준에 달할 것으로 전망하고 있습니다. 우리나라도 그 영향은 피해 갈 수 없습니다. 때 이른 폭염 예보가 이어지는 가운데 도움이 절실한 곳이 있습니다. 1평 남짓한 좁은 공간으로 이루어진 ‘쪽방촌’입니다. 쪽방은 대낮에도 바람 한 점, 빛 한줄기 들어오지 않아 어둡고 습한 환경입니다. 이곳에서 살아가는 어르신들에게 더위는 생존을 위협할 만큼 심각한 위협이자 어려움입니다.','70','698cc3fb77ae4f59940c073f28d850c0.jpg',1),(47,'몸이 비대칭으로 자라고 있는 준호를 도와주세요!','2023-06-02','2023-08-20',9900000,'몸이 비대칭으로 자라고 있는 준호.','40이 넘은 나이에 찾아온 선물 같은 아이 준호(가명, 5세). 출산 이틀 후 산소포화도가 떨어지고 뇌출혈이 발견되어 신생아 집중치료실에서 10일간 입원치료를 해야 했습니다. 퇴원한지 몇 개월 되지 않아 준호의 다리가 비대칭으로 자라는 것이 발견되어 다시 병원을 찾았고, *특발성 편측비대증을 진단받았습니다.\r\n*특발성 편측비대증: 특정한 원인 없이 발생하는 신체의 좌, 우 비대칭\r\n\r\n준호는 좌우 운동능력이 다르고 다리 길이도 차이가 나 걸을 때 기우뚱하거나 자주 넘어집니다. 다리 길이의 차이는 보행에 문제가 될 뿐만 아니라 신체의 균형에도 영향을 미쳐 척추가 틀어질 수 있기에 치료가 필요합니다. 현재는 골반 및 척구 교정치료를 받고 있으며 보장구를 착용하고 생활하고 있습니다. 실내에서도 보장구를 착용해야 하지만, 보장구 비용이 부담되어 외출용만 사용하고 있습니다.','71','a5dbbe1a0aaa4959aa18f3be9d465766.jpg',1),(48,'학교폭력 피해 아이들의 마지막 학교를 지켜주세요.','2023-06-02','2023-07-01',5000000,'학교폭력 피해 아이들의 유일한 마지막 학교에 찾아온 위기','마이코즈학교는 학교폭력 피해로 학교에 다니기 어려운 아이들이 본 학교를 대신해서 교육을 받고 학교폭력으로 생긴 상처들을 치유해서 다시 학교로 돌아가거나 학업을 이어갈 수 있도록 도와주는 마지막 대안학교입니다. 학교폭력을 피해 온 마지막 학교에서 아이들은 매일 수업을 듣고 상담을 받고 치료를 받으며 다시 학교를 돌아갈 날을 그리고 당당히 졸업장을 받을 날을 꿈꾸고 있습니다. 하지만 아이들의 바람과 달리 열악한 재정으로 아이들의 마지막 학교는 곧 문을 닫을 위기에 처해 있습니다.','72','c5de17c6fd9646dc9de1a5c3d5261c24.jpg',1),(50,'위기에 처한 산양과 하늘다람쥐를 지켜주세요!','2023-06-02','2023-06-09',9600000,'멸종위기 동식물이 살아가는 공간','사향노루와 산양, 하늘다람쥐와 반달가슴곰이 살고 있는 우리 푸른 숲이 사라지고 있습니다. 환경부는 설악산 국립공원에 오색 케이블카 건설을 \'조건부 동의\'하며 설악산에 살아가는 수많은 야생동물 터전의 파괴를 승인했습니다. 설악산에 케이블카 건설 사업 허가가 떨어지자 마자 지리산, 무등산 등에서도 케이블카, 산악열차 등 온갖 생태계 파괴 사업이 고개를 들고 있습니다. 8개의 국제공항과 7개의 국내공항이 있는 우리나라에 향후 10개의 공항 건설을 목표로 하고 있습니다. 최상위 보호구역은 케이블카와 산악열차로 몸살을 앓고 있습니다. 모두 생태적 가치가 높고 멸종위기 동식물이 살아가는 공간입니다.','74','15bf27c206ff45cab04c7a6abf27c5b3.png',5),(51,'삼복더위에 삼복을 선물해주세요','2023-06-02','2023-06-02',7137000,'여름에는 입맛이 없습니다.','최근 척추협착증 수술을 하신 신영순(가명,82세) 어르신은 수술 이후 체력이 많이 떨어졌습니다. 거동이 불편한 어르신에게 매 끼니 식사를 챙겨 먹는 것은 여간 어려운 일이 아닙니다. 다가오는 여름이 어르신에게는 큰 걱정입니다. 여름이면 더운 집안 공기로 가뜩이나 없는 입맛이 더 떨어지기 때문입니다. 더운 여름 삼계탕 한 그릇은 어르신의 입맛을 돋우는데 큰 힘이 됩니다.','75','f1cb8e4d77bf4f25a0cec17fb46e4cfb.jpg',2),(52,'6평 여섯 식구의 하루','2023-06-02','2023-06-04',20000000,'아빠는 왜 우리랑 같이 안 자?','긴 복도 끝에 위치한 6평 원룸. 한두 명이 생활하기에도 비좁은 공간이지만, 이곳은 여섯 명의 가족이 함께 사는 곳입니다. 작년 여름, 가정 형편이 어려워지면서 아빠 혼자서 잠만 자던 원룸에서 여섯 식구가 살게 되었습니다. 화장실은 온 가족이 사용하기에 좁아 싱크대에서 양치와 세안을 해결하고 있습니다. 싱크대 옆에는 식기류가 아닌 세면도구가 놓여있습니다.\r\n원룸에서 6명이 자려니 다리를 마음껏 뻗지 못해 아이들에게 너무 미안하다는 아빠. 저번달까지 정육점에서 근무했던 아빠는 건강 악화로 일자리를 잃게 되었습니다. “제가 건강이 안 좋아져서... 일자리까지 잃게 되니 생활이 더 힘들어졌어요. 아이들에게 제대로 된 밥 한 끼도 못 해줘서 미안한 마음뿐이죠.” 아빠는 눈시울을 붉히며 말합니다. 좁은 원룸에서 여섯 식구가 함께 잠들기가 어려워 밤마다 아빠는 아이들이 몸을 웅크리고 잠자리에 들면 혼자 집을 나와 차 안에서 잠을 청합니다.','76','dcdb48ccf0704d59a54fe88add2e2e47.jpg',1),(54,'결혼이주여성들에게 함께하는 추억을 선물해주세요.','2023-06-02','2023-06-07',3000000,'“한국에 온지 30년이 훌쩍 넘었지만 아직도 마음에는 고향에 대한 그리움이 가득하죠.”','이주여성 아스카(가명)씨는 한국 남편을 만나 어느덧 한국에서의 30년이 훌쩍 넘는 삶을 보내고 있습니다. 예상치 못했던 코로나19의 장기화로 고향에 있는 가족들을 보고 싶어도 발이 묶여 갈 수 없는 상황으로 하루하루 보냈습니다. 큰아들을 일본 대학으로 보내고 하루하루 자신의 가족에 대한 그리움을 안고 살아가는 아스카(가명)씨는 오늘도 고향으로 갈 수 있는 날을 손꼽아 기다리고 있습니다.\r\n\r\n이주여성들의 마음 속 싶은 한 켠에는 고향에 대한 그리움을 가지고 있습니다. 그래서 이주여성들에게 서로의 고민을 나누고 함께 공감해줄 수 있는 모임이 필요했습니다. 이에 관심이 있고 해보고 싶은 취미 활동을 함께 모여서 할 수 있는 기회를 마련하고자 매월 둘째 주, 넷째 주 이주여성들의 자조모임을 진행하고 있습니다.','78','348c3dc5ecdb414d8bcac04ceec793a9.jpg',4),(55,'탈북민 자녀들이 농촌봉사로 이웃을 돕게 응원해주세요','2023-06-02','2023-06-22',9900000,'탈북민 자녀들이 농촌에 가서 손에 흙을 묻히고 땀을 흘릴 기회를 주려고 합니다','혜영이 (가명)는 올해 2월 탈북청소년 학교를 졸업하고 새내기 대학생이 되었습니다. 북한 량강도 혜산이 고향인 스물네 살 혜영이는 대안학교를 다니면서 검정고시 공부 외에도 많은 다양한 경험을 했습니다. 그 중에서도 가장 기억에 남는 일은 작년 봄에 갔던 농촌봉사활동입니다. 장애인과 노숙자, 알콜 중독자를 돕는 경북 문경의 한 사과농장에 가서 사과꽃 솎아주기를 했습니다. 빠알간 사과만 고운 줄 알았지, 하얀 사과꽃이 그렇게 예쁜지는 몰랐습니다. 4인1조가 사과나무 다섯 그루씩을 맡아 사과꽃을 솎아주는데 허리도 아프고 땀도 났습니다. 모두 40명이 가서 1박2일을 봉사했지만, 아직도 꽃을 솎아주어야 할 사과나무가 끝이 안 보일 정도로 많이 남아 있었습니다. 이틀 동안 네 끼 식사를 배추 겉절이와 소시지볶음, 된장찌개로만 먹었는데도 밥맛이 꿀맛이었습니다. 작년 12월초에는 제주 청년감귤농장에 가서 감귤 따기와 다듬기 봉사를 하였습니다. 농촌봉사활동은 이제 남북사랑학교의 전통이 되었습니다.','79','31e6f693f23f4ee08eda2372d223f612.jpg',4),(56,'언어장벽없는 우리 사회, 한국어교육은 사랑을 싣고...','2023-06-02','2023-06-10',1000000,'한국어가 서툰 아비앙 씨는 늘 불안합니다','회사, 식당, 지하철, 길거리… 외국인 노동자 아비앙(가명)씨의 주변에는 온통 모르는 글자들 뿐입니다. 낯선 계약서에 싸인을 할 때, 누군가 빠르게 말을 걸 때, 음식을 주문할 때조차 아비앙 씨는 혹시 모를 차별과 불이익이 걱정되어 마음을 놓을 수가 없습니다. 한국어를 배우고 싶지만, 직장 생활을 하다 보니 주중에 따로 시간을 내기가 힘들어 학원 등록조차 힘든 상황입니다.','80','ec5912c3093c4ac9903fbbc0819f5b6a.png',4),(57,'꿀벌의 안전한 서식처인 꿀벌정원을 건강하게 지켜요!','2023-06-02','2023-06-09',9900000,'꿀벌 실종사태!','작년에 이어 올해도 꿀벌은 여전히 실종 상태입니다. 집을 나간 꿀벌이 돌아오지 않아 수많은 양봉농가가 위기에 처했다는 기사가 쏟아져나오고 있습니다. 꿀벌이 집단 실종되고 폐사되는 가장 큰 원인으로 꼽히는 것은 지구온난화로 인한 이상기후 현상입니다. 심각한 기후변화로 인해 온도에 민감한 꿀벌 면역체계가 무너지고, 꽃의 개화시기가 종잡을 수 없게되며 벌들이 활동을 시작하는 시기에 정작 먹을 것이 없는 일이 빈번해지고 있습니다. 실제로 올해 벚꽃 개화시기는 지난해보다 2주나 더 빨랐으며, 역대 2번째로 빠른 기록입니다. 일찍 핀 봄꽃은 벌 뿐만이 아니라 수많은 곤충, 그리고 이와 연결된 모든 생태계를 혼란스럽게 만듭니다.','81','bb065339a60347bcb1ab12cfd38786ac.png',5),(58,'바다식목일, 바다 쓰레기를 없애주세요!','2023-06-02','2023-06-25',9900000,'바다식목일에 대해 들어보셨나요?','5월 10일은 바다식목일입니다. 땅에 나무를 심는 식목일과 다르게, 바다식목일은 바다 깊은 곳에 살아가는 해조류를 심는 날이에요. 해조류는 지구에서 가장 큰 탄소 배출구인 바다 내에서 중요한 역할을 하고 있어요. 전복, 소라 등의 많은 해양 생물들의 먹이 자원이 되기도 하고, 어류가 알을 낳고 자라는 장소 등이 되기도 하며 바다 생태계에서 빼놓을 수 없는 구성원이죠. 최근 기후변화와 더불어 늘어나고 있는 해양 쓰레기로 인해 바닷속 해조류가 자취를 감추고 있습니다. 환경재단은 해조류가 살아갈 수 있는 깨끗한 바다를 위해 바다 밑 쓰레기 수거를 진행하려고 해요.','82','f4c7dc2b952349378dcf46e23973c927.jpg',5),(59,'test','2023-06-02','2023-07-31',6000000,'중학교 2학년, 갑작스럽 희귀난치병과 장애를 갖게 되었습니다.','운동실조증이라는 병을 들어본 적이 있으신가요? 뇌나 척수의 고장으로 움직이려 할 때 근육이 조화를 이루지 못해 기능을 다하지 못하는 병입니다. 192cm에 건장한 청소년이었던 하준(가명)이가 갑작스럽게 진단 받게 된 희귀병입니다. 7년 전 학교에서 낙상사고가 있었습니다. 당시에는 정형외과로 가서 갈비뼈 타박상 주사를 맞고 귀가하였으나 이후에 계속되는 구토 증상과 어지럼증으로 여러 병원을 옮겨 다니며 각종 검사를 하였고 소아신경과와 소아재활의학과의 협진으로 사고 3개월 만에 외상성 뇌손상으로 인한 운동실조증 진단을 받고 뇌병변 1급 장애판정을 받았습니다. 영구 장애를 안고 평생 살아가야 하기에 하준이에게는 지금까지 꿈꿔왔던 장래희망과 그려왔던 미래는 모두 사라지고 절망 속에서 살아가고 있습니다.','83','ae148666a6f14171a51d332342b28a1b.jpg',3);
/*!40000 ALTER TABLE `giving_page_tb` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`%`*/ /*!50003 TRIGGER `giving_page_tb_BEFORE_DELETE` BEFORE DELETE ON `giving_page_tb` FOR EACH ROW BEGIN
	delete
    from
		giver_tb
	where
		giving_page_id = old.giving_page_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

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

--
-- Table structure for table `role_tb`
--

DROP TABLE IF EXISTS `role_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_tb` (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `role_name` varchar(45) NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_tb`
--

LOCK TABLES `role_tb` WRITE;
/*!40000 ALTER TABLE `role_tb` DISABLE KEYS */;
INSERT INTO `role_tb` VALUES (1,'ROLE_USER'),(2,'ROLE_ADMIN');
/*!40000 ALTER TABLE `role_tb` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Dumping events for database 'unicef'
--

--
-- Dumping routines for database 'unicef'
--
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-21  9:33:31
