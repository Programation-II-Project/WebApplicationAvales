CREATE DATABASE  IF NOT EXISTS `proyecto` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `proyecto`;
-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: proyecto
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `actividades`
--

DROP TABLE IF EXISTS `actividades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actividades` (
  `IDactividad` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  `Descripcion` varchar(400) NOT NULL,
  `Costo` double NOT NULL,
  `Encargado` varchar(50) NOT NULL,
  `Año` int NOT NULL,
  `Mes` int NOT NULL,
  `Dia` int NOT NULL,
  `Foto` varchar(45) NOT NULL,
  PRIMARY KEY (`IDactividad`),
  UNIQUE KEY `IDactividad_UNIQUE` (`IDactividad`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actividades`
--

LOCK TABLES `actividades` WRITE;
/*!40000 ALTER TABLE `actividades` DISABLE KEYS */;
INSERT INTO `actividades` VALUES (1,'Mtiny','Implementación de la robótica para la enseñanza de valores',0,'José Gutiérrez',2020,5,22,'Mtimy.jpg'),(2,'Valores','Entrenamiento a lídres para la implementación del programa VALORES',0,'José Gutiérrez',2020,6,15,'IMG_7660.jpg');
/*!40000 ALTER TABLE `actividades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donaciones`
--

DROP TABLE IF EXISTS `donaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donaciones` (
  `IDdonacion` int NOT NULL AUTO_INCREMENT,
  `IDdonante` int NOT NULL,
  `NumeroTarjeta` int NOT NULL,
  `CVV` int NOT NULL,
  `Mes` int NOT NULL,
  `Año` int NOT NULL,
  `Donacion` int NOT NULL,
  `Fecha_Donacion` datetime NOT NULL,
  `Estado` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`IDdonacion`),
  UNIQUE KEY `IDdonacion_UNIQUE` (`IDdonacion`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donaciones`
--

LOCK TABLES `donaciones` WRITE;
/*!40000 ALTER TABLE `donaciones` DISABLE KEYS */;
INSERT INTO `donaciones` VALUES (24,19,516515,154,8,2020,100,'2020-04-23 16:16:12','Aprobado'),(25,19,1234567,142,12,2023,50,'2020-04-23 16:16:43','Aprobado'),(26,19,123456,123,12,2023,200,'2020-04-23 16:16:59','Denegado'),(27,19,12345,123,12,2021,100,'2020-04-23 16:17:12','Denegado'),(28,20,12341234,123,12,2025,100,'2020-04-23 17:10:15','Aprobado'),(29,20,123123123,123,8,2023,150,'2020-04-23 17:10:28','Aprobado'),(30,24,12345,123,3,2025,500,'2020-04-28 18:00:28','Aprobado');
/*!40000 ALTER TABLE `donaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mensajes`
--

DROP TABLE IF EXISTS `mensajes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mensajes` (
  `idMensajes` int NOT NULL AUTO_INCREMENT,
  `idUserFrom` int NOT NULL,
  `idMensajeUserFrom` int NOT NULL,
  `Mensaje` varchar(500) NOT NULL,
  `AdminStatus` tinyint NOT NULL,
  PRIMARY KEY (`idMensajes`),
  UNIQUE KEY `idMensajes_UNIQUE` (`idMensajes`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensajes`
--

LOCK TABLES `mensajes` WRITE;
/*!40000 ALTER TABLE `mensajes` DISABLE KEYS */;
INSERT INTO `mensajes` VALUES (9,24,1,'Buenas',0),(10,24,2,'A que hora viene',0),(11,24,3,'No sé, vuelva pronto',1);
/*!40000 ALTER TABLE `mensajes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proyectos`
--

DROP TABLE IF EXISTS `proyectos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proyectos` (
  `IDproyecto` int NOT NULL AUTO_INCREMENT,
  `NombreProyecto` varchar(100) NOT NULL,
  `Descripcion` varchar(500) NOT NULL,
  `Lugar` varchar(100) NOT NULL,
  `Foto` varchar(100) NOT NULL,
  `Video` varchar(100) NOT NULL,
  PRIMARY KEY (`IDproyecto`),
  UNIQUE KEY `IDproyecto_UNIQUE` (`IDproyecto`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proyectos`
--

LOCK TABLES `proyectos` WRITE;
/*!40000 ALTER TABLE `proyectos` DISABLE KEYS */;
INSERT INTO `proyectos` VALUES (12,'Entrenamiento a Líderes de Educación','Capacitación a líderes del Ministerio de Educación para la implementación del programa Sembrando Valores en las Nuevas Generaciones, en colaboración con Character Solutions International','Hotel Intercontinental, San Salvador','IMG_7355.jpg',''),(13,'Mtimy','Entrenamiento a maestros de diversos niveles para la implementación del programa VALORES | Robótica','Universidad Evangélica de El Salvador','Mtimy.jpg','IMG_0254.MOV');
/*!40000 ALTER TABLE `proyectos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registros`
--

DROP TABLE IF EXISTS `registros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registros` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  `Telefono_Casa` varchar(9) DEFAULT NULL,
  `Celular` varchar(9) NOT NULL,
  `Profesion` varchar(50) NOT NULL,
  `Direccion` varchar(70) NOT NULL,
  `Fecha_Nacimiento` date NOT NULL,
  `Estado_Civil` varchar(30) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `Familia` int NOT NULL,
  `Iglesia` int NOT NULL,
  `Gobierno` int NOT NULL,
  `MC` int NOT NULL,
  `Educacion` int NOT NULL,
  `Economia` int NOT NULL,
  `Artes` int NOT NULL,
  `Facebook` varchar(45) DEFAULT NULL,
  `Twitter` varchar(45) DEFAULT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  UNIQUE KEY `Email_UNIQUE` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registros`
--

LOCK TABLES `registros` WRITE;
/*!40000 ALTER TABLE `registros` DISABLE KEYS */;
INSERT INTO `registros` VALUES (19,'Abel','2626-2426','1234-1234','Ingeniero','calle siempre viva','2000-08-04','Soltero','abel_acc@outlook.com',1,0,0,0,1,1,1,'Abel Alejandro','','123'),(20,'Fernando','1234-1234','1234-1234','Albañil','El congo','2000-06-14','Soltero','fer@email.com',0,0,0,0,0,0,0,'','','123'),(24,'Mirna','60222011','60222011','Albañil','75 avenida norte','1999-02-16','Casado','Dormida@esen.com',1,0,0,0,1,1,0,'Mirna','Mirneishon','123');
/*!40000 ALTER TABLE `registros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registrosadmin`
--

DROP TABLE IF EXISTS `registrosadmin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registrosadmin` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Username` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  UNIQUE KEY `Username_UNIQUE` (`Username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registrosadmin`
--

LOCK TABLES `registrosadmin` WRITE;
/*!40000 ALTER TABLE `registrosadmin` DISABLE KEYS */;
INSERT INTO `registrosadmin` VALUES (1,'Abel','12345');
/*!40000 ALTER TABLE `registrosadmin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solicitudayuda`
--

DROP TABLE IF EXISTS `solicitudayuda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solicitudayuda` (
  `idsolicitudAyuda` int NOT NULL AUTO_INCREMENT,
  `ID` int NOT NULL,
  `Proyecto` varchar(45) NOT NULL,
  `Descripcion` varchar(500) NOT NULL,
  `Fecha` datetime NOT NULL,
  `Aprobacion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idsolicitudAyuda`),
  UNIQUE KEY `idsolicitudAyuda_UNIQUE` (`idsolicitudAyuda`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitudayuda`
--

LOCK TABLES `solicitudayuda` WRITE;
/*!40000 ALTER TABLE `solicitudayuda` DISABLE KEYS */;
INSERT INTO `solicitudayuda` VALUES (48,19,'VALORES','Quiero pedir una colaboración para un proyecto familiar.','2020-04-23 16:15:00','No aprobado'),(49,23,'VALORES','Prueba','2020-04-28 04:43:40','Aprobado'),(50,24,'VALORES','Quiero ayuda ','2020-04-28 18:02:20','No aprobado');
/*!40000 ALTER TABLE `solicitudayuda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'proyecto'
--

--
-- Dumping routines for database 'proyecto'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-28 15:25:32
