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
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `total_price` decimal(38,2) DEFAULT '0.00',
  `created_dt` datetime(6) DEFAULT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `order_date` datetime(6) NOT NULL,
  `orders_account_id` bigint DEFAULT NULL,
  `orders_shipping_address_id` bigint DEFAULT NULL,
  `updated_dt` datetime(6) DEFAULT NULL,
  `order_number` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_facafmsdjis54fumvjed88yvu` (`orders_account_id`),
  UNIQUE KEY `UK_poyi7irlwb6a8xoqmeyi80tam` (`orders_shipping_address_id`),
  CONSTRAINT `FKpv2wsbgdlf05tcymwhhld5ikj` FOREIGN KEY (`orders_shipping_address_id`) REFERENCES `orders_address` (`id`),
  CONSTRAINT `FKsr8i3b6omt0pwx7j828271ld3` FOREIGN KEY (`orders_account_id`) REFERENCES `orders_account` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (NULL,'2023-09-14 13:49:06.210203',4,'2023-09-06 20:32:43.942667',9,11,'2023-09-14 13:49:06.210203','ord-77005bfd-2793-4580-84b5-705cc8ccf338'),(NULL,'2023-09-14 22:00:39.395582',8,'2023-09-06 18:13:02.285269',13,19,'2023-09-14 22:00:39.395582','ord-615ad72b-0d6a-4617-b099-65138fun1813'),(NULL,'2023-09-14 22:00:49.777808',9,'2023-09-06 18:13:02.285269',14,21,'2023-09-14 22:00:49.777808','ord-615ad72b-0d6a-4617-b099-65138fun1813');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
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
