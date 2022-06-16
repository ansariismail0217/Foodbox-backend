-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: foodbox_app
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `cook_time` varchar(255) DEFAULT NULL,
  `unit_price` decimal(8,2) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `rating` float(2,1) DEFAULT NULL,
  `category_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_category` (`category_id`),
  CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Dal Makhani','15 mins',19.00,'assets/images/products/food-1.jpg',4.0,1),(2,'Dosa','5-10 mins',12.00,'assets/images/products/food-2.jpg',4.0,1),(3,'Gajar Halwa','5-10 mins',15.00,'assets/images/products/food-3.jpg',4.5,1),(4,'Paneer Tikka','10 mins',12.00,'assets/images/products/food-4.jpg',4.5,1),(5,'Butter Chicken','20 mins',30.00,'assets/images/products/food-5.jpg',5.0,1),(6,'Samosa 4 pc.','5-10 mins',10.00,'assets/images/products/food-6.jpg',5.0,1),(7,'Hyderabadi Biryani','15-20 mins',35.00,'assets/images/products/food-7.jpg',5.0,1),(8,'South Indian Thali','15-20 mins',30.00,'assets/images/products/food-8.jpg',3.5,1),(10,'Curry Prawns with Rice','15 mins',38.00,'assets/images/products/food-9.jpg',4.0,2),(11,'Chinese noodle soup','10 mins',10.00,'assets/images/products/food-10.jpg',3.5,2),(12,'Shrimp Salad','10-15 mins',19.00,'assets/images/products/food-11.jpg',3.5,2),(13,'Stewed Beef','10-15 mins',22.00,'assets/images/products/food-12.jpg',3.0,2),(14,'Sawteed Prawns','15-20 mins',25.00,'assets/images/products/food-13.jpg',3.0,2),(15,'Steamed Buns','5-7 mins',10.00,'assets/images/products/food-14.jpg',4.0,2),(16,'Kung Pao Paneer','10-12 mins',20.00,'assets/images/products/food-15.jpg',4.0,2),(17,'Chilli Chicken','20 mins',28.00,'assets/images/products/food-16.jpg',4.5,2),(18,'Skewers Kebab','20 mins',23.00,'assets/images/products/food-17.jpg',4.5,3),(19,'Garden Mix Salad','5 mins',10.00,'assets/images/products/food-18.jpg',3.5,3),(20,'Shakshuka with Bread','15 mins',10.00,'assets/images/products/food-19.jpg',4.0,3),(21,'Organic Dates','0 mins',15.00,'assets/images/products/food-20.jpg',5.0,3),(22,'Desert Baklava','10 mins',18.00,'assets/images/products/food-21.jpg',3.5,3),(23,'Chicken Kapsa','15-20 mins',18.00,'assets/images/products/food-22.jpg',4.0,3),(24,'Lebanese Cookies','5-7 mins',12.00,'assets/images/products/food-23.jpg',4.0,3),(25,'Shawarama','5-10 mins',10.00,'assets/images/products/food-24.jpg',5.0,3);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_category`
--

DROP TABLE IF EXISTS `product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_category`
--

LOCK TABLES `product_category` WRITE;
/*!40000 ALTER TABLE `product_category` DISABLE KEYS */;
INSERT INTO `product_category` VALUES (1,'Indian'),(2,'Chinese'),(3,'Arabic');
/*!40000 ALTER TABLE `product_category` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-14 12:56:26
