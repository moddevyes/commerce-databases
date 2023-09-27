CREATE DATABASE  IF NOT EXISTS `ecommerce_shipments_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ecommerce_shipments_db`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: ecommerce_shipments_db
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
-- Table structure for table `shipments`
--

DROP TABLE IF EXISTS `shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipments` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `shipment_address_id` bigint NOT NULL,
  `shipment_account_id` bigint NOT NULL,
  `created_dt` datetime DEFAULT NULL,
  `updated_dt` datetime DEFAULT NULL,
  `value_for_shipped_date` datetime DEFAULT NULL,
  `value_for_delivery_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_SHIPMENTS_ON_SHIPMENTACCOUNT` (`shipment_account_id`),
  KEY `FK_SHIPMENTS_ON_SHIPMENTADDRESS` (`shipment_address_id`),
  CONSTRAINT `FK_SHIPMENTS_ON_SHIPMENTACCOUNT` FOREIGN KEY (`shipment_account_id`) REFERENCES `shipment_account` (`id`),
  CONSTRAINT `FK_SHIPMENTS_ON_SHIPMENTADDRESS` FOREIGN KEY (`shipment_address_id`) REFERENCES `shipment_address` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipments`
--

LOCK TABLES `shipments` WRITE;
/*!40000 ALTER TABLE `shipments` DISABLE KEYS */;
INSERT INTO `shipments` VALUES (1,2,1,'2023-09-08 02:25:36','2023-09-08 02:25:36','2023-09-07 21:05:44','2023-09-07 21:05:44'),(2,4,2,'2023-09-08 02:25:43','2023-09-08 02:25:43','2023-09-07 21:05:44','2023-09-07 21:05:44'),(3,6,3,'2023-09-08 02:25:44','2023-09-08 02:25:44','2023-09-07 21:05:44','2023-09-07 21:05:44'),(4,8,4,'2023-09-08 02:25:45','2023-09-08 02:25:45','2023-09-07 21:05:44','2023-09-07 21:05:44'),(5,10,5,'2023-09-08 02:25:46','2023-09-08 15:21:06',NULL,NULL),(7,14,7,'2023-09-08 15:01:31','2023-09-08 15:20:32','2023-09-07 21:05:44','2023-09-07 21:05:44');
/*!40000 ALTER TABLE `shipments` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-27  8:34:00
