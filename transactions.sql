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
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `TransactionID` int NOT NULL AUTO_INCREMENT,
  `UserID` int NOT NULL,
  `CategoryID` int NOT NULL,
  `Amount` int NOT NULL,
  `TransactionType` enum('Income','Expense') NOT NULL,
  `TransactionDate` date DEFAULT (curdate()),
  `Description` text,
  PRIMARY KEY (`TransactionID`),
  KEY `UserID` (`UserID`),
  KEY `CategoryID` (`CategoryID`),
  CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`),
  CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`CategoryID`) REFERENCES `categories` (`CategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,1,1,3000,'Income','2025-03-01','March Salary'),(2,2,5,1200,'Expense','2025-03-02','Rent Payment'),(3,3,2,75,'Expense','2025-03-03','Groceries'),(4,4,3,50,'Expense','2025-03-04','Movie Tickets'),(5,5,1,2800,'Income','2025-03-01','March Salary'),(6,6,4,200,'Expense','2025-03-05','Electricity Bill'),(7,7,6,60,'Expense','2025-03-06','Bus Pass'),(8,8,7,150,'Expense','2025-03-07','Doctor Visit'),(9,9,8,300,'Expense','2025-03-08','Car Insurance'),(10,10,9,500,'Expense','2025-03-09','Online Course Fee'),(11,11,10,1000,'Expense','2025-03-10','Flight Booking'),(12,12,11,250,'Expense','2025-03-11','Clothing Shopping'),(13,13,12,75,'Expense','2025-03-12','Haircut'),(14,14,13,100,'Expense','2025-03-13','Birthday Gift'),(15,15,14,50,'Expense','2025-03-14','Donation'),(16,16,15,500,'Expense','2025-03-15','Stock Purchase'),(17,17,16,400,'Expense','2025-03-16','Car Loan Payment'),(18,18,17,300,'Expense','2025-03-17','Property Tax'),(19,19,18,800,'Expense','2025-03-18','Kitchen Remodel'),(20,20,19,150,'Expense','2025-03-19','Plumbing Repair'),(21,21,20,20,'Expense','2025-03-20','Streaming Subscription'),(22,22,21,45,'Expense','2025-03-21','Miscellaneous Purchase'),(23,23,22,200,'Income','2025-03-22','Transfer to Savings'),(24,24,23,600,'Expense','2025-03-23','Credit Card Payment'),(25,25,24,80,'Expense','2025-03-24','Concert Tickets');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-18 12:42:54
