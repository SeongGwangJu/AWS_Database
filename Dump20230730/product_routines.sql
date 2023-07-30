-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: product
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
-- Dumping events for database 'product'
--

--
-- Dumping routines for database 'product'
--
/*!50003 DROP PROCEDURE IF EXISTS `p_insert_product` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_insert_product`(
in vs_product_name varchar(50),
in vn_product_price int,
in vs_color_name varchar(20),
in vs_category_name varchar(20)
)
BEGIN
	declare _color_id int;
    declare _category_id int;
    
    # _를 앞에 붙인건 변수고
    # vs/vn은 매개변수다
    select
		color_id into _color_id
	from
		color_tb
	where
		color_name = vs_color_name;
        
	select
		category_id into _category_id
	from
		category_tb
	where
		category_name = vs_category_name;
        
        #null인 경우 0으로 바꾼 후 가져온다
	if ifnull(_color_id, 0) > 0
		and ifnull(_category_id, 0) > 0
		then 
			insert into product_tb
				values(
					0,
                    vs_product_name,
                    vn_product_price,
                    _color_id,
                    _category_id
                    );
	end if;
                    
        
        
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_select_product` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_select_product`(
	in vs_searchOption VARCHAR(20),
    in vs_searchValue varchar(100)
)
BEGIN
	select
		pt.product_id,
        pt.product_name,
        pt.product_price,
        pt.color_id,
        cot.color_name,
        pt.category_id,
        cat.category_name
	from
		product_tb pt
        left outer join color_tb cot on(cot.color_id = pt.color_id)
        left outer join category_tb cat on(cat.category_id = pt.category_id)
	where (
			vs_searchOption = '전체'
			and (
				pt.product_name like concat('%', vs_searchValue, '%')
				or cot.color_name like concat('%', vs_searchValue, '%') 
				or cat.category_name like concat('%', vs_searchValue, '%')
                )
			)
		or (
			vs_searchOption = '상품명'
			and pt.product_name like concat('%', vs_searchValue, '%')
            )
		or (
			vs_searchOption = '색상'
			and cot.color_name like concat('%', vs_searchValue, '%')
            )
		or (
			vs_searchOption = '카테고리'
			and cat.category_name like concat('%', vs_searchValue, '%')
            );
		
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_update_product` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_update_product`(
in vn_product_id int,
in vs_product_name varchar(50),
in vn_product_price int,
in vs_color_name varchar(20),
in vs_category_name varchar(20)
)
BEGIN
	declare _color_id int;
    declare _category_id int;
    
    #
    select
		color_id into _color_id
	from
		color_tb
	where
		color_name = vs_color_name;
	

    # _를 앞에 붙인건 변수고
    # vs/vn은 매개변수다
	select
		category_id into _category_id
	from
		category_tb
	where
		category_name = vs_category_name;
        
        #null인 경우 0으로 바꾼 후 가져온다
	if ifnull(_color_id, 0) > 0
		and ifnull(_category_id, 0) > 0
		then 
			update product_tb
            set product_name = vs_product_name,
				product_price = vn_product_price,
                color_id = _color_id,
                category_id = _category_id
			where
				product_id = vn_product_id;
                
	end if;
END ;;
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

-- Dump completed on 2023-07-30 17:52:15
