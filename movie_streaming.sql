-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: localhost    Database: new_schema
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

--
-- Table structure for table `movie_streaming`
--

DROP TABLE IF EXISTS `movie_streaming`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_streaming` (
  `id` int NOT NULL,
  `date` varchar(45) DEFAULT NULL,
  `movie` varchar(45) DEFAULT NULL,
  `director` varchar(45) DEFAULT NULL,
  `number_of_streams` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_streaming`
--

LOCK TABLES `movie_streaming` WRITE;
/*!40000 ALTER TABLE `movie_streaming` DISABLE KEYS */;
INSERT INTO `movie_streaming` VALUES (1,'2022-04-01','Fargo','Coen brothers',43),(2,'2022-04-01','	The Big Lebowski','Coen brothers',434),(3,'2022-04-02','No Country for Old Men','Coen brothers',423),(4,'2022-04-01','l,iul	Dogtooth','Yorgos Lanthimos',56),(5,'2022-04-01','The Lobster','Yorgos Lanthimos',67),(6,'2022-04-01','The Killing of a Sacred Deer','Yorgos Lanthimos',65),(7,'2022-04-01','Fargo','Coen brothers',54),(8,'2022-04-01','The Big Lebowski','Coen brothers',434),(9,'2022-04-01','No Country for Old Men','Coen brothers',43),(10,'2022-04-01','Dogtooth','Coen brothers',43),(11,'2022-04-01','The Lobster','Coen brothers',65),(12,'2022-04-01','The Killing of a Sacred Deer','Coen brothers',89),(13,'2022-04-01','fnjgnj','Coen brothers',23),(14,'2022-04-01','m ghm','Yorgos Lanthimos',32),(15,'2022-04-01','myhg','Yorgos Lanthimos',90),(16,'2022-04-01','myhgtmygt','Yorgos Lanthimos',73);
/*!40000 ALTER TABLE `movie_streaming` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


