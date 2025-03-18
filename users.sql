-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: financetracker
-- ------------------------------------------------------
-- Server version	8.0.41

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `UserID` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Password` varchar(150) NOT NULL,
  `CreatedAt` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'John','Doe','john.doe@example.com','pass1','2025-03-08 15:27:41'),(2,'Jane','Smith','jane.smith@example.com','pass2','2025-03-08 15:27:41'),(3,'Alice','Johnson','alice.johnson@example.com','pass3','2025-03-08 15:27:41'),(4,'Bob','Williams','bob.williams@example.com','pass4','2025-03-08 15:27:41'),(5,'Charlie','Brown','charlie.brown@example.com','pass5','2025-03-08 15:27:41'),(6,'Daisy','Miller','daisy.miller@example.com','pass6','2025-03-08 15:27:41'),(7,'Ethan','Davis','ethan.davis@example.com','pass7','2025-03-08 15:27:41'),(8,'Fiona','Garcia','fiona.garcia@example.com','pass8','2025-03-08 15:27:41'),(9,'George','Martinez','george.martinez@example.com','pass9','2025-03-08 15:27:41'),(10,'Hannah','Rodriguez','hannah.rodriguez@example.com','pass10','2025-03-08 15:27:41'),(11,'Ian','Lopez','ian.lopez@example.com','pass11','2025-03-08 15:27:41'),(12,'Julia','Gonzalez','julia.gonzalez@example.com','pass12','2025-03-08 15:27:41'),(13,'Kevin','Wilson','kevin.wilson@example.com','pass13','2025-03-08 15:27:41'),(14,'Laura','Anderson','laura.anderson@example.com','pass14','2025-03-08 15:27:41'),(15,'Michael','Thomas','michael.thomas@example.com','pass15','2025-03-08 15:27:41'),(16,'Nina','Taylor','nina.taylor@example.com','pass16','2025-03-08 15:27:41'),(17,'Oscar','Moore','oscar.moore@example.com','pass17','2025-03-08 15:27:41'),(18,'Paula','Jackson','paula.jackson@example.com','pass18','2025-03-08 15:27:41'),(19,'Quentin','Martin','quentin.martin@example.com','pass19','2025-03-08 15:27:41'),(20,'Rachel','Lee','rachel.lee@example.com','pass20','2025-03-08 15:27:41'),(21,'Steven','Perez','steven.perez@example.com','pass21','2025-03-08 15:27:41'),(22,'Tina','Thompson','tina.thompson@example.com','pass22','2025-03-08 15:27:41'),(23,'Uma','White','uma.white@example.com','pass23','2025-03-08 15:27:41'),(24,'Victor','Harris','victor.harris@example.com','pass24','2025-03-08 15:27:41'),(25,'Wendy','Clark','wendy.clark@example.com','pass25','2025-03-08 15:27:41'),(26,'Nickson','Wang','nickwang@gmail.com','123456','2025-03-13 14:23:50');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-18 12:39:25
