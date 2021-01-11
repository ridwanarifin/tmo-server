-- MySQL dump 10.13  Distrib 8.0.22, for Linux (x86_64)
--
-- Host: localhost    Database: TMO_DB
-- ------------------------------------------------------
-- Server version	8.0.22-0ubuntu0.20.04.3

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add Section Admiral Suite',7,'add_admiralsuite'),(26,'Can change Section Admiral Suite',7,'change_admiralsuite'),(27,'Can delete Section Admiral Suite',7,'delete_admiralsuite'),(28,'Can view Section Admiral Suite',7,'view_admiralsuite'),(29,'Can add Section Commodore Suite',8,'add_commodoresuite'),(30,'Can change Section Commodore Suite',8,'change_commodoresuite'),(31,'Can delete Section Commodore Suite',8,'delete_commodoresuite'),(32,'Can view Section Commodore Suite',8,'view_commodoresuite'),(33,'Can add Section Deck Technical',9,'add_decktechnical'),(34,'Can change Section Deck Technical',9,'change_decktechnical'),(35,'Can delete Section Deck Technical',9,'delete_decktechnical'),(36,'Can view Section Deck Technical',9,'view_decktechnical'),(37,'Can add Section Deluxe Stateroom',10,'add_deluxestateroom'),(38,'Can change Section Deluxe Stateroom',10,'change_deluxestateroom'),(39,'Can delete Section Deluxe Stateroom',10,'delete_deluxestateroom'),(40,'Can view Section Deluxe Stateroom',10,'view_deluxestateroom'),(41,'Can add Section Dining',11,'add_dining'),(42,'Can change Section Dining',11,'change_dining'),(43,'Can delete Section Dining',11,'delete_dining'),(44,'Can view Section Dining',11,'view_dining'),(45,'Can add Section Hero',12,'add_hero'),(46,'Can change Section Hero',12,'change_hero'),(47,'Can delete Section Hero',12,'delete_hero'),(48,'Can view Section Hero',12,'view_hero'),(49,'Can add Section Instagram',13,'add_instagram'),(50,'Can change Section Instagram',13,'change_instagram'),(51,'Can delete Section Instagram',13,'delete_instagram'),(52,'Can view Section Instagram',13,'view_instagram'),(53,'Can add Instagram',14,'add_instagramtestimony'),(54,'Can change Instagram',14,'change_instagramtestimony'),(55,'Can delete Instagram',14,'delete_instagramtestimony'),(56,'Can view Instagram',14,'view_instagramtestimony'),(57,'Can add Section Intro',15,'add_intro'),(58,'Can change Section Intro',15,'change_intro'),(59,'Can delete Section Intro',15,'delete_intro'),(60,'Can view Section Intro',15,'view_intro'),(61,'Can add Section Itinerary',16,'add_itinerary'),(62,'Can change Section Itinerary',16,'change_itinerary'),(63,'Can delete Section Itinerary',16,'delete_itinerary'),(64,'Can view Section Itinerary',16,'view_itinerary'),(65,'Can add Section Occasions',17,'add_occasions'),(66,'Can change Section Occasions',17,'change_occasions'),(67,'Can delete Section Occasions',17,'delete_occasions'),(68,'Can view Section Occasions',17,'view_occasions'),(69,'Can add Section Table Spesification',18,'add_tablespesification'),(70,'Can change Section Table Spesification',18,'change_tablespesification'),(71,'Can delete Section Table Spesification',18,'delete_tablespesification'),(72,'Can view Section Table Spesification',18,'view_tablespesification'),(73,'Can add Section The Vessel',19,'add_thevessel'),(74,'Can change Section The Vessel',19,'change_thevessel'),(75,'Can delete Section The Vessel',19,'delete_thevessel'),(76,'Can view Section The Vessel',19,'view_thevessel'),(77,'Can add Section Voyages',20,'add_voyages'),(78,'Can change Section Voyages',20,'change_voyages'),(79,'Can delete Section Voyages',20,'delete_voyages'),(80,'Can view Section Voyages',20,'view_voyages'),(81,'Can add Section Voyages Item',21,'add_voyagesitem'),(82,'Can change Section Voyages Item',21,'change_voyagesitem'),(83,'Can delete Section Voyages Item',21,'delete_voyagesitem'),(84,'Can view Section Voyages Item',21,'view_voyagesitem'),(85,'Can add video',22,'add_video'),(86,'Can change video',22,'change_video'),(87,'Can delete video',22,'delete_video'),(88,'Can view video',22,'view_video'),(89,'Can add Section Testimony',23,'add_testimony'),(90,'Can change Section Testimony',23,'change_testimony'),(91,'Can delete Section Testimony',23,'delete_testimony'),(92,'Can view Section Testimony',23,'view_testimony'),(93,'Can add Tab',24,'add_tabs'),(94,'Can change Tab',24,'change_tabs'),(95,'Can delete Tab',24,'delete_tabs'),(96,'Can view Tab',24,'view_tabs'),(97,'Can add header spesification',25,'add_headerspesification'),(98,'Can change header spesification',25,'change_headerspesification'),(99,'Can delete header spesification',25,'delete_headerspesification'),(100,'Can view header spesification',25,'view_headerspesification'),(101,'Can add Gallery',26,'add_gallerydeluxestateroom'),(102,'Can change Gallery',26,'change_gallerydeluxestateroom'),(103,'Can delete Gallery',26,'delete_gallerydeluxestateroom'),(104,'Can view Gallery',26,'view_gallerydeluxestateroom'),(105,'Can add Gallery',27,'add_gallerycommodoresuite'),(106,'Can change Gallery',27,'change_gallerycommodoresuite'),(107,'Can delete Gallery',27,'delete_gallerycommodoresuite'),(108,'Can view Gallery',27,'view_gallerycommodoresuite'),(109,'Can add Gallery',28,'add_galleryadmiralsuite'),(110,'Can change Gallery',28,'change_galleryadmiralsuite'),(111,'Can delete Gallery',28,'delete_galleryadmiralsuite'),(112,'Can view Gallery',28,'view_galleryadmiralsuite'),(113,'Can add Section Deck Preview',29,'add_deckpreview'),(114,'Can change Section Deck Preview',29,'change_deckpreview'),(115,'Can delete Section Deck Preview',29,'delete_deckpreview'),(116,'Can view Section Deck Preview',29,'view_deckpreview'),(117,'Can add body spesification',30,'add_bodyspesification'),(118,'Can change body spesification',30,'change_bodyspesification'),(119,'Can delete body spesification',30,'delete_bodyspesification'),(120,'Can view body spesification',30,'view_bodyspesification'),(121,'Can add page',31,'add_page'),(122,'Can change page',31,'change_page'),(123,'Can delete page',31,'delete_page'),(124,'Can view page',31,'view_page'),(125,'Can add attachment',32,'add_attachment'),(126,'Can change attachment',32,'change_attachment'),(127,'Can delete attachment',32,'delete_attachment'),(128,'Can view attachment',32,'view_attachment'),(129,'Can add Icon',33,'add_icondeluxestateroom'),(130,'Can change Icon',33,'change_icondeluxestateroom'),(131,'Can delete Icon',33,'delete_icondeluxestateroom'),(132,'Can view Icon',33,'view_icondeluxestateroom'),(133,'Can add Menu',34,'add_menu'),(134,'Can change Menu',34,'change_menu'),(135,'Can delete Menu',34,'delete_menu'),(136,'Can view Menu',34,'view_menu'),(137,'Can add navigation',35,'add_navigation'),(138,'Can change navigation',35,'change_navigation'),(139,'Can delete navigation',35,'delete_navigation'),(140,'Can view navigation',35,'view_navigation'),(141,'Can add Section Suites And Staterooms',36,'add_suitesandstateroom'),(142,'Can change Section Suites And Staterooms',36,'change_suitesandstateroom'),(143,'Can delete Section Suites And Staterooms',36,'delete_suitesandstateroom'),(144,'Can view Section Suites And Staterooms',36,'view_suitesandstateroom'),(145,'Can add menu suitesroom',37,'add_menusuitesroom'),(146,'Can change menu suitesroom',37,'change_menusuitesroom'),(147,'Can delete menu suitesroom',37,'delete_menusuitesroom'),(148,'Can view menu suitesroom',37,'view_menusuitesroom'),(149,'Can add Section The Decks',38,'add_thedecks'),(150,'Can change Section The Decks',38,'change_thedecks'),(151,'Can delete Section The Decks',38,'delete_thedecks'),(152,'Can view Section The Decks',38,'view_thedecks'),(153,'Can add Section Personil',39,'add_personil'),(154,'Can change Section Personil',39,'change_personil'),(155,'Can delete Section Personil',39,'delete_personil'),(156,'Can view Section Personil',39,'view_personil'),(157,'Can add Section Team',40,'add_team'),(158,'Can change Section Team',40,'change_team'),(159,'Can delete Section Team',40,'delete_team'),(160,'Can view Section Team',40,'view_team'),(161,'Can add Section Sustainability',41,'add_sustainability'),(162,'Can change Section Sustainability',41,'change_sustainability'),(163,'Can delete Section Sustainability',41,'delete_sustainability'),(164,'Can view Section Sustainability',41,'view_sustainability'),(165,'Can add Section Destination',42,'add_destination'),(166,'Can change Section Destination',42,'change_destination'),(167,'Can delete Section Destination',42,'delete_destination'),(168,'Can view Section Destination',42,'view_destination'),(169,'Can add Destination Gallery',43,'add_destinationgallery'),(170,'Can change Destination Gallery',43,'change_destinationgallery'),(171,'Can delete Destination Gallery',43,'delete_destinationgallery'),(172,'Can view Destination Gallery',43,'view_destinationgallery'),(173,'Can add Section Facility',44,'add_facility'),(174,'Can change Section Facility',44,'change_facility'),(175,'Can delete Section Facility',44,'delete_facility'),(176,'Can view Section Facility',44,'view_facility'),(177,'Can add Facility Gallery',45,'add_facilitygallery'),(178,'Can change Facility Gallery',45,'change_facilitygallery'),(179,'Can delete Facility Gallery',45,'delete_facilitygallery'),(180,'Can view Facility Gallery',45,'view_facilitygallery'),(181,'Can add body full chapter',46,'add_bodyfullchapter'),(182,'Can change body full chapter',46,'change_bodyfullchapter'),(183,'Can delete body full chapter',46,'delete_bodyfullchapter'),(184,'Can view body full chapter',46,'view_bodyfullchapter'),(185,'Can add Section Table Full Chapter',47,'add_tablefullchapter'),(186,'Can change Section Table Full Chapter',47,'change_tablefullchapter'),(187,'Can delete Section Table Full Chapter',47,'delete_tablefullchapter'),(188,'Can view Section Table Full Chapter',47,'view_tablefullchapter'),(189,'Can add per night',48,'add_pernight'),(190,'Can change per night',48,'change_pernight'),(191,'Can delete per night',48,'delete_pernight'),(192,'Can view per night',48,'view_pernight'),(193,'Can add header full chapter',49,'add_headerfullchapter'),(194,'Can change header full chapter',49,'change_headerfullchapter'),(195,'Can delete header full chapter',49,'delete_headerfullchapter'),(196,'Can view header full chapter',49,'view_headerfullchapter'),(197,'Can add Section Charter Rates Include',50,'add_charterratesinclude'),(198,'Can change Section Charter Rates Include',50,'change_charterratesinclude'),(199,'Can delete Section Charter Rates Include',50,'delete_charterratesinclude'),(200,'Can view Section Charter Rates Include',50,'view_charterratesinclude'),(201,'Can add Data Charter Include',51,'add_datacharterinclude'),(202,'Can change Data Charter Include',51,'change_datacharterinclude'),(203,'Can delete Data Charter Include',51,'delete_datacharterinclude'),(204,'Can view Data Charter Include',51,'view_datacharterinclude');
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
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$150000$ARW9ZimodccO$yMsuqzMlH27/CauAQjpYL40TJGNaCD3W3b1DJLVL8jw=','2021-01-09 18:30:38.752241',1,'admin','','','',1,1,'2021-01-08 02:44:20.419044');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
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
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-01-08 04:58:40.802461','d614b5ce-6091-4d86-b65e-eca4faca3abb','d614b5ce-6091-4d86-b65e-eca4faca3abb - The future of travel, on traditions of the past.',1,'[{\"added\": {}}, {\"added\": {\"name\": \"video\", \"object\": \"fb83be52-a3be-4ebe-957f-12ecf871316a - tmo-hero.mp4\"}}]',12,1),(2,'2021-01-08 05:07:21.128657','13221f49-53be-43c7-b1ee-c03827841d87','Traces of the ancient<br class=\"hidden-sm-and-up\" />maritime glory<br class=\"hidden-xs-only\" />with touches of<br class=\"hidden-sm-and-up\" />day comfort',1,'[{\"added\": {}}]',15,1),(3,'2021-01-08 05:11:06.984302','1','The Vessel - Craftmanship lives on',1,'[{\"added\": {}}]',19,1),(4,'2021-01-08 05:20:56.659027','b202c277-91b9-4474-a0a5-4dde5976c8e6','Home - The Maj Oceanic',1,'[{\"added\": {}}]',31,1),(5,'2021-01-08 08:45:56.703663','b202c277-91b9-4474-a0a5-4dde5976c8e6','Home - The Maj Oceanic',2,'[]',31,1),(6,'2021-01-08 09:15:01.854151','1','Voyages',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Tab\", \"object\": \"Komodo - Here be dragons\"}}, {\"added\": {\"name\": \"Tab\", \"object\": \"Raja Ampat - Off the beaten reef\"}}, {\"added\": {\"name\": \"Tab\", \"object\": \"Spice Islands - The &lsquo;great nutmeg island&rsquo;\"}}]',20,1),(7,'2021-01-08 09:21:24.209994','b202c277-91b9-4474-a0a5-4dde5976c8e6','Home - The Maj Oceanic',2,'[{\"changed\": {\"fields\": [\"voyages\"]}}]',31,1),(8,'2021-01-08 09:24:44.253936','4','Dining - The finest at sea',1,'[{\"added\": {}}]',11,1),(9,'2021-01-08 09:28:12.000191','1','Occasions - Convene like ancient seamen',1,'[{\"added\": {}}]',17,1),(10,'2021-01-08 09:28:30.932242','b202c277-91b9-4474-a0a5-4dde5976c8e6','Home - The Maj Oceanic',2,'[{\"changed\": {\"fields\": [\"dining\", \"occasions\"]}}]',31,1),(11,'2021-01-09 17:30:58.429375','9a43c97c-30c7-40ca-8d9c-f5266587bea3','Navigation object (9a43c97c-30c7-40ca-8d9c-f5266587bea3)',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Menu\", \"object\": \"specification\"}}]',35,1),(12,'2021-01-09 17:31:32.112954','bdaa1e43-b438-439c-bc07-033607c10827','Navigation object (bdaa1e43-b438-439c-bc07-033607c10827)',1,'[{\"added\": {}}]',35,1),(13,'2021-01-09 17:35:22.200322','49c6f2ee-1224-4b6e-b24e-8788d24c6ef6','voyages',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Menu\", \"object\": \"komodo\"}}, {\"added\": {\"name\": \"Menu\", \"object\": \"spice islands\"}}, {\"added\": {\"name\": \"Menu\", \"object\": \"raja ampat\"}}]',35,1),(14,'2021-01-09 17:35:36.028684','df6ddedf-9399-44c3-8e25-99721c20c08b','activites',1,'[{\"added\": {}}]',35,1),(15,'2021-01-09 17:35:48.918777','b30fd79a-1e62-44a0-aec8-73e94ed9614d','rates & schedule',1,'[{\"added\": {}}]',35,1),(16,'2021-01-10 09:41:22.991709','7760c802-0894-49b4-a1f7-42756ae2cb7b','7760c802-0894-49b4-a1f7-42756ae2cb7b - The Vessel',1,'[{\"added\": {}}]',12,1),(17,'2021-01-10 09:44:58.170450','ce217190-c744-4a50-9f98-d8b0eaf7626d','Inspired by centuries of<br class=\"hidden-sm-and-up\" />marine wisdom',1,'[{\"added\": {}}]',15,1),(18,'2021-01-10 11:10:58.578287','3','admiral suite - Zheng He',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Gallery\", \"object\": \"GalleryAdmiralSuite object (9)\"}}, {\"added\": {\"name\": \"Gallery\", \"object\": \"GalleryAdmiralSuite object (10)\"}}, {\"added\": {\"name\": \"Gallery\", \"object\": \"GalleryAdmiralSuite object (11)\"}}, {\"added\": {\"name\": \"Gallery\", \"object\": \"GalleryAdmiralSuite object (12)\"}}]',7,1),(19,'2021-01-10 11:16:21.436452','1','commodore suite - Columbus',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Gallery\", \"object\": \"GalleryCommodoreSuite object (1)\"}}, {\"added\": {\"name\": \"Gallery\", \"object\": \"GalleryCommodoreSuite object (2)\"}}, {\"added\": {\"name\": \"Gallery\", \"object\": \"GalleryCommodoreSuite object (3)\"}}, {\"added\": {\"name\": \"Gallery\", \"object\": \"GalleryCommodoreSuite object (4)\"}}]',8,1),(20,'2021-01-10 11:23:09.480364','1','deluxe staterooms - F. Magellan | Marcopolo |<br />Vasco da Gama | James Cook',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Icon\", \"object\": \"IconDeluxeStateroom object (1)\"}}, {\"added\": {\"name\": \"Icon\", \"object\": \"IconDeluxeStateroom object (2)\"}}, {\"added\": {\"name\": \"Icon\", \"object\": \"IconDeluxeStateroom object (3)\"}}, {\"added\": {\"name\": \"Icon\", \"object\": \"IconDeluxeStateroom object (4)\"}}, {\"added\": {\"name\": \"Gallery\", \"object\": \"GalleryDeluxeStateroom object (1)\"}}]',10,1),(21,'2021-01-10 11:23:53.621159','1','suites & staterooms - Your private sanctuary at sea',1,'[{\"added\": {}}, {\"added\": {\"name\": \"menu suitesroom\", \"object\": \"MenuSuitesroom object (1)\"}}]',36,1),(22,'2021-01-10 11:54:46.295936','962b3d18-85e7-481a-bb87-51f1e7f8c256','The Vessel - The Vessel - The MAJ Oceanic',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Section The Decks\", \"object\": \"e64c0ca1-4764-4c4b-b87a-3752f76e02cd - The Decks\"}}, {\"added\": {\"name\": \"Section The Decks\", \"object\": \"dc2a436c-d341-41e6-a46b-9a1237f60005 - The Decks\"}}]',31,1),(23,'2021-01-10 12:30:34.256159','378eabb6-dc8f-4a61-bb0c-4d7c71a54ccc','378eabb6-dc8f-4a61-bb0c-4d7c71a54ccc - The Team',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Section Personil\", \"object\": \"bea2e479-6f64-48a6-937a-8f0fde3bb60b - Christophe Beltrando\"}}, {\"added\": {\"name\": \"Section Personil\", \"object\": \"64a2cc43-56d5-47f1-a773-499d91994c01 - Yunus Ardiyamsyah\"}}, {\"added\": {\"name\": \"Section Personil\", \"object\": \"05b6280a-de36-470a-a48d-0aa801148168 - Syamsudin\"}}, {\"added\": {\"name\": \"Section Personil\", \"object\": \"60799f04-b28a-469f-bdfc-110fea2f0ee7 - Sumarna\"}}]',40,1),(24,'2021-01-10 12:34:37.931884','0f55fac8-8246-4cfb-b708-742c03f304ec','0f55fac8-8246-4cfb-b708-742c03f304ec - Sustainability',1,'[{\"added\": {}}]',41,1),(25,'2021-01-10 12:34:53.095172','962b3d18-85e7-481a-bb87-51f1e7f8c256','The Vessel - The Vessel - The MAJ Oceanic',2,'[{\"changed\": {\"fields\": [\"teams\", \"sustainability\"]}}]',31,1),(26,'2021-01-10 14:06:56.636251','10019c22-eed5-4aa3-9bdd-50edb942b6f0','10019c22-eed5-4aa3-9bdd-50edb942b6f0 - Specification',1,'[{\"added\": {}}]',12,1),(27,'2021-01-10 14:09:19.146412','1','Decks and Technical Detail',1,'[{\"added\": {}}]',9,1),(28,'2021-01-10 14:42:50.150064','c86ac1cc-1039-4126-a14d-e829c97a1f14','Spesification - Spesification - The MAJ Oceanic',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Section Deck Preview\", \"object\": \"Main Deck\"}}, {\"added\": {\"name\": \"Section Deck Preview\", \"object\": \"Lower Deck\"}}, {\"added\": {\"name\": \"Section Deck Preview\", \"object\": \"Bridge Deck\"}}, {\"added\": {\"name\": \"Section Deck Preview\", \"object\": \"Golf Deck\"}}]',31,1),(29,'2021-01-10 14:53:18.280129','2','TableSpesification object (2)',1,'[{\"added\": {}}, {\"added\": {\"name\": \"header spesification\", \"object\": \"\"}}, {\"added\": {\"name\": \"header spesification\", \"object\": \"\"}}, {\"added\": {\"name\": \"body spesification\", \"object\": \"Build\"}}, {\"added\": {\"name\": \"body spesification\", \"object\": \"Type\"}}, {\"added\": {\"name\": \"body spesification\", \"object\": \"Length (Total)\"}}, {\"added\": {\"name\": \"body spesification\", \"object\": \"Beam\"}}, {\"added\": {\"name\": \"body spesification\", \"object\": \"Draft\"}}, {\"added\": {\"name\": \"body spesification\", \"object\": \"No. of cabins | guests | crew\"}}, {\"added\": {\"name\": \"body spesification\", \"object\": \"Cruising speed\"}}, {\"added\": {\"name\": \"body spesification\", \"object\": \"Engine model\"}}, {\"added\": {\"name\": \"body spesification\", \"object\": \"Navigation\"}}, {\"added\": {\"name\": \"body spesification\", \"object\": \"Life raft\"}}, {\"added\": {\"name\": \"body spesification\", \"object\": \"Watersports Equipment\"}}]',18,1),(30,'2021-01-10 14:53:36.523335','c86ac1cc-1039-4126-a14d-e829c97a1f14','Spesification - Spesification - The MAJ Oceanic',2,'[{\"changed\": {\"fields\": [\"table_spesification\"]}}]',31,1),(31,'2021-01-11 04:11:52.041187','af26e5b8-1347-4246-8324-49b399f7422a','af26e5b8-1347-4246-8324-49b399f7422a - Voyages',1,'[{\"added\": {}}]',12,1),(32,'2021-01-11 04:17:38.598971','88d3b76b-f790-4804-b0b3-8e20955464c8','Voyages - Voyages | The MAJ Oceanic',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Section Voyages Item\", \"object\": \"Home of the mystical<br class=\\\"hidden-sm-and-up\\\" />Komodo Dragons\"}}, {\"added\": {\"name\": \"Section Voyages Item\", \"object\": \"The richest coal<br class=\\\"hidden-sm-and-up\\\" />reefs on earth\"}}, {\"added\": {\"name\": \"Section Voyages Item\", \"object\": \"The &lsquo;great nutmeg island&rsquo;\"}}]',31,1),(33,'2021-01-11 04:22:56.191344','88d3b76b-f790-4804-b0b3-8e20955464c8','Voyages - Voyages | The MAJ Oceanic',2,'[]',31,1),(34,'2021-01-11 04:27:24.252575','1','doyoutravel',1,'[{\"added\": {}}]',14,1),(35,'2021-01-11 04:38:00.751202','88d3b76b-f790-4804-b0b3-8e20955464c8','Voyages - Voyages | The MAJ Oceanic',2,'[{\"added\": {\"name\": \"Section Testimony\", \"object\": \"Jack Morris\"}}]',31,1),(36,'2021-01-11 04:42:19.565145','1','itineraries - As bespoke as it gets',1,'[{\"added\": {}}]',16,1),(37,'2021-01-11 04:42:28.696466','88d3b76b-f790-4804-b0b3-8e20955464c8','Voyages - Voyages | The MAJ Oceanic',2,'[{\"changed\": {\"fields\": [\"itinerary\"]}}, {\"changed\": {\"name\": \"Section Testimony\", \"object\": \"Jack Morris\", \"fields\": [\"comment\"]}}]',31,1),(38,'2021-01-11 04:49:20.884418','1','doyoutravel',2,'[{\"changed\": {\"fields\": [\"link\"]}}]',14,1),(39,'2021-01-11 04:49:25.173085','88d3b76b-f790-4804-b0b3-8e20955464c8','Voyages - Voyages | The MAJ Oceanic',2,'[]',31,1),(40,'2021-01-11 05:00:43.063428','4295efb8-f790-4a02-aa80-b57faabfbe5c','4295efb8-f790-4a02-aa80-b57faabfbe5c - Komodo',1,'[{\"added\": {}}]',12,1),(41,'2021-01-11 05:35:25.139374','999cdc3b-d0bd-4a25-a059-fab8dd357472','Voyages - Komodo - Voyages - Komodo | The MAJ Oceanic',1,'[{\"added\": {}}]',31,1),(42,'2021-01-11 05:38:11.621691','04800626-f07f-4b83-9aa3-8b581a0a2919','04800626-f07f-4b83-9aa3-8b581a0a2919',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Destination Gallery\", \"object\": \"1 - komodo-des-1.png\"}}]',42,1),(43,'2021-01-11 05:41:07.514043','73345e1d-3dc7-4853-8321-338c2365c9d5','73345e1d-3dc7-4853-8321-338c2365c9d5',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Destination Gallery\", \"object\": \"2 - komodo-des-2.png\"}}]',42,1),(44,'2021-01-11 05:47:21.420093','38065788-9350-4beb-8533-03c58a48678e','38065788-9350-4beb-8533-03c58a48678e',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Destination Gallery\", \"object\": \"3 - komodo-des-3-1.png\"}}, {\"added\": {\"name\": \"Destination Gallery\", \"object\": \"4 - komodo-des-3-2.png\"}}, {\"added\": {\"name\": \"Destination Gallery\", \"object\": \"5 - komodo-des-3-3.png\"}}]',42,1),(45,'2021-01-11 06:08:30.721580','56ccc837-ce38-4ce9-924f-316fa39f41a5','56ccc837-ce38-4ce9-924f-316fa39f41a5',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Destination Gallery\", \"object\": \"6 - komodo-des-4.png\"}}]',42,1),(46,'2021-01-11 06:13:55.431522','1b9d5965-75db-43fb-8cdf-0c2a23fe239d','1b9d5965-75db-43fb-8cdf-0c2a23fe239d - Raja Ampat',1,'[{\"added\": {}}]',12,1),(47,'2021-01-11 06:14:04.979045','dbde797b-e852-45f5-87a6-5fcf2514b0ae','Voyages - Raja Ampat - Voyages - Raja Ampat | The MAJ Oceanic',1,'[{\"added\": {}}]',31,1),(48,'2021-01-11 06:15:37.313097','ec1e4c65-aaf7-469b-a96d-ead5f1a66e0a','ec1e4c65-aaf7-469b-a96d-ead5f1a66e0a',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Destination Gallery\", \"object\": \"7 - raja-ampat-des-1.png\"}}]',42,1),(49,'2021-01-11 06:16:50.748786','b715ae53-857d-4af6-9066-f845b723fead','b715ae53-857d-4af6-9066-f845b723fead',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Destination Gallery\", \"object\": \"8 - raja-ampat-des-2.png\"}}]',42,1),(50,'2021-01-11 06:19:42.306395','22392842-966d-4ed8-addc-ee4f505d9ed4','22392842-966d-4ed8-addc-ee4f505d9ed4',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Destination Gallery\", \"object\": \"9 - raja-ampat-des-3-1.png\"}}, {\"added\": {\"name\": \"Destination Gallery\", \"object\": \"10 - raja-ampat-des-3-2.png\"}}, {\"added\": {\"name\": \"Destination Gallery\", \"object\": \"11 - raja-ampat-des-3-3.png\"}}]',42,1),(51,'2021-01-11 06:31:09.176619','48324f71-0646-46dd-96b8-94c405444c2a','48324f71-0646-46dd-96b8-94c405444c2a - Spice Islands',1,'[{\"added\": {}}]',12,1),(52,'2021-01-11 06:31:16.415195','6e52f75b-ff57-4318-b1a4-5f5565b2580b','Voyages - Spice Islands - Voyages - Spice Islands | The MAJ Oceanic',1,'[{\"added\": {}}]',31,1),(53,'2021-01-11 06:32:52.243946','8f97b794-b897-45ee-8384-d4da6f360e7d','8f97b794-b897-45ee-8384-d4da6f360e7d',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Destination Gallery\", \"object\": \"12 - spice-islands-des-1.png\"}}]',42,1),(54,'2021-01-11 06:33:22.386562','2e3c07db-f5a9-48df-8550-7f7f58e592e0','2e3c07db-f5a9-48df-8550-7f7f58e592e0',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Destination Gallery\", \"object\": \"13 - spice-islands-des-2.png\"}}]',42,1),(55,'2021-01-11 06:35:59.561412','696d4982-1b84-4610-bf1a-2ae54a6f02df','696d4982-1b84-4610-bf1a-2ae54a6f02df',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Destination Gallery\", \"object\": \"14 - spice-islands-des-3-1.png\"}}, {\"added\": {\"name\": \"Destination Gallery\", \"object\": \"15 - spice-islands-des-3-2.png\"}}, {\"added\": {\"name\": \"Destination Gallery\", \"object\": \"16 - spice-islands-des-3-3.png\"}}]',42,1),(56,'2021-01-11 06:47:59.973175','c7026b0e-2343-4a3d-ac98-0750e25e713e','c7026b0e-2343-4a3d-ac98-0750e25e713e - Suites &amp; Staterooms',1,'[{\"added\": {}}]',12,1),(57,'2021-01-11 06:49:09.747972','194ac674-acfd-42f2-a4b0-c53001e78680','Locally-crafted, world-inspired',1,'[{\"added\": {}}]',15,1),(58,'2021-01-11 06:50:36.149479','1a76b530-64c5-4d11-a81f-e3a9613757c9','Suites And Staterooms - Suites & Staterooms | The MAJ Oceanic',1,'[{\"added\": {}}]',31,1),(59,'2021-01-11 06:55:17.217905','1','Follow us on Instagram',1,'[{\"added\": {}}]',13,1),(60,'2021-01-11 06:55:28.876240','1a76b530-64c5-4d11-a81f-e3a9613757c9','Suites And Staterooms - Suites & Staterooms | The MAJ Oceanic',2,'[{\"changed\": {\"fields\": [\"instagram\"]}}]',31,1),(61,'2021-01-11 07:43:16.555715','6138cff6-8a07-4b57-a6c3-67cda87139f9','6138cff6-8a07-4b57-a6c3-67cda87139f9 - Activites',1,'[{\"added\": {}}]',12,1),(62,'2021-01-11 07:43:53.109028','5e2a184b-b631-467a-9091-490e9e3384ea','So much to explore, so little time',1,'[{\"added\": {}}]',15,1),(63,'2021-01-11 07:44:16.847962','79f0bc36-9358-4f46-935d-38295ce839c0','Activites - Activites | The MAJ Oceanic',1,'[{\"added\": {}}]',31,1),(64,'2021-01-11 07:48:19.810437','79f0bc36-9358-4f46-935d-38295ce839c0','Activites - Activites | The MAJ Oceanic',2,'[{\"added\": {\"name\": \"Section Facility\", \"object\": \"watersports - Ride the waves\"}}, {\"added\": {\"name\": \"Section Facility\", \"object\": \"fitness & wellness - Pastimes for Downtime\"}}, {\"added\": {\"name\": \"Section Facility\", \"object\": \"exploration - Port of call: adventure\"}}]',31,1),(65,'2021-01-11 07:51:24.005740','b57e8df4-6575-4721-a826-e5d150f2d0ac','watersports - Ride the waves',2,'[{\"added\": {\"name\": \"Facility Gallery\", \"object\": \"1 - activites-watersports-1.png\"}}, {\"added\": {\"name\": \"Facility Gallery\", \"object\": \"2 - activites-watersports-2.png\"}}, {\"added\": {\"name\": \"Facility Gallery\", \"object\": \"3 - activites-watersports-3.png\"}}]',44,1),(66,'2021-01-11 07:54:07.819732','03188252-bd16-4574-b009-9da72f1e336b','fitness & wellness - Pastimes for Downtime',2,'[{\"added\": {\"name\": \"Facility Gallery\", \"object\": \"4 - activites-fitness-wellness-1.png\"}}, {\"added\": {\"name\": \"Facility Gallery\", \"object\": \"5 - activites-fitness-wellness-2.png\"}}, {\"added\": {\"name\": \"Facility Gallery\", \"object\": \"6 - activites-fitness-wellness-3.png\"}}]',44,1),(67,'2021-01-11 07:56:17.507206','bbac6578-d5e3-4d26-8030-4d871a4703cf','exploration - Port of call: adventure',2,'[{\"added\": {\"name\": \"Facility Gallery\", \"object\": \"7 - activites-exploration-1.png\"}}, {\"added\": {\"name\": \"Facility Gallery\", \"object\": \"8 - activites-exploration-2.png\"}}, {\"added\": {\"name\": \"Facility Gallery\", \"object\": \"9 - activites-exploration-3.png\"}}]',44,1),(68,'2021-01-11 08:03:42.141892','2','gypsea_lust',1,'[{\"added\": {}}]',14,1),(69,'2021-01-11 08:03:54.761279','79f0bc36-9358-4f46-935d-38295ce839c0','Activites - Activites | The MAJ Oceanic',2,'[{\"added\": {\"name\": \"Section Testimony\", \"object\": \"Lauren Bullen\"}}]',31,1),(70,'2021-01-11 09:26:44.686913','1','1',1,'[{\"added\": {}}, {\"added\": {\"name\": \"header full chapter\", \"object\": \"Full Charter Rates per Night (USD)\"}}, {\"added\": {\"name\": \"header full chapter\", \"object\": \"Sailing Area\"}}, {\"added\": {\"name\": \"header full chapter\", \"object\": \"Minimum Nights\"}}, {\"added\": {\"name\": \"header full chapter\", \"object\": \"2020\"}}, {\"added\": {\"name\": \"header full chapter\", \"object\": \"2021\"}}, {\"added\": {\"name\": \"body full chapter\", \"object\": \"Januari 1-10\"}}, {\"added\": {\"name\": \"body full chapter\", \"object\": \"January 11\\u201331\"}}, {\"added\": {\"name\": \"body full chapter\", \"object\": \"February\"}}, {\"added\": {\"name\": \"body full chapter\", \"object\": \"March\"}}, {\"added\": {\"name\": \"body full chapter\", \"object\": \"April\"}}, {\"added\": {\"name\": \"body full chapter\", \"object\": \"May\"}}, {\"added\": {\"name\": \"body full chapter\", \"object\": \"June\"}}, {\"added\": {\"name\": \"body full chapter\", \"object\": \"July\"}}, {\"added\": {\"name\": \"body full chapter\", \"object\": \"August\"}}, {\"added\": {\"name\": \"body full chapter\", \"object\": \"September\"}}, {\"added\": {\"name\": \"body full chapter\", \"object\": \"October\"}}, {\"added\": {\"name\": \"body full chapter\", \"object\": \"November\"}}, {\"added\": {\"name\": \"body full chapter\", \"object\": \"December 1-20\"}}, {\"added\": {\"name\": \"body full chapter\", \"object\": \"December 21-31\"}}, {\"added\": {\"name\": \"per night\", \"object\": \"PerNight object (1)\"}}, {\"added\": {\"name\": \"per night\", \"object\": \"PerNight object (2)\"}}, {\"added\": {\"name\": \"per night\", \"object\": \"PerNight object (3)\"}}, {\"added\": {\"name\": \"per night\", \"object\": \"PerNight object (4)\"}}, {\"added\": {\"name\": \"per night\", \"object\": \"PerNight object (5)\"}}, {\"added\": {\"name\": \"per night\", \"object\": \"PerNight object (6)\"}}, {\"added\": {\"name\": \"per night\", \"object\": \"PerNight object (7)\"}}, {\"added\": {\"name\": \"per night\", \"object\": \"PerNight object (8)\"}}, {\"added\": {\"name\": \"per night\", \"object\": \"PerNight object (9)\"}}, {\"added\": {\"name\": \"per night\", \"object\": \"PerNight object (10)\"}}, {\"added\": {\"name\": \"per night\", \"object\": \"PerNight object (11)\"}}, {\"added\": {\"name\": \"per night\", \"object\": \"PerNight object (12)\"}}, {\"added\": {\"name\": \"per night\", \"object\": \"PerNight object (13)\"}}, {\"added\": {\"name\": \"per night\", \"object\": \"PerNight object (14)\"}}, {\"added\": {\"name\": \"per night\", \"object\": \"PerNight object (15)\"}}, {\"added\": {\"name\": \"per night\", \"object\": \"PerNight object (16)\"}}, {\"added\": {\"name\": \"per night\", \"object\": \"PerNight object (17)\"}}, {\"added\": {\"name\": \"per night\", \"object\": \"PerNight object (18)\"}}, {\"added\": {\"name\": \"per night\", \"object\": \"PerNight object (19)\"}}, {\"added\": {\"name\": \"per night\", \"object\": \"PerNight object (20)\"}}, {\"added\": {\"name\": \"per night\", \"object\": \"PerNight object (21)\"}}, {\"added\": {\"name\": \"per night\", \"object\": \"PerNight object (22)\"}}, {\"added\": {\"name\": \"per night\", \"object\": \"PerNight object (23)\"}}, {\"added\": {\"name\": \"per night\", \"object\": \"PerNight object (24)\"}}, {\"added\": {\"name\": \"per night\", \"object\": \"PerNight object (25)\"}}, {\"added\": {\"name\": \"per night\", \"object\": \"PerNight object (26)\"}}, {\"added\": {\"name\": \"per night\", \"object\": \"PerNight object (27)\"}}, {\"added\": {\"name\": \"per night\", \"object\": \"PerNight object (28)\"}}]',47,1),(71,'2021-01-11 09:37:16.658553','1','1',2,'[{\"changed\": {\"fields\": [\"ship_capacity\", \"extra_guest\", \"relocation_fee\"]}}]',47,1),(72,'2021-01-11 12:12:48.479699','366b4b47-a8b1-4d03-96af-5c220b71e79b','Rates &amp; Schedule',1,'[{\"added\": {}}]',15,1),(73,'2021-01-11 12:31:46.015975','a7ec6dae-c21f-45b0-b428-10ea6dbb0004','Rates - Rates & Schedule | The MAJ Oceanic',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Section Charter Rates Include\", \"object\": \"1fe14775-d6e2-4d84-a9b1-c1749c640060 - Full Ship Charter Rates include:\"}}, {\"added\": {\"name\": \"Section Charter Rates Include\", \"object\": \"8520d72e-7d96-43d8-a7ca-179d3e47c0c0 - Water sports\"}}, {\"added\": {\"name\": \"Section Charter Rates Include\", \"object\": \"527be856-764a-43a0-b6e5-51e7fd999b68 - Tours and Fees\"}}, {\"added\": {\"name\": \"Section Charter Rates Include\", \"object\": \"f1059a85-21ad-40fa-8204-ce02d6e9a408 - Our package does not include:\"}}, {\"added\": {\"name\": \"Section Charter Rates Include\", \"object\": \"cf8e8739-ace3-4df1-8bd2-e497519e4f6c - Payment Terms and Conditions\"}}, {\"added\": {\"name\": \"Section Charter Rates Include\", \"object\": \"2041266c-75fd-4efd-83cf-69f5643f7ef9 - Cancellation Policy\"}}, {\"added\": {\"name\": \"Data Charter Include\", \"object\": \"All gourmet Asian Fusion and Western meals and snacks\"}}, {\"added\": {\"name\": \"Data Charter Include\", \"object\": \"Soft drinks, juices, local beer and local wine\"}}, {\"added\": {\"name\": \"Data Charter Include\", \"object\": \"30 minutes\\u2019 trial massage or beauty treatment per person during the cruise\"}}, {\"added\": {\"name\": \"Data Charter Include\", \"object\": \"Personal laundry\"}}, {\"added\": {\"name\": \"Data Charter Include\", \"object\": \"Use of equipment on board : gym (exercise bike, weights, yoga mats), board games, movie library\"}}, {\"added\": {\"name\": \"Data Charter Include\", \"object\": \"Golf Pack (including clubs, Tee, carpet and 30 complimentary bio-degradable balls)\"}}, {\"added\": {\"name\": \"Data Charter Include\", \"object\": \"Stand up paddle boards\"}}, {\"added\": {\"name\": \"Data Charter Include\", \"object\": \"Sea kayaks\"}}, {\"added\": {\"name\": \"Data Charter Include\", \"object\": \"Snorkeling\"}}, {\"added\": {\"name\": \"Data Charter Include\", \"object\": \"Diving equipment\"}}, {\"added\": {\"name\": \"Data Charter Include\", \"object\": \"Dive instructor\"}}, {\"added\": {\"name\": \"Data Charter Include\", \"object\": \"Dive master\"}}, {\"added\": {\"name\": \"Data Charter Include\", \"object\": \"2 tenders (2 RIB x 6M x 90HP) outboard\"}}, {\"added\": {\"name\": \"Data Charter Include\", \"object\": \"Excursions and guide fees\"}}, {\"added\": {\"name\": \"Data Charter Include\", \"object\": \"Park entrance fees\"}}, {\"added\": {\"name\": \"Data Charter Include\", \"object\": \"Boat clearance fees\"}}, {\"added\": {\"name\": \"Data Charter Include\", \"object\": \"Cruise permits during the trip\"}}, {\"added\": {\"name\": \"Data Charter Include\", \"object\": \"Fuel charges\"}}, {\"added\": {\"name\": \"Data Charter Include\", \"object\": \"Airport transfers\"}}, {\"added\": {\"name\": \"Data Charter Include\", \"object\": \"International and domestic airfares, excess baggage fees, passports, visas or airport taxes\"}}, {\"added\": {\"name\": \"Data Charter Include\", \"object\": \"Alcoholic beverages\"}}, {\"added\": {\"name\": \"Data Charter Include\", \"object\": \"Spa treatments\"}}, {\"added\": {\"name\": \"Data Charter Include\", \"object\": \"Personal expenses & crew gratuities\"}}, {\"added\": {\"name\": \"Data Charter Include\", \"object\": \"Travel and diving insurance.\"}}, {\"added\": {\"name\": \"Data Charter Include\", \"object\": \"Unscheduled excursions and drone usage fee\"}}, {\"added\": {\"name\": \"Data Charter Include\", \"object\": \"50% deposit is required to confirm the charter\"}}, {\"added\": {\"name\": \"Data Charter Include\", \"object\": \"Full payment required 90 days before your departure\"}}, {\"added\": {\"name\": \"Data Charter Include\", \"object\": \"60 days or more prior to departure the first payment (Deposit of 50%) will be forfeited.\"}}, {\"added\": {\"name\": \"Data Charter Include\", \"object\": \"Less than 60 days prior to departure 100% of the total payment will be forfeited.\"}}]',31,1),(74,'2021-01-11 12:32:10.276141','a7ec6dae-c21f-45b0-b428-10ea6dbb0004','Rates - Rates & Schedule | The MAJ Oceanic',2,'[]',31,1),(75,'2021-01-11 12:32:34.370981','a7ec6dae-c21f-45b0-b428-10ea6dbb0004','Rates And Schedule - Rates & Schedule | The MAJ Oceanic',2,'[{\"changed\": {\"fields\": [\"name\", \"table_full_chapter\"]}}]',31,1),(76,'2021-01-11 12:33:10.768658','a7ec6dae-c21f-45b0-b428-10ea6dbb0004','Rates And Schedule - Rates & Schedule - The MAJ Oceanic',2,'[{\"changed\": {\"fields\": [\"title\"]}}]',31,1),(77,'2021-01-11 12:33:29.337938','88d3b76b-f790-4804-b0b3-8e20955464c8','Voyages - Voyages - The MAJ Oceanic',2,'[{\"changed\": {\"fields\": [\"title\"]}}]',31,1),(78,'2021-01-11 12:33:38.979737','79f0bc36-9358-4f46-935d-38295ce839c0','Activites - Activites - The MAJ Oceanic',2,'[{\"changed\": {\"fields\": [\"title\"]}}]',31,1),(79,'2021-01-11 12:33:53.523378','1a76b530-64c5-4d11-a81f-e3a9613757c9','Suites And Staterooms - Suites & Staterooms - The MAJ Oceanic',2,'[{\"changed\": {\"fields\": [\"title\"]}}]',31,1),(80,'2021-01-11 12:34:53.922401','a7ec6dae-c21f-45b0-b428-10ea6dbb0004','Rates And Schedule - Rates & Schedule - The MAJ Oceanic',2,'[{\"changed\": {\"fields\": [\"intro\"]}}]',31,1),(81,'2021-01-11 13:07:56.348715','1fe14775-d6e2-4d84-a9b1-c1749c640060','1fe14775-d6e2-4d84-a9b1-c1749c640060 - <div class=\"font-weight-bold mb-5\">Full Ship Charter Rates include:</div>',2,'[{\"changed\": {\"fields\": [\"name\"]}}, {\"changed\": {\"name\": \"Data Charter Include\", \"object\": \"30 minutes\\u2019 trial massage or beauty treatment per person during the cruise\", \"fields\": [\"text\"]}}]',50,1),(82,'2021-01-11 13:08:26.705328','8520d72e-7d96-43d8-a7ca-179d3e47c0c0','8520d72e-7d96-43d8-a7ca-179d3e47c0c0 - <div class=\"mt-5 mb-1\">Water sports</div>',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',50,1),(83,'2021-01-11 13:09:05.245842','527be856-764a-43a0-b6e5-51e7fd999b68','527be856-764a-43a0-b6e5-51e7fd999b68 - <div class=\"mt-5 mb-1\">Tours and Fees</div>',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',50,1),(84,'2021-01-11 13:09:29.862188','f1059a85-21ad-40fa-8204-ce02d6e9a408','f1059a85-21ad-40fa-8204-ce02d6e9a408 - <div class=\"mt-5 mb-1\">Our package does not include:</div>',2,'[{\"changed\": {\"fields\": [\"name\"]}}, {\"changed\": {\"name\": \"Data Charter Include\", \"object\": \"Personal expenses & crew gratuities\", \"fields\": [\"text\"]}}]',50,1),(85,'2021-01-11 13:10:07.462838','cf8e8739-ace3-4df1-8bd2-e497519e4f6c','cf8e8739-ace3-4df1-8bd2-e497519e4f6c - <div class=\"font-weight-bold mt-10 mb-4\">Payment Terms and Conditions</div>',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',50,1),(86,'2021-01-11 13:10:25.100237','2041266c-75fd-4efd-83cf-69f5643f7ef9','2041266c-75fd-4efd-83cf-69f5643f7ef9 - <div class=\"font-weight-bold mt-10 mb-4\">Cancellation Policy</div>',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',50,1),(87,'2021-01-11 13:16:29.278839','d614b5ce-6091-4d86-b65e-eca4faca3abb','d614b5ce-6091-4d86-b65e-eca4faca3abb - The future of travel, &lt;br/&gt;on traditions of the past.',2,'[{\"changed\": {\"fields\": [\"heading\"]}}]',12,1),(88,'2021-01-11 13:16:33.879384','b202c277-91b9-4474-a0a5-4dde5976c8e6','Home - The Maj Oceanic',2,'[]',31,1),(89,'2021-01-11 13:20:24.361860','d614b5ce-6091-4d86-b65e-eca4faca3abb','d614b5ce-6091-4d86-b65e-eca4faca3abb - The future of travel, <br />on traditions of the past.',2,'[{\"changed\": {\"fields\": [\"heading\"]}}]',12,1);
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
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(32,'django_summernote','attachment'),(34,'page_navigation','menu'),(35,'page_navigation','navigation'),(31,'page_navigation','page'),(7,'section','admiralsuite'),(46,'section','bodyfullchapter'),(30,'section','bodyspesification'),(50,'section','charterratesinclude'),(8,'section','commodoresuite'),(51,'section','datacharterinclude'),(29,'section','deckpreview'),(9,'section','decktechnical'),(10,'section','deluxestateroom'),(42,'section','destination'),(43,'section','destinationgallery'),(11,'section','dining'),(44,'section','facility'),(45,'section','facilitygallery'),(28,'section','galleryadmiralsuite'),(27,'section','gallerycommodoresuite'),(26,'section','gallerydeluxestateroom'),(49,'section','headerfullchapter'),(25,'section','headerspesification'),(12,'section','hero'),(33,'section','icondeluxestateroom'),(13,'section','instagram'),(14,'section','instagramtestimony'),(15,'section','intro'),(16,'section','itinerary'),(37,'section','menusuitesroom'),(17,'section','occasions'),(48,'section','pernight'),(39,'section','personil'),(36,'section','suitesandstateroom'),(41,'section','sustainability'),(47,'section','tablefullchapter'),(18,'section','tablespesification'),(24,'section','tabs'),(40,'section','team'),(23,'section','testimony'),(38,'section','thedecks'),(19,'section','thevessel'),(22,'section','video'),(20,'section','voyages'),(21,'section','voyagesitem'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-01-08 02:43:42.151215'),(2,'auth','0001_initial','2021-01-08 02:43:42.995281'),(3,'admin','0001_initial','2021-01-08 02:43:45.064432'),(4,'admin','0002_logentry_remove_auto_add','2021-01-08 02:43:45.775257'),(5,'admin','0003_logentry_add_action_flag_choices','2021-01-08 02:43:45.802022'),(6,'contenttypes','0002_remove_content_type_name','2021-01-08 02:43:46.146961'),(7,'auth','0002_alter_permission_name_max_length','2021-01-08 02:43:46.394480'),(8,'auth','0003_alter_user_email_max_length','2021-01-08 02:43:46.457076'),(9,'auth','0004_alter_user_username_opts','2021-01-08 02:43:46.478216'),(10,'auth','0005_alter_user_last_login_null','2021-01-08 02:43:46.683609'),(11,'auth','0006_require_contenttypes_0002','2021-01-08 02:43:46.693023'),(12,'auth','0007_alter_validators_add_error_messages','2021-01-08 02:43:46.713875'),(13,'auth','0008_alter_user_username_max_length','2021-01-08 02:43:46.931801'),(14,'auth','0009_alter_user_last_name_max_length','2021-01-08 02:43:47.155893'),(15,'auth','0010_alter_group_name_max_length','2021-01-08 02:43:47.214407'),(16,'auth','0011_update_proxy_permissions','2021-01-08 02:43:47.239607'),(17,'page_navigation','0001_initial','2021-01-08 02:43:47.332133'),(18,'section','0001_initial','2021-01-08 02:43:49.654874'),(19,'page_navigation','0002_auto_20210108_0943','2021-01-08 02:43:56.969758'),(20,'sessions','0001_initial','2021-01-08 02:44:03.174119'),(21,'django_summernote','0001_initial','2021-01-08 03:20:34.377547'),(22,'django_summernote','0002_update-help_text','2021-01-08 03:20:34.404359'),(23,'page_navigation','0003_auto_20210108_1252','2021-01-08 05:52:55.342666'),(24,'section','0002_auto_20210108_1252','2021-01-08 05:53:02.508339'),(25,'section','0003_auto_20210108_1335','2021-01-08 06:35:57.261486'),(26,'section','0004_auto_20210108_1349','2021-01-08 06:49:25.622687'),(27,'section','0005_auto_20210108_1431','2021-01-08 07:31:51.653143'),(28,'section','0006_auto_20210108_1509','2021-01-08 08:10:03.617398'),(29,'page_navigation','0004_page_slug','2021-01-08 08:45:31.255098'),(30,'section','0007_auto_20210108_1622','2021-01-08 09:22:37.637444'),(31,'page_navigation','0005_menu_navigation','2021-01-09 16:01:34.256040'),(32,'section','0008_auto_20210110_1643','2021-01-10 09:43:52.208796'),(33,'section','0009_menusuitesroom_suitesandstateroom','2021-01-10 10:19:06.538329'),(34,'page_navigation','0006_page_suites_and_staterooms','2021-01-10 10:33:15.585622'),(35,'section','0010_thedecks','2021-01-10 11:45:35.849176'),(36,'section','0011_personil_team','2021-01-10 12:12:33.003230'),(37,'page_navigation','0007_page_teams','2021-01-10 12:12:34.604791'),(38,'section','0012_sustainability','2021-01-10 12:24:33.232109'),(39,'page_navigation','0008_page_sustainability','2021-01-10 12:24:34.295296'),(40,'section','0013_auto_20210110_2140','2021-01-10 14:40:43.630403'),(41,'section','0014_destination_destinationgallery','2021-01-11 05:29:53.600168'),(42,'section','0015_auto_20210111_1444','2021-01-11 07:44:56.148296'),(43,'section','0016_auto_20210111_1554','2021-01-11 08:55:02.073443'),(44,'section','0017_headerfullchapter_width','2021-01-11 09:06:56.201660'),(45,'section','0018_auto_20210111_1610','2021-01-11 09:10:22.212764'),(46,'section','0019_auto_20210111_1636','2021-01-11 09:36:14.244059'),(47,'page_navigation','0009_page_table_full_chapter','2021-01-11 12:05:46.442681'),(48,'section','0020_charterratesinclude_datacharterinclude','2021-01-11 12:05:47.496069'),(49,'page_navigation','0010_auto_20210111_1910','2021-01-11 12:10:58.442103');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('0imgo34iax2azl2mlqj7ldlnu24cyosh','NTExNWE1NjgzYjY4M2FhYmFjOTZkMmQ3ZDIzNmU4ZmEyNTBhOWM2MDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyMzY5MzdkNjVmYmUyNjc4YjdkYzk3NGMxN2Y1NzQxNGViNWIyNjg0In0=','2021-01-22 02:44:38.804305'),('2d0kvf0klf08cpwii6ftnjv9mvemmr0i','NTExNWE1NjgzYjY4M2FhYmFjOTZkMmQ3ZDIzNmU4ZmEyNTBhOWM2MDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyMzY5MzdkNjVmYmUyNjc4YjdkYzk3NGMxN2Y1NzQxNGViNWIyNjg0In0=','2021-01-23 18:30:38.765399');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_summernote_attachment`
--

DROP TABLE IF EXISTS `django_summernote_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_summernote_attachment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `file` varchar(100) NOT NULL,
  `uploaded` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_summernote_attachment`
--

LOCK TABLES `django_summernote_attachment` WRITE;
/*!40000 ALTER TABLE `django_summernote_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_summernote_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_navigation_menu`
--

DROP TABLE IF EXISTS `page_navigation_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `page_navigation_menu` (
  `id` char(32) NOT NULL,
  `title` varchar(100) NOT NULL,
  `to` varchar(100) NOT NULL,
  `navigation_id` char(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `page_navigation_menu_navigation_id_7ad0853b_fk_page_navi` (`navigation_id`),
  CONSTRAINT `page_navigation_menu_navigation_id_7ad0853b_fk_page_navi` FOREIGN KEY (`navigation_id`) REFERENCES `page_navigation_navigation` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_navigation_menu`
--

LOCK TABLES `page_navigation_menu` WRITE;
/*!40000 ALTER TABLE `page_navigation_menu` DISABLE KEYS */;
INSERT INTO `page_navigation_menu` VALUES ('36fed3332a094b7c814ae07c7406f34c','raja ampat','/voyages/raja-ampat','49c6f2ee12244b6eb24e8788d24c6ef6'),('895beb6ac87c46e182927877c6379f2e','spice islands','/voyages/spice-islands','49c6f2ee12244b6eb24e8788d24c6ef6'),('f9af49253ff34e9c97e20ad94078c1ed','komodo','/voyages/komodo','49c6f2ee12244b6eb24e8788d24c6ef6'),('fbdf24bb351b4dd490b230f8e36adfe1','specification','/the-vessel/specification','9a43c97c30c740ca8d9cf5266587bea3');
/*!40000 ALTER TABLE `page_navigation_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_navigation_navigation`
--

DROP TABLE IF EXISTS `page_navigation_navigation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `page_navigation_navigation` (
  `id` char(32) NOT NULL,
  `title` varchar(100) NOT NULL,
  `to` varchar(100) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_navigation_navigation`
--

LOCK TABLES `page_navigation_navigation` WRITE;
/*!40000 ALTER TABLE `page_navigation_navigation` DISABLE KEYS */;
INSERT INTO `page_navigation_navigation` VALUES ('49c6f2ee12244b6eb24e8788d24c6ef6','voyages','/voyages','2021-01-09 17:35:22.195358','2021-01-09 17:35:22.195383'),('9a43c97c30c740ca8d9cf5266587bea3','the vessel','/the-vessel','2021-01-09 17:30:58.427661','2021-01-09 17:30:58.427685'),('b30fd79a1e6244a0aec873e94ed9614d','rates & schedule','/rates-and-schedule','2021-01-09 17:35:48.918050','2021-01-09 17:35:48.918088'),('bdaa1e43b438439cbc07033607c10827','suites & staterooms','/suites-and-staterooms','2021-01-09 17:31:32.112201','2021-01-09 17:31:32.112252'),('df6ddedf939944c38e2599721c20c08b','activites','/activites','2021-01-09 17:35:36.028162','2021-01-09 17:35:36.028185');
/*!40000 ALTER TABLE `page_navigation_navigation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_navigation_page`
--

DROP TABLE IF EXISTS `page_navigation_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `page_navigation_page` (
  `id` char(32) NOT NULL,
  `name` varchar(225) NOT NULL,
  `title` varchar(225) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `admiral_suite_id` int DEFAULT NULL,
  `commodore_suite_id` int DEFAULT NULL,
  `deck_technical_id` int DEFAULT NULL,
  `deluxe_stateroom_id` int DEFAULT NULL,
  `dining_id` int DEFAULT NULL,
  `hero_id` char(32) DEFAULT NULL,
  `instagram_id` int DEFAULT NULL,
  `intro_id` char(32) DEFAULT NULL,
  `itinerary_id` int DEFAULT NULL,
  `occasions_id` int DEFAULT NULL,
  `table_spesification_id` int DEFAULT NULL,
  `the_vessel_id` int DEFAULT NULL,
  `voyages_id` int DEFAULT NULL,
  `slug` varchar(50) NOT NULL,
  `suites_and_staterooms_id` int DEFAULT NULL,
  `teams_id` char(32) DEFAULT NULL,
  `sustainability_id` char(32) DEFAULT NULL,
  `table_full_chapter_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hero_id` (`hero_id`),
  UNIQUE KEY `admiral_suite_id` (`admiral_suite_id`),
  UNIQUE KEY `commodore_suite_id` (`commodore_suite_id`),
  UNIQUE KEY `deck_technical_id` (`deck_technical_id`),
  UNIQUE KEY `deluxe_stateroom_id` (`deluxe_stateroom_id`),
  UNIQUE KEY `dining_id` (`dining_id`),
  UNIQUE KEY `instagram_id` (`instagram_id`),
  UNIQUE KEY `itinerary_id` (`itinerary_id`),
  UNIQUE KEY `occasions_id` (`occasions_id`),
  UNIQUE KEY `table_spesification_id` (`table_spesification_id`),
  UNIQUE KEY `the_vessel_id` (`the_vessel_id`),
  UNIQUE KEY `voyages_id` (`voyages_id`),
  UNIQUE KEY `suites_and_staterooms_id` (`suites_and_staterooms_id`),
  UNIQUE KEY `teams_id` (`teams_id`),
  UNIQUE KEY `sustainability_id` (`sustainability_id`),
  UNIQUE KEY `table_full_chapter_id` (`table_full_chapter_id`),
  KEY `page_navigation_page_intro_id_c05be6fc_fk_section_intro_id` (`intro_id`),
  KEY `page_navigation_page_slug_9fc2e75e` (`slug`),
  CONSTRAINT `page_navigation_page_admiral_suite_id_3ec9025e_fk_section_a` FOREIGN KEY (`admiral_suite_id`) REFERENCES `section_admiralsuite` (`id`),
  CONSTRAINT `page_navigation_page_commodore_suite_id_7b8f660d_fk_section_c` FOREIGN KEY (`commodore_suite_id`) REFERENCES `section_commodoresuite` (`id`),
  CONSTRAINT `page_navigation_page_deck_technical_id_170e0ad0_fk_section_d` FOREIGN KEY (`deck_technical_id`) REFERENCES `section_decktechnical` (`id`),
  CONSTRAINT `page_navigation_page_deluxe_stateroom_id_3020c64c_fk_section_d` FOREIGN KEY (`deluxe_stateroom_id`) REFERENCES `section_deluxestateroom` (`id`),
  CONSTRAINT `page_navigation_page_dining_id_9f792f12_fk_section_dining_id` FOREIGN KEY (`dining_id`) REFERENCES `section_dining` (`id`),
  CONSTRAINT `page_navigation_page_hero_id_27e8acba_fk_section_hero_id` FOREIGN KEY (`hero_id`) REFERENCES `section_hero` (`id`),
  CONSTRAINT `page_navigation_page_instagram_id_42ba9284_fk_section_i` FOREIGN KEY (`instagram_id`) REFERENCES `section_instagram` (`id`),
  CONSTRAINT `page_navigation_page_intro_id_c05be6fc_fk_section_intro_id` FOREIGN KEY (`intro_id`) REFERENCES `section_intro` (`id`),
  CONSTRAINT `page_navigation_page_itinerary_id_25e02a8d_fk_section_i` FOREIGN KEY (`itinerary_id`) REFERENCES `section_itinerary` (`id`),
  CONSTRAINT `page_navigation_page_occasions_id_0bca9378_fk_section_o` FOREIGN KEY (`occasions_id`) REFERENCES `section_occasions` (`id`),
  CONSTRAINT `page_navigation_page_suites_and_stateroom_8d275abd_fk_section_s` FOREIGN KEY (`suites_and_staterooms_id`) REFERENCES `section_suitesandstateroom` (`id`),
  CONSTRAINT `page_navigation_page_sustainability_id_4bf554e5_fk_section_s` FOREIGN KEY (`sustainability_id`) REFERENCES `section_sustainability` (`id`),
  CONSTRAINT `page_navigation_page_table_full_chapter_i_f4b3e2ca_fk_section_t` FOREIGN KEY (`table_full_chapter_id`) REFERENCES `section_tablefullchapter` (`id`),
  CONSTRAINT `page_navigation_page_table_spesification__36764feb_fk_section_t` FOREIGN KEY (`table_spesification_id`) REFERENCES `section_tablespesification` (`id`),
  CONSTRAINT `page_navigation_page_teams_id_f409a2d2_fk_section_team_id` FOREIGN KEY (`teams_id`) REFERENCES `section_team` (`id`),
  CONSTRAINT `page_navigation_page_the_vessel_id_a11f3716_fk_section_t` FOREIGN KEY (`the_vessel_id`) REFERENCES `section_thevessel` (`id`),
  CONSTRAINT `page_navigation_page_voyages_id_e82d41a1_fk_section_voyages_id` FOREIGN KEY (`voyages_id`) REFERENCES `section_voyages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_navigation_page`
--

LOCK TABLES `page_navigation_page` WRITE;
/*!40000 ALTER TABLE `page_navigation_page` DISABLE KEYS */;
INSERT INTO `page_navigation_page` VALUES ('1a76b53064c54d11a81fe3a9613757c9','Suites And Staterooms','Suites & Staterooms - The MAJ Oceanic','2021-01-11 06:50:36.147432','2021-01-11 12:33:53.519746',3,1,NULL,1,NULL,'c7026b0e23434a3dac980750e25e713e',1,'194ac674acfd42f2a4b0c53001e78680',NULL,NULL,NULL,NULL,NULL,'suites-and-staterooms',NULL,NULL,NULL,NULL),('6e52f75bff574318b1a45f5565b2580b','Voyages - Spice Islands','Voyages - Spice Islands | The MAJ Oceanic','2021-01-11 06:31:16.414293','2021-01-11 06:31:16.414317',NULL,NULL,NULL,NULL,NULL,'48324f71064646dd96b894c405444c2a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'voyages-spice-islands',NULL,NULL,NULL,NULL),('79f0bc3693584f46935d38295ce839c0','Activites','Activites - The MAJ Oceanic','2021-01-11 07:44:16.844695','2021-01-11 12:33:38.930632',NULL,NULL,NULL,NULL,NULL,'6138cff68a074b57a6c367cda87139f9',NULL,'5e2a184bb631467a9091490e9e3384ea',NULL,NULL,NULL,NULL,NULL,'activites',NULL,NULL,NULL,NULL),('88d3b76bf7904804b0b38e20955464c8','Voyages','Voyages - The MAJ Oceanic','2021-01-11 04:17:38.538451','2021-01-11 12:33:29.301047',NULL,NULL,NULL,NULL,NULL,'af26e5b813474246832449b399f7422a',NULL,NULL,1,NULL,NULL,NULL,NULL,'voyages',NULL,NULL,NULL,NULL),('962b3d1885e7481abb8751f1e7f8c256','The Vessel','The Vessel - The MAJ Oceanic','2021-01-10 11:54:46.281074','2021-01-10 12:34:53.093339',NULL,NULL,NULL,NULL,NULL,'7760c802089449b4a1f742756ae2cb7b',NULL,'ce217190c7444a509f98d8b0eaf7626d',NULL,NULL,NULL,NULL,NULL,'the-vessel',1,'378eabb6dc8f4a61bb0c4d7c71a54ccc','0f55fac882464cfbb708742c03f304ec',NULL),('999cdc3bd0bd4a25a059fab8dd357472','Voyages - Komodo','Voyages - Komodo | The MAJ Oceanic','2021-01-11 05:35:25.126166','2021-01-11 05:35:25.126200',NULL,NULL,NULL,NULL,NULL,'4295efb8f7904a02aa80b57faabfbe5c',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'voyages-komodo',NULL,NULL,NULL,NULL),('a7ec6daec21f45b0b42810ea6dbb0004','Rates And Schedule','Rates & Schedule - The MAJ Oceanic','2021-01-11 12:31:45.983165','2021-01-11 12:34:53.799823',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'366b4b47a8b14d0396af5c220b71e79b',NULL,NULL,NULL,NULL,NULL,'rates-and-schedule',NULL,NULL,NULL,1),('b202c27791b94474a0a54dde5976c8e6','Home','The Maj Oceanic','2021-01-08 05:20:56.613262','2021-01-11 13:16:33.874011',NULL,NULL,NULL,NULL,4,'d614b5ce60914d86b65eeca4faca3abb',NULL,'13221f4953be43c7b1eec03827841d87',NULL,1,NULL,1,1,'home',NULL,NULL,NULL,NULL),('c86ac1cc10394126a14de829c97a1f14','Spesification','Spesification - The MAJ Oceanic','2021-01-10 14:42:50.095654','2021-01-10 14:53:36.494225',NULL,NULL,1,NULL,NULL,'10019c22eed54aa39bdd50edb942b6f0',NULL,NULL,NULL,NULL,2,NULL,NULL,'spesification',NULL,NULL,NULL,NULL),('dbde797be85245f587a65fcf2514b0ae','Voyages - Raja Ampat','Voyages - Raja Ampat | The MAJ Oceanic','2021-01-11 06:14:04.977636','2021-01-11 06:14:04.977664',NULL,NULL,NULL,NULL,NULL,'1b9d596575db43fb8cdf0c2a23fe239d',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'voyages-raja-ampat',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `page_navigation_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section_admiralsuite`
--

DROP TABLE IF EXISTS `section_admiralsuite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section_admiralsuite` (
  `id` int NOT NULL AUTO_INCREMENT,
  `icon` varchar(100) NOT NULL,
  `caption` varchar(225) NOT NULL,
  `heading` varchar(225) NOT NULL,
  `sqm` smallint unsigned NOT NULL,
  `description` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section_admiralsuite`
--

LOCK TABLES `section_admiralsuite` WRITE;
/*!40000 ALTER TABLE `section_admiralsuite` DISABLE KEYS */;
INSERT INTO `section_admiralsuite` VALUES (3,'suites-icon-zheng-he_IVEemeY.png','admiral suite','Zheng He',120,'Of the ship\'s 6+1 suites, the 120 sqm Admiral Suite is the largest master suite on a Phinisi cruise in the market. Being the only suite on the bridge deck, it offers full privacy, its own balcony, and a 270&ordm; view of the ocean.','2021-01-10 11:10:58.549422','2021-01-10 11:10:58.549454');
/*!40000 ALTER TABLE `section_admiralsuite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section_bodyfullchapter`
--

DROP TABLE IF EXISTS `section_bodyfullchapter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section_bodyfullchapter` (
  `id` int NOT NULL AUTO_INCREMENT,
  `headline` varchar(225) NOT NULL,
  `sailing_area` varchar(225) NOT NULL,
  `minimum_nights` smallint unsigned NOT NULL,
  `table_full_chapter_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `section_bodyfullchap_table_full_chapter_i_19bf4a88_fk_section_t` (`table_full_chapter_id`),
  CONSTRAINT `section_bodyfullchap_table_full_chapter_i_19bf4a88_fk_section_t` FOREIGN KEY (`table_full_chapter_id`) REFERENCES `section_tablefullchapter` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section_bodyfullchapter`
--

LOCK TABLES `section_bodyfullchapter` WRITE;
/*!40000 ALTER TABLE `section_bodyfullchapter` DISABLE KEYS */;
INSERT INTO `section_bodyfullchapter` VALUES (1,'Januari 1-10','Raja Ampat',6,1),(2,'January 11–31','Raja Ampat',5,1),(3,'February','Raja Ampat',5,1),(4,'March','Raja Ampat',5,1),(5,'April','Raja Ampat',5,1),(6,'May','Spice Islands/Alor',6,1),(7,'June','Komodo',3,1),(8,'July','Komodo',3,1),(9,'August','Komodo',3,1),(10,'September','Komodo',3,1),(11,'October','Komodo',3,1),(12,'November','Spice Islands/Alor',6,1),(13,'December 1-20','Raja Ampat',5,1),(14,'December 21-31','Raja Ampat',6,1);
/*!40000 ALTER TABLE `section_bodyfullchapter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section_bodyspesification`
--

DROP TABLE IF EXISTS `section_bodyspesification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section_bodyspesification` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(225) NOT NULL,
  `value` longtext NOT NULL,
  `table_spesification_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `section_bodyspesific_table_spesification__465f7e4f_fk_section_t` (`table_spesification_id`),
  CONSTRAINT `section_bodyspesific_table_spesification__465f7e4f_fk_section_t` FOREIGN KEY (`table_spesification_id`) REFERENCES `section_tablespesification` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section_bodyspesification`
--

LOCK TABLES `section_bodyspesification` WRITE;
/*!40000 ALTER TABLE `section_bodyspesification` DISABLE KEYS */;
INSERT INTO `section_bodyspesification` VALUES (12,'Build','Bira, Sulawesi, Indonesia in 2019',2),(13,'Type','Traditional gaft-rigged timber phinisi (teak wood)',2),(14,'Length (Total)','47 m /154 ft',2),(15,'Beam','10.5 m / 34 ft',2),(16,'Draft','3.52 m / 11.5 ft',2),(17,'No. of cabins | guests | crew','6+1 | 14 | 12',2),(18,'Cruising speed','17 knot (max.) / 12 knot (avg.) / 9 knot (min.)',2),(19,'Engine model','Yanmar marine diesel 6AYM-WST 659HP/1900RPM (sea water cooling) 5 blade bronze propellers',2),(20,'Navigation','Garmin Aquamap 1252',2),(21,'Life raft','Type YZF-A capacity of 25 persons',2),(22,'Watersports Equipment','6 Paddle board,<br />6 Sea Kayaks,<br />Fishing Gear,<br />Complete diving equipment,<br />Complete Snorkeling equipment',2);
/*!40000 ALTER TABLE `section_bodyspesification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section_charterratesinclude`
--

DROP TABLE IF EXISTS `section_charterratesinclude`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section_charterratesinclude` (
  `id` char(32) NOT NULL,
  `name` varchar(225) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `page_id` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `section_charterrates_page_id_f7d84b75_fk_page_navi` (`page_id`),
  CONSTRAINT `section_charterrates_page_id_f7d84b75_fk_page_navi` FOREIGN KEY (`page_id`) REFERENCES `page_navigation_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section_charterratesinclude`
--

LOCK TABLES `section_charterratesinclude` WRITE;
/*!40000 ALTER TABLE `section_charterratesinclude` DISABLE KEYS */;
INSERT INTO `section_charterratesinclude` VALUES ('1fe14775d6e24d84a9b1c1749c640060','<div class=\"font-weight-bold mb-5\">Full Ship Charter Rates include:</div>','2021-01-11 12:31:45.985749','2021-01-11 13:07:56.323460','a7ec6daec21f45b0b42810ea6dbb0004'),('2041266c75fd4efd83cf69f5643f7ef9','<div class=\"font-weight-bold mt-10 mb-4\">Cancellation Policy</div>','2021-01-11 12:31:45.993491','2021-01-11 13:10:25.094174','a7ec6daec21f45b0b42810ea6dbb0004'),('527be856764a43a0b6e551e7fd999b68','<div class=\"mt-5 mb-1\">Tours and Fees</div>','2021-01-11 12:31:45.988893','2021-01-11 13:09:05.230414','a7ec6daec21f45b0b42810ea6dbb0004'),('8520d72e7d9643d8a7ca179d3e47c0c0','<div class=\"mt-5 mb-1\">Water sports</div>','2021-01-11 12:31:45.987094','2021-01-11 13:08:26.681315','a7ec6daec21f45b0b42810ea6dbb0004'),('cf8e8739ace34df18bd2e497519e4f6c','<div class=\"font-weight-bold mt-10 mb-4\">Payment Terms and Conditions</div>','2021-01-11 12:31:45.992389','2021-01-11 13:10:07.456900','a7ec6daec21f45b0b42810ea6dbb0004'),('f1059a8521ad40fa8204ce02d6e9a408','<div class=\"mt-5 mb-1\">Our package does not include:</div>','2021-01-11 12:31:45.990720','2021-01-11 13:09:29.843868','a7ec6daec21f45b0b42810ea6dbb0004');
/*!40000 ALTER TABLE `section_charterratesinclude` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section_commodoresuite`
--

DROP TABLE IF EXISTS `section_commodoresuite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section_commodoresuite` (
  `id` int NOT NULL AUTO_INCREMENT,
  `icon` varchar(100) NOT NULL,
  `caption` varchar(225) NOT NULL,
  `heading` varchar(225) NOT NULL,
  `sqm` smallint unsigned NOT NULL,
  `description` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section_commodoresuite`
--

LOCK TABLES `section_commodoresuite` WRITE;
/*!40000 ALTER TABLE `section_commodoresuite` DISABLE KEYS */;
INSERT INTO `section_commodoresuite` VALUES (1,'suites-icon-columbus.png','commodore suite','Columbus',35,'Of the ship\'s 6+1 suites, the 120 sqm Admiral Suite is the largest master suite on a Phinisi cruise in the market. Being the only suite on the bridge deck, it offers full privacy, its own balcony, and a 270&ordm; view of the ocean.','2021-01-10 11:16:21.409488','2021-01-10 11:16:21.409549');
/*!40000 ALTER TABLE `section_commodoresuite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section_datacharterinclude`
--

DROP TABLE IF EXISTS `section_datacharterinclude`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section_datacharterinclude` (
  `id` int NOT NULL AUTO_INCREMENT,
  `text` longtext NOT NULL,
  `charter_rate_id` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `section_datacharteri_charter_rate_id_62ef52ac_fk_section_c` (`charter_rate_id`),
  CONSTRAINT `section_datacharteri_charter_rate_id_62ef52ac_fk_section_c` FOREIGN KEY (`charter_rate_id`) REFERENCES `section_charterratesinclude` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section_datacharterinclude`
--

LOCK TABLES `section_datacharterinclude` WRITE;
/*!40000 ALTER TABLE `section_datacharterinclude` DISABLE KEYS */;
INSERT INTO `section_datacharterinclude` VALUES (1,'All gourmet Asian Fusion and Western meals and snacks','1fe14775d6e24d84a9b1c1749c640060'),(2,'Soft drinks, juices, local beer and local wine','1fe14775d6e24d84a9b1c1749c640060'),(3,'30 minutes&rsquo; trial massage or beauty treatment per person during the cruise','1fe14775d6e24d84a9b1c1749c640060'),(4,'Personal laundry','1fe14775d6e24d84a9b1c1749c640060'),(5,'Use of equipment on board : gym (exercise bike, weights, yoga mats), board games, movie library','1fe14775d6e24d84a9b1c1749c640060'),(6,'Golf Pack (including clubs, Tee, carpet and 30 complimentary bio-degradable balls)','1fe14775d6e24d84a9b1c1749c640060'),(7,'Stand up paddle boards','8520d72e7d9643d8a7ca179d3e47c0c0'),(8,'Sea kayaks','8520d72e7d9643d8a7ca179d3e47c0c0'),(9,'Snorkeling','8520d72e7d9643d8a7ca179d3e47c0c0'),(10,'Diving equipment','8520d72e7d9643d8a7ca179d3e47c0c0'),(11,'Dive instructor','8520d72e7d9643d8a7ca179d3e47c0c0'),(12,'Dive master','8520d72e7d9643d8a7ca179d3e47c0c0'),(13,'2 tenders (2 RIB x 6M x 90HP) outboard','8520d72e7d9643d8a7ca179d3e47c0c0'),(14,'Excursions and guide fees','527be856764a43a0b6e551e7fd999b68'),(15,'Park entrance fees','527be856764a43a0b6e551e7fd999b68'),(16,'Boat clearance fees','527be856764a43a0b6e551e7fd999b68'),(17,'Cruise permits during the trip','527be856764a43a0b6e551e7fd999b68'),(18,'Fuel charges','527be856764a43a0b6e551e7fd999b68'),(19,'Airport transfers','527be856764a43a0b6e551e7fd999b68'),(20,'International and domestic airfares, excess baggage fees, passports, visas or airport taxes','f1059a8521ad40fa8204ce02d6e9a408'),(21,'Alcoholic beverages','f1059a8521ad40fa8204ce02d6e9a408'),(22,'Spa treatments','f1059a8521ad40fa8204ce02d6e9a408'),(23,'Personal expenses &amp; crew gratuities','f1059a8521ad40fa8204ce02d6e9a408'),(24,'Travel and diving insurance.','f1059a8521ad40fa8204ce02d6e9a408'),(25,'Unscheduled excursions and drone usage fee','f1059a8521ad40fa8204ce02d6e9a408'),(26,'50% deposit is required to confirm the charter','cf8e8739ace34df18bd2e497519e4f6c'),(27,'Full payment required 90 days before your departure','cf8e8739ace34df18bd2e497519e4f6c'),(28,'60 days or more prior to departure the first payment (Deposit of 50%) will be forfeited.','2041266c75fd4efd83cf69f5643f7ef9'),(29,'Less than 60 days prior to departure 100% of the total payment will be forfeited.','2041266c75fd4efd83cf69f5643f7ef9');
/*!40000 ALTER TABLE `section_datacharterinclude` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section_deckpreview`
--

DROP TABLE IF EXISTS `section_deckpreview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section_deckpreview` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(225) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `mobile_image` varchar(100) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `page_id` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `section_deckpreview_page_id_ae7b2534_fk_page_navigation_page_id` (`page_id`),
  CONSTRAINT `section_deckpreview_page_id_ae7b2534_fk_page_navigation_page_id` FOREIGN KEY (`page_id`) REFERENCES `page_navigation_page` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section_deckpreview`
--

LOCK TABLES `section_deckpreview` WRITE;
/*!40000 ALTER TABLE `section_deckpreview` DISABLE KEYS */;
INSERT INTO `section_deckpreview` VALUES (1,'Main Deck','Commodore Suite Lounge &amp; Bar Area','specification-main-deck.svg','specification-main-deck-mobile.svg','2021-01-10 14:42:50.112362','2021-01-10 14:42:50.112435','c86ac1cc10394126a14de829c97a1f14'),(2,'Lower Deck','Deluxe Staterooms','specification-lower-deck.svg','specification-lower-deck-mobile.svg','2021-01-10 14:42:50.137888','2021-01-10 14:42:50.137959','c86ac1cc10394126a14de829c97a1f14'),(3,'Bridge Deck','Admiral Suite','specification-bridge-deck.svg','specification-bridge-deck-mobile.svg','2021-01-10 14:42:50.139718','2021-01-10 14:42:50.139777','c86ac1cc10394126a14de829c97a1f14'),(4,'Golf Deck','Equatorial Golf','specification-golf-deck.svg','specification-golf-deck-mobile.svg','2021-01-10 14:42:50.141073','2021-01-10 14:42:50.141126','c86ac1cc10394126a14de829c97a1f14');
/*!40000 ALTER TABLE `section_deckpreview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section_decktechnical`
--

DROP TABLE IF EXISTS `section_decktechnical`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section_decktechnical` (
  `id` int NOT NULL AUTO_INCREMENT,
  `heading` varchar(225) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section_decktechnical`
--

LOCK TABLES `section_decktechnical` WRITE;
/*!40000 ALTER TABLE `section_decktechnical` DISABLE KEYS */;
INSERT INTO `section_decktechnical` VALUES (1,'Decks and Technical Detail','The MAJ Oceanic is a motorsailer, handcrafted in Bira, Sulawesi, in the traditional style of a Phinisi. It measures 47 meters in length overall with 10,5 meters beam.','specification-decks-technical-detail.png','2021-01-10 14:09:19.142326','2021-01-10 14:09:19.142357');
/*!40000 ALTER TABLE `section_decktechnical` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section_deluxestateroom`
--

DROP TABLE IF EXISTS `section_deluxestateroom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section_deluxestateroom` (
  `id` int NOT NULL AUTO_INCREMENT,
  `caption` varchar(225) NOT NULL,
  `heading` varchar(225) NOT NULL,
  `sqm` smallint unsigned NOT NULL,
  `description` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section_deluxestateroom`
--

LOCK TABLES `section_deluxestateroom` WRITE;
/*!40000 ALTER TABLE `section_deluxestateroom` DISABLE KEYS */;
INSERT INTO `section_deluxestateroom` VALUES (1,'deluxe staterooms','F. Magellan | Marcopolo |<br />Vasco da Gama | James Cook',25,'A space for socializing, not just sleeping. Multi-jet shower and a well-appointed open living area with chaise, built-in dresser, and writing desk.','2021-01-10 11:23:09.440417','2021-01-10 11:23:09.440452');
/*!40000 ALTER TABLE `section_deluxestateroom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section_destination`
--

DROP TABLE IF EXISTS `section_destination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section_destination` (
  `id` char(32) NOT NULL,
  `heading` varchar(225) NOT NULL,
  `description` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `page_id` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `section_destination_page_id_06a73223_fk_page_navigation_page_id` (`page_id`),
  CONSTRAINT `section_destination_page_id_06a73223_fk_page_navigation_page_id` FOREIGN KEY (`page_id`) REFERENCES `page_navigation_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section_destination`
--

LOCK TABLES `section_destination` WRITE;
/*!40000 ALTER TABLE `section_destination` DISABLE KEYS */;
INSERT INTO `section_destination` VALUES ('04800626f07f4b839aa38b581a0a2919','','Manta rays, sea turtles and bottle nose dolphins are just three of more than 1000 species of marine animals that call Komodo National Park home. A UNESCO World Heritage Site, the park stretches a total area of 1,733 square kilometers, encompassing three main islands&mdash;Komodo, Padar, and Rinca&mdash;and 26 smaller islets.','2021-01-11 05:38:11.617550','2021-01-11 05:38:11.617574','999cdc3bd0bd4a25a059fab8dd357472'),('22392842966d4ed8addcee4f505d9ed4','','In 2012, a world-record 374 fish species in one dive was documented. Raja Ampat&rsquo;s landscapes resemble something out of Jurassic Park with dense tropical jungle giving way to hidden waterfalls and jutting limestone cliffs. Prehistoric wall paintings can be found alongside cave bunkers and seabed wreckage from WW2. Birdsong from parrots, hornbills and birds-of-paradise are your soundtrack as you paddle through mangroves on a kayak, stroll on beaches fringed by thick tropical jungle, or meet the indigenous tribes.','2021-01-11 06:19:42.301138','2021-01-11 06:19:42.301165','dbde797be85245f587a65fcf2514b0ae'),('2e3c07dbf5a948df85507f7f58e592e0','The Last Paradise','The Spice Islands were once the center of colonial crossfire as the European powers fought for supremacy over the region&rsquo;s supply of nutmeg, cloves, and mace. This legacy has left several impressive buildings like the governor&rsquo;s house on Banda Neira and a few forts which are well worth visiting.','2021-01-11 06:33:22.384489','2021-01-11 06:33:22.384520','6e52f75bff574318b1a45f5565b2580b'),('3806578893504beb853303c58a48678e','','Komodo is the common term used for a primarily volcanic chain of islands in the south east of Indonesia. In fact, this is more accurately made up of three main islands: Komodo Island, Rinca Island, and Padar Island that together with a few other islets form over 2,000 square kilometers of protected national parkland.<br /><br />Dragons and diving are the two main reasons people decide to charter a liveaboard in Komodo. The infamous Komodo dragon, the biggest reptile on earth which can reach weights of up to 70 kilograms and grow up to 3 meters in length roams freely across the region.','2021-01-11 05:47:21.415037','2021-01-11 05:47:21.415064','999cdc3bd0bd4a25a059fab8dd357472'),('56ccc837ce384ce9924f316fa39f41a5','','Whether you enjoy scuba diving or snorkelling, exploring the nautical delights of the region is a must. Plankton rich waters and rushing currents attract giant pelagics, sharks, turtles, and manta rays while hundreds of varieties of coral thrive providing homes for an impressive array of macro life. The best time to cruise Komodo is between May and October.','2021-01-11 06:08:30.714869','2021-01-11 06:08:30.714896','999cdc3bd0bd4a25a059fab8dd357472'),('696d49821b844610bf1a2ae54a6f02df','','Take a trip to Pulau Banda Neira and Pulau Banda Besar form a beautiful crescent around a picture book volcano called Gunung Api. Diving on the slopes of this volcano is particularly exceptional if you consider that an eruption in 1988 devasted the coral here and within a short space of time has sprung back up again. Scientists think this is something to do with the lava but are still to figure out precisely what.<br /><br />Chartering a yacht in the Banda Islands is the best way to get the most out of your trip because this region is all about extensive unspoiled coral reefs and their attendant marine species. Discover gorgeous Gregorian fans, chimneys and swim-throughs, giant pelagics, sharks, turtles, manta rays, and a myriad of macro life.','2021-01-11 06:35:59.556457','2021-01-11 06:35:59.556479','6e52f75bff574318b1a45f5565b2580b'),('73345e1d3dc748538321338c2365c9d5','Home of The Dragons','Chartering a boat in Komodo easily solves the challenge of moving between islands and finding accommodation, so you get to enjoy the incredible attractions of the region both above and below the waves.','2021-01-11 05:41:07.511756','2021-01-11 05:41:07.511794','999cdc3bd0bd4a25a059fab8dd357472'),('8f97b794b89745ee8384d4da6f360e7d','','Cruise the Spice Islands, also referred to as the Banda Islands, to discover the rich colonial history, untouched coral reefs and pristine white sand beaches. This destination is as remote as it is beautiful.','2021-01-11 06:32:52.241943','2021-01-11 06:32:52.241974','6e52f75bff574318b1a45f5565b2580b'),('b715ae53857d4af69066f845b723fead','The Last Paradise','More than 1,500 wild islands, cays and shoals make up Raja Ampat&rsquo;s 40,000 square kilometre area, which lies on northwest tip of the Bird&rsquo;s Head Peninsula in Papua (New Guinea). Underwater, the marine habitats are among the most biodiverse in the world with 1,200 species of fish and 550 species of hard and soft coral. Giant manta rays, black and white-tipped reef sharks, wobbegong sharks, sea turtles, pygmy seahorses, and schools of barracuda and grouper are just a few of the creatures you can encounter here.','2021-01-11 06:16:50.746789','2021-01-11 06:16:50.746812','dbde797be85245f587a65fcf2514b0ae'),('ec1e4c65aaf7469ba96dead5f1a66e0a','','The name Raja Ampat&mdash;literally &lsquo;The Four Kings&rsquo;&mdash;speaks of the mysterious folklore surrounding Indonesia&rsquo;s most far-flung cluster of islands. Local stories tell of a woman who finds seven mysterious eggs, four of which hatched to become the kings that reigned over the archipelago&rsquo;s four main islands, Waigo, Salawati, Batanta, and Misool. It&rsquo;s said that the other three were not so lucky, and become a ghost, a woman and a stone.','2021-01-11 06:15:37.310769','2021-01-11 06:15:37.310797','dbde797be85245f587a65fcf2514b0ae');
/*!40000 ALTER TABLE `section_destination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section_destinationgallery`
--

DROP TABLE IF EXISTS `section_destinationgallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section_destinationgallery` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `mobile_image` varchar(100) DEFAULT NULL,
  `destination_id` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `section_destinationg_destination_id_d0166503_fk_section_d` (`destination_id`),
  CONSTRAINT `section_destinationg_destination_id_d0166503_fk_section_d` FOREIGN KEY (`destination_id`) REFERENCES `section_destination` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section_destinationgallery`
--

LOCK TABLES `section_destinationgallery` WRITE;
/*!40000 ALTER TABLE `section_destinationgallery` DISABLE KEYS */;
INSERT INTO `section_destinationgallery` VALUES (1,'komodo-des-1.png','','04800626f07f4b839aa38b581a0a2919'),(2,'komodo-des-2.png','','73345e1d3dc748538321338c2365c9d5'),(3,'komodo-des-3-1.png','komodo-des-3-1-mobile.png','3806578893504beb853303c58a48678e'),(4,'komodo-des-3-2.png','komodo-des-3-2_LxImutj.png','3806578893504beb853303c58a48678e'),(5,'komodo-des-3-3.png','komodo-des-3-3_x83rVBi.png','3806578893504beb853303c58a48678e'),(6,'komodo-des-4.png','','56ccc837ce384ce9924f316fa39f41a5'),(7,'raja-ampat-des-1.png','','ec1e4c65aaf7469ba96dead5f1a66e0a'),(8,'raja-ampat-des-2.png','','b715ae53857d4af69066f845b723fead'),(9,'raja-ampat-des-3-1.png','raja-ampat-des-3-1-mobile.png','22392842966d4ed8addcee4f505d9ed4'),(10,'raja-ampat-des-3-2.png','raja-ampat-des-3-2_wIILRrl.png','22392842966d4ed8addcee4f505d9ed4'),(11,'raja-ampat-des-3-3.png','raja-ampat-des-3-3_Ns1IjKT.png','22392842966d4ed8addcee4f505d9ed4'),(12,'spice-islands-des-1.png','','8f97b794b89745ee8384d4da6f360e7d'),(13,'spice-islands-des-2.png','','2e3c07dbf5a948df85507f7f58e592e0'),(14,'spice-islands-des-3-1.png','spice-islands-des-3-1-mobile.png','696d49821b844610bf1a2ae54a6f02df'),(15,'spice-islands-des-3-2.png','spice-islands-des-3-2_YCJGY6G.png','696d49821b844610bf1a2ae54a6f02df'),(16,'spice-islands-des-3-3.png','spice-islands-des-3-3_c4CGHXm.png','696d49821b844610bf1a2ae54a6f02df');
/*!40000 ALTER TABLE `section_destinationgallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section_dining`
--

DROP TABLE IF EXISTS `section_dining`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section_dining` (
  `id` int NOT NULL AUTO_INCREMENT,
  `caption` varchar(225) NOT NULL,
  `heading` varchar(225) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `to` varchar(225) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section_dining`
--

LOCK TABLES `section_dining` WRITE;
/*!40000 ALTER TABLE `section_dining` DISABLE KEYS */;
INSERT INTO `section_dining` VALUES (4,'Dining','The finest at sea','Menus aboard The MAJ Oceanic pay homage to the regions where we sail while ensuring tremendous variety. You and our chef can also craft a bespoke menu inspired by a palate or a special moment. It is then prepared and served in a location of your choosing.','home-dining_cF6CO9x.png','/contact-us','2021-01-08 09:24:44.240287','2021-01-08 09:24:44.240325');
/*!40000 ALTER TABLE `section_dining` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section_facility`
--

DROP TABLE IF EXISTS `section_facility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section_facility` (
  `id` char(32) NOT NULL,
  `caption` varchar(225) NOT NULL,
  `heading` varchar(225) NOT NULL,
  `description` longtext NOT NULL,
  `reverse` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `page_id` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `section_facility_page_id_97b5ac99_fk_page_navigation_page_id` (`page_id`),
  CONSTRAINT `section_facility_page_id_97b5ac99_fk_page_navigation_page_id` FOREIGN KEY (`page_id`) REFERENCES `page_navigation_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section_facility`
--

LOCK TABLES `section_facility` WRITE;
/*!40000 ALTER TABLE `section_facility` DISABLE KEYS */;
INSERT INTO `section_facility` VALUES ('03188252bd164574b0099da72f1e336b','fitness & wellness','Pastimes for Downtime','Unwind and take the stress away without having to leave the boat. Relax with locally-inspired spa treatments. Practice yoga to the soothing sound of ocean waves. Experience the one-of-a-kind equatorial golf on the top deck of the ship, with the ocean as your fairway. The game\'s special biodegradable balls contain fish food, improving marine sustainability and biodiversity.',1,'2021-01-11 07:48:19.807648','2021-01-11 07:54:07.809713','79f0bc3693584f46935d38295ce839c0'),('b57e8df465754721a826e5d150f2d0ac','watersports','Ride the waves','Snorkel in some of the densest and most diverse marine habitats in the world. Kayak and paddle into the sunset. Ride your jet-ski aimlessly and then stop by a remote, pristine beach to take a breather by simply watching the time go by.',0,'2021-01-11 07:48:19.806028','2021-01-11 07:51:23.994554','79f0bc3693584f46935d38295ce839c0'),('bbac6578d5e34d2680304d871a4703cf','exploration','Port of call: adventure','Immerse yourself in authentic and engaging travel experiences designed to deepen your understanding of the spots you visit. Dramatic landscape of fascinating volcanic structures, pink sand beaches and underwater canyons full of soft corals is a wonderful contrast to be included in your cruise itinerary.',0,'2021-01-11 07:48:19.809437','2021-01-11 07:56:17.500372','79f0bc3693584f46935d38295ce839c0');
/*!40000 ALTER TABLE `section_facility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section_facilitygallery`
--

DROP TABLE IF EXISTS `section_facilitygallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section_facilitygallery` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `facility_id` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `section_facilitygall_facility_id_72f69a30_fk_section_f` (`facility_id`),
  CONSTRAINT `section_facilitygall_facility_id_72f69a30_fk_section_f` FOREIGN KEY (`facility_id`) REFERENCES `section_facility` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section_facilitygallery`
--

LOCK TABLES `section_facilitygallery` WRITE;
/*!40000 ALTER TABLE `section_facilitygallery` DISABLE KEYS */;
INSERT INTO `section_facilitygallery` VALUES (1,'activites-watersports-1.png','b57e8df465754721a826e5d150f2d0ac'),(2,'activites-watersports-2.png','b57e8df465754721a826e5d150f2d0ac'),(3,'activites-watersports-3.png','b57e8df465754721a826e5d150f2d0ac'),(4,'activites-fitness-wellness-1.png','03188252bd164574b0099da72f1e336b'),(5,'activites-fitness-wellness-2.png','03188252bd164574b0099da72f1e336b'),(6,'activites-fitness-wellness-3.png','03188252bd164574b0099da72f1e336b'),(7,'activites-exploration-1.png','bbac6578d5e34d2680304d871a4703cf'),(8,'activites-exploration-2.png','bbac6578d5e34d2680304d871a4703cf'),(9,'activites-exploration-3.png','bbac6578d5e34d2680304d871a4703cf');
/*!40000 ALTER TABLE `section_facilitygallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section_galleryadmiralsuite`
--

DROP TABLE IF EXISTS `section_galleryadmiralsuite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section_galleryadmiralsuite` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `admiral_suite_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `section_galleryadmir_admiral_suite_id_f69283a4_fk_section_a` (`admiral_suite_id`),
  CONSTRAINT `section_galleryadmir_admiral_suite_id_f69283a4_fk_section_a` FOREIGN KEY (`admiral_suite_id`) REFERENCES `section_admiralsuite` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section_galleryadmiralsuite`
--

LOCK TABLES `section_galleryadmiralsuite` WRITE;
/*!40000 ALTER TABLE `section_galleryadmiralsuite` DISABLE KEYS */;
INSERT INTO `section_galleryadmiralsuite` VALUES (9,'suites-admiral-suite-1_4LAQzlM.png',3),(10,'suites-admiral-suite-2_s4GqVDg.png',3),(11,'suites-admiral-suite-3_fcxIzsZ.png',3),(12,'suites-admiral-suite-4_nFiC5vy.png',3);
/*!40000 ALTER TABLE `section_galleryadmiralsuite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section_gallerycommodoresuite`
--

DROP TABLE IF EXISTS `section_gallerycommodoresuite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section_gallerycommodoresuite` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `commodore_suite_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `section_gallerycommo_commodore_suite_id_09393505_fk_section_c` (`commodore_suite_id`),
  CONSTRAINT `section_gallerycommo_commodore_suite_id_09393505_fk_section_c` FOREIGN KEY (`commodore_suite_id`) REFERENCES `section_commodoresuite` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section_gallerycommodoresuite`
--

LOCK TABLES `section_gallerycommodoresuite` WRITE;
/*!40000 ALTER TABLE `section_gallerycommodoresuite` DISABLE KEYS */;
INSERT INTO `section_gallerycommodoresuite` VALUES (1,'suites-commodore-suite-1.png',1),(2,'suites-commodore-suite-2.png',1),(3,'suites-commodore-suite-3.png',1),(4,'suites-admiral-suite-4_hvZE6l6.png',1);
/*!40000 ALTER TABLE `section_gallerycommodoresuite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section_gallerydeluxestateroom`
--

DROP TABLE IF EXISTS `section_gallerydeluxestateroom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section_gallerydeluxestateroom` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `deluxe_stateroom_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `section_gallerydelux_deluxe_stateroom_id_1fd55d73_fk_section_d` (`deluxe_stateroom_id`),
  CONSTRAINT `section_gallerydelux_deluxe_stateroom_id_1fd55d73_fk_section_d` FOREIGN KEY (`deluxe_stateroom_id`) REFERENCES `section_deluxestateroom` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section_gallerydeluxestateroom`
--

LOCK TABLES `section_gallerydeluxestateroom` WRITE;
/*!40000 ALTER TABLE `section_gallerydeluxestateroom` DISABLE KEYS */;
INSERT INTO `section_gallerydeluxestateroom` VALUES (1,'suites-deluxe-staterooms-1.png',1);
/*!40000 ALTER TABLE `section_gallerydeluxestateroom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section_headerfullchapter`
--

DROP TABLE IF EXISTS `section_headerfullchapter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section_headerfullchapter` (
  `id` int NOT NULL AUTO_INCREMENT,
  `text` varchar(225) NOT NULL,
  `value` varchar(225) NOT NULL,
  `align` varchar(6) NOT NULL,
  `table_full_chapter_id` int NOT NULL,
  `width` smallint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `section_headerfullch_table_full_chapter_i_7720808d_fk_section_t` (`table_full_chapter_id`),
  CONSTRAINT `section_headerfullch_table_full_chapter_i_7720808d_fk_section_t` FOREIGN KEY (`table_full_chapter_id`) REFERENCES `section_tablefullchapter` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section_headerfullchapter`
--

LOCK TABLES `section_headerfullchapter` WRITE;
/*!40000 ALTER TABLE `section_headerfullchapter` DISABLE KEYS */;
INSERT INTO `section_headerfullchapter` VALUES (1,'Full Charter Rates per Night (USD)','headline','start',1,NULL),(2,'Sailing Area','sailing_area','start',1,NULL),(3,'Minimum Nights','minimum_nights','center',1,125),(4,'2020','rates_per_night[0].price','center',1,NULL),(5,'2021','rates_per_night[1].price','center',1,NULL);
/*!40000 ALTER TABLE `section_headerfullchapter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section_headerspesification`
--

DROP TABLE IF EXISTS `section_headerspesification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section_headerspesification` (
  `id` int NOT NULL AUTO_INCREMENT,
  `text` varchar(225) NOT NULL,
  `value` varchar(225) NOT NULL,
  `align` varchar(6) NOT NULL,
  `table_spesification_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `section_headerspesif_table_spesification__49ad8054_fk_section_t` (`table_spesification_id`),
  CONSTRAINT `section_headerspesif_table_spesification__49ad8054_fk_section_t` FOREIGN KEY (`table_spesification_id`) REFERENCES `section_tablespesification` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section_headerspesification`
--

LOCK TABLES `section_headerspesification` WRITE;
/*!40000 ALTER TABLE `section_headerspesification` DISABLE KEYS */;
INSERT INTO `section_headerspesification` VALUES (3,'','name','start',2),(4,'','value','start',2);
/*!40000 ALTER TABLE `section_headerspesification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section_hero`
--

DROP TABLE IF EXISTS `section_hero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section_hero` (
  `id` char(32) NOT NULL,
  `heading` varchar(200) NOT NULL,
  `image` varchar(100) NOT NULL,
  `mobile_image` varchar(100) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section_hero`
--

LOCK TABLES `section_hero` WRITE;
/*!40000 ALTER TABLE `section_hero` DISABLE KEYS */;
INSERT INTO `section_hero` VALUES ('10019c22eed54aa39bdd50edb942b6f0','Specification','spesification-hero.png','spesification-hero-mobile.png','2021-01-10 14:06:56.627797','2021-01-10 14:06:56.627828'),('1b9d596575db43fb8cdf0c2a23fe239d','Raja Ampat','raja-ampat-hero.png','raja-ampat-hero-mobile.png','2021-01-11 06:13:55.430585','2021-01-11 06:13:55.430615'),('4295efb8f7904a02aa80b57faabfbe5c','Komodo','komodo-hero.png','komodo-hero-mobile.png','2021-01-11 05:00:43.049339','2021-01-11 05:00:43.049368'),('48324f71064646dd96b894c405444c2a','Spice Islands','spice-islands-hero.png','spice-islands-hero-mobile.png','2021-01-11 06:31:09.175951','2021-01-11 06:31:09.175978'),('6138cff68a074b57a6c367cda87139f9','Activites','activites-hero.png','','2021-01-11 07:43:16.539876','2021-01-11 07:43:16.539909'),('7760c802089449b4a1f742756ae2cb7b','The Vessel','the-vessel-hero.png','','2021-01-10 09:41:22.985398','2021-01-10 09:41:22.985464'),('af26e5b813474246832449b399f7422a','Voyages','voyages-hero.png','','2021-01-11 04:11:52.038123','2021-01-11 04:11:52.038166'),('c7026b0e23434a3dac980750e25e713e','Suites &amp; Staterooms','suites-hero.png','suites-hero-mobile.png','2021-01-11 06:47:59.969616','2021-01-11 06:47:59.969648'),('d614b5ce60914d86b65eeca4faca3abb','The future of travel, <br />on traditions of the past.','hero-home.png','hero-home_1IFWzQe.png','2021-01-08 04:58:40.794390','2021-01-11 13:20:24.343581');
/*!40000 ALTER TABLE `section_hero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section_icondeluxestateroom`
--

DROP TABLE IF EXISTS `section_icondeluxestateroom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section_icondeluxestateroom` (
  `id` int NOT NULL AUTO_INCREMENT,
  `icon` varchar(100) NOT NULL,
  `deluxe_stateroom_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `section_icondeluxest_deluxe_stateroom_id_1a7aa617_fk_section_d` (`deluxe_stateroom_id`),
  CONSTRAINT `section_icondeluxest_deluxe_stateroom_id_1a7aa617_fk_section_d` FOREIGN KEY (`deluxe_stateroom_id`) REFERENCES `section_deluxestateroom` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section_icondeluxestateroom`
--

LOCK TABLES `section_icondeluxestateroom` WRITE;
/*!40000 ALTER TABLE `section_icondeluxestateroom` DISABLE KEYS */;
INSERT INTO `section_icondeluxestateroom` VALUES (1,'suites-icon-ferdinand-magellan.png',1),(2,'suites-icon-marco-polo.png',1),(3,'suites-icon-vasco-da-gamma.png',1),(4,'suites-icon-james-cook.png',1);
/*!40000 ALTER TABLE `section_icondeluxestateroom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section_instagram`
--

DROP TABLE IF EXISTS `section_instagram`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section_instagram` (
  `id` int NOT NULL AUTO_INCREMENT,
  `heading` varchar(225) NOT NULL,
  `access_token` varchar(225) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section_instagram`
--

LOCK TABLES `section_instagram` WRITE;
/*!40000 ALTER TABLE `section_instagram` DISABLE KEYS */;
INSERT INTO `section_instagram` VALUES (1,'Follow us on Instagram','IGQVJXT3NVR21Ra1JpdlluTUQ3RmhhWjY4NWFFUXRYSzAxWklRSFgtODVOaktlNTRfRk4wdmE3cTB6aXBSaThwcXE2LWNXdXBwdWpfQ1ZATd25kR2dKMmM2dHByYzRfeDV5MktST2hFMGN0aEVpSmhmOQZDZD');
/*!40000 ALTER TABLE `section_instagram` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section_instagramtestimony`
--

DROP TABLE IF EXISTS `section_instagramtestimony`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section_instagramtestimony` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(225) NOT NULL,
  `link` varchar(225) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section_instagramtestimony`
--

LOCK TABLES `section_instagramtestimony` WRITE;
/*!40000 ALTER TABLE `section_instagramtestimony` DISABLE KEYS */;
INSERT INTO `section_instagramtestimony` VALUES (1,'doyoutravel','https://www.instagram.com/doyoutravel','2021-01-11 04:49:20.883003'),(2,'gypsea_lust','https://www.instagram.com/gypsea_lust','2021-01-11 08:03:42.137473');
/*!40000 ALTER TABLE `section_instagramtestimony` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section_intro`
--

DROP TABLE IF EXISTS `section_intro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section_intro` (
  `id` char(32) NOT NULL,
  `heading` varchar(225) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `youtube_id` varchar(100) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section_intro`
--

LOCK TABLES `section_intro` WRITE;
/*!40000 ALTER TABLE `section_intro` DISABLE KEYS */;
INSERT INTO `section_intro` VALUES ('13221f4953be43c7b1eec03827841d87','Traces of the ancient<br class=\"hidden-sm-and-up\" />maritime glory<br class=\"hidden-xs-only\" />with touches of<br class=\"hidden-sm-and-up\" />day comfort','The MAJ Oceanic is a traditional handcrafted two-masted Phinisi ecoyacht with 6+1<br />resort-standard suites, outfitted with modern design and technology.<br /><br />Learn, feel, understand, taste, and touch new things while awakening your inner explorer. Get up close with the world\'s largest lizard species. Huddle together along the railings to spot nature\'s great displays. Enjoy seafood the Jack Sparrow way. Or practice yoga to the sound of waves.<br /><br />If to travel is to live, then a voyage aboard The MAJ Oceanic<br class=\"hidden-xs-only\" />might be the life you never knew existed.','intro-hero.png','','2021-01-08 05:07:21.050349','2021-01-08 05:07:21.050496'),('194ac674acfd42f2a4b0c53001e78680','Locally-crafted, world-inspired','Upping the suite game in the luxury Pinisi market, there are 6+1 cabins specially-designed by a group of land-based designers to give a modern look that\'s a floating reflection of a world-class resort.','','','2021-01-11 06:49:09.746992','2021-01-11 06:49:09.747045'),('366b4b47a8b14d0396af5c220b71e79b','Rates &amp; Schedule','The MAJ Oceanic will sail all year round to destinations depending on seasons and winds. Typically, The MAJ Oceanic sails to Komodo from May to October, the Banda / Spice Islands in October/November and in April/May and Raja Ampat from Mid-November to April. Besides, we offer tailor-made routes and voyages in remote locations, designed especially with specific places or activities.','','','2021-01-11 12:12:48.478478','2021-01-11 12:12:48.478551'),('5e2a184bb631467a9091490e9e3384ea','So much to explore, so little time','Whether you\'re looking for stillness or some thrills, reconnect with your true rhythm with a wide array of choices for exploration, entertainment, and relaxation.','','','2021-01-11 07:43:53.107161','2021-01-11 07:43:53.107183'),('ce217190c7444a509f98d8b0eaf7626d','Inspired by centuries of<br class=\"hidden-sm-and-up\" />marine wisdom','Sailing on a modern-take of the Phinisi is the best way to enjoy the beauty of the Indonesian archipelago. An icon of Indonesia\'s seafaring tradition, the Phinisi boat-building is recognized by UNESCO as a Masterpiece of Oral and Intangible Heritage of Humanity.','','TnUCHmKvu4Q','2021-01-10 09:44:58.169767','2021-01-10 09:44:58.169794');
/*!40000 ALTER TABLE `section_intro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section_itinerary`
--

DROP TABLE IF EXISTS `section_itinerary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section_itinerary` (
  `id` int NOT NULL AUTO_INCREMENT,
  `caption` varchar(225) NOT NULL,
  `image` varchar(100) NOT NULL,
  `heading` varchar(225) NOT NULL,
  `description` longtext NOT NULL,
  `to` varchar(225) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section_itinerary`
--

LOCK TABLES `section_itinerary` WRITE;
/*!40000 ALTER TABLE `section_itinerary` DISABLE KEYS */;
INSERT INTO `section_itinerary` VALUES (1,'itineraries','voyages-itineraries.png','As bespoke as it gets','The MAJ Oceanic is based in Labuan Bajo, Komodo National Park (May-October), Raja Ampat (November-April) and sail through Spice Islands, Banda in between. Trips are tailored to guests\' preferred itineraries. Full vessel private chartering are available.','/rates-and-schedule');
/*!40000 ALTER TABLE `section_itinerary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section_menusuitesroom`
--

DROP TABLE IF EXISTS `section_menusuitesroom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section_menusuitesroom` (
  `id` int NOT NULL AUTO_INCREMENT,
  `admiral_id` int NOT NULL,
  `commodore_id` int NOT NULL,
  `deluxe_id` int NOT NULL,
  `suites_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admiral_id` (`admiral_id`),
  UNIQUE KEY `commodore_id` (`commodore_id`),
  UNIQUE KEY `deluxe_id` (`deluxe_id`),
  KEY `section_menusuitesro_suites_id_0577f34e_fk_section_s` (`suites_id`),
  CONSTRAINT `section_menusuitesro_admiral_id_ec1b23f2_fk_section_a` FOREIGN KEY (`admiral_id`) REFERENCES `section_admiralsuite` (`id`),
  CONSTRAINT `section_menusuitesro_commodore_id_34e722de_fk_section_c` FOREIGN KEY (`commodore_id`) REFERENCES `section_commodoresuite` (`id`),
  CONSTRAINT `section_menusuitesro_deluxe_id_2c7846cf_fk_section_d` FOREIGN KEY (`deluxe_id`) REFERENCES `section_deluxestateroom` (`id`),
  CONSTRAINT `section_menusuitesro_suites_id_0577f34e_fk_section_s` FOREIGN KEY (`suites_id`) REFERENCES `section_suitesandstateroom` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section_menusuitesroom`
--

LOCK TABLES `section_menusuitesroom` WRITE;
/*!40000 ALTER TABLE `section_menusuitesroom` DISABLE KEYS */;
INSERT INTO `section_menusuitesroom` VALUES (1,3,1,1,1);
/*!40000 ALTER TABLE `section_menusuitesroom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section_occasions`
--

DROP TABLE IF EXISTS `section_occasions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section_occasions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `caption` varchar(225) NOT NULL,
  `heading` varchar(225) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `to` varchar(225) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section_occasions`
--

LOCK TABLES `section_occasions` WRITE;
/*!40000 ALTER TABLE `section_occasions` DISABLE KEYS */;
INSERT INTO `section_occasions` VALUES (1,'Occasions','Convene like ancient seamen','Upgrade your party to a special bespoke trip that will take you deeper into the hidden beaches, and closer to the elements than any cruise ships or liveaboards.','home-occasions.png','/contact-us','2021-01-08 09:28:11.995343','2021-01-08 09:28:11.995420');
/*!40000 ALTER TABLE `section_occasions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section_pernight`
--

DROP TABLE IF EXISTS `section_pernight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section_pernight` (
  `id` int NOT NULL AUTO_INCREMENT,
  `year` smallint unsigned DEFAULT NULL,
  `price` decimal(19,0) DEFAULT NULL,
  `body_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `section_pernight_body_id_7c1fc811_fk_section_bodyfullchapter_id` (`body_id`),
  CONSTRAINT `section_pernight_body_id_7c1fc811_fk_section_bodyfullchapter_id` FOREIGN KEY (`body_id`) REFERENCES `section_bodyfullchapter` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section_pernight`
--

LOCK TABLES `section_pernight` WRITE;
/*!40000 ALTER TABLE `section_pernight` DISABLE KEYS */;
INSERT INTO `section_pernight` VALUES (1,2020,NULL,1),(2,2021,9500,1),(3,2020,NULL,2),(4,2021,9000,2),(5,2020,NULL,3),(6,2021,9000,3),(7,2020,NULL,4),(8,2021,9000,4),(9,2020,NULL,5),(10,2021,9000,5),(11,2020,NULL,6),(12,2021,9000,6),(13,2020,NULL,7),(14,2021,9500,7),(15,2020,NULL,8),(16,2021,9500,8),(17,2020,8500,9),(18,2021,10000,9),(19,2020,8500,10),(20,2021,9499,10),(21,2020,8500,11),(22,2021,9500,11),(23,2020,8500,12),(24,2021,9500,12),(25,2020,9000,13),(26,2021,10500,13),(27,2020,9500,14),(28,2021,10500,14);
/*!40000 ALTER TABLE `section_pernight` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section_personil`
--

DROP TABLE IF EXISTS `section_personil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section_personil` (
  `id` char(32) NOT NULL,
  `title` varchar(225) NOT NULL,
  `name` varchar(225) NOT NULL,
  `image` varchar(100) NOT NULL,
  `team_id` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `section_personil_team_id_dbf7fc4d_fk_section_team_id` (`team_id`),
  CONSTRAINT `section_personil_team_id_dbf7fc4d_fk_section_team_id` FOREIGN KEY (`team_id`) REFERENCES `section_team` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section_personil`
--

LOCK TABLES `section_personil` WRITE;
/*!40000 ALTER TABLE `section_personil` DISABLE KEYS */;
INSERT INTO `section_personil` VALUES ('05b6280ade36470aa48d0aa801148168','First Officer','Syamsudin','vessel-teams-syamsudin.png','378eabb6dc8f4a61bb0c4d7c71a54ccc'),('60799f04b28a469fbdfc110fea2f0ee7','Head Chef','Sumarna','vessel-teams-sumarna.png','378eabb6dc8f4a61bb0c4d7c71a54ccc'),('64a2cc4356d547f1a773499d91994c01','Captain','Yunus Ardiyamsyah','vessel-teams-yunus.png','378eabb6dc8f4a61bb0c4d7c71a54ccc'),('bea2e4796f6448a6937a8f0fde3bb60b','Cruise Director','Christophe Beltrando','vessel-teams-christophe-beltrando.png','378eabb6dc8f4a61bb0c4d7c71a54ccc');
/*!40000 ALTER TABLE `section_personil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section_suitesandstateroom`
--

DROP TABLE IF EXISTS `section_suitesandstateroom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section_suitesandstateroom` (
  `id` int NOT NULL AUTO_INCREMENT,
  `caption` varchar(255) NOT NULL,
  `heading` varchar(225) NOT NULL,
  `to` varchar(225) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section_suitesandstateroom`
--

LOCK TABLES `section_suitesandstateroom` WRITE;
/*!40000 ALTER TABLE `section_suitesandstateroom` DISABLE KEYS */;
INSERT INTO `section_suitesandstateroom` VALUES (1,'suites & staterooms','Your private sanctuary at sea','/suites-and-staterooms');
/*!40000 ALTER TABLE `section_suitesandstateroom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section_sustainability`
--

DROP TABLE IF EXISTS `section_sustainability`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section_sustainability` (
  `id` char(32) NOT NULL,
  `caption` varchar(100) NOT NULL,
  `heading` varchar(225) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `to` varchar(100) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section_sustainability`
--

LOCK TABLES `section_sustainability` WRITE;
/*!40000 ALTER TABLE `section_sustainability` DISABLE KEYS */;
INSERT INTO `section_sustainability` VALUES ('0f55fac882464cfbb708742c03f304ec','Sustainability','After all, the ocean is our home','We have profound responsibility in preserving and protecting the places and communities we visit. More than anything else, we take care of the environment in which we operate, the guests who cruise with us, and the people who work with us.','vessel-sustainability.png','/contact-us','2021-01-10 12:34:37.930646','2021-01-10 12:34:37.930691');
/*!40000 ALTER TABLE `section_sustainability` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section_tablefullchapter`
--

DROP TABLE IF EXISTS `section_tablefullchapter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section_tablefullchapter` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `extra_guest` longtext NOT NULL,
  `relocation_fee` varchar(225) NOT NULL,
  `ship_capacity` varchar(225) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section_tablefullchapter`
--

LOCK TABLES `section_tablefullchapter` WRITE;
/*!40000 ALTER TABLE `section_tablefullchapter` DISABLE KEYS */;
INSERT INTO `section_tablefullchapter` VALUES (1,'2021-01-11 09:26:44.632991','2021-01-11 09:37:16.551391','Adult + 500 USD per night / Children up to 12 Y.O. + 350 USD per night','2000 USD per day','6 +1 Cabins, 14 passengers');
/*!40000 ALTER TABLE `section_tablefullchapter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section_tablespesification`
--

DROP TABLE IF EXISTS `section_tablespesification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section_tablespesification` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section_tablespesification`
--

LOCK TABLES `section_tablespesification` WRITE;
/*!40000 ALTER TABLE `section_tablespesification` DISABLE KEYS */;
INSERT INTO `section_tablespesification` VALUES (2,'2021-01-10 14:53:18.237962','2021-01-10 14:53:18.237997');
/*!40000 ALTER TABLE `section_tablespesification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section_tabs`
--

DROP TABLE IF EXISTS `section_tabs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section_tabs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `heading` varchar(225) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `to` varchar(225) NOT NULL,
  `voyages_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `section_tabs_voyages_id_2639f596_fk_section_voyages_id` (`voyages_id`),
  CONSTRAINT `section_tabs_voyages_id_2639f596_fk_section_voyages_id` FOREIGN KEY (`voyages_id`) REFERENCES `section_voyages` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section_tabs`
--

LOCK TABLES `section_tabs` WRITE;
/*!40000 ALTER TABLE `section_tabs` DISABLE KEYS */;
INSERT INTO `section_tabs` VALUES (1,'Komodo','Here be dragons','From island hopping to trekking tours, from the world-famous Komodo Island (dubbed as Indonesia&rsquo;s Jurassic Park) to splendid pink sand beaches. This UNESCO World Heritage Site offers endless splendors to relish on.','home-voyages-komodo.png','/voyages',1),(2,'Raja Ampat','Off the beaten reef','Welcome to the world\'s richest underwater biodiversity with over 600 small islands surrounding the four main islands of Misool, Salawati, Batanta and Waigeo.','home-voyages-raja-ampat.png','/voyages',1),(3,'Spice Islands','The &lsquo;great nutmeg island&rsquo;','The volcanic Banda Islands are as rich in history and natural beauty as they are remote. Centuries ago, this tiny archipelago in Maluku was the world&rsquo;s only source of nutmeg, the &lsquo;gold of the spice trade.&rsquo;','home-voyages-spice-islands.png','/voyages',1);
/*!40000 ALTER TABLE `section_tabs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section_team`
--

DROP TABLE IF EXISTS `section_team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section_team` (
  `id` char(32) NOT NULL,
  `caption` varchar(100) NOT NULL,
  `heading` varchar(200) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section_team`
--

LOCK TABLES `section_team` WRITE;
/*!40000 ALTER TABLE `section_team` DISABLE KEYS */;
INSERT INTO `section_team` VALUES ('378eabb6dc8f4a61bb0c4d7c71a54ccc','The Team','The beating heart of our mission','2021-01-10 12:30:34.247895','2021-01-10 12:30:34.247932');
/*!40000 ALTER TABLE `section_team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section_testimony`
--

DROP TABLE IF EXISTS `section_testimony`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section_testimony` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(225) NOT NULL,
  `image` varchar(100) NOT NULL,
  `comment` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `instagram_id` int NOT NULL,
  `page_id` char(32) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `instagram_id` (`instagram_id`),
  KEY `section_testimony_page_id_086c4f5a_fk_page_navigation_page_id` (`page_id`),
  CONSTRAINT `section_testimony_instagram_id_dc9fe119_fk_section_i` FOREIGN KEY (`instagram_id`) REFERENCES `section_instagramtestimony` (`id`),
  CONSTRAINT `section_testimony_page_id_086c4f5a_fk_page_navigation_page_id` FOREIGN KEY (`page_id`) REFERENCES `page_navigation_page` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section_testimony`
--

LOCK TABLES `section_testimony` WRITE;
/*!40000 ALTER TABLE `section_testimony` DISABLE KEYS */;
INSERT INTO `section_testimony` VALUES (1,'Jack Morris','voyages-testimonal-jack-morris_c8CfCTw.png','How insane is this Phinisi ship?!🛥 It was one of the most amazing experiences I&rsquo;ve had in Indonesia, and the perfect way to spend my 30th birthday!','2021-01-11 04:38:00.745705','2021-01-11 04:42:28.687633',1,'88d3b76bf7904804b0b38e20955464c8'),(2,'Lauren Bullen','activites-testimoni-lauren-bullen.png','Moody sunset hikes to the top of Padar Island, I&rsquo;ve been up here many times &amp; it was crazy to see it so quiet 😯 over the coming months we plan to see more of Indonesia &amp; support local tourism as much as we can 🙏🏼','2021-01-11 08:03:54.758050','2021-01-11 08:03:54.758087',2,'79f0bc3693584f46935d38295ce839c0');
/*!40000 ALTER TABLE `section_testimony` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section_thedecks`
--

DROP TABLE IF EXISTS `section_thedecks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section_thedecks` (
  `id` char(32) NOT NULL,
  `caption` varchar(100) NOT NULL,
  `heading` varchar(225) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `to` varchar(225) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `page_id` char(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `section_thedecks_page_id_57b2a5b2_fk_page_navigation_page_id` (`page_id`),
  CONSTRAINT `section_thedecks_page_id_57b2a5b2_fk_page_navigation_page_id` FOREIGN KEY (`page_id`) REFERENCES `page_navigation_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section_thedecks`
--

LOCK TABLES `section_thedecks` WRITE;
/*!40000 ALTER TABLE `section_thedecks` DISABLE KEYS */;
INSERT INTO `section_thedecks` VALUES ('dc2a436cd34141e6a46b9a1237f60005','The Decks','Craftmanship lives on','The most emblematic of the main deck area, the Gajah Mada lounge and dining room, features a large decorative copper bas-relief depicting iconic maritime scenes from a bygone era.','vessel-decks-caftmanship.png','/the-vessel/specification','2021-01-10 11:54:46.294911','2021-01-10 11:54:46.294950','962b3d1885e7481abb8751f1e7f8c256'),('e64c0ca147644c4bb87a3752f76e02cd','The Decks','The sea is your fairway','The shaded lounge areas on the fore and aft decks offer an oasis of calm to relax and bask in the ever-changing scenery. The top deck offers a one-of-a-kind ‘equatorial golf’ experience using biodegradable ecoballs, making the ocean as the player\'s fairway.</p>','vessel-decks-sea.png','/the-vessel/specification','2021-01-10 11:54:46.291630','2021-01-10 11:54:46.291671','962b3d1885e7481abb8751f1e7f8c256');
/*!40000 ALTER TABLE `section_thedecks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section_thevessel`
--

DROP TABLE IF EXISTS `section_thevessel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section_thevessel` (
  `id` int NOT NULL AUTO_INCREMENT,
  `caption` varchar(225) NOT NULL,
  `heading` varchar(225) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `to` varchar(225) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section_thevessel`
--

LOCK TABLES `section_thevessel` WRITE;
/*!40000 ALTER TABLE `section_thevessel` DISABLE KEYS */;
INSERT INTO `section_thevessel` VALUES (1,'The Vessel','Craftmanship lives on','<p class=\"px-5 px-sm-0\">Sailing on a modern-take of the Phinisi is the best way to enjoy the beauty of the Indonesian archipelago. An icon of Indonesia\'s seafaring tradition, the Phinisi boat-building is recognized by UNESCO as a Masterpiece of Oral and Intangible Heritage of Humanity.</p>','vessel-home.png','/the-vessel','2021-01-08 05:11:06.976838','2021-01-08 05:11:06.976881');
/*!40000 ALTER TABLE `section_thevessel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section_video`
--

DROP TABLE IF EXISTS `section_video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section_video` (
  `id` char(32) NOT NULL,
  `src` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `hero_id` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `section_video_hero_id_0cbbf094_fk_section_hero_id` (`hero_id`),
  CONSTRAINT `section_video_hero_id_0cbbf094_fk_section_hero_id` FOREIGN KEY (`hero_id`) REFERENCES `section_hero` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section_video`
--

LOCK TABLES `section_video` WRITE;
/*!40000 ALTER TABLE `section_video` DISABLE KEYS */;
INSERT INTO `section_video` VALUES ('fb83be52a3be4ebe957f12ecf871316a','tmo-hero.mp4','video/mp4','d614b5ce60914d86b65eeca4faca3abb');
/*!40000 ALTER TABLE `section_video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section_voyages`
--

DROP TABLE IF EXISTS `section_voyages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section_voyages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `heading` varchar(225) NOT NULL,
  `description` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section_voyages`
--

LOCK TABLES `section_voyages` WRITE;
/*!40000 ALTER TABLE `section_voyages` DISABLE KEYS */;
INSERT INTO `section_voyages` VALUES (1,'Voyages','Whether you are interested in culture, history, ecology or wildlife, Indonesia\'s eastern archipelago presents a fantastic range of land-based experiences, including those only reached by sea.','2021-01-08 09:15:01.847498','2021-01-08 09:15:01.847539');
/*!40000 ALTER TABLE `section_voyages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section_voyagesitem`
--

DROP TABLE IF EXISTS `section_voyagesitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section_voyagesitem` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `heading` varchar(225) NOT NULL,
  `description` longtext NOT NULL,
  `to` varchar(225) NOT NULL,
  `page_id` char(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `section_voyagesitem_page_id_852033fd_fk_page_navigation_page_id` (`page_id`),
  CONSTRAINT `section_voyagesitem_page_id_852033fd_fk_page_navigation_page_id` FOREIGN KEY (`page_id`) REFERENCES `page_navigation_page` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section_voyagesitem`
--

LOCK TABLES `section_voyagesitem` WRITE;
/*!40000 ALTER TABLE `section_voyagesitem` DISABLE KEYS */;
INSERT INTO `section_voyagesitem` VALUES (1,'voyages-item-komodo.png','Home of the mystical<br class=\"hidden-sm-and-up\" />Komodo Dragons','This UNESCO World Heritage site encompasses three main islands &ndash; Komodo, Padar and Rinca. Below the water, multihued coral gardens are a diver&rsquo;s dream. Expect to see manta rays, ribbon eels, sea turtles, and shimmering schools of fish.','/voyages/komodo','88d3b76bf7904804b0b38e20955464c8'),(2,'voyages-item-raja-ampat.png','The richest coal<br class=\"hidden-sm-and-up\" />reefs on earth','This UNESCO World Heritage site encompasses three main islands &ndash; Komodo, Padar and Rinca. Below the water, multihued coral gardens are a diver&rsquo;s dream. Expect to see manta rays, ribbon eels, sea turtles, and shimmering schools of fish.','/voyages/raja-ampat','88d3b76bf7904804b0b38e20955464c8'),(3,'voyages-item-spice-islands.png','The &lsquo;great nutmeg island&rsquo;','The volcanic Banda Islands are as rich in history and natural beauty as they are remote. Centuries ago, this tiny archipelago in Maluku was the world&rsquo;s only source of nutmeg, the &lsquo;gold of the spice trade.&rsquo; Today, only adventurous travellers make the trip&mdash;and are rewarded with bygone colonial architecture, buzzing spice markets, and postcard-pretty scenery.','/voyages/spice-islands','88d3b76bf7904804b0b38e20955464c8');
/*!40000 ALTER TABLE `section_voyagesitem` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-11 20:24:08
