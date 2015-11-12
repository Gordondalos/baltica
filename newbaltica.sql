-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: localhost    Database: baltica
-- ------------------------------------------------------
-- Server version	5.5.46-0ubuntu0.14.04.2

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
-- Table structure for table `dle_admin_logs`
--

DROP TABLE IF EXISTS `dle_admin_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_admin_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL DEFAULT '',
  `date` int(11) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(40) NOT NULL DEFAULT '',
  `action` int(11) NOT NULL DEFAULT '0',
  `extras` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date` (`date`)
) ENGINE=MyISAM AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb4 AVG_ROW_LENGTH=49;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_admin_logs`
--

LOCK TABLES `dle_admin_logs` WRITE;
/*!40000 ALTER TABLE `dle_admin_logs` DISABLE KEYS */;
INSERT INTO `dle_admin_logs` VALUES (1,'gordondalos',1447153100,'::1',86,'http://localhost/baltica_dle/index.php?'),(2,'gordondalos',1447153209,'::1',66,'Default'),(3,'gordondalos',1447162678,'::1',70,'gordondalos/main.tpl'),(4,'gordondalos',1447168065,'::1',59,'o-kompanii'),(5,'gordondalos',1447168445,'::1',1,'Что следует помнить, приобретая автозапчасти'),(6,'gordondalos',1447168868,'::1',25,'Что следует помнить, приобретая автозапчасти'),(7,'gordondalos',1447168931,'::1',26,'Добро пожаловать'),(8,'gordondalos',1447168931,'::1',26,'Приобретение и оплата скрипта'),(9,'gordondalos',1447168931,'::1',26,'Осуществление технической поддержки скрипта'),(10,'gordondalos',1447171619,'::1',25,'Что следует помнить, приобретая автозапчасти'),(11,'gordondalos',1447171858,'::1',25,'Что следует помнить, приобретая автозапчасти'),(12,'gordondalos',1447171941,'::1',60,'o-kompanii'),(13,'gordondalos',1447171993,'::1',60,'o-kompanii'),(14,'gordondalos',1447173565,'::1',60,'o-kompanii'),(15,'gordondalos',1447174211,'::1',59,'katalog-produkcii'),(16,'gordondalos',1447174484,'::1',60,'katalog-produkcii'),(17,'gordondalos',1447174842,'::1',60,'katalog-produkcii'),(18,'gordondalos',1447174885,'::1',60,'katalog-produkcii'),(19,'gordondalos',1447175199,'::1',59,'vakansii'),(20,'gordondalos',1447175342,'::1',60,'vakansii'),(21,'gordondalos',1447175494,'::1',59,'kontakty'),(22,'gordondalos',1447175585,'::1',36,'1447175610_map2.png'),(23,'gordondalos',1447175597,'::1',60,'kontakty'),(24,'gordondalos',1447175628,'::1',60,'kontakty'),(25,'gordondalos',1447175647,'::1',60,'kontakty'),(26,'gordondalos',1447227142,'::1',60,'kontakty'),(27,'gordondalos',1447227217,'::1',60,'kontakty'),(28,'gordondalos',1447227263,'::1',60,'kontakty'),(29,'gordondalos',1447227300,'::1',60,'kontakty'),(30,'gordondalos',1447227300,'::1',60,'kontakty'),(31,'gordondalos',1447227355,'::1',60,'kontakty'),(32,'gordondalos',1447227355,'::1',60,'kontakty'),(33,'gordondalos',1447229194,'::1',60,'katalog-produkcii'),(34,'gordondalos',1447229241,'::1',60,'katalog-produkcii'),(35,'gordondalos',1447229974,'::1',37,'boxsmall.jpg'),(36,'gordondalos',1447230045,'::1',36,'slide1.png'),(37,'gordondalos',1447230045,'::1',36,'slide2.png'),(38,'gordondalos',1447230045,'::1',36,'slide3.png'),(39,'gordondalos',1447230045,'::1',36,'slide4.png'),(40,'gordondalos',1447230045,'::1',36,'slide5.png'),(41,'gordondalos',1447230045,'::1',36,'slide6.png'),(42,'gordondalos',1447230045,'::1',36,'slide7.png'),(43,'gordondalos',1447230045,'::1',36,'slide8.png'),(44,'gordondalos',1447231899,'::1',4,'svidetelstvo1'),(45,'gordondalos',1447231990,'::1',8,'1'),(46,'gordondalos',1447231998,'::1',8,'1'),(47,'gordondalos',1447232004,'::1',8,'1'),(48,'gordondalos',1447232004,'::1',8,'1'),(49,'gordondalos',1447232005,'::1',8,'1'),(50,'gordondalos',1447232007,'::1',8,'1'),(51,'gordondalos',1447232007,'::1',8,'1'),(52,'gordondalos',1447232008,'::1',8,'1'),(53,'gordondalos',1447232009,'::1',8,'1'),(54,'gordondalos',1447232011,'::1',8,'1'),(55,'gordondalos',1447232012,'::1',8,'1'),(56,'gordondalos',1447232012,'::1',8,'1'),(57,'gordondalos',1447232014,'::1',8,'1'),(58,'gordondalos',1447232014,'::1',8,'1'),(59,'gordondalos',1447232016,'::1',8,'1'),(60,'gordondalos',1447232060,'::1',5,'svidetelstvo1'),(61,'gordondalos',1447232096,'::1',5,'svidetelstvo1'),(62,'gordondalos',1447234335,'::1',4,'sidebar2'),(63,'gordondalos',1447234425,'::1',5,'sidebar2'),(64,'gordondalos',1447234484,'::1',5,'sidebar2'),(65,'gordondalos',1447234508,'::1',5,'sidebar2'),(66,'gordondalos',1447234705,'::1',4,'info'),(67,'gordondalos',1447234769,'::1',5,'info'),(68,'gordondalos',1447234788,'::1',5,'info'),(69,'gordondalos',1447234893,'::1',5,'info'),(70,'gordondalos',1447234946,'::1',5,'svidetelstvo1'),(71,'gordondalos',1447234994,'::1',5,'info'),(72,'gordondalos',1447235034,'::1',5,'info'),(73,'gordondalos',1447235091,'::1',5,'info'),(74,'gordondalos',1447235113,'::1',5,'info'),(75,'gordondalos',1447235141,'::1',5,'info'),(76,'gordondalos',1447235303,'::1',60,'katalog-produkcii'),(77,'gordondalos',1447235340,'::1',60,'katalog-produkcii'),(78,'gordondalos',1447235573,'::1',60,'katalog-produkcii'),(79,'gordondalos',1447235626,'::1',60,'katalog-produkcii'),(80,'gordondalos',1447236193,'::1',60,'katalog-produkcii'),(81,'gordondalos',1447236238,'::1',60,'katalog-produkcii'),(82,'gordondalos',1447236299,'::1',60,'katalog-produkcii'),(83,'gordondalos',1447236324,'::1',60,'katalog-produkcii'),(84,'gordondalos',1447236362,'::1',60,'katalog-produkcii'),(85,'gordondalos',1447236463,'::1',60,'o-kompanii'),(86,'gordondalos',1447236488,'::1',60,'o-kompanii'),(87,'gordondalos',1447241406,'212.112.119.191',86,'Direct DLE Adminpanel'),(88,'gordondalos',1447241592,'212.112.119.191',48,''),(89,'gordondalos',1447241605,'212.112.119.191',48,''),(90,'gordondalos',1447248711,'212.112.119.191',86,'http://balticadle.greensoft.kg/admin.php?mod=templates'),(91,'gordondalos',1447250383,'212.112.119.191',66,'gordondalos'),(92,'gordondalos',1447253813,'212.112.119.191',86,'http://balticadle.greensoft.kg/'),(93,'gordondalos',1447255739,'212.112.119.191',86,'http://balticadle.greensoft.kg/'),(94,'gordondalos',1447256177,'212.112.119.191',1,'Автозапчасти. Бывают оригинальные, бывают аналоговые: какие лучше?'),(95,'gordondalos',1447257162,'212.112.119.191',25,'Автозапчасти. Бывают оригинальные, бывают аналоговые: какие лучше?'),(96,'gordondalos',1447257221,'212.112.119.191',1,'Автозапчасти и правила их подбора?'),(97,'gordondalos',1447257253,'212.112.119.191',1,'Как увеличить прибыльность автосервиса'),(98,'gordondalos',1447257279,'212.112.119.191',1,'Правильная эксплуатация двигателя'),(99,'gordondalos',1447257304,'212.112.119.191',1,'Виды двигателей - атмосферные, турбированные и компрессорные. Виды двигателей - атмосферные, турбированные и компрессорные.'),(100,'gordondalos',1447303474,'212.112.119.191',86,'http://balticadle.greensoft.kg/'),(101,'gordondalos',1447304019,'212.112.119.191',36,'1447304063_23_image001_small.png'),(102,'gordondalos',1447304020,'212.112.119.191',36,'1447304111_1374186881_motor_00.jpg'),(103,'gordondalos',1447304020,'212.112.119.191',36,'1447304043_compressornye1.jpg'),(104,'gordondalos',1447304021,'212.112.119.191',36,'1447304078_compressornye3.jpg'),(105,'gordondalos',1447304021,'212.112.119.191',36,'1447304095_compressornye15.jpg'),(106,'gordondalos',1447304021,'212.112.119.191',36,'1447304102_compressornye41.jpg'),(107,'gordondalos',1447304021,'212.112.119.191',36,'1447304049_f_foto325_20110305082647.jpg'),(108,'gordondalos',1447304022,'212.112.119.191',36,'1447304107_honda-vtec-turbo-engine-2.jpg'),(109,'gordondalos',1447304022,'212.112.119.191',36,'1447304078_hqdefault3.jpg'),(110,'gordondalos',1447304022,'212.112.119.191',36,'1447304032_information_items_property_7370.jpg'),(111,'gordondalos',1447304022,'212.112.119.191',36,'1447304024_motornaya-ustanoka-yamz-238ak-b-u.jpg'),(112,'gordondalos',1447304022,'212.112.119.191',36,'1447304050_turbinye.jpg'),(113,'gordondalos',1447304023,'212.112.119.191',36,'1447304084_turbinye1.jpg'),(114,'gordondalos',1447304023,'212.112.119.191',36,'1447304084_ustrojstvo-tnvd-jamz-238_20150311131055.jpg'),(115,'gordondalos',1447304082,'212.112.119.191',25,'Виды двигателей - атмосферные, турбированные и компрессорные. Виды двигателей - атмосферные, турбированные и компрессорные.'),(116,'gordondalos',1447304177,'212.112.119.191',25,'Виды двигателей - атмосферные, турбированные и компрессорные. Виды двигателей - атмосферные, турбированные и компрессорные.'),(117,'gordondalos',1447304186,'212.112.119.191',25,'Правильная эксплуатация двигателя'),(118,'gordondalos',1447304195,'212.112.119.191',25,'Автозапчасти и правила их подбора?'),(119,'gordondalos',1447304208,'212.112.119.191',25,'Как увеличить прибыльность автосервиса'),(120,'gordondalos',1447304214,'212.112.119.191',25,'Автозапчасти. Бывают оригинальные, бывают аналоговые: какие лучше?'),(121,'gordondalos',1447304223,'212.112.119.191',25,'Что следует помнить, приобретая автозапчасти'),(122,'gordondalos',1447304326,'212.112.119.191',48,''),(123,'gordondalos',1447306323,'212.112.119.191',25,'Правильная эксплуатация двигателя'),(124,'gordondalos',1447306487,'212.112.119.191',25,'Виды двигателей - атмосферные, турбированные и компрессорные. Виды двигателей - атмосферные, турбированные и компрессорные.'),(125,'gordondalos',1447307477,'212.112.119.191',48,''),(126,'gordondalos',1447307533,'212.112.119.191',48,''),(127,'gordondalos',1447308568,'212.112.119.191',25,'Виды двигателей - атмосферные, турбированные и компрессорные. Виды двигателей - атмосферные, турбированные и компрессорные.'),(128,'gordondalos',1447308701,'212.112.119.191',25,'Виды двигателей - атмосферные, турбированные и компрессорные. Виды двигателей - атмосферные, турбированные и компрессорные.'),(129,'gordondalos',1447309408,'212.112.119.191',74,'img'),(130,'gordondalos',1447309458,'212.112.119.191',74,'img'),(131,'gordondalos',1447309705,'212.112.119.191',25,'Виды двигателей - атмосферные, турбированные и компрессорные. Виды двигателей - атмосферные, турбированные и компрессорные.'),(132,'gordondalos',1447310292,'212.112.119.191',25,'Виды двигателей - атмосферные, турбированные и компрессорные. Виды двигателей - атмосферные, турбированные и компрессорные.'),(133,'gordondalos',1447310335,'212.112.119.191',25,'Виды двигателей - атмосферные, турбированные и компрессорные. Виды двигателей - атмосферные, турбированные и компрессорные.'),(134,'gordondalos',1447310364,'212.112.119.191',25,'Виды двигателей - атмосферные, турбированные и компрессорные. Виды двигателей - атмосферные, турбированные и компрессорные.'),(135,'gordondalos',1447310452,'212.112.119.191',25,'Правильная эксплуатация двигателя');
/*!40000 ALTER TABLE `dle_admin_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_admin_sections`
--

DROP TABLE IF EXISTS `dle_admin_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_admin_sections` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `descr` varchar(255) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL DEFAULT '',
  `allow_groups` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_admin_sections`
--

LOCK TABLES `dle_admin_sections` WRITE;
/*!40000 ALTER TABLE `dle_admin_sections` DISABLE KEYS */;
/*!40000 ALTER TABLE `dle_admin_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_banned`
--

DROP TABLE IF EXISTS `dle_banned`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_banned` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `users_id` mediumint(8) NOT NULL DEFAULT '0',
  `descr` text NOT NULL,
  `date` varchar(15) NOT NULL DEFAULT '',
  `days` smallint(4) NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `user_id` (`users_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_banned`
--

LOCK TABLES `dle_banned` WRITE;
/*!40000 ALTER TABLE `dle_banned` DISABLE KEYS */;
/*!40000 ALTER TABLE `dle_banned` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_banners`
--

DROP TABLE IF EXISTS `dle_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_banners` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `banner_tag` varchar(40) NOT NULL DEFAULT '',
  `descr` varchar(200) NOT NULL DEFAULT '',
  `code` text NOT NULL,
  `approve` tinyint(1) NOT NULL DEFAULT '0',
  `short_place` tinyint(1) NOT NULL DEFAULT '0',
  `bstick` tinyint(1) NOT NULL DEFAULT '0',
  `main` tinyint(1) NOT NULL DEFAULT '0',
  `category` varchar(255) NOT NULL DEFAULT '',
  `grouplevel` varchar(100) NOT NULL DEFAULT 'all',
  `start` varchar(15) NOT NULL DEFAULT '',
  `end` varchar(15) NOT NULL DEFAULT '',
  `fpage` tinyint(1) NOT NULL DEFAULT '0',
  `innews` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 AVG_ROW_LENGTH=1562;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_banners`
--

LOCK TABLES `dle_banners` WRITE;
/*!40000 ALTER TABLE `dle_banners` DISABLE KEYS */;
INSERT INTO `dle_banners` VALUES (3,'sidebar2','Sidebar2','<section class=\"section_3\">\r\n    <div class=\"container section_3_contact\">\r\n        <div class=\"row\">\r\n             <div class=\"col-md-4 rekvizit bumaga\">\r\n    \r\n                <h2>Реквизиты</h2>\r\n                \r\n                <p>\r\n                    <b>Полное наименование: </b> <br>\r\n                    Общество с ограниченной ответственностью\r\n                    «БАЛТСПЕЦСЕРВИС»\r\n                </p>\r\n                \r\n                <p>\r\n                    <b>Сокращенное наименование:</b><br>\r\n                    OOO«БАЛТСПЕЦСЕРВИС»<br>\r\n                    ИНН 7843302255 / КПП 784301001<br>\r\n                    ОКАТО 40280501000<br>\r\n                    ОГРН 1057812510667<br>\r\n                    ОКПО 77743875<br>\r\n                    ОКВЭД 50.20 29.40.9 50.3.51.6.74.2.74.20<br>\r\n                    74.20.35\r\n                \r\n                </p>\r\n                \r\n                <p>\r\n                    <b>Плательщик:</b>  OOO«БАЛТСПЕЦСЕРВИС»<br>\r\n                    Юридический адресс: 197762, г <br>\r\n                    Санкт-Петербург, г. Кронштадт,<br>\r\n                    ул. Гусева, дом 12-71<br>\r\n                    Тел.: 8(495) 725-06-11<br>\r\n                    Р/с 40702810321000000857, БИК 04403790<br>\r\n                    Банк ПАО «БАНК «САНКТ-ПЕТЕРБУРГ» г.<br>\r\n                    Санкт-Петербург<br>\r\n                    К/с 30101810900000000790<br>\r\n                </p>\r\n                \r\n                <p>\r\n                    <b>Грузополучатель:</b>  OOO«БАЛТСПЕЦСЕРВИС» <br>\r\n                    ИНН 7843302255 / КПП 784301001<br>\r\n                    141044 , Московская область, Мытищински <br>\r\n                    район, деревня Грибки, д.64 А\r\n                    Тел.: 8(495) 725-06-11\r\n                    E-mail: infobss1@mail.ru\r\n                </p>\r\n                \r\n                <p>\r\n                    <b>Почтовый адрес:</b> 141700, Московская обл., г<br>\r\n                    Долгопрудный,<br>\r\n                    ул. Дирижабельная, д. 13, а/я №8\r\n                </p>\r\n                \r\n                <p>\r\n                    <b>Коммерческий директор:</b> Черкес Михаил Степанович,<br>\r\n                    действует на основании доверенности № 78<br>\r\n                    АА 8134046 от 29.01.2015 г.\r\n                </p>\r\n    \r\n    \r\n            </div>\r\n        </div>\r\n    </div>\r\n</section>',1,0,0,0,'0','all','','',0,0),(2,'svidetelstvo1','Svidetelstvo1','<div class=\"col-md-4 bumaga\">\r\n	<h2>Диллерские свидетельства</h2>\r\n	<div class=\"img-wrap\">\r\n		<img src=\"{THEME}/img/sertifikat1.png\" alt=\"Сертификат\" data-action=\"zoom\">\r\n		<img src=\"{THEME}/img/sertifikat2.png\" alt=\"Сертификат2\" data-action=\"zoom\">\r\n		<img src=\"{THEME}/img/svidetelstwo.png\" alt=\"Свидетельство\" data-action=\"zoom\">\r\n	</div>\r\n\r\n</div>',1,0,0,0,'0','all','','',0,0),(4,'info','info','<div class=\"container section_3_info\">\r\n        <div class=\"row\">\r\n            \r\n            <div class=\"col-md-4 bumaga\">\r\n    \r\n                <h2>Описание и характеристики</h2>\r\n                <ul>\r\n                	<li>- Двигатель ЯМЗ-530 Е4<br> <a href=\'#\'>(скачать)</a></li>\r\n                	<li>- Двигатель ЯМЗ-530 Е4<br> <a href=\'#\'>(скачать)</a></li>\r\n                \r\n                </ul>\r\n                <h2>Типовой договор</h2>\r\n                <ul>\r\n                    <li>- Скачать образец договора<br> <a href=\'#\'>(скачать)</a></li>\r\n                \r\n                \r\n                </ul>\r\n                 <h2>Дилерские свидетельства</h2>\r\n                    <div class=\"img-wrap\">\r\n                    <img src=\"{THEME}/img/sertifikat1.png\" alt=\"Сертификат\" data-action=\"zoom\">\r\n                    <img src=\"{THEME}/img/sertifikat2.png\" alt=\"Сертификат2\" data-action=\"zoom\">\r\n                    <img src=\"{THEME}/img/svidetelstwo.png\" alt=\"Свидетельство\" data-action=\"zoom\">\r\n                </div>\r\n\r\n				</div>\r\n            </div>\r\n        </div>',1,0,0,0,'0','all','','',0,0);
/*!40000 ALTER TABLE `dle_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_category`
--

DROP TABLE IF EXISTS `dle_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_category` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `parentid` mediumint(8) NOT NULL DEFAULT '0',
  `posi` mediumint(8) NOT NULL DEFAULT '1',
  `name` varchar(50) NOT NULL DEFAULT '',
  `alt_name` varchar(50) NOT NULL DEFAULT '',
  `icon` varchar(200) NOT NULL DEFAULT '',
  `skin` varchar(50) NOT NULL DEFAULT '',
  `descr` varchar(200) NOT NULL DEFAULT '',
  `keywords` text NOT NULL,
  `news_sort` varchar(10) NOT NULL DEFAULT '',
  `news_msort` varchar(4) NOT NULL DEFAULT '',
  `news_number` smallint(5) NOT NULL DEFAULT '0',
  `short_tpl` varchar(40) NOT NULL DEFAULT '',
  `full_tpl` varchar(40) NOT NULL DEFAULT '',
  `metatitle` varchar(255) NOT NULL DEFAULT '',
  `show_sub` tinyint(1) NOT NULL DEFAULT '0',
  `allow_rss` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 AVG_ROW_LENGTH=48;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_category`
--

LOCK TABLES `dle_category` WRITE;
/*!40000 ALTER TABLE `dle_category` DISABLE KEYS */;
INSERT INTO `dle_category` VALUES (1,0,1,'Информация','main','','','','','','',0,'','','',0,1);
/*!40000 ALTER TABLE `dle_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_comment_rating_log`
--

DROP TABLE IF EXISTS `dle_comment_rating_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_comment_rating_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `c_id` int(11) NOT NULL DEFAULT '0',
  `member` varchar(40) NOT NULL DEFAULT '',
  `ip` varchar(40) NOT NULL DEFAULT '',
  `rating` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `c_id` (`c_id`),
  KEY `ip` (`ip`),
  KEY `member` (`member`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_comment_rating_log`
--

LOCK TABLES `dle_comment_rating_log` WRITE;
/*!40000 ALTER TABLE `dle_comment_rating_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `dle_comment_rating_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_comments`
--

DROP TABLE IF EXISTS `dle_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL DEFAULT '0',
  `user_id` mediumint(8) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `autor` varchar(40) NOT NULL DEFAULT '',
  `email` varchar(40) NOT NULL DEFAULT '',
  `text` text NOT NULL,
  `ip` varchar(40) NOT NULL DEFAULT '',
  `is_register` tinyint(1) NOT NULL DEFAULT '0',
  `approve` tinyint(1) NOT NULL DEFAULT '1',
  `rating` int(11) NOT NULL DEFAULT '0',
  `vote_num` int(11) NOT NULL DEFAULT '0',
  `parent` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `approve` (`approve`),
  KEY `parent` (`parent`),
  KEY `post_id` (`post_id`),
  KEY `user_id` (`user_id`),
  FULLTEXT KEY `text` (`text`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_comments`
--

LOCK TABLES `dle_comments` WRITE;
/*!40000 ALTER TABLE `dle_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `dle_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_complaint`
--

DROP TABLE IF EXISTS `dle_complaint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_complaint` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `p_id` int(11) NOT NULL DEFAULT '0',
  `c_id` int(11) NOT NULL DEFAULT '0',
  `n_id` int(11) NOT NULL DEFAULT '0',
  `text` text NOT NULL,
  `from` varchar(40) NOT NULL DEFAULT '',
  `to` varchar(255) NOT NULL DEFAULT '',
  `date` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `c_id` (`c_id`),
  KEY `n_id` (`n_id`),
  KEY `p_id` (`p_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_complaint`
--

LOCK TABLES `dle_complaint` WRITE;
/*!40000 ALTER TABLE `dle_complaint` DISABLE KEYS */;
/*!40000 ALTER TABLE `dle_complaint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_email`
--

DROP TABLE IF EXISTS `dle_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_email` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL DEFAULT '',
  `template` text NOT NULL,
  `use_html` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 AVG_ROW_LENGTH=960;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_email`
--

LOCK TABLES `dle_email` WRITE;
/*!40000 ALTER TABLE `dle_email` DISABLE KEYS */;
INSERT INTO `dle_email` VALUES (1,'reg_mail','{%username%},\r\n\r\nЭто письмо отправлено с сайта http://localhost/baltica_dle/\r\n\r\nВы получили это письмо, так как этот e-mail адрес был использован при регистрации на сайте. Если Вы не регистрировались на этом сайте, просто проигнорируйте это письмо и удалите его. Вы больше не получите такого письма.\r\n\r\n------------------------------------------------\r\nВаш логин и пароль на сайте:\r\n------------------------------------------------\r\n\r\nЛогин: {%username%}\r\nПароль: {%password%}\r\n\r\n------------------------------------------------\r\nИнструкция по активации\r\n------------------------------------------------\r\n\r\nБлагодарим Вас за регистрацию.\r\nМы требуем от Вас подтверждения Вашей регистрации, для проверки того, что введённый Вами e-mail адрес - реальный. Это требуется для защиты от нежелательных злоупотреблений и спама.\r\n\r\nДля активации Вашего аккаунта, зайдите по следующей ссылке:\r\n\r\n{%validationlink%}\r\n\r\nЕсли и при этих действиях ничего не получилось, возможно Ваш аккаунт удалён. В этом случае, обратитесь к Администратору, для разрешения проблемы.\r\n\r\nС уважением,\r\n\r\nАдминистрация http://localhost/baltica_dle/.',0),(2,'feed_mail','{%username_to%},\r\n\r\nДанное письмо вам отправил {%username_from%} с сайта http://localhost/baltica_dle/\r\n\r\n------------------------------------------------\r\nТекст сообщения\r\n------------------------------------------------\r\n\r\n{%text%}\r\n\r\nIP адрес отправителя: {%ip%}\r\n\r\n------------------------------------------------\r\nПомните, что администрация сайта не несет ответственности за содержание данного письма\r\n\r\nС уважением,\r\n\r\nАдминистрация http://localhost/baltica_dle/',0),(3,'lost_mail','Уважаемый {%username%},\r\n\r\nВы сделали запрос на получение забытого пароля на сайте http://localhost/baltica_dle/ Однако в целях безопасности все пароли хранятся в зашифрованном виде, поэтому мы не можем сообщить вам ваш старый пароль, поэтому если вы хотите сгенерировать новый пароль, зайдите по следующей ссылке: \r\n\r\n{%lostlink%}\r\n\r\nЕсли вы не делали запроса для получения пароля, то просто удалите данное письмо, ваш пароль храниться в надежном месте, и недоступен посторонним лицам.\r\n\r\nIP адрес отправителя: {%ip%}\r\n\r\nС уважением,\r\n\r\nАдминистрация http://localhost/baltica_dle/',0),(4,'new_news','Уважаемый администратор,\r\n\r\nуведомляем вас о том, что на сайт  http://localhost/baltica_dle/ была добавлена новость, которая в данный момент ожидает модерации.\r\n\r\n------------------------------------------------\r\nКраткая информация о новости\r\n------------------------------------------------\r\n\r\nАвтор: {%username%}\r\nЗаголовок новости: {%title%}\r\nКатегория: {%category%}\r\nДата добавления: {%date%}\r\n\r\nС уважением,\r\n\r\nАдминистрация http://localhost/baltica_dle/',0),(5,'comments','Уважаемый {%username_to%},\r\n\r\nуведомляем вас о том, что на сайт  http://localhost/baltica_dle/ был добавлен комментарий к новости, на которую вы были подписаны.\r\n\r\n------------------------------------------------\r\nКраткая информация о комментарии\r\n------------------------------------------------\r\n\r\nАвтор: {%username%}\r\nДата добавления: {%date%}\r\nСсылка на новость: {%link%}\r\n\r\n------------------------------------------------\r\nТекст комментария\r\n------------------------------------------------\r\n\r\n{%text%}\r\n\r\n------------------------------------------------\r\n\r\nЕсли вы не хотите больше получать уведомлений о новых комментариях к данной новости, то проследуйте по данной ссылке: {%unsubscribe%}\r\n\r\nС уважением,\r\n\r\nАдминистрация http://localhost/baltica_dle/',0),(6,'pm','Уважаемый {%username%},\r\n\r\nуведомляем вас о том, что на сайте  http://localhost/baltica_dle/ вам было отправлено персональное сообщение.\r\n\r\n------------------------------------------------\r\nКраткая информация о сообщении\r\n------------------------------------------------\r\n\r\nОтправитель: {%fromusername%}\r\nДата  получения: {%date%}\r\nЗаголовок: {%title%}\r\n\r\n------------------------------------------------\r\nТекст сообщения\r\n------------------------------------------------\r\n\r\n{%text%}\r\n\r\nС уважением,\r\n\r\nАдминистрация http://localhost/baltica_dle/',0),(7,'wait_mail','Уважаемый {%username%},\r\n\r\nВы сделали запрос на обьединение  вашего аккаунта на сайте http://localhost/baltica_dle/ с аккаунтом в социальной сети {%network%}.  Однако в целях безопасности вам необходимо подтвердить данное действие по следующей ссылке: \r\n\r\n------------------------------------------------\r\n{%link%}\r\n------------------------------------------------\r\n\r\nВнимание, в случае объединения аккаунтов, ваш основной пароль на сайте будет сброшен, и если вы входили на сайт используя ваш логин и пароль, то ваш пароль будет больше не действителен.\r\n\r\nЕсли вы не делали данного запроса, то просто удалите это письмо, данные вашего аккаунта хранятся в надежном месте, и недоступны посторонним лицам.\r\n\r\nIP адрес отправителя: {%ip%}\r\n\r\nС уважением,\r\n\r\nАдминистрация http://localhost/baltica_dle/',0),(8,'newsletter','<html>\r\n<head>\r\n<title>{%title%}</title>\r\n<meta content=\"text/html; charset={%charset%}\" http-equiv=Content-Type>\r\n<style type=\"text/css\">\r\nhtml,body{\r\n    font-family: Verdana;\r\n    word-spacing: 0.1em;\r\n    letter-spacing: 0;\r\n    line-height: 1.5em;\r\n    font-size: 11px;\r\n}\r\n\r\np {\r\n	margin:0px;\r\n	padding: 0px;\r\n}\r\n\r\na:active,\r\na:visited,\r\na:link {\r\n	color: #4b719e;\r\n	text-decoration:none;\r\n}\r\n\r\na:hover {\r\n	color: #4b719e;\r\n	text-decoration: underline;\r\n}\r\n</style>\r\n</head>\r\n<body>\r\n{%content%}\r\n</body>\r\n</html>',0);
/*!40000 ALTER TABLE `dle_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_files`
--

DROP TABLE IF EXISTS `dle_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_files` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `news_id` int(10) NOT NULL DEFAULT '0',
  `name` varchar(250) NOT NULL DEFAULT '',
  `onserver` varchar(250) NOT NULL DEFAULT '',
  `author` varchar(40) NOT NULL DEFAULT '',
  `date` varchar(15) NOT NULL DEFAULT '',
  `dcount` mediumint(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `news_id` (`news_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_files`
--

LOCK TABLES `dle_files` WRITE;
/*!40000 ALTER TABLE `dle_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `dle_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_flood`
--

DROP TABLE IF EXISTS `dle_flood`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_flood` (
  `f_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(40) NOT NULL DEFAULT '',
  `id` varchar(20) NOT NULL DEFAULT '',
  `flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`f_id`),
  KEY `flag` (`flag`),
  KEY `id` (`id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_flood`
--

LOCK TABLES `dle_flood` WRITE;
/*!40000 ALTER TABLE `dle_flood` DISABLE KEYS */;
/*!40000 ALTER TABLE `dle_flood` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_ignore_list`
--

DROP TABLE IF EXISTS `dle_ignore_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_ignore_list` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL DEFAULT '0',
  `user_from` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `user` (`user`),
  KEY `user_from` (`user_from`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_ignore_list`
--

LOCK TABLES `dle_ignore_list` WRITE;
/*!40000 ALTER TABLE `dle_ignore_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `dle_ignore_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_images`
--

DROP TABLE IF EXISTS `dle_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `images` text NOT NULL,
  `news_id` int(10) NOT NULL DEFAULT '0',
  `author` varchar(40) NOT NULL DEFAULT '',
  `date` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `author` (`author`),
  KEY `news_id` (`news_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_images`
--

LOCK TABLES `dle_images` WRITE;
/*!40000 ALTER TABLE `dle_images` DISABLE KEYS */;
INSERT INTO `dle_images` VALUES (1,'2015-11/1447304063_23_image001_small.png|||2015-11/1447304111_1374186881_motor_00.jpg|||2015-11/1447304043_compressornye1.jpg|||2015-11/1447304078_compressornye3.jpg|||2015-11/1447304095_compressornye15.jpg|||2015-11/1447304102_compressornye41.jpg|||2015-11/1447304049_f_foto325_20110305082647.jpg|||2015-11/1447304107_honda-vtec-turbo-engine-2.jpg|||2015-11/1447304078_hqdefault3.jpg|||2015-11/1447304032_information_items_property_7370.jpg|||2015-11/1447304024_motornaya-ustanoka-yamz-238ak-b-u.jpg|||2015-11/1447304050_turbinye.jpg|||2015-11/1447304084_turbinye1.jpg|||2015-11/1447304084_ustrojstvo-tnvd-jamz-238_20150311131055.jpg',9,'gordondalos','1447304019');
/*!40000 ALTER TABLE `dle_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_links`
--

DROP TABLE IF EXISTS `dle_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_links` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `word` varchar(255) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `only_one` tinyint(1) NOT NULL DEFAULT '0',
  `replacearea` tinyint(1) NOT NULL DEFAULT '1',
  `rcount` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_links`
--

LOCK TABLES `dle_links` WRITE;
/*!40000 ALTER TABLE `dle_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `dle_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_login_log`
--

DROP TABLE IF EXISTS `dle_login_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_login_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(40) NOT NULL DEFAULT '',
  `count` smallint(6) NOT NULL DEFAULT '0',
  `date` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ip` (`ip`),
  KEY `date` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_login_log`
--

LOCK TABLES `dle_login_log` WRITE;
/*!40000 ALTER TABLE `dle_login_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `dle_login_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_logs`
--

DROP TABLE IF EXISTS `dle_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `news_id` int(10) NOT NULL DEFAULT '0',
  `member` varchar(40) NOT NULL DEFAULT '',
  `ip` varchar(40) NOT NULL DEFAULT '',
  `rating` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ip` (`ip`),
  KEY `member` (`member`),
  KEY `news_id` (`news_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_logs`
--

LOCK TABLES `dle_logs` WRITE;
/*!40000 ALTER TABLE `dle_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `dle_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_lostdb`
--

DROP TABLE IF EXISTS `dle_lostdb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_lostdb` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `lostname` mediumint(8) NOT NULL DEFAULT '0',
  `lostid` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `lostid` (`lostid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_lostdb`
--

LOCK TABLES `dle_lostdb` WRITE;
/*!40000 ALTER TABLE `dle_lostdb` DISABLE KEYS */;
/*!40000 ALTER TABLE `dle_lostdb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_mail_log`
--

DROP TABLE IF EXISTS `dle_mail_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_mail_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `mail` varchar(50) NOT NULL DEFAULT '',
  `hash` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `hash` (`hash`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_mail_log`
--

LOCK TABLES `dle_mail_log` WRITE;
/*!40000 ALTER TABLE `dle_mail_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `dle_mail_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_notice`
--

DROP TABLE IF EXISTS `dle_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_notice` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) NOT NULL DEFAULT '0',
  `notice` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_notice`
--

LOCK TABLES `dle_notice` WRITE;
/*!40000 ALTER TABLE `dle_notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `dle_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_pm`
--

DROP TABLE IF EXISTS `dle_pm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_pm` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `subj` varchar(255) NOT NULL DEFAULT '',
  `text` text NOT NULL,
  `user` mediumint(8) NOT NULL DEFAULT '0',
  `user_from` varchar(40) NOT NULL DEFAULT '',
  `date` int(11) unsigned NOT NULL DEFAULT '0',
  `pm_read` tinyint(1) NOT NULL DEFAULT '0',
  `folder` varchar(10) NOT NULL DEFAULT '',
  `reply` tinyint(1) NOT NULL DEFAULT '0',
  `sendid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `folder` (`folder`),
  KEY `pm_read` (`pm_read`),
  KEY `user` (`user`),
  KEY `user_from` (`user_from`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_pm`
--

LOCK TABLES `dle_pm` WRITE;
/*!40000 ALTER TABLE `dle_pm` DISABLE KEYS */;
/*!40000 ALTER TABLE `dle_pm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_poll`
--

DROP TABLE IF EXISTS `dle_poll`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_poll` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `news_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(200) NOT NULL DEFAULT '',
  `frage` varchar(200) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `votes` mediumint(8) NOT NULL DEFAULT '0',
  `multiple` tinyint(1) NOT NULL DEFAULT '0',
  `answer` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `news_id` (`news_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_poll`
--

LOCK TABLES `dle_poll` WRITE;
/*!40000 ALTER TABLE `dle_poll` DISABLE KEYS */;
/*!40000 ALTER TABLE `dle_poll` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_poll_log`
--

DROP TABLE IF EXISTS `dle_poll_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_poll_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `news_id` int(10) unsigned NOT NULL DEFAULT '0',
  `member` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `news_id` (`news_id`,`member`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_poll_log`
--

LOCK TABLES `dle_poll_log` WRITE;
/*!40000 ALTER TABLE `dle_poll_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `dle_poll_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_post`
--

DROP TABLE IF EXISTS `dle_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `autor` varchar(40) NOT NULL DEFAULT '',
  `date` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `short_story` text NOT NULL,
  `full_story` text NOT NULL,
  `xfields` text NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `descr` varchar(200) NOT NULL DEFAULT '',
  `keywords` text NOT NULL,
  `category` varchar(200) NOT NULL DEFAULT '0',
  `alt_name` varchar(200) NOT NULL DEFAULT '',
  `comm_num` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `allow_comm` tinyint(1) NOT NULL DEFAULT '1',
  `allow_main` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `approve` tinyint(1) NOT NULL DEFAULT '0',
  `fixed` tinyint(1) NOT NULL DEFAULT '0',
  `allow_br` tinyint(1) NOT NULL DEFAULT '1',
  `symbol` varchar(3) NOT NULL DEFAULT '',
  `tags` varchar(255) NOT NULL DEFAULT '',
  `metatitle` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `allow_main` (`allow_main`),
  KEY `alt_name` (`alt_name`),
  KEY `approve` (`approve`),
  KEY `autor` (`autor`),
  KEY `category` (`category`),
  KEY `comm_num` (`comm_num`),
  KEY `date` (`date`),
  KEY `fixed` (`fixed`),
  KEY `symbol` (`symbol`),
  KEY `tags` (`tags`(250)),
  FULLTEXT KEY `short_story` (`short_story`,`full_story`,`xfields`,`title`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 AVG_ROW_LENGTH=6144;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_post`
--

LOCK TABLES `dle_post` WRITE;
/*!40000 ALTER TABLE `dle_post` DISABLE KEYS */;
INSERT INTO `dle_post` VALUES (4,'gordondalos','2015-11-10 18:14:05','<p><br />Если вы приняли решение приобрести ту или иную запасную часть для вашего вышедшего из строя автомобиля на рынке, и хотите при этом получить качественный товар по приемлемой цене, то вам необходимо знать несколько важных правил.<br /></p>','<p><br />Если вы приняли решение приобрести ту или иную запасную часть для вашего вышедшего из строя автомобиля на рынке, и хотите при этом получить качественный товар по приемлемой цене, то вам необходимо знать несколько важных правил.<br /></p><p><br />                    Отправляясь на рынок автозапчастей, в первую очередь, нужно помнить о том, что не все запчасти, представленные в продаже, являются одинаково качественными. Об этом свидетельствует достаточно существенная разница в ценах на аналогичные товары. Здесь стоит отметить, что цена на деталь в значительной мере зависит от того, принадлежит ли эта деталь к числу оригинальных или является их аналогом.<br /></p><p><br />           Дело в том, что на рынке представлены как оригинальные детали, предназначенные для определённой марки автомобиля и выпущенные заводом-производителем этой марки, так и аналоговые детали, изготовленные независимыми производителями. Наиболее подходящей для каждого конкретного автомобиля является, конечно, оригинальная деталь, имеющая уникальный номер и фирменную маркировку. Но из-за высокой цены на неё многие автолюбители все же задумываются над приобретением её аналоговой копии.<br /></p><p><br />                    Заводов-производителей, занимающихся выпуском неоригинальных деталей, существует множество, при этом не все из них добросовестно следят за качеством своей продукции. Поэтому, приняв решение о покупке аналоговой запчасти, следует предварительно ознакомиться с отзывами о том или ином производителе подобных деталей, чтобы избежать покупки некачественной или поддельной продукции.<br /></p><p><br />                    Продажей оригинальных деталей занимаются официальные дилеры отдельной марки, на рынках же в основном представлены аналоговые продукты. Помня о том, что качество таких продуктов может существенно отличаться, нужно быть особенно внимательным при их осмотре. Так, более качественные детали, как правило, упакованы в коробки с фирменной эмблемой, в то время как дешёвые поддельные товары часто просто заворачиваются в пакет или упаковочную бумагу. При рассмотрении самой детали необходимо отмечать аккуратность и надёжность её исполнения, на основании чего и делать вывод о её качественности. При этом запчасть, вышедшую из строя, лучше взять с собой в качестве образца, чтобы не ошибиться с выбором.<br /></p><p /><br />                    В заключение необходимо отметить, что на рынке следует приобретать только мелкие запасные детали, неоригинальность которых вряд ли негативно отразится на работе машины в целом. Если же речь идёт о замене какой-либо существенной части автомобиля, то здесь имеет смысл отдать предпочтение именно официальному производителю.','','Что следует помнить, приобретая автозапчасти','Если вы приняли решение приобрести ту или иную запасную часть для вашего вышедшего из строя автомобиля на рынке, и хотите при этом получить качественный товар по приемлемой цене, то вам необходимо','детали, автомобиля, рынке, необходимо, деталь, строя, деталей, решение, марки, товары, приняли, чтобы, запчасти, продукции, аналоговой, нужно, аналоговые, является, оригинальных, представлены','1','chto-sleduet-pomnit-priobretaya-avtozapchasti',0,1,1,1,0,1,'','',''),(5,'gordondalos','2015-11-11 18:36:17','Эксплуатация автомобиля рано или поздно приводит к тому, что некоторые из его комплектующих изнашиваются, требуя замены. В этом случае, каждый владелец машины задаётся вопросом: какие детали следует приобретать, оригинальные или аналоговые? Для того чтобы правильно ответить на этот вопрос нужно учесть все достоинства и недостатки использования тех или иных деталей. Но в первую очередь следует определить, что представляют собой эти запчасти.','Эксплуатация автомобиля рано или поздно приводит к тому, что некоторые из его комплектующих изнашиваются, требуя замены. В этом случае, каждый владелец машины задаётся вопросом: какие детали следует приобретать, оригинальные или аналоговые? Для того чтобы правильно ответить на этот вопрос нужно учесть все достоинства и недостатки использования тех или иных деталей. Но в первую очередь следует определить, что представляют собой эти запчасти.<br /><br /><br /><br />Оригинальными называются детали, идентичные тем, которые используются производителем при сборке данной модели и марки автомобиля. На них есть фирменная маркировка и номер, свидетельствующий об уникальности детали.<br /><br />Из преимуществ использования оригинальных деталей можно выделить следующие:<br /><br />• Гарантия завода производителя относительно качества и совместимости приобретаемой детали;<br /><br />• Наличие уникального номера сводит к минимуму риск приобретения неподходящей или поддельной запчасти;<br /><br />• Для гарантийного ремонта и обслуживания используются именно оригинальные запасные части;<br /><br />• Любая из деталей вашего автомобиля имеет свою оригинальную замену.<br /><br />Но существуют и недостатки:<br /><br />• Высокая цена, в которую в значительной части заложена принадлежность детали к конкретному бренду.<br /><br />• Длительный срок ожидания поставки детали (вплоть до нескольких месяцев).<br /><br />Неоригинальными же деталями называются запчасти, изготовление которых происходит на заводах независимых производителей, специализирующихся на поставках определённых наименований запасных частей для ряда конкретных марок машин.<br /><br />Использование аналоговых запчастей также имеет свои преимущества:<br /><br />• Аналоговая деталь практически всегда дешевле оригинала;<br /><br />• Такие детали практически всегда оказываются в наличии.<br /><br />Недостатками использования неоригинальных деталей могут стать:<br /><br />• Использование аналоговых деталей может привести к отмене гарантии на автомобиль официальным поставщиком;<br /><br />• Большая, по сравнению с рынком оригинальных деталей, вероятность приобрести неподходящую деталь или что ещё хуже, поддельную продукцию, использование которой может привести к серьёзным проблемам с автомобилем;<br /><br />• Ассортимент на рынке деталей-аналогов зачастую ограничивается наиболее изнашивающимися запасными частями, которые требуют постоянной замены;<br /><br />• Поставщики аналоговых запчастей по причине жёсткой конкуренции вынуждены постоянно находить способы снижения цен на свои товары. Зачастую эти меры оказывают негативное влияние на качество выпускаемой продукции.<br /><br />Таким образом, можно заключить, что в каждом конкретном случае вопрос о выборе деталей для ремонта своего автомобиля следует решать отдельно, не пренебрегая при этом консультацией хорошего специалиста в области обслуживания автомобилей.','','Автозапчасти. Бывают оригинальные, бывают аналоговые: какие лучше?','Эксплуатация автомобиля рано или поздно приводит к тому, что некоторые из его комплектующих изнашиваются, требуя замены. В этом случае, каждый владелец машины задаётся вопросом: какие детали следует','деталей, детали, следует, автомобиля, запчасти, использования, оригинальные, вопрос, аналоговых, случае, замены, недостатки, определить, которые, практически, представляют, собой, всегда, называются, запчастей','1','avtozapchasti-byvayut-originalnye-byvayut-analogovye-kakie-luchshe',0,1,1,1,0,1,'','',''),(6,'gordondalos','2015-11-11 18:53:41','Почти у каждого владельца авто рано или поздно возникает вопрос: какие из запчастей – оригинальные или неоригинальные – выбирать для обслуживания своего автомобиля. Рассмотрим разные точки зрения, найденные на интернет-форумах.','Почти у каждого владельца авто рано или поздно возникает вопрос: какие из запчастей – оригинальные или неоригинальные – выбирать для обслуживания своего автомобиля. Рассмотрим разные точки зрения, найденные на интернет-форумах.<br /><br /><br /><br />Сторонники оригинальных запасных частей утверждают, что «родные» элементы предопределяют долгий срок службы, носкость и прочность автомобиля. С другой стороны, у приверженцев неоригинальных частей есть свой аргумент – цена. Они утверждают, что не стоит переплачивать за известную марку, к тому же, нынешние авторынки предлагают широкий выбор подобных аналогов.<br /><br /><br /><br />В данной статье мы проанализируем все аргументы «за» и «против» двух видов запчастей и постараемся дать полную их характеристику для облегчения вашего последующего выбора.<br /><br /><br /><br />Оригинальными запасными частями являются детали, тождественные поставляемым на стакер завода-производителя, они имеют указанную марку и идентификационный код изготовителя. Каковы прерогативы их эксплуатации?<br /><br /><br /><br />Оригиналы качественны и сочетаемы, удовлетворяют все запросы и гарантируют эксплуатацию на должном уровне.<br /><br /><br /><br />Номенклатура изделий гарантирует заказчику потребность в нужных запчастях.<br /><br /><br /><br />Во время приобретения детали по идентификационному номеру производителя, сводится к минимуму риск купить ненастоящий товар.<br /><br /><br /><br />При автосервисе по гарантии применяются только оригинальные детали.<br /><br /><br /><br />Среди немногочисленных недочетов есть очень значимые:<br /><br /><br /><br />Стоимость оригиналов, как правило, может быть в 1.5 раза дороже аналогичной детали, схожей по качеству.<br /><br /><br /><br />Время поставки заказной запчасти на склад термином от двух до десятка недель: ассортимент очень велик, и посреднику невыгодно содержать полный перечень деталей.<br /><br /><br /><br />Неоригинальными деталями называют товары независимых поставщиков, которые производят запчасти отдельных групп (подвесок, рулевой, тормозной части, двигателя) для отдельных марок.<br /><br /><br /><br />Определим положительные моменты их использования:<br /><br /><br /><br />Невысокая стоимость. С другой стороны, существуют детали, дороже оригиналов. Это обусловлено дополнительными свойствами деталей или высшим качеством. Качественные заменители не могут быть дороже оригиналов, чем на треть.<br /><br /><br /><br />Быстрый поиск. Среди изготовителей оригиналов на рынке существует всего 2-3 конкурента, в то время, как поставщиков аналогов есть около десятка. Это обуславливает быструю поставку нужных деталей. <br /><br /><br /><br />Среди недостатков можно выделить следующие:<br /><br /><br /><br />Замена на неоригинальные детали может привести к недействительности гарантийного талона.<br /><br /><br /><br />Могут приводить к серьезным повреждениям и, в конечном счете, убыткам, так как вам могут предложить бракованные запчасти.<br /><br /><br /><br />Выбор аналогов значительно уступает оригиналам, так как производители выпускают наиболее распространенные детали.<br /><br /><br /><br />Соперничество многочисленных компаний, выпускающих заменители. Это приводит к снижению цен, что в свою очередь влечет за собой снижение качества итогового продукта.<br /><br /><br /><br />Напоследок стоит сказать, что всем водителям следует постараться найти профессионального поставщика, дабы избежать летального исхода вашего автомобиля.','','Автозапчасти и правила их подбора?','Почти у каждого владельца авто рано или поздно возникает вопрос: какие из запчастей – оригинальные или неоригинальные – выбирать для обслуживания своего автомобиля. Рассмотрим разные точки зрения,','детали, автомобиля, оригиналов, деталей, запчасти, дороже, Среди, неоригинальные, аналогов, оригинальные, запчастей, производителя, стороны, нужных, каждого, марку, время, вашего, стоит, поздно','1','avtozapchasti-i-pravila-ih-podbora',0,1,1,1,0,1,'','',''),(7,'gordondalos','2015-11-11 18:54:13','Прежде чем запустить механизм автосервиса требуется составить бизнес-план, который бы учитывал все возможности предприятия и был рассчитан на получение прибыли. А если автосервис уже создан и поставлена задача существующую прибыль увеличить? Есть два пути: увеличить число клиентов или повысить стоимость работ, однако второе, скорее всего, приведёт к снижению числа обращений. Значит, нужно продумать другие варианты. Например, увеличить число клиентов, снизив при этом время работы с машинами.','Прежде чем запустить механизм автосервиса требуется составить бизнес-план, который бы учитывал все возможности предприятия и был рассчитан на получение прибыли. А если автосервис уже создан и поставлена задача существующую прибыль увеличить? Есть два пути: увеличить число клиентов или повысить стоимость работ, однако второе, скорее всего, приведёт к снижению числа обращений. Значит, нужно продумать другие варианты. Например, увеличить число клиентов, снизив при этом время работы с машинами.<br /><br />При планировании нужно учесть направленность автосервиса. Лучший вариант – предоставление полного комплекса услуг. Это означает, что коллектив должен быть укомплектован и специалистом-диагностиком ходовой части, и электриком, и рихтовщиком, и, разумеется, всем необходимым для работы оборудованием. При этом следует понимать, что к отрицательным результатам приведут и хороший специалист без оборудования и инструментов, и неумелый мастер, работающий на современном оборудовании. В то же время, узкоспециализированный автосервис, на первый взгляд может уменьшить число клиентов. Но информацию о хорошем обслуживании и распространять не придётся, поэтому число обращений в автосервис возрастёт. А вот если приобретённое для широкого круга работ оборудование будет простаивать, то его окупаемости и прибыльности автосервиса придётся ждать долго.<br /><br />При разработке бизнес-плана для автосервиса отдельной строкой следует выделить расходы на рекламу. На начальном этапе важно и название сервисного центра, и место размещения рекламной информации, и средства распространения рекламы: интернет, телевидение, радио, газеты. Хороший эффект даёт нестандартная реклама, к примеру, при раздаче клиентам сувенирных брелоков, или при наклейке стикеров на автомобили клиентов, которые взамен получают скидки по обслуживанию.<br /><br />Увеличение прибыли автосервиса можно добиться и довольно простым путём, с помощью обычной учётности. Если в электронную базу вносить данные о типе ремонта, времени его проведения, стоимости, то впоследствии можно легко выявить слабые места, и принять меры к улучшению обслуживания. <br /><br />Можно продумать также возможность сервисного обслуживания грузового транспорта, так как в настоящее время число СТО для грузовых автомобилей значительно снизилось. Перед тем, как закупать оборудование, следует произвести «разведку боем» по предприятиям, которые могут обслуживаться в сторонних автосервисах и попробовать заключить с ними предварительные соглашения, хотя бы устные.<br /><br />Значительно ускоряется работа автосервиса при наличии собственного склада самых ходовых запасных частей. Экономия времени складывается из-за отсутствия необходимости выезжать для закупки необходимых запчастей в магазин. Своевременная закупка деталей на собственный склад без спешки тоже даёт выигрыш по времени.<br /><br />На прибыль в равной степени влияет как месторасположение сервиса, так и умение и желание управляющего производить постоянные измерения. Всё любит счёт. Необходимо видеть результаты деятельности, чтобы сравнивать и понимать, есть улучшения, или нет. Простой пример: один из техцентров стабильно испытывал два дня в неделю спад клиентов. Для того, чтобы и эти дни были прибыльными, техцентр устанавливал скидку на запчасти, а диагностику и замену масла производил бесплатно. Постоянные измерения нужны и для принятия точно выверенных решений. В бизнесе нельзя основываться на эмоциях или интуиции. Любое принятие решения должно быть обосновано конкретными цифрами. Чтобы подсчитать месячную выручку автосервиса нужно знать три цифры: количество клиентов, среднюю стоимость услуги и количество оказанных услуг. Чем больше каждый из этих показателей, тем больше выручка, и, соответственно, выше прибыль. Очень важный показатель – прибыль одного клиента в год. Зачем нужна эта цифра? Для того чтобы рассчитать, сколько нужно вложить средств для привлечения клиентов, то бишь, на рекламу. Вот примерные минимальные расходы среднего автовладельца на обслуживание машины: мойка машины (за 12 раз в год) 3600 рублей; смена резины (дважды в год) 3000 рублей; замена масла и масляного фильтра (дважды в году) 1500 рублей; замена тормозных колодок (1 раз в год) 1000 рублей и «незамерзайка» на зиму 1000 рублей. Итого чуть больше 10 тыс. руб., при условии, что автомобиль не ломается. Вдобавок ко всему перечисленному клиенту можно предложить: замену масла, свечей, охлаждающей жидкости, топливного и воздушного фильтров, щёток стеклоочистителя, масла в КПП, тормозной жидкости и прокачку тормозов, химчистку, полировку, обслуживание кондиционера, проверку и регулировку развал-схождения. Получится, что клиент оставит в техцентре уже не 10, а 20 тысяч рублей. Отсюда вывод: если владелец автоцентра заинтересован в прибыли – он должен знать, сколько ему нужно вкладывать в рекламу для привлечения и удержания клиентов. И обязательно проверять, как та или иная реклама работает!<br /><br />При составлении бизнес-плана нужно учесть и постоянные изменения, которые происходят в автоотрасли, возможность внедрения новейших технологий. Ведь любой бизнес требует непрерывного расширения, развития, что в конечном итоге должно привести его к финансовой стабильности.','','Как увеличить прибыльность автосервиса','Прежде чем запустить механизм автосервиса требуется составить бизнес-план, который бы учитывал все возможности предприятия и был рассчитан на получение прибыли. А если автосервис уже создан и','клиентов, автосервиса, число, нужно, увеличить, рублей, прибыль, бизнес, масла, прибыли, время, автосервис, обращений, работ, продумать, работы, времени, чтобы, больше, можно','1','kak-uvelichit-pribylnost-avtoservisa',0,1,1,1,0,1,'','',''),(8,'gordondalos','2015-11-11 18:54:39','Что случается с людьми, когда у них начинаются проблемы с сердцем? Чаще всего после этого появляется много новых и разнообразных проблем, вплоть до смерти. Машина, так же как и человек имеет свое сердце – это ее двигатель, заботиться о котором должен владелец машины. Именно от его отношения к этой важной детали, будет зависеть, как долго его авто сможет нормально функционировать и его не придется сдавать в утиль из-за раннего «автоинфаркта».','Что случается с людьми, когда у них начинаются проблемы с сердцем? Чаще всего после этого появляется много новых и разнообразных проблем, вплоть до смерти. Машина, так же как и человек имеет свое сердце – это ее двигатель, заботиться о котором должен владелец машины. Именно от его отношения к этой важной детали, будет зависеть, как долго его авто сможет нормально функционировать и его не придется сдавать в утиль из-за раннего «автоинфаркта».<br /><br />Множество различных причин может повлиять на дееспособность двигателя. К ним относятся: условия эксплуатации, термический режим, общая нагруженность силового агрегата, качество масел, смазки и топлива, эффективность работы системы воздушной очистки и много чего прочего.<br /><br />Еще не придумали единого руководства по использованию автомобильных моторов. Общими рекомендациями являются проявление внимания, и бережное отношение к двигателю. Это и есть гарантия его продолжительной безотказной работы. Из общих рекомендаций можно выделить несколько более узких, о которых речь пойдет ниже.<br />Моторное масло<br /><br /><br />Масло низкого качества крайне негативно влияет на работу двигателя, и может даже загубить мотор навсегда. Здесь ключевым моментом является его своевременная замена. Рекомендации, которые даны в руководствах по эксплуатации к автомобилям всего лишь рекомендуют, но не обязывают соблюдать время замены. В данном случае работает правило – лучше раньше чем позже. Если в рекомендации стоит цифра пробега в 10 тыс км, то заменить масло можно уже через 7,5.<br /><br />Необходимо обращать внимание на то, насколько качественные ГСМ попадают в силовой агрегат. Нельзя игнорировать вязкость масла, различную для разных модификаций моторов. Для тех, кто не любит или не хочет задумываться над подобными вещами, можно посоветовать пользоваться всесезонными маслами, имеющими индекс вязкости 5W40, или синтетическими и полусинтетическими - 10W40.<br /><br />Для выпускаемого сегодня масла не имеет особого значения, в мотор какого типа оно будет залито, предназначенного для бензина или для дизельного топлива. Когда есть уверенность что масло действительно качественное, и сделано в соответствии со стандартами, наличие на бутылке пометки «diesel» перестает быть обязательным.<br />Система подачи топлива<br /><br /><br />Топливный фильтр имеет такие же рекомендательные сроки замены, как и масло – раз в 10 тыс км. Нельзя забывать и о сливе отстоя из фильтра. Иначе он будет забиваться, и система подачи топлива начнет быстро приходить в негодность из-за повышения сопротивления жидкостей.<br /><br />Хорошо если у владельца машины так же есть возможность пару раз в году снимать и промывать топливный бак. Актуальность данного мероприятия хорошо оценивается теми, кто хоть раз видел, что при этом выливается из бака. <br />Ремень ГРМ<br /><br /><br />Ремень ГРМ нуждается в замене раз в 60 тыс км. Обычно в инструкции по эксплуатации к авто пишут предельно допустимый километраж. Исходя из этого, не нужно возлагать больших надежд на рекомендованные в инструкции цифры пробега без поломок.<br /><br />Водители, у которых рвется ремень ГРМ или ломается натяжной ролик практически обречены на крупные финансовые затраты.<br />Качественное обслуживание двигателя<br /><br /><br />Ни в коем разе не надо покупать низкокачественные дешевые запасные части для двигателя. Экономия, как например, при покупке запчастей для ходовой, здесь совсем не уместна. К качеству моторных запчастей должны предъявляться повышенные требования.<br /><br />Нельзя экономить и на ремонтных работах. Ремонт двигателя в сервисном центре специализирующимся на этой проблеме, обычно стоит вдвое дороже. Однако, ремонт «в гаражах» в итоге может обойтись намного дороже, что заставит владельца сто раз пожалеть о своем решении и скупости.<br />Рабочая температура двигателя<br /><br /><br />Пожалуй, у каждого автолюбителя свое мнение по поводу прогрева двигателя, и ни одно из них нельзя назвать безосновательным. Однако, все-таки большинство экспертов согласны с тем, что двигатель все же нужно прогревать, но лишь ограниченное время. В зимнее время, решив куда-то отправиться, можно запустить мотор и начать очищать авто от накопившегося снега и льда. Пока владельцем выполняется задача по очистке, двигатель плавно переходит от чихания к урчанию.<br /><br />Необходимо проследить за временем работы мотора на высоких оборотах, оно должно быть ограничено. Обороты свыше 4 тыс, уже считаются повышенными нагрузками, от которых страдают цилиндры, поршни и другие механизмы. Поэтому, когда тахометр долгое время показывает свыше 4 тыс, можно с уверенностью говорить о том, что в это время происходит износ двигателя и как следствие снижение его ресурсоемкости.<br />Двигатель и вода<br /><br /><br />Двигатель требует от водителя внимательности на дорогах независимо от того, в какой тип машины он установлен. Даже у очень выносливых внедорожником, имеются слабые места. Любители езды по лужам и речкам, каждый раз рискуют здоровьем своего двигателя, получением им гидроудара. Если в камеру сгорания проникнет вода, мотор заглохнет, и потом можно еще долго пытаться снова его завести.<br /><br />Гидроудар это неоднозначная проблема. Потому как, двигатель должен иметь достаточно высокие обороты, для того чтоб воспрепятствовать попаданию воды внутрь себя сквозь трубу выхлопа. Но в то же время, чем выше обороты, тем выше вероятность летальных последствий для двигателя после гидроудара. Нужно искать копмпромиссные решения. Например, ездить по лужам на небольшой скорости, достаточной для того, чтобы мотор не заглох.<br />Внимательность к мотору<br /><br /><br />До того как мотор будет заведен, обязательно нужно проверить количество масла в двигателе. Есть вероятность, что в картере его может совсем не оказаться. Качественная смазка в работе двигателя имеет очень большое значение.<br /><br />Так же важно и количество антифриза в охлаждающей системе. Если охлаждающая жидкость находится в меньшем количестве чем нужно, то может возникнуть некоторая проблема при его доливе. Так как холодный антифриз не должен заливаться в горячую систему. Это же правило работает и в противоположном направлении. Уже остывший мотор может плохо отреагировать на залив нагретого антифриза. Если же все-таки придется доливать, то важно чтобы температурная разница между мотором и охлаждающей жидкостью лежала в пределе 15 градусов Цельсия.<br /><br />Кроме этого, до того как мотор будет запущен, должны быть проверены элементы в системе впуска на предмет их герметичного соединения, и элементы системы фильтрации.<br /><br />В том случае, когда мотор не хочет запускаться, нужно подумать о стартере. «Помучив» стартер секунд 10, нужно дать ему остыть с пол минуты, и только потом пробовать снова.<br /><br />Все эти рекомендации, так или иначе, сводятся к простой порядочности касательно собственного авто. Внимательное отношение к мотору может только поспособствовать его продолжительной и здоровой жизни.','img|<!--MBegin:http://balticadle.greensoft.kg/uploads/posts/2015-11/1447304102_compressornye41.jpg&#124;--><a href=\"http://balticadle.greensoft.kg/uploads/posts/2015-11/1447304102_compressornye41.jpg\" rel=\"highslide\" class=\"highslide\"><img src=\"http://balticadle.greensoft.kg/uploads/posts/2015-11/medium/1447304102_compressornye41.jpg\" alt=\'Правильная эксплуатация двигателя\' title=\'Правильная эксплуатация двигателя\'  /></a><!--MEnd-->','Правильная эксплуатация двигателя','Что случается с людьми, когда у них начинаются проблемы с сердцем? Чаще всего после этого появляется много новых и разнообразных проблем, вплоть до смерти. Машина, так же как и человек имеет свое','двигателя, мотор, может, можно, нужно, будет, время, двигатель, имеет, когда, масло, топлива, машины, должен, этого, масла, долго, работы, эксплуатации, Нельзя','1','pravilnaya-ekspluataciya-dvigatelya',0,0,1,1,0,1,'','',''),(9,'gordondalos','2015-11-11 18:55:04','Еще совсем недавно турбина или компрессор считались редкостью и некой роскошью для автомобилистов, встретить которую можно было лишь на спортивном или тюнингованном автомобиле. Сегодня же данная роскошь является обыденной, так как заводы изготовители сами устанавливают приборы для увеличения мощности двигателя.','Еще совсем недавно турбина или компрессор считались редкостью и некой роскошью для автомобилистов, встретить которую можно было лишь на спортивном или тюнингованном автомобиле. Сегодня же данная роскошь является обыденной, так как заводы изготовители сами устанавливают приборы для увеличения мощности двигателя. <br /><br />Стоит отметить, что автомобильные двигатели в основном делят на две группы это атмосферные и надувные, которые отличаются по своей конструкции, и дают разный прирост мощности. Сегодня распространены такие виды двигателей как атмосферные, турбированные и компрессорные, которые имеют свои отличительные особенности.<br /><br />Одним из самых сложных по устройству является атмосферный двигатель. Одной из отличительных особенностей является подача топливно-воздушной смеси в цилиндр, которая происходит без сопротивления, что оказывает влияние на коллектор. Распределительный вал требует особо тонкой настройки, что бы открытие впускного клапана происходило максимально длительное время. Ход поршня и диаметр цилиндра должен быть увеличен, что бы дать гораздо больше мощности двигателя. Все это подчеркивает сложность конструкции, но эластичную и отзывчивую работу атмосферного двигателя. Изюминкой такого двигателя многие отмечают сохранение запаса мощности при любых оборотах, а так же мгновенную реакцию при нажатии педали газа, все это позволяет набрать максимальное количество оборотов за считанное время, в отличие от других двигателей. Однако, не смотря на свою уникальность, данный двигатель обладает своими недостатками, среди которых высоких расход топлива и невысокий ресурс мотора.<br /><br />Большинство автовладельцев отмечают классикой турбированный двигатель, который обладает своими поклонниками. По принципу работы турбированный двигатель схож с атмосферным, отличия только в давлении, которое можно увеличить или нет, за счет работы турбины, это и дает прирост мощности. Несмотря на популярность, турбированные двигатели имеют свои недостатки: <br /><br />- увеличение мощности за счет турбины происходит только на больших оборотах, в противном случае, ощущения турбины нет;<br /><br />- после максимального нажатия педали газа, прирост мощности турбина дает спустя несколько секунд, такое явление называется турбопровал. С одной стороны это мелочь для езды по городу, но в автоспорте это огромный минус;<br /><br />- турбированные двигатели отличаются особой чувствительностью к смазочной системе. <br /><br />Принцип работы компрессорного двигателя имеет свои особенности. По своей сущности компрессор играет роль системы подачи воздуха на подобии механического нагнетателя, который приходит в движение за счет ременного привода. То есть прямая пропорция: больше оборотов – больше мощность. Компрессор осуществляет не только подачу топлива под давлением в цилиндр, а так же продувает их, в то время когда впускной и выпускной клапаны наполовину открыты и закрыты соответственно. За счет такого принципа действия компрессора, двигатель работает максимально возможно. Однако, наиболее ярко это можно почувствовать лишь на двигателях большого объема, что не является экономичным и выгодным.<br /><br /><!--TBegin:http://balticadle.greensoft.kg/uploads/posts/2015-11/1447304063_23_image001_small.png|--><a href=\"http://balticadle.greensoft.kg/uploads/posts/2015-11/1447304063_23_image001_small.png\" rel=\"highslide\" class=\"highslide\"><img src=\"http://balticadle.greensoft.kg/uploads/posts/2015-11/thumbs/1447304063_23_image001_small.png\" alt=\'Виды двигателей - атмосферные, турбированные и компрессорные. Виды двигателей - атмосферные, турбированные и компрессорные.\' title=\'Виды двигателей - атмосферные, турбированные и компрессорные. Виды двигателей - атмосферные, турбированные и компрессорные.\'  /></a><!--TEnd--><br /><!--MBegin:http://balticadle.greensoft.kg/uploads/posts/2015-11/1447304111_1374186881_motor_00.jpg|--><a href=\"http://balticadle.greensoft.kg/uploads/posts/2015-11/1447304111_1374186881_motor_00.jpg\" rel=\"highslide\" class=\"highslide\"><img src=\"http://balticadle.greensoft.kg/uploads/posts/2015-11/medium/1447304111_1374186881_motor_00.jpg\" alt=\'Виды двигателей - атмосферные, турбированные и компрессорные. Виды двигателей - атмосферные, турбированные и компрессорные.\' title=\'Виды двигателей - атмосферные, турбированные и компрессорные. Виды двигателей - атмосферные, турбированные и компрессорные.\'  /></a><!--MEnd--><br /><!--MBegin:http://balticadle.greensoft.kg/uploads/posts/2015-11/1447304043_compressornye1.jpg|--><a href=\"http://balticadle.greensoft.kg/uploads/posts/2015-11/1447304043_compressornye1.jpg\" rel=\"highslide\" class=\"highslide\"><img src=\"http://balticadle.greensoft.kg/uploads/posts/2015-11/medium/1447304043_compressornye1.jpg\" alt=\'Виды двигателей - атмосферные, турбированные и компрессорные. Виды двигателей - атмосферные, турбированные и компрессорные.\' title=\'Виды двигателей - атмосферные, турбированные и компрессорные. Виды двигателей - атмосферные, турбированные и компрессорные.\'  /></a><!--MEnd--><br /><!--MBegin:http://balticadle.greensoft.kg/uploads/posts/2015-11/1447304078_compressornye3.jpg|--><a href=\"http://balticadle.greensoft.kg/uploads/posts/2015-11/1447304078_compressornye3.jpg\" rel=\"highslide\" class=\"highslide\"><img src=\"http://balticadle.greensoft.kg/uploads/posts/2015-11/medium/1447304078_compressornye3.jpg\" alt=\'Виды двигателей - атмосферные, турбированные и компрессорные. Виды двигателей - атмосферные, турбированные и компрессорные.\' title=\'Виды двигателей - атмосферные, турбированные и компрессорные. Виды двигателей - атмосферные, турбированные и компрессорные.\'  /></a><!--MEnd--><br /><!--MBegin:http://balticadle.greensoft.kg/uploads/posts/2015-11/1447304095_compressornye15.jpg|--><a href=\"http://balticadle.greensoft.kg/uploads/posts/2015-11/1447304095_compressornye15.jpg\" rel=\"highslide\" class=\"highslide\"><img src=\"http://balticadle.greensoft.kg/uploads/posts/2015-11/medium/1447304095_compressornye15.jpg\" alt=\'Виды двигателей - атмосферные, турбированные и компрессорные. Виды двигателей - атмосферные, турбированные и компрессорные.\' title=\'Виды двигателей - атмосферные, турбированные и компрессорные. Виды двигателей - атмосферные, турбированные и компрессорные.\'  /></a><!--MEnd--><br /><!--MBegin:http://balticadle.greensoft.kg/uploads/posts/2015-11/1447304102_compressornye41.jpg|--><a href=\"http://balticadle.greensoft.kg/uploads/posts/2015-11/1447304102_compressornye41.jpg\" rel=\"highslide\" class=\"highslide\"><img src=\"http://balticadle.greensoft.kg/uploads/posts/2015-11/medium/1447304102_compressornye41.jpg\" alt=\'Виды двигателей - атмосферные, турбированные и компрессорные. Виды двигателей - атмосферные, турбированные и компрессорные.\' title=\'Виды двигателей - атмосферные, турбированные и компрессорные. Виды двигателей - атмосферные, турбированные и компрессорные.\'  /></a><!--MEnd--><br /><!--MBegin:http://balticadle.greensoft.kg/uploads/posts/2015-11/1447304049_f_foto325_20110305082647.jpg|--><a href=\"http://balticadle.greensoft.kg/uploads/posts/2015-11/1447304049_f_foto325_20110305082647.jpg\" rel=\"highslide\" class=\"highslide\"><img src=\"http://balticadle.greensoft.kg/uploads/posts/2015-11/medium/1447304049_f_foto325_20110305082647.jpg\" alt=\'Виды двигателей - атмосферные, турбированные и компрессорные. Виды двигателей - атмосферные, турбированные и компрессорные.\' title=\'Виды двигателей - атмосферные, турбированные и компрессорные. Виды двигателей - атмосферные, турбированные и компрессорные.\'  /></a><!--MEnd--><br /><!--MBegin:http://balticadle.greensoft.kg/uploads/posts/2015-11/1447304107_honda-vtec-turbo-engine-2.jpg|--><a href=\"http://balticadle.greensoft.kg/uploads/posts/2015-11/1447304107_honda-vtec-turbo-engine-2.jpg\" rel=\"highslide\" class=\"highslide\"><img src=\"http://balticadle.greensoft.kg/uploads/posts/2015-11/medium/1447304107_honda-vtec-turbo-engine-2.jpg\" alt=\'Виды двигателей - атмосферные, турбированные и компрессорные. Виды двигателей - атмосферные, турбированные и компрессорные.\' title=\'Виды двигателей - атмосферные, турбированные и компрессорные. Виды двигателей - атмосферные, турбированные и компрессорные.\'  /></a><!--MEnd--><br /><!--MBegin:http://balticadle.greensoft.kg/uploads/posts/2015-11/1447304078_hqdefault3.jpg|--><a href=\"http://balticadle.greensoft.kg/uploads/posts/2015-11/1447304078_hqdefault3.jpg\" rel=\"highslide\" class=\"highslide\"><img src=\"http://balticadle.greensoft.kg/uploads/posts/2015-11/medium/1447304078_hqdefault3.jpg\" alt=\'Виды двигателей - атмосферные, турбированные и компрессорные. Виды двигателей - атмосферные, турбированные и компрессорные.\' title=\'Виды двигателей - атмосферные, турбированные и компрессорные. Виды двигателей - атмосферные, турбированные и компрессорные.\'  /></a><!--MEnd--><br /><!--MBegin:http://balticadle.greensoft.kg/uploads/posts/2015-11/1447304032_information_items_property_7370.jpg|--><a href=\"http://balticadle.greensoft.kg/uploads/posts/2015-11/1447304032_information_items_property_7370.jpg\" rel=\"highslide\" class=\"highslide\"><img src=\"http://balticadle.greensoft.kg/uploads/posts/2015-11/medium/1447304032_information_items_property_7370.jpg\" alt=\'Виды двигателей - атмосферные, турбированные и компрессорные. Виды двигателей - атмосферные, турбированные и компрессорные.\' title=\'Виды двигателей - атмосферные, турбированные и компрессорные. Виды двигателей - атмосферные, турбированные и компрессорные.\'  /></a><!--MEnd--><br /><!--MBegin:http://balticadle.greensoft.kg/uploads/posts/2015-11/1447304024_motornaya-ustanoka-yamz-238ak-b-u.jpg|--><a href=\"http://balticadle.greensoft.kg/uploads/posts/2015-11/1447304024_motornaya-ustanoka-yamz-238ak-b-u.jpg\" rel=\"highslide\" class=\"highslide\"><img src=\"http://balticadle.greensoft.kg/uploads/posts/2015-11/medium/1447304024_motornaya-ustanoka-yamz-238ak-b-u.jpg\" alt=\'Виды двигателей - атмосферные, турбированные и компрессорные. Виды двигателей - атмосферные, турбированные и компрессорные.\' title=\'Виды двигателей - атмосферные, турбированные и компрессорные. Виды двигателей - атмосферные, турбированные и компрессорные.\'  /></a><!--MEnd--><br /><!--MBegin:http://balticadle.greensoft.kg/uploads/posts/2015-11/1447304050_turbinye.jpg|--><a href=\"http://balticadle.greensoft.kg/uploads/posts/2015-11/1447304050_turbinye.jpg\" rel=\"highslide\" class=\"highslide\"><img src=\"http://balticadle.greensoft.kg/uploads/posts/2015-11/medium/1447304050_turbinye.jpg\" alt=\'Виды двигателей - атмосферные, турбированные и компрессорные. Виды двигателей - атмосферные, турбированные и компрессорные.\' title=\'Виды двигателей - атмосферные, турбированные и компрессорные. Виды двигателей - атмосферные, турбированные и компрессорные.\'  /></a><!--MEnd--><br /><!--MBegin:http://balticadle.greensoft.kg/uploads/posts/2015-11/1447304084_turbinye1.jpg|--><a href=\"http://balticadle.greensoft.kg/uploads/posts/2015-11/1447304084_turbinye1.jpg\" rel=\"highslide\" class=\"highslide\"><img src=\"http://balticadle.greensoft.kg/uploads/posts/2015-11/medium/1447304084_turbinye1.jpg\" alt=\'Виды двигателей - атмосферные, турбированные и компрессорные. Виды двигателей - атмосферные, турбированные и компрессорные.\' title=\'Виды двигателей - атмосферные, турбированные и компрессорные. Виды двигателей - атмосферные, турбированные и компрессорные.\'  /></a><!--MEnd--><br /><!--MBegin:http://balticadle.greensoft.kg/uploads/posts/2015-11/1447304084_ustrojstvo-tnvd-jamz-238_20150311131055.jpg|--><a href=\"http://balticadle.greensoft.kg/uploads/posts/2015-11/1447304084_ustrojstvo-tnvd-jamz-238_20150311131055.jpg\" rel=\"highslide\" class=\"highslide\"><img src=\"http://balticadle.greensoft.kg/uploads/posts/2015-11/medium/1447304084_ustrojstvo-tnvd-jamz-238_20150311131055.jpg\" alt=\'Виды двигателей - атмосферные, турбированные и компрессорные. Виды двигателей - атмосферные, турбированные и компрессорные.\' title=\'Виды двигателей - атмосферные, турбированные и компрессорные. Виды двигателей - атмосферные, турбированные и компрессорные.\'  /></a><!--MEnd-->','img|<!--MBegin:http://balticadle.greensoft.kg/uploads/posts/2015-11/1447304111_1374186881_motor_00.jpg&#124;--><a href=\"http://balticadle.greensoft.kg/uploads/posts/2015-11/1447304111_1374186881_motor_00.jpg\" rel=\"highslide\" class=\"highslide\"><img src=\"http://balticadle.greensoft.kg/uploads/posts/2015-11/medium/1447304111_1374186881_motor_00.jpg\" alt=\'Виды двигателей - атмосферные, турбированные и компрессорные. Виды двигателей - атмосферные, турбированные и компрессорные.\' title=\'Виды двигателей - атмосферные, турбированные и компрессорные. Виды двигателей - атмосферные, турбированные и компрессорные.\'  /></a><!--MEnd-->','Виды двигателей - атмосферные, турбированные и компрессорные. Виды двигателей - атмосферные, турбированные и компрессорные.','Еще совсем недавно турбина или компрессор считались редкостью и некой роскошью для автомобилистов, встретить которую можно было лишь на спортивном или тюнингованном автомобиле. Сегодня же данная','мощности, двигателя, является, двигатель, можно, больше, Сегодня, турбина, компрессор, турбины, турбированные, работы, прирост, двигатели, время, только, отличаются, конструкции, имеют, топлива','1','vidy-dvigateley-atmosfernye-turbirovannye-i-kompressornye-vidy-dvigateley-atmosfernye-turbirovannye-i-kompressornye',0,0,1,1,0,1,'','','');
/*!40000 ALTER TABLE `dle_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_post_extras`
--

DROP TABLE IF EXISTS `dle_post_extras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_post_extras` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `news_id` int(11) NOT NULL DEFAULT '0',
  `news_read` int(11) NOT NULL DEFAULT '0',
  `allow_rate` tinyint(1) NOT NULL DEFAULT '1',
  `rating` int(11) NOT NULL DEFAULT '0',
  `vote_num` int(11) NOT NULL DEFAULT '0',
  `votes` tinyint(1) NOT NULL DEFAULT '0',
  `view_edit` tinyint(1) NOT NULL DEFAULT '0',
  `disable_index` tinyint(1) NOT NULL DEFAULT '0',
  `related_ids` varchar(255) NOT NULL DEFAULT '',
  `access` varchar(150) NOT NULL DEFAULT '',
  `editdate` int(11) NOT NULL DEFAULT '0',
  `editor` varchar(40) NOT NULL DEFAULT '',
  `reason` varchar(255) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`eid`),
  KEY `news_id` (`news_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 AVG_ROW_LENGTH=64;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_post_extras`
--

LOCK TABLES `dle_post_extras` WRITE;
/*!40000 ALTER TABLE `dle_post_extras` DISABLE KEYS */;
INSERT INTO `dle_post_extras` VALUES (4,4,862,1,0,0,0,0,0,'5,8,7,6,9','',1447304223,'gordondalos','',1),(5,5,5,1,0,0,0,0,0,'6,4,8,7,9','',1447304214,'gordondalos','',1),(6,6,1,1,0,0,0,0,0,'5,8,9,4,7','',1447304195,'gordondalos','',1),(7,7,9,1,0,0,0,0,0,'9,6,8,5','',1447304208,'gordondalos','',1),(8,8,10,0,0,0,0,0,0,'9,5,4,6,7','',1447310452,'gordondalos','',1),(9,9,26,0,0,0,0,0,0,'8,4,5,6,7','',1447310364,'gordondalos','',1);
/*!40000 ALTER TABLE `dle_post_extras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_post_log`
--

DROP TABLE IF EXISTS `dle_post_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_post_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `news_id` int(11) NOT NULL DEFAULT '0',
  `expires` varchar(15) NOT NULL DEFAULT '',
  `action` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `expires` (`expires`),
  KEY `news_id` (`news_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_post_log`
--

LOCK TABLES `dle_post_log` WRITE;
/*!40000 ALTER TABLE `dle_post_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `dle_post_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_question`
--

DROP TABLE IF EXISTS `dle_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(255) NOT NULL DEFAULT '',
  `answer` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_question`
--

LOCK TABLES `dle_question` WRITE;
/*!40000 ALTER TABLE `dle_question` DISABLE KEYS */;
/*!40000 ALTER TABLE `dle_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_read_log`
--

DROP TABLE IF EXISTS `dle_read_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_read_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `news_id` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `ip` (`ip`),
  KEY `news_id` (`news_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_read_log`
--

LOCK TABLES `dle_read_log` WRITE;
/*!40000 ALTER TABLE `dle_read_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `dle_read_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_rss`
--

DROP TABLE IF EXISTS `dle_rss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_rss` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `allow_main` tinyint(1) NOT NULL DEFAULT '0',
  `allow_rating` tinyint(1) NOT NULL DEFAULT '0',
  `allow_comm` tinyint(1) NOT NULL DEFAULT '0',
  `text_type` tinyint(1) NOT NULL DEFAULT '0',
  `date` tinyint(1) NOT NULL DEFAULT '0',
  `search` text NOT NULL,
  `max_news` tinyint(3) NOT NULL DEFAULT '0',
  `cookie` text NOT NULL,
  `category` smallint(5) NOT NULL DEFAULT '0',
  `lastdate` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 AVG_ROW_LENGTH=184;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_rss`
--

LOCK TABLES `dle_rss` WRITE;
/*!40000 ALTER TABLE `dle_rss` DISABLE KEYS */;
INSERT INTO `dle_rss` VALUES (1,'http://dle-news.ru/rss.xml','Официальный сайт DataLife Engine',1,1,1,1,1,'<div class=\"full-post-content row\">{get}</div><div class=\"full-post-footer ignore-select\">',5,'',1,0);
/*!40000 ALTER TABLE `dle_rss` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_rssinform`
--

DROP TABLE IF EXISTS `dle_rssinform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_rssinform` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `tag` varchar(40) NOT NULL DEFAULT '',
  `descr` varchar(255) NOT NULL DEFAULT '',
  `category` varchar(200) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `template` varchar(40) NOT NULL DEFAULT '',
  `news_max` smallint(5) NOT NULL DEFAULT '0',
  `tmax` smallint(5) NOT NULL DEFAULT '0',
  `dmax` smallint(5) NOT NULL DEFAULT '0',
  `approve` tinyint(1) NOT NULL DEFAULT '1',
  `rss_date_format` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 AVG_ROW_LENGTH=104;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_rssinform`
--

LOCK TABLES `dle_rssinform` WRITE;
/*!40000 ALTER TABLE `dle_rssinform` DISABLE KEYS */;
INSERT INTO `dle_rssinform` VALUES (1,'dle','Новости с Яндекса','0','http://news.yandex.ru/index.rss','informer',3,0,200,1,'j F Y H:i');
/*!40000 ALTER TABLE `dle_rssinform` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_sendlog`
--

DROP TABLE IF EXISTS `dle_sendlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_sendlog` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user` varchar(40) NOT NULL DEFAULT '',
  `date` int(11) unsigned NOT NULL DEFAULT '0',
  `flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `date` (`date`),
  KEY `flag` (`flag`),
  KEY `user` (`user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_sendlog`
--

LOCK TABLES `dle_sendlog` WRITE;
/*!40000 ALTER TABLE `dle_sendlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `dle_sendlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_social_login`
--

DROP TABLE IF EXISTS `dle_social_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_social_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` varchar(40) NOT NULL DEFAULT '',
  `uid` int(11) NOT NULL DEFAULT '0',
  `password` varchar(32) NOT NULL DEFAULT '',
  `provider` varchar(15) NOT NULL DEFAULT '',
  `wait` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `sid` (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_social_login`
--

LOCK TABLES `dle_social_login` WRITE;
/*!40000 ALTER TABLE `dle_social_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `dle_social_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_spam_log`
--

DROP TABLE IF EXISTS `dle_spam_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_spam_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(40) NOT NULL DEFAULT '',
  `is_spammer` tinyint(1) NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL DEFAULT '',
  `date` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ip` (`ip`),
  KEY `is_spammer` (`is_spammer`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_spam_log`
--

LOCK TABLES `dle_spam_log` WRITE;
/*!40000 ALTER TABLE `dle_spam_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `dle_spam_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_static`
--

DROP TABLE IF EXISTS `dle_static`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_static` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `descr` varchar(255) NOT NULL DEFAULT '',
  `template` text NOT NULL,
  `allow_br` tinyint(1) NOT NULL DEFAULT '0',
  `allow_template` tinyint(1) NOT NULL DEFAULT '0',
  `grouplevel` varchar(100) NOT NULL DEFAULT 'all',
  `tpl` varchar(40) NOT NULL DEFAULT '',
  `metadescr` varchar(200) NOT NULL DEFAULT '',
  `metakeys` text NOT NULL,
  `views` mediumint(8) NOT NULL DEFAULT '0',
  `template_folder` varchar(50) NOT NULL DEFAULT '',
  `date` int(11) unsigned NOT NULL DEFAULT '0',
  `metatitle` varchar(255) NOT NULL DEFAULT '',
  `allow_count` tinyint(1) NOT NULL DEFAULT '1',
  `sitemap` tinyint(1) NOT NULL DEFAULT '1',
  `disable_index` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  FULLTEXT KEY `template` (`template`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 AVG_ROW_LENGTH=2836;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_static`
--

LOCK TABLES `dle_static` WRITE;
/*!40000 ALTER TABLE `dle_static` DISABLE KEYS */;
INSERT INTO `dle_static` VALUES (1,'dle-rules-page','Общие правила на сайте','<b>Общие правила поведения на сайте:</b><br /><br />Начнем с того, что на сайте общаются сотни людей, разных религий и взглядов, и все они являются полноправными посетителями нашего сайта, поэтому если мы хотим чтобы это сообщество людей функционировало нам и необходимы правила. Мы настоятельно рекомендуем прочитать настоящие правила, это займет у вас всего минут пять, но сбережет нам и вам время и поможет сделать сайт более интересным и организованным.<br /><br />Начнем с того, что на нашем сайте нужно вести себя уважительно ко всем посетителям сайта. Не надо оскорблений по отношению к участникам, это всегда лишнее. Если есть претензии - обращайтесь к Админам или Модераторам (воспользуйтесь личными сообщениями). Оскорбление других посетителей считается у нас одним из самых тяжких нарушений и строго наказывается администрацией. <b>У нас строго запрещен расизм, религиозные и политические высказывания.</b> Заранее благодарим вас за понимание и за желание сделать наш сайт более вежливым и дружелюбным.<br /><br /><b>На сайте строго запрещено:</b> <br /><br />- сообщения, не относящиеся к содержанию статьи или к контексту обсуждения<br />- оскорбление и угрозы в адрес посетителей сайта<br />- в комментариях запрещаются выражения, содержащие ненормативную лексику, унижающие человеческое достоинство, разжигающие межнациональную рознь<br />- спам, а также реклама любых товаров и услуг, иных ресурсов, СМИ или событий, не относящихся к контексту обсуждения статьи<br /><br />Давайте будем уважать друг друга и сайт, на который Вы и другие читатели приходят пообщаться и высказать свои мысли. Администрация сайта оставляет за собой право удалять комментарии или часть комментариев, если они не соответствуют данным требованиям.<br /><br />При нарушении правил вам может быть дано <b>предупреждение</b>. В некоторых случаях может быть дан бан <b>без предупреждений</b>. По вопросам снятия бана писать администратору.<br /><br /><b>Оскорбление</b> администраторов или модераторов также караются <b>баном</b> - уважайте чужой труд.<br /><br /><div align=\"center\">{ACCEPT-DECLINE}</div>',1,1,'all','','Общие правила','Общие правила',0,'',1447152991,'',1,1,0),(2,'o-kompanii','О Компании','На правах официального дилерства ООО «Силовые агрегаты- группы ГАЗ», компания ООО «Балтспецсервис» предлагает к реализации и поставке ряд агрегативных запчастей и действующего оборудования в Москве. На практичных и выгодных условиях можно:<br /><br /><ul><li>купить двигатель ЯМЗ, ТМЗ, ЯЗДА и УМЗ;</li><br /><li>заказать ремкомплекты двигателя выше представленных марок;</li><br /><li>приобрести запчасти для сельскохозяйственной и автотракторной техники — БЕЛАЗ, КРАЗ, УРАЛ, МАЗ, МТЗ, ХТЗ, Кировец;</li><br /><li>а также, купить дизельные электростанции, мощность которых составляет от 30 до 315 кВт.</li><br /></ul>Дополнительно компания занимается установкой электростанций в контейнер типа \\\"Север\\\". Он может быть оборудован шасси, системой пожаротушения, утепления и т.д.<br />Для того чтобы ознакомиться с расценками и номенклатурой рекомендуется подробно изучить раздел сайта под названием \\\"Прайс\\\". Но в любом случае, стоит акцентировать внимание на том, что ООО «Балтспецсервис» специализируется на реализации оригинальных запчастей к любым видам техники.<br />Клиентам компании предоставляется удобный сервис, включающий подробные консультации технического характера и доставку любым видом транспорта, в том числе с возможностью самовывоза со склада в Москве. </p>',1,1,'all','','Информация о компании','компания, техники, «Балтспецсервис», любым, Москве, запчастей, реализации, раздел, названием, сайта, Прайс, акцентировать, стоит, случае, любом, изучить, рекомендуется, утепления, пожаротушения, системой',518,'',1447168065,'',1,1,0),(3,'katalog-produkcii','Каталог Продукции','<ul><li>- Каталог изделий - ЯМЗ - 2008 <a href=\\\"#\\\">(скачать)</a></li><br /><li>- Каталог изделий ЯЗДА - 2008 <a href=\\\"#\\\">(скачать)</a></li></ul>Наше предприятие способно предложить полный ассортимент продукции ведущих автомобилестроительных заводов страны, производящих тяжелые грузовики, различную специальную, строительную технику. У нас вы найдете по наиболее оптимальным ценам любые запчасти ЯМЗ, от двигателей в сборе, до ремкомплектов. Предлагаемая топливная аппаратура ЯМЗ обеспечивается в полной мере всеми гарантийными обязательствами и в самый кратчайший срок может быть поставлена клиентам<br /><br />Наша складская программа позволяет целиком закрыть потребности ведущих автотранспортных, строительных, а также дорожных компаний. Мы являемся стабильным, проверенным партнером для большинства известных компаний, благодаря постоянному наличию качественных запасных частей, комплектующих. Наши дилерские соглашения со многими заводами-производителями позволяют удерживать самые оптимальные цены для потребителей в Москве и регионах, на сертифицированную заводскую продукцию. Независимо от того, какие потребности периодически возникают у наших партнеров, менеджеры компании одинаково быстро и квалифицированно их решают. Все компании точно в срок получат такие расходники, как фильтры МАЗ и сложные дизельные электроагрегаты.<br /><br /> Сотрудники компании быстро отгрузят даже дизельные электростанции ЯМЗ со всеми необходимыми гарантийными обязательствами. Каталог предлагаемых готовых изделий, запчастей, комплектующих и расходных материалов, позволяет достаточно легко подобрать все необходимое для обеспечения бесперебойной работы автопарков, имеющих в своей структуре тяжелую и спецтехнику. В нашем прайс-листе клиенты могут убедиться в привлекательном уровне ценообразования. Это позволяет достаточно серьезно сэкономить средства, необходимые для обслуживания, ремонта техники. Сотрудничество с нами заметно повышает уровень рентабельности автопарков.<br /><br /><ul><br /><li> <a href=\\\"#\\\">Топливная аппаратура ЯЗДА</a> </li><br />  <li><a href=\\\"#\\\">Купить двигатель ЯМЗ</a> </li><br /><li> <a href=\\\"#\\\">Ремкомплекты двигателя</a> </li><br /><li><a href=\\\"#\\\">Дизельные электостанции ЯМЗ</a></li><br /><li><a href=\\\"#\\\">Фильтры МАЗ</a> </li><br /><li><a href=\\\"#\\\">Запчасти ЯМЗ</a></li><br /> </ul>',1,1,'all','katalog','Каталог Продукции','позволяет, компании, изделий, Каталог, компаний, обязательствами, всеми, дизельные, достаточно, аппаратура, гарантийными, ведущих, автопарков, скачать, потребности, комплектующих, быстро, запчастей, расходных, готовых',1395,'',1447174211,'',1,1,0),(4,'vakansii','Вакансии','<p><br />                    Приглашаем<br />                    <b><br />                    \\\"Менеджера по продаже запасных частей к отечественным грузовым автомобилям\\\",<br />                    </b><br />                    с опытом работы, оформление по ТК РФ.<br />                    График 5/2 с 9-00 до 17-30.<br />                    Место работы - Московская область, Мытищинский район, деревня Грибки, д. 64 А<br />                   <br /><br /><br />                    З/п от 40 000 руб.<br />                    <br /><br /><br />                    8(916)159-85-08<br />                </p>',1,1,'all','vakansii','Приглашаем                                          Менеджера по продаже запасных частей к отечественным грузовым автомобилям,                                          с опытом работы, оформление по','работы, Московская, Место, График, область, Мытищинский, Грибки, деревня, район, оформление, Приглашаем, частей, запасных, продаже, отечественным, грузовым, опытом, автомобилям, Менеджера',441,'',1447175199,'',1,1,0),(5,'kontakty','Контакты','<p> ООО «БАЛТСПЕЦСЕРВИС»</p><br /><br />141044 , Московская область, Мытищински район, деревня Грибки, д.64 А     <br />              <br /><b>  Тел:</b> +7(495)725-06-11 <br /><br /><b>E-mail:</b> infobss1@mail.ru<br /><br /> <div class=\\\"map-wrap\\\">                   <br />   <iframe src=\"https://www.google.com/maps/d/u/0/embed?mid=zCCe1nOMCCUk.k9sRAk7YmcHI\" width=\"100%\" height=\"300\"></iframe><br /> </div><br />               <br />                <div class=\\\"map-wrap\\\" style=\\\"width:100%\\\"><br />                   <!--MBegin:http://localhost/baltica_dle/uploads/posts/2015-11/1447175610_map2.png|--><a href=\"http://localhost/baltica_dle/uploads/posts/2015-11/1447175610_map2.png\" rel=\"highslide\" class=\"highslide\"><img src=\"http://localhost/baltica_dle/uploads/posts/2015-11/medium/1447175610_map2.png\" alt=\'\' title=\'\'  /></a><!--MEnd--><br />                </div>',1,1,'all','','Контакты                                   ООО «БАЛТСПЕЦСЕРВИС»                  141044 Московская область, Мытищински район, деревня Грибки, д.64 А                                           Тел:','infobss1, Грибки, Скачать, схему, проезда, деревня, район, 141044, «БАЛТСПЕЦСЕРВИС», Московская, область, Мытищински, Контакты',276,'',1447175494,'',1,1,0);
/*!40000 ALTER TABLE `dle_static` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_static_files`
--

DROP TABLE IF EXISTS `dle_static_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_static_files` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `static_id` mediumint(8) NOT NULL DEFAULT '0',
  `author` varchar(40) NOT NULL DEFAULT '',
  `date` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `onserver` varchar(255) NOT NULL DEFAULT '',
  `dcount` mediumint(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `author` (`author`),
  KEY `onserver` (`onserver`(250)),
  KEY `static_id` (`static_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 AVG_ROW_LENGTH=64;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_static_files`
--

LOCK TABLES `dle_static_files` WRITE;
/*!40000 ALTER TABLE `dle_static_files` DISABLE KEYS */;
INSERT INTO `dle_static_files` VALUES (1,5,'gordondalos','1447175585','2015-11/1447175610_map2.png','',0);
/*!40000 ALTER TABLE `dle_static_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_subscribe`
--

DROP TABLE IF EXISTS `dle_subscribe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_subscribe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(40) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `news_id` int(11) NOT NULL DEFAULT '0',
  `hash` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `news_id` (`news_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_subscribe`
--

LOCK TABLES `dle_subscribe` WRITE;
/*!40000 ALTER TABLE `dle_subscribe` DISABLE KEYS */;
/*!40000 ALTER TABLE `dle_subscribe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_tags`
--

DROP TABLE IF EXISTS `dle_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `news_id` int(11) NOT NULL DEFAULT '0',
  `tag` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `news_id` (`news_id`),
  KEY `tag` (`tag`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_tags`
--

LOCK TABLES `dle_tags` WRITE;
/*!40000 ALTER TABLE `dle_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `dle_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_usergroups`
--

DROP TABLE IF EXISTS `dle_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_usergroups` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(32) NOT NULL DEFAULT '',
  `allow_cats` text NOT NULL,
  `allow_adds` tinyint(1) NOT NULL DEFAULT '1',
  `cat_add` text NOT NULL,
  `allow_admin` tinyint(1) NOT NULL DEFAULT '0',
  `allow_addc` tinyint(1) NOT NULL DEFAULT '0',
  `allow_editc` tinyint(1) NOT NULL DEFAULT '0',
  `allow_delc` tinyint(1) NOT NULL DEFAULT '0',
  `edit_allc` tinyint(1) NOT NULL DEFAULT '0',
  `del_allc` tinyint(1) NOT NULL DEFAULT '0',
  `moderation` tinyint(1) NOT NULL DEFAULT '0',
  `allow_all_edit` tinyint(1) NOT NULL DEFAULT '0',
  `allow_edit` tinyint(1) NOT NULL DEFAULT '0',
  `allow_pm` tinyint(1) NOT NULL DEFAULT '0',
  `max_pm` smallint(5) NOT NULL DEFAULT '0',
  `max_foto` varchar(10) NOT NULL DEFAULT '',
  `allow_files` tinyint(1) NOT NULL DEFAULT '0',
  `allow_hide` tinyint(1) NOT NULL DEFAULT '1',
  `allow_short` tinyint(1) NOT NULL DEFAULT '0',
  `time_limit` tinyint(1) NOT NULL DEFAULT '0',
  `rid` smallint(5) NOT NULL DEFAULT '0',
  `allow_fixed` tinyint(1) NOT NULL DEFAULT '0',
  `allow_feed` tinyint(1) NOT NULL DEFAULT '1',
  `allow_search` tinyint(1) NOT NULL DEFAULT '1',
  `allow_poll` tinyint(1) NOT NULL DEFAULT '1',
  `allow_main` tinyint(1) NOT NULL DEFAULT '1',
  `captcha` tinyint(1) NOT NULL DEFAULT '0',
  `icon` varchar(200) NOT NULL DEFAULT '',
  `allow_modc` tinyint(1) NOT NULL DEFAULT '0',
  `allow_rating` tinyint(1) NOT NULL DEFAULT '1',
  `allow_offline` tinyint(1) NOT NULL DEFAULT '0',
  `allow_image_upload` tinyint(1) NOT NULL DEFAULT '0',
  `allow_file_upload` tinyint(1) NOT NULL DEFAULT '0',
  `allow_signature` tinyint(1) NOT NULL DEFAULT '0',
  `allow_url` tinyint(1) NOT NULL DEFAULT '1',
  `news_sec_code` tinyint(1) NOT NULL DEFAULT '1',
  `allow_image` tinyint(1) NOT NULL DEFAULT '0',
  `max_signature` smallint(6) NOT NULL DEFAULT '0',
  `max_info` smallint(6) NOT NULL DEFAULT '0',
  `admin_addnews` tinyint(1) NOT NULL DEFAULT '0',
  `admin_editnews` tinyint(1) NOT NULL DEFAULT '0',
  `admin_comments` tinyint(1) NOT NULL DEFAULT '0',
  `admin_categories` tinyint(1) NOT NULL DEFAULT '0',
  `admin_editusers` tinyint(1) NOT NULL DEFAULT '0',
  `admin_wordfilter` tinyint(1) NOT NULL DEFAULT '0',
  `admin_xfields` tinyint(1) NOT NULL DEFAULT '0',
  `admin_userfields` tinyint(1) NOT NULL DEFAULT '0',
  `admin_static` tinyint(1) NOT NULL DEFAULT '0',
  `admin_editvote` tinyint(1) NOT NULL DEFAULT '0',
  `admin_newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `admin_blockip` tinyint(1) NOT NULL DEFAULT '0',
  `admin_banners` tinyint(1) NOT NULL DEFAULT '0',
  `admin_rss` tinyint(1) NOT NULL DEFAULT '0',
  `admin_iptools` tinyint(1) NOT NULL DEFAULT '0',
  `admin_rssinform` tinyint(1) NOT NULL DEFAULT '0',
  `admin_googlemap` tinyint(1) NOT NULL DEFAULT '0',
  `allow_html` tinyint(1) NOT NULL DEFAULT '1',
  `group_prefix` text NOT NULL,
  `group_suffix` text NOT NULL,
  `allow_subscribe` tinyint(1) NOT NULL DEFAULT '0',
  `allow_image_size` tinyint(1) NOT NULL DEFAULT '0',
  `cat_allow_addnews` text NOT NULL,
  `flood_news` smallint(6) NOT NULL DEFAULT '0',
  `max_day_news` smallint(6) NOT NULL DEFAULT '0',
  `force_leech` tinyint(1) NOT NULL DEFAULT '0',
  `edit_limit` smallint(6) NOT NULL DEFAULT '0',
  `captcha_pm` tinyint(1) NOT NULL DEFAULT '0',
  `max_pm_day` smallint(6) NOT NULL DEFAULT '0',
  `max_mail_day` smallint(6) NOT NULL DEFAULT '0',
  `admin_tagscloud` tinyint(1) NOT NULL DEFAULT '0',
  `allow_vote` tinyint(1) NOT NULL DEFAULT '0',
  `admin_complaint` tinyint(1) NOT NULL DEFAULT '0',
  `news_question` tinyint(1) NOT NULL DEFAULT '0',
  `comments_question` tinyint(1) NOT NULL DEFAULT '0',
  `max_comment_day` smallint(6) NOT NULL DEFAULT '0',
  `max_images` smallint(6) NOT NULL DEFAULT '0',
  `max_files` smallint(6) NOT NULL DEFAULT '0',
  `disable_news_captcha` smallint(6) NOT NULL DEFAULT '0',
  `disable_comments_captcha` smallint(6) NOT NULL DEFAULT '0',
  `pm_question` tinyint(1) NOT NULL DEFAULT '0',
  `captcha_feedback` tinyint(1) NOT NULL DEFAULT '1',
  `feedback_question` tinyint(1) NOT NULL DEFAULT '0',
  `files_type` varchar(255) NOT NULL DEFAULT '',
  `max_file_size` mediumint(9) NOT NULL DEFAULT '0',
  `files_max_speed` smallint(6) NOT NULL DEFAULT '0',
  `allow_lostpassword` tinyint(1) NOT NULL DEFAULT '1',
  `spamfilter` tinyint(1) NOT NULL DEFAULT '2',
  `allow_comments_rating` tinyint(1) NOT NULL DEFAULT '1',
  `max_edit_days` tinyint(1) NOT NULL DEFAULT '0',
  `spampmfilter` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 AVG_ROW_LENGTH=155;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_usergroups`
--

LOCK TABLES `dle_usergroups` WRITE;
/*!40000 ALTER TABLE `dle_usergroups` DISABLE KEYS */;
INSERT INTO `dle_usergroups` VALUES (1,'Администраторы','all',1,'all',1,1,1,1,1,1,1,1,1,1,50,'101',1,1,1,0,1,1,1,1,1,1,0,'{THEME}/images/icon_1.gif',0,1,1,1,1,1,1,0,1,500,1000,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,'<b><span style=\"color:red\">','</span></b>',1,1,'all',0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,0,0,1,0,'zip,rar,exe,doc,pdf,swf',4096,0,0,2,1,0,0),(2,'Главные редакторы','all',1,'all',1,1,1,1,1,0,1,1,1,1,50,'101',1,1,1,0,2,1,1,1,1,1,0,'{THEME}/images/icon_2.gif',0,1,0,1,1,1,1,0,1,500,1000,1,1,1,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1,'','',1,1,'all',0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,1,0,'zip,rar,exe,doc,pdf,swf',4096,0,1,2,1,0,0),(3,'Журналисты','all',1,'all',1,1,1,1,0,0,1,0,1,1,50,'101',1,1,1,0,3,0,1,1,1,1,0,'{THEME}/images/icon_3.gif',0,1,0,1,1,1,1,0,1,500,1000,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,'','',1,1,'all',0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,1,0,'zip,rar,exe,doc,pdf,swf',4096,0,1,2,1,0,0),(4,'Посетители','all',1,'all',0,1,1,1,0,0,0,0,0,1,20,'101',1,1,1,0,4,0,1,1,1,1,0,'{THEME}/images/icon_4.gif',0,1,0,1,0,1,1,1,0,500,1000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,'','',1,0,'all',0,0,0,0,1,0,0,0,1,0,0,0,0,0,0,0,0,0,1,0,'zip,rar,exe,doc,pdf,swf',4096,0,1,2,1,0,2),(5,'Гости','all',0,'all',0,1,0,0,0,0,0,0,0,0,0,'0',1,0,1,0,5,0,1,1,1,0,1,'{THEME}/images/icon_5.gif',0,1,0,0,0,0,1,1,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'','',0,0,'all',0,0,0,0,1,0,0,0,1,0,0,0,0,0,0,0,0,0,1,0,'',0,0,0,2,1,0,2);
/*!40000 ALTER TABLE `dle_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_users`
--

DROP TABLE IF EXISTS `dle_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_users` (
  `email` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(40) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_num` mediumint(8) NOT NULL DEFAULT '0',
  `comm_num` mediumint(8) NOT NULL DEFAULT '0',
  `user_group` smallint(5) NOT NULL DEFAULT '4',
  `lastdate` varchar(20) DEFAULT NULL,
  `reg_date` varchar(20) DEFAULT NULL,
  `banned` varchar(5) NOT NULL DEFAULT '',
  `allow_mail` tinyint(1) NOT NULL DEFAULT '1',
  `info` text NOT NULL,
  `signature` text NOT NULL,
  `foto` varchar(255) NOT NULL DEFAULT '',
  `fullname` varchar(100) NOT NULL DEFAULT '',
  `land` varchar(100) NOT NULL DEFAULT '',
  `favorites` text NOT NULL,
  `pm_all` smallint(5) NOT NULL DEFAULT '0',
  `pm_unread` smallint(5) NOT NULL DEFAULT '0',
  `time_limit` varchar(20) NOT NULL DEFAULT '',
  `xfields` text NOT NULL,
  `allowed_ip` varchar(255) NOT NULL DEFAULT '',
  `hash` varchar(32) NOT NULL DEFAULT '',
  `logged_ip` varchar(40) NOT NULL DEFAULT '',
  `restricted` tinyint(1) NOT NULL DEFAULT '0',
  `restricted_days` smallint(4) NOT NULL DEFAULT '0',
  `restricted_date` varchar(15) NOT NULL DEFAULT '',
  `timezone` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 AVG_ROW_LENGTH=136;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_users`
--

LOCK TABLES `dle_users` WRITE;
/*!40000 ALTER TABLE `dle_users` DISABLE KEYS */;
INSERT INTO `dle_users` VALUES ('gordondalos@gmail.com','a1559765651c0be3e7e23f8f82ef5398','gordondalos',1,7,0,1,'1447309679','1447152991','',1,'','','','','','',0,0,'','','','','212.112.119.191',0,0,'','');
/*!40000 ALTER TABLE `dle_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_views`
--

DROP TABLE IF EXISTS `dle_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_views` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `news_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_views`
--

LOCK TABLES `dle_views` WRITE;
/*!40000 ALTER TABLE `dle_views` DISABLE KEYS */;
/*!40000 ALTER TABLE `dle_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_vote`
--

DROP TABLE IF EXISTS `dle_vote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_vote` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `category` text NOT NULL,
  `vote_num` mediumint(8) NOT NULL DEFAULT '0',
  `date` varchar(25) NOT NULL DEFAULT '0',
  `title` varchar(200) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `approve` tinyint(1) NOT NULL DEFAULT '1',
  `start` varchar(15) NOT NULL DEFAULT '',
  `end` varchar(15) NOT NULL DEFAULT '',
  `grouplevel` varchar(250) NOT NULL DEFAULT 'all',
  PRIMARY KEY (`id`),
  KEY `approve` (`approve`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 AVG_ROW_LENGTH=276;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_vote`
--

LOCK TABLES `dle_vote` WRITE;
/*!40000 ALTER TABLE `dle_vote` DISABLE KEYS */;
INSERT INTO `dle_vote` VALUES (1,'all',0,'2015-11-10 13:56:31','Оцените работу движка','Лучший из новостных<br />Неплохой движок<br />Устраивает ... но ...<br />Встречал и получше<br />Совсем не понравился',1,'','','all');
/*!40000 ALTER TABLE `dle_vote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_vote_result`
--

DROP TABLE IF EXISTS `dle_vote_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_vote_result` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ip` varchar(40) NOT NULL DEFAULT '',
  `name` varchar(40) NOT NULL DEFAULT '',
  `vote_id` mediumint(8) NOT NULL DEFAULT '0',
  `answer` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `answer` (`answer`),
  KEY `ip` (`ip`),
  KEY `name` (`name`),
  KEY `vote_id` (`vote_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_vote_result`
--

LOCK TABLES `dle_vote_result` WRITE;
/*!40000 ALTER TABLE `dle_vote_result` DISABLE KEYS */;
/*!40000 ALTER TABLE `dle_vote_result` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-11-12 13:03:32
