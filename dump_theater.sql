-- MySQL dump 10.13  Distrib 5.7.39, for osx10.12 (x86_64)
--
-- Host: localhost    Database: theater
-- ------------------------------------------------------
-- Server version	5.7.39

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `id_admins` char(36) NOT NULL,
  `email` varchar(50) NOT NULL,
  `admins_password` varchar(60) NOT NULL,
  PRIMARY KEY (`id_admins`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES ('58f9eb0a-c742-11ed-81af-d3284c073c1a','choyer0@facebook.com','$2y$10$Uh38.Z6VwzcoATDQvLBrBevYrEXX3aRz/Ta9vAaS/lnMyPj0Et3ri'),('58f9f97e-c742-11ed-81af-d3284c073c1a','spenhall1@netlog.com','$2y$10$cCXnEYzk4O1K/iK896fCO.lsxS18.Qc2GlYsZK1W68mvpjQXOLp/u'),('58fa03ce-c742-11ed-81af-d3284c073c1a','fscruton2@about.com','$2y$10$WldmBh0chrIbs7yMItwNneW82jogNd0ULCTKN3k.W5c.nR8JjSKBW'),('58fa0e00-c742-11ed-81af-d3284c073c1a','kpapierz3@blogs.com','$2y$10$I/FTiBhGwgAtGKLN2wz7sOIOX.lgVi3w3wS.lLNmIZPVE/tvszR1K');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admins_complexes`
--

DROP TABLE IF EXISTS `admins_complexes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins_complexes` (
  `id_admins` char(36) NOT NULL,
  `id_complexes` char(36) NOT NULL,
  KEY `id_admins` (`id_admins`),
  KEY `id_complexes` (`id_complexes`),
  CONSTRAINT `admins_complexes_ibfk_1` FOREIGN KEY (`id_admins`) REFERENCES `admins` (`id_admins`),
  CONSTRAINT `admins_complexes_ibfk_2` FOREIGN KEY (`id_complexes`) REFERENCES `complexes` (`id_complexes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins_complexes`
--

LOCK TABLES `admins_complexes` WRITE;
/*!40000 ALTER TABLE `admins_complexes` DISABLE KEYS */;
/*!40000 ALTER TABLE `admins_complexes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complexes`
--

DROP TABLE IF EXISTS `complexes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `complexes` (
  `id_complexes` char(36) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  PRIMARY KEY (`id_complexes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complexes`
--

LOCK TABLES `complexes` WRITE;
/*!40000 ALTER TABLE `complexes` DISABLE KEYS */;
INSERT INTO `complexes` VALUES ('58f9a834-c742-11ed-81af-d3284c073c1a','Thoughtbridge','24593 Tomscot Road'),('58f9b7a2-c742-11ed-81af-d3284c073c1a','Pixope','801 Scofield Way'),('58f9c274-c742-11ed-81af-d3284c073c1a','Dazzlesphere','27792 Maywood Road'),('58f9cf80-c742-11ed-81af-d3284c073c1a','Quire','68252 Esker Plaza');
/*!40000 ALTER TABLE `complexes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie` (
  `id_movie` char(36) NOT NULL,
  `title` varchar(50) NOT NULL,
  `synopsis` text NOT NULL,
  PRIMARY KEY (`id_movie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES ('58fa2610-c742-11ed-81af-d3284c073c1a','Good Lawyer\'s Wife, A (Baramnan gajok)','Cysto & recto w grf/pros'),('58fa30d8-c742-11ed-81af-d3284c073c1a','Tadpole','Bact smear-eye'),('58fa3e02-c742-11ed-81af-d3284c073c1a','Pericles on 31st Street','Parathyroid biopsy'),('58fa4b04-c742-11ed-81af-d3284c073c1a','Great Race, The','Wound catheter irrigat'),('58fa566c-c742-11ed-81af-d3284c073c1a','Kedma','Close reduc-femur epiphy');
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_theater`
--

DROP TABLE IF EXISTS `movie_theater`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie_theater` (
  `id_movie_theater` char(36) NOT NULL,
  `number_of_the_movie_room` int(11) NOT NULL,
  `number_of_seat` int(11) NOT NULL,
  `id_movie` char(36) NOT NULL,
  PRIMARY KEY (`id_movie_theater`),
  KEY `id_movie` (`id_movie`),
  CONSTRAINT `movie_theater_ibfk_1` FOREIGN KEY (`id_movie`) REFERENCES `movie` (`id_movie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_theater`
--

LOCK TABLES `movie_theater` WRITE;
/*!40000 ALTER TABLE `movie_theater` DISABLE KEYS */;
/*!40000 ALTER TABLE `movie_theater` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rate`
--

DROP TABLE IF EXISTS `rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rate` (
  `id_rate` char(36) NOT NULL,
  `category` varchar(50) NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id_rate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rate`
--

LOCK TABLES `rate` WRITE;
/*!40000 ALTER TABLE `rate` DISABLE KEYS */;
INSERT INTO `rate` VALUES ('58f918b0-c742-11ed-81af-d3284c073c1a','Plein Tarif',9.2),('58f926ac-c742-11ed-81af-d3284c073c1a','Étudiant',7.6),('58f93174-c742-11ed-81af-d3284c073c1a','Moins de 14 ans',5.9);
/*!40000 ALTER TABLE `rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reservation` (
  `id_reservation` char(36) NOT NULL,
  `number_of_seat` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`id_reservation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `session`
--

DROP TABLE IF EXISTS `session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `session` (
  `id_session` char(36) NOT NULL,
  `day` date NOT NULL,
  `schedule` time NOT NULL,
  `id_users` char(36) NOT NULL,
  `id_complexes` char(36) NOT NULL,
  `id_rate` char(36) NOT NULL,
  `id_reservation` char(36) NOT NULL,
  PRIMARY KEY (`id_session`),
  KEY `id_users` (`id_users`),
  KEY `id_complexes` (`id_complexes`),
  KEY `id_rate` (`id_rate`),
  KEY `id_reservation` (`id_reservation`),
  CONSTRAINT `session_ibfk_1` FOREIGN KEY (`id_users`) REFERENCES `users` (`id_users`),
  CONSTRAINT `session_ibfk_2` FOREIGN KEY (`id_complexes`) REFERENCES `complexes` (`id_complexes`),
  CONSTRAINT `session_ibfk_3` FOREIGN KEY (`id_rate`) REFERENCES `rate` (`id_rate`),
  CONSTRAINT `session_ibfk_4` FOREIGN KEY (`id_reservation`) REFERENCES `reservation` (`id_reservation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session`
--

LOCK TABLES `session` WRITE;
/*!40000 ALTER TABLE `session` DISABLE KEYS */;
/*!40000 ALTER TABLE `session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `session_movie_theater`
--

DROP TABLE IF EXISTS `session_movie_theater`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `session_movie_theater` (
  `id_session` char(36) NOT NULL,
  `id_movie_theater` char(36) NOT NULL,
  KEY `id_session` (`id_session`),
  KEY `id_movie_theater` (`id_movie_theater`),
  CONSTRAINT `session_movie_theater_ibfk_1` FOREIGN KEY (`id_session`) REFERENCES `session` (`id_session`),
  CONSTRAINT `session_movie_theater_ibfk_2` FOREIGN KEY (`id_movie_theater`) REFERENCES `movie_theater` (`id_movie_theater`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session_movie_theater`
--

LOCK TABLES `session_movie_theater` WRITE;
/*!40000 ALTER TABLE `session_movie_theater` DISABLE KEYS */;
/*!40000 ALTER TABLE `session_movie_theater` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id_users` char(36) NOT NULL,
  `email` varchar(50) NOT NULL,
  `users_password` varchar(60) NOT NULL,
  PRIMARY KEY (`id_users`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('58f95b90-c742-11ed-81af-d3284c073c1a','gissard0@harvard.edu','$2y$10$42E.edBFNa5DnF1Jo4PFAekXP/awVNYDwE5.h219m2I7Ud8QrJjkq'),('58f9678e-c742-11ed-81af-d3284c073c1a','ncrumb1@wisc.edu','$2y$10$30Lu8NBepzLRwBAbYDX20edv1zuXMgeDrDLcEXxLIqaNDbu.Tf8Iu'),('58f97ac6-c742-11ed-81af-d3284c073c1a','cromanin2@nature.com','$2y$10$bY.iyLaTtuMQTZOxkL9tEuLX8UCiUssQpSZXYLafEXUwqXgoWYzyO'),('58f98566-c742-11ed-81af-d3284c073c1a','fcumberpatch3@themeforest.net','$2y$10$dqkdCUuDxsdoMFOA3VoPKO6J8ekGeUFMo3r3/49mA0rO3jDGFWIsW');
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

-- Dump completed on 2023-03-20 18:21:24
