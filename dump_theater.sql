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
  `id` char(36) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES ('62f1f85c-0485-11ee-add8-928a0162e96c','choyer0@facebook.com','$2y$10$Uh38.Z6VwzcoATDQvLBrBevYrEXX3aRz/Ta9vAaS/lnMyPj0Et3ri'),('62f20b80-0485-11ee-add8-928a0162e96c','spenhall1@netlog.com','$2y$10$cCXnEYzk4O1K/iK896fCO.lsxS18.Qc2GlYsZK1W68mvpjQXOLp/u'),('62f21ddc-0485-11ee-add8-928a0162e96c','fscruton2@about.com','$2y$10$WldmBh0chrIbs7yMItwNneW82jogNd0ULCTKN3k.W5c.nR8JjSKBW'),('62f22ea8-0485-11ee-add8-928a0162e96c','kpapierz3@blogs.com','$2y$10$I/FTiBhGwgAtGKLN2wz7sOIOX.lgVi3w3wS.lLNmIZPVE/tvszR1K');
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
  CONSTRAINT `admins_complexes_ibfk_1` FOREIGN KEY (`id_admins`) REFERENCES `admins` (`id`),
  CONSTRAINT `admins_complexes_ibfk_2` FOREIGN KEY (`id_complexes`) REFERENCES `complexes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins_complexes`
--

LOCK TABLES `admins_complexes` WRITE;
/*!40000 ALTER TABLE `admins_complexes` DISABLE KEYS */;
INSERT INTO `admins_complexes` VALUES ('62f1f85c-0485-11ee-add8-928a0162e96c','62f1a49c-0485-11ee-add8-928a0162e96c'),('62f20b80-0485-11ee-add8-928a0162e96c','62f1b66c-0485-11ee-add8-928a0162e96c');
/*!40000 ALTER TABLE `admins_complexes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complexes`
--

DROP TABLE IF EXISTS `complexes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `complexes` (
  `id` char(36) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complexes`
--

LOCK TABLES `complexes` WRITE;
/*!40000 ALTER TABLE `complexes` DISABLE KEYS */;
INSERT INTO `complexes` VALUES ('62f1a49c-0485-11ee-add8-928a0162e96c','Thoughtbridge','24593 Tomscot Road'),('62f1b66c-0485-11ee-add8-928a0162e96c','Pixope','801 Scofield Way'),('62f1c792-0485-11ee-add8-928a0162e96c','Dazzlesphere','27792 Maywood Road'),('62f1d7b4-0485-11ee-add8-928a0162e96c','Quire','68252 Esker Plaza');
/*!40000 ALTER TABLE `complexes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie` (
  `id` char(36) NOT NULL,
  `title` varchar(50) NOT NULL,
  `synopsis` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES ('62f254c8-0485-11ee-add8-928a0162e96c','Good Lawyer\'s Wife, A (Baramnan gajok)','Cysto & recto w grf/pros'),('62f2672e-0485-11ee-add8-928a0162e96c','Tadpole','Bact smear-eye'),('62f2785e-0485-11ee-add8-928a0162e96c','Pericles on 31st Street','Parathyroid biopsy'),('62f287ea-0485-11ee-add8-928a0162e96c','Great Race, The','Wound catheter irrigat'),('62f2973a-0485-11ee-add8-928a0162e96c','Kedma','Close reduc-femur epiphy');
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_theater`
--

DROP TABLE IF EXISTS `movie_theater`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie_theater` (
  `id` char(36) NOT NULL,
  `number_of_the_movie_room` int(11) NOT NULL,
  `number_of_seat` int(11) NOT NULL,
  `id_movie` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_movie` (`id_movie`),
  CONSTRAINT `movie_theater_ibfk_1` FOREIGN KEY (`id_movie`) REFERENCES `movie` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_theater`
--

LOCK TABLES `movie_theater` WRITE;
/*!40000 ALTER TABLE `movie_theater` DISABLE KEYS */;
INSERT INTO `movie_theater` VALUES ('62f2bd32-0485-11ee-add8-928a0162e96c',8,100,'62f254c8-0485-11ee-add8-928a0162e96c'),('62f2d2ea-0485-11ee-add8-928a0162e96c',7,200,'62f2672e-0485-11ee-add8-928a0162e96c'),('62f2e80c-0485-11ee-add8-928a0162e96c',9,230,'62f2785e-0485-11ee-add8-928a0162e96c'),('62f31156-0485-11ee-add8-928a0162e96c',3,250,'62f2973a-0485-11ee-add8-928a0162e96c');
/*!40000 ALTER TABLE `movie_theater` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rate`
--

DROP TABLE IF EXISTS `rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rate` (
  `id` char(36) NOT NULL,
  `category` varchar(50) NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rate`
--

LOCK TABLES `rate` WRITE;
/*!40000 ALTER TABLE `rate` DISABLE KEYS */;
INSERT INTO `rate` VALUES ('62f10082-0485-11ee-add8-928a0162e96c','Plein Tarif',9.2),('62f11504-0485-11ee-add8-928a0162e96c','Étudiant',7.6),('62f1277e-0485-11ee-add8-928a0162e96c','Moins de 14 ans',5.9);
/*!40000 ALTER TABLE `rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reservation` (
  `id` char(36) NOT NULL,
  `number_of_seat` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
INSERT INTO `reservation` VALUES ('62f335dc-0485-11ee-add8-928a0162e96c',1,'Josiah Torn','jtorn0@youtu.be'),('62f3503a-0485-11ee-add8-928a0162e96c',2,'Adrian Leishman','aleishman1@hud.gov'),('62f36b42-0485-11ee-add8-928a0162e96c',3,'Lyle Beak','lbeak2@comcast.net'),('62f383ac-0485-11ee-add8-928a0162e96c',4,'Kiley Cubbin','kcubbin3@blog.com'),('62f396c6-0485-11ee-add8-928a0162e96c',5,'Thorndike Hollidge','thollidge4@a8.net');
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `session`
--

DROP TABLE IF EXISTS `session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `session` (
  `id` char(36) NOT NULL,
  `day` date NOT NULL,
  `schedule` time NOT NULL,
  `id_users` char(36) NOT NULL,
  `id_complexes` char(36) NOT NULL,
  `id_rate` char(36) NOT NULL,
  `id_reservation` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_users` (`id_users`),
  KEY `id_complexes` (`id_complexes`),
  KEY `id_rate` (`id_rate`),
  KEY `id_reservation` (`id_reservation`),
  CONSTRAINT `session_ibfk_1` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`),
  CONSTRAINT `session_ibfk_2` FOREIGN KEY (`id_complexes`) REFERENCES `complexes` (`id`),
  CONSTRAINT `session_ibfk_3` FOREIGN KEY (`id_rate`) REFERENCES `rate` (`id`),
  CONSTRAINT `session_ibfk_4` FOREIGN KEY (`id_reservation`) REFERENCES `reservation` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session`
--

LOCK TABLES `session` WRITE;
/*!40000 ALTER TABLE `session` DISABLE KEYS */;
INSERT INTO `session` VALUES ('62f3b99e-0485-11ee-add8-928a0162e96c','2023-02-27','09:15:00','62f14aa6-0485-11ee-add8-928a0162e96c','62f1a49c-0485-11ee-add8-928a0162e96c','62f10082-0485-11ee-add8-928a0162e96c','62f335dc-0485-11ee-add8-928a0162e96c'),('62f3d5fa-0485-11ee-add8-928a0162e96c','2023-02-23','09:20:00','62f15bea-0485-11ee-add8-928a0162e96c','62f1b66c-0485-11ee-add8-928a0162e96c','62f11504-0485-11ee-add8-928a0162e96c','62f3503a-0485-11ee-add8-928a0162e96c'),('62f3ed60-0485-11ee-add8-928a0162e96c','2023-02-24','09:25:00','62f16d6a-0485-11ee-add8-928a0162e96c','62f1c792-0485-11ee-add8-928a0162e96c','62f1277e-0485-11ee-add8-928a0162e96c','62f36b42-0485-11ee-add8-928a0162e96c');
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
  CONSTRAINT `session_movie_theater_ibfk_1` FOREIGN KEY (`id_session`) REFERENCES `session` (`id`),
  CONSTRAINT `session_movie_theater_ibfk_2` FOREIGN KEY (`id_movie_theater`) REFERENCES `movie_theater` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session_movie_theater`
--

LOCK TABLES `session_movie_theater` WRITE;
/*!40000 ALTER TABLE `session_movie_theater` DISABLE KEYS */;
INSERT INTO `session_movie_theater` VALUES ('62f3b99e-0485-11ee-add8-928a0162e96c','62f2bd32-0485-11ee-add8-928a0162e96c'),('62f3d5fa-0485-11ee-add8-928a0162e96c','62f2d2ea-0485-11ee-add8-928a0162e96c');
/*!40000 ALTER TABLE `session_movie_theater` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` char(36) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('62f14aa6-0485-11ee-add8-928a0162e96c','gissard0@harvard.edu','$2y$10$42E.edBFNa5DnF1Jo4PFAekXP/awVNYDwE5.h219m2I7Ud8QrJjkq'),('62f15bea-0485-11ee-add8-928a0162e96c','ncrumb1@wisc.edu','$2y$10$30Lu8NBepzLRwBAbYDX20edv1zuXMgeDrDLcEXxLIqaNDbu.Tf8Iu'),('62f16d6a-0485-11ee-add8-928a0162e96c','cromanin2@nature.com','$2y$10$bY.iyLaTtuMQTZOxkL9tEuLX8UCiUssQpSZXYLafEXUwqXgoWYzyO'),('62f18070-0485-11ee-add8-928a0162e96c','fcumberpatch3@themeforest.net','$2y$10$dqkdCUuDxsdoMFOA3VoPKO6J8ekGeUFMo3r3/49mA0rO3jDGFWIsW');
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

-- Dump completed on 2023-06-06 18:17:38
