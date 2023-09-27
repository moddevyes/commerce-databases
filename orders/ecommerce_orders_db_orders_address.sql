CREATE DATABASE  IF NOT EXISTS `ecommerce_orders_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ecommerce_orders_db`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: ecommerce_orders_db
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
-- Table structure for table `orders_address`
--

DROP TABLE IF EXISTS `orders_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders_address` (
  `is_shipping_address` bit(1) NOT NULL,
  `state` varchar(2) NOT NULL DEFAULT '',
  `created_dt` datetime(6) DEFAULT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `updated_dt` datetime(6) DEFAULT NULL,
  `postal_code` varchar(10) NOT NULL DEFAULT '',
  `address1` varchar(200) NOT NULL DEFAULT '',
  `address2` varchar(200) DEFAULT '',
  `city` varchar(200) NOT NULL DEFAULT '',
  `country` varchar(100) NOT NULL DEFAULT '',
  `province` varchar(200) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_address`
--

LOCK TABLES `orders_address` WRITE;
/*!40000 ALTER TABLE `orders_address` DISABLE KEYS */;
INSERT INTO `orders_address` VALUES (_binary '\0','FL','2023-09-06 20:34:39.237721',1,'2023-09-06 20:34:39.237721','33000','100','','Food Forest City','US',''),(_binary '\0','FL','2023-09-06 20:34:39.249977',2,'2023-09-06 20:34:39.249977','33000','100','','Food Forest City','US',''),(_binary '\0','FL','2023-09-14 13:49:06.204149',10,'2023-09-14 13:49:06.204149','33000','100','','Food Forest City','US',''),(_binary '\0','FL','2023-09-14 13:49:06.208148',11,'2023-09-14 13:49:06.208148','33000','100','','Food Forest City','US',''),(_binary '','FL','2023-09-14 22:00:39.377536',18,'2023-09-14 22:00:39.377536','33000','100 Nice Waves Drive','','Nice Waves City','US','Waves Province'),(_binary '\0','FL','2023-09-14 22:00:39.380529',19,'2023-09-14 22:00:39.381534','33000','100 Nice Waves Drive','','Nice Waves City','US','Waves Province'),(_binary '','FL','2023-09-14 22:00:49.762781',20,'2023-09-14 22:00:49.762781','33000','100 Nice Waves Drive','','Nice Waves City','US','Waves Province'),(_binary '\0','FL','2023-09-14 22:00:49.766930',21,'2023-09-14 22:00:49.766930','33000','100 Nice Waves Drive','','Nice Waves City','US','Waves Province');
/*!40000 ALTER TABLE `orders_address` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-27  8:34:02
