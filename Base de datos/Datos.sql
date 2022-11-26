-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: portfolio_web
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `domicilio`
--

DROP TABLE IF EXISTS `domicilio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `domicilio` (
  `PK_Domicilio` int NOT NULL AUTO_INCREMENT,
  `FK_Persona` int NOT NULL,
  `FK_Localidad` int NOT NULL,
  `calle` varchar(45) DEFAULT NULL,
  `altura` varchar(45) DEFAULT NULL,
  `piso` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`PK_Domicilio`),
  KEY `FK_Persona_Domicilio_idx` (`FK_Persona`),
  KEY `FK_Localidad_Domicilio_idx` (`FK_Localidad`),
  CONSTRAINT `FK_Localidad_Domicilio` FOREIGN KEY (`FK_Localidad`) REFERENCES `localidad` (`PK_Localidad`),
  CONSTRAINT `FK_Persona_Domicilio` FOREIGN KEY (`FK_Persona`) REFERENCES `persona` (`PK_Persona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domicilio`
--

LOCK TABLES `domicilio` WRITE;
/*!40000 ALTER TABLE `domicilio` DISABLE KEYS */;
/*!40000 ALTER TABLE `domicilio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `educacion`
--

DROP TABLE IF EXISTS `educacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `educacion` (
  `PK_Educacion` int NOT NULL AUTO_INCREMENT,
  `FK_Persona` int NOT NULL,
  `titulo` varchar(45) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `fechaInicio` date DEFAULT NULL,
  `fechaFin` date DEFAULT NULL,
  PRIMARY KEY (`PK_Educacion`),
  KEY `FK_Persona_Educacion_idx` (`FK_Persona`),
  CONSTRAINT `FK_Persona_Educacion` FOREIGN KEY (`FK_Persona`) REFERENCES `persona` (`PK_Persona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `educacion`
--

LOCK TABLES `educacion` WRITE;
/*!40000 ALTER TABLE `educacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `educacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `experiencia_laboral`
--

DROP TABLE IF EXISTS `experiencia_laboral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `experiencia_laboral` (
  `PK_Experiencia_Laboral` int NOT NULL AUTO_INCREMENT,
  `FK_Persona_Experiencia_Laboral` int NOT NULL,
  `titulo` varchar(45) DEFAULT NULL,
  `subtitulo` varchar(45) DEFAULT NULL,
  `descripcion` varchar(240) DEFAULT NULL,
  PRIMARY KEY (`PK_Experiencia_Laboral`),
  KEY `FK_Experiencia_Persona_idx` (`FK_Persona_Experiencia_Laboral`),
  CONSTRAINT `FK_Experiencia_Persona` FOREIGN KEY (`FK_Persona_Experiencia_Laboral`) REFERENCES `persona` (`PK_Persona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experiencia_laboral`
--

LOCK TABLES `experiencia_laboral` WRITE;
/*!40000 ALTER TABLE `experiencia_laboral` DISABLE KEYS */;
/*!40000 ALTER TABLE `experiencia_laboral` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `localidad`
--

DROP TABLE IF EXISTS `localidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `localidad` (
  `PK_Localidad` int NOT NULL AUTO_INCREMENT,
  `FK_Municipio` int NOT NULL,
  `localidad` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`PK_Localidad`),
  KEY `FK_Municipio_Localidad_idx` (`FK_Municipio`),
  CONSTRAINT `FK_Municipio_Localidad` FOREIGN KEY (`FK_Municipio`) REFERENCES `municipio` (`PK_Municipio`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `localidad`
--

LOCK TABLES `localidad` WRITE;
/*!40000 ALTER TABLE `localidad` DISABLE KEYS */;
INSERT INTO `localidad` VALUES (7,1,'Merlo'),(8,1,'San Antonio de Padua'),(9,1,'Parque San Martín'),(10,1,'Libertad'),(11,1,'Mariano Acosta'),(12,1,'Pontevedra');
/*!40000 ALTER TABLE `localidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `municipio`
--

DROP TABLE IF EXISTS `municipio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `municipio` (
  `PK_Municipio` int NOT NULL AUTO_INCREMENT,
  `FK_Provincia` int NOT NULL,
  `municipio` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`PK_Municipio`),
  KEY `FK_Provincia_Municipio_idx` (`FK_Provincia`),
  CONSTRAINT `FK_Provincia_Municipio` FOREIGN KEY (`FK_Provincia`) REFERENCES `provincia` (`PK_Provincia`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `municipio`
--

LOCK TABLES `municipio` WRITE;
/*!40000 ALTER TABLE `municipio` DISABLE KEYS */;
INSERT INTO `municipio` VALUES (1,25,'Merlo');
/*!40000 ALTER TABLE `municipio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pais`
--

DROP TABLE IF EXISTS `pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pais` (
  `PK_Pais` int NOT NULL AUTO_INCREMENT,
  `pais` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`PK_Pais`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` VALUES (1,'Argentina'),(2,'Chile'),(3,'Uruguay'),(4,'Bolivia'),(5,'Paraguay');
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persona` (
  `PK_Persona` int NOT NULL AUTO_INCREMENT,
  `FK_Usuario_Persona` int NOT NULL,
  `nombre_completo` varchar(45) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `dni` varchar(45) DEFAULT NULL,
  `foto_perfil` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`PK_Persona`),
  UNIQUE KEY `dni_UNIQUE` (`dni`),
  KEY `FK_Usuario_Persona_idx` (`FK_Usuario_Persona`),
  CONSTRAINT `FK_Usuario_Persona` FOREIGN KEY (`FK_Usuario_Persona`) REFERENCES `usuario` (`PK_Usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provincia`
--

DROP TABLE IF EXISTS `provincia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provincia` (
  `PK_Provincia` int NOT NULL AUTO_INCREMENT,
  `FK_Pais` int NOT NULL,
  `provincia` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`PK_Provincia`),
  KEY `FK_Pais_Provincia_idx` (`FK_Pais`),
  CONSTRAINT `FK_Pais_Provincia` FOREIGN KEY (`FK_Pais`) REFERENCES `pais` (`PK_Pais`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provincia`
--

LOCK TABLES `provincia` WRITE;
/*!40000 ALTER TABLE `provincia` DISABLE KEYS */;
INSERT INTO `provincia` VALUES (25,1,'Buenos Aires'),(26,1,'Ciudad Autónoma de Buenos Aires'),(27,1,'Catamarca'),(28,1,'Chaco'),(29,1,'Chubut'),(30,1,'Córdoba'),(31,1,'Corrientes'),(32,1,'Entre Ríos'),(33,1,'Formosa'),(34,1,'Jujuy'),(35,1,'La Pampa'),(36,1,'La Rioja'),(37,1,'Mendoza'),(38,1,'Misiones'),(39,1,'Neuquén'),(40,1,'Río Negro'),(41,1,'Salta'),(42,1,'San Juan'),(43,1,'San Luis'),(44,1,'Santa Cruz'),(45,1,'Santa Fe'),(46,1,'Santiago del Estero'),(47,1,'Tierra del Fuego'),(48,1,'Tucumán');
/*!40000 ALTER TABLE `provincia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proyecto`
--

DROP TABLE IF EXISTS `proyecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proyecto` (
  `PK_Proyectos` int NOT NULL AUTO_INCREMENT,
  `FK_Persona` int DEFAULT NULL,
  `FK_Referencia` int DEFAULT NULL,
  `tituloProyecto` varchar(45) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`PK_Proyectos`),
  KEY `FK_Persona_Proyecto_idx` (`FK_Persona`),
  KEY `FK_Referencia_Proyecto_idx` (`FK_Referencia`),
  CONSTRAINT `FK_Persona_Proyecto` FOREIGN KEY (`FK_Persona`) REFERENCES `persona` (`PK_Persona`),
  CONSTRAINT `FK_Referencia_Proyecto` FOREIGN KEY (`FK_Referencia`) REFERENCES `referencia_laboral` (`PK_Referencia_Laboral`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proyecto`
--

LOCK TABLES `proyecto` WRITE;
/*!40000 ALTER TABLE `proyecto` DISABLE KEYS */;
/*!40000 ALTER TABLE `proyecto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `referencia_laboral`
--

DROP TABLE IF EXISTS `referencia_laboral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `referencia_laboral` (
  `PK_Referencia_Laboral` int NOT NULL AUTO_INCREMENT,
  `FK_Experiencia` int NOT NULL,
  `FK_Localidad` int NOT NULL,
  `nombre_completo` varchar(45) DEFAULT NULL,
  `calle` varchar(45) DEFAULT NULL,
  `numero` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`PK_Referencia_Laboral`),
  KEY `FK_Experiencia_Referencia_idx` (`FK_Experiencia`),
  KEY `FK_Localidad_Experiencia_idx` (`FK_Localidad`),
  CONSTRAINT `FK_Localidad_Experiencia` FOREIGN KEY (`FK_Localidad`) REFERENCES `localidad` (`PK_Localidad`),
  CONSTRAINT `FK_Referencia_Experiencia` FOREIGN KEY (`FK_Experiencia`) REFERENCES `experiencia_laboral` (`PK_Experiencia_Laboral`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referencia_laboral`
--

LOCK TABLES `referencia_laboral` WRITE;
/*!40000 ALTER TABLE `referencia_laboral` DISABLE KEYS */;
/*!40000 ALTER TABLE `referencia_laboral` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecnologia`
--

DROP TABLE IF EXISTS `tecnologia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tecnologia` (
  `PK_Tecnologia` int NOT NULL AUTO_INCREMENT,
  `FK_Persona` int NOT NULL,
  `nombre_tecnologia` varchar(45) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`PK_Tecnologia`),
  KEY `FK_Prsona_Tecnologia_idx` (`FK_Persona`),
  CONSTRAINT `FK_Prsona_Tecnologia` FOREIGN KEY (`FK_Persona`) REFERENCES `persona` (`PK_Persona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecnologia`
--

LOCK TABLES `tecnologia` WRITE;
/*!40000 ALTER TABLE `tecnologia` DISABLE KEYS */;
/*!40000 ALTER TABLE `tecnologia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefono_referencia_laboral`
--

DROP TABLE IF EXISTS `telefono_referencia_laboral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telefono_referencia_laboral` (
  `FK_Telefono_Referencia_Laboral` int NOT NULL AUTO_INCREMENT,
  `FK_Referencia` int NOT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `horarios` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`FK_Telefono_Referencia_Laboral`),
  KEY `FK_Referencia_Telefono_idx` (`FK_Referencia`),
  CONSTRAINT `FK_Referencia_Telefono` FOREIGN KEY (`FK_Referencia`) REFERENCES `referencia_laboral` (`PK_Referencia_Laboral`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefono_referencia_laboral`
--

LOCK TABLES `telefono_referencia_laboral` WRITE;
/*!40000 ALTER TABLE `telefono_referencia_laboral` DISABLE KEYS */;
/*!40000 ALTER TABLE `telefono_referencia_laboral` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `PK_Usuario` int NOT NULL AUTO_INCREMENT,
  `correo` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `cuenta_activa` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`PK_Usuario`),
  UNIQUE KEY `correo_UNIQUE` (`correo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'test1@test.com','123456',1),(3,'leandrocosmetomassini@gmail.com','123456',1);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'portfolio_web'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-26 14:58:10
