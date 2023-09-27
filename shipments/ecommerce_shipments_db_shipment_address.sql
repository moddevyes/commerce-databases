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
-- Table structure for table `shipment_address`
--

DROP TABLE IF EXISTS `shipment_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipment_address` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address1` varchar(200) NOT NULL,
  `address2` varchar(200) DEFAULT '',
  `city` varchar(200) NOT NULL,
  `state` varchar(2) NOT NULL,
  `province` varchar(200) DEFAULT '',
  `postal_code` varchar(10) NOT NULL,
  `country` varchar(100) NOT NULL,
  `created_dt` datetime DEFAULT NULL,
  `updated_dt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipment_address`
--

LOCK TABLES `shipment_address` WRITE;
/*!40000 ALTER TABLE `shipment_address` DISABLE KEYS */;
INSERT INTO `shipment_address` VALUES (1,'1001 Shipment Effencient Drive','Suite 1001','Shipment Zone City','FL','Fast OnTime Province','33000','US','2023-09-08 02:25:36','2023-09-08 02:25:36'),(2,'1001 Shipment Effencient Drive','Suite 1001','Shipment Zone City','FL','Fast OnTime Province','33000','US','2023-09-08 02:25:36','2023-09-08 02:25:36'),(3,'1001 Shipment Effencient Drive','Suite 1001','Shipment Zone City','FL','Fast OnTime Province','33000','US','2023-09-08 02:25:43','2023-09-08 02:25:43'),(4,'1001 Shipment Effencient Drive','Suite 1001','Shipment Zone City','FL','Fast OnTime Province','33000','US','2023-09-08 02:25:43','2023-09-08 02:25:43'),(5,'1001 Shipment Effencient Drive','Suite 1001','Shipment Zone City','FL','Fast OnTime Province','33000','US','2023-09-08 02:25:44','2023-09-08 02:25:44'),(6,'1001 Shipment Effencient Drive','Suite 1001','Shipment Zone City','FL','Fast OnTime Province','33000','US','2023-09-08 02:25:44','2023-09-08 02:25:44'),(7,'1001 Shipment Effencient Drive','Suite 1001','Shipment Zone City','FL','Fast OnTime Province','33000','US','2023-09-08 02:25:45','2023-09-08 02:25:45'),(8,'1001 Shipment Effencient Drive','Suite 1001','Shipment Zone City','FL','Fast OnTime Province','33000','US','2023-09-08 02:25:45','2023-09-08 02:25:45'),(9,'1001 Shipment Effencient Drive','Suite 1001','Shipment Zone City','FL','Fast OnTime Province','33000','US','2023-09-08 02:25:46','2023-09-08 02:25:46'),(10,'1001 Shipment Effencient UPDATE ME','Suite 1001','Shipment Zone City','FL','Fast OnTime Province','33000','US','2023-09-08 02:25:46','2023-09-08 15:21:06'),(13,'1001 Shipment Effencient Drive','Suite 1001','Shipment Zone City','FL','Fast OnTime Province','33000','US','2023-09-08 15:01:31','2023-09-08 15:20:32'),(14,'1001 Shipment Effencient Drive','Suite 1001','Shipment Zone City','FL','Fast OnTime Province','33000','US','2023-09-08 15:01:31','2023-09-08 15:20:32');
/*!40000 ALTER TABLE `shipment_address` ENABLE KEYS */;
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
