-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: 172.16.95.4    Database: casabierta
-- ------------------------------------------------------
-- Server version	9.3.0

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
-- Table structure for table `auditoria_huesped`
--

DROP TABLE IF EXISTS `auditoria_huesped`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auditoria_huesped` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rut_old` varchar(12) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rut_new` varchar(12) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pasaporte_old` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pasaporte_new` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nombre_old` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nombre_new` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `apellido_p_old` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `apellido_p_new` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `apellido_m_old` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `apellido_m_new` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nacionalidad_id_old` int DEFAULT NULL,
  `nacionalidad_id_new` int DEFAULT NULL,
  `ciudad_id_old` int DEFAULT NULL,
  `ciudad_id_new` int DEFAULT NULL,
  `fecha_nacimiento_old` date DEFAULT NULL,
  `fecha_nacimiento_new` date DEFAULT NULL,
  `direccion_old` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `direccion_new` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `telefono_old` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `telefono_new` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `correo_old` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `correo_new` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `estado_id_old` int DEFAULT NULL,
  `estado_id_new` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_huesped`
--

LOCK TABLES `auditoria_huesped` WRITE;
/*!40000 ALTER TABLE `auditoria_huesped` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditoria_huesped` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add usuario',7,'add_usuario'),(26,'Can change usuario',7,'change_usuario'),(27,'Can delete usuario',7,'delete_usuario'),(28,'Can view usuario',7,'view_usuario'),(29,'Can add caracteristicas habitacion',8,'add_caracteristicashabitacion'),(30,'Can change caracteristicas habitacion',8,'change_caracteristicashabitacion'),(31,'Can delete caracteristicas habitacion',8,'delete_caracteristicashabitacion'),(32,'Can view caracteristicas habitacion',8,'view_caracteristicashabitacion'),(33,'Can add datos personales',9,'add_datospersonales'),(34,'Can change datos personales',9,'change_datospersonales'),(35,'Can delete datos personales',9,'delete_datospersonales'),(36,'Can view datos personales',9,'view_datospersonales'),(37,'Can add estados habitacion',10,'add_estadoshabitacion'),(38,'Can change estados habitacion',10,'change_estadoshabitacion'),(39,'Can delete estados habitacion',10,'delete_estadoshabitacion'),(40,'Can view estados habitacion',10,'view_estadoshabitacion'),(41,'Can add estado solicitudes',11,'add_estadosolicitudes'),(42,'Can change estado solicitudes',11,'change_estadosolicitudes'),(43,'Can delete estado solicitudes',11,'delete_estadosolicitudes'),(44,'Can view estado solicitudes',11,'view_estadosolicitudes'),(45,'Can add fundacion',12,'add_fundacion'),(46,'Can change fundacion',12,'change_fundacion'),(47,'Can delete fundacion',12,'delete_fundacion'),(48,'Can view fundacion',12,'view_fundacion'),(49,'Can add movilidad',13,'add_movilidad'),(50,'Can change movilidad',13,'change_movilidad'),(51,'Can delete movilidad',13,'delete_movilidad'),(52,'Can view movilidad',13,'view_movilidad'),(53,'Can add proceso',14,'add_proceso'),(54,'Can change proceso',14,'change_proceso'),(55,'Can delete proceso',14,'delete_proceso'),(56,'Can view proceso',14,'view_proceso'),(57,'Can add cuidador',15,'add_cuidador'),(58,'Can change cuidador',15,'change_cuidador'),(59,'Can delete cuidador',15,'delete_cuidador'),(60,'Can view cuidador',15,'view_cuidador'),(61,'Can add habitacion',16,'add_habitacion'),(62,'Can change habitacion',16,'change_habitacion'),(63,'Can delete habitacion',16,'delete_habitacion'),(64,'Can view habitacion',16,'view_habitacion'),(65,'Can add pasante',17,'add_pasante'),(66,'Can change pasante',17,'change_pasante'),(67,'Can delete pasante',17,'delete_pasante'),(68,'Can view pasante',17,'view_pasante'),(69,'Can add paciente',18,'add_paciente'),(70,'Can change paciente',18,'change_paciente'),(71,'Can delete paciente',18,'delete_paciente'),(72,'Can view paciente',18,'view_paciente'),(73,'Can add solicitud',19,'add_solicitud'),(74,'Can change solicitud',19,'change_solicitud'),(75,'Can delete solicitud',19,'delete_solicitud'),(76,'Can view solicitud',19,'view_solicitud'),(77,'Can add habitacion',20,'add_habitacion'),(78,'Can change habitacion',20,'change_habitacion'),(79,'Can delete habitacion',20,'delete_habitacion'),(80,'Can view habitacion',20,'view_habitacion'),(81,'Can add paciente',21,'add_paciente'),(82,'Can change paciente',21,'change_paciente'),(83,'Can delete paciente',21,'delete_paciente'),(84,'Can view paciente',21,'view_paciente'),(85,'Can add solicitud alojamiento',22,'add_solicitudalojamiento'),(86,'Can change solicitud alojamiento',22,'change_solicitudalojamiento'),(87,'Can delete solicitud alojamiento',22,'delete_solicitudalojamiento'),(88,'Can view solicitud alojamiento',22,'view_solicitudalojamiento');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$1000000$MsDNS4Sqf8n9o1pSGHScQD$6tH6lU7lLxykk8z1IYngX2VanLF7nBanIMz2nZ1dfEk=',NULL,1,'Victor','','','vosses1328@gmail.com',1,1,'2025-09-13 04:54:28.298626');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bano`
--

DROP TABLE IF EXISTS `bano`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bano` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bano`
--

LOCK TABLES `bano` WRITE;
/*!40000 ALTER TABLE `bano` DISABLE KEYS */;
INSERT INTO `bano` VALUES (1,'normal'),(2,'compartido'),(3,'discapacitado');
/*!40000 ALTER TABLE `bano` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cama`
--

DROP TABLE IF EXISTS `cama`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cama` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cama`
--

LOCK TABLES `cama` WRITE;
/*!40000 ALTER TABLE `cama` DISABLE KEYS */;
INSERT INTO `cama` VALUES (1,'normal'),(2,'clinica');
/*!40000 ALTER TABLE `cama` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ciudad`
--

DROP TABLE IF EXISTS `ciudad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ciudad` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `region_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ciudad_region` (`region_id`),
  CONSTRAINT `ciudad_region` FOREIGN KEY (`region_id`) REFERENCES `region` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudad`
--

LOCK TABLES `ciudad` WRITE;
/*!40000 ALTER TABLE `ciudad` DISABLE KEYS */;
INSERT INTO `ciudad` VALUES (1,'Arica',1),(2,'Putre',1),(3,'Iquique',2),(4,'Alto Hospicio',2),(5,'Pozo Almonte',2),(6,'Antofagasta',3),(7,'Calama',3),(8,'Tocopilla',3),(9,'Copiapó',4),(10,'Vallenar',4),(11,'Chañaral',4),(12,'La Serena',5),(13,'Coquimbo',5),(14,'Ovalle',5),(15,'Valparaíso',6),(16,'Viña del Mar',6),(17,'Quillota',6),(18,'San Antonio',6),(19,'Santiago',7),(20,'Puente Alto',7),(21,'San Bernardo',7),(22,'Maipú',7),(23,'Rancagua',8),(24,'San Fernando',8),(25,'Santa Cruz',8),(26,'Talca',9),(27,'Curicó',9),(28,'Linares',9),(29,'Chillán',10),(30,'San Carlos',10),(31,'Quirihue',10),(32,'Concepción',11),(33,'Los Ángeles',11),(34,'Talcahuano',11),(35,'Chiguayante',11),(36,'Temuco',12),(37,'Villarrica',12),(38,'Angol',12),(39,'Valdivia',13),(40,'La Unión',13),(41,'Río Bueno',13),(42,'Puerto Montt',14),(43,'Osorno',14),(44,'Castro',14),(45,'Coyhaique',15),(46,'Puerto Aysén',15),(47,'Chile Chico',15),(48,'Punta Arenas',16),(49,'Puerto Natales',16),(50,'Porvenir',16);
/*!40000 ALTER TABLE `ciudad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comida`
--

DROP TABLE IF EXISTS `comida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comida` (
  `id` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_tipo` int DEFAULT NULL,
  `id_restriccion` int DEFAULT NULL,
  `id_menu_dia` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comida_tipo` (`id_tipo`),
  KEY `comida_restriccion` (`id_restriccion`),
  KEY `comida_menu_dia` (`id_menu_dia`),
  CONSTRAINT `comida_menu_dia` FOREIGN KEY (`id_menu_dia`) REFERENCES `menu_dia` (`id`),
  CONSTRAINT `comida_restriccion` FOREIGN KEY (`id_restriccion`) REFERENCES `restricciones` (`id`),
  CONSTRAINT `comida_tipo` FOREIGN KEY (`id_tipo`) REFERENCES `tipo_comida` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comida`
--

LOCK TABLES `comida` WRITE;
/*!40000 ALTER TABLE `comida` DISABLE KEYS */;
INSERT INTO `comida` VALUES (1,'Leche',1,NULL,4),(2,'Te',1,NULL,5),(3,'cafe',1,NULL,6),(4,'Arroz',2,NULL,4),(5,'Tallarin',2,NULL,4),(6,'Yogurt',4,NULL,6),(7,'leche',3,NULL,7),(8,NULL,NULL,NULL,8),(9,NULL,NULL,NULL,9),(10,NULL,NULL,NULL,10),(11,NULL,NULL,NULL,11),(12,NULL,NULL,NULL,12),(13,'asd',NULL,NULL,7),(14,'anima',2,NULL,7),(15,'arroz',4,NULL,6),(16,'leche',3,NULL,13),(17,'helado',4,NULL,14),(18,'arroz',2,NULL,15),(19,'arroz',2,NULL,16),(20,'leche',1,NULL,17),(21,'leche',1,NULL,18),(22,'leche',1,NULL,19),(23,'arroz',2,NULL,18),(24,'arroz',4,NULL,20),(25,'leche',1,NULL,18),(26,'asd',1,NULL,18),(27,'leche',1,NULL,18),(28,'arroz',2,NULL,21),(29,'helado',4,NULL,21),(30,'arroz',1,NULL,22),(31,'arroz',1,NULL,22);
/*!40000 ALTER TABLE `comida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuidador`
--

DROP TABLE IF EXISTS `cuidador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuidador` (
  `id` int NOT NULL AUTO_INCREMENT,
  `antecedente_salud` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `parentesco_id` int DEFAULT NULL,
  `educacion_id` int DEFAULT NULL,
  `trabajo` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `huesped_id` int DEFAULT NULL,
  `paciente_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_nivel_educacional` (`educacion_id`),
  KEY `fk_huesped_cuidador` (`huesped_id`),
  KEY `fk_paciente_cuidador` (`paciente_id`),
  KEY `fk_relacion_paciente` (`parentesco_id`) USING BTREE,
  KEY `fk_trabajo` (`trabajo`) USING BTREE,
  CONSTRAINT `fk_huesped_cuidador` FOREIGN KEY (`huesped_id`) REFERENCES `datos_personales` (`id`),
  CONSTRAINT `fk_nivel_educacional` FOREIGN KEY (`educacion_id`) REFERENCES `nivel_educacional` (`id`),
  CONSTRAINT `fk_paciente_cuidador` FOREIGN KEY (`paciente_id`) REFERENCES `paciente` (`id`),
  CONSTRAINT `fk_parentesco_paciente` FOREIGN KEY (`parentesco_id`) REFERENCES `parentesco` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuidador`
--

LOCK TABLES `cuidador` WRITE;
/*!40000 ALTER TABLE `cuidador` DISABLE KEYS */;
INSERT INTO `cuidador` VALUES (1,'Sano',1,5,'Informatico',2,1),(2,'Sano',6,4,'Dueño de casa',4,2),(3,'Sano',5,5,'Gastronomia',6,3),(4,'Sano',4,7,'Médico',8,4),(5,'Sano',2,7,'Comerciante',10,5),(6,'Sano',4,1,'Médico',12,6),(7,'Sano',2,2,'Comerciante',14,7),(8,'Sano',5,4,'Enfermero',16,8),(9,'Sano',6,5,'Comerciante',18,9),(11,'Sano',8,4,'Enfermero',20,10);
/*!40000 ALTER TABLE `cuidador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datos_personales`
--

DROP TABLE IF EXISTS `datos_personales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `datos_personales` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rut` varchar(12) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pasaporte` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `apellido_p` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `apellido_m` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nacionalidad_id` int DEFAULT NULL,
  `ciudad_id` int DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `telefono` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `correo` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `estado_id` int DEFAULT NULL,
  `n_habitaciones` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rut` (`rut`),
  UNIQUE KEY `pasaporte` (`pasaporte`),
  KEY `huesped_nacionalidad` (`nacionalidad_id`),
  KEY `huesped_ciudad` (`ciudad_id`),
  KEY `huesped_estado` (`estado_id`),
  CONSTRAINT `huesped_ciudad` FOREIGN KEY (`ciudad_id`) REFERENCES `ciudad` (`id`),
  CONSTRAINT `huesped_estado` FOREIGN KEY (`estado_id`) REFERENCES `estado_huesped` (`id`),
  CONSTRAINT `huesped_nacionalidad` FOREIGN KEY (`nacionalidad_id`) REFERENCES `nacionalidad` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datos_personales`
--

LOCK TABLES `datos_personales` WRITE;
/*!40000 ALTER TABLE `datos_personales` DISABLE KEYS */;
INSERT INTO `datos_personales` VALUES (1,'12345678-9',NULL,'Juan','Pérez','González',1,1,'1990-01-01','Calle Falsa 123','987654321','juan.perez@ejemplo.com',1,1),(2,'98765432-1',NULL,'Ana','Lopez','Martínez',1,2,'1985-03-15','Avenida Siempre Viva 456','998877665','ana.lopez@ejemplo.com',1,1),(3,'23456789-0',NULL,'Carlos','Sánchez','Rodríguez',1,3,'1982-07-10','Calle 2 789','966554433','carlos.sanchez@ejemplo.com',1,2),(4,'34567890-1',NULL,'María','González','Ruiz',1,4,'1992-05-20','Calle 10 123','944332211','maria.gonzalez@ejemplo.com',1,3),(5,'45678901-2','P5678901','Pedro','Martínez','García',1,5,'1988-12-25','Avenida Libertador 567','933221100','pedro.martinez@ejemplo.com',3,1),(6,'56789012-3','P6789012','Laura','Hernández','Pérez',1,6,'1994-09-30','Calle Nueva 456','922110099','laura.hernandez@ejemplo.com',3,2),(7,'67890123-4','P7890123','José','López','Hernández',1,7,'1980-06-12','Calle del Sol 789','911223344','jose.lopez@ejemplo.com',4,1),(8,'78901234-5','P8901234','Marta','Ferrer','Gómez',1,8,'1996-11-01','Avenida San Martín 321','900112233','marta.ferrer@ejemplo.com',4,2),(9,'89012345-6','P9012345','Luis','Díaz','Cruz',1,9,'1986-02-18','Calle Larga 654','877665544','luis.diaz@ejemplo.com',1,1),(10,'90123456-7','P0123456','Patricia','Vásquez','Morales',1,10,'1993-08-08','Calle de la Paz 234','866554433','patricia.vasquez@ejemplo.com',1,3),(11,'01234567-8','P1234568','Raúl','Jiménez','Serrano',1,11,'1987-04-22','Calle del Río 789','855443322','raul.jimenez@ejemplo.com',3,2),(12,'88990011-9','P2345679','Silvia','Ramírez','López',1,12,'1983-01-30','Avenida Gran Vía 456','844332211','silvia.ramirez@ejemplo.com',3,1),(13,'77889900-0','P3456790','Francisco','Moreno','Torres',1,13,'1995-09-17','Calle San Juan 321','833221100','francisco.moreno@ejemplo.com',3,2),(14,'66778899-1','P4567901','Raquel','Vega','Paredes',1,14,'1984-06-10','Calle Alta 123','822110099','raquel.vega@ejemplo.com',3,3),(15,'55667788-2','P5678912','Fernando','Torres','Jiménez',1,15,'1990-03-05','Calle Real 789','811223344','fernando.torres@ejemplo.com',3,1),(16,'44556677-3','P6789023','Claudia','Gómez','López',1,16,'1997-12-25','Avenida Mirasol 234','800112233','claudia.gomez@ejemplo.com',3,2),(17,'33445566-4','P7890134','Juan Carlos','Ramírez','Vega',1,17,'1985-05-11','Calle del Mar 456','788665544','juancarlos.ramirez@ejemplo.com',1,1),(18,'22334455-5','P8901245','Beatriz','Martínez','Ramírez',1,18,'1992-07-19','Avenida del Norte 654','777554433','beatriz.martinez@ejemplo.com',1,3),(19,'11223344-6','','Carlos Alberto','Soto','Salazar',1,19,'1981-02-14','Calle Verde 321','766443322','carlos.soto@ejemplo.com',3,1),(20,'7-8',NULL,'Cristian','Orion','Ortega',1,1,'2000-11-25','Calle 1 1212','112233445','c.orion@ejemplo.com',3,1);
/*!40000 ALTER TABLE `datos_personales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_general_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'inicio','usuario'),(6,'sessions','session'),(8,'solicitudes','caracteristicashabitacion'),(15,'solicitudes','cuidador'),(9,'solicitudes','datospersonales'),(10,'solicitudes','estadoshabitacion'),(11,'solicitudes','estadosolicitudes'),(12,'solicitudes','fundacion'),(16,'solicitudes','habitacion'),(13,'solicitudes','movilidad'),(18,'solicitudes','paciente'),(17,'solicitudes','pasante'),(14,'solicitudes','proceso'),(19,'solicitudes','solicitud'),(20,'solicitud_cambio','habitacion'),(21,'solicitud_cambio','paciente'),(22,'solicitud_cambio','solicitudalojamiento');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2025-09-13 03:25:07.730374'),(2,'auth','0001_initial','2025-09-13 03:25:10.750785'),(3,'admin','0001_initial','2025-09-13 03:25:11.216676'),(4,'admin','0002_logentry_remove_auto_add','2025-09-13 03:25:11.282825'),(5,'admin','0003_logentry_add_action_flag_choices','2025-09-13 03:25:11.343059'),(6,'contenttypes','0002_remove_content_type_name','2025-09-13 03:25:11.962337'),(7,'auth','0002_alter_permission_name_max_length','2025-09-13 03:25:12.151713'),(8,'auth','0003_alter_user_email_max_length','2025-09-13 03:25:12.327068'),(9,'auth','0004_alter_user_username_opts','2025-09-13 03:25:12.408613'),(10,'auth','0005_alter_user_last_login_null','2025-09-13 03:25:12.650112'),(11,'auth','0006_require_contenttypes_0002','2025-09-13 03:25:12.727369'),(12,'auth','0007_alter_validators_add_error_messages','2025-09-13 03:25:12.806444'),(13,'auth','0008_alter_user_username_max_length','2025-09-13 03:25:13.083497'),(14,'auth','0009_alter_user_last_name_max_length','2025-09-13 03:25:13.287493'),(15,'auth','0010_alter_group_name_max_length','2025-09-13 03:25:13.447629'),(16,'auth','0011_update_proxy_permissions','2025-09-13 03:25:13.793379'),(17,'auth','0012_alter_user_first_name_max_length','2025-09-13 03:25:14.034132'),(18,'inicio','0001_initial','2025-09-13 03:25:14.225340'),(19,'sessions','0001_initial','2025-09-13 03:25:14.548036'),(20,'solicitud_cambio','0001_initial','2025-09-13 03:25:15.381602'),(21,'solicitudes','0001_initial','2025-09-13 03:25:20.102536'),(22,'solicitudes','0002_remove_solicitud_perfil','2025-09-13 03:25:20.794019'),(23,'solicitudes','0003_delete_perfilesusuarios','2025-09-13 03:25:20.912795'),(24,'solicitudes','0004_datospersonales_perfil','2025-09-13 03:25:21.169944'),(25,'solicitudes','0005_alter_solicitud_movilidad','2025-09-13 03:25:21.800467'),(26,'solicitudes','0006_rename_datospersonales_paciente_datos_personales_and_more','2025-09-13 03:25:24.852337'),(27,'solicitudes','0007_rename_datospersonales_cuidador_datos_personales','2025-09-13 03:25:25.824699'),(28,'solicitudes','0008_solicitud_comentarios_solicitud_fecha_creacion_and_more','2025-09-13 04:51:38.411907');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('px2nzf2mppx94s88cl277mdyarpf9djb','eyJ1c3VhcmlvIjoiYWRtaW5AZGVtby5jb20iLCJwZXJmaWwiOiJhZG1pbmlzdHJhY2lcdTAwZjNuIn0:1uxGyC:FS9Q9ImUaEbVu0FnXdfLnNSe1XLj9I5p0SkCQvf26VI','2025-09-27 03:30:36.937987'),('rnr0ieeid55b71iy991gchcevt9n2kzo','eyJ1c3VhcmlvIjoiYWRtaW5AZGVtby5jb20iLCJwZXJmaWwiOiJhZG1pbmlzdHJhY2lcdTAwZjNuIn0:1uxIMC:_kOyAdbmprV7fRR5lZxBHHBmset1ZWNu5WmTPmvA3Ws','2025-09-27 04:59:28.607392');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado_habitacion`
--

DROP TABLE IF EXISTS `estado_habitacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estado_habitacion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `estado` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado_habitacion`
--

LOCK TABLES `estado_habitacion` WRITE;
/*!40000 ALTER TABLE `estado_habitacion` DISABLE KEYS */;
INSERT INTO `estado_habitacion` VALUES (1,'disponible'),(2,'ocupado'),(3,'asignada'),(4,'mantenimiento');
/*!40000 ALTER TABLE `estado_habitacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado_huesped`
--

DROP TABLE IF EXISTS `estado_huesped`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estado_huesped` (
  `id` int NOT NULL AUTO_INCREMENT,
  `estado` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado_huesped`
--

LOCK TABLES `estado_huesped` WRITE;
/*!40000 ALTER TABLE `estado_huesped` DISABLE KEYS */;
INSERT INTO `estado_huesped` VALUES (1,'Activo'),(2,'Cancelado'),(3,'Pendiente'),(4,'esperando');
/*!40000 ALTER TABLE `estado_huesped` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado_registro`
--

DROP TABLE IF EXISTS `estado_registro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estado_registro` (
  `id` int NOT NULL AUTO_INCREMENT,
  `estado` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado_registro`
--

LOCK TABLES `estado_registro` WRITE;
/*!40000 ALTER TABLE `estado_registro` DISABLE KEYS */;
INSERT INTO `estado_registro` VALUES (1,'activo'),(2,'espera'),(3,'cancelado'),(4,'pendiente');
/*!40000 ALTER TABLE `estado_registro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fundacion`
--

DROP TABLE IF EXISTS `fundacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fundacion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fundacion`
--

LOCK TABLES `fundacion` WRITE;
/*!40000 ALTER TABLE `fundacion` DISABLE KEYS */;
INSERT INTO `fundacion` VALUES (1,'Coaniquem'),(2,'Teletón');
/*!40000 ALTER TABLE `fundacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `habitacion`
--

DROP TABLE IF EXISTS `habitacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `habitacion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `numero` int DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `estado_id` int DEFAULT NULL,
  `cama_id` int DEFAULT NULL,
  `bano_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `habitacion_estado` (`estado_id`),
  KEY `habitacion_cama` (`cama_id`),
  KEY `habitacion_bano` (`bano_id`),
  CONSTRAINT `habitacion_bano` FOREIGN KEY (`bano_id`) REFERENCES `bano` (`id`),
  CONSTRAINT `habitacion_cama` FOREIGN KEY (`cama_id`) REFERENCES `cama` (`id`),
  CONSTRAINT `habitacion_estado` FOREIGN KEY (`estado_id`) REFERENCES `estado_habitacion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `habitacion`
--

LOCK TABLES `habitacion` WRITE;
/*!40000 ALTER TABLE `habitacion` DISABLE KEYS */;
INSERT INTO `habitacion` VALUES (1,1,'',1,1,2),(2,2,'',1,2,2),(3,3,'',1,1,3),(4,4,'',1,2,1),(5,5,'',1,1,2),(6,6,'',1,2,3),(7,7,'',1,1,1),(8,8,'',1,2,2),(9,9,'',1,1,3),(10,10,'',1,2,1),(11,11,'',1,1,2),(12,12,'',1,2,3),(13,13,'',2,1,1),(14,14,'',2,2,2),(15,15,'',2,1,3),(16,16,'',2,2,1),(17,17,'',3,1,2),(18,18,'',3,2,3),(19,19,'',1,1,1),(20,20,'',1,2,2),(21,21,'',1,1,3),(22,22,'',1,2,1),(23,23,'',2,1,2),(24,24,'',2,2,3),(25,25,'',2,1,1),(26,26,'',2,2,2),(27,27,'',4,1,3),(28,28,'',4,2,1);
/*!40000 ALTER TABLE `habitacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inicio_usuario`
--

DROP TABLE IF EXISTS `inicio_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inicio_usuario` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(254) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `perfil` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inicio_usuario`
--

LOCK TABLES `inicio_usuario` WRITE;
/*!40000 ALTER TABLE `inicio_usuario` DISABLE KEYS */;
INSERT INTO `inicio_usuario` VALUES (1,'admin@demo.com','admin123','administración');
/*!40000 ALTER TABLE `inicio_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invio_pdf`
--

DROP TABLE IF EXISTS `invio_pdf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invio_pdf` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha_envio` date DEFAULT NULL,
  `menu_semana_id` int DEFAULT NULL,
  `huesped_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_menu_semana_pdf` (`menu_semana_id`),
  KEY `fk_huesped_pdf` (`huesped_id`),
  CONSTRAINT `fk_huesped_pdf` FOREIGN KEY (`huesped_id`) REFERENCES `datos_personales` (`id`),
  CONSTRAINT `fk_menu_semana_pdf` FOREIGN KEY (`menu_semana_id`) REFERENCES `menu_semana` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invio_pdf`
--

LOCK TABLES `invio_pdf` WRITE;
/*!40000 ALTER TABLE `invio_pdf` DISABLE KEYS */;
/*!40000 ALTER TABLE `invio_pdf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_dia`
--

DROP TABLE IF EXISTS `menu_dia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_dia` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dia` date DEFAULT NULL,
  `menu_semana_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_dia_menu_semana` (`menu_semana_id`),
  CONSTRAINT `fk_menu_semana` FOREIGN KEY (`menu_semana_id`) REFERENCES `menu_semana` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_dia`
--

LOCK TABLES `menu_dia` WRITE;
/*!40000 ALTER TABLE `menu_dia` DISABLE KEYS */;
INSERT INTO `menu_dia` VALUES (1,'2024-11-04',1),(2,'2024-11-05',1),(3,'2024-11-06',1),(4,'2024-11-11',2),(5,'2024-11-12',2),(6,'2024-11-13',2),(7,'2024-11-14',2),(8,NULL,3),(9,NULL,3),(10,NULL,3),(11,NULL,3),(12,NULL,3),(13,'2024-11-20',4),(14,'2024-11-15',2),(15,'2024-11-16',2),(16,'2024-11-18',4),(17,'2024-11-17',2),(18,'2024-11-19',4),(19,'2024-11-25',5),(20,'2024-11-21',4),(21,'2024-11-27',5),(22,'2024-11-28',5);
/*!40000 ALTER TABLE `menu_dia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_semana`
--

DROP TABLE IF EXISTS `menu_semana`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_semana` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `trabajador_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_semana_trabajador` (`trabajador_id`),
  CONSTRAINT `fk_trabajador` FOREIGN KEY (`trabajador_id`) REFERENCES `trabajador` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_semana`
--

LOCK TABLES `menu_semana` WRITE;
/*!40000 ALTER TABLE `menu_semana` DISABLE KEYS */;
INSERT INTO `menu_semana` VALUES (1,'2024-11-04','2024-11-10','2024-11-03',1),(2,'2024-11-11','2024-11-17','2024-11-10',1),(3,'1969-12-29','1970-01-04','2024-11-13',NULL),(4,'2024-11-18','2024-11-24','2024-11-13',NULL),(5,'2024-11-25','2024-12-01','2024-11-19',1);
/*!40000 ALTER TABLE `menu_semana` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modulo`
--

DROP TABLE IF EXISTS `modulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modulo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modulo`
--

LOCK TABLES `modulo` WRITE;
/*!40000 ALTER TABLE `modulo` DISABLE KEYS */;
INSERT INTO `modulo` VALUES (1,'Inicio'),(2,'Recepción'),(3,'Habitaciones'),(4,'Colegio Hospitalario'),(5,'Casino'),(6,'Administración');
/*!40000 ALTER TABLE `modulo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nacionalidad`
--

DROP TABLE IF EXISTS `nacionalidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nacionalidad` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pais` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nacionalidad`
--

LOCK TABLES `nacionalidad` WRITE;
/*!40000 ALTER TABLE `nacionalidad` DISABLE KEYS */;
INSERT INTO `nacionalidad` VALUES (1,'Chileno','Chile'),(2,'Argentino','Argentina'),(3,'Brasileño','Brasil'),(4,'Peruano','Perú'),(5,'Colombiano','Colombia'),(6,'Mexicano','México'),(7,'Español','España'),(8,'Estadounidense','Estados Unidos'),(9,'Canadiense','Canadá'),(10,'Británico','Reino Unido'),(11,'Francés','Francia'),(12,'Alemán','Alemania'),(13,'Italiana','Italia'),(14,'Japonesa','Japón'),(15,'China','China'),(16,'Indio','India'),(17,'Ruso','Rusia'),(18,'Australiano','Australia'),(19,'Sudafricano','Sudáfrica'),(20,'Portugués','Portugal');
/*!40000 ALTER TABLE `nacionalidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel_educacional`
--

DROP TABLE IF EXISTS `nivel_educacional`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nivel_educacional` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nivel` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel_educacional`
--

LOCK TABLES `nivel_educacional` WRITE;
/*!40000 ALTER TABLE `nivel_educacional` DISABLE KEYS */;
INSERT INTO `nivel_educacional` VALUES (1,'Educacion Basica incompleta'),(2,'Educacion Basica completa'),(3,'Educacion Media incompleta'),(4,'Educacion Media completa'),(5,'Tecnico Profecional'),(6,'Profecional'),(7,'Universitario');
/*!40000 ALTER TABLE `nivel_educacional` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paciente`
--

DROP TABLE IF EXISTS `paciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paciente` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre_colegio` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `contacto_colegio` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `curso` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `procedimiento_id` int DEFAULT NULL,
  `fundacion_id` int DEFAULT NULL,
  `huesped_id` int DEFAULT NULL,
  `requiere_colegio` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_fundacion` (`fundacion_id`),
  KEY `fk_huesped_paciente` (`huesped_id`),
  KEY `fk_paciente_procedimiento` (`procedimiento_id`),
  CONSTRAINT `fk_fundacion` FOREIGN KEY (`fundacion_id`) REFERENCES `fundacion` (`id`),
  CONSTRAINT `fk_huesped_paciente` FOREIGN KEY (`huesped_id`) REFERENCES `datos_personales` (`id`),
  CONSTRAINT `fk_paciente_procedimiento` FOREIGN KEY (`procedimiento_id`) REFERENCES `procedimiento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paciente`
--

LOCK TABLES `paciente` WRITE;
/*!40000 ALTER TABLE `paciente` DISABLE KEYS */;
INSERT INTO `paciente` VALUES (1,'San carlos','sancarlos@gmail.com','4 - Medio',1,1,1,'si'),(2,'santo tomas','santotomas@gmail.com','3 - Basico',1,2,3,'si'),(3,'nacional','nacional@gmail.com','6 - Basico',1,1,5,'si'),(4,'Colegio 8','escuela42@gmail.com','6 - Básico',1,2,7,'si'),(5,'Colegio 5','academia6@gmail.com','2 - Básico',1,1,9,'si'),(6,'Colegio 57','instituto25@gmail.com','1 - Básico',1,2,11,'si'),(7,'Colegio 95','liceo48@yahoo.com','6 - Básico',1,1,13,'si'),(8,'Colegio 18','academia25@gmail.com','4 - Básico',1,2,15,'si'),(9,'Colegio 60','liceo77@yahoo.com','4 - Básico',1,1,17,'si'),(10,'Colegio 85','colegio35@yahoo.com','1 - Básico',1,1,19,'si');
/*!40000 ALTER TABLE `paciente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parentesco`
--

DROP TABLE IF EXISTS `parentesco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parentesco` (
  `id` int NOT NULL AUTO_INCREMENT,
  `relacion` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parentesco`
--

LOCK TABLES `parentesco` WRITE;
/*!40000 ALTER TABLE `parentesco` DISABLE KEYS */;
INSERT INTO `parentesco` VALUES (1,'Padre'),(2,'Madre'),(3,'Tio'),(4,'Tia'),(5,'Abuelo'),(6,'Abuela'),(7,'Hermano'),(8,'Hermana');
/*!40000 ALTER TABLE `parentesco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pasante`
--

DROP TABLE IF EXISTS `pasante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pasante` (
  `id` int NOT NULL AUTO_INCREMENT,
  `profesion` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `huesped_id` int DEFAULT NULL,
  `sucursal_id` int DEFAULT NULL,
  `rut_solicitante` int DEFAULT NULL,
  `nombre_solicitante` int DEFAULT NULL,
  `correo_solicitante` int DEFAULT NULL,
  `telefono_solicitante` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_huesped_pasante` (`huesped_id`),
  KEY `fk_sucursal_origen` (`sucursal_id`),
  CONSTRAINT `fk_huesped_pasante` FOREIGN KEY (`huesped_id`) REFERENCES `datos_personales` (`id`),
  CONSTRAINT `fk_sucursal_origen` FOREIGN KEY (`sucursal_id`) REFERENCES `sucursal_origen` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pasante`
--

LOCK TABLES `pasante` WRITE;
/*!40000 ALTER TABLE `pasante` DISABLE KEYS */;
/*!40000 ALTER TABLE `pasante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permiso`
--

DROP TABLE IF EXISTS `permiso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permiso` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_puesto` int DEFAULT NULL,
  `id_modulo` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permiso_modulo` (`id_modulo`),
  KEY `permiso_trabajador` (`id_puesto`) USING BTREE,
  CONSTRAINT `permiso_modulo` FOREIGN KEY (`id_modulo`) REFERENCES `modulo` (`id`),
  CONSTRAINT `permiso_puesto` FOREIGN KEY (`id_puesto`) REFERENCES `puesto` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permiso`
--

LOCK TABLES `permiso` WRITE;
/*!40000 ALTER TABLE `permiso` DISABLE KEYS */;
INSERT INTO `permiso` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,2,1),(8,2,2),(9,2,3),(10,2,4);
/*!40000 ALTER TABLE `permiso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `procedimiento`
--

DROP TABLE IF EXISTS `procedimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `procedimiento` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `procedimiento`
--

LOCK TABLES `procedimiento` WRITE;
/*!40000 ALTER TABLE `procedimiento` DISABLE KEYS */;
INSERT INTO `procedimiento` VALUES (1,'Quirurgico');
/*!40000 ALTER TABLE `procedimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `puesto`
--

DROP TABLE IF EXISTS `puesto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `puesto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `puesto`
--

LOCK TABLES `puesto` WRITE;
/*!40000 ALTER TABLE `puesto` DISABLE KEYS */;
INSERT INTO `puesto` VALUES (1,'Administrador'),(2,'Recepcionista'),(3,'Asistente');
/*!40000 ALTER TABLE `puesto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `region`
--

DROP TABLE IF EXISTS `region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `region` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region`
--

LOCK TABLES `region` WRITE;
/*!40000 ALTER TABLE `region` DISABLE KEYS */;
INSERT INTO `region` VALUES (1,'Región de Arica y Parinacota'),(2,'Región de Tarapacá'),(3,'Región de Antofagasta'),(4,'Región de Atacama'),(5,'Región de Coquimbo'),(6,'Región de Valparaíso'),(7,'Región Metropolitana de Santiago'),(8,'Región del Libertador General Bernardo O\'Higgins'),(9,'Región del Maule'),(10,'Región de Ñuble'),(11,'Región del Biobío'),(12,'Región de La Araucanía'),(13,'Región de Los Ríos'),(14,'Región de Los Lagos'),(15,'Región de Aysén del General Carlos Ibáñez del Camp'),(16,'Región de Magallanes y de la Antártica Chilena');
/*!40000 ALTER TABLE `region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registro_alojamiento`
--

DROP TABLE IF EXISTS `registro_alojamiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registro_alojamiento` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha_entrada` date DEFAULT NULL,
  `fecha_salida` date DEFAULT NULL,
  `estado_id` int DEFAULT NULL,
  `habitacion_id` int DEFAULT NULL,
  `huesped_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_estado_registro` (`estado_id`),
  KEY `fk_habitacion` (`habitacion_id`),
  KEY `fk_huesped` (`huesped_id`),
  CONSTRAINT `fk_estado_registro` FOREIGN KEY (`estado_id`) REFERENCES `estado_registro` (`id`),
  CONSTRAINT `fk_habitacion` FOREIGN KEY (`habitacion_id`) REFERENCES `habitacion` (`id`),
  CONSTRAINT `fk_huesped` FOREIGN KEY (`huesped_id`) REFERENCES `datos_personales` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registro_alojamiento`
--

LOCK TABLES `registro_alojamiento` WRITE;
/*!40000 ALTER TABLE `registro_alojamiento` DISABLE KEYS */;
INSERT INTO `registro_alojamiento` VALUES (1,'2024-11-18','2024-12-10',1,23,1),(2,'2024-11-18','2024-12-10',1,24,2),(3,'2024-11-19','2024-12-02',1,16,3),(4,'2024-11-19','2024-12-02',1,15,4),(8,'2024-11-27','2024-12-02',4,6,6),(9,'2024-11-27','2024-12-02',4,5,5),(10,'2024-11-30','2024-12-06',2,17,7),(11,'2025-01-18','2025-01-30',2,18,8),(12,'2024-12-04','2024-12-19',1,13,9),(13,'2024-12-03','2024-12-14',1,14,10),(14,'2025-01-02','2025-01-03',4,NULL,11),(15,'2024-12-15','2024-12-30',4,NULL,12),(16,'2025-01-22','2025-02-11',4,NULL,13),(17,'2024-12-31','2025-01-03',4,NULL,14),(18,'2025-01-20','2025-01-31',4,NULL,15),(19,'2024-12-01','2024-12-20',4,NULL,16),(20,'2024-12-24','2025-01-07',1,25,17),(21,'2024-12-29','2025-01-04',1,26,18),(22,'2025-01-17','2025-02-05',4,NULL,19);
/*!40000 ALTER TABLE `registro_alojamiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restricciones`
--

DROP TABLE IF EXISTS `restricciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restricciones` (
  `id` int NOT NULL AUTO_INCREMENT,
  `restriccion` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restricciones`
--

LOCK TABLES `restricciones` WRITE;
/*!40000 ALTER TABLE `restricciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `restricciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solicitud_cambio_habitacion`
--

DROP TABLE IF EXISTS `solicitud_cambio_habitacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solicitud_cambio_habitacion` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `numero` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `estado` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitud_cambio_habitacion`
--

LOCK TABLES `solicitud_cambio_habitacion` WRITE;
/*!40000 ALTER TABLE `solicitud_cambio_habitacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `solicitud_cambio_habitacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solicitud_cambio_paciente`
--

DROP TABLE IF EXISTS `solicitud_cambio_paciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solicitud_cambio_paciente` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `apellido` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `genero` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitud_cambio_paciente`
--

LOCK TABLES `solicitud_cambio_paciente` WRITE;
/*!40000 ALTER TABLE `solicitud_cambio_paciente` DISABLE KEYS */;
/*!40000 ALTER TABLE `solicitud_cambio_paciente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solicitud_cambio_solicitudalojamiento`
--

DROP TABLE IF EXISTS `solicitud_cambio_solicitudalojamiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solicitud_cambio_solicitudalojamiento` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `fecha_solicitud` date NOT NULL,
  `lugar` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `tipo_estadia` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `movilidad` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `fecha_ingreso` date NOT NULL,
  `hora_ingreso` time(6) NOT NULL,
  `fecha_salida` date NOT NULL,
  `hora_salida` time(6) NOT NULL,
  `comentarios` longtext COLLATE utf8mb4_general_ci,
  `estado` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `habitacion_id` bigint DEFAULT NULL,
  `pasajero_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `solicitud_cambio_sol_habitacion_id_f3422633_fk_solicitud` (`habitacion_id`),
  KEY `solicitud_cambio_sol_pasajero_id_06f35ede_fk_solicitud` (`pasajero_id`),
  CONSTRAINT `solicitud_cambio_sol_habitacion_id_f3422633_fk_solicitud` FOREIGN KEY (`habitacion_id`) REFERENCES `solicitud_cambio_habitacion` (`id`),
  CONSTRAINT `solicitud_cambio_sol_pasajero_id_06f35ede_fk_solicitud` FOREIGN KEY (`pasajero_id`) REFERENCES `solicitud_cambio_paciente` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitud_cambio_solicitudalojamiento`
--

LOCK TABLES `solicitud_cambio_solicitudalojamiento` WRITE;
/*!40000 ALTER TABLE `solicitud_cambio_solicitudalojamiento` DISABLE KEYS */;
/*!40000 ALTER TABLE `solicitud_cambio_solicitudalojamiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solicitudes_caracteristicashabitacion`
--

DROP TABLE IF EXISTS `solicitudes_caracteristicashabitacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solicitudes_caracteristicashabitacion` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `tipo_habitacion` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `cantidad_camas` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitudes_caracteristicashabitacion`
--

LOCK TABLES `solicitudes_caracteristicashabitacion` WRITE;
/*!40000 ALTER TABLE `solicitudes_caracteristicashabitacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `solicitudes_caracteristicashabitacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solicitudes_cuidador`
--

DROP TABLE IF EXISTS `solicitudes_cuidador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solicitudes_cuidador` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `parentesco` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `datos_personales_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `datosPersonales_id` (`datos_personales_id`),
  CONSTRAINT `solicitudes_cuidador_datos_personales_id_17864162_fk_solicitud` FOREIGN KEY (`datos_personales_id`) REFERENCES `solicitudes_datospersonales` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitudes_cuidador`
--

LOCK TABLES `solicitudes_cuidador` WRITE;
/*!40000 ALTER TABLE `solicitudes_cuidador` DISABLE KEYS */;
/*!40000 ALTER TABLE `solicitudes_cuidador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solicitudes_datospersonales`
--

DROP TABLE IF EXISTS `solicitudes_datospersonales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solicitudes_datospersonales` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `rut` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `apellido_paterno` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `apellido_materno` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `nacionalidad` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `direccion` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `ciudad` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `telefono` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `correo` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `perfil` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rut` (`rut`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitudes_datospersonales`
--

LOCK TABLES `solicitudes_datospersonales` WRITE;
/*!40000 ALTER TABLE `solicitudes_datospersonales` DISABLE KEYS */;
/*!40000 ALTER TABLE `solicitudes_datospersonales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solicitudes_estadoshabitacion`
--

DROP TABLE IF EXISTS `solicitudes_estadoshabitacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solicitudes_estadoshabitacion` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `tipo_estado` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitudes_estadoshabitacion`
--

LOCK TABLES `solicitudes_estadoshabitacion` WRITE;
/*!40000 ALTER TABLE `solicitudes_estadoshabitacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `solicitudes_estadoshabitacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solicitudes_estadosolicitudes`
--

DROP TABLE IF EXISTS `solicitudes_estadosolicitudes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solicitudes_estadosolicitudes` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `estado` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitudes_estadosolicitudes`
--

LOCK TABLES `solicitudes_estadosolicitudes` WRITE;
/*!40000 ALTER TABLE `solicitudes_estadosolicitudes` DISABLE KEYS */;
/*!40000 ALTER TABLE `solicitudes_estadosolicitudes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solicitudes_fundacion`
--

DROP TABLE IF EXISTS `solicitudes_fundacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solicitudes_fundacion` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitudes_fundacion`
--

LOCK TABLES `solicitudes_fundacion` WRITE;
/*!40000 ALTER TABLE `solicitudes_fundacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `solicitudes_fundacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solicitudes_habitacion`
--

DROP TABLE IF EXISTS `solicitudes_habitacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solicitudes_habitacion` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `numero` int NOT NULL,
  `caracteristicas_id` bigint DEFAULT NULL,
  `estado_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `solicitudes_habitaci_caracteristicas_id_b9687968_fk_solicitud` (`caracteristicas_id`),
  KEY `solicitudes_habitaci_estado_id_63c07e73_fk_solicitud` (`estado_id`),
  CONSTRAINT `solicitudes_habitaci_caracteristicas_id_b9687968_fk_solicitud` FOREIGN KEY (`caracteristicas_id`) REFERENCES `solicitudes_caracteristicashabitacion` (`id`),
  CONSTRAINT `solicitudes_habitaci_estado_id_63c07e73_fk_solicitud` FOREIGN KEY (`estado_id`) REFERENCES `solicitudes_estadoshabitacion` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitudes_habitacion`
--

LOCK TABLES `solicitudes_habitacion` WRITE;
/*!40000 ALTER TABLE `solicitudes_habitacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `solicitudes_habitacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solicitudes_movilidad`
--

DROP TABLE IF EXISTS `solicitudes_movilidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solicitudes_movilidad` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `tipo_movilidad` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitudes_movilidad`
--

LOCK TABLES `solicitudes_movilidad` WRITE;
/*!40000 ALTER TABLE `solicitudes_movilidad` DISABLE KEYS */;
/*!40000 ALTER TABLE `solicitudes_movilidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solicitudes_paciente`
--

DROP TABLE IF EXISTS `solicitudes_paciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solicitudes_paciente` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `colegio` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `curso` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `cuidador_id` bigint DEFAULT NULL,
  `datos_personales_id` bigint DEFAULT NULL,
  `procedimiento_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `datosPersonales_id` (`datos_personales_id`),
  KEY `solicitudes_paciente_cuidador_id_f23c4c03_fk_solicitud` (`cuidador_id`),
  KEY `solicitudes_paciente_procedimiento_id_535de844_fk_solicitud` (`procedimiento_id`),
  CONSTRAINT `solicitudes_paciente_cuidador_id_f23c4c03_fk_solicitud` FOREIGN KEY (`cuidador_id`) REFERENCES `solicitudes_cuidador` (`id`),
  CONSTRAINT `solicitudes_paciente_datos_personales_id_57bf7ff1_fk_solicitud` FOREIGN KEY (`datos_personales_id`) REFERENCES `solicitudes_datospersonales` (`id`),
  CONSTRAINT `solicitudes_paciente_procedimiento_id_535de844_fk_solicitud` FOREIGN KEY (`procedimiento_id`) REFERENCES `solicitudes_proceso` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitudes_paciente`
--

LOCK TABLES `solicitudes_paciente` WRITE;
/*!40000 ALTER TABLE `solicitudes_paciente` DISABLE KEYS */;
/*!40000 ALTER TABLE `solicitudes_paciente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solicitudes_pasante`
--

DROP TABLE IF EXISTS `solicitudes_pasante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solicitudes_pasante` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `sucursal` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `jefatura` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `datos_personales_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `solicitudes_pasante_datos_personales_id_4e43f31b_fk_solicitud` (`datos_personales_id`),
  CONSTRAINT `solicitudes_pasante_datos_personales_id_4e43f31b_fk_solicitud` FOREIGN KEY (`datos_personales_id`) REFERENCES `solicitudes_datospersonales` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitudes_pasante`
--

LOCK TABLES `solicitudes_pasante` WRITE;
/*!40000 ALTER TABLE `solicitudes_pasante` DISABLE KEYS */;
/*!40000 ALTER TABLE `solicitudes_pasante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solicitudes_proceso`
--

DROP TABLE IF EXISTS `solicitudes_proceso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solicitudes_proceso` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitudes_proceso`
--

LOCK TABLES `solicitudes_proceso` WRITE;
/*!40000 ALTER TABLE `solicitudes_proceso` DISABLE KEYS */;
/*!40000 ALTER TABLE `solicitudes_proceso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solicitudes_solicitud`
--

DROP TABLE IF EXISTS `solicitudes_solicitud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solicitudes_solicitud` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `fecha_ingreso` date NOT NULL,
  `fecha_salida` date NOT NULL,
  `movilidad_id` bigint NOT NULL,
  `cuidador_id` bigint DEFAULT NULL,
  `datos_personales_id` bigint NOT NULL,
  `estado` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `fundacion_id` bigint DEFAULT NULL,
  `proceso_id` bigint DEFAULT NULL,
  `comentarios` longtext COLLATE utf8mb4_general_ci,
  `fecha_creacion` datetime(6) NOT NULL,
  `fecha_modificacion` datetime(6) NOT NULL,
  `habitacion_asignada_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `solicitudes_solicitu_cuidador_id_9a04d2cc_fk_solicitud` (`cuidador_id`),
  KEY `solicitudes_solicitu_fundacion_id_c595fc3f_fk_solicitud` (`fundacion_id`),
  KEY `solicitudes_solicitu_proceso_id_2a5b7a68_fk_solicitud` (`proceso_id`),
  KEY `solicitudes_solicitud_movilidad_id_b1b17cf8` (`movilidad_id`),
  KEY `solicitudes_solicitu_datos_personales_id_e7889e63_fk_solicitud` (`datos_personales_id`),
  KEY `solicitudes_solicitu_habitacion_asignada__f97b66ec_fk_solicitud` (`habitacion_asignada_id`),
  CONSTRAINT `solicitudes_solicitu_cuidador_id_9a04d2cc_fk_solicitud` FOREIGN KEY (`cuidador_id`) REFERENCES `solicitudes_cuidador` (`id`),
  CONSTRAINT `solicitudes_solicitu_datos_personales_id_e7889e63_fk_solicitud` FOREIGN KEY (`datos_personales_id`) REFERENCES `solicitudes_datospersonales` (`id`),
  CONSTRAINT `solicitudes_solicitu_fundacion_id_c595fc3f_fk_solicitud` FOREIGN KEY (`fundacion_id`) REFERENCES `solicitudes_fundacion` (`id`),
  CONSTRAINT `solicitudes_solicitu_habitacion_asignada__f97b66ec_fk_solicitud` FOREIGN KEY (`habitacion_asignada_id`) REFERENCES `solicitudes_habitacion` (`id`),
  CONSTRAINT `solicitudes_solicitu_movilidad_id_b1b17cf8_fk_solicitud` FOREIGN KEY (`movilidad_id`) REFERENCES `solicitudes_movilidad` (`id`),
  CONSTRAINT `solicitudes_solicitu_proceso_id_2a5b7a68_fk_solicitud` FOREIGN KEY (`proceso_id`) REFERENCES `solicitudes_proceso` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitudes_solicitud`
--

LOCK TABLES `solicitudes_solicitud` WRITE;
/*!40000 ALTER TABLE `solicitudes_solicitud` DISABLE KEYS */;
/*!40000 ALTER TABLE `solicitudes_solicitud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sucursal_origen`
--

DROP TABLE IF EXISTS `sucursal_origen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sucursal_origen` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `n_reprecentante` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rut_reprecentante` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_region` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sucursal_region` (`id_region`),
  CONSTRAINT `sucursal_region` FOREIGN KEY (`id_region`) REFERENCES `region` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sucursal_origen`
--

LOCK TABLES `sucursal_origen` WRITE;
/*!40000 ALTER TABLE `sucursal_origen` DISABLE KEYS */;
INSERT INTO `sucursal_origen` VALUES (1,'DEDI',NULL,NULL,7),(2,'Centro Rehab. Antofagasta',NULL,NULL,3),(3,'Centro Rehab Puerto Montt',NULL,NULL,13),(4,'Curso Aula Hospitalarias',NULL,NULL,7);
/*!40000 ALTER TABLE `sucursal_origen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_comida`
--

DROP TABLE IF EXISTS `tipo_comida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_comida` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_comida`
--

LOCK TABLES `tipo_comida` WRITE;
/*!40000 ALTER TABLE `tipo_comida` DISABLE KEYS */;
INSERT INTO `tipo_comida` VALUES (1,'Desayuno'),(2,'Almuerzo'),(3,'Once'),(4,'Cena');
/*!40000 ALTER TABLE `tipo_comida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trabajador`
--

DROP TABLE IF EXISTS `trabajador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trabajador` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rut` varchar(12) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `dv` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `apellido_m` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `apellido_p` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `correo` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `puesto_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rut` (`rut`),
  KEY `trabajador_puesto` (`puesto_id`),
  CONSTRAINT `trabajador_puesto` FOREIGN KEY (`puesto_id`) REFERENCES `puesto` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trabajador`
--

LOCK TABLES `trabajador` WRITE;
/*!40000 ALTER TABLE `trabajador` DISABLE KEYS */;
INSERT INTO `trabajador` VALUES (1,'7','8','Carlos','Fuentes','Campos','ccampos@gmail.com','$2b$12$FcpmJM3Uw1maW/xJXWwBLOqWlx79AsE7Q0/O5CKJtrvzjQMoa07LS',1),(4,'1','9','Cristian','Fuentes','Fuentes','ccristian@gmail.com','12345',1),(6,'13','2','Guillermo','Fuentes','Vasquez','guille@gmail.com','$2y$10$uYzvkaLi34ppr3KgXAFszersN1Dx7kvoaq2RG4RN5mmabhob29lBu',2);
/*!40000 ALTER TABLE `trabajador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'casabierta'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-13 21:37:11
