CREATE DATABASE  IF NOT EXISTS `mydb` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mydb`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: examenparcial.cpsopevx2pq7.us-east-1.rds.amazonaws.com    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.35

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `Administrador`
--

DROP TABLE IF EXISTS `Administrador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Administrador` (
  `idAdministrador` int NOT NULL,
  `activo` tinyint DEFAULT NULL,
  PRIMARY KEY (`idAdministrador`),
  CONSTRAINT `Administrador_ibfk_1` FOREIGN KEY (`idAdministrador`) REFERENCES `Persona` (`idPersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Administrador`
--

LOCK TABLES `Administrador` WRITE;
/*!40000 ALTER TABLE `Administrador` DISABLE KEYS */;
INSERT INTO `Administrador` VALUES (67,1),(70,NULL),(71,NULL),(72,NULL),(74,NULL),(75,NULL),(76,1),(77,NULL),(78,NULL),(79,NULL),(80,NULL),(81,NULL),(82,NULL),(83,NULL),(84,NULL),(85,NULL),(86,NULL),(87,NULL),(88,NULL),(89,NULL),(90,NULL),(91,NULL),(92,NULL),(93,NULL),(94,NULL),(95,1),(96,NULL),(98,NULL),(99,NULL),(100,NULL),(102,NULL),(103,NULL),(104,NULL),(105,NULL),(106,NULL),(107,NULL),(108,NULL),(109,NULL),(110,NULL),(111,NULL),(112,NULL),(113,NULL),(114,NULL),(115,NULL),(116,NULL),(117,NULL),(118,NULL),(119,NULL),(120,NULL),(121,NULL),(122,NULL),(123,NULL),(124,NULL),(125,NULL),(126,NULL),(127,NULL),(128,NULL),(129,NULL),(130,NULL),(131,NULL),(132,NULL),(133,NULL),(134,NULL),(135,NULL),(136,NULL),(137,NULL),(138,NULL),(139,NULL),(140,NULL),(141,NULL),(142,NULL),(143,NULL),(144,NULL),(145,NULL),(146,NULL),(147,NULL),(148,NULL),(149,NULL),(150,NULL),(151,NULL),(152,NULL),(153,NULL),(154,NULL),(155,NULL),(156,NULL),(157,NULL),(158,NULL),(159,NULL),(160,NULL),(161,NULL),(162,NULL),(163,NULL),(164,NULL),(165,NULL),(166,NULL),(167,NULL),(168,NULL),(169,NULL),(170,NULL),(171,NULL),(172,NULL),(173,NULL),(174,NULL),(175,NULL),(176,NULL),(177,NULL),(178,NULL),(179,NULL),(180,NULL),(181,NULL),(182,NULL),(183,NULL),(184,NULL),(185,NULL),(186,NULL),(187,NULL),(188,NULL),(189,NULL),(190,NULL),(191,NULL),(192,NULL),(196,NULL),(201,NULL),(202,NULL),(205,NULL),(206,NULL),(207,NULL),(208,NULL),(209,NULL),(210,NULL),(211,NULL),(212,NULL),(213,NULL),(214,NULL),(215,1);
/*!40000 ALTER TABLE `Administrador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AmbienteMedico`
--

DROP TABLE IF EXISTS `AmbienteMedico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AmbienteMedico` (
  `idAmbienteMedico` int NOT NULL AUTO_INCREMENT,
  `numPiso` int DEFAULT NULL,
  `ubicacion` varchar(100) DEFAULT NULL,
  `capacidad` int DEFAULT NULL,
  `tipoAmbiente` varchar(500) DEFAULT NULL,
  `activo` tinyint DEFAULT NULL,
  PRIMARY KEY (`idAmbienteMedico`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AmbienteMedico`
--

LOCK TABLES `AmbienteMedico` WRITE;
/*!40000 ALTER TABLE `AmbienteMedico` DISABLE KEYS */;
INSERT INTO `AmbienteMedico` VALUES (4,5,'Pabellón A ',15,'Laboratorio',1),(5,2,'Pabellón B - Segundo Piso',15,'Laboratorio',1),(6,3,'Pabellon C',20,'Consultorio',1);
/*!40000 ALTER TABLE `AmbienteMedico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Aseguradora`
--

DROP TABLE IF EXISTS `Aseguradora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Aseguradora` (
  `idAseguradora` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `telefono` int DEFAULT NULL,
  `tipoSeguro` varchar(50) NOT NULL,
  `porcentajeDescuento` double DEFAULT NULL,
  `activo` tinyint NOT NULL,
  PRIMARY KEY (`idAseguradora`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Aseguradora`
--

LOCK TABLES `Aseguradora` WRITE;
/*!40000 ALTER TABLE `Aseguradora` DISABLE KEYS */;
INSERT INTO `Aseguradora` VALUES (6,'Rimac Seguros','San Miguel, Lima',959124682,'Salud',0.125,1),(7,'KameSeguros','Surco, Lima',959124682,'Salud',0.225,1),(9,'NewAseguradora','San Miguel',987654321,'Salud',0.05,1);
/*!40000 ALTER TABLE `Aseguradora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Auxiliar`
--

DROP TABLE IF EXISTS `Auxiliar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Auxiliar` (
  `idAuxiliar` int NOT NULL,
  `idEspecialidad` int DEFAULT NULL,
  `activo` tinyint DEFAULT NULL,
  PRIMARY KEY (`idAuxiliar`),
  KEY `fk_Auxiliar_Especialidad1_idx` (`idEspecialidad`),
  CONSTRAINT `Auxiliar_ibfk_1` FOREIGN KEY (`idAuxiliar`) REFERENCES `Persona` (`idPersona`),
  CONSTRAINT `fk_Auxiliar_Especialidad1` FOREIGN KEY (`idEspecialidad`) REFERENCES `Especialidad` (`idEspecialidad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Auxiliar`
--

LOCK TABLES `Auxiliar` WRITE;
/*!40000 ALTER TABLE `Auxiliar` DISABLE KEYS */;
INSERT INTO `Auxiliar` VALUES (67,NULL,NULL),(70,NULL,NULL),(71,NULL,NULL),(72,NULL,NULL),(74,NULL,NULL),(75,NULL,NULL),(76,NULL,NULL),(77,21,1),(78,22,1),(79,22,1),(80,NULL,NULL),(81,20,1),(82,19,1),(83,25,1),(84,26,1),(85,NULL,NULL),(86,23,1),(87,26,1),(88,NULL,NULL),(89,NULL,NULL),(90,NULL,NULL),(91,NULL,NULL),(92,NULL,NULL),(93,NULL,NULL),(94,NULL,NULL),(95,NULL,NULL),(96,NULL,NULL),(98,NULL,NULL),(99,NULL,NULL),(100,22,1),(102,NULL,NULL),(103,NULL,NULL),(104,NULL,NULL),(105,NULL,NULL),(106,NULL,NULL),(107,NULL,NULL),(108,NULL,NULL),(109,NULL,NULL),(110,NULL,NULL),(111,NULL,NULL),(112,NULL,NULL),(113,NULL,NULL),(114,NULL,NULL),(115,NULL,NULL),(116,NULL,NULL),(117,NULL,NULL),(118,NULL,NULL),(119,NULL,NULL),(120,NULL,NULL),(121,NULL,NULL),(122,NULL,NULL),(123,NULL,NULL),(124,NULL,NULL),(125,NULL,NULL),(126,NULL,NULL),(127,NULL,NULL),(128,NULL,NULL),(129,NULL,NULL),(130,NULL,NULL),(131,NULL,NULL),(132,NULL,NULL),(133,NULL,NULL),(134,NULL,NULL),(135,NULL,NULL),(136,NULL,NULL),(137,NULL,NULL),(138,NULL,NULL),(139,NULL,NULL),(140,NULL,NULL),(141,18,1),(142,18,1),(143,18,1),(144,18,1),(145,18,1),(146,19,1),(147,19,1),(148,19,1),(149,19,1),(150,19,1),(151,20,1),(152,20,1),(153,20,1),(154,20,1),(155,20,1),(156,21,1),(157,21,1),(158,21,1),(159,21,1),(160,21,1),(161,22,1),(162,22,1),(163,22,1),(164,22,1),(165,22,1),(166,23,1),(167,23,1),(168,23,1),(169,23,1),(170,23,1),(171,24,1),(172,24,1),(173,24,1),(174,24,1),(175,24,1),(176,25,1),(177,25,1),(178,25,1),(179,25,1),(180,25,1),(181,26,1),(182,26,1),(183,26,1),(184,26,1),(185,26,1),(186,27,1),(187,27,1),(188,27,1),(189,27,1),(190,27,1),(191,18,1),(192,NULL,NULL),(196,NULL,NULL),(201,NULL,NULL),(202,NULL,NULL),(205,NULL,NULL),(206,24,1),(207,NULL,NULL),(208,NULL,NULL),(209,NULL,NULL),(210,NULL,NULL),(211,NULL,NULL),(212,NULL,NULL),(213,NULL,NULL),(214,NULL,NULL),(215,NULL,NULL);
/*!40000 ALTER TABLE `Auxiliar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CitaMedica`
--

DROP TABLE IF EXISTS `CitaMedica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CitaMedica` (
  `idCitaMedica` int NOT NULL AUTO_INCREMENT,
  `tipoCita` varchar(45) DEFAULT NULL,
  `estadoCita` varchar(45) DEFAULT NULL,
  `idHistorialMedico` int DEFAULT NULL,
  `idMedico` int DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `plataforma` varchar(45) DEFAULT NULL,
  `enlace` varchar(400) DEFAULT NULL,
  `duracion` time DEFAULT NULL,
  `numeroAmbiente` int DEFAULT NULL,
  `idPago` int DEFAULT NULL,
  `activo` tinyint DEFAULT NULL,
  `idPaciente` int NOT NULL,
  `recordatorio` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`idCitaMedica`,`idPaciente`),
  KEY `fk_citaMedica_historialMedico1_idx` (`idHistorialMedico`),
  KEY `fk_CitaMedica_Pago1_idx` (`idPago`),
  KEY `fk_CitaMedica_Paciente1_idx` (`idPaciente`),
  CONSTRAINT `fk_citaMedica_historialMedico1` FOREIGN KEY (`idHistorialMedico`) REFERENCES `HistorialMedico` (`idHistorialMedico`),
  CONSTRAINT `fk_CitaMedica_Paciente1` FOREIGN KEY (`idPaciente`) REFERENCES `Paciente` (`idPaciente`),
  CONSTRAINT `fk_CitaMedica_Pago1` FOREIGN KEY (`idPago`) REFERENCES `Pago` (`idPago`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CitaMedica`
--

LOCK TABLES `CitaMedica` WRITE;
/*!40000 ALTER TABLE `CitaMedica` DISABLE KEYS */;
INSERT INTO `CitaMedica` VALUES (15,'Virtual','Completada',NULL,70,'2024-11-12','23:55:00',NULL,NULL,'01:00:00',NULL,90,1,67,1),(16,'Virtual','Pendiente',2,76,'2024-11-20','15:30:00',NULL,NULL,'01:00:00',NULL,94,1,85,0),(17,'Virtual','Cancelada',2,70,'2024-11-26','11:00:00',NULL,NULL,'01:00:00',NULL,95,1,85,0),(18,'Virtual','Pendiente',2,74,'2024-11-29','14:30:00',NULL,NULL,'01:00:00',NULL,96,1,85,0),(19,'Presencial','Pendiente',2,70,'2024-11-27','10:00:00',NULL,NULL,'01:00:00',NULL,97,1,85,0),(20,'Virtual','Completada',NULL,70,'2024-11-13','09:00:00',NULL,NULL,'01:00:00',NULL,98,1,67,1),(21,'Presencial','Completada',NULL,70,'2024-11-15','15:00:00',NULL,NULL,'01:00:00',NULL,99,1,67,0),(22,'Virtual','Completada',NULL,70,'2024-11-19','14:00:00',NULL,NULL,'01:00:00',NULL,100,1,67,1),(23,'Virtual','Pendiente',NULL,70,'2024-11-20','12:00:00',NULL,NULL,'01:00:00',NULL,101,1,86,0),(24,'Presencial','Completada',NULL,70,'2024-11-10','17:00:00',NULL,NULL,'01:00:00',NULL,102,1,67,0),(25,'Presencial','Pendiente',NULL,70,'2024-11-09','16:00:00',NULL,NULL,'01:00:00',NULL,103,1,67,0),(26,'Virtual','Cancelada',2,70,'2024-11-15','08:00:00',NULL,NULL,'01:00:00',NULL,104,1,85,0),(27,'Presencial','Pendiente',2,70,'2024-11-16','13:00:00',NULL,NULL,'01:00:00',NULL,105,0,85,1),(28,'Virtual','Ausente',2,94,'2024-11-19','00:00:00',NULL,NULL,'01:00:00',NULL,106,1,85,0),(29,'Presencial','Cancelada',2,94,'2024-11-22','08:00:00',NULL,NULL,'01:00:00',0,107,1,85,0),(30,'Virtual','Completada',2,94,'2024-11-18','13:00:00','Zoom','www.zoom.com/12345','01:00:00',NULL,108,1,85,1),(31,'Virtual','Finalizada',8,94,'2024-11-22','10:00:00','Zoom','www.zoom.com','01:00:00',NULL,109,1,98,1),(32,'Presencial','Pendiente',NULL,90,'2026-05-15','14:00:00',NULL,NULL,'01:00:00',NULL,110,1,67,0),(33,'Presencial','Pendiente',NULL,74,'2025-12-18','16:30:00',NULL,NULL,'01:00:00',NULL,111,1,67,0),(34,'Virtual','Pendiente',NULL,116,'2026-06-05','00:00:00',NULL,NULL,'01:00:00',NULL,112,1,67,0),(35,'Presencial','Pendiente',NULL,136,'2027-04-29','17:00:00',NULL,NULL,'01:00:00',NULL,113,1,67,0),(36,'Presencial','Pendiente',NULL,122,'2026-03-20','17:00:00',NULL,NULL,'01:00:00',NULL,114,1,67,0),(37,'Virtual','Pendiente',NULL,124,'2027-04-29','19:00:00',NULL,NULL,'01:00:00',NULL,115,1,67,0),(38,'Virtual','Pendiente',NULL,127,'2027-02-23','12:00:00',NULL,NULL,'01:00:00',NULL,116,1,67,0),(39,'Presencial','Pendiente',NULL,132,'2026-06-17','20:00:00',NULL,NULL,'01:00:00',NULL,117,1,67,0),(40,'Virtual','Pendiente',NULL,114,'2025-10-25','18:00:00',NULL,NULL,'01:00:00',NULL,118,1,67,0),(41,'Virtual','Pendiente',NULL,121,'2026-01-16','13:00:00',NULL,NULL,'01:00:00',NULL,119,1,67,0),(42,'Virtual','Pendiente',NULL,104,'2026-06-17','16:00:00',NULL,NULL,'01:00:00',NULL,120,1,67,0),(43,'Virtual','Pendiente',NULL,104,'2024-12-18','14:00:00',NULL,NULL,'01:00:00',NULL,121,1,67,0),(44,'Virtual','Pendiente',NULL,99,'2024-11-21','12:00:00',NULL,NULL,'01:00:00',NULL,122,1,67,1),(45,'Presencial','Finalizada',NULL,76,'2024-11-24','14:00:00',NULL,NULL,'01:00:00',NULL,123,1,67,1),(46,'Presencial','Ausente',NULL,94,'2024-11-18','20:00:00',NULL,NULL,'01:00:00',NULL,126,1,98,0),(47,'Virtual','Confirmada',NULL,94,'2024-11-20','18:00:00','Zoom','www.zoom.com','01:00:00',NULL,128,1,98,0),(48,'Presencial','Reprogramada',NULL,94,'2024-12-04','17:00:00',NULL,NULL,'01:00:00',5,129,1,85,0),(49,'Virtual','Confirmada',NULL,94,'2024-12-04','18:00:00','Zoom','www.zoom.com','01:00:00',NULL,130,1,98,0),(50,'Presencial','Pendiente',8,70,'2024-11-20','10:00:00',NULL,NULL,'01:00:00',NULL,133,1,98,1),(51,'Virtual','Pendiente',2,94,'2024-12-01','19:00:00',NULL,NULL,'01:00:00',NULL,136,1,85,0),(52,'Presencial','Pendiente',2,208,'2024-11-25','09:00:00',NULL,NULL,'01:00:00',NULL,137,1,85,0);
/*!40000 ALTER TABLE `CitaMedica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CitaMedica_has_Procedimiento`
--

DROP TABLE IF EXISTS `CitaMedica_has_Procedimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CitaMedica_has_Procedimiento` (
  `idCitaMedica` int NOT NULL,
  `idProcedimiento` int NOT NULL,
  `idPago` int DEFAULT NULL,
  `asistencia` tinyint DEFAULT NULL,
  `observaciones` varchar(500) DEFAULT NULL,
  `fechaResultado` date DEFAULT NULL,
  `fechaRealizacion` date DEFAULT NULL,
  `horaRealizacion` time DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idCitaMedica`,`idProcedimiento`),
  KEY `fk_CitaMedica_has_Procedimiento_Procedimiento1_idx` (`idProcedimiento`),
  KEY `fk_CitaMedica_has_Procedimiento_CitaMedica1_idx` (`idCitaMedica`),
  KEY `fk_CitaMedica_has_Procedimiento_Pago1_idx` (`idPago`),
  CONSTRAINT `fk_CitaMedica_has_Procedimiento_CitaMedica1` FOREIGN KEY (`idCitaMedica`) REFERENCES `CitaMedica` (`idCitaMedica`),
  CONSTRAINT `fk_CitaMedica_has_Procedimiento_Pago1` FOREIGN KEY (`idPago`) REFERENCES `Pago` (`idPago`),
  CONSTRAINT `fk_CitaMedica_has_Procedimiento_Procedimiento1` FOREIGN KEY (`idProcedimiento`) REFERENCES `Procedimiento` (`idProcedimiento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CitaMedica_has_Procedimiento`
--

LOCK TABLES `CitaMedica_has_Procedimiento` WRITE;
/*!40000 ALTER TABLE `CitaMedica_has_Procedimiento` DISABLE KEYS */;
INSERT INTO `CitaMedica_has_Procedimiento` VALUES (15,26,90,1,'Radiografía completada con éxito','2024-11-13','0001-01-03',NULL,0),(15,28,NULL,0,'Intervención quirúrgica',NULL,'2024-11-16','09:00:00',1),(15,31,NULL,0,'Asignado por el médico',NULL,NULL,'17:00:00',1),(15,32,NULL,0,'Intervención quirúrgica','2024-11-19','2024-11-17','10:00:00',1),(15,40,NULL,0,'Asignado por el médico',NULL,NULL,'13:00:00',1),(16,28,88,1,'Resonancia realizada sin complicaciones','2024-11-14','2024-11-18','11:00:00',1),(17,28,NULL,0,'Asignado por el médico',NULL,'2024-11-29','15:00:00',1),(17,30,89,0,'Paciente no asistió',NULL,'2024-11-19','12:00:00',1),(17,31,NULL,0,'Asignado por el médico',NULL,'2024-11-28','08:00:00',1),(17,40,NULL,0,'Asignado por el médico',NULL,'2024-11-28','09:00:00',1),(18,32,90,1,'Vasectomía realizada con éxito','2024-11-15','2024-11-20','13:00:00',1),(19,30,91,1,'Rayos X solicitados para revisión','2024-11-16','2024-11-21','14:00:00',1),(20,29,94,1,'El paciente asisitio','2024-11-03','2024-11-04','09:00:00',1),(21,34,95,1,'Operación completada, seguimiento en una semana','2024-11-17','2024-11-03','11:00:00',1),(22,28,96,1,'Resonancia realizada sin complicaciones','2024-11-18','2024-11-24','17:00:00',1),(23,33,97,1,'Preparación quirúrgica realizada','2024-11-19','2024-11-01','10:00:00',1),(24,31,98,1,'Rayos X listos, enviar a análisis','2024-11-20','2024-11-02','08:00:00',1),(24,33,NULL,1,'Rayos X listos, enviar a especialista','2024-11-20','2024-11-26','19:00:00',1),(45,28,NULL,0,'Fotos por medios de ondas',NULL,'2024-11-27','08:00:00',1),(45,31,NULL,0,'Uso de radiación para toma de imágenes',NULL,'2024-11-27','09:00:00',1),(45,32,NULL,0,'Intervención quirúrgica',NULL,'2024-11-27','10:00:00',1);
/*!40000 ALTER TABLE `CitaMedica_has_Procedimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Comunicacion`
--

DROP TABLE IF EXISTS `Comunicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Comunicacion` (
  `idComunicacion` int NOT NULL AUTO_INCREMENT,
  `tipoComunicacion` varchar(500) DEFAULT NULL,
  `contenido` varchar(400) DEFAULT NULL,
  `fechaComunicacion` date DEFAULT NULL,
  `activo` tinyint DEFAULT NULL,
  `idPaciente` int DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `respuesta` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`idComunicacion`),
  KEY `idPaciente` (`idPaciente`),
  CONSTRAINT `Comunicacion_ibfk_1` FOREIGN KEY (`idPaciente`) REFERENCES `Paciente` (`idPaciente`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Comunicacion`
--

LOCK TABLES `Comunicacion` WRITE;
/*!40000 ALTER TABLE `Comunicacion` DISABLE KEYS */;
INSERT INTO `Comunicacion` VALUES (43,'Queja','El médico se retrasó 30 minutos en la consulta.','2024-01-15',1,82,'RECIBIDA',''),(44,'Sugerencia','Sería bueno tener un área de espera más cómoda.','2024-02-10',1,83,'PENDIENTE',''),(45,'Queja','No recibí los resultados de mis análisis en la fecha prometida.','2024-03-05',1,84,'RESPONDIDA','Los resultados estarán disponibles mañana.'),(46,'Sugerencia','Considerar más opciones de pago online.','2024-04-22',1,85,'FINALIZADA','Gracias por su sugerencia, la estamos evaluando.'),(47,'Queja','El sistema de citas web no funciona correctamente.','2024-05-01',1,82,'PENDIENTE',''),(48,'Sugerencia','Incluir más especialidades médicas.','2024-06-15',1,83,'RECIBIDA',''),(49,'Queja','No se respetó mi cita programada.','2024-07-20',1,84,'RESPONDIDA','Lamentamos el inconveniente, se reprogramará su cita.'),(50,'Sugerencia','Sería útil recibir recordatorios de citas por SMS.','2024-08-10',1,85,'FINALIZADA','Gracias por la sugerencia, la implementaremos pronto.'),(51,'Queja','Falta de personal en recepción.','2024-08-10',1,82,'RECIBIDA',''),(52,'Sugerencia','Mejorar la atención telefónica.','2024-08-10',1,83,'PENDIENTE',''),(53,'Queja','No me entregaron mi receta médica.','2024-08-10',1,84,'RESPONDIDA','La receta fue enviada por correo.'),(54,'Queja','El médico canceló la cita sin aviso.','2024-09-25',1,85,'FINALIZADA','Lamentamos el inconveniente.'),(55,'Sugerencia','Agregar más médicos especialistas.','2024-10-30',1,82,'RECIBIDA',''),(56,'Queja','El sistema de citas no guarda los cambios.','2024-11-05',1,83,'PENDIENTE',''),(57,'Sugerencia','Ofrecer consultas virtuales.','2024-11-15',1,84,'RESPONDIDA','Estamos evaluando esta opción.'),(58,'Queja','Demora en la entrega de resultados.','2024-12-20',1,85,'FINALIZADA','Se ha corregido el problema en el laboratorio.'),(59,'Queja','Demasiada espera en el laboratorio.','2024-12-20',1,82,'RECIBIDA',''),(60,'Sugerencia','Ofrecer descuentos para pacientes frecuentes.','2024-12-20',0,83,'PENDIENTE',''),(61,'Sugerencia','xddd','2024-11-13',1,84,'RECIBIDA','RESPUESTA PENDIENTE'),(63,'Sugerencia','sss','2024-11-13',0,84,'RECIBIDA','RESPUESTA PENDIENTE'),(64,'Queja','bbb','2024-11-13',0,84,'RECIBIDA','RESPUESTA PENDIENTE'),(65,'Queja','sxdd','2024-11-13',0,84,'RECIBIDA','RESPUESTA PENDIENTE'),(66,'Queja','mnnnn','2024-11-13',0,84,'RECIBIDA','RESPUESTA PENDIENTE'),(67,'Sugerencia','todos los ascensores deben estar operativos','2024-11-17',1,84,'RECIBIDA','RESPUESTA PENDIENTE'),(68,'Queja','no habia papel en el baño ','2024-11-18',1,84,'RECIBIDA','RESPUESTA PENDIENTE'),(69,'Queja','mmmm','2024-11-18',0,84,'RECIBIDA','RESPUESTA PENDIENTE'),(70,'Sugerencia','Deben mejorar la iluminacion','2024-11-19',1,84,'RECIBIDA','RESPUESTA PENDIENTE');
/*!40000 ALTER TABLE `Comunicacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Especialidad`
--

DROP TABLE IF EXISTS `Especialidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Especialidad` (
  `idEspecialidad` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(80) DEFAULT NULL,
  `costoConsulta` double DEFAULT NULL,
  `activo` tinyint DEFAULT NULL,
  PRIMARY KEY (`idEspecialidad`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Especialidad`
--

LOCK TABLES `Especialidad` WRITE;
/*!40000 ALTER TABLE `Especialidad` DISABLE KEYS */;
INSERT INTO `Especialidad` VALUES (18,'Cardiología',150,1),(19,'Dermatología',100,1),(20,'Gastroenterología',130,1),(21,'Neurología',350,1),(22,'Pediatría',90,1),(23,'Ginecología',120,1),(24,'Oftalmología',110,1),(25,'Oncología',300,1),(26,'Endocrinología',115,1),(27,'Reumatología',160,1),(28,'Medicina General',330,0),(29,'Psiquiatría',330,0),(30,'Traumatología',180,0),(31,'Odontología',180,0),(32,'Urología',350,0),(33,'Fisioterapia',350,0),(34,'Neumología',95,0),(35,'Programacion3',330,1),(36,'Alergologia',100,1);
/*!40000 ALTER TABLE `Especialidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HistorialMedico`
--

DROP TABLE IF EXISTS `HistorialMedico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `HistorialMedico` (
  `idHistorialMedico` int NOT NULL AUTO_INCREMENT,
  `fechaCreacion` date DEFAULT NULL,
  `activo` tinyint DEFAULT NULL,
  `idPaciente` int NOT NULL,
  `enferPreExist` varchar(120) DEFAULT NULL,
  `alergias` varchar(120) DEFAULT NULL,
  `cirugiasPrevias` varchar(120) DEFAULT NULL,
  `vacunas` varchar(120) DEFAULT NULL,
  `peso` double DEFAULT NULL,
  `altura` double DEFAULT NULL,
  `tipoSangre` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`idHistorialMedico`,`idPaciente`),
  KEY `fk_HistorialMedico_Paciente1_idx` (`idPaciente`),
  CONSTRAINT `fk_HistorialMedico_Paciente1` FOREIGN KEY (`idPaciente`) REFERENCES `Paciente` (`idPaciente`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HistorialMedico`
--

LOCK TABLES `HistorialMedico` WRITE;
/*!40000 ALTER TABLE `HistorialMedico` DISABLE KEYS */;
INSERT INTO `HistorialMedico` VALUES (1,'2024-10-12',0,86,'ofidismo','polen','cabeza','covid',60,1.68,'B+'),(2,'2024-10-12',0,85,'malaria','polvo','cuello','sarampion',70.5,1.8,'O+'),(3,'2024-10-12',1,84,'gastritis','polen','pierna','hepatitis',50,1.9,'O+'),(4,'2024-10-12',0,83,'malaria,gastritis','polvo,polen','cabeza','hepatitis,sarampion',50.5,1.6,'O+'),(5,'2024-10-12',1,82,'gastritis','polen','cuello','covid',50,1.8,'O+'),(6,'2024-10-12',1,81,'ofidismo','polen','cabeza','hepatitis',70,1.5,'O+'),(7,'2024-11-13',1,88,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'2024-11-17',1,98,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'2024-11-19',1,192,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'2024-11-20',1,205,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,'2024-11-20',1,207,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,'2024-11-24',1,211,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `HistorialMedico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Medico`
--

DROP TABLE IF EXISTS `Medico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Medico` (
  `idMedico` int NOT NULL,
  `idEspecialidad` int DEFAULT NULL,
  `numColegiatura` varchar(50) DEFAULT NULL,
  `horaInicioTrabajo` time DEFAULT NULL,
  `horaFinTrabajo` time DEFAULT NULL,
  `diasLaborales` varchar(200) DEFAULT NULL,
  `anhosExp` int DEFAULT NULL,
  `activo` tinyint DEFAULT NULL,
  PRIMARY KEY (`idMedico`),
  KEY `fk_medico_especialidad1_idx` (`idEspecialidad`),
  CONSTRAINT `fk_medico_especialidad1` FOREIGN KEY (`idEspecialidad`) REFERENCES `Especialidad` (`idEspecialidad`),
  CONSTRAINT `Medico_ibfk_1` FOREIGN KEY (`idMedico`) REFERENCES `Persona` (`idPersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Medico`
--

LOCK TABLES `Medico` WRITE;
/*!40000 ALTER TABLE `Medico` DISABLE KEYS */;
INSERT INTO `Medico` VALUES (67,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(70,20,'C-12345','10:00:00','20:00:00','Lunes-Martes-Miercoles',5,1),(71,20,'AB123456','08:00:00','17:00:00','Lunes- Martes- Miércoles- Jueves-Viernes',10,1),(72,25,'ABC123','12:00:00','20:00:00','Lunes, Martes, Miercoles',5,1),(74,22,'EF987654','07:00:00','16:00:00','Martes-Jueves-Viernes',8,1),(75,24,'GH123789','10:00:00','19:00:00','Lunes-Miercoles-Viernes',3,1),(76,27,'JK234567','09:00:00','18:00:00','Lunes-Miercoles-Viernes',12,1),(77,25,'UV321456','10:00:00','17:00:00','Martes-Jueves-Sábado',9,1),(78,24,'C486','15:00:00','22:00:00','Lunes, Miercoles, Viernes',8,0),(79,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(80,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(81,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(82,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(83,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(84,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(85,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(86,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(87,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(88,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(89,24,'38089','08:00:00','16:00:00','Martes-Jueves-Sábado',2,1),(90,22,'70771','08:00:00','16:00:00','Lunes-Miércoles-Jueves',16,1),(91,20,'77451','08:00:00','16:00:00','Lunes-Miércoles-Viernes',15,1),(92,25,'87054','08:00:00','16:00:00','Martes-Viernes-Sábado',9,1),(93,23,'49047','08:00:00','16:00:00','Lunes-Martes-Viernes',11,1),(94,23,'MED123','15:00:00','20:00:00','Lunes-Martes-Viernes',25,1),(95,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(96,18,'ABC5240','15:00:00','20:00:00','Martes-Jueves-Viernes',5,1),(98,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(99,18,'C46','07:00:00','13:00:00','Lunes, Martes. Miercoles',10,1),(100,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(102,18,'48774','08:00:00','14:00:00','Lunes-Miércoles-Jueves',10,1),(103,18,'53758','08:00:00','14:00:00','Lunes-Martes-Miércoles',20,1),(104,18,'39805','10:00:00','16:00:00','Martes-Jueves-Sábado',10,1),(105,19,'11538','09:00:00','15:00:00','Martes-Viernes-Sábado',7,1),(106,19,'68774','11:00:00','19:00:00','Martes-Jueves-Sábado-Domingo',12,1),(107,19,'37075','14:00:00','20:00:00','Lunes-Jueves-Sábado',17,1),(108,20,'87487','15:00:00','20:00:00','Lunes-Jueves-Sábado',3,1),(109,20,'14740','16:00:00','22:00:00','Lunes-Martes-Miércoles',6,1),(110,20,'68702','10:00:00','15:00:00','Martes-Jueves-Sábado-Domingo',11,1),(111,21,'96943','07:00:00','11:00:00','Lunes-Miércoles-Jueves',20,1),(112,21,'27054','08:00:00','13:00:00','Lunes-Martes-Viernes',3,1),(113,21,'10672','09:00:00','14:00:00','Martes-Jueves-Sábado',11,1),(114,22,'16163','15:00:00','20:00:00','Lunes-Martes-Viernes',11,1),(115,22,'18371','17:00:00','22:00:00','Lunes-Jueves-Sábado',10,1),(116,22,'15842','16:00:00','21:00:00','Lunes-Martes-Viernes',6,1),(117,23,'57221','15:00:00','20:00:00','Martes-Viernes-Sábado',7,1),(118,23,'49076','10:00:00','14:00:00','Lunes-Jueves-Sábado',17,1),(119,23,'56624','08:00:00','14:00:00','Martes-Jueves-Sábado',13,1),(120,24,'22479','07:00:00','13:00:00','Lunes-Martes-Viernes',16,1),(121,24,'80819','09:00:00','13:00:00','Lunes-Miércoles-Viernes',21,1),(122,24,'90347','14:00:00','18:00:00','Martes-Viernes-Sábado',18,1),(123,25,'66711','15:00:00','21:00:00','Martes-Jueves-Sábado-Domingo',7,1),(124,25,'19206','17:00:00','22:00:00','Lunes-Martes-Viernes',3,1),(125,25,'54761','08:00:00','13:00:00','Lunes-Martes-Viernes',7,1),(126,26,'62379','07:00:00','11:00:00','Lunes-Jueves-Sábado',7,1),(127,26,'87746','10:00:00','15:00:00','Lunes-Miércoles-Jueves',9,1),(128,26,'42628','14:00:00','18:00:00','Lunes-Miércoles-Viernes-Domingo',2,1),(129,26,'63490','14:00:00','18:00:00','Martes-Viernes-Sábado',13,1),(130,26,'97425','15:00:00','19:00:00','Lunes-Miércoles-Viernes',17,1),(131,26,'39558','16:00:00','21:00:00','Lunes-Martes-Miércoles',14,1),(132,27,'64415','18:00:00','22:00:00','Lunes-Miércoles-Viernes-Domingo',21,1),(133,27,'95804','10:00:00','14:00:00','Lunes-Martes-Viernes',10,1),(134,27,'73991','08:00:00','13:00:00','Martes-Jueves-Sabado',6,1),(135,19,'96593','15:00:00','20:00:00','Martes-Jueves-Sábado-Domingo',20,1),(136,19,'47290','15:00:00','18:00:00','Martes-Jueves-Sábado',3,1),(137,19,'24234','10:00:00','14:00:00','Martes-Jueves-Sábado-Domingo',14,1),(138,21,'60402','08:00:00','11:00:00','Martes-Viernes-Sábado',6,1),(139,21,'24676','14:00:00','18:00:00','Lunes-Miércoles-Viernes',1,1),(140,21,'19774','16:00:00','22:00:00','Lunes-Jueves-Sábado',14,1),(141,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(142,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(143,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(144,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(145,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(146,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(147,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(148,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(149,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(150,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(151,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(152,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(153,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(154,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(155,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(156,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(157,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(158,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(159,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(160,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(161,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(162,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(163,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(164,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(165,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(166,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(167,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(168,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(169,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(170,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(171,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(172,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(173,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(174,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(175,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(176,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(177,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(178,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(179,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(180,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(181,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(182,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(183,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(184,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(185,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(186,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(187,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(188,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(189,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(190,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(191,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(192,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(196,22,'ABC195','08:00:00','13:00:00','',4,1),(201,18,'C886','16:00:00','23:00:00','Martes, Miercoles, Viernes',3,1),(202,24,'C886','01:00:00','23:00:00','Lunes, Martes. Miercoles',5,1),(205,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(206,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(207,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(208,35,'C45','09:00:00','16:00:00','Lunes - Viernes - Domingo',3,1),(209,24,'C886','13:00:00','18:00:00','Lunes-Jueves-Viernes',5,1),(210,23,'C46','16:46:00','19:44:00','Viernes',10,1),(211,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(212,36,'C886','00:00:00','00:00:00','Lunes-Martes-Jueves',5,1),(213,36,'C46','00:00:00','00:00:00','Lunes-Martes-Jueves',10,1),(214,36,'C886','21:00:00','23:00:00','Martes-Jueves',10,1),(215,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `Medico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Paciente`
--

DROP TABLE IF EXISTS `Paciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Paciente` (
  `idPaciente` int NOT NULL,
  `historialActivo` tinyint DEFAULT NULL,
  `activo` tinyint DEFAULT NULL,
  PRIMARY KEY (`idPaciente`),
  CONSTRAINT `Paciente_ibfk_1` FOREIGN KEY (`idPaciente`) REFERENCES `Persona` (`idPersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Paciente`
--

LOCK TABLES `Paciente` WRITE;
/*!40000 ALTER TABLE `Paciente` DISABLE KEYS */;
INSERT INTO `Paciente` VALUES (67,NULL,0),(70,NULL,NULL),(71,NULL,NULL),(72,NULL,0),(74,NULL,NULL),(75,1,1),(76,NULL,NULL),(77,NULL,NULL),(78,1,1),(79,0,1),(80,0,1),(81,1,1),(82,1,1),(83,0,1),(84,1,1),(85,0,1),(86,0,1),(87,NULL,NULL),(88,0,1),(89,1,1),(90,NULL,NULL),(91,NULL,NULL),(92,NULL,NULL),(93,NULL,NULL),(94,NULL,NULL),(95,NULL,NULL),(96,NULL,NULL),(98,0,1),(99,NULL,NULL),(100,NULL,NULL),(102,NULL,NULL),(103,NULL,NULL),(104,NULL,NULL),(105,NULL,NULL),(106,NULL,NULL),(107,NULL,NULL),(108,NULL,NULL),(109,NULL,NULL),(110,NULL,NULL),(111,NULL,NULL),(112,NULL,NULL),(113,NULL,NULL),(114,NULL,NULL),(115,NULL,NULL),(116,NULL,NULL),(117,NULL,NULL),(118,NULL,NULL),(119,NULL,NULL),(120,NULL,NULL),(121,NULL,NULL),(122,NULL,NULL),(123,NULL,NULL),(124,NULL,NULL),(125,NULL,NULL),(126,NULL,NULL),(127,NULL,NULL),(128,NULL,NULL),(129,NULL,NULL),(130,NULL,NULL),(131,NULL,NULL),(132,NULL,NULL),(133,NULL,NULL),(134,NULL,NULL),(135,NULL,NULL),(136,NULL,NULL),(137,NULL,NULL),(138,NULL,NULL),(139,NULL,NULL),(140,NULL,NULL),(141,NULL,NULL),(142,NULL,NULL),(143,NULL,NULL),(144,NULL,NULL),(145,NULL,NULL),(146,NULL,NULL),(147,NULL,NULL),(148,NULL,NULL),(149,NULL,NULL),(150,NULL,NULL),(151,NULL,NULL),(152,NULL,NULL),(153,NULL,NULL),(154,NULL,NULL),(155,NULL,NULL),(156,NULL,NULL),(157,NULL,NULL),(158,NULL,NULL),(159,NULL,NULL),(160,NULL,NULL),(161,NULL,NULL),(162,NULL,NULL),(163,NULL,NULL),(164,NULL,NULL),(165,NULL,NULL),(166,NULL,NULL),(167,NULL,NULL),(168,NULL,NULL),(169,NULL,NULL),(170,NULL,NULL),(171,NULL,NULL),(172,NULL,NULL),(173,NULL,NULL),(174,NULL,NULL),(175,NULL,NULL),(176,NULL,NULL),(177,NULL,NULL),(178,NULL,NULL),(179,NULL,NULL),(180,NULL,NULL),(181,NULL,NULL),(182,NULL,NULL),(183,NULL,NULL),(184,NULL,NULL),(185,NULL,NULL),(186,NULL,NULL),(187,NULL,NULL),(188,NULL,NULL),(189,NULL,NULL),(190,NULL,NULL),(191,NULL,NULL),(192,0,1),(196,NULL,NULL),(201,NULL,NULL),(202,1,1),(205,1,1),(206,NULL,NULL),(207,0,1),(208,1,1),(209,NULL,NULL),(210,NULL,NULL),(211,0,1),(212,NULL,NULL),(213,NULL,NULL),(214,NULL,NULL),(215,NULL,NULL);
/*!40000 ALTER TABLE `Paciente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Paciente_has_Aseguradora`
--

DROP TABLE IF EXISTS `Paciente_has_Aseguradora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Paciente_has_Aseguradora` (
  `Paciente_idPaciente` int NOT NULL,
  `Aseguradora_idAseguradora` int NOT NULL,
  PRIMARY KEY (`Paciente_idPaciente`,`Aseguradora_idAseguradora`),
  KEY `fk_Paciente_has_Aseguradora_Aseguradora1_idx` (`Aseguradora_idAseguradora`),
  KEY `fk_Paciente_has_Aseguradora_Paciente1_idx` (`Paciente_idPaciente`),
  CONSTRAINT `fk_Paciente_has_Aseguradora_Aseguradora1` FOREIGN KEY (`Aseguradora_idAseguradora`) REFERENCES `Aseguradora` (`idAseguradora`),
  CONSTRAINT `fk_Paciente_has_Aseguradora_Paciente1` FOREIGN KEY (`Paciente_idPaciente`) REFERENCES `Paciente` (`idPaciente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Paciente_has_Aseguradora`
--

LOCK TABLES `Paciente_has_Aseguradora` WRITE;
/*!40000 ALTER TABLE `Paciente_has_Aseguradora` DISABLE KEYS */;
INSERT INTO `Paciente_has_Aseguradora` VALUES (85,6),(85,7),(86,7);
/*!40000 ALTER TABLE `Paciente_has_Aseguradora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pago`
--

DROP TABLE IF EXISTS `Pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pago` (
  `idPago` int NOT NULL AUTO_INCREMENT,
  `descuentoPorSeguro` double DEFAULT NULL,
  `montoParcial` double NOT NULL,
  `montoTotal` double NOT NULL,
  `fechaPago` date DEFAULT NULL,
  `concepto` varchar(100) DEFAULT NULL,
  `estado` tinyint NOT NULL,
  `idPaciente` int NOT NULL,
  PRIMARY KEY (`idPago`,`idPaciente`),
  KEY `fk_Pago_Paciente1_idx` (`idPaciente`),
  CONSTRAINT `fk_Pago_Paciente1` FOREIGN KEY (`idPaciente`) REFERENCES `Paciente` (`idPaciente`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pago`
--

LOCK TABLES `Pago` WRITE;
/*!40000 ALTER TABLE `Pago` DISABLE KEYS */;
INSERT INTO `Pago` VALUES (87,0,130,130,'2024-11-12','Pago de cita médica',1,67),(88,0,130,130,'2024-11-12','Pago de cita médica',1,67),(89,0,130,130,'2024-11-12','Pago de cita médica',1,67),(90,0,130,130,'2024-11-12','Pago de cita médica',1,67),(91,0,130,130,'2024-11-13','Pago de cita médica',1,67),(94,0,0,150,'2024-11-13','Pago de cita médica',1,85),(95,0,0,130,'2024-11-13','Pago de cita médica',1,85),(96,0,0,90,'2024-11-13','Pago de cita médica',1,85),(97,0,0,130,'2024-11-13','Pago de cita médica',1,85),(98,0,0,130,'2024-11-13','Pago de cita médica',1,67),(99,0,130,130,'2024-11-13','Pago de cita médica',1,67),(100,0,130,130,'2024-11-13','Pago de cita médica',1,67),(101,0,130,130,'2024-11-13','Pago de cita médica',1,86),(102,0,130,130,'2024-11-13','Pago de cita médica',1,67),(103,0,130,130,'2024-11-13','Pago de cita médica',1,67),(104,0.225,130,100.75,'2024-11-14','Pago de cita médica',1,85),(105,0.125,130,113.75,'2024-11-14','Pago de cita médica',1,85),(106,0.125,120,105,'2024-11-15','Pago de cita médica',1,85),(107,0.125,120,105,'2024-11-15','Pago de cita médica',1,85),(108,0.225,120,93,'2024-11-15','Pago de cita médica',1,85),(109,0,120,120,'2024-11-17','Pago de cita médica',1,98),(110,0,90,90,'2024-11-18','Pago de cita médica',1,67),(111,0,90,90,'2024-11-18','Pago de cita médica',1,67),(112,0,90,90,'2024-11-18','Pago de cita médica',1,67),(113,0,100,100,'2024-11-18','Pago de cita médica',1,67),(114,0,110,110,'2024-11-18','Pago de cita médica',1,67),(115,0,300,300,'2024-11-18','Pago de cita médica',1,67),(116,0,115,115,'2024-11-18','Pago de cita médica',1,67),(117,0,160,160,'2024-11-18','Pago de cita médica',1,67),(118,0,90,90,'2024-11-18','Pago de cita médica',1,67),(119,0,110,110,'2024-11-18','Pago de cita médica',1,67),(120,0,150,150,'2024-11-18','Pago de cita médica',1,67),(121,0,150,150,'2024-11-18','Pago de cita médica',1,67),(122,0,150,150,'2024-11-18','Pago de cita médica',1,67),(123,0,160,160,'2024-11-18','Pago de cita médica',1,67),(124,0,120,120,'2024-11-19','Pago de cita médica',1,85),(125,0,120,120,'2024-11-19','Pago de cita médica',1,98),(126,0,120,120,'2024-11-19','Pago de cita médica',1,98),(127,0,300,300,'2024-11-19','Pago de cita médica',1,192),(128,0,120,120,'2024-11-19','Pago de cita médica',1,98),(129,0,120,120,'2024-11-20','Pago de cita médica',1,85),(130,0,120,120,'2024-11-20','Pago de cita médica',1,98),(131,0,120,120,'2024-11-20','Pago de cita médica',1,98),(132,0,130,130,'2024-11-20','Pago de cita médica',1,98),(133,0,130,130,'2024-11-20','Pago de cita médica',1,98),(134,0,330,330,'2024-11-20','Pago de cita médica',1,85),(135,0.225,120,93,'2024-11-23','Pago de cita médica',1,85),(136,0.225,120,93,'2024-11-23','Pago de cita médica',1,85),(137,0.125,330,288.75,'2024-11-25','Pago de cita médica',1,85);
/*!40000 ALTER TABLE `Pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Persona`
--

DROP TABLE IF EXISTS `Persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Persona` (
  `idPersona` int NOT NULL AUTO_INCREMENT,
  `DNI` varchar(20) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `apellido` varchar(60) NOT NULL,
  `correoElectronico` varchar(45) NOT NULL,
  `numTelefono` int DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `fechaNacimiento` date DEFAULT NULL,
  `genero` char(1) DEFAULT NULL,
  PRIMARY KEY (`idPersona`),
  UNIQUE KEY `DNI_UNIQUE` (`DNI`)
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Persona`
--

LOCK TABLES `Persona` WRITE;
/*!40000 ALTER TABLE `Persona` DISABLE KEYS */;
INSERT INTO `Persona` VALUES (67,'72869624','Joseph','Aparicio','joseph_539_11@hotmail.com',12354,'metropolis','2000-11-11','M'),(70,'12345672','Juan','Pérez','juan.perez@example.com',123456789,'Calle Ficticia 123','1990-01-01','M'),(71,'12345670','Miguel','Martinez','miguel@gmail.com',432434,'Calle Las Flores 123','1990-02-07','M'),(72,'23456781','María','Gómez','maria.gomez@mail.com',987654321,'Avenida Central 456','1990-03-15','F'),(74,'34567892','Carlos','López','carlos.lopez@mail.com',135792468,'Calle Real 789','1985-12-25','M'),(75,'45678903','Lucía','Martínez','lucia.martinez@mail.com',246813579,'Calle Sol 101','1995-06-10','F'),(76,'56789014','Ricardo','Sánchez','ricardo.sanchez@mail.com',111223344,'Calle Mayor 200','1982-09-22','M'),(77,'01234569','Robertooo','Álvarez','roberto.alvarez@mail.com',987321654,'Calle del Mar 303','1983-05-10','M'),(78,'42341325','Carlos','Ramirez','carlos.ramirez@example.com',987654321,'Av. Siempre Viva 123','1990-05-12','M'),(79,'32984132','Ana','Lopez','ana.lopez@example.com',998877665,'Calle Falsa 456','1985-09-18','F'),(80,'11223344','Luisa','Martinez','luisa.martinez@example.com',912345678,'Av. Los Jardines 789','1978-03-22','F'),(81,'45678234','Roberto','Hernández','roberto.hernandez@example.com',962345678,'Jr. Las Gardenias 456','2000-09-04','M'),(82,'67891234','Laura','Salazar','laura.salazar@example.com',973456789,'Calle Primavera 789','1993-02-28','M'),(83,'56783412','Andrés','Morales','andres.morales@example.com',984567123,'Av. El Bosque 321','1984-12-15','M'),(84,'78945612','Emeleyn','Paredes','elena.paredes@example.com',995678123,'Calle del Sol 456','1995-06-18','F'),(85,'71467588','Diego','Castilla','dcastilla@pucp.edu.pe',959124682,'San Miguel, Lima','2003-08-10','M'),(86,'73542927','Gianfrancoasd','Poma Canchari','gianfranco.mpc@gmail.com',949243834,'Av.Gaviotas','2000-10-27','F'),(87,'12121212','Martin','Rosales','izi@gmail.com',123431243,'Lima','2004-06-13','M'),(88,'78654236','Frank','Poma','a20185721@pucp.edu.pe',948567354,'Av.','2004-08-19','M'),(89,'12496220','Sergio','Silva','sergio.silva@ejemplo.com',909281014,'Calle 11','1990-05-17','F'),(90,'44340541','Leandro','Ríos','leandro.ríos@ejemplo.com',906730373,'Calle 32','1990-11-10','F'),(91,'72128717','Adriano','Vargas','adriano.vargas@ejemplo.com',900130268,'Calle 6','1990-06-01','M'),(92,'36191030','Marta','Vargas','marta.vargas@ejemplo.com',906981042,'Calle 42','1990-07-16','F'),(93,'40549927','Leandro','Silva','leandro.silva@ejemplo.com',903804669,'Calle 77','1990-03-12','F'),(94,'77777777','Romulin','Rosales','dcastilla@pucp.edu.pe',959124682,'San Miguel, Lima','2000-01-20','M'),(95,'66666666','Elsa','Capuntass','dcastilla@pucp.edu.pe',959124682,'San Miguel, Lima','2000-02-15','M'),(96,'45245190','Patricio','Meléndez','medico@hotmail.com',432233,'Residencial San Felipe','1984-01-23','M'),(98,'71717171','Max','Jacinto','dcastilla@pucp.edu.pe',959124682,'San Miguel, Lima','2004-02-18','M'),(99,'88877744','pacientePrueba','pacientePrueba','geremylozano@gmail.com',999888777,'San Lucas','2024-10-29','M'),(100,'22222222','auxiliarPrueba','auxiliarPrueba','geremylozano@gmail.com',999555111,'San Pedro','2024-10-29','M'),(102,'87666405','Mateo','González','mateo.gonzález@ejemplo.com',906430304,'Calle 3','1990-11-20','F'),(103,'16753330','Joaquín','Pérez','joaquín.pérez@ejemplo.com',904988155,'Calle 44','1990-04-26','F'),(104,'57180278','Mateo','Ramírez','mateo.ramírez@ejemplo.com',902763245,'Calle 40','1990-06-27','M'),(105,'25615918','Sofía','Fernández','sofía.fernández@ejemplo.com',909017134,'Calle 81','1990-04-02','M'),(106,'95619274','Ariadna','Navarro','ariadna.navarro@ejemplo.com',908082111,'Calle 95','1990-06-04','M'),(107,'87781689','Camila','López','camila.lópez@ejemplo.com',903099429,'Calle 95','1990-07-23','F'),(108,'77222323','Ariadna','González','ariadna.gonzález@ejemplo.com',905880181,'Calle 99','1990-09-17','M'),(109,'67410859','Mateo','Pérez','mateo.pérez@ejemplo.com',905893900,'Calle 32','1990-10-03','M'),(110,'11408130','Simón','González','simón.gonzález@ejemplo.com',904926616,'Calle 28','1990-01-13','F'),(111,'46450579','Valentina','Ramírez','valentina.ramírez@ejemplo.com',905287141,'Calle 36','1990-06-05','F'),(112,'59917609','Lucía','Ramírez','lucía.ramírez@ejemplo.com',900195922,'Calle 88','1990-01-25','F'),(113,'70926130','Simón','Navarro','simón.navarro@ejemplo.com',906395660,'Calle 29','1990-08-03','F'),(114,'12972252','Ariadna','Ramírez','ariadna.ramírez@ejemplo.com',902614211,'Calle 39','1990-05-26','M'),(115,'09543382','Joaquín','Torres','joaquín.torres@ejemplo.com',907308109,'Calle 63','1990-05-23','F'),(116,'00829112','Valentina','Cruz','valentina.cruz@ejemplo.com',903180691,'Calle 52','1990-06-13','F'),(117,'44082663','Simón','González','simón.gonzález@ejemplo.com',901699233,'Calle 58','1990-05-27','F'),(118,'45156026','Hugo','Ortega','hugo.ortega@ejemplo.com',903916222,'Calle 50','1990-02-08','F'),(119,'57453711','Emilio','Pérez','emilio.pérez@ejemplo.com',907440941,'Calle 81','1990-03-17','M'),(120,'01196477','Valentina','Pérez','valentina.pérez@ejemplo.com',908419455,'Calle 22','1990-05-11','M'),(121,'27552127','Hugo','López','hugo.lópez@ejemplo.com',901906886,'Calle 27','1990-05-03','M'),(122,'04374777','Joaquín','Cruz','joaquín.cruz@ejemplo.com',901848110,'Calle 13','1990-01-27','F'),(123,'00681098','Emilio','López','emilio.lópez@ejemplo.com',908484854,'Calle 70','1990-10-17','F'),(124,'03193868','Emilio','Navarro','emilio.navarro@ejemplo.com',907945859,'Calle 94','1990-07-11','F'),(125,'48342959','Mateo','Martínez','mateo.martínez@ejemplo.com',906906124,'Calle 54','1990-01-19','F'),(126,'34777984','Emilio','Ortega','emilio.ortega@ejemplo.com',909226192,'Calle 88','1990-06-07','M'),(127,'65428879','Simón','Cruz','simón.cruz@ejemplo.com',901351576,'Calle 5','1990-05-28','F'),(128,'96997259','Joaquín','Ortega','joaquín.ortega@ejemplo.com',905645641,'Calle 89','1990-01-13','M'),(129,'63369601','Joaquín','López','joaquín.lópez@ejemplo.com',904013466,'Calle 24','1990-09-18','M'),(130,'32449906','Emilio','Fernández','emilio.fernández@ejemplo.com',900508278,'Calle 17','1990-12-19','M'),(131,'81251924','Camila','González','camila.gonzález@ejemplo.com',909458830,'Calle 6','1990-02-27','F'),(132,'49038592','Sofía','Cruz','sofía.cruz@ejemplo.com',900303573,'Calle 71','1990-05-06','F'),(133,'78745964','Camila','Fernández','camila.fernández@ejemplo.com',900870305,'Calle 25','1990-11-25','M'),(134,'17551368','Simón','López','simón.lópez@ejemplo.com',909331510,'Calle 46','1990-02-28','F'),(135,'65192618','Joaquín','Pérez','joaquín.pérez@ejemplo.com',903611077,'Calle 33','1990-02-21','M'),(136,'67682992','Joaquín','Navarro','joaquín.navarro@ejemplo.com',903807423,'Calle 42','1990-01-15','F'),(137,'87392757','Emilio','Ortega','emilio.ortega@ejemplo.com',900720181,'Calle 54','1990-04-07','F'),(138,'36636768','Sofía','González','sofía.gonzález@ejemplo.com',902613109,'Calle 33','1990-11-28','M'),(139,'97828787','Emilio','Martínez','emilio.martínez@ejemplo.com',905398272,'Calle 51','1990-01-14','F'),(140,'73636295','Valentina','Ramírez','valentina.ramírez@ejemplo.com',902292716,'Calle 8','1990-07-27','F'),(141,'99785951','Clara','Luna','clara.luna@ejemplo.com',907252569,'Calle 91','1990-04-22','F'),(142,'60302290','Marcos','Luna','marcos.luna@ejemplo.com',909585560,'Calle 98','1990-11-24','F'),(143,'88879291','Marcos','Moreno','marcos.moreno@ejemplo.com',907154879,'Calle 79','1990-11-11','F'),(144,'89712772','Iván','Moreno','iván.moreno@ejemplo.com',901429860,'Calle 10','1990-09-05','F'),(145,'69406170','Lorenzo','Campos','lorenzo.campos@ejemplo.com',907657162,'Calle 41','1990-03-26','M'),(146,'20405107','Iván','Paredes','iván.paredes@ejemplo.com',906161313,'Calle 14','1990-09-19','M'),(147,'93811575','Elena','Luna','elena.luna@ejemplo.com',905152131,'Calle 16','1990-03-03','M'),(148,'97941297','Marcos','Delgado','marcos.delgado@ejemplo.com',900845193,'Calle 11','1990-06-12','M'),(149,'11164880','Iván','Reyes','iván.reyes@ejemplo.com',900154646,'Calle 42','1990-06-08','M'),(150,'72622406','Diego','Luna','diego.luna@ejemplo.com',908208028,'Calle 24','1990-12-15','M'),(151,'07518340','Tomás','Fuentes','tomás.fuentes@ejemplo.com',902692035,'Calle 51','1995-05-02','F'),(152,'72765443','Paula','Paredes','paula.paredes@ejemplo.com',901297476,'Calle 52','1995-01-06','M'),(153,'54160529','Emma','Rojas','emma.rojas@ejemplo.com',900016096,'Calle 45','1995-12-25','M'),(154,'00709757','Iván','Luna','iván.luna@ejemplo.com',906321997,'Calle 13','1995-01-09','F'),(155,'87088539','Iván','Cabrera','iván.cabrera@ejemplo.com',909097387,'Calle 48','1995-04-03','M'),(156,'06138041','Emma','Delgado','emma.delgado@ejemplo.com',908705003,'Calle 90','1995-02-05','F'),(157,'00525006','Clara','Paredes','clara.paredes@ejemplo.com',905888357,'Calle 42','1995-07-03','F'),(158,'43092692','Diego','Moreno','diego.moreno@ejemplo.com',907339429,'Calle 32','1995-03-24','F'),(159,'88367645','Tomás','Luna','tomás.luna@ejemplo.com',908035382,'Calle 21','1995-09-02','F'),(160,'88335872','Iván','Moreno','iván.moreno@ejemplo.com',901132043,'Calle 72','1995-10-14','M'),(161,'23460446','Lorenzo','Moreno','lorenzo.moreno@ejemplo.com',901142728,'Calle 36','1995-04-21','M'),(162,'86707787','Alba','Paredes','alba.paredes@ejemplo.com',900620023,'Calle 83','1995-03-20','F'),(163,'82371182','Tomás','Delgado','tomás.delgado@ejemplo.com',908798752,'Calle 1','1995-11-26','F'),(164,'07491187','Lorenzo','Galindo','lorenzo.galindo@ejemplo.com',901186255,'Calle 30','1995-12-21','F'),(165,'27499494','Paula','Reyes','paula.reyes@ejemplo.com',902409692,'Calle 51','1995-12-28','F'),(166,'60358264','Tomás','Reyes','tomás.reyes@ejemplo.com',906730151,'Calle 50','1995-12-01','F'),(167,'10493499','Iván','Rojas','iván.rojas@ejemplo.com',900167387,'Calle 7','1995-08-17','M'),(168,'73549537','Emma','Paredes','emma.paredes@ejemplo.com',904416044,'Calle 98','1995-01-03','M'),(169,'77150208','Iván','Reyes','iván.reyes@ejemplo.com',906866331,'Calle 98','1995-06-28','M'),(170,'53048912','Lorenzo','Moreno','lorenzo.moreno@ejemplo.com',900350126,'Calle 12','1995-09-04','F'),(171,'82010465','Emma','Cabrera','emma.cabrera@ejemplo.com',902320163,'Calle 42','1995-09-18','F'),(172,'39812027','Paula','Fuentes','paula.fuentes@ejemplo.com',909688369,'Calle 78','1995-12-08','F'),(173,'50865989','Iván','Moreno','iván.moreno@ejemplo.com',902757453,'Calle 96','1995-09-05','F'),(174,'37684022','Clara','Delgado','clara.delgado@ejemplo.com',906110103,'Calle 92','1995-08-11','F'),(175,'15634405','Alba','Luna','alba.luna@ejemplo.com',907659832,'Calle 27','1995-05-24','F'),(176,'85320203','Diego','Reyes','diego.reyes@ejemplo.com',903748641,'Calle 90','1995-08-17','F'),(177,'07907844','Elena','Campos','elena.campos@ejemplo.com',906467665,'Calle 99','1995-02-10','F'),(178,'95507981','Alba','Paredes','alba.paredes@ejemplo.com',906848525,'Calle 36','1995-07-16','F'),(179,'56967559','Clara','Campos','clara.campos@ejemplo.com',903846824,'Calle 61','1995-04-08','M'),(180,'88432946','Alba','Paredes','alba.paredes@ejemplo.com',907841594,'Calle 42','1995-08-18','F'),(181,'53961459','Alba','Reyes','alba.reyes@ejemplo.com',909421929,'Calle 8','1995-12-17','F'),(182,'82524245','Emma','Reyes','emma.reyes@ejemplo.com',903495338,'Calle 41','1995-04-24','M'),(183,'71303379','Elena','Fuentes','elena.fuentes@ejemplo.com',900846429,'Calle 69','1995-04-24','F'),(184,'80657907','Emma','Delgado','emma.delgado@ejemplo.com',904743548,'Calle 33','1995-05-02','F'),(185,'42226747','Alba','Galindo','alba.galindo@ejemplo.com',904138475,'Calle 70','1995-08-17','F'),(186,'50138484','Iván','Paredes','iván.paredes@ejemplo.com',908605112,'Calle 28','1995-03-14','F'),(187,'15458279','Marcos','Cabrera','marcos.cabrera@ejemplo.com',902529627,'Calle 83','1995-12-02','M'),(188,'12972451','Emma','Paredes','emma.paredes@ejemplo.com',900686709,'Calle 21','1995-07-28','F'),(189,'32704181','Paula','Rojas','paula.rojas@ejemplo.com',902721042,'Calle 74','1995-05-18','M'),(190,'64928109','Diego','Moreno','diego.moreno@ejemplo.com',908420712,'Calle 42','1995-09-08','M'),(191,'78794540','Patrick','Soza','rduranc@pucp.edu.pe',999333576,'La Molina','2001-03-14','M'),(192,'01020304','Max','Lévano de Castilla Arnao Rosales ','rduranc@pucp.edu.pe',999333576,'La Molina','2000-03-16','M'),(196,'23456789','Oliver','Sonne','oliver@gmail.com',12321,'San Luis','2000-01-23','M'),(201,'55855845','Pedro','Perez','geremylozano@gmail.com',999888777,'San Lucas','2024-10-28','M'),(202,'65565848','Lorenzo','Lucas','geremylozano@gmail.com',999888777,'San Pedro','2024-10-30','M'),(205,'23656985','Romero','Perez','romero@gmail.com',999555888,'San Miguel','2000-02-01','M'),(206,'63658539','Maria','Rojas','rojas@gmail.com',999888555,'San Pedro','1995-10-17','F'),(207,'88888888','Joseph','Paciente','a20192393@pucp.edu.pe',123412,'Jesus Maria','2000-11-11','M'),(208,'66655585','Geremy','Lozano','geremylozano@gmail.com',999555111,'San Miguel','1999-12-26','M'),(209,'85235638','Mariano','Paredes','mariano@gmail.com',985478563,'San Mateo','2023-12-31','M'),(210,'85585543','Lucas','Patron','lucas@gmail.com',999888635,'San Lucas','2024-10-30','M'),(211,'10000001','Bruce','Wayne','joseph_539_11@hotmail.com',999865354,'Ciudad Gótica','1984-04-20','M'),(212,'76859982','Robert','Melgar','robert@gmail.com',985478563,'San Carlos','2000-05-11','M'),(213,'78563218','Romero','Martin','romero@gmail.com',995863215,'San Pedro','1995-01-31','M'),(214,'78542154','Lujan','Carrion','lujan@gmaill.com',951458632,'San Lucas','2000-06-06','M'),(215,'10000002','Peter','Parker','joseph_539_11@hotmail.com',123456789,'PUCP','2000-11-11','M');
/*!40000 ALTER TABLE `Persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Procedimiento`
--

DROP TABLE IF EXISTS `Procedimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Procedimiento` (
  `idProcedimiento` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `costo` double DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `requisitosPrevios` varchar(200) DEFAULT NULL,
  `tipoProcedimiento` varchar(500) DEFAULT NULL,
  `fechaProcedimiento` date DEFAULT NULL,
  `idAmbienteMedico` int DEFAULT NULL,
  `activo` tinyint DEFAULT NULL,
  `idCitaMedica` int DEFAULT NULL,
  PRIMARY KEY (`idProcedimiento`),
  KEY `fk_procedimiento_ambienteMedico1_idx` (`idAmbienteMedico`),
  KEY `fk_idCitaMedica` (`idCitaMedica`),
  CONSTRAINT `fk_idCitaMedica` FOREIGN KEY (`idCitaMedica`) REFERENCES `CitaMedica` (`idCitaMedica`) ON DELETE CASCADE,
  CONSTRAINT `fk_procedimiento_ambienteMedico1` FOREIGN KEY (`idAmbienteMedico`) REFERENCES `AmbienteMedico` (`idAmbienteMedico`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Procedimiento`
--

LOCK TABLES `Procedimiento` WRITE;
/*!40000 ALTER TABLE `Procedimiento` DISABLE KEYS */;
INSERT INTO `Procedimiento` VALUES (26,'Procedimiento de Radiografía',150,'Radiografía de tórax para diagnóstico de enfermedades pulmonares','Pacientes deben estar en ayunas','Laboratorio',NULL,4,0,NULL),(28,'Resonancia',950,'Fotos por medios de ondas','Evitar metales','Laboratorio','2024-11-11',4,1,NULL),(29,'gaa',54,'gaaa','gaaa','Laboratorio','2024-11-15',4,0,NULL),(30,'Rayos X',150,'Uso de radiación para tomar fotos','Ninguno','Evaluacion_por_imagenes','2024-11-18',4,0,NULL),(31,'Rayos X',150,'Uso de radiación para toma de imágenes','Ninguno','Evaluacion_por_imagenes','2024-11-20',4,1,NULL),(32,'Vasectomía',500,'Intervención quirúrgica ','Ayuno','Laboratorio','2024-11-14',4,1,NULL),(33,'Vasectomía',500,'Operación','Ninguno','Laboratorio','2024-11-18',4,0,NULL),(34,'Vasectomía',500,'Operación','Ayuno','Laboratorio','2024-11-15',4,1,NULL),(38,'ByPass',500,'sss','sss','Chequeo_general','2024-11-18',5,0,NULL),(39,'Rinoplastia',1500,'operacion de la nariz','venir en ayunas','Laboratorio','2024-11-19',4,0,NULL),(40,'Extracción de sangre',60,'Prueba de sangre','Ayuno','Laboratorio','2024-11-19',5,1,NULL);
/*!40000 ALTER TABLE `Procedimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ReporteMedico`
--

DROP TABLE IF EXISTS `ReporteMedico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ReporteMedico` (
  `idReporteMedico` int NOT NULL AUTO_INCREMENT,
  `diagnostico` varchar(500) DEFAULT NULL,
  `tratamiento` varchar(500) DEFAULT NULL,
  `enfermedad` varchar(100) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `activo` tinyint DEFAULT NULL,
  `ReporteMedicocol` varchar(45) DEFAULT NULL,
  `CitaMedica_idCitaMedica` int NOT NULL,
  `CitaMedica_idPaciente` int NOT NULL,
  PRIMARY KEY (`idReporteMedico`),
  KEY `fk_ReporteMedico_CitaMedica1_idx` (`CitaMedica_idCitaMedica`,`CitaMedica_idPaciente`),
  CONSTRAINT `fk_ReporteMedico_CitaMedica1` FOREIGN KEY (`CitaMedica_idCitaMedica`, `CitaMedica_idPaciente`) REFERENCES `CitaMedica` (`idCitaMedica`, `idPaciente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ReporteMedico`
--

LOCK TABLES `ReporteMedico` WRITE;
/*!40000 ALTER TABLE `ReporteMedico` DISABLE KEYS */;
/*!40000 ALTER TABLE `ReporteMedico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Reset_tokens`
--

DROP TABLE IF EXISTS `Reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Reset_tokens` (
  `idToken` int NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `token` varchar(32) NOT NULL,
  `expiracion` datetime NOT NULL,
  `usado` tinyint(1) DEFAULT '0',
  `fecha_creacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idToken`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Reset_tokens`
--

LOCK TABLES `Reset_tokens` WRITE;
/*!40000 ALTER TABLE `Reset_tokens` DISABLE KEYS */;
INSERT INTO `Reset_tokens` VALUES (21,'joseph_539_11@hotmail.com','5ec3cb65f1c642eeb7153ee257f1f5d1','2024-11-18 18:13:29',1,'2024-11-18 23:08:29'),(22,'joseph_539_11@hotmail.com','9f62744b44a64b0fa87f5aa0b5926185','2024-11-18 18:17:19',0,'2024-11-18 23:12:18'),(23,'dcastilla@pucp.edu.pe','af185419e6194e359f86eb27466f289d','2024-11-19 16:52:09',0,'2024-11-19 21:47:10');
/*!40000 ALTER TABLE `Reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Usuario`
--

DROP TABLE IF EXISTS `Usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Usuario` (
  `idUsuario` int NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `contrasenha` varchar(255) DEFAULT NULL,
  `idPersona` int DEFAULT NULL,
  `activo` tinyint DEFAULT NULL,
  PRIMARY KEY (`idUsuario`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  KEY `fk_Usuario_Persona1_idx` (`idPersona`),
  CONSTRAINT `fk_Usuario_Persona1` FOREIGN KEY (`idPersona`) REFERENCES `Persona` (`idPersona`)
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usuario`
--

LOCK TABLES `Usuario` WRITE;
/*!40000 ALTER TABLE `Usuario` DISABLE KEYS */;
INSERT INTO `Usuario` VALUES (46,'72869624','h1zI8iXEgds=:CpAKaYQd0uzRwZZ3PoyMvw==',67,1),(49,'12345672','passwordHashed123',70,0),(50,'12345670','fDaP/xE4K+0=:5fllAWUokujta+8uZGMC1w==',71,1),(51,'23456781','CSUV/rB1KE0=:uqBABM7KBdSAx65YeBAFHQ==',72,1),(53,'34567892','1avWRi/KUaU=:WsS+V/euzFXJGoPRs6HLYw==',74,1),(54,'45678903','cUvIRIZZmWg=:Edvi0ujacjdgH47KwP7wCQ==',75,1),(55,'56789014','TGSD49XF4fk=:7LLs/HAPNV80wTTxn2iRmg==',76,1),(56,'01234569','X9pSV+vpEyc=:fyFt4kn95Qm9IIBQmAeUQw==',77,1),(57,'42341325','M6kHkaTPhh8=:pcEFb2aI9miqVfZ8FYqi/Q==',78,1),(58,'32984132','iK9U15D3xlE=:BkSvyhoBqym8nX3f0K8Fcw==',79,1),(59,'11223344','zWciwBxac7Q=:sExgDMeBlc5Pba7UHl7X1w==',80,1),(60,'45678234','WAhedRlSCG0=:omYmbzgeH0Xn9O0yOC81SA==',81,1),(61,'67891234','tpqPsFzXicM=:aTij7m52FuXCyl9QePqtzQ==',82,1),(62,'56783412','oyuEtG88gc4=:xSHMtJW7vvyABZI39NXM7Q==',83,1),(63,'78945612','Y2udvLtBNno=:D/MhEdUmaaMJz2kpseYnKQ==',84,1),(64,'71467588','o2JqoDFAcE8=:w5Y1DTDSPFvwoaEiJ7i5cQ==',85,1),(65,'73542927','gYLEfoHllkE=:q1Y7QNqOptIzw184Y+4g4Q==',86,1),(66,'12121212','123',87,1),(67,'78654236','7dB40eUMM1c=:cQEUsO+8av3lq6euRdXchA==',88,1),(68,'12496220','0PI+q2muBLo=:diF4NGCmoU26oqOV+1UZGA==',89,1),(69,'44340541','i2FBy5AB4YI=:w3k4nTzG+GOwQ3ugva+81Q==',90,1),(70,'72128717','KS4T3CViw0g=:ehEk5G9UdlAsp9USv7mWBA==',91,1),(71,'36191030','y9kWbLLKrLI=:ERuwAiCjCSsg8p9uwUqcIg==',92,1),(72,'40549927','VHxERh4zzY4=:0nZwRKTDGZh+7y7RCBsBYw==',93,1),(73,'77777777','wrUfrQiAbE0=:vp7kRZ+jfzYC1cxw3O2Bpw==',94,1),(74,'66666666','BMDR40sc9s0=:kd1rra3vr5Sk70KeHBxZ6w==',95,1),(75,'45245190','IwOANiqqVhQ=:3sOnCF6f+HCJdYgigwYlvw==',96,1),(76,'71717171','bimkNqggbk4=:UlfBSGKv8u6pSVbtZsvoLg==',98,1),(77,'88877744','LIsb681b16w=:jWGdgdgGQObp29skR5PX9w==',99,1),(78,'22222222','jF8LdFsHbKY=:eOll3bjYu9KbhvOADMXRhw==',100,1),(80,'87666405','PQXivGwdM8Q=:QG7rNPbI9458Qz5/HVIr0A==',102,1),(81,'16753330','5jbGwyS86/k=:vCqw37gxaCdduNiULuojnw==',103,1),(82,'57180278','/jKxiHNqfL0=:38Vs8WZ+2ejPf79yskSJbQ==',104,1),(83,'25615918','7ntHW26vsyU=:6LD0znstAtZx8uAwEjthHw==',105,1),(84,'95619274','D3eeRKd30Pc=:IRn9OaUlJPKoIU9gco9f+w==',106,1),(85,'87781689','nPONGunNz/4=:LyQt5bRXRNAz5Jnc6q3RTA==',107,1),(86,'77222323','TQ5DTFe6r/4=:ZOQOxmKv29FQpxJYOp+syw==',108,1),(87,'67410859','fmKRvfoQ1og=:/c4nHp7F2v0/yKNsHoH90A==',109,1),(88,'11408130','uoP0JLpUBbM=:/8xwfVy88+p0GiqlXQ0YHw==',110,1),(89,'46450579','eLmzEWOTECo=:tfk0pjbll+372d+pW1Iewg==',111,1),(90,'59917609','n+xTJYSRfEI=:zuJHc5mbCyvMxliHU99rJQ==',112,1),(91,'70926130','r1gkibp8OIk=:GnLczaHv/vnGMo7It4scdw==',113,1),(92,'12972252','z5feSCeXD+o=:dYFRnYJOlOoFavrFq6cAUw==',114,1),(93,'09543382','XSVKDfMdw8I=:I/VhsBRmDdC7W051e30zcg==',115,1),(94,'00829112','yfw2jB0sb84=:JPm79mbteJwpbPdj7lkg1g==',116,1),(95,'44082663','s9VS02ROkeU=:LX5O7WgTokI5r3bsJ40FHg==',117,1),(96,'45156026','aXIwTo+bMgY=:yBFWhyQO9X9BBsHE+7QPZA==',118,1),(97,'57453711','oHOZcYXvuF4=:rALW5KTIbNsvoAy5aO/KfQ==',119,1),(98,'01196477','KMm56ANxtoo=:9LymiW22pI3noern6ho+8A==',120,1),(99,'27552127','gO7ge8rFbAE=:JalNfUCnFP1B12Xy3Dhwlw==',121,1),(100,'04374777','tNp2T18JRkM=:A0SvuurcdyzZTUn1hbC0NQ==',122,1),(101,'00681098','gl/2msXexpg=:WZptMAWlHaCP8igQu0jLdA==',123,1),(102,'03193868','kyKlD2H9mTY=:wz1g2YeRnbvIA5AK6G9Bbw==',124,1),(103,'48342959','wqU0Nnk74r0=:DAzJK1ejVAhDj22QTVnkOA==',125,1),(104,'34777984','3pp6IBzRs/Y=:CFfTX9NxheLAs9dOs58u6A==',126,1),(105,'65428879','J6EDccHI7wY=:V9mt2AKxQzgcl3D7MxkbYQ==',127,1),(106,'96997259','Bdh8krxhncA=:H5pwWPWl1NS+qGOiWaJJSg==',128,1),(107,'63369601','0elIepr2p78=:ei5lLJhIiGaGtACBrykNyA==',129,1),(108,'32449906','nwsfGKtLxy0=:+r88zpGnhR8u2wWibw93IA==',130,1),(109,'81251924','Cm7GPWfITSQ=:XHH3n0xts+I2E6cVnMkAnQ==',131,1),(110,'49038592','OtEDbq88n1g=:8Ie4B6OTeQNKn08KeefFig==',132,1),(111,'78745964','aYcSeD9RrfA=:YASqrVAG1hN1ujOHNWrcgQ==',133,1),(112,'17551368','cC1FQ9h5E5o=:nkcHf3PmyUzkUCStdsbveQ==',134,1),(113,'65192618','BWKjUl8/avc=:cwmYm+ZSE34Yd29Jbh01CA==',135,1),(114,'67682992','4FoS6/VMBwA=:oj1Fy/fWeKn/SDhgYvykyw==',136,1),(115,'87392757','OTbvgxj342c=:KsD6695tM8IcrSsmD90hBw==',137,1),(116,'36636768','U5lQWWRT39U=:imxL6LSG69UvQ5vMiptUdA==',138,1),(117,'97828787','K90I1YqqohU=:xRh/kgZjpPyUanIHViulcg==',139,1),(118,'73636295','fROna9hPbFQ=:uPkqw6vAGhVuDATzgd5v8w==',140,1),(119,'99785951','efsz68R17Do=:VuKtPbxLolB+DumLMVO1QQ==',141,1),(120,'60302290','CauEv2QBOpk=:eNxMAnsuMiSiY66MwK8MKQ==',142,1),(121,'88879291','2JlJHZYfC4A=:PJqj0X+kA0nIEp0vX3MocA==',143,1),(122,'89712772','woCmSLZs7pk=:V/BlNtaB4yQjiG3z2mEwUw==',144,1),(123,'69406170','yuPA5LsFKb0=:pN1IMmRhEFTiiLT0IsASBg==',145,1),(124,'20405107','K5e/SIDwRF0=:eJxspzPT4Ah4zdYngfzFVg==',146,1),(125,'93811575','i4NeWt6W6TA=:EZ+vjHxjpXvqYmPpMADkig==',147,1),(126,'97941297','IYdBAjZK3NQ=:beXyMf7cCZ2xNDAzp+sBsw==',148,1),(127,'11164880','HHieUgSQ2jc=:l+5D8ZkG0IxOiGMV0FKuGQ==',149,1),(128,'72622406','CJ4pRAGC9s8=:J4xTRwkdo6z7tdcMuS736Q==',150,1),(129,'07518340','cxMta7VKH3Q=:DW8Eu44/50EaX9n6gPbXMw==',151,1),(130,'72765443','SmeGg6Rp9zk=:e1jGxASyGLFGSw48i48Hqw==',152,1),(131,'54160529','KTvgusJumJI=:x+p70YsOaIOUF3YAbaKWaQ==',153,1),(132,'00709757','HfNGN1vTWLI=:TGBqaZ0rqSnm63MzTbGa7A==',154,1),(133,'87088539','jQt7nFrYS+I=:J48C1iwCmXgjdiM/nV0ciQ==',155,1),(134,'06138041','a+ALjCkM6jE=:j61avIQpXO9Tx+Fnd/WQWw==',156,1),(135,'00525006','tbaiKRcc6lg=:nfNC99EYdo1QQbqB/lliGg==',157,1),(136,'43092692','jaIemY5JmmU=:WE1TEKEaw+s4a/IhekF91Q==',158,1),(137,'88367645','i7A5diAwlsY=:IvLdwJb0/xr9HZ/suaCEyw==',159,1),(138,'88335872','dgJACIhnsy8=:M/B6jHxkAefHAHw6AOus2w==',160,1),(139,'23460446','N0TwaFxHvJc=:ezxo4X8FhpCF36Au/ZvY5w==',161,1),(140,'86707787','MWfa29mfeXE=:oiAXKzxEWf4nRhk5DV5BAg==',162,1),(141,'82371182','L/i+4AiiK2E=:J27OjnUwc2fb2RCIpHJIOA==',163,1),(142,'07491187','ImrsHmhzQ/0=:I2ogHZVN+5A8tE1sWG9D8A==',164,1),(143,'27499494','d1vbm4ZIFvA=:EfjDaH/8KbZMOQdxwfkFoA==',165,1),(144,'60358264','2quDz4Amaxw=:IHj29Y4xHnGnZZ7qTuWWGQ==',166,1),(145,'10493499','xYJ5AlT2rzY=:QyXZp9GAJPAeVdT8mz5c3A==',167,1),(146,'73549537','/+sn7osN1TQ=:SGCT5O5E/SRM7/qrviXHyQ==',168,1),(147,'77150208','hy5nw5+wHis=:tvvM2q04oX8kBiP/HeuSNQ==',169,1),(148,'53048912','IRd6tTfXkj8=:ko2XHjomZfXSpQyIwZpO2g==',170,1),(149,'82010465','5luuo/pk6eU=:CkJ9tMse5xDhiHq9CkgNQQ==',171,1),(150,'39812027','RXHBC0lKksA=:MvP3RgsZk8K3rYicPoAmBw==',172,1),(151,'50865989','Zqy5YwC1FiY=:fTAdOcs8NmdAS3ADL73/gg==',173,1),(152,'37684022','33xzRl4EAxk=:M3BvtoiTW4eXP7YmoDvGrA==',174,1),(153,'15634405','fIlya7diI5M=:Z+s3GnMzLi9/u8mxv1LiRw==',175,1),(154,'85320203','mMHElquKKU4=:EXoklEBNJrS/hth7Y6smRg==',176,1),(155,'07907844','wp32as9NIwE=:fMQME/s4IQCMu4auplGUtg==',177,1),(156,'95507981','7VlyBWF7m6Q=:MxDZLWUMIrY2laCPj29/1A==',178,1),(157,'56967559','eh9y+c6ZC9U=:nYXL7cgx4sBQvcg2D7P+xw==',179,1),(158,'88432946','mHQU6w8HQEY=:i4SHOOF0r/wPhjs1R8QKQQ==',180,1),(159,'53961459','/hu9alNT9ew=:r8Yzse5au2Hq/FTdE6V8Xw==',181,1),(160,'82524245','rxmWjihpcE0=:If8qCFut0bSQbJylNcqCgw==',182,1),(161,'71303379','926cJo02klw=:kRns6iwYzoE2rFrKgTwKjA==',183,1),(162,'80657907','hhjvlIy08jQ=:/X77BteXT/wQ8T3epshSVw==',184,1),(163,'42226747','ryKZoV67Slg=:xCR4EDdGbtDn8cHQO9q/PA==',185,1),(164,'50138484','XxHCVMrLCqI=:agoQOFdzHcfx88SsY0EyIg==',186,1),(165,'15458279','ck5LVL6C0Ak=:7KsmEivobEKLFVy90Lg8xg==',187,1),(166,'12972451','7xaLvQ7ki3s=:t0FHEJAvqKOZwEmoRhCfGw==',188,1),(167,'32704181','+xFFSnxMuQM=:OHPc1T93OiEZZw7ztlVryw==',189,1),(168,'64928109','Uz31nSMyfVU=:sERPqsmIO3Z2KwPbeekdIg==',190,1),(169,'78794540','U8V6Fxfx4Xc=:nuUNLHjWy6kINB9vm7s7fQ==',191,1),(170,'01020304','F+mOJ5Meh9E=:q2A3J5lkbXkjB497JUrkGw==',192,1),(171,'23456789','Qe0Xgr//6Z0=:9wSQEVc0Kbub4LyQ/zqQFQ==',196,1),(172,'55855845','KwZMdbwieAU=:gTL+vFu+Qn6LBi0e6tOUaQ==',201,1),(173,'65565848','dfsmtfQ4gG0=:+VbePVksrqnAvvqTL220Vw==',202,1),(174,'23656985','Efjgnv0WPr0=:Vz7M/BYmB3GESyPN7PJHYA==',205,1),(175,'63658545','k6cAuRGG7JA=:564AH1O1JQOOm0dFMv/SrA==',206,1),(176,'88888888','dgCBYsy9M4w=:DqjCICYQEePWLGQhNBMFew==',207,1),(177,'66655585','kkZ+QYUqJv8=:b/xWeRAjNwlxGA+hfjUn+Q==',208,1),(178,'85235674','1wAI4/C0NSs=:0t+nSK2JxTKwqdAw66oPzQ==',209,1),(179,'855','grkj+Uo91kY=:soWj6BcWN6tOpKTKWvpeLQ==',210,1),(180,'00000000','3quzqgRc0lE=:nxRTXoQn+sgGF7Ev3DHf8Q==',211,1),(181,'76859982','Yt4OCG7+RBs=:MBIZR8SuVfN7KxuNqs9Tfw==',212,0),(182,'78563218','EbJyN33DAYg=:gJ0wv+GaEY/uoWT5q7CztA==',213,0),(183,'78542154','mgEmFf+Qy54=:j7P+rpNdzP4MVHwuy37keQ==',214,0),(184,'10000002','Y63sSgXAcF0=:uezEQTja0G/nL9AYxlFCEQ==',215,0);
/*!40000 ALTER TABLE `Usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'mydb'
--
/*!50003 DROP PROCEDURE IF EXISTS `ActualizarEstadoCita` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `ActualizarEstadoCita`(
    IN p_idCitaMedica INT,
    IN p_nuevoEstado VARCHAR(45)
)
BEGIN
    UPDATE CitaMedica
    SET estadoCita = p_nuevoEstado
    WHERE idCitaMedica = p_idCitaMedica;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ActualizarMedico` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `ActualizarMedico`(
    IN in_idMedico INT,
    IN in_numColegiatura VARCHAR(50),
    IN in_horaInicioTrabajo TIME,
    IN in_horaFinTrabajo TIME,
    IN in_diasLaborales VARCHAR(200),
    IN in_aniosExp INT,
    IN in_activo BOOLEAN
)
BEGIN
    -- Actualizar los datos del médico basado en el ID
    UPDATE Medico
    SET 
        numColegiatura = in_numColegiatura,
        horaInicioTrabajo = in_horaInicioTrabajo,
        horaFinTrabajo = in_horaFinTrabajo,
        diasLaborales = in_diasLaborales,
        anhosExp = in_aniosExp,
        activo = in_activo
    WHERE idMedico = in_idMedico;    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ActualizarMedicoCompleto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `ActualizarMedicoCompleto`(
    IN in_idMedico INT,
    IN in_numColegiatura VARCHAR(50),
    IN in_horaInicioTrabajo TIME,
    IN in_horaFinTrabajo TIME,
    IN in_diasLaborales VARCHAR(200),
    IN in_aniosExp INT,
    IN in_activo BOOLEAN,
    IN in_DNI VARCHAR(20),
    IN in_nombre VARCHAR(100),
    IN in_apellido VARCHAR(100),
    IN in_correoElectronico VARCHAR(100),
    IN in_numTelefono INT,
    IN in_direccion VARCHAR(200),
    IN in_fechaNacimiento DATE,
    IN in_genero CHAR(1)
)
BEGIN
    -- Actualizar los datos de la tabla Persona
    UPDATE Persona
    SET 
        DNI = in_DNI,
        nombre = in_nombre,
        apellido = in_apellido,
        correoElectronico = in_correoElectronico,
        numTelefono = in_numTelefono,
        direccion = in_direccion,
        fechaNacimiento = in_fechaNacimiento,
        genero = in_genero
    WHERE idPersona = in_idMedico;

    -- Actualizar los datos de la tabla Medico
    UPDATE Medico
    SET 
        numColegiatura = in_numColegiatura,
        horaInicioTrabajo = in_horaInicioTrabajo,
        horaFinTrabajo = in_horaFinTrabajo,
        diasLaborales = in_diasLaborales,
        anhosExp = in_aniosExp,
        activo = in_activo
    WHERE idMedico = in_idMedico;    
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AdministradorEliminar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `AdministradorEliminar`(
    IN _id_admin INT	
)
BEGIN	
    UPDATE Administrador set activo = 0 where idAdministrador = _id_admin;
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AdministradorInsertar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `AdministradorInsertar`(
    OUT p_id_persona_pk INT,
    OUT p_id_usuario_pk INT,
    IN p_username VARCHAR(50),
    IN p_contrasena VARCHAR(50),
    IN p_DNI VARCHAR(20),
    IN p_nombre_persona VARCHAR(50),
    IN p_apellido_persona VARCHAR(50),
    IN p_correo_electronico VARCHAR(45),
    IN p_num_telefono INT,	
    IN p_direccion VARCHAR(100),
    IN p_fecha_nacimiento DATE,
    IN p_genero CHAR(1)
)
BEGIN
	DECLARE id_persona INT;
	
    -- Insertar en la tabla Persona
    INSERT INTO Persona (DNI,nombre, apellido, correoElectronico, numTelefono, direccion, fechaNacimiento,genero)
    VALUES (p_DNI,p_nombre_persona, p_apellido_persona, p_correo_electronico, p_num_telefono, p_direccion, p_fecha_nacimiento, p_genero);
    
    SET id_persona = LAST_INSERT_ID(); -- Obtener el ID de la nueva persona
    SET p_id_persona_pk = id_persona;
    
    -- Insertar en la tabla Usuario
    INSERT INTO Usuario (username, contrasenha,idPersona,activo)
    VALUES (p_username, p_contrasena,id_persona,0);
    
    SET p_id_usuario_pk = LAST_INSERT_ID(); -- Obtener el ID del nuevo usuario
    
    INSERT INTO Administrador (idAdministrador, activo)
    VALUES (id_persona, true);
    
    INSERT INTO Paciente (idPaciente)
	VALUES (id_persona);
            
    INSERT INTO Auxiliar (idAuxiliar)
	VALUES (id_persona);
            
    INSERT INTO Medico (idMedico)
	VALUES (id_persona);
    
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AdministradorListar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `AdministradorListar`()
BEGIN	
	select idPersona, DNI, nombre, apellido, correoElectronico, fechaNacimiento, activo
	from Persona p, Administrador a
	where p.idPersona = a.idAdministrador and a.activo = 1;
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AdministradorListarPorID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `AdministradorListarPorID`(
	IN _id_admin INT
)
BEGIN	
    select idPersona, DNI, nombre, apellido, correoElectronico, fechaNacimiento, activo
	from Persona p, Administrador a
	where p.idPersona = a.idAdministrador and a.idAdministrador = _id_admin
    and a.activo = 1;
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AdministradorModificar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `AdministradorModificar`(
    IN p_id_admin INT,
    IN p_DNI VARCHAR(20),
    IN p_nombre_persona VARCHAR(50),
    IN p_apellido_persona VARCHAR(50),
    IN p_correo_electronico VARCHAR(45),
    IN p_num_telefono INT,	
    IN p_direccion VARCHAR(100),
    IN p_fecha_nacimiento DATE,
    IN p_genero CHAR(1),
    IN p_activo BOOLEAN
)
BEGIN	
    UPDATE Persona
	SET 
		DNI = p_DNI,
		nombre = p_nombre_persona,
		apellido = p_apellido_persona,
		correoElectronico = p_correo_electronico,
		numTelefono = p_num_telefono,
		direccion = p_direccion,
		fechaNacimiento = p_fecha_nacimiento,
		genero = p_genero
	WHERE idPersona = p_id_admin;
    
    UPDATE Administrador
    SET
        activo = p_activo
	WHERE idAdministrador = p_id_admin;
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ADMIN_LISTAR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `ADMIN_LISTAR`()
BEGIN
    SELECT 
        ad.idAmin,
        per.idpersona,
        per.nombre,
        per.apellido,
        per.correoElectronico,
        per.numTelefono,
        per.direccion,
        per.fechaNacimiento
    FROM Administrador ad
    JOIN Persona per ON p.idpersona = per.idpersona; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ASEGURADORA_BUSCAR_POR_ID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `ASEGURADORA_BUSCAR_POR_ID`(
    IN p_idAseguradora INT
)
BEGIN
    -- Verificar si la aseguradora existe
    IF EXISTS (SELECT 1 FROM Aseguradora WHERE idAseguradora = p_idAseguradora) THEN
        -- Seleccionar los datos de la aseguradora
        SELECT 
            idAseguradora, 
            nombre, 
            direccion, 
            telefono, 
            tipoSeguro, 
            porcentajeDescuento, 
            activo 
        FROM 
            Aseguradora
        WHERE 
            idAseguradora = p_idAseguradora;
    ELSE
        -- Si no existe, lanzar un error
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'La aseguradora no existe';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ASEGURADORA_ELIMINAR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `ASEGURADORA_ELIMINAR`(
    IN p_idAseguradora INT
)
BEGIN
    -- Verificar si la aseguradora existe
    IF EXISTS (SELECT 1 FROM Aseguradora WHERE idAseguradora = p_idAseguradora) THEN
        -- Actualizar el estado a inactivo (activo = 0)
        UPDATE Aseguradora
        SET activo = 0
        WHERE idAseguradora = p_idAseguradora;
    ELSE
        -- Si no existe, lanzar un error
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'La aseguradora no existe';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ASEGURADORA_INSERTAR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `ASEGURADORA_INSERTAR`(
    IN p_nombre VARCHAR(100),
    IN p_direccion VARCHAR(100),
    IN p_telefono INT,
    IN p_tipoSeguro VARCHAR(50),
    IN p_porcentajeDescuento DOUBLE,
    IN p_activo TINYINT
)
BEGIN
    INSERT INTO Aseguradora (
        nombre,
        direccion,
        telefono,
        tipoSeguro,
        porcentajeDescuento,
        activo
    ) VALUES (
        p_nombre,
        p_direccion,
        p_telefono,
        p_tipoSeguro,
        p_porcentajeDescuento,
        p_activo
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ASEGURADORA_LISTAR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `ASEGURADORA_LISTAR`()
BEGIN
    -- Seleccionar solo aseguradoras activas
    SELECT 
        idAseguradora, 
        nombre, 
        direccion, 
        telefono, 
        tipoSeguro, 
        porcentajeDescuento, 
        activo 
    FROM 
        Aseguradora
    WHERE 
        activo = 1
    ORDER BY 
        nombre;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ASEGURADORA_MODIFICAR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `ASEGURADORA_MODIFICAR`(
    IN p_idAseguradora INT,
    IN p_nombre VARCHAR(100),
    IN p_direccion VARCHAR(100),
    IN p_telefono INT,
    IN p_tipoSeguro VARCHAR(50),
    IN p_porcentajeDescuento DOUBLE,
    IN p_activo TINYINT
)
BEGIN
    -- Verificar si la aseguradora con el ID proporcionado existe
    IF EXISTS (SELECT 1 FROM Aseguradora WHERE idAseguradora = p_idAseguradora) THEN
        -- Realizar la actualización
        UPDATE Aseguradora
        SET nombre = p_nombre,
            direccion = p_direccion,
            telefono = p_telefono,
            tipoSeguro = p_tipoSeguro,
            porcentajeDescuento = p_porcentajeDescuento,
            activo = p_activo
        WHERE idAseguradora = p_idAseguradora;
    ELSE
        -- Si no existe, generar un error
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'La aseguradora no existe';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AuxiliarEliminar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `AuxiliarEliminar`(
	IN _id_aux INT
)
BEGIN	
    UPDATE Auxiliar set activo = 0 where idAuxiliar = _id_aux;
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AuxiliarInsertar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `AuxiliarInsertar`(
	OUT p_id_persona_pk INT,
    OUT p_id_usuario_pk INT,
    IN p_username VARCHAR(50),
    IN p_contrasena VARCHAR(50),
    IN p_DNI VARCHAR(20),
    IN p_nombre_persona VARCHAR(50),
    IN p_apellido_persona VARCHAR(50),
    IN p_correo_electronico VARCHAR(45),
    IN p_num_telefono INT,	
    IN p_direccion VARCHAR(100),
    IN p_fecha_nacimiento DATE,
    IN p_genero CHAR(1),
    IN p_idEspecialidad INT
)
BEGIN
	DECLARE id_persona INT;
	
    -- Insertar en la tabla Persona
    INSERT INTO Persona (DNI,nombre, apellido, correoElectronico, numTelefono, direccion, fechaNacimiento,genero)
    VALUES (p_DNI,p_nombre_persona, p_apellido_persona, p_correo_electronico, p_num_telefono, p_direccion, p_fecha_nacimiento, p_genero);
    
    SET id_persona = LAST_INSERT_ID(); -- Obtener el ID de la nueva persona
    SET p_id_persona_pk = id_persona;
    
    -- Insertar en la tabla Usuario
    INSERT INTO Usuario (username, contrasenha,idPersona,activo)
    VALUES (p_username, p_contrasena,id_persona,0);
    
    SET p_id_usuario_pk = LAST_INSERT_ID(); -- Obtener el ID del nuevo usuario
    
    INSERT INTO Auxiliar (idAuxiliar, idEspecialidad, activo)
    VALUES (id_persona, p_idEspecialidad, true);
    
    INSERT INTO Paciente (idPaciente)
	VALUES (id_persona);
            
    INSERT INTO Medico (idMedico)
	VALUES (id_persona);
            
    INSERT INTO Administrador (idAdministrador)
	VALUES (id_persona);  
    
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AuxiliarListar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `AuxiliarListar`()
BEGIN	
    select idPersona, DNI, p.nombre, apellido, e.nombre as especialidad, fechaNacimiento, a.activo
	from Persona p, Auxiliar a, Especialidad e
	where p.idPersona=a.idAuxiliar and a.activo = 1 
    and a.idEspecialidad IS NOT NULL and a.idEspecialidad=e.idEspecialidad;
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AuxiliarListarPorID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `AuxiliarListarPorID`(
	IN p_id_aux INT
)
BEGIN	
    select idPersona, DNI, p.nombre, apellido, e.nombre as especialidad, fechaNacimiento, a.activo
	from Persona p, Auxiliar a, Especialidad e
	where p.idPersona=a.idAuxiliar and a.activo = 1 
    and a.idAuxiliar=p_id_aux and a.idEspecialidad IS NOT NULL 
    and a.idEspecialidad=e.idEspecialidad;
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AuxiliarModificar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `AuxiliarModificar`(
	IN p_id_auxiliar INT,
    IN p_DNI VARCHAR(20),
    IN p_nombre_persona VARCHAR(50),
    IN p_apellido_persona VARCHAR(50),
    IN p_correo_electronico VARCHAR(45),
    IN p_num_telefono INT,	
    IN p_direccion VARCHAR(100),
    IN p_fecha_nacimiento DATE,
    IN p_genero CHAR(1),
    IN p_id_especialidad INT,
    IN p_activo BOOLEAN
)
BEGIN	
    UPDATE Persona
	SET 
		DNI = p_DNI,
		nombre = p_nombre_persona,
		apellido = p_apellido_persona,
		correoElectronico = p_correo_electronico,
		numTelefono = p_num_telefono,
		direccion = p_direccion,
		fechaNacimiento = p_fecha_nacimiento,
		genero = p_genero
	WHERE idPersona = p_id_auxiliar;
    
    UPDATE Auxiliar
    SET
		idEspecialidad = p_id_especialidad,
        activo = p_activo
	WHERE idAuxiliar = p_id_auxiliar;
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CITA_PROCEDIMIENTO_Actualizar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `CITA_PROCEDIMIENTO_Actualizar`(
    IN p_idCitaMedica INT,
    IN p_idProcedimiento INT,
    IN p_asistencia BOOLEAN,
    IN p_observaciones VARCHAR(500),
    IN p_fechaResultado DATE,
    IN p_fechaRealizacion DATE,
    IN p_horaRealizacion TIME,
    IN p_activo BOOLEAN,
    OUT p_resultado INT
)
BEGIN
    -- Declarar una variable para contar conflictos
    DECLARE v_existe INT;

    -- Validar si existe un conflicto de idAmbienteMedico, fechaRealizacion y horaRealizacion
    SELECT COUNT(*)
    INTO v_existe
    FROM CitaMedica_has_Procedimiento cp
    JOIN Procedimiento p ON cp.idProcedimiento = p.idProcedimiento
    WHERE p.idAmbienteMedico = (SELECT idAmbienteMedico FROM Procedimiento WHERE idProcedimiento = p_idProcedimiento)
      AND cp.fechaRealizacion = p_fechaRealizacion
      AND cp.horaRealizacion = p_horaRealizacion
      AND cp.idCitaMedica != p_idCitaMedica -- Excluir la misma cita para evitar falsos positivos
      AND cp.activo = 1;

    -- Si hay conflicto, retorna 0
    IF v_existe > 0 THEN
        SET p_resultado = 0;
    ELSE
        -- Si no hay conflicto, actualiza el registro
        UPDATE CitaMedica_has_Procedimiento
        SET asistencia = p_asistencia,
            observaciones = p_observaciones,
            fechaResultado = p_fechaResultado,
            fechaRealizacion = p_fechaRealizacion,
            horaRealizacion = p_horaRealizacion,
            activo = p_activo
        WHERE idCitaMedica = p_idCitaMedica AND idProcedimiento = p_idProcedimiento;

        -- Retorna 1 para indicar éxito
        SET p_resultado = 1;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CITA_PROCEDIMIENTO_EliminarLogico` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `CITA_PROCEDIMIENTO_EliminarLogico`(
    IN p_idCitaMedica INT,
    IN p_idProcedimiento INT
)
BEGIN
    UPDATE CitaMedica_has_Procedimiento
    SET activo = 0
    WHERE idCitaMedica = p_idCitaMedica AND idProcedimiento = p_idProcedimiento;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CITA_PROCEDIMIENTO_FILTRADOS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `CITA_PROCEDIMIENTO_FILTRADOS`(
    IN p_idCitaMedica INT,
    IN p_idProcedimiento INT,
    IN p_estadoPago INT,
    IN p_fechaInicio DATE,
    IN p_fechaFin DATE,
    IN p_horaInicio TIME,
    IN p_horaFin TIME
)
BEGIN
    SELECT 
        idCitaMedica,
        idProcedimiento,
        idPago,
        asistencia,
        observaciones,
        fechaResultado,
        fechaRealizacion,
        horaRealizacion,
        activo
    FROM 
        CitaMedica_has_Procedimiento
    WHERE 
        activo = 1
        AND 
        (p_idCitaMedica = -1 OR idCitaMedica = p_idCitaMedica)
        AND 
        (p_idProcedimiento = -1 OR idProcedimiento = p_idProcedimiento)
        AND 
        (
            p_estadoPago = -1 OR 
            (p_estadoPago = 1 AND idPago > 0) OR 
            (p_estadoPago = 0 AND (idPago IS NULL OR idPago <= 0))
        )
        AND 
        (p_fechaInicio IS NULL OR fechaRealizacion >= p_fechaInicio)
        AND 
        (p_fechaFin IS NULL OR fechaRealizacion <= p_fechaFin)
        AND 
        (p_horaInicio IS NULL OR horaRealizacion >= p_horaInicio)
        AND 
        (p_horaFin IS NULL OR horaRealizacion <= p_horaFin)
    ORDER BY idCitaMedica, idProcedimiento;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CITA_PROCEDIMIENTO_FILTRADOS_COMPLETO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `CITA_PROCEDIMIENTO_FILTRADOS_COMPLETO`(
    IN p_dniPaciente VARCHAR(20),
    IN p_idCitaMedica INT,
    IN p_idProcedimiento INT,
    IN p_estadoPago INT,
    IN p_fechaInicio DATE,
    IN p_fechaFin DATE,
    IN p_horaInicio TIME,
    IN p_horaFin TIME
)
BEGIN
    SELECT 
        cp.idCitaMedica,
        cp.idProcedimiento,
        cp.idPago,
        cp.asistencia,
        cp.observaciones,
        cp.fechaResultado,
        cp.fechaRealizacion,
        cp.horaRealizacion,
        cp.activo,
        CONCAT(pr.nombre, ' ', pr.apellido) AS nombreCompleto,
        pr.dni AS dniPaciente
    FROM 
        CitaMedica_has_Procedimiento cp
    INNER JOIN CitaMedica cm ON cp.idCitaMedica = cm.idCitaMedica
    INNER JOIN Paciente pa ON cm.idPaciente = pa.idPaciente
    INNER JOIN Persona pr ON pa.idPaciente = pr.idPersona
    WHERE 
        cp.activo = 1
        AND 
        (p_idCitaMedica = -1 OR cp.idCitaMedica = p_idCitaMedica)
        AND 
        (p_idProcedimiento = -1 OR cp.idProcedimiento = p_idProcedimiento)
        AND 
        (
            p_estadoPago = -1 OR 
            (p_estadoPago = 1 AND cp.idPago > 0) OR 
            (p_estadoPago = 0 AND (cp.idPago IS NULL OR cp.idPago <= 0))
        )
        AND 
        (p_fechaInicio IS NULL OR cp.fechaRealizacion >= p_fechaInicio)
        AND 
        (p_fechaFin IS NULL OR cp.fechaRealizacion <= p_fechaFin)
        AND 
        (p_horaInicio IS NULL OR cp.horaRealizacion >= p_horaInicio)
        AND 
        (p_horaFin IS NULL OR cp.horaRealizacion <= p_horaFin)
        AND 
        (p_dniPaciente IS NULL OR pr.dni = p_dniPaciente)
    ORDER BY cp.idCitaMedica, cp.idProcedimiento;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CITA_PROCEDIMIENTO_horasDisponibles` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `CITA_PROCEDIMIENTO_horasDisponibles`(
    IN p_fecha DATE    -- Fecha para la cual se buscan horas disponibles
)
BEGIN
    -- Declarar variables para el rango de horas
    DECLARE horaInicio TIME DEFAULT '00:00:00'; -- Hora de inicio
    DECLARE horaFin TIME DEFAULT '24:00:00';    -- Hora de fin
    DECLARE horaActual TIME;

    -- Crear una tabla temporal para almacenar las horas generadas
    CREATE TEMPORARY TABLE IF NOT EXISTS HorariosDia (hora TIME);

    -- Inicializar la hora actual
    SET horaActual = horaInicio;

    -- Generar las horas en punto dentro del rango operativo
    WHILE horaActual < horaFin DO
        INSERT INTO HorariosDia (hora) VALUES (horaActual);
        SET horaActual = ADDTIME(horaActual, '01:00:00'); -- Incrementar en 1 hora exacta
    END WHILE;

    -- Excluir las horas ocupadas de la tabla CitaMedica_has_Procedimiento
    DELETE FROM HorariosDia
    WHERE hora IN (
        SELECT horaRealizacion
        FROM CitaMedica_has_Procedimiento
        WHERE fechaRealizacion = p_fecha
          AND activo = 1 -- Considera solo las citas activas
    );

    -- Devolver las horas disponibles
    SELECT 
        hora 
    FROM 
        HorariosDia;

    -- Limpiar la tabla temporal
    DROP TEMPORARY TABLE IF EXISTS HorariosDia;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CITA_PROCEDIMIENTO_Insertar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `CITA_PROCEDIMIENTO_Insertar`(
    IN p_idCitaMedica INT,
    IN p_idProcedimiento INT,
    IN p_asistencia BOOLEAN,
    IN p_observaciones VARCHAR(500),
    IN p_fechaResultado DATE,
    IN p_fechaRealizacion DATE,
    IN p_horaRealizacion TIME,
    IN p_activo BOOLEAN,
    OUT p_resultado INT
)
BEGIN
    -- Declarar una variable para contar registros existentes
    DECLARE v_existe INT;

    -- Validar si ya existe la combinación de ambiente médico, fecha y hora
    SELECT COUNT(*)
    INTO v_existe
    FROM CitaMedica_has_Procedimiento cp
    JOIN Procedimiento p ON cp.idProcedimiento = p.idProcedimiento
    WHERE p.idAmbienteMedico = (SELECT idAmbienteMedico FROM Procedimiento WHERE idProcedimiento = p_idProcedimiento)
      AND cp.fechaRealizacion = p_fechaRealizacion
      AND cp.horaRealizacion = p_horaRealizacion
      AND cp.activo = 1;

    -- Si ya existe, retorna 0
    IF v_existe > 0 THEN
        SET p_resultado = 0;
    ELSE
        -- Si no existe, realiza la inserción y retorna 1
        INSERT INTO CitaMedica_has_Procedimiento (
            idCitaMedica, idProcedimiento, asistencia, observaciones, fechaResultado, fechaRealizacion, horaRealizacion, activo
        ) VALUES (
            p_idCitaMedica, p_idProcedimiento, p_asistencia, p_observaciones, p_fechaResultado, p_fechaRealizacion, p_horaRealizacion, p_activo
        );
        SET p_resultado = 1;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CITA_PROCEDIMIENTO_ListarPorCita` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `CITA_PROCEDIMIENTO_ListarPorCita`(IN p_idCitaMedica INT)
BEGIN
    SELECT * FROM CitaMedica_has_Procedimiento
    WHERE idCitaMedica = p_idCitaMedica;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CITA_PROCEDIMIENTO_ListarPorCitaMedica` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `CITA_PROCEDIMIENTO_ListarPorCitaMedica`(
    IN p_idCitaMedica INT
)
BEGIN
    SELECT * 
    FROM CitaMedica_has_Procedimiento
    WHERE idCitaMedica = p_idCitaMedica AND activo = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CITA_PROCEDIMIENTO_ListarTodas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `CITA_PROCEDIMIENTO_ListarTodas`()
BEGIN
    SELECT * FROM CitaMedica_has_Procedimiento;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CITA_PROCEDIMIENTO_ListarTodos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `CITA_PROCEDIMIENTO_ListarTodos`()
BEGIN
    SELECT 
        idCitaMedica,
        idProcedimiento,
        idPago,
        asistencia,
        observaciones,
        fechaResultado,
        fechaRealizacion, -- Nuevo atributo
        horaRealizacion,  -- Nuevo atributo
        activo
    FROM CitaMedica_has_Procedimiento
    WHERE activo = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CITA_PROCEDIMIENTO_Modificar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `CITA_PROCEDIMIENTO_Modificar`(
    IN p_idCitaMedica INT,
    IN p_idProcedimiento INT,
    IN p_idPago INT,
    IN p_asistencia TINYINT,
    IN p_observaciones VARCHAR(500),
    IN p_fechaResultado DATE,
    IN p_activo TINYINT
)
BEGIN
    UPDATE CitaMedica_has_Procedimiento
    SET 
        asistencia = p_asistencia,
        observaciones = p_observaciones,
        fechaResultado = p_fechaResultado,
        activo = p_activo
    WHERE idCitaMedica = p_idCitaMedica AND idProcedimiento = p_idProcedimiento;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CITA_PROCEDIMIENTO_Modificar2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `CITA_PROCEDIMIENTO_Modificar2`(
    IN p_idCitaMedica INT,
    IN p_idProcedimiento INT,
    IN p_idPago INT,
    IN p_asistencia TINYINT,
    IN p_observaciones VARCHAR(500),
    IN p_fechaResultado DATE,
    IN p_activo TINYINT
)
BEGIN
    UPDATE CitaMedica_has_Procedimiento
    SET 
        idPago = p_idPago,
        asistencia = p_asistencia,
        observaciones = p_observaciones,
        fechaResultado = p_fechaResultado,
        activo = p_activo
    WHERE idCitaMedica = p_idCitaMedica AND idProcedimiento = p_idProcedimiento;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CITA_PROCEDIMIENTO_ObtenerPorIds` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `CITA_PROCEDIMIENTO_ObtenerPorIds`(
    IN p_idCitaMedica INT,
    IN p_idProcedimiento INT
)
BEGIN
    SELECT 
        idCitaMedica,
        idProcedimiento,
        idPago,
        asistencia,
        observaciones,
        fechaResultado,
        activo
    FROM 
        CitaMedica_has_Procedimiento
    WHERE 
        idCitaMedica = p_idCitaMedica
        AND idProcedimiento = p_idProcedimiento
        AND activo = 1; -- Filtrar solo los activos
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `COMUNICACION_ACTUALIZAR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `COMUNICACION_ACTUALIZAR`(
    IN p_idComunicacion INT,
    IN p_tipoComunicacion VARCHAR(500),
    IN p_contenido VARCHAR(400),
    IN p_fechaComunicacion DATE,
    IN p_activo TINYINT,
    IN p_idPaciente INT,
    IN p_estado VARCHAR(50),
    IN p_respuesta VARCHAR(500)
)
BEGIN
    -- Actualizar la comunicación, incluyendo el estado y la respuesta
    UPDATE Comunicacion
    SET tipoComunicacion = p_tipoComunicacion,
        contenido = p_contenido,
        fechaComunicacion = p_fechaComunicacion,
        activo = p_activo,
        idPaciente = p_idPaciente,
        estado = p_estado,
        respuesta = p_respuesta
    WHERE idComunicacion = p_idComunicacion;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `COMUNICACION_BUSCARPORID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `COMUNICACION_BUSCARPORID`(
    IN p_idComunicacion INT
)
BEGIN
    SELECT 
        idComunicacion, 
        tipoComunicacion, 
        contenido, 
        fechaComunicacion, 
        activo, 
        idPaciente, 
        estado, 
        respuesta
    FROM Comunicacion
    WHERE idComunicacion = p_idComunicacion;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `COMUNICACION_CONTAR_POR_ESTADO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `COMUNICACION_CONTAR_POR_ESTADO`()
BEGIN
    SELECT estado, COUNT(*) as conteo
    FROM Comunicacion
    GROUP BY estado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `COMUNICACION_DATOS_PACIENTE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `COMUNICACION_DATOS_PACIENTE`(
    IN p_idComunicacion INT
)
BEGIN
    DECLARE p_idPaciente INT;

    -- Obtener el idPaciente asociado a la comunicación
    SELECT idPaciente INTO p_idPaciente
    FROM Comunicacion
    WHERE idComunicacion = p_idComunicacion;

    -- Verificar si se encontró un paciente
    IF p_idPaciente IS NOT NULL THEN
        -- Obtener los datos del paciente usando su ID
        SELECT 
            p.idPersona,
            p.DNI,
            p.nombre,
            p.apellido,
            p.correoElectronico,
            p.fechaNacimiento,
            p.historialActivo,
            p.genero
        FROM Paciente p
        WHERE p.idPersona = p_idPaciente;
    ELSE
        SELECT 'No se encontró un paciente para esta comunicación' AS mensaje;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `COMUNICACION_ELIMINAR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `COMUNICACION_ELIMINAR`(
    IN p_idComunicacion INT
)
BEGIN
    UPDATE Comunicacion
    SET activo = 0
    WHERE idComunicacion = p_idComunicacion;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `COMUNICACION_INSERTAR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `COMUNICACION_INSERTAR`(
    IN p_tipoComunicacion VARCHAR(500),
    IN p_contenido VARCHAR(400),
    IN p_fechaComunicacion DATE,
    IN p_idPaciente INT,
    IN p_estado VARCHAR(50),
    IN p_respuesta VARCHAR(500)
)
BEGIN
    -- Insertar una nueva comunicación con el estado y respuesta proporcionados
    INSERT INTO Comunicacion (tipoComunicacion, contenido, fechaComunicacion, activo, idPaciente, estado, respuesta)
    VALUES (p_tipoComunicacion, p_contenido, p_fechaComunicacion, 1, p_idPaciente, p_estado, p_respuesta);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `COMUNICACION_LISTAR_POR_PACIENTE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `COMUNICACION_LISTAR_POR_PACIENTE`(IN p_idPaciente INT)
BEGIN
    SELECT * 
    FROM Comunicacion 
    WHERE idPaciente = p_idPaciente;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `COMUNICACION_LISTAR_TODOS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `COMUNICACION_LISTAR_TODOS`()
BEGIN
    SELECT 
        idComunicacion, 
        tipoComunicacion, 
        contenido, 
        fechaComunicacion, 
        activo, 
        idPaciente, 
        estado, 
        respuesta
    FROM Comunicacion
    WHERE activo = 1
    ORDER BY fechaComunicacion DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `contarComunicacionesPorEstado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `contarComunicacionesPorEstado`()
BEGIN
    SELECT estado, COUNT(*) as conteo
    FROM Comunicacion
    GROUP BY estado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `EliminarMedico` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `EliminarMedico`(
    IN in_idMedico INT
)
BEGIN
    UPDATE Medico
    SET activo = 0
    WHERE idMedico = in_idMedico;   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ESPECIALIDAD_ACTUALIZAR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `ESPECIALIDAD_ACTUALIZAR`(
    IN p_idEspecialidad INT,
    IN p_nombre VARCHAR(80),
    IN p_costoConsulta DOUBLE,
    IN p_activo TINYINT
)
BEGIN
    UPDATE Especialidad
    SET nombre = p_nombre,
        costoConsulta = p_costoConsulta,
        activo = p_activo
    WHERE idEspecialidad = p_idEspecialidad;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ESPECIALIDAD_BUSCARPORID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `ESPECIALIDAD_BUSCARPORID`(
    IN p_idEspecialidad INT
)
BEGIN
    SELECT 
        nombre, 
        costoConsulta, 
        activo
    FROM Especialidad
    WHERE idEspecialidad = p_idEspecialidad;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ESPECIALIDAD_ELIMINAR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `ESPECIALIDAD_ELIMINAR`(
    IN p_idEspecialidad INT
)
BEGIN
    UPDATE Especialidad
    SET activo = 0
    WHERE idEspecialidad = p_idEspecialidad;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ESPECIALIDAD_INSERTAR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `ESPECIALIDAD_INSERTAR`(
    IN p_nombre VARCHAR(80),
    IN p_costoConsulta DOUBLE
)
BEGIN
    INSERT INTO Especialidad (nombre, costoConsulta, activo)
    VALUES (p_nombre, p_costoConsulta, 1);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ESPECIALIDAD_LISTAR_TODAS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `ESPECIALIDAD_LISTAR_TODAS`()
BEGIN
    SELECT idEspecialidad, nombre, costoConsulta, activo
    FROM Especialidad
    WHERE activo = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ExisteUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `ExisteUsuario`(
	IN dni varchar(20),
    IN contra varchar(100)
)
BEGIN	
    SELECT idUsuario, username, contrasenha, idPersona
    FROM Usuario
    WHERE username = dni and contrasenha = contra and activo = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `HistorialMedicoCambiarEstado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `HistorialMedicoCambiarEstado`(
	IN _id_historial INT
)
BEGIN	
	 DECLARE _id_paciente INT;
     DECLARE _estado_actual INT;
     
	SELECT activo 
    INTO _estado_actual
    FROM HistorialMedico
    WHERE idHistorialMedico = _id_historial;
     
     

	SELECT idPaciente 
    INTO _id_paciente
    FROM HistorialMedico
    WHERE idHistorialMedico = _id_historial;
    
    UPDATE HistorialMedico 
    SET activo = CASE 
                    WHEN _estado_actual = 1 THEN 0
                    ELSE 1
                 END 
    WHERE idHistorialMedico = _id_historial;

    
    
    
     UPDATE Paciente 
    SET historialActivo = CASE 
                    WHEN _estado_actual = 1 THEN 0
                    ELSE 1
                 END
    WHERE idPaciente = _id_paciente;
    
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `HistorialMedicoEliminar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `HistorialMedicoEliminar`(
	IN _id_historial INT
)
BEGIN	
	 DECLARE _id_paciente INT;

	SELECT idPaciente 
    INTO _id_paciente
    FROM HistorialMedico
    WHERE idHistorialMedico = _id_historial;
    
    

    UPDATE HistorialMedico SET activo = 0 WHERE idHistorialMedico = _id_historial;
    
    
    UPDATE Paciente 
    SET activo = 0 
    WHERE idPaciente = _id_paciente;
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `HistorialMedicoInsertar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `HistorialMedicoInsertar`(
	OUT _id_historial INT,
    IN _id_paciente INT
)
BEGIN	
    INSERT INTO HistorialMedico (fechaCreacion,activo,idPaciente)
    VALUES(CURRENT_DATE,true,_id_paciente);
    
    SET _id_historial = LAST_INSERT_ID();
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `HistorialMedicoListar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `HistorialMedicoListar`()
BEGIN	
    SELECT idHistorialMedico, fechaCreacion, activo, idPaciente
    FROM HistorialMedico WHERE activo = 1;
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `HistorialMedicoListarPorCamposImp` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `HistorialMedicoListarPorCamposImp`()
BEGIN	
    SELECT 
        hm.idHistorialMedico, 
        hm.fechaCreacion,
        hm.idPaciente,
        hm.activo,
        p.DNI, 
        p.nombre, 
        p.apellido
    FROM 
        HistorialMedico hm
    JOIN 
        Persona p ON hm.idPaciente = p.idPersona;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `HistorialMedicoListarPorDniNombreApellido` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `HistorialMedicoListarPorDniNombreApellido`(IN searchTerm VARCHAR(255))
BEGIN    
    SELECT 
        hm.idHistorialMedico, 
        hm.fechaCreacion,
        hm.idPaciente,
        hm.activo,
        p.DNI, 
        p.nombre, 
        p.apellido
    FROM 
        HistorialMedico hm
    JOIN 
        Persona p ON hm.idPaciente = p.idPersona
    WHERE 
            p.DNI LIKE CONCAT('%', searchTerm, '%') 
            OR p.nombre LIKE CONCAT('%', searchTerm, '%') 
            OR p.apellido LIKE CONCAT('%', searchTerm, '%');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `HistorialMedicoListarPorID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `HistorialMedicoListarPorID`(
    IN _id_historial INT  -- Parámetro de entrada para el ID del historial médico
)
BEGIN
    -- Seleccionar datos de la tabla `HistorialMedico` para el ID específico
    SELECT 
        idHistorialMedico,
        fechaCreacion,
        activo,
        idPaciente,
        enferPreExist,
        alergias,
        cirugiasPrevias,
        vacunas,
        peso,
        altura,
        tipoSangre
    FROM 
        HistorialMedico 
    WHERE 
        idHistorialMedico = _id_historial ;
        
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `HistorialMedicoListarPorIDPaciente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `HistorialMedicoListarPorIDPaciente`(
    IN _id_paciente INT  -- Parámetro de entrada para el ID del paciente
)
BEGIN
    -- Seleccionar datos de la tabla `HistorialMedico` para un paciente específico
    SELECT 
        idHistorialMedico,
        fechaCreacion,
        activo,
        idPaciente,
        enferPreExist,
        alergias,
        cirugiasPrevias,
        vacunas,
        peso,
        altura,
        tipoSangre
    FROM 
        HistorialMedico 
    WHERE 
        idPaciente = _id_paciente;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `HistorialMedicoModificar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `HistorialMedicoModificar`(
    IN _idHistorialMedico INT,
    IN _enferPreExist varchar(120),
    IN _alergias varchar(120),
    IN _cirugiasPrevias varchar(120),
    IN _vacunas varchar(120),
    IN _peso double,
    IN _altura double,
    IN _tipoSangre varchar(4)
)
BEGIN
    UPDATE HistorialMedico
    SET
        enferPreExist = _enferPreExist,
        alergias = _alergias,
        cirugiasPrevias = _cirugiasPrevias,
        vacunas = _vacunas,
        peso = _peso,
        altura = _altura,
        tipoSangre = _tipoSangre
    WHERE idHistorialMedico = _idHistorialMedico;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertarMedico` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `InsertarMedico`(
    OUT p_idMedico INT,
    IN p_DNI VARCHAR(20),
    IN p_nombre VARCHAR(60),
    IN p_apellido VARCHAR(60),
    IN p_correoElectronico VARCHAR(45),
    IN p_numTelefono INT,
    IN p_direccion VARCHAR(100),
    IN p_fechaNacimiento DATE,
    IN p_genero CHAR(1),
    IN p_numColegiatura VARCHAR(50),
    IN p_horaInicioTrabajo TIME,
    IN p_horaFinTrabajo TIME,
    IN p_diasLaborales VARCHAR(200),
    IN p_anhosExp INT,
    IN p_activo TINYINT,
    IN p_idEspecialidad INT,
    IN p_contrasenha VARCHAR(100)
)
BEGIN
    DECLARE id_persona INT;
    DECLARE id_usuario INT;

    -- Insertar en la tabla Persona
    INSERT INTO Persona (DNI, nombre, apellido, correoElectronico, numTelefono, direccion, fechaNacimiento, genero)
    VALUES (p_DNI, p_nombre, p_apellido, p_correoElectronico, p_numTelefono, p_direccion, p_fechaNacimiento, p_genero);

    -- Obtener el id generado para la persona
    SET id_persona = LAST_INSERT_ID();

    -- Insertar en la tabla Usuario
    INSERT INTO Usuario (username, contrasenha, idPersona, activo)
    VALUES (p_DNI, p_contrasenha, id_persona, 0);

    -- Insertar en la tabla Medico
    INSERT INTO Medico (idMedico, idEspecialidad, numColegiatura, horaInicioTrabajo, horaFinTrabajo, diasLaborales, anhosExp, activo)
    VALUES (id_persona, p_idEspecialidad, p_numColegiatura, p_horaInicioTrabajo, p_horaFinTrabajo, p_diasLaborales, p_anhosExp, p_activo);

    -- Asignar el valor de idMedico al parámetro de salida
    SET p_idMedico = id_persona;

    -- Insertar en las tablas Paciente, Auxiliar y Administrador
    INSERT INTO Paciente (idPaciente)
    VALUES (id_persona);

    INSERT INTO Auxiliar (idAuxiliar)
    VALUES (id_persona);

    INSERT INTO Administrador (idAdministrador)
    VALUES (id_persona);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `listarAseguradorasDePaciente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `listarAseguradorasDePaciente`(
    IN idPaciente INT
)
BEGIN
    SELECT 
        a.idAseguradora,
        a.nombre,
        a.direccion,
        a.telefono,
        a.tipoSeguro,
        a.porcentajeDescuento,
        a.activo
    FROM 
        Aseguradora a
    INNER JOIN 
        Paciente_has_Aseguradora pha ON a.idAseguradora = pha.Aseguradora_idAseguradora
    WHERE 
        pha.Paciente_idPaciente = idPaciente
        AND a.activo = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ListarMedicos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `ListarMedicos`()
BEGIN
    SELECT m.idMedico, m.idEspecialidad, m.numColegiatura, m.horaInicioTrabajo, m.horaFinTrabajo,
           m.diasLaborales, m.anhosExp, p.nombre, p.apellido
    FROM Medico AS m
    JOIN Persona AS p ON m.idMedico = p.idPersona
    WHERE m.activo = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ObtenerCitaMedicaPorId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `ObtenerCitaMedicaPorId`(
    IN p_idCitaMedica INT
)
BEGIN
    -- Seleccionamos todos los datos de la cita médica
    SELECT 
        idCitaMedica,
        tipoCita,
        estadoCita,
        idHistorialMedico,
        idMedico,
        fecha,
        hora,
        plataforma,
        enlace,
        duracion,
        numeroAmbiente,
        idPago,
        activo,
        idPaciente
    FROM 
        CitaMedica
    WHERE 
        idCitaMedica = p_idCitaMedica 
        AND activo = 1;  -- Solo incluimos citas activas
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ObtenerMedicoPorId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `ObtenerMedicoPorId`(
    IN p_idMedico INT
)
BEGIN
    -- Seleccionamos los datos del médico, su información personal y la especialidad
    SELECT 
        m.idMedico,
        m.idEspecialidad,
        e.nombre AS especialidad,   -- Nombre de la especialidad
        m.numColegiatura,
        m.horaInicioTrabajo,
        m.horaFinTrabajo,
        m.diasLaborales,
        m.anhosExp,
        p.nombre,                   -- Nombre del médico
        p.apellido                  -- Apellido del médico
    FROM 
        Medico m
    INNER JOIN 
        Persona p ON m.idMedico = p.idPersona  -- Relacionamos Medico y Persona
    LEFT JOIN 
        Especialidad e ON m.idEspecialidad = e.idEspecialidad  -- Relacionamos Medico y Especialidad
    WHERE 
        m.idMedico = p_idMedico 
        AND m.activo = 1;  -- Solo incluimos médicos activos
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PacienteEliminar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `PacienteEliminar`(
	IN _id_paciente INT	
)
BEGIN	
    UPDATE Paciente set activo = 0 where idPaciente = _id_paciente;
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PacienteInsertar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `PacienteInsertar`(
    OUT p_id_persona_pk INT,
    OUT p_id_usuario_pk INT,
    IN p_username VARCHAR(50),
    IN p_contrasena VARCHAR(50),
    IN p_DNI VARCHAR(20),
    IN p_nombre_persona VARCHAR(50),
    IN p_apellido_persona VARCHAR(50),
    IN p_correo_electronico VARCHAR(45),
    IN p_num_telefono INT,	
    IN p_direccion VARCHAR(100),
    IN p_fecha_nacimiento DATE,
    IN p_genero CHAR(1)
)
BEGIN
	DECLARE id_persona INT;
	
    -- Insertar en la tabla Persona
    INSERT INTO Persona (DNI,nombre, apellido, correoElectronico, numTelefono, direccion, fechaNacimiento,genero)
    VALUES (p_DNI,p_nombre_persona, p_apellido_persona, p_correo_electronico, p_num_telefono, p_direccion, p_fecha_nacimiento, p_genero);
    
    SET id_persona = LAST_INSERT_ID(); -- Obtener el ID de la nueva persona
    SET p_id_persona_pk = id_persona;
    
    -- Insertar en la tabla Usuario
    INSERT INTO Usuario (username, contrasenha,idPersona,activo)
    VALUES (p_username, p_contrasena,id_persona,1);
    
    SET p_id_usuario_pk = LAST_INSERT_ID(); -- Obtener el ID del nuevo usuario
    
    INSERT INTO Paciente (idPaciente, historialActivo, activo)
    VALUES (id_persona, false, true);
    
    INSERT INTO Administrador (idAdministrador)
	VALUES (id_persona);
            
    INSERT INTO Auxiliar (idAuxiliar)
	VALUES (id_persona);
            
    INSERT INTO Medico (idMedico)
	VALUES (id_persona);
    
    INSERT INTO HistorialMedico(fechaCreacion,activo,idPaciente)
	VALUES (NOW(),true,id_persona);
    
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PacienteListar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `PacienteListar`()
BEGIN	
    select idPersona,DNI, nombre, apellido, correoElectronico, fechaNacimiento, historialActivo
	from Persona p, Paciente pa
	where p.idPersona = pa.idPaciente and pa.activo = 1;
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PacienteListarPorID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `PacienteListarPorID`(
	IN _id_paciente INT
)
BEGIN	
    select idPersona,DNI, nombre, apellido, correoElectronico, fechaNacimiento, historialActivo, genero
	from Persona p, Paciente pa
	where p.idPersona = pa.idPaciente and pa.idPaciente = _id_paciente
    and pa.activo = 1;
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PacienteModificar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `PacienteModificar`(
    IN p_id_paciente INT,
    IN p_DNI VARCHAR(20),
    IN p_nombre_persona VARCHAR(50),
    IN p_apellido_persona VARCHAR(50),
    IN p_correo_electronico VARCHAR(45),
    IN p_num_telefono INT,	
    IN p_direccion VARCHAR(100),
    IN p_fecha_nacimiento DATE,
    IN p_genero CHAR(1),
    IN p_historial BOOLEAN,
    IN p_activo BOOLEAN
)
BEGIN	
    UPDATE Persona
	SET 
		DNI = p_DNI,
		nombre = p_nombre_persona,
		apellido = p_apellido_persona,
		correoElectronico = p_correo_electronico,
		numTelefono = p_num_telefono,
		direccion = p_direccion,
		fechaNacimiento = p_fecha_nacimiento,
		genero = p_genero
	WHERE idPersona = p_id_paciente;
    
    UPDATE Paciente
    SET
		historialActivo = p_historial,
        activo = p_activo
	WHERE idPaciente = p_id_paciente;
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PACIENTE_ASEGURADORA_INSERTAR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `PACIENTE_ASEGURADORA_INSERTAR`(
    IN p_idPaciente INT,
    IN p_idAseguradora INT
)
BEGIN
    -- Verificar si la relación ya existe
    IF EXISTS (
        SELECT 1 FROM Paciente_has_Aseguradora 
        WHERE Paciente_idPaciente = p_idPaciente 
        AND Aseguradora_idAseguradora = p_idAseguradora
    ) THEN
        -- Si ya existe, lanzar un error
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'El paciente ya está asociado con esta aseguradora';
    ELSE
        -- Insertar la nueva relación
        INSERT INTO Paciente_has_Aseguradora (
            Paciente_idPaciente, 
            Aseguradora_idAseguradora
        ) VALUES (
            p_idPaciente, 
            p_idAseguradora
        );
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PagoEliminar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `PagoEliminar`(
	IN p_id_pago INT
)
BEGIN	
    UPDATE Pago SET estado = 0 WHERE idPago = p_id_pago;             
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PagoInsertar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `PagoInsertar`(
	OUT _p_id_pago INT,
	IN p_descuento DOUBLE,
    IN p_montoParcial DOUBLE,
    IN p_montoTotal DOUBLE,
    IN p_concepto VARCHAR(100),
    IN p_idPaciente INT
)
BEGIN	
    INSERT INTO Pago(descuentoPorSeguro,montoParcial,montoTotal,fechaPago,concepto,estado,idPaciente)
    VALUES (p_descuento,p_montoParcial,p_montoTotal,CURRENT_DATE,p_concepto,true,p_idPaciente);
    
    SET _p_id_pago = LAST_INSERT_ID();
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PagoListar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `PagoListar`()
BEGIN	
    SELECT idPago, descuentoPorSeguro, montoParcial, montoTotal, fechaPago, concepto, estado, idPaciente
    FROM Pago pago
    WHERE estado=1;
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PagoListarPorID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `PagoListarPorID`(
	IN _id_pago INT
)
BEGIN	
    SELECT idPago, descuentoPorSeguro, montoParcial, montoTotal, fechaPago, concepto, estado, idPaciente
    FROM Pago pago
    WHERE idPago=_id_pago and estado=1 ;
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SeleccionarMedicoPorEspecialidad` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `SeleccionarMedicoPorEspecialidad`(IN p_nombreEspecialidad VARCHAR(80))
SELECT 
    m.idMedico,
    p.nombre,
    p.apellido,
    m.numColegiatura,
    m.horaInicioTrabajo,
    m.horaFinTrabajo,
    m.diasLaborales,
    m.anhosExp,
    m.activo
FROM 
    Medico m
INNER JOIN 
    Persona p ON m.idMedico = p.idPersona
INNER JOIN 
    Especialidad e ON m.idEspecialidad = e.idEspecialidad
WHERE 
    e.nombre = p_nombreEspecialidad AND e.activo = 1 ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_actualizar_ambiente_medico` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_actualizar_ambiente_medico`(
    IN p_idAmbienteMedico INT,
    IN p_numPiso INT,
    IN p_ubicacion VARCHAR(100),
    IN p_capacidad INT,
    IN p_tipoAmbiente VARCHAR(50)
)
BEGIN
    -- Verificar si ya existe otro ambiente con la misma ubicación y número de piso
    IF EXISTS  (SELECT 1 FROM AmbienteMedico 
               WHERE numPiso = p_numPiso AND ubicacion = p_ubicacion 
               AND idAmbienteMedico != p_idAmbienteMedico AND activo = 1) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Otro ambiente médico ya existe con la misma ubicación y número de piso';
    ELSE
        -- Actualizar el ambiente médico
        UPDATE AmbienteMedico
        SET numPiso = p_numPiso,
            ubicacion = p_ubicacion,
            capacidad = p_capacidad,
            tipoAmbiente = p_tipoAmbiente
        WHERE idAmbienteMedico = p_idAmbienteMedico;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_cambio_estado_ambiente_medico` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_cambio_estado_ambiente_medico`(
    IN p_idAmbienteMedico INT
)
BEGIN
    DECLARE v_estadoActual INT;

   
        -- Obtener el estado actual del campo 'activo' del ambiente médico
        SELECT activo INTO v_estadoActual
        FROM AmbienteMedico
        WHERE idAmbienteMedico = p_idAmbienteMedico;

        -- Alternar el estado: si es 1, lo cambia a 0; si es 0, lo cambia a 1
        IF v_estadoActual = 1 THEN
            UPDATE AmbienteMedico
            SET activo = 0
            WHERE idAmbienteMedico = p_idAmbienteMedico;
        ELSE
            UPDATE AmbienteMedico
            SET activo = 1
            WHERE idAmbienteMedico = p_idAmbienteMedico;
        END IF;
   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_eliminar_cita_medica` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_eliminar_cita_medica`(
    IN p_idCitaMedica INT
)
BEGIN
    -- Verificar que la cita médica exista
    IF NOT EXISTS (SELECT 1 FROM CitaMedica WHERE idCitaMedica = p_idCitaMedica) THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'La cita médica no existe';
    END IF;

    -- Inactivar los procedimientos relacionados a la cita si existen
    IF EXISTS (SELECT 1 FROM Procedimiento WHERE idCitaMedica = p_idCitaMedica) THEN
        UPDATE Procedimiento 
        SET activo = 0 
        WHERE idCitaMedica = p_idCitaMedica;
    END IF;

    -- Inactivar los reportes médicos relacionados a la cita si existen
    IF EXISTS (SELECT 1 FROM ReporteMedico WHERE CitaMedica_idCitaMedica = p_idCitaMedica) THEN
        UPDATE ReporteMedico 
        SET activo = 0 
        WHERE CitaMedica_idCitaMedica = p_idCitaMedica;
    END IF;

    -- Finalmente, inactivar la cita médica si existe
    IF EXISTS (SELECT 1 FROM CitaMedica WHERE idCitaMedica = p_idCitaMedica) THEN
        UPDATE CitaMedica 
        SET activo = 0 
        WHERE idCitaMedica = p_idCitaMedica;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_eliminar_logico_ambiente_medico` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_eliminar_logico_ambiente_medico`(
    IN p_idAmbienteMedico INT
)
BEGIN
    -- Verificar si hay procedimientos activos asociados al ambiente médico
    IF EXISTS  (SELECT 1 FROM Procedimiento WHERE idAmbienteMedico = p_idAmbienteMedico AND activo = 1) THEN
        -- Si hay procedimientos activos, lanzar un error
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'No se puede eliminar el ambiente médico porque tiene procedimientos activos asociados';
    ELSE
        -- Si no hay procedimientos asociados, proceder con la eliminación lógica del ambiente médico
        UPDATE AmbienteMedico
        SET activo = 0
        WHERE idAmbienteMedico = p_idAmbienteMedico;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_eliminar_logico_procedimiento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_eliminar_logico_procedimiento`(
    IN p_idProcedimiento INT
)
BEGIN
    -- Verificar si el procedimiento está asociado a citas médicas activas

        -- Realizar la eliminación lógica del procedimiento
        UPDATE Procedimiento
        SET activo = 0
        WHERE idProcedimiento = p_idProcedimiento;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_eliminar_logico_reporte_medico` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_eliminar_logico_reporte_medico`(
    IN p_idReporteMedico INT
)
BEGIN
    -- Verificar si el reporte médico existe
    IF NOT EXISTS  (SELECT 1 FROM ReporteMedico WHERE idReporteMedico = p_idReporteMedico) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'El reporte médico no existe';
    ELSE
        -- Verificar si el reporte ya está inactivo (ya eliminado lógicamente)
        IF (SELECT activo FROM ReporteMedico WHERE idReporteMedico = p_idReporteMedico) = 0 THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'El reporte médico ya está inactivo';
        ELSE
            -- Realizar la eliminación lógica del reporte médico
            UPDATE ReporteMedico
            SET activo = 0
            WHERE idReporteMedico = p_idReporteMedico;

            -- Opcional: Mensaje de éxito (esto no es necesario, pero puede ser útil)
            SELECT 'Reporte médico eliminado lógicamente.' AS mensaje;
        END IF;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insertar_ambiente_medico` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_insertar_ambiente_medico`(
    IN p_numPiso INT,
    IN p_ubicacion VARCHAR(100),
    IN p_capacidad INT,
    IN p_tipoAmbiente VARCHAR(50)
)
BEGIN
    -- Verificar si ya existe un ambiente con la misma ubicación y número de piso que esté activo
    IF EXISTS  (SELECT 1 FROM AmbienteMedico 
               WHERE numPiso = p_numPiso AND ubicacion = p_ubicacion AND activo = 1) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'El ambiente médico ya existe con la misma ubicación y número de piso';
    ELSE
        -- Si no hay duplicados, insertar el nuevo ambiente médico
        INSERT INTO AmbienteMedico (numPiso, ubicacion, capacidad, tipoAmbiente, activo)
        VALUES (p_numPiso, p_ubicacion, p_capacidad, p_tipoAmbiente, 1);
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insertar_cita_medica` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_insertar_cita_medica`(
    IN p_tipoCita VARCHAR(45),
    IN p_estadoCita VARCHAR(45),
    IN p_fecha DATE,
    IN p_hora TIME,
    IN p_idMedico INT,
    IN p_idPaciente INT,
    IN p_plataforma VARCHAR(100),
    IN p_enlace VARCHAR(400),
    IN p_duracion TIME,
    IN p_numeroAmbiente INT,
    IN p_idPago INT,
    IN p_idHistorialMedico INT
)
BEGIN
    -- Verificar que el paciente exista y esté activo
    IF NOT EXISTS (SELECT 1 FROM Paciente WHERE idPaciente = p_idPaciente AND activo = 1) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'El paciente no existe o no está activo';
    END IF;

    -- Verificar que el médico exista y esté activo
    IF NOT EXISTS (SELECT 1 FROM Medico WHERE idMedico = p_idMedico AND activo = 1) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'El médico no existe o no está activo';
    END IF;

    -- Verificar que no haya un conflicto de horario para el médico y ambiente
    IF EXISTS (SELECT 1 FROM CitaMedica 
               WHERE idMedico = p_idMedico 
               AND fecha = p_fecha 
               AND hora = p_hora
               AND numeroAmbiente = p_numeroAmbiente) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'El médico o el ambiente ya están ocupados en la misma fecha y hora';
    END IF;

    -- Insertar la nueva cita médica con idHistorialMedico
    INSERT INTO CitaMedica (tipoCita, estadoCita, fecha, hora, idMedico, idPaciente, plataforma, enlace, duracion, numeroAmbiente, idPago, idHistorialMedico, activo)
    VALUES (p_tipoCita, p_estadoCita, p_fecha, p_hora, p_idMedico, p_idPaciente, p_plataforma, p_enlace, p_duracion, p_numeroAmbiente, p_idPago, p_idHistorialMedico, 1);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insertar_procedimiento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_insertar_procedimiento`(
    IN p_nombre VARCHAR(100),
    IN p_costo DOUBLE,
    IN p_descripcion VARCHAR(200),
    IN p_requisitosPrevios VARCHAR(200),
    IN p_tipoProcedimiento VARCHAR(50),
    IN p_idAmbienteMedico INT,
    IN p_fechaProcedimiento DATE
)
BEGIN
    -- Verificar si el ambiente médico está activo
    IF (SELECT activo FROM AmbienteMedico WHERE idAmbienteMedico = p_idAmbienteMedico) = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'No se puede asociar el procedimiento a un ambiente inactivo';
    ELSE
        -- Verificar si ya existe un procedimiento con el mismo nombre en el mismo ambiente médico
        IF EXISTS (SELECT 1 FROM Procedimiento WHERE nombre = p_nombre AND idAmbienteMedico = p_idAmbienteMedico) THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'El procedimiento ya existe en el ambiente médico';
        ELSE
            -- Insertar el nuevo procedimiento incluyendo la fecha corregida
            INSERT INTO Procedimiento (nombre, costo, descripcion, requisitosPrevios, tipoProcedimiento, idAmbienteMedico, fechaProcedimiento, activo)
            VALUES (p_nombre, p_costo, p_descripcion, p_requisitosPrevios, p_tipoProcedimiento, p_idAmbienteMedico, p_fechaProcedimiento, 1);
        END IF;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insertar_reporte_medico` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_insertar_reporte_medico`(
    IN p_diagnostico VARCHAR(500),
    IN p_tratamiento VARCHAR(500),
    IN p_enfermedad VARCHAR(100),
    IN p_fecha DATE,
    IN p_idCitaMedica INT  -- Agregar el parámetro para la cita médica
)
BEGIN
    -- Verificar si la cita médica existe y está activa
    IF NOT EXISTS  (SELECT 1 FROM CitaMedica WHERE idCitaMedica = p_idCitaMedica AND activo = 1) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'La cita médica no existe o no está activa';
    ELSE
        -- Verificar si el reporte médico ya existe
        IF EXISTS  (SELECT 1 FROM ReporteMedico 
                   WHERE diagnostico = p_diagnostico 
                   AND enfermedad = p_enfermedad 
                   AND fecha = p_fecha) THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'El reporte médico ya existe para esa fecha y diagnóstico';
        ELSE
            -- Insertar el nuevo reporte médico y vincularlo a la cita médica
            INSERT INTO ReporteMedico (diagnostico, tratamiento, enfermedad, fecha, activo, CitaMedica_idCitaMedica)
            VALUES (p_diagnostico, p_tratamiento, p_enfermedad, p_fecha, 1, p_idCitaMedica);
        END IF;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_listar_citas_por_idMedico` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_listar_citas_por_idMedico`(IN p_idMedico INT)
BEGIN
    -- Seleccionar todas las citas médicas activas para un médico específico
    SELECT 
        idCitaMedica, 
        tipoCita, 
        estadoCita, 
        idHistorialMedico, 
        idMedico, 
        fecha, 
        hora, 
        plataforma, 
        enlace, 
        duracion, 
        numeroAmbiente, 
        idPago, 
        idPaciente
    FROM 
        CitaMedica
    WHERE 
        idMedico = p_idMedico 
        AND activo = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_listar_citas_por_idPaciente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_listar_citas_por_idPaciente`(IN p_idPaciente INT)
BEGIN
    -- Seleccionar todas las citas médicas activas para un paciente específico
    SELECT 
        idCitaMedica, 
        tipoCita, 
        estadoCita, 
        idHistorialMedico, 
        idMedico, 
        fecha, 
        hora, 
        plataforma, 
        enlace, 
        duracion, 
        numeroAmbiente, 
        idPago, 
        idPaciente
    FROM 
        CitaMedica
    WHERE 
        idPaciente = p_idPaciente 
        AND activo = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_listar_todas_citas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_listar_todas_citas`()
BEGIN
    -- Seleccionar las citas médicas que están activas
    SELECT idCitaMedica, fecha, hora, estadoCita 
    FROM CitaMedica
    WHERE activo = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_listar_todos_ambiente_medico` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_listar_todos_ambiente_medico`()
BEGIN
    -- Seleccionar solo los ambientes médicos activos
    SELECT idAmbienteMedico, numPiso, ubicacion, capacidad, tipoAmbiente,activo
    FROM AmbienteMedico;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_listar_todos_procedimientos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_listar_todos_procedimientos`()
BEGIN
    -- Seleccionar todos los procedimientos que están activos
    SELECT idProcedimiento, nombre, costo, descripcion, requisitosPrevios, tipoProcedimiento
    FROM Procedimiento
    WHERE activo = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_listar_todos_reportes_medicos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_listar_todos_reportes_medicos`()
BEGIN
    -- Verificar si existen reportes médicos en la base de datos
    IF NOT EXISTS  (SELECT 1 FROM ReporteMedico) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'No hay reportes médicos registrados.';
    ELSE
        -- Seleccionar todos los reportes médicos que están activos (no eliminados lógicamente)
        SELECT idReporteMedico, diagnostico, tratamiento, enfermedad, fecha
        FROM ReporteMedico
        WHERE activo = 1;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_modificar_cita_medica` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_modificar_cita_medica`(
    IN p_idCitaMedica INT,
    IN p_estadoCita VARCHAR(45),
    IN p_fecha DATE,
    IN p_hora TIME,
    IN p_plataforma VARCHAR(100),
    IN p_enlace VARCHAR(200),
    IN p_numeroAmbiente INT
)
BEGIN
    -- Declaraciones de variables primero
    DECLARE v_idMedico INT;
    DECLARE v_numeroAmbiente INT;

    -- Verificar que la cita médica exista
    IF NOT EXISTS (SELECT 1 FROM CitaMedica WHERE idCitaMedica = p_idCitaMedica) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'La cita médica no existe';
    END IF;

    -- Obtener el médico y el ambiente asociados a la cita
    SELECT idMedico, numeroAmbiente INTO v_idMedico, v_numeroAmbiente
    FROM CitaMedica
    WHERE idCitaMedica = p_idCitaMedica;

    -- Verificar que no haya conflicto de horario con el médico o ambiente
    IF EXISTS (SELECT 1 FROM CitaMedica 
               WHERE idMedico = v_idMedico 
               AND fecha = p_fecha 
               AND hora = p_hora
               AND idCitaMedica != p_idCitaMedica
               AND numeroAmbiente = p_numeroAmbiente) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Conflicto de horario: el médico o el ambiente ya están ocupados en la misma fecha y hora';
    END IF;

    -- Modificar los datos de la cita médica
    UPDATE CitaMedica
    SET estadoCita = p_estadoCita,
        fecha = p_fecha,
        hora = p_hora,
        plataforma = p_plataforma,
        enlace = p_enlace,
        numeroAmbiente = p_numeroAmbiente
    WHERE idCitaMedica = p_idCitaMedica;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_modificar_procedimiento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_modificar_procedimiento`(
    IN p_idProcedimiento INT,
    IN p_nombre VARCHAR(100),
    IN p_costo DOUBLE,
    IN p_descripcion VARCHAR(200),
    IN p_requisitosPrevios VARCHAR(200),
    IN p_tipoProcedimiento VARCHAR(50)
)
BEGIN
    DECLARE v_idAmbienteMedico INT;

    -- Obtener el ambiente médico relacionado con el procedimiento
    SELECT idAmbienteMedico INTO v_idAmbienteMedico FROM Procedimiento WHERE idProcedimiento = p_idProcedimiento;

    -- Verificar si el ambiente médico está activo
    IF (SELECT activo FROM AmbienteMedico WHERE idAmbienteMedico = v_idAmbienteMedico) = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'No se puede modificar un procedimiento asociado a un ambiente inactivo';
    ELSE
        -- Verificar si ya existe otro procedimiento con el mismo nombre en el mismo ambiente médico
        IF EXISTS  (SELECT 1 FROM Procedimiento WHERE nombre = p_nombre AND idAmbienteMedico = v_idAmbienteMedico AND idProcedimiento != p_idProcedimiento) THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Ya existe otro procedimiento con el mismo nombre en el mismo ambiente médico';
        ELSE
            -- Actualizar el procedimiento
            UPDATE Procedimiento
            SET nombre = p_nombre,
                costo = p_costo,
                descripcion = p_descripcion,
                requisitosPrevios = p_requisitosPrevios,
                tipoProcedimiento = p_tipoProcedimiento
            WHERE idProcedimiento = p_idProcedimiento;
        END IF;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_modificar_reporte_medico` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_modificar_reporte_medico`(
    IN p_idReporteMedico INT,
    IN p_diagnostico VARCHAR(500),
    IN p_tratamiento VARCHAR(500),
    IN p_enfermedad VARCHAR(100),
    IN p_fecha DATE,
    IN p_idCitaMedica INT -- Nuevo parámetro para ID de Cita Médica
)
BEGIN
    -- Verificar si el reporte médico existe
    IF NOT EXISTS  (SELECT 1 FROM ReporteMedico WHERE idReporteMedico = p_idReporteMedico) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'El reporte médico no existe';
    ELSE
        -- Verificar si ya existe otro reporte médico con los mismos datos para evitar duplicados
        IF EXISTS  (SELECT 1 FROM ReporteMedico 
                   WHERE diagnostico = p_diagnostico 
                   AND tratamiento = p_tratamiento 
                   AND enfermedad = p_enfermedad 
                   AND fecha = p_fecha 
                   AND idReporteMedico != p_idReporteMedico) THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Ya existe otro reporte médico con el mismo diagnóstico, tratamiento, enfermedad y fecha';
        ELSE
            -- Actualizar el reporte médico
            UPDATE ReporteMedico
            SET diagnostico = p_diagnostico,
                tratamiento = p_tratamiento,
                enfermedad = p_enfermedad,
                fecha = p_fecha,
                CitaMedica_idCitaMedica = p_idCitaMedica -- Actualizar ID de Cita Médica
            WHERE idReporteMedico = p_idReporteMedico;
        END IF;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_obtener_ambiente_medico_por_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_obtener_ambiente_medico_por_id`(
    IN p_idAmbienteMedico INT
)
BEGIN
    -- Seleccionar el ambiente médico, independientemente de si está activo o no
    SELECT idAmbienteMedico, numPiso, ubicacion, capacidad, tipoAmbiente, activo
    FROM AmbienteMedico
    WHERE idAmbienteMedico = p_idAmbienteMedico;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_obtener_procedimientos_por_paciente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_obtener_procedimientos_por_paciente`(
    IN p_idPaciente INT -- Parámetro de entrada para el ID del paciente
)
BEGIN
    SELECT 
        p.idProcedimiento,
        p.nombre,
        p.descripcion,
        p.costo,
        p.requisitosPrevios,
        p.tipoProcedimiento,
        p.idAmbienteMedico 
    FROM 
        Procedimiento p
    JOIN 
        CitaMedica_has_Procedimiento cmp ON p.idProcedimiento = cmp.idProcedimiento
    JOIN 
        CitaMedica cm ON cmp.idCitaMedica = cm.idCitaMedica
    WHERE 
        cm.idPaciente = p_idPaciente AND p.activo = 1; -- Filtra por el ID del paciente proporcionado
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_obtener_procedimiento_por_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_obtener_procedimiento_por_id`(
    IN p_idProcedimiento INT
)
BEGIN
    -- Seleccionar el procedimiento por ID
    SELECT idProcedimiento, nombre, costo, descripcion, requisitosPrevios, tipoProcedimiento, activo
    FROM Procedimiento
    WHERE idProcedimiento = p_idProcedimiento;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_obtener_reporte_medico_por_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_obtener_reporte_medico_por_id`(
    IN p_idReporteMedico INT
)
BEGIN
    -- Verificar si el reporte médico existe
    IF NOT EXISTS  (SELECT 1 FROM ReporteMedico WHERE idReporteMedico = p_idReporteMedico) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'El reporte médico no existe';
    ELSE
        -- Verificar si el reporte está activo
        IF (SELECT activo FROM ReporteMedico WHERE idReporteMedico = p_idReporteMedico) = 0 THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'El reporte médico está inactivo';
        ELSE
            -- Devolver los detalles del reporte médico
            SELECT idReporteMedico, diagnostico, tratamiento, enfermedad, fecha
            FROM ReporteMedico
            WHERE idReporteMedico = p_idReporteMedico;
        END IF;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `TokenGuardar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `TokenGuardar`(
    IN p_email VARCHAR(100),
    IN p_token VARCHAR(32),
    IN p_expiracion DATETIME
)
BEGIN
    -- Invalidamos tokens anteriores del mismo usuario
    UPDATE Reset_tokens 
    SET usado = TRUE 
    WHERE email = p_email AND usado = FALSE;
    
    -- Insertamos el nuevo token
    INSERT INTO Reset_tokens (email, token, expiracion) 
    VALUES (p_email, p_token, p_expiracion);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `TokenValidar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `TokenValidar`(
    IN p_token VARCHAR(32),
    OUT p_es_valido INT
)
BEGIN
    DECLARE token_id INT;
    
    -- Obtener el ID del token que se está validando
    SELECT idToken INTO token_id
    FROM Reset_tokens
    WHERE token = p_token 
    AND usado = FALSE 
    AND expiracion > NOW()
    LIMIT 1;
    
    IF token_id IS NOT NULL THEN
        SET p_es_valido = 1;
        -- Marcamos el token como usado usando el ID obtenido
        UPDATE Reset_tokens 
        SET usado = TRUE 
        WHERE idToken = token_id AND token = p_token;  -- Verificamos que el token también coincida
    ELSE
        SET p_es_valido = 0;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UsuarioEliminar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `UsuarioEliminar`(
	IN _id_usuario INT
)
BEGIN	
    UPDATE Usuario SET activo = 0 WHERE idUsuario = _id_usuario;
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UsuarioListar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `UsuarioListar`()
BEGIN	
    SELECT idUsuario, username, contrasenha, idPersona
    FROM Usuario
    WHERE activo = 1;
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UsuarioListarPorID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `UsuarioListarPorID`(
	IN _id_usu INT
)
BEGIN	
    SELECT idUsuario, username, contrasenha, idPersona
    FROM Usuario
    WHERE idUsuario = _id_usu and activo = 1;
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UsuarioModificar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `UsuarioModificar`(
	IN _id_usuario INT,
    IN _nueva_contra VARCHAR(100)
)
BEGIN	
    UPDATE Usuario SET contrasenha = _nueva_contra WHERE idUsuario = _id_usuario;
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UsuarioReset` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `UsuarioReset`(
    IN _username varchar(20),
    IN email varchar(45)
)
BEGIN	
    SELECT idUsuario, username, contrasenha, u.idPersona
    FROM Usuario u, Persona p
    WHERE username = _username and correoElectronico = email and
    u.idPersona = p.idPersona and activo = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UsuarioValidar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `UsuarioValidar`(
	IN _username varchar(20)
)
BEGIN	
    SELECT idUsuario, username, contrasenha, idPersona
    FROM Usuario
    WHERE username = _username and activo = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-24 23:23:34
